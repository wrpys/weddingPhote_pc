package ssmdemo.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.URL;
import java.util.Properties;

public class Util {
	
	public static Properties getProperties(String filePath) throws IOException{
		URL url = getUrl();
		InputStream inStream = new FileInputStream(url.getPath()+File.separator+filePath);
		Properties properties = new Properties();
		properties.load(inStream);
        inStream.close();
        return properties;
    }
	
	public static URL getUrl() {
		URL url = Util.class.getClassLoader().getResource("/");
		if(url == null){
			url = Util.class.getClassLoader().getResource("");
		}
        return url;
    }
	
	/**
	 * 将对象信息存入文件
	 * @param filePath
	 * @param obj
	 * @throws IOException 
	 * @throws FileNotFoundException 
	 */
	public static void writeObjectToFile(String filePath, Object obj) throws FileNotFoundException, IOException{
		 //序列化对象
		URL url = getUrl();
		File file = new File(url.getPath()+File.separator+filePath);
		if (!file.exists()) {
			file.createNewFile();
		}
		FileOutputStream fos = new FileOutputStream(url.getPath()+File.separator+filePath);
        ObjectOutputStream out = new ObjectOutputStream(fos);
        out.writeObject(obj);
        out.close();
	}
	
	/**
	 * 从文件中获取对象
	 * @param filePath
	 * @return
	 * @throws IOException 
	 * @throws ClassNotFoundException 
	 */
	public static Object readObjectFromFile(String filePath) throws IOException, ClassNotFoundException {
		//反序列化对象
		URL url = getUrl();
		File file = new File(url.getPath()+File.separator+filePath);
		if (!file.exists()) {
			file.createNewFile();
		}
		FileInputStream fis = new FileInputStream(url.getPath()+File.separator+filePath);
		ObjectInputStream in = new ObjectInputStream(fis);
		Object obj = in.readObject();
        in.close();
		return obj;
	}
	
}
