; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45870 () Bool)

(assert start!45870)

(declare-fun b!507758 () Bool)

(declare-fun res!308869 () Bool)

(declare-fun e!297133 () Bool)

(assert (=> b!507758 (=> (not res!308869) (not e!297133))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507758 (= res!308869 (validKeyInArray!0 k0!2280))))

(declare-fun b!507759 () Bool)

(declare-fun e!297131 () Bool)

(assert (=> b!507759 (= e!297133 e!297131)))

(declare-fun res!308873 () Bool)

(assert (=> b!507759 (=> (not res!308873) (not e!297131))))

(declare-datatypes ((SeekEntryResult!4144 0))(
  ( (MissingZero!4144 (index!18764 (_ BitVec 32))) (Found!4144 (index!18765 (_ BitVec 32))) (Intermediate!4144 (undefined!4956 Bool) (index!18766 (_ BitVec 32)) (x!47780 (_ BitVec 32))) (Undefined!4144) (MissingVacant!4144 (index!18767 (_ BitVec 32))) )
))
(declare-fun lt!232088 () SeekEntryResult!4144)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!507759 (= res!308873 (or (= lt!232088 (MissingZero!4144 i!1204)) (= lt!232088 (MissingVacant!4144 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32586 0))(
  ( (array!32587 (arr!15670 (Array (_ BitVec 32) (_ BitVec 64))) (size!16034 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32586)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32586 (_ BitVec 32)) SeekEntryResult!4144)

(assert (=> b!507759 (= lt!232088 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!507760 () Bool)

(declare-fun res!308870 () Bool)

(assert (=> b!507760 (=> (not res!308870) (not e!297133))))

(declare-fun arrayContainsKey!0 (array!32586 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507760 (= res!308870 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!507761 () Bool)

(assert (=> b!507761 (= e!297131 false)))

(declare-fun lt!232087 () Bool)

(declare-datatypes ((List!9881 0))(
  ( (Nil!9878) (Cons!9877 (h!10754 (_ BitVec 64)) (t!16117 List!9881)) )
))
(declare-fun arrayNoDuplicates!0 (array!32586 (_ BitVec 32) List!9881) Bool)

(assert (=> b!507761 (= lt!232087 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9878))))

(declare-fun res!308867 () Bool)

(assert (=> start!45870 (=> (not res!308867) (not e!297133))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45870 (= res!308867 (validMask!0 mask!3524))))

(assert (=> start!45870 e!297133))

(assert (=> start!45870 true))

(declare-fun array_inv!11444 (array!32586) Bool)

(assert (=> start!45870 (array_inv!11444 a!3235)))

(declare-fun b!507762 () Bool)

(declare-fun res!308871 () Bool)

(assert (=> b!507762 (=> (not res!308871) (not e!297133))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!507762 (= res!308871 (and (= (size!16034 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16034 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16034 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!507763 () Bool)

(declare-fun res!308868 () Bool)

(assert (=> b!507763 (=> (not res!308868) (not e!297133))))

(assert (=> b!507763 (= res!308868 (validKeyInArray!0 (select (arr!15670 a!3235) j!176)))))

(declare-fun b!507764 () Bool)

(declare-fun res!308872 () Bool)

(assert (=> b!507764 (=> (not res!308872) (not e!297131))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32586 (_ BitVec 32)) Bool)

(assert (=> b!507764 (= res!308872 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!45870 res!308867) b!507762))

(assert (= (and b!507762 res!308871) b!507763))

(assert (= (and b!507763 res!308868) b!507758))

(assert (= (and b!507758 res!308869) b!507760))

(assert (= (and b!507760 res!308870) b!507759))

(assert (= (and b!507759 res!308873) b!507764))

(assert (= (and b!507764 res!308872) b!507761))

(declare-fun m!488647 () Bool)

(assert (=> b!507763 m!488647))

(assert (=> b!507763 m!488647))

(declare-fun m!488649 () Bool)

(assert (=> b!507763 m!488649))

(declare-fun m!488651 () Bool)

(assert (=> b!507758 m!488651))

(declare-fun m!488653 () Bool)

(assert (=> b!507759 m!488653))

(declare-fun m!488655 () Bool)

(assert (=> b!507761 m!488655))

(declare-fun m!488657 () Bool)

(assert (=> start!45870 m!488657))

(declare-fun m!488659 () Bool)

(assert (=> start!45870 m!488659))

(declare-fun m!488661 () Bool)

(assert (=> b!507760 m!488661))

(declare-fun m!488663 () Bool)

(assert (=> b!507764 m!488663))

(check-sat (not b!507761) (not b!507763) (not b!507759) (not start!45870) (not b!507758) (not b!507760) (not b!507764))
(check-sat)
