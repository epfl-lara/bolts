; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126572 () Bool)

(assert start!126572)

(declare-fun b!1484399 () Bool)

(declare-fun res!1009295 () Bool)

(declare-fun e!832281 () Bool)

(assert (=> b!1484399 (=> (not res!1009295) (not e!832281))))

(declare-datatypes ((array!99451 0))(
  ( (array!99452 (arr!47997 (Array (_ BitVec 32) (_ BitVec 64))) (size!48548 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99451)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1484399 (= res!1009295 (validKeyInArray!0 (select (arr!47997 a!2862) i!1006)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!647717 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!647719 () array!99451)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun b!1484400 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun e!832288 () Bool)

(declare-datatypes ((SeekEntryResult!12260 0))(
  ( (MissingZero!12260 (index!51431 (_ BitVec 32))) (Found!12260 (index!51432 (_ BitVec 32))) (Intermediate!12260 (undefined!13072 Bool) (index!51433 (_ BitVec 32)) (x!133011 (_ BitVec 32))) (Undefined!12260) (MissingVacant!12260 (index!51434 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99451 (_ BitVec 32)) SeekEntryResult!12260)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99451 (_ BitVec 32)) SeekEntryResult!12260)

(assert (=> b!1484400 (= e!832288 (= (seekEntryOrOpen!0 lt!647717 lt!647719 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647717 lt!647719 mask!2687)))))

(declare-fun b!1484401 () Bool)

(declare-fun e!832280 () Bool)

(declare-fun e!832287 () Bool)

(assert (=> b!1484401 (= e!832280 e!832287)))

(declare-fun res!1009291 () Bool)

(assert (=> b!1484401 (=> (not res!1009291) (not e!832287))))

(declare-fun lt!647714 () SeekEntryResult!12260)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1484401 (= res!1009291 (= lt!647714 (Intermediate!12260 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99451 (_ BitVec 32)) SeekEntryResult!12260)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484401 (= lt!647714 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647717 mask!2687) lt!647717 lt!647719 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1484401 (= lt!647717 (select (store (arr!47997 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!1009289 () Bool)

(assert (=> start!126572 (=> (not res!1009289) (not e!832281))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126572 (= res!1009289 (validMask!0 mask!2687))))

(assert (=> start!126572 e!832281))

(assert (=> start!126572 true))

(declare-fun array_inv!36942 (array!99451) Bool)

(assert (=> start!126572 (array_inv!36942 a!2862)))

(declare-fun b!1484402 () Bool)

(declare-fun e!832285 () Bool)

(assert (=> b!1484402 (= e!832281 e!832285)))

(declare-fun res!1009296 () Bool)

(assert (=> b!1484402 (=> (not res!1009296) (not e!832285))))

(assert (=> b!1484402 (= res!1009296 (= (select (store (arr!47997 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1484402 (= lt!647719 (array!99452 (store (arr!47997 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48548 a!2862)))))

(declare-fun b!1484403 () Bool)

(declare-fun res!1009293 () Bool)

(assert (=> b!1484403 (=> (not res!1009293) (not e!832281))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99451 (_ BitVec 32)) Bool)

(assert (=> b!1484403 (= res!1009293 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1484404 () Bool)

(declare-fun res!1009282 () Bool)

(declare-fun e!832284 () Bool)

(assert (=> b!1484404 (=> (not res!1009282) (not e!832284))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1484404 (= res!1009282 (or (= (select (arr!47997 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47997 a!2862) intermediateBeforeIndex!19) (select (arr!47997 a!2862) j!93))))))

(declare-fun e!832286 () Bool)

(declare-fun b!1484405 () Bool)

(assert (=> b!1484405 (= e!832286 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647717 lt!647719 mask!2687) (seekEntryOrOpen!0 lt!647717 lt!647719 mask!2687)))))

(declare-fun b!1484406 () Bool)

(declare-fun res!1009281 () Bool)

(assert (=> b!1484406 (=> (not res!1009281) (not e!832280))))

(declare-fun lt!647718 () SeekEntryResult!12260)

(assert (=> b!1484406 (= res!1009281 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47997 a!2862) j!93) a!2862 mask!2687) lt!647718))))

(declare-fun b!1484407 () Bool)

(assert (=> b!1484407 (= e!832285 e!832280)))

(declare-fun res!1009297 () Bool)

(assert (=> b!1484407 (=> (not res!1009297) (not e!832280))))

(assert (=> b!1484407 (= res!1009297 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47997 a!2862) j!93) mask!2687) (select (arr!47997 a!2862) j!93) a!2862 mask!2687) lt!647718))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1484407 (= lt!647718 (Intermediate!12260 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1484408 () Bool)

(declare-fun res!1009299 () Bool)

(assert (=> b!1484408 (=> (not res!1009299) (not e!832281))))

(declare-datatypes ((List!34678 0))(
  ( (Nil!34675) (Cons!34674 (h!36048 (_ BitVec 64)) (t!49379 List!34678)) )
))
(declare-fun arrayNoDuplicates!0 (array!99451 (_ BitVec 32) List!34678) Bool)

(assert (=> b!1484408 (= res!1009299 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34675))))

(declare-fun b!1484409 () Bool)

(declare-fun res!1009290 () Bool)

(assert (=> b!1484409 (=> (not res!1009290) (not e!832287))))

(assert (=> b!1484409 (= res!1009290 e!832286)))

(declare-fun c!137084 () Bool)

(assert (=> b!1484409 (= c!137084 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1484410 () Bool)

(declare-fun res!1009287 () Bool)

(assert (=> b!1484410 (=> (not res!1009287) (not e!832281))))

(assert (=> b!1484410 (= res!1009287 (validKeyInArray!0 (select (arr!47997 a!2862) j!93)))))

(declare-fun b!1484411 () Bool)

(declare-fun res!1009284 () Bool)

(assert (=> b!1484411 (=> (not res!1009284) (not e!832281))))

(assert (=> b!1484411 (= res!1009284 (and (= (size!48548 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48548 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48548 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1484412 () Bool)

(declare-fun e!832283 () Bool)

(assert (=> b!1484412 (= e!832287 (not e!832283))))

(declare-fun res!1009285 () Bool)

(assert (=> b!1484412 (=> res!1009285 e!832283)))

(assert (=> b!1484412 (= res!1009285 (or (and (= (select (arr!47997 a!2862) index!646) (select (store (arr!47997 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47997 a!2862) index!646) (select (arr!47997 a!2862) j!93))) (= (select (arr!47997 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1484412 e!832284))

(declare-fun res!1009283 () Bool)

(assert (=> b!1484412 (=> (not res!1009283) (not e!832284))))

(assert (=> b!1484412 (= res!1009283 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49808 0))(
  ( (Unit!49809) )
))
(declare-fun lt!647715 () Unit!49808)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99451 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49808)

(assert (=> b!1484412 (= lt!647715 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1484413 () Bool)

(declare-fun res!1009286 () Bool)

(assert (=> b!1484413 (=> (not res!1009286) (not e!832287))))

(assert (=> b!1484413 (= res!1009286 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1484414 () Bool)

(assert (=> b!1484414 (= e!832286 (= lt!647714 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647717 lt!647719 mask!2687)))))

(declare-fun b!1484415 () Bool)

(declare-fun res!1009292 () Bool)

(assert (=> b!1484415 (=> (not res!1009292) (not e!832284))))

(assert (=> b!1484415 (= res!1009292 (= (seekEntryOrOpen!0 (select (arr!47997 a!2862) j!93) a!2862 mask!2687) (Found!12260 j!93)))))

(declare-fun b!1484416 () Bool)

(declare-fun res!1009288 () Bool)

(assert (=> b!1484416 (=> (not res!1009288) (not e!832281))))

(assert (=> b!1484416 (= res!1009288 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48548 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48548 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48548 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1484417 () Bool)

(assert (=> b!1484417 (= e!832283 true)))

(declare-fun lt!647713 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484417 (= lt!647713 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1484418 () Bool)

(declare-fun e!832282 () Bool)

(assert (=> b!1484418 (= e!832284 e!832282)))

(declare-fun res!1009298 () Bool)

(assert (=> b!1484418 (=> res!1009298 e!832282)))

(declare-fun lt!647716 () (_ BitVec 64))

(assert (=> b!1484418 (= res!1009298 (or (and (= (select (arr!47997 a!2862) index!646) lt!647716) (= (select (arr!47997 a!2862) index!646) (select (arr!47997 a!2862) j!93))) (= (select (arr!47997 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1484418 (= lt!647716 (select (store (arr!47997 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1484419 () Bool)

(assert (=> b!1484419 (= e!832282 e!832288)))

(declare-fun res!1009294 () Bool)

(assert (=> b!1484419 (=> (not res!1009294) (not e!832288))))

(assert (=> b!1484419 (= res!1009294 (and (= index!646 intermediateAfterIndex!19) (= lt!647716 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!126572 res!1009289) b!1484411))

(assert (= (and b!1484411 res!1009284) b!1484399))

(assert (= (and b!1484399 res!1009295) b!1484410))

(assert (= (and b!1484410 res!1009287) b!1484403))

(assert (= (and b!1484403 res!1009293) b!1484408))

(assert (= (and b!1484408 res!1009299) b!1484416))

(assert (= (and b!1484416 res!1009288) b!1484402))

(assert (= (and b!1484402 res!1009296) b!1484407))

(assert (= (and b!1484407 res!1009297) b!1484406))

(assert (= (and b!1484406 res!1009281) b!1484401))

(assert (= (and b!1484401 res!1009291) b!1484409))

(assert (= (and b!1484409 c!137084) b!1484414))

(assert (= (and b!1484409 (not c!137084)) b!1484405))

(assert (= (and b!1484409 res!1009290) b!1484413))

(assert (= (and b!1484413 res!1009286) b!1484412))

(assert (= (and b!1484412 res!1009283) b!1484415))

(assert (= (and b!1484415 res!1009292) b!1484404))

(assert (= (and b!1484404 res!1009282) b!1484418))

(assert (= (and b!1484418 (not res!1009298)) b!1484419))

(assert (= (and b!1484419 res!1009294) b!1484400))

(assert (= (and b!1484412 (not res!1009285)) b!1484417))

(declare-fun m!1369757 () Bool)

(assert (=> b!1484406 m!1369757))

(assert (=> b!1484406 m!1369757))

(declare-fun m!1369759 () Bool)

(assert (=> b!1484406 m!1369759))

(declare-fun m!1369761 () Bool)

(assert (=> b!1484418 m!1369761))

(assert (=> b!1484418 m!1369757))

(declare-fun m!1369763 () Bool)

(assert (=> b!1484418 m!1369763))

(declare-fun m!1369765 () Bool)

(assert (=> b!1484418 m!1369765))

(assert (=> b!1484410 m!1369757))

(assert (=> b!1484410 m!1369757))

(declare-fun m!1369767 () Bool)

(assert (=> b!1484410 m!1369767))

(declare-fun m!1369769 () Bool)

(assert (=> b!1484399 m!1369769))

(assert (=> b!1484399 m!1369769))

(declare-fun m!1369771 () Bool)

(assert (=> b!1484399 m!1369771))

(declare-fun m!1369773 () Bool)

(assert (=> b!1484417 m!1369773))

(declare-fun m!1369775 () Bool)

(assert (=> b!1484414 m!1369775))

(declare-fun m!1369777 () Bool)

(assert (=> b!1484404 m!1369777))

(assert (=> b!1484404 m!1369757))

(declare-fun m!1369779 () Bool)

(assert (=> b!1484403 m!1369779))

(assert (=> b!1484407 m!1369757))

(assert (=> b!1484407 m!1369757))

(declare-fun m!1369781 () Bool)

(assert (=> b!1484407 m!1369781))

(assert (=> b!1484407 m!1369781))

(assert (=> b!1484407 m!1369757))

(declare-fun m!1369783 () Bool)

(assert (=> b!1484407 m!1369783))

(declare-fun m!1369785 () Bool)

(assert (=> b!1484401 m!1369785))

(assert (=> b!1484401 m!1369785))

(declare-fun m!1369787 () Bool)

(assert (=> b!1484401 m!1369787))

(assert (=> b!1484401 m!1369763))

(declare-fun m!1369789 () Bool)

(assert (=> b!1484401 m!1369789))

(assert (=> b!1484415 m!1369757))

(assert (=> b!1484415 m!1369757))

(declare-fun m!1369791 () Bool)

(assert (=> b!1484415 m!1369791))

(declare-fun m!1369793 () Bool)

(assert (=> b!1484408 m!1369793))

(assert (=> b!1484402 m!1369763))

(declare-fun m!1369795 () Bool)

(assert (=> b!1484402 m!1369795))

(declare-fun m!1369797 () Bool)

(assert (=> b!1484412 m!1369797))

(assert (=> b!1484412 m!1369763))

(assert (=> b!1484412 m!1369765))

(assert (=> b!1484412 m!1369761))

(declare-fun m!1369799 () Bool)

(assert (=> b!1484412 m!1369799))

(assert (=> b!1484412 m!1369757))

(declare-fun m!1369801 () Bool)

(assert (=> b!1484405 m!1369801))

(declare-fun m!1369803 () Bool)

(assert (=> b!1484405 m!1369803))

(declare-fun m!1369805 () Bool)

(assert (=> start!126572 m!1369805))

(declare-fun m!1369807 () Bool)

(assert (=> start!126572 m!1369807))

(assert (=> b!1484400 m!1369803))

(assert (=> b!1484400 m!1369801))

(push 1)

