package com.akazuki;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.apache.commons.dbutils.QueryRunner;

public class C3P0Utils {
    //1.创建数据库连接池对象
    private static ComboPooledDataSource dataSource=new ComboPooledDataSource();
    //2.创建返回QueryRunner对象
    public static QueryRunner getQueryRunner(){
        return new QueryRunner(dataSource);
    }
}
