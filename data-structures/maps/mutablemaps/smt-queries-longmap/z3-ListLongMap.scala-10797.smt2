; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126414 () Bool)

(assert start!126414)

(declare-fun b!1481226 () Bool)

(declare-fun e!830808 () Bool)

(declare-fun e!830809 () Bool)

(assert (=> b!1481226 (= e!830808 e!830809)))

(declare-fun res!1006681 () Bool)

(assert (=> b!1481226 (=> (not res!1006681) (not e!830809))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99350 0))(
  ( (array!99351 (arr!47948 (Array (_ BitVec 32) (_ BitVec 64))) (size!48499 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99350)

(assert (=> b!1481226 (= res!1006681 (= (select (store (arr!47948 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!646678 () array!99350)

(assert (=> b!1481226 (= lt!646678 (array!99351 (store (arr!47948 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48499 a!2862)))))

(declare-fun b!1481227 () Bool)

(declare-fun res!1006682 () Bool)

(declare-fun e!830806 () Bool)

(assert (=> b!1481227 (=> (not res!1006682) (not e!830806))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12211 0))(
  ( (MissingZero!12211 (index!51235 (_ BitVec 32))) (Found!12211 (index!51236 (_ BitVec 32))) (Intermediate!12211 (undefined!13023 Bool) (index!51237 (_ BitVec 32)) (x!132825 (_ BitVec 32))) (Undefined!12211) (MissingVacant!12211 (index!51238 (_ BitVec 32))) )
))
(declare-fun lt!646679 () SeekEntryResult!12211)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99350 (_ BitVec 32)) SeekEntryResult!12211)

(assert (=> b!1481227 (= res!1006682 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47948 a!2862) j!93) a!2862 mask!2687) lt!646679))))

(declare-fun b!1481228 () Bool)

(declare-fun res!1006677 () Bool)

(assert (=> b!1481228 (=> (not res!1006677) (not e!830808))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1481228 (= res!1006677 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48499 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48499 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48499 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1481229 () Bool)

(declare-fun res!1006680 () Bool)

(assert (=> b!1481229 (=> (not res!1006680) (not e!830808))))

(assert (=> b!1481229 (= res!1006680 (and (= (size!48499 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48499 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48499 a!2862)) (not (= i!1006 j!93))))))

(declare-fun lt!646681 () (_ BitVec 64))

(declare-fun lt!646677 () SeekEntryResult!12211)

(declare-fun b!1481230 () Bool)

(declare-fun e!830805 () Bool)

(assert (=> b!1481230 (= e!830805 (= lt!646677 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646681 lt!646678 mask!2687)))))

(declare-fun b!1481231 () Bool)

(declare-fun res!1006675 () Bool)

(assert (=> b!1481231 (=> (not res!1006675) (not e!830808))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99350 (_ BitVec 32)) Bool)

(assert (=> b!1481231 (= res!1006675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1481232 () Bool)

(declare-fun e!830807 () Bool)

(assert (=> b!1481232 (= e!830807 (not true))))

(declare-fun e!830804 () Bool)

(assert (=> b!1481232 e!830804))

(declare-fun res!1006679 () Bool)

(assert (=> b!1481232 (=> (not res!1006679) (not e!830804))))

(assert (=> b!1481232 (= res!1006679 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49710 0))(
  ( (Unit!49711) )
))
(declare-fun lt!646680 () Unit!49710)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99350 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49710)

(assert (=> b!1481232 (= lt!646680 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1481233 () Bool)

(declare-fun res!1006688 () Bool)

(assert (=> b!1481233 (=> (not res!1006688) (not e!830808))))

(declare-datatypes ((List!34629 0))(
  ( (Nil!34626) (Cons!34625 (h!35996 (_ BitVec 64)) (t!49330 List!34629)) )
))
(declare-fun arrayNoDuplicates!0 (array!99350 (_ BitVec 32) List!34629) Bool)

(assert (=> b!1481233 (= res!1006688 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34626))))

(declare-fun b!1481234 () Bool)

(declare-fun res!1006678 () Bool)

(assert (=> b!1481234 (=> (not res!1006678) (not e!830808))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1481234 (= res!1006678 (validKeyInArray!0 (select (arr!47948 a!2862) j!93)))))

(declare-fun res!1006684 () Bool)

(assert (=> start!126414 (=> (not res!1006684) (not e!830808))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126414 (= res!1006684 (validMask!0 mask!2687))))

(assert (=> start!126414 e!830808))

(assert (=> start!126414 true))

(declare-fun array_inv!36893 (array!99350) Bool)

(assert (=> start!126414 (array_inv!36893 a!2862)))

(declare-fun b!1481235 () Bool)

(assert (=> b!1481235 (= e!830806 e!830807)))

(declare-fun res!1006689 () Bool)

(assert (=> b!1481235 (=> (not res!1006689) (not e!830807))))

(assert (=> b!1481235 (= res!1006689 (= lt!646677 (Intermediate!12211 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1481235 (= lt!646677 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646681 mask!2687) lt!646681 lt!646678 mask!2687))))

(assert (=> b!1481235 (= lt!646681 (select (store (arr!47948 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1481236 () Bool)

(declare-fun res!1006685 () Bool)

(assert (=> b!1481236 (=> (not res!1006685) (not e!830804))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99350 (_ BitVec 32)) SeekEntryResult!12211)

(assert (=> b!1481236 (= res!1006685 (= (seekEntryOrOpen!0 (select (arr!47948 a!2862) j!93) a!2862 mask!2687) (Found!12211 j!93)))))

(declare-fun b!1481237 () Bool)

(declare-fun res!1006676 () Bool)

(assert (=> b!1481237 (=> (not res!1006676) (not e!830807))))

(assert (=> b!1481237 (= res!1006676 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1481238 () Bool)

(assert (=> b!1481238 (= e!830804 (and (or (= (select (arr!47948 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47948 a!2862) intermediateBeforeIndex!19) (select (arr!47948 a!2862) j!93))) (or (and (= (select (arr!47948 a!2862) index!646) (select (store (arr!47948 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47948 a!2862) index!646) (select (arr!47948 a!2862) j!93))) (= (select (arr!47948 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (= index!646 intermediateAfterIndex!19))))))

(declare-fun b!1481239 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99350 (_ BitVec 32)) SeekEntryResult!12211)

(assert (=> b!1481239 (= e!830805 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646681 lt!646678 mask!2687) (seekEntryOrOpen!0 lt!646681 lt!646678 mask!2687)))))

(declare-fun b!1481240 () Bool)

(assert (=> b!1481240 (= e!830809 e!830806)))

(declare-fun res!1006687 () Bool)

(assert (=> b!1481240 (=> (not res!1006687) (not e!830806))))

(assert (=> b!1481240 (= res!1006687 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47948 a!2862) j!93) mask!2687) (select (arr!47948 a!2862) j!93) a!2862 mask!2687) lt!646679))))

(assert (=> b!1481240 (= lt!646679 (Intermediate!12211 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1481241 () Bool)

(declare-fun res!1006683 () Bool)

(assert (=> b!1481241 (=> (not res!1006683) (not e!830807))))

(assert (=> b!1481241 (= res!1006683 e!830805)))

(declare-fun c!136799 () Bool)

(assert (=> b!1481241 (= c!136799 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1481242 () Bool)

(declare-fun res!1006686 () Bool)

(assert (=> b!1481242 (=> (not res!1006686) (not e!830808))))

(assert (=> b!1481242 (= res!1006686 (validKeyInArray!0 (select (arr!47948 a!2862) i!1006)))))

(assert (= (and start!126414 res!1006684) b!1481229))

(assert (= (and b!1481229 res!1006680) b!1481242))

(assert (= (and b!1481242 res!1006686) b!1481234))

(assert (= (and b!1481234 res!1006678) b!1481231))

(assert (= (and b!1481231 res!1006675) b!1481233))

(assert (= (and b!1481233 res!1006688) b!1481228))

(assert (= (and b!1481228 res!1006677) b!1481226))

(assert (= (and b!1481226 res!1006681) b!1481240))

(assert (= (and b!1481240 res!1006687) b!1481227))

(assert (= (and b!1481227 res!1006682) b!1481235))

(assert (= (and b!1481235 res!1006689) b!1481241))

(assert (= (and b!1481241 c!136799) b!1481230))

(assert (= (and b!1481241 (not c!136799)) b!1481239))

(assert (= (and b!1481241 res!1006683) b!1481237))

(assert (= (and b!1481237 res!1006676) b!1481232))

(assert (= (and b!1481232 res!1006679) b!1481236))

(assert (= (and b!1481236 res!1006685) b!1481238))

(declare-fun m!1367027 () Bool)

(assert (=> b!1481232 m!1367027))

(declare-fun m!1367029 () Bool)

(assert (=> b!1481232 m!1367029))

(declare-fun m!1367031 () Bool)

(assert (=> b!1481240 m!1367031))

(assert (=> b!1481240 m!1367031))

(declare-fun m!1367033 () Bool)

(assert (=> b!1481240 m!1367033))

(assert (=> b!1481240 m!1367033))

(assert (=> b!1481240 m!1367031))

(declare-fun m!1367035 () Bool)

(assert (=> b!1481240 m!1367035))

(declare-fun m!1367037 () Bool)

(assert (=> b!1481238 m!1367037))

(declare-fun m!1367039 () Bool)

(assert (=> b!1481238 m!1367039))

(declare-fun m!1367041 () Bool)

(assert (=> b!1481238 m!1367041))

(declare-fun m!1367043 () Bool)

(assert (=> b!1481238 m!1367043))

(assert (=> b!1481238 m!1367031))

(assert (=> b!1481234 m!1367031))

(assert (=> b!1481234 m!1367031))

(declare-fun m!1367045 () Bool)

(assert (=> b!1481234 m!1367045))

(declare-fun m!1367047 () Bool)

(assert (=> b!1481235 m!1367047))

(assert (=> b!1481235 m!1367047))

(declare-fun m!1367049 () Bool)

(assert (=> b!1481235 m!1367049))

(assert (=> b!1481235 m!1367037))

(declare-fun m!1367051 () Bool)

(assert (=> b!1481235 m!1367051))

(assert (=> b!1481226 m!1367037))

(declare-fun m!1367053 () Bool)

(assert (=> b!1481226 m!1367053))

(declare-fun m!1367055 () Bool)

(assert (=> b!1481230 m!1367055))

(assert (=> b!1481227 m!1367031))

(assert (=> b!1481227 m!1367031))

(declare-fun m!1367057 () Bool)

(assert (=> b!1481227 m!1367057))

(declare-fun m!1367059 () Bool)

(assert (=> b!1481242 m!1367059))

(assert (=> b!1481242 m!1367059))

(declare-fun m!1367061 () Bool)

(assert (=> b!1481242 m!1367061))

(declare-fun m!1367063 () Bool)

(assert (=> start!126414 m!1367063))

(declare-fun m!1367065 () Bool)

(assert (=> start!126414 m!1367065))

(assert (=> b!1481236 m!1367031))

(assert (=> b!1481236 m!1367031))

(declare-fun m!1367067 () Bool)

(assert (=> b!1481236 m!1367067))

(declare-fun m!1367069 () Bool)

(assert (=> b!1481231 m!1367069))

(declare-fun m!1367071 () Bool)

(assert (=> b!1481239 m!1367071))

(declare-fun m!1367073 () Bool)

(assert (=> b!1481239 m!1367073))

(declare-fun m!1367075 () Bool)

(assert (=> b!1481233 m!1367075))

(check-sat (not b!1481232) (not start!126414) (not b!1481242) (not b!1481227) (not b!1481235) (not b!1481230) (not b!1481236) (not b!1481240) (not b!1481234) (not b!1481231) (not b!1481233) (not b!1481239))
(check-sat)
