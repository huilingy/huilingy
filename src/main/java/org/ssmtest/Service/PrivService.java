package org.ssmtest.Service;

import java.util.List;

import org.ssmtest.entity.Priv;

public interface PrivService {
	/**
	 * 查询所有的权限
	 */
	public List<Priv> selectAllPriv();
	/**
	 * 添加权限
	 */
	public int insertPriv(int rid ,int pid);
}
