; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44714 () Bool)

(assert start!44714)

(declare-fun b!490401 () Bool)

(declare-fun res!293487 () Bool)

(declare-fun e!288268 () Bool)

(assert (=> b!490401 (=> (not res!293487) (not e!288268))))

(declare-datatypes ((array!31733 0))(
  ( (array!31734 (arr!15251 (Array (_ BitVec 32) (_ BitVec 64))) (size!15615 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31733)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31733 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490401 (= res!293487 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!490402 () Bool)

(declare-fun res!293489 () Bool)

(declare-fun e!288269 () Bool)

(assert (=> b!490402 (=> (not res!293489) (not e!288269))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31733 (_ BitVec 32)) Bool)

(assert (=> b!490402 (= res!293489 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!490403 () Bool)

(declare-fun res!293488 () Bool)

(assert (=> b!490403 (=> (not res!293488) (not e!288268))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490403 (= res!293488 (validKeyInArray!0 (select (arr!15251 a!3235) j!176)))))

(declare-fun b!490404 () Bool)

(declare-fun res!293493 () Bool)

(assert (=> b!490404 (=> (not res!293493) (not e!288268))))

(assert (=> b!490404 (= res!293493 (validKeyInArray!0 k!2280))))

(declare-fun b!490405 () Bool)

(declare-fun res!293494 () Bool)

(assert (=> b!490405 (=> (not res!293494) (not e!288269))))

(declare-datatypes ((List!9462 0))(
  ( (Nil!9459) (Cons!9458 (h!10320 (_ BitVec 64)) (t!15698 List!9462)) )
))
(declare-fun arrayNoDuplicates!0 (array!31733 (_ BitVec 32) List!9462) Bool)

(assert (=> b!490405 (= res!293494 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9459))))

(declare-fun res!293492 () Bool)

(assert (=> start!44714 (=> (not res!293492) (not e!288268))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44714 (= res!293492 (validMask!0 mask!3524))))

(assert (=> start!44714 e!288268))

(assert (=> start!44714 true))

(declare-fun array_inv!11025 (array!31733) Bool)

(assert (=> start!44714 (array_inv!11025 a!3235)))

(declare-fun b!490406 () Bool)

(declare-fun e!288270 () Bool)

(assert (=> b!490406 (= e!288270 (bvsge mask!3524 #b00000000000000000000000000000000))))

(declare-fun lt!221562 () array!31733)

(declare-datatypes ((SeekEntryResult!3725 0))(
  ( (MissingZero!3725 (index!17079 (_ BitVec 32))) (Found!3725 (index!17080 (_ BitVec 32))) (Intermediate!3725 (undefined!4537 Bool) (index!17081 (_ BitVec 32)) (x!46202 (_ BitVec 32))) (Undefined!3725) (MissingVacant!3725 (index!17082 (_ BitVec 32))) )
))
(declare-fun lt!221561 () SeekEntryResult!3725)

(declare-fun lt!221564 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31733 (_ BitVec 32)) SeekEntryResult!3725)

(assert (=> b!490406 (= lt!221561 (seekEntryOrOpen!0 lt!221564 lt!221562 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((Unit!14388 0))(
  ( (Unit!14389) )
))
(declare-fun lt!221563 () Unit!14388)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31733 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14388)

(assert (=> b!490406 (= lt!221563 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!490407 () Bool)

(assert (=> b!490407 (= e!288268 e!288269)))

(declare-fun res!293491 () Bool)

(assert (=> b!490407 (=> (not res!293491) (not e!288269))))

(declare-fun lt!221559 () SeekEntryResult!3725)

(assert (=> b!490407 (= res!293491 (or (= lt!221559 (MissingZero!3725 i!1204)) (= lt!221559 (MissingVacant!3725 i!1204))))))

(assert (=> b!490407 (= lt!221559 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!490408 () Bool)

(declare-fun res!293490 () Bool)

(assert (=> b!490408 (=> (not res!293490) (not e!288268))))

(assert (=> b!490408 (= res!293490 (and (= (size!15615 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15615 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15615 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!490409 () Bool)

(assert (=> b!490409 (= e!288269 (not e!288270))))

(declare-fun res!293495 () Bool)

(assert (=> b!490409 (=> res!293495 e!288270)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31733 (_ BitVec 32)) SeekEntryResult!3725)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490409 (= res!293495 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15251 a!3235) j!176) mask!3524) (select (arr!15251 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!221564 mask!3524) lt!221564 lt!221562 mask!3524))))))

(assert (=> b!490409 (= lt!221564 (select (store (arr!15251 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!490409 (= lt!221562 (array!31734 (store (arr!15251 a!3235) i!1204 k!2280) (size!15615 a!3235)))))

(assert (=> b!490409 (= lt!221561 (Found!3725 j!176))))

(assert (=> b!490409 (= lt!221561 (seekEntryOrOpen!0 (select (arr!15251 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!490409 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!221560 () Unit!14388)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31733 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14388)

(assert (=> b!490409 (= lt!221560 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!44714 res!293492) b!490408))

(assert (= (and b!490408 res!293490) b!490403))

(assert (= (and b!490403 res!293488) b!490404))

(assert (= (and b!490404 res!293493) b!490401))

(assert (= (and b!490401 res!293487) b!490407))

(assert (= (and b!490407 res!293491) b!490402))

(assert (= (and b!490402 res!293489) b!490405))

(assert (= (and b!490405 res!293494) b!490409))

(assert (= (and b!490409 (not res!293495)) b!490406))

(declare-fun m!470619 () Bool)

(assert (=> b!490405 m!470619))

(declare-fun m!470621 () Bool)

(assert (=> b!490409 m!470621))

(declare-fun m!470623 () Bool)

(assert (=> b!490409 m!470623))

(declare-fun m!470625 () Bool)

(assert (=> b!490409 m!470625))

(declare-fun m!470627 () Bool)

(assert (=> b!490409 m!470627))

(declare-fun m!470629 () Bool)

(assert (=> b!490409 m!470629))

(declare-fun m!470631 () Bool)

(assert (=> b!490409 m!470631))

(declare-fun m!470633 () Bool)

(assert (=> b!490409 m!470633))

(declare-fun m!470635 () Bool)

(assert (=> b!490409 m!470635))

(assert (=> b!490409 m!470633))

(assert (=> b!490409 m!470631))

(assert (=> b!490409 m!470633))

(assert (=> b!490409 m!470633))

(declare-fun m!470637 () Bool)

(assert (=> b!490409 m!470637))

(declare-fun m!470639 () Bool)

(assert (=> b!490409 m!470639))

(assert (=> b!490409 m!470623))

(declare-fun m!470641 () Bool)

(assert (=> b!490402 m!470641))

(assert (=> b!490403 m!470633))

(assert (=> b!490403 m!470633))

(declare-fun m!470643 () Bool)

(assert (=> b!490403 m!470643))

(declare-fun m!470645 () Bool)

(assert (=> b!490407 m!470645))

(declare-fun m!470647 () Bool)

(assert (=> b!490404 m!470647))

(declare-fun m!470649 () Bool)

(assert (=> start!44714 m!470649))

(declare-fun m!470651 () Bool)

(assert (=> start!44714 m!470651))

(declare-fun m!470653 () Bool)

(assert (=> b!490401 m!470653))

(declare-fun m!470655 () Bool)

(assert (=> b!490406 m!470655))

(declare-fun m!470657 () Bool)

(assert (=> b!490406 m!470657))

(push 1)

(assert (not b!490406))

(assert (not b!490405))

(assert (not b!490403))

