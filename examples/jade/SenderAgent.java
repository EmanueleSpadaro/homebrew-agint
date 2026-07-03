import jade.core.AID;
import jade.core.Agent;
import jade.core.behaviours.OneShotBehaviour;
import jade.lang.acl.ACLMessage;

public class SenderAgent extends Agent {

    protected void setup() {
        addBehaviour(
            new OneShotBehaviour(this) {
                public void action() {
                    ACLMessage msg = new ACLMessage(ACLMessage.INFORM);
                    msg.addReceiver(new AID("receiver", AID.ISLOCALNAME));
                    msg.setContent("Hello from " + getAID().getName());
                    myAgent.send(msg);
                    System.out.println(getAID().getName() + " sent a message.");

                    ACLMessage reply = myAgent.blockingReceive();
                    System.out.println(
                        getAID().getName() + " got reply: " + reply.getContent()
                    );
                }
            }
        );
    }
}
