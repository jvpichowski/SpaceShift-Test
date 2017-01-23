
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.util.clone.Cloner;
import com.jvpichowski.BoxState;
import com.ss.extension.scene.app.state.EditableSceneAppState;
import com.ss.extension.scene.app.state.property.EditableProperty;
import com.ss.extension.scene.app.state.property.EditablePropertyType;
import com.ss.extension.scene.app.state.property.SimpleProperty;
import org.jetbrains.annotations.NotNull;
import rlib.util.array.Array;
import rlib.util.array.ArrayFactory;

import java.io.IOException;

public class EditableBoxState extends BoxState implements EditableSceneAppState {

    public EditableBoxState() {
    }

    @NotNull
    @Override
    public String getName() {
        return "Box State";
    }

    @NotNull
    @Override
    public Object jmeClone() {
        try {
            return super.clone();
        } catch (final CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {

    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {

    }

    @Override
    public void cloneFields(Cloner cloner, Object o) {

    }

    @NotNull
    @Override
    public Array<EditableProperty<?, ?>> getEditableProperties() {

        final Array<EditableProperty<?, ?>> result = ArrayFactory.newArray(EditableProperty.class);

        //result.add(new SimpleProperty<>(EditablePropertyType.COLOR, "Ambient color", this,
        //       LightingState::getAmbientColor, LightingState::setAmbientColor));
        result.add(new SimpleProperty<>(EditablePropertyType.COLOR, "Box Color", this,
                BoxState::getColor, BoxState::setColor));

        return result;
    }
}