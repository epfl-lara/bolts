; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125332 () Bool)

(assert start!125332)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11907 0))(
  ( (MissingZero!11907 (index!50019 (_ BitVec 32))) (Found!11907 (index!50020 (_ BitVec 32))) (Intermediate!11907 (undefined!12719 Bool) (index!50021 (_ BitVec 32)) (x!131615 (_ BitVec 32))) (Undefined!11907) (MissingVacant!11907 (index!50022 (_ BitVec 32))) )
))
(declare-fun lt!640579 () SeekEntryResult!11907)

(declare-fun b!1462957 () Bool)

(declare-fun e!822331 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!640583 () (_ BitVec 32))

(declare-fun lt!640582 () (_ BitVec 64))

(declare-datatypes ((array!98697 0))(
  ( (array!98698 (arr!47632 (Array (_ BitVec 32) (_ BitVec 64))) (size!48183 (_ BitVec 32))) )
))
(declare-fun lt!640581 () array!98697)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98697 (_ BitVec 32)) SeekEntryResult!11907)

(assert (=> b!1462957 (= e!822331 (not (= lt!640579 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640583 lt!640582 lt!640581 mask!2687))))))

(declare-fun b!1462958 () Bool)

(declare-fun e!822327 () Bool)

(assert (=> b!1462958 (= e!822327 true)))

(declare-fun lt!640584 () Bool)

(assert (=> b!1462958 (= lt!640584 e!822331)))

(declare-fun c!134797 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1462958 (= c!134797 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun res!992399 () Bool)

(declare-fun e!822326 () Bool)

(assert (=> start!125332 (=> (not res!992399) (not e!822326))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125332 (= res!992399 (validMask!0 mask!2687))))

(assert (=> start!125332 e!822326))

(assert (=> start!125332 true))

(declare-fun a!2862 () array!98697)

(declare-fun array_inv!36577 (array!98697) Bool)

(assert (=> start!125332 (array_inv!36577 a!2862)))

(declare-fun b!1462959 () Bool)

(declare-fun e!822332 () Bool)

(assert (=> b!1462959 (= e!822332 e!822327)))

(declare-fun res!992398 () Bool)

(assert (=> b!1462959 (=> res!992398 e!822327)))

(assert (=> b!1462959 (= res!992398 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640583 #b00000000000000000000000000000000) (bvsge lt!640583 (size!48183 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1462959 (= lt!640583 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1462960 () Bool)

(declare-fun res!992406 () Bool)

(declare-fun e!822329 () Bool)

(assert (=> b!1462960 (=> (not res!992406) (not e!822329))))

(declare-fun lt!640580 () SeekEntryResult!11907)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1462960 (= res!992406 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47632 a!2862) j!93) a!2862 mask!2687) lt!640580))))

(declare-fun b!1462961 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!822323 () Bool)

(assert (=> b!1462961 (= e!822323 (or (= (select (arr!47632 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47632 a!2862) intermediateBeforeIndex!19) (select (arr!47632 a!2862) j!93))))))

(declare-fun b!1462962 () Bool)

(declare-fun e!822325 () Bool)

(assert (=> b!1462962 (= e!822329 e!822325)))

(declare-fun res!992404 () Bool)

(assert (=> b!1462962 (=> (not res!992404) (not e!822325))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1462962 (= res!992404 (= lt!640579 (Intermediate!11907 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1462962 (= lt!640579 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640582 mask!2687) lt!640582 lt!640581 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1462962 (= lt!640582 (select (store (arr!47632 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1462963 () Bool)

(declare-fun res!992401 () Bool)

(assert (=> b!1462963 (=> (not res!992401) (not e!822326))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98697 (_ BitVec 32)) Bool)

(assert (=> b!1462963 (= res!992401 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1462964 () Bool)

(assert (=> b!1462964 (= e!822325 (not e!822332))))

(declare-fun res!992400 () Bool)

(assert (=> b!1462964 (=> res!992400 e!822332)))

(assert (=> b!1462964 (= res!992400 (or (and (= (select (arr!47632 a!2862) index!646) (select (store (arr!47632 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47632 a!2862) index!646) (select (arr!47632 a!2862) j!93))) (= (select (arr!47632 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1462964 e!822323))

(declare-fun res!992403 () Bool)

(assert (=> b!1462964 (=> (not res!992403) (not e!822323))))

(assert (=> b!1462964 (= res!992403 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49258 0))(
  ( (Unit!49259) )
))
(declare-fun lt!640585 () Unit!49258)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98697 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49258)

(assert (=> b!1462964 (= lt!640585 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1462965 () Bool)

(declare-fun e!822330 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98697 (_ BitVec 32)) SeekEntryResult!11907)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98697 (_ BitVec 32)) SeekEntryResult!11907)

(assert (=> b!1462965 (= e!822330 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640582 lt!640581 mask!2687) (seekEntryOrOpen!0 lt!640582 lt!640581 mask!2687)))))

(declare-fun b!1462966 () Bool)

(declare-fun res!992389 () Bool)

(assert (=> b!1462966 (=> (not res!992389) (not e!822326))))

(assert (=> b!1462966 (= res!992389 (and (= (size!48183 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48183 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48183 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1462967 () Bool)

(declare-fun res!992392 () Bool)

(assert (=> b!1462967 (=> (not res!992392) (not e!822325))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1462967 (= res!992392 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1462968 () Bool)

(declare-fun e!822328 () Bool)

(assert (=> b!1462968 (= e!822326 e!822328)))

(declare-fun res!992393 () Bool)

(assert (=> b!1462968 (=> (not res!992393) (not e!822328))))

(assert (=> b!1462968 (= res!992393 (= (select (store (arr!47632 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1462968 (= lt!640581 (array!98698 (store (arr!47632 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48183 a!2862)))))

(declare-fun b!1462969 () Bool)

(declare-fun res!992402 () Bool)

(assert (=> b!1462969 (=> (not res!992402) (not e!822326))))

(assert (=> b!1462969 (= res!992402 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48183 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48183 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48183 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1462970 () Bool)

(assert (=> b!1462970 (= e!822330 (= lt!640579 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640582 lt!640581 mask!2687)))))

(declare-fun b!1462971 () Bool)

(assert (=> b!1462971 (= e!822328 e!822329)))

(declare-fun res!992396 () Bool)

(assert (=> b!1462971 (=> (not res!992396) (not e!822329))))

(assert (=> b!1462971 (= res!992396 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47632 a!2862) j!93) mask!2687) (select (arr!47632 a!2862) j!93) a!2862 mask!2687) lt!640580))))

(assert (=> b!1462971 (= lt!640580 (Intermediate!11907 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1462972 () Bool)

(declare-fun res!992394 () Bool)

(assert (=> b!1462972 (=> (not res!992394) (not e!822326))))

(declare-datatypes ((List!34313 0))(
  ( (Nil!34310) (Cons!34309 (h!35659 (_ BitVec 64)) (t!49014 List!34313)) )
))
(declare-fun arrayNoDuplicates!0 (array!98697 (_ BitVec 32) List!34313) Bool)

(assert (=> b!1462972 (= res!992394 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34310))))

(declare-fun b!1462973 () Bool)

(declare-fun res!992395 () Bool)

(assert (=> b!1462973 (=> res!992395 e!822327)))

(assert (=> b!1462973 (= res!992395 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640583 (select (arr!47632 a!2862) j!93) a!2862 mask!2687) lt!640580)))))

(declare-fun b!1462974 () Bool)

(declare-fun res!992397 () Bool)

(assert (=> b!1462974 (=> (not res!992397) (not e!822325))))

(assert (=> b!1462974 (= res!992397 e!822330)))

(declare-fun c!134798 () Bool)

(assert (=> b!1462974 (= c!134798 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1462975 () Bool)

(declare-fun res!992390 () Bool)

(assert (=> b!1462975 (=> (not res!992390) (not e!822326))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1462975 (= res!992390 (validKeyInArray!0 (select (arr!47632 a!2862) i!1006)))))

(declare-fun b!1462976 () Bool)

(declare-fun res!992405 () Bool)

(assert (=> b!1462976 (=> (not res!992405) (not e!822326))))

(assert (=> b!1462976 (= res!992405 (validKeyInArray!0 (select (arr!47632 a!2862) j!93)))))

(declare-fun b!1462977 () Bool)

(declare-fun res!992391 () Bool)

(assert (=> b!1462977 (=> (not res!992391) (not e!822323))))

(assert (=> b!1462977 (= res!992391 (= (seekEntryOrOpen!0 (select (arr!47632 a!2862) j!93) a!2862 mask!2687) (Found!11907 j!93)))))

(declare-fun b!1462978 () Bool)

(assert (=> b!1462978 (= e!822331 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640583 intermediateAfterIndex!19 lt!640582 lt!640581 mask!2687) (seekEntryOrOpen!0 lt!640582 lt!640581 mask!2687))))))

(assert (= (and start!125332 res!992399) b!1462966))

(assert (= (and b!1462966 res!992389) b!1462975))

(assert (= (and b!1462975 res!992390) b!1462976))

(assert (= (and b!1462976 res!992405) b!1462963))

(assert (= (and b!1462963 res!992401) b!1462972))

(assert (= (and b!1462972 res!992394) b!1462969))

(assert (= (and b!1462969 res!992402) b!1462968))

(assert (= (and b!1462968 res!992393) b!1462971))

(assert (= (and b!1462971 res!992396) b!1462960))

(assert (= (and b!1462960 res!992406) b!1462962))

(assert (= (and b!1462962 res!992404) b!1462974))

(assert (= (and b!1462974 c!134798) b!1462970))

(assert (= (and b!1462974 (not c!134798)) b!1462965))

(assert (= (and b!1462974 res!992397) b!1462967))

(assert (= (and b!1462967 res!992392) b!1462964))

(assert (= (and b!1462964 res!992403) b!1462977))

(assert (= (and b!1462977 res!992391) b!1462961))

(assert (= (and b!1462964 (not res!992400)) b!1462959))

(assert (= (and b!1462959 (not res!992398)) b!1462973))

(assert (= (and b!1462973 (not res!992395)) b!1462958))

(assert (= (and b!1462958 c!134797) b!1462957))

(assert (= (and b!1462958 (not c!134797)) b!1462978))

(declare-fun m!1350399 () Bool)

(assert (=> b!1462960 m!1350399))

(assert (=> b!1462960 m!1350399))

(declare-fun m!1350401 () Bool)

(assert (=> b!1462960 m!1350401))

(assert (=> b!1462977 m!1350399))

(assert (=> b!1462977 m!1350399))

(declare-fun m!1350403 () Bool)

(assert (=> b!1462977 m!1350403))

(declare-fun m!1350405 () Bool)

(assert (=> b!1462962 m!1350405))

(assert (=> b!1462962 m!1350405))

(declare-fun m!1350407 () Bool)

(assert (=> b!1462962 m!1350407))

(declare-fun m!1350409 () Bool)

(assert (=> b!1462962 m!1350409))

(declare-fun m!1350411 () Bool)

(assert (=> b!1462962 m!1350411))

(declare-fun m!1350413 () Bool)

(assert (=> b!1462970 m!1350413))

(assert (=> b!1462968 m!1350409))

(declare-fun m!1350415 () Bool)

(assert (=> b!1462968 m!1350415))

(assert (=> b!1462973 m!1350399))

(assert (=> b!1462973 m!1350399))

(declare-fun m!1350417 () Bool)

(assert (=> b!1462973 m!1350417))

(declare-fun m!1350419 () Bool)

(assert (=> b!1462961 m!1350419))

(assert (=> b!1462961 m!1350399))

(declare-fun m!1350421 () Bool)

(assert (=> b!1462957 m!1350421))

(declare-fun m!1350423 () Bool)

(assert (=> b!1462965 m!1350423))

(declare-fun m!1350425 () Bool)

(assert (=> b!1462965 m!1350425))

(declare-fun m!1350427 () Bool)

(assert (=> b!1462963 m!1350427))

(declare-fun m!1350429 () Bool)

(assert (=> b!1462975 m!1350429))

(assert (=> b!1462975 m!1350429))

(declare-fun m!1350431 () Bool)

(assert (=> b!1462975 m!1350431))

(declare-fun m!1350433 () Bool)

(assert (=> b!1462978 m!1350433))

(assert (=> b!1462978 m!1350425))

(declare-fun m!1350435 () Bool)

(assert (=> start!125332 m!1350435))

(declare-fun m!1350437 () Bool)

(assert (=> start!125332 m!1350437))

(assert (=> b!1462971 m!1350399))

(assert (=> b!1462971 m!1350399))

(declare-fun m!1350439 () Bool)

(assert (=> b!1462971 m!1350439))

(assert (=> b!1462971 m!1350439))

(assert (=> b!1462971 m!1350399))

(declare-fun m!1350441 () Bool)

(assert (=> b!1462971 m!1350441))

(assert (=> b!1462976 m!1350399))

(assert (=> b!1462976 m!1350399))

(declare-fun m!1350443 () Bool)

(assert (=> b!1462976 m!1350443))

(declare-fun m!1350445 () Bool)

(assert (=> b!1462959 m!1350445))

(declare-fun m!1350447 () Bool)

(assert (=> b!1462964 m!1350447))

(assert (=> b!1462964 m!1350409))

(declare-fun m!1350449 () Bool)

(assert (=> b!1462964 m!1350449))

(declare-fun m!1350451 () Bool)

(assert (=> b!1462964 m!1350451))

(declare-fun m!1350453 () Bool)

(assert (=> b!1462964 m!1350453))

(assert (=> b!1462964 m!1350399))

(declare-fun m!1350455 () Bool)

(assert (=> b!1462972 m!1350455))

(push 1)

