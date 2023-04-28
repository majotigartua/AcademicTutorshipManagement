/**
 * Name(s) of the programmer(s): María José Torres Igartua.
 * Date of creation: March 02, 2023.
 * Date of update: April 20, 2023.
 */
package academictutorshipmanagement.model.dao;

import academictutorshipmanagement.model.DatabaseConnection;
import academictutorshipmanagement.model.pojo.AcademicPersonnel;
import academictutorshipmanagement.model.pojo.ContractType;
import academictutorshipmanagement.model.pojo.User;
import academictutorshipmanagement.utilities.Constants;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class AcademicPersonnelDAO {

    public static ArrayList<AcademicPersonnel> getAcademicPersonnel() {
        ArrayList<AcademicPersonnel> academicPersonnels = new ArrayList<>();
        DatabaseConnection databaseConnection = new DatabaseConnection();
        String query = "SELECT *\n"
                + "FROM academicPersonnel\n"
                + "ORDER By name ASC";
        try (Connection connection = databaseConnection.open()) {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                AcademicPersonnel academicPersonnel = new AcademicPersonnel();
                academicPersonnel.setIdAcademicPersonnel(resultSet.getInt("idAcademicPersonnel"));
                academicPersonnel.setName(resultSet.getString("name"));
                academicPersonnel.setPaternalSurname(resultSet.getString("paternalSurname"));
                academicPersonnel.setMaternalSurname(resultSet.getString("maternalSurname"));
                academicPersonnel.setEmailAddress(resultSet.getString("emailAddress"));
                academicPersonnels.add(academicPersonnel);
            }
        } catch (SQLException exception) {
            academicPersonnels = null;
        } finally {
            databaseConnection.close();
        }
        return academicPersonnels;
    }

    public static ArrayList<AcademicPersonnel> getAcademicPersonnelByEducationalExperience(int idEducationalExperience, int idSchoolPeriod) {
        ArrayList<AcademicPersonnel> academicPersonnels = new ArrayList<>();
        DatabaseConnection databaseConnection = new DatabaseConnection();
        String query = "SELECT DISTINCT academicPersonnel.*\n"
                + "FROM academicPersonnel\n"
                + "INNER JOIN academicOffering\n"
                + "ON academicPersonnel.idAcademicPersonnel = academicOffering.idAcademicPersonnel\n"
                + "WHERE academicOffering.idSchoolPeriod = ? AND academicOffering.idEducationalExperience = ?";
        try (Connection connection = databaseConnection.open()) {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, idSchoolPeriod);
            preparedStatement.setInt(2, idEducationalExperience);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                AcademicPersonnel academicPersonnel = new AcademicPersonnel();
                academicPersonnel.setIdAcademicPersonnel(resultSet.getInt("idAcademicPersonnel"));
                academicPersonnel.setName(resultSet.getString("name"));
                academicPersonnel.setPaternalSurname(resultSet.getString("paternalSurname"));
                academicPersonnel.setMaternalSurname(resultSet.getString("maternalSurname"));
                academicPersonnel.setEmailAddress(resultSet.getString("emailAddress"));
                academicPersonnels.add(academicPersonnel);
            }
        } catch (SQLException exception) {
            academicPersonnels = null;
        } finally {
            databaseConnection.close();
        }
        return academicPersonnels;
    }

    public static ArrayList<AcademicPersonnel> getAcademicPersonnelByRole(int idEducationalProgram, int idRole) {
        ArrayList<AcademicPersonnel> academicPersonnels = new ArrayList<>();
        DatabaseConnection databaseConnection = new DatabaseConnection();
        String query = "SELECT academicPersonnel.*\n"
                + "FROM educationalProgramRole\n"
                + "INNER JOIN academicPersonnel\n"
                + "ON educationalProgramRole.username = academicPersonnel.username\n"
                + "WHERE idEducationalProgram = ? AND idRole = ?\n"
                + "ORDER BY academicPersonnel.name ASC";
        try (Connection connection = databaseConnection.open()) {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, idEducationalProgram);
            preparedStatement.setInt(2, idRole);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                AcademicPersonnel academicPersonnel = new AcademicPersonnel();
                ContractType contractType = new ContractType();
                User user = new User();
                academicPersonnel.setIdAcademicPersonnel(resultSet.getInt("idAcademicPersonnel"));
                academicPersonnel.setName(resultSet.getString("name"));
                academicPersonnel.setPaternalSurname(resultSet.getString("paternalSurname"));
                academicPersonnel.setMaternalSurname(resultSet.getString("maternalSurname"));
                academicPersonnel.setEmailAddress(resultSet.getString("emailAddress"));
                contractType.setIdContractType(resultSet.getInt("idContractType"));
                academicPersonnel.setContractType(contractType);
                user.setUsername(resultSet.getString("username"));
                academicPersonnel.setUser(user);
                academicPersonnels.add(academicPersonnel);
            }
        } catch (SQLException exception) {
            academicPersonnels = null;
        } finally {
            databaseConnection.close();
        }
        return academicPersonnels;
    }

    
    
        public static ArrayList<AcademicPersonnel> getAllAcademicPersonnel() throws SQLException {
        ArrayList<AcademicPersonnel> academicPersonnels = new ArrayList<>();
        DatabaseConnection databaseConnection = new DatabaseConnection();
        String query = "SELECT academicpersonnel.idAcademicPersonnel, academicpersonnel.name, "
                + "academicpersonnel.paternalSurname, academicpersonnel.maternalSurname, "
                + "academicpersonnel.emailAddress FROM academictutorshipmanagement.academicpersonnel";
        try (Connection connection = databaseConnection.open()) {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                AcademicPersonnel academicPersonnel = new AcademicPersonnel();
                academicPersonnel.setIdAcademicPersonnel(resultSet.getInt("idAcademicPersonnel"));
                academicPersonnel.setName(resultSet.getString("name"));
                academicPersonnel.setPaternalSurname(resultSet.getString("paternalSurname"));
                academicPersonnel.setMaternalSurname(resultSet.getString("maternalSurname"));
                academicPersonnels.add(academicPersonnel);
            }
        }finally {
            databaseConnection.close();
        }
        return academicPersonnels;
    }
                
                
                
                


    public static AcademicPersonnel getAcademicPersonnelByUser(String username) {
        AcademicPersonnel academicPersonnel = new AcademicPersonnel();
        DatabaseConnection databaseConnection = new DatabaseConnection();
        String query = "SELECT *\n"
                + "FROM academicPersonnel\n"
                + "WHERE username = ?";
        try (Connection connection = databaseConnection.open()) {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, username);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                academicPersonnel.setIdAcademicPersonnel(resultSet.getInt("idAcademicPersonnel"));
                academicPersonnel.setName(resultSet.getString("name"));
                academicPersonnel.setPaternalSurname(resultSet.getString("paternalSurname"));
                academicPersonnel.setMaternalSurname(resultSet.getString("maternalSurname"));
                academicPersonnel.setEmailAddress(resultSet.getString("emailAddress"));
                academicPersonnel.setResponseCode(Constants.CORRECT_OPERATION_CODE);
            }
        } catch (SQLException exception) {
            academicPersonnel.setResponseCode(Constants.NO_DATABASE_CONNECTION_CODE);
        } finally {
            databaseConnection.close();
        }
        return academicPersonnel;
    }
    
    
    

}
