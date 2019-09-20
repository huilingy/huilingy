package org.ssmtest.Service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.ssmtest.Mapper.AdminMapper;
import org.ssmtest.Mapper.PrivMapper;
import org.ssmtest.Mapper.RoleMapper;
import org.ssmtest.Service.PrivService;
import org.ssmtest.entity.Priv;
@Service
public class PrivServiceImpl implements PrivService{
	@Autowired
	private AdminMapper adminMapper;
	@Autowired
	private PrivMapper privMapper;
	@Autowired
	private RoleMapper RoleMapper;
	/**
	 * ��ѯ���е�Ȩ��
	 */
	@Override
	public List<Priv> selectAllPriv() {
		return privMapper.selectAllPriv();
	}

}
