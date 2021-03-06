; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -verify-machineinstrs -ppc-asm-full-reg-names  \
; RUN:     -mcpu=pwr9 -mtriple=powerpc64le-unknown-unknown < %s | FileCheck %s

define dso_local void @foo()  {
; CHECK-LABEL: foo:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    #APP
; CHECK-NEXT:    mfvsrd r0, vs33
; CHECK-NEXT:    #NO_APP
; CHECK-NEXT:    #APP
; CHECK-NEXT:    mffprd r0, f3
; CHECK-NEXT:    #NO_APP
; CHECK-NEXT:    #APP
; CHECK-NEXT:    mfvsrd r0, vs34
; CHECK-NEXT:    #NO_APP
; CHECK-NEXT:    #APP
; CHECK-NEXT:    mfvsrwz r0, vs33
; CHECK-NEXT:    #NO_APP
; CHECK-NEXT:    #APP
; CHECK-NEXT:    mffprwz r0, f3
; CHECK-NEXT:    #NO_APP
; CHECK-NEXT:    #APP
; CHECK-NEXT:    mfvsrwz r0, vs34
; CHECK-NEXT:    #NO_APP
; CHECK-NEXT:    #APP
; CHECK-NEXT:    mtvsrd vs33, r0
; CHECK-NEXT:    #NO_APP
; CHECK-NEXT:    #APP
; CHECK-NEXT:    mtfprd f3, r0
; CHECK-NEXT:    #NO_APP
; CHECK-NEXT:    #APP
; CHECK-NEXT:    mtvsrd vs34, r0
; CHECK-NEXT:    #NO_APP
; CHECK-NEXT:    #APP
; CHECK-NEXT:    mtvsrwa vs33, r0
; CHECK-NEXT:    #NO_APP
; CHECK-NEXT:    #APP
; CHECK-NEXT:    mtfprwa f3, r0
; CHECK-NEXT:    #NO_APP
; CHECK-NEXT:    #APP
; CHECK-NEXT:    mtvsrwa vs34, r0
; CHECK-NEXT:    #NO_APP
; CHECK-NEXT:    #APP
; CHECK-NEXT:    mtvsrwz vs33, r0
; CHECK-NEXT:    #NO_APP
; CHECK-NEXT:    #APP
; CHECK-NEXT:    mtfprwz f3, r0
; CHECK-NEXT:    #NO_APP
; CHECK-NEXT:    #APP
; CHECK-NEXT:    mtvsrwz vs34, r0
; CHECK-NEXT:    #NO_APP
; CHECK-NEXT:    blr
entry:
  call void asm sideeffect "mfvsrd 0,33", ""()
  call void asm sideeffect "mffprd 0,3", ""()
  call void asm sideeffect "mfvrd  0,2", ""()
  call void asm sideeffect "mfvsrwz 0,33", ""()
  call void asm sideeffect "mffprwz 0,3", ""()
  call void asm sideeffect "mfvrwz  0,2", ""()
  call void asm sideeffect "mtvsrd 33,0", ""()
  call void asm sideeffect "mtfprd 3,0", ""()
  call void asm sideeffect "mtvrd  2,0", ""()
  call void asm sideeffect "mtvsrwa 33,0", ""()
  call void asm sideeffect "mtfprwa 3,0", ""()
  call void asm sideeffect "mtvrwa  2,0", ""()
  call void asm sideeffect "mtvsrwz 33,0", ""()
  call void asm sideeffect "mtfprwz 3,0", ""()
  call void asm sideeffect "mtvrwz  2,0", ""()
  ret void
}

