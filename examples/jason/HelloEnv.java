import jason.asSyntax.Structure;
import jason.environment.Environment;

public class HelloEnv extends Environment {
    @Override
    public boolean executeAction(String agName, Structure action) {
        System.out.println("[" + agName + "] " + action.getTerm(0));
        return true;
    }
}
