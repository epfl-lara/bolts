; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124858 () Bool)

(assert start!124858)

(declare-fun b!1448398 () Bool)

(declare-fun res!980063 () Bool)

(declare-fun e!815720 () Bool)

(assert (=> b!1448398 (=> (not res!980063) (not e!815720))))

(declare-datatypes ((array!98223 0))(
  ( (array!98224 (arr!47395 (Array (_ BitVec 32) (_ BitVec 64))) (size!47946 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98223)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1448398 (= res!980063 (validKeyInArray!0 (select (arr!47395 a!2862) i!1006)))))

(declare-fun b!1448399 () Bool)

(declare-fun e!815719 () Bool)

(assert (=> b!1448399 (= e!815720 e!815719)))

(declare-fun res!980049 () Bool)

(assert (=> b!1448399 (=> (not res!980049) (not e!815719))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1448399 (= res!980049 (= (select (store (arr!47395 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!635490 () array!98223)

(assert (=> b!1448399 (= lt!635490 (array!98224 (store (arr!47395 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47946 a!2862)))))

(declare-fun b!1448400 () Bool)

(declare-fun e!815717 () Bool)

(declare-fun e!815723 () Bool)

(assert (=> b!1448400 (= e!815717 (not e!815723))))

(declare-fun res!980061 () Bool)

(assert (=> b!1448400 (=> res!980061 e!815723)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1448400 (= res!980061 (or (and (= (select (arr!47395 a!2862) index!646) (select (store (arr!47395 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47395 a!2862) index!646) (select (arr!47395 a!2862) j!93))) (not (= (select (arr!47395 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47395 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!815722 () Bool)

(assert (=> b!1448400 e!815722))

(declare-fun res!980059 () Bool)

(assert (=> b!1448400 (=> (not res!980059) (not e!815722))))

(declare-datatypes ((SeekEntryResult!11670 0))(
  ( (MissingZero!11670 (index!49071 (_ BitVec 32))) (Found!11670 (index!49072 (_ BitVec 32))) (Intermediate!11670 (undefined!12482 Bool) (index!49073 (_ BitVec 32)) (x!130746 (_ BitVec 32))) (Undefined!11670) (MissingVacant!11670 (index!49074 (_ BitVec 32))) )
))
(declare-fun lt!635489 () SeekEntryResult!11670)

(assert (=> b!1448400 (= res!980059 (and (= lt!635489 (Found!11670 j!93)) (or (= (select (arr!47395 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47395 a!2862) intermediateBeforeIndex!19) (select (arr!47395 a!2862) j!93)))))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98223 (_ BitVec 32)) SeekEntryResult!11670)

(assert (=> b!1448400 (= lt!635489 (seekEntryOrOpen!0 (select (arr!47395 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98223 (_ BitVec 32)) Bool)

(assert (=> b!1448400 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48784 0))(
  ( (Unit!48785) )
))
(declare-fun lt!635491 () Unit!48784)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98223 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48784)

(assert (=> b!1448400 (= lt!635491 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1448401 () Bool)

(declare-fun e!815721 () Bool)

(assert (=> b!1448401 (= e!815719 e!815721)))

(declare-fun res!980052 () Bool)

(assert (=> b!1448401 (=> (not res!980052) (not e!815721))))

(declare-fun lt!635488 () SeekEntryResult!11670)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98223 (_ BitVec 32)) SeekEntryResult!11670)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1448401 (= res!980052 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47395 a!2862) j!93) mask!2687) (select (arr!47395 a!2862) j!93) a!2862 mask!2687) lt!635488))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1448401 (= lt!635488 (Intermediate!11670 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1448402 () Bool)

(declare-fun res!980048 () Bool)

(assert (=> b!1448402 (=> (not res!980048) (not e!815720))))

(assert (=> b!1448402 (= res!980048 (and (= (size!47946 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47946 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47946 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1448404 () Bool)

(declare-fun res!980060 () Bool)

(assert (=> b!1448404 (=> (not res!980060) (not e!815720))))

(assert (=> b!1448404 (= res!980060 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1448405 () Bool)

(declare-fun res!980051 () Bool)

(assert (=> b!1448405 (=> (not res!980051) (not e!815721))))

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1448405 (= res!980051 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47395 a!2862) j!93) a!2862 mask!2687) lt!635488))))

(declare-fun b!1448406 () Bool)

(declare-fun res!980055 () Bool)

(assert (=> b!1448406 (=> (not res!980055) (not e!815717))))

(assert (=> b!1448406 (= res!980055 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1448407 () Bool)

(declare-fun res!980053 () Bool)

(assert (=> b!1448407 (=> (not res!980053) (not e!815717))))

(declare-fun e!815724 () Bool)

(assert (=> b!1448407 (= res!980053 e!815724)))

(declare-fun c!133688 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1448407 (= c!133688 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1448408 () Bool)

(assert (=> b!1448408 (= e!815723 true)))

(declare-fun lt!635486 () SeekEntryResult!11670)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98223 (_ BitVec 32)) SeekEntryResult!11670)

(assert (=> b!1448408 (= lt!635486 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47395 a!2862) j!93) a!2862 mask!2687))))

(declare-fun lt!635485 () SeekEntryResult!11670)

(declare-fun lt!635487 () (_ BitVec 64))

(declare-fun b!1448409 () Bool)

(assert (=> b!1448409 (= e!815724 (= lt!635485 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635487 lt!635490 mask!2687)))))

(declare-fun b!1448403 () Bool)

(declare-fun res!980050 () Bool)

(assert (=> b!1448403 (=> (not res!980050) (not e!815720))))

(assert (=> b!1448403 (= res!980050 (validKeyInArray!0 (select (arr!47395 a!2862) j!93)))))

(declare-fun res!980058 () Bool)

(assert (=> start!124858 (=> (not res!980058) (not e!815720))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124858 (= res!980058 (validMask!0 mask!2687))))

(assert (=> start!124858 e!815720))

(assert (=> start!124858 true))

(declare-fun array_inv!36340 (array!98223) Bool)

(assert (=> start!124858 (array_inv!36340 a!2862)))

(declare-fun b!1448410 () Bool)

(declare-fun res!980056 () Bool)

(assert (=> b!1448410 (=> (not res!980056) (not e!815720))))

(declare-datatypes ((List!34076 0))(
  ( (Nil!34073) (Cons!34072 (h!35422 (_ BitVec 64)) (t!48777 List!34076)) )
))
(declare-fun arrayNoDuplicates!0 (array!98223 (_ BitVec 32) List!34076) Bool)

(assert (=> b!1448410 (= res!980056 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34073))))

(declare-fun b!1448411 () Bool)

(declare-fun res!980054 () Bool)

(assert (=> b!1448411 (=> (not res!980054) (not e!815720))))

(assert (=> b!1448411 (= res!980054 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47946 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47946 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47946 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1448412 () Bool)

(declare-fun e!815726 () Bool)

(assert (=> b!1448412 (= e!815722 e!815726)))

(declare-fun res!980062 () Bool)

(assert (=> b!1448412 (=> res!980062 e!815726)))

(assert (=> b!1448412 (= res!980062 (or (and (= (select (arr!47395 a!2862) index!646) (select (store (arr!47395 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47395 a!2862) index!646) (select (arr!47395 a!2862) j!93))) (not (= (select (arr!47395 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1448413 () Bool)

(assert (=> b!1448413 (= e!815721 e!815717)))

(declare-fun res!980064 () Bool)

(assert (=> b!1448413 (=> (not res!980064) (not e!815717))))

(assert (=> b!1448413 (= res!980064 (= lt!635485 (Intermediate!11670 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1448413 (= lt!635485 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635487 mask!2687) lt!635487 lt!635490 mask!2687))))

(assert (=> b!1448413 (= lt!635487 (select (store (arr!47395 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun e!815718 () Bool)

(declare-fun b!1448414 () Bool)

(assert (=> b!1448414 (= e!815718 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1448415 () Bool)

(assert (=> b!1448415 (= e!815726 e!815718)))

(declare-fun res!980057 () Bool)

(assert (=> b!1448415 (=> (not res!980057) (not e!815718))))

(assert (=> b!1448415 (= res!980057 (= lt!635489 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47395 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1448416 () Bool)

(assert (=> b!1448416 (= e!815724 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635487 lt!635490 mask!2687) (seekEntryOrOpen!0 lt!635487 lt!635490 mask!2687)))))

(assert (= (and start!124858 res!980058) b!1448402))

(assert (= (and b!1448402 res!980048) b!1448398))

(assert (= (and b!1448398 res!980063) b!1448403))

(assert (= (and b!1448403 res!980050) b!1448404))

(assert (= (and b!1448404 res!980060) b!1448410))

(assert (= (and b!1448410 res!980056) b!1448411))

(assert (= (and b!1448411 res!980054) b!1448399))

(assert (= (and b!1448399 res!980049) b!1448401))

(assert (= (and b!1448401 res!980052) b!1448405))

(assert (= (and b!1448405 res!980051) b!1448413))

(assert (= (and b!1448413 res!980064) b!1448407))

(assert (= (and b!1448407 c!133688) b!1448409))

(assert (= (and b!1448407 (not c!133688)) b!1448416))

(assert (= (and b!1448407 res!980053) b!1448406))

(assert (= (and b!1448406 res!980055) b!1448400))

(assert (= (and b!1448400 res!980059) b!1448412))

(assert (= (and b!1448412 (not res!980062)) b!1448415))

(assert (= (and b!1448415 res!980057) b!1448414))

(assert (= (and b!1448400 (not res!980061)) b!1448408))

(declare-fun m!1337217 () Bool)

(assert (=> b!1448401 m!1337217))

(assert (=> b!1448401 m!1337217))

(declare-fun m!1337219 () Bool)

(assert (=> b!1448401 m!1337219))

(assert (=> b!1448401 m!1337219))

(assert (=> b!1448401 m!1337217))

(declare-fun m!1337221 () Bool)

(assert (=> b!1448401 m!1337221))

(declare-fun m!1337223 () Bool)

(assert (=> b!1448412 m!1337223))

(declare-fun m!1337225 () Bool)

(assert (=> b!1448412 m!1337225))

(declare-fun m!1337227 () Bool)

(assert (=> b!1448412 m!1337227))

(assert (=> b!1448412 m!1337217))

(assert (=> b!1448403 m!1337217))

(assert (=> b!1448403 m!1337217))

(declare-fun m!1337229 () Bool)

(assert (=> b!1448403 m!1337229))

(declare-fun m!1337231 () Bool)

(assert (=> b!1448410 m!1337231))

(declare-fun m!1337233 () Bool)

(assert (=> b!1448409 m!1337233))

(declare-fun m!1337235 () Bool)

(assert (=> b!1448416 m!1337235))

(declare-fun m!1337237 () Bool)

(assert (=> b!1448416 m!1337237))

(declare-fun m!1337239 () Bool)

(assert (=> b!1448404 m!1337239))

(assert (=> b!1448399 m!1337225))

(declare-fun m!1337241 () Bool)

(assert (=> b!1448399 m!1337241))

(assert (=> b!1448405 m!1337217))

(assert (=> b!1448405 m!1337217))

(declare-fun m!1337243 () Bool)

(assert (=> b!1448405 m!1337243))

(assert (=> b!1448408 m!1337217))

(assert (=> b!1448408 m!1337217))

(declare-fun m!1337245 () Bool)

(assert (=> b!1448408 m!1337245))

(declare-fun m!1337247 () Bool)

(assert (=> b!1448413 m!1337247))

(assert (=> b!1448413 m!1337247))

(declare-fun m!1337249 () Bool)

(assert (=> b!1448413 m!1337249))

(assert (=> b!1448413 m!1337225))

(declare-fun m!1337251 () Bool)

(assert (=> b!1448413 m!1337251))

(declare-fun m!1337253 () Bool)

(assert (=> start!124858 m!1337253))

(declare-fun m!1337255 () Bool)

(assert (=> start!124858 m!1337255))

(declare-fun m!1337257 () Bool)

(assert (=> b!1448400 m!1337257))

(assert (=> b!1448400 m!1337225))

(declare-fun m!1337259 () Bool)

(assert (=> b!1448400 m!1337259))

(assert (=> b!1448400 m!1337227))

(assert (=> b!1448400 m!1337223))

(assert (=> b!1448400 m!1337217))

(declare-fun m!1337261 () Bool)

(assert (=> b!1448400 m!1337261))

(declare-fun m!1337263 () Bool)

(assert (=> b!1448400 m!1337263))

(assert (=> b!1448400 m!1337217))

(assert (=> b!1448415 m!1337217))

(assert (=> b!1448415 m!1337217))

(declare-fun m!1337265 () Bool)

(assert (=> b!1448415 m!1337265))

(declare-fun m!1337267 () Bool)

(assert (=> b!1448398 m!1337267))

(assert (=> b!1448398 m!1337267))

(declare-fun m!1337269 () Bool)

(assert (=> b!1448398 m!1337269))

(push 1)

