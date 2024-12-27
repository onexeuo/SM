package com.sm.dao;

import java.util.List;

import com.sm.domain.NewsDTO;


public interface NewsDao {
	
	void insertNews(NewsDTO newsDto);
	
	List<NewsDTO> getListNews();
	
	void deleteNews(int newsNum);
	
	NewsDTO detailNews(int newsNum);
	
	int updateNews(NewsDTO newsDto);
	
	NewsDTO getUpdateNum(int newsNum);

	void postNews(NewsDTO newsDto);
}