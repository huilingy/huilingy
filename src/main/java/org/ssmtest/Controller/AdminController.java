package org.ssmtest.Controller;
import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.ssmtest.Service.AdminService;
import org.ssmtest.Service.RoleService;
import org.ssmtest.Service.impl.AdminServiceImpl;
import org.ssmtest.entity.Admin;
import org.ssmtest.entity.Priv;
import org.ssmtest.entity.Role;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	private AdminService adminservice;
	@Autowired
	private RoleService roleservice;
	/**
	 * 进入主界面
	 * @return
	 */
	@RequestMapping("/index")
	public String index(){
		return "index";
	}
	@RequestMapping("/login")
	public String login(Admin admin,HttpSession httpsession,HttpServletRequest h){
		Admin admin1 = adminservice.AdminLogin(admin);
		if(admin1!=null){
			h.getSession().setAttribute("admin1", admin1);
			return "index";
		}else{
			h.getSession().setAttribute("loginmsg", "登陆失败，用户或密码错误");
			return "redirect:../login.jsp";
		}
	}
	/**
	 * 进入修改密码页面
	 * @param admin
	 * @param httpsession
	 * @param h
	 * @return
	 */
	@RequestMapping("/updateApwd")
	public String updateapwd(Admin admin,HttpSession httpsession){
		return "user/modi_pwd";
	}
	/**
	 * 修改密码
	 * @param admin
	 * @param httpsession
	 * @param h
	 * @return
	 */
	@RequestMapping("/updateApwdYes")
	public String UpdateApwd(Admin admin,HttpSession httpsession){
		Admin admin1 = (Admin) httpsession.getAttribute("admin1");
		int aid = admin1.getAid();
		admin.setAid(aid);
		boolean success = adminservice.UpdateApwd(admin);
		if(success){
			return "redirect:../login.jsp";
		}else{
			return "user/modi_pwd";
		}
	}
	/**
	 * 退出功能
	 */
	@RequestMapping("/exit")
	public String Exit(HttpSession httpsession){
		httpsession.invalidate();
		return "redirect:../login.jsp";
	}
	/**
	 * 查询admin基本信息
	 * @return
	 */
	@RequestMapping("/user_infor")
	public String selectAdminIntro(HttpSession httpsession){
		Admin admin = (Admin) httpsession.getAttribute("admin1");
		List<Role> lr = roleservice.selectRoleByAid(admin.getAid());
		System.out.println(admin.getAid());
		admin.setRname(lr);
		httpsession.setAttribute("admin1", admin);
		System.out.println("lrlr"+lr);
		return "user/user_info";
	}
	/**
	 * 修改用户admin基本信息
	 * @throws IOException 
	 * @throws IllegalStateException 
	 */
	@RequestMapping("/update_user_infor")
	public String UpdateAdminIntro(HttpServletRequest request,HttpServletResponse response,@RequestParam("file")MultipartFile file) {
		String aname = request.getParameter("aname");
		String atel = request.getParameter("atel");
		String aemail = request.getParameter("aemail");
		//上传文件方式：直接把上传的文件存入到数据库中（Blob图片、视频、音频）
		//获取项目绝对路径
		/*String path = request.getServletContext().getRealPath("/");
		File f = new File(path+"/upload"+file.getOriginalFilename());
		String s =  f.toString();
		try {
			file.transferTo(new File(path+"/upload"+file.getOriginalFilename()));
		} catch (IllegalStateException | IOException e1) {
			e1.printStackTrace();
		}
		*/
		
		Admin admin = (Admin) request.getSession().getAttribute("admin1");
		admin.setAname(aname);
		admin.setAemail("12");
		admin.setAtel(atel);
		//admin.setBy001(s);
		boolean success =  adminservice.updateAdminIntro(admin);
		if(success){
			try {
				response.getWriter().println("success");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else{
			try {
				response.getWriter().println("fail");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}
	/**
	 * 进入角色页面查询用户所对于的角色信息
	 * @return
	 */
	@RequestMapping("/role")
	public String role(HttpSession hs){
		Admin admin = (Admin) hs.getAttribute("admin1");
		List<Role> rp = roleservice.selectAllRole();
		hs.setAttribute("rp", rp);
		
		//查询每个角色所对于的权限
		for(Priv r :rp.get(1).getPrivList()){
			System.out.println(r.getPname());
		}
		return "role/role_list";
	}
	
}
