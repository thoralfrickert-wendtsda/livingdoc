package com.comsysto.livingdoc.annotation.plantuml;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.FIELD, ElementType.METHOD})
public @interface PlantUmlField {
    boolean showField() default true;
    boolean showAssociation() default true;
}