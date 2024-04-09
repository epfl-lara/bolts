; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124824 () Bool)

(assert start!124824)

(declare-fun b!1447429 () Bool)

(declare-fun e!815214 () Bool)

(declare-fun e!815215 () Bool)

(assert (=> b!1447429 (= e!815214 e!815215)))

(declare-fun res!979182 () Bool)

(assert (=> b!1447429 (=> res!979182 e!815215)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98189 0))(
  ( (array!98190 (arr!47378 (Array (_ BitVec 32) (_ BitVec 64))) (size!47929 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98189)

(assert (=> b!1447429 (= res!979182 (or (and (= (select (arr!47378 a!2862) index!646) (select (store (arr!47378 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47378 a!2862) index!646) (select (arr!47378 a!2862) j!93))) (not (= (select (arr!47378 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1447430 () Bool)

(declare-fun res!979186 () Bool)

(declare-fun e!815216 () Bool)

(assert (=> b!1447430 (=> (not res!979186) (not e!815216))))

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1447430 (= res!979186 (and (= (size!47929 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47929 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47929 a!2862)) (not (= i!1006 j!93))))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun b!1447431 () Bool)

(declare-fun e!815209 () Bool)

(assert (=> b!1447431 (= e!815209 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1447432 () Bool)

(declare-fun e!815208 () Bool)

(declare-fun e!815212 () Bool)

(assert (=> b!1447432 (= e!815208 (not e!815212))))

(declare-fun res!979190 () Bool)

(assert (=> b!1447432 (=> res!979190 e!815212)))

(assert (=> b!1447432 (= res!979190 (or (and (= (select (arr!47378 a!2862) index!646) (select (store (arr!47378 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47378 a!2862) index!646) (select (arr!47378 a!2862) j!93))) (not (= (select (arr!47378 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47378 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1447432 e!815214))

(declare-fun res!979183 () Bool)

(assert (=> b!1447432 (=> (not res!979183) (not e!815214))))

(declare-datatypes ((SeekEntryResult!11653 0))(
  ( (MissingZero!11653 (index!49003 (_ BitVec 32))) (Found!11653 (index!49004 (_ BitVec 32))) (Intermediate!11653 (undefined!12465 Bool) (index!49005 (_ BitVec 32)) (x!130681 (_ BitVec 32))) (Undefined!11653) (MissingVacant!11653 (index!49006 (_ BitVec 32))) )
))
(declare-fun lt!635133 () SeekEntryResult!11653)

(assert (=> b!1447432 (= res!979183 (and (= lt!635133 (Found!11653 j!93)) (or (= (select (arr!47378 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47378 a!2862) intermediateBeforeIndex!19) (select (arr!47378 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98189 (_ BitVec 32)) SeekEntryResult!11653)

(assert (=> b!1447432 (= lt!635133 (seekEntryOrOpen!0 (select (arr!47378 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98189 (_ BitVec 32)) Bool)

(assert (=> b!1447432 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48750 0))(
  ( (Unit!48751) )
))
(declare-fun lt!635128 () Unit!48750)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98189 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48750)

(assert (=> b!1447432 (= lt!635128 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1447433 () Bool)

(declare-fun res!979192 () Bool)

(assert (=> b!1447433 (=> (not res!979192) (not e!815208))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1447433 (= res!979192 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1447434 () Bool)

(declare-fun res!979196 () Bool)

(assert (=> b!1447434 (=> (not res!979196) (not e!815208))))

(declare-fun e!815210 () Bool)

(assert (=> b!1447434 (= res!979196 e!815210)))

(declare-fun c!133637 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1447434 (= c!133637 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1447435 () Bool)

(declare-fun e!815207 () Bool)

(assert (=> b!1447435 (= e!815207 e!815208)))

(declare-fun res!979194 () Bool)

(assert (=> b!1447435 (=> (not res!979194) (not e!815208))))

(declare-fun lt!635132 () SeekEntryResult!11653)

(assert (=> b!1447435 (= res!979194 (= lt!635132 (Intermediate!11653 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!635130 () array!98189)

(declare-fun lt!635129 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98189 (_ BitVec 32)) SeekEntryResult!11653)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1447435 (= lt!635132 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635129 mask!2687) lt!635129 lt!635130 mask!2687))))

(assert (=> b!1447435 (= lt!635129 (select (store (arr!47378 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1447436 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98189 (_ BitVec 32)) SeekEntryResult!11653)

(assert (=> b!1447436 (= e!815210 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635129 lt!635130 mask!2687) (seekEntryOrOpen!0 lt!635129 lt!635130 mask!2687)))))

(declare-fun b!1447437 () Bool)

(declare-fun e!815213 () Bool)

(assert (=> b!1447437 (= e!815216 e!815213)))

(declare-fun res!979193 () Bool)

(assert (=> b!1447437 (=> (not res!979193) (not e!815213))))

(assert (=> b!1447437 (= res!979193 (= (select (store (arr!47378 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1447437 (= lt!635130 (array!98190 (store (arr!47378 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47929 a!2862)))))

(declare-fun b!1447438 () Bool)

(assert (=> b!1447438 (= e!815212 true)))

(declare-fun lt!635131 () SeekEntryResult!11653)

(assert (=> b!1447438 (= lt!635131 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47378 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1447439 () Bool)

(assert (=> b!1447439 (= e!815213 e!815207)))

(declare-fun res!979188 () Bool)

(assert (=> b!1447439 (=> (not res!979188) (not e!815207))))

(declare-fun lt!635134 () SeekEntryResult!11653)

(assert (=> b!1447439 (= res!979188 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47378 a!2862) j!93) mask!2687) (select (arr!47378 a!2862) j!93) a!2862 mask!2687) lt!635134))))

(assert (=> b!1447439 (= lt!635134 (Intermediate!11653 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1447440 () Bool)

(declare-fun res!979184 () Bool)

(assert (=> b!1447440 (=> (not res!979184) (not e!815216))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1447440 (= res!979184 (validKeyInArray!0 (select (arr!47378 a!2862) j!93)))))

(declare-fun b!1447441 () Bool)

(declare-fun res!979187 () Bool)

(assert (=> b!1447441 (=> (not res!979187) (not e!815216))))

(assert (=> b!1447441 (= res!979187 (validKeyInArray!0 (select (arr!47378 a!2862) i!1006)))))

(declare-fun b!1447442 () Bool)

(declare-fun res!979191 () Bool)

(assert (=> b!1447442 (=> (not res!979191) (not e!815207))))

(assert (=> b!1447442 (= res!979191 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47378 a!2862) j!93) a!2862 mask!2687) lt!635134))))

(declare-fun b!1447443 () Bool)

(assert (=> b!1447443 (= e!815215 e!815209)))

(declare-fun res!979197 () Bool)

(assert (=> b!1447443 (=> (not res!979197) (not e!815209))))

(assert (=> b!1447443 (= res!979197 (= lt!635133 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47378 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun res!979181 () Bool)

(assert (=> start!124824 (=> (not res!979181) (not e!815216))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124824 (= res!979181 (validMask!0 mask!2687))))

(assert (=> start!124824 e!815216))

(assert (=> start!124824 true))

(declare-fun array_inv!36323 (array!98189) Bool)

(assert (=> start!124824 (array_inv!36323 a!2862)))

(declare-fun b!1447444 () Bool)

(declare-fun res!979195 () Bool)

(assert (=> b!1447444 (=> (not res!979195) (not e!815216))))

(assert (=> b!1447444 (= res!979195 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47929 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47929 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47929 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1447445 () Bool)

(declare-fun res!979189 () Bool)

(assert (=> b!1447445 (=> (not res!979189) (not e!815216))))

(assert (=> b!1447445 (= res!979189 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1447446 () Bool)

(assert (=> b!1447446 (= e!815210 (= lt!635132 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635129 lt!635130 mask!2687)))))

(declare-fun b!1447447 () Bool)

(declare-fun res!979185 () Bool)

(assert (=> b!1447447 (=> (not res!979185) (not e!815216))))

(declare-datatypes ((List!34059 0))(
  ( (Nil!34056) (Cons!34055 (h!35405 (_ BitVec 64)) (t!48760 List!34059)) )
))
(declare-fun arrayNoDuplicates!0 (array!98189 (_ BitVec 32) List!34059) Bool)

(assert (=> b!1447447 (= res!979185 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34056))))

(assert (= (and start!124824 res!979181) b!1447430))

(assert (= (and b!1447430 res!979186) b!1447441))

(assert (= (and b!1447441 res!979187) b!1447440))

(assert (= (and b!1447440 res!979184) b!1447445))

(assert (= (and b!1447445 res!979189) b!1447447))

(assert (= (and b!1447447 res!979185) b!1447444))

(assert (= (and b!1447444 res!979195) b!1447437))

(assert (= (and b!1447437 res!979193) b!1447439))

(assert (= (and b!1447439 res!979188) b!1447442))

(assert (= (and b!1447442 res!979191) b!1447435))

(assert (= (and b!1447435 res!979194) b!1447434))

(assert (= (and b!1447434 c!133637) b!1447446))

(assert (= (and b!1447434 (not c!133637)) b!1447436))

(assert (= (and b!1447434 res!979196) b!1447433))

(assert (= (and b!1447433 res!979192) b!1447432))

(assert (= (and b!1447432 res!979183) b!1447429))

(assert (= (and b!1447429 (not res!979182)) b!1447443))

(assert (= (and b!1447443 res!979197) b!1447431))

(assert (= (and b!1447432 (not res!979190)) b!1447438))

(declare-fun m!1336299 () Bool)

(assert (=> b!1447446 m!1336299))

(declare-fun m!1336301 () Bool)

(assert (=> b!1447436 m!1336301))

(declare-fun m!1336303 () Bool)

(assert (=> b!1447436 m!1336303))

(declare-fun m!1336305 () Bool)

(assert (=> b!1447443 m!1336305))

(assert (=> b!1447443 m!1336305))

(declare-fun m!1336307 () Bool)

(assert (=> b!1447443 m!1336307))

(declare-fun m!1336309 () Bool)

(assert (=> b!1447437 m!1336309))

(declare-fun m!1336311 () Bool)

(assert (=> b!1447437 m!1336311))

(assert (=> b!1447438 m!1336305))

(assert (=> b!1447438 m!1336305))

(declare-fun m!1336313 () Bool)

(assert (=> b!1447438 m!1336313))

(declare-fun m!1336315 () Bool)

(assert (=> b!1447441 m!1336315))

(assert (=> b!1447441 m!1336315))

(declare-fun m!1336317 () Bool)

(assert (=> b!1447441 m!1336317))

(declare-fun m!1336319 () Bool)

(assert (=> b!1447447 m!1336319))

(declare-fun m!1336321 () Bool)

(assert (=> b!1447445 m!1336321))

(assert (=> b!1447439 m!1336305))

(assert (=> b!1447439 m!1336305))

(declare-fun m!1336323 () Bool)

(assert (=> b!1447439 m!1336323))

(assert (=> b!1447439 m!1336323))

(assert (=> b!1447439 m!1336305))

(declare-fun m!1336325 () Bool)

(assert (=> b!1447439 m!1336325))

(assert (=> b!1447440 m!1336305))

(assert (=> b!1447440 m!1336305))

(declare-fun m!1336327 () Bool)

(assert (=> b!1447440 m!1336327))

(declare-fun m!1336329 () Bool)

(assert (=> b!1447432 m!1336329))

(assert (=> b!1447432 m!1336309))

(declare-fun m!1336331 () Bool)

(assert (=> b!1447432 m!1336331))

(declare-fun m!1336333 () Bool)

(assert (=> b!1447432 m!1336333))

(declare-fun m!1336335 () Bool)

(assert (=> b!1447432 m!1336335))

(assert (=> b!1447432 m!1336305))

(declare-fun m!1336337 () Bool)

(assert (=> b!1447432 m!1336337))

(declare-fun m!1336339 () Bool)

(assert (=> b!1447432 m!1336339))

(assert (=> b!1447432 m!1336305))

(assert (=> b!1447442 m!1336305))

(assert (=> b!1447442 m!1336305))

(declare-fun m!1336341 () Bool)

(assert (=> b!1447442 m!1336341))

(declare-fun m!1336343 () Bool)

(assert (=> start!124824 m!1336343))

(declare-fun m!1336345 () Bool)

(assert (=> start!124824 m!1336345))

(declare-fun m!1336347 () Bool)

(assert (=> b!1447435 m!1336347))

(assert (=> b!1447435 m!1336347))

(declare-fun m!1336349 () Bool)

(assert (=> b!1447435 m!1336349))

(assert (=> b!1447435 m!1336309))

(declare-fun m!1336351 () Bool)

(assert (=> b!1447435 m!1336351))

(assert (=> b!1447429 m!1336335))

(assert (=> b!1447429 m!1336309))

(assert (=> b!1447429 m!1336333))

(assert (=> b!1447429 m!1336305))

(check-sat (not b!1447435) (not b!1447438) (not b!1447446) (not b!1447443) (not b!1447441) (not b!1447442) (not b!1447447) (not b!1447445) (not start!124824) (not b!1447439) (not b!1447432) (not b!1447440) (not b!1447436))
(check-sat)
