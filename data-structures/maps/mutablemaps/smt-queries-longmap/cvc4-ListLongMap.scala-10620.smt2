; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124904 () Bool)

(assert start!124904)

(declare-datatypes ((array!98269 0))(
  ( (array!98270 (arr!47418 (Array (_ BitVec 32) (_ BitVec 64))) (size!47969 (_ BitVec 32))) )
))
(declare-fun lt!635980 () array!98269)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1449717 () Bool)

(declare-fun e!816409 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!635977 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11693 0))(
  ( (MissingZero!11693 (index!49163 (_ BitVec 32))) (Found!11693 (index!49164 (_ BitVec 32))) (Intermediate!11693 (undefined!12505 Bool) (index!49165 (_ BitVec 32)) (x!130825 (_ BitVec 32))) (Undefined!11693) (MissingVacant!11693 (index!49166 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98269 (_ BitVec 32)) SeekEntryResult!11693)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98269 (_ BitVec 32)) SeekEntryResult!11693)

(assert (=> b!1449717 (= e!816409 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635977 lt!635980 mask!2687) (seekEntryOrOpen!0 lt!635977 lt!635980 mask!2687)))))

(declare-fun b!1449718 () Bool)

(declare-fun e!816407 () Bool)

(declare-fun e!816411 () Bool)

(assert (=> b!1449718 (= e!816407 e!816411)))

(declare-fun res!981236 () Bool)

(assert (=> b!1449718 (=> (not res!981236) (not e!816411))))

(declare-fun lt!635978 () SeekEntryResult!11693)

(declare-fun a!2862 () array!98269)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1449718 (= res!981236 (= lt!635978 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47418 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1449719 () Bool)

(declare-fun res!981246 () Bool)

(declare-fun e!816408 () Bool)

(assert (=> b!1449719 (=> (not res!981246) (not e!816408))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1449719 (= res!981246 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1449720 () Bool)

(declare-fun res!981237 () Bool)

(declare-fun e!816412 () Bool)

(assert (=> b!1449720 (=> (not res!981237) (not e!816412))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1449720 (= res!981237 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47969 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47969 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47969 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1449721 () Bool)

(declare-fun res!981240 () Bool)

(assert (=> b!1449721 (=> (not res!981240) (not e!816412))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1449721 (= res!981240 (validKeyInArray!0 (select (arr!47418 a!2862) i!1006)))))

(declare-fun b!1449722 () Bool)

(declare-fun e!816414 () Bool)

(assert (=> b!1449722 (= e!816414 e!816408)))

(declare-fun res!981235 () Bool)

(assert (=> b!1449722 (=> (not res!981235) (not e!816408))))

(declare-fun lt!635981 () SeekEntryResult!11693)

(assert (=> b!1449722 (= res!981235 (= lt!635981 (Intermediate!11693 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98269 (_ BitVec 32)) SeekEntryResult!11693)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1449722 (= lt!635981 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635977 mask!2687) lt!635977 lt!635980 mask!2687))))

(assert (=> b!1449722 (= lt!635977 (select (store (arr!47418 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1449723 () Bool)

(declare-fun res!981241 () Bool)

(declare-fun e!816413 () Bool)

(assert (=> b!1449723 (=> res!981241 e!816413)))

(declare-fun lt!635982 () SeekEntryResult!11693)

(assert (=> b!1449723 (= res!981241 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47418 a!2862) j!93) a!2862 mask!2687) lt!635982)))))

(declare-fun b!1449725 () Bool)

(declare-fun res!981234 () Bool)

(assert (=> b!1449725 (=> (not res!981234) (not e!816408))))

(assert (=> b!1449725 (= res!981234 e!816409)))

(declare-fun c!133757 () Bool)

(assert (=> b!1449725 (= c!133757 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1449726 () Bool)

(declare-fun res!981238 () Bool)

(assert (=> b!1449726 (=> (not res!981238) (not e!816412))))

(assert (=> b!1449726 (= res!981238 (and (= (size!47969 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47969 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47969 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1449727 () Bool)

(declare-fun e!816415 () Bool)

(assert (=> b!1449727 (= e!816415 e!816414)))

(declare-fun res!981229 () Bool)

(assert (=> b!1449727 (=> (not res!981229) (not e!816414))))

(declare-fun lt!635979 () SeekEntryResult!11693)

(assert (=> b!1449727 (= res!981229 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47418 a!2862) j!93) mask!2687) (select (arr!47418 a!2862) j!93) a!2862 mask!2687) lt!635979))))

(assert (=> b!1449727 (= lt!635979 (Intermediate!11693 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1449728 () Bool)

(declare-fun res!981242 () Bool)

(assert (=> b!1449728 (=> (not res!981242) (not e!816412))))

(assert (=> b!1449728 (= res!981242 (validKeyInArray!0 (select (arr!47418 a!2862) j!93)))))

(declare-fun b!1449729 () Bool)

(assert (=> b!1449729 (= e!816408 (not e!816413))))

(declare-fun res!981243 () Bool)

(assert (=> b!1449729 (=> res!981243 e!816413)))

(assert (=> b!1449729 (= res!981243 (or (and (= (select (arr!47418 a!2862) index!646) (select (store (arr!47418 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47418 a!2862) index!646) (select (arr!47418 a!2862) j!93))) (not (= (select (arr!47418 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47418 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!816410 () Bool)

(assert (=> b!1449729 e!816410))

(declare-fun res!981232 () Bool)

(assert (=> b!1449729 (=> (not res!981232) (not e!816410))))

(assert (=> b!1449729 (= res!981232 (and (= lt!635978 lt!635982) (or (= (select (arr!47418 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47418 a!2862) intermediateBeforeIndex!19) (select (arr!47418 a!2862) j!93)))))))

(assert (=> b!1449729 (= lt!635982 (Found!11693 j!93))))

(assert (=> b!1449729 (= lt!635978 (seekEntryOrOpen!0 (select (arr!47418 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98269 (_ BitVec 32)) Bool)

(assert (=> b!1449729 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48830 0))(
  ( (Unit!48831) )
))
(declare-fun lt!635976 () Unit!48830)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98269 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48830)

(assert (=> b!1449729 (= lt!635976 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1449730 () Bool)

(declare-fun res!981230 () Bool)

(assert (=> b!1449730 (=> (not res!981230) (not e!816414))))

(assert (=> b!1449730 (= res!981230 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47418 a!2862) j!93) a!2862 mask!2687) lt!635979))))

(declare-fun b!1449731 () Bool)

(assert (=> b!1449731 (= e!816410 e!816407)))

(declare-fun res!981233 () Bool)

(assert (=> b!1449731 (=> res!981233 e!816407)))

(assert (=> b!1449731 (= res!981233 (or (and (= (select (arr!47418 a!2862) index!646) (select (store (arr!47418 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47418 a!2862) index!646) (select (arr!47418 a!2862) j!93))) (not (= (select (arr!47418 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1449732 () Bool)

(assert (=> b!1449732 (= e!816413 true)))

(assert (=> b!1449732 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635977 lt!635980 mask!2687) lt!635982)))

(declare-fun lt!635983 () Unit!48830)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!98269 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48830)

(assert (=> b!1449732 (= lt!635983 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1449733 () Bool)

(assert (=> b!1449733 (= e!816409 (= lt!635981 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635977 lt!635980 mask!2687)))))

(declare-fun b!1449734 () Bool)

(assert (=> b!1449734 (= e!816411 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1449735 () Bool)

(declare-fun res!981231 () Bool)

(assert (=> b!1449735 (=> (not res!981231) (not e!816412))))

(assert (=> b!1449735 (= res!981231 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1449736 () Bool)

(assert (=> b!1449736 (= e!816412 e!816415)))

(declare-fun res!981245 () Bool)

(assert (=> b!1449736 (=> (not res!981245) (not e!816415))))

(assert (=> b!1449736 (= res!981245 (= (select (store (arr!47418 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1449736 (= lt!635980 (array!98270 (store (arr!47418 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47969 a!2862)))))

(declare-fun res!981244 () Bool)

(assert (=> start!124904 (=> (not res!981244) (not e!816412))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124904 (= res!981244 (validMask!0 mask!2687))))

(assert (=> start!124904 e!816412))

(assert (=> start!124904 true))

(declare-fun array_inv!36363 (array!98269) Bool)

(assert (=> start!124904 (array_inv!36363 a!2862)))

(declare-fun b!1449724 () Bool)

(declare-fun res!981239 () Bool)

(assert (=> b!1449724 (=> (not res!981239) (not e!816412))))

(declare-datatypes ((List!34099 0))(
  ( (Nil!34096) (Cons!34095 (h!35445 (_ BitVec 64)) (t!48800 List!34099)) )
))
(declare-fun arrayNoDuplicates!0 (array!98269 (_ BitVec 32) List!34099) Bool)

(assert (=> b!1449724 (= res!981239 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34096))))

(assert (= (and start!124904 res!981244) b!1449726))

(assert (= (and b!1449726 res!981238) b!1449721))

(assert (= (and b!1449721 res!981240) b!1449728))

(assert (= (and b!1449728 res!981242) b!1449735))

(assert (= (and b!1449735 res!981231) b!1449724))

(assert (= (and b!1449724 res!981239) b!1449720))

(assert (= (and b!1449720 res!981237) b!1449736))

(assert (= (and b!1449736 res!981245) b!1449727))

(assert (= (and b!1449727 res!981229) b!1449730))

(assert (= (and b!1449730 res!981230) b!1449722))

(assert (= (and b!1449722 res!981235) b!1449725))

(assert (= (and b!1449725 c!133757) b!1449733))

(assert (= (and b!1449725 (not c!133757)) b!1449717))

(assert (= (and b!1449725 res!981234) b!1449719))

(assert (= (and b!1449719 res!981246) b!1449729))

(assert (= (and b!1449729 res!981232) b!1449731))

(assert (= (and b!1449731 (not res!981233)) b!1449718))

(assert (= (and b!1449718 res!981236) b!1449734))

(assert (= (and b!1449729 (not res!981243)) b!1449723))

(assert (= (and b!1449723 (not res!981241)) b!1449732))

(declare-fun m!1338463 () Bool)

(assert (=> b!1449723 m!1338463))

(assert (=> b!1449723 m!1338463))

(declare-fun m!1338465 () Bool)

(assert (=> b!1449723 m!1338465))

(assert (=> b!1449728 m!1338463))

(assert (=> b!1449728 m!1338463))

(declare-fun m!1338467 () Bool)

(assert (=> b!1449728 m!1338467))

(declare-fun m!1338469 () Bool)

(assert (=> b!1449736 m!1338469))

(declare-fun m!1338471 () Bool)

(assert (=> b!1449736 m!1338471))

(assert (=> b!1449718 m!1338463))

(assert (=> b!1449718 m!1338463))

(declare-fun m!1338473 () Bool)

(assert (=> b!1449718 m!1338473))

(declare-fun m!1338475 () Bool)

(assert (=> b!1449724 m!1338475))

(declare-fun m!1338477 () Bool)

(assert (=> b!1449733 m!1338477))

(declare-fun m!1338479 () Bool)

(assert (=> b!1449721 m!1338479))

(assert (=> b!1449721 m!1338479))

(declare-fun m!1338481 () Bool)

(assert (=> b!1449721 m!1338481))

(declare-fun m!1338483 () Bool)

(assert (=> start!124904 m!1338483))

(declare-fun m!1338485 () Bool)

(assert (=> start!124904 m!1338485))

(declare-fun m!1338487 () Bool)

(assert (=> b!1449717 m!1338487))

(declare-fun m!1338489 () Bool)

(assert (=> b!1449717 m!1338489))

(assert (=> b!1449732 m!1338487))

(declare-fun m!1338491 () Bool)

(assert (=> b!1449732 m!1338491))

(declare-fun m!1338493 () Bool)

(assert (=> b!1449729 m!1338493))

(assert (=> b!1449729 m!1338469))

(declare-fun m!1338495 () Bool)

(assert (=> b!1449729 m!1338495))

(declare-fun m!1338497 () Bool)

(assert (=> b!1449729 m!1338497))

(declare-fun m!1338499 () Bool)

(assert (=> b!1449729 m!1338499))

(assert (=> b!1449729 m!1338463))

(declare-fun m!1338501 () Bool)

(assert (=> b!1449729 m!1338501))

(declare-fun m!1338503 () Bool)

(assert (=> b!1449729 m!1338503))

(assert (=> b!1449729 m!1338463))

(assert (=> b!1449727 m!1338463))

(assert (=> b!1449727 m!1338463))

(declare-fun m!1338505 () Bool)

(assert (=> b!1449727 m!1338505))

(assert (=> b!1449727 m!1338505))

(assert (=> b!1449727 m!1338463))

(declare-fun m!1338507 () Bool)

(assert (=> b!1449727 m!1338507))

(declare-fun m!1338509 () Bool)

(assert (=> b!1449722 m!1338509))

(assert (=> b!1449722 m!1338509))

(declare-fun m!1338511 () Bool)

(assert (=> b!1449722 m!1338511))

(assert (=> b!1449722 m!1338469))

(declare-fun m!1338513 () Bool)

(assert (=> b!1449722 m!1338513))

(assert (=> b!1449731 m!1338499))

(assert (=> b!1449731 m!1338469))

(assert (=> b!1449731 m!1338497))

(assert (=> b!1449731 m!1338463))

(declare-fun m!1338515 () Bool)

(assert (=> b!1449735 m!1338515))

(assert (=> b!1449730 m!1338463))

(assert (=> b!1449730 m!1338463))

(declare-fun m!1338517 () Bool)

(assert (=> b!1449730 m!1338517))

(push 1)

