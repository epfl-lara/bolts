; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128702 () Bool)

(assert start!128702)

(declare-fun b!1508000 () Bool)

(declare-fun e!842520 () Bool)

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1508000 (= e!842520 (and (bvsge mask!2512 #b00000000000000000000000000000000) (bvsgt mask!2512 #b00111111111111111111111111111111)))))

(declare-fun b!1508001 () Bool)

(declare-fun res!1028190 () Bool)

(declare-fun e!842522 () Bool)

(assert (=> b!1508001 (=> (not res!1028190) (not e!842522))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((array!100549 0))(
  ( (array!100550 (arr!48510 (Array (_ BitVec 32) (_ BitVec 64))) (size!49061 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100549)

(assert (=> b!1508001 (= res!1028190 (and (= (size!49061 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49061 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49061 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1508002 () Bool)

(assert (=> b!1508002 (= e!842522 e!842520)))

(declare-fun res!1028192 () Bool)

(assert (=> b!1508002 (=> (not res!1028192) (not e!842520))))

(declare-datatypes ((SeekEntryResult!12702 0))(
  ( (MissingZero!12702 (index!53202 (_ BitVec 32))) (Found!12702 (index!53203 (_ BitVec 32))) (Intermediate!12702 (undefined!13514 Bool) (index!53204 (_ BitVec 32)) (x!134965 (_ BitVec 32))) (Undefined!12702) (MissingVacant!12702 (index!53205 (_ BitVec 32))) )
))
(declare-fun lt!654478 () SeekEntryResult!12702)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100549 (_ BitVec 32)) SeekEntryResult!12702)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1508002 (= res!1028192 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48510 a!2804) j!70) mask!2512) (select (arr!48510 a!2804) j!70) a!2804 mask!2512) lt!654478))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1508002 (= lt!654478 (Intermediate!12702 false resIndex!21 resX!21))))

(declare-fun b!1508003 () Bool)

(declare-fun res!1028193 () Bool)

(assert (=> b!1508003 (=> (not res!1028193) (not e!842522))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1508003 (= res!1028193 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49061 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49061 a!2804))))))

(declare-fun b!1508004 () Bool)

(declare-fun res!1028186 () Bool)

(assert (=> b!1508004 (=> (not res!1028186) (not e!842520))))

(assert (=> b!1508004 (= res!1028186 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48510 a!2804) j!70) a!2804 mask!2512) lt!654478))))

(declare-fun b!1508005 () Bool)

(declare-fun res!1028187 () Bool)

(assert (=> b!1508005 (=> (not res!1028187) (not e!842522))))

(declare-datatypes ((List!35173 0))(
  ( (Nil!35170) (Cons!35169 (h!36576 (_ BitVec 64)) (t!49874 List!35173)) )
))
(declare-fun arrayNoDuplicates!0 (array!100549 (_ BitVec 32) List!35173) Bool)

(assert (=> b!1508005 (= res!1028187 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35170))))

(declare-fun res!1028189 () Bool)

(assert (=> start!128702 (=> (not res!1028189) (not e!842522))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128702 (= res!1028189 (validMask!0 mask!2512))))

(assert (=> start!128702 e!842522))

(assert (=> start!128702 true))

(declare-fun array_inv!37455 (array!100549) Bool)

(assert (=> start!128702 (array_inv!37455 a!2804)))

(declare-fun b!1508006 () Bool)

(declare-fun res!1028188 () Bool)

(assert (=> b!1508006 (=> (not res!1028188) (not e!842522))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1508006 (= res!1028188 (validKeyInArray!0 (select (arr!48510 a!2804) j!70)))))

(declare-fun b!1508007 () Bool)

(declare-fun res!1028185 () Bool)

(assert (=> b!1508007 (=> (not res!1028185) (not e!842522))))

(assert (=> b!1508007 (= res!1028185 (validKeyInArray!0 (select (arr!48510 a!2804) i!961)))))

(declare-fun b!1508008 () Bool)

(declare-fun res!1028191 () Bool)

(assert (=> b!1508008 (=> (not res!1028191) (not e!842522))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100549 (_ BitVec 32)) Bool)

(assert (=> b!1508008 (= res!1028191 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!128702 res!1028189) b!1508001))

(assert (= (and b!1508001 res!1028190) b!1508007))

(assert (= (and b!1508007 res!1028185) b!1508006))

(assert (= (and b!1508006 res!1028188) b!1508008))

(assert (= (and b!1508008 res!1028191) b!1508005))

(assert (= (and b!1508005 res!1028187) b!1508003))

(assert (= (and b!1508003 res!1028193) b!1508002))

(assert (= (and b!1508002 res!1028192) b!1508004))

(assert (= (and b!1508004 res!1028186) b!1508000))

(declare-fun m!1390655 () Bool)

(assert (=> b!1508002 m!1390655))

(assert (=> b!1508002 m!1390655))

(declare-fun m!1390657 () Bool)

(assert (=> b!1508002 m!1390657))

(assert (=> b!1508002 m!1390657))

(assert (=> b!1508002 m!1390655))

(declare-fun m!1390659 () Bool)

(assert (=> b!1508002 m!1390659))

(assert (=> b!1508006 m!1390655))

(assert (=> b!1508006 m!1390655))

(declare-fun m!1390661 () Bool)

(assert (=> b!1508006 m!1390661))

(declare-fun m!1390663 () Bool)

(assert (=> b!1508008 m!1390663))

(declare-fun m!1390665 () Bool)

(assert (=> b!1508005 m!1390665))

(declare-fun m!1390667 () Bool)

(assert (=> start!128702 m!1390667))

(declare-fun m!1390669 () Bool)

(assert (=> start!128702 m!1390669))

(declare-fun m!1390671 () Bool)

(assert (=> b!1508007 m!1390671))

(assert (=> b!1508007 m!1390671))

(declare-fun m!1390673 () Bool)

(assert (=> b!1508007 m!1390673))

(assert (=> b!1508004 m!1390655))

(assert (=> b!1508004 m!1390655))

(declare-fun m!1390675 () Bool)

(assert (=> b!1508004 m!1390675))

(push 1)

(assert (not b!1508005))

(assert (not b!1508006))

(assert (not b!1508002))

(assert (not b!1508004))

(assert (not b!1508007))

(assert (not b!1508008))

(assert (not start!128702))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1508042 () Bool)

(declare-fun e!842548 () Bool)

(declare-fun e!842545 () Bool)

(assert (=> b!1508042 (= e!842548 e!842545)))

(declare-fun res!1028209 () Bool)

(declare-fun lt!654484 () SeekEntryResult!12702)

(assert (=> b!1508042 (= res!1028209 (and (is-Intermediate!12702 lt!654484) (not (undefined!13514 lt!654484)) (bvslt (x!134965 lt!654484) #b01111111111111111111111111111110) (bvsge (x!134965 lt!654484) #b00000000000000000000000000000000) (bvsge (x!134965 lt!654484) x!534)))))

(assert (=> b!1508042 (=> (not res!1028209) (not e!842545))))

(declare-fun b!1508043 () Bool)

(assert (=> b!1508043 (and (bvsge (index!53204 lt!654484) #b00000000000000000000000000000000) (bvslt (index!53204 lt!654484) (size!49061 a!2804)))))

(declare-fun e!842547 () Bool)

(assert (=> b!1508043 (= e!842547 (= (select (arr!48510 a!2804) (index!53204 lt!654484)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1508044 () Bool)

(declare-fun e!842546 () SeekEntryResult!12702)

(assert (=> b!1508044 (= e!842546 (Intermediate!12702 true index!487 x!534))))

(declare-fun b!1508045 () Bool)

(assert (=> b!1508045 (and (bvsge (index!53204 lt!654484) #b00000000000000000000000000000000) (bvslt (index!53204 lt!654484) (size!49061 a!2804)))))

(declare-fun res!1028210 () Bool)

(assert (=> b!1508045 (= res!1028210 (= (select (arr!48510 a!2804) (index!53204 lt!654484)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1508045 (=> res!1028210 e!842547)))

(declare-fun b!1508046 () Bool)

(declare-fun e!842549 () SeekEntryResult!12702)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1508046 (= e!842549 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48510 a!2804) j!70) a!2804 mask!2512))))

(declare-fun d!158343 () Bool)

(assert (=> d!158343 e!842548))

(declare-fun c!139459 () Bool)

(assert (=> d!158343 (= c!139459 (and (is-Intermediate!12702 lt!654484) (undefined!13514 lt!654484)))))

(assert (=> d!158343 (= lt!654484 e!842546)))

(declare-fun c!139458 () Bool)

(assert (=> d!158343 (= c!139458 (bvsge x!534 #b01111111111111111111111111111110))))

(declare-fun lt!654483 () (_ BitVec 64))

(assert (=> d!158343 (= lt!654483 (select (arr!48510 a!2804) index!487))))

(assert (=> d!158343 (validMask!0 mask!2512)))

(assert (=> d!158343 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48510 a!2804) j!70) a!2804 mask!2512) lt!654484)))

(declare-fun b!1508047 () Bool)

(assert (=> b!1508047 (and (bvsge (index!53204 lt!654484) #b00000000000000000000000000000000) (bvslt (index!53204 lt!654484) (size!49061 a!2804)))))

(declare-fun res!1028211 () Bool)

(assert (=> b!1508047 (= res!1028211 (= (select (arr!48510 a!2804) (index!53204 lt!654484)) (select (arr!48510 a!2804) j!70)))))

(assert (=> b!1508047 (=> res!1028211 e!842547)))

(assert (=> b!1508047 (= e!842545 e!842547)))

(declare-fun b!1508048 () Bool)

(assert (=> b!1508048 (= e!842548 (bvsge (x!134965 lt!654484) #b01111111111111111111111111111110))))

(declare-fun b!1508049 () Bool)

(assert (=> b!1508049 (= e!842546 e!842549)))

(declare-fun c!139460 () Bool)

(assert (=> b!1508049 (= c!139460 (or (= lt!654483 (select (arr!48510 a!2804) j!70)) (= (bvadd lt!654483 lt!654483) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1508050 () Bool)

(assert (=> b!1508050 (= e!842549 (Intermediate!12702 false index!487 x!534))))

(assert (= (and d!158343 c!139458) b!1508044))

(assert (= (and d!158343 (not c!139458)) b!1508049))

(assert (= (and b!1508049 c!139460) b!1508050))

(assert (= (and b!1508049 (not c!139460)) b!1508046))

(assert (= (and d!158343 c!139459) b!1508048))

(assert (= (and d!158343 (not c!139459)) b!1508042))

(assert (= (and b!1508042 res!1028209) b!1508047))

(assert (= (and b!1508047 (not res!1028211)) b!1508045))

(assert (= (and b!1508045 (not res!1028210)) b!1508043))

(declare-fun m!1390685 () Bool)

(assert (=> b!1508047 m!1390685))

(assert (=> b!1508045 m!1390685))

(declare-fun m!1390687 () Bool)

(assert (=> b!1508046 m!1390687))

(assert (=> b!1508046 m!1390687))

(assert (=> b!1508046 m!1390655))

(declare-fun m!1390689 () Bool)

(assert (=> b!1508046 m!1390689))

(assert (=> b!1508043 m!1390685))

(declare-fun m!1390691 () Bool)

(assert (=> d!158343 m!1390691))

(assert (=> d!158343 m!1390667))

(assert (=> b!1508004 d!158343))

(declare-fun bm!68277 () Bool)

(declare-fun call!68280 () Bool)

(assert (=> bm!68277 (= call!68280 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1508077 () Bool)

(declare-fun e!842566 () Bool)

(declare-fun e!842567 () Bool)

(assert (=> b!1508077 (= e!842566 e!842567)))

(declare-fun c!139469 () Bool)

(assert (=> b!1508077 (= c!139469 (validKeyInArray!0 (select (arr!48510 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1508078 () Bool)

(assert (=> b!1508078 (= e!842567 call!68280)))

(declare-fun b!1508079 () Bool)

(declare-fun e!842568 () Bool)

(assert (=> b!1508079 (= e!842568 call!68280)))

(declare-fun b!1508080 () Bool)

(assert (=> b!1508080 (= e!842567 e!842568)))

(declare-fun lt!654496 () (_ BitVec 64))

(assert (=> b!1508080 (= lt!654496 (select (arr!48510 a!2804) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50284 0))(
  ( (Unit!50285) )
))
(declare-fun lt!654495 () Unit!50284)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100549 (_ BitVec 64) (_ BitVec 32)) Unit!50284)

(assert (=> b!1508080 (= lt!654495 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!654496 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100549 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1508080 (arrayContainsKey!0 a!2804 lt!654496 #b00000000000000000000000000000000)))

(declare-fun lt!654497 () Unit!50284)

(assert (=> b!1508080 (= lt!654497 lt!654495)))

(declare-fun res!1028223 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100549 (_ BitVec 32)) SeekEntryResult!12702)

(assert (=> b!1508080 (= res!1028223 (= (seekEntryOrOpen!0 (select (arr!48510 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!12702 #b00000000000000000000000000000000)))))

(assert (=> b!1508080 (=> (not res!1028223) (not e!842568))))

(declare-fun d!158355 () Bool)

(declare-fun res!1028222 () Bool)

(assert (=> d!158355 (=> res!1028222 e!842566)))

(assert (=> d!158355 (= res!1028222 (bvsge #b00000000000000000000000000000000 (size!49061 a!2804)))))

(assert (=> d!158355 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!842566)))

(assert (= (and d!158355 (not res!1028222)) b!1508077))

(assert (= (and b!1508077 c!139469) b!1508080))

(assert (= (and b!1508077 (not c!139469)) b!1508078))

(assert (= (and b!1508080 res!1028223) b!1508079))

(assert (= (or b!1508079 b!1508078) bm!68277))

(declare-fun m!1390693 () Bool)

(assert (=> bm!68277 m!1390693))

(declare-fun m!1390695 () Bool)

(assert (=> b!1508077 m!1390695))

(assert (=> b!1508077 m!1390695))

(declare-fun m!1390697 () Bool)

(assert (=> b!1508077 m!1390697))

(assert (=> b!1508080 m!1390695))

(declare-fun m!1390699 () Bool)

(assert (=> b!1508080 m!1390699))

(declare-fun m!1390701 () Bool)

(assert (=> b!1508080 m!1390701))

(assert (=> b!1508080 m!1390695))

(declare-fun m!1390703 () Bool)

(assert (=> b!1508080 m!1390703))

(assert (=> b!1508008 d!158355))

(declare-fun d!158357 () Bool)

(assert (=> d!158357 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!128702 d!158357))

(declare-fun d!158371 () Bool)

(assert (=> d!158371 (= (array_inv!37455 a!2804) (bvsge (size!49061 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!128702 d!158371))

(declare-fun b!1508135 () Bool)

(declare-fun e!842602 () Bool)

(declare-fun e!842599 () Bool)

(assert (=> b!1508135 (= e!842602 e!842599)))

(declare-fun res!1028244 () Bool)

(declare-fun lt!654517 () SeekEntryResult!12702)

(assert (=> b!1508135 (= res!1028244 (and (is-Intermediate!12702 lt!654517) (not (undefined!13514 lt!654517)) (bvslt (x!134965 lt!654517) #b01111111111111111111111111111110) (bvsge (x!134965 lt!654517) #b00000000000000000000000000000000) (bvsge (x!134965 lt!654517) #b00000000000000000000000000000000)))))

(assert (=> b!1508135 (=> (not res!1028244) (not e!842599))))

(declare-fun b!1508136 () Bool)

(assert (=> b!1508136 (and (bvsge (index!53204 lt!654517) #b00000000000000000000000000000000) (bvslt (index!53204 lt!654517) (size!49061 a!2804)))))

(declare-fun e!842601 () Bool)

(assert (=> b!1508136 (= e!842601 (= (select (arr!48510 a!2804) (index!53204 lt!654517)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!842600 () SeekEntryResult!12702)

(declare-fun b!1508137 () Bool)

(assert (=> b!1508137 (= e!842600 (Intermediate!12702 true (toIndex!0 (select (arr!48510 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1508138 () Bool)

(assert (=> b!1508138 (and (bvsge (index!53204 lt!654517) #b00000000000000000000000000000000) (bvslt (index!53204 lt!654517) (size!49061 a!2804)))))

(declare-fun res!1028245 () Bool)

(assert (=> b!1508138 (= res!1028245 (= (select (arr!48510 a!2804) (index!53204 lt!654517)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1508138 (=> res!1028245 e!842601)))

(declare-fun e!842603 () SeekEntryResult!12702)

(declare-fun b!1508139 () Bool)

(assert (=> b!1508139 (= e!842603 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48510 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48510 a!2804) j!70) a!2804 mask!2512))))

(declare-fun d!158373 () Bool)

(assert (=> d!158373 e!842602))

(declare-fun c!139489 () Bool)

(assert (=> d!158373 (= c!139489 (and (is-Intermediate!12702 lt!654517) (undefined!13514 lt!654517)))))

(assert (=> d!158373 (= lt!654517 e!842600)))

(declare-fun c!139488 () Bool)

(assert (=> d!158373 (= c!139488 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!654516 () (_ BitVec 64))

(assert (=> d!158373 (= lt!654516 (select (arr!48510 a!2804) (toIndex!0 (select (arr!48510 a!2804) j!70) mask!2512)))))

(assert (=> d!158373 (validMask!0 mask!2512)))

(assert (=> d!158373 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48510 a!2804) j!70) mask!2512) (select (arr!48510 a!2804) j!70) a!2804 mask!2512) lt!654517)))

(declare-fun b!1508140 () Bool)

(assert (=> b!1508140 (and (bvsge (index!53204 lt!654517) #b00000000000000000000000000000000) (bvslt (index!53204 lt!654517) (size!49061 a!2804)))))

(declare-fun res!1028246 () Bool)

(assert (=> b!1508140 (= res!1028246 (= (select (arr!48510 a!2804) (index!53204 lt!654517)) (select (arr!48510 a!2804) j!70)))))

(assert (=> b!1508140 (=> res!1028246 e!842601)))

(assert (=> b!1508140 (= e!842599 e!842601)))

(declare-fun b!1508141 () Bool)

(assert (=> b!1508141 (= e!842602 (bvsge (x!134965 lt!654517) #b01111111111111111111111111111110))))

(declare-fun b!1508142 () Bool)

(assert (=> b!1508142 (= e!842600 e!842603)))

(declare-fun c!139490 () Bool)

(assert (=> b!1508142 (= c!139490 (or (= lt!654516 (select (arr!48510 a!2804) j!70)) (= (bvadd lt!654516 lt!654516) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1508143 () Bool)

(assert (=> b!1508143 (= e!842603 (Intermediate!12702 false (toIndex!0 (select (arr!48510 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(assert (= (and d!158373 c!139488) b!1508137))

(assert (= (and d!158373 (not c!139488)) b!1508142))

(assert (= (and b!1508142 c!139490) b!1508143))

(assert (= (and b!1508142 (not c!139490)) b!1508139))

(assert (= (and d!158373 c!139489) b!1508141))

(assert (= (and d!158373 (not c!139489)) b!1508135))

(assert (= (and b!1508135 res!1028244) b!1508140))

(assert (= (and b!1508140 (not res!1028246)) b!1508138))

(assert (= (and b!1508138 (not res!1028245)) b!1508136))

(declare-fun m!1390737 () Bool)

(assert (=> b!1508140 m!1390737))

(assert (=> b!1508138 m!1390737))

(assert (=> b!1508139 m!1390657))

(declare-fun m!1390739 () Bool)

(assert (=> b!1508139 m!1390739))

(assert (=> b!1508139 m!1390739))

(assert (=> b!1508139 m!1390655))

(declare-fun m!1390741 () Bool)

(assert (=> b!1508139 m!1390741))

(assert (=> b!1508136 m!1390737))

(assert (=> d!158373 m!1390657))

(declare-fun m!1390743 () Bool)

(assert (=> d!158373 m!1390743))

(assert (=> d!158373 m!1390667))

(assert (=> b!1508002 d!158373))

(declare-fun d!158375 () Bool)

(declare-fun lt!654535 () (_ BitVec 32))

(declare-fun lt!654534 () (_ BitVec 32))

(assert (=> d!158375 (= lt!654535 (bvmul (bvxor lt!654534 (bvlshr lt!654534 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158375 (= lt!654534 ((_ extract 31 0) (bvand (bvxor (select (arr!48510 a!2804) j!70) (bvlshr (select (arr!48510 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158375 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1028247 (let ((h!36579 ((_ extract 31 0) (bvand (bvxor (select (arr!48510 a!2804) j!70) (bvlshr (select (arr!48510 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!134971 (bvmul (bvxor h!36579 (bvlshr h!36579 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!134971 (bvlshr x!134971 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1028247 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1028247 #b00000000000000000000000000000000))))))

