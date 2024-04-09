; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124796 () Bool)

(assert start!124796)

(declare-fun b!1446631 () Bool)

(declare-fun res!978469 () Bool)

(declare-fun e!814793 () Bool)

(assert (=> b!1446631 (=> (not res!978469) (not e!814793))))

(declare-fun e!814794 () Bool)

(assert (=> b!1446631 (= res!978469 e!814794)))

(declare-fun c!133595 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1446631 (= c!133595 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1446632 () Bool)

(declare-fun e!814790 () Bool)

(declare-fun e!814796 () Bool)

(assert (=> b!1446632 (= e!814790 e!814796)))

(declare-fun res!978479 () Bool)

(assert (=> b!1446632 (=> (not res!978479) (not e!814796))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98161 0))(
  ( (array!98162 (arr!47364 (Array (_ BitVec 32) (_ BitVec 64))) (size!47915 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98161)

(assert (=> b!1446632 (= res!978479 (= (select (store (arr!47364 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!634838 () array!98161)

(assert (=> b!1446632 (= lt!634838 (array!98162 (store (arr!47364 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47915 a!2862)))))

(declare-fun b!1446633 () Bool)

(declare-fun res!978468 () Bool)

(assert (=> b!1446633 (=> (not res!978468) (not e!814790))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1446633 (= res!978468 (and (= (size!47915 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47915 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47915 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1446634 () Bool)

(declare-fun e!814795 () Bool)

(assert (=> b!1446634 (= e!814796 e!814795)))

(declare-fun res!978476 () Bool)

(assert (=> b!1446634 (=> (not res!978476) (not e!814795))))

(declare-datatypes ((SeekEntryResult!11639 0))(
  ( (MissingZero!11639 (index!48947 (_ BitVec 32))) (Found!11639 (index!48948 (_ BitVec 32))) (Intermediate!11639 (undefined!12451 Bool) (index!48949 (_ BitVec 32)) (x!130627 (_ BitVec 32))) (Undefined!11639) (MissingVacant!11639 (index!48950 (_ BitVec 32))) )
))
(declare-fun lt!634835 () SeekEntryResult!11639)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98161 (_ BitVec 32)) SeekEntryResult!11639)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1446634 (= res!978476 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47364 a!2862) j!93) mask!2687) (select (arr!47364 a!2862) j!93) a!2862 mask!2687) lt!634835))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1446634 (= lt!634835 (Intermediate!11639 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1446635 () Bool)

(declare-fun e!814787 () Bool)

(assert (=> b!1446635 (= e!814787 true)))

(declare-fun lt!634837 () SeekEntryResult!11639)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98161 (_ BitVec 32)) SeekEntryResult!11639)

(assert (=> b!1446635 (= lt!634837 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47364 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1446636 () Bool)

(declare-fun res!978470 () Bool)

(assert (=> b!1446636 (=> (not res!978470) (not e!814790))))

(assert (=> b!1446636 (= res!978470 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47915 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47915 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47915 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1446637 () Bool)

(declare-fun lt!634840 () SeekEntryResult!11639)

(declare-fun lt!634839 () (_ BitVec 64))

(assert (=> b!1446637 (= e!814794 (= lt!634840 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634839 lt!634838 mask!2687)))))

(declare-fun b!1446638 () Bool)

(assert (=> b!1446638 (= e!814793 (not e!814787))))

(declare-fun res!978475 () Bool)

(assert (=> b!1446638 (=> res!978475 e!814787)))

(assert (=> b!1446638 (= res!978475 (or (and (= (select (arr!47364 a!2862) index!646) (select (store (arr!47364 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47364 a!2862) index!646) (select (arr!47364 a!2862) j!93))) (not (= (select (arr!47364 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47364 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!814792 () Bool)

(assert (=> b!1446638 e!814792))

(declare-fun res!978483 () Bool)

(assert (=> b!1446638 (=> (not res!978483) (not e!814792))))

(declare-fun lt!634834 () SeekEntryResult!11639)

(assert (=> b!1446638 (= res!978483 (and (= lt!634834 (Found!11639 j!93)) (or (= (select (arr!47364 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47364 a!2862) intermediateBeforeIndex!19) (select (arr!47364 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98161 (_ BitVec 32)) SeekEntryResult!11639)

(assert (=> b!1446638 (= lt!634834 (seekEntryOrOpen!0 (select (arr!47364 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98161 (_ BitVec 32)) Bool)

(assert (=> b!1446638 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48722 0))(
  ( (Unit!48723) )
))
(declare-fun lt!634836 () Unit!48722)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98161 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48722)

(assert (=> b!1446638 (= lt!634836 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun e!814791 () Bool)

(declare-fun b!1446639 () Bool)

(assert (=> b!1446639 (= e!814791 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1446640 () Bool)

(declare-fun res!978478 () Bool)

(assert (=> b!1446640 (=> (not res!978478) (not e!814795))))

(assert (=> b!1446640 (= res!978478 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47364 a!2862) j!93) a!2862 mask!2687) lt!634835))))

(declare-fun b!1446642 () Bool)

(declare-fun res!978472 () Bool)

(assert (=> b!1446642 (=> (not res!978472) (not e!814790))))

(assert (=> b!1446642 (= res!978472 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1446643 () Bool)

(declare-fun res!978471 () Bool)

(assert (=> b!1446643 (=> (not res!978471) (not e!814790))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1446643 (= res!978471 (validKeyInArray!0 (select (arr!47364 a!2862) j!93)))))

(declare-fun b!1446644 () Bool)

(assert (=> b!1446644 (= e!814794 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634839 lt!634838 mask!2687) (seekEntryOrOpen!0 lt!634839 lt!634838 mask!2687)))))

(declare-fun b!1446645 () Bool)

(declare-fun e!814789 () Bool)

(assert (=> b!1446645 (= e!814789 e!814791)))

(declare-fun res!978467 () Bool)

(assert (=> b!1446645 (=> (not res!978467) (not e!814791))))

(assert (=> b!1446645 (= res!978467 (= lt!634834 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47364 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1446646 () Bool)

(assert (=> b!1446646 (= e!814792 e!814789)))

(declare-fun res!978482 () Bool)

(assert (=> b!1446646 (=> res!978482 e!814789)))

(assert (=> b!1446646 (= res!978482 (or (and (= (select (arr!47364 a!2862) index!646) (select (store (arr!47364 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47364 a!2862) index!646) (select (arr!47364 a!2862) j!93))) (not (= (select (arr!47364 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1446647 () Bool)

(declare-fun res!978480 () Bool)

(assert (=> b!1446647 (=> (not res!978480) (not e!814793))))

(assert (=> b!1446647 (= res!978480 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1446648 () Bool)

(declare-fun res!978474 () Bool)

(assert (=> b!1446648 (=> (not res!978474) (not e!814790))))

(declare-datatypes ((List!34045 0))(
  ( (Nil!34042) (Cons!34041 (h!35391 (_ BitVec 64)) (t!48746 List!34045)) )
))
(declare-fun arrayNoDuplicates!0 (array!98161 (_ BitVec 32) List!34045) Bool)

(assert (=> b!1446648 (= res!978474 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34042))))

(declare-fun b!1446649 () Bool)

(declare-fun res!978473 () Bool)

(assert (=> b!1446649 (=> (not res!978473) (not e!814790))))

(assert (=> b!1446649 (= res!978473 (validKeyInArray!0 (select (arr!47364 a!2862) i!1006)))))

(declare-fun b!1446641 () Bool)

(assert (=> b!1446641 (= e!814795 e!814793)))

(declare-fun res!978481 () Bool)

(assert (=> b!1446641 (=> (not res!978481) (not e!814793))))

(assert (=> b!1446641 (= res!978481 (= lt!634840 (Intermediate!11639 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1446641 (= lt!634840 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634839 mask!2687) lt!634839 lt!634838 mask!2687))))

(assert (=> b!1446641 (= lt!634839 (select (store (arr!47364 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!978477 () Bool)

(assert (=> start!124796 (=> (not res!978477) (not e!814790))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124796 (= res!978477 (validMask!0 mask!2687))))

(assert (=> start!124796 e!814790))

(assert (=> start!124796 true))

(declare-fun array_inv!36309 (array!98161) Bool)

(assert (=> start!124796 (array_inv!36309 a!2862)))

(assert (= (and start!124796 res!978477) b!1446633))

(assert (= (and b!1446633 res!978468) b!1446649))

(assert (= (and b!1446649 res!978473) b!1446643))

(assert (= (and b!1446643 res!978471) b!1446642))

(assert (= (and b!1446642 res!978472) b!1446648))

(assert (= (and b!1446648 res!978474) b!1446636))

(assert (= (and b!1446636 res!978470) b!1446632))

(assert (= (and b!1446632 res!978479) b!1446634))

(assert (= (and b!1446634 res!978476) b!1446640))

(assert (= (and b!1446640 res!978478) b!1446641))

(assert (= (and b!1446641 res!978481) b!1446631))

(assert (= (and b!1446631 c!133595) b!1446637))

(assert (= (and b!1446631 (not c!133595)) b!1446644))

(assert (= (and b!1446631 res!978469) b!1446647))

(assert (= (and b!1446647 res!978480) b!1446638))

(assert (= (and b!1446638 res!978483) b!1446646))

(assert (= (and b!1446646 (not res!978482)) b!1446645))

(assert (= (and b!1446645 res!978467) b!1446639))

(assert (= (and b!1446638 (not res!978475)) b!1446635))

(declare-fun m!1335543 () Bool)

(assert (=> b!1446649 m!1335543))

(assert (=> b!1446649 m!1335543))

(declare-fun m!1335545 () Bool)

(assert (=> b!1446649 m!1335545))

(declare-fun m!1335547 () Bool)

(assert (=> b!1446638 m!1335547))

(declare-fun m!1335549 () Bool)

(assert (=> b!1446638 m!1335549))

(declare-fun m!1335551 () Bool)

(assert (=> b!1446638 m!1335551))

(declare-fun m!1335553 () Bool)

(assert (=> b!1446638 m!1335553))

(declare-fun m!1335555 () Bool)

(assert (=> b!1446638 m!1335555))

(declare-fun m!1335557 () Bool)

(assert (=> b!1446638 m!1335557))

(declare-fun m!1335559 () Bool)

(assert (=> b!1446638 m!1335559))

(declare-fun m!1335561 () Bool)

(assert (=> b!1446638 m!1335561))

(assert (=> b!1446638 m!1335557))

(assert (=> b!1446646 m!1335555))

(assert (=> b!1446646 m!1335549))

(assert (=> b!1446646 m!1335553))

(assert (=> b!1446646 m!1335557))

(assert (=> b!1446640 m!1335557))

(assert (=> b!1446640 m!1335557))

(declare-fun m!1335563 () Bool)

(assert (=> b!1446640 m!1335563))

(assert (=> b!1446645 m!1335557))

(assert (=> b!1446645 m!1335557))

(declare-fun m!1335565 () Bool)

(assert (=> b!1446645 m!1335565))

(assert (=> b!1446635 m!1335557))

(assert (=> b!1446635 m!1335557))

(declare-fun m!1335567 () Bool)

(assert (=> b!1446635 m!1335567))

(assert (=> b!1446643 m!1335557))

(assert (=> b!1446643 m!1335557))

(declare-fun m!1335569 () Bool)

(assert (=> b!1446643 m!1335569))

(declare-fun m!1335571 () Bool)

(assert (=> b!1446644 m!1335571))

(declare-fun m!1335573 () Bool)

(assert (=> b!1446644 m!1335573))

(declare-fun m!1335575 () Bool)

(assert (=> start!124796 m!1335575))

(declare-fun m!1335577 () Bool)

(assert (=> start!124796 m!1335577))

(declare-fun m!1335579 () Bool)

(assert (=> b!1446642 m!1335579))

(declare-fun m!1335581 () Bool)

(assert (=> b!1446641 m!1335581))

(assert (=> b!1446641 m!1335581))

(declare-fun m!1335583 () Bool)

(assert (=> b!1446641 m!1335583))

(assert (=> b!1446641 m!1335549))

(declare-fun m!1335585 () Bool)

(assert (=> b!1446641 m!1335585))

(declare-fun m!1335587 () Bool)

(assert (=> b!1446648 m!1335587))

(assert (=> b!1446632 m!1335549))

(declare-fun m!1335589 () Bool)

(assert (=> b!1446632 m!1335589))

(declare-fun m!1335591 () Bool)

(assert (=> b!1446637 m!1335591))

(assert (=> b!1446634 m!1335557))

(assert (=> b!1446634 m!1335557))

(declare-fun m!1335593 () Bool)

(assert (=> b!1446634 m!1335593))

(assert (=> b!1446634 m!1335593))

(assert (=> b!1446634 m!1335557))

(declare-fun m!1335595 () Bool)

(assert (=> b!1446634 m!1335595))

(push 1)

