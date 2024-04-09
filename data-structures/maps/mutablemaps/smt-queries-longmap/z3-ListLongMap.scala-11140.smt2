; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130236 () Bool)

(assert start!130236)

(declare-fun res!1045925 () Bool)

(declare-fun e!851707 () Bool)

(assert (=> start!130236 (=> (not res!1045925) (not e!851707))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130236 (= res!1045925 (validMask!0 mask!2512))))

(assert (=> start!130236 e!851707))

(assert (=> start!130236 true))

(declare-datatypes ((array!101513 0))(
  ( (array!101514 (arr!48977 (Array (_ BitVec 32) (_ BitVec 64))) (size!49528 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101513)

(declare-fun array_inv!37922 (array!101513) Bool)

(assert (=> start!130236 (array_inv!37922 a!2804)))

(declare-fun b!1528069 () Bool)

(declare-fun res!1045924 () Bool)

(declare-fun e!851706 () Bool)

(assert (=> b!1528069 (=> (not res!1045924) (not e!851706))))

(declare-datatypes ((SeekEntryResult!13163 0))(
  ( (MissingZero!13163 (index!55046 (_ BitVec 32))) (Found!13163 (index!55047 (_ BitVec 32))) (Intermediate!13163 (undefined!13975 Bool) (index!55048 (_ BitVec 32)) (x!136749 (_ BitVec 32))) (Undefined!13163) (MissingVacant!13163 (index!55049 (_ BitVec 32))) )
))
(declare-fun lt!661723 () SeekEntryResult!13163)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101513 (_ BitVec 32)) SeekEntryResult!13163)

(assert (=> b!1528069 (= res!1045924 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48977 a!2804) j!70) a!2804 mask!2512) lt!661723))))

(declare-fun b!1528070 () Bool)

(assert (=> b!1528070 (= e!851707 e!851706)))

(declare-fun res!1045921 () Bool)

(assert (=> b!1528070 (=> (not res!1045921) (not e!851706))))

(declare-fun lt!661715 () SeekEntryResult!13163)

(assert (=> b!1528070 (= res!1045921 (= lt!661715 lt!661723))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1528070 (= lt!661723 (Intermediate!13163 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528070 (= lt!661715 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48977 a!2804) j!70) mask!2512) (select (arr!48977 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528071 () Bool)

(declare-fun e!851705 () Bool)

(declare-fun e!851702 () Bool)

(assert (=> b!1528071 (= e!851705 (not e!851702))))

(declare-fun res!1045916 () Bool)

(assert (=> b!1528071 (=> res!1045916 e!851702)))

(declare-fun lt!661720 () (_ BitVec 64))

(assert (=> b!1528071 (= res!1045916 (or (not (= (select (arr!48977 a!2804) j!70) lt!661720)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48977 a!2804) index!487) (select (arr!48977 a!2804) j!70)) (not (= (select (arr!48977 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!851704 () Bool)

(assert (=> b!1528071 e!851704))

(declare-fun res!1045919 () Bool)

(assert (=> b!1528071 (=> (not res!1045919) (not e!851704))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101513 (_ BitVec 32)) Bool)

(assert (=> b!1528071 (= res!1045919 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51066 0))(
  ( (Unit!51067) )
))
(declare-fun lt!661722 () Unit!51066)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101513 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51066)

(assert (=> b!1528071 (= lt!661722 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1528072 () Bool)

(declare-fun res!1045914 () Bool)

(assert (=> b!1528072 (=> (not res!1045914) (not e!851707))))

(declare-datatypes ((List!35640 0))(
  ( (Nil!35637) (Cons!35636 (h!37073 (_ BitVec 64)) (t!50341 List!35640)) )
))
(declare-fun arrayNoDuplicates!0 (array!101513 (_ BitVec 32) List!35640) Bool)

(assert (=> b!1528072 (= res!1045914 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35637))))

(declare-fun b!1528073 () Bool)

(declare-fun res!1045922 () Bool)

(assert (=> b!1528073 (=> (not res!1045922) (not e!851707))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1528073 (= res!1045922 (validKeyInArray!0 (select (arr!48977 a!2804) j!70)))))

(declare-fun b!1528074 () Bool)

(declare-fun res!1045918 () Bool)

(assert (=> b!1528074 (=> (not res!1045918) (not e!851707))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1528074 (= res!1045918 (and (= (size!49528 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49528 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49528 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1528075 () Bool)

(declare-fun e!851703 () Bool)

(assert (=> b!1528075 (= e!851702 e!851703)))

(declare-fun res!1045926 () Bool)

(assert (=> b!1528075 (=> res!1045926 e!851703)))

(declare-fun lt!661718 () SeekEntryResult!13163)

(assert (=> b!1528075 (= res!1045926 (not (= lt!661718 (Found!13163 j!70))))))

(declare-fun lt!661719 () SeekEntryResult!13163)

(declare-fun lt!661717 () SeekEntryResult!13163)

(assert (=> b!1528075 (= lt!661719 lt!661717)))

(declare-fun lt!661716 () array!101513)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101513 (_ BitVec 32)) SeekEntryResult!13163)

(assert (=> b!1528075 (= lt!661717 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661720 lt!661716 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101513 (_ BitVec 32)) SeekEntryResult!13163)

(assert (=> b!1528075 (= lt!661719 (seekEntryOrOpen!0 lt!661720 lt!661716 mask!2512))))

(declare-fun lt!661714 () SeekEntryResult!13163)

(assert (=> b!1528075 (= lt!661714 lt!661718)))

(assert (=> b!1528075 (= lt!661718 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48977 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1528075 (= lt!661714 (seekEntryOrOpen!0 (select (arr!48977 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528076 () Bool)

(assert (=> b!1528076 (= e!851703 true)))

(assert (=> b!1528076 (= lt!661717 lt!661718)))

(declare-fun lt!661721 () Unit!51066)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!101513 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51066)

(assert (=> b!1528076 (= lt!661721 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1528077 () Bool)

(declare-fun res!1045923 () Bool)

(assert (=> b!1528077 (=> (not res!1045923) (not e!851707))))

(assert (=> b!1528077 (= res!1045923 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1528078 () Bool)

(assert (=> b!1528078 (= e!851706 e!851705)))

(declare-fun res!1045917 () Bool)

(assert (=> b!1528078 (=> (not res!1045917) (not e!851705))))

(assert (=> b!1528078 (= res!1045917 (= lt!661715 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661720 mask!2512) lt!661720 lt!661716 mask!2512)))))

(assert (=> b!1528078 (= lt!661720 (select (store (arr!48977 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1528078 (= lt!661716 (array!101514 (store (arr!48977 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49528 a!2804)))))

(declare-fun b!1528079 () Bool)

(declare-fun res!1045915 () Bool)

(assert (=> b!1528079 (=> (not res!1045915) (not e!851707))))

(assert (=> b!1528079 (= res!1045915 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49528 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49528 a!2804))))))

(declare-fun b!1528080 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101513 (_ BitVec 32)) SeekEntryResult!13163)

(assert (=> b!1528080 (= e!851704 (= (seekEntry!0 (select (arr!48977 a!2804) j!70) a!2804 mask!2512) (Found!13163 j!70)))))

(declare-fun b!1528081 () Bool)

(declare-fun res!1045920 () Bool)

(assert (=> b!1528081 (=> (not res!1045920) (not e!851707))))

(assert (=> b!1528081 (= res!1045920 (validKeyInArray!0 (select (arr!48977 a!2804) i!961)))))

(assert (= (and start!130236 res!1045925) b!1528074))

(assert (= (and b!1528074 res!1045918) b!1528081))

(assert (= (and b!1528081 res!1045920) b!1528073))

(assert (= (and b!1528073 res!1045922) b!1528077))

(assert (= (and b!1528077 res!1045923) b!1528072))

(assert (= (and b!1528072 res!1045914) b!1528079))

(assert (= (and b!1528079 res!1045915) b!1528070))

(assert (= (and b!1528070 res!1045921) b!1528069))

(assert (= (and b!1528069 res!1045924) b!1528078))

(assert (= (and b!1528078 res!1045917) b!1528071))

(assert (= (and b!1528071 res!1045919) b!1528080))

(assert (= (and b!1528071 (not res!1045916)) b!1528075))

(assert (= (and b!1528075 (not res!1045926)) b!1528076))

(declare-fun m!1410897 () Bool)

(assert (=> b!1528076 m!1410897))

(declare-fun m!1410899 () Bool)

(assert (=> b!1528069 m!1410899))

(assert (=> b!1528069 m!1410899))

(declare-fun m!1410901 () Bool)

(assert (=> b!1528069 m!1410901))

(declare-fun m!1410903 () Bool)

(assert (=> b!1528072 m!1410903))

(assert (=> b!1528071 m!1410899))

(declare-fun m!1410905 () Bool)

(assert (=> b!1528071 m!1410905))

(declare-fun m!1410907 () Bool)

(assert (=> b!1528071 m!1410907))

(declare-fun m!1410909 () Bool)

(assert (=> b!1528071 m!1410909))

(declare-fun m!1410911 () Bool)

(assert (=> b!1528077 m!1410911))

(declare-fun m!1410913 () Bool)

(assert (=> b!1528081 m!1410913))

(assert (=> b!1528081 m!1410913))

(declare-fun m!1410915 () Bool)

(assert (=> b!1528081 m!1410915))

(assert (=> b!1528075 m!1410899))

(declare-fun m!1410917 () Bool)

(assert (=> b!1528075 m!1410917))

(assert (=> b!1528075 m!1410899))

(declare-fun m!1410919 () Bool)

(assert (=> b!1528075 m!1410919))

(declare-fun m!1410921 () Bool)

(assert (=> b!1528075 m!1410921))

(assert (=> b!1528075 m!1410899))

(declare-fun m!1410923 () Bool)

(assert (=> b!1528075 m!1410923))

(declare-fun m!1410925 () Bool)

(assert (=> start!130236 m!1410925))

(declare-fun m!1410927 () Bool)

(assert (=> start!130236 m!1410927))

(declare-fun m!1410929 () Bool)

(assert (=> b!1528078 m!1410929))

(assert (=> b!1528078 m!1410929))

(declare-fun m!1410931 () Bool)

(assert (=> b!1528078 m!1410931))

(declare-fun m!1410933 () Bool)

(assert (=> b!1528078 m!1410933))

(declare-fun m!1410935 () Bool)

(assert (=> b!1528078 m!1410935))

(assert (=> b!1528073 m!1410899))

(assert (=> b!1528073 m!1410899))

(declare-fun m!1410937 () Bool)

(assert (=> b!1528073 m!1410937))

(assert (=> b!1528080 m!1410899))

(assert (=> b!1528080 m!1410899))

(declare-fun m!1410939 () Bool)

(assert (=> b!1528080 m!1410939))

(assert (=> b!1528070 m!1410899))

(assert (=> b!1528070 m!1410899))

(declare-fun m!1410941 () Bool)

(assert (=> b!1528070 m!1410941))

(assert (=> b!1528070 m!1410941))

(assert (=> b!1528070 m!1410899))

(declare-fun m!1410943 () Bool)

(assert (=> b!1528070 m!1410943))

(check-sat (not b!1528076) (not b!1528080) (not b!1528070) (not b!1528073) (not b!1528072) (not b!1528081) (not b!1528077) (not b!1528075) (not b!1528078) (not b!1528071) (not b!1528069) (not start!130236))
(check-sat)
