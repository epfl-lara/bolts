; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125126 () Bool)

(assert start!125126)

(declare-fun b!1456330 () Bool)

(declare-fun res!986937 () Bool)

(declare-fun e!819412 () Bool)

(assert (=> b!1456330 (=> res!986937 e!819412)))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11804 0))(
  ( (MissingZero!11804 (index!49607 (_ BitVec 32))) (Found!11804 (index!49608 (_ BitVec 32))) (Intermediate!11804 (undefined!12616 Bool) (index!49609 (_ BitVec 32)) (x!131232 (_ BitVec 32))) (Undefined!11804) (MissingVacant!11804 (index!49610 (_ BitVec 32))) )
))
(declare-fun lt!638251 () SeekEntryResult!11804)

(declare-datatypes ((array!98491 0))(
  ( (array!98492 (arr!47529 (Array (_ BitVec 32) (_ BitVec 64))) (size!48080 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98491)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!638247 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98491 (_ BitVec 32)) SeekEntryResult!11804)

(assert (=> b!1456330 (= res!986937 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638247 (select (arr!47529 a!2862) j!93) a!2862 mask!2687) lt!638251)))))

(declare-fun b!1456331 () Bool)

(declare-fun res!986933 () Bool)

(declare-fun e!819409 () Bool)

(assert (=> b!1456331 (=> (not res!986933) (not e!819409))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98491 (_ BitVec 32)) SeekEntryResult!11804)

(assert (=> b!1456331 (= res!986933 (= (seekEntryOrOpen!0 (select (arr!47529 a!2862) j!93) a!2862 mask!2687) (Found!11804 j!93)))))

(declare-fun b!1456332 () Bool)

(declare-fun res!986935 () Bool)

(declare-fun e!819406 () Bool)

(assert (=> b!1456332 (=> (not res!986935) (not e!819406))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1456332 (= res!986935 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1456333 () Bool)

(declare-fun e!819410 () Bool)

(assert (=> b!1456333 (= e!819410 e!819406)))

(declare-fun res!986931 () Bool)

(assert (=> b!1456333 (=> (not res!986931) (not e!819406))))

(declare-fun lt!638248 () SeekEntryResult!11804)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1456333 (= res!986931 (= lt!638248 (Intermediate!11804 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!638250 () (_ BitVec 64))

(declare-fun lt!638249 () array!98491)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1456333 (= lt!638248 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638250 mask!2687) lt!638250 lt!638249 mask!2687))))

(assert (=> b!1456333 (= lt!638250 (select (store (arr!47529 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1456334 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1456334 (= e!819409 (and (or (= (select (arr!47529 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47529 a!2862) intermediateBeforeIndex!19) (select (arr!47529 a!2862) j!93))) (let ((bdg!53239 (select (store (arr!47529 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47529 a!2862) index!646) bdg!53239) (= (select (arr!47529 a!2862) index!646) (select (arr!47529 a!2862) j!93))) (= (select (arr!47529 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53239 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1456335 () Bool)

(declare-fun res!986936 () Bool)

(declare-fun e!819408 () Bool)

(assert (=> b!1456335 (=> (not res!986936) (not e!819408))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1456335 (= res!986936 (validKeyInArray!0 (select (arr!47529 a!2862) j!93)))))

(declare-fun b!1456336 () Bool)

(declare-fun res!986940 () Bool)

(assert (=> b!1456336 (=> (not res!986940) (not e!819408))))

(declare-datatypes ((List!34210 0))(
  ( (Nil!34207) (Cons!34206 (h!35556 (_ BitVec 64)) (t!48911 List!34210)) )
))
(declare-fun arrayNoDuplicates!0 (array!98491 (_ BitVec 32) List!34210) Bool)

(assert (=> b!1456336 (= res!986940 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34207))))

(declare-fun b!1456337 () Bool)

(declare-fun e!819413 () Bool)

(assert (=> b!1456337 (= e!819413 e!819410)))

(declare-fun res!986932 () Bool)

(assert (=> b!1456337 (=> (not res!986932) (not e!819410))))

(assert (=> b!1456337 (= res!986932 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47529 a!2862) j!93) mask!2687) (select (arr!47529 a!2862) j!93) a!2862 mask!2687) lt!638251))))

(assert (=> b!1456337 (= lt!638251 (Intermediate!11804 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!986938 () Bool)

(assert (=> start!125126 (=> (not res!986938) (not e!819408))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125126 (= res!986938 (validMask!0 mask!2687))))

(assert (=> start!125126 e!819408))

(assert (=> start!125126 true))

(declare-fun array_inv!36474 (array!98491) Bool)

(assert (=> start!125126 (array_inv!36474 a!2862)))

(declare-fun b!1456338 () Bool)

(declare-fun res!986943 () Bool)

(assert (=> b!1456338 (=> (not res!986943) (not e!819408))))

(assert (=> b!1456338 (= res!986943 (and (= (size!48080 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48080 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48080 a!2862)) (not (= i!1006 j!93))))))

(declare-fun e!819411 () Bool)

(declare-fun b!1456339 () Bool)

(declare-fun lt!638244 () SeekEntryResult!11804)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98491 (_ BitVec 32)) SeekEntryResult!11804)

(assert (=> b!1456339 (= e!819411 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638247 intermediateAfterIndex!19 lt!638250 lt!638249 mask!2687) lt!638244)))))

(declare-fun b!1456340 () Bool)

(declare-fun res!986927 () Bool)

(assert (=> b!1456340 (=> (not res!986927) (not e!819408))))

(assert (=> b!1456340 (= res!986927 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48080 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48080 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48080 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1456341 () Bool)

(declare-fun e!819404 () Bool)

(assert (=> b!1456341 (= e!819406 (not e!819404))))

(declare-fun res!986928 () Bool)

(assert (=> b!1456341 (=> res!986928 e!819404)))

(assert (=> b!1456341 (= res!986928 (or (and (= (select (arr!47529 a!2862) index!646) (select (store (arr!47529 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47529 a!2862) index!646) (select (arr!47529 a!2862) j!93))) (= (select (arr!47529 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1456341 e!819409))

(declare-fun res!986926 () Bool)

(assert (=> b!1456341 (=> (not res!986926) (not e!819409))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98491 (_ BitVec 32)) Bool)

(assert (=> b!1456341 (= res!986926 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49052 0))(
  ( (Unit!49053) )
))
(declare-fun lt!638246 () Unit!49052)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98491 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49052)

(assert (=> b!1456341 (= lt!638246 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1456342 () Bool)

(assert (=> b!1456342 (= e!819412 true)))

(declare-fun lt!638245 () Bool)

(assert (=> b!1456342 (= lt!638245 e!819411)))

(declare-fun c!134215 () Bool)

(assert (=> b!1456342 (= c!134215 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1456343 () Bool)

(assert (=> b!1456343 (= e!819408 e!819413)))

(declare-fun res!986941 () Bool)

(assert (=> b!1456343 (=> (not res!986941) (not e!819413))))

(assert (=> b!1456343 (= res!986941 (= (select (store (arr!47529 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1456343 (= lt!638249 (array!98492 (store (arr!47529 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48080 a!2862)))))

(declare-fun b!1456344 () Bool)

(declare-fun res!986929 () Bool)

(assert (=> b!1456344 (=> (not res!986929) (not e!819408))))

(assert (=> b!1456344 (= res!986929 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1456345 () Bool)

(declare-fun e!819407 () Bool)

(assert (=> b!1456345 (= e!819407 (= lt!638248 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638250 lt!638249 mask!2687)))))

(declare-fun b!1456346 () Bool)

(assert (=> b!1456346 (= e!819407 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638250 lt!638249 mask!2687) (seekEntryOrOpen!0 lt!638250 lt!638249 mask!2687)))))

(declare-fun b!1456347 () Bool)

(declare-fun res!986930 () Bool)

(assert (=> b!1456347 (=> (not res!986930) (not e!819406))))

(assert (=> b!1456347 (= res!986930 e!819407)))

(declare-fun c!134216 () Bool)

(assert (=> b!1456347 (= c!134216 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1456348 () Bool)

(assert (=> b!1456348 (= e!819411 (not (= lt!638248 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638247 lt!638250 lt!638249 mask!2687))))))

(declare-fun b!1456349 () Bool)

(declare-fun res!986934 () Bool)

(assert (=> b!1456349 (=> (not res!986934) (not e!819408))))

(assert (=> b!1456349 (= res!986934 (validKeyInArray!0 (select (arr!47529 a!2862) i!1006)))))

(declare-fun b!1456350 () Bool)

(assert (=> b!1456350 (= e!819404 e!819412)))

(declare-fun res!986939 () Bool)

(assert (=> b!1456350 (=> res!986939 e!819412)))

(assert (=> b!1456350 (= res!986939 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638247 #b00000000000000000000000000000000) (bvsge lt!638247 (size!48080 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1456350 (= lt!638247 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1456350 (= lt!638244 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638250 lt!638249 mask!2687))))

(assert (=> b!1456350 (= lt!638244 (seekEntryOrOpen!0 lt!638250 lt!638249 mask!2687))))

(declare-fun b!1456351 () Bool)

(declare-fun res!986942 () Bool)

(assert (=> b!1456351 (=> (not res!986942) (not e!819410))))

(assert (=> b!1456351 (= res!986942 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47529 a!2862) j!93) a!2862 mask!2687) lt!638251))))

(assert (= (and start!125126 res!986938) b!1456338))

(assert (= (and b!1456338 res!986943) b!1456349))

(assert (= (and b!1456349 res!986934) b!1456335))

(assert (= (and b!1456335 res!986936) b!1456344))

(assert (= (and b!1456344 res!986929) b!1456336))

(assert (= (and b!1456336 res!986940) b!1456340))

(assert (= (and b!1456340 res!986927) b!1456343))

(assert (= (and b!1456343 res!986941) b!1456337))

(assert (= (and b!1456337 res!986932) b!1456351))

(assert (= (and b!1456351 res!986942) b!1456333))

(assert (= (and b!1456333 res!986931) b!1456347))

(assert (= (and b!1456347 c!134216) b!1456345))

(assert (= (and b!1456347 (not c!134216)) b!1456346))

(assert (= (and b!1456347 res!986930) b!1456332))

(assert (= (and b!1456332 res!986935) b!1456341))

(assert (= (and b!1456341 res!986926) b!1456331))

(assert (= (and b!1456331 res!986933) b!1456334))

(assert (= (and b!1456341 (not res!986928)) b!1456350))

(assert (= (and b!1456350 (not res!986939)) b!1456330))

(assert (= (and b!1456330 (not res!986937)) b!1456342))

(assert (= (and b!1456342 c!134215) b!1456348))

(assert (= (and b!1456342 (not c!134215)) b!1456339))

(declare-fun m!1344491 () Bool)

(assert (=> b!1456335 m!1344491))

(assert (=> b!1456335 m!1344491))

(declare-fun m!1344493 () Bool)

(assert (=> b!1456335 m!1344493))

(assert (=> b!1456337 m!1344491))

(assert (=> b!1456337 m!1344491))

(declare-fun m!1344495 () Bool)

(assert (=> b!1456337 m!1344495))

(assert (=> b!1456337 m!1344495))

(assert (=> b!1456337 m!1344491))

(declare-fun m!1344497 () Bool)

(assert (=> b!1456337 m!1344497))

(assert (=> b!1456330 m!1344491))

(assert (=> b!1456330 m!1344491))

(declare-fun m!1344499 () Bool)

(assert (=> b!1456330 m!1344499))

(declare-fun m!1344501 () Bool)

(assert (=> b!1456343 m!1344501))

(declare-fun m!1344503 () Bool)

(assert (=> b!1456343 m!1344503))

(declare-fun m!1344505 () Bool)

(assert (=> b!1456349 m!1344505))

(assert (=> b!1456349 m!1344505))

(declare-fun m!1344507 () Bool)

(assert (=> b!1456349 m!1344507))

(declare-fun m!1344509 () Bool)

(assert (=> b!1456345 m!1344509))

(declare-fun m!1344511 () Bool)

(assert (=> b!1456348 m!1344511))

(declare-fun m!1344513 () Bool)

(assert (=> b!1456336 m!1344513))

(declare-fun m!1344515 () Bool)

(assert (=> b!1456333 m!1344515))

(assert (=> b!1456333 m!1344515))

(declare-fun m!1344517 () Bool)

(assert (=> b!1456333 m!1344517))

(assert (=> b!1456333 m!1344501))

(declare-fun m!1344519 () Bool)

(assert (=> b!1456333 m!1344519))

(declare-fun m!1344521 () Bool)

(assert (=> b!1456344 m!1344521))

(declare-fun m!1344523 () Bool)

(assert (=> b!1456339 m!1344523))

(declare-fun m!1344525 () Bool)

(assert (=> b!1456341 m!1344525))

(assert (=> b!1456341 m!1344501))

(declare-fun m!1344527 () Bool)

(assert (=> b!1456341 m!1344527))

(declare-fun m!1344529 () Bool)

(assert (=> b!1456341 m!1344529))

(declare-fun m!1344531 () Bool)

(assert (=> b!1456341 m!1344531))

(assert (=> b!1456341 m!1344491))

(declare-fun m!1344533 () Bool)

(assert (=> b!1456346 m!1344533))

(declare-fun m!1344535 () Bool)

(assert (=> b!1456346 m!1344535))

(assert (=> b!1456334 m!1344501))

(declare-fun m!1344537 () Bool)

(assert (=> b!1456334 m!1344537))

(assert (=> b!1456334 m!1344527))

(assert (=> b!1456334 m!1344529))

(assert (=> b!1456334 m!1344491))

(assert (=> b!1456331 m!1344491))

(assert (=> b!1456331 m!1344491))

(declare-fun m!1344539 () Bool)

(assert (=> b!1456331 m!1344539))

(assert (=> b!1456351 m!1344491))

(assert (=> b!1456351 m!1344491))

(declare-fun m!1344541 () Bool)

(assert (=> b!1456351 m!1344541))

(declare-fun m!1344543 () Bool)

(assert (=> b!1456350 m!1344543))

(assert (=> b!1456350 m!1344533))

(assert (=> b!1456350 m!1344535))

(declare-fun m!1344545 () Bool)

(assert (=> start!125126 m!1344545))

(declare-fun m!1344547 () Bool)

(assert (=> start!125126 m!1344547))

(push 1)

