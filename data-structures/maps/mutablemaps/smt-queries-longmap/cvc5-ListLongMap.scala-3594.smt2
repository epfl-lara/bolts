; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49366 () Bool)

(assert start!49366)

(declare-fun res!338311 () Bool)

(declare-fun e!314311 () Bool)

(assert (=> start!49366 (=> (not res!338311) (not e!314311))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49366 (= res!338311 (validMask!0 mask!3216))))

(assert (=> start!49366 e!314311))

(assert (=> start!49366 true))

(declare-datatypes ((array!34330 0))(
  ( (array!34331 (arr!16494 (Array (_ BitVec 32) (_ BitVec 64))) (size!16858 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34330)

(declare-fun array_inv!12268 (array!34330) Bool)

(assert (=> start!49366 (array_inv!12268 a!3154)))

(declare-fun b!543603 () Bool)

(declare-fun res!338307 () Bool)

(assert (=> b!543603 (=> (not res!338307) (not e!314311))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34330 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!543603 (= res!338307 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!543604 () Bool)

(declare-fun e!314312 () Bool)

(assert (=> b!543604 (= e!314311 e!314312)))

(declare-fun res!338313 () Bool)

(assert (=> b!543604 (=> (not res!338313) (not e!314312))))

(declare-datatypes ((SeekEntryResult!4959 0))(
  ( (MissingZero!4959 (index!22060 (_ BitVec 32))) (Found!4959 (index!22061 (_ BitVec 32))) (Intermediate!4959 (undefined!5771 Bool) (index!22062 (_ BitVec 32)) (x!50993 (_ BitVec 32))) (Undefined!4959) (MissingVacant!4959 (index!22063 (_ BitVec 32))) )
))
(declare-fun lt!248225 () SeekEntryResult!4959)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!543604 (= res!338313 (or (= lt!248225 (MissingZero!4959 i!1153)) (= lt!248225 (MissingVacant!4959 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34330 (_ BitVec 32)) SeekEntryResult!4959)

(assert (=> b!543604 (= lt!248225 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!543605 () Bool)

(declare-fun e!314313 () Bool)

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!543605 (= e!314313 (bvsgt (bvadd #b00000000000000000000000000000001 x!1030) resX!32))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun lt!248223 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543605 (= lt!248223 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!543606 () Bool)

(declare-fun res!338305 () Bool)

(assert (=> b!543606 (=> (not res!338305) (not e!314311))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!543606 (= res!338305 (validKeyInArray!0 k!1998))))

(declare-fun b!543607 () Bool)

(declare-fun res!338315 () Bool)

(assert (=> b!543607 (=> (not res!338315) (not e!314311))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!543607 (= res!338315 (and (= (size!16858 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16858 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16858 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!543608 () Bool)

(declare-fun res!338304 () Bool)

(assert (=> b!543608 (=> (not res!338304) (not e!314313))))

(declare-fun lt!248224 () SeekEntryResult!4959)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34330 (_ BitVec 32)) SeekEntryResult!4959)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543608 (= res!338304 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16494 a!3154) j!147) mask!3216) (select (arr!16494 a!3154) j!147) a!3154 mask!3216) lt!248224))))

(declare-fun b!543609 () Bool)

(declare-fun res!338309 () Bool)

(assert (=> b!543609 (=> (not res!338309) (not e!314312))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34330 (_ BitVec 32)) Bool)

(assert (=> b!543609 (= res!338309 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!543610 () Bool)

(assert (=> b!543610 (= e!314312 e!314313)))

(declare-fun res!338308 () Bool)

(assert (=> b!543610 (=> (not res!338308) (not e!314313))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!543610 (= res!338308 (= lt!248224 (Intermediate!4959 false resIndex!32 resX!32)))))

(assert (=> b!543610 (= lt!248224 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16494 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!543611 () Bool)

(declare-fun res!338314 () Bool)

(assert (=> b!543611 (=> (not res!338314) (not e!314312))))

(assert (=> b!543611 (= res!338314 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16858 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16858 a!3154)) (= (select (arr!16494 a!3154) resIndex!32) (select (arr!16494 a!3154) j!147))))))

(declare-fun b!543612 () Bool)

(declare-fun res!338312 () Bool)

(assert (=> b!543612 (=> (not res!338312) (not e!314311))))

(assert (=> b!543612 (= res!338312 (validKeyInArray!0 (select (arr!16494 a!3154) j!147)))))

(declare-fun b!543613 () Bool)

(declare-fun res!338306 () Bool)

(assert (=> b!543613 (=> (not res!338306) (not e!314312))))

(declare-datatypes ((List!10666 0))(
  ( (Nil!10663) (Cons!10662 (h!11617 (_ BitVec 64)) (t!16902 List!10666)) )
))
(declare-fun arrayNoDuplicates!0 (array!34330 (_ BitVec 32) List!10666) Bool)

(assert (=> b!543613 (= res!338306 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10663))))

(declare-fun b!543614 () Bool)

(declare-fun res!338310 () Bool)

(assert (=> b!543614 (=> (not res!338310) (not e!314313))))

(assert (=> b!543614 (= res!338310 (and (not (= (select (arr!16494 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16494 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16494 a!3154) index!1177) (select (arr!16494 a!3154) j!147)))))))

(assert (= (and start!49366 res!338311) b!543607))

(assert (= (and b!543607 res!338315) b!543612))

(assert (= (and b!543612 res!338312) b!543606))

(assert (= (and b!543606 res!338305) b!543603))

(assert (= (and b!543603 res!338307) b!543604))

(assert (= (and b!543604 res!338313) b!543609))

(assert (= (and b!543609 res!338309) b!543613))

(assert (= (and b!543613 res!338306) b!543611))

(assert (= (and b!543611 res!338314) b!543610))

(assert (= (and b!543610 res!338308) b!543608))

(assert (= (and b!543608 res!338304) b!543614))

(assert (= (and b!543614 res!338310) b!543605))

(declare-fun m!521671 () Bool)

(assert (=> b!543611 m!521671))

(declare-fun m!521673 () Bool)

(assert (=> b!543611 m!521673))

(declare-fun m!521675 () Bool)

(assert (=> b!543604 m!521675))

(declare-fun m!521677 () Bool)

(assert (=> b!543609 m!521677))

(assert (=> b!543608 m!521673))

(assert (=> b!543608 m!521673))

(declare-fun m!521679 () Bool)

(assert (=> b!543608 m!521679))

(assert (=> b!543608 m!521679))

(assert (=> b!543608 m!521673))

(declare-fun m!521681 () Bool)

(assert (=> b!543608 m!521681))

(declare-fun m!521683 () Bool)

(assert (=> start!49366 m!521683))

(declare-fun m!521685 () Bool)

(assert (=> start!49366 m!521685))

(assert (=> b!543612 m!521673))

(assert (=> b!543612 m!521673))

(declare-fun m!521687 () Bool)

(assert (=> b!543612 m!521687))

(declare-fun m!521689 () Bool)

(assert (=> b!543613 m!521689))

(assert (=> b!543610 m!521673))

(assert (=> b!543610 m!521673))

(declare-fun m!521691 () Bool)

(assert (=> b!543610 m!521691))

(declare-fun m!521693 () Bool)

(assert (=> b!543605 m!521693))

(declare-fun m!521695 () Bool)

(assert (=> b!543603 m!521695))

(declare-fun m!521697 () Bool)

(assert (=> b!543606 m!521697))

(declare-fun m!521699 () Bool)

(assert (=> b!543614 m!521699))

(assert (=> b!543614 m!521673))

(push 1)

(assert (not b!543608))

(assert (not b!543605))

(assert (not b!543609))

(assert (not b!543610))

(assert (not b!543603))

(assert (not b!543612))

(assert (not start!49366))

(assert (not b!543613))

(assert (not b!543606))

(assert (not b!543604))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!81823 () Bool)

(assert (=> d!81823 (= (validKeyInArray!0 (select (arr!16494 a!3154) j!147)) (and (not (= (select (arr!16494 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16494 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!543612 d!81823))

(declare-fun d!81825 () Bool)

(assert (=> d!81825 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!49366 d!81825))

(declare-fun d!81831 () Bool)

(assert (=> d!81831 (= (array_inv!12268 a!3154) (bvsge (size!16858 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!49366 d!81831))

(declare-fun b!543801 () Bool)

(declare-fun e!314413 () SeekEntryResult!4959)

(assert (=> b!543801 (= e!314413 (Intermediate!4959 true (toIndex!0 (select (arr!16494 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!543802 () Bool)

(declare-fun e!314415 () Bool)

(declare-fun lt!248284 () SeekEntryResult!4959)

(assert (=> b!543802 (= e!314415 (bvsge (x!50993 lt!248284) #b01111111111111111111111111111110))))

(declare-fun b!543803 () Bool)

(declare-fun e!314412 () Bool)

(assert (=> b!543803 (= e!314415 e!314412)))

(declare-fun res!338433 () Bool)

(assert (=> b!543803 (= res!338433 (and (is-Intermediate!4959 lt!248284) (not (undefined!5771 lt!248284)) (bvslt (x!50993 lt!248284) #b01111111111111111111111111111110) (bvsge (x!50993 lt!248284) #b00000000000000000000000000000000) (bvsge (x!50993 lt!248284) #b00000000000000000000000000000000)))))

(assert (=> b!543803 (=> (not res!338433) (not e!314412))))

(declare-fun b!543804 () Bool)

(assert (=> b!543804 (and (bvsge (index!22062 lt!248284) #b00000000000000000000000000000000) (bvslt (index!22062 lt!248284) (size!16858 a!3154)))))

(declare-fun res!338432 () Bool)

(assert (=> b!543804 (= res!338432 (= (select (arr!16494 a!3154) (index!22062 lt!248284)) (select (arr!16494 a!3154) j!147)))))

(declare-fun e!314414 () Bool)

(assert (=> b!543804 (=> res!338432 e!314414)))

(assert (=> b!543804 (= e!314412 e!314414)))

(declare-fun d!81833 () Bool)

(assert (=> d!81833 e!314415))

(declare-fun c!63004 () Bool)

(assert (=> d!81833 (= c!63004 (and (is-Intermediate!4959 lt!248284) (undefined!5771 lt!248284)))))

(assert (=> d!81833 (= lt!248284 e!314413)))

(declare-fun c!63003 () Bool)

(assert (=> d!81833 (= c!63003 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!248285 () (_ BitVec 64))

(assert (=> d!81833 (= lt!248285 (select (arr!16494 a!3154) (toIndex!0 (select (arr!16494 a!3154) j!147) mask!3216)))))

(assert (=> d!81833 (validMask!0 mask!3216)))

(assert (=> d!81833 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16494 a!3154) j!147) mask!3216) (select (arr!16494 a!3154) j!147) a!3154 mask!3216) lt!248284)))

(declare-fun b!543805 () Bool)

(declare-fun e!314416 () SeekEntryResult!4959)

(assert (=> b!543805 (= e!314413 e!314416)))

(declare-fun c!63005 () Bool)

(assert (=> b!543805 (= c!63005 (or (= lt!248285 (select (arr!16494 a!3154) j!147)) (= (bvadd lt!248285 lt!248285) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!543806 () Bool)

(assert (=> b!543806 (and (bvsge (index!22062 lt!248284) #b00000000000000000000000000000000) (bvslt (index!22062 lt!248284) (size!16858 a!3154)))))

(assert (=> b!543806 (= e!314414 (= (select (arr!16494 a!3154) (index!22062 lt!248284)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!543807 () Bool)

(assert (=> b!543807 (= e!314416 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16494 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (select (arr!16494 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!543808 () Bool)

(assert (=> b!543808 (and (bvsge (index!22062 lt!248284) #b00000000000000000000000000000000) (bvslt (index!22062 lt!248284) (size!16858 a!3154)))))

(declare-fun res!338431 () Bool)

(assert (=> b!543808 (= res!338431 (= (select (arr!16494 a!3154) (index!22062 lt!248284)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!543808 (=> res!338431 e!314414)))

(declare-fun b!543809 () Bool)

(assert (=> b!543809 (= e!314416 (Intermediate!4959 false (toIndex!0 (select (arr!16494 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(assert (= (and d!81833 c!63003) b!543801))

(assert (= (and d!81833 (not c!63003)) b!543805))

(assert (= (and b!543805 c!63005) b!543809))

(assert (= (and b!543805 (not c!63005)) b!543807))

(assert (= (and d!81833 c!63004) b!543802))

(assert (= (and d!81833 (not c!63004)) b!543803))

(assert (= (and b!543803 res!338433) b!543804))

(assert (= (and b!543804 (not res!338432)) b!543808))

(assert (= (and b!543808 (not res!338431)) b!543806))

(declare-fun m!521805 () Bool)

(assert (=> b!543806 m!521805))

(assert (=> d!81833 m!521679))

(declare-fun m!521807 () Bool)

(assert (=> d!81833 m!521807))

(assert (=> d!81833 m!521683))

(assert (=> b!543808 m!521805))

(assert (=> b!543807 m!521679))

(declare-fun m!521809 () Bool)

(assert (=> b!543807 m!521809))

(assert (=> b!543807 m!521809))

(assert (=> b!543807 m!521673))

(declare-fun m!521811 () Bool)

(assert (=> b!543807 m!521811))

(assert (=> b!543804 m!521805))

(assert (=> b!543608 d!81833))

(declare-fun d!81841 () Bool)

(declare-fun lt!248299 () (_ BitVec 32))

(declare-fun lt!248298 () (_ BitVec 32))

(assert (=> d!81841 (= lt!248299 (bvmul (bvxor lt!248298 (bvlshr lt!248298 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!81841 (= lt!248298 ((_ extract 31 0) (bvand (bvxor (select (arr!16494 a!3154) j!147) (bvlshr (select (arr!16494 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!81841 (and (bvsge mask!3216 #b00000000000000000000000000000000) (let ((res!338434 (let ((h!11621 ((_ extract 31 0) (bvand (bvxor (select (arr!16494 a!3154) j!147) (bvlshr (select (arr!16494 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!50999 (bvmul (bvxor h!11621 (bvlshr h!11621 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!50999 (bvlshr x!50999 #b00000000000000000000000000001101)) mask!3216))))) (and (bvslt res!338434 (bvadd mask!3216 #b00000000000000000000000000000001)) (bvsge res!338434 #b00000000000000000000000000000000))))))

(assert (=> d!81841 (= (toIndex!0 (select (arr!16494 a!3154) j!147) mask!3216) (bvand (bvxor lt!248299 (bvlshr lt!248299 #b00000000000000000000000000001101)) mask!3216))))

(assert (=> b!543608 d!81841))

(declare-fun b!543845 () Bool)

(declare-fun e!314441 () Bool)

(declare-fun e!314444 () Bool)

(assert (=> b!543845 (= e!314441 e!314444)))

(declare-fun c!63016 () Bool)

(assert (=> b!543845 (= c!63016 (validKeyInArray!0 (select (arr!16494 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!543846 () Bool)

(declare-fun e!314442 () Bool)

(declare-fun contains!2811 (List!10666 (_ BitVec 64)) Bool)

(assert (=> b!543846 (= e!314442 (contains!2811 Nil!10663 (select (arr!16494 a!3154) #b00000000000000000000000000000000)))))

(declare-fun bm!32072 () Bool)

(declare-fun call!32075 () Bool)

(assert (=> bm!32072 (= call!32075 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!63016 (Cons!10662 (select (arr!16494 a!3154) #b00000000000000000000000000000000) Nil!10663) Nil!10663)))))

(declare-fun b!543847 () Bool)

(assert (=> b!543847 (= e!314444 call!32075)))

(declare-fun b!543848 () Bool)

(declare-fun e!314443 () Bool)

(assert (=> b!543848 (= e!314443 e!314441)))

(declare-fun res!338450 () Bool)

(assert (=> b!543848 (=> (not res!338450) (not e!314441))))

(assert (=> b!543848 (= res!338450 (not e!314442))))

(declare-fun res!338452 () Bool)

(assert (=> b!543848 (=> (not res!338452) (not e!314442))))

(assert (=> b!543848 (= res!338452 (validKeyInArray!0 (select (arr!16494 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!543849 () Bool)

(assert (=> b!543849 (= e!314444 call!32075)))

(declare-fun d!81847 () Bool)

(declare-fun res!338451 () Bool)

(assert (=> d!81847 (=> res!338451 e!314443)))

(assert (=> d!81847 (= res!338451 (bvsge #b00000000000000000000000000000000 (size!16858 a!3154)))))

(assert (=> d!81847 (= (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10663) e!314443)))

(assert (= (and d!81847 (not res!338451)) b!543848))

(assert (= (and b!543848 res!338452) b!543846))

(assert (= (and b!543848 res!338450) b!543845))

(assert (= (and b!543845 c!63016) b!543849))

(assert (= (and b!543845 (not c!63016)) b!543847))

(assert (= (or b!543849 b!543847) bm!32072))

(declare-fun m!521833 () Bool)

(assert (=> b!543845 m!521833))

(assert (=> b!543845 m!521833))

(declare-fun m!521835 () Bool)

(assert (=> b!543845 m!521835))

(assert (=> b!543846 m!521833))

(assert (=> b!543846 m!521833))

(declare-fun m!521837 () Bool)

(assert (=> b!543846 m!521837))

(assert (=> bm!32072 m!521833))

(declare-fun m!521839 () Bool)

(assert (=> bm!32072 m!521839))

(assert (=> b!543848 m!521833))

(assert (=> b!543848 m!521833))

(assert (=> b!543848 m!521835))

(assert (=> b!543613 d!81847))

(declare-fun d!81853 () Bool)

(declare-fun res!338460 () Bool)

(declare-fun e!314453 () Bool)

(assert (=> d!81853 (=> res!338460 e!314453)))

(assert (=> d!81853 (= res!338460 (= (select (arr!16494 a!3154) #b00000000000000000000000000000000) k!1998))))

(assert (=> d!81853 (= (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000) e!314453)))

(declare-fun b!543859 () Bool)

(declare-fun e!314454 () Bool)

(assert (=> b!543859 (= e!314453 e!314454)))

(declare-fun res!338461 () Bool)

(assert (=> b!543859 (=> (not res!338461) (not e!314454))))

(assert (=> b!543859 (= res!338461 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16858 a!3154)))))

(declare-fun b!543860 () Bool)

(assert (=> b!543860 (= e!314454 (arrayContainsKey!0 a!3154 k!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81853 (not res!338460)) b!543859))

(assert (= (and b!543859 res!338461) b!543860))

(assert (=> d!81853 m!521833))

(declare-fun m!521847 () Bool)

(assert (=> b!543860 m!521847))

(assert (=> b!543603 d!81853))

(declare-fun b!543885 () Bool)

(declare-fun e!314472 () SeekEntryResult!4959)

(declare-fun lt!248319 () SeekEntryResult!4959)

(assert (=> b!543885 (= e!314472 (Found!4959 (index!22062 lt!248319)))))

(declare-fun b!543886 () Bool)

(declare-fun e!314471 () SeekEntryResult!4959)

(assert (=> b!543886 (= e!314471 (MissingZero!4959 (index!22062 lt!248319)))))

(declare-fun b!543887 () Bool)

(declare-fun c!63029 () Bool)

(declare-fun lt!248320 () (_ BitVec 64))

(assert (=> b!543887 (= c!63029 (= lt!248320 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!543887 (= e!314472 e!314471)))

(declare-fun b!543888 () Bool)

(declare-fun e!314470 () SeekEntryResult!4959)

(assert (=> b!543888 (= e!314470 e!314472)))

(assert (=> b!543888 (= lt!248320 (select (arr!16494 a!3154) (index!22062 lt!248319)))))

(declare-fun c!63027 () Bool)

(assert (=> b!543888 (= c!63027 (= lt!248320 k!1998))))

(declare-fun b!543889 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34330 (_ BitVec 32)) SeekEntryResult!4959)

(assert (=> b!543889 (= e!314471 (seekKeyOrZeroReturnVacant!0 (x!50993 lt!248319) (index!22062 lt!248319) (index!22062 lt!248319) k!1998 a!3154 mask!3216))))

(declare-fun b!543890 () Bool)

(assert (=> b!543890 (= e!314470 Undefined!4959)))

(declare-fun d!81857 () Bool)

(declare-fun lt!248318 () SeekEntryResult!4959)

(assert (=> d!81857 (and (or (is-Undefined!4959 lt!248318) (not (is-Found!4959 lt!248318)) (and (bvsge (index!22061 lt!248318) #b00000000000000000000000000000000) (bvslt (index!22061 lt!248318) (size!16858 a!3154)))) (or (is-Undefined!4959 lt!248318) (is-Found!4959 lt!248318) (not (is-MissingZero!4959 lt!248318)) (and (bvsge (index!22060 lt!248318) #b00000000000000000000000000000000) (bvslt (index!22060 lt!248318) (size!16858 a!3154)))) (or (is-Undefined!4959 lt!248318) (is-Found!4959 lt!248318) (is-MissingZero!4959 lt!248318) (not (is-MissingVacant!4959 lt!248318)) (and (bvsge (index!22063 lt!248318) #b00000000000000000000000000000000) (bvslt (index!22063 lt!248318) (size!16858 a!3154)))) (or (is-Undefined!4959 lt!248318) (ite (is-Found!4959 lt!248318) (= (select (arr!16494 a!3154) (index!22061 lt!248318)) k!1998) (ite (is-MissingZero!4959 lt!248318) (= (select (arr!16494 a!3154) (index!22060 lt!248318)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4959 lt!248318) (= (select (arr!16494 a!3154) (index!22063 lt!248318)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!81857 (= lt!248318 e!314470)))

(declare-fun c!63028 () Bool)

(assert (=> d!81857 (= c!63028 (and (is-Intermediate!4959 lt!248319) (undefined!5771 lt!248319)))))

(assert (=> d!81857 (= lt!248319 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1998 mask!3216) k!1998 a!3154 mask!3216))))

(assert (=> d!81857 (validMask!0 mask!3216)))

(assert (=> d!81857 (= (seekEntryOrOpen!0 k!1998 a!3154 mask!3216) lt!248318)))

(assert (= (and d!81857 c!63028) b!543890))

(assert (= (and d!81857 (not c!63028)) b!543888))

(assert (= (and b!543888 c!63027) b!543885))

(assert (= (and b!543888 (not c!63027)) b!543887))

(assert (= (and b!543887 c!63029) b!543886))

(assert (= (and b!543887 (not c!63029)) b!543889))

(declare-fun m!521859 () Bool)

(assert (=> b!543888 m!521859))

(declare-fun m!521861 () Bool)

(assert (=> b!543889 m!521861))

(assert (=> d!81857 m!521683))

(declare-fun m!521863 () Bool)

(assert (=> d!81857 m!521863))

(declare-fun m!521865 () Bool)

(assert (=> d!81857 m!521865))

(declare-fun m!521867 () Bool)

(assert (=> d!81857 m!521867))

(assert (=> d!81857 m!521863))

(declare-fun m!521869 () Bool)

(assert (=> d!81857 m!521869))

(declare-fun m!521871 () Bool)

(assert (=> d!81857 m!521871))

(assert (=> b!543604 d!81857))

(declare-fun b!543917 () Bool)

(declare-fun e!314489 () Bool)

(declare-fun e!314490 () Bool)

(assert (=> b!543917 (= e!314489 e!314490)))

(declare-fun lt!248331 () (_ BitVec 64))

(assert (=> b!543917 (= lt!248331 (select (arr!16494 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16882 0))(
  ( (Unit!16883) )
))
(declare-fun lt!248332 () Unit!16882)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34330 (_ BitVec 64) (_ BitVec 32)) Unit!16882)

(assert (=> b!543917 (= lt!248332 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!248331 #b00000000000000000000000000000000))))

(assert (=> b!543917 (arrayContainsKey!0 a!3154 lt!248331 #b00000000000000000000000000000000)))

(declare-fun lt!248333 () Unit!16882)

(assert (=> b!543917 (= lt!248333 lt!248332)))

(declare-fun res!338479 () Bool)

(assert (=> b!543917 (= res!338479 (= (seekEntryOrOpen!0 (select (arr!16494 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4959 #b00000000000000000000000000000000)))))

(assert (=> b!543917 (=> (not res!338479) (not e!314490))))

(declare-fun d!81867 () Bool)

(declare-fun res!338478 () Bool)

(declare-fun e!314491 () Bool)

(assert (=> d!81867 (=> res!338478 e!314491)))

(assert (=> d!81867 (= res!338478 (bvsge #b00000000000000000000000000000000 (size!16858 a!3154)))))

(assert (=> d!81867 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!314491)))

(declare-fun b!543918 () Bool)

(declare-fun call!32084 () Bool)

(assert (=> b!543918 (= e!314489 call!32084)))

(declare-fun b!543919 () Bool)

(assert (=> b!543919 (= e!314491 e!314489)))

(declare-fun c!63038 () Bool)

(assert (=> b!543919 (= c!63038 (validKeyInArray!0 (select (arr!16494 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!543920 () Bool)

(assert (=> b!543920 (= e!314490 call!32084)))

(declare-fun bm!32081 () Bool)

(assert (=> bm!32081 (= call!32084 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(assert (= (and d!81867 (not res!338478)) b!543919))

(assert (= (and b!543919 c!63038) b!543917))

(assert (= (and b!543919 (not c!63038)) b!543918))

(assert (= (and b!543917 res!338479) b!543920))

(assert (= (or b!543920 b!543918) bm!32081))

(assert (=> b!543917 m!521833))

(declare-fun m!521873 () Bool)

(assert (=> b!543917 m!521873))

(declare-fun m!521875 () Bool)

(assert (=> b!543917 m!521875))

(assert (=> b!543917 m!521833))

(declare-fun m!521877 () Bool)

(assert (=> b!543917 m!521877))

(assert (=> b!543919 m!521833))

(assert (=> b!543919 m!521833))

(assert (=> b!543919 m!521835))

(declare-fun m!521879 () Bool)

(assert (=> bm!32081 m!521879))

(assert (=> b!543609 d!81867))

(declare-fun b!543921 () Bool)

(declare-fun e!314493 () SeekEntryResult!4959)

(assert (=> b!543921 (= e!314493 (Intermediate!4959 true index!1177 x!1030))))

(declare-fun b!543922 () Bool)

(declare-fun e!314495 () Bool)

(declare-fun lt!248334 () SeekEntryResult!4959)

(assert (=> b!543922 (= e!314495 (bvsge (x!50993 lt!248334) #b01111111111111111111111111111110))))

(declare-fun b!543923 () Bool)

(declare-fun e!314492 () Bool)

(assert (=> b!543923 (= e!314495 e!314492)))

(declare-fun res!338482 () Bool)

(assert (=> b!543923 (= res!338482 (and (is-Intermediate!4959 lt!248334) (not (undefined!5771 lt!248334)) (bvslt (x!50993 lt!248334) #b01111111111111111111111111111110) (bvsge (x!50993 lt!248334) #b00000000000000000000000000000000) (bvsge (x!50993 lt!248334) x!1030)))))

(assert (=> b!543923 (=> (not res!338482) (not e!314492))))

(declare-fun b!543924 () Bool)

(assert (=> b!543924 (and (bvsge (index!22062 lt!248334) #b00000000000000000000000000000000) (bvslt (index!22062 lt!248334) (size!16858 a!3154)))))

(declare-fun res!338481 () Bool)

(assert (=> b!543924 (= res!338481 (= (select (arr!16494 a!3154) (index!22062 lt!248334)) (select (arr!16494 a!3154) j!147)))))

(declare-fun e!314494 () Bool)

(assert (=> b!543924 (=> res!338481 e!314494)))

(assert (=> b!543924 (= e!314492 e!314494)))

(declare-fun d!81869 () Bool)

(assert (=> d!81869 e!314495))

(declare-fun c!63040 () Bool)

(assert (=> d!81869 (= c!63040 (and (is-Intermediate!4959 lt!248334) (undefined!5771 lt!248334)))))

(assert (=> d!81869 (= lt!248334 e!314493)))

(declare-fun c!63039 () Bool)

(assert (=> d!81869 (= c!63039 (bvsge x!1030 #b01111111111111111111111111111110))))

(declare-fun lt!248335 () (_ BitVec 64))

(assert (=> d!81869 (= lt!248335 (select (arr!16494 a!3154) index!1177))))

(assert (=> d!81869 (validMask!0 mask!3216)))

(assert (=> d!81869 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16494 a!3154) j!147) a!3154 mask!3216) lt!248334)))

(declare-fun b!543925 () Bool)

(declare-fun e!314496 () SeekEntryResult!4959)

(assert (=> b!543925 (= e!314493 e!314496)))

(declare-fun c!63041 () Bool)

(assert (=> b!543925 (= c!63041 (or (= lt!248335 (select (arr!16494 a!3154) j!147)) (= (bvadd lt!248335 lt!248335) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!543926 () Bool)

(assert (=> b!543926 (and (bvsge (index!22062 lt!248334) #b00000000000000000000000000000000) (bvslt (index!22062 lt!248334) (size!16858 a!3154)))))

(assert (=> b!543926 (= e!314494 (= (select (arr!16494 a!3154) (index!22062 lt!248334)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!543927 () Bool)

(assert (=> b!543927 (= e!314496 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) (select (arr!16494 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!543928 () Bool)

(assert (=> b!543928 (and (bvsge (index!22062 lt!248334) #b00000000000000000000000000000000) (bvslt (index!22062 lt!248334) (size!16858 a!3154)))))

(declare-fun res!338480 () Bool)

(assert (=> b!543928 (= res!338480 (= (select (arr!16494 a!3154) (index!22062 lt!248334)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!543928 (=> res!338480 e!314494)))

(declare-fun b!543929 () Bool)

(assert (=> b!543929 (= e!314496 (Intermediate!4959 false index!1177 x!1030))))

(assert (= (and d!81869 c!63039) b!543921))

(assert (= (and d!81869 (not c!63039)) b!543925))

(assert (= (and b!543925 c!63041) b!543929))

(assert (= (and b!543925 (not c!63041)) b!543927))

(assert (= (and d!81869 c!63040) b!543922))

(assert (= (and d!81869 (not c!63040)) b!543923))

(assert (= (and b!543923 res!338482) b!543924))

(assert (= (and b!543924 (not res!338481)) b!543928))

(assert (= (and b!543928 (not res!338480)) b!543926))

(declare-fun m!521881 () Bool)

(assert (=> b!543926 m!521881))

(assert (=> d!81869 m!521699))

(assert (=> d!81869 m!521683))

(assert (=> b!543928 m!521881))

(assert (=> b!543927 m!521693))

(assert (=> b!543927 m!521693))

(assert (=> b!543927 m!521673))

(declare-fun m!521883 () Bool)

(assert (=> b!543927 m!521883))

(assert (=> b!543924 m!521881))

(assert (=> b!543610 d!81869))

(declare-fun d!81871 () Bool)

(declare-fun lt!248340 () (_ BitVec 32))

(assert (=> d!81871 (and (bvsge lt!248340 #b00000000000000000000000000000000) (bvslt lt!248340 (bvadd mask!3216 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!81871 (= lt!248340 (choose!52 index!1177 x!1030 mask!3216))))

(assert (=> d!81871 (validMask!0 mask!3216)))

(assert (=> d!81871 (= (nextIndex!0 index!1177 x!1030 mask!3216) lt!248340)))

(declare-fun bs!16973 () Bool)

(assert (= bs!16973 d!81871))

(declare-fun m!521887 () Bool)

(assert (=> bs!16973 m!521887))

(assert (=> bs!16973 m!521683))

(assert (=> b!543605 d!81871))

(declare-fun d!81873 () Bool)

(assert (=> d!81873 (= (validKeyInArray!0 k!1998) (and (not (= k!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!543606 d!81873))

(push 1)

(assert (not d!81871))

(assert (not b!543927))

(assert (not bm!32081))

(assert (not b!543860))

(assert (not b!543919))

(assert (not b!543807))

(assert (not b!543917))

(assert (not d!81869))

(assert (not b!543846))

(assert (not b!543848))

(assert (not b!543889))

(assert (not d!81857))

(assert (not d!81833))

(assert (not bm!32072))

(assert (not b!543845))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!543948 () Bool)

(declare-fun e!314507 () Bool)

(declare-fun e!314508 () Bool)

(assert (=> b!543948 (= e!314507 e!314508)))

(declare-fun lt!248349 () (_ BitVec 64))

(assert (=> b!543948 (= lt!248349 (select (arr!16494 a!3154) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!248350 () Unit!16882)

(assert (=> b!543948 (= lt!248350 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!248349 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!543948 (arrayContainsKey!0 a!3154 lt!248349 #b00000000000000000000000000000000)))

(declare-fun lt!248351 () Unit!16882)

(assert (=> b!543948 (= lt!248351 lt!248350)))

(declare-fun res!338491 () Bool)

(assert (=> b!543948 (= res!338491 (= (seekEntryOrOpen!0 (select (arr!16494 a!3154) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!3154 mask!3216) (Found!4959 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!543948 (=> (not res!338491) (not e!314508))))

(declare-fun d!81879 () Bool)

(declare-fun res!338490 () Bool)

(declare-fun e!314509 () Bool)

(assert (=> d!81879 (=> res!338490 e!314509)))

(assert (=> d!81879 (= res!338490 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16858 a!3154)))))

(assert (=> d!81879 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216) e!314509)))

(declare-fun b!543949 () Bool)

(declare-fun call!32085 () Bool)

(assert (=> b!543949 (= e!314507 call!32085)))

(declare-fun b!543950 () Bool)

(assert (=> b!543950 (= e!314509 e!314507)))

(declare-fun c!63048 () Bool)

(assert (=> b!543950 (= c!63048 (validKeyInArray!0 (select (arr!16494 a!3154) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!543951 () Bool)

(assert (=> b!543951 (= e!314508 call!32085)))

(declare-fun bm!32082 () Bool)

(assert (=> bm!32082 (= call!32085 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!3154 mask!3216))))

(assert (= (and d!81879 (not res!338490)) b!543950))

(assert (= (and b!543950 c!63048) b!543948))

(assert (= (and b!543950 (not c!63048)) b!543949))

(assert (= (and b!543948 res!338491) b!543951))

(assert (= (or b!543951 b!543949) bm!32082))

(declare-fun m!521899 () Bool)

(assert (=> b!543948 m!521899))

(declare-fun m!521901 () Bool)

(assert (=> b!543948 m!521901))

(declare-fun m!521903 () Bool)

(assert (=> b!543948 m!521903))

(assert (=> b!543948 m!521899))

(declare-fun m!521905 () Bool)

(assert (=> b!543948 m!521905))

(assert (=> b!543950 m!521899))

(assert (=> b!543950 m!521899))

(declare-fun m!521907 () Bool)

(assert (=> b!543950 m!521907))

(declare-fun m!521909 () Bool)

(assert (=> bm!32082 m!521909))

(assert (=> bm!32081 d!81879))

(assert (=> d!81833 d!81825))

(assert (=> d!81869 d!81825))

(declare-fun d!81881 () Bool)

(assert (=> d!81881 (= (validKeyInArray!0 (select (arr!16494 a!3154) #b00000000000000000000000000000000)) (and (not (= (select (arr!16494 a!3154) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16494 a!3154) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!543848 d!81881))

(assert (=> b!543919 d!81881))

(declare-fun b!543952 () Bool)

(declare-fun e!314511 () SeekEntryResult!4959)

(assert (=> b!543952 (= e!314511 (Intermediate!4959 true (nextIndex!0 index!1177 x!1030 mask!3216) (bvadd x!1030 #b00000000000000000000000000000001)))))

(declare-fun b!543953 () Bool)

(declare-fun e!314513 () Bool)

(declare-fun lt!248352 () SeekEntryResult!4959)

(assert (=> b!543953 (= e!314513 (bvsge (x!50993 lt!248352) #b01111111111111111111111111111110))))

(declare-fun b!543954 () Bool)

(declare-fun e!314510 () Bool)

(assert (=> b!543954 (= e!314513 e!314510)))

(declare-fun res!338494 () Bool)

(assert (=> b!543954 (= res!338494 (and (is-Intermediate!4959 lt!248352) (not (undefined!5771 lt!248352)) (bvslt (x!50993 lt!248352) #b01111111111111111111111111111110) (bvsge (x!50993 lt!248352) #b00000000000000000000000000000000) (bvsge (x!50993 lt!248352) (bvadd x!1030 #b00000000000000000000000000000001))))))

(assert (=> b!543954 (=> (not res!338494) (not e!314510))))

(declare-fun b!543955 () Bool)

(assert (=> b!543955 (and (bvsge (index!22062 lt!248352) #b00000000000000000000000000000000) (bvslt (index!22062 lt!248352) (size!16858 a!3154)))))

(declare-fun res!338493 () Bool)

(assert (=> b!543955 (= res!338493 (= (select (arr!16494 a!3154) (index!22062 lt!248352)) (select (arr!16494 a!3154) j!147)))))

(declare-fun e!314512 () Bool)

(assert (=> b!543955 (=> res!338493 e!314512)))

(assert (=> b!543955 (= e!314510 e!314512)))

(declare-fun d!81883 () Bool)

(assert (=> d!81883 e!314513))

(declare-fun c!63050 () Bool)

(assert (=> d!81883 (= c!63050 (and (is-Intermediate!4959 lt!248352) (undefined!5771 lt!248352)))))

(assert (=> d!81883 (= lt!248352 e!314511)))

(declare-fun c!63049 () Bool)

(assert (=> d!81883 (= c!63049 (bvsge (bvadd x!1030 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!248353 () (_ BitVec 64))

(assert (=> d!81883 (= lt!248353 (select (arr!16494 a!3154) (nextIndex!0 index!1177 x!1030 mask!3216)))))

(assert (=> d!81883 (validMask!0 mask!3216)))

(assert (=> d!81883 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) (select (arr!16494 a!3154) j!147) a!3154 mask!3216) lt!248352)))

(declare-fun b!543956 () Bool)

(declare-fun e!314514 () SeekEntryResult!4959)

(assert (=> b!543956 (= e!314511 e!314514)))

(declare-fun c!63051 () Bool)

(assert (=> b!543956 (= c!63051 (or (= lt!248353 (select (arr!16494 a!3154) j!147)) (= (bvadd lt!248353 lt!248353) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!543957 () Bool)

(assert (=> b!543957 (and (bvsge (index!22062 lt!248352) #b00000000000000000000000000000000) (bvslt (index!22062 lt!248352) (size!16858 a!3154)))))

(assert (=> b!543957 (= e!314512 (= (select (arr!16494 a!3154) (index!22062 lt!248352)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!543958 () Bool)

(assert (=> b!543958 (= e!314514 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1177 x!1030 mask!3216) (bvadd x!1030 #b00000000000000000000000000000001) mask!3216) (select (arr!16494 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!543959 () Bool)

(assert (=> b!543959 (and (bvsge (index!22062 lt!248352) #b00000000000000000000000000000000) (bvslt (index!22062 lt!248352) (size!16858 a!3154)))))

(declare-fun res!338492 () Bool)

(assert (=> b!543959 (= res!338492 (= (select (arr!16494 a!3154) (index!22062 lt!248352)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!543959 (=> res!338492 e!314512)))

(declare-fun b!543960 () Bool)

(assert (=> b!543960 (= e!314514 (Intermediate!4959 false (nextIndex!0 index!1177 x!1030 mask!3216) (bvadd x!1030 #b00000000000000000000000000000001)))))

(assert (= (and d!81883 c!63049) b!543952))

(assert (= (and d!81883 (not c!63049)) b!543956))

(assert (= (and b!543956 c!63051) b!543960))

(assert (= (and b!543956 (not c!63051)) b!543958))

(assert (= (and d!81883 c!63050) b!543953))

(assert (= (and d!81883 (not c!63050)) b!543954))

(assert (= (and b!543954 res!338494) b!543955))

(assert (= (and b!543955 (not res!338493)) b!543959))

(assert (= (and b!543959 (not res!338492)) b!543957))

(declare-fun m!521911 () Bool)

(assert (=> b!543957 m!521911))

(assert (=> d!81883 m!521693))

(declare-fun m!521913 () Bool)

(assert (=> d!81883 m!521913))

(assert (=> d!81883 m!521683))

(assert (=> b!543959 m!521911))

(assert (=> b!543958 m!521693))

(declare-fun m!521915 () Bool)

(assert (=> b!543958 m!521915))

(assert (=> b!543958 m!521915))

(assert (=> b!543958 m!521673))

(declare-fun m!521917 () Bool)

(assert (=> b!543958 m!521917))

(assert (=> b!543955 m!521911))

(assert (=> b!543927 d!81883))

(assert (=> b!543927 d!81871))

(declare-fun b!543961 () Bool)

(declare-fun e!314516 () SeekEntryResult!4959)

(assert (=> b!543961 (= e!314516 (Intermediate!4959 true (toIndex!0 k!1998 mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!543962 () Bool)

(declare-fun e!314518 () Bool)

(declare-fun lt!248354 () SeekEntryResult!4959)

(assert (=> b!543962 (= e!314518 (bvsge (x!50993 lt!248354) #b01111111111111111111111111111110))))

(declare-fun b!543963 () Bool)

(declare-fun e!314515 () Bool)

(assert (=> b!543963 (= e!314518 e!314515)))

(declare-fun res!338497 () Bool)

(assert (=> b!543963 (= res!338497 (and (is-Intermediate!4959 lt!248354) (not (undefined!5771 lt!248354)) (bvslt (x!50993 lt!248354) #b01111111111111111111111111111110) (bvsge (x!50993 lt!248354) #b00000000000000000000000000000000) (bvsge (x!50993 lt!248354) #b00000000000000000000000000000000)))))

(assert (=> b!543963 (=> (not res!338497) (not e!314515))))

(declare-fun b!543964 () Bool)

(assert (=> b!543964 (and (bvsge (index!22062 lt!248354) #b00000000000000000000000000000000) (bvslt (index!22062 lt!248354) (size!16858 a!3154)))))

(declare-fun res!338496 () Bool)

(assert (=> b!543964 (= res!338496 (= (select (arr!16494 a!3154) (index!22062 lt!248354)) k!1998))))

(declare-fun e!314517 () Bool)

(assert (=> b!543964 (=> res!338496 e!314517)))

(assert (=> b!543964 (= e!314515 e!314517)))

(declare-fun d!81885 () Bool)

(assert (=> d!81885 e!314518))

(declare-fun c!63053 () Bool)

(assert (=> d!81885 (= c!63053 (and (is-Intermediate!4959 lt!248354) (undefined!5771 lt!248354)))))

(assert (=> d!81885 (= lt!248354 e!314516)))

(declare-fun c!63052 () Bool)

(assert (=> d!81885 (= c!63052 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!248355 () (_ BitVec 64))

(assert (=> d!81885 (= lt!248355 (select (arr!16494 a!3154) (toIndex!0 k!1998 mask!3216)))))

(assert (=> d!81885 (validMask!0 mask!3216)))

(assert (=> d!81885 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1998 mask!3216) k!1998 a!3154 mask!3216) lt!248354)))

(declare-fun b!543965 () Bool)

(declare-fun e!314519 () SeekEntryResult!4959)

(assert (=> b!543965 (= e!314516 e!314519)))

(declare-fun c!63054 () Bool)

(assert (=> b!543965 (= c!63054 (or (= lt!248355 k!1998) (= (bvadd lt!248355 lt!248355) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!543966 () Bool)

(assert (=> b!543966 (and (bvsge (index!22062 lt!248354) #b00000000000000000000000000000000) (bvslt (index!22062 lt!248354) (size!16858 a!3154)))))

(assert (=> b!543966 (= e!314517 (= (select (arr!16494 a!3154) (index!22062 lt!248354)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!543967 () Bool)

(assert (=> b!543967 (= e!314519 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!1998 mask!3216) #b00000000000000000000000000000000 mask!3216) k!1998 a!3154 mask!3216))))

(declare-fun b!543968 () Bool)

(assert (=> b!543968 (and (bvsge (index!22062 lt!248354) #b00000000000000000000000000000000) (bvslt (index!22062 lt!248354) (size!16858 a!3154)))))

(declare-fun res!338495 () Bool)

(assert (=> b!543968 (= res!338495 (= (select (arr!16494 a!3154) (index!22062 lt!248354)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!543968 (=> res!338495 e!314517)))

(declare-fun b!543969 () Bool)

(assert (=> b!543969 (= e!314519 (Intermediate!4959 false (toIndex!0 k!1998 mask!3216) #b00000000000000000000000000000000))))

(assert (= (and d!81885 c!63052) b!543961))

(assert (= (and d!81885 (not c!63052)) b!543965))

(assert (= (and b!543965 c!63054) b!543969))

(assert (= (and b!543965 (not c!63054)) b!543967))

(assert (= (and d!81885 c!63053) b!543962))

(assert (= (and d!81885 (not c!63053)) b!543963))

(assert (= (and b!543963 res!338497) b!543964))

(assert (= (and b!543964 (not res!338496)) b!543968))

(assert (= (and b!543968 (not res!338495)) b!543966))

(declare-fun m!521919 () Bool)

(assert (=> b!543966 m!521919))

(assert (=> d!81885 m!521863))

(declare-fun m!521921 () Bool)

(assert (=> d!81885 m!521921))

(assert (=> d!81885 m!521683))

(assert (=> b!543968 m!521919))

(assert (=> b!543967 m!521863))

(declare-fun m!521923 () Bool)

(assert (=> b!543967 m!521923))

(assert (=> b!543967 m!521923))

(declare-fun m!521925 () Bool)

(assert (=> b!543967 m!521925))

(assert (=> b!543964 m!521919))

(assert (=> d!81857 d!81885))

(declare-fun d!81887 () Bool)

(declare-fun lt!248357 () (_ BitVec 32))

(declare-fun lt!248356 () (_ BitVec 32))

(assert (=> d!81887 (= lt!248357 (bvmul (bvxor lt!248356 (bvlshr lt!248356 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!81887 (= lt!248356 ((_ extract 31 0) (bvand (bvxor k!1998 (bvlshr k!1998 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!81887 (and (bvsge mask!3216 #b00000000000000000000000000000000) (let ((res!338434 (let ((h!11621 ((_ extract 31 0) (bvand (bvxor k!1998 (bvlshr k!1998 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!50999 (bvmul (bvxor h!11621 (bvlshr h!11621 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!50999 (bvlshr x!50999 #b00000000000000000000000000001101)) mask!3216))))) (and (bvslt res!338434 (bvadd mask!3216 #b00000000000000000000000000000001)) (bvsge res!338434 #b00000000000000000000000000000000))))))

(assert (=> d!81887 (= (toIndex!0 k!1998 mask!3216) (bvand (bvxor lt!248357 (bvlshr lt!248357 #b00000000000000000000000000001101)) mask!3216))))

(assert (=> d!81857 d!81887))

(assert (=> d!81857 d!81825))

(declare-fun d!81889 () Bool)

(declare-fun res!338498 () Bool)

(declare-fun e!314520 () Bool)

(assert (=> d!81889 (=> res!338498 e!314520)))

(assert (=> d!81889 (= res!338498 (= (select (arr!16494 a!3154) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) k!1998))))

(assert (=> d!81889 (= (arrayContainsKey!0 a!3154 k!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!314520)))

(declare-fun b!543970 () Bool)

(declare-fun e!314521 () Bool)

(assert (=> b!543970 (= e!314520 e!314521)))

(declare-fun res!338499 () Bool)

(assert (=> b!543970 (=> (not res!338499) (not e!314521))))

(assert (=> b!543970 (= res!338499 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!16858 a!3154)))))

(declare-fun b!543971 () Bool)

(assert (=> b!543971 (= e!314521 (arrayContainsKey!0 a!3154 k!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!81889 (not res!338498)) b!543970))

(assert (= (and b!543970 res!338499) b!543971))

(assert (=> d!81889 m!521899))

(declare-fun m!521927 () Bool)

(assert (=> b!543971 m!521927))

(assert (=> b!543860 d!81889))

(declare-fun d!81891 () Bool)

(assert (=> d!81891 (arrayContainsKey!0 a!3154 lt!248331 #b00000000000000000000000000000000)))

(declare-fun lt!248360 () Unit!16882)

(declare-fun choose!13 (array!34330 (_ BitVec 64) (_ BitVec 32)) Unit!16882)

(assert (=> d!81891 (= lt!248360 (choose!13 a!3154 lt!248331 #b00000000000000000000000000000000))))

(assert (=> d!81891 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!81891 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!248331 #b00000000000000000000000000000000) lt!248360)))

(declare-fun bs!16974 () Bool)

(assert (= bs!16974 d!81891))

(assert (=> bs!16974 m!521875))

(declare-fun m!521929 () Bool)

(assert (=> bs!16974 m!521929))

(assert (=> b!543917 d!81891))

(declare-fun d!81893 () Bool)

(declare-fun res!338500 () Bool)

(declare-fun e!314522 () Bool)

(assert (=> d!81893 (=> res!338500 e!314522)))

(assert (=> d!81893 (= res!338500 (= (select (arr!16494 a!3154) #b00000000000000000000000000000000) lt!248331))))

(assert (=> d!81893 (= (arrayContainsKey!0 a!3154 lt!248331 #b00000000000000000000000000000000) e!314522)))

(declare-fun b!543972 () Bool)

(declare-fun e!314523 () Bool)

(assert (=> b!543972 (= e!314522 e!314523)))

(declare-fun res!338501 () Bool)

(assert (=> b!543972 (=> (not res!338501) (not e!314523))))

(assert (=> b!543972 (= res!338501 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16858 a!3154)))))

(declare-fun b!543973 () Bool)

(assert (=> b!543973 (= e!314523 (arrayContainsKey!0 a!3154 lt!248331 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81893 (not res!338500)) b!543972))

(assert (= (and b!543972 res!338501) b!543973))

(assert (=> d!81893 m!521833))

(declare-fun m!521931 () Bool)

(assert (=> b!543973 m!521931))

(assert (=> b!543917 d!81893))

(declare-fun b!543974 () Bool)

(declare-fun e!314526 () SeekEntryResult!4959)

(declare-fun lt!248362 () SeekEntryResult!4959)

(assert (=> b!543974 (= e!314526 (Found!4959 (index!22062 lt!248362)))))

(declare-fun b!543975 () Bool)

(declare-fun e!314525 () SeekEntryResult!4959)

(assert (=> b!543975 (= e!314525 (MissingZero!4959 (index!22062 lt!248362)))))

(declare-fun b!543976 () Bool)

(declare-fun c!63057 () Bool)

(declare-fun lt!248363 () (_ BitVec 64))

(assert (=> b!543976 (= c!63057 (= lt!248363 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!543976 (= e!314526 e!314525)))

(declare-fun b!543977 () Bool)

(declare-fun e!314524 () SeekEntryResult!4959)

(assert (=> b!543977 (= e!314524 e!314526)))

(assert (=> b!543977 (= lt!248363 (select (arr!16494 a!3154) (index!22062 lt!248362)))))

(declare-fun c!63055 () Bool)

(assert (=> b!543977 (= c!63055 (= lt!248363 (select (arr!16494 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!543978 () Bool)

(assert (=> b!543978 (= e!314525 (seekKeyOrZeroReturnVacant!0 (x!50993 lt!248362) (index!22062 lt!248362) (index!22062 lt!248362) (select (arr!16494 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216))))

(declare-fun b!543979 () Bool)

(assert (=> b!543979 (= e!314524 Undefined!4959)))

(declare-fun d!81895 () Bool)

(declare-fun lt!248361 () SeekEntryResult!4959)

(assert (=> d!81895 (and (or (is-Undefined!4959 lt!248361) (not (is-Found!4959 lt!248361)) (and (bvsge (index!22061 lt!248361) #b00000000000000000000000000000000) (bvslt (index!22061 lt!248361) (size!16858 a!3154)))) (or (is-Undefined!4959 lt!248361) (is-Found!4959 lt!248361) (not (is-MissingZero!4959 lt!248361)) (and (bvsge (index!22060 lt!248361) #b00000000000000000000000000000000) (bvslt (index!22060 lt!248361) (size!16858 a!3154)))) (or (is-Undefined!4959 lt!248361) (is-Found!4959 lt!248361) (is-MissingZero!4959 lt!248361) (not (is-MissingVacant!4959 lt!248361)) (and (bvsge (index!22063 lt!248361) #b00000000000000000000000000000000) (bvslt (index!22063 lt!248361) (size!16858 a!3154)))) (or (is-Undefined!4959 lt!248361) (ite (is-Found!4959 lt!248361) (= (select (arr!16494 a!3154) (index!22061 lt!248361)) (select (arr!16494 a!3154) #b00000000000000000000000000000000)) (ite (is-MissingZero!4959 lt!248361) (= (select (arr!16494 a!3154) (index!22060 lt!248361)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4959 lt!248361) (= (select (arr!16494 a!3154) (index!22063 lt!248361)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!81895 (= lt!248361 e!314524)))

(declare-fun c!63056 () Bool)

(assert (=> d!81895 (= c!63056 (and (is-Intermediate!4959 lt!248362) (undefined!5771 lt!248362)))))

(assert (=> d!81895 (= lt!248362 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16494 a!3154) #b00000000000000000000000000000000) mask!3216) (select (arr!16494 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216))))

(assert (=> d!81895 (validMask!0 mask!3216)))

(assert (=> d!81895 (= (seekEntryOrOpen!0 (select (arr!16494 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) lt!248361)))

(assert (= (and d!81895 c!63056) b!543979))

(assert (= (and d!81895 (not c!63056)) b!543977))

(assert (= (and b!543977 c!63055) b!543974))

(assert (= (and b!543977 (not c!63055)) b!543976))

(assert (= (and b!543976 c!63057) b!543975))

(assert (= (and b!543976 (not c!63057)) b!543978))

(declare-fun m!521933 () Bool)

(assert (=> b!543977 m!521933))

(assert (=> b!543978 m!521833))

(declare-fun m!521935 () Bool)

(assert (=> b!543978 m!521935))

(assert (=> d!81895 m!521683))

(assert (=> d!81895 m!521833))

(declare-fun m!521937 () Bool)

(assert (=> d!81895 m!521937))

(declare-fun m!521939 () Bool)

(assert (=> d!81895 m!521939))

(declare-fun m!521941 () Bool)

(assert (=> d!81895 m!521941))

(assert (=> d!81895 m!521937))

(assert (=> d!81895 m!521833))

(declare-fun m!521943 () Bool)

(assert (=> d!81895 m!521943))

(declare-fun m!521945 () Bool)

(assert (=> d!81895 m!521945))

(assert (=> b!543917 d!81895))

(declare-fun d!81897 () Bool)

(declare-fun res!338504 () (_ BitVec 32))

(assert (=> d!81897 (and (bvsge res!338504 #b00000000000000000000000000000000) (bvslt res!338504 (bvadd mask!3216 #b00000000000000000000000000000001)))))

(assert (=> d!81897 true))

(assert (=> d!81897 (= (choose!52 index!1177 x!1030 mask!3216) res!338504)))

(assert (=> d!81871 d!81897))

(assert (=> d!81871 d!81825))

(declare-fun e!314528 () SeekEntryResult!4959)

(declare-fun b!543980 () Bool)

(assert (=> b!543980 (= e!314528 (Intermediate!4959 true (nextIndex!0 (toIndex!0 (select (arr!16494 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!543981 () Bool)

(declare-fun e!314530 () Bool)

(declare-fun lt!248364 () SeekEntryResult!4959)

(assert (=> b!543981 (= e!314530 (bvsge (x!50993 lt!248364) #b01111111111111111111111111111110))))

(declare-fun b!543982 () Bool)

(declare-fun e!314527 () Bool)

(assert (=> b!543982 (= e!314530 e!314527)))

(declare-fun res!338507 () Bool)

(assert (=> b!543982 (= res!338507 (and (is-Intermediate!4959 lt!248364) (not (undefined!5771 lt!248364)) (bvslt (x!50993 lt!248364) #b01111111111111111111111111111110) (bvsge (x!50993 lt!248364) #b00000000000000000000000000000000) (bvsge (x!50993 lt!248364) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!543982 (=> (not res!338507) (not e!314527))))

(declare-fun b!543983 () Bool)

(assert (=> b!543983 (and (bvsge (index!22062 lt!248364) #b00000000000000000000000000000000) (bvslt (index!22062 lt!248364) (size!16858 a!3154)))))

(declare-fun res!338506 () Bool)

(assert (=> b!543983 (= res!338506 (= (select (arr!16494 a!3154) (index!22062 lt!248364)) (select (arr!16494 a!3154) j!147)))))

(declare-fun e!314529 () Bool)

(assert (=> b!543983 (=> res!338506 e!314529)))

(assert (=> b!543983 (= e!314527 e!314529)))

(declare-fun d!81899 () Bool)

(assert (=> d!81899 e!314530))

(declare-fun c!63059 () Bool)

(assert (=> d!81899 (= c!63059 (and (is-Intermediate!4959 lt!248364) (undefined!5771 lt!248364)))))

(assert (=> d!81899 (= lt!248364 e!314528)))

(declare-fun c!63058 () Bool)

(assert (=> d!81899 (= c!63058 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!248365 () (_ BitVec 64))

(assert (=> d!81899 (= lt!248365 (select (arr!16494 a!3154) (nextIndex!0 (toIndex!0 (select (arr!16494 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216)))))

(assert (=> d!81899 (validMask!0 mask!3216)))

(assert (=> d!81899 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16494 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (select (arr!16494 a!3154) j!147) a!3154 mask!3216) lt!248364)))

(declare-fun b!543984 () Bool)

(declare-fun e!314531 () SeekEntryResult!4959)

(assert (=> b!543984 (= e!314528 e!314531)))

(declare-fun c!63060 () Bool)

(assert (=> b!543984 (= c!63060 (or (= lt!248365 (select (arr!16494 a!3154) j!147)) (= (bvadd lt!248365 lt!248365) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!543985 () Bool)

(assert (=> b!543985 (and (bvsge (index!22062 lt!248364) #b00000000000000000000000000000000) (bvslt (index!22062 lt!248364) (size!16858 a!3154)))))

(assert (=> b!543985 (= e!314529 (= (select (arr!16494 a!3154) (index!22062 lt!248364)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!543986 () Bool)

(assert (=> b!543986 (= e!314531 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 (select (arr!16494 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!3216) (select (arr!16494 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!543987 () Bool)

(assert (=> b!543987 (and (bvsge (index!22062 lt!248364) #b00000000000000000000000000000000) (bvslt (index!22062 lt!248364) (size!16858 a!3154)))))

(declare-fun res!338505 () Bool)

(assert (=> b!543987 (= res!338505 (= (select (arr!16494 a!3154) (index!22062 lt!248364)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!543987 (=> res!338505 e!314529)))

(declare-fun b!543988 () Bool)

(assert (=> b!543988 (= e!314531 (Intermediate!4959 false (nextIndex!0 (toIndex!0 (select (arr!16494 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81899 c!63058) b!543980))

(assert (= (and d!81899 (not c!63058)) b!543984))

(assert (= (and b!543984 c!63060) b!543988))

(assert (= (and b!543984 (not c!63060)) b!543986))

(assert (= (and d!81899 c!63059) b!543981))

(assert (= (and d!81899 (not c!63059)) b!543982))

(assert (= (and b!543982 res!338507) b!543983))

(assert (= (and b!543983 (not res!338506)) b!543987))

(assert (= (and b!543987 (not res!338505)) b!543985))

(declare-fun m!521947 () Bool)

(assert (=> b!543985 m!521947))

(assert (=> d!81899 m!521809))

(declare-fun m!521949 () Bool)

(assert (=> d!81899 m!521949))

(assert (=> d!81899 m!521683))

(assert (=> b!543987 m!521947))

(assert (=> b!543986 m!521809))

(declare-fun m!521951 () Bool)

(assert (=> b!543986 m!521951))

(assert (=> b!543986 m!521951))

(assert (=> b!543986 m!521673))

(declare-fun m!521953 () Bool)

(assert (=> b!543986 m!521953))

(assert (=> b!543983 m!521947))

(assert (=> b!543807 d!81899))

(declare-fun d!81901 () Bool)

(declare-fun lt!248366 () (_ BitVec 32))

(assert (=> d!81901 (and (bvsge lt!248366 #b00000000000000000000000000000000) (bvslt lt!248366 (bvadd mask!3216 #b00000000000000000000000000000001)))))

(assert (=> d!81901 (= lt!248366 (choose!52 (toIndex!0 (select (arr!16494 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216))))

(assert (=> d!81901 (validMask!0 mask!3216)))

(assert (=> d!81901 (= (nextIndex!0 (toIndex!0 (select (arr!16494 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) lt!248366)))

(declare-fun bs!16975 () Bool)

(assert (= bs!16975 d!81901))

(assert (=> bs!16975 m!521679))

(declare-fun m!521955 () Bool)

(assert (=> bs!16975 m!521955))

(assert (=> bs!16975 m!521683))

(assert (=> b!543807 d!81901))

(assert (=> b!543845 d!81881))

(declare-fun d!81903 () Bool)

(declare-fun lt!248369 () Bool)

(declare-fun content!225 (List!10666) (Set (_ BitVec 64)))

(assert (=> d!81903 (= lt!248369 (set.member (select (arr!16494 a!3154) #b00000000000000000000000000000000) (content!225 Nil!10663)))))

(declare-fun e!314537 () Bool)

(assert (=> d!81903 (= lt!248369 e!314537)))

(declare-fun res!338513 () Bool)

(assert (=> d!81903 (=> (not res!338513) (not e!314537))))

(assert (=> d!81903 (= res!338513 (is-Cons!10662 Nil!10663))))

(assert (=> d!81903 (= (contains!2811 Nil!10663 (select (arr!16494 a!3154) #b00000000000000000000000000000000)) lt!248369)))

(declare-fun b!543993 () Bool)

(declare-fun e!314536 () Bool)

(assert (=> b!543993 (= e!314537 e!314536)))

(declare-fun res!338512 () Bool)

(assert (=> b!543993 (=> res!338512 e!314536)))

(assert (=> b!543993 (= res!338512 (= (h!11617 Nil!10663) (select (arr!16494 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!543994 () Bool)

(assert (=> b!543994 (= e!314536 (contains!2811 (t!16902 Nil!10663) (select (arr!16494 a!3154) #b00000000000000000000000000000000)))))

(assert (= (and d!81903 res!338513) b!543993))

(assert (= (and b!543993 (not res!338512)) b!543994))

(declare-fun m!521957 () Bool)

(assert (=> d!81903 m!521957))

(assert (=> d!81903 m!521833))

(declare-fun m!521959 () Bool)

(assert (=> d!81903 m!521959))

(assert (=> b!543994 m!521833))

(declare-fun m!521961 () Bool)

(assert (=> b!543994 m!521961))

(assert (=> b!543846 d!81903))

(declare-fun lt!248386 () SeekEntryResult!4959)

(declare-fun d!81905 () Bool)

(assert (=> d!81905 (and (or (is-Undefined!4959 lt!248386) (not (is-Found!4959 lt!248386)) (and (bvsge (index!22061 lt!248386) #b00000000000000000000000000000000) (bvslt (index!22061 lt!248386) (size!16858 a!3154)))) (or (is-Undefined!4959 lt!248386) (is-Found!4959 lt!248386) (not (is-MissingVacant!4959 lt!248386)) (not (= (index!22063 lt!248386) (index!22062 lt!248319))) (and (bvsge (index!22063 lt!248386) #b00000000000000000000000000000000) (bvslt (index!22063 lt!248386) (size!16858 a!3154)))) (or (is-Undefined!4959 lt!248386) (ite (is-Found!4959 lt!248386) (= (select (arr!16494 a!3154) (index!22061 lt!248386)) k!1998) (and (is-MissingVacant!4959 lt!248386) (= (index!22063 lt!248386) (index!22062 lt!248319)) (= (select (arr!16494 a!3154) (index!22063 lt!248386)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!314560 () SeekEntryResult!4959)

(assert (=> d!81905 (= lt!248386 e!314560)))

(declare-fun c!63076 () Bool)

(assert (=> d!81905 (= c!63076 (bvsge (x!50993 lt!248319) #b01111111111111111111111111111110))))

(declare-fun lt!248387 () (_ BitVec 64))

(assert (=> d!81905 (= lt!248387 (select (arr!16494 a!3154) (index!22062 lt!248319)))))

(assert (=> d!81905 (validMask!0 mask!3216)))

(assert (=> d!81905 (= (seekKeyOrZeroReturnVacant!0 (x!50993 lt!248319) (index!22062 lt!248319) (index!22062 lt!248319) k!1998 a!3154 mask!3216) lt!248386)))

(declare-fun b!544030 () Bool)

(assert (=> b!544030 (= e!314560 Undefined!4959)))

(declare-fun b!544031 () Bool)

(declare-fun e!314561 () SeekEntryResult!4959)

(assert (=> b!544031 (= e!314561 (Found!4959 (index!22062 lt!248319)))))

(declare-fun b!544032 () Bool)

(assert (=> b!544032 (= e!314560 e!314561)))

(declare-fun c!63074 () Bool)

(assert (=> b!544032 (= c!63074 (= lt!248387 k!1998))))

(declare-fun b!544033 () Bool)

(declare-fun e!314559 () SeekEntryResult!4959)

(assert (=> b!544033 (= e!314559 (seekKeyOrZeroReturnVacant!0 (bvadd (x!50993 lt!248319) #b00000000000000000000000000000001) (nextIndex!0 (index!22062 lt!248319) (x!50993 lt!248319) mask!3216) (index!22062 lt!248319) k!1998 a!3154 mask!3216))))

(declare-fun b!544034 () Bool)

(assert (=> b!544034 (= e!314559 (MissingVacant!4959 (index!22062 lt!248319)))))

(declare-fun b!544035 () Bool)

(declare-fun c!63075 () Bool)

(assert (=> b!544035 (= c!63075 (= lt!248387 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!544035 (= e!314561 e!314559)))

(assert (= (and d!81905 c!63076) b!544030))

(assert (= (and d!81905 (not c!63076)) b!544032))

(assert (= (and b!544032 c!63074) b!544031))

(assert (= (and b!544032 (not c!63074)) b!544035))

(assert (= (and b!544035 c!63075) b!544034))

(assert (= (and b!544035 (not c!63075)) b!544033))

(declare-fun m!522005 () Bool)

(assert (=> d!81905 m!522005))

(declare-fun m!522007 () Bool)

(assert (=> d!81905 m!522007))

(assert (=> d!81905 m!521859))

(assert (=> d!81905 m!521683))

(declare-fun m!522009 () Bool)

(assert (=> b!544033 m!522009))

(assert (=> b!544033 m!522009))

(declare-fun m!522011 () Bool)

(assert (=> b!544033 m!522011))

(assert (=> b!543889 d!81905))

(declare-fun b!544036 () Bool)

(declare-fun e!314562 () Bool)

(declare-fun e!314565 () Bool)

(assert (=> b!544036 (= e!314562 e!314565)))

(declare-fun c!63077 () Bool)

(assert (=> b!544036 (= c!63077 (validKeyInArray!0 (select (arr!16494 a!3154) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!544037 () Bool)

(declare-fun e!314563 () Bool)

(assert (=> b!544037 (= e!314563 (contains!2811 (ite c!63016 (Cons!10662 (select (arr!16494 a!3154) #b00000000000000000000000000000000) Nil!10663) Nil!10663) (select (arr!16494 a!3154) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun call!32087 () Bool)

(declare-fun bm!32084 () Bool)

(assert (=> bm!32084 (= call!32087 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!63077 (Cons!10662 (select (arr!16494 a!3154) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!63016 (Cons!10662 (select (arr!16494 a!3154) #b00000000000000000000000000000000) Nil!10663) Nil!10663)) (ite c!63016 (Cons!10662 (select (arr!16494 a!3154) #b00000000000000000000000000000000) Nil!10663) Nil!10663))))))

(declare-fun b!544038 () Bool)

(assert (=> b!544038 (= e!314565 call!32087)))

(declare-fun b!544039 () Bool)

(declare-fun e!314564 () Bool)

(assert (=> b!544039 (= e!314564 e!314562)))

(declare-fun res!338523 () Bool)

(assert (=> b!544039 (=> (not res!338523) (not e!314562))))

(assert (=> b!544039 (= res!338523 (not e!314563))))

(declare-fun res!338525 () Bool)

(assert (=> b!544039 (=> (not res!338525) (not e!314563))))

(assert (=> b!544039 (= res!338525 (validKeyInArray!0 (select (arr!16494 a!3154) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!544040 () Bool)

(assert (=> b!544040 (= e!314565 call!32087)))

(declare-fun d!81923 () Bool)

(declare-fun res!338524 () Bool)

(assert (=> d!81923 (=> res!338524 e!314564)))

(assert (=> d!81923 (= res!338524 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16858 a!3154)))))

(assert (=> d!81923 (= (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!63016 (Cons!10662 (select (arr!16494 a!3154) #b00000000000000000000000000000000) Nil!10663) Nil!10663)) e!314564)))

(assert (= (and d!81923 (not res!338524)) b!544039))

(assert (= (and b!544039 res!338525) b!544037))

(assert (= (and b!544039 res!338523) b!544036))

(assert (= (and b!544036 c!63077) b!544040))

(assert (= (and b!544036 (not c!63077)) b!544038))

(assert (= (or b!544040 b!544038) bm!32084))

(assert (=> b!544036 m!521899))

(assert (=> b!544036 m!521899))

(assert (=> b!544036 m!521907))

(assert (=> b!544037 m!521899))

(assert (=> b!544037 m!521899))

(declare-fun m!522013 () Bool)

(assert (=> b!544037 m!522013))

(assert (=> bm!32084 m!521899))

(declare-fun m!522015 () Bool)

(assert (=> bm!32084 m!522015))

(assert (=> b!544039 m!521899))

(assert (=> b!544039 m!521899))

(assert (=> b!544039 m!521907))

(assert (=> bm!32072 d!81923))

(push 1)

(assert (not b!543994))

(assert (not d!81905))

(assert (not b!544033))

(assert (not b!544036))

(assert (not d!81883))

(assert (not b!543986))

(assert (not d!81901))

(assert (not b!543973))

(assert (not b!543978))

(assert (not d!81885))

(assert (not b!543971))

(assert (not b!543950))

(assert (not b!544039))

(assert (not b!544037))

(assert (not d!81899))

(assert (not bm!32082))

(assert (not d!81891))

(assert (not b!543967))

(assert (not bm!32084))

(assert (not d!81903))

(assert (not d!81895))

(assert (not b!543958))

(assert (not b!543948))

(check-sat)

(pop 1)

(push 1)

(check-sat)

