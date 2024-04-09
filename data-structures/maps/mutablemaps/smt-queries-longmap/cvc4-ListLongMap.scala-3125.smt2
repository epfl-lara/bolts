; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44048 () Bool)

(assert start!44048)

(declare-fun b!485387 () Bool)

(declare-fun e!285808 () Bool)

(declare-datatypes ((array!31387 0))(
  ( (array!31388 (arr!15089 (Array (_ BitVec 32) (_ BitVec 64))) (size!15453 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31387)

(assert (=> b!485387 (= e!285808 (and (bvslt #b00000000000000000000000000000000 (size!15453 a!3235)) (bvsge (size!15453 a!3235) #b01111111111111111111111111111111)))))

(declare-fun b!485385 () Bool)

(declare-fun res!289136 () Bool)

(assert (=> b!485385 (=> (not res!289136) (not e!285808))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485385 (= res!289136 (validKeyInArray!0 (select (arr!15089 a!3235) j!176)))))

(declare-fun res!289137 () Bool)

(assert (=> start!44048 (=> (not res!289137) (not e!285808))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44048 (= res!289137 (validMask!0 mask!3524))))

(assert (=> start!44048 e!285808))

(assert (=> start!44048 true))

(declare-fun array_inv!10863 (array!31387) Bool)

(assert (=> start!44048 (array_inv!10863 a!3235)))

(declare-fun b!485384 () Bool)

(declare-fun res!289138 () Bool)

(assert (=> b!485384 (=> (not res!289138) (not e!285808))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!485384 (= res!289138 (and (= (size!15453 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15453 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15453 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!485386 () Bool)

(declare-fun res!289139 () Bool)

(assert (=> b!485386 (=> (not res!289139) (not e!285808))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!485386 (= res!289139 (validKeyInArray!0 k!2280))))

(assert (= (and start!44048 res!289137) b!485384))

(assert (= (and b!485384 res!289138) b!485385))

(assert (= (and b!485385 res!289136) b!485386))

(assert (= (and b!485386 res!289139) b!485387))

(declare-fun m!465525 () Bool)

(assert (=> b!485385 m!465525))

(assert (=> b!485385 m!465525))

(declare-fun m!465527 () Bool)

(assert (=> b!485385 m!465527))

(declare-fun m!465529 () Bool)

(assert (=> start!44048 m!465529))

(declare-fun m!465531 () Bool)

(assert (=> start!44048 m!465531))

(declare-fun m!465533 () Bool)

(assert (=> b!485386 m!465533))

(push 1)

(assert (not b!485386))

(assert (not b!485385))

(assert (not start!44048))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

