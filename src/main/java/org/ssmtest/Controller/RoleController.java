package org.ssmtest.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.ssmtest.Service.AdminService;
import org.ssmtest.Service.PrivService;
import org.ssmtest.Service.RoleService;
import org.ssmtest.entity.Priv;


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
}
