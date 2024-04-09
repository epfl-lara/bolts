; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125002 () Bool)

(assert start!125002)

(declare-datatypes ((array!98367 0))(
  ( (array!98368 (arr!47467 (Array (_ BitVec 32) (_ BitVec 64))) (size!48018 (_ BitVec 32))) )
))
(declare-fun lt!636904 () array!98367)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1452426 () Bool)

(declare-datatypes ((SeekEntryResult!11742 0))(
  ( (MissingZero!11742 (index!49359 (_ BitVec 32))) (Found!11742 (index!49360 (_ BitVec 32))) (Intermediate!11742 (undefined!12554 Bool) (index!49361 (_ BitVec 32)) (x!131010 (_ BitVec 32))) (Undefined!11742) (MissingVacant!11742 (index!49362 (_ BitVec 32))) )
))
(declare-fun lt!636907 () SeekEntryResult!11742)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!636906 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun e!817650 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98367 (_ BitVec 32)) SeekEntryResult!11742)

(assert (=> b!1452426 (= e!817650 (= lt!636907 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636906 lt!636904 mask!2687)))))

(declare-fun res!983645 () Bool)

(declare-fun e!817646 () Bool)

(assert (=> start!125002 (=> (not res!983645) (not e!817646))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125002 (= res!983645 (validMask!0 mask!2687))))

(assert (=> start!125002 e!817646))

(assert (=> start!125002 true))

(declare-fun a!2862 () array!98367)

(declare-fun array_inv!36412 (array!98367) Bool)

(assert (=> start!125002 (array_inv!36412 a!2862)))

(declare-fun b!1452427 () Bool)

(declare-fun e!817651 () Bool)

(declare-fun e!817649 () Bool)

(assert (=> b!1452427 (= e!817651 e!817649)))

(declare-fun res!983649 () Bool)

(assert (=> b!1452427 (=> (not res!983649) (not e!817649))))

(declare-fun lt!636905 () SeekEntryResult!11742)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1452427 (= res!983649 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47467 a!2862) j!93) mask!2687) (select (arr!47467 a!2862) j!93) a!2862 mask!2687) lt!636905))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1452427 (= lt!636905 (Intermediate!11742 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1452428 () Bool)

(declare-fun e!817647 () Bool)

(assert (=> b!1452428 (= e!817649 e!817647)))

(declare-fun res!983656 () Bool)

(assert (=> b!1452428 (=> (not res!983656) (not e!817647))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1452428 (= res!983656 (= lt!636907 (Intermediate!11742 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1452428 (= lt!636907 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636906 mask!2687) lt!636906 lt!636904 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1452428 (= lt!636906 (select (store (arr!47467 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1452429 () Bool)

(declare-fun res!983644 () Bool)

(assert (=> b!1452429 (=> (not res!983644) (not e!817649))))

(assert (=> b!1452429 (= res!983644 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47467 a!2862) j!93) a!2862 mask!2687) lt!636905))))

(declare-fun b!1452430 () Bool)

(declare-fun res!983646 () Bool)

(assert (=> b!1452430 (=> (not res!983646) (not e!817647))))

(assert (=> b!1452430 (= res!983646 e!817650)))

(declare-fun c!133904 () Bool)

(assert (=> b!1452430 (= c!133904 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1452431 () Bool)

(declare-fun res!983652 () Bool)

(assert (=> b!1452431 (=> (not res!983652) (not e!817646))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98367 (_ BitVec 32)) Bool)

(assert (=> b!1452431 (= res!983652 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1452432 () Bool)

(declare-fun res!983658 () Bool)

(assert (=> b!1452432 (=> (not res!983658) (not e!817646))))

(declare-datatypes ((List!34148 0))(
  ( (Nil!34145) (Cons!34144 (h!35494 (_ BitVec 64)) (t!48849 List!34148)) )
))
(declare-fun arrayNoDuplicates!0 (array!98367 (_ BitVec 32) List!34148) Bool)

(assert (=> b!1452432 (= res!983658 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34145))))

(declare-fun b!1452433 () Bool)

(declare-fun res!983654 () Bool)

(assert (=> b!1452433 (=> (not res!983654) (not e!817646))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1452433 (= res!983654 (validKeyInArray!0 (select (arr!47467 a!2862) j!93)))))

(declare-fun b!1452434 () Bool)

(declare-fun e!817652 () Bool)

(assert (=> b!1452434 (= e!817652 (and (or (= (select (arr!47467 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47467 a!2862) intermediateBeforeIndex!19) (select (arr!47467 a!2862) j!93))) (or (and (= (select (arr!47467 a!2862) index!646) (select (store (arr!47467 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47467 a!2862) index!646) (select (arr!47467 a!2862) j!93))) (= (select (arr!47467 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47467 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1452435 () Bool)

(declare-fun res!983651 () Bool)

(assert (=> b!1452435 (=> (not res!983651) (not e!817652))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98367 (_ BitVec 32)) SeekEntryResult!11742)

(assert (=> b!1452435 (= res!983651 (= (seekEntryOrOpen!0 (select (arr!47467 a!2862) j!93) a!2862 mask!2687) (Found!11742 j!93)))))

(declare-fun b!1452436 () Bool)

(declare-fun res!983648 () Bool)

(assert (=> b!1452436 (=> (not res!983648) (not e!817646))))

(assert (=> b!1452436 (= res!983648 (validKeyInArray!0 (select (arr!47467 a!2862) i!1006)))))

(declare-fun b!1452437 () Bool)

(assert (=> b!1452437 (= e!817647 (not (or (and (= (select (arr!47467 a!2862) index!646) (select (store (arr!47467 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47467 a!2862) index!646) (select (arr!47467 a!2862) j!93))) (= (select (arr!47467 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (bvslt mask!2687 #b00000000000000000000000000000000) (bvsge index!646 (bvadd #b00000000000000000000000000000001 mask!2687)) (bvslt intermediateAfterIndex!19 (bvadd #b00000000000000000000000000000001 mask!2687)))))))

(assert (=> b!1452437 e!817652))

(declare-fun res!983655 () Bool)

(assert (=> b!1452437 (=> (not res!983655) (not e!817652))))

(assert (=> b!1452437 (= res!983655 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48928 0))(
  ( (Unit!48929) )
))
(declare-fun lt!636903 () Unit!48928)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98367 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48928)

(assert (=> b!1452437 (= lt!636903 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1452438 () Bool)

(declare-fun res!983647 () Bool)

(assert (=> b!1452438 (=> (not res!983647) (not e!817646))))

(assert (=> b!1452438 (= res!983647 (and (= (size!48018 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48018 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48018 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1452439 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98367 (_ BitVec 32)) SeekEntryResult!11742)

(assert (=> b!1452439 (= e!817650 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636906 lt!636904 mask!2687) (seekEntryOrOpen!0 lt!636906 lt!636904 mask!2687)))))

(declare-fun b!1452440 () Bool)

(declare-fun res!983650 () Bool)

(assert (=> b!1452440 (=> (not res!983650) (not e!817646))))

(assert (=> b!1452440 (= res!983650 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48018 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48018 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48018 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1452441 () Bool)

(assert (=> b!1452441 (= e!817646 e!817651)))

(declare-fun res!983657 () Bool)

(assert (=> b!1452441 (=> (not res!983657) (not e!817651))))

(assert (=> b!1452441 (= res!983657 (= (select (store (arr!47467 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1452441 (= lt!636904 (array!98368 (store (arr!47467 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48018 a!2862)))))

(declare-fun b!1452442 () Bool)

(declare-fun res!983653 () Bool)

(assert (=> b!1452442 (=> (not res!983653) (not e!817647))))

(assert (=> b!1452442 (= res!983653 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!125002 res!983645) b!1452438))

(assert (= (and b!1452438 res!983647) b!1452436))

(assert (= (and b!1452436 res!983648) b!1452433))

(assert (= (and b!1452433 res!983654) b!1452431))

(assert (= (and b!1452431 res!983652) b!1452432))

(assert (= (and b!1452432 res!983658) b!1452440))

(assert (= (and b!1452440 res!983650) b!1452441))

(assert (= (and b!1452441 res!983657) b!1452427))

(assert (= (and b!1452427 res!983649) b!1452429))

(assert (= (and b!1452429 res!983644) b!1452428))

(assert (= (and b!1452428 res!983656) b!1452430))

(assert (= (and b!1452430 c!133904) b!1452426))

(assert (= (and b!1452430 (not c!133904)) b!1452439))

(assert (= (and b!1452430 res!983646) b!1452442))

(assert (= (and b!1452442 res!983653) b!1452437))

(assert (= (and b!1452437 res!983655) b!1452435))

(assert (= (and b!1452435 res!983651) b!1452434))

(declare-fun m!1341057 () Bool)

(assert (=> b!1452439 m!1341057))

(declare-fun m!1341059 () Bool)

(assert (=> b!1452439 m!1341059))

(declare-fun m!1341061 () Bool)

(assert (=> b!1452429 m!1341061))

(assert (=> b!1452429 m!1341061))

(declare-fun m!1341063 () Bool)

(assert (=> b!1452429 m!1341063))

(assert (=> b!1452433 m!1341061))

(assert (=> b!1452433 m!1341061))

(declare-fun m!1341065 () Bool)

(assert (=> b!1452433 m!1341065))

(assert (=> b!1452435 m!1341061))

(assert (=> b!1452435 m!1341061))

(declare-fun m!1341067 () Bool)

(assert (=> b!1452435 m!1341067))

(declare-fun m!1341069 () Bool)

(assert (=> b!1452441 m!1341069))

(declare-fun m!1341071 () Bool)

(assert (=> b!1452441 m!1341071))

(declare-fun m!1341073 () Bool)

(assert (=> b!1452432 m!1341073))

(declare-fun m!1341075 () Bool)

(assert (=> b!1452428 m!1341075))

(assert (=> b!1452428 m!1341075))

(declare-fun m!1341077 () Bool)

(assert (=> b!1452428 m!1341077))

(assert (=> b!1452428 m!1341069))

(declare-fun m!1341079 () Bool)

(assert (=> b!1452428 m!1341079))

(declare-fun m!1341081 () Bool)

(assert (=> b!1452426 m!1341081))

(declare-fun m!1341083 () Bool)

(assert (=> start!125002 m!1341083))

(declare-fun m!1341085 () Bool)

(assert (=> start!125002 m!1341085))

(declare-fun m!1341087 () Bool)

(assert (=> b!1452431 m!1341087))

(assert (=> b!1452427 m!1341061))

(assert (=> b!1452427 m!1341061))

(declare-fun m!1341089 () Bool)

(assert (=> b!1452427 m!1341089))

(assert (=> b!1452427 m!1341089))

(assert (=> b!1452427 m!1341061))

(declare-fun m!1341091 () Bool)

(assert (=> b!1452427 m!1341091))

(assert (=> b!1452434 m!1341069))

(declare-fun m!1341093 () Bool)

(assert (=> b!1452434 m!1341093))

(declare-fun m!1341095 () Bool)

(assert (=> b!1452434 m!1341095))

(declare-fun m!1341097 () Bool)

(assert (=> b!1452434 m!1341097))

(assert (=> b!1452434 m!1341061))

(declare-fun m!1341099 () Bool)

(assert (=> b!1452436 m!1341099))

(assert (=> b!1452436 m!1341099))

(declare-fun m!1341101 () Bool)

(assert (=> b!1452436 m!1341101))

(declare-fun m!1341103 () Bool)

(assert (=> b!1452437 m!1341103))

(assert (=> b!1452437 m!1341069))

(assert (=> b!1452437 m!1341095))

(assert (=> b!1452437 m!1341097))

(declare-fun m!1341105 () Bool)

(assert (=> b!1452437 m!1341105))

(assert (=> b!1452437 m!1341061))

(push 1)

(assert (not b!1452431))

(assert (not b!1452436))

(assert (not b!1452426))

(assert (not b!1452439))

(assert (not b!1452435))

(assert (not b!1452433))

(assert (not b!1452429))

(assert (not b!1452427))

(assert (not b!1452437))

(assert (not b!1452432))

(assert (not start!125002))

(assert (not b!1452428))

(check-sat)

(pop 1)

(push 1)

(check-sat)

