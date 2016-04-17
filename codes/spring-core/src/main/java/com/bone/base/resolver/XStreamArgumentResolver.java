package com.bone.base.resolver;

import java.util.Map;

import org.springframework.core.MethodParameter;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.ModelAndViewContainer;

import com.bone.base.annotation.Xml;
import com.bone.base.util.XmlUtils;

public class XStreamArgumentResolver implements HandlerMethodArgumentResolver {

    @Override
    public Object resolveArgument(MethodParameter parameter,
            ModelAndViewContainer mavContainer, NativeWebRequest webRequest,
            WebDataBinderFactory binderFactory) throws Exception {

        Map<String, String[]> mess = webRequest.getParameterMap();
        String allParam = "";
        for (Map.Entry<String, String[]> entry : mess.entrySet()) {
            allParam = allParam + entry.getKey();
        }

        return XmlUtils.toBean(allParam, parameter.getParameterType());
    }

    @Override
    public boolean supportsParameter(MethodParameter parameter) {
        return parameter.getParameterAnnotation(Xml.class) != null;
    }

}
