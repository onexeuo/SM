package sm.service;

import java.util.List;

import org.springframework.stereotype.Service;

import sm.domain.NewsDTO;

public interface NewsService {
	public abstract int insertNews(NewsDTO newsDTO) throws Exception;
	
	public abstract NewsDTO selectNews(int newsNum) throws Exception;
	
	public abstract List<NewsDTO> newsList() throws Exception;
	
	public abstract int updateNews (NewsDTO newsDTO) throws Exception;
	
	public abstract int deleteNews (int newsNum) throws Exception;
}
