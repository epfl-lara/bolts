; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123690 () Bool)

(assert start!123690)

(declare-fun b!1433466 () Bool)

(declare-fun res!967244 () Bool)

(declare-fun e!809117 () Bool)

(assert (=> b!1433466 (=> (not res!967244) (not e!809117))))

(declare-datatypes ((array!97523 0))(
  ( (array!97524 (arr!47063 (Array (_ BitVec 32) (_ BitVec 64))) (size!47614 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97523)

(declare-datatypes ((List!33753 0))(
  ( (Nil!33750) (Cons!33749 (h!35075 (_ BitVec 64)) (t!48454 List!33753)) )
))
(declare-fun arrayNoDuplicates!0 (array!97523 (_ BitVec 32) List!33753) Bool)

(assert (=> b!1433466 (= res!967244 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33750))))

(declare-fun e!809115 () Bool)

(declare-fun b!1433467 () Bool)

(declare-fun lt!631019 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1433467 (= e!809115 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (and (bvsge lt!631019 #b00000000000000000000000000000000) (bvslt lt!631019 (size!47614 a!2831)))))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1433467 (= lt!631019 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1433468 () Bool)

(declare-fun e!809120 () Bool)

(declare-fun e!809118 () Bool)

(assert (=> b!1433468 (= e!809120 e!809118)))

(declare-fun res!967239 () Bool)

(assert (=> b!1433468 (=> (not res!967239) (not e!809118))))

(declare-fun lt!631017 () array!97523)

(declare-datatypes ((SeekEntryResult!11364 0))(
  ( (MissingZero!11364 (index!47847 (_ BitVec 32))) (Found!11364 (index!47848 (_ BitVec 32))) (Intermediate!11364 (undefined!12176 Bool) (index!47849 (_ BitVec 32)) (x!129498 (_ BitVec 32))) (Undefined!11364) (MissingVacant!11364 (index!47850 (_ BitVec 32))) )
))
(declare-fun lt!631018 () SeekEntryResult!11364)

(declare-fun lt!631021 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97523 (_ BitVec 32)) SeekEntryResult!11364)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1433468 (= res!967239 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631021 mask!2608) lt!631021 lt!631017 mask!2608) lt!631018))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1433468 (= lt!631018 (Intermediate!11364 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1433468 (= lt!631021 (select (store (arr!47063 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1433468 (= lt!631017 (array!97524 (store (arr!47063 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47614 a!2831)))))

(declare-fun b!1433469 () Bool)

(declare-fun res!967238 () Bool)

(assert (=> b!1433469 (=> (not res!967238) (not e!809117))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1433469 (= res!967238 (validKeyInArray!0 (select (arr!47063 a!2831) j!81)))))

(declare-fun b!1433470 () Bool)

(declare-fun res!967242 () Bool)

(assert (=> b!1433470 (=> (not res!967242) (not e!809117))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97523 (_ BitVec 32)) Bool)

(assert (=> b!1433470 (= res!967242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1433471 () Bool)

(declare-fun res!967245 () Bool)

(assert (=> b!1433471 (=> (not res!967245) (not e!809117))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1433471 (= res!967245 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47614 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47614 a!2831))))))

(declare-fun b!1433472 () Bool)

(declare-fun res!967246 () Bool)

(assert (=> b!1433472 (=> (not res!967246) (not e!809118))))

(assert (=> b!1433472 (= res!967246 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631021 lt!631017 mask!2608) lt!631018))))

(declare-fun b!1433473 () Bool)

(assert (=> b!1433473 (= e!809117 e!809120)))

(declare-fun res!967241 () Bool)

(assert (=> b!1433473 (=> (not res!967241) (not e!809120))))

(declare-fun lt!631020 () SeekEntryResult!11364)

(assert (=> b!1433473 (= res!967241 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47063 a!2831) j!81) mask!2608) (select (arr!47063 a!2831) j!81) a!2831 mask!2608) lt!631020))))

(assert (=> b!1433473 (= lt!631020 (Intermediate!11364 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1433474 () Bool)

(declare-fun res!967247 () Bool)

(assert (=> b!1433474 (=> (not res!967247) (not e!809117))))

(assert (=> b!1433474 (= res!967247 (validKeyInArray!0 (select (arr!47063 a!2831) i!982)))))

(declare-fun b!1433475 () Bool)

(declare-fun res!967251 () Bool)

(assert (=> b!1433475 (=> (not res!967251) (not e!809118))))

(assert (=> b!1433475 (= res!967251 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47063 a!2831) j!81) a!2831 mask!2608) lt!631020))))

(declare-fun b!1433477 () Bool)

(declare-fun e!809116 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97523 (_ BitVec 32)) SeekEntryResult!11364)

(assert (=> b!1433477 (= e!809116 (= (seekEntryOrOpen!0 (select (arr!47063 a!2831) j!81) a!2831 mask!2608) (Found!11364 j!81)))))

(declare-fun b!1433478 () Bool)

(declare-fun res!967250 () Bool)

(assert (=> b!1433478 (=> (not res!967250) (not e!809118))))

(assert (=> b!1433478 (= res!967250 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1433479 () Bool)

(assert (=> b!1433479 (= e!809118 (not e!809115))))

(declare-fun res!967249 () Bool)

(assert (=> b!1433479 (=> res!967249 e!809115)))

(assert (=> b!1433479 (= res!967249 (or (= (select (arr!47063 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47063 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47063 a!2831) index!585) (select (arr!47063 a!2831) j!81)) (= (select (store (arr!47063 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1433479 e!809116))

(declare-fun res!967243 () Bool)

(assert (=> b!1433479 (=> (not res!967243) (not e!809116))))

(assert (=> b!1433479 (= res!967243 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48422 0))(
  ( (Unit!48423) )
))
(declare-fun lt!631016 () Unit!48422)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97523 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48422)

(assert (=> b!1433479 (= lt!631016 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun res!967240 () Bool)

(assert (=> start!123690 (=> (not res!967240) (not e!809117))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123690 (= res!967240 (validMask!0 mask!2608))))

(assert (=> start!123690 e!809117))

(assert (=> start!123690 true))

(declare-fun array_inv!36008 (array!97523) Bool)

(assert (=> start!123690 (array_inv!36008 a!2831)))

(declare-fun b!1433476 () Bool)

(declare-fun res!967248 () Bool)

(assert (=> b!1433476 (=> (not res!967248) (not e!809117))))

(assert (=> b!1433476 (= res!967248 (and (= (size!47614 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47614 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47614 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!123690 res!967240) b!1433476))

(assert (= (and b!1433476 res!967248) b!1433474))

(assert (= (and b!1433474 res!967247) b!1433469))

(assert (= (and b!1433469 res!967238) b!1433470))

(assert (= (and b!1433470 res!967242) b!1433466))

(assert (= (and b!1433466 res!967244) b!1433471))

(assert (= (and b!1433471 res!967245) b!1433473))

(assert (= (and b!1433473 res!967241) b!1433468))

(assert (= (and b!1433468 res!967239) b!1433475))

(assert (= (and b!1433475 res!967251) b!1433472))

(assert (= (and b!1433472 res!967246) b!1433478))

(assert (= (and b!1433478 res!967250) b!1433479))

(assert (= (and b!1433479 res!967243) b!1433477))

(assert (= (and b!1433479 (not res!967249)) b!1433467))

(declare-fun m!1323247 () Bool)

(assert (=> b!1433477 m!1323247))

(assert (=> b!1433477 m!1323247))

(declare-fun m!1323249 () Bool)

(assert (=> b!1433477 m!1323249))

(declare-fun m!1323251 () Bool)

(assert (=> b!1433467 m!1323251))

(assert (=> b!1433473 m!1323247))

(assert (=> b!1433473 m!1323247))

(declare-fun m!1323253 () Bool)

(assert (=> b!1433473 m!1323253))

(assert (=> b!1433473 m!1323253))

(assert (=> b!1433473 m!1323247))

(declare-fun m!1323255 () Bool)

(assert (=> b!1433473 m!1323255))

(assert (=> b!1433469 m!1323247))

(assert (=> b!1433469 m!1323247))

(declare-fun m!1323257 () Bool)

(assert (=> b!1433469 m!1323257))

(declare-fun m!1323259 () Bool)

(assert (=> b!1433468 m!1323259))

(assert (=> b!1433468 m!1323259))

(declare-fun m!1323261 () Bool)

(assert (=> b!1433468 m!1323261))

(declare-fun m!1323263 () Bool)

(assert (=> b!1433468 m!1323263))

(declare-fun m!1323265 () Bool)

(assert (=> b!1433468 m!1323265))

(declare-fun m!1323267 () Bool)

(assert (=> start!123690 m!1323267))

(declare-fun m!1323269 () Bool)

(assert (=> start!123690 m!1323269))

(declare-fun m!1323271 () Bool)

(assert (=> b!1433474 m!1323271))

(assert (=> b!1433474 m!1323271))

(declare-fun m!1323273 () Bool)

(assert (=> b!1433474 m!1323273))

(declare-fun m!1323275 () Bool)

(assert (=> b!1433470 m!1323275))

(declare-fun m!1323277 () Bool)

(assert (=> b!1433472 m!1323277))

(assert (=> b!1433479 m!1323263))

(declare-fun m!1323279 () Bool)

(assert (=> b!1433479 m!1323279))

(declare-fun m!1323281 () Bool)

(assert (=> b!1433479 m!1323281))

(declare-fun m!1323283 () Bool)

(assert (=> b!1433479 m!1323283))

(assert (=> b!1433479 m!1323247))

(declare-fun m!1323285 () Bool)

(assert (=> b!1433479 m!1323285))

(declare-fun m!1323287 () Bool)

(assert (=> b!1433466 m!1323287))

(assert (=> b!1433475 m!1323247))

(assert (=> b!1433475 m!1323247))

(declare-fun m!1323289 () Bool)

(assert (=> b!1433475 m!1323289))

(check-sat (not b!1433468) (not b!1433474) (not b!1433469) (not b!1433473) (not b!1433475) (not b!1433466) (not b!1433479) (not b!1433467) (not b!1433470) (not b!1433477) (not start!123690) (not b!1433472))
(check-sat)
(get-model)

(declare-fun b!1433530 () Bool)

(declare-fun e!809145 () Bool)

(declare-fun e!809146 () Bool)

(assert (=> b!1433530 (= e!809145 e!809146)))

(declare-fun lt!631046 () (_ BitVec 64))

(assert (=> b!1433530 (= lt!631046 (select (arr!47063 a!2831) #b00000000000000000000000000000000))))

(declare-fun lt!631047 () Unit!48422)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97523 (_ BitVec 64) (_ BitVec 32)) Unit!48422)

(assert (=> b!1433530 (= lt!631047 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!631046 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97523 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1433530 (arrayContainsKey!0 a!2831 lt!631046 #b00000000000000000000000000000000)))

(declare-fun lt!631048 () Unit!48422)

(assert (=> b!1433530 (= lt!631048 lt!631047)))

(declare-fun res!967298 () Bool)

(assert (=> b!1433530 (= res!967298 (= (seekEntryOrOpen!0 (select (arr!47063 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11364 #b00000000000000000000000000000000)))))

(assert (=> b!1433530 (=> (not res!967298) (not e!809146))))

(declare-fun bm!67497 () Bool)

(declare-fun call!67500 () Bool)

(assert (=> bm!67497 (= call!67500 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1433531 () Bool)

(assert (=> b!1433531 (= e!809146 call!67500)))

(declare-fun b!1433532 () Bool)

(assert (=> b!1433532 (= e!809145 call!67500)))

(declare-fun d!154015 () Bool)

(declare-fun res!967299 () Bool)

(declare-fun e!809147 () Bool)

(assert (=> d!154015 (=> res!967299 e!809147)))

(assert (=> d!154015 (= res!967299 (bvsge #b00000000000000000000000000000000 (size!47614 a!2831)))))

(assert (=> d!154015 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!809147)))

(declare-fun b!1433533 () Bool)

(assert (=> b!1433533 (= e!809147 e!809145)))

(declare-fun c!132617 () Bool)

(assert (=> b!1433533 (= c!132617 (validKeyInArray!0 (select (arr!47063 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!154015 (not res!967299)) b!1433533))

(assert (= (and b!1433533 c!132617) b!1433530))

(assert (= (and b!1433533 (not c!132617)) b!1433532))

(assert (= (and b!1433530 res!967298) b!1433531))

(assert (= (or b!1433531 b!1433532) bm!67497))

(declare-fun m!1323335 () Bool)

(assert (=> b!1433530 m!1323335))

(declare-fun m!1323337 () Bool)

(assert (=> b!1433530 m!1323337))

(declare-fun m!1323339 () Bool)

(assert (=> b!1433530 m!1323339))

(assert (=> b!1433530 m!1323335))

(declare-fun m!1323341 () Bool)

(assert (=> b!1433530 m!1323341))

(declare-fun m!1323343 () Bool)

(assert (=> bm!67497 m!1323343))

(assert (=> b!1433533 m!1323335))

(assert (=> b!1433533 m!1323335))

(declare-fun m!1323345 () Bool)

(assert (=> b!1433533 m!1323345))

(assert (=> b!1433470 d!154015))

(declare-fun b!1433552 () Bool)

(declare-fun lt!631054 () SeekEntryResult!11364)

(assert (=> b!1433552 (and (bvsge (index!47849 lt!631054) #b00000000000000000000000000000000) (bvslt (index!47849 lt!631054) (size!47614 lt!631017)))))

(declare-fun res!967306 () Bool)

(assert (=> b!1433552 (= res!967306 (= (select (arr!47063 lt!631017) (index!47849 lt!631054)) lt!631021))))

(declare-fun e!809162 () Bool)

(assert (=> b!1433552 (=> res!967306 e!809162)))

(declare-fun e!809160 () Bool)

(assert (=> b!1433552 (= e!809160 e!809162)))

(declare-fun b!1433553 () Bool)

(declare-fun e!809161 () Bool)

(assert (=> b!1433553 (= e!809161 e!809160)))

(declare-fun res!967308 () Bool)

(get-info :version)

(assert (=> b!1433553 (= res!967308 (and ((_ is Intermediate!11364) lt!631054) (not (undefined!12176 lt!631054)) (bvslt (x!129498 lt!631054) #b01111111111111111111111111111110) (bvsge (x!129498 lt!631054) #b00000000000000000000000000000000) (bvsge (x!129498 lt!631054) x!605)))))

(assert (=> b!1433553 (=> (not res!967308) (not e!809160))))

(declare-fun b!1433554 () Bool)

(declare-fun e!809158 () SeekEntryResult!11364)

(assert (=> b!1433554 (= e!809158 (Intermediate!11364 true index!585 x!605))))

(declare-fun b!1433555 () Bool)

(assert (=> b!1433555 (= e!809161 (bvsge (x!129498 lt!631054) #b01111111111111111111111111111110))))

(declare-fun e!809159 () SeekEntryResult!11364)

(declare-fun b!1433556 () Bool)

(assert (=> b!1433556 (= e!809159 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!631021 lt!631017 mask!2608))))

(declare-fun d!154017 () Bool)

(assert (=> d!154017 e!809161))

(declare-fun c!132626 () Bool)

(assert (=> d!154017 (= c!132626 (and ((_ is Intermediate!11364) lt!631054) (undefined!12176 lt!631054)))))

(assert (=> d!154017 (= lt!631054 e!809158)))

(declare-fun c!132625 () Bool)

(assert (=> d!154017 (= c!132625 (bvsge x!605 #b01111111111111111111111111111110))))

(declare-fun lt!631053 () (_ BitVec 64))

(assert (=> d!154017 (= lt!631053 (select (arr!47063 lt!631017) index!585))))

(assert (=> d!154017 (validMask!0 mask!2608)))

(assert (=> d!154017 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631021 lt!631017 mask!2608) lt!631054)))

(declare-fun b!1433557 () Bool)

(assert (=> b!1433557 (= e!809159 (Intermediate!11364 false index!585 x!605))))

(declare-fun b!1433558 () Bool)

(assert (=> b!1433558 (and (bvsge (index!47849 lt!631054) #b00000000000000000000000000000000) (bvslt (index!47849 lt!631054) (size!47614 lt!631017)))))

(assert (=> b!1433558 (= e!809162 (= (select (arr!47063 lt!631017) (index!47849 lt!631054)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1433559 () Bool)

(assert (=> b!1433559 (and (bvsge (index!47849 lt!631054) #b00000000000000000000000000000000) (bvslt (index!47849 lt!631054) (size!47614 lt!631017)))))

(declare-fun res!967307 () Bool)

(assert (=> b!1433559 (= res!967307 (= (select (arr!47063 lt!631017) (index!47849 lt!631054)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1433559 (=> res!967307 e!809162)))

(declare-fun b!1433560 () Bool)

(assert (=> b!1433560 (= e!809158 e!809159)))

(declare-fun c!132624 () Bool)

(assert (=> b!1433560 (= c!132624 (or (= lt!631053 lt!631021) (= (bvadd lt!631053 lt!631053) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!154017 c!132625) b!1433554))

(assert (= (and d!154017 (not c!132625)) b!1433560))

(assert (= (and b!1433560 c!132624) b!1433557))

(assert (= (and b!1433560 (not c!132624)) b!1433556))

(assert (= (and d!154017 c!132626) b!1433555))

(assert (= (and d!154017 (not c!132626)) b!1433553))

(assert (= (and b!1433553 res!967308) b!1433552))

(assert (= (and b!1433552 (not res!967306)) b!1433559))

(assert (= (and b!1433559 (not res!967307)) b!1433558))

(declare-fun m!1323347 () Bool)

(assert (=> b!1433559 m!1323347))

(assert (=> b!1433552 m!1323347))

(declare-fun m!1323349 () Bool)

(assert (=> d!154017 m!1323349))

(assert (=> d!154017 m!1323267))

(assert (=> b!1433556 m!1323251))

(assert (=> b!1433556 m!1323251))

(declare-fun m!1323351 () Bool)

(assert (=> b!1433556 m!1323351))

(assert (=> b!1433558 m!1323347))

(assert (=> b!1433472 d!154017))

(declare-fun b!1433561 () Bool)

(declare-fun lt!631056 () SeekEntryResult!11364)

(assert (=> b!1433561 (and (bvsge (index!47849 lt!631056) #b00000000000000000000000000000000) (bvslt (index!47849 lt!631056) (size!47614 a!2831)))))

(declare-fun res!967309 () Bool)

(assert (=> b!1433561 (= res!967309 (= (select (arr!47063 a!2831) (index!47849 lt!631056)) (select (arr!47063 a!2831) j!81)))))

(declare-fun e!809167 () Bool)

(assert (=> b!1433561 (=> res!967309 e!809167)))

(declare-fun e!809165 () Bool)

(assert (=> b!1433561 (= e!809165 e!809167)))

(declare-fun b!1433562 () Bool)

(declare-fun e!809166 () Bool)

(assert (=> b!1433562 (= e!809166 e!809165)))

(declare-fun res!967311 () Bool)

(assert (=> b!1433562 (= res!967311 (and ((_ is Intermediate!11364) lt!631056) (not (undefined!12176 lt!631056)) (bvslt (x!129498 lt!631056) #b01111111111111111111111111111110) (bvsge (x!129498 lt!631056) #b00000000000000000000000000000000) (bvsge (x!129498 lt!631056) #b00000000000000000000000000000000)))))

(assert (=> b!1433562 (=> (not res!967311) (not e!809165))))

(declare-fun b!1433563 () Bool)

(declare-fun e!809163 () SeekEntryResult!11364)

(assert (=> b!1433563 (= e!809163 (Intermediate!11364 true (toIndex!0 (select (arr!47063 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1433564 () Bool)

(assert (=> b!1433564 (= e!809166 (bvsge (x!129498 lt!631056) #b01111111111111111111111111111110))))

(declare-fun e!809164 () SeekEntryResult!11364)

(declare-fun b!1433565 () Bool)

(assert (=> b!1433565 (= e!809164 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47063 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!47063 a!2831) j!81) a!2831 mask!2608))))

(declare-fun d!154019 () Bool)

(assert (=> d!154019 e!809166))

(declare-fun c!132629 () Bool)

(assert (=> d!154019 (= c!132629 (and ((_ is Intermediate!11364) lt!631056) (undefined!12176 lt!631056)))))

(assert (=> d!154019 (= lt!631056 e!809163)))

(declare-fun c!132628 () Bool)

(assert (=> d!154019 (= c!132628 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!631055 () (_ BitVec 64))

(assert (=> d!154019 (= lt!631055 (select (arr!47063 a!2831) (toIndex!0 (select (arr!47063 a!2831) j!81) mask!2608)))))

(assert (=> d!154019 (validMask!0 mask!2608)))

(assert (=> d!154019 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47063 a!2831) j!81) mask!2608) (select (arr!47063 a!2831) j!81) a!2831 mask!2608) lt!631056)))

(declare-fun b!1433566 () Bool)

(assert (=> b!1433566 (= e!809164 (Intermediate!11364 false (toIndex!0 (select (arr!47063 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1433567 () Bool)

(assert (=> b!1433567 (and (bvsge (index!47849 lt!631056) #b00000000000000000000000000000000) (bvslt (index!47849 lt!631056) (size!47614 a!2831)))))

(assert (=> b!1433567 (= e!809167 (= (select (arr!47063 a!2831) (index!47849 lt!631056)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1433568 () Bool)

(assert (=> b!1433568 (and (bvsge (index!47849 lt!631056) #b00000000000000000000000000000000) (bvslt (index!47849 lt!631056) (size!47614 a!2831)))))

(declare-fun res!967310 () Bool)

(assert (=> b!1433568 (= res!967310 (= (select (arr!47063 a!2831) (index!47849 lt!631056)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1433568 (=> res!967310 e!809167)))

(declare-fun b!1433569 () Bool)

(assert (=> b!1433569 (= e!809163 e!809164)))

(declare-fun c!132627 () Bool)

(assert (=> b!1433569 (= c!132627 (or (= lt!631055 (select (arr!47063 a!2831) j!81)) (= (bvadd lt!631055 lt!631055) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!154019 c!132628) b!1433563))

(assert (= (and d!154019 (not c!132628)) b!1433569))

(assert (= (and b!1433569 c!132627) b!1433566))

(assert (= (and b!1433569 (not c!132627)) b!1433565))

(assert (= (and d!154019 c!132629) b!1433564))

(assert (= (and d!154019 (not c!132629)) b!1433562))

(assert (= (and b!1433562 res!967311) b!1433561))

(assert (= (and b!1433561 (not res!967309)) b!1433568))

(assert (= (and b!1433568 (not res!967310)) b!1433567))

(declare-fun m!1323353 () Bool)

(assert (=> b!1433568 m!1323353))

(assert (=> b!1433561 m!1323353))

(assert (=> d!154019 m!1323253))

(declare-fun m!1323355 () Bool)

(assert (=> d!154019 m!1323355))

(assert (=> d!154019 m!1323267))

(assert (=> b!1433565 m!1323253))

(declare-fun m!1323357 () Bool)

(assert (=> b!1433565 m!1323357))

(assert (=> b!1433565 m!1323357))

(assert (=> b!1433565 m!1323247))

(declare-fun m!1323359 () Bool)

(assert (=> b!1433565 m!1323359))

(assert (=> b!1433567 m!1323353))

(assert (=> b!1433473 d!154019))

(declare-fun d!154021 () Bool)

(declare-fun lt!631062 () (_ BitVec 32))

(declare-fun lt!631061 () (_ BitVec 32))

(assert (=> d!154021 (= lt!631062 (bvmul (bvxor lt!631061 (bvlshr lt!631061 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154021 (= lt!631061 ((_ extract 31 0) (bvand (bvxor (select (arr!47063 a!2831) j!81) (bvlshr (select (arr!47063 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154021 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!967312 (let ((h!35077 ((_ extract 31 0) (bvand (bvxor (select (arr!47063 a!2831) j!81) (bvlshr (select (arr!47063 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129501 (bvmul (bvxor h!35077 (bvlshr h!35077 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129501 (bvlshr x!129501 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!967312 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!967312 #b00000000000000000000000000000000))))))

(assert (=> d!154021 (= (toIndex!0 (select (arr!47063 a!2831) j!81) mask!2608) (bvand (bvxor lt!631062 (bvlshr lt!631062 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1433473 d!154021))

(declare-fun b!1433570 () Bool)

(declare-fun lt!631064 () SeekEntryResult!11364)

(assert (=> b!1433570 (and (bvsge (index!47849 lt!631064) #b00000000000000000000000000000000) (bvslt (index!47849 lt!631064) (size!47614 a!2831)))))

(declare-fun res!967313 () Bool)

(assert (=> b!1433570 (= res!967313 (= (select (arr!47063 a!2831) (index!47849 lt!631064)) (select (arr!47063 a!2831) j!81)))))

(declare-fun e!809172 () Bool)

(assert (=> b!1433570 (=> res!967313 e!809172)))

(declare-fun e!809170 () Bool)

(assert (=> b!1433570 (= e!809170 e!809172)))

(declare-fun b!1433571 () Bool)

(declare-fun e!809171 () Bool)

(assert (=> b!1433571 (= e!809171 e!809170)))

(declare-fun res!967315 () Bool)

(assert (=> b!1433571 (= res!967315 (and ((_ is Intermediate!11364) lt!631064) (not (undefined!12176 lt!631064)) (bvslt (x!129498 lt!631064) #b01111111111111111111111111111110) (bvsge (x!129498 lt!631064) #b00000000000000000000000000000000) (bvsge (x!129498 lt!631064) x!605)))))

(assert (=> b!1433571 (=> (not res!967315) (not e!809170))))

(declare-fun b!1433572 () Bool)

(declare-fun e!809168 () SeekEntryResult!11364)

(assert (=> b!1433572 (= e!809168 (Intermediate!11364 true index!585 x!605))))

(declare-fun b!1433573 () Bool)

(assert (=> b!1433573 (= e!809171 (bvsge (x!129498 lt!631064) #b01111111111111111111111111111110))))

(declare-fun e!809169 () SeekEntryResult!11364)

(declare-fun b!1433574 () Bool)

(assert (=> b!1433574 (= e!809169 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) (select (arr!47063 a!2831) j!81) a!2831 mask!2608))))

(declare-fun d!154023 () Bool)

(assert (=> d!154023 e!809171))

(declare-fun c!132632 () Bool)

(assert (=> d!154023 (= c!132632 (and ((_ is Intermediate!11364) lt!631064) (undefined!12176 lt!631064)))))

(assert (=> d!154023 (= lt!631064 e!809168)))

(declare-fun c!132631 () Bool)

(assert (=> d!154023 (= c!132631 (bvsge x!605 #b01111111111111111111111111111110))))

(declare-fun lt!631063 () (_ BitVec 64))

(assert (=> d!154023 (= lt!631063 (select (arr!47063 a!2831) index!585))))

(assert (=> d!154023 (validMask!0 mask!2608)))

(assert (=> d!154023 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47063 a!2831) j!81) a!2831 mask!2608) lt!631064)))

(declare-fun b!1433575 () Bool)

(assert (=> b!1433575 (= e!809169 (Intermediate!11364 false index!585 x!605))))

(declare-fun b!1433576 () Bool)

(assert (=> b!1433576 (and (bvsge (index!47849 lt!631064) #b00000000000000000000000000000000) (bvslt (index!47849 lt!631064) (size!47614 a!2831)))))

(assert (=> b!1433576 (= e!809172 (= (select (arr!47063 a!2831) (index!47849 lt!631064)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1433577 () Bool)

(assert (=> b!1433577 (and (bvsge (index!47849 lt!631064) #b00000000000000000000000000000000) (bvslt (index!47849 lt!631064) (size!47614 a!2831)))))

(declare-fun res!967314 () Bool)

(assert (=> b!1433577 (= res!967314 (= (select (arr!47063 a!2831) (index!47849 lt!631064)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1433577 (=> res!967314 e!809172)))

(declare-fun b!1433578 () Bool)

(assert (=> b!1433578 (= e!809168 e!809169)))

(declare-fun c!132630 () Bool)

(assert (=> b!1433578 (= c!132630 (or (= lt!631063 (select (arr!47063 a!2831) j!81)) (= (bvadd lt!631063 lt!631063) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!154023 c!132631) b!1433572))

(assert (= (and d!154023 (not c!132631)) b!1433578))

(assert (= (and b!1433578 c!132630) b!1433575))

(assert (= (and b!1433578 (not c!132630)) b!1433574))

(assert (= (and d!154023 c!132632) b!1433573))

(assert (= (and d!154023 (not c!132632)) b!1433571))

(assert (= (and b!1433571 res!967315) b!1433570))

(assert (= (and b!1433570 (not res!967313)) b!1433577))

(assert (= (and b!1433577 (not res!967314)) b!1433576))

(declare-fun m!1323361 () Bool)

(assert (=> b!1433577 m!1323361))

(assert (=> b!1433570 m!1323361))

(assert (=> d!154023 m!1323281))

(assert (=> d!154023 m!1323267))

(assert (=> b!1433574 m!1323251))

(assert (=> b!1433574 m!1323251))

(assert (=> b!1433574 m!1323247))

(declare-fun m!1323363 () Bool)

(assert (=> b!1433574 m!1323363))

(assert (=> b!1433576 m!1323361))

(assert (=> b!1433475 d!154023))

(declare-fun d!154027 () Bool)

(assert (=> d!154027 (= (validKeyInArray!0 (select (arr!47063 a!2831) i!982)) (and (not (= (select (arr!47063 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47063 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1433474 d!154027))

(declare-fun d!154029 () Bool)

(assert (=> d!154029 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!123690 d!154029))

(declare-fun d!154039 () Bool)

(assert (=> d!154039 (= (array_inv!36008 a!2831) (bvsge (size!47614 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!123690 d!154039))

(declare-fun d!154041 () Bool)

(declare-fun lt!631067 () (_ BitVec 32))

(assert (=> d!154041 (and (bvsge lt!631067 #b00000000000000000000000000000000) (bvslt lt!631067 (bvadd mask!2608 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!154041 (= lt!631067 (choose!52 index!585 x!605 mask!2608))))

(assert (=> d!154041 (validMask!0 mask!2608)))

(assert (=> d!154041 (= (nextIndex!0 index!585 x!605 mask!2608) lt!631067)))

(declare-fun bs!41738 () Bool)

(assert (= bs!41738 d!154041))

(declare-fun m!1323373 () Bool)

(assert (=> bs!41738 m!1323373))

(assert (=> bs!41738 m!1323267))

(assert (=> b!1433467 d!154041))

(declare-fun e!809220 () SeekEntryResult!11364)

(declare-fun b!1433649 () Bool)

(declare-fun lt!631103 () SeekEntryResult!11364)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97523 (_ BitVec 32)) SeekEntryResult!11364)

(assert (=> b!1433649 (= e!809220 (seekKeyOrZeroReturnVacant!0 (x!129498 lt!631103) (index!47849 lt!631103) (index!47849 lt!631103) (select (arr!47063 a!2831) j!81) a!2831 mask!2608))))

(declare-fun d!154043 () Bool)

(declare-fun lt!631102 () SeekEntryResult!11364)

(assert (=> d!154043 (and (or ((_ is Undefined!11364) lt!631102) (not ((_ is Found!11364) lt!631102)) (and (bvsge (index!47848 lt!631102) #b00000000000000000000000000000000) (bvslt (index!47848 lt!631102) (size!47614 a!2831)))) (or ((_ is Undefined!11364) lt!631102) ((_ is Found!11364) lt!631102) (not ((_ is MissingZero!11364) lt!631102)) (and (bvsge (index!47847 lt!631102) #b00000000000000000000000000000000) (bvslt (index!47847 lt!631102) (size!47614 a!2831)))) (or ((_ is Undefined!11364) lt!631102) ((_ is Found!11364) lt!631102) ((_ is MissingZero!11364) lt!631102) (not ((_ is MissingVacant!11364) lt!631102)) (and (bvsge (index!47850 lt!631102) #b00000000000000000000000000000000) (bvslt (index!47850 lt!631102) (size!47614 a!2831)))) (or ((_ is Undefined!11364) lt!631102) (ite ((_ is Found!11364) lt!631102) (= (select (arr!47063 a!2831) (index!47848 lt!631102)) (select (arr!47063 a!2831) j!81)) (ite ((_ is MissingZero!11364) lt!631102) (= (select (arr!47063 a!2831) (index!47847 lt!631102)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!11364) lt!631102) (= (select (arr!47063 a!2831) (index!47850 lt!631102)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!809219 () SeekEntryResult!11364)

(assert (=> d!154043 (= lt!631102 e!809219)))

(declare-fun c!132657 () Bool)

(assert (=> d!154043 (= c!132657 (and ((_ is Intermediate!11364) lt!631103) (undefined!12176 lt!631103)))))

(assert (=> d!154043 (= lt!631103 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47063 a!2831) j!81) mask!2608) (select (arr!47063 a!2831) j!81) a!2831 mask!2608))))

(assert (=> d!154043 (validMask!0 mask!2608)))

(assert (=> d!154043 (= (seekEntryOrOpen!0 (select (arr!47063 a!2831) j!81) a!2831 mask!2608) lt!631102)))

(declare-fun b!1433650 () Bool)

(declare-fun e!809218 () SeekEntryResult!11364)

(assert (=> b!1433650 (= e!809219 e!809218)))

(declare-fun lt!631101 () (_ BitVec 64))

(assert (=> b!1433650 (= lt!631101 (select (arr!47063 a!2831) (index!47849 lt!631103)))))

(declare-fun c!132655 () Bool)

(assert (=> b!1433650 (= c!132655 (= lt!631101 (select (arr!47063 a!2831) j!81)))))

(declare-fun b!1433651 () Bool)

(assert (=> b!1433651 (= e!809218 (Found!11364 (index!47849 lt!631103)))))

(declare-fun b!1433652 () Bool)

(assert (=> b!1433652 (= e!809219 Undefined!11364)))

(declare-fun b!1433653 () Bool)

(declare-fun c!132656 () Bool)

(assert (=> b!1433653 (= c!132656 (= lt!631101 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1433653 (= e!809218 e!809220)))

(declare-fun b!1433654 () Bool)

(assert (=> b!1433654 (= e!809220 (MissingZero!11364 (index!47849 lt!631103)))))

(assert (= (and d!154043 c!132657) b!1433652))

(assert (= (and d!154043 (not c!132657)) b!1433650))

(assert (= (and b!1433650 c!132655) b!1433651))

(assert (= (and b!1433650 (not c!132655)) b!1433653))

(assert (= (and b!1433653 c!132656) b!1433654))

(assert (= (and b!1433653 (not c!132656)) b!1433649))

(assert (=> b!1433649 m!1323247))

(declare-fun m!1323403 () Bool)

(assert (=> b!1433649 m!1323403))

(assert (=> d!154043 m!1323267))

(assert (=> d!154043 m!1323253))

(assert (=> d!154043 m!1323247))

(assert (=> d!154043 m!1323255))

(declare-fun m!1323405 () Bool)

(assert (=> d!154043 m!1323405))

(declare-fun m!1323407 () Bool)

(assert (=> d!154043 m!1323407))

(declare-fun m!1323409 () Bool)

(assert (=> d!154043 m!1323409))

(assert (=> d!154043 m!1323247))

(assert (=> d!154043 m!1323253))

(declare-fun m!1323411 () Bool)

(assert (=> b!1433650 m!1323411))

(assert (=> b!1433477 d!154043))

(declare-fun b!1433681 () Bool)

(declare-fun e!809242 () Bool)

(declare-fun call!67513 () Bool)

(assert (=> b!1433681 (= e!809242 call!67513)))

(declare-fun b!1433682 () Bool)

(declare-fun e!809240 () Bool)

(declare-fun contains!9881 (List!33753 (_ BitVec 64)) Bool)

(assert (=> b!1433682 (= e!809240 (contains!9881 Nil!33750 (select (arr!47063 a!2831) #b00000000000000000000000000000000)))))

(declare-fun bm!67510 () Bool)

(declare-fun c!132665 () Bool)

(assert (=> bm!67510 (= call!67513 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!132665 (Cons!33749 (select (arr!47063 a!2831) #b00000000000000000000000000000000) Nil!33750) Nil!33750)))))

(declare-fun b!1433683 () Bool)

(assert (=> b!1433683 (= e!809242 call!67513)))

(declare-fun d!154055 () Bool)

(declare-fun res!967355 () Bool)

(declare-fun e!809243 () Bool)

(assert (=> d!154055 (=> res!967355 e!809243)))

(assert (=> d!154055 (= res!967355 (bvsge #b00000000000000000000000000000000 (size!47614 a!2831)))))

(assert (=> d!154055 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33750) e!809243)))

(declare-fun b!1433684 () Bool)

(declare-fun e!809241 () Bool)

(assert (=> b!1433684 (= e!809241 e!809242)))

(assert (=> b!1433684 (= c!132665 (validKeyInArray!0 (select (arr!47063 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1433685 () Bool)

(assert (=> b!1433685 (= e!809243 e!809241)))

(declare-fun res!967357 () Bool)

(assert (=> b!1433685 (=> (not res!967357) (not e!809241))))

(assert (=> b!1433685 (= res!967357 (not e!809240))))

(declare-fun res!967356 () Bool)

(assert (=> b!1433685 (=> (not res!967356) (not e!809240))))

(assert (=> b!1433685 (= res!967356 (validKeyInArray!0 (select (arr!47063 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!154055 (not res!967355)) b!1433685))

(assert (= (and b!1433685 res!967356) b!1433682))

(assert (= (and b!1433685 res!967357) b!1433684))

(assert (= (and b!1433684 c!132665) b!1433683))

(assert (= (and b!1433684 (not c!132665)) b!1433681))

(assert (= (or b!1433683 b!1433681) bm!67510))

(assert (=> b!1433682 m!1323335))

(assert (=> b!1433682 m!1323335))

(declare-fun m!1323421 () Bool)

(assert (=> b!1433682 m!1323421))

(assert (=> bm!67510 m!1323335))

(declare-fun m!1323423 () Bool)

(assert (=> bm!67510 m!1323423))

(assert (=> b!1433684 m!1323335))

(assert (=> b!1433684 m!1323335))

(assert (=> b!1433684 m!1323345))

(assert (=> b!1433685 m!1323335))

(assert (=> b!1433685 m!1323335))

(assert (=> b!1433685 m!1323345))

(assert (=> b!1433466 d!154055))

(declare-fun b!1433692 () Bool)

(declare-fun e!809246 () Bool)

(declare-fun e!809247 () Bool)

(assert (=> b!1433692 (= e!809246 e!809247)))

(declare-fun lt!631117 () (_ BitVec 64))

(assert (=> b!1433692 (= lt!631117 (select (arr!47063 a!2831) j!81))))

(declare-fun lt!631118 () Unit!48422)

(assert (=> b!1433692 (= lt!631118 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!631117 j!81))))

(assert (=> b!1433692 (arrayContainsKey!0 a!2831 lt!631117 #b00000000000000000000000000000000)))

(declare-fun lt!631119 () Unit!48422)

(assert (=> b!1433692 (= lt!631119 lt!631118)))

(declare-fun res!967358 () Bool)

(assert (=> b!1433692 (= res!967358 (= (seekEntryOrOpen!0 (select (arr!47063 a!2831) j!81) a!2831 mask!2608) (Found!11364 j!81)))))

(assert (=> b!1433692 (=> (not res!967358) (not e!809247))))

(declare-fun bm!67511 () Bool)

(declare-fun call!67514 () Bool)

(assert (=> bm!67511 (= call!67514 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1433693 () Bool)

(assert (=> b!1433693 (= e!809247 call!67514)))

(declare-fun b!1433694 () Bool)

(assert (=> b!1433694 (= e!809246 call!67514)))

(declare-fun d!154059 () Bool)

(declare-fun res!967359 () Bool)

(declare-fun e!809248 () Bool)

(assert (=> d!154059 (=> res!967359 e!809248)))

(assert (=> d!154059 (= res!967359 (bvsge j!81 (size!47614 a!2831)))))

(assert (=> d!154059 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!809248)))

(declare-fun b!1433695 () Bool)

(assert (=> b!1433695 (= e!809248 e!809246)))

(declare-fun c!132668 () Bool)

(assert (=> b!1433695 (= c!132668 (validKeyInArray!0 (select (arr!47063 a!2831) j!81)))))

(assert (= (and d!154059 (not res!967359)) b!1433695))

(assert (= (and b!1433695 c!132668) b!1433692))

(assert (= (and b!1433695 (not c!132668)) b!1433694))

(assert (= (and b!1433692 res!967358) b!1433693))

(assert (= (or b!1433693 b!1433694) bm!67511))

(assert (=> b!1433692 m!1323247))

(declare-fun m!1323425 () Bool)

(assert (=> b!1433692 m!1323425))

(declare-fun m!1323427 () Bool)

(assert (=> b!1433692 m!1323427))

(assert (=> b!1433692 m!1323247))

(assert (=> b!1433692 m!1323249))

(declare-fun m!1323429 () Bool)

(assert (=> bm!67511 m!1323429))

(assert (=> b!1433695 m!1323247))

(assert (=> b!1433695 m!1323247))

(assert (=> b!1433695 m!1323257))

(assert (=> b!1433479 d!154059))

(declare-fun d!154063 () Bool)

(assert (=> d!154063 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!631126 () Unit!48422)

(declare-fun choose!38 (array!97523 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48422)

(assert (=> d!154063 (= lt!631126 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!154063 (validMask!0 mask!2608)))

(assert (=> d!154063 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!631126)))

(declare-fun bs!41740 () Bool)

(assert (= bs!41740 d!154063))

(assert (=> bs!41740 m!1323283))

(declare-fun m!1323439 () Bool)

(assert (=> bs!41740 m!1323439))

(assert (=> bs!41740 m!1323267))

(assert (=> b!1433479 d!154063))

(declare-fun b!1433722 () Bool)

(declare-fun lt!631128 () SeekEntryResult!11364)

(assert (=> b!1433722 (and (bvsge (index!47849 lt!631128) #b00000000000000000000000000000000) (bvslt (index!47849 lt!631128) (size!47614 lt!631017)))))

(declare-fun res!967372 () Bool)

(assert (=> b!1433722 (= res!967372 (= (select (arr!47063 lt!631017) (index!47849 lt!631128)) lt!631021))))

(declare-fun e!809269 () Bool)

(assert (=> b!1433722 (=> res!967372 e!809269)))

(declare-fun e!809267 () Bool)

(assert (=> b!1433722 (= e!809267 e!809269)))

(declare-fun b!1433723 () Bool)

(declare-fun e!809268 () Bool)

(assert (=> b!1433723 (= e!809268 e!809267)))

(declare-fun res!967374 () Bool)

(assert (=> b!1433723 (= res!967374 (and ((_ is Intermediate!11364) lt!631128) (not (undefined!12176 lt!631128)) (bvslt (x!129498 lt!631128) #b01111111111111111111111111111110) (bvsge (x!129498 lt!631128) #b00000000000000000000000000000000) (bvsge (x!129498 lt!631128) #b00000000000000000000000000000000)))))

(assert (=> b!1433723 (=> (not res!967374) (not e!809267))))

(declare-fun b!1433724 () Bool)

(declare-fun e!809265 () SeekEntryResult!11364)

(assert (=> b!1433724 (= e!809265 (Intermediate!11364 true (toIndex!0 lt!631021 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1433725 () Bool)

(assert (=> b!1433725 (= e!809268 (bvsge (x!129498 lt!631128) #b01111111111111111111111111111110))))

(declare-fun b!1433726 () Bool)

(declare-fun e!809266 () SeekEntryResult!11364)

(assert (=> b!1433726 (= e!809266 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!631021 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!631021 lt!631017 mask!2608))))

(declare-fun d!154067 () Bool)

(assert (=> d!154067 e!809268))

(declare-fun c!132679 () Bool)

(assert (=> d!154067 (= c!132679 (and ((_ is Intermediate!11364) lt!631128) (undefined!12176 lt!631128)))))

(assert (=> d!154067 (= lt!631128 e!809265)))

(declare-fun c!132678 () Bool)

(assert (=> d!154067 (= c!132678 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!631127 () (_ BitVec 64))

(assert (=> d!154067 (= lt!631127 (select (arr!47063 lt!631017) (toIndex!0 lt!631021 mask!2608)))))

(assert (=> d!154067 (validMask!0 mask!2608)))

(assert (=> d!154067 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631021 mask!2608) lt!631021 lt!631017 mask!2608) lt!631128)))

(declare-fun b!1433727 () Bool)

(assert (=> b!1433727 (= e!809266 (Intermediate!11364 false (toIndex!0 lt!631021 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1433728 () Bool)

(assert (=> b!1433728 (and (bvsge (index!47849 lt!631128) #b00000000000000000000000000000000) (bvslt (index!47849 lt!631128) (size!47614 lt!631017)))))

(assert (=> b!1433728 (= e!809269 (= (select (arr!47063 lt!631017) (index!47849 lt!631128)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1433729 () Bool)

(assert (=> b!1433729 (and (bvsge (index!47849 lt!631128) #b00000000000000000000000000000000) (bvslt (index!47849 lt!631128) (size!47614 lt!631017)))))

(declare-fun res!967373 () Bool)

(assert (=> b!1433729 (= res!967373 (= (select (arr!47063 lt!631017) (index!47849 lt!631128)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1433729 (=> res!967373 e!809269)))

(declare-fun b!1433730 () Bool)

(assert (=> b!1433730 (= e!809265 e!809266)))

(declare-fun c!132677 () Bool)

(assert (=> b!1433730 (= c!132677 (or (= lt!631127 lt!631021) (= (bvadd lt!631127 lt!631127) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!154067 c!132678) b!1433724))

(assert (= (and d!154067 (not c!132678)) b!1433730))

(assert (= (and b!1433730 c!132677) b!1433727))

(assert (= (and b!1433730 (not c!132677)) b!1433726))

(assert (= (and d!154067 c!132679) b!1433725))

(assert (= (and d!154067 (not c!132679)) b!1433723))

(assert (= (and b!1433723 res!967374) b!1433722))

(assert (= (and b!1433722 (not res!967372)) b!1433729))

(assert (= (and b!1433729 (not res!967373)) b!1433728))

(declare-fun m!1323447 () Bool)

(assert (=> b!1433729 m!1323447))

(assert (=> b!1433722 m!1323447))

(assert (=> d!154067 m!1323259))

(declare-fun m!1323451 () Bool)

(assert (=> d!154067 m!1323451))

(assert (=> d!154067 m!1323267))

(assert (=> b!1433726 m!1323259))

(declare-fun m!1323455 () Bool)

(assert (=> b!1433726 m!1323455))

(assert (=> b!1433726 m!1323455))

(declare-fun m!1323457 () Bool)

(assert (=> b!1433726 m!1323457))

(assert (=> b!1433728 m!1323447))

(assert (=> b!1433468 d!154067))

(declare-fun d!154073 () Bool)

(declare-fun lt!631132 () (_ BitVec 32))

(declare-fun lt!631131 () (_ BitVec 32))

(assert (=> d!154073 (= lt!631132 (bvmul (bvxor lt!631131 (bvlshr lt!631131 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154073 (= lt!631131 ((_ extract 31 0) (bvand (bvxor lt!631021 (bvlshr lt!631021 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154073 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!967312 (let ((h!35077 ((_ extract 31 0) (bvand (bvxor lt!631021 (bvlshr lt!631021 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129501 (bvmul (bvxor h!35077 (bvlshr h!35077 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129501 (bvlshr x!129501 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!967312 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!967312 #b00000000000000000000000000000000))))))

(assert (=> d!154073 (= (toIndex!0 lt!631021 mask!2608) (bvand (bvxor lt!631132 (bvlshr lt!631132 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1433468 d!154073))

(declare-fun d!154075 () Bool)

(assert (=> d!154075 (= (validKeyInArray!0 (select (arr!47063 a!2831) j!81)) (and (not (= (select (arr!47063 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47063 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1433469 d!154075))

(check-sat (not bm!67497) (not d!154019) (not bm!67511) (not b!1433533) (not b!1433530) (not b!1433565) (not bm!67510) (not d!154023) (not d!154043) (not d!154017) (not b!1433695) (not d!154041) (not b!1433692) (not b!1433556) (not b!1433574) (not d!154063) (not b!1433685) (not b!1433649) (not d!154067) (not b!1433726) (not b!1433684) (not b!1433682))
(check-sat)
