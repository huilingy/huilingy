package org.ssmtest.Service;

import java.util.List;

import org.ssmtest.entity.Priv;

public interface PrivService {
	/**
	 * ��ѯ���е�Ȩ��
	 */
	public List<Priv> selectAllPriv();
	/**
	 * ���Ȩ��
	 */
	public int insertPriv(int rid ,int pid);
}
