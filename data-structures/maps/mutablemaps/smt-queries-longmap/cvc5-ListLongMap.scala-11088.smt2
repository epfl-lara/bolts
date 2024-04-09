; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129528 () Bool)

(assert start!129528)

(declare-fun b!1520427 () Bool)

(declare-fun res!1039971 () Bool)

(declare-fun e!848135 () Bool)

(assert (=> b!1520427 (=> (not res!1039971) (not e!848135))))

(declare-datatypes ((array!101181 0))(
  ( (array!101182 (arr!48820 (Array (_ BitVec 32) (_ BitVec 64))) (size!49371 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101181)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1520427 (= res!1039971 (validKeyInArray!0 (select (arr!48820 a!2804) i!961)))))

(declare-fun b!1520428 () Bool)

(declare-fun res!1039975 () Bool)

(assert (=> b!1520428 (=> (not res!1039975) (not e!848135))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1520428 (= res!1039975 (and (= (size!49371 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49371 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49371 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1039978 () Bool)

(assert (=> start!129528 (=> (not res!1039978) (not e!848135))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129528 (= res!1039978 (validMask!0 mask!2512))))

(assert (=> start!129528 e!848135))

(assert (=> start!129528 true))

(declare-fun array_inv!37765 (array!101181) Bool)

(assert (=> start!129528 (array_inv!37765 a!2804)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun b!1520429 () Bool)

(declare-fun e!848137 () Bool)

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1520429 (= e!848137 (not (or (not (= (select (arr!48820 a!2804) j!70) (select (store (arr!48820 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48820 a!2804) index!487) (select (arr!48820 a!2804) j!70)) (= (select (arr!48820 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!848136 () Bool)

(assert (=> b!1520429 e!848136))

(declare-fun res!1039976 () Bool)

(assert (=> b!1520429 (=> (not res!1039976) (not e!848136))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101181 (_ BitVec 32)) Bool)

(assert (=> b!1520429 (= res!1039976 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50848 0))(
  ( (Unit!50849) )
))
(declare-fun lt!659046 () Unit!50848)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101181 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50848)

(assert (=> b!1520429 (= lt!659046 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1520430 () Bool)

(declare-fun res!1039974 () Bool)

(assert (=> b!1520430 (=> (not res!1039974) (not e!848135))))

(assert (=> b!1520430 (= res!1039974 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1520431 () Bool)

(declare-fun res!1039970 () Bool)

(assert (=> b!1520431 (=> (not res!1039970) (not e!848135))))

(assert (=> b!1520431 (= res!1039970 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49371 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49371 a!2804))))))

(declare-fun b!1520432 () Bool)

(assert (=> b!1520432 (= e!848135 e!848137)))

(declare-fun res!1039979 () Bool)

(assert (=> b!1520432 (=> (not res!1039979) (not e!848137))))

(declare-datatypes ((SeekEntryResult!13012 0))(
  ( (MissingZero!13012 (index!54442 (_ BitVec 32))) (Found!13012 (index!54443 (_ BitVec 32))) (Intermediate!13012 (undefined!13824 Bool) (index!54444 (_ BitVec 32)) (x!136133 (_ BitVec 32))) (Undefined!13012) (MissingVacant!13012 (index!54445 (_ BitVec 32))) )
))
(declare-fun lt!659047 () SeekEntryResult!13012)

(declare-fun lt!659045 () SeekEntryResult!13012)

(assert (=> b!1520432 (= res!1039979 (= lt!659047 lt!659045))))

(assert (=> b!1520432 (= lt!659045 (Intermediate!13012 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101181 (_ BitVec 32)) SeekEntryResult!13012)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1520432 (= lt!659047 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48820 a!2804) j!70) mask!2512) (select (arr!48820 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1520433 () Bool)

(declare-fun res!1039980 () Bool)

(assert (=> b!1520433 (=> (not res!1039980) (not e!848137))))

(assert (=> b!1520433 (= res!1039980 (= lt!659047 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48820 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48820 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101182 (store (arr!48820 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49371 a!2804)) mask!2512)))))

(declare-fun b!1520434 () Bool)

(declare-fun res!1039977 () Bool)

(assert (=> b!1520434 (=> (not res!1039977) (not e!848135))))

(declare-datatypes ((List!35483 0))(
  ( (Nil!35480) (Cons!35479 (h!36898 (_ BitVec 64)) (t!50184 List!35483)) )
))
(declare-fun arrayNoDuplicates!0 (array!101181 (_ BitVec 32) List!35483) Bool)

(assert (=> b!1520434 (= res!1039977 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35480))))

(declare-fun b!1520435 () Bool)

(declare-fun res!1039972 () Bool)

(assert (=> b!1520435 (=> (not res!1039972) (not e!848135))))

(assert (=> b!1520435 (= res!1039972 (validKeyInArray!0 (select (arr!48820 a!2804) j!70)))))

(declare-fun b!1520436 () Bool)

(declare-fun res!1039973 () Bool)

(assert (=> b!1520436 (=> (not res!1039973) (not e!848137))))

(assert (=> b!1520436 (= res!1039973 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48820 a!2804) j!70) a!2804 mask!2512) lt!659045))))

(declare-fun b!1520437 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101181 (_ BitVec 32)) SeekEntryResult!13012)

(assert (=> b!1520437 (= e!848136 (= (seekEntry!0 (select (arr!48820 a!2804) j!70) a!2804 mask!2512) (Found!13012 j!70)))))

(assert (= (and start!129528 res!1039978) b!1520428))

(assert (= (and b!1520428 res!1039975) b!1520427))

(assert (= (and b!1520427 res!1039971) b!1520435))

(assert (= (and b!1520435 res!1039972) b!1520430))

(assert (= (and b!1520430 res!1039974) b!1520434))

(assert (= (and b!1520434 res!1039977) b!1520431))

(assert (= (and b!1520431 res!1039970) b!1520432))

(assert (= (and b!1520432 res!1039979) b!1520436))

(assert (= (and b!1520436 res!1039973) b!1520433))

(assert (= (and b!1520433 res!1039980) b!1520429))

(assert (= (and b!1520429 res!1039976) b!1520437))

(declare-fun m!1403705 () Bool)

(assert (=> b!1520427 m!1403705))

(assert (=> b!1520427 m!1403705))

(declare-fun m!1403707 () Bool)

(assert (=> b!1520427 m!1403707))

(declare-fun m!1403709 () Bool)

(assert (=> start!129528 m!1403709))

(declare-fun m!1403711 () Bool)

(assert (=> start!129528 m!1403711))

(declare-fun m!1403713 () Bool)

(assert (=> b!1520430 m!1403713))

(declare-fun m!1403715 () Bool)

(assert (=> b!1520434 m!1403715))

(declare-fun m!1403717 () Bool)

(assert (=> b!1520432 m!1403717))

(assert (=> b!1520432 m!1403717))

(declare-fun m!1403719 () Bool)

(assert (=> b!1520432 m!1403719))

(assert (=> b!1520432 m!1403719))

(assert (=> b!1520432 m!1403717))

(declare-fun m!1403721 () Bool)

(assert (=> b!1520432 m!1403721))

(assert (=> b!1520429 m!1403717))

(declare-fun m!1403723 () Bool)

(assert (=> b!1520429 m!1403723))

(declare-fun m!1403725 () Bool)

(assert (=> b!1520429 m!1403725))

(declare-fun m!1403727 () Bool)

(assert (=> b!1520429 m!1403727))

(declare-fun m!1403729 () Bool)

(assert (=> b!1520429 m!1403729))

(declare-fun m!1403731 () Bool)

(assert (=> b!1520429 m!1403731))

(assert (=> b!1520435 m!1403717))

(assert (=> b!1520435 m!1403717))

(declare-fun m!1403733 () Bool)

(assert (=> b!1520435 m!1403733))

(assert (=> b!1520436 m!1403717))

(assert (=> b!1520436 m!1403717))

(declare-fun m!1403735 () Bool)

(assert (=> b!1520436 m!1403735))

(assert (=> b!1520433 m!1403725))

(assert (=> b!1520433 m!1403729))

(assert (=> b!1520433 m!1403729))

(declare-fun m!1403737 () Bool)

(assert (=> b!1520433 m!1403737))

(assert (=> b!1520433 m!1403737))

(assert (=> b!1520433 m!1403729))

(declare-fun m!1403739 () Bool)

(assert (=> b!1520433 m!1403739))

(assert (=> b!1520437 m!1403717))

(assert (=> b!1520437 m!1403717))

(declare-fun m!1403741 () Bool)

(assert (=> b!1520437 m!1403741))

(push 1)

(assert (not b!1520427))

(assert (not b!1520437))

(assert (not b!1520430))

(assert (not b!1520429))

(assert (not start!129528))

(assert (not b!1520432))

(assert (not b!1520436))

(assert (not b!1520433))

(assert (not b!1520435))

(assert (not b!1520434))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1520548 () Bool)

(declare-fun e!848191 () Bool)

(declare-fun e!848190 () Bool)

(assert (=> b!1520548 (= e!848191 e!848190)))

(declare-fun c!139790 () Bool)

(assert (=> b!1520548 (= c!139790 (validKeyInArray!0 (select (arr!48820 a!2804) j!70)))))

(declare-fun d!158877 () Bool)

(declare-fun res!1040064 () Bool)

(assert (=> d!158877 (=> res!1040064 e!848191)))

(assert (=> d!158877 (= res!1040064 (bvsge j!70 (size!49371 a!2804)))))

(assert (=> d!158877 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!848191)))

(declare-fun b!1520549 () Bool)

(declare-fun e!848189 () Bool)

(declare-fun call!68358 () Bool)

(assert (=> b!1520549 (= e!848189 call!68358)))

(declare-fun b!1520550 () Bool)

(assert (=> b!1520550 (= e!848190 call!68358)))

(declare-fun bm!68355 () Bool)

(assert (=> bm!68355 (= call!68358 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1520551 () Bool)

(assert (=> b!1520551 (= e!848190 e!848189)))

(declare-fun lt!659087 () (_ BitVec 64))

(assert (=> b!1520551 (= lt!659087 (select (arr!48820 a!2804) j!70))))

(declare-fun lt!659086 () Unit!50848)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101181 (_ BitVec 64) (_ BitVec 32)) Unit!50848)

(assert (=> b!1520551 (= lt!659086 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!659087 j!70))))

(declare-fun arrayContainsKey!0 (array!101181 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1520551 (arrayContainsKey!0 a!2804 lt!659087 #b00000000000000000000000000000000)))

(declare-fun lt!659088 () Unit!50848)

(assert (=> b!1520551 (= lt!659088 lt!659086)))

(declare-fun res!1040065 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101181 (_ BitVec 32)) SeekEntryResult!13012)

(assert (=> b!1520551 (= res!1040065 (= (seekEntryOrOpen!0 (select (arr!48820 a!2804) j!70) a!2804 mask!2512) (Found!13012 j!70)))))

(assert (=> b!1520551 (=> (not res!1040065) (not e!848189))))

(assert (= (and d!158877 (not res!1040064)) b!1520548))

(assert (= (and b!1520548 c!139790) b!1520551))

(assert (= (and b!1520548 (not c!139790)) b!1520550))

(assert (= (and b!1520551 res!1040065) b!1520549))

(assert (= (or b!1520549 b!1520550) bm!68355))

(assert (=> b!1520548 m!1403717))

(assert (=> b!1520548 m!1403717))

(assert (=> b!1520548 m!1403733))

(declare-fun m!1403833 () Bool)

(assert (=> bm!68355 m!1403833))

(assert (=> b!1520551 m!1403717))

(declare-fun m!1403835 () Bool)

(assert (=> b!1520551 m!1403835))

(declare-fun m!1403837 () Bool)

(assert (=> b!1520551 m!1403837))

(assert (=> b!1520551 m!1403717))

(declare-fun m!1403839 () Bool)

(assert (=> b!1520551 m!1403839))

(assert (=> b!1520429 d!158877))

(declare-fun d!158883 () Bool)

(assert (=> d!158883 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!659091 () Unit!50848)

(declare-fun choose!38 (array!101181 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50848)

(assert (=> d!158883 (= lt!659091 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!158883 (validMask!0 mask!2512)))

(assert (=> d!158883 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!659091)))

(declare-fun bs!43628 () Bool)

(assert (= bs!43628 d!158883))

(assert (=> bs!43628 m!1403731))

(declare-fun m!1403841 () Bool)

(assert (=> bs!43628 m!1403841))

(assert (=> bs!43628 m!1403709))

(assert (=> b!1520429 d!158883))

(declare-fun d!158885 () Bool)

(declare-fun res!1040073 () Bool)

(declare-fun e!848201 () Bool)

(assert (=> d!158885 (=> res!1040073 e!848201)))

(assert (=> d!158885 (= res!1040073 (bvsge #b00000000000000000000000000000000 (size!49371 a!2804)))))

(assert (=> d!158885 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35480) e!848201)))

(declare-fun bm!68358 () Bool)

(declare-fun call!68361 () Bool)

(declare-fun c!139793 () Bool)

(assert (=> bm!68358 (= call!68361 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139793 (Cons!35479 (select (arr!48820 a!2804) #b00000000000000000000000000000000) Nil!35480) Nil!35480)))))

(declare-fun b!1520562 () Bool)

(declare-fun e!848202 () Bool)

(assert (=> b!1520562 (= e!848202 call!68361)))

(declare-fun b!1520563 () Bool)

(declare-fun e!848203 () Bool)

(assert (=> b!1520563 (= e!848201 e!848203)))

(declare-fun res!1040072 () Bool)

(assert (=> b!1520563 (=> (not res!1040072) (not e!848203))))

(declare-fun e!848200 () Bool)

(assert (=> b!1520563 (= res!1040072 (not e!848200))))

(declare-fun res!1040074 () Bool)

(assert (=> b!1520563 (=> (not res!1040074) (not e!848200))))

(assert (=> b!1520563 (= res!1040074 (validKeyInArray!0 (select (arr!48820 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1520564 () Bool)

(assert (=> b!1520564 (= e!848203 e!848202)))

(assert (=> b!1520564 (= c!139793 (validKeyInArray!0 (select (arr!48820 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1520565 () Bool)

(assert (=> b!1520565 (= e!848202 call!68361)))

(declare-fun b!1520566 () Bool)

(declare-fun contains!9992 (List!35483 (_ BitVec 64)) Bool)

(assert (=> b!1520566 (= e!848200 (contains!9992 Nil!35480 (select (arr!48820 a!2804) #b00000000000000000000000000000000)))))

(assert (= (and d!158885 (not res!1040073)) b!1520563))

(assert (= (and b!1520563 res!1040074) b!1520566))

(assert (= (and b!1520563 res!1040072) b!1520564))

(assert (= (and b!1520564 c!139793) b!1520562))

(assert (= (and b!1520564 (not c!139793)) b!1520565))

(assert (= (or b!1520562 b!1520565) bm!68358))

(declare-fun m!1403843 () Bool)

(assert (=> bm!68358 m!1403843))

(declare-fun m!1403845 () Bool)

(assert (=> bm!68358 m!1403845))

(assert (=> b!1520563 m!1403843))

(assert (=> b!1520563 m!1403843))

(declare-fun m!1403847 () Bool)

(assert (=> b!1520563 m!1403847))

(assert (=> b!1520564 m!1403843))

(assert (=> b!1520564 m!1403843))

(assert (=> b!1520564 m!1403847))

(assert (=> b!1520566 m!1403843))

(assert (=> b!1520566 m!1403843))

(declare-fun m!1403849 () Bool)

(assert (=> b!1520566 m!1403849))

(assert (=> b!1520434 d!158885))

(declare-fun d!158895 () Bool)

(assert (=> d!158895 (= (validKeyInArray!0 (select (arr!48820 a!2804) i!961)) (and (not (= (select (arr!48820 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48820 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1520427 d!158895))

(declare-fun b!1520624 () Bool)

(declare-fun e!848241 () SeekEntryResult!13012)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1520624 (= e!848241 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48820 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48820 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1520625 () Bool)

(declare-fun lt!659118 () SeekEntryResult!13012)

(assert (=> b!1520625 (and (bvsge (index!54444 lt!659118) #b00000000000000000000000000000000) (bvslt (index!54444 lt!659118) (size!49371 a!2804)))))

(declare-fun e!848242 () Bool)

(assert (=> b!1520625 (= e!848242 (= (select (arr!48820 a!2804) (index!54444 lt!659118)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1520626 () Bool)

(declare-fun e!848238 () SeekEntryResult!13012)

(assert (=> b!1520626 (= e!848238 e!848241)))

(declare-fun lt!659117 () (_ BitVec 64))

(declare-fun c!139812 () Bool)

(assert (=> b!1520626 (= c!139812 (or (= lt!659117 (select (arr!48820 a!2804) j!70)) (= (bvadd lt!659117 lt!659117) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1520627 () Bool)

(declare-fun e!848240 () Bool)

(assert (=> b!1520627 (= e!848240 (bvsge (x!136133 lt!659118) #b01111111111111111111111111111110))))

(declare-fun b!1520628 () Bool)

(assert (=> b!1520628 (= e!848238 (Intermediate!13012 true (toIndex!0 (select (arr!48820 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1520629 () Bool)

(assert (=> b!1520629 (and (bvsge (index!54444 lt!659118) #b00000000000000000000000000000000) (bvslt (index!54444 lt!659118) (size!49371 a!2804)))))

(declare-fun res!1040098 () Bool)

(assert (=> b!1520629 (= res!1040098 (= (select (arr!48820 a!2804) (index!54444 lt!659118)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1520629 (=> res!1040098 e!848242)))

(declare-fun b!1520630 () Bool)

(declare-fun e!848239 () Bool)

(assert (=> b!1520630 (= e!848240 e!848239)))

(declare-fun res!1040099 () Bool)

(assert (=> b!1520630 (= res!1040099 (and (is-Intermediate!13012 lt!659118) (not (undefined!13824 lt!659118)) (bvslt (x!136133 lt!659118) #b01111111111111111111111111111110) (bvsge (x!136133 lt!659118) #b00000000000000000000000000000000) (bvsge (x!136133 lt!659118) #b00000000000000000000000000000000)))))

(assert (=> b!1520630 (=> (not res!1040099) (not e!848239))))

(declare-fun d!158897 () Bool)

(assert (=> d!158897 e!848240))

(declare-fun c!139813 () Bool)

(assert (=> d!158897 (= c!139813 (and (is-Intermediate!13012 lt!659118) (undefined!13824 lt!659118)))))

(assert (=> d!158897 (= lt!659118 e!848238)))

(declare-fun c!139814 () Bool)

(assert (=> d!158897 (= c!139814 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!158897 (= lt!659117 (select (arr!48820 a!2804) (toIndex!0 (select (arr!48820 a!2804) j!70) mask!2512)))))

(assert (=> d!158897 (validMask!0 mask!2512)))

(assert (=> d!158897 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48820 a!2804) j!70) mask!2512) (select (arr!48820 a!2804) j!70) a!2804 mask!2512) lt!659118)))

(declare-fun b!1520631 () Bool)

(assert (=> b!1520631 (= e!848241 (Intermediate!13012 false (toIndex!0 (select (arr!48820 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1520632 () Bool)

(assert (=> b!1520632 (and (bvsge (index!54444 lt!659118) #b00000000000000000000000000000000) (bvslt (index!54444 lt!659118) (size!49371 a!2804)))))

(declare-fun res!1040097 () Bool)

(assert (=> b!1520632 (= res!1040097 (= (select (arr!48820 a!2804) (index!54444 lt!659118)) (select (arr!48820 a!2804) j!70)))))

(assert (=> b!1520632 (=> res!1040097 e!848242)))

(assert (=> b!1520632 (= e!848239 e!848242)))

(assert (= (and d!158897 c!139814) b!1520628))

(assert (= (and d!158897 (not c!139814)) b!1520626))

(assert (= (and b!1520626 c!139812) b!1520631))

(assert (= (and b!1520626 (not c!139812)) b!1520624))

(assert (= (and d!158897 c!139813) b!1520627))

(assert (= (and d!158897 (not c!139813)) b!1520630))

(assert (= (and b!1520630 res!1040099) b!1520632))

(assert (= (and b!1520632 (not res!1040097)) b!1520629))

(assert (= (and b!1520629 (not res!1040098)) b!1520625))

(declare-fun m!1403871 () Bool)

(assert (=> b!1520625 m!1403871))

(assert (=> b!1520629 m!1403871))

(assert (=> b!1520624 m!1403719))

(declare-fun m!1403873 () Bool)

(assert (=> b!1520624 m!1403873))

(assert (=> b!1520624 m!1403873))

(assert (=> b!1520624 m!1403717))

(declare-fun m!1403875 () Bool)

(assert (=> b!1520624 m!1403875))

(assert (=> b!1520632 m!1403871))

(assert (=> d!158897 m!1403719))

(declare-fun m!1403877 () Bool)

(assert (=> d!158897 m!1403877))

(assert (=> d!158897 m!1403709))

(assert (=> b!1520432 d!158897))

(declare-fun d!158905 () Bool)

(declare-fun lt!659139 () (_ BitVec 32))

(declare-fun lt!659138 () (_ BitVec 32))

(assert (=> d!158905 (= lt!659139 (bvmul (bvxor lt!659138 (bvlshr lt!659138 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158905 (= lt!659138 ((_ extract 31 0) (bvand (bvxor (select (arr!48820 a!2804) j!70) (bvlshr (select (arr!48820 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158905 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1040100 (let ((h!36903 ((_ extract 31 0) (bvand (bvxor (select (arr!48820 a!2804) j!70) (bvlshr (select (arr!48820 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136141 (bvmul (bvxor h!36903 (bvlshr h!36903 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136141 (bvlshr x!136141 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1040100 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1040100 #b00000000000000000000000000000000))))))

(assert (=> d!158905 (= (toIndex!0 (select (arr!48820 a!2804) j!70) mask!2512) (bvand (bvxor lt!659139 (bvlshr lt!659139 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1520432 d!158905))

(declare-fun b!1520670 () Bool)

(declare-fun e!848270 () SeekEntryResult!13012)

(assert (=> b!1520670 (= e!848270 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!48820 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (store (arr!48820 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101182 (store (arr!48820 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49371 a!2804)) mask!2512))))

(declare-fun b!1520671 () Bool)

(declare-fun lt!659141 () SeekEntryResult!13012)

(assert (=> b!1520671 (and (bvsge (index!54444 lt!659141) #b00000000000000000000000000000000) (bvslt (index!54444 lt!659141) (size!49371 (array!101182 (store (arr!48820 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49371 a!2804)))))))

(declare-fun e!848271 () Bool)

(assert (=> b!1520671 (= e!848271 (= (select (arr!48820 (array!101182 (store (arr!48820 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49371 a!2804))) (index!54444 lt!659141)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1520672 () Bool)

(declare-fun e!848267 () SeekEntryResult!13012)

(assert (=> b!1520672 (= e!848267 e!848270)))

(declare-fun lt!659140 () (_ BitVec 64))

(declare-fun c!139828 () Bool)

(assert (=> b!1520672 (= c!139828 (or (= lt!659140 (select (store (arr!48820 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)) (= (bvadd lt!659140 lt!659140) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1520673 () Bool)

(declare-fun e!848269 () Bool)

(assert (=> b!1520673 (= e!848269 (bvsge (x!136133 lt!659141) #b01111111111111111111111111111110))))

(declare-fun b!1520674 () Bool)

(assert (=> b!1520674 (= e!848267 (Intermediate!13012 true (toIndex!0 (select (store (arr!48820 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1520675 () Bool)

(assert (=> b!1520675 (and (bvsge (index!54444 lt!659141) #b00000000000000000000000000000000) (bvslt (index!54444 lt!659141) (size!49371 (array!101182 (store (arr!48820 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49371 a!2804)))))))

(declare-fun res!1040113 () Bool)

(assert (=> b!1520675 (= res!1040113 (= (select (arr!48820 (array!101182 (store (arr!48820 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49371 a!2804))) (index!54444 lt!659141)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1520675 (=> res!1040113 e!848271)))

(declare-fun b!1520676 () Bool)

(declare-fun e!848268 () Bool)

(assert (=> b!1520676 (= e!848269 e!848268)))

(declare-fun res!1040114 () Bool)

(assert (=> b!1520676 (= res!1040114 (and (is-Intermediate!13012 lt!659141) (not (undefined!13824 lt!659141)) (bvslt (x!136133 lt!659141) #b01111111111111111111111111111110) (bvsge (x!136133 lt!659141) #b00000000000000000000000000000000) (bvsge (x!136133 lt!659141) #b00000000000000000000000000000000)))))

(assert (=> b!1520676 (=> (not res!1040114) (not e!848268))))

(declare-fun d!158909 () Bool)

(assert (=> d!158909 e!848269))

(declare-fun c!139829 () Bool)

(assert (=> d!158909 (= c!139829 (and (is-Intermediate!13012 lt!659141) (undefined!13824 lt!659141)))))

(assert (=> d!158909 (= lt!659141 e!848267)))

(declare-fun c!139830 () Bool)

(assert (=> d!158909 (= c!139830 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!158909 (= lt!659140 (select (arr!48820 (array!101182 (store (arr!48820 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49371 a!2804))) (toIndex!0 (select (store (arr!48820 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512)))))

(assert (=> d!158909 (validMask!0 mask!2512)))

(assert (=> d!158909 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48820 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48820 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101182 (store (arr!48820 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49371 a!2804)) mask!2512) lt!659141)))

(declare-fun b!1520677 () Bool)

(assert (=> b!1520677 (= e!848270 (Intermediate!13012 false (toIndex!0 (select (store (arr!48820 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1520678 () Bool)

(assert (=> b!1520678 (and (bvsge (index!54444 lt!659141) #b00000000000000000000000000000000) (bvslt (index!54444 lt!659141) (size!49371 (array!101182 (store (arr!48820 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49371 a!2804)))))))

(declare-fun res!1040112 () Bool)

(assert (=> b!1520678 (= res!1040112 (= (select (arr!48820 (array!101182 (store (arr!48820 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49371 a!2804))) (index!54444 lt!659141)) (select (store (arr!48820 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(assert (=> b!1520678 (=> res!1040112 e!848271)))

(assert (=> b!1520678 (= e!848268 e!848271)))

(assert (= (and d!158909 c!139830) b!1520674))

(assert (= (and d!158909 (not c!139830)) b!1520672))

(assert (= (and b!1520672 c!139828) b!1520677))

(assert (= (and b!1520672 (not c!139828)) b!1520670))

(assert (= (and d!158909 c!139829) b!1520673))

(assert (= (and d!158909 (not c!139829)) b!1520676))

(assert (= (and b!1520676 res!1040114) b!1520678))

(assert (= (and b!1520678 (not res!1040112)) b!1520675))

(assert (= (and b!1520675 (not res!1040113)) b!1520671))

(declare-fun m!1403901 () Bool)

(assert (=> b!1520671 m!1403901))

(assert (=> b!1520675 m!1403901))

(assert (=> b!1520670 m!1403737))

(declare-fun m!1403903 () Bool)

(assert (=> b!1520670 m!1403903))

(assert (=> b!1520670 m!1403903))

(assert (=> b!1520670 m!1403729))

(declare-fun m!1403905 () Bool)

(assert (=> b!1520670 m!1403905))

(assert (=> b!1520678 m!1403901))

(assert (=> d!158909 m!1403737))

(declare-fun m!1403907 () Bool)

(assert (=> d!158909 m!1403907))

(assert (=> d!158909 m!1403709))

(assert (=> b!1520433 d!158909))

(declare-fun d!158915 () Bool)

(declare-fun lt!659143 () (_ BitVec 32))

(declare-fun lt!659142 () (_ BitVec 32))

(assert (=> d!158915 (= lt!659143 (bvmul (bvxor lt!659142 (bvlshr lt!659142 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158915 (= lt!659142 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48820 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48820 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158915 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1040100 (let ((h!36903 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48820 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48820 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136141 (bvmul (bvxor h!36903 (bvlshr h!36903 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136141 (bvlshr x!136141 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1040100 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1040100 #b00000000000000000000000000000000))))))

(assert (=> d!158915 (= (toIndex!0 (select (store (arr!48820 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (bvand (bvxor lt!659143 (bvlshr lt!659143 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1520433 d!158915))

(declare-fun b!1520679 () Bool)

(declare-fun e!848275 () SeekEntryResult!13012)

(assert (=> b!1520679 (= e!848275 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48820 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1520680 () Bool)

(declare-fun lt!659145 () SeekEntryResult!13012)

(assert (=> b!1520680 (and (bvsge (index!54444 lt!659145) #b00000000000000000000000000000000) (bvslt (index!54444 lt!659145) (size!49371 a!2804)))))

(declare-fun e!848276 () Bool)

(assert (=> b!1520680 (= e!848276 (= (select (arr!48820 a!2804) (index!54444 lt!659145)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1520681 () Bool)

(declare-fun e!848272 () SeekEntryResult!13012)

(assert (=> b!1520681 (= e!848272 e!848275)))

(declare-fun lt!659144 () (_ BitVec 64))

(declare-fun c!139831 () Bool)

(assert (=> b!1520681 (= c!139831 (or (= lt!659144 (select (arr!48820 a!2804) j!70)) (= (bvadd lt!659144 lt!659144) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1520682 () Bool)

(declare-fun e!848274 () Bool)

(assert (=> b!1520682 (= e!848274 (bvsge (x!136133 lt!659145) #b01111111111111111111111111111110))))

(declare-fun b!1520683 () Bool)

(assert (=> b!1520683 (= e!848272 (Intermediate!13012 true index!487 x!534))))

(declare-fun b!1520684 () Bool)

(assert (=> b!1520684 (and (bvsge (index!54444 lt!659145) #b00000000000000000000000000000000) (bvslt (index!54444 lt!659145) (size!49371 a!2804)))))

(declare-fun res!1040116 () Bool)

(assert (=> b!1520684 (= res!1040116 (= (select (arr!48820 a!2804) (index!54444 lt!659145)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1520684 (=> res!1040116 e!848276)))

(declare-fun b!1520685 () Bool)

(declare-fun e!848273 () Bool)

(assert (=> b!1520685 (= e!848274 e!848273)))

(declare-fun res!1040117 () Bool)

(assert (=> b!1520685 (= res!1040117 (and (is-Intermediate!13012 lt!659145) (not (undefined!13824 lt!659145)) (bvslt (x!136133 lt!659145) #b01111111111111111111111111111110) (bvsge (x!136133 lt!659145) #b00000000000000000000000000000000) (bvsge (x!136133 lt!659145) x!534)))))

(assert (=> b!1520685 (=> (not res!1040117) (not e!848273))))

(declare-fun d!158921 () Bool)

(assert (=> d!158921 e!848274))

(declare-fun c!139832 () Bool)

(assert (=> d!158921 (= c!139832 (and (is-Intermediate!13012 lt!659145) (undefined!13824 lt!659145)))))

(assert (=> d!158921 (= lt!659145 e!848272)))

(declare-fun c!139833 () Bool)

(assert (=> d!158921 (= c!139833 (bvsge x!534 #b01111111111111111111111111111110))))

(assert (=> d!158921 (= lt!659144 (select (arr!48820 a!2804) index!487))))

(assert (=> d!158921 (validMask!0 mask!2512)))

(assert (=> d!158921 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48820 a!2804) j!70) a!2804 mask!2512) lt!659145)))

(declare-fun b!1520686 () Bool)

(assert (=> b!1520686 (= e!848275 (Intermediate!13012 false index!487 x!534))))

(declare-fun b!1520687 () Bool)

(assert (=> b!1520687 (and (bvsge (index!54444 lt!659145) #b00000000000000000000000000000000) (bvslt (index!54444 lt!659145) (size!49371 a!2804)))))

(declare-fun res!1040115 () Bool)

(assert (=> b!1520687 (= res!1040115 (= (select (arr!48820 a!2804) (index!54444 lt!659145)) (select (arr!48820 a!2804) j!70)))))

(assert (=> b!1520687 (=> res!1040115 e!848276)))

(assert (=> b!1520687 (= e!848273 e!848276)))

(assert (= (and d!158921 c!139833) b!1520683))

(assert (= (and d!158921 (not c!139833)) b!1520681))

(assert (= (and b!1520681 c!139831) b!1520686))

(assert (= (and b!1520681 (not c!139831)) b!1520679))

(assert (= (and d!158921 c!139832) b!1520682))

(assert (= (and d!158921 (not c!139832)) b!1520685))

(assert (= (and b!1520685 res!1040117) b!1520687))

(assert (= (and b!1520687 (not res!1040115)) b!1520684))

(assert (= (and b!1520684 (not res!1040116)) b!1520680))

(declare-fun m!1403909 () Bool)

(assert (=> b!1520680 m!1403909))

(assert (=> b!1520684 m!1403909))

(declare-fun m!1403911 () Bool)

(assert (=> b!1520679 m!1403911))

(assert (=> b!1520679 m!1403911))

(assert (=> b!1520679 m!1403717))

(declare-fun m!1403913 () Bool)

(assert (=> b!1520679 m!1403913))

(assert (=> b!1520687 m!1403909))

(assert (=> d!158921 m!1403727))

(assert (=> d!158921 m!1403709))

(assert (=> b!1520436 d!158921))

(declare-fun d!158923 () Bool)

(declare-fun lt!659173 () SeekEntryResult!13012)

(assert (=> d!158923 (and (or (is-MissingVacant!13012 lt!659173) (not (is-Found!13012 lt!659173)) (and (bvsge (index!54443 lt!659173) #b00000000000000000000000000000000) (bvslt (index!54443 lt!659173) (size!49371 a!2804)))) (not (is-MissingVacant!13012 lt!659173)) (or (not (is-Found!13012 lt!659173)) (= (select (arr!48820 a!2804) (index!54443 lt!659173)) (select (arr!48820 a!2804) j!70))))))

(declare-fun e!848310 () SeekEntryResult!13012)

(assert (=> d!158923 (= lt!659173 e!848310)))

(declare-fun c!139851 () Bool)

(declare-fun lt!659174 () SeekEntryResult!13012)

(assert (=> d!158923 (= c!139851 (and (is-Intermediate!13012 lt!659174) (undefined!13824 lt!659174)))))

(assert (=> d!158923 (= lt!659174 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48820 a!2804) j!70) mask!2512) (select (arr!48820 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!158923 (validMask!0 mask!2512)))

(assert (=> d!158923 (= (seekEntry!0 (select (arr!48820 a!2804) j!70) a!2804 mask!2512) lt!659173)))

(declare-fun b!1520736 () Bool)

(declare-fun e!848311 () SeekEntryResult!13012)

(declare-fun lt!659175 () SeekEntryResult!13012)

(assert (=> b!1520736 (= e!848311 (ite (is-MissingVacant!13012 lt!659175) (MissingZero!13012 (index!54445 lt!659175)) lt!659175))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101181 (_ BitVec 32)) SeekEntryResult!13012)

(assert (=> b!1520736 (= lt!659175 (seekKeyOrZeroReturnVacant!0 (x!136133 lt!659174) (index!54444 lt!659174) (index!54444 lt!659174) (select (arr!48820 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1520737 () Bool)

(declare-fun e!848309 () SeekEntryResult!13012)

(assert (=> b!1520737 (= e!848310 e!848309)))

(declare-fun lt!659176 () (_ BitVec 64))

(assert (=> b!1520737 (= lt!659176 (select (arr!48820 a!2804) (index!54444 lt!659174)))))

(declare-fun c!139849 () Bool)

(assert (=> b!1520737 (= c!139849 (= lt!659176 (select (arr!48820 a!2804) j!70)))))

(declare-fun b!1520738 () Bool)

(assert (=> b!1520738 (= e!848309 (Found!13012 (index!54444 lt!659174)))))

(declare-fun b!1520739 () Bool)

(assert (=> b!1520739 (= e!848310 Undefined!13012)))

(declare-fun b!1520740 () Bool)

(declare-fun c!139850 () Bool)

(assert (=> b!1520740 (= c!139850 (= lt!659176 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1520740 (= e!848309 e!848311)))

(declare-fun b!1520741 () Bool)

(assert (=> b!1520741 (= e!848311 (MissingZero!13012 (index!54444 lt!659174)))))

(assert (= (and d!158923 c!139851) b!1520739))

(assert (= (and d!158923 (not c!139851)) b!1520737))

(assert (= (and b!1520737 c!139849) b!1520738))

(assert (= (and b!1520737 (not c!139849)) b!1520740))

(assert (= (and b!1520740 c!139850) b!1520741))

(assert (= (and b!1520740 (not c!139850)) b!1520736))

(declare-fun m!1403939 () Bool)

(assert (=> d!158923 m!1403939))

(assert (=> d!158923 m!1403717))

(assert (=> d!158923 m!1403719))

(assert (=> d!158923 m!1403719))

(assert (=> d!158923 m!1403717))

(assert (=> d!158923 m!1403721))

(assert (=> d!158923 m!1403709))

(assert (=> b!1520736 m!1403717))

(declare-fun m!1403941 () Bool)

(assert (=> b!1520736 m!1403941))

(declare-fun m!1403943 () Bool)

(assert (=> b!1520737 m!1403943))

(assert (=> b!1520437 d!158923))

(declare-fun d!158935 () Bool)

(assert (=> d!158935 (= (validKeyInArray!0 (select (arr!48820 a!2804) j!70)) (and (not (= (select (arr!48820 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48820 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1520435 d!158935))

(declare-fun d!158937 () Bool)

(assert (=> d!158937 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!129528 d!158937))

(declare-fun d!158939 () Bool)

(assert (=> d!158939 (= (array_inv!37765 a!2804) (bvsge (size!49371 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!129528 d!158939))

(declare-fun b!1520754 () Bool)

(declare-fun e!848320 () Bool)

(declare-fun e!848319 () Bool)

(assert (=> b!1520754 (= e!848320 e!848319)))

(declare-fun c!139858 () Bool)

(assert (=> b!1520754 (= c!139858 (validKeyInArray!0 (select (arr!48820 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!158941 () Bool)

(declare-fun res!1040136 () Bool)

(assert (=> d!158941 (=> res!1040136 e!848320)))

(assert (=> d!158941 (= res!1040136 (bvsge #b00000000000000000000000000000000 (size!49371 a!2804)))))

(assert (=> d!158941 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!848320)))

(declare-fun b!1520755 () Bool)

(declare-fun e!848318 () Bool)

(declare-fun call!68375 () Bool)

(assert (=> b!1520755 (= e!848318 call!68375)))

(declare-fun b!1520756 () Bool)

(assert (=> b!1520756 (= e!848319 call!68375)))

(declare-fun bm!68372 () Bool)

(assert (=> bm!68372 (= call!68375 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1520757 () Bool)

(assert (=> b!1520757 (= e!848319 e!848318)))

(declare-fun lt!659186 () (_ BitVec 64))

(assert (=> b!1520757 (= lt!659186 (select (arr!48820 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!659185 () Unit!50848)

(assert (=> b!1520757 (= lt!659185 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!659186 #b00000000000000000000000000000000))))

(assert (=> b!1520757 (arrayContainsKey!0 a!2804 lt!659186 #b00000000000000000000000000000000)))

(declare-fun lt!659187 () Unit!50848)

(assert (=> b!1520757 (= lt!659187 lt!659185)))

(declare-fun res!1040137 () Bool)

(assert (=> b!1520757 (= res!1040137 (= (seekEntryOrOpen!0 (select (arr!48820 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13012 #b00000000000000000000000000000000)))))

(assert (=> b!1520757 (=> (not res!1040137) (not e!848318))))

(assert (= (and d!158941 (not res!1040136)) b!1520754))

(assert (= (and b!1520754 c!139858) b!1520757))

(assert (= (and b!1520754 (not c!139858)) b!1520756))

(assert (= (and b!1520757 res!1040137) b!1520755))

(assert (= (or b!1520755 b!1520756) bm!68372))

(assert (=> b!1520754 m!1403843))

(assert (=> b!1520754 m!1403843))

(assert (=> b!1520754 m!1403847))

(declare-fun m!1403945 () Bool)

(assert (=> bm!68372 m!1403945))

(assert (=> b!1520757 m!1403843))

(declare-fun m!1403947 () Bool)

(assert (=> b!1520757 m!1403947))

(declare-fun m!1403949 () Bool)

(assert (=> b!1520757 m!1403949))

(assert (=> b!1520757 m!1403843))

(declare-fun m!1403951 () Bool)

(assert (=> b!1520757 m!1403951))

(assert (=> b!1520430 d!158941))

(push 1)

