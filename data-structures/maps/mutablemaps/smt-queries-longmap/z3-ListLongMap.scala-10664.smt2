; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125166 () Bool)

(assert start!125166)

(declare-fun b!1457650 () Bool)

(declare-fun res!988008 () Bool)

(declare-fun e!820006 () Bool)

(assert (=> b!1457650 (=> (not res!988008) (not e!820006))))

(declare-datatypes ((array!98531 0))(
  ( (array!98532 (arr!47549 (Array (_ BitVec 32) (_ BitVec 64))) (size!48100 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98531)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1457650 (= res!988008 (validKeyInArray!0 (select (arr!47549 a!2862) j!93)))))

(declare-fun b!1457651 () Bool)

(declare-fun e!820007 () Bool)

(declare-fun e!820004 () Bool)

(assert (=> b!1457651 (= e!820007 (not e!820004))))

(declare-fun res!988014 () Bool)

(assert (=> b!1457651 (=> res!988014 e!820004)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1457651 (= res!988014 (or (and (= (select (arr!47549 a!2862) index!646) (select (store (arr!47549 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47549 a!2862) index!646) (select (arr!47549 a!2862) j!93))) (= (select (arr!47549 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!820008 () Bool)

(assert (=> b!1457651 e!820008))

(declare-fun res!988017 () Bool)

(assert (=> b!1457651 (=> (not res!988017) (not e!820008))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98531 (_ BitVec 32)) Bool)

(assert (=> b!1457651 (= res!988017 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49092 0))(
  ( (Unit!49093) )
))
(declare-fun lt!638725 () Unit!49092)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98531 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49092)

(assert (=> b!1457651 (= lt!638725 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1457652 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1457652 (= e!820008 (and (or (= (select (arr!47549 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47549 a!2862) intermediateBeforeIndex!19) (select (arr!47549 a!2862) j!93))) (let ((bdg!53362 (select (store (arr!47549 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47549 a!2862) index!646) bdg!53362) (= (select (arr!47549 a!2862) index!646) (select (arr!47549 a!2862) j!93))) (= (select (arr!47549 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53362 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1457653 () Bool)

(declare-fun res!988009 () Bool)

(assert (=> b!1457653 (=> (not res!988009) (not e!820006))))

(declare-datatypes ((List!34230 0))(
  ( (Nil!34227) (Cons!34226 (h!35576 (_ BitVec 64)) (t!48931 List!34230)) )
))
(declare-fun arrayNoDuplicates!0 (array!98531 (_ BitVec 32) List!34230) Bool)

(assert (=> b!1457653 (= res!988009 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34227))))

(declare-fun b!1457654 () Bool)

(declare-fun res!988010 () Bool)

(assert (=> b!1457654 (=> (not res!988010) (not e!820006))))

(assert (=> b!1457654 (= res!988010 (validKeyInArray!0 (select (arr!47549 a!2862) i!1006)))))

(declare-fun e!820005 () Bool)

(declare-fun lt!638728 () array!98531)

(declare-fun b!1457655 () Bool)

(declare-datatypes ((SeekEntryResult!11824 0))(
  ( (MissingZero!11824 (index!49687 (_ BitVec 32))) (Found!11824 (index!49688 (_ BitVec 32))) (Intermediate!11824 (undefined!12636 Bool) (index!49689 (_ BitVec 32)) (x!131308 (_ BitVec 32))) (Undefined!11824) (MissingVacant!11824 (index!49690 (_ BitVec 32))) )
))
(declare-fun lt!638726 () SeekEntryResult!11824)

(declare-fun lt!638731 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98531 (_ BitVec 32)) SeekEntryResult!11824)

(assert (=> b!1457655 (= e!820005 (= lt!638726 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638731 lt!638728 mask!2687)))))

(declare-fun b!1457656 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98531 (_ BitVec 32)) SeekEntryResult!11824)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98531 (_ BitVec 32)) SeekEntryResult!11824)

(assert (=> b!1457656 (= e!820005 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638731 lt!638728 mask!2687) (seekEntryOrOpen!0 lt!638731 lt!638728 mask!2687)))))

(declare-fun b!1457657 () Bool)

(declare-fun res!988022 () Bool)

(declare-fun e!820009 () Bool)

(assert (=> b!1457657 (=> res!988022 e!820009)))

(declare-fun lt!638724 () SeekEntryResult!11824)

(declare-fun lt!638727 () (_ BitVec 32))

(assert (=> b!1457657 (= res!988022 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638727 (select (arr!47549 a!2862) j!93) a!2862 mask!2687) lt!638724)))))

(declare-fun res!988021 () Bool)

(assert (=> start!125166 (=> (not res!988021) (not e!820006))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125166 (= res!988021 (validMask!0 mask!2687))))

(assert (=> start!125166 e!820006))

(assert (=> start!125166 true))

(declare-fun array_inv!36494 (array!98531) Bool)

(assert (=> start!125166 (array_inv!36494 a!2862)))

(declare-fun b!1457658 () Bool)

(declare-fun res!988007 () Bool)

(assert (=> b!1457658 (=> (not res!988007) (not e!820006))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1457658 (= res!988007 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48100 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48100 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48100 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1457659 () Bool)

(declare-fun e!820013 () Bool)

(declare-fun lt!638729 () SeekEntryResult!11824)

(assert (=> b!1457659 (= e!820013 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638727 intermediateAfterIndex!19 lt!638731 lt!638728 mask!2687) lt!638729)))))

(declare-fun b!1457660 () Bool)

(declare-fun e!820011 () Bool)

(declare-fun e!820012 () Bool)

(assert (=> b!1457660 (= e!820011 e!820012)))

(declare-fun res!988015 () Bool)

(assert (=> b!1457660 (=> (not res!988015) (not e!820012))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457660 (= res!988015 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47549 a!2862) j!93) mask!2687) (select (arr!47549 a!2862) j!93) a!2862 mask!2687) lt!638724))))

(assert (=> b!1457660 (= lt!638724 (Intermediate!11824 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1457661 () Bool)

(declare-fun res!988016 () Bool)

(assert (=> b!1457661 (=> (not res!988016) (not e!820006))))

(assert (=> b!1457661 (= res!988016 (and (= (size!48100 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48100 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48100 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1457662 () Bool)

(declare-fun res!988013 () Bool)

(assert (=> b!1457662 (=> (not res!988013) (not e!820006))))

(assert (=> b!1457662 (= res!988013 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1457663 () Bool)

(declare-fun res!988023 () Bool)

(assert (=> b!1457663 (=> (not res!988023) (not e!820007))))

(assert (=> b!1457663 (= res!988023 e!820005)))

(declare-fun c!134335 () Bool)

(assert (=> b!1457663 (= c!134335 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1457664 () Bool)

(assert (=> b!1457664 (= e!820009 true)))

(declare-fun lt!638730 () Bool)

(assert (=> b!1457664 (= lt!638730 e!820013)))

(declare-fun c!134336 () Bool)

(assert (=> b!1457664 (= c!134336 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1457665 () Bool)

(assert (=> b!1457665 (= e!820013 (not (= lt!638726 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638727 lt!638731 lt!638728 mask!2687))))))

(declare-fun b!1457666 () Bool)

(declare-fun res!988012 () Bool)

(assert (=> b!1457666 (=> (not res!988012) (not e!820012))))

(assert (=> b!1457666 (= res!988012 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47549 a!2862) j!93) a!2862 mask!2687) lt!638724))))

(declare-fun b!1457667 () Bool)

(declare-fun res!988011 () Bool)

(assert (=> b!1457667 (=> (not res!988011) (not e!820008))))

(assert (=> b!1457667 (= res!988011 (= (seekEntryOrOpen!0 (select (arr!47549 a!2862) j!93) a!2862 mask!2687) (Found!11824 j!93)))))

(declare-fun b!1457668 () Bool)

(assert (=> b!1457668 (= e!820006 e!820011)))

(declare-fun res!988018 () Bool)

(assert (=> b!1457668 (=> (not res!988018) (not e!820011))))

(assert (=> b!1457668 (= res!988018 (= (select (store (arr!47549 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1457668 (= lt!638728 (array!98532 (store (arr!47549 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48100 a!2862)))))

(declare-fun b!1457669 () Bool)

(assert (=> b!1457669 (= e!820012 e!820007)))

(declare-fun res!988006 () Bool)

(assert (=> b!1457669 (=> (not res!988006) (not e!820007))))

(assert (=> b!1457669 (= res!988006 (= lt!638726 (Intermediate!11824 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1457669 (= lt!638726 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638731 mask!2687) lt!638731 lt!638728 mask!2687))))

(assert (=> b!1457669 (= lt!638731 (select (store (arr!47549 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1457670 () Bool)

(declare-fun res!988020 () Bool)

(assert (=> b!1457670 (=> (not res!988020) (not e!820007))))

(assert (=> b!1457670 (= res!988020 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1457671 () Bool)

(assert (=> b!1457671 (= e!820004 e!820009)))

(declare-fun res!988019 () Bool)

(assert (=> b!1457671 (=> res!988019 e!820009)))

(assert (=> b!1457671 (= res!988019 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638727 #b00000000000000000000000000000000) (bvsge lt!638727 (size!48100 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457671 (= lt!638727 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1457671 (= lt!638729 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638731 lt!638728 mask!2687))))

(assert (=> b!1457671 (= lt!638729 (seekEntryOrOpen!0 lt!638731 lt!638728 mask!2687))))

(assert (= (and start!125166 res!988021) b!1457661))

(assert (= (and b!1457661 res!988016) b!1457654))

(assert (= (and b!1457654 res!988010) b!1457650))

(assert (= (and b!1457650 res!988008) b!1457662))

(assert (= (and b!1457662 res!988013) b!1457653))

(assert (= (and b!1457653 res!988009) b!1457658))

(assert (= (and b!1457658 res!988007) b!1457668))

(assert (= (and b!1457668 res!988018) b!1457660))

(assert (= (and b!1457660 res!988015) b!1457666))

(assert (= (and b!1457666 res!988012) b!1457669))

(assert (= (and b!1457669 res!988006) b!1457663))

(assert (= (and b!1457663 c!134335) b!1457655))

(assert (= (and b!1457663 (not c!134335)) b!1457656))

(assert (= (and b!1457663 res!988023) b!1457670))

(assert (= (and b!1457670 res!988020) b!1457651))

(assert (= (and b!1457651 res!988017) b!1457667))

(assert (= (and b!1457667 res!988011) b!1457652))

(assert (= (and b!1457651 (not res!988014)) b!1457671))

(assert (= (and b!1457671 (not res!988019)) b!1457657))

(assert (= (and b!1457657 (not res!988022)) b!1457664))

(assert (= (and b!1457664 c!134336) b!1457665))

(assert (= (and b!1457664 (not c!134336)) b!1457659))

(declare-fun m!1345651 () Bool)

(assert (=> b!1457656 m!1345651))

(declare-fun m!1345653 () Bool)

(assert (=> b!1457656 m!1345653))

(declare-fun m!1345655 () Bool)

(assert (=> b!1457659 m!1345655))

(declare-fun m!1345657 () Bool)

(assert (=> b!1457653 m!1345657))

(declare-fun m!1345659 () Bool)

(assert (=> b!1457668 m!1345659))

(declare-fun m!1345661 () Bool)

(assert (=> b!1457668 m!1345661))

(declare-fun m!1345663 () Bool)

(assert (=> b!1457650 m!1345663))

(assert (=> b!1457650 m!1345663))

(declare-fun m!1345665 () Bool)

(assert (=> b!1457650 m!1345665))

(declare-fun m!1345667 () Bool)

(assert (=> b!1457665 m!1345667))

(declare-fun m!1345669 () Bool)

(assert (=> b!1457651 m!1345669))

(assert (=> b!1457651 m!1345659))

(declare-fun m!1345671 () Bool)

(assert (=> b!1457651 m!1345671))

(declare-fun m!1345673 () Bool)

(assert (=> b!1457651 m!1345673))

(declare-fun m!1345675 () Bool)

(assert (=> b!1457651 m!1345675))

(assert (=> b!1457651 m!1345663))

(declare-fun m!1345677 () Bool)

(assert (=> b!1457654 m!1345677))

(assert (=> b!1457654 m!1345677))

(declare-fun m!1345679 () Bool)

(assert (=> b!1457654 m!1345679))

(declare-fun m!1345681 () Bool)

(assert (=> b!1457671 m!1345681))

(assert (=> b!1457671 m!1345651))

(assert (=> b!1457671 m!1345653))

(declare-fun m!1345683 () Bool)

(assert (=> b!1457662 m!1345683))

(declare-fun m!1345685 () Bool)

(assert (=> start!125166 m!1345685))

(declare-fun m!1345687 () Bool)

(assert (=> start!125166 m!1345687))

(declare-fun m!1345689 () Bool)

(assert (=> b!1457655 m!1345689))

(assert (=> b!1457660 m!1345663))

(assert (=> b!1457660 m!1345663))

(declare-fun m!1345691 () Bool)

(assert (=> b!1457660 m!1345691))

(assert (=> b!1457660 m!1345691))

(assert (=> b!1457660 m!1345663))

(declare-fun m!1345693 () Bool)

(assert (=> b!1457660 m!1345693))

(declare-fun m!1345695 () Bool)

(assert (=> b!1457669 m!1345695))

(assert (=> b!1457669 m!1345695))

(declare-fun m!1345697 () Bool)

(assert (=> b!1457669 m!1345697))

(assert (=> b!1457669 m!1345659))

(declare-fun m!1345699 () Bool)

(assert (=> b!1457669 m!1345699))

(assert (=> b!1457666 m!1345663))

(assert (=> b!1457666 m!1345663))

(declare-fun m!1345701 () Bool)

(assert (=> b!1457666 m!1345701))

(assert (=> b!1457667 m!1345663))

(assert (=> b!1457667 m!1345663))

(declare-fun m!1345703 () Bool)

(assert (=> b!1457667 m!1345703))

(assert (=> b!1457657 m!1345663))

(assert (=> b!1457657 m!1345663))

(declare-fun m!1345705 () Bool)

(assert (=> b!1457657 m!1345705))

(assert (=> b!1457652 m!1345659))

(declare-fun m!1345707 () Bool)

(assert (=> b!1457652 m!1345707))

(assert (=> b!1457652 m!1345671))

(assert (=> b!1457652 m!1345673))

(assert (=> b!1457652 m!1345663))

(check-sat (not b!1457662) (not b!1457665) (not start!125166) (not b!1457659) (not b!1457656) (not b!1457650) (not b!1457667) (not b!1457653) (not b!1457669) (not b!1457651) (not b!1457655) (not b!1457657) (not b!1457654) (not b!1457660) (not b!1457671) (not b!1457666))
(check-sat)
