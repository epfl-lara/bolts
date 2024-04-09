; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125840 () Bool)

(assert start!125840)

(declare-fun b!1472433 () Bool)

(declare-fun e!826365 () Bool)

(declare-fun e!826368 () Bool)

(assert (=> b!1472433 (= e!826365 e!826368)))

(declare-fun res!1000197 () Bool)

(assert (=> b!1472433 (=> (not res!1000197) (not e!826368))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12089 0))(
  ( (MissingZero!12089 (index!50747 (_ BitVec 32))) (Found!12089 (index!50748 (_ BitVec 32))) (Intermediate!12089 (undefined!12901 Bool) (index!50749 (_ BitVec 32)) (x!132327 (_ BitVec 32))) (Undefined!12089) (MissingVacant!12089 (index!50750 (_ BitVec 32))) )
))
(declare-fun lt!643535 () SeekEntryResult!12089)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1472433 (= res!1000197 (= lt!643535 (Intermediate!12089 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!643536 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((array!99091 0))(
  ( (array!99092 (arr!47826 (Array (_ BitVec 32) (_ BitVec 64))) (size!48377 (_ BitVec 32))) )
))
(declare-fun lt!643537 () array!99091)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99091 (_ BitVec 32)) SeekEntryResult!12089)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1472433 (= lt!643535 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643536 mask!2687) lt!643536 lt!643537 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99091)

(assert (=> b!1472433 (= lt!643536 (select (store (arr!47826 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1472434 () Bool)

(declare-fun res!1000200 () Bool)

(declare-fun e!826370 () Bool)

(assert (=> b!1472434 (=> (not res!1000200) (not e!826370))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1472434 (= res!1000200 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48377 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48377 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48377 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun e!826367 () Bool)

(declare-fun b!1472435 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99091 (_ BitVec 32)) SeekEntryResult!12089)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99091 (_ BitVec 32)) SeekEntryResult!12089)

(assert (=> b!1472435 (= e!826367 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643536 lt!643537 mask!2687) (seekEntryOrOpen!0 lt!643536 lt!643537 mask!2687)))))

(declare-fun b!1472436 () Bool)

(declare-fun e!826366 () Bool)

(assert (=> b!1472436 (= e!826370 e!826366)))

(declare-fun res!1000205 () Bool)

(assert (=> b!1472436 (=> (not res!1000205) (not e!826366))))

(assert (=> b!1472436 (= res!1000205 (= (select (store (arr!47826 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1472436 (= lt!643537 (array!99092 (store (arr!47826 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48377 a!2862)))))

(declare-fun b!1472437 () Bool)

(assert (=> b!1472437 (= e!826366 e!826365)))

(declare-fun res!1000196 () Bool)

(assert (=> b!1472437 (=> (not res!1000196) (not e!826365))))

(declare-fun lt!643533 () SeekEntryResult!12089)

(assert (=> b!1472437 (= res!1000196 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47826 a!2862) j!93) mask!2687) (select (arr!47826 a!2862) j!93) a!2862 mask!2687) lt!643533))))

(assert (=> b!1472437 (= lt!643533 (Intermediate!12089 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1472438 () Bool)

(declare-fun res!1000199 () Bool)

(assert (=> b!1472438 (=> (not res!1000199) (not e!826370))))

(declare-datatypes ((List!34507 0))(
  ( (Nil!34504) (Cons!34503 (h!35859 (_ BitVec 64)) (t!49208 List!34507)) )
))
(declare-fun arrayNoDuplicates!0 (array!99091 (_ BitVec 32) List!34507) Bool)

(assert (=> b!1472438 (= res!1000199 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34504))))

(declare-fun b!1472439 () Bool)

(declare-fun res!1000201 () Bool)

(assert (=> b!1472439 (=> (not res!1000201) (not e!826370))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1472439 (= res!1000201 (validKeyInArray!0 (select (arr!47826 a!2862) i!1006)))))

(declare-fun b!1472440 () Bool)

(assert (=> b!1472440 (= e!826367 (= lt!643535 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643536 lt!643537 mask!2687)))))

(declare-fun b!1472441 () Bool)

(assert (=> b!1472441 (= e!826368 (not true))))

(declare-fun e!826369 () Bool)

(assert (=> b!1472441 e!826369))

(declare-fun res!1000203 () Bool)

(assert (=> b!1472441 (=> (not res!1000203) (not e!826369))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99091 (_ BitVec 32)) Bool)

(assert (=> b!1472441 (= res!1000203 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49466 0))(
  ( (Unit!49467) )
))
(declare-fun lt!643534 () Unit!49466)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99091 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49466)

(assert (=> b!1472441 (= lt!643534 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1472442 () Bool)

(declare-fun res!1000198 () Bool)

(assert (=> b!1472442 (=> (not res!1000198) (not e!826365))))

(assert (=> b!1472442 (= res!1000198 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47826 a!2862) j!93) a!2862 mask!2687) lt!643533))))

(declare-fun b!1472443 () Bool)

(assert (=> b!1472443 (= e!826369 (or (= (select (arr!47826 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47826 a!2862) intermediateBeforeIndex!19) (select (arr!47826 a!2862) j!93))))))

(declare-fun b!1472444 () Bool)

(declare-fun res!1000202 () Bool)

(assert (=> b!1472444 (=> (not res!1000202) (not e!826369))))

(assert (=> b!1472444 (= res!1000202 (= (seekEntryOrOpen!0 (select (arr!47826 a!2862) j!93) a!2862 mask!2687) (Found!12089 j!93)))))

(declare-fun b!1472445 () Bool)

(declare-fun res!1000195 () Bool)

(assert (=> b!1472445 (=> (not res!1000195) (not e!826368))))

(assert (=> b!1472445 (= res!1000195 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!1000204 () Bool)

(assert (=> start!125840 (=> (not res!1000204) (not e!826370))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125840 (= res!1000204 (validMask!0 mask!2687))))

(assert (=> start!125840 e!826370))

(assert (=> start!125840 true))

(declare-fun array_inv!36771 (array!99091) Bool)

(assert (=> start!125840 (array_inv!36771 a!2862)))

(declare-fun b!1472446 () Bool)

(declare-fun res!1000207 () Bool)

(assert (=> b!1472446 (=> (not res!1000207) (not e!826370))))

(assert (=> b!1472446 (= res!1000207 (validKeyInArray!0 (select (arr!47826 a!2862) j!93)))))

(declare-fun b!1472447 () Bool)

(declare-fun res!1000208 () Bool)

(assert (=> b!1472447 (=> (not res!1000208) (not e!826370))))

(assert (=> b!1472447 (= res!1000208 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1472448 () Bool)

(declare-fun res!1000206 () Bool)

(assert (=> b!1472448 (=> (not res!1000206) (not e!826370))))

(assert (=> b!1472448 (= res!1000206 (and (= (size!48377 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48377 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48377 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1472449 () Bool)

(declare-fun res!1000209 () Bool)

(assert (=> b!1472449 (=> (not res!1000209) (not e!826368))))

(assert (=> b!1472449 (= res!1000209 e!826367)))

(declare-fun c!135635 () Bool)

(assert (=> b!1472449 (= c!135635 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!125840 res!1000204) b!1472448))

(assert (= (and b!1472448 res!1000206) b!1472439))

(assert (= (and b!1472439 res!1000201) b!1472446))

(assert (= (and b!1472446 res!1000207) b!1472447))

(assert (= (and b!1472447 res!1000208) b!1472438))

(assert (= (and b!1472438 res!1000199) b!1472434))

(assert (= (and b!1472434 res!1000200) b!1472436))

(assert (= (and b!1472436 res!1000205) b!1472437))

(assert (= (and b!1472437 res!1000196) b!1472442))

(assert (= (and b!1472442 res!1000198) b!1472433))

(assert (= (and b!1472433 res!1000197) b!1472449))

(assert (= (and b!1472449 c!135635) b!1472440))

(assert (= (and b!1472449 (not c!135635)) b!1472435))

(assert (= (and b!1472449 res!1000209) b!1472445))

(assert (= (and b!1472445 res!1000195) b!1472441))

(assert (= (and b!1472441 res!1000203) b!1472444))

(assert (= (and b!1472444 res!1000202) b!1472443))

(declare-fun m!1359197 () Bool)

(assert (=> b!1472441 m!1359197))

(declare-fun m!1359199 () Bool)

(assert (=> b!1472441 m!1359199))

(declare-fun m!1359201 () Bool)

(assert (=> b!1472444 m!1359201))

(assert (=> b!1472444 m!1359201))

(declare-fun m!1359203 () Bool)

(assert (=> b!1472444 m!1359203))

(declare-fun m!1359205 () Bool)

(assert (=> b!1472440 m!1359205))

(declare-fun m!1359207 () Bool)

(assert (=> b!1472435 m!1359207))

(declare-fun m!1359209 () Bool)

(assert (=> b!1472435 m!1359209))

(declare-fun m!1359211 () Bool)

(assert (=> b!1472433 m!1359211))

(assert (=> b!1472433 m!1359211))

(declare-fun m!1359213 () Bool)

(assert (=> b!1472433 m!1359213))

(declare-fun m!1359215 () Bool)

(assert (=> b!1472433 m!1359215))

(declare-fun m!1359217 () Bool)

(assert (=> b!1472433 m!1359217))

(declare-fun m!1359219 () Bool)

(assert (=> start!125840 m!1359219))

(declare-fun m!1359221 () Bool)

(assert (=> start!125840 m!1359221))

(assert (=> b!1472437 m!1359201))

(assert (=> b!1472437 m!1359201))

(declare-fun m!1359223 () Bool)

(assert (=> b!1472437 m!1359223))

(assert (=> b!1472437 m!1359223))

(assert (=> b!1472437 m!1359201))

(declare-fun m!1359225 () Bool)

(assert (=> b!1472437 m!1359225))

(declare-fun m!1359227 () Bool)

(assert (=> b!1472443 m!1359227))

(assert (=> b!1472443 m!1359201))

(declare-fun m!1359229 () Bool)

(assert (=> b!1472447 m!1359229))

(assert (=> b!1472446 m!1359201))

(assert (=> b!1472446 m!1359201))

(declare-fun m!1359231 () Bool)

(assert (=> b!1472446 m!1359231))

(assert (=> b!1472436 m!1359215))

(declare-fun m!1359233 () Bool)

(assert (=> b!1472436 m!1359233))

(declare-fun m!1359235 () Bool)

(assert (=> b!1472438 m!1359235))

(assert (=> b!1472442 m!1359201))

(assert (=> b!1472442 m!1359201))

(declare-fun m!1359237 () Bool)

(assert (=> b!1472442 m!1359237))

(declare-fun m!1359239 () Bool)

(assert (=> b!1472439 m!1359239))

(assert (=> b!1472439 m!1359239))

(declare-fun m!1359241 () Bool)

(assert (=> b!1472439 m!1359241))

(push 1)

(assert (not start!125840))

