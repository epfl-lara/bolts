; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125216 () Bool)

(assert start!125216)

(declare-fun b!1459300 () Bool)

(declare-fun res!989359 () Bool)

(declare-fun e!820724 () Bool)

(assert (=> b!1459300 (=> res!989359 e!820724)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1459300 (= res!989359 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1459301 () Bool)

(declare-fun res!989364 () Bool)

(declare-fun e!820720 () Bool)

(assert (=> b!1459301 (=> (not res!989364) (not e!820720))))

(declare-datatypes ((array!98581 0))(
  ( (array!98582 (arr!47574 (Array (_ BitVec 32) (_ BitVec 64))) (size!48125 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98581)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1459301 (= res!989364 (validKeyInArray!0 (select (arr!47574 a!2862) i!1006)))))

(declare-fun b!1459302 () Bool)

(declare-fun e!820726 () Bool)

(declare-fun e!820723 () Bool)

(assert (=> b!1459302 (= e!820726 e!820723)))

(declare-fun res!989365 () Bool)

(assert (=> b!1459302 (=> (not res!989365) (not e!820723))))

(declare-datatypes ((SeekEntryResult!11849 0))(
  ( (MissingZero!11849 (index!49787 (_ BitVec 32))) (Found!11849 (index!49788 (_ BitVec 32))) (Intermediate!11849 (undefined!12661 Bool) (index!49789 (_ BitVec 32)) (x!131397 (_ BitVec 32))) (Undefined!11849) (MissingVacant!11849 (index!49790 (_ BitVec 32))) )
))
(declare-fun lt!639360 () SeekEntryResult!11849)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1459302 (= res!989365 (= lt!639360 (Intermediate!11849 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!639361 () array!98581)

(declare-fun lt!639362 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98581 (_ BitVec 32)) SeekEntryResult!11849)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1459302 (= lt!639360 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639362 mask!2687) lt!639362 lt!639361 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1459302 (= lt!639362 (select (store (arr!47574 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1459303 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!820722 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98581 (_ BitVec 32)) SeekEntryResult!11849)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98581 (_ BitVec 32)) SeekEntryResult!11849)

(assert (=> b!1459303 (= e!820722 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639362 lt!639361 mask!2687) (seekEntryOrOpen!0 lt!639362 lt!639361 mask!2687)))))

(declare-fun b!1459304 () Bool)

(assert (=> b!1459304 (= e!820724 true)))

(declare-fun lt!639367 () SeekEntryResult!11849)

(declare-fun lt!639364 () SeekEntryResult!11849)

(assert (=> b!1459304 (= lt!639367 lt!639364)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun lt!639359 () (_ BitVec 32))

(declare-datatypes ((Unit!49142 0))(
  ( (Unit!49143) )
))
(declare-fun lt!639363 () Unit!49142)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98581 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49142)

(assert (=> b!1459304 (= lt!639363 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!639359 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1459305 () Bool)

(declare-fun res!989363 () Bool)

(assert (=> b!1459305 (=> (not res!989363) (not e!820723))))

(assert (=> b!1459305 (= res!989363 e!820722)))

(declare-fun c!134485 () Bool)

(assert (=> b!1459305 (= c!134485 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1459306 () Bool)

(declare-fun res!989368 () Bool)

(assert (=> b!1459306 (=> res!989368 e!820724)))

(declare-fun lt!639365 () SeekEntryResult!11849)

(assert (=> b!1459306 (= res!989368 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639359 (select (arr!47574 a!2862) j!93) a!2862 mask!2687) lt!639365)))))

(declare-fun b!1459307 () Bool)

(declare-fun res!989360 () Bool)

(assert (=> b!1459307 (=> (not res!989360) (not e!820720))))

(declare-datatypes ((List!34255 0))(
  ( (Nil!34252) (Cons!34251 (h!35601 (_ BitVec 64)) (t!48956 List!34255)) )
))
(declare-fun arrayNoDuplicates!0 (array!98581 (_ BitVec 32) List!34255) Bool)

(assert (=> b!1459307 (= res!989360 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34252))))

(declare-fun b!1459308 () Bool)

(declare-fun res!989370 () Bool)

(assert (=> b!1459308 (=> (not res!989370) (not e!820720))))

(assert (=> b!1459308 (= res!989370 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48125 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48125 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48125 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1459309 () Bool)

(declare-fun res!989356 () Bool)

(assert (=> b!1459309 (=> (not res!989356) (not e!820720))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98581 (_ BitVec 32)) Bool)

(assert (=> b!1459309 (= res!989356 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1459310 () Bool)

(declare-fun res!989362 () Bool)

(assert (=> b!1459310 (=> res!989362 e!820724)))

(declare-fun e!820725 () Bool)

(assert (=> b!1459310 (= res!989362 e!820725)))

(declare-fun c!134486 () Bool)

(assert (=> b!1459310 (= c!134486 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1459311 () Bool)

(declare-fun e!820719 () Bool)

(assert (=> b!1459311 (= e!820723 (not e!820719))))

(declare-fun res!989367 () Bool)

(assert (=> b!1459311 (=> res!989367 e!820719)))

(assert (=> b!1459311 (= res!989367 (or (and (= (select (arr!47574 a!2862) index!646) (select (store (arr!47574 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47574 a!2862) index!646) (select (arr!47574 a!2862) j!93))) (= (select (arr!47574 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1459311 (and (= lt!639367 (Found!11849 j!93)) (or (= (select (arr!47574 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47574 a!2862) intermediateBeforeIndex!19) (select (arr!47574 a!2862) j!93))) (let ((bdg!53501 (select (store (arr!47574 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47574 a!2862) index!646) bdg!53501) (= (select (arr!47574 a!2862) index!646) (select (arr!47574 a!2862) j!93))) (= (select (arr!47574 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53501 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> b!1459311 (= lt!639367 (seekEntryOrOpen!0 (select (arr!47574 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1459311 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!639366 () Unit!49142)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98581 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49142)

(assert (=> b!1459311 (= lt!639366 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1459312 () Bool)

(declare-fun res!989369 () Bool)

(assert (=> b!1459312 (=> (not res!989369) (not e!820720))))

(assert (=> b!1459312 (= res!989369 (validKeyInArray!0 (select (arr!47574 a!2862) j!93)))))

(declare-fun b!1459313 () Bool)

(declare-fun res!989366 () Bool)

(assert (=> b!1459313 (=> (not res!989366) (not e!820726))))

(assert (=> b!1459313 (= res!989366 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47574 a!2862) j!93) a!2862 mask!2687) lt!639365))))

(declare-fun res!989358 () Bool)

(assert (=> start!125216 (=> (not res!989358) (not e!820720))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125216 (= res!989358 (validMask!0 mask!2687))))

(assert (=> start!125216 e!820720))

(assert (=> start!125216 true))

(declare-fun array_inv!36519 (array!98581) Bool)

(assert (=> start!125216 (array_inv!36519 a!2862)))

(declare-fun b!1459314 () Bool)

(assert (=> b!1459314 (= e!820719 e!820724)))

(declare-fun res!989372 () Bool)

(assert (=> b!1459314 (=> res!989372 e!820724)))

(assert (=> b!1459314 (= res!989372 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639359 #b00000000000000000000000000000000) (bvsge lt!639359 (size!48125 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1459314 (= lt!639359 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1459314 (= lt!639364 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639362 lt!639361 mask!2687))))

(assert (=> b!1459314 (= lt!639364 (seekEntryOrOpen!0 lt!639362 lt!639361 mask!2687))))

(declare-fun b!1459315 () Bool)

(declare-fun e!820727 () Bool)

(assert (=> b!1459315 (= e!820727 e!820726)))

(declare-fun res!989373 () Bool)

(assert (=> b!1459315 (=> (not res!989373) (not e!820726))))

(assert (=> b!1459315 (= res!989373 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47574 a!2862) j!93) mask!2687) (select (arr!47574 a!2862) j!93) a!2862 mask!2687) lt!639365))))

(assert (=> b!1459315 (= lt!639365 (Intermediate!11849 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1459316 () Bool)

(assert (=> b!1459316 (= e!820725 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639359 intermediateAfterIndex!19 lt!639362 lt!639361 mask!2687) lt!639364)))))

(declare-fun b!1459317 () Bool)

(assert (=> b!1459317 (= e!820722 (= lt!639360 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639362 lt!639361 mask!2687)))))

(declare-fun b!1459318 () Bool)

(declare-fun res!989357 () Bool)

(assert (=> b!1459318 (=> (not res!989357) (not e!820723))))

(assert (=> b!1459318 (= res!989357 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1459319 () Bool)

(assert (=> b!1459319 (= e!820725 (not (= lt!639360 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639359 lt!639362 lt!639361 mask!2687))))))

(declare-fun b!1459320 () Bool)

(declare-fun res!989371 () Bool)

(assert (=> b!1459320 (=> (not res!989371) (not e!820720))))

(assert (=> b!1459320 (= res!989371 (and (= (size!48125 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48125 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48125 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1459321 () Bool)

(assert (=> b!1459321 (= e!820720 e!820727)))

(declare-fun res!989361 () Bool)

(assert (=> b!1459321 (=> (not res!989361) (not e!820727))))

(assert (=> b!1459321 (= res!989361 (= (select (store (arr!47574 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1459321 (= lt!639361 (array!98582 (store (arr!47574 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48125 a!2862)))))

(assert (= (and start!125216 res!989358) b!1459320))

(assert (= (and b!1459320 res!989371) b!1459301))

(assert (= (and b!1459301 res!989364) b!1459312))

(assert (= (and b!1459312 res!989369) b!1459309))

(assert (= (and b!1459309 res!989356) b!1459307))

(assert (= (and b!1459307 res!989360) b!1459308))

(assert (= (and b!1459308 res!989370) b!1459321))

(assert (= (and b!1459321 res!989361) b!1459315))

(assert (= (and b!1459315 res!989373) b!1459313))

(assert (= (and b!1459313 res!989366) b!1459302))

(assert (= (and b!1459302 res!989365) b!1459305))

(assert (= (and b!1459305 c!134485) b!1459317))

(assert (= (and b!1459305 (not c!134485)) b!1459303))

(assert (= (and b!1459305 res!989363) b!1459318))

(assert (= (and b!1459318 res!989357) b!1459311))

(assert (= (and b!1459311 (not res!989367)) b!1459314))

(assert (= (and b!1459314 (not res!989372)) b!1459306))

(assert (= (and b!1459306 (not res!989368)) b!1459310))

(assert (= (and b!1459310 c!134486) b!1459319))

(assert (= (and b!1459310 (not c!134486)) b!1459316))

(assert (= (and b!1459310 (not res!989362)) b!1459300))

(assert (= (and b!1459300 (not res!989359)) b!1459304))

(declare-fun m!1347123 () Bool)

(assert (=> b!1459316 m!1347123))

(declare-fun m!1347125 () Bool)

(assert (=> b!1459321 m!1347125))

(declare-fun m!1347127 () Bool)

(assert (=> b!1459321 m!1347127))

(declare-fun m!1347129 () Bool)

(assert (=> b!1459311 m!1347129))

(assert (=> b!1459311 m!1347125))

(declare-fun m!1347131 () Bool)

(assert (=> b!1459311 m!1347131))

(declare-fun m!1347133 () Bool)

(assert (=> b!1459311 m!1347133))

(declare-fun m!1347135 () Bool)

(assert (=> b!1459311 m!1347135))

(declare-fun m!1347137 () Bool)

(assert (=> b!1459311 m!1347137))

(declare-fun m!1347139 () Bool)

(assert (=> b!1459311 m!1347139))

(declare-fun m!1347141 () Bool)

(assert (=> b!1459311 m!1347141))

(assert (=> b!1459311 m!1347137))

(declare-fun m!1347143 () Bool)

(assert (=> b!1459301 m!1347143))

(assert (=> b!1459301 m!1347143))

(declare-fun m!1347145 () Bool)

(assert (=> b!1459301 m!1347145))

(declare-fun m!1347147 () Bool)

(assert (=> b!1459319 m!1347147))

(declare-fun m!1347149 () Bool)

(assert (=> b!1459314 m!1347149))

(declare-fun m!1347151 () Bool)

(assert (=> b!1459314 m!1347151))

(declare-fun m!1347153 () Bool)

(assert (=> b!1459314 m!1347153))

(declare-fun m!1347155 () Bool)

(assert (=> start!125216 m!1347155))

(declare-fun m!1347157 () Bool)

(assert (=> start!125216 m!1347157))

(declare-fun m!1347159 () Bool)

(assert (=> b!1459309 m!1347159))

(assert (=> b!1459312 m!1347137))

(assert (=> b!1459312 m!1347137))

(declare-fun m!1347161 () Bool)

(assert (=> b!1459312 m!1347161))

(assert (=> b!1459303 m!1347151))

(assert (=> b!1459303 m!1347153))

(assert (=> b!1459306 m!1347137))

(assert (=> b!1459306 m!1347137))

(declare-fun m!1347163 () Bool)

(assert (=> b!1459306 m!1347163))

(assert (=> b!1459315 m!1347137))

(assert (=> b!1459315 m!1347137))

(declare-fun m!1347165 () Bool)

(assert (=> b!1459315 m!1347165))

(assert (=> b!1459315 m!1347165))

(assert (=> b!1459315 m!1347137))

(declare-fun m!1347167 () Bool)

(assert (=> b!1459315 m!1347167))

(declare-fun m!1347169 () Bool)

(assert (=> b!1459302 m!1347169))

(assert (=> b!1459302 m!1347169))

(declare-fun m!1347171 () Bool)

(assert (=> b!1459302 m!1347171))

(assert (=> b!1459302 m!1347125))

(declare-fun m!1347173 () Bool)

(assert (=> b!1459302 m!1347173))

(declare-fun m!1347175 () Bool)

(assert (=> b!1459307 m!1347175))

(declare-fun m!1347177 () Bool)

(assert (=> b!1459317 m!1347177))

(assert (=> b!1459313 m!1347137))

(assert (=> b!1459313 m!1347137))

(declare-fun m!1347179 () Bool)

(assert (=> b!1459313 m!1347179))

(declare-fun m!1347181 () Bool)

(assert (=> b!1459304 m!1347181))

(push 1)

