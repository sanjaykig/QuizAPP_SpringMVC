package com.sanjay.mvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.sanjay.mvc.model.Question;

public class QuizDAOimpl implements QuizDAO {				/*DAO interface listing all the methods used in the application business logic*/

	@Autowired
	public JdbcTemplate jdbcTemplate;						/*JdbcTemplate defined in servlet-context.xml*/ 

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public DataSource getDatasource() {						/*DataSource defined in servlet-context.xml*/
		return datasource;
	}

	public void setDatasource(DataSource datasource) {
		this.datasource = datasource;
	}

	@Autowired
	public DataSource datasource;

	@SuppressWarnings("unchecked")
	public List<Question> ListQuestions(int subjectid) {
		String sql = "SELECT * FROM questionlist WHERE subjectid =" + String.valueOf(subjectid)
				+ " ORDER BY questionnum ASC ";

		List<Question> question = jdbcTemplate.query(sql, new QuestionRowMapper());

		return question;

	}

	@Override
	public void addQuestion(Question question) {
		String sql = "insert into questionlist values(?,?,?,?,?,?,?,?,?)";
		jdbcTemplate.update(sql,
				new Object[] { question.getQuestion(), question.getOption1(), question.getOption2(),
						question.getOption3(), question.getOption4(), question.getQuestionnum(),
						question.getCorrectoption(), question.getSubjectname(), question.getSubjectid() });
	}

	@Override
	public void deleteQuestion(int questionnum, int subjectid) {

		String sql = "delete from questionlist where questionnum=? AND subjectid=?";
		jdbcTemplate.update(sql, new Object[] { questionnum, subjectid });
	}

	@SuppressWarnings("rawtypes")
	public class QuestionRowMapper implements RowMapper {
		public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
			Question question = new Question();
			question.setQuestion(rs.getString("question"));
			question.setOption1(rs.getString("option1"));
			question.setOption2(rs.getString("option2"));
			question.setOption3(rs.getString("option3"));
			question.setOption4(rs.getString("option4"));
			question.setQuestionnum(rs.getInt("questionnum"));
			question.setCorrectoption(rs.getInt("correctoption"));
			return question;
		}
	}
}