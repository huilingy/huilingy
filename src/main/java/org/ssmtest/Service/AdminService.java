package org.ssmtest.Service;

import java.util.List;

import org.ssmtest.entity.Admin;
import org.ssmtest.entity.Role;

public interface AdminService {
	/**
	 * ��½У��
	 * @param admin
	 * @return
	 */
	public Admin AdminLogin(Admin admin);
	/**
	 * �޸�����
	 * @param admin
	 * @return
	 */
	public boolean UpdateApwd(Admin admin );
	/**
	 * �޸��û���Ϣ
	 */
	public boolean updateAdminIntro(Admin admin);
	/**
	 * ��ѯ�û���ӵ�еĽ�ɫ
	 */
	public List<Admin> selectAllAdmin();
}
