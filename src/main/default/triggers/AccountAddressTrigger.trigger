trigger AccountAddressTrigger on Account (after insert,after update) {

Set<Id> li=new Set<Id>();

if(Trigger.isAfter && Trigger.isUpdate){

for(Account acc:Trigger.New){

if(acc.Geo__Latitude__s ==null){

li.add(acc.id);

LocationCallouts.newAccmethod(li);

}

}

}

}