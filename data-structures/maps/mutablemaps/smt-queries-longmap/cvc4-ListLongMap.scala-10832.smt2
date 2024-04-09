; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126884 () Bool)

(assert start!126884)

(declare-fun b!1489312 () Bool)

(declare-fun res!1012877 () Bool)

(declare-fun e!834732 () Bool)

(assert (=> b!1489312 (=> res!1012877 e!834732)))

(declare-datatypes ((SeekEntryResult!12317 0))(
  ( (MissingZero!12317 (index!51659 (_ BitVec 32))) (Found!12317 (index!51660 (_ BitVec 32))) (Intermediate!12317 (undefined!13129 Bool) (index!51661 (_ BitVec 32)) (x!133256 (_ BitVec 32))) (Undefined!12317) (MissingVacant!12317 (index!51662 (_ BitVec 32))) )
))
(declare-fun lt!649478 () SeekEntryResult!12317)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!649477 () (_ BitVec 32))

(declare-datatypes ((array!99574 0))(
  ( (array!99575 (arr!48054 (Array (_ BitVec 32) (_ BitVec 64))) (size!48605 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99574)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99574 (_ BitVec 32)) SeekEntryResult!12317)

(assert (=> b!1489312 (= res!1012877 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649477 (select (arr!48054 a!2862) j!93) a!2862 mask!2687) lt!649478)))))

(declare-fun b!1489313 () Bool)

(declare-fun e!834737 () Bool)

(assert (=> b!1489313 (= e!834737 e!834732)))

(declare-fun res!1012875 () Bool)

(assert (=> b!1489313 (=> res!1012875 e!834732)))

(assert (=> b!1489313 (= res!1012875 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!649477 #b00000000000000000000000000000000) (bvsge lt!649477 (size!48605 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1489313 (= lt!649477 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!649480 () SeekEntryResult!12317)

(declare-fun lt!649473 () array!99574)

(declare-fun lt!649475 () (_ BitVec 64))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99574 (_ BitVec 32)) SeekEntryResult!12317)

(assert (=> b!1489313 (= lt!649480 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649475 lt!649473 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99574 (_ BitVec 32)) SeekEntryResult!12317)

(assert (=> b!1489313 (= lt!649480 (seekEntryOrOpen!0 lt!649475 lt!649473 mask!2687))))

(declare-fun b!1489314 () Bool)

(declare-fun e!834734 () Bool)

(declare-fun e!834729 () Bool)

(assert (=> b!1489314 (= e!834734 e!834729)))

(declare-fun res!1012882 () Bool)

(assert (=> b!1489314 (=> (not res!1012882) (not e!834729))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!649472 () SeekEntryResult!12317)

(assert (=> b!1489314 (= res!1012882 (= lt!649472 (Intermediate!12317 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1489314 (= lt!649472 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649475 mask!2687) lt!649475 lt!649473 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1489314 (= lt!649475 (select (store (arr!48054 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1489315 () Bool)

(assert (=> b!1489315 (= e!834729 (not e!834737))))

(declare-fun res!1012886 () Bool)

(assert (=> b!1489315 (=> res!1012886 e!834737)))

(assert (=> b!1489315 (= res!1012886 (or (and (= (select (arr!48054 a!2862) index!646) (select (store (arr!48054 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48054 a!2862) index!646) (select (arr!48054 a!2862) j!93))) (= (select (arr!48054 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun lt!649479 () SeekEntryResult!12317)

(assert (=> b!1489315 (and (= lt!649479 (Found!12317 j!93)) (or (= (select (arr!48054 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48054 a!2862) intermediateBeforeIndex!19) (select (arr!48054 a!2862) j!93))) (let ((bdg!54710 (select (store (arr!48054 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!48054 a!2862) index!646) bdg!54710) (= (select (arr!48054 a!2862) index!646) (select (arr!48054 a!2862) j!93))) (= (select (arr!48054 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!54710 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> b!1489315 (= lt!649479 (seekEntryOrOpen!0 (select (arr!48054 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99574 (_ BitVec 32)) Bool)

(assert (=> b!1489315 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49922 0))(
  ( (Unit!49923) )
))
(declare-fun lt!649476 () Unit!49922)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99574 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49922)

(assert (=> b!1489315 (= lt!649476 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1489316 () Bool)

(declare-fun e!834731 () Bool)

(assert (=> b!1489316 (= e!834731 (= lt!649472 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649475 lt!649473 mask!2687)))))

(declare-fun b!1489317 () Bool)

(declare-fun res!1012883 () Bool)

(declare-fun e!834735 () Bool)

(assert (=> b!1489317 (=> (not res!1012883) (not e!834735))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1489317 (= res!1012883 (validKeyInArray!0 (select (arr!48054 a!2862) j!93)))))

(declare-fun b!1489318 () Bool)

(declare-fun res!1012887 () Bool)

(assert (=> b!1489318 (=> res!1012887 e!834732)))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1489318 (= res!1012887 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1489319 () Bool)

(declare-fun res!1012879 () Bool)

(assert (=> b!1489319 (=> (not res!1012879) (not e!834729))))

(assert (=> b!1489319 (= res!1012879 e!834731)))

(declare-fun c!137749 () Bool)

(assert (=> b!1489319 (= c!137749 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1489320 () Bool)

(declare-fun e!834730 () Bool)

(assert (=> b!1489320 (= e!834730 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649477 intermediateAfterIndex!19 lt!649475 lt!649473 mask!2687) lt!649480)))))

(declare-fun b!1489321 () Bool)

(declare-fun res!1012884 () Bool)

(assert (=> b!1489321 (=> (not res!1012884) (not e!834735))))

(assert (=> b!1489321 (= res!1012884 (and (= (size!48605 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48605 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48605 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1489322 () Bool)

(declare-fun res!1012873 () Bool)

(assert (=> b!1489322 (=> res!1012873 e!834732)))

(assert (=> b!1489322 (= res!1012873 e!834730)))

(declare-fun c!137750 () Bool)

(assert (=> b!1489322 (= c!137750 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1489323 () Bool)

(declare-fun res!1012881 () Bool)

(assert (=> b!1489323 (=> (not res!1012881) (not e!834729))))

(assert (=> b!1489323 (= res!1012881 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1489324 () Bool)

(declare-fun res!1012885 () Bool)

(assert (=> b!1489324 (=> (not res!1012885) (not e!834735))))

(declare-datatypes ((List!34735 0))(
  ( (Nil!34732) (Cons!34731 (h!36114 (_ BitVec 64)) (t!49436 List!34735)) )
))
(declare-fun arrayNoDuplicates!0 (array!99574 (_ BitVec 32) List!34735) Bool)

(assert (=> b!1489324 (= res!1012885 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34732))))

(declare-fun b!1489326 () Bool)

(assert (=> b!1489326 (= e!834730 (not (= lt!649472 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649477 lt!649475 lt!649473 mask!2687))))))

(declare-fun b!1489327 () Bool)

(assert (=> b!1489327 (= e!834732 true)))

(assert (=> b!1489327 (= lt!649479 lt!649480)))

(declare-fun lt!649474 () Unit!49922)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!99574 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49922)

(assert (=> b!1489327 (= lt!649474 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!649477 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1489328 () Bool)

(assert (=> b!1489328 (= e!834731 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649475 lt!649473 mask!2687) (seekEntryOrOpen!0 lt!649475 lt!649473 mask!2687)))))

(declare-fun b!1489329 () Bool)

(declare-fun e!834736 () Bool)

(assert (=> b!1489329 (= e!834735 e!834736)))

(declare-fun res!1012874 () Bool)

(assert (=> b!1489329 (=> (not res!1012874) (not e!834736))))

(assert (=> b!1489329 (= res!1012874 (= (select (store (arr!48054 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1489329 (= lt!649473 (array!99575 (store (arr!48054 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48605 a!2862)))))

(declare-fun b!1489330 () Bool)

(assert (=> b!1489330 (= e!834736 e!834734)))

(declare-fun res!1012890 () Bool)

(assert (=> b!1489330 (=> (not res!1012890) (not e!834734))))

(assert (=> b!1489330 (= res!1012890 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48054 a!2862) j!93) mask!2687) (select (arr!48054 a!2862) j!93) a!2862 mask!2687) lt!649478))))

(assert (=> b!1489330 (= lt!649478 (Intermediate!12317 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1489331 () Bool)

(declare-fun res!1012889 () Bool)

(assert (=> b!1489331 (=> (not res!1012889) (not e!834735))))

(assert (=> b!1489331 (= res!1012889 (validKeyInArray!0 (select (arr!48054 a!2862) i!1006)))))

(declare-fun b!1489332 () Bool)

(declare-fun res!1012878 () Bool)

(assert (=> b!1489332 (=> (not res!1012878) (not e!834734))))

(assert (=> b!1489332 (= res!1012878 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48054 a!2862) j!93) a!2862 mask!2687) lt!649478))))

(declare-fun b!1489333 () Bool)

(declare-fun res!1012888 () Bool)

(assert (=> b!1489333 (=> (not res!1012888) (not e!834735))))

(assert (=> b!1489333 (= res!1012888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!1012880 () Bool)

(assert (=> start!126884 (=> (not res!1012880) (not e!834735))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126884 (= res!1012880 (validMask!0 mask!2687))))

(assert (=> start!126884 e!834735))

(assert (=> start!126884 true))

(declare-fun array_inv!36999 (array!99574) Bool)

(assert (=> start!126884 (array_inv!36999 a!2862)))

(declare-fun b!1489325 () Bool)

(declare-fun res!1012876 () Bool)

(assert (=> b!1489325 (=> (not res!1012876) (not e!834735))))

(assert (=> b!1489325 (= res!1012876 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48605 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48605 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48605 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!126884 res!1012880) b!1489321))

(assert (= (and b!1489321 res!1012884) b!1489331))

(assert (= (and b!1489331 res!1012889) b!1489317))

(assert (= (and b!1489317 res!1012883) b!1489333))

(assert (= (and b!1489333 res!1012888) b!1489324))

(assert (= (and b!1489324 res!1012885) b!1489325))

(assert (= (and b!1489325 res!1012876) b!1489329))

(assert (= (and b!1489329 res!1012874) b!1489330))

(assert (= (and b!1489330 res!1012890) b!1489332))

(assert (= (and b!1489332 res!1012878) b!1489314))

(assert (= (and b!1489314 res!1012882) b!1489319))

(assert (= (and b!1489319 c!137749) b!1489316))

(assert (= (and b!1489319 (not c!137749)) b!1489328))

(assert (= (and b!1489319 res!1012879) b!1489323))

(assert (= (and b!1489323 res!1012881) b!1489315))

(assert (= (and b!1489315 (not res!1012886)) b!1489313))

(assert (= (and b!1489313 (not res!1012875)) b!1489312))

(assert (= (and b!1489312 (not res!1012877)) b!1489322))

(assert (= (and b!1489322 c!137750) b!1489326))

(assert (= (and b!1489322 (not c!137750)) b!1489320))

(assert (= (and b!1489322 (not res!1012873)) b!1489318))

(assert (= (and b!1489318 (not res!1012887)) b!1489327))

(declare-fun m!1373607 () Bool)

(assert (=> b!1489327 m!1373607))

(declare-fun m!1373609 () Bool)

(assert (=> b!1489326 m!1373609))

(declare-fun m!1373611 () Bool)

(assert (=> b!1489333 m!1373611))

(declare-fun m!1373613 () Bool)

(assert (=> b!1489329 m!1373613))

(declare-fun m!1373615 () Bool)

(assert (=> b!1489329 m!1373615))

(declare-fun m!1373617 () Bool)

(assert (=> b!1489320 m!1373617))

(declare-fun m!1373619 () Bool)

(assert (=> b!1489316 m!1373619))

(declare-fun m!1373621 () Bool)

(assert (=> start!126884 m!1373621))

(declare-fun m!1373623 () Bool)

(assert (=> start!126884 m!1373623))

(declare-fun m!1373625 () Bool)

(assert (=> b!1489315 m!1373625))

(assert (=> b!1489315 m!1373613))

(declare-fun m!1373627 () Bool)

(assert (=> b!1489315 m!1373627))

(declare-fun m!1373629 () Bool)

(assert (=> b!1489315 m!1373629))

(declare-fun m!1373631 () Bool)

(assert (=> b!1489315 m!1373631))

(declare-fun m!1373633 () Bool)

(assert (=> b!1489315 m!1373633))

(declare-fun m!1373635 () Bool)

(assert (=> b!1489315 m!1373635))

(declare-fun m!1373637 () Bool)

(assert (=> b!1489315 m!1373637))

(assert (=> b!1489315 m!1373633))

(declare-fun m!1373639 () Bool)

(assert (=> b!1489331 m!1373639))

(assert (=> b!1489331 m!1373639))

(declare-fun m!1373641 () Bool)

(assert (=> b!1489331 m!1373641))

(declare-fun m!1373643 () Bool)

(assert (=> b!1489324 m!1373643))

(assert (=> b!1489312 m!1373633))

(assert (=> b!1489312 m!1373633))

(declare-fun m!1373645 () Bool)

(assert (=> b!1489312 m!1373645))

(assert (=> b!1489317 m!1373633))

(assert (=> b!1489317 m!1373633))

(declare-fun m!1373647 () Bool)

(assert (=> b!1489317 m!1373647))

(assert (=> b!1489330 m!1373633))

(assert (=> b!1489330 m!1373633))

(declare-fun m!1373649 () Bool)

(assert (=> b!1489330 m!1373649))

(assert (=> b!1489330 m!1373649))

(assert (=> b!1489330 m!1373633))

(declare-fun m!1373651 () Bool)

(assert (=> b!1489330 m!1373651))

(declare-fun m!1373653 () Bool)

(assert (=> b!1489313 m!1373653))

(declare-fun m!1373655 () Bool)

(assert (=> b!1489313 m!1373655))

(declare-fun m!1373657 () Bool)

(assert (=> b!1489313 m!1373657))

(assert (=> b!1489332 m!1373633))

(assert (=> b!1489332 m!1373633))

(declare-fun m!1373659 () Bool)

(assert (=> b!1489332 m!1373659))

(declare-fun m!1373661 () Bool)

(assert (=> b!1489314 m!1373661))

(assert (=> b!1489314 m!1373661))

(declare-fun m!1373663 () Bool)

(assert (=> b!1489314 m!1373663))

(assert (=> b!1489314 m!1373613))

(declare-fun m!1373665 () Bool)

(assert (=> b!1489314 m!1373665))

(assert (=> b!1489328 m!1373655))

(assert (=> b!1489328 m!1373657))

(push 1)

