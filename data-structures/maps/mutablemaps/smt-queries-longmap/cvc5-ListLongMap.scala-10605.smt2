; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124810 () Bool)

(assert start!124810)

(declare-fun b!1447030 () Bool)

(declare-fun res!978830 () Bool)

(declare-fun e!815005 () Bool)

(assert (=> b!1447030 (=> (not res!978830) (not e!815005))))

(declare-datatypes ((array!98175 0))(
  ( (array!98176 (arr!47371 (Array (_ BitVec 32) (_ BitVec 64))) (size!47922 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98175)

(declare-datatypes ((List!34052 0))(
  ( (Nil!34049) (Cons!34048 (h!35398 (_ BitVec 64)) (t!48753 List!34052)) )
))
(declare-fun arrayNoDuplicates!0 (array!98175 (_ BitVec 32) List!34052) Bool)

(assert (=> b!1447030 (= res!978830 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34049))))

(declare-fun b!1447031 () Bool)

(declare-fun e!815001 () Bool)

(declare-fun e!815006 () Bool)

(assert (=> b!1447031 (= e!815001 e!815006)))

(declare-fun res!978839 () Bool)

(assert (=> b!1447031 (=> res!978839 e!815006)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1447031 (= res!978839 (or (and (= (select (arr!47371 a!2862) index!646) (select (store (arr!47371 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47371 a!2862) index!646) (select (arr!47371 a!2862) j!93))) (not (= (select (arr!47371 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1447032 () Bool)

(declare-fun e!814997 () Bool)

(declare-fun e!815002 () Bool)

(assert (=> b!1447032 (= e!814997 (not e!815002))))

(declare-fun res!978840 () Bool)

(assert (=> b!1447032 (=> res!978840 e!815002)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1447032 (= res!978840 (or (and (= (select (arr!47371 a!2862) index!646) (select (store (arr!47371 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47371 a!2862) index!646) (select (arr!47371 a!2862) j!93))) (not (= (select (arr!47371 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47371 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1447032 e!815001))

(declare-fun res!978831 () Bool)

(assert (=> b!1447032 (=> (not res!978831) (not e!815001))))

(declare-datatypes ((SeekEntryResult!11646 0))(
  ( (MissingZero!11646 (index!48975 (_ BitVec 32))) (Found!11646 (index!48976 (_ BitVec 32))) (Intermediate!11646 (undefined!12458 Bool) (index!48977 (_ BitVec 32)) (x!130658 (_ BitVec 32))) (Undefined!11646) (MissingVacant!11646 (index!48978 (_ BitVec 32))) )
))
(declare-fun lt!634984 () SeekEntryResult!11646)

(assert (=> b!1447032 (= res!978831 (and (= lt!634984 (Found!11646 j!93)) (or (= (select (arr!47371 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47371 a!2862) intermediateBeforeIndex!19) (select (arr!47371 a!2862) j!93)))))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98175 (_ BitVec 32)) SeekEntryResult!11646)

(assert (=> b!1447032 (= lt!634984 (seekEntryOrOpen!0 (select (arr!47371 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98175 (_ BitVec 32)) Bool)

(assert (=> b!1447032 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48736 0))(
  ( (Unit!48737) )
))
(declare-fun lt!634982 () Unit!48736)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98175 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48736)

(assert (=> b!1447032 (= lt!634982 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun b!1447033 () Bool)

(declare-fun e!815003 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1447033 (= e!815003 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1447034 () Bool)

(declare-fun res!978829 () Bool)

(assert (=> b!1447034 (=> (not res!978829) (not e!814997))))

(declare-fun e!815000 () Bool)

(assert (=> b!1447034 (= res!978829 e!815000)))

(declare-fun c!133616 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1447034 (= c!133616 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1447035 () Bool)

(declare-fun res!978833 () Bool)

(assert (=> b!1447035 (=> (not res!978833) (not e!815005))))

(assert (=> b!1447035 (= res!978833 (and (= (size!47922 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47922 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47922 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1447037 () Bool)

(declare-fun res!978835 () Bool)

(declare-fun e!814998 () Bool)

(assert (=> b!1447037 (=> (not res!978835) (not e!814998))))

(declare-fun lt!634983 () SeekEntryResult!11646)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98175 (_ BitVec 32)) SeekEntryResult!11646)

(assert (=> b!1447037 (= res!978835 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47371 a!2862) j!93) a!2862 mask!2687) lt!634983))))

(declare-fun b!1447038 () Bool)

(declare-fun res!978828 () Bool)

(assert (=> b!1447038 (=> (not res!978828) (not e!815005))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1447038 (= res!978828 (validKeyInArray!0 (select (arr!47371 a!2862) i!1006)))))

(declare-fun lt!634986 () (_ BitVec 64))

(declare-fun b!1447039 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!634981 () array!98175)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98175 (_ BitVec 32)) SeekEntryResult!11646)

(assert (=> b!1447039 (= e!815000 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634986 lt!634981 mask!2687) (seekEntryOrOpen!0 lt!634986 lt!634981 mask!2687)))))

(declare-fun b!1447040 () Bool)

(assert (=> b!1447040 (= e!814998 e!814997)))

(declare-fun res!978824 () Bool)

(assert (=> b!1447040 (=> (not res!978824) (not e!814997))))

(declare-fun lt!634985 () SeekEntryResult!11646)

(assert (=> b!1447040 (= res!978824 (= lt!634985 (Intermediate!11646 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1447040 (= lt!634985 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634986 mask!2687) lt!634986 lt!634981 mask!2687))))

(assert (=> b!1447040 (= lt!634986 (select (store (arr!47371 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1447041 () Bool)

(declare-fun res!978834 () Bool)

(assert (=> b!1447041 (=> (not res!978834) (not e!815005))))

(assert (=> b!1447041 (= res!978834 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1447042 () Bool)

(declare-fun res!978838 () Bool)

(assert (=> b!1447042 (=> (not res!978838) (not e!815005))))

(assert (=> b!1447042 (= res!978838 (validKeyInArray!0 (select (arr!47371 a!2862) j!93)))))

(declare-fun b!1447043 () Bool)

(declare-fun e!814999 () Bool)

(assert (=> b!1447043 (= e!814999 e!814998)))

(declare-fun res!978836 () Bool)

(assert (=> b!1447043 (=> (not res!978836) (not e!814998))))

(assert (=> b!1447043 (= res!978836 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47371 a!2862) j!93) mask!2687) (select (arr!47371 a!2862) j!93) a!2862 mask!2687) lt!634983))))

(assert (=> b!1447043 (= lt!634983 (Intermediate!11646 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1447036 () Bool)

(assert (=> b!1447036 (= e!815002 true)))

(declare-fun lt!634987 () SeekEntryResult!11646)

(assert (=> b!1447036 (= lt!634987 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47371 a!2862) j!93) a!2862 mask!2687))))

(declare-fun res!978827 () Bool)

(assert (=> start!124810 (=> (not res!978827) (not e!815005))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124810 (= res!978827 (validMask!0 mask!2687))))

(assert (=> start!124810 e!815005))

(assert (=> start!124810 true))

(declare-fun array_inv!36316 (array!98175) Bool)

(assert (=> start!124810 (array_inv!36316 a!2862)))

(declare-fun b!1447044 () Bool)

(assert (=> b!1447044 (= e!815005 e!814999)))

(declare-fun res!978826 () Bool)

(assert (=> b!1447044 (=> (not res!978826) (not e!814999))))

(assert (=> b!1447044 (= res!978826 (= (select (store (arr!47371 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1447044 (= lt!634981 (array!98176 (store (arr!47371 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47922 a!2862)))))

(declare-fun b!1447045 () Bool)

(assert (=> b!1447045 (= e!815000 (= lt!634985 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634986 lt!634981 mask!2687)))))

(declare-fun b!1447046 () Bool)

(declare-fun res!978832 () Bool)

(assert (=> b!1447046 (=> (not res!978832) (not e!815005))))

(assert (=> b!1447046 (= res!978832 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47922 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47922 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47922 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1447047 () Bool)

(assert (=> b!1447047 (= e!815006 e!815003)))

(declare-fun res!978825 () Bool)

(assert (=> b!1447047 (=> (not res!978825) (not e!815003))))

(assert (=> b!1447047 (= res!978825 (= lt!634984 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47371 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1447048 () Bool)

(declare-fun res!978837 () Bool)

(assert (=> b!1447048 (=> (not res!978837) (not e!814997))))

(assert (=> b!1447048 (= res!978837 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!124810 res!978827) b!1447035))

(assert (= (and b!1447035 res!978833) b!1447038))

(assert (= (and b!1447038 res!978828) b!1447042))

(assert (= (and b!1447042 res!978838) b!1447041))

(assert (= (and b!1447041 res!978834) b!1447030))

(assert (= (and b!1447030 res!978830) b!1447046))

(assert (= (and b!1447046 res!978832) b!1447044))

(assert (= (and b!1447044 res!978826) b!1447043))

(assert (= (and b!1447043 res!978836) b!1447037))

(assert (= (and b!1447037 res!978835) b!1447040))

(assert (= (and b!1447040 res!978824) b!1447034))

(assert (= (and b!1447034 c!133616) b!1447045))

(assert (= (and b!1447034 (not c!133616)) b!1447039))

(assert (= (and b!1447034 res!978829) b!1447048))

(assert (= (and b!1447048 res!978837) b!1447032))

(assert (= (and b!1447032 res!978831) b!1447031))

(assert (= (and b!1447031 (not res!978839)) b!1447047))

(assert (= (and b!1447047 res!978825) b!1447033))

(assert (= (and b!1447032 (not res!978840)) b!1447036))

(declare-fun m!1335921 () Bool)

(assert (=> b!1447038 m!1335921))

(assert (=> b!1447038 m!1335921))

(declare-fun m!1335923 () Bool)

(assert (=> b!1447038 m!1335923))

(declare-fun m!1335925 () Bool)

(assert (=> b!1447036 m!1335925))

(assert (=> b!1447036 m!1335925))

(declare-fun m!1335927 () Bool)

(assert (=> b!1447036 m!1335927))

(declare-fun m!1335929 () Bool)

(assert (=> b!1447045 m!1335929))

(declare-fun m!1335931 () Bool)

(assert (=> b!1447041 m!1335931))

(declare-fun m!1335933 () Bool)

(assert (=> b!1447039 m!1335933))

(declare-fun m!1335935 () Bool)

(assert (=> b!1447039 m!1335935))

(declare-fun m!1335937 () Bool)

(assert (=> b!1447044 m!1335937))

(declare-fun m!1335939 () Bool)

(assert (=> b!1447044 m!1335939))

(declare-fun m!1335941 () Bool)

(assert (=> start!124810 m!1335941))

(declare-fun m!1335943 () Bool)

(assert (=> start!124810 m!1335943))

(assert (=> b!1447037 m!1335925))

(assert (=> b!1447037 m!1335925))

(declare-fun m!1335945 () Bool)

(assert (=> b!1447037 m!1335945))

(assert (=> b!1447047 m!1335925))

(assert (=> b!1447047 m!1335925))

(declare-fun m!1335947 () Bool)

(assert (=> b!1447047 m!1335947))

(assert (=> b!1447043 m!1335925))

(assert (=> b!1447043 m!1335925))

(declare-fun m!1335949 () Bool)

(assert (=> b!1447043 m!1335949))

(assert (=> b!1447043 m!1335949))

(assert (=> b!1447043 m!1335925))

(declare-fun m!1335951 () Bool)

(assert (=> b!1447043 m!1335951))

(declare-fun m!1335953 () Bool)

(assert (=> b!1447032 m!1335953))

(assert (=> b!1447032 m!1335937))

(declare-fun m!1335955 () Bool)

(assert (=> b!1447032 m!1335955))

(declare-fun m!1335957 () Bool)

(assert (=> b!1447032 m!1335957))

(declare-fun m!1335959 () Bool)

(assert (=> b!1447032 m!1335959))

(assert (=> b!1447032 m!1335925))

(declare-fun m!1335961 () Bool)

(assert (=> b!1447032 m!1335961))

(declare-fun m!1335963 () Bool)

(assert (=> b!1447032 m!1335963))

(assert (=> b!1447032 m!1335925))

(assert (=> b!1447031 m!1335959))

(assert (=> b!1447031 m!1335937))

(assert (=> b!1447031 m!1335957))

(assert (=> b!1447031 m!1335925))

(declare-fun m!1335965 () Bool)

(assert (=> b!1447040 m!1335965))

(assert (=> b!1447040 m!1335965))

(declare-fun m!1335967 () Bool)

(assert (=> b!1447040 m!1335967))

(assert (=> b!1447040 m!1335937))

(declare-fun m!1335969 () Bool)

(assert (=> b!1447040 m!1335969))

(assert (=> b!1447042 m!1335925))

(assert (=> b!1447042 m!1335925))

(declare-fun m!1335971 () Bool)

(assert (=> b!1447042 m!1335971))

(declare-fun m!1335973 () Bool)

(assert (=> b!1447030 m!1335973))

(push 1)

