package com.dao;

import com.entity.FenzhenEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.FenzhenVO;
import com.entity.view.FenzhenView;


/**
 * 分诊
 * 
 * @author 
 * @email 
 * @date 2021-04-20 20:06:33
 */
public interface FenzhenDao extends BaseMapper<FenzhenEntity> {
	
	List<FenzhenVO> selectListVO(@Param("ew") Wrapper<FenzhenEntity> wrapper);
	
	FenzhenVO selectVO(@Param("ew") Wrapper<FenzhenEntity> wrapper);
	
	List<FenzhenView> selectListView(@Param("ew") Wrapper<FenzhenEntity> wrapper);

	List<FenzhenView> selectListView(Pagination page,@Param("ew") Wrapper<FenzhenEntity> wrapper);
	
	FenzhenView selectView(@Param("ew") Wrapper<FenzhenEntity> wrapper);
	
}
