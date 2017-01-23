package com.jvpichowski;

import com.jme3.app.SimpleApplication;
import com.jme3.app.state.AppState;

/**
 * Created by Jan on 21.01.2017.
 */
public class Main extends SimpleApplication {


    public Main(AppState... states){
        super(states);
    }

    public static void main(String[] args) {
        new Main(new BoxState()).start();
    }

    @Override
    public void simpleInitApp() {

    }
}
