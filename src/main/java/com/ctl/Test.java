package com.ctl;

import java.math.BigDecimal;

/**
 * @author mayanyu.
 * @email mayanyu@chehejia.com.
 * @date 2017/9/20 下午4:55.
 */
public class Test {

    public static void main(String[] args){

        double a=100.05;

        double b=55;
        System.out.println(a-b);


        BigDecimal ba = new BigDecimal(100.01);
        BigDecimal bb = new BigDecimal(55);

        System.out.println(ba.subtract(bb).doubleValue());
    }

}
