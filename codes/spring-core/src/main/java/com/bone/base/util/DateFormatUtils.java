package com.bone.base.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * SimpleDateFormat时间处理工具
 * 
 * @author tuniu
 * @version [1.0, 2016年1月13日]
 */
public class DateFormatUtils {

    private static final Logger LOG = LoggerFactory.getLogger(DateFormatUtils.class);

    private static final ThreadLocal<HashMap<String, SimpleDateFormat>> DATE_LOCAL = new ThreadLocal<HashMap<String, SimpleDateFormat>>();

    @SuppressWarnings("unused")
    private static final String DEFAULT_DATEFORMAT = "yyyy-MM-dd";

    @SuppressWarnings("unused")
    private static final String DEFAULT_DATETIMEFORMAT = "yyyy-MM-dd HH:mm:ss";

    private static SimpleDateFormat getDateFormat(String format) {
        SimpleDateFormat sdf = null;
        HashMap<String, SimpleDateFormat> local = (HashMap<String, SimpleDateFormat>) DATE_LOCAL.get();

        if (null == local) {
            HashMap<String, SimpleDateFormat> map = new HashMap<String, SimpleDateFormat>();
            sdf = new SimpleDateFormat(format);
            map.put(format, sdf);
            DATE_LOCAL.set(map);
        } else {
            sdf = (SimpleDateFormat) local.get(format);
        }

        if (null == sdf) {
            sdf = new SimpleDateFormat(format);
            local.put(format, sdf);
        }

        return sdf;
    }

    public static String format(String pattern, Date date) {
        return getDateFormat(pattern).format(date);
    }

    public static Date parse(String pattern, String dateStr) {

        try {
            return getDateFormat(pattern).parse(dateStr);
        } catch (Exception e) {
            LOG.error("DateFormatUtils.parse error |{}", e);
        }
        return null;
    }

    public static String formatDate(Date date) {
        return getDateFormat("yyyy-MM-dd").format(date);
    }

    public static Date parseDate(String dateStr) {
        try {
            return getDateFormat("yyyy-MM-dd").parse(dateStr);
        } catch (Exception e) {
            LOG.error("DateFormatUtils.parseDate error |{}", e);
        }
        return null;
    }

    public static String formatDatetime(Date date) {
        return getDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
    }

    public static Date parseDatetime(String dateStr) {
        try {
            return getDateFormat("yyyy-MM-dd HH:mm:ss").parse(dateStr);
        } catch (Exception e) {
            LOG.error("DateFormatUtils.parseDatetime error |{}", e);
        }
        return null;
    }
}