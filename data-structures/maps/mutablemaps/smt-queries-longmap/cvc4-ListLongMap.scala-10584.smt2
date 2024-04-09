; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124688 () Bool)

(assert start!124688)

(declare-fun b!1443815 () Bool)

(declare-fun res!975984 () Bool)

(declare-fun e!813588 () Bool)

(assert (=> b!1443815 (=> (not res!975984) (not e!813588))))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98053 0))(
  ( (array!98054 (arr!47310 (Array (_ BitVec 32) (_ BitVec 64))) (size!47861 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98053)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11585 0))(
  ( (MissingZero!11585 (index!48731 (_ BitVec 32))) (Found!11585 (index!48732 (_ BitVec 32))) (Intermediate!11585 (undefined!12397 Bool) (index!48733 (_ BitVec 32)) (x!130429 (_ BitVec 32))) (Undefined!11585) (MissingVacant!11585 (index!48734 (_ BitVec 32))) )
))
(declare-fun lt!633957 () SeekEntryResult!11585)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98053 (_ BitVec 32)) SeekEntryResult!11585)

(assert (=> b!1443815 (= res!975984 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47310 a!2862) j!93) a!2862 mask!2687) lt!633957))))

(declare-fun lt!633956 () (_ BitVec 64))

(declare-fun lt!633955 () array!98053)

(declare-fun b!1443816 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun e!813586 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98053 (_ BitVec 32)) SeekEntryResult!11585)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98053 (_ BitVec 32)) SeekEntryResult!11585)

(assert (=> b!1443816 (= e!813586 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633956 lt!633955 mask!2687) (seekEntryOrOpen!0 lt!633956 lt!633955 mask!2687)))))

(declare-fun b!1443817 () Bool)

(declare-fun res!975977 () Bool)

(declare-fun e!813585 () Bool)

(assert (=> b!1443817 (=> (not res!975977) (not e!813585))))

(assert (=> b!1443817 (= res!975977 (= (seekEntryOrOpen!0 (select (arr!47310 a!2862) j!93) a!2862 mask!2687) (Found!11585 j!93)))))

(declare-fun b!1443818 () Bool)

(declare-fun e!813590 () Bool)

(declare-fun e!813584 () Bool)

(assert (=> b!1443818 (= e!813590 e!813584)))

(declare-fun res!975981 () Bool)

(assert (=> b!1443818 (=> (not res!975981) (not e!813584))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1443818 (= res!975981 (= (select (store (arr!47310 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1443818 (= lt!633955 (array!98054 (store (arr!47310 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47861 a!2862)))))

(declare-fun b!1443819 () Bool)

(declare-fun res!975987 () Bool)

(declare-fun e!813589 () Bool)

(assert (=> b!1443819 (=> (not res!975987) (not e!813589))))

(assert (=> b!1443819 (= res!975987 e!813586)))

(declare-fun c!133433 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1443819 (= c!133433 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1443820 () Bool)

(declare-fun res!975975 () Bool)

(assert (=> b!1443820 (=> (not res!975975) (not e!813590))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98053 (_ BitVec 32)) Bool)

(assert (=> b!1443820 (= res!975975 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!975982 () Bool)

(assert (=> start!124688 (=> (not res!975982) (not e!813590))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124688 (= res!975982 (validMask!0 mask!2687))))

(assert (=> start!124688 e!813590))

(assert (=> start!124688 true))

(declare-fun array_inv!36255 (array!98053) Bool)

(assert (=> start!124688 (array_inv!36255 a!2862)))

(declare-fun b!1443821 () Bool)

(declare-fun res!975988 () Bool)

(assert (=> b!1443821 (=> (not res!975988) (not e!813590))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1443821 (= res!975988 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47861 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47861 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47861 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1443822 () Bool)

(assert (=> b!1443822 (= e!813585 (or (= (select (arr!47310 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47310 a!2862) intermediateBeforeIndex!19) (select (arr!47310 a!2862) j!93))))))

(declare-fun b!1443823 () Bool)

(declare-fun res!975989 () Bool)

(assert (=> b!1443823 (=> (not res!975989) (not e!813590))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1443823 (= res!975989 (validKeyInArray!0 (select (arr!47310 a!2862) j!93)))))

(declare-fun b!1443824 () Bool)

(declare-fun res!975979 () Bool)

(assert (=> b!1443824 (=> (not res!975979) (not e!813590))))

(assert (=> b!1443824 (= res!975979 (validKeyInArray!0 (select (arr!47310 a!2862) i!1006)))))

(declare-fun b!1443825 () Bool)

(assert (=> b!1443825 (= e!813584 e!813588)))

(declare-fun res!975980 () Bool)

(assert (=> b!1443825 (=> (not res!975980) (not e!813588))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1443825 (= res!975980 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47310 a!2862) j!93) mask!2687) (select (arr!47310 a!2862) j!93) a!2862 mask!2687) lt!633957))))

(assert (=> b!1443825 (= lt!633957 (Intermediate!11585 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun lt!633954 () SeekEntryResult!11585)

(declare-fun b!1443826 () Bool)

(assert (=> b!1443826 (= e!813586 (= lt!633954 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633956 lt!633955 mask!2687)))))

(declare-fun b!1443827 () Bool)

(declare-fun res!975986 () Bool)

(assert (=> b!1443827 (=> (not res!975986) (not e!813590))))

(assert (=> b!1443827 (= res!975986 (and (= (size!47861 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47861 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47861 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1443828 () Bool)

(declare-fun e!813587 () Bool)

(assert (=> b!1443828 (= e!813587 true)))

(declare-fun lt!633953 () SeekEntryResult!11585)

(assert (=> b!1443828 (= lt!633953 (seekEntryOrOpen!0 lt!633956 lt!633955 mask!2687))))

(declare-fun b!1443829 () Bool)

(declare-fun res!975983 () Bool)

(assert (=> b!1443829 (=> (not res!975983) (not e!813589))))

(assert (=> b!1443829 (= res!975983 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1443830 () Bool)

(assert (=> b!1443830 (= e!813588 e!813589)))

(declare-fun res!975976 () Bool)

(assert (=> b!1443830 (=> (not res!975976) (not e!813589))))

(assert (=> b!1443830 (= res!975976 (= lt!633954 (Intermediate!11585 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1443830 (= lt!633954 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633956 mask!2687) lt!633956 lt!633955 mask!2687))))

(assert (=> b!1443830 (= lt!633956 (select (store (arr!47310 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1443831 () Bool)

(declare-fun res!975978 () Bool)

(assert (=> b!1443831 (=> (not res!975978) (not e!813590))))

(declare-datatypes ((List!33991 0))(
  ( (Nil!33988) (Cons!33987 (h!35337 (_ BitVec 64)) (t!48692 List!33991)) )
))
(declare-fun arrayNoDuplicates!0 (array!98053 (_ BitVec 32) List!33991) Bool)

(assert (=> b!1443831 (= res!975978 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33988))))

(declare-fun b!1443832 () Bool)

(assert (=> b!1443832 (= e!813589 (not e!813587))))

(declare-fun res!975990 () Bool)

(assert (=> b!1443832 (=> res!975990 e!813587)))

(assert (=> b!1443832 (= res!975990 (or (not (= (select (arr!47310 a!2862) index!646) (select (store (arr!47310 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47310 a!2862) index!646) (select (arr!47310 a!2862) j!93)))))))

(assert (=> b!1443832 e!813585))

(declare-fun res!975985 () Bool)

(assert (=> b!1443832 (=> (not res!975985) (not e!813585))))

(assert (=> b!1443832 (= res!975985 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48614 0))(
  ( (Unit!48615) )
))
(declare-fun lt!633958 () Unit!48614)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98053 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48614)

(assert (=> b!1443832 (= lt!633958 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!124688 res!975982) b!1443827))

(assert (= (and b!1443827 res!975986) b!1443824))

(assert (= (and b!1443824 res!975979) b!1443823))

(assert (= (and b!1443823 res!975989) b!1443820))

(assert (= (and b!1443820 res!975975) b!1443831))

(assert (= (and b!1443831 res!975978) b!1443821))

(assert (= (and b!1443821 res!975988) b!1443818))

(assert (= (and b!1443818 res!975981) b!1443825))

(assert (= (and b!1443825 res!975980) b!1443815))

(assert (= (and b!1443815 res!975984) b!1443830))

(assert (= (and b!1443830 res!975976) b!1443819))

(assert (= (and b!1443819 c!133433) b!1443826))

(assert (= (and b!1443819 (not c!133433)) b!1443816))

(assert (= (and b!1443819 res!975987) b!1443829))

(assert (= (and b!1443829 res!975983) b!1443832))

(assert (= (and b!1443832 res!975985) b!1443817))

(assert (= (and b!1443817 res!975977) b!1443822))

(assert (= (and b!1443832 (not res!975990)) b!1443828))

(declare-fun m!1332925 () Bool)

(assert (=> b!1443822 m!1332925))

(declare-fun m!1332927 () Bool)

(assert (=> b!1443822 m!1332927))

(declare-fun m!1332929 () Bool)

(assert (=> b!1443830 m!1332929))

(assert (=> b!1443830 m!1332929))

(declare-fun m!1332931 () Bool)

(assert (=> b!1443830 m!1332931))

(declare-fun m!1332933 () Bool)

(assert (=> b!1443830 m!1332933))

(declare-fun m!1332935 () Bool)

(assert (=> b!1443830 m!1332935))

(declare-fun m!1332937 () Bool)

(assert (=> b!1443832 m!1332937))

(assert (=> b!1443832 m!1332933))

(declare-fun m!1332939 () Bool)

(assert (=> b!1443832 m!1332939))

(declare-fun m!1332941 () Bool)

(assert (=> b!1443832 m!1332941))

(declare-fun m!1332943 () Bool)

(assert (=> b!1443832 m!1332943))

(assert (=> b!1443832 m!1332927))

(assert (=> b!1443823 m!1332927))

(assert (=> b!1443823 m!1332927))

(declare-fun m!1332945 () Bool)

(assert (=> b!1443823 m!1332945))

(declare-fun m!1332947 () Bool)

(assert (=> b!1443816 m!1332947))

(declare-fun m!1332949 () Bool)

(assert (=> b!1443816 m!1332949))

(declare-fun m!1332951 () Bool)

(assert (=> b!1443826 m!1332951))

(declare-fun m!1332953 () Bool)

(assert (=> b!1443824 m!1332953))

(assert (=> b!1443824 m!1332953))

(declare-fun m!1332955 () Bool)

(assert (=> b!1443824 m!1332955))

(assert (=> b!1443825 m!1332927))

(assert (=> b!1443825 m!1332927))

(declare-fun m!1332957 () Bool)

(assert (=> b!1443825 m!1332957))

(assert (=> b!1443825 m!1332957))

(assert (=> b!1443825 m!1332927))

(declare-fun m!1332959 () Bool)

(assert (=> b!1443825 m!1332959))

(declare-fun m!1332961 () Bool)

(assert (=> b!1443820 m!1332961))

(assert (=> b!1443828 m!1332949))

(declare-fun m!1332963 () Bool)

(assert (=> b!1443831 m!1332963))

(assert (=> b!1443817 m!1332927))

(assert (=> b!1443817 m!1332927))

(declare-fun m!1332965 () Bool)

(assert (=> b!1443817 m!1332965))

(assert (=> b!1443818 m!1332933))

(declare-fun m!1332967 () Bool)

(assert (=> b!1443818 m!1332967))

(assert (=> b!1443815 m!1332927))

(assert (=> b!1443815 m!1332927))

(declare-fun m!1332969 () Bool)

(assert (=> b!1443815 m!1332969))

(declare-fun m!1332971 () Bool)

(assert (=> start!124688 m!1332971))

(declare-fun m!1332973 () Bool)

(assert (=> start!124688 m!1332973))

(push 1)

