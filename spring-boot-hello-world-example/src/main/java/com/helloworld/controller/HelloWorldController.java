package com.helloworld.controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
@RestController
public class HelloWorldController 
{
@RequestMapping("/")
public String hello() 
{
  String uname = System.getenv("USERNAME");
  String pwd = System.getenv("secretKey");
  String outputHTML = "<h1> Congratulations. You have successfully deployed the sample Spring Boot Application. " + uname + ":" + pwd + " </h1>";
return outputHTML;
}
}
