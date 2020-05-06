package jsp_hw.jdbc1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import jsp_hw.DB;

public class BookDAO {
    public static List<Book> findAll() throws Exception {
        String sql = "SELECT b.*, c.categoryName " +
                     "FROM Book b LEFT JOIN category c ON b.categoryId = c.id";
        try (Connection connection = DB.getConnection("book");
             PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
            ArrayList<Book> list = new ArrayList<Book>();
            while (resultSet.next()) {
                Book book = new Book();
                book.setId(resultSet.getInt("id"));
                book.setTitle(resultSet.getString("title"));
                book.setAuthor(resultSet.getString("author"));
                book.setCategoryName(resultSet.getString("categoryName"));
                book.setPrice(resultSet.getInt("price"));
                book.setPublisher(resultSet.getString("publisher"));
                list.add(book);
            }
            return list;
        }
    }
}
