; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125264 () Bool)

(assert start!125264)

(declare-fun b!1460718 () Bool)

(declare-fun res!990559 () Bool)

(declare-fun e!821311 () Bool)

(assert (=> b!1460718 (=> (not res!990559) (not e!821311))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1460718 (= res!990559 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1460719 () Bool)

(declare-fun res!990570 () Bool)

(declare-fun e!821310 () Bool)

(assert (=> b!1460719 (=> (not res!990570) (not e!821310))))

(declare-datatypes ((array!98629 0))(
  ( (array!98630 (arr!47598 (Array (_ BitVec 32) (_ BitVec 64))) (size!48149 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98629)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1460719 (= res!990570 (validKeyInArray!0 (select (arr!47598 a!2862) i!1006)))))

(declare-fun b!1460720 () Bool)

(declare-fun res!990558 () Bool)

(assert (=> b!1460720 (=> (not res!990558) (not e!821310))))

(declare-datatypes ((List!34279 0))(
  ( (Nil!34276) (Cons!34275 (h!35625 (_ BitVec 64)) (t!48980 List!34279)) )
))
(declare-fun arrayNoDuplicates!0 (array!98629 (_ BitVec 32) List!34279) Bool)

(assert (=> b!1460720 (= res!990558 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34276))))

(declare-fun b!1460721 () Bool)

(declare-fun e!821312 () Bool)

(assert (=> b!1460721 (= e!821312 e!821311)))

(declare-fun res!990564 () Bool)

(assert (=> b!1460721 (=> (not res!990564) (not e!821311))))

(declare-datatypes ((SeekEntryResult!11873 0))(
  ( (MissingZero!11873 (index!49883 (_ BitVec 32))) (Found!11873 (index!49884 (_ BitVec 32))) (Intermediate!11873 (undefined!12685 Bool) (index!49885 (_ BitVec 32)) (x!131485 (_ BitVec 32))) (Undefined!11873) (MissingVacant!11873 (index!49886 (_ BitVec 32))) )
))
(declare-fun lt!639869 () SeekEntryResult!11873)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1460721 (= res!990564 (= lt!639869 (Intermediate!11873 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!639870 () (_ BitVec 64))

(declare-fun lt!639867 () array!98629)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98629 (_ BitVec 32)) SeekEntryResult!11873)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1460721 (= lt!639869 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639870 mask!2687) lt!639870 lt!639867 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1460721 (= lt!639870 (select (store (arr!47598 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun e!821307 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1460722 () Bool)

(assert (=> b!1460722 (= e!821307 (= lt!639869 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639870 lt!639867 mask!2687)))))

(declare-fun b!1460723 () Bool)

(declare-fun res!990563 () Bool)

(assert (=> b!1460723 (=> (not res!990563) (not e!821310))))

(assert (=> b!1460723 (= res!990563 (and (= (size!48149 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48149 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48149 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1460724 () Bool)

(declare-fun res!990560 () Bool)

(assert (=> b!1460724 (=> (not res!990560) (not e!821310))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1460724 (= res!990560 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48149 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48149 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48149 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1460725 () Bool)

(declare-fun res!990565 () Bool)

(assert (=> b!1460725 (=> (not res!990565) (not e!821311))))

(assert (=> b!1460725 (= res!990565 e!821307)))

(declare-fun c!134594 () Bool)

(assert (=> b!1460725 (= c!134594 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1460726 () Bool)

(declare-fun res!990569 () Bool)

(assert (=> b!1460726 (=> (not res!990569) (not e!821310))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98629 (_ BitVec 32)) Bool)

(assert (=> b!1460726 (= res!990569 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1460727 () Bool)

(declare-fun e!821306 () Bool)

(assert (=> b!1460727 (= e!821310 e!821306)))

(declare-fun res!990557 () Bool)

(assert (=> b!1460727 (=> (not res!990557) (not e!821306))))

(assert (=> b!1460727 (= res!990557 (= (select (store (arr!47598 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1460727 (= lt!639867 (array!98630 (store (arr!47598 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48149 a!2862)))))

(declare-fun b!1460728 () Bool)

(declare-fun res!990561 () Bool)

(declare-fun e!821308 () Bool)

(assert (=> b!1460728 (=> (not res!990561) (not e!821308))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98629 (_ BitVec 32)) SeekEntryResult!11873)

(assert (=> b!1460728 (= res!990561 (= (seekEntryOrOpen!0 (select (arr!47598 a!2862) j!93) a!2862 mask!2687) (Found!11873 j!93)))))

(declare-fun b!1460729 () Bool)

(assert (=> b!1460729 (= e!821306 e!821312)))

(declare-fun res!990568 () Bool)

(assert (=> b!1460729 (=> (not res!990568) (not e!821312))))

(declare-fun lt!639868 () SeekEntryResult!11873)

(assert (=> b!1460729 (= res!990568 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47598 a!2862) j!93) mask!2687) (select (arr!47598 a!2862) j!93) a!2862 mask!2687) lt!639868))))

(assert (=> b!1460729 (= lt!639868 (Intermediate!11873 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1460731 () Bool)

(assert (=> b!1460731 (= e!821311 (not true))))

(assert (=> b!1460731 e!821308))

(declare-fun res!990567 () Bool)

(assert (=> b!1460731 (=> (not res!990567) (not e!821308))))

(assert (=> b!1460731 (= res!990567 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49190 0))(
  ( (Unit!49191) )
))
(declare-fun lt!639871 () Unit!49190)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98629 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49190)

(assert (=> b!1460731 (= lt!639871 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1460732 () Bool)

(assert (=> b!1460732 (= e!821308 (or (= (select (arr!47598 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47598 a!2862) intermediateBeforeIndex!19) (select (arr!47598 a!2862) j!93))))))

(declare-fun b!1460733 () Bool)

(declare-fun res!990556 () Bool)

(assert (=> b!1460733 (=> (not res!990556) (not e!821310))))

(assert (=> b!1460733 (= res!990556 (validKeyInArray!0 (select (arr!47598 a!2862) j!93)))))

(declare-fun b!1460734 () Bool)

(declare-fun res!990566 () Bool)

(assert (=> b!1460734 (=> (not res!990566) (not e!821312))))

(assert (=> b!1460734 (= res!990566 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47598 a!2862) j!93) a!2862 mask!2687) lt!639868))))

(declare-fun b!1460730 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98629 (_ BitVec 32)) SeekEntryResult!11873)

(assert (=> b!1460730 (= e!821307 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639870 lt!639867 mask!2687) (seekEntryOrOpen!0 lt!639870 lt!639867 mask!2687)))))

(declare-fun res!990562 () Bool)

(assert (=> start!125264 (=> (not res!990562) (not e!821310))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125264 (= res!990562 (validMask!0 mask!2687))))

(assert (=> start!125264 e!821310))

(assert (=> start!125264 true))

(declare-fun array_inv!36543 (array!98629) Bool)

(assert (=> start!125264 (array_inv!36543 a!2862)))

(assert (= (and start!125264 res!990562) b!1460723))

(assert (= (and b!1460723 res!990563) b!1460719))

(assert (= (and b!1460719 res!990570) b!1460733))

(assert (= (and b!1460733 res!990556) b!1460726))

(assert (= (and b!1460726 res!990569) b!1460720))

(assert (= (and b!1460720 res!990558) b!1460724))

(assert (= (and b!1460724 res!990560) b!1460727))

(assert (= (and b!1460727 res!990557) b!1460729))

(assert (= (and b!1460729 res!990568) b!1460734))

(assert (= (and b!1460734 res!990566) b!1460721))

(assert (= (and b!1460721 res!990564) b!1460725))

(assert (= (and b!1460725 c!134594) b!1460722))

(assert (= (and b!1460725 (not c!134594)) b!1460730))

(assert (= (and b!1460725 res!990565) b!1460718))

(assert (= (and b!1460718 res!990559) b!1460731))

(assert (= (and b!1460731 res!990567) b!1460728))

(assert (= (and b!1460728 res!990561) b!1460732))

(declare-fun m!1348439 () Bool)

(assert (=> b!1460727 m!1348439))

(declare-fun m!1348441 () Bool)

(assert (=> b!1460727 m!1348441))

(declare-fun m!1348443 () Bool)

(assert (=> start!125264 m!1348443))

(declare-fun m!1348445 () Bool)

(assert (=> start!125264 m!1348445))

(declare-fun m!1348447 () Bool)

(assert (=> b!1460729 m!1348447))

(assert (=> b!1460729 m!1348447))

(declare-fun m!1348449 () Bool)

(assert (=> b!1460729 m!1348449))

(assert (=> b!1460729 m!1348449))

(assert (=> b!1460729 m!1348447))

(declare-fun m!1348451 () Bool)

(assert (=> b!1460729 m!1348451))

(declare-fun m!1348453 () Bool)

(assert (=> b!1460730 m!1348453))

(declare-fun m!1348455 () Bool)

(assert (=> b!1460730 m!1348455))

(assert (=> b!1460733 m!1348447))

(assert (=> b!1460733 m!1348447))

(declare-fun m!1348457 () Bool)

(assert (=> b!1460733 m!1348457))

(declare-fun m!1348459 () Bool)

(assert (=> b!1460720 m!1348459))

(declare-fun m!1348461 () Bool)

(assert (=> b!1460726 m!1348461))

(assert (=> b!1460734 m!1348447))

(assert (=> b!1460734 m!1348447))

(declare-fun m!1348463 () Bool)

(assert (=> b!1460734 m!1348463))

(declare-fun m!1348465 () Bool)

(assert (=> b!1460719 m!1348465))

(assert (=> b!1460719 m!1348465))

(declare-fun m!1348467 () Bool)

(assert (=> b!1460719 m!1348467))

(assert (=> b!1460728 m!1348447))

(assert (=> b!1460728 m!1348447))

(declare-fun m!1348469 () Bool)

(assert (=> b!1460728 m!1348469))

(declare-fun m!1348471 () Bool)

(assert (=> b!1460721 m!1348471))

(assert (=> b!1460721 m!1348471))

(declare-fun m!1348473 () Bool)

(assert (=> b!1460721 m!1348473))

(assert (=> b!1460721 m!1348439))

(declare-fun m!1348475 () Bool)

(assert (=> b!1460721 m!1348475))

(declare-fun m!1348477 () Bool)

(assert (=> b!1460731 m!1348477))

(declare-fun m!1348479 () Bool)

(assert (=> b!1460731 m!1348479))

(declare-fun m!1348481 () Bool)

(assert (=> b!1460732 m!1348481))

(assert (=> b!1460732 m!1348447))

(declare-fun m!1348483 () Bool)

(assert (=> b!1460722 m!1348483))

(push 1)

