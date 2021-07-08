package signup.action;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import signup.form.SignupForm;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SignupAction extends Action {
    public ActionForward execute(ActionMapping mapping, ActionForm form,
                                 HttpServletRequest request, HttpServletResponse response) throws Exception {

        SignupForm signupForm = (SignupForm) form;

        System.out.println("Inside Signup Action");
        System.out.println(signupForm.getUname());
        System.out.println(signupForm.getEmladdrs());
        System.out.println(signupForm.getPsswrd1());
        System.out.println(signupForm.getDob());
        System.out.println(signupForm.getGender());

        if(!signupForm.getPsswrd1().equals(signupForm.getPsswrd2())){
            request.getSession(true).setAttribute("errorMassage","Passwords did not match!");
            return mapping.findForward("error");
        }

        return mapping.findForward("success");
    }
}
