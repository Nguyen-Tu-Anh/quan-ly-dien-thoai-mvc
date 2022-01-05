package service;

import dao.AccountDao;
import model.Account;


import java.util.List;

public class AccountService {
    private static List<Account> accountList = AccountDao.getAllAccount();

    public List<Account> findAll() {
        accountList = AccountDao.getAllAccount();
        return accountList;
    }

    public void save(Account account) {
        AccountDao.saveAccount(account);
        accountList = AccountDao.getAllAccount();
    }

    public Account checkLogin(String username, String password) {
        return AccountDao.checkLogin(username, password);
    }
}
