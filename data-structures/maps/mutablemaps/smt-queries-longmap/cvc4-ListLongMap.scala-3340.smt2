; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46046 () Bool)

(assert start!46046)

(declare-fun b!509589 () Bool)

(declare-fun res!310589 () Bool)

(declare-fun e!297967 () Bool)

(assert (=> b!509589 (=> (not res!310589) (not e!297967))))

(declare-datatypes ((array!32717 0))(
  ( (array!32718 (arr!15734 (Array (_ BitVec 32) (_ BitVec 64))) (size!16098 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32717)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32717 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509589 (= res!310589 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!509590 () Bool)

(declare-fun res!310585 () Bool)

(assert (=> b!509590 (=> (not res!310585) (not e!297967))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509590 (= res!310585 (validKeyInArray!0 (select (arr!15734 a!3235) j!176)))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!297968 () Bool)

(declare-fun b!509591 () Bool)

(declare-datatypes ((SeekEntryResult!4208 0))(
  ( (MissingZero!4208 (index!19020 (_ BitVec 32))) (Found!4208 (index!19021 (_ BitVec 32))) (Intermediate!4208 (undefined!5020 Bool) (index!19022 (_ BitVec 32)) (x!48012 (_ BitVec 32))) (Undefined!4208) (MissingVacant!4208 (index!19023 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32717 (_ BitVec 32)) SeekEntryResult!4208)

(assert (=> b!509591 (= e!297968 (= (seekEntryOrOpen!0 (select (arr!15734 a!3235) j!176) a!3235 mask!3524) (Found!4208 j!176)))))

(declare-fun b!509592 () Bool)

(declare-fun res!310588 () Bool)

(declare-fun e!297970 () Bool)

(assert (=> b!509592 (=> (not res!310588) (not e!297970))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32717 (_ BitVec 32)) Bool)

(assert (=> b!509592 (= res!310588 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!509593 () Bool)

(declare-fun res!310592 () Bool)

(assert (=> b!509593 (=> (not res!310592) (not e!297967))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!509593 (= res!310592 (and (= (size!16098 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16098 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16098 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!310586 () Bool)

(assert (=> start!46046 (=> (not res!310586) (not e!297967))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46046 (= res!310586 (validMask!0 mask!3524))))

(assert (=> start!46046 e!297967))

(assert (=> start!46046 true))

(declare-fun array_inv!11508 (array!32717) Bool)

(assert (=> start!46046 (array_inv!11508 a!3235)))

(declare-fun b!509594 () Bool)

(assert (=> b!509594 (= e!297970 (not true))))

(declare-fun lt!232912 () SeekEntryResult!4208)

(declare-fun lt!232911 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32717 (_ BitVec 32)) SeekEntryResult!4208)

(assert (=> b!509594 (= lt!232912 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232911 (select (store (arr!15734 a!3235) i!1204 k!2280) j!176) (array!32718 (store (arr!15734 a!3235) i!1204 k!2280) (size!16098 a!3235)) mask!3524))))

(declare-fun lt!232909 () SeekEntryResult!4208)

(declare-fun lt!232910 () (_ BitVec 32))

(assert (=> b!509594 (= lt!232909 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232910 (select (arr!15734 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509594 (= lt!232911 (toIndex!0 (select (store (arr!15734 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!509594 (= lt!232910 (toIndex!0 (select (arr!15734 a!3235) j!176) mask!3524))))

(assert (=> b!509594 e!297968))

(declare-fun res!310587 () Bool)

(assert (=> b!509594 (=> (not res!310587) (not e!297968))))

(assert (=> b!509594 (= res!310587 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15666 0))(
  ( (Unit!15667) )
))
(declare-fun lt!232913 () Unit!15666)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32717 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15666)

(assert (=> b!509594 (= lt!232913 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!509595 () Bool)

(assert (=> b!509595 (= e!297967 e!297970)))

(declare-fun res!310590 () Bool)

(assert (=> b!509595 (=> (not res!310590) (not e!297970))))

(declare-fun lt!232908 () SeekEntryResult!4208)

(assert (=> b!509595 (= res!310590 (or (= lt!232908 (MissingZero!4208 i!1204)) (= lt!232908 (MissingVacant!4208 i!1204))))))

(assert (=> b!509595 (= lt!232908 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!509596 () Bool)

(declare-fun res!310584 () Bool)

(assert (=> b!509596 (=> (not res!310584) (not e!297967))))

(assert (=> b!509596 (= res!310584 (validKeyInArray!0 k!2280))))

(declare-fun b!509597 () Bool)

(declare-fun res!310591 () Bool)

(assert (=> b!509597 (=> (not res!310591) (not e!297970))))

(declare-datatypes ((List!9945 0))(
  ( (Nil!9942) (Cons!9941 (h!10818 (_ BitVec 64)) (t!16181 List!9945)) )
))
(declare-fun arrayNoDuplicates!0 (array!32717 (_ BitVec 32) List!9945) Bool)

(assert (=> b!509597 (= res!310591 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9942))))

(assert (= (and start!46046 res!310586) b!509593))

(assert (= (and b!509593 res!310592) b!509590))

(assert (= (and b!509590 res!310585) b!509596))

(assert (= (and b!509596 res!310584) b!509589))

(assert (= (and b!509589 res!310589) b!509595))

(assert (= (and b!509595 res!310590) b!509592))

(assert (= (and b!509592 res!310588) b!509597))

(assert (= (and b!509597 res!310591) b!509594))

(assert (= (and b!509594 res!310587) b!509591))

(declare-fun m!490627 () Bool)

(assert (=> b!509597 m!490627))

(declare-fun m!490629 () Bool)

(assert (=> b!509592 m!490629))

(declare-fun m!490631 () Bool)

(assert (=> b!509596 m!490631))

(declare-fun m!490633 () Bool)

(assert (=> b!509594 m!490633))

(declare-fun m!490635 () Bool)

(assert (=> b!509594 m!490635))

(declare-fun m!490637 () Bool)

(assert (=> b!509594 m!490637))

(declare-fun m!490639 () Bool)

(assert (=> b!509594 m!490639))

(declare-fun m!490641 () Bool)

(assert (=> b!509594 m!490641))

(declare-fun m!490643 () Bool)

(assert (=> b!509594 m!490643))

(assert (=> b!509594 m!490641))

(declare-fun m!490645 () Bool)

(assert (=> b!509594 m!490645))

(assert (=> b!509594 m!490633))

(declare-fun m!490647 () Bool)

(assert (=> b!509594 m!490647))

(assert (=> b!509594 m!490641))

(declare-fun m!490649 () Bool)

(assert (=> b!509594 m!490649))

(assert (=> b!509594 m!490633))

(declare-fun m!490651 () Bool)

(assert (=> start!46046 m!490651))

(declare-fun m!490653 () Bool)

(assert (=> start!46046 m!490653))

(assert (=> b!509590 m!490641))

(assert (=> b!509590 m!490641))

(declare-fun m!490655 () Bool)

(assert (=> b!509590 m!490655))

(declare-fun m!490657 () Bool)

(assert (=> b!509589 m!490657))

(declare-fun m!490659 () Bool)

(assert (=> b!509595 m!490659))

(assert (=> b!509591 m!490641))

(assert (=> b!509591 m!490641))

(declare-fun m!490661 () Bool)

(assert (=> b!509591 m!490661))

(push 1)

