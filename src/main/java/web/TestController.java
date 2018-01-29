package web;
import dao.HomeDao;
import entity.HomeEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/mgr")
public class TestController {

    @Autowired
    HomeDao homeDao;
    /**
     * 页面自动获取数据
     * @return
     */
    @ResponseBody
    @RequestMapping("/one.do")
    public Object One() {
        System.out.println("test=====");
        List<HomeEntity> getData = homeDao.getList();
        System.out.println("====="+getData.size());
        return getData;
    }


}
