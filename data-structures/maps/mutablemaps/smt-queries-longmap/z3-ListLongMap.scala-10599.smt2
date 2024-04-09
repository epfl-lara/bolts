; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124776 () Bool)

(assert start!124776)

(declare-fun b!1446087 () Bool)

(declare-fun res!977985 () Bool)

(declare-fun e!814528 () Bool)

(assert (=> b!1446087 (=> (not res!977985) (not e!814528))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98141 0))(
  ( (array!98142 (arr!47354 (Array (_ BitVec 32) (_ BitVec 64))) (size!47905 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98141)

(assert (=> b!1446087 (= res!977985 (and (= (size!47905 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47905 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47905 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!977993 () Bool)

(assert (=> start!124776 (=> (not res!977993) (not e!814528))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124776 (= res!977993 (validMask!0 mask!2687))))

(assert (=> start!124776 e!814528))

(assert (=> start!124776 true))

(declare-fun array_inv!36299 (array!98141) Bool)

(assert (=> start!124776 (array_inv!36299 a!2862)))

(declare-fun b!1446088 () Bool)

(declare-fun res!977997 () Bool)

(declare-fun e!814527 () Bool)

(assert (=> b!1446088 (=> (not res!977997) (not e!814527))))

(declare-fun e!814532 () Bool)

(assert (=> b!1446088 (= res!977997 e!814532)))

(declare-fun c!133565 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1446088 (= c!133565 (bvsle x!665 intermediateAfterX!19))))

(declare-datatypes ((SeekEntryResult!11629 0))(
  ( (MissingZero!11629 (index!48907 (_ BitVec 32))) (Found!11629 (index!48908 (_ BitVec 32))) (Intermediate!11629 (undefined!12441 Bool) (index!48909 (_ BitVec 32)) (x!130593 (_ BitVec 32))) (Undefined!11629) (MissingVacant!11629 (index!48910 (_ BitVec 32))) )
))
(declare-fun lt!634651 () SeekEntryResult!11629)

(declare-fun lt!634653 () array!98141)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1446089 () Bool)

(declare-fun lt!634650 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98141 (_ BitVec 32)) SeekEntryResult!11629)

(assert (=> b!1446089 (= e!814532 (= lt!634651 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634650 lt!634653 mask!2687)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!814529 () Bool)

(declare-fun b!1446090 () Bool)

(assert (=> b!1446090 (= e!814529 (or (= (select (arr!47354 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47354 a!2862) intermediateBeforeIndex!19) (select (arr!47354 a!2862) j!93))))))

(declare-fun b!1446091 () Bool)

(assert (=> b!1446091 (= e!814527 (not true))))

(assert (=> b!1446091 e!814529))

(declare-fun res!977994 () Bool)

(assert (=> b!1446091 (=> (not res!977994) (not e!814529))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98141 (_ BitVec 32)) Bool)

(assert (=> b!1446091 (= res!977994 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48702 0))(
  ( (Unit!48703) )
))
(declare-fun lt!634652 () Unit!48702)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98141 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48702)

(assert (=> b!1446091 (= lt!634652 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1446092 () Bool)

(declare-fun res!977983 () Bool)

(assert (=> b!1446092 (=> (not res!977983) (not e!814528))))

(declare-datatypes ((List!34035 0))(
  ( (Nil!34032) (Cons!34031 (h!35381 (_ BitVec 64)) (t!48736 List!34035)) )
))
(declare-fun arrayNoDuplicates!0 (array!98141 (_ BitVec 32) List!34035) Bool)

(assert (=> b!1446092 (= res!977983 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34032))))

(declare-fun b!1446093 () Bool)

(declare-fun res!977984 () Bool)

(assert (=> b!1446093 (=> (not res!977984) (not e!814528))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1446093 (= res!977984 (validKeyInArray!0 (select (arr!47354 a!2862) j!93)))))

(declare-fun b!1446094 () Bool)

(declare-fun res!977996 () Bool)

(assert (=> b!1446094 (=> (not res!977996) (not e!814528))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1446094 (= res!977996 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47905 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47905 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47905 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1446095 () Bool)

(declare-fun res!977987 () Bool)

(assert (=> b!1446095 (=> (not res!977987) (not e!814528))))

(assert (=> b!1446095 (= res!977987 (validKeyInArray!0 (select (arr!47354 a!2862) i!1006)))))

(declare-fun b!1446096 () Bool)

(declare-fun e!814531 () Bool)

(assert (=> b!1446096 (= e!814531 e!814527)))

(declare-fun res!977995 () Bool)

(assert (=> b!1446096 (=> (not res!977995) (not e!814527))))

(assert (=> b!1446096 (= res!977995 (= lt!634651 (Intermediate!11629 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1446096 (= lt!634651 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634650 mask!2687) lt!634650 lt!634653 mask!2687))))

(assert (=> b!1446096 (= lt!634650 (select (store (arr!47354 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1446097 () Bool)

(declare-fun res!977991 () Bool)

(assert (=> b!1446097 (=> (not res!977991) (not e!814529))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98141 (_ BitVec 32)) SeekEntryResult!11629)

(assert (=> b!1446097 (= res!977991 (= (seekEntryOrOpen!0 (select (arr!47354 a!2862) j!93) a!2862 mask!2687) (Found!11629 j!93)))))

(declare-fun b!1446098 () Bool)

(declare-fun res!977992 () Bool)

(assert (=> b!1446098 (=> (not res!977992) (not e!814531))))

(declare-fun lt!634654 () SeekEntryResult!11629)

(assert (=> b!1446098 (= res!977992 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47354 a!2862) j!93) a!2862 mask!2687) lt!634654))))

(declare-fun b!1446099 () Bool)

(declare-fun e!814526 () Bool)

(assert (=> b!1446099 (= e!814528 e!814526)))

(declare-fun res!977986 () Bool)

(assert (=> b!1446099 (=> (not res!977986) (not e!814526))))

(assert (=> b!1446099 (= res!977986 (= (select (store (arr!47354 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1446099 (= lt!634653 (array!98142 (store (arr!47354 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47905 a!2862)))))

(declare-fun b!1446100 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98141 (_ BitVec 32)) SeekEntryResult!11629)

(assert (=> b!1446100 (= e!814532 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634650 lt!634653 mask!2687) (seekEntryOrOpen!0 lt!634650 lt!634653 mask!2687)))))

(declare-fun b!1446101 () Bool)

(assert (=> b!1446101 (= e!814526 e!814531)))

(declare-fun res!977989 () Bool)

(assert (=> b!1446101 (=> (not res!977989) (not e!814531))))

(assert (=> b!1446101 (= res!977989 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47354 a!2862) j!93) mask!2687) (select (arr!47354 a!2862) j!93) a!2862 mask!2687) lt!634654))))

(assert (=> b!1446101 (= lt!634654 (Intermediate!11629 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1446102 () Bool)

(declare-fun res!977988 () Bool)

(assert (=> b!1446102 (=> (not res!977988) (not e!814527))))

(assert (=> b!1446102 (= res!977988 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1446103 () Bool)

(declare-fun res!977990 () Bool)

(assert (=> b!1446103 (=> (not res!977990) (not e!814528))))

(assert (=> b!1446103 (= res!977990 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124776 res!977993) b!1446087))

(assert (= (and b!1446087 res!977985) b!1446095))

(assert (= (and b!1446095 res!977987) b!1446093))

(assert (= (and b!1446093 res!977984) b!1446103))

(assert (= (and b!1446103 res!977990) b!1446092))

(assert (= (and b!1446092 res!977983) b!1446094))

(assert (= (and b!1446094 res!977996) b!1446099))

(assert (= (and b!1446099 res!977986) b!1446101))

(assert (= (and b!1446101 res!977989) b!1446098))

(assert (= (and b!1446098 res!977992) b!1446096))

(assert (= (and b!1446096 res!977995) b!1446088))

(assert (= (and b!1446088 c!133565) b!1446089))

(assert (= (and b!1446088 (not c!133565)) b!1446100))

(assert (= (and b!1446088 res!977997) b!1446102))

(assert (= (and b!1446102 res!977988) b!1446091))

(assert (= (and b!1446091 res!977994) b!1446097))

(assert (= (and b!1446097 res!977991) b!1446090))

(declare-fun m!1335043 () Bool)

(assert (=> b!1446092 m!1335043))

(declare-fun m!1335045 () Bool)

(assert (=> b!1446099 m!1335045))

(declare-fun m!1335047 () Bool)

(assert (=> b!1446099 m!1335047))

(declare-fun m!1335049 () Bool)

(assert (=> start!124776 m!1335049))

(declare-fun m!1335051 () Bool)

(assert (=> start!124776 m!1335051))

(declare-fun m!1335053 () Bool)

(assert (=> b!1446093 m!1335053))

(assert (=> b!1446093 m!1335053))

(declare-fun m!1335055 () Bool)

(assert (=> b!1446093 m!1335055))

(assert (=> b!1446098 m!1335053))

(assert (=> b!1446098 m!1335053))

(declare-fun m!1335057 () Bool)

(assert (=> b!1446098 m!1335057))

(assert (=> b!1446097 m!1335053))

(assert (=> b!1446097 m!1335053))

(declare-fun m!1335059 () Bool)

(assert (=> b!1446097 m!1335059))

(declare-fun m!1335061 () Bool)

(assert (=> b!1446091 m!1335061))

(declare-fun m!1335063 () Bool)

(assert (=> b!1446091 m!1335063))

(declare-fun m!1335065 () Bool)

(assert (=> b!1446096 m!1335065))

(assert (=> b!1446096 m!1335065))

(declare-fun m!1335067 () Bool)

(assert (=> b!1446096 m!1335067))

(assert (=> b!1446096 m!1335045))

(declare-fun m!1335069 () Bool)

(assert (=> b!1446096 m!1335069))

(assert (=> b!1446101 m!1335053))

(assert (=> b!1446101 m!1335053))

(declare-fun m!1335071 () Bool)

(assert (=> b!1446101 m!1335071))

(assert (=> b!1446101 m!1335071))

(assert (=> b!1446101 m!1335053))

(declare-fun m!1335073 () Bool)

(assert (=> b!1446101 m!1335073))

(declare-fun m!1335075 () Bool)

(assert (=> b!1446089 m!1335075))

(declare-fun m!1335077 () Bool)

(assert (=> b!1446103 m!1335077))

(declare-fun m!1335079 () Bool)

(assert (=> b!1446090 m!1335079))

(assert (=> b!1446090 m!1335053))

(declare-fun m!1335081 () Bool)

(assert (=> b!1446100 m!1335081))

(declare-fun m!1335083 () Bool)

(assert (=> b!1446100 m!1335083))

(declare-fun m!1335085 () Bool)

(assert (=> b!1446095 m!1335085))

(assert (=> b!1446095 m!1335085))

(declare-fun m!1335087 () Bool)

(assert (=> b!1446095 m!1335087))

(check-sat (not b!1446100) (not start!124776) (not b!1446095) (not b!1446096) (not b!1446093) (not b!1446089) (not b!1446098) (not b!1446097) (not b!1446092) (not b!1446101) (not b!1446091) (not b!1446103))
(check-sat)
