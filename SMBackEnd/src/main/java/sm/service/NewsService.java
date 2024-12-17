package sm.service;

import java.util.List;

import org.springframework.stereotype.Service;

import sm.domain.NewsDTO;

public interface NewsService {
	 int insertNews(NewsDTO newsDTO) throws Exception;
	
	 NewsDTO selectNews(int newsNum) throws Exception;
	
	 List<NewsDTO> newsList() throws Exception;
	
	 int updateNews (NewsDTO newsDTO) throws Exception;
	
	 int deleteNews (int newsNum) throws Exception;

}
