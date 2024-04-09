; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129162 () Bool)

(assert start!129162)

(declare-fun b!1515049 () Bool)

(declare-fun res!1035024 () Bool)

(declare-fun e!845505 () Bool)

(assert (=> b!1515049 (=> (not res!1035024) (not e!845505))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100931 0))(
  ( (array!100932 (arr!48698 (Array (_ BitVec 32) (_ BitVec 64))) (size!49249 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100931)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1515049 (= res!1035024 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49249 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49249 a!2804))))))

(declare-fun b!1515050 () Bool)

(declare-fun res!1035034 () Bool)

(declare-fun e!845510 () Bool)

(assert (=> b!1515050 (=> (not res!1035034) (not e!845510))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12890 0))(
  ( (MissingZero!12890 (index!53954 (_ BitVec 32))) (Found!12890 (index!53955 (_ BitVec 32))) (Intermediate!12890 (undefined!13702 Bool) (index!53956 (_ BitVec 32)) (x!135669 (_ BitVec 32))) (Undefined!12890) (MissingVacant!12890 (index!53957 (_ BitVec 32))) )
))
(declare-fun lt!656558 () SeekEntryResult!12890)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100931 (_ BitVec 32)) SeekEntryResult!12890)

(assert (=> b!1515050 (= res!1035034 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48698 a!2804) j!70) a!2804 mask!2512) lt!656558))))

(declare-fun res!1035026 () Bool)

(assert (=> start!129162 (=> (not res!1035026) (not e!845505))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129162 (= res!1035026 (validMask!0 mask!2512))))

(assert (=> start!129162 e!845505))

(assert (=> start!129162 true))

(declare-fun array_inv!37643 (array!100931) Bool)

(assert (=> start!129162 (array_inv!37643 a!2804)))

(declare-fun b!1515051 () Bool)

(declare-fun res!1035032 () Bool)

(assert (=> b!1515051 (=> (not res!1035032) (not e!845505))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1515051 (= res!1035032 (validKeyInArray!0 (select (arr!48698 a!2804) i!961)))))

(declare-fun b!1515052 () Bool)

(declare-fun e!845508 () Bool)

(declare-fun e!845509 () Bool)

(assert (=> b!1515052 (= e!845508 (not e!845509))))

(declare-fun res!1035028 () Bool)

(assert (=> b!1515052 (=> res!1035028 e!845509)))

(declare-fun lt!656561 () (_ BitVec 64))

(assert (=> b!1515052 (= res!1035028 (or (not (= (select (arr!48698 a!2804) j!70) lt!656561)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48698 a!2804) index!487) (select (arr!48698 a!2804) j!70)) (not (= (select (arr!48698 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!845506 () Bool)

(assert (=> b!1515052 e!845506))

(declare-fun res!1035030 () Bool)

(assert (=> b!1515052 (=> (not res!1035030) (not e!845506))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100931 (_ BitVec 32)) Bool)

(assert (=> b!1515052 (= res!1035030 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50604 0))(
  ( (Unit!50605) )
))
(declare-fun lt!656562 () Unit!50604)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100931 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50604)

(assert (=> b!1515052 (= lt!656562 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1515053 () Bool)

(assert (=> b!1515053 (= e!845505 e!845510)))

(declare-fun res!1035033 () Bool)

(assert (=> b!1515053 (=> (not res!1035033) (not e!845510))))

(declare-fun lt!656555 () SeekEntryResult!12890)

(assert (=> b!1515053 (= res!1035033 (= lt!656555 lt!656558))))

(assert (=> b!1515053 (= lt!656558 (Intermediate!12890 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1515053 (= lt!656555 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48698 a!2804) j!70) mask!2512) (select (arr!48698 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515054 () Bool)

(assert (=> b!1515054 (= e!845510 e!845508)))

(declare-fun res!1035035 () Bool)

(assert (=> b!1515054 (=> (not res!1035035) (not e!845508))))

(declare-fun lt!656557 () array!100931)

(assert (=> b!1515054 (= res!1035035 (= lt!656555 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656561 mask!2512) lt!656561 lt!656557 mask!2512)))))

(assert (=> b!1515054 (= lt!656561 (select (store (arr!48698 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1515054 (= lt!656557 (array!100932 (store (arr!48698 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49249 a!2804)))))

(declare-fun b!1515055 () Bool)

(declare-fun res!1035029 () Bool)

(assert (=> b!1515055 (=> (not res!1035029) (not e!845505))))

(assert (=> b!1515055 (= res!1035029 (and (= (size!49249 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49249 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49249 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1515056 () Bool)

(declare-fun res!1035027 () Bool)

(assert (=> b!1515056 (=> (not res!1035027) (not e!845505))))

(assert (=> b!1515056 (= res!1035027 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1515057 () Bool)

(declare-fun res!1035031 () Bool)

(assert (=> b!1515057 (=> (not res!1035031) (not e!845505))))

(assert (=> b!1515057 (= res!1035031 (validKeyInArray!0 (select (arr!48698 a!2804) j!70)))))

(declare-fun b!1515058 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100931 (_ BitVec 32)) SeekEntryResult!12890)

(assert (=> b!1515058 (= e!845506 (= (seekEntry!0 (select (arr!48698 a!2804) j!70) a!2804 mask!2512) (Found!12890 j!70)))))

(declare-fun b!1515059 () Bool)

(declare-fun res!1035036 () Bool)

(assert (=> b!1515059 (=> (not res!1035036) (not e!845505))))

(declare-datatypes ((List!35361 0))(
  ( (Nil!35358) (Cons!35357 (h!36770 (_ BitVec 64)) (t!50062 List!35361)) )
))
(declare-fun arrayNoDuplicates!0 (array!100931 (_ BitVec 32) List!35361) Bool)

(assert (=> b!1515059 (= res!1035036 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35358))))

(declare-fun b!1515060 () Bool)

(declare-fun e!845504 () Bool)

(assert (=> b!1515060 (= e!845509 e!845504)))

(declare-fun res!1035025 () Bool)

(assert (=> b!1515060 (=> res!1035025 e!845504)))

(declare-fun lt!656560 () SeekEntryResult!12890)

(assert (=> b!1515060 (= res!1035025 (not (= lt!656560 (Found!12890 j!70))))))

(declare-fun lt!656554 () SeekEntryResult!12890)

(declare-fun lt!656563 () SeekEntryResult!12890)

(assert (=> b!1515060 (= lt!656554 lt!656563)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100931 (_ BitVec 32)) SeekEntryResult!12890)

(assert (=> b!1515060 (= lt!656563 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656561 lt!656557 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100931 (_ BitVec 32)) SeekEntryResult!12890)

(assert (=> b!1515060 (= lt!656554 (seekEntryOrOpen!0 lt!656561 lt!656557 mask!2512))))

(declare-fun lt!656556 () SeekEntryResult!12890)

(assert (=> b!1515060 (= lt!656556 lt!656560)))

(assert (=> b!1515060 (= lt!656560 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48698 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1515060 (= lt!656556 (seekEntryOrOpen!0 (select (arr!48698 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515061 () Bool)

(assert (=> b!1515061 (= e!845504 true)))

(assert (=> b!1515061 (= lt!656563 lt!656560)))

(declare-fun lt!656559 () Unit!50604)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!100931 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50604)

(assert (=> b!1515061 (= lt!656559 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(assert (= (and start!129162 res!1035026) b!1515055))

(assert (= (and b!1515055 res!1035029) b!1515051))

(assert (= (and b!1515051 res!1035032) b!1515057))

(assert (= (and b!1515057 res!1035031) b!1515056))

(assert (= (and b!1515056 res!1035027) b!1515059))

(assert (= (and b!1515059 res!1035036) b!1515049))

(assert (= (and b!1515049 res!1035024) b!1515053))

(assert (= (and b!1515053 res!1035033) b!1515050))

(assert (= (and b!1515050 res!1035034) b!1515054))

(assert (= (and b!1515054 res!1035035) b!1515052))

(assert (= (and b!1515052 res!1035030) b!1515058))

(assert (= (and b!1515052 (not res!1035028)) b!1515060))

(assert (= (and b!1515060 (not res!1035025)) b!1515061))

(declare-fun m!1398129 () Bool)

(assert (=> b!1515056 m!1398129))

(declare-fun m!1398131 () Bool)

(assert (=> b!1515054 m!1398131))

(assert (=> b!1515054 m!1398131))

(declare-fun m!1398133 () Bool)

(assert (=> b!1515054 m!1398133))

(declare-fun m!1398135 () Bool)

(assert (=> b!1515054 m!1398135))

(declare-fun m!1398137 () Bool)

(assert (=> b!1515054 m!1398137))

(declare-fun m!1398139 () Bool)

(assert (=> b!1515059 m!1398139))

(declare-fun m!1398141 () Bool)

(assert (=> start!129162 m!1398141))

(declare-fun m!1398143 () Bool)

(assert (=> start!129162 m!1398143))

(declare-fun m!1398145 () Bool)

(assert (=> b!1515058 m!1398145))

(assert (=> b!1515058 m!1398145))

(declare-fun m!1398147 () Bool)

(assert (=> b!1515058 m!1398147))

(declare-fun m!1398149 () Bool)

(assert (=> b!1515061 m!1398149))

(assert (=> b!1515052 m!1398145))

(declare-fun m!1398151 () Bool)

(assert (=> b!1515052 m!1398151))

(declare-fun m!1398153 () Bool)

(assert (=> b!1515052 m!1398153))

(declare-fun m!1398155 () Bool)

(assert (=> b!1515052 m!1398155))

(assert (=> b!1515053 m!1398145))

(assert (=> b!1515053 m!1398145))

(declare-fun m!1398157 () Bool)

(assert (=> b!1515053 m!1398157))

(assert (=> b!1515053 m!1398157))

(assert (=> b!1515053 m!1398145))

(declare-fun m!1398159 () Bool)

(assert (=> b!1515053 m!1398159))

(declare-fun m!1398161 () Bool)

(assert (=> b!1515051 m!1398161))

(assert (=> b!1515051 m!1398161))

(declare-fun m!1398163 () Bool)

(assert (=> b!1515051 m!1398163))

(assert (=> b!1515060 m!1398145))

(declare-fun m!1398165 () Bool)

(assert (=> b!1515060 m!1398165))

(assert (=> b!1515060 m!1398145))

(declare-fun m!1398167 () Bool)

(assert (=> b!1515060 m!1398167))

(declare-fun m!1398169 () Bool)

(assert (=> b!1515060 m!1398169))

(assert (=> b!1515060 m!1398145))

(declare-fun m!1398171 () Bool)

(assert (=> b!1515060 m!1398171))

(assert (=> b!1515050 m!1398145))

(assert (=> b!1515050 m!1398145))

(declare-fun m!1398173 () Bool)

(assert (=> b!1515050 m!1398173))

(assert (=> b!1515057 m!1398145))

(assert (=> b!1515057 m!1398145))

(declare-fun m!1398175 () Bool)

(assert (=> b!1515057 m!1398175))

(check-sat (not b!1515057) (not b!1515053) (not start!129162) (not b!1515052) (not b!1515059) (not b!1515056) (not b!1515058) (not b!1515050) (not b!1515054) (not b!1515060) (not b!1515061) (not b!1515051))
(check-sat)
