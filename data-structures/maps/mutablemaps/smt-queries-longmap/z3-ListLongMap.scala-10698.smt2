; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125370 () Bool)

(assert start!125370)

(declare-fun b!1464211 () Bool)

(declare-fun res!993421 () Bool)

(declare-fun e!822897 () Bool)

(assert (=> b!1464211 (=> (not res!993421) (not e!822897))))

(declare-fun e!822899 () Bool)

(assert (=> b!1464211 (= res!993421 e!822899)))

(declare-fun c!134911 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1464211 (= c!134911 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1464212 () Bool)

(declare-fun res!993418 () Bool)

(assert (=> b!1464212 (=> (not res!993418) (not e!822897))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1464212 (= res!993418 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1464213 () Bool)

(declare-fun e!822894 () Bool)

(assert (=> b!1464213 (= e!822894 true)))

(declare-fun lt!640978 () Bool)

(declare-fun e!822898 () Bool)

(assert (=> b!1464213 (= lt!640978 e!822898)))

(declare-fun c!134912 () Bool)

(assert (=> b!1464213 (= c!134912 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1464214 () Bool)

(declare-fun res!993415 () Bool)

(declare-fun e!822901 () Bool)

(assert (=> b!1464214 (=> (not res!993415) (not e!822901))))

(declare-datatypes ((array!98735 0))(
  ( (array!98736 (arr!47651 (Array (_ BitVec 32) (_ BitVec 64))) (size!48202 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98735)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11926 0))(
  ( (MissingZero!11926 (index!50095 (_ BitVec 32))) (Found!11926 (index!50096 (_ BitVec 32))) (Intermediate!11926 (undefined!12738 Bool) (index!50097 (_ BitVec 32)) (x!131682 (_ BitVec 32))) (Undefined!11926) (MissingVacant!11926 (index!50098 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98735 (_ BitVec 32)) SeekEntryResult!11926)

(assert (=> b!1464214 (= res!993415 (= (seekEntryOrOpen!0 (select (arr!47651 a!2862) j!93) a!2862 mask!2687) (Found!11926 j!93)))))

(declare-fun lt!640981 () array!98735)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!640983 () SeekEntryResult!11926)

(declare-fun lt!640979 () (_ BitVec 64))

(declare-fun b!1464215 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98735 (_ BitVec 32)) SeekEntryResult!11926)

(assert (=> b!1464215 (= e!822899 (= lt!640983 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640979 lt!640981 mask!2687)))))

(declare-fun b!1464216 () Bool)

(declare-fun res!993425 () Bool)

(declare-fun e!822902 () Bool)

(assert (=> b!1464216 (=> (not res!993425) (not e!822902))))

(declare-datatypes ((List!34332 0))(
  ( (Nil!34329) (Cons!34328 (h!35678 (_ BitVec 64)) (t!49033 List!34332)) )
))
(declare-fun arrayNoDuplicates!0 (array!98735 (_ BitVec 32) List!34332) Bool)

(assert (=> b!1464216 (= res!993425 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34329))))

(declare-fun b!1464217 () Bool)

(declare-fun res!993430 () Bool)

(declare-fun e!822900 () Bool)

(assert (=> b!1464217 (=> (not res!993430) (not e!822900))))

(declare-fun lt!640980 () SeekEntryResult!11926)

(assert (=> b!1464217 (= res!993430 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47651 a!2862) j!93) a!2862 mask!2687) lt!640980))))

(declare-fun b!1464218 () Bool)

(declare-fun res!993419 () Bool)

(assert (=> b!1464218 (=> (not res!993419) (not e!822902))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1464218 (= res!993419 (validKeyInArray!0 (select (arr!47651 a!2862) i!1006)))))

(declare-fun b!1464219 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1464219 (= e!822901 (or (= (select (arr!47651 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47651 a!2862) intermediateBeforeIndex!19) (select (arr!47651 a!2862) j!93))))))

(declare-fun b!1464220 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98735 (_ BitVec 32)) SeekEntryResult!11926)

(assert (=> b!1464220 (= e!822899 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640979 lt!640981 mask!2687) (seekEntryOrOpen!0 lt!640979 lt!640981 mask!2687)))))

(declare-fun b!1464221 () Bool)

(declare-fun res!993424 () Bool)

(assert (=> b!1464221 (=> (not res!993424) (not e!822902))))

(assert (=> b!1464221 (= res!993424 (and (= (size!48202 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48202 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48202 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1464222 () Bool)

(declare-fun lt!640982 () (_ BitVec 32))

(assert (=> b!1464222 (= e!822898 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640982 intermediateAfterIndex!19 lt!640979 lt!640981 mask!2687) (seekEntryOrOpen!0 lt!640979 lt!640981 mask!2687))))))

(declare-fun b!1464223 () Bool)

(declare-fun e!822893 () Bool)

(assert (=> b!1464223 (= e!822897 (not e!822893))))

(declare-fun res!993417 () Bool)

(assert (=> b!1464223 (=> res!993417 e!822893)))

(assert (=> b!1464223 (= res!993417 (or (and (= (select (arr!47651 a!2862) index!646) (select (store (arr!47651 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47651 a!2862) index!646) (select (arr!47651 a!2862) j!93))) (= (select (arr!47651 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1464223 e!822901))

(declare-fun res!993423 () Bool)

(assert (=> b!1464223 (=> (not res!993423) (not e!822901))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98735 (_ BitVec 32)) Bool)

(assert (=> b!1464223 (= res!993423 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49296 0))(
  ( (Unit!49297) )
))
(declare-fun lt!640984 () Unit!49296)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98735 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49296)

(assert (=> b!1464223 (= lt!640984 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1464224 () Bool)

(assert (=> b!1464224 (= e!822900 e!822897)))

(declare-fun res!993431 () Bool)

(assert (=> b!1464224 (=> (not res!993431) (not e!822897))))

(assert (=> b!1464224 (= res!993431 (= lt!640983 (Intermediate!11926 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1464224 (= lt!640983 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640979 mask!2687) lt!640979 lt!640981 mask!2687))))

(assert (=> b!1464224 (= lt!640979 (select (store (arr!47651 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1464225 () Bool)

(assert (=> b!1464225 (= e!822898 (not (= lt!640983 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640982 lt!640979 lt!640981 mask!2687))))))

(declare-fun b!1464226 () Bool)

(assert (=> b!1464226 (= e!822893 e!822894)))

(declare-fun res!993428 () Bool)

(assert (=> b!1464226 (=> res!993428 e!822894)))

(assert (=> b!1464226 (= res!993428 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640982 #b00000000000000000000000000000000) (bvsge lt!640982 (size!48202 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1464226 (= lt!640982 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1464227 () Bool)

(declare-fun e!822895 () Bool)

(assert (=> b!1464227 (= e!822902 e!822895)))

(declare-fun res!993427 () Bool)

(assert (=> b!1464227 (=> (not res!993427) (not e!822895))))

(assert (=> b!1464227 (= res!993427 (= (select (store (arr!47651 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1464227 (= lt!640981 (array!98736 (store (arr!47651 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48202 a!2862)))))

(declare-fun b!1464228 () Bool)

(declare-fun res!993429 () Bool)

(assert (=> b!1464228 (=> (not res!993429) (not e!822902))))

(assert (=> b!1464228 (= res!993429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!993420 () Bool)

(assert (=> start!125370 (=> (not res!993420) (not e!822902))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125370 (= res!993420 (validMask!0 mask!2687))))

(assert (=> start!125370 e!822902))

(assert (=> start!125370 true))

(declare-fun array_inv!36596 (array!98735) Bool)

(assert (=> start!125370 (array_inv!36596 a!2862)))

(declare-fun b!1464229 () Bool)

(declare-fun res!993426 () Bool)

(assert (=> b!1464229 (=> (not res!993426) (not e!822902))))

(assert (=> b!1464229 (= res!993426 (validKeyInArray!0 (select (arr!47651 a!2862) j!93)))))

(declare-fun b!1464230 () Bool)

(declare-fun res!993416 () Bool)

(assert (=> b!1464230 (=> res!993416 e!822894)))

(assert (=> b!1464230 (= res!993416 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640982 (select (arr!47651 a!2862) j!93) a!2862 mask!2687) lt!640980)))))

(declare-fun b!1464231 () Bool)

(declare-fun res!993432 () Bool)

(assert (=> b!1464231 (=> (not res!993432) (not e!822902))))

(assert (=> b!1464231 (= res!993432 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48202 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48202 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48202 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1464232 () Bool)

(assert (=> b!1464232 (= e!822895 e!822900)))

(declare-fun res!993422 () Bool)

(assert (=> b!1464232 (=> (not res!993422) (not e!822900))))

(assert (=> b!1464232 (= res!993422 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47651 a!2862) j!93) mask!2687) (select (arr!47651 a!2862) j!93) a!2862 mask!2687) lt!640980))))

(assert (=> b!1464232 (= lt!640980 (Intermediate!11926 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!125370 res!993420) b!1464221))

(assert (= (and b!1464221 res!993424) b!1464218))

(assert (= (and b!1464218 res!993419) b!1464229))

(assert (= (and b!1464229 res!993426) b!1464228))

(assert (= (and b!1464228 res!993429) b!1464216))

(assert (= (and b!1464216 res!993425) b!1464231))

(assert (= (and b!1464231 res!993432) b!1464227))

(assert (= (and b!1464227 res!993427) b!1464232))

(assert (= (and b!1464232 res!993422) b!1464217))

(assert (= (and b!1464217 res!993430) b!1464224))

(assert (= (and b!1464224 res!993431) b!1464211))

(assert (= (and b!1464211 c!134911) b!1464215))

(assert (= (and b!1464211 (not c!134911)) b!1464220))

(assert (= (and b!1464211 res!993421) b!1464212))

(assert (= (and b!1464212 res!993418) b!1464223))

(assert (= (and b!1464223 res!993423) b!1464214))

(assert (= (and b!1464214 res!993415) b!1464219))

(assert (= (and b!1464223 (not res!993417)) b!1464226))

(assert (= (and b!1464226 (not res!993428)) b!1464230))

(assert (= (and b!1464230 (not res!993416)) b!1464213))

(assert (= (and b!1464213 c!134912) b!1464225))

(assert (= (and b!1464213 (not c!134912)) b!1464222))

(declare-fun m!1351501 () Bool)

(assert (=> b!1464227 m!1351501))

(declare-fun m!1351503 () Bool)

(assert (=> b!1464227 m!1351503))

(declare-fun m!1351505 () Bool)

(assert (=> b!1464232 m!1351505))

(assert (=> b!1464232 m!1351505))

(declare-fun m!1351507 () Bool)

(assert (=> b!1464232 m!1351507))

(assert (=> b!1464232 m!1351507))

(assert (=> b!1464232 m!1351505))

(declare-fun m!1351509 () Bool)

(assert (=> b!1464232 m!1351509))

(declare-fun m!1351511 () Bool)

(assert (=> b!1464226 m!1351511))

(assert (=> b!1464229 m!1351505))

(assert (=> b!1464229 m!1351505))

(declare-fun m!1351513 () Bool)

(assert (=> b!1464229 m!1351513))

(assert (=> b!1464217 m!1351505))

(assert (=> b!1464217 m!1351505))

(declare-fun m!1351515 () Bool)

(assert (=> b!1464217 m!1351515))

(assert (=> b!1464230 m!1351505))

(assert (=> b!1464230 m!1351505))

(declare-fun m!1351517 () Bool)

(assert (=> b!1464230 m!1351517))

(declare-fun m!1351519 () Bool)

(assert (=> b!1464223 m!1351519))

(assert (=> b!1464223 m!1351501))

(declare-fun m!1351521 () Bool)

(assert (=> b!1464223 m!1351521))

(declare-fun m!1351523 () Bool)

(assert (=> b!1464223 m!1351523))

(declare-fun m!1351525 () Bool)

(assert (=> b!1464223 m!1351525))

(assert (=> b!1464223 m!1351505))

(declare-fun m!1351527 () Bool)

(assert (=> b!1464225 m!1351527))

(declare-fun m!1351529 () Bool)

(assert (=> b!1464224 m!1351529))

(assert (=> b!1464224 m!1351529))

(declare-fun m!1351531 () Bool)

(assert (=> b!1464224 m!1351531))

(assert (=> b!1464224 m!1351501))

(declare-fun m!1351533 () Bool)

(assert (=> b!1464224 m!1351533))

(declare-fun m!1351535 () Bool)

(assert (=> b!1464216 m!1351535))

(declare-fun m!1351537 () Bool)

(assert (=> b!1464215 m!1351537))

(declare-fun m!1351539 () Bool)

(assert (=> b!1464218 m!1351539))

(assert (=> b!1464218 m!1351539))

(declare-fun m!1351541 () Bool)

(assert (=> b!1464218 m!1351541))

(assert (=> b!1464214 m!1351505))

(assert (=> b!1464214 m!1351505))

(declare-fun m!1351543 () Bool)

(assert (=> b!1464214 m!1351543))

(declare-fun m!1351545 () Bool)

(assert (=> b!1464222 m!1351545))

(declare-fun m!1351547 () Bool)

(assert (=> b!1464222 m!1351547))

(declare-fun m!1351549 () Bool)

(assert (=> b!1464228 m!1351549))

(declare-fun m!1351551 () Bool)

(assert (=> start!125370 m!1351551))

(declare-fun m!1351553 () Bool)

(assert (=> start!125370 m!1351553))

(declare-fun m!1351555 () Bool)

(assert (=> b!1464219 m!1351555))

(assert (=> b!1464219 m!1351505))

(declare-fun m!1351557 () Bool)

(assert (=> b!1464220 m!1351557))

(assert (=> b!1464220 m!1351547))

(check-sat (not b!1464220) (not b!1464222) (not b!1464218) (not b!1464226) (not b!1464230) (not b!1464228) (not b!1464216) (not b!1464229) (not b!1464217) (not b!1464215) (not b!1464232) (not b!1464223) (not b!1464224) (not start!125370) (not b!1464225) (not b!1464214))
(check-sat)
