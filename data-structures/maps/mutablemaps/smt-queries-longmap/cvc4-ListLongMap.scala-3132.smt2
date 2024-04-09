; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44102 () Bool)

(assert start!44102)

(declare-fun b!485707 () Bool)

(declare-fun res!289462 () Bool)

(declare-fun e!285934 () Bool)

(assert (=> b!485707 (=> (not res!289462) (not e!285934))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31430 0))(
  ( (array!31431 (arr!15110 (Array (_ BitVec 32) (_ BitVec 64))) (size!15474 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31430)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!485707 (= res!289462 (and (= (size!15474 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15474 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15474 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!485708 () Bool)

(declare-fun res!289461 () Bool)

(assert (=> b!485708 (=> (not res!289461) (not e!285934))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485708 (= res!289461 (validKeyInArray!0 (select (arr!15110 a!3235) j!176)))))

(declare-fun b!485710 () Bool)

(declare-fun res!289463 () Bool)

(assert (=> b!485710 (=> (not res!289463) (not e!285934))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!485710 (= res!289463 (validKeyInArray!0 k!2280))))

(declare-fun b!485711 () Bool)

(assert (=> b!485711 (= e!285934 false)))

(declare-datatypes ((SeekEntryResult!3584 0))(
  ( (MissingZero!3584 (index!16515 (_ BitVec 32))) (Found!3584 (index!16516 (_ BitVec 32))) (Intermediate!3584 (undefined!4396 Bool) (index!16517 (_ BitVec 32)) (x!45679 (_ BitVec 32))) (Undefined!3584) (MissingVacant!3584 (index!16518 (_ BitVec 32))) )
))
(declare-fun lt!219554 () SeekEntryResult!3584)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31430 (_ BitVec 32)) SeekEntryResult!3584)

(assert (=> b!485711 (= lt!219554 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!485709 () Bool)

(declare-fun res!289459 () Bool)

(assert (=> b!485709 (=> (not res!289459) (not e!285934))))

(declare-fun arrayContainsKey!0 (array!31430 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485709 (= res!289459 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!289460 () Bool)

(assert (=> start!44102 (=> (not res!289460) (not e!285934))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44102 (= res!289460 (validMask!0 mask!3524))))

(assert (=> start!44102 e!285934))

(assert (=> start!44102 true))

(declare-fun array_inv!10884 (array!31430) Bool)

(assert (=> start!44102 (array_inv!10884 a!3235)))

(assert (= (and start!44102 res!289460) b!485707))

(assert (= (and b!485707 res!289462) b!485708))

(assert (= (and b!485708 res!289461) b!485710))

(assert (= (and b!485710 res!289463) b!485709))

(assert (= (and b!485709 res!289459) b!485711))

(declare-fun m!465809 () Bool)

(assert (=> b!485709 m!465809))

(declare-fun m!465811 () Bool)

(assert (=> b!485708 m!465811))

(assert (=> b!485708 m!465811))

(declare-fun m!465813 () Bool)

(assert (=> b!485708 m!465813))

(declare-fun m!465815 () Bool)

(assert (=> b!485711 m!465815))

(declare-fun m!465817 () Bool)

(assert (=> b!485710 m!465817))

(declare-fun m!465819 () Bool)

(assert (=> start!44102 m!465819))

(declare-fun m!465821 () Bool)

(assert (=> start!44102 m!465821))

(push 1)

(assert (not b!485709))

(assert (not b!485711))

(assert (not b!485708))

(assert (not b!485710))

(assert (not start!44102))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

