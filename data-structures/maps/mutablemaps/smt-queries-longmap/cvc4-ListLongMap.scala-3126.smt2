; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44066 () Bool)

(assert start!44066)

(declare-fun b!485428 () Bool)

(declare-fun res!289181 () Bool)

(declare-fun e!285826 () Bool)

(assert (=> b!485428 (=> (not res!289181) (not e!285826))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31394 0))(
  ( (array!31395 (arr!15092 (Array (_ BitVec 32) (_ BitVec 64))) (size!15456 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31394)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!485428 (= res!289181 (and (= (size!15456 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15456 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15456 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!485429 () Bool)

(declare-fun res!289182 () Bool)

(assert (=> b!485429 (=> (not res!289182) (not e!285826))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485429 (= res!289182 (validKeyInArray!0 (select (arr!15092 a!3235) j!176)))))

(declare-fun res!289180 () Bool)

(assert (=> start!44066 (=> (not res!289180) (not e!285826))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44066 (= res!289180 (validMask!0 mask!3524))))

(assert (=> start!44066 e!285826))

(assert (=> start!44066 true))

(declare-fun array_inv!10866 (array!31394) Bool)

(assert (=> start!44066 (array_inv!10866 a!3235)))

(declare-fun b!485430 () Bool)

(declare-fun res!289184 () Bool)

(assert (=> b!485430 (=> (not res!289184) (not e!285826))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!485430 (= res!289184 (validKeyInArray!0 k!2280))))

(declare-fun b!485431 () Bool)

(assert (=> b!485431 (= e!285826 (bvslt mask!3524 #b00000000000000000000000000000000))))

(declare-fun b!485432 () Bool)

(declare-fun res!289183 () Bool)

(assert (=> b!485432 (=> (not res!289183) (not e!285826))))

(declare-fun arrayContainsKey!0 (array!31394 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485432 (= res!289183 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!44066 res!289180) b!485428))

(assert (= (and b!485428 res!289181) b!485429))

(assert (= (and b!485429 res!289182) b!485430))

(assert (= (and b!485430 res!289184) b!485432))

(assert (= (and b!485432 res!289183) b!485431))

(declare-fun m!465559 () Bool)

(assert (=> b!485429 m!465559))

(assert (=> b!485429 m!465559))

(declare-fun m!465561 () Bool)

(assert (=> b!485429 m!465561))

(declare-fun m!465563 () Bool)

(assert (=> start!44066 m!465563))

(declare-fun m!465565 () Bool)

(assert (=> start!44066 m!465565))

(declare-fun m!465567 () Bool)

(assert (=> b!485430 m!465567))

(declare-fun m!465569 () Bool)

(assert (=> b!485432 m!465569))

(push 1)

(assert (not b!485432))

(assert (not b!485430))

(assert (not b!485429))

(assert (not start!44066))

(check-sat)

