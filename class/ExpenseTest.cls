@isTest
public class ExpenseTest {
 public testMethod static void myTest(){
      
        Event__c expense = new Event__c();
        expense.Amount__c=1000;
        expense.Name__c='party';
        
        expense.Description__c='party';
        insert expense;
        Member__c member = new Member__c();
        member.First_Name__c='abc';
        member.last_Name__c='xyz';
        member.Email__c='abc@abc.com';
        insert member;
        MemberExpense__c expmem = new MemberExpense__c();
        expmem.Member__c=member.Id;
        expmem.Expense__c=expense.Id;
        expmem.Contribution_amount__c=100;
        insert expmem;
        EventExpense expExt = new EventExpense(new ApexPages.StandardController(expense));
        List<MemberExpense__c> ge = new List<MemberExpense__c>();
        ge = expExt.getMembers();
        //Expense__c expense1 = new Expense__c();
        //expense1 
        //List<ExpenseMember__c> ge1 = new List<ExpenseMember__c>();
        //ge1.add(expense);
        //System.assertEquals(ge1,ge);
}
}