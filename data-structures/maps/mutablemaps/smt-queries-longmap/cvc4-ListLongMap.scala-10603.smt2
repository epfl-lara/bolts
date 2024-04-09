; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124802 () Bool)

(assert start!124802)

(declare-fun b!1446802 () Bool)

(declare-fun res!978633 () Bool)

(declare-fun e!814882 () Bool)

(assert (=> b!1446802 (=> (not res!978633) (not e!814882))))

(declare-datatypes ((array!98167 0))(
  ( (array!98168 (arr!47367 (Array (_ BitVec 32) (_ BitVec 64))) (size!47918 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98167)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1446802 (= res!978633 (validKeyInArray!0 (select (arr!47367 a!2862) i!1006)))))

(declare-fun b!1446803 () Bool)

(declare-fun res!978620 () Bool)

(assert (=> b!1446803 (=> (not res!978620) (not e!814882))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1446803 (= res!978620 (and (= (size!47918 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47918 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47918 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1446804 () Bool)

(declare-fun res!978622 () Bool)

(assert (=> b!1446804 (=> (not res!978622) (not e!814882))))

(assert (=> b!1446804 (= res!978622 (validKeyInArray!0 (select (arr!47367 a!2862) j!93)))))

(declare-fun b!1446805 () Bool)

(declare-fun e!814883 () Bool)

(declare-fun e!814879 () Bool)

(assert (=> b!1446805 (= e!814883 e!814879)))

(declare-fun res!978625 () Bool)

(assert (=> b!1446805 (=> (not res!978625) (not e!814879))))

(declare-datatypes ((SeekEntryResult!11642 0))(
  ( (MissingZero!11642 (index!48959 (_ BitVec 32))) (Found!11642 (index!48960 (_ BitVec 32))) (Intermediate!11642 (undefined!12454 Bool) (index!48961 (_ BitVec 32)) (x!130638 (_ BitVec 32))) (Undefined!11642) (MissingVacant!11642 (index!48962 (_ BitVec 32))) )
))
(declare-fun lt!634901 () SeekEntryResult!11642)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98167 (_ BitVec 32)) SeekEntryResult!11642)

(assert (=> b!1446805 (= res!978625 (= lt!634901 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47367 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1446806 () Bool)

(declare-fun e!814885 () Bool)

(declare-fun e!814877 () Bool)

(assert (=> b!1446806 (= e!814885 e!814877)))

(declare-fun res!978630 () Bool)

(assert (=> b!1446806 (=> (not res!978630) (not e!814877))))

(declare-fun lt!634897 () SeekEntryResult!11642)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98167 (_ BitVec 32)) SeekEntryResult!11642)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1446806 (= res!978630 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47367 a!2862) j!93) mask!2687) (select (arr!47367 a!2862) j!93) a!2862 mask!2687) lt!634897))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1446806 (= lt!634897 (Intermediate!11642 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1446807 () Bool)

(declare-fun res!978623 () Bool)

(assert (=> b!1446807 (=> (not res!978623) (not e!814882))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98167 (_ BitVec 32)) Bool)

(assert (=> b!1446807 (= res!978623 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1446808 () Bool)

(declare-fun res!978635 () Bool)

(declare-fun e!814880 () Bool)

(assert (=> b!1446808 (=> (not res!978635) (not e!814880))))

(declare-fun e!814886 () Bool)

(assert (=> b!1446808 (= res!978635 e!814886)))

(declare-fun c!133604 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1446808 (= c!133604 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1446809 () Bool)

(declare-fun e!814881 () Bool)

(assert (=> b!1446809 (= e!814881 e!814883)))

(declare-fun res!978628 () Bool)

(assert (=> b!1446809 (=> res!978628 e!814883)))

(assert (=> b!1446809 (= res!978628 (or (and (= (select (arr!47367 a!2862) index!646) (select (store (arr!47367 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47367 a!2862) index!646) (select (arr!47367 a!2862) j!93))) (not (= (select (arr!47367 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1446810 () Bool)

(declare-fun res!978629 () Bool)

(assert (=> b!1446810 (=> (not res!978629) (not e!814877))))

(assert (=> b!1446810 (= res!978629 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47367 a!2862) j!93) a!2862 mask!2687) lt!634897))))

(declare-fun res!978631 () Bool)

(assert (=> start!124802 (=> (not res!978631) (not e!814882))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124802 (= res!978631 (validMask!0 mask!2687))))

(assert (=> start!124802 e!814882))

(assert (=> start!124802 true))

(declare-fun array_inv!36312 (array!98167) Bool)

(assert (=> start!124802 (array_inv!36312 a!2862)))

(declare-fun b!1446811 () Bool)

(declare-fun res!978636 () Bool)

(assert (=> b!1446811 (=> (not res!978636) (not e!814882))))

(declare-datatypes ((List!34048 0))(
  ( (Nil!34045) (Cons!34044 (h!35394 (_ BitVec 64)) (t!48749 List!34048)) )
))
(declare-fun arrayNoDuplicates!0 (array!98167 (_ BitVec 32) List!34048) Bool)

(assert (=> b!1446811 (= res!978636 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34045))))

(declare-fun b!1446812 () Bool)

(declare-fun e!814884 () Bool)

(assert (=> b!1446812 (= e!814880 (not e!814884))))

(declare-fun res!978627 () Bool)

(assert (=> b!1446812 (=> res!978627 e!814884)))

(assert (=> b!1446812 (= res!978627 (or (and (= (select (arr!47367 a!2862) index!646) (select (store (arr!47367 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47367 a!2862) index!646) (select (arr!47367 a!2862) j!93))) (not (= (select (arr!47367 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47367 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1446812 e!814881))

(declare-fun res!978624 () Bool)

(assert (=> b!1446812 (=> (not res!978624) (not e!814881))))

(assert (=> b!1446812 (= res!978624 (and (= lt!634901 (Found!11642 j!93)) (or (= (select (arr!47367 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47367 a!2862) intermediateBeforeIndex!19) (select (arr!47367 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98167 (_ BitVec 32)) SeekEntryResult!11642)

(assert (=> b!1446812 (= lt!634901 (seekEntryOrOpen!0 (select (arr!47367 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1446812 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48728 0))(
  ( (Unit!48729) )
))
(declare-fun lt!634898 () Unit!48728)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98167 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48728)

(assert (=> b!1446812 (= lt!634898 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1446813 () Bool)

(declare-fun res!978626 () Bool)

(assert (=> b!1446813 (=> (not res!978626) (not e!814882))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1446813 (= res!978626 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47918 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47918 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47918 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1446814 () Bool)

(declare-fun lt!634900 () array!98167)

(declare-fun lt!634902 () SeekEntryResult!11642)

(declare-fun lt!634899 () (_ BitVec 64))

(assert (=> b!1446814 (= e!814886 (= lt!634902 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634899 lt!634900 mask!2687)))))

(declare-fun b!1446815 () Bool)

(assert (=> b!1446815 (= e!814882 e!814885)))

(declare-fun res!978632 () Bool)

(assert (=> b!1446815 (=> (not res!978632) (not e!814885))))

(assert (=> b!1446815 (= res!978632 (= (select (store (arr!47367 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1446815 (= lt!634900 (array!98168 (store (arr!47367 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47918 a!2862)))))

(declare-fun b!1446816 () Bool)

(assert (=> b!1446816 (= e!814886 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634899 lt!634900 mask!2687) (seekEntryOrOpen!0 lt!634899 lt!634900 mask!2687)))))

(declare-fun b!1446817 () Bool)

(assert (=> b!1446817 (= e!814879 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1446818 () Bool)

(assert (=> b!1446818 (= e!814877 e!814880)))

(declare-fun res!978621 () Bool)

(assert (=> b!1446818 (=> (not res!978621) (not e!814880))))

(assert (=> b!1446818 (= res!978621 (= lt!634902 (Intermediate!11642 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1446818 (= lt!634902 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634899 mask!2687) lt!634899 lt!634900 mask!2687))))

(assert (=> b!1446818 (= lt!634899 (select (store (arr!47367 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1446819 () Bool)

(assert (=> b!1446819 (= e!814884 true)))

(declare-fun lt!634903 () SeekEntryResult!11642)

(assert (=> b!1446819 (= lt!634903 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47367 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1446820 () Bool)

(declare-fun res!978634 () Bool)

(assert (=> b!1446820 (=> (not res!978634) (not e!814880))))

(assert (=> b!1446820 (= res!978634 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!124802 res!978631) b!1446803))

(assert (= (and b!1446803 res!978620) b!1446802))

(assert (= (and b!1446802 res!978633) b!1446804))

(assert (= (and b!1446804 res!978622) b!1446807))

(assert (= (and b!1446807 res!978623) b!1446811))

(assert (= (and b!1446811 res!978636) b!1446813))

(assert (= (and b!1446813 res!978626) b!1446815))

(assert (= (and b!1446815 res!978632) b!1446806))

(assert (= (and b!1446806 res!978630) b!1446810))

(assert (= (and b!1446810 res!978629) b!1446818))

(assert (= (and b!1446818 res!978621) b!1446808))

(assert (= (and b!1446808 c!133604) b!1446814))

(assert (= (and b!1446808 (not c!133604)) b!1446816))

(assert (= (and b!1446808 res!978635) b!1446820))

(assert (= (and b!1446820 res!978634) b!1446812))

(assert (= (and b!1446812 res!978624) b!1446809))

(assert (= (and b!1446809 (not res!978628)) b!1446805))

(assert (= (and b!1446805 res!978625) b!1446817))

(assert (= (and b!1446812 (not res!978627)) b!1446819))

(declare-fun m!1335705 () Bool)

(assert (=> b!1446804 m!1335705))

(assert (=> b!1446804 m!1335705))

(declare-fun m!1335707 () Bool)

(assert (=> b!1446804 m!1335707))

(assert (=> b!1446806 m!1335705))

(assert (=> b!1446806 m!1335705))

(declare-fun m!1335709 () Bool)

(assert (=> b!1446806 m!1335709))

(assert (=> b!1446806 m!1335709))

(assert (=> b!1446806 m!1335705))

(declare-fun m!1335711 () Bool)

(assert (=> b!1446806 m!1335711))

(declare-fun m!1335713 () Bool)

(assert (=> start!124802 m!1335713))

(declare-fun m!1335715 () Bool)

(assert (=> start!124802 m!1335715))

(assert (=> b!1446810 m!1335705))

(assert (=> b!1446810 m!1335705))

(declare-fun m!1335717 () Bool)

(assert (=> b!1446810 m!1335717))

(declare-fun m!1335719 () Bool)

(assert (=> b!1446811 m!1335719))

(assert (=> b!1446819 m!1335705))

(assert (=> b!1446819 m!1335705))

(declare-fun m!1335721 () Bool)

(assert (=> b!1446819 m!1335721))

(declare-fun m!1335723 () Bool)

(assert (=> b!1446809 m!1335723))

(declare-fun m!1335725 () Bool)

(assert (=> b!1446809 m!1335725))

(declare-fun m!1335727 () Bool)

(assert (=> b!1446809 m!1335727))

(assert (=> b!1446809 m!1335705))

(declare-fun m!1335729 () Bool)

(assert (=> b!1446812 m!1335729))

(assert (=> b!1446812 m!1335725))

(declare-fun m!1335731 () Bool)

(assert (=> b!1446812 m!1335731))

(assert (=> b!1446812 m!1335727))

(assert (=> b!1446812 m!1335723))

(assert (=> b!1446812 m!1335705))

(declare-fun m!1335733 () Bool)

(assert (=> b!1446812 m!1335733))

(declare-fun m!1335735 () Bool)

(assert (=> b!1446812 m!1335735))

(assert (=> b!1446812 m!1335705))

(declare-fun m!1335737 () Bool)

(assert (=> b!1446818 m!1335737))

(assert (=> b!1446818 m!1335737))

(declare-fun m!1335739 () Bool)

(assert (=> b!1446818 m!1335739))

(assert (=> b!1446818 m!1335725))

(declare-fun m!1335741 () Bool)

(assert (=> b!1446818 m!1335741))

(assert (=> b!1446805 m!1335705))

(assert (=> b!1446805 m!1335705))

(declare-fun m!1335743 () Bool)

(assert (=> b!1446805 m!1335743))

(declare-fun m!1335745 () Bool)

(assert (=> b!1446807 m!1335745))

(declare-fun m!1335747 () Bool)

(assert (=> b!1446816 m!1335747))

(declare-fun m!1335749 () Bool)

(assert (=> b!1446816 m!1335749))

(declare-fun m!1335751 () Bool)

(assert (=> b!1446814 m!1335751))

(assert (=> b!1446815 m!1335725))

(declare-fun m!1335753 () Bool)

(assert (=> b!1446815 m!1335753))

(declare-fun m!1335755 () Bool)

(assert (=> b!1446802 m!1335755))

(assert (=> b!1446802 m!1335755))

(declare-fun m!1335757 () Bool)

(assert (=> b!1446802 m!1335757))

(push 1)

