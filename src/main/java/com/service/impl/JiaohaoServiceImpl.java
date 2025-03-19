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


import com.dao.JiaohaoDao;
import com.entity.JiaohaoEntity;
import com.service.JiaohaoService;
import com.entity.vo.JiaohaoVO;
import com.entity.view.JiaohaoView;

@Service("jiaohaoService")
public class JiaohaoServiceImpl extends ServiceImpl<JiaohaoDao, JiaohaoEntity> implements JiaohaoService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JiaohaoEntity> page = this.selectPage(
                new Query<JiaohaoEntity>(params).getPage(),
                new EntityWrapper<JiaohaoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JiaohaoEntity> wrapper) {
		  Page<JiaohaoView> page =new Query<JiaohaoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JiaohaoVO> selectListVO(Wrapper<JiaohaoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JiaohaoVO selectVO(Wrapper<JiaohaoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JiaohaoView> selectListView(Wrapper<JiaohaoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JiaohaoView selectView(Wrapper<JiaohaoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
