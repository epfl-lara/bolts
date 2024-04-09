; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124862 () Bool)

(assert start!124862)

(declare-fun res!980161 () Bool)

(declare-fun e!815778 () Bool)

(assert (=> start!124862 (=> (not res!980161) (not e!815778))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124862 (= res!980161 (validMask!0 mask!2687))))

(assert (=> start!124862 e!815778))

(assert (=> start!124862 true))

(declare-datatypes ((array!98227 0))(
  ( (array!98228 (arr!47397 (Array (_ BitVec 32) (_ BitVec 64))) (size!47948 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98227)

(declare-fun array_inv!36342 (array!98227) Bool)

(assert (=> start!124862 (array_inv!36342 a!2862)))

(declare-fun b!1448512 () Bool)

(declare-fun e!815786 () Bool)

(declare-fun e!815783 () Bool)

(assert (=> b!1448512 (= e!815786 e!815783)))

(declare-fun res!980156 () Bool)

(assert (=> b!1448512 (=> (not res!980156) (not e!815783))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11672 0))(
  ( (MissingZero!11672 (index!49079 (_ BitVec 32))) (Found!11672 (index!49080 (_ BitVec 32))) (Intermediate!11672 (undefined!12484 Bool) (index!49081 (_ BitVec 32)) (x!130748 (_ BitVec 32))) (Undefined!11672) (MissingVacant!11672 (index!49082 (_ BitVec 32))) )
))
(declare-fun lt!635533 () SeekEntryResult!11672)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98227 (_ BitVec 32)) SeekEntryResult!11672)

(assert (=> b!1448512 (= res!980156 (= lt!635533 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47397 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1448513 () Bool)

(declare-fun e!815785 () Bool)

(assert (=> b!1448513 (= e!815778 e!815785)))

(declare-fun res!980164 () Bool)

(assert (=> b!1448513 (=> (not res!980164) (not e!815785))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1448513 (= res!980164 (= (select (store (arr!47397 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!635530 () array!98227)

(assert (=> b!1448513 (= lt!635530 (array!98228 (store (arr!47397 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47948 a!2862)))))

(declare-fun b!1448514 () Bool)

(declare-fun res!980160 () Bool)

(assert (=> b!1448514 (=> (not res!980160) (not e!815778))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1448514 (= res!980160 (validKeyInArray!0 (select (arr!47397 a!2862) i!1006)))))

(declare-fun b!1448515 () Bool)

(declare-fun res!980152 () Bool)

(assert (=> b!1448515 (=> (not res!980152) (not e!815778))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1448515 (= res!980152 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47948 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47948 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47948 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1448516 () Bool)

(declare-fun res!980151 () Bool)

(assert (=> b!1448516 (=> (not res!980151) (not e!815778))))

(assert (=> b!1448516 (= res!980151 (and (= (size!47948 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47948 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47948 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1448517 () Bool)

(declare-fun res!980154 () Bool)

(declare-fun e!815779 () Bool)

(assert (=> b!1448517 (=> (not res!980154) (not e!815779))))

(declare-fun lt!635527 () SeekEntryResult!11672)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98227 (_ BitVec 32)) SeekEntryResult!11672)

(assert (=> b!1448517 (= res!980154 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47397 a!2862) j!93) a!2862 mask!2687) lt!635527))))

(declare-fun b!1448518 () Bool)

(assert (=> b!1448518 (= e!815785 e!815779)))

(declare-fun res!980166 () Bool)

(assert (=> b!1448518 (=> (not res!980166) (not e!815779))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1448518 (= res!980166 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47397 a!2862) j!93) mask!2687) (select (arr!47397 a!2862) j!93) a!2862 mask!2687) lt!635527))))

(assert (=> b!1448518 (= lt!635527 (Intermediate!11672 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1448519 () Bool)

(declare-fun e!815784 () Bool)

(declare-fun e!815781 () Bool)

(assert (=> b!1448519 (= e!815784 (not e!815781))))

(declare-fun res!980159 () Bool)

(assert (=> b!1448519 (=> res!980159 e!815781)))

(assert (=> b!1448519 (= res!980159 (or (and (= (select (arr!47397 a!2862) index!646) (select (store (arr!47397 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47397 a!2862) index!646) (select (arr!47397 a!2862) j!93))) (not (= (select (arr!47397 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47397 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!815777 () Bool)

(assert (=> b!1448519 e!815777))

(declare-fun res!980163 () Bool)

(assert (=> b!1448519 (=> (not res!980163) (not e!815777))))

(assert (=> b!1448519 (= res!980163 (and (= lt!635533 (Found!11672 j!93)) (or (= (select (arr!47397 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47397 a!2862) intermediateBeforeIndex!19) (select (arr!47397 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98227 (_ BitVec 32)) SeekEntryResult!11672)

(assert (=> b!1448519 (= lt!635533 (seekEntryOrOpen!0 (select (arr!47397 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98227 (_ BitVec 32)) Bool)

(assert (=> b!1448519 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48788 0))(
  ( (Unit!48789) )
))
(declare-fun lt!635531 () Unit!48788)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98227 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48788)

(assert (=> b!1448519 (= lt!635531 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1448520 () Bool)

(assert (=> b!1448520 (= e!815777 e!815786)))

(declare-fun res!980157 () Bool)

(assert (=> b!1448520 (=> res!980157 e!815786)))

(assert (=> b!1448520 (= res!980157 (or (and (= (select (arr!47397 a!2862) index!646) (select (store (arr!47397 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47397 a!2862) index!646) (select (arr!47397 a!2862) j!93))) (not (= (select (arr!47397 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1448521 () Bool)

(declare-fun res!980158 () Bool)

(assert (=> b!1448521 (=> (not res!980158) (not e!815784))))

(declare-fun e!815780 () Bool)

(assert (=> b!1448521 (= res!980158 e!815780)))

(declare-fun c!133694 () Bool)

(assert (=> b!1448521 (= c!133694 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1448522 () Bool)

(declare-fun res!980153 () Bool)

(assert (=> b!1448522 (=> (not res!980153) (not e!815778))))

(assert (=> b!1448522 (= res!980153 (validKeyInArray!0 (select (arr!47397 a!2862) j!93)))))

(declare-fun b!1448523 () Bool)

(declare-fun res!980165 () Bool)

(assert (=> b!1448523 (=> (not res!980165) (not e!815778))))

(declare-datatypes ((List!34078 0))(
  ( (Nil!34075) (Cons!34074 (h!35424 (_ BitVec 64)) (t!48779 List!34078)) )
))
(declare-fun arrayNoDuplicates!0 (array!98227 (_ BitVec 32) List!34078) Bool)

(assert (=> b!1448523 (= res!980165 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34075))))

(declare-fun b!1448524 () Bool)

(assert (=> b!1448524 (= e!815781 true)))

(declare-fun lt!635529 () SeekEntryResult!11672)

(assert (=> b!1448524 (= lt!635529 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47397 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1448525 () Bool)

(declare-fun lt!635528 () SeekEntryResult!11672)

(declare-fun lt!635532 () (_ BitVec 64))

(assert (=> b!1448525 (= e!815780 (= lt!635528 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635532 lt!635530 mask!2687)))))

(declare-fun b!1448526 () Bool)

(assert (=> b!1448526 (= e!815780 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635532 lt!635530 mask!2687) (seekEntryOrOpen!0 lt!635532 lt!635530 mask!2687)))))

(declare-fun b!1448527 () Bool)

(declare-fun res!980162 () Bool)

(assert (=> b!1448527 (=> (not res!980162) (not e!815784))))

(assert (=> b!1448527 (= res!980162 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1448528 () Bool)

(assert (=> b!1448528 (= e!815783 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1448529 () Bool)

(assert (=> b!1448529 (= e!815779 e!815784)))

(declare-fun res!980150 () Bool)

(assert (=> b!1448529 (=> (not res!980150) (not e!815784))))

(assert (=> b!1448529 (= res!980150 (= lt!635528 (Intermediate!11672 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1448529 (= lt!635528 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635532 mask!2687) lt!635532 lt!635530 mask!2687))))

(assert (=> b!1448529 (= lt!635532 (select (store (arr!47397 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1448530 () Bool)

(declare-fun res!980155 () Bool)

(assert (=> b!1448530 (=> (not res!980155) (not e!815778))))

(assert (=> b!1448530 (= res!980155 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124862 res!980161) b!1448516))

(assert (= (and b!1448516 res!980151) b!1448514))

(assert (= (and b!1448514 res!980160) b!1448522))

(assert (= (and b!1448522 res!980153) b!1448530))

(assert (= (and b!1448530 res!980155) b!1448523))

(assert (= (and b!1448523 res!980165) b!1448515))

(assert (= (and b!1448515 res!980152) b!1448513))

(assert (= (and b!1448513 res!980164) b!1448518))

(assert (= (and b!1448518 res!980166) b!1448517))

(assert (= (and b!1448517 res!980154) b!1448529))

(assert (= (and b!1448529 res!980150) b!1448521))

(assert (= (and b!1448521 c!133694) b!1448525))

(assert (= (and b!1448521 (not c!133694)) b!1448526))

(assert (= (and b!1448521 res!980158) b!1448527))

(assert (= (and b!1448527 res!980162) b!1448519))

(assert (= (and b!1448519 res!980163) b!1448520))

(assert (= (and b!1448520 (not res!980157)) b!1448512))

(assert (= (and b!1448512 res!980156) b!1448528))

(assert (= (and b!1448519 (not res!980159)) b!1448524))

(declare-fun m!1337325 () Bool)

(assert (=> b!1448519 m!1337325))

(declare-fun m!1337327 () Bool)

(assert (=> b!1448519 m!1337327))

(declare-fun m!1337329 () Bool)

(assert (=> b!1448519 m!1337329))

(declare-fun m!1337331 () Bool)

(assert (=> b!1448519 m!1337331))

(declare-fun m!1337333 () Bool)

(assert (=> b!1448519 m!1337333))

(declare-fun m!1337335 () Bool)

(assert (=> b!1448519 m!1337335))

(declare-fun m!1337337 () Bool)

(assert (=> b!1448519 m!1337337))

(declare-fun m!1337339 () Bool)

(assert (=> b!1448519 m!1337339))

(assert (=> b!1448519 m!1337335))

(declare-fun m!1337341 () Bool)

(assert (=> b!1448529 m!1337341))

(assert (=> b!1448529 m!1337341))

(declare-fun m!1337343 () Bool)

(assert (=> b!1448529 m!1337343))

(assert (=> b!1448529 m!1337327))

(declare-fun m!1337345 () Bool)

(assert (=> b!1448529 m!1337345))

(declare-fun m!1337347 () Bool)

(assert (=> b!1448526 m!1337347))

(declare-fun m!1337349 () Bool)

(assert (=> b!1448526 m!1337349))

(declare-fun m!1337351 () Bool)

(assert (=> start!124862 m!1337351))

(declare-fun m!1337353 () Bool)

(assert (=> start!124862 m!1337353))

(declare-fun m!1337355 () Bool)

(assert (=> b!1448523 m!1337355))

(assert (=> b!1448520 m!1337333))

(assert (=> b!1448520 m!1337327))

(assert (=> b!1448520 m!1337331))

(assert (=> b!1448520 m!1337335))

(assert (=> b!1448522 m!1337335))

(assert (=> b!1448522 m!1337335))

(declare-fun m!1337357 () Bool)

(assert (=> b!1448522 m!1337357))

(assert (=> b!1448513 m!1337327))

(declare-fun m!1337359 () Bool)

(assert (=> b!1448513 m!1337359))

(assert (=> b!1448512 m!1337335))

(assert (=> b!1448512 m!1337335))

(declare-fun m!1337361 () Bool)

(assert (=> b!1448512 m!1337361))

(assert (=> b!1448517 m!1337335))

(assert (=> b!1448517 m!1337335))

(declare-fun m!1337363 () Bool)

(assert (=> b!1448517 m!1337363))

(assert (=> b!1448518 m!1337335))

(assert (=> b!1448518 m!1337335))

(declare-fun m!1337365 () Bool)

(assert (=> b!1448518 m!1337365))

(assert (=> b!1448518 m!1337365))

(assert (=> b!1448518 m!1337335))

(declare-fun m!1337367 () Bool)

(assert (=> b!1448518 m!1337367))

(declare-fun m!1337369 () Bool)

(assert (=> b!1448514 m!1337369))

(assert (=> b!1448514 m!1337369))

(declare-fun m!1337371 () Bool)

(assert (=> b!1448514 m!1337371))

(declare-fun m!1337373 () Bool)

(assert (=> b!1448525 m!1337373))

(assert (=> b!1448524 m!1337335))

(assert (=> b!1448524 m!1337335))

(declare-fun m!1337375 () Bool)

(assert (=> b!1448524 m!1337375))

(declare-fun m!1337377 () Bool)

(assert (=> b!1448530 m!1337377))

(push 1)

