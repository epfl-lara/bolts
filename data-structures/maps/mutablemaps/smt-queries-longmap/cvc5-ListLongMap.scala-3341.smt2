; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46048 () Bool)

(assert start!46048)

(declare-fun b!509616 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32719 0))(
  ( (array!32720 (arr!15735 (Array (_ BitVec 32) (_ BitVec 64))) (size!16099 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32719)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!297979 () Bool)

(declare-datatypes ((SeekEntryResult!4209 0))(
  ( (MissingZero!4209 (index!19024 (_ BitVec 32))) (Found!4209 (index!19025 (_ BitVec 32))) (Intermediate!4209 (undefined!5021 Bool) (index!19026 (_ BitVec 32)) (x!48021 (_ BitVec 32))) (Undefined!4209) (MissingVacant!4209 (index!19027 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32719 (_ BitVec 32)) SeekEntryResult!4209)

(assert (=> b!509616 (= e!297979 (= (seekEntryOrOpen!0 (select (arr!15735 a!3235) j!176) a!3235 mask!3524) (Found!4209 j!176)))))

(declare-fun b!509617 () Bool)

(declare-fun res!310611 () Bool)

(declare-fun e!297982 () Bool)

(assert (=> b!509617 (=> (not res!310611) (not e!297982))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509617 (= res!310611 (validKeyInArray!0 (select (arr!15735 a!3235) j!176)))))

(declare-fun res!310615 () Bool)

(assert (=> start!46048 (=> (not res!310615) (not e!297982))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46048 (= res!310615 (validMask!0 mask!3524))))

(assert (=> start!46048 e!297982))

(assert (=> start!46048 true))

(declare-fun array_inv!11509 (array!32719) Bool)

(assert (=> start!46048 (array_inv!11509 a!3235)))

(declare-fun b!509618 () Bool)

(declare-fun res!310616 () Bool)

(assert (=> b!509618 (=> (not res!310616) (not e!297982))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!509618 (= res!310616 (and (= (size!16099 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16099 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16099 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509619 () Bool)

(declare-fun e!297980 () Bool)

(assert (=> b!509619 (= e!297982 e!297980)))

(declare-fun res!310614 () Bool)

(assert (=> b!509619 (=> (not res!310614) (not e!297980))))

(declare-fun lt!232931 () SeekEntryResult!4209)

(assert (=> b!509619 (= res!310614 (or (= lt!232931 (MissingZero!4209 i!1204)) (= lt!232931 (MissingVacant!4209 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!509619 (= lt!232931 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!509620 () Bool)

(declare-fun res!310613 () Bool)

(assert (=> b!509620 (=> (not res!310613) (not e!297982))))

(declare-fun arrayContainsKey!0 (array!32719 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509620 (= res!310613 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!509621 () Bool)

(declare-fun res!310612 () Bool)

(assert (=> b!509621 (=> (not res!310612) (not e!297980))))

(declare-datatypes ((List!9946 0))(
  ( (Nil!9943) (Cons!9942 (h!10819 (_ BitVec 64)) (t!16182 List!9946)) )
))
(declare-fun arrayNoDuplicates!0 (array!32719 (_ BitVec 32) List!9946) Bool)

(assert (=> b!509621 (= res!310612 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9943))))

(declare-fun b!509622 () Bool)

(declare-fun res!310619 () Bool)

(assert (=> b!509622 (=> (not res!310619) (not e!297982))))

(assert (=> b!509622 (= res!310619 (validKeyInArray!0 k!2280))))

(declare-fun b!509623 () Bool)

(declare-fun res!310617 () Bool)

(assert (=> b!509623 (=> (not res!310617) (not e!297980))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32719 (_ BitVec 32)) Bool)

(assert (=> b!509623 (= res!310617 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!509624 () Bool)

(assert (=> b!509624 (= e!297980 (not true))))

(declare-fun lt!232926 () SeekEntryResult!4209)

(declare-fun lt!232928 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32719 (_ BitVec 32)) SeekEntryResult!4209)

(assert (=> b!509624 (= lt!232926 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232928 (select (store (arr!15735 a!3235) i!1204 k!2280) j!176) (array!32720 (store (arr!15735 a!3235) i!1204 k!2280) (size!16099 a!3235)) mask!3524))))

(declare-fun lt!232929 () SeekEntryResult!4209)

(declare-fun lt!232930 () (_ BitVec 32))

(assert (=> b!509624 (= lt!232929 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232930 (select (arr!15735 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509624 (= lt!232928 (toIndex!0 (select (store (arr!15735 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!509624 (= lt!232930 (toIndex!0 (select (arr!15735 a!3235) j!176) mask!3524))))

(assert (=> b!509624 e!297979))

(declare-fun res!310618 () Bool)

(assert (=> b!509624 (=> (not res!310618) (not e!297979))))

(assert (=> b!509624 (= res!310618 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15668 0))(
  ( (Unit!15669) )
))
(declare-fun lt!232927 () Unit!15668)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32719 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15668)

(assert (=> b!509624 (= lt!232927 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!46048 res!310615) b!509618))

(assert (= (and b!509618 res!310616) b!509617))

(assert (= (and b!509617 res!310611) b!509622))

(assert (= (and b!509622 res!310619) b!509620))

(assert (= (and b!509620 res!310613) b!509619))

(assert (= (and b!509619 res!310614) b!509623))

(assert (= (and b!509623 res!310617) b!509621))

(assert (= (and b!509621 res!310612) b!509624))

(assert (= (and b!509624 res!310618) b!509616))

(declare-fun m!490663 () Bool)

(assert (=> b!509616 m!490663))

(assert (=> b!509616 m!490663))

(declare-fun m!490665 () Bool)

(assert (=> b!509616 m!490665))

(assert (=> b!509617 m!490663))

(assert (=> b!509617 m!490663))

(declare-fun m!490667 () Bool)

(assert (=> b!509617 m!490667))

(declare-fun m!490669 () Bool)

(assert (=> b!509620 m!490669))

(declare-fun m!490671 () Bool)

(assert (=> b!509623 m!490671))

(declare-fun m!490673 () Bool)

(assert (=> b!509622 m!490673))

(declare-fun m!490675 () Bool)

(assert (=> b!509621 m!490675))

(declare-fun m!490677 () Bool)

(assert (=> b!509619 m!490677))

(declare-fun m!490679 () Bool)

(assert (=> start!46048 m!490679))

(declare-fun m!490681 () Bool)

(assert (=> start!46048 m!490681))

(declare-fun m!490683 () Bool)

(assert (=> b!509624 m!490683))

(declare-fun m!490685 () Bool)

(assert (=> b!509624 m!490685))

(declare-fun m!490687 () Bool)

(assert (=> b!509624 m!490687))

(assert (=> b!509624 m!490663))

(declare-fun m!490689 () Bool)

(assert (=> b!509624 m!490689))

(assert (=> b!509624 m!490663))

(declare-fun m!490691 () Bool)

(assert (=> b!509624 m!490691))

(assert (=> b!509624 m!490687))

(declare-fun m!490693 () Bool)

(assert (=> b!509624 m!490693))

(assert (=> b!509624 m!490687))

(declare-fun m!490695 () Bool)

(assert (=> b!509624 m!490695))

(assert (=> b!509624 m!490663))

(declare-fun m!490697 () Bool)

(assert (=> b!509624 m!490697))

(push 1)

