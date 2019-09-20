package org.ssmtest.Service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.ssmtest.Mapper.AdminMapper;
import org.ssmtest.Mapper.*;
import org.ssmtest.Service.AdminService;
import org.ssmtest.entity.Admin;

@Service
public class AdminServiceImpl implements AdminService{
	@Autowired
	private AdminMapper adminMapper;
	@Autowired
	private PrivMapper privMapper;
	@Autowired
	private RoleMapper RoleMapper;
	@Override
	/**
	 * 登陆功能
	 */
	public Admin AdminLogin(Admin admin) {
		Admin admin1 = adminMapper.selectAdminByAcnameAndApwd(admin);
		if(admin1!=null){
		admin1.setPlist(privMapper.selectPrivByAid(admin1.getAid()));
		}
		return admin1;	
	}
	/**
	 * 修改密码功能
	 */
	public boolean UpdateApwd(Admin admin){
		int i = adminMapper.updateAdminApwdByAid(admin);
		if(i>0){
			return true;
		}else{
			return false;
		}
	}
	@Override
	public boolean updateAdminIntro(Admin admin) {
		// TODO Auto-generated method stub
		int i = adminMapper.updateAdminIntro(admin);
		System.out.println("service"+i);
		System.out.println(admin.getAemail()+admin.getAname());
		if(i>0){
			return true;
		}else{
			return false;
		}
	}
	@Override
	public List<Admin> selectAllAdmin() {
		return adminMapper.selectAllAdmin();
	}
	
	
}
