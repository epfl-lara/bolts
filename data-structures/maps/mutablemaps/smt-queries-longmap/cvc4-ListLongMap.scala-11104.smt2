; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129682 () Bool)

(assert start!129682)

(declare-fun b!1521974 () Bool)

(declare-fun res!1041339 () Bool)

(declare-fun e!848695 () Bool)

(assert (=> b!1521974 (=> (not res!1041339) (not e!848695))))

(declare-datatypes ((array!101284 0))(
  ( (array!101285 (arr!48870 (Array (_ BitVec 32) (_ BitVec 64))) (size!49421 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101284)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101284 (_ BitVec 32)) Bool)

(assert (=> b!1521974 (= res!1041339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521975 () Bool)

(declare-fun res!1041340 () Bool)

(assert (=> b!1521975 (=> (not res!1041340) (not e!848695))))

(declare-datatypes ((List!35533 0))(
  ( (Nil!35530) (Cons!35529 (h!36951 (_ BitVec 64)) (t!50234 List!35533)) )
))
(declare-fun arrayNoDuplicates!0 (array!101284 (_ BitVec 32) List!35533) Bool)

(assert (=> b!1521975 (= res!1041340 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35530))))

(declare-fun res!1041336 () Bool)

(assert (=> start!129682 (=> (not res!1041336) (not e!848695))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129682 (= res!1041336 (validMask!0 mask!2512))))

(assert (=> start!129682 e!848695))

(assert (=> start!129682 true))

(declare-fun array_inv!37815 (array!101284) Bool)

(assert (=> start!129682 (array_inv!37815 a!2804)))

(declare-fun b!1521976 () Bool)

(declare-fun res!1041335 () Bool)

(assert (=> b!1521976 (=> (not res!1041335) (not e!848695))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1521976 (= res!1041335 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49421 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49421 a!2804))))))

(declare-fun b!1521977 () Bool)

(declare-fun res!1041341 () Bool)

(assert (=> b!1521977 (=> (not res!1041341) (not e!848695))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521977 (= res!1041341 (validKeyInArray!0 (select (arr!48870 a!2804) i!961)))))

(declare-fun b!1521978 () Bool)

(declare-fun e!848694 () Bool)

(assert (=> b!1521978 (= e!848695 e!848694)))

(declare-fun res!1041342 () Bool)

(assert (=> b!1521978 (=> (not res!1041342) (not e!848694))))

(declare-datatypes ((SeekEntryResult!13056 0))(
  ( (MissingZero!13056 (index!54618 (_ BitVec 32))) (Found!13056 (index!54619 (_ BitVec 32))) (Intermediate!13056 (undefined!13868 Bool) (index!54620 (_ BitVec 32)) (x!136311 (_ BitVec 32))) (Undefined!13056) (MissingVacant!13056 (index!54621 (_ BitVec 32))) )
))
(declare-fun lt!659415 () SeekEntryResult!13056)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101284 (_ BitVec 32)) SeekEntryResult!13056)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521978 (= res!1041342 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48870 a!2804) j!70) mask!2512) (select (arr!48870 a!2804) j!70) a!2804 mask!2512) lt!659415))))

(assert (=> b!1521978 (= lt!659415 (Intermediate!13056 false resIndex!21 resX!21))))

(declare-fun b!1521979 () Bool)

(declare-fun res!1041337 () Bool)

(assert (=> b!1521979 (=> (not res!1041337) (not e!848695))))

(assert (=> b!1521979 (= res!1041337 (and (= (size!49421 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49421 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49421 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1521980 () Bool)

(declare-fun res!1041338 () Bool)

(assert (=> b!1521980 (=> (not res!1041338) (not e!848695))))

(assert (=> b!1521980 (= res!1041338 (validKeyInArray!0 (select (arr!48870 a!2804) j!70)))))

(declare-fun b!1521981 () Bool)

(declare-fun res!1041334 () Bool)

(assert (=> b!1521981 (=> (not res!1041334) (not e!848694))))

(assert (=> b!1521981 (= res!1041334 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48870 a!2804) j!70) a!2804 mask!2512) lt!659415))))

(declare-fun b!1521982 () Bool)

(assert (=> b!1521982 (= e!848694 false)))

(declare-fun lt!659416 () SeekEntryResult!13056)

(assert (=> b!1521982 (= lt!659416 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48870 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48870 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101285 (store (arr!48870 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49421 a!2804)) mask!2512))))

(assert (= (and start!129682 res!1041336) b!1521979))

(assert (= (and b!1521979 res!1041337) b!1521977))

(assert (= (and b!1521977 res!1041341) b!1521980))

(assert (= (and b!1521980 res!1041338) b!1521974))

(assert (= (and b!1521974 res!1041339) b!1521975))

(assert (= (and b!1521975 res!1041340) b!1521976))

(assert (= (and b!1521976 res!1041335) b!1521978))

(assert (= (and b!1521978 res!1041342) b!1521981))

(assert (= (and b!1521981 res!1041334) b!1521982))

(declare-fun m!1405151 () Bool)

(assert (=> start!129682 m!1405151))

(declare-fun m!1405153 () Bool)

(assert (=> start!129682 m!1405153))

(declare-fun m!1405155 () Bool)

(assert (=> b!1521975 m!1405155))

(declare-fun m!1405157 () Bool)

(assert (=> b!1521982 m!1405157))

(declare-fun m!1405159 () Bool)

(assert (=> b!1521982 m!1405159))

(assert (=> b!1521982 m!1405159))

(declare-fun m!1405161 () Bool)

(assert (=> b!1521982 m!1405161))

(assert (=> b!1521982 m!1405161))

(assert (=> b!1521982 m!1405159))

(declare-fun m!1405163 () Bool)

(assert (=> b!1521982 m!1405163))

(declare-fun m!1405165 () Bool)

(assert (=> b!1521981 m!1405165))

(assert (=> b!1521981 m!1405165))

(declare-fun m!1405167 () Bool)

(assert (=> b!1521981 m!1405167))

(declare-fun m!1405169 () Bool)

(assert (=> b!1521977 m!1405169))

(assert (=> b!1521977 m!1405169))

(declare-fun m!1405171 () Bool)

(assert (=> b!1521977 m!1405171))

(assert (=> b!1521980 m!1405165))

(assert (=> b!1521980 m!1405165))

(declare-fun m!1405173 () Bool)

(assert (=> b!1521980 m!1405173))

(assert (=> b!1521978 m!1405165))

(assert (=> b!1521978 m!1405165))

(declare-fun m!1405175 () Bool)

(assert (=> b!1521978 m!1405175))

(assert (=> b!1521978 m!1405175))

(assert (=> b!1521978 m!1405165))

(declare-fun m!1405177 () Bool)

(assert (=> b!1521978 m!1405177))

(declare-fun m!1405179 () Bool)

(assert (=> b!1521974 m!1405179))

(push 1)

(assert (not b!1521977))

(assert (not b!1521980))

(assert (not b!1521974))

(assert (not start!129682))

(assert (not b!1521981))

(assert (not b!1521978))

