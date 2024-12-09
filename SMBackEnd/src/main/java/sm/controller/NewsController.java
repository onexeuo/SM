package sm.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import sm.domain.NewsDTO;
import sm.service.NewsService;

@RestController
@RequestMapping("/news")
public class NewsController {

	private final NewsService newsService;
	
	@Autowired
	public NewsController(NewsService newsService) {
		this.newsService = newsService;
	}
	
	@GetMapping
	public ResponseEntity<List<NewsDTO>> newsList(Model model) throws Exception {
		List<NewsDTO> restNewsList = newsService.newsList();
		model.addAttribute("restNewsList", restNewsList);
		return ResponseEntity.ok(restNewsList);
//		return "news";
	}

	@GetMapping(value="/{newsNum}")
	public ResponseEntity<NewsDTO> selectNews(@PathVariable int newsNum) throws Exception {
		NewsDTO newsDTO = newsService.selectNews(newsNum);
		return ResponseEntity.ok(newsDTO);
	}

	@PostMapping(value="/news")
	public int insertNews(@RequestBody NewsDTO newsDTO) throws Exception {
		return newsService.insertNews(newsDTO);
	}
	
	@PostMapping(value="/news")
	public int updateNews(@PathVariable int newsNum, @RequestBody NewsDTO newsDTO) throws Exception {
		newsDTO.setNewsNum(newsNum);
		return newsService.updateNews(newsDTO);
	}
	@DeleteMapping(value="/{newsNum}")
	public int deleteNews(@PathVariable int newsNum) throws Exception {
		return newsService.deleteNews(newsNum);
	}
	
	
	
	
}
