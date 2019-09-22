package org.ssmtest.Controller;


import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.ssmtest.Service.AdminService;
import org.ssmtest.Service.PrivService;
import org.ssmtest.Service.RoleService;
import org.ssmtest.entity.Admin;
import org.ssmtest.entity.Priv;
import org.ssmtest.entity.Role;


@Controller
@RequestMapping("/role")
public class RoleController {
	@Autowired
	private AdminService adminservice;
	@Autowired
	private RoleService roleservice;
	@Autowired
	private PrivService privservice;
	/**
	 * ���ӽ�ɫ
	 * @return
	 */
	@RequestMapping("/role_add")
	public String addRole(HttpSession hs){
		//��ѯ���е�Ȩ��
		List<Priv> lp = privservice.selectAllPriv();
		hs.setAttribute("allplist", lp);
		return "role/role_add";
	}
	@RequestMapping("/role_add_yes")
	public String addRoleYes(HttpServletRequest request){
		//��ȡҳ������ݣ���װ������
		String[] addRole = new String[20];
		//��ȡ���������
		String rname = request.getParameter("rname");
		Admin admin = (Admin) request.getSession().getAttribute("admin1");
		//��ȡrole����
		Role role = new Role();
		role.setRname(rname);
		role.setCreateuser(admin.getAname());
		role.setCreatetime(new Date(new java.util.Date().getTime()));
		//��ȡadmin����
		//��ȡ��ѡ���Ȩ��
		String[] s = request.getParameterValues("addpriv");
		int[] rpid =new int[s.length];
		int rid = roleservice.insertRole(role);
		
		System.out.println("rid"+role.getRid());
		for(int i = 0;i<s.length;i++){
			rpid[i]=Integer.parseInt(s[i]);
			privservice.insertPriv(role.getRid(), rpid[i]);
			System.out.println("ridfor"+role.getRid());

		}
		//�����ɫ��)
		return "role/role_add";
	}
}
