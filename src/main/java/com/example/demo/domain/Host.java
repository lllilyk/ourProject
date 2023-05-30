package com.example.demo.domain;

import java.time.LocalDate;

import lombok.Data;

@Data
public class Host {
	private Integer id;
	private String hostName;
	private String si;
	private String gu;
	private String dong;
	private String title;
	private String address;
	private String phone;
	private LocalDate inserted;
	private String photo;
}