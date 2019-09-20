package org.ssmtest.entity;

import java.util.List;

public class Role_priv {
	int rid;
	String rname;
	List<Priv> rplist;
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public List<Priv> getRplist() {
		return rplist;
	}
	public void setRplist(List<Priv> rplist) {
		this.rplist = rplist;
	}

}
