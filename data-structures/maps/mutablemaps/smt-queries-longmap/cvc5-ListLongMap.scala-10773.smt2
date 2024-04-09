; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126178 () Bool)

(assert start!126178)

(declare-fun b!1476566 () Bool)

(declare-fun e!828440 () Bool)

(assert (=> b!1476566 (= e!828440 (not true))))

(declare-fun e!828432 () Bool)

(assert (=> b!1476566 e!828432))

(declare-fun res!1002891 () Bool)

(assert (=> b!1476566 (=> (not res!1002891) (not e!828432))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12138 0))(
  ( (MissingZero!12138 (index!50943 (_ BitVec 32))) (Found!12138 (index!50944 (_ BitVec 32))) (Intermediate!12138 (undefined!12950 Bool) (index!50945 (_ BitVec 32)) (x!132548 (_ BitVec 32))) (Undefined!12138) (MissingVacant!12138 (index!50946 (_ BitVec 32))) )
))
(declare-fun lt!645024 () SeekEntryResult!12138)

(declare-datatypes ((array!99201 0))(
  ( (array!99202 (arr!47875 (Array (_ BitVec 32) (_ BitVec 64))) (size!48426 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99201)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1476566 (= res!1002891 (and (= lt!645024 (Found!12138 j!93)) (or (= (select (arr!47875 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47875 a!2862) intermediateBeforeIndex!19) (select (arr!47875 a!2862) j!93)))))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99201 (_ BitVec 32)) SeekEntryResult!12138)

(assert (=> b!1476566 (= lt!645024 (seekEntryOrOpen!0 (select (arr!47875 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99201 (_ BitVec 32)) Bool)

(assert (=> b!1476566 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49564 0))(
  ( (Unit!49565) )
))
(declare-fun lt!645025 () Unit!49564)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99201 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49564)

(assert (=> b!1476566 (= lt!645025 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1476567 () Bool)

(declare-fun res!1002889 () Bool)

(declare-fun e!828435 () Bool)

(assert (=> b!1476567 (=> (not res!1002889) (not e!828435))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1476567 (= res!1002889 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48426 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48426 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48426 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1476568 () Bool)

(declare-fun res!1002903 () Bool)

(assert (=> b!1476568 (=> (not res!1002903) (not e!828435))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1476568 (= res!1002903 (and (= (size!48426 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48426 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48426 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1476569 () Bool)

(declare-fun e!828439 () Bool)

(declare-fun e!828434 () Bool)

(assert (=> b!1476569 (= e!828439 e!828434)))

(declare-fun res!1002895 () Bool)

(assert (=> b!1476569 (=> (not res!1002895) (not e!828434))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99201 (_ BitVec 32)) SeekEntryResult!12138)

(assert (=> b!1476569 (= res!1002895 (= lt!645024 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47875 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1476570 () Bool)

(declare-fun res!1002899 () Bool)

(assert (=> b!1476570 (=> (not res!1002899) (not e!828435))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1476570 (= res!1002899 (validKeyInArray!0 (select (arr!47875 a!2862) i!1006)))))

(declare-fun b!1476571 () Bool)

(declare-fun e!828436 () Bool)

(assert (=> b!1476571 (= e!828435 e!828436)))

(declare-fun res!1002900 () Bool)

(assert (=> b!1476571 (=> (not res!1002900) (not e!828436))))

(assert (=> b!1476571 (= res!1002900 (= (select (store (arr!47875 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!645028 () array!99201)

(assert (=> b!1476571 (= lt!645028 (array!99202 (store (arr!47875 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48426 a!2862)))))

(declare-fun b!1476572 () Bool)

(assert (=> b!1476572 (= e!828432 e!828439)))

(declare-fun res!1002894 () Bool)

(assert (=> b!1476572 (=> res!1002894 e!828439)))

(assert (=> b!1476572 (= res!1002894 (or (and (= (select (arr!47875 a!2862) index!646) (select (store (arr!47875 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47875 a!2862) index!646) (select (arr!47875 a!2862) j!93))) (not (= (select (arr!47875 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1476573 () Bool)

(declare-fun res!1002901 () Bool)

(assert (=> b!1476573 (=> (not res!1002901) (not e!828435))))

(assert (=> b!1476573 (= res!1002901 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1476574 () Bool)

(declare-fun res!1002892 () Bool)

(assert (=> b!1476574 (=> (not res!1002892) (not e!828435))))

(assert (=> b!1476574 (= res!1002892 (validKeyInArray!0 (select (arr!47875 a!2862) j!93)))))

(declare-fun b!1476575 () Bool)

(declare-fun res!1002888 () Bool)

(assert (=> b!1476575 (=> (not res!1002888) (not e!828440))))

(assert (=> b!1476575 (= res!1002888 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1476576 () Bool)

(declare-fun res!1002890 () Bool)

(assert (=> b!1476576 (=> (not res!1002890) (not e!828435))))

(declare-datatypes ((List!34556 0))(
  ( (Nil!34553) (Cons!34552 (h!35920 (_ BitVec 64)) (t!49257 List!34556)) )
))
(declare-fun arrayNoDuplicates!0 (array!99201 (_ BitVec 32) List!34556) Bool)

(assert (=> b!1476576 (= res!1002890 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34553))))

(declare-fun b!1476577 () Bool)

(declare-fun res!1002893 () Bool)

(declare-fun e!828433 () Bool)

(assert (=> b!1476577 (=> (not res!1002893) (not e!828433))))

(declare-fun lt!645027 () SeekEntryResult!12138)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99201 (_ BitVec 32)) SeekEntryResult!12138)

(assert (=> b!1476577 (= res!1002893 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47875 a!2862) j!93) a!2862 mask!2687) lt!645027))))

(declare-fun lt!645023 () (_ BitVec 64))

(declare-fun b!1476579 () Bool)

(declare-fun e!828438 () Bool)

(assert (=> b!1476579 (= e!828438 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645023 lt!645028 mask!2687) (seekEntryOrOpen!0 lt!645023 lt!645028 mask!2687)))))

(declare-fun b!1476580 () Bool)

(assert (=> b!1476580 (= e!828433 e!828440)))

(declare-fun res!1002896 () Bool)

(assert (=> b!1476580 (=> (not res!1002896) (not e!828440))))

(declare-fun lt!645026 () SeekEntryResult!12138)

(assert (=> b!1476580 (= res!1002896 (= lt!645026 (Intermediate!12138 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1476580 (= lt!645026 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645023 mask!2687) lt!645023 lt!645028 mask!2687))))

(assert (=> b!1476580 (= lt!645023 (select (store (arr!47875 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1476581 () Bool)

(assert (=> b!1476581 (= e!828436 e!828433)))

(declare-fun res!1002898 () Bool)

(assert (=> b!1476581 (=> (not res!1002898) (not e!828433))))

(assert (=> b!1476581 (= res!1002898 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47875 a!2862) j!93) mask!2687) (select (arr!47875 a!2862) j!93) a!2862 mask!2687) lt!645027))))

(assert (=> b!1476581 (= lt!645027 (Intermediate!12138 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1476582 () Bool)

(assert (=> b!1476582 (= e!828438 (= lt!645026 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645023 lt!645028 mask!2687)))))

(declare-fun b!1476583 () Bool)

(declare-fun res!1002902 () Bool)

(assert (=> b!1476583 (=> (not res!1002902) (not e!828440))))

(assert (=> b!1476583 (= res!1002902 e!828438)))

(declare-fun c!136361 () Bool)

(assert (=> b!1476583 (= c!136361 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!1002897 () Bool)

(assert (=> start!126178 (=> (not res!1002897) (not e!828435))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126178 (= res!1002897 (validMask!0 mask!2687))))

(assert (=> start!126178 e!828435))

(assert (=> start!126178 true))

(declare-fun array_inv!36820 (array!99201) Bool)

(assert (=> start!126178 (array_inv!36820 a!2862)))

(declare-fun b!1476578 () Bool)

(assert (=> b!1476578 (= e!828434 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(assert (= (and start!126178 res!1002897) b!1476568))

(assert (= (and b!1476568 res!1002903) b!1476570))

(assert (= (and b!1476570 res!1002899) b!1476574))

(assert (= (and b!1476574 res!1002892) b!1476573))

(assert (= (and b!1476573 res!1002901) b!1476576))

(assert (= (and b!1476576 res!1002890) b!1476567))

(assert (= (and b!1476567 res!1002889) b!1476571))

(assert (= (and b!1476571 res!1002900) b!1476581))

(assert (= (and b!1476581 res!1002898) b!1476577))

(assert (= (and b!1476577 res!1002893) b!1476580))

(assert (= (and b!1476580 res!1002896) b!1476583))

(assert (= (and b!1476583 c!136361) b!1476582))

(assert (= (and b!1476583 (not c!136361)) b!1476579))

(assert (= (and b!1476583 res!1002902) b!1476575))

(assert (= (and b!1476575 res!1002888) b!1476566))

(assert (= (and b!1476566 res!1002891) b!1476572))

(assert (= (and b!1476572 (not res!1002894)) b!1476569))

(assert (= (and b!1476569 res!1002895) b!1476578))

(declare-fun m!1362603 () Bool)

(assert (=> start!126178 m!1362603))

(declare-fun m!1362605 () Bool)

(assert (=> start!126178 m!1362605))

(declare-fun m!1362607 () Bool)

(assert (=> b!1476579 m!1362607))

(declare-fun m!1362609 () Bool)

(assert (=> b!1476579 m!1362609))

(declare-fun m!1362611 () Bool)

(assert (=> b!1476573 m!1362611))

(declare-fun m!1362613 () Bool)

(assert (=> b!1476570 m!1362613))

(assert (=> b!1476570 m!1362613))

(declare-fun m!1362615 () Bool)

(assert (=> b!1476570 m!1362615))

(declare-fun m!1362617 () Bool)

(assert (=> b!1476576 m!1362617))

(declare-fun m!1362619 () Bool)

(assert (=> b!1476572 m!1362619))

(declare-fun m!1362621 () Bool)

(assert (=> b!1476572 m!1362621))

(declare-fun m!1362623 () Bool)

(assert (=> b!1476572 m!1362623))

(declare-fun m!1362625 () Bool)

(assert (=> b!1476572 m!1362625))

(assert (=> b!1476569 m!1362625))

(assert (=> b!1476569 m!1362625))

(declare-fun m!1362627 () Bool)

(assert (=> b!1476569 m!1362627))

(assert (=> b!1476581 m!1362625))

(assert (=> b!1476581 m!1362625))

(declare-fun m!1362629 () Bool)

(assert (=> b!1476581 m!1362629))

(assert (=> b!1476581 m!1362629))

(assert (=> b!1476581 m!1362625))

(declare-fun m!1362631 () Bool)

(assert (=> b!1476581 m!1362631))

(declare-fun m!1362633 () Bool)

(assert (=> b!1476580 m!1362633))

(assert (=> b!1476580 m!1362633))

(declare-fun m!1362635 () Bool)

(assert (=> b!1476580 m!1362635))

(assert (=> b!1476580 m!1362621))

(declare-fun m!1362637 () Bool)

(assert (=> b!1476580 m!1362637))

(assert (=> b!1476577 m!1362625))

(assert (=> b!1476577 m!1362625))

(declare-fun m!1362639 () Bool)

(assert (=> b!1476577 m!1362639))

(assert (=> b!1476571 m!1362621))

(declare-fun m!1362641 () Bool)

(assert (=> b!1476571 m!1362641))

(declare-fun m!1362643 () Bool)

(assert (=> b!1476566 m!1362643))

(declare-fun m!1362645 () Bool)

(assert (=> b!1476566 m!1362645))

(assert (=> b!1476566 m!1362625))

(declare-fun m!1362647 () Bool)

(assert (=> b!1476566 m!1362647))

(declare-fun m!1362649 () Bool)

(assert (=> b!1476566 m!1362649))

(assert (=> b!1476566 m!1362625))

(assert (=> b!1476574 m!1362625))

(assert (=> b!1476574 m!1362625))

(declare-fun m!1362651 () Bool)

(assert (=> b!1476574 m!1362651))

(declare-fun m!1362653 () Bool)

(assert (=> b!1476582 m!1362653))

(push 1)

