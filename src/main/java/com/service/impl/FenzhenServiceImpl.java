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


import com.dao.FenzhenDao;
import com.entity.FenzhenEntity;
import com.service.FenzhenService;
import com.entity.vo.FenzhenVO;
import com.entity.view.FenzhenView;

@Service("fenzhenService")
public class FenzhenServiceImpl extends ServiceImpl<FenzhenDao, FenzhenEntity> implements FenzhenService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<FenzhenEntity> page = this.selectPage(
                new Query<FenzhenEntity>(params).getPage(),
                new EntityWrapper<FenzhenEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<FenzhenEntity> wrapper) {
		  Page<FenzhenView> page =new Query<FenzhenView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<FenzhenVO> selectListVO(Wrapper<FenzhenEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public FenzhenVO selectVO(Wrapper<FenzhenEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<FenzhenView> selectListView(Wrapper<FenzhenEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public FenzhenView selectView(Wrapper<FenzhenEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
