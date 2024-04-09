; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125338 () Bool)

(assert start!125338)

(declare-fun b!1463155 () Bool)

(declare-fun e!822415 () Bool)

(declare-fun e!822414 () Bool)

(assert (=> b!1463155 (= e!822415 e!822414)))

(declare-fun res!992552 () Bool)

(assert (=> b!1463155 (=> (not res!992552) (not e!822414))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11910 0))(
  ( (MissingZero!11910 (index!50031 (_ BitVec 32))) (Found!11910 (index!50032 (_ BitVec 32))) (Intermediate!11910 (undefined!12722 Bool) (index!50033 (_ BitVec 32)) (x!131626 (_ BitVec 32))) (Undefined!11910) (MissingVacant!11910 (index!50034 (_ BitVec 32))) )
))
(declare-fun lt!640643 () SeekEntryResult!11910)

(assert (=> b!1463155 (= res!992552 (= lt!640643 (Intermediate!11910 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!640645 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((array!98703 0))(
  ( (array!98704 (arr!47635 (Array (_ BitVec 32) (_ BitVec 64))) (size!48186 (_ BitVec 32))) )
))
(declare-fun lt!640642 () array!98703)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98703 (_ BitVec 32)) SeekEntryResult!11910)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1463155 (= lt!640643 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640645 mask!2687) lt!640645 lt!640642 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98703)

(assert (=> b!1463155 (= lt!640645 (select (store (arr!47635 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1463156 () Bool)

(declare-fun res!992564 () Bool)

(declare-fun e!822417 () Bool)

(assert (=> b!1463156 (=> (not res!992564) (not e!822417))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1463156 (= res!992564 (validKeyInArray!0 (select (arr!47635 a!2862) j!93)))))

(declare-fun b!1463157 () Bool)

(declare-fun e!822419 () Bool)

(assert (=> b!1463157 (= e!822419 e!822415)))

(declare-fun res!992562 () Bool)

(assert (=> b!1463157 (=> (not res!992562) (not e!822415))))

(declare-fun lt!640647 () SeekEntryResult!11910)

(assert (=> b!1463157 (= res!992562 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47635 a!2862) j!93) mask!2687) (select (arr!47635 a!2862) j!93) a!2862 mask!2687) lt!640647))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1463157 (= lt!640647 (Intermediate!11910 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1463158 () Bool)

(declare-fun res!992560 () Bool)

(assert (=> b!1463158 (=> (not res!992560) (not e!822417))))

(assert (=> b!1463158 (= res!992560 (validKeyInArray!0 (select (arr!47635 a!2862) i!1006)))))

(declare-fun b!1463159 () Bool)

(declare-fun e!822416 () Bool)

(assert (=> b!1463159 (= e!822416 true)))

(declare-fun lt!640646 () Bool)

(declare-fun e!822421 () Bool)

(assert (=> b!1463159 (= lt!640646 e!822421)))

(declare-fun c!134816 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1463159 (= c!134816 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1463160 () Bool)

(declare-fun e!822413 () Bool)

(assert (=> b!1463160 (= e!822413 e!822416)))

(declare-fun res!992566 () Bool)

(assert (=> b!1463160 (=> res!992566 e!822416)))

(declare-fun lt!640648 () (_ BitVec 32))

(assert (=> b!1463160 (= res!992566 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640648 #b00000000000000000000000000000000) (bvsge lt!640648 (size!48186 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1463160 (= lt!640648 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1463161 () Bool)

(assert (=> b!1463161 (= e!822421 (not (= lt!640643 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640648 lt!640645 lt!640642 mask!2687))))))

(declare-fun b!1463162 () Bool)

(declare-fun e!822420 () Bool)

(assert (=> b!1463162 (= e!822420 (= lt!640643 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640645 lt!640642 mask!2687)))))

(declare-fun b!1463164 () Bool)

(declare-fun e!822422 () Bool)

(assert (=> b!1463164 (= e!822422 (or (= (select (arr!47635 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47635 a!2862) intermediateBeforeIndex!19) (select (arr!47635 a!2862) j!93))))))

(declare-fun b!1463165 () Bool)

(declare-fun res!992554 () Bool)

(assert (=> b!1463165 (=> (not res!992554) (not e!822417))))

(declare-datatypes ((List!34316 0))(
  ( (Nil!34313) (Cons!34312 (h!35662 (_ BitVec 64)) (t!49017 List!34316)) )
))
(declare-fun arrayNoDuplicates!0 (array!98703 (_ BitVec 32) List!34316) Bool)

(assert (=> b!1463165 (= res!992554 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34313))))

(declare-fun b!1463166 () Bool)

(declare-fun res!992567 () Bool)

(assert (=> b!1463166 (=> (not res!992567) (not e!822417))))

(assert (=> b!1463166 (= res!992567 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48186 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48186 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48186 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1463167 () Bool)

(declare-fun res!992565 () Bool)

(assert (=> b!1463167 (=> (not res!992565) (not e!822414))))

(assert (=> b!1463167 (= res!992565 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1463168 () Bool)

(declare-fun res!992559 () Bool)

(assert (=> b!1463168 (=> (not res!992559) (not e!822417))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98703 (_ BitVec 32)) Bool)

(assert (=> b!1463168 (= res!992559 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1463163 () Bool)

(declare-fun res!992556 () Bool)

(assert (=> b!1463163 (=> (not res!992556) (not e!822422))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98703 (_ BitVec 32)) SeekEntryResult!11910)

(assert (=> b!1463163 (= res!992556 (= (seekEntryOrOpen!0 (select (arr!47635 a!2862) j!93) a!2862 mask!2687) (Found!11910 j!93)))))

(declare-fun res!992551 () Bool)

(assert (=> start!125338 (=> (not res!992551) (not e!822417))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125338 (= res!992551 (validMask!0 mask!2687))))

(assert (=> start!125338 e!822417))

(assert (=> start!125338 true))

(declare-fun array_inv!36580 (array!98703) Bool)

(assert (=> start!125338 (array_inv!36580 a!2862)))

(declare-fun b!1463169 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98703 (_ BitVec 32)) SeekEntryResult!11910)

(assert (=> b!1463169 (= e!822420 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640645 lt!640642 mask!2687) (seekEntryOrOpen!0 lt!640645 lt!640642 mask!2687)))))

(declare-fun b!1463170 () Bool)

(assert (=> b!1463170 (= e!822417 e!822419)))

(declare-fun res!992553 () Bool)

(assert (=> b!1463170 (=> (not res!992553) (not e!822419))))

(assert (=> b!1463170 (= res!992553 (= (select (store (arr!47635 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1463170 (= lt!640642 (array!98704 (store (arr!47635 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48186 a!2862)))))

(declare-fun b!1463171 () Bool)

(assert (=> b!1463171 (= e!822421 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640648 intermediateAfterIndex!19 lt!640645 lt!640642 mask!2687) (seekEntryOrOpen!0 lt!640645 lt!640642 mask!2687))))))

(declare-fun b!1463172 () Bool)

(declare-fun res!992557 () Bool)

(assert (=> b!1463172 (=> (not res!992557) (not e!822414))))

(assert (=> b!1463172 (= res!992557 e!822420)))

(declare-fun c!134815 () Bool)

(assert (=> b!1463172 (= c!134815 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1463173 () Bool)

(declare-fun res!992558 () Bool)

(assert (=> b!1463173 (=> (not res!992558) (not e!822417))))

(assert (=> b!1463173 (= res!992558 (and (= (size!48186 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48186 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48186 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1463174 () Bool)

(declare-fun res!992561 () Bool)

(assert (=> b!1463174 (=> (not res!992561) (not e!822415))))

(assert (=> b!1463174 (= res!992561 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47635 a!2862) j!93) a!2862 mask!2687) lt!640647))))

(declare-fun b!1463175 () Bool)

(assert (=> b!1463175 (= e!822414 (not e!822413))))

(declare-fun res!992555 () Bool)

(assert (=> b!1463175 (=> res!992555 e!822413)))

(assert (=> b!1463175 (= res!992555 (or (and (= (select (arr!47635 a!2862) index!646) (select (store (arr!47635 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47635 a!2862) index!646) (select (arr!47635 a!2862) j!93))) (= (select (arr!47635 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1463175 e!822422))

(declare-fun res!992563 () Bool)

(assert (=> b!1463175 (=> (not res!992563) (not e!822422))))

(assert (=> b!1463175 (= res!992563 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49264 0))(
  ( (Unit!49265) )
))
(declare-fun lt!640644 () Unit!49264)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98703 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49264)

(assert (=> b!1463175 (= lt!640644 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1463176 () Bool)

(declare-fun res!992568 () Bool)

(assert (=> b!1463176 (=> res!992568 e!822416)))

(assert (=> b!1463176 (= res!992568 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640648 (select (arr!47635 a!2862) j!93) a!2862 mask!2687) lt!640647)))))

(assert (= (and start!125338 res!992551) b!1463173))

(assert (= (and b!1463173 res!992558) b!1463158))

(assert (= (and b!1463158 res!992560) b!1463156))

(assert (= (and b!1463156 res!992564) b!1463168))

(assert (= (and b!1463168 res!992559) b!1463165))

(assert (= (and b!1463165 res!992554) b!1463166))

(assert (= (and b!1463166 res!992567) b!1463170))

(assert (= (and b!1463170 res!992553) b!1463157))

(assert (= (and b!1463157 res!992562) b!1463174))

(assert (= (and b!1463174 res!992561) b!1463155))

(assert (= (and b!1463155 res!992552) b!1463172))

(assert (= (and b!1463172 c!134815) b!1463162))

(assert (= (and b!1463172 (not c!134815)) b!1463169))

(assert (= (and b!1463172 res!992557) b!1463167))

(assert (= (and b!1463167 res!992565) b!1463175))

(assert (= (and b!1463175 res!992563) b!1463163))

(assert (= (and b!1463163 res!992556) b!1463164))

(assert (= (and b!1463175 (not res!992555)) b!1463160))

(assert (= (and b!1463160 (not res!992566)) b!1463176))

(assert (= (and b!1463176 (not res!992568)) b!1463159))

(assert (= (and b!1463159 c!134816) b!1463161))

(assert (= (and b!1463159 (not c!134816)) b!1463171))

(declare-fun m!1350573 () Bool)

(assert (=> b!1463165 m!1350573))

(declare-fun m!1350575 () Bool)

(assert (=> b!1463162 m!1350575))

(declare-fun m!1350577 () Bool)

(assert (=> b!1463155 m!1350577))

(assert (=> b!1463155 m!1350577))

(declare-fun m!1350579 () Bool)

(assert (=> b!1463155 m!1350579))

(declare-fun m!1350581 () Bool)

(assert (=> b!1463155 m!1350581))

(declare-fun m!1350583 () Bool)

(assert (=> b!1463155 m!1350583))

(declare-fun m!1350585 () Bool)

(assert (=> b!1463175 m!1350585))

(assert (=> b!1463175 m!1350581))

(declare-fun m!1350587 () Bool)

(assert (=> b!1463175 m!1350587))

(declare-fun m!1350589 () Bool)

(assert (=> b!1463175 m!1350589))

(declare-fun m!1350591 () Bool)

(assert (=> b!1463175 m!1350591))

(declare-fun m!1350593 () Bool)

(assert (=> b!1463175 m!1350593))

(assert (=> b!1463156 m!1350593))

(assert (=> b!1463156 m!1350593))

(declare-fun m!1350595 () Bool)

(assert (=> b!1463156 m!1350595))

(declare-fun m!1350597 () Bool)

(assert (=> b!1463158 m!1350597))

(assert (=> b!1463158 m!1350597))

(declare-fun m!1350599 () Bool)

(assert (=> b!1463158 m!1350599))

(declare-fun m!1350601 () Bool)

(assert (=> b!1463168 m!1350601))

(assert (=> b!1463163 m!1350593))

(assert (=> b!1463163 m!1350593))

(declare-fun m!1350603 () Bool)

(assert (=> b!1463163 m!1350603))

(declare-fun m!1350605 () Bool)

(assert (=> start!125338 m!1350605))

(declare-fun m!1350607 () Bool)

(assert (=> start!125338 m!1350607))

(assert (=> b!1463174 m!1350593))

(assert (=> b!1463174 m!1350593))

(declare-fun m!1350609 () Bool)

(assert (=> b!1463174 m!1350609))

(declare-fun m!1350611 () Bool)

(assert (=> b!1463160 m!1350611))

(declare-fun m!1350613 () Bool)

(assert (=> b!1463161 m!1350613))

(declare-fun m!1350615 () Bool)

(assert (=> b!1463164 m!1350615))

(assert (=> b!1463164 m!1350593))

(declare-fun m!1350617 () Bool)

(assert (=> b!1463171 m!1350617))

(declare-fun m!1350619 () Bool)

(assert (=> b!1463171 m!1350619))

(assert (=> b!1463170 m!1350581))

(declare-fun m!1350621 () Bool)

(assert (=> b!1463170 m!1350621))

(assert (=> b!1463176 m!1350593))

(assert (=> b!1463176 m!1350593))

(declare-fun m!1350623 () Bool)

(assert (=> b!1463176 m!1350623))

(declare-fun m!1350625 () Bool)

(assert (=> b!1463169 m!1350625))

(assert (=> b!1463169 m!1350619))

(assert (=> b!1463157 m!1350593))

(assert (=> b!1463157 m!1350593))

(declare-fun m!1350627 () Bool)

(assert (=> b!1463157 m!1350627))

(assert (=> b!1463157 m!1350627))

(assert (=> b!1463157 m!1350593))

(declare-fun m!1350629 () Bool)

(assert (=> b!1463157 m!1350629))

(push 1)

