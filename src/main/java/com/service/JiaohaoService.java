package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JiaohaoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JiaohaoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JiaohaoView;


/**
 * 叫号
 *
 * @author 
 * @email 
 * @date 2021-04-20 20:06:33
 */
public interface JiaohaoService extends IService<JiaohaoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JiaohaoVO> selectListVO(Wrapper<JiaohaoEntity> wrapper);
   	
   	JiaohaoVO selectVO(@Param("ew") Wrapper<JiaohaoEntity> wrapper);
   	
   	List<JiaohaoView> selectListView(Wrapper<JiaohaoEntity> wrapper);
   	
   	JiaohaoView selectView(@Param("ew") Wrapper<JiaohaoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JiaohaoEntity> wrapper);
   	
}

