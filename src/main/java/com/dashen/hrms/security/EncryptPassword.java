package com.dashen.hrms.security;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

/**
 * Created by Daniel Adenew on 5/9/2017.
 */
public class EncryptPassword {

    public static void main(String args[]) throws Exception {
        String password = new BCryptPasswordEncoder().encode("password");
        System.out.println(password);

    }
}
