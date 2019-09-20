package org.ssmtest.Service;

import java.util.List;

import org.ssmtest.entity.Admin;
import org.ssmtest.entity.Role;

public interface AdminService {
	/**
	 * 登陆校验
	 * @param admin
	 * @return
	 */
	public Admin AdminLogin(Admin admin);
	/**
	 * 修改密码
	 * @param admin
	 * @return
	 */
	public boolean UpdateApwd(Admin admin );
	/**
	 * 修改用户信息
	 */
	public boolean updateAdminIntro(Admin admin);
	/**
	 * 查询用户所拥有的角色
	 */
	public List<Admin> selectAllAdmin();
}
