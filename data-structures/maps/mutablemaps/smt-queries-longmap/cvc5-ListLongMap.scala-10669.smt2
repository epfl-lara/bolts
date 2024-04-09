; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125194 () Bool)

(assert start!125194)

(declare-fun b!1458574 () Bool)

(declare-fun res!988768 () Bool)

(declare-fun e!820422 () Bool)

(assert (=> b!1458574 (=> (not res!988768) (not e!820422))))

(declare-datatypes ((array!98559 0))(
  ( (array!98560 (arr!47563 (Array (_ BitVec 32) (_ BitVec 64))) (size!48114 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98559)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1458574 (= res!988768 (validKeyInArray!0 (select (arr!47563 a!2862) j!93)))))

(declare-fun b!1458575 () Bool)

(declare-fun res!988772 () Bool)

(declare-fun e!820426 () Bool)

(assert (=> b!1458575 (=> res!988772 e!820426)))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11838 0))(
  ( (MissingZero!11838 (index!49743 (_ BitVec 32))) (Found!11838 (index!49744 (_ BitVec 32))) (Intermediate!11838 (undefined!12650 Bool) (index!49745 (_ BitVec 32)) (x!131362 (_ BitVec 32))) (Undefined!11838) (MissingVacant!11838 (index!49746 (_ BitVec 32))) )
))
(declare-fun lt!639066 () SeekEntryResult!11838)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!639064 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98559 (_ BitVec 32)) SeekEntryResult!11838)

(assert (=> b!1458575 (= res!988772 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639064 (select (arr!47563 a!2862) j!93) a!2862 mask!2687) lt!639066)))))

(declare-fun res!988762 () Bool)

(assert (=> start!125194 (=> (not res!988762) (not e!820422))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125194 (= res!988762 (validMask!0 mask!2687))))

(assert (=> start!125194 e!820422))

(assert (=> start!125194 true))

(declare-fun array_inv!36508 (array!98559) Bool)

(assert (=> start!125194 (array_inv!36508 a!2862)))

(declare-fun lt!639069 () (_ BitVec 64))

(declare-fun e!820423 () Bool)

(declare-fun lt!639065 () array!98559)

(declare-fun lt!639070 () SeekEntryResult!11838)

(declare-fun b!1458576 () Bool)

(assert (=> b!1458576 (= e!820423 (not (= lt!639070 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639064 lt!639069 lt!639065 mask!2687))))))

(declare-fun b!1458577 () Bool)

(declare-fun e!820427 () Bool)

(declare-fun e!820428 () Bool)

(assert (=> b!1458577 (= e!820427 e!820428)))

(declare-fun res!988767 () Bool)

(assert (=> b!1458577 (=> (not res!988767) (not e!820428))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1458577 (= res!988767 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47563 a!2862) j!93) mask!2687) (select (arr!47563 a!2862) j!93) a!2862 mask!2687) lt!639066))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1458577 (= lt!639066 (Intermediate!11838 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun lt!639063 () SeekEntryResult!11838)

(declare-fun b!1458578 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98559 (_ BitVec 32)) SeekEntryResult!11838)

(assert (=> b!1458578 (= e!820423 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639064 intermediateAfterIndex!19 lt!639069 lt!639065 mask!2687) lt!639063)))))

(declare-fun b!1458579 () Bool)

(declare-fun res!988777 () Bool)

(assert (=> b!1458579 (=> (not res!988777) (not e!820422))))

(declare-datatypes ((List!34244 0))(
  ( (Nil!34241) (Cons!34240 (h!35590 (_ BitVec 64)) (t!48945 List!34244)) )
))
(declare-fun arrayNoDuplicates!0 (array!98559 (_ BitVec 32) List!34244) Bool)

(assert (=> b!1458579 (= res!988777 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34241))))

(declare-fun b!1458580 () Bool)

(declare-fun res!988766 () Bool)

(assert (=> b!1458580 (=> res!988766 e!820426)))

(assert (=> b!1458580 (= res!988766 e!820423)))

(declare-fun c!134419 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1458580 (= c!134419 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1458581 () Bool)

(declare-fun e!820425 () Bool)

(assert (=> b!1458581 (= e!820425 e!820426)))

(declare-fun res!988770 () Bool)

(assert (=> b!1458581 (=> res!988770 e!820426)))

(assert (=> b!1458581 (= res!988770 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639064 #b00000000000000000000000000000000) (bvsge lt!639064 (size!48114 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1458581 (= lt!639064 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1458581 (= lt!639063 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639069 lt!639065 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98559 (_ BitVec 32)) SeekEntryResult!11838)

(assert (=> b!1458581 (= lt!639063 (seekEntryOrOpen!0 lt!639069 lt!639065 mask!2687))))

(declare-fun b!1458582 () Bool)

(declare-fun e!820424 () Bool)

(assert (=> b!1458582 (= e!820424 (not e!820425))))

(declare-fun res!988776 () Bool)

(assert (=> b!1458582 (=> res!988776 e!820425)))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1458582 (= res!988776 (or (and (= (select (arr!47563 a!2862) index!646) (select (store (arr!47563 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47563 a!2862) index!646) (select (arr!47563 a!2862) j!93))) (= (select (arr!47563 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun lt!639062 () SeekEntryResult!11838)

(assert (=> b!1458582 (and (= lt!639062 (Found!11838 j!93)) (or (= (select (arr!47563 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47563 a!2862) intermediateBeforeIndex!19) (select (arr!47563 a!2862) j!93))) (let ((bdg!53449 (select (store (arr!47563 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47563 a!2862) index!646) bdg!53449) (= (select (arr!47563 a!2862) index!646) (select (arr!47563 a!2862) j!93))) (= (select (arr!47563 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53449 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> b!1458582 (= lt!639062 (seekEntryOrOpen!0 (select (arr!47563 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98559 (_ BitVec 32)) Bool)

(assert (=> b!1458582 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49120 0))(
  ( (Unit!49121) )
))
(declare-fun lt!639067 () Unit!49120)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98559 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49120)

(assert (=> b!1458582 (= lt!639067 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1458583 () Bool)

(declare-fun res!988775 () Bool)

(assert (=> b!1458583 (=> (not res!988775) (not e!820422))))

(assert (=> b!1458583 (= res!988775 (validKeyInArray!0 (select (arr!47563 a!2862) i!1006)))))

(declare-fun b!1458584 () Bool)

(declare-fun res!988774 () Bool)

(assert (=> b!1458584 (=> (not res!988774) (not e!820422))))

(assert (=> b!1458584 (= res!988774 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1458585 () Bool)

(assert (=> b!1458585 (= e!820422 e!820427)))

(declare-fun res!988771 () Bool)

(assert (=> b!1458585 (=> (not res!988771) (not e!820427))))

(assert (=> b!1458585 (= res!988771 (= (select (store (arr!47563 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1458585 (= lt!639065 (array!98560 (store (arr!47563 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48114 a!2862)))))

(declare-fun b!1458586 () Bool)

(declare-fun res!988763 () Bool)

(assert (=> b!1458586 (=> (not res!988763) (not e!820424))))

(declare-fun e!820429 () Bool)

(assert (=> b!1458586 (= res!988763 e!820429)))

(declare-fun c!134420 () Bool)

(assert (=> b!1458586 (= c!134420 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1458587 () Bool)

(declare-fun res!988765 () Bool)

(assert (=> b!1458587 (=> (not res!988765) (not e!820422))))

(assert (=> b!1458587 (= res!988765 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48114 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48114 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48114 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1458588 () Bool)

(assert (=> b!1458588 (= e!820426 true)))

(assert (=> b!1458588 (= lt!639062 lt!639063)))

(declare-fun lt!639068 () Unit!49120)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98559 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49120)

(assert (=> b!1458588 (= lt!639068 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!639064 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1458589 () Bool)

(declare-fun res!988764 () Bool)

(assert (=> b!1458589 (=> (not res!988764) (not e!820422))))

(assert (=> b!1458589 (= res!988764 (and (= (size!48114 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48114 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48114 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1458590 () Bool)

(declare-fun res!988778 () Bool)

(assert (=> b!1458590 (=> (not res!988778) (not e!820424))))

(assert (=> b!1458590 (= res!988778 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1458591 () Bool)

(declare-fun res!988779 () Bool)

(assert (=> b!1458591 (=> (not res!988779) (not e!820428))))

(assert (=> b!1458591 (= res!988779 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47563 a!2862) j!93) a!2862 mask!2687) lt!639066))))

(declare-fun b!1458592 () Bool)

(assert (=> b!1458592 (= e!820428 e!820424)))

(declare-fun res!988773 () Bool)

(assert (=> b!1458592 (=> (not res!988773) (not e!820424))))

(assert (=> b!1458592 (= res!988773 (= lt!639070 (Intermediate!11838 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1458592 (= lt!639070 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639069 mask!2687) lt!639069 lt!639065 mask!2687))))

(assert (=> b!1458592 (= lt!639069 (select (store (arr!47563 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1458593 () Bool)

(assert (=> b!1458593 (= e!820429 (= lt!639070 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639069 lt!639065 mask!2687)))))

(declare-fun b!1458594 () Bool)

(assert (=> b!1458594 (= e!820429 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639069 lt!639065 mask!2687) (seekEntryOrOpen!0 lt!639069 lt!639065 mask!2687)))))

(declare-fun b!1458595 () Bool)

(declare-fun res!988769 () Bool)

(assert (=> b!1458595 (=> res!988769 e!820426)))

(assert (=> b!1458595 (= res!988769 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(assert (= (and start!125194 res!988762) b!1458589))

(assert (= (and b!1458589 res!988764) b!1458583))

(assert (= (and b!1458583 res!988775) b!1458574))

(assert (= (and b!1458574 res!988768) b!1458584))

(assert (= (and b!1458584 res!988774) b!1458579))

(assert (= (and b!1458579 res!988777) b!1458587))

(assert (= (and b!1458587 res!988765) b!1458585))

(assert (= (and b!1458585 res!988771) b!1458577))

(assert (= (and b!1458577 res!988767) b!1458591))

(assert (= (and b!1458591 res!988779) b!1458592))

(assert (= (and b!1458592 res!988773) b!1458586))

(assert (= (and b!1458586 c!134420) b!1458593))

(assert (= (and b!1458586 (not c!134420)) b!1458594))

(assert (= (and b!1458586 res!988763) b!1458590))

(assert (= (and b!1458590 res!988778) b!1458582))

(assert (= (and b!1458582 (not res!988776)) b!1458581))

(assert (= (and b!1458581 (not res!988770)) b!1458575))

(assert (= (and b!1458575 (not res!988772)) b!1458580))

(assert (= (and b!1458580 c!134419) b!1458576))

(assert (= (and b!1458580 (not c!134419)) b!1458578))

(assert (= (and b!1458580 (not res!988766)) b!1458595))

(assert (= (and b!1458595 (not res!988769)) b!1458588))

(declare-fun m!1346463 () Bool)

(assert (=> b!1458581 m!1346463))

(declare-fun m!1346465 () Bool)

(assert (=> b!1458581 m!1346465))

(declare-fun m!1346467 () Bool)

(assert (=> b!1458581 m!1346467))

(declare-fun m!1346469 () Bool)

(assert (=> b!1458575 m!1346469))

(assert (=> b!1458575 m!1346469))

(declare-fun m!1346471 () Bool)

(assert (=> b!1458575 m!1346471))

(declare-fun m!1346473 () Bool)

(assert (=> b!1458584 m!1346473))

(assert (=> b!1458574 m!1346469))

(assert (=> b!1458574 m!1346469))

(declare-fun m!1346475 () Bool)

(assert (=> b!1458574 m!1346475))

(declare-fun m!1346477 () Bool)

(assert (=> b!1458579 m!1346477))

(declare-fun m!1346479 () Bool)

(assert (=> b!1458576 m!1346479))

(assert (=> b!1458594 m!1346465))

(assert (=> b!1458594 m!1346467))

(declare-fun m!1346481 () Bool)

(assert (=> b!1458583 m!1346481))

(assert (=> b!1458583 m!1346481))

(declare-fun m!1346483 () Bool)

(assert (=> b!1458583 m!1346483))

(declare-fun m!1346485 () Bool)

(assert (=> b!1458578 m!1346485))

(declare-fun m!1346487 () Bool)

(assert (=> b!1458592 m!1346487))

(assert (=> b!1458592 m!1346487))

(declare-fun m!1346489 () Bool)

(assert (=> b!1458592 m!1346489))

(declare-fun m!1346491 () Bool)

(assert (=> b!1458592 m!1346491))

(declare-fun m!1346493 () Bool)

(assert (=> b!1458592 m!1346493))

(declare-fun m!1346495 () Bool)

(assert (=> b!1458593 m!1346495))

(declare-fun m!1346497 () Bool)

(assert (=> b!1458588 m!1346497))

(assert (=> b!1458585 m!1346491))

(declare-fun m!1346499 () Bool)

(assert (=> b!1458585 m!1346499))

(declare-fun m!1346501 () Bool)

(assert (=> start!125194 m!1346501))

(declare-fun m!1346503 () Bool)

(assert (=> start!125194 m!1346503))

(assert (=> b!1458591 m!1346469))

(assert (=> b!1458591 m!1346469))

(declare-fun m!1346505 () Bool)

(assert (=> b!1458591 m!1346505))

(assert (=> b!1458577 m!1346469))

(assert (=> b!1458577 m!1346469))

(declare-fun m!1346507 () Bool)

(assert (=> b!1458577 m!1346507))

(assert (=> b!1458577 m!1346507))

(assert (=> b!1458577 m!1346469))

(declare-fun m!1346509 () Bool)

(assert (=> b!1458577 m!1346509))

(declare-fun m!1346511 () Bool)

(assert (=> b!1458582 m!1346511))

(assert (=> b!1458582 m!1346491))

(declare-fun m!1346513 () Bool)

(assert (=> b!1458582 m!1346513))

(declare-fun m!1346515 () Bool)

(assert (=> b!1458582 m!1346515))

(declare-fun m!1346517 () Bool)

(assert (=> b!1458582 m!1346517))

(assert (=> b!1458582 m!1346469))

(declare-fun m!1346519 () Bool)

(assert (=> b!1458582 m!1346519))

(declare-fun m!1346521 () Bool)

(assert (=> b!1458582 m!1346521))

(assert (=> b!1458582 m!1346469))

(push 1)

