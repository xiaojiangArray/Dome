package com.cy.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cy.entity.UserInfo;
import com.cy.service.IUserService;


	/**
	 * 用户表的controller 类
	 * @author Array
	 *
	 */

@Controller
@Scope("prototype")
@RequestMapping("/user")
public class UserController {
	
	@Resource(name="userService")
	private IUserService userServie;
	/**
	 * 查询全部数据
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/queryAll.do")
	public ModelAndView queryAll(HttpServletRequest request,HttpServletResponse response){
		ModelAndView mav=new ModelAndView("index");
		List<UserInfo> userList=userServie.queryAll();
		mav.addObject("userList", userList);
		return mav;
	}
	/**
	 *根据ID 查询单个对象 进行修改
	 * @param userId
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/queryId.do")
	public ModelAndView queryId(int userId,HttpServletRequest request,HttpServletResponse response){
		UserInfo user=userServie.queryId(userId);
		ModelAndView mav=new ModelAndView("error");
		if(user!=null){
			mav.addObject("user",user);
			mav.setViewName("update");
		}else{
			mav.addObject("user","没有数据");
		}
		return mav;
	}
	/**
	 * 添加相关数据
	 * @param user
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/insertUser.do")
	public ModelAndView insertUser(UserInfo user,HttpServletRequest request,HttpServletResponse response){
		ModelAndView mav=new ModelAndView("error");
		
		System.out.println("添加的数据是：\n"+user.getUserName()+"\t"+user.getUserSex()+"\t"+user.getUserAge());
		if(userServie.insertUser(user)){
			return queryAll(request,response);
		}else{
			return mav;
		}
	}
	/**
	 * 修改相关数据
	 * @param user
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="updateUser.do")
	public ModelAndView updataUser(UserInfo user,HttpServletRequest request,HttpServletResponse response){
		System.out.println("更新的数据是：\n"+user.getUserId()+"\t"+user.getUserName()+"\t"+user.getUserSex()+"\t"+user.getUserAge());
		ModelAndView mav=new ModelAndView("error");
		if(userServie.updateUser(user)){
			return queryAll(request,response);
		}
		return mav;
	}
	/**
	 * 单个删除和多个删除
	 * @param userIds
	 * @param request
	 * @param response
	 * @return
	 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@RequestMapping(value="deleteUser.do")
	public ModelAndView deleteUser(String userIds,HttpServletRequest request,HttpServletResponse response){
	{
		 	String[] id=null;
		 	List list=new ArrayList();
			 if(userIds.substring(0, 1).equals(",")){
				 userIds=userIds.substring(1, userIds.length()-1);
				 id=userIds.split(",");;
				 for(int i=0;i<id.length;i++){
					
				 }
			 }else{
				 list.add(userIds);
			 }
			if(userServie.deleteUser(list)){
				return queryAll(request,response);
			}
			ModelAndView mav=new ModelAndView("error");
			return mav;
		}
	}
}
