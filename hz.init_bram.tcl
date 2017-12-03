cd D:/14.7/ISE_DS/5-Example/hz/hz
if { [ catch { xload xmp hz.xmp } result ] } {
  exit 10
}

if { [catch {run init_bram} result] } {
  exit -1
}

exit 0
