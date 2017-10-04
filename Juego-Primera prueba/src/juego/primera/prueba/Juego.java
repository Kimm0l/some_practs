/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package juego.primera.prueba;

import java.io.IOException;
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;
import juego.primera.prueba.vistas.LoginController;
import juego.primera.prueba.vistas.VentanaJuegosController;

/**
 *
 * @author m0l1n4
 */
public class Juego extends Application {
    
    private Stage stagePrincipal;
    private AnchorPane rootPane;
    
    @Override
    public void start(Stage stagePrincipal) throws Exception {
        this.stagePrincipal = stagePrincipal;
        mostrarVentanaPrincipal();
    }
    /*
     * cargamos la ventana principal
     */
    public void mostrarVentanaPrincipal() {
        try {
            FXMLLoader loader = new FXMLLoader(Juego.class.getResource("vistas/Login.fxml"));
            rootPane=(AnchorPane) loader.load();
            Scene scene = new Scene(rootPane);
            stagePrincipal.setTitle("Bienvenidos al centro de juegos");
            stagePrincipal.setScene(scene);
            //stage.initStyle(StageStyle.TRANSPARENT); posibilidad de hacer repasar para ver que es mejor
            LoginController controller = loader.getController();
            controller.setProgramaPrincipal(this);
            stagePrincipal.show();
        } catch (IOException e) {
        }
    }
    
    public void mostrarVentanaSecundaria() {
        try {
            FXMLLoader loader = new FXMLLoader(Juego.class.getResource("vistas/VentanaJuegos.fxml"));
            AnchorPane ventanaDos = (AnchorPane) loader.load();
            Stage ventana = new Stage();
            ventana.setTitle("Juegos");
            ventana.initOwner(stagePrincipal);
            Scene scene = new Scene(ventanaDos);
            ventana.setScene(scene);
            VentanaJuegosController controller = loader.getController();
            controller.setStagePrincipal(ventana);
            ventana.show();

        } catch (Exception e) {
        }
    }


    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        launch(args);
    }
    
}
