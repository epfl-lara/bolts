; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125824 () Bool)

(assert start!125824)

(declare-fun b!1472025 () Bool)

(declare-fun res!999844 () Bool)

(declare-fun e!826198 () Bool)

(assert (=> b!1472025 (=> (not res!999844) (not e!826198))))

(declare-datatypes ((array!99075 0))(
  ( (array!99076 (arr!47818 (Array (_ BitVec 32) (_ BitVec 64))) (size!48369 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99075)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99075 (_ BitVec 32)) Bool)

(assert (=> b!1472025 (= res!999844 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1472026 () Bool)

(declare-fun e!826200 () Bool)

(assert (=> b!1472026 (= e!826200 (not true))))

(declare-fun e!826201 () Bool)

(assert (=> b!1472026 e!826201))

(declare-fun res!999843 () Bool)

(assert (=> b!1472026 (=> (not res!999843) (not e!826201))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1472026 (= res!999843 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49450 0))(
  ( (Unit!49451) )
))
(declare-fun lt!643416 () Unit!49450)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99075 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49450)

(assert (=> b!1472026 (= lt!643416 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12081 0))(
  ( (MissingZero!12081 (index!50715 (_ BitVec 32))) (Found!12081 (index!50716 (_ BitVec 32))) (Intermediate!12081 (undefined!12893 Bool) (index!50717 (_ BitVec 32)) (x!132303 (_ BitVec 32))) (Undefined!12081) (MissingVacant!12081 (index!50718 (_ BitVec 32))) )
))
(declare-fun lt!643414 () SeekEntryResult!12081)

(declare-fun lt!643415 () array!99075)

(declare-fun lt!643413 () (_ BitVec 64))

(declare-fun e!826197 () Bool)

(declare-fun b!1472027 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99075 (_ BitVec 32)) SeekEntryResult!12081)

(assert (=> b!1472027 (= e!826197 (= lt!643414 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643413 lt!643415 mask!2687)))))

(declare-fun b!1472028 () Bool)

(declare-fun e!826199 () Bool)

(declare-fun e!826202 () Bool)

(assert (=> b!1472028 (= e!826199 e!826202)))

(declare-fun res!999835 () Bool)

(assert (=> b!1472028 (=> (not res!999835) (not e!826202))))

(declare-fun lt!643417 () SeekEntryResult!12081)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1472028 (= res!999835 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47818 a!2862) j!93) mask!2687) (select (arr!47818 a!2862) j!93) a!2862 mask!2687) lt!643417))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1472028 (= lt!643417 (Intermediate!12081 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1472029 () Bool)

(assert (=> b!1472029 (= e!826198 e!826199)))

(declare-fun res!999840 () Bool)

(assert (=> b!1472029 (=> (not res!999840) (not e!826199))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1472029 (= res!999840 (= (select (store (arr!47818 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1472029 (= lt!643415 (array!99076 (store (arr!47818 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48369 a!2862)))))

(declare-fun b!1472030 () Bool)

(declare-fun res!999845 () Bool)

(assert (=> b!1472030 (=> (not res!999845) (not e!826198))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1472030 (= res!999845 (validKeyInArray!0 (select (arr!47818 a!2862) j!93)))))

(declare-fun b!1472031 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99075 (_ BitVec 32)) SeekEntryResult!12081)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99075 (_ BitVec 32)) SeekEntryResult!12081)

(assert (=> b!1472031 (= e!826197 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643413 lt!643415 mask!2687) (seekEntryOrOpen!0 lt!643413 lt!643415 mask!2687)))))

(declare-fun b!1472032 () Bool)

(declare-fun res!999848 () Bool)

(assert (=> b!1472032 (=> (not res!999848) (not e!826202))))

(assert (=> b!1472032 (= res!999848 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47818 a!2862) j!93) a!2862 mask!2687) lt!643417))))

(declare-fun res!999849 () Bool)

(assert (=> start!125824 (=> (not res!999849) (not e!826198))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125824 (= res!999849 (validMask!0 mask!2687))))

(assert (=> start!125824 e!826198))

(assert (=> start!125824 true))

(declare-fun array_inv!36763 (array!99075) Bool)

(assert (=> start!125824 (array_inv!36763 a!2862)))

(declare-fun b!1472033 () Bool)

(declare-fun res!999842 () Bool)

(assert (=> b!1472033 (=> (not res!999842) (not e!826198))))

(assert (=> b!1472033 (= res!999842 (and (= (size!48369 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48369 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48369 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1472034 () Bool)

(declare-fun res!999846 () Bool)

(assert (=> b!1472034 (=> (not res!999846) (not e!826200))))

(assert (=> b!1472034 (= res!999846 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1472035 () Bool)

(assert (=> b!1472035 (= e!826201 (or (= (select (arr!47818 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47818 a!2862) intermediateBeforeIndex!19) (select (arr!47818 a!2862) j!93))))))

(declare-fun b!1472036 () Bool)

(declare-fun res!999836 () Bool)

(assert (=> b!1472036 (=> (not res!999836) (not e!826201))))

(assert (=> b!1472036 (= res!999836 (= (seekEntryOrOpen!0 (select (arr!47818 a!2862) j!93) a!2862 mask!2687) (Found!12081 j!93)))))

(declare-fun b!1472037 () Bool)

(declare-fun res!999847 () Bool)

(assert (=> b!1472037 (=> (not res!999847) (not e!826198))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1472037 (= res!999847 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48369 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48369 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48369 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1472038 () Bool)

(declare-fun res!999839 () Bool)

(assert (=> b!1472038 (=> (not res!999839) (not e!826200))))

(assert (=> b!1472038 (= res!999839 e!826197)))

(declare-fun c!135611 () Bool)

(assert (=> b!1472038 (= c!135611 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1472039 () Bool)

(declare-fun res!999841 () Bool)

(assert (=> b!1472039 (=> (not res!999841) (not e!826198))))

(assert (=> b!1472039 (= res!999841 (validKeyInArray!0 (select (arr!47818 a!2862) i!1006)))))

(declare-fun b!1472040 () Bool)

(assert (=> b!1472040 (= e!826202 e!826200)))

(declare-fun res!999837 () Bool)

(assert (=> b!1472040 (=> (not res!999837) (not e!826200))))

(assert (=> b!1472040 (= res!999837 (= lt!643414 (Intermediate!12081 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1472040 (= lt!643414 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643413 mask!2687) lt!643413 lt!643415 mask!2687))))

(assert (=> b!1472040 (= lt!643413 (select (store (arr!47818 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1472041 () Bool)

(declare-fun res!999838 () Bool)

(assert (=> b!1472041 (=> (not res!999838) (not e!826198))))

(declare-datatypes ((List!34499 0))(
  ( (Nil!34496) (Cons!34495 (h!35851 (_ BitVec 64)) (t!49200 List!34499)) )
))
(declare-fun arrayNoDuplicates!0 (array!99075 (_ BitVec 32) List!34499) Bool)

(assert (=> b!1472041 (= res!999838 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34496))))

(assert (= (and start!125824 res!999849) b!1472033))

(assert (= (and b!1472033 res!999842) b!1472039))

(assert (= (and b!1472039 res!999841) b!1472030))

(assert (= (and b!1472030 res!999845) b!1472025))

(assert (= (and b!1472025 res!999844) b!1472041))

(assert (= (and b!1472041 res!999838) b!1472037))

(assert (= (and b!1472037 res!999847) b!1472029))

(assert (= (and b!1472029 res!999840) b!1472028))

(assert (= (and b!1472028 res!999835) b!1472032))

(assert (= (and b!1472032 res!999848) b!1472040))

(assert (= (and b!1472040 res!999837) b!1472038))

(assert (= (and b!1472038 c!135611) b!1472027))

(assert (= (and b!1472038 (not c!135611)) b!1472031))

(assert (= (and b!1472038 res!999839) b!1472034))

(assert (= (and b!1472034 res!999846) b!1472026))

(assert (= (and b!1472026 res!999843) b!1472036))

(assert (= (and b!1472036 res!999836) b!1472035))

(declare-fun m!1358829 () Bool)

(assert (=> b!1472026 m!1358829))

(declare-fun m!1358831 () Bool)

(assert (=> b!1472026 m!1358831))

(declare-fun m!1358833 () Bool)

(assert (=> b!1472032 m!1358833))

(assert (=> b!1472032 m!1358833))

(declare-fun m!1358835 () Bool)

(assert (=> b!1472032 m!1358835))

(declare-fun m!1358837 () Bool)

(assert (=> b!1472025 m!1358837))

(assert (=> b!1472036 m!1358833))

(assert (=> b!1472036 m!1358833))

(declare-fun m!1358839 () Bool)

(assert (=> b!1472036 m!1358839))

(assert (=> b!1472028 m!1358833))

(assert (=> b!1472028 m!1358833))

(declare-fun m!1358841 () Bool)

(assert (=> b!1472028 m!1358841))

(assert (=> b!1472028 m!1358841))

(assert (=> b!1472028 m!1358833))

(declare-fun m!1358843 () Bool)

(assert (=> b!1472028 m!1358843))

(declare-fun m!1358845 () Bool)

(assert (=> b!1472029 m!1358845))

(declare-fun m!1358847 () Bool)

(assert (=> b!1472029 m!1358847))

(assert (=> b!1472030 m!1358833))

(assert (=> b!1472030 m!1358833))

(declare-fun m!1358849 () Bool)

(assert (=> b!1472030 m!1358849))

(declare-fun m!1358851 () Bool)

(assert (=> b!1472039 m!1358851))

(assert (=> b!1472039 m!1358851))

(declare-fun m!1358853 () Bool)

(assert (=> b!1472039 m!1358853))

(declare-fun m!1358855 () Bool)

(assert (=> b!1472041 m!1358855))

(declare-fun m!1358857 () Bool)

(assert (=> b!1472040 m!1358857))

(assert (=> b!1472040 m!1358857))

(declare-fun m!1358859 () Bool)

(assert (=> b!1472040 m!1358859))

(assert (=> b!1472040 m!1358845))

(declare-fun m!1358861 () Bool)

(assert (=> b!1472040 m!1358861))

(declare-fun m!1358863 () Bool)

(assert (=> start!125824 m!1358863))

(declare-fun m!1358865 () Bool)

(assert (=> start!125824 m!1358865))

(declare-fun m!1358867 () Bool)

(assert (=> b!1472031 m!1358867))

(declare-fun m!1358869 () Bool)

(assert (=> b!1472031 m!1358869))

(declare-fun m!1358871 () Bool)

(assert (=> b!1472035 m!1358871))

(assert (=> b!1472035 m!1358833))

(declare-fun m!1358873 () Bool)

(assert (=> b!1472027 m!1358873))

(push 1)

