import jade.core.Agent;
import jade.core.behaviours.CyclicBehaviour;
import jade.lang.acl.ACLMessage;

public class ReceiverAgent extends Agent {
    protected void setup() {
        System.out.println(getAID().getName() + " is ready and waiting for messages.");

        addBehaviour(new CyclicBehaviour(this) {
            public void action() {
                ACLMessage msg = myAgent.receive();
                if (msg != null) {
                    System.out.println(getAID().getName() + " received: " + msg.getContent());

                    ACLMessage reply = msg.createReply();
                    reply.setPerformative(ACLMessage.INFORM);
                    reply.setContent("Message received, thanks!");
                    myAgent.send(reply);
                } else {
                    block();
                }
            }
        });
    }
}
