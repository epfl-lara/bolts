; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126946 () Bool)

(assert start!126946)

(declare-fun b!1491134 () Bool)

(declare-fun res!1014438 () Bool)

(declare-fun e!835513 () Bool)

(assert (=> b!1491134 (=> (not res!1014438) (not e!835513))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1491134 (= res!1014438 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1491135 () Bool)

(declare-fun res!1014441 () Bool)

(declare-fun e!835516 () Bool)

(assert (=> b!1491135 (=> (not res!1014441) (not e!835516))))

(declare-datatypes ((array!99636 0))(
  ( (array!99637 (arr!48085 (Array (_ BitVec 32) (_ BitVec 64))) (size!48636 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99636)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99636 (_ BitVec 32)) Bool)

(assert (=> b!1491135 (= res!1014441 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1491136 () Bool)

(declare-fun e!835514 () Bool)

(assert (=> b!1491136 (= e!835514 true)))

(declare-fun lt!650142 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491136 (= lt!650142 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun res!1014444 () Bool)

(assert (=> start!126946 (=> (not res!1014444) (not e!835516))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126946 (= res!1014444 (validMask!0 mask!2687))))

(assert (=> start!126946 e!835516))

(assert (=> start!126946 true))

(declare-fun array_inv!37030 (array!99636) Bool)

(assert (=> start!126946 (array_inv!37030 a!2862)))

(declare-fun b!1491137 () Bool)

(declare-fun res!1014442 () Bool)

(assert (=> b!1491137 (=> (not res!1014442) (not e!835516))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1491137 (= res!1014442 (validKeyInArray!0 (select (arr!48085 a!2862) i!1006)))))

(declare-fun b!1491138 () Bool)

(declare-fun res!1014437 () Bool)

(assert (=> b!1491138 (=> (not res!1014437) (not e!835516))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1491138 (= res!1014437 (validKeyInArray!0 (select (arr!48085 a!2862) j!93)))))

(declare-fun b!1491139 () Bool)

(declare-fun e!835512 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1491139 (= e!835512 (or (= (select (arr!48085 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48085 a!2862) intermediateBeforeIndex!19) (select (arr!48085 a!2862) j!93))))))

(declare-fun b!1491140 () Bool)

(declare-fun res!1014446 () Bool)

(assert (=> b!1491140 (=> (not res!1014446) (not e!835516))))

(assert (=> b!1491140 (= res!1014446 (and (= (size!48636 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48636 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48636 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1491141 () Bool)

(declare-fun res!1014439 () Bool)

(assert (=> b!1491141 (=> (not res!1014439) (not e!835516))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1491141 (= res!1014439 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48636 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48636 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48636 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1491142 () Bool)

(declare-fun e!835517 () Bool)

(assert (=> b!1491142 (= e!835517 e!835513)))

(declare-fun res!1014435 () Bool)

(assert (=> b!1491142 (=> (not res!1014435) (not e!835513))))

(declare-datatypes ((SeekEntryResult!12348 0))(
  ( (MissingZero!12348 (index!51783 (_ BitVec 32))) (Found!12348 (index!51784 (_ BitVec 32))) (Intermediate!12348 (undefined!13160 Bool) (index!51785 (_ BitVec 32)) (x!133375 (_ BitVec 32))) (Undefined!12348) (MissingVacant!12348 (index!51786 (_ BitVec 32))) )
))
(declare-fun lt!650146 () SeekEntryResult!12348)

(assert (=> b!1491142 (= res!1014435 (= lt!650146 (Intermediate!12348 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!650141 () array!99636)

(declare-fun lt!650143 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99636 (_ BitVec 32)) SeekEntryResult!12348)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491142 (= lt!650146 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650143 mask!2687) lt!650143 lt!650141 mask!2687))))

(assert (=> b!1491142 (= lt!650143 (select (store (arr!48085 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1491143 () Bool)

(assert (=> b!1491143 (= e!835513 (not e!835514))))

(declare-fun res!1014445 () Bool)

(assert (=> b!1491143 (=> res!1014445 e!835514)))

(assert (=> b!1491143 (= res!1014445 (or (and (= (select (arr!48085 a!2862) index!646) (select (store (arr!48085 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48085 a!2862) index!646) (select (arr!48085 a!2862) j!93))) (= (select (arr!48085 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1491143 e!835512))

(declare-fun res!1014443 () Bool)

(assert (=> b!1491143 (=> (not res!1014443) (not e!835512))))

(assert (=> b!1491143 (= res!1014443 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49984 0))(
  ( (Unit!49985) )
))
(declare-fun lt!650144 () Unit!49984)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99636 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49984)

(assert (=> b!1491143 (= lt!650144 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1491144 () Bool)

(declare-fun res!1014449 () Bool)

(assert (=> b!1491144 (=> (not res!1014449) (not e!835517))))

(declare-fun lt!650145 () SeekEntryResult!12348)

(assert (=> b!1491144 (= res!1014449 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48085 a!2862) j!93) a!2862 mask!2687) lt!650145))))

(declare-fun b!1491145 () Bool)

(declare-fun e!835515 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99636 (_ BitVec 32)) SeekEntryResult!12348)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99636 (_ BitVec 32)) SeekEntryResult!12348)

(assert (=> b!1491145 (= e!835515 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650143 lt!650141 mask!2687) (seekEntryOrOpen!0 lt!650143 lt!650141 mask!2687)))))

(declare-fun b!1491146 () Bool)

(assert (=> b!1491146 (= e!835515 (= lt!650146 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650143 lt!650141 mask!2687)))))

(declare-fun b!1491147 () Bool)

(declare-fun res!1014450 () Bool)

(assert (=> b!1491147 (=> (not res!1014450) (not e!835513))))

(assert (=> b!1491147 (= res!1014450 e!835515)))

(declare-fun c!137879 () Bool)

(assert (=> b!1491147 (= c!137879 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1491148 () Bool)

(declare-fun res!1014436 () Bool)

(assert (=> b!1491148 (=> (not res!1014436) (not e!835512))))

(assert (=> b!1491148 (= res!1014436 (= (seekEntryOrOpen!0 (select (arr!48085 a!2862) j!93) a!2862 mask!2687) (Found!12348 j!93)))))

(declare-fun b!1491149 () Bool)

(declare-fun e!835511 () Bool)

(assert (=> b!1491149 (= e!835516 e!835511)))

(declare-fun res!1014440 () Bool)

(assert (=> b!1491149 (=> (not res!1014440) (not e!835511))))

(assert (=> b!1491149 (= res!1014440 (= (select (store (arr!48085 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1491149 (= lt!650141 (array!99637 (store (arr!48085 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48636 a!2862)))))

(declare-fun b!1491150 () Bool)

(assert (=> b!1491150 (= e!835511 e!835517)))

(declare-fun res!1014447 () Bool)

(assert (=> b!1491150 (=> (not res!1014447) (not e!835517))))

(assert (=> b!1491150 (= res!1014447 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48085 a!2862) j!93) mask!2687) (select (arr!48085 a!2862) j!93) a!2862 mask!2687) lt!650145))))

(assert (=> b!1491150 (= lt!650145 (Intermediate!12348 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1491151 () Bool)

(declare-fun res!1014448 () Bool)

(assert (=> b!1491151 (=> (not res!1014448) (not e!835516))))

(declare-datatypes ((List!34766 0))(
  ( (Nil!34763) (Cons!34762 (h!36145 (_ BitVec 64)) (t!49467 List!34766)) )
))
(declare-fun arrayNoDuplicates!0 (array!99636 (_ BitVec 32) List!34766) Bool)

(assert (=> b!1491151 (= res!1014448 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34763))))

(assert (= (and start!126946 res!1014444) b!1491140))

(assert (= (and b!1491140 res!1014446) b!1491137))

(assert (= (and b!1491137 res!1014442) b!1491138))

(assert (= (and b!1491138 res!1014437) b!1491135))

(assert (= (and b!1491135 res!1014441) b!1491151))

(assert (= (and b!1491151 res!1014448) b!1491141))

(assert (= (and b!1491141 res!1014439) b!1491149))

(assert (= (and b!1491149 res!1014440) b!1491150))

(assert (= (and b!1491150 res!1014447) b!1491144))

(assert (= (and b!1491144 res!1014449) b!1491142))

(assert (= (and b!1491142 res!1014435) b!1491147))

(assert (= (and b!1491147 c!137879) b!1491146))

(assert (= (and b!1491147 (not c!137879)) b!1491145))

(assert (= (and b!1491147 res!1014450) b!1491134))

(assert (= (and b!1491134 res!1014438) b!1491143))

(assert (= (and b!1491143 res!1014443) b!1491148))

(assert (= (and b!1491148 res!1014436) b!1491139))

(assert (= (and b!1491143 (not res!1014445)) b!1491136))

(declare-fun m!1375323 () Bool)

(assert (=> b!1491148 m!1375323))

(assert (=> b!1491148 m!1375323))

(declare-fun m!1375325 () Bool)

(assert (=> b!1491148 m!1375325))

(declare-fun m!1375327 () Bool)

(assert (=> b!1491151 m!1375327))

(declare-fun m!1375329 () Bool)

(assert (=> b!1491143 m!1375329))

(declare-fun m!1375331 () Bool)

(assert (=> b!1491143 m!1375331))

(declare-fun m!1375333 () Bool)

(assert (=> b!1491143 m!1375333))

(declare-fun m!1375335 () Bool)

(assert (=> b!1491143 m!1375335))

(declare-fun m!1375337 () Bool)

(assert (=> b!1491143 m!1375337))

(assert (=> b!1491143 m!1375323))

(declare-fun m!1375339 () Bool)

(assert (=> b!1491136 m!1375339))

(declare-fun m!1375341 () Bool)

(assert (=> b!1491137 m!1375341))

(assert (=> b!1491137 m!1375341))

(declare-fun m!1375343 () Bool)

(assert (=> b!1491137 m!1375343))

(declare-fun m!1375345 () Bool)

(assert (=> b!1491135 m!1375345))

(assert (=> b!1491150 m!1375323))

(assert (=> b!1491150 m!1375323))

(declare-fun m!1375347 () Bool)

(assert (=> b!1491150 m!1375347))

(assert (=> b!1491150 m!1375347))

(assert (=> b!1491150 m!1375323))

(declare-fun m!1375349 () Bool)

(assert (=> b!1491150 m!1375349))

(assert (=> b!1491149 m!1375331))

(declare-fun m!1375351 () Bool)

(assert (=> b!1491149 m!1375351))

(declare-fun m!1375353 () Bool)

(assert (=> b!1491139 m!1375353))

(assert (=> b!1491139 m!1375323))

(declare-fun m!1375355 () Bool)

(assert (=> b!1491146 m!1375355))

(assert (=> b!1491144 m!1375323))

(assert (=> b!1491144 m!1375323))

(declare-fun m!1375357 () Bool)

(assert (=> b!1491144 m!1375357))

(declare-fun m!1375359 () Bool)

(assert (=> start!126946 m!1375359))

(declare-fun m!1375361 () Bool)

(assert (=> start!126946 m!1375361))

(declare-fun m!1375363 () Bool)

(assert (=> b!1491145 m!1375363))

(declare-fun m!1375365 () Bool)

(assert (=> b!1491145 m!1375365))

(declare-fun m!1375367 () Bool)

(assert (=> b!1491142 m!1375367))

(assert (=> b!1491142 m!1375367))

(declare-fun m!1375369 () Bool)

(assert (=> b!1491142 m!1375369))

(assert (=> b!1491142 m!1375331))

(declare-fun m!1375371 () Bool)

(assert (=> b!1491142 m!1375371))

(assert (=> b!1491138 m!1375323))

(assert (=> b!1491138 m!1375323))

(declare-fun m!1375373 () Bool)

(assert (=> b!1491138 m!1375373))

(push 1)

