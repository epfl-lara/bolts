; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44044 () Bool)

(assert start!44044)

(declare-fun b!485363 () Bool)

(declare-fun e!285796 () Bool)

(declare-datatypes ((array!31383 0))(
  ( (array!31384 (arr!15087 (Array (_ BitVec 32) (_ BitVec 64))) (size!15451 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31383)

(assert (=> b!485363 (= e!285796 (and (bvslt #b00000000000000000000000000000000 (size!15451 a!3235)) (bvsge (size!15451 a!3235) #b01111111111111111111111111111111)))))

(declare-fun b!485362 () Bool)

(declare-fun res!289114 () Bool)

(assert (=> b!485362 (=> (not res!289114) (not e!285796))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485362 (= res!289114 (validKeyInArray!0 k!2280))))

(declare-fun b!485361 () Bool)

(declare-fun res!289115 () Bool)

(assert (=> b!485361 (=> (not res!289115) (not e!285796))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!485361 (= res!289115 (validKeyInArray!0 (select (arr!15087 a!3235) j!176)))))

(declare-fun res!289112 () Bool)

(assert (=> start!44044 (=> (not res!289112) (not e!285796))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44044 (= res!289112 (validMask!0 mask!3524))))

(assert (=> start!44044 e!285796))

(assert (=> start!44044 true))

(declare-fun array_inv!10861 (array!31383) Bool)

(assert (=> start!44044 (array_inv!10861 a!3235)))

(declare-fun b!485360 () Bool)

(declare-fun res!289113 () Bool)

(assert (=> b!485360 (=> (not res!289113) (not e!285796))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!485360 (= res!289113 (and (= (size!15451 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15451 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15451 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!44044 res!289112) b!485360))

(assert (= (and b!485360 res!289113) b!485361))

(assert (= (and b!485361 res!289115) b!485362))

(assert (= (and b!485362 res!289114) b!485363))

(declare-fun m!465505 () Bool)

(assert (=> b!485362 m!465505))

(declare-fun m!465507 () Bool)

(assert (=> b!485361 m!465507))

(assert (=> b!485361 m!465507))

(declare-fun m!465509 () Bool)

(assert (=> b!485361 m!465509))

(declare-fun m!465511 () Bool)

(assert (=> start!44044 m!465511))

(declare-fun m!465513 () Bool)

(assert (=> start!44044 m!465513))

(push 1)

(assert (not start!44044))

(assert (not b!485362))

(assert (not b!485361))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

