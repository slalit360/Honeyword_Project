package pack1;

import java.net.InetAddress;
import java.net.UnknownHostException;

import javax.servlet.http.HttpServletRequest;
 
public class MyIpAddress {
	public static String getIp(HttpServletRequest request)
	{
		/*String ipAddress  = request.getHeader("X-FORWARDED-FOR");
    	if(ipAddress == null)
    	{
    	  ipAddress = request.getRemoteAddr();
    	}
    	System.out.println("ipAddress:"+ipAddress);
    	return ipAddress;
		*/
		//-----------------------------------------------------------------
		
		String ip = request.getHeader("X-Forwarded-For");
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("HTTP_CLIENT_IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("HTTP_X_FORWARDED_FOR");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }
        return ip;
		
	}
	public static String getIp()
	{
		String ipad=null;
		try {
			InetAddress  ipAddr = InetAddress.getLocalHost();
            
            System.out.println(ipAddr.getHostAddress());
            ipad=ipAddr.getHostAddress();
        } catch (UnknownHostException ex) {
            ex.printStackTrace();
        }
		
        return ipad;
		
	}
 
    public static void main(String a[]){
     
       /* try {
            InetAddress ipAddr = InetAddress.getLocalHost();
            System.out.println(ipAddr.getHostAddress());
        } catch (UnknownHostException ex) {
            ex.printStackTrace();
        }*/
    	
    }
}
