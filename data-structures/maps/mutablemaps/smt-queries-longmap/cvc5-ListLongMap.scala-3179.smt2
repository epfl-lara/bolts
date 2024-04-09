; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44710 () Bool)

(assert start!44710)

(declare-fun b!490347 () Bool)

(declare-fun res!293436 () Bool)

(declare-fun e!288244 () Bool)

(assert (=> b!490347 (=> (not res!293436) (not e!288244))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490347 (= res!293436 (validKeyInArray!0 k!2280))))

(declare-fun b!490349 () Bool)

(declare-fun e!288247 () Bool)

(assert (=> b!490349 (= e!288244 e!288247)))

(declare-fun res!293434 () Bool)

(assert (=> b!490349 (=> (not res!293434) (not e!288247))))

(declare-datatypes ((SeekEntryResult!3723 0))(
  ( (MissingZero!3723 (index!17071 (_ BitVec 32))) (Found!3723 (index!17072 (_ BitVec 32))) (Intermediate!3723 (undefined!4535 Bool) (index!17073 (_ BitVec 32)) (x!46200 (_ BitVec 32))) (Undefined!3723) (MissingVacant!3723 (index!17074 (_ BitVec 32))) )
))
(declare-fun lt!221526 () SeekEntryResult!3723)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!490349 (= res!293434 (or (= lt!221526 (MissingZero!3723 i!1204)) (= lt!221526 (MissingVacant!3723 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31729 0))(
  ( (array!31730 (arr!15249 (Array (_ BitVec 32) (_ BitVec 64))) (size!15613 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31729)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31729 (_ BitVec 32)) SeekEntryResult!3723)

(assert (=> b!490349 (= lt!221526 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!490350 () Bool)

(declare-fun res!293440 () Bool)

(assert (=> b!490350 (=> (not res!293440) (not e!288244))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!490350 (= res!293440 (validKeyInArray!0 (select (arr!15249 a!3235) j!176)))))

(declare-fun b!490351 () Bool)

(declare-fun e!288246 () Bool)

(assert (=> b!490351 (= e!288246 (bvsge mask!3524 #b00000000000000000000000000000000))))

(declare-fun lt!221527 () SeekEntryResult!3723)

(declare-fun lt!221523 () (_ BitVec 64))

(declare-fun lt!221525 () array!31729)

(assert (=> b!490351 (= lt!221527 (seekEntryOrOpen!0 lt!221523 lt!221525 mask!3524))))

(declare-datatypes ((Unit!14384 0))(
  ( (Unit!14385) )
))
(declare-fun lt!221528 () Unit!14384)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31729 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14384)

(assert (=> b!490351 (= lt!221528 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun res!293437 () Bool)

(assert (=> start!44710 (=> (not res!293437) (not e!288244))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44710 (= res!293437 (validMask!0 mask!3524))))

(assert (=> start!44710 e!288244))

(assert (=> start!44710 true))

(declare-fun array_inv!11023 (array!31729) Bool)

(assert (=> start!44710 (array_inv!11023 a!3235)))

(declare-fun b!490348 () Bool)

(declare-fun res!293439 () Bool)

(assert (=> b!490348 (=> (not res!293439) (not e!288247))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31729 (_ BitVec 32)) Bool)

(assert (=> b!490348 (= res!293439 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!490352 () Bool)

(declare-fun res!293435 () Bool)

(assert (=> b!490352 (=> (not res!293435) (not e!288247))))

(declare-datatypes ((List!9460 0))(
  ( (Nil!9457) (Cons!9456 (h!10318 (_ BitVec 64)) (t!15696 List!9460)) )
))
(declare-fun arrayNoDuplicates!0 (array!31729 (_ BitVec 32) List!9460) Bool)

(assert (=> b!490352 (= res!293435 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9457))))

(declare-fun b!490353 () Bool)

(declare-fun res!293438 () Bool)

(assert (=> b!490353 (=> (not res!293438) (not e!288244))))

(declare-fun arrayContainsKey!0 (array!31729 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490353 (= res!293438 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!490354 () Bool)

(assert (=> b!490354 (= e!288247 (not e!288246))))

(declare-fun res!293441 () Bool)

(assert (=> b!490354 (=> res!293441 e!288246)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31729 (_ BitVec 32)) SeekEntryResult!3723)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490354 (= res!293441 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15249 a!3235) j!176) mask!3524) (select (arr!15249 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!221523 mask!3524) lt!221523 lt!221525 mask!3524))))))

(assert (=> b!490354 (= lt!221523 (select (store (arr!15249 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!490354 (= lt!221525 (array!31730 (store (arr!15249 a!3235) i!1204 k!2280) (size!15613 a!3235)))))

(assert (=> b!490354 (= lt!221527 (Found!3723 j!176))))

(assert (=> b!490354 (= lt!221527 (seekEntryOrOpen!0 (select (arr!15249 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!490354 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!221524 () Unit!14384)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31729 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14384)

(assert (=> b!490354 (= lt!221524 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!490355 () Bool)

(declare-fun res!293433 () Bool)

(assert (=> b!490355 (=> (not res!293433) (not e!288244))))

(assert (=> b!490355 (= res!293433 (and (= (size!15613 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15613 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15613 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!44710 res!293437) b!490355))

(assert (= (and b!490355 res!293433) b!490350))

(assert (= (and b!490350 res!293440) b!490347))

(assert (= (and b!490347 res!293436) b!490353))

(assert (= (and b!490353 res!293438) b!490349))

(assert (= (and b!490349 res!293434) b!490348))

(assert (= (and b!490348 res!293439) b!490352))

(assert (= (and b!490352 res!293435) b!490354))

(assert (= (and b!490354 (not res!293441)) b!490351))

(declare-fun m!470539 () Bool)

(assert (=> b!490353 m!470539))

(declare-fun m!470541 () Bool)

(assert (=> b!490352 m!470541))

(declare-fun m!470543 () Bool)

(assert (=> b!490351 m!470543))

(declare-fun m!470545 () Bool)

(assert (=> b!490351 m!470545))

(declare-fun m!470547 () Bool)

(assert (=> b!490347 m!470547))

(declare-fun m!470549 () Bool)

(assert (=> start!44710 m!470549))

(declare-fun m!470551 () Bool)

(assert (=> start!44710 m!470551))

(declare-fun m!470553 () Bool)

(assert (=> b!490348 m!470553))

(declare-fun m!470555 () Bool)

(assert (=> b!490350 m!470555))

(assert (=> b!490350 m!470555))

(declare-fun m!470557 () Bool)

(assert (=> b!490350 m!470557))

(declare-fun m!470559 () Bool)

(assert (=> b!490354 m!470559))

(declare-fun m!470561 () Bool)

(assert (=> b!490354 m!470561))

(declare-fun m!470563 () Bool)

(assert (=> b!490354 m!470563))

(assert (=> b!490354 m!470555))

(declare-fun m!470565 () Bool)

(assert (=> b!490354 m!470565))

(declare-fun m!470567 () Bool)

(assert (=> b!490354 m!470567))

(assert (=> b!490354 m!470555))

(assert (=> b!490354 m!470563))

(assert (=> b!490354 m!470555))

(declare-fun m!470569 () Bool)

(assert (=> b!490354 m!470569))

(assert (=> b!490354 m!470555))

(declare-fun m!470571 () Bool)

(assert (=> b!490354 m!470571))

(declare-fun m!470573 () Bool)

(assert (=> b!490354 m!470573))

(assert (=> b!490354 m!470567))

(declare-fun m!470575 () Bool)

(assert (=> b!490354 m!470575))

(declare-fun m!470577 () Bool)

(assert (=> b!490349 m!470577))

(push 1)

