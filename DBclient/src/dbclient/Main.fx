/*
 * Main.fx
 *
 * Created on 07.06.2010, 12:45:24
 */

package dbclient;

/**
 * @author Irina
 */
public class Main {

    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:main
    public-read def label: javafx.scene.control.Label = javafx.scene.control.Label {
        styleClass: "labelStyle"
        effect: null
        text: "US States"
    }
    
    def __layoutInfo_abbrevTitleLabel: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        hfill: true
        vpos: javafx.geometry.VPos.BASELINE
    }
    public-read def abbrevTitleLabel: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutInfo: __layoutInfo_abbrevTitleLabel
        styleClass: "labelStyle1"
        text: "Abbreviation:"
    }
    
    def __layoutInfo_abbrevValueLabel: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        hfill: true
        vpos: javafx.geometry.VPos.BASELINE
    }
    public-read def abbrevValueLabel: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutInfo: __layoutInfo_abbrevValueLabel
        styleClass: "labelStyle2"
        text: bind "{States.getRecordSet().currentString("abbrev")}"
    }
    
    def __layoutInfo_nameTitleLabel: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        hfill: true
        vpos: javafx.geometry.VPos.BASELINE
    }
    public-read def nameTitleLabel: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutInfo: __layoutInfo_nameTitleLabel
        styleClass: "labelStyle1"
        text: "Name:"
    }
    
    def __layoutInfo_nameValueLabel: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        hfill: true
        vpos: javafx.geometry.VPos.BASELINE
    }
    public-read def nameValueLabel: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutInfo: __layoutInfo_nameValueLabel
        styleClass: "labelStyle2"
        text: bind "{States.getRecordSet().currentString("name")}"
    }
    
    public-read def formGrid: com.javafx.preview.layout.Grid = com.javafx.preview.layout.Grid {
        hgap: 6.0
        vgap: 6.0
        rows: [
            com.javafx.preview.layout.GridRow {
                cells: [ abbrevTitleLabel, abbrevValueLabel, ]
            }
            com.javafx.preview.layout.GridRow {
                cells: [ nameTitleLabel, nameValueLabel, ]
            }
        ]
    }
    
    def __layoutInfo_indexPreviousButton: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        hfill: true
    }
    public-read def indexPreviousButton: javafx.scene.control.Button = javafx.scene.control.Button {
        disable: bind not States.getRecordSet().hasPrev()
        layoutInfo: __layoutInfo_indexPreviousButton
        styleClass: "buttonStyle"
        text: "Previous"
        action: function ():Void { States.getRecordSet().prev(); }
    }
    
    def __layoutInfo_indexNextButton: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        hfill: true
    }
    public-read def indexNextButton: javafx.scene.control.Button = javafx.scene.control.Button {
        disable: bind not States.getRecordSet().hasNext()
        layoutInfo: __layoutInfo_indexNextButton
        styleClass: "buttonStyle"
        text: "Next"
        action: function ():Void { States.getRecordSet().next(); }
    }
    
    public-read def tile: javafx.scene.layout.Tile = javafx.scene.layout.Tile {
        styleClass: "buttonStyle"
        content: [ indexPreviousButton, indexNextButton, ]
        columns: 2
        hgap: 6.0
        vgap: 6.0
    }
    
    def __layoutInfo_states: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        vpos: null
        vgrow: javafx.scene.layout.Priority.SOMETIMES
    }
    public-read def states: javafx.scene.layout.VBox = javafx.scene.layout.VBox {
        visible: false
        layoutInfo: __layoutInfo_states
        content: [ label, formGrid, tile, ]
        spacing: 20.0
    }
    
    public-read def label2: javafx.scene.control.Label = javafx.scene.control.Label {
        styleClass: "labelStyle"
        text: "Population"
    }
    
    def __layoutInfo_state_NameTitleLabel: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        hfill: true
        vpos: javafx.geometry.VPos.BASELINE
    }
    public-read def state_NameTitleLabel: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutInfo: __layoutInfo_state_NameTitleLabel
        styleClass: "labelStyle1"
        text: "State name:"
    }
    
    def __layoutInfo_state_NameValueLabel: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        hfill: true
        vpos: javafx.geometry.VPos.BASELINE
    }
    public-read def state_NameValueLabel: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutInfo: __layoutInfo_state_NameValueLabel
        styleClass: "labelStyle2"
        text: bind "{Population.getRecordSet().currentString("state_name")}"
    }
    
    def __layoutInfo_populationTitleLabel: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        hfill: true
        vpos: javafx.geometry.VPos.BASELINE
    }
    public-read def populationTitleLabel: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutInfo: __layoutInfo_populationTitleLabel
        styleClass: "labelStyle1"
        text: "Population:"
    }
    
    def __layoutInfo_populationValueLabel: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        hfill: true
        vpos: javafx.geometry.VPos.BASELINE
    }
    public-read def populationValueLabel: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutInfo: __layoutInfo_populationValueLabel
        styleClass: "labelStyle2"
        text: bind "{Population.getRecordSet().currentString("population")}"
    }
    
    public-read def formGrid2: com.javafx.preview.layout.Grid = com.javafx.preview.layout.Grid {
        hgap: 6.0
        vgap: 6.0
        rows: [
            com.javafx.preview.layout.GridRow {
                cells: [ state_NameTitleLabel, state_NameValueLabel, ]
            }
            com.javafx.preview.layout.GridRow {
                cells: [ populationTitleLabel, populationValueLabel, ]
            }
        ]
    }
    
    def __layoutInfo_indexPreviousButton2: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        hfill: true
    }
    public-read def indexPreviousButton2: javafx.scene.control.Button = javafx.scene.control.Button {
        disable: bind not Population.getRecordSet().hasPrev()
        layoutInfo: __layoutInfo_indexPreviousButton2
        styleClass: "buttonStyle"
        text: "Previous"
        action: function ():Void { Population.getRecordSet().prev(); }
    }
    
    def __layoutInfo_indexNextButton2: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        hfill: true
    }
    public-read def indexNextButton2: javafx.scene.control.Button = javafx.scene.control.Button {
        disable: bind not Population.getRecordSet().hasNext()
        layoutInfo: __layoutInfo_indexNextButton2
        styleClass: "buttonStyle"
        text: "Next"
        action: function ():Void { Population.getRecordSet().next(); }
    }
    
    public-read def tile2: javafx.scene.layout.Tile = javafx.scene.layout.Tile {
        styleClass: "buttonStyle"
        content: [ indexPreviousButton2, indexNextButton2, ]
        columns: 2
        hgap: 6.0
        vgap: 6.0
    }
    
    def __layoutInfo_population: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        vgrow: javafx.scene.layout.Priority.SOMETIMES
    }
    public-read def population: javafx.scene.layout.VBox = javafx.scene.layout.VBox {
        visible: false
        layoutInfo: __layoutInfo_population
        content: [ label2, formGrid2, tile2, ]
        spacing: 20.0
    }
    
    public-read def exclusivelyVisibleContainerPanel: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        layoutX: 99.0
        layoutY: 68.0
        content: [ states, population, ]
    }
    
    public-read def button: javafx.scene.control.Button = javafx.scene.control.Button {
        layoutX: 231.0
        layoutY: 63.0
        styleClass: "buttonStyle1"
        text: "Button"
        action: buttonAction
    }
    
    public-read def image: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}flag2wm.jpg"
    }
    
    public-read def imageView: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        opacity: 0.3
        layoutX: 0.0
        layoutY: 0.0
        image: image
        fitWidth: 320.0
        fitHeight: 240.0
    }
    
    public-read def scene: javafx.scene.Scene = javafx.scene.Scene {
        width: 320.0
        height: 240.0
        content: getDesignRootNodes ()
        stylesheets: [  "{__DIR__}controlStyle.css",]
    }
    
    public-read def States: org.netbeans.javafx.datasrc.DbDataSource = org.netbeans.javafx.datasrc.DbDataSource {
        connectionString: "jdbc:mysql://dot.netbeans.org:3306/usstates"
        user: "nbuser"
        password: "nbpassword"
        query: "select abbrev, name from STATES"
    }
    
    public-read def Population: org.netbeans.javafx.datasrc.DbDataSource = org.netbeans.javafx.datasrc.DbDataSource {
        connectionString: "jdbc:mysql://dot.netbeans.org:3306/usstates"
        user: "nbuser"
        password: "nbpassword"
        query: "select state_name, population from POPULATION"
    }
    
    public-read def currentState: org.netbeans.javafx.design.DesignState = org.netbeans.javafx.design.DesignState {
        names: [ "States", "Population", ]
        doNotAnimateOnce: false
        actual: 0
        timelines: [
            javafx.animation.Timeline {
                keyFrames: [
                    javafx.animation.KeyFrame {
                        time: 0ms
                        action: function() {
                            states.visible = true;
                            population.visible = false;
                            button.text = "Population";
                        }
                    }
                ]
            }
            javafx.animation.Timeline {
                keyFrames: [
                    javafx.animation.KeyFrame {
                        time: 0ms
                        action: function() {
                            states.visible = false;
                            population.visible = true;
                            button.text = "US States";
                        }
                    }
                ]
            }
        ]
    }
    
    public function getDesignRootNodes (): javafx.scene.Node[] {
        [ exclusivelyVisibleContainerPanel, button, imageView, ]
    }
    
    public function getDesignScene (): javafx.scene.Scene {
        scene
    }
    // </editor-fold>//GEN-END:main

    function buttonAction(): Void {
        currentState.nextWrapped();
         }

    

}

function run (): Void {
    var design = Main {};

    javafx.stage.Stage {
        title: "Main"
        scene: design.getDesignScene ()
    }
}
