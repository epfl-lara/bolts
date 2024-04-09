; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126446 () Bool)

(assert start!126446)

(declare-fun b!1482042 () Bool)

(declare-fun res!1007407 () Bool)

(declare-fun e!831145 () Bool)

(assert (=> b!1482042 (=> (not res!1007407) (not e!831145))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12227 0))(
  ( (MissingZero!12227 (index!51299 (_ BitVec 32))) (Found!12227 (index!51300 (_ BitVec 32))) (Intermediate!12227 (undefined!13039 Bool) (index!51301 (_ BitVec 32)) (x!132881 (_ BitVec 32))) (Undefined!12227) (MissingVacant!12227 (index!51302 (_ BitVec 32))) )
))
(declare-fun lt!646918 () SeekEntryResult!12227)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99382 0))(
  ( (array!99383 (arr!47964 (Array (_ BitVec 32) (_ BitVec 64))) (size!48515 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99382)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99382 (_ BitVec 32)) SeekEntryResult!12227)

(assert (=> b!1482042 (= res!1007407 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47964 a!2862) j!93) a!2862 mask!2687) lt!646918))))

(declare-fun b!1482043 () Bool)

(declare-fun res!1007399 () Bool)

(declare-fun e!831146 () Bool)

(assert (=> b!1482043 (=> (not res!1007399) (not e!831146))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1482043 (= res!1007399 (validKeyInArray!0 (select (arr!47964 a!2862) j!93)))))

(declare-fun b!1482044 () Bool)

(declare-fun res!1007398 () Bool)

(declare-fun e!831140 () Bool)

(assert (=> b!1482044 (=> (not res!1007398) (not e!831140))))

(declare-fun e!831144 () Bool)

(assert (=> b!1482044 (= res!1007398 e!831144)))

(declare-fun c!136847 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1482044 (= c!136847 (bvsle x!665 intermediateAfterX!19))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1482045 () Bool)

(declare-fun e!831142 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1482045 (= e!831142 (and (or (= (select (arr!47964 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47964 a!2862) intermediateBeforeIndex!19) (select (arr!47964 a!2862) j!93))) (or (and (= (select (arr!47964 a!2862) index!646) (select (store (arr!47964 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47964 a!2862) index!646) (select (arr!47964 a!2862) j!93))) (= (select (arr!47964 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47964 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1482046 () Bool)

(declare-fun res!1007406 () Bool)

(assert (=> b!1482046 (=> (not res!1007406) (not e!831142))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99382 (_ BitVec 32)) SeekEntryResult!12227)

(assert (=> b!1482046 (= res!1007406 (= (seekEntryOrOpen!0 (select (arr!47964 a!2862) j!93) a!2862 mask!2687) (Found!12227 j!93)))))

(declare-fun b!1482047 () Bool)

(assert (=> b!1482047 (= e!831145 e!831140)))

(declare-fun res!1007402 () Bool)

(assert (=> b!1482047 (=> (not res!1007402) (not e!831140))))

(declare-fun lt!646919 () SeekEntryResult!12227)

(assert (=> b!1482047 (= res!1007402 (= lt!646919 (Intermediate!12227 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!646917 () (_ BitVec 64))

(declare-fun lt!646920 () array!99382)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1482047 (= lt!646919 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646917 mask!2687) lt!646917 lt!646920 mask!2687))))

(assert (=> b!1482047 (= lt!646917 (select (store (arr!47964 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1482048 () Bool)

(declare-fun res!1007405 () Bool)

(assert (=> b!1482048 (=> (not res!1007405) (not e!831140))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1482048 (= res!1007405 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1482049 () Bool)

(declare-fun res!1007404 () Bool)

(assert (=> b!1482049 (=> (not res!1007404) (not e!831146))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99382 (_ BitVec 32)) Bool)

(assert (=> b!1482049 (= res!1007404 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1482050 () Bool)

(declare-fun res!1007403 () Bool)

(assert (=> b!1482050 (=> (not res!1007403) (not e!831146))))

(declare-datatypes ((List!34645 0))(
  ( (Nil!34642) (Cons!34641 (h!36012 (_ BitVec 64)) (t!49346 List!34645)) )
))
(declare-fun arrayNoDuplicates!0 (array!99382 (_ BitVec 32) List!34645) Bool)

(assert (=> b!1482050 (= res!1007403 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34642))))

(declare-fun b!1482051 () Bool)

(declare-fun res!1007396 () Bool)

(assert (=> b!1482051 (=> (not res!1007396) (not e!831146))))

(assert (=> b!1482051 (= res!1007396 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48515 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48515 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48515 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1482052 () Bool)

(assert (=> b!1482052 (= e!831140 (not true))))

(assert (=> b!1482052 e!831142))

(declare-fun res!1007408 () Bool)

(assert (=> b!1482052 (=> (not res!1007408) (not e!831142))))

(assert (=> b!1482052 (= res!1007408 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49742 0))(
  ( (Unit!49743) )
))
(declare-fun lt!646921 () Unit!49742)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99382 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49742)

(assert (=> b!1482052 (= lt!646921 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!1007395 () Bool)

(assert (=> start!126446 (=> (not res!1007395) (not e!831146))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126446 (= res!1007395 (validMask!0 mask!2687))))

(assert (=> start!126446 e!831146))

(assert (=> start!126446 true))

(declare-fun array_inv!36909 (array!99382) Bool)

(assert (=> start!126446 (array_inv!36909 a!2862)))

(declare-fun b!1482053 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99382 (_ BitVec 32)) SeekEntryResult!12227)

(assert (=> b!1482053 (= e!831144 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646917 lt!646920 mask!2687) (seekEntryOrOpen!0 lt!646917 lt!646920 mask!2687)))))

(declare-fun b!1482054 () Bool)

(declare-fun res!1007401 () Bool)

(assert (=> b!1482054 (=> (not res!1007401) (not e!831146))))

(assert (=> b!1482054 (= res!1007401 (validKeyInArray!0 (select (arr!47964 a!2862) i!1006)))))

(declare-fun b!1482055 () Bool)

(declare-fun e!831143 () Bool)

(assert (=> b!1482055 (= e!831146 e!831143)))

(declare-fun res!1007400 () Bool)

(assert (=> b!1482055 (=> (not res!1007400) (not e!831143))))

(assert (=> b!1482055 (= res!1007400 (= (select (store (arr!47964 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1482055 (= lt!646920 (array!99383 (store (arr!47964 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48515 a!2862)))))

(declare-fun b!1482056 () Bool)

(declare-fun res!1007397 () Bool)

(assert (=> b!1482056 (=> (not res!1007397) (not e!831146))))

(assert (=> b!1482056 (= res!1007397 (and (= (size!48515 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48515 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48515 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1482057 () Bool)

(assert (=> b!1482057 (= e!831144 (= lt!646919 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646917 lt!646920 mask!2687)))))

(declare-fun b!1482058 () Bool)

(assert (=> b!1482058 (= e!831143 e!831145)))

(declare-fun res!1007409 () Bool)

(assert (=> b!1482058 (=> (not res!1007409) (not e!831145))))

(assert (=> b!1482058 (= res!1007409 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47964 a!2862) j!93) mask!2687) (select (arr!47964 a!2862) j!93) a!2862 mask!2687) lt!646918))))

(assert (=> b!1482058 (= lt!646918 (Intermediate!12227 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!126446 res!1007395) b!1482056))

(assert (= (and b!1482056 res!1007397) b!1482054))

(assert (= (and b!1482054 res!1007401) b!1482043))

(assert (= (and b!1482043 res!1007399) b!1482049))

(assert (= (and b!1482049 res!1007404) b!1482050))

(assert (= (and b!1482050 res!1007403) b!1482051))

(assert (= (and b!1482051 res!1007396) b!1482055))

(assert (= (and b!1482055 res!1007400) b!1482058))

(assert (= (and b!1482058 res!1007409) b!1482042))

(assert (= (and b!1482042 res!1007407) b!1482047))

(assert (= (and b!1482047 res!1007402) b!1482044))

(assert (= (and b!1482044 c!136847) b!1482057))

(assert (= (and b!1482044 (not c!136847)) b!1482053))

(assert (= (and b!1482044 res!1007398) b!1482048))

(assert (= (and b!1482048 res!1007405) b!1482052))

(assert (= (and b!1482052 res!1007408) b!1482046))

(assert (= (and b!1482046 res!1007406) b!1482045))

(declare-fun m!1367827 () Bool)

(assert (=> b!1482053 m!1367827))

(declare-fun m!1367829 () Bool)

(assert (=> b!1482053 m!1367829))

(declare-fun m!1367831 () Bool)

(assert (=> b!1482046 m!1367831))

(assert (=> b!1482046 m!1367831))

(declare-fun m!1367833 () Bool)

(assert (=> b!1482046 m!1367833))

(declare-fun m!1367835 () Bool)

(assert (=> b!1482045 m!1367835))

(declare-fun m!1367837 () Bool)

(assert (=> b!1482045 m!1367837))

(declare-fun m!1367839 () Bool)

(assert (=> b!1482045 m!1367839))

(declare-fun m!1367841 () Bool)

(assert (=> b!1482045 m!1367841))

(assert (=> b!1482045 m!1367831))

(assert (=> b!1482043 m!1367831))

(assert (=> b!1482043 m!1367831))

(declare-fun m!1367843 () Bool)

(assert (=> b!1482043 m!1367843))

(declare-fun m!1367845 () Bool)

(assert (=> b!1482047 m!1367845))

(assert (=> b!1482047 m!1367845))

(declare-fun m!1367847 () Bool)

(assert (=> b!1482047 m!1367847))

(assert (=> b!1482047 m!1367835))

(declare-fun m!1367849 () Bool)

(assert (=> b!1482047 m!1367849))

(assert (=> b!1482042 m!1367831))

(assert (=> b!1482042 m!1367831))

(declare-fun m!1367851 () Bool)

(assert (=> b!1482042 m!1367851))

(declare-fun m!1367853 () Bool)

(assert (=> b!1482054 m!1367853))

(assert (=> b!1482054 m!1367853))

(declare-fun m!1367855 () Bool)

(assert (=> b!1482054 m!1367855))

(declare-fun m!1367857 () Bool)

(assert (=> b!1482057 m!1367857))

(declare-fun m!1367859 () Bool)

(assert (=> b!1482049 m!1367859))

(assert (=> b!1482058 m!1367831))

(assert (=> b!1482058 m!1367831))

(declare-fun m!1367861 () Bool)

(assert (=> b!1482058 m!1367861))

(assert (=> b!1482058 m!1367861))

(assert (=> b!1482058 m!1367831))

(declare-fun m!1367863 () Bool)

(assert (=> b!1482058 m!1367863))

(declare-fun m!1367865 () Bool)

(assert (=> b!1482052 m!1367865))

(declare-fun m!1367867 () Bool)

(assert (=> b!1482052 m!1367867))

(declare-fun m!1367869 () Bool)

(assert (=> start!126446 m!1367869))

(declare-fun m!1367871 () Bool)

(assert (=> start!126446 m!1367871))

(declare-fun m!1367873 () Bool)

(assert (=> b!1482050 m!1367873))

(assert (=> b!1482055 m!1367835))

(declare-fun m!1367875 () Bool)

(assert (=> b!1482055 m!1367875))

(push 1)

