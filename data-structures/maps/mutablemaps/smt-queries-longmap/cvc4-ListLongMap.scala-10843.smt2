; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126950 () Bool)

(assert start!126950)

(declare-fun b!1491242 () Bool)

(declare-fun res!1014538 () Bool)

(declare-fun e!835564 () Bool)

(assert (=> b!1491242 (=> (not res!1014538) (not e!835564))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99640 0))(
  ( (array!99641 (arr!48087 (Array (_ BitVec 32) (_ BitVec 64))) (size!48638 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99640)

(assert (=> b!1491242 (= res!1014538 (and (= (size!48638 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48638 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48638 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1491243 () Bool)

(declare-fun e!835565 () Bool)

(declare-fun e!835560 () Bool)

(assert (=> b!1491243 (= e!835565 e!835560)))

(declare-fun res!1014545 () Bool)

(assert (=> b!1491243 (=> (not res!1014545) (not e!835560))))

(declare-datatypes ((SeekEntryResult!12350 0))(
  ( (MissingZero!12350 (index!51791 (_ BitVec 32))) (Found!12350 (index!51792 (_ BitVec 32))) (Intermediate!12350 (undefined!13162 Bool) (index!51793 (_ BitVec 32)) (x!133377 (_ BitVec 32))) (Undefined!12350) (MissingVacant!12350 (index!51794 (_ BitVec 32))) )
))
(declare-fun lt!650182 () SeekEntryResult!12350)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99640 (_ BitVec 32)) SeekEntryResult!12350)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491243 (= res!1014545 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48087 a!2862) j!93) mask!2687) (select (arr!48087 a!2862) j!93) a!2862 mask!2687) lt!650182))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1491243 (= lt!650182 (Intermediate!12350 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun lt!650180 () array!99640)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!650178 () (_ BitVec 64))

(declare-fun lt!650177 () SeekEntryResult!12350)

(declare-fun e!835559 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1491244 () Bool)

(assert (=> b!1491244 (= e!835559 (= lt!650177 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650178 lt!650180 mask!2687)))))

(declare-fun b!1491245 () Bool)

(declare-fun res!1014535 () Bool)

(assert (=> b!1491245 (=> (not res!1014535) (not e!835564))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1491245 (= res!1014535 (validKeyInArray!0 (select (arr!48087 a!2862) i!1006)))))

(declare-fun b!1491246 () Bool)

(declare-fun e!835562 () Bool)

(assert (=> b!1491246 (= e!835562 true)))

(declare-fun lt!650179 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491246 (= lt!650179 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1491247 () Bool)

(declare-fun res!1014541 () Bool)

(assert (=> b!1491247 (=> (not res!1014541) (not e!835564))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99640 (_ BitVec 32)) Bool)

(assert (=> b!1491247 (= res!1014541 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1491248 () Bool)

(declare-fun res!1014539 () Bool)

(declare-fun e!835558 () Bool)

(assert (=> b!1491248 (=> (not res!1014539) (not e!835558))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1491248 (= res!1014539 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1491249 () Bool)

(assert (=> b!1491249 (= e!835560 e!835558)))

(declare-fun res!1014536 () Bool)

(assert (=> b!1491249 (=> (not res!1014536) (not e!835558))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1491249 (= res!1014536 (= lt!650177 (Intermediate!12350 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1491249 (= lt!650177 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650178 mask!2687) lt!650178 lt!650180 mask!2687))))

(assert (=> b!1491249 (= lt!650178 (select (store (arr!48087 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1491250 () Bool)

(assert (=> b!1491250 (= e!835558 (not e!835562))))

(declare-fun res!1014543 () Bool)

(assert (=> b!1491250 (=> res!1014543 e!835562)))

(assert (=> b!1491250 (= res!1014543 (or (and (= (select (arr!48087 a!2862) index!646) (select (store (arr!48087 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48087 a!2862) index!646) (select (arr!48087 a!2862) j!93))) (= (select (arr!48087 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!835561 () Bool)

(assert (=> b!1491250 e!835561))

(declare-fun res!1014533 () Bool)

(assert (=> b!1491250 (=> (not res!1014533) (not e!835561))))

(assert (=> b!1491250 (= res!1014533 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49988 0))(
  ( (Unit!49989) )
))
(declare-fun lt!650181 () Unit!49988)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99640 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49988)

(assert (=> b!1491250 (= lt!650181 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1491251 () Bool)

(declare-fun res!1014546 () Bool)

(assert (=> b!1491251 (=> (not res!1014546) (not e!835560))))

(assert (=> b!1491251 (= res!1014546 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48087 a!2862) j!93) a!2862 mask!2687) lt!650182))))

(declare-fun b!1491253 () Bool)

(assert (=> b!1491253 (= e!835564 e!835565)))

(declare-fun res!1014531 () Bool)

(assert (=> b!1491253 (=> (not res!1014531) (not e!835565))))

(assert (=> b!1491253 (= res!1014531 (= (select (store (arr!48087 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1491253 (= lt!650180 (array!99641 (store (arr!48087 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48638 a!2862)))))

(declare-fun b!1491254 () Bool)

(declare-fun res!1014544 () Bool)

(assert (=> b!1491254 (=> (not res!1014544) (not e!835558))))

(assert (=> b!1491254 (= res!1014544 e!835559)))

(declare-fun c!137885 () Bool)

(assert (=> b!1491254 (= c!137885 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1491255 () Bool)

(declare-fun res!1014534 () Bool)

(assert (=> b!1491255 (=> (not res!1014534) (not e!835564))))

(declare-datatypes ((List!34768 0))(
  ( (Nil!34765) (Cons!34764 (h!36147 (_ BitVec 64)) (t!49469 List!34768)) )
))
(declare-fun arrayNoDuplicates!0 (array!99640 (_ BitVec 32) List!34768) Bool)

(assert (=> b!1491255 (= res!1014534 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34765))))

(declare-fun b!1491256 () Bool)

(declare-fun res!1014542 () Bool)

(assert (=> b!1491256 (=> (not res!1014542) (not e!835561))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99640 (_ BitVec 32)) SeekEntryResult!12350)

(assert (=> b!1491256 (= res!1014542 (= (seekEntryOrOpen!0 (select (arr!48087 a!2862) j!93) a!2862 mask!2687) (Found!12350 j!93)))))

(declare-fun b!1491257 () Bool)

(declare-fun res!1014532 () Bool)

(assert (=> b!1491257 (=> (not res!1014532) (not e!835564))))

(assert (=> b!1491257 (= res!1014532 (validKeyInArray!0 (select (arr!48087 a!2862) j!93)))))

(declare-fun b!1491258 () Bool)

(assert (=> b!1491258 (= e!835561 (or (= (select (arr!48087 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48087 a!2862) intermediateBeforeIndex!19) (select (arr!48087 a!2862) j!93))))))

(declare-fun b!1491259 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99640 (_ BitVec 32)) SeekEntryResult!12350)

(assert (=> b!1491259 (= e!835559 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650178 lt!650180 mask!2687) (seekEntryOrOpen!0 lt!650178 lt!650180 mask!2687)))))

(declare-fun b!1491252 () Bool)

(declare-fun res!1014537 () Bool)

(assert (=> b!1491252 (=> (not res!1014537) (not e!835564))))

(assert (=> b!1491252 (= res!1014537 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48638 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48638 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48638 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!1014540 () Bool)

(assert (=> start!126950 (=> (not res!1014540) (not e!835564))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126950 (= res!1014540 (validMask!0 mask!2687))))

(assert (=> start!126950 e!835564))

(assert (=> start!126950 true))

(declare-fun array_inv!37032 (array!99640) Bool)

(assert (=> start!126950 (array_inv!37032 a!2862)))

(assert (= (and start!126950 res!1014540) b!1491242))

(assert (= (and b!1491242 res!1014538) b!1491245))

(assert (= (and b!1491245 res!1014535) b!1491257))

(assert (= (and b!1491257 res!1014532) b!1491247))

(assert (= (and b!1491247 res!1014541) b!1491255))

(assert (= (and b!1491255 res!1014534) b!1491252))

(assert (= (and b!1491252 res!1014537) b!1491253))

(assert (= (and b!1491253 res!1014531) b!1491243))

(assert (= (and b!1491243 res!1014545) b!1491251))

(assert (= (and b!1491251 res!1014546) b!1491249))

(assert (= (and b!1491249 res!1014536) b!1491254))

(assert (= (and b!1491254 c!137885) b!1491244))

(assert (= (and b!1491254 (not c!137885)) b!1491259))

(assert (= (and b!1491254 res!1014544) b!1491248))

(assert (= (and b!1491248 res!1014539) b!1491250))

(assert (= (and b!1491250 res!1014533) b!1491256))

(assert (= (and b!1491256 res!1014542) b!1491258))

(assert (= (and b!1491250 (not res!1014543)) b!1491246))

(declare-fun m!1375427 () Bool)

(assert (=> b!1491246 m!1375427))

(declare-fun m!1375429 () Bool)

(assert (=> b!1491257 m!1375429))

(assert (=> b!1491257 m!1375429))

(declare-fun m!1375431 () Bool)

(assert (=> b!1491257 m!1375431))

(assert (=> b!1491251 m!1375429))

(assert (=> b!1491251 m!1375429))

(declare-fun m!1375433 () Bool)

(assert (=> b!1491251 m!1375433))

(declare-fun m!1375435 () Bool)

(assert (=> start!126950 m!1375435))

(declare-fun m!1375437 () Bool)

(assert (=> start!126950 m!1375437))

(declare-fun m!1375439 () Bool)

(assert (=> b!1491247 m!1375439))

(declare-fun m!1375441 () Bool)

(assert (=> b!1491245 m!1375441))

(assert (=> b!1491245 m!1375441))

(declare-fun m!1375443 () Bool)

(assert (=> b!1491245 m!1375443))

(declare-fun m!1375445 () Bool)

(assert (=> b!1491258 m!1375445))

(assert (=> b!1491258 m!1375429))

(declare-fun m!1375447 () Bool)

(assert (=> b!1491250 m!1375447))

(declare-fun m!1375449 () Bool)

(assert (=> b!1491250 m!1375449))

(declare-fun m!1375451 () Bool)

(assert (=> b!1491250 m!1375451))

(declare-fun m!1375453 () Bool)

(assert (=> b!1491250 m!1375453))

(declare-fun m!1375455 () Bool)

(assert (=> b!1491250 m!1375455))

(assert (=> b!1491250 m!1375429))

(assert (=> b!1491256 m!1375429))

(assert (=> b!1491256 m!1375429))

(declare-fun m!1375457 () Bool)

(assert (=> b!1491256 m!1375457))

(declare-fun m!1375459 () Bool)

(assert (=> b!1491249 m!1375459))

(assert (=> b!1491249 m!1375459))

(declare-fun m!1375461 () Bool)

(assert (=> b!1491249 m!1375461))

(assert (=> b!1491249 m!1375449))

(declare-fun m!1375463 () Bool)

(assert (=> b!1491249 m!1375463))

(declare-fun m!1375465 () Bool)

(assert (=> b!1491244 m!1375465))

(assert (=> b!1491253 m!1375449))

(declare-fun m!1375467 () Bool)

(assert (=> b!1491253 m!1375467))

(declare-fun m!1375469 () Bool)

(assert (=> b!1491255 m!1375469))

(assert (=> b!1491243 m!1375429))

(assert (=> b!1491243 m!1375429))

(declare-fun m!1375471 () Bool)

(assert (=> b!1491243 m!1375471))

(assert (=> b!1491243 m!1375471))

(assert (=> b!1491243 m!1375429))

(declare-fun m!1375473 () Bool)

(assert (=> b!1491243 m!1375473))

(declare-fun m!1375475 () Bool)

(assert (=> b!1491259 m!1375475))

(declare-fun m!1375477 () Bool)

(assert (=> b!1491259 m!1375477))

(push 1)

