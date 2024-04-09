; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129222 () Bool)

(assert start!129222)

(declare-fun b!1516182 () Bool)

(declare-fun res!1036167 () Bool)

(declare-fun e!846075 () Bool)

(assert (=> b!1516182 (=> (not res!1036167) (not e!846075))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100991 0))(
  ( (array!100992 (arr!48728 (Array (_ BitVec 32) (_ BitVec 64))) (size!49279 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100991)

(assert (=> b!1516182 (= res!1036167 (and (= (size!49279 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49279 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49279 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1516183 () Bool)

(declare-fun res!1036166 () Bool)

(assert (=> b!1516183 (=> (not res!1036166) (not e!846075))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1516183 (= res!1036166 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49279 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49279 a!2804))))))

(declare-fun b!1516184 () Bool)

(declare-fun res!1036161 () Bool)

(assert (=> b!1516184 (=> (not res!1036161) (not e!846075))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1516184 (= res!1036161 (validKeyInArray!0 (select (arr!48728 a!2804) j!70)))))

(declare-fun res!1036164 () Bool)

(assert (=> start!129222 (=> (not res!1036164) (not e!846075))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129222 (= res!1036164 (validMask!0 mask!2512))))

(assert (=> start!129222 e!846075))

(assert (=> start!129222 true))

(declare-fun array_inv!37673 (array!100991) Bool)

(assert (=> start!129222 (array_inv!37673 a!2804)))

(declare-fun b!1516185 () Bool)

(declare-fun res!1036165 () Bool)

(declare-fun e!846077 () Bool)

(assert (=> b!1516185 (=> (not res!1036165) (not e!846077))))

(declare-datatypes ((SeekEntryResult!12920 0))(
  ( (MissingZero!12920 (index!54074 (_ BitVec 32))) (Found!12920 (index!54075 (_ BitVec 32))) (Intermediate!12920 (undefined!13732 Bool) (index!54076 (_ BitVec 32)) (x!135779 (_ BitVec 32))) (Undefined!12920) (MissingVacant!12920 (index!54077 (_ BitVec 32))) )
))
(declare-fun lt!657294 () SeekEntryResult!12920)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100991 (_ BitVec 32)) SeekEntryResult!12920)

(assert (=> b!1516185 (= res!1036165 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48728 a!2804) j!70) a!2804 mask!2512) lt!657294))))

(declare-fun b!1516186 () Bool)

(declare-fun res!1036158 () Bool)

(assert (=> b!1516186 (=> (not res!1036158) (not e!846077))))

(declare-fun lt!657293 () SeekEntryResult!12920)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516186 (= res!1036158 (= lt!657293 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48728 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48728 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100992 (store (arr!48728 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49279 a!2804)) mask!2512)))))

(declare-fun b!1516187 () Bool)

(declare-fun res!1036163 () Bool)

(assert (=> b!1516187 (=> (not res!1036163) (not e!846075))))

(assert (=> b!1516187 (= res!1036163 (validKeyInArray!0 (select (arr!48728 a!2804) i!961)))))

(declare-fun b!1516188 () Bool)

(declare-fun res!1036162 () Bool)

(assert (=> b!1516188 (=> (not res!1036162) (not e!846075))))

(declare-datatypes ((List!35391 0))(
  ( (Nil!35388) (Cons!35387 (h!36800 (_ BitVec 64)) (t!50092 List!35391)) )
))
(declare-fun arrayNoDuplicates!0 (array!100991 (_ BitVec 32) List!35391) Bool)

(assert (=> b!1516188 (= res!1036162 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35388))))

(declare-fun b!1516189 () Bool)

(declare-fun e!846076 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100991 (_ BitVec 32)) SeekEntryResult!12920)

(assert (=> b!1516189 (= e!846076 (= (seekEntry!0 (select (arr!48728 a!2804) j!70) a!2804 mask!2512) (Found!12920 j!70)))))

(declare-fun b!1516190 () Bool)

(assert (=> b!1516190 (= e!846075 e!846077)))

(declare-fun res!1036160 () Bool)

(assert (=> b!1516190 (=> (not res!1036160) (not e!846077))))

(assert (=> b!1516190 (= res!1036160 (= lt!657293 lt!657294))))

(assert (=> b!1516190 (= lt!657294 (Intermediate!12920 false resIndex!21 resX!21))))

(assert (=> b!1516190 (= lt!657293 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48728 a!2804) j!70) mask!2512) (select (arr!48728 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516191 () Bool)

(assert (=> b!1516191 (= e!846077 (not (or (not (= (select (arr!48728 a!2804) j!70) (select (store (arr!48728 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21) (bvslt mask!2512 #b00000000000000000000000000000000) (bvslt index!487 (bvadd #b00000000000000000000000000000001 mask!2512)))))))

(assert (=> b!1516191 e!846076))

(declare-fun res!1036157 () Bool)

(assert (=> b!1516191 (=> (not res!1036157) (not e!846076))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100991 (_ BitVec 32)) Bool)

(assert (=> b!1516191 (= res!1036157 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50664 0))(
  ( (Unit!50665) )
))
(declare-fun lt!657295 () Unit!50664)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100991 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50664)

(assert (=> b!1516191 (= lt!657295 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1516192 () Bool)

(declare-fun res!1036159 () Bool)

(assert (=> b!1516192 (=> (not res!1036159) (not e!846075))))

(assert (=> b!1516192 (= res!1036159 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!129222 res!1036164) b!1516182))

(assert (= (and b!1516182 res!1036167) b!1516187))

(assert (= (and b!1516187 res!1036163) b!1516184))

(assert (= (and b!1516184 res!1036161) b!1516192))

(assert (= (and b!1516192 res!1036159) b!1516188))

(assert (= (and b!1516188 res!1036162) b!1516183))

(assert (= (and b!1516183 res!1036166) b!1516190))

(assert (= (and b!1516190 res!1036160) b!1516185))

(assert (= (and b!1516185 res!1036165) b!1516186))

(assert (= (and b!1516186 res!1036158) b!1516191))

(assert (= (and b!1516191 res!1036157) b!1516189))

(declare-fun m!1399491 () Bool)

(assert (=> b!1516186 m!1399491))

(declare-fun m!1399493 () Bool)

(assert (=> b!1516186 m!1399493))

(assert (=> b!1516186 m!1399493))

(declare-fun m!1399495 () Bool)

(assert (=> b!1516186 m!1399495))

(assert (=> b!1516186 m!1399495))

(assert (=> b!1516186 m!1399493))

(declare-fun m!1399497 () Bool)

(assert (=> b!1516186 m!1399497))

(declare-fun m!1399499 () Bool)

(assert (=> b!1516191 m!1399499))

(declare-fun m!1399501 () Bool)

(assert (=> b!1516191 m!1399501))

(assert (=> b!1516191 m!1399491))

(assert (=> b!1516191 m!1399493))

(declare-fun m!1399503 () Bool)

(assert (=> b!1516191 m!1399503))

(assert (=> b!1516185 m!1399499))

(assert (=> b!1516185 m!1399499))

(declare-fun m!1399505 () Bool)

(assert (=> b!1516185 m!1399505))

(assert (=> b!1516189 m!1399499))

(assert (=> b!1516189 m!1399499))

(declare-fun m!1399507 () Bool)

(assert (=> b!1516189 m!1399507))

(declare-fun m!1399509 () Bool)

(assert (=> b!1516187 m!1399509))

(assert (=> b!1516187 m!1399509))

(declare-fun m!1399511 () Bool)

(assert (=> b!1516187 m!1399511))

(declare-fun m!1399513 () Bool)

(assert (=> b!1516192 m!1399513))

(declare-fun m!1399515 () Bool)

(assert (=> b!1516188 m!1399515))

(declare-fun m!1399517 () Bool)

(assert (=> start!129222 m!1399517))

(declare-fun m!1399519 () Bool)

(assert (=> start!129222 m!1399519))

(assert (=> b!1516184 m!1399499))

(assert (=> b!1516184 m!1399499))

(declare-fun m!1399521 () Bool)

(assert (=> b!1516184 m!1399521))

(assert (=> b!1516190 m!1399499))

(assert (=> b!1516190 m!1399499))

(declare-fun m!1399523 () Bool)

(assert (=> b!1516190 m!1399523))

(assert (=> b!1516190 m!1399523))

(assert (=> b!1516190 m!1399499))

(declare-fun m!1399525 () Bool)

(assert (=> b!1516190 m!1399525))

(check-sat (not b!1516184) (not b!1516186) (not b!1516188) (not b!1516191) (not b!1516187) (not b!1516190) (not b!1516192) (not b!1516189) (not b!1516185) (not start!129222))
(check-sat)
