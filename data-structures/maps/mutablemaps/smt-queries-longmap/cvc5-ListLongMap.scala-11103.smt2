; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129672 () Bool)

(assert start!129672)

(declare-fun b!1521832 () Bool)

(declare-fun res!1041199 () Bool)

(declare-fun e!848651 () Bool)

(assert (=> b!1521832 (=> (not res!1041199) (not e!848651))))

(declare-datatypes ((array!101274 0))(
  ( (array!101275 (arr!48865 (Array (_ BitVec 32) (_ BitVec 64))) (size!49416 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101274)

(declare-datatypes ((List!35528 0))(
  ( (Nil!35525) (Cons!35524 (h!36946 (_ BitVec 64)) (t!50229 List!35528)) )
))
(declare-fun arrayNoDuplicates!0 (array!101274 (_ BitVec 32) List!35528) Bool)

(assert (=> b!1521832 (= res!1041199 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35525))))

(declare-fun b!1521833 () Bool)

(declare-fun res!1041195 () Bool)

(assert (=> b!1521833 (=> (not res!1041195) (not e!848651))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1521833 (= res!1041195 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49416 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49416 a!2804))))))

(declare-fun b!1521834 () Bool)

(declare-fun res!1041197 () Bool)

(assert (=> b!1521834 (=> (not res!1041197) (not e!848651))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521834 (= res!1041197 (validKeyInArray!0 (select (arr!48865 a!2804) j!70)))))

(declare-fun b!1521835 () Bool)

(declare-fun res!1041201 () Bool)

(assert (=> b!1521835 (=> (not res!1041201) (not e!848651))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1521835 (= res!1041201 (and (= (size!49416 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49416 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49416 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1521836 () Bool)

(declare-fun e!848650 () Bool)

(assert (=> b!1521836 (= e!848651 e!848650)))

(declare-fun res!1041193 () Bool)

(assert (=> b!1521836 (=> (not res!1041193) (not e!848650))))

(declare-datatypes ((SeekEntryResult!13051 0))(
  ( (MissingZero!13051 (index!54598 (_ BitVec 32))) (Found!13051 (index!54599 (_ BitVec 32))) (Intermediate!13051 (undefined!13863 Bool) (index!54600 (_ BitVec 32)) (x!136298 (_ BitVec 32))) (Undefined!13051) (MissingVacant!13051 (index!54601 (_ BitVec 32))) )
))
(declare-fun lt!659386 () SeekEntryResult!13051)

(declare-fun lt!659385 () SeekEntryResult!13051)

(assert (=> b!1521836 (= res!1041193 (= lt!659386 lt!659385))))

(assert (=> b!1521836 (= lt!659385 (Intermediate!13051 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101274 (_ BitVec 32)) SeekEntryResult!13051)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521836 (= lt!659386 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48865 a!2804) j!70) mask!2512) (select (arr!48865 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1521837 () Bool)

(declare-fun res!1041192 () Bool)

(assert (=> b!1521837 (=> (not res!1041192) (not e!848651))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101274 (_ BitVec 32)) Bool)

(assert (=> b!1521837 (= res!1041192 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521838 () Bool)

(assert (=> b!1521838 (= e!848650 (and (bvsle #b00000000000000000000000000000000 (size!49416 a!2804)) (bvsgt j!70 (size!49416 a!2804))))))

(declare-fun b!1521839 () Bool)

(declare-fun res!1041200 () Bool)

(assert (=> b!1521839 (=> (not res!1041200) (not e!848650))))

(assert (=> b!1521839 (= res!1041200 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48865 a!2804) j!70) a!2804 mask!2512) lt!659385))))

(declare-fun b!1521840 () Bool)

(declare-fun res!1041194 () Bool)

(assert (=> b!1521840 (=> (not res!1041194) (not e!848650))))

(assert (=> b!1521840 (= res!1041194 (= lt!659386 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48865 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48865 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101275 (store (arr!48865 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49416 a!2804)) mask!2512)))))

(declare-fun res!1041196 () Bool)

(assert (=> start!129672 (=> (not res!1041196) (not e!848651))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129672 (= res!1041196 (validMask!0 mask!2512))))

(assert (=> start!129672 e!848651))

(assert (=> start!129672 true))

(declare-fun array_inv!37810 (array!101274) Bool)

(assert (=> start!129672 (array_inv!37810 a!2804)))

(declare-fun b!1521841 () Bool)

(declare-fun res!1041198 () Bool)

(assert (=> b!1521841 (=> (not res!1041198) (not e!848651))))

(assert (=> b!1521841 (= res!1041198 (validKeyInArray!0 (select (arr!48865 a!2804) i!961)))))

(assert (= (and start!129672 res!1041196) b!1521835))

(assert (= (and b!1521835 res!1041201) b!1521841))

(assert (= (and b!1521841 res!1041198) b!1521834))

(assert (= (and b!1521834 res!1041197) b!1521837))

(assert (= (and b!1521837 res!1041192) b!1521832))

(assert (= (and b!1521832 res!1041199) b!1521833))

(assert (= (and b!1521833 res!1041195) b!1521836))

(assert (= (and b!1521836 res!1041193) b!1521839))

(assert (= (and b!1521839 res!1041200) b!1521840))

(assert (= (and b!1521840 res!1041194) b!1521838))

(declare-fun m!1405001 () Bool)

(assert (=> b!1521836 m!1405001))

(assert (=> b!1521836 m!1405001))

(declare-fun m!1405003 () Bool)

(assert (=> b!1521836 m!1405003))

(assert (=> b!1521836 m!1405003))

(assert (=> b!1521836 m!1405001))

(declare-fun m!1405005 () Bool)

(assert (=> b!1521836 m!1405005))

(assert (=> b!1521839 m!1405001))

(assert (=> b!1521839 m!1405001))

(declare-fun m!1405007 () Bool)

(assert (=> b!1521839 m!1405007))

(declare-fun m!1405009 () Bool)

(assert (=> b!1521841 m!1405009))

(assert (=> b!1521841 m!1405009))

(declare-fun m!1405011 () Bool)

(assert (=> b!1521841 m!1405011))

(declare-fun m!1405013 () Bool)

(assert (=> b!1521840 m!1405013))

(declare-fun m!1405015 () Bool)

(assert (=> b!1521840 m!1405015))

(assert (=> b!1521840 m!1405015))

(declare-fun m!1405017 () Bool)

(assert (=> b!1521840 m!1405017))

(assert (=> b!1521840 m!1405017))

(assert (=> b!1521840 m!1405015))

(declare-fun m!1405019 () Bool)

(assert (=> b!1521840 m!1405019))

(declare-fun m!1405021 () Bool)

(assert (=> start!129672 m!1405021))

(declare-fun m!1405023 () Bool)

(assert (=> start!129672 m!1405023))

(declare-fun m!1405025 () Bool)

(assert (=> b!1521837 m!1405025))

(declare-fun m!1405027 () Bool)

(assert (=> b!1521832 m!1405027))

(assert (=> b!1521834 m!1405001))

(assert (=> b!1521834 m!1405001))

(declare-fun m!1405029 () Bool)

(assert (=> b!1521834 m!1405029))

(push 1)

(assert (not b!1521840))

(assert (not b!1521836))

(assert (not b!1521841))

(assert (not b!1521837))

(assert (not b!1521832))

(assert (not b!1521834))

(assert (not b!1521839))

(assert (not start!129672))

(check-sat)

(pop 1)

(push 1)

(check-sat)

