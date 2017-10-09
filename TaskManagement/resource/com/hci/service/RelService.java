package com.hci.service;

import java.util.List;

import com.hci.bean.QueryVo;
import com.hci.bean.Rel;


public interface RelService {

	public void asceptTask(Rel rel);
	
	public void deleteById(int id);
	
	public List<Integer> getTidByUid(QueryVo vo);
	
	public Integer getCountByUid(int uid);
	
	public Integer findCountByUidAndTid(Rel rel);
	
}
