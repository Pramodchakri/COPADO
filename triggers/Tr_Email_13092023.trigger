trigger Tr_Email_13092023 on Contact (before insert, after insert) {
    
    If(Trigger.isinsert && Trigger.isBefore)
    {
         Messaging.SingleEmailMessage EM = new Messaging.SingleEmailMessage();
    List<String> toadd = New List<String>{'pramodpj786@gmail.com'};
        EM.setToAddresses(toadd);
    EM.setSubject('A new Contact is about tos inserted');
    EM.setPlainTextBody('Send through Trigger');
    
    List<Messaging.Email> SE = new  List<Messaging.Email>{EM};
       // Messaging.sendEmail(SE);
    }
    If(Trigger.isInsert && Trigger.isAfter)
    {
       Messaging.SingleEmailMessage EM = new Messaging.SingleEmailMessage();
    List<String> toadd = New List<String>{'pramodpj786@gmail.com'};
        EM.setToAddresses(toadd);
    EM.setSubject('Congratulations new Contact is inserted');
    EM.setPlainTextBody('Dear Customer, Welcome to nosyntaxsolutons. We are happy to help you.');
     List<Messaging.Email> SE = new  List<Messaging.Email>{EM};
    //    Messaging.sendEmail(SE); 
    }
}