package com.bone.springweb.info;

public enum PersonGender {
	MAN("男", 0), WOMAN("女", 1);
	// 成员变量
	private String name;
	private int index;

	private PersonGender(String name, int index) {
		this.name = name;
		this.index = index;
	}

	public int getIndex() {
		return index;
	}

	public String getName(int index) {
		for (PersonGender pg : PersonGender.values()) {
			if (pg.getIndex() == index) {
				return name;
			}
		}
		return null;
	}

}
