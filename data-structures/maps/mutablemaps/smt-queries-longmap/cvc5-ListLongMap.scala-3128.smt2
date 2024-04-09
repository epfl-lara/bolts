; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44074 () Bool)

(assert start!44074)

(declare-fun res!289243 () Bool)

(declare-fun e!285850 () Bool)

(assert (=> start!44074 (=> (not res!289243) (not e!285850))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44074 (= res!289243 (validMask!0 mask!3524))))

(assert (=> start!44074 e!285850))

(assert (=> start!44074 true))

(declare-datatypes ((array!31402 0))(
  ( (array!31403 (arr!15096 (Array (_ BitVec 32) (_ BitVec 64))) (size!15460 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31402)

(declare-fun array_inv!10870 (array!31402) Bool)

(assert (=> start!44074 (array_inv!10870 a!3235)))

(declare-fun b!485490 () Bool)

(declare-fun res!289247 () Bool)

(assert (=> b!485490 (=> (not res!289247) (not e!285850))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!485490 (= res!289247 (and (= (size!15460 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15460 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15460 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!485491 () Bool)

(assert (=> b!485491 (= e!285850 (bvslt mask!3524 #b00000000000000000000000000000000))))

(declare-fun b!485492 () Bool)

(declare-fun res!289245 () Bool)

(assert (=> b!485492 (=> (not res!289245) (not e!285850))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3570 0))(
  ( (MissingZero!3570 (index!16459 (_ BitVec 32))) (Found!3570 (index!16460 (_ BitVec 32))) (Intermediate!3570 (undefined!4382 Bool) (index!16461 (_ BitVec 32)) (x!45633 (_ BitVec 32))) (Undefined!3570) (MissingVacant!3570 (index!16462 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31402 (_ BitVec 32)) SeekEntryResult!3570)

(assert (=> b!485492 (= res!289245 (not (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) (MissingZero!3570 i!1204))))))

(declare-fun b!485493 () Bool)

(declare-fun res!289244 () Bool)

(assert (=> b!485493 (=> (not res!289244) (not e!285850))))

(declare-fun arrayContainsKey!0 (array!31402 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485493 (= res!289244 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!485494 () Bool)

(declare-fun res!289246 () Bool)

(assert (=> b!485494 (=> (not res!289246) (not e!285850))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485494 (= res!289246 (validKeyInArray!0 (select (arr!15096 a!3235) j!176)))))

(declare-fun b!485495 () Bool)

(declare-fun res!289242 () Bool)

(assert (=> b!485495 (=> (not res!289242) (not e!285850))))

(assert (=> b!485495 (= res!289242 (validKeyInArray!0 k!2280))))

(assert (= (and start!44074 res!289243) b!485490))

(assert (= (and b!485490 res!289247) b!485494))

(assert (= (and b!485494 res!289246) b!485495))

(assert (= (and b!485495 res!289242) b!485493))

(assert (= (and b!485493 res!289244) b!485492))

(assert (= (and b!485492 res!289245) b!485491))

(declare-fun m!465613 () Bool)

(assert (=> b!485495 m!465613))

(declare-fun m!465615 () Bool)

(assert (=> start!44074 m!465615))

(declare-fun m!465617 () Bool)

(assert (=> start!44074 m!465617))

(declare-fun m!465619 () Bool)

(assert (=> b!485492 m!465619))

(declare-fun m!465621 () Bool)

(assert (=> b!485493 m!465621))

(declare-fun m!465623 () Bool)

(assert (=> b!485494 m!465623))

(assert (=> b!485494 m!465623))

(declare-fun m!465625 () Bool)

(assert (=> b!485494 m!465625))

(push 1)

(assert (not b!485495))

(assert (not start!44074))

(assert (not b!485493))

(assert (not b!485494))

(assert (not b!485492))

(check-sat)

