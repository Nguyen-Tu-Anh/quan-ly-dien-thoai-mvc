package dao;

import model.Account;
import model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AccountDao {
    private static Connection connection = ConnectMySql.getConnection();

    public static List<Account> getAllAccount() {

        String sqlGetAllAccount = "SELECT * FROM account";

        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sqlGetAllAccount);

            List<Account> accountList = new ArrayList<>();

            while (resultSet.next()) {
                String name = resultSet.getString("accname");
                String pass = resultSet.getString("accpassword");
                accountList.add(new Account(name, pass));
            }
            return accountList;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void saveAccount(Account account) {
        String saveSQLAccount = "INSERT INTO account (`accname`, `accpassword`) VALUES (?, ?)";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(saveSQLAccount);
            preparedStatement.setString(1, account.getAccname());
            preparedStatement.setString(2, account.getAccpassword());
            preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static Account checkLogin(String username, String password) {
        String loginSQL = "SELECT * FROM account where accname = ? and accpassword = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(loginSQL);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                return new Account(resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getInt(4),
                        resultSet.getInt(5),
                        resultSet.getString(6));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
