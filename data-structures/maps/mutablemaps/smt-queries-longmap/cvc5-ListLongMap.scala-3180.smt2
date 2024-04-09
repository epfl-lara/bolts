; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44716 () Bool)

(assert start!44716)

(declare-fun b!490428 () Bool)

(declare-fun res!293517 () Bool)

(declare-fun e!288283 () Bool)

(assert (=> b!490428 (=> (not res!293517) (not e!288283))))

(declare-datatypes ((array!31735 0))(
  ( (array!31736 (arr!15252 (Array (_ BitVec 32) (_ BitVec 64))) (size!15616 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31735)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31735 (_ BitVec 32)) Bool)

(assert (=> b!490428 (= res!293517 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!490429 () Bool)

(declare-fun e!288281 () Bool)

(assert (=> b!490429 (= e!288283 (not e!288281))))

(declare-fun res!293520 () Bool)

(assert (=> b!490429 (=> res!293520 e!288281)))

(declare-fun lt!221577 () array!31735)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!221581 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3726 0))(
  ( (MissingZero!3726 (index!17083 (_ BitVec 32))) (Found!3726 (index!17084 (_ BitVec 32))) (Intermediate!3726 (undefined!4538 Bool) (index!17085 (_ BitVec 32)) (x!46211 (_ BitVec 32))) (Undefined!3726) (MissingVacant!3726 (index!17086 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31735 (_ BitVec 32)) SeekEntryResult!3726)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490429 (= res!293520 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15252 a!3235) j!176) mask!3524) (select (arr!15252 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!221581 mask!3524) lt!221581 lt!221577 mask!3524))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!490429 (= lt!221581 (select (store (arr!15252 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!490429 (= lt!221577 (array!31736 (store (arr!15252 a!3235) i!1204 k!2280) (size!15616 a!3235)))))

(declare-fun lt!221578 () SeekEntryResult!3726)

(assert (=> b!490429 (= lt!221578 (Found!3726 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31735 (_ BitVec 32)) SeekEntryResult!3726)

(assert (=> b!490429 (= lt!221578 (seekEntryOrOpen!0 (select (arr!15252 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!490429 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14390 0))(
  ( (Unit!14391) )
))
(declare-fun lt!221582 () Unit!14390)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31735 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14390)

(assert (=> b!490429 (= lt!221582 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!490430 () Bool)

(declare-fun res!293521 () Bool)

(declare-fun e!288282 () Bool)

(assert (=> b!490430 (=> (not res!293521) (not e!288282))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490430 (= res!293521 (validKeyInArray!0 k!2280))))

(declare-fun b!490431 () Bool)

(assert (=> b!490431 (= e!288282 e!288283)))

(declare-fun res!293515 () Bool)

(assert (=> b!490431 (=> (not res!293515) (not e!288283))))

(declare-fun lt!221580 () SeekEntryResult!3726)

(assert (=> b!490431 (= res!293515 (or (= lt!221580 (MissingZero!3726 i!1204)) (= lt!221580 (MissingVacant!3726 i!1204))))))

(assert (=> b!490431 (= lt!221580 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!490432 () Bool)

(declare-fun res!293514 () Bool)

(assert (=> b!490432 (=> (not res!293514) (not e!288282))))

(assert (=> b!490432 (= res!293514 (and (= (size!15616 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15616 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15616 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!490433 () Bool)

(declare-fun res!293518 () Bool)

(assert (=> b!490433 (=> (not res!293518) (not e!288282))))

(assert (=> b!490433 (= res!293518 (validKeyInArray!0 (select (arr!15252 a!3235) j!176)))))

(declare-fun b!490434 () Bool)

(declare-fun res!293516 () Bool)

(assert (=> b!490434 (=> (not res!293516) (not e!288283))))

(declare-datatypes ((List!9463 0))(
  ( (Nil!9460) (Cons!9459 (h!10321 (_ BitVec 64)) (t!15699 List!9463)) )
))
(declare-fun arrayNoDuplicates!0 (array!31735 (_ BitVec 32) List!9463) Bool)

(assert (=> b!490434 (= res!293516 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9460))))

(declare-fun res!293519 () Bool)

(assert (=> start!44716 (=> (not res!293519) (not e!288282))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44716 (= res!293519 (validMask!0 mask!3524))))

(assert (=> start!44716 e!288282))

(assert (=> start!44716 true))

(declare-fun array_inv!11026 (array!31735) Bool)

(assert (=> start!44716 (array_inv!11026 a!3235)))

(declare-fun b!490435 () Bool)

(assert (=> b!490435 (= e!288281 true)))

(assert (=> b!490435 (= lt!221578 (seekEntryOrOpen!0 lt!221581 lt!221577 mask!3524))))

(declare-fun lt!221579 () Unit!14390)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31735 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14390)

(assert (=> b!490435 (= lt!221579 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!490436 () Bool)

(declare-fun res!293522 () Bool)

(assert (=> b!490436 (=> (not res!293522) (not e!288282))))

(declare-fun arrayContainsKey!0 (array!31735 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490436 (= res!293522 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!44716 res!293519) b!490432))

(assert (= (and b!490432 res!293514) b!490433))

(assert (= (and b!490433 res!293518) b!490430))

(assert (= (and b!490430 res!293521) b!490436))

(assert (= (and b!490436 res!293522) b!490431))

(assert (= (and b!490431 res!293515) b!490428))

(assert (= (and b!490428 res!293517) b!490434))

(assert (= (and b!490434 res!293516) b!490429))

(assert (= (and b!490429 (not res!293520)) b!490435))

(declare-fun m!470659 () Bool)

(assert (=> b!490436 m!470659))

(declare-fun m!470661 () Bool)

(assert (=> b!490428 m!470661))

(declare-fun m!470663 () Bool)

(assert (=> b!490431 m!470663))

(declare-fun m!470665 () Bool)

(assert (=> b!490435 m!470665))

(declare-fun m!470667 () Bool)

(assert (=> b!490435 m!470667))

(declare-fun m!470669 () Bool)

(assert (=> b!490434 m!470669))

(declare-fun m!470671 () Bool)

(assert (=> b!490433 m!470671))

(assert (=> b!490433 m!470671))

(declare-fun m!470673 () Bool)

(assert (=> b!490433 m!470673))

(declare-fun m!470675 () Bool)

(assert (=> start!44716 m!470675))

(declare-fun m!470677 () Bool)

(assert (=> start!44716 m!470677))

(declare-fun m!470679 () Bool)

(assert (=> b!490430 m!470679))

(declare-fun m!470681 () Bool)

(assert (=> b!490429 m!470681))

(declare-fun m!470683 () Bool)

(assert (=> b!490429 m!470683))

(declare-fun m!470685 () Bool)

(assert (=> b!490429 m!470685))

(declare-fun m!470687 () Bool)

(assert (=> b!490429 m!470687))

(assert (=> b!490429 m!470681))

(declare-fun m!470689 () Bool)

(assert (=> b!490429 m!470689))

(declare-fun m!470691 () Bool)

(assert (=> b!490429 m!470691))

(assert (=> b!490429 m!470671))

(declare-fun m!470693 () Bool)

(assert (=> b!490429 m!470693))

(assert (=> b!490429 m!470671))

(assert (=> b!490429 m!470691))

(assert (=> b!490429 m!470671))

(declare-fun m!470695 () Bool)

(assert (=> b!490429 m!470695))

(assert (=> b!490429 m!470671))

(declare-fun m!470697 () Bool)

(assert (=> b!490429 m!470697))

(push 1)

