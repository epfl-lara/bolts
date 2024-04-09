; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124834 () Bool)

(assert start!124834)

(declare-fun b!1447714 () Bool)

(declare-fun res!979449 () Bool)

(declare-fun e!815358 () Bool)

(assert (=> b!1447714 (=> (not res!979449) (not e!815358))))

(declare-datatypes ((array!98199 0))(
  ( (array!98200 (arr!47383 (Array (_ BitVec 32) (_ BitVec 64))) (size!47934 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98199)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1447714 (= res!979449 (validKeyInArray!0 (select (arr!47383 a!2862) i!1006)))))

(declare-fun res!979452 () Bool)

(assert (=> start!124834 (=> (not res!979452) (not e!815358))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124834 (= res!979452 (validMask!0 mask!2687))))

(assert (=> start!124834 e!815358))

(assert (=> start!124834 true))

(declare-fun array_inv!36328 (array!98199) Bool)

(assert (=> start!124834 (array_inv!36328 a!2862)))

(declare-fun b!1447715 () Bool)

(declare-fun e!815360 () Bool)

(declare-fun e!815361 () Bool)

(assert (=> b!1447715 (= e!815360 e!815361)))

(declare-fun res!979446 () Bool)

(assert (=> b!1447715 (=> res!979446 e!815361)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1447715 (= res!979446 (or (and (= (select (arr!47383 a!2862) index!646) (select (store (arr!47383 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47383 a!2862) index!646) (select (arr!47383 a!2862) j!93))) (not (= (select (arr!47383 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1447716 () Bool)

(declare-fun e!815366 () Bool)

(declare-fun e!815357 () Bool)

(assert (=> b!1447716 (= e!815366 e!815357)))

(declare-fun res!979445 () Bool)

(assert (=> b!1447716 (=> (not res!979445) (not e!815357))))

(declare-datatypes ((SeekEntryResult!11658 0))(
  ( (MissingZero!11658 (index!49023 (_ BitVec 32))) (Found!11658 (index!49024 (_ BitVec 32))) (Intermediate!11658 (undefined!12470 Bool) (index!49025 (_ BitVec 32)) (x!130702 (_ BitVec 32))) (Undefined!11658) (MissingVacant!11658 (index!49026 (_ BitVec 32))) )
))
(declare-fun lt!635236 () SeekEntryResult!11658)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98199 (_ BitVec 32)) SeekEntryResult!11658)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1447716 (= res!979445 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47383 a!2862) j!93) mask!2687) (select (arr!47383 a!2862) j!93) a!2862 mask!2687) lt!635236))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1447716 (= lt!635236 (Intermediate!11658 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1447717 () Bool)

(declare-fun res!979444 () Bool)

(assert (=> b!1447717 (=> (not res!979444) (not e!815358))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98199 (_ BitVec 32)) Bool)

(assert (=> b!1447717 (= res!979444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1447718 () Bool)

(declare-fun res!979437 () Bool)

(assert (=> b!1447718 (=> (not res!979437) (not e!815357))))

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1447718 (= res!979437 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47383 a!2862) j!93) a!2862 mask!2687) lt!635236))))

(declare-fun b!1447719 () Bool)

(declare-fun e!815364 () Bool)

(assert (=> b!1447719 (= e!815364 true)))

(declare-fun lt!635237 () SeekEntryResult!11658)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98199 (_ BitVec 32)) SeekEntryResult!11658)

(assert (=> b!1447719 (= lt!635237 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47383 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1447720 () Bool)

(declare-fun res!979440 () Bool)

(assert (=> b!1447720 (=> (not res!979440) (not e!815358))))

(assert (=> b!1447720 (= res!979440 (validKeyInArray!0 (select (arr!47383 a!2862) j!93)))))

(declare-fun b!1447721 () Bool)

(declare-fun e!815359 () Bool)

(assert (=> b!1447721 (= e!815359 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1447722 () Bool)

(declare-fun res!979436 () Bool)

(assert (=> b!1447722 (=> (not res!979436) (not e!815358))))

(declare-datatypes ((List!34064 0))(
  ( (Nil!34061) (Cons!34060 (h!35410 (_ BitVec 64)) (t!48765 List!34064)) )
))
(declare-fun arrayNoDuplicates!0 (array!98199 (_ BitVec 32) List!34064) Bool)

(assert (=> b!1447722 (= res!979436 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34061))))

(declare-fun lt!635239 () (_ BitVec 64))

(declare-fun lt!635235 () SeekEntryResult!11658)

(declare-fun lt!635238 () array!98199)

(declare-fun e!815365 () Bool)

(declare-fun b!1447723 () Bool)

(assert (=> b!1447723 (= e!815365 (= lt!635235 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635239 lt!635238 mask!2687)))))

(declare-fun b!1447724 () Bool)

(declare-fun res!979451 () Bool)

(assert (=> b!1447724 (=> (not res!979451) (not e!815358))))

(assert (=> b!1447724 (= res!979451 (and (= (size!47934 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47934 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47934 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1447725 () Bool)

(declare-fun res!979442 () Bool)

(declare-fun e!815362 () Bool)

(assert (=> b!1447725 (=> (not res!979442) (not e!815362))))

(assert (=> b!1447725 (= res!979442 e!815365)))

(declare-fun c!133652 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1447725 (= c!133652 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1447726 () Bool)

(declare-fun res!979439 () Bool)

(assert (=> b!1447726 (=> (not res!979439) (not e!815362))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1447726 (= res!979439 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1447727 () Bool)

(declare-fun res!979443 () Bool)

(assert (=> b!1447727 (=> (not res!979443) (not e!815358))))

(assert (=> b!1447727 (= res!979443 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47934 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47934 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47934 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1447728 () Bool)

(assert (=> b!1447728 (= e!815362 (not e!815364))))

(declare-fun res!979448 () Bool)

(assert (=> b!1447728 (=> res!979448 e!815364)))

(assert (=> b!1447728 (= res!979448 (or (and (= (select (arr!47383 a!2862) index!646) (select (store (arr!47383 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47383 a!2862) index!646) (select (arr!47383 a!2862) j!93))) (not (= (select (arr!47383 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47383 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1447728 e!815360))

(declare-fun res!979441 () Bool)

(assert (=> b!1447728 (=> (not res!979441) (not e!815360))))

(declare-fun lt!635233 () SeekEntryResult!11658)

(assert (=> b!1447728 (= res!979441 (and (= lt!635233 (Found!11658 j!93)) (or (= (select (arr!47383 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47383 a!2862) intermediateBeforeIndex!19) (select (arr!47383 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98199 (_ BitVec 32)) SeekEntryResult!11658)

(assert (=> b!1447728 (= lt!635233 (seekEntryOrOpen!0 (select (arr!47383 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1447728 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48760 0))(
  ( (Unit!48761) )
))
(declare-fun lt!635234 () Unit!48760)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98199 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48760)

(assert (=> b!1447728 (= lt!635234 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1447729 () Bool)

(assert (=> b!1447729 (= e!815357 e!815362)))

(declare-fun res!979447 () Bool)

(assert (=> b!1447729 (=> (not res!979447) (not e!815362))))

(assert (=> b!1447729 (= res!979447 (= lt!635235 (Intermediate!11658 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1447729 (= lt!635235 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635239 mask!2687) lt!635239 lt!635238 mask!2687))))

(assert (=> b!1447729 (= lt!635239 (select (store (arr!47383 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1447730 () Bool)

(assert (=> b!1447730 (= e!815365 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635239 lt!635238 mask!2687) (seekEntryOrOpen!0 lt!635239 lt!635238 mask!2687)))))

(declare-fun b!1447731 () Bool)

(assert (=> b!1447731 (= e!815358 e!815366)))

(declare-fun res!979450 () Bool)

(assert (=> b!1447731 (=> (not res!979450) (not e!815366))))

(assert (=> b!1447731 (= res!979450 (= (select (store (arr!47383 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1447731 (= lt!635238 (array!98200 (store (arr!47383 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47934 a!2862)))))

(declare-fun b!1447732 () Bool)

(assert (=> b!1447732 (= e!815361 e!815359)))

(declare-fun res!979438 () Bool)

(assert (=> b!1447732 (=> (not res!979438) (not e!815359))))

(assert (=> b!1447732 (= res!979438 (= lt!635233 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47383 a!2862) j!93) a!2862 mask!2687)))))

(assert (= (and start!124834 res!979452) b!1447724))

(assert (= (and b!1447724 res!979451) b!1447714))

(assert (= (and b!1447714 res!979449) b!1447720))

(assert (= (and b!1447720 res!979440) b!1447717))

(assert (= (and b!1447717 res!979444) b!1447722))

(assert (= (and b!1447722 res!979436) b!1447727))

(assert (= (and b!1447727 res!979443) b!1447731))

(assert (= (and b!1447731 res!979450) b!1447716))

(assert (= (and b!1447716 res!979445) b!1447718))

(assert (= (and b!1447718 res!979437) b!1447729))

(assert (= (and b!1447729 res!979447) b!1447725))

(assert (= (and b!1447725 c!133652) b!1447723))

(assert (= (and b!1447725 (not c!133652)) b!1447730))

(assert (= (and b!1447725 res!979442) b!1447726))

(assert (= (and b!1447726 res!979439) b!1447728))

(assert (= (and b!1447728 res!979441) b!1447715))

(assert (= (and b!1447715 (not res!979446)) b!1447732))

(assert (= (and b!1447732 res!979438) b!1447721))

(assert (= (and b!1447728 (not res!979448)) b!1447719))

(declare-fun m!1336569 () Bool)

(assert (=> b!1447719 m!1336569))

(assert (=> b!1447719 m!1336569))

(declare-fun m!1336571 () Bool)

(assert (=> b!1447719 m!1336571))

(declare-fun m!1336573 () Bool)

(assert (=> start!124834 m!1336573))

(declare-fun m!1336575 () Bool)

(assert (=> start!124834 m!1336575))

(declare-fun m!1336577 () Bool)

(assert (=> b!1447731 m!1336577))

(declare-fun m!1336579 () Bool)

(assert (=> b!1447731 m!1336579))

(declare-fun m!1336581 () Bool)

(assert (=> b!1447722 m!1336581))

(assert (=> b!1447732 m!1336569))

(assert (=> b!1447732 m!1336569))

(declare-fun m!1336583 () Bool)

(assert (=> b!1447732 m!1336583))

(declare-fun m!1336585 () Bool)

(assert (=> b!1447728 m!1336585))

(assert (=> b!1447728 m!1336577))

(declare-fun m!1336587 () Bool)

(assert (=> b!1447728 m!1336587))

(declare-fun m!1336589 () Bool)

(assert (=> b!1447728 m!1336589))

(declare-fun m!1336591 () Bool)

(assert (=> b!1447728 m!1336591))

(assert (=> b!1447728 m!1336569))

(declare-fun m!1336593 () Bool)

(assert (=> b!1447728 m!1336593))

(declare-fun m!1336595 () Bool)

(assert (=> b!1447728 m!1336595))

(assert (=> b!1447728 m!1336569))

(declare-fun m!1336597 () Bool)

(assert (=> b!1447729 m!1336597))

(assert (=> b!1447729 m!1336597))

(declare-fun m!1336599 () Bool)

(assert (=> b!1447729 m!1336599))

(assert (=> b!1447729 m!1336577))

(declare-fun m!1336601 () Bool)

(assert (=> b!1447729 m!1336601))

(assert (=> b!1447718 m!1336569))

(assert (=> b!1447718 m!1336569))

(declare-fun m!1336603 () Bool)

(assert (=> b!1447718 m!1336603))

(declare-fun m!1336605 () Bool)

(assert (=> b!1447723 m!1336605))

(assert (=> b!1447716 m!1336569))

(assert (=> b!1447716 m!1336569))

(declare-fun m!1336607 () Bool)

(assert (=> b!1447716 m!1336607))

(assert (=> b!1447716 m!1336607))

(assert (=> b!1447716 m!1336569))

(declare-fun m!1336609 () Bool)

(assert (=> b!1447716 m!1336609))

(declare-fun m!1336611 () Bool)

(assert (=> b!1447717 m!1336611))

(declare-fun m!1336613 () Bool)

(assert (=> b!1447714 m!1336613))

(assert (=> b!1447714 m!1336613))

(declare-fun m!1336615 () Bool)

(assert (=> b!1447714 m!1336615))

(declare-fun m!1336617 () Bool)

(assert (=> b!1447730 m!1336617))

(declare-fun m!1336619 () Bool)

(assert (=> b!1447730 m!1336619))

(assert (=> b!1447715 m!1336591))

(assert (=> b!1447715 m!1336577))

(assert (=> b!1447715 m!1336589))

(assert (=> b!1447715 m!1336569))

(assert (=> b!1447720 m!1336569))

(assert (=> b!1447720 m!1336569))

(declare-fun m!1336621 () Bool)

(assert (=> b!1447720 m!1336621))

(push 1)

