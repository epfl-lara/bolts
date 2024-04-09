; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129814 () Bool)

(assert start!129814)

(declare-fun b!1523253 () Bool)

(declare-fun res!1042306 () Bool)

(declare-fun e!849272 () Bool)

(assert (=> b!1523253 (=> (not res!1042306) (not e!849272))))

(declare-datatypes ((array!101337 0))(
  ( (array!101338 (arr!48895 (Array (_ BitVec 32) (_ BitVec 64))) (size!49446 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101337)

(declare-datatypes ((List!35558 0))(
  ( (Nil!35555) (Cons!35554 (h!36979 (_ BitVec 64)) (t!50259 List!35558)) )
))
(declare-fun arrayNoDuplicates!0 (array!101337 (_ BitVec 32) List!35558) Bool)

(assert (=> b!1523253 (= res!1042306 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35555))))

(declare-fun b!1523254 () Bool)

(declare-fun res!1042305 () Bool)

(assert (=> b!1523254 (=> (not res!1042305) (not e!849272))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1523254 (= res!1042305 (and (= (size!49446 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49446 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49446 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1523255 () Bool)

(declare-fun res!1042308 () Bool)

(declare-fun e!849269 () Bool)

(assert (=> b!1523255 (=> (not res!1042308) (not e!849269))))

(declare-datatypes ((SeekEntryResult!13081 0))(
  ( (MissingZero!13081 (index!54718 (_ BitVec 32))) (Found!13081 (index!54719 (_ BitVec 32))) (Intermediate!13081 (undefined!13893 Bool) (index!54720 (_ BitVec 32)) (x!136418 (_ BitVec 32))) (Undefined!13081) (MissingVacant!13081 (index!54721 (_ BitVec 32))) )
))
(declare-fun lt!659859 () SeekEntryResult!13081)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101337 (_ BitVec 32)) SeekEntryResult!13081)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1523255 (= res!1042308 (= lt!659859 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48895 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48895 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101338 (store (arr!48895 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49446 a!2804)) mask!2512)))))

(declare-fun b!1523256 () Bool)

(assert (=> b!1523256 (= e!849269 (not true))))

(declare-fun e!849271 () Bool)

(assert (=> b!1523256 e!849271))

(declare-fun res!1042301 () Bool)

(assert (=> b!1523256 (=> (not res!1042301) (not e!849271))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101337 (_ BitVec 32)) Bool)

(assert (=> b!1523256 (= res!1042301 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50902 0))(
  ( (Unit!50903) )
))
(declare-fun lt!659858 () Unit!50902)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101337 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50902)

(assert (=> b!1523256 (= lt!659858 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1523258 () Bool)

(declare-fun res!1042300 () Bool)

(assert (=> b!1523258 (=> (not res!1042300) (not e!849272))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1523258 (= res!1042300 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49446 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49446 a!2804))))))

(declare-fun b!1523259 () Bool)

(declare-fun res!1042302 () Bool)

(assert (=> b!1523259 (=> (not res!1042302) (not e!849269))))

(declare-fun lt!659860 () SeekEntryResult!13081)

(assert (=> b!1523259 (= res!1042302 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48895 a!2804) j!70) a!2804 mask!2512) lt!659860))))

(declare-fun b!1523260 () Bool)

(assert (=> b!1523260 (= e!849272 e!849269)))

(declare-fun res!1042298 () Bool)

(assert (=> b!1523260 (=> (not res!1042298) (not e!849269))))

(assert (=> b!1523260 (= res!1042298 (= lt!659859 lt!659860))))

(assert (=> b!1523260 (= lt!659860 (Intermediate!13081 false resIndex!21 resX!21))))

(assert (=> b!1523260 (= lt!659859 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48895 a!2804) j!70) mask!2512) (select (arr!48895 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1523261 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101337 (_ BitVec 32)) SeekEntryResult!13081)

(assert (=> b!1523261 (= e!849271 (= (seekEntry!0 (select (arr!48895 a!2804) j!70) a!2804 mask!2512) (Found!13081 j!70)))))

(declare-fun b!1523262 () Bool)

(declare-fun res!1042303 () Bool)

(assert (=> b!1523262 (=> (not res!1042303) (not e!849272))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1523262 (= res!1042303 (validKeyInArray!0 (select (arr!48895 a!2804) i!961)))))

(declare-fun b!1523263 () Bool)

(declare-fun res!1042307 () Bool)

(assert (=> b!1523263 (=> (not res!1042307) (not e!849272))))

(assert (=> b!1523263 (= res!1042307 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1042304 () Bool)

(assert (=> start!129814 (=> (not res!1042304) (not e!849272))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129814 (= res!1042304 (validMask!0 mask!2512))))

(assert (=> start!129814 e!849272))

(assert (=> start!129814 true))

(declare-fun array_inv!37840 (array!101337) Bool)

(assert (=> start!129814 (array_inv!37840 a!2804)))

(declare-fun b!1523257 () Bool)

(declare-fun res!1042299 () Bool)

(assert (=> b!1523257 (=> (not res!1042299) (not e!849272))))

(assert (=> b!1523257 (= res!1042299 (validKeyInArray!0 (select (arr!48895 a!2804) j!70)))))

(assert (= (and start!129814 res!1042304) b!1523254))

(assert (= (and b!1523254 res!1042305) b!1523262))

(assert (= (and b!1523262 res!1042303) b!1523257))

(assert (= (and b!1523257 res!1042299) b!1523263))

(assert (= (and b!1523263 res!1042307) b!1523253))

(assert (= (and b!1523253 res!1042306) b!1523258))

(assert (= (and b!1523258 res!1042300) b!1523260))

(assert (= (and b!1523260 res!1042298) b!1523259))

(assert (= (and b!1523259 res!1042302) b!1523255))

(assert (= (and b!1523255 res!1042308) b!1523256))

(assert (= (and b!1523256 res!1042301) b!1523261))

(declare-fun m!1406415 () Bool)

(assert (=> b!1523255 m!1406415))

(declare-fun m!1406417 () Bool)

(assert (=> b!1523255 m!1406417))

(assert (=> b!1523255 m!1406417))

(declare-fun m!1406419 () Bool)

(assert (=> b!1523255 m!1406419))

(assert (=> b!1523255 m!1406419))

(assert (=> b!1523255 m!1406417))

(declare-fun m!1406421 () Bool)

(assert (=> b!1523255 m!1406421))

(declare-fun m!1406423 () Bool)

(assert (=> start!129814 m!1406423))

(declare-fun m!1406425 () Bool)

(assert (=> start!129814 m!1406425))

(declare-fun m!1406427 () Bool)

(assert (=> b!1523256 m!1406427))

(declare-fun m!1406429 () Bool)

(assert (=> b!1523256 m!1406429))

(declare-fun m!1406431 () Bool)

(assert (=> b!1523262 m!1406431))

(assert (=> b!1523262 m!1406431))

(declare-fun m!1406433 () Bool)

(assert (=> b!1523262 m!1406433))

(declare-fun m!1406435 () Bool)

(assert (=> b!1523257 m!1406435))

(assert (=> b!1523257 m!1406435))

(declare-fun m!1406437 () Bool)

(assert (=> b!1523257 m!1406437))

(assert (=> b!1523260 m!1406435))

(assert (=> b!1523260 m!1406435))

(declare-fun m!1406439 () Bool)

(assert (=> b!1523260 m!1406439))

(assert (=> b!1523260 m!1406439))

(assert (=> b!1523260 m!1406435))

(declare-fun m!1406441 () Bool)

(assert (=> b!1523260 m!1406441))

(assert (=> b!1523259 m!1406435))

(assert (=> b!1523259 m!1406435))

(declare-fun m!1406443 () Bool)

(assert (=> b!1523259 m!1406443))

(declare-fun m!1406445 () Bool)

(assert (=> b!1523263 m!1406445))

(declare-fun m!1406447 () Bool)

(assert (=> b!1523253 m!1406447))

(assert (=> b!1523261 m!1406435))

(assert (=> b!1523261 m!1406435))

(declare-fun m!1406449 () Bool)

(assert (=> b!1523261 m!1406449))

(push 1)

