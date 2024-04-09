; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126914 () Bool)

(assert start!126914)

(declare-fun b!1490270 () Bool)

(declare-fun e!835130 () Bool)

(declare-fun e!835129 () Bool)

(assert (=> b!1490270 (= e!835130 (not e!835129))))

(declare-fun res!1013682 () Bool)

(assert (=> b!1490270 (=> res!1013682 e!835129)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99604 0))(
  ( (array!99605 (arr!48069 (Array (_ BitVec 32) (_ BitVec 64))) (size!48620 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99604)

(assert (=> b!1490270 (= res!1013682 (or (and (= (select (arr!48069 a!2862) index!646) (select (store (arr!48069 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48069 a!2862) index!646) (select (arr!48069 a!2862) j!93))) (= (select (arr!48069 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!835132 () Bool)

(assert (=> b!1490270 e!835132))

(declare-fun res!1013672 () Bool)

(assert (=> b!1490270 (=> (not res!1013672) (not e!835132))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99604 (_ BitVec 32)) Bool)

(assert (=> b!1490270 (= res!1013672 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49952 0))(
  ( (Unit!49953) )
))
(declare-fun lt!649855 () Unit!49952)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99604 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49952)

(assert (=> b!1490270 (= lt!649855 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1490271 () Bool)

(declare-fun e!835131 () Bool)

(assert (=> b!1490271 (= e!835131 e!835130)))

(declare-fun res!1013667 () Bool)

(assert (=> b!1490271 (=> (not res!1013667) (not e!835130))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12332 0))(
  ( (MissingZero!12332 (index!51719 (_ BitVec 32))) (Found!12332 (index!51720 (_ BitVec 32))) (Intermediate!12332 (undefined!13144 Bool) (index!51721 (_ BitVec 32)) (x!133311 (_ BitVec 32))) (Undefined!12332) (MissingVacant!12332 (index!51722 (_ BitVec 32))) )
))
(declare-fun lt!649857 () SeekEntryResult!12332)

(assert (=> b!1490271 (= res!1013667 (= lt!649857 (Intermediate!12332 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!649854 () (_ BitVec 64))

(declare-fun lt!649853 () array!99604)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99604 (_ BitVec 32)) SeekEntryResult!12332)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490271 (= lt!649857 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649854 mask!2687) lt!649854 lt!649853 mask!2687))))

(assert (=> b!1490271 (= lt!649854 (select (store (arr!48069 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1490272 () Bool)

(declare-fun res!1013670 () Bool)

(declare-fun e!835126 () Bool)

(assert (=> b!1490272 (=> (not res!1013670) (not e!835126))))

(assert (=> b!1490272 (= res!1013670 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1490273 () Bool)

(declare-fun e!835128 () Bool)

(assert (=> b!1490273 (= e!835128 e!835131)))

(declare-fun res!1013679 () Bool)

(assert (=> b!1490273 (=> (not res!1013679) (not e!835131))))

(declare-fun lt!649858 () SeekEntryResult!12332)

(assert (=> b!1490273 (= res!1013679 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48069 a!2862) j!93) mask!2687) (select (arr!48069 a!2862) j!93) a!2862 mask!2687) lt!649858))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1490273 (= lt!649858 (Intermediate!12332 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!1013674 () Bool)

(assert (=> start!126914 (=> (not res!1013674) (not e!835126))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126914 (= res!1013674 (validMask!0 mask!2687))))

(assert (=> start!126914 e!835126))

(assert (=> start!126914 true))

(declare-fun array_inv!37014 (array!99604) Bool)

(assert (=> start!126914 (array_inv!37014 a!2862)))

(declare-fun b!1490274 () Bool)

(declare-fun e!835127 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99604 (_ BitVec 32)) SeekEntryResult!12332)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99604 (_ BitVec 32)) SeekEntryResult!12332)

(assert (=> b!1490274 (= e!835127 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649854 lt!649853 mask!2687) (seekEntryOrOpen!0 lt!649854 lt!649853 mask!2687)))))

(declare-fun b!1490275 () Bool)

(declare-fun res!1013677 () Bool)

(assert (=> b!1490275 (=> (not res!1013677) (not e!835126))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1490275 (= res!1013677 (validKeyInArray!0 (select (arr!48069 a!2862) i!1006)))))

(declare-fun b!1490276 () Bool)

(assert (=> b!1490276 (= e!835127 (= lt!649857 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649854 lt!649853 mask!2687)))))

(declare-fun b!1490277 () Bool)

(declare-fun res!1013668 () Bool)

(assert (=> b!1490277 (=> (not res!1013668) (not e!835130))))

(assert (=> b!1490277 (= res!1013668 e!835127)))

(declare-fun c!137831 () Bool)

(assert (=> b!1490277 (= c!137831 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1490278 () Bool)

(declare-fun res!1013678 () Bool)

(assert (=> b!1490278 (=> (not res!1013678) (not e!835126))))

(assert (=> b!1490278 (= res!1013678 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48620 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48620 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48620 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1490279 () Bool)

(declare-fun res!1013681 () Bool)

(assert (=> b!1490279 (=> (not res!1013681) (not e!835130))))

(assert (=> b!1490279 (= res!1013681 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1490280 () Bool)

(assert (=> b!1490280 (= e!835126 e!835128)))

(declare-fun res!1013673 () Bool)

(assert (=> b!1490280 (=> (not res!1013673) (not e!835128))))

(assert (=> b!1490280 (= res!1013673 (= (select (store (arr!48069 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1490280 (= lt!649853 (array!99605 (store (arr!48069 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48620 a!2862)))))

(declare-fun b!1490281 () Bool)

(declare-fun res!1013669 () Bool)

(assert (=> b!1490281 (=> (not res!1013669) (not e!835126))))

(assert (=> b!1490281 (= res!1013669 (and (= (size!48620 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48620 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48620 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1490282 () Bool)

(assert (=> b!1490282 (= e!835132 (or (= (select (arr!48069 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48069 a!2862) intermediateBeforeIndex!19) (select (arr!48069 a!2862) j!93))))))

(declare-fun b!1490283 () Bool)

(declare-fun res!1013680 () Bool)

(assert (=> b!1490283 (=> (not res!1013680) (not e!835126))))

(declare-datatypes ((List!34750 0))(
  ( (Nil!34747) (Cons!34746 (h!36129 (_ BitVec 64)) (t!49451 List!34750)) )
))
(declare-fun arrayNoDuplicates!0 (array!99604 (_ BitVec 32) List!34750) Bool)

(assert (=> b!1490283 (= res!1013680 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34747))))

(declare-fun b!1490284 () Bool)

(declare-fun res!1013676 () Bool)

(assert (=> b!1490284 (=> (not res!1013676) (not e!835132))))

(assert (=> b!1490284 (= res!1013676 (= (seekEntryOrOpen!0 (select (arr!48069 a!2862) j!93) a!2862 mask!2687) (Found!12332 j!93)))))

(declare-fun b!1490285 () Bool)

(assert (=> b!1490285 (= e!835129 true)))

(declare-fun lt!649856 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490285 (= lt!649856 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1490286 () Bool)

(declare-fun res!1013671 () Bool)

(assert (=> b!1490286 (=> (not res!1013671) (not e!835126))))

(assert (=> b!1490286 (= res!1013671 (validKeyInArray!0 (select (arr!48069 a!2862) j!93)))))

(declare-fun b!1490287 () Bool)

(declare-fun res!1013675 () Bool)

(assert (=> b!1490287 (=> (not res!1013675) (not e!835131))))

(assert (=> b!1490287 (= res!1013675 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48069 a!2862) j!93) a!2862 mask!2687) lt!649858))))

(assert (= (and start!126914 res!1013674) b!1490281))

(assert (= (and b!1490281 res!1013669) b!1490275))

(assert (= (and b!1490275 res!1013677) b!1490286))

(assert (= (and b!1490286 res!1013671) b!1490272))

(assert (= (and b!1490272 res!1013670) b!1490283))

(assert (= (and b!1490283 res!1013680) b!1490278))

(assert (= (and b!1490278 res!1013678) b!1490280))

(assert (= (and b!1490280 res!1013673) b!1490273))

(assert (= (and b!1490273 res!1013679) b!1490287))

(assert (= (and b!1490287 res!1013675) b!1490271))

(assert (= (and b!1490271 res!1013667) b!1490277))

(assert (= (and b!1490277 c!137831) b!1490276))

(assert (= (and b!1490277 (not c!137831)) b!1490274))

(assert (= (and b!1490277 res!1013668) b!1490279))

(assert (= (and b!1490279 res!1013681) b!1490270))

(assert (= (and b!1490270 res!1013672) b!1490284))

(assert (= (and b!1490284 res!1013676) b!1490282))

(assert (= (and b!1490270 (not res!1013682)) b!1490285))

(declare-fun m!1374491 () Bool)

(assert (=> b!1490274 m!1374491))

(declare-fun m!1374493 () Bool)

(assert (=> b!1490274 m!1374493))

(declare-fun m!1374495 () Bool)

(assert (=> b!1490287 m!1374495))

(assert (=> b!1490287 m!1374495))

(declare-fun m!1374497 () Bool)

(assert (=> b!1490287 m!1374497))

(declare-fun m!1374499 () Bool)

(assert (=> b!1490283 m!1374499))

(declare-fun m!1374501 () Bool)

(assert (=> b!1490271 m!1374501))

(assert (=> b!1490271 m!1374501))

(declare-fun m!1374503 () Bool)

(assert (=> b!1490271 m!1374503))

(declare-fun m!1374505 () Bool)

(assert (=> b!1490271 m!1374505))

(declare-fun m!1374507 () Bool)

(assert (=> b!1490271 m!1374507))

(declare-fun m!1374509 () Bool)

(assert (=> b!1490276 m!1374509))

(declare-fun m!1374511 () Bool)

(assert (=> b!1490272 m!1374511))

(assert (=> b!1490273 m!1374495))

(assert (=> b!1490273 m!1374495))

(declare-fun m!1374513 () Bool)

(assert (=> b!1490273 m!1374513))

(assert (=> b!1490273 m!1374513))

(assert (=> b!1490273 m!1374495))

(declare-fun m!1374515 () Bool)

(assert (=> b!1490273 m!1374515))

(assert (=> b!1490280 m!1374505))

(declare-fun m!1374517 () Bool)

(assert (=> b!1490280 m!1374517))

(declare-fun m!1374519 () Bool)

(assert (=> b!1490275 m!1374519))

(assert (=> b!1490275 m!1374519))

(declare-fun m!1374521 () Bool)

(assert (=> b!1490275 m!1374521))

(declare-fun m!1374523 () Bool)

(assert (=> start!126914 m!1374523))

(declare-fun m!1374525 () Bool)

(assert (=> start!126914 m!1374525))

(declare-fun m!1374527 () Bool)

(assert (=> b!1490270 m!1374527))

(assert (=> b!1490270 m!1374505))

(declare-fun m!1374529 () Bool)

(assert (=> b!1490270 m!1374529))

(declare-fun m!1374531 () Bool)

(assert (=> b!1490270 m!1374531))

(declare-fun m!1374533 () Bool)

(assert (=> b!1490270 m!1374533))

(assert (=> b!1490270 m!1374495))

(declare-fun m!1374535 () Bool)

(assert (=> b!1490282 m!1374535))

(assert (=> b!1490282 m!1374495))

(declare-fun m!1374537 () Bool)

(assert (=> b!1490285 m!1374537))

(assert (=> b!1490286 m!1374495))

(assert (=> b!1490286 m!1374495))

(declare-fun m!1374539 () Bool)

(assert (=> b!1490286 m!1374539))

(assert (=> b!1490284 m!1374495))

(assert (=> b!1490284 m!1374495))

(declare-fun m!1374541 () Bool)

(assert (=> b!1490284 m!1374541))

(push 1)

(assert (not b!1490287))

