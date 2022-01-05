package model;

public class Account {
    private int accid;
    private String accname;
    private String accpassword;
    private int isuser;
    private int isadmin;
    private String accimg;

    public Account() {
    }

    public Account(String accname, String accpassword) {
        this.accname = accname;
        this.accpassword = accpassword;
    }

    public Account(int accid, String accname, String accpassword, int isuser, int isadmin, String accimg) {
        this.accid = accid;
        this.accname = accname;
        this.accpassword = accpassword;
        this.isuser = isuser;
        this.isadmin = isadmin;
        this.accimg = accimg;
    }

    public int getAccid() {
        return accid;
    }

    public void setAccid(int accid) {
        this.accid = accid;
    }

    public String getAccname() {
        return accname;
    }

    public void setAccname(String accname) {
        this.accname = accname;
    }

    public String getAccpassword() {
        return accpassword;
    }

    public void setAccpassword(String accpassword) {
        this.accpassword = accpassword;
    }

    public int getIsuser() {
        return isuser;
    }

    public void setIsuser(int isuser) {
        this.isuser = isuser;
    }

    public int getIsadmin() {
        return isadmin;
    }

    public void setIsadmin(int isadmin) {
        this.isadmin = isadmin;
    }

    public String getAccimg() {
        return accimg;
    }

    public void setAccimg(String accimg) {
        this.accimg = accimg;
    }

}
