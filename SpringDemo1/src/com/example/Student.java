package com.example;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@Getter
@Setter
@AllArgsConstructor
@ToString
public class Student {
	private String name;
	private int age;
	private int grade;
	private int classNum;
	
}
