package sm.dao;

import java.util.List;

import sm.domain.NewsDTO;

public interface NewsDao {
	
	int insertNews(NewsDTO news);
	
	int selectNews(NewsDTO NewsDTO);
	
	List<NewsDTO> newsList(NewsDTO NewsDTO);
	
	int updateNews (NewsDTO NewsDTO);
	
	int deleteNews (NewsDTO NewsDTO);
	
}
