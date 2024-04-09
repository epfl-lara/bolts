; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126600 () Bool)

(assert start!126600)

(declare-fun b!1485281 () Bool)

(declare-fun res!1010079 () Bool)

(declare-fun e!832701 () Bool)

(assert (=> b!1485281 (=> (not res!1010079) (not e!832701))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12274 0))(
  ( (MissingZero!12274 (index!51487 (_ BitVec 32))) (Found!12274 (index!51488 (_ BitVec 32))) (Intermediate!12274 (undefined!13086 Bool) (index!51489 (_ BitVec 32)) (x!133065 (_ BitVec 32))) (Undefined!12274) (MissingVacant!12274 (index!51490 (_ BitVec 32))) )
))
(declare-fun lt!648011 () SeekEntryResult!12274)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99479 0))(
  ( (array!99480 (arr!48011 (Array (_ BitVec 32) (_ BitVec 64))) (size!48562 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99479)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99479 (_ BitVec 32)) SeekEntryResult!12274)

(assert (=> b!1485281 (= res!1010079 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48011 a!2862) j!93) a!2862 mask!2687) lt!648011))))

(declare-fun b!1485282 () Bool)

(declare-fun res!1010090 () Bool)

(declare-fun e!832704 () Bool)

(assert (=> b!1485282 (=> (not res!1010090) (not e!832704))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1485282 (= res!1010090 (or (= (select (arr!48011 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48011 a!2862) intermediateBeforeIndex!19) (select (arr!48011 a!2862) j!93))))))

(declare-fun b!1485283 () Bool)

(declare-fun e!832702 () Bool)

(assert (=> b!1485283 (= e!832702 true)))

(declare-fun lt!648013 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1485283 (= lt!648013 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun res!1010080 () Bool)

(declare-fun e!832706 () Bool)

(assert (=> start!126600 (=> (not res!1010080) (not e!832706))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126600 (= res!1010080 (validMask!0 mask!2687))))

(assert (=> start!126600 e!832706))

(assert (=> start!126600 true))

(declare-fun array_inv!36956 (array!99479) Bool)

(assert (=> start!126600 (array_inv!36956 a!2862)))

(declare-fun b!1485284 () Bool)

(declare-fun res!1010093 () Bool)

(assert (=> b!1485284 (=> (not res!1010093) (not e!832706))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1485284 (= res!1010093 (validKeyInArray!0 (select (arr!48011 a!2862) i!1006)))))

(declare-fun b!1485285 () Bool)

(declare-fun e!832705 () Bool)

(assert (=> b!1485285 (= e!832701 e!832705)))

(declare-fun res!1010082 () Bool)

(assert (=> b!1485285 (=> (not res!1010082) (not e!832705))))

(declare-fun lt!648008 () SeekEntryResult!12274)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1485285 (= res!1010082 (= lt!648008 (Intermediate!12274 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!648012 () (_ BitVec 64))

(declare-fun lt!648010 () array!99479)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1485285 (= lt!648008 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648012 mask!2687) lt!648012 lt!648010 mask!2687))))

(assert (=> b!1485285 (= lt!648012 (select (store (arr!48011 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1485286 () Bool)

(declare-fun e!832703 () Bool)

(assert (=> b!1485286 (= e!832703 e!832701)))

(declare-fun res!1010092 () Bool)

(assert (=> b!1485286 (=> (not res!1010092) (not e!832701))))

(assert (=> b!1485286 (= res!1010092 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48011 a!2862) j!93) mask!2687) (select (arr!48011 a!2862) j!93) a!2862 mask!2687) lt!648011))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1485286 (= lt!648011 (Intermediate!12274 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1485287 () Bool)

(declare-fun res!1010081 () Bool)

(assert (=> b!1485287 (=> (not res!1010081) (not e!832706))))

(declare-datatypes ((List!34692 0))(
  ( (Nil!34689) (Cons!34688 (h!36062 (_ BitVec 64)) (t!49393 List!34692)) )
))
(declare-fun arrayNoDuplicates!0 (array!99479 (_ BitVec 32) List!34692) Bool)

(assert (=> b!1485287 (= res!1010081 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34689))))

(declare-fun b!1485288 () Bool)

(declare-fun res!1010085 () Bool)

(assert (=> b!1485288 (=> (not res!1010085) (not e!832706))))

(assert (=> b!1485288 (= res!1010085 (and (= (size!48562 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48562 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48562 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1485289 () Bool)

(declare-fun res!1010083 () Bool)

(assert (=> b!1485289 (=> (not res!1010083) (not e!832706))))

(assert (=> b!1485289 (= res!1010083 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48562 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48562 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48562 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1485290 () Bool)

(declare-fun res!1010096 () Bool)

(assert (=> b!1485290 (=> (not res!1010096) (not e!832705))))

(declare-fun e!832707 () Bool)

(assert (=> b!1485290 (= res!1010096 e!832707)))

(declare-fun c!137126 () Bool)

(assert (=> b!1485290 (= c!137126 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1485291 () Bool)

(declare-fun e!832708 () Bool)

(declare-fun e!832700 () Bool)

(assert (=> b!1485291 (= e!832708 e!832700)))

(declare-fun res!1010084 () Bool)

(assert (=> b!1485291 (=> (not res!1010084) (not e!832700))))

(declare-fun lt!648007 () (_ BitVec 64))

(assert (=> b!1485291 (= res!1010084 (and (= index!646 intermediateAfterIndex!19) (= lt!648007 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1485292 () Bool)

(declare-fun res!1010088 () Bool)

(assert (=> b!1485292 (=> (not res!1010088) (not e!832704))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99479 (_ BitVec 32)) SeekEntryResult!12274)

(assert (=> b!1485292 (= res!1010088 (= (seekEntryOrOpen!0 (select (arr!48011 a!2862) j!93) a!2862 mask!2687) (Found!12274 j!93)))))

(declare-fun b!1485293 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99479 (_ BitVec 32)) SeekEntryResult!12274)

(assert (=> b!1485293 (= e!832700 (= (seekEntryOrOpen!0 lt!648012 lt!648010 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648012 lt!648010 mask!2687)))))

(declare-fun b!1485294 () Bool)

(assert (=> b!1485294 (= e!832705 (not e!832702))))

(declare-fun res!1010086 () Bool)

(assert (=> b!1485294 (=> res!1010086 e!832702)))

(assert (=> b!1485294 (= res!1010086 (or (and (= (select (arr!48011 a!2862) index!646) (select (store (arr!48011 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48011 a!2862) index!646) (select (arr!48011 a!2862) j!93))) (= (select (arr!48011 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1485294 e!832704))

(declare-fun res!1010091 () Bool)

(assert (=> b!1485294 (=> (not res!1010091) (not e!832704))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99479 (_ BitVec 32)) Bool)

(assert (=> b!1485294 (= res!1010091 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49836 0))(
  ( (Unit!49837) )
))
(declare-fun lt!648009 () Unit!49836)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99479 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49836)

(assert (=> b!1485294 (= lt!648009 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1485295 () Bool)

(assert (=> b!1485295 (= e!832706 e!832703)))

(declare-fun res!1010095 () Bool)

(assert (=> b!1485295 (=> (not res!1010095) (not e!832703))))

(assert (=> b!1485295 (= res!1010095 (= (select (store (arr!48011 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1485295 (= lt!648010 (array!99480 (store (arr!48011 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48562 a!2862)))))

(declare-fun b!1485296 () Bool)

(declare-fun res!1010097 () Bool)

(assert (=> b!1485296 (=> (not res!1010097) (not e!832706))))

(assert (=> b!1485296 (= res!1010097 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1485297 () Bool)

(declare-fun res!1010094 () Bool)

(assert (=> b!1485297 (=> (not res!1010094) (not e!832705))))

(assert (=> b!1485297 (= res!1010094 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1485298 () Bool)

(assert (=> b!1485298 (= e!832707 (= lt!648008 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648012 lt!648010 mask!2687)))))

(declare-fun b!1485299 () Bool)

(declare-fun res!1010087 () Bool)

(assert (=> b!1485299 (=> (not res!1010087) (not e!832706))))

(assert (=> b!1485299 (= res!1010087 (validKeyInArray!0 (select (arr!48011 a!2862) j!93)))))

(declare-fun b!1485300 () Bool)

(assert (=> b!1485300 (= e!832707 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648012 lt!648010 mask!2687) (seekEntryOrOpen!0 lt!648012 lt!648010 mask!2687)))))

(declare-fun b!1485301 () Bool)

(assert (=> b!1485301 (= e!832704 e!832708)))

(declare-fun res!1010089 () Bool)

(assert (=> b!1485301 (=> res!1010089 e!832708)))

(assert (=> b!1485301 (= res!1010089 (or (and (= (select (arr!48011 a!2862) index!646) lt!648007) (= (select (arr!48011 a!2862) index!646) (select (arr!48011 a!2862) j!93))) (= (select (arr!48011 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1485301 (= lt!648007 (select (store (arr!48011 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(assert (= (and start!126600 res!1010080) b!1485288))

(assert (= (and b!1485288 res!1010085) b!1485284))

(assert (= (and b!1485284 res!1010093) b!1485299))

(assert (= (and b!1485299 res!1010087) b!1485296))

(assert (= (and b!1485296 res!1010097) b!1485287))

(assert (= (and b!1485287 res!1010081) b!1485289))

(assert (= (and b!1485289 res!1010083) b!1485295))

(assert (= (and b!1485295 res!1010095) b!1485286))

(assert (= (and b!1485286 res!1010092) b!1485281))

(assert (= (and b!1485281 res!1010079) b!1485285))

(assert (= (and b!1485285 res!1010082) b!1485290))

(assert (= (and b!1485290 c!137126) b!1485298))

(assert (= (and b!1485290 (not c!137126)) b!1485300))

(assert (= (and b!1485290 res!1010096) b!1485297))

(assert (= (and b!1485297 res!1010094) b!1485294))

(assert (= (and b!1485294 res!1010091) b!1485292))

(assert (= (and b!1485292 res!1010088) b!1485282))

(assert (= (and b!1485282 res!1010090) b!1485301))

(assert (= (and b!1485301 (not res!1010089)) b!1485291))

(assert (= (and b!1485291 res!1010084) b!1485293))

(assert (= (and b!1485294 (not res!1010086)) b!1485283))

(declare-fun m!1370485 () Bool)

(assert (=> b!1485282 m!1370485))

(declare-fun m!1370487 () Bool)

(assert (=> b!1485282 m!1370487))

(declare-fun m!1370489 () Bool)

(assert (=> b!1485287 m!1370489))

(declare-fun m!1370491 () Bool)

(assert (=> b!1485293 m!1370491))

(declare-fun m!1370493 () Bool)

(assert (=> b!1485293 m!1370493))

(declare-fun m!1370495 () Bool)

(assert (=> b!1485285 m!1370495))

(assert (=> b!1485285 m!1370495))

(declare-fun m!1370497 () Bool)

(assert (=> b!1485285 m!1370497))

(declare-fun m!1370499 () Bool)

(assert (=> b!1485285 m!1370499))

(declare-fun m!1370501 () Bool)

(assert (=> b!1485285 m!1370501))

(declare-fun m!1370503 () Bool)

(assert (=> start!126600 m!1370503))

(declare-fun m!1370505 () Bool)

(assert (=> start!126600 m!1370505))

(assert (=> b!1485295 m!1370499))

(declare-fun m!1370507 () Bool)

(assert (=> b!1485295 m!1370507))

(assert (=> b!1485300 m!1370493))

(assert (=> b!1485300 m!1370491))

(assert (=> b!1485292 m!1370487))

(assert (=> b!1485292 m!1370487))

(declare-fun m!1370509 () Bool)

(assert (=> b!1485292 m!1370509))

(assert (=> b!1485281 m!1370487))

(assert (=> b!1485281 m!1370487))

(declare-fun m!1370511 () Bool)

(assert (=> b!1485281 m!1370511))

(assert (=> b!1485299 m!1370487))

(assert (=> b!1485299 m!1370487))

(declare-fun m!1370513 () Bool)

(assert (=> b!1485299 m!1370513))

(declare-fun m!1370515 () Bool)

(assert (=> b!1485284 m!1370515))

(assert (=> b!1485284 m!1370515))

(declare-fun m!1370517 () Bool)

(assert (=> b!1485284 m!1370517))

(declare-fun m!1370519 () Bool)

(assert (=> b!1485301 m!1370519))

(assert (=> b!1485301 m!1370487))

(assert (=> b!1485301 m!1370499))

(declare-fun m!1370521 () Bool)

(assert (=> b!1485301 m!1370521))

(declare-fun m!1370523 () Bool)

(assert (=> b!1485283 m!1370523))

(declare-fun m!1370525 () Bool)

(assert (=> b!1485294 m!1370525))

(assert (=> b!1485294 m!1370499))

(assert (=> b!1485294 m!1370521))

(assert (=> b!1485294 m!1370519))

(declare-fun m!1370527 () Bool)

(assert (=> b!1485294 m!1370527))

(assert (=> b!1485294 m!1370487))

(assert (=> b!1485286 m!1370487))

(assert (=> b!1485286 m!1370487))

(declare-fun m!1370529 () Bool)

(assert (=> b!1485286 m!1370529))

(assert (=> b!1485286 m!1370529))

(assert (=> b!1485286 m!1370487))

(declare-fun m!1370531 () Bool)

(assert (=> b!1485286 m!1370531))

(declare-fun m!1370533 () Bool)

(assert (=> b!1485296 m!1370533))

(declare-fun m!1370535 () Bool)

(assert (=> b!1485298 m!1370535))

(check-sat (not b!1485298) (not b!1485283) (not b!1485281) (not b!1485285) (not b!1485293) (not b!1485284) (not b!1485300) (not b!1485299) (not start!126600) (not b!1485292) (not b!1485287) (not b!1485296) (not b!1485286) (not b!1485294))
(check-sat)
