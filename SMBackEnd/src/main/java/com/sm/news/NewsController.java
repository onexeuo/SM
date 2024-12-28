package com.sm.news;


import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.sm.domain.NewsDTO;
import com.sm.service.NewsService;

@Controller
@RequestMapping(value="/news")
public class NewsController {
	
	@Autowired
	private NewsService newsService;
	
	@RequestMapping(value="/newsList", method=RequestMethod.GET)
	public String getListNews(Model model) {
		List list = newsService.getListNews();
		
		model.addAttribute("list", list);
		return "/news/newsList";
	}
	
	@GetMapping("/insertNews")
	public String insertNews() {
		return "news/insertNews";
	}

	@PostMapping("/insertNews")
	public String postNews(@ModelAttribute NewsDTO newsDto, @RequestParam MultipartFile file, HttpServletRequest request) {
		if (!file.isEmpty()) {
	        try {
	            // 파일 이름을 가져온다
	            String fileName = UUID.randomUUID().toString() + "_" + file.getOriginalFilename();
	            
	            // 실제 저장 경로 (절대 경로 사용)
	            String uploadDir = request.getSession().getServletContext().getRealPath("/uploads/"); // 서버 내 /uploads/ 폴더
	            File uploadFile = new File(uploadDir, fileName);

	            // 업로드 디렉토리가 없다면 생성
	            if (!uploadFile.exists()) {
	                uploadFile.mkdirs();
	            }

	            // 파일을 해당 디렉토리에 저장
	            file.transferTo(uploadFile);

	            // DTO에 저장된 파일 경로를 업데이트 (경로는 웹에서 접근 가능한 경로로 설정)
	            String filePath = "/uploads/" + fileName;
	            newsDto.setNewsImg(filePath);

	        } catch (IOException e) {
	            e.printStackTrace();
	        }
	    }

	    // 뉴스 게시물 저장
	    newsService.postNews(newsDto);
	    return "redirect:/news/newsList";
	}


	
	@GetMapping("/detailNews/{newsNum}")
	public String detailNews(@PathVariable int newsNum,Model model) {
		NewsDTO newsDto = newsService.detailNews(newsNum);

		model.addAttribute("newsDto",newsDto);
		return "news/detailNews";
	}
	
	@PostMapping("/updateNews/{newsNum}")
	public String updateNews(@PathVariable int newsNum, @ModelAttribute NewsDTO newsDto, 
	                         @RequestParam(required = false) MultipartFile file, HttpServletRequest request) {
	    // 기존 뉴스 정보가 있을 경우
	    NewsDTO existingNews = newsService.getUpdateNum(newsNum);

	    // 파일이 새로 업로드 된 경우
	    if (file != null && !file.isEmpty()) {
	        // 기존 이미지 파일 삭제 (이미지가 존재하면)
	        if (existingNews.getNewsImg() != null) {
	            String uploadDir = request.getSession().getServletContext().getRealPath("/uploads/");
	            String fileName = existingNews.getNewsImg().substring(existingNews.getNewsImg().lastIndexOf("/") + 1);
	            File existingFile = new File(uploadDir, fileName);
	            if (existingFile.exists()) {
	                existingFile.delete();  // 기존 파일 삭제
	            }
	        }

	        // 새 이미지 파일 업로드 처리
	        try {
	            String fileName = UUID.randomUUID().toString() + "_" + file.getOriginalFilename();
	            String uploadDir = request.getSession().getServletContext().getRealPath("/uploads/");
	            File uploadFile = new File(uploadDir, fileName);

	            // 업로드 디렉토리가 없다면 생성
	            if (!uploadFile.exists()) {
	                uploadFile.mkdirs();
	            }

	            // 새 파일 저장
	            file.transferTo(uploadFile);
	            String filePath = "/uploads/" + fileName;
	            newsDto.setNewsImg(filePath);

	        } catch (IOException e) {
	            e.printStackTrace();
	        }
	    } else {
	        // 새 이미지가 업로드되지 않으면 기존 이미지를 그대로 사용
	        newsDto.setNewsImg(existingNews.getNewsImg());
	    }

	    // 뉴스 수정
	    newsService.updateNews(newsDto);

	    // 수정 후 상세 페이지로 리다이렉트
	    return "redirect:/news/detailNews/" + newsNum;
	}

	
	@GetMapping("/updateNews/{newsNum}")
	public String getUpdateNum(@PathVariable int newsNum,Model model) {
		NewsDTO newsDto = newsService.getUpdateNum(newsNum);
		model.addAttribute("newsDto",newsDto);
		return "news/updateNews";
	}
	
	@GetMapping("/deleteNews/{newsNum}")
	public String deleteNews(@PathVariable int newsNum) {
		newsService.deleteNews(newsNum);
		return "redirect:/news/newsList";
	}
}
