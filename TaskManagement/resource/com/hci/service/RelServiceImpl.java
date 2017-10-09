package com.hci.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hci.bean.QueryVo;
import com.hci.bean.Rel;
import com.hci.mapper.RelMapper;


@Service
public class RelServiceImpl implements RelService {

	@Autowired
	private RelMapper relMapper;
	
	public void asceptTask(Rel rel) {
		relMapper.asceptTask(rel);
	}

	@Override
	public void deleteById(int id) {
		relMapper.deleteById(id);
	}

	@Override
	public List<Integer> getTidByUid(QueryVo vo) {
		vo.setStart((vo.getPage() - 1) * vo.getSize());
		return relMapper.getTidByUid(vo);
	}

	@Override
	public Integer getCountByUid(int uid) {
		return relMapper.getCountByUid(uid);
	}

	@Override
	public Integer findCountByUidAndTid(Rel rel) {
		return relMapper.findCountByUidAndTid(rel);
	}
	
}
