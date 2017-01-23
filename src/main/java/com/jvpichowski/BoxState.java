package com.jvpichowski;

import com.jme3.app.Application;
import com.jme3.app.SimpleApplication;
import com.jme3.app.state.BaseAppState;
import com.jme3.material.Material;
import com.jme3.math.ColorRGBA;
import com.jme3.scene.Geometry;
import com.jme3.scene.shape.Box;

/**
 * Created by Jan on 21.01.2017.
 */
public class BoxState extends BaseAppState {

    private Geometry geom;
    private Material mat;
    private ColorRGBA colorRGBA = ColorRGBA.Blue;

    @Override
    protected void initialize(Application application) {

//        Box b = new Box(1, 1, 1); // create cube shape
//        geom = new Geometry("Box", b);  // create cube geometry from the shape
//        mat = new Material(application.getAssetManager(),
//                "Common/MatDefs/Misc/Unshaded.j3md");  // create a simple material
//        mat.setColor("Color", colorRGBA);   // set color of material to blue
//        geom.setMaterial(mat);                   // set the cube's material
//        ((SimpleApplication)application).getRootNode().attachChild(geom); // make the cube appear in the scene
    }

    @Override
    protected void cleanup(Application application) {
//        geom.removeFromParent();
    }

    public ColorRGBA getColor(){
        return colorRGBA;
    }

    public void setColor(ColorRGBA color){
        colorRGBA = color;
//        mat.setColor("Color", colorRGBA);
    }

    @Override
    protected void onEnable() {

    }

    @Override
    protected void onDisable() {

    }


}
