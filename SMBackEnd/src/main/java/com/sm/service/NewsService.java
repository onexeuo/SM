package com.sm.service;

import java.util.List;

import com.sm.domain.NewsDTO;

public interface NewsService {
	
	void insertNews(NewsDTO newsDto);
	
	List<NewsDTO> getListNews();
	
	void deleteNews(int newsNum);
	
	NewsDTO detailNews(int newsNum);
	
	int updateNews(NewsDTO newsDto);
	
	NewsDTO getUpdateNum(int newsNum);

	void postNews(NewsDTO newsDto);
}