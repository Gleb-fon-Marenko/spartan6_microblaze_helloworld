proc pnsynth {} {
  cd D:/14.7/ISE_DS/5-Example/hz/hz
  if { [ catch { xload xmp hz.xmp } result ] } {
    exit 10
  }
  if { [catch {run netlist} result] } {
    return -1
  }
  return $result
}
if { [catch {pnsynth} result] } {
  exit -1
}
exit $result
