; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126300 () Bool)

(assert start!126300)

(declare-fun b!1479933 () Bool)

(declare-fun res!1005891 () Bool)

(declare-fun e!830121 () Bool)

(assert (=> b!1479933 (=> (not res!1005891) (not e!830121))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99323 0))(
  ( (array!99324 (arr!47936 (Array (_ BitVec 32) (_ BitVec 64))) (size!48487 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99323)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12199 0))(
  ( (MissingZero!12199 (index!51187 (_ BitVec 32))) (Found!12199 (index!51188 (_ BitVec 32))) (Intermediate!12199 (undefined!13011 Bool) (index!51189 (_ BitVec 32)) (x!132769 (_ BitVec 32))) (Undefined!12199) (MissingVacant!12199 (index!51190 (_ BitVec 32))) )
))
(declare-fun lt!646196 () SeekEntryResult!12199)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99323 (_ BitVec 32)) SeekEntryResult!12199)

(assert (=> b!1479933 (= res!1005891 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47936 a!2862) j!93) a!2862 mask!2687) lt!646196))))

(declare-fun b!1479934 () Bool)

(declare-fun e!830122 () Bool)

(declare-fun e!830125 () Bool)

(assert (=> b!1479934 (= e!830122 (not e!830125))))

(declare-fun res!1005889 () Bool)

(assert (=> b!1479934 (=> res!1005889 e!830125)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1479934 (= res!1005889 (or (and (= (select (arr!47936 a!2862) index!646) (select (store (arr!47936 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47936 a!2862) index!646) (select (arr!47936 a!2862) j!93))) (not (= (select (arr!47936 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47936 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!830127 () Bool)

(assert (=> b!1479934 e!830127))

(declare-fun res!1005906 () Bool)

(assert (=> b!1479934 (=> (not res!1005906) (not e!830127))))

(declare-fun lt!646197 () SeekEntryResult!12199)

(declare-fun lt!646200 () SeekEntryResult!12199)

(assert (=> b!1479934 (= res!1005906 (and (= lt!646197 lt!646200) (or (= (select (arr!47936 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47936 a!2862) intermediateBeforeIndex!19) (select (arr!47936 a!2862) j!93)))))))

(assert (=> b!1479934 (= lt!646200 (Found!12199 j!93))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99323 (_ BitVec 32)) SeekEntryResult!12199)

(assert (=> b!1479934 (= lt!646197 (seekEntryOrOpen!0 (select (arr!47936 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99323 (_ BitVec 32)) Bool)

(assert (=> b!1479934 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49686 0))(
  ( (Unit!49687) )
))
(declare-fun lt!646201 () Unit!49686)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99323 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49686)

(assert (=> b!1479934 (= lt!646201 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1479935 () Bool)

(declare-fun res!1005894 () Bool)

(assert (=> b!1479935 (=> res!1005894 e!830125)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99323 (_ BitVec 32)) SeekEntryResult!12199)

(assert (=> b!1479935 (= res!1005894 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47936 a!2862) j!93) a!2862 mask!2687) lt!646200)))))

(declare-fun b!1479936 () Bool)

(assert (=> b!1479936 (= e!830121 e!830122)))

(declare-fun res!1005899 () Bool)

(assert (=> b!1479936 (=> (not res!1005899) (not e!830122))))

(declare-fun lt!646198 () SeekEntryResult!12199)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1479936 (= res!1005899 (= lt!646198 (Intermediate!12199 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!646199 () array!99323)

(declare-fun lt!646194 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1479936 (= lt!646198 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646194 mask!2687) lt!646194 lt!646199 mask!2687))))

(assert (=> b!1479936 (= lt!646194 (select (store (arr!47936 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1479937 () Bool)

(declare-fun e!830129 () Bool)

(assert (=> b!1479937 (= e!830129 (= lt!646198 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646194 lt!646199 mask!2687)))))

(declare-fun b!1479938 () Bool)

(declare-fun res!1005902 () Bool)

(declare-fun e!830123 () Bool)

(assert (=> b!1479938 (=> (not res!1005902) (not e!830123))))

(assert (=> b!1479938 (= res!1005902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1479939 () Bool)

(declare-fun res!1005904 () Bool)

(assert (=> b!1479939 (=> (not res!1005904) (not e!830123))))

(assert (=> b!1479939 (= res!1005904 (and (= (size!48487 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48487 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48487 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1479940 () Bool)

(declare-fun e!830120 () Bool)

(assert (=> b!1479940 (= e!830127 e!830120)))

(declare-fun res!1005900 () Bool)

(assert (=> b!1479940 (=> res!1005900 e!830120)))

(assert (=> b!1479940 (= res!1005900 (or (and (= (select (arr!47936 a!2862) index!646) (select (store (arr!47936 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47936 a!2862) index!646) (select (arr!47936 a!2862) j!93))) (not (= (select (arr!47936 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!1005903 () Bool)

(assert (=> start!126300 (=> (not res!1005903) (not e!830123))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126300 (= res!1005903 (validMask!0 mask!2687))))

(assert (=> start!126300 e!830123))

(assert (=> start!126300 true))

(declare-fun array_inv!36881 (array!99323) Bool)

(assert (=> start!126300 (array_inv!36881 a!2862)))

(declare-fun b!1479941 () Bool)

(declare-fun e!830126 () Bool)

(assert (=> b!1479941 (= e!830126 e!830121)))

(declare-fun res!1005898 () Bool)

(assert (=> b!1479941 (=> (not res!1005898) (not e!830121))))

(assert (=> b!1479941 (= res!1005898 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47936 a!2862) j!93) mask!2687) (select (arr!47936 a!2862) j!93) a!2862 mask!2687) lt!646196))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1479941 (= lt!646196 (Intermediate!12199 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1479942 () Bool)

(declare-fun res!1005893 () Bool)

(assert (=> b!1479942 (=> (not res!1005893) (not e!830123))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1479942 (= res!1005893 (validKeyInArray!0 (select (arr!47936 a!2862) i!1006)))))

(declare-fun b!1479943 () Bool)

(declare-fun res!1005905 () Bool)

(assert (=> b!1479943 (=> (not res!1005905) (not e!830123))))

(declare-datatypes ((List!34617 0))(
  ( (Nil!34614) (Cons!34613 (h!35981 (_ BitVec 64)) (t!49318 List!34617)) )
))
(declare-fun arrayNoDuplicates!0 (array!99323 (_ BitVec 32) List!34617) Bool)

(assert (=> b!1479943 (= res!1005905 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34614))))

(declare-fun b!1479944 () Bool)

(declare-fun res!1005890 () Bool)

(assert (=> b!1479944 (=> (not res!1005890) (not e!830122))))

(assert (=> b!1479944 (= res!1005890 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1479945 () Bool)

(declare-fun res!1005892 () Bool)

(assert (=> b!1479945 (=> (not res!1005892) (not e!830123))))

(assert (=> b!1479945 (= res!1005892 (validKeyInArray!0 (select (arr!47936 a!2862) j!93)))))

(declare-fun b!1479946 () Bool)

(declare-fun e!830128 () Bool)

(assert (=> b!1479946 (= e!830128 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1479947 () Bool)

(declare-fun res!1005897 () Bool)

(assert (=> b!1479947 (=> (not res!1005897) (not e!830122))))

(assert (=> b!1479947 (= res!1005897 e!830129)))

(declare-fun c!136544 () Bool)

(assert (=> b!1479947 (= c!136544 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1479948 () Bool)

(declare-fun res!1005896 () Bool)

(assert (=> b!1479948 (=> (not res!1005896) (not e!830123))))

(assert (=> b!1479948 (= res!1005896 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48487 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48487 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48487 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1479949 () Bool)

(assert (=> b!1479949 (= e!830120 e!830128)))

(declare-fun res!1005895 () Bool)

(assert (=> b!1479949 (=> (not res!1005895) (not e!830128))))

(assert (=> b!1479949 (= res!1005895 (= lt!646197 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47936 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1479950 () Bool)

(assert (=> b!1479950 (= e!830125 true)))

(assert (=> b!1479950 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646194 lt!646199 mask!2687) lt!646200)))

(declare-fun lt!646195 () Unit!49686)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!99323 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49686)

(assert (=> b!1479950 (= lt!646195 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1479951 () Bool)

(assert (=> b!1479951 (= e!830123 e!830126)))

(declare-fun res!1005901 () Bool)

(assert (=> b!1479951 (=> (not res!1005901) (not e!830126))))

(assert (=> b!1479951 (= res!1005901 (= (select (store (arr!47936 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1479951 (= lt!646199 (array!99324 (store (arr!47936 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48487 a!2862)))))

(declare-fun b!1479952 () Bool)

(assert (=> b!1479952 (= e!830129 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646194 lt!646199 mask!2687) (seekEntryOrOpen!0 lt!646194 lt!646199 mask!2687)))))

(assert (= (and start!126300 res!1005903) b!1479939))

(assert (= (and b!1479939 res!1005904) b!1479942))

(assert (= (and b!1479942 res!1005893) b!1479945))

(assert (= (and b!1479945 res!1005892) b!1479938))

(assert (= (and b!1479938 res!1005902) b!1479943))

(assert (= (and b!1479943 res!1005905) b!1479948))

(assert (= (and b!1479948 res!1005896) b!1479951))

(assert (= (and b!1479951 res!1005901) b!1479941))

(assert (= (and b!1479941 res!1005898) b!1479933))

(assert (= (and b!1479933 res!1005891) b!1479936))

(assert (= (and b!1479936 res!1005899) b!1479947))

(assert (= (and b!1479947 c!136544) b!1479937))

(assert (= (and b!1479947 (not c!136544)) b!1479952))

(assert (= (and b!1479947 res!1005897) b!1479944))

(assert (= (and b!1479944 res!1005890) b!1479934))

(assert (= (and b!1479934 res!1005906) b!1479940))

(assert (= (and b!1479940 (not res!1005900)) b!1479949))

(assert (= (and b!1479949 res!1005895) b!1479946))

(assert (= (and b!1479934 (not res!1005889)) b!1479935))

(assert (= (and b!1479935 (not res!1005894)) b!1479950))

(declare-fun m!1365821 () Bool)

(assert (=> b!1479945 m!1365821))

(assert (=> b!1479945 m!1365821))

(declare-fun m!1365823 () Bool)

(assert (=> b!1479945 m!1365823))

(declare-fun m!1365825 () Bool)

(assert (=> start!126300 m!1365825))

(declare-fun m!1365827 () Bool)

(assert (=> start!126300 m!1365827))

(declare-fun m!1365829 () Bool)

(assert (=> b!1479943 m!1365829))

(assert (=> b!1479935 m!1365821))

(assert (=> b!1479935 m!1365821))

(declare-fun m!1365831 () Bool)

(assert (=> b!1479935 m!1365831))

(assert (=> b!1479949 m!1365821))

(assert (=> b!1479949 m!1365821))

(declare-fun m!1365833 () Bool)

(assert (=> b!1479949 m!1365833))

(declare-fun m!1365835 () Bool)

(assert (=> b!1479952 m!1365835))

(declare-fun m!1365837 () Bool)

(assert (=> b!1479952 m!1365837))

(assert (=> b!1479950 m!1365835))

(declare-fun m!1365839 () Bool)

(assert (=> b!1479950 m!1365839))

(declare-fun m!1365841 () Bool)

(assert (=> b!1479940 m!1365841))

(declare-fun m!1365843 () Bool)

(assert (=> b!1479940 m!1365843))

(declare-fun m!1365845 () Bool)

(assert (=> b!1479940 m!1365845))

(assert (=> b!1479940 m!1365821))

(assert (=> b!1479933 m!1365821))

(assert (=> b!1479933 m!1365821))

(declare-fun m!1365847 () Bool)

(assert (=> b!1479933 m!1365847))

(declare-fun m!1365849 () Bool)

(assert (=> b!1479937 m!1365849))

(assert (=> b!1479951 m!1365843))

(declare-fun m!1365851 () Bool)

(assert (=> b!1479951 m!1365851))

(declare-fun m!1365853 () Bool)

(assert (=> b!1479936 m!1365853))

(assert (=> b!1479936 m!1365853))

(declare-fun m!1365855 () Bool)

(assert (=> b!1479936 m!1365855))

(assert (=> b!1479936 m!1365843))

(declare-fun m!1365857 () Bool)

(assert (=> b!1479936 m!1365857))

(declare-fun m!1365859 () Bool)

(assert (=> b!1479942 m!1365859))

(assert (=> b!1479942 m!1365859))

(declare-fun m!1365861 () Bool)

(assert (=> b!1479942 m!1365861))

(declare-fun m!1365863 () Bool)

(assert (=> b!1479934 m!1365863))

(assert (=> b!1479934 m!1365843))

(declare-fun m!1365865 () Bool)

(assert (=> b!1479934 m!1365865))

(assert (=> b!1479934 m!1365845))

(assert (=> b!1479934 m!1365841))

(assert (=> b!1479934 m!1365821))

(declare-fun m!1365867 () Bool)

(assert (=> b!1479934 m!1365867))

(declare-fun m!1365869 () Bool)

(assert (=> b!1479934 m!1365869))

(assert (=> b!1479934 m!1365821))

(assert (=> b!1479941 m!1365821))

(assert (=> b!1479941 m!1365821))

(declare-fun m!1365871 () Bool)

(assert (=> b!1479941 m!1365871))

(assert (=> b!1479941 m!1365871))

(assert (=> b!1479941 m!1365821))

(declare-fun m!1365873 () Bool)

(assert (=> b!1479941 m!1365873))

(declare-fun m!1365875 () Bool)

(assert (=> b!1479938 m!1365875))

(check-sat (not b!1479942) (not b!1479950) (not b!1479938) (not b!1479943) (not b!1479935) (not b!1479936) (not b!1479934) (not b!1479949) (not start!126300) (not b!1479933) (not b!1479952) (not b!1479937) (not b!1479941) (not b!1479945))
(check-sat)
