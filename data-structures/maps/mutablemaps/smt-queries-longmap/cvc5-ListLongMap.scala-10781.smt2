; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126226 () Bool)

(assert start!126226)

(declare-fun b!1477862 () Bool)

(declare-fun e!829081 () Bool)

(declare-fun e!829082 () Bool)

(assert (=> b!1477862 (= e!829081 e!829082)))

(declare-fun res!1004045 () Bool)

(assert (=> b!1477862 (=> (not res!1004045) (not e!829082))))

(declare-datatypes ((SeekEntryResult!12162 0))(
  ( (MissingZero!12162 (index!51039 (_ BitVec 32))) (Found!12162 (index!51040 (_ BitVec 32))) (Intermediate!12162 (undefined!12974 Bool) (index!51041 (_ BitVec 32)) (x!132636 (_ BitVec 32))) (Undefined!12162) (MissingVacant!12162 (index!51042 (_ BitVec 32))) )
))
(declare-fun lt!645460 () SeekEntryResult!12162)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1477862 (= res!1004045 (= lt!645460 (Intermediate!12162 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!645457 () (_ BitVec 64))

(declare-datatypes ((array!99249 0))(
  ( (array!99250 (arr!47899 (Array (_ BitVec 32) (_ BitVec 64))) (size!48450 (_ BitVec 32))) )
))
(declare-fun lt!645458 () array!99249)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99249 (_ BitVec 32)) SeekEntryResult!12162)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1477862 (= lt!645460 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645457 mask!2687) lt!645457 lt!645458 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99249)

(assert (=> b!1477862 (= lt!645457 (select (store (arr!47899 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1477863 () Bool)

(declare-fun res!1004046 () Bool)

(declare-fun e!829088 () Bool)

(assert (=> b!1477863 (=> (not res!1004046) (not e!829088))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1477863 (= res!1004046 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48450 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48450 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48450 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1477864 () Bool)

(declare-fun e!829086 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99249 (_ BitVec 32)) SeekEntryResult!12162)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99249 (_ BitVec 32)) SeekEntryResult!12162)

(assert (=> b!1477864 (= e!829086 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645457 lt!645458 mask!2687) (seekEntryOrOpen!0 lt!645457 lt!645458 mask!2687)))))

(declare-fun b!1477865 () Bool)

(declare-fun res!1004055 () Bool)

(assert (=> b!1477865 (=> (not res!1004055) (not e!829088))))

(declare-datatypes ((List!34580 0))(
  ( (Nil!34577) (Cons!34576 (h!35944 (_ BitVec 64)) (t!49281 List!34580)) )
))
(declare-fun arrayNoDuplicates!0 (array!99249 (_ BitVec 32) List!34580) Bool)

(assert (=> b!1477865 (= res!1004055 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34577))))

(declare-fun b!1477866 () Bool)

(assert (=> b!1477866 (= e!829086 (= lt!645460 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645457 lt!645458 mask!2687)))))

(declare-fun e!829084 () Bool)

(declare-fun b!1477867 () Bool)

(assert (=> b!1477867 (= e!829084 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1477868 () Bool)

(declare-fun res!1004040 () Bool)

(assert (=> b!1477868 (=> (not res!1004040) (not e!829088))))

(assert (=> b!1477868 (= res!1004040 (and (= (size!48450 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48450 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48450 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1477870 () Bool)

(declare-fun e!829083 () Bool)

(assert (=> b!1477870 (= e!829083 e!829081)))

(declare-fun res!1004052 () Bool)

(assert (=> b!1477870 (=> (not res!1004052) (not e!829081))))

(declare-fun lt!645456 () SeekEntryResult!12162)

(assert (=> b!1477870 (= res!1004052 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47899 a!2862) j!93) mask!2687) (select (arr!47899 a!2862) j!93) a!2862 mask!2687) lt!645456))))

(assert (=> b!1477870 (= lt!645456 (Intermediate!12162 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1477871 () Bool)

(declare-fun e!829085 () Bool)

(assert (=> b!1477871 (= e!829085 e!829084)))

(declare-fun res!1004047 () Bool)

(assert (=> b!1477871 (=> (not res!1004047) (not e!829084))))

(declare-fun lt!645455 () SeekEntryResult!12162)

(assert (=> b!1477871 (= res!1004047 (= lt!645455 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47899 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1477872 () Bool)

(declare-fun res!1004043 () Bool)

(assert (=> b!1477872 (=> (not res!1004043) (not e!829082))))

(assert (=> b!1477872 (= res!1004043 e!829086)))

(declare-fun c!136433 () Bool)

(assert (=> b!1477872 (= c!136433 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!1004051 () Bool)

(assert (=> start!126226 (=> (not res!1004051) (not e!829088))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126226 (= res!1004051 (validMask!0 mask!2687))))

(assert (=> start!126226 e!829088))

(assert (=> start!126226 true))

(declare-fun array_inv!36844 (array!99249) Bool)

(assert (=> start!126226 (array_inv!36844 a!2862)))

(declare-fun b!1477869 () Bool)

(declare-fun e!829087 () Bool)

(assert (=> b!1477869 (= e!829087 e!829085)))

(declare-fun res!1004049 () Bool)

(assert (=> b!1477869 (=> res!1004049 e!829085)))

(assert (=> b!1477869 (= res!1004049 (or (and (= (select (arr!47899 a!2862) index!646) (select (store (arr!47899 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47899 a!2862) index!646) (select (arr!47899 a!2862) j!93))) (not (= (select (arr!47899 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1477873 () Bool)

(assert (=> b!1477873 (= e!829082 (not true))))

(assert (=> b!1477873 e!829087))

(declare-fun res!1004054 () Bool)

(assert (=> b!1477873 (=> (not res!1004054) (not e!829087))))

(assert (=> b!1477873 (= res!1004054 (and (= lt!645455 (Found!12162 j!93)) (or (= (select (arr!47899 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47899 a!2862) intermediateBeforeIndex!19) (select (arr!47899 a!2862) j!93)))))))

(assert (=> b!1477873 (= lt!645455 (seekEntryOrOpen!0 (select (arr!47899 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99249 (_ BitVec 32)) Bool)

(assert (=> b!1477873 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49612 0))(
  ( (Unit!49613) )
))
(declare-fun lt!645459 () Unit!49612)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99249 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49612)

(assert (=> b!1477873 (= lt!645459 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1477874 () Bool)

(declare-fun res!1004048 () Bool)

(assert (=> b!1477874 (=> (not res!1004048) (not e!829088))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1477874 (= res!1004048 (validKeyInArray!0 (select (arr!47899 a!2862) i!1006)))))

(declare-fun b!1477875 () Bool)

(declare-fun res!1004050 () Bool)

(assert (=> b!1477875 (=> (not res!1004050) (not e!829088))))

(assert (=> b!1477875 (= res!1004050 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1477876 () Bool)

(declare-fun res!1004053 () Bool)

(assert (=> b!1477876 (=> (not res!1004053) (not e!829088))))

(assert (=> b!1477876 (= res!1004053 (validKeyInArray!0 (select (arr!47899 a!2862) j!93)))))

(declare-fun b!1477877 () Bool)

(declare-fun res!1004041 () Bool)

(assert (=> b!1477877 (=> (not res!1004041) (not e!829081))))

(assert (=> b!1477877 (= res!1004041 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47899 a!2862) j!93) a!2862 mask!2687) lt!645456))))

(declare-fun b!1477878 () Bool)

(declare-fun res!1004042 () Bool)

(assert (=> b!1477878 (=> (not res!1004042) (not e!829082))))

(assert (=> b!1477878 (= res!1004042 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1477879 () Bool)

(assert (=> b!1477879 (= e!829088 e!829083)))

(declare-fun res!1004044 () Bool)

(assert (=> b!1477879 (=> (not res!1004044) (not e!829083))))

(assert (=> b!1477879 (= res!1004044 (= (select (store (arr!47899 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1477879 (= lt!645458 (array!99250 (store (arr!47899 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48450 a!2862)))))

(assert (= (and start!126226 res!1004051) b!1477868))

(assert (= (and b!1477868 res!1004040) b!1477874))

(assert (= (and b!1477874 res!1004048) b!1477876))

(assert (= (and b!1477876 res!1004053) b!1477875))

(assert (= (and b!1477875 res!1004050) b!1477865))

(assert (= (and b!1477865 res!1004055) b!1477863))

(assert (= (and b!1477863 res!1004046) b!1477879))

(assert (= (and b!1477879 res!1004044) b!1477870))

(assert (= (and b!1477870 res!1004052) b!1477877))

(assert (= (and b!1477877 res!1004041) b!1477862))

(assert (= (and b!1477862 res!1004045) b!1477872))

(assert (= (and b!1477872 c!136433) b!1477866))

(assert (= (and b!1477872 (not c!136433)) b!1477864))

(assert (= (and b!1477872 res!1004043) b!1477878))

(assert (= (and b!1477878 res!1004042) b!1477873))

(assert (= (and b!1477873 res!1004054) b!1477869))

(assert (= (and b!1477869 (not res!1004049)) b!1477871))

(assert (= (and b!1477871 res!1004047) b!1477867))

(declare-fun m!1363851 () Bool)

(assert (=> b!1477871 m!1363851))

(assert (=> b!1477871 m!1363851))

(declare-fun m!1363853 () Bool)

(assert (=> b!1477871 m!1363853))

(assert (=> b!1477876 m!1363851))

(assert (=> b!1477876 m!1363851))

(declare-fun m!1363855 () Bool)

(assert (=> b!1477876 m!1363855))

(declare-fun m!1363857 () Bool)

(assert (=> b!1477864 m!1363857))

(declare-fun m!1363859 () Bool)

(assert (=> b!1477864 m!1363859))

(declare-fun m!1363861 () Bool)

(assert (=> b!1477875 m!1363861))

(declare-fun m!1363863 () Bool)

(assert (=> b!1477869 m!1363863))

(declare-fun m!1363865 () Bool)

(assert (=> b!1477869 m!1363865))

(declare-fun m!1363867 () Bool)

(assert (=> b!1477869 m!1363867))

(assert (=> b!1477869 m!1363851))

(assert (=> b!1477870 m!1363851))

(assert (=> b!1477870 m!1363851))

(declare-fun m!1363869 () Bool)

(assert (=> b!1477870 m!1363869))

(assert (=> b!1477870 m!1363869))

(assert (=> b!1477870 m!1363851))

(declare-fun m!1363871 () Bool)

(assert (=> b!1477870 m!1363871))

(declare-fun m!1363873 () Bool)

(assert (=> b!1477873 m!1363873))

(declare-fun m!1363875 () Bool)

(assert (=> b!1477873 m!1363875))

(assert (=> b!1477873 m!1363851))

(declare-fun m!1363877 () Bool)

(assert (=> b!1477873 m!1363877))

(declare-fun m!1363879 () Bool)

(assert (=> b!1477873 m!1363879))

(assert (=> b!1477873 m!1363851))

(declare-fun m!1363881 () Bool)

(assert (=> b!1477865 m!1363881))

(declare-fun m!1363883 () Bool)

(assert (=> b!1477866 m!1363883))

(assert (=> b!1477879 m!1363865))

(declare-fun m!1363885 () Bool)

(assert (=> b!1477879 m!1363885))

(assert (=> b!1477877 m!1363851))

(assert (=> b!1477877 m!1363851))

(declare-fun m!1363887 () Bool)

(assert (=> b!1477877 m!1363887))

(declare-fun m!1363889 () Bool)

(assert (=> b!1477874 m!1363889))

(assert (=> b!1477874 m!1363889))

(declare-fun m!1363891 () Bool)

(assert (=> b!1477874 m!1363891))

(declare-fun m!1363893 () Bool)

(assert (=> start!126226 m!1363893))

(declare-fun m!1363895 () Bool)

(assert (=> start!126226 m!1363895))

(declare-fun m!1363897 () Bool)

(assert (=> b!1477862 m!1363897))

(assert (=> b!1477862 m!1363897))

(declare-fun m!1363899 () Bool)

(assert (=> b!1477862 m!1363899))

(assert (=> b!1477862 m!1363865))

(declare-fun m!1363901 () Bool)

(assert (=> b!1477862 m!1363901))

(push 1)

