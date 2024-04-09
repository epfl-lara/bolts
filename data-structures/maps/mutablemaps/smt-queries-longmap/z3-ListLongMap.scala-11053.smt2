; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129198 () Bool)

(assert start!129198)

(declare-fun b!1515751 () Bool)

(declare-fun res!1035736 () Bool)

(declare-fun e!845885 () Bool)

(assert (=> b!1515751 (=> (not res!1035736) (not e!845885))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100967 0))(
  ( (array!100968 (arr!48716 (Array (_ BitVec 32) (_ BitVec 64))) (size!49267 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100967)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1515751 (= res!1035736 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49267 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49267 a!2804))))))

(declare-fun b!1515752 () Bool)

(declare-fun res!1035738 () Bool)

(assert (=> b!1515752 (=> (not res!1035738) (not e!845885))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1515752 (= res!1035738 (and (= (size!49267 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49267 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49267 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1515753 () Bool)

(declare-fun res!1035727 () Bool)

(assert (=> b!1515753 (=> (not res!1035727) (not e!845885))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1515753 (= res!1035727 (validKeyInArray!0 (select (arr!48716 a!2804) j!70)))))

(declare-fun b!1515754 () Bool)

(declare-fun e!845884 () Bool)

(assert (=> b!1515754 (= e!845884 true)))

(declare-datatypes ((SeekEntryResult!12908 0))(
  ( (MissingZero!12908 (index!54026 (_ BitVec 32))) (Found!12908 (index!54027 (_ BitVec 32))) (Intermediate!12908 (undefined!13720 Bool) (index!54028 (_ BitVec 32)) (x!135735 (_ BitVec 32))) (Undefined!12908) (MissingVacant!12908 (index!54029 (_ BitVec 32))) )
))
(declare-fun lt!657096 () SeekEntryResult!12908)

(declare-fun lt!657100 () SeekEntryResult!12908)

(assert (=> b!1515754 (= lt!657096 lt!657100)))

(declare-datatypes ((Unit!50640 0))(
  ( (Unit!50641) )
))
(declare-fun lt!657101 () Unit!50640)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!100967 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50640)

(assert (=> b!1515754 (= lt!657101 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1515755 () Bool)

(declare-fun e!845887 () Bool)

(declare-fun e!845882 () Bool)

(assert (=> b!1515755 (= e!845887 (not e!845882))))

(declare-fun res!1035732 () Bool)

(assert (=> b!1515755 (=> res!1035732 e!845882)))

(declare-fun lt!657099 () (_ BitVec 64))

(assert (=> b!1515755 (= res!1035732 (or (not (= (select (arr!48716 a!2804) j!70) lt!657099)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48716 a!2804) index!487) (select (arr!48716 a!2804) j!70)) (not (= (select (arr!48716 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!845883 () Bool)

(assert (=> b!1515755 e!845883))

(declare-fun res!1035733 () Bool)

(assert (=> b!1515755 (=> (not res!1035733) (not e!845883))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100967 (_ BitVec 32)) Bool)

(assert (=> b!1515755 (= res!1035733 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!657094 () Unit!50640)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100967 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50640)

(assert (=> b!1515755 (= lt!657094 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1035737 () Bool)

(assert (=> start!129198 (=> (not res!1035737) (not e!845885))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129198 (= res!1035737 (validMask!0 mask!2512))))

(assert (=> start!129198 e!845885))

(assert (=> start!129198 true))

(declare-fun array_inv!37661 (array!100967) Bool)

(assert (=> start!129198 (array_inv!37661 a!2804)))

(declare-fun b!1515756 () Bool)

(declare-fun res!1035729 () Bool)

(assert (=> b!1515756 (=> (not res!1035729) (not e!845885))))

(assert (=> b!1515756 (= res!1035729 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1515757 () Bool)

(declare-fun e!845888 () Bool)

(assert (=> b!1515757 (= e!845888 e!845887)))

(declare-fun res!1035734 () Bool)

(assert (=> b!1515757 (=> (not res!1035734) (not e!845887))))

(declare-fun lt!657098 () SeekEntryResult!12908)

(declare-fun lt!657103 () array!100967)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100967 (_ BitVec 32)) SeekEntryResult!12908)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1515757 (= res!1035734 (= lt!657098 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!657099 mask!2512) lt!657099 lt!657103 mask!2512)))))

(assert (=> b!1515757 (= lt!657099 (select (store (arr!48716 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1515757 (= lt!657103 (array!100968 (store (arr!48716 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49267 a!2804)))))

(declare-fun b!1515758 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100967 (_ BitVec 32)) SeekEntryResult!12908)

(assert (=> b!1515758 (= e!845883 (= (seekEntry!0 (select (arr!48716 a!2804) j!70) a!2804 mask!2512) (Found!12908 j!70)))))

(declare-fun b!1515759 () Bool)

(declare-fun res!1035735 () Bool)

(assert (=> b!1515759 (=> (not res!1035735) (not e!845885))))

(declare-datatypes ((List!35379 0))(
  ( (Nil!35376) (Cons!35375 (h!36788 (_ BitVec 64)) (t!50080 List!35379)) )
))
(declare-fun arrayNoDuplicates!0 (array!100967 (_ BitVec 32) List!35379) Bool)

(assert (=> b!1515759 (= res!1035735 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35376))))

(declare-fun b!1515760 () Bool)

(assert (=> b!1515760 (= e!845882 e!845884)))

(declare-fun res!1035726 () Bool)

(assert (=> b!1515760 (=> res!1035726 e!845884)))

(assert (=> b!1515760 (= res!1035726 (not (= lt!657100 (Found!12908 j!70))))))

(declare-fun lt!657102 () SeekEntryResult!12908)

(assert (=> b!1515760 (= lt!657102 lt!657096)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100967 (_ BitVec 32)) SeekEntryResult!12908)

(assert (=> b!1515760 (= lt!657096 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!657099 lt!657103 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100967 (_ BitVec 32)) SeekEntryResult!12908)

(assert (=> b!1515760 (= lt!657102 (seekEntryOrOpen!0 lt!657099 lt!657103 mask!2512))))

(declare-fun lt!657095 () SeekEntryResult!12908)

(assert (=> b!1515760 (= lt!657095 lt!657100)))

(assert (=> b!1515760 (= lt!657100 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48716 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1515760 (= lt!657095 (seekEntryOrOpen!0 (select (arr!48716 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515761 () Bool)

(assert (=> b!1515761 (= e!845885 e!845888)))

(declare-fun res!1035730 () Bool)

(assert (=> b!1515761 (=> (not res!1035730) (not e!845888))))

(declare-fun lt!657097 () SeekEntryResult!12908)

(assert (=> b!1515761 (= res!1035730 (= lt!657098 lt!657097))))

(assert (=> b!1515761 (= lt!657097 (Intermediate!12908 false resIndex!21 resX!21))))

(assert (=> b!1515761 (= lt!657098 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48716 a!2804) j!70) mask!2512) (select (arr!48716 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515762 () Bool)

(declare-fun res!1035731 () Bool)

(assert (=> b!1515762 (=> (not res!1035731) (not e!845888))))

(assert (=> b!1515762 (= res!1035731 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48716 a!2804) j!70) a!2804 mask!2512) lt!657097))))

(declare-fun b!1515763 () Bool)

(declare-fun res!1035728 () Bool)

(assert (=> b!1515763 (=> (not res!1035728) (not e!845885))))

(assert (=> b!1515763 (= res!1035728 (validKeyInArray!0 (select (arr!48716 a!2804) i!961)))))

(assert (= (and start!129198 res!1035737) b!1515752))

(assert (= (and b!1515752 res!1035738) b!1515763))

(assert (= (and b!1515763 res!1035728) b!1515753))

(assert (= (and b!1515753 res!1035727) b!1515756))

(assert (= (and b!1515756 res!1035729) b!1515759))

(assert (= (and b!1515759 res!1035735) b!1515751))

(assert (= (and b!1515751 res!1035736) b!1515761))

(assert (= (and b!1515761 res!1035730) b!1515762))

(assert (= (and b!1515762 res!1035731) b!1515757))

(assert (= (and b!1515757 res!1035734) b!1515755))

(assert (= (and b!1515755 res!1035733) b!1515758))

(assert (= (and b!1515755 (not res!1035732)) b!1515760))

(assert (= (and b!1515760 (not res!1035726)) b!1515754))

(declare-fun m!1398993 () Bool)

(assert (=> b!1515758 m!1398993))

(assert (=> b!1515758 m!1398993))

(declare-fun m!1398995 () Bool)

(assert (=> b!1515758 m!1398995))

(declare-fun m!1398997 () Bool)

(assert (=> b!1515756 m!1398997))

(assert (=> b!1515762 m!1398993))

(assert (=> b!1515762 m!1398993))

(declare-fun m!1398999 () Bool)

(assert (=> b!1515762 m!1398999))

(declare-fun m!1399001 () Bool)

(assert (=> b!1515757 m!1399001))

(assert (=> b!1515757 m!1399001))

(declare-fun m!1399003 () Bool)

(assert (=> b!1515757 m!1399003))

(declare-fun m!1399005 () Bool)

(assert (=> b!1515757 m!1399005))

(declare-fun m!1399007 () Bool)

(assert (=> b!1515757 m!1399007))

(declare-fun m!1399009 () Bool)

(assert (=> b!1515763 m!1399009))

(assert (=> b!1515763 m!1399009))

(declare-fun m!1399011 () Bool)

(assert (=> b!1515763 m!1399011))

(declare-fun m!1399013 () Bool)

(assert (=> b!1515759 m!1399013))

(assert (=> b!1515753 m!1398993))

(assert (=> b!1515753 m!1398993))

(declare-fun m!1399015 () Bool)

(assert (=> b!1515753 m!1399015))

(assert (=> b!1515761 m!1398993))

(assert (=> b!1515761 m!1398993))

(declare-fun m!1399017 () Bool)

(assert (=> b!1515761 m!1399017))

(assert (=> b!1515761 m!1399017))

(assert (=> b!1515761 m!1398993))

(declare-fun m!1399019 () Bool)

(assert (=> b!1515761 m!1399019))

(assert (=> b!1515760 m!1398993))

(assert (=> b!1515760 m!1398993))

(declare-fun m!1399021 () Bool)

(assert (=> b!1515760 m!1399021))

(declare-fun m!1399023 () Bool)

(assert (=> b!1515760 m!1399023))

(declare-fun m!1399025 () Bool)

(assert (=> b!1515760 m!1399025))

(assert (=> b!1515760 m!1398993))

(declare-fun m!1399027 () Bool)

(assert (=> b!1515760 m!1399027))

(declare-fun m!1399029 () Bool)

(assert (=> start!129198 m!1399029))

(declare-fun m!1399031 () Bool)

(assert (=> start!129198 m!1399031))

(assert (=> b!1515755 m!1398993))

(declare-fun m!1399033 () Bool)

(assert (=> b!1515755 m!1399033))

(declare-fun m!1399035 () Bool)

(assert (=> b!1515755 m!1399035))

(declare-fun m!1399037 () Bool)

(assert (=> b!1515755 m!1399037))

(declare-fun m!1399039 () Bool)

(assert (=> b!1515754 m!1399039))

(check-sat (not b!1515760) (not b!1515755) (not b!1515763) (not start!129198) (not b!1515762) (not b!1515761) (not b!1515759) (not b!1515754) (not b!1515758) (not b!1515757) (not b!1515756) (not b!1515753))
(check-sat)
