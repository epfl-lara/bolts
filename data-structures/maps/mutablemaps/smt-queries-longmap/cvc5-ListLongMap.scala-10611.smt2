; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124846 () Bool)

(assert start!124846)

(declare-fun b!1448056 () Bool)

(declare-fun e!815542 () Bool)

(declare-fun e!815546 () Bool)

(assert (=> b!1448056 (= e!815542 e!815546)))

(declare-fun res!979747 () Bool)

(assert (=> b!1448056 (=> (not res!979747) (not e!815546))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11664 0))(
  ( (MissingZero!11664 (index!49047 (_ BitVec 32))) (Found!11664 (index!49048 (_ BitVec 32))) (Intermediate!11664 (undefined!12476 Bool) (index!49049 (_ BitVec 32)) (x!130724 (_ BitVec 32))) (Undefined!11664) (MissingVacant!11664 (index!49050 (_ BitVec 32))) )
))
(declare-fun lt!635365 () SeekEntryResult!11664)

(declare-datatypes ((array!98211 0))(
  ( (array!98212 (arr!47389 (Array (_ BitVec 32) (_ BitVec 64))) (size!47940 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98211)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98211 (_ BitVec 32)) SeekEntryResult!11664)

(assert (=> b!1448056 (= res!979747 (= lt!635365 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47389 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1448058 () Bool)

(declare-fun e!815541 () Bool)

(assert (=> b!1448058 (= e!815541 true)))

(declare-fun lt!635363 () SeekEntryResult!11664)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1448058 (= lt!635363 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47389 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1448059 () Bool)

(declare-fun res!979758 () Bool)

(declare-fun e!815537 () Bool)

(assert (=> b!1448059 (=> (not res!979758) (not e!815537))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1448059 (= res!979758 (validKeyInArray!0 (select (arr!47389 a!2862) i!1006)))))

(declare-fun b!1448060 () Bool)

(declare-fun res!979750 () Bool)

(declare-fun e!815539 () Bool)

(assert (=> b!1448060 (=> (not res!979750) (not e!815539))))

(declare-fun e!815545 () Bool)

(assert (=> b!1448060 (= res!979750 e!815545)))

(declare-fun c!133670 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1448060 (= c!133670 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1448061 () Bool)

(assert (=> b!1448061 (= e!815539 (not e!815541))))

(declare-fun res!979742 () Bool)

(assert (=> b!1448061 (=> res!979742 e!815541)))

(assert (=> b!1448061 (= res!979742 (or (and (= (select (arr!47389 a!2862) index!646) (select (store (arr!47389 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47389 a!2862) index!646) (select (arr!47389 a!2862) j!93))) (not (= (select (arr!47389 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47389 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!815538 () Bool)

(assert (=> b!1448061 e!815538))

(declare-fun res!979752 () Bool)

(assert (=> b!1448061 (=> (not res!979752) (not e!815538))))

(assert (=> b!1448061 (= res!979752 (and (= lt!635365 (Found!11664 j!93)) (or (= (select (arr!47389 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47389 a!2862) intermediateBeforeIndex!19) (select (arr!47389 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98211 (_ BitVec 32)) SeekEntryResult!11664)

(assert (=> b!1448061 (= lt!635365 (seekEntryOrOpen!0 (select (arr!47389 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98211 (_ BitVec 32)) Bool)

(assert (=> b!1448061 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48772 0))(
  ( (Unit!48773) )
))
(declare-fun lt!635364 () Unit!48772)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98211 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48772)

(assert (=> b!1448061 (= lt!635364 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1448062 () Bool)

(declare-fun res!979755 () Bool)

(assert (=> b!1448062 (=> (not res!979755) (not e!815537))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1448062 (= res!979755 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47940 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47940 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47940 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun lt!635360 () array!98211)

(declare-fun lt!635361 () SeekEntryResult!11664)

(declare-fun lt!635359 () (_ BitVec 64))

(declare-fun b!1448063 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98211 (_ BitVec 32)) SeekEntryResult!11664)

(assert (=> b!1448063 (= e!815545 (= lt!635361 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635359 lt!635360 mask!2687)))))

(declare-fun b!1448064 () Bool)

(declare-fun res!979746 () Bool)

(assert (=> b!1448064 (=> (not res!979746) (not e!815537))))

(assert (=> b!1448064 (= res!979746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1448065 () Bool)

(declare-fun e!815540 () Bool)

(assert (=> b!1448065 (= e!815537 e!815540)))

(declare-fun res!979757 () Bool)

(assert (=> b!1448065 (=> (not res!979757) (not e!815540))))

(assert (=> b!1448065 (= res!979757 (= (select (store (arr!47389 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1448065 (= lt!635360 (array!98212 (store (arr!47389 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47940 a!2862)))))

(declare-fun b!1448066 () Bool)

(assert (=> b!1448066 (= e!815546 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1448067 () Bool)

(declare-fun res!979751 () Bool)

(assert (=> b!1448067 (=> (not res!979751) (not e!815537))))

(assert (=> b!1448067 (= res!979751 (and (= (size!47940 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47940 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47940 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1448068 () Bool)

(declare-fun res!979756 () Bool)

(assert (=> b!1448068 (=> (not res!979756) (not e!815537))))

(assert (=> b!1448068 (= res!979756 (validKeyInArray!0 (select (arr!47389 a!2862) j!93)))))

(declare-fun b!1448057 () Bool)

(declare-fun e!815544 () Bool)

(assert (=> b!1448057 (= e!815540 e!815544)))

(declare-fun res!979743 () Bool)

(assert (=> b!1448057 (=> (not res!979743) (not e!815544))))

(declare-fun lt!635362 () SeekEntryResult!11664)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1448057 (= res!979743 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47389 a!2862) j!93) mask!2687) (select (arr!47389 a!2862) j!93) a!2862 mask!2687) lt!635362))))

(assert (=> b!1448057 (= lt!635362 (Intermediate!11664 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!979748 () Bool)

(assert (=> start!124846 (=> (not res!979748) (not e!815537))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124846 (= res!979748 (validMask!0 mask!2687))))

(assert (=> start!124846 e!815537))

(assert (=> start!124846 true))

(declare-fun array_inv!36334 (array!98211) Bool)

(assert (=> start!124846 (array_inv!36334 a!2862)))

(declare-fun b!1448069 () Bool)

(assert (=> b!1448069 (= e!815544 e!815539)))

(declare-fun res!979754 () Bool)

(assert (=> b!1448069 (=> (not res!979754) (not e!815539))))

(assert (=> b!1448069 (= res!979754 (= lt!635361 (Intermediate!11664 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1448069 (= lt!635361 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635359 mask!2687) lt!635359 lt!635360 mask!2687))))

(assert (=> b!1448069 (= lt!635359 (select (store (arr!47389 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1448070 () Bool)

(declare-fun res!979749 () Bool)

(assert (=> b!1448070 (=> (not res!979749) (not e!815537))))

(declare-datatypes ((List!34070 0))(
  ( (Nil!34067) (Cons!34066 (h!35416 (_ BitVec 64)) (t!48771 List!34070)) )
))
(declare-fun arrayNoDuplicates!0 (array!98211 (_ BitVec 32) List!34070) Bool)

(assert (=> b!1448070 (= res!979749 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34067))))

(declare-fun b!1448071 () Bool)

(assert (=> b!1448071 (= e!815538 e!815542)))

(declare-fun res!979745 () Bool)

(assert (=> b!1448071 (=> res!979745 e!815542)))

(assert (=> b!1448071 (= res!979745 (or (and (= (select (arr!47389 a!2862) index!646) (select (store (arr!47389 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47389 a!2862) index!646) (select (arr!47389 a!2862) j!93))) (not (= (select (arr!47389 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1448072 () Bool)

(assert (=> b!1448072 (= e!815545 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635359 lt!635360 mask!2687) (seekEntryOrOpen!0 lt!635359 lt!635360 mask!2687)))))

(declare-fun b!1448073 () Bool)

(declare-fun res!979753 () Bool)

(assert (=> b!1448073 (=> (not res!979753) (not e!815544))))

(assert (=> b!1448073 (= res!979753 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47389 a!2862) j!93) a!2862 mask!2687) lt!635362))))

(declare-fun b!1448074 () Bool)

(declare-fun res!979744 () Bool)

(assert (=> b!1448074 (=> (not res!979744) (not e!815539))))

(assert (=> b!1448074 (= res!979744 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!124846 res!979748) b!1448067))

(assert (= (and b!1448067 res!979751) b!1448059))

(assert (= (and b!1448059 res!979758) b!1448068))

(assert (= (and b!1448068 res!979756) b!1448064))

(assert (= (and b!1448064 res!979746) b!1448070))

(assert (= (and b!1448070 res!979749) b!1448062))

(assert (= (and b!1448062 res!979755) b!1448065))

(assert (= (and b!1448065 res!979757) b!1448057))

(assert (= (and b!1448057 res!979743) b!1448073))

(assert (= (and b!1448073 res!979753) b!1448069))

(assert (= (and b!1448069 res!979754) b!1448060))

(assert (= (and b!1448060 c!133670) b!1448063))

(assert (= (and b!1448060 (not c!133670)) b!1448072))

(assert (= (and b!1448060 res!979750) b!1448074))

(assert (= (and b!1448074 res!979744) b!1448061))

(assert (= (and b!1448061 res!979752) b!1448071))

(assert (= (and b!1448071 (not res!979745)) b!1448056))

(assert (= (and b!1448056 res!979747) b!1448066))

(assert (= (and b!1448061 (not res!979742)) b!1448058))

(declare-fun m!1336893 () Bool)

(assert (=> b!1448061 m!1336893))

(declare-fun m!1336895 () Bool)

(assert (=> b!1448061 m!1336895))

(declare-fun m!1336897 () Bool)

(assert (=> b!1448061 m!1336897))

(declare-fun m!1336899 () Bool)

(assert (=> b!1448061 m!1336899))

(declare-fun m!1336901 () Bool)

(assert (=> b!1448061 m!1336901))

(declare-fun m!1336903 () Bool)

(assert (=> b!1448061 m!1336903))

(declare-fun m!1336905 () Bool)

(assert (=> b!1448061 m!1336905))

(declare-fun m!1336907 () Bool)

(assert (=> b!1448061 m!1336907))

(assert (=> b!1448061 m!1336903))

(assert (=> b!1448068 m!1336903))

(assert (=> b!1448068 m!1336903))

(declare-fun m!1336909 () Bool)

(assert (=> b!1448068 m!1336909))

(assert (=> b!1448057 m!1336903))

(assert (=> b!1448057 m!1336903))

(declare-fun m!1336911 () Bool)

(assert (=> b!1448057 m!1336911))

(assert (=> b!1448057 m!1336911))

(assert (=> b!1448057 m!1336903))

(declare-fun m!1336913 () Bool)

(assert (=> b!1448057 m!1336913))

(declare-fun m!1336915 () Bool)

(assert (=> b!1448072 m!1336915))

(declare-fun m!1336917 () Bool)

(assert (=> b!1448072 m!1336917))

(declare-fun m!1336919 () Bool)

(assert (=> b!1448063 m!1336919))

(assert (=> b!1448056 m!1336903))

(assert (=> b!1448056 m!1336903))

(declare-fun m!1336921 () Bool)

(assert (=> b!1448056 m!1336921))

(assert (=> b!1448071 m!1336901))

(assert (=> b!1448071 m!1336895))

(assert (=> b!1448071 m!1336899))

(assert (=> b!1448071 m!1336903))

(declare-fun m!1336923 () Bool)

(assert (=> b!1448069 m!1336923))

(assert (=> b!1448069 m!1336923))

(declare-fun m!1336925 () Bool)

(assert (=> b!1448069 m!1336925))

(assert (=> b!1448069 m!1336895))

(declare-fun m!1336927 () Bool)

(assert (=> b!1448069 m!1336927))

(declare-fun m!1336929 () Bool)

(assert (=> b!1448064 m!1336929))

(assert (=> b!1448065 m!1336895))

(declare-fun m!1336931 () Bool)

(assert (=> b!1448065 m!1336931))

(declare-fun m!1336933 () Bool)

(assert (=> b!1448070 m!1336933))

(assert (=> b!1448058 m!1336903))

(assert (=> b!1448058 m!1336903))

(declare-fun m!1336935 () Bool)

(assert (=> b!1448058 m!1336935))

(assert (=> b!1448073 m!1336903))

(assert (=> b!1448073 m!1336903))

(declare-fun m!1336937 () Bool)

(assert (=> b!1448073 m!1336937))

(declare-fun m!1336939 () Bool)

(assert (=> b!1448059 m!1336939))

(assert (=> b!1448059 m!1336939))

(declare-fun m!1336941 () Bool)

(assert (=> b!1448059 m!1336941))

(declare-fun m!1336943 () Bool)

(assert (=> start!124846 m!1336943))

(declare-fun m!1336945 () Bool)

(assert (=> start!124846 m!1336945))

(push 1)

