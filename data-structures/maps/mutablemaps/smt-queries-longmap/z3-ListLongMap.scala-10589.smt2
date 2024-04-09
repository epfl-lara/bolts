; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124716 () Bool)

(assert start!124716)

(declare-fun b!1444557 () Bool)

(declare-fun e!813900 () Bool)

(assert (=> b!1444557 (= e!813900 (not true))))

(declare-fun e!813902 () Bool)

(assert (=> b!1444557 e!813902))

(declare-fun res!976634 () Bool)

(assert (=> b!1444557 (=> (not res!976634) (not e!813902))))

(declare-datatypes ((array!98081 0))(
  ( (array!98082 (arr!47324 (Array (_ BitVec 32) (_ BitVec 64))) (size!47875 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98081)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98081 (_ BitVec 32)) Bool)

(assert (=> b!1444557 (= res!976634 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48642 0))(
  ( (Unit!48643) )
))
(declare-fun lt!634200 () Unit!48642)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98081 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48642)

(assert (=> b!1444557 (= lt!634200 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1444558 () Bool)

(declare-fun res!976639 () Bool)

(declare-fun e!813896 () Bool)

(assert (=> b!1444558 (=> (not res!976639) (not e!813896))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1444558 (= res!976639 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47875 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47875 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47875 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1444559 () Bool)

(declare-fun res!976646 () Bool)

(assert (=> b!1444559 (=> (not res!976646) (not e!813902))))

(declare-datatypes ((SeekEntryResult!11599 0))(
  ( (MissingZero!11599 (index!48787 (_ BitVec 32))) (Found!11599 (index!48788 (_ BitVec 32))) (Intermediate!11599 (undefined!12411 Bool) (index!48789 (_ BitVec 32)) (x!130483 (_ BitVec 32))) (Undefined!11599) (MissingVacant!11599 (index!48790 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98081 (_ BitVec 32)) SeekEntryResult!11599)

(assert (=> b!1444559 (= res!976646 (= (seekEntryOrOpen!0 (select (arr!47324 a!2862) j!93) a!2862 mask!2687) (Found!11599 j!93)))))

(declare-fun res!976644 () Bool)

(assert (=> start!124716 (=> (not res!976644) (not e!813896))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124716 (= res!976644 (validMask!0 mask!2687))))

(assert (=> start!124716 e!813896))

(assert (=> start!124716 true))

(declare-fun array_inv!36269 (array!98081) Bool)

(assert (=> start!124716 (array_inv!36269 a!2862)))

(declare-fun lt!634201 () (_ BitVec 64))

(declare-fun lt!634204 () array!98081)

(declare-fun b!1444560 () Bool)

(declare-fun e!813897 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98081 (_ BitVec 32)) SeekEntryResult!11599)

(assert (=> b!1444560 (= e!813897 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634201 lt!634204 mask!2687) (seekEntryOrOpen!0 lt!634201 lt!634204 mask!2687)))))

(declare-fun b!1444561 () Bool)

(declare-fun res!976640 () Bool)

(assert (=> b!1444561 (=> (not res!976640) (not e!813896))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1444561 (= res!976640 (validKeyInArray!0 (select (arr!47324 a!2862) i!1006)))))

(declare-fun lt!634202 () SeekEntryResult!11599)

(declare-fun b!1444562 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98081 (_ BitVec 32)) SeekEntryResult!11599)

(assert (=> b!1444562 (= e!813897 (= lt!634202 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634201 lt!634204 mask!2687)))))

(declare-fun b!1444563 () Bool)

(declare-fun res!976638 () Bool)

(assert (=> b!1444563 (=> (not res!976638) (not e!813900))))

(assert (=> b!1444563 (= res!976638 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1444564 () Bool)

(declare-fun res!976633 () Bool)

(assert (=> b!1444564 (=> (not res!976633) (not e!813900))))

(assert (=> b!1444564 (= res!976633 e!813897)))

(declare-fun c!133475 () Bool)

(assert (=> b!1444564 (= c!133475 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1444565 () Bool)

(declare-fun e!813898 () Bool)

(assert (=> b!1444565 (= e!813896 e!813898)))

(declare-fun res!976637 () Bool)

(assert (=> b!1444565 (=> (not res!976637) (not e!813898))))

(assert (=> b!1444565 (= res!976637 (= (select (store (arr!47324 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1444565 (= lt!634204 (array!98082 (store (arr!47324 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47875 a!2862)))))

(declare-fun b!1444566 () Bool)

(declare-fun res!976636 () Bool)

(assert (=> b!1444566 (=> (not res!976636) (not e!813896))))

(assert (=> b!1444566 (= res!976636 (and (= (size!47875 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47875 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47875 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1444567 () Bool)

(declare-fun e!813899 () Bool)

(assert (=> b!1444567 (= e!813899 e!813900)))

(declare-fun res!976647 () Bool)

(assert (=> b!1444567 (=> (not res!976647) (not e!813900))))

(assert (=> b!1444567 (= res!976647 (= lt!634202 (Intermediate!11599 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1444567 (= lt!634202 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634201 mask!2687) lt!634201 lt!634204 mask!2687))))

(assert (=> b!1444567 (= lt!634201 (select (store (arr!47324 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1444568 () Bool)

(declare-fun res!976645 () Bool)

(assert (=> b!1444568 (=> (not res!976645) (not e!813899))))

(declare-fun lt!634203 () SeekEntryResult!11599)

(assert (=> b!1444568 (= res!976645 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47324 a!2862) j!93) a!2862 mask!2687) lt!634203))))

(declare-fun b!1444569 () Bool)

(assert (=> b!1444569 (= e!813898 e!813899)))

(declare-fun res!976643 () Bool)

(assert (=> b!1444569 (=> (not res!976643) (not e!813899))))

(assert (=> b!1444569 (= res!976643 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47324 a!2862) j!93) mask!2687) (select (arr!47324 a!2862) j!93) a!2862 mask!2687) lt!634203))))

(assert (=> b!1444569 (= lt!634203 (Intermediate!11599 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1444570 () Bool)

(assert (=> b!1444570 (= e!813902 (or (= (select (arr!47324 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47324 a!2862) intermediateBeforeIndex!19) (select (arr!47324 a!2862) j!93))))))

(declare-fun b!1444571 () Bool)

(declare-fun res!976641 () Bool)

(assert (=> b!1444571 (=> (not res!976641) (not e!813896))))

(declare-datatypes ((List!34005 0))(
  ( (Nil!34002) (Cons!34001 (h!35351 (_ BitVec 64)) (t!48706 List!34005)) )
))
(declare-fun arrayNoDuplicates!0 (array!98081 (_ BitVec 32) List!34005) Bool)

(assert (=> b!1444571 (= res!976641 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34002))))

(declare-fun b!1444572 () Bool)

(declare-fun res!976642 () Bool)

(assert (=> b!1444572 (=> (not res!976642) (not e!813896))))

(assert (=> b!1444572 (= res!976642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1444573 () Bool)

(declare-fun res!976635 () Bool)

(assert (=> b!1444573 (=> (not res!976635) (not e!813896))))

(assert (=> b!1444573 (= res!976635 (validKeyInArray!0 (select (arr!47324 a!2862) j!93)))))

(assert (= (and start!124716 res!976644) b!1444566))

(assert (= (and b!1444566 res!976636) b!1444561))

(assert (= (and b!1444561 res!976640) b!1444573))

(assert (= (and b!1444573 res!976635) b!1444572))

(assert (= (and b!1444572 res!976642) b!1444571))

(assert (= (and b!1444571 res!976641) b!1444558))

(assert (= (and b!1444558 res!976639) b!1444565))

(assert (= (and b!1444565 res!976637) b!1444569))

(assert (= (and b!1444569 res!976643) b!1444568))

(assert (= (and b!1444568 res!976645) b!1444567))

(assert (= (and b!1444567 res!976647) b!1444564))

(assert (= (and b!1444564 c!133475) b!1444562))

(assert (= (and b!1444564 (not c!133475)) b!1444560))

(assert (= (and b!1444564 res!976633) b!1444563))

(assert (= (and b!1444563 res!976638) b!1444557))

(assert (= (and b!1444557 res!976634) b!1444559))

(assert (= (and b!1444559 res!976646) b!1444570))

(declare-fun m!1333627 () Bool)

(assert (=> b!1444565 m!1333627))

(declare-fun m!1333629 () Bool)

(assert (=> b!1444565 m!1333629))

(declare-fun m!1333631 () Bool)

(assert (=> b!1444560 m!1333631))

(declare-fun m!1333633 () Bool)

(assert (=> b!1444560 m!1333633))

(declare-fun m!1333635 () Bool)

(assert (=> b!1444562 m!1333635))

(declare-fun m!1333637 () Bool)

(assert (=> b!1444571 m!1333637))

(declare-fun m!1333639 () Bool)

(assert (=> b!1444570 m!1333639))

(declare-fun m!1333641 () Bool)

(assert (=> b!1444570 m!1333641))

(assert (=> b!1444573 m!1333641))

(assert (=> b!1444573 m!1333641))

(declare-fun m!1333643 () Bool)

(assert (=> b!1444573 m!1333643))

(assert (=> b!1444559 m!1333641))

(assert (=> b!1444559 m!1333641))

(declare-fun m!1333645 () Bool)

(assert (=> b!1444559 m!1333645))

(declare-fun m!1333647 () Bool)

(assert (=> start!124716 m!1333647))

(declare-fun m!1333649 () Bool)

(assert (=> start!124716 m!1333649))

(assert (=> b!1444568 m!1333641))

(assert (=> b!1444568 m!1333641))

(declare-fun m!1333651 () Bool)

(assert (=> b!1444568 m!1333651))

(declare-fun m!1333653 () Bool)

(assert (=> b!1444572 m!1333653))

(declare-fun m!1333655 () Bool)

(assert (=> b!1444557 m!1333655))

(declare-fun m!1333657 () Bool)

(assert (=> b!1444557 m!1333657))

(declare-fun m!1333659 () Bool)

(assert (=> b!1444561 m!1333659))

(assert (=> b!1444561 m!1333659))

(declare-fun m!1333661 () Bool)

(assert (=> b!1444561 m!1333661))

(assert (=> b!1444569 m!1333641))

(assert (=> b!1444569 m!1333641))

(declare-fun m!1333663 () Bool)

(assert (=> b!1444569 m!1333663))

(assert (=> b!1444569 m!1333663))

(assert (=> b!1444569 m!1333641))

(declare-fun m!1333665 () Bool)

(assert (=> b!1444569 m!1333665))

(declare-fun m!1333667 () Bool)

(assert (=> b!1444567 m!1333667))

(assert (=> b!1444567 m!1333667))

(declare-fun m!1333669 () Bool)

(assert (=> b!1444567 m!1333669))

(assert (=> b!1444567 m!1333627))

(declare-fun m!1333671 () Bool)

(assert (=> b!1444567 m!1333671))

(check-sat (not b!1444567) (not b!1444559) (not start!124716) (not b!1444560) (not b!1444571) (not b!1444562) (not b!1444568) (not b!1444557) (not b!1444573) (not b!1444569) (not b!1444572) (not b!1444561))
(check-sat)
