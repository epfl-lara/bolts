; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125250 () Bool)

(assert start!125250)

(declare-fun b!1460361 () Bool)

(declare-fun e!821165 () Bool)

(declare-fun e!821162 () Bool)

(assert (=> b!1460361 (= e!821165 e!821162)))

(declare-fun res!990243 () Bool)

(assert (=> b!1460361 (=> (not res!990243) (not e!821162))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98615 0))(
  ( (array!98616 (arr!47591 (Array (_ BitVec 32) (_ BitVec 64))) (size!48142 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98615)

(assert (=> b!1460361 (= res!990243 (= (select (store (arr!47591 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!639763 () array!98615)

(assert (=> b!1460361 (= lt!639763 (array!98616 (store (arr!47591 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48142 a!2862)))))

(declare-fun b!1460362 () Bool)

(declare-fun res!990245 () Bool)

(declare-fun e!821164 () Bool)

(assert (=> b!1460362 (=> (not res!990245) (not e!821164))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1460362 (= res!990245 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!990244 () Bool)

(assert (=> start!125250 (=> (not res!990244) (not e!821165))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125250 (= res!990244 (validMask!0 mask!2687))))

(assert (=> start!125250 e!821165))

(assert (=> start!125250 true))

(declare-fun array_inv!36536 (array!98615) Bool)

(assert (=> start!125250 (array_inv!36536 a!2862)))

(declare-fun b!1460363 () Bool)

(declare-fun res!990246 () Bool)

(assert (=> b!1460363 (=> (not res!990246) (not e!821165))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98615 (_ BitVec 32)) Bool)

(assert (=> b!1460363 (= res!990246 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1460364 () Bool)

(declare-fun res!990242 () Bool)

(assert (=> b!1460364 (=> (not res!990242) (not e!821165))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1460364 (= res!990242 (validKeyInArray!0 (select (arr!47591 a!2862) j!93)))))

(declare-fun b!1460365 () Bool)

(declare-fun res!990255 () Bool)

(assert (=> b!1460365 (=> (not res!990255) (not e!821164))))

(declare-fun e!821160 () Bool)

(assert (=> b!1460365 (= res!990255 e!821160)))

(declare-fun c!134573 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1460365 (= c!134573 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1460366 () Bool)

(declare-fun res!990253 () Bool)

(assert (=> b!1460366 (=> (not res!990253) (not e!821165))))

(assert (=> b!1460366 (= res!990253 (and (= (size!48142 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48142 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48142 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1460367 () Bool)

(declare-fun e!821161 () Bool)

(assert (=> b!1460367 (= e!821162 e!821161)))

(declare-fun res!990251 () Bool)

(assert (=> b!1460367 (=> (not res!990251) (not e!821161))))

(declare-datatypes ((SeekEntryResult!11866 0))(
  ( (MissingZero!11866 (index!49855 (_ BitVec 32))) (Found!11866 (index!49856 (_ BitVec 32))) (Intermediate!11866 (undefined!12678 Bool) (index!49857 (_ BitVec 32)) (x!131462 (_ BitVec 32))) (Undefined!11866) (MissingVacant!11866 (index!49858 (_ BitVec 32))) )
))
(declare-fun lt!639764 () SeekEntryResult!11866)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98615 (_ BitVec 32)) SeekEntryResult!11866)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1460367 (= res!990251 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47591 a!2862) j!93) mask!2687) (select (arr!47591 a!2862) j!93) a!2862 mask!2687) lt!639764))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1460367 (= lt!639764 (Intermediate!11866 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1460368 () Bool)

(declare-fun res!990248 () Bool)

(assert (=> b!1460368 (=> (not res!990248) (not e!821165))))

(declare-datatypes ((List!34272 0))(
  ( (Nil!34269) (Cons!34268 (h!35618 (_ BitVec 64)) (t!48973 List!34272)) )
))
(declare-fun arrayNoDuplicates!0 (array!98615 (_ BitVec 32) List!34272) Bool)

(assert (=> b!1460368 (= res!990248 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34269))))

(declare-fun b!1460369 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!639766 () SeekEntryResult!11866)

(declare-fun lt!639765 () (_ BitVec 64))

(assert (=> b!1460369 (= e!821160 (= lt!639766 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639765 lt!639763 mask!2687)))))

(declare-fun b!1460370 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98615 (_ BitVec 32)) SeekEntryResult!11866)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98615 (_ BitVec 32)) SeekEntryResult!11866)

(assert (=> b!1460370 (= e!821160 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639765 lt!639763 mask!2687) (seekEntryOrOpen!0 lt!639765 lt!639763 mask!2687)))))

(declare-fun b!1460371 () Bool)

(declare-fun res!990254 () Bool)

(assert (=> b!1460371 (=> (not res!990254) (not e!821165))))

(assert (=> b!1460371 (= res!990254 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48142 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48142 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48142 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1460372 () Bool)

(declare-fun res!990247 () Bool)

(assert (=> b!1460372 (=> (not res!990247) (not e!821161))))

(assert (=> b!1460372 (= res!990247 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47591 a!2862) j!93) a!2862 mask!2687) lt!639764))))

(declare-fun e!821163 () Bool)

(declare-fun b!1460373 () Bool)

(assert (=> b!1460373 (= e!821163 (or (= (select (arr!47591 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47591 a!2862) intermediateBeforeIndex!19) (select (arr!47591 a!2862) j!93))))))

(declare-fun b!1460374 () Bool)

(assert (=> b!1460374 (= e!821164 (not (or (and (= (select (arr!47591 a!2862) index!646) (select (store (arr!47591 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47591 a!2862) index!646) (select (arr!47591 a!2862) j!93))) (= (select (arr!47591 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19) (bvsge mask!2687 #b00000000000000000000000000000000))))))

(assert (=> b!1460374 e!821163))

(declare-fun res!990250 () Bool)

(assert (=> b!1460374 (=> (not res!990250) (not e!821163))))

(assert (=> b!1460374 (= res!990250 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49176 0))(
  ( (Unit!49177) )
))
(declare-fun lt!639762 () Unit!49176)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98615 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49176)

(assert (=> b!1460374 (= lt!639762 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1460375 () Bool)

(assert (=> b!1460375 (= e!821161 e!821164)))

(declare-fun res!990249 () Bool)

(assert (=> b!1460375 (=> (not res!990249) (not e!821164))))

(assert (=> b!1460375 (= res!990249 (= lt!639766 (Intermediate!11866 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1460375 (= lt!639766 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639765 mask!2687) lt!639765 lt!639763 mask!2687))))

(assert (=> b!1460375 (= lt!639765 (select (store (arr!47591 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1460376 () Bool)

(declare-fun res!990252 () Bool)

(assert (=> b!1460376 (=> (not res!990252) (not e!821163))))

(assert (=> b!1460376 (= res!990252 (= (seekEntryOrOpen!0 (select (arr!47591 a!2862) j!93) a!2862 mask!2687) (Found!11866 j!93)))))

(declare-fun b!1460377 () Bool)

(declare-fun res!990241 () Bool)

(assert (=> b!1460377 (=> (not res!990241) (not e!821165))))

(assert (=> b!1460377 (= res!990241 (validKeyInArray!0 (select (arr!47591 a!2862) i!1006)))))

(assert (= (and start!125250 res!990244) b!1460366))

(assert (= (and b!1460366 res!990253) b!1460377))

(assert (= (and b!1460377 res!990241) b!1460364))

(assert (= (and b!1460364 res!990242) b!1460363))

(assert (= (and b!1460363 res!990246) b!1460368))

(assert (= (and b!1460368 res!990248) b!1460371))

(assert (= (and b!1460371 res!990254) b!1460361))

(assert (= (and b!1460361 res!990243) b!1460367))

(assert (= (and b!1460367 res!990251) b!1460372))

(assert (= (and b!1460372 res!990247) b!1460375))

(assert (= (and b!1460375 res!990249) b!1460365))

(assert (= (and b!1460365 c!134573) b!1460369))

(assert (= (and b!1460365 (not c!134573)) b!1460370))

(assert (= (and b!1460365 res!990255) b!1460362))

(assert (= (and b!1460362 res!990245) b!1460374))

(assert (= (and b!1460374 res!990250) b!1460376))

(assert (= (and b!1460376 res!990252) b!1460373))

(declare-fun m!1348097 () Bool)

(assert (=> b!1460364 m!1348097))

(assert (=> b!1460364 m!1348097))

(declare-fun m!1348099 () Bool)

(assert (=> b!1460364 m!1348099))

(declare-fun m!1348101 () Bool)

(assert (=> b!1460363 m!1348101))

(declare-fun m!1348103 () Bool)

(assert (=> b!1460377 m!1348103))

(assert (=> b!1460377 m!1348103))

(declare-fun m!1348105 () Bool)

(assert (=> b!1460377 m!1348105))

(assert (=> b!1460372 m!1348097))

(assert (=> b!1460372 m!1348097))

(declare-fun m!1348107 () Bool)

(assert (=> b!1460372 m!1348107))

(declare-fun m!1348109 () Bool)

(assert (=> start!125250 m!1348109))

(declare-fun m!1348111 () Bool)

(assert (=> start!125250 m!1348111))

(declare-fun m!1348113 () Bool)

(assert (=> b!1460361 m!1348113))

(declare-fun m!1348115 () Bool)

(assert (=> b!1460361 m!1348115))

(declare-fun m!1348117 () Bool)

(assert (=> b!1460370 m!1348117))

(declare-fun m!1348119 () Bool)

(assert (=> b!1460370 m!1348119))

(declare-fun m!1348121 () Bool)

(assert (=> b!1460374 m!1348121))

(assert (=> b!1460374 m!1348113))

(declare-fun m!1348123 () Bool)

(assert (=> b!1460374 m!1348123))

(declare-fun m!1348125 () Bool)

(assert (=> b!1460374 m!1348125))

(declare-fun m!1348127 () Bool)

(assert (=> b!1460374 m!1348127))

(assert (=> b!1460374 m!1348097))

(declare-fun m!1348129 () Bool)

(assert (=> b!1460373 m!1348129))

(assert (=> b!1460373 m!1348097))

(assert (=> b!1460367 m!1348097))

(assert (=> b!1460367 m!1348097))

(declare-fun m!1348131 () Bool)

(assert (=> b!1460367 m!1348131))

(assert (=> b!1460367 m!1348131))

(assert (=> b!1460367 m!1348097))

(declare-fun m!1348133 () Bool)

(assert (=> b!1460367 m!1348133))

(declare-fun m!1348135 () Bool)

(assert (=> b!1460369 m!1348135))

(assert (=> b!1460376 m!1348097))

(assert (=> b!1460376 m!1348097))

(declare-fun m!1348137 () Bool)

(assert (=> b!1460376 m!1348137))

(declare-fun m!1348139 () Bool)

(assert (=> b!1460368 m!1348139))

(declare-fun m!1348141 () Bool)

(assert (=> b!1460375 m!1348141))

(assert (=> b!1460375 m!1348141))

(declare-fun m!1348143 () Bool)

(assert (=> b!1460375 m!1348143))

(assert (=> b!1460375 m!1348113))

(declare-fun m!1348145 () Bool)

(assert (=> b!1460375 m!1348145))

(check-sat (not b!1460369) (not b!1460375) (not b!1460374) (not b!1460377) (not b!1460368) (not b!1460370) (not start!125250) (not b!1460363) (not b!1460376) (not b!1460367) (not b!1460364) (not b!1460372))
(check-sat)
