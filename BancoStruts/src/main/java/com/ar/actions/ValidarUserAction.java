package com.ar.actions;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.*;
import org.apache.struts2.interceptor.validation.SkipValidation;

@Results({
    @Result(name="success", location="principalTile", type="tiles"),
    @Result(name="input", location="/index.jsp")
})
public class ValidarUserAction extends ActionSupport{
    private String user;
    private String password;
    
    @Action("validarUser")
    public String validarUser(){
        if(user.equals("admin") && password.equals("admin")){
            return SUCCESS;
        } else {
            addFieldError("user", "Usuario invalido");
            addFieldError("password", "Password invalida");
            return INPUT;
        }
    }
    
    @Action("displayES")
    @SkipValidation
    public String display() throws Exception{
        return INPUT;
    }
    
    @Action("displayEN")
    @SkipValidation
    public String displayEN() throws Exception{
        return INPUT;
    }
    
    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
  
    
}
