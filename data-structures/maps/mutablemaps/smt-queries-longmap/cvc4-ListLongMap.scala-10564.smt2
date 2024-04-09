; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124568 () Bool)

(assert start!124568)

(declare-fun b!1440940 () Bool)

(declare-fun res!973465 () Bool)

(declare-fun e!812362 () Bool)

(assert (=> b!1440940 (=> (not res!973465) (not e!812362))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97933 0))(
  ( (array!97934 (arr!47250 (Array (_ BitVec 32) (_ BitVec 64))) (size!47801 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97933)

(assert (=> b!1440940 (= res!973465 (and (= (size!47801 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47801 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47801 a!2862)) (not (= i!1006 j!93))))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!633020 () array!97933)

(declare-fun lt!633021 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1440941 () Bool)

(declare-fun e!812364 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11525 0))(
  ( (MissingZero!11525 (index!48491 (_ BitVec 32))) (Found!11525 (index!48492 (_ BitVec 32))) (Intermediate!11525 (undefined!12337 Bool) (index!48493 (_ BitVec 32)) (x!130209 (_ BitVec 32))) (Undefined!11525) (MissingVacant!11525 (index!48494 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97933 (_ BitVec 32)) SeekEntryResult!11525)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97933 (_ BitVec 32)) SeekEntryResult!11525)

(assert (=> b!1440941 (= e!812364 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633021 lt!633020 mask!2687) (seekEntryOrOpen!0 lt!633021 lt!633020 mask!2687))))))

(declare-fun b!1440942 () Bool)

(declare-fun e!812361 () Bool)

(assert (=> b!1440942 (= e!812361 false)))

(declare-fun lt!633022 () Bool)

(assert (=> b!1440942 (= lt!633022 e!812364)))

(declare-fun c!133253 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1440942 (= c!133253 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1440943 () Bool)

(declare-fun e!812363 () Bool)

(declare-fun e!812365 () Bool)

(assert (=> b!1440943 (= e!812363 e!812365)))

(declare-fun res!973470 () Bool)

(assert (=> b!1440943 (=> (not res!973470) (not e!812365))))

(declare-fun lt!633019 () SeekEntryResult!11525)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97933 (_ BitVec 32)) SeekEntryResult!11525)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440943 (= res!973470 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47250 a!2862) j!93) mask!2687) (select (arr!47250 a!2862) j!93) a!2862 mask!2687) lt!633019))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1440943 (= lt!633019 (Intermediate!11525 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1440944 () Bool)

(declare-fun res!973464 () Bool)

(assert (=> b!1440944 (=> (not res!973464) (not e!812362))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97933 (_ BitVec 32)) Bool)

(assert (=> b!1440944 (= res!973464 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1440945 () Bool)

(declare-fun res!973467 () Bool)

(assert (=> b!1440945 (=> (not res!973467) (not e!812362))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440945 (= res!973467 (validKeyInArray!0 (select (arr!47250 a!2862) i!1006)))))

(declare-fun b!1440946 () Bool)

(assert (=> b!1440946 (= e!812362 e!812363)))

(declare-fun res!973469 () Bool)

(assert (=> b!1440946 (=> (not res!973469) (not e!812363))))

(assert (=> b!1440946 (= res!973469 (= (select (store (arr!47250 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1440946 (= lt!633020 (array!97934 (store (arr!47250 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47801 a!2862)))))

(declare-fun res!973466 () Bool)

(assert (=> start!124568 (=> (not res!973466) (not e!812362))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124568 (= res!973466 (validMask!0 mask!2687))))

(assert (=> start!124568 e!812362))

(assert (=> start!124568 true))

(declare-fun array_inv!36195 (array!97933) Bool)

(assert (=> start!124568 (array_inv!36195 a!2862)))

(declare-fun b!1440947 () Bool)

(assert (=> b!1440947 (= e!812365 e!812361)))

(declare-fun res!973461 () Bool)

(assert (=> b!1440947 (=> (not res!973461) (not e!812361))))

(declare-fun lt!633018 () SeekEntryResult!11525)

(assert (=> b!1440947 (= res!973461 (= lt!633018 (Intermediate!11525 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1440947 (= lt!633018 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633021 mask!2687) lt!633021 lt!633020 mask!2687))))

(assert (=> b!1440947 (= lt!633021 (select (store (arr!47250 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1440948 () Bool)

(declare-fun res!973460 () Bool)

(assert (=> b!1440948 (=> (not res!973460) (not e!812362))))

(declare-datatypes ((List!33931 0))(
  ( (Nil!33928) (Cons!33927 (h!35277 (_ BitVec 64)) (t!48632 List!33931)) )
))
(declare-fun arrayNoDuplicates!0 (array!97933 (_ BitVec 32) List!33931) Bool)

(assert (=> b!1440948 (= res!973460 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33928))))

(declare-fun b!1440949 () Bool)

(declare-fun res!973463 () Bool)

(assert (=> b!1440949 (=> (not res!973463) (not e!812365))))

(assert (=> b!1440949 (= res!973463 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47250 a!2862) j!93) a!2862 mask!2687) lt!633019))))

(declare-fun b!1440950 () Bool)

(declare-fun res!973468 () Bool)

(assert (=> b!1440950 (=> (not res!973468) (not e!812362))))

(assert (=> b!1440950 (= res!973468 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47801 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47801 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47801 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1440951 () Bool)

(assert (=> b!1440951 (= e!812364 (not (= lt!633018 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633021 lt!633020 mask!2687))))))

(declare-fun b!1440952 () Bool)

(declare-fun res!973462 () Bool)

(assert (=> b!1440952 (=> (not res!973462) (not e!812362))))

(assert (=> b!1440952 (= res!973462 (validKeyInArray!0 (select (arr!47250 a!2862) j!93)))))

(assert (= (and start!124568 res!973466) b!1440940))

(assert (= (and b!1440940 res!973465) b!1440945))

(assert (= (and b!1440945 res!973467) b!1440952))

(assert (= (and b!1440952 res!973462) b!1440944))

(assert (= (and b!1440944 res!973464) b!1440948))

(assert (= (and b!1440948 res!973460) b!1440950))

(assert (= (and b!1440950 res!973468) b!1440946))

(assert (= (and b!1440946 res!973469) b!1440943))

(assert (= (and b!1440943 res!973470) b!1440949))

(assert (= (and b!1440949 res!973463) b!1440947))

(assert (= (and b!1440947 res!973461) b!1440942))

(assert (= (and b!1440942 c!133253) b!1440951))

(assert (= (and b!1440942 (not c!133253)) b!1440941))

(declare-fun m!1330231 () Bool)

(assert (=> b!1440941 m!1330231))

(declare-fun m!1330233 () Bool)

(assert (=> b!1440941 m!1330233))

(declare-fun m!1330235 () Bool)

(assert (=> b!1440946 m!1330235))

(declare-fun m!1330237 () Bool)

(assert (=> b!1440946 m!1330237))

(declare-fun m!1330239 () Bool)

(assert (=> b!1440952 m!1330239))

(assert (=> b!1440952 m!1330239))

(declare-fun m!1330241 () Bool)

(assert (=> b!1440952 m!1330241))

(declare-fun m!1330243 () Bool)

(assert (=> b!1440948 m!1330243))

(declare-fun m!1330245 () Bool)

(assert (=> b!1440947 m!1330245))

(assert (=> b!1440947 m!1330245))

(declare-fun m!1330247 () Bool)

(assert (=> b!1440947 m!1330247))

(assert (=> b!1440947 m!1330235))

(declare-fun m!1330249 () Bool)

(assert (=> b!1440947 m!1330249))

(declare-fun m!1330251 () Bool)

(assert (=> b!1440944 m!1330251))

(declare-fun m!1330253 () Bool)

(assert (=> start!124568 m!1330253))

(declare-fun m!1330255 () Bool)

(assert (=> start!124568 m!1330255))

(assert (=> b!1440949 m!1330239))

(assert (=> b!1440949 m!1330239))

(declare-fun m!1330257 () Bool)

(assert (=> b!1440949 m!1330257))

(declare-fun m!1330259 () Bool)

(assert (=> b!1440951 m!1330259))

(declare-fun m!1330261 () Bool)

(assert (=> b!1440945 m!1330261))

(assert (=> b!1440945 m!1330261))

(declare-fun m!1330263 () Bool)

(assert (=> b!1440945 m!1330263))

(assert (=> b!1440943 m!1330239))

(assert (=> b!1440943 m!1330239))

(declare-fun m!1330265 () Bool)

(assert (=> b!1440943 m!1330265))

(assert (=> b!1440943 m!1330265))

(assert (=> b!1440943 m!1330239))

(declare-fun m!1330267 () Bool)

(assert (=> b!1440943 m!1330267))

(push 1)

(assert (not b!1440943))

(assert (not b!1440941))

