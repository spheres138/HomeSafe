package dao;

import entity.HomeEntity;
import org.apache.ibatis.annotations.Param;
import java.util.Date;
import java.util.List;
/**
 * Created by Administrator on 2017/11/27 0027.
 */
public interface HomeDao {
        /**
         * 写入数据库
         */
        int insertData(@Param("smoke") int smoke,@Param("human") int human,@Param("temperature") int temperature,@Param("pm25") int pm25,@Param("updateDate") Date updateDate);
        /**
         * 读取所有数据
         * @return
         */
        List<HomeEntity> getList();



}
