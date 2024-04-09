; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44082 () Bool)

(assert start!44082)

(declare-fun res!289310 () Bool)

(declare-fun e!285874 () Bool)

(assert (=> start!44082 (=> (not res!289310) (not e!285874))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44082 (= res!289310 (validMask!0 mask!3524))))

(assert (=> start!44082 e!285874))

(assert (=> start!44082 true))

(declare-datatypes ((array!31410 0))(
  ( (array!31411 (arr!15100 (Array (_ BitVec 32) (_ BitVec 64))) (size!15464 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31410)

(declare-fun array_inv!10874 (array!31410) Bool)

(assert (=> start!44082 (array_inv!10874 a!3235)))

(declare-fun b!485557 () Bool)

(declare-fun res!289309 () Bool)

(assert (=> b!485557 (=> (not res!289309) (not e!285874))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31410 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485557 (= res!289309 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!485558 () Bool)

(declare-fun res!289312 () Bool)

(assert (=> b!485558 (=> (not res!289312) (not e!285874))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485558 (= res!289312 (validKeyInArray!0 k0!2280))))

(declare-fun b!485559 () Bool)

(declare-fun res!289311 () Bool)

(assert (=> b!485559 (=> (not res!289311) (not e!285874))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!485559 (= res!289311 (validKeyInArray!0 (select (arr!15100 a!3235) j!176)))))

(declare-fun b!485560 () Bool)

(assert (=> b!485560 (= e!285874 false)))

(declare-datatypes ((SeekEntryResult!3574 0))(
  ( (MissingZero!3574 (index!16475 (_ BitVec 32))) (Found!3574 (index!16476 (_ BitVec 32))) (Intermediate!3574 (undefined!4386 Bool) (index!16477 (_ BitVec 32)) (x!45645 (_ BitVec 32))) (Undefined!3574) (MissingVacant!3574 (index!16478 (_ BitVec 32))) )
))
(declare-fun lt!219524 () SeekEntryResult!3574)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31410 (_ BitVec 32)) SeekEntryResult!3574)

(assert (=> b!485560 (= lt!219524 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!485561 () Bool)

(declare-fun res!289313 () Bool)

(assert (=> b!485561 (=> (not res!289313) (not e!285874))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!485561 (= res!289313 (and (= (size!15464 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15464 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15464 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!44082 res!289310) b!485561))

(assert (= (and b!485561 res!289313) b!485559))

(assert (= (and b!485559 res!289311) b!485558))

(assert (= (and b!485558 res!289312) b!485557))

(assert (= (and b!485557 res!289309) b!485560))

(declare-fun m!465669 () Bool)

(assert (=> start!44082 m!465669))

(declare-fun m!465671 () Bool)

(assert (=> start!44082 m!465671))

(declare-fun m!465673 () Bool)

(assert (=> b!485558 m!465673))

(declare-fun m!465675 () Bool)

(assert (=> b!485557 m!465675))

(declare-fun m!465677 () Bool)

(assert (=> b!485559 m!465677))

(assert (=> b!485559 m!465677))

(declare-fun m!465679 () Bool)

(assert (=> b!485559 m!465679))

(declare-fun m!465681 () Bool)

(assert (=> b!485560 m!465681))

(check-sat (not b!485558) (not b!485560) (not b!485559) (not b!485557) (not start!44082))
