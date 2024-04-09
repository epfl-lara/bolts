; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125170 () Bool)

(assert start!125170)

(declare-fun b!1457782 () Bool)

(declare-fun e!820072 () Bool)

(declare-fun e!820067 () Bool)

(assert (=> b!1457782 (= e!820072 e!820067)))

(declare-fun res!988121 () Bool)

(assert (=> b!1457782 (=> (not res!988121) (not e!820067))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98535 0))(
  ( (array!98536 (arr!47551 (Array (_ BitVec 32) (_ BitVec 64))) (size!48102 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98535)

(assert (=> b!1457782 (= res!988121 (= (select (store (arr!47551 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!638776 () array!98535)

(assert (=> b!1457782 (= lt!638776 (array!98536 (store (arr!47551 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48102 a!2862)))))

(declare-fun b!1457783 () Bool)

(declare-fun res!988130 () Bool)

(declare-fun e!820073 () Bool)

(assert (=> b!1457783 (=> (not res!988130) (not e!820073))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1457783 (= res!988130 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1457784 () Bool)

(declare-fun res!988114 () Bool)

(assert (=> b!1457784 (=> (not res!988114) (not e!820072))))

(declare-datatypes ((List!34232 0))(
  ( (Nil!34229) (Cons!34228 (h!35578 (_ BitVec 64)) (t!48933 List!34232)) )
))
(declare-fun arrayNoDuplicates!0 (array!98535 (_ BitVec 32) List!34232) Bool)

(assert (=> b!1457784 (= res!988114 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34229))))

(declare-datatypes ((SeekEntryResult!11826 0))(
  ( (MissingZero!11826 (index!49695 (_ BitVec 32))) (Found!11826 (index!49696 (_ BitVec 32))) (Intermediate!11826 (undefined!12638 Bool) (index!49697 (_ BitVec 32)) (x!131318 (_ BitVec 32))) (Undefined!11826) (MissingVacant!11826 (index!49698 (_ BitVec 32))) )
))
(declare-fun lt!638777 () SeekEntryResult!11826)

(declare-fun lt!638773 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun b!1457785 () Bool)

(declare-fun e!820064 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98535 (_ BitVec 32)) SeekEntryResult!11826)

(assert (=> b!1457785 (= e!820064 (= lt!638777 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638773 lt!638776 mask!2687)))))

(declare-fun e!820068 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1457786 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1457786 (= e!820068 (and (or (= (select (arr!47551 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47551 a!2862) intermediateBeforeIndex!19) (select (arr!47551 a!2862) j!93))) (let ((bdg!53377 (select (store (arr!47551 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47551 a!2862) index!646) bdg!53377) (= (select (arr!47551 a!2862) index!646) (select (arr!47551 a!2862) j!93))) (= (select (arr!47551 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53377 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1457787 () Bool)

(declare-fun res!988126 () Bool)

(assert (=> b!1457787 (=> (not res!988126) (not e!820072))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1457787 (= res!988126 (validKeyInArray!0 (select (arr!47551 a!2862) i!1006)))))

(declare-fun b!1457788 () Bool)

(declare-fun res!988122 () Bool)

(assert (=> b!1457788 (=> (not res!988122) (not e!820073))))

(assert (=> b!1457788 (= res!988122 e!820064)))

(declare-fun c!134347 () Bool)

(assert (=> b!1457788 (= c!134347 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1457790 () Bool)

(declare-fun e!820065 () Bool)

(assert (=> b!1457790 (= e!820073 (not e!820065))))

(declare-fun res!988120 () Bool)

(assert (=> b!1457790 (=> res!988120 e!820065)))

(assert (=> b!1457790 (= res!988120 (or (and (= (select (arr!47551 a!2862) index!646) (select (store (arr!47551 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47551 a!2862) index!646) (select (arr!47551 a!2862) j!93))) (= (select (arr!47551 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1457790 e!820068))

(declare-fun res!988115 () Bool)

(assert (=> b!1457790 (=> (not res!988115) (not e!820068))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98535 (_ BitVec 32)) Bool)

(assert (=> b!1457790 (= res!988115 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49096 0))(
  ( (Unit!49097) )
))
(declare-fun lt!638779 () Unit!49096)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98535 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49096)

(assert (=> b!1457790 (= lt!638779 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1457791 () Bool)

(declare-fun e!820066 () Bool)

(assert (=> b!1457791 (= e!820066 true)))

(declare-fun lt!638772 () Bool)

(declare-fun e!820069 () Bool)

(assert (=> b!1457791 (= lt!638772 e!820069)))

(declare-fun c!134348 () Bool)

(assert (=> b!1457791 (= c!134348 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1457792 () Bool)

(declare-fun res!988128 () Bool)

(assert (=> b!1457792 (=> (not res!988128) (not e!820072))))

(assert (=> b!1457792 (= res!988128 (validKeyInArray!0 (select (arr!47551 a!2862) j!93)))))

(declare-fun b!1457793 () Bool)

(assert (=> b!1457793 (= e!820065 e!820066)))

(declare-fun res!988117 () Bool)

(assert (=> b!1457793 (=> res!988117 e!820066)))

(declare-fun lt!638775 () (_ BitVec 32))

(assert (=> b!1457793 (= res!988117 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638775 #b00000000000000000000000000000000) (bvsge lt!638775 (size!48102 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457793 (= lt!638775 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!638778 () SeekEntryResult!11826)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98535 (_ BitVec 32)) SeekEntryResult!11826)

(assert (=> b!1457793 (= lt!638778 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638773 lt!638776 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98535 (_ BitVec 32)) SeekEntryResult!11826)

(assert (=> b!1457793 (= lt!638778 (seekEntryOrOpen!0 lt!638773 lt!638776 mask!2687))))

(declare-fun b!1457794 () Bool)

(assert (=> b!1457794 (= e!820069 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638775 intermediateAfterIndex!19 lt!638773 lt!638776 mask!2687) lt!638778)))))

(declare-fun b!1457795 () Bool)

(declare-fun e!820071 () Bool)

(assert (=> b!1457795 (= e!820067 e!820071)))

(declare-fun res!988131 () Bool)

(assert (=> b!1457795 (=> (not res!988131) (not e!820071))))

(declare-fun lt!638774 () SeekEntryResult!11826)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457795 (= res!988131 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47551 a!2862) j!93) mask!2687) (select (arr!47551 a!2862) j!93) a!2862 mask!2687) lt!638774))))

(assert (=> b!1457795 (= lt!638774 (Intermediate!11826 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1457796 () Bool)

(declare-fun res!988119 () Bool)

(assert (=> b!1457796 (=> (not res!988119) (not e!820071))))

(assert (=> b!1457796 (= res!988119 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47551 a!2862) j!93) a!2862 mask!2687) lt!638774))))

(declare-fun b!1457797 () Bool)

(declare-fun res!988124 () Bool)

(assert (=> b!1457797 (=> (not res!988124) (not e!820072))))

(assert (=> b!1457797 (= res!988124 (and (= (size!48102 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48102 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48102 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!988118 () Bool)

(assert (=> start!125170 (=> (not res!988118) (not e!820072))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125170 (= res!988118 (validMask!0 mask!2687))))

(assert (=> start!125170 e!820072))

(assert (=> start!125170 true))

(declare-fun array_inv!36496 (array!98535) Bool)

(assert (=> start!125170 (array_inv!36496 a!2862)))

(declare-fun b!1457789 () Bool)

(assert (=> b!1457789 (= e!820064 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638773 lt!638776 mask!2687) (seekEntryOrOpen!0 lt!638773 lt!638776 mask!2687)))))

(declare-fun b!1457798 () Bool)

(declare-fun res!988116 () Bool)

(assert (=> b!1457798 (=> (not res!988116) (not e!820072))))

(assert (=> b!1457798 (= res!988116 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1457799 () Bool)

(assert (=> b!1457799 (= e!820071 e!820073)))

(declare-fun res!988123 () Bool)

(assert (=> b!1457799 (=> (not res!988123) (not e!820073))))

(assert (=> b!1457799 (= res!988123 (= lt!638777 (Intermediate!11826 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1457799 (= lt!638777 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638773 mask!2687) lt!638773 lt!638776 mask!2687))))

(assert (=> b!1457799 (= lt!638773 (select (store (arr!47551 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1457800 () Bool)

(declare-fun res!988129 () Bool)

(assert (=> b!1457800 (=> (not res!988129) (not e!820072))))

(assert (=> b!1457800 (= res!988129 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48102 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48102 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48102 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1457801 () Bool)

(assert (=> b!1457801 (= e!820069 (not (= lt!638777 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638775 lt!638773 lt!638776 mask!2687))))))

(declare-fun b!1457802 () Bool)

(declare-fun res!988125 () Bool)

(assert (=> b!1457802 (=> res!988125 e!820066)))

(assert (=> b!1457802 (= res!988125 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638775 (select (arr!47551 a!2862) j!93) a!2862 mask!2687) lt!638774)))))

(declare-fun b!1457803 () Bool)

(declare-fun res!988127 () Bool)

(assert (=> b!1457803 (=> (not res!988127) (not e!820068))))

(assert (=> b!1457803 (= res!988127 (= (seekEntryOrOpen!0 (select (arr!47551 a!2862) j!93) a!2862 mask!2687) (Found!11826 j!93)))))

(assert (= (and start!125170 res!988118) b!1457797))

(assert (= (and b!1457797 res!988124) b!1457787))

(assert (= (and b!1457787 res!988126) b!1457792))

(assert (= (and b!1457792 res!988128) b!1457798))

(assert (= (and b!1457798 res!988116) b!1457784))

(assert (= (and b!1457784 res!988114) b!1457800))

(assert (= (and b!1457800 res!988129) b!1457782))

(assert (= (and b!1457782 res!988121) b!1457795))

(assert (= (and b!1457795 res!988131) b!1457796))

(assert (= (and b!1457796 res!988119) b!1457799))

(assert (= (and b!1457799 res!988123) b!1457788))

(assert (= (and b!1457788 c!134347) b!1457785))

(assert (= (and b!1457788 (not c!134347)) b!1457789))

(assert (= (and b!1457788 res!988122) b!1457783))

(assert (= (and b!1457783 res!988130) b!1457790))

(assert (= (and b!1457790 res!988115) b!1457803))

(assert (= (and b!1457803 res!988127) b!1457786))

(assert (= (and b!1457790 (not res!988120)) b!1457793))

(assert (= (and b!1457793 (not res!988117)) b!1457802))

(assert (= (and b!1457802 (not res!988125)) b!1457791))

(assert (= (and b!1457791 c!134348) b!1457801))

(assert (= (and b!1457791 (not c!134348)) b!1457794))

(declare-fun m!1345767 () Bool)

(assert (=> b!1457790 m!1345767))

(declare-fun m!1345769 () Bool)

(assert (=> b!1457790 m!1345769))

(declare-fun m!1345771 () Bool)

(assert (=> b!1457790 m!1345771))

(declare-fun m!1345773 () Bool)

(assert (=> b!1457790 m!1345773))

(declare-fun m!1345775 () Bool)

(assert (=> b!1457790 m!1345775))

(declare-fun m!1345777 () Bool)

(assert (=> b!1457790 m!1345777))

(assert (=> b!1457795 m!1345777))

(assert (=> b!1457795 m!1345777))

(declare-fun m!1345779 () Bool)

(assert (=> b!1457795 m!1345779))

(assert (=> b!1457795 m!1345779))

(assert (=> b!1457795 m!1345777))

(declare-fun m!1345781 () Bool)

(assert (=> b!1457795 m!1345781))

(declare-fun m!1345783 () Bool)

(assert (=> b!1457799 m!1345783))

(assert (=> b!1457799 m!1345783))

(declare-fun m!1345785 () Bool)

(assert (=> b!1457799 m!1345785))

(assert (=> b!1457799 m!1345769))

(declare-fun m!1345787 () Bool)

(assert (=> b!1457799 m!1345787))

(declare-fun m!1345789 () Bool)

(assert (=> b!1457789 m!1345789))

(declare-fun m!1345791 () Bool)

(assert (=> b!1457789 m!1345791))

(assert (=> b!1457782 m!1345769))

(declare-fun m!1345793 () Bool)

(assert (=> b!1457782 m!1345793))

(assert (=> b!1457796 m!1345777))

(assert (=> b!1457796 m!1345777))

(declare-fun m!1345795 () Bool)

(assert (=> b!1457796 m!1345795))

(declare-fun m!1345797 () Bool)

(assert (=> b!1457798 m!1345797))

(declare-fun m!1345799 () Bool)

(assert (=> b!1457793 m!1345799))

(assert (=> b!1457793 m!1345789))

(assert (=> b!1457793 m!1345791))

(assert (=> b!1457792 m!1345777))

(assert (=> b!1457792 m!1345777))

(declare-fun m!1345801 () Bool)

(assert (=> b!1457792 m!1345801))

(assert (=> b!1457786 m!1345769))

(declare-fun m!1345803 () Bool)

(assert (=> b!1457786 m!1345803))

(assert (=> b!1457786 m!1345771))

(assert (=> b!1457786 m!1345773))

(assert (=> b!1457786 m!1345777))

(declare-fun m!1345805 () Bool)

(assert (=> b!1457785 m!1345805))

(declare-fun m!1345807 () Bool)

(assert (=> b!1457787 m!1345807))

(assert (=> b!1457787 m!1345807))

(declare-fun m!1345809 () Bool)

(assert (=> b!1457787 m!1345809))

(declare-fun m!1345811 () Bool)

(assert (=> start!125170 m!1345811))

(declare-fun m!1345813 () Bool)

(assert (=> start!125170 m!1345813))

(assert (=> b!1457802 m!1345777))

(assert (=> b!1457802 m!1345777))

(declare-fun m!1345815 () Bool)

(assert (=> b!1457802 m!1345815))

(declare-fun m!1345817 () Bool)

(assert (=> b!1457801 m!1345817))

(declare-fun m!1345819 () Bool)

(assert (=> b!1457784 m!1345819))

(declare-fun m!1345821 () Bool)

(assert (=> b!1457794 m!1345821))

(assert (=> b!1457803 m!1345777))

(assert (=> b!1457803 m!1345777))

(declare-fun m!1345823 () Bool)

(assert (=> b!1457803 m!1345823))

(push 1)

