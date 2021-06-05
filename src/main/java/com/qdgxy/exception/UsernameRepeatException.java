package com.qdgxy.exception;

public class UsernameRepeatException extends Exception{
    public UsernameRepeatException() {
        super();
    }

    public UsernameRepeatException(String message) {
        super(message);
    }
}
