package org.ssmtest.Mapper;

import java.util.List;

import org.ssmtest.entity.Role;


public interface RoleMapper {
	/**
	 * �����û�id��ѯ��ӵ�еĽ�ɫ
	 * @param aid
	 * @return
	 */
	List<Role> selectRoleAdminById(int aid);
	List<Role> selectAllRole();
}
