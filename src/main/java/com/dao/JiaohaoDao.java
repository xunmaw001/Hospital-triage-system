package com.dao;

import com.entity.JiaohaoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JiaohaoVO;
import com.entity.view.JiaohaoView;


/**
 * 叫号
 * 
 * @author 
 * @email 
 * @date 2021-04-20 20:06:33
 */
public interface JiaohaoDao extends BaseMapper<JiaohaoEntity> {
	
	List<JiaohaoVO> selectListVO(@Param("ew") Wrapper<JiaohaoEntity> wrapper);
	
	JiaohaoVO selectVO(@Param("ew") Wrapper<JiaohaoEntity> wrapper);
	
	List<JiaohaoView> selectListView(@Param("ew") Wrapper<JiaohaoEntity> wrapper);

	List<JiaohaoView> selectListView(Pagination page,@Param("ew") Wrapper<JiaohaoEntity> wrapper);
	
	JiaohaoView selectView(@Param("ew") Wrapper<JiaohaoEntity> wrapper);
	
}
