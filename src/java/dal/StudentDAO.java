/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Student;

/**
 *
 * @author admin
 */
public class StudentDAO extends DBContext {
    
     // Add
    public void addStudent(String name, String gender, int age, int addressId) {
        try {
            String sql = "Insert into Student (name , gender ,age ,address  ) values(?,?,?,?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, gender);
            ps.setInt(3, age);
            ps.setInt(4, addressId);
            ps.execute();
            ps.close();
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
        // read

    public ArrayList<Student> getAll() {
        try {
            String sql = "SELECT s.sid , s.name , s.gender, s.age, a.address\n"
                    + "from Student s\n"
                    + "left JOIN Address a\n"
                    + "ON s.address =  a.sid";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            ArrayList<Student> list = new ArrayList<>();
            while (rs.next()) {
                Student student = new Student();
                student.setSid(rs.getInt("sid"));
                student.setName(rs.getString("name"));
                student.setGender(rs.getString("gender"));
                student.setAge(rs.getInt("age"));
                student.setAddress(rs.getString("address"));
                list.add(student);
            }
            rs.close();
            ps.close();
            return list;

        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
}
    
    
        //delete
    public void deleteStudent(int sid) {
        try {
            String sql = "DELETE FROM Student Where sid = ? ";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, sid);
            ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
      // Get Person
    public Student get(int sid) {
        try {
            String sql = "SELECT * FROM Student where sid = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, sid);
            ResultSet rs = ps.executeQuery();
            rs.next();
            Student student = new Student();
            student.setSid(rs.getInt("sid"));
            student.setName(rs.getString("name"));
            student.setGender(rs.getString("gender"));
            student.setAge(rs.getInt("age"));
            student.setAddress(rs.getString("address"));
            return student;

        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

    }
    
     //update student
    public void updateStudent(int sid, String name, String gender, int age, int addressId) {
        try {
            String sql = "UPDATE Student SET name = ?, gender = ? , age = ? , address= ? WHERE sid = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, gender);
            ps.setInt(3, age);
            ps.setInt(4, addressId);
            ps.setInt(5, sid);
            ps.execute();
            ps.close();
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

}
    
}
