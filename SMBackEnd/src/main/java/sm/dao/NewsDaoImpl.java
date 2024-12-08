package sm.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import sm.domain.NewsDTO;

@Repository
public class NewsDaoImpl implements NewsDao {

	private SqlSession sqlSession;
	
	public NewsDaoImpl(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public int insertNews(NewsDTO news) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int selectNews(NewsDTO NewsDTO) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<NewsDTO> newsList(NewsDTO NewsDTO) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateNews(NewsDTO NewsDTO) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteNews(NewsDTO NewsDTO) {
		// TODO Auto-generated method stub
		return 0;
	}

}
