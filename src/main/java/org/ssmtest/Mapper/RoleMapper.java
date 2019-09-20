package org.ssmtest.Mapper;

import java.util.List;

import org.ssmtest.entity.Role;


public interface RoleMapper {
	/**
	 * 根据用户id查询所拥有的角色
	 * @param aid
	 * @return
	 */
	List<Role> selectRoleAdminById(int aid);
	List<Role> selectAllRole();
}
