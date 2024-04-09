; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129022 () Bool)

(assert start!129022)

(declare-fun b!1512166 () Bool)

(declare-fun res!1032151 () Bool)

(declare-fun e!844131 () Bool)

(assert (=> b!1512166 (=> (not res!1032151) (not e!844131))))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100791 0))(
  ( (array!100792 (arr!48628 (Array (_ BitVec 32) (_ BitVec 64))) (size!49179 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100791)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1512166 (= res!1032151 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49179 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49179 a!2804))))))

(declare-fun b!1512167 () Bool)

(declare-fun res!1032153 () Bool)

(declare-fun e!844133 () Bool)

(assert (=> b!1512167 (=> (not res!1032153) (not e!844133))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12820 0))(
  ( (MissingZero!12820 (index!53674 (_ BitVec 32))) (Found!12820 (index!53675 (_ BitVec 32))) (Intermediate!12820 (undefined!13632 Bool) (index!53676 (_ BitVec 32)) (x!135415 (_ BitVec 32))) (Undefined!12820) (MissingVacant!12820 (index!53677 (_ BitVec 32))) )
))
(declare-fun lt!655583 () SeekEntryResult!12820)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100791 (_ BitVec 32)) SeekEntryResult!12820)

(assert (=> b!1512167 (= res!1032153 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48628 a!2804) j!70) a!2804 mask!2512) lt!655583))))

(declare-fun b!1512168 () Bool)

(assert (=> b!1512168 (= e!844131 e!844133)))

(declare-fun res!1032149 () Bool)

(assert (=> b!1512168 (=> (not res!1032149) (not e!844133))))

(declare-fun lt!655584 () SeekEntryResult!12820)

(assert (=> b!1512168 (= res!1032149 (= lt!655584 lt!655583))))

(assert (=> b!1512168 (= lt!655583 (Intermediate!12820 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1512168 (= lt!655584 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48628 a!2804) j!70) mask!2512) (select (arr!48628 a!2804) j!70) a!2804 mask!2512))))

(declare-fun e!844132 () Bool)

(declare-fun b!1512169 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100791 (_ BitVec 32)) SeekEntryResult!12820)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100791 (_ BitVec 32)) SeekEntryResult!12820)

(assert (=> b!1512169 (= e!844132 (= (seekEntryOrOpen!0 (select (arr!48628 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48628 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1512170 () Bool)

(declare-fun res!1032147 () Bool)

(assert (=> b!1512170 (=> (not res!1032147) (not e!844131))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1512170 (= res!1032147 (validKeyInArray!0 (select (arr!48628 a!2804) i!961)))))

(declare-fun b!1512171 () Bool)

(declare-fun res!1032150 () Bool)

(assert (=> b!1512171 (=> (not res!1032150) (not e!844131))))

(assert (=> b!1512171 (= res!1032150 (and (= (size!49179 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49179 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49179 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1512172 () Bool)

(declare-fun res!1032148 () Bool)

(assert (=> b!1512172 (=> (not res!1032148) (not e!844131))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100791 (_ BitVec 32)) Bool)

(assert (=> b!1512172 (= res!1032148 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1512173 () Bool)

(assert (=> b!1512173 (= e!844133 (not (or (not (= (select (arr!48628 a!2804) j!70) (select (store (arr!48628 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48628 a!2804) index!487) (select (arr!48628 a!2804) j!70)) (not (= (select (arr!48628 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!2512 #b00000000000000000000000000000000))))))

(declare-fun e!844130 () Bool)

(assert (=> b!1512173 e!844130))

(declare-fun res!1032145 () Bool)

(assert (=> b!1512173 (=> (not res!1032145) (not e!844130))))

(assert (=> b!1512173 (= res!1032145 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50464 0))(
  ( (Unit!50465) )
))
(declare-fun lt!655585 () Unit!50464)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100791 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50464)

(assert (=> b!1512173 (= lt!655585 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1032141 () Bool)

(assert (=> start!129022 (=> (not res!1032141) (not e!844131))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129022 (= res!1032141 (validMask!0 mask!2512))))

(assert (=> start!129022 e!844131))

(assert (=> start!129022 true))

(declare-fun array_inv!37573 (array!100791) Bool)

(assert (=> start!129022 (array_inv!37573 a!2804)))

(declare-fun b!1512174 () Bool)

(declare-fun res!1032142 () Bool)

(assert (=> b!1512174 (=> (not res!1032142) (not e!844131))))

(declare-datatypes ((List!35291 0))(
  ( (Nil!35288) (Cons!35287 (h!36700 (_ BitVec 64)) (t!49992 List!35291)) )
))
(declare-fun arrayNoDuplicates!0 (array!100791 (_ BitVec 32) List!35291) Bool)

(assert (=> b!1512174 (= res!1032142 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35288))))

(declare-fun b!1512175 () Bool)

(declare-fun res!1032152 () Bool)

(assert (=> b!1512175 (=> (not res!1032152) (not e!844133))))

(assert (=> b!1512175 (= res!1032152 (= lt!655584 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48628 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48628 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100792 (store (arr!48628 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49179 a!2804)) mask!2512)))))

(declare-fun b!1512176 () Bool)

(assert (=> b!1512176 (= e!844130 e!844132)))

(declare-fun res!1032146 () Bool)

(assert (=> b!1512176 (=> res!1032146 e!844132)))

(assert (=> b!1512176 (= res!1032146 (or (not (= (select (arr!48628 a!2804) j!70) (select (store (arr!48628 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48628 a!2804) index!487) (select (arr!48628 a!2804) j!70)) (not (= (select (arr!48628 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1512177 () Bool)

(declare-fun res!1032144 () Bool)

(assert (=> b!1512177 (=> (not res!1032144) (not e!844131))))

(assert (=> b!1512177 (= res!1032144 (validKeyInArray!0 (select (arr!48628 a!2804) j!70)))))

(declare-fun b!1512178 () Bool)

(declare-fun res!1032143 () Bool)

(assert (=> b!1512178 (=> (not res!1032143) (not e!844130))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100791 (_ BitVec 32)) SeekEntryResult!12820)

(assert (=> b!1512178 (= res!1032143 (= (seekEntry!0 (select (arr!48628 a!2804) j!70) a!2804 mask!2512) (Found!12820 j!70)))))

(assert (= (and start!129022 res!1032141) b!1512171))

(assert (= (and b!1512171 res!1032150) b!1512170))

(assert (= (and b!1512170 res!1032147) b!1512177))

(assert (= (and b!1512177 res!1032144) b!1512172))

(assert (= (and b!1512172 res!1032148) b!1512174))

(assert (= (and b!1512174 res!1032142) b!1512166))

(assert (= (and b!1512166 res!1032151) b!1512168))

(assert (= (and b!1512168 res!1032149) b!1512167))

(assert (= (and b!1512167 res!1032153) b!1512175))

(assert (= (and b!1512175 res!1032152) b!1512173))

(assert (= (and b!1512173 res!1032145) b!1512178))

(assert (= (and b!1512178 res!1032143) b!1512176))

(assert (= (and b!1512176 (not res!1032146)) b!1512169))

(declare-fun m!1394973 () Bool)

(assert (=> b!1512168 m!1394973))

(assert (=> b!1512168 m!1394973))

(declare-fun m!1394975 () Bool)

(assert (=> b!1512168 m!1394975))

(assert (=> b!1512168 m!1394975))

(assert (=> b!1512168 m!1394973))

(declare-fun m!1394977 () Bool)

(assert (=> b!1512168 m!1394977))

(declare-fun m!1394979 () Bool)

(assert (=> b!1512170 m!1394979))

(assert (=> b!1512170 m!1394979))

(declare-fun m!1394981 () Bool)

(assert (=> b!1512170 m!1394981))

(assert (=> b!1512178 m!1394973))

(assert (=> b!1512178 m!1394973))

(declare-fun m!1394983 () Bool)

(assert (=> b!1512178 m!1394983))

(assert (=> b!1512177 m!1394973))

(assert (=> b!1512177 m!1394973))

(declare-fun m!1394985 () Bool)

(assert (=> b!1512177 m!1394985))

(assert (=> b!1512167 m!1394973))

(assert (=> b!1512167 m!1394973))

(declare-fun m!1394987 () Bool)

(assert (=> b!1512167 m!1394987))

(assert (=> b!1512169 m!1394973))

(assert (=> b!1512169 m!1394973))

(declare-fun m!1394989 () Bool)

(assert (=> b!1512169 m!1394989))

(assert (=> b!1512169 m!1394973))

(declare-fun m!1394991 () Bool)

(assert (=> b!1512169 m!1394991))

(declare-fun m!1394993 () Bool)

(assert (=> b!1512174 m!1394993))

(assert (=> b!1512176 m!1394973))

(declare-fun m!1394995 () Bool)

(assert (=> b!1512176 m!1394995))

(declare-fun m!1394997 () Bool)

(assert (=> b!1512176 m!1394997))

(declare-fun m!1394999 () Bool)

(assert (=> b!1512176 m!1394999))

(assert (=> b!1512175 m!1394995))

(assert (=> b!1512175 m!1394997))

(assert (=> b!1512175 m!1394997))

(declare-fun m!1395001 () Bool)

(assert (=> b!1512175 m!1395001))

(assert (=> b!1512175 m!1395001))

(assert (=> b!1512175 m!1394997))

(declare-fun m!1395003 () Bool)

(assert (=> b!1512175 m!1395003))

(declare-fun m!1395005 () Bool)

(assert (=> start!129022 m!1395005))

(declare-fun m!1395007 () Bool)

(assert (=> start!129022 m!1395007))

(assert (=> b!1512173 m!1394973))

(declare-fun m!1395009 () Bool)

(assert (=> b!1512173 m!1395009))

(assert (=> b!1512173 m!1394995))

(assert (=> b!1512173 m!1394999))

(assert (=> b!1512173 m!1394997))

(declare-fun m!1395011 () Bool)

(assert (=> b!1512173 m!1395011))

(declare-fun m!1395013 () Bool)

(assert (=> b!1512172 m!1395013))

(push 1)

