package org.ssmtest.Service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.ssmtest.entity.Role;
@Service
public interface RoleService {
	/**
	 * ��ѯ�û���ӵ�еĽ�ɫ����id
	 */
	public List<Role> selectRoleByAid(int aid);
	public List<Role> selectAllRole();
	public int insertRole(Role role);
}
