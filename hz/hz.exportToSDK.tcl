proc exportToSDK {} {
  cd D:/14.7/ISE_DS/5-Example/hz/hz
  if { [ catch { xload xmp hz.xmp } result ] } {
    exit 10
  }
  if { [run exporttosdk] != 0 } {
    return -1
  }
  return 0
}

if { [catch {exportToSDK} result] } {
  exit -1
}

set sExportDir [ xget sdk_export_dir ]
set sExportDir [ file join "D:/14.7/ISE_DS/5-Example/hz/hz" "$sExportDir" "hw" ] 
if { [ file exists D:/14.7/ISE_DS/5-Example/hz/edkBmmFile_bd.bmm ] } {
   puts "Copying placed bmm file D:/14.7/ISE_DS/5-Example/hz/edkBmmFile_bd.bmm to $sExportDir" 
   file copy -force "D:/14.7/ISE_DS/5-Example/hz/edkBmmFile_bd.bmm" $sExportDir
}
if { [ file exists D:/14.7/ISE_DS/5-Example/hz/hz_top.bit ] } {
   puts "Copying bit file D:/14.7/ISE_DS/5-Example/hz/hz_top.bit to $sExportDir" 
   file copy -force "D:/14.7/ISE_DS/5-Example/hz/hz_top.bit" $sExportDir
}
exit $result
