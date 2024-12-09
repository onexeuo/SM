package sm.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sm.domain.NewsDTO;

@Repository
public class NewsDaoImpl implements NewsDao {

	@Autowired
	private SqlSession sqlSession;
	
	public NewsDaoImpl(SqlSession sqlSession) throws Exception {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public int insertNews(NewsDTO newsDTO) throws Exception {
		return sqlSession.insert("NewsDTO.insertNews", newsDTO);
	}

	@Override
	public NewsDTO selectNews(int newsNum) throws Exception {
		return sqlSession.selectOne("NewsDTO.selectNews", newsNum);
	}

	@Override
	public List<NewsDTO> newsList() throws Exception {
		List<NewsDTO> newsList = sqlSession.selectList("NewsDTo.newsList");
		System.out.printf(" sql query result ; ", newsList);
//		return sqlSession.selectList("NewsDTO.newsList");
		return newsList;
	}

	@Override
	public int updateNews(NewsDTO newsDTO) throws Exception {
		return sqlSession.update("NewsDTO.updateNews", newsDTO);
	}

	@Override
	public int deleteNews(int newsNum) throws Exception {
		return sqlSession.delete("NewsDTO.deleteNews", newsNum);
	}

}
