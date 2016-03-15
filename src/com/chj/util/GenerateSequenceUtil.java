/**
 * @(#)com.hmh.util.GenerateSequenceUtil.java
 * @date 2015年8月28日 
 */
package com.chj.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

//20150809
/**
 * @author <a href="mailto:zrgxy_1102@163.com">ZhangRui</a>
 * @version 1.0 2015年8月28日
 */
public class GenerateSequenceUtil {

	private GenerateSequenceUtil() {
	}

	/**
	 * 获取UUID
	 * 
	 * @Title: getUUID
	 * @Description: TODO
	 * @param @return
	 * @return String
	 * @throws
	 */
	public static String getUUID() {

		String uuid = UUID.randomUUID().toString().replace("-", "");

		return uuid;
	}

	public static void main(String[] args) {
		// System.out.println(getOrderNo().length());
		// for (int i = 0; i < 100000; i++) {
		//
		// System.out.println(getOrderNo()+":"+getOrderNo().length());
		// }
//		System.out.println(getUUID());
//		System.out.println(getUUID());
//		System.out.println(getUUID());
//		System.out.println(getUUID());
//		System.out.println(getUUID());
//		System.out.println(getUUID());
//		System.out.println(getUUID());
		String cashId = GenerateSequenceUtil.getUUID();
		System.out.println(cashId);
	}

	private static int seqence = 0;

	public static String getSequence() {
		String f = "%02d";
		if (seqence >= 99) {
			seqence = 1;
		} else {
			seqence++;
		}
		return String.format(f, seqence);
	}

	public static String getOrderNo(String accountNo) {
		SimpleDateFormat sf = new SimpleDateFormat("yyyyMMddHHmmss");
		String date = sf.format(new Date());
		String orderNo = date + accountNo + getSequence();
		return orderNo;
	}
}
