; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124930 () Bool)

(assert start!124930)

(declare-fun b!1450497 () Bool)

(declare-fun res!981931 () Bool)

(declare-fun e!816806 () Bool)

(assert (=> b!1450497 (=> (not res!981931) (not e!816806))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98295 0))(
  ( (array!98296 (arr!47431 (Array (_ BitVec 32) (_ BitVec 64))) (size!47982 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98295)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1450497 (= res!981931 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47982 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47982 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47982 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1450498 () Bool)

(declare-fun e!816805 () Bool)

(declare-fun e!816797 () Bool)

(assert (=> b!1450498 (= e!816805 e!816797)))

(declare-fun res!981932 () Bool)

(assert (=> b!1450498 (=> (not res!981932) (not e!816797))))

(declare-datatypes ((SeekEntryResult!11706 0))(
  ( (MissingZero!11706 (index!49215 (_ BitVec 32))) (Found!11706 (index!49216 (_ BitVec 32))) (Intermediate!11706 (undefined!12518 Bool) (index!49217 (_ BitVec 32)) (x!130878 (_ BitVec 32))) (Undefined!11706) (MissingVacant!11706 (index!49218 (_ BitVec 32))) )
))
(declare-fun lt!636295 () SeekEntryResult!11706)

(assert (=> b!1450498 (= res!981932 (= lt!636295 (Intermediate!11706 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!636293 () (_ BitVec 64))

(declare-fun lt!636289 () array!98295)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98295 (_ BitVec 32)) SeekEntryResult!11706)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1450498 (= lt!636295 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636293 mask!2687) lt!636293 lt!636289 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1450498 (= lt!636293 (select (store (arr!47431 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1450499 () Bool)

(declare-fun res!981942 () Bool)

(assert (=> b!1450499 (=> (not res!981942) (not e!816805))))

(declare-fun lt!636290 () SeekEntryResult!11706)

(assert (=> b!1450499 (= res!981942 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47431 a!2862) j!93) a!2862 mask!2687) lt!636290))))

(declare-fun b!1450500 () Bool)

(declare-fun e!816804 () Bool)

(assert (=> b!1450500 (= e!816806 e!816804)))

(declare-fun res!981936 () Bool)

(assert (=> b!1450500 (=> (not res!981936) (not e!816804))))

(assert (=> b!1450500 (= res!981936 (= (select (store (arr!47431 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1450500 (= lt!636289 (array!98296 (store (arr!47431 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47982 a!2862)))))

(declare-fun b!1450501 () Bool)

(declare-fun e!816799 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98295 (_ BitVec 32)) SeekEntryResult!11706)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98295 (_ BitVec 32)) SeekEntryResult!11706)

(assert (=> b!1450501 (= e!816799 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636293 lt!636289 mask!2687) (seekEntryOrOpen!0 lt!636293 lt!636289 mask!2687)))))

(declare-fun b!1450502 () Bool)

(declare-fun res!981934 () Bool)

(assert (=> b!1450502 (=> (not res!981934) (not e!816806))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1450502 (= res!981934 (validKeyInArray!0 (select (arr!47431 a!2862) j!93)))))

(declare-fun b!1450503 () Bool)

(declare-fun e!816803 () Bool)

(declare-fun e!816802 () Bool)

(assert (=> b!1450503 (= e!816803 e!816802)))

(declare-fun res!981937 () Bool)

(assert (=> b!1450503 (=> (not res!981937) (not e!816802))))

(declare-fun lt!636292 () SeekEntryResult!11706)

(assert (=> b!1450503 (= res!981937 (= lt!636292 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47431 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1450504 () Bool)

(declare-fun res!981940 () Bool)

(declare-fun e!816800 () Bool)

(assert (=> b!1450504 (=> res!981940 e!816800)))

(declare-fun lt!636291 () SeekEntryResult!11706)

(assert (=> b!1450504 (= res!981940 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47431 a!2862) j!93) a!2862 mask!2687) lt!636291)))))

(declare-fun b!1450505 () Bool)

(assert (=> b!1450505 (= e!816804 e!816805)))

(declare-fun res!981947 () Bool)

(assert (=> b!1450505 (=> (not res!981947) (not e!816805))))

(assert (=> b!1450505 (= res!981947 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47431 a!2862) j!93) mask!2687) (select (arr!47431 a!2862) j!93) a!2862 mask!2687) lt!636290))))

(assert (=> b!1450505 (= lt!636290 (Intermediate!11706 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1450506 () Bool)

(assert (=> b!1450506 (= e!816802 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1450507 () Bool)

(declare-fun e!816801 () Bool)

(assert (=> b!1450507 (= e!816801 e!816803)))

(declare-fun res!981935 () Bool)

(assert (=> b!1450507 (=> res!981935 e!816803)))

(assert (=> b!1450507 (= res!981935 (or (and (= (select (arr!47431 a!2862) index!646) (select (store (arr!47431 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47431 a!2862) index!646) (select (arr!47431 a!2862) j!93))) (not (= (select (arr!47431 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1450508 () Bool)

(declare-fun res!981943 () Bool)

(assert (=> b!1450508 (=> (not res!981943) (not e!816797))))

(assert (=> b!1450508 (= res!981943 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1450509 () Bool)

(declare-fun res!981933 () Bool)

(assert (=> b!1450509 (=> (not res!981933) (not e!816806))))

(assert (=> b!1450509 (= res!981933 (validKeyInArray!0 (select (arr!47431 a!2862) i!1006)))))

(declare-fun res!981945 () Bool)

(assert (=> start!124930 (=> (not res!981945) (not e!816806))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124930 (= res!981945 (validMask!0 mask!2687))))

(assert (=> start!124930 e!816806))

(assert (=> start!124930 true))

(declare-fun array_inv!36376 (array!98295) Bool)

(assert (=> start!124930 (array_inv!36376 a!2862)))

(declare-fun b!1450510 () Bool)

(declare-fun res!981941 () Bool)

(assert (=> b!1450510 (=> (not res!981941) (not e!816806))))

(assert (=> b!1450510 (= res!981941 (and (= (size!47982 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47982 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47982 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1450511 () Bool)

(assert (=> b!1450511 (= e!816800 (bvsge mask!2687 #b00000000000000000000000000000000))))

(assert (=> b!1450511 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636293 lt!636289 mask!2687) lt!636291)))

(declare-datatypes ((Unit!48856 0))(
  ( (Unit!48857) )
))
(declare-fun lt!636288 () Unit!48856)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!98295 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48856)

(assert (=> b!1450511 (= lt!636288 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1450512 () Bool)

(declare-fun res!981939 () Bool)

(assert (=> b!1450512 (=> (not res!981939) (not e!816806))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98295 (_ BitVec 32)) Bool)

(assert (=> b!1450512 (= res!981939 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1450513 () Bool)

(assert (=> b!1450513 (= e!816799 (= lt!636295 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636293 lt!636289 mask!2687)))))

(declare-fun b!1450514 () Bool)

(declare-fun res!981944 () Bool)

(assert (=> b!1450514 (=> (not res!981944) (not e!816797))))

(assert (=> b!1450514 (= res!981944 e!816799)))

(declare-fun c!133796 () Bool)

(assert (=> b!1450514 (= c!133796 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1450515 () Bool)

(assert (=> b!1450515 (= e!816797 (not e!816800))))

(declare-fun res!981948 () Bool)

(assert (=> b!1450515 (=> res!981948 e!816800)))

(assert (=> b!1450515 (= res!981948 (or (and (= (select (arr!47431 a!2862) index!646) (select (store (arr!47431 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47431 a!2862) index!646) (select (arr!47431 a!2862) j!93))) (not (= (select (arr!47431 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47431 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1450515 e!816801))

(declare-fun res!981946 () Bool)

(assert (=> b!1450515 (=> (not res!981946) (not e!816801))))

(assert (=> b!1450515 (= res!981946 (and (= lt!636292 lt!636291) (or (= (select (arr!47431 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47431 a!2862) intermediateBeforeIndex!19) (select (arr!47431 a!2862) j!93)))))))

(assert (=> b!1450515 (= lt!636291 (Found!11706 j!93))))

(assert (=> b!1450515 (= lt!636292 (seekEntryOrOpen!0 (select (arr!47431 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1450515 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!636294 () Unit!48856)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98295 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48856)

(assert (=> b!1450515 (= lt!636294 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1450516 () Bool)

(declare-fun res!981938 () Bool)

(assert (=> b!1450516 (=> (not res!981938) (not e!816806))))

(declare-datatypes ((List!34112 0))(
  ( (Nil!34109) (Cons!34108 (h!35458 (_ BitVec 64)) (t!48813 List!34112)) )
))
(declare-fun arrayNoDuplicates!0 (array!98295 (_ BitVec 32) List!34112) Bool)

(assert (=> b!1450516 (= res!981938 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34109))))

(assert (= (and start!124930 res!981945) b!1450510))

(assert (= (and b!1450510 res!981941) b!1450509))

(assert (= (and b!1450509 res!981933) b!1450502))

(assert (= (and b!1450502 res!981934) b!1450512))

(assert (= (and b!1450512 res!981939) b!1450516))

(assert (= (and b!1450516 res!981938) b!1450497))

(assert (= (and b!1450497 res!981931) b!1450500))

(assert (= (and b!1450500 res!981936) b!1450505))

(assert (= (and b!1450505 res!981947) b!1450499))

(assert (= (and b!1450499 res!981942) b!1450498))

(assert (= (and b!1450498 res!981932) b!1450514))

(assert (= (and b!1450514 c!133796) b!1450513))

(assert (= (and b!1450514 (not c!133796)) b!1450501))

(assert (= (and b!1450514 res!981944) b!1450508))

(assert (= (and b!1450508 res!981943) b!1450515))

(assert (= (and b!1450515 res!981946) b!1450507))

(assert (= (and b!1450507 (not res!981935)) b!1450503))

(assert (= (and b!1450503 res!981937) b!1450506))

(assert (= (and b!1450515 (not res!981948)) b!1450504))

(assert (= (and b!1450504 (not res!981940)) b!1450511))

(declare-fun m!1339191 () Bool)

(assert (=> b!1450513 m!1339191))

(declare-fun m!1339193 () Bool)

(assert (=> b!1450503 m!1339193))

(assert (=> b!1450503 m!1339193))

(declare-fun m!1339195 () Bool)

(assert (=> b!1450503 m!1339195))

(declare-fun m!1339197 () Bool)

(assert (=> start!124930 m!1339197))

(declare-fun m!1339199 () Bool)

(assert (=> start!124930 m!1339199))

(declare-fun m!1339201 () Bool)

(assert (=> b!1450511 m!1339201))

(declare-fun m!1339203 () Bool)

(assert (=> b!1450511 m!1339203))

(declare-fun m!1339205 () Bool)

(assert (=> b!1450512 m!1339205))

(declare-fun m!1339207 () Bool)

(assert (=> b!1450507 m!1339207))

(declare-fun m!1339209 () Bool)

(assert (=> b!1450507 m!1339209))

(declare-fun m!1339211 () Bool)

(assert (=> b!1450507 m!1339211))

(assert (=> b!1450507 m!1339193))

(declare-fun m!1339213 () Bool)

(assert (=> b!1450516 m!1339213))

(declare-fun m!1339215 () Bool)

(assert (=> b!1450498 m!1339215))

(assert (=> b!1450498 m!1339215))

(declare-fun m!1339217 () Bool)

(assert (=> b!1450498 m!1339217))

(assert (=> b!1450498 m!1339209))

(declare-fun m!1339219 () Bool)

(assert (=> b!1450498 m!1339219))

(assert (=> b!1450504 m!1339193))

(assert (=> b!1450504 m!1339193))

(declare-fun m!1339221 () Bool)

(assert (=> b!1450504 m!1339221))

(assert (=> b!1450502 m!1339193))

(assert (=> b!1450502 m!1339193))

(declare-fun m!1339223 () Bool)

(assert (=> b!1450502 m!1339223))

(declare-fun m!1339225 () Bool)

(assert (=> b!1450509 m!1339225))

(assert (=> b!1450509 m!1339225))

(declare-fun m!1339227 () Bool)

(assert (=> b!1450509 m!1339227))

(assert (=> b!1450499 m!1339193))

(assert (=> b!1450499 m!1339193))

(declare-fun m!1339229 () Bool)

(assert (=> b!1450499 m!1339229))

(assert (=> b!1450505 m!1339193))

(assert (=> b!1450505 m!1339193))

(declare-fun m!1339231 () Bool)

(assert (=> b!1450505 m!1339231))

(assert (=> b!1450505 m!1339231))

(assert (=> b!1450505 m!1339193))

(declare-fun m!1339233 () Bool)

(assert (=> b!1450505 m!1339233))

(assert (=> b!1450500 m!1339209))

(declare-fun m!1339235 () Bool)

(assert (=> b!1450500 m!1339235))

(declare-fun m!1339237 () Bool)

(assert (=> b!1450515 m!1339237))

(assert (=> b!1450515 m!1339209))

(declare-fun m!1339239 () Bool)

(assert (=> b!1450515 m!1339239))

(assert (=> b!1450515 m!1339211))

(assert (=> b!1450515 m!1339207))

(assert (=> b!1450515 m!1339193))

(declare-fun m!1339241 () Bool)

(assert (=> b!1450515 m!1339241))

(declare-fun m!1339243 () Bool)

(assert (=> b!1450515 m!1339243))

(assert (=> b!1450515 m!1339193))

(assert (=> b!1450501 m!1339201))

(declare-fun m!1339245 () Bool)

(assert (=> b!1450501 m!1339245))

(push 1)

