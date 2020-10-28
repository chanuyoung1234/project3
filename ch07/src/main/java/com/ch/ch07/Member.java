package com.ch.ch07;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Member {
	private String id;
	private String name;
	private String fileName;
	// ÆÄÀÏ uplaod¿ë
	private MultipartFile file;
	public int getSize() {
		// TODO Auto-generated method stub
		return 0;
	}

}
