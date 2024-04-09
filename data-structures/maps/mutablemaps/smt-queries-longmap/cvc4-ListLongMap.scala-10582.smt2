; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124676 () Bool)

(assert start!124676)

(declare-fun b!1443492 () Bool)

(declare-fun res!975695 () Bool)

(declare-fun e!813446 () Bool)

(assert (=> b!1443492 (=> (not res!975695) (not e!813446))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98041 0))(
  ( (array!98042 (arr!47304 (Array (_ BitVec 32) (_ BitVec 64))) (size!47855 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98041)

(assert (=> b!1443492 (= res!975695 (and (= (size!47855 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47855 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47855 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1443493 () Bool)

(declare-fun e!813442 () Bool)

(declare-fun e!813444 () Bool)

(assert (=> b!1443493 (= e!813442 e!813444)))

(declare-fun res!975689 () Bool)

(assert (=> b!1443493 (=> (not res!975689) (not e!813444))))

(declare-datatypes ((SeekEntryResult!11579 0))(
  ( (MissingZero!11579 (index!48707 (_ BitVec 32))) (Found!11579 (index!48708 (_ BitVec 32))) (Intermediate!11579 (undefined!12391 Bool) (index!48709 (_ BitVec 32)) (x!130407 (_ BitVec 32))) (Undefined!11579) (MissingVacant!11579 (index!48710 (_ BitVec 32))) )
))
(declare-fun lt!633848 () SeekEntryResult!11579)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1443493 (= res!975689 (= lt!633848 (Intermediate!11579 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!633845 () (_ BitVec 64))

(declare-fun lt!633850 () array!98041)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98041 (_ BitVec 32)) SeekEntryResult!11579)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1443493 (= lt!633848 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633845 mask!2687) lt!633845 lt!633850 mask!2687))))

(assert (=> b!1443493 (= lt!633845 (select (store (arr!47304 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1443494 () Bool)

(declare-fun e!813440 () Bool)

(assert (=> b!1443494 (= e!813440 e!813442)))

(declare-fun res!975696 () Bool)

(assert (=> b!1443494 (=> (not res!975696) (not e!813442))))

(declare-fun lt!633847 () SeekEntryResult!11579)

(assert (=> b!1443494 (= res!975696 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47304 a!2862) j!93) mask!2687) (select (arr!47304 a!2862) j!93) a!2862 mask!2687) lt!633847))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1443494 (= lt!633847 (Intermediate!11579 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!975702 () Bool)

(assert (=> start!124676 (=> (not res!975702) (not e!813446))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124676 (= res!975702 (validMask!0 mask!2687))))

(assert (=> start!124676 e!813446))

(assert (=> start!124676 true))

(declare-fun array_inv!36249 (array!98041) Bool)

(assert (=> start!124676 (array_inv!36249 a!2862)))

(declare-fun b!1443495 () Bool)

(declare-fun res!975699 () Bool)

(declare-fun e!813441 () Bool)

(assert (=> b!1443495 (=> res!975699 e!813441)))

(declare-fun lt!633846 () SeekEntryResult!11579)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98041 (_ BitVec 32)) SeekEntryResult!11579)

(assert (=> b!1443495 (= res!975699 (not (= lt!633846 (seekEntryOrOpen!0 lt!633845 lt!633850 mask!2687))))))

(declare-fun b!1443496 () Bool)

(assert (=> b!1443496 (= e!813446 e!813440)))

(declare-fun res!975688 () Bool)

(assert (=> b!1443496 (=> (not res!975688) (not e!813440))))

(assert (=> b!1443496 (= res!975688 (= (select (store (arr!47304 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1443496 (= lt!633850 (array!98042 (store (arr!47304 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47855 a!2862)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1443497 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!813443 () Bool)

(assert (=> b!1443497 (= e!813443 (= lt!633848 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633845 lt!633850 mask!2687)))))

(declare-fun b!1443498 () Bool)

(declare-fun res!975701 () Bool)

(assert (=> b!1443498 (=> (not res!975701) (not e!813442))))

(assert (=> b!1443498 (= res!975701 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47304 a!2862) j!93) a!2862 mask!2687) lt!633847))))

(declare-fun b!1443499 () Bool)

(assert (=> b!1443499 (= e!813441 (bvsge mask!2687 #b00000000000000000000000000000000))))

(declare-fun b!1443500 () Bool)

(declare-fun res!975691 () Bool)

(assert (=> b!1443500 (=> (not res!975691) (not e!813446))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1443500 (= res!975691 (validKeyInArray!0 (select (arr!47304 a!2862) j!93)))))

(declare-fun b!1443501 () Bool)

(declare-fun res!975694 () Bool)

(assert (=> b!1443501 (=> (not res!975694) (not e!813446))))

(assert (=> b!1443501 (= res!975694 (validKeyInArray!0 (select (arr!47304 a!2862) i!1006)))))

(declare-fun b!1443502 () Bool)

(declare-fun res!975692 () Bool)

(assert (=> b!1443502 (=> (not res!975692) (not e!813446))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98041 (_ BitVec 32)) Bool)

(assert (=> b!1443502 (= res!975692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1443503 () Bool)

(assert (=> b!1443503 (= e!813444 (not e!813441))))

(declare-fun res!975690 () Bool)

(assert (=> b!1443503 (=> res!975690 e!813441)))

(assert (=> b!1443503 (= res!975690 (or (not (= (select (arr!47304 a!2862) index!646) (select (store (arr!47304 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47304 a!2862) index!646) (select (arr!47304 a!2862) j!93)))))))

(assert (=> b!1443503 (and (= lt!633846 (Found!11579 j!93)) (or (= (select (arr!47304 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47304 a!2862) intermediateBeforeIndex!19) (select (arr!47304 a!2862) j!93))))))

(assert (=> b!1443503 (= lt!633846 (seekEntryOrOpen!0 (select (arr!47304 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1443503 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48602 0))(
  ( (Unit!48603) )
))
(declare-fun lt!633849 () Unit!48602)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98041 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48602)

(assert (=> b!1443503 (= lt!633849 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1443504 () Bool)

(declare-fun res!975693 () Bool)

(assert (=> b!1443504 (=> (not res!975693) (not e!813444))))

(assert (=> b!1443504 (= res!975693 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1443505 () Bool)

(declare-fun res!975698 () Bool)

(assert (=> b!1443505 (=> (not res!975698) (not e!813446))))

(declare-datatypes ((List!33985 0))(
  ( (Nil!33982) (Cons!33981 (h!35331 (_ BitVec 64)) (t!48686 List!33985)) )
))
(declare-fun arrayNoDuplicates!0 (array!98041 (_ BitVec 32) List!33985) Bool)

(assert (=> b!1443505 (= res!975698 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33982))))

(declare-fun b!1443506 () Bool)

(declare-fun res!975697 () Bool)

(assert (=> b!1443506 (=> (not res!975697) (not e!813444))))

(assert (=> b!1443506 (= res!975697 e!813443)))

(declare-fun c!133415 () Bool)

(assert (=> b!1443506 (= c!133415 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1443507 () Bool)

(declare-fun res!975700 () Bool)

(assert (=> b!1443507 (=> (not res!975700) (not e!813446))))

(assert (=> b!1443507 (= res!975700 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47855 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47855 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47855 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1443508 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98041 (_ BitVec 32)) SeekEntryResult!11579)

(assert (=> b!1443508 (= e!813443 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633845 lt!633850 mask!2687) (seekEntryOrOpen!0 lt!633845 lt!633850 mask!2687)))))

(assert (= (and start!124676 res!975702) b!1443492))

(assert (= (and b!1443492 res!975695) b!1443501))

(assert (= (and b!1443501 res!975694) b!1443500))

(assert (= (and b!1443500 res!975691) b!1443502))

(assert (= (and b!1443502 res!975692) b!1443505))

(assert (= (and b!1443505 res!975698) b!1443507))

(assert (= (and b!1443507 res!975700) b!1443496))

(assert (= (and b!1443496 res!975688) b!1443494))

(assert (= (and b!1443494 res!975696) b!1443498))

(assert (= (and b!1443498 res!975701) b!1443493))

(assert (= (and b!1443493 res!975689) b!1443506))

(assert (= (and b!1443506 c!133415) b!1443497))

(assert (= (and b!1443506 (not c!133415)) b!1443508))

(assert (= (and b!1443506 res!975697) b!1443504))

(assert (= (and b!1443504 res!975693) b!1443503))

(assert (= (and b!1443503 (not res!975690)) b!1443495))

(assert (= (and b!1443495 (not res!975699)) b!1443499))

(declare-fun m!1332625 () Bool)

(assert (=> b!1443501 m!1332625))

(assert (=> b!1443501 m!1332625))

(declare-fun m!1332627 () Bool)

(assert (=> b!1443501 m!1332627))

(declare-fun m!1332629 () Bool)

(assert (=> b!1443500 m!1332629))

(assert (=> b!1443500 m!1332629))

(declare-fun m!1332631 () Bool)

(assert (=> b!1443500 m!1332631))

(declare-fun m!1332633 () Bool)

(assert (=> b!1443497 m!1332633))

(declare-fun m!1332635 () Bool)

(assert (=> b!1443502 m!1332635))

(declare-fun m!1332637 () Bool)

(assert (=> b!1443496 m!1332637))

(declare-fun m!1332639 () Bool)

(assert (=> b!1443496 m!1332639))

(declare-fun m!1332641 () Bool)

(assert (=> b!1443505 m!1332641))

(assert (=> b!1443494 m!1332629))

(assert (=> b!1443494 m!1332629))

(declare-fun m!1332643 () Bool)

(assert (=> b!1443494 m!1332643))

(assert (=> b!1443494 m!1332643))

(assert (=> b!1443494 m!1332629))

(declare-fun m!1332645 () Bool)

(assert (=> b!1443494 m!1332645))

(declare-fun m!1332647 () Bool)

(assert (=> b!1443503 m!1332647))

(assert (=> b!1443503 m!1332637))

(declare-fun m!1332649 () Bool)

(assert (=> b!1443503 m!1332649))

(declare-fun m!1332651 () Bool)

(assert (=> b!1443503 m!1332651))

(declare-fun m!1332653 () Bool)

(assert (=> b!1443503 m!1332653))

(assert (=> b!1443503 m!1332629))

(declare-fun m!1332655 () Bool)

(assert (=> b!1443503 m!1332655))

(declare-fun m!1332657 () Bool)

(assert (=> b!1443503 m!1332657))

(assert (=> b!1443503 m!1332629))

(declare-fun m!1332659 () Bool)

(assert (=> start!124676 m!1332659))

(declare-fun m!1332661 () Bool)

(assert (=> start!124676 m!1332661))

(declare-fun m!1332663 () Bool)

(assert (=> b!1443493 m!1332663))

(assert (=> b!1443493 m!1332663))

(declare-fun m!1332665 () Bool)

(assert (=> b!1443493 m!1332665))

(assert (=> b!1443493 m!1332637))

(declare-fun m!1332667 () Bool)

(assert (=> b!1443493 m!1332667))

(declare-fun m!1332669 () Bool)

(assert (=> b!1443508 m!1332669))

(declare-fun m!1332671 () Bool)

(assert (=> b!1443508 m!1332671))

(assert (=> b!1443495 m!1332671))

(assert (=> b!1443498 m!1332629))

(assert (=> b!1443498 m!1332629))

(declare-fun m!1332673 () Bool)

(assert (=> b!1443498 m!1332673))

(push 1)

(assert (not b!1443497))

(assert (not b!1443502))

(assert (not b!1443508))

(assert (not b!1443500))

