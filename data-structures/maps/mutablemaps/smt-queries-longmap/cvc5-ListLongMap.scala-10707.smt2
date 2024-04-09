; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125422 () Bool)

(assert start!125422)

(declare-fun b!1465928 () Bool)

(declare-fun res!994832 () Bool)

(declare-fun e!823670 () Bool)

(assert (=> b!1465928 (=> (not res!994832) (not e!823670))))

(declare-fun e!823662 () Bool)

(assert (=> b!1465928 (= res!994832 e!823662)))

(declare-fun c!135067 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1465928 (= c!135067 (bvsle x!665 intermediateAfterX!19))))

(declare-fun lt!641542 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11952 0))(
  ( (MissingZero!11952 (index!50199 (_ BitVec 32))) (Found!11952 (index!50200 (_ BitVec 32))) (Intermediate!11952 (undefined!12764 Bool) (index!50201 (_ BitVec 32)) (x!131780 (_ BitVec 32))) (Undefined!11952) (MissingVacant!11952 (index!50202 (_ BitVec 32))) )
))
(declare-fun lt!641538 () SeekEntryResult!11952)

(declare-fun lt!641540 () (_ BitVec 64))

(declare-fun e!823663 () Bool)

(declare-datatypes ((array!98787 0))(
  ( (array!98788 (arr!47677 (Array (_ BitVec 32) (_ BitVec 64))) (size!48228 (_ BitVec 32))) )
))
(declare-fun lt!641535 () array!98787)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun b!1465929 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98787 (_ BitVec 32)) SeekEntryResult!11952)

(assert (=> b!1465929 (= e!823663 (not (= lt!641538 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641542 lt!641540 lt!641535 mask!2687))))))

(declare-fun b!1465930 () Bool)

(declare-fun res!994834 () Bool)

(declare-fun e!823669 () Bool)

(assert (=> b!1465930 (=> (not res!994834) (not e!823669))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98787)

(assert (=> b!1465930 (= res!994834 (and (= (size!48228 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48228 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48228 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1465931 () Bool)

(declare-fun e!823665 () Bool)

(assert (=> b!1465931 (= e!823669 e!823665)))

(declare-fun res!994827 () Bool)

(assert (=> b!1465931 (=> (not res!994827) (not e!823665))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1465931 (= res!994827 (= (select (store (arr!47677 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1465931 (= lt!641535 (array!98788 (store (arr!47677 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48228 a!2862)))))

(declare-fun b!1465932 () Bool)

(declare-fun res!994833 () Bool)

(assert (=> b!1465932 (=> (not res!994833) (not e!823670))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1465932 (= res!994833 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1465933 () Bool)

(declare-fun e!823667 () Bool)

(assert (=> b!1465933 (= e!823670 (not e!823667))))

(declare-fun res!994823 () Bool)

(assert (=> b!1465933 (=> res!994823 e!823667)))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1465933 (= res!994823 (or (and (= (select (arr!47677 a!2862) index!646) (select (store (arr!47677 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47677 a!2862) index!646) (select (arr!47677 a!2862) j!93))) (= (select (arr!47677 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun lt!641537 () SeekEntryResult!11952)

(assert (=> b!1465933 (and (= lt!641537 (Found!11952 j!93)) (or (= (select (arr!47677 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47677 a!2862) intermediateBeforeIndex!19) (select (arr!47677 a!2862) j!93))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98787 (_ BitVec 32)) SeekEntryResult!11952)

(assert (=> b!1465933 (= lt!641537 (seekEntryOrOpen!0 (select (arr!47677 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98787 (_ BitVec 32)) Bool)

(assert (=> b!1465933 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49348 0))(
  ( (Unit!49349) )
))
(declare-fun lt!641539 () Unit!49348)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98787 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49348)

(assert (=> b!1465933 (= lt!641539 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1465934 () Bool)

(declare-fun res!994835 () Bool)

(declare-fun e!823668 () Bool)

(assert (=> b!1465934 (=> res!994835 e!823668)))

(declare-fun lt!641536 () SeekEntryResult!11952)

(assert (=> b!1465934 (= res!994835 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641542 (select (arr!47677 a!2862) j!93) a!2862 mask!2687) lt!641536)))))

(declare-fun b!1465935 () Bool)

(declare-fun res!994830 () Bool)

(assert (=> b!1465935 (=> res!994830 e!823668)))

(assert (=> b!1465935 (= res!994830 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1465936 () Bool)

(declare-fun res!994819 () Bool)

(assert (=> b!1465936 (=> res!994819 e!823668)))

(assert (=> b!1465936 (= res!994819 e!823663)))

(declare-fun c!135068 () Bool)

(assert (=> b!1465936 (= c!135068 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1465937 () Bool)

(declare-fun res!994836 () Bool)

(assert (=> b!1465937 (=> (not res!994836) (not e!823669))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1465937 (= res!994836 (validKeyInArray!0 (select (arr!47677 a!2862) j!93)))))

(declare-fun b!1465938 () Bool)

(declare-fun res!994831 () Bool)

(assert (=> b!1465938 (=> (not res!994831) (not e!823669))))

(assert (=> b!1465938 (= res!994831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1465939 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98787 (_ BitVec 32)) SeekEntryResult!11952)

(assert (=> b!1465939 (= e!823663 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641542 intermediateAfterIndex!19 lt!641540 lt!641535 mask!2687) (seekEntryOrOpen!0 lt!641540 lt!641535 mask!2687))))))

(declare-fun b!1465927 () Bool)

(declare-fun res!994829 () Bool)

(assert (=> b!1465927 (=> (not res!994829) (not e!823669))))

(assert (=> b!1465927 (= res!994829 (validKeyInArray!0 (select (arr!47677 a!2862) i!1006)))))

(declare-fun res!994822 () Bool)

(assert (=> start!125422 (=> (not res!994822) (not e!823669))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125422 (= res!994822 (validMask!0 mask!2687))))

(assert (=> start!125422 e!823669))

(assert (=> start!125422 true))

(declare-fun array_inv!36622 (array!98787) Bool)

(assert (=> start!125422 (array_inv!36622 a!2862)))

(declare-fun b!1465940 () Bool)

(assert (=> b!1465940 (= e!823662 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641540 lt!641535 mask!2687) (seekEntryOrOpen!0 lt!641540 lt!641535 mask!2687)))))

(declare-fun b!1465941 () Bool)

(assert (=> b!1465941 (= e!823667 e!823668)))

(declare-fun res!994826 () Bool)

(assert (=> b!1465941 (=> res!994826 e!823668)))

(assert (=> b!1465941 (= res!994826 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641542 #b00000000000000000000000000000000) (bvsge lt!641542 (size!48228 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1465941 (= lt!641542 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1465942 () Bool)

(declare-fun res!994825 () Bool)

(assert (=> b!1465942 (=> (not res!994825) (not e!823669))))

(assert (=> b!1465942 (= res!994825 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48228 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48228 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48228 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1465943 () Bool)

(declare-fun res!994820 () Bool)

(declare-fun e!823666 () Bool)

(assert (=> b!1465943 (=> (not res!994820) (not e!823666))))

(assert (=> b!1465943 (= res!994820 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47677 a!2862) j!93) a!2862 mask!2687) lt!641536))))

(declare-fun b!1465944 () Bool)

(assert (=> b!1465944 (= e!823668 (bvsge mask!2687 #b00000000000000000000000000000000))))

(assert (=> b!1465944 (= lt!641537 (seekEntryOrOpen!0 lt!641540 lt!641535 mask!2687))))

(declare-fun lt!641541 () Unit!49348)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98787 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49348)

(assert (=> b!1465944 (= lt!641541 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!641542 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1465945 () Bool)

(assert (=> b!1465945 (= e!823666 e!823670)))

(declare-fun res!994824 () Bool)

(assert (=> b!1465945 (=> (not res!994824) (not e!823670))))

(assert (=> b!1465945 (= res!994824 (= lt!641538 (Intermediate!11952 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1465945 (= lt!641538 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641540 mask!2687) lt!641540 lt!641535 mask!2687))))

(assert (=> b!1465945 (= lt!641540 (select (store (arr!47677 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1465946 () Bool)

(declare-fun res!994821 () Bool)

(assert (=> b!1465946 (=> (not res!994821) (not e!823669))))

(declare-datatypes ((List!34358 0))(
  ( (Nil!34355) (Cons!34354 (h!35704 (_ BitVec 64)) (t!49059 List!34358)) )
))
(declare-fun arrayNoDuplicates!0 (array!98787 (_ BitVec 32) List!34358) Bool)

(assert (=> b!1465946 (= res!994821 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34355))))

(declare-fun b!1465947 () Bool)

(assert (=> b!1465947 (= e!823662 (= lt!641538 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641540 lt!641535 mask!2687)))))

(declare-fun b!1465948 () Bool)

(assert (=> b!1465948 (= e!823665 e!823666)))

(declare-fun res!994828 () Bool)

(assert (=> b!1465948 (=> (not res!994828) (not e!823666))))

(assert (=> b!1465948 (= res!994828 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47677 a!2862) j!93) mask!2687) (select (arr!47677 a!2862) j!93) a!2862 mask!2687) lt!641536))))

(assert (=> b!1465948 (= lt!641536 (Intermediate!11952 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!125422 res!994822) b!1465930))

(assert (= (and b!1465930 res!994834) b!1465927))

(assert (= (and b!1465927 res!994829) b!1465937))

(assert (= (and b!1465937 res!994836) b!1465938))

(assert (= (and b!1465938 res!994831) b!1465946))

(assert (= (and b!1465946 res!994821) b!1465942))

(assert (= (and b!1465942 res!994825) b!1465931))

(assert (= (and b!1465931 res!994827) b!1465948))

(assert (= (and b!1465948 res!994828) b!1465943))

(assert (= (and b!1465943 res!994820) b!1465945))

(assert (= (and b!1465945 res!994824) b!1465928))

(assert (= (and b!1465928 c!135067) b!1465947))

(assert (= (and b!1465928 (not c!135067)) b!1465940))

(assert (= (and b!1465928 res!994832) b!1465932))

(assert (= (and b!1465932 res!994833) b!1465933))

(assert (= (and b!1465933 (not res!994823)) b!1465941))

(assert (= (and b!1465941 (not res!994826)) b!1465934))

(assert (= (and b!1465934 (not res!994835)) b!1465936))

(assert (= (and b!1465936 c!135068) b!1465929))

(assert (= (and b!1465936 (not c!135068)) b!1465939))

(assert (= (and b!1465936 (not res!994819)) b!1465935))

(assert (= (and b!1465935 (not res!994830)) b!1465944))

(declare-fun m!1353015 () Bool)

(assert (=> b!1465945 m!1353015))

(assert (=> b!1465945 m!1353015))

(declare-fun m!1353017 () Bool)

(assert (=> b!1465945 m!1353017))

(declare-fun m!1353019 () Bool)

(assert (=> b!1465945 m!1353019))

(declare-fun m!1353021 () Bool)

(assert (=> b!1465945 m!1353021))

(declare-fun m!1353023 () Bool)

(assert (=> b!1465940 m!1353023))

(declare-fun m!1353025 () Bool)

(assert (=> b!1465940 m!1353025))

(declare-fun m!1353027 () Bool)

(assert (=> start!125422 m!1353027))

(declare-fun m!1353029 () Bool)

(assert (=> start!125422 m!1353029))

(declare-fun m!1353031 () Bool)

(assert (=> b!1465946 m!1353031))

(declare-fun m!1353033 () Bool)

(assert (=> b!1465939 m!1353033))

(assert (=> b!1465939 m!1353025))

(assert (=> b!1465931 m!1353019))

(declare-fun m!1353035 () Bool)

(assert (=> b!1465931 m!1353035))

(declare-fun m!1353037 () Bool)

(assert (=> b!1465938 m!1353037))

(declare-fun m!1353039 () Bool)

(assert (=> b!1465948 m!1353039))

(assert (=> b!1465948 m!1353039))

(declare-fun m!1353041 () Bool)

(assert (=> b!1465948 m!1353041))

(assert (=> b!1465948 m!1353041))

(assert (=> b!1465948 m!1353039))

(declare-fun m!1353043 () Bool)

(assert (=> b!1465948 m!1353043))

(assert (=> b!1465943 m!1353039))

(assert (=> b!1465943 m!1353039))

(declare-fun m!1353045 () Bool)

(assert (=> b!1465943 m!1353045))

(assert (=> b!1465937 m!1353039))

(assert (=> b!1465937 m!1353039))

(declare-fun m!1353047 () Bool)

(assert (=> b!1465937 m!1353047))

(declare-fun m!1353049 () Bool)

(assert (=> b!1465927 m!1353049))

(assert (=> b!1465927 m!1353049))

(declare-fun m!1353051 () Bool)

(assert (=> b!1465927 m!1353051))

(declare-fun m!1353053 () Bool)

(assert (=> b!1465947 m!1353053))

(assert (=> b!1465934 m!1353039))

(assert (=> b!1465934 m!1353039))

(declare-fun m!1353055 () Bool)

(assert (=> b!1465934 m!1353055))

(declare-fun m!1353057 () Bool)

(assert (=> b!1465929 m!1353057))

(declare-fun m!1353059 () Bool)

(assert (=> b!1465933 m!1353059))

(assert (=> b!1465933 m!1353019))

(declare-fun m!1353061 () Bool)

(assert (=> b!1465933 m!1353061))

(declare-fun m!1353063 () Bool)

(assert (=> b!1465933 m!1353063))

(declare-fun m!1353065 () Bool)

(assert (=> b!1465933 m!1353065))

(assert (=> b!1465933 m!1353039))

(declare-fun m!1353067 () Bool)

(assert (=> b!1465933 m!1353067))

(declare-fun m!1353069 () Bool)

(assert (=> b!1465933 m!1353069))

(assert (=> b!1465933 m!1353039))

(declare-fun m!1353071 () Bool)

(assert (=> b!1465941 m!1353071))

(assert (=> b!1465944 m!1353025))

(declare-fun m!1353073 () Bool)

(assert (=> b!1465944 m!1353073))

(push 1)

