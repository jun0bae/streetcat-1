package com.ezen709.streetcat.service;

import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.ezen709.streetcat.model.MemberDTO;



@Service
public class MemberMapper {

	
	@Autowired
	private SqlSession sqlSession;
	
	public int insertMember(MemberDTO dto) {
		
		int res = sqlSession.insert("insertMember",dto);
		return res;
		
	}
	
	public List<MemberDTO> listMember(){
		return sqlSession.selectList("listMember");
	}
	
	public  List<MemberDTO> findMember(String search, String searchString) {
		String sql = null;
		if(	search.toString().equals("id") ) {
			sql = "select * from cat_user where id = '"+searchString+"'" ;
		}else {
			sql = "select * from cat_user where name = '"+searchString+"'" ;
		}
		
		Map<String, String> map = new Hashtable<>();
		map.put("sql",sql);
		
		return sqlSession.selectList("findMember", map);
	}
	
	public MemberDTO getMember(int num) {
	     
	      MemberDTO dto = sqlSession.selectOne("getMember", num);
	      return dto;
	   }
	
	
	public int  upgradeMember(MemberDTO dto) {
		
		
		int res = sqlSession.update("upgradeMember",dto);
		
		return res;
	}
	
}
