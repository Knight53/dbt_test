SELECT DISTINCT ON (transaction_code) loan_first."ClientID",
sms_raw.*
FROM sms_raw 
JOIN loan_first on loan_first."user_id" = sms_raw.user_id
WHERE split_part(recipient,' ',3)  LIKE '%07%'
OR split_part(recipient,' ',4)  LIKE '%07%'