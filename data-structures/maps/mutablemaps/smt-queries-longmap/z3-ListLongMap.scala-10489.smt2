; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123552 () Bool)

(assert start!123552)

(declare-fun b!1431519 () Bool)

(declare-fun res!965504 () Bool)

(declare-fun e!808224 () Bool)

(assert (=> b!1431519 (=> (not res!965504) (not e!808224))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97442 0))(
  ( (array!97443 (arr!47024 (Array (_ BitVec 32) (_ BitVec 64))) (size!47575 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97442)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1431519 (= res!965504 (and (= (size!47575 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47575 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47575 a!2831)) (not (= i!982 j!81))))))

(declare-fun e!808229 () Bool)

(declare-fun b!1431520 () Bool)

(declare-datatypes ((SeekEntryResult!11325 0))(
  ( (MissingZero!11325 (index!47691 (_ BitVec 32))) (Found!11325 (index!47692 (_ BitVec 32))) (Intermediate!11325 (undefined!12137 Bool) (index!47693 (_ BitVec 32)) (x!129346 (_ BitVec 32))) (Undefined!11325) (MissingVacant!11325 (index!47694 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97442 (_ BitVec 32)) SeekEntryResult!11325)

(assert (=> b!1431520 (= e!808229 (= (seekEntryOrOpen!0 (select (arr!47024 a!2831) j!81) a!2831 mask!2608) (Found!11325 j!81)))))

(declare-fun b!1431521 () Bool)

(declare-fun e!808226 () Bool)

(assert (=> b!1431521 (= e!808226 true)))

(declare-fun lt!630175 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431521 (= lt!630175 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1431522 () Bool)

(declare-fun res!965497 () Bool)

(declare-fun e!808227 () Bool)

(assert (=> b!1431522 (=> (not res!965497) (not e!808227))))

(declare-fun lt!630173 () SeekEntryResult!11325)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97442 (_ BitVec 32)) SeekEntryResult!11325)

(assert (=> b!1431522 (= res!965497 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47024 a!2831) j!81) a!2831 mask!2608) lt!630173))))

(declare-fun res!965492 () Bool)

(assert (=> start!123552 (=> (not res!965492) (not e!808224))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123552 (= res!965492 (validMask!0 mask!2608))))

(assert (=> start!123552 e!808224))

(assert (=> start!123552 true))

(declare-fun array_inv!35969 (array!97442) Bool)

(assert (=> start!123552 (array_inv!35969 a!2831)))

(declare-fun b!1431523 () Bool)

(declare-fun e!808225 () Bool)

(assert (=> b!1431523 (= e!808224 e!808225)))

(declare-fun res!965499 () Bool)

(assert (=> b!1431523 (=> (not res!965499) (not e!808225))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431523 (= res!965499 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47024 a!2831) j!81) mask!2608) (select (arr!47024 a!2831) j!81) a!2831 mask!2608) lt!630173))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1431523 (= lt!630173 (Intermediate!11325 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1431524 () Bool)

(declare-fun res!965503 () Bool)

(assert (=> b!1431524 (=> (not res!965503) (not e!808224))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97442 (_ BitVec 32)) Bool)

(assert (=> b!1431524 (= res!965503 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1431525 () Bool)

(declare-fun res!965493 () Bool)

(assert (=> b!1431525 (=> (not res!965493) (not e!808224))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1431525 (= res!965493 (validKeyInArray!0 (select (arr!47024 a!2831) i!982)))))

(declare-fun b!1431526 () Bool)

(declare-fun res!965496 () Bool)

(assert (=> b!1431526 (=> (not res!965496) (not e!808224))))

(declare-datatypes ((List!33714 0))(
  ( (Nil!33711) (Cons!33710 (h!35033 (_ BitVec 64)) (t!48415 List!33714)) )
))
(declare-fun arrayNoDuplicates!0 (array!97442 (_ BitVec 32) List!33714) Bool)

(assert (=> b!1431526 (= res!965496 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33711))))

(declare-fun b!1431527 () Bool)

(assert (=> b!1431527 (= e!808227 (not e!808226))))

(declare-fun res!965505 () Bool)

(assert (=> b!1431527 (=> res!965505 e!808226)))

(assert (=> b!1431527 (= res!965505 (or (= (select (arr!47024 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47024 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47024 a!2831) index!585) (select (arr!47024 a!2831) j!81)) (= (select (store (arr!47024 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1431527 e!808229))

(declare-fun res!965502 () Bool)

(assert (=> b!1431527 (=> (not res!965502) (not e!808229))))

(assert (=> b!1431527 (= res!965502 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48344 0))(
  ( (Unit!48345) )
))
(declare-fun lt!630177 () Unit!48344)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97442 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48344)

(assert (=> b!1431527 (= lt!630177 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1431528 () Bool)

(declare-fun res!965495 () Bool)

(assert (=> b!1431528 (=> (not res!965495) (not e!808227))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1431528 (= res!965495 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1431529 () Bool)

(assert (=> b!1431529 (= e!808225 e!808227)))

(declare-fun res!965500 () Bool)

(assert (=> b!1431529 (=> (not res!965500) (not e!808227))))

(declare-fun lt!630174 () array!97442)

(declare-fun lt!630176 () (_ BitVec 64))

(declare-fun lt!630178 () SeekEntryResult!11325)

(assert (=> b!1431529 (= res!965500 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630176 mask!2608) lt!630176 lt!630174 mask!2608) lt!630178))))

(assert (=> b!1431529 (= lt!630178 (Intermediate!11325 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1431529 (= lt!630176 (select (store (arr!47024 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1431529 (= lt!630174 (array!97443 (store (arr!47024 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47575 a!2831)))))

(declare-fun b!1431530 () Bool)

(declare-fun res!965498 () Bool)

(assert (=> b!1431530 (=> (not res!965498) (not e!808224))))

(assert (=> b!1431530 (= res!965498 (validKeyInArray!0 (select (arr!47024 a!2831) j!81)))))

(declare-fun b!1431531 () Bool)

(declare-fun res!965494 () Bool)

(assert (=> b!1431531 (=> (not res!965494) (not e!808227))))

(assert (=> b!1431531 (= res!965494 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630176 lt!630174 mask!2608) lt!630178))))

(declare-fun b!1431532 () Bool)

(declare-fun res!965501 () Bool)

(assert (=> b!1431532 (=> (not res!965501) (not e!808224))))

(assert (=> b!1431532 (= res!965501 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47575 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47575 a!2831))))))

(assert (= (and start!123552 res!965492) b!1431519))

(assert (= (and b!1431519 res!965504) b!1431525))

(assert (= (and b!1431525 res!965493) b!1431530))

(assert (= (and b!1431530 res!965498) b!1431524))

(assert (= (and b!1431524 res!965503) b!1431526))

(assert (= (and b!1431526 res!965496) b!1431532))

(assert (= (and b!1431532 res!965501) b!1431523))

(assert (= (and b!1431523 res!965499) b!1431529))

(assert (= (and b!1431529 res!965500) b!1431522))

(assert (= (and b!1431522 res!965497) b!1431531))

(assert (= (and b!1431531 res!965494) b!1431528))

(assert (= (and b!1431528 res!965495) b!1431527))

(assert (= (and b!1431527 res!965502) b!1431520))

(assert (= (and b!1431527 (not res!965505)) b!1431521))

(declare-fun m!1321345 () Bool)

(assert (=> b!1431520 m!1321345))

(assert (=> b!1431520 m!1321345))

(declare-fun m!1321347 () Bool)

(assert (=> b!1431520 m!1321347))

(declare-fun m!1321349 () Bool)

(assert (=> start!123552 m!1321349))

(declare-fun m!1321351 () Bool)

(assert (=> start!123552 m!1321351))

(declare-fun m!1321353 () Bool)

(assert (=> b!1431524 m!1321353))

(declare-fun m!1321355 () Bool)

(assert (=> b!1431525 m!1321355))

(assert (=> b!1431525 m!1321355))

(declare-fun m!1321357 () Bool)

(assert (=> b!1431525 m!1321357))

(declare-fun m!1321359 () Bool)

(assert (=> b!1431529 m!1321359))

(assert (=> b!1431529 m!1321359))

(declare-fun m!1321361 () Bool)

(assert (=> b!1431529 m!1321361))

(declare-fun m!1321363 () Bool)

(assert (=> b!1431529 m!1321363))

(declare-fun m!1321365 () Bool)

(assert (=> b!1431529 m!1321365))

(declare-fun m!1321367 () Bool)

(assert (=> b!1431526 m!1321367))

(declare-fun m!1321369 () Bool)

(assert (=> b!1431531 m!1321369))

(assert (=> b!1431522 m!1321345))

(assert (=> b!1431522 m!1321345))

(declare-fun m!1321371 () Bool)

(assert (=> b!1431522 m!1321371))

(assert (=> b!1431523 m!1321345))

(assert (=> b!1431523 m!1321345))

(declare-fun m!1321373 () Bool)

(assert (=> b!1431523 m!1321373))

(assert (=> b!1431523 m!1321373))

(assert (=> b!1431523 m!1321345))

(declare-fun m!1321375 () Bool)

(assert (=> b!1431523 m!1321375))

(assert (=> b!1431530 m!1321345))

(assert (=> b!1431530 m!1321345))

(declare-fun m!1321377 () Bool)

(assert (=> b!1431530 m!1321377))

(assert (=> b!1431527 m!1321363))

(declare-fun m!1321379 () Bool)

(assert (=> b!1431527 m!1321379))

(declare-fun m!1321381 () Bool)

(assert (=> b!1431527 m!1321381))

(declare-fun m!1321383 () Bool)

(assert (=> b!1431527 m!1321383))

(assert (=> b!1431527 m!1321345))

(declare-fun m!1321385 () Bool)

(assert (=> b!1431527 m!1321385))

(declare-fun m!1321387 () Bool)

(assert (=> b!1431521 m!1321387))

(check-sat (not start!123552) (not b!1431523) (not b!1431522) (not b!1431521) (not b!1431526) (not b!1431531) (not b!1431520) (not b!1431529) (not b!1431530) (not b!1431527) (not b!1431525) (not b!1431524))
(check-sat)
