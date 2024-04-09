; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44106 () Bool)

(assert start!44106)

(declare-fun b!485737 () Bool)

(declare-fun e!285946 () Bool)

(assert (=> b!485737 (= e!285946 false)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31434 0))(
  ( (array!31435 (arr!15112 (Array (_ BitVec 32) (_ BitVec 64))) (size!15476 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31434)

(declare-datatypes ((SeekEntryResult!3586 0))(
  ( (MissingZero!3586 (index!16523 (_ BitVec 32))) (Found!3586 (index!16524 (_ BitVec 32))) (Intermediate!3586 (undefined!4398 Bool) (index!16525 (_ BitVec 32)) (x!45689 (_ BitVec 32))) (Undefined!3586) (MissingVacant!3586 (index!16526 (_ BitVec 32))) )
))
(declare-fun lt!219560 () SeekEntryResult!3586)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31434 (_ BitVec 32)) SeekEntryResult!3586)

(assert (=> b!485737 (= lt!219560 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!485738 () Bool)

(declare-fun res!289493 () Bool)

(assert (=> b!485738 (=> (not res!289493) (not e!285946))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485738 (= res!289493 (validKeyInArray!0 (select (arr!15112 a!3235) j!176)))))

(declare-fun res!289489 () Bool)

(assert (=> start!44106 (=> (not res!289489) (not e!285946))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44106 (= res!289489 (validMask!0 mask!3524))))

(assert (=> start!44106 e!285946))

(assert (=> start!44106 true))

(declare-fun array_inv!10886 (array!31434) Bool)

(assert (=> start!44106 (array_inv!10886 a!3235)))

(declare-fun b!485739 () Bool)

(declare-fun res!289490 () Bool)

(assert (=> b!485739 (=> (not res!289490) (not e!285946))))

(assert (=> b!485739 (= res!289490 (validKeyInArray!0 k0!2280))))

(declare-fun b!485740 () Bool)

(declare-fun res!289491 () Bool)

(assert (=> b!485740 (=> (not res!289491) (not e!285946))))

(declare-fun arrayContainsKey!0 (array!31434 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485740 (= res!289491 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!485741 () Bool)

(declare-fun res!289492 () Bool)

(assert (=> b!485741 (=> (not res!289492) (not e!285946))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!485741 (= res!289492 (and (= (size!15476 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15476 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15476 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!44106 res!289489) b!485741))

(assert (= (and b!485741 res!289492) b!485738))

(assert (= (and b!485738 res!289493) b!485739))

(assert (= (and b!485739 res!289490) b!485740))

(assert (= (and b!485740 res!289491) b!485737))

(declare-fun m!465837 () Bool)

(assert (=> start!44106 m!465837))

(declare-fun m!465839 () Bool)

(assert (=> start!44106 m!465839))

(declare-fun m!465841 () Bool)

(assert (=> b!485740 m!465841))

(declare-fun m!465843 () Bool)

(assert (=> b!485737 m!465843))

(declare-fun m!465845 () Bool)

(assert (=> b!485738 m!465845))

(assert (=> b!485738 m!465845))

(declare-fun m!465847 () Bool)

(assert (=> b!485738 m!465847))

(declare-fun m!465849 () Bool)

(assert (=> b!485739 m!465849))

(check-sat (not b!485738) (not b!485739) (not b!485740) (not start!44106) (not b!485737))
