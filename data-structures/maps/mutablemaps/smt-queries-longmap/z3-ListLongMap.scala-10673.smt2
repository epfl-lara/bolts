; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125220 () Bool)

(assert start!125220)

(declare-fun b!1459432 () Bool)

(declare-datatypes ((SeekEntryResult!11851 0))(
  ( (MissingZero!11851 (index!49795 (_ BitVec 32))) (Found!11851 (index!49796 (_ BitVec 32))) (Intermediate!11851 (undefined!12663 Bool) (index!49797 (_ BitVec 32)) (x!131407 (_ BitVec 32))) (Undefined!11851) (MissingVacant!11851 (index!49798 (_ BitVec 32))) )
))
(declare-fun lt!639415 () SeekEntryResult!11851)

(declare-fun lt!639417 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98585 0))(
  ( (array!98586 (arr!47576 (Array (_ BitVec 32) (_ BitVec 64))) (size!48127 (_ BitVec 32))) )
))
(declare-fun lt!639421 () array!98585)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!820779 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98585 (_ BitVec 32)) SeekEntryResult!11851)

(assert (=> b!1459432 (= e!820779 (= lt!639415 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639417 lt!639421 mask!2687)))))

(declare-fun e!820778 () Bool)

(declare-fun b!1459433 () Bool)

(declare-fun lt!639419 () (_ BitVec 32))

(assert (=> b!1459433 (= e!820778 (not (= lt!639415 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639419 lt!639417 lt!639421 mask!2687))))))

(declare-fun b!1459434 () Bool)

(declare-fun e!820773 () Bool)

(declare-fun e!820776 () Bool)

(assert (=> b!1459434 (= e!820773 (not e!820776))))

(declare-fun res!989478 () Bool)

(assert (=> b!1459434 (=> res!989478 e!820776)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98585)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1459434 (= res!989478 (or (and (= (select (arr!47576 a!2862) index!646) (select (store (arr!47576 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47576 a!2862) index!646) (select (arr!47576 a!2862) j!93))) (= (select (arr!47576 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun lt!639413 () SeekEntryResult!11851)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1459434 (and (= lt!639413 (Found!11851 j!93)) (or (= (select (arr!47576 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47576 a!2862) intermediateBeforeIndex!19) (select (arr!47576 a!2862) j!93))) (let ((bdg!53515 (select (store (arr!47576 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47576 a!2862) index!646) bdg!53515) (= (select (arr!47576 a!2862) index!646) (select (arr!47576 a!2862) j!93))) (= (select (arr!47576 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53515 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98585 (_ BitVec 32)) SeekEntryResult!11851)

(assert (=> b!1459434 (= lt!639413 (seekEntryOrOpen!0 (select (arr!47576 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98585 (_ BitVec 32)) Bool)

(assert (=> b!1459434 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49146 0))(
  ( (Unit!49147) )
))
(declare-fun lt!639414 () Unit!49146)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98585 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49146)

(assert (=> b!1459434 (= lt!639414 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1459435 () Bool)

(declare-fun e!820780 () Bool)

(assert (=> b!1459435 (= e!820780 true)))

(declare-fun lt!639420 () SeekEntryResult!11851)

(assert (=> b!1459435 (= lt!639413 lt!639420)))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun lt!639418 () Unit!49146)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98585 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49146)

(assert (=> b!1459435 (= lt!639418 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!639419 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1459436 () Bool)

(declare-fun res!989477 () Bool)

(declare-fun e!820774 () Bool)

(assert (=> b!1459436 (=> (not res!989477) (not e!820774))))

(declare-fun lt!639416 () SeekEntryResult!11851)

(assert (=> b!1459436 (= res!989477 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47576 a!2862) j!93) a!2862 mask!2687) lt!639416))))

(declare-fun b!1459437 () Bool)

(declare-fun res!989476 () Bool)

(assert (=> b!1459437 (=> res!989476 e!820780)))

(assert (=> b!1459437 (= res!989476 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1459438 () Bool)

(declare-fun res!989471 () Bool)

(declare-fun e!820775 () Bool)

(assert (=> b!1459438 (=> (not res!989471) (not e!820775))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1459438 (= res!989471 (validKeyInArray!0 (select (arr!47576 a!2862) j!93)))))

(declare-fun b!1459439 () Bool)

(declare-fun res!989466 () Bool)

(assert (=> b!1459439 (=> (not res!989466) (not e!820773))))

(assert (=> b!1459439 (= res!989466 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1459440 () Bool)

(declare-fun res!989469 () Bool)

(assert (=> b!1459440 (=> (not res!989469) (not e!820773))))

(assert (=> b!1459440 (= res!989469 e!820779)))

(declare-fun c!134497 () Bool)

(assert (=> b!1459440 (= c!134497 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1459441 () Bool)

(assert (=> b!1459441 (= e!820776 e!820780)))

(declare-fun res!989474 () Bool)

(assert (=> b!1459441 (=> res!989474 e!820780)))

(assert (=> b!1459441 (= res!989474 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639419 #b00000000000000000000000000000000) (bvsge lt!639419 (size!48127 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1459441 (= lt!639419 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98585 (_ BitVec 32)) SeekEntryResult!11851)

(assert (=> b!1459441 (= lt!639420 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639417 lt!639421 mask!2687))))

(assert (=> b!1459441 (= lt!639420 (seekEntryOrOpen!0 lt!639417 lt!639421 mask!2687))))

(declare-fun b!1459442 () Bool)

(declare-fun e!820781 () Bool)

(assert (=> b!1459442 (= e!820781 e!820774)))

(declare-fun res!989470 () Bool)

(assert (=> b!1459442 (=> (not res!989470) (not e!820774))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1459442 (= res!989470 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47576 a!2862) j!93) mask!2687) (select (arr!47576 a!2862) j!93) a!2862 mask!2687) lt!639416))))

(assert (=> b!1459442 (= lt!639416 (Intermediate!11851 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1459443 () Bool)

(declare-fun res!989464 () Bool)

(assert (=> b!1459443 (=> (not res!989464) (not e!820775))))

(assert (=> b!1459443 (= res!989464 (validKeyInArray!0 (select (arr!47576 a!2862) i!1006)))))

(declare-fun b!1459444 () Bool)

(assert (=> b!1459444 (= e!820774 e!820773)))

(declare-fun res!989480 () Bool)

(assert (=> b!1459444 (=> (not res!989480) (not e!820773))))

(assert (=> b!1459444 (= res!989480 (= lt!639415 (Intermediate!11851 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1459444 (= lt!639415 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639417 mask!2687) lt!639417 lt!639421 mask!2687))))

(assert (=> b!1459444 (= lt!639417 (select (store (arr!47576 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1459445 () Bool)

(assert (=> b!1459445 (= e!820779 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639417 lt!639421 mask!2687) (seekEntryOrOpen!0 lt!639417 lt!639421 mask!2687)))))

(declare-fun b!1459446 () Bool)

(declare-fun res!989479 () Bool)

(assert (=> b!1459446 (=> res!989479 e!820780)))

(assert (=> b!1459446 (= res!989479 e!820778)))

(declare-fun c!134498 () Bool)

(assert (=> b!1459446 (= c!134498 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1459447 () Bool)

(declare-fun res!989481 () Bool)

(assert (=> b!1459447 (=> (not res!989481) (not e!820775))))

(assert (=> b!1459447 (= res!989481 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48127 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48127 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48127 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1459448 () Bool)

(declare-fun res!989475 () Bool)

(assert (=> b!1459448 (=> res!989475 e!820780)))

(assert (=> b!1459448 (= res!989475 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639419 (select (arr!47576 a!2862) j!93) a!2862 mask!2687) lt!639416)))))

(declare-fun b!1459449 () Bool)

(declare-fun res!989472 () Bool)

(assert (=> b!1459449 (=> (not res!989472) (not e!820775))))

(assert (=> b!1459449 (= res!989472 (and (= (size!48127 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48127 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48127 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1459450 () Bool)

(declare-fun res!989467 () Bool)

(assert (=> b!1459450 (=> (not res!989467) (not e!820775))))

(declare-datatypes ((List!34257 0))(
  ( (Nil!34254) (Cons!34253 (h!35603 (_ BitVec 64)) (t!48958 List!34257)) )
))
(declare-fun arrayNoDuplicates!0 (array!98585 (_ BitVec 32) List!34257) Bool)

(assert (=> b!1459450 (= res!989467 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34254))))

(declare-fun res!989465 () Bool)

(assert (=> start!125220 (=> (not res!989465) (not e!820775))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125220 (= res!989465 (validMask!0 mask!2687))))

(assert (=> start!125220 e!820775))

(assert (=> start!125220 true))

(declare-fun array_inv!36521 (array!98585) Bool)

(assert (=> start!125220 (array_inv!36521 a!2862)))

(declare-fun b!1459451 () Bool)

(assert (=> b!1459451 (= e!820775 e!820781)))

(declare-fun res!989473 () Bool)

(assert (=> b!1459451 (=> (not res!989473) (not e!820781))))

(assert (=> b!1459451 (= res!989473 (= (select (store (arr!47576 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1459451 (= lt!639421 (array!98586 (store (arr!47576 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48127 a!2862)))))

(declare-fun b!1459452 () Bool)

(assert (=> b!1459452 (= e!820778 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639419 intermediateAfterIndex!19 lt!639417 lt!639421 mask!2687) lt!639420)))))

(declare-fun b!1459453 () Bool)

(declare-fun res!989468 () Bool)

(assert (=> b!1459453 (=> (not res!989468) (not e!820775))))

(assert (=> b!1459453 (= res!989468 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!125220 res!989465) b!1459449))

(assert (= (and b!1459449 res!989472) b!1459443))

(assert (= (and b!1459443 res!989464) b!1459438))

(assert (= (and b!1459438 res!989471) b!1459453))

(assert (= (and b!1459453 res!989468) b!1459450))

(assert (= (and b!1459450 res!989467) b!1459447))

(assert (= (and b!1459447 res!989481) b!1459451))

(assert (= (and b!1459451 res!989473) b!1459442))

(assert (= (and b!1459442 res!989470) b!1459436))

(assert (= (and b!1459436 res!989477) b!1459444))

(assert (= (and b!1459444 res!989480) b!1459440))

(assert (= (and b!1459440 c!134497) b!1459432))

(assert (= (and b!1459440 (not c!134497)) b!1459445))

(assert (= (and b!1459440 res!989469) b!1459439))

(assert (= (and b!1459439 res!989466) b!1459434))

(assert (= (and b!1459434 (not res!989478)) b!1459441))

(assert (= (and b!1459441 (not res!989474)) b!1459448))

(assert (= (and b!1459448 (not res!989475)) b!1459446))

(assert (= (and b!1459446 c!134498) b!1459433))

(assert (= (and b!1459446 (not c!134498)) b!1459452))

(assert (= (and b!1459446 (not res!989479)) b!1459437))

(assert (= (and b!1459437 (not res!989476)) b!1459435))

(declare-fun m!1347243 () Bool)

(assert (=> b!1459432 m!1347243))

(declare-fun m!1347245 () Bool)

(assert (=> b!1459441 m!1347245))

(declare-fun m!1347247 () Bool)

(assert (=> b!1459441 m!1347247))

(declare-fun m!1347249 () Bool)

(assert (=> b!1459441 m!1347249))

(declare-fun m!1347251 () Bool)

(assert (=> b!1459452 m!1347251))

(declare-fun m!1347253 () Bool)

(assert (=> b!1459434 m!1347253))

(declare-fun m!1347255 () Bool)

(assert (=> b!1459434 m!1347255))

(declare-fun m!1347257 () Bool)

(assert (=> b!1459434 m!1347257))

(declare-fun m!1347259 () Bool)

(assert (=> b!1459434 m!1347259))

(declare-fun m!1347261 () Bool)

(assert (=> b!1459434 m!1347261))

(declare-fun m!1347263 () Bool)

(assert (=> b!1459434 m!1347263))

(declare-fun m!1347265 () Bool)

(assert (=> b!1459434 m!1347265))

(declare-fun m!1347267 () Bool)

(assert (=> b!1459434 m!1347267))

(assert (=> b!1459434 m!1347263))

(declare-fun m!1347269 () Bool)

(assert (=> b!1459433 m!1347269))

(declare-fun m!1347271 () Bool)

(assert (=> start!125220 m!1347271))

(declare-fun m!1347273 () Bool)

(assert (=> start!125220 m!1347273))

(assert (=> b!1459451 m!1347255))

(declare-fun m!1347275 () Bool)

(assert (=> b!1459451 m!1347275))

(declare-fun m!1347277 () Bool)

(assert (=> b!1459435 m!1347277))

(declare-fun m!1347279 () Bool)

(assert (=> b!1459444 m!1347279))

(assert (=> b!1459444 m!1347279))

(declare-fun m!1347281 () Bool)

(assert (=> b!1459444 m!1347281))

(assert (=> b!1459444 m!1347255))

(declare-fun m!1347283 () Bool)

(assert (=> b!1459444 m!1347283))

(assert (=> b!1459445 m!1347247))

(assert (=> b!1459445 m!1347249))

(assert (=> b!1459442 m!1347263))

(assert (=> b!1459442 m!1347263))

(declare-fun m!1347285 () Bool)

(assert (=> b!1459442 m!1347285))

(assert (=> b!1459442 m!1347285))

(assert (=> b!1459442 m!1347263))

(declare-fun m!1347287 () Bool)

(assert (=> b!1459442 m!1347287))

(assert (=> b!1459438 m!1347263))

(assert (=> b!1459438 m!1347263))

(declare-fun m!1347289 () Bool)

(assert (=> b!1459438 m!1347289))

(declare-fun m!1347291 () Bool)

(assert (=> b!1459453 m!1347291))

(assert (=> b!1459436 m!1347263))

(assert (=> b!1459436 m!1347263))

(declare-fun m!1347293 () Bool)

(assert (=> b!1459436 m!1347293))

(declare-fun m!1347295 () Bool)

(assert (=> b!1459443 m!1347295))

(assert (=> b!1459443 m!1347295))

(declare-fun m!1347297 () Bool)

(assert (=> b!1459443 m!1347297))

(declare-fun m!1347299 () Bool)

(assert (=> b!1459450 m!1347299))

(assert (=> b!1459448 m!1347263))

(assert (=> b!1459448 m!1347263))

(declare-fun m!1347301 () Bool)

(assert (=> b!1459448 m!1347301))

(check-sat (not b!1459452) (not b!1459434) (not b!1459432) (not b!1459444) (not b!1459436) (not b!1459433) (not b!1459435) (not b!1459448) (not b!1459443) (not b!1459453) (not b!1459438) (not b!1459450) (not start!125220) (not b!1459442) (not b!1459445) (not b!1459441))
(check-sat)
