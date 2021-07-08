package signup.form;

import org.apache.struts.action.ActionForm;

public class SignupForm extends ActionForm {

    private  String uname;
    private  String emladdrs;
    private  String psswrd1;
    private  String psswrd2;
    private  String dob;
    private String gender;

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getEmladdrs() {
        return emladdrs;
    }

    public void setEmladdrs(String emladdrs) {
        this.emladdrs = emladdrs;
    }

    public String getPsswrd1() {
        return psswrd1;
    }

    public void setPsswrd1(String psswrd1) {
        this.psswrd1 = psswrd1;
    }

    public String getPsswrd2() {
        return psswrd2;
    }

    public void setPsswrd2(String psswrd2) {
        this.psswrd2 = psswrd2;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
}
