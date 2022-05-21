/**
 * @description       : 
 * @author            : SUDEER K
 * @group             : 
 * @last modified on  : 05-21-2022
 * @last modified by  : SUDEER K 
 * Modifications Log
 * Ver   Date         Author     Modification
 * 1.0   05-21-2022   SUDEER K   Initial Version
**/
public with sharing class AccountController {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts() {
        return [
            SELECT Name, AnnualRevenue, Industry
            FROM Account
            WITH SECURITY_ENFORCED
            ORDER BY Name
        ];
    }
}
