package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.YujianDao;
import com.entity.YujianEntity;
import com.service.YujianService;
import com.entity.vo.YujianVO;
import com.entity.view.YujianView;

@Service("yujianService")
public class YujianServiceImpl extends ServiceImpl<YujianDao, YujianEntity> implements YujianService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YujianEntity> page = this.selectPage(
                new Query<YujianEntity>(params).getPage(),
                new EntityWrapper<YujianEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YujianEntity> wrapper) {
		  Page<YujianView> page =new Query<YujianView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YujianVO> selectListVO(Wrapper<YujianEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YujianVO selectVO(Wrapper<YujianEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YujianView> selectListView(Wrapper<YujianEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YujianView selectView(Wrapper<YujianEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
