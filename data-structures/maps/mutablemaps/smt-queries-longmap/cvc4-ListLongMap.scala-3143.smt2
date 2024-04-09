; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44294 () Bool)

(assert start!44294)

(declare-fun b!486782 () Bool)

(declare-fun res!290318 () Bool)

(declare-fun e!286498 () Bool)

(assert (=> b!486782 (=> (not res!290318) (not e!286498))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!486782 (= res!290318 (validKeyInArray!0 k!2280))))

(declare-fun b!486783 () Bool)

(declare-fun res!290321 () Bool)

(assert (=> b!486783 (=> (not res!290321) (not e!286498))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31505 0))(
  ( (array!31506 (arr!15143 (Array (_ BitVec 32) (_ BitVec 64))) (size!15507 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31505)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!486783 (= res!290321 (and (= (size!15507 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15507 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15507 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!486784 () Bool)

(declare-fun e!286496 () Bool)

(assert (=> b!486784 (= e!286496 false)))

(declare-fun lt!219872 () Bool)

(declare-datatypes ((List!9354 0))(
  ( (Nil!9351) (Cons!9350 (h!10206 (_ BitVec 64)) (t!15590 List!9354)) )
))
(declare-fun arrayNoDuplicates!0 (array!31505 (_ BitVec 32) List!9354) Bool)

(assert (=> b!486784 (= lt!219872 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9351))))

(declare-fun b!486786 () Bool)

(declare-fun res!290324 () Bool)

(assert (=> b!486786 (=> (not res!290324) (not e!286498))))

(declare-fun arrayContainsKey!0 (array!31505 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!486786 (= res!290324 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!486787 () Bool)

(declare-fun res!290323 () Bool)

(assert (=> b!486787 (=> (not res!290323) (not e!286498))))

(assert (=> b!486787 (= res!290323 (validKeyInArray!0 (select (arr!15143 a!3235) j!176)))))

(declare-fun b!486788 () Bool)

(declare-fun res!290319 () Bool)

(assert (=> b!486788 (=> (not res!290319) (not e!286496))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31505 (_ BitVec 32)) Bool)

(assert (=> b!486788 (= res!290319 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!486785 () Bool)

(assert (=> b!486785 (= e!286498 e!286496)))

(declare-fun res!290320 () Bool)

(assert (=> b!486785 (=> (not res!290320) (not e!286496))))

(declare-datatypes ((SeekEntryResult!3617 0))(
  ( (MissingZero!3617 (index!16647 (_ BitVec 32))) (Found!3617 (index!16648 (_ BitVec 32))) (Intermediate!3617 (undefined!4429 Bool) (index!16649 (_ BitVec 32)) (x!45800 (_ BitVec 32))) (Undefined!3617) (MissingVacant!3617 (index!16650 (_ BitVec 32))) )
))
(declare-fun lt!219871 () SeekEntryResult!3617)

(assert (=> b!486785 (= res!290320 (or (= lt!219871 (MissingZero!3617 i!1204)) (= lt!219871 (MissingVacant!3617 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31505 (_ BitVec 32)) SeekEntryResult!3617)

(assert (=> b!486785 (= lt!219871 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!290322 () Bool)

(assert (=> start!44294 (=> (not res!290322) (not e!286498))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44294 (= res!290322 (validMask!0 mask!3524))))

(assert (=> start!44294 e!286498))

(assert (=> start!44294 true))

(declare-fun array_inv!10917 (array!31505) Bool)

(assert (=> start!44294 (array_inv!10917 a!3235)))

(assert (= (and start!44294 res!290322) b!486783))

(assert (= (and b!486783 res!290321) b!486787))

(assert (= (and b!486787 res!290323) b!486782))

(assert (= (and b!486782 res!290318) b!486786))

(assert (= (and b!486786 res!290324) b!486785))

(assert (= (and b!486785 res!290320) b!486788))

(assert (= (and b!486788 res!290319) b!486784))

(declare-fun m!466681 () Bool)

(assert (=> start!44294 m!466681))

(declare-fun m!466683 () Bool)

(assert (=> start!44294 m!466683))

(declare-fun m!466685 () Bool)

(assert (=> b!486782 m!466685))

(declare-fun m!466687 () Bool)

(assert (=> b!486785 m!466687))

(declare-fun m!466689 () Bool)

(assert (=> b!486786 m!466689))

(declare-fun m!466691 () Bool)

(assert (=> b!486787 m!466691))

(assert (=> b!486787 m!466691))

(declare-fun m!466693 () Bool)

(assert (=> b!486787 m!466693))

(declare-fun m!466695 () Bool)

(assert (=> b!486784 m!466695))

(declare-fun m!466697 () Bool)

(assert (=> b!486788 m!466697))

(push 1)

(assert (not b!486784))

(assert (not b!486787))

(assert (not b!486782))

(assert (not start!44294))

(assert (not b!486786))

(assert (not b!486788))

(assert (not b!486785))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

