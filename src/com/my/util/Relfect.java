package com.my.util;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

public class Relfect {

	public static Map<String, String> valueReflect(Object model)
			throws NoSuchMethodException, IllegalAccessException,
			IllegalArgumentException, InvocationTargetException {
		Map<String, String> map = new HashMap<String, String>();
		Field[] field = model.getClass().getDeclaredFields(); // 获取实体类的所有属性，返回Field数组
		for (int j = 3; j < field.length; j++) { // 遍历所有属性
			String name = field[j].getName(); // 获取属性的名字
			name = name.substring(0, 1).toUpperCase() + name.substring(1); // 将属性的首字符大写，方便构造get，set方法
			Method m = model.getClass().getMethod("get" + name);
			String value = (String) m.invoke(model); // 调用getter方法获取属性值
			map.put(field[j].getName(), value);
		}
		return map;
	}
}
