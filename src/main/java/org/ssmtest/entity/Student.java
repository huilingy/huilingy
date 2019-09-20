package org.ssmtest.entity;

public class Student {
	int sid;
	String sname;
	String sag;
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSag() {
		return sag;
	}
	public void setSag(String sag) {
		this.sag = sag;
	}
	public Student(int sid, String sname, String sag) {
		super();
		this.sid = sid;
		this.sname = sname;
		this.sag = sag;
	}
}
