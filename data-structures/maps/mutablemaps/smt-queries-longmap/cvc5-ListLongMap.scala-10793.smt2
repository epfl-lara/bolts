; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126298 () Bool)

(assert start!126298)

(declare-fun b!1479873 () Bool)

(declare-fun e!830096 () Bool)

(declare-fun e!830099 () Bool)

(assert (=> b!1479873 (= e!830096 e!830099)))

(declare-fun res!1005841 () Bool)

(assert (=> b!1479873 (=> (not res!1005841) (not e!830099))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12198 0))(
  ( (MissingZero!12198 (index!51183 (_ BitVec 32))) (Found!12198 (index!51184 (_ BitVec 32))) (Intermediate!12198 (undefined!13010 Bool) (index!51185 (_ BitVec 32)) (x!132768 (_ BitVec 32))) (Undefined!12198) (MissingVacant!12198 (index!51186 (_ BitVec 32))) )
))
(declare-fun lt!646175 () SeekEntryResult!12198)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99321 0))(
  ( (array!99322 (arr!47935 (Array (_ BitVec 32) (_ BitVec 64))) (size!48486 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99321)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99321 (_ BitVec 32)) SeekEntryResult!12198)

(assert (=> b!1479873 (= res!1005841 (= lt!646175 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47935 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1479874 () Bool)

(declare-fun e!830090 () Bool)

(declare-fun e!830098 () Bool)

(assert (=> b!1479874 (= e!830090 (not e!830098))))

(declare-fun res!1005846 () Bool)

(assert (=> b!1479874 (=> res!1005846 e!830098)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1479874 (= res!1005846 (or (and (= (select (arr!47935 a!2862) index!646) (select (store (arr!47935 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47935 a!2862) index!646) (select (arr!47935 a!2862) j!93))) (not (= (select (arr!47935 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47935 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!830091 () Bool)

(assert (=> b!1479874 e!830091))

(declare-fun res!1005847 () Bool)

(assert (=> b!1479874 (=> (not res!1005847) (not e!830091))))

(declare-fun lt!646171 () SeekEntryResult!12198)

(assert (=> b!1479874 (= res!1005847 (and (= lt!646175 lt!646171) (or (= (select (arr!47935 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47935 a!2862) intermediateBeforeIndex!19) (select (arr!47935 a!2862) j!93)))))))

(assert (=> b!1479874 (= lt!646171 (Found!12198 j!93))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99321 (_ BitVec 32)) SeekEntryResult!12198)

(assert (=> b!1479874 (= lt!646175 (seekEntryOrOpen!0 (select (arr!47935 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99321 (_ BitVec 32)) Bool)

(assert (=> b!1479874 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49684 0))(
  ( (Unit!49685) )
))
(declare-fun lt!646172 () Unit!49684)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99321 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49684)

(assert (=> b!1479874 (= lt!646172 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1479875 () Bool)

(assert (=> b!1479875 (= e!830091 e!830096)))

(declare-fun res!1005844 () Bool)

(assert (=> b!1479875 (=> res!1005844 e!830096)))

(assert (=> b!1479875 (= res!1005844 (or (and (= (select (arr!47935 a!2862) index!646) (select (store (arr!47935 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47935 a!2862) index!646) (select (arr!47935 a!2862) j!93))) (not (= (select (arr!47935 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!646177 () SeekEntryResult!12198)

(declare-fun e!830095 () Bool)

(declare-fun lt!646170 () array!99321)

(declare-fun b!1479876 () Bool)

(declare-fun lt!646176 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99321 (_ BitVec 32)) SeekEntryResult!12198)

(assert (=> b!1479876 (= e!830095 (= lt!646177 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646176 lt!646170 mask!2687)))))

(declare-fun b!1479877 () Bool)

(declare-fun e!830097 () Bool)

(declare-fun e!830094 () Bool)

(assert (=> b!1479877 (= e!830097 e!830094)))

(declare-fun res!1005842 () Bool)

(assert (=> b!1479877 (=> (not res!1005842) (not e!830094))))

(declare-fun lt!646173 () SeekEntryResult!12198)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1479877 (= res!1005842 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47935 a!2862) j!93) mask!2687) (select (arr!47935 a!2862) j!93) a!2862 mask!2687) lt!646173))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1479877 (= lt!646173 (Intermediate!12198 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1479878 () Bool)

(declare-fun res!1005852 () Bool)

(assert (=> b!1479878 (=> (not res!1005852) (not e!830090))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1479878 (= res!1005852 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1479879 () Bool)

(declare-fun e!830092 () Bool)

(assert (=> b!1479879 (= e!830092 e!830097)))

(declare-fun res!1005851 () Bool)

(assert (=> b!1479879 (=> (not res!1005851) (not e!830097))))

(assert (=> b!1479879 (= res!1005851 (= (select (store (arr!47935 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1479879 (= lt!646170 (array!99322 (store (arr!47935 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48486 a!2862)))))

(declare-fun b!1479881 () Bool)

(declare-fun res!1005839 () Bool)

(assert (=> b!1479881 (=> (not res!1005839) (not e!830090))))

(assert (=> b!1479881 (= res!1005839 e!830095)))

(declare-fun c!136541 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1479881 (= c!136541 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1479882 () Bool)

(declare-fun res!1005835 () Bool)

(assert (=> b!1479882 (=> (not res!1005835) (not e!830092))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1479882 (= res!1005835 (validKeyInArray!0 (select (arr!47935 a!2862) i!1006)))))

(declare-fun b!1479883 () Bool)

(declare-fun res!1005845 () Bool)

(assert (=> b!1479883 (=> (not res!1005845) (not e!830092))))

(assert (=> b!1479883 (= res!1005845 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48486 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48486 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48486 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1479884 () Bool)

(assert (=> b!1479884 (= e!830095 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646176 lt!646170 mask!2687) (seekEntryOrOpen!0 lt!646176 lt!646170 mask!2687)))))

(declare-fun b!1479885 () Bool)

(assert (=> b!1479885 (= e!830099 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1479886 () Bool)

(declare-fun res!1005850 () Bool)

(assert (=> b!1479886 (=> (not res!1005850) (not e!830092))))

(assert (=> b!1479886 (= res!1005850 (and (= (size!48486 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48486 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48486 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1479887 () Bool)

(assert (=> b!1479887 (= e!830094 e!830090)))

(declare-fun res!1005849 () Bool)

(assert (=> b!1479887 (=> (not res!1005849) (not e!830090))))

(assert (=> b!1479887 (= res!1005849 (= lt!646177 (Intermediate!12198 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1479887 (= lt!646177 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646176 mask!2687) lt!646176 lt!646170 mask!2687))))

(assert (=> b!1479887 (= lt!646176 (select (store (arr!47935 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1479888 () Bool)

(declare-fun res!1005840 () Bool)

(assert (=> b!1479888 (=> res!1005840 e!830098)))

(assert (=> b!1479888 (= res!1005840 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47935 a!2862) j!93) a!2862 mask!2687) lt!646171)))))

(declare-fun b!1479889 () Bool)

(declare-fun res!1005843 () Bool)

(assert (=> b!1479889 (=> (not res!1005843) (not e!830092))))

(declare-datatypes ((List!34616 0))(
  ( (Nil!34613) (Cons!34612 (h!35980 (_ BitVec 64)) (t!49317 List!34616)) )
))
(declare-fun arrayNoDuplicates!0 (array!99321 (_ BitVec 32) List!34616) Bool)

(assert (=> b!1479889 (= res!1005843 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34613))))

(declare-fun b!1479890 () Bool)

(declare-fun res!1005848 () Bool)

(assert (=> b!1479890 (=> (not res!1005848) (not e!830094))))

(assert (=> b!1479890 (= res!1005848 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47935 a!2862) j!93) a!2862 mask!2687) lt!646173))))

(declare-fun res!1005837 () Bool)

(assert (=> start!126298 (=> (not res!1005837) (not e!830092))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126298 (= res!1005837 (validMask!0 mask!2687))))

(assert (=> start!126298 e!830092))

(assert (=> start!126298 true))

(declare-fun array_inv!36880 (array!99321) Bool)

(assert (=> start!126298 (array_inv!36880 a!2862)))

(declare-fun b!1479880 () Bool)

(declare-fun res!1005838 () Bool)

(assert (=> b!1479880 (=> (not res!1005838) (not e!830092))))

(assert (=> b!1479880 (= res!1005838 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1479891 () Bool)

(declare-fun res!1005836 () Bool)

(assert (=> b!1479891 (=> (not res!1005836) (not e!830092))))

(assert (=> b!1479891 (= res!1005836 (validKeyInArray!0 (select (arr!47935 a!2862) j!93)))))

(declare-fun b!1479892 () Bool)

(assert (=> b!1479892 (= e!830098 true)))

(assert (=> b!1479892 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646176 lt!646170 mask!2687) lt!646171)))

(declare-fun lt!646174 () Unit!49684)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!99321 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49684)

(assert (=> b!1479892 (= lt!646174 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(assert (= (and start!126298 res!1005837) b!1479886))

(assert (= (and b!1479886 res!1005850) b!1479882))

(assert (= (and b!1479882 res!1005835) b!1479891))

(assert (= (and b!1479891 res!1005836) b!1479880))

(assert (= (and b!1479880 res!1005838) b!1479889))

(assert (= (and b!1479889 res!1005843) b!1479883))

(assert (= (and b!1479883 res!1005845) b!1479879))

(assert (= (and b!1479879 res!1005851) b!1479877))

(assert (= (and b!1479877 res!1005842) b!1479890))

(assert (= (and b!1479890 res!1005848) b!1479887))

(assert (= (and b!1479887 res!1005849) b!1479881))

(assert (= (and b!1479881 c!136541) b!1479876))

(assert (= (and b!1479881 (not c!136541)) b!1479884))

(assert (= (and b!1479881 res!1005839) b!1479878))

(assert (= (and b!1479878 res!1005852) b!1479874))

(assert (= (and b!1479874 res!1005847) b!1479875))

(assert (= (and b!1479875 (not res!1005844)) b!1479873))

(assert (= (and b!1479873 res!1005841) b!1479885))

(assert (= (and b!1479874 (not res!1005846)) b!1479888))

(assert (= (and b!1479888 (not res!1005840)) b!1479892))

(declare-fun m!1365765 () Bool)

(assert (=> b!1479891 m!1365765))

(assert (=> b!1479891 m!1365765))

(declare-fun m!1365767 () Bool)

(assert (=> b!1479891 m!1365767))

(declare-fun m!1365769 () Bool)

(assert (=> b!1479875 m!1365769))

(declare-fun m!1365771 () Bool)

(assert (=> b!1479875 m!1365771))

(declare-fun m!1365773 () Bool)

(assert (=> b!1479875 m!1365773))

(assert (=> b!1479875 m!1365765))

(declare-fun m!1365775 () Bool)

(assert (=> b!1479892 m!1365775))

(declare-fun m!1365777 () Bool)

(assert (=> b!1479892 m!1365777))

(declare-fun m!1365779 () Bool)

(assert (=> b!1479876 m!1365779))

(assert (=> b!1479890 m!1365765))

(assert (=> b!1479890 m!1365765))

(declare-fun m!1365781 () Bool)

(assert (=> b!1479890 m!1365781))

(declare-fun m!1365783 () Bool)

(assert (=> b!1479880 m!1365783))

(assert (=> b!1479884 m!1365775))

(declare-fun m!1365785 () Bool)

(assert (=> b!1479884 m!1365785))

(assert (=> b!1479877 m!1365765))

(assert (=> b!1479877 m!1365765))

(declare-fun m!1365787 () Bool)

(assert (=> b!1479877 m!1365787))

(assert (=> b!1479877 m!1365787))

(assert (=> b!1479877 m!1365765))

(declare-fun m!1365789 () Bool)

(assert (=> b!1479877 m!1365789))

(assert (=> b!1479888 m!1365765))

(assert (=> b!1479888 m!1365765))

(declare-fun m!1365791 () Bool)

(assert (=> b!1479888 m!1365791))

(declare-fun m!1365793 () Bool)

(assert (=> b!1479874 m!1365793))

(assert (=> b!1479874 m!1365771))

(declare-fun m!1365795 () Bool)

(assert (=> b!1479874 m!1365795))

(assert (=> b!1479874 m!1365773))

(assert (=> b!1479874 m!1365769))

(assert (=> b!1479874 m!1365765))

(declare-fun m!1365797 () Bool)

(assert (=> b!1479874 m!1365797))

(declare-fun m!1365799 () Bool)

(assert (=> b!1479874 m!1365799))

(assert (=> b!1479874 m!1365765))

(assert (=> b!1479873 m!1365765))

(assert (=> b!1479873 m!1365765))

(declare-fun m!1365801 () Bool)

(assert (=> b!1479873 m!1365801))

(declare-fun m!1365803 () Bool)

(assert (=> b!1479882 m!1365803))

(assert (=> b!1479882 m!1365803))

(declare-fun m!1365805 () Bool)

(assert (=> b!1479882 m!1365805))

(declare-fun m!1365807 () Bool)

(assert (=> b!1479887 m!1365807))

(assert (=> b!1479887 m!1365807))

(declare-fun m!1365809 () Bool)

(assert (=> b!1479887 m!1365809))

(assert (=> b!1479887 m!1365771))

(declare-fun m!1365811 () Bool)

(assert (=> b!1479887 m!1365811))

(declare-fun m!1365813 () Bool)

(assert (=> b!1479889 m!1365813))

(declare-fun m!1365815 () Bool)

(assert (=> start!126298 m!1365815))

(declare-fun m!1365817 () Bool)

(assert (=> start!126298 m!1365817))

(assert (=> b!1479879 m!1365771))

(declare-fun m!1365819 () Bool)

(assert (=> b!1479879 m!1365819))

(push 1)

