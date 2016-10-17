
//Custom controller of EventExpense to print the event details and indivisual contribution

public with sharing class EventExpense{
    public Event__c eventObj{get;set;}
    public List<MemberExpense__c> members {get;set;}

    public EventExpense(ApexPages.StandardController controller) {
        eventObj = (Event__c)controller.getRecord();
        members = getMembers();
    }
    
	//pick the indivisual contribution
    public List<MemberExpense__c> getMembers(){
        return [Select Contribution_amount__c,Member__r.Name from MemberExpense__c where Expense__c =:eventObj.Id];
    }
}