; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120846 () Bool)

(assert start!120846)

(declare-fun b!1405535 () Bool)

(declare-fun e!795615 () Bool)

(assert (=> b!1405535 (= e!795615 (not true))))

(declare-fun e!795616 () Bool)

(assert (=> b!1405535 e!795616))

(declare-fun res!943866 () Bool)

(assert (=> b!1405535 (=> (not res!943866) (not e!795616))))

(declare-datatypes ((array!96071 0))(
  ( (array!96072 (arr!46379 (Array (_ BitVec 32) (_ BitVec 64))) (size!46930 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96071)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96071 (_ BitVec 32)) Bool)

(assert (=> b!1405535 (= res!943866 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47348 0))(
  ( (Unit!47349) )
))
(declare-fun lt!619018 () Unit!47348)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96071 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47348)

(assert (=> b!1405535 (= lt!619018 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10712 0))(
  ( (MissingZero!10712 (index!45224 (_ BitVec 32))) (Found!10712 (index!45225 (_ BitVec 32))) (Intermediate!10712 (undefined!11524 Bool) (index!45226 (_ BitVec 32)) (x!126842 (_ BitVec 32))) (Undefined!10712) (MissingVacant!10712 (index!45227 (_ BitVec 32))) )
))
(declare-fun lt!619017 () SeekEntryResult!10712)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96071 (_ BitVec 32)) SeekEntryResult!10712)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405535 (= lt!619017 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46379 a!2901) j!112) mask!2840) (select (arr!46379 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405536 () Bool)

(declare-fun res!943862 () Bool)

(assert (=> b!1405536 (=> (not res!943862) (not e!795615))))

(declare-datatypes ((List!33078 0))(
  ( (Nil!33075) (Cons!33074 (h!34328 (_ BitVec 64)) (t!47779 List!33078)) )
))
(declare-fun arrayNoDuplicates!0 (array!96071 (_ BitVec 32) List!33078) Bool)

(assert (=> b!1405536 (= res!943862 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33075))))

(declare-fun b!1405537 () Bool)

(declare-fun res!943865 () Bool)

(assert (=> b!1405537 (=> (not res!943865) (not e!795615))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1405537 (= res!943865 (and (= (size!46930 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46930 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46930 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405538 () Bool)

(declare-fun res!943864 () Bool)

(assert (=> b!1405538 (=> (not res!943864) (not e!795615))))

(assert (=> b!1405538 (= res!943864 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405539 () Bool)

(declare-fun res!943861 () Bool)

(assert (=> b!1405539 (=> (not res!943861) (not e!795615))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405539 (= res!943861 (validKeyInArray!0 (select (arr!46379 a!2901) j!112)))))

(declare-fun b!1405540 () Bool)

(declare-fun res!943863 () Bool)

(assert (=> b!1405540 (=> (not res!943863) (not e!795615))))

(assert (=> b!1405540 (= res!943863 (validKeyInArray!0 (select (arr!46379 a!2901) i!1037)))))

(declare-fun b!1405534 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96071 (_ BitVec 32)) SeekEntryResult!10712)

(assert (=> b!1405534 (= e!795616 (= (seekEntryOrOpen!0 (select (arr!46379 a!2901) j!112) a!2901 mask!2840) (Found!10712 j!112)))))

(declare-fun res!943860 () Bool)

(assert (=> start!120846 (=> (not res!943860) (not e!795615))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120846 (= res!943860 (validMask!0 mask!2840))))

(assert (=> start!120846 e!795615))

(assert (=> start!120846 true))

(declare-fun array_inv!35324 (array!96071) Bool)

(assert (=> start!120846 (array_inv!35324 a!2901)))

(assert (= (and start!120846 res!943860) b!1405537))

(assert (= (and b!1405537 res!943865) b!1405540))

(assert (= (and b!1405540 res!943863) b!1405539))

(assert (= (and b!1405539 res!943861) b!1405538))

(assert (= (and b!1405538 res!943864) b!1405536))

(assert (= (and b!1405536 res!943862) b!1405535))

(assert (= (and b!1405535 res!943866) b!1405534))

(declare-fun m!1294417 () Bool)

(assert (=> b!1405535 m!1294417))

(declare-fun m!1294419 () Bool)

(assert (=> b!1405535 m!1294419))

(assert (=> b!1405535 m!1294417))

(declare-fun m!1294421 () Bool)

(assert (=> b!1405535 m!1294421))

(assert (=> b!1405535 m!1294419))

(assert (=> b!1405535 m!1294417))

(declare-fun m!1294423 () Bool)

(assert (=> b!1405535 m!1294423))

(declare-fun m!1294425 () Bool)

(assert (=> b!1405535 m!1294425))

(declare-fun m!1294427 () Bool)

(assert (=> b!1405538 m!1294427))

(declare-fun m!1294429 () Bool)

(assert (=> start!120846 m!1294429))

(declare-fun m!1294431 () Bool)

(assert (=> start!120846 m!1294431))

(declare-fun m!1294433 () Bool)

(assert (=> b!1405540 m!1294433))

(assert (=> b!1405540 m!1294433))

(declare-fun m!1294435 () Bool)

(assert (=> b!1405540 m!1294435))

(assert (=> b!1405534 m!1294417))

(assert (=> b!1405534 m!1294417))

(declare-fun m!1294437 () Bool)

(assert (=> b!1405534 m!1294437))

(declare-fun m!1294439 () Bool)

(assert (=> b!1405536 m!1294439))

(assert (=> b!1405539 m!1294417))

(assert (=> b!1405539 m!1294417))

(declare-fun m!1294441 () Bool)

(assert (=> b!1405539 m!1294441))

(check-sat (not b!1405534) (not start!120846) (not b!1405536) (not b!1405540) (not b!1405538) (not b!1405539) (not b!1405535))
