; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126266 () Bool)

(assert start!126266)

(declare-fun b!1478942 () Bool)

(declare-fun res!1005014 () Bool)

(declare-fun e!829627 () Bool)

(assert (=> b!1478942 (=> (not res!1005014) (not e!829627))))

(declare-datatypes ((array!99289 0))(
  ( (array!99290 (arr!47919 (Array (_ BitVec 32) (_ BitVec 64))) (size!48470 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99289)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99289 (_ BitVec 32)) Bool)

(assert (=> b!1478942 (= res!1005014 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1478943 () Bool)

(declare-fun res!1005004 () Bool)

(declare-fun e!829624 () Bool)

(assert (=> b!1478943 (=> (not res!1005004) (not e!829624))))

(declare-datatypes ((SeekEntryResult!12182 0))(
  ( (MissingZero!12182 (index!51119 (_ BitVec 32))) (Found!12182 (index!51120 (_ BitVec 32))) (Intermediate!12182 (undefined!12994 Bool) (index!51121 (_ BitVec 32)) (x!132704 (_ BitVec 32))) (Undefined!12182) (MissingVacant!12182 (index!51122 (_ BitVec 32))) )
))
(declare-fun lt!645820 () SeekEntryResult!12182)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99289 (_ BitVec 32)) SeekEntryResult!12182)

(assert (=> b!1478943 (= res!1005004 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47919 a!2862) j!93) a!2862 mask!2687) lt!645820))))

(declare-fun b!1478944 () Bool)

(declare-fun res!1005011 () Bool)

(declare-fun e!829623 () Bool)

(assert (=> b!1478944 (=> (not res!1005011) (not e!829623))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1478944 (= res!1005011 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1478945 () Bool)

(declare-fun e!829622 () Bool)

(declare-fun e!829625 () Bool)

(assert (=> b!1478945 (= e!829622 e!829625)))

(declare-fun res!1005008 () Bool)

(assert (=> b!1478945 (=> (not res!1005008) (not e!829625))))

(declare-fun lt!645816 () SeekEntryResult!12182)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99289 (_ BitVec 32)) SeekEntryResult!12182)

(assert (=> b!1478945 (= res!1005008 (= lt!645816 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47919 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1478946 () Bool)

(declare-fun res!1005015 () Bool)

(assert (=> b!1478946 (=> (not res!1005015) (not e!829627))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1478946 (= res!1005015 (validKeyInArray!0 (select (arr!47919 a!2862) j!93)))))

(declare-fun e!829626 () Bool)

(declare-fun lt!645815 () (_ BitVec 64))

(declare-fun b!1478947 () Bool)

(declare-fun lt!645819 () array!99289)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99289 (_ BitVec 32)) SeekEntryResult!12182)

(assert (=> b!1478947 (= e!829626 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645815 lt!645819 mask!2687) (seekEntryOrOpen!0 lt!645815 lt!645819 mask!2687)))))

(declare-fun b!1478948 () Bool)

(declare-fun res!1005003 () Bool)

(assert (=> b!1478948 (=> (not res!1005003) (not e!829627))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1478948 (= res!1005003 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48470 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48470 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48470 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1478949 () Bool)

(declare-fun res!1005007 () Bool)

(assert (=> b!1478949 (=> (not res!1005007) (not e!829627))))

(declare-datatypes ((List!34600 0))(
  ( (Nil!34597) (Cons!34596 (h!35964 (_ BitVec 64)) (t!49301 List!34600)) )
))
(declare-fun arrayNoDuplicates!0 (array!99289 (_ BitVec 32) List!34600) Bool)

(assert (=> b!1478949 (= res!1005007 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34597))))

(declare-fun b!1478950 () Bool)

(declare-fun e!829620 () Bool)

(assert (=> b!1478950 (= e!829620 e!829624)))

(declare-fun res!1005002 () Bool)

(assert (=> b!1478950 (=> (not res!1005002) (not e!829624))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1478950 (= res!1005002 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47919 a!2862) j!93) mask!2687) (select (arr!47919 a!2862) j!93) a!2862 mask!2687) lt!645820))))

(assert (=> b!1478950 (= lt!645820 (Intermediate!12182 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1478952 () Bool)

(assert (=> b!1478952 (= e!829624 e!829623)))

(declare-fun res!1005013 () Bool)

(assert (=> b!1478952 (=> (not res!1005013) (not e!829623))))

(declare-fun lt!645818 () SeekEntryResult!12182)

(assert (=> b!1478952 (= res!1005013 (= lt!645818 (Intermediate!12182 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1478952 (= lt!645818 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645815 mask!2687) lt!645815 lt!645819 mask!2687))))

(assert (=> b!1478952 (= lt!645815 (select (store (arr!47919 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1478953 () Bool)

(assert (=> b!1478953 (= e!829626 (= lt!645818 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645815 lt!645819 mask!2687)))))

(declare-fun b!1478954 () Bool)

(declare-fun e!829621 () Bool)

(assert (=> b!1478954 (= e!829621 e!829622)))

(declare-fun res!1005001 () Bool)

(assert (=> b!1478954 (=> res!1005001 e!829622)))

(assert (=> b!1478954 (= res!1005001 (or (and (= (select (arr!47919 a!2862) index!646) (select (store (arr!47919 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47919 a!2862) index!646) (select (arr!47919 a!2862) j!93))) (not (= (select (arr!47919 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1478955 () Bool)

(assert (=> b!1478955 (= e!829623 (not true))))

(assert (=> b!1478955 e!829621))

(declare-fun res!1005009 () Bool)

(assert (=> b!1478955 (=> (not res!1005009) (not e!829621))))

(assert (=> b!1478955 (= res!1005009 (and (= lt!645816 (Found!12182 j!93)) (or (= (select (arr!47919 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47919 a!2862) intermediateBeforeIndex!19) (select (arr!47919 a!2862) j!93)))))))

(assert (=> b!1478955 (= lt!645816 (seekEntryOrOpen!0 (select (arr!47919 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1478955 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49652 0))(
  ( (Unit!49653) )
))
(declare-fun lt!645817 () Unit!49652)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99289 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49652)

(assert (=> b!1478955 (= lt!645817 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1478956 () Bool)

(declare-fun res!1005010 () Bool)

(assert (=> b!1478956 (=> (not res!1005010) (not e!829627))))

(assert (=> b!1478956 (= res!1005010 (and (= (size!48470 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48470 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48470 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1478957 () Bool)

(assert (=> b!1478957 (= e!829625 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1478958 () Bool)

(assert (=> b!1478958 (= e!829627 e!829620)))

(declare-fun res!1005006 () Bool)

(assert (=> b!1478958 (=> (not res!1005006) (not e!829620))))

(assert (=> b!1478958 (= res!1005006 (= (select (store (arr!47919 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1478958 (= lt!645819 (array!99290 (store (arr!47919 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48470 a!2862)))))

(declare-fun b!1478959 () Bool)

(declare-fun res!1005012 () Bool)

(assert (=> b!1478959 (=> (not res!1005012) (not e!829627))))

(assert (=> b!1478959 (= res!1005012 (validKeyInArray!0 (select (arr!47919 a!2862) i!1006)))))

(declare-fun res!1005000 () Bool)

(assert (=> start!126266 (=> (not res!1005000) (not e!829627))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126266 (= res!1005000 (validMask!0 mask!2687))))

(assert (=> start!126266 e!829627))

(assert (=> start!126266 true))

(declare-fun array_inv!36864 (array!99289) Bool)

(assert (=> start!126266 (array_inv!36864 a!2862)))

(declare-fun b!1478951 () Bool)

(declare-fun res!1005005 () Bool)

(assert (=> b!1478951 (=> (not res!1005005) (not e!829623))))

(assert (=> b!1478951 (= res!1005005 e!829626)))

(declare-fun c!136493 () Bool)

(assert (=> b!1478951 (= c!136493 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!126266 res!1005000) b!1478956))

(assert (= (and b!1478956 res!1005010) b!1478959))

(assert (= (and b!1478959 res!1005012) b!1478946))

(assert (= (and b!1478946 res!1005015) b!1478942))

(assert (= (and b!1478942 res!1005014) b!1478949))

(assert (= (and b!1478949 res!1005007) b!1478948))

(assert (= (and b!1478948 res!1005003) b!1478958))

(assert (= (and b!1478958 res!1005006) b!1478950))

(assert (= (and b!1478950 res!1005002) b!1478943))

(assert (= (and b!1478943 res!1005004) b!1478952))

(assert (= (and b!1478952 res!1005013) b!1478951))

(assert (= (and b!1478951 c!136493) b!1478953))

(assert (= (and b!1478951 (not c!136493)) b!1478947))

(assert (= (and b!1478951 res!1005005) b!1478944))

(assert (= (and b!1478944 res!1005011) b!1478955))

(assert (= (and b!1478955 res!1005009) b!1478954))

(assert (= (and b!1478954 (not res!1005001)) b!1478945))

(assert (= (and b!1478945 res!1005008) b!1478957))

(declare-fun m!1364891 () Bool)

(assert (=> b!1478952 m!1364891))

(assert (=> b!1478952 m!1364891))

(declare-fun m!1364893 () Bool)

(assert (=> b!1478952 m!1364893))

(declare-fun m!1364895 () Bool)

(assert (=> b!1478952 m!1364895))

(declare-fun m!1364897 () Bool)

(assert (=> b!1478952 m!1364897))

(declare-fun m!1364899 () Bool)

(assert (=> start!126266 m!1364899))

(declare-fun m!1364901 () Bool)

(assert (=> start!126266 m!1364901))

(assert (=> b!1478958 m!1364895))

(declare-fun m!1364903 () Bool)

(assert (=> b!1478958 m!1364903))

(declare-fun m!1364905 () Bool)

(assert (=> b!1478945 m!1364905))

(assert (=> b!1478945 m!1364905))

(declare-fun m!1364907 () Bool)

(assert (=> b!1478945 m!1364907))

(declare-fun m!1364909 () Bool)

(assert (=> b!1478954 m!1364909))

(assert (=> b!1478954 m!1364895))

(declare-fun m!1364911 () Bool)

(assert (=> b!1478954 m!1364911))

(assert (=> b!1478954 m!1364905))

(declare-fun m!1364913 () Bool)

(assert (=> b!1478942 m!1364913))

(declare-fun m!1364915 () Bool)

(assert (=> b!1478949 m!1364915))

(declare-fun m!1364917 () Bool)

(assert (=> b!1478947 m!1364917))

(declare-fun m!1364919 () Bool)

(assert (=> b!1478947 m!1364919))

(assert (=> b!1478946 m!1364905))

(assert (=> b!1478946 m!1364905))

(declare-fun m!1364921 () Bool)

(assert (=> b!1478946 m!1364921))

(declare-fun m!1364923 () Bool)

(assert (=> b!1478953 m!1364923))

(declare-fun m!1364925 () Bool)

(assert (=> b!1478955 m!1364925))

(declare-fun m!1364927 () Bool)

(assert (=> b!1478955 m!1364927))

(assert (=> b!1478955 m!1364905))

(declare-fun m!1364929 () Bool)

(assert (=> b!1478955 m!1364929))

(declare-fun m!1364931 () Bool)

(assert (=> b!1478955 m!1364931))

(assert (=> b!1478955 m!1364905))

(declare-fun m!1364933 () Bool)

(assert (=> b!1478959 m!1364933))

(assert (=> b!1478959 m!1364933))

(declare-fun m!1364935 () Bool)

(assert (=> b!1478959 m!1364935))

(assert (=> b!1478943 m!1364905))

(assert (=> b!1478943 m!1364905))

(declare-fun m!1364937 () Bool)

(assert (=> b!1478943 m!1364937))

(assert (=> b!1478950 m!1364905))

(assert (=> b!1478950 m!1364905))

(declare-fun m!1364939 () Bool)

(assert (=> b!1478950 m!1364939))

(assert (=> b!1478950 m!1364939))

(assert (=> b!1478950 m!1364905))

(declare-fun m!1364941 () Bool)

(assert (=> b!1478950 m!1364941))

(push 1)

