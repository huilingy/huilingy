package org.ssmtest.Controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.ssmtest.Service.AdminService;
import org.ssmtest.Service.PrivService;
import org.ssmtest.Service.RoleService;
import org.ssmtest.entity.Admin;
import org.ssmtest.entity.Student;

@Controller
@RequestMapping("/admin")
public class UserController {
	@Autowired
	private AdminService adminservice;
	@Autowired
	private RoleService roleservice;
	@Autowired
	private PrivService privservice;
	/**
	 * 进入管理员页面
	 */
	@RequestMapping("/admin_list")
	public String User(){
		return "admin/admin_list";
	}
	@RequestMapping("/get_users.php")
	@ResponseBody
	public Map<String,Object>  getData(int page,int rows){
		//查询所有用户，以及用户所拥有的角色
		System.out.println("page"+page+"rows"+rows);
				List<Admin> la = adminservice.selectAllAdmin();
				for(Admin a:la){
					System.out.println("list"+a.getAcname());
					System.out.println("list"+a.getListrname());
				}
				Map<String,Object> m = new HashMap<>();				
				m.put("total", la.size());
				m.put("rows", la);
				return m;                           
	}
}
