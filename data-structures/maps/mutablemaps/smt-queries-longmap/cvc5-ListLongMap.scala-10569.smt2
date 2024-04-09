; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124594 () Bool)

(assert start!124594)

(declare-fun b!1441451 () Bool)

(declare-fun res!973899 () Bool)

(declare-fun e!812600 () Bool)

(assert (=> b!1441451 (=> (not res!973899) (not e!812600))))

(declare-datatypes ((array!97959 0))(
  ( (array!97960 (arr!47263 (Array (_ BitVec 32) (_ BitVec 64))) (size!47814 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97959)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1441451 (= res!973899 (validKeyInArray!0 (select (arr!47263 a!2862) j!93)))))

(declare-fun b!1441452 () Bool)

(declare-fun res!973905 () Bool)

(assert (=> b!1441452 (=> (not res!973905) (not e!812600))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97959 (_ BitVec 32)) Bool)

(assert (=> b!1441452 (= res!973905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!633213 () (_ BitVec 64))

(declare-fun b!1441453 () Bool)

(declare-fun lt!633214 () array!97959)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!812598 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11538 0))(
  ( (MissingZero!11538 (index!48543 (_ BitVec 32))) (Found!11538 (index!48544 (_ BitVec 32))) (Intermediate!11538 (undefined!12350 Bool) (index!48545 (_ BitVec 32)) (x!130262 (_ BitVec 32))) (Undefined!11538) (MissingVacant!11538 (index!48546 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97959 (_ BitVec 32)) SeekEntryResult!11538)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97959 (_ BitVec 32)) SeekEntryResult!11538)

(assert (=> b!1441453 (= e!812598 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633213 lt!633214 mask!2687) (seekEntryOrOpen!0 lt!633213 lt!633214 mask!2687)))))

(declare-fun b!1441454 () Bool)

(declare-fun e!812597 () Bool)

(declare-fun e!812599 () Bool)

(assert (=> b!1441454 (= e!812597 e!812599)))

(declare-fun res!973902 () Bool)

(assert (=> b!1441454 (=> (not res!973902) (not e!812599))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!633217 () SeekEntryResult!11538)

(assert (=> b!1441454 (= res!973902 (= lt!633217 (Intermediate!11538 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97959 (_ BitVec 32)) SeekEntryResult!11538)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1441454 (= lt!633217 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633213 mask!2687) lt!633213 lt!633214 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1441454 (= lt!633213 (select (store (arr!47263 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1441455 () Bool)

(declare-fun res!973897 () Bool)

(assert (=> b!1441455 (=> (not res!973897) (not e!812597))))

(declare-fun lt!633215 () SeekEntryResult!11538)

(assert (=> b!1441455 (= res!973897 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47263 a!2862) j!93) a!2862 mask!2687) lt!633215))))

(declare-fun b!1441456 () Bool)

(declare-fun e!812595 () Bool)

(assert (=> b!1441456 (= e!812600 e!812595)))

(declare-fun res!973895 () Bool)

(assert (=> b!1441456 (=> (not res!973895) (not e!812595))))

(assert (=> b!1441456 (= res!973895 (= (select (store (arr!47263 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1441456 (= lt!633214 (array!97960 (store (arr!47263 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47814 a!2862)))))

(declare-fun b!1441457 () Bool)

(declare-fun res!973893 () Bool)

(assert (=> b!1441457 (=> (not res!973893) (not e!812600))))

(assert (=> b!1441457 (= res!973893 (validKeyInArray!0 (select (arr!47263 a!2862) i!1006)))))

(declare-fun b!1441458 () Bool)

(declare-fun res!973894 () Bool)

(assert (=> b!1441458 (=> (not res!973894) (not e!812599))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1441458 (= res!973894 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1441459 () Bool)

(assert (=> b!1441459 (= e!812598 (= lt!633217 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633213 lt!633214 mask!2687)))))

(declare-fun b!1441460 () Bool)

(assert (=> b!1441460 (= e!812599 (not true))))

(assert (=> b!1441460 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48520 0))(
  ( (Unit!48521) )
))
(declare-fun lt!633216 () Unit!48520)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97959 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48520)

(assert (=> b!1441460 (= lt!633216 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1441462 () Bool)

(declare-fun res!973901 () Bool)

(assert (=> b!1441462 (=> (not res!973901) (not e!812600))))

(declare-datatypes ((List!33944 0))(
  ( (Nil!33941) (Cons!33940 (h!35290 (_ BitVec 64)) (t!48645 List!33944)) )
))
(declare-fun arrayNoDuplicates!0 (array!97959 (_ BitVec 32) List!33944) Bool)

(assert (=> b!1441462 (= res!973901 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33941))))

(declare-fun b!1441463 () Bool)

(declare-fun res!973898 () Bool)

(assert (=> b!1441463 (=> (not res!973898) (not e!812599))))

(assert (=> b!1441463 (= res!973898 e!812598)))

(declare-fun c!133292 () Bool)

(assert (=> b!1441463 (= c!133292 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1441464 () Bool)

(declare-fun res!973903 () Bool)

(assert (=> b!1441464 (=> (not res!973903) (not e!812600))))

(assert (=> b!1441464 (= res!973903 (and (= (size!47814 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47814 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47814 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1441465 () Bool)

(assert (=> b!1441465 (= e!812595 e!812597)))

(declare-fun res!973896 () Bool)

(assert (=> b!1441465 (=> (not res!973896) (not e!812597))))

(assert (=> b!1441465 (= res!973896 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47263 a!2862) j!93) mask!2687) (select (arr!47263 a!2862) j!93) a!2862 mask!2687) lt!633215))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1441465 (= lt!633215 (Intermediate!11538 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1441461 () Bool)

(declare-fun res!973904 () Bool)

(assert (=> b!1441461 (=> (not res!973904) (not e!812600))))

(assert (=> b!1441461 (= res!973904 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47814 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47814 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47814 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!973900 () Bool)

(assert (=> start!124594 (=> (not res!973900) (not e!812600))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124594 (= res!973900 (validMask!0 mask!2687))))

(assert (=> start!124594 e!812600))

(assert (=> start!124594 true))

(declare-fun array_inv!36208 (array!97959) Bool)

(assert (=> start!124594 (array_inv!36208 a!2862)))

(assert (= (and start!124594 res!973900) b!1441464))

(assert (= (and b!1441464 res!973903) b!1441457))

(assert (= (and b!1441457 res!973893) b!1441451))

(assert (= (and b!1441451 res!973899) b!1441452))

(assert (= (and b!1441452 res!973905) b!1441462))

(assert (= (and b!1441462 res!973901) b!1441461))

(assert (= (and b!1441461 res!973904) b!1441456))

(assert (= (and b!1441456 res!973895) b!1441465))

(assert (= (and b!1441465 res!973896) b!1441455))

(assert (= (and b!1441455 res!973897) b!1441454))

(assert (= (and b!1441454 res!973902) b!1441463))

(assert (= (and b!1441463 c!133292) b!1441459))

(assert (= (and b!1441463 (not c!133292)) b!1441453))

(assert (= (and b!1441463 res!973898) b!1441458))

(assert (= (and b!1441458 res!973894) b!1441460))

(declare-fun m!1330725 () Bool)

(assert (=> b!1441462 m!1330725))

(declare-fun m!1330727 () Bool)

(assert (=> b!1441455 m!1330727))

(assert (=> b!1441455 m!1330727))

(declare-fun m!1330729 () Bool)

(assert (=> b!1441455 m!1330729))

(declare-fun m!1330731 () Bool)

(assert (=> b!1441456 m!1330731))

(declare-fun m!1330733 () Bool)

(assert (=> b!1441456 m!1330733))

(declare-fun m!1330735 () Bool)

(assert (=> b!1441452 m!1330735))

(declare-fun m!1330737 () Bool)

(assert (=> b!1441453 m!1330737))

(declare-fun m!1330739 () Bool)

(assert (=> b!1441453 m!1330739))

(assert (=> b!1441465 m!1330727))

(assert (=> b!1441465 m!1330727))

(declare-fun m!1330741 () Bool)

(assert (=> b!1441465 m!1330741))

(assert (=> b!1441465 m!1330741))

(assert (=> b!1441465 m!1330727))

(declare-fun m!1330743 () Bool)

(assert (=> b!1441465 m!1330743))

(declare-fun m!1330745 () Bool)

(assert (=> start!124594 m!1330745))

(declare-fun m!1330747 () Bool)

(assert (=> start!124594 m!1330747))

(declare-fun m!1330749 () Bool)

(assert (=> b!1441460 m!1330749))

(declare-fun m!1330751 () Bool)

(assert (=> b!1441460 m!1330751))

(declare-fun m!1330753 () Bool)

(assert (=> b!1441457 m!1330753))

(assert (=> b!1441457 m!1330753))

(declare-fun m!1330755 () Bool)

(assert (=> b!1441457 m!1330755))

(declare-fun m!1330757 () Bool)

(assert (=> b!1441454 m!1330757))

(assert (=> b!1441454 m!1330757))

(declare-fun m!1330759 () Bool)

(assert (=> b!1441454 m!1330759))

(assert (=> b!1441454 m!1330731))

(declare-fun m!1330761 () Bool)

(assert (=> b!1441454 m!1330761))

(declare-fun m!1330763 () Bool)

(assert (=> b!1441459 m!1330763))

(assert (=> b!1441451 m!1330727))

(assert (=> b!1441451 m!1330727))

(declare-fun m!1330765 () Bool)

(assert (=> b!1441451 m!1330765))

(push 1)

