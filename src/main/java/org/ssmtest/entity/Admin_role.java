package org.ssmtest.entity;

import java.sql.Date;
import java.util.List;

public class Admin_role {
	private int aid;
	private String aname;
	private String apwd;
	private String acname;
	private String atel;
	private String aemail;
	private Date createtime;
	private String createuser;
	private Date updatetime;
	private String updateuser;
	private List plist;
	private List rname;
	private String listrname="";
	
	public String getId(){
		return ""+aid;
	}
	public String getListrname(){
		for(int i=0;i<rname.size();i++){
			Role r = (Role) rname.get(i);
			listrname += r.getRname();
		}
		return listrname;
	}
	public List getRname() {
		return rname;
	}
	public void setRname(List rname) {
		this.rname = rname;
	}

	
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getApwd() {
		return apwd;
	}
	public void setApwd(String apwd) {
		this.apwd = apwd;
	}
	public String getAcname() {
		return acname;
	}
	public void setAcname(String acname) {
		this.acname = acname;
	}
	public String getAtel() {
		return atel;
	}
	public void setAtel(String atel) {
		this.atel = atel;
	}
	public String getAemail() {
		return aemail;
	}
	public void setAemail(String aemail) {
		this.aemail = aemail;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	public String getCreateuser() {
		return createuser;
	}
	public void setCreateuser(String createuser) {
		this.createuser = createuser;
	}
	public Date getUpdatetime() {
		return updatetime;
	}
	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}
	public String getUpdateuser() {
		return updateuser;
	}
	public void setUpdateuser(String updateuser) {
		this.updateuser = updateuser;
	}
	public List getPlist() {
		return plist;
	}
	public void setPlist(List plist) {
		this.plist = plist;
	}

}
