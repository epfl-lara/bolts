; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125808 () Bool)

(assert start!125808)

(declare-fun b!1471617 () Bool)

(declare-fun res!999489 () Bool)

(declare-fun e!826028 () Bool)

(assert (=> b!1471617 (=> (not res!999489) (not e!826028))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99059 0))(
  ( (array!99060 (arr!47810 (Array (_ BitVec 32) (_ BitVec 64))) (size!48361 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99059)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1471617 (= res!999489 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48361 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48361 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48361 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1471618 () Bool)

(declare-fun res!999484 () Bool)

(assert (=> b!1471618 (=> (not res!999484) (not e!826028))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1471618 (= res!999484 (validKeyInArray!0 (select (arr!47810 a!2862) i!1006)))))

(declare-fun b!1471619 () Bool)

(declare-fun e!826029 () Bool)

(declare-fun e!826032 () Bool)

(assert (=> b!1471619 (= e!826029 e!826032)))

(declare-fun res!999481 () Bool)

(assert (=> b!1471619 (=> (not res!999481) (not e!826032))))

(declare-datatypes ((SeekEntryResult!12073 0))(
  ( (MissingZero!12073 (index!50683 (_ BitVec 32))) (Found!12073 (index!50684 (_ BitVec 32))) (Intermediate!12073 (undefined!12885 Bool) (index!50685 (_ BitVec 32)) (x!132271 (_ BitVec 32))) (Undefined!12073) (MissingVacant!12073 (index!50686 (_ BitVec 32))) )
))
(declare-fun lt!643294 () SeekEntryResult!12073)

(assert (=> b!1471619 (= res!999481 (= lt!643294 (Intermediate!12073 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!643296 () (_ BitVec 64))

(declare-fun lt!643297 () array!99059)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99059 (_ BitVec 32)) SeekEntryResult!12073)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1471619 (= lt!643294 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643296 mask!2687) lt!643296 lt!643297 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1471619 (= lt!643296 (select (store (arr!47810 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1471620 () Bool)

(declare-fun res!999487 () Bool)

(assert (=> b!1471620 (=> (not res!999487) (not e!826028))))

(assert (=> b!1471620 (= res!999487 (and (= (size!48361 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48361 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48361 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!999476 () Bool)

(assert (=> start!125808 (=> (not res!999476) (not e!826028))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125808 (= res!999476 (validMask!0 mask!2687))))

(assert (=> start!125808 e!826028))

(assert (=> start!125808 true))

(declare-fun array_inv!36755 (array!99059) Bool)

(assert (=> start!125808 (array_inv!36755 a!2862)))

(declare-fun b!1471621 () Bool)

(assert (=> b!1471621 (= e!826032 (not true))))

(declare-fun e!826034 () Bool)

(assert (=> b!1471621 e!826034))

(declare-fun res!999486 () Bool)

(assert (=> b!1471621 (=> (not res!999486) (not e!826034))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99059 (_ BitVec 32)) Bool)

(assert (=> b!1471621 (= res!999486 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49434 0))(
  ( (Unit!49435) )
))
(declare-fun lt!643295 () Unit!49434)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99059 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49434)

(assert (=> b!1471621 (= lt!643295 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1471622 () Bool)

(declare-fun res!999483 () Bool)

(assert (=> b!1471622 (=> (not res!999483) (not e!826032))))

(assert (=> b!1471622 (= res!999483 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1471623 () Bool)

(declare-fun e!826031 () Bool)

(assert (=> b!1471623 (= e!826031 e!826029)))

(declare-fun res!999480 () Bool)

(assert (=> b!1471623 (=> (not res!999480) (not e!826029))))

(declare-fun lt!643293 () SeekEntryResult!12073)

(assert (=> b!1471623 (= res!999480 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47810 a!2862) j!93) mask!2687) (select (arr!47810 a!2862) j!93) a!2862 mask!2687) lt!643293))))

(assert (=> b!1471623 (= lt!643293 (Intermediate!12073 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1471624 () Bool)

(declare-fun res!999478 () Bool)

(assert (=> b!1471624 (=> (not res!999478) (not e!826028))))

(assert (=> b!1471624 (= res!999478 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1471625 () Bool)

(assert (=> b!1471625 (= e!826034 (or (= (select (arr!47810 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47810 a!2862) intermediateBeforeIndex!19) (select (arr!47810 a!2862) j!93))))))

(declare-fun b!1471626 () Bool)

(assert (=> b!1471626 (= e!826028 e!826031)))

(declare-fun res!999475 () Bool)

(assert (=> b!1471626 (=> (not res!999475) (not e!826031))))

(assert (=> b!1471626 (= res!999475 (= (select (store (arr!47810 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1471626 (= lt!643297 (array!99060 (store (arr!47810 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48361 a!2862)))))

(declare-fun b!1471627 () Bool)

(declare-fun res!999485 () Bool)

(assert (=> b!1471627 (=> (not res!999485) (not e!826034))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99059 (_ BitVec 32)) SeekEntryResult!12073)

(assert (=> b!1471627 (= res!999485 (= (seekEntryOrOpen!0 (select (arr!47810 a!2862) j!93) a!2862 mask!2687) (Found!12073 j!93)))))

(declare-fun b!1471628 () Bool)

(declare-fun res!999479 () Bool)

(assert (=> b!1471628 (=> (not res!999479) (not e!826032))))

(declare-fun e!826030 () Bool)

(assert (=> b!1471628 (= res!999479 e!826030)))

(declare-fun c!135587 () Bool)

(assert (=> b!1471628 (= c!135587 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1471629 () Bool)

(assert (=> b!1471629 (= e!826030 (= lt!643294 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643296 lt!643297 mask!2687)))))

(declare-fun b!1471630 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99059 (_ BitVec 32)) SeekEntryResult!12073)

(assert (=> b!1471630 (= e!826030 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643296 lt!643297 mask!2687) (seekEntryOrOpen!0 lt!643296 lt!643297 mask!2687)))))

(declare-fun b!1471631 () Bool)

(declare-fun res!999482 () Bool)

(assert (=> b!1471631 (=> (not res!999482) (not e!826028))))

(declare-datatypes ((List!34491 0))(
  ( (Nil!34488) (Cons!34487 (h!35843 (_ BitVec 64)) (t!49192 List!34491)) )
))
(declare-fun arrayNoDuplicates!0 (array!99059 (_ BitVec 32) List!34491) Bool)

(assert (=> b!1471631 (= res!999482 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34488))))

(declare-fun b!1471632 () Bool)

(declare-fun res!999477 () Bool)

(assert (=> b!1471632 (=> (not res!999477) (not e!826029))))

(assert (=> b!1471632 (= res!999477 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47810 a!2862) j!93) a!2862 mask!2687) lt!643293))))

(declare-fun b!1471633 () Bool)

(declare-fun res!999488 () Bool)

(assert (=> b!1471633 (=> (not res!999488) (not e!826028))))

(assert (=> b!1471633 (= res!999488 (validKeyInArray!0 (select (arr!47810 a!2862) j!93)))))

(assert (= (and start!125808 res!999476) b!1471620))

(assert (= (and b!1471620 res!999487) b!1471618))

(assert (= (and b!1471618 res!999484) b!1471633))

(assert (= (and b!1471633 res!999488) b!1471624))

(assert (= (and b!1471624 res!999478) b!1471631))

(assert (= (and b!1471631 res!999482) b!1471617))

(assert (= (and b!1471617 res!999489) b!1471626))

(assert (= (and b!1471626 res!999475) b!1471623))

(assert (= (and b!1471623 res!999480) b!1471632))

(assert (= (and b!1471632 res!999477) b!1471619))

(assert (= (and b!1471619 res!999481) b!1471628))

(assert (= (and b!1471628 c!135587) b!1471629))

(assert (= (and b!1471628 (not c!135587)) b!1471630))

(assert (= (and b!1471628 res!999479) b!1471622))

(assert (= (and b!1471622 res!999483) b!1471621))

(assert (= (and b!1471621 res!999486) b!1471627))

(assert (= (and b!1471627 res!999485) b!1471625))

(declare-fun m!1358461 () Bool)

(assert (=> b!1471627 m!1358461))

(assert (=> b!1471627 m!1358461))

(declare-fun m!1358463 () Bool)

(assert (=> b!1471627 m!1358463))

(declare-fun m!1358465 () Bool)

(assert (=> b!1471624 m!1358465))

(declare-fun m!1358467 () Bool)

(assert (=> b!1471626 m!1358467))

(declare-fun m!1358469 () Bool)

(assert (=> b!1471626 m!1358469))

(declare-fun m!1358471 () Bool)

(assert (=> b!1471618 m!1358471))

(assert (=> b!1471618 m!1358471))

(declare-fun m!1358473 () Bool)

(assert (=> b!1471618 m!1358473))

(declare-fun m!1358475 () Bool)

(assert (=> b!1471625 m!1358475))

(assert (=> b!1471625 m!1358461))

(declare-fun m!1358477 () Bool)

(assert (=> b!1471621 m!1358477))

(declare-fun m!1358479 () Bool)

(assert (=> b!1471621 m!1358479))

(declare-fun m!1358481 () Bool)

(assert (=> start!125808 m!1358481))

(declare-fun m!1358483 () Bool)

(assert (=> start!125808 m!1358483))

(declare-fun m!1358485 () Bool)

(assert (=> b!1471630 m!1358485))

(declare-fun m!1358487 () Bool)

(assert (=> b!1471630 m!1358487))

(declare-fun m!1358489 () Bool)

(assert (=> b!1471629 m!1358489))

(assert (=> b!1471632 m!1358461))

(assert (=> b!1471632 m!1358461))

(declare-fun m!1358491 () Bool)

(assert (=> b!1471632 m!1358491))

(declare-fun m!1358493 () Bool)

(assert (=> b!1471619 m!1358493))

(assert (=> b!1471619 m!1358493))

(declare-fun m!1358495 () Bool)

(assert (=> b!1471619 m!1358495))

(assert (=> b!1471619 m!1358467))

(declare-fun m!1358497 () Bool)

(assert (=> b!1471619 m!1358497))

(declare-fun m!1358499 () Bool)

(assert (=> b!1471631 m!1358499))

(assert (=> b!1471633 m!1358461))

(assert (=> b!1471633 m!1358461))

(declare-fun m!1358501 () Bool)

(assert (=> b!1471633 m!1358501))

(assert (=> b!1471623 m!1358461))

(assert (=> b!1471623 m!1358461))

(declare-fun m!1358503 () Bool)

(assert (=> b!1471623 m!1358503))

(assert (=> b!1471623 m!1358503))

(assert (=> b!1471623 m!1358461))

(declare-fun m!1358505 () Bool)

(assert (=> b!1471623 m!1358505))

(check-sat (not b!1471632) (not b!1471630) (not b!1471629) (not b!1471624) (not b!1471619) (not b!1471631) (not b!1471621) (not b!1471633) (not b!1471618) (not b!1471623) (not start!125808) (not b!1471627))
(check-sat)
