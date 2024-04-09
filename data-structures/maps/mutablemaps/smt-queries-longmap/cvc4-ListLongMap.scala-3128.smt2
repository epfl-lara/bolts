; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44078 () Bool)

(assert start!44078)

(declare-fun b!485526 () Bool)

(declare-fun res!289283 () Bool)

(declare-fun e!285862 () Bool)

(assert (=> b!485526 (=> (not res!289283) (not e!285862))))

(declare-datatypes ((array!31406 0))(
  ( (array!31407 (arr!15098 (Array (_ BitVec 32) (_ BitVec 64))) (size!15462 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31406)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31406 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485526 (= res!289283 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!485527 () Bool)

(declare-fun res!289278 () Bool)

(assert (=> b!485527 (=> (not res!289278) (not e!285862))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485527 (= res!289278 (validKeyInArray!0 k!2280))))

(declare-fun b!485528 () Bool)

(declare-fun res!289280 () Bool)

(assert (=> b!485528 (=> (not res!289280) (not e!285862))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!485528 (= res!289280 (validKeyInArray!0 (select (arr!15098 a!3235) j!176)))))

(declare-fun res!289282 () Bool)

(assert (=> start!44078 (=> (not res!289282) (not e!285862))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44078 (= res!289282 (validMask!0 mask!3524))))

(assert (=> start!44078 e!285862))

(assert (=> start!44078 true))

(declare-fun array_inv!10872 (array!31406) Bool)

(assert (=> start!44078 (array_inv!10872 a!3235)))

(declare-fun b!485529 () Bool)

(declare-fun res!289279 () Bool)

(assert (=> b!485529 (=> (not res!289279) (not e!285862))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3572 0))(
  ( (MissingZero!3572 (index!16467 (_ BitVec 32))) (Found!3572 (index!16468 (_ BitVec 32))) (Intermediate!3572 (undefined!4384 Bool) (index!16469 (_ BitVec 32)) (x!45635 (_ BitVec 32))) (Undefined!3572) (MissingVacant!3572 (index!16470 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31406 (_ BitVec 32)) SeekEntryResult!3572)

(assert (=> b!485529 (= res!289279 (not (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) (MissingZero!3572 i!1204))))))

(declare-fun b!485530 () Bool)

(assert (=> b!485530 (= e!285862 (bvslt mask!3524 #b00000000000000000000000000000000))))

(declare-fun b!485531 () Bool)

(declare-fun res!289281 () Bool)

(assert (=> b!485531 (=> (not res!289281) (not e!285862))))

(assert (=> b!485531 (= res!289281 (and (= (size!15462 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15462 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15462 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!44078 res!289282) b!485531))

(assert (= (and b!485531 res!289281) b!485528))

(assert (= (and b!485528 res!289280) b!485527))

(assert (= (and b!485527 res!289278) b!485526))

(assert (= (and b!485526 res!289283) b!485529))

(assert (= (and b!485529 res!289279) b!485530))

(declare-fun m!465641 () Bool)

(assert (=> b!485528 m!465641))

(assert (=> b!485528 m!465641))

(declare-fun m!465643 () Bool)

(assert (=> b!485528 m!465643))

(declare-fun m!465645 () Bool)

(assert (=> b!485527 m!465645))

(declare-fun m!465647 () Bool)

(assert (=> b!485526 m!465647))

(declare-fun m!465649 () Bool)

(assert (=> b!485529 m!465649))

(declare-fun m!465651 () Bool)

(assert (=> start!44078 m!465651))

(declare-fun m!465653 () Bool)

(assert (=> start!44078 m!465653))

(push 1)

(assert (not b!485527))

(assert (not b!485526))

(assert (not start!44078))

(assert (not b!485528))

(assert (not b!485529))

(check-sat)

(pop 1)

(push 1)

(check-sat)

