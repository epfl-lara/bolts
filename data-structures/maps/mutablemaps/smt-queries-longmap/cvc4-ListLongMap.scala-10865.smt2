; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127412 () Bool)

(assert start!127412)

(declare-fun b!1497166 () Bool)

(declare-fun e!838479 () Bool)

(declare-fun e!838482 () Bool)

(assert (=> b!1497166 (= e!838479 e!838482)))

(declare-fun res!1018447 () Bool)

(assert (=> b!1497166 (=> (not res!1018447) (not e!838482))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99787 0))(
  ( (array!99788 (arr!48153 (Array (_ BitVec 32) (_ BitVec 64))) (size!48704 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99787)

(assert (=> b!1497166 (= res!1018447 (= (select (store (arr!48153 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!652321 () array!99787)

(assert (=> b!1497166 (= lt!652321 (array!99788 (store (arr!48153 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48704 a!2862)))))

(declare-fun b!1497167 () Bool)

(declare-fun e!838477 () Bool)

(assert (=> b!1497167 (= e!838477 true)))

(declare-fun lt!652322 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12416 0))(
  ( (MissingZero!12416 (index!52055 (_ BitVec 32))) (Found!12416 (index!52056 (_ BitVec 32))) (Intermediate!12416 (undefined!13228 Bool) (index!52057 (_ BitVec 32)) (x!133679 (_ BitVec 32))) (Undefined!12416) (MissingVacant!12416 (index!52058 (_ BitVec 32))) )
))
(declare-fun lt!652318 () SeekEntryResult!12416)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99787 (_ BitVec 32)) SeekEntryResult!12416)

(assert (=> b!1497167 (= lt!652318 (seekEntryOrOpen!0 lt!652322 lt!652321 mask!2687))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun lt!652319 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((Unit!50120 0))(
  ( (Unit!50121) )
))
(declare-fun lt!652320 () Unit!50120)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!99787 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50120)

(assert (=> b!1497167 (= lt!652320 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!652319 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1497168 () Bool)

(declare-fun res!1018446 () Bool)

(assert (=> b!1497168 (=> (not res!1018446) (not e!838479))))

(declare-datatypes ((List!34834 0))(
  ( (Nil!34831) (Cons!34830 (h!36228 (_ BitVec 64)) (t!49535 List!34834)) )
))
(declare-fun arrayNoDuplicates!0 (array!99787 (_ BitVec 32) List!34834) Bool)

(assert (=> b!1497168 (= res!1018446 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34831))))

(declare-fun b!1497169 () Bool)

(declare-fun e!838484 () Bool)

(declare-fun e!838478 () Bool)

(assert (=> b!1497169 (= e!838484 e!838478)))

(declare-fun res!1018456 () Bool)

(assert (=> b!1497169 (=> (not res!1018456) (not e!838478))))

(declare-fun lt!652323 () SeekEntryResult!12416)

(assert (=> b!1497169 (= res!1018456 (= lt!652323 (Intermediate!12416 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99787 (_ BitVec 32)) SeekEntryResult!12416)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1497169 (= lt!652323 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!652322 mask!2687) lt!652322 lt!652321 mask!2687))))

(assert (=> b!1497169 (= lt!652322 (select (store (arr!48153 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1497170 () Bool)

(declare-fun res!1018449 () Bool)

(assert (=> b!1497170 (=> (not res!1018449) (not e!838479))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1497170 (= res!1018449 (validKeyInArray!0 (select (arr!48153 a!2862) i!1006)))))

(declare-fun b!1497171 () Bool)

(declare-fun res!1018454 () Bool)

(assert (=> b!1497171 (=> (not res!1018454) (not e!838478))))

(assert (=> b!1497171 (= res!1018454 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1497172 () Bool)

(declare-fun res!1018452 () Bool)

(assert (=> b!1497172 (=> res!1018452 e!838477)))

(assert (=> b!1497172 (= res!1018452 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1497173 () Bool)

(declare-fun res!1018445 () Bool)

(assert (=> b!1497173 (=> (not res!1018445) (not e!838479))))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1497173 (= res!1018445 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48704 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48704 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48704 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1497174 () Bool)

(declare-fun res!1018457 () Bool)

(assert (=> b!1497174 (=> res!1018457 e!838477)))

(declare-fun lt!652324 () SeekEntryResult!12416)

(assert (=> b!1497174 (= res!1018457 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652319 (select (arr!48153 a!2862) j!93) a!2862 mask!2687) lt!652324)))))

(declare-fun b!1497176 () Bool)

(declare-fun res!1018458 () Bool)

(assert (=> b!1497176 (=> (not res!1018458) (not e!838479))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99787 (_ BitVec 32)) Bool)

(assert (=> b!1497176 (= res!1018458 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1497177 () Bool)

(declare-fun e!838481 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99787 (_ BitVec 32)) SeekEntryResult!12416)

(assert (=> b!1497177 (= e!838481 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!652322 lt!652321 mask!2687) (seekEntryOrOpen!0 lt!652322 lt!652321 mask!2687)))))

(declare-fun b!1497178 () Bool)

(declare-fun res!1018450 () Bool)

(assert (=> b!1497178 (=> (not res!1018450) (not e!838484))))

(assert (=> b!1497178 (= res!1018450 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48153 a!2862) j!93) a!2862 mask!2687) lt!652324))))

(declare-fun b!1497179 () Bool)

(declare-fun res!1018461 () Bool)

(assert (=> b!1497179 (=> (not res!1018461) (not e!838479))))

(assert (=> b!1497179 (= res!1018461 (validKeyInArray!0 (select (arr!48153 a!2862) j!93)))))

(declare-fun b!1497180 () Bool)

(declare-fun res!1018453 () Bool)

(assert (=> b!1497180 (=> (not res!1018453) (not e!838479))))

(assert (=> b!1497180 (= res!1018453 (and (= (size!48704 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48704 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48704 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1497181 () Bool)

(assert (=> b!1497181 (= e!838481 (= lt!652323 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!652322 lt!652321 mask!2687)))))

(declare-fun b!1497182 () Bool)

(assert (=> b!1497182 (= e!838482 e!838484)))

(declare-fun res!1018444 () Bool)

(assert (=> b!1497182 (=> (not res!1018444) (not e!838484))))

(assert (=> b!1497182 (= res!1018444 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48153 a!2862) j!93) mask!2687) (select (arr!48153 a!2862) j!93) a!2862 mask!2687) lt!652324))))

(assert (=> b!1497182 (= lt!652324 (Intermediate!12416 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun e!838476 () Bool)

(declare-fun b!1497183 () Bool)

(assert (=> b!1497183 (= e!838476 (not (= lt!652323 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652319 lt!652322 lt!652321 mask!2687))))))

(declare-fun b!1497184 () Bool)

(declare-fun e!838480 () Bool)

(assert (=> b!1497184 (= e!838478 (not e!838480))))

(declare-fun res!1018460 () Bool)

(assert (=> b!1497184 (=> res!1018460 e!838480)))

(assert (=> b!1497184 (= res!1018460 (or (and (= (select (arr!48153 a!2862) index!646) (select (store (arr!48153 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48153 a!2862) index!646) (select (arr!48153 a!2862) j!93))) (= (select (arr!48153 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1497184 (and (= lt!652318 (Found!12416 j!93)) (or (= (select (arr!48153 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48153 a!2862) intermediateBeforeIndex!19) (select (arr!48153 a!2862) j!93))))))

(assert (=> b!1497184 (= lt!652318 (seekEntryOrOpen!0 (select (arr!48153 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1497184 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!652317 () Unit!50120)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99787 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50120)

(assert (=> b!1497184 (= lt!652317 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1497185 () Bool)

(declare-fun res!1018451 () Bool)

(assert (=> b!1497185 (=> res!1018451 e!838477)))

(assert (=> b!1497185 (= res!1018451 e!838476)))

(declare-fun c!138898 () Bool)

(assert (=> b!1497185 (= c!138898 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1497186 () Bool)

(assert (=> b!1497186 (= e!838480 e!838477)))

(declare-fun res!1018459 () Bool)

(assert (=> b!1497186 (=> res!1018459 e!838477)))

(assert (=> b!1497186 (= res!1018459 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!652319 #b00000000000000000000000000000000) (bvsge lt!652319 (size!48704 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1497186 (= lt!652319 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1497187 () Bool)

(declare-fun res!1018448 () Bool)

(assert (=> b!1497187 (=> (not res!1018448) (not e!838478))))

(assert (=> b!1497187 (= res!1018448 e!838481)))

(declare-fun c!138899 () Bool)

(assert (=> b!1497187 (= c!138899 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1497175 () Bool)

(assert (=> b!1497175 (= e!838476 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652319 intermediateAfterIndex!19 lt!652322 lt!652321 mask!2687) (seekEntryOrOpen!0 lt!652322 lt!652321 mask!2687))))))

(declare-fun res!1018455 () Bool)

(assert (=> start!127412 (=> (not res!1018455) (not e!838479))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127412 (= res!1018455 (validMask!0 mask!2687))))

(assert (=> start!127412 e!838479))

(assert (=> start!127412 true))

(declare-fun array_inv!37098 (array!99787) Bool)

(assert (=> start!127412 (array_inv!37098 a!2862)))

(assert (= (and start!127412 res!1018455) b!1497180))

(assert (= (and b!1497180 res!1018453) b!1497170))

(assert (= (and b!1497170 res!1018449) b!1497179))

(assert (= (and b!1497179 res!1018461) b!1497176))

(assert (= (and b!1497176 res!1018458) b!1497168))

(assert (= (and b!1497168 res!1018446) b!1497173))

(assert (= (and b!1497173 res!1018445) b!1497166))

(assert (= (and b!1497166 res!1018447) b!1497182))

(assert (= (and b!1497182 res!1018444) b!1497178))

(assert (= (and b!1497178 res!1018450) b!1497169))

(assert (= (and b!1497169 res!1018456) b!1497187))

(assert (= (and b!1497187 c!138899) b!1497181))

(assert (= (and b!1497187 (not c!138899)) b!1497177))

(assert (= (and b!1497187 res!1018448) b!1497171))

(assert (= (and b!1497171 res!1018454) b!1497184))

(assert (= (and b!1497184 (not res!1018460)) b!1497186))

(assert (= (and b!1497186 (not res!1018459)) b!1497174))

(assert (= (and b!1497174 (not res!1018457)) b!1497185))

(assert (= (and b!1497185 c!138898) b!1497183))

(assert (= (and b!1497185 (not c!138898)) b!1497175))

(assert (= (and b!1497185 (not res!1018451)) b!1497172))

(assert (= (and b!1497172 (not res!1018452)) b!1497167))

(declare-fun m!1380321 () Bool)

(assert (=> b!1497184 m!1380321))

(declare-fun m!1380323 () Bool)

(assert (=> b!1497184 m!1380323))

(declare-fun m!1380325 () Bool)

(assert (=> b!1497184 m!1380325))

(declare-fun m!1380327 () Bool)

(assert (=> b!1497184 m!1380327))

(declare-fun m!1380329 () Bool)

(assert (=> b!1497184 m!1380329))

(declare-fun m!1380331 () Bool)

(assert (=> b!1497184 m!1380331))

(declare-fun m!1380333 () Bool)

(assert (=> b!1497184 m!1380333))

(declare-fun m!1380335 () Bool)

(assert (=> b!1497184 m!1380335))

(assert (=> b!1497184 m!1380331))

(declare-fun m!1380337 () Bool)

(assert (=> b!1497177 m!1380337))

(declare-fun m!1380339 () Bool)

(assert (=> b!1497177 m!1380339))

(declare-fun m!1380341 () Bool)

(assert (=> b!1497186 m!1380341))

(declare-fun m!1380343 () Bool)

(assert (=> b!1497175 m!1380343))

(assert (=> b!1497175 m!1380339))

(declare-fun m!1380345 () Bool)

(assert (=> b!1497169 m!1380345))

(assert (=> b!1497169 m!1380345))

(declare-fun m!1380347 () Bool)

(assert (=> b!1497169 m!1380347))

(assert (=> b!1497169 m!1380323))

(declare-fun m!1380349 () Bool)

(assert (=> b!1497169 m!1380349))

(declare-fun m!1380351 () Bool)

(assert (=> b!1497181 m!1380351))

(declare-fun m!1380353 () Bool)

(assert (=> start!127412 m!1380353))

(declare-fun m!1380355 () Bool)

(assert (=> start!127412 m!1380355))

(declare-fun m!1380357 () Bool)

(assert (=> b!1497168 m!1380357))

(declare-fun m!1380359 () Bool)

(assert (=> b!1497176 m!1380359))

(assert (=> b!1497174 m!1380331))

(assert (=> b!1497174 m!1380331))

(declare-fun m!1380361 () Bool)

(assert (=> b!1497174 m!1380361))

(assert (=> b!1497182 m!1380331))

(assert (=> b!1497182 m!1380331))

(declare-fun m!1380363 () Bool)

(assert (=> b!1497182 m!1380363))

(assert (=> b!1497182 m!1380363))

(assert (=> b!1497182 m!1380331))

(declare-fun m!1380365 () Bool)

(assert (=> b!1497182 m!1380365))

(declare-fun m!1380367 () Bool)

(assert (=> b!1497183 m!1380367))

(assert (=> b!1497167 m!1380339))

(declare-fun m!1380369 () Bool)

(assert (=> b!1497167 m!1380369))

(declare-fun m!1380371 () Bool)

(assert (=> b!1497170 m!1380371))

(assert (=> b!1497170 m!1380371))

(declare-fun m!1380373 () Bool)

(assert (=> b!1497170 m!1380373))

(assert (=> b!1497178 m!1380331))

(assert (=> b!1497178 m!1380331))

(declare-fun m!1380375 () Bool)

(assert (=> b!1497178 m!1380375))

(assert (=> b!1497179 m!1380331))

(assert (=> b!1497179 m!1380331))

(declare-fun m!1380377 () Bool)

(assert (=> b!1497179 m!1380377))

(assert (=> b!1497166 m!1380323))

(declare-fun m!1380379 () Bool)

(assert (=> b!1497166 m!1380379))

(push 1)

