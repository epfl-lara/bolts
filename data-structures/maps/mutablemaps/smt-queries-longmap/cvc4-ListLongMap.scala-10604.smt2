; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124808 () Bool)

(assert start!124808)

(declare-fun b!1446973 () Bool)

(declare-fun res!978782 () Bool)

(declare-fun e!814968 () Bool)

(assert (=> b!1446973 (=> (not res!978782) (not e!814968))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98173 0))(
  ( (array!98174 (arr!47370 (Array (_ BitVec 32) (_ BitVec 64))) (size!47921 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98173)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1446973 (= res!978782 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47921 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47921 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47921 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1446974 () Bool)

(declare-fun e!814967 () Bool)

(declare-fun e!814976 () Bool)

(assert (=> b!1446974 (= e!814967 e!814976)))

(declare-fun res!978776 () Bool)

(assert (=> b!1446974 (=> (not res!978776) (not e!814976))))

(declare-datatypes ((SeekEntryResult!11645 0))(
  ( (MissingZero!11645 (index!48971 (_ BitVec 32))) (Found!11645 (index!48972 (_ BitVec 32))) (Intermediate!11645 (undefined!12457 Bool) (index!48973 (_ BitVec 32)) (x!130649 (_ BitVec 32))) (Undefined!11645) (MissingVacant!11645 (index!48974 (_ BitVec 32))) )
))
(declare-fun lt!634962 () SeekEntryResult!11645)

(assert (=> b!1446974 (= res!978776 (= lt!634962 (Intermediate!11645 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!634964 () array!98173)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!634961 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98173 (_ BitVec 32)) SeekEntryResult!11645)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1446974 (= lt!634962 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634961 mask!2687) lt!634961 lt!634964 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1446974 (= lt!634961 (select (store (arr!47370 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1446975 () Bool)

(declare-fun res!978775 () Bool)

(assert (=> b!1446975 (=> (not res!978775) (not e!814976))))

(assert (=> b!1446975 (= res!978775 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1446976 () Bool)

(declare-fun e!814975 () Bool)

(assert (=> b!1446976 (= e!814975 (= lt!634962 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634961 lt!634964 mask!2687)))))

(declare-fun b!1446977 () Bool)

(declare-fun res!978773 () Bool)

(assert (=> b!1446977 (=> (not res!978773) (not e!814968))))

(declare-datatypes ((List!34051 0))(
  ( (Nil!34048) (Cons!34047 (h!35397 (_ BitVec 64)) (t!48752 List!34051)) )
))
(declare-fun arrayNoDuplicates!0 (array!98173 (_ BitVec 32) List!34051) Bool)

(assert (=> b!1446977 (= res!978773 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34048))))

(declare-fun b!1446979 () Bool)

(declare-fun res!978774 () Bool)

(assert (=> b!1446979 (=> (not res!978774) (not e!814968))))

(assert (=> b!1446979 (= res!978774 (and (= (size!47921 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47921 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47921 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1446980 () Bool)

(declare-fun e!814973 () Bool)

(assert (=> b!1446980 (= e!814973 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1446981 () Bool)

(declare-fun e!814969 () Bool)

(assert (=> b!1446981 (= e!814969 e!814973)))

(declare-fun res!978778 () Bool)

(assert (=> b!1446981 (=> (not res!978778) (not e!814973))))

(declare-fun lt!634960 () SeekEntryResult!11645)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98173 (_ BitVec 32)) SeekEntryResult!11645)

(assert (=> b!1446981 (= res!978778 (= lt!634960 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47370 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1446982 () Bool)

(declare-fun e!814972 () Bool)

(assert (=> b!1446982 (= e!814968 e!814972)))

(declare-fun res!978787 () Bool)

(assert (=> b!1446982 (=> (not res!978787) (not e!814972))))

(assert (=> b!1446982 (= res!978787 (= (select (store (arr!47370 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1446982 (= lt!634964 (array!98174 (store (arr!47370 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47921 a!2862)))))

(declare-fun b!1446983 () Bool)

(declare-fun e!814970 () Bool)

(assert (=> b!1446983 (= e!814970 e!814969)))

(declare-fun res!978785 () Bool)

(assert (=> b!1446983 (=> res!978785 e!814969)))

(assert (=> b!1446983 (= res!978785 (or (and (= (select (arr!47370 a!2862) index!646) (select (store (arr!47370 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47370 a!2862) index!646) (select (arr!47370 a!2862) j!93))) (not (= (select (arr!47370 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1446984 () Bool)

(declare-fun e!814971 () Bool)

(assert (=> b!1446984 (= e!814976 (not e!814971))))

(declare-fun res!978789 () Bool)

(assert (=> b!1446984 (=> res!978789 e!814971)))

(assert (=> b!1446984 (= res!978789 (or (and (= (select (arr!47370 a!2862) index!646) (select (store (arr!47370 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47370 a!2862) index!646) (select (arr!47370 a!2862) j!93))) (not (= (select (arr!47370 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47370 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1446984 e!814970))

(declare-fun res!978781 () Bool)

(assert (=> b!1446984 (=> (not res!978781) (not e!814970))))

(assert (=> b!1446984 (= res!978781 (and (= lt!634960 (Found!11645 j!93)) (or (= (select (arr!47370 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47370 a!2862) intermediateBeforeIndex!19) (select (arr!47370 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98173 (_ BitVec 32)) SeekEntryResult!11645)

(assert (=> b!1446984 (= lt!634960 (seekEntryOrOpen!0 (select (arr!47370 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98173 (_ BitVec 32)) Bool)

(assert (=> b!1446984 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48734 0))(
  ( (Unit!48735) )
))
(declare-fun lt!634965 () Unit!48734)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98173 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48734)

(assert (=> b!1446984 (= lt!634965 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1446985 () Bool)

(declare-fun res!978786 () Bool)

(assert (=> b!1446985 (=> (not res!978786) (not e!814976))))

(assert (=> b!1446985 (= res!978786 e!814975)))

(declare-fun c!133613 () Bool)

(assert (=> b!1446985 (= c!133613 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!978783 () Bool)

(assert (=> start!124808 (=> (not res!978783) (not e!814968))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124808 (= res!978783 (validMask!0 mask!2687))))

(assert (=> start!124808 e!814968))

(assert (=> start!124808 true))

(declare-fun array_inv!36315 (array!98173) Bool)

(assert (=> start!124808 (array_inv!36315 a!2862)))

(declare-fun b!1446978 () Bool)

(assert (=> b!1446978 (= e!814971 true)))

(declare-fun lt!634963 () SeekEntryResult!11645)

(assert (=> b!1446978 (= lt!634963 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47370 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1446986 () Bool)

(declare-fun res!978788 () Bool)

(assert (=> b!1446986 (=> (not res!978788) (not e!814968))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1446986 (= res!978788 (validKeyInArray!0 (select (arr!47370 a!2862) i!1006)))))

(declare-fun b!1446987 () Bool)

(assert (=> b!1446987 (= e!814975 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634961 lt!634964 mask!2687) (seekEntryOrOpen!0 lt!634961 lt!634964 mask!2687)))))

(declare-fun b!1446988 () Bool)

(declare-fun res!978777 () Bool)

(assert (=> b!1446988 (=> (not res!978777) (not e!814967))))

(declare-fun lt!634966 () SeekEntryResult!11645)

(assert (=> b!1446988 (= res!978777 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47370 a!2862) j!93) a!2862 mask!2687) lt!634966))))

(declare-fun b!1446989 () Bool)

(declare-fun res!978784 () Bool)

(assert (=> b!1446989 (=> (not res!978784) (not e!814968))))

(assert (=> b!1446989 (= res!978784 (validKeyInArray!0 (select (arr!47370 a!2862) j!93)))))

(declare-fun b!1446990 () Bool)

(assert (=> b!1446990 (= e!814972 e!814967)))

(declare-fun res!978780 () Bool)

(assert (=> b!1446990 (=> (not res!978780) (not e!814967))))

(assert (=> b!1446990 (= res!978780 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47370 a!2862) j!93) mask!2687) (select (arr!47370 a!2862) j!93) a!2862 mask!2687) lt!634966))))

(assert (=> b!1446990 (= lt!634966 (Intermediate!11645 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1446991 () Bool)

(declare-fun res!978779 () Bool)

(assert (=> b!1446991 (=> (not res!978779) (not e!814968))))

(assert (=> b!1446991 (= res!978779 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124808 res!978783) b!1446979))

(assert (= (and b!1446979 res!978774) b!1446986))

(assert (= (and b!1446986 res!978788) b!1446989))

(assert (= (and b!1446989 res!978784) b!1446991))

(assert (= (and b!1446991 res!978779) b!1446977))

(assert (= (and b!1446977 res!978773) b!1446973))

(assert (= (and b!1446973 res!978782) b!1446982))

(assert (= (and b!1446982 res!978787) b!1446990))

(assert (= (and b!1446990 res!978780) b!1446988))

(assert (= (and b!1446988 res!978777) b!1446974))

(assert (= (and b!1446974 res!978776) b!1446985))

(assert (= (and b!1446985 c!133613) b!1446976))

(assert (= (and b!1446985 (not c!133613)) b!1446987))

(assert (= (and b!1446985 res!978786) b!1446975))

(assert (= (and b!1446975 res!978775) b!1446984))

(assert (= (and b!1446984 res!978781) b!1446983))

(assert (= (and b!1446983 (not res!978785)) b!1446981))

(assert (= (and b!1446981 res!978778) b!1446980))

(assert (= (and b!1446984 (not res!978789)) b!1446978))

(declare-fun m!1335867 () Bool)

(assert (=> b!1446976 m!1335867))

(declare-fun m!1335869 () Bool)

(assert (=> b!1446978 m!1335869))

(assert (=> b!1446978 m!1335869))

(declare-fun m!1335871 () Bool)

(assert (=> b!1446978 m!1335871))

(declare-fun m!1335873 () Bool)

(assert (=> start!124808 m!1335873))

(declare-fun m!1335875 () Bool)

(assert (=> start!124808 m!1335875))

(declare-fun m!1335877 () Bool)

(assert (=> b!1446977 m!1335877))

(assert (=> b!1446989 m!1335869))

(assert (=> b!1446989 m!1335869))

(declare-fun m!1335879 () Bool)

(assert (=> b!1446989 m!1335879))

(declare-fun m!1335881 () Bool)

(assert (=> b!1446986 m!1335881))

(assert (=> b!1446986 m!1335881))

(declare-fun m!1335883 () Bool)

(assert (=> b!1446986 m!1335883))

(declare-fun m!1335885 () Bool)

(assert (=> b!1446982 m!1335885))

(declare-fun m!1335887 () Bool)

(assert (=> b!1446982 m!1335887))

(assert (=> b!1446988 m!1335869))

(assert (=> b!1446988 m!1335869))

(declare-fun m!1335889 () Bool)

(assert (=> b!1446988 m!1335889))

(assert (=> b!1446990 m!1335869))

(assert (=> b!1446990 m!1335869))

(declare-fun m!1335891 () Bool)

(assert (=> b!1446990 m!1335891))

(assert (=> b!1446990 m!1335891))

(assert (=> b!1446990 m!1335869))

(declare-fun m!1335893 () Bool)

(assert (=> b!1446990 m!1335893))

(declare-fun m!1335895 () Bool)

(assert (=> b!1446974 m!1335895))

(assert (=> b!1446974 m!1335895))

(declare-fun m!1335897 () Bool)

(assert (=> b!1446974 m!1335897))

(assert (=> b!1446974 m!1335885))

(declare-fun m!1335899 () Bool)

(assert (=> b!1446974 m!1335899))

(declare-fun m!1335901 () Bool)

(assert (=> b!1446983 m!1335901))

(assert (=> b!1446983 m!1335885))

(declare-fun m!1335903 () Bool)

(assert (=> b!1446983 m!1335903))

(assert (=> b!1446983 m!1335869))

(declare-fun m!1335905 () Bool)

(assert (=> b!1446987 m!1335905))

(declare-fun m!1335907 () Bool)

(assert (=> b!1446987 m!1335907))

(declare-fun m!1335909 () Bool)

(assert (=> b!1446984 m!1335909))

(assert (=> b!1446984 m!1335885))

(declare-fun m!1335911 () Bool)

(assert (=> b!1446984 m!1335911))

(assert (=> b!1446984 m!1335903))

(assert (=> b!1446984 m!1335901))

(assert (=> b!1446984 m!1335869))

(declare-fun m!1335913 () Bool)

(assert (=> b!1446984 m!1335913))

(declare-fun m!1335915 () Bool)

(assert (=> b!1446984 m!1335915))

(assert (=> b!1446984 m!1335869))

(declare-fun m!1335917 () Bool)

(assert (=> b!1446991 m!1335917))

(assert (=> b!1446981 m!1335869))

(assert (=> b!1446981 m!1335869))

(declare-fun m!1335919 () Bool)

(assert (=> b!1446981 m!1335919))

(push 1)

