package com.npe.shop.text;

import java.sql.Connection;

import com.npe.shop.db.DataBaseUtil;

public class TestDB {

	public static void main(String[] args) {
		Connection c=null;
		DataBaseUtil a=new DataBaseUtil();
		c=a.getConnection();
		System.out.println(c);

	}

}
