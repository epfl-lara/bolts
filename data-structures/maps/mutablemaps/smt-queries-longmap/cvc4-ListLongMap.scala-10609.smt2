; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124838 () Bool)

(assert start!124838)

(declare-fun b!1447828 () Bool)

(declare-fun e!815424 () Bool)

(declare-fun e!815422 () Bool)

(assert (=> b!1447828 (= e!815424 e!815422)))

(declare-fun res!979550 () Bool)

(assert (=> b!1447828 (=> (not res!979550) (not e!815422))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11660 0))(
  ( (MissingZero!11660 (index!49031 (_ BitVec 32))) (Found!11660 (index!49032 (_ BitVec 32))) (Intermediate!11660 (undefined!12472 Bool) (index!49033 (_ BitVec 32)) (x!130704 (_ BitVec 32))) (Undefined!11660) (MissingVacant!11660 (index!49034 (_ BitVec 32))) )
))
(declare-fun lt!635276 () SeekEntryResult!11660)

(assert (=> b!1447828 (= res!979550 (= lt!635276 (Intermediate!11660 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-datatypes ((array!98203 0))(
  ( (array!98204 (arr!47385 (Array (_ BitVec 32) (_ BitVec 64))) (size!47936 (_ BitVec 32))) )
))
(declare-fun lt!635280 () array!98203)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!635281 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98203 (_ BitVec 32)) SeekEntryResult!11660)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1447828 (= lt!635276 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635281 mask!2687) lt!635281 lt!635280 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98203)

(assert (=> b!1447828 (= lt!635281 (select (store (arr!47385 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1447829 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!815418 () Bool)

(assert (=> b!1447829 (= e!815418 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1447830 () Bool)

(declare-fun res!979553 () Bool)

(declare-fun e!815419 () Bool)

(assert (=> b!1447830 (=> (not res!979553) (not e!815419))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1447830 (= res!979553 (validKeyInArray!0 (select (arr!47385 a!2862) i!1006)))))

(declare-fun b!1447831 () Bool)

(declare-fun e!815417 () Bool)

(assert (=> b!1447831 (= e!815417 e!815418)))

(declare-fun res!979538 () Bool)

(assert (=> b!1447831 (=> (not res!979538) (not e!815418))))

(declare-fun lt!635278 () SeekEntryResult!11660)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98203 (_ BitVec 32)) SeekEntryResult!11660)

(assert (=> b!1447831 (= res!979538 (= lt!635278 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47385 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1447832 () Bool)

(declare-fun res!979543 () Bool)

(assert (=> b!1447832 (=> (not res!979543) (not e!815419))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98203 (_ BitVec 32)) Bool)

(assert (=> b!1447832 (= res!979543 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1447834 () Bool)

(declare-fun res!979545 () Bool)

(assert (=> b!1447834 (=> (not res!979545) (not e!815419))))

(assert (=> b!1447834 (= res!979545 (validKeyInArray!0 (select (arr!47385 a!2862) j!93)))))

(declare-fun b!1447835 () Bool)

(declare-fun res!979541 () Bool)

(assert (=> b!1447835 (=> (not res!979541) (not e!815422))))

(assert (=> b!1447835 (= res!979541 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1447836 () Bool)

(declare-fun e!815426 () Bool)

(assert (=> b!1447836 (= e!815426 true)))

(declare-fun lt!635279 () SeekEntryResult!11660)

(assert (=> b!1447836 (= lt!635279 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47385 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1447837 () Bool)

(declare-fun res!979540 () Bool)

(assert (=> b!1447837 (=> (not res!979540) (not e!815419))))

(declare-datatypes ((List!34066 0))(
  ( (Nil!34063) (Cons!34062 (h!35412 (_ BitVec 64)) (t!48767 List!34066)) )
))
(declare-fun arrayNoDuplicates!0 (array!98203 (_ BitVec 32) List!34066) Bool)

(assert (=> b!1447837 (= res!979540 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34063))))

(declare-fun b!1447838 () Bool)

(declare-fun res!979551 () Bool)

(assert (=> b!1447838 (=> (not res!979551) (not e!815422))))

(declare-fun e!815421 () Bool)

(assert (=> b!1447838 (= res!979551 e!815421)))

(declare-fun c!133658 () Bool)

(assert (=> b!1447838 (= c!133658 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1447839 () Bool)

(declare-fun e!815420 () Bool)

(assert (=> b!1447839 (= e!815420 e!815417)))

(declare-fun res!979544 () Bool)

(assert (=> b!1447839 (=> res!979544 e!815417)))

(assert (=> b!1447839 (= res!979544 (or (and (= (select (arr!47385 a!2862) index!646) (select (store (arr!47385 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47385 a!2862) index!646) (select (arr!47385 a!2862) j!93))) (not (= (select (arr!47385 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1447840 () Bool)

(declare-fun e!815423 () Bool)

(assert (=> b!1447840 (= e!815423 e!815424)))

(declare-fun res!979548 () Bool)

(assert (=> b!1447840 (=> (not res!979548) (not e!815424))))

(declare-fun lt!635275 () SeekEntryResult!11660)

(assert (=> b!1447840 (= res!979548 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47385 a!2862) j!93) mask!2687) (select (arr!47385 a!2862) j!93) a!2862 mask!2687) lt!635275))))

(assert (=> b!1447840 (= lt!635275 (Intermediate!11660 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1447841 () Bool)

(declare-fun res!979554 () Bool)

(assert (=> b!1447841 (=> (not res!979554) (not e!815419))))

(assert (=> b!1447841 (= res!979554 (and (= (size!47936 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47936 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47936 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1447842 () Bool)

(assert (=> b!1447842 (= e!815422 (not e!815426))))

(declare-fun res!979549 () Bool)

(assert (=> b!1447842 (=> res!979549 e!815426)))

(assert (=> b!1447842 (= res!979549 (or (and (= (select (arr!47385 a!2862) index!646) (select (store (arr!47385 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47385 a!2862) index!646) (select (arr!47385 a!2862) j!93))) (not (= (select (arr!47385 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47385 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1447842 e!815420))

(declare-fun res!979542 () Bool)

(assert (=> b!1447842 (=> (not res!979542) (not e!815420))))

(assert (=> b!1447842 (= res!979542 (and (= lt!635278 (Found!11660 j!93)) (or (= (select (arr!47385 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47385 a!2862) intermediateBeforeIndex!19) (select (arr!47385 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98203 (_ BitVec 32)) SeekEntryResult!11660)

(assert (=> b!1447842 (= lt!635278 (seekEntryOrOpen!0 (select (arr!47385 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1447842 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48764 0))(
  ( (Unit!48765) )
))
(declare-fun lt!635277 () Unit!48764)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98203 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48764)

(assert (=> b!1447842 (= lt!635277 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1447843 () Bool)

(assert (=> b!1447843 (= e!815421 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635281 lt!635280 mask!2687) (seekEntryOrOpen!0 lt!635281 lt!635280 mask!2687)))))

(declare-fun b!1447844 () Bool)

(declare-fun res!979547 () Bool)

(assert (=> b!1447844 (=> (not res!979547) (not e!815424))))

(assert (=> b!1447844 (= res!979547 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47385 a!2862) j!93) a!2862 mask!2687) lt!635275))))

(declare-fun res!979546 () Bool)

(assert (=> start!124838 (=> (not res!979546) (not e!815419))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124838 (= res!979546 (validMask!0 mask!2687))))

(assert (=> start!124838 e!815419))

(assert (=> start!124838 true))

(declare-fun array_inv!36330 (array!98203) Bool)

(assert (=> start!124838 (array_inv!36330 a!2862)))

(declare-fun b!1447833 () Bool)

(declare-fun res!979539 () Bool)

(assert (=> b!1447833 (=> (not res!979539) (not e!815419))))

(assert (=> b!1447833 (= res!979539 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47936 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47936 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47936 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1447845 () Bool)

(assert (=> b!1447845 (= e!815421 (= lt!635276 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635281 lt!635280 mask!2687)))))

(declare-fun b!1447846 () Bool)

(assert (=> b!1447846 (= e!815419 e!815423)))

(declare-fun res!979552 () Bool)

(assert (=> b!1447846 (=> (not res!979552) (not e!815423))))

(assert (=> b!1447846 (= res!979552 (= (select (store (arr!47385 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1447846 (= lt!635280 (array!98204 (store (arr!47385 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47936 a!2862)))))

(assert (= (and start!124838 res!979546) b!1447841))

(assert (= (and b!1447841 res!979554) b!1447830))

(assert (= (and b!1447830 res!979553) b!1447834))

(assert (= (and b!1447834 res!979545) b!1447832))

(assert (= (and b!1447832 res!979543) b!1447837))

(assert (= (and b!1447837 res!979540) b!1447833))

(assert (= (and b!1447833 res!979539) b!1447846))

(assert (= (and b!1447846 res!979552) b!1447840))

(assert (= (and b!1447840 res!979548) b!1447844))

(assert (= (and b!1447844 res!979547) b!1447828))

(assert (= (and b!1447828 res!979550) b!1447838))

(assert (= (and b!1447838 c!133658) b!1447845))

(assert (= (and b!1447838 (not c!133658)) b!1447843))

(assert (= (and b!1447838 res!979551) b!1447835))

(assert (= (and b!1447835 res!979541) b!1447842))

(assert (= (and b!1447842 res!979542) b!1447839))

(assert (= (and b!1447839 (not res!979544)) b!1447831))

(assert (= (and b!1447831 res!979538) b!1447829))

(assert (= (and b!1447842 (not res!979549)) b!1447836))

(declare-fun m!1336677 () Bool)

(assert (=> b!1447828 m!1336677))

(assert (=> b!1447828 m!1336677))

(declare-fun m!1336679 () Bool)

(assert (=> b!1447828 m!1336679))

(declare-fun m!1336681 () Bool)

(assert (=> b!1447828 m!1336681))

(declare-fun m!1336683 () Bool)

(assert (=> b!1447828 m!1336683))

(declare-fun m!1336685 () Bool)

(assert (=> b!1447842 m!1336685))

(assert (=> b!1447842 m!1336681))

(declare-fun m!1336687 () Bool)

(assert (=> b!1447842 m!1336687))

(declare-fun m!1336689 () Bool)

(assert (=> b!1447842 m!1336689))

(declare-fun m!1336691 () Bool)

(assert (=> b!1447842 m!1336691))

(declare-fun m!1336693 () Bool)

(assert (=> b!1447842 m!1336693))

(declare-fun m!1336695 () Bool)

(assert (=> b!1447842 m!1336695))

(declare-fun m!1336697 () Bool)

(assert (=> b!1447842 m!1336697))

(assert (=> b!1447842 m!1336693))

(assert (=> b!1447836 m!1336693))

(assert (=> b!1447836 m!1336693))

(declare-fun m!1336699 () Bool)

(assert (=> b!1447836 m!1336699))

(assert (=> b!1447844 m!1336693))

(assert (=> b!1447844 m!1336693))

(declare-fun m!1336701 () Bool)

(assert (=> b!1447844 m!1336701))

(declare-fun m!1336703 () Bool)

(assert (=> b!1447832 m!1336703))

(assert (=> b!1447840 m!1336693))

(assert (=> b!1447840 m!1336693))

(declare-fun m!1336705 () Bool)

(assert (=> b!1447840 m!1336705))

(assert (=> b!1447840 m!1336705))

(assert (=> b!1447840 m!1336693))

(declare-fun m!1336707 () Bool)

(assert (=> b!1447840 m!1336707))

(assert (=> b!1447846 m!1336681))

(declare-fun m!1336709 () Bool)

(assert (=> b!1447846 m!1336709))

(declare-fun m!1336711 () Bool)

(assert (=> b!1447830 m!1336711))

(assert (=> b!1447830 m!1336711))

(declare-fun m!1336713 () Bool)

(assert (=> b!1447830 m!1336713))

(declare-fun m!1336715 () Bool)

(assert (=> start!124838 m!1336715))

(declare-fun m!1336717 () Bool)

(assert (=> start!124838 m!1336717))

(assert (=> b!1447839 m!1336691))

(assert (=> b!1447839 m!1336681))

(assert (=> b!1447839 m!1336689))

(assert (=> b!1447839 m!1336693))

(assert (=> b!1447831 m!1336693))

(assert (=> b!1447831 m!1336693))

(declare-fun m!1336719 () Bool)

(assert (=> b!1447831 m!1336719))

(declare-fun m!1336721 () Bool)

(assert (=> b!1447843 m!1336721))

(declare-fun m!1336723 () Bool)

(assert (=> b!1447843 m!1336723))

(declare-fun m!1336725 () Bool)

(assert (=> b!1447845 m!1336725))

(declare-fun m!1336727 () Bool)

(assert (=> b!1447837 m!1336727))

(assert (=> b!1447834 m!1336693))

(assert (=> b!1447834 m!1336693))

(declare-fun m!1336729 () Bool)

(assert (=> b!1447834 m!1336729))

(push 1)

