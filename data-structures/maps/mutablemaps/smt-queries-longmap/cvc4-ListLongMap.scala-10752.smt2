; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125816 () Bool)

(assert start!125816)

(declare-fun b!1471821 () Bool)

(declare-fun e!826116 () Bool)

(declare-fun e!826112 () Bool)

(assert (=> b!1471821 (= e!826116 e!826112)))

(declare-fun res!999664 () Bool)

(assert (=> b!1471821 (=> (not res!999664) (not e!826112))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99067 0))(
  ( (array!99068 (arr!47814 (Array (_ BitVec 32) (_ BitVec 64))) (size!48365 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99067)

(assert (=> b!1471821 (= res!999664 (= (select (store (arr!47814 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!643356 () array!99067)

(assert (=> b!1471821 (= lt!643356 (array!99068 (store (arr!47814 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48365 a!2862)))))

(declare-fun b!1471822 () Bool)

(declare-fun res!999661 () Bool)

(assert (=> b!1471822 (=> (not res!999661) (not e!826116))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1471822 (= res!999661 (validKeyInArray!0 (select (arr!47814 a!2862) j!93)))))

(declare-fun b!1471823 () Bool)

(declare-fun res!999657 () Bool)

(declare-fun e!826118 () Bool)

(assert (=> b!1471823 (=> (not res!999657) (not e!826118))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12077 0))(
  ( (MissingZero!12077 (index!50699 (_ BitVec 32))) (Found!12077 (index!50700 (_ BitVec 32))) (Intermediate!12077 (undefined!12889 Bool) (index!50701 (_ BitVec 32)) (x!132283 (_ BitVec 32))) (Undefined!12077) (MissingVacant!12077 (index!50702 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99067 (_ BitVec 32)) SeekEntryResult!12077)

(assert (=> b!1471823 (= res!999657 (= (seekEntryOrOpen!0 (select (arr!47814 a!2862) j!93) a!2862 mask!2687) (Found!12077 j!93)))))

(declare-fun b!1471824 () Bool)

(declare-fun res!999665 () Bool)

(assert (=> b!1471824 (=> (not res!999665) (not e!826116))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1471824 (= res!999665 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48365 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48365 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48365 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1471825 () Bool)

(assert (=> b!1471825 (= e!826118 (or (= (select (arr!47814 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47814 a!2862) intermediateBeforeIndex!19) (select (arr!47814 a!2862) j!93))))))

(declare-fun b!1471826 () Bool)

(declare-fun res!999660 () Bool)

(assert (=> b!1471826 (=> (not res!999660) (not e!826116))))

(assert (=> b!1471826 (= res!999660 (and (= (size!48365 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48365 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48365 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1471827 () Bool)

(declare-fun res!999663 () Bool)

(assert (=> b!1471827 (=> (not res!999663) (not e!826116))))

(assert (=> b!1471827 (= res!999663 (validKeyInArray!0 (select (arr!47814 a!2862) i!1006)))))

(declare-fun res!999656 () Bool)

(assert (=> start!125816 (=> (not res!999656) (not e!826116))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125816 (= res!999656 (validMask!0 mask!2687))))

(assert (=> start!125816 e!826116))

(assert (=> start!125816 true))

(declare-fun array_inv!36759 (array!99067) Bool)

(assert (=> start!125816 (array_inv!36759 a!2862)))

(declare-fun b!1471828 () Bool)

(declare-fun e!826117 () Bool)

(assert (=> b!1471828 (= e!826112 e!826117)))

(declare-fun res!999662 () Bool)

(assert (=> b!1471828 (=> (not res!999662) (not e!826117))))

(declare-fun lt!643354 () SeekEntryResult!12077)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99067 (_ BitVec 32)) SeekEntryResult!12077)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1471828 (= res!999662 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47814 a!2862) j!93) mask!2687) (select (arr!47814 a!2862) j!93) a!2862 mask!2687) lt!643354))))

(assert (=> b!1471828 (= lt!643354 (Intermediate!12077 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1471829 () Bool)

(declare-fun res!999667 () Bool)

(declare-fun e!826113 () Bool)

(assert (=> b!1471829 (=> (not res!999667) (not e!826113))))

(declare-fun e!826114 () Bool)

(assert (=> b!1471829 (= res!999667 e!826114)))

(declare-fun c!135599 () Bool)

(assert (=> b!1471829 (= c!135599 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1471830 () Bool)

(declare-fun res!999669 () Bool)

(assert (=> b!1471830 (=> (not res!999669) (not e!826116))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99067 (_ BitVec 32)) Bool)

(assert (=> b!1471830 (= res!999669 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1471831 () Bool)

(assert (=> b!1471831 (= e!826113 (not true))))

(assert (=> b!1471831 e!826118))

(declare-fun res!999655 () Bool)

(assert (=> b!1471831 (=> (not res!999655) (not e!826118))))

(assert (=> b!1471831 (= res!999655 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49442 0))(
  ( (Unit!49443) )
))
(declare-fun lt!643355 () Unit!49442)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99067 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49442)

(assert (=> b!1471831 (= lt!643355 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1471832 () Bool)

(declare-fun lt!643357 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99067 (_ BitVec 32)) SeekEntryResult!12077)

(assert (=> b!1471832 (= e!826114 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643357 lt!643356 mask!2687) (seekEntryOrOpen!0 lt!643357 lt!643356 mask!2687)))))

(declare-fun b!1471833 () Bool)

(declare-fun res!999666 () Bool)

(assert (=> b!1471833 (=> (not res!999666) (not e!826113))))

(assert (=> b!1471833 (= res!999666 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1471834 () Bool)

(declare-fun lt!643353 () SeekEntryResult!12077)

(assert (=> b!1471834 (= e!826114 (= lt!643353 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643357 lt!643356 mask!2687)))))

(declare-fun b!1471835 () Bool)

(declare-fun res!999668 () Bool)

(assert (=> b!1471835 (=> (not res!999668) (not e!826117))))

(assert (=> b!1471835 (= res!999668 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47814 a!2862) j!93) a!2862 mask!2687) lt!643354))))

(declare-fun b!1471836 () Bool)

(declare-fun res!999658 () Bool)

(assert (=> b!1471836 (=> (not res!999658) (not e!826116))))

(declare-datatypes ((List!34495 0))(
  ( (Nil!34492) (Cons!34491 (h!35847 (_ BitVec 64)) (t!49196 List!34495)) )
))
(declare-fun arrayNoDuplicates!0 (array!99067 (_ BitVec 32) List!34495) Bool)

(assert (=> b!1471836 (= res!999658 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34492))))

(declare-fun b!1471837 () Bool)

(assert (=> b!1471837 (= e!826117 e!826113)))

(declare-fun res!999659 () Bool)

(assert (=> b!1471837 (=> (not res!999659) (not e!826113))))

(assert (=> b!1471837 (= res!999659 (= lt!643353 (Intermediate!12077 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1471837 (= lt!643353 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643357 mask!2687) lt!643357 lt!643356 mask!2687))))

(assert (=> b!1471837 (= lt!643357 (select (store (arr!47814 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(assert (= (and start!125816 res!999656) b!1471826))

(assert (= (and b!1471826 res!999660) b!1471827))

(assert (= (and b!1471827 res!999663) b!1471822))

(assert (= (and b!1471822 res!999661) b!1471830))

(assert (= (and b!1471830 res!999669) b!1471836))

(assert (= (and b!1471836 res!999658) b!1471824))

(assert (= (and b!1471824 res!999665) b!1471821))

(assert (= (and b!1471821 res!999664) b!1471828))

(assert (= (and b!1471828 res!999662) b!1471835))

(assert (= (and b!1471835 res!999668) b!1471837))

(assert (= (and b!1471837 res!999659) b!1471829))

(assert (= (and b!1471829 c!135599) b!1471834))

(assert (= (and b!1471829 (not c!135599)) b!1471832))

(assert (= (and b!1471829 res!999667) b!1471833))

(assert (= (and b!1471833 res!999666) b!1471831))

(assert (= (and b!1471831 res!999655) b!1471823))

(assert (= (and b!1471823 res!999657) b!1471825))

(declare-fun m!1358645 () Bool)

(assert (=> b!1471825 m!1358645))

(declare-fun m!1358647 () Bool)

(assert (=> b!1471825 m!1358647))

(declare-fun m!1358649 () Bool)

(assert (=> b!1471834 m!1358649))

(assert (=> b!1471835 m!1358647))

(assert (=> b!1471835 m!1358647))

(declare-fun m!1358651 () Bool)

(assert (=> b!1471835 m!1358651))

(assert (=> b!1471823 m!1358647))

(assert (=> b!1471823 m!1358647))

(declare-fun m!1358653 () Bool)

(assert (=> b!1471823 m!1358653))

(declare-fun m!1358655 () Bool)

(assert (=> start!125816 m!1358655))

(declare-fun m!1358657 () Bool)

(assert (=> start!125816 m!1358657))

(declare-fun m!1358659 () Bool)

(assert (=> b!1471830 m!1358659))

(declare-fun m!1358661 () Bool)

(assert (=> b!1471837 m!1358661))

(assert (=> b!1471837 m!1358661))

(declare-fun m!1358663 () Bool)

(assert (=> b!1471837 m!1358663))

(declare-fun m!1358665 () Bool)

(assert (=> b!1471837 m!1358665))

(declare-fun m!1358667 () Bool)

(assert (=> b!1471837 m!1358667))

(assert (=> b!1471822 m!1358647))

(assert (=> b!1471822 m!1358647))

(declare-fun m!1358669 () Bool)

(assert (=> b!1471822 m!1358669))

(declare-fun m!1358671 () Bool)

(assert (=> b!1471832 m!1358671))

(declare-fun m!1358673 () Bool)

(assert (=> b!1471832 m!1358673))

(declare-fun m!1358675 () Bool)

(assert (=> b!1471831 m!1358675))

(declare-fun m!1358677 () Bool)

(assert (=> b!1471831 m!1358677))

(assert (=> b!1471828 m!1358647))

(assert (=> b!1471828 m!1358647))

(declare-fun m!1358679 () Bool)

(assert (=> b!1471828 m!1358679))

(assert (=> b!1471828 m!1358679))

(assert (=> b!1471828 m!1358647))

(declare-fun m!1358681 () Bool)

(assert (=> b!1471828 m!1358681))

(declare-fun m!1358683 () Bool)

(assert (=> b!1471836 m!1358683))

(declare-fun m!1358685 () Bool)

(assert (=> b!1471827 m!1358685))

(assert (=> b!1471827 m!1358685))

(declare-fun m!1358687 () Bool)

(assert (=> b!1471827 m!1358687))

(assert (=> b!1471821 m!1358665))

(declare-fun m!1358689 () Bool)

(assert (=> b!1471821 m!1358689))

(push 1)

