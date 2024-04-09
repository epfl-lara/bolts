; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49148 () Bool)

(assert start!49148)

(declare-fun b!541129 () Bool)

(declare-fun e!313330 () Bool)

(declare-fun e!313327 () Bool)

(assert (=> b!541129 (= e!313330 e!313327)))

(declare-fun res!336173 () Bool)

(assert (=> b!541129 (=> (not res!336173) (not e!313327))))

(declare-datatypes ((SeekEntryResult!4904 0))(
  ( (MissingZero!4904 (index!21840 (_ BitVec 32))) (Found!4904 (index!21841 (_ BitVec 32))) (Intermediate!4904 (undefined!5716 Bool) (index!21842 (_ BitVec 32)) (x!50774 (_ BitVec 32))) (Undefined!4904) (MissingVacant!4904 (index!21843 (_ BitVec 32))) )
))
(declare-fun lt!247559 () SeekEntryResult!4904)

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!541129 (= res!336173 (= lt!247559 (Intermediate!4904 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34214 0))(
  ( (array!34215 (arr!16439 (Array (_ BitVec 32) (_ BitVec 64))) (size!16803 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34214)

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34214 (_ BitVec 32)) SeekEntryResult!4904)

(assert (=> b!541129 (= lt!247559 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16439 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!541130 () Bool)

(declare-fun res!336169 () Bool)

(declare-fun e!313329 () Bool)

(assert (=> b!541130 (=> (not res!336169) (not e!313329))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!541130 (= res!336169 (validKeyInArray!0 (select (arr!16439 a!3154) j!147)))))

(declare-fun b!541131 () Bool)

(declare-fun res!336174 () Bool)

(assert (=> b!541131 (=> (not res!336174) (not e!313330))))

(assert (=> b!541131 (= res!336174 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16803 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16803 a!3154)) (= (select (arr!16439 a!3154) resIndex!32) (select (arr!16439 a!3154) j!147))))))

(declare-fun b!541132 () Bool)

(declare-fun res!336170 () Bool)

(assert (=> b!541132 (=> (not res!336170) (not e!313329))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!541132 (= res!336170 (and (= (size!16803 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16803 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16803 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!336167 () Bool)

(assert (=> start!49148 (=> (not res!336167) (not e!313329))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49148 (= res!336167 (validMask!0 mask!3216))))

(assert (=> start!49148 e!313329))

(assert (=> start!49148 true))

(declare-fun array_inv!12213 (array!34214) Bool)

(assert (=> start!49148 (array_inv!12213 a!3154)))

(declare-fun b!541133 () Bool)

(declare-fun res!336171 () Bool)

(assert (=> b!541133 (=> (not res!336171) (not e!313329))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34214 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!541133 (= res!336171 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!541134 () Bool)

(assert (=> b!541134 (= e!313329 e!313330)))

(declare-fun res!336168 () Bool)

(assert (=> b!541134 (=> (not res!336168) (not e!313330))))

(declare-fun lt!247558 () SeekEntryResult!4904)

(assert (=> b!541134 (= res!336168 (or (= lt!247558 (MissingZero!4904 i!1153)) (= lt!247558 (MissingVacant!4904 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34214 (_ BitVec 32)) SeekEntryResult!4904)

(assert (=> b!541134 (= lt!247558 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!541135 () Bool)

(declare-fun res!336175 () Bool)

(assert (=> b!541135 (=> (not res!336175) (not e!313329))))

(assert (=> b!541135 (= res!336175 (validKeyInArray!0 k!1998))))

(declare-fun b!541136 () Bool)

(declare-fun res!336166 () Bool)

(assert (=> b!541136 (=> (not res!336166) (not e!313330))))

(declare-datatypes ((List!10611 0))(
  ( (Nil!10608) (Cons!10607 (h!11556 (_ BitVec 64)) (t!16847 List!10611)) )
))
(declare-fun arrayNoDuplicates!0 (array!34214 (_ BitVec 32) List!10611) Bool)

(assert (=> b!541136 (= res!336166 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10608))))

(declare-fun b!541137 () Bool)

(declare-fun res!336176 () Bool)

(assert (=> b!541137 (=> (not res!336176) (not e!313330))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34214 (_ BitVec 32)) Bool)

(assert (=> b!541137 (= res!336176 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!541138 () Bool)

(assert (=> b!541138 (= e!313327 (and (not (= (select (arr!16439 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16439 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16439 a!3154) index!1177) (select (arr!16439 a!3154) j!147)) (not (= index!1177 resIndex!32))))))

(declare-fun b!541139 () Bool)

(declare-fun res!336172 () Bool)

(assert (=> b!541139 (=> (not res!336172) (not e!313327))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!541139 (= res!336172 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16439 a!3154) j!147) mask!3216) (select (arr!16439 a!3154) j!147) a!3154 mask!3216) lt!247559))))

(assert (= (and start!49148 res!336167) b!541132))

(assert (= (and b!541132 res!336170) b!541130))

(assert (= (and b!541130 res!336169) b!541135))

(assert (= (and b!541135 res!336175) b!541133))

(assert (= (and b!541133 res!336171) b!541134))

(assert (= (and b!541134 res!336168) b!541137))

(assert (= (and b!541137 res!336176) b!541136))

(assert (= (and b!541136 res!336166) b!541131))

(assert (= (and b!541131 res!336174) b!541129))

(assert (= (and b!541129 res!336173) b!541139))

(assert (= (and b!541139 res!336172) b!541138))

(declare-fun m!519753 () Bool)

(assert (=> b!541134 m!519753))

(declare-fun m!519755 () Bool)

(assert (=> b!541139 m!519755))

(assert (=> b!541139 m!519755))

(declare-fun m!519757 () Bool)

(assert (=> b!541139 m!519757))

(assert (=> b!541139 m!519757))

(assert (=> b!541139 m!519755))

(declare-fun m!519759 () Bool)

(assert (=> b!541139 m!519759))

(declare-fun m!519761 () Bool)

(assert (=> b!541137 m!519761))

(declare-fun m!519763 () Bool)

(assert (=> b!541131 m!519763))

(assert (=> b!541131 m!519755))

(declare-fun m!519765 () Bool)

(assert (=> b!541136 m!519765))

(declare-fun m!519767 () Bool)

(assert (=> start!49148 m!519767))

(declare-fun m!519769 () Bool)

(assert (=> start!49148 m!519769))

(declare-fun m!519771 () Bool)

(assert (=> b!541133 m!519771))

(declare-fun m!519773 () Bool)

(assert (=> b!541135 m!519773))

(assert (=> b!541130 m!519755))

(assert (=> b!541130 m!519755))

(declare-fun m!519775 () Bool)

(assert (=> b!541130 m!519775))

(assert (=> b!541129 m!519755))

(assert (=> b!541129 m!519755))

(declare-fun m!519777 () Bool)

(assert (=> b!541129 m!519777))

(declare-fun m!519779 () Bool)

(assert (=> b!541138 m!519779))

(assert (=> b!541138 m!519755))

(push 1)

(assert (not start!49148))

(assert (not b!541129))

(assert (not b!541133))

(assert (not b!541137))

(assert (not b!541136))

(assert (not b!541130))

(assert (not b!541134))

(assert (not b!541139))

(assert (not b!541135))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!81635 () Bool)

(assert (=> d!81635 (= (validKeyInArray!0 (select (arr!16439 a!3154) j!147)) (and (not (= (select (arr!16439 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16439 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!541130 d!81635))

(declare-fun b!541164 () Bool)

(declare-fun e!313352 () Bool)

(declare-fun call!32033 () Bool)

(assert (=> b!541164 (= e!313352 call!32033)))

(declare-fun d!81637 () Bool)

(declare-fun res!336190 () Bool)

(declare-fun e!313350 () Bool)

(assert (=> d!81637 (=> res!336190 e!313350)))

(assert (=> d!81637 (= res!336190 (bvsge #b00000000000000000000000000000000 (size!16803 a!3154)))))

(assert (=> d!81637 (= (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10608) e!313350)))

(declare-fun b!541165 () Bool)

(assert (=> b!541165 (= e!313352 call!32033)))

(declare-fun b!541166 () Bool)

(declare-fun e!313351 () Bool)

(assert (=> b!541166 (= e!313350 e!313351)))

(declare-fun res!336189 () Bool)

(assert (=> b!541166 (=> (not res!336189) (not e!313351))))

(declare-fun e!313349 () Bool)

(assert (=> b!541166 (= res!336189 (not e!313349))))

(declare-fun res!336191 () Bool)

(assert (=> b!541166 (=> (not res!336191) (not e!313349))))

(assert (=> b!541166 (= res!336191 (validKeyInArray!0 (select (arr!16439 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!541167 () Bool)

(assert (=> b!541167 (= e!313351 e!313352)))

(declare-fun c!62802 () Bool)

(assert (=> b!541167 (= c!62802 (validKeyInArray!0 (select (arr!16439 a!3154) #b00000000000000000000000000000000)))))

(declare-fun bm!32030 () Bool)

(assert (=> bm!32030 (= call!32033 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!62802 (Cons!10607 (select (arr!16439 a!3154) #b00000000000000000000000000000000) Nil!10608) Nil!10608)))))

(declare-fun b!541168 () Bool)

(declare-fun contains!2804 (List!10611 (_ BitVec 64)) Bool)

(assert (=> b!541168 (= e!313349 (contains!2804 Nil!10608 (select (arr!16439 a!3154) #b00000000000000000000000000000000)))))

(assert (= (and d!81637 (not res!336190)) b!541166))

(assert (= (and b!541166 res!336191) b!541168))

(assert (= (and b!541166 res!336189) b!541167))

(assert (= (and b!541167 c!62802) b!541165))

(assert (= (and b!541167 (not c!62802)) b!541164))

(assert (= (or b!541165 b!541164) bm!32030))

(declare-fun m!519785 () Bool)

(assert (=> b!541166 m!519785))

(assert (=> b!541166 m!519785))

(declare-fun m!519787 () Bool)

(assert (=> b!541166 m!519787))

(assert (=> b!541167 m!519785))

(assert (=> b!541167 m!519785))

(assert (=> b!541167 m!519787))

(assert (=> bm!32030 m!519785))

(declare-fun m!519789 () Bool)

(assert (=> bm!32030 m!519789))

(assert (=> b!541168 m!519785))

(assert (=> b!541168 m!519785))

(declare-fun m!519791 () Bool)

(assert (=> b!541168 m!519791))

(assert (=> b!541136 d!81637))

(declare-fun b!541228 () Bool)

(declare-fun e!313384 () SeekEntryResult!4904)

(assert (=> b!541228 (= e!313384 (Intermediate!4904 false index!1177 x!1030))))

(declare-fun b!541229 () Bool)

(declare-fun e!313383 () SeekEntryResult!4904)

(assert (=> b!541229 (= e!313383 e!313384)))

(declare-fun lt!247584 () (_ BitVec 64))

(declare-fun c!62824 () Bool)

(assert (=> b!541229 (= c!62824 (or (= lt!247584 (select (arr!16439 a!3154) j!147)) (= (bvadd lt!247584 lt!247584) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!541230 () Bool)

(declare-fun lt!247583 () SeekEntryResult!4904)

(assert (=> b!541230 (and (bvsge (index!21842 lt!247583) #b00000000000000000000000000000000) (bvslt (index!21842 lt!247583) (size!16803 a!3154)))))

(declare-fun res!336208 () Bool)

(assert (=> b!541230 (= res!336208 (= (select (arr!16439 a!3154) (index!21842 lt!247583)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!313389 () Bool)

(assert (=> b!541230 (=> res!336208 e!313389)))

(declare-fun d!81641 () Bool)

(declare-fun e!313386 () Bool)

(assert (=> d!81641 e!313386))

(declare-fun c!62825 () Bool)

(assert (=> d!81641 (= c!62825 (and (is-Intermediate!4904 lt!247583) (undefined!5716 lt!247583)))))

(assert (=> d!81641 (= lt!247583 e!313383)))

(declare-fun c!62827 () Bool)

(assert (=> d!81641 (= c!62827 (bvsge x!1030 #b01111111111111111111111111111110))))

(assert (=> d!81641 (= lt!247584 (select (arr!16439 a!3154) index!1177))))

(assert (=> d!81641 (validMask!0 mask!3216)))

(assert (=> d!81641 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16439 a!3154) j!147) a!3154 mask!3216) lt!247583)))

(declare-fun b!541231 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!541231 (= e!313384 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) (select (arr!16439 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!541232 () Bool)

(assert (=> b!541232 (and (bvsge (index!21842 lt!247583) #b00000000000000000000000000000000) (bvslt (index!21842 lt!247583) (size!16803 a!3154)))))

(assert (=> b!541232 (= e!313389 (= (select (arr!16439 a!3154) (index!21842 lt!247583)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!541233 () Bool)

(assert (=> b!541233 (and (bvsge (index!21842 lt!247583) #b00000000000000000000000000000000) (bvslt (index!21842 lt!247583) (size!16803 a!3154)))))

(declare-fun res!336207 () Bool)

(assert (=> b!541233 (= res!336207 (= (select (arr!16439 a!3154) (index!21842 lt!247583)) (select (arr!16439 a!3154) j!147)))))

(assert (=> b!541233 (=> res!336207 e!313389)))

(declare-fun e!313387 () Bool)

(assert (=> b!541233 (= e!313387 e!313389)))

(declare-fun b!541234 () Bool)

(assert (=> b!541234 (= e!313386 e!313387)))

(declare-fun res!336209 () Bool)

(assert (=> b!541234 (= res!336209 (and (is-Intermediate!4904 lt!247583) (not (undefined!5716 lt!247583)) (bvslt (x!50774 lt!247583) #b01111111111111111111111111111110) (bvsge (x!50774 lt!247583) #b00000000000000000000000000000000) (bvsge (x!50774 lt!247583) x!1030)))))

(assert (=> b!541234 (=> (not res!336209) (not e!313387))))

(declare-fun b!541235 () Bool)

(assert (=> b!541235 (= e!313383 (Intermediate!4904 true index!1177 x!1030))))

(declare-fun b!541236 () Bool)

(assert (=> b!541236 (= e!313386 (bvsge (x!50774 lt!247583) #b01111111111111111111111111111110))))

(assert (= (and d!81641 c!62827) b!541235))

(assert (= (and d!81641 (not c!62827)) b!541229))

(assert (= (and b!541229 c!62824) b!541228))

(assert (= (and b!541229 (not c!62824)) b!541231))

(assert (= (and d!81641 c!62825) b!541236))

(assert (= (and d!81641 (not c!62825)) b!541234))

(assert (= (and b!541234 res!336209) b!541233))

(assert (= (and b!541233 (not res!336207)) b!541230))

(assert (= (and b!541230 (not res!336208)) b!541232))

(declare-fun m!519813 () Bool)

(assert (=> b!541232 m!519813))

(declare-fun m!519815 () Bool)

(assert (=> b!541231 m!519815))

(assert (=> b!541231 m!519815))

(assert (=> b!541231 m!519755))

(declare-fun m!519817 () Bool)

(assert (=> b!541231 m!519817))

(assert (=> b!541230 m!519813))

(assert (=> d!81641 m!519779))

(assert (=> d!81641 m!519767))

(assert (=> b!541233 m!519813))

(assert (=> b!541129 d!81641))

(declare-fun d!81647 () Bool)

(declare-fun lt!247627 () SeekEntryResult!4904)

(assert (=> d!81647 (and (or (is-Undefined!4904 lt!247627) (not (is-Found!4904 lt!247627)) (and (bvsge (index!21841 lt!247627) #b00000000000000000000000000000000) (bvslt (index!21841 lt!247627) (size!16803 a!3154)))) (or (is-Undefined!4904 lt!247627) (is-Found!4904 lt!247627) (not (is-MissingZero!4904 lt!247627)) (and (bvsge (index!21840 lt!247627) #b00000000000000000000000000000000) (bvslt (index!21840 lt!247627) (size!16803 a!3154)))) (or (is-Undefined!4904 lt!247627) (is-Found!4904 lt!247627) (is-MissingZero!4904 lt!247627) (not (is-MissingVacant!4904 lt!247627)) (and (bvsge (index!21843 lt!247627) #b00000000000000000000000000000000) (bvslt (index!21843 lt!247627) (size!16803 a!3154)))) (or (is-Undefined!4904 lt!247627) (ite (is-Found!4904 lt!247627) (= (select (arr!16439 a!3154) (index!21841 lt!247627)) k!1998) (ite (is-MissingZero!4904 lt!247627) (= (select (arr!16439 a!3154) (index!21840 lt!247627)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4904 lt!247627) (= (select (arr!16439 a!3154) (index!21843 lt!247627)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!313439 () SeekEntryResult!4904)

(assert (=> d!81647 (= lt!247627 e!313439)))

(declare-fun c!62860 () Bool)

(declare-fun lt!247629 () SeekEntryResult!4904)

(assert (=> d!81647 (= c!62860 (and (is-Intermediate!4904 lt!247629) (undefined!5716 lt!247629)))))

(assert (=> d!81647 (= lt!247629 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1998 mask!3216) k!1998 a!3154 mask!3216))))

(assert (=> d!81647 (validMask!0 mask!3216)))

(assert (=> d!81647 (= (seekEntryOrOpen!0 k!1998 a!3154 mask!3216) lt!247627)))

(declare-fun b!541320 () Bool)

(assert (=> b!541320 (= e!313439 Undefined!4904)))

(declare-fun e!313438 () SeekEntryResult!4904)

(declare-fun b!541321 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34214 (_ BitVec 32)) SeekEntryResult!4904)

(assert (=> b!541321 (= e!313438 (seekKeyOrZeroReturnVacant!0 (x!50774 lt!247629) (index!21842 lt!247629) (index!21842 lt!247629) k!1998 a!3154 mask!3216))))

(declare-fun b!541322 () Bool)

(declare-fun e!313437 () SeekEntryResult!4904)

(assert (=> b!541322 (= e!313439 e!313437)))

(declare-fun lt!247628 () (_ BitVec 64))

(assert (=> b!541322 (= lt!247628 (select (arr!16439 a!3154) (index!21842 lt!247629)))))

(declare-fun c!62861 () Bool)

(assert (=> b!541322 (= c!62861 (= lt!247628 k!1998))))

(declare-fun b!541323 () Bool)

(assert (=> b!541323 (= e!313437 (Found!4904 (index!21842 lt!247629)))))

(declare-fun b!541324 () Bool)

(declare-fun c!62859 () Bool)

(assert (=> b!541324 (= c!62859 (= lt!247628 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!541324 (= e!313437 e!313438)))

(declare-fun b!541325 () Bool)

(assert (=> b!541325 (= e!313438 (MissingZero!4904 (index!21842 lt!247629)))))

(assert (= (and d!81647 c!62860) b!541320))

(assert (= (and d!81647 (not c!62860)) b!541322))

(assert (= (and b!541322 c!62861) b!541323))

(assert (= (and b!541322 (not c!62861)) b!541324))

(assert (= (and b!541324 c!62859) b!541325))

(assert (= (and b!541324 (not c!62859)) b!541321))

(assert (=> d!81647 m!519767))

(declare-fun m!519867 () Bool)

(assert (=> d!81647 m!519867))

(declare-fun m!519869 () Bool)

(assert (=> d!81647 m!519869))

(declare-fun m!519871 () Bool)

(assert (=> d!81647 m!519871))

(declare-fun m!519873 () Bool)

(assert (=> d!81647 m!519873))

(declare-fun m!519875 () Bool)

(assert (=> d!81647 m!519875))

(assert (=> d!81647 m!519867))

(declare-fun m!519877 () Bool)

(assert (=> b!541321 m!519877))

(declare-fun m!519879 () Bool)

(assert (=> b!541322 m!519879))

(assert (=> b!541134 d!81647))

(declare-fun d!81663 () Bool)

(assert (=> d!81663 (= (validKeyInArray!0 k!1998) (and (not (= k!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!541135 d!81663))

(declare-fun d!81665 () Bool)

(assert (=> d!81665 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!49148 d!81665))

(declare-fun d!81673 () Bool)

(assert (=> d!81673 (= (array_inv!12213 a!3154) (bvsge (size!16803 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!49148 d!81673))

(declare-fun d!81679 () Bool)

(declare-fun res!336258 () Bool)

(declare-fun e!313471 () Bool)

(assert (=> d!81679 (=> res!336258 e!313471)))

(assert (=> d!81679 (= res!336258 (= (select (arr!16439 a!3154) #b00000000000000000000000000000000) k!1998))))

(assert (=> d!81679 (= (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000) e!313471)))

(declare-fun b!541363 () Bool)

(declare-fun e!313472 () Bool)

(assert (=> b!541363 (= e!313471 e!313472)))

(declare-fun res!336259 () Bool)

(assert (=> b!541363 (=> (not res!336259) (not e!313472))))

(assert (=> b!541363 (= res!336259 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16803 a!3154)))))

(declare-fun b!541364 () Bool)

(assert (=> b!541364 (= e!313472 (arrayContainsKey!0 a!3154 k!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81679 (not res!336258)) b!541363))

(assert (= (and b!541363 res!336259) b!541364))

(assert (=> d!81679 m!519785))

(declare-fun m!519897 () Bool)

(assert (=> b!541364 m!519897))

(assert (=> b!541133 d!81679))

(declare-fun e!313474 () SeekEntryResult!4904)

(declare-fun b!541365 () Bool)

(assert (=> b!541365 (= e!313474 (Intermediate!4904 false (toIndex!0 (select (arr!16439 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!541366 () Bool)

(declare-fun e!313473 () SeekEntryResult!4904)

(assert (=> b!541366 (= e!313473 e!313474)))

(declare-fun lt!247640 () (_ BitVec 64))

(declare-fun c!62868 () Bool)

(assert (=> b!541366 (= c!62868 (or (= lt!247640 (select (arr!16439 a!3154) j!147)) (= (bvadd lt!247640 lt!247640) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!541367 () Bool)

(declare-fun lt!247639 () SeekEntryResult!4904)

(assert (=> b!541367 (and (bvsge (index!21842 lt!247639) #b00000000000000000000000000000000) (bvslt (index!21842 lt!247639) (size!16803 a!3154)))))

(declare-fun res!336261 () Bool)

(assert (=> b!541367 (= res!336261 (= (select (arr!16439 a!3154) (index!21842 lt!247639)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!313477 () Bool)

(assert (=> b!541367 (=> res!336261 e!313477)))

(declare-fun d!81681 () Bool)

(declare-fun e!313475 () Bool)

(assert (=> d!81681 e!313475))

(declare-fun c!62869 () Bool)

(assert (=> d!81681 (= c!62869 (and (is-Intermediate!4904 lt!247639) (undefined!5716 lt!247639)))))

(assert (=> d!81681 (= lt!247639 e!313473)))

(declare-fun c!62870 () Bool)

(assert (=> d!81681 (= c!62870 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!81681 (= lt!247640 (select (arr!16439 a!3154) (toIndex!0 (select (arr!16439 a!3154) j!147) mask!3216)))))

(assert (=> d!81681 (validMask!0 mask!3216)))

(assert (=> d!81681 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16439 a!3154) j!147) mask!3216) (select (arr!16439 a!3154) j!147) a!3154 mask!3216) lt!247639)))

(declare-fun b!541368 () Bool)

(assert (=> b!541368 (= e!313474 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16439 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (select (arr!16439 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!541369 () Bool)

(assert (=> b!541369 (and (bvsge (index!21842 lt!247639) #b00000000000000000000000000000000) (bvslt (index!21842 lt!247639) (size!16803 a!3154)))))

(assert (=> b!541369 (= e!313477 (= (select (arr!16439 a!3154) (index!21842 lt!247639)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!541370 () Bool)

(assert (=> b!541370 (and (bvsge (index!21842 lt!247639) #b00000000000000000000000000000000) (bvslt (index!21842 lt!247639) (size!16803 a!3154)))))

(declare-fun res!336260 () Bool)

(assert (=> b!541370 (= res!336260 (= (select (arr!16439 a!3154) (index!21842 lt!247639)) (select (arr!16439 a!3154) j!147)))))

(assert (=> b!541370 (=> res!336260 e!313477)))

(declare-fun e!313476 () Bool)

(assert (=> b!541370 (= e!313476 e!313477)))

(declare-fun b!541371 () Bool)

(assert (=> b!541371 (= e!313475 e!313476)))

(declare-fun res!336262 () Bool)

(assert (=> b!541371 (= res!336262 (and (is-Intermediate!4904 lt!247639) (not (undefined!5716 lt!247639)) (bvslt (x!50774 lt!247639) #b01111111111111111111111111111110) (bvsge (x!50774 lt!247639) #b00000000000000000000000000000000) (bvsge (x!50774 lt!247639) #b00000000000000000000000000000000)))))

(assert (=> b!541371 (=> (not res!336262) (not e!313476))))

(declare-fun b!541372 () Bool)

(assert (=> b!541372 (= e!313473 (Intermediate!4904 true (toIndex!0 (select (arr!16439 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!541373 () Bool)

(assert (=> b!541373 (= e!313475 (bvsge (x!50774 lt!247639) #b01111111111111111111111111111110))))

(assert (= (and d!81681 c!62870) b!541372))

(assert (= (and d!81681 (not c!62870)) b!541366))

(assert (= (and b!541366 c!62868) b!541365))

(assert (= (and b!541366 (not c!62868)) b!541368))

(assert (= (and d!81681 c!62869) b!541373))

(assert (= (and d!81681 (not c!62869)) b!541371))

(assert (= (and b!541371 res!336262) b!541370))

(assert (= (and b!541370 (not res!336260)) b!541367))

(assert (= (and b!541367 (not res!336261)) b!541369))

(declare-fun m!519899 () Bool)

(assert (=> b!541369 m!519899))

(assert (=> b!541368 m!519757))

(declare-fun m!519901 () Bool)

(assert (=> b!541368 m!519901))

(assert (=> b!541368 m!519901))

(assert (=> b!541368 m!519755))

(declare-fun m!519903 () Bool)

(assert (=> b!541368 m!519903))

(assert (=> b!541367 m!519899))

(assert (=> d!81681 m!519757))

(declare-fun m!519905 () Bool)

(assert (=> d!81681 m!519905))

(assert (=> d!81681 m!519767))

(assert (=> b!541370 m!519899))

(assert (=> b!541139 d!81681))

(declare-fun d!81683 () Bool)

(declare-fun lt!247646 () (_ BitVec 32))

(declare-fun lt!247645 () (_ BitVec 32))

(assert (=> d!81683 (= lt!247646 (bvmul (bvxor lt!247645 (bvlshr lt!247645 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!81683 (= lt!247645 ((_ extract 31 0) (bvand (bvxor (select (arr!16439 a!3154) j!147) (bvlshr (select (arr!16439 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!81683 (and (bvsge mask!3216 #b00000000000000000000000000000000) (let ((res!336263 (let ((h!11559 ((_ extract 31 0) (bvand (bvxor (select (arr!16439 a!3154) j!147) (bvlshr (select (arr!16439 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!50780 (bvmul (bvxor h!11559 (bvlshr h!11559 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!50780 (bvlshr x!50780 #b00000000000000000000000000001101)) mask!3216))))) (and (bvslt res!336263 (bvadd mask!3216 #b00000000000000000000000000000001)) (bvsge res!336263 #b00000000000000000000000000000000))))))

(assert (=> d!81683 (= (toIndex!0 (select (arr!16439 a!3154) j!147) mask!3216) (bvand (bvxor lt!247646 (bvlshr lt!247646 #b00000000000000000000000000001101)) mask!3216))))

(assert (=> b!541139 d!81683))

(declare-fun b!541397 () Bool)

(declare-fun e!313498 () Bool)

(declare-fun e!313496 () Bool)

(assert (=> b!541397 (= e!313498 e!313496)))

(declare-fun c!62876 () Bool)

(assert (=> b!541397 (= c!62876 (validKeyInArray!0 (select (arr!16439 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!541398 () Bool)

(declare-fun e!313497 () Bool)

(assert (=> b!541398 (= e!313496 e!313497)))

(declare-fun lt!247654 () (_ BitVec 64))

(assert (=> b!541398 (= lt!247654 (select (arr!16439 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16872 0))(
  ( (Unit!16873) )
))
(declare-fun lt!247653 () Unit!16872)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34214 (_ BitVec 64) (_ BitVec 32)) Unit!16872)

(assert (=> b!541398 (= lt!247653 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!247654 #b00000000000000000000000000000000))))

(assert (=> b!541398 (arrayContainsKey!0 a!3154 lt!247654 #b00000000000000000000000000000000)))

(declare-fun lt!247655 () Unit!16872)

(assert (=> b!541398 (= lt!247655 lt!247653)))

(declare-fun res!336278 () Bool)

(assert (=> b!541398 (= res!336278 (= (seekEntryOrOpen!0 (select (arr!16439 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4904 #b00000000000000000000000000000000)))))

(assert (=> b!541398 (=> (not res!336278) (not e!313497))))

(declare-fun b!541399 () Bool)

(declare-fun call!32048 () Bool)

(assert (=> b!541399 (= e!313496 call!32048)))

(declare-fun bm!32045 () Bool)

(assert (=> bm!32045 (= call!32048 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(declare-fun b!541400 () Bool)

(assert (=> b!541400 (= e!313497 call!32048)))

(declare-fun d!81691 () Bool)

(declare-fun res!336277 () Bool)

(assert (=> d!81691 (=> res!336277 e!313498)))

(assert (=> d!81691 (= res!336277 (bvsge #b00000000000000000000000000000000 (size!16803 a!3154)))))

(assert (=> d!81691 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!313498)))

(assert (= (and d!81691 (not res!336277)) b!541397))

(assert (= (and b!541397 c!62876) b!541398))

(assert (= (and b!541397 (not c!62876)) b!541399))

(assert (= (and b!541398 res!336278) b!541400))

(assert (= (or b!541400 b!541399) bm!32045))

(assert (=> b!541397 m!519785))

(assert (=> b!541397 m!519785))

(assert (=> b!541397 m!519787))

(assert (=> b!541398 m!519785))

(declare-fun m!519911 () Bool)

(assert (=> b!541398 m!519911))

(declare-fun m!519913 () Bool)

(assert (=> b!541398 m!519913))

(assert (=> b!541398 m!519785))

(declare-fun m!519915 () Bool)

(assert (=> b!541398 m!519915))

(declare-fun m!519917 () Bool)

(assert (=> bm!32045 m!519917))

(assert (=> b!541137 d!81691))

(push 1)

