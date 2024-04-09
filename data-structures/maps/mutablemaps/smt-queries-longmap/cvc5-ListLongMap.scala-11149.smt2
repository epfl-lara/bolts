; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130288 () Bool)

(assert start!130288)

(declare-fun b!1529045 () Bool)

(declare-fun e!852175 () Bool)

(assert (=> b!1529045 (= e!852175 true)))

(declare-fun lt!662268 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529045 (= lt!662268 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1529046 () Bool)

(declare-fun e!852176 () Bool)

(assert (=> b!1529046 (= e!852176 (not e!852175))))

(declare-fun res!1046896 () Bool)

(assert (=> b!1529046 (=> res!1046896 e!852175)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((array!101565 0))(
  ( (array!101566 (arr!49003 (Array (_ BitVec 32) (_ BitVec 64))) (size!49554 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101565)

(assert (=> b!1529046 (= res!1046896 (or (not (= (select (arr!49003 a!2804) j!70) (select (store (arr!49003 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!852172 () Bool)

(assert (=> b!1529046 e!852172))

(declare-fun res!1046892 () Bool)

(assert (=> b!1529046 (=> (not res!1046892) (not e!852172))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101565 (_ BitVec 32)) Bool)

(assert (=> b!1529046 (= res!1046892 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51118 0))(
  ( (Unit!51119) )
))
(declare-fun lt!662269 () Unit!51118)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101565 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51118)

(assert (=> b!1529046 (= lt!662269 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1529047 () Bool)

(declare-fun res!1046891 () Bool)

(declare-fun e!852173 () Bool)

(assert (=> b!1529047 (=> (not res!1046891) (not e!852173))))

(declare-datatypes ((List!35666 0))(
  ( (Nil!35663) (Cons!35662 (h!37099 (_ BitVec 64)) (t!50367 List!35666)) )
))
(declare-fun arrayNoDuplicates!0 (array!101565 (_ BitVec 32) List!35666) Bool)

(assert (=> b!1529047 (= res!1046891 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35663))))

(declare-fun res!1046890 () Bool)

(assert (=> start!130288 (=> (not res!1046890) (not e!852173))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130288 (= res!1046890 (validMask!0 mask!2512))))

(assert (=> start!130288 e!852173))

(assert (=> start!130288 true))

(declare-fun array_inv!37948 (array!101565) Bool)

(assert (=> start!130288 (array_inv!37948 a!2804)))

(declare-fun b!1529048 () Bool)

(assert (=> b!1529048 (= e!852173 e!852176)))

(declare-fun res!1046898 () Bool)

(assert (=> b!1529048 (=> (not res!1046898) (not e!852176))))

(declare-datatypes ((SeekEntryResult!13189 0))(
  ( (MissingZero!13189 (index!55150 (_ BitVec 32))) (Found!13189 (index!55151 (_ BitVec 32))) (Intermediate!13189 (undefined!14001 Bool) (index!55152 (_ BitVec 32)) (x!136847 (_ BitVec 32))) (Undefined!13189) (MissingVacant!13189 (index!55153 (_ BitVec 32))) )
))
(declare-fun lt!662266 () SeekEntryResult!13189)

(declare-fun lt!662267 () SeekEntryResult!13189)

(assert (=> b!1529048 (= res!1046898 (= lt!662266 lt!662267))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1529048 (= lt!662267 (Intermediate!13189 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101565 (_ BitVec 32)) SeekEntryResult!13189)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529048 (= lt!662266 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49003 a!2804) j!70) mask!2512) (select (arr!49003 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1529049 () Bool)

(declare-fun res!1046900 () Bool)

(assert (=> b!1529049 (=> (not res!1046900) (not e!852173))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1529049 (= res!1046900 (validKeyInArray!0 (select (arr!49003 a!2804) j!70)))))

(declare-fun b!1529050 () Bool)

(declare-fun res!1046901 () Bool)

(assert (=> b!1529050 (=> (not res!1046901) (not e!852173))))

(assert (=> b!1529050 (= res!1046901 (and (= (size!49554 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49554 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49554 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1529051 () Bool)

(declare-fun res!1046893 () Bool)

(assert (=> b!1529051 (=> (not res!1046893) (not e!852173))))

(assert (=> b!1529051 (= res!1046893 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1529052 () Bool)

(declare-fun res!1046899 () Bool)

(assert (=> b!1529052 (=> (not res!1046899) (not e!852176))))

(assert (=> b!1529052 (= res!1046899 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49003 a!2804) j!70) a!2804 mask!2512) lt!662267))))

(declare-fun b!1529053 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101565 (_ BitVec 32)) SeekEntryResult!13189)

(assert (=> b!1529053 (= e!852172 (= (seekEntry!0 (select (arr!49003 a!2804) j!70) a!2804 mask!2512) (Found!13189 j!70)))))

(declare-fun b!1529054 () Bool)

(declare-fun res!1046895 () Bool)

(assert (=> b!1529054 (=> (not res!1046895) (not e!852176))))

(assert (=> b!1529054 (= res!1046895 (= lt!662266 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49003 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49003 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101566 (store (arr!49003 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49554 a!2804)) mask!2512)))))

(declare-fun b!1529055 () Bool)

(declare-fun res!1046894 () Bool)

(assert (=> b!1529055 (=> (not res!1046894) (not e!852173))))

(assert (=> b!1529055 (= res!1046894 (validKeyInArray!0 (select (arr!49003 a!2804) i!961)))))

(declare-fun b!1529056 () Bool)

(declare-fun res!1046897 () Bool)

(assert (=> b!1529056 (=> (not res!1046897) (not e!852173))))

(assert (=> b!1529056 (= res!1046897 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49554 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49554 a!2804))))))

(assert (= (and start!130288 res!1046890) b!1529050))

(assert (= (and b!1529050 res!1046901) b!1529055))

(assert (= (and b!1529055 res!1046894) b!1529049))

(assert (= (and b!1529049 res!1046900) b!1529051))

(assert (= (and b!1529051 res!1046893) b!1529047))

(assert (= (and b!1529047 res!1046891) b!1529056))

(assert (= (and b!1529056 res!1046897) b!1529048))

(assert (= (and b!1529048 res!1046898) b!1529052))

(assert (= (and b!1529052 res!1046899) b!1529054))

(assert (= (and b!1529054 res!1046895) b!1529046))

(assert (= (and b!1529046 res!1046892) b!1529053))

(assert (= (and b!1529046 (not res!1046896)) b!1529045))

(declare-fun m!1412025 () Bool)

(assert (=> b!1529048 m!1412025))

(assert (=> b!1529048 m!1412025))

(declare-fun m!1412027 () Bool)

(assert (=> b!1529048 m!1412027))

(assert (=> b!1529048 m!1412027))

(assert (=> b!1529048 m!1412025))

(declare-fun m!1412029 () Bool)

(assert (=> b!1529048 m!1412029))

(assert (=> b!1529052 m!1412025))

(assert (=> b!1529052 m!1412025))

(declare-fun m!1412031 () Bool)

(assert (=> b!1529052 m!1412031))

(declare-fun m!1412033 () Bool)

(assert (=> b!1529045 m!1412033))

(declare-fun m!1412035 () Bool)

(assert (=> b!1529054 m!1412035))

(declare-fun m!1412037 () Bool)

(assert (=> b!1529054 m!1412037))

(assert (=> b!1529054 m!1412037))

(declare-fun m!1412039 () Bool)

(assert (=> b!1529054 m!1412039))

(assert (=> b!1529054 m!1412039))

(assert (=> b!1529054 m!1412037))

(declare-fun m!1412041 () Bool)

(assert (=> b!1529054 m!1412041))

(assert (=> b!1529046 m!1412025))

(declare-fun m!1412043 () Bool)

(assert (=> b!1529046 m!1412043))

(assert (=> b!1529046 m!1412035))

(assert (=> b!1529046 m!1412037))

(declare-fun m!1412045 () Bool)

(assert (=> b!1529046 m!1412045))

(assert (=> b!1529053 m!1412025))

(assert (=> b!1529053 m!1412025))

(declare-fun m!1412047 () Bool)

(assert (=> b!1529053 m!1412047))

(declare-fun m!1412049 () Bool)

(assert (=> b!1529047 m!1412049))

(declare-fun m!1412051 () Bool)

(assert (=> start!130288 m!1412051))

(declare-fun m!1412053 () Bool)

(assert (=> start!130288 m!1412053))

(declare-fun m!1412055 () Bool)

(assert (=> b!1529051 m!1412055))

(declare-fun m!1412057 () Bool)

(assert (=> b!1529055 m!1412057))

(assert (=> b!1529055 m!1412057))

(declare-fun m!1412059 () Bool)

(assert (=> b!1529055 m!1412059))

(assert (=> b!1529049 m!1412025))

(assert (=> b!1529049 m!1412025))

(declare-fun m!1412061 () Bool)

(assert (=> b!1529049 m!1412061))

(push 1)

