; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124650 () Bool)

(assert start!124650)

(declare-fun b!1442811 () Bool)

(declare-fun res!975090 () Bool)

(declare-fun e!813155 () Bool)

(assert (=> b!1442811 (=> (not res!975090) (not e!813155))))

(declare-datatypes ((SeekEntryResult!11566 0))(
  ( (MissingZero!11566 (index!48655 (_ BitVec 32))) (Found!11566 (index!48656 (_ BitVec 32))) (Intermediate!11566 (undefined!12378 Bool) (index!48657 (_ BitVec 32)) (x!130362 (_ BitVec 32))) (Undefined!11566) (MissingVacant!11566 (index!48658 (_ BitVec 32))) )
))
(declare-fun lt!633637 () SeekEntryResult!11566)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98015 0))(
  ( (array!98016 (arr!47291 (Array (_ BitVec 32) (_ BitVec 64))) (size!47842 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98015)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98015 (_ BitVec 32)) SeekEntryResult!11566)

(assert (=> b!1442811 (= res!975090 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47291 a!2862) j!93) a!2862 mask!2687) lt!633637))))

(declare-fun b!1442812 () Bool)

(declare-fun res!975086 () Bool)

(declare-fun e!813149 () Bool)

(assert (=> b!1442812 (=> (not res!975086) (not e!813149))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1442812 (= res!975086 (and (= (size!47842 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47842 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47842 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1442813 () Bool)

(declare-fun res!975094 () Bool)

(assert (=> b!1442813 (=> (not res!975094) (not e!813149))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98015 (_ BitVec 32)) Bool)

(assert (=> b!1442813 (= res!975094 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1442814 () Bool)

(declare-fun e!813154 () Bool)

(assert (=> b!1442814 (= e!813149 e!813154)))

(declare-fun res!975095 () Bool)

(assert (=> b!1442814 (=> (not res!975095) (not e!813154))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1442814 (= res!975095 (= (select (store (arr!47291 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!633634 () array!98015)

(assert (=> b!1442814 (= lt!633634 (array!98016 (store (arr!47291 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47842 a!2862)))))

(declare-fun b!1442815 () Bool)

(declare-fun res!975098 () Bool)

(declare-fun e!813152 () Bool)

(assert (=> b!1442815 (=> (not res!975098) (not e!813152))))

(declare-fun e!813151 () Bool)

(assert (=> b!1442815 (= res!975098 e!813151)))

(declare-fun c!133376 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1442815 (= c!133376 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1442816 () Bool)

(declare-fun lt!633635 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98015 (_ BitVec 32)) SeekEntryResult!11566)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98015 (_ BitVec 32)) SeekEntryResult!11566)

(assert (=> b!1442816 (= e!813151 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633635 lt!633634 mask!2687) (seekEntryOrOpen!0 lt!633635 lt!633634 mask!2687)))))

(declare-fun b!1442817 () Bool)

(assert (=> b!1442817 (= e!813154 e!813155)))

(declare-fun res!975097 () Bool)

(assert (=> b!1442817 (=> (not res!975097) (not e!813155))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1442817 (= res!975097 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47291 a!2862) j!93) mask!2687) (select (arr!47291 a!2862) j!93) a!2862 mask!2687) lt!633637))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1442817 (= lt!633637 (Intermediate!11566 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1442818 () Bool)

(declare-fun res!975096 () Bool)

(declare-fun e!813150 () Bool)

(assert (=> b!1442818 (=> (not res!975096) (not e!813150))))

(assert (=> b!1442818 (= res!975096 (= (seekEntryOrOpen!0 (select (arr!47291 a!2862) j!93) a!2862 mask!2687) (Found!11566 j!93)))))

(declare-fun res!975088 () Bool)

(assert (=> start!124650 (=> (not res!975088) (not e!813149))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124650 (= res!975088 (validMask!0 mask!2687))))

(assert (=> start!124650 e!813149))

(assert (=> start!124650 true))

(declare-fun array_inv!36236 (array!98015) Bool)

(assert (=> start!124650 (array_inv!36236 a!2862)))

(declare-fun b!1442819 () Bool)

(assert (=> b!1442819 (= e!813152 (not (or (not (= (select (arr!47291 a!2862) index!646) (select (store (arr!47291 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47291 a!2862) index!646) (select (arr!47291 a!2862) j!93))) (bvsge mask!2687 #b00000000000000000000000000000000))))))

(assert (=> b!1442819 e!813150))

(declare-fun res!975093 () Bool)

(assert (=> b!1442819 (=> (not res!975093) (not e!813150))))

(assert (=> b!1442819 (= res!975093 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48576 0))(
  ( (Unit!48577) )
))
(declare-fun lt!633633 () Unit!48576)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98015 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48576)

(assert (=> b!1442819 (= lt!633633 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1442820 () Bool)

(declare-fun res!975099 () Bool)

(assert (=> b!1442820 (=> (not res!975099) (not e!813149))))

(assert (=> b!1442820 (= res!975099 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47842 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47842 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47842 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1442821 () Bool)

(assert (=> b!1442821 (= e!813150 (or (= (select (arr!47291 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47291 a!2862) intermediateBeforeIndex!19) (select (arr!47291 a!2862) j!93))))))

(declare-fun b!1442822 () Bool)

(declare-fun res!975091 () Bool)

(assert (=> b!1442822 (=> (not res!975091) (not e!813149))))

(declare-datatypes ((List!33972 0))(
  ( (Nil!33969) (Cons!33968 (h!35318 (_ BitVec 64)) (t!48673 List!33972)) )
))
(declare-fun arrayNoDuplicates!0 (array!98015 (_ BitVec 32) List!33972) Bool)

(assert (=> b!1442822 (= res!975091 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33969))))

(declare-fun b!1442823 () Bool)

(assert (=> b!1442823 (= e!813155 e!813152)))

(declare-fun res!975087 () Bool)

(assert (=> b!1442823 (=> (not res!975087) (not e!813152))))

(declare-fun lt!633636 () SeekEntryResult!11566)

(assert (=> b!1442823 (= res!975087 (= lt!633636 (Intermediate!11566 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1442823 (= lt!633636 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633635 mask!2687) lt!633635 lt!633634 mask!2687))))

(assert (=> b!1442823 (= lt!633635 (select (store (arr!47291 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1442824 () Bool)

(declare-fun res!975089 () Bool)

(assert (=> b!1442824 (=> (not res!975089) (not e!813149))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1442824 (= res!975089 (validKeyInArray!0 (select (arr!47291 a!2862) j!93)))))

(declare-fun b!1442825 () Bool)

(declare-fun res!975085 () Bool)

(assert (=> b!1442825 (=> (not res!975085) (not e!813152))))

(assert (=> b!1442825 (= res!975085 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1442826 () Bool)

(assert (=> b!1442826 (= e!813151 (= lt!633636 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633635 lt!633634 mask!2687)))))

(declare-fun b!1442827 () Bool)

(declare-fun res!975092 () Bool)

(assert (=> b!1442827 (=> (not res!975092) (not e!813149))))

(assert (=> b!1442827 (= res!975092 (validKeyInArray!0 (select (arr!47291 a!2862) i!1006)))))

(assert (= (and start!124650 res!975088) b!1442812))

(assert (= (and b!1442812 res!975086) b!1442827))

(assert (= (and b!1442827 res!975092) b!1442824))

(assert (= (and b!1442824 res!975089) b!1442813))

(assert (= (and b!1442813 res!975094) b!1442822))

(assert (= (and b!1442822 res!975091) b!1442820))

(assert (= (and b!1442820 res!975099) b!1442814))

(assert (= (and b!1442814 res!975095) b!1442817))

(assert (= (and b!1442817 res!975097) b!1442811))

(assert (= (and b!1442811 res!975090) b!1442823))

(assert (= (and b!1442823 res!975087) b!1442815))

(assert (= (and b!1442815 c!133376) b!1442826))

(assert (= (and b!1442815 (not c!133376)) b!1442816))

(assert (= (and b!1442815 res!975098) b!1442825))

(assert (= (and b!1442825 res!975085) b!1442819))

(assert (= (and b!1442819 res!975093) b!1442818))

(assert (= (and b!1442818 res!975096) b!1442821))

(declare-fun m!1331981 () Bool)

(assert (=> b!1442822 m!1331981))

(declare-fun m!1331983 () Bool)

(assert (=> b!1442813 m!1331983))

(declare-fun m!1331985 () Bool)

(assert (=> b!1442818 m!1331985))

(assert (=> b!1442818 m!1331985))

(declare-fun m!1331987 () Bool)

(assert (=> b!1442818 m!1331987))

(declare-fun m!1331989 () Bool)

(assert (=> b!1442827 m!1331989))

(assert (=> b!1442827 m!1331989))

(declare-fun m!1331991 () Bool)

(assert (=> b!1442827 m!1331991))

(declare-fun m!1331993 () Bool)

(assert (=> b!1442816 m!1331993))

(declare-fun m!1331995 () Bool)

(assert (=> b!1442816 m!1331995))

(assert (=> b!1442817 m!1331985))

(assert (=> b!1442817 m!1331985))

(declare-fun m!1331997 () Bool)

(assert (=> b!1442817 m!1331997))

(assert (=> b!1442817 m!1331997))

(assert (=> b!1442817 m!1331985))

(declare-fun m!1331999 () Bool)

(assert (=> b!1442817 m!1331999))

(declare-fun m!1332001 () Bool)

(assert (=> b!1442823 m!1332001))

(assert (=> b!1442823 m!1332001))

(declare-fun m!1332003 () Bool)

(assert (=> b!1442823 m!1332003))

(declare-fun m!1332005 () Bool)

(assert (=> b!1442823 m!1332005))

(declare-fun m!1332007 () Bool)

(assert (=> b!1442823 m!1332007))

(assert (=> b!1442824 m!1331985))

(assert (=> b!1442824 m!1331985))

(declare-fun m!1332009 () Bool)

(assert (=> b!1442824 m!1332009))

(assert (=> b!1442811 m!1331985))

(assert (=> b!1442811 m!1331985))

(declare-fun m!1332011 () Bool)

(assert (=> b!1442811 m!1332011))

(declare-fun m!1332013 () Bool)

(assert (=> b!1442826 m!1332013))

(assert (=> b!1442814 m!1332005))

(declare-fun m!1332015 () Bool)

(assert (=> b!1442814 m!1332015))

(declare-fun m!1332017 () Bool)

(assert (=> b!1442821 m!1332017))

(assert (=> b!1442821 m!1331985))

(declare-fun m!1332019 () Bool)

(assert (=> b!1442819 m!1332019))

(assert (=> b!1442819 m!1332005))

(declare-fun m!1332021 () Bool)

(assert (=> b!1442819 m!1332021))

(declare-fun m!1332023 () Bool)

(assert (=> b!1442819 m!1332023))

(declare-fun m!1332025 () Bool)

(assert (=> b!1442819 m!1332025))

(assert (=> b!1442819 m!1331985))

(declare-fun m!1332027 () Bool)

(assert (=> start!124650 m!1332027))

(declare-fun m!1332029 () Bool)

(assert (=> start!124650 m!1332029))

(check-sat (not b!1442827) (not b!1442813) (not b!1442817) (not b!1442819) (not b!1442822) (not b!1442824) (not b!1442818) (not b!1442811) (not b!1442826) (not start!124650) (not b!1442823) (not b!1442816))
(check-sat)
