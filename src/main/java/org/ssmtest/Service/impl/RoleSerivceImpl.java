package org.ssmtest.Service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.ssmtest.Mapper.AdminMapper;
import org.ssmtest.Mapper.PrivMapper;
import org.ssmtest.Mapper.RoleMapper;
import org.ssmtest.Service.RoleService;
import org.ssmtest.entity.Role;
@Service
public class RoleSerivceImpl implements RoleService{
	@Autowired
	private AdminMapper adminMapper;
	@Autowired
	private PrivMapper privMapper;
	@Autowired
	private RoleMapper roleMapper;
	@Override
	public List<Role> selectRoleByAid(int aid) {
		return roleMapper.selectRoleAdminById(aid);
	}
	/**
	 * ��ѯ���н�ɫ
	 */
	@Override
	public List<Role> selectAllRole() {
		//��ѯ���еĽ�ɫ
		
		return roleMapper.selectAllRole();
	}

}
