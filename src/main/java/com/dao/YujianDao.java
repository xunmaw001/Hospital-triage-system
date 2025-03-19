package com.dao;

import com.entity.YujianEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YujianVO;
import com.entity.view.YujianView;


/**
 * 预检
 * 
 * @author 
 * @email 
 * @date 2021-04-20 20:06:33
 */
public interface YujianDao extends BaseMapper<YujianEntity> {
	
	List<YujianVO> selectListVO(@Param("ew") Wrapper<YujianEntity> wrapper);
	
	YujianVO selectVO(@Param("ew") Wrapper<YujianEntity> wrapper);
	
	List<YujianView> selectListView(@Param("ew") Wrapper<YujianEntity> wrapper);

	List<YujianView> selectListView(Pagination page,@Param("ew") Wrapper<YujianEntity> wrapper);
	
	YujianView selectView(@Param("ew") Wrapper<YujianEntity> wrapper);
	
}
