; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125178 () Bool)

(assert start!125178)

(declare-fun b!1458046 () Bool)

(declare-fun e!820192 () Bool)

(declare-fun e!820184 () Bool)

(assert (=> b!1458046 (= e!820192 e!820184)))

(declare-fun res!988341 () Bool)

(assert (=> b!1458046 (=> (not res!988341) (not e!820184))))

(declare-datatypes ((array!98543 0))(
  ( (array!98544 (arr!47555 (Array (_ BitVec 32) (_ BitVec 64))) (size!48106 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98543)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11830 0))(
  ( (MissingZero!11830 (index!49711 (_ BitVec 32))) (Found!11830 (index!49712 (_ BitVec 32))) (Intermediate!11830 (undefined!12642 Bool) (index!49713 (_ BitVec 32)) (x!131330 (_ BitVec 32))) (Undefined!11830) (MissingVacant!11830 (index!49714 (_ BitVec 32))) )
))
(declare-fun lt!638870 () SeekEntryResult!11830)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98543 (_ BitVec 32)) SeekEntryResult!11830)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1458046 (= res!988341 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47555 a!2862) j!93) mask!2687) (select (arr!47555 a!2862) j!93) a!2862 mask!2687) lt!638870))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1458046 (= lt!638870 (Intermediate!11830 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1458047 () Bool)

(declare-fun e!820191 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!638869 () array!98543)

(declare-fun lt!638875 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98543 (_ BitVec 32)) SeekEntryResult!11830)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98543 (_ BitVec 32)) SeekEntryResult!11830)

(assert (=> b!1458047 (= e!820191 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638875 lt!638869 mask!2687) (seekEntryOrOpen!0 lt!638875 lt!638869 mask!2687)))))

(declare-fun b!1458048 () Bool)

(declare-fun res!988346 () Bool)

(declare-fun e!820186 () Bool)

(assert (=> b!1458048 (=> (not res!988346) (not e!820186))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1458048 (= res!988346 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1458050 () Bool)

(declare-fun res!988345 () Bool)

(declare-fun e!820189 () Bool)

(assert (=> b!1458050 (=> (not res!988345) (not e!820189))))

(assert (=> b!1458050 (= res!988345 (= (seekEntryOrOpen!0 (select (arr!47555 a!2862) j!93) a!2862 mask!2687) (Found!11830 j!93)))))

(declare-fun b!1458051 () Bool)

(declare-fun res!988334 () Bool)

(declare-fun e!820190 () Bool)

(assert (=> b!1458051 (=> (not res!988334) (not e!820190))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1458051 (= res!988334 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48106 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48106 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48106 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1458052 () Bool)

(declare-fun res!988343 () Bool)

(assert (=> b!1458052 (=> (not res!988343) (not e!820190))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98543 (_ BitVec 32)) Bool)

(assert (=> b!1458052 (= res!988343 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1458053 () Bool)

(declare-fun e!820193 () Bool)

(assert (=> b!1458053 (= e!820186 (not e!820193))))

(declare-fun res!988342 () Bool)

(assert (=> b!1458053 (=> res!988342 e!820193)))

(assert (=> b!1458053 (= res!988342 (or (and (= (select (arr!47555 a!2862) index!646) (select (store (arr!47555 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47555 a!2862) index!646) (select (arr!47555 a!2862) j!93))) (= (select (arr!47555 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1458053 e!820189))

(declare-fun res!988331 () Bool)

(assert (=> b!1458053 (=> (not res!988331) (not e!820189))))

(assert (=> b!1458053 (= res!988331 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49104 0))(
  ( (Unit!49105) )
))
(declare-fun lt!638873 () Unit!49104)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98543 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49104)

(assert (=> b!1458053 (= lt!638873 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1458054 () Bool)

(declare-fun e!820188 () Bool)

(assert (=> b!1458054 (= e!820188 true)))

(declare-fun lt!638868 () Bool)

(declare-fun e!820187 () Bool)

(assert (=> b!1458054 (= lt!638868 e!820187)))

(declare-fun c!134372 () Bool)

(assert (=> b!1458054 (= c!134372 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1458055 () Bool)

(declare-fun lt!638871 () SeekEntryResult!11830)

(declare-fun lt!638874 () (_ BitVec 32))

(assert (=> b!1458055 (= e!820187 (not (= lt!638871 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638874 lt!638875 lt!638869 mask!2687))))))

(declare-fun b!1458056 () Bool)

(assert (=> b!1458056 (= e!820184 e!820186)))

(declare-fun res!988340 () Bool)

(assert (=> b!1458056 (=> (not res!988340) (not e!820186))))

(assert (=> b!1458056 (= res!988340 (= lt!638871 (Intermediate!11830 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1458056 (= lt!638871 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638875 mask!2687) lt!638875 lt!638869 mask!2687))))

(assert (=> b!1458056 (= lt!638875 (select (store (arr!47555 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1458057 () Bool)

(declare-fun res!988347 () Bool)

(assert (=> b!1458057 (=> (not res!988347) (not e!820190))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1458057 (= res!988347 (validKeyInArray!0 (select (arr!47555 a!2862) j!93)))))

(declare-fun b!1458058 () Bool)

(declare-fun res!988332 () Bool)

(assert (=> b!1458058 (=> res!988332 e!820188)))

(assert (=> b!1458058 (= res!988332 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638874 (select (arr!47555 a!2862) j!93) a!2862 mask!2687) lt!638870)))))

(declare-fun lt!638872 () SeekEntryResult!11830)

(declare-fun b!1458059 () Bool)

(assert (=> b!1458059 (= e!820187 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638874 intermediateAfterIndex!19 lt!638875 lt!638869 mask!2687) lt!638872)))))

(declare-fun b!1458060 () Bool)

(declare-fun res!988339 () Bool)

(assert (=> b!1458060 (=> (not res!988339) (not e!820186))))

(assert (=> b!1458060 (= res!988339 e!820191)))

(declare-fun c!134371 () Bool)

(assert (=> b!1458060 (= c!134371 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1458061 () Bool)

(assert (=> b!1458061 (= e!820190 e!820192)))

(declare-fun res!988333 () Bool)

(assert (=> b!1458061 (=> (not res!988333) (not e!820192))))

(assert (=> b!1458061 (= res!988333 (= (select (store (arr!47555 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1458061 (= lt!638869 (array!98544 (store (arr!47555 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48106 a!2862)))))

(declare-fun b!1458062 () Bool)

(assert (=> b!1458062 (= e!820191 (= lt!638871 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638875 lt!638869 mask!2687)))))

(declare-fun b!1458063 () Bool)

(assert (=> b!1458063 (= e!820189 (and (or (= (select (arr!47555 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47555 a!2862) intermediateBeforeIndex!19) (select (arr!47555 a!2862) j!93))) (let ((bdg!53398 (select (store (arr!47555 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47555 a!2862) index!646) bdg!53398) (= (select (arr!47555 a!2862) index!646) (select (arr!47555 a!2862) j!93))) (= (select (arr!47555 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53398 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun res!988336 () Bool)

(assert (=> start!125178 (=> (not res!988336) (not e!820190))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125178 (= res!988336 (validMask!0 mask!2687))))

(assert (=> start!125178 e!820190))

(assert (=> start!125178 true))

(declare-fun array_inv!36500 (array!98543) Bool)

(assert (=> start!125178 (array_inv!36500 a!2862)))

(declare-fun b!1458049 () Bool)

(declare-fun res!988338 () Bool)

(assert (=> b!1458049 (=> (not res!988338) (not e!820190))))

(assert (=> b!1458049 (= res!988338 (and (= (size!48106 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48106 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48106 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1458064 () Bool)

(declare-fun res!988330 () Bool)

(assert (=> b!1458064 (=> (not res!988330) (not e!820190))))

(declare-datatypes ((List!34236 0))(
  ( (Nil!34233) (Cons!34232 (h!35582 (_ BitVec 64)) (t!48937 List!34236)) )
))
(declare-fun arrayNoDuplicates!0 (array!98543 (_ BitVec 32) List!34236) Bool)

(assert (=> b!1458064 (= res!988330 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34233))))

(declare-fun b!1458065 () Bool)

(declare-fun res!988337 () Bool)

(assert (=> b!1458065 (=> (not res!988337) (not e!820190))))

(assert (=> b!1458065 (= res!988337 (validKeyInArray!0 (select (arr!47555 a!2862) i!1006)))))

(declare-fun b!1458066 () Bool)

(declare-fun res!988344 () Bool)

(assert (=> b!1458066 (=> (not res!988344) (not e!820184))))

(assert (=> b!1458066 (= res!988344 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47555 a!2862) j!93) a!2862 mask!2687) lt!638870))))

(declare-fun b!1458067 () Bool)

(assert (=> b!1458067 (= e!820193 e!820188)))

(declare-fun res!988335 () Bool)

(assert (=> b!1458067 (=> res!988335 e!820188)))

(assert (=> b!1458067 (= res!988335 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638874 #b00000000000000000000000000000000) (bvsge lt!638874 (size!48106 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1458067 (= lt!638874 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1458067 (= lt!638872 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638875 lt!638869 mask!2687))))

(assert (=> b!1458067 (= lt!638872 (seekEntryOrOpen!0 lt!638875 lt!638869 mask!2687))))

(assert (= (and start!125178 res!988336) b!1458049))

(assert (= (and b!1458049 res!988338) b!1458065))

(assert (= (and b!1458065 res!988337) b!1458057))

(assert (= (and b!1458057 res!988347) b!1458052))

(assert (= (and b!1458052 res!988343) b!1458064))

(assert (= (and b!1458064 res!988330) b!1458051))

(assert (= (and b!1458051 res!988334) b!1458061))

(assert (= (and b!1458061 res!988333) b!1458046))

(assert (= (and b!1458046 res!988341) b!1458066))

(assert (= (and b!1458066 res!988344) b!1458056))

(assert (= (and b!1458056 res!988340) b!1458060))

(assert (= (and b!1458060 c!134371) b!1458062))

(assert (= (and b!1458060 (not c!134371)) b!1458047))

(assert (= (and b!1458060 res!988339) b!1458048))

(assert (= (and b!1458048 res!988346) b!1458053))

(assert (= (and b!1458053 res!988331) b!1458050))

(assert (= (and b!1458050 res!988345) b!1458063))

(assert (= (and b!1458053 (not res!988342)) b!1458067))

(assert (= (and b!1458067 (not res!988335)) b!1458058))

(assert (= (and b!1458058 (not res!988332)) b!1458054))

(assert (= (and b!1458054 c!134372) b!1458055))

(assert (= (and b!1458054 (not c!134372)) b!1458059))

(declare-fun m!1345999 () Bool)

(assert (=> b!1458056 m!1345999))

(assert (=> b!1458056 m!1345999))

(declare-fun m!1346001 () Bool)

(assert (=> b!1458056 m!1346001))

(declare-fun m!1346003 () Bool)

(assert (=> b!1458056 m!1346003))

(declare-fun m!1346005 () Bool)

(assert (=> b!1458056 m!1346005))

(declare-fun m!1346007 () Bool)

(assert (=> b!1458050 m!1346007))

(assert (=> b!1458050 m!1346007))

(declare-fun m!1346009 () Bool)

(assert (=> b!1458050 m!1346009))

(assert (=> b!1458066 m!1346007))

(assert (=> b!1458066 m!1346007))

(declare-fun m!1346011 () Bool)

(assert (=> b!1458066 m!1346011))

(declare-fun m!1346013 () Bool)

(assert (=> b!1458053 m!1346013))

(assert (=> b!1458053 m!1346003))

(declare-fun m!1346015 () Bool)

(assert (=> b!1458053 m!1346015))

(declare-fun m!1346017 () Bool)

(assert (=> b!1458053 m!1346017))

(declare-fun m!1346019 () Bool)

(assert (=> b!1458053 m!1346019))

(assert (=> b!1458053 m!1346007))

(assert (=> b!1458058 m!1346007))

(assert (=> b!1458058 m!1346007))

(declare-fun m!1346021 () Bool)

(assert (=> b!1458058 m!1346021))

(declare-fun m!1346023 () Bool)

(assert (=> b!1458062 m!1346023))

(declare-fun m!1346025 () Bool)

(assert (=> b!1458065 m!1346025))

(assert (=> b!1458065 m!1346025))

(declare-fun m!1346027 () Bool)

(assert (=> b!1458065 m!1346027))

(assert (=> b!1458063 m!1346003))

(declare-fun m!1346029 () Bool)

(assert (=> b!1458063 m!1346029))

(assert (=> b!1458063 m!1346015))

(assert (=> b!1458063 m!1346017))

(assert (=> b!1458063 m!1346007))

(declare-fun m!1346031 () Bool)

(assert (=> b!1458055 m!1346031))

(assert (=> b!1458061 m!1346003))

(declare-fun m!1346033 () Bool)

(assert (=> b!1458061 m!1346033))

(declare-fun m!1346035 () Bool)

(assert (=> start!125178 m!1346035))

(declare-fun m!1346037 () Bool)

(assert (=> start!125178 m!1346037))

(declare-fun m!1346039 () Bool)

(assert (=> b!1458064 m!1346039))

(declare-fun m!1346041 () Bool)

(assert (=> b!1458052 m!1346041))

(assert (=> b!1458057 m!1346007))

(assert (=> b!1458057 m!1346007))

(declare-fun m!1346043 () Bool)

(assert (=> b!1458057 m!1346043))

(declare-fun m!1346045 () Bool)

(assert (=> b!1458067 m!1346045))

(declare-fun m!1346047 () Bool)

(assert (=> b!1458067 m!1346047))

(declare-fun m!1346049 () Bool)

(assert (=> b!1458067 m!1346049))

(assert (=> b!1458047 m!1346047))

(assert (=> b!1458047 m!1346049))

(assert (=> b!1458046 m!1346007))

(assert (=> b!1458046 m!1346007))

(declare-fun m!1346051 () Bool)

(assert (=> b!1458046 m!1346051))

(assert (=> b!1458046 m!1346051))

(assert (=> b!1458046 m!1346007))

(declare-fun m!1346053 () Bool)

(assert (=> b!1458046 m!1346053))

(declare-fun m!1346055 () Bool)

(assert (=> b!1458059 m!1346055))

(check-sat (not b!1458055) (not b!1458067) (not b!1458066) (not b!1458064) (not b!1458053) (not b!1458047) (not start!125178) (not b!1458050) (not b!1458058) (not b!1458065) (not b!1458046) (not b!1458056) (not b!1458062) (not b!1458052) (not b!1458057) (not b!1458059))
(check-sat)
