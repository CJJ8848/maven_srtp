package domain;

public class score_human {

    public score_human(Integer bag, Integer gra ,Integer ext, Integer kne, Integer ran, Integer xgb) {
        this.bag = bag;
        this.gra = gra;
        this.ext = ext;
        this.kne = kne;
        this.ran = ran;
        this.xgb = xgb;
        }
        private Integer bag;
        private Integer gra;
        private Integer ext;
        private Integer kne;
        private Integer ran;
        private Integer xgb;

    public Integer getBag() {
        return bag;
    }

    public void setBag(Integer bag) {
        this.bag = bag;
    }

    public Integer getGra() {
        return gra;
    }

    public void setGra(Integer gra) {
        this.gra = gra;
    }

    public Integer getExt() {
        return ext;
    }

    public void setExt(Integer ext) {
        this.ext = ext;
    }

    public Integer getKne() {
        return kne;
    }

    public void setKne(Integer kne) {
        this.kne = kne;
    }

    public Integer getRan() {
        return ran;
    }

    public void setRan(Integer ran) {
        this.ran = ran;
    }

    public Integer getXgb() {
        return xgb;
    }

    public void setXgb(Integer xgb) {
        this.xgb = xgb;
    }
}
