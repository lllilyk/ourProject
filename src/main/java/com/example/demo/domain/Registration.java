package com.example.demo.domain;

import java.sql.*;
import java.time.*;

import lombok.*;

@Data
public class Registration {
	private Integer id;
	private String petName;
	private String type;
	private String weight;
	private LocalDate birth;
	private LocalDate together;
	private String gender;
	private String neutered;
	private Integer registrationNum;
	private String photo;
	private String memberId;
	private Period diff;
	
	private Integer defaultPetId;
	
	private Boolean checked;
	

}
