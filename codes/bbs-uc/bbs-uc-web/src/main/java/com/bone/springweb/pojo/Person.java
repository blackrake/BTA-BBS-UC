package com.bone.springweb.pojo;

import java.util.Date;

import com.bone.springweb.info.PersonGender;

public class Person {

	private String name;

	private Integer age;

	// 生日
	private Date birthDay;

	// 性别
	private PersonGender gender;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public Date getBirthDay() {
		return birthDay;
	}

	public void setBirthDay(Date birthDay) {
		this.birthDay = birthDay;
	}

	public PersonGender getGender() {
		return gender;
	}

	public void setGender(PersonGender gender) {
		this.gender = gender;
	}

}
