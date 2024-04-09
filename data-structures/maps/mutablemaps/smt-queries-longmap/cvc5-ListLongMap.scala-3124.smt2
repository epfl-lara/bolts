; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44038 () Bool)

(assert start!44038)

(declare-fun b!485324 () Bool)

(declare-fun res!289076 () Bool)

(declare-fun e!285778 () Bool)

(assert (=> b!485324 (=> (not res!289076) (not e!285778))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31377 0))(
  ( (array!31378 (arr!15084 (Array (_ BitVec 32) (_ BitVec 64))) (size!15448 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31377)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!485324 (= res!289076 (and (= (size!15448 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15448 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15448 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!485326 () Bool)

(declare-fun res!289079 () Bool)

(assert (=> b!485326 (=> (not res!289079) (not e!285778))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485326 (= res!289079 (validKeyInArray!0 k!2280))))

(declare-fun res!289077 () Bool)

(assert (=> start!44038 (=> (not res!289077) (not e!285778))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44038 (= res!289077 (validMask!0 mask!3524))))

(assert (=> start!44038 e!285778))

(assert (=> start!44038 true))

(declare-fun array_inv!10858 (array!31377) Bool)

(assert (=> start!44038 (array_inv!10858 a!3235)))

(declare-fun b!485327 () Bool)

(assert (=> b!485327 (= e!285778 (bvsge #b00000000000000000000000000000000 (size!15448 a!3235)))))

(declare-fun b!485325 () Bool)

(declare-fun res!289078 () Bool)

(assert (=> b!485325 (=> (not res!289078) (not e!285778))))

(assert (=> b!485325 (= res!289078 (validKeyInArray!0 (select (arr!15084 a!3235) j!176)))))

(assert (= (and start!44038 res!289077) b!485324))

(assert (= (and b!485324 res!289076) b!485325))

(assert (= (and b!485325 res!289078) b!485326))

(assert (= (and b!485326 res!289079) b!485327))

(declare-fun m!465475 () Bool)

(assert (=> b!485326 m!465475))

(declare-fun m!465477 () Bool)

(assert (=> start!44038 m!465477))

(declare-fun m!465479 () Bool)

(assert (=> start!44038 m!465479))

(declare-fun m!465481 () Bool)

(assert (=> b!485325 m!465481))

(assert (=> b!485325 m!465481))

(declare-fun m!465483 () Bool)

(assert (=> b!485325 m!465483))

(push 1)

(assert (not b!485326))

(assert (not b!485325))

(assert (not start!44038))

(check-sat)

