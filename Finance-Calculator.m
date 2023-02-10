%name of function is abj37finances, with three inputs, one for account,
%adjustment amount and the indicator. I made the indicator a Floating-Point
%Number. The number 1 indicates a transfer, 2 indicates a withdrawal, 3
%indicates intrest, 4 indicates an interest payment, and 5 indicates an
%interest accruement 

%1=transfer
%2=withdrawal
%3=Interest
%4=Interestpayment
%5=Interestaccruement


function [result]= abj37finances (account,adjustment,indicator)

switch(indicator)
    case 1 %transfer=
        result = adjustment + account;
    case 2 %withdrawal= 
        result = account - adjustment;
    case 3 %Interest= 
        result = account * (adjustment/100);
    case 4 %Interestpayment= 
    %interest value was divided by 100 to get a decimal value. Then it was
    %subtracted by 1 and multiplied by account to get final interest payment
        result = account * (1-(adjustment/100)); 
    case 5 %Interestaccruement=
    %interest value was divided by 100 to get a decimal value. Then it was
    %added to 1 and multiplied by account to get final interest accruement
        result = account * (1+(adjustment/100));
    %the otherwise case is for when the user enters an invalid indicator
    %number
    otherwise
        result = 'Please enter a valid indicator';
end 