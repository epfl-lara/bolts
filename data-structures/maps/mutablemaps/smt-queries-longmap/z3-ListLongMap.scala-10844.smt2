; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126954 () Bool)

(assert start!126954)

(declare-fun b!1491350 () Bool)

(declare-fun e!835613 () Bool)

(declare-fun e!835607 () Bool)

(assert (=> b!1491350 (= e!835613 (not e!835607))))

(declare-fun res!1014629 () Bool)

(assert (=> b!1491350 (=> res!1014629 e!835607)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99644 0))(
  ( (array!99645 (arr!48089 (Array (_ BitVec 32) (_ BitVec 64))) (size!48640 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99644)

(assert (=> b!1491350 (= res!1014629 (or (and (= (select (arr!48089 a!2862) index!646) (select (store (arr!48089 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48089 a!2862) index!646) (select (arr!48089 a!2862) j!93))) (= (select (arr!48089 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!835606 () Bool)

(assert (=> b!1491350 e!835606))

(declare-fun res!1014635 () Bool)

(assert (=> b!1491350 (=> (not res!1014635) (not e!835606))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99644 (_ BitVec 32)) Bool)

(assert (=> b!1491350 (= res!1014635 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49992 0))(
  ( (Unit!49993) )
))
(declare-fun lt!650214 () Unit!49992)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99644 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49992)

(assert (=> b!1491350 (= lt!650214 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1491351 () Bool)

(assert (=> b!1491351 (= e!835606 (or (= (select (arr!48089 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48089 a!2862) intermediateBeforeIndex!19) (select (arr!48089 a!2862) j!93))))))

(declare-fun b!1491352 () Bool)

(declare-fun res!1014639 () Bool)

(declare-fun e!835611 () Bool)

(assert (=> b!1491352 (=> (not res!1014639) (not e!835611))))

(assert (=> b!1491352 (= res!1014639 (and (= (size!48640 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48640 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48640 a!2862)) (not (= i!1006 j!93))))))

(declare-datatypes ((SeekEntryResult!12352 0))(
  ( (MissingZero!12352 (index!51799 (_ BitVec 32))) (Found!12352 (index!51800 (_ BitVec 32))) (Intermediate!12352 (undefined!13164 Bool) (index!51801 (_ BitVec 32)) (x!133387 (_ BitVec 32))) (Undefined!12352) (MissingVacant!12352 (index!51802 (_ BitVec 32))) )
))
(declare-fun lt!650215 () SeekEntryResult!12352)

(declare-fun lt!650217 () (_ BitVec 64))

(declare-fun b!1491353 () Bool)

(declare-fun e!835610 () Bool)

(declare-fun lt!650218 () array!99644)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99644 (_ BitVec 32)) SeekEntryResult!12352)

(assert (=> b!1491353 (= e!835610 (= lt!650215 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650217 lt!650218 mask!2687)))))

(declare-fun b!1491354 () Bool)

(declare-fun res!1014630 () Bool)

(assert (=> b!1491354 (=> (not res!1014630) (not e!835611))))

(declare-datatypes ((List!34770 0))(
  ( (Nil!34767) (Cons!34766 (h!36149 (_ BitVec 64)) (t!49471 List!34770)) )
))
(declare-fun arrayNoDuplicates!0 (array!99644 (_ BitVec 32) List!34770) Bool)

(assert (=> b!1491354 (= res!1014630 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34767))))

(declare-fun b!1491355 () Bool)

(declare-fun res!1014628 () Bool)

(assert (=> b!1491355 (=> (not res!1014628) (not e!835611))))

(assert (=> b!1491355 (= res!1014628 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1491356 () Bool)

(declare-fun res!1014627 () Bool)

(declare-fun e!835608 () Bool)

(assert (=> b!1491356 (=> (not res!1014627) (not e!835608))))

(declare-fun lt!650216 () SeekEntryResult!12352)

(assert (=> b!1491356 (= res!1014627 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48089 a!2862) j!93) a!2862 mask!2687) lt!650216))))

(declare-fun b!1491357 () Bool)

(declare-fun res!1014631 () Bool)

(assert (=> b!1491357 (=> (not res!1014631) (not e!835611))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1491357 (= res!1014631 (validKeyInArray!0 (select (arr!48089 a!2862) i!1006)))))

(declare-fun b!1491359 () Bool)

(declare-fun res!1014634 () Bool)

(assert (=> b!1491359 (=> (not res!1014634) (not e!835611))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1491359 (= res!1014634 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48640 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48640 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48640 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1491360 () Bool)

(declare-fun res!1014632 () Bool)

(assert (=> b!1491360 (=> (not res!1014632) (not e!835613))))

(assert (=> b!1491360 (= res!1014632 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1491361 () Bool)

(declare-fun res!1014642 () Bool)

(assert (=> b!1491361 (=> (not res!1014642) (not e!835606))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99644 (_ BitVec 32)) SeekEntryResult!12352)

(assert (=> b!1491361 (= res!1014642 (= (seekEntryOrOpen!0 (select (arr!48089 a!2862) j!93) a!2862 mask!2687) (Found!12352 j!93)))))

(declare-fun b!1491362 () Bool)

(assert (=> b!1491362 (= e!835607 true)))

(declare-fun lt!650213 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491362 (= lt!650213 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1491363 () Bool)

(declare-fun e!835609 () Bool)

(assert (=> b!1491363 (= e!835611 e!835609)))

(declare-fun res!1014637 () Bool)

(assert (=> b!1491363 (=> (not res!1014637) (not e!835609))))

(assert (=> b!1491363 (= res!1014637 (= (select (store (arr!48089 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1491363 (= lt!650218 (array!99645 (store (arr!48089 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48640 a!2862)))))

(declare-fun b!1491364 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99644 (_ BitVec 32)) SeekEntryResult!12352)

(assert (=> b!1491364 (= e!835610 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650217 lt!650218 mask!2687) (seekEntryOrOpen!0 lt!650217 lt!650218 mask!2687)))))

(declare-fun b!1491365 () Bool)

(assert (=> b!1491365 (= e!835608 e!835613)))

(declare-fun res!1014633 () Bool)

(assert (=> b!1491365 (=> (not res!1014633) (not e!835613))))

(assert (=> b!1491365 (= res!1014633 (= lt!650215 (Intermediate!12352 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491365 (= lt!650215 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650217 mask!2687) lt!650217 lt!650218 mask!2687))))

(assert (=> b!1491365 (= lt!650217 (select (store (arr!48089 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1491358 () Bool)

(declare-fun res!1014636 () Bool)

(assert (=> b!1491358 (=> (not res!1014636) (not e!835611))))

(assert (=> b!1491358 (= res!1014636 (validKeyInArray!0 (select (arr!48089 a!2862) j!93)))))

(declare-fun res!1014638 () Bool)

(assert (=> start!126954 (=> (not res!1014638) (not e!835611))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126954 (= res!1014638 (validMask!0 mask!2687))))

(assert (=> start!126954 e!835611))

(assert (=> start!126954 true))

(declare-fun array_inv!37034 (array!99644) Bool)

(assert (=> start!126954 (array_inv!37034 a!2862)))

(declare-fun b!1491366 () Bool)

(declare-fun res!1014640 () Bool)

(assert (=> b!1491366 (=> (not res!1014640) (not e!835613))))

(assert (=> b!1491366 (= res!1014640 e!835610)))

(declare-fun c!137891 () Bool)

(assert (=> b!1491366 (= c!137891 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1491367 () Bool)

(assert (=> b!1491367 (= e!835609 e!835608)))

(declare-fun res!1014641 () Bool)

(assert (=> b!1491367 (=> (not res!1014641) (not e!835608))))

(assert (=> b!1491367 (= res!1014641 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48089 a!2862) j!93) mask!2687) (select (arr!48089 a!2862) j!93) a!2862 mask!2687) lt!650216))))

(assert (=> b!1491367 (= lt!650216 (Intermediate!12352 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!126954 res!1014638) b!1491352))

(assert (= (and b!1491352 res!1014639) b!1491357))

(assert (= (and b!1491357 res!1014631) b!1491358))

(assert (= (and b!1491358 res!1014636) b!1491355))

(assert (= (and b!1491355 res!1014628) b!1491354))

(assert (= (and b!1491354 res!1014630) b!1491359))

(assert (= (and b!1491359 res!1014634) b!1491363))

(assert (= (and b!1491363 res!1014637) b!1491367))

(assert (= (and b!1491367 res!1014641) b!1491356))

(assert (= (and b!1491356 res!1014627) b!1491365))

(assert (= (and b!1491365 res!1014633) b!1491366))

(assert (= (and b!1491366 c!137891) b!1491353))

(assert (= (and b!1491366 (not c!137891)) b!1491364))

(assert (= (and b!1491366 res!1014640) b!1491360))

(assert (= (and b!1491360 res!1014632) b!1491350))

(assert (= (and b!1491350 res!1014635) b!1491361))

(assert (= (and b!1491361 res!1014642) b!1491351))

(assert (= (and b!1491350 (not res!1014629)) b!1491362))

(declare-fun m!1375531 () Bool)

(assert (=> b!1491367 m!1375531))

(assert (=> b!1491367 m!1375531))

(declare-fun m!1375533 () Bool)

(assert (=> b!1491367 m!1375533))

(assert (=> b!1491367 m!1375533))

(assert (=> b!1491367 m!1375531))

(declare-fun m!1375535 () Bool)

(assert (=> b!1491367 m!1375535))

(declare-fun m!1375537 () Bool)

(assert (=> b!1491354 m!1375537))

(declare-fun m!1375539 () Bool)

(assert (=> b!1491365 m!1375539))

(assert (=> b!1491365 m!1375539))

(declare-fun m!1375541 () Bool)

(assert (=> b!1491365 m!1375541))

(declare-fun m!1375543 () Bool)

(assert (=> b!1491365 m!1375543))

(declare-fun m!1375545 () Bool)

(assert (=> b!1491365 m!1375545))

(declare-fun m!1375547 () Bool)

(assert (=> b!1491355 m!1375547))

(assert (=> b!1491361 m!1375531))

(assert (=> b!1491361 m!1375531))

(declare-fun m!1375549 () Bool)

(assert (=> b!1491361 m!1375549))

(declare-fun m!1375551 () Bool)

(assert (=> b!1491362 m!1375551))

(assert (=> b!1491358 m!1375531))

(assert (=> b!1491358 m!1375531))

(declare-fun m!1375553 () Bool)

(assert (=> b!1491358 m!1375553))

(declare-fun m!1375555 () Bool)

(assert (=> b!1491351 m!1375555))

(assert (=> b!1491351 m!1375531))

(declare-fun m!1375557 () Bool)

(assert (=> b!1491353 m!1375557))

(assert (=> b!1491356 m!1375531))

(assert (=> b!1491356 m!1375531))

(declare-fun m!1375559 () Bool)

(assert (=> b!1491356 m!1375559))

(declare-fun m!1375561 () Bool)

(assert (=> b!1491350 m!1375561))

(assert (=> b!1491350 m!1375543))

(declare-fun m!1375563 () Bool)

(assert (=> b!1491350 m!1375563))

(declare-fun m!1375565 () Bool)

(assert (=> b!1491350 m!1375565))

(declare-fun m!1375567 () Bool)

(assert (=> b!1491350 m!1375567))

(assert (=> b!1491350 m!1375531))

(declare-fun m!1375569 () Bool)

(assert (=> b!1491357 m!1375569))

(assert (=> b!1491357 m!1375569))

(declare-fun m!1375571 () Bool)

(assert (=> b!1491357 m!1375571))

(declare-fun m!1375573 () Bool)

(assert (=> b!1491364 m!1375573))

(declare-fun m!1375575 () Bool)

(assert (=> b!1491364 m!1375575))

(assert (=> b!1491363 m!1375543))

(declare-fun m!1375577 () Bool)

(assert (=> b!1491363 m!1375577))

(declare-fun m!1375579 () Bool)

(assert (=> start!126954 m!1375579))

(declare-fun m!1375581 () Bool)

(assert (=> start!126954 m!1375581))

(check-sat (not b!1491354) (not b!1491367) (not b!1491350) (not start!126954) (not b!1491355) (not b!1491356) (not b!1491365) (not b!1491357) (not b!1491353) (not b!1491362) (not b!1491361) (not b!1491358) (not b!1491364))
