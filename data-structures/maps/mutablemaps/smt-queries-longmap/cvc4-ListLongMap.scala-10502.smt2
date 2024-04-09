; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123692 () Bool)

(assert start!123692)

(declare-fun b!1433508 () Bool)

(declare-fun res!967291 () Bool)

(declare-fun e!809138 () Bool)

(assert (=> b!1433508 (=> (not res!967291) (not e!809138))))

(declare-datatypes ((array!97525 0))(
  ( (array!97526 (arr!47064 (Array (_ BitVec 32) (_ BitVec 64))) (size!47615 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97525)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1433508 (= res!967291 (validKeyInArray!0 (select (arr!47064 a!2831) j!81)))))

(declare-fun b!1433509 () Bool)

(declare-fun res!967286 () Bool)

(assert (=> b!1433509 (=> (not res!967286) (not e!809138))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1433509 (= res!967286 (and (= (size!47615 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47615 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47615 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1433510 () Bool)

(declare-fun e!809133 () Bool)

(declare-fun e!809137 () Bool)

(assert (=> b!1433510 (= e!809133 (not e!809137))))

(declare-fun res!967293 () Bool)

(assert (=> b!1433510 (=> res!967293 e!809137)))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1433510 (= res!967293 (or (= (select (arr!47064 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47064 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47064 a!2831) index!585) (select (arr!47064 a!2831) j!81)) (= (select (store (arr!47064 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!809135 () Bool)

(assert (=> b!1433510 e!809135))

(declare-fun res!967282 () Bool)

(assert (=> b!1433510 (=> (not res!967282) (not e!809135))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97525 (_ BitVec 32)) Bool)

(assert (=> b!1433510 (= res!967282 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48424 0))(
  ( (Unit!48425) )
))
(declare-fun lt!631039 () Unit!48424)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97525 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48424)

(assert (=> b!1433510 (= lt!631039 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1433511 () Bool)

(declare-fun res!967285 () Bool)

(assert (=> b!1433511 (=> (not res!967285) (not e!809138))))

(assert (=> b!1433511 (= res!967285 (validKeyInArray!0 (select (arr!47064 a!2831) i!982)))))

(declare-fun b!1433512 () Bool)

(declare-fun res!967289 () Bool)

(assert (=> b!1433512 (=> (not res!967289) (not e!809133))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1433512 (= res!967289 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1433513 () Bool)

(declare-fun e!809134 () Bool)

(assert (=> b!1433513 (= e!809138 e!809134)))

(declare-fun res!967287 () Bool)

(assert (=> b!1433513 (=> (not res!967287) (not e!809134))))

(declare-datatypes ((SeekEntryResult!11365 0))(
  ( (MissingZero!11365 (index!47851 (_ BitVec 32))) (Found!11365 (index!47852 (_ BitVec 32))) (Intermediate!11365 (undefined!12177 Bool) (index!47853 (_ BitVec 32)) (x!129499 (_ BitVec 32))) (Undefined!11365) (MissingVacant!11365 (index!47854 (_ BitVec 32))) )
))
(declare-fun lt!631036 () SeekEntryResult!11365)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97525 (_ BitVec 32)) SeekEntryResult!11365)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1433513 (= res!967287 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47064 a!2831) j!81) mask!2608) (select (arr!47064 a!2831) j!81) a!2831 mask!2608) lt!631036))))

(assert (=> b!1433513 (= lt!631036 (Intermediate!11365 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1433514 () Bool)

(declare-fun res!967288 () Bool)

(assert (=> b!1433514 (=> (not res!967288) (not e!809138))))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1433514 (= res!967288 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47615 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47615 a!2831))))))

(declare-fun b!1433515 () Bool)

(declare-fun res!967284 () Bool)

(assert (=> b!1433515 (=> (not res!967284) (not e!809138))))

(declare-datatypes ((List!33754 0))(
  ( (Nil!33751) (Cons!33750 (h!35076 (_ BitVec 64)) (t!48455 List!33754)) )
))
(declare-fun arrayNoDuplicates!0 (array!97525 (_ BitVec 32) List!33754) Bool)

(assert (=> b!1433515 (= res!967284 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33751))))

(declare-fun b!1433516 () Bool)

(assert (=> b!1433516 (= e!809134 e!809133)))

(declare-fun res!967292 () Bool)

(assert (=> b!1433516 (=> (not res!967292) (not e!809133))))

(declare-fun lt!631035 () array!97525)

(declare-fun lt!631038 () (_ BitVec 64))

(declare-fun lt!631034 () SeekEntryResult!11365)

(assert (=> b!1433516 (= res!967292 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631038 mask!2608) lt!631038 lt!631035 mask!2608) lt!631034))))

(assert (=> b!1433516 (= lt!631034 (Intermediate!11365 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1433516 (= lt!631038 (select (store (arr!47064 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1433516 (= lt!631035 (array!97526 (store (arr!47064 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47615 a!2831)))))

(declare-fun b!1433518 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97525 (_ BitVec 32)) SeekEntryResult!11365)

(assert (=> b!1433518 (= e!809135 (= (seekEntryOrOpen!0 (select (arr!47064 a!2831) j!81) a!2831 mask!2608) (Found!11365 j!81)))))

(declare-fun b!1433519 () Bool)

(declare-fun res!967281 () Bool)

(assert (=> b!1433519 (=> (not res!967281) (not e!809133))))

(assert (=> b!1433519 (= res!967281 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47064 a!2831) j!81) a!2831 mask!2608) lt!631036))))

(declare-fun lt!631037 () (_ BitVec 32))

(declare-fun b!1433520 () Bool)

(assert (=> b!1433520 (= e!809137 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (and (bvsge lt!631037 #b00000000000000000000000000000000) (bvslt lt!631037 (size!47615 a!2831)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1433520 (= lt!631037 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1433521 () Bool)

(declare-fun res!967283 () Bool)

(assert (=> b!1433521 (=> (not res!967283) (not e!809133))))

(assert (=> b!1433521 (= res!967283 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631038 lt!631035 mask!2608) lt!631034))))

(declare-fun res!967290 () Bool)

(assert (=> start!123692 (=> (not res!967290) (not e!809138))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123692 (= res!967290 (validMask!0 mask!2608))))

(assert (=> start!123692 e!809138))

(assert (=> start!123692 true))

(declare-fun array_inv!36009 (array!97525) Bool)

(assert (=> start!123692 (array_inv!36009 a!2831)))

(declare-fun b!1433517 () Bool)

(declare-fun res!967280 () Bool)

(assert (=> b!1433517 (=> (not res!967280) (not e!809138))))

(assert (=> b!1433517 (= res!967280 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!123692 res!967290) b!1433509))

(assert (= (and b!1433509 res!967286) b!1433511))

(assert (= (and b!1433511 res!967285) b!1433508))

(assert (= (and b!1433508 res!967291) b!1433517))

(assert (= (and b!1433517 res!967280) b!1433515))

(assert (= (and b!1433515 res!967284) b!1433514))

(assert (= (and b!1433514 res!967288) b!1433513))

(assert (= (and b!1433513 res!967287) b!1433516))

(assert (= (and b!1433516 res!967292) b!1433519))

(assert (= (and b!1433519 res!967281) b!1433521))

(assert (= (and b!1433521 res!967283) b!1433512))

(assert (= (and b!1433512 res!967289) b!1433510))

(assert (= (and b!1433510 res!967282) b!1433518))

(assert (= (and b!1433510 (not res!967293)) b!1433520))

(declare-fun m!1323291 () Bool)

(assert (=> b!1433513 m!1323291))

(assert (=> b!1433513 m!1323291))

(declare-fun m!1323293 () Bool)

(assert (=> b!1433513 m!1323293))

(assert (=> b!1433513 m!1323293))

(assert (=> b!1433513 m!1323291))

(declare-fun m!1323295 () Bool)

(assert (=> b!1433513 m!1323295))

(declare-fun m!1323297 () Bool)

(assert (=> b!1433517 m!1323297))

(declare-fun m!1323299 () Bool)

(assert (=> b!1433510 m!1323299))

(declare-fun m!1323301 () Bool)

(assert (=> b!1433510 m!1323301))

(declare-fun m!1323303 () Bool)

(assert (=> b!1433510 m!1323303))

(declare-fun m!1323305 () Bool)

(assert (=> b!1433510 m!1323305))

(assert (=> b!1433510 m!1323291))

(declare-fun m!1323307 () Bool)

(assert (=> b!1433510 m!1323307))

(declare-fun m!1323309 () Bool)

(assert (=> b!1433521 m!1323309))

(assert (=> b!1433518 m!1323291))

(assert (=> b!1433518 m!1323291))

(declare-fun m!1323311 () Bool)

(assert (=> b!1433518 m!1323311))

(declare-fun m!1323313 () Bool)

(assert (=> b!1433516 m!1323313))

(assert (=> b!1433516 m!1323313))

(declare-fun m!1323315 () Bool)

(assert (=> b!1433516 m!1323315))

(assert (=> b!1433516 m!1323299))

(declare-fun m!1323317 () Bool)

(assert (=> b!1433516 m!1323317))

(declare-fun m!1323319 () Bool)

(assert (=> b!1433511 m!1323319))

(assert (=> b!1433511 m!1323319))

(declare-fun m!1323321 () Bool)

(assert (=> b!1433511 m!1323321))

(assert (=> b!1433519 m!1323291))

(assert (=> b!1433519 m!1323291))

(declare-fun m!1323323 () Bool)

(assert (=> b!1433519 m!1323323))

(declare-fun m!1323325 () Bool)

(assert (=> b!1433520 m!1323325))

(declare-fun m!1323327 () Bool)

(assert (=> start!123692 m!1323327))

(declare-fun m!1323329 () Bool)

(assert (=> start!123692 m!1323329))

(assert (=> b!1433508 m!1323291))

(assert (=> b!1433508 m!1323291))

(declare-fun m!1323331 () Bool)

(assert (=> b!1433508 m!1323331))

(declare-fun m!1323333 () Bool)

(assert (=> b!1433515 m!1323333))

(push 1)

(assert (not b!1433520))

(assert (not b!1433510))

(assert (not b!1433519))

(assert (not b!1433517))

(assert (not b!1433513))

(assert (not b!1433515))

(assert (not b!1433511))

(assert (not b!1433521))

(assert (not b!1433518))

(assert (not start!123692))

(assert (not b!1433516))

(assert (not b!1433508))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1433589 () Bool)

(declare-fun e!809181 () Bool)

(declare-fun call!67503 () Bool)

(assert (=> b!1433589 (= e!809181 call!67503)))

(declare-fun d!154025 () Bool)

(declare-fun res!967324 () Bool)

(declare-fun e!809184 () Bool)

(assert (=> d!154025 (=> res!967324 e!809184)))

(assert (=> d!154025 (= res!967324 (bvsge #b00000000000000000000000000000000 (size!47615 a!2831)))))

(assert (=> d!154025 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33751) e!809184)))

(declare-fun b!1433590 () Bool)

(declare-fun e!809183 () Bool)

(declare-fun contains!9880 (List!33754 (_ BitVec 64)) Bool)

(assert (=> b!1433590 (= e!809183 (contains!9880 Nil!33751 (select (arr!47064 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1433591 () Bool)

(assert (=> b!1433591 (= e!809181 call!67503)))

(declare-fun b!1433592 () Bool)

(declare-fun e!809182 () Bool)

(assert (=> b!1433592 (= e!809182 e!809181)))

(declare-fun c!132635 () Bool)

(assert (=> b!1433592 (= c!132635 (validKeyInArray!0 (select (arr!47064 a!2831) #b00000000000000000000000000000000)))))

(declare-fun bm!67500 () Bool)

(assert (=> bm!67500 (= call!67503 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!132635 (Cons!33750 (select (arr!47064 a!2831) #b00000000000000000000000000000000) Nil!33751) Nil!33751)))))

(declare-fun b!1433593 () Bool)

(assert (=> b!1433593 (= e!809184 e!809182)))

(declare-fun res!967322 () Bool)

(assert (=> b!1433593 (=> (not res!967322) (not e!809182))))

(assert (=> b!1433593 (= res!967322 (not e!809183))))

(declare-fun res!967323 () Bool)

(assert (=> b!1433593 (=> (not res!967323) (not e!809183))))

(assert (=> b!1433593 (= res!967323 (validKeyInArray!0 (select (arr!47064 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!154025 (not res!967324)) b!1433593))

(assert (= (and b!1433593 res!967323) b!1433590))

(assert (= (and b!1433593 res!967322) b!1433592))

(assert (= (and b!1433592 c!132635) b!1433589))

(assert (= (and b!1433592 (not c!132635)) b!1433591))

(assert (= (or b!1433589 b!1433591) bm!67500))

(declare-fun m!1323365 () Bool)

(assert (=> b!1433590 m!1323365))

(assert (=> b!1433590 m!1323365))

(declare-fun m!1323367 () Bool)

(assert (=> b!1433590 m!1323367))

(assert (=> b!1433592 m!1323365))

(assert (=> b!1433592 m!1323365))

(declare-fun m!1323369 () Bool)

(assert (=> b!1433592 m!1323369))

(assert (=> bm!67500 m!1323365))

(declare-fun m!1323371 () Bool)

(assert (=> bm!67500 m!1323371))

(assert (=> b!1433593 m!1323365))

(assert (=> b!1433593 m!1323365))

(assert (=> b!1433593 m!1323369))

(assert (=> b!1433515 d!154025))

(declare-fun b!1433628 () Bool)

(declare-fun lt!631087 () SeekEntryResult!11365)

(assert (=> b!1433628 (and (bvsge (index!47853 lt!631087) #b00000000000000000000000000000000) (bvslt (index!47853 lt!631087) (size!47615 lt!631035)))))

(declare-fun res!967339 () Bool)

(assert (=> b!1433628 (= res!967339 (= (select (arr!47064 lt!631035) (index!47853 lt!631087)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!809207 () Bool)

(assert (=> b!1433628 (=> res!967339 e!809207)))

(declare-fun b!1433629 () Bool)

(declare-fun e!809211 () SeekEntryResult!11365)

(declare-fun e!809210 () SeekEntryResult!11365)

(assert (=> b!1433629 (= e!809211 e!809210)))

(declare-fun c!132647 () Bool)

(declare-fun lt!631088 () (_ BitVec 64))

(assert (=> b!1433629 (= c!132647 (or (= lt!631088 lt!631038) (= (bvadd lt!631088 lt!631088) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1433630 () Bool)

(assert (=> b!1433630 (= e!809210 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!631038 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!631038 lt!631035 mask!2608))))

(declare-fun b!1433631 () Bool)

(declare-fun e!809209 () Bool)

(declare-fun e!809208 () Bool)

(assert (=> b!1433631 (= e!809209 e!809208)))

(declare-fun res!967341 () Bool)

(assert (=> b!1433631 (= res!967341 (and (is-Intermediate!11365 lt!631087) (not (undefined!12177 lt!631087)) (bvslt (x!129499 lt!631087) #b01111111111111111111111111111110) (bvsge (x!129499 lt!631087) #b00000000000000000000000000000000) (bvsge (x!129499 lt!631087) #b00000000000000000000000000000000)))))

(assert (=> b!1433631 (=> (not res!967341) (not e!809208))))

(declare-fun b!1433632 () Bool)

(assert (=> b!1433632 (= e!809210 (Intermediate!11365 false (toIndex!0 lt!631038 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1433633 () Bool)

(assert (=> b!1433633 (and (bvsge (index!47853 lt!631087) #b00000000000000000000000000000000) (bvslt (index!47853 lt!631087) (size!47615 lt!631035)))))

(declare-fun res!967340 () Bool)

(assert (=> b!1433633 (= res!967340 (= (select (arr!47064 lt!631035) (index!47853 lt!631087)) lt!631038))))

(assert (=> b!1433633 (=> res!967340 e!809207)))

(assert (=> b!1433633 (= e!809208 e!809207)))

(declare-fun b!1433634 () Bool)

(assert (=> b!1433634 (= e!809211 (Intermediate!11365 true (toIndex!0 lt!631038 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1433635 () Bool)

(assert (=> b!1433635 (and (bvsge (index!47853 lt!631087) #b00000000000000000000000000000000) (bvslt (index!47853 lt!631087) (size!47615 lt!631035)))))

(assert (=> b!1433635 (= e!809207 (= (select (arr!47064 lt!631035) (index!47853 lt!631087)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1433636 () Bool)

(assert (=> b!1433636 (= e!809209 (bvsge (x!129499 lt!631087) #b01111111111111111111111111111110))))

(declare-fun d!154037 () Bool)

(assert (=> d!154037 e!809209))

(declare-fun c!132646 () Bool)

(assert (=> d!154037 (= c!132646 (and (is-Intermediate!11365 lt!631087) (undefined!12177 lt!631087)))))

(assert (=> d!154037 (= lt!631087 e!809211)))

(declare-fun c!132648 () Bool)

(assert (=> d!154037 (= c!132648 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!154037 (= lt!631088 (select (arr!47064 lt!631035) (toIndex!0 lt!631038 mask!2608)))))

(assert (=> d!154037 (validMask!0 mask!2608)))

(assert (=> d!154037 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631038 mask!2608) lt!631038 lt!631035 mask!2608) lt!631087)))

(assert (= (and d!154037 c!132648) b!1433634))

(assert (= (and d!154037 (not c!132648)) b!1433629))

(assert (= (and b!1433629 c!132647) b!1433632))

(assert (= (and b!1433629 (not c!132647)) b!1433630))

(assert (= (and d!154037 c!132646) b!1433636))

(assert (= (and d!154037 (not c!132646)) b!1433631))

(assert (= (and b!1433631 res!967341) b!1433633))

(assert (= (and b!1433633 (not res!967340)) b!1433628))

(assert (= (and b!1433628 (not res!967339)) b!1433635))

(declare-fun m!1323395 () Bool)

(assert (=> b!1433633 m!1323395))

(assert (=> b!1433635 m!1323395))

(assert (=> b!1433630 m!1323313))

(declare-fun m!1323397 () Bool)

(assert (=> b!1433630 m!1323397))

(assert (=> b!1433630 m!1323397))

(declare-fun m!1323399 () Bool)

(assert (=> b!1433630 m!1323399))

(assert (=> d!154037 m!1323313))

(declare-fun m!1323401 () Bool)

(assert (=> d!154037 m!1323401))

(assert (=> d!154037 m!1323327))

(assert (=> b!1433628 m!1323395))

(assert (=> b!1433516 d!154037))

(declare-fun d!154051 () Bool)

(declare-fun lt!631100 () (_ BitVec 32))

(declare-fun lt!631099 () (_ BitVec 32))

(assert (=> d!154051 (= lt!631100 (bvmul (bvxor lt!631099 (bvlshr lt!631099 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154051 (= lt!631099 ((_ extract 31 0) (bvand (bvxor lt!631038 (bvlshr lt!631038 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154051 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!967342 (let ((h!35078 ((_ extract 31 0) (bvand (bvxor lt!631038 (bvlshr lt!631038 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129504 (bvmul (bvxor h!35078 (bvlshr h!35078 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129504 (bvlshr x!129504 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!967342 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!967342 #b00000000000000000000000000000000))))))

(assert (=> d!154051 (= (toIndex!0 lt!631038 mask!2608) (bvand (bvxor lt!631100 (bvlshr lt!631100 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1433516 d!154051))

(declare-fun b!1433675 () Bool)

(declare-fun e!809235 () Bool)

(declare-fun e!809236 () Bool)

(assert (=> b!1433675 (= e!809235 e!809236)))

(declare-fun lt!631115 () (_ BitVec 64))

(assert (=> b!1433675 (= lt!631115 (select (arr!47064 a!2831) #b00000000000000000000000000000000))))

(declare-fun lt!631114 () Unit!48424)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97525 (_ BitVec 64) (_ BitVec 32)) Unit!48424)

(assert (=> b!1433675 (= lt!631114 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!631115 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97525 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1433675 (arrayContainsKey!0 a!2831 lt!631115 #b00000000000000000000000000000000)))

(declare-fun lt!631116 () Unit!48424)

(assert (=> b!1433675 (= lt!631116 lt!631114)))

(declare-fun res!967353 () Bool)

(assert (=> b!1433675 (= res!967353 (= (seekEntryOrOpen!0 (select (arr!47064 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11365 #b00000000000000000000000000000000)))))

(assert (=> b!1433675 (=> (not res!967353) (not e!809236))))

(declare-fun b!1433676 () Bool)

(declare-fun e!809237 () Bool)

(assert (=> b!1433676 (= e!809237 e!809235)))

(declare-fun c!132662 () Bool)

(assert (=> b!1433676 (= c!132662 (validKeyInArray!0 (select (arr!47064 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1433677 () Bool)

(declare-fun call!67512 () Bool)

(assert (=> b!1433677 (= e!809236 call!67512)))

(declare-fun bm!67509 () Bool)

(assert (=> bm!67509 (= call!67512 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1433678 () Bool)

(assert (=> b!1433678 (= e!809235 call!67512)))

(declare-fun d!154053 () Bool)

(declare-fun res!967354 () Bool)

(assert (=> d!154053 (=> res!967354 e!809237)))

(assert (=> d!154053 (= res!967354 (bvsge #b00000000000000000000000000000000 (size!47615 a!2831)))))

(assert (=> d!154053 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!809237)))

(assert (= (and d!154053 (not res!967354)) b!1433676))

(assert (= (and b!1433676 c!132662) b!1433675))

(assert (= (and b!1433676 (not c!132662)) b!1433678))

(assert (= (and b!1433675 res!967353) b!1433677))

(assert (= (or b!1433677 b!1433678) bm!67509))

(assert (=> b!1433675 m!1323365))

(declare-fun m!1323413 () Bool)

(assert (=> b!1433675 m!1323413))

(declare-fun m!1323415 () Bool)

(assert (=> b!1433675 m!1323415))

(assert (=> b!1433675 m!1323365))

(declare-fun m!1323417 () Bool)

(assert (=> b!1433675 m!1323417))

(assert (=> b!1433676 m!1323365))

(assert (=> b!1433676 m!1323365))

(assert (=> b!1433676 m!1323369))

(declare-fun m!1323419 () Bool)

(assert (=> bm!67509 m!1323419))

(assert (=> b!1433517 d!154053))

(declare-fun d!154057 () Bool)

(assert (=> d!154057 (= (validKeyInArray!0 (select (arr!47064 a!2831) j!81)) (and (not (= (select (arr!47064 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47064 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1433508 d!154057))

(declare-fun b!1433704 () Bool)

(declare-fun lt!631120 () SeekEntryResult!11365)

(assert (=> b!1433704 (and (bvsge (index!47853 lt!631120) #b00000000000000000000000000000000) (bvslt (index!47853 lt!631120) (size!47615 a!2831)))))

(declare-fun res!967366 () Bool)

(assert (=> b!1433704 (= res!967366 (= (select (arr!47064 a!2831) (index!47853 lt!631120)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!809255 () Bool)

(assert (=> b!1433704 (=> res!967366 e!809255)))

(declare-fun b!1433705 () Bool)

(declare-fun e!809259 () SeekEntryResult!11365)

(declare-fun e!809258 () SeekEntryResult!11365)

(assert (=> b!1433705 (= e!809259 e!809258)))

(declare-fun lt!631121 () (_ BitVec 64))

(declare-fun c!132672 () Bool)

(assert (=> b!1433705 (= c!132672 (or (= lt!631121 (select (arr!47064 a!2831) j!81)) (= (bvadd lt!631121 lt!631121) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1433706 () Bool)

(assert (=> b!1433706 (= e!809258 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) (select (arr!47064 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1433707 () Bool)

(declare-fun e!809257 () Bool)

(declare-fun e!809256 () Bool)

(assert (=> b!1433707 (= e!809257 e!809256)))

(declare-fun res!967368 () Bool)

(assert (=> b!1433707 (= res!967368 (and (is-Intermediate!11365 lt!631120) (not (undefined!12177 lt!631120)) (bvslt (x!129499 lt!631120) #b01111111111111111111111111111110) (bvsge (x!129499 lt!631120) #b00000000000000000000000000000000) (bvsge (x!129499 lt!631120) x!605)))))

(assert (=> b!1433707 (=> (not res!967368) (not e!809256))))

(declare-fun b!1433708 () Bool)

(assert (=> b!1433708 (= e!809258 (Intermediate!11365 false index!585 x!605))))

(declare-fun b!1433709 () Bool)

(assert (=> b!1433709 (and (bvsge (index!47853 lt!631120) #b00000000000000000000000000000000) (bvslt (index!47853 lt!631120) (size!47615 a!2831)))))

(declare-fun res!967367 () Bool)

(assert (=> b!1433709 (= res!967367 (= (select (arr!47064 a!2831) (index!47853 lt!631120)) (select (arr!47064 a!2831) j!81)))))

(assert (=> b!1433709 (=> res!967367 e!809255)))

(assert (=> b!1433709 (= e!809256 e!809255)))

(declare-fun b!1433710 () Bool)

(assert (=> b!1433710 (= e!809259 (Intermediate!11365 true index!585 x!605))))

(declare-fun b!1433711 () Bool)

(assert (=> b!1433711 (and (bvsge (index!47853 lt!631120) #b00000000000000000000000000000000) (bvslt (index!47853 lt!631120) (size!47615 a!2831)))))

(assert (=> b!1433711 (= e!809255 (= (select (arr!47064 a!2831) (index!47853 lt!631120)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1433712 () Bool)

(assert (=> b!1433712 (= e!809257 (bvsge (x!129499 lt!631120) #b01111111111111111111111111111110))))

(declare-fun d!154061 () Bool)

(assert (=> d!154061 e!809257))

(declare-fun c!132671 () Bool)

(assert (=> d!154061 (= c!132671 (and (is-Intermediate!11365 lt!631120) (undefined!12177 lt!631120)))))

(assert (=> d!154061 (= lt!631120 e!809259)))

(declare-fun c!132673 () Bool)

(assert (=> d!154061 (= c!132673 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!154061 (= lt!631121 (select (arr!47064 a!2831) index!585))))

(assert (=> d!154061 (validMask!0 mask!2608)))

(assert (=> d!154061 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47064 a!2831) j!81) a!2831 mask!2608) lt!631120)))

(assert (= (and d!154061 c!132673) b!1433710))

(assert (= (and d!154061 (not c!132673)) b!1433705))

(assert (= (and b!1433705 c!132672) b!1433708))

(assert (= (and b!1433705 (not c!132672)) b!1433706))

(assert (= (and d!154061 c!132671) b!1433712))

(assert (= (and d!154061 (not c!132671)) b!1433707))

(assert (= (and b!1433707 res!967368) b!1433709))

(assert (= (and b!1433709 (not res!967367)) b!1433704))

(assert (= (and b!1433704 (not res!967366)) b!1433711))

(declare-fun m!1323431 () Bool)

(assert (=> b!1433709 m!1323431))

(assert (=> b!1433711 m!1323431))

(assert (=> b!1433706 m!1323325))

(assert (=> b!1433706 m!1323325))

(assert (=> b!1433706 m!1323291))

(declare-fun m!1323433 () Bool)

(assert (=> b!1433706 m!1323433))

(assert (=> d!154061 m!1323303))

(assert (=> d!154061 m!1323327))

(assert (=> b!1433704 m!1323431))

(assert (=> b!1433519 d!154061))

(declare-fun b!1433752 () Bool)

(declare-fun e!809281 () SeekEntryResult!11365)

(declare-fun e!809283 () SeekEntryResult!11365)

(assert (=> b!1433752 (= e!809281 e!809283)))

(declare-fun lt!631145 () (_ BitVec 64))

(declare-fun lt!631147 () SeekEntryResult!11365)

(assert (=> b!1433752 (= lt!631145 (select (arr!47064 a!2831) (index!47853 lt!631147)))))

(declare-fun c!132691 () Bool)

(assert (=> b!1433752 (= c!132691 (= lt!631145 (select (arr!47064 a!2831) j!81)))))

(declare-fun b!1433753 () Bool)

(assert (=> b!1433753 (= e!809281 Undefined!11365)))

(declare-fun d!154065 () Bool)

(declare-fun lt!631146 () SeekEntryResult!11365)

(assert (=> d!154065 (and (or (is-Undefined!11365 lt!631146) (not (is-Found!11365 lt!631146)) (and (bvsge (index!47852 lt!631146) #b00000000000000000000000000000000) (bvslt (index!47852 lt!631146) (size!47615 a!2831)))) (or (is-Undefined!11365 lt!631146) (is-Found!11365 lt!631146) (not (is-MissingZero!11365 lt!631146)) (and (bvsge (index!47851 lt!631146) #b00000000000000000000000000000000) (bvslt (index!47851 lt!631146) (size!47615 a!2831)))) (or (is-Undefined!11365 lt!631146) (is-Found!11365 lt!631146) (is-MissingZero!11365 lt!631146) (not (is-MissingVacant!11365 lt!631146)) (and (bvsge (index!47854 lt!631146) #b00000000000000000000000000000000) (bvslt (index!47854 lt!631146) (size!47615 a!2831)))) (or (is-Undefined!11365 lt!631146) (ite (is-Found!11365 lt!631146) (= (select (arr!47064 a!2831) (index!47852 lt!631146)) (select (arr!47064 a!2831) j!81)) (ite (is-MissingZero!11365 lt!631146) (= (select (arr!47064 a!2831) (index!47851 lt!631146)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!11365 lt!631146) (= (select (arr!47064 a!2831) (index!47854 lt!631146)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!154065 (= lt!631146 e!809281)))

(declare-fun c!132690 () Bool)

(assert (=> d!154065 (= c!132690 (and (is-Intermediate!11365 lt!631147) (undefined!12177 lt!631147)))))

(assert (=> d!154065 (= lt!631147 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47064 a!2831) j!81) mask!2608) (select (arr!47064 a!2831) j!81) a!2831 mask!2608))))

(assert (=> d!154065 (validMask!0 mask!2608)))

(assert (=> d!154065 (= (seekEntryOrOpen!0 (select (arr!47064 a!2831) j!81) a!2831 mask!2608) lt!631146)))

(declare-fun b!1433754 () Bool)

(declare-fun e!809282 () SeekEntryResult!11365)

(assert (=> b!1433754 (= e!809282 (MissingZero!11365 (index!47853 lt!631147)))))

(declare-fun b!1433755 () Bool)

(assert (=> b!1433755 (= e!809283 (Found!11365 (index!47853 lt!631147)))))

(declare-fun b!1433756 () Bool)

(declare-fun c!132689 () Bool)

(assert (=> b!1433756 (= c!132689 (= lt!631145 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1433756 (= e!809283 e!809282)))

(declare-fun b!1433757 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97525 (_ BitVec 32)) SeekEntryResult!11365)

(assert (=> b!1433757 (= e!809282 (seekKeyOrZeroReturnVacant!0 (x!129499 lt!631147) (index!47853 lt!631147) (index!47853 lt!631147) (select (arr!47064 a!2831) j!81) a!2831 mask!2608))))

(assert (= (and d!154065 c!132690) b!1433753))

(assert (= (and d!154065 (not c!132690)) b!1433752))

(assert (= (and b!1433752 c!132691) b!1433755))

(assert (= (and b!1433752 (not c!132691)) b!1433756))

(assert (= (and b!1433756 c!132689) b!1433754))

(assert (= (and b!1433756 (not c!132689)) b!1433757))

(declare-fun m!1323459 () Bool)

(assert (=> b!1433752 m!1323459))

(declare-fun m!1323461 () Bool)

(assert (=> d!154065 m!1323461))

(assert (=> d!154065 m!1323293))

(assert (=> d!154065 m!1323291))

(assert (=> d!154065 m!1323295))

(assert (=> d!154065 m!1323327))

(declare-fun m!1323463 () Bool)

(assert (=> d!154065 m!1323463))

(assert (=> d!154065 m!1323291))

(assert (=> d!154065 m!1323293))

(declare-fun m!1323465 () Bool)

(assert (=> d!154065 m!1323465))

(assert (=> b!1433757 m!1323291))

(declare-fun m!1323467 () Bool)

(assert (=> b!1433757 m!1323467))

(assert (=> b!1433518 d!154065))

(declare-fun d!154079 () Bool)

(assert (=> d!154079 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!123692 d!154079))

(declare-fun d!154081 () Bool)

(assert (=> d!154081 (= (array_inv!36009 a!2831) (bvsge (size!47615 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!123692 d!154081))

(declare-fun d!154083 () Bool)

(declare-fun lt!631156 () (_ BitVec 32))

(assert (=> d!154083 (and (bvsge lt!631156 #b00000000000000000000000000000000) (bvslt lt!631156 (bvadd mask!2608 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!154083 (= lt!631156 (choose!52 index!585 x!605 mask!2608))))

(assert (=> d!154083 (validMask!0 mask!2608)))

(assert (=> d!154083 (= (nextIndex!0 index!585 x!605 mask!2608) lt!631156)))

(declare-fun bs!41741 () Bool)

(assert (= bs!41741 d!154083))

(declare-fun m!1323469 () Bool)

(assert (=> bs!41741 m!1323469))

(assert (=> bs!41741 m!1323327))

(assert (=> b!1433520 d!154083))

(declare-fun d!154085 () Bool)

(assert (=> d!154085 (= (validKeyInArray!0 (select (arr!47064 a!2831) i!982)) (and (not (= (select (arr!47064 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47064 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1433511 d!154085))

(declare-fun b!1433770 () Bool)

(declare-fun e!809290 () Bool)

(declare-fun e!809291 () Bool)

(assert (=> b!1433770 (= e!809290 e!809291)))

(declare-fun lt!631158 () (_ BitVec 64))

(assert (=> b!1433770 (= lt!631158 (select (arr!47064 a!2831) j!81))))

(declare-fun lt!631157 () Unit!48424)

(assert (=> b!1433770 (= lt!631157 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!631158 j!81))))

(assert (=> b!1433770 (arrayContainsKey!0 a!2831 lt!631158 #b00000000000000000000000000000000)))

(declare-fun lt!631159 () Unit!48424)

(assert (=> b!1433770 (= lt!631159 lt!631157)))

(declare-fun res!967379 () Bool)

(assert (=> b!1433770 (= res!967379 (= (seekEntryOrOpen!0 (select (arr!47064 a!2831) j!81) a!2831 mask!2608) (Found!11365 j!81)))))

(assert (=> b!1433770 (=> (not res!967379) (not e!809291))))

(declare-fun b!1433771 () Bool)

(declare-fun e!809292 () Bool)

(assert (=> b!1433771 (= e!809292 e!809290)))

(declare-fun c!132698 () Bool)

(assert (=> b!1433771 (= c!132698 (validKeyInArray!0 (select (arr!47064 a!2831) j!81)))))

(declare-fun b!1433772 () Bool)

(declare-fun call!67515 () Bool)

(assert (=> b!1433772 (= e!809291 call!67515)))

(declare-fun bm!67512 () Bool)

(assert (=> bm!67512 (= call!67515 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1433773 () Bool)

(assert (=> b!1433773 (= e!809290 call!67515)))

(declare-fun d!154087 () Bool)

(declare-fun res!967380 () Bool)

(assert (=> d!154087 (=> res!967380 e!809292)))

(assert (=> d!154087 (= res!967380 (bvsge j!81 (size!47615 a!2831)))))

(assert (=> d!154087 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!809292)))

(assert (= (and d!154087 (not res!967380)) b!1433771))

(assert (= (and b!1433771 c!132698) b!1433770))

(assert (= (and b!1433771 (not c!132698)) b!1433773))

(assert (= (and b!1433770 res!967379) b!1433772))

(assert (= (or b!1433772 b!1433773) bm!67512))

(assert (=> b!1433770 m!1323291))

(declare-fun m!1323471 () Bool)

(assert (=> b!1433770 m!1323471))

(declare-fun m!1323473 () Bool)

(assert (=> b!1433770 m!1323473))

(assert (=> b!1433770 m!1323291))

(assert (=> b!1433770 m!1323311))

(assert (=> b!1433771 m!1323291))

(assert (=> b!1433771 m!1323291))

(assert (=> b!1433771 m!1323331))

(declare-fun m!1323475 () Bool)

(assert (=> bm!67512 m!1323475))

(assert (=> b!1433510 d!154087))

(declare-fun d!154089 () Bool)

(assert (=> d!154089 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!631162 () Unit!48424)

(declare-fun choose!38 (array!97525 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48424)

(assert (=> d!154089 (= lt!631162 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!154089 (validMask!0 mask!2608)))

(assert (=> d!154089 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!631162)))

(declare-fun bs!41742 () Bool)

(assert (= bs!41742 d!154089))

(assert (=> bs!41742 m!1323305))

(declare-fun m!1323477 () Bool)

(assert (=> bs!41742 m!1323477))

(assert (=> bs!41742 m!1323327))

(assert (=> b!1433510 d!154089))

(declare-fun b!1433780 () Bool)

(declare-fun lt!631166 () SeekEntryResult!11365)

(assert (=> b!1433780 (and (bvsge (index!47853 lt!631166) #b00000000000000000000000000000000) (bvslt (index!47853 lt!631166) (size!47615 lt!631035)))))

(declare-fun res!967381 () Bool)

(assert (=> b!1433780 (= res!967381 (= (select (arr!47064 lt!631035) (index!47853 lt!631166)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!809296 () Bool)

(assert (=> b!1433780 (=> res!967381 e!809296)))

(declare-fun b!1433781 () Bool)

(declare-fun e!809300 () SeekEntryResult!11365)

(declare-fun e!809299 () SeekEntryResult!11365)

(assert (=> b!1433781 (= e!809300 e!809299)))

(declare-fun c!132703 () Bool)

(declare-fun lt!631167 () (_ BitVec 64))

(assert (=> b!1433781 (= c!132703 (or (= lt!631167 lt!631038) (= (bvadd lt!631167 lt!631167) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1433782 () Bool)

(assert (=> b!1433782 (= e!809299 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!631038 lt!631035 mask!2608))))

(declare-fun b!1433783 () Bool)

(declare-fun e!809298 () Bool)

(declare-fun e!809297 () Bool)

(assert (=> b!1433783 (= e!809298 e!809297)))

(declare-fun res!967383 () Bool)

(assert (=> b!1433783 (= res!967383 (and (is-Intermediate!11365 lt!631166) (not (undefined!12177 lt!631166)) (bvslt (x!129499 lt!631166) #b01111111111111111111111111111110) (bvsge (x!129499 lt!631166) #b00000000000000000000000000000000) (bvsge (x!129499 lt!631166) x!605)))))

(assert (=> b!1433783 (=> (not res!967383) (not e!809297))))

(declare-fun b!1433784 () Bool)

(assert (=> b!1433784 (= e!809299 (Intermediate!11365 false index!585 x!605))))

(declare-fun b!1433785 () Bool)

(assert (=> b!1433785 (and (bvsge (index!47853 lt!631166) #b00000000000000000000000000000000) (bvslt (index!47853 lt!631166) (size!47615 lt!631035)))))

(declare-fun res!967382 () Bool)

(assert (=> b!1433785 (= res!967382 (= (select (arr!47064 lt!631035) (index!47853 lt!631166)) lt!631038))))

(assert (=> b!1433785 (=> res!967382 e!809296)))

(assert (=> b!1433785 (= e!809297 e!809296)))

(declare-fun b!1433786 () Bool)

(assert (=> b!1433786 (= e!809300 (Intermediate!11365 true index!585 x!605))))

(declare-fun b!1433787 () Bool)

(assert (=> b!1433787 (and (bvsge (index!47853 lt!631166) #b00000000000000000000000000000000) (bvslt (index!47853 lt!631166) (size!47615 lt!631035)))))

(assert (=> b!1433787 (= e!809296 (= (select (arr!47064 lt!631035) (index!47853 lt!631166)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1433788 () Bool)

(assert (=> b!1433788 (= e!809298 (bvsge (x!129499 lt!631166) #b01111111111111111111111111111110))))

(declare-fun d!154091 () Bool)

(assert (=> d!154091 e!809298))

(declare-fun c!132702 () Bool)

(assert (=> d!154091 (= c!132702 (and (is-Intermediate!11365 lt!631166) (undefined!12177 lt!631166)))))

(assert (=> d!154091 (= lt!631166 e!809300)))

(declare-fun c!132704 () Bool)

(assert (=> d!154091 (= c!132704 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!154091 (= lt!631167 (select (arr!47064 lt!631035) index!585))))

(assert (=> d!154091 (validMask!0 mask!2608)))

(assert (=> d!154091 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631038 lt!631035 mask!2608) lt!631166)))

(assert (= (and d!154091 c!132704) b!1433786))

(assert (= (and d!154091 (not c!132704)) b!1433781))

(assert (= (and b!1433781 c!132703) b!1433784))

(assert (= (and b!1433781 (not c!132703)) b!1433782))

(assert (= (and d!154091 c!132702) b!1433788))

(assert (= (and d!154091 (not c!132702)) b!1433783))

(assert (= (and b!1433783 res!967383) b!1433785))

(assert (= (and b!1433785 (not res!967382)) b!1433780))

(assert (= (and b!1433780 (not res!967381)) b!1433787))

(declare-fun m!1323479 () Bool)

(assert (=> b!1433785 m!1323479))

(assert (=> b!1433787 m!1323479))

(assert (=> b!1433782 m!1323325))

(assert (=> b!1433782 m!1323325))

(declare-fun m!1323483 () Bool)

(assert (=> b!1433782 m!1323483))

(declare-fun m!1323485 () Bool)

(assert (=> d!154091 m!1323485))

