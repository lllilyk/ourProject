package com.example.demo.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;

import com.example.demo.domain.Follow;
import com.example.demo.mapper.FollowMapper;

@Service
public class FollowService {
	
	@Autowired
	private FollowMapper followMapper;

	public Map<String, Object> follow(Follow follow, Authentication auth) {
		Map<String, Object> result = new HashMap<>();
		
		Integer insertCnt = followMapper.insert(follow);
		result.put("follow", true);
		return result;
	}

}
