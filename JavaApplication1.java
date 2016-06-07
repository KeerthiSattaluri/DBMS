package javaapplication1;

public class HOGWARTS {
 public class EMPLOYEE_DETAILS1 {
   public EMPLOYEE_DETAILS1() {
      try {
         Class.forName(JDBC_DRIVER);
         rowSet = new JdbcRowSetImpl();
         rowSet.setUrl(DB_URL);
         rowSet.setUsername(DB_USER);
         rowSet.setPassword(DB_PASS);
         rowSet.setCommand("SELECT * FROM EMPLOYEE_DETAILS1");
         rowSet.execute();

      catch (SQLException | ClassNotFoundException ex) {
         ex.printStackTrace();
      }
   }
   }
   public EMPLOYEE update(EMPLOYEE p) {
      try {
         rowSet.updateString("Emp_id", p.getemp_id());
         rowSet.updateString("Emp_name", p.getemp_name());
         rowSet.updateString("Street", p.getStreet());
         rowSet.updateString("City", p.getCity());
         rowSet.update("Salary", p.getsalary());
         rowSet.updateRow();
         rowSet.moveToCurrentRow();
      } catch (SQLException ex) {
         try {
            rowSet.rollback();
         } catch (SQLException e) {

         }
         ex.printStackTrace();
      }
      return p;
   }

     public EMPLOYEE moveFirst() {
      EMPLOYEE p = new EMPLOYEE();
      try {
         rowSet.first();
         p.setemp_id(rowSet.getInt("Emp_Id"));
         p.setemp_name(rowSet.getString("Emp_name"));
         p.setStreet(rowSet.getString("Street"));
         p.setCity(rowSet.getString("City"));
         p.setsalary(rowSet.getString("salary"));

      } catch (SQLException ex) {
         ex.printStackTrace();
      }
      return p;
   }

   public EMPLOYEE moveLast() {
      EMPLOYEE p = new EMPLOYEE();
      try {
         rowSet.last();
         p.setEMPLOYEEId(rowSet.getInt("Emp_Id"));
         p.setemp_name(rowSet.getString("Emp_name"));
         p.setStreet(rowSet.getString("Street"));
         p.setCity(rowSet.getString("City"));
         p.setsalary(rowSet.getString("salary"));
         p.setPhone(rowSet.getString("phone"));

      } catch (SQLException ex) {
         ex.printStackTrace();
      }
      return p;
   }

   public EMPLOYEE moveNext() {
      EMPLOYEE p = new EMPLOYEE();
      try {
         if (rowSet.next() == false)
            rowSet.previous();
         p.setEMPLOYEEId(rowSet.getInt("Emp_Id"));
         p.setemp_name(rowSet.getString("Emp_name"));
         p.setStreet(rowSet.getString("Street"));
         p.setCity(rowSet.getString("City"));
         p.setsalary(rowSet.getString("salary"));

      } catch (SQLException ex) {
         ex.printStackTrace();
      }
      return p;
   }

   public EMPLOYEE movePrevious() {
      EMPLOYEE p = new EMPLOYEE();
      try {
         if (rowSet.previous() == false)
            rowSet.next();
         p.setEMPLOYEEId(rowSet.getInt("Emp_Id"));
         p.setemp_name(rowSet.getString("Emp_name"));
         p.setStreet(rowSet.getString("Street"));
         p.setCity(rowSet.getString("City"));
         p.setsalary(rowSet.getString("salary"));

      } catch (SQLException ex) {
         ex.printStackTrace();
      }
      return p;
   }

   public EMPLOYEE getCurrent() {
      EMPLOYEE p = new EMPLOYEE();
      try {
         rowSet.moveToCurrentRow();
         p.setEMPLOYEEId(rowSet.getInt("Emp_Id"));
         p.setemp_name(rowSet.getString("Emp_name"));
         p.setStreet(rowSet.getString("Street"));
         p.setCity(rowSet.getString("City"));
         p.setsalary(rowSet.getString("salary"));
      } catch (SQLException ex) {
         ex.printStackTrace();
      }
      return p;
   }
 }

      

   public static void main(String[] args) {
     Class.forName("org.postgresql.Driver");
    	    Connection connection=null;
    	    connection=DriverManager.getConnection("jdbc:postgresql/localhost: 5432/postgres",
	    "postgres",
	    "kithu");
    	    connection.close();
   }
}

