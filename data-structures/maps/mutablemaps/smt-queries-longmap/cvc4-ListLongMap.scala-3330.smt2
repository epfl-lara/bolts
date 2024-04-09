; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45986 () Bool)

(assert start!45986)

(declare-fun b!508779 () Bool)

(declare-fun res!309775 () Bool)

(declare-fun e!297610 () Bool)

(assert (=> b!508779 (=> (not res!309775) (not e!297610))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32657 0))(
  ( (array!32658 (arr!15704 (Array (_ BitVec 32) (_ BitVec 64))) (size!16068 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32657)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!508779 (= res!309775 (and (= (size!16068 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16068 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16068 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!508780 () Bool)

(declare-fun e!297608 () Bool)

(assert (=> b!508780 (= e!297608 (not true))))

(declare-fun lt!232372 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!508780 (= lt!232372 (toIndex!0 (select (store (arr!15704 a!3235) i!1204 k!2280) j!176) mask!3524))))

(declare-fun e!297609 () Bool)

(assert (=> b!508780 e!297609))

(declare-fun res!309778 () Bool)

(assert (=> b!508780 (=> (not res!309778) (not e!297609))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32657 (_ BitVec 32)) Bool)

(assert (=> b!508780 (= res!309778 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15606 0))(
  ( (Unit!15607) )
))
(declare-fun lt!232371 () Unit!15606)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32657 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15606)

(assert (=> b!508780 (= lt!232371 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!309780 () Bool)

(assert (=> start!45986 (=> (not res!309780) (not e!297610))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45986 (= res!309780 (validMask!0 mask!3524))))

(assert (=> start!45986 e!297610))

(assert (=> start!45986 true))

(declare-fun array_inv!11478 (array!32657) Bool)

(assert (=> start!45986 (array_inv!11478 a!3235)))

(declare-fun b!508781 () Bool)

(declare-datatypes ((SeekEntryResult!4178 0))(
  ( (MissingZero!4178 (index!18900 (_ BitVec 32))) (Found!4178 (index!18901 (_ BitVec 32))) (Intermediate!4178 (undefined!4990 Bool) (index!18902 (_ BitVec 32)) (x!47902 (_ BitVec 32))) (Undefined!4178) (MissingVacant!4178 (index!18903 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32657 (_ BitVec 32)) SeekEntryResult!4178)

(assert (=> b!508781 (= e!297609 (= (seekEntryOrOpen!0 (select (arr!15704 a!3235) j!176) a!3235 mask!3524) (Found!4178 j!176)))))

(declare-fun b!508782 () Bool)

(declare-fun res!309777 () Bool)

(assert (=> b!508782 (=> (not res!309777) (not e!297608))))

(declare-datatypes ((List!9915 0))(
  ( (Nil!9912) (Cons!9911 (h!10788 (_ BitVec 64)) (t!16151 List!9915)) )
))
(declare-fun arrayNoDuplicates!0 (array!32657 (_ BitVec 32) List!9915) Bool)

(assert (=> b!508782 (= res!309777 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9912))))

(declare-fun b!508783 () Bool)

(declare-fun res!309782 () Bool)

(assert (=> b!508783 (=> (not res!309782) (not e!297610))))

(declare-fun arrayContainsKey!0 (array!32657 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!508783 (= res!309782 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!508784 () Bool)

(assert (=> b!508784 (= e!297610 e!297608)))

(declare-fun res!309776 () Bool)

(assert (=> b!508784 (=> (not res!309776) (not e!297608))))

(declare-fun lt!232373 () SeekEntryResult!4178)

(assert (=> b!508784 (= res!309776 (or (= lt!232373 (MissingZero!4178 i!1204)) (= lt!232373 (MissingVacant!4178 i!1204))))))

(assert (=> b!508784 (= lt!232373 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!508785 () Bool)

(declare-fun res!309781 () Bool)

(assert (=> b!508785 (=> (not res!309781) (not e!297608))))

(assert (=> b!508785 (= res!309781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!508786 () Bool)

(declare-fun res!309774 () Bool)

(assert (=> b!508786 (=> (not res!309774) (not e!297610))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508786 (= res!309774 (validKeyInArray!0 (select (arr!15704 a!3235) j!176)))))

(declare-fun b!508787 () Bool)

(declare-fun res!309779 () Bool)

(assert (=> b!508787 (=> (not res!309779) (not e!297610))))

(assert (=> b!508787 (= res!309779 (validKeyInArray!0 k!2280))))

(assert (= (and start!45986 res!309780) b!508779))

(assert (= (and b!508779 res!309775) b!508786))

(assert (= (and b!508786 res!309774) b!508787))

(assert (= (and b!508787 res!309779) b!508783))

(assert (= (and b!508783 res!309782) b!508784))

(assert (= (and b!508784 res!309776) b!508785))

(assert (= (and b!508785 res!309781) b!508782))

(assert (= (and b!508782 res!309777) b!508780))

(assert (= (and b!508780 res!309778) b!508781))

(declare-fun m!489553 () Bool)

(assert (=> b!508782 m!489553))

(declare-fun m!489555 () Bool)

(assert (=> start!45986 m!489555))

(declare-fun m!489557 () Bool)

(assert (=> start!45986 m!489557))

(declare-fun m!489559 () Bool)

(assert (=> b!508784 m!489559))

(declare-fun m!489561 () Bool)

(assert (=> b!508785 m!489561))

(declare-fun m!489563 () Bool)

(assert (=> b!508787 m!489563))

(declare-fun m!489565 () Bool)

(assert (=> b!508786 m!489565))

(assert (=> b!508786 m!489565))

(declare-fun m!489567 () Bool)

(assert (=> b!508786 m!489567))

(assert (=> b!508781 m!489565))

(assert (=> b!508781 m!489565))

(declare-fun m!489569 () Bool)

(assert (=> b!508781 m!489569))

(declare-fun m!489571 () Bool)

(assert (=> b!508783 m!489571))

(declare-fun m!489573 () Bool)

(assert (=> b!508780 m!489573))

(declare-fun m!489575 () Bool)

(assert (=> b!508780 m!489575))

(declare-fun m!489577 () Bool)

(assert (=> b!508780 m!489577))

(declare-fun m!489579 () Bool)

(assert (=> b!508780 m!489579))

(assert (=> b!508780 m!489577))

(declare-fun m!489581 () Bool)

(assert (=> b!508780 m!489581))

(push 1)

