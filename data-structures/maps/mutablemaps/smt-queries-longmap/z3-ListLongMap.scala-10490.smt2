; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123558 () Bool)

(assert start!123558)

(declare-fun b!1431645 () Bool)

(declare-fun e!808279 () Bool)

(declare-fun e!808278 () Bool)

(assert (=> b!1431645 (= e!808279 e!808278)))

(declare-fun res!965618 () Bool)

(assert (=> b!1431645 (=> (not res!965618) (not e!808278))))

(declare-datatypes ((SeekEntryResult!11328 0))(
  ( (MissingZero!11328 (index!47703 (_ BitVec 32))) (Found!11328 (index!47704 (_ BitVec 32))) (Intermediate!11328 (undefined!12140 Bool) (index!47705 (_ BitVec 32)) (x!129357 (_ BitVec 32))) (Undefined!11328) (MissingVacant!11328 (index!47706 (_ BitVec 32))) )
))
(declare-fun lt!630230 () SeekEntryResult!11328)

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97448 0))(
  ( (array!97449 (arr!47027 (Array (_ BitVec 32) (_ BitVec 64))) (size!47578 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97448)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97448 (_ BitVec 32)) SeekEntryResult!11328)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431645 (= res!965618 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47027 a!2831) j!81) mask!2608) (select (arr!47027 a!2831) j!81) a!2831 mask!2608) lt!630230))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1431645 (= lt!630230 (Intermediate!11328 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1431646 () Bool)

(declare-fun e!808280 () Bool)

(declare-fun e!808281 () Bool)

(assert (=> b!1431646 (= e!808280 (not e!808281))))

(declare-fun res!965628 () Bool)

(assert (=> b!1431646 (=> res!965628 e!808281)))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1431646 (= res!965628 (or (= (select (arr!47027 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47027 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47027 a!2831) index!585) (select (arr!47027 a!2831) j!81)) (= (select (store (arr!47027 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!808283 () Bool)

(assert (=> b!1431646 e!808283))

(declare-fun res!965621 () Bool)

(assert (=> b!1431646 (=> (not res!965621) (not e!808283))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97448 (_ BitVec 32)) Bool)

(assert (=> b!1431646 (= res!965621 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48350 0))(
  ( (Unit!48351) )
))
(declare-fun lt!630231 () Unit!48350)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97448 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48350)

(assert (=> b!1431646 (= lt!630231 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1431647 () Bool)

(declare-fun res!965630 () Bool)

(assert (=> b!1431647 (=> (not res!965630) (not e!808279))))

(declare-datatypes ((List!33717 0))(
  ( (Nil!33714) (Cons!33713 (h!35036 (_ BitVec 64)) (t!48418 List!33717)) )
))
(declare-fun arrayNoDuplicates!0 (array!97448 (_ BitVec 32) List!33717) Bool)

(assert (=> b!1431647 (= res!965630 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33714))))

(declare-fun b!1431648 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97448 (_ BitVec 32)) SeekEntryResult!11328)

(assert (=> b!1431648 (= e!808283 (= (seekEntryOrOpen!0 (select (arr!47027 a!2831) j!81) a!2831 mask!2608) (Found!11328 j!81)))))

(declare-fun res!965626 () Bool)

(assert (=> start!123558 (=> (not res!965626) (not e!808279))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123558 (= res!965626 (validMask!0 mask!2608))))

(assert (=> start!123558 e!808279))

(assert (=> start!123558 true))

(declare-fun array_inv!35972 (array!97448) Bool)

(assert (=> start!123558 (array_inv!35972 a!2831)))

(declare-fun b!1431649 () Bool)

(declare-fun res!965627 () Bool)

(assert (=> b!1431649 (=> (not res!965627) (not e!808280))))

(declare-fun lt!630227 () array!97448)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!630232 () (_ BitVec 64))

(declare-fun lt!630229 () SeekEntryResult!11328)

(assert (=> b!1431649 (= res!965627 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630232 lt!630227 mask!2608) lt!630229))))

(declare-fun b!1431650 () Bool)

(declare-fun res!965624 () Bool)

(assert (=> b!1431650 (=> (not res!965624) (not e!808279))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1431650 (= res!965624 (validKeyInArray!0 (select (arr!47027 a!2831) j!81)))))

(declare-fun b!1431651 () Bool)

(declare-fun res!965619 () Bool)

(assert (=> b!1431651 (=> (not res!965619) (not e!808279))))

(assert (=> b!1431651 (= res!965619 (and (= (size!47578 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47578 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47578 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1431652 () Bool)

(declare-fun res!965623 () Bool)

(assert (=> b!1431652 (=> (not res!965623) (not e!808280))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1431652 (= res!965623 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1431653 () Bool)

(declare-fun res!965622 () Bool)

(assert (=> b!1431653 (=> (not res!965622) (not e!808279))))

(assert (=> b!1431653 (= res!965622 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1431654 () Bool)

(declare-fun res!965631 () Bool)

(assert (=> b!1431654 (=> (not res!965631) (not e!808280))))

(assert (=> b!1431654 (= res!965631 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47027 a!2831) j!81) a!2831 mask!2608) lt!630230))))

(declare-fun b!1431655 () Bool)

(declare-fun res!965625 () Bool)

(assert (=> b!1431655 (=> (not res!965625) (not e!808279))))

(assert (=> b!1431655 (= res!965625 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47578 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47578 a!2831))))))

(declare-fun b!1431656 () Bool)

(declare-fun res!965620 () Bool)

(assert (=> b!1431656 (=> (not res!965620) (not e!808279))))

(assert (=> b!1431656 (= res!965620 (validKeyInArray!0 (select (arr!47027 a!2831) i!982)))))

(declare-fun b!1431657 () Bool)

(assert (=> b!1431657 (= e!808278 e!808280)))

(declare-fun res!965629 () Bool)

(assert (=> b!1431657 (=> (not res!965629) (not e!808280))))

(assert (=> b!1431657 (= res!965629 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630232 mask!2608) lt!630232 lt!630227 mask!2608) lt!630229))))

(assert (=> b!1431657 (= lt!630229 (Intermediate!11328 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1431657 (= lt!630232 (select (store (arr!47027 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1431657 (= lt!630227 (array!97449 (store (arr!47027 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47578 a!2831)))))

(declare-fun b!1431658 () Bool)

(assert (=> b!1431658 (= e!808281 true)))

(declare-fun lt!630228 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431658 (= lt!630228 (nextIndex!0 index!585 x!605 mask!2608))))

(assert (= (and start!123558 res!965626) b!1431651))

(assert (= (and b!1431651 res!965619) b!1431656))

(assert (= (and b!1431656 res!965620) b!1431650))

(assert (= (and b!1431650 res!965624) b!1431653))

(assert (= (and b!1431653 res!965622) b!1431647))

(assert (= (and b!1431647 res!965630) b!1431655))

(assert (= (and b!1431655 res!965625) b!1431645))

(assert (= (and b!1431645 res!965618) b!1431657))

(assert (= (and b!1431657 res!965629) b!1431654))

(assert (= (and b!1431654 res!965631) b!1431649))

(assert (= (and b!1431649 res!965627) b!1431652))

(assert (= (and b!1431652 res!965623) b!1431646))

(assert (= (and b!1431646 res!965621) b!1431648))

(assert (= (and b!1431646 (not res!965628)) b!1431658))

(declare-fun m!1321477 () Bool)

(assert (=> b!1431654 m!1321477))

(assert (=> b!1431654 m!1321477))

(declare-fun m!1321479 () Bool)

(assert (=> b!1431654 m!1321479))

(declare-fun m!1321481 () Bool)

(assert (=> b!1431658 m!1321481))

(declare-fun m!1321483 () Bool)

(assert (=> b!1431657 m!1321483))

(assert (=> b!1431657 m!1321483))

(declare-fun m!1321485 () Bool)

(assert (=> b!1431657 m!1321485))

(declare-fun m!1321487 () Bool)

(assert (=> b!1431657 m!1321487))

(declare-fun m!1321489 () Bool)

(assert (=> b!1431657 m!1321489))

(declare-fun m!1321491 () Bool)

(assert (=> b!1431656 m!1321491))

(assert (=> b!1431656 m!1321491))

(declare-fun m!1321493 () Bool)

(assert (=> b!1431656 m!1321493))

(declare-fun m!1321495 () Bool)

(assert (=> b!1431649 m!1321495))

(assert (=> b!1431645 m!1321477))

(assert (=> b!1431645 m!1321477))

(declare-fun m!1321497 () Bool)

(assert (=> b!1431645 m!1321497))

(assert (=> b!1431645 m!1321497))

(assert (=> b!1431645 m!1321477))

(declare-fun m!1321499 () Bool)

(assert (=> b!1431645 m!1321499))

(declare-fun m!1321501 () Bool)

(assert (=> b!1431647 m!1321501))

(declare-fun m!1321503 () Bool)

(assert (=> start!123558 m!1321503))

(declare-fun m!1321505 () Bool)

(assert (=> start!123558 m!1321505))

(assert (=> b!1431650 m!1321477))

(assert (=> b!1431650 m!1321477))

(declare-fun m!1321507 () Bool)

(assert (=> b!1431650 m!1321507))

(assert (=> b!1431646 m!1321487))

(declare-fun m!1321509 () Bool)

(assert (=> b!1431646 m!1321509))

(declare-fun m!1321511 () Bool)

(assert (=> b!1431646 m!1321511))

(declare-fun m!1321513 () Bool)

(assert (=> b!1431646 m!1321513))

(assert (=> b!1431646 m!1321477))

(declare-fun m!1321515 () Bool)

(assert (=> b!1431646 m!1321515))

(declare-fun m!1321517 () Bool)

(assert (=> b!1431653 m!1321517))

(assert (=> b!1431648 m!1321477))

(assert (=> b!1431648 m!1321477))

(declare-fun m!1321519 () Bool)

(assert (=> b!1431648 m!1321519))

(check-sat (not b!1431657) (not b!1431647) (not b!1431649) (not b!1431654) (not b!1431645) (not b!1431653) (not b!1431650) (not start!123558) (not b!1431656) (not b!1431646) (not b!1431648) (not b!1431658))
(check-sat)
