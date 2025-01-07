package com.sm.service;

import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sm.dao.NewsDao;
import com.sm.domain.NewsDTO;

@Service
public class NewsServiceImpl implements NewsService {

	@Autowired
	private NewsDao newsDao;
    private DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

	
	@Override
	public void insertNews(NewsDTO newsDto) {
		newsDao.insertNews(newsDto);
	}

	@Override
	public List<NewsDTO> getListNews() {
		List<NewsDTO> newsList = newsDao.getListNews();
		
		for(NewsDTO newsDto : newsList) {
			if(newsDto.getCreateDate() != null) {
				String formattedDate = newsDto.getCreateDate().format(formatter);
				newsDto.setFormattedDate(formattedDate);
			}
		}
		
		return newsList;
	}

	@Override
	public void deleteNews(int newsNum) {
		newsDao.deleteNews(newsNum);
	}

	@Override
	public NewsDTO detailNews(int newsNum) {
		NewsDTO newsDto = newsDao.detailNews(newsNum);
		if(newsDto.getCreateDate() != null) {
			String formattedDate = newsDto.getCreateDate().format(formatter);
			newsDto.setFormattedDate(formattedDate);
		}
		
		return newsDto;
	}

	@Override
	public int updateNews(NewsDTO newsDto) {

		return newsDao.updateNews(newsDto);
	}

	@Override
	public NewsDTO getUpdateNum(int newsNum) {
		return newsDao.getUpdateNum(newsNum);
	}

	@Override
	public void postNews(NewsDTO newsDto) {
		newsDao.postNews(newsDto);
	}

}
