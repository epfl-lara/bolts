; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44118 () Bool)

(assert start!44118)

(declare-fun b!485837 () Bool)

(declare-fun e!285988 () Bool)

(declare-datatypes ((array!31446 0))(
  ( (array!31447 (arr!15118 (Array (_ BitVec 32) (_ BitVec 64))) (size!15482 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31446)

(assert (=> b!485837 (= e!285988 (bvsgt #b00000000000000000000000000000000 (size!15482 a!3235)))))

(declare-fun b!485838 () Bool)

(declare-fun e!285986 () Bool)

(assert (=> b!485838 (= e!285986 e!285988)))

(declare-fun res!289594 () Bool)

(assert (=> b!485838 (=> (not res!289594) (not e!285988))))

(declare-datatypes ((SeekEntryResult!3592 0))(
  ( (MissingZero!3592 (index!16547 (_ BitVec 32))) (Found!3592 (index!16548 (_ BitVec 32))) (Intermediate!3592 (undefined!4404 Bool) (index!16549 (_ BitVec 32)) (x!45711 (_ BitVec 32))) (Undefined!3592) (MissingVacant!3592 (index!16550 (_ BitVec 32))) )
))
(declare-fun lt!219578 () SeekEntryResult!3592)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!485838 (= res!289594 (or (= lt!219578 (MissingZero!3592 i!1204)) (= lt!219578 (MissingVacant!3592 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31446 (_ BitVec 32)) SeekEntryResult!3592)

(assert (=> b!485838 (= lt!219578 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!485839 () Bool)

(declare-fun res!289595 () Bool)

(assert (=> b!485839 (=> (not res!289595) (not e!285986))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!485839 (= res!289595 (and (= (size!15482 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15482 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15482 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!485840 () Bool)

(declare-fun res!289592 () Bool)

(assert (=> b!485840 (=> (not res!289592) (not e!285986))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485840 (= res!289592 (validKeyInArray!0 (select (arr!15118 a!3235) j!176)))))

(declare-fun res!289591 () Bool)

(assert (=> start!44118 (=> (not res!289591) (not e!285986))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44118 (= res!289591 (validMask!0 mask!3524))))

(assert (=> start!44118 e!285986))

(assert (=> start!44118 true))

(declare-fun array_inv!10892 (array!31446) Bool)

(assert (=> start!44118 (array_inv!10892 a!3235)))

(declare-fun b!485841 () Bool)

(declare-fun res!289593 () Bool)

(assert (=> b!485841 (=> (not res!289593) (not e!285988))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31446 (_ BitVec 32)) Bool)

(assert (=> b!485841 (= res!289593 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!485842 () Bool)

(declare-fun res!289590 () Bool)

(assert (=> b!485842 (=> (not res!289590) (not e!285986))))

(assert (=> b!485842 (= res!289590 (validKeyInArray!0 k0!2280))))

(declare-fun b!485843 () Bool)

(declare-fun res!289589 () Bool)

(assert (=> b!485843 (=> (not res!289589) (not e!285986))))

(declare-fun arrayContainsKey!0 (array!31446 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485843 (= res!289589 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!44118 res!289591) b!485839))

(assert (= (and b!485839 res!289595) b!485840))

(assert (= (and b!485840 res!289592) b!485842))

(assert (= (and b!485842 res!289590) b!485843))

(assert (= (and b!485843 res!289589) b!485838))

(assert (= (and b!485838 res!289594) b!485841))

(assert (= (and b!485841 res!289593) b!485837))

(declare-fun m!465923 () Bool)

(assert (=> b!485843 m!465923))

(declare-fun m!465925 () Bool)

(assert (=> b!485840 m!465925))

(assert (=> b!485840 m!465925))

(declare-fun m!465927 () Bool)

(assert (=> b!485840 m!465927))

(declare-fun m!465929 () Bool)

(assert (=> b!485841 m!465929))

(declare-fun m!465931 () Bool)

(assert (=> b!485838 m!465931))

(declare-fun m!465933 () Bool)

(assert (=> start!44118 m!465933))

(declare-fun m!465935 () Bool)

(assert (=> start!44118 m!465935))

(declare-fun m!465937 () Bool)

(assert (=> b!485842 m!465937))

(check-sat (not b!485842) (not b!485843) (not b!485841) (not b!485838) (not start!44118) (not b!485840))
(check-sat)
