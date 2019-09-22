package org.ssmtest.Service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.ssmtest.entity.Role;
@Service
public interface RoleService {
	/**
	 * 查询用户所拥有的角色根据id
	 */
	public List<Role> selectRoleByAid(int aid);
	public List<Role> selectAllRole();
	public int insertRole(Role role);
}
