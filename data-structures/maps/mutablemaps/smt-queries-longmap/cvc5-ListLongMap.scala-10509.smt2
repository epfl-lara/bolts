; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123910 () Bool)

(assert start!123910)

(declare-fun b!1435365 () Bool)

(declare-fun e!810116 () Bool)

(declare-fun e!810117 () Bool)

(assert (=> b!1435365 (= e!810116 e!810117)))

(declare-fun res!968483 () Bool)

(assert (=> b!1435365 (=> (not res!968483) (not e!810117))))

(declare-datatypes ((SeekEntryResult!11384 0))(
  ( (MissingZero!11384 (index!47927 (_ BitVec 32))) (Found!11384 (index!47928 (_ BitVec 32))) (Intermediate!11384 (undefined!12196 Bool) (index!47929 (_ BitVec 32)) (x!129601 (_ BitVec 32))) (Undefined!11384) (MissingVacant!11384 (index!47930 (_ BitVec 32))) )
))
(declare-fun lt!631828 () SeekEntryResult!11384)

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97572 0))(
  ( (array!97573 (arr!47083 (Array (_ BitVec 32) (_ BitVec 64))) (size!47634 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97572)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97572 (_ BitVec 32)) SeekEntryResult!11384)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1435365 (= res!968483 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47083 a!2831) j!81) mask!2608) (select (arr!47083 a!2831) j!81) a!2831 mask!2608) lt!631828))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1435365 (= lt!631828 (Intermediate!11384 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1435366 () Bool)

(declare-fun res!968492 () Bool)

(assert (=> b!1435366 (=> (not res!968492) (not e!810116))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1435366 (= res!968492 (and (= (size!47634 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47634 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47634 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1435367 () Bool)

(declare-fun e!810120 () Bool)

(assert (=> b!1435367 (= e!810117 e!810120)))

(declare-fun res!968491 () Bool)

(assert (=> b!1435367 (=> (not res!968491) (not e!810120))))

(declare-fun lt!631829 () array!97572)

(declare-fun lt!631826 () (_ BitVec 64))

(declare-fun lt!631831 () SeekEntryResult!11384)

(assert (=> b!1435367 (= res!968491 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631826 mask!2608) lt!631826 lt!631829 mask!2608) lt!631831))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1435367 (= lt!631831 (Intermediate!11384 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1435367 (= lt!631826 (select (store (arr!47083 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1435367 (= lt!631829 (array!97573 (store (arr!47083 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47634 a!2831)))))

(declare-fun e!810121 () Bool)

(declare-fun b!1435368 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97572 (_ BitVec 32)) SeekEntryResult!11384)

(assert (=> b!1435368 (= e!810121 (= (seekEntryOrOpen!0 (select (arr!47083 a!2831) j!81) a!2831 mask!2608) (Found!11384 j!81)))))

(declare-fun b!1435369 () Bool)

(declare-fun res!968494 () Bool)

(declare-fun e!810122 () Bool)

(assert (=> b!1435369 (=> res!968494 e!810122)))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!631827 () (_ BitVec 32))

(assert (=> b!1435369 (= res!968494 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631827 (select (arr!47083 a!2831) j!81) a!2831 mask!2608) lt!631828)))))

(declare-fun b!1435370 () Bool)

(declare-fun res!968495 () Bool)

(assert (=> b!1435370 (=> (not res!968495) (not e!810116))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1435370 (= res!968495 (validKeyInArray!0 (select (arr!47083 a!2831) j!81)))))

(declare-fun b!1435371 () Bool)

(assert (=> b!1435371 (= e!810122 (bvslt (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!605)) (bvsub #b01111111111111111111111111111110 x!605)))))

(declare-fun b!1435372 () Bool)

(declare-fun res!968484 () Bool)

(assert (=> b!1435372 (=> (not res!968484) (not e!810116))))

(declare-datatypes ((List!33773 0))(
  ( (Nil!33770) (Cons!33769 (h!35104 (_ BitVec 64)) (t!48474 List!33773)) )
))
(declare-fun arrayNoDuplicates!0 (array!97572 (_ BitVec 32) List!33773) Bool)

(assert (=> b!1435372 (= res!968484 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33770))))

(declare-fun res!968480 () Bool)

(assert (=> start!123910 (=> (not res!968480) (not e!810116))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123910 (= res!968480 (validMask!0 mask!2608))))

(assert (=> start!123910 e!810116))

(assert (=> start!123910 true))

(declare-fun array_inv!36028 (array!97572) Bool)

(assert (=> start!123910 (array_inv!36028 a!2831)))

(declare-fun b!1435373 () Bool)

(declare-fun res!968489 () Bool)

(assert (=> b!1435373 (=> res!968489 e!810122)))

(assert (=> b!1435373 (= res!968489 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631827 lt!631826 lt!631829 mask!2608) lt!631831)))))

(declare-fun b!1435374 () Bool)

(declare-fun e!810118 () Bool)

(assert (=> b!1435374 (= e!810118 e!810122)))

(declare-fun res!968496 () Bool)

(assert (=> b!1435374 (=> res!968496 e!810122)))

(assert (=> b!1435374 (= res!968496 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!631827 #b00000000000000000000000000000000) (bvsge lt!631827 (size!47634 a!2831))))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1435374 (= lt!631827 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1435375 () Bool)

(declare-fun res!968485 () Bool)

(assert (=> b!1435375 (=> (not res!968485) (not e!810116))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97572 (_ BitVec 32)) Bool)

(assert (=> b!1435375 (= res!968485 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1435376 () Bool)

(assert (=> b!1435376 (= e!810120 (not e!810118))))

(declare-fun res!968493 () Bool)

(assert (=> b!1435376 (=> res!968493 e!810118)))

(assert (=> b!1435376 (= res!968493 (or (= (select (arr!47083 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47083 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47083 a!2831) index!585) (select (arr!47083 a!2831) j!81)) (= (select (store (arr!47083 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1435376 e!810121))

(declare-fun res!968486 () Bool)

(assert (=> b!1435376 (=> (not res!968486) (not e!810121))))

(assert (=> b!1435376 (= res!968486 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48462 0))(
  ( (Unit!48463) )
))
(declare-fun lt!631830 () Unit!48462)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97572 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48462)

(assert (=> b!1435376 (= lt!631830 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1435377 () Bool)

(declare-fun res!968481 () Bool)

(assert (=> b!1435377 (=> (not res!968481) (not e!810120))))

(assert (=> b!1435377 (= res!968481 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47083 a!2831) j!81) a!2831 mask!2608) lt!631828))))

(declare-fun b!1435378 () Bool)

(declare-fun res!968487 () Bool)

(assert (=> b!1435378 (=> (not res!968487) (not e!810116))))

(assert (=> b!1435378 (= res!968487 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47634 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47634 a!2831))))))

(declare-fun b!1435379 () Bool)

(declare-fun res!968488 () Bool)

(assert (=> b!1435379 (=> (not res!968488) (not e!810120))))

(assert (=> b!1435379 (= res!968488 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1435380 () Bool)

(declare-fun res!968490 () Bool)

(assert (=> b!1435380 (=> (not res!968490) (not e!810116))))

(assert (=> b!1435380 (= res!968490 (validKeyInArray!0 (select (arr!47083 a!2831) i!982)))))

(declare-fun b!1435381 () Bool)

(declare-fun res!968482 () Bool)

(assert (=> b!1435381 (=> (not res!968482) (not e!810120))))

(assert (=> b!1435381 (= res!968482 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631826 lt!631829 mask!2608) lt!631831))))

(assert (= (and start!123910 res!968480) b!1435366))

(assert (= (and b!1435366 res!968492) b!1435380))

(assert (= (and b!1435380 res!968490) b!1435370))

(assert (= (and b!1435370 res!968495) b!1435375))

(assert (= (and b!1435375 res!968485) b!1435372))

(assert (= (and b!1435372 res!968484) b!1435378))

(assert (= (and b!1435378 res!968487) b!1435365))

(assert (= (and b!1435365 res!968483) b!1435367))

(assert (= (and b!1435367 res!968491) b!1435377))

(assert (= (and b!1435377 res!968481) b!1435381))

(assert (= (and b!1435381 res!968482) b!1435379))

(assert (= (and b!1435379 res!968488) b!1435376))

(assert (= (and b!1435376 res!968486) b!1435368))

(assert (= (and b!1435376 (not res!968493)) b!1435374))

(assert (= (and b!1435374 (not res!968496)) b!1435369))

(assert (= (and b!1435369 (not res!968494)) b!1435373))

(assert (= (and b!1435373 (not res!968489)) b!1435371))

(declare-fun m!1324781 () Bool)

(assert (=> b!1435376 m!1324781))

(declare-fun m!1324783 () Bool)

(assert (=> b!1435376 m!1324783))

(declare-fun m!1324785 () Bool)

(assert (=> b!1435376 m!1324785))

(declare-fun m!1324787 () Bool)

(assert (=> b!1435376 m!1324787))

(declare-fun m!1324789 () Bool)

(assert (=> b!1435376 m!1324789))

(declare-fun m!1324791 () Bool)

(assert (=> b!1435376 m!1324791))

(declare-fun m!1324793 () Bool)

(assert (=> start!123910 m!1324793))

(declare-fun m!1324795 () Bool)

(assert (=> start!123910 m!1324795))

(declare-fun m!1324797 () Bool)

(assert (=> b!1435374 m!1324797))

(declare-fun m!1324799 () Bool)

(assert (=> b!1435381 m!1324799))

(declare-fun m!1324801 () Bool)

(assert (=> b!1435367 m!1324801))

(assert (=> b!1435367 m!1324801))

(declare-fun m!1324803 () Bool)

(assert (=> b!1435367 m!1324803))

(assert (=> b!1435367 m!1324781))

(declare-fun m!1324805 () Bool)

(assert (=> b!1435367 m!1324805))

(assert (=> b!1435370 m!1324789))

(assert (=> b!1435370 m!1324789))

(declare-fun m!1324807 () Bool)

(assert (=> b!1435370 m!1324807))

(declare-fun m!1324809 () Bool)

(assert (=> b!1435373 m!1324809))

(declare-fun m!1324811 () Bool)

(assert (=> b!1435375 m!1324811))

(declare-fun m!1324813 () Bool)

(assert (=> b!1435372 m!1324813))

(assert (=> b!1435365 m!1324789))

(assert (=> b!1435365 m!1324789))

(declare-fun m!1324815 () Bool)

(assert (=> b!1435365 m!1324815))

(assert (=> b!1435365 m!1324815))

(assert (=> b!1435365 m!1324789))

(declare-fun m!1324817 () Bool)

(assert (=> b!1435365 m!1324817))

(assert (=> b!1435369 m!1324789))

(assert (=> b!1435369 m!1324789))

(declare-fun m!1324819 () Bool)

(assert (=> b!1435369 m!1324819))

(declare-fun m!1324821 () Bool)

(assert (=> b!1435380 m!1324821))

(assert (=> b!1435380 m!1324821))

(declare-fun m!1324823 () Bool)

(assert (=> b!1435380 m!1324823))

(assert (=> b!1435368 m!1324789))

(assert (=> b!1435368 m!1324789))

(declare-fun m!1324825 () Bool)

(assert (=> b!1435368 m!1324825))

(assert (=> b!1435377 m!1324789))

(assert (=> b!1435377 m!1324789))

(declare-fun m!1324827 () Bool)

(assert (=> b!1435377 m!1324827))

(push 1)

(assert (not b!1435376))

(assert (not start!123910))

(assert (not b!1435365))

(assert (not b!1435368))

(assert (not b!1435374))

(assert (not b!1435367))

(assert (not b!1435381))

(assert (not b!1435370))

(assert (not b!1435380))

(assert (not b!1435375))

(assert (not b!1435372))

(assert (not b!1435369))

(assert (not b!1435373))

(assert (not b!1435377))

(check-sat)

(pop 1)

(push 1)

(check-sat)

