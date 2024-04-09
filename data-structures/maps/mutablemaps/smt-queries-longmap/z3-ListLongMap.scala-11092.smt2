; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129608 () Bool)

(assert start!129608)

(declare-fun res!1040363 () Bool)

(declare-fun e!848402 () Bool)

(assert (=> start!129608 (=> (not res!1040363) (not e!848402))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129608 (= res!1040363 (validMask!0 mask!2512))))

(assert (=> start!129608 e!848402))

(assert (=> start!129608 true))

(declare-datatypes ((array!101210 0))(
  ( (array!101211 (arr!48833 (Array (_ BitVec 32) (_ BitVec 64))) (size!49384 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101210)

(declare-fun array_inv!37778 (array!101210) Bool)

(assert (=> start!129608 (array_inv!37778 a!2804)))

(declare-fun b!1520997 () Bool)

(declare-fun res!1040357 () Bool)

(assert (=> b!1520997 (=> (not res!1040357) (not e!848402))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1520997 (= res!1040357 (validKeyInArray!0 (select (arr!48833 a!2804) i!961)))))

(declare-fun b!1520998 () Bool)

(assert (=> b!1520998 (= e!848402 false)))

(declare-datatypes ((SeekEntryResult!13019 0))(
  ( (MissingZero!13019 (index!54470 (_ BitVec 32))) (Found!13019 (index!54471 (_ BitVec 32))) (Intermediate!13019 (undefined!13831 Bool) (index!54472 (_ BitVec 32)) (x!136178 (_ BitVec 32))) (Undefined!13019) (MissingVacant!13019 (index!54473 (_ BitVec 32))) )
))
(declare-fun lt!659233 () SeekEntryResult!13019)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101210 (_ BitVec 32)) SeekEntryResult!13019)

(assert (=> b!1520998 (= lt!659233 (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48833 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1520999 () Bool)

(declare-fun res!1040361 () Bool)

(assert (=> b!1520999 (=> (not res!1040361) (not e!848402))))

(assert (=> b!1520999 (= res!1040361 (and (= (size!49384 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49384 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49384 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1521000 () Bool)

(declare-fun res!1040362 () Bool)

(assert (=> b!1521000 (=> (not res!1040362) (not e!848402))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521000 (= res!1040362 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48833 a!2804) j!70) mask!2512) (select (arr!48833 a!2804) j!70) a!2804 mask!2512) (Intermediate!13019 false resIndex!21 resX!21)))))

(declare-fun b!1521001 () Bool)

(declare-fun res!1040358 () Bool)

(assert (=> b!1521001 (=> (not res!1040358) (not e!848402))))

(assert (=> b!1521001 (= res!1040358 (validKeyInArray!0 (select (arr!48833 a!2804) j!70)))))

(declare-fun b!1521002 () Bool)

(declare-fun res!1040360 () Bool)

(assert (=> b!1521002 (=> (not res!1040360) (not e!848402))))

(assert (=> b!1521002 (= res!1040360 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49384 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49384 a!2804))))))

(declare-fun b!1521003 () Bool)

(declare-fun res!1040359 () Bool)

(assert (=> b!1521003 (=> (not res!1040359) (not e!848402))))

(declare-datatypes ((List!35496 0))(
  ( (Nil!35493) (Cons!35492 (h!36914 (_ BitVec 64)) (t!50197 List!35496)) )
))
(declare-fun arrayNoDuplicates!0 (array!101210 (_ BitVec 32) List!35496) Bool)

(assert (=> b!1521003 (= res!1040359 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35493))))

(declare-fun b!1521004 () Bool)

(declare-fun res!1040364 () Bool)

(assert (=> b!1521004 (=> (not res!1040364) (not e!848402))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101210 (_ BitVec 32)) Bool)

(assert (=> b!1521004 (= res!1040364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!129608 res!1040363) b!1520999))

(assert (= (and b!1520999 res!1040361) b!1520997))

(assert (= (and b!1520997 res!1040357) b!1521001))

(assert (= (and b!1521001 res!1040358) b!1521004))

(assert (= (and b!1521004 res!1040364) b!1521003))

(assert (= (and b!1521003 res!1040359) b!1521002))

(assert (= (and b!1521002 res!1040360) b!1521000))

(assert (= (and b!1521000 res!1040362) b!1520998))

(declare-fun m!1404165 () Bool)

(assert (=> b!1520998 m!1404165))

(assert (=> b!1520998 m!1404165))

(declare-fun m!1404167 () Bool)

(assert (=> b!1520998 m!1404167))

(declare-fun m!1404169 () Bool)

(assert (=> b!1520997 m!1404169))

(assert (=> b!1520997 m!1404169))

(declare-fun m!1404171 () Bool)

(assert (=> b!1520997 m!1404171))

(declare-fun m!1404173 () Bool)

(assert (=> start!129608 m!1404173))

(declare-fun m!1404175 () Bool)

(assert (=> start!129608 m!1404175))

(assert (=> b!1521000 m!1404165))

(assert (=> b!1521000 m!1404165))

(declare-fun m!1404177 () Bool)

(assert (=> b!1521000 m!1404177))

(assert (=> b!1521000 m!1404177))

(assert (=> b!1521000 m!1404165))

(declare-fun m!1404179 () Bool)

(assert (=> b!1521000 m!1404179))

(assert (=> b!1521001 m!1404165))

(assert (=> b!1521001 m!1404165))

(declare-fun m!1404181 () Bool)

(assert (=> b!1521001 m!1404181))

(declare-fun m!1404183 () Bool)

(assert (=> b!1521004 m!1404183))

(declare-fun m!1404185 () Bool)

(assert (=> b!1521003 m!1404185))

(check-sat (not b!1521001) (not start!129608) (not b!1520997) (not b!1520998) (not b!1521004) (not b!1521003) (not b!1521000))
