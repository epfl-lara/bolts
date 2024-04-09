; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44704 () Bool)

(assert start!44704)

(declare-fun b!490266 () Bool)

(declare-fun res!293359 () Bool)

(declare-fun e!288211 () Bool)

(assert (=> b!490266 (=> (not res!293359) (not e!288211))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31723 0))(
  ( (array!31724 (arr!15246 (Array (_ BitVec 32) (_ BitVec 64))) (size!15610 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31723)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!490266 (= res!293359 (and (= (size!15610 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15610 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15610 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!490267 () Bool)

(declare-fun res!293358 () Bool)

(declare-fun e!288208 () Bool)

(assert (=> b!490267 (=> (not res!293358) (not e!288208))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31723 (_ BitVec 32)) Bool)

(assert (=> b!490267 (= res!293358 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!490268 () Bool)

(declare-fun res!293357 () Bool)

(assert (=> b!490268 (=> (not res!293357) (not e!288208))))

(declare-datatypes ((List!9457 0))(
  ( (Nil!9454) (Cons!9453 (h!10315 (_ BitVec 64)) (t!15693 List!9457)) )
))
(declare-fun arrayNoDuplicates!0 (array!31723 (_ BitVec 32) List!9457) Bool)

(assert (=> b!490268 (= res!293357 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9454))))

(declare-fun b!490269 () Bool)

(declare-fun e!288209 () Bool)

(assert (=> b!490269 (= e!288209 true)))

(declare-fun lt!221470 () array!31723)

(declare-fun lt!221473 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3720 0))(
  ( (MissingZero!3720 (index!17059 (_ BitVec 32))) (Found!3720 (index!17060 (_ BitVec 32))) (Intermediate!3720 (undefined!4532 Bool) (index!17061 (_ BitVec 32)) (x!46189 (_ BitVec 32))) (Undefined!3720) (MissingVacant!3720 (index!17062 (_ BitVec 32))) )
))
(declare-fun lt!221469 () SeekEntryResult!3720)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31723 (_ BitVec 32)) SeekEntryResult!3720)

(assert (=> b!490269 (= lt!221469 (seekEntryOrOpen!0 lt!221473 lt!221470 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-datatypes ((Unit!14378 0))(
  ( (Unit!14379) )
))
(declare-fun lt!221474 () Unit!14378)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31723 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14378)

(assert (=> b!490269 (= lt!221474 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!490270 () Bool)

(assert (=> b!490270 (= e!288208 (not e!288209))))

(declare-fun res!293354 () Bool)

(assert (=> b!490270 (=> res!293354 e!288209)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31723 (_ BitVec 32)) SeekEntryResult!3720)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490270 (= res!293354 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15246 a!3235) j!176) mask!3524) (select (arr!15246 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!221473 mask!3524) lt!221473 lt!221470 mask!3524))))))

(assert (=> b!490270 (= lt!221473 (select (store (arr!15246 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!490270 (= lt!221470 (array!31724 (store (arr!15246 a!3235) i!1204 k!2280) (size!15610 a!3235)))))

(assert (=> b!490270 (= lt!221469 (Found!3720 j!176))))

(assert (=> b!490270 (= lt!221469 (seekEntryOrOpen!0 (select (arr!15246 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!490270 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!221472 () Unit!14378)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31723 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14378)

(assert (=> b!490270 (= lt!221472 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!490271 () Bool)

(declare-fun res!293355 () Bool)

(assert (=> b!490271 (=> (not res!293355) (not e!288211))))

(declare-fun arrayContainsKey!0 (array!31723 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490271 (= res!293355 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!293353 () Bool)

(assert (=> start!44704 (=> (not res!293353) (not e!288211))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44704 (= res!293353 (validMask!0 mask!3524))))

(assert (=> start!44704 e!288211))

(assert (=> start!44704 true))

(declare-fun array_inv!11020 (array!31723) Bool)

(assert (=> start!44704 (array_inv!11020 a!3235)))

(declare-fun b!490272 () Bool)

(declare-fun res!293352 () Bool)

(assert (=> b!490272 (=> (not res!293352) (not e!288211))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490272 (= res!293352 (validKeyInArray!0 (select (arr!15246 a!3235) j!176)))))

(declare-fun b!490273 () Bool)

(assert (=> b!490273 (= e!288211 e!288208)))

(declare-fun res!293356 () Bool)

(assert (=> b!490273 (=> (not res!293356) (not e!288208))))

(declare-fun lt!221471 () SeekEntryResult!3720)

(assert (=> b!490273 (= res!293356 (or (= lt!221471 (MissingZero!3720 i!1204)) (= lt!221471 (MissingVacant!3720 i!1204))))))

(assert (=> b!490273 (= lt!221471 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!490274 () Bool)

(declare-fun res!293360 () Bool)

(assert (=> b!490274 (=> (not res!293360) (not e!288211))))

(assert (=> b!490274 (= res!293360 (validKeyInArray!0 k!2280))))

(assert (= (and start!44704 res!293353) b!490266))

(assert (= (and b!490266 res!293359) b!490272))

(assert (= (and b!490272 res!293352) b!490274))

(assert (= (and b!490274 res!293360) b!490271))

(assert (= (and b!490271 res!293355) b!490273))

(assert (= (and b!490273 res!293356) b!490267))

(assert (= (and b!490267 res!293358) b!490268))

(assert (= (and b!490268 res!293357) b!490270))

(assert (= (and b!490270 (not res!293354)) b!490269))

(declare-fun m!470419 () Bool)

(assert (=> b!490269 m!470419))

(declare-fun m!470421 () Bool)

(assert (=> b!490269 m!470421))

(declare-fun m!470423 () Bool)

(assert (=> b!490272 m!470423))

(assert (=> b!490272 m!470423))

(declare-fun m!470425 () Bool)

(assert (=> b!490272 m!470425))

(declare-fun m!470427 () Bool)

(assert (=> b!490273 m!470427))

(declare-fun m!470429 () Bool)

(assert (=> b!490271 m!470429))

(declare-fun m!470431 () Bool)

(assert (=> b!490268 m!470431))

(declare-fun m!470433 () Bool)

(assert (=> start!44704 m!470433))

(declare-fun m!470435 () Bool)

(assert (=> start!44704 m!470435))

(declare-fun m!470437 () Bool)

(assert (=> b!490274 m!470437))

(declare-fun m!470439 () Bool)

(assert (=> b!490270 m!470439))

(declare-fun m!470441 () Bool)

(assert (=> b!490270 m!470441))

(declare-fun m!470443 () Bool)

(assert (=> b!490270 m!470443))

(declare-fun m!470445 () Bool)

(assert (=> b!490270 m!470445))

(declare-fun m!470447 () Bool)

(assert (=> b!490270 m!470447))

(assert (=> b!490270 m!470423))

(declare-fun m!470449 () Bool)

(assert (=> b!490270 m!470449))

(assert (=> b!490270 m!470439))

(declare-fun m!470451 () Bool)

(assert (=> b!490270 m!470451))

(assert (=> b!490270 m!470423))

(assert (=> b!490270 m!470447))

(assert (=> b!490270 m!470423))

(declare-fun m!470453 () Bool)

(assert (=> b!490270 m!470453))

(assert (=> b!490270 m!470423))

(declare-fun m!470455 () Bool)

(assert (=> b!490270 m!470455))

(declare-fun m!470457 () Bool)

(assert (=> b!490267 m!470457))

(push 1)

