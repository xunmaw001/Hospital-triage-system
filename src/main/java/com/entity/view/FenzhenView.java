package com.entity.view;

import com.entity.FenzhenEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 分诊
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-04-20 20:06:33
 */
@TableName("fenzhen")
public class FenzhenView  extends FenzhenEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public FenzhenView(){
	}
 
 	public FenzhenView(FenzhenEntity fenzhenEntity){
 	try {
			BeanUtils.copyProperties(this, fenzhenEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
