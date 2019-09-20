package org.ssmtest.entity;

import java.sql.Date;
import java.util.List;

public class Role {
	private int rid;
	private String rname;
	private Date createtime;
	private List<Priv> privList;
	public List<Priv> getPrivList() {
		return privList;
	}
	public void setPrivList(List<Priv> privList) {
		this.privList = privList;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
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

}
