; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128854 () Bool)

(assert start!128854)

(declare-fun b!1509307 () Bool)

(declare-fun res!1029286 () Bool)

(declare-fun e!843082 () Bool)

(assert (=> b!1509307 (=> (not res!1029286) (not e!843082))))

(declare-datatypes ((array!100623 0))(
  ( (array!100624 (arr!48544 (Array (_ BitVec 32) (_ BitVec 64))) (size!49095 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100623)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509307 (= res!1029286 (validKeyInArray!0 (select (arr!48544 a!2804) i!961)))))

(declare-fun b!1509308 () Bool)

(declare-fun res!1029290 () Bool)

(assert (=> b!1509308 (=> (not res!1029290) (not e!843082))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1509308 (= res!1029290 (and (= (size!49095 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49095 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49095 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1509309 () Bool)

(declare-fun res!1029287 () Bool)

(declare-fun e!843083 () Bool)

(assert (=> b!1509309 (=> (not res!1029287) (not e!843083))))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12736 0))(
  ( (MissingZero!12736 (index!53338 (_ BitVec 32))) (Found!12736 (index!53339 (_ BitVec 32))) (Intermediate!12736 (undefined!13548 Bool) (index!53340 (_ BitVec 32)) (x!135107 (_ BitVec 32))) (Undefined!12736) (MissingVacant!12736 (index!53341 (_ BitVec 32))) )
))
(declare-fun lt!654828 () SeekEntryResult!12736)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100623 (_ BitVec 32)) SeekEntryResult!12736)

(assert (=> b!1509309 (= res!1029287 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48544 a!2804) j!70) a!2804 mask!2512) lt!654828))))

(declare-fun b!1509310 () Bool)

(declare-fun res!1029285 () Bool)

(assert (=> b!1509310 (=> (not res!1029285) (not e!843082))))

(declare-datatypes ((List!35207 0))(
  ( (Nil!35204) (Cons!35203 (h!36616 (_ BitVec 64)) (t!49908 List!35207)) )
))
(declare-fun arrayNoDuplicates!0 (array!100623 (_ BitVec 32) List!35207) Bool)

(assert (=> b!1509310 (= res!1029285 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35204))))

(declare-fun b!1509311 () Bool)

(declare-fun res!1029284 () Bool)

(assert (=> b!1509311 (=> (not res!1029284) (not e!843082))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1509311 (= res!1029284 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49095 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49095 a!2804))))))

(declare-fun b!1509313 () Bool)

(assert (=> b!1509313 (= e!843082 e!843083)))

(declare-fun res!1029288 () Bool)

(assert (=> b!1509313 (=> (not res!1029288) (not e!843083))))

(declare-fun lt!654829 () SeekEntryResult!12736)

(assert (=> b!1509313 (= res!1029288 (= lt!654829 lt!654828))))

(assert (=> b!1509313 (= lt!654828 (Intermediate!12736 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509313 (= lt!654829 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48544 a!2804) j!70) mask!2512) (select (arr!48544 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1509314 () Bool)

(declare-fun res!1029282 () Bool)

(assert (=> b!1509314 (=> (not res!1029282) (not e!843083))))

(assert (=> b!1509314 (= res!1029282 (= lt!654829 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48544 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48544 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100624 (store (arr!48544 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49095 a!2804)) mask!2512)))))

(declare-fun b!1509315 () Bool)

(assert (=> b!1509315 (= e!843083 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100623 (_ BitVec 32)) Bool)

(assert (=> b!1509315 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-datatypes ((Unit!50296 0))(
  ( (Unit!50297) )
))
(declare-fun lt!654827 () Unit!50296)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100623 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50296)

(assert (=> b!1509315 (= lt!654827 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1509316 () Bool)

(declare-fun res!1029289 () Bool)

(assert (=> b!1509316 (=> (not res!1029289) (not e!843082))))

(assert (=> b!1509316 (= res!1029289 (validKeyInArray!0 (select (arr!48544 a!2804) j!70)))))

(declare-fun res!1029291 () Bool)

(assert (=> start!128854 (=> (not res!1029291) (not e!843082))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128854 (= res!1029291 (validMask!0 mask!2512))))

(assert (=> start!128854 e!843082))

(assert (=> start!128854 true))

(declare-fun array_inv!37489 (array!100623) Bool)

(assert (=> start!128854 (array_inv!37489 a!2804)))

(declare-fun b!1509312 () Bool)

(declare-fun res!1029283 () Bool)

(assert (=> b!1509312 (=> (not res!1029283) (not e!843082))))

(assert (=> b!1509312 (= res!1029283 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!128854 res!1029291) b!1509308))

(assert (= (and b!1509308 res!1029290) b!1509307))

(assert (= (and b!1509307 res!1029286) b!1509316))

(assert (= (and b!1509316 res!1029289) b!1509312))

(assert (= (and b!1509312 res!1029283) b!1509310))

(assert (= (and b!1509310 res!1029285) b!1509311))

(assert (= (and b!1509311 res!1029284) b!1509313))

(assert (= (and b!1509313 res!1029288) b!1509309))

(assert (= (and b!1509309 res!1029287) b!1509314))

(assert (= (and b!1509314 res!1029282) b!1509315))

(declare-fun m!1391829 () Bool)

(assert (=> b!1509310 m!1391829))

(declare-fun m!1391831 () Bool)

(assert (=> b!1509313 m!1391831))

(assert (=> b!1509313 m!1391831))

(declare-fun m!1391833 () Bool)

(assert (=> b!1509313 m!1391833))

(assert (=> b!1509313 m!1391833))

(assert (=> b!1509313 m!1391831))

(declare-fun m!1391835 () Bool)

(assert (=> b!1509313 m!1391835))

(assert (=> b!1509309 m!1391831))

(assert (=> b!1509309 m!1391831))

(declare-fun m!1391837 () Bool)

(assert (=> b!1509309 m!1391837))

(declare-fun m!1391839 () Bool)

(assert (=> b!1509315 m!1391839))

(declare-fun m!1391841 () Bool)

(assert (=> b!1509315 m!1391841))

(declare-fun m!1391843 () Bool)

(assert (=> b!1509312 m!1391843))

(assert (=> b!1509316 m!1391831))

(assert (=> b!1509316 m!1391831))

(declare-fun m!1391845 () Bool)

(assert (=> b!1509316 m!1391845))

(declare-fun m!1391847 () Bool)

(assert (=> b!1509307 m!1391847))

(assert (=> b!1509307 m!1391847))

(declare-fun m!1391849 () Bool)

(assert (=> b!1509307 m!1391849))

(declare-fun m!1391851 () Bool)

(assert (=> b!1509314 m!1391851))

(declare-fun m!1391853 () Bool)

(assert (=> b!1509314 m!1391853))

(assert (=> b!1509314 m!1391853))

(declare-fun m!1391855 () Bool)

(assert (=> b!1509314 m!1391855))

(assert (=> b!1509314 m!1391855))

(assert (=> b!1509314 m!1391853))

(declare-fun m!1391857 () Bool)

(assert (=> b!1509314 m!1391857))

(declare-fun m!1391859 () Bool)

(assert (=> start!128854 m!1391859))

(declare-fun m!1391861 () Bool)

(assert (=> start!128854 m!1391861))

(push 1)

