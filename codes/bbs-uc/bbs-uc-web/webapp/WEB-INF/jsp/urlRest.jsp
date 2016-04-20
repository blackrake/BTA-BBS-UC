<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>REST-TEST</title>
<script type="text/javascript"
	src="${contextPath}/assets/plugins/jquery/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
	var lineTestConfig = [
			{
				sys : "RES",
				desc : "资源管理",
				schema : "http://",
				host : [
						{
							ip : [ "10.10.10.101", "10.10.10.102",
									"10.10.10.126", "10.10.10.127",
									"10.10.10.128", "10.10.10.188",
									"10.10.10.228", "10.10.0.137",
									"10.10.0.138", "10.10.0.139" ],
							tomcat : [ "tomcat_res_nm", "tomcat_res_nm",
									"tomcat_res_nm", "tomcat_res_nm",
									"tomcat_res_nm", "tomcat_res_nm",
									"tomcat_res_nm", "tomcat_res_nm",
									"tomcat_res_nm", "tomcat_res_nm" ],
							serverDesc : [ "", "t", "T", "T", "T", "灰", "",
									"T", "T", "T" ],
							serverTitle : [ "脚本", "仅供manage/flight服务",
									"仅供manage/flight服务", "T",
									"仅供manage/flight服务", "灰度发布",
									"售卖视图消费消息，只读DB", "T", "T", "T" ],
							port : "11501"
						}, {
							ip : [ "10.10.10.127", "10.10.10.128" ],
							tomcat : [ "tomcat_res_nm", "tomcat_res_nm" ],
							serverDesc : [ "T", "T" ],
							serverTitle : [ "T", "T" ],
							port : "11505"
						}, {
							ip : [ "10.10.10.127", "10.10.10.128" ],
							tomcat : [ "tomcat_res_nm", "tomcat_res_nm" ],
							serverDesc : [ "T", "T" ],
							serverTitle : [ "T", "T" ],
							port : "11506"
						} ],
				url : "/phoenixResource/manage/res-type/4/query?eyJ0b2tlbiI6IlNULTIwOTkyNy1CdzlqT2VZUnhENkNTcEp2ekpmMC1jYXMiLCJyIjowLjkwMzIwMzQ1NTYyMTY2NjUsInJlc1R5cGUiOjQsInN0YXJ0IjowLCJsaW1pdCI6MTAsInNvcnRuYW1lIjoiIiwic29ydG9yZGVyIjoiIn0="
			},
			{
				sys : "RES_CFM",
				desc : "确认管理",
				schema : "http://",
				host : [ {
					ip : [ "172.22.0.165", "172.22.0.181", "10.10.10.126",
							"10.10.10.127", "10.10.10.128", "10.10.10.188",
							"10.10.0.137", "10.10.0.138", "10.10.0.139" ],
					tomcat : [ "tomcat_res_cfm", "tomcat_res_cfm",
							"tomcat_res_cfm", "tomcat_res_cfm",
							"tomcat_res_cfm", "tomcat_res_cfm",
							"tomcat_res_cfm", "tomcat_res_cfm",
							"tomcat_res_cfm" ],
					serverDesc : [ "T", "", "T", "T", "", "灰", "T", "T", "T" ],
					serverTitle : [ "T", "", "T", "T", "", "灰度发布", "T", "T",
							"T" ],
					port : "11504"
				} ],
				url : "/confirm/assesed-loss/query?eyJrZXlXb3JkIjoiIiwib2JqZWN0Q29kZSI6IiIsIm9yZGVySWQiOiIiLCJhdWRpdFR5cGUiOiIxIiwiYWRkVGltZTEiOiIiLCJvd25lck5hbWUiOiIiLCJyZXNUeXBlIjoiMCIsImFkZFRpbWVTdGFydCI6IiIsIndmU3RhdHVzIjoxLCJzdGFydCI6MCwibGltaXQiOjEwLCJzb3J0bmFtZSI6IiIsInNvcnRvcmRlciI6IiJ9"
			},
			{
				sys : "CFM",
				desc : "新确认管理",
				schema : "http://",
				host : [ {
					ip : [ "10.10.10.101", "10.10.10.102", "10.10.10.126",
							"10.10.10.127" ],
					tomcat : [ "tomcat_cfm_nm", "tomcat_cfm_nm",
							"tomcat_cfm_nm", "tomcat_cfm_nm" ],
					serverDesc : [ "T", "T", "T", "T" ],
					serverTitle : [ "T", "T", "T", "T" ],
					port : "13401"
				} ],
				url : "/confirmation-main/scala/property/query/query"
			},
			{
				sys : "CFM_AKO",
				desc : "确认管理-人工确认",
				schema : "http://",
				host : [ {
					ip : [ "10.10.10.126", "10.10.10.127" ],
					tomcat : [ "tomcat_cfm_ako", "tomcat_cfm_ako" ],
					serverDesc : [ "T", "T" ],
					serverTitle : [ "T", "T" ],
					port : "10203"
				} ],
				url : "/ako/occupyWorkform/queryOccupyWorkformList?eyJ1aWQiOiI1NTcwIiwidG9rZW4iOiJTVC00MTM5NDE0LTV1ejRLaTZvbHNmSTJnYkJsWlpELWNhcyIsIm5pY2tuYW1lIjoi5byg5raoIiwiciI6MC4yODIyNjQ5MTIyMDcyNTY5LCJzdGF0dXMiOiIiLCJvcmRlcklkIjoiIiwid29ya2Zvcm1JZCI6IiIsInJlc0lkIjoiIiwicmVzVHlwZSI6IiIsIm93bmVyTmFtZSI6IiIsInJlc3VsdCI6IiIsImRlcGFydHJ1ZUNpdHkiOiIiLCJ0eXBlIjoiMiIsInRvdXJEYXRlU3RhcnQiOiIiLCJ0b3VyRGF0ZUVuZCI6IiIsInJldmVydFRpbWVTdGFydCI6IiIsInJldmVydFRpbWVFbmQiOiIiLCJzdGFydCI6MCwibGltaXQiOjEwLCJzb3J0bmFtZSI6IiIsInNvcnRvcmRlciI6IiJ9"
			},
			{
				sys : "PRD",
				desc : "产品管理",
				schema : "http://",
				host : [ {
					ip : [ "10.10.10.101", "10.10.10.102", "10.10.10.106",
							"10.10.10.126", "10.10.10.127", "10.10.10.128",
							"10.10.10.188", "10.10.10.229", "172.22.0.194",
							"10.10.0.137", "10.10.0.138", "10.10.0.139" ],
					tomcat : [ "tomcat_prd_nm", "tomcat_prd_nm",
							"tomcat_prd_nm", "tomcat_prd_nm", "tomcat_prd_nm",
							"tomcat_prd_nm", "tomcat_prd_nm", "tomcat_prd_nm",
							"tomcat_prd_nm", "tomcat_prd_nm", "tomcat_prd_nm",
							"tomcat_prd_nm" ],
					serverDesc : [ "", "T", "T", "T", "T", "", "灰", "", "",
							"T", "T", "T" ],
					serverTitle : [ "", "T", "T", "T", "T", "", "灰度发布", "", "",
							"T", "T", "T" ],
					port : "11401"
				} ],
				url : "/manage/product/config/query?eyJ0eXBlcyI6IjEifQ=="
			},
			{
				sys : "STK",
				desc : "库存管理",
				schema : "http://",
				host : [
						{
							ip : [ "10.10.10.101", "10.10.10.102",
									"10.10.10.126", "10.10.10.127",
									"10.10.10.128", "10.10.10.188",
									"10.10.0.137", "10.10.0.138", "10.10.0.139" ],
							tomcat : [ "tomcat_stk_nm", "tomcat_stk_nm",
									"tomcat_stk_nm", "tomcat_stk_nm",
									"tomcat_stk_nm", "tomcat_stk_nm",
									"tomcat_stk_nm", "tomcat_stk_nm",
									"tomcat_stk_nm" ],
							serverDesc : [ "", "t", "T", "T", "T", "灰", "T",
									"T", "T" ],
							serverTitle : [ "脚本", "manage/round/query专用", "T",
									"T", "manage/round/query专用", "灰度发布", "T",
									"T", "T" ],
							port : "11601"
						}, {
							ip : [ "10.10.10.126", "10.10.10.127" ],
							tomcat : [ "tomcat_stk_nm", "tomcat_stk_nm" ],
							serverDesc : [ "T", "T" ],
							serverTitle : [ "T", "T" ],
							port : "11602"
						} ],
				url : "/manage/rule/list?ewogICJ1aWQiOiAiMCIsCiAgIm5pY2tuYW1lIjogIua1i+ivleiEmuacrFJFU1RfVEVTVCIsCiAgInJ1bGVJZCI6ICIxNiIsCiAgIm5hbWUiOiAiIiwKICAic3RhcnQiOiAwLAogICJsaW1pdCI6IDEKfQ=="
			},
			{
				sys : "ORD",
				desc : "订单",
				schema : "http://",
				host : [ {
					ip : [ "10.10.10.109", "10.10.10.126", "10.10.10.127",
							"10.10.10.128", "10.10.10.188", "10.10.0.137",
							"10.10.0.138", "10.10.0.139" ],
					tomcat : [ "tomcat_ord_nm", "tomcat_ord_nm",
							"tomcat_ord_nm", "tomcat_ord_nm", "tomcat_ord_nm",
							"tomcat_ord_nm", "tomcat_ord_nm", "tomcat_ord_nm",
							"tomcat_ord_nm" ],
					serverDesc : [ "", "T", "T", "", "灰", "T", "T", "T" ],
					serverTitle : [ "T", "T", "T", "", "灰度发布", "T", "T", "T" ],
					port : "10202"
				} ],
				url : "/manage/bpm/all-error/query?eyJ0b2tlbiI6IlNULTI2ODktb3FBVEpteG5kWWRSRVZhV09lNk8tY2FzIiwiciI6MC4wNzA1MDU2NDg1ODYwOTQyLCJsaW1pdCI6MTAsInN0YXJ0IjowLCJzb3J0bmFtZSI6IiIsInNvcnRvcmRlciI6IiJ9"
			},
			{
				sys : "SUP",
				desc : "适配",
				schema : "http://",
				host : [ {
					ip : [ "10.10.10.101", "10.10.10.102", "10.10.10.126",
							"10.10.10.127", "10.10.10.128", "58.68.255.36",
							"10.10.0.106" ],
					tomcat : [ "tomcat_res_adapter", "tomcat_res_adapter",
							"tomcat_res_adapter", "tomcat_res_adapter",
							"tomcat_res_adapter", "tomcat_res_adapter",
							"tomcat_res_adapter" ],
					serverDesc : [ "T", "T", "T", "T", "T", "T", "T" ],
					serverTitle : [ "T", "T", "T", "T", "T", "T", "T" ],
					port : "11502"
				} ],
				url : "/supplier/get-vendor-info?ewogICJ2ZW5kb3JJZCI6ICI5MDgiCn0="
			},
			{
				sys : "BOH",
				desc : "产品基础",
				schema : "http://",
				host : [
						{
							ip : [ "10.10.0.137", "10.10.0.117", "10.10.0.128",
									"10.10.0.129", "10.10.0.173",
									"10.10.0.175", "10.10.0.177" ],
							tomcat : [ "tomcat_boh_nm", "tomcat_boh_nm",
									"tomcat_boh_nm_02", "tomcat_boh_nm_02",
									"tomcat_boh_nm", "tomcat_boh_nm",
									"tomcat_boh_nm" ],
							serverDesc : [ "T", "T", "T", "T", "T", "T", "T",
									"T" ],
							serverTitle : [ "T", "T", "T", "T", "T", "T", "T",
									"T" ],
							port : "12501"
						},
						{
							ip : [ "10.10.0.128", "10.10.0.129" ],
							tomcat : [ "tomcat_boh_nm_01", "tomcat_boh_nm_01" ],
							serverDesc : [ "T", "T" ],
							serverTitle : [ "T", "T" ],
							port : "12502"
						},
						{
							ip : [ "10.10.0.128", "10.10.0.129" ],
							tomcat : [ "tomcat_boh_nm_03", "tomcat_boh_nm_03" ],
							serverDesc : [ "T", "T" ],
							serverTitle : [ "T", "T" ],
							port : "12503"
						},
						{
							ip : [ "10.10.0.128", "10.10.0.129" ],
							tomcat : [ "tomcat_boh_nm_04", "tomcat_boh_nm_04" ],
							serverDesc : [ "T", "T" ],
							serverTitle : [ "T", "T" ],
							port : "12504"
						} ],
				url : "/product/list?ewoicHJvZHVjdFR5cGUiOiA5LAoiZGF0YSI6ewoic3RhcnQiOjAsCiJsaW1pdCI6MQp9CiB9Cg=="
			},
			{
				sys : "ZRB",
				desc : "价格中心N",
				schema : "http://",
				host : [
						{
							ip : [ "172.22.0.164", "172.22.0.165",
									"172.22.0.166", "172.22.0.167",
									"172.22.0.181", "10.10.10.105" ],
							tomcat : [ "tomcat_zrb_nm_01", "tomcat_zrb_nm_01",
									"tomcat_zrb_nm_01", "tomcat_zrb_nm_01",
									"tomcat_zrb_nm_01", "tomcat_zrb_nm_01" ],
							serverDesc : [ "", "", "", "", "", "" ],
							serverTitle : [ "", "", "", "", "", "" ],
							port : "12901"
						},
						{
							ip : [ "172.22.0.164", "172.22.0.165",
									"172.22.0.166", "172.22.0.167",
									"172.22.0.181", "10.10.10.105" ],
							tomcat : [ "tomcat_zrb_nm_02", "tomcat_zrb_nm_02",
									"tomcat_zrb_nm_02", "tomcat_zrb_nm_02",
									"tomcat_zrb_nm_02", "tomcat_zrb_nm_02" ],
							serverDesc : [ "", "", "", "", "", "" ],
							serverTitle : [ "", "", "", "", "", "" ],
							port : "12902"
						},
						{
							ip : [ "172.22.0.164", "172.22.0.165",
									"172.22.0.166", "172.22.0.167",
									"172.22.0.181", "10.10.10.105" ],
							tomcat : [ "tomcat_zrb_nm_03", "tomcat_zrb_nm_03",
									"tomcat_zrb_nm_03", "tomcat_zrb_nm_03",
									"tomcat_zrb_nm_03", "tomcat_zrb_nm_03" ],
							serverDesc : [ "", "", "", "", "", "" ],
							serverTitle : [ "", "", "", "", "", "" ],
							port : "12903"
						},
						{
							ip : [ "172.22.0.164", "172.22.0.165",
									"172.22.0.166", "172.22.0.167",
									"172.22.0.181", "10.10.10.105" ],
							tomcat : [ "tomcat_zrb_nm_04", "tomcat_zrb_nm_04",
									"tomcat_zrb_nm_04", "tomcat_zrb_nm_04",
									"tomcat_zrb_nm_04", "tomcat_zrb_nm_04" ],
							serverDesc : [ "", "", "", "", "", "" ],
							serverTitle : [ "", "", "", "", "", "" ],
							port : "12904"
						}, {
							ip : [ "10.10.10.105" ],
							tomcat : [ "tomcat_zrb_nm_05" ],
							serverDesc : [ "", "", "", "" ],
							serverTitle : [ "", "", "", "", "", "" ],
							port : "12905"
						} ],
				url : "/zrb-web/price/product/detail/query?W3sicHJvZHVjdElkIjo5NTM4MDgsInRlcm1pbmFsSWQiOjMsImNoYW5uZWxJZCI6MjAwLCJwcm9kdWN0VHlwZUlkIjoxLCJwcm9kdWN0TGluZUlkIjoyMiwiY291cG9uIjowfV0="
			},
			{
				sys : "ZRB",
				desc : "价格中心B",
				schema : "http://",
				host : [ {
					ip : [ "10.10.0.128", "10.10.0.129", "10.10.0.137",
							"10.10.0.138", "10.10.0.139" ],
					tomcat : [ "tomcat_zrb_nm", "tomcat_zrb_nm",
							"tomcat_zrb_nm", "tomcat_zrb_nm", "tomcat_zrb_nm" ],
					serverDesc : [ "", "", "", "", "" ],
					serverTitle : [ "", "", "", "", "", "" ],
					port : "12901"
				} ],
				url : "/zrb-web/price/product/detail/query/realtime?W3sicHJvZHVjdElkIjo5NTM4MDgsInRlcm1pbmFsSWQiOjMsImNoYW5uZWxJZCI6MjAwLCJwcm9kdWN0VHlwZUlkIjoxLCJwcm9kdWN0TGluZUlkIjoyMiwiY291cG9uIjowfV0="
			} ];

	var Nibbler = function(options) {
		var construct,

		// options
		pad, dataBits, codeBits, keyString, arrayData,

		// private instance variables
		mask, group, max,

		// private methods
		gcd, translate,

		// public methods
		encode, decode,

		utf16to8, utf8to16;

		// pseudo-constructor
		construct = function() {
			var i, mag, prev;

			// options
			pad = options.pad || '';
			dataBits = options.dataBits;
			codeBits = options.codeBits;
			keyString = options.keyString;
			arrayData = options.arrayData;

			// bitmasks
			mag = Math.max(dataBits, codeBits);
			prev = 0;
			mask = [];
			for (i = 0; i < mag; i += 1) {
				mask.push(prev);
				prev += prev + 1;
			}
			max = prev;

			// ouput code characters in multiples of this number
			group = dataBits / gcd(dataBits, codeBits);
		};

		// greatest common divisor
		gcd = function(a, b) {
			var t;
			while (b !== 0) {
				t = b;
				b = a % b;
				a = t;
			}
			return a;
		};

		// the re-coder
		translate = function(input, bitsIn, bitsOut, decoding) {
			var i, len, chr, byteIn, buffer, size, output, write;

			// append a byte to the output
			write = function(n) {
				if (!decoding) {
					output.push(keyString.charAt(n));
				} else if (arrayData) {
					output.push(n);
				} else {
					output.push(String.fromCharCode(n));
				}
			};

			buffer = 0;
			size = 0;
			output = [];

			len = input.length;
			for (i = 0; i < len; i += 1) {
				// the new size the buffer will be after adding these bits
				size += bitsIn;

				// read a character
				if (decoding) {
					// decode it
					chr = input.charAt(i);
					byteIn = keyString.indexOf(chr);
					if (chr === pad) {
						break;
					} else if (byteIn < 0) {
						throw 'the character "' + chr + '" is not a member of '
								+ keyString;
					}
				} else {
					if (arrayData) {
						byteIn = input[i];
					} else {
						byteIn = input.charCodeAt(i);
					}
					if ((byteIn | max) !== max) {
						throw byteIn + " is outside the range 0-" + max;
					}
				}

				// shift the buffer to the left and add the new bits
				buffer = (buffer << bitsIn) | byteIn;

				// as long as there's enough in the buffer for another output...
				while (size >= bitsOut) {
					// the new size the buffer will be after an output
					size -= bitsOut;

					// output the part that lies to the left of that number of bits
					// by shifting the them to the right
					write(buffer >> size);

					// remove the bits we wrote from the buffer
					// by applying a mask with the new size
					buffer &= mask[size];
				}
			}

			// If we're encoding and there's input left over, pad the output.
			// Otherwise, leave the extra bits off, 'cause they themselves are padding
			if (!decoding && size > 0) {

				// flush the buffer
				write(buffer << (bitsOut - size));

				// add padding keyString for the remainder of the group
				len = output.length % group;
				for (i = 0; i < len; i += 1) {
					output.push(pad);
				}
			}

			// string!
			return (arrayData && decoding) ? output : output.join('');
		};

		/**
		 * Encode.  Input and output are strings.
		 */
		encode = function(str) {
			//return translate(input, dataBits, codeBits, false);
			str = utf16to8(str);
			var out = "", i = 0, len = str.length, c1, c2, c3, base64EncodeChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
			while (i < len) {
				c1 = str.charCodeAt(i++) & 0xff;
				if (i == len) {
					out += base64EncodeChars.charAt(c1 >> 2);
					out += base64EncodeChars.charAt((c1 & 0x3) << 4);
					out += "==";
					break;
				}
				c2 = str.charCodeAt(i++);
				if (i == len) {
					out += base64EncodeChars.charAt(c1 >> 2);
					out += base64EncodeChars.charAt(((c1 & 0x3) << 4)
							| ((c2 & 0xF0) >> 4));
					out += base64EncodeChars.charAt((c2 & 0xF) << 2);
					out += "=";
					break;
				}
				c3 = str.charCodeAt(i++);
				out += base64EncodeChars.charAt(c1 >> 2);
				out += base64EncodeChars.charAt(((c1 & 0x3) << 4)
						| ((c2 & 0xF0) >> 4));
				out += base64EncodeChars.charAt(((c2 & 0xF) << 2)
						| ((c3 & 0xC0) >> 6));
				out += base64EncodeChars.charAt(c3 & 0x3F);
			}
			return out;
		};

		/**
		 * Decode.  Input and output are strings.
		 */
		decode = function(str) {
			//return translate(input, codeBits, dataBits, true);
			var c1, c2, c3, c4;
			var i, len, out;
			var base64DecodeChars = new Array(-1, -1, -1, -1, -1, -1, -1, -1,
					-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
					-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
					-1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56,
					57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3,
					4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
					20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28,
					29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43,
					44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1);
			len = str.length;
			i = 0;
			out = "";
			while (i < len) {
				do {
					c1 = base64DecodeChars[str.charCodeAt(i++) & 0xff];
				} while (i < len && c1 == -1);
				if (c1 == -1)
					break;
				do {
					c2 = base64DecodeChars[str.charCodeAt(i++) & 0xff];
				} while (i < len && c2 == -1);
				if (c2 == -1)
					break;
				out += String.fromCharCode((c1 << 2) | ((c2 & 0x30) >> 4));
				do {
					c3 = str.charCodeAt(i++) & 0xff;
					if (c3 == 61) {
						out = utf8to16(out);
						return out;
					}
					c3 = base64DecodeChars[c3];
				} while (i < len && c3 == -1);
				if (c3 == -1)
					break;
				out += String.fromCharCode(((c2 & 0XF) << 4)
						| ((c3 & 0x3C) >> 2));
				do {
					c4 = str.charCodeAt(i++) & 0xff;
					if (c4 == 61) {
						out = utf8to16(out);
						return out;
					}
					c4 = base64DecodeChars[c4];
				} while (i < len && c4 == -1);
				if (c4 == -1)
					break;
				out += String.fromCharCode(((c3 & 0x03) << 6) | c4);
			}
			out = utf8to16(out);
			return out;
		};

		utf16to8 = function(str) {
			var out, i, len, c;
			out = "";
			len = str.length;
			for (i = 0; i < len; i++) {
				c = str.charCodeAt(i);
				if ((c >= 0x0001) && (c <= 0x007F)) {
					out += str.charAt(i);
				} else if (c > 0x07FF) {
					out += String.fromCharCode(0xE0 | ((c >> 12) & 0x0F));
					out += String.fromCharCode(0x80 | ((c >> 6) & 0x3F));
					out += String.fromCharCode(0x80 | ((c >> 0) & 0x3F));
				} else {
					out += String.fromCharCode(0xC0 | ((c >> 6) & 0x1F));
					out += String.fromCharCode(0x80 | ((c >> 0) & 0x3F));
				}
			}
			return out;
		};

		utf8to16 = function(str) {
			var out, i, len, c;
			var char2, char3;
			out = "";
			len = str.length;
			i = 0;
			while (i < len) {
				c = str.charCodeAt(i++);
				switch (c >> 4) {
				case 0:
				case 1:
				case 2:
				case 3:
				case 4:
				case 5:
				case 6:
				case 7:
					out += str.charAt(i - 1);
					break;
				case 12:
				case 13:
					char2 = str.charCodeAt(i++);
					out += String.fromCharCode(((c & 0x1F) << 6)
							| (char2 & 0x3F));
					break;
				case 14:
					char2 = str.charCodeAt(i++);
					char3 = str.charCodeAt(i++);
					out += String.fromCharCode(((c & 0x0F) << 12)
							| ((char2 & 0x3F) << 6) | ((char3 & 0x3F) << 0));
					break;
				}
			}
			return out;
		}
		this.encode = encode;
		this.decode = decode;
		construct();
	};
	window.Base32 = new Nibbler({
		dataBits : 8,
		codeBits : 5,
		keyString : 'ABCDEFGHIJKLMNOPQRSTUVWXYZ234567',
		pad : '='
	});
	window.Base64 = new Nibbler(
			{
				dataBits : 8,
				codeBits : 6,
				keyString : 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/',
				pad : '='
			});

	window.JSON = new function() {
		var useHasOwn = !!{}.hasOwnProperty;
		var pad = function(n) {
			return n < 10 ? "0" + n : n;
		};

		var m = {
			"\b" : '\\b',
			"\t" : '\\t',
			"\n" : '\\n',
			"\f" : '\\f',
			"\r" : '\\r',
			'"' : '\\"',
			"\\" : '\\\\'
		};

		var encodeString = function(s) {
			if (/["\\\x00-\x1f]/.test(s)) {
				return '"'
						+ s.replace(/([\x00-\x1f\\"])/g, function(a, b) {
							var c = m[b];
							if (c) {
								return c;
							}
							c = b.charCodeAt();
							return "\\u00" + Math.floor(c / 16).toString(16)
									+ (c % 16).toString(16);
						}) + '"';
			}
			return '"' + s + '"';
		};

		var encodeArray = function(o) {
			var a = [ "[" ], b, i, l = o.length, v;
			for (i = 0; i < l; i += 1) {
				v = o[i];
				switch (typeof v) {
				case "undefined":
				case "function":
				case "unknown":
					break;
				default:
					if (b) {
						a.push(',');
					}
					a.push(v === null ? "null" : JSON.encode(v));
					b = true;
				}
			}
			a.push("]");
			return a.join("");
		};

		var encodeDate = function(o) {
			return '"' + o.getFullYear() + "-" + pad(o.getMonth() + 1) + "-"
					+ pad(o.getDate()) + "T&nbsp;" + pad(o.getHours()) + ":"
					+ pad(o.getMinutes()) + ":" + pad(o.getSeconds()) + '"';
		};

		this.encode = function(o) {
			if (typeof o == "undefined" || o === null) {
				return "null";
			} else if (o instanceof Array) {
				return encodeArray(o);
			} else if (o instanceof Date) {
				return encodeDate(o);
			} else if (typeof o == "string") {
				return encodeString(o);
			} else if (typeof o == "number") {
				return isFinite(o) ? String(o) : "null";
			} else if (typeof o == "boolean") {
				return String(o);
			} else {
				var a = [ "{" ], b, i, v;
				for (i in o) {
					if (!useHasOwn || o.hasOwnProperty(i)) {
						v = o[i];
						switch (typeof v) {
						case "undefined":
						case "function":
						case "unknown":
							break;
						default:
							if (b) {
								a.push(',');
							}
							a.push(this.encode(i), ":", v === null ? "null"
									: this.encode(v));
							b = true;
						}
					}
				}
				a.push("}");
				return a.join("");
			}
		};
		this.decode = function(json) {
			return eval("(" + json + ')');
		};
	};
	String.space = function(len) {
		var t = [], i;
		for (i = 0; i < len; i++) {
			t.push(' ');
		}
		return t.join('');
	};
	function format(msg) {
		var text = msg.split("\n").join(" ");
		var t = [];
		var tab = 0;
		var inString = false;
		for (var i = 0, len = text.length; i < len; i++) {
			var c = text.charAt(i);
			if (inString && c === inString) {
				if (text.charAt(i - 1) !== '\\') {
					inString = false;
				}
			} else if (!inString && (c === '"' || c === "'")) {
				inString = c;
			} else if (!inString && (c === ' ' || c === "\t")) {
				c = '';
			} else if (!inString && c === ':') {
				c += ' ';
			} else if (!inString && c === ',') {
				c += "\n" + String.space(tab * 2);
			} else if (!inString && (c === '[' || c === '{')) {
				tab++;
				c += "\n" + String.space(tab * 2);
			} else if (!inString && (c === ']' || c === '}')) {
				tab--;
				c = "\n" + String.space(tab * 2) + c;
			}
			t.push(c);
		}
		$("#resp").val(t.join(''));
	};
	function getRemoveWhiteSpace(msg) {
		var text = msg.split("\n").join(" ");
		var t = [];
		var inString = false;
		for (var i = 0, len = text.length; i < len; i++) {
			var c = text.charAt(i);
			if (inString && c === inString) {

				if (text.charAt(i - 1) !== '\\') {
					inString = false;
				}
			} else if (!inString && (c === '"' || c === "'")) {
				inString = c;
			} else if (!inString && (c === ' ' || c === "\t")) {
				c = '';
			}
			t.push(c);
		}
		$("#resp").val(t.join(''));
	};

	function isURL(str_url) {
		var strRegex = '^((https|http|ftp|rtsp|mms)?://)';
		var re = new RegExp(strRegex);
		if (re.test(str_url)) {
			return (true);
		} else {
			return (false);
		}
	};
	$(document)
			.ready(
					function() {
						//                $("#reqMethod").change(function(e){
						//                    if("GET"==$("#reqMethod").val()){
						//                        $("#paramDiv").hide();
						//                    }else{
						//                        $("#paramDiv").show();
						//                    }
						//                }).change();
						$("#sub")
								.click(
										function(e) {
											var paramData = null;
											//                if("POST"==$("#reqMethod").val()){
											if (null != $("#reqParam").val()
													&& $("#reqParam").val().length >= 2) {
												if ($("#isAutoEncode").attr(
														"checked")) {
													paramData = Base64
															.encode($(
																	"#reqParam")
																	.val());
												} else {
													paramData = $("#reqParam")
															.val();
												}

											}
											//                };
											if (!isURL($.trim($("#reqUrl")
													.val()))) {
												return;
											}
											;
											$
													.ajax({
														url : $.trim($(
																"#reqUrl")
																.val()),
														type : $("#reqMethod")
																.val(),
														dataType : "text",
														data : paramData,
														success : function(msg) {
															if ($(
																	"#isAutoFormat")
																	.attr(
																			"checked")) {
																format(Base64
																		.decode(msg));
															} else if ($(
																	"#isAutoDecode")
																	.attr(
																			"checked")) {
																$("#resp")
																		.val(
																				Base64
																						.decode(msg));
															} else {
																$("#resp").val(
																		msg);
															}
														},
														error : function(
																XMLHttpRequest,
																textStatus,
																errorThrown) {
															$("#resp").val(
																	"请求有误");
														}
													});
										});
						$("#decode").click(function(e) {
							$("#resp").val(Base64.decode($("#resp").val()));
						});
						$("#encode").click(function(e) {
							$("#resp").val(Base64.encode($("#resp").val()));
						});
						$("#format").click(function(e) {
							format($("#resp").val());
						});
						$("#removeWhite").click(function(e) {
							getRemoveWhiteSpace($("#resp").val());
						});
						$("#clearLeft").click(function(e) {
							$("#reqUrl").val("");
							$("#reqParam").val("");
						});
						$("#clearRight").click(function(e) {
							$("#resp").val("");
						});
						$("#isAutoDecode").click(function(e) {
							if (!this.checked) {
								$("#isAutoFormat").attr("checked", false);
							}
						});
						$("#isAutoFormat").click(function(e) {
							if (this.checked) {
								$("#isAutoDecode").attr("checked", true);
							}
						});
						$("#reCompute")
								.click(
										function(e) {
											$("#lineTestRsDiv").html("");
											var productId = $.trim($(
													"#reComputeProductId")
													.val());
											if (null == productId
													|| productId.length == 0
													|| isNaN(productId)) {
												$("#lineTestRsDiv")
														.html(
																"</br><span style='color:red;float:right'>请输入产品id</span>");
											} else {
												var data = [ {
													"productId" : productId
												} ];
												$
														.ajax({
															url : "http://public-api.nj.prd.tuniu.org/zrb-web/changeProductOutPrice",
															type : "GET",
															dataType : "text",
															data : Base64
																	.encode(JSON
																			.encode(data)),
															success : function(
																	msg,
																	textStatus) {
																try {
																	if ($
																			.parseJSON(Base64
																					.decode(msg)).success) {
																		$(
																				"#lineTestRsDiv")
																				.html(
																						"</br><span style='color:green;float:right'>计算成功</span>");
																	} else {
																		$(
																				"#lineTestRsDiv")
																				.html(
																						"</br><span style='color:red;float:right'>计算失败</span>");
																	}
																} catch (e) {
																	$(
																			"#lineTestRsDiv")
																			.html(
																					"</br><span style='color:red;float:right'>请求出错</span>");
																}
															},
															error : function(
																	xls) {
																$(
																		"#lineTestRsDiv")
																		.html(
																				"</br><span style='color:red;float:right'>请求出错</span>");
															}
														});
											}
											;
										});
						var listopen = "&nbsp;-&nbsp;";
						var listclose = "&nbsp;+&nbsp;";
						$("#lineTestButton")
								.click(
										function(e) {
											var lineTestIsClose = $(
													"#lineTestIsClose").attr(
													"checked");
											$("#lineTestRsDiv").html(
													"<br/><br/>");
											$("#lineTestRsDiv")
													.append(
															"<div style='padding-bottom:10px;'><span style='display:block; width:150px;float: left;'><u>系统/模块</u></span><span style='display:block; width:150px;float: left;' title='“T”表示可对外提供服务，“灰”表示灰度发布使用，空白表示不可对外提供服务；悬浮ip可见tomcat名称。'><u>部署说明/ip:port</u></span><span style='display:block; float: left;width:70px;'><u>状态</u></span><span style='display:block; width:80px;float: left;'><u>响应时间</u></span></div><br/>");
											$
													.each(
															lineTestConfig,
															function(i, n) {
																var mainsys = n.sys
																		+ i
																		+ "main";
																var mainrs = n.sys
																		+ i
																		+ "rs";
																var mainimg = n.sys
																		+ i
																		+ "img";
																var mainCost = n.sys
																		+ i
																		+ "cost";
																var wrapspan = n.sys
																		+ i
																		+ "span";
																var currentListStatus = listopen;
																var currenShowStatus = "inline";
																if (lineTestIsClose) {
																	currentListStatus = listclose;
																	currenShowStatus = "none";
																}
																$(
																		"#lineTestRsDiv")
																		.append(
																				"<span id='"+mainsys+"' style='display:block; width:300px;float: left;padding-top:1px;'><span id='"+mainimg+"' style='vertical-align:2px;cursor:pointer;border:1px solid black;'>"
																						+ currentListStatus
																						+ "</span>"
																						+ n.desc
																						+ "("
																						+ n.sys
																						+ ")</span>"
																						+ "</span><span id='"+mainrs+"' style='display:block; float: left;width:70px;'>testing</span><span id='"+mainCost+"' style='display:block; width:80px;float: left;' title='最长响应时间'>testing</span><div style='clear:left;'></div><span id='"+wrapspan+"' style='display:"+currenShowStatus+";'></span>");
																var successFlag = true;
																$("#" + mainsys)
																		.click(
																				function(
																						e) {
																					var currentimg = $(
																							"#"
																									+ mainimg)
																							.html();
																					if (currentimg == listclose) {
																						$(
																								"#"
																										+ wrapspan)
																								.css(
																										{
																											"display" : "inline"
																										});
																						$(
																								"#"
																										+ mainimg)
																								.html(
																										listopen);
																					} else {
																						$(
																								"#"
																										+ wrapspan)
																								.css(
																										{
																											"display" : "none"
																										});
																						$(
																								"#"
																										+ mainimg)
																								.html(
																										listclose);
																					}
																					//$("#"+wrapspan).toggle(100);
																				});
																var proxyCount = 0;
																$
																		.each(
																				n.host,
																				function(
																						j,
																						m) {
																					$
																							.each(
																									m.ip,
																									function(
																											k,
																											p) {
																										proxyCount++;
																									});
																				});
																var completeCount = 0;
																var maxCost = 0;
																$
																		.each(
																				n.host,
																				function(
																						j,
																						m) {
																					$
																							.each(
																									m.ip,
																									function(
																											k,
																											p) {
																										var time1 = new Date()
																												.getTime();
																										var rs = n.sys
																												+ i
																												+ j
																												+ k
																												+ "rs";
																										var cost = n.sys
																												+ i
																												+ j
																												+ k
																												+ "cost";
																										var success = false;
																										var time2 = 0;
																										$(
																												"#"
																														+ wrapspan)
																												.append(
																														"<span style='display:block; width:130px;float: left;'>&nbsp;</span>"
																																+ "<span style='display:block; width:170px;float: left;' title='"
																																+ m.tomcat[k]
																																+ "("
																																+ m.port
																																+ ")  "
																																+ m.serverTitle[k]
																																+ "'>"
																																+ p
																																+ ":"
																																+ m.port
																																+ " <span style='font-size:8px;vertical-align:5px;color:red;' title='“T”表示可对外提供服务，“灰”表示灰度发布使用，空白表示不可对外提供服务'>"
																																+ m.serverDesc[k]
																																+ "</span></span> <span id='"+rs+"'  style='display:block; float: left;width:70px;'>testing</span><span id='"+cost+"'  style='display:block; width:80px;float: left;'>testing</span><div style='clear:left;'></div>");
																										$
																												.ajax({
																													url : n.schema
																															+ p
																															+ ":"
																															+ m.port
																															+ n.url,
																													type : "GET",
																													dataType : "text",
																													success : function(
																															msg,
																															textStatus) {
																														time2 = new Date()
																																.getTime();
																														try {
																															if ($
																																	.parseJSON(Base64
																																			.decode(msg)).success) {
																																success = true;
																															} else {
																																successFlag = false;
																															}
																														} catch (e) {
																															successFlag = false;
																														}
																													},
																													error : function(
																															xls) {
																														time2 = new Date()
																																.getTime();
																														successFlag = false;
																														$(
																																"#"
																																		+ cost)
																																.html(
																																		(time2 - time1)
																																				+ "ms");
																													},
																													complete : function(
																															xls) {
																														completeCount++;
																														$(
																																"#"
																																		+ cost)
																																.html(
																																		(time2 - time1)
																																				+ "ms");
																														if (maxCost < (time2 - time1)) {
																															maxCost = time2
																																	- time1;
																														}
																														;
																														if (success) {
																															$(
																																	"#"
																																			+ rs)
																																	.html(
																																			"<span style='color:green'>ok</span>");
																														} else {
																															var wrongstatus = "";
																															if (xls
																																	&& xls.status) {
																																wrongstatus = xls.status;
																															}
																															$(
																																	"#"
																																			+ rs)
																																	.html(
																																			"<span style='color:red'>error "
																																					+ wrongstatus
																																					+ "</span>");
																														}
																														if (completeCount == proxyCount) {
																															if (!lineTestIsClose) {
																																$(
																																		"#"
																																				+ wrapspan)
																																		.css(
																																				{
																																					"display" : "inline"
																																				});
																																$(
																																		"#"
																																				+ mainimg)
																																		.html(
																																				listopen);
																															}
																															$(
																																	"#"
																																			+ mainCost)
																																	.html(
																																			(maxCost)
																																					+ "ms");
																															if (successFlag) {
																																if (lineTestIsClose) {
																																	$(
																																			"#"
																																					+ wrapspan)
																																			.css(
																																					{
																																						"display" : "none"
																																					});
																																	$(
																																			"#"
																																					+ mainimg)
																																			.html(
																																					listclose);
																																}

																																$(
																																		"#"
																																				+ mainrs)
																																		.html(
																																				"<span style='color:green'>ok</span>");
																																$(
																																		"#"
																																				+ mainCost)
																																		.css(
																																				{
																																					"color" : "green"
																																				});
																															} else {
																																$(
																																		"#"
																																				+ mainrs)
																																		.html(
																																				"<span style='color:red'>error</span>");
																																$(
																																		"#"
																																				+ mainCost)
																																		.css(
																																				{
																																					"color" : "red"
																																				});
																																if (lineTestIsClose) {
																																	$(
																																			"#"
																																					+ wrapspan)
																																			.css(
																																					{
																																						"display" : "inline"
																																					});
																																	$(
																																			"#"
																																					+ mainimg)
																																			.html(
																																					listopen);
																																}
																															}
																															;
																														}
																													}
																												});
																									});
																				});
															});
											$("#lineTestRsDiv")
													.append(
															"<br/><br/><br/><br/><br/><br/>");
											window.scroll(0,
													$("#lineTestButton")
															.offset().top - 30);
										});
					});
</script>
</head>
<body bossanalyoptype="add">
	<div style="float: left; padding-top: 20px;">
		<span>url：</span><input style="width: 400px;" id="reqUrl" type="text"><br>
		<br> <span>方式：</span><select id="reqMethod"><option
				value="GET" selected="selected">GET</option>
			<option value="POST">POST</option></select><br> <br>
		<div id="paramDiv">
			<div>参数：</div>
			<textarea id="reqParam" style="width: 435px; height: 295px;"
				placeholder="编码前的参数"></textarea>
		</div>
	</div>
	<div style="float: left; padding-left: 50px; padding-top: 80px;">
		<button id="clearLeft" value="清空左侧">清空左侧</button>
		<br> <br>
		<button id="clearRight" value="清空右侧">清空右侧</button>
		<br> <br>
		<button id="sub" value="提交">提交</button>
		<br> <br> <input id="isAutoEncode" checked="checked"
			type="checkbox">自动加密<br> <br> <input
			id="isAutoDecode" checked="checked" type="checkbox">自动解码<br>
		<br> <input id="isAutoFormat" checked="checked" type="checkbox">自动格式化<br>
		<br>
	</div>
	<div style="float: left; padding-left: 50px;">
		<span>返回结果：</span><br>
		<div>
			<textarea id="resp" style="width: 500px; height: 400px;"></textarea>
			<br>
			<button id="decode">base64解码</button>
			<button id="encode">base64编码</button>
			<button id="format">JSON格式化</button>
			<button id="removeWhite">JSON反格式化</button>
		</div>
	</div>
	<div style="clear: left;"></div>
	<div style="float: left; clear: left; padding-botton: 20px;">
		【友情链接】<a href="http://10.10.30.63/monitor.html">线上应用测试</a> <br> <br>
		<br> <br>
	</div>
</html>