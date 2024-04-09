; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129610 () Bool)

(assert start!129610)

(declare-fun b!1521021 () Bool)

(declare-fun res!1040385 () Bool)

(declare-fun e!848408 () Bool)

(assert (=> b!1521021 (=> (not res!1040385) (not e!848408))))

(declare-datatypes ((array!101212 0))(
  ( (array!101213 (arr!48834 (Array (_ BitVec 32) (_ BitVec 64))) (size!49385 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101212)

(declare-datatypes ((List!35497 0))(
  ( (Nil!35494) (Cons!35493 (h!36915 (_ BitVec 64)) (t!50198 List!35497)) )
))
(declare-fun arrayNoDuplicates!0 (array!101212 (_ BitVec 32) List!35497) Bool)

(assert (=> b!1521021 (= res!1040385 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35494))))

(declare-fun b!1521022 () Bool)

(declare-fun res!1040381 () Bool)

(assert (=> b!1521022 (=> (not res!1040381) (not e!848408))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1521022 (= res!1040381 (and (= (size!49385 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49385 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49385 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1521023 () Bool)

(assert (=> b!1521023 (= e!848408 false)))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13020 0))(
  ( (MissingZero!13020 (index!54474 (_ BitVec 32))) (Found!13020 (index!54475 (_ BitVec 32))) (Intermediate!13020 (undefined!13832 Bool) (index!54476 (_ BitVec 32)) (x!136179 (_ BitVec 32))) (Undefined!13020) (MissingVacant!13020 (index!54477 (_ BitVec 32))) )
))
(declare-fun lt!659236 () SeekEntryResult!13020)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101212 (_ BitVec 32)) SeekEntryResult!13020)

(assert (=> b!1521023 (= lt!659236 (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48834 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1521024 () Bool)

(declare-fun res!1040387 () Bool)

(assert (=> b!1521024 (=> (not res!1040387) (not e!848408))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1521024 (= res!1040387 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49385 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49385 a!2804))))))

(declare-fun b!1521025 () Bool)

(declare-fun res!1040388 () Bool)

(assert (=> b!1521025 (=> (not res!1040388) (not e!848408))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521025 (= res!1040388 (validKeyInArray!0 (select (arr!48834 a!2804) i!961)))))

(declare-fun b!1521026 () Bool)

(declare-fun res!1040386 () Bool)

(assert (=> b!1521026 (=> (not res!1040386) (not e!848408))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521026 (= res!1040386 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48834 a!2804) j!70) mask!2512) (select (arr!48834 a!2804) j!70) a!2804 mask!2512) (Intermediate!13020 false resIndex!21 resX!21)))))

(declare-fun b!1521028 () Bool)

(declare-fun res!1040383 () Bool)

(assert (=> b!1521028 (=> (not res!1040383) (not e!848408))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101212 (_ BitVec 32)) Bool)

(assert (=> b!1521028 (= res!1040383 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521027 () Bool)

(declare-fun res!1040382 () Bool)

(assert (=> b!1521027 (=> (not res!1040382) (not e!848408))))

(assert (=> b!1521027 (= res!1040382 (validKeyInArray!0 (select (arr!48834 a!2804) j!70)))))

(declare-fun res!1040384 () Bool)

(assert (=> start!129610 (=> (not res!1040384) (not e!848408))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129610 (= res!1040384 (validMask!0 mask!2512))))

(assert (=> start!129610 e!848408))

(assert (=> start!129610 true))

(declare-fun array_inv!37779 (array!101212) Bool)

(assert (=> start!129610 (array_inv!37779 a!2804)))

(assert (= (and start!129610 res!1040384) b!1521022))

(assert (= (and b!1521022 res!1040381) b!1521025))

(assert (= (and b!1521025 res!1040388) b!1521027))

(assert (= (and b!1521027 res!1040382) b!1521028))

(assert (= (and b!1521028 res!1040383) b!1521021))

(assert (= (and b!1521021 res!1040385) b!1521024))

(assert (= (and b!1521024 res!1040387) b!1521026))

(assert (= (and b!1521026 res!1040386) b!1521023))

(declare-fun m!1404187 () Bool)

(assert (=> b!1521027 m!1404187))

(assert (=> b!1521027 m!1404187))

(declare-fun m!1404189 () Bool)

(assert (=> b!1521027 m!1404189))

(declare-fun m!1404191 () Bool)

(assert (=> start!129610 m!1404191))

(declare-fun m!1404193 () Bool)

(assert (=> start!129610 m!1404193))

(declare-fun m!1404195 () Bool)

(assert (=> b!1521025 m!1404195))

(assert (=> b!1521025 m!1404195))

(declare-fun m!1404197 () Bool)

(assert (=> b!1521025 m!1404197))

(declare-fun m!1404199 () Bool)

(assert (=> b!1521028 m!1404199))

(assert (=> b!1521023 m!1404187))

(assert (=> b!1521023 m!1404187))

(declare-fun m!1404201 () Bool)

(assert (=> b!1521023 m!1404201))

(assert (=> b!1521026 m!1404187))

(assert (=> b!1521026 m!1404187))

(declare-fun m!1404203 () Bool)

(assert (=> b!1521026 m!1404203))

(assert (=> b!1521026 m!1404203))

(assert (=> b!1521026 m!1404187))

(declare-fun m!1404205 () Bool)

(assert (=> b!1521026 m!1404205))

(declare-fun m!1404207 () Bool)

(assert (=> b!1521021 m!1404207))

(push 1)

(assert (not b!1521023))

(assert (not b!1521021))

(assert (not b!1521027))

(assert (not b!1521025))

(assert (not b!1521026))

(assert (not b!1521028))

(assert (not start!129610))

(check-sat)

