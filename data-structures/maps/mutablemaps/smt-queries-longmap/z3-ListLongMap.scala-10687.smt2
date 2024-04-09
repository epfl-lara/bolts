; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125304 () Bool)

(assert start!125304)

(declare-fun b!1462033 () Bool)

(declare-fun e!821908 () Bool)

(declare-fun e!821907 () Bool)

(assert (=> b!1462033 (= e!821908 e!821907)))

(declare-fun res!991633 () Bool)

(assert (=> b!1462033 (=> (not res!991633) (not e!821907))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11893 0))(
  ( (MissingZero!11893 (index!49963 (_ BitVec 32))) (Found!11893 (index!49964 (_ BitVec 32))) (Intermediate!11893 (undefined!12705 Bool) (index!49965 (_ BitVec 32)) (x!131561 (_ BitVec 32))) (Undefined!11893) (MissingVacant!11893 (index!49966 (_ BitVec 32))) )
))
(declare-fun lt!640288 () SeekEntryResult!11893)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1462033 (= res!991633 (= lt!640288 (Intermediate!11893 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!640289 () (_ BitVec 64))

(declare-datatypes ((array!98669 0))(
  ( (array!98670 (arr!47618 (Array (_ BitVec 32) (_ BitVec 64))) (size!48169 (_ BitVec 32))) )
))
(declare-fun lt!640286 () array!98669)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98669 (_ BitVec 32)) SeekEntryResult!11893)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1462033 (= lt!640288 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640289 mask!2687) lt!640289 lt!640286 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98669)

(assert (=> b!1462033 (= lt!640289 (select (store (arr!47618 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1462034 () Bool)

(declare-fun e!821905 () Bool)

(assert (=> b!1462034 (= e!821907 (not e!821905))))

(declare-fun res!991634 () Bool)

(assert (=> b!1462034 (=> res!991634 e!821905)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1462034 (= res!991634 (or (and (= (select (arr!47618 a!2862) index!646) (select (store (arr!47618 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47618 a!2862) index!646) (select (arr!47618 a!2862) j!93))) (= (select (arr!47618 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!821909 () Bool)

(assert (=> b!1462034 e!821909))

(declare-fun res!991649 () Bool)

(assert (=> b!1462034 (=> (not res!991649) (not e!821909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98669 (_ BitVec 32)) Bool)

(assert (=> b!1462034 (= res!991649 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49230 0))(
  ( (Unit!49231) )
))
(declare-fun lt!640287 () Unit!49230)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98669 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49230)

(assert (=> b!1462034 (= lt!640287 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1462035 () Bool)

(declare-fun e!821910 () Bool)

(assert (=> b!1462035 (= e!821905 e!821910)))

(declare-fun res!991638 () Bool)

(assert (=> b!1462035 (=> res!991638 e!821910)))

(declare-fun lt!640285 () (_ BitVec 32))

(assert (=> b!1462035 (= res!991638 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640285 #b00000000000000000000000000000000) (bvsge lt!640285 (size!48169 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1462035 (= lt!640285 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1462036 () Bool)

(assert (=> b!1462036 (= e!821910 true)))

(declare-fun lt!640291 () Bool)

(declare-fun e!821904 () Bool)

(assert (=> b!1462036 (= lt!640291 e!821904)))

(declare-fun c!134713 () Bool)

(assert (=> b!1462036 (= c!134713 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1462037 () Bool)

(assert (=> b!1462037 (= e!821904 (not (= lt!640288 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640285 lt!640289 lt!640286 mask!2687))))))

(declare-fun b!1462038 () Bool)

(declare-fun e!821903 () Bool)

(assert (=> b!1462038 (= e!821903 (= lt!640288 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640289 lt!640286 mask!2687)))))

(declare-fun b!1462039 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98669 (_ BitVec 32)) SeekEntryResult!11893)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98669 (_ BitVec 32)) SeekEntryResult!11893)

(assert (=> b!1462039 (= e!821903 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640289 lt!640286 mask!2687) (seekEntryOrOpen!0 lt!640289 lt!640286 mask!2687)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1462040 () Bool)

(assert (=> b!1462040 (= e!821909 (or (= (select (arr!47618 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47618 a!2862) intermediateBeforeIndex!19) (select (arr!47618 a!2862) j!93))))))

(declare-fun res!991641 () Bool)

(declare-fun e!821912 () Bool)

(assert (=> start!125304 (=> (not res!991641) (not e!821912))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125304 (= res!991641 (validMask!0 mask!2687))))

(assert (=> start!125304 e!821912))

(assert (=> start!125304 true))

(declare-fun array_inv!36563 (array!98669) Bool)

(assert (=> start!125304 (array_inv!36563 a!2862)))

(declare-fun b!1462041 () Bool)

(assert (=> b!1462041 (= e!821904 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640285 intermediateAfterIndex!19 lt!640289 lt!640286 mask!2687) (seekEntryOrOpen!0 lt!640289 lt!640286 mask!2687))))))

(declare-fun b!1462042 () Bool)

(declare-fun res!991640 () Bool)

(assert (=> b!1462042 (=> (not res!991640) (not e!821907))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1462042 (= res!991640 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1462043 () Bool)

(declare-fun res!991643 () Bool)

(assert (=> b!1462043 (=> (not res!991643) (not e!821912))))

(assert (=> b!1462043 (= res!991643 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1462044 () Bool)

(declare-fun e!821911 () Bool)

(assert (=> b!1462044 (= e!821911 e!821908)))

(declare-fun res!991644 () Bool)

(assert (=> b!1462044 (=> (not res!991644) (not e!821908))))

(declare-fun lt!640290 () SeekEntryResult!11893)

(assert (=> b!1462044 (= res!991644 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47618 a!2862) j!93) mask!2687) (select (arr!47618 a!2862) j!93) a!2862 mask!2687) lt!640290))))

(assert (=> b!1462044 (= lt!640290 (Intermediate!11893 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1462045 () Bool)

(assert (=> b!1462045 (= e!821912 e!821911)))

(declare-fun res!991642 () Bool)

(assert (=> b!1462045 (=> (not res!991642) (not e!821911))))

(assert (=> b!1462045 (= res!991642 (= (select (store (arr!47618 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1462045 (= lt!640286 (array!98670 (store (arr!47618 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48169 a!2862)))))

(declare-fun b!1462046 () Bool)

(declare-fun res!991650 () Bool)

(assert (=> b!1462046 (=> (not res!991650) (not e!821912))))

(assert (=> b!1462046 (= res!991650 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48169 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48169 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48169 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1462047 () Bool)

(declare-fun res!991647 () Bool)

(assert (=> b!1462047 (=> (not res!991647) (not e!821907))))

(assert (=> b!1462047 (= res!991647 e!821903)))

(declare-fun c!134714 () Bool)

(assert (=> b!1462047 (= c!134714 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1462048 () Bool)

(declare-fun res!991636 () Bool)

(assert (=> b!1462048 (=> (not res!991636) (not e!821912))))

(declare-datatypes ((List!34299 0))(
  ( (Nil!34296) (Cons!34295 (h!35645 (_ BitVec 64)) (t!49000 List!34299)) )
))
(declare-fun arrayNoDuplicates!0 (array!98669 (_ BitVec 32) List!34299) Bool)

(assert (=> b!1462048 (= res!991636 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34296))))

(declare-fun b!1462049 () Bool)

(declare-fun res!991646 () Bool)

(assert (=> b!1462049 (=> (not res!991646) (not e!821912))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1462049 (= res!991646 (validKeyInArray!0 (select (arr!47618 a!2862) i!1006)))))

(declare-fun b!1462050 () Bool)

(declare-fun res!991648 () Bool)

(assert (=> b!1462050 (=> (not res!991648) (not e!821912))))

(assert (=> b!1462050 (= res!991648 (validKeyInArray!0 (select (arr!47618 a!2862) j!93)))))

(declare-fun b!1462051 () Bool)

(declare-fun res!991645 () Bool)

(assert (=> b!1462051 (=> (not res!991645) (not e!821909))))

(assert (=> b!1462051 (= res!991645 (= (seekEntryOrOpen!0 (select (arr!47618 a!2862) j!93) a!2862 mask!2687) (Found!11893 j!93)))))

(declare-fun b!1462052 () Bool)

(declare-fun res!991637 () Bool)

(assert (=> b!1462052 (=> (not res!991637) (not e!821908))))

(assert (=> b!1462052 (= res!991637 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47618 a!2862) j!93) a!2862 mask!2687) lt!640290))))

(declare-fun b!1462053 () Bool)

(declare-fun res!991635 () Bool)

(assert (=> b!1462053 (=> (not res!991635) (not e!821912))))

(assert (=> b!1462053 (= res!991635 (and (= (size!48169 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48169 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48169 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1462054 () Bool)

(declare-fun res!991639 () Bool)

(assert (=> b!1462054 (=> res!991639 e!821910)))

(assert (=> b!1462054 (= res!991639 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640285 (select (arr!47618 a!2862) j!93) a!2862 mask!2687) lt!640290)))))

(assert (= (and start!125304 res!991641) b!1462053))

(assert (= (and b!1462053 res!991635) b!1462049))

(assert (= (and b!1462049 res!991646) b!1462050))

(assert (= (and b!1462050 res!991648) b!1462043))

(assert (= (and b!1462043 res!991643) b!1462048))

(assert (= (and b!1462048 res!991636) b!1462046))

(assert (= (and b!1462046 res!991650) b!1462045))

(assert (= (and b!1462045 res!991642) b!1462044))

(assert (= (and b!1462044 res!991644) b!1462052))

(assert (= (and b!1462052 res!991637) b!1462033))

(assert (= (and b!1462033 res!991633) b!1462047))

(assert (= (and b!1462047 c!134714) b!1462038))

(assert (= (and b!1462047 (not c!134714)) b!1462039))

(assert (= (and b!1462047 res!991647) b!1462042))

(assert (= (and b!1462042 res!991640) b!1462034))

(assert (= (and b!1462034 res!991649) b!1462051))

(assert (= (and b!1462051 res!991645) b!1462040))

(assert (= (and b!1462034 (not res!991634)) b!1462035))

(assert (= (and b!1462035 (not res!991638)) b!1462054))

(assert (= (and b!1462054 (not res!991639)) b!1462036))

(assert (= (and b!1462036 c!134713) b!1462037))

(assert (= (and b!1462036 (not c!134713)) b!1462041))

(declare-fun m!1349587 () Bool)

(assert (=> b!1462037 m!1349587))

(declare-fun m!1349589 () Bool)

(assert (=> b!1462051 m!1349589))

(assert (=> b!1462051 m!1349589))

(declare-fun m!1349591 () Bool)

(assert (=> b!1462051 m!1349591))

(assert (=> b!1462044 m!1349589))

(assert (=> b!1462044 m!1349589))

(declare-fun m!1349593 () Bool)

(assert (=> b!1462044 m!1349593))

(assert (=> b!1462044 m!1349593))

(assert (=> b!1462044 m!1349589))

(declare-fun m!1349595 () Bool)

(assert (=> b!1462044 m!1349595))

(declare-fun m!1349597 () Bool)

(assert (=> b!1462034 m!1349597))

(declare-fun m!1349599 () Bool)

(assert (=> b!1462034 m!1349599))

(declare-fun m!1349601 () Bool)

(assert (=> b!1462034 m!1349601))

(declare-fun m!1349603 () Bool)

(assert (=> b!1462034 m!1349603))

(declare-fun m!1349605 () Bool)

(assert (=> b!1462034 m!1349605))

(assert (=> b!1462034 m!1349589))

(assert (=> b!1462045 m!1349599))

(declare-fun m!1349607 () Bool)

(assert (=> b!1462045 m!1349607))

(declare-fun m!1349609 () Bool)

(assert (=> b!1462033 m!1349609))

(assert (=> b!1462033 m!1349609))

(declare-fun m!1349611 () Bool)

(assert (=> b!1462033 m!1349611))

(assert (=> b!1462033 m!1349599))

(declare-fun m!1349613 () Bool)

(assert (=> b!1462033 m!1349613))

(assert (=> b!1462054 m!1349589))

(assert (=> b!1462054 m!1349589))

(declare-fun m!1349615 () Bool)

(assert (=> b!1462054 m!1349615))

(declare-fun m!1349617 () Bool)

(assert (=> b!1462035 m!1349617))

(assert (=> b!1462050 m!1349589))

(assert (=> b!1462050 m!1349589))

(declare-fun m!1349619 () Bool)

(assert (=> b!1462050 m!1349619))

(declare-fun m!1349621 () Bool)

(assert (=> b!1462039 m!1349621))

(declare-fun m!1349623 () Bool)

(assert (=> b!1462039 m!1349623))

(declare-fun m!1349625 () Bool)

(assert (=> b!1462041 m!1349625))

(assert (=> b!1462041 m!1349623))

(declare-fun m!1349627 () Bool)

(assert (=> b!1462038 m!1349627))

(declare-fun m!1349629 () Bool)

(assert (=> b!1462048 m!1349629))

(declare-fun m!1349631 () Bool)

(assert (=> b!1462043 m!1349631))

(declare-fun m!1349633 () Bool)

(assert (=> start!125304 m!1349633))

(declare-fun m!1349635 () Bool)

(assert (=> start!125304 m!1349635))

(declare-fun m!1349637 () Bool)

(assert (=> b!1462040 m!1349637))

(assert (=> b!1462040 m!1349589))

(declare-fun m!1349639 () Bool)

(assert (=> b!1462049 m!1349639))

(assert (=> b!1462049 m!1349639))

(declare-fun m!1349641 () Bool)

(assert (=> b!1462049 m!1349641))

(assert (=> b!1462052 m!1349589))

(assert (=> b!1462052 m!1349589))

(declare-fun m!1349643 () Bool)

(assert (=> b!1462052 m!1349643))

(check-sat (not b!1462043) (not b!1462039) (not b!1462034) (not b!1462035) (not b!1462037) (not b!1462041) (not b!1462054) (not b!1462044) (not start!125304) (not b!1462048) (not b!1462051) (not b!1462038) (not b!1462050) (not b!1462033) (not b!1462052) (not b!1462049))
(check-sat)
