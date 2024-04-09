; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44100 () Bool)

(assert start!44100)

(declare-fun b!485692 () Bool)

(declare-fun e!285927 () Bool)

(assert (=> b!485692 (= e!285927 false)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3583 0))(
  ( (MissingZero!3583 (index!16511 (_ BitVec 32))) (Found!3583 (index!16512 (_ BitVec 32))) (Intermediate!3583 (undefined!4395 Bool) (index!16513 (_ BitVec 32)) (x!45678 (_ BitVec 32))) (Undefined!3583) (MissingVacant!3583 (index!16514 (_ BitVec 32))) )
))
(declare-fun lt!219551 () SeekEntryResult!3583)

(declare-datatypes ((array!31428 0))(
  ( (array!31429 (arr!15109 (Array (_ BitVec 32) (_ BitVec 64))) (size!15473 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31428)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31428 (_ BitVec 32)) SeekEntryResult!3583)

(assert (=> b!485692 (= lt!219551 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!485693 () Bool)

(declare-fun res!289448 () Bool)

(assert (=> b!485693 (=> (not res!289448) (not e!285927))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485693 (= res!289448 (validKeyInArray!0 k0!2280))))

(declare-fun b!485694 () Bool)

(declare-fun res!289446 () Bool)

(assert (=> b!485694 (=> (not res!289446) (not e!285927))))

(declare-fun arrayContainsKey!0 (array!31428 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485694 (= res!289446 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!485695 () Bool)

(declare-fun res!289447 () Bool)

(assert (=> b!485695 (=> (not res!289447) (not e!285927))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!485695 (= res!289447 (and (= (size!15473 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15473 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15473 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!485696 () Bool)

(declare-fun res!289444 () Bool)

(assert (=> b!485696 (=> (not res!289444) (not e!285927))))

(assert (=> b!485696 (= res!289444 (validKeyInArray!0 (select (arr!15109 a!3235) j!176)))))

(declare-fun res!289445 () Bool)

(assert (=> start!44100 (=> (not res!289445) (not e!285927))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44100 (= res!289445 (validMask!0 mask!3524))))

(assert (=> start!44100 e!285927))

(assert (=> start!44100 true))

(declare-fun array_inv!10883 (array!31428) Bool)

(assert (=> start!44100 (array_inv!10883 a!3235)))

(assert (= (and start!44100 res!289445) b!485695))

(assert (= (and b!485695 res!289447) b!485696))

(assert (= (and b!485696 res!289444) b!485693))

(assert (= (and b!485693 res!289448) b!485694))

(assert (= (and b!485694 res!289446) b!485692))

(declare-fun m!465795 () Bool)

(assert (=> b!485696 m!465795))

(assert (=> b!485696 m!465795))

(declare-fun m!465797 () Bool)

(assert (=> b!485696 m!465797))

(declare-fun m!465799 () Bool)

(assert (=> start!44100 m!465799))

(declare-fun m!465801 () Bool)

(assert (=> start!44100 m!465801))

(declare-fun m!465803 () Bool)

(assert (=> b!485693 m!465803))

(declare-fun m!465805 () Bool)

(assert (=> b!485692 m!465805))

(declare-fun m!465807 () Bool)

(assert (=> b!485694 m!465807))

(check-sat (not b!485694) (not start!44100) (not b!485692) (not b!485696) (not b!485693))
