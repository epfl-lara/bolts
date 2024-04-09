; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128764 () Bool)

(assert start!128764)

(declare-fun b!1508459 () Bool)

(declare-fun e!842734 () Bool)

(declare-fun e!842733 () Bool)

(assert (=> b!1508459 (= e!842734 e!842733)))

(declare-fun res!1028544 () Bool)

(assert (=> b!1508459 (=> (not res!1028544) (not e!842733))))

(declare-datatypes ((SeekEntryResult!12712 0))(
  ( (MissingZero!12712 (index!53242 (_ BitVec 32))) (Found!12712 (index!53243 (_ BitVec 32))) (Intermediate!12712 (undefined!13524 Bool) (index!53244 (_ BitVec 32)) (x!135013 (_ BitVec 32))) (Undefined!12712) (MissingVacant!12712 (index!53245 (_ BitVec 32))) )
))
(declare-fun lt!654607 () SeekEntryResult!12712)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100572 0))(
  ( (array!100573 (arr!48520 (Array (_ BitVec 32) (_ BitVec 64))) (size!49071 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100572)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100572 (_ BitVec 32)) SeekEntryResult!12712)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1508459 (= res!1028544 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48520 a!2804) j!70) mask!2512) (select (arr!48520 a!2804) j!70) a!2804 mask!2512) lt!654607))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1508459 (= lt!654607 (Intermediate!12712 false resIndex!21 resX!21))))

(declare-fun b!1508460 () Bool)

(declare-fun lt!654606 () (_ BitVec 32))

(assert (=> b!1508460 (= e!842733 (and (bvsge mask!2512 #b00000000000000000000000000000000) (or (bvslt lt!654606 #b00000000000000000000000000000000) (bvsge lt!654606 (bvadd #b00000000000000000000000000000001 mask!2512)))))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1508460 (= lt!654606 (toIndex!0 (select (store (arr!48520 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512))))

(declare-fun b!1508462 () Bool)

(declare-fun res!1028547 () Bool)

(assert (=> b!1508462 (=> (not res!1028547) (not e!842733))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1508462 (= res!1028547 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48520 a!2804) j!70) a!2804 mask!2512) lt!654607))))

(declare-fun b!1508463 () Bool)

(declare-fun res!1028545 () Bool)

(assert (=> b!1508463 (=> (not res!1028545) (not e!842734))))

(assert (=> b!1508463 (= res!1028545 (and (= (size!49071 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49071 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49071 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1508464 () Bool)

(declare-fun res!1028541 () Bool)

(assert (=> b!1508464 (=> (not res!1028541) (not e!842734))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1508464 (= res!1028541 (validKeyInArray!0 (select (arr!48520 a!2804) i!961)))))

(declare-fun b!1508465 () Bool)

(declare-fun res!1028540 () Bool)

(assert (=> b!1508465 (=> (not res!1028540) (not e!842734))))

(declare-datatypes ((List!35183 0))(
  ( (Nil!35180) (Cons!35179 (h!36589 (_ BitVec 64)) (t!49884 List!35183)) )
))
(declare-fun arrayNoDuplicates!0 (array!100572 (_ BitVec 32) List!35183) Bool)

(assert (=> b!1508465 (= res!1028540 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35180))))

(declare-fun res!1028542 () Bool)

(assert (=> start!128764 (=> (not res!1028542) (not e!842734))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128764 (= res!1028542 (validMask!0 mask!2512))))

(assert (=> start!128764 e!842734))

(assert (=> start!128764 true))

(declare-fun array_inv!37465 (array!100572) Bool)

(assert (=> start!128764 (array_inv!37465 a!2804)))

(declare-fun b!1508461 () Bool)

(declare-fun res!1028546 () Bool)

(assert (=> b!1508461 (=> (not res!1028546) (not e!842734))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100572 (_ BitVec 32)) Bool)

(assert (=> b!1508461 (= res!1028546 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1508466 () Bool)

(declare-fun res!1028543 () Bool)

(assert (=> b!1508466 (=> (not res!1028543) (not e!842734))))

(assert (=> b!1508466 (= res!1028543 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49071 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49071 a!2804))))))

(declare-fun b!1508467 () Bool)

(declare-fun res!1028539 () Bool)

(assert (=> b!1508467 (=> (not res!1028539) (not e!842734))))

(assert (=> b!1508467 (= res!1028539 (validKeyInArray!0 (select (arr!48520 a!2804) j!70)))))

(assert (= (and start!128764 res!1028542) b!1508463))

(assert (= (and b!1508463 res!1028545) b!1508464))

(assert (= (and b!1508464 res!1028541) b!1508467))

(assert (= (and b!1508467 res!1028539) b!1508461))

(assert (= (and b!1508461 res!1028546) b!1508465))

(assert (= (and b!1508465 res!1028540) b!1508466))

(assert (= (and b!1508466 res!1028543) b!1508459))

(assert (= (and b!1508459 res!1028544) b!1508462))

(assert (= (and b!1508462 res!1028547) b!1508460))

(declare-fun m!1391025 () Bool)

(assert (=> start!128764 m!1391025))

(declare-fun m!1391027 () Bool)

(assert (=> start!128764 m!1391027))

(declare-fun m!1391029 () Bool)

(assert (=> b!1508465 m!1391029))

(declare-fun m!1391031 () Bool)

(assert (=> b!1508462 m!1391031))

(assert (=> b!1508462 m!1391031))

(declare-fun m!1391033 () Bool)

(assert (=> b!1508462 m!1391033))

(declare-fun m!1391035 () Bool)

(assert (=> b!1508460 m!1391035))

(declare-fun m!1391037 () Bool)

(assert (=> b!1508460 m!1391037))

(assert (=> b!1508460 m!1391037))

(declare-fun m!1391039 () Bool)

(assert (=> b!1508460 m!1391039))

(assert (=> b!1508467 m!1391031))

(assert (=> b!1508467 m!1391031))

(declare-fun m!1391041 () Bool)

(assert (=> b!1508467 m!1391041))

(assert (=> b!1508459 m!1391031))

(assert (=> b!1508459 m!1391031))

(declare-fun m!1391043 () Bool)

(assert (=> b!1508459 m!1391043))

(assert (=> b!1508459 m!1391043))

(assert (=> b!1508459 m!1391031))

(declare-fun m!1391045 () Bool)

(assert (=> b!1508459 m!1391045))

(declare-fun m!1391047 () Bool)

(assert (=> b!1508461 m!1391047))

(declare-fun m!1391049 () Bool)

(assert (=> b!1508464 m!1391049))

(assert (=> b!1508464 m!1391049))

(declare-fun m!1391051 () Bool)

(assert (=> b!1508464 m!1391051))

(push 1)

(assert (not b!1508461))

(assert (not b!1508460))

(assert (not start!128764))

(assert (not b!1508462))

(assert (not b!1508467))

(assert (not b!1508464))

(assert (not b!1508459))

(assert (not b!1508465))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!158405 () Bool)

(declare-fun lt!654634 () (_ BitVec 32))

(declare-fun lt!654633 () (_ BitVec 32))

(assert (=> d!158405 (= lt!654634 (bvmul (bvxor lt!654633 (bvlshr lt!654633 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158405 (= lt!654633 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48520 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48520 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158405 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1028608 (let ((h!36592 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48520 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48520 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!135016 (bvmul (bvxor h!36592 (bvlshr h!36592 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!135016 (bvlshr x!135016 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1028608 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1028608 #b00000000000000000000000000000000))))))

(assert (=> d!158405 (= (toIndex!0 (select (store (arr!48520 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (bvand (bvxor lt!654634 (bvlshr lt!654634 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1508460 d!158405))

(declare-fun d!158411 () Bool)

(declare-fun res!1028625 () Bool)

(declare-fun e!842786 () Bool)

(assert (=> d!158411 (=> res!1028625 e!842786)))

(assert (=> d!158411 (= res!1028625 (bvsge #b00000000000000000000000000000000 (size!49071 a!2804)))))

(assert (=> d!158411 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35180) e!842786)))

(declare-fun b!1508559 () Bool)

(declare-fun e!842783 () Bool)

(declare-fun call!68301 () Bool)

(assert (=> b!1508559 (= e!842783 call!68301)))

(declare-fun b!1508560 () Bool)

(declare-fun e!842785 () Bool)

(declare-fun contains!9984 (List!35183 (_ BitVec 64)) Bool)

(assert (=> b!1508560 (= e!842785 (contains!9984 Nil!35180 (select (arr!48520 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1508561 () Bool)

(declare-fun e!842784 () Bool)

(assert (=> b!1508561 (= e!842784 e!842783)))

(declare-fun c!139511 () Bool)

(assert (=> b!1508561 (= c!139511 (validKeyInArray!0 (select (arr!48520 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68298 () Bool)

(assert (=> bm!68298 (= call!68301 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139511 (Cons!35179 (select (arr!48520 a!2804) #b00000000000000000000000000000000) Nil!35180) Nil!35180)))))

(declare-fun b!1508562 () Bool)

(assert (=> b!1508562 (= e!842786 e!842784)))

(declare-fun res!1028627 () Bool)

(assert (=> b!1508562 (=> (not res!1028627) (not e!842784))))

(assert (=> b!1508562 (= res!1028627 (not e!842785))))

(declare-fun res!1028626 () Bool)

(assert (=> b!1508562 (=> (not res!1028626) (not e!842785))))

(assert (=> b!1508562 (= res!1028626 (validKeyInArray!0 (select (arr!48520 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1508563 () Bool)

(assert (=> b!1508563 (= e!842783 call!68301)))

(assert (= (and d!158411 (not res!1028625)) b!1508562))

(assert (= (and b!1508562 res!1028626) b!1508560))

(assert (= (and b!1508562 res!1028627) b!1508561))

(assert (= (and b!1508561 c!139511) b!1508563))

(assert (= (and b!1508561 (not c!139511)) b!1508559))

(assert (= (or b!1508563 b!1508559) bm!68298))

(declare-fun m!1391125 () Bool)

(assert (=> b!1508560 m!1391125))

(assert (=> b!1508560 m!1391125))

(declare-fun m!1391127 () Bool)

(assert (=> b!1508560 m!1391127))

(assert (=> b!1508561 m!1391125))

(assert (=> b!1508561 m!1391125))

(declare-fun m!1391129 () Bool)

(assert (=> b!1508561 m!1391129))

(assert (=> bm!68298 m!1391125))

(declare-fun m!1391131 () Bool)

(assert (=> bm!68298 m!1391131))

(assert (=> b!1508562 m!1391125))

(assert (=> b!1508562 m!1391125))

(assert (=> b!1508562 m!1391129))

(assert (=> b!1508465 d!158411))

(declare-fun d!158417 () Bool)

(assert (=> d!158417 (= (validKeyInArray!0 (select (arr!48520 a!2804) i!961)) (and (not (= (select (arr!48520 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48520 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1508464 d!158417))

(declare-fun e!842813 () SeekEntryResult!12712)

(declare-fun b!1508609 () Bool)

(assert (=> b!1508609 (= e!842813 (Intermediate!12712 true (toIndex!0 (select (arr!48520 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1508610 () Bool)

(declare-fun e!842812 () SeekEntryResult!12712)

(assert (=> b!1508610 (= e!842813 e!842812)))

(declare-fun lt!654656 () (_ BitVec 64))

(declare-fun c!139528 () Bool)

(assert (=> b!1508610 (= c!139528 (or (= lt!654656 (select (arr!48520 a!2804) j!70)) (= (bvadd lt!654656 lt!654656) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!158419 () Bool)

(declare-fun e!842816 () Bool)

(assert (=> d!158419 e!842816))

(declare-fun c!139527 () Bool)

(declare-fun lt!654655 () SeekEntryResult!12712)

(assert (=> d!158419 (= c!139527 (and (is-Intermediate!12712 lt!654655) (undefined!13524 lt!654655)))))

(assert (=> d!158419 (= lt!654655 e!842813)))

(declare-fun c!139529 () Bool)

(assert (=> d!158419 (= c!139529 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!158419 (= lt!654656 (select (arr!48520 a!2804) (toIndex!0 (select (arr!48520 a!2804) j!70) mask!2512)))))

(assert (=> d!158419 (validMask!0 mask!2512)))

(assert (=> d!158419 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48520 a!2804) j!70) mask!2512) (select (arr!48520 a!2804) j!70) a!2804 mask!2512) lt!654655)))

(declare-fun b!1508611 () Bool)

(assert (=> b!1508611 (and (bvsge (index!53244 lt!654655) #b00000000000000000000000000000000) (bvslt (index!53244 lt!654655) (size!49071 a!2804)))))

(declare-fun res!1028645 () Bool)

(assert (=> b!1508611 (= res!1028645 (= (select (arr!48520 a!2804) (index!53244 lt!654655)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!842814 () Bool)

(assert (=> b!1508611 (=> res!1028645 e!842814)))

(declare-fun b!1508612 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1508612 (= e!842812 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48520 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48520 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1508613 () Bool)

(assert (=> b!1508613 (and (bvsge (index!53244 lt!654655) #b00000000000000000000000000000000) (bvslt (index!53244 lt!654655) (size!49071 a!2804)))))

(declare-fun res!1028644 () Bool)

(assert (=> b!1508613 (= res!1028644 (= (select (arr!48520 a!2804) (index!53244 lt!654655)) (select (arr!48520 a!2804) j!70)))))

(assert (=> b!1508613 (=> res!1028644 e!842814)))

(declare-fun e!842815 () Bool)

(assert (=> b!1508613 (= e!842815 e!842814)))

(declare-fun b!1508614 () Bool)

(assert (=> b!1508614 (and (bvsge (index!53244 lt!654655) #b00000000000000000000000000000000) (bvslt (index!53244 lt!654655) (size!49071 a!2804)))))

(assert (=> b!1508614 (= e!842814 (= (select (arr!48520 a!2804) (index!53244 lt!654655)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1508615 () Bool)

(assert (=> b!1508615 (= e!842816 e!842815)))

(declare-fun res!1028646 () Bool)

(assert (=> b!1508615 (= res!1028646 (and (is-Intermediate!12712 lt!654655) (not (undefined!13524 lt!654655)) (bvslt (x!135013 lt!654655) #b01111111111111111111111111111110) (bvsge (x!135013 lt!654655) #b00000000000000000000000000000000) (bvsge (x!135013 lt!654655) #b00000000000000000000000000000000)))))

(assert (=> b!1508615 (=> (not res!1028646) (not e!842815))))

(declare-fun b!1508616 () Bool)

(assert (=> b!1508616 (= e!842812 (Intermediate!12712 false (toIndex!0 (select (arr!48520 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1508617 () Bool)

(assert (=> b!1508617 (= e!842816 (bvsge (x!135013 lt!654655) #b01111111111111111111111111111110))))

(assert (= (and d!158419 c!139529) b!1508609))

(assert (= (and d!158419 (not c!139529)) b!1508610))

(assert (= (and b!1508610 c!139528) b!1508616))

(assert (= (and b!1508610 (not c!139528)) b!1508612))

(assert (= (and d!158419 c!139527) b!1508617))

(assert (= (and d!158419 (not c!139527)) b!1508615))

(assert (= (and b!1508615 res!1028646) b!1508613))

(assert (= (and b!1508613 (not res!1028644)) b!1508611))

(assert (= (and b!1508611 (not res!1028645)) b!1508614))

(declare-fun m!1391141 () Bool)

(assert (=> b!1508613 m!1391141))

(assert (=> b!1508611 m!1391141))

(assert (=> d!158419 m!1391043))

(declare-fun m!1391143 () Bool)

(assert (=> d!158419 m!1391143))

(assert (=> d!158419 m!1391025))

(assert (=> b!1508614 m!1391141))

(assert (=> b!1508612 m!1391043))

(declare-fun m!1391145 () Bool)

(assert (=> b!1508612 m!1391145))

(assert (=> b!1508612 m!1391145))

(assert (=> b!1508612 m!1391031))

(declare-fun m!1391147 () Bool)

(assert (=> b!1508612 m!1391147))

(assert (=> b!1508459 d!158419))

(declare-fun d!158433 () Bool)

(declare-fun lt!654662 () (_ BitVec 32))

(declare-fun lt!654661 () (_ BitVec 32))

(assert (=> d!158433 (= lt!654662 (bvmul (bvxor lt!654661 (bvlshr lt!654661 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158433 (= lt!654661 ((_ extract 31 0) (bvand (bvxor (select (arr!48520 a!2804) j!70) (bvlshr (select (arr!48520 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158433 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1028608 (let ((h!36592 ((_ extract 31 0) (bvand (bvxor (select (arr!48520 a!2804) j!70) (bvlshr (select (arr!48520 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!135016 (bvmul (bvxor h!36592 (bvlshr h!36592 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!135016 (bvlshr x!135016 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1028608 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1028608 #b00000000000000000000000000000000))))))

(assert (=> d!158433 (= (toIndex!0 (select (arr!48520 a!2804) j!70) mask!2512) (bvand (bvxor lt!654662 (bvlshr lt!654662 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1508459 d!158433))

(declare-fun d!158435 () Bool)

(declare-fun res!1028655 () Bool)

(declare-fun e!842829 () Bool)

(assert (=> d!158435 (=> res!1028655 e!842829)))

(assert (=> d!158435 (= res!1028655 (bvsge #b00000000000000000000000000000000 (size!49071 a!2804)))))

(assert (=> d!158435 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!842829)))

(declare-fun bm!68301 () Bool)

(declare-fun call!68304 () Bool)

(assert (=> bm!68301 (= call!68304 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1508635 () Bool)

(declare-fun e!842828 () Bool)

(assert (=> b!1508635 (= e!842829 e!842828)))

(declare-fun c!139535 () Bool)

(assert (=> b!1508635 (= c!139535 (validKeyInArray!0 (select (arr!48520 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1508636 () Bool)

(declare-fun e!842830 () Bool)

(assert (=> b!1508636 (= e!842830 call!68304)))

(declare-fun b!1508637 () Bool)

(assert (=> b!1508637 (= e!842828 e!842830)))

(declare-fun lt!654671 () (_ BitVec 64))

(assert (=> b!1508637 (= lt!654671 (select (arr!48520 a!2804) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50292 0))(
  ( (Unit!50293) )
))
(declare-fun lt!654672 () Unit!50292)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100572 (_ BitVec 64) (_ BitVec 32)) Unit!50292)

(assert (=> b!1508637 (= lt!654672 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!654671 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100572 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1508637 (arrayContainsKey!0 a!2804 lt!654671 #b00000000000000000000000000000000)))

(declare-fun lt!654673 () Unit!50292)

(assert (=> b!1508637 (= lt!654673 lt!654672)))

(declare-fun res!1028654 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100572 (_ BitVec 32)) SeekEntryResult!12712)

(assert (=> b!1508637 (= res!1028654 (= (seekEntryOrOpen!0 (select (arr!48520 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!12712 #b00000000000000000000000000000000)))))

(assert (=> b!1508637 (=> (not res!1028654) (not e!842830))))

(declare-fun b!1508638 () Bool)

(assert (=> b!1508638 (= e!842828 call!68304)))

(assert (= (and d!158435 (not res!1028655)) b!1508635))

(assert (= (and b!1508635 c!139535) b!1508637))

(assert (= (and b!1508635 (not c!139535)) b!1508638))

(assert (= (and b!1508637 res!1028654) b!1508636))

(assert (= (or b!1508636 b!1508638) bm!68301))

(declare-fun m!1391157 () Bool)

(assert (=> bm!68301 m!1391157))

(assert (=> b!1508635 m!1391125))

(assert (=> b!1508635 m!1391125))

(assert (=> b!1508635 m!1391129))

(assert (=> b!1508637 m!1391125))

(declare-fun m!1391159 () Bool)

(assert (=> b!1508637 m!1391159))

(declare-fun m!1391161 () Bool)

(assert (=> b!1508637 m!1391161))

(assert (=> b!1508637 m!1391125))

(declare-fun m!1391163 () Bool)

(assert (=> b!1508637 m!1391163))

(assert (=> b!1508461 d!158435))

(declare-fun d!158441 () Bool)

(assert (=> d!158441 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!128764 d!158441))

(declare-fun d!158443 () Bool)

(assert (=> d!158443 (= (array_inv!37465 a!2804) (bvsge (size!49071 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!128764 d!158443))

(declare-fun b!1508666 () Bool)

(declare-fun e!842847 () SeekEntryResult!12712)

(assert (=> b!1508666 (= e!842847 (Intermediate!12712 true index!487 x!534))))

(declare-fun b!1508667 () Bool)

(declare-fun e!842846 () SeekEntryResult!12712)

(assert (=> b!1508667 (= e!842847 e!842846)))

(declare-fun c!139546 () Bool)

(declare-fun lt!654681 () (_ BitVec 64))

(assert (=> b!1508667 (= c!139546 (or (= lt!654681 (select (arr!48520 a!2804) j!70)) (= (bvadd lt!654681 lt!654681) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!158445 () Bool)

(declare-fun e!842850 () Bool)

(assert (=> d!158445 e!842850))

(declare-fun c!139545 () Bool)

(declare-fun lt!654680 () SeekEntryResult!12712)

(assert (=> d!158445 (= c!139545 (and (is-Intermediate!12712 lt!654680) (undefined!13524 lt!654680)))))

(assert (=> d!158445 (= lt!654680 e!842847)))

(declare-fun c!139547 () Bool)

(assert (=> d!158445 (= c!139547 (bvsge x!534 #b01111111111111111111111111111110))))

(assert (=> d!158445 (= lt!654681 (select (arr!48520 a!2804) index!487))))

(assert (=> d!158445 (validMask!0 mask!2512)))

(assert (=> d!158445 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48520 a!2804) j!70) a!2804 mask!2512) lt!654680)))

(declare-fun b!1508668 () Bool)

(assert (=> b!1508668 (and (bvsge (index!53244 lt!654680) #b00000000000000000000000000000000) (bvslt (index!53244 lt!654680) (size!49071 a!2804)))))

(declare-fun res!1028666 () Bool)

(assert (=> b!1508668 (= res!1028666 (= (select (arr!48520 a!2804) (index!53244 lt!654680)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!842848 () Bool)

(assert (=> b!1508668 (=> res!1028666 e!842848)))

(declare-fun b!1508669 () Bool)

(assert (=> b!1508669 (= e!842846 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48520 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1508670 () Bool)

(assert (=> b!1508670 (and (bvsge (index!53244 lt!654680) #b00000000000000000000000000000000) (bvslt (index!53244 lt!654680) (size!49071 a!2804)))))

(declare-fun res!1028665 () Bool)

(assert (=> b!1508670 (= res!1028665 (= (select (arr!48520 a!2804) (index!53244 lt!654680)) (select (arr!48520 a!2804) j!70)))))

(assert (=> b!1508670 (=> res!1028665 e!842848)))

(declare-fun e!842849 () Bool)

(assert (=> b!1508670 (= e!842849 e!842848)))

(declare-fun b!1508671 () Bool)

(assert (=> b!1508671 (and (bvsge (index!53244 lt!654680) #b00000000000000000000000000000000) (bvslt (index!53244 lt!654680) (size!49071 a!2804)))))

(assert (=> b!1508671 (= e!842848 (= (select (arr!48520 a!2804) (index!53244 lt!654680)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1508672 () Bool)

(assert (=> b!1508672 (= e!842850 e!842849)))

(declare-fun res!1028667 () Bool)

(assert (=> b!1508672 (= res!1028667 (and (is-Intermediate!12712 lt!654680) (not (undefined!13524 lt!654680)) (bvslt (x!135013 lt!654680) #b01111111111111111111111111111110) (bvsge (x!135013 lt!654680) #b00000000000000000000000000000000) (bvsge (x!135013 lt!654680) x!534)))))

(assert (=> b!1508672 (=> (not res!1028667) (not e!842849))))

(declare-fun b!1508673 () Bool)

(assert (=> b!1508673 (= e!842846 (Intermediate!12712 false index!487 x!534))))

(declare-fun b!1508674 () Bool)

(assert (=> b!1508674 (= e!842850 (bvsge (x!135013 lt!654680) #b01111111111111111111111111111110))))

(assert (= (and d!158445 c!139547) b!1508666))

(assert (= (and d!158445 (not c!139547)) b!1508667))

(assert (= (and b!1508667 c!139546) b!1508673))

(assert (= (and b!1508667 (not c!139546)) b!1508669))

(assert (= (and d!158445 c!139545) b!1508674))

(assert (= (and d!158445 (not c!139545)) b!1508672))

(assert (= (and b!1508672 res!1028667) b!1508670))

(assert (= (and b!1508670 (not res!1028665)) b!1508668))

(assert (= (and b!1508668 (not res!1028666)) b!1508671))

(declare-fun m!1391173 () Bool)

(assert (=> b!1508670 m!1391173))

(assert (=> b!1508668 m!1391173))

(declare-fun m!1391175 () Bool)

(assert (=> d!158445 m!1391175))

(assert (=> d!158445 m!1391025))

(assert (=> b!1508671 m!1391173))

(declare-fun m!1391177 () Bool)

(assert (=> b!1508669 m!1391177))

(assert (=> b!1508669 m!1391177))

(assert (=> b!1508669 m!1391031))

(declare-fun m!1391179 () Bool)

(assert (=> b!1508669 m!1391179))

(assert (=> b!1508462 d!158445))

(declare-fun d!158449 () Bool)

(assert (=> d!158449 (= (validKeyInArray!0 (select (arr!48520 a!2804) j!70)) (and (not (= (select (arr!48520 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48520 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1508467 d!158449))

(push 1)

(assert (not b!1508635))

(assert (not bm!68298))

(assert (not b!1508637))

(assert (not d!158419))

(assert (not b!1508669))

(assert (not b!1508562))

(assert (not b!1508612))

(assert (not d!158445))

(assert (not bm!68301))

(assert (not b!1508560))

(assert (not b!1508561))

(check-sat)

(pop 1)

(push 1)

(check-sat)

