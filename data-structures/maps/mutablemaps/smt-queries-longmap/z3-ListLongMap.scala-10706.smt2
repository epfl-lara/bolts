; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125418 () Bool)

(assert start!125418)

(declare-fun res!994718 () Bool)

(declare-fun e!823615 () Bool)

(assert (=> start!125418 (=> (not res!994718) (not e!823615))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125418 (= res!994718 (validMask!0 mask!2687))))

(assert (=> start!125418 e!823615))

(assert (=> start!125418 true))

(declare-datatypes ((array!98783 0))(
  ( (array!98784 (arr!47675 (Array (_ BitVec 32) (_ BitVec 64))) (size!48226 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98783)

(declare-fun array_inv!36620 (array!98783) Bool)

(assert (=> start!125418 (array_inv!36620 a!2862)))

(declare-fun b!1465795 () Bool)

(declare-fun e!823616 () Bool)

(assert (=> b!1465795 (= e!823615 e!823616)))

(declare-fun res!994728 () Bool)

(assert (=> b!1465795 (=> (not res!994728) (not e!823616))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1465795 (= res!994728 (= (select (store (arr!47675 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!641494 () array!98783)

(assert (=> b!1465795 (= lt!641494 (array!98784 (store (arr!47675 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48226 a!2862)))))

(declare-fun b!1465796 () Bool)

(declare-fun res!994721 () Bool)

(assert (=> b!1465796 (=> (not res!994721) (not e!823615))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1465796 (= res!994721 (validKeyInArray!0 (select (arr!47675 a!2862) i!1006)))))

(declare-fun b!1465797 () Bool)

(declare-fun res!994725 () Bool)

(assert (=> b!1465797 (=> (not res!994725) (not e!823615))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1465797 (= res!994725 (and (= (size!48226 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48226 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48226 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1465798 () Bool)

(declare-fun res!994714 () Bool)

(assert (=> b!1465798 (=> (not res!994714) (not e!823615))))

(declare-datatypes ((List!34356 0))(
  ( (Nil!34353) (Cons!34352 (h!35702 (_ BitVec 64)) (t!49057 List!34356)) )
))
(declare-fun arrayNoDuplicates!0 (array!98783 (_ BitVec 32) List!34356) Bool)

(assert (=> b!1465798 (= res!994714 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34353))))

(declare-fun b!1465799 () Bool)

(declare-fun res!994727 () Bool)

(declare-fun e!823611 () Bool)

(assert (=> b!1465799 (=> res!994727 e!823611)))

(declare-fun e!823612 () Bool)

(assert (=> b!1465799 (= res!994727 e!823612)))

(declare-fun c!135056 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1465799 (= c!135056 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1465800 () Bool)

(declare-fun res!994719 () Bool)

(declare-fun e!823613 () Bool)

(assert (=> b!1465800 (=> (not res!994719) (not e!823613))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1465800 (= res!994719 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1465801 () Bool)

(declare-fun res!994717 () Bool)

(assert (=> b!1465801 (=> (not res!994717) (not e!823615))))

(assert (=> b!1465801 (= res!994717 (validKeyInArray!0 (select (arr!47675 a!2862) j!93)))))

(declare-fun b!1465802 () Bool)

(declare-fun e!823608 () Bool)

(assert (=> b!1465802 (= e!823613 (not e!823608))))

(declare-fun res!994712 () Bool)

(assert (=> b!1465802 (=> res!994712 e!823608)))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1465802 (= res!994712 (or (and (= (select (arr!47675 a!2862) index!646) (select (store (arr!47675 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47675 a!2862) index!646) (select (arr!47675 a!2862) j!93))) (= (select (arr!47675 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11950 0))(
  ( (MissingZero!11950 (index!50191 (_ BitVec 32))) (Found!11950 (index!50192 (_ BitVec 32))) (Intermediate!11950 (undefined!12762 Bool) (index!50193 (_ BitVec 32)) (x!131770 (_ BitVec 32))) (Undefined!11950) (MissingVacant!11950 (index!50194 (_ BitVec 32))) )
))
(declare-fun lt!641487 () SeekEntryResult!11950)

(assert (=> b!1465802 (and (= lt!641487 (Found!11950 j!93)) (or (= (select (arr!47675 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47675 a!2862) intermediateBeforeIndex!19) (select (arr!47675 a!2862) j!93))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98783 (_ BitVec 32)) SeekEntryResult!11950)

(assert (=> b!1465802 (= lt!641487 (seekEntryOrOpen!0 (select (arr!47675 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98783 (_ BitVec 32)) Bool)

(assert (=> b!1465802 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49344 0))(
  ( (Unit!49345) )
))
(declare-fun lt!641493 () Unit!49344)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98783 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49344)

(assert (=> b!1465802 (= lt!641493 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1465803 () Bool)

(declare-fun res!994723 () Bool)

(declare-fun e!823609 () Bool)

(assert (=> b!1465803 (=> (not res!994723) (not e!823609))))

(declare-fun lt!641488 () SeekEntryResult!11950)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98783 (_ BitVec 32)) SeekEntryResult!11950)

(assert (=> b!1465803 (= res!994723 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47675 a!2862) j!93) a!2862 mask!2687) lt!641488))))

(declare-fun b!1465804 () Bool)

(declare-fun res!994724 () Bool)

(assert (=> b!1465804 (=> (not res!994724) (not e!823615))))

(assert (=> b!1465804 (= res!994724 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1465805 () Bool)

(assert (=> b!1465805 (= e!823611 true)))

(declare-fun lt!641489 () (_ BitVec 64))

(assert (=> b!1465805 (= lt!641487 (seekEntryOrOpen!0 lt!641489 lt!641494 mask!2687))))

(declare-fun lt!641490 () Unit!49344)

(declare-fun lt!641491 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98783 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49344)

(assert (=> b!1465805 (= lt!641490 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!641491 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1465806 () Bool)

(declare-fun res!994716 () Bool)

(assert (=> b!1465806 (=> res!994716 e!823611)))

(assert (=> b!1465806 (= res!994716 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641491 (select (arr!47675 a!2862) j!93) a!2862 mask!2687) lt!641488)))))

(declare-fun b!1465807 () Bool)

(assert (=> b!1465807 (= e!823609 e!823613)))

(declare-fun res!994722 () Bool)

(assert (=> b!1465807 (=> (not res!994722) (not e!823613))))

(declare-fun lt!641492 () SeekEntryResult!11950)

(assert (=> b!1465807 (= res!994722 (= lt!641492 (Intermediate!11950 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1465807 (= lt!641492 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641489 mask!2687) lt!641489 lt!641494 mask!2687))))

(assert (=> b!1465807 (= lt!641489 (select (store (arr!47675 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1465808 () Bool)

(declare-fun res!994715 () Bool)

(assert (=> b!1465808 (=> res!994715 e!823611)))

(assert (=> b!1465808 (= res!994715 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1465809 () Bool)

(assert (=> b!1465809 (= e!823612 (not (= lt!641492 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641491 lt!641489 lt!641494 mask!2687))))))

(declare-fun b!1465810 () Bool)

(assert (=> b!1465810 (= e!823608 e!823611)))

(declare-fun res!994711 () Bool)

(assert (=> b!1465810 (=> res!994711 e!823611)))

(assert (=> b!1465810 (= res!994711 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641491 #b00000000000000000000000000000000) (bvsge lt!641491 (size!48226 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1465810 (= lt!641491 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1465811 () Bool)

(declare-fun res!994726 () Bool)

(assert (=> b!1465811 (=> (not res!994726) (not e!823615))))

(assert (=> b!1465811 (= res!994726 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48226 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48226 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48226 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1465812 () Bool)

(declare-fun res!994720 () Bool)

(assert (=> b!1465812 (=> (not res!994720) (not e!823613))))

(declare-fun e!823610 () Bool)

(assert (=> b!1465812 (= res!994720 e!823610)))

(declare-fun c!135055 () Bool)

(assert (=> b!1465812 (= c!135055 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1465813 () Bool)

(assert (=> b!1465813 (= e!823616 e!823609)))

(declare-fun res!994713 () Bool)

(assert (=> b!1465813 (=> (not res!994713) (not e!823609))))

(assert (=> b!1465813 (= res!994713 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47675 a!2862) j!93) mask!2687) (select (arr!47675 a!2862) j!93) a!2862 mask!2687) lt!641488))))

(assert (=> b!1465813 (= lt!641488 (Intermediate!11950 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1465814 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98783 (_ BitVec 32)) SeekEntryResult!11950)

(assert (=> b!1465814 (= e!823610 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641489 lt!641494 mask!2687) (seekEntryOrOpen!0 lt!641489 lt!641494 mask!2687)))))

(declare-fun b!1465815 () Bool)

(assert (=> b!1465815 (= e!823610 (= lt!641492 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641489 lt!641494 mask!2687)))))

(declare-fun b!1465816 () Bool)

(assert (=> b!1465816 (= e!823612 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641491 intermediateAfterIndex!19 lt!641489 lt!641494 mask!2687) (seekEntryOrOpen!0 lt!641489 lt!641494 mask!2687))))))

(assert (= (and start!125418 res!994718) b!1465797))

(assert (= (and b!1465797 res!994725) b!1465796))

(assert (= (and b!1465796 res!994721) b!1465801))

(assert (= (and b!1465801 res!994717) b!1465804))

(assert (= (and b!1465804 res!994724) b!1465798))

(assert (= (and b!1465798 res!994714) b!1465811))

(assert (= (and b!1465811 res!994726) b!1465795))

(assert (= (and b!1465795 res!994728) b!1465813))

(assert (= (and b!1465813 res!994713) b!1465803))

(assert (= (and b!1465803 res!994723) b!1465807))

(assert (= (and b!1465807 res!994722) b!1465812))

(assert (= (and b!1465812 c!135055) b!1465815))

(assert (= (and b!1465812 (not c!135055)) b!1465814))

(assert (= (and b!1465812 res!994720) b!1465800))

(assert (= (and b!1465800 res!994719) b!1465802))

(assert (= (and b!1465802 (not res!994712)) b!1465810))

(assert (= (and b!1465810 (not res!994711)) b!1465806))

(assert (= (and b!1465806 (not res!994716)) b!1465799))

(assert (= (and b!1465799 c!135056) b!1465809))

(assert (= (and b!1465799 (not c!135056)) b!1465816))

(assert (= (and b!1465799 (not res!994727)) b!1465808))

(assert (= (and b!1465808 (not res!994715)) b!1465805))

(declare-fun m!1352895 () Bool)

(assert (=> b!1465813 m!1352895))

(assert (=> b!1465813 m!1352895))

(declare-fun m!1352897 () Bool)

(assert (=> b!1465813 m!1352897))

(assert (=> b!1465813 m!1352897))

(assert (=> b!1465813 m!1352895))

(declare-fun m!1352899 () Bool)

(assert (=> b!1465813 m!1352899))

(assert (=> b!1465806 m!1352895))

(assert (=> b!1465806 m!1352895))

(declare-fun m!1352901 () Bool)

(assert (=> b!1465806 m!1352901))

(declare-fun m!1352903 () Bool)

(assert (=> b!1465816 m!1352903))

(declare-fun m!1352905 () Bool)

(assert (=> b!1465816 m!1352905))

(declare-fun m!1352907 () Bool)

(assert (=> b!1465798 m!1352907))

(declare-fun m!1352909 () Bool)

(assert (=> b!1465807 m!1352909))

(assert (=> b!1465807 m!1352909))

(declare-fun m!1352911 () Bool)

(assert (=> b!1465807 m!1352911))

(declare-fun m!1352913 () Bool)

(assert (=> b!1465807 m!1352913))

(declare-fun m!1352915 () Bool)

(assert (=> b!1465807 m!1352915))

(declare-fun m!1352917 () Bool)

(assert (=> b!1465802 m!1352917))

(assert (=> b!1465802 m!1352913))

(declare-fun m!1352919 () Bool)

(assert (=> b!1465802 m!1352919))

(declare-fun m!1352921 () Bool)

(assert (=> b!1465802 m!1352921))

(declare-fun m!1352923 () Bool)

(assert (=> b!1465802 m!1352923))

(assert (=> b!1465802 m!1352895))

(declare-fun m!1352925 () Bool)

(assert (=> b!1465802 m!1352925))

(declare-fun m!1352927 () Bool)

(assert (=> b!1465802 m!1352927))

(assert (=> b!1465802 m!1352895))

(declare-fun m!1352929 () Bool)

(assert (=> b!1465815 m!1352929))

(declare-fun m!1352931 () Bool)

(assert (=> start!125418 m!1352931))

(declare-fun m!1352933 () Bool)

(assert (=> start!125418 m!1352933))

(declare-fun m!1352935 () Bool)

(assert (=> b!1465809 m!1352935))

(declare-fun m!1352937 () Bool)

(assert (=> b!1465796 m!1352937))

(assert (=> b!1465796 m!1352937))

(declare-fun m!1352939 () Bool)

(assert (=> b!1465796 m!1352939))

(declare-fun m!1352941 () Bool)

(assert (=> b!1465804 m!1352941))

(assert (=> b!1465803 m!1352895))

(assert (=> b!1465803 m!1352895))

(declare-fun m!1352943 () Bool)

(assert (=> b!1465803 m!1352943))

(assert (=> b!1465801 m!1352895))

(assert (=> b!1465801 m!1352895))

(declare-fun m!1352945 () Bool)

(assert (=> b!1465801 m!1352945))

(declare-fun m!1352947 () Bool)

(assert (=> b!1465810 m!1352947))

(assert (=> b!1465805 m!1352905))

(declare-fun m!1352949 () Bool)

(assert (=> b!1465805 m!1352949))

(assert (=> b!1465795 m!1352913))

(declare-fun m!1352951 () Bool)

(assert (=> b!1465795 m!1352951))

(declare-fun m!1352953 () Bool)

(assert (=> b!1465814 m!1352953))

(assert (=> b!1465814 m!1352905))

(check-sat (not b!1465798) (not start!125418) (not b!1465809) (not b!1465806) (not b!1465813) (not b!1465796) (not b!1465814) (not b!1465816) (not b!1465815) (not b!1465802) (not b!1465805) (not b!1465807) (not b!1465810) (not b!1465804) (not b!1465801) (not b!1465803))
