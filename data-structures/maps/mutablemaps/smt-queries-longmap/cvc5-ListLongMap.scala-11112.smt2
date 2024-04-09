; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129808 () Bool)

(assert start!129808)

(declare-fun b!1523154 () Bool)

(declare-fun res!1042200 () Bool)

(declare-fun e!849234 () Bool)

(assert (=> b!1523154 (=> (not res!1042200) (not e!849234))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101331 0))(
  ( (array!101332 (arr!48892 (Array (_ BitVec 32) (_ BitVec 64))) (size!49443 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101331)

(assert (=> b!1523154 (= res!1042200 (and (= (size!49443 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49443 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49443 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1523155 () Bool)

(declare-fun e!849233 () Bool)

(assert (=> b!1523155 (= e!849233 (not true))))

(declare-fun e!849235 () Bool)

(assert (=> b!1523155 e!849235))

(declare-fun res!1042208 () Bool)

(assert (=> b!1523155 (=> (not res!1042208) (not e!849235))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101331 (_ BitVec 32)) Bool)

(assert (=> b!1523155 (= res!1042208 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50896 0))(
  ( (Unit!50897) )
))
(declare-fun lt!659831 () Unit!50896)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101331 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50896)

(assert (=> b!1523155 (= lt!659831 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1523156 () Bool)

(assert (=> b!1523156 (= e!849234 e!849233)))

(declare-fun res!1042201 () Bool)

(assert (=> b!1523156 (=> (not res!1042201) (not e!849233))))

(declare-datatypes ((SeekEntryResult!13078 0))(
  ( (MissingZero!13078 (index!54706 (_ BitVec 32))) (Found!13078 (index!54707 (_ BitVec 32))) (Intermediate!13078 (undefined!13890 Bool) (index!54708 (_ BitVec 32)) (x!136407 (_ BitVec 32))) (Undefined!13078) (MissingVacant!13078 (index!54709 (_ BitVec 32))) )
))
(declare-fun lt!659833 () SeekEntryResult!13078)

(declare-fun lt!659832 () SeekEntryResult!13078)

(assert (=> b!1523156 (= res!1042201 (= lt!659833 lt!659832))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1523156 (= lt!659832 (Intermediate!13078 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101331 (_ BitVec 32)) SeekEntryResult!13078)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1523156 (= lt!659833 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48892 a!2804) j!70) mask!2512) (select (arr!48892 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1523157 () Bool)

(declare-fun res!1042207 () Bool)

(assert (=> b!1523157 (=> (not res!1042207) (not e!849234))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1523157 (= res!1042207 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49443 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49443 a!2804))))))

(declare-fun res!1042204 () Bool)

(assert (=> start!129808 (=> (not res!1042204) (not e!849234))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129808 (= res!1042204 (validMask!0 mask!2512))))

(assert (=> start!129808 e!849234))

(assert (=> start!129808 true))

(declare-fun array_inv!37837 (array!101331) Bool)

(assert (=> start!129808 (array_inv!37837 a!2804)))

(declare-fun b!1523158 () Bool)

(declare-fun res!1042209 () Bool)

(assert (=> b!1523158 (=> (not res!1042209) (not e!849234))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1523158 (= res!1042209 (validKeyInArray!0 (select (arr!48892 a!2804) i!961)))))

(declare-fun b!1523159 () Bool)

(declare-fun res!1042206 () Bool)

(assert (=> b!1523159 (=> (not res!1042206) (not e!849234))))

(assert (=> b!1523159 (= res!1042206 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1523160 () Bool)

(declare-fun res!1042199 () Bool)

(assert (=> b!1523160 (=> (not res!1042199) (not e!849233))))

(assert (=> b!1523160 (= res!1042199 (= lt!659833 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48892 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48892 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101332 (store (arr!48892 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49443 a!2804)) mask!2512)))))

(declare-fun b!1523161 () Bool)

(declare-fun res!1042203 () Bool)

(assert (=> b!1523161 (=> (not res!1042203) (not e!849234))))

(assert (=> b!1523161 (= res!1042203 (validKeyInArray!0 (select (arr!48892 a!2804) j!70)))))

(declare-fun b!1523162 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101331 (_ BitVec 32)) SeekEntryResult!13078)

(assert (=> b!1523162 (= e!849235 (= (seekEntry!0 (select (arr!48892 a!2804) j!70) a!2804 mask!2512) (Found!13078 j!70)))))

(declare-fun b!1523163 () Bool)

(declare-fun res!1042202 () Bool)

(assert (=> b!1523163 (=> (not res!1042202) (not e!849234))))

(declare-datatypes ((List!35555 0))(
  ( (Nil!35552) (Cons!35551 (h!36976 (_ BitVec 64)) (t!50256 List!35555)) )
))
(declare-fun arrayNoDuplicates!0 (array!101331 (_ BitVec 32) List!35555) Bool)

(assert (=> b!1523163 (= res!1042202 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35552))))

(declare-fun b!1523164 () Bool)

(declare-fun res!1042205 () Bool)

(assert (=> b!1523164 (=> (not res!1042205) (not e!849233))))

(assert (=> b!1523164 (= res!1042205 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48892 a!2804) j!70) a!2804 mask!2512) lt!659832))))

(assert (= (and start!129808 res!1042204) b!1523154))

(assert (= (and b!1523154 res!1042200) b!1523158))

(assert (= (and b!1523158 res!1042209) b!1523161))

(assert (= (and b!1523161 res!1042203) b!1523159))

(assert (= (and b!1523159 res!1042206) b!1523163))

(assert (= (and b!1523163 res!1042202) b!1523157))

(assert (= (and b!1523157 res!1042207) b!1523156))

(assert (= (and b!1523156 res!1042201) b!1523164))

(assert (= (and b!1523164 res!1042205) b!1523160))

(assert (= (and b!1523160 res!1042199) b!1523155))

(assert (= (and b!1523155 res!1042208) b!1523162))

(declare-fun m!1406307 () Bool)

(assert (=> b!1523156 m!1406307))

(assert (=> b!1523156 m!1406307))

(declare-fun m!1406309 () Bool)

(assert (=> b!1523156 m!1406309))

(assert (=> b!1523156 m!1406309))

(assert (=> b!1523156 m!1406307))

(declare-fun m!1406311 () Bool)

(assert (=> b!1523156 m!1406311))

(assert (=> b!1523162 m!1406307))

(assert (=> b!1523162 m!1406307))

(declare-fun m!1406313 () Bool)

(assert (=> b!1523162 m!1406313))

(declare-fun m!1406315 () Bool)

(assert (=> b!1523155 m!1406315))

(declare-fun m!1406317 () Bool)

(assert (=> b!1523155 m!1406317))

(assert (=> b!1523161 m!1406307))

(assert (=> b!1523161 m!1406307))

(declare-fun m!1406319 () Bool)

(assert (=> b!1523161 m!1406319))

(declare-fun m!1406321 () Bool)

(assert (=> b!1523160 m!1406321))

(declare-fun m!1406323 () Bool)

(assert (=> b!1523160 m!1406323))

(assert (=> b!1523160 m!1406323))

(declare-fun m!1406325 () Bool)

(assert (=> b!1523160 m!1406325))

(assert (=> b!1523160 m!1406325))

(assert (=> b!1523160 m!1406323))

(declare-fun m!1406327 () Bool)

(assert (=> b!1523160 m!1406327))

(declare-fun m!1406329 () Bool)

(assert (=> b!1523163 m!1406329))

(assert (=> b!1523164 m!1406307))

(assert (=> b!1523164 m!1406307))

(declare-fun m!1406331 () Bool)

(assert (=> b!1523164 m!1406331))

(declare-fun m!1406333 () Bool)

(assert (=> start!129808 m!1406333))

(declare-fun m!1406335 () Bool)

(assert (=> start!129808 m!1406335))

(declare-fun m!1406337 () Bool)

(assert (=> b!1523159 m!1406337))

(declare-fun m!1406339 () Bool)

(assert (=> b!1523158 m!1406339))

(assert (=> b!1523158 m!1406339))

(declare-fun m!1406341 () Bool)

(assert (=> b!1523158 m!1406341))

(push 1)

