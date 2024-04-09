; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126216 () Bool)

(assert start!126216)

(declare-fun b!1477592 () Bool)

(declare-fun e!828945 () Bool)

(declare-fun e!828948 () Bool)

(assert (=> b!1477592 (= e!828945 e!828948)))

(declare-fun res!1003811 () Bool)

(assert (=> b!1477592 (=> (not res!1003811) (not e!828948))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99239 0))(
  ( (array!99240 (arr!47894 (Array (_ BitVec 32) (_ BitVec 64))) (size!48445 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99239)

(assert (=> b!1477592 (= res!1003811 (= (select (store (arr!47894 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!645368 () array!99239)

(assert (=> b!1477592 (= lt!645368 (array!99240 (store (arr!47894 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48445 a!2862)))))

(declare-fun b!1477593 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!828950 () Bool)

(declare-datatypes ((SeekEntryResult!12157 0))(
  ( (MissingZero!12157 (index!51019 (_ BitVec 32))) (Found!12157 (index!51020 (_ BitVec 32))) (Intermediate!12157 (undefined!12969 Bool) (index!51021 (_ BitVec 32)) (x!132615 (_ BitVec 32))) (Undefined!12157) (MissingVacant!12157 (index!51022 (_ BitVec 32))) )
))
(declare-fun lt!645366 () SeekEntryResult!12157)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!645370 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99239 (_ BitVec 32)) SeekEntryResult!12157)

(assert (=> b!1477593 (= e!828950 (= lt!645366 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645370 lt!645368 mask!2687)))))

(declare-fun b!1477594 () Bool)

(declare-fun res!1003815 () Bool)

(assert (=> b!1477594 (=> (not res!1003815) (not e!828945))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1477594 (= res!1003815 (and (= (size!48445 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48445 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48445 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1477595 () Bool)

(declare-fun res!1003804 () Bool)

(assert (=> b!1477595 (=> (not res!1003804) (not e!828945))))

(declare-datatypes ((List!34575 0))(
  ( (Nil!34572) (Cons!34571 (h!35939 (_ BitVec 64)) (t!49276 List!34575)) )
))
(declare-fun arrayNoDuplicates!0 (array!99239 (_ BitVec 32) List!34575) Bool)

(assert (=> b!1477595 (= res!1003804 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34572))))

(declare-fun b!1477596 () Bool)

(declare-fun e!828953 () Bool)

(assert (=> b!1477596 (= e!828948 e!828953)))

(declare-fun res!1003801 () Bool)

(assert (=> b!1477596 (=> (not res!1003801) (not e!828953))))

(declare-fun lt!645365 () SeekEntryResult!12157)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1477596 (= res!1003801 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47894 a!2862) j!93) mask!2687) (select (arr!47894 a!2862) j!93) a!2862 mask!2687) lt!645365))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1477596 (= lt!645365 (Intermediate!12157 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun e!828952 () Bool)

(declare-fun b!1477597 () Bool)

(assert (=> b!1477597 (= e!828952 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1477598 () Bool)

(declare-fun res!1003800 () Bool)

(assert (=> b!1477598 (=> (not res!1003800) (not e!828945))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99239 (_ BitVec 32)) Bool)

(assert (=> b!1477598 (= res!1003800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1477599 () Bool)

(declare-fun res!1003808 () Bool)

(declare-fun e!828947 () Bool)

(assert (=> b!1477599 (=> (not res!1003808) (not e!828947))))

(assert (=> b!1477599 (= res!1003808 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1477600 () Bool)

(assert (=> b!1477600 (= e!828953 e!828947)))

(declare-fun res!1003814 () Bool)

(assert (=> b!1477600 (=> (not res!1003814) (not e!828947))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1477600 (= res!1003814 (= lt!645366 (Intermediate!12157 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1477600 (= lt!645366 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645370 mask!2687) lt!645370 lt!645368 mask!2687))))

(assert (=> b!1477600 (= lt!645370 (select (store (arr!47894 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1477601 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99239 (_ BitVec 32)) SeekEntryResult!12157)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99239 (_ BitVec 32)) SeekEntryResult!12157)

(assert (=> b!1477601 (= e!828950 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645370 lt!645368 mask!2687) (seekEntryOrOpen!0 lt!645370 lt!645368 mask!2687)))))

(declare-fun b!1477603 () Bool)

(declare-fun res!1003809 () Bool)

(assert (=> b!1477603 (=> (not res!1003809) (not e!828947))))

(assert (=> b!1477603 (= res!1003809 e!828950)))

(declare-fun c!136418 () Bool)

(assert (=> b!1477603 (= c!136418 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1477604 () Bool)

(declare-fun res!1003803 () Bool)

(assert (=> b!1477604 (=> (not res!1003803) (not e!828945))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1477604 (= res!1003803 (validKeyInArray!0 (select (arr!47894 a!2862) j!93)))))

(declare-fun b!1477605 () Bool)

(declare-fun res!1003812 () Bool)

(assert (=> b!1477605 (=> (not res!1003812) (not e!828953))))

(assert (=> b!1477605 (= res!1003812 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47894 a!2862) j!93) a!2862 mask!2687) lt!645365))))

(declare-fun b!1477606 () Bool)

(assert (=> b!1477606 (= e!828947 (not true))))

(declare-fun e!828946 () Bool)

(assert (=> b!1477606 e!828946))

(declare-fun res!1003807 () Bool)

(assert (=> b!1477606 (=> (not res!1003807) (not e!828946))))

(declare-fun lt!645369 () SeekEntryResult!12157)

(assert (=> b!1477606 (= res!1003807 (and (= lt!645369 (Found!12157 j!93)) (or (= (select (arr!47894 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47894 a!2862) intermediateBeforeIndex!19) (select (arr!47894 a!2862) j!93)))))))

(assert (=> b!1477606 (= lt!645369 (seekEntryOrOpen!0 (select (arr!47894 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1477606 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49602 0))(
  ( (Unit!49603) )
))
(declare-fun lt!645367 () Unit!49602)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99239 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49602)

(assert (=> b!1477606 (= lt!645367 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1477607 () Bool)

(declare-fun e!828951 () Bool)

(assert (=> b!1477607 (= e!828951 e!828952)))

(declare-fun res!1003810 () Bool)

(assert (=> b!1477607 (=> (not res!1003810) (not e!828952))))

(assert (=> b!1477607 (= res!1003810 (= lt!645369 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47894 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1477608 () Bool)

(declare-fun res!1003813 () Bool)

(assert (=> b!1477608 (=> (not res!1003813) (not e!828945))))

(assert (=> b!1477608 (= res!1003813 (validKeyInArray!0 (select (arr!47894 a!2862) i!1006)))))

(declare-fun b!1477609 () Bool)

(assert (=> b!1477609 (= e!828946 e!828951)))

(declare-fun res!1003805 () Bool)

(assert (=> b!1477609 (=> res!1003805 e!828951)))

(assert (=> b!1477609 (= res!1003805 (or (and (= (select (arr!47894 a!2862) index!646) (select (store (arr!47894 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47894 a!2862) index!646) (select (arr!47894 a!2862) j!93))) (not (= (select (arr!47894 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1477602 () Bool)

(declare-fun res!1003802 () Bool)

(assert (=> b!1477602 (=> (not res!1003802) (not e!828945))))

(assert (=> b!1477602 (= res!1003802 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48445 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48445 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48445 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!1003806 () Bool)

(assert (=> start!126216 (=> (not res!1003806) (not e!828945))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126216 (= res!1003806 (validMask!0 mask!2687))))

(assert (=> start!126216 e!828945))

(assert (=> start!126216 true))

(declare-fun array_inv!36839 (array!99239) Bool)

(assert (=> start!126216 (array_inv!36839 a!2862)))

(assert (= (and start!126216 res!1003806) b!1477594))

(assert (= (and b!1477594 res!1003815) b!1477608))

(assert (= (and b!1477608 res!1003813) b!1477604))

(assert (= (and b!1477604 res!1003803) b!1477598))

(assert (= (and b!1477598 res!1003800) b!1477595))

(assert (= (and b!1477595 res!1003804) b!1477602))

(assert (= (and b!1477602 res!1003802) b!1477592))

(assert (= (and b!1477592 res!1003811) b!1477596))

(assert (= (and b!1477596 res!1003801) b!1477605))

(assert (= (and b!1477605 res!1003812) b!1477600))

(assert (= (and b!1477600 res!1003814) b!1477603))

(assert (= (and b!1477603 c!136418) b!1477593))

(assert (= (and b!1477603 (not c!136418)) b!1477601))

(assert (= (and b!1477603 res!1003809) b!1477599))

(assert (= (and b!1477599 res!1003808) b!1477606))

(assert (= (and b!1477606 res!1003807) b!1477609))

(assert (= (and b!1477609 (not res!1003805)) b!1477607))

(assert (= (and b!1477607 res!1003810) b!1477597))

(declare-fun m!1363591 () Bool)

(assert (=> b!1477601 m!1363591))

(declare-fun m!1363593 () Bool)

(assert (=> b!1477601 m!1363593))

(declare-fun m!1363595 () Bool)

(assert (=> b!1477600 m!1363595))

(assert (=> b!1477600 m!1363595))

(declare-fun m!1363597 () Bool)

(assert (=> b!1477600 m!1363597))

(declare-fun m!1363599 () Bool)

(assert (=> b!1477600 m!1363599))

(declare-fun m!1363601 () Bool)

(assert (=> b!1477600 m!1363601))

(declare-fun m!1363603 () Bool)

(assert (=> b!1477606 m!1363603))

(declare-fun m!1363605 () Bool)

(assert (=> b!1477606 m!1363605))

(declare-fun m!1363607 () Bool)

(assert (=> b!1477606 m!1363607))

(declare-fun m!1363609 () Bool)

(assert (=> b!1477606 m!1363609))

(declare-fun m!1363611 () Bool)

(assert (=> b!1477606 m!1363611))

(assert (=> b!1477606 m!1363607))

(declare-fun m!1363613 () Bool)

(assert (=> b!1477593 m!1363613))

(declare-fun m!1363615 () Bool)

(assert (=> b!1477608 m!1363615))

(assert (=> b!1477608 m!1363615))

(declare-fun m!1363617 () Bool)

(assert (=> b!1477608 m!1363617))

(declare-fun m!1363619 () Bool)

(assert (=> b!1477609 m!1363619))

(assert (=> b!1477609 m!1363599))

(declare-fun m!1363621 () Bool)

(assert (=> b!1477609 m!1363621))

(assert (=> b!1477609 m!1363607))

(assert (=> b!1477592 m!1363599))

(declare-fun m!1363623 () Bool)

(assert (=> b!1477592 m!1363623))

(assert (=> b!1477607 m!1363607))

(assert (=> b!1477607 m!1363607))

(declare-fun m!1363625 () Bool)

(assert (=> b!1477607 m!1363625))

(declare-fun m!1363627 () Bool)

(assert (=> b!1477598 m!1363627))

(declare-fun m!1363629 () Bool)

(assert (=> b!1477595 m!1363629))

(assert (=> b!1477596 m!1363607))

(assert (=> b!1477596 m!1363607))

(declare-fun m!1363631 () Bool)

(assert (=> b!1477596 m!1363631))

(assert (=> b!1477596 m!1363631))

(assert (=> b!1477596 m!1363607))

(declare-fun m!1363633 () Bool)

(assert (=> b!1477596 m!1363633))

(declare-fun m!1363635 () Bool)

(assert (=> start!126216 m!1363635))

(declare-fun m!1363637 () Bool)

(assert (=> start!126216 m!1363637))

(assert (=> b!1477605 m!1363607))

(assert (=> b!1477605 m!1363607))

(declare-fun m!1363639 () Bool)

(assert (=> b!1477605 m!1363639))

(assert (=> b!1477604 m!1363607))

(assert (=> b!1477604 m!1363607))

(declare-fun m!1363641 () Bool)

(assert (=> b!1477604 m!1363641))

(check-sat (not b!1477607) (not b!1477598) (not b!1477601) (not b!1477596) (not b!1477606) (not b!1477600) (not b!1477608) (not b!1477605) (not b!1477595) (not b!1477604) (not b!1477593) (not start!126216))
(check-sat)
