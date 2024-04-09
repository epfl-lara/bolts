; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51350 () Bool)

(assert start!51350)

(declare-fun b!559971 () Bool)

(declare-fun e!322631 () Bool)

(declare-fun e!322635 () Bool)

(assert (=> b!559971 (= e!322631 e!322635)))

(declare-fun res!351273 () Bool)

(assert (=> b!559971 (=> res!351273 e!322635)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!254594 () (_ BitVec 64))

(declare-datatypes ((array!35169 0))(
  ( (array!35170 (arr!16881 (Array (_ BitVec 32) (_ BitVec 64))) (size!17245 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35169)

(assert (=> b!559971 (= res!351273 (or (= lt!254594 (select (arr!16881 a!3118) j!142)) (= lt!254594 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5337 0))(
  ( (MissingZero!5337 (index!23575 (_ BitVec 32))) (Found!5337 (index!23576 (_ BitVec 32))) (Intermediate!5337 (undefined!6149 Bool) (index!23577 (_ BitVec 32)) (x!52523 (_ BitVec 32))) (Undefined!5337) (MissingVacant!5337 (index!23578 (_ BitVec 32))) )
))
(declare-fun lt!254589 () SeekEntryResult!5337)

(assert (=> b!559971 (= lt!254594 (select (arr!16881 a!3118) (index!23577 lt!254589)))))

(declare-fun b!559972 () Bool)

(declare-fun res!351281 () Bool)

(declare-fun e!322629 () Bool)

(assert (=> b!559972 (=> (not res!351281) (not e!322629))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!559972 (= res!351281 (validKeyInArray!0 (select (arr!16881 a!3118) j!142)))))

(declare-fun b!559973 () Bool)

(declare-fun res!351278 () Bool)

(declare-fun e!322632 () Bool)

(assert (=> b!559973 (=> (not res!351278) (not e!322632))))

(declare-datatypes ((List!11014 0))(
  ( (Nil!11011) (Cons!11010 (h!12013 (_ BitVec 64)) (t!17250 List!11014)) )
))
(declare-fun arrayNoDuplicates!0 (array!35169 (_ BitVec 32) List!11014) Bool)

(assert (=> b!559973 (= res!351278 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11011))))

(declare-fun b!559974 () Bool)

(declare-fun e!322633 () Bool)

(assert (=> b!559974 (= e!322633 e!322631)))

(declare-fun res!351280 () Bool)

(assert (=> b!559974 (=> res!351280 e!322631)))

(assert (=> b!559974 (= res!351280 (or (undefined!6149 lt!254589) (not (is-Intermediate!5337 lt!254589))))))

(declare-fun b!559975 () Bool)

(declare-fun res!351282 () Bool)

(assert (=> b!559975 (=> (not res!351282) (not e!322629))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35169 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!559975 (= res!351282 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!559976 () Bool)

(declare-fun e!322634 () Bool)

(assert (=> b!559976 (= e!322635 e!322634)))

(declare-fun res!351276 () Bool)

(assert (=> b!559976 (=> (not res!351276) (not e!322634))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!254590 () SeekEntryResult!5337)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35169 (_ BitVec 32)) SeekEntryResult!5337)

(assert (=> b!559976 (= res!351276 (= lt!254590 (seekKeyOrZeroReturnVacant!0 (x!52523 lt!254589) (index!23577 lt!254589) (index!23577 lt!254589) (select (arr!16881 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!559977 () Bool)

(declare-fun e!322630 () Bool)

(assert (=> b!559977 (= e!322632 e!322630)))

(declare-fun res!351279 () Bool)

(assert (=> b!559977 (=> (not res!351279) (not e!322630))))

(declare-fun lt!254591 () array!35169)

(declare-fun lt!254595 () (_ BitVec 32))

(declare-fun lt!254597 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35169 (_ BitVec 32)) SeekEntryResult!5337)

(assert (=> b!559977 (= res!351279 (= lt!254589 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254595 lt!254597 lt!254591 mask!3119)))))

(declare-fun lt!254593 () (_ BitVec 32))

(assert (=> b!559977 (= lt!254589 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254593 (select (arr!16881 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!559977 (= lt!254595 (toIndex!0 lt!254597 mask!3119))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!559977 (= lt!254597 (select (store (arr!16881 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!559977 (= lt!254593 (toIndex!0 (select (arr!16881 a!3118) j!142) mask!3119))))

(assert (=> b!559977 (= lt!254591 (array!35170 (store (arr!16881 a!3118) i!1132 k!1914) (size!17245 a!3118)))))

(declare-fun b!559978 () Bool)

(assert (=> b!559978 (= e!322629 e!322632)))

(declare-fun res!351275 () Bool)

(assert (=> b!559978 (=> (not res!351275) (not e!322632))))

(declare-fun lt!254596 () SeekEntryResult!5337)

(assert (=> b!559978 (= res!351275 (or (= lt!254596 (MissingZero!5337 i!1132)) (= lt!254596 (MissingVacant!5337 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35169 (_ BitVec 32)) SeekEntryResult!5337)

(assert (=> b!559978 (= lt!254596 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!351277 () Bool)

(assert (=> start!51350 (=> (not res!351277) (not e!322629))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51350 (= res!351277 (validMask!0 mask!3119))))

(assert (=> start!51350 e!322629))

(assert (=> start!51350 true))

(declare-fun array_inv!12655 (array!35169) Bool)

(assert (=> start!51350 (array_inv!12655 a!3118)))

(declare-fun b!559970 () Bool)

(assert (=> b!559970 (= e!322634 (= (seekEntryOrOpen!0 lt!254597 lt!254591 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52523 lt!254589) (index!23577 lt!254589) (index!23577 lt!254589) lt!254597 lt!254591 mask!3119)))))

(declare-fun b!559979 () Bool)

(assert (=> b!559979 (= e!322630 (not true))))

(assert (=> b!559979 e!322633))

(declare-fun res!351274 () Bool)

(assert (=> b!559979 (=> (not res!351274) (not e!322633))))

(assert (=> b!559979 (= res!351274 (= lt!254590 (Found!5337 j!142)))))

(assert (=> b!559979 (= lt!254590 (seekEntryOrOpen!0 (select (arr!16881 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35169 (_ BitVec 32)) Bool)

(assert (=> b!559979 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17448 0))(
  ( (Unit!17449) )
))
(declare-fun lt!254592 () Unit!17448)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35169 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17448)

(assert (=> b!559979 (= lt!254592 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!559980 () Bool)

(declare-fun res!351272 () Bool)

(assert (=> b!559980 (=> (not res!351272) (not e!322629))))

(assert (=> b!559980 (= res!351272 (and (= (size!17245 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17245 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17245 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!559981 () Bool)

(declare-fun res!351284 () Bool)

(assert (=> b!559981 (=> (not res!351284) (not e!322629))))

(assert (=> b!559981 (= res!351284 (validKeyInArray!0 k!1914))))

(declare-fun b!559982 () Bool)

(declare-fun res!351283 () Bool)

(assert (=> b!559982 (=> (not res!351283) (not e!322632))))

(assert (=> b!559982 (= res!351283 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!51350 res!351277) b!559980))

(assert (= (and b!559980 res!351272) b!559972))

(assert (= (and b!559972 res!351281) b!559981))

(assert (= (and b!559981 res!351284) b!559975))

(assert (= (and b!559975 res!351282) b!559978))

(assert (= (and b!559978 res!351275) b!559982))

(assert (= (and b!559982 res!351283) b!559973))

(assert (= (and b!559973 res!351278) b!559977))

(assert (= (and b!559977 res!351279) b!559979))

(assert (= (and b!559979 res!351274) b!559974))

(assert (= (and b!559974 (not res!351280)) b!559971))

(assert (= (and b!559971 (not res!351273)) b!559976))

(assert (= (and b!559976 res!351276) b!559970))

(declare-fun m!537739 () Bool)

(assert (=> b!559973 m!537739))

(declare-fun m!537741 () Bool)

(assert (=> b!559970 m!537741))

(declare-fun m!537743 () Bool)

(assert (=> b!559970 m!537743))

(declare-fun m!537745 () Bool)

(assert (=> b!559981 m!537745))

(declare-fun m!537747 () Bool)

(assert (=> b!559978 m!537747))

(declare-fun m!537749 () Bool)

(assert (=> b!559977 m!537749))

(declare-fun m!537751 () Bool)

(assert (=> b!559977 m!537751))

(assert (=> b!559977 m!537749))

(assert (=> b!559977 m!537749))

(declare-fun m!537753 () Bool)

(assert (=> b!559977 m!537753))

(declare-fun m!537755 () Bool)

(assert (=> b!559977 m!537755))

(declare-fun m!537757 () Bool)

(assert (=> b!559977 m!537757))

(declare-fun m!537759 () Bool)

(assert (=> b!559977 m!537759))

(declare-fun m!537761 () Bool)

(assert (=> b!559977 m!537761))

(assert (=> b!559972 m!537749))

(assert (=> b!559972 m!537749))

(declare-fun m!537763 () Bool)

(assert (=> b!559972 m!537763))

(assert (=> b!559979 m!537749))

(assert (=> b!559979 m!537749))

(declare-fun m!537765 () Bool)

(assert (=> b!559979 m!537765))

(declare-fun m!537767 () Bool)

(assert (=> b!559979 m!537767))

(declare-fun m!537769 () Bool)

(assert (=> b!559979 m!537769))

(declare-fun m!537771 () Bool)

(assert (=> b!559982 m!537771))

(assert (=> b!559971 m!537749))

(declare-fun m!537773 () Bool)

(assert (=> b!559971 m!537773))

(declare-fun m!537775 () Bool)

(assert (=> b!559975 m!537775))

(declare-fun m!537777 () Bool)

(assert (=> start!51350 m!537777))

(declare-fun m!537779 () Bool)

(assert (=> start!51350 m!537779))

(assert (=> b!559976 m!537749))

(assert (=> b!559976 m!537749))

(declare-fun m!537781 () Bool)

(assert (=> b!559976 m!537781))

(push 1)

