; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130240 () Bool)

(assert start!130240)

(declare-fun b!1528147 () Bool)

(declare-fun res!1046002 () Bool)

(declare-fun e!851746 () Bool)

(assert (=> b!1528147 (=> (not res!1046002) (not e!851746))))

(declare-datatypes ((array!101517 0))(
  ( (array!101518 (arr!48979 (Array (_ BitVec 32) (_ BitVec 64))) (size!49530 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101517)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1528147 (= res!1046002 (validKeyInArray!0 (select (arr!48979 a!2804) i!961)))))

(declare-fun b!1528148 () Bool)

(declare-fun res!1045997 () Bool)

(assert (=> b!1528148 (=> (not res!1045997) (not e!851746))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1528148 (= res!1045997 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49530 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49530 a!2804))))))

(declare-fun b!1528149 () Bool)

(declare-fun e!851748 () Bool)

(declare-fun e!851749 () Bool)

(assert (=> b!1528149 (= e!851748 e!851749)))

(declare-fun res!1046001 () Bool)

(assert (=> b!1528149 (=> res!1046001 e!851749)))

(declare-datatypes ((SeekEntryResult!13165 0))(
  ( (MissingZero!13165 (index!55054 (_ BitVec 32))) (Found!13165 (index!55055 (_ BitVec 32))) (Intermediate!13165 (undefined!13977 Bool) (index!55056 (_ BitVec 32)) (x!136759 (_ BitVec 32))) (Undefined!13165) (MissingVacant!13165 (index!55057 (_ BitVec 32))) )
))
(declare-fun lt!661783 () SeekEntryResult!13165)

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1528149 (= res!1046001 (not (= lt!661783 (Found!13165 j!70))))))

(declare-fun lt!661778 () SeekEntryResult!13165)

(declare-fun lt!661775 () SeekEntryResult!13165)

(assert (=> b!1528149 (= lt!661778 lt!661775)))

(declare-fun lt!661779 () array!101517)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun lt!661780 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101517 (_ BitVec 32)) SeekEntryResult!13165)

(assert (=> b!1528149 (= lt!661775 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661780 lt!661779 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101517 (_ BitVec 32)) SeekEntryResult!13165)

(assert (=> b!1528149 (= lt!661778 (seekEntryOrOpen!0 lt!661780 lt!661779 mask!2512))))

(declare-fun lt!661781 () SeekEntryResult!13165)

(assert (=> b!1528149 (= lt!661781 lt!661783)))

(assert (=> b!1528149 (= lt!661783 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48979 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1528149 (= lt!661781 (seekEntryOrOpen!0 (select (arr!48979 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528150 () Bool)

(assert (=> b!1528150 (= e!851749 true)))

(assert (=> b!1528150 (= lt!661775 lt!661783)))

(declare-datatypes ((Unit!51070 0))(
  ( (Unit!51071) )
))
(declare-fun lt!661776 () Unit!51070)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!101517 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51070)

(assert (=> b!1528150 (= lt!661776 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1528151 () Bool)

(declare-fun res!1046003 () Bool)

(assert (=> b!1528151 (=> (not res!1046003) (not e!851746))))

(assert (=> b!1528151 (= res!1046003 (validKeyInArray!0 (select (arr!48979 a!2804) j!70)))))

(declare-fun b!1528152 () Bool)

(declare-fun res!1046000 () Bool)

(declare-fun e!851747 () Bool)

(assert (=> b!1528152 (=> (not res!1046000) (not e!851747))))

(declare-fun lt!661774 () SeekEntryResult!13165)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101517 (_ BitVec 32)) SeekEntryResult!13165)

(assert (=> b!1528152 (= res!1046000 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48979 a!2804) j!70) a!2804 mask!2512) lt!661774))))

(declare-fun res!1045998 () Bool)

(assert (=> start!130240 (=> (not res!1045998) (not e!851746))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130240 (= res!1045998 (validMask!0 mask!2512))))

(assert (=> start!130240 e!851746))

(assert (=> start!130240 true))

(declare-fun array_inv!37924 (array!101517) Bool)

(assert (=> start!130240 (array_inv!37924 a!2804)))

(declare-fun b!1528153 () Bool)

(declare-fun e!851744 () Bool)

(assert (=> b!1528153 (= e!851747 e!851744)))

(declare-fun res!1045992 () Bool)

(assert (=> b!1528153 (=> (not res!1045992) (not e!851744))))

(declare-fun lt!661777 () SeekEntryResult!13165)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528153 (= res!1045992 (= lt!661777 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661780 mask!2512) lt!661780 lt!661779 mask!2512)))))

(assert (=> b!1528153 (= lt!661780 (select (store (arr!48979 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1528153 (= lt!661779 (array!101518 (store (arr!48979 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49530 a!2804)))))

(declare-fun b!1528154 () Bool)

(declare-fun res!1045999 () Bool)

(assert (=> b!1528154 (=> (not res!1045999) (not e!851746))))

(declare-datatypes ((List!35642 0))(
  ( (Nil!35639) (Cons!35638 (h!37075 (_ BitVec 64)) (t!50343 List!35642)) )
))
(declare-fun arrayNoDuplicates!0 (array!101517 (_ BitVec 32) List!35642) Bool)

(assert (=> b!1528154 (= res!1045999 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35639))))

(declare-fun b!1528155 () Bool)

(declare-fun res!1045996 () Bool)

(assert (=> b!1528155 (=> (not res!1045996) (not e!851746))))

(assert (=> b!1528155 (= res!1045996 (and (= (size!49530 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49530 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49530 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1528156 () Bool)

(assert (=> b!1528156 (= e!851746 e!851747)))

(declare-fun res!1045995 () Bool)

(assert (=> b!1528156 (=> (not res!1045995) (not e!851747))))

(assert (=> b!1528156 (= res!1045995 (= lt!661777 lt!661774))))

(assert (=> b!1528156 (= lt!661774 (Intermediate!13165 false resIndex!21 resX!21))))

(assert (=> b!1528156 (= lt!661777 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48979 a!2804) j!70) mask!2512) (select (arr!48979 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528157 () Bool)

(declare-fun e!851750 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101517 (_ BitVec 32)) SeekEntryResult!13165)

(assert (=> b!1528157 (= e!851750 (= (seekEntry!0 (select (arr!48979 a!2804) j!70) a!2804 mask!2512) (Found!13165 j!70)))))

(declare-fun b!1528158 () Bool)

(declare-fun res!1046004 () Bool)

(assert (=> b!1528158 (=> (not res!1046004) (not e!851746))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101517 (_ BitVec 32)) Bool)

(assert (=> b!1528158 (= res!1046004 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1528159 () Bool)

(assert (=> b!1528159 (= e!851744 (not e!851748))))

(declare-fun res!1045994 () Bool)

(assert (=> b!1528159 (=> res!1045994 e!851748)))

(assert (=> b!1528159 (= res!1045994 (or (not (= (select (arr!48979 a!2804) j!70) lt!661780)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48979 a!2804) index!487) (select (arr!48979 a!2804) j!70)) (not (= (select (arr!48979 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1528159 e!851750))

(declare-fun res!1045993 () Bool)

(assert (=> b!1528159 (=> (not res!1045993) (not e!851750))))

(assert (=> b!1528159 (= res!1045993 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!661782 () Unit!51070)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101517 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51070)

(assert (=> b!1528159 (= lt!661782 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!130240 res!1045998) b!1528155))

(assert (= (and b!1528155 res!1045996) b!1528147))

(assert (= (and b!1528147 res!1046002) b!1528151))

(assert (= (and b!1528151 res!1046003) b!1528158))

(assert (= (and b!1528158 res!1046004) b!1528154))

(assert (= (and b!1528154 res!1045999) b!1528148))

(assert (= (and b!1528148 res!1045997) b!1528156))

(assert (= (and b!1528156 res!1045995) b!1528152))

(assert (= (and b!1528152 res!1046000) b!1528153))

(assert (= (and b!1528153 res!1045992) b!1528159))

(assert (= (and b!1528159 res!1045993) b!1528157))

(assert (= (and b!1528159 (not res!1045994)) b!1528149))

(assert (= (and b!1528149 (not res!1046001)) b!1528150))

(declare-fun m!1410993 () Bool)

(assert (=> b!1528157 m!1410993))

(assert (=> b!1528157 m!1410993))

(declare-fun m!1410995 () Bool)

(assert (=> b!1528157 m!1410995))

(assert (=> b!1528156 m!1410993))

(assert (=> b!1528156 m!1410993))

(declare-fun m!1410997 () Bool)

(assert (=> b!1528156 m!1410997))

(assert (=> b!1528156 m!1410997))

(assert (=> b!1528156 m!1410993))

(declare-fun m!1410999 () Bool)

(assert (=> b!1528156 m!1410999))

(assert (=> b!1528151 m!1410993))

(assert (=> b!1528151 m!1410993))

(declare-fun m!1411001 () Bool)

(assert (=> b!1528151 m!1411001))

(declare-fun m!1411003 () Bool)

(assert (=> b!1528150 m!1411003))

(declare-fun m!1411005 () Bool)

(assert (=> b!1528153 m!1411005))

(assert (=> b!1528153 m!1411005))

(declare-fun m!1411007 () Bool)

(assert (=> b!1528153 m!1411007))

(declare-fun m!1411009 () Bool)

(assert (=> b!1528153 m!1411009))

(declare-fun m!1411011 () Bool)

(assert (=> b!1528153 m!1411011))

(declare-fun m!1411013 () Bool)

(assert (=> start!130240 m!1411013))

(declare-fun m!1411015 () Bool)

(assert (=> start!130240 m!1411015))

(assert (=> b!1528149 m!1410993))

(declare-fun m!1411017 () Bool)

(assert (=> b!1528149 m!1411017))

(assert (=> b!1528149 m!1410993))

(declare-fun m!1411019 () Bool)

(assert (=> b!1528149 m!1411019))

(declare-fun m!1411021 () Bool)

(assert (=> b!1528149 m!1411021))

(assert (=> b!1528149 m!1410993))

(declare-fun m!1411023 () Bool)

(assert (=> b!1528149 m!1411023))

(declare-fun m!1411025 () Bool)

(assert (=> b!1528154 m!1411025))

(assert (=> b!1528152 m!1410993))

(assert (=> b!1528152 m!1410993))

(declare-fun m!1411027 () Bool)

(assert (=> b!1528152 m!1411027))

(declare-fun m!1411029 () Bool)

(assert (=> b!1528158 m!1411029))

(declare-fun m!1411031 () Bool)

(assert (=> b!1528147 m!1411031))

(assert (=> b!1528147 m!1411031))

(declare-fun m!1411033 () Bool)

(assert (=> b!1528147 m!1411033))

(assert (=> b!1528159 m!1410993))

(declare-fun m!1411035 () Bool)

(assert (=> b!1528159 m!1411035))

(declare-fun m!1411037 () Bool)

(assert (=> b!1528159 m!1411037))

(declare-fun m!1411039 () Bool)

(assert (=> b!1528159 m!1411039))

(push 1)

