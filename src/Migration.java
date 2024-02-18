import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Migration {
    public static void main(String[] args) {
        String url = "jdbc:postgresql://localhost/template1";
        String user = "madinarustamova";
        String password = "Medine2233!";

        try (Connection con = DriverManager.getConnection(url, user, password);
             Statement st = con.createStatement()) {

            String sql = "ALTER TABLE interests ADD COLUMN interests_array VARCHAR(255)[]; "
                    + "UPDATE interests SET interests_array = ARRAY[interest]; "
                    + "ALTER TABLE interests DROP COLUMN interest;";

            st.executeUpdate(sql);
            System.out.println("Migration completed successfully.");

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
