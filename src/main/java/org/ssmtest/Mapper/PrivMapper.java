package org.ssmtest.Mapper;

import java.util.List;

import org.ssmtest.entity.Admin;
import org.ssmtest.entity.Priv;

public interface PrivMapper {
	/**
	 * 根据用户id查询用户所拥有的权限
	 * @param admin
	 * @return
	 */
	List<Priv> selectPrivByAid(Integer aid); 
	/**
	 * 根据角色id查询用户所拥有的权限
	 * @param admin
	 * @return
	 */
	List<Priv> selectPrivByRid(Integer rid); 
	/**
	 * 查询所有的权限
	 */
	List<Priv> selectAllPriv();
	/**
	 * 插入权限
	 */
	int insertPriv(int rid ,int pid);
}
