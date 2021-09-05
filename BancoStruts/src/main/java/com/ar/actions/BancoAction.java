package com.ar.actions;

import static com.opensymphony.xwork2.Action.INPUT;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.*;
import org.apache.struts2.interceptor.validation.SkipValidation;

@Results({
    @Result(name="principalResult", location="principalTile", type="tiles"),
    @Result(name="contactoResult", location="contactoTile", type="tiles"),
    @Result(name="sucursalesResult", location="sucursalesTile", type="tiles"),
    @Result(name="serviciosResult", location="serviciosTile", type="tiles"),
    @Result(name="simuladorResult", location="simuladorTile", type="tiles"),
    @Result(name="input", location="principalTile", type="tiles")
})
public class BancoAction extends ActionSupport {
    
    private double capital;
    
    
    @Action(value="principalAction")
    public String principal(){
        return "principalResult";
    }
    
    @Action(value="contactoAction")
    public String contacto(){
        return "contactoResult";
    }

    @Action(value="sucursalesAction")
    public String sucursales(){
        return "sucursalesResult";
    }
    
    @Action(value="serviciosAction")
    public String servicios(){
        return "serviciosResult";
    }
    
    @Action(value="simuladorAction")
    public String simulador(){
        return "simuladorResult";
    }
    
    public double getCapital() {
        return capital;
    }

    public void setCapital(double capital) {
        this.capital = capital;
    }
    
    public double getPlazoFijo(){
        double tasaMensual = 37/12;
        double plazo = this.capital + (this.capital * tasaMensual)/100;
        return plazo;
    }
    
    @Action("displayES_main")
    @SkipValidation
    public String display() throws Exception{
        return INPUT;
    }
    
    @Action("displayEN_main")
    @SkipValidation
    public String displayEN() throws Exception{
        return INPUT;
    }
}


