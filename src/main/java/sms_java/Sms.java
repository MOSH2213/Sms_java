package sms_java;

import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;

public class Sms {
	
		private String mobile;
		private String msg;
	
		public Sms() {
			
		}
		public Sms(String mobile, String msg) {
			this.mobile=mobile;
			this.msg=msg;
		}

		public static Void Send(String mobile,String message) throws IOException {
		
			URL url = new URL("https://sms.send.lk/api/v3/sms/send");
			HttpURLConnection http = (HttpURLConnection)url.openConnection();
			http.setRequestMethod("POST");
			http.setDoOutput(true);
			http.setRequestProperty("Authorization", "Bearer API_KEY_HERE");
			http.setRequestProperty("Content-Type", "application/json");
	
			String data = "{\"recipient\": \""+mobile+"\" , \"sender_id\" : \"SendTest\" , \"message\":\""+message+"\"}";
//			System.out.print(data);
			
			byte[] out = data.getBytes(StandardCharsets.UTF_8);
	
			OutputStream stream = http.getOutputStream();
			stream.write(out);
	
			System.out.println(http.getResponseCode() + " " + http.getResponseMessage());
			http.disconnect();
			
			return null;
			
		}
//		public static void main(String args[]) throws IOException {
//			Send("0785879771", "hello");
//		}
		
}
