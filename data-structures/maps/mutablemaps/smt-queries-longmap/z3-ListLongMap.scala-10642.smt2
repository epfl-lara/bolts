; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125034 () Bool)

(assert start!125034)

(declare-fun b!1453320 () Bool)

(declare-fun e!818037 () Bool)

(declare-fun e!818044 () Bool)

(assert (=> b!1453320 (= e!818037 e!818044)))

(declare-fun res!984443 () Bool)

(assert (=> b!1453320 (=> (not res!984443) (not e!818044))))

(declare-fun lt!637166 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1453320 (= res!984443 (and (= index!646 intermediateAfterIndex!19) (= lt!637166 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1453321 () Bool)

(declare-fun res!984451 () Bool)

(declare-fun e!818045 () Bool)

(assert (=> b!1453321 (=> (not res!984451) (not e!818045))))

(declare-datatypes ((array!98399 0))(
  ( (array!98400 (arr!47483 (Array (_ BitVec 32) (_ BitVec 64))) (size!48034 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98399)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1453321 (= res!984451 (validKeyInArray!0 (select (arr!47483 a!2862) j!93)))))

(declare-fun b!1453322 () Bool)

(declare-fun res!984456 () Bool)

(declare-fun e!818038 () Bool)

(assert (=> b!1453322 (=> (not res!984456) (not e!818038))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1453322 (= res!984456 (or (= (select (arr!47483 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47483 a!2862) intermediateBeforeIndex!19) (select (arr!47483 a!2862) j!93))))))

(declare-fun b!1453323 () Bool)

(declare-fun res!984459 () Bool)

(assert (=> b!1453323 (=> (not res!984459) (not e!818045))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1453323 (= res!984459 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48034 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48034 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48034 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun lt!637171 () (_ BitVec 64))

(declare-fun b!1453324 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!637169 () array!98399)

(declare-datatypes ((SeekEntryResult!11758 0))(
  ( (MissingZero!11758 (index!49423 (_ BitVec 32))) (Found!11758 (index!49424 (_ BitVec 32))) (Intermediate!11758 (undefined!12570 Bool) (index!49425 (_ BitVec 32)) (x!131066 (_ BitVec 32))) (Undefined!11758) (MissingVacant!11758 (index!49426 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98399 (_ BitVec 32)) SeekEntryResult!11758)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98399 (_ BitVec 32)) SeekEntryResult!11758)

(assert (=> b!1453324 (= e!818044 (= (seekEntryOrOpen!0 lt!637171 lt!637169 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637171 lt!637169 mask!2687)))))

(declare-fun res!984445 () Bool)

(assert (=> start!125034 (=> (not res!984445) (not e!818045))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125034 (= res!984445 (validMask!0 mask!2687))))

(assert (=> start!125034 e!818045))

(assert (=> start!125034 true))

(declare-fun array_inv!36428 (array!98399) Bool)

(assert (=> start!125034 (array_inv!36428 a!2862)))

(declare-fun b!1453325 () Bool)

(declare-fun res!984446 () Bool)

(assert (=> b!1453325 (=> (not res!984446) (not e!818045))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1453325 (= res!984446 (and (= (size!48034 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48034 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48034 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1453326 () Bool)

(declare-fun res!984452 () Bool)

(declare-fun e!818042 () Bool)

(assert (=> b!1453326 (=> (not res!984452) (not e!818042))))

(declare-fun e!818041 () Bool)

(assert (=> b!1453326 (= res!984452 e!818041)))

(declare-fun c!133952 () Bool)

(assert (=> b!1453326 (= c!133952 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1453327 () Bool)

(declare-fun e!818040 () Bool)

(assert (=> b!1453327 (= e!818040 e!818042)))

(declare-fun res!984455 () Bool)

(assert (=> b!1453327 (=> (not res!984455) (not e!818042))))

(declare-fun lt!637167 () SeekEntryResult!11758)

(assert (=> b!1453327 (= res!984455 (= lt!637167 (Intermediate!11758 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98399 (_ BitVec 32)) SeekEntryResult!11758)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1453327 (= lt!637167 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637171 mask!2687) lt!637171 lt!637169 mask!2687))))

(assert (=> b!1453327 (= lt!637171 (select (store (arr!47483 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1453328 () Bool)

(declare-fun e!818039 () Bool)

(assert (=> b!1453328 (= e!818039 e!818040)))

(declare-fun res!984450 () Bool)

(assert (=> b!1453328 (=> (not res!984450) (not e!818040))))

(declare-fun lt!637168 () SeekEntryResult!11758)

(assert (=> b!1453328 (= res!984450 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47483 a!2862) j!93) mask!2687) (select (arr!47483 a!2862) j!93) a!2862 mask!2687) lt!637168))))

(assert (=> b!1453328 (= lt!637168 (Intermediate!11758 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1453329 () Bool)

(declare-fun res!984449 () Bool)

(assert (=> b!1453329 (=> (not res!984449) (not e!818040))))

(assert (=> b!1453329 (= res!984449 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47483 a!2862) j!93) a!2862 mask!2687) lt!637168))))

(declare-fun b!1453330 () Bool)

(assert (=> b!1453330 (= e!818042 (not (or (and (= (select (arr!47483 a!2862) index!646) (select (store (arr!47483 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47483 a!2862) index!646) (select (arr!47483 a!2862) j!93))) (= (select (arr!47483 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (bvslt mask!2687 #b00000000000000000000000000000000) (bvslt index!646 (bvadd #b00000000000000000000000000000001 mask!2687)))))))

(assert (=> b!1453330 e!818038))

(declare-fun res!984453 () Bool)

(assert (=> b!1453330 (=> (not res!984453) (not e!818038))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98399 (_ BitVec 32)) Bool)

(assert (=> b!1453330 (= res!984453 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48960 0))(
  ( (Unit!48961) )
))
(declare-fun lt!637170 () Unit!48960)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98399 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48960)

(assert (=> b!1453330 (= lt!637170 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1453331 () Bool)

(assert (=> b!1453331 (= e!818038 e!818037)))

(declare-fun res!984454 () Bool)

(assert (=> b!1453331 (=> res!984454 e!818037)))

(assert (=> b!1453331 (= res!984454 (or (and (= (select (arr!47483 a!2862) index!646) lt!637166) (= (select (arr!47483 a!2862) index!646) (select (arr!47483 a!2862) j!93))) (= (select (arr!47483 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1453331 (= lt!637166 (select (store (arr!47483 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1453332 () Bool)

(assert (=> b!1453332 (= e!818041 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637171 lt!637169 mask!2687) (seekEntryOrOpen!0 lt!637171 lt!637169 mask!2687)))))

(declare-fun b!1453333 () Bool)

(assert (=> b!1453333 (= e!818045 e!818039)))

(declare-fun res!984457 () Bool)

(assert (=> b!1453333 (=> (not res!984457) (not e!818039))))

(assert (=> b!1453333 (= res!984457 (= (select (store (arr!47483 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1453333 (= lt!637169 (array!98400 (store (arr!47483 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48034 a!2862)))))

(declare-fun b!1453334 () Bool)

(declare-fun res!984444 () Bool)

(assert (=> b!1453334 (=> (not res!984444) (not e!818045))))

(assert (=> b!1453334 (= res!984444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1453335 () Bool)

(assert (=> b!1453335 (= e!818041 (= lt!637167 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637171 lt!637169 mask!2687)))))

(declare-fun b!1453336 () Bool)

(declare-fun res!984448 () Bool)

(assert (=> b!1453336 (=> (not res!984448) (not e!818045))))

(assert (=> b!1453336 (= res!984448 (validKeyInArray!0 (select (arr!47483 a!2862) i!1006)))))

(declare-fun b!1453337 () Bool)

(declare-fun res!984447 () Bool)

(assert (=> b!1453337 (=> (not res!984447) (not e!818038))))

(assert (=> b!1453337 (= res!984447 (= (seekEntryOrOpen!0 (select (arr!47483 a!2862) j!93) a!2862 mask!2687) (Found!11758 j!93)))))

(declare-fun b!1453338 () Bool)

(declare-fun res!984458 () Bool)

(assert (=> b!1453338 (=> (not res!984458) (not e!818045))))

(declare-datatypes ((List!34164 0))(
  ( (Nil!34161) (Cons!34160 (h!35510 (_ BitVec 64)) (t!48865 List!34164)) )
))
(declare-fun arrayNoDuplicates!0 (array!98399 (_ BitVec 32) List!34164) Bool)

(assert (=> b!1453338 (= res!984458 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34161))))

(declare-fun b!1453339 () Bool)

(declare-fun res!984442 () Bool)

(assert (=> b!1453339 (=> (not res!984442) (not e!818042))))

(assert (=> b!1453339 (= res!984442 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!125034 res!984445) b!1453325))

(assert (= (and b!1453325 res!984446) b!1453336))

(assert (= (and b!1453336 res!984448) b!1453321))

(assert (= (and b!1453321 res!984451) b!1453334))

(assert (= (and b!1453334 res!984444) b!1453338))

(assert (= (and b!1453338 res!984458) b!1453323))

(assert (= (and b!1453323 res!984459) b!1453333))

(assert (= (and b!1453333 res!984457) b!1453328))

(assert (= (and b!1453328 res!984450) b!1453329))

(assert (= (and b!1453329 res!984449) b!1453327))

(assert (= (and b!1453327 res!984455) b!1453326))

(assert (= (and b!1453326 c!133952) b!1453335))

(assert (= (and b!1453326 (not c!133952)) b!1453332))

(assert (= (and b!1453326 res!984452) b!1453339))

(assert (= (and b!1453339 res!984442) b!1453330))

(assert (= (and b!1453330 res!984453) b!1453337))

(assert (= (and b!1453337 res!984447) b!1453322))

(assert (= (and b!1453322 res!984456) b!1453331))

(assert (= (and b!1453331 (not res!984454)) b!1453320))

(assert (= (and b!1453320 res!984443) b!1453324))

(declare-fun m!1341863 () Bool)

(assert (=> b!1453337 m!1341863))

(assert (=> b!1453337 m!1341863))

(declare-fun m!1341865 () Bool)

(assert (=> b!1453337 m!1341865))

(declare-fun m!1341867 () Bool)

(assert (=> b!1453330 m!1341867))

(declare-fun m!1341869 () Bool)

(assert (=> b!1453330 m!1341869))

(declare-fun m!1341871 () Bool)

(assert (=> b!1453330 m!1341871))

(declare-fun m!1341873 () Bool)

(assert (=> b!1453330 m!1341873))

(declare-fun m!1341875 () Bool)

(assert (=> b!1453330 m!1341875))

(assert (=> b!1453330 m!1341863))

(declare-fun m!1341877 () Bool)

(assert (=> b!1453338 m!1341877))

(assert (=> b!1453333 m!1341869))

(declare-fun m!1341879 () Bool)

(assert (=> b!1453333 m!1341879))

(declare-fun m!1341881 () Bool)

(assert (=> b!1453327 m!1341881))

(assert (=> b!1453327 m!1341881))

(declare-fun m!1341883 () Bool)

(assert (=> b!1453327 m!1341883))

(assert (=> b!1453327 m!1341869))

(declare-fun m!1341885 () Bool)

(assert (=> b!1453327 m!1341885))

(assert (=> b!1453328 m!1341863))

(assert (=> b!1453328 m!1341863))

(declare-fun m!1341887 () Bool)

(assert (=> b!1453328 m!1341887))

(assert (=> b!1453328 m!1341887))

(assert (=> b!1453328 m!1341863))

(declare-fun m!1341889 () Bool)

(assert (=> b!1453328 m!1341889))

(declare-fun m!1341891 () Bool)

(assert (=> b!1453334 m!1341891))

(declare-fun m!1341893 () Bool)

(assert (=> b!1453335 m!1341893))

(declare-fun m!1341895 () Bool)

(assert (=> b!1453336 m!1341895))

(assert (=> b!1453336 m!1341895))

(declare-fun m!1341897 () Bool)

(assert (=> b!1453336 m!1341897))

(assert (=> b!1453329 m!1341863))

(assert (=> b!1453329 m!1341863))

(declare-fun m!1341899 () Bool)

(assert (=> b!1453329 m!1341899))

(assert (=> b!1453331 m!1341873))

(assert (=> b!1453331 m!1341863))

(assert (=> b!1453331 m!1341869))

(assert (=> b!1453331 m!1341871))

(declare-fun m!1341901 () Bool)

(assert (=> b!1453332 m!1341901))

(declare-fun m!1341903 () Bool)

(assert (=> b!1453332 m!1341903))

(assert (=> b!1453321 m!1341863))

(assert (=> b!1453321 m!1341863))

(declare-fun m!1341905 () Bool)

(assert (=> b!1453321 m!1341905))

(assert (=> b!1453324 m!1341903))

(assert (=> b!1453324 m!1341901))

(declare-fun m!1341907 () Bool)

(assert (=> start!125034 m!1341907))

(declare-fun m!1341909 () Bool)

(assert (=> start!125034 m!1341909))

(declare-fun m!1341911 () Bool)

(assert (=> b!1453322 m!1341911))

(assert (=> b!1453322 m!1341863))

(check-sat (not b!1453337) (not b!1453332) (not b!1453338) (not b!1453328) (not b!1453335) (not b!1453334) (not b!1453327) (not b!1453324) (not b!1453330) (not b!1453336) (not b!1453321) (not b!1453329) (not start!125034))
(check-sat)
