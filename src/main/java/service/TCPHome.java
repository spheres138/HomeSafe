package service;

import dao.HomeDao;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.Socket;
import java.util.Date;

public class TCPHome {
    /**
     * 需求：建立一个文本转换服务器
     * 客户端给服务端发送文本，服务端会将文本转成大写再返回给客户端
     * 而且客户端可以不断的进行文本转换，当客户输入over时，转换结束
     * 分析：
     * 客户端：
     * 既然是操作设备上的数据，那么就可以使用io技术，并按照io的操作规律来思考
     * 源：键盘录入。
     * 目的：网络设备，网络输出流
     * 而且操作的是文本数据，可以选择字符流
     *
     * 步骤
     * 1.建立服务
     * 2.获取键盘录入
     * 3.将数据发给服务端
     * 4.后去服务端返回的大写数据
     * 5.结束，关资源
     *
     * 都是文本数据，可以使用字符流进行操作，为了提高效率，加入缓冲。
     */
    static class TcpClient {
        public static void clientConnet(String IP,int port) throws Exception{
            System.out.println("请求连接");
            //创建客户端的socket服务，指定目的主机和端口
            Socket socket = new Socket(IP,port);
            BufferedReader bufIn=
                    new BufferedReader(new InputStreamReader(socket.getInputStream()));
            String line=null;
            String str="";
            while((line=bufIn.readLine())!=null){
                    str+=line;
                    if(str.length()>30){
                        System.out.println("正确数据："+str);
                        int smoke;
                        int human;
                        int temperature;
                        int pm25;
                        smoke=Integer.parseInt(str.substring(str.indexOf("A")+2,str.indexOf("A")+3));
                        human=Integer.parseInt(str.substring(str.indexOf("A")+3,str.indexOf("A")+4));
                        temperature=Integer.parseInt(str.substring(str.indexOf("B")+2,str.indexOf(" ")));
                        int flag=str.indexOf("A",str.indexOf(" ")+1)>str.indexOf("B",str.indexOf(" ")+1)?str.indexOf("B",str.indexOf(" ")+1):str.indexOf("A",str.indexOf(" ")+1);
                        pm25=Integer.parseInt(str.substring(str.indexOf(" ")+1,flag));
                        System.out.println(smoke+" "+human+" "+temperature+" "+pm25);
                        Date date = new Date();
                        homeDao.insertData(smoke,human,temperature,pm25,date);
                        str="";
                    }
            }
            socket.close();
        }
    }
    static HomeDao homeDao ;
       public static void main(String[] args) throws Exception {
           ApplicationContext context =  new ClassPathXmlApplicationContext("classpath:spring/spring-*.xml");
           homeDao = (HomeDao)context.getBean("homeDao");
           TcpClient.clientConnet("192.168.4.1",5000);
    }
}
