; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126696 () Bool)

(assert start!126696)

(declare-fun b!1486607 () Bool)

(declare-fun res!1011060 () Bool)

(declare-fun e!833384 () Bool)

(assert (=> b!1486607 (=> (not res!1011060) (not e!833384))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99512 0))(
  ( (array!99513 (arr!48026 (Array (_ BitVec 32) (_ BitVec 64))) (size!48577 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99512)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1486607 (= res!1011060 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48577 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48577 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48577 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1486608 () Bool)

(declare-fun e!833380 () Bool)

(declare-fun e!833379 () Bool)

(assert (=> b!1486608 (= e!833380 e!833379)))

(declare-fun res!1011050 () Bool)

(assert (=> b!1486608 (=> (not res!1011050) (not e!833379))))

(declare-fun lt!648490 () (_ BitVec 64))

(assert (=> b!1486608 (= res!1011050 (and (= index!646 intermediateAfterIndex!19) (= lt!648490 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1486609 () Bool)

(declare-fun res!1011046 () Bool)

(declare-fun e!833378 () Bool)

(assert (=> b!1486609 (=> (not res!1011046) (not e!833378))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12289 0))(
  ( (MissingZero!12289 (index!51547 (_ BitVec 32))) (Found!12289 (index!51548 (_ BitVec 32))) (Intermediate!12289 (undefined!13101 Bool) (index!51549 (_ BitVec 32)) (x!133132 (_ BitVec 32))) (Undefined!12289) (MissingVacant!12289 (index!51550 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99512 (_ BitVec 32)) SeekEntryResult!12289)

(assert (=> b!1486609 (= res!1011046 (= (seekEntryOrOpen!0 (select (arr!48026 a!2862) j!93) a!2862 mask!2687) (Found!12289 j!93)))))

(declare-fun b!1486610 () Bool)

(declare-fun res!1011056 () Bool)

(assert (=> b!1486610 (=> (not res!1011056) (not e!833384))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1486610 (= res!1011056 (validKeyInArray!0 (select (arr!48026 a!2862) j!93)))))

(declare-fun b!1486612 () Bool)

(declare-fun e!833382 () Bool)

(assert (=> b!1486612 (= e!833384 e!833382)))

(declare-fun res!1011042 () Bool)

(assert (=> b!1486612 (=> (not res!1011042) (not e!833382))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1486612 (= res!1011042 (= (select (store (arr!48026 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!648494 () array!99512)

(assert (=> b!1486612 (= lt!648494 (array!99513 (store (arr!48026 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48577 a!2862)))))

(declare-fun b!1486613 () Bool)

(declare-fun res!1011044 () Bool)

(declare-fun e!833376 () Bool)

(assert (=> b!1486613 (=> (not res!1011044) (not e!833376))))

(declare-fun e!833375 () Bool)

(assert (=> b!1486613 (= res!1011044 e!833375)))

(declare-fun c!137309 () Bool)

(assert (=> b!1486613 (= c!137309 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1486614 () Bool)

(declare-fun res!1011058 () Bool)

(assert (=> b!1486614 (=> (not res!1011058) (not e!833384))))

(assert (=> b!1486614 (= res!1011058 (validKeyInArray!0 (select (arr!48026 a!2862) i!1006)))))

(declare-fun b!1486615 () Bool)

(declare-fun res!1011053 () Bool)

(assert (=> b!1486615 (=> (not res!1011053) (not e!833384))))

(declare-datatypes ((List!34707 0))(
  ( (Nil!34704) (Cons!34703 (h!36080 (_ BitVec 64)) (t!49408 List!34707)) )
))
(declare-fun arrayNoDuplicates!0 (array!99512 (_ BitVec 32) List!34707) Bool)

(assert (=> b!1486615 (= res!1011053 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34704))))

(declare-fun lt!648491 () (_ BitVec 64))

(declare-fun b!1486616 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99512 (_ BitVec 32)) SeekEntryResult!12289)

(assert (=> b!1486616 (= e!833379 (= (seekEntryOrOpen!0 lt!648491 lt!648494 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648491 lt!648494 mask!2687)))))

(declare-fun b!1486617 () Bool)

(declare-fun e!833377 () Bool)

(assert (=> b!1486617 (= e!833377 e!833376)))

(declare-fun res!1011057 () Bool)

(assert (=> b!1486617 (=> (not res!1011057) (not e!833376))))

(declare-fun lt!648492 () SeekEntryResult!12289)

(assert (=> b!1486617 (= res!1011057 (= lt!648492 (Intermediate!12289 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99512 (_ BitVec 32)) SeekEntryResult!12289)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1486617 (= lt!648492 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648491 mask!2687) lt!648491 lt!648494 mask!2687))))

(assert (=> b!1486617 (= lt!648491 (select (store (arr!48026 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1486618 () Bool)

(declare-fun res!1011049 () Bool)

(assert (=> b!1486618 (=> (not res!1011049) (not e!833384))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99512 (_ BitVec 32)) Bool)

(assert (=> b!1486618 (= res!1011049 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1486619 () Bool)

(assert (=> b!1486619 (= e!833375 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648491 lt!648494 mask!2687) (seekEntryOrOpen!0 lt!648491 lt!648494 mask!2687)))))

(declare-fun b!1486620 () Bool)

(declare-fun e!833381 () Bool)

(assert (=> b!1486620 (= e!833381 true)))

(declare-fun lt!648493 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1486620 (= lt!648493 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1486621 () Bool)

(declare-fun res!1011051 () Bool)

(assert (=> b!1486621 (=> (not res!1011051) (not e!833378))))

(assert (=> b!1486621 (= res!1011051 (or (= (select (arr!48026 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48026 a!2862) intermediateBeforeIndex!19) (select (arr!48026 a!2862) j!93))))))

(declare-fun b!1486622 () Bool)

(assert (=> b!1486622 (= e!833375 (= lt!648492 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648491 lt!648494 mask!2687)))))

(declare-fun b!1486623 () Bool)

(assert (=> b!1486623 (= e!833378 e!833380)))

(declare-fun res!1011045 () Bool)

(assert (=> b!1486623 (=> res!1011045 e!833380)))

(assert (=> b!1486623 (= res!1011045 (or (and (= (select (arr!48026 a!2862) index!646) lt!648490) (= (select (arr!48026 a!2862) index!646) (select (arr!48026 a!2862) j!93))) (= (select (arr!48026 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1486623 (= lt!648490 (select (store (arr!48026 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1486624 () Bool)

(assert (=> b!1486624 (= e!833382 e!833377)))

(declare-fun res!1011059 () Bool)

(assert (=> b!1486624 (=> (not res!1011059) (not e!833377))))

(declare-fun lt!648496 () SeekEntryResult!12289)

(assert (=> b!1486624 (= res!1011059 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48026 a!2862) j!93) mask!2687) (select (arr!48026 a!2862) j!93) a!2862 mask!2687) lt!648496))))

(assert (=> b!1486624 (= lt!648496 (Intermediate!12289 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1486625 () Bool)

(assert (=> b!1486625 (= e!833376 (not e!833381))))

(declare-fun res!1011052 () Bool)

(assert (=> b!1486625 (=> res!1011052 e!833381)))

(assert (=> b!1486625 (= res!1011052 (or (and (= (select (arr!48026 a!2862) index!646) (select (store (arr!48026 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48026 a!2862) index!646) (select (arr!48026 a!2862) j!93))) (= (select (arr!48026 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1486625 e!833378))

(declare-fun res!1011055 () Bool)

(assert (=> b!1486625 (=> (not res!1011055) (not e!833378))))

(assert (=> b!1486625 (= res!1011055 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49866 0))(
  ( (Unit!49867) )
))
(declare-fun lt!648495 () Unit!49866)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99512 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49866)

(assert (=> b!1486625 (= lt!648495 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1486626 () Bool)

(declare-fun res!1011048 () Bool)

(assert (=> b!1486626 (=> (not res!1011048) (not e!833377))))

(assert (=> b!1486626 (= res!1011048 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48026 a!2862) j!93) a!2862 mask!2687) lt!648496))))

(declare-fun b!1486627 () Bool)

(declare-fun res!1011043 () Bool)

(assert (=> b!1486627 (=> (not res!1011043) (not e!833384))))

(assert (=> b!1486627 (= res!1011043 (and (= (size!48577 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48577 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48577 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1486611 () Bool)

(declare-fun res!1011054 () Bool)

(assert (=> b!1486611 (=> (not res!1011054) (not e!833376))))

(assert (=> b!1486611 (= res!1011054 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!1011047 () Bool)

(assert (=> start!126696 (=> (not res!1011047) (not e!833384))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126696 (= res!1011047 (validMask!0 mask!2687))))

(assert (=> start!126696 e!833384))

(assert (=> start!126696 true))

(declare-fun array_inv!36971 (array!99512) Bool)

(assert (=> start!126696 (array_inv!36971 a!2862)))

(assert (= (and start!126696 res!1011047) b!1486627))

(assert (= (and b!1486627 res!1011043) b!1486614))

(assert (= (and b!1486614 res!1011058) b!1486610))

(assert (= (and b!1486610 res!1011056) b!1486618))

(assert (= (and b!1486618 res!1011049) b!1486615))

(assert (= (and b!1486615 res!1011053) b!1486607))

(assert (= (and b!1486607 res!1011060) b!1486612))

(assert (= (and b!1486612 res!1011042) b!1486624))

(assert (= (and b!1486624 res!1011059) b!1486626))

(assert (= (and b!1486626 res!1011048) b!1486617))

(assert (= (and b!1486617 res!1011057) b!1486613))

(assert (= (and b!1486613 c!137309) b!1486622))

(assert (= (and b!1486613 (not c!137309)) b!1486619))

(assert (= (and b!1486613 res!1011044) b!1486611))

(assert (= (and b!1486611 res!1011054) b!1486625))

(assert (= (and b!1486625 res!1011055) b!1486609))

(assert (= (and b!1486609 res!1011046) b!1486621))

(assert (= (and b!1486621 res!1011051) b!1486623))

(assert (= (and b!1486623 (not res!1011045)) b!1486608))

(assert (= (and b!1486608 res!1011050) b!1486616))

(assert (= (and b!1486625 (not res!1011052)) b!1486620))

(declare-fun m!1371499 () Bool)

(assert (=> b!1486615 m!1371499))

(declare-fun m!1371501 () Bool)

(assert (=> b!1486623 m!1371501))

(declare-fun m!1371503 () Bool)

(assert (=> b!1486623 m!1371503))

(declare-fun m!1371505 () Bool)

(assert (=> b!1486623 m!1371505))

(declare-fun m!1371507 () Bool)

(assert (=> b!1486623 m!1371507))

(declare-fun m!1371509 () Bool)

(assert (=> b!1486620 m!1371509))

(declare-fun m!1371511 () Bool)

(assert (=> b!1486617 m!1371511))

(assert (=> b!1486617 m!1371511))

(declare-fun m!1371513 () Bool)

(assert (=> b!1486617 m!1371513))

(assert (=> b!1486617 m!1371505))

(declare-fun m!1371515 () Bool)

(assert (=> b!1486617 m!1371515))

(assert (=> b!1486610 m!1371503))

(assert (=> b!1486610 m!1371503))

(declare-fun m!1371517 () Bool)

(assert (=> b!1486610 m!1371517))

(declare-fun m!1371519 () Bool)

(assert (=> b!1486619 m!1371519))

(declare-fun m!1371521 () Bool)

(assert (=> b!1486619 m!1371521))

(declare-fun m!1371523 () Bool)

(assert (=> start!126696 m!1371523))

(declare-fun m!1371525 () Bool)

(assert (=> start!126696 m!1371525))

(declare-fun m!1371527 () Bool)

(assert (=> b!1486622 m!1371527))

(assert (=> b!1486626 m!1371503))

(assert (=> b!1486626 m!1371503))

(declare-fun m!1371529 () Bool)

(assert (=> b!1486626 m!1371529))

(assert (=> b!1486612 m!1371505))

(declare-fun m!1371531 () Bool)

(assert (=> b!1486612 m!1371531))

(assert (=> b!1486624 m!1371503))

(assert (=> b!1486624 m!1371503))

(declare-fun m!1371533 () Bool)

(assert (=> b!1486624 m!1371533))

(assert (=> b!1486624 m!1371533))

(assert (=> b!1486624 m!1371503))

(declare-fun m!1371535 () Bool)

(assert (=> b!1486624 m!1371535))

(assert (=> b!1486616 m!1371521))

(assert (=> b!1486616 m!1371519))

(assert (=> b!1486609 m!1371503))

(assert (=> b!1486609 m!1371503))

(declare-fun m!1371537 () Bool)

(assert (=> b!1486609 m!1371537))

(declare-fun m!1371539 () Bool)

(assert (=> b!1486621 m!1371539))

(assert (=> b!1486621 m!1371503))

(declare-fun m!1371541 () Bool)

(assert (=> b!1486618 m!1371541))

(declare-fun m!1371543 () Bool)

(assert (=> b!1486614 m!1371543))

(assert (=> b!1486614 m!1371543))

(declare-fun m!1371545 () Bool)

(assert (=> b!1486614 m!1371545))

(declare-fun m!1371547 () Bool)

(assert (=> b!1486625 m!1371547))

(assert (=> b!1486625 m!1371505))

(assert (=> b!1486625 m!1371507))

(assert (=> b!1486625 m!1371501))

(declare-fun m!1371549 () Bool)

(assert (=> b!1486625 m!1371549))

(assert (=> b!1486625 m!1371503))

(check-sat (not b!1486619) (not b!1486625) (not b!1486620) (not b!1486617) (not start!126696) (not b!1486615) (not b!1486609) (not b!1486626) (not b!1486622) (not b!1486614) (not b!1486618) (not b!1486610) (not b!1486616) (not b!1486624))
(check-sat)
