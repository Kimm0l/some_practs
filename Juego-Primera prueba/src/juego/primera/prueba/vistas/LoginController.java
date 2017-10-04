/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package juego.primera.prueba.vistas;

import java.net.URL;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import juego.primera.prueba.*;

/**
 *
 * @author m0l1n4
 */
public class LoginController implements Initializable {
    
    public Juego ProgramaPrincipal;
    
    @FXML
    public Button button;

    public void setProgramaPrincipal(Juego ProgramaPrincipal) {
        this.ProgramaPrincipal = ProgramaPrincipal;
    }
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
        button.setOnAction((ActionEvent event) -> {
           ProgramaPrincipal.mostrarVentanaSecundaria();
        });
    }    
    
}
