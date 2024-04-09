; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126460 () Bool)

(assert start!126460)

(declare-fun b!1482401 () Bool)

(declare-fun res!1007714 () Bool)

(declare-fun e!831293 () Bool)

(assert (=> b!1482401 (=> (not res!1007714) (not e!831293))))

(declare-datatypes ((array!99396 0))(
  ( (array!99397 (arr!47971 (Array (_ BitVec 32) (_ BitVec 64))) (size!48522 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99396)

(declare-datatypes ((List!34652 0))(
  ( (Nil!34649) (Cons!34648 (h!36019 (_ BitVec 64)) (t!49353 List!34652)) )
))
(declare-fun arrayNoDuplicates!0 (array!99396 (_ BitVec 32) List!34652) Bool)

(assert (=> b!1482401 (= res!1007714 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34649))))

(declare-fun b!1482402 () Bool)

(declare-fun res!1007726 () Bool)

(assert (=> b!1482402 (=> (not res!1007726) (not e!831293))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1482402 (= res!1007726 (and (= (size!48522 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48522 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48522 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1482403 () Bool)

(declare-fun e!831294 () Bool)

(assert (=> b!1482403 (= e!831293 e!831294)))

(declare-fun res!1007712 () Bool)

(assert (=> b!1482403 (=> (not res!1007712) (not e!831294))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1482403 (= res!1007712 (= (select (store (arr!47971 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!647024 () array!99396)

(assert (=> b!1482403 (= lt!647024 (array!99397 (store (arr!47971 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48522 a!2862)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!647026 () (_ BitVec 64))

(declare-fun b!1482404 () Bool)

(declare-fun e!831296 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12234 0))(
  ( (MissingZero!12234 (index!51327 (_ BitVec 32))) (Found!12234 (index!51328 (_ BitVec 32))) (Intermediate!12234 (undefined!13046 Bool) (index!51329 (_ BitVec 32)) (x!132912 (_ BitVec 32))) (Undefined!12234) (MissingVacant!12234 (index!51330 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99396 (_ BitVec 32)) SeekEntryResult!12234)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99396 (_ BitVec 32)) SeekEntryResult!12234)

(assert (=> b!1482404 (= e!831296 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647026 lt!647024 mask!2687) (seekEntryOrOpen!0 lt!647026 lt!647024 mask!2687)))))

(declare-fun b!1482405 () Bool)

(declare-fun e!831290 () Bool)

(declare-fun e!831295 () Bool)

(assert (=> b!1482405 (= e!831290 (not e!831295))))

(declare-fun res!1007715 () Bool)

(assert (=> b!1482405 (=> res!1007715 e!831295)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1482405 (= res!1007715 (or (and (= (select (arr!47971 a!2862) index!646) (select (store (arr!47971 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47971 a!2862) index!646) (select (arr!47971 a!2862) j!93))) (= (select (arr!47971 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!831291 () Bool)

(assert (=> b!1482405 e!831291))

(declare-fun res!1007720 () Bool)

(assert (=> b!1482405 (=> (not res!1007720) (not e!831291))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99396 (_ BitVec 32)) Bool)

(assert (=> b!1482405 (= res!1007720 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49756 0))(
  ( (Unit!49757) )
))
(declare-fun lt!647023 () Unit!49756)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99396 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49756)

(assert (=> b!1482405 (= lt!647023 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!1007716 () Bool)

(assert (=> start!126460 (=> (not res!1007716) (not e!831293))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126460 (= res!1007716 (validMask!0 mask!2687))))

(assert (=> start!126460 e!831293))

(assert (=> start!126460 true))

(declare-fun array_inv!36916 (array!99396) Bool)

(assert (=> start!126460 (array_inv!36916 a!2862)))

(declare-fun b!1482406 () Bool)

(assert (=> b!1482406 (= e!831295 (= (seekEntryOrOpen!0 lt!647026 lt!647024 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647026 lt!647024 mask!2687)))))

(declare-fun b!1482407 () Bool)

(declare-fun e!831292 () Bool)

(assert (=> b!1482407 (= e!831292 e!831290)))

(declare-fun res!1007718 () Bool)

(assert (=> b!1482407 (=> (not res!1007718) (not e!831290))))

(declare-fun lt!647025 () SeekEntryResult!12234)

(assert (=> b!1482407 (= res!1007718 (= lt!647025 (Intermediate!12234 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99396 (_ BitVec 32)) SeekEntryResult!12234)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1482407 (= lt!647025 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647026 mask!2687) lt!647026 lt!647024 mask!2687))))

(assert (=> b!1482407 (= lt!647026 (select (store (arr!47971 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1482408 () Bool)

(assert (=> b!1482408 (= e!831294 e!831292)))

(declare-fun res!1007722 () Bool)

(assert (=> b!1482408 (=> (not res!1007722) (not e!831292))))

(declare-fun lt!647022 () SeekEntryResult!12234)

(assert (=> b!1482408 (= res!1007722 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47971 a!2862) j!93) mask!2687) (select (arr!47971 a!2862) j!93) a!2862 mask!2687) lt!647022))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1482408 (= lt!647022 (Intermediate!12234 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1482409 () Bool)

(declare-fun res!1007725 () Bool)

(assert (=> b!1482409 (=> (not res!1007725) (not e!831291))))

(assert (=> b!1482409 (= res!1007725 (= (seekEntryOrOpen!0 (select (arr!47971 a!2862) j!93) a!2862 mask!2687) (Found!12234 j!93)))))

(declare-fun b!1482410 () Bool)

(assert (=> b!1482410 (= e!831291 (and (or (= (select (arr!47971 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47971 a!2862) intermediateBeforeIndex!19) (select (arr!47971 a!2862) j!93))) (let ((bdg!54266 (select (store (arr!47971 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47971 a!2862) index!646) bdg!54266) (= (select (arr!47971 a!2862) index!646) (select (arr!47971 a!2862) j!93))) (= (select (arr!47971 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!54266 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1482411 () Bool)

(declare-fun res!1007724 () Bool)

(assert (=> b!1482411 (=> (not res!1007724) (not e!831293))))

(assert (=> b!1482411 (= res!1007724 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1482412 () Bool)

(declare-fun res!1007723 () Bool)

(assert (=> b!1482412 (=> (not res!1007723) (not e!831290))))

(assert (=> b!1482412 (= res!1007723 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1482413 () Bool)

(declare-fun res!1007727 () Bool)

(assert (=> b!1482413 (=> (not res!1007727) (not e!831290))))

(assert (=> b!1482413 (= res!1007727 e!831296)))

(declare-fun c!136868 () Bool)

(assert (=> b!1482413 (= c!136868 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1482414 () Bool)

(declare-fun res!1007719 () Bool)

(assert (=> b!1482414 (=> (not res!1007719) (not e!831293))))

(assert (=> b!1482414 (= res!1007719 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48522 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48522 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48522 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1482415 () Bool)

(assert (=> b!1482415 (= e!831296 (= lt!647025 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647026 lt!647024 mask!2687)))))

(declare-fun b!1482416 () Bool)

(declare-fun res!1007713 () Bool)

(assert (=> b!1482416 (=> (not res!1007713) (not e!831293))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1482416 (= res!1007713 (validKeyInArray!0 (select (arr!47971 a!2862) i!1006)))))

(declare-fun b!1482417 () Bool)

(declare-fun res!1007721 () Bool)

(assert (=> b!1482417 (=> (not res!1007721) (not e!831292))))

(assert (=> b!1482417 (= res!1007721 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47971 a!2862) j!93) a!2862 mask!2687) lt!647022))))

(declare-fun b!1482418 () Bool)

(declare-fun res!1007717 () Bool)

(assert (=> b!1482418 (=> (not res!1007717) (not e!831293))))

(assert (=> b!1482418 (= res!1007717 (validKeyInArray!0 (select (arr!47971 a!2862) j!93)))))

(assert (= (and start!126460 res!1007716) b!1482402))

(assert (= (and b!1482402 res!1007726) b!1482416))

(assert (= (and b!1482416 res!1007713) b!1482418))

(assert (= (and b!1482418 res!1007717) b!1482411))

(assert (= (and b!1482411 res!1007724) b!1482401))

(assert (= (and b!1482401 res!1007714) b!1482414))

(assert (= (and b!1482414 res!1007719) b!1482403))

(assert (= (and b!1482403 res!1007712) b!1482408))

(assert (= (and b!1482408 res!1007722) b!1482417))

(assert (= (and b!1482417 res!1007721) b!1482407))

(assert (= (and b!1482407 res!1007718) b!1482413))

(assert (= (and b!1482413 c!136868) b!1482415))

(assert (= (and b!1482413 (not c!136868)) b!1482404))

(assert (= (and b!1482413 res!1007727) b!1482412))

(assert (= (and b!1482412 res!1007723) b!1482405))

(assert (= (and b!1482405 res!1007720) b!1482409))

(assert (= (and b!1482409 res!1007725) b!1482410))

(assert (= (and b!1482405 (not res!1007715)) b!1482406))

(declare-fun m!1368177 () Bool)

(assert (=> b!1482415 m!1368177))

(declare-fun m!1368179 () Bool)

(assert (=> b!1482407 m!1368179))

(assert (=> b!1482407 m!1368179))

(declare-fun m!1368181 () Bool)

(assert (=> b!1482407 m!1368181))

(declare-fun m!1368183 () Bool)

(assert (=> b!1482407 m!1368183))

(declare-fun m!1368185 () Bool)

(assert (=> b!1482407 m!1368185))

(assert (=> b!1482410 m!1368183))

(declare-fun m!1368187 () Bool)

(assert (=> b!1482410 m!1368187))

(declare-fun m!1368189 () Bool)

(assert (=> b!1482410 m!1368189))

(declare-fun m!1368191 () Bool)

(assert (=> b!1482410 m!1368191))

(declare-fun m!1368193 () Bool)

(assert (=> b!1482410 m!1368193))

(assert (=> b!1482417 m!1368193))

(assert (=> b!1482417 m!1368193))

(declare-fun m!1368195 () Bool)

(assert (=> b!1482417 m!1368195))

(declare-fun m!1368197 () Bool)

(assert (=> b!1482405 m!1368197))

(assert (=> b!1482405 m!1368183))

(assert (=> b!1482405 m!1368189))

(assert (=> b!1482405 m!1368191))

(declare-fun m!1368199 () Bool)

(assert (=> b!1482405 m!1368199))

(assert (=> b!1482405 m!1368193))

(declare-fun m!1368201 () Bool)

(assert (=> b!1482404 m!1368201))

(declare-fun m!1368203 () Bool)

(assert (=> b!1482404 m!1368203))

(assert (=> b!1482409 m!1368193))

(assert (=> b!1482409 m!1368193))

(declare-fun m!1368205 () Bool)

(assert (=> b!1482409 m!1368205))

(assert (=> b!1482406 m!1368203))

(assert (=> b!1482406 m!1368201))

(assert (=> b!1482418 m!1368193))

(assert (=> b!1482418 m!1368193))

(declare-fun m!1368207 () Bool)

(assert (=> b!1482418 m!1368207))

(assert (=> b!1482408 m!1368193))

(assert (=> b!1482408 m!1368193))

(declare-fun m!1368209 () Bool)

(assert (=> b!1482408 m!1368209))

(assert (=> b!1482408 m!1368209))

(assert (=> b!1482408 m!1368193))

(declare-fun m!1368211 () Bool)

(assert (=> b!1482408 m!1368211))

(declare-fun m!1368213 () Bool)

(assert (=> b!1482416 m!1368213))

(assert (=> b!1482416 m!1368213))

(declare-fun m!1368215 () Bool)

(assert (=> b!1482416 m!1368215))

(declare-fun m!1368217 () Bool)

(assert (=> b!1482411 m!1368217))

(declare-fun m!1368219 () Bool)

(assert (=> start!126460 m!1368219))

(declare-fun m!1368221 () Bool)

(assert (=> start!126460 m!1368221))

(assert (=> b!1482403 m!1368183))

(declare-fun m!1368223 () Bool)

(assert (=> b!1482403 m!1368223))

(declare-fun m!1368225 () Bool)

(assert (=> b!1482401 m!1368225))

(push 1)

(assert (not b!1482415))

(assert (not b!1482407))

(assert (not b!1482409))

(assert (not b!1482401))

(assert (not b!1482405))

(assert (not b!1482406))

(assert (not b!1482408))

(assert (not start!126460))

(assert (not b!1482404))

(assert (not b!1482411))

(assert (not b!1482416))

(assert (not b!1482417))

(assert (not b!1482418))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1482642 () Bool)

(declare-fun e!831416 () SeekEntryResult!12234)

(declare-fun e!831417 () SeekEntryResult!12234)

(assert (=> b!1482642 (= e!831416 e!831417)))

(declare-fun lt!647108 () (_ BitVec 64))

(declare-fun lt!647110 () SeekEntryResult!12234)

(assert (=> b!1482642 (= lt!647108 (select (arr!47971 lt!647024) (index!51329 lt!647110)))))

(declare-fun c!136915 () Bool)

(assert (=> b!1482642 (= c!136915 (= lt!647108 lt!647026))))

(declare-fun b!1482643 () Bool)

(declare-fun e!831415 () SeekEntryResult!12234)

(assert (=> b!1482643 (= e!831415 (seekKeyOrZeroReturnVacant!0 (x!132912 lt!647110) (index!51329 lt!647110) (index!51329 lt!647110) lt!647026 lt!647024 mask!2687))))

(declare-fun b!1482644 () Bool)

(assert (=> b!1482644 (= e!831417 (Found!12234 (index!51329 lt!647110)))))

(declare-fun b!1482645 () Bool)

(declare-fun c!136916 () Bool)

(assert (=> b!1482645 (= c!136916 (= lt!647108 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1482645 (= e!831417 e!831415)))

(declare-fun b!1482646 () Bool)

(assert (=> b!1482646 (= e!831415 (MissingZero!12234 (index!51329 lt!647110)))))

(declare-fun d!156233 () Bool)

(declare-fun lt!647109 () SeekEntryResult!12234)

(assert (=> d!156233 (and (or (is-Undefined!12234 lt!647109) (not (is-Found!12234 lt!647109)) (and (bvsge (index!51328 lt!647109) #b00000000000000000000000000000000) (bvslt (index!51328 lt!647109) (size!48522 lt!647024)))) (or (is-Undefined!12234 lt!647109) (is-Found!12234 lt!647109) (not (is-MissingZero!12234 lt!647109)) (and (bvsge (index!51327 lt!647109) #b00000000000000000000000000000000) (bvslt (index!51327 lt!647109) (size!48522 lt!647024)))) (or (is-Undefined!12234 lt!647109) (is-Found!12234 lt!647109) (is-MissingZero!12234 lt!647109) (not (is-MissingVacant!12234 lt!647109)) (and (bvsge (index!51330 lt!647109) #b00000000000000000000000000000000) (bvslt (index!51330 lt!647109) (size!48522 lt!647024)))) (or (is-Undefined!12234 lt!647109) (ite (is-Found!12234 lt!647109) (= (select (arr!47971 lt!647024) (index!51328 lt!647109)) lt!647026) (ite (is-MissingZero!12234 lt!647109) (= (select (arr!47971 lt!647024) (index!51327 lt!647109)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12234 lt!647109) (= (select (arr!47971 lt!647024) (index!51330 lt!647109)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!156233 (= lt!647109 e!831416)))

(declare-fun c!136914 () Bool)

(assert (=> d!156233 (= c!136914 (and (is-Intermediate!12234 lt!647110) (undefined!13046 lt!647110)))))

(assert (=> d!156233 (= lt!647110 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647026 mask!2687) lt!647026 lt!647024 mask!2687))))

(assert (=> d!156233 (validMask!0 mask!2687)))

(assert (=> d!156233 (= (seekEntryOrOpen!0 lt!647026 lt!647024 mask!2687) lt!647109)))

(declare-fun b!1482641 () Bool)

(assert (=> b!1482641 (= e!831416 Undefined!12234)))

(assert (= (and d!156233 c!136914) b!1482641))

(assert (= (and d!156233 (not c!136914)) b!1482642))

(assert (= (and b!1482642 c!136915) b!1482644))

(assert (= (and b!1482642 (not c!136915)) b!1482645))

(assert (= (and b!1482645 c!136916) b!1482646))

(assert (= (and b!1482645 (not c!136916)) b!1482643))

(declare-fun m!1368389 () Bool)

(assert (=> b!1482642 m!1368389))

(declare-fun m!1368391 () Bool)

(assert (=> b!1482643 m!1368391))

(declare-fun m!1368393 () Bool)

(assert (=> d!156233 m!1368393))

(assert (=> d!156233 m!1368179))

(assert (=> d!156233 m!1368181))

(declare-fun m!1368395 () Bool)

(assert (=> d!156233 m!1368395))

(declare-fun m!1368397 () Bool)

(assert (=> d!156233 m!1368397))

(assert (=> d!156233 m!1368179))

(assert (=> d!156233 m!1368219))

(assert (=> b!1482406 d!156233))

(declare-fun d!156251 () Bool)

(declare-fun lt!647130 () SeekEntryResult!12234)

(assert (=> d!156251 (and (or (is-Undefined!12234 lt!647130) (not (is-Found!12234 lt!647130)) (and (bvsge (index!51328 lt!647130) #b00000000000000000000000000000000) (bvslt (index!51328 lt!647130) (size!48522 lt!647024)))) (or (is-Undefined!12234 lt!647130) (is-Found!12234 lt!647130) (not (is-MissingVacant!12234 lt!647130)) (not (= (index!51330 lt!647130) intermediateAfterIndex!19)) (and (bvsge (index!51330 lt!647130) #b00000000000000000000000000000000) (bvslt (index!51330 lt!647130) (size!48522 lt!647024)))) (or (is-Undefined!12234 lt!647130) (ite (is-Found!12234 lt!647130) (= (select (arr!47971 lt!647024) (index!51328 lt!647130)) lt!647026) (and (is-MissingVacant!12234 lt!647130) (= (index!51330 lt!647130) intermediateAfterIndex!19) (= (select (arr!47971 lt!647024) (index!51330 lt!647130)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!831447 () SeekEntryResult!12234)

(assert (=> d!156251 (= lt!647130 e!831447)))

(declare-fun c!136944 () Bool)

(assert (=> d!156251 (= c!136944 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!647131 () (_ BitVec 64))

(assert (=> d!156251 (= lt!647131 (select (arr!47971 lt!647024) index!646))))

(assert (=> d!156251 (validMask!0 mask!2687)))

(assert (=> d!156251 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647026 lt!647024 mask!2687) lt!647130)))

(declare-fun b!1482701 () Bool)

(assert (=> b!1482701 (= e!831447 Undefined!12234)))

(declare-fun b!1482702 () Bool)

(declare-fun e!831445 () SeekEntryResult!12234)

(assert (=> b!1482702 (= e!831445 (MissingVacant!12234 intermediateAfterIndex!19))))

(declare-fun b!1482703 () Bool)

(declare-fun c!136946 () Bool)

(assert (=> b!1482703 (= c!136946 (= lt!647131 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!831446 () SeekEntryResult!12234)

(assert (=> b!1482703 (= e!831446 e!831445)))

(declare-fun b!1482704 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1482704 (= e!831445 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!647026 lt!647024 mask!2687))))

(declare-fun b!1482705 () Bool)

(assert (=> b!1482705 (= e!831446 (Found!12234 index!646))))

(declare-fun b!1482706 () Bool)

(assert (=> b!1482706 (= e!831447 e!831446)))

(declare-fun c!136945 () Bool)

(assert (=> b!1482706 (= c!136945 (= lt!647131 lt!647026))))

(assert (= (and d!156251 c!136944) b!1482701))

(assert (= (and d!156251 (not c!136944)) b!1482706))

(assert (= (and b!1482706 c!136945) b!1482705))

(assert (= (and b!1482706 (not c!136945)) b!1482703))

(assert (= (and b!1482703 c!136946) b!1482702))

(assert (= (and b!1482703 (not c!136946)) b!1482704))

(declare-fun m!1368425 () Bool)

(assert (=> d!156251 m!1368425))

(declare-fun m!1368427 () Bool)

(assert (=> d!156251 m!1368427))

(declare-fun m!1368429 () Bool)

(assert (=> d!156251 m!1368429))

(assert (=> d!156251 m!1368219))

(declare-fun m!1368431 () Bool)

(assert (=> b!1482704 m!1368431))

(assert (=> b!1482704 m!1368431))

(declare-fun m!1368433 () Bool)

(assert (=> b!1482704 m!1368433))

(assert (=> b!1482406 d!156251))

(declare-fun b!1482756 () Bool)

(declare-fun lt!647154 () SeekEntryResult!12234)

(assert (=> b!1482756 (and (bvsge (index!51329 lt!647154) #b00000000000000000000000000000000) (bvslt (index!51329 lt!647154) (size!48522 a!2862)))))

(declare-fun e!831478 () Bool)

(assert (=> b!1482756 (= e!831478 (= (select (arr!47971 a!2862) (index!51329 lt!647154)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1482757 () Bool)

(assert (=> b!1482757 (and (bvsge (index!51329 lt!647154) #b00000000000000000000000000000000) (bvslt (index!51329 lt!647154) (size!48522 a!2862)))))

(declare-fun res!1007874 () Bool)

(assert (=> b!1482757 (= res!1007874 (= (select (arr!47971 a!2862) (index!51329 lt!647154)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1482757 (=> res!1007874 e!831478)))

(declare-fun d!156259 () Bool)

(declare-fun e!831475 () Bool)

(assert (=> d!156259 e!831475))

(declare-fun c!136966 () Bool)

(assert (=> d!156259 (= c!136966 (and (is-Intermediate!12234 lt!647154) (undefined!13046 lt!647154)))))

(declare-fun e!831476 () SeekEntryResult!12234)

(assert (=> d!156259 (= lt!647154 e!831476)))

(declare-fun c!136967 () Bool)

(assert (=> d!156259 (= c!136967 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!647153 () (_ BitVec 64))

(assert (=> d!156259 (= lt!647153 (select (arr!47971 a!2862) index!646))))

(assert (=> d!156259 (validMask!0 mask!2687)))

(assert (=> d!156259 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47971 a!2862) j!93) a!2862 mask!2687) lt!647154)))

(declare-fun b!1482758 () Bool)

(declare-fun e!831479 () SeekEntryResult!12234)

(assert (=> b!1482758 (= e!831476 e!831479)))

(declare-fun c!136968 () Bool)

(assert (=> b!1482758 (= c!136968 (or (= lt!647153 (select (arr!47971 a!2862) j!93)) (= (bvadd lt!647153 lt!647153) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1482759 () Bool)

(declare-fun e!831477 () Bool)

(assert (=> b!1482759 (= e!831475 e!831477)))

(declare-fun res!1007872 () Bool)

(assert (=> b!1482759 (= res!1007872 (and (is-Intermediate!12234 lt!647154) (not (undefined!13046 lt!647154)) (bvslt (x!132912 lt!647154) #b01111111111111111111111111111110) (bvsge (x!132912 lt!647154) #b00000000000000000000000000000000) (bvsge (x!132912 lt!647154) x!665)))))

(assert (=> b!1482759 (=> (not res!1007872) (not e!831477))))

(declare-fun b!1482760 () Bool)

(assert (=> b!1482760 (= e!831479 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47971 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1482761 () Bool)

(assert (=> b!1482761 (= e!831476 (Intermediate!12234 true index!646 x!665))))

(declare-fun b!1482762 () Bool)

(assert (=> b!1482762 (and (bvsge (index!51329 lt!647154) #b00000000000000000000000000000000) (bvslt (index!51329 lt!647154) (size!48522 a!2862)))))

(declare-fun res!1007873 () Bool)

(assert (=> b!1482762 (= res!1007873 (= (select (arr!47971 a!2862) (index!51329 lt!647154)) (select (arr!47971 a!2862) j!93)))))

(assert (=> b!1482762 (=> res!1007873 e!831478)))

(assert (=> b!1482762 (= e!831477 e!831478)))

(declare-fun b!1482763 () Bool)

(assert (=> b!1482763 (= e!831479 (Intermediate!12234 false index!646 x!665))))

(declare-fun b!1482764 () Bool)

(assert (=> b!1482764 (= e!831475 (bvsge (x!132912 lt!647154) #b01111111111111111111111111111110))))

(assert (= (and d!156259 c!136967) b!1482761))

(assert (= (and d!156259 (not c!136967)) b!1482758))

(assert (= (and b!1482758 c!136968) b!1482763))

(assert (= (and b!1482758 (not c!136968)) b!1482760))

(assert (= (and d!156259 c!136966) b!1482764))

(assert (= (and d!156259 (not c!136966)) b!1482759))

(assert (= (and b!1482759 res!1007872) b!1482762))

(assert (= (and b!1482762 (not res!1007873)) b!1482757))

(assert (= (and b!1482757 (not res!1007874)) b!1482756))

(declare-fun m!1368457 () Bool)

(assert (=> b!1482762 m!1368457))

(assert (=> b!1482756 m!1368457))

(assert (=> b!1482760 m!1368431))

(assert (=> b!1482760 m!1368431))

(assert (=> b!1482760 m!1368193))

(declare-fun m!1368459 () Bool)

(assert (=> b!1482760 m!1368459))

(assert (=> d!156259 m!1368191))

(assert (=> d!156259 m!1368219))

(assert (=> b!1482757 m!1368457))

(assert (=> b!1482417 d!156259))

(declare-fun b!1482765 () Bool)

(declare-fun lt!647156 () SeekEntryResult!12234)

(assert (=> b!1482765 (and (bvsge (index!51329 lt!647156) #b00000000000000000000000000000000) (bvslt (index!51329 lt!647156) (size!48522 lt!647024)))))

(declare-fun e!831483 () Bool)

(assert (=> b!1482765 (= e!831483 (= (select (arr!47971 lt!647024) (index!51329 lt!647156)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1482766 () Bool)

(assert (=> b!1482766 (and (bvsge (index!51329 lt!647156) #b00000000000000000000000000000000) (bvslt (index!51329 lt!647156) (size!48522 lt!647024)))))

(declare-fun res!1007877 () Bool)

(assert (=> b!1482766 (= res!1007877 (= (select (arr!47971 lt!647024) (index!51329 lt!647156)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1482766 (=> res!1007877 e!831483)))

(declare-fun d!156271 () Bool)

(declare-fun e!831480 () Bool)

(assert (=> d!156271 e!831480))

(declare-fun c!136969 () Bool)

(assert (=> d!156271 (= c!136969 (and (is-Intermediate!12234 lt!647156) (undefined!13046 lt!647156)))))

(declare-fun e!831481 () SeekEntryResult!12234)

(assert (=> d!156271 (= lt!647156 e!831481)))

(declare-fun c!136970 () Bool)

(assert (=> d!156271 (= c!136970 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!647155 () (_ BitVec 64))

(assert (=> d!156271 (= lt!647155 (select (arr!47971 lt!647024) index!646))))

(assert (=> d!156271 (validMask!0 mask!2687)))

(assert (=> d!156271 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647026 lt!647024 mask!2687) lt!647156)))

(declare-fun b!1482767 () Bool)

(declare-fun e!831484 () SeekEntryResult!12234)

(assert (=> b!1482767 (= e!831481 e!831484)))

(declare-fun c!136971 () Bool)

(assert (=> b!1482767 (= c!136971 (or (= lt!647155 lt!647026) (= (bvadd lt!647155 lt!647155) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1482768 () Bool)

(declare-fun e!831482 () Bool)

(assert (=> b!1482768 (= e!831480 e!831482)))

(declare-fun res!1007875 () Bool)

(assert (=> b!1482768 (= res!1007875 (and (is-Intermediate!12234 lt!647156) (not (undefined!13046 lt!647156)) (bvslt (x!132912 lt!647156) #b01111111111111111111111111111110) (bvsge (x!132912 lt!647156) #b00000000000000000000000000000000) (bvsge (x!132912 lt!647156) x!665)))))

(assert (=> b!1482768 (=> (not res!1007875) (not e!831482))))

(declare-fun b!1482769 () Bool)

(assert (=> b!1482769 (= e!831484 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!647026 lt!647024 mask!2687))))

(declare-fun b!1482770 () Bool)

(assert (=> b!1482770 (= e!831481 (Intermediate!12234 true index!646 x!665))))

(declare-fun b!1482771 () Bool)

(assert (=> b!1482771 (and (bvsge (index!51329 lt!647156) #b00000000000000000000000000000000) (bvslt (index!51329 lt!647156) (size!48522 lt!647024)))))

(declare-fun res!1007876 () Bool)

(assert (=> b!1482771 (= res!1007876 (= (select (arr!47971 lt!647024) (index!51329 lt!647156)) lt!647026))))

(assert (=> b!1482771 (=> res!1007876 e!831483)))

(assert (=> b!1482771 (= e!831482 e!831483)))

(declare-fun b!1482772 () Bool)

(assert (=> b!1482772 (= e!831484 (Intermediate!12234 false index!646 x!665))))

(declare-fun b!1482773 () Bool)

(assert (=> b!1482773 (= e!831480 (bvsge (x!132912 lt!647156) #b01111111111111111111111111111110))))

(assert (= (and d!156271 c!136970) b!1482770))

(assert (= (and d!156271 (not c!136970)) b!1482767))

(assert (= (and b!1482767 c!136971) b!1482772))

(assert (= (and b!1482767 (not c!136971)) b!1482769))

(assert (= (and d!156271 c!136969) b!1482773))

(assert (= (and d!156271 (not c!136969)) b!1482768))

(assert (= (and b!1482768 res!1007875) b!1482771))

(assert (= (and b!1482771 (not res!1007876)) b!1482766))

(assert (= (and b!1482766 (not res!1007877)) b!1482765))

(declare-fun m!1368461 () Bool)

(assert (=> b!1482771 m!1368461))

(assert (=> b!1482765 m!1368461))

(assert (=> b!1482769 m!1368431))

(assert (=> b!1482769 m!1368431))

(declare-fun m!1368463 () Bool)

(assert (=> b!1482769 m!1368463))

(assert (=> d!156271 m!1368429))

(assert (=> d!156271 m!1368219))

(assert (=> b!1482766 m!1368461))

(assert (=> b!1482415 d!156271))

(declare-fun b!1482809 () Bool)

(declare-fun e!831508 () Bool)

(declare-fun call!67864 () Bool)

(assert (=> b!1482809 (= e!831508 call!67864)))

(declare-fun bm!67861 () Bool)

(assert (=> bm!67861 (= call!67864 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun d!156273 () Bool)

(declare-fun res!1007892 () Bool)

(declare-fun e!831507 () Bool)

(assert (=> d!156273 (=> res!1007892 e!831507)))

(assert (=> d!156273 (= res!1007892 (bvsge j!93 (size!48522 a!2862)))))

(assert (=> d!156273 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!831507)))

(declare-fun b!1482810 () Bool)

(assert (=> b!1482810 (= e!831507 e!831508)))

(declare-fun c!136983 () Bool)

(assert (=> b!1482810 (= c!136983 (validKeyInArray!0 (select (arr!47971 a!2862) j!93)))))

(declare-fun b!1482811 () Bool)

(declare-fun e!831506 () Bool)

(assert (=> b!1482811 (= e!831506 call!67864)))

(declare-fun b!1482812 () Bool)

(assert (=> b!1482812 (= e!831508 e!831506)))

(declare-fun lt!647171 () (_ BitVec 64))

(assert (=> b!1482812 (= lt!647171 (select (arr!47971 a!2862) j!93))))

(declare-fun lt!647169 () Unit!49756)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99396 (_ BitVec 64) (_ BitVec 32)) Unit!49756)

(assert (=> b!1482812 (= lt!647169 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!647171 j!93))))

(declare-fun arrayContainsKey!0 (array!99396 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1482812 (arrayContainsKey!0 a!2862 lt!647171 #b00000000000000000000000000000000)))

(declare-fun lt!647170 () Unit!49756)

(assert (=> b!1482812 (= lt!647170 lt!647169)))

(declare-fun res!1007891 () Bool)

(assert (=> b!1482812 (= res!1007891 (= (seekEntryOrOpen!0 (select (arr!47971 a!2862) j!93) a!2862 mask!2687) (Found!12234 j!93)))))

(assert (=> b!1482812 (=> (not res!1007891) (not e!831506))))

(assert (= (and d!156273 (not res!1007892)) b!1482810))

(assert (= (and b!1482810 c!136983) b!1482812))

(assert (= (and b!1482810 (not c!136983)) b!1482809))

(assert (= (and b!1482812 res!1007891) b!1482811))

(assert (= (or b!1482811 b!1482809) bm!67861))

(declare-fun m!1368473 () Bool)

(assert (=> bm!67861 m!1368473))

(assert (=> b!1482810 m!1368193))

(assert (=> b!1482810 m!1368193))

(assert (=> b!1482810 m!1368207))

(assert (=> b!1482812 m!1368193))

(declare-fun m!1368475 () Bool)

(assert (=> b!1482812 m!1368475))

(declare-fun m!1368477 () Bool)

(assert (=> b!1482812 m!1368477))

(assert (=> b!1482812 m!1368193))

(assert (=> b!1482812 m!1368205))

(assert (=> b!1482405 d!156273))

(declare-fun d!156277 () Bool)

(assert (=> d!156277 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!647178 () Unit!49756)

(declare-fun choose!38 (array!99396 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49756)

(assert (=> d!156277 (= lt!647178 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!156277 (validMask!0 mask!2687)))

(assert (=> d!156277 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!647178)))

(declare-fun bs!42705 () Bool)

(assert (= bs!42705 d!156277))

(assert (=> bs!42705 m!1368199))

(declare-fun m!1368479 () Bool)

(assert (=> bs!42705 m!1368479))

(assert (=> bs!42705 m!1368219))

(assert (=> b!1482405 d!156277))

(declare-fun d!156279 () Bool)

(assert (=> d!156279 (= (validKeyInArray!0 (select (arr!47971 a!2862) i!1006)) (and (not (= (select (arr!47971 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47971 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1482416 d!156279))

(assert (=> b!1482404 d!156251))

(assert (=> b!1482404 d!156233))

(declare-fun b!1482817 () Bool)

(declare-fun e!831514 () Bool)

(declare-fun call!67866 () Bool)

(assert (=> b!1482817 (= e!831514 call!67866)))

(declare-fun bm!67863 () Bool)

(assert (=> bm!67863 (= call!67866 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun d!156283 () Bool)

(declare-fun res!1007897 () Bool)

(declare-fun e!831513 () Bool)

(assert (=> d!156283 (=> res!1007897 e!831513)))

(assert (=> d!156283 (= res!1007897 (bvsge #b00000000000000000000000000000000 (size!48522 a!2862)))))

(assert (=> d!156283 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!831513)))

(declare-fun b!1482818 () Bool)

(assert (=> b!1482818 (= e!831513 e!831514)))

(declare-fun c!136985 () Bool)

(assert (=> b!1482818 (= c!136985 (validKeyInArray!0 (select (arr!47971 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1482819 () Bool)

(declare-fun e!831512 () Bool)

(assert (=> b!1482819 (= e!831512 call!67866)))

(declare-fun b!1482820 () Bool)

(assert (=> b!1482820 (= e!831514 e!831512)))

(declare-fun lt!647186 () (_ BitVec 64))

(assert (=> b!1482820 (= lt!647186 (select (arr!47971 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!647184 () Unit!49756)

(assert (=> b!1482820 (= lt!647184 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!647186 #b00000000000000000000000000000000))))

(assert (=> b!1482820 (arrayContainsKey!0 a!2862 lt!647186 #b00000000000000000000000000000000)))

(declare-fun lt!647185 () Unit!49756)

(assert (=> b!1482820 (= lt!647185 lt!647184)))

(declare-fun res!1007896 () Bool)

(assert (=> b!1482820 (= res!1007896 (= (seekEntryOrOpen!0 (select (arr!47971 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12234 #b00000000000000000000000000000000)))))

(assert (=> b!1482820 (=> (not res!1007896) (not e!831512))))

(assert (= (and d!156283 (not res!1007897)) b!1482818))

(assert (= (and b!1482818 c!136985) b!1482820))

(assert (= (and b!1482818 (not c!136985)) b!1482817))

(assert (= (and b!1482820 res!1007896) b!1482819))

(assert (= (or b!1482819 b!1482817) bm!67863))

(declare-fun m!1368487 () Bool)

(assert (=> bm!67863 m!1368487))

(declare-fun m!1368489 () Bool)

(assert (=> b!1482818 m!1368489))

(assert (=> b!1482818 m!1368489))

(declare-fun m!1368491 () Bool)

(assert (=> b!1482818 m!1368491))

(assert (=> b!1482820 m!1368489))

(declare-fun m!1368493 () Bool)

(assert (=> b!1482820 m!1368493))

(declare-fun m!1368495 () Bool)

(assert (=> b!1482820 m!1368495))

(assert (=> b!1482820 m!1368489))

(declare-fun m!1368497 () Bool)

(assert (=> b!1482820 m!1368497))

(assert (=> b!1482411 d!156283))

(declare-fun bm!67866 () Bool)

(declare-fun call!67869 () Bool)

(declare-fun c!136994 () Bool)

(assert (=> bm!67866 (= call!67869 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!136994 (Cons!34648 (select (arr!47971 a!2862) #b00000000000000000000000000000000) Nil!34649) Nil!34649)))))

(declare-fun d!156287 () Bool)

(declare-fun res!1007909 () Bool)

(declare-fun e!831531 () Bool)

(assert (=> d!156287 (=> res!1007909 e!831531)))

(assert (=> d!156287 (= res!1007909 (bvsge #b00000000000000000000000000000000 (size!48522 a!2862)))))

(assert (=> d!156287 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34649) e!831531)))

(declare-fun b!1482846 () Bool)

(declare-fun e!831533 () Bool)

(assert (=> b!1482846 (= e!831531 e!831533)))

(declare-fun res!1007908 () Bool)

(assert (=> b!1482846 (=> (not res!1007908) (not e!831533))))

(declare-fun e!831534 () Bool)

(assert (=> b!1482846 (= res!1007908 (not e!831534))))

(declare-fun res!1007907 () Bool)

(assert (=> b!1482846 (=> (not res!1007907) (not e!831534))))

(assert (=> b!1482846 (= res!1007907 (validKeyInArray!0 (select (arr!47971 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1482847 () Bool)

(declare-fun e!831532 () Bool)

(assert (=> b!1482847 (= e!831532 call!67869)))

(declare-fun b!1482848 () Bool)

(assert (=> b!1482848 (= e!831533 e!831532)))

(assert (=> b!1482848 (= c!136994 (validKeyInArray!0 (select (arr!47971 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1482849 () Bool)

(assert (=> b!1482849 (= e!831532 call!67869)))

(declare-fun b!1482850 () Bool)

(declare-fun contains!9927 (List!34652 (_ BitVec 64)) Bool)

(assert (=> b!1482850 (= e!831534 (contains!9927 Nil!34649 (select (arr!47971 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!156287 (not res!1007909)) b!1482846))

(assert (= (and b!1482846 res!1007907) b!1482850))

(assert (= (and b!1482846 res!1007908) b!1482848))

(assert (= (and b!1482848 c!136994) b!1482847))

(assert (= (and b!1482848 (not c!136994)) b!1482849))

(assert (= (or b!1482847 b!1482849) bm!67866))

(assert (=> bm!67866 m!1368489))

(declare-fun m!1368509 () Bool)

(assert (=> bm!67866 m!1368509))

(assert (=> b!1482846 m!1368489))

(assert (=> b!1482846 m!1368489))

(assert (=> b!1482846 m!1368491))

(assert (=> b!1482848 m!1368489))

(assert (=> b!1482848 m!1368489))

(assert (=> b!1482848 m!1368491))

(assert (=> b!1482850 m!1368489))

(assert (=> b!1482850 m!1368489))

(declare-fun m!1368517 () Bool)

(assert (=> b!1482850 m!1368517))

(assert (=> b!1482401 d!156287))

(declare-fun d!156299 () Bool)

(assert (=> d!156299 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!126460 d!156299))

(declare-fun d!156307 () Bool)

(assert (=> d!156307 (= (array_inv!36916 a!2862) (bvsge (size!48522 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!126460 d!156307))

(declare-fun b!1482870 () Bool)

(declare-fun e!831546 () SeekEntryResult!12234)

(declare-fun e!831547 () SeekEntryResult!12234)

(assert (=> b!1482870 (= e!831546 e!831547)))

(declare-fun lt!647201 () (_ BitVec 64))

(declare-fun lt!647203 () SeekEntryResult!12234)

(assert (=> b!1482870 (= lt!647201 (select (arr!47971 a!2862) (index!51329 lt!647203)))))

(declare-fun c!137002 () Bool)

(assert (=> b!1482870 (= c!137002 (= lt!647201 (select (arr!47971 a!2862) j!93)))))

(declare-fun e!831545 () SeekEntryResult!12234)

(declare-fun b!1482871 () Bool)

(assert (=> b!1482871 (= e!831545 (seekKeyOrZeroReturnVacant!0 (x!132912 lt!647203) (index!51329 lt!647203) (index!51329 lt!647203) (select (arr!47971 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1482872 () Bool)

(assert (=> b!1482872 (= e!831547 (Found!12234 (index!51329 lt!647203)))))

(declare-fun b!1482873 () Bool)

(declare-fun c!137003 () Bool)

(assert (=> b!1482873 (= c!137003 (= lt!647201 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1482873 (= e!831547 e!831545)))

(declare-fun b!1482874 () Bool)

(assert (=> b!1482874 (= e!831545 (MissingZero!12234 (index!51329 lt!647203)))))

(declare-fun d!156309 () Bool)

(declare-fun lt!647202 () SeekEntryResult!12234)

(assert (=> d!156309 (and (or (is-Undefined!12234 lt!647202) (not (is-Found!12234 lt!647202)) (and (bvsge (index!51328 lt!647202) #b00000000000000000000000000000000) (bvslt (index!51328 lt!647202) (size!48522 a!2862)))) (or (is-Undefined!12234 lt!647202) (is-Found!12234 lt!647202) (not (is-MissingZero!12234 lt!647202)) (and (bvsge (index!51327 lt!647202) #b00000000000000000000000000000000) (bvslt (index!51327 lt!647202) (size!48522 a!2862)))) (or (is-Undefined!12234 lt!647202) (is-Found!12234 lt!647202) (is-MissingZero!12234 lt!647202) (not (is-MissingVacant!12234 lt!647202)) (and (bvsge (index!51330 lt!647202) #b00000000000000000000000000000000) (bvslt (index!51330 lt!647202) (size!48522 a!2862)))) (or (is-Undefined!12234 lt!647202) (ite (is-Found!12234 lt!647202) (= (select (arr!47971 a!2862) (index!51328 lt!647202)) (select (arr!47971 a!2862) j!93)) (ite (is-MissingZero!12234 lt!647202) (= (select (arr!47971 a!2862) (index!51327 lt!647202)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12234 lt!647202) (= (select (arr!47971 a!2862) (index!51330 lt!647202)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!156309 (= lt!647202 e!831546)))

(declare-fun c!137001 () Bool)

(assert (=> d!156309 (= c!137001 (and (is-Intermediate!12234 lt!647203) (undefined!13046 lt!647203)))))

(assert (=> d!156309 (= lt!647203 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47971 a!2862) j!93) mask!2687) (select (arr!47971 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!156309 (validMask!0 mask!2687)))

(assert (=> d!156309 (= (seekEntryOrOpen!0 (select (arr!47971 a!2862) j!93) a!2862 mask!2687) lt!647202)))

(declare-fun b!1482869 () Bool)

(assert (=> b!1482869 (= e!831546 Undefined!12234)))

(assert (= (and d!156309 c!137001) b!1482869))

(assert (= (and d!156309 (not c!137001)) b!1482870))

(assert (= (and b!1482870 c!137002) b!1482872))

(assert (= (and b!1482870 (not c!137002)) b!1482873))

(assert (= (and b!1482873 c!137003) b!1482874))

(assert (= (and b!1482873 (not c!137003)) b!1482871))

(declare-fun m!1368531 () Bool)

(assert (=> b!1482870 m!1368531))

(assert (=> b!1482871 m!1368193))

(declare-fun m!1368533 () Bool)

(assert (=> b!1482871 m!1368533))

(declare-fun m!1368535 () Bool)

(assert (=> d!156309 m!1368535))

(assert (=> d!156309 m!1368209))

(assert (=> d!156309 m!1368193))

(assert (=> d!156309 m!1368211))

(declare-fun m!1368537 () Bool)

(assert (=> d!156309 m!1368537))

(declare-fun m!1368539 () Bool)

(assert (=> d!156309 m!1368539))

(assert (=> d!156309 m!1368193))

(assert (=> d!156309 m!1368209))

(assert (=> d!156309 m!1368219))

(assert (=> b!1482409 d!156309))

(declare-fun b!1482875 () Bool)

(declare-fun lt!647205 () SeekEntryResult!12234)

(assert (=> b!1482875 (and (bvsge (index!51329 lt!647205) #b00000000000000000000000000000000) (bvslt (index!51329 lt!647205) (size!48522 lt!647024)))))

(declare-fun e!831551 () Bool)

(assert (=> b!1482875 (= e!831551 (= (select (arr!47971 lt!647024) (index!51329 lt!647205)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1482876 () Bool)

(assert (=> b!1482876 (and (bvsge (index!51329 lt!647205) #b00000000000000000000000000000000) (bvslt (index!51329 lt!647205) (size!48522 lt!647024)))))

(declare-fun res!1007918 () Bool)

(assert (=> b!1482876 (= res!1007918 (= (select (arr!47971 lt!647024) (index!51329 lt!647205)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1482876 (=> res!1007918 e!831551)))

(declare-fun d!156311 () Bool)

(declare-fun e!831548 () Bool)

(assert (=> d!156311 e!831548))

(declare-fun c!137004 () Bool)

(assert (=> d!156311 (= c!137004 (and (is-Intermediate!12234 lt!647205) (undefined!13046 lt!647205)))))

(declare-fun e!831549 () SeekEntryResult!12234)

(assert (=> d!156311 (= lt!647205 e!831549)))

(declare-fun c!137005 () Bool)

(assert (=> d!156311 (= c!137005 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!647204 () (_ BitVec 64))

(assert (=> d!156311 (= lt!647204 (select (arr!47971 lt!647024) (toIndex!0 lt!647026 mask!2687)))))

(assert (=> d!156311 (validMask!0 mask!2687)))

(assert (=> d!156311 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647026 mask!2687) lt!647026 lt!647024 mask!2687) lt!647205)))

(declare-fun b!1482877 () Bool)

(declare-fun e!831552 () SeekEntryResult!12234)

(assert (=> b!1482877 (= e!831549 e!831552)))

(declare-fun c!137006 () Bool)

(assert (=> b!1482877 (= c!137006 (or (= lt!647204 lt!647026) (= (bvadd lt!647204 lt!647204) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1482878 () Bool)

(declare-fun e!831550 () Bool)

(assert (=> b!1482878 (= e!831548 e!831550)))

(declare-fun res!1007916 () Bool)

(assert (=> b!1482878 (= res!1007916 (and (is-Intermediate!12234 lt!647205) (not (undefined!13046 lt!647205)) (bvslt (x!132912 lt!647205) #b01111111111111111111111111111110) (bvsge (x!132912 lt!647205) #b00000000000000000000000000000000) (bvsge (x!132912 lt!647205) #b00000000000000000000000000000000)))))

(assert (=> b!1482878 (=> (not res!1007916) (not e!831550))))

(declare-fun b!1482879 () Bool)

