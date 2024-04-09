; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45990 () Bool)

(assert start!45990)

(declare-fun b!508833 () Bool)

(declare-fun e!297631 () Bool)

(declare-fun e!297632 () Bool)

(assert (=> b!508833 (= e!297631 e!297632)))

(declare-fun res!309832 () Bool)

(assert (=> b!508833 (=> (not res!309832) (not e!297632))))

(declare-datatypes ((SeekEntryResult!4180 0))(
  ( (MissingZero!4180 (index!18908 (_ BitVec 32))) (Found!4180 (index!18909 (_ BitVec 32))) (Intermediate!4180 (undefined!4992 Bool) (index!18910 (_ BitVec 32)) (x!47912 (_ BitVec 32))) (Undefined!4180) (MissingVacant!4180 (index!18911 (_ BitVec 32))) )
))
(declare-fun lt!232404 () SeekEntryResult!4180)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!508833 (= res!309832 (or (= lt!232404 (MissingZero!4180 i!1204)) (= lt!232404 (MissingVacant!4180 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32661 0))(
  ( (array!32662 (arr!15706 (Array (_ BitVec 32) (_ BitVec 64))) (size!16070 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32661)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32661 (_ BitVec 32)) SeekEntryResult!4180)

(assert (=> b!508833 (= lt!232404 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!508834 () Bool)

(declare-fun res!309834 () Bool)

(assert (=> b!508834 (=> (not res!309834) (not e!297631))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508834 (= res!309834 (validKeyInArray!0 (select (arr!15706 a!3235) j!176)))))

(declare-fun b!508835 () Bool)

(declare-fun res!309830 () Bool)

(assert (=> b!508835 (=> (not res!309830) (not e!297631))))

(declare-fun arrayContainsKey!0 (array!32661 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!508835 (= res!309830 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!508836 () Bool)

(assert (=> b!508836 (= e!297632 (not true))))

(declare-fun lt!232408 () SeekEntryResult!4180)

(declare-fun lt!232407 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32661 (_ BitVec 32)) SeekEntryResult!4180)

(assert (=> b!508836 (= lt!232408 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232407 (select (store (arr!15706 a!3235) i!1204 k0!2280) j!176) (array!32662 (store (arr!15706 a!3235) i!1204 k0!2280) (size!16070 a!3235)) mask!3524))))

(declare-fun lt!232405 () SeekEntryResult!4180)

(declare-fun lt!232409 () (_ BitVec 32))

(assert (=> b!508836 (= lt!232405 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232409 (select (arr!15706 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!508836 (= lt!232407 (toIndex!0 (select (store (arr!15706 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!508836 (= lt!232409 (toIndex!0 (select (arr!15706 a!3235) j!176) mask!3524))))

(declare-fun e!297633 () Bool)

(assert (=> b!508836 e!297633))

(declare-fun res!309829 () Bool)

(assert (=> b!508836 (=> (not res!309829) (not e!297633))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32661 (_ BitVec 32)) Bool)

(assert (=> b!508836 (= res!309829 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15610 0))(
  ( (Unit!15611) )
))
(declare-fun lt!232406 () Unit!15610)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32661 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15610)

(assert (=> b!508836 (= lt!232406 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!508837 () Bool)

(assert (=> b!508837 (= e!297633 (= (seekEntryOrOpen!0 (select (arr!15706 a!3235) j!176) a!3235 mask!3524) (Found!4180 j!176)))))

(declare-fun res!309831 () Bool)

(assert (=> start!45990 (=> (not res!309831) (not e!297631))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45990 (= res!309831 (validMask!0 mask!3524))))

(assert (=> start!45990 e!297631))

(assert (=> start!45990 true))

(declare-fun array_inv!11480 (array!32661) Bool)

(assert (=> start!45990 (array_inv!11480 a!3235)))

(declare-fun b!508838 () Bool)

(declare-fun res!309828 () Bool)

(assert (=> b!508838 (=> (not res!309828) (not e!297631))))

(assert (=> b!508838 (= res!309828 (validKeyInArray!0 k0!2280))))

(declare-fun b!508839 () Bool)

(declare-fun res!309833 () Bool)

(assert (=> b!508839 (=> (not res!309833) (not e!297632))))

(declare-datatypes ((List!9917 0))(
  ( (Nil!9914) (Cons!9913 (h!10790 (_ BitVec 64)) (t!16153 List!9917)) )
))
(declare-fun arrayNoDuplicates!0 (array!32661 (_ BitVec 32) List!9917) Bool)

(assert (=> b!508839 (= res!309833 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9914))))

(declare-fun b!508840 () Bool)

(declare-fun res!309835 () Bool)

(assert (=> b!508840 (=> (not res!309835) (not e!297632))))

(assert (=> b!508840 (= res!309835 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!508841 () Bool)

(declare-fun res!309836 () Bool)

(assert (=> b!508841 (=> (not res!309836) (not e!297631))))

(assert (=> b!508841 (= res!309836 (and (= (size!16070 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16070 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16070 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45990 res!309831) b!508841))

(assert (= (and b!508841 res!309836) b!508834))

(assert (= (and b!508834 res!309834) b!508838))

(assert (= (and b!508838 res!309828) b!508835))

(assert (= (and b!508835 res!309830) b!508833))

(assert (= (and b!508833 res!309832) b!508840))

(assert (= (and b!508840 res!309835) b!508839))

(assert (= (and b!508839 res!309833) b!508836))

(assert (= (and b!508836 res!309829) b!508837))

(declare-fun m!489619 () Bool)

(assert (=> b!508833 m!489619))

(declare-fun m!489621 () Bool)

(assert (=> b!508835 m!489621))

(declare-fun m!489623 () Bool)

(assert (=> b!508834 m!489623))

(assert (=> b!508834 m!489623))

(declare-fun m!489625 () Bool)

(assert (=> b!508834 m!489625))

(declare-fun m!489627 () Bool)

(assert (=> b!508838 m!489627))

(assert (=> b!508837 m!489623))

(assert (=> b!508837 m!489623))

(declare-fun m!489629 () Bool)

(assert (=> b!508837 m!489629))

(declare-fun m!489631 () Bool)

(assert (=> b!508839 m!489631))

(declare-fun m!489633 () Bool)

(assert (=> start!45990 m!489633))

(declare-fun m!489635 () Bool)

(assert (=> start!45990 m!489635))

(declare-fun m!489637 () Bool)

(assert (=> b!508836 m!489637))

(declare-fun m!489639 () Bool)

(assert (=> b!508836 m!489639))

(declare-fun m!489641 () Bool)

(assert (=> b!508836 m!489641))

(assert (=> b!508836 m!489623))

(declare-fun m!489643 () Bool)

(assert (=> b!508836 m!489643))

(assert (=> b!508836 m!489623))

(declare-fun m!489645 () Bool)

(assert (=> b!508836 m!489645))

(assert (=> b!508836 m!489623))

(declare-fun m!489647 () Bool)

(assert (=> b!508836 m!489647))

(assert (=> b!508836 m!489641))

(declare-fun m!489649 () Bool)

(assert (=> b!508836 m!489649))

(assert (=> b!508836 m!489641))

(declare-fun m!489651 () Bool)

(assert (=> b!508836 m!489651))

(declare-fun m!489653 () Bool)

(assert (=> b!508840 m!489653))

(check-sat (not b!508835) (not b!508834) (not b!508836) (not b!508839) (not b!508840) (not b!508833) (not b!508838) (not b!508837) (not start!45990))
(check-sat)
