; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124856 () Bool)

(assert start!124856)

(declare-fun b!1448341 () Bool)

(declare-fun e!815687 () Bool)

(assert (=> b!1448341 (= e!815687 true)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98221 0))(
  ( (array!98222 (arr!47394 (Array (_ BitVec 32) (_ BitVec 64))) (size!47945 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98221)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11669 0))(
  ( (MissingZero!11669 (index!49067 (_ BitVec 32))) (Found!11669 (index!49068 (_ BitVec 32))) (Intermediate!11669 (undefined!12481 Bool) (index!49069 (_ BitVec 32)) (x!130737 (_ BitVec 32))) (Undefined!11669) (MissingVacant!11669 (index!49070 (_ BitVec 32))) )
))
(declare-fun lt!635470 () SeekEntryResult!11669)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98221 (_ BitVec 32)) SeekEntryResult!11669)

(assert (=> b!1448341 (= lt!635470 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47394 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1448342 () Bool)

(declare-fun res!980013 () Bool)

(declare-fun e!815689 () Bool)

(assert (=> b!1448342 (=> (not res!980013) (not e!815689))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1448342 (= res!980013 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1448343 () Bool)

(declare-fun res!980009 () Bool)

(declare-fun e!815694 () Bool)

(assert (=> b!1448343 (=> (not res!980009) (not e!815694))))

(declare-fun lt!635468 () SeekEntryResult!11669)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98221 (_ BitVec 32)) SeekEntryResult!11669)

(assert (=> b!1448343 (= res!980009 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47394 a!2862) j!93) a!2862 mask!2687) lt!635468))))

(declare-fun res!980012 () Bool)

(declare-fun e!815693 () Bool)

(assert (=> start!124856 (=> (not res!980012) (not e!815693))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124856 (= res!980012 (validMask!0 mask!2687))))

(assert (=> start!124856 e!815693))

(assert (=> start!124856 true))

(declare-fun array_inv!36339 (array!98221) Bool)

(assert (=> start!124856 (array_inv!36339 a!2862)))

(declare-fun b!1448344 () Bool)

(declare-fun e!815696 () Bool)

(declare-fun e!815690 () Bool)

(assert (=> b!1448344 (= e!815696 e!815690)))

(declare-fun res!979998 () Bool)

(assert (=> b!1448344 (=> (not res!979998) (not e!815690))))

(declare-fun lt!635464 () SeekEntryResult!11669)

(assert (=> b!1448344 (= res!979998 (= lt!635464 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47394 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1448345 () Bool)

(declare-fun lt!635469 () array!98221)

(declare-fun lt!635465 () (_ BitVec 64))

(declare-fun e!815695 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98221 (_ BitVec 32)) SeekEntryResult!11669)

(assert (=> b!1448345 (= e!815695 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635465 lt!635469 mask!2687) (seekEntryOrOpen!0 lt!635465 lt!635469 mask!2687)))))

(declare-fun lt!635467 () SeekEntryResult!11669)

(declare-fun b!1448346 () Bool)

(assert (=> b!1448346 (= e!815695 (= lt!635467 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635465 lt!635469 mask!2687)))))

(declare-fun b!1448347 () Bool)

(declare-fun res!980008 () Bool)

(assert (=> b!1448347 (=> (not res!980008) (not e!815693))))

(assert (=> b!1448347 (= res!980008 (and (= (size!47945 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47945 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47945 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1448348 () Bool)

(declare-fun e!815691 () Bool)

(assert (=> b!1448348 (= e!815691 e!815696)))

(declare-fun res!980002 () Bool)

(assert (=> b!1448348 (=> res!980002 e!815696)))

(assert (=> b!1448348 (= res!980002 (or (and (= (select (arr!47394 a!2862) index!646) (select (store (arr!47394 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47394 a!2862) index!646) (select (arr!47394 a!2862) j!93))) (not (= (select (arr!47394 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1448349 () Bool)

(declare-fun res!980006 () Bool)

(assert (=> b!1448349 (=> (not res!980006) (not e!815693))))

(declare-datatypes ((List!34075 0))(
  ( (Nil!34072) (Cons!34071 (h!35421 (_ BitVec 64)) (t!48776 List!34075)) )
))
(declare-fun arrayNoDuplicates!0 (array!98221 (_ BitVec 32) List!34075) Bool)

(assert (=> b!1448349 (= res!980006 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34072))))

(declare-fun b!1448350 () Bool)

(declare-fun e!815692 () Bool)

(assert (=> b!1448350 (= e!815693 e!815692)))

(declare-fun res!980001 () Bool)

(assert (=> b!1448350 (=> (not res!980001) (not e!815692))))

(assert (=> b!1448350 (= res!980001 (= (select (store (arr!47394 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1448350 (= lt!635469 (array!98222 (store (arr!47394 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47945 a!2862)))))

(declare-fun b!1448351 () Bool)

(declare-fun res!980000 () Bool)

(assert (=> b!1448351 (=> (not res!980000) (not e!815693))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1448351 (= res!980000 (validKeyInArray!0 (select (arr!47394 a!2862) i!1006)))))

(declare-fun b!1448352 () Bool)

(declare-fun res!980007 () Bool)

(assert (=> b!1448352 (=> (not res!980007) (not e!815693))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1448352 (= res!980007 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47945 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47945 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47945 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1448353 () Bool)

(declare-fun res!979997 () Bool)

(assert (=> b!1448353 (=> (not res!979997) (not e!815693))))

(assert (=> b!1448353 (= res!979997 (validKeyInArray!0 (select (arr!47394 a!2862) j!93)))))

(declare-fun b!1448354 () Bool)

(assert (=> b!1448354 (= e!815689 (not e!815687))))

(declare-fun res!980003 () Bool)

(assert (=> b!1448354 (=> res!980003 e!815687)))

(assert (=> b!1448354 (= res!980003 (or (and (= (select (arr!47394 a!2862) index!646) (select (store (arr!47394 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47394 a!2862) index!646) (select (arr!47394 a!2862) j!93))) (not (= (select (arr!47394 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47394 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1448354 e!815691))

(declare-fun res!980005 () Bool)

(assert (=> b!1448354 (=> (not res!980005) (not e!815691))))

(assert (=> b!1448354 (= res!980005 (and (= lt!635464 (Found!11669 j!93)) (or (= (select (arr!47394 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47394 a!2862) intermediateBeforeIndex!19) (select (arr!47394 a!2862) j!93)))))))

(assert (=> b!1448354 (= lt!635464 (seekEntryOrOpen!0 (select (arr!47394 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98221 (_ BitVec 32)) Bool)

(assert (=> b!1448354 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48782 0))(
  ( (Unit!48783) )
))
(declare-fun lt!635466 () Unit!48782)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98221 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48782)

(assert (=> b!1448354 (= lt!635466 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1448355 () Bool)

(assert (=> b!1448355 (= e!815692 e!815694)))

(declare-fun res!980011 () Bool)

(assert (=> b!1448355 (=> (not res!980011) (not e!815694))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1448355 (= res!980011 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47394 a!2862) j!93) mask!2687) (select (arr!47394 a!2862) j!93) a!2862 mask!2687) lt!635468))))

(assert (=> b!1448355 (= lt!635468 (Intermediate!11669 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1448356 () Bool)

(assert (=> b!1448356 (= e!815694 e!815689)))

(declare-fun res!980004 () Bool)

(assert (=> b!1448356 (=> (not res!980004) (not e!815689))))

(assert (=> b!1448356 (= res!980004 (= lt!635467 (Intermediate!11669 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1448356 (= lt!635467 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635465 mask!2687) lt!635465 lt!635469 mask!2687))))

(assert (=> b!1448356 (= lt!635465 (select (store (arr!47394 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1448357 () Bool)

(assert (=> b!1448357 (= e!815690 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1448358 () Bool)

(declare-fun res!980010 () Bool)

(assert (=> b!1448358 (=> (not res!980010) (not e!815689))))

(assert (=> b!1448358 (= res!980010 e!815695)))

(declare-fun c!133685 () Bool)

(assert (=> b!1448358 (= c!133685 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1448359 () Bool)

(declare-fun res!979999 () Bool)

(assert (=> b!1448359 (=> (not res!979999) (not e!815693))))

(assert (=> b!1448359 (= res!979999 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124856 res!980012) b!1448347))

(assert (= (and b!1448347 res!980008) b!1448351))

(assert (= (and b!1448351 res!980000) b!1448353))

(assert (= (and b!1448353 res!979997) b!1448359))

(assert (= (and b!1448359 res!979999) b!1448349))

(assert (= (and b!1448349 res!980006) b!1448352))

(assert (= (and b!1448352 res!980007) b!1448350))

(assert (= (and b!1448350 res!980001) b!1448355))

(assert (= (and b!1448355 res!980011) b!1448343))

(assert (= (and b!1448343 res!980009) b!1448356))

(assert (= (and b!1448356 res!980004) b!1448358))

(assert (= (and b!1448358 c!133685) b!1448346))

(assert (= (and b!1448358 (not c!133685)) b!1448345))

(assert (= (and b!1448358 res!980010) b!1448342))

(assert (= (and b!1448342 res!980013) b!1448354))

(assert (= (and b!1448354 res!980005) b!1448348))

(assert (= (and b!1448348 (not res!980002)) b!1448344))

(assert (= (and b!1448344 res!979998) b!1448357))

(assert (= (and b!1448354 (not res!980003)) b!1448341))

(declare-fun m!1337163 () Bool)

(assert (=> b!1448359 m!1337163))

(declare-fun m!1337165 () Bool)

(assert (=> b!1448345 m!1337165))

(declare-fun m!1337167 () Bool)

(assert (=> b!1448345 m!1337167))

(declare-fun m!1337169 () Bool)

(assert (=> b!1448355 m!1337169))

(assert (=> b!1448355 m!1337169))

(declare-fun m!1337171 () Bool)

(assert (=> b!1448355 m!1337171))

(assert (=> b!1448355 m!1337171))

(assert (=> b!1448355 m!1337169))

(declare-fun m!1337173 () Bool)

(assert (=> b!1448355 m!1337173))

(declare-fun m!1337175 () Bool)

(assert (=> b!1448349 m!1337175))

(declare-fun m!1337177 () Bool)

(assert (=> b!1448354 m!1337177))

(declare-fun m!1337179 () Bool)

(assert (=> b!1448354 m!1337179))

(declare-fun m!1337181 () Bool)

(assert (=> b!1448354 m!1337181))

(declare-fun m!1337183 () Bool)

(assert (=> b!1448354 m!1337183))

(declare-fun m!1337185 () Bool)

(assert (=> b!1448354 m!1337185))

(assert (=> b!1448354 m!1337169))

(declare-fun m!1337187 () Bool)

(assert (=> b!1448354 m!1337187))

(declare-fun m!1337189 () Bool)

(assert (=> b!1448354 m!1337189))

(assert (=> b!1448354 m!1337169))

(assert (=> b!1448341 m!1337169))

(assert (=> b!1448341 m!1337169))

(declare-fun m!1337191 () Bool)

(assert (=> b!1448341 m!1337191))

(declare-fun m!1337193 () Bool)

(assert (=> b!1448346 m!1337193))

(assert (=> b!1448344 m!1337169))

(assert (=> b!1448344 m!1337169))

(declare-fun m!1337195 () Bool)

(assert (=> b!1448344 m!1337195))

(declare-fun m!1337197 () Bool)

(assert (=> start!124856 m!1337197))

(declare-fun m!1337199 () Bool)

(assert (=> start!124856 m!1337199))

(assert (=> b!1448343 m!1337169))

(assert (=> b!1448343 m!1337169))

(declare-fun m!1337201 () Bool)

(assert (=> b!1448343 m!1337201))

(assert (=> b!1448348 m!1337185))

(assert (=> b!1448348 m!1337179))

(assert (=> b!1448348 m!1337183))

(assert (=> b!1448348 m!1337169))

(declare-fun m!1337203 () Bool)

(assert (=> b!1448351 m!1337203))

(assert (=> b!1448351 m!1337203))

(declare-fun m!1337205 () Bool)

(assert (=> b!1448351 m!1337205))

(declare-fun m!1337207 () Bool)

(assert (=> b!1448356 m!1337207))

(assert (=> b!1448356 m!1337207))

(declare-fun m!1337209 () Bool)

(assert (=> b!1448356 m!1337209))

(assert (=> b!1448356 m!1337179))

(declare-fun m!1337211 () Bool)

(assert (=> b!1448356 m!1337211))

(assert (=> b!1448353 m!1337169))

(assert (=> b!1448353 m!1337169))

(declare-fun m!1337213 () Bool)

(assert (=> b!1448353 m!1337213))

(assert (=> b!1448350 m!1337179))

(declare-fun m!1337215 () Bool)

(assert (=> b!1448350 m!1337215))

(push 1)

