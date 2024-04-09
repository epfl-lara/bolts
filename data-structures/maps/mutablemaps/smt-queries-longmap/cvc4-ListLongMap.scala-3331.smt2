; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45992 () Bool)

(assert start!45992)

(declare-fun res!309860 () Bool)

(declare-fun e!297645 () Bool)

(assert (=> start!45992 (=> (not res!309860) (not e!297645))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45992 (= res!309860 (validMask!0 mask!3524))))

(assert (=> start!45992 e!297645))

(assert (=> start!45992 true))

(declare-datatypes ((array!32663 0))(
  ( (array!32664 (arr!15707 (Array (_ BitVec 32) (_ BitVec 64))) (size!16071 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32663)

(declare-fun array_inv!11481 (array!32663) Bool)

(assert (=> start!45992 (array_inv!11481 a!3235)))

(declare-fun b!508860 () Bool)

(declare-fun res!309857 () Bool)

(declare-fun e!297643 () Bool)

(assert (=> b!508860 (=> (not res!309857) (not e!297643))))

(declare-datatypes ((List!9918 0))(
  ( (Nil!9915) (Cons!9914 (h!10791 (_ BitVec 64)) (t!16154 List!9918)) )
))
(declare-fun arrayNoDuplicates!0 (array!32663 (_ BitVec 32) List!9918) Bool)

(assert (=> b!508860 (= res!309857 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9915))))

(declare-fun b!508861 () Bool)

(assert (=> b!508861 (= e!297643 (not true))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun lt!232424 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4181 0))(
  ( (MissingZero!4181 (index!18912 (_ BitVec 32))) (Found!4181 (index!18913 (_ BitVec 32))) (Intermediate!4181 (undefined!4993 Bool) (index!18914 (_ BitVec 32)) (x!47913 (_ BitVec 32))) (Undefined!4181) (MissingVacant!4181 (index!18915 (_ BitVec 32))) )
))
(declare-fun lt!232426 () SeekEntryResult!4181)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32663 (_ BitVec 32)) SeekEntryResult!4181)

(assert (=> b!508861 (= lt!232426 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232424 (select (store (arr!15707 a!3235) i!1204 k!2280) j!176) (array!32664 (store (arr!15707 a!3235) i!1204 k!2280) (size!16071 a!3235)) mask!3524))))

(declare-fun lt!232422 () (_ BitVec 32))

(declare-fun lt!232427 () SeekEntryResult!4181)

(assert (=> b!508861 (= lt!232427 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232422 (select (arr!15707 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!508861 (= lt!232424 (toIndex!0 (select (store (arr!15707 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!508861 (= lt!232422 (toIndex!0 (select (arr!15707 a!3235) j!176) mask!3524))))

(declare-fun e!297646 () Bool)

(assert (=> b!508861 e!297646))

(declare-fun res!309861 () Bool)

(assert (=> b!508861 (=> (not res!309861) (not e!297646))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32663 (_ BitVec 32)) Bool)

(assert (=> b!508861 (= res!309861 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15612 0))(
  ( (Unit!15613) )
))
(declare-fun lt!232425 () Unit!15612)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32663 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15612)

(assert (=> b!508861 (= lt!232425 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!508862 () Bool)

(declare-fun res!309855 () Bool)

(assert (=> b!508862 (=> (not res!309855) (not e!297645))))

(assert (=> b!508862 (= res!309855 (and (= (size!16071 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16071 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16071 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!508863 () Bool)

(declare-fun res!309856 () Bool)

(assert (=> b!508863 (=> (not res!309856) (not e!297645))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508863 (= res!309856 (validKeyInArray!0 k!2280))))

(declare-fun b!508864 () Bool)

(declare-fun res!309859 () Bool)

(assert (=> b!508864 (=> (not res!309859) (not e!297645))))

(assert (=> b!508864 (= res!309859 (validKeyInArray!0 (select (arr!15707 a!3235) j!176)))))

(declare-fun b!508865 () Bool)

(assert (=> b!508865 (= e!297645 e!297643)))

(declare-fun res!309858 () Bool)

(assert (=> b!508865 (=> (not res!309858) (not e!297643))))

(declare-fun lt!232423 () SeekEntryResult!4181)

(assert (=> b!508865 (= res!309858 (or (= lt!232423 (MissingZero!4181 i!1204)) (= lt!232423 (MissingVacant!4181 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32663 (_ BitVec 32)) SeekEntryResult!4181)

(assert (=> b!508865 (= lt!232423 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!508866 () Bool)

(declare-fun res!309862 () Bool)

(assert (=> b!508866 (=> (not res!309862) (not e!297643))))

(assert (=> b!508866 (= res!309862 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!508867 () Bool)

(assert (=> b!508867 (= e!297646 (= (seekEntryOrOpen!0 (select (arr!15707 a!3235) j!176) a!3235 mask!3524) (Found!4181 j!176)))))

(declare-fun b!508868 () Bool)

(declare-fun res!309863 () Bool)

(assert (=> b!508868 (=> (not res!309863) (not e!297645))))

(declare-fun arrayContainsKey!0 (array!32663 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!508868 (= res!309863 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!45992 res!309860) b!508862))

(assert (= (and b!508862 res!309855) b!508864))

(assert (= (and b!508864 res!309859) b!508863))

(assert (= (and b!508863 res!309856) b!508868))

(assert (= (and b!508868 res!309863) b!508865))

(assert (= (and b!508865 res!309858) b!508866))

(assert (= (and b!508866 res!309862) b!508860))

(assert (= (and b!508860 res!309857) b!508861))

(assert (= (and b!508861 res!309861) b!508867))

(declare-fun m!489655 () Bool)

(assert (=> b!508865 m!489655))

(declare-fun m!489657 () Bool)

(assert (=> b!508868 m!489657))

(declare-fun m!489659 () Bool)

(assert (=> b!508861 m!489659))

(declare-fun m!489661 () Bool)

(assert (=> b!508861 m!489661))

(assert (=> b!508861 m!489661))

(declare-fun m!489663 () Bool)

(assert (=> b!508861 m!489663))

(declare-fun m!489665 () Bool)

(assert (=> b!508861 m!489665))

(declare-fun m!489667 () Bool)

(assert (=> b!508861 m!489667))

(assert (=> b!508861 m!489665))

(declare-fun m!489669 () Bool)

(assert (=> b!508861 m!489669))

(assert (=> b!508861 m!489661))

(declare-fun m!489671 () Bool)

(assert (=> b!508861 m!489671))

(assert (=> b!508861 m!489665))

(declare-fun m!489673 () Bool)

(assert (=> b!508861 m!489673))

(declare-fun m!489675 () Bool)

(assert (=> b!508861 m!489675))

(assert (=> b!508867 m!489665))

(assert (=> b!508867 m!489665))

(declare-fun m!489677 () Bool)

(assert (=> b!508867 m!489677))

(declare-fun m!489679 () Bool)

(assert (=> b!508863 m!489679))

(declare-fun m!489681 () Bool)

(assert (=> b!508860 m!489681))

(declare-fun m!489683 () Bool)

(assert (=> b!508866 m!489683))

(assert (=> b!508864 m!489665))

(assert (=> b!508864 m!489665))

(declare-fun m!489685 () Bool)

(assert (=> b!508864 m!489685))

(declare-fun m!489687 () Bool)

(assert (=> start!45992 m!489687))

(declare-fun m!489689 () Bool)

(assert (=> start!45992 m!489689))

(push 1)

(assert (not b!508863))

(assert (not b!508860))

(assert (not b!508866))

(assert (not b!508868))

(assert (not b!508861))

(assert (not b!508865))

(assert (not b!508864))

(assert (not start!45992))

(assert (not b!508867))

(check-sat)

(pop 1)

(push 1)

(check-sat)

