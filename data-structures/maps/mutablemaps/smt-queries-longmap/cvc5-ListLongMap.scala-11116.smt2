; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129832 () Bool)

(assert start!129832)

(declare-fun b!1523552 () Bool)

(declare-fun res!1042608 () Bool)

(declare-fun e!849382 () Bool)

(assert (=> b!1523552 (=> (not res!1042608) (not e!849382))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101355 0))(
  ( (array!101356 (arr!48904 (Array (_ BitVec 32) (_ BitVec 64))) (size!49455 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101355)

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13090 0))(
  ( (MissingZero!13090 (index!54754 (_ BitVec 32))) (Found!13090 (index!54755 (_ BitVec 32))) (Intermediate!13090 (undefined!13902 Bool) (index!54756 (_ BitVec 32)) (x!136451 (_ BitVec 32))) (Undefined!13090) (MissingVacant!13090 (index!54757 (_ BitVec 32))) )
))
(declare-fun lt!659944 () SeekEntryResult!13090)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101355 (_ BitVec 32)) SeekEntryResult!13090)

(assert (=> b!1523552 (= res!1042608 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48904 a!2804) j!70) a!2804 mask!2512) lt!659944))))

(declare-fun b!1523554 () Bool)

(declare-fun res!1042607 () Bool)

(declare-fun e!849384 () Bool)

(assert (=> b!1523554 (=> (not res!1042607) (not e!849384))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1523554 (= res!1042607 (validKeyInArray!0 (select (arr!48904 a!2804) i!961)))))

(declare-fun b!1523555 () Bool)

(declare-fun e!849385 () Bool)

(assert (=> b!1523555 (= e!849382 e!849385)))

(declare-fun res!1042598 () Bool)

(assert (=> b!1523555 (=> (not res!1042598) (not e!849385))))

(declare-fun lt!659947 () (_ BitVec 64))

(declare-fun lt!659943 () array!101355)

(declare-fun lt!659946 () SeekEntryResult!13090)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1523555 (= res!1042598 (= lt!659946 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!659947 mask!2512) lt!659947 lt!659943 mask!2512)))))

(assert (=> b!1523555 (= lt!659947 (select (store (arr!48904 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1523555 (= lt!659943 (array!101356 (store (arr!48904 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49455 a!2804)))))

(declare-fun b!1523556 () Bool)

(assert (=> b!1523556 (= e!849384 e!849382)))

(declare-fun res!1042602 () Bool)

(assert (=> b!1523556 (=> (not res!1042602) (not e!849382))))

(assert (=> b!1523556 (= res!1042602 (= lt!659946 lt!659944))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1523556 (= lt!659944 (Intermediate!13090 false resIndex!21 resX!21))))

(assert (=> b!1523556 (= lt!659946 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48904 a!2804) j!70) mask!2512) (select (arr!48904 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1523557 () Bool)

(declare-fun res!1042605 () Bool)

(assert (=> b!1523557 (=> (not res!1042605) (not e!849384))))

(assert (=> b!1523557 (= res!1042605 (and (= (size!49455 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49455 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49455 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1523558 () Bool)

(declare-fun e!849383 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101355 (_ BitVec 32)) SeekEntryResult!13090)

(assert (=> b!1523558 (= e!849383 (= (seekEntry!0 (select (arr!48904 a!2804) j!70) a!2804 mask!2512) (Found!13090 j!70)))))

(declare-fun b!1523559 () Bool)

(declare-fun res!1042599 () Bool)

(assert (=> b!1523559 (=> (not res!1042599) (not e!849384))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101355 (_ BitVec 32)) Bool)

(assert (=> b!1523559 (= res!1042599 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1523553 () Bool)

(declare-fun res!1042606 () Bool)

(assert (=> b!1523553 (=> (not res!1042606) (not e!849384))))

(declare-datatypes ((List!35567 0))(
  ( (Nil!35564) (Cons!35563 (h!36988 (_ BitVec 64)) (t!50268 List!35567)) )
))
(declare-fun arrayNoDuplicates!0 (array!101355 (_ BitVec 32) List!35567) Bool)

(assert (=> b!1523553 (= res!1042606 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35564))))

(declare-fun res!1042601 () Bool)

(assert (=> start!129832 (=> (not res!1042601) (not e!849384))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129832 (= res!1042601 (validMask!0 mask!2512))))

(assert (=> start!129832 e!849384))

(assert (=> start!129832 true))

(declare-fun array_inv!37849 (array!101355) Bool)

(assert (=> start!129832 (array_inv!37849 a!2804)))

(declare-fun b!1523560 () Bool)

(declare-fun res!1042600 () Bool)

(assert (=> b!1523560 (=> (not res!1042600) (not e!849384))))

(assert (=> b!1523560 (= res!1042600 (validKeyInArray!0 (select (arr!48904 a!2804) j!70)))))

(declare-fun b!1523561 () Bool)

(declare-fun res!1042604 () Bool)

(assert (=> b!1523561 (=> (not res!1042604) (not e!849384))))

(assert (=> b!1523561 (= res!1042604 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49455 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49455 a!2804))))))

(declare-fun b!1523562 () Bool)

(declare-fun e!849381 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101355 (_ BitVec 32)) SeekEntryResult!13090)

(assert (=> b!1523562 (= e!849381 (= (seekEntryOrOpen!0 (select (arr!48904 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!659947 lt!659943 mask!2512)))))

(declare-fun b!1523563 () Bool)

(assert (=> b!1523563 (= e!849385 (not e!849381))))

(declare-fun res!1042603 () Bool)

(assert (=> b!1523563 (=> res!1042603 e!849381)))

(assert (=> b!1523563 (= res!1042603 (or (not (= (select (arr!48904 a!2804) j!70) lt!659947)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (not (= (select (arr!48904 a!2804) index!487) (select (arr!48904 a!2804) j!70))) (not (= j!70 index!487))))))

(assert (=> b!1523563 e!849383))

(declare-fun res!1042597 () Bool)

(assert (=> b!1523563 (=> (not res!1042597) (not e!849383))))

(assert (=> b!1523563 (= res!1042597 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50920 0))(
  ( (Unit!50921) )
))
(declare-fun lt!659945 () Unit!50920)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101355 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50920)

(assert (=> b!1523563 (= lt!659945 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!129832 res!1042601) b!1523557))

(assert (= (and b!1523557 res!1042605) b!1523554))

(assert (= (and b!1523554 res!1042607) b!1523560))

(assert (= (and b!1523560 res!1042600) b!1523559))

(assert (= (and b!1523559 res!1042599) b!1523553))

(assert (= (and b!1523553 res!1042606) b!1523561))

(assert (= (and b!1523561 res!1042604) b!1523556))

(assert (= (and b!1523556 res!1042602) b!1523552))

(assert (= (and b!1523552 res!1042608) b!1523555))

(assert (= (and b!1523555 res!1042598) b!1523563))

(assert (= (and b!1523563 res!1042597) b!1523558))

(assert (= (and b!1523563 (not res!1042603)) b!1523562))

(declare-fun m!1406739 () Bool)

(assert (=> b!1523552 m!1406739))

(assert (=> b!1523552 m!1406739))

(declare-fun m!1406741 () Bool)

(assert (=> b!1523552 m!1406741))

(declare-fun m!1406743 () Bool)

(assert (=> b!1523555 m!1406743))

(assert (=> b!1523555 m!1406743))

(declare-fun m!1406745 () Bool)

(assert (=> b!1523555 m!1406745))

(declare-fun m!1406747 () Bool)

(assert (=> b!1523555 m!1406747))

(declare-fun m!1406749 () Bool)

(assert (=> b!1523555 m!1406749))

(declare-fun m!1406751 () Bool)

(assert (=> b!1523559 m!1406751))

(declare-fun m!1406753 () Bool)

(assert (=> start!129832 m!1406753))

(declare-fun m!1406755 () Bool)

(assert (=> start!129832 m!1406755))

(assert (=> b!1523560 m!1406739))

(assert (=> b!1523560 m!1406739))

(declare-fun m!1406757 () Bool)

(assert (=> b!1523560 m!1406757))

(declare-fun m!1406759 () Bool)

(assert (=> b!1523553 m!1406759))

(assert (=> b!1523556 m!1406739))

(assert (=> b!1523556 m!1406739))

(declare-fun m!1406761 () Bool)

(assert (=> b!1523556 m!1406761))

(assert (=> b!1523556 m!1406761))

(assert (=> b!1523556 m!1406739))

(declare-fun m!1406763 () Bool)

(assert (=> b!1523556 m!1406763))

(declare-fun m!1406765 () Bool)

(assert (=> b!1523554 m!1406765))

(assert (=> b!1523554 m!1406765))

(declare-fun m!1406767 () Bool)

(assert (=> b!1523554 m!1406767))

(assert (=> b!1523562 m!1406739))

(assert (=> b!1523562 m!1406739))

(declare-fun m!1406769 () Bool)

(assert (=> b!1523562 m!1406769))

(declare-fun m!1406771 () Bool)

(assert (=> b!1523562 m!1406771))

(assert (=> b!1523558 m!1406739))

(assert (=> b!1523558 m!1406739))

(declare-fun m!1406773 () Bool)

(assert (=> b!1523558 m!1406773))

(assert (=> b!1523563 m!1406739))

(declare-fun m!1406775 () Bool)

(assert (=> b!1523563 m!1406775))

(declare-fun m!1406777 () Bool)

(assert (=> b!1523563 m!1406777))

(declare-fun m!1406779 () Bool)

(assert (=> b!1523563 m!1406779))

(push 1)

(assert (not b!1523559))

(assert (not b!1523552))

(assert (not b!1523558))

(assert (not b!1523554))

(assert (not b!1523560))

(assert (not b!1523563))

(assert (not b!1523553))

(assert (not b!1523555))

(assert (not start!129832))

(assert (not b!1523562))

(assert (not b!1523556))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1523712 () Bool)

(declare-fun e!849476 () SeekEntryResult!13090)

(declare-fun e!849473 () SeekEntryResult!13090)

(assert (=> b!1523712 (= e!849476 e!849473)))

(declare-fun c!140050 () Bool)

(declare-fun lt!660009 () (_ BitVec 64))

(assert (=> b!1523712 (= c!140050 (or (= lt!660009 (select (arr!48904 a!2804) j!70)) (= (bvadd lt!660009 lt!660009) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1523713 () Bool)

(declare-fun e!849474 () Bool)

(declare-fun lt!660010 () SeekEntryResult!13090)

(assert (=> b!1523713 (= e!849474 (bvsge (x!136451 lt!660010) #b01111111111111111111111111111110))))

(declare-fun b!1523714 () Bool)

(declare-fun e!849472 () Bool)

(assert (=> b!1523714 (= e!849474 e!849472)))

(declare-fun res!1042715 () Bool)

(assert (=> b!1523714 (= res!1042715 (and (is-Intermediate!13090 lt!660010) (not (undefined!13902 lt!660010)) (bvslt (x!136451 lt!660010) #b01111111111111111111111111111110) (bvsge (x!136451 lt!660010) #b00000000000000000000000000000000) (bvsge (x!136451 lt!660010) x!534)))))

(assert (=> b!1523714 (=> (not res!1042715) (not e!849472))))

(declare-fun b!1523715 () Bool)

(assert (=> b!1523715 (= e!849473 (Intermediate!13090 false index!487 x!534))))

(declare-fun b!1523716 () Bool)

(assert (=> b!1523716 (and (bvsge (index!54756 lt!660010) #b00000000000000000000000000000000) (bvslt (index!54756 lt!660010) (size!49455 a!2804)))))

(declare-fun res!1042714 () Bool)

(assert (=> b!1523716 (= res!1042714 (= (select (arr!48904 a!2804) (index!54756 lt!660010)) (select (arr!48904 a!2804) j!70)))))

(declare-fun e!849475 () Bool)

(assert (=> b!1523716 (=> res!1042714 e!849475)))

(assert (=> b!1523716 (= e!849472 e!849475)))

(declare-fun b!1523717 () Bool)

(assert (=> b!1523717 (and (bvsge (index!54756 lt!660010) #b00000000000000000000000000000000) (bvslt (index!54756 lt!660010) (size!49455 a!2804)))))

(assert (=> b!1523717 (= e!849475 (= (select (arr!48904 a!2804) (index!54756 lt!660010)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1523718 () Bool)

(assert (=> b!1523718 (and (bvsge (index!54756 lt!660010) #b00000000000000000000000000000000) (bvslt (index!54756 lt!660010) (size!49455 a!2804)))))

(declare-fun res!1042716 () Bool)

(assert (=> b!1523718 (= res!1042716 (= (select (arr!48904 a!2804) (index!54756 lt!660010)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1523718 (=> res!1042716 e!849475)))

(declare-fun b!1523720 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1523720 (= e!849473 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48904 a!2804) j!70) a!2804 mask!2512))))

(declare-fun d!159173 () Bool)

(assert (=> d!159173 e!849474))

(declare-fun c!140051 () Bool)

(assert (=> d!159173 (= c!140051 (and (is-Intermediate!13090 lt!660010) (undefined!13902 lt!660010)))))

(assert (=> d!159173 (= lt!660010 e!849476)))

(declare-fun c!140052 () Bool)

(assert (=> d!159173 (= c!140052 (bvsge x!534 #b01111111111111111111111111111110))))

(assert (=> d!159173 (= lt!660009 (select (arr!48904 a!2804) index!487))))

(assert (=> d!159173 (validMask!0 mask!2512)))

(assert (=> d!159173 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48904 a!2804) j!70) a!2804 mask!2512) lt!660010)))

(declare-fun b!1523719 () Bool)

(assert (=> b!1523719 (= e!849476 (Intermediate!13090 true index!487 x!534))))

(assert (= (and d!159173 c!140052) b!1523719))

(assert (= (and d!159173 (not c!140052)) b!1523712))

(assert (= (and b!1523712 c!140050) b!1523715))

(assert (= (and b!1523712 (not c!140050)) b!1523720))

(assert (= (and d!159173 c!140051) b!1523713))

(assert (= (and d!159173 (not c!140051)) b!1523714))

(assert (= (and b!1523714 res!1042715) b!1523716))

(assert (= (and b!1523716 (not res!1042714)) b!1523718))

(assert (= (and b!1523718 (not res!1042716)) b!1523717))

(declare-fun m!1406901 () Bool)

(assert (=> b!1523720 m!1406901))

(assert (=> b!1523720 m!1406901))

(assert (=> b!1523720 m!1406739))

(declare-fun m!1406903 () Bool)

(assert (=> b!1523720 m!1406903))

(declare-fun m!1406905 () Bool)

(assert (=> b!1523717 m!1406905))

(assert (=> b!1523718 m!1406905))

(assert (=> d!159173 m!1406775))

(assert (=> d!159173 m!1406753))

(assert (=> b!1523716 m!1406905))

(assert (=> b!1523552 d!159173))

(declare-fun b!1523765 () Bool)

(declare-fun e!849504 () Bool)

(declare-fun call!68413 () Bool)

(assert (=> b!1523765 (= e!849504 call!68413)))

(declare-fun d!159185 () Bool)

(declare-fun res!1042728 () Bool)

(declare-fun e!849502 () Bool)

(assert (=> d!159185 (=> res!1042728 e!849502)))

(assert (=> d!159185 (= res!1042728 (bvsge j!70 (size!49455 a!2804)))))

(assert (=> d!159185 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!849502)))

(declare-fun b!1523766 () Bool)

(declare-fun e!849503 () Bool)

(assert (=> b!1523766 (= e!849503 call!68413)))

(declare-fun b!1523767 () Bool)

(assert (=> b!1523767 (= e!849502 e!849504)))

(declare-fun c!140070 () Bool)

(assert (=> b!1523767 (= c!140070 (validKeyInArray!0 (select (arr!48904 a!2804) j!70)))))

(declare-fun bm!68410 () Bool)

(assert (=> bm!68410 (= call!68413 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1523768 () Bool)

(assert (=> b!1523768 (= e!849504 e!849503)))

(declare-fun lt!660033 () (_ BitVec 64))

(assert (=> b!1523768 (= lt!660033 (select (arr!48904 a!2804) j!70))))

(declare-fun lt!660034 () Unit!50920)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101355 (_ BitVec 64) (_ BitVec 32)) Unit!50920)

(assert (=> b!1523768 (= lt!660034 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!660033 j!70))))

(declare-fun arrayContainsKey!0 (array!101355 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1523768 (arrayContainsKey!0 a!2804 lt!660033 #b00000000000000000000000000000000)))

(declare-fun lt!660035 () Unit!50920)

(assert (=> b!1523768 (= lt!660035 lt!660034)))

(declare-fun res!1042727 () Bool)

(assert (=> b!1523768 (= res!1042727 (= (seekEntryOrOpen!0 (select (arr!48904 a!2804) j!70) a!2804 mask!2512) (Found!13090 j!70)))))

(assert (=> b!1523768 (=> (not res!1042727) (not e!849503))))

(assert (= (and d!159185 (not res!1042728)) b!1523767))

(assert (= (and b!1523767 c!140070) b!1523768))

(assert (= (and b!1523767 (not c!140070)) b!1523765))

(assert (= (and b!1523768 res!1042727) b!1523766))

(assert (= (or b!1523766 b!1523765) bm!68410))

(assert (=> b!1523767 m!1406739))

(assert (=> b!1523767 m!1406739))

(assert (=> b!1523767 m!1406757))

(declare-fun m!1406913 () Bool)

(assert (=> bm!68410 m!1406913))

(assert (=> b!1523768 m!1406739))

(declare-fun m!1406915 () Bool)

(assert (=> b!1523768 m!1406915))

(declare-fun m!1406917 () Bool)

(assert (=> b!1523768 m!1406917))

(assert (=> b!1523768 m!1406739))

(assert (=> b!1523768 m!1406769))

(assert (=> b!1523563 d!159185))

(declare-fun d!159189 () Bool)

(assert (=> d!159189 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!660040 () Unit!50920)

(declare-fun choose!38 (array!101355 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50920)

(assert (=> d!159189 (= lt!660040 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!159189 (validMask!0 mask!2512)))

(assert (=> d!159189 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!660040)))

(declare-fun bs!43731 () Bool)

(assert (= bs!43731 d!159189))

(assert (=> bs!43731 m!1406777))

(declare-fun m!1406927 () Bool)

(assert (=> bs!43731 m!1406927))

(assert (=> bs!43731 m!1406753))

(assert (=> b!1523563 d!159189))

(declare-fun d!159193 () Bool)

(declare-fun lt!660060 () SeekEntryResult!13090)

(assert (=> d!159193 (and (or (is-MissingVacant!13090 lt!660060) (not (is-Found!13090 lt!660060)) (and (bvsge (index!54755 lt!660060) #b00000000000000000000000000000000) (bvslt (index!54755 lt!660060) (size!49455 a!2804)))) (not (is-MissingVacant!13090 lt!660060)) (or (not (is-Found!13090 lt!660060)) (= (select (arr!48904 a!2804) (index!54755 lt!660060)) (select (arr!48904 a!2804) j!70))))))

(declare-fun e!849523 () SeekEntryResult!13090)

(assert (=> d!159193 (= lt!660060 e!849523)))

(declare-fun c!140084 () Bool)

(declare-fun lt!660061 () SeekEntryResult!13090)

(assert (=> d!159193 (= c!140084 (and (is-Intermediate!13090 lt!660061) (undefined!13902 lt!660061)))))

(assert (=> d!159193 (= lt!660061 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48904 a!2804) j!70) mask!2512) (select (arr!48904 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159193 (validMask!0 mask!2512)))

(assert (=> d!159193 (= (seekEntry!0 (select (arr!48904 a!2804) j!70) a!2804 mask!2512) lt!660060)))

(declare-fun b!1523799 () Bool)

(declare-fun c!140085 () Bool)

(declare-fun lt!660059 () (_ BitVec 64))

(assert (=> b!1523799 (= c!140085 (= lt!660059 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!849521 () SeekEntryResult!13090)

(declare-fun e!849522 () SeekEntryResult!13090)

(assert (=> b!1523799 (= e!849521 e!849522)))

(declare-fun b!1523800 () Bool)

(assert (=> b!1523800 (= e!849523 Undefined!13090)))

(declare-fun b!1523801 () Bool)

(declare-fun lt!660062 () SeekEntryResult!13090)

(assert (=> b!1523801 (= e!849522 (ite (is-MissingVacant!13090 lt!660062) (MissingZero!13090 (index!54757 lt!660062)) lt!660062))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101355 (_ BitVec 32)) SeekEntryResult!13090)

(assert (=> b!1523801 (= lt!660062 (seekKeyOrZeroReturnVacant!0 (x!136451 lt!660061) (index!54756 lt!660061) (index!54756 lt!660061) (select (arr!48904 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1523802 () Bool)

(assert (=> b!1523802 (= e!849521 (Found!13090 (index!54756 lt!660061)))))

(declare-fun b!1523803 () Bool)

(assert (=> b!1523803 (= e!849523 e!849521)))

(assert (=> b!1523803 (= lt!660059 (select (arr!48904 a!2804) (index!54756 lt!660061)))))

(declare-fun c!140083 () Bool)

(assert (=> b!1523803 (= c!140083 (= lt!660059 (select (arr!48904 a!2804) j!70)))))

(declare-fun b!1523804 () Bool)

(assert (=> b!1523804 (= e!849522 (MissingZero!13090 (index!54756 lt!660061)))))

(assert (= (and d!159193 c!140084) b!1523800))

(assert (= (and d!159193 (not c!140084)) b!1523803))

(assert (= (and b!1523803 c!140083) b!1523802))

(assert (= (and b!1523803 (not c!140083)) b!1523799))

(assert (= (and b!1523799 c!140085) b!1523804))

(assert (= (and b!1523799 (not c!140085)) b!1523801))

(declare-fun m!1406937 () Bool)

(assert (=> d!159193 m!1406937))

(assert (=> d!159193 m!1406739))

(assert (=> d!159193 m!1406761))

(assert (=> d!159193 m!1406761))

(assert (=> d!159193 m!1406739))

(assert (=> d!159193 m!1406763))

(assert (=> d!159193 m!1406753))

(assert (=> b!1523801 m!1406739))

(declare-fun m!1406939 () Bool)

(assert (=> b!1523801 m!1406939))

(declare-fun m!1406941 () Bool)

(assert (=> b!1523803 m!1406941))

(assert (=> b!1523558 d!159193))

(declare-fun b!1523817 () Bool)

(declare-fun e!849534 () SeekEntryResult!13090)

(declare-fun e!849531 () SeekEntryResult!13090)

(assert (=> b!1523817 (= e!849534 e!849531)))

(declare-fun lt!660071 () (_ BitVec 64))

(declare-fun c!140092 () Bool)

(assert (=> b!1523817 (= c!140092 (or (= lt!660071 (select (arr!48904 a!2804) j!70)) (= (bvadd lt!660071 lt!660071) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1523818 () Bool)

(declare-fun e!849532 () Bool)

(declare-fun lt!660072 () SeekEntryResult!13090)

(assert (=> b!1523818 (= e!849532 (bvsge (x!136451 lt!660072) #b01111111111111111111111111111110))))

(declare-fun b!1523819 () Bool)

(declare-fun e!849530 () Bool)

(assert (=> b!1523819 (= e!849532 e!849530)))

(declare-fun res!1042737 () Bool)

(assert (=> b!1523819 (= res!1042737 (and (is-Intermediate!13090 lt!660072) (not (undefined!13902 lt!660072)) (bvslt (x!136451 lt!660072) #b01111111111111111111111111111110) (bvsge (x!136451 lt!660072) #b00000000000000000000000000000000) (bvsge (x!136451 lt!660072) #b00000000000000000000000000000000)))))

(assert (=> b!1523819 (=> (not res!1042737) (not e!849530))))

(declare-fun b!1523820 () Bool)

(assert (=> b!1523820 (= e!849531 (Intermediate!13090 false (toIndex!0 (select (arr!48904 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1523821 () Bool)

(assert (=> b!1523821 (and (bvsge (index!54756 lt!660072) #b00000000000000000000000000000000) (bvslt (index!54756 lt!660072) (size!49455 a!2804)))))

(declare-fun res!1042736 () Bool)

(assert (=> b!1523821 (= res!1042736 (= (select (arr!48904 a!2804) (index!54756 lt!660072)) (select (arr!48904 a!2804) j!70)))))

(declare-fun e!849533 () Bool)

(assert (=> b!1523821 (=> res!1042736 e!849533)))

(assert (=> b!1523821 (= e!849530 e!849533)))

(declare-fun b!1523822 () Bool)

(assert (=> b!1523822 (and (bvsge (index!54756 lt!660072) #b00000000000000000000000000000000) (bvslt (index!54756 lt!660072) (size!49455 a!2804)))))

(assert (=> b!1523822 (= e!849533 (= (select (arr!48904 a!2804) (index!54756 lt!660072)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1523823 () Bool)

(assert (=> b!1523823 (and (bvsge (index!54756 lt!660072) #b00000000000000000000000000000000) (bvslt (index!54756 lt!660072) (size!49455 a!2804)))))

(declare-fun res!1042738 () Bool)

(assert (=> b!1523823 (= res!1042738 (= (select (arr!48904 a!2804) (index!54756 lt!660072)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1523823 (=> res!1042738 e!849533)))

(declare-fun b!1523825 () Bool)

(assert (=> b!1523825 (= e!849531 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48904 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48904 a!2804) j!70) a!2804 mask!2512))))

(declare-fun d!159209 () Bool)

(assert (=> d!159209 e!849532))

(declare-fun c!140093 () Bool)

(assert (=> d!159209 (= c!140093 (and (is-Intermediate!13090 lt!660072) (undefined!13902 lt!660072)))))

(assert (=> d!159209 (= lt!660072 e!849534)))

(declare-fun c!140094 () Bool)

(assert (=> d!159209 (= c!140094 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!159209 (= lt!660071 (select (arr!48904 a!2804) (toIndex!0 (select (arr!48904 a!2804) j!70) mask!2512)))))

(assert (=> d!159209 (validMask!0 mask!2512)))

(assert (=> d!159209 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48904 a!2804) j!70) mask!2512) (select (arr!48904 a!2804) j!70) a!2804 mask!2512) lt!660072)))

(declare-fun b!1523824 () Bool)

(assert (=> b!1523824 (= e!849534 (Intermediate!13090 true (toIndex!0 (select (arr!48904 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(assert (= (and d!159209 c!140094) b!1523824))

(assert (= (and d!159209 (not c!140094)) b!1523817))

(assert (= (and b!1523817 c!140092) b!1523820))

(assert (= (and b!1523817 (not c!140092)) b!1523825))

(assert (= (and d!159209 c!140093) b!1523818))

(assert (= (and d!159209 (not c!140093)) b!1523819))

(assert (= (and b!1523819 res!1042737) b!1523821))

(assert (= (and b!1523821 (not res!1042736)) b!1523823))

(assert (= (and b!1523823 (not res!1042738)) b!1523822))

(assert (=> b!1523825 m!1406761))

(declare-fun m!1406943 () Bool)

(assert (=> b!1523825 m!1406943))

(assert (=> b!1523825 m!1406943))

(assert (=> b!1523825 m!1406739))

(declare-fun m!1406945 () Bool)

(assert (=> b!1523825 m!1406945))

(declare-fun m!1406947 () Bool)

(assert (=> b!1523822 m!1406947))

(assert (=> b!1523823 m!1406947))

(assert (=> d!159209 m!1406761))

(declare-fun m!1406949 () Bool)

(assert (=> d!159209 m!1406949))

(assert (=> d!159209 m!1406753))

(assert (=> b!1523821 m!1406947))

(assert (=> b!1523556 d!159209))

(declare-fun d!159211 () Bool)

(declare-fun lt!660088 () (_ BitVec 32))

(declare-fun lt!660087 () (_ BitVec 32))

(assert (=> d!159211 (= lt!660088 (bvmul (bvxor lt!660087 (bvlshr lt!660087 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159211 (= lt!660087 ((_ extract 31 0) (bvand (bvxor (select (arr!48904 a!2804) j!70) (bvlshr (select (arr!48904 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159211 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1042739 (let ((h!36993 ((_ extract 31 0) (bvand (bvxor (select (arr!48904 a!2804) j!70) (bvlshr (select (arr!48904 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136459 (bvmul (bvxor h!36993 (bvlshr h!36993 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136459 (bvlshr x!136459 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1042739 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1042739 #b00000000000000000000000000000000))))))

(assert (=> d!159211 (= (toIndex!0 (select (arr!48904 a!2804) j!70) mask!2512) (bvand (bvxor lt!660088 (bvlshr lt!660088 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1523556 d!159211))

(declare-fun e!849590 () SeekEntryResult!13090)

(declare-fun b!1523917 () Bool)

(declare-fun lt!660122 () SeekEntryResult!13090)

(assert (=> b!1523917 (= e!849590 (seekKeyOrZeroReturnVacant!0 (x!136451 lt!660122) (index!54756 lt!660122) (index!54756 lt!660122) (select (arr!48904 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1523918 () Bool)

(assert (=> b!1523918 (= e!849590 (MissingZero!13090 (index!54756 lt!660122)))))

(declare-fun b!1523919 () Bool)

(declare-fun e!849591 () SeekEntryResult!13090)

(assert (=> b!1523919 (= e!849591 (Found!13090 (index!54756 lt!660122)))))

(declare-fun b!1523920 () Bool)

(declare-fun e!849592 () SeekEntryResult!13090)

(assert (=> b!1523920 (= e!849592 Undefined!13090)))

(declare-fun b!1523921 () Bool)

(assert (=> b!1523921 (= e!849592 e!849591)))

(declare-fun lt!660124 () (_ BitVec 64))

(assert (=> b!1523921 (= lt!660124 (select (arr!48904 a!2804) (index!54756 lt!660122)))))

(declare-fun c!140131 () Bool)

(assert (=> b!1523921 (= c!140131 (= lt!660124 (select (arr!48904 a!2804) j!70)))))

(declare-fun d!159215 () Bool)

(declare-fun lt!660123 () SeekEntryResult!13090)

(assert (=> d!159215 (and (or (is-Undefined!13090 lt!660123) (not (is-Found!13090 lt!660123)) (and (bvsge (index!54755 lt!660123) #b00000000000000000000000000000000) (bvslt (index!54755 lt!660123) (size!49455 a!2804)))) (or (is-Undefined!13090 lt!660123) (is-Found!13090 lt!660123) (not (is-MissingZero!13090 lt!660123)) (and (bvsge (index!54754 lt!660123) #b00000000000000000000000000000000) (bvslt (index!54754 lt!660123) (size!49455 a!2804)))) (or (is-Undefined!13090 lt!660123) (is-Found!13090 lt!660123) (is-MissingZero!13090 lt!660123) (not (is-MissingVacant!13090 lt!660123)) (and (bvsge (index!54757 lt!660123) #b00000000000000000000000000000000) (bvslt (index!54757 lt!660123) (size!49455 a!2804)))) (or (is-Undefined!13090 lt!660123) (ite (is-Found!13090 lt!660123) (= (select (arr!48904 a!2804) (index!54755 lt!660123)) (select (arr!48904 a!2804) j!70)) (ite (is-MissingZero!13090 lt!660123) (= (select (arr!48904 a!2804) (index!54754 lt!660123)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!13090 lt!660123) (= (select (arr!48904 a!2804) (index!54757 lt!660123)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!159215 (= lt!660123 e!849592)))

(declare-fun c!140130 () Bool)

(assert (=> d!159215 (= c!140130 (and (is-Intermediate!13090 lt!660122) (undefined!13902 lt!660122)))))

(assert (=> d!159215 (= lt!660122 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48904 a!2804) j!70) mask!2512) (select (arr!48904 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159215 (validMask!0 mask!2512)))

(assert (=> d!159215 (= (seekEntryOrOpen!0 (select (arr!48904 a!2804) j!70) a!2804 mask!2512) lt!660123)))

(declare-fun b!1523922 () Bool)

(declare-fun c!140129 () Bool)

(assert (=> b!1523922 (= c!140129 (= lt!660124 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1523922 (= e!849591 e!849590)))

(assert (= (and d!159215 c!140130) b!1523920))

(assert (= (and d!159215 (not c!140130)) b!1523921))

(assert (= (and b!1523921 c!140131) b!1523919))

(assert (= (and b!1523921 (not c!140131)) b!1523922))

(assert (= (and b!1523922 c!140129) b!1523918))

(assert (= (and b!1523922 (not c!140129)) b!1523917))

(assert (=> b!1523917 m!1406739))

(declare-fun m!1407011 () Bool)

(assert (=> b!1523917 m!1407011))

(declare-fun m!1407013 () Bool)

(assert (=> b!1523921 m!1407013))

(declare-fun m!1407015 () Bool)

(assert (=> d!159215 m!1407015))

(assert (=> d!159215 m!1406761))

(assert (=> d!159215 m!1406739))

(assert (=> d!159215 m!1406763))

(declare-fun m!1407017 () Bool)

(assert (=> d!159215 m!1407017))

(declare-fun m!1407019 () Bool)

(assert (=> d!159215 m!1407019))

(assert (=> d!159215 m!1406753))

(assert (=> d!159215 m!1406739))

(assert (=> d!159215 m!1406761))

(assert (=> b!1523562 d!159215))

(declare-fun b!1523923 () Bool)

(declare-fun lt!660125 () SeekEntryResult!13090)

(declare-fun e!849593 () SeekEntryResult!13090)

(assert (=> b!1523923 (= e!849593 (seekKeyOrZeroReturnVacant!0 (x!136451 lt!660125) (index!54756 lt!660125) (index!54756 lt!660125) lt!659947 lt!659943 mask!2512))))

(declare-fun b!1523924 () Bool)

(assert (=> b!1523924 (= e!849593 (MissingZero!13090 (index!54756 lt!660125)))))

(declare-fun b!1523925 () Bool)

(declare-fun e!849594 () SeekEntryResult!13090)

(assert (=> b!1523925 (= e!849594 (Found!13090 (index!54756 lt!660125)))))

(declare-fun b!1523926 () Bool)

(declare-fun e!849595 () SeekEntryResult!13090)

(assert (=> b!1523926 (= e!849595 Undefined!13090)))

(declare-fun b!1523927 () Bool)

(assert (=> b!1523927 (= e!849595 e!849594)))

(declare-fun lt!660127 () (_ BitVec 64))

(assert (=> b!1523927 (= lt!660127 (select (arr!48904 lt!659943) (index!54756 lt!660125)))))

(declare-fun c!140134 () Bool)

(assert (=> b!1523927 (= c!140134 (= lt!660127 lt!659947))))

(declare-fun d!159235 () Bool)

(declare-fun lt!660126 () SeekEntryResult!13090)

(assert (=> d!159235 (and (or (is-Undefined!13090 lt!660126) (not (is-Found!13090 lt!660126)) (and (bvsge (index!54755 lt!660126) #b00000000000000000000000000000000) (bvslt (index!54755 lt!660126) (size!49455 lt!659943)))) (or (is-Undefined!13090 lt!660126) (is-Found!13090 lt!660126) (not (is-MissingZero!13090 lt!660126)) (and (bvsge (index!54754 lt!660126) #b00000000000000000000000000000000) (bvslt (index!54754 lt!660126) (size!49455 lt!659943)))) (or (is-Undefined!13090 lt!660126) (is-Found!13090 lt!660126) (is-MissingZero!13090 lt!660126) (not (is-MissingVacant!13090 lt!660126)) (and (bvsge (index!54757 lt!660126) #b00000000000000000000000000000000) (bvslt (index!54757 lt!660126) (size!49455 lt!659943)))) (or (is-Undefined!13090 lt!660126) (ite (is-Found!13090 lt!660126) (= (select (arr!48904 lt!659943) (index!54755 lt!660126)) lt!659947) (ite (is-MissingZero!13090 lt!660126) (= (select (arr!48904 lt!659943) (index!54754 lt!660126)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!13090 lt!660126) (= (select (arr!48904 lt!659943) (index!54757 lt!660126)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!159235 (= lt!660126 e!849595)))

(declare-fun c!140133 () Bool)

(assert (=> d!159235 (= c!140133 (and (is-Intermediate!13090 lt!660125) (undefined!13902 lt!660125)))))

(assert (=> d!159235 (= lt!660125 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!659947 mask!2512) lt!659947 lt!659943 mask!2512))))

(assert (=> d!159235 (validMask!0 mask!2512)))

(assert (=> d!159235 (= (seekEntryOrOpen!0 lt!659947 lt!659943 mask!2512) lt!660126)))

(declare-fun b!1523928 () Bool)

(declare-fun c!140132 () Bool)

(assert (=> b!1523928 (= c!140132 (= lt!660127 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1523928 (= e!849594 e!849593)))

(assert (= (and d!159235 c!140133) b!1523926))

(assert (= (and d!159235 (not c!140133)) b!1523927))

(assert (= (and b!1523927 c!140134) b!1523925))

(assert (= (and b!1523927 (not c!140134)) b!1523928))

(assert (= (and b!1523928 c!140132) b!1523924))

(assert (= (and b!1523928 (not c!140132)) b!1523923))

(declare-fun m!1407021 () Bool)

(assert (=> b!1523923 m!1407021))

(declare-fun m!1407023 () Bool)

(assert (=> b!1523927 m!1407023))

(declare-fun m!1407025 () Bool)

(assert (=> d!159235 m!1407025))

(assert (=> d!159235 m!1406743))

(assert (=> d!159235 m!1406745))

(declare-fun m!1407027 () Bool)

(assert (=> d!159235 m!1407027))

(declare-fun m!1407029 () Bool)

(assert (=> d!159235 m!1407029))

(assert (=> d!159235 m!1406753))

(assert (=> d!159235 m!1406743))

(assert (=> b!1523562 d!159235))

(declare-fun d!159237 () Bool)

(assert (=> d!159237 (= (validKeyInArray!0 (select (arr!48904 a!2804) j!70)) (and (not (= (select (arr!48904 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48904 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1523560 d!159237))

(declare-fun b!1523929 () Bool)

(declare-fun e!849600 () SeekEntryResult!13090)

(declare-fun e!849597 () SeekEntryResult!13090)

(assert (=> b!1523929 (= e!849600 e!849597)))

(declare-fun c!140135 () Bool)

(declare-fun lt!660128 () (_ BitVec 64))

(assert (=> b!1523929 (= c!140135 (or (= lt!660128 lt!659947) (= (bvadd lt!660128 lt!660128) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1523930 () Bool)

(declare-fun e!849598 () Bool)

(declare-fun lt!660129 () SeekEntryResult!13090)

(assert (=> b!1523930 (= e!849598 (bvsge (x!136451 lt!660129) #b01111111111111111111111111111110))))

(declare-fun b!1523931 () Bool)

(declare-fun e!849596 () Bool)

(assert (=> b!1523931 (= e!849598 e!849596)))

(declare-fun res!1042764 () Bool)

(assert (=> b!1523931 (= res!1042764 (and (is-Intermediate!13090 lt!660129) (not (undefined!13902 lt!660129)) (bvslt (x!136451 lt!660129) #b01111111111111111111111111111110) (bvsge (x!136451 lt!660129) #b00000000000000000000000000000000) (bvsge (x!136451 lt!660129) #b00000000000000000000000000000000)))))

(assert (=> b!1523931 (=> (not res!1042764) (not e!849596))))

(declare-fun b!1523932 () Bool)

(assert (=> b!1523932 (= e!849597 (Intermediate!13090 false (toIndex!0 lt!659947 mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1523933 () Bool)

(assert (=> b!1523933 (and (bvsge (index!54756 lt!660129) #b00000000000000000000000000000000) (bvslt (index!54756 lt!660129) (size!49455 lt!659943)))))

(declare-fun res!1042763 () Bool)

(assert (=> b!1523933 (= res!1042763 (= (select (arr!48904 lt!659943) (index!54756 lt!660129)) lt!659947))))

(declare-fun e!849599 () Bool)

(assert (=> b!1523933 (=> res!1042763 e!849599)))

(assert (=> b!1523933 (= e!849596 e!849599)))

(declare-fun b!1523934 () Bool)

(assert (=> b!1523934 (and (bvsge (index!54756 lt!660129) #b00000000000000000000000000000000) (bvslt (index!54756 lt!660129) (size!49455 lt!659943)))))

(assert (=> b!1523934 (= e!849599 (= (select (arr!48904 lt!659943) (index!54756 lt!660129)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1523935 () Bool)

(assert (=> b!1523935 (and (bvsge (index!54756 lt!660129) #b00000000000000000000000000000000) (bvslt (index!54756 lt!660129) (size!49455 lt!659943)))))

(declare-fun res!1042765 () Bool)

(assert (=> b!1523935 (= res!1042765 (= (select (arr!48904 lt!659943) (index!54756 lt!660129)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1523935 (=> res!1042765 e!849599)))

(declare-fun b!1523937 () Bool)

(assert (=> b!1523937 (= e!849597 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!659947 mask!2512) #b00000000000000000000000000000000 mask!2512) lt!659947 lt!659943 mask!2512))))

(declare-fun d!159239 () Bool)

(assert (=> d!159239 e!849598))

(declare-fun c!140136 () Bool)

(assert (=> d!159239 (= c!140136 (and (is-Intermediate!13090 lt!660129) (undefined!13902 lt!660129)))))

(assert (=> d!159239 (= lt!660129 e!849600)))

(declare-fun c!140137 () Bool)

(assert (=> d!159239 (= c!140137 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!159239 (= lt!660128 (select (arr!48904 lt!659943) (toIndex!0 lt!659947 mask!2512)))))

(assert (=> d!159239 (validMask!0 mask!2512)))

(assert (=> d!159239 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!659947 mask!2512) lt!659947 lt!659943 mask!2512) lt!660129)))

(declare-fun b!1523936 () Bool)

(assert (=> b!1523936 (= e!849600 (Intermediate!13090 true (toIndex!0 lt!659947 mask!2512) #b00000000000000000000000000000000))))

(assert (= (and d!159239 c!140137) b!1523936))

(assert (= (and d!159239 (not c!140137)) b!1523929))

(assert (= (and b!1523929 c!140135) b!1523932))

(assert (= (and b!1523929 (not c!140135)) b!1523937))

(assert (= (and d!159239 c!140136) b!1523930))

(assert (= (and d!159239 (not c!140136)) b!1523931))

(assert (= (and b!1523931 res!1042764) b!1523933))

(assert (= (and b!1523933 (not res!1042763)) b!1523935))

(assert (= (and b!1523935 (not res!1042765)) b!1523934))

(assert (=> b!1523937 m!1406743))

(declare-fun m!1407031 () Bool)

(assert (=> b!1523937 m!1407031))

(assert (=> b!1523937 m!1407031))

(declare-fun m!1407033 () Bool)

(assert (=> b!1523937 m!1407033))

(declare-fun m!1407035 () Bool)

(assert (=> b!1523934 m!1407035))

(assert (=> b!1523935 m!1407035))

(assert (=> d!159239 m!1406743))

(declare-fun m!1407037 () Bool)

(assert (=> d!159239 m!1407037))

(assert (=> d!159239 m!1406753))

(assert (=> b!1523933 m!1407035))

(assert (=> b!1523555 d!159239))

(declare-fun d!159241 () Bool)

(declare-fun lt!660131 () (_ BitVec 32))

(declare-fun lt!660130 () (_ BitVec 32))

(assert (=> d!159241 (= lt!660131 (bvmul (bvxor lt!660130 (bvlshr lt!660130 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159241 (= lt!660130 ((_ extract 31 0) (bvand (bvxor lt!659947 (bvlshr lt!659947 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159241 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1042739 (let ((h!36993 ((_ extract 31 0) (bvand (bvxor lt!659947 (bvlshr lt!659947 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136459 (bvmul (bvxor h!36993 (bvlshr h!36993 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136459 (bvlshr x!136459 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1042739 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1042739 #b00000000000000000000000000000000))))))

(assert (=> d!159241 (= (toIndex!0 lt!659947 mask!2512) (bvand (bvxor lt!660131 (bvlshr lt!660131 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1523555 d!159241))

(declare-fun d!159243 () Bool)

(declare-fun res!1042773 () Bool)

(declare-fun e!849618 () Bool)

(assert (=> d!159243 (=> res!1042773 e!849618)))

(assert (=> d!159243 (= res!1042773 (bvsge #b00000000000000000000000000000000 (size!49455 a!2804)))))

(assert (=> d!159243 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35564) e!849618)))

(declare-fun b!1523960 () Bool)

(declare-fun e!849617 () Bool)

(declare-fun contains!10000 (List!35567 (_ BitVec 64)) Bool)

(assert (=> b!1523960 (= e!849617 (contains!10000 Nil!35564 (select (arr!48904 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1523961 () Bool)

(declare-fun e!849615 () Bool)

(declare-fun e!849616 () Bool)

(assert (=> b!1523961 (= e!849615 e!849616)))

(declare-fun c!140146 () Bool)

(assert (=> b!1523961 (= c!140146 (validKeyInArray!0 (select (arr!48904 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1523962 () Bool)

(assert (=> b!1523962 (= e!849618 e!849615)))

(declare-fun res!1042772 () Bool)

(assert (=> b!1523962 (=> (not res!1042772) (not e!849615))))

(assert (=> b!1523962 (= res!1042772 (not e!849617))))

(declare-fun res!1042774 () Bool)

(assert (=> b!1523962 (=> (not res!1042774) (not e!849617))))

(assert (=> b!1523962 (= res!1042774 (validKeyInArray!0 (select (arr!48904 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68420 () Bool)

(declare-fun call!68423 () Bool)

(assert (=> bm!68420 (= call!68423 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!140146 (Cons!35563 (select (arr!48904 a!2804) #b00000000000000000000000000000000) Nil!35564) Nil!35564)))))

(declare-fun b!1523963 () Bool)

(assert (=> b!1523963 (= e!849616 call!68423)))

(declare-fun b!1523964 () Bool)

(assert (=> b!1523964 (= e!849616 call!68423)))

(assert (= (and d!159243 (not res!1042773)) b!1523962))

(assert (= (and b!1523962 res!1042774) b!1523960))

(assert (= (and b!1523962 res!1042772) b!1523961))

(assert (= (and b!1523961 c!140146) b!1523964))

(assert (= (and b!1523961 (not c!140146)) b!1523963))

(assert (= (or b!1523964 b!1523963) bm!68420))

(declare-fun m!1407039 () Bool)

(assert (=> b!1523960 m!1407039))

(assert (=> b!1523960 m!1407039))

(declare-fun m!1407041 () Bool)

(assert (=> b!1523960 m!1407041))

(assert (=> b!1523961 m!1407039))

(assert (=> b!1523961 m!1407039))

(declare-fun m!1407043 () Bool)

(assert (=> b!1523961 m!1407043))

(assert (=> b!1523962 m!1407039))

(assert (=> b!1523962 m!1407039))

(assert (=> b!1523962 m!1407043))

(assert (=> bm!68420 m!1407039))

(declare-fun m!1407045 () Bool)

(assert (=> bm!68420 m!1407045))

(assert (=> b!1523553 d!159243))

(declare-fun b!1523965 () Bool)

(declare-fun e!849621 () Bool)

(declare-fun call!68424 () Bool)

(assert (=> b!1523965 (= e!849621 call!68424)))

(declare-fun d!159245 () Bool)

(declare-fun res!1042776 () Bool)

(declare-fun e!849619 () Bool)

(assert (=> d!159245 (=> res!1042776 e!849619)))

(assert (=> d!159245 (= res!1042776 (bvsge #b00000000000000000000000000000000 (size!49455 a!2804)))))

(assert (=> d!159245 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!849619)))

(declare-fun b!1523966 () Bool)

(declare-fun e!849620 () Bool)

(assert (=> b!1523966 (= e!849620 call!68424)))

(declare-fun b!1523967 () Bool)

(assert (=> b!1523967 (= e!849619 e!849621)))

(declare-fun c!140147 () Bool)

(assert (=> b!1523967 (= c!140147 (validKeyInArray!0 (select (arr!48904 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68421 () Bool)

(assert (=> bm!68421 (= call!68424 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1523968 () Bool)

(assert (=> b!1523968 (= e!849621 e!849620)))

(declare-fun lt!660138 () (_ BitVec 64))

(assert (=> b!1523968 (= lt!660138 (select (arr!48904 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!660139 () Unit!50920)

(assert (=> b!1523968 (= lt!660139 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!660138 #b00000000000000000000000000000000))))

(assert (=> b!1523968 (arrayContainsKey!0 a!2804 lt!660138 #b00000000000000000000000000000000)))

(declare-fun lt!660140 () Unit!50920)

(assert (=> b!1523968 (= lt!660140 lt!660139)))

(declare-fun res!1042775 () Bool)

(assert (=> b!1523968 (= res!1042775 (= (seekEntryOrOpen!0 (select (arr!48904 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13090 #b00000000000000000000000000000000)))))

(assert (=> b!1523968 (=> (not res!1042775) (not e!849620))))

(assert (= (and d!159245 (not res!1042776)) b!1523967))

(assert (= (and b!1523967 c!140147) b!1523968))

(assert (= (and b!1523967 (not c!140147)) b!1523965))

(assert (= (and b!1523968 res!1042775) b!1523966))

(assert (= (or b!1523966 b!1523965) bm!68421))

(assert (=> b!1523967 m!1407039))

(assert (=> b!1523967 m!1407039))

(assert (=> b!1523967 m!1407043))

(declare-fun m!1407047 () Bool)

(assert (=> bm!68421 m!1407047))

(assert (=> b!1523968 m!1407039))

(declare-fun m!1407049 () Bool)

(assert (=> b!1523968 m!1407049))

(declare-fun m!1407051 () Bool)

(assert (=> b!1523968 m!1407051))

(assert (=> b!1523968 m!1407039))

(declare-fun m!1407053 () Bool)

(assert (=> b!1523968 m!1407053))

(assert (=> b!1523559 d!159245))

(declare-fun d!159247 () Bool)

(assert (=> d!159247 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!129832 d!159247))

(declare-fun d!159255 () Bool)

(assert (=> d!159255 (= (array_inv!37849 a!2804) (bvsge (size!49455 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!129832 d!159255))

(declare-fun d!159257 () Bool)

(assert (=> d!159257 (= (validKeyInArray!0 (select (arr!48904 a!2804) i!961)) (and (not (= (select (arr!48904 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48904 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1523554 d!159257))

(push 1)

