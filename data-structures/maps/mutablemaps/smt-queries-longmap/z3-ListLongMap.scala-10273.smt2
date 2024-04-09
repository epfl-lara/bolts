; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120840 () Bool)

(assert start!120840)

(declare-fun b!1405471 () Bool)

(declare-fun res!943803 () Bool)

(declare-fun e!795590 () Bool)

(assert (=> b!1405471 (=> (not res!943803) (not e!795590))))

(declare-datatypes ((array!96065 0))(
  ( (array!96066 (arr!46376 (Array (_ BitVec 32) (_ BitVec 64))) (size!46927 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96065)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405471 (= res!943803 (validKeyInArray!0 (select (arr!46376 a!2901) i!1037)))))

(declare-fun b!1405472 () Bool)

(declare-fun res!943799 () Bool)

(assert (=> b!1405472 (=> (not res!943799) (not e!795590))))

(declare-datatypes ((List!33075 0))(
  ( (Nil!33072) (Cons!33071 (h!34325 (_ BitVec 64)) (t!47776 List!33075)) )
))
(declare-fun arrayNoDuplicates!0 (array!96065 (_ BitVec 32) List!33075) Bool)

(assert (=> b!1405472 (= res!943799 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33072))))

(declare-fun res!943797 () Bool)

(assert (=> start!120840 (=> (not res!943797) (not e!795590))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120840 (= res!943797 (validMask!0 mask!2840))))

(assert (=> start!120840 e!795590))

(assert (=> start!120840 true))

(declare-fun array_inv!35321 (array!96065) Bool)

(assert (=> start!120840 (array_inv!35321 a!2901)))

(declare-fun b!1405473 () Bool)

(assert (=> b!1405473 (= e!795590 (not true))))

(declare-fun e!795588 () Bool)

(assert (=> b!1405473 e!795588))

(declare-fun res!943801 () Bool)

(assert (=> b!1405473 (=> (not res!943801) (not e!795588))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96065 (_ BitVec 32)) Bool)

(assert (=> b!1405473 (= res!943801 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47342 0))(
  ( (Unit!47343) )
))
(declare-fun lt!619000 () Unit!47342)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96065 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47342)

(assert (=> b!1405473 (= lt!619000 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10709 0))(
  ( (MissingZero!10709 (index!45212 (_ BitVec 32))) (Found!10709 (index!45213 (_ BitVec 32))) (Intermediate!10709 (undefined!11521 Bool) (index!45214 (_ BitVec 32)) (x!126831 (_ BitVec 32))) (Undefined!10709) (MissingVacant!10709 (index!45215 (_ BitVec 32))) )
))
(declare-fun lt!618999 () SeekEntryResult!10709)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96065 (_ BitVec 32)) SeekEntryResult!10709)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405473 (= lt!618999 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46376 a!2901) j!112) mask!2840) (select (arr!46376 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405474 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96065 (_ BitVec 32)) SeekEntryResult!10709)

(assert (=> b!1405474 (= e!795588 (= (seekEntryOrOpen!0 (select (arr!46376 a!2901) j!112) a!2901 mask!2840) (Found!10709 j!112)))))

(declare-fun b!1405475 () Bool)

(declare-fun res!943800 () Bool)

(assert (=> b!1405475 (=> (not res!943800) (not e!795590))))

(assert (=> b!1405475 (= res!943800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405476 () Bool)

(declare-fun res!943802 () Bool)

(assert (=> b!1405476 (=> (not res!943802) (not e!795590))))

(assert (=> b!1405476 (= res!943802 (and (= (size!46927 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46927 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46927 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405477 () Bool)

(declare-fun res!943798 () Bool)

(assert (=> b!1405477 (=> (not res!943798) (not e!795590))))

(assert (=> b!1405477 (= res!943798 (validKeyInArray!0 (select (arr!46376 a!2901) j!112)))))

(assert (= (and start!120840 res!943797) b!1405476))

(assert (= (and b!1405476 res!943802) b!1405471))

(assert (= (and b!1405471 res!943803) b!1405477))

(assert (= (and b!1405477 res!943798) b!1405475))

(assert (= (and b!1405475 res!943800) b!1405472))

(assert (= (and b!1405472 res!943799) b!1405473))

(assert (= (and b!1405473 res!943801) b!1405474))

(declare-fun m!1294339 () Bool)

(assert (=> b!1405475 m!1294339))

(declare-fun m!1294341 () Bool)

(assert (=> b!1405471 m!1294341))

(assert (=> b!1405471 m!1294341))

(declare-fun m!1294343 () Bool)

(assert (=> b!1405471 m!1294343))

(declare-fun m!1294345 () Bool)

(assert (=> b!1405473 m!1294345))

(declare-fun m!1294347 () Bool)

(assert (=> b!1405473 m!1294347))

(assert (=> b!1405473 m!1294345))

(declare-fun m!1294349 () Bool)

(assert (=> b!1405473 m!1294349))

(assert (=> b!1405473 m!1294347))

(assert (=> b!1405473 m!1294345))

(declare-fun m!1294351 () Bool)

(assert (=> b!1405473 m!1294351))

(declare-fun m!1294353 () Bool)

(assert (=> b!1405473 m!1294353))

(assert (=> b!1405477 m!1294345))

(assert (=> b!1405477 m!1294345))

(declare-fun m!1294355 () Bool)

(assert (=> b!1405477 m!1294355))

(declare-fun m!1294357 () Bool)

(assert (=> start!120840 m!1294357))

(declare-fun m!1294359 () Bool)

(assert (=> start!120840 m!1294359))

(declare-fun m!1294361 () Bool)

(assert (=> b!1405472 m!1294361))

(assert (=> b!1405474 m!1294345))

(assert (=> b!1405474 m!1294345))

(declare-fun m!1294363 () Bool)

(assert (=> b!1405474 m!1294363))

(check-sat (not b!1405477) (not b!1405472) (not b!1405474) (not start!120840) (not b!1405471) (not b!1405473) (not b!1405475))
