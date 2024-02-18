import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Rollback {
    public static void main(String[] args) {
        String url = "jdbc:postgresql://localhost/template1";
        String user = "madinarustamova";
        String password = "Medine2233!";

        try (Connection con = DriverManager.getConnection(url, user, password);
             Statement st = con.createStatement()) {

            String sql = "ALTER TABLE interests ADD COLUMN interest VARCHAR(30); "
                    + "UPDATE interests SET interest = interests_array[1]; " // Simplified; assumes single-interest arrays
                    + "ALTER TABLE interests DROP COLUMN interests_array;";

            st.executeUpdate(sql);
            System.out.println("Rollback completed successfully.");

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
