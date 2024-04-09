; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125064 () Bool)

(assert start!125064)

(declare-fun b!1454284 () Bool)

(declare-fun res!985261 () Bool)

(declare-fun e!818480 () Bool)

(assert (=> b!1454284 (=> (not res!985261) (not e!818480))))

(declare-datatypes ((array!98429 0))(
  ( (array!98430 (arr!47498 (Array (_ BitVec 32) (_ BitVec 64))) (size!48049 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98429)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98429 (_ BitVec 32)) Bool)

(assert (=> b!1454284 (= res!985261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1454285 () Bool)

(declare-fun res!985266 () Bool)

(declare-fun e!818478 () Bool)

(assert (=> b!1454285 (=> (not res!985266) (not e!818478))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1454285 (= res!985266 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1454286 () Bool)

(declare-fun res!985252 () Bool)

(assert (=> b!1454286 (=> (not res!985252) (not e!818480))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1454286 (= res!985252 (validKeyInArray!0 (select (arr!47498 a!2862) j!93)))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!818476 () Bool)

(declare-fun b!1454287 () Bool)

(declare-fun lt!637500 () (_ BitVec 64))

(declare-fun lt!637506 () array!98429)

(declare-datatypes ((SeekEntryResult!11773 0))(
  ( (MissingZero!11773 (index!49483 (_ BitVec 32))) (Found!11773 (index!49484 (_ BitVec 32))) (Intermediate!11773 (undefined!12585 Bool) (index!49485 (_ BitVec 32)) (x!131121 (_ BitVec 32))) (Undefined!11773) (MissingVacant!11773 (index!49486 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98429 (_ BitVec 32)) SeekEntryResult!11773)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98429 (_ BitVec 32)) SeekEntryResult!11773)

(assert (=> b!1454287 (= e!818476 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637500 lt!637506 mask!2687) (seekEntryOrOpen!0 lt!637500 lt!637506 mask!2687)))))

(declare-fun b!1454288 () Bool)

(declare-fun e!818481 () Bool)

(assert (=> b!1454288 (= e!818481 e!818478)))

(declare-fun res!985264 () Bool)

(assert (=> b!1454288 (=> (not res!985264) (not e!818478))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!637503 () SeekEntryResult!11773)

(assert (=> b!1454288 (= res!985264 (= lt!637503 (Intermediate!11773 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98429 (_ BitVec 32)) SeekEntryResult!11773)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1454288 (= lt!637503 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637500 mask!2687) lt!637500 lt!637506 mask!2687))))

(assert (=> b!1454288 (= lt!637500 (select (store (arr!47498 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun lt!637505 () SeekEntryResult!11773)

(declare-fun b!1454290 () Bool)

(declare-fun lt!637501 () (_ BitVec 32))

(declare-fun e!818474 () Bool)

(assert (=> b!1454290 (= e!818474 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637501 intermediateAfterIndex!19 lt!637500 lt!637506 mask!2687) lt!637505)))))

(declare-fun b!1454291 () Bool)

(declare-fun e!818477 () Bool)

(assert (=> b!1454291 (= e!818477 true)))

(declare-fun lt!637502 () Bool)

(assert (=> b!1454291 (= lt!637502 e!818474)))

(declare-fun c!134029 () Bool)

(assert (=> b!1454291 (= c!134029 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1454292 () Bool)

(declare-fun e!818482 () Bool)

(assert (=> b!1454292 (= e!818482 e!818477)))

(declare-fun res!985256 () Bool)

(assert (=> b!1454292 (=> res!985256 e!818477)))

(assert (=> b!1454292 (= res!985256 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!637501 #b00000000000000000000000000000000) (bvsge lt!637501 (size!48049 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1454292 (= lt!637501 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1454292 (= lt!637505 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637500 lt!637506 mask!2687))))

(assert (=> b!1454292 (= lt!637505 (seekEntryOrOpen!0 lt!637500 lt!637506 mask!2687))))

(declare-fun b!1454293 () Bool)

(declare-fun res!985267 () Bool)

(declare-fun e!818479 () Bool)

(assert (=> b!1454293 (=> (not res!985267) (not e!818479))))

(assert (=> b!1454293 (= res!985267 (= (seekEntryOrOpen!0 (select (arr!47498 a!2862) j!93) a!2862 mask!2687) (Found!11773 j!93)))))

(declare-fun b!1454294 () Bool)

(declare-fun res!985255 () Bool)

(assert (=> b!1454294 (=> (not res!985255) (not e!818480))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1454294 (= res!985255 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48049 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48049 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48049 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1454295 () Bool)

(assert (=> b!1454295 (= e!818476 (= lt!637503 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637500 lt!637506 mask!2687)))))

(declare-fun b!1454296 () Bool)

(declare-fun res!985257 () Bool)

(assert (=> b!1454296 (=> (not res!985257) (not e!818478))))

(assert (=> b!1454296 (= res!985257 e!818476)))

(declare-fun c!134030 () Bool)

(assert (=> b!1454296 (= c!134030 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1454297 () Bool)

(declare-fun e!818475 () Bool)

(assert (=> b!1454297 (= e!818480 e!818475)))

(declare-fun res!985253 () Bool)

(assert (=> b!1454297 (=> (not res!985253) (not e!818475))))

(assert (=> b!1454297 (= res!985253 (= (select (store (arr!47498 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1454297 (= lt!637506 (array!98430 (store (arr!47498 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48049 a!2862)))))

(declare-fun b!1454298 () Bool)

(assert (=> b!1454298 (= e!818478 (not e!818482))))

(declare-fun res!985260 () Bool)

(assert (=> b!1454298 (=> res!985260 e!818482)))

(assert (=> b!1454298 (= res!985260 (or (and (= (select (arr!47498 a!2862) index!646) (select (store (arr!47498 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47498 a!2862) index!646) (select (arr!47498 a!2862) j!93))) (= (select (arr!47498 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1454298 e!818479))

(declare-fun res!985268 () Bool)

(assert (=> b!1454298 (=> (not res!985268) (not e!818479))))

(assert (=> b!1454298 (= res!985268 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48990 0))(
  ( (Unit!48991) )
))
(declare-fun lt!637507 () Unit!48990)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98429 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48990)

(assert (=> b!1454298 (= lt!637507 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1454299 () Bool)

(assert (=> b!1454299 (= e!818479 (and (or (= (select (arr!47498 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47498 a!2862) intermediateBeforeIndex!19) (select (arr!47498 a!2862) j!93))) (let ((bdg!53056 (select (store (arr!47498 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47498 a!2862) index!646) bdg!53056) (= (select (arr!47498 a!2862) index!646) (select (arr!47498 a!2862) j!93))) (= (select (arr!47498 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53056 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1454300 () Bool)

(declare-fun res!985262 () Bool)

(assert (=> b!1454300 (=> (not res!985262) (not e!818481))))

(declare-fun lt!637504 () SeekEntryResult!11773)

(assert (=> b!1454300 (= res!985262 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47498 a!2862) j!93) a!2862 mask!2687) lt!637504))))

(declare-fun b!1454301 () Bool)

(assert (=> b!1454301 (= e!818474 (not (= lt!637503 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637501 lt!637500 lt!637506 mask!2687))))))

(declare-fun b!1454289 () Bool)

(declare-fun res!985269 () Bool)

(assert (=> b!1454289 (=> res!985269 e!818477)))

(assert (=> b!1454289 (= res!985269 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637501 (select (arr!47498 a!2862) j!93) a!2862 mask!2687) lt!637504)))))

(declare-fun res!985254 () Bool)

(assert (=> start!125064 (=> (not res!985254) (not e!818480))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125064 (= res!985254 (validMask!0 mask!2687))))

(assert (=> start!125064 e!818480))

(assert (=> start!125064 true))

(declare-fun array_inv!36443 (array!98429) Bool)

(assert (=> start!125064 (array_inv!36443 a!2862)))

(declare-fun b!1454302 () Bool)

(declare-fun res!985263 () Bool)

(assert (=> b!1454302 (=> (not res!985263) (not e!818480))))

(assert (=> b!1454302 (= res!985263 (validKeyInArray!0 (select (arr!47498 a!2862) i!1006)))))

(declare-fun b!1454303 () Bool)

(declare-fun res!985259 () Bool)

(assert (=> b!1454303 (=> (not res!985259) (not e!818480))))

(declare-datatypes ((List!34179 0))(
  ( (Nil!34176) (Cons!34175 (h!35525 (_ BitVec 64)) (t!48880 List!34179)) )
))
(declare-fun arrayNoDuplicates!0 (array!98429 (_ BitVec 32) List!34179) Bool)

(assert (=> b!1454303 (= res!985259 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34176))))

(declare-fun b!1454304 () Bool)

(declare-fun res!985258 () Bool)

(assert (=> b!1454304 (=> (not res!985258) (not e!818480))))

(assert (=> b!1454304 (= res!985258 (and (= (size!48049 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48049 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48049 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1454305 () Bool)

(assert (=> b!1454305 (= e!818475 e!818481)))

(declare-fun res!985265 () Bool)

(assert (=> b!1454305 (=> (not res!985265) (not e!818481))))

(assert (=> b!1454305 (= res!985265 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47498 a!2862) j!93) mask!2687) (select (arr!47498 a!2862) j!93) a!2862 mask!2687) lt!637504))))

(assert (=> b!1454305 (= lt!637504 (Intermediate!11773 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!125064 res!985254) b!1454304))

(assert (= (and b!1454304 res!985258) b!1454302))

(assert (= (and b!1454302 res!985263) b!1454286))

(assert (= (and b!1454286 res!985252) b!1454284))

(assert (= (and b!1454284 res!985261) b!1454303))

(assert (= (and b!1454303 res!985259) b!1454294))

(assert (= (and b!1454294 res!985255) b!1454297))

(assert (= (and b!1454297 res!985253) b!1454305))

(assert (= (and b!1454305 res!985265) b!1454300))

(assert (= (and b!1454300 res!985262) b!1454288))

(assert (= (and b!1454288 res!985264) b!1454296))

(assert (= (and b!1454296 c!134030) b!1454295))

(assert (= (and b!1454296 (not c!134030)) b!1454287))

(assert (= (and b!1454296 res!985257) b!1454285))

(assert (= (and b!1454285 res!985266) b!1454298))

(assert (= (and b!1454298 res!985268) b!1454293))

(assert (= (and b!1454293 res!985267) b!1454299))

(assert (= (and b!1454298 (not res!985260)) b!1454292))

(assert (= (and b!1454292 (not res!985256)) b!1454289))

(assert (= (and b!1454289 (not res!985269)) b!1454291))

(assert (= (and b!1454291 c!134029) b!1454301))

(assert (= (and b!1454291 (not c!134029)) b!1454290))

(declare-fun m!1342693 () Bool)

(assert (=> start!125064 m!1342693))

(declare-fun m!1342695 () Bool)

(assert (=> start!125064 m!1342695))

(declare-fun m!1342697 () Bool)

(assert (=> b!1454289 m!1342697))

(assert (=> b!1454289 m!1342697))

(declare-fun m!1342699 () Bool)

(assert (=> b!1454289 m!1342699))

(declare-fun m!1342701 () Bool)

(assert (=> b!1454290 m!1342701))

(declare-fun m!1342703 () Bool)

(assert (=> b!1454288 m!1342703))

(assert (=> b!1454288 m!1342703))

(declare-fun m!1342705 () Bool)

(assert (=> b!1454288 m!1342705))

(declare-fun m!1342707 () Bool)

(assert (=> b!1454288 m!1342707))

(declare-fun m!1342709 () Bool)

(assert (=> b!1454288 m!1342709))

(declare-fun m!1342711 () Bool)

(assert (=> b!1454302 m!1342711))

(assert (=> b!1454302 m!1342711))

(declare-fun m!1342713 () Bool)

(assert (=> b!1454302 m!1342713))

(assert (=> b!1454293 m!1342697))

(assert (=> b!1454293 m!1342697))

(declare-fun m!1342715 () Bool)

(assert (=> b!1454293 m!1342715))

(declare-fun m!1342717 () Bool)

(assert (=> b!1454284 m!1342717))

(declare-fun m!1342719 () Bool)

(assert (=> b!1454303 m!1342719))

(assert (=> b!1454286 m!1342697))

(assert (=> b!1454286 m!1342697))

(declare-fun m!1342721 () Bool)

(assert (=> b!1454286 m!1342721))

(declare-fun m!1342723 () Bool)

(assert (=> b!1454295 m!1342723))

(assert (=> b!1454300 m!1342697))

(assert (=> b!1454300 m!1342697))

(declare-fun m!1342725 () Bool)

(assert (=> b!1454300 m!1342725))

(declare-fun m!1342727 () Bool)

(assert (=> b!1454301 m!1342727))

(assert (=> b!1454297 m!1342707))

(declare-fun m!1342729 () Bool)

(assert (=> b!1454297 m!1342729))

(assert (=> b!1454299 m!1342707))

(declare-fun m!1342731 () Bool)

(assert (=> b!1454299 m!1342731))

(declare-fun m!1342733 () Bool)

(assert (=> b!1454299 m!1342733))

(declare-fun m!1342735 () Bool)

(assert (=> b!1454299 m!1342735))

(assert (=> b!1454299 m!1342697))

(assert (=> b!1454305 m!1342697))

(assert (=> b!1454305 m!1342697))

(declare-fun m!1342737 () Bool)

(assert (=> b!1454305 m!1342737))

(assert (=> b!1454305 m!1342737))

(assert (=> b!1454305 m!1342697))

(declare-fun m!1342739 () Bool)

(assert (=> b!1454305 m!1342739))

(declare-fun m!1342741 () Bool)

(assert (=> b!1454287 m!1342741))

(declare-fun m!1342743 () Bool)

(assert (=> b!1454287 m!1342743))

(declare-fun m!1342745 () Bool)

(assert (=> b!1454298 m!1342745))

(assert (=> b!1454298 m!1342707))

(assert (=> b!1454298 m!1342733))

(assert (=> b!1454298 m!1342735))

(declare-fun m!1342747 () Bool)

(assert (=> b!1454298 m!1342747))

(assert (=> b!1454298 m!1342697))

(declare-fun m!1342749 () Bool)

(assert (=> b!1454292 m!1342749))

(assert (=> b!1454292 m!1342741))

(assert (=> b!1454292 m!1342743))

(check-sat (not b!1454288) (not b!1454305) (not b!1454295) (not b!1454292) (not b!1454289) (not b!1454290) (not b!1454300) (not b!1454293) (not b!1454284) (not b!1454302) (not start!125064) (not b!1454286) (not b!1454287) (not b!1454298) (not b!1454303) (not b!1454301))
(check-sat)
