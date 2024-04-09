; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123062 () Bool)

(assert start!123062)

(declare-fun b!1426837 () Bool)

(declare-fun res!962184 () Bool)

(declare-fun e!805943 () Bool)

(assert (=> b!1426837 (=> (not res!962184) (not e!805943))))

(declare-datatypes ((SeekEntryResult!11260 0))(
  ( (MissingZero!11260 (index!47431 (_ BitVec 32))) (Found!11260 (index!47432 (_ BitVec 32))) (Intermediate!11260 (undefined!12072 Bool) (index!47433 (_ BitVec 32)) (x!129063 (_ BitVec 32))) (Undefined!11260) (MissingVacant!11260 (index!47434 (_ BitVec 32))) )
))
(declare-fun lt!628298 () SeekEntryResult!11260)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97294 0))(
  ( (array!97295 (arr!46959 (Array (_ BitVec 32) (_ BitVec 64))) (size!47510 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97294)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97294 (_ BitVec 32)) SeekEntryResult!11260)

(assert (=> b!1426837 (= res!962184 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46959 a!2831) j!81) a!2831 mask!2608) lt!628298))))

(declare-fun b!1426838 () Bool)

(declare-fun res!962182 () Bool)

(assert (=> b!1426838 (=> (not res!962182) (not e!805943))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1426838 (= res!962182 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun res!962183 () Bool)

(declare-fun e!805944 () Bool)

(assert (=> start!123062 (=> (not res!962183) (not e!805944))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123062 (= res!962183 (validMask!0 mask!2608))))

(assert (=> start!123062 e!805944))

(assert (=> start!123062 true))

(declare-fun array_inv!35904 (array!97294) Bool)

(assert (=> start!123062 (array_inv!35904 a!2831)))

(declare-fun b!1426839 () Bool)

(declare-fun res!962179 () Bool)

(assert (=> b!1426839 (=> (not res!962179) (not e!805943))))

(declare-fun lt!628299 () (_ BitVec 64))

(declare-fun lt!628300 () SeekEntryResult!11260)

(declare-fun lt!628297 () array!97294)

(assert (=> b!1426839 (= res!962179 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628299 lt!628297 mask!2608) lt!628300))))

(declare-fun b!1426840 () Bool)

(declare-fun res!962185 () Bool)

(assert (=> b!1426840 (=> (not res!962185) (not e!805944))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1426840 (= res!962185 (and (= (size!47510 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47510 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47510 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1426841 () Bool)

(declare-fun res!962188 () Bool)

(assert (=> b!1426841 (=> (not res!962188) (not e!805944))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97294 (_ BitVec 32)) Bool)

(assert (=> b!1426841 (= res!962188 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1426842 () Bool)

(declare-fun e!805946 () Bool)

(assert (=> b!1426842 (= e!805944 e!805946)))

(declare-fun res!962190 () Bool)

(assert (=> b!1426842 (=> (not res!962190) (not e!805946))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1426842 (= res!962190 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46959 a!2831) j!81) mask!2608) (select (arr!46959 a!2831) j!81) a!2831 mask!2608) lt!628298))))

(assert (=> b!1426842 (= lt!628298 (Intermediate!11260 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1426843 () Bool)

(assert (=> b!1426843 (= e!805943 (not (not (= (select (arr!46959 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!805945 () Bool)

(assert (=> b!1426843 e!805945))

(declare-fun res!962180 () Bool)

(assert (=> b!1426843 (=> (not res!962180) (not e!805945))))

(assert (=> b!1426843 (= res!962180 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48214 0))(
  ( (Unit!48215) )
))
(declare-fun lt!628296 () Unit!48214)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97294 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48214)

(assert (=> b!1426843 (= lt!628296 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1426844 () Bool)

(declare-fun res!962181 () Bool)

(assert (=> b!1426844 (=> (not res!962181) (not e!805944))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1426844 (= res!962181 (validKeyInArray!0 (select (arr!46959 a!2831) i!982)))))

(declare-fun b!1426845 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97294 (_ BitVec 32)) SeekEntryResult!11260)

(assert (=> b!1426845 (= e!805945 (= (seekEntryOrOpen!0 (select (arr!46959 a!2831) j!81) a!2831 mask!2608) (Found!11260 j!81)))))

(declare-fun b!1426846 () Bool)

(declare-fun res!962186 () Bool)

(assert (=> b!1426846 (=> (not res!962186) (not e!805944))))

(assert (=> b!1426846 (= res!962186 (validKeyInArray!0 (select (arr!46959 a!2831) j!81)))))

(declare-fun b!1426847 () Bool)

(declare-fun res!962178 () Bool)

(assert (=> b!1426847 (=> (not res!962178) (not e!805944))))

(declare-datatypes ((List!33649 0))(
  ( (Nil!33646) (Cons!33645 (h!34950 (_ BitVec 64)) (t!48350 List!33649)) )
))
(declare-fun arrayNoDuplicates!0 (array!97294 (_ BitVec 32) List!33649) Bool)

(assert (=> b!1426847 (= res!962178 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33646))))

(declare-fun b!1426848 () Bool)

(assert (=> b!1426848 (= e!805946 e!805943)))

(declare-fun res!962187 () Bool)

(assert (=> b!1426848 (=> (not res!962187) (not e!805943))))

(assert (=> b!1426848 (= res!962187 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628299 mask!2608) lt!628299 lt!628297 mask!2608) lt!628300))))

(assert (=> b!1426848 (= lt!628300 (Intermediate!11260 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1426848 (= lt!628299 (select (store (arr!46959 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1426848 (= lt!628297 (array!97295 (store (arr!46959 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47510 a!2831)))))

(declare-fun b!1426849 () Bool)

(declare-fun res!962189 () Bool)

(assert (=> b!1426849 (=> (not res!962189) (not e!805944))))

(assert (=> b!1426849 (= res!962189 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47510 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47510 a!2831))))))

(assert (= (and start!123062 res!962183) b!1426840))

(assert (= (and b!1426840 res!962185) b!1426844))

(assert (= (and b!1426844 res!962181) b!1426846))

(assert (= (and b!1426846 res!962186) b!1426841))

(assert (= (and b!1426841 res!962188) b!1426847))

(assert (= (and b!1426847 res!962178) b!1426849))

(assert (= (and b!1426849 res!962189) b!1426842))

(assert (= (and b!1426842 res!962190) b!1426848))

(assert (= (and b!1426848 res!962187) b!1426837))

(assert (= (and b!1426837 res!962184) b!1426839))

(assert (= (and b!1426839 res!962179) b!1426838))

(assert (= (and b!1426838 res!962182) b!1426843))

(assert (= (and b!1426843 res!962180) b!1426845))

(declare-fun m!1317391 () Bool)

(assert (=> b!1426839 m!1317391))

(declare-fun m!1317393 () Bool)

(assert (=> b!1426843 m!1317393))

(declare-fun m!1317395 () Bool)

(assert (=> b!1426843 m!1317395))

(declare-fun m!1317397 () Bool)

(assert (=> b!1426843 m!1317397))

(declare-fun m!1317399 () Bool)

(assert (=> b!1426848 m!1317399))

(assert (=> b!1426848 m!1317399))

(declare-fun m!1317401 () Bool)

(assert (=> b!1426848 m!1317401))

(declare-fun m!1317403 () Bool)

(assert (=> b!1426848 m!1317403))

(declare-fun m!1317405 () Bool)

(assert (=> b!1426848 m!1317405))

(declare-fun m!1317407 () Bool)

(assert (=> b!1426841 m!1317407))

(declare-fun m!1317409 () Bool)

(assert (=> b!1426842 m!1317409))

(assert (=> b!1426842 m!1317409))

(declare-fun m!1317411 () Bool)

(assert (=> b!1426842 m!1317411))

(assert (=> b!1426842 m!1317411))

(assert (=> b!1426842 m!1317409))

(declare-fun m!1317413 () Bool)

(assert (=> b!1426842 m!1317413))

(assert (=> b!1426846 m!1317409))

(assert (=> b!1426846 m!1317409))

(declare-fun m!1317415 () Bool)

(assert (=> b!1426846 m!1317415))

(assert (=> b!1426845 m!1317409))

(assert (=> b!1426845 m!1317409))

(declare-fun m!1317417 () Bool)

(assert (=> b!1426845 m!1317417))

(assert (=> b!1426837 m!1317409))

(assert (=> b!1426837 m!1317409))

(declare-fun m!1317419 () Bool)

(assert (=> b!1426837 m!1317419))

(declare-fun m!1317421 () Bool)

(assert (=> b!1426847 m!1317421))

(declare-fun m!1317423 () Bool)

(assert (=> b!1426844 m!1317423))

(assert (=> b!1426844 m!1317423))

(declare-fun m!1317425 () Bool)

(assert (=> b!1426844 m!1317425))

(declare-fun m!1317427 () Bool)

(assert (=> start!123062 m!1317427))

(declare-fun m!1317429 () Bool)

(assert (=> start!123062 m!1317429))

(push 1)

(assert (not b!1426845))

(assert (not b!1426839))

(assert (not b!1426843))

(assert (not b!1426846))

(assert (not b!1426844))

(assert (not b!1426847))

(assert (not b!1426837))

(assert (not b!1426841))

(assert (not b!1426842))

(assert (not start!123062))

(assert (not b!1426848))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!67341 () Bool)

(declare-fun call!67344 () Bool)

(declare-fun c!131837 () Bool)

(assert (=> bm!67341 (= call!67344 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!131837 (Cons!33645 (select (arr!46959 a!2831) #b00000000000000000000000000000000) Nil!33646) Nil!33646)))))

(declare-fun b!1426905 () Bool)

(declare-fun e!805982 () Bool)

(assert (=> b!1426905 (= e!805982 call!67344)))

(declare-fun b!1426906 () Bool)

(declare-fun e!805983 () Bool)

(declare-fun contains!9860 (List!33649 (_ BitVec 64)) Bool)

(assert (=> b!1426906 (= e!805983 (contains!9860 Nil!33646 (select (arr!46959 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1426907 () Bool)

(declare-fun e!805980 () Bool)

(declare-fun e!805981 () Bool)

(assert (=> b!1426907 (= e!805980 e!805981)))

(declare-fun res!962213 () Bool)

(assert (=> b!1426907 (=> (not res!962213) (not e!805981))))

(assert (=> b!1426907 (= res!962213 (not e!805983))))

(declare-fun res!962214 () Bool)

(assert (=> b!1426907 (=> (not res!962214) (not e!805983))))

(assert (=> b!1426907 (= res!962214 (validKeyInArray!0 (select (arr!46959 a!2831) #b00000000000000000000000000000000)))))

(declare-fun d!153199 () Bool)

(declare-fun res!962215 () Bool)

(assert (=> d!153199 (=> res!962215 e!805980)))

(assert (=> d!153199 (= res!962215 (bvsge #b00000000000000000000000000000000 (size!47510 a!2831)))))

(assert (=> d!153199 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33646) e!805980)))

(declare-fun b!1426908 () Bool)

(assert (=> b!1426908 (= e!805982 call!67344)))

(declare-fun b!1426909 () Bool)

(assert (=> b!1426909 (= e!805981 e!805982)))

(assert (=> b!1426909 (= c!131837 (validKeyInArray!0 (select (arr!46959 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!153199 (not res!962215)) b!1426907))

(assert (= (and b!1426907 res!962214) b!1426906))

(assert (= (and b!1426907 res!962213) b!1426909))

(assert (= (and b!1426909 c!131837) b!1426908))

(assert (= (and b!1426909 (not c!131837)) b!1426905))

(assert (= (or b!1426908 b!1426905) bm!67341))

(declare-fun m!1317455 () Bool)

(assert (=> bm!67341 m!1317455))

(declare-fun m!1317457 () Bool)

(assert (=> bm!67341 m!1317457))

(assert (=> b!1426906 m!1317455))

(assert (=> b!1426906 m!1317455))

(declare-fun m!1317459 () Bool)

(assert (=> b!1426906 m!1317459))

(assert (=> b!1426907 m!1317455))

(assert (=> b!1426907 m!1317455))

(declare-fun m!1317461 () Bool)

(assert (=> b!1426907 m!1317461))

(assert (=> b!1426909 m!1317455))

(assert (=> b!1426909 m!1317455))

(assert (=> b!1426909 m!1317461))

(assert (=> b!1426847 d!153199))

(declare-fun d!153213 () Bool)

(assert (=> d!153213 (= (validKeyInArray!0 (select (arr!46959 a!2831) j!81)) (and (not (= (select (arr!46959 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46959 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1426846 d!153213))

(declare-fun b!1426926 () Bool)

(declare-fun e!805997 () Bool)

(declare-fun call!67349 () Bool)

(assert (=> b!1426926 (= e!805997 call!67349)))

(declare-fun b!1426927 () Bool)

(declare-fun e!805996 () Bool)

(assert (=> b!1426927 (= e!805996 e!805997)))

(declare-fun c!131842 () Bool)

(assert (=> b!1426927 (= c!131842 (validKeyInArray!0 (select (arr!46959 a!2831) #b00000000000000000000000000000000)))))

(declare-fun d!153215 () Bool)

(declare-fun res!962224 () Bool)

(assert (=> d!153215 (=> res!962224 e!805996)))

(assert (=> d!153215 (= res!962224 (bvsge #b00000000000000000000000000000000 (size!47510 a!2831)))))

(assert (=> d!153215 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!805996)))

(declare-fun b!1426928 () Bool)

(declare-fun e!805998 () Bool)

(assert (=> b!1426928 (= e!805997 e!805998)))

(declare-fun lt!628331 () (_ BitVec 64))

(assert (=> b!1426928 (= lt!628331 (select (arr!46959 a!2831) #b00000000000000000000000000000000))))

(declare-fun lt!628333 () Unit!48214)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97294 (_ BitVec 64) (_ BitVec 32)) Unit!48214)

(assert (=> b!1426928 (= lt!628333 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!628331 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97294 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1426928 (arrayContainsKey!0 a!2831 lt!628331 #b00000000000000000000000000000000)))

(declare-fun lt!628332 () Unit!48214)

(assert (=> b!1426928 (= lt!628332 lt!628333)))

(declare-fun res!962225 () Bool)

(assert (=> b!1426928 (= res!962225 (= (seekEntryOrOpen!0 (select (arr!46959 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11260 #b00000000000000000000000000000000)))))

(assert (=> b!1426928 (=> (not res!962225) (not e!805998))))

(declare-fun b!1426929 () Bool)

(assert (=> b!1426929 (= e!805998 call!67349)))

(declare-fun bm!67346 () Bool)

(assert (=> bm!67346 (= call!67349 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(assert (= (and d!153215 (not res!962224)) b!1426927))

(assert (= (and b!1426927 c!131842) b!1426928))

(assert (= (and b!1426927 (not c!131842)) b!1426926))

(assert (= (and b!1426928 res!962225) b!1426929))

(assert (= (or b!1426929 b!1426926) bm!67346))

(assert (=> b!1426927 m!1317455))

(assert (=> b!1426927 m!1317455))

(assert (=> b!1426927 m!1317461))

(assert (=> b!1426928 m!1317455))

(declare-fun m!1317463 () Bool)

(assert (=> b!1426928 m!1317463))

(declare-fun m!1317465 () Bool)

(assert (=> b!1426928 m!1317465))

(assert (=> b!1426928 m!1317455))

(declare-fun m!1317467 () Bool)

(assert (=> b!1426928 m!1317467))

(declare-fun m!1317469 () Bool)

(assert (=> bm!67346 m!1317469))

(assert (=> b!1426841 d!153215))

(declare-fun b!1426974 () Bool)

(declare-fun e!806027 () SeekEntryResult!11260)

(assert (=> b!1426974 (= e!806027 (Intermediate!11260 false (toIndex!0 lt!628299 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1426975 () Bool)

(declare-fun lt!628356 () SeekEntryResult!11260)

(assert (=> b!1426975 (and (bvsge (index!47433 lt!628356) #b00000000000000000000000000000000) (bvslt (index!47433 lt!628356) (size!47510 lt!628297)))))

(declare-fun e!806024 () Bool)

(assert (=> b!1426975 (= e!806024 (= (select (arr!46959 lt!628297) (index!47433 lt!628356)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1426976 () Bool)

(declare-fun e!806025 () SeekEntryResult!11260)

(assert (=> b!1426976 (= e!806025 (Intermediate!11260 true (toIndex!0 lt!628299 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1426977 () Bool)

(assert (=> b!1426977 (= e!806025 e!806027)))

(declare-fun c!131861 () Bool)

(declare-fun lt!628357 () (_ BitVec 64))

(assert (=> b!1426977 (= c!131861 (or (= lt!628357 lt!628299) (= (bvadd lt!628357 lt!628357) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1426978 () Bool)

(declare-fun e!806026 () Bool)

(assert (=> b!1426978 (= e!806026 (bvsge (x!129063 lt!628356) #b01111111111111111111111111111110))))

(declare-fun b!1426980 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1426980 (= e!806027 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!628299 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!628299 lt!628297 mask!2608))))

(declare-fun b!1426981 () Bool)

(assert (=> b!1426981 (and (bvsge (index!47433 lt!628356) #b00000000000000000000000000000000) (bvslt (index!47433 lt!628356) (size!47510 lt!628297)))))

(declare-fun res!962238 () Bool)

(assert (=> b!1426981 (= res!962238 (= (select (arr!46959 lt!628297) (index!47433 lt!628356)) lt!628299))))

(assert (=> b!1426981 (=> res!962238 e!806024)))

(declare-fun e!806028 () Bool)

(assert (=> b!1426981 (= e!806028 e!806024)))

(declare-fun b!1426982 () Bool)

(assert (=> b!1426982 (= e!806026 e!806028)))

(declare-fun res!962236 () Bool)

(assert (=> b!1426982 (= res!962236 (and (is-Intermediate!11260 lt!628356) (not (undefined!12072 lt!628356)) (bvslt (x!129063 lt!628356) #b01111111111111111111111111111110) (bvsge (x!129063 lt!628356) #b00000000000000000000000000000000) (bvsge (x!129063 lt!628356) #b00000000000000000000000000000000)))))

(assert (=> b!1426982 (=> (not res!962236) (not e!806028))))

(declare-fun d!153217 () Bool)

(assert (=> d!153217 e!806026))

(declare-fun c!131860 () Bool)

(assert (=> d!153217 (= c!131860 (and (is-Intermediate!11260 lt!628356) (undefined!12072 lt!628356)))))

(assert (=> d!153217 (= lt!628356 e!806025)))

(declare-fun c!131862 () Bool)

(assert (=> d!153217 (= c!131862 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!153217 (= lt!628357 (select (arr!46959 lt!628297) (toIndex!0 lt!628299 mask!2608)))))

(assert (=> d!153217 (validMask!0 mask!2608)))

(assert (=> d!153217 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628299 mask!2608) lt!628299 lt!628297 mask!2608) lt!628356)))

(declare-fun b!1426979 () Bool)

(assert (=> b!1426979 (and (bvsge (index!47433 lt!628356) #b00000000000000000000000000000000) (bvslt (index!47433 lt!628356) (size!47510 lt!628297)))))

(declare-fun res!962237 () Bool)

(assert (=> b!1426979 (= res!962237 (= (select (arr!46959 lt!628297) (index!47433 lt!628356)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1426979 (=> res!962237 e!806024)))

(assert (= (and d!153217 c!131862) b!1426976))

(assert (= (and d!153217 (not c!131862)) b!1426977))

(assert (= (and b!1426977 c!131861) b!1426974))

(assert (= (and b!1426977 (not c!131861)) b!1426980))

(assert (= (and d!153217 c!131860) b!1426978))

(assert (= (and d!153217 (not c!131860)) b!1426982))

(assert (= (and b!1426982 res!962236) b!1426981))

(assert (= (and b!1426981 (not res!962238)) b!1426979))

(assert (= (and b!1426979 (not res!962237)) b!1426975))

(declare-fun m!1317501 () Bool)

(assert (=> b!1426981 m!1317501))

(assert (=> b!1426980 m!1317399))

(declare-fun m!1317503 () Bool)

(assert (=> b!1426980 m!1317503))

(assert (=> b!1426980 m!1317503))

(declare-fun m!1317505 () Bool)

(assert (=> b!1426980 m!1317505))

(assert (=> d!153217 m!1317399))

(declare-fun m!1317507 () Bool)

(assert (=> d!153217 m!1317507))

(assert (=> d!153217 m!1317427))

(assert (=> b!1426979 m!1317501))

(assert (=> b!1426975 m!1317501))

(assert (=> b!1426848 d!153217))

(declare-fun d!153227 () Bool)

(declare-fun lt!628363 () (_ BitVec 32))

(declare-fun lt!628362 () (_ BitVec 32))

(assert (=> d!153227 (= lt!628363 (bvmul (bvxor lt!628362 (bvlshr lt!628362 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153227 (= lt!628362 ((_ extract 31 0) (bvand (bvxor lt!628299 (bvlshr lt!628299 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153227 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!962239 (let ((h!34952 ((_ extract 31 0) (bvand (bvxor lt!628299 (bvlshr lt!628299 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129067 (bvmul (bvxor h!34952 (bvlshr h!34952 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129067 (bvlshr x!129067 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!962239 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!962239 #b00000000000000000000000000000000))))))

(assert (=> d!153227 (= (toIndex!0 lt!628299 mask!2608) (bvand (bvxor lt!628363 (bvlshr lt!628363 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1426848 d!153227))

(declare-fun b!1426983 () Bool)

(declare-fun e!806030 () Bool)

(declare-fun call!67352 () Bool)

(assert (=> b!1426983 (= e!806030 call!67352)))

(declare-fun b!1426984 () Bool)

(declare-fun e!806029 () Bool)

(assert (=> b!1426984 (= e!806029 e!806030)))

(declare-fun c!131863 () Bool)

(assert (=> b!1426984 (= c!131863 (validKeyInArray!0 (select (arr!46959 a!2831) j!81)))))

(declare-fun d!153229 () Bool)

(declare-fun res!962240 () Bool)

(assert (=> d!153229 (=> res!962240 e!806029)))

(assert (=> d!153229 (= res!962240 (bvsge j!81 (size!47510 a!2831)))))

(assert (=> d!153229 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!806029)))

(declare-fun b!1426985 () Bool)

(declare-fun e!806031 () Bool)

(assert (=> b!1426985 (= e!806030 e!806031)))

(declare-fun lt!628364 () (_ BitVec 64))

(assert (=> b!1426985 (= lt!628364 (select (arr!46959 a!2831) j!81))))

(declare-fun lt!628366 () Unit!48214)

(assert (=> b!1426985 (= lt!628366 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!628364 j!81))))

(assert (=> b!1426985 (arrayContainsKey!0 a!2831 lt!628364 #b00000000000000000000000000000000)))

(declare-fun lt!628365 () Unit!48214)

(assert (=> b!1426985 (= lt!628365 lt!628366)))

(declare-fun res!962241 () Bool)

(assert (=> b!1426985 (= res!962241 (= (seekEntryOrOpen!0 (select (arr!46959 a!2831) j!81) a!2831 mask!2608) (Found!11260 j!81)))))

(assert (=> b!1426985 (=> (not res!962241) (not e!806031))))

(declare-fun b!1426986 () Bool)

(assert (=> b!1426986 (= e!806031 call!67352)))

(declare-fun bm!67349 () Bool)

(assert (=> bm!67349 (= call!67352 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(assert (= (and d!153229 (not res!962240)) b!1426984))

(assert (= (and b!1426984 c!131863) b!1426985))

(assert (= (and b!1426984 (not c!131863)) b!1426983))

(assert (= (and b!1426985 res!962241) b!1426986))

(assert (= (or b!1426986 b!1426983) bm!67349))

(assert (=> b!1426984 m!1317409))

(assert (=> b!1426984 m!1317409))

(assert (=> b!1426984 m!1317415))

(assert (=> b!1426985 m!1317409))

(declare-fun m!1317509 () Bool)

(assert (=> b!1426985 m!1317509))

(declare-fun m!1317511 () Bool)

(assert (=> b!1426985 m!1317511))

(assert (=> b!1426985 m!1317409))

(assert (=> b!1426985 m!1317417))

(declare-fun m!1317513 () Bool)

(assert (=> bm!67349 m!1317513))

(assert (=> b!1426843 d!153229))

(declare-fun d!153231 () Bool)

(assert (=> d!153231 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!628369 () Unit!48214)

(declare-fun choose!38 (array!97294 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48214)

(assert (=> d!153231 (= lt!628369 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!153231 (validMask!0 mask!2608)))

(assert (=> d!153231 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!628369)))

(declare-fun bs!41592 () Bool)

(assert (= bs!41592 d!153231))

(assert (=> bs!41592 m!1317395))

(declare-fun m!1317515 () Bool)

(assert (=> bs!41592 m!1317515))

(assert (=> bs!41592 m!1317427))

(assert (=> b!1426843 d!153231))

(declare-fun b!1426987 () Bool)

(declare-fun e!806035 () SeekEntryResult!11260)

(assert (=> b!1426987 (= e!806035 (Intermediate!11260 false (toIndex!0 (select (arr!46959 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1426988 () Bool)

(declare-fun lt!628370 () SeekEntryResult!11260)

(assert (=> b!1426988 (and (bvsge (index!47433 lt!628370) #b00000000000000000000000000000000) (bvslt (index!47433 lt!628370) (size!47510 a!2831)))))

(declare-fun e!806032 () Bool)

(assert (=> b!1426988 (= e!806032 (= (select (arr!46959 a!2831) (index!47433 lt!628370)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1426989 () Bool)

(declare-fun e!806033 () SeekEntryResult!11260)

(assert (=> b!1426989 (= e!806033 (Intermediate!11260 true (toIndex!0 (select (arr!46959 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1426990 () Bool)

(assert (=> b!1426990 (= e!806033 e!806035)))

(declare-fun lt!628371 () (_ BitVec 64))

(declare-fun c!131865 () Bool)

(assert (=> b!1426990 (= c!131865 (or (= lt!628371 (select (arr!46959 a!2831) j!81)) (= (bvadd lt!628371 lt!628371) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1426991 () Bool)

(declare-fun e!806034 () Bool)

(assert (=> b!1426991 (= e!806034 (bvsge (x!129063 lt!628370) #b01111111111111111111111111111110))))

(declare-fun b!1426993 () Bool)

(assert (=> b!1426993 (= e!806035 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46959 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!46959 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1426994 () Bool)

(assert (=> b!1426994 (and (bvsge (index!47433 lt!628370) #b00000000000000000000000000000000) (bvslt (index!47433 lt!628370) (size!47510 a!2831)))))

(declare-fun res!962244 () Bool)

(assert (=> b!1426994 (= res!962244 (= (select (arr!46959 a!2831) (index!47433 lt!628370)) (select (arr!46959 a!2831) j!81)))))

(assert (=> b!1426994 (=> res!962244 e!806032)))

(declare-fun e!806036 () Bool)

(assert (=> b!1426994 (= e!806036 e!806032)))

(declare-fun b!1426995 () Bool)

(assert (=> b!1426995 (= e!806034 e!806036)))

(declare-fun res!962242 () Bool)

(assert (=> b!1426995 (= res!962242 (and (is-Intermediate!11260 lt!628370) (not (undefined!12072 lt!628370)) (bvslt (x!129063 lt!628370) #b01111111111111111111111111111110) (bvsge (x!129063 lt!628370) #b00000000000000000000000000000000) (bvsge (x!129063 lt!628370) #b00000000000000000000000000000000)))))

(assert (=> b!1426995 (=> (not res!962242) (not e!806036))))

(declare-fun d!153233 () Bool)

(assert (=> d!153233 e!806034))

(declare-fun c!131864 () Bool)

(assert (=> d!153233 (= c!131864 (and (is-Intermediate!11260 lt!628370) (undefined!12072 lt!628370)))))

(assert (=> d!153233 (= lt!628370 e!806033)))

(declare-fun c!131866 () Bool)

(assert (=> d!153233 (= c!131866 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!153233 (= lt!628371 (select (arr!46959 a!2831) (toIndex!0 (select (arr!46959 a!2831) j!81) mask!2608)))))

(assert (=> d!153233 (validMask!0 mask!2608)))

(assert (=> d!153233 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46959 a!2831) j!81) mask!2608) (select (arr!46959 a!2831) j!81) a!2831 mask!2608) lt!628370)))

(declare-fun b!1426992 () Bool)

(assert (=> b!1426992 (and (bvsge (index!47433 lt!628370) #b00000000000000000000000000000000) (bvslt (index!47433 lt!628370) (size!47510 a!2831)))))

(declare-fun res!962243 () Bool)

(assert (=> b!1426992 (= res!962243 (= (select (arr!46959 a!2831) (index!47433 lt!628370)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1426992 (=> res!962243 e!806032)))

(assert (= (and d!153233 c!131866) b!1426989))

(assert (= (and d!153233 (not c!131866)) b!1426990))

(assert (= (and b!1426990 c!131865) b!1426987))

(assert (= (and b!1426990 (not c!131865)) b!1426993))

(assert (= (and d!153233 c!131864) b!1426991))

(assert (= (and d!153233 (not c!131864)) b!1426995))

(assert (= (and b!1426995 res!962242) b!1426994))

(assert (= (and b!1426994 (not res!962244)) b!1426992))

(assert (= (and b!1426992 (not res!962243)) b!1426988))

(declare-fun m!1317517 () Bool)

(assert (=> b!1426994 m!1317517))

(assert (=> b!1426993 m!1317411))

(declare-fun m!1317519 () Bool)

(assert (=> b!1426993 m!1317519))

(assert (=> b!1426993 m!1317519))

(assert (=> b!1426993 m!1317409))

(declare-fun m!1317521 () Bool)

(assert (=> b!1426993 m!1317521))

(assert (=> d!153233 m!1317411))

(declare-fun m!1317523 () Bool)

(assert (=> d!153233 m!1317523))

(assert (=> d!153233 m!1317427))

(assert (=> b!1426992 m!1317517))

(assert (=> b!1426988 m!1317517))

(assert (=> b!1426842 d!153233))

(declare-fun d!153235 () Bool)

(declare-fun lt!628373 () (_ BitVec 32))

(declare-fun lt!628372 () (_ BitVec 32))

(assert (=> d!153235 (= lt!628373 (bvmul (bvxor lt!628372 (bvlshr lt!628372 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153235 (= lt!628372 ((_ extract 31 0) (bvand (bvxor (select (arr!46959 a!2831) j!81) (bvlshr (select (arr!46959 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153235 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!962239 (let ((h!34952 ((_ extract 31 0) (bvand (bvxor (select (arr!46959 a!2831) j!81) (bvlshr (select (arr!46959 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129067 (bvmul (bvxor h!34952 (bvlshr h!34952 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129067 (bvlshr x!129067 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!962239 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!962239 #b00000000000000000000000000000000))))))

(assert (=> d!153235 (= (toIndex!0 (select (arr!46959 a!2831) j!81) mask!2608) (bvand (bvxor lt!628373 (bvlshr lt!628373 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1426842 d!153235))

(declare-fun d!153237 () Bool)

(assert (=> d!153237 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!123062 d!153237))

(declare-fun d!153239 () Bool)

(assert (=> d!153239 (= (array_inv!35904 a!2831) (bvsge (size!47510 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!123062 d!153239))

(declare-fun b!1427012 () Bool)

(declare-fun e!806048 () SeekEntryResult!11260)

(assert (=> b!1427012 (= e!806048 (Intermediate!11260 false index!585 x!605))))

(declare-fun b!1427013 () Bool)

(declare-fun lt!628384 () SeekEntryResult!11260)

(assert (=> b!1427013 (and (bvsge (index!47433 lt!628384) #b00000000000000000000000000000000) (bvslt (index!47433 lt!628384) (size!47510 a!2831)))))

(declare-fun e!806045 () Bool)

(assert (=> b!1427013 (= e!806045 (= (select (arr!46959 a!2831) (index!47433 lt!628384)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1427014 () Bool)

(declare-fun e!806046 () SeekEntryResult!11260)

(assert (=> b!1427014 (= e!806046 (Intermediate!11260 true index!585 x!605))))

(declare-fun b!1427015 () Bool)

(assert (=> b!1427015 (= e!806046 e!806048)))

(declare-fun lt!628385 () (_ BitVec 64))

(declare-fun c!131876 () Bool)

(assert (=> b!1427015 (= c!131876 (or (= lt!628385 (select (arr!46959 a!2831) j!81)) (= (bvadd lt!628385 lt!628385) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1427016 () Bool)

(declare-fun e!806047 () Bool)

(assert (=> b!1427016 (= e!806047 (bvsge (x!129063 lt!628384) #b01111111111111111111111111111110))))

(declare-fun b!1427018 () Bool)

(assert (=> b!1427018 (= e!806048 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) (select (arr!46959 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1427019 () Bool)

(assert (=> b!1427019 (and (bvsge (index!47433 lt!628384) #b00000000000000000000000000000000) (bvslt (index!47433 lt!628384) (size!47510 a!2831)))))

(declare-fun res!962247 () Bool)

(assert (=> b!1427019 (= res!962247 (= (select (arr!46959 a!2831) (index!47433 lt!628384)) (select (arr!46959 a!2831) j!81)))))

(assert (=> b!1427019 (=> res!962247 e!806045)))

(declare-fun e!806049 () Bool)

(assert (=> b!1427019 (= e!806049 e!806045)))

(declare-fun b!1427020 () Bool)

(assert (=> b!1427020 (= e!806047 e!806049)))

(declare-fun res!962245 () Bool)

(assert (=> b!1427020 (= res!962245 (and (is-Intermediate!11260 lt!628384) (not (undefined!12072 lt!628384)) (bvslt (x!129063 lt!628384) #b01111111111111111111111111111110) (bvsge (x!129063 lt!628384) #b00000000000000000000000000000000) (bvsge (x!129063 lt!628384) x!605)))))

(assert (=> b!1427020 (=> (not res!962245) (not e!806049))))

(declare-fun d!153241 () Bool)

(assert (=> d!153241 e!806047))

(declare-fun c!131875 () Bool)

(assert (=> d!153241 (= c!131875 (and (is-Intermediate!11260 lt!628384) (undefined!12072 lt!628384)))))

(assert (=> d!153241 (= lt!628384 e!806046)))

(declare-fun c!131877 () Bool)

(assert (=> d!153241 (= c!131877 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!153241 (= lt!628385 (select (arr!46959 a!2831) index!585))))

(assert (=> d!153241 (validMask!0 mask!2608)))

(assert (=> d!153241 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46959 a!2831) j!81) a!2831 mask!2608) lt!628384)))

(declare-fun b!1427017 () Bool)

(assert (=> b!1427017 (and (bvsge (index!47433 lt!628384) #b00000000000000000000000000000000) (bvslt (index!47433 lt!628384) (size!47510 a!2831)))))

(declare-fun res!962246 () Bool)

(assert (=> b!1427017 (= res!962246 (= (select (arr!46959 a!2831) (index!47433 lt!628384)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1427017 (=> res!962246 e!806045)))

(assert (= (and d!153241 c!131877) b!1427014))

(assert (= (and d!153241 (not c!131877)) b!1427015))

(assert (= (and b!1427015 c!131876) b!1427012))

(assert (= (and b!1427015 (not c!131876)) b!1427018))

(assert (= (and d!153241 c!131875) b!1427016))

(assert (= (and d!153241 (not c!131875)) b!1427020))

(assert (= (and b!1427020 res!962245) b!1427019))

(assert (= (and b!1427019 (not res!962247)) b!1427017))

(assert (= (and b!1427017 (not res!962246)) b!1427013))

(declare-fun m!1317525 () Bool)

(assert (=> b!1427019 m!1317525))

(declare-fun m!1317527 () Bool)

(assert (=> b!1427018 m!1317527))

(assert (=> b!1427018 m!1317527))

(assert (=> b!1427018 m!1317409))

(declare-fun m!1317529 () Bool)

(assert (=> b!1427018 m!1317529))

(assert (=> d!153241 m!1317393))

(assert (=> d!153241 m!1317427))

(assert (=> b!1427017 m!1317525))

(assert (=> b!1427013 m!1317525))

(assert (=> b!1426837 d!153241))

(declare-fun d!153243 () Bool)

(assert (=> d!153243 (= (validKeyInArray!0 (select (arr!46959 a!2831) i!982)) (and (not (= (select (arr!46959 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46959 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1426844 d!153243))

(declare-fun b!1427031 () Bool)

(declare-fun e!806058 () SeekEntryResult!11260)

(assert (=> b!1427031 (= e!806058 (Intermediate!11260 false index!585 x!605))))

(declare-fun b!1427032 () Bool)

(declare-fun lt!628389 () SeekEntryResult!11260)

(assert (=> b!1427032 (and (bvsge (index!47433 lt!628389) #b00000000000000000000000000000000) (bvslt (index!47433 lt!628389) (size!47510 lt!628297)))))

(declare-fun e!806055 () Bool)

(assert (=> b!1427032 (= e!806055 (= (select (arr!46959 lt!628297) (index!47433 lt!628389)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1427033 () Bool)

(declare-fun e!806056 () SeekEntryResult!11260)

(assert (=> b!1427033 (= e!806056 (Intermediate!11260 true index!585 x!605))))

(declare-fun b!1427034 () Bool)

(assert (=> b!1427034 (= e!806056 e!806058)))

(declare-fun c!131884 () Bool)

(declare-fun lt!628390 () (_ BitVec 64))

(assert (=> b!1427034 (= c!131884 (or (= lt!628390 lt!628299) (= (bvadd lt!628390 lt!628390) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1427035 () Bool)

(declare-fun e!806057 () Bool)

(assert (=> b!1427035 (= e!806057 (bvsge (x!129063 lt!628389) #b01111111111111111111111111111110))))

(declare-fun b!1427037 () Bool)

(assert (=> b!1427037 (= e!806058 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!628299 lt!628297 mask!2608))))

(declare-fun b!1427038 () Bool)

(assert (=> b!1427038 (and (bvsge (index!47433 lt!628389) #b00000000000000000000000000000000) (bvslt (index!47433 lt!628389) (size!47510 lt!628297)))))

(declare-fun res!962250 () Bool)

(assert (=> b!1427038 (= res!962250 (= (select (arr!46959 lt!628297) (index!47433 lt!628389)) lt!628299))))

(assert (=> b!1427038 (=> res!962250 e!806055)))

(declare-fun e!806059 () Bool)

(assert (=> b!1427038 (= e!806059 e!806055)))

(declare-fun b!1427039 () Bool)

(assert (=> b!1427039 (= e!806057 e!806059)))

(declare-fun res!962248 () Bool)

(assert (=> b!1427039 (= res!962248 (and (is-Intermediate!11260 lt!628389) (not (undefined!12072 lt!628389)) (bvslt (x!129063 lt!628389) #b01111111111111111111111111111110) (bvsge (x!129063 lt!628389) #b00000000000000000000000000000000) (bvsge (x!129063 lt!628389) x!605)))))

(assert (=> b!1427039 (=> (not res!962248) (not e!806059))))

(declare-fun d!153245 () Bool)

(assert (=> d!153245 e!806057))

(declare-fun c!131883 () Bool)

(assert (=> d!153245 (= c!131883 (and (is-Intermediate!11260 lt!628389) (undefined!12072 lt!628389)))))

(assert (=> d!153245 (= lt!628389 e!806056)))

(declare-fun c!131885 () Bool)

(assert (=> d!153245 (= c!131885 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!153245 (= lt!628390 (select (arr!46959 lt!628297) index!585))))

(assert (=> d!153245 (validMask!0 mask!2608)))

(assert (=> d!153245 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628299 lt!628297 mask!2608) lt!628389)))

(declare-fun b!1427036 () Bool)

(assert (=> b!1427036 (and (bvsge (index!47433 lt!628389) #b00000000000000000000000000000000) (bvslt (index!47433 lt!628389) (size!47510 lt!628297)))))

(declare-fun res!962249 () Bool)

(assert (=> b!1427036 (= res!962249 (= (select (arr!46959 lt!628297) (index!47433 lt!628389)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1427036 (=> res!962249 e!806055)))

(assert (= (and d!153245 c!131885) b!1427033))

(assert (= (and d!153245 (not c!131885)) b!1427034))

(assert (= (and b!1427034 c!131884) b!1427031))

(assert (= (and b!1427034 (not c!131884)) b!1427037))

(assert (= (and d!153245 c!131883) b!1427035))

(assert (= (and d!153245 (not c!131883)) b!1427039))

(assert (= (and b!1427039 res!962248) b!1427038))

(assert (= (and b!1427038 (not res!962250)) b!1427036))

(assert (= (and b!1427036 (not res!962249)) b!1427032))

(declare-fun m!1317533 () Bool)

(assert (=> b!1427038 m!1317533))

(assert (=> b!1427037 m!1317527))

(assert (=> b!1427037 m!1317527))

(declare-fun m!1317539 () Bool)

(assert (=> b!1427037 m!1317539))

(declare-fun m!1317541 () Bool)

(assert (=> d!153245 m!1317541))

(assert (=> d!153245 m!1317427))

(assert (=> b!1427036 m!1317533))

(assert (=> b!1427032 m!1317533))

(assert (=> b!1426839 d!153245))

(declare-fun b!1427080 () Bool)

(declare-fun e!806083 () SeekEntryResult!11260)

(declare-fun lt!628407 () SeekEntryResult!11260)

(assert (=> b!1427080 (= e!806083 (MissingZero!11260 (index!47433 lt!628407)))))

(declare-fun d!153247 () Bool)

(declare-fun lt!628408 () SeekEntryResult!11260)

(assert (=> d!153247 (and (or (is-Undefined!11260 lt!628408) (not (is-Found!11260 lt!628408)) (and (bvsge (index!47432 lt!628408) #b00000000000000000000000000000000) (bvslt (index!47432 lt!628408) (size!47510 a!2831)))) (or (is-Undefined!11260 lt!628408) (is-Found!11260 lt!628408) (not (is-MissingZero!11260 lt!628408)) (and (bvsge (index!47431 lt!628408) #b00000000000000000000000000000000) (bvslt (index!47431 lt!628408) (size!47510 a!2831)))) (or (is-Undefined!11260 lt!628408) (is-Found!11260 lt!628408) (is-MissingZero!11260 lt!628408) (not (is-MissingVacant!11260 lt!628408)) (and (bvsge (index!47434 lt!628408) #b00000000000000000000000000000000) (bvslt (index!47434 lt!628408) (size!47510 a!2831)))) (or (is-Undefined!11260 lt!628408) (ite (is-Found!11260 lt!628408) (= (select (arr!46959 a!2831) (index!47432 lt!628408)) (select (arr!46959 a!2831) j!81)) (ite (is-MissingZero!11260 lt!628408) (= (select (arr!46959 a!2831) (index!47431 lt!628408)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!11260 lt!628408) (= (select (arr!46959 a!2831) (index!47434 lt!628408)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!806082 () SeekEntryResult!11260)

(assert (=> d!153247 (= lt!628408 e!806082)))

(declare-fun c!131902 () Bool)

(assert (=> d!153247 (= c!131902 (and (is-Intermediate!11260 lt!628407) (undefined!12072 lt!628407)))))

(assert (=> d!153247 (= lt!628407 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46959 a!2831) j!81) mask!2608) (select (arr!46959 a!2831) j!81) a!2831 mask!2608))))

(assert (=> d!153247 (validMask!0 mask!2608)))

(assert (=> d!153247 (= (seekEntryOrOpen!0 (select (arr!46959 a!2831) j!81) a!2831 mask!2608) lt!628408)))

(declare-fun b!1427081 () Bool)

(declare-fun e!806084 () SeekEntryResult!11260)

(assert (=> b!1427081 (= e!806082 e!806084)))

(declare-fun lt!628409 () (_ BitVec 64))

(assert (=> b!1427081 (= lt!628409 (select (arr!46959 a!2831) (index!47433 lt!628407)))))

(declare-fun c!131900 () Bool)

(assert (=> b!1427081 (= c!131900 (= lt!628409 (select (arr!46959 a!2831) j!81)))))

(declare-fun b!1427082 () Bool)

(declare-fun c!131901 () Bool)

(assert (=> b!1427082 (= c!131901 (= lt!628409 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1427082 (= e!806084 e!806083)))

(declare-fun b!1427083 () Bool)

(assert (=> b!1427083 (= e!806082 Undefined!11260)))

(declare-fun b!1427084 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97294 (_ BitVec 32)) SeekEntryResult!11260)

(assert (=> b!1427084 (= e!806083 (seekKeyOrZeroReturnVacant!0 (x!129063 lt!628407) (index!47433 lt!628407) (index!47433 lt!628407) (select (arr!46959 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1427085 () Bool)

(assert (=> b!1427085 (= e!806084 (Found!11260 (index!47433 lt!628407)))))

(assert (= (and d!153247 c!131902) b!1427083))

(assert (= (and d!153247 (not c!131902)) b!1427081))

(assert (= (and b!1427081 c!131900) b!1427085))

(assert (= (and b!1427081 (not c!131900)) b!1427082))

(assert (= (and b!1427082 c!131901) b!1427080))

(assert (= (and b!1427082 (not c!131901)) b!1427084))

(declare-fun m!1317555 () Bool)

(assert (=> d!153247 m!1317555))

(assert (=> d!153247 m!1317411))

(assert (=> d!153247 m!1317409))

(assert (=> d!153247 m!1317413))

(declare-fun m!1317557 () Bool)

(assert (=> d!153247 m!1317557))

(declare-fun m!1317559 () Bool)

(assert (=> d!153247 m!1317559))

(assert (=> d!153247 m!1317427))

(assert (=> d!153247 m!1317409))

(assert (=> d!153247 m!1317411))

(declare-fun m!1317561 () Bool)

(assert (=> b!1427081 m!1317561))

(assert (=> b!1427084 m!1317409))

(declare-fun m!1317563 () Bool)

(assert (=> b!1427084 m!1317563))

(assert (=> b!1426845 d!153247))

(push 1)

