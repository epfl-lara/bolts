; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123600 () Bool)

(assert start!123600)

(declare-fun b!1432527 () Bool)

(declare-fun e!808656 () Bool)

(declare-fun e!808661 () Bool)

(assert (=> b!1432527 (= e!808656 e!808661)))

(declare-fun res!966502 () Bool)

(assert (=> b!1432527 (=> (not res!966502) (not e!808661))))

(declare-datatypes ((array!97490 0))(
  ( (array!97491 (arr!47048 (Array (_ BitVec 32) (_ BitVec 64))) (size!47599 (_ BitVec 32))) )
))
(declare-fun lt!630606 () array!97490)

(declare-datatypes ((SeekEntryResult!11349 0))(
  ( (MissingZero!11349 (index!47787 (_ BitVec 32))) (Found!11349 (index!47788 (_ BitVec 32))) (Intermediate!11349 (undefined!12161 Bool) (index!47789 (_ BitVec 32)) (x!129434 (_ BitVec 32))) (Undefined!11349) (MissingVacant!11349 (index!47790 (_ BitVec 32))) )
))
(declare-fun lt!630608 () SeekEntryResult!11349)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun lt!630607 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97490 (_ BitVec 32)) SeekEntryResult!11349)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432527 (= res!966502 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630607 mask!2608) lt!630607 lt!630606 mask!2608) lt!630608))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1432527 (= lt!630608 (Intermediate!11349 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun a!2831 () array!97490)

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1432527 (= lt!630607 (select (store (arr!47048 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1432527 (= lt!630606 (array!97491 (store (arr!47048 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47599 a!2831)))))

(declare-fun b!1432528 () Bool)

(declare-fun e!808660 () Bool)

(assert (=> b!1432528 (= e!808660 e!808656)))

(declare-fun res!966501 () Bool)

(assert (=> b!1432528 (=> (not res!966501) (not e!808656))))

(declare-fun lt!630605 () SeekEntryResult!11349)

(assert (=> b!1432528 (= res!966501 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47048 a!2831) j!81) mask!2608) (select (arr!47048 a!2831) j!81) a!2831 mask!2608) lt!630605))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1432528 (= lt!630605 (Intermediate!11349 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1432529 () Bool)

(declare-fun res!966513 () Bool)

(assert (=> b!1432529 (=> (not res!966513) (not e!808660))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1432529 (= res!966513 (validKeyInArray!0 (select (arr!47048 a!2831) j!81)))))

(declare-fun e!808659 () Bool)

(declare-fun b!1432530 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97490 (_ BitVec 32)) SeekEntryResult!11349)

(assert (=> b!1432530 (= e!808659 (= (seekEntryOrOpen!0 (select (arr!47048 a!2831) j!81) a!2831 mask!2608) (Found!11349 j!81)))))

(declare-fun b!1432531 () Bool)

(declare-fun res!966506 () Bool)

(assert (=> b!1432531 (=> (not res!966506) (not e!808660))))

(assert (=> b!1432531 (= res!966506 (and (= (size!47599 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47599 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47599 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1432532 () Bool)

(declare-fun res!966503 () Bool)

(assert (=> b!1432532 (=> (not res!966503) (not e!808661))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1432532 (= res!966503 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47048 a!2831) j!81) a!2831 mask!2608) lt!630605))))

(declare-fun b!1432533 () Bool)

(declare-fun res!966508 () Bool)

(assert (=> b!1432533 (=> (not res!966508) (not e!808661))))

(assert (=> b!1432533 (= res!966508 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1432534 () Bool)

(declare-fun res!966505 () Bool)

(assert (=> b!1432534 (=> (not res!966505) (not e!808660))))

(assert (=> b!1432534 (= res!966505 (validKeyInArray!0 (select (arr!47048 a!2831) i!982)))))

(declare-fun b!1432535 () Bool)

(declare-fun res!966509 () Bool)

(assert (=> b!1432535 (=> (not res!966509) (not e!808660))))

(declare-datatypes ((List!33738 0))(
  ( (Nil!33735) (Cons!33734 (h!35057 (_ BitVec 64)) (t!48439 List!33738)) )
))
(declare-fun arrayNoDuplicates!0 (array!97490 (_ BitVec 32) List!33738) Bool)

(assert (=> b!1432535 (= res!966509 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33735))))

(declare-fun b!1432536 () Bool)

(declare-fun res!966512 () Bool)

(assert (=> b!1432536 (=> (not res!966512) (not e!808660))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97490 (_ BitVec 32)) Bool)

(assert (=> b!1432536 (= res!966512 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun res!966504 () Bool)

(assert (=> start!123600 (=> (not res!966504) (not e!808660))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123600 (= res!966504 (validMask!0 mask!2608))))

(assert (=> start!123600 e!808660))

(assert (=> start!123600 true))

(declare-fun array_inv!35993 (array!97490) Bool)

(assert (=> start!123600 (array_inv!35993 a!2831)))

(declare-fun b!1432537 () Bool)

(declare-fun res!966510 () Bool)

(assert (=> b!1432537 (=> (not res!966510) (not e!808661))))

(assert (=> b!1432537 (= res!966510 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630607 lt!630606 mask!2608) lt!630608))))

(declare-fun b!1432538 () Bool)

(declare-fun e!808657 () Bool)

(assert (=> b!1432538 (= e!808661 (not e!808657))))

(declare-fun res!966500 () Bool)

(assert (=> b!1432538 (=> res!966500 e!808657)))

(assert (=> b!1432538 (= res!966500 (or (= (select (arr!47048 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47048 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47048 a!2831) index!585) (select (arr!47048 a!2831) j!81)) (= (select (store (arr!47048 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1432538 e!808659))

(declare-fun res!966511 () Bool)

(assert (=> b!1432538 (=> (not res!966511) (not e!808659))))

(assert (=> b!1432538 (= res!966511 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48392 0))(
  ( (Unit!48393) )
))
(declare-fun lt!630609 () Unit!48392)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97490 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48392)

(assert (=> b!1432538 (= lt!630609 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1432539 () Bool)

(declare-fun res!966507 () Bool)

(assert (=> b!1432539 (=> (not res!966507) (not e!808660))))

(assert (=> b!1432539 (= res!966507 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47599 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47599 a!2831))))))

(declare-fun b!1432540 () Bool)

(assert (=> b!1432540 (= e!808657 true)))

(declare-fun lt!630610 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432540 (= lt!630610 (nextIndex!0 index!585 x!605 mask!2608))))

(assert (= (and start!123600 res!966504) b!1432531))

(assert (= (and b!1432531 res!966506) b!1432534))

(assert (= (and b!1432534 res!966505) b!1432529))

(assert (= (and b!1432529 res!966513) b!1432536))

(assert (= (and b!1432536 res!966512) b!1432535))

(assert (= (and b!1432535 res!966509) b!1432539))

(assert (= (and b!1432539 res!966507) b!1432528))

(assert (= (and b!1432528 res!966501) b!1432527))

(assert (= (and b!1432527 res!966502) b!1432532))

(assert (= (and b!1432532 res!966503) b!1432537))

(assert (= (and b!1432537 res!966510) b!1432533))

(assert (= (and b!1432533 res!966508) b!1432538))

(assert (= (and b!1432538 res!966511) b!1432530))

(assert (= (and b!1432538 (not res!966500)) b!1432540))

(declare-fun m!1322401 () Bool)

(assert (=> start!123600 m!1322401))

(declare-fun m!1322403 () Bool)

(assert (=> start!123600 m!1322403))

(declare-fun m!1322405 () Bool)

(assert (=> b!1432540 m!1322405))

(declare-fun m!1322407 () Bool)

(assert (=> b!1432535 m!1322407))

(declare-fun m!1322409 () Bool)

(assert (=> b!1432527 m!1322409))

(assert (=> b!1432527 m!1322409))

(declare-fun m!1322411 () Bool)

(assert (=> b!1432527 m!1322411))

(declare-fun m!1322413 () Bool)

(assert (=> b!1432527 m!1322413))

(declare-fun m!1322415 () Bool)

(assert (=> b!1432527 m!1322415))

(declare-fun m!1322417 () Bool)

(assert (=> b!1432528 m!1322417))

(assert (=> b!1432528 m!1322417))

(declare-fun m!1322419 () Bool)

(assert (=> b!1432528 m!1322419))

(assert (=> b!1432528 m!1322419))

(assert (=> b!1432528 m!1322417))

(declare-fun m!1322421 () Bool)

(assert (=> b!1432528 m!1322421))

(assert (=> b!1432532 m!1322417))

(assert (=> b!1432532 m!1322417))

(declare-fun m!1322423 () Bool)

(assert (=> b!1432532 m!1322423))

(declare-fun m!1322425 () Bool)

(assert (=> b!1432537 m!1322425))

(assert (=> b!1432529 m!1322417))

(assert (=> b!1432529 m!1322417))

(declare-fun m!1322427 () Bool)

(assert (=> b!1432529 m!1322427))

(declare-fun m!1322429 () Bool)

(assert (=> b!1432534 m!1322429))

(assert (=> b!1432534 m!1322429))

(declare-fun m!1322431 () Bool)

(assert (=> b!1432534 m!1322431))

(assert (=> b!1432538 m!1322413))

(declare-fun m!1322433 () Bool)

(assert (=> b!1432538 m!1322433))

(declare-fun m!1322435 () Bool)

(assert (=> b!1432538 m!1322435))

(declare-fun m!1322437 () Bool)

(assert (=> b!1432538 m!1322437))

(assert (=> b!1432538 m!1322417))

(declare-fun m!1322439 () Bool)

(assert (=> b!1432538 m!1322439))

(declare-fun m!1322441 () Bool)

(assert (=> b!1432536 m!1322441))

(assert (=> b!1432530 m!1322417))

(assert (=> b!1432530 m!1322417))

(declare-fun m!1322443 () Bool)

(assert (=> b!1432530 m!1322443))

(check-sat (not b!1432532) (not b!1432536) (not b!1432528) (not b!1432529) (not b!1432538) (not b!1432527) (not b!1432535) (not b!1432530) (not b!1432537) (not start!123600) (not b!1432540) (not b!1432534))
(check-sat)
