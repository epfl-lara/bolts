; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44042 () Bool)

(assert start!44042)

(declare-fun b!485350 () Bool)

(declare-fun res!289103 () Bool)

(declare-fun e!285790 () Bool)

(assert (=> b!485350 (=> (not res!289103) (not e!285790))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485350 (= res!289103 (validKeyInArray!0 k!2280))))

(declare-fun res!289101 () Bool)

(assert (=> start!44042 (=> (not res!289101) (not e!285790))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44042 (= res!289101 (validMask!0 mask!3524))))

(assert (=> start!44042 e!285790))

(assert (=> start!44042 true))

(declare-datatypes ((array!31381 0))(
  ( (array!31382 (arr!15086 (Array (_ BitVec 32) (_ BitVec 64))) (size!15450 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31381)

(declare-fun array_inv!10860 (array!31381) Bool)

(assert (=> start!44042 (array_inv!10860 a!3235)))

(declare-fun b!485348 () Bool)

(declare-fun res!289100 () Bool)

(assert (=> b!485348 (=> (not res!289100) (not e!285790))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!485348 (= res!289100 (and (= (size!15450 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15450 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15450 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!485349 () Bool)

(declare-fun res!289102 () Bool)

(assert (=> b!485349 (=> (not res!289102) (not e!285790))))

(assert (=> b!485349 (= res!289102 (validKeyInArray!0 (select (arr!15086 a!3235) j!176)))))

(declare-fun b!485351 () Bool)

(assert (=> b!485351 (= e!285790 (bvsge #b00000000000000000000000000000000 (size!15450 a!3235)))))

(assert (= (and start!44042 res!289101) b!485348))

(assert (= (and b!485348 res!289100) b!485349))

(assert (= (and b!485349 res!289102) b!485350))

(assert (= (and b!485350 res!289103) b!485351))

(declare-fun m!465495 () Bool)

(assert (=> b!485350 m!465495))

(declare-fun m!465497 () Bool)

(assert (=> start!44042 m!465497))

(declare-fun m!465499 () Bool)

(assert (=> start!44042 m!465499))

(declare-fun m!465501 () Bool)

(assert (=> b!485349 m!465501))

(assert (=> b!485349 m!465501))

(declare-fun m!465503 () Bool)

(assert (=> b!485349 m!465503))

(push 1)

(assert (not b!485350))

(assert (not b!485349))

(assert (not start!44042))

(check-sat)

(pop 1)

(push 1)

(check-sat)

