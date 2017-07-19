package com.dashen.hrms.exceptions;

/**
 * Created by dantheman on 7/14/16.
 */
public class CustomExceptionHandler extends Exception {

    public CustomExceptionHandler(String message) {
        super(message);
    }

    public CustomExceptionHandler(String message, Throwable throwable) {
        super(message, throwable);
    }

}
