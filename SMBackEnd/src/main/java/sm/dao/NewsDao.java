package sm.dao;

import java.util.List;

import sm.domain.NewsDTO;

public interface NewsDao {
	
	 List<NewsDTO> newsList() throws Exception;
	
	 NewsDTO selectNews(int newsNum) throws Exception;
	
	 int insertNews(NewsDTO newsDTO) throws Exception;
	
	 int updateNews (NewsDTO newsDTO) throws Exception;
	
	 int deleteNews (int newsNum) throws Exception;

	
}
