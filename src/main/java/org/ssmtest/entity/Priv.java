package org.ssmtest.entity;

public class Priv {
		private int pid;
		private String purl;
		private String pclass;
		private String pname;
		public String getPname() {
			return pname;
		}
		public void setPname(String pname) {
			this.pname = pname;
		}
		public Priv(){
			
		}
		public Priv(String purl,String pclass){
			this.purl = purl;
			this.pclass = pclass;
		}
		public int getPid() {
			return pid;
		}
		public void setPid(int pid) {
			this.pid = pid;
		}
		public String getPurl() {
			return purl;
		}
		public void setPurl(String purl) {
			this.purl = purl;
		}
		public String getPclass() {
			return pclass;
		}
		public void setPclass(String pclass) {
			this.pclass = pclass;
		}
		

}
