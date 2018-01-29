package entity;

import java.util.Date;

/**
 * Created by Administrator on 2017/11/26 0026.
 */
public class HomeEntity {
    private int smoke;// 烟
    private int human;//人
    private int temperature;//温度
    private int pm25;// PM2.5
    private Date updateDate;// date

    public int getSmoke() {
        return smoke;
    }

    public void setSmoke(int smoke) {
        this.smoke = smoke;
    }

    public int getHuman() {
        return human;
    }

    public void setHuman(int human) {
        this.human = human;
    }

    public int getTemperature() {
        return temperature;
    }

    public void setTemperature(int temperature) {
        this.temperature = temperature;
    }

    public int getPm25() {
        return pm25;
    }

    public void setPm25(int pm25) {
        this.pm25 = pm25;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }


    public HomeEntity() {
    }

    public HomeEntity(int smoke, int human, int temperature, int pm25, Date updateDate) {
        this.smoke = smoke;
        this.human = human;
        this.temperature = temperature;
        this.pm25 = pm25;
        this.updateDate=updateDate;
    }

    @Override
    public String toString() {
        return "smoke="+  "[" + smoke +  "]"+"human="+  "[" + human +  "]"+"temperature="+  "[" + temperature +  "]"+"pm25="+  "[" + pm25 +  "]"+"updateDate="+  "[" + updateDate +  "]";
    }
}
