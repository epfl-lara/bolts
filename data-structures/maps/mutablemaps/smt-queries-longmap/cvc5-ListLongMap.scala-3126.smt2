; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44062 () Bool)

(assert start!44062)

(declare-fun b!485398 () Bool)

(declare-fun res!289152 () Bool)

(declare-fun e!285813 () Bool)

(assert (=> b!485398 (=> (not res!289152) (not e!285813))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485398 (= res!289152 (validKeyInArray!0 k!2280))))

(declare-fun b!485399 () Bool)

(declare-fun res!289151 () Bool)

(assert (=> b!485399 (=> (not res!289151) (not e!285813))))

(declare-datatypes ((array!31390 0))(
  ( (array!31391 (arr!15090 (Array (_ BitVec 32) (_ BitVec 64))) (size!15454 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31390)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!485399 (= res!289151 (validKeyInArray!0 (select (arr!15090 a!3235) j!176)))))

(declare-fun b!485400 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(assert (=> b!485400 (= e!285813 (bvslt mask!3524 #b00000000000000000000000000000000))))

(declare-fun res!289154 () Bool)

(assert (=> start!44062 (=> (not res!289154) (not e!285813))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44062 (= res!289154 (validMask!0 mask!3524))))

(assert (=> start!44062 e!285813))

(assert (=> start!44062 true))

(declare-fun array_inv!10864 (array!31390) Bool)

(assert (=> start!44062 (array_inv!10864 a!3235)))

(declare-fun b!485401 () Bool)

(declare-fun res!289153 () Bool)

(assert (=> b!485401 (=> (not res!289153) (not e!285813))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!485401 (= res!289153 (and (= (size!15454 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15454 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15454 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!485402 () Bool)

(declare-fun res!289150 () Bool)

(assert (=> b!485402 (=> (not res!289150) (not e!285813))))

(declare-fun arrayContainsKey!0 (array!31390 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485402 (= res!289150 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!44062 res!289154) b!485401))

(assert (= (and b!485401 res!289153) b!485399))

(assert (= (and b!485399 res!289151) b!485398))

(assert (= (and b!485398 res!289152) b!485402))

(assert (= (and b!485402 res!289150) b!485400))

(declare-fun m!465535 () Bool)

(assert (=> b!485398 m!465535))

(declare-fun m!465537 () Bool)

(assert (=> b!485399 m!465537))

(assert (=> b!485399 m!465537))

(declare-fun m!465539 () Bool)

(assert (=> b!485399 m!465539))

(declare-fun m!465541 () Bool)

(assert (=> start!44062 m!465541))

(declare-fun m!465543 () Bool)

(assert (=> start!44062 m!465543))

(declare-fun m!465545 () Bool)

(assert (=> b!485402 m!465545))

(push 1)

(assert (not b!485399))

(assert (not b!485398))

(assert (not start!44062))

(assert (not b!485402))

(check-sat)

(pop 1)

