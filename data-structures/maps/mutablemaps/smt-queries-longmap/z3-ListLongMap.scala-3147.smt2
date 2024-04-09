; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44316 () Bool)

(assert start!44316)

(declare-fun res!290588 () Bool)

(declare-fun e!286596 () Bool)

(assert (=> start!44316 (=> (not res!290588) (not e!286596))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44316 (= res!290588 (validMask!0 mask!3524))))

(assert (=> start!44316 e!286596))

(assert (=> start!44316 true))

(declare-datatypes ((array!31527 0))(
  ( (array!31528 (arr!15154 (Array (_ BitVec 32) (_ BitVec 64))) (size!15518 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31527)

(declare-fun array_inv!10928 (array!31527) Bool)

(assert (=> start!44316 (array_inv!10928 a!3235)))

(declare-fun b!487045 () Bool)

(declare-fun e!286595 () Bool)

(assert (=> b!487045 (= e!286595 (not true))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31527 (_ BitVec 32)) Bool)

(assert (=> b!487045 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14194 0))(
  ( (Unit!14195) )
))
(declare-fun lt!219938 () Unit!14194)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31527 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14194)

(assert (=> b!487045 (= lt!219938 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!487046 () Bool)

(declare-fun res!290582 () Bool)

(assert (=> b!487046 (=> (not res!290582) (not e!286596))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!487046 (= res!290582 (and (= (size!15518 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15518 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15518 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!487047 () Bool)

(declare-fun res!290586 () Bool)

(assert (=> b!487047 (=> (not res!290586) (not e!286596))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31527 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!487047 (= res!290586 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!487048 () Bool)

(declare-fun res!290587 () Bool)

(assert (=> b!487048 (=> (not res!290587) (not e!286595))))

(declare-datatypes ((List!9365 0))(
  ( (Nil!9362) (Cons!9361 (h!10217 (_ BitVec 64)) (t!15601 List!9365)) )
))
(declare-fun arrayNoDuplicates!0 (array!31527 (_ BitVec 32) List!9365) Bool)

(assert (=> b!487048 (= res!290587 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9362))))

(declare-fun b!487049 () Bool)

(declare-fun res!290581 () Bool)

(assert (=> b!487049 (=> (not res!290581) (not e!286596))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!487049 (= res!290581 (validKeyInArray!0 k0!2280))))

(declare-fun b!487050 () Bool)

(assert (=> b!487050 (= e!286596 e!286595)))

(declare-fun res!290583 () Bool)

(assert (=> b!487050 (=> (not res!290583) (not e!286595))))

(declare-datatypes ((SeekEntryResult!3628 0))(
  ( (MissingZero!3628 (index!16691 (_ BitVec 32))) (Found!3628 (index!16692 (_ BitVec 32))) (Intermediate!3628 (undefined!4440 Bool) (index!16693 (_ BitVec 32)) (x!45843 (_ BitVec 32))) (Undefined!3628) (MissingVacant!3628 (index!16694 (_ BitVec 32))) )
))
(declare-fun lt!219937 () SeekEntryResult!3628)

(assert (=> b!487050 (= res!290583 (or (= lt!219937 (MissingZero!3628 i!1204)) (= lt!219937 (MissingVacant!3628 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31527 (_ BitVec 32)) SeekEntryResult!3628)

(assert (=> b!487050 (= lt!219937 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!487051 () Bool)

(declare-fun res!290585 () Bool)

(assert (=> b!487051 (=> (not res!290585) (not e!286595))))

(assert (=> b!487051 (= res!290585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!487052 () Bool)

(declare-fun res!290584 () Bool)

(assert (=> b!487052 (=> (not res!290584) (not e!286596))))

(assert (=> b!487052 (= res!290584 (validKeyInArray!0 (select (arr!15154 a!3235) j!176)))))

(assert (= (and start!44316 res!290588) b!487046))

(assert (= (and b!487046 res!290582) b!487052))

(assert (= (and b!487052 res!290584) b!487049))

(assert (= (and b!487049 res!290581) b!487047))

(assert (= (and b!487047 res!290586) b!487050))

(assert (= (and b!487050 res!290583) b!487051))

(assert (= (and b!487051 res!290585) b!487048))

(assert (= (and b!487048 res!290587) b!487045))

(declare-fun m!466919 () Bool)

(assert (=> b!487052 m!466919))

(assert (=> b!487052 m!466919))

(declare-fun m!466921 () Bool)

(assert (=> b!487052 m!466921))

(declare-fun m!466923 () Bool)

(assert (=> b!487049 m!466923))

(declare-fun m!466925 () Bool)

(assert (=> b!487047 m!466925))

(declare-fun m!466927 () Bool)

(assert (=> b!487045 m!466927))

(declare-fun m!466929 () Bool)

(assert (=> b!487045 m!466929))

(declare-fun m!466931 () Bool)

(assert (=> b!487048 m!466931))

(declare-fun m!466933 () Bool)

(assert (=> b!487050 m!466933))

(declare-fun m!466935 () Bool)

(assert (=> start!44316 m!466935))

(declare-fun m!466937 () Bool)

(assert (=> start!44316 m!466937))

(declare-fun m!466939 () Bool)

(assert (=> b!487051 m!466939))

(check-sat (not b!487047) (not b!487049) (not b!487052) (not b!487050) (not b!487051) (not start!44316) (not b!487045) (not b!487048))
(check-sat)
