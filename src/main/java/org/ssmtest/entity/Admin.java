package org.ssmtest.entity;

import java.sql.Date;
import java.util.List;

public class Admin {
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
	private List<Priv> plist;
	private List<Role> rname;
	private String listrname=""; 
	private List<Role> rlist;
	private List<Role> ridlist;
	private String by001;
	
	public String getBy001() {
		return by001;
	}
	public void setBy001(String by001) {
		this.by001 = by001;
	}
	public void setListrname(String listrname) {
		this.listrname = listrname;
	}
	public List<Role> getRlist() {
		return rlist;
	}
	public void setRlist(List<Role> rlist) {
		this.rlist = rlist;
	}
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
	public Admin(){
		
	}
	public Admin(String acname,String apwd){
		this.acname = acname;
		this.apwd = apwd;
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
	public List<Priv> getPlist() {
		return plist;
	}
	public void setPlist(List<Priv> plist) {
		this.plist = plist;
	}
	public Admin( String aname, String apwd, String acname, String atel, String aemail, String by001) {
		this.aname = aname;
		this.apwd = apwd;
		this.acname = acname;
		this.atel = atel;
		this.aemail = aemail;
		this.by001 = by001;
	}
	/**
	 * 通过el表达式直接获取admin的权利
	 * @return
	 */
	/*public String getPlist() {
		String s="";
		if(plist!=null) {
			for(int i=0;i<plist.size();i++) {
				if(i==plist.size()-1) 
					s+=plist.get(i).getp
					else 
						s+=plist.get(i).getName()+",";
			}
		}
		return s;
	}*/
}
