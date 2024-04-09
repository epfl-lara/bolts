; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125074 () Bool)

(assert start!125074)

(declare-fun b!1454614 () Bool)

(declare-fun res!985535 () Bool)

(declare-fun e!818624 () Bool)

(assert (=> b!1454614 (=> (not res!985535) (not e!818624))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1454614 (= res!985535 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1454615 () Bool)

(declare-fun res!985524 () Bool)

(declare-fun e!818631 () Bool)

(assert (=> b!1454615 (=> (not res!985524) (not e!818631))))

(declare-datatypes ((array!98439 0))(
  ( (array!98440 (arr!47503 (Array (_ BitVec 32) (_ BitVec 64))) (size!48054 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98439)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1454615 (= res!985524 (validKeyInArray!0 (select (arr!47503 a!2862) j!93)))))

(declare-fun b!1454616 () Bool)

(declare-fun res!985527 () Bool)

(declare-fun e!818625 () Bool)

(assert (=> b!1454616 (=> res!985527 e!818625)))

(declare-datatypes ((SeekEntryResult!11778 0))(
  ( (MissingZero!11778 (index!49503 (_ BitVec 32))) (Found!11778 (index!49504 (_ BitVec 32))) (Intermediate!11778 (undefined!12590 Bool) (index!49505 (_ BitVec 32)) (x!131142 (_ BitVec 32))) (Undefined!11778) (MissingVacant!11778 (index!49506 (_ BitVec 32))) )
))
(declare-fun lt!637625 () SeekEntryResult!11778)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!637624 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98439 (_ BitVec 32)) SeekEntryResult!11778)

(assert (=> b!1454616 (= res!985527 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637624 (select (arr!47503 a!2862) j!93) a!2862 mask!2687) lt!637625)))))

(declare-fun b!1454617 () Bool)

(declare-fun res!985531 () Bool)

(assert (=> b!1454617 (=> (not res!985531) (not e!818631))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98439 (_ BitVec 32)) Bool)

(assert (=> b!1454617 (= res!985531 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1454618 () Bool)

(declare-fun e!818632 () Bool)

(assert (=> b!1454618 (= e!818632 e!818625)))

(declare-fun res!985529 () Bool)

(assert (=> b!1454618 (=> res!985529 e!818625)))

(assert (=> b!1454618 (= res!985529 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!637624 #b00000000000000000000000000000000) (bvsge lt!637624 (size!48054 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1454618 (= lt!637624 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!637623 () SeekEntryResult!11778)

(declare-fun lt!637620 () array!98439)

(declare-fun lt!637626 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98439 (_ BitVec 32)) SeekEntryResult!11778)

(assert (=> b!1454618 (= lt!637623 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637626 lt!637620 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98439 (_ BitVec 32)) SeekEntryResult!11778)

(assert (=> b!1454618 (= lt!637623 (seekEntryOrOpen!0 lt!637626 lt!637620 mask!2687))))

(declare-fun b!1454619 () Bool)

(declare-fun res!985530 () Bool)

(assert (=> b!1454619 (=> (not res!985530) (not e!818631))))

(assert (=> b!1454619 (= res!985530 (validKeyInArray!0 (select (arr!47503 a!2862) i!1006)))))

(declare-fun lt!637627 () SeekEntryResult!11778)

(declare-fun e!818630 () Bool)

(declare-fun b!1454620 () Bool)

(assert (=> b!1454620 (= e!818630 (= lt!637627 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637626 lt!637620 mask!2687)))))

(declare-fun b!1454621 () Bool)

(declare-fun res!985528 () Bool)

(assert (=> b!1454621 (=> (not res!985528) (not e!818624))))

(assert (=> b!1454621 (= res!985528 e!818630)))

(declare-fun c!134060 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1454621 (= c!134060 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1454623 () Bool)

(declare-fun res!985523 () Bool)

(declare-fun e!818629 () Bool)

(assert (=> b!1454623 (=> (not res!985523) (not e!818629))))

(assert (=> b!1454623 (= res!985523 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47503 a!2862) j!93) a!2862 mask!2687) lt!637625))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!818627 () Bool)

(declare-fun b!1454624 () Bool)

(assert (=> b!1454624 (= e!818627 (and (or (= (select (arr!47503 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47503 a!2862) intermediateBeforeIndex!19) (select (arr!47503 a!2862) j!93))) (let ((bdg!53089 (select (store (arr!47503 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47503 a!2862) index!646) bdg!53089) (= (select (arr!47503 a!2862) index!646) (select (arr!47503 a!2862) j!93))) (= (select (arr!47503 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53089 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1454625 () Bool)

(declare-fun e!818633 () Bool)

(assert (=> b!1454625 (= e!818633 e!818629)))

(declare-fun res!985534 () Bool)

(assert (=> b!1454625 (=> (not res!985534) (not e!818629))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1454625 (= res!985534 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47503 a!2862) j!93) mask!2687) (select (arr!47503 a!2862) j!93) a!2862 mask!2687) lt!637625))))

(assert (=> b!1454625 (= lt!637625 (Intermediate!11778 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1454626 () Bool)

(declare-fun res!985525 () Bool)

(assert (=> b!1454626 (=> (not res!985525) (not e!818631))))

(assert (=> b!1454626 (= res!985525 (and (= (size!48054 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48054 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48054 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1454627 () Bool)

(declare-fun e!818628 () Bool)

(assert (=> b!1454627 (= e!818628 (not (= lt!637627 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637624 lt!637626 lt!637620 mask!2687))))))

(declare-fun b!1454628 () Bool)

(declare-fun res!985539 () Bool)

(assert (=> b!1454628 (=> (not res!985539) (not e!818627))))

(assert (=> b!1454628 (= res!985539 (= (seekEntryOrOpen!0 (select (arr!47503 a!2862) j!93) a!2862 mask!2687) (Found!11778 j!93)))))

(declare-fun b!1454629 () Bool)

(declare-fun res!985537 () Bool)

(assert (=> b!1454629 (=> (not res!985537) (not e!818631))))

(declare-datatypes ((List!34184 0))(
  ( (Nil!34181) (Cons!34180 (h!35530 (_ BitVec 64)) (t!48885 List!34184)) )
))
(declare-fun arrayNoDuplicates!0 (array!98439 (_ BitVec 32) List!34184) Bool)

(assert (=> b!1454629 (= res!985537 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34181))))

(declare-fun b!1454630 () Bool)

(assert (=> b!1454630 (= e!818631 e!818633)))

(declare-fun res!985536 () Bool)

(assert (=> b!1454630 (=> (not res!985536) (not e!818633))))

(assert (=> b!1454630 (= res!985536 (= (select (store (arr!47503 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1454630 (= lt!637620 (array!98440 (store (arr!47503 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48054 a!2862)))))

(declare-fun b!1454631 () Bool)

(assert (=> b!1454631 (= e!818628 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637624 intermediateAfterIndex!19 lt!637626 lt!637620 mask!2687) lt!637623)))))

(declare-fun b!1454622 () Bool)

(assert (=> b!1454622 (= e!818625 true)))

(declare-fun lt!637621 () Bool)

(assert (=> b!1454622 (= lt!637621 e!818628)))

(declare-fun c!134059 () Bool)

(assert (=> b!1454622 (= c!134059 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun res!985522 () Bool)

(assert (=> start!125074 (=> (not res!985522) (not e!818631))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125074 (= res!985522 (validMask!0 mask!2687))))

(assert (=> start!125074 e!818631))

(assert (=> start!125074 true))

(declare-fun array_inv!36448 (array!98439) Bool)

(assert (=> start!125074 (array_inv!36448 a!2862)))

(declare-fun b!1454632 () Bool)

(declare-fun res!985533 () Bool)

(assert (=> b!1454632 (=> (not res!985533) (not e!818631))))

(assert (=> b!1454632 (= res!985533 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48054 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48054 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48054 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1454633 () Bool)

(assert (=> b!1454633 (= e!818624 (not e!818632))))

(declare-fun res!985532 () Bool)

(assert (=> b!1454633 (=> res!985532 e!818632)))

(assert (=> b!1454633 (= res!985532 (or (and (= (select (arr!47503 a!2862) index!646) (select (store (arr!47503 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47503 a!2862) index!646) (select (arr!47503 a!2862) j!93))) (= (select (arr!47503 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1454633 e!818627))

(declare-fun res!985538 () Bool)

(assert (=> b!1454633 (=> (not res!985538) (not e!818627))))

(assert (=> b!1454633 (= res!985538 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49000 0))(
  ( (Unit!49001) )
))
(declare-fun lt!637622 () Unit!49000)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98439 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49000)

(assert (=> b!1454633 (= lt!637622 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1454634 () Bool)

(assert (=> b!1454634 (= e!818630 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637626 lt!637620 mask!2687) (seekEntryOrOpen!0 lt!637626 lt!637620 mask!2687)))))

(declare-fun b!1454635 () Bool)

(assert (=> b!1454635 (= e!818629 e!818624)))

(declare-fun res!985526 () Bool)

(assert (=> b!1454635 (=> (not res!985526) (not e!818624))))

(assert (=> b!1454635 (= res!985526 (= lt!637627 (Intermediate!11778 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1454635 (= lt!637627 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637626 mask!2687) lt!637626 lt!637620 mask!2687))))

(assert (=> b!1454635 (= lt!637626 (select (store (arr!47503 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(assert (= (and start!125074 res!985522) b!1454626))

(assert (= (and b!1454626 res!985525) b!1454619))

(assert (= (and b!1454619 res!985530) b!1454615))

(assert (= (and b!1454615 res!985524) b!1454617))

(assert (= (and b!1454617 res!985531) b!1454629))

(assert (= (and b!1454629 res!985537) b!1454632))

(assert (= (and b!1454632 res!985533) b!1454630))

(assert (= (and b!1454630 res!985536) b!1454625))

(assert (= (and b!1454625 res!985534) b!1454623))

(assert (= (and b!1454623 res!985523) b!1454635))

(assert (= (and b!1454635 res!985526) b!1454621))

(assert (= (and b!1454621 c!134060) b!1454620))

(assert (= (and b!1454621 (not c!134060)) b!1454634))

(assert (= (and b!1454621 res!985528) b!1454614))

(assert (= (and b!1454614 res!985535) b!1454633))

(assert (= (and b!1454633 res!985538) b!1454628))

(assert (= (and b!1454628 res!985539) b!1454624))

(assert (= (and b!1454633 (not res!985532)) b!1454618))

(assert (= (and b!1454618 (not res!985529)) b!1454616))

(assert (= (and b!1454616 (not res!985527)) b!1454622))

(assert (= (and b!1454622 c!134059) b!1454627))

(assert (= (and b!1454622 (not c!134059)) b!1454631))

(declare-fun m!1342983 () Bool)

(assert (=> b!1454615 m!1342983))

(assert (=> b!1454615 m!1342983))

(declare-fun m!1342985 () Bool)

(assert (=> b!1454615 m!1342985))

(assert (=> b!1454625 m!1342983))

(assert (=> b!1454625 m!1342983))

(declare-fun m!1342987 () Bool)

(assert (=> b!1454625 m!1342987))

(assert (=> b!1454625 m!1342987))

(assert (=> b!1454625 m!1342983))

(declare-fun m!1342989 () Bool)

(assert (=> b!1454625 m!1342989))

(declare-fun m!1342991 () Bool)

(assert (=> b!1454617 m!1342991))

(declare-fun m!1342993 () Bool)

(assert (=> b!1454631 m!1342993))

(declare-fun m!1342995 () Bool)

(assert (=> b!1454629 m!1342995))

(declare-fun m!1342997 () Bool)

(assert (=> b!1454635 m!1342997))

(assert (=> b!1454635 m!1342997))

(declare-fun m!1342999 () Bool)

(assert (=> b!1454635 m!1342999))

(declare-fun m!1343001 () Bool)

(assert (=> b!1454635 m!1343001))

(declare-fun m!1343003 () Bool)

(assert (=> b!1454635 m!1343003))

(assert (=> b!1454616 m!1342983))

(assert (=> b!1454616 m!1342983))

(declare-fun m!1343005 () Bool)

(assert (=> b!1454616 m!1343005))

(assert (=> b!1454623 m!1342983))

(assert (=> b!1454623 m!1342983))

(declare-fun m!1343007 () Bool)

(assert (=> b!1454623 m!1343007))

(declare-fun m!1343009 () Bool)

(assert (=> b!1454634 m!1343009))

(declare-fun m!1343011 () Bool)

(assert (=> b!1454634 m!1343011))

(assert (=> b!1454630 m!1343001))

(declare-fun m!1343013 () Bool)

(assert (=> b!1454630 m!1343013))

(declare-fun m!1343015 () Bool)

(assert (=> start!125074 m!1343015))

(declare-fun m!1343017 () Bool)

(assert (=> start!125074 m!1343017))

(declare-fun m!1343019 () Bool)

(assert (=> b!1454620 m!1343019))

(assert (=> b!1454628 m!1342983))

(assert (=> b!1454628 m!1342983))

(declare-fun m!1343021 () Bool)

(assert (=> b!1454628 m!1343021))

(declare-fun m!1343023 () Bool)

(assert (=> b!1454618 m!1343023))

(assert (=> b!1454618 m!1343009))

(assert (=> b!1454618 m!1343011))

(declare-fun m!1343025 () Bool)

(assert (=> b!1454627 m!1343025))

(assert (=> b!1454624 m!1343001))

(declare-fun m!1343027 () Bool)

(assert (=> b!1454624 m!1343027))

(declare-fun m!1343029 () Bool)

(assert (=> b!1454624 m!1343029))

(declare-fun m!1343031 () Bool)

(assert (=> b!1454624 m!1343031))

(assert (=> b!1454624 m!1342983))

(declare-fun m!1343033 () Bool)

(assert (=> b!1454619 m!1343033))

(assert (=> b!1454619 m!1343033))

(declare-fun m!1343035 () Bool)

(assert (=> b!1454619 m!1343035))

(declare-fun m!1343037 () Bool)

(assert (=> b!1454633 m!1343037))

(assert (=> b!1454633 m!1343001))

(assert (=> b!1454633 m!1343029))

(assert (=> b!1454633 m!1343031))

(declare-fun m!1343039 () Bool)

(assert (=> b!1454633 m!1343039))

(assert (=> b!1454633 m!1342983))

(push 1)

