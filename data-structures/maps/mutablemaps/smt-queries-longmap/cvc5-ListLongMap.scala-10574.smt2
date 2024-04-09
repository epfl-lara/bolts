; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124624 () Bool)

(assert start!124624)

(declare-fun b!1442148 () Bool)

(declare-fun res!974506 () Bool)

(declare-fun e!812880 () Bool)

(assert (=> b!1442148 (=> (not res!974506) (not e!812880))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97989 0))(
  ( (array!97990 (arr!47278 (Array (_ BitVec 32) (_ BitVec 64))) (size!47829 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97989)

(assert (=> b!1442148 (= res!974506 (and (= (size!47829 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47829 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47829 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1442149 () Bool)

(declare-fun res!974502 () Bool)

(declare-fun e!812879 () Bool)

(assert (=> b!1442149 (=> (not res!974502) (not e!812879))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1442149 (= res!974502 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1442150 () Bool)

(declare-fun res!974514 () Bool)

(assert (=> b!1442150 (=> (not res!974514) (not e!812880))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1442150 (= res!974514 (validKeyInArray!0 (select (arr!47278 a!2862) j!93)))))

(declare-fun b!1442151 () Bool)

(declare-fun res!974511 () Bool)

(assert (=> b!1442151 (=> (not res!974511) (not e!812880))))

(assert (=> b!1442151 (= res!974511 (validKeyInArray!0 (select (arr!47278 a!2862) i!1006)))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1442152 () Bool)

(declare-fun lt!633438 () (_ BitVec 64))

(declare-fun e!812881 () Bool)

(declare-fun lt!633439 () array!97989)

(declare-datatypes ((SeekEntryResult!11553 0))(
  ( (MissingZero!11553 (index!48603 (_ BitVec 32))) (Found!11553 (index!48604 (_ BitVec 32))) (Intermediate!11553 (undefined!12365 Bool) (index!48605 (_ BitVec 32)) (x!130317 (_ BitVec 32))) (Undefined!11553) (MissingVacant!11553 (index!48606 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97989 (_ BitVec 32)) SeekEntryResult!11553)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97989 (_ BitVec 32)) SeekEntryResult!11553)

(assert (=> b!1442152 (= e!812881 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633438 lt!633439 mask!2687) (seekEntryOrOpen!0 lt!633438 lt!633439 mask!2687)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1442153 () Bool)

(declare-fun e!812882 () Bool)

(assert (=> b!1442153 (= e!812882 (or (= (select (arr!47278 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47278 a!2862) intermediateBeforeIndex!19) (select (arr!47278 a!2862) j!93))))))

(declare-fun b!1442154 () Bool)

(declare-fun res!974505 () Bool)

(assert (=> b!1442154 (=> (not res!974505) (not e!812882))))

(assert (=> b!1442154 (= res!974505 (= (seekEntryOrOpen!0 (select (arr!47278 a!2862) j!93) a!2862 mask!2687) (Found!11553 j!93)))))

(declare-fun b!1442155 () Bool)

(declare-fun e!812878 () Bool)

(assert (=> b!1442155 (= e!812878 e!812879)))

(declare-fun res!974504 () Bool)

(assert (=> b!1442155 (=> (not res!974504) (not e!812879))))

(declare-fun lt!633441 () SeekEntryResult!11553)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1442155 (= res!974504 (= lt!633441 (Intermediate!11553 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97989 (_ BitVec 32)) SeekEntryResult!11553)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1442155 (= lt!633441 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633438 mask!2687) lt!633438 lt!633439 mask!2687))))

(assert (=> b!1442155 (= lt!633438 (select (store (arr!47278 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1442156 () Bool)

(assert (=> b!1442156 (= e!812881 (= lt!633441 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633438 lt!633439 mask!2687)))))

(declare-fun b!1442158 () Bool)

(declare-fun e!812877 () Bool)

(assert (=> b!1442158 (= e!812880 e!812877)))

(declare-fun res!974501 () Bool)

(assert (=> b!1442158 (=> (not res!974501) (not e!812877))))

(assert (=> b!1442158 (= res!974501 (= (select (store (arr!47278 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1442158 (= lt!633439 (array!97990 (store (arr!47278 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47829 a!2862)))))

(declare-fun b!1442159 () Bool)

(declare-fun res!974503 () Bool)

(assert (=> b!1442159 (=> (not res!974503) (not e!812880))))

(assert (=> b!1442159 (= res!974503 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47829 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47829 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47829 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1442160 () Bool)

(assert (=> b!1442160 (= e!812877 e!812878)))

(declare-fun res!974509 () Bool)

(assert (=> b!1442160 (=> (not res!974509) (not e!812878))))

(declare-fun lt!633442 () SeekEntryResult!11553)

(assert (=> b!1442160 (= res!974509 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47278 a!2862) j!93) mask!2687) (select (arr!47278 a!2862) j!93) a!2862 mask!2687) lt!633442))))

(assert (=> b!1442160 (= lt!633442 (Intermediate!11553 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1442161 () Bool)

(declare-fun res!974508 () Bool)

(assert (=> b!1442161 (=> (not res!974508) (not e!812878))))

(assert (=> b!1442161 (= res!974508 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47278 a!2862) j!93) a!2862 mask!2687) lt!633442))))

(declare-fun b!1442162 () Bool)

(declare-fun res!974500 () Bool)

(assert (=> b!1442162 (=> (not res!974500) (not e!812880))))

(declare-datatypes ((List!33959 0))(
  ( (Nil!33956) (Cons!33955 (h!35305 (_ BitVec 64)) (t!48660 List!33959)) )
))
(declare-fun arrayNoDuplicates!0 (array!97989 (_ BitVec 32) List!33959) Bool)

(assert (=> b!1442162 (= res!974500 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33956))))

(declare-fun b!1442163 () Bool)

(declare-fun res!974507 () Bool)

(assert (=> b!1442163 (=> (not res!974507) (not e!812879))))

(assert (=> b!1442163 (= res!974507 e!812881)))

(declare-fun c!133337 () Bool)

(assert (=> b!1442163 (= c!133337 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1442164 () Bool)

(assert (=> b!1442164 (= e!812879 (not (or (not (= (select (arr!47278 a!2862) index!646) (select (store (arr!47278 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47278 a!2862) index!646) (select (arr!47278 a!2862) j!93))) (bvsge mask!2687 #b00000000000000000000000000000000))))))

(assert (=> b!1442164 e!812882))

(declare-fun res!974512 () Bool)

(assert (=> b!1442164 (=> (not res!974512) (not e!812882))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97989 (_ BitVec 32)) Bool)

(assert (=> b!1442164 (= res!974512 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48550 0))(
  ( (Unit!48551) )
))
(declare-fun lt!633440 () Unit!48550)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97989 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48550)

(assert (=> b!1442164 (= lt!633440 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1442157 () Bool)

(declare-fun res!974510 () Bool)

(assert (=> b!1442157 (=> (not res!974510) (not e!812880))))

(assert (=> b!1442157 (= res!974510 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!974513 () Bool)

(assert (=> start!124624 (=> (not res!974513) (not e!812880))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124624 (= res!974513 (validMask!0 mask!2687))))

(assert (=> start!124624 e!812880))

(assert (=> start!124624 true))

(declare-fun array_inv!36223 (array!97989) Bool)

(assert (=> start!124624 (array_inv!36223 a!2862)))

(assert (= (and start!124624 res!974513) b!1442148))

(assert (= (and b!1442148 res!974506) b!1442151))

(assert (= (and b!1442151 res!974511) b!1442150))

(assert (= (and b!1442150 res!974514) b!1442157))

(assert (= (and b!1442157 res!974510) b!1442162))

(assert (= (and b!1442162 res!974500) b!1442159))

(assert (= (and b!1442159 res!974503) b!1442158))

(assert (= (and b!1442158 res!974501) b!1442160))

(assert (= (and b!1442160 res!974509) b!1442161))

(assert (= (and b!1442161 res!974508) b!1442155))

(assert (= (and b!1442155 res!974504) b!1442163))

(assert (= (and b!1442163 c!133337) b!1442156))

(assert (= (and b!1442163 (not c!133337)) b!1442152))

(assert (= (and b!1442163 res!974507) b!1442149))

(assert (= (and b!1442149 res!974502) b!1442164))

(assert (= (and b!1442164 res!974512) b!1442154))

(assert (= (and b!1442154 res!974505) b!1442153))

(declare-fun m!1331367 () Bool)

(assert (=> b!1442161 m!1331367))

(assert (=> b!1442161 m!1331367))

(declare-fun m!1331369 () Bool)

(assert (=> b!1442161 m!1331369))

(declare-fun m!1331371 () Bool)

(assert (=> b!1442152 m!1331371))

(declare-fun m!1331373 () Bool)

(assert (=> b!1442152 m!1331373))

(declare-fun m!1331375 () Bool)

(assert (=> b!1442162 m!1331375))

(declare-fun m!1331377 () Bool)

(assert (=> b!1442153 m!1331377))

(assert (=> b!1442153 m!1331367))

(assert (=> b!1442150 m!1331367))

(assert (=> b!1442150 m!1331367))

(declare-fun m!1331379 () Bool)

(assert (=> b!1442150 m!1331379))

(declare-fun m!1331381 () Bool)

(assert (=> b!1442155 m!1331381))

(assert (=> b!1442155 m!1331381))

(declare-fun m!1331383 () Bool)

(assert (=> b!1442155 m!1331383))

(declare-fun m!1331385 () Bool)

(assert (=> b!1442155 m!1331385))

(declare-fun m!1331387 () Bool)

(assert (=> b!1442155 m!1331387))

(declare-fun m!1331389 () Bool)

(assert (=> b!1442164 m!1331389))

(assert (=> b!1442164 m!1331385))

(declare-fun m!1331391 () Bool)

(assert (=> b!1442164 m!1331391))

(declare-fun m!1331393 () Bool)

(assert (=> b!1442164 m!1331393))

(declare-fun m!1331395 () Bool)

(assert (=> b!1442164 m!1331395))

(assert (=> b!1442164 m!1331367))

(declare-fun m!1331397 () Bool)

(assert (=> b!1442157 m!1331397))

(declare-fun m!1331399 () Bool)

(assert (=> b!1442151 m!1331399))

(assert (=> b!1442151 m!1331399))

(declare-fun m!1331401 () Bool)

(assert (=> b!1442151 m!1331401))

(assert (=> b!1442154 m!1331367))

(assert (=> b!1442154 m!1331367))

(declare-fun m!1331403 () Bool)

(assert (=> b!1442154 m!1331403))

(assert (=> b!1442160 m!1331367))

(assert (=> b!1442160 m!1331367))

(declare-fun m!1331405 () Bool)

(assert (=> b!1442160 m!1331405))

(assert (=> b!1442160 m!1331405))

(assert (=> b!1442160 m!1331367))

(declare-fun m!1331407 () Bool)

(assert (=> b!1442160 m!1331407))

(assert (=> b!1442158 m!1331385))

(declare-fun m!1331409 () Bool)

(assert (=> b!1442158 m!1331409))

(declare-fun m!1331411 () Bool)

(assert (=> start!124624 m!1331411))

(declare-fun m!1331413 () Bool)

(assert (=> start!124624 m!1331413))

(declare-fun m!1331415 () Bool)

(assert (=> b!1442156 m!1331415))

(push 1)

