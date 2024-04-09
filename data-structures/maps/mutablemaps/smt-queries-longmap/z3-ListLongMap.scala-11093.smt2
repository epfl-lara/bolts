; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129614 () Bool)

(assert start!129614)

(declare-fun res!1040432 () Bool)

(declare-fun e!848420 () Bool)

(assert (=> start!129614 (=> (not res!1040432) (not e!848420))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129614 (= res!1040432 (validMask!0 mask!2512))))

(assert (=> start!129614 e!848420))

(assert (=> start!129614 true))

(declare-datatypes ((array!101216 0))(
  ( (array!101217 (arr!48836 (Array (_ BitVec 32) (_ BitVec 64))) (size!49387 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101216)

(declare-fun array_inv!37781 (array!101216) Bool)

(assert (=> start!129614 (array_inv!37781 a!2804)))

(declare-fun b!1521069 () Bool)

(assert (=> b!1521069 (= e!848420 false)))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13022 0))(
  ( (MissingZero!13022 (index!54482 (_ BitVec 32))) (Found!13022 (index!54483 (_ BitVec 32))) (Intermediate!13022 (undefined!13834 Bool) (index!54484 (_ BitVec 32)) (x!136189 (_ BitVec 32))) (Undefined!13022) (MissingVacant!13022 (index!54485 (_ BitVec 32))) )
))
(declare-fun lt!659242 () SeekEntryResult!13022)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101216 (_ BitVec 32)) SeekEntryResult!13022)

(assert (=> b!1521069 (= lt!659242 (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48836 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1521070 () Bool)

(declare-fun res!1040433 () Bool)

(assert (=> b!1521070 (=> (not res!1040433) (not e!848420))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101216 (_ BitVec 32)) Bool)

(assert (=> b!1521070 (= res!1040433 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521071 () Bool)

(declare-fun res!1040429 () Bool)

(assert (=> b!1521071 (=> (not res!1040429) (not e!848420))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521071 (= res!1040429 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48836 a!2804) j!70) mask!2512) (select (arr!48836 a!2804) j!70) a!2804 mask!2512) (Intermediate!13022 false resIndex!21 resX!21)))))

(declare-fun b!1521072 () Bool)

(declare-fun res!1040435 () Bool)

(assert (=> b!1521072 (=> (not res!1040435) (not e!848420))))

(assert (=> b!1521072 (= res!1040435 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49387 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49387 a!2804))))))

(declare-fun b!1521073 () Bool)

(declare-fun res!1040430 () Bool)

(assert (=> b!1521073 (=> (not res!1040430) (not e!848420))))

(declare-datatypes ((List!35499 0))(
  ( (Nil!35496) (Cons!35495 (h!36917 (_ BitVec 64)) (t!50200 List!35499)) )
))
(declare-fun arrayNoDuplicates!0 (array!101216 (_ BitVec 32) List!35499) Bool)

(assert (=> b!1521073 (= res!1040430 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35496))))

(declare-fun b!1521074 () Bool)

(declare-fun res!1040434 () Bool)

(assert (=> b!1521074 (=> (not res!1040434) (not e!848420))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1521074 (= res!1040434 (and (= (size!49387 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49387 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49387 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1521075 () Bool)

(declare-fun res!1040431 () Bool)

(assert (=> b!1521075 (=> (not res!1040431) (not e!848420))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521075 (= res!1040431 (validKeyInArray!0 (select (arr!48836 a!2804) i!961)))))

(declare-fun b!1521076 () Bool)

(declare-fun res!1040436 () Bool)

(assert (=> b!1521076 (=> (not res!1040436) (not e!848420))))

(assert (=> b!1521076 (= res!1040436 (validKeyInArray!0 (select (arr!48836 a!2804) j!70)))))

(assert (= (and start!129614 res!1040432) b!1521074))

(assert (= (and b!1521074 res!1040434) b!1521075))

(assert (= (and b!1521075 res!1040431) b!1521076))

(assert (= (and b!1521076 res!1040436) b!1521070))

(assert (= (and b!1521070 res!1040433) b!1521073))

(assert (= (and b!1521073 res!1040430) b!1521072))

(assert (= (and b!1521072 res!1040435) b!1521071))

(assert (= (and b!1521071 res!1040429) b!1521069))

(declare-fun m!1404231 () Bool)

(assert (=> b!1521069 m!1404231))

(assert (=> b!1521069 m!1404231))

(declare-fun m!1404233 () Bool)

(assert (=> b!1521069 m!1404233))

(declare-fun m!1404235 () Bool)

(assert (=> b!1521070 m!1404235))

(declare-fun m!1404237 () Bool)

(assert (=> b!1521073 m!1404237))

(declare-fun m!1404239 () Bool)

(assert (=> start!129614 m!1404239))

(declare-fun m!1404241 () Bool)

(assert (=> start!129614 m!1404241))

(assert (=> b!1521071 m!1404231))

(assert (=> b!1521071 m!1404231))

(declare-fun m!1404243 () Bool)

(assert (=> b!1521071 m!1404243))

(assert (=> b!1521071 m!1404243))

(assert (=> b!1521071 m!1404231))

(declare-fun m!1404245 () Bool)

(assert (=> b!1521071 m!1404245))

(declare-fun m!1404247 () Bool)

(assert (=> b!1521075 m!1404247))

(assert (=> b!1521075 m!1404247))

(declare-fun m!1404249 () Bool)

(assert (=> b!1521075 m!1404249))

(assert (=> b!1521076 m!1404231))

(assert (=> b!1521076 m!1404231))

(declare-fun m!1404251 () Bool)

(assert (=> b!1521076 m!1404251))

(check-sat (not b!1521073) (not b!1521071) (not start!129614) (not b!1521076) (not b!1521070) (not b!1521069) (not b!1521075))
