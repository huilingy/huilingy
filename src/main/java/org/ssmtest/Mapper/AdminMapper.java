
package org.ssmtest.Mapper;
import java.util.List;

import org.ssmtest.entity.Admin;

public interface AdminMapper {
	/**
	 * 查询admindao层校验用户名和密码是否存在
	 * @param admin
	 * @return
	 */
	Admin selectAdminByAcnameAndApwd(Admin admin);
	/**
	 * 修改用户（admin）密码
	 * @param admin
	 * @return
	 */
	int updateAdminApwdByAid(Admin admin);
	/**
	 * 修改用户信息
	 */
	int updateAdminIntro(Admin admin);
	/**
	 * 查询所有的用户
	 */
	List<Admin> selectAllAdmin();
	
}
