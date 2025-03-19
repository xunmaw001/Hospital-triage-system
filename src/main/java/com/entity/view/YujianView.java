package com.entity.view;

import com.entity.YujianEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 预检
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-04-20 20:06:33
 */
@TableName("yujian")
public class YujianView  extends YujianEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YujianView(){
	}
 
 	public YujianView(YujianEntity yujianEntity){
 	try {
			BeanUtils.copyProperties(this, yujianEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
