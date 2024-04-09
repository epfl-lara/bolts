; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125130 () Bool)

(assert start!125130)

(declare-fun b!1456463 () Bool)

(declare-fun res!987034 () Bool)

(declare-fun e!819473 () Bool)

(assert (=> b!1456463 (=> (not res!987034) (not e!819473))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98495 0))(
  ( (array!98496 (arr!47531 (Array (_ BitVec 32) (_ BitVec 64))) (size!48082 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98495)

(assert (=> b!1456463 (= res!987034 (and (= (size!48082 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48082 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48082 a!2862)) (not (= i!1006 j!93))))))

(declare-fun e!819470 () Bool)

(declare-fun b!1456464 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!638292 () (_ BitVec 64))

(declare-fun lt!638294 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11806 0))(
  ( (MissingZero!11806 (index!49615 (_ BitVec 32))) (Found!11806 (index!49616 (_ BitVec 32))) (Intermediate!11806 (undefined!12618 Bool) (index!49617 (_ BitVec 32)) (x!131242 (_ BitVec 32))) (Undefined!11806) (MissingVacant!11806 (index!49618 (_ BitVec 32))) )
))
(declare-fun lt!638297 () SeekEntryResult!11806)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!638296 () array!98495)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98495 (_ BitVec 32)) SeekEntryResult!11806)

(assert (=> b!1456464 (= e!819470 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638294 intermediateAfterIndex!19 lt!638292 lt!638296 mask!2687) lt!638297)))))

(declare-fun b!1456465 () Bool)

(declare-fun res!987051 () Bool)

(declare-fun e!819465 () Bool)

(assert (=> b!1456465 (=> (not res!987051) (not e!819465))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98495 (_ BitVec 32)) SeekEntryResult!11806)

(assert (=> b!1456465 (= res!987051 (= (seekEntryOrOpen!0 (select (arr!47531 a!2862) j!93) a!2862 mask!2687) (Found!11806 j!93)))))

(declare-fun e!819464 () Bool)

(declare-fun lt!638295 () SeekEntryResult!11806)

(declare-fun b!1456466 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98495 (_ BitVec 32)) SeekEntryResult!11806)

(assert (=> b!1456466 (= e!819464 (= lt!638295 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638292 lt!638296 mask!2687)))))

(declare-fun b!1456467 () Bool)

(declare-fun e!819471 () Bool)

(declare-fun e!819468 () Bool)

(assert (=> b!1456467 (= e!819471 (not e!819468))))

(declare-fun res!987037 () Bool)

(assert (=> b!1456467 (=> res!987037 e!819468)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1456467 (= res!987037 (or (and (= (select (arr!47531 a!2862) index!646) (select (store (arr!47531 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47531 a!2862) index!646) (select (arr!47531 a!2862) j!93))) (= (select (arr!47531 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1456467 e!819465))

(declare-fun res!987038 () Bool)

(assert (=> b!1456467 (=> (not res!987038) (not e!819465))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98495 (_ BitVec 32)) Bool)

(assert (=> b!1456467 (= res!987038 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49056 0))(
  ( (Unit!49057) )
))
(declare-fun lt!638293 () Unit!49056)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98495 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49056)

(assert (=> b!1456467 (= lt!638293 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1456468 () Bool)

(assert (=> b!1456468 (= e!819470 (not (= lt!638295 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638294 lt!638292 lt!638296 mask!2687))))))

(declare-fun b!1456469 () Bool)

(declare-fun res!987048 () Bool)

(assert (=> b!1456469 (=> (not res!987048) (not e!819473))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1456469 (= res!987048 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48082 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48082 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48082 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1456470 () Bool)

(declare-fun res!987045 () Bool)

(declare-fun e!819472 () Bool)

(assert (=> b!1456470 (=> res!987045 e!819472)))

(declare-fun lt!638299 () SeekEntryResult!11806)

(assert (=> b!1456470 (= res!987045 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638294 (select (arr!47531 a!2862) j!93) a!2862 mask!2687) lt!638299)))))

(declare-fun b!1456471 () Bool)

(declare-fun res!987036 () Bool)

(assert (=> b!1456471 (=> (not res!987036) (not e!819473))))

(declare-datatypes ((List!34212 0))(
  ( (Nil!34209) (Cons!34208 (h!35558 (_ BitVec 64)) (t!48913 List!34212)) )
))
(declare-fun arrayNoDuplicates!0 (array!98495 (_ BitVec 32) List!34212) Bool)

(assert (=> b!1456471 (= res!987036 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34209))))

(declare-fun b!1456472 () Bool)

(assert (=> b!1456472 (= e!819465 (and (or (= (select (arr!47531 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47531 a!2862) intermediateBeforeIndex!19) (select (arr!47531 a!2862) j!93))) (let ((bdg!53254 (select (store (arr!47531 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47531 a!2862) index!646) bdg!53254) (= (select (arr!47531 a!2862) index!646) (select (arr!47531 a!2862) j!93))) (= (select (arr!47531 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53254 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1456473 () Bool)

(assert (=> b!1456473 (= e!819464 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638292 lt!638296 mask!2687) (seekEntryOrOpen!0 lt!638292 lt!638296 mask!2687)))))

(declare-fun b!1456474 () Bool)

(declare-fun res!987042 () Bool)

(assert (=> b!1456474 (=> (not res!987042) (not e!819473))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1456474 (= res!987042 (validKeyInArray!0 (select (arr!47531 a!2862) i!1006)))))

(declare-fun b!1456475 () Bool)

(declare-fun res!987044 () Bool)

(declare-fun e!819469 () Bool)

(assert (=> b!1456475 (=> (not res!987044) (not e!819469))))

(assert (=> b!1456475 (= res!987044 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47531 a!2862) j!93) a!2862 mask!2687) lt!638299))))

(declare-fun b!1456476 () Bool)

(declare-fun res!987047 () Bool)

(assert (=> b!1456476 (=> (not res!987047) (not e!819473))))

(assert (=> b!1456476 (= res!987047 (validKeyInArray!0 (select (arr!47531 a!2862) j!93)))))

(declare-fun b!1456477 () Bool)

(declare-fun res!987050 () Bool)

(assert (=> b!1456477 (=> (not res!987050) (not e!819471))))

(assert (=> b!1456477 (= res!987050 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1456462 () Bool)

(assert (=> b!1456462 (= e!819472 true)))

(declare-fun lt!638298 () Bool)

(assert (=> b!1456462 (= lt!638298 e!819470)))

(declare-fun c!134227 () Bool)

(assert (=> b!1456462 (= c!134227 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun res!987040 () Bool)

(assert (=> start!125130 (=> (not res!987040) (not e!819473))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125130 (= res!987040 (validMask!0 mask!2687))))

(assert (=> start!125130 e!819473))

(assert (=> start!125130 true))

(declare-fun array_inv!36476 (array!98495) Bool)

(assert (=> start!125130 (array_inv!36476 a!2862)))

(declare-fun b!1456478 () Bool)

(assert (=> b!1456478 (= e!819468 e!819472)))

(declare-fun res!987039 () Bool)

(assert (=> b!1456478 (=> res!987039 e!819472)))

(assert (=> b!1456478 (= res!987039 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638294 #b00000000000000000000000000000000) (bvsge lt!638294 (size!48082 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1456478 (= lt!638294 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1456478 (= lt!638297 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638292 lt!638296 mask!2687))))

(assert (=> b!1456478 (= lt!638297 (seekEntryOrOpen!0 lt!638292 lt!638296 mask!2687))))

(declare-fun b!1456479 () Bool)

(declare-fun e!819466 () Bool)

(assert (=> b!1456479 (= e!819473 e!819466)))

(declare-fun res!987041 () Bool)

(assert (=> b!1456479 (=> (not res!987041) (not e!819466))))

(assert (=> b!1456479 (= res!987041 (= (select (store (arr!47531 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1456479 (= lt!638296 (array!98496 (store (arr!47531 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48082 a!2862)))))

(declare-fun b!1456480 () Bool)

(declare-fun res!987046 () Bool)

(assert (=> b!1456480 (=> (not res!987046) (not e!819471))))

(assert (=> b!1456480 (= res!987046 e!819464)))

(declare-fun c!134228 () Bool)

(assert (=> b!1456480 (= c!134228 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1456481 () Bool)

(assert (=> b!1456481 (= e!819469 e!819471)))

(declare-fun res!987049 () Bool)

(assert (=> b!1456481 (=> (not res!987049) (not e!819471))))

(assert (=> b!1456481 (= res!987049 (= lt!638295 (Intermediate!11806 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1456481 (= lt!638295 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638292 mask!2687) lt!638292 lt!638296 mask!2687))))

(assert (=> b!1456481 (= lt!638292 (select (store (arr!47531 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1456482 () Bool)

(declare-fun res!987043 () Bool)

(assert (=> b!1456482 (=> (not res!987043) (not e!819473))))

(assert (=> b!1456482 (= res!987043 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1456483 () Bool)

(assert (=> b!1456483 (= e!819466 e!819469)))

(declare-fun res!987035 () Bool)

(assert (=> b!1456483 (=> (not res!987035) (not e!819469))))

(assert (=> b!1456483 (= res!987035 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47531 a!2862) j!93) mask!2687) (select (arr!47531 a!2862) j!93) a!2862 mask!2687) lt!638299))))

(assert (=> b!1456483 (= lt!638299 (Intermediate!11806 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!125130 res!987040) b!1456463))

(assert (= (and b!1456463 res!987034) b!1456474))

(assert (= (and b!1456474 res!987042) b!1456476))

(assert (= (and b!1456476 res!987047) b!1456482))

(assert (= (and b!1456482 res!987043) b!1456471))

(assert (= (and b!1456471 res!987036) b!1456469))

(assert (= (and b!1456469 res!987048) b!1456479))

(assert (= (and b!1456479 res!987041) b!1456483))

(assert (= (and b!1456483 res!987035) b!1456475))

(assert (= (and b!1456475 res!987044) b!1456481))

(assert (= (and b!1456481 res!987049) b!1456480))

(assert (= (and b!1456480 c!134228) b!1456466))

(assert (= (and b!1456480 (not c!134228)) b!1456473))

(assert (= (and b!1456480 res!987046) b!1456477))

(assert (= (and b!1456477 res!987050) b!1456467))

(assert (= (and b!1456467 res!987038) b!1456465))

(assert (= (and b!1456465 res!987051) b!1456472))

(assert (= (and b!1456467 (not res!987037)) b!1456478))

(assert (= (and b!1456478 (not res!987039)) b!1456470))

(assert (= (and b!1456470 (not res!987045)) b!1456462))

(assert (= (and b!1456462 c!134227) b!1456468))

(assert (= (and b!1456462 (not c!134227)) b!1456464))

(declare-fun m!1344607 () Bool)

(assert (=> b!1456483 m!1344607))

(assert (=> b!1456483 m!1344607))

(declare-fun m!1344609 () Bool)

(assert (=> b!1456483 m!1344609))

(assert (=> b!1456483 m!1344609))

(assert (=> b!1456483 m!1344607))

(declare-fun m!1344611 () Bool)

(assert (=> b!1456483 m!1344611))

(declare-fun m!1344613 () Bool)

(assert (=> b!1456473 m!1344613))

(declare-fun m!1344615 () Bool)

(assert (=> b!1456473 m!1344615))

(declare-fun m!1344617 () Bool)

(assert (=> b!1456478 m!1344617))

(assert (=> b!1456478 m!1344613))

(assert (=> b!1456478 m!1344615))

(declare-fun m!1344619 () Bool)

(assert (=> b!1456481 m!1344619))

(assert (=> b!1456481 m!1344619))

(declare-fun m!1344621 () Bool)

(assert (=> b!1456481 m!1344621))

(declare-fun m!1344623 () Bool)

(assert (=> b!1456481 m!1344623))

(declare-fun m!1344625 () Bool)

(assert (=> b!1456481 m!1344625))

(declare-fun m!1344627 () Bool)

(assert (=> b!1456482 m!1344627))

(assert (=> b!1456479 m!1344623))

(declare-fun m!1344629 () Bool)

(assert (=> b!1456479 m!1344629))

(declare-fun m!1344631 () Bool)

(assert (=> b!1456474 m!1344631))

(assert (=> b!1456474 m!1344631))

(declare-fun m!1344633 () Bool)

(assert (=> b!1456474 m!1344633))

(declare-fun m!1344635 () Bool)

(assert (=> start!125130 m!1344635))

(declare-fun m!1344637 () Bool)

(assert (=> start!125130 m!1344637))

(assert (=> b!1456470 m!1344607))

(assert (=> b!1456470 m!1344607))

(declare-fun m!1344639 () Bool)

(assert (=> b!1456470 m!1344639))

(assert (=> b!1456472 m!1344623))

(declare-fun m!1344641 () Bool)

(assert (=> b!1456472 m!1344641))

(declare-fun m!1344643 () Bool)

(assert (=> b!1456472 m!1344643))

(declare-fun m!1344645 () Bool)

(assert (=> b!1456472 m!1344645))

(assert (=> b!1456472 m!1344607))

(declare-fun m!1344647 () Bool)

(assert (=> b!1456471 m!1344647))

(declare-fun m!1344649 () Bool)

(assert (=> b!1456464 m!1344649))

(assert (=> b!1456465 m!1344607))

(assert (=> b!1456465 m!1344607))

(declare-fun m!1344651 () Bool)

(assert (=> b!1456465 m!1344651))

(declare-fun m!1344653 () Bool)

(assert (=> b!1456467 m!1344653))

(assert (=> b!1456467 m!1344623))

(assert (=> b!1456467 m!1344643))

(assert (=> b!1456467 m!1344645))

(declare-fun m!1344655 () Bool)

(assert (=> b!1456467 m!1344655))

(assert (=> b!1456467 m!1344607))

(declare-fun m!1344657 () Bool)

(assert (=> b!1456468 m!1344657))

(assert (=> b!1456476 m!1344607))

(assert (=> b!1456476 m!1344607))

(declare-fun m!1344659 () Bool)

(assert (=> b!1456476 m!1344659))

(assert (=> b!1456475 m!1344607))

(assert (=> b!1456475 m!1344607))

(declare-fun m!1344661 () Bool)

(assert (=> b!1456475 m!1344661))

(declare-fun m!1344663 () Bool)

(assert (=> b!1456466 m!1344663))

(check-sat (not b!1456470) (not b!1456481) (not b!1456464) (not b!1456471) (not b!1456467) (not b!1456483) (not b!1456466) (not b!1456476) (not b!1456465) (not b!1456475) (not start!125130) (not b!1456474) (not b!1456468) (not b!1456478) (not b!1456473) (not b!1456482))
(check-sat)
