package com.bit.emoji.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.bit.emoji.member.service.MailSendService;
import com.bit.emoji.member.service.MemberService;

public class membercontroller {
    MailSendService mailSendService;
    MemberService memberService;

    public String goLoginForm(){
        return null;
    }

    public String goRegForm(){
        return null;
    }

    public String goUpdateForm(){
        return null;
    }

    public String goEdiForm(){
        return null;
    }

    public String regster(Model model){
        return null;
    }

    public String login(Model model){
        return null;
    }

    public String logout(Model model){
        return null;
    }

    public String edit(Model model, HttpSession session){
        return null;
    }

}