; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126458 () Bool)

(assert start!126458)

(declare-fun b!1482348 () Bool)

(declare-fun e!831266 () Bool)

(declare-fun e!831267 () Bool)

(assert (=> b!1482348 (= e!831266 e!831267)))

(declare-fun res!1007677 () Bool)

(assert (=> b!1482348 (=> (not res!1007677) (not e!831267))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99394 0))(
  ( (array!99395 (arr!47970 (Array (_ BitVec 32) (_ BitVec 64))) (size!48521 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99394)

(assert (=> b!1482348 (= res!1007677 (= (select (store (arr!47970 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!647007 () array!99394)

(assert (=> b!1482348 (= lt!647007 (array!99395 (store (arr!47970 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48521 a!2862)))))

(declare-fun b!1482349 () Bool)

(declare-fun res!1007676 () Bool)

(declare-fun e!831268 () Bool)

(assert (=> b!1482349 (=> (not res!1007676) (not e!831268))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1482349 (= res!1007676 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1482350 () Bool)

(declare-fun res!1007672 () Bool)

(declare-fun e!831272 () Bool)

(assert (=> b!1482350 (=> (not res!1007672) (not e!831272))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12233 0))(
  ( (MissingZero!12233 (index!51323 (_ BitVec 32))) (Found!12233 (index!51324 (_ BitVec 32))) (Intermediate!12233 (undefined!13045 Bool) (index!51325 (_ BitVec 32)) (x!132903 (_ BitVec 32))) (Undefined!12233) (MissingVacant!12233 (index!51326 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99394 (_ BitVec 32)) SeekEntryResult!12233)

(assert (=> b!1482350 (= res!1007672 (= (seekEntryOrOpen!0 (select (arr!47970 a!2862) j!93) a!2862 mask!2687) (Found!12233 j!93)))))

(declare-fun b!1482351 () Bool)

(declare-fun res!1007673 () Bool)

(assert (=> b!1482351 (=> (not res!1007673) (not e!831266))))

(declare-datatypes ((List!34651 0))(
  ( (Nil!34648) (Cons!34647 (h!36018 (_ BitVec 64)) (t!49352 List!34651)) )
))
(declare-fun arrayNoDuplicates!0 (array!99394 (_ BitVec 32) List!34651) Bool)

(assert (=> b!1482351 (= res!1007673 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34648))))

(declare-fun b!1482352 () Bool)

(declare-fun e!831270 () Bool)

(assert (=> b!1482352 (= e!831267 e!831270)))

(declare-fun res!1007671 () Bool)

(assert (=> b!1482352 (=> (not res!1007671) (not e!831270))))

(declare-fun lt!647008 () SeekEntryResult!12233)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99394 (_ BitVec 32)) SeekEntryResult!12233)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1482352 (= res!1007671 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47970 a!2862) j!93) mask!2687) (select (arr!47970 a!2862) j!93) a!2862 mask!2687) lt!647008))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1482352 (= lt!647008 (Intermediate!12233 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!1007668 () Bool)

(assert (=> start!126458 (=> (not res!1007668) (not e!831266))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126458 (= res!1007668 (validMask!0 mask!2687))))

(assert (=> start!126458 e!831266))

(assert (=> start!126458 true))

(declare-fun array_inv!36915 (array!99394) Bool)

(assert (=> start!126458 (array_inv!36915 a!2862)))

(declare-fun b!1482353 () Bool)

(assert (=> b!1482353 (= e!831270 e!831268)))

(declare-fun res!1007665 () Bool)

(assert (=> b!1482353 (=> (not res!1007665) (not e!831268))))

(declare-fun lt!647011 () SeekEntryResult!12233)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1482353 (= res!1007665 (= lt!647011 (Intermediate!12233 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!647010 () (_ BitVec 64))

(assert (=> b!1482353 (= lt!647011 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647010 mask!2687) lt!647010 lt!647007 mask!2687))))

(assert (=> b!1482353 (= lt!647010 (select (store (arr!47970 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1482354 () Bool)

(declare-fun res!1007679 () Bool)

(assert (=> b!1482354 (=> (not res!1007679) (not e!831266))))

(assert (=> b!1482354 (= res!1007679 (and (= (size!48521 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48521 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48521 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1482355 () Bool)

(declare-fun res!1007678 () Bool)

(assert (=> b!1482355 (=> (not res!1007678) (not e!831266))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1482355 (= res!1007678 (validKeyInArray!0 (select (arr!47970 a!2862) j!93)))))

(declare-fun b!1482356 () Bool)

(declare-fun res!1007674 () Bool)

(assert (=> b!1482356 (=> (not res!1007674) (not e!831266))))

(assert (=> b!1482356 (= res!1007674 (validKeyInArray!0 (select (arr!47970 a!2862) i!1006)))))

(declare-fun b!1482357 () Bool)

(assert (=> b!1482357 (= e!831268 (not true))))

(assert (=> b!1482357 e!831272))

(declare-fun res!1007675 () Bool)

(assert (=> b!1482357 (=> (not res!1007675) (not e!831272))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99394 (_ BitVec 32)) Bool)

(assert (=> b!1482357 (= res!1007675 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49754 0))(
  ( (Unit!49755) )
))
(declare-fun lt!647009 () Unit!49754)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99394 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49754)

(assert (=> b!1482357 (= lt!647009 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1482358 () Bool)

(declare-fun res!1007666 () Bool)

(assert (=> b!1482358 (=> (not res!1007666) (not e!831270))))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1482358 (= res!1007666 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47970 a!2862) j!93) a!2862 mask!2687) lt!647008))))

(declare-fun b!1482359 () Bool)

(declare-fun res!1007670 () Bool)

(assert (=> b!1482359 (=> (not res!1007670) (not e!831266))))

(assert (=> b!1482359 (= res!1007670 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1482360 () Bool)

(declare-fun e!831271 () Bool)

(assert (=> b!1482360 (= e!831271 (= lt!647011 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647010 lt!647007 mask!2687)))))

(declare-fun b!1482361 () Bool)

(declare-fun res!1007669 () Bool)

(assert (=> b!1482361 (=> (not res!1007669) (not e!831268))))

(assert (=> b!1482361 (= res!1007669 e!831271)))

(declare-fun c!136865 () Bool)

(assert (=> b!1482361 (= c!136865 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1482362 () Bool)

(declare-fun res!1007667 () Bool)

(assert (=> b!1482362 (=> (not res!1007667) (not e!831266))))

(assert (=> b!1482362 (= res!1007667 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48521 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48521 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48521 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1482363 () Bool)

(assert (=> b!1482363 (= e!831272 (and (or (= (select (arr!47970 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47970 a!2862) intermediateBeforeIndex!19) (select (arr!47970 a!2862) j!93))) (or (and (= (select (arr!47970 a!2862) index!646) (select (store (arr!47970 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47970 a!2862) index!646) (select (arr!47970 a!2862) j!93))) (= (select (arr!47970 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47970 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1482364 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99394 (_ BitVec 32)) SeekEntryResult!12233)

(assert (=> b!1482364 (= e!831271 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647010 lt!647007 mask!2687) (seekEntryOrOpen!0 lt!647010 lt!647007 mask!2687)))))

(assert (= (and start!126458 res!1007668) b!1482354))

(assert (= (and b!1482354 res!1007679) b!1482356))

(assert (= (and b!1482356 res!1007674) b!1482355))

(assert (= (and b!1482355 res!1007678) b!1482359))

(assert (= (and b!1482359 res!1007670) b!1482351))

(assert (= (and b!1482351 res!1007673) b!1482362))

(assert (= (and b!1482362 res!1007667) b!1482348))

(assert (= (and b!1482348 res!1007677) b!1482352))

(assert (= (and b!1482352 res!1007671) b!1482358))

(assert (= (and b!1482358 res!1007666) b!1482353))

(assert (= (and b!1482353 res!1007665) b!1482361))

(assert (= (and b!1482361 c!136865) b!1482360))

(assert (= (and b!1482361 (not c!136865)) b!1482364))

(assert (= (and b!1482361 res!1007669) b!1482349))

(assert (= (and b!1482349 res!1007676) b!1482357))

(assert (= (and b!1482357 res!1007675) b!1482350))

(assert (= (and b!1482350 res!1007672) b!1482363))

(declare-fun m!1368127 () Bool)

(assert (=> start!126458 m!1368127))

(declare-fun m!1368129 () Bool)

(assert (=> start!126458 m!1368129))

(declare-fun m!1368131 () Bool)

(assert (=> b!1482359 m!1368131))

(declare-fun m!1368133 () Bool)

(assert (=> b!1482356 m!1368133))

(assert (=> b!1482356 m!1368133))

(declare-fun m!1368135 () Bool)

(assert (=> b!1482356 m!1368135))

(declare-fun m!1368137 () Bool)

(assert (=> b!1482363 m!1368137))

(declare-fun m!1368139 () Bool)

(assert (=> b!1482363 m!1368139))

(declare-fun m!1368141 () Bool)

(assert (=> b!1482363 m!1368141))

(declare-fun m!1368143 () Bool)

(assert (=> b!1482363 m!1368143))

(declare-fun m!1368145 () Bool)

(assert (=> b!1482363 m!1368145))

(assert (=> b!1482348 m!1368137))

(declare-fun m!1368147 () Bool)

(assert (=> b!1482348 m!1368147))

(declare-fun m!1368149 () Bool)

(assert (=> b!1482357 m!1368149))

(declare-fun m!1368151 () Bool)

(assert (=> b!1482357 m!1368151))

(declare-fun m!1368153 () Bool)

(assert (=> b!1482360 m!1368153))

(assert (=> b!1482358 m!1368145))

(assert (=> b!1482358 m!1368145))

(declare-fun m!1368155 () Bool)

(assert (=> b!1482358 m!1368155))

(declare-fun m!1368157 () Bool)

(assert (=> b!1482353 m!1368157))

(assert (=> b!1482353 m!1368157))

(declare-fun m!1368159 () Bool)

(assert (=> b!1482353 m!1368159))

(assert (=> b!1482353 m!1368137))

(declare-fun m!1368161 () Bool)

(assert (=> b!1482353 m!1368161))

(assert (=> b!1482350 m!1368145))

(assert (=> b!1482350 m!1368145))

(declare-fun m!1368163 () Bool)

(assert (=> b!1482350 m!1368163))

(declare-fun m!1368165 () Bool)

(assert (=> b!1482364 m!1368165))

(declare-fun m!1368167 () Bool)

(assert (=> b!1482364 m!1368167))

(assert (=> b!1482355 m!1368145))

(assert (=> b!1482355 m!1368145))

(declare-fun m!1368169 () Bool)

(assert (=> b!1482355 m!1368169))

(declare-fun m!1368171 () Bool)

(assert (=> b!1482351 m!1368171))

(assert (=> b!1482352 m!1368145))

(assert (=> b!1482352 m!1368145))

(declare-fun m!1368173 () Bool)

(assert (=> b!1482352 m!1368173))

(assert (=> b!1482352 m!1368173))

(assert (=> b!1482352 m!1368145))

(declare-fun m!1368175 () Bool)

(assert (=> b!1482352 m!1368175))

(push 1)

