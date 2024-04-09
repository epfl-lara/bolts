; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44092 () Bool)

(assert start!44092)

(declare-fun b!485632 () Bool)

(declare-fun e!285904 () Bool)

(assert (=> b!485632 (= e!285904 false)))

(declare-datatypes ((SeekEntryResult!3579 0))(
  ( (MissingZero!3579 (index!16495 (_ BitVec 32))) (Found!3579 (index!16496 (_ BitVec 32))) (Intermediate!3579 (undefined!4391 Bool) (index!16497 (_ BitVec 32)) (x!45666 (_ BitVec 32))) (Undefined!3579) (MissingVacant!3579 (index!16498 (_ BitVec 32))) )
))
(declare-fun lt!219539 () SeekEntryResult!3579)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31420 0))(
  ( (array!31421 (arr!15105 (Array (_ BitVec 32) (_ BitVec 64))) (size!15469 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31420)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31420 (_ BitVec 32)) SeekEntryResult!3579)

(assert (=> b!485632 (= lt!219539 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!485633 () Bool)

(declare-fun res!289386 () Bool)

(assert (=> b!485633 (=> (not res!289386) (not e!285904))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485633 (= res!289386 (validKeyInArray!0 (select (arr!15105 a!3235) j!176)))))

(declare-fun b!485634 () Bool)

(declare-fun res!289385 () Bool)

(assert (=> b!485634 (=> (not res!289385) (not e!285904))))

(assert (=> b!485634 (= res!289385 (validKeyInArray!0 k!2280))))

(declare-fun b!485635 () Bool)

(declare-fun res!289388 () Bool)

(assert (=> b!485635 (=> (not res!289388) (not e!285904))))

(declare-fun arrayContainsKey!0 (array!31420 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485635 (= res!289388 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!289387 () Bool)

(assert (=> start!44092 (=> (not res!289387) (not e!285904))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44092 (= res!289387 (validMask!0 mask!3524))))

(assert (=> start!44092 e!285904))

(assert (=> start!44092 true))

(declare-fun array_inv!10879 (array!31420) Bool)

(assert (=> start!44092 (array_inv!10879 a!3235)))

(declare-fun b!485636 () Bool)

(declare-fun res!289384 () Bool)

(assert (=> b!485636 (=> (not res!289384) (not e!285904))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!485636 (= res!289384 (and (= (size!15469 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15469 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15469 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!44092 res!289387) b!485636))

(assert (= (and b!485636 res!289384) b!485633))

(assert (= (and b!485633 res!289386) b!485634))

(assert (= (and b!485634 res!289385) b!485635))

(assert (= (and b!485635 res!289388) b!485632))

(declare-fun m!465739 () Bool)

(assert (=> b!485634 m!465739))

(declare-fun m!465741 () Bool)

(assert (=> b!485633 m!465741))

(assert (=> b!485633 m!465741))

(declare-fun m!465743 () Bool)

(assert (=> b!485633 m!465743))

(declare-fun m!465745 () Bool)

(assert (=> b!485632 m!465745))

(declare-fun m!465747 () Bool)

(assert (=> b!485635 m!465747))

(declare-fun m!465749 () Bool)

(assert (=> start!44092 m!465749))

(declare-fun m!465751 () Bool)

(assert (=> start!44092 m!465751))

(push 1)

(assert (not b!485633))

(assert (not start!44092))

(assert (not b!485634))

(assert (not b!485632))

(assert (not b!485635))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

