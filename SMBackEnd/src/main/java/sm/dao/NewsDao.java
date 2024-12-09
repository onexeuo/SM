package sm.dao;

import java.util.List;

import sm.domain.NewsDTO;

public interface NewsDao {
	
	public abstract List<NewsDTO> newsList() throws Exception;
	
	public abstract NewsDTO selectNews(int newsNum) throws Exception;
	
	public abstract int insertNews(NewsDTO newsDTO) throws Exception;
	
	public abstract int updateNews (NewsDTO newsDTO) throws Exception;
	
	public abstract int deleteNews (int newsNum) throws Exception;
	
}
