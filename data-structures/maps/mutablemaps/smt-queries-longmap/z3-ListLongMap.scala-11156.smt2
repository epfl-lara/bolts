; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130332 () Bool)

(assert start!130332)

(declare-fun b!1529837 () Bool)

(declare-fun res!1047688 () Bool)

(declare-fun e!852503 () Bool)

(assert (=> b!1529837 (=> (not res!1047688) (not e!852503))))

(declare-datatypes ((array!101609 0))(
  ( (array!101610 (arr!49025 (Array (_ BitVec 32) (_ BitVec 64))) (size!49576 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101609)

(declare-datatypes ((List!35688 0))(
  ( (Nil!35685) (Cons!35684 (h!37121 (_ BitVec 64)) (t!50389 List!35688)) )
))
(declare-fun arrayNoDuplicates!0 (array!101609 (_ BitVec 32) List!35688) Bool)

(assert (=> b!1529837 (= res!1047688 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35685))))

(declare-fun b!1529838 () Bool)

(declare-fun e!852504 () Bool)

(assert (=> b!1529838 (= e!852503 e!852504)))

(declare-fun res!1047691 () Bool)

(assert (=> b!1529838 (=> (not res!1047691) (not e!852504))))

(declare-datatypes ((SeekEntryResult!13211 0))(
  ( (MissingZero!13211 (index!55238 (_ BitVec 32))) (Found!13211 (index!55239 (_ BitVec 32))) (Intermediate!13211 (undefined!14023 Bool) (index!55240 (_ BitVec 32)) (x!136925 (_ BitVec 32))) (Undefined!13211) (MissingVacant!13211 (index!55241 (_ BitVec 32))) )
))
(declare-fun lt!662531 () SeekEntryResult!13211)

(declare-fun lt!662533 () SeekEntryResult!13211)

(assert (=> b!1529838 (= res!1047691 (= lt!662531 lt!662533))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1529838 (= lt!662533 (Intermediate!13211 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101609 (_ BitVec 32)) SeekEntryResult!13211)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529838 (= lt!662531 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49025 a!2804) j!70) mask!2512) (select (arr!49025 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1529839 () Bool)

(declare-fun res!1047692 () Bool)

(assert (=> b!1529839 (=> (not res!1047692) (not e!852504))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1529839 (= res!1047692 (= lt!662531 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49025 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49025 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101610 (store (arr!49025 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49576 a!2804)) mask!2512)))))

(declare-fun b!1529841 () Bool)

(declare-fun res!1047687 () Bool)

(assert (=> b!1529841 (=> (not res!1047687) (not e!852504))))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1529841 (= res!1047687 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49025 a!2804) j!70) a!2804 mask!2512) lt!662533))))

(declare-fun b!1529842 () Bool)

(declare-fun e!852502 () Bool)

(assert (=> b!1529842 (= e!852504 (not e!852502))))

(declare-fun res!1047693 () Bool)

(assert (=> b!1529842 (=> res!1047693 e!852502)))

(assert (=> b!1529842 (= res!1047693 (or (not (= (select (arr!49025 a!2804) j!70) (select (store (arr!49025 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!852506 () Bool)

(assert (=> b!1529842 e!852506))

(declare-fun res!1047689 () Bool)

(assert (=> b!1529842 (=> (not res!1047689) (not e!852506))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101609 (_ BitVec 32)) Bool)

(assert (=> b!1529842 (= res!1047689 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51162 0))(
  ( (Unit!51163) )
))
(declare-fun lt!662532 () Unit!51162)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101609 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51162)

(assert (=> b!1529842 (= lt!662532 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1529843 () Bool)

(declare-fun res!1047690 () Bool)

(assert (=> b!1529843 (=> (not res!1047690) (not e!852503))))

(assert (=> b!1529843 (= res!1047690 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49576 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49576 a!2804))))))

(declare-fun b!1529844 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101609 (_ BitVec 32)) SeekEntryResult!13211)

(assert (=> b!1529844 (= e!852506 (= (seekEntry!0 (select (arr!49025 a!2804) j!70) a!2804 mask!2512) (Found!13211 j!70)))))

(declare-fun b!1529845 () Bool)

(declare-fun res!1047686 () Bool)

(assert (=> b!1529845 (=> (not res!1047686) (not e!852503))))

(assert (=> b!1529845 (= res!1047686 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1529846 () Bool)

(assert (=> b!1529846 (= e!852502 (and (bvsge (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110)))))

(declare-fun lt!662530 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529846 (= lt!662530 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1529840 () Bool)

(declare-fun res!1047684 () Bool)

(assert (=> b!1529840 (=> (not res!1047684) (not e!852503))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1529840 (= res!1047684 (validKeyInArray!0 (select (arr!49025 a!2804) j!70)))))

(declare-fun res!1047682 () Bool)

(assert (=> start!130332 (=> (not res!1047682) (not e!852503))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130332 (= res!1047682 (validMask!0 mask!2512))))

(assert (=> start!130332 e!852503))

(assert (=> start!130332 true))

(declare-fun array_inv!37970 (array!101609) Bool)

(assert (=> start!130332 (array_inv!37970 a!2804)))

(declare-fun b!1529847 () Bool)

(declare-fun res!1047683 () Bool)

(assert (=> b!1529847 (=> (not res!1047683) (not e!852503))))

(assert (=> b!1529847 (= res!1047683 (validKeyInArray!0 (select (arr!49025 a!2804) i!961)))))

(declare-fun b!1529848 () Bool)

(declare-fun res!1047685 () Bool)

(assert (=> b!1529848 (=> (not res!1047685) (not e!852503))))

(assert (=> b!1529848 (= res!1047685 (and (= (size!49576 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49576 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49576 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!130332 res!1047682) b!1529848))

(assert (= (and b!1529848 res!1047685) b!1529847))

(assert (= (and b!1529847 res!1047683) b!1529840))

(assert (= (and b!1529840 res!1047684) b!1529845))

(assert (= (and b!1529845 res!1047686) b!1529837))

(assert (= (and b!1529837 res!1047688) b!1529843))

(assert (= (and b!1529843 res!1047690) b!1529838))

(assert (= (and b!1529838 res!1047691) b!1529841))

(assert (= (and b!1529841 res!1047687) b!1529839))

(assert (= (and b!1529839 res!1047692) b!1529842))

(assert (= (and b!1529842 res!1047689) b!1529844))

(assert (= (and b!1529842 (not res!1047693)) b!1529846))

(declare-fun m!1412861 () Bool)

(assert (=> b!1529842 m!1412861))

(declare-fun m!1412863 () Bool)

(assert (=> b!1529842 m!1412863))

(declare-fun m!1412865 () Bool)

(assert (=> b!1529842 m!1412865))

(declare-fun m!1412867 () Bool)

(assert (=> b!1529842 m!1412867))

(declare-fun m!1412869 () Bool)

(assert (=> b!1529842 m!1412869))

(assert (=> b!1529844 m!1412861))

(assert (=> b!1529844 m!1412861))

(declare-fun m!1412871 () Bool)

(assert (=> b!1529844 m!1412871))

(assert (=> b!1529838 m!1412861))

(assert (=> b!1529838 m!1412861))

(declare-fun m!1412873 () Bool)

(assert (=> b!1529838 m!1412873))

(assert (=> b!1529838 m!1412873))

(assert (=> b!1529838 m!1412861))

(declare-fun m!1412875 () Bool)

(assert (=> b!1529838 m!1412875))

(declare-fun m!1412877 () Bool)

(assert (=> b!1529846 m!1412877))

(assert (=> b!1529841 m!1412861))

(assert (=> b!1529841 m!1412861))

(declare-fun m!1412879 () Bool)

(assert (=> b!1529841 m!1412879))

(assert (=> b!1529839 m!1412865))

(assert (=> b!1529839 m!1412867))

(assert (=> b!1529839 m!1412867))

(declare-fun m!1412881 () Bool)

(assert (=> b!1529839 m!1412881))

(assert (=> b!1529839 m!1412881))

(assert (=> b!1529839 m!1412867))

(declare-fun m!1412883 () Bool)

(assert (=> b!1529839 m!1412883))

(declare-fun m!1412885 () Bool)

(assert (=> start!130332 m!1412885))

(declare-fun m!1412887 () Bool)

(assert (=> start!130332 m!1412887))

(declare-fun m!1412889 () Bool)

(assert (=> b!1529847 m!1412889))

(assert (=> b!1529847 m!1412889))

(declare-fun m!1412891 () Bool)

(assert (=> b!1529847 m!1412891))

(declare-fun m!1412893 () Bool)

(assert (=> b!1529837 m!1412893))

(declare-fun m!1412895 () Bool)

(assert (=> b!1529845 m!1412895))

(assert (=> b!1529840 m!1412861))

(assert (=> b!1529840 m!1412861))

(declare-fun m!1412897 () Bool)

(assert (=> b!1529840 m!1412897))

(check-sat (not b!1529838) (not start!130332) (not b!1529840) (not b!1529842) (not b!1529844) (not b!1529847) (not b!1529841) (not b!1529839) (not b!1529846) (not b!1529845) (not b!1529837))
(check-sat)
(get-model)

(declare-fun d!159655 () Bool)

(assert (=> d!159655 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!130332 d!159655))

(declare-fun d!159659 () Bool)

(assert (=> d!159659 (= (array_inv!37970 a!2804) (bvsge (size!49576 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!130332 d!159659))

(declare-fun b!1529893 () Bool)

(declare-fun e!852529 () Bool)

(declare-fun call!68490 () Bool)

(assert (=> b!1529893 (= e!852529 call!68490)))

(declare-fun b!1529894 () Bool)

(declare-fun e!852528 () Bool)

(declare-fun e!852530 () Bool)

(assert (=> b!1529894 (= e!852528 e!852530)))

(declare-fun c!140636 () Bool)

(assert (=> b!1529894 (= c!140636 (validKeyInArray!0 (select (arr!49025 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!159661 () Bool)

(declare-fun res!1047734 () Bool)

(assert (=> d!159661 (=> res!1047734 e!852528)))

(assert (=> d!159661 (= res!1047734 (bvsge #b00000000000000000000000000000000 (size!49576 a!2804)))))

(assert (=> d!159661 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!852528)))

(declare-fun b!1529895 () Bool)

(assert (=> b!1529895 (= e!852530 e!852529)))

(declare-fun lt!662552 () (_ BitVec 64))

(assert (=> b!1529895 (= lt!662552 (select (arr!49025 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!662553 () Unit!51162)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101609 (_ BitVec 64) (_ BitVec 32)) Unit!51162)

(assert (=> b!1529895 (= lt!662553 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!662552 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!101609 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1529895 (arrayContainsKey!0 a!2804 lt!662552 #b00000000000000000000000000000000)))

(declare-fun lt!662554 () Unit!51162)

(assert (=> b!1529895 (= lt!662554 lt!662553)))

(declare-fun res!1047735 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101609 (_ BitVec 32)) SeekEntryResult!13211)

(assert (=> b!1529895 (= res!1047735 (= (seekEntryOrOpen!0 (select (arr!49025 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13211 #b00000000000000000000000000000000)))))

(assert (=> b!1529895 (=> (not res!1047735) (not e!852529))))

(declare-fun bm!68487 () Bool)

(assert (=> bm!68487 (= call!68490 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1529896 () Bool)

(assert (=> b!1529896 (= e!852530 call!68490)))

(assert (= (and d!159661 (not res!1047734)) b!1529894))

(assert (= (and b!1529894 c!140636) b!1529895))

(assert (= (and b!1529894 (not c!140636)) b!1529896))

(assert (= (and b!1529895 res!1047735) b!1529893))

(assert (= (or b!1529893 b!1529896) bm!68487))

(declare-fun m!1412937 () Bool)

(assert (=> b!1529894 m!1412937))

(assert (=> b!1529894 m!1412937))

(declare-fun m!1412939 () Bool)

(assert (=> b!1529894 m!1412939))

(assert (=> b!1529895 m!1412937))

(declare-fun m!1412941 () Bool)

(assert (=> b!1529895 m!1412941))

(declare-fun m!1412943 () Bool)

(assert (=> b!1529895 m!1412943))

(assert (=> b!1529895 m!1412937))

(declare-fun m!1412945 () Bool)

(assert (=> b!1529895 m!1412945))

(declare-fun m!1412947 () Bool)

(assert (=> bm!68487 m!1412947))

(assert (=> b!1529845 d!159661))

(declare-fun d!159665 () Bool)

(assert (=> d!159665 (= (validKeyInArray!0 (select (arr!49025 a!2804) j!70)) (and (not (= (select (arr!49025 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49025 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1529840 d!159665))

(declare-fun d!159667 () Bool)

(declare-fun lt!662561 () (_ BitVec 32))

(assert (=> d!159667 (and (bvsge lt!662561 #b00000000000000000000000000000000) (bvslt lt!662561 (bvadd mask!2512 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!159667 (= lt!662561 (choose!52 index!487 x!534 mask!2512))))

(assert (=> d!159667 (validMask!0 mask!2512)))

(assert (=> d!159667 (= (nextIndex!0 index!487 x!534 mask!2512) lt!662561)))

(declare-fun bs!43862 () Bool)

(assert (= bs!43862 d!159667))

(declare-fun m!1412949 () Bool)

(assert (=> bs!43862 m!1412949))

(assert (=> bs!43862 m!1412885))

(assert (=> b!1529846 d!159667))

(declare-fun d!159669 () Bool)

(declare-fun lt!662592 () SeekEntryResult!13211)

(get-info :version)

(assert (=> d!159669 (and (or ((_ is MissingVacant!13211) lt!662592) (not ((_ is Found!13211) lt!662592)) (and (bvsge (index!55239 lt!662592) #b00000000000000000000000000000000) (bvslt (index!55239 lt!662592) (size!49576 a!2804)))) (not ((_ is MissingVacant!13211) lt!662592)) (or (not ((_ is Found!13211) lt!662592)) (= (select (arr!49025 a!2804) (index!55239 lt!662592)) (select (arr!49025 a!2804) j!70))))))

(declare-fun e!852572 () SeekEntryResult!13211)

(assert (=> d!159669 (= lt!662592 e!852572)))

(declare-fun c!140664 () Bool)

(declare-fun lt!662593 () SeekEntryResult!13211)

(assert (=> d!159669 (= c!140664 (and ((_ is Intermediate!13211) lt!662593) (undefined!14023 lt!662593)))))

(assert (=> d!159669 (= lt!662593 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49025 a!2804) j!70) mask!2512) (select (arr!49025 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159669 (validMask!0 mask!2512)))

(assert (=> d!159669 (= (seekEntry!0 (select (arr!49025 a!2804) j!70) a!2804 mask!2512) lt!662592)))

(declare-fun b!1529972 () Bool)

(assert (=> b!1529972 (= e!852572 Undefined!13211)))

(declare-fun b!1529973 () Bool)

(declare-fun e!852573 () SeekEntryResult!13211)

(assert (=> b!1529973 (= e!852573 (Found!13211 (index!55240 lt!662593)))))

(declare-fun b!1529974 () Bool)

(assert (=> b!1529974 (= e!852572 e!852573)))

(declare-fun lt!662594 () (_ BitVec 64))

(assert (=> b!1529974 (= lt!662594 (select (arr!49025 a!2804) (index!55240 lt!662593)))))

(declare-fun c!140666 () Bool)

(assert (=> b!1529974 (= c!140666 (= lt!662594 (select (arr!49025 a!2804) j!70)))))

(declare-fun b!1529975 () Bool)

(declare-fun e!852574 () SeekEntryResult!13211)

(assert (=> b!1529975 (= e!852574 (MissingZero!13211 (index!55240 lt!662593)))))

(declare-fun b!1529976 () Bool)

(declare-fun c!140665 () Bool)

(assert (=> b!1529976 (= c!140665 (= lt!662594 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1529976 (= e!852573 e!852574)))

(declare-fun b!1529977 () Bool)

(declare-fun lt!662591 () SeekEntryResult!13211)

(assert (=> b!1529977 (= e!852574 (ite ((_ is MissingVacant!13211) lt!662591) (MissingZero!13211 (index!55241 lt!662591)) lt!662591))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101609 (_ BitVec 32)) SeekEntryResult!13211)

(assert (=> b!1529977 (= lt!662591 (seekKeyOrZeroReturnVacant!0 (x!136925 lt!662593) (index!55240 lt!662593) (index!55240 lt!662593) (select (arr!49025 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and d!159669 c!140664) b!1529972))

(assert (= (and d!159669 (not c!140664)) b!1529974))

(assert (= (and b!1529974 c!140666) b!1529973))

(assert (= (and b!1529974 (not c!140666)) b!1529976))

(assert (= (and b!1529976 c!140665) b!1529975))

(assert (= (and b!1529976 (not c!140665)) b!1529977))

(declare-fun m!1412975 () Bool)

(assert (=> d!159669 m!1412975))

(assert (=> d!159669 m!1412861))

(assert (=> d!159669 m!1412873))

(assert (=> d!159669 m!1412873))

(assert (=> d!159669 m!1412861))

(assert (=> d!159669 m!1412875))

(assert (=> d!159669 m!1412885))

(declare-fun m!1412977 () Bool)

(assert (=> b!1529974 m!1412977))

(assert (=> b!1529977 m!1412861))

(declare-fun m!1412979 () Bool)

(assert (=> b!1529977 m!1412979))

(assert (=> b!1529844 d!159669))

(declare-fun e!852624 () SeekEntryResult!13211)

(declare-fun b!1530048 () Bool)

(assert (=> b!1530048 (= e!852624 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!49025 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (store (arr!49025 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101610 (store (arr!49025 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49576 a!2804)) mask!2512))))

(declare-fun b!1530049 () Bool)

(declare-fun e!852623 () SeekEntryResult!13211)

(assert (=> b!1530049 (= e!852623 (Intermediate!13211 true (toIndex!0 (select (store (arr!49025 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1530050 () Bool)

(declare-fun lt!662625 () SeekEntryResult!13211)

(assert (=> b!1530050 (and (bvsge (index!55240 lt!662625) #b00000000000000000000000000000000) (bvslt (index!55240 lt!662625) (size!49576 (array!101610 (store (arr!49025 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49576 a!2804)))))))

(declare-fun res!1047790 () Bool)

(assert (=> b!1530050 (= res!1047790 (= (select (arr!49025 (array!101610 (store (arr!49025 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49576 a!2804))) (index!55240 lt!662625)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!852625 () Bool)

(assert (=> b!1530050 (=> res!1047790 e!852625)))

(declare-fun b!1530051 () Bool)

(assert (=> b!1530051 (and (bvsge (index!55240 lt!662625) #b00000000000000000000000000000000) (bvslt (index!55240 lt!662625) (size!49576 (array!101610 (store (arr!49025 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49576 a!2804)))))))

(declare-fun res!1047791 () Bool)

(assert (=> b!1530051 (= res!1047791 (= (select (arr!49025 (array!101610 (store (arr!49025 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49576 a!2804))) (index!55240 lt!662625)) (select (store (arr!49025 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(assert (=> b!1530051 (=> res!1047791 e!852625)))

(declare-fun e!852626 () Bool)

(assert (=> b!1530051 (= e!852626 e!852625)))

(declare-fun b!1530052 () Bool)

(declare-fun e!852627 () Bool)

(assert (=> b!1530052 (= e!852627 (bvsge (x!136925 lt!662625) #b01111111111111111111111111111110))))

(declare-fun b!1530054 () Bool)

(assert (=> b!1530054 (= e!852624 (Intermediate!13211 false (toIndex!0 (select (store (arr!49025 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1530055 () Bool)

(assert (=> b!1530055 (and (bvsge (index!55240 lt!662625) #b00000000000000000000000000000000) (bvslt (index!55240 lt!662625) (size!49576 (array!101610 (store (arr!49025 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49576 a!2804)))))))

(assert (=> b!1530055 (= e!852625 (= (select (arr!49025 (array!101610 (store (arr!49025 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49576 a!2804))) (index!55240 lt!662625)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1530056 () Bool)

(assert (=> b!1530056 (= e!852627 e!852626)))

(declare-fun res!1047792 () Bool)

(assert (=> b!1530056 (= res!1047792 (and ((_ is Intermediate!13211) lt!662625) (not (undefined!14023 lt!662625)) (bvslt (x!136925 lt!662625) #b01111111111111111111111111111110) (bvsge (x!136925 lt!662625) #b00000000000000000000000000000000) (bvsge (x!136925 lt!662625) #b00000000000000000000000000000000)))))

(assert (=> b!1530056 (=> (not res!1047792) (not e!852626))))

(declare-fun b!1530053 () Bool)

(assert (=> b!1530053 (= e!852623 e!852624)))

(declare-fun c!140686 () Bool)

(declare-fun lt!662626 () (_ BitVec 64))

(assert (=> b!1530053 (= c!140686 (or (= lt!662626 (select (store (arr!49025 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)) (= (bvadd lt!662626 lt!662626) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!159685 () Bool)

(assert (=> d!159685 e!852627))

(declare-fun c!140687 () Bool)

(assert (=> d!159685 (= c!140687 (and ((_ is Intermediate!13211) lt!662625) (undefined!14023 lt!662625)))))

(assert (=> d!159685 (= lt!662625 e!852623)))

(declare-fun c!140688 () Bool)

(assert (=> d!159685 (= c!140688 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!159685 (= lt!662626 (select (arr!49025 (array!101610 (store (arr!49025 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49576 a!2804))) (toIndex!0 (select (store (arr!49025 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512)))))

(assert (=> d!159685 (validMask!0 mask!2512)))

(assert (=> d!159685 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49025 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49025 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101610 (store (arr!49025 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49576 a!2804)) mask!2512) lt!662625)))

(assert (= (and d!159685 c!140688) b!1530049))

(assert (= (and d!159685 (not c!140688)) b!1530053))

(assert (= (and b!1530053 c!140686) b!1530054))

(assert (= (and b!1530053 (not c!140686)) b!1530048))

(assert (= (and d!159685 c!140687) b!1530052))

(assert (= (and d!159685 (not c!140687)) b!1530056))

(assert (= (and b!1530056 res!1047792) b!1530051))

(assert (= (and b!1530051 (not res!1047791)) b!1530050))

(assert (= (and b!1530050 (not res!1047790)) b!1530055))

(assert (=> d!159685 m!1412881))

(declare-fun m!1413025 () Bool)

(assert (=> d!159685 m!1413025))

(assert (=> d!159685 m!1412885))

(declare-fun m!1413027 () Bool)

(assert (=> b!1530050 m!1413027))

(assert (=> b!1530048 m!1412881))

(declare-fun m!1413029 () Bool)

(assert (=> b!1530048 m!1413029))

(assert (=> b!1530048 m!1413029))

(assert (=> b!1530048 m!1412867))

(declare-fun m!1413031 () Bool)

(assert (=> b!1530048 m!1413031))

(assert (=> b!1530051 m!1413027))

(assert (=> b!1530055 m!1413027))

(assert (=> b!1529839 d!159685))

(declare-fun d!159705 () Bool)

(declare-fun lt!662638 () (_ BitVec 32))

(declare-fun lt!662637 () (_ BitVec 32))

(assert (=> d!159705 (= lt!662638 (bvmul (bvxor lt!662637 (bvlshr lt!662637 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159705 (= lt!662637 ((_ extract 31 0) (bvand (bvxor (select (store (arr!49025 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!49025 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159705 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1047795 (let ((h!37124 ((_ extract 31 0) (bvand (bvxor (select (store (arr!49025 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!49025 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136933 (bvmul (bvxor h!37124 (bvlshr h!37124 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136933 (bvlshr x!136933 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1047795 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1047795 #b00000000000000000000000000000000))))))

(assert (=> d!159705 (= (toIndex!0 (select (store (arr!49025 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (bvand (bvxor lt!662638 (bvlshr lt!662638 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1529839 d!159705))

(declare-fun b!1530083 () Bool)

(declare-fun e!852646 () Bool)

(declare-fun e!852647 () Bool)

(assert (=> b!1530083 (= e!852646 e!852647)))

(declare-fun c!140698 () Bool)

(assert (=> b!1530083 (= c!140698 (validKeyInArray!0 (select (arr!49025 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1530084 () Bool)

(declare-fun e!852648 () Bool)

(assert (=> b!1530084 (= e!852648 e!852646)))

(declare-fun res!1047803 () Bool)

(assert (=> b!1530084 (=> (not res!1047803) (not e!852646))))

(declare-fun e!852645 () Bool)

(assert (=> b!1530084 (= res!1047803 (not e!852645))))

(declare-fun res!1047802 () Bool)

(assert (=> b!1530084 (=> (not res!1047802) (not e!852645))))

(assert (=> b!1530084 (= res!1047802 (validKeyInArray!0 (select (arr!49025 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1530085 () Bool)

(declare-fun call!68504 () Bool)

(assert (=> b!1530085 (= e!852647 call!68504)))

(declare-fun b!1530086 () Bool)

(declare-fun contains!10010 (List!35688 (_ BitVec 64)) Bool)

(assert (=> b!1530086 (= e!852645 (contains!10010 Nil!35685 (select (arr!49025 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!159711 () Bool)

(declare-fun res!1047804 () Bool)

(assert (=> d!159711 (=> res!1047804 e!852648)))

(assert (=> d!159711 (= res!1047804 (bvsge #b00000000000000000000000000000000 (size!49576 a!2804)))))

(assert (=> d!159711 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35685) e!852648)))

(declare-fun bm!68501 () Bool)

(assert (=> bm!68501 (= call!68504 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!140698 (Cons!35684 (select (arr!49025 a!2804) #b00000000000000000000000000000000) Nil!35685) Nil!35685)))))

(declare-fun b!1530087 () Bool)

(assert (=> b!1530087 (= e!852647 call!68504)))

(assert (= (and d!159711 (not res!1047804)) b!1530084))

(assert (= (and b!1530084 res!1047802) b!1530086))

(assert (= (and b!1530084 res!1047803) b!1530083))

(assert (= (and b!1530083 c!140698) b!1530085))

(assert (= (and b!1530083 (not c!140698)) b!1530087))

(assert (= (or b!1530085 b!1530087) bm!68501))

(assert (=> b!1530083 m!1412937))

(assert (=> b!1530083 m!1412937))

(assert (=> b!1530083 m!1412939))

(assert (=> b!1530084 m!1412937))

(assert (=> b!1530084 m!1412937))

(assert (=> b!1530084 m!1412939))

(assert (=> b!1530086 m!1412937))

(assert (=> b!1530086 m!1412937))

(declare-fun m!1413043 () Bool)

(assert (=> b!1530086 m!1413043))

(assert (=> bm!68501 m!1412937))

(declare-fun m!1413045 () Bool)

(assert (=> bm!68501 m!1413045))

(assert (=> b!1529837 d!159711))

(declare-fun e!852653 () SeekEntryResult!13211)

(declare-fun b!1530094 () Bool)

(assert (=> b!1530094 (= e!852653 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!49025 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!49025 a!2804) j!70) a!2804 mask!2512))))

(declare-fun e!852652 () SeekEntryResult!13211)

(declare-fun b!1530095 () Bool)

(assert (=> b!1530095 (= e!852652 (Intermediate!13211 true (toIndex!0 (select (arr!49025 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1530096 () Bool)

(declare-fun lt!662651 () SeekEntryResult!13211)

(assert (=> b!1530096 (and (bvsge (index!55240 lt!662651) #b00000000000000000000000000000000) (bvslt (index!55240 lt!662651) (size!49576 a!2804)))))

(declare-fun res!1047805 () Bool)

(assert (=> b!1530096 (= res!1047805 (= (select (arr!49025 a!2804) (index!55240 lt!662651)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!852654 () Bool)

(assert (=> b!1530096 (=> res!1047805 e!852654)))

(declare-fun b!1530097 () Bool)

(assert (=> b!1530097 (and (bvsge (index!55240 lt!662651) #b00000000000000000000000000000000) (bvslt (index!55240 lt!662651) (size!49576 a!2804)))))

(declare-fun res!1047806 () Bool)

(assert (=> b!1530097 (= res!1047806 (= (select (arr!49025 a!2804) (index!55240 lt!662651)) (select (arr!49025 a!2804) j!70)))))

(assert (=> b!1530097 (=> res!1047806 e!852654)))

(declare-fun e!852655 () Bool)

(assert (=> b!1530097 (= e!852655 e!852654)))

(declare-fun b!1530098 () Bool)

(declare-fun e!852656 () Bool)

(assert (=> b!1530098 (= e!852656 (bvsge (x!136925 lt!662651) #b01111111111111111111111111111110))))

(declare-fun b!1530100 () Bool)

(assert (=> b!1530100 (= e!852653 (Intermediate!13211 false (toIndex!0 (select (arr!49025 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1530101 () Bool)

(assert (=> b!1530101 (and (bvsge (index!55240 lt!662651) #b00000000000000000000000000000000) (bvslt (index!55240 lt!662651) (size!49576 a!2804)))))

(assert (=> b!1530101 (= e!852654 (= (select (arr!49025 a!2804) (index!55240 lt!662651)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1530102 () Bool)

(assert (=> b!1530102 (= e!852656 e!852655)))

(declare-fun res!1047807 () Bool)

(assert (=> b!1530102 (= res!1047807 (and ((_ is Intermediate!13211) lt!662651) (not (undefined!14023 lt!662651)) (bvslt (x!136925 lt!662651) #b01111111111111111111111111111110) (bvsge (x!136925 lt!662651) #b00000000000000000000000000000000) (bvsge (x!136925 lt!662651) #b00000000000000000000000000000000)))))

(assert (=> b!1530102 (=> (not res!1047807) (not e!852655))))

(declare-fun b!1530099 () Bool)

(assert (=> b!1530099 (= e!852652 e!852653)))

(declare-fun lt!662652 () (_ BitVec 64))

(declare-fun c!140702 () Bool)

(assert (=> b!1530099 (= c!140702 (or (= lt!662652 (select (arr!49025 a!2804) j!70)) (= (bvadd lt!662652 lt!662652) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!159717 () Bool)

(assert (=> d!159717 e!852656))

(declare-fun c!140703 () Bool)

(assert (=> d!159717 (= c!140703 (and ((_ is Intermediate!13211) lt!662651) (undefined!14023 lt!662651)))))

(assert (=> d!159717 (= lt!662651 e!852652)))

(declare-fun c!140704 () Bool)

(assert (=> d!159717 (= c!140704 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!159717 (= lt!662652 (select (arr!49025 a!2804) (toIndex!0 (select (arr!49025 a!2804) j!70) mask!2512)))))

(assert (=> d!159717 (validMask!0 mask!2512)))

(assert (=> d!159717 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49025 a!2804) j!70) mask!2512) (select (arr!49025 a!2804) j!70) a!2804 mask!2512) lt!662651)))

(assert (= (and d!159717 c!140704) b!1530095))

(assert (= (and d!159717 (not c!140704)) b!1530099))

(assert (= (and b!1530099 c!140702) b!1530100))

(assert (= (and b!1530099 (not c!140702)) b!1530094))

(assert (= (and d!159717 c!140703) b!1530098))

(assert (= (and d!159717 (not c!140703)) b!1530102))

(assert (= (and b!1530102 res!1047807) b!1530097))

(assert (= (and b!1530097 (not res!1047806)) b!1530096))

(assert (= (and b!1530096 (not res!1047805)) b!1530101))

(assert (=> d!159717 m!1412873))

(declare-fun m!1413053 () Bool)

(assert (=> d!159717 m!1413053))

(assert (=> d!159717 m!1412885))

(declare-fun m!1413055 () Bool)

(assert (=> b!1530096 m!1413055))

(assert (=> b!1530094 m!1412873))

(declare-fun m!1413057 () Bool)

(assert (=> b!1530094 m!1413057))

(assert (=> b!1530094 m!1413057))

(assert (=> b!1530094 m!1412861))

(declare-fun m!1413059 () Bool)

(assert (=> b!1530094 m!1413059))

(assert (=> b!1530097 m!1413055))

(assert (=> b!1530101 m!1413055))

(assert (=> b!1529838 d!159717))

(declare-fun d!159721 () Bool)

(declare-fun lt!662654 () (_ BitVec 32))

(declare-fun lt!662653 () (_ BitVec 32))

(assert (=> d!159721 (= lt!662654 (bvmul (bvxor lt!662653 (bvlshr lt!662653 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159721 (= lt!662653 ((_ extract 31 0) (bvand (bvxor (select (arr!49025 a!2804) j!70) (bvlshr (select (arr!49025 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159721 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1047795 (let ((h!37124 ((_ extract 31 0) (bvand (bvxor (select (arr!49025 a!2804) j!70) (bvlshr (select (arr!49025 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136933 (bvmul (bvxor h!37124 (bvlshr h!37124 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136933 (bvlshr x!136933 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1047795 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1047795 #b00000000000000000000000000000000))))))

(assert (=> d!159721 (= (toIndex!0 (select (arr!49025 a!2804) j!70) mask!2512) (bvand (bvxor lt!662654 (bvlshr lt!662654 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1529838 d!159721))

(declare-fun b!1530103 () Bool)

(declare-fun e!852658 () SeekEntryResult!13211)

(assert (=> b!1530103 (= e!852658 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!49025 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1530104 () Bool)

(declare-fun e!852657 () SeekEntryResult!13211)

(assert (=> b!1530104 (= e!852657 (Intermediate!13211 true index!487 x!534))))

(declare-fun b!1530105 () Bool)

(declare-fun lt!662655 () SeekEntryResult!13211)

(assert (=> b!1530105 (and (bvsge (index!55240 lt!662655) #b00000000000000000000000000000000) (bvslt (index!55240 lt!662655) (size!49576 a!2804)))))

(declare-fun res!1047808 () Bool)

(assert (=> b!1530105 (= res!1047808 (= (select (arr!49025 a!2804) (index!55240 lt!662655)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!852659 () Bool)

(assert (=> b!1530105 (=> res!1047808 e!852659)))

(declare-fun b!1530106 () Bool)

(assert (=> b!1530106 (and (bvsge (index!55240 lt!662655) #b00000000000000000000000000000000) (bvslt (index!55240 lt!662655) (size!49576 a!2804)))))

(declare-fun res!1047809 () Bool)

(assert (=> b!1530106 (= res!1047809 (= (select (arr!49025 a!2804) (index!55240 lt!662655)) (select (arr!49025 a!2804) j!70)))))

(assert (=> b!1530106 (=> res!1047809 e!852659)))

(declare-fun e!852660 () Bool)

(assert (=> b!1530106 (= e!852660 e!852659)))

(declare-fun b!1530107 () Bool)

(declare-fun e!852661 () Bool)

(assert (=> b!1530107 (= e!852661 (bvsge (x!136925 lt!662655) #b01111111111111111111111111111110))))

(declare-fun b!1530109 () Bool)

(assert (=> b!1530109 (= e!852658 (Intermediate!13211 false index!487 x!534))))

(declare-fun b!1530110 () Bool)

(assert (=> b!1530110 (and (bvsge (index!55240 lt!662655) #b00000000000000000000000000000000) (bvslt (index!55240 lt!662655) (size!49576 a!2804)))))

(assert (=> b!1530110 (= e!852659 (= (select (arr!49025 a!2804) (index!55240 lt!662655)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1530111 () Bool)

(assert (=> b!1530111 (= e!852661 e!852660)))

(declare-fun res!1047810 () Bool)

(assert (=> b!1530111 (= res!1047810 (and ((_ is Intermediate!13211) lt!662655) (not (undefined!14023 lt!662655)) (bvslt (x!136925 lt!662655) #b01111111111111111111111111111110) (bvsge (x!136925 lt!662655) #b00000000000000000000000000000000) (bvsge (x!136925 lt!662655) x!534)))))

(assert (=> b!1530111 (=> (not res!1047810) (not e!852660))))

(declare-fun b!1530108 () Bool)

(assert (=> b!1530108 (= e!852657 e!852658)))

(declare-fun lt!662656 () (_ BitVec 64))

(declare-fun c!140705 () Bool)

(assert (=> b!1530108 (= c!140705 (or (= lt!662656 (select (arr!49025 a!2804) j!70)) (= (bvadd lt!662656 lt!662656) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!159723 () Bool)

(assert (=> d!159723 e!852661))

(declare-fun c!140706 () Bool)

(assert (=> d!159723 (= c!140706 (and ((_ is Intermediate!13211) lt!662655) (undefined!14023 lt!662655)))))

(assert (=> d!159723 (= lt!662655 e!852657)))

(declare-fun c!140707 () Bool)

(assert (=> d!159723 (= c!140707 (bvsge x!534 #b01111111111111111111111111111110))))

(assert (=> d!159723 (= lt!662656 (select (arr!49025 a!2804) index!487))))

(assert (=> d!159723 (validMask!0 mask!2512)))

(assert (=> d!159723 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49025 a!2804) j!70) a!2804 mask!2512) lt!662655)))

(assert (= (and d!159723 c!140707) b!1530104))

(assert (= (and d!159723 (not c!140707)) b!1530108))

(assert (= (and b!1530108 c!140705) b!1530109))

(assert (= (and b!1530108 (not c!140705)) b!1530103))

(assert (= (and d!159723 c!140706) b!1530107))

(assert (= (and d!159723 (not c!140706)) b!1530111))

(assert (= (and b!1530111 res!1047810) b!1530106))

(assert (= (and b!1530106 (not res!1047809)) b!1530105))

(assert (= (and b!1530105 (not res!1047808)) b!1530110))

(declare-fun m!1413061 () Bool)

(assert (=> d!159723 m!1413061))

(assert (=> d!159723 m!1412885))

(declare-fun m!1413063 () Bool)

(assert (=> b!1530105 m!1413063))

(assert (=> b!1530103 m!1412877))

(assert (=> b!1530103 m!1412877))

(assert (=> b!1530103 m!1412861))

(declare-fun m!1413065 () Bool)

(assert (=> b!1530103 m!1413065))

(assert (=> b!1530106 m!1413063))

(assert (=> b!1530110 m!1413063))

(assert (=> b!1529841 d!159723))

(declare-fun d!159725 () Bool)

(assert (=> d!159725 (= (validKeyInArray!0 (select (arr!49025 a!2804) i!961)) (and (not (= (select (arr!49025 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49025 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1529847 d!159725))

(declare-fun b!1530112 () Bool)

(declare-fun e!852663 () Bool)

(declare-fun call!68505 () Bool)

(assert (=> b!1530112 (= e!852663 call!68505)))

(declare-fun b!1530113 () Bool)

(declare-fun e!852662 () Bool)

(declare-fun e!852664 () Bool)

(assert (=> b!1530113 (= e!852662 e!852664)))

(declare-fun c!140708 () Bool)

(assert (=> b!1530113 (= c!140708 (validKeyInArray!0 (select (arr!49025 a!2804) j!70)))))

(declare-fun d!159727 () Bool)

(declare-fun res!1047811 () Bool)

(assert (=> d!159727 (=> res!1047811 e!852662)))

(assert (=> d!159727 (= res!1047811 (bvsge j!70 (size!49576 a!2804)))))

(assert (=> d!159727 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!852662)))

(declare-fun b!1530114 () Bool)

(assert (=> b!1530114 (= e!852664 e!852663)))

(declare-fun lt!662657 () (_ BitVec 64))

(assert (=> b!1530114 (= lt!662657 (select (arr!49025 a!2804) j!70))))

(declare-fun lt!662658 () Unit!51162)

(assert (=> b!1530114 (= lt!662658 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!662657 j!70))))

(assert (=> b!1530114 (arrayContainsKey!0 a!2804 lt!662657 #b00000000000000000000000000000000)))

(declare-fun lt!662659 () Unit!51162)

(assert (=> b!1530114 (= lt!662659 lt!662658)))

(declare-fun res!1047812 () Bool)

(assert (=> b!1530114 (= res!1047812 (= (seekEntryOrOpen!0 (select (arr!49025 a!2804) j!70) a!2804 mask!2512) (Found!13211 j!70)))))

(assert (=> b!1530114 (=> (not res!1047812) (not e!852663))))

(declare-fun bm!68502 () Bool)

(assert (=> bm!68502 (= call!68505 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1530115 () Bool)

(assert (=> b!1530115 (= e!852664 call!68505)))

(assert (= (and d!159727 (not res!1047811)) b!1530113))

(assert (= (and b!1530113 c!140708) b!1530114))

(assert (= (and b!1530113 (not c!140708)) b!1530115))

(assert (= (and b!1530114 res!1047812) b!1530112))

(assert (= (or b!1530112 b!1530115) bm!68502))

(assert (=> b!1530113 m!1412861))

(assert (=> b!1530113 m!1412861))

(assert (=> b!1530113 m!1412897))

(assert (=> b!1530114 m!1412861))

(declare-fun m!1413067 () Bool)

(assert (=> b!1530114 m!1413067))

(declare-fun m!1413069 () Bool)

(assert (=> b!1530114 m!1413069))

(assert (=> b!1530114 m!1412861))

(declare-fun m!1413071 () Bool)

(assert (=> b!1530114 m!1413071))

(declare-fun m!1413073 () Bool)

(assert (=> bm!68502 m!1413073))

(assert (=> b!1529842 d!159727))

(declare-fun d!159729 () Bool)

(assert (=> d!159729 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!662662 () Unit!51162)

(declare-fun choose!38 (array!101609 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51162)

(assert (=> d!159729 (= lt!662662 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!159729 (validMask!0 mask!2512)))

(assert (=> d!159729 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!662662)))

(declare-fun bs!43866 () Bool)

(assert (= bs!43866 d!159729))

(assert (=> bs!43866 m!1412869))

(declare-fun m!1413075 () Bool)

(assert (=> bs!43866 m!1413075))

(assert (=> bs!43866 m!1412885))

(assert (=> b!1529842 d!159729))

(check-sat (not d!159723) (not b!1530103) (not b!1530048) (not d!159669) (not d!159717) (not d!159667) (not bm!68501) (not b!1530094) (not b!1530084) (not b!1529894) (not b!1529977) (not b!1529895) (not d!159685) (not b!1530086) (not d!159729) (not bm!68487) (not b!1530114) (not bm!68502) (not b!1530113) (not b!1530083))
(check-sat)
