; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125190 () Bool)

(assert start!125190)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!639016 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11836 0))(
  ( (MissingZero!11836 (index!49735 (_ BitVec 32))) (Found!11836 (index!49736 (_ BitVec 32))) (Intermediate!11836 (undefined!12648 Bool) (index!49737 (_ BitVec 32)) (x!131352 (_ BitVec 32))) (Undefined!11836) (MissingVacant!11836 (index!49738 (_ BitVec 32))) )
))
(declare-fun lt!639012 () SeekEntryResult!11836)

(declare-fun e!820366 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!639013 () (_ BitVec 32))

(declare-fun b!1458442 () Bool)

(declare-datatypes ((array!98555 0))(
  ( (array!98556 (arr!47561 (Array (_ BitVec 32) (_ BitVec 64))) (size!48112 (_ BitVec 32))) )
))
(declare-fun lt!639015 () array!98555)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98555 (_ BitVec 32)) SeekEntryResult!11836)

(assert (=> b!1458442 (= e!820366 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639013 intermediateAfterIndex!19 lt!639016 lt!639015 mask!2687) lt!639012)))))

(declare-fun b!1458443 () Bool)

(declare-fun res!988656 () Bool)

(declare-fun e!820364 () Bool)

(assert (=> b!1458443 (=> (not res!988656) (not e!820364))))

(declare-fun a!2862 () array!98555)

(declare-datatypes ((List!34242 0))(
  ( (Nil!34239) (Cons!34238 (h!35588 (_ BitVec 64)) (t!48943 List!34242)) )
))
(declare-fun arrayNoDuplicates!0 (array!98555 (_ BitVec 32) List!34242) Bool)

(assert (=> b!1458443 (= res!988656 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34239))))

(declare-fun b!1458444 () Bool)

(declare-fun res!988667 () Bool)

(declare-fun e!820365 () Bool)

(assert (=> b!1458444 (=> res!988667 e!820365)))

(declare-fun lt!639019 () SeekEntryResult!11836)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98555 (_ BitVec 32)) SeekEntryResult!11836)

(assert (=> b!1458444 (= res!988667 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639013 (select (arr!47561 a!2862) j!93) a!2862 mask!2687) lt!639019)))))

(declare-fun b!1458445 () Bool)

(declare-fun res!988670 () Bool)

(assert (=> b!1458445 (=> (not res!988670) (not e!820364))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1458445 (= res!988670 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48112 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48112 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48112 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1458446 () Bool)

(declare-fun res!988654 () Bool)

(declare-fun e!820371 () Bool)

(assert (=> b!1458446 (=> (not res!988654) (not e!820371))))

(assert (=> b!1458446 (= res!988654 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47561 a!2862) j!93) a!2862 mask!2687) lt!639019))))

(declare-fun b!1458447 () Bool)

(declare-fun res!988669 () Bool)

(declare-fun e!820367 () Bool)

(assert (=> b!1458447 (=> (not res!988669) (not e!820367))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98555 (_ BitVec 32)) SeekEntryResult!11836)

(assert (=> b!1458447 (= res!988669 (= (seekEntryOrOpen!0 (select (arr!47561 a!2862) j!93) a!2862 mask!2687) (Found!11836 j!93)))))

(declare-fun b!1458448 () Bool)

(declare-fun e!820369 () Bool)

(assert (=> b!1458448 (= e!820371 e!820369)))

(declare-fun res!988663 () Bool)

(assert (=> b!1458448 (=> (not res!988663) (not e!820369))))

(declare-fun lt!639018 () SeekEntryResult!11836)

(assert (=> b!1458448 (= res!988663 (= lt!639018 (Intermediate!11836 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1458448 (= lt!639018 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639016 mask!2687) lt!639016 lt!639015 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1458448 (= lt!639016 (select (store (arr!47561 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!988662 () Bool)

(assert (=> start!125190 (=> (not res!988662) (not e!820364))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125190 (= res!988662 (validMask!0 mask!2687))))

(assert (=> start!125190 e!820364))

(assert (=> start!125190 true))

(declare-fun array_inv!36506 (array!98555) Bool)

(assert (=> start!125190 (array_inv!36506 a!2862)))

(declare-fun b!1458449 () Bool)

(declare-fun e!820368 () Bool)

(assert (=> b!1458449 (= e!820368 e!820371)))

(declare-fun res!988660 () Bool)

(assert (=> b!1458449 (=> (not res!988660) (not e!820371))))

(assert (=> b!1458449 (= res!988660 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47561 a!2862) j!93) mask!2687) (select (arr!47561 a!2862) j!93) a!2862 mask!2687) lt!639019))))

(assert (=> b!1458449 (= lt!639019 (Intermediate!11836 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1458450 () Bool)

(declare-fun e!820372 () Bool)

(assert (=> b!1458450 (= e!820372 e!820365)))

(declare-fun res!988657 () Bool)

(assert (=> b!1458450 (=> res!988657 e!820365)))

(assert (=> b!1458450 (= res!988657 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639013 #b00000000000000000000000000000000) (bvsge lt!639013 (size!48112 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1458450 (= lt!639013 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1458450 (= lt!639012 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639016 lt!639015 mask!2687))))

(assert (=> b!1458450 (= lt!639012 (seekEntryOrOpen!0 lt!639016 lt!639015 mask!2687))))

(declare-fun b!1458451 () Bool)

(assert (=> b!1458451 (= e!820367 (and (or (= (select (arr!47561 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47561 a!2862) intermediateBeforeIndex!19) (select (arr!47561 a!2862) j!93))) (let ((bdg!53434 (select (store (arr!47561 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47561 a!2862) index!646) bdg!53434) (= (select (arr!47561 a!2862) index!646) (select (arr!47561 a!2862) j!93))) (= (select (arr!47561 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53434 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1458452 () Bool)

(assert (=> b!1458452 (= e!820365 true)))

(declare-fun lt!639017 () Bool)

(assert (=> b!1458452 (= lt!639017 e!820366)))

(declare-fun c!134407 () Bool)

(assert (=> b!1458452 (= c!134407 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1458453 () Bool)

(declare-fun res!988661 () Bool)

(assert (=> b!1458453 (=> (not res!988661) (not e!820364))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1458453 (= res!988661 (validKeyInArray!0 (select (arr!47561 a!2862) i!1006)))))

(declare-fun b!1458454 () Bool)

(assert (=> b!1458454 (= e!820364 e!820368)))

(declare-fun res!988664 () Bool)

(assert (=> b!1458454 (=> (not res!988664) (not e!820368))))

(assert (=> b!1458454 (= res!988664 (= (select (store (arr!47561 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1458454 (= lt!639015 (array!98556 (store (arr!47561 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48112 a!2862)))))

(declare-fun b!1458455 () Bool)

(declare-fun res!988671 () Bool)

(assert (=> b!1458455 (=> (not res!988671) (not e!820369))))

(declare-fun e!820373 () Bool)

(assert (=> b!1458455 (= res!988671 e!820373)))

(declare-fun c!134408 () Bool)

(assert (=> b!1458455 (= c!134408 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1458456 () Bool)

(declare-fun res!988658 () Bool)

(assert (=> b!1458456 (=> (not res!988658) (not e!820364))))

(assert (=> b!1458456 (= res!988658 (validKeyInArray!0 (select (arr!47561 a!2862) j!93)))))

(declare-fun b!1458457 () Bool)

(assert (=> b!1458457 (= e!820369 (not e!820372))))

(declare-fun res!988659 () Bool)

(assert (=> b!1458457 (=> res!988659 e!820372)))

(assert (=> b!1458457 (= res!988659 (or (and (= (select (arr!47561 a!2862) index!646) (select (store (arr!47561 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47561 a!2862) index!646) (select (arr!47561 a!2862) j!93))) (= (select (arr!47561 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1458457 e!820367))

(declare-fun res!988655 () Bool)

(assert (=> b!1458457 (=> (not res!988655) (not e!820367))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98555 (_ BitVec 32)) Bool)

(assert (=> b!1458457 (= res!988655 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49116 0))(
  ( (Unit!49117) )
))
(declare-fun lt!639014 () Unit!49116)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98555 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49116)

(assert (=> b!1458457 (= lt!639014 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1458458 () Bool)

(assert (=> b!1458458 (= e!820366 (not (= lt!639018 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639013 lt!639016 lt!639015 mask!2687))))))

(declare-fun b!1458459 () Bool)

(assert (=> b!1458459 (= e!820373 (= lt!639018 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639016 lt!639015 mask!2687)))))

(declare-fun b!1458460 () Bool)

(assert (=> b!1458460 (= e!820373 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639016 lt!639015 mask!2687) (seekEntryOrOpen!0 lt!639016 lt!639015 mask!2687)))))

(declare-fun b!1458461 () Bool)

(declare-fun res!988666 () Bool)

(assert (=> b!1458461 (=> (not res!988666) (not e!820369))))

(assert (=> b!1458461 (= res!988666 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1458462 () Bool)

(declare-fun res!988665 () Bool)

(assert (=> b!1458462 (=> (not res!988665) (not e!820364))))

(assert (=> b!1458462 (= res!988665 (and (= (size!48112 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48112 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48112 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1458463 () Bool)

(declare-fun res!988668 () Bool)

(assert (=> b!1458463 (=> (not res!988668) (not e!820364))))

(assert (=> b!1458463 (= res!988668 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!125190 res!988662) b!1458462))

(assert (= (and b!1458462 res!988665) b!1458453))

(assert (= (and b!1458453 res!988661) b!1458456))

(assert (= (and b!1458456 res!988658) b!1458463))

(assert (= (and b!1458463 res!988668) b!1458443))

(assert (= (and b!1458443 res!988656) b!1458445))

(assert (= (and b!1458445 res!988670) b!1458454))

(assert (= (and b!1458454 res!988664) b!1458449))

(assert (= (and b!1458449 res!988660) b!1458446))

(assert (= (and b!1458446 res!988654) b!1458448))

(assert (= (and b!1458448 res!988663) b!1458455))

(assert (= (and b!1458455 c!134408) b!1458459))

(assert (= (and b!1458455 (not c!134408)) b!1458460))

(assert (= (and b!1458455 res!988671) b!1458461))

(assert (= (and b!1458461 res!988666) b!1458457))

(assert (= (and b!1458457 res!988655) b!1458447))

(assert (= (and b!1458447 res!988669) b!1458451))

(assert (= (and b!1458457 (not res!988659)) b!1458450))

(assert (= (and b!1458450 (not res!988657)) b!1458444))

(assert (= (and b!1458444 (not res!988667)) b!1458452))

(assert (= (and b!1458452 c!134407) b!1458458))

(assert (= (and b!1458452 (not c!134407)) b!1458442))

(declare-fun m!1346347 () Bool)

(assert (=> b!1458443 m!1346347))

(declare-fun m!1346349 () Bool)

(assert (=> b!1458463 m!1346349))

(declare-fun m!1346351 () Bool)

(assert (=> b!1458453 m!1346351))

(assert (=> b!1458453 m!1346351))

(declare-fun m!1346353 () Bool)

(assert (=> b!1458453 m!1346353))

(declare-fun m!1346355 () Bool)

(assert (=> b!1458456 m!1346355))

(assert (=> b!1458456 m!1346355))

(declare-fun m!1346357 () Bool)

(assert (=> b!1458456 m!1346357))

(declare-fun m!1346359 () Bool)

(assert (=> b!1458450 m!1346359))

(declare-fun m!1346361 () Bool)

(assert (=> b!1458450 m!1346361))

(declare-fun m!1346363 () Bool)

(assert (=> b!1458450 m!1346363))

(assert (=> b!1458444 m!1346355))

(assert (=> b!1458444 m!1346355))

(declare-fun m!1346365 () Bool)

(assert (=> b!1458444 m!1346365))

(declare-fun m!1346367 () Bool)

(assert (=> start!125190 m!1346367))

(declare-fun m!1346369 () Bool)

(assert (=> start!125190 m!1346369))

(assert (=> b!1458447 m!1346355))

(assert (=> b!1458447 m!1346355))

(declare-fun m!1346371 () Bool)

(assert (=> b!1458447 m!1346371))

(declare-fun m!1346373 () Bool)

(assert (=> b!1458451 m!1346373))

(declare-fun m!1346375 () Bool)

(assert (=> b!1458451 m!1346375))

(declare-fun m!1346377 () Bool)

(assert (=> b!1458451 m!1346377))

(declare-fun m!1346379 () Bool)

(assert (=> b!1458451 m!1346379))

(assert (=> b!1458451 m!1346355))

(declare-fun m!1346381 () Bool)

(assert (=> b!1458457 m!1346381))

(assert (=> b!1458457 m!1346373))

(assert (=> b!1458457 m!1346377))

(assert (=> b!1458457 m!1346379))

(declare-fun m!1346383 () Bool)

(assert (=> b!1458457 m!1346383))

(assert (=> b!1458457 m!1346355))

(assert (=> b!1458454 m!1346373))

(declare-fun m!1346385 () Bool)

(assert (=> b!1458454 m!1346385))

(declare-fun m!1346387 () Bool)

(assert (=> b!1458448 m!1346387))

(assert (=> b!1458448 m!1346387))

(declare-fun m!1346389 () Bool)

(assert (=> b!1458448 m!1346389))

(assert (=> b!1458448 m!1346373))

(declare-fun m!1346391 () Bool)

(assert (=> b!1458448 m!1346391))

(declare-fun m!1346393 () Bool)

(assert (=> b!1458458 m!1346393))

(declare-fun m!1346395 () Bool)

(assert (=> b!1458442 m!1346395))

(assert (=> b!1458449 m!1346355))

(assert (=> b!1458449 m!1346355))

(declare-fun m!1346397 () Bool)

(assert (=> b!1458449 m!1346397))

(assert (=> b!1458449 m!1346397))

(assert (=> b!1458449 m!1346355))

(declare-fun m!1346399 () Bool)

(assert (=> b!1458449 m!1346399))

(assert (=> b!1458446 m!1346355))

(assert (=> b!1458446 m!1346355))

(declare-fun m!1346401 () Bool)

(assert (=> b!1458446 m!1346401))

(assert (=> b!1458460 m!1346361))

(assert (=> b!1458460 m!1346363))

(declare-fun m!1346403 () Bool)

(assert (=> b!1458459 m!1346403))

(check-sat (not b!1458456) (not b!1458448) (not b!1458460) (not b!1458458) (not b!1458453) (not b!1458443) (not b!1458447) (not b!1458457) (not b!1458450) (not start!125190) (not b!1458459) (not b!1458442) (not b!1458446) (not b!1458449) (not b!1458444) (not b!1458463))
(check-sat)
