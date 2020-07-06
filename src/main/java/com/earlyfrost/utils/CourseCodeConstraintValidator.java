package com.earlyfrost.utils;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CourseCodeConstraintValidator implements ConstraintValidator<CourseCode,String> {

    private String prefix;

    @Override
    public void initialize(CourseCode courseCode) {
        this.prefix = courseCode.value();
    }

    @Override
    public boolean isValid(String theCode, ConstraintValidatorContext constraintValidatorContext) {

        if(theCode != null){
            return theCode.startsWith(prefix);
        }

        return true;
    }
}
