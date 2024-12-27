package com.sm.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sm.domain.NewsDTO;

@Repository
public class NewsDaoImpl implements NewsDao {

	private static final String NAMESPACE = "com.SM.dao.NewsDao";
	private final SqlSession sqlSession;
	
	public NewsDaoImpl(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void insertNews(NewsDTO newsDto) {
		sqlSession.insert(NAMESPACE + "insertNews", newsDto);
	}

	@Override
	public List<NewsDTO> getListNews() {
		return sqlSession.selectList(NAMESPACE + "getListNews");
	}

	@Override
	public void deleteNews(int newsNum) {
		sqlSession.delete(NAMESPACE+"deleteNews", newsNum);
	}

	@Override
	public NewsDTO detailNews(int newsNum) {
		return sqlSession.selectOne(NAMESPACE + "detailNews", newsNum);
	}

	@Override
	public int updateNews(NewsDTO newsDto) {
		return sqlSession.update(NAMESPACE + "updateNews", newsDto);
	}

	@Override
	public NewsDTO getUpdateNum(int newsNum) {
		return sqlSession.selectOne(NAMESPACE + "getUpdateNum", newsNum);
	}

	@Override
	public void postNews(NewsDTO newsDto) {
		sqlSession.insert(NAMESPACE + "postNews", newsDto);
	}

}
