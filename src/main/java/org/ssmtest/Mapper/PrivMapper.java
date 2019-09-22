package org.ssmtest.Mapper;

import java.util.List;

import org.ssmtest.entity.Admin;
import org.ssmtest.entity.Priv;

public interface PrivMapper {
	/**
	 * �����û�id��ѯ�û���ӵ�е�Ȩ��
	 * @param admin
	 * @return
	 */
	List<Priv> selectPrivByAid(Integer aid); 
	/**
	 * ���ݽ�ɫid��ѯ�û���ӵ�е�Ȩ��
	 * @param admin
	 * @return
	 */
	List<Priv> selectPrivByRid(Integer rid); 
	/**
	 * ��ѯ���е�Ȩ��
	 */
	List<Priv> selectAllPriv();
	/**
	 * ����Ȩ��
	 */
	int insertPriv(int rid ,int pid);
}
