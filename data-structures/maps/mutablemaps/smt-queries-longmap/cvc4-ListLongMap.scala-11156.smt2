; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130334 () Bool)

(assert start!130334)

(declare-fun b!1529873 () Bool)

(declare-fun res!1047724 () Bool)

(declare-fun e!852519 () Bool)

(assert (=> b!1529873 (=> (not res!1047724) (not e!852519))))

(declare-datatypes ((array!101611 0))(
  ( (array!101612 (arr!49026 (Array (_ BitVec 32) (_ BitVec 64))) (size!49577 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101611)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1529873 (= res!1047724 (validKeyInArray!0 (select (arr!49026 a!2804) i!961)))))

(declare-fun b!1529874 () Bool)

(declare-fun res!1047725 () Bool)

(declare-fun e!852517 () Bool)

(assert (=> b!1529874 (=> (not res!1047725) (not e!852517))))

(declare-datatypes ((SeekEntryResult!13212 0))(
  ( (MissingZero!13212 (index!55242 (_ BitVec 32))) (Found!13212 (index!55243 (_ BitVec 32))) (Intermediate!13212 (undefined!14024 Bool) (index!55244 (_ BitVec 32)) (x!136926 (_ BitVec 32))) (Undefined!13212) (MissingVacant!13212 (index!55245 (_ BitVec 32))) )
))
(declare-fun lt!662544 () SeekEntryResult!13212)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101611 (_ BitVec 32)) SeekEntryResult!13212)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529874 (= res!1047725 (= lt!662544 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49026 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49026 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101612 (store (arr!49026 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49577 a!2804)) mask!2512)))))

(declare-fun b!1529875 () Bool)

(declare-fun res!1047727 () Bool)

(assert (=> b!1529875 (=> (not res!1047727) (not e!852519))))

(declare-datatypes ((List!35689 0))(
  ( (Nil!35686) (Cons!35685 (h!37122 (_ BitVec 64)) (t!50390 List!35689)) )
))
(declare-fun arrayNoDuplicates!0 (array!101611 (_ BitVec 32) List!35689) Bool)

(assert (=> b!1529875 (= res!1047727 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35686))))

(declare-fun b!1529876 () Bool)

(declare-fun e!852520 () Bool)

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1529876 (= e!852520 (and (bvsge (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110)))))

(declare-fun lt!662542 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529876 (= lt!662542 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun e!852518 () Bool)

(declare-fun b!1529877 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101611 (_ BitVec 32)) SeekEntryResult!13212)

(assert (=> b!1529877 (= e!852518 (= (seekEntry!0 (select (arr!49026 a!2804) j!70) a!2804 mask!2512) (Found!13212 j!70)))))

(declare-fun b!1529878 () Bool)

(declare-fun res!1047719 () Bool)

(assert (=> b!1529878 (=> (not res!1047719) (not e!852517))))

(declare-fun lt!662543 () SeekEntryResult!13212)

(assert (=> b!1529878 (= res!1047719 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49026 a!2804) j!70) a!2804 mask!2512) lt!662543))))

(declare-fun b!1529879 () Bool)

(assert (=> b!1529879 (= e!852517 (not e!852520))))

(declare-fun res!1047723 () Bool)

(assert (=> b!1529879 (=> res!1047723 e!852520)))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1529879 (= res!1047723 (or (not (= (select (arr!49026 a!2804) j!70) (select (store (arr!49026 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1529879 e!852518))

(declare-fun res!1047728 () Bool)

(assert (=> b!1529879 (=> (not res!1047728) (not e!852518))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101611 (_ BitVec 32)) Bool)

(assert (=> b!1529879 (= res!1047728 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51164 0))(
  ( (Unit!51165) )
))
(declare-fun lt!662545 () Unit!51164)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101611 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51164)

(assert (=> b!1529879 (= lt!662545 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1529880 () Bool)

(declare-fun res!1047721 () Bool)

(assert (=> b!1529880 (=> (not res!1047721) (not e!852519))))

(assert (=> b!1529880 (= res!1047721 (and (= (size!49577 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49577 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49577 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1529881 () Bool)

(assert (=> b!1529881 (= e!852519 e!852517)))

(declare-fun res!1047718 () Bool)

(assert (=> b!1529881 (=> (not res!1047718) (not e!852517))))

(assert (=> b!1529881 (= res!1047718 (= lt!662544 lt!662543))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1529881 (= lt!662543 (Intermediate!13212 false resIndex!21 resX!21))))

(assert (=> b!1529881 (= lt!662544 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49026 a!2804) j!70) mask!2512) (select (arr!49026 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1047722 () Bool)

(assert (=> start!130334 (=> (not res!1047722) (not e!852519))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130334 (= res!1047722 (validMask!0 mask!2512))))

(assert (=> start!130334 e!852519))

(assert (=> start!130334 true))

(declare-fun array_inv!37971 (array!101611) Bool)

(assert (=> start!130334 (array_inv!37971 a!2804)))

(declare-fun b!1529882 () Bool)

(declare-fun res!1047720 () Bool)

(assert (=> b!1529882 (=> (not res!1047720) (not e!852519))))

(assert (=> b!1529882 (= res!1047720 (validKeyInArray!0 (select (arr!49026 a!2804) j!70)))))

(declare-fun b!1529883 () Bool)

(declare-fun res!1047729 () Bool)

(assert (=> b!1529883 (=> (not res!1047729) (not e!852519))))

(assert (=> b!1529883 (= res!1047729 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49577 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49577 a!2804))))))

(declare-fun b!1529884 () Bool)

(declare-fun res!1047726 () Bool)

(assert (=> b!1529884 (=> (not res!1047726) (not e!852519))))

(assert (=> b!1529884 (= res!1047726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!130334 res!1047722) b!1529880))

(assert (= (and b!1529880 res!1047721) b!1529873))

(assert (= (and b!1529873 res!1047724) b!1529882))

(assert (= (and b!1529882 res!1047720) b!1529884))

(assert (= (and b!1529884 res!1047726) b!1529875))

(assert (= (and b!1529875 res!1047727) b!1529883))

(assert (= (and b!1529883 res!1047729) b!1529881))

(assert (= (and b!1529881 res!1047718) b!1529878))

(assert (= (and b!1529878 res!1047719) b!1529874))

(assert (= (and b!1529874 res!1047725) b!1529879))

(assert (= (and b!1529879 res!1047728) b!1529877))

(assert (= (and b!1529879 (not res!1047723)) b!1529876))

(declare-fun m!1412899 () Bool)

(assert (=> start!130334 m!1412899))

(declare-fun m!1412901 () Bool)

(assert (=> start!130334 m!1412901))

(declare-fun m!1412903 () Bool)

(assert (=> b!1529881 m!1412903))

(assert (=> b!1529881 m!1412903))

(declare-fun m!1412905 () Bool)

(assert (=> b!1529881 m!1412905))

(assert (=> b!1529881 m!1412905))

(assert (=> b!1529881 m!1412903))

(declare-fun m!1412907 () Bool)

(assert (=> b!1529881 m!1412907))

(assert (=> b!1529879 m!1412903))

(declare-fun m!1412909 () Bool)

(assert (=> b!1529879 m!1412909))

(declare-fun m!1412911 () Bool)

(assert (=> b!1529879 m!1412911))

(declare-fun m!1412913 () Bool)

(assert (=> b!1529879 m!1412913))

(declare-fun m!1412915 () Bool)

(assert (=> b!1529879 m!1412915))

(assert (=> b!1529882 m!1412903))

(assert (=> b!1529882 m!1412903))

(declare-fun m!1412917 () Bool)

(assert (=> b!1529882 m!1412917))

(assert (=> b!1529874 m!1412911))

(assert (=> b!1529874 m!1412913))

(assert (=> b!1529874 m!1412913))

(declare-fun m!1412919 () Bool)

(assert (=> b!1529874 m!1412919))

(assert (=> b!1529874 m!1412919))

(assert (=> b!1529874 m!1412913))

(declare-fun m!1412921 () Bool)

(assert (=> b!1529874 m!1412921))

(declare-fun m!1412923 () Bool)

(assert (=> b!1529876 m!1412923))

(declare-fun m!1412925 () Bool)

(assert (=> b!1529875 m!1412925))

(assert (=> b!1529878 m!1412903))

(assert (=> b!1529878 m!1412903))

(declare-fun m!1412927 () Bool)

(assert (=> b!1529878 m!1412927))

(assert (=> b!1529877 m!1412903))

(assert (=> b!1529877 m!1412903))

(declare-fun m!1412929 () Bool)

(assert (=> b!1529877 m!1412929))

(declare-fun m!1412931 () Bool)

(assert (=> b!1529873 m!1412931))

(assert (=> b!1529873 m!1412931))

(declare-fun m!1412933 () Bool)

(assert (=> b!1529873 m!1412933))

(declare-fun m!1412935 () Bool)

(assert (=> b!1529884 m!1412935))

(push 1)

(assert (not b!1529881))

(assert (not b!1529873))

(assert (not b!1529879))

(assert (not start!130334))

(assert (not b!1529884))

(assert (not b!1529876))

(assert (not b!1529882))

(assert (not b!1529877))

(assert (not b!1529875))

(assert (not b!1529874))

(assert (not b!1529878))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1529978 () Bool)

(declare-fun e!852576 () SeekEntryResult!13212)

(assert (=> b!1529978 (= e!852576 (Intermediate!13212 true index!487 x!534))))

(declare-fun b!1529979 () Bool)

(declare-fun e!852578 () Bool)

(declare-fun lt!662596 () SeekEntryResult!13212)

(assert (=> b!1529979 (= e!852578 (bvsge (x!136926 lt!662596) #b01111111111111111111111111111110))))

(declare-fun b!1529980 () Bool)

(assert (=> b!1529980 (and (bvsge (index!55244 lt!662596) #b00000000000000000000000000000000) (bvslt (index!55244 lt!662596) (size!49577 a!2804)))))

(declare-fun res!1047758 () Bool)

(assert (=> b!1529980 (= res!1047758 (= (select (arr!49026 a!2804) (index!55244 lt!662596)) (select (arr!49026 a!2804) j!70)))))

(declare-fun e!852577 () Bool)

(assert (=> b!1529980 (=> res!1047758 e!852577)))

(declare-fun e!852579 () Bool)

(assert (=> b!1529980 (= e!852579 e!852577)))

(declare-fun b!1529981 () Bool)

(assert (=> b!1529981 (and (bvsge (index!55244 lt!662596) #b00000000000000000000000000000000) (bvslt (index!55244 lt!662596) (size!49577 a!2804)))))

(declare-fun res!1047759 () Bool)

(assert (=> b!1529981 (= res!1047759 (= (select (arr!49026 a!2804) (index!55244 lt!662596)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1529981 (=> res!1047759 e!852577)))

(declare-fun b!1529982 () Bool)

(assert (=> b!1529982 (and (bvsge (index!55244 lt!662596) #b00000000000000000000000000000000) (bvslt (index!55244 lt!662596) (size!49577 a!2804)))))

(assert (=> b!1529982 (= e!852577 (= (select (arr!49026 a!2804) (index!55244 lt!662596)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!852575 () SeekEntryResult!13212)

(declare-fun b!1529983 () Bool)

(assert (=> b!1529983 (= e!852575 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!49026 a!2804) j!70) a!2804 mask!2512))))

(declare-fun d!159663 () Bool)

(assert (=> d!159663 e!852578))

(declare-fun c!140668 () Bool)

(assert (=> d!159663 (= c!140668 (and (is-Intermediate!13212 lt!662596) (undefined!14024 lt!662596)))))

(assert (=> d!159663 (= lt!662596 e!852576)))

(declare-fun c!140669 () Bool)

(assert (=> d!159663 (= c!140669 (bvsge x!534 #b01111111111111111111111111111110))))

(declare-fun lt!662595 () (_ BitVec 64))

(assert (=> d!159663 (= lt!662595 (select (arr!49026 a!2804) index!487))))

(assert (=> d!159663 (validMask!0 mask!2512)))

(assert (=> d!159663 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49026 a!2804) j!70) a!2804 mask!2512) lt!662596)))

(declare-fun b!1529984 () Bool)

(assert (=> b!1529984 (= e!852578 e!852579)))

(declare-fun res!1047760 () Bool)

(assert (=> b!1529984 (= res!1047760 (and (is-Intermediate!13212 lt!662596) (not (undefined!14024 lt!662596)) (bvslt (x!136926 lt!662596) #b01111111111111111111111111111110) (bvsge (x!136926 lt!662596) #b00000000000000000000000000000000) (bvsge (x!136926 lt!662596) x!534)))))

(assert (=> b!1529984 (=> (not res!1047760) (not e!852579))))

(declare-fun b!1529985 () Bool)

(assert (=> b!1529985 (= e!852576 e!852575)))

(declare-fun c!140667 () Bool)

(assert (=> b!1529985 (= c!140667 (or (= lt!662595 (select (arr!49026 a!2804) j!70)) (= (bvadd lt!662595 lt!662595) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1529986 () Bool)

(assert (=> b!1529986 (= e!852575 (Intermediate!13212 false index!487 x!534))))

(assert (= (and d!159663 c!140669) b!1529978))

(assert (= (and d!159663 (not c!140669)) b!1529985))

(assert (= (and b!1529985 c!140667) b!1529986))

(assert (= (and b!1529985 (not c!140667)) b!1529983))

(assert (= (and d!159663 c!140668) b!1529979))

(assert (= (and d!159663 (not c!140668)) b!1529984))

(assert (= (and b!1529984 res!1047760) b!1529980))

(assert (= (and b!1529980 (not res!1047758)) b!1529981))

(assert (= (and b!1529981 (not res!1047759)) b!1529982))

(declare-fun m!1412981 () Bool)

(assert (=> b!1529980 m!1412981))

(assert (=> b!1529982 m!1412981))

(assert (=> b!1529981 m!1412981))

(declare-fun m!1412983 () Bool)

(assert (=> d!159663 m!1412983))

(assert (=> d!159663 m!1412899))

(assert (=> b!1529983 m!1412923))

(assert (=> b!1529983 m!1412923))

(assert (=> b!1529983 m!1412903))

(declare-fun m!1412985 () Bool)

(assert (=> b!1529983 m!1412985))

(assert (=> b!1529878 d!159663))

(declare-fun d!159687 () Bool)

(assert (=> d!159687 (= (validKeyInArray!0 (select (arr!49026 a!2804) i!961)) (and (not (= (select (arr!49026 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49026 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1529873 d!159687))

(declare-fun b!1530010 () Bool)

(declare-fun e!852599 () Bool)

(declare-fun e!852598 () Bool)

(assert (=> b!1530010 (= e!852599 e!852598)))

(declare-fun lt!662605 () (_ BitVec 64))

(assert (=> b!1530010 (= lt!662605 (select (arr!49026 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!662604 () Unit!51164)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101611 (_ BitVec 64) (_ BitVec 32)) Unit!51164)

(assert (=> b!1530010 (= lt!662604 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!662605 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!101611 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1530010 (arrayContainsKey!0 a!2804 lt!662605 #b00000000000000000000000000000000)))

(declare-fun lt!662603 () Unit!51164)

(assert (=> b!1530010 (= lt!662603 lt!662604)))

(declare-fun res!1047774 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101611 (_ BitVec 32)) SeekEntryResult!13212)

(assert (=> b!1530010 (= res!1047774 (= (seekEntryOrOpen!0 (select (arr!49026 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13212 #b00000000000000000000000000000000)))))

(assert (=> b!1530010 (=> (not res!1047774) (not e!852598))))

(declare-fun b!1530011 () Bool)

(declare-fun call!68496 () Bool)

(assert (=> b!1530011 (= e!852598 call!68496)))

(declare-fun bm!68493 () Bool)

(assert (=> bm!68493 (= call!68496 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun d!159689 () Bool)

(declare-fun res!1047775 () Bool)

(declare-fun e!852600 () Bool)

(assert (=> d!159689 (=> res!1047775 e!852600)))

(assert (=> d!159689 (= res!1047775 (bvsge #b00000000000000000000000000000000 (size!49577 a!2804)))))

(assert (=> d!159689 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!852600)))

(declare-fun b!1530012 () Bool)

(assert (=> b!1530012 (= e!852600 e!852599)))

(declare-fun c!140675 () Bool)

(assert (=> b!1530012 (= c!140675 (validKeyInArray!0 (select (arr!49026 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1530013 () Bool)

(assert (=> b!1530013 (= e!852599 call!68496)))

(assert (= (and d!159689 (not res!1047775)) b!1530012))

(assert (= (and b!1530012 c!140675) b!1530010))

(assert (= (and b!1530012 (not c!140675)) b!1530013))

(assert (= (and b!1530010 res!1047774) b!1530011))

(assert (= (or b!1530011 b!1530013) bm!68493))

(declare-fun m!1412995 () Bool)

(assert (=> b!1530010 m!1412995))

(declare-fun m!1412997 () Bool)

(assert (=> b!1530010 m!1412997))

(declare-fun m!1412999 () Bool)

(assert (=> b!1530010 m!1412999))

(assert (=> b!1530010 m!1412995))

(declare-fun m!1413001 () Bool)

(assert (=> b!1530010 m!1413001))

(declare-fun m!1413003 () Bool)

(assert (=> bm!68493 m!1413003))

(assert (=> b!1530012 m!1412995))

(assert (=> b!1530012 m!1412995))

(declare-fun m!1413005 () Bool)

(assert (=> b!1530012 m!1413005))

(assert (=> b!1529884 d!159689))

(declare-fun b!1530016 () Bool)

(declare-fun e!852604 () Bool)

(declare-fun e!852603 () Bool)

(assert (=> b!1530016 (= e!852604 e!852603)))

(declare-fun lt!662608 () (_ BitVec 64))

(assert (=> b!1530016 (= lt!662608 (select (arr!49026 a!2804) j!70))))

(declare-fun lt!662607 () Unit!51164)

(assert (=> b!1530016 (= lt!662607 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!662608 j!70))))

(assert (=> b!1530016 (arrayContainsKey!0 a!2804 lt!662608 #b00000000000000000000000000000000)))

(declare-fun lt!662606 () Unit!51164)

(assert (=> b!1530016 (= lt!662606 lt!662607)))

(declare-fun res!1047778 () Bool)

(assert (=> b!1530016 (= res!1047778 (= (seekEntryOrOpen!0 (select (arr!49026 a!2804) j!70) a!2804 mask!2512) (Found!13212 j!70)))))

(assert (=> b!1530016 (=> (not res!1047778) (not e!852603))))

(declare-fun b!1530017 () Bool)

(declare-fun call!68497 () Bool)

(assert (=> b!1530017 (= e!852603 call!68497)))

(declare-fun bm!68494 () Bool)

(assert (=> bm!68494 (= call!68497 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun d!159695 () Bool)

(declare-fun res!1047779 () Bool)

(declare-fun e!852605 () Bool)

(assert (=> d!159695 (=> res!1047779 e!852605)))

(assert (=> d!159695 (= res!1047779 (bvsge j!70 (size!49577 a!2804)))))

(assert (=> d!159695 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!852605)))

(declare-fun b!1530018 () Bool)

(assert (=> b!1530018 (= e!852605 e!852604)))

(declare-fun c!140676 () Bool)

(assert (=> b!1530018 (= c!140676 (validKeyInArray!0 (select (arr!49026 a!2804) j!70)))))

(declare-fun b!1530019 () Bool)

(assert (=> b!1530019 (= e!852604 call!68497)))

(assert (= (and d!159695 (not res!1047779)) b!1530018))

(assert (= (and b!1530018 c!140676) b!1530016))

(assert (= (and b!1530018 (not c!140676)) b!1530019))

(assert (= (and b!1530016 res!1047778) b!1530017))

(assert (= (or b!1530017 b!1530019) bm!68494))

(assert (=> b!1530016 m!1412903))

(declare-fun m!1413007 () Bool)

(assert (=> b!1530016 m!1413007))

(declare-fun m!1413009 () Bool)

(assert (=> b!1530016 m!1413009))

(assert (=> b!1530016 m!1412903))

(declare-fun m!1413011 () Bool)

(assert (=> b!1530016 m!1413011))

(declare-fun m!1413013 () Bool)

(assert (=> bm!68494 m!1413013))

(assert (=> b!1530018 m!1412903))

(assert (=> b!1530018 m!1412903))

(assert (=> b!1530018 m!1412917))

(assert (=> b!1529879 d!159695))

(declare-fun d!159697 () Bool)

(assert (=> d!159697 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!662624 () Unit!51164)

(declare-fun choose!38 (array!101611 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51164)

(assert (=> d!159697 (= lt!662624 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!159697 (validMask!0 mask!2512)))

(assert (=> d!159697 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!662624)))

(declare-fun bs!43864 () Bool)

(assert (= bs!43864 d!159697))

(assert (=> bs!43864 m!1412915))

(declare-fun m!1413023 () Bool)

(assert (=> bs!43864 m!1413023))

(assert (=> bs!43864 m!1412899))

(assert (=> b!1529879 d!159697))

(declare-fun d!159701 () Bool)

(assert (=> d!159701 (= (validKeyInArray!0 (select (arr!49026 a!2804) j!70)) (and (not (= (select (arr!49026 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49026 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1529882 d!159701))

(declare-fun b!1530088 () Bool)

(declare-fun e!852651 () SeekEntryResult!13212)

(declare-fun lt!662650 () SeekEntryResult!13212)

(assert (=> b!1530088 (= e!852651 (Found!13212 (index!55244 lt!662650)))))

(declare-fun b!1530089 () Bool)

(declare-fun c!140700 () Bool)

(declare-fun lt!662648 () (_ BitVec 64))

(assert (=> b!1530089 (= c!140700 (= lt!662648 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!852649 () SeekEntryResult!13212)

(assert (=> b!1530089 (= e!852651 e!852649)))

(declare-fun b!1530090 () Bool)

(declare-fun e!852650 () SeekEntryResult!13212)

(assert (=> b!1530090 (= e!852650 e!852651)))

(assert (=> b!1530090 (= lt!662648 (select (arr!49026 a!2804) (index!55244 lt!662650)))))

(declare-fun c!140701 () Bool)

(assert (=> b!1530090 (= c!140701 (= lt!662648 (select (arr!49026 a!2804) j!70)))))

(declare-fun b!1530091 () Bool)

(assert (=> b!1530091 (= e!852649 (MissingZero!13212 (index!55244 lt!662650)))))

(declare-fun b!1530092 () Bool)

(assert (=> b!1530092 (= e!852650 Undefined!13212)))

(declare-fun b!1530093 () Bool)

(declare-fun lt!662649 () SeekEntryResult!13212)

(assert (=> b!1530093 (= e!852649 (ite (is-MissingVacant!13212 lt!662649) (MissingZero!13212 (index!55245 lt!662649)) lt!662649))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101611 (_ BitVec 32)) SeekEntryResult!13212)

(assert (=> b!1530093 (= lt!662649 (seekKeyOrZeroReturnVacant!0 (x!136926 lt!662650) (index!55244 lt!662650) (index!55244 lt!662650) (select (arr!49026 a!2804) j!70) a!2804 mask!2512))))

(declare-fun d!159703 () Bool)

(declare-fun lt!662647 () SeekEntryResult!13212)

(assert (=> d!159703 (and (or (is-MissingVacant!13212 lt!662647) (not (is-Found!13212 lt!662647)) (and (bvsge (index!55243 lt!662647) #b00000000000000000000000000000000) (bvslt (index!55243 lt!662647) (size!49577 a!2804)))) (not (is-MissingVacant!13212 lt!662647)) (or (not (is-Found!13212 lt!662647)) (= (select (arr!49026 a!2804) (index!55243 lt!662647)) (select (arr!49026 a!2804) j!70))))))

(assert (=> d!159703 (= lt!662647 e!852650)))

(declare-fun c!140699 () Bool)

(assert (=> d!159703 (= c!140699 (and (is-Intermediate!13212 lt!662650) (undefined!14024 lt!662650)))))

(assert (=> d!159703 (= lt!662650 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49026 a!2804) j!70) mask!2512) (select (arr!49026 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159703 (validMask!0 mask!2512)))

(assert (=> d!159703 (= (seekEntry!0 (select (arr!49026 a!2804) j!70) a!2804 mask!2512) lt!662647)))

(assert (= (and d!159703 c!140699) b!1530092))

(assert (= (and d!159703 (not c!140699)) b!1530090))

(assert (= (and b!1530090 c!140701) b!1530088))

(assert (= (and b!1530090 (not c!140701)) b!1530089))

(assert (= (and b!1530089 c!140700) b!1530091))

(assert (= (and b!1530089 (not c!140700)) b!1530093))

(declare-fun m!1413047 () Bool)

(assert (=> b!1530090 m!1413047))

(assert (=> b!1530093 m!1412903))

(declare-fun m!1413049 () Bool)

(assert (=> b!1530093 m!1413049))

(declare-fun m!1413051 () Bool)

(assert (=> d!159703 m!1413051))

(assert (=> d!159703 m!1412903))

(assert (=> d!159703 m!1412905))

(assert (=> d!159703 m!1412905))

(assert (=> d!159703 m!1412903))

(assert (=> d!159703 m!1412907))

(assert (=> d!159703 m!1412899))

(assert (=> b!1529877 d!159703))

(declare-fun d!159719 () Bool)

(assert (=> d!159719 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!130334 d!159719))

(declare-fun d!159731 () Bool)

(assert (=> d!159731 (= (array_inv!37971 a!2804) (bvsge (size!49577 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!130334 d!159731))

(declare-fun b!1530128 () Bool)

(declare-fun e!852672 () SeekEntryResult!13212)

(assert (=> b!1530128 (= e!852672 (Intermediate!13212 true (toIndex!0 (select (arr!49026 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1530129 () Bool)

(declare-fun e!852674 () Bool)

(declare-fun lt!662672 () SeekEntryResult!13212)

(assert (=> b!1530129 (= e!852674 (bvsge (x!136926 lt!662672) #b01111111111111111111111111111110))))

(declare-fun b!1530130 () Bool)

(assert (=> b!1530130 (and (bvsge (index!55244 lt!662672) #b00000000000000000000000000000000) (bvslt (index!55244 lt!662672) (size!49577 a!2804)))))

(declare-fun res!1047813 () Bool)

(assert (=> b!1530130 (= res!1047813 (= (select (arr!49026 a!2804) (index!55244 lt!662672)) (select (arr!49026 a!2804) j!70)))))

(declare-fun e!852673 () Bool)

(assert (=> b!1530130 (=> res!1047813 e!852673)))

(declare-fun e!852675 () Bool)

(assert (=> b!1530130 (= e!852675 e!852673)))

(declare-fun b!1530131 () Bool)

(assert (=> b!1530131 (and (bvsge (index!55244 lt!662672) #b00000000000000000000000000000000) (bvslt (index!55244 lt!662672) (size!49577 a!2804)))))

(declare-fun res!1047814 () Bool)

(assert (=> b!1530131 (= res!1047814 (= (select (arr!49026 a!2804) (index!55244 lt!662672)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1530131 (=> res!1047814 e!852673)))

(declare-fun b!1530132 () Bool)

(assert (=> b!1530132 (and (bvsge (index!55244 lt!662672) #b00000000000000000000000000000000) (bvslt (index!55244 lt!662672) (size!49577 a!2804)))))

(assert (=> b!1530132 (= e!852673 (= (select (arr!49026 a!2804) (index!55244 lt!662672)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1530133 () Bool)

(declare-fun e!852671 () SeekEntryResult!13212)

(assert (=> b!1530133 (= e!852671 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!49026 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!49026 a!2804) j!70) a!2804 mask!2512))))

(declare-fun d!159733 () Bool)

(assert (=> d!159733 e!852674))

(declare-fun c!140716 () Bool)

(assert (=> d!159733 (= c!140716 (and (is-Intermediate!13212 lt!662672) (undefined!14024 lt!662672)))))

(assert (=> d!159733 (= lt!662672 e!852672)))

(declare-fun c!140717 () Bool)

(assert (=> d!159733 (= c!140717 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!662671 () (_ BitVec 64))

(assert (=> d!159733 (= lt!662671 (select (arr!49026 a!2804) (toIndex!0 (select (arr!49026 a!2804) j!70) mask!2512)))))

(assert (=> d!159733 (validMask!0 mask!2512)))

(assert (=> d!159733 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49026 a!2804) j!70) mask!2512) (select (arr!49026 a!2804) j!70) a!2804 mask!2512) lt!662672)))

(declare-fun b!1530134 () Bool)

(assert (=> b!1530134 (= e!852674 e!852675)))

(declare-fun res!1047815 () Bool)

(assert (=> b!1530134 (= res!1047815 (and (is-Intermediate!13212 lt!662672) (not (undefined!14024 lt!662672)) (bvslt (x!136926 lt!662672) #b01111111111111111111111111111110) (bvsge (x!136926 lt!662672) #b00000000000000000000000000000000) (bvsge (x!136926 lt!662672) #b00000000000000000000000000000000)))))

(assert (=> b!1530134 (=> (not res!1047815) (not e!852675))))

(declare-fun b!1530135 () Bool)

(assert (=> b!1530135 (= e!852672 e!852671)))

(declare-fun c!140715 () Bool)

(assert (=> b!1530135 (= c!140715 (or (= lt!662671 (select (arr!49026 a!2804) j!70)) (= (bvadd lt!662671 lt!662671) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1530136 () Bool)

(assert (=> b!1530136 (= e!852671 (Intermediate!13212 false (toIndex!0 (select (arr!49026 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(assert (= (and d!159733 c!140717) b!1530128))

(assert (= (and d!159733 (not c!140717)) b!1530135))

(assert (= (and b!1530135 c!140715) b!1530136))

(assert (= (and b!1530135 (not c!140715)) b!1530133))

(assert (= (and d!159733 c!140716) b!1530129))

(assert (= (and d!159733 (not c!140716)) b!1530134))

(assert (= (and b!1530134 res!1047815) b!1530130))

(assert (= (and b!1530130 (not res!1047813)) b!1530131))

(assert (= (and b!1530131 (not res!1047814)) b!1530132))

(declare-fun m!1413077 () Bool)

(assert (=> b!1530130 m!1413077))

(assert (=> b!1530132 m!1413077))

(assert (=> b!1530131 m!1413077))

(assert (=> d!159733 m!1412905))

(declare-fun m!1413079 () Bool)

(assert (=> d!159733 m!1413079))

(assert (=> d!159733 m!1412899))

(assert (=> b!1530133 m!1412905))

(declare-fun m!1413081 () Bool)

(assert (=> b!1530133 m!1413081))

(assert (=> b!1530133 m!1413081))

(assert (=> b!1530133 m!1412903))

(declare-fun m!1413083 () Bool)

(assert (=> b!1530133 m!1413083))

(assert (=> b!1529881 d!159733))

(declare-fun d!159735 () Bool)

(declare-fun lt!662682 () (_ BitVec 32))

(declare-fun lt!662681 () (_ BitVec 32))

(assert (=> d!159735 (= lt!662682 (bvmul (bvxor lt!662681 (bvlshr lt!662681 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159735 (= lt!662681 ((_ extract 31 0) (bvand (bvxor (select (arr!49026 a!2804) j!70) (bvlshr (select (arr!49026 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159735 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1047816 (let ((h!37125 ((_ extract 31 0) (bvand (bvxor (select (arr!49026 a!2804) j!70) (bvlshr (select (arr!49026 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136934 (bvmul (bvxor h!37125 (bvlshr h!37125 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136934 (bvlshr x!136934 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1047816 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1047816 #b00000000000000000000000000000000))))))

(assert (=> d!159735 (= (toIndex!0 (select (arr!49026 a!2804) j!70) mask!2512) (bvand (bvxor lt!662682 (bvlshr lt!662682 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1529881 d!159735))

(declare-fun d!159737 () Bool)

(declare-fun lt!662685 () (_ BitVec 32))

(assert (=> d!159737 (and (bvsge lt!662685 #b00000000000000000000000000000000) (bvslt lt!662685 (bvadd mask!2512 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!159737 (= lt!662685 (choose!52 index!487 x!534 mask!2512))))

(assert (=> d!159737 (validMask!0 mask!2512)))

(assert (=> d!159737 (= (nextIndex!0 index!487 x!534 mask!2512) lt!662685)))

(declare-fun bs!43867 () Bool)

(assert (= bs!43867 d!159737))

(declare-fun m!1413091 () Bool)

(assert (=> bs!43867 m!1413091))

(assert (=> bs!43867 m!1412899))

(assert (=> b!1529876 d!159737))

(declare-fun b!1530143 () Bool)

(declare-fun e!852680 () SeekEntryResult!13212)

(assert (=> b!1530143 (= e!852680 (Intermediate!13212 true (toIndex!0 (select (store (arr!49026 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1530144 () Bool)

(declare-fun e!852682 () Bool)

(declare-fun lt!662687 () SeekEntryResult!13212)

(assert (=> b!1530144 (= e!852682 (bvsge (x!136926 lt!662687) #b01111111111111111111111111111110))))

(declare-fun b!1530145 () Bool)

(assert (=> b!1530145 (and (bvsge (index!55244 lt!662687) #b00000000000000000000000000000000) (bvslt (index!55244 lt!662687) (size!49577 (array!101612 (store (arr!49026 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49577 a!2804)))))))

(declare-fun res!1047817 () Bool)

(assert (=> b!1530145 (= res!1047817 (= (select (arr!49026 (array!101612 (store (arr!49026 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49577 a!2804))) (index!55244 lt!662687)) (select (store (arr!49026 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(declare-fun e!852681 () Bool)

(assert (=> b!1530145 (=> res!1047817 e!852681)))

(declare-fun e!852683 () Bool)

(assert (=> b!1530145 (= e!852683 e!852681)))

(declare-fun b!1530146 () Bool)

(assert (=> b!1530146 (and (bvsge (index!55244 lt!662687) #b00000000000000000000000000000000) (bvslt (index!55244 lt!662687) (size!49577 (array!101612 (store (arr!49026 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49577 a!2804)))))))

(declare-fun res!1047818 () Bool)

(assert (=> b!1530146 (= res!1047818 (= (select (arr!49026 (array!101612 (store (arr!49026 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49577 a!2804))) (index!55244 lt!662687)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1530146 (=> res!1047818 e!852681)))

(declare-fun b!1530147 () Bool)

(assert (=> b!1530147 (and (bvsge (index!55244 lt!662687) #b00000000000000000000000000000000) (bvslt (index!55244 lt!662687) (size!49577 (array!101612 (store (arr!49026 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49577 a!2804)))))))

(assert (=> b!1530147 (= e!852681 (= (select (arr!49026 (array!101612 (store (arr!49026 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49577 a!2804))) (index!55244 lt!662687)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1530148 () Bool)

(declare-fun e!852679 () SeekEntryResult!13212)

(assert (=> b!1530148 (= e!852679 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!49026 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (store (arr!49026 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101612 (store (arr!49026 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49577 a!2804)) mask!2512))))

(declare-fun d!159739 () Bool)

(assert (=> d!159739 e!852682))

(declare-fun c!140722 () Bool)

(assert (=> d!159739 (= c!140722 (and (is-Intermediate!13212 lt!662687) (undefined!14024 lt!662687)))))

(assert (=> d!159739 (= lt!662687 e!852680)))

(declare-fun c!140723 () Bool)

(assert (=> d!159739 (= c!140723 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!662686 () (_ BitVec 64))

(assert (=> d!159739 (= lt!662686 (select (arr!49026 (array!101612 (store (arr!49026 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49577 a!2804))) (toIndex!0 (select (store (arr!49026 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512)))))

