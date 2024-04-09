; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124966 () Bool)

(assert start!124966)

(declare-fun b!1451501 () Bool)

(declare-fun res!982837 () Bool)

(declare-fun e!817265 () Bool)

(assert (=> b!1451501 (=> (not res!982837) (not e!817265))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98331 0))(
  ( (array!98332 (arr!47449 (Array (_ BitVec 32) (_ BitVec 64))) (size!48000 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98331)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1451501 (= res!982837 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48000 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48000 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48000 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1451503 () Bool)

(declare-fun res!982833 () Bool)

(declare-fun e!817266 () Bool)

(assert (=> b!1451503 (=> (not res!982833) (not e!817266))))

(declare-datatypes ((SeekEntryResult!11724 0))(
  ( (MissingZero!11724 (index!49287 (_ BitVec 32))) (Found!11724 (index!49288 (_ BitVec 32))) (Intermediate!11724 (undefined!12536 Bool) (index!49289 (_ BitVec 32)) (x!130944 (_ BitVec 32))) (Undefined!11724) (MissingVacant!11724 (index!49290 (_ BitVec 32))) )
))
(declare-fun lt!636635 () SeekEntryResult!11724)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98331 (_ BitVec 32)) SeekEntryResult!11724)

(assert (=> b!1451503 (= res!982833 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47449 a!2862) j!93) a!2862 mask!2687) lt!636635))))

(declare-fun e!817261 () Bool)

(declare-fun lt!636636 () (_ BitVec 64))

(declare-fun lt!636634 () array!98331)

(declare-fun b!1451504 () Bool)

(declare-fun lt!636633 () SeekEntryResult!11724)

(assert (=> b!1451504 (= e!817261 (= lt!636633 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636636 lt!636634 mask!2687)))))

(declare-fun b!1451505 () Bool)

(declare-fun res!982827 () Bool)

(assert (=> b!1451505 (=> (not res!982827) (not e!817265))))

(declare-datatypes ((List!34130 0))(
  ( (Nil!34127) (Cons!34126 (h!35476 (_ BitVec 64)) (t!48831 List!34130)) )
))
(declare-fun arrayNoDuplicates!0 (array!98331 (_ BitVec 32) List!34130) Bool)

(assert (=> b!1451505 (= res!982827 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34127))))

(declare-fun b!1451506 () Bool)

(declare-fun res!982829 () Bool)

(assert (=> b!1451506 (=> (not res!982829) (not e!817265))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1451506 (= res!982829 (validKeyInArray!0 (select (arr!47449 a!2862) i!1006)))))

(declare-fun b!1451507 () Bool)

(declare-fun e!817264 () Bool)

(declare-fun e!817268 () Bool)

(assert (=> b!1451507 (= e!817264 (not e!817268))))

(declare-fun res!982832 () Bool)

(assert (=> b!1451507 (=> res!982832 e!817268)))

(assert (=> b!1451507 (= res!982832 (or (and (= (select (arr!47449 a!2862) index!646) (select (store (arr!47449 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47449 a!2862) index!646) (select (arr!47449 a!2862) j!93))) (= (select (arr!47449 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (bvslt mask!2687 #b00000000000000000000000000000000)))))

(declare-fun e!817267 () Bool)

(assert (=> b!1451507 e!817267))

(declare-fun res!982828 () Bool)

(assert (=> b!1451507 (=> (not res!982828) (not e!817267))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98331 (_ BitVec 32)) Bool)

(assert (=> b!1451507 (= res!982828 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48892 0))(
  ( (Unit!48893) )
))
(declare-fun lt!636637 () Unit!48892)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98331 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48892)

(assert (=> b!1451507 (= lt!636637 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1451508 () Bool)

(declare-fun res!982842 () Bool)

(assert (=> b!1451508 (=> (not res!982842) (not e!817264))))

(assert (=> b!1451508 (= res!982842 e!817261)))

(declare-fun c!133850 () Bool)

(assert (=> b!1451508 (= c!133850 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1451509 () Bool)

(declare-fun res!982839 () Bool)

(assert (=> b!1451509 (=> (not res!982839) (not e!817264))))

(assert (=> b!1451509 (= res!982839 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1451510 () Bool)

(declare-fun res!982835 () Bool)

(assert (=> b!1451510 (=> (not res!982835) (not e!817265))))

(assert (=> b!1451510 (= res!982835 (validKeyInArray!0 (select (arr!47449 a!2862) j!93)))))

(declare-fun b!1451511 () Bool)

(declare-fun res!982830 () Bool)

(assert (=> b!1451511 (=> (not res!982830) (not e!817265))))

(assert (=> b!1451511 (= res!982830 (and (= (size!48000 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48000 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48000 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1451512 () Bool)

(declare-fun e!817262 () Bool)

(assert (=> b!1451512 (= e!817265 e!817262)))

(declare-fun res!982834 () Bool)

(assert (=> b!1451512 (=> (not res!982834) (not e!817262))))

(assert (=> b!1451512 (= res!982834 (= (select (store (arr!47449 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1451512 (= lt!636634 (array!98332 (store (arr!47449 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48000 a!2862)))))

(declare-fun b!1451513 () Bool)

(declare-fun res!982840 () Bool)

(assert (=> b!1451513 (=> (not res!982840) (not e!817265))))

(assert (=> b!1451513 (= res!982840 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1451514 () Bool)

(assert (=> b!1451514 (= e!817267 (and (or (= (select (arr!47449 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47449 a!2862) intermediateBeforeIndex!19) (select (arr!47449 a!2862) j!93))) (or (and (= (select (arr!47449 a!2862) index!646) (select (store (arr!47449 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47449 a!2862) index!646) (select (arr!47449 a!2862) j!93))) (= (select (arr!47449 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47449 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1451515 () Bool)

(assert (=> b!1451515 (= e!817262 e!817266)))

(declare-fun res!982838 () Bool)

(assert (=> b!1451515 (=> (not res!982838) (not e!817266))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1451515 (= res!982838 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47449 a!2862) j!93) mask!2687) (select (arr!47449 a!2862) j!93) a!2862 mask!2687) lt!636635))))

(assert (=> b!1451515 (= lt!636635 (Intermediate!11724 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!982831 () Bool)

(assert (=> start!124966 (=> (not res!982831) (not e!817265))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124966 (= res!982831 (validMask!0 mask!2687))))

(assert (=> start!124966 e!817265))

(assert (=> start!124966 true))

(declare-fun array_inv!36394 (array!98331) Bool)

(assert (=> start!124966 (array_inv!36394 a!2862)))

(declare-fun b!1451502 () Bool)

(declare-fun res!982836 () Bool)

(assert (=> b!1451502 (=> (not res!982836) (not e!817267))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98331 (_ BitVec 32)) SeekEntryResult!11724)

(assert (=> b!1451502 (= res!982836 (= (seekEntryOrOpen!0 (select (arr!47449 a!2862) j!93) a!2862 mask!2687) (Found!11724 j!93)))))

(declare-fun b!1451516 () Bool)

(assert (=> b!1451516 (= e!817268 (validKeyInArray!0 lt!636636))))

(declare-fun b!1451517 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98331 (_ BitVec 32)) SeekEntryResult!11724)

(assert (=> b!1451517 (= e!817261 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636636 lt!636634 mask!2687) (seekEntryOrOpen!0 lt!636636 lt!636634 mask!2687)))))

(declare-fun b!1451518 () Bool)

(assert (=> b!1451518 (= e!817266 e!817264)))

(declare-fun res!982841 () Bool)

(assert (=> b!1451518 (=> (not res!982841) (not e!817264))))

(assert (=> b!1451518 (= res!982841 (= lt!636633 (Intermediate!11724 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1451518 (= lt!636633 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636636 mask!2687) lt!636636 lt!636634 mask!2687))))

(assert (=> b!1451518 (= lt!636636 (select (store (arr!47449 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(assert (= (and start!124966 res!982831) b!1451511))

(assert (= (and b!1451511 res!982830) b!1451506))

(assert (= (and b!1451506 res!982829) b!1451510))

(assert (= (and b!1451510 res!982835) b!1451513))

(assert (= (and b!1451513 res!982840) b!1451505))

(assert (= (and b!1451505 res!982827) b!1451501))

(assert (= (and b!1451501 res!982837) b!1451512))

(assert (= (and b!1451512 res!982834) b!1451515))

(assert (= (and b!1451515 res!982838) b!1451503))

(assert (= (and b!1451503 res!982833) b!1451518))

(assert (= (and b!1451518 res!982841) b!1451508))

(assert (= (and b!1451508 c!133850) b!1451504))

(assert (= (and b!1451508 (not c!133850)) b!1451517))

(assert (= (and b!1451508 res!982842) b!1451509))

(assert (= (and b!1451509 res!982839) b!1451507))

(assert (= (and b!1451507 res!982828) b!1451502))

(assert (= (and b!1451502 res!982836) b!1451514))

(assert (= (and b!1451507 (not res!982832)) b!1451516))

(declare-fun m!1340151 () Bool)

(assert (=> b!1451510 m!1340151))

(assert (=> b!1451510 m!1340151))

(declare-fun m!1340153 () Bool)

(assert (=> b!1451510 m!1340153))

(declare-fun m!1340155 () Bool)

(assert (=> b!1451505 m!1340155))

(declare-fun m!1340157 () Bool)

(assert (=> b!1451504 m!1340157))

(assert (=> b!1451503 m!1340151))

(assert (=> b!1451503 m!1340151))

(declare-fun m!1340159 () Bool)

(assert (=> b!1451503 m!1340159))

(assert (=> b!1451515 m!1340151))

(assert (=> b!1451515 m!1340151))

(declare-fun m!1340161 () Bool)

(assert (=> b!1451515 m!1340161))

(assert (=> b!1451515 m!1340161))

(assert (=> b!1451515 m!1340151))

(declare-fun m!1340163 () Bool)

(assert (=> b!1451515 m!1340163))

(declare-fun m!1340165 () Bool)

(assert (=> b!1451507 m!1340165))

(declare-fun m!1340167 () Bool)

(assert (=> b!1451507 m!1340167))

(declare-fun m!1340169 () Bool)

(assert (=> b!1451507 m!1340169))

(declare-fun m!1340171 () Bool)

(assert (=> b!1451507 m!1340171))

(declare-fun m!1340173 () Bool)

(assert (=> b!1451507 m!1340173))

(assert (=> b!1451507 m!1340151))

(declare-fun m!1340175 () Bool)

(assert (=> b!1451516 m!1340175))

(declare-fun m!1340177 () Bool)

(assert (=> b!1451506 m!1340177))

(assert (=> b!1451506 m!1340177))

(declare-fun m!1340179 () Bool)

(assert (=> b!1451506 m!1340179))

(declare-fun m!1340181 () Bool)

(assert (=> b!1451517 m!1340181))

(declare-fun m!1340183 () Bool)

(assert (=> b!1451517 m!1340183))

(declare-fun m!1340185 () Bool)

(assert (=> b!1451518 m!1340185))

(assert (=> b!1451518 m!1340185))

(declare-fun m!1340187 () Bool)

(assert (=> b!1451518 m!1340187))

(assert (=> b!1451518 m!1340167))

(declare-fun m!1340189 () Bool)

(assert (=> b!1451518 m!1340189))

(assert (=> b!1451502 m!1340151))

(assert (=> b!1451502 m!1340151))

(declare-fun m!1340191 () Bool)

(assert (=> b!1451502 m!1340191))

(declare-fun m!1340193 () Bool)

(assert (=> b!1451513 m!1340193))

(declare-fun m!1340195 () Bool)

(assert (=> start!124966 m!1340195))

(declare-fun m!1340197 () Bool)

(assert (=> start!124966 m!1340197))

(assert (=> b!1451514 m!1340167))

(declare-fun m!1340199 () Bool)

(assert (=> b!1451514 m!1340199))

(assert (=> b!1451514 m!1340169))

(assert (=> b!1451514 m!1340171))

(assert (=> b!1451514 m!1340151))

(assert (=> b!1451512 m!1340167))

(declare-fun m!1340201 () Bool)

(assert (=> b!1451512 m!1340201))

(push 1)

