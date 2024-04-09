; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124664 () Bool)

(assert start!124664)

(declare-fun b!1443176 () Bool)

(declare-fun e!813306 () Bool)

(declare-fun e!813309 () Bool)

(assert (=> b!1443176 (= e!813306 e!813309)))

(declare-fun res!975421 () Bool)

(assert (=> b!1443176 (=> (not res!975421) (not e!813309))))

(declare-datatypes ((SeekEntryResult!11573 0))(
  ( (MissingZero!11573 (index!48683 (_ BitVec 32))) (Found!11573 (index!48684 (_ BitVec 32))) (Intermediate!11573 (undefined!12385 Bool) (index!48685 (_ BitVec 32)) (x!130385 (_ BitVec 32))) (Undefined!11573) (MissingVacant!11573 (index!48686 (_ BitVec 32))) )
))
(declare-fun lt!633738 () SeekEntryResult!11573)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1443176 (= res!975421 (= lt!633738 (Intermediate!11573 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-datatypes ((array!98029 0))(
  ( (array!98030 (arr!47298 (Array (_ BitVec 32) (_ BitVec 64))) (size!47849 (_ BitVec 32))) )
))
(declare-fun lt!633741 () array!98029)

(declare-fun lt!633742 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98029 (_ BitVec 32)) SeekEntryResult!11573)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1443176 (= lt!633738 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633742 mask!2687) lt!633742 lt!633741 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98029)

(assert (=> b!1443176 (= lt!633742 (select (store (arr!47298 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1443177 () Bool)

(declare-fun e!813310 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1443177 (= e!813310 (validKeyInArray!0 lt!633742))))

(declare-fun res!975414 () Bool)

(declare-fun e!813311 () Bool)

(assert (=> start!124664 (=> (not res!975414) (not e!813311))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124664 (= res!975414 (validMask!0 mask!2687))))

(assert (=> start!124664 e!813311))

(assert (=> start!124664 true))

(declare-fun array_inv!36243 (array!98029) Bool)

(assert (=> start!124664 (array_inv!36243 a!2862)))

(declare-fun b!1443178 () Bool)

(declare-fun res!975417 () Bool)

(assert (=> b!1443178 (=> (not res!975417) (not e!813309))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1443178 (= res!975417 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1443179 () Bool)

(declare-fun res!975418 () Bool)

(assert (=> b!1443179 (=> (not res!975418) (not e!813311))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98029 (_ BitVec 32)) Bool)

(assert (=> b!1443179 (= res!975418 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun e!813307 () Bool)

(declare-fun b!1443180 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1443180 (= e!813307 (= lt!633738 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633742 lt!633741 mask!2687)))))

(declare-fun b!1443181 () Bool)

(declare-fun res!975413 () Bool)

(assert (=> b!1443181 (=> (not res!975413) (not e!813311))))

(assert (=> b!1443181 (= res!975413 (validKeyInArray!0 (select (arr!47298 a!2862) i!1006)))))

(declare-fun b!1443182 () Bool)

(declare-fun res!975410 () Bool)

(assert (=> b!1443182 (=> (not res!975410) (not e!813311))))

(declare-datatypes ((List!33979 0))(
  ( (Nil!33976) (Cons!33975 (h!35325 (_ BitVec 64)) (t!48680 List!33979)) )
))
(declare-fun arrayNoDuplicates!0 (array!98029 (_ BitVec 32) List!33979) Bool)

(assert (=> b!1443182 (= res!975410 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33976))))

(declare-fun b!1443183 () Bool)

(declare-fun e!813304 () Bool)

(assert (=> b!1443183 (= e!813304 e!813306)))

(declare-fun res!975412 () Bool)

(assert (=> b!1443183 (=> (not res!975412) (not e!813306))))

(declare-fun lt!633739 () SeekEntryResult!11573)

(assert (=> b!1443183 (= res!975412 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47298 a!2862) j!93) mask!2687) (select (arr!47298 a!2862) j!93) a!2862 mask!2687) lt!633739))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1443183 (= lt!633739 (Intermediate!11573 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1443184 () Bool)

(declare-fun res!975416 () Bool)

(assert (=> b!1443184 (=> (not res!975416) (not e!813311))))

(assert (=> b!1443184 (= res!975416 (and (= (size!47849 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47849 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47849 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1443185 () Bool)

(declare-fun res!975415 () Bool)

(declare-fun e!813308 () Bool)

(assert (=> b!1443185 (=> (not res!975415) (not e!813308))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98029 (_ BitVec 32)) SeekEntryResult!11573)

(assert (=> b!1443185 (= res!975415 (= (seekEntryOrOpen!0 (select (arr!47298 a!2862) j!93) a!2862 mask!2687) (Found!11573 j!93)))))

(declare-fun b!1443186 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98029 (_ BitVec 32)) SeekEntryResult!11573)

(assert (=> b!1443186 (= e!813307 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633742 lt!633741 mask!2687) (seekEntryOrOpen!0 lt!633742 lt!633741 mask!2687)))))

(declare-fun b!1443187 () Bool)

(declare-fun res!975422 () Bool)

(assert (=> b!1443187 (=> (not res!975422) (not e!813311))))

(assert (=> b!1443187 (= res!975422 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47849 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47849 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47849 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1443188 () Bool)

(assert (=> b!1443188 (= e!813308 (or (= (select (arr!47298 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47298 a!2862) intermediateBeforeIndex!19) (select (arr!47298 a!2862) j!93))))))

(declare-fun b!1443189 () Bool)

(declare-fun res!975411 () Bool)

(assert (=> b!1443189 (=> (not res!975411) (not e!813309))))

(assert (=> b!1443189 (= res!975411 e!813307)))

(declare-fun c!133397 () Bool)

(assert (=> b!1443189 (= c!133397 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1443190 () Bool)

(declare-fun res!975419 () Bool)

(assert (=> b!1443190 (=> (not res!975419) (not e!813306))))

(assert (=> b!1443190 (= res!975419 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47298 a!2862) j!93) a!2862 mask!2687) lt!633739))))

(declare-fun b!1443191 () Bool)

(assert (=> b!1443191 (= e!813309 (not e!813310))))

(declare-fun res!975408 () Bool)

(assert (=> b!1443191 (=> res!975408 e!813310)))

(assert (=> b!1443191 (= res!975408 (or (not (= (select (arr!47298 a!2862) index!646) (select (store (arr!47298 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47298 a!2862) index!646) (select (arr!47298 a!2862) j!93))) (bvslt mask!2687 #b00000000000000000000000000000000)))))

(assert (=> b!1443191 e!813308))

(declare-fun res!975409 () Bool)

(assert (=> b!1443191 (=> (not res!975409) (not e!813308))))

(assert (=> b!1443191 (= res!975409 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48590 0))(
  ( (Unit!48591) )
))
(declare-fun lt!633740 () Unit!48590)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98029 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48590)

(assert (=> b!1443191 (= lt!633740 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1443192 () Bool)

(declare-fun res!975423 () Bool)

(assert (=> b!1443192 (=> (not res!975423) (not e!813311))))

(assert (=> b!1443192 (= res!975423 (validKeyInArray!0 (select (arr!47298 a!2862) j!93)))))

(declare-fun b!1443193 () Bool)

(assert (=> b!1443193 (= e!813311 e!813304)))

(declare-fun res!975420 () Bool)

(assert (=> b!1443193 (=> (not res!975420) (not e!813304))))

(assert (=> b!1443193 (= res!975420 (= (select (store (arr!47298 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1443193 (= lt!633741 (array!98030 (store (arr!47298 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47849 a!2862)))))

(assert (= (and start!124664 res!975414) b!1443184))

(assert (= (and b!1443184 res!975416) b!1443181))

(assert (= (and b!1443181 res!975413) b!1443192))

(assert (= (and b!1443192 res!975423) b!1443179))

(assert (= (and b!1443179 res!975418) b!1443182))

(assert (= (and b!1443182 res!975410) b!1443187))

(assert (= (and b!1443187 res!975422) b!1443193))

(assert (= (and b!1443193 res!975420) b!1443183))

(assert (= (and b!1443183 res!975412) b!1443190))

(assert (= (and b!1443190 res!975419) b!1443176))

(assert (= (and b!1443176 res!975421) b!1443189))

(assert (= (and b!1443189 c!133397) b!1443180))

(assert (= (and b!1443189 (not c!133397)) b!1443186))

(assert (= (and b!1443189 res!975411) b!1443178))

(assert (= (and b!1443178 res!975417) b!1443191))

(assert (= (and b!1443191 res!975409) b!1443185))

(assert (= (and b!1443185 res!975415) b!1443188))

(assert (= (and b!1443191 (not res!975408)) b!1443177))

(declare-fun m!1332323 () Bool)

(assert (=> b!1443183 m!1332323))

(assert (=> b!1443183 m!1332323))

(declare-fun m!1332325 () Bool)

(assert (=> b!1443183 m!1332325))

(assert (=> b!1443183 m!1332325))

(assert (=> b!1443183 m!1332323))

(declare-fun m!1332327 () Bool)

(assert (=> b!1443183 m!1332327))

(declare-fun m!1332329 () Bool)

(assert (=> b!1443186 m!1332329))

(declare-fun m!1332331 () Bool)

(assert (=> b!1443186 m!1332331))

(declare-fun m!1332333 () Bool)

(assert (=> b!1443181 m!1332333))

(assert (=> b!1443181 m!1332333))

(declare-fun m!1332335 () Bool)

(assert (=> b!1443181 m!1332335))

(declare-fun m!1332337 () Bool)

(assert (=> b!1443182 m!1332337))

(declare-fun m!1332339 () Bool)

(assert (=> b!1443177 m!1332339))

(assert (=> b!1443192 m!1332323))

(assert (=> b!1443192 m!1332323))

(declare-fun m!1332341 () Bool)

(assert (=> b!1443192 m!1332341))

(assert (=> b!1443190 m!1332323))

(assert (=> b!1443190 m!1332323))

(declare-fun m!1332343 () Bool)

(assert (=> b!1443190 m!1332343))

(declare-fun m!1332345 () Bool)

(assert (=> b!1443176 m!1332345))

(assert (=> b!1443176 m!1332345))

(declare-fun m!1332347 () Bool)

(assert (=> b!1443176 m!1332347))

(declare-fun m!1332349 () Bool)

(assert (=> b!1443176 m!1332349))

(declare-fun m!1332351 () Bool)

(assert (=> b!1443176 m!1332351))

(declare-fun m!1332353 () Bool)

(assert (=> start!124664 m!1332353))

(declare-fun m!1332355 () Bool)

(assert (=> start!124664 m!1332355))

(declare-fun m!1332357 () Bool)

(assert (=> b!1443191 m!1332357))

(assert (=> b!1443191 m!1332349))

(declare-fun m!1332359 () Bool)

(assert (=> b!1443191 m!1332359))

(declare-fun m!1332361 () Bool)

(assert (=> b!1443191 m!1332361))

(declare-fun m!1332363 () Bool)

(assert (=> b!1443191 m!1332363))

(assert (=> b!1443191 m!1332323))

(assert (=> b!1443193 m!1332349))

(declare-fun m!1332365 () Bool)

(assert (=> b!1443193 m!1332365))

(declare-fun m!1332367 () Bool)

(assert (=> b!1443188 m!1332367))

(assert (=> b!1443188 m!1332323))

(declare-fun m!1332369 () Bool)

(assert (=> b!1443179 m!1332369))

(assert (=> b!1443185 m!1332323))

(assert (=> b!1443185 m!1332323))

(declare-fun m!1332371 () Bool)

(assert (=> b!1443185 m!1332371))

(declare-fun m!1332373 () Bool)

(assert (=> b!1443180 m!1332373))

(push 1)

(assert (not b!1443183))

(assert (not b!1443181))

