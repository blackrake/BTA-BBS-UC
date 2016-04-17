package com.bone.base.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.thoughtworks.xstream.XStream;

public class XmlUtils {

    private static final Logger LOG = LoggerFactory.getLogger(XmlUtils.class);

    private XmlUtils() {
    }

    /**
     * xml反序列化
     * 
     * @param xmlStr xml数据
     * @param clazz 类
     * @return object
     */
    @SuppressWarnings("unchecked")
    public static <T> T toBean(String xmlStr, Class<T> clazz) {
        if (null != xmlStr) {
            try {
                XStream xStream = new XStream();
                xStream.processAnnotations(clazz);
                return (T) xStream.fromXML(xmlStr);
            } catch (Exception e) {
                LOG.error("XStreamUtils.toBean error !| {},{}", JsonUtils.toString(xmlStr) + "|"
                        + clazz.getSimpleName(), e);
                return null;
            }
        } else {
            LOG.error("XStreamUtils.toBean error ! xmlStr is null");
        }
        return null;

    }

    public static String toString(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        } else {
            XStream xStream = new XStream();
            xStream.processAnnotations(obj.getClass());
            return xStream.toXML(obj);
        }
    }
}
