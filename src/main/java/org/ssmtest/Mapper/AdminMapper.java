
package org.ssmtest.Mapper;
import java.util.List;

import org.ssmtest.entity.Admin;

public interface AdminMapper {
	/**
	 * ��ѯadmindao��У���û����������Ƿ����
	 * @param admin
	 * @return
	 */
	Admin selectAdminByAcnameAndApwd(Admin admin);
	/**
	 * �޸��û���admin������
	 * @param admin
	 * @return
	 */
	int updateAdminApwdByAid(Admin admin);
	/**
	 * �޸��û���Ϣ
	 */
	int updateAdminIntro(Admin admin);
	/**
	 * ��ѯ���е��û�
	 */
	List<Admin> selectAllAdmin();
	
}
