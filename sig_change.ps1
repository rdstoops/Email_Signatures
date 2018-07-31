#Read text files for signature content
$contact = (get-content "contact.txt") -join "`n" 
$event = (get-content "event.txt") -join "`n" 
$disclaimer = (get-content "disclaimer.txt") -join "`n" 

#Assemble signature from text files - $event is changed directly and will appear in all signatures
$signature = ($contact + $event + $disclaimer)

#Apply the signature changes to all the signatures
Set-TransportRule -Identity 'Signature' -Name 'Signature' -ApplyHtmlDisclaimerLocation 'Append' -ApplyHtmlDisclaimerText $signature -ApplyHtmlDisclaimerFallbackAction 'Wrap'

#Make a log entry
$logdate = get-date -format yyyyMMdd:HHmm
$logentry = $logdate + " - Signatures Updated"
write-output $logentry | out-file "log.txt" -append










