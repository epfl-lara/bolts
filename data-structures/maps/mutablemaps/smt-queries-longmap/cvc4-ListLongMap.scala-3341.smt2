; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46052 () Bool)

(assert start!46052)

(declare-fun b!509670 () Bool)

(declare-fun e!298003 () Bool)

(declare-fun e!298004 () Bool)

(assert (=> b!509670 (= e!298003 e!298004)))

(declare-fun res!310673 () Bool)

(assert (=> b!509670 (=> (not res!310673) (not e!298004))))

(declare-datatypes ((SeekEntryResult!4211 0))(
  ( (MissingZero!4211 (index!19032 (_ BitVec 32))) (Found!4211 (index!19033 (_ BitVec 32))) (Intermediate!4211 (undefined!5023 Bool) (index!19034 (_ BitVec 32)) (x!48023 (_ BitVec 32))) (Undefined!4211) (MissingVacant!4211 (index!19035 (_ BitVec 32))) )
))
(declare-fun lt!232967 () SeekEntryResult!4211)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!509670 (= res!310673 (or (= lt!232967 (MissingZero!4211 i!1204)) (= lt!232967 (MissingVacant!4211 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32723 0))(
  ( (array!32724 (arr!15737 (Array (_ BitVec 32) (_ BitVec 64))) (size!16101 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32723)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32723 (_ BitVec 32)) SeekEntryResult!4211)

(assert (=> b!509670 (= lt!232967 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!509671 () Bool)

(declare-fun res!310672 () Bool)

(assert (=> b!509671 (=> (not res!310672) (not e!298003))))

(declare-fun arrayContainsKey!0 (array!32723 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509671 (= res!310672 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!509672 () Bool)

(assert (=> b!509672 (= e!298004 (not true))))

(declare-fun lt!232962 () (_ BitVec 32))

(declare-fun lt!232964 () SeekEntryResult!4211)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32723 (_ BitVec 32)) SeekEntryResult!4211)

(assert (=> b!509672 (= lt!232964 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232962 (select (store (arr!15737 a!3235) i!1204 k!2280) j!176) (array!32724 (store (arr!15737 a!3235) i!1204 k!2280) (size!16101 a!3235)) mask!3524))))

(declare-fun lt!232963 () SeekEntryResult!4211)

(declare-fun lt!232966 () (_ BitVec 32))

(assert (=> b!509672 (= lt!232963 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232966 (select (arr!15737 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509672 (= lt!232962 (toIndex!0 (select (store (arr!15737 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!509672 (= lt!232966 (toIndex!0 (select (arr!15737 a!3235) j!176) mask!3524))))

(declare-fun e!298005 () Bool)

(assert (=> b!509672 e!298005))

(declare-fun res!310669 () Bool)

(assert (=> b!509672 (=> (not res!310669) (not e!298005))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32723 (_ BitVec 32)) Bool)

(assert (=> b!509672 (= res!310669 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15672 0))(
  ( (Unit!15673) )
))
(declare-fun lt!232965 () Unit!15672)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32723 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15672)

(assert (=> b!509672 (= lt!232965 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!509673 () Bool)

(declare-fun res!310665 () Bool)

(assert (=> b!509673 (=> (not res!310665) (not e!298004))))

(assert (=> b!509673 (= res!310665 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!509674 () Bool)

(assert (=> b!509674 (= e!298005 (= (seekEntryOrOpen!0 (select (arr!15737 a!3235) j!176) a!3235 mask!3524) (Found!4211 j!176)))))

(declare-fun b!509675 () Bool)

(declare-fun res!310667 () Bool)

(assert (=> b!509675 (=> (not res!310667) (not e!298003))))

(assert (=> b!509675 (= res!310667 (and (= (size!16101 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16101 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16101 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509676 () Bool)

(declare-fun res!310666 () Bool)

(assert (=> b!509676 (=> (not res!310666) (not e!298004))))

(declare-datatypes ((List!9948 0))(
  ( (Nil!9945) (Cons!9944 (h!10821 (_ BitVec 64)) (t!16184 List!9948)) )
))
(declare-fun arrayNoDuplicates!0 (array!32723 (_ BitVec 32) List!9948) Bool)

(assert (=> b!509676 (= res!310666 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9945))))

(declare-fun b!509677 () Bool)

(declare-fun res!310668 () Bool)

(assert (=> b!509677 (=> (not res!310668) (not e!298003))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509677 (= res!310668 (validKeyInArray!0 k!2280))))

(declare-fun res!310670 () Bool)

(assert (=> start!46052 (=> (not res!310670) (not e!298003))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46052 (= res!310670 (validMask!0 mask!3524))))

(assert (=> start!46052 e!298003))

(assert (=> start!46052 true))

(declare-fun array_inv!11511 (array!32723) Bool)

(assert (=> start!46052 (array_inv!11511 a!3235)))

(declare-fun b!509678 () Bool)

(declare-fun res!310671 () Bool)

(assert (=> b!509678 (=> (not res!310671) (not e!298003))))

(assert (=> b!509678 (= res!310671 (validKeyInArray!0 (select (arr!15737 a!3235) j!176)))))

(assert (= (and start!46052 res!310670) b!509675))

(assert (= (and b!509675 res!310667) b!509678))

(assert (= (and b!509678 res!310671) b!509677))

(assert (= (and b!509677 res!310668) b!509671))

(assert (= (and b!509671 res!310672) b!509670))

(assert (= (and b!509670 res!310673) b!509673))

(assert (= (and b!509673 res!310665) b!509676))

(assert (= (and b!509676 res!310666) b!509672))

(assert (= (and b!509672 res!310669) b!509674))

(declare-fun m!490735 () Bool)

(assert (=> b!509678 m!490735))

(assert (=> b!509678 m!490735))

(declare-fun m!490737 () Bool)

(assert (=> b!509678 m!490737))

(declare-fun m!490739 () Bool)

(assert (=> b!509670 m!490739))

(assert (=> b!509674 m!490735))

(assert (=> b!509674 m!490735))

(declare-fun m!490741 () Bool)

(assert (=> b!509674 m!490741))

(declare-fun m!490743 () Bool)

(assert (=> b!509676 m!490743))

(declare-fun m!490745 () Bool)

(assert (=> b!509671 m!490745))

(declare-fun m!490747 () Bool)

(assert (=> start!46052 m!490747))

(declare-fun m!490749 () Bool)

(assert (=> start!46052 m!490749))

(declare-fun m!490751 () Bool)

(assert (=> b!509677 m!490751))

(declare-fun m!490753 () Bool)

(assert (=> b!509673 m!490753))

(declare-fun m!490755 () Bool)

(assert (=> b!509672 m!490755))

(declare-fun m!490757 () Bool)

(assert (=> b!509672 m!490757))

(declare-fun m!490759 () Bool)

(assert (=> b!509672 m!490759))

(assert (=> b!509672 m!490735))

(declare-fun m!490761 () Bool)

(assert (=> b!509672 m!490761))

(assert (=> b!509672 m!490735))

(declare-fun m!490763 () Bool)

(assert (=> b!509672 m!490763))

(assert (=> b!509672 m!490735))

(declare-fun m!490765 () Bool)

(assert (=> b!509672 m!490765))

(assert (=> b!509672 m!490759))

(declare-fun m!490767 () Bool)

(assert (=> b!509672 m!490767))

(assert (=> b!509672 m!490759))

(declare-fun m!490769 () Bool)

(assert (=> b!509672 m!490769))

(push 1)

