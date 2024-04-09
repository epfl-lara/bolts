; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126288 () Bool)

(assert start!126288)

(declare-fun b!1479573 () Bool)

(declare-fun res!1005577 () Bool)

(declare-fun e!829943 () Bool)

(assert (=> b!1479573 (=> (not res!1005577) (not e!829943))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99311 0))(
  ( (array!99312 (arr!47930 (Array (_ BitVec 32) (_ BitVec 64))) (size!48481 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99311)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1479573 (= res!1005577 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48481 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48481 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48481 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1479574 () Bool)

(declare-fun e!829940 () Bool)

(assert (=> b!1479574 (= e!829940 true)))

(declare-fun lt!646053 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12193 0))(
  ( (MissingZero!12193 (index!51163 (_ BitVec 32))) (Found!12193 (index!51164 (_ BitVec 32))) (Intermediate!12193 (undefined!13005 Bool) (index!51165 (_ BitVec 32)) (x!132747 (_ BitVec 32))) (Undefined!12193) (MissingVacant!12193 (index!51166 (_ BitVec 32))) )
))
(declare-fun lt!646050 () SeekEntryResult!12193)

(declare-fun lt!646054 () array!99311)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99311 (_ BitVec 32)) SeekEntryResult!12193)

(assert (=> b!1479574 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646053 lt!646054 mask!2687) lt!646050)))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((Unit!49674 0))(
  ( (Unit!49675) )
))
(declare-fun lt!646056 () Unit!49674)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!99311 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49674)

(assert (=> b!1479574 (= lt!646056 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1479575 () Bool)

(declare-fun res!1005568 () Bool)

(assert (=> b!1479575 (=> res!1005568 e!829940)))

(assert (=> b!1479575 (= res!1005568 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47930 a!2862) j!93) a!2862 mask!2687) lt!646050)))))

(declare-fun b!1479576 () Bool)

(declare-fun e!829949 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99311 (_ BitVec 32)) SeekEntryResult!12193)

(assert (=> b!1479576 (= e!829949 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646053 lt!646054 mask!2687) (seekEntryOrOpen!0 lt!646053 lt!646054 mask!2687)))))

(declare-fun b!1479577 () Bool)

(declare-fun res!1005580 () Bool)

(assert (=> b!1479577 (=> (not res!1005580) (not e!829943))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1479577 (= res!1005580 (validKeyInArray!0 (select (arr!47930 a!2862) i!1006)))))

(declare-fun b!1479578 () Bool)

(declare-fun res!1005581 () Bool)

(declare-fun e!829947 () Bool)

(assert (=> b!1479578 (=> (not res!1005581) (not e!829947))))

(assert (=> b!1479578 (= res!1005581 e!829949)))

(declare-fun c!136526 () Bool)

(assert (=> b!1479578 (= c!136526 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1479579 () Bool)

(declare-fun res!1005574 () Bool)

(declare-fun e!829948 () Bool)

(assert (=> b!1479579 (=> (not res!1005574) (not e!829948))))

(declare-fun lt!646057 () SeekEntryResult!12193)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99311 (_ BitVec 32)) SeekEntryResult!12193)

(assert (=> b!1479579 (= res!1005574 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47930 a!2862) j!93) a!2862 mask!2687) lt!646057))))

(declare-fun lt!646052 () SeekEntryResult!12193)

(declare-fun b!1479580 () Bool)

(assert (=> b!1479580 (= e!829949 (= lt!646052 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646053 lt!646054 mask!2687)))))

(declare-fun b!1479581 () Bool)

(declare-fun res!1005578 () Bool)

(assert (=> b!1479581 (=> (not res!1005578) (not e!829943))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99311 (_ BitVec 32)) Bool)

(assert (=> b!1479581 (= res!1005578 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1479582 () Bool)

(declare-fun e!829942 () Bool)

(assert (=> b!1479582 (= e!829943 e!829942)))

(declare-fun res!1005566 () Bool)

(assert (=> b!1479582 (=> (not res!1005566) (not e!829942))))

(assert (=> b!1479582 (= res!1005566 (= (select (store (arr!47930 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1479582 (= lt!646054 (array!99312 (store (arr!47930 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48481 a!2862)))))

(declare-fun res!1005573 () Bool)

(assert (=> start!126288 (=> (not res!1005573) (not e!829943))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126288 (= res!1005573 (validMask!0 mask!2687))))

(assert (=> start!126288 e!829943))

(assert (=> start!126288 true))

(declare-fun array_inv!36875 (array!99311) Bool)

(assert (=> start!126288 (array_inv!36875 a!2862)))

(declare-fun b!1479583 () Bool)

(assert (=> b!1479583 (= e!829948 e!829947)))

(declare-fun res!1005582 () Bool)

(assert (=> b!1479583 (=> (not res!1005582) (not e!829947))))

(assert (=> b!1479583 (= res!1005582 (= lt!646052 (Intermediate!12193 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1479583 (= lt!646052 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646053 mask!2687) lt!646053 lt!646054 mask!2687))))

(assert (=> b!1479583 (= lt!646053 (select (store (arr!47930 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1479584 () Bool)

(declare-fun res!1005576 () Bool)

(assert (=> b!1479584 (=> (not res!1005576) (not e!829947))))

(assert (=> b!1479584 (= res!1005576 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1479585 () Bool)

(assert (=> b!1479585 (= e!829947 (not e!829940))))

(declare-fun res!1005571 () Bool)

(assert (=> b!1479585 (=> res!1005571 e!829940)))

(assert (=> b!1479585 (= res!1005571 (or (and (= (select (arr!47930 a!2862) index!646) (select (store (arr!47930 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47930 a!2862) index!646) (select (arr!47930 a!2862) j!93))) (not (= (select (arr!47930 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47930 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!829946 () Bool)

(assert (=> b!1479585 e!829946))

(declare-fun res!1005570 () Bool)

(assert (=> b!1479585 (=> (not res!1005570) (not e!829946))))

(declare-fun lt!646055 () SeekEntryResult!12193)

(assert (=> b!1479585 (= res!1005570 (and (= lt!646055 lt!646050) (or (= (select (arr!47930 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47930 a!2862) intermediateBeforeIndex!19) (select (arr!47930 a!2862) j!93)))))))

(assert (=> b!1479585 (= lt!646050 (Found!12193 j!93))))

(assert (=> b!1479585 (= lt!646055 (seekEntryOrOpen!0 (select (arr!47930 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1479585 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!646051 () Unit!49674)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99311 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49674)

(assert (=> b!1479585 (= lt!646051 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1479586 () Bool)

(assert (=> b!1479586 (= e!829942 e!829948)))

(declare-fun res!1005569 () Bool)

(assert (=> b!1479586 (=> (not res!1005569) (not e!829948))))

(assert (=> b!1479586 (= res!1005569 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47930 a!2862) j!93) mask!2687) (select (arr!47930 a!2862) j!93) a!2862 mask!2687) lt!646057))))

(assert (=> b!1479586 (= lt!646057 (Intermediate!12193 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun e!829945 () Bool)

(declare-fun b!1479587 () Bool)

(assert (=> b!1479587 (= e!829945 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1479588 () Bool)

(declare-fun res!1005579 () Bool)

(assert (=> b!1479588 (=> (not res!1005579) (not e!829943))))

(assert (=> b!1479588 (= res!1005579 (validKeyInArray!0 (select (arr!47930 a!2862) j!93)))))

(declare-fun b!1479589 () Bool)

(declare-fun res!1005567 () Bool)

(assert (=> b!1479589 (=> (not res!1005567) (not e!829943))))

(declare-datatypes ((List!34611 0))(
  ( (Nil!34608) (Cons!34607 (h!35975 (_ BitVec 64)) (t!49312 List!34611)) )
))
(declare-fun arrayNoDuplicates!0 (array!99311 (_ BitVec 32) List!34611) Bool)

(assert (=> b!1479589 (= res!1005567 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34608))))

(declare-fun b!1479590 () Bool)

(declare-fun res!1005572 () Bool)

(assert (=> b!1479590 (=> (not res!1005572) (not e!829943))))

(assert (=> b!1479590 (= res!1005572 (and (= (size!48481 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48481 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48481 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1479591 () Bool)

(declare-fun e!829944 () Bool)

(assert (=> b!1479591 (= e!829944 e!829945)))

(declare-fun res!1005565 () Bool)

(assert (=> b!1479591 (=> (not res!1005565) (not e!829945))))

(assert (=> b!1479591 (= res!1005565 (= lt!646055 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47930 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1479592 () Bool)

(assert (=> b!1479592 (= e!829946 e!829944)))

(declare-fun res!1005575 () Bool)

(assert (=> b!1479592 (=> res!1005575 e!829944)))

(assert (=> b!1479592 (= res!1005575 (or (and (= (select (arr!47930 a!2862) index!646) (select (store (arr!47930 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47930 a!2862) index!646) (select (arr!47930 a!2862) j!93))) (not (= (select (arr!47930 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!126288 res!1005573) b!1479590))

(assert (= (and b!1479590 res!1005572) b!1479577))

(assert (= (and b!1479577 res!1005580) b!1479588))

(assert (= (and b!1479588 res!1005579) b!1479581))

(assert (= (and b!1479581 res!1005578) b!1479589))

(assert (= (and b!1479589 res!1005567) b!1479573))

(assert (= (and b!1479573 res!1005577) b!1479582))

(assert (= (and b!1479582 res!1005566) b!1479586))

(assert (= (and b!1479586 res!1005569) b!1479579))

(assert (= (and b!1479579 res!1005574) b!1479583))

(assert (= (and b!1479583 res!1005582) b!1479578))

(assert (= (and b!1479578 c!136526) b!1479580))

(assert (= (and b!1479578 (not c!136526)) b!1479576))

(assert (= (and b!1479578 res!1005581) b!1479584))

(assert (= (and b!1479584 res!1005576) b!1479585))

(assert (= (and b!1479585 res!1005570) b!1479592))

(assert (= (and b!1479592 (not res!1005575)) b!1479591))

(assert (= (and b!1479591 res!1005565) b!1479587))

(assert (= (and b!1479585 (not res!1005571)) b!1479575))

(assert (= (and b!1479575 (not res!1005568)) b!1479574))

(declare-fun m!1365485 () Bool)

(assert (=> b!1479575 m!1365485))

(assert (=> b!1479575 m!1365485))

(declare-fun m!1365487 () Bool)

(assert (=> b!1479575 m!1365487))

(assert (=> b!1479586 m!1365485))

(assert (=> b!1479586 m!1365485))

(declare-fun m!1365489 () Bool)

(assert (=> b!1479586 m!1365489))

(assert (=> b!1479586 m!1365489))

(assert (=> b!1479586 m!1365485))

(declare-fun m!1365491 () Bool)

(assert (=> b!1479586 m!1365491))

(declare-fun m!1365493 () Bool)

(assert (=> b!1479576 m!1365493))

(declare-fun m!1365495 () Bool)

(assert (=> b!1479576 m!1365495))

(declare-fun m!1365497 () Bool)

(assert (=> b!1479583 m!1365497))

(assert (=> b!1479583 m!1365497))

(declare-fun m!1365499 () Bool)

(assert (=> b!1479583 m!1365499))

(declare-fun m!1365501 () Bool)

(assert (=> b!1479583 m!1365501))

(declare-fun m!1365503 () Bool)

(assert (=> b!1479583 m!1365503))

(declare-fun m!1365505 () Bool)

(assert (=> b!1479581 m!1365505))

(assert (=> b!1479591 m!1365485))

(assert (=> b!1479591 m!1365485))

(declare-fun m!1365507 () Bool)

(assert (=> b!1479591 m!1365507))

(declare-fun m!1365509 () Bool)

(assert (=> b!1479580 m!1365509))

(declare-fun m!1365511 () Bool)

(assert (=> b!1479592 m!1365511))

(assert (=> b!1479592 m!1365501))

(declare-fun m!1365513 () Bool)

(assert (=> b!1479592 m!1365513))

(assert (=> b!1479592 m!1365485))

(declare-fun m!1365515 () Bool)

(assert (=> b!1479589 m!1365515))

(assert (=> b!1479574 m!1365493))

(declare-fun m!1365517 () Bool)

(assert (=> b!1479574 m!1365517))

(assert (=> b!1479582 m!1365501))

(declare-fun m!1365519 () Bool)

(assert (=> b!1479582 m!1365519))

(declare-fun m!1365521 () Bool)

(assert (=> b!1479577 m!1365521))

(assert (=> b!1479577 m!1365521))

(declare-fun m!1365523 () Bool)

(assert (=> b!1479577 m!1365523))

(assert (=> b!1479579 m!1365485))

(assert (=> b!1479579 m!1365485))

(declare-fun m!1365525 () Bool)

(assert (=> b!1479579 m!1365525))

(declare-fun m!1365527 () Bool)

(assert (=> b!1479585 m!1365527))

(assert (=> b!1479585 m!1365501))

(declare-fun m!1365529 () Bool)

(assert (=> b!1479585 m!1365529))

(assert (=> b!1479585 m!1365513))

(assert (=> b!1479585 m!1365511))

(assert (=> b!1479585 m!1365485))

(declare-fun m!1365531 () Bool)

(assert (=> b!1479585 m!1365531))

(declare-fun m!1365533 () Bool)

(assert (=> b!1479585 m!1365533))

(assert (=> b!1479585 m!1365485))

(declare-fun m!1365535 () Bool)

(assert (=> start!126288 m!1365535))

(declare-fun m!1365537 () Bool)

(assert (=> start!126288 m!1365537))

(assert (=> b!1479588 m!1365485))

(assert (=> b!1479588 m!1365485))

(declare-fun m!1365539 () Bool)

(assert (=> b!1479588 m!1365539))

(check-sat (not start!126288) (not b!1479586) (not b!1479588) (not b!1479579) (not b!1479585) (not b!1479581) (not b!1479589) (not b!1479575) (not b!1479583) (not b!1479580) (not b!1479576) (not b!1479577) (not b!1479591) (not b!1479574))
(check-sat)
