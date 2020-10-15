package com.a.project.model;

import java.sql.Date;

import lombok.Data;

@Data
public class p_board {
			private int bno; 
			private String writer; 
			private String title; 
			private String content; 
			private Date regdate;// date
			//select * from p_board;
}
