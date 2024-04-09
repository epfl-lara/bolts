; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44090 () Bool)

(assert start!44090)

(declare-fun b!485617 () Bool)

(declare-fun res!289372 () Bool)

(declare-fun e!285897 () Bool)

(assert (=> b!485617 (=> (not res!289372) (not e!285897))))

(declare-datatypes ((array!31418 0))(
  ( (array!31419 (arr!15104 (Array (_ BitVec 32) (_ BitVec 64))) (size!15468 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31418)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31418 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485617 (= res!289372 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!485618 () Bool)

(declare-fun res!289369 () Bool)

(assert (=> b!485618 (=> (not res!289369) (not e!285897))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485618 (= res!289369 (validKeyInArray!0 k!2280))))

(declare-fun b!485619 () Bool)

(declare-fun res!289373 () Bool)

(assert (=> b!485619 (=> (not res!289373) (not e!285897))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!485619 (= res!289373 (and (= (size!15468 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15468 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15468 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!289371 () Bool)

(assert (=> start!44090 (=> (not res!289371) (not e!285897))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44090 (= res!289371 (validMask!0 mask!3524))))

(assert (=> start!44090 e!285897))

(assert (=> start!44090 true))

(declare-fun array_inv!10878 (array!31418) Bool)

(assert (=> start!44090 (array_inv!10878 a!3235)))

(declare-fun b!485620 () Bool)

(declare-fun res!289370 () Bool)

(assert (=> b!485620 (=> (not res!289370) (not e!285897))))

(assert (=> b!485620 (= res!289370 (validKeyInArray!0 (select (arr!15104 a!3235) j!176)))))

(declare-fun b!485621 () Bool)

(assert (=> b!485621 (= e!285897 false)))

(declare-datatypes ((SeekEntryResult!3578 0))(
  ( (MissingZero!3578 (index!16491 (_ BitVec 32))) (Found!3578 (index!16492 (_ BitVec 32))) (Intermediate!3578 (undefined!4390 Bool) (index!16493 (_ BitVec 32)) (x!45657 (_ BitVec 32))) (Undefined!3578) (MissingVacant!3578 (index!16494 (_ BitVec 32))) )
))
(declare-fun lt!219536 () SeekEntryResult!3578)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31418 (_ BitVec 32)) SeekEntryResult!3578)

(assert (=> b!485621 (= lt!219536 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!44090 res!289371) b!485619))

(assert (= (and b!485619 res!289373) b!485620))

(assert (= (and b!485620 res!289370) b!485618))

(assert (= (and b!485618 res!289369) b!485617))

(assert (= (and b!485617 res!289372) b!485621))

(declare-fun m!465725 () Bool)

(assert (=> b!485620 m!465725))

(assert (=> b!485620 m!465725))

(declare-fun m!465727 () Bool)

(assert (=> b!485620 m!465727))

(declare-fun m!465729 () Bool)

(assert (=> b!485618 m!465729))

(declare-fun m!465731 () Bool)

(assert (=> b!485621 m!465731))

(declare-fun m!465733 () Bool)

(assert (=> b!485617 m!465733))

(declare-fun m!465735 () Bool)

(assert (=> start!44090 m!465735))

(declare-fun m!465737 () Bool)

(assert (=> start!44090 m!465737))

(push 1)

(assert (not b!485617))

(assert (not b!485618))

(assert (not b!485620))

(assert (not start!44090))

(assert (not b!485621))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

