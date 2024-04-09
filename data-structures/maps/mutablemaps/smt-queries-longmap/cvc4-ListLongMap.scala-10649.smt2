; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125078 () Bool)

(assert start!125078)

(declare-fun b!1454746 () Bool)

(declare-fun e!818693 () Bool)

(declare-fun e!818685 () Bool)

(assert (=> b!1454746 (= e!818693 e!818685)))

(declare-fun res!985635 () Bool)

(assert (=> b!1454746 (=> (not res!985635) (not e!818685))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98443 0))(
  ( (array!98444 (arr!47505 (Array (_ BitVec 32) (_ BitVec 64))) (size!48056 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98443)

(assert (=> b!1454746 (= res!985635 (= (select (store (arr!47505 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!637673 () array!98443)

(assert (=> b!1454746 (= lt!637673 (array!98444 (store (arr!47505 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48056 a!2862)))))

(declare-fun b!1454747 () Bool)

(declare-fun res!985642 () Bool)

(assert (=> b!1454747 (=> (not res!985642) (not e!818693))))

(declare-datatypes ((List!34186 0))(
  ( (Nil!34183) (Cons!34182 (h!35532 (_ BitVec 64)) (t!48887 List!34186)) )
))
(declare-fun arrayNoDuplicates!0 (array!98443 (_ BitVec 32) List!34186) Bool)

(assert (=> b!1454747 (= res!985642 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34183))))

(declare-fun b!1454748 () Bool)

(declare-fun res!985631 () Bool)

(declare-fun e!818692 () Bool)

(assert (=> b!1454748 (=> (not res!985631) (not e!818692))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11780 0))(
  ( (MissingZero!11780 (index!49511 (_ BitVec 32))) (Found!11780 (index!49512 (_ BitVec 32))) (Intermediate!11780 (undefined!12592 Bool) (index!49513 (_ BitVec 32)) (x!131144 (_ BitVec 32))) (Undefined!11780) (MissingVacant!11780 (index!49514 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98443 (_ BitVec 32)) SeekEntryResult!11780)

(assert (=> b!1454748 (= res!985631 (= (seekEntryOrOpen!0 (select (arr!47505 a!2862) j!93) a!2862 mask!2687) (Found!11780 j!93)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1454749 () Bool)

(declare-fun lt!637672 () SeekEntryResult!11780)

(declare-fun e!818684 () Bool)

(declare-fun lt!637668 () (_ BitVec 32))

(declare-fun lt!637671 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98443 (_ BitVec 32)) SeekEntryResult!11780)

(assert (=> b!1454749 (= e!818684 (not (= lt!637672 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637668 lt!637671 lt!637673 mask!2687))))))

(declare-fun b!1454750 () Bool)

(declare-fun res!985636 () Bool)

(declare-fun e!818686 () Bool)

(assert (=> b!1454750 (=> (not res!985636) (not e!818686))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!637674 () SeekEntryResult!11780)

(assert (=> b!1454750 (= res!985636 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47505 a!2862) j!93) a!2862 mask!2687) lt!637674))))

(declare-fun b!1454751 () Bool)

(declare-fun e!818690 () Bool)

(declare-fun e!818689 () Bool)

(assert (=> b!1454751 (= e!818690 e!818689)))

(declare-fun res!985638 () Bool)

(assert (=> b!1454751 (=> res!985638 e!818689)))

(assert (=> b!1454751 (= res!985638 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!637668 #b00000000000000000000000000000000) (bvsge lt!637668 (size!48056 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1454751 (= lt!637668 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!637675 () SeekEntryResult!11780)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98443 (_ BitVec 32)) SeekEntryResult!11780)

(assert (=> b!1454751 (= lt!637675 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637671 lt!637673 mask!2687))))

(assert (=> b!1454751 (= lt!637675 (seekEntryOrOpen!0 lt!637671 lt!637673 mask!2687))))

(declare-fun b!1454752 () Bool)

(declare-fun e!818688 () Bool)

(assert (=> b!1454752 (= e!818686 e!818688)))

(declare-fun res!985647 () Bool)

(assert (=> b!1454752 (=> (not res!985647) (not e!818688))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1454752 (= res!985647 (= lt!637672 (Intermediate!11780 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1454752 (= lt!637672 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637671 mask!2687) lt!637671 lt!637673 mask!2687))))

(assert (=> b!1454752 (= lt!637671 (select (store (arr!47505 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1454753 () Bool)

(declare-fun res!985639 () Bool)

(assert (=> b!1454753 (=> (not res!985639) (not e!818693))))

(assert (=> b!1454753 (= res!985639 (and (= (size!48056 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48056 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48056 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1454754 () Bool)

(declare-fun res!985644 () Bool)

(assert (=> b!1454754 (=> (not res!985644) (not e!818693))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1454754 (= res!985644 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48056 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48056 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48056 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1454755 () Bool)

(assert (=> b!1454755 (= e!818685 e!818686)))

(declare-fun res!985633 () Bool)

(assert (=> b!1454755 (=> (not res!985633) (not e!818686))))

(assert (=> b!1454755 (= res!985633 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47505 a!2862) j!93) mask!2687) (select (arr!47505 a!2862) j!93) a!2862 mask!2687) lt!637674))))

(assert (=> b!1454755 (= lt!637674 (Intermediate!11780 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1454756 () Bool)

(assert (=> b!1454756 (= e!818688 (not e!818690))))

(declare-fun res!985646 () Bool)

(assert (=> b!1454756 (=> res!985646 e!818690)))

(assert (=> b!1454756 (= res!985646 (or (and (= (select (arr!47505 a!2862) index!646) (select (store (arr!47505 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47505 a!2862) index!646) (select (arr!47505 a!2862) j!93))) (= (select (arr!47505 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1454756 e!818692))

(declare-fun res!985645 () Bool)

(assert (=> b!1454756 (=> (not res!985645) (not e!818692))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98443 (_ BitVec 32)) Bool)

(assert (=> b!1454756 (= res!985645 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49004 0))(
  ( (Unit!49005) )
))
(declare-fun lt!637669 () Unit!49004)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98443 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49004)

(assert (=> b!1454756 (= lt!637669 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1454757 () Bool)

(assert (=> b!1454757 (= e!818689 true)))

(declare-fun lt!637670 () Bool)

(assert (=> b!1454757 (= lt!637670 e!818684)))

(declare-fun c!134071 () Bool)

(assert (=> b!1454757 (= c!134071 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun res!985637 () Bool)

(assert (=> start!125078 (=> (not res!985637) (not e!818693))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125078 (= res!985637 (validMask!0 mask!2687))))

(assert (=> start!125078 e!818693))

(assert (=> start!125078 true))

(declare-fun array_inv!36450 (array!98443) Bool)

(assert (=> start!125078 (array_inv!36450 a!2862)))

(declare-fun b!1454758 () Bool)

(declare-fun res!985632 () Bool)

(assert (=> b!1454758 (=> (not res!985632) (not e!818693))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1454758 (= res!985632 (validKeyInArray!0 (select (arr!47505 a!2862) i!1006)))))

(declare-fun b!1454759 () Bool)

(declare-fun res!985630 () Bool)

(assert (=> b!1454759 (=> (not res!985630) (not e!818693))))

(assert (=> b!1454759 (= res!985630 (validKeyInArray!0 (select (arr!47505 a!2862) j!93)))))

(declare-fun b!1454760 () Bool)

(declare-fun res!985643 () Bool)

(assert (=> b!1454760 (=> (not res!985643) (not e!818693))))

(assert (=> b!1454760 (= res!985643 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1454761 () Bool)

(declare-fun res!985640 () Bool)

(assert (=> b!1454761 (=> (not res!985640) (not e!818688))))

(assert (=> b!1454761 (= res!985640 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1454762 () Bool)

(declare-fun res!985634 () Bool)

(assert (=> b!1454762 (=> res!985634 e!818689)))

(assert (=> b!1454762 (= res!985634 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637668 (select (arr!47505 a!2862) j!93) a!2862 mask!2687) lt!637674)))))

(declare-fun b!1454763 () Bool)

(assert (=> b!1454763 (= e!818692 (and (or (= (select (arr!47505 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47505 a!2862) intermediateBeforeIndex!19) (select (arr!47505 a!2862) j!93))) (let ((bdg!53095 (select (store (arr!47505 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47505 a!2862) index!646) bdg!53095) (= (select (arr!47505 a!2862) index!646) (select (arr!47505 a!2862) j!93))) (= (select (arr!47505 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53095 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1454764 () Bool)

(assert (=> b!1454764 (= e!818684 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637668 intermediateAfterIndex!19 lt!637671 lt!637673 mask!2687) lt!637675)))))

(declare-fun b!1454765 () Bool)

(declare-fun e!818687 () Bool)

(assert (=> b!1454765 (= e!818687 (= lt!637672 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637671 lt!637673 mask!2687)))))

(declare-fun b!1454766 () Bool)

(assert (=> b!1454766 (= e!818687 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637671 lt!637673 mask!2687) (seekEntryOrOpen!0 lt!637671 lt!637673 mask!2687)))))

(declare-fun b!1454767 () Bool)

(declare-fun res!985641 () Bool)

(assert (=> b!1454767 (=> (not res!985641) (not e!818688))))

(assert (=> b!1454767 (= res!985641 e!818687)))

(declare-fun c!134072 () Bool)

(assert (=> b!1454767 (= c!134072 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!125078 res!985637) b!1454753))

(assert (= (and b!1454753 res!985639) b!1454758))

(assert (= (and b!1454758 res!985632) b!1454759))

(assert (= (and b!1454759 res!985630) b!1454760))

(assert (= (and b!1454760 res!985643) b!1454747))

(assert (= (and b!1454747 res!985642) b!1454754))

(assert (= (and b!1454754 res!985644) b!1454746))

(assert (= (and b!1454746 res!985635) b!1454755))

(assert (= (and b!1454755 res!985633) b!1454750))

(assert (= (and b!1454750 res!985636) b!1454752))

(assert (= (and b!1454752 res!985647) b!1454767))

(assert (= (and b!1454767 c!134072) b!1454765))

(assert (= (and b!1454767 (not c!134072)) b!1454766))

(assert (= (and b!1454767 res!985641) b!1454761))

(assert (= (and b!1454761 res!985640) b!1454756))

(assert (= (and b!1454756 res!985645) b!1454748))

(assert (= (and b!1454748 res!985631) b!1454763))

(assert (= (and b!1454756 (not res!985646)) b!1454751))

(assert (= (and b!1454751 (not res!985638)) b!1454762))

(assert (= (and b!1454762 (not res!985634)) b!1454757))

(assert (= (and b!1454757 c!134071) b!1454749))

(assert (= (and b!1454757 (not c!134071)) b!1454764))

(declare-fun m!1343099 () Bool)

(assert (=> b!1454764 m!1343099))

(declare-fun m!1343101 () Bool)

(assert (=> b!1454759 m!1343101))

(assert (=> b!1454759 m!1343101))

(declare-fun m!1343103 () Bool)

(assert (=> b!1454759 m!1343103))

(declare-fun m!1343105 () Bool)

(assert (=> b!1454763 m!1343105))

(declare-fun m!1343107 () Bool)

(assert (=> b!1454763 m!1343107))

(declare-fun m!1343109 () Bool)

(assert (=> b!1454763 m!1343109))

(declare-fun m!1343111 () Bool)

(assert (=> b!1454763 m!1343111))

(assert (=> b!1454763 m!1343101))

(declare-fun m!1343113 () Bool)

(assert (=> b!1454766 m!1343113))

(declare-fun m!1343115 () Bool)

(assert (=> b!1454766 m!1343115))

(declare-fun m!1343117 () Bool)

(assert (=> b!1454751 m!1343117))

(assert (=> b!1454751 m!1343113))

(assert (=> b!1454751 m!1343115))

(declare-fun m!1343119 () Bool)

(assert (=> start!125078 m!1343119))

(declare-fun m!1343121 () Bool)

(assert (=> start!125078 m!1343121))

(declare-fun m!1343123 () Bool)

(assert (=> b!1454765 m!1343123))

(declare-fun m!1343125 () Bool)

(assert (=> b!1454756 m!1343125))

(assert (=> b!1454756 m!1343105))

(assert (=> b!1454756 m!1343109))

(assert (=> b!1454756 m!1343111))

(declare-fun m!1343127 () Bool)

(assert (=> b!1454756 m!1343127))

(assert (=> b!1454756 m!1343101))

(assert (=> b!1454750 m!1343101))

(assert (=> b!1454750 m!1343101))

(declare-fun m!1343129 () Bool)

(assert (=> b!1454750 m!1343129))

(declare-fun m!1343131 () Bool)

(assert (=> b!1454760 m!1343131))

(declare-fun m!1343133 () Bool)

(assert (=> b!1454758 m!1343133))

(assert (=> b!1454758 m!1343133))

(declare-fun m!1343135 () Bool)

(assert (=> b!1454758 m!1343135))

(declare-fun m!1343137 () Bool)

(assert (=> b!1454749 m!1343137))

(declare-fun m!1343139 () Bool)

(assert (=> b!1454747 m!1343139))

(assert (=> b!1454746 m!1343105))

(declare-fun m!1343141 () Bool)

(assert (=> b!1454746 m!1343141))

(assert (=> b!1454755 m!1343101))

(assert (=> b!1454755 m!1343101))

(declare-fun m!1343143 () Bool)

(assert (=> b!1454755 m!1343143))

(assert (=> b!1454755 m!1343143))

(assert (=> b!1454755 m!1343101))

(declare-fun m!1343145 () Bool)

(assert (=> b!1454755 m!1343145))

(assert (=> b!1454748 m!1343101))

(assert (=> b!1454748 m!1343101))

(declare-fun m!1343147 () Bool)

(assert (=> b!1454748 m!1343147))

(assert (=> b!1454762 m!1343101))

(assert (=> b!1454762 m!1343101))

(declare-fun m!1343149 () Bool)

(assert (=> b!1454762 m!1343149))

(declare-fun m!1343151 () Bool)

(assert (=> b!1454752 m!1343151))

(assert (=> b!1454752 m!1343151))

(declare-fun m!1343153 () Bool)

(assert (=> b!1454752 m!1343153))

(assert (=> b!1454752 m!1343105))

(declare-fun m!1343155 () Bool)

(assert (=> b!1454752 m!1343155))

(push 1)

