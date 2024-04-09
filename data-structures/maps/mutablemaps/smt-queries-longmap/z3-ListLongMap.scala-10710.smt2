; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125442 () Bool)

(assert start!125442)

(declare-fun b!1466587 () Bool)

(declare-fun e!823932 () Bool)

(declare-fun e!823940 () Bool)

(assert (=> b!1466587 (= e!823932 e!823940)))

(declare-fun res!995362 () Bool)

(assert (=> b!1466587 (=> (not res!995362) (not e!823940))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98807 0))(
  ( (array!98808 (arr!47687 (Array (_ BitVec 32) (_ BitVec 64))) (size!48238 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98807)

(assert (=> b!1466587 (= res!995362 (= (select (store (arr!47687 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!641782 () array!98807)

(assert (=> b!1466587 (= lt!641782 (array!98808 (store (arr!47687 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48238 a!2862)))))

(declare-fun b!1466588 () Bool)

(declare-fun res!995368 () Bool)

(assert (=> b!1466588 (=> (not res!995368) (not e!823932))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1466588 (= res!995368 (validKeyInArray!0 (select (arr!47687 a!2862) i!1006)))))

(declare-fun b!1466589 () Bool)

(declare-fun e!823933 () Bool)

(declare-fun e!823939 () Bool)

(assert (=> b!1466589 (= e!823933 e!823939)))

(declare-fun res!995371 () Bool)

(assert (=> b!1466589 (=> res!995371 e!823939)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!641778 () (_ BitVec 32))

(assert (=> b!1466589 (= res!995371 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641778 #b00000000000000000000000000000000) (bvsge lt!641778 (size!48238 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466589 (= lt!641778 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1466590 () Bool)

(declare-fun res!995361 () Bool)

(declare-fun e!823936 () Bool)

(assert (=> b!1466590 (=> (not res!995361) (not e!823936))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1466590 (= res!995361 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1466591 () Bool)

(declare-fun res!995369 () Bool)

(assert (=> b!1466591 (=> (not res!995369) (not e!823932))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1466591 (= res!995369 (validKeyInArray!0 (select (arr!47687 a!2862) j!93)))))

(declare-fun b!1466592 () Bool)

(declare-fun res!995373 () Bool)

(assert (=> b!1466592 (=> res!995373 e!823939)))

(assert (=> b!1466592 (= res!995373 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1466593 () Bool)

(declare-datatypes ((SeekEntryResult!11962 0))(
  ( (MissingZero!11962 (index!50239 (_ BitVec 32))) (Found!11962 (index!50240 (_ BitVec 32))) (Intermediate!11962 (undefined!12774 Bool) (index!50241 (_ BitVec 32)) (x!131814 (_ BitVec 32))) (Undefined!11962) (MissingVacant!11962 (index!50242 (_ BitVec 32))) )
))
(declare-fun lt!641779 () SeekEntryResult!11962)

(declare-fun lt!641775 () (_ BitVec 64))

(declare-fun e!823938 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98807 (_ BitVec 32)) SeekEntryResult!11962)

(assert (=> b!1466593 (= e!823938 (= lt!641779 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641775 lt!641782 mask!2687)))))

(declare-fun b!1466594 () Bool)

(declare-fun res!995370 () Bool)

(assert (=> b!1466594 (=> res!995370 e!823939)))

(declare-fun lt!641780 () SeekEntryResult!11962)

(assert (=> b!1466594 (= res!995370 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641778 (select (arr!47687 a!2862) j!93) a!2862 mask!2687) lt!641780)))))

(declare-fun res!995375 () Bool)

(assert (=> start!125442 (=> (not res!995375) (not e!823932))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125442 (= res!995375 (validMask!0 mask!2687))))

(assert (=> start!125442 e!823932))

(assert (=> start!125442 true))

(declare-fun array_inv!36632 (array!98807) Bool)

(assert (=> start!125442 (array_inv!36632 a!2862)))

(declare-fun b!1466595 () Bool)

(declare-fun res!995359 () Bool)

(declare-fun e!823934 () Bool)

(assert (=> b!1466595 (=> (not res!995359) (not e!823934))))

(assert (=> b!1466595 (= res!995359 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47687 a!2862) j!93) a!2862 mask!2687) lt!641780))))

(declare-fun b!1466596 () Bool)

(assert (=> b!1466596 (= e!823936 (not e!823933))))

(declare-fun res!995367 () Bool)

(assert (=> b!1466596 (=> res!995367 e!823933)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1466596 (= res!995367 (or (and (= (select (arr!47687 a!2862) index!646) (select (store (arr!47687 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47687 a!2862) index!646) (select (arr!47687 a!2862) j!93))) (= (select (arr!47687 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun lt!641777 () SeekEntryResult!11962)

(assert (=> b!1466596 (and (= lt!641777 (Found!11962 j!93)) (or (= (select (arr!47687 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47687 a!2862) intermediateBeforeIndex!19) (select (arr!47687 a!2862) j!93))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98807 (_ BitVec 32)) SeekEntryResult!11962)

(assert (=> b!1466596 (= lt!641777 (seekEntryOrOpen!0 (select (arr!47687 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98807 (_ BitVec 32)) Bool)

(assert (=> b!1466596 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49368 0))(
  ( (Unit!49369) )
))
(declare-fun lt!641776 () Unit!49368)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98807 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49368)

(assert (=> b!1466596 (= lt!641776 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1466597 () Bool)

(assert (=> b!1466597 (= e!823934 e!823936)))

(declare-fun res!995366 () Bool)

(assert (=> b!1466597 (=> (not res!995366) (not e!823936))))

(assert (=> b!1466597 (= res!995366 (= lt!641779 (Intermediate!11962 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466597 (= lt!641779 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641775 mask!2687) lt!641775 lt!641782 mask!2687))))

(assert (=> b!1466597 (= lt!641775 (select (store (arr!47687 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1466598 () Bool)

(declare-fun e!823937 () Bool)

(assert (=> b!1466598 (= e!823937 (not (= lt!641779 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641778 lt!641775 lt!641782 mask!2687))))))

(declare-fun b!1466599 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98807 (_ BitVec 32)) SeekEntryResult!11962)

(assert (=> b!1466599 (= e!823938 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641775 lt!641782 mask!2687) (seekEntryOrOpen!0 lt!641775 lt!641782 mask!2687)))))

(declare-fun b!1466600 () Bool)

(declare-fun res!995364 () Bool)

(assert (=> b!1466600 (=> (not res!995364) (not e!823932))))

(assert (=> b!1466600 (= res!995364 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48238 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48238 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48238 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1466601 () Bool)

(declare-fun res!995360 () Bool)

(assert (=> b!1466601 (=> (not res!995360) (not e!823932))))

(assert (=> b!1466601 (= res!995360 (and (= (size!48238 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48238 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48238 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1466602 () Bool)

(declare-fun res!995376 () Bool)

(assert (=> b!1466602 (=> (not res!995376) (not e!823936))))

(assert (=> b!1466602 (= res!995376 e!823938)))

(declare-fun c!135128 () Bool)

(assert (=> b!1466602 (= c!135128 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1466603 () Bool)

(assert (=> b!1466603 (= e!823937 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641778 intermediateAfterIndex!19 lt!641775 lt!641782 mask!2687) (seekEntryOrOpen!0 lt!641775 lt!641782 mask!2687))))))

(declare-fun b!1466604 () Bool)

(declare-fun res!995365 () Bool)

(assert (=> b!1466604 (=> (not res!995365) (not e!823932))))

(declare-datatypes ((List!34368 0))(
  ( (Nil!34365) (Cons!34364 (h!35714 (_ BitVec 64)) (t!49069 List!34368)) )
))
(declare-fun arrayNoDuplicates!0 (array!98807 (_ BitVec 32) List!34368) Bool)

(assert (=> b!1466604 (= res!995365 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34365))))

(declare-fun b!1466605 () Bool)

(declare-fun res!995363 () Bool)

(assert (=> b!1466605 (=> res!995363 e!823939)))

(assert (=> b!1466605 (= res!995363 e!823937)))

(declare-fun c!135127 () Bool)

(assert (=> b!1466605 (= c!135127 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1466606 () Bool)

(assert (=> b!1466606 (= e!823939 true)))

(assert (=> b!1466606 (= lt!641777 (seekEntryOrOpen!0 lt!641775 lt!641782 mask!2687))))

(declare-fun lt!641781 () Unit!49368)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98807 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49368)

(assert (=> b!1466606 (= lt!641781 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!641778 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1466607 () Bool)

(declare-fun res!995374 () Bool)

(assert (=> b!1466607 (=> (not res!995374) (not e!823932))))

(assert (=> b!1466607 (= res!995374 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1466608 () Bool)

(assert (=> b!1466608 (= e!823940 e!823934)))

(declare-fun res!995372 () Bool)

(assert (=> b!1466608 (=> (not res!995372) (not e!823934))))

(assert (=> b!1466608 (= res!995372 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47687 a!2862) j!93) mask!2687) (select (arr!47687 a!2862) j!93) a!2862 mask!2687) lt!641780))))

(assert (=> b!1466608 (= lt!641780 (Intermediate!11962 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!125442 res!995375) b!1466601))

(assert (= (and b!1466601 res!995360) b!1466588))

(assert (= (and b!1466588 res!995368) b!1466591))

(assert (= (and b!1466591 res!995369) b!1466607))

(assert (= (and b!1466607 res!995374) b!1466604))

(assert (= (and b!1466604 res!995365) b!1466600))

(assert (= (and b!1466600 res!995364) b!1466587))

(assert (= (and b!1466587 res!995362) b!1466608))

(assert (= (and b!1466608 res!995372) b!1466595))

(assert (= (and b!1466595 res!995359) b!1466597))

(assert (= (and b!1466597 res!995366) b!1466602))

(assert (= (and b!1466602 c!135128) b!1466593))

(assert (= (and b!1466602 (not c!135128)) b!1466599))

(assert (= (and b!1466602 res!995376) b!1466590))

(assert (= (and b!1466590 res!995361) b!1466596))

(assert (= (and b!1466596 (not res!995367)) b!1466589))

(assert (= (and b!1466589 (not res!995371)) b!1466594))

(assert (= (and b!1466594 (not res!995370)) b!1466605))

(assert (= (and b!1466605 c!135127) b!1466598))

(assert (= (and b!1466605 (not c!135127)) b!1466603))

(assert (= (and b!1466605 (not res!995363)) b!1466592))

(assert (= (and b!1466592 (not res!995373)) b!1466606))

(declare-fun m!1353615 () Bool)

(assert (=> b!1466606 m!1353615))

(declare-fun m!1353617 () Bool)

(assert (=> b!1466606 m!1353617))

(declare-fun m!1353619 () Bool)

(assert (=> b!1466594 m!1353619))

(assert (=> b!1466594 m!1353619))

(declare-fun m!1353621 () Bool)

(assert (=> b!1466594 m!1353621))

(assert (=> b!1466595 m!1353619))

(assert (=> b!1466595 m!1353619))

(declare-fun m!1353623 () Bool)

(assert (=> b!1466595 m!1353623))

(declare-fun m!1353625 () Bool)

(assert (=> b!1466599 m!1353625))

(assert (=> b!1466599 m!1353615))

(declare-fun m!1353627 () Bool)

(assert (=> b!1466598 m!1353627))

(declare-fun m!1353629 () Bool)

(assert (=> b!1466597 m!1353629))

(assert (=> b!1466597 m!1353629))

(declare-fun m!1353631 () Bool)

(assert (=> b!1466597 m!1353631))

(declare-fun m!1353633 () Bool)

(assert (=> b!1466597 m!1353633))

(declare-fun m!1353635 () Bool)

(assert (=> b!1466597 m!1353635))

(declare-fun m!1353637 () Bool)

(assert (=> b!1466593 m!1353637))

(declare-fun m!1353639 () Bool)

(assert (=> b!1466607 m!1353639))

(declare-fun m!1353641 () Bool)

(assert (=> start!125442 m!1353641))

(declare-fun m!1353643 () Bool)

(assert (=> start!125442 m!1353643))

(declare-fun m!1353645 () Bool)

(assert (=> b!1466603 m!1353645))

(assert (=> b!1466603 m!1353615))

(declare-fun m!1353647 () Bool)

(assert (=> b!1466589 m!1353647))

(assert (=> b!1466608 m!1353619))

(assert (=> b!1466608 m!1353619))

(declare-fun m!1353649 () Bool)

(assert (=> b!1466608 m!1353649))

(assert (=> b!1466608 m!1353649))

(assert (=> b!1466608 m!1353619))

(declare-fun m!1353651 () Bool)

(assert (=> b!1466608 m!1353651))

(declare-fun m!1353653 () Bool)

(assert (=> b!1466596 m!1353653))

(assert (=> b!1466596 m!1353633))

(declare-fun m!1353655 () Bool)

(assert (=> b!1466596 m!1353655))

(declare-fun m!1353657 () Bool)

(assert (=> b!1466596 m!1353657))

(declare-fun m!1353659 () Bool)

(assert (=> b!1466596 m!1353659))

(assert (=> b!1466596 m!1353619))

(declare-fun m!1353661 () Bool)

(assert (=> b!1466596 m!1353661))

(declare-fun m!1353663 () Bool)

(assert (=> b!1466596 m!1353663))

(assert (=> b!1466596 m!1353619))

(assert (=> b!1466591 m!1353619))

(assert (=> b!1466591 m!1353619))

(declare-fun m!1353665 () Bool)

(assert (=> b!1466591 m!1353665))

(assert (=> b!1466587 m!1353633))

(declare-fun m!1353667 () Bool)

(assert (=> b!1466587 m!1353667))

(declare-fun m!1353669 () Bool)

(assert (=> b!1466588 m!1353669))

(assert (=> b!1466588 m!1353669))

(declare-fun m!1353671 () Bool)

(assert (=> b!1466588 m!1353671))

(declare-fun m!1353673 () Bool)

(assert (=> b!1466604 m!1353673))

(check-sat (not b!1466594) (not b!1466598) (not b!1466607) (not b!1466599) (not b!1466596) (not b!1466588) (not b!1466608) (not b!1466606) (not b!1466589) (not b!1466603) (not b!1466604) (not b!1466593) (not b!1466597) (not b!1466595) (not b!1466591) (not start!125442))
(check-sat)
