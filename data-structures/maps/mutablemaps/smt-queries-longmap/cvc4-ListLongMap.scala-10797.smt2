; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126416 () Bool)

(assert start!126416)

(declare-fun b!1481277 () Bool)

(declare-fun res!1006721 () Bool)

(declare-fun e!830831 () Bool)

(assert (=> b!1481277 (=> (not res!1006721) (not e!830831))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99352 0))(
  ( (array!99353 (arr!47949 (Array (_ BitVec 32) (_ BitVec 64))) (size!48500 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99352)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12212 0))(
  ( (MissingZero!12212 (index!51239 (_ BitVec 32))) (Found!12212 (index!51240 (_ BitVec 32))) (Intermediate!12212 (undefined!13024 Bool) (index!51241 (_ BitVec 32)) (x!132826 (_ BitVec 32))) (Undefined!12212) (MissingVacant!12212 (index!51242 (_ BitVec 32))) )
))
(declare-fun lt!646692 () SeekEntryResult!12212)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99352 (_ BitVec 32)) SeekEntryResult!12212)

(assert (=> b!1481277 (= res!1006721 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47949 a!2862) j!93) a!2862 mask!2687) lt!646692))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun e!830828 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun b!1481278 () Bool)

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1481278 (= e!830828 (and (or (= (select (arr!47949 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47949 a!2862) intermediateBeforeIndex!19) (select (arr!47949 a!2862) j!93))) (or (and (= (select (arr!47949 a!2862) index!646) (select (store (arr!47949 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47949 a!2862) index!646) (select (arr!47949 a!2862) j!93))) (= (select (arr!47949 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (= index!646 intermediateAfterIndex!19))))))

(declare-fun b!1481279 () Bool)

(declare-fun e!830829 () Bool)

(assert (=> b!1481279 (= e!830831 e!830829)))

(declare-fun res!1006734 () Bool)

(assert (=> b!1481279 (=> (not res!1006734) (not e!830829))))

(declare-fun lt!646695 () SeekEntryResult!12212)

(assert (=> b!1481279 (= res!1006734 (= lt!646695 (Intermediate!12212 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!646693 () (_ BitVec 64))

(declare-fun lt!646696 () array!99352)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1481279 (= lt!646695 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646693 mask!2687) lt!646693 lt!646696 mask!2687))))

(assert (=> b!1481279 (= lt!646693 (select (store (arr!47949 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1481280 () Bool)

(declare-fun res!1006724 () Bool)

(declare-fun e!830830 () Bool)

(assert (=> b!1481280 (=> (not res!1006724) (not e!830830))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1481280 (= res!1006724 (validKeyInArray!0 (select (arr!47949 a!2862) j!93)))))

(declare-fun b!1481281 () Bool)

(declare-fun e!830825 () Bool)

(assert (=> b!1481281 (= e!830825 e!830831)))

(declare-fun res!1006732 () Bool)

(assert (=> b!1481281 (=> (not res!1006732) (not e!830831))))

(assert (=> b!1481281 (= res!1006732 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47949 a!2862) j!93) mask!2687) (select (arr!47949 a!2862) j!93) a!2862 mask!2687) lt!646692))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1481281 (= lt!646692 (Intermediate!12212 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun e!830827 () Bool)

(declare-fun b!1481282 () Bool)

(assert (=> b!1481282 (= e!830827 (= lt!646695 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646693 lt!646696 mask!2687)))))

(declare-fun b!1481283 () Bool)

(declare-fun res!1006723 () Bool)

(assert (=> b!1481283 (=> (not res!1006723) (not e!830830))))

(assert (=> b!1481283 (= res!1006723 (and (= (size!48500 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48500 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48500 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1481284 () Bool)

(declare-fun res!1006733 () Bool)

(assert (=> b!1481284 (=> (not res!1006733) (not e!830830))))

(assert (=> b!1481284 (= res!1006733 (validKeyInArray!0 (select (arr!47949 a!2862) i!1006)))))

(declare-fun b!1481285 () Bool)

(assert (=> b!1481285 (= e!830829 (not true))))

(assert (=> b!1481285 e!830828))

(declare-fun res!1006725 () Bool)

(assert (=> b!1481285 (=> (not res!1006725) (not e!830828))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99352 (_ BitVec 32)) Bool)

(assert (=> b!1481285 (= res!1006725 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49712 0))(
  ( (Unit!49713) )
))
(declare-fun lt!646694 () Unit!49712)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99352 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49712)

(assert (=> b!1481285 (= lt!646694 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1481286 () Bool)

(declare-fun res!1006730 () Bool)

(assert (=> b!1481286 (=> (not res!1006730) (not e!830828))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99352 (_ BitVec 32)) SeekEntryResult!12212)

(assert (=> b!1481286 (= res!1006730 (= (seekEntryOrOpen!0 (select (arr!47949 a!2862) j!93) a!2862 mask!2687) (Found!12212 j!93)))))

(declare-fun b!1481287 () Bool)

(declare-fun res!1006726 () Bool)

(assert (=> b!1481287 (=> (not res!1006726) (not e!830830))))

(assert (=> b!1481287 (= res!1006726 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48500 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48500 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48500 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1481288 () Bool)

(declare-fun res!1006722 () Bool)

(assert (=> b!1481288 (=> (not res!1006722) (not e!830829))))

(assert (=> b!1481288 (= res!1006722 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1481289 () Bool)

(assert (=> b!1481289 (= e!830830 e!830825)))

(declare-fun res!1006720 () Bool)

(assert (=> b!1481289 (=> (not res!1006720) (not e!830825))))

(assert (=> b!1481289 (= res!1006720 (= (select (store (arr!47949 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1481289 (= lt!646696 (array!99353 (store (arr!47949 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48500 a!2862)))))

(declare-fun b!1481290 () Bool)

(declare-fun res!1006727 () Bool)

(assert (=> b!1481290 (=> (not res!1006727) (not e!830830))))

(assert (=> b!1481290 (= res!1006727 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1481291 () Bool)

(declare-fun res!1006731 () Bool)

(assert (=> b!1481291 (=> (not res!1006731) (not e!830829))))

(assert (=> b!1481291 (= res!1006731 e!830827)))

(declare-fun c!136802 () Bool)

(assert (=> b!1481291 (= c!136802 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1481292 () Bool)

(declare-fun res!1006729 () Bool)

(assert (=> b!1481292 (=> (not res!1006729) (not e!830830))))

(declare-datatypes ((List!34630 0))(
  ( (Nil!34627) (Cons!34626 (h!35997 (_ BitVec 64)) (t!49331 List!34630)) )
))
(declare-fun arrayNoDuplicates!0 (array!99352 (_ BitVec 32) List!34630) Bool)

(assert (=> b!1481292 (= res!1006729 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34627))))

(declare-fun res!1006728 () Bool)

(assert (=> start!126416 (=> (not res!1006728) (not e!830830))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126416 (= res!1006728 (validMask!0 mask!2687))))

(assert (=> start!126416 e!830830))

(assert (=> start!126416 true))

(declare-fun array_inv!36894 (array!99352) Bool)

(assert (=> start!126416 (array_inv!36894 a!2862)))

(declare-fun b!1481293 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99352 (_ BitVec 32)) SeekEntryResult!12212)

(assert (=> b!1481293 (= e!830827 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646693 lt!646696 mask!2687) (seekEntryOrOpen!0 lt!646693 lt!646696 mask!2687)))))

(assert (= (and start!126416 res!1006728) b!1481283))

(assert (= (and b!1481283 res!1006723) b!1481284))

(assert (= (and b!1481284 res!1006733) b!1481280))

(assert (= (and b!1481280 res!1006724) b!1481290))

(assert (= (and b!1481290 res!1006727) b!1481292))

(assert (= (and b!1481292 res!1006729) b!1481287))

(assert (= (and b!1481287 res!1006726) b!1481289))

(assert (= (and b!1481289 res!1006720) b!1481281))

(assert (= (and b!1481281 res!1006732) b!1481277))

(assert (= (and b!1481277 res!1006721) b!1481279))

(assert (= (and b!1481279 res!1006734) b!1481291))

(assert (= (and b!1481291 c!136802) b!1481282))

(assert (= (and b!1481291 (not c!136802)) b!1481293))

(assert (= (and b!1481291 res!1006731) b!1481288))

(assert (= (and b!1481288 res!1006722) b!1481285))

(assert (= (and b!1481285 res!1006725) b!1481286))

(assert (= (and b!1481286 res!1006730) b!1481278))

(declare-fun m!1367077 () Bool)

(assert (=> b!1481285 m!1367077))

(declare-fun m!1367079 () Bool)

(assert (=> b!1481285 m!1367079))

(declare-fun m!1367081 () Bool)

(assert (=> b!1481280 m!1367081))

(assert (=> b!1481280 m!1367081))

(declare-fun m!1367083 () Bool)

(assert (=> b!1481280 m!1367083))

(declare-fun m!1367085 () Bool)

(assert (=> b!1481279 m!1367085))

(assert (=> b!1481279 m!1367085))

(declare-fun m!1367087 () Bool)

(assert (=> b!1481279 m!1367087))

(declare-fun m!1367089 () Bool)

(assert (=> b!1481279 m!1367089))

(declare-fun m!1367091 () Bool)

(assert (=> b!1481279 m!1367091))

(declare-fun m!1367093 () Bool)

(assert (=> b!1481293 m!1367093))

(declare-fun m!1367095 () Bool)

(assert (=> b!1481293 m!1367095))

(declare-fun m!1367097 () Bool)

(assert (=> b!1481292 m!1367097))

(declare-fun m!1367099 () Bool)

(assert (=> b!1481290 m!1367099))

(assert (=> b!1481286 m!1367081))

(assert (=> b!1481286 m!1367081))

(declare-fun m!1367101 () Bool)

(assert (=> b!1481286 m!1367101))

(declare-fun m!1367103 () Bool)

(assert (=> start!126416 m!1367103))

(declare-fun m!1367105 () Bool)

(assert (=> start!126416 m!1367105))

(assert (=> b!1481278 m!1367089))

(declare-fun m!1367107 () Bool)

(assert (=> b!1481278 m!1367107))

(declare-fun m!1367109 () Bool)

(assert (=> b!1481278 m!1367109))

(declare-fun m!1367111 () Bool)

(assert (=> b!1481278 m!1367111))

(assert (=> b!1481278 m!1367081))

(declare-fun m!1367113 () Bool)

(assert (=> b!1481284 m!1367113))

(assert (=> b!1481284 m!1367113))

(declare-fun m!1367115 () Bool)

(assert (=> b!1481284 m!1367115))

(declare-fun m!1367117 () Bool)

(assert (=> b!1481282 m!1367117))

(assert (=> b!1481289 m!1367089))

(declare-fun m!1367119 () Bool)

(assert (=> b!1481289 m!1367119))

(assert (=> b!1481281 m!1367081))

(assert (=> b!1481281 m!1367081))

(declare-fun m!1367121 () Bool)

(assert (=> b!1481281 m!1367121))

(assert (=> b!1481281 m!1367121))

(assert (=> b!1481281 m!1367081))

(declare-fun m!1367123 () Bool)

(assert (=> b!1481281 m!1367123))

(assert (=> b!1481277 m!1367081))

(assert (=> b!1481277 m!1367081))

(declare-fun m!1367125 () Bool)

(assert (=> b!1481277 m!1367125))

(push 1)

