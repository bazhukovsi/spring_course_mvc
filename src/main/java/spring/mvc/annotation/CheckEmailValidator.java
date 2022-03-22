package spring.mvc.annotation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CheckEmailValidator implements ConstraintValidator<CheckMail, String> {

    private String endOfEmail;
    @Override
    public void initialize(CheckMail checkMail) {
        endOfEmail = checkMail.value();
    }

    @Override
    public boolean isValid(String realValue, ConstraintValidatorContext constraintValidatorContext) {
        return realValue.endsWith(endOfEmail);
    }
}
