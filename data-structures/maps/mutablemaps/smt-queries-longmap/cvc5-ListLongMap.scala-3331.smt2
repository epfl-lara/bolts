; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45988 () Bool)

(assert start!45988)

(declare-fun b!508806 () Bool)

(declare-fun res!309808 () Bool)

(declare-fun e!297620 () Bool)

(assert (=> b!508806 (=> (not res!309808) (not e!297620))))

(declare-datatypes ((array!32659 0))(
  ( (array!32660 (arr!15705 (Array (_ BitVec 32) (_ BitVec 64))) (size!16069 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32659)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508806 (= res!309808 (validKeyInArray!0 (select (arr!15705 a!3235) j!176)))))

(declare-fun e!297622 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!508807 () Bool)

(declare-datatypes ((SeekEntryResult!4179 0))(
  ( (MissingZero!4179 (index!18904 (_ BitVec 32))) (Found!4179 (index!18905 (_ BitVec 32))) (Intermediate!4179 (undefined!4991 Bool) (index!18906 (_ BitVec 32)) (x!47911 (_ BitVec 32))) (Undefined!4179) (MissingVacant!4179 (index!18907 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32659 (_ BitVec 32)) SeekEntryResult!4179)

(assert (=> b!508807 (= e!297622 (= (seekEntryOrOpen!0 (select (arr!15705 a!3235) j!176) a!3235 mask!3524) (Found!4179 j!176)))))

(declare-fun b!508808 () Bool)

(declare-fun e!297621 () Bool)

(assert (=> b!508808 (= e!297621 (not true))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!232389 () SeekEntryResult!4179)

(declare-fun lt!232390 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32659 (_ BitVec 32)) SeekEntryResult!4179)

(assert (=> b!508808 (= lt!232389 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232390 (select (store (arr!15705 a!3235) i!1204 k!2280) j!176) (array!32660 (store (arr!15705 a!3235) i!1204 k!2280) (size!16069 a!3235)) mask!3524))))

(declare-fun lt!232386 () (_ BitVec 32))

(declare-fun lt!232388 () SeekEntryResult!4179)

(assert (=> b!508808 (= lt!232388 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232386 (select (arr!15705 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!508808 (= lt!232390 (toIndex!0 (select (store (arr!15705 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!508808 (= lt!232386 (toIndex!0 (select (arr!15705 a!3235) j!176) mask!3524))))

(assert (=> b!508808 e!297622))

(declare-fun res!309805 () Bool)

(assert (=> b!508808 (=> (not res!309805) (not e!297622))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32659 (_ BitVec 32)) Bool)

(assert (=> b!508808 (= res!309805 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15608 0))(
  ( (Unit!15609) )
))
(declare-fun lt!232387 () Unit!15608)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32659 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15608)

(assert (=> b!508808 (= lt!232387 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!508809 () Bool)

(declare-fun res!309809 () Bool)

(assert (=> b!508809 (=> (not res!309809) (not e!297620))))

(assert (=> b!508809 (= res!309809 (validKeyInArray!0 k!2280))))

(declare-fun b!508810 () Bool)

(declare-fun res!309803 () Bool)

(assert (=> b!508810 (=> (not res!309803) (not e!297621))))

(declare-datatypes ((List!9916 0))(
  ( (Nil!9913) (Cons!9912 (h!10789 (_ BitVec 64)) (t!16152 List!9916)) )
))
(declare-fun arrayNoDuplicates!0 (array!32659 (_ BitVec 32) List!9916) Bool)

(assert (=> b!508810 (= res!309803 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9913))))

(declare-fun b!508811 () Bool)

(declare-fun res!309802 () Bool)

(assert (=> b!508811 (=> (not res!309802) (not e!297620))))

(assert (=> b!508811 (= res!309802 (and (= (size!16069 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16069 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16069 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!508812 () Bool)

(assert (=> b!508812 (= e!297620 e!297621)))

(declare-fun res!309801 () Bool)

(assert (=> b!508812 (=> (not res!309801) (not e!297621))))

(declare-fun lt!232391 () SeekEntryResult!4179)

(assert (=> b!508812 (= res!309801 (or (= lt!232391 (MissingZero!4179 i!1204)) (= lt!232391 (MissingVacant!4179 i!1204))))))

(assert (=> b!508812 (= lt!232391 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!309804 () Bool)

(assert (=> start!45988 (=> (not res!309804) (not e!297620))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45988 (= res!309804 (validMask!0 mask!3524))))

(assert (=> start!45988 e!297620))

(assert (=> start!45988 true))

(declare-fun array_inv!11479 (array!32659) Bool)

(assert (=> start!45988 (array_inv!11479 a!3235)))

(declare-fun b!508813 () Bool)

(declare-fun res!309806 () Bool)

(assert (=> b!508813 (=> (not res!309806) (not e!297621))))

(assert (=> b!508813 (= res!309806 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!508814 () Bool)

(declare-fun res!309807 () Bool)

(assert (=> b!508814 (=> (not res!309807) (not e!297620))))

(declare-fun arrayContainsKey!0 (array!32659 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!508814 (= res!309807 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!45988 res!309804) b!508811))

(assert (= (and b!508811 res!309802) b!508806))

(assert (= (and b!508806 res!309808) b!508809))

(assert (= (and b!508809 res!309809) b!508814))

(assert (= (and b!508814 res!309807) b!508812))

(assert (= (and b!508812 res!309801) b!508813))

(assert (= (and b!508813 res!309806) b!508810))

(assert (= (and b!508810 res!309803) b!508808))

(assert (= (and b!508808 res!309805) b!508807))

(declare-fun m!489583 () Bool)

(assert (=> b!508814 m!489583))

(declare-fun m!489585 () Bool)

(assert (=> b!508810 m!489585))

(declare-fun m!489587 () Bool)

(assert (=> b!508808 m!489587))

(declare-fun m!489589 () Bool)

(assert (=> b!508808 m!489589))

(declare-fun m!489591 () Bool)

(assert (=> b!508808 m!489591))

(declare-fun m!489593 () Bool)

(assert (=> b!508808 m!489593))

(declare-fun m!489595 () Bool)

(assert (=> b!508808 m!489595))

(assert (=> b!508808 m!489587))

(declare-fun m!489597 () Bool)

(assert (=> b!508808 m!489597))

(assert (=> b!508808 m!489587))

(declare-fun m!489599 () Bool)

(assert (=> b!508808 m!489599))

(assert (=> b!508808 m!489595))

(declare-fun m!489601 () Bool)

(assert (=> b!508808 m!489601))

(assert (=> b!508808 m!489595))

(declare-fun m!489603 () Bool)

(assert (=> b!508808 m!489603))

(assert (=> b!508806 m!489587))

(assert (=> b!508806 m!489587))

(declare-fun m!489605 () Bool)

(assert (=> b!508806 m!489605))

(declare-fun m!489607 () Bool)

(assert (=> b!508809 m!489607))

(assert (=> b!508807 m!489587))

(assert (=> b!508807 m!489587))

(declare-fun m!489609 () Bool)

(assert (=> b!508807 m!489609))

(declare-fun m!489611 () Bool)

(assert (=> b!508813 m!489611))

(declare-fun m!489613 () Bool)

(assert (=> start!45988 m!489613))

(declare-fun m!489615 () Bool)

(assert (=> start!45988 m!489615))

(declare-fun m!489617 () Bool)

(assert (=> b!508812 m!489617))

(push 1)

