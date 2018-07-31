# Email_Signatures
# Contact.txt - Stub text file with HTML describing part of the body of your signature. You may pull fields like  # %%displayname%% from Exchange
# disclaimer.txt - Stub text file with HTML describing a disclaimer at the end of the signature
# event.txt - Stub text file with HTML describing an event (with website, etc.) that will appear in the signature
#
# Set up a task to run sig_change.ps1 and update.ps1 over night. Update.ps1 will find an event_YYYYMMDD.txt file if it # exists and build new signatures. Sig_change.ps1 will update the transport rule with the new disclaimer.