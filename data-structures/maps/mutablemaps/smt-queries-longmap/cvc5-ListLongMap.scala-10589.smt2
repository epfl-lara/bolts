; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124714 () Bool)

(assert start!124714)

(declare-fun b!1444507 () Bool)

(declare-fun res!976588 () Bool)

(declare-fun e!813878 () Bool)

(assert (=> b!1444507 (=> (not res!976588) (not e!813878))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1444507 (= res!976588 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1444508 () Bool)

(declare-fun res!976600 () Bool)

(declare-fun e!813876 () Bool)

(assert (=> b!1444508 (=> (not res!976600) (not e!813876))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11598 0))(
  ( (MissingZero!11598 (index!48783 (_ BitVec 32))) (Found!11598 (index!48784 (_ BitVec 32))) (Intermediate!11598 (undefined!12410 Bool) (index!48785 (_ BitVec 32)) (x!130482 (_ BitVec 32))) (Undefined!11598) (MissingVacant!11598 (index!48786 (_ BitVec 32))) )
))
(declare-fun lt!634187 () SeekEntryResult!11598)

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((array!98079 0))(
  ( (array!98080 (arr!47323 (Array (_ BitVec 32) (_ BitVec 64))) (size!47874 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98079)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98079 (_ BitVec 32)) SeekEntryResult!11598)

(assert (=> b!1444508 (= res!976600 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47323 a!2862) j!93) a!2862 mask!2687) lt!634187))))

(declare-fun b!1444509 () Bool)

(declare-fun res!976592 () Bool)

(declare-fun e!813879 () Bool)

(assert (=> b!1444509 (=> (not res!976592) (not e!813879))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1444509 (= res!976592 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47874 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47874 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47874 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1444510 () Bool)

(declare-fun res!976599 () Bool)

(declare-fun e!813881 () Bool)

(assert (=> b!1444510 (=> (not res!976599) (not e!813881))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98079 (_ BitVec 32)) SeekEntryResult!11598)

(assert (=> b!1444510 (= res!976599 (= (seekEntryOrOpen!0 (select (arr!47323 a!2862) j!93) a!2862 mask!2687) (Found!11598 j!93)))))

(declare-fun b!1444511 () Bool)

(declare-fun res!976598 () Bool)

(assert (=> b!1444511 (=> (not res!976598) (not e!813879))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1444511 (= res!976598 (validKeyInArray!0 (select (arr!47323 a!2862) j!93)))))

(declare-fun b!1444512 () Bool)

(declare-fun res!976597 () Bool)

(assert (=> b!1444512 (=> (not res!976597) (not e!813878))))

(declare-fun e!813880 () Bool)

(assert (=> b!1444512 (= res!976597 e!813880)))

(declare-fun c!133472 () Bool)

(assert (=> b!1444512 (= c!133472 (bvsle x!665 intermediateAfterX!19))))

(declare-fun lt!634188 () (_ BitVec 64))

(declare-fun b!1444513 () Bool)

(declare-fun lt!634185 () array!98079)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98079 (_ BitVec 32)) SeekEntryResult!11598)

(assert (=> b!1444513 (= e!813880 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634188 lt!634185 mask!2687) (seekEntryOrOpen!0 lt!634188 lt!634185 mask!2687)))))

(declare-fun b!1444514 () Bool)

(declare-fun res!976590 () Bool)

(assert (=> b!1444514 (=> (not res!976590) (not e!813879))))

(assert (=> b!1444514 (= res!976590 (validKeyInArray!0 (select (arr!47323 a!2862) i!1006)))))

(declare-fun b!1444506 () Bool)

(declare-fun res!976596 () Bool)

(assert (=> b!1444506 (=> (not res!976596) (not e!813879))))

(declare-datatypes ((List!34004 0))(
  ( (Nil!34001) (Cons!34000 (h!35350 (_ BitVec 64)) (t!48705 List!34004)) )
))
(declare-fun arrayNoDuplicates!0 (array!98079 (_ BitVec 32) List!34004) Bool)

(assert (=> b!1444506 (= res!976596 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34001))))

(declare-fun res!976602 () Bool)

(assert (=> start!124714 (=> (not res!976602) (not e!813879))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124714 (= res!976602 (validMask!0 mask!2687))))

(assert (=> start!124714 e!813879))

(assert (=> start!124714 true))

(declare-fun array_inv!36268 (array!98079) Bool)

(assert (=> start!124714 (array_inv!36268 a!2862)))

(declare-fun b!1444515 () Bool)

(declare-fun lt!634186 () SeekEntryResult!11598)

(assert (=> b!1444515 (= e!813880 (= lt!634186 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634188 lt!634185 mask!2687)))))

(declare-fun b!1444516 () Bool)

(declare-fun res!976601 () Bool)

(assert (=> b!1444516 (=> (not res!976601) (not e!813879))))

(assert (=> b!1444516 (= res!976601 (and (= (size!47874 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47874 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47874 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1444517 () Bool)

(assert (=> b!1444517 (= e!813876 e!813878)))

(declare-fun res!976589 () Bool)

(assert (=> b!1444517 (=> (not res!976589) (not e!813878))))

(assert (=> b!1444517 (= res!976589 (= lt!634186 (Intermediate!11598 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1444517 (= lt!634186 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634188 mask!2687) lt!634188 lt!634185 mask!2687))))

(assert (=> b!1444517 (= lt!634188 (select (store (arr!47323 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1444518 () Bool)

(declare-fun e!813875 () Bool)

(assert (=> b!1444518 (= e!813875 e!813876)))

(declare-fun res!976593 () Bool)

(assert (=> b!1444518 (=> (not res!976593) (not e!813876))))

(assert (=> b!1444518 (= res!976593 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47323 a!2862) j!93) mask!2687) (select (arr!47323 a!2862) j!93) a!2862 mask!2687) lt!634187))))

(assert (=> b!1444518 (= lt!634187 (Intermediate!11598 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1444519 () Bool)

(declare-fun res!976595 () Bool)

(assert (=> b!1444519 (=> (not res!976595) (not e!813879))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98079 (_ BitVec 32)) Bool)

(assert (=> b!1444519 (= res!976595 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1444520 () Bool)

(assert (=> b!1444520 (= e!813881 (or (= (select (arr!47323 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47323 a!2862) intermediateBeforeIndex!19) (select (arr!47323 a!2862) j!93))))))

(declare-fun b!1444521 () Bool)

(assert (=> b!1444521 (= e!813879 e!813875)))

(declare-fun res!976591 () Bool)

(assert (=> b!1444521 (=> (not res!976591) (not e!813875))))

(assert (=> b!1444521 (= res!976591 (= (select (store (arr!47323 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1444521 (= lt!634185 (array!98080 (store (arr!47323 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47874 a!2862)))))

(declare-fun b!1444522 () Bool)

(assert (=> b!1444522 (= e!813878 (not true))))

(assert (=> b!1444522 e!813881))

(declare-fun res!976594 () Bool)

(assert (=> b!1444522 (=> (not res!976594) (not e!813881))))

(assert (=> b!1444522 (= res!976594 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48640 0))(
  ( (Unit!48641) )
))
(declare-fun lt!634189 () Unit!48640)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98079 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48640)

(assert (=> b!1444522 (= lt!634189 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!124714 res!976602) b!1444516))

(assert (= (and b!1444516 res!976601) b!1444514))

(assert (= (and b!1444514 res!976590) b!1444511))

(assert (= (and b!1444511 res!976598) b!1444519))

(assert (= (and b!1444519 res!976595) b!1444506))

(assert (= (and b!1444506 res!976596) b!1444509))

(assert (= (and b!1444509 res!976592) b!1444521))

(assert (= (and b!1444521 res!976591) b!1444518))

(assert (= (and b!1444518 res!976593) b!1444508))

(assert (= (and b!1444508 res!976600) b!1444517))

(assert (= (and b!1444517 res!976589) b!1444512))

(assert (= (and b!1444512 c!133472) b!1444515))

(assert (= (and b!1444512 (not c!133472)) b!1444513))

(assert (= (and b!1444512 res!976597) b!1444507))

(assert (= (and b!1444507 res!976588) b!1444522))

(assert (= (and b!1444522 res!976594) b!1444510))

(assert (= (and b!1444510 res!976599) b!1444520))

(declare-fun m!1333581 () Bool)

(assert (=> b!1444508 m!1333581))

(assert (=> b!1444508 m!1333581))

(declare-fun m!1333583 () Bool)

(assert (=> b!1444508 m!1333583))

(declare-fun m!1333585 () Bool)

(assert (=> b!1444522 m!1333585))

(declare-fun m!1333587 () Bool)

(assert (=> b!1444522 m!1333587))

(declare-fun m!1333589 () Bool)

(assert (=> b!1444515 m!1333589))

(declare-fun m!1333591 () Bool)

(assert (=> start!124714 m!1333591))

(declare-fun m!1333593 () Bool)

(assert (=> start!124714 m!1333593))

(assert (=> b!1444518 m!1333581))

(assert (=> b!1444518 m!1333581))

(declare-fun m!1333595 () Bool)

(assert (=> b!1444518 m!1333595))

(assert (=> b!1444518 m!1333595))

(assert (=> b!1444518 m!1333581))

(declare-fun m!1333597 () Bool)

(assert (=> b!1444518 m!1333597))

(assert (=> b!1444511 m!1333581))

(assert (=> b!1444511 m!1333581))

(declare-fun m!1333599 () Bool)

(assert (=> b!1444511 m!1333599))

(declare-fun m!1333601 () Bool)

(assert (=> b!1444521 m!1333601))

(declare-fun m!1333603 () Bool)

(assert (=> b!1444521 m!1333603))

(declare-fun m!1333605 () Bool)

(assert (=> b!1444513 m!1333605))

(declare-fun m!1333607 () Bool)

(assert (=> b!1444513 m!1333607))

(declare-fun m!1333609 () Bool)

(assert (=> b!1444519 m!1333609))

(declare-fun m!1333611 () Bool)

(assert (=> b!1444506 m!1333611))

(assert (=> b!1444510 m!1333581))

(assert (=> b!1444510 m!1333581))

(declare-fun m!1333613 () Bool)

(assert (=> b!1444510 m!1333613))

(declare-fun m!1333615 () Bool)

(assert (=> b!1444520 m!1333615))

(assert (=> b!1444520 m!1333581))

(declare-fun m!1333617 () Bool)

(assert (=> b!1444514 m!1333617))

(assert (=> b!1444514 m!1333617))

(declare-fun m!1333619 () Bool)

(assert (=> b!1444514 m!1333619))

(declare-fun m!1333621 () Bool)

(assert (=> b!1444517 m!1333621))

(assert (=> b!1444517 m!1333621))

(declare-fun m!1333623 () Bool)

(assert (=> b!1444517 m!1333623))

(assert (=> b!1444517 m!1333601))

(declare-fun m!1333625 () Bool)

(assert (=> b!1444517 m!1333625))

(push 1)

