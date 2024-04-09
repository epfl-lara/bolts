; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124804 () Bool)

(assert start!124804)

(declare-fun b!1446859 () Bool)

(declare-fun e!814907 () Bool)

(declare-fun e!814908 () Bool)

(assert (=> b!1446859 (= e!814907 e!814908)))

(declare-fun res!978673 () Bool)

(assert (=> b!1446859 (=> (not res!978673) (not e!814908))))

(declare-datatypes ((SeekEntryResult!11643 0))(
  ( (MissingZero!11643 (index!48963 (_ BitVec 32))) (Found!11643 (index!48964 (_ BitVec 32))) (Intermediate!11643 (undefined!12455 Bool) (index!48965 (_ BitVec 32)) (x!130647 (_ BitVec 32))) (Undefined!11643) (MissingVacant!11643 (index!48966 (_ BitVec 32))) )
))
(declare-fun lt!634920 () SeekEntryResult!11643)

(declare-datatypes ((array!98169 0))(
  ( (array!98170 (arr!47368 (Array (_ BitVec 32) (_ BitVec 64))) (size!47919 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98169)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98169 (_ BitVec 32)) SeekEntryResult!11643)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1446859 (= res!978673 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47368 a!2862) j!93) mask!2687) (select (arr!47368 a!2862) j!93) a!2862 mask!2687) lt!634920))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1446859 (= lt!634920 (Intermediate!11643 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1446860 () Bool)

(declare-fun e!814911 () Bool)

(declare-fun e!814914 () Bool)

(assert (=> b!1446860 (= e!814911 (not e!814914))))

(declare-fun res!978686 () Bool)

(assert (=> b!1446860 (=> res!978686 e!814914)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1446860 (= res!978686 (or (and (= (select (arr!47368 a!2862) index!646) (select (store (arr!47368 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47368 a!2862) index!646) (select (arr!47368 a!2862) j!93))) (not (= (select (arr!47368 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47368 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!814916 () Bool)

(assert (=> b!1446860 e!814916))

(declare-fun res!978671 () Bool)

(assert (=> b!1446860 (=> (not res!978671) (not e!814916))))

(declare-fun lt!634921 () SeekEntryResult!11643)

(assert (=> b!1446860 (= res!978671 (and (= lt!634921 (Found!11643 j!93)) (or (= (select (arr!47368 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47368 a!2862) intermediateBeforeIndex!19) (select (arr!47368 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98169 (_ BitVec 32)) SeekEntryResult!11643)

(assert (=> b!1446860 (= lt!634921 (seekEntryOrOpen!0 (select (arr!47368 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98169 (_ BitVec 32)) Bool)

(assert (=> b!1446860 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48730 0))(
  ( (Unit!48731) )
))
(declare-fun lt!634919 () Unit!48730)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98169 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48730)

(assert (=> b!1446860 (= lt!634919 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!814915 () Bool)

(declare-fun b!1446861 () Bool)

(assert (=> b!1446861 (= e!814915 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun lt!634922 () (_ BitVec 64))

(declare-fun lt!634918 () SeekEntryResult!11643)

(declare-fun lt!634924 () array!98169)

(declare-fun e!814912 () Bool)

(declare-fun b!1446862 () Bool)

(assert (=> b!1446862 (= e!814912 (= lt!634918 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634922 lt!634924 mask!2687)))))

(declare-fun b!1446863 () Bool)

(declare-fun res!978684 () Bool)

(declare-fun e!814909 () Bool)

(assert (=> b!1446863 (=> (not res!978684) (not e!814909))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1446863 (= res!978684 (validKeyInArray!0 (select (arr!47368 a!2862) i!1006)))))

(declare-fun b!1446864 () Bool)

(declare-fun res!978685 () Bool)

(assert (=> b!1446864 (=> (not res!978685) (not e!814909))))

(declare-datatypes ((List!34049 0))(
  ( (Nil!34046) (Cons!34045 (h!35395 (_ BitVec 64)) (t!48750 List!34049)) )
))
(declare-fun arrayNoDuplicates!0 (array!98169 (_ BitVec 32) List!34049) Bool)

(assert (=> b!1446864 (= res!978685 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34046))))

(declare-fun b!1446865 () Bool)

(assert (=> b!1446865 (= e!814914 true)))

(declare-fun lt!634923 () SeekEntryResult!11643)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98169 (_ BitVec 32)) SeekEntryResult!11643)

(assert (=> b!1446865 (= lt!634923 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47368 a!2862) j!93) a!2862 mask!2687))))

(declare-fun res!978679 () Bool)

(assert (=> start!124804 (=> (not res!978679) (not e!814909))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124804 (= res!978679 (validMask!0 mask!2687))))

(assert (=> start!124804 e!814909))

(assert (=> start!124804 true))

(declare-fun array_inv!36313 (array!98169) Bool)

(assert (=> start!124804 (array_inv!36313 a!2862)))

(declare-fun b!1446866 () Bool)

(declare-fun e!814913 () Bool)

(assert (=> b!1446866 (= e!814916 e!814913)))

(declare-fun res!978672 () Bool)

(assert (=> b!1446866 (=> res!978672 e!814913)))

(assert (=> b!1446866 (= res!978672 (or (and (= (select (arr!47368 a!2862) index!646) (select (store (arr!47368 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47368 a!2862) index!646) (select (arr!47368 a!2862) j!93))) (not (= (select (arr!47368 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1446867 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1446867 (= e!814912 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634922 lt!634924 mask!2687) (seekEntryOrOpen!0 lt!634922 lt!634924 mask!2687)))))

(declare-fun b!1446868 () Bool)

(assert (=> b!1446868 (= e!814913 e!814915)))

(declare-fun res!978678 () Bool)

(assert (=> b!1446868 (=> (not res!978678) (not e!814915))))

(assert (=> b!1446868 (= res!978678 (= lt!634921 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47368 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1446869 () Bool)

(declare-fun res!978677 () Bool)

(assert (=> b!1446869 (=> (not res!978677) (not e!814909))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1446869 (= res!978677 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47919 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47919 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47919 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1446870 () Bool)

(declare-fun res!978681 () Bool)

(assert (=> b!1446870 (=> (not res!978681) (not e!814909))))

(assert (=> b!1446870 (= res!978681 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1446871 () Bool)

(declare-fun res!978680 () Bool)

(assert (=> b!1446871 (=> (not res!978680) (not e!814909))))

(assert (=> b!1446871 (= res!978680 (and (= (size!47919 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47919 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47919 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1446872 () Bool)

(assert (=> b!1446872 (= e!814908 e!814911)))

(declare-fun res!978687 () Bool)

(assert (=> b!1446872 (=> (not res!978687) (not e!814911))))

(assert (=> b!1446872 (= res!978687 (= lt!634918 (Intermediate!11643 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1446872 (= lt!634918 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634922 mask!2687) lt!634922 lt!634924 mask!2687))))

(assert (=> b!1446872 (= lt!634922 (select (store (arr!47368 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1446873 () Bool)

(declare-fun res!978674 () Bool)

(assert (=> b!1446873 (=> (not res!978674) (not e!814909))))

(assert (=> b!1446873 (= res!978674 (validKeyInArray!0 (select (arr!47368 a!2862) j!93)))))

(declare-fun b!1446874 () Bool)

(declare-fun res!978675 () Bool)

(assert (=> b!1446874 (=> (not res!978675) (not e!814908))))

(assert (=> b!1446874 (= res!978675 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47368 a!2862) j!93) a!2862 mask!2687) lt!634920))))

(declare-fun b!1446875 () Bool)

(declare-fun res!978676 () Bool)

(assert (=> b!1446875 (=> (not res!978676) (not e!814911))))

(assert (=> b!1446875 (= res!978676 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1446876 () Bool)

(declare-fun res!978683 () Bool)

(assert (=> b!1446876 (=> (not res!978683) (not e!814911))))

(assert (=> b!1446876 (= res!978683 e!814912)))

(declare-fun c!133607 () Bool)

(assert (=> b!1446876 (= c!133607 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1446877 () Bool)

(assert (=> b!1446877 (= e!814909 e!814907)))

(declare-fun res!978682 () Bool)

(assert (=> b!1446877 (=> (not res!978682) (not e!814907))))

(assert (=> b!1446877 (= res!978682 (= (select (store (arr!47368 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1446877 (= lt!634924 (array!98170 (store (arr!47368 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47919 a!2862)))))

(assert (= (and start!124804 res!978679) b!1446871))

(assert (= (and b!1446871 res!978680) b!1446863))

(assert (= (and b!1446863 res!978684) b!1446873))

(assert (= (and b!1446873 res!978674) b!1446870))

(assert (= (and b!1446870 res!978681) b!1446864))

(assert (= (and b!1446864 res!978685) b!1446869))

(assert (= (and b!1446869 res!978677) b!1446877))

(assert (= (and b!1446877 res!978682) b!1446859))

(assert (= (and b!1446859 res!978673) b!1446874))

(assert (= (and b!1446874 res!978675) b!1446872))

(assert (= (and b!1446872 res!978687) b!1446876))

(assert (= (and b!1446876 c!133607) b!1446862))

(assert (= (and b!1446876 (not c!133607)) b!1446867))

(assert (= (and b!1446876 res!978683) b!1446875))

(assert (= (and b!1446875 res!978676) b!1446860))

(assert (= (and b!1446860 res!978671) b!1446866))

(assert (= (and b!1446866 (not res!978672)) b!1446868))

(assert (= (and b!1446868 res!978678) b!1446861))

(assert (= (and b!1446860 (not res!978686)) b!1446865))

(declare-fun m!1335759 () Bool)

(assert (=> b!1446867 m!1335759))

(declare-fun m!1335761 () Bool)

(assert (=> b!1446867 m!1335761))

(declare-fun m!1335763 () Bool)

(assert (=> b!1446877 m!1335763))

(declare-fun m!1335765 () Bool)

(assert (=> b!1446877 m!1335765))

(declare-fun m!1335767 () Bool)

(assert (=> b!1446868 m!1335767))

(assert (=> b!1446868 m!1335767))

(declare-fun m!1335769 () Bool)

(assert (=> b!1446868 m!1335769))

(declare-fun m!1335771 () Bool)

(assert (=> start!124804 m!1335771))

(declare-fun m!1335773 () Bool)

(assert (=> start!124804 m!1335773))

(declare-fun m!1335775 () Bool)

(assert (=> b!1446860 m!1335775))

(assert (=> b!1446860 m!1335763))

(declare-fun m!1335777 () Bool)

(assert (=> b!1446860 m!1335777))

(declare-fun m!1335779 () Bool)

(assert (=> b!1446860 m!1335779))

(declare-fun m!1335781 () Bool)

(assert (=> b!1446860 m!1335781))

(assert (=> b!1446860 m!1335767))

(declare-fun m!1335783 () Bool)

(assert (=> b!1446860 m!1335783))

(declare-fun m!1335785 () Bool)

(assert (=> b!1446860 m!1335785))

(assert (=> b!1446860 m!1335767))

(assert (=> b!1446859 m!1335767))

(assert (=> b!1446859 m!1335767))

(declare-fun m!1335787 () Bool)

(assert (=> b!1446859 m!1335787))

(assert (=> b!1446859 m!1335787))

(assert (=> b!1446859 m!1335767))

(declare-fun m!1335789 () Bool)

(assert (=> b!1446859 m!1335789))

(assert (=> b!1446866 m!1335781))

(assert (=> b!1446866 m!1335763))

(assert (=> b!1446866 m!1335779))

(assert (=> b!1446866 m!1335767))

(declare-fun m!1335791 () Bool)

(assert (=> b!1446864 m!1335791))

(declare-fun m!1335793 () Bool)

(assert (=> b!1446862 m!1335793))

(assert (=> b!1446865 m!1335767))

(assert (=> b!1446865 m!1335767))

(declare-fun m!1335795 () Bool)

(assert (=> b!1446865 m!1335795))

(assert (=> b!1446874 m!1335767))

(assert (=> b!1446874 m!1335767))

(declare-fun m!1335797 () Bool)

(assert (=> b!1446874 m!1335797))

(declare-fun m!1335799 () Bool)

(assert (=> b!1446870 m!1335799))

(declare-fun m!1335801 () Bool)

(assert (=> b!1446872 m!1335801))

(assert (=> b!1446872 m!1335801))

(declare-fun m!1335803 () Bool)

(assert (=> b!1446872 m!1335803))

(assert (=> b!1446872 m!1335763))

(declare-fun m!1335805 () Bool)

(assert (=> b!1446872 m!1335805))

(declare-fun m!1335807 () Bool)

(assert (=> b!1446863 m!1335807))

(assert (=> b!1446863 m!1335807))

(declare-fun m!1335809 () Bool)

(assert (=> b!1446863 m!1335809))

(assert (=> b!1446873 m!1335767))

(assert (=> b!1446873 m!1335767))

(declare-fun m!1335811 () Bool)

(assert (=> b!1446873 m!1335811))

(push 1)

