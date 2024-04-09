; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124900 () Bool)

(assert start!124900)

(declare-fun b!1449597 () Bool)

(declare-fun e!816352 () Bool)

(declare-fun e!816347 () Bool)

(assert (=> b!1449597 (= e!816352 e!816347)))

(declare-fun res!981129 () Bool)

(assert (=> b!1449597 (=> (not res!981129) (not e!816347))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11691 0))(
  ( (MissingZero!11691 (index!49155 (_ BitVec 32))) (Found!11691 (index!49156 (_ BitVec 32))) (Intermediate!11691 (undefined!12503 Bool) (index!49157 (_ BitVec 32)) (x!130823 (_ BitVec 32))) (Undefined!11691) (MissingVacant!11691 (index!49158 (_ BitVec 32))) )
))
(declare-fun lt!635932 () SeekEntryResult!11691)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1449597 (= res!981129 (= lt!635932 (Intermediate!11691 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!635934 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((array!98265 0))(
  ( (array!98266 (arr!47416 (Array (_ BitVec 32) (_ BitVec 64))) (size!47967 (_ BitVec 32))) )
))
(declare-fun lt!635930 () array!98265)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98265 (_ BitVec 32)) SeekEntryResult!11691)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1449597 (= lt!635932 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635934 mask!2687) lt!635934 lt!635930 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98265)

(assert (=> b!1449597 (= lt!635934 (select (store (arr!47416 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1449599 () Bool)

(declare-fun res!981124 () Bool)

(assert (=> b!1449599 (=> (not res!981124) (not e!816352))))

(declare-fun lt!635929 () SeekEntryResult!11691)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1449599 (= res!981124 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47416 a!2862) j!93) a!2862 mask!2687) lt!635929))))

(declare-fun b!1449600 () Bool)

(declare-fun res!981123 () Bool)

(declare-fun e!816351 () Bool)

(assert (=> b!1449600 (=> (not res!981123) (not e!816351))))

(assert (=> b!1449600 (= res!981123 (and (= (size!47967 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47967 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47967 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1449601 () Bool)

(declare-fun res!981130 () Bool)

(assert (=> b!1449601 (=> (not res!981130) (not e!816351))))

(declare-datatypes ((List!34097 0))(
  ( (Nil!34094) (Cons!34093 (h!35443 (_ BitVec 64)) (t!48798 List!34097)) )
))
(declare-fun arrayNoDuplicates!0 (array!98265 (_ BitVec 32) List!34097) Bool)

(assert (=> b!1449601 (= res!981130 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34094))))

(declare-fun b!1449602 () Bool)

(declare-fun e!816350 () Bool)

(declare-fun e!816349 () Bool)

(assert (=> b!1449602 (= e!816350 e!816349)))

(declare-fun res!981127 () Bool)

(assert (=> b!1449602 (=> (not res!981127) (not e!816349))))

(declare-fun lt!635935 () SeekEntryResult!11691)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98265 (_ BitVec 32)) SeekEntryResult!11691)

(assert (=> b!1449602 (= res!981127 (= lt!635935 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47416 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1449603 () Bool)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1449603 (= e!816349 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1449604 () Bool)

(declare-fun res!981132 () Bool)

(declare-fun e!816355 () Bool)

(assert (=> b!1449604 (=> res!981132 e!816355)))

(declare-fun lt!635928 () SeekEntryResult!11691)

(assert (=> b!1449604 (= res!981132 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47416 a!2862) j!93) a!2862 mask!2687) lt!635928)))))

(declare-fun b!1449605 () Bool)

(assert (=> b!1449605 (= e!816355 true)))

(assert (=> b!1449605 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635934 lt!635930 mask!2687) lt!635928)))

(declare-datatypes ((Unit!48826 0))(
  ( (Unit!48827) )
))
(declare-fun lt!635931 () Unit!48826)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!98265 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48826)

(assert (=> b!1449605 (= lt!635931 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1449606 () Bool)

(assert (=> b!1449606 (= e!816347 (not e!816355))))

(declare-fun res!981137 () Bool)

(assert (=> b!1449606 (=> res!981137 e!816355)))

(assert (=> b!1449606 (= res!981137 (or (and (= (select (arr!47416 a!2862) index!646) (select (store (arr!47416 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47416 a!2862) index!646) (select (arr!47416 a!2862) j!93))) (not (= (select (arr!47416 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47416 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!816348 () Bool)

(assert (=> b!1449606 e!816348))

(declare-fun res!981126 () Bool)

(assert (=> b!1449606 (=> (not res!981126) (not e!816348))))

(assert (=> b!1449606 (= res!981126 (and (= lt!635935 lt!635928) (or (= (select (arr!47416 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47416 a!2862) intermediateBeforeIndex!19) (select (arr!47416 a!2862) j!93)))))))

(assert (=> b!1449606 (= lt!635928 (Found!11691 j!93))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98265 (_ BitVec 32)) SeekEntryResult!11691)

(assert (=> b!1449606 (= lt!635935 (seekEntryOrOpen!0 (select (arr!47416 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98265 (_ BitVec 32)) Bool)

(assert (=> b!1449606 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!635933 () Unit!48826)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98265 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48826)

(assert (=> b!1449606 (= lt!635933 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1449607 () Bool)

(declare-fun res!981138 () Bool)

(assert (=> b!1449607 (=> (not res!981138) (not e!816347))))

(assert (=> b!1449607 (= res!981138 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1449608 () Bool)

(declare-fun res!981133 () Bool)

(assert (=> b!1449608 (=> (not res!981133) (not e!816347))))

(declare-fun e!816353 () Bool)

(assert (=> b!1449608 (= res!981133 e!816353)))

(declare-fun c!133751 () Bool)

(assert (=> b!1449608 (= c!133751 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!981125 () Bool)

(assert (=> start!124900 (=> (not res!981125) (not e!816351))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124900 (= res!981125 (validMask!0 mask!2687))))

(assert (=> start!124900 e!816351))

(assert (=> start!124900 true))

(declare-fun array_inv!36361 (array!98265) Bool)

(assert (=> start!124900 (array_inv!36361 a!2862)))

(declare-fun b!1449598 () Bool)

(declare-fun e!816354 () Bool)

(assert (=> b!1449598 (= e!816351 e!816354)))

(declare-fun res!981134 () Bool)

(assert (=> b!1449598 (=> (not res!981134) (not e!816354))))

(assert (=> b!1449598 (= res!981134 (= (select (store (arr!47416 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1449598 (= lt!635930 (array!98266 (store (arr!47416 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47967 a!2862)))))

(declare-fun b!1449609 () Bool)

(assert (=> b!1449609 (= e!816353 (= lt!635932 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635934 lt!635930 mask!2687)))))

(declare-fun b!1449610 () Bool)

(assert (=> b!1449610 (= e!816354 e!816352)))

(declare-fun res!981121 () Bool)

(assert (=> b!1449610 (=> (not res!981121) (not e!816352))))

(assert (=> b!1449610 (= res!981121 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47416 a!2862) j!93) mask!2687) (select (arr!47416 a!2862) j!93) a!2862 mask!2687) lt!635929))))

(assert (=> b!1449610 (= lt!635929 (Intermediate!11691 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1449611 () Bool)

(declare-fun res!981128 () Bool)

(assert (=> b!1449611 (=> (not res!981128) (not e!816351))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1449611 (= res!981128 (validKeyInArray!0 (select (arr!47416 a!2862) j!93)))))

(declare-fun b!1449612 () Bool)

(declare-fun res!981131 () Bool)

(assert (=> b!1449612 (=> (not res!981131) (not e!816351))))

(assert (=> b!1449612 (= res!981131 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47967 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47967 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47967 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1449613 () Bool)

(assert (=> b!1449613 (= e!816348 e!816350)))

(declare-fun res!981135 () Bool)

(assert (=> b!1449613 (=> res!981135 e!816350)))

(assert (=> b!1449613 (= res!981135 (or (and (= (select (arr!47416 a!2862) index!646) (select (store (arr!47416 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47416 a!2862) index!646) (select (arr!47416 a!2862) j!93))) (not (= (select (arr!47416 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1449614 () Bool)

(declare-fun res!981122 () Bool)

(assert (=> b!1449614 (=> (not res!981122) (not e!816351))))

(assert (=> b!1449614 (= res!981122 (validKeyInArray!0 (select (arr!47416 a!2862) i!1006)))))

(declare-fun b!1449615 () Bool)

(declare-fun res!981136 () Bool)

(assert (=> b!1449615 (=> (not res!981136) (not e!816351))))

(assert (=> b!1449615 (= res!981136 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1449616 () Bool)

(assert (=> b!1449616 (= e!816353 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635934 lt!635930 mask!2687) (seekEntryOrOpen!0 lt!635934 lt!635930 mask!2687)))))

(assert (= (and start!124900 res!981125) b!1449600))

(assert (= (and b!1449600 res!981123) b!1449614))

(assert (= (and b!1449614 res!981122) b!1449611))

(assert (= (and b!1449611 res!981128) b!1449615))

(assert (= (and b!1449615 res!981136) b!1449601))

(assert (= (and b!1449601 res!981130) b!1449612))

(assert (= (and b!1449612 res!981131) b!1449598))

(assert (= (and b!1449598 res!981134) b!1449610))

(assert (= (and b!1449610 res!981121) b!1449599))

(assert (= (and b!1449599 res!981124) b!1449597))

(assert (= (and b!1449597 res!981129) b!1449608))

(assert (= (and b!1449608 c!133751) b!1449609))

(assert (= (and b!1449608 (not c!133751)) b!1449616))

(assert (= (and b!1449608 res!981133) b!1449607))

(assert (= (and b!1449607 res!981138) b!1449606))

(assert (= (and b!1449606 res!981126) b!1449613))

(assert (= (and b!1449613 (not res!981135)) b!1449602))

(assert (= (and b!1449602 res!981127) b!1449603))

(assert (= (and b!1449606 (not res!981137)) b!1449604))

(assert (= (and b!1449604 (not res!981132)) b!1449605))

(declare-fun m!1338351 () Bool)

(assert (=> b!1449615 m!1338351))

(declare-fun m!1338353 () Bool)

(assert (=> b!1449605 m!1338353))

(declare-fun m!1338355 () Bool)

(assert (=> b!1449605 m!1338355))

(declare-fun m!1338357 () Bool)

(assert (=> b!1449604 m!1338357))

(assert (=> b!1449604 m!1338357))

(declare-fun m!1338359 () Bool)

(assert (=> b!1449604 m!1338359))

(declare-fun m!1338361 () Bool)

(assert (=> b!1449597 m!1338361))

(assert (=> b!1449597 m!1338361))

(declare-fun m!1338363 () Bool)

(assert (=> b!1449597 m!1338363))

(declare-fun m!1338365 () Bool)

(assert (=> b!1449597 m!1338365))

(declare-fun m!1338367 () Bool)

(assert (=> b!1449597 m!1338367))

(declare-fun m!1338369 () Bool)

(assert (=> start!124900 m!1338369))

(declare-fun m!1338371 () Bool)

(assert (=> start!124900 m!1338371))

(assert (=> b!1449602 m!1338357))

(assert (=> b!1449602 m!1338357))

(declare-fun m!1338373 () Bool)

(assert (=> b!1449602 m!1338373))

(declare-fun m!1338375 () Bool)

(assert (=> b!1449606 m!1338375))

(assert (=> b!1449606 m!1338365))

(declare-fun m!1338377 () Bool)

(assert (=> b!1449606 m!1338377))

(declare-fun m!1338379 () Bool)

(assert (=> b!1449606 m!1338379))

(declare-fun m!1338381 () Bool)

(assert (=> b!1449606 m!1338381))

(assert (=> b!1449606 m!1338357))

(declare-fun m!1338383 () Bool)

(assert (=> b!1449606 m!1338383))

(declare-fun m!1338385 () Bool)

(assert (=> b!1449606 m!1338385))

(assert (=> b!1449606 m!1338357))

(assert (=> b!1449613 m!1338381))

(assert (=> b!1449613 m!1338365))

(assert (=> b!1449613 m!1338379))

(assert (=> b!1449613 m!1338357))

(declare-fun m!1338387 () Bool)

(assert (=> b!1449601 m!1338387))

(assert (=> b!1449611 m!1338357))

(assert (=> b!1449611 m!1338357))

(declare-fun m!1338389 () Bool)

(assert (=> b!1449611 m!1338389))

(assert (=> b!1449616 m!1338353))

(declare-fun m!1338391 () Bool)

(assert (=> b!1449616 m!1338391))

(assert (=> b!1449598 m!1338365))

(declare-fun m!1338393 () Bool)

(assert (=> b!1449598 m!1338393))

(assert (=> b!1449599 m!1338357))

(assert (=> b!1449599 m!1338357))

(declare-fun m!1338395 () Bool)

(assert (=> b!1449599 m!1338395))

(assert (=> b!1449610 m!1338357))

(assert (=> b!1449610 m!1338357))

(declare-fun m!1338397 () Bool)

(assert (=> b!1449610 m!1338397))

(assert (=> b!1449610 m!1338397))

(assert (=> b!1449610 m!1338357))

(declare-fun m!1338399 () Bool)

(assert (=> b!1449610 m!1338399))

(declare-fun m!1338401 () Bool)

(assert (=> b!1449609 m!1338401))

(declare-fun m!1338403 () Bool)

(assert (=> b!1449614 m!1338403))

(assert (=> b!1449614 m!1338403))

(declare-fun m!1338405 () Bool)

(assert (=> b!1449614 m!1338405))

(push 1)

