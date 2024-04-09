; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44086 () Bool)

(assert start!44086)

(declare-fun b!485587 () Bool)

(declare-fun res!289339 () Bool)

(declare-fun e!285886 () Bool)

(assert (=> b!485587 (=> (not res!289339) (not e!285886))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485587 (= res!289339 (validKeyInArray!0 k!2280))))

(declare-fun b!485588 () Bool)

(declare-fun res!289341 () Bool)

(assert (=> b!485588 (=> (not res!289341) (not e!285886))))

(declare-datatypes ((array!31414 0))(
  ( (array!31415 (arr!15102 (Array (_ BitVec 32) (_ BitVec 64))) (size!15466 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31414)

(declare-fun arrayContainsKey!0 (array!31414 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485588 (= res!289341 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!485589 () Bool)

(assert (=> b!485589 (= e!285886 false)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3576 0))(
  ( (MissingZero!3576 (index!16483 (_ BitVec 32))) (Found!3576 (index!16484 (_ BitVec 32))) (Intermediate!3576 (undefined!4388 Bool) (index!16485 (_ BitVec 32)) (x!45655 (_ BitVec 32))) (Undefined!3576) (MissingVacant!3576 (index!16486 (_ BitVec 32))) )
))
(declare-fun lt!219530 () SeekEntryResult!3576)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31414 (_ BitVec 32)) SeekEntryResult!3576)

(assert (=> b!485589 (= lt!219530 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!485590 () Bool)

(declare-fun res!289343 () Bool)

(assert (=> b!485590 (=> (not res!289343) (not e!285886))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!485590 (= res!289343 (and (= (size!15466 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15466 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15466 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!289340 () Bool)

(assert (=> start!44086 (=> (not res!289340) (not e!285886))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44086 (= res!289340 (validMask!0 mask!3524))))

(assert (=> start!44086 e!285886))

(assert (=> start!44086 true))

(declare-fun array_inv!10876 (array!31414) Bool)

(assert (=> start!44086 (array_inv!10876 a!3235)))

(declare-fun b!485591 () Bool)

(declare-fun res!289342 () Bool)

(assert (=> b!485591 (=> (not res!289342) (not e!285886))))

(assert (=> b!485591 (= res!289342 (validKeyInArray!0 (select (arr!15102 a!3235) j!176)))))

(assert (= (and start!44086 res!289340) b!485590))

(assert (= (and b!485590 res!289343) b!485591))

(assert (= (and b!485591 res!289342) b!485587))

(assert (= (and b!485587 res!289339) b!485588))

(assert (= (and b!485588 res!289341) b!485589))

(declare-fun m!465697 () Bool)

(assert (=> b!485588 m!465697))

(declare-fun m!465699 () Bool)

(assert (=> start!44086 m!465699))

(declare-fun m!465701 () Bool)

(assert (=> start!44086 m!465701))

(declare-fun m!465703 () Bool)

(assert (=> b!485591 m!465703))

(assert (=> b!485591 m!465703))

(declare-fun m!465705 () Bool)

(assert (=> b!485591 m!465705))

(declare-fun m!465707 () Bool)

(assert (=> b!485587 m!465707))

(declare-fun m!465709 () Bool)

(assert (=> b!485589 m!465709))

(push 1)

(assert (not b!485589))

(assert (not start!44086))

(assert (not b!485587))

(assert (not b!485588))

(assert (not b!485591))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

