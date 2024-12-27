package com.sm.domain;

import java.time.LocalDateTime;

public class NewsDTO {
	public int newsNum;
	public String newsTitle;
	public String newsContent;
	public LocalDateTime newsDate;
	public String formattedDate;
	public String newsImg;
	
	public NewsDTO() {
	}

	public NewsDTO(int newsNum, String newsTitle, String newsContent, LocalDateTime newsDate, String formattedDate,
			String newsImg) {
		super();
		this.newsNum = newsNum;
		this.newsTitle = newsTitle;
		this.newsContent = newsContent;
		this.newsDate = newsDate;
		this.formattedDate = formattedDate;
		this.newsImg = newsImg;
	}

	public int getNewsNum() {
		return newsNum;
	}

	public void setNewsNum(int newsNum) {
		this.newsNum = newsNum;
	}

	public String getNewsTitle() {
		return newsTitle;
	}

	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}

	public String getNewsContent() {
		return newsContent;
	}

	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}

	public LocalDateTime getNewsDate() {
		return newsDate;
	}

	public void setNewsDate(LocalDateTime newsDate) {
		this.newsDate = newsDate;
	}

	public String getFormattedDate() {
		return formattedDate;
	}

	public void setFormattedDate(String formattedDate) {
		this.formattedDate = formattedDate;
	}

	public String getNewsImg() {
		return newsImg;
	}

	public void setNewsImg(String newsImg) {
		this.newsImg = newsImg;
	}

	@Override
	public String toString() {
		return "NewsDTO [newsNum=" + newsNum + ", newsTitle=" + newsTitle + ", newsContent=" + newsContent
				+ ", newsDate=" + newsDate + ", formattedDate=" + formattedDate + ", newsImg=" + newsImg + "]";
	}

	
	



	
	
	
}
