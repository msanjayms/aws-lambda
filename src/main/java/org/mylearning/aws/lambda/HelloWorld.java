package org.mylearning.aws.lambda;

public class HelloWorld {
    public String handler(String s) {
        //return "Hello, " + s;
	return String.format("Hello, %s it was been a long pending thought to learn AWS lambda, so it's a thought come true :)", s);
    }
}
