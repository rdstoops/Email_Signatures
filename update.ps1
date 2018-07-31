#Getting Dates so we can append them to filenames
$date = get-date -format yyyyMMdd
$yesterday = "{0:yyyyMMdd}" -f (get-date).AddDays(-1)
$logdate = get-date -format yyyyMMdd:HHmm

#Establishing filenames and paths
$filename = "event_" + $date + ".txt"
$oldfilename = "event_" + $yesterday + ".txt"
$path = *Enter Path* + $filename
$oldpath = *Enter Path* + $oldfilename

#Preparing log messages
$tstatus = "Copy Complete"
$fstatus = "No File found"
$log = $logdate + " - " + $tstatus
$flog = $logdate + " - " + $fstatus

#If statement looks for file named event_[today's date].txt
if (test-path -path $path) 
{
rename-item -path "event.txt" $oldfilename
#Rename the old file with yesterday's date
rename-item -path $path event.txt
#Make today's file event.txt
move-item $oldpath *Enter Path* -force
#Move the old file to the Old Events directory
write-output $log | out-file "log.txt" -append
#Log what happened
}
else 
{
write-output $flog | out-file "log.txt" -append
#Log that no file was found with today's date
}


