package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.FenzhenEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.FenzhenVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.FenzhenView;


/**
 * 分诊
 *
 * @author 
 * @email 
 * @date 2021-04-20 20:06:33
 */
public interface FenzhenService extends IService<FenzhenEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<FenzhenVO> selectListVO(Wrapper<FenzhenEntity> wrapper);
   	
   	FenzhenVO selectVO(@Param("ew") Wrapper<FenzhenEntity> wrapper);
   	
   	List<FenzhenView> selectListView(Wrapper<FenzhenEntity> wrapper);
   	
   	FenzhenView selectView(@Param("ew") Wrapper<FenzhenEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<FenzhenEntity> wrapper);
   	
}

