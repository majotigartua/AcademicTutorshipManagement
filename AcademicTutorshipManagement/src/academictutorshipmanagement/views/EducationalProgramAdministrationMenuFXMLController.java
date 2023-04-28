/**
 * Name(s) of the programmer(s): María José Torres Igartua.
 * Date of creation: March 02, 2023.
 * Date of update: April 19, 2023.
 */
package academictutorshipmanagement.views;

import academictutorshipmanagement.model.pojo.AcademicPersonnel;
import academictutorshipmanagement.model.pojo.SchoolPeriod;
import academictutorshipmanagement.model.pojo.User;
import academictutorshipmanagement.utilities.Constants;
import academictutorshipmanagement.utilities.Utilities;
import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.stage.Stage;

public class EducationalProgramAdministrationMenuFXMLController implements Initializable {

    @FXML
    private Button backButton;

    private SchoolPeriod schoolPeriod;
    private AcademicPersonnel academicPersonnel;

    private int idRole;

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
    }

    public void configureView(SchoolPeriod schoolPeriod, AcademicPersonnel academicPersonnel) {
        this.schoolPeriod = schoolPeriod;
        this.academicPersonnel = academicPersonnel;
        idRole = academicPersonnel.getUser().getRole().getIdRole();
    }

    @FXML
    private void queryAcademicOfferingButtonClick(ActionEvent actionEvent) {
        if (idRole == Constants.ACADEMIC_TUTOR_ID_ROLE) {
            FXMLLoader loader = new FXMLLoader(getClass().getResource("QueryAcademicOfferingFXML.fxml"));
            try {
                Parent root = loader.load();
                Scene logAcademicOfferingView = new Scene(root);
                Stage stage = (Stage) backButton.getScene().getWindow();
                stage.setScene(logAcademicOfferingView);
                stage.setTitle("Consulta Oferta Academica");
                stage.show();
            } catch (IOException exception) {
                System.err.println("The 'LogEducationalExperienceFXML.fxml' file could not be open. Please try again later.");
            }
        } else {
            Utilities.showAlert("No tiene los permisos necesarios para realizar esta acción.\n\n"
                    + "Por favor, vuelva a iniciar sesión e inténtelo nuevamente.\n",
                    Alert.AlertType.INFORMATION);
        }
    }

    @FXML
    private void logEducationalExperienceButtonClick(ActionEvent actionEvent) {
        if (idRole == Constants.ADMINISTRATOR_ID_ROLE) {
            goToLogEducationalExperience();
        } else {
            Utilities.showAlert("No tiene los permisos necesarios para realizar esta acción.\n\n"
                    + "Por favor, vuelva a iniciar sesión e inténtelo nuevamente.\n",
                    Alert.AlertType.INFORMATION);
        }
    }

    private void goToLogEducationalExperience() {
        FXMLLoader loader = new FXMLLoader(getClass().getResource("LogEducationalExperienceFXML.fxml"));
        try {
            Parent root = loader.load();
            LogEducationalExperienceFXMLController logEducationalExperienceFXMLController = loader.getController();
            logEducationalExperienceFXMLController.configureView(schoolPeriod, academicPersonnel);
            Scene logEducationalExperienceView = new Scene(root);
            Stage stage = (Stage) backButton.getScene().getWindow();
            stage.setScene(logEducationalExperienceView);
            stage.setTitle("Registrar experiencia educativa.");
            stage.show();
        } catch (IOException exception) {
            System.err.println("The 'LogEducationalExperienceFXML.fxml' file could not be open. Please try again later.");
        }
    }

    @FXML
    private void queryEducationalExperienceButtonClick(ActionEvent actionEvent) {
        if (idRole == Constants.ACADEMIC_TUTORSHIP_COORDINATOR_ID_ROLE || idRole == Constants.CAREER_HEAD_ID_ROLE) {
            if (schoolPeriod != null) {
                goToQueryEducationalExperience();
            } else {
                Utilities.showAlert("El periodo escolar ha finalizado.\n\n"
                        + "Por favor, inténtelo más tarde.\n",
                        Alert.AlertType.WARNING);
            }
        } else {
            Utilities.showAlert("No tiene los permisos necesarios para realizar esta acción.\n\n"
                    + "Por favor, vuelva a iniciar sesión e inténtelo nuevamente.\n",
                    Alert.AlertType.INFORMATION);
        }
    }

    private void goToQueryEducationalExperience() {
        FXMLLoader loader = new FXMLLoader(getClass().getResource("QueryEducationalExperienceFXML.fxml"));
        try {
            Parent root = loader.load();
            QueryEducationalExperienceFXMLController queryEducationalExperienceFXMLController = loader.getController();
            queryEducationalExperienceFXMLController.configureView(schoolPeriod, academicPersonnel);
            Scene queryEducationalExperienceView = new Scene(root);
            Stage stage = (Stage) backButton.getScene().getWindow();
            stage.setScene(queryEducationalExperienceView);
            stage.setTitle("Consultar experiencia educativa.");
            stage.show();
        } catch (IOException exception) {
            System.err.println("The 'QueryEducationalExperienceFXML.fxml' file could not be open. Please try again later.");
        }
    }

    @FXML
    private void modifyEducationalExperienceButtonClick(ActionEvent actionEvent) {
        if (idRole == Constants.ADMINISTRATOR_ID_ROLE) {
            if (schoolPeriod != null) {
                goToModifyEducationalExperience();
            } else {
                Utilities.showAlert("El periodo escolar ha finalizado.\n\n"
                        + "Por favor, inténtelo más tarde.\n",
                        Alert.AlertType.WARNING);
            }
        } else {
            Utilities.showAlert("No tiene los permisos necesarios para realizar esta acción.\n\n"
                    + "Por favor, vuelva a iniciar sesión e inténtelo nuevamente.\n",
                    Alert.AlertType.INFORMATION);
        }
    }

    private void goToModifyEducationalExperience() {
        FXMLLoader loader = new FXMLLoader(getClass().getResource("ModifyEducationalExperienceFXML.fxml"));
        try {
            Parent root = loader.load();
            ModifyEducationalExperienceFXMLController modifyEducationalExperienceFXMLController = loader.getController();
            modifyEducationalExperienceFXMLController.configureView(schoolPeriod, academicPersonnel);
            Scene modifyEducationalExperienceView = new Scene(root);
            Stage stage = (Stage) backButton.getScene().getWindow();
            stage.setScene(modifyEducationalExperienceView);
            stage.setTitle("Editar experiencia educativa.");
            stage.show();
        } catch (IOException exception) {
            System.err.println("The 'ModifyEducationalExperienceFXML.fxml' file could not be open. Please try again later.");
        }
    }

    @FXML
    private void logAcademicPersonnelButtonClick(ActionEvent actionEvent) {
        if (idRole == Constants.ADMINISTRATOR_ID_ROLE) {
        } else {
            Utilities.showAlert("No tiene los permisos necesarios para realizar esta acción.\n\n"
                    + "Por favor, vuelva a iniciar sesión e inténtelo nuevamente.\n",
                    Alert.AlertType.INFORMATION);
        }
    }

    @FXML
    private void queryAcademicPersonnelButtonClick(ActionEvent actionEvent) {
        if (idRole == Constants.ACADEMIC_TUTORSHIP_COORDINATOR_ID_ROLE || idRole == Constants.CAREER_HEAD_ID_ROLE) {
        } else {
            Utilities.showAlert("No tiene los permisos necesarios para realizar esta acción.\n\n"
                    + "Por favor, vuelva a iniciar sesión e inténtelo nuevamente.\n",
                    Alert.AlertType.INFORMATION);
        }
    }

    @FXML
    private void modifyAcademicPersonnelButtonClick(ActionEvent actionEvent) {
        if (idRole == Constants.ADMINISTRATOR_ID_ROLE) {
        } else {
            Utilities.showAlert("No tiene los permisos necesarios para realizar esta acción.\n\n"
                    + "Por favor, vuelva a iniciar sesión e inténtelo nuevamente.\n",
                    Alert.AlertType.INFORMATION);
        }
    }

    @FXML
    private void assignEducationalExperienceToAcademicPersonnelButtonClick(ActionEvent actionEvent) {
            FXMLLoader loader = new FXMLLoader(getClass().getResource("RegisterAcademicOfferingFXML.fxml"));
            try {
                Parent root = loader.load();
                Scene registerAcademicOfferingView = new Scene(root);
                Stage stage = (Stage) backButton.getScene().getWindow();
                stage.setScene(registerAcademicOfferingView);
                stage.setTitle("Registrar Oferta Academica");
                stage.show();
            } catch (IOException exception) {
                System.err.println("The 'LogEducationalExperienceFXML.fxml' file could not be open. Please try again later.");
            }
    }

    @FXML
    private void backButtonClick(ActionEvent actionEvent) {
        FXMLLoader loader = new FXMLLoader(getClass().getResource("MainMenuFXML.fxml"));
        try {
            Parent root = loader.load();
            MainMenuFXMLController mainMenuFXMLController = loader.getController();
            User user = academicPersonnel.getUser();
            mainMenuFXMLController.configureView(user);
            Scene mainMenuView = new Scene(root);
            Stage stage = (Stage) backButton.getScene().getWindow();
            stage.setScene(mainMenuView);
            stage.setTitle("Menú principal.");
            stage.show();
        } catch (IOException exception) {
            System.err.println("The 'MainMenuFXML.fxml' file could not be open. Please try again later.");
        }
    }

}