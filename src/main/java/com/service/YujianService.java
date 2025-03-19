package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YujianEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YujianVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YujianView;


/**
 * 预检
 *
 * @author 
 * @email 
 * @date 2021-04-20 20:06:33
 */
public interface YujianService extends IService<YujianEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YujianVO> selectListVO(Wrapper<YujianEntity> wrapper);
   	
   	YujianVO selectVO(@Param("ew") Wrapper<YujianEntity> wrapper);
   	
   	List<YujianView> selectListView(Wrapper<YujianEntity> wrapper);
   	
   	YujianView selectView(@Param("ew") Wrapper<YujianEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YujianEntity> wrapper);
   	
}

