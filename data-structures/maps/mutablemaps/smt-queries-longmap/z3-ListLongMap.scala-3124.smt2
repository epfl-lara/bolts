; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44040 () Bool)

(assert start!44040)

(declare-fun res!289089 () Bool)

(declare-fun e!285783 () Bool)

(assert (=> start!44040 (=> (not res!289089) (not e!285783))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44040 (= res!289089 (validMask!0 mask!3524))))

(assert (=> start!44040 e!285783))

(assert (=> start!44040 true))

(declare-datatypes ((array!31379 0))(
  ( (array!31380 (arr!15085 (Array (_ BitVec 32) (_ BitVec 64))) (size!15449 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31379)

(declare-fun array_inv!10859 (array!31379) Bool)

(assert (=> start!44040 (array_inv!10859 a!3235)))

(declare-fun b!485336 () Bool)

(declare-fun res!289088 () Bool)

(assert (=> b!485336 (=> (not res!289088) (not e!285783))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!485336 (= res!289088 (and (= (size!15449 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15449 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15449 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!485338 () Bool)

(declare-fun res!289091 () Bool)

(assert (=> b!485338 (=> (not res!289091) (not e!285783))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485338 (= res!289091 (validKeyInArray!0 k0!2280))))

(declare-fun b!485339 () Bool)

(assert (=> b!485339 (= e!285783 (bvsge #b00000000000000000000000000000000 (size!15449 a!3235)))))

(declare-fun b!485337 () Bool)

(declare-fun res!289090 () Bool)

(assert (=> b!485337 (=> (not res!289090) (not e!285783))))

(assert (=> b!485337 (= res!289090 (validKeyInArray!0 (select (arr!15085 a!3235) j!176)))))

(assert (= (and start!44040 res!289089) b!485336))

(assert (= (and b!485336 res!289088) b!485337))

(assert (= (and b!485337 res!289090) b!485338))

(assert (= (and b!485338 res!289091) b!485339))

(declare-fun m!465485 () Bool)

(assert (=> start!44040 m!465485))

(declare-fun m!465487 () Bool)

(assert (=> start!44040 m!465487))

(declare-fun m!465489 () Bool)

(assert (=> b!485338 m!465489))

(declare-fun m!465491 () Bool)

(assert (=> b!485337 m!465491))

(assert (=> b!485337 m!465491))

(declare-fun m!465493 () Bool)

(assert (=> b!485337 m!465493))

(check-sat (not b!485338) (not b!485337) (not start!44040))
(check-sat)
