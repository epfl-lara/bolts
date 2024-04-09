; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124880 () Bool)

(assert start!124880)

(declare-fun b!1449025 () Bool)

(declare-fun e!816047 () Bool)

(declare-fun e!816055 () Bool)

(assert (=> b!1449025 (= e!816047 e!816055)))

(declare-fun res!980614 () Bool)

(assert (=> b!1449025 (=> (not res!980614) (not e!816055))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11681 0))(
  ( (MissingZero!11681 (index!49115 (_ BitVec 32))) (Found!11681 (index!49116 (_ BitVec 32))) (Intermediate!11681 (undefined!12493 Bool) (index!49117 (_ BitVec 32)) (x!130781 (_ BitVec 32))) (Undefined!11681) (MissingVacant!11681 (index!49118 (_ BitVec 32))) )
))
(declare-fun lt!635716 () SeekEntryResult!11681)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1449025 (= res!980614 (= lt!635716 (Intermediate!11681 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-datatypes ((array!98245 0))(
  ( (array!98246 (arr!47406 (Array (_ BitVec 32) (_ BitVec 64))) (size!47957 (_ BitVec 32))) )
))
(declare-fun lt!635721 () array!98245)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!635722 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98245 (_ BitVec 32)) SeekEntryResult!11681)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1449025 (= lt!635716 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635722 mask!2687) lt!635722 lt!635721 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98245)

(assert (=> b!1449025 (= lt!635722 (select (store (arr!47406 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1449026 () Bool)

(declare-fun e!816052 () Bool)

(assert (=> b!1449026 (= e!816052 e!816047)))

(declare-fun res!980621 () Bool)

(assert (=> b!1449026 (=> (not res!980621) (not e!816047))))

(declare-fun lt!635717 () SeekEntryResult!11681)

(assert (=> b!1449026 (= res!980621 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47406 a!2862) j!93) mask!2687) (select (arr!47406 a!2862) j!93) a!2862 mask!2687) lt!635717))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1449026 (= lt!635717 (Intermediate!11681 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1449027 () Bool)

(declare-fun e!816054 () Bool)

(declare-fun e!816056 () Bool)

(assert (=> b!1449027 (= e!816054 e!816056)))

(declare-fun res!980616 () Bool)

(assert (=> b!1449027 (=> res!980616 e!816056)))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1449027 (= res!980616 (or (and (= (select (arr!47406 a!2862) index!646) (select (store (arr!47406 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47406 a!2862) index!646) (select (arr!47406 a!2862) j!93))) (not (= (select (arr!47406 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1449028 () Bool)

(declare-fun e!816051 () Bool)

(assert (=> b!1449028 (= e!816051 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1449029 () Bool)

(declare-fun e!816049 () Bool)

(assert (=> b!1449029 (= e!816049 true)))

(declare-fun lt!635719 () SeekEntryResult!11681)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98245 (_ BitVec 32)) SeekEntryResult!11681)

(assert (=> b!1449029 (= lt!635719 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47406 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1449031 () Bool)

(declare-fun res!980609 () Bool)

(declare-fun e!816050 () Bool)

(assert (=> b!1449031 (=> (not res!980609) (not e!816050))))

(declare-datatypes ((List!34087 0))(
  ( (Nil!34084) (Cons!34083 (h!35433 (_ BitVec 64)) (t!48788 List!34087)) )
))
(declare-fun arrayNoDuplicates!0 (array!98245 (_ BitVec 32) List!34087) Bool)

(assert (=> b!1449031 (= res!980609 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34084))))

(declare-fun b!1449032 () Bool)

(declare-fun res!980622 () Bool)

(assert (=> b!1449032 (=> (not res!980622) (not e!816047))))

(assert (=> b!1449032 (= res!980622 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47406 a!2862) j!93) a!2862 mask!2687) lt!635717))))

(declare-fun b!1449033 () Bool)

(declare-fun e!816048 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98245 (_ BitVec 32)) SeekEntryResult!11681)

(assert (=> b!1449033 (= e!816048 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635722 lt!635721 mask!2687) (seekEntryOrOpen!0 lt!635722 lt!635721 mask!2687)))))

(declare-fun b!1449034 () Bool)

(declare-fun res!980618 () Bool)

(assert (=> b!1449034 (=> (not res!980618) (not e!816050))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98245 (_ BitVec 32)) Bool)

(assert (=> b!1449034 (= res!980618 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1449035 () Bool)

(declare-fun res!980620 () Bool)

(assert (=> b!1449035 (=> (not res!980620) (not e!816055))))

(assert (=> b!1449035 (= res!980620 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1449036 () Bool)

(declare-fun res!980610 () Bool)

(assert (=> b!1449036 (=> (not res!980610) (not e!816050))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1449036 (= res!980610 (validKeyInArray!0 (select (arr!47406 a!2862) i!1006)))))

(declare-fun b!1449037 () Bool)

(declare-fun res!980612 () Bool)

(assert (=> b!1449037 (=> (not res!980612) (not e!816055))))

(assert (=> b!1449037 (= res!980612 e!816048)))

(declare-fun c!133721 () Bool)

(assert (=> b!1449037 (= c!133721 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1449038 () Bool)

(declare-fun res!980613 () Bool)

(assert (=> b!1449038 (=> (not res!980613) (not e!816050))))

(assert (=> b!1449038 (= res!980613 (validKeyInArray!0 (select (arr!47406 a!2862) j!93)))))

(declare-fun b!1449039 () Bool)

(declare-fun res!980619 () Bool)

(assert (=> b!1449039 (=> (not res!980619) (not e!816050))))

(assert (=> b!1449039 (= res!980619 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47957 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47957 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47957 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1449040 () Bool)

(declare-fun res!980625 () Bool)

(assert (=> b!1449040 (=> (not res!980625) (not e!816050))))

(assert (=> b!1449040 (= res!980625 (and (= (size!47957 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47957 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47957 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1449041 () Bool)

(assert (=> b!1449041 (= e!816055 (not e!816049))))

(declare-fun res!980611 () Bool)

(assert (=> b!1449041 (=> res!980611 e!816049)))

(assert (=> b!1449041 (= res!980611 (or (and (= (select (arr!47406 a!2862) index!646) (select (store (arr!47406 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47406 a!2862) index!646) (select (arr!47406 a!2862) j!93))) (not (= (select (arr!47406 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47406 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1449041 e!816054))

(declare-fun res!980617 () Bool)

(assert (=> b!1449041 (=> (not res!980617) (not e!816054))))

(declare-fun lt!635718 () SeekEntryResult!11681)

(assert (=> b!1449041 (= res!980617 (and (= lt!635718 (Found!11681 j!93)) (or (= (select (arr!47406 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47406 a!2862) intermediateBeforeIndex!19) (select (arr!47406 a!2862) j!93)))))))

(assert (=> b!1449041 (= lt!635718 (seekEntryOrOpen!0 (select (arr!47406 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1449041 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48806 0))(
  ( (Unit!48807) )
))
(declare-fun lt!635720 () Unit!48806)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98245 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48806)

(assert (=> b!1449041 (= lt!635720 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!980623 () Bool)

(assert (=> start!124880 (=> (not res!980623) (not e!816050))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124880 (= res!980623 (validMask!0 mask!2687))))

(assert (=> start!124880 e!816050))

(assert (=> start!124880 true))

(declare-fun array_inv!36351 (array!98245) Bool)

(assert (=> start!124880 (array_inv!36351 a!2862)))

(declare-fun b!1449030 () Bool)

(assert (=> b!1449030 (= e!816048 (= lt!635716 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635722 lt!635721 mask!2687)))))

(declare-fun b!1449042 () Bool)

(assert (=> b!1449042 (= e!816050 e!816052)))

(declare-fun res!980615 () Bool)

(assert (=> b!1449042 (=> (not res!980615) (not e!816052))))

(assert (=> b!1449042 (= res!980615 (= (select (store (arr!47406 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1449042 (= lt!635721 (array!98246 (store (arr!47406 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47957 a!2862)))))

(declare-fun b!1449043 () Bool)

(assert (=> b!1449043 (= e!816056 e!816051)))

(declare-fun res!980624 () Bool)

(assert (=> b!1449043 (=> (not res!980624) (not e!816051))))

(assert (=> b!1449043 (= res!980624 (= lt!635718 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47406 a!2862) j!93) a!2862 mask!2687)))))

(assert (= (and start!124880 res!980623) b!1449040))

(assert (= (and b!1449040 res!980625) b!1449036))

(assert (= (and b!1449036 res!980610) b!1449038))

(assert (= (and b!1449038 res!980613) b!1449034))

(assert (= (and b!1449034 res!980618) b!1449031))

(assert (= (and b!1449031 res!980609) b!1449039))

(assert (= (and b!1449039 res!980619) b!1449042))

(assert (= (and b!1449042 res!980615) b!1449026))

(assert (= (and b!1449026 res!980621) b!1449032))

(assert (= (and b!1449032 res!980622) b!1449025))

(assert (= (and b!1449025 res!980614) b!1449037))

(assert (= (and b!1449037 c!133721) b!1449030))

(assert (= (and b!1449037 (not c!133721)) b!1449033))

(assert (= (and b!1449037 res!980612) b!1449035))

(assert (= (and b!1449035 res!980620) b!1449041))

(assert (= (and b!1449041 res!980617) b!1449027))

(assert (= (and b!1449027 (not res!980616)) b!1449043))

(assert (= (and b!1449043 res!980624) b!1449028))

(assert (= (and b!1449041 (not res!980611)) b!1449029))

(declare-fun m!1337811 () Bool)

(assert (=> b!1449026 m!1337811))

(assert (=> b!1449026 m!1337811))

(declare-fun m!1337813 () Bool)

(assert (=> b!1449026 m!1337813))

(assert (=> b!1449026 m!1337813))

(assert (=> b!1449026 m!1337811))

(declare-fun m!1337815 () Bool)

(assert (=> b!1449026 m!1337815))

(assert (=> b!1449038 m!1337811))

(assert (=> b!1449038 m!1337811))

(declare-fun m!1337817 () Bool)

(assert (=> b!1449038 m!1337817))

(declare-fun m!1337819 () Bool)

(assert (=> start!124880 m!1337819))

(declare-fun m!1337821 () Bool)

(assert (=> start!124880 m!1337821))

(declare-fun m!1337823 () Bool)

(assert (=> b!1449041 m!1337823))

(declare-fun m!1337825 () Bool)

(assert (=> b!1449041 m!1337825))

(declare-fun m!1337827 () Bool)

(assert (=> b!1449041 m!1337827))

(declare-fun m!1337829 () Bool)

(assert (=> b!1449041 m!1337829))

(declare-fun m!1337831 () Bool)

(assert (=> b!1449041 m!1337831))

(assert (=> b!1449041 m!1337811))

(declare-fun m!1337833 () Bool)

(assert (=> b!1449041 m!1337833))

(declare-fun m!1337835 () Bool)

(assert (=> b!1449041 m!1337835))

(assert (=> b!1449041 m!1337811))

(assert (=> b!1449029 m!1337811))

(assert (=> b!1449029 m!1337811))

(declare-fun m!1337837 () Bool)

(assert (=> b!1449029 m!1337837))

(declare-fun m!1337839 () Bool)

(assert (=> b!1449030 m!1337839))

(declare-fun m!1337841 () Bool)

(assert (=> b!1449036 m!1337841))

(assert (=> b!1449036 m!1337841))

(declare-fun m!1337843 () Bool)

(assert (=> b!1449036 m!1337843))

(declare-fun m!1337845 () Bool)

(assert (=> b!1449025 m!1337845))

(assert (=> b!1449025 m!1337845))

(declare-fun m!1337847 () Bool)

(assert (=> b!1449025 m!1337847))

(assert (=> b!1449025 m!1337825))

(declare-fun m!1337849 () Bool)

(assert (=> b!1449025 m!1337849))

(assert (=> b!1449043 m!1337811))

(assert (=> b!1449043 m!1337811))

(declare-fun m!1337851 () Bool)

(assert (=> b!1449043 m!1337851))

(declare-fun m!1337853 () Bool)

(assert (=> b!1449034 m!1337853))

(assert (=> b!1449027 m!1337831))

(assert (=> b!1449027 m!1337825))

(assert (=> b!1449027 m!1337829))

(assert (=> b!1449027 m!1337811))

(declare-fun m!1337855 () Bool)

(assert (=> b!1449031 m!1337855))

(assert (=> b!1449032 m!1337811))

(assert (=> b!1449032 m!1337811))

(declare-fun m!1337857 () Bool)

(assert (=> b!1449032 m!1337857))

(declare-fun m!1337859 () Bool)

(assert (=> b!1449033 m!1337859))

(declare-fun m!1337861 () Bool)

(assert (=> b!1449033 m!1337861))

(assert (=> b!1449042 m!1337825))

(declare-fun m!1337863 () Bool)

(assert (=> b!1449042 m!1337863))

(push 1)

