; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125842 () Bool)

(assert start!125842)

(declare-fun b!1472484 () Bool)

(declare-fun res!1000240 () Bool)

(declare-fun e!826386 () Bool)

(assert (=> b!1472484 (=> (not res!1000240) (not e!826386))))

(declare-datatypes ((array!99093 0))(
  ( (array!99094 (arr!47827 (Array (_ BitVec 32) (_ BitVec 64))) (size!48378 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99093)

(declare-datatypes ((List!34508 0))(
  ( (Nil!34505) (Cons!34504 (h!35860 (_ BitVec 64)) (t!49209 List!34508)) )
))
(declare-fun arrayNoDuplicates!0 (array!99093 (_ BitVec 32) List!34508) Bool)

(assert (=> b!1472484 (= res!1000240 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34505))))

(declare-fun b!1472485 () Bool)

(declare-fun res!1000248 () Bool)

(assert (=> b!1472485 (=> (not res!1000248) (not e!826386))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1472485 (= res!1000248 (validKeyInArray!0 (select (arr!47827 a!2862) j!93)))))

(declare-fun b!1472486 () Bool)

(declare-fun res!1000241 () Bool)

(assert (=> b!1472486 (=> (not res!1000241) (not e!826386))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1472486 (= res!1000241 (and (= (size!48378 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48378 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48378 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1472487 () Bool)

(declare-fun res!1000245 () Bool)

(declare-fun e!826388 () Bool)

(assert (=> b!1472487 (=> (not res!1000245) (not e!826388))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12090 0))(
  ( (MissingZero!12090 (index!50751 (_ BitVec 32))) (Found!12090 (index!50752 (_ BitVec 32))) (Intermediate!12090 (undefined!12902 Bool) (index!50753 (_ BitVec 32)) (x!132336 (_ BitVec 32))) (Undefined!12090) (MissingVacant!12090 (index!50754 (_ BitVec 32))) )
))
(declare-fun lt!643548 () SeekEntryResult!12090)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99093 (_ BitVec 32)) SeekEntryResult!12090)

(assert (=> b!1472487 (= res!1000245 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47827 a!2862) j!93) a!2862 mask!2687) lt!643548))))

(declare-fun lt!643551 () (_ BitVec 64))

(declare-fun lt!643549 () array!99093)

(declare-fun e!826390 () Bool)

(declare-fun b!1472488 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99093 (_ BitVec 32)) SeekEntryResult!12090)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99093 (_ BitVec 32)) SeekEntryResult!12090)

(assert (=> b!1472488 (= e!826390 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643551 lt!643549 mask!2687) (seekEntryOrOpen!0 lt!643551 lt!643549 mask!2687)))))

(declare-fun b!1472489 () Bool)

(declare-fun res!1000246 () Bool)

(assert (=> b!1472489 (=> (not res!1000246) (not e!826386))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1472489 (= res!1000246 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48378 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48378 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48378 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!1000243 () Bool)

(assert (=> start!125842 (=> (not res!1000243) (not e!826386))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125842 (= res!1000243 (validMask!0 mask!2687))))

(assert (=> start!125842 e!826386))

(assert (=> start!125842 true))

(declare-fun array_inv!36772 (array!99093) Bool)

(assert (=> start!125842 (array_inv!36772 a!2862)))

(declare-fun b!1472490 () Bool)

(declare-fun res!1000254 () Bool)

(declare-fun e!826389 () Bool)

(assert (=> b!1472490 (=> (not res!1000254) (not e!826389))))

(assert (=> b!1472490 (= res!1000254 (= (seekEntryOrOpen!0 (select (arr!47827 a!2862) j!93) a!2862 mask!2687) (Found!12090 j!93)))))

(declare-fun b!1472491 () Bool)

(declare-fun e!826385 () Bool)

(assert (=> b!1472491 (= e!826385 (not true))))

(assert (=> b!1472491 e!826389))

(declare-fun res!1000251 () Bool)

(assert (=> b!1472491 (=> (not res!1000251) (not e!826389))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99093 (_ BitVec 32)) Bool)

(assert (=> b!1472491 (= res!1000251 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49468 0))(
  ( (Unit!49469) )
))
(declare-fun lt!643552 () Unit!49468)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99093 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49468)

(assert (=> b!1472491 (= lt!643552 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1472492 () Bool)

(declare-fun res!1000247 () Bool)

(assert (=> b!1472492 (=> (not res!1000247) (not e!826385))))

(assert (=> b!1472492 (= res!1000247 e!826390)))

(declare-fun c!135638 () Bool)

(assert (=> b!1472492 (= c!135638 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1472493 () Bool)

(declare-fun e!826387 () Bool)

(assert (=> b!1472493 (= e!826386 e!826387)))

(declare-fun res!1000249 () Bool)

(assert (=> b!1472493 (=> (not res!1000249) (not e!826387))))

(assert (=> b!1472493 (= res!1000249 (= (select (store (arr!47827 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1472493 (= lt!643549 (array!99094 (store (arr!47827 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48378 a!2862)))))

(declare-fun b!1472494 () Bool)

(assert (=> b!1472494 (= e!826389 (or (= (select (arr!47827 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47827 a!2862) intermediateBeforeIndex!19) (select (arr!47827 a!2862) j!93))))))

(declare-fun lt!643550 () SeekEntryResult!12090)

(declare-fun b!1472495 () Bool)

(assert (=> b!1472495 (= e!826390 (= lt!643550 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643551 lt!643549 mask!2687)))))

(declare-fun b!1472496 () Bool)

(declare-fun res!1000253 () Bool)

(assert (=> b!1472496 (=> (not res!1000253) (not e!826386))))

(assert (=> b!1472496 (= res!1000253 (validKeyInArray!0 (select (arr!47827 a!2862) i!1006)))))

(declare-fun b!1472497 () Bool)

(assert (=> b!1472497 (= e!826387 e!826388)))

(declare-fun res!1000250 () Bool)

(assert (=> b!1472497 (=> (not res!1000250) (not e!826388))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1472497 (= res!1000250 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47827 a!2862) j!93) mask!2687) (select (arr!47827 a!2862) j!93) a!2862 mask!2687) lt!643548))))

(assert (=> b!1472497 (= lt!643548 (Intermediate!12090 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1472498 () Bool)

(declare-fun res!1000242 () Bool)

(assert (=> b!1472498 (=> (not res!1000242) (not e!826386))))

(assert (=> b!1472498 (= res!1000242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1472499 () Bool)

(assert (=> b!1472499 (= e!826388 e!826385)))

(declare-fun res!1000252 () Bool)

(assert (=> b!1472499 (=> (not res!1000252) (not e!826385))))

(assert (=> b!1472499 (= res!1000252 (= lt!643550 (Intermediate!12090 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1472499 (= lt!643550 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643551 mask!2687) lt!643551 lt!643549 mask!2687))))

(assert (=> b!1472499 (= lt!643551 (select (store (arr!47827 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1472500 () Bool)

(declare-fun res!1000244 () Bool)

(assert (=> b!1472500 (=> (not res!1000244) (not e!826385))))

(assert (=> b!1472500 (= res!1000244 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!125842 res!1000243) b!1472486))

(assert (= (and b!1472486 res!1000241) b!1472496))

(assert (= (and b!1472496 res!1000253) b!1472485))

(assert (= (and b!1472485 res!1000248) b!1472498))

(assert (= (and b!1472498 res!1000242) b!1472484))

(assert (= (and b!1472484 res!1000240) b!1472489))

(assert (= (and b!1472489 res!1000246) b!1472493))

(assert (= (and b!1472493 res!1000249) b!1472497))

(assert (= (and b!1472497 res!1000250) b!1472487))

(assert (= (and b!1472487 res!1000245) b!1472499))

(assert (= (and b!1472499 res!1000252) b!1472492))

(assert (= (and b!1472492 c!135638) b!1472495))

(assert (= (and b!1472492 (not c!135638)) b!1472488))

(assert (= (and b!1472492 res!1000247) b!1472500))

(assert (= (and b!1472500 res!1000244) b!1472491))

(assert (= (and b!1472491 res!1000251) b!1472490))

(assert (= (and b!1472490 res!1000254) b!1472494))

(declare-fun m!1359243 () Bool)

(assert (=> b!1472497 m!1359243))

(assert (=> b!1472497 m!1359243))

(declare-fun m!1359245 () Bool)

(assert (=> b!1472497 m!1359245))

(assert (=> b!1472497 m!1359245))

(assert (=> b!1472497 m!1359243))

(declare-fun m!1359247 () Bool)

(assert (=> b!1472497 m!1359247))

(declare-fun m!1359249 () Bool)

(assert (=> b!1472498 m!1359249))

(declare-fun m!1359251 () Bool)

(assert (=> b!1472496 m!1359251))

(assert (=> b!1472496 m!1359251))

(declare-fun m!1359253 () Bool)

(assert (=> b!1472496 m!1359253))

(declare-fun m!1359255 () Bool)

(assert (=> b!1472488 m!1359255))

(declare-fun m!1359257 () Bool)

(assert (=> b!1472488 m!1359257))

(declare-fun m!1359259 () Bool)

(assert (=> b!1472493 m!1359259))

(declare-fun m!1359261 () Bool)

(assert (=> b!1472493 m!1359261))

(declare-fun m!1359263 () Bool)

(assert (=> b!1472484 m!1359263))

(assert (=> b!1472485 m!1359243))

(assert (=> b!1472485 m!1359243))

(declare-fun m!1359265 () Bool)

(assert (=> b!1472485 m!1359265))

(declare-fun m!1359267 () Bool)

(assert (=> b!1472499 m!1359267))

(assert (=> b!1472499 m!1359267))

(declare-fun m!1359269 () Bool)

(assert (=> b!1472499 m!1359269))

(assert (=> b!1472499 m!1359259))

(declare-fun m!1359271 () Bool)

(assert (=> b!1472499 m!1359271))

(declare-fun m!1359273 () Bool)

(assert (=> start!125842 m!1359273))

(declare-fun m!1359275 () Bool)

(assert (=> start!125842 m!1359275))

(declare-fun m!1359277 () Bool)

(assert (=> b!1472494 m!1359277))

(assert (=> b!1472494 m!1359243))

(assert (=> b!1472490 m!1359243))

(assert (=> b!1472490 m!1359243))

(declare-fun m!1359279 () Bool)

(assert (=> b!1472490 m!1359279))

(declare-fun m!1359281 () Bool)

(assert (=> b!1472495 m!1359281))

(declare-fun m!1359283 () Bool)

(assert (=> b!1472491 m!1359283))

(declare-fun m!1359285 () Bool)

(assert (=> b!1472491 m!1359285))

(assert (=> b!1472487 m!1359243))

(assert (=> b!1472487 m!1359243))

(declare-fun m!1359287 () Bool)

(assert (=> b!1472487 m!1359287))

(push 1)

