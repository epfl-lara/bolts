; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124788 () Bool)

(assert start!124788)

(declare-datatypes ((SeekEntryResult!11635 0))(
  ( (MissingZero!11635 (index!48931 (_ BitVec 32))) (Found!11635 (index!48932 (_ BitVec 32))) (Intermediate!11635 (undefined!12447 Bool) (index!48933 (_ BitVec 32)) (x!130615 (_ BitVec 32))) (Undefined!11635) (MissingVacant!11635 (index!48934 (_ BitVec 32))) )
))
(declare-fun lt!634752 () SeekEntryResult!11635)

(declare-fun e!814675 () Bool)

(declare-datatypes ((array!98153 0))(
  ( (array!98154 (arr!47360 (Array (_ BitVec 32) (_ BitVec 64))) (size!47911 (_ BitVec 32))) )
))
(declare-fun lt!634750 () array!98153)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun b!1446403 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!634751 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98153 (_ BitVec 32)) SeekEntryResult!11635)

(assert (=> b!1446403 (= e!814675 (= lt!634752 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634751 lt!634750 mask!2687)))))

(declare-fun b!1446404 () Bool)

(declare-fun e!814670 () Bool)

(declare-fun e!814676 () Bool)

(assert (=> b!1446404 (= e!814670 e!814676)))

(declare-fun res!978269 () Bool)

(assert (=> b!1446404 (=> (not res!978269) (not e!814676))))

(declare-fun a!2862 () array!98153)

(declare-fun lt!634756 () SeekEntryResult!11635)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1446404 (= res!978269 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47360 a!2862) j!93) mask!2687) (select (arr!47360 a!2862) j!93) a!2862 mask!2687) lt!634756))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1446404 (= lt!634756 (Intermediate!11635 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1446406 () Bool)

(declare-fun res!978276 () Bool)

(declare-fun e!814671 () Bool)

(assert (=> b!1446406 (=> (not res!978276) (not e!814671))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1446406 (= res!978276 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1446407 () Bool)

(declare-fun res!978274 () Bool)

(declare-fun e!814673 () Bool)

(assert (=> b!1446407 (=> (not res!978274) (not e!814673))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1446407 (= res!978274 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47911 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47911 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47911 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1446408 () Bool)

(declare-fun e!814669 () Bool)

(assert (=> b!1446408 (= e!814671 (not e!814669))))

(declare-fun res!978265 () Bool)

(assert (=> b!1446408 (=> res!978265 e!814669)))

(assert (=> b!1446408 (= res!978265 (or (and (= (select (arr!47360 a!2862) index!646) (select (store (arr!47360 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47360 a!2862) index!646) (select (arr!47360 a!2862) j!93))) (not (= (select (arr!47360 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47360 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!814672 () Bool)

(assert (=> b!1446408 e!814672))

(declare-fun res!978278 () Bool)

(assert (=> b!1446408 (=> (not res!978278) (not e!814672))))

(declare-fun lt!634754 () SeekEntryResult!11635)

(assert (=> b!1446408 (= res!978278 (and (= lt!634754 (Found!11635 j!93)) (or (= (select (arr!47360 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47360 a!2862) intermediateBeforeIndex!19) (select (arr!47360 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98153 (_ BitVec 32)) SeekEntryResult!11635)

(assert (=> b!1446408 (= lt!634754 (seekEntryOrOpen!0 (select (arr!47360 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98153 (_ BitVec 32)) Bool)

(assert (=> b!1446408 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48714 0))(
  ( (Unit!48715) )
))
(declare-fun lt!634755 () Unit!48714)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98153 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48714)

(assert (=> b!1446408 (= lt!634755 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1446409 () Bool)

(assert (=> b!1446409 (= e!814669 true)))

(declare-fun lt!634753 () SeekEntryResult!11635)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98153 (_ BitVec 32)) SeekEntryResult!11635)

(assert (=> b!1446409 (= lt!634753 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47360 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1446410 () Bool)

(declare-fun res!978266 () Bool)

(assert (=> b!1446410 (=> (not res!978266) (not e!814673))))

(assert (=> b!1446410 (= res!978266 (and (= (size!47911 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47911 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47911 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1446411 () Bool)

(declare-fun res!978277 () Bool)

(assert (=> b!1446411 (=> (not res!978277) (not e!814673))))

(assert (=> b!1446411 (= res!978277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1446412 () Bool)

(declare-fun res!978272 () Bool)

(assert (=> b!1446412 (=> (not res!978272) (not e!814673))))

(declare-datatypes ((List!34041 0))(
  ( (Nil!34038) (Cons!34037 (h!35387 (_ BitVec 64)) (t!48742 List!34041)) )
))
(declare-fun arrayNoDuplicates!0 (array!98153 (_ BitVec 32) List!34041) Bool)

(assert (=> b!1446412 (= res!978272 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34038))))

(declare-fun b!1446413 () Bool)

(assert (=> b!1446413 (= e!814676 e!814671)))

(declare-fun res!978271 () Bool)

(assert (=> b!1446413 (=> (not res!978271) (not e!814671))))

(assert (=> b!1446413 (= res!978271 (= lt!634752 (Intermediate!11635 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1446413 (= lt!634752 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634751 mask!2687) lt!634751 lt!634750 mask!2687))))

(assert (=> b!1446413 (= lt!634751 (select (store (arr!47360 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1446414 () Bool)

(declare-fun res!978275 () Bool)

(assert (=> b!1446414 (=> (not res!978275) (not e!814676))))

(assert (=> b!1446414 (= res!978275 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47360 a!2862) j!93) a!2862 mask!2687) lt!634756))))

(declare-fun b!1446415 () Bool)

(declare-fun e!814668 () Bool)

(declare-fun e!814667 () Bool)

(assert (=> b!1446415 (= e!814668 e!814667)))

(declare-fun res!978279 () Bool)

(assert (=> b!1446415 (=> (not res!978279) (not e!814667))))

(assert (=> b!1446415 (= res!978279 (= lt!634754 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47360 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1446416 () Bool)

(assert (=> b!1446416 (= e!814675 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634751 lt!634750 mask!2687) (seekEntryOrOpen!0 lt!634751 lt!634750 mask!2687)))))

(declare-fun b!1446417 () Bool)

(assert (=> b!1446417 (= e!814673 e!814670)))

(declare-fun res!978273 () Bool)

(assert (=> b!1446417 (=> (not res!978273) (not e!814670))))

(assert (=> b!1446417 (= res!978273 (= (select (store (arr!47360 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1446417 (= lt!634750 (array!98154 (store (arr!47360 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47911 a!2862)))))

(declare-fun b!1446405 () Bool)

(declare-fun res!978267 () Bool)

(assert (=> b!1446405 (=> (not res!978267) (not e!814673))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1446405 (= res!978267 (validKeyInArray!0 (select (arr!47360 a!2862) i!1006)))))

(declare-fun res!978263 () Bool)

(assert (=> start!124788 (=> (not res!978263) (not e!814673))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124788 (= res!978263 (validMask!0 mask!2687))))

(assert (=> start!124788 e!814673))

(assert (=> start!124788 true))

(declare-fun array_inv!36305 (array!98153) Bool)

(assert (=> start!124788 (array_inv!36305 a!2862)))

(declare-fun b!1446418 () Bool)

(assert (=> b!1446418 (= e!814672 e!814668)))

(declare-fun res!978264 () Bool)

(assert (=> b!1446418 (=> res!978264 e!814668)))

(assert (=> b!1446418 (= res!978264 (or (and (= (select (arr!47360 a!2862) index!646) (select (store (arr!47360 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47360 a!2862) index!646) (select (arr!47360 a!2862) j!93))) (not (= (select (arr!47360 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1446419 () Bool)

(declare-fun res!978268 () Bool)

(assert (=> b!1446419 (=> (not res!978268) (not e!814671))))

(assert (=> b!1446419 (= res!978268 e!814675)))

(declare-fun c!133583 () Bool)

(assert (=> b!1446419 (= c!133583 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1446420 () Bool)

(assert (=> b!1446420 (= e!814667 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1446421 () Bool)

(declare-fun res!978270 () Bool)

(assert (=> b!1446421 (=> (not res!978270) (not e!814673))))

(assert (=> b!1446421 (= res!978270 (validKeyInArray!0 (select (arr!47360 a!2862) j!93)))))

(assert (= (and start!124788 res!978263) b!1446410))

(assert (= (and b!1446410 res!978266) b!1446405))

(assert (= (and b!1446405 res!978267) b!1446421))

(assert (= (and b!1446421 res!978270) b!1446411))

(assert (= (and b!1446411 res!978277) b!1446412))

(assert (= (and b!1446412 res!978272) b!1446407))

(assert (= (and b!1446407 res!978274) b!1446417))

(assert (= (and b!1446417 res!978273) b!1446404))

(assert (= (and b!1446404 res!978269) b!1446414))

(assert (= (and b!1446414 res!978275) b!1446413))

(assert (= (and b!1446413 res!978271) b!1446419))

(assert (= (and b!1446419 c!133583) b!1446403))

(assert (= (and b!1446419 (not c!133583)) b!1446416))

(assert (= (and b!1446419 res!978268) b!1446406))

(assert (= (and b!1446406 res!978276) b!1446408))

(assert (= (and b!1446408 res!978278) b!1446418))

(assert (= (and b!1446418 (not res!978264)) b!1446415))

(assert (= (and b!1446415 res!978279) b!1446420))

(assert (= (and b!1446408 (not res!978265)) b!1446409))

(declare-fun m!1335327 () Bool)

(assert (=> b!1446413 m!1335327))

(assert (=> b!1446413 m!1335327))

(declare-fun m!1335329 () Bool)

(assert (=> b!1446413 m!1335329))

(declare-fun m!1335331 () Bool)

(assert (=> b!1446413 m!1335331))

(declare-fun m!1335333 () Bool)

(assert (=> b!1446413 m!1335333))

(declare-fun m!1335335 () Bool)

(assert (=> b!1446416 m!1335335))

(declare-fun m!1335337 () Bool)

(assert (=> b!1446416 m!1335337))

(declare-fun m!1335339 () Bool)

(assert (=> start!124788 m!1335339))

(declare-fun m!1335341 () Bool)

(assert (=> start!124788 m!1335341))

(declare-fun m!1335343 () Bool)

(assert (=> b!1446411 m!1335343))

(declare-fun m!1335345 () Bool)

(assert (=> b!1446418 m!1335345))

(assert (=> b!1446418 m!1335331))

(declare-fun m!1335347 () Bool)

(assert (=> b!1446418 m!1335347))

(declare-fun m!1335349 () Bool)

(assert (=> b!1446418 m!1335349))

(assert (=> b!1446421 m!1335349))

(assert (=> b!1446421 m!1335349))

(declare-fun m!1335351 () Bool)

(assert (=> b!1446421 m!1335351))

(assert (=> b!1446409 m!1335349))

(assert (=> b!1446409 m!1335349))

(declare-fun m!1335353 () Bool)

(assert (=> b!1446409 m!1335353))

(assert (=> b!1446417 m!1335331))

(declare-fun m!1335355 () Bool)

(assert (=> b!1446417 m!1335355))

(declare-fun m!1335357 () Bool)

(assert (=> b!1446403 m!1335357))

(declare-fun m!1335359 () Bool)

(assert (=> b!1446405 m!1335359))

(assert (=> b!1446405 m!1335359))

(declare-fun m!1335361 () Bool)

(assert (=> b!1446405 m!1335361))

(assert (=> b!1446414 m!1335349))

(assert (=> b!1446414 m!1335349))

(declare-fun m!1335363 () Bool)

(assert (=> b!1446414 m!1335363))

(assert (=> b!1446404 m!1335349))

(assert (=> b!1446404 m!1335349))

(declare-fun m!1335365 () Bool)

(assert (=> b!1446404 m!1335365))

(assert (=> b!1446404 m!1335365))

(assert (=> b!1446404 m!1335349))

(declare-fun m!1335367 () Bool)

(assert (=> b!1446404 m!1335367))

(declare-fun m!1335369 () Bool)

(assert (=> b!1446412 m!1335369))

(declare-fun m!1335371 () Bool)

(assert (=> b!1446408 m!1335371))

(assert (=> b!1446408 m!1335331))

(declare-fun m!1335373 () Bool)

(assert (=> b!1446408 m!1335373))

(assert (=> b!1446408 m!1335347))

(assert (=> b!1446408 m!1335345))

(assert (=> b!1446408 m!1335349))

(declare-fun m!1335375 () Bool)

(assert (=> b!1446408 m!1335375))

(declare-fun m!1335377 () Bool)

(assert (=> b!1446408 m!1335377))

(assert (=> b!1446408 m!1335349))

(assert (=> b!1446415 m!1335349))

(assert (=> b!1446415 m!1335349))

(declare-fun m!1335379 () Bool)

(assert (=> b!1446415 m!1335379))

(check-sat (not b!1446405) (not b!1446404) (not b!1446414) (not b!1446413) (not b!1446411) (not b!1446421) (not b!1446416) (not start!124788) (not b!1446412) (not b!1446408) (not b!1446415) (not b!1446409) (not b!1446403))
(check-sat)
