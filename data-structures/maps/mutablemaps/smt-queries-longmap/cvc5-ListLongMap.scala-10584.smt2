; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124684 () Bool)

(assert start!124684)

(declare-fun b!1443707 () Bool)

(declare-fun res!975890 () Bool)

(declare-fun e!813542 () Bool)

(assert (=> b!1443707 (=> (not res!975890) (not e!813542))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98049 0))(
  ( (array!98050 (arr!47308 (Array (_ BitVec 32) (_ BitVec 64))) (size!47859 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98049)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1443707 (= res!975890 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47859 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47859 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47859 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun lt!633918 () (_ BitVec 64))

(declare-fun lt!633921 () array!98049)

(declare-fun b!1443708 () Bool)

(declare-fun e!813540 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11583 0))(
  ( (MissingZero!11583 (index!48723 (_ BitVec 32))) (Found!11583 (index!48724 (_ BitVec 32))) (Intermediate!11583 (undefined!12395 Bool) (index!48725 (_ BitVec 32)) (x!130427 (_ BitVec 32))) (Undefined!11583) (MissingVacant!11583 (index!48726 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98049 (_ BitVec 32)) SeekEntryResult!11583)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98049 (_ BitVec 32)) SeekEntryResult!11583)

(assert (=> b!1443708 (= e!813540 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633918 lt!633921 mask!2687) (seekEntryOrOpen!0 lt!633918 lt!633921 mask!2687)))))

(declare-fun res!975894 () Bool)

(assert (=> start!124684 (=> (not res!975894) (not e!813542))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124684 (= res!975894 (validMask!0 mask!2687))))

(assert (=> start!124684 e!813542))

(assert (=> start!124684 true))

(declare-fun array_inv!36253 (array!98049) Bool)

(assert (=> start!124684 (array_inv!36253 a!2862)))

(declare-fun b!1443709 () Bool)

(declare-fun e!813541 () Bool)

(assert (=> b!1443709 (= e!813542 e!813541)))

(declare-fun res!975893 () Bool)

(assert (=> b!1443709 (=> (not res!975893) (not e!813541))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1443709 (= res!975893 (= (select (store (arr!47308 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1443709 (= lt!633921 (array!98050 (store (arr!47308 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47859 a!2862)))))

(declare-fun b!1443710 () Bool)

(declare-fun res!975884 () Bool)

(assert (=> b!1443710 (=> (not res!975884) (not e!813542))))

(declare-datatypes ((List!33989 0))(
  ( (Nil!33986) (Cons!33985 (h!35335 (_ BitVec 64)) (t!48690 List!33989)) )
))
(declare-fun arrayNoDuplicates!0 (array!98049 (_ BitVec 32) List!33989) Bool)

(assert (=> b!1443710 (= res!975884 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33986))))

(declare-fun b!1443711 () Bool)

(declare-fun res!975879 () Bool)

(declare-fun e!813539 () Bool)

(assert (=> b!1443711 (=> (not res!975879) (not e!813539))))

(assert (=> b!1443711 (= res!975879 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1443712 () Bool)

(declare-fun lt!633917 () SeekEntryResult!11583)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98049 (_ BitVec 32)) SeekEntryResult!11583)

(assert (=> b!1443712 (= e!813540 (= lt!633917 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633918 lt!633921 mask!2687)))))

(declare-fun b!1443713 () Bool)

(declare-fun e!813538 () Bool)

(assert (=> b!1443713 (= e!813538 e!813539)))

(declare-fun res!975886 () Bool)

(assert (=> b!1443713 (=> (not res!975886) (not e!813539))))

(assert (=> b!1443713 (= res!975886 (= lt!633917 (Intermediate!11583 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1443713 (= lt!633917 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633918 mask!2687) lt!633918 lt!633921 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1443713 (= lt!633918 (select (store (arr!47308 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1443714 () Bool)

(declare-fun res!975883 () Bool)

(assert (=> b!1443714 (=> (not res!975883) (not e!813542))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98049 (_ BitVec 32)) Bool)

(assert (=> b!1443714 (= res!975883 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1443715 () Bool)

(declare-fun e!813537 () Bool)

(assert (=> b!1443715 (= e!813537 (or (= (select (arr!47308 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47308 a!2862) intermediateBeforeIndex!19) (select (arr!47308 a!2862) j!93))))))

(declare-fun b!1443716 () Bool)

(declare-fun res!975881 () Bool)

(assert (=> b!1443716 (=> (not res!975881) (not e!813537))))

(assert (=> b!1443716 (= res!975881 (= (seekEntryOrOpen!0 (select (arr!47308 a!2862) j!93) a!2862 mask!2687) (Found!11583 j!93)))))

(declare-fun b!1443717 () Bool)

(declare-fun res!975888 () Bool)

(assert (=> b!1443717 (=> (not res!975888) (not e!813539))))

(assert (=> b!1443717 (= res!975888 e!813540)))

(declare-fun c!133427 () Bool)

(assert (=> b!1443717 (= c!133427 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1443718 () Bool)

(declare-fun res!975880 () Bool)

(assert (=> b!1443718 (=> (not res!975880) (not e!813542))))

(assert (=> b!1443718 (= res!975880 (and (= (size!47859 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47859 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47859 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1443719 () Bool)

(declare-fun res!975887 () Bool)

(assert (=> b!1443719 (=> (not res!975887) (not e!813542))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1443719 (= res!975887 (validKeyInArray!0 (select (arr!47308 a!2862) j!93)))))

(declare-fun b!1443720 () Bool)

(assert (=> b!1443720 (= e!813541 e!813538)))

(declare-fun res!975882 () Bool)

(assert (=> b!1443720 (=> (not res!975882) (not e!813538))))

(declare-fun lt!633922 () SeekEntryResult!11583)

(assert (=> b!1443720 (= res!975882 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47308 a!2862) j!93) mask!2687) (select (arr!47308 a!2862) j!93) a!2862 mask!2687) lt!633922))))

(assert (=> b!1443720 (= lt!633922 (Intermediate!11583 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1443721 () Bool)

(declare-fun res!975891 () Bool)

(assert (=> b!1443721 (=> (not res!975891) (not e!813542))))

(assert (=> b!1443721 (= res!975891 (validKeyInArray!0 (select (arr!47308 a!2862) i!1006)))))

(declare-fun b!1443722 () Bool)

(declare-fun e!813535 () Bool)

(assert (=> b!1443722 (= e!813535 true)))

(declare-fun lt!633920 () SeekEntryResult!11583)

(assert (=> b!1443722 (= lt!633920 (seekEntryOrOpen!0 lt!633918 lt!633921 mask!2687))))

(declare-fun b!1443723 () Bool)

(assert (=> b!1443723 (= e!813539 (not e!813535))))

(declare-fun res!975885 () Bool)

(assert (=> b!1443723 (=> res!975885 e!813535)))

(assert (=> b!1443723 (= res!975885 (or (not (= (select (arr!47308 a!2862) index!646) (select (store (arr!47308 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47308 a!2862) index!646) (select (arr!47308 a!2862) j!93)))))))

(assert (=> b!1443723 e!813537))

(declare-fun res!975892 () Bool)

(assert (=> b!1443723 (=> (not res!975892) (not e!813537))))

(assert (=> b!1443723 (= res!975892 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48610 0))(
  ( (Unit!48611) )
))
(declare-fun lt!633919 () Unit!48610)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98049 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48610)

(assert (=> b!1443723 (= lt!633919 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1443724 () Bool)

(declare-fun res!975889 () Bool)

(assert (=> b!1443724 (=> (not res!975889) (not e!813538))))

(assert (=> b!1443724 (= res!975889 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47308 a!2862) j!93) a!2862 mask!2687) lt!633922))))

(assert (= (and start!124684 res!975894) b!1443718))

(assert (= (and b!1443718 res!975880) b!1443721))

(assert (= (and b!1443721 res!975891) b!1443719))

(assert (= (and b!1443719 res!975887) b!1443714))

(assert (= (and b!1443714 res!975883) b!1443710))

(assert (= (and b!1443710 res!975884) b!1443707))

(assert (= (and b!1443707 res!975890) b!1443709))

(assert (= (and b!1443709 res!975893) b!1443720))

(assert (= (and b!1443720 res!975882) b!1443724))

(assert (= (and b!1443724 res!975889) b!1443713))

(assert (= (and b!1443713 res!975886) b!1443717))

(assert (= (and b!1443717 c!133427) b!1443712))

(assert (= (and b!1443717 (not c!133427)) b!1443708))

(assert (= (and b!1443717 res!975888) b!1443711))

(assert (= (and b!1443711 res!975879) b!1443723))

(assert (= (and b!1443723 res!975892) b!1443716))

(assert (= (and b!1443716 res!975881) b!1443715))

(assert (= (and b!1443723 (not res!975885)) b!1443722))

(declare-fun m!1332825 () Bool)

(assert (=> b!1443712 m!1332825))

(declare-fun m!1332827 () Bool)

(assert (=> b!1443720 m!1332827))

(assert (=> b!1443720 m!1332827))

(declare-fun m!1332829 () Bool)

(assert (=> b!1443720 m!1332829))

(assert (=> b!1443720 m!1332829))

(assert (=> b!1443720 m!1332827))

(declare-fun m!1332831 () Bool)

(assert (=> b!1443720 m!1332831))

(declare-fun m!1332833 () Bool)

(assert (=> b!1443713 m!1332833))

(assert (=> b!1443713 m!1332833))

(declare-fun m!1332835 () Bool)

(assert (=> b!1443713 m!1332835))

(declare-fun m!1332837 () Bool)

(assert (=> b!1443713 m!1332837))

(declare-fun m!1332839 () Bool)

(assert (=> b!1443713 m!1332839))

(declare-fun m!1332841 () Bool)

(assert (=> b!1443714 m!1332841))

(declare-fun m!1332843 () Bool)

(assert (=> b!1443708 m!1332843))

(declare-fun m!1332845 () Bool)

(assert (=> b!1443708 m!1332845))

(assert (=> b!1443722 m!1332845))

(declare-fun m!1332847 () Bool)

(assert (=> start!124684 m!1332847))

(declare-fun m!1332849 () Bool)

(assert (=> start!124684 m!1332849))

(declare-fun m!1332851 () Bool)

(assert (=> b!1443715 m!1332851))

(assert (=> b!1443715 m!1332827))

(assert (=> b!1443719 m!1332827))

(assert (=> b!1443719 m!1332827))

(declare-fun m!1332853 () Bool)

(assert (=> b!1443719 m!1332853))

(assert (=> b!1443709 m!1332837))

(declare-fun m!1332855 () Bool)

(assert (=> b!1443709 m!1332855))

(declare-fun m!1332857 () Bool)

(assert (=> b!1443723 m!1332857))

(assert (=> b!1443723 m!1332837))

(declare-fun m!1332859 () Bool)

(assert (=> b!1443723 m!1332859))

(declare-fun m!1332861 () Bool)

(assert (=> b!1443723 m!1332861))

(declare-fun m!1332863 () Bool)

(assert (=> b!1443723 m!1332863))

(assert (=> b!1443723 m!1332827))

(assert (=> b!1443724 m!1332827))

(assert (=> b!1443724 m!1332827))

(declare-fun m!1332865 () Bool)

(assert (=> b!1443724 m!1332865))

(declare-fun m!1332867 () Bool)

(assert (=> b!1443721 m!1332867))

(assert (=> b!1443721 m!1332867))

(declare-fun m!1332869 () Bool)

(assert (=> b!1443721 m!1332869))

(assert (=> b!1443716 m!1332827))

(assert (=> b!1443716 m!1332827))

(declare-fun m!1332871 () Bool)

(assert (=> b!1443716 m!1332871))

(declare-fun m!1332873 () Bool)

(assert (=> b!1443710 m!1332873))

(push 1)

