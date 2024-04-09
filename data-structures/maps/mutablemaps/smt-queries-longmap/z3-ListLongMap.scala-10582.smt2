; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124674 () Bool)

(assert start!124674)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1443441 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!633831 () (_ BitVec 64))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((array!98039 0))(
  ( (array!98040 (arr!47303 (Array (_ BitVec 32) (_ BitVec 64))) (size!47854 (_ BitVec 32))) )
))
(declare-fun lt!633828 () array!98039)

(declare-fun e!813422 () Bool)

(declare-datatypes ((SeekEntryResult!11578 0))(
  ( (MissingZero!11578 (index!48703 (_ BitVec 32))) (Found!11578 (index!48704 (_ BitVec 32))) (Intermediate!11578 (undefined!12390 Bool) (index!48705 (_ BitVec 32)) (x!130406 (_ BitVec 32))) (Undefined!11578) (MissingVacant!11578 (index!48706 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98039 (_ BitVec 32)) SeekEntryResult!11578)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98039 (_ BitVec 32)) SeekEntryResult!11578)

(assert (=> b!1443441 (= e!813422 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633831 lt!633828 mask!2687) (seekEntryOrOpen!0 lt!633831 lt!633828 mask!2687)))))

(declare-fun res!975651 () Bool)

(declare-fun e!813420 () Bool)

(assert (=> start!124674 (=> (not res!975651) (not e!813420))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124674 (= res!975651 (validMask!0 mask!2687))))

(assert (=> start!124674 e!813420))

(assert (=> start!124674 true))

(declare-fun a!2862 () array!98039)

(declare-fun array_inv!36248 (array!98039) Bool)

(assert (=> start!124674 (array_inv!36248 a!2862)))

(declare-fun b!1443442 () Bool)

(declare-fun res!975657 () Bool)

(assert (=> b!1443442 (=> (not res!975657) (not e!813420))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1443442 (= res!975657 (validKeyInArray!0 (select (arr!47303 a!2862) j!93)))))

(declare-fun b!1443443 () Bool)

(declare-fun res!975653 () Bool)

(declare-fun e!813421 () Bool)

(assert (=> b!1443443 (=> (not res!975653) (not e!813421))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1443443 (= res!975653 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1443444 () Bool)

(declare-fun res!975655 () Bool)

(assert (=> b!1443444 (=> (not res!975655) (not e!813420))))

(assert (=> b!1443444 (= res!975655 (and (= (size!47854 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47854 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47854 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1443445 () Bool)

(declare-fun e!813424 () Bool)

(assert (=> b!1443445 (= e!813424 e!813421)))

(declare-fun res!975654 () Bool)

(assert (=> b!1443445 (=> (not res!975654) (not e!813421))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!633830 () SeekEntryResult!11578)

(assert (=> b!1443445 (= res!975654 (= lt!633830 (Intermediate!11578 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98039 (_ BitVec 32)) SeekEntryResult!11578)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1443445 (= lt!633830 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633831 mask!2687) lt!633831 lt!633828 mask!2687))))

(assert (=> b!1443445 (= lt!633831 (select (store (arr!47303 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1443446 () Bool)

(declare-fun e!813419 () Bool)

(assert (=> b!1443446 (= e!813420 e!813419)))

(declare-fun res!975644 () Bool)

(assert (=> b!1443446 (=> (not res!975644) (not e!813419))))

(assert (=> b!1443446 (= res!975644 (= (select (store (arr!47303 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1443446 (= lt!633828 (array!98040 (store (arr!47303 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47854 a!2862)))))

(declare-fun b!1443447 () Bool)

(declare-fun res!975645 () Bool)

(assert (=> b!1443447 (=> (not res!975645) (not e!813420))))

(assert (=> b!1443447 (= res!975645 (validKeyInArray!0 (select (arr!47303 a!2862) i!1006)))))

(declare-fun b!1443448 () Bool)

(declare-fun res!975650 () Bool)

(assert (=> b!1443448 (=> (not res!975650) (not e!813420))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1443448 (= res!975650 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47854 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47854 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47854 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1443449 () Bool)

(assert (=> b!1443449 (= e!813419 e!813424)))

(declare-fun res!975646 () Bool)

(assert (=> b!1443449 (=> (not res!975646) (not e!813424))))

(declare-fun lt!633827 () SeekEntryResult!11578)

(assert (=> b!1443449 (= res!975646 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47303 a!2862) j!93) mask!2687) (select (arr!47303 a!2862) j!93) a!2862 mask!2687) lt!633827))))

(assert (=> b!1443449 (= lt!633827 (Intermediate!11578 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1443450 () Bool)

(declare-fun res!975647 () Bool)

(assert (=> b!1443450 (=> (not res!975647) (not e!813420))))

(declare-datatypes ((List!33984 0))(
  ( (Nil!33981) (Cons!33980 (h!35330 (_ BitVec 64)) (t!48685 List!33984)) )
))
(declare-fun arrayNoDuplicates!0 (array!98039 (_ BitVec 32) List!33984) Bool)

(assert (=> b!1443450 (= res!975647 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33981))))

(declare-fun b!1443451 () Bool)

(assert (=> b!1443451 (= e!813422 (= lt!633830 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633831 lt!633828 mask!2687)))))

(declare-fun b!1443452 () Bool)

(declare-fun res!975656 () Bool)

(assert (=> b!1443452 (=> (not res!975656) (not e!813420))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98039 (_ BitVec 32)) Bool)

(assert (=> b!1443452 (= res!975656 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1443453 () Bool)

(declare-fun res!975652 () Bool)

(assert (=> b!1443453 (=> (not res!975652) (not e!813424))))

(assert (=> b!1443453 (= res!975652 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47303 a!2862) j!93) a!2862 mask!2687) lt!633827))))

(declare-fun b!1443454 () Bool)

(declare-fun res!975648 () Bool)

(assert (=> b!1443454 (=> (not res!975648) (not e!813421))))

(assert (=> b!1443454 (= res!975648 e!813422)))

(declare-fun c!133412 () Bool)

(assert (=> b!1443454 (= c!133412 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1443455 () Bool)

(declare-fun res!975649 () Bool)

(declare-fun e!813423 () Bool)

(assert (=> b!1443455 (=> res!975649 e!813423)))

(declare-fun lt!633829 () SeekEntryResult!11578)

(assert (=> b!1443455 (= res!975649 (not (= lt!633829 (seekEntryOrOpen!0 lt!633831 lt!633828 mask!2687))))))

(declare-fun b!1443456 () Bool)

(assert (=> b!1443456 (= e!813421 (not e!813423))))

(declare-fun res!975643 () Bool)

(assert (=> b!1443456 (=> res!975643 e!813423)))

(assert (=> b!1443456 (= res!975643 (or (not (= (select (arr!47303 a!2862) index!646) (select (store (arr!47303 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47303 a!2862) index!646) (select (arr!47303 a!2862) j!93)))))))

(assert (=> b!1443456 (and (= lt!633829 (Found!11578 j!93)) (or (= (select (arr!47303 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47303 a!2862) intermediateBeforeIndex!19) (select (arr!47303 a!2862) j!93))))))

(assert (=> b!1443456 (= lt!633829 (seekEntryOrOpen!0 (select (arr!47303 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1443456 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48600 0))(
  ( (Unit!48601) )
))
(declare-fun lt!633832 () Unit!48600)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98039 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48600)

(assert (=> b!1443456 (= lt!633832 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1443457 () Bool)

(assert (=> b!1443457 (= e!813423 (bvsge mask!2687 #b00000000000000000000000000000000))))

(assert (= (and start!124674 res!975651) b!1443444))

(assert (= (and b!1443444 res!975655) b!1443447))

(assert (= (and b!1443447 res!975645) b!1443442))

(assert (= (and b!1443442 res!975657) b!1443452))

(assert (= (and b!1443452 res!975656) b!1443450))

(assert (= (and b!1443450 res!975647) b!1443448))

(assert (= (and b!1443448 res!975650) b!1443446))

(assert (= (and b!1443446 res!975644) b!1443449))

(assert (= (and b!1443449 res!975646) b!1443453))

(assert (= (and b!1443453 res!975652) b!1443445))

(assert (= (and b!1443445 res!975654) b!1443454))

(assert (= (and b!1443454 c!133412) b!1443451))

(assert (= (and b!1443454 (not c!133412)) b!1443441))

(assert (= (and b!1443454 res!975648) b!1443443))

(assert (= (and b!1443443 res!975653) b!1443456))

(assert (= (and b!1443456 (not res!975643)) b!1443455))

(assert (= (and b!1443455 (not res!975649)) b!1443457))

(declare-fun m!1332575 () Bool)

(assert (=> b!1443450 m!1332575))

(declare-fun m!1332577 () Bool)

(assert (=> b!1443441 m!1332577))

(declare-fun m!1332579 () Bool)

(assert (=> b!1443441 m!1332579))

(declare-fun m!1332581 () Bool)

(assert (=> b!1443452 m!1332581))

(declare-fun m!1332583 () Bool)

(assert (=> b!1443456 m!1332583))

(declare-fun m!1332585 () Bool)

(assert (=> b!1443456 m!1332585))

(declare-fun m!1332587 () Bool)

(assert (=> b!1443456 m!1332587))

(declare-fun m!1332589 () Bool)

(assert (=> b!1443456 m!1332589))

(declare-fun m!1332591 () Bool)

(assert (=> b!1443456 m!1332591))

(declare-fun m!1332593 () Bool)

(assert (=> b!1443456 m!1332593))

(declare-fun m!1332595 () Bool)

(assert (=> b!1443456 m!1332595))

(declare-fun m!1332597 () Bool)

(assert (=> b!1443456 m!1332597))

(assert (=> b!1443456 m!1332593))

(declare-fun m!1332599 () Bool)

(assert (=> b!1443447 m!1332599))

(assert (=> b!1443447 m!1332599))

(declare-fun m!1332601 () Bool)

(assert (=> b!1443447 m!1332601))

(declare-fun m!1332603 () Bool)

(assert (=> b!1443445 m!1332603))

(assert (=> b!1443445 m!1332603))

(declare-fun m!1332605 () Bool)

(assert (=> b!1443445 m!1332605))

(assert (=> b!1443445 m!1332585))

(declare-fun m!1332607 () Bool)

(assert (=> b!1443445 m!1332607))

(declare-fun m!1332609 () Bool)

(assert (=> start!124674 m!1332609))

(declare-fun m!1332611 () Bool)

(assert (=> start!124674 m!1332611))

(assert (=> b!1443455 m!1332579))

(declare-fun m!1332613 () Bool)

(assert (=> b!1443451 m!1332613))

(assert (=> b!1443442 m!1332593))

(assert (=> b!1443442 m!1332593))

(declare-fun m!1332615 () Bool)

(assert (=> b!1443442 m!1332615))

(assert (=> b!1443446 m!1332585))

(declare-fun m!1332617 () Bool)

(assert (=> b!1443446 m!1332617))

(assert (=> b!1443449 m!1332593))

(assert (=> b!1443449 m!1332593))

(declare-fun m!1332619 () Bool)

(assert (=> b!1443449 m!1332619))

(assert (=> b!1443449 m!1332619))

(assert (=> b!1443449 m!1332593))

(declare-fun m!1332621 () Bool)

(assert (=> b!1443449 m!1332621))

(assert (=> b!1443453 m!1332593))

(assert (=> b!1443453 m!1332593))

(declare-fun m!1332623 () Bool)

(assert (=> b!1443453 m!1332623))

(check-sat (not b!1443450) (not b!1443451) (not b!1443455) (not b!1443449) (not b!1443452) (not b!1443456) (not start!124674) (not b!1443453) (not b!1443441) (not b!1443445) (not b!1443447) (not b!1443442))
(check-sat)
