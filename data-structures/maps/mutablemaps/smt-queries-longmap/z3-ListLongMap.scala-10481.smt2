; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123306 () Bool)

(assert start!123306)

(declare-fun b!1429363 () Bool)

(declare-fun res!964103 () Bool)

(declare-fun e!807127 () Bool)

(assert (=> b!1429363 (=> (not res!964103) (not e!807127))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(declare-datatypes ((array!97385 0))(
  ( (array!97386 (arr!47000 (Array (_ BitVec 32) (_ BitVec 64))) (size!47551 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97385)

(assert (=> b!1429363 (= res!964103 (and (= (size!47551 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47551 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47551 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1429364 () Bool)

(declare-fun res!964112 () Bool)

(declare-fun e!807128 () Bool)

(assert (=> b!1429364 (=> (not res!964112) (not e!807128))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1429364 (= res!964112 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1429365 () Bool)

(declare-fun res!964105 () Bool)

(assert (=> b!1429365 (=> (not res!964105) (not e!807127))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1429365 (= res!964105 (validKeyInArray!0 (select (arr!47000 a!2831) j!81)))))

(declare-fun b!1429366 () Bool)

(declare-fun res!964113 () Bool)

(assert (=> b!1429366 (=> (not res!964113) (not e!807127))))

(declare-datatypes ((List!33690 0))(
  ( (Nil!33687) (Cons!33686 (h!35000 (_ BitVec 64)) (t!48391 List!33690)) )
))
(declare-fun arrayNoDuplicates!0 (array!97385 (_ BitVec 32) List!33690) Bool)

(assert (=> b!1429366 (= res!964113 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33687))))

(declare-fun b!1429367 () Bool)

(declare-fun res!964106 () Bool)

(assert (=> b!1429367 (=> (not res!964106) (not e!807127))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1429367 (= res!964106 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47551 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47551 a!2831))))))

(declare-fun b!1429368 () Bool)

(declare-fun e!807126 () Bool)

(assert (=> b!1429368 (= e!807126 e!807128)))

(declare-fun res!964111 () Bool)

(assert (=> b!1429368 (=> (not res!964111) (not e!807128))))

(declare-fun lt!629308 () array!97385)

(declare-fun lt!629310 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11301 0))(
  ( (MissingZero!11301 (index!47595 (_ BitVec 32))) (Found!11301 (index!47596 (_ BitVec 32))) (Intermediate!11301 (undefined!12113 Bool) (index!47597 (_ BitVec 32)) (x!129234 (_ BitVec 32))) (Undefined!11301) (MissingVacant!11301 (index!47598 (_ BitVec 32))) )
))
(declare-fun lt!629311 () SeekEntryResult!11301)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97385 (_ BitVec 32)) SeekEntryResult!11301)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1429368 (= res!964111 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629310 mask!2608) lt!629310 lt!629308 mask!2608) lt!629311))))

(assert (=> b!1429368 (= lt!629311 (Intermediate!11301 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1429368 (= lt!629310 (select (store (arr!47000 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1429368 (= lt!629308 (array!97386 (store (arr!47000 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47551 a!2831)))))

(declare-fun b!1429369 () Bool)

(assert (=> b!1429369 (= e!807128 (not true))))

(declare-fun e!807125 () Bool)

(assert (=> b!1429369 e!807125))

(declare-fun res!964108 () Bool)

(assert (=> b!1429369 (=> (not res!964108) (not e!807125))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97385 (_ BitVec 32)) Bool)

(assert (=> b!1429369 (= res!964108 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48296 0))(
  ( (Unit!48297) )
))
(declare-fun lt!629307 () Unit!48296)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97385 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48296)

(assert (=> b!1429369 (= lt!629307 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1429370 () Bool)

(declare-fun res!964109 () Bool)

(assert (=> b!1429370 (=> (not res!964109) (not e!807128))))

(assert (=> b!1429370 (= res!964109 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629310 lt!629308 mask!2608) lt!629311))))

(declare-fun res!964102 () Bool)

(assert (=> start!123306 (=> (not res!964102) (not e!807127))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123306 (= res!964102 (validMask!0 mask!2608))))

(assert (=> start!123306 e!807127))

(assert (=> start!123306 true))

(declare-fun array_inv!35945 (array!97385) Bool)

(assert (=> start!123306 (array_inv!35945 a!2831)))

(declare-fun b!1429371 () Bool)

(declare-fun res!964107 () Bool)

(assert (=> b!1429371 (=> (not res!964107) (not e!807128))))

(declare-fun lt!629309 () SeekEntryResult!11301)

(assert (=> b!1429371 (= res!964107 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47000 a!2831) j!81) a!2831 mask!2608) lt!629309))))

(declare-fun b!1429372 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97385 (_ BitVec 32)) SeekEntryResult!11301)

(assert (=> b!1429372 (= e!807125 (= (seekEntryOrOpen!0 (select (arr!47000 a!2831) j!81) a!2831 mask!2608) (Found!11301 j!81)))))

(declare-fun b!1429373 () Bool)

(declare-fun res!964110 () Bool)

(assert (=> b!1429373 (=> (not res!964110) (not e!807127))))

(assert (=> b!1429373 (= res!964110 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1429374 () Bool)

(assert (=> b!1429374 (= e!807127 e!807126)))

(declare-fun res!964101 () Bool)

(assert (=> b!1429374 (=> (not res!964101) (not e!807126))))

(assert (=> b!1429374 (= res!964101 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47000 a!2831) j!81) mask!2608) (select (arr!47000 a!2831) j!81) a!2831 mask!2608) lt!629309))))

(assert (=> b!1429374 (= lt!629309 (Intermediate!11301 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1429375 () Bool)

(declare-fun res!964104 () Bool)

(assert (=> b!1429375 (=> (not res!964104) (not e!807127))))

(assert (=> b!1429375 (= res!964104 (validKeyInArray!0 (select (arr!47000 a!2831) i!982)))))

(assert (= (and start!123306 res!964102) b!1429363))

(assert (= (and b!1429363 res!964103) b!1429375))

(assert (= (and b!1429375 res!964104) b!1429365))

(assert (= (and b!1429365 res!964105) b!1429373))

(assert (= (and b!1429373 res!964110) b!1429366))

(assert (= (and b!1429366 res!964113) b!1429367))

(assert (= (and b!1429367 res!964106) b!1429374))

(assert (= (and b!1429374 res!964101) b!1429368))

(assert (= (and b!1429368 res!964111) b!1429371))

(assert (= (and b!1429371 res!964107) b!1429370))

(assert (= (and b!1429370 res!964109) b!1429364))

(assert (= (and b!1429364 res!964112) b!1429369))

(assert (= (and b!1429369 res!964108) b!1429372))

(declare-fun m!1319521 () Bool)

(assert (=> b!1429371 m!1319521))

(assert (=> b!1429371 m!1319521))

(declare-fun m!1319523 () Bool)

(assert (=> b!1429371 m!1319523))

(assert (=> b!1429365 m!1319521))

(assert (=> b!1429365 m!1319521))

(declare-fun m!1319525 () Bool)

(assert (=> b!1429365 m!1319525))

(declare-fun m!1319527 () Bool)

(assert (=> start!123306 m!1319527))

(declare-fun m!1319529 () Bool)

(assert (=> start!123306 m!1319529))

(assert (=> b!1429374 m!1319521))

(assert (=> b!1429374 m!1319521))

(declare-fun m!1319531 () Bool)

(assert (=> b!1429374 m!1319531))

(assert (=> b!1429374 m!1319531))

(assert (=> b!1429374 m!1319521))

(declare-fun m!1319533 () Bool)

(assert (=> b!1429374 m!1319533))

(declare-fun m!1319535 () Bool)

(assert (=> b!1429375 m!1319535))

(assert (=> b!1429375 m!1319535))

(declare-fun m!1319537 () Bool)

(assert (=> b!1429375 m!1319537))

(declare-fun m!1319539 () Bool)

(assert (=> b!1429366 m!1319539))

(declare-fun m!1319541 () Bool)

(assert (=> b!1429369 m!1319541))

(declare-fun m!1319543 () Bool)

(assert (=> b!1429369 m!1319543))

(declare-fun m!1319545 () Bool)

(assert (=> b!1429368 m!1319545))

(assert (=> b!1429368 m!1319545))

(declare-fun m!1319547 () Bool)

(assert (=> b!1429368 m!1319547))

(declare-fun m!1319549 () Bool)

(assert (=> b!1429368 m!1319549))

(declare-fun m!1319551 () Bool)

(assert (=> b!1429368 m!1319551))

(assert (=> b!1429372 m!1319521))

(assert (=> b!1429372 m!1319521))

(declare-fun m!1319553 () Bool)

(assert (=> b!1429372 m!1319553))

(declare-fun m!1319555 () Bool)

(assert (=> b!1429370 m!1319555))

(declare-fun m!1319557 () Bool)

(assert (=> b!1429373 m!1319557))

(check-sat (not b!1429371) (not b!1429365) (not b!1429372) (not b!1429374) (not b!1429373) (not b!1429369) (not start!123306) (not b!1429370) (not b!1429368) (not b!1429366) (not b!1429375))
(check-sat)
