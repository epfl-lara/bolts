; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45020 () Bool)

(assert start!45020)

(declare-fun b!493601 () Bool)

(declare-fun res!296324 () Bool)

(declare-fun e!289819 () Bool)

(assert (=> b!493601 (=> (not res!296324) (not e!289819))))

(declare-datatypes ((array!31925 0))(
  ( (array!31926 (arr!15344 (Array (_ BitVec 32) (_ BitVec 64))) (size!15708 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31925)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493601 (= res!296324 (validKeyInArray!0 (select (arr!15344 a!3235) j!176)))))

(declare-fun b!493602 () Bool)

(declare-fun res!296328 () Bool)

(assert (=> b!493602 (=> (not res!296328) (not e!289819))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!493602 (= res!296328 (validKeyInArray!0 k!2280))))

(declare-fun b!493603 () Bool)

(declare-fun res!296325 () Bool)

(declare-fun e!289821 () Bool)

(assert (=> b!493603 (=> (not res!296325) (not e!289821))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31925 (_ BitVec 32)) Bool)

(assert (=> b!493603 (= res!296325 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!493604 () Bool)

(assert (=> b!493604 (= e!289819 e!289821)))

(declare-fun res!296329 () Bool)

(assert (=> b!493604 (=> (not res!296329) (not e!289821))))

(declare-datatypes ((SeekEntryResult!3818 0))(
  ( (MissingZero!3818 (index!17451 (_ BitVec 32))) (Found!3818 (index!17452 (_ BitVec 32))) (Intermediate!3818 (undefined!4630 Bool) (index!17453 (_ BitVec 32)) (x!46555 (_ BitVec 32))) (Undefined!3818) (MissingVacant!3818 (index!17454 (_ BitVec 32))) )
))
(declare-fun lt!223348 () SeekEntryResult!3818)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!493604 (= res!296329 (or (= lt!223348 (MissingZero!3818 i!1204)) (= lt!223348 (MissingVacant!3818 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31925 (_ BitVec 32)) SeekEntryResult!3818)

(assert (=> b!493604 (= lt!223348 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!493605 () Bool)

(declare-fun res!296327 () Bool)

(declare-fun e!289822 () Bool)

(assert (=> b!493605 (=> res!296327 e!289822)))

(declare-fun lt!223350 () SeekEntryResult!3818)

(assert (=> b!493605 (= res!296327 (or (not (is-Intermediate!3818 lt!223350)) (not (undefined!4630 lt!223350))))))

(declare-fun b!493606 () Bool)

(assert (=> b!493606 (= e!289821 (not e!289822))))

(declare-fun res!296330 () Bool)

(assert (=> b!493606 (=> res!296330 e!289822)))

(declare-fun lt!223351 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31925 (_ BitVec 32)) SeekEntryResult!3818)

(assert (=> b!493606 (= res!296330 (= lt!223350 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223351 (select (store (arr!15344 a!3235) i!1204 k!2280) j!176) (array!31926 (store (arr!15344 a!3235) i!1204 k!2280) (size!15708 a!3235)) mask!3524)))))

(declare-fun lt!223349 () (_ BitVec 32))

(assert (=> b!493606 (= lt!223350 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223349 (select (arr!15344 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493606 (= lt!223351 (toIndex!0 (select (store (arr!15344 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!493606 (= lt!223349 (toIndex!0 (select (arr!15344 a!3235) j!176) mask!3524))))

(declare-fun lt!223352 () SeekEntryResult!3818)

(assert (=> b!493606 (= lt!223352 (Found!3818 j!176))))

(assert (=> b!493606 (= lt!223352 (seekEntryOrOpen!0 (select (arr!15344 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!493606 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14574 0))(
  ( (Unit!14575) )
))
(declare-fun lt!223347 () Unit!14574)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31925 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14574)

(assert (=> b!493606 (= lt!223347 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!296323 () Bool)

(assert (=> start!45020 (=> (not res!296323) (not e!289819))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45020 (= res!296323 (validMask!0 mask!3524))))

(assert (=> start!45020 e!289819))

(assert (=> start!45020 true))

(declare-fun array_inv!11118 (array!31925) Bool)

(assert (=> start!45020 (array_inv!11118 a!3235)))

(declare-fun b!493607 () Bool)

(declare-fun res!296326 () Bool)

(assert (=> b!493607 (=> (not res!296326) (not e!289821))))

(declare-datatypes ((List!9555 0))(
  ( (Nil!9552) (Cons!9551 (h!10419 (_ BitVec 64)) (t!15791 List!9555)) )
))
(declare-fun arrayNoDuplicates!0 (array!31925 (_ BitVec 32) List!9555) Bool)

(assert (=> b!493607 (= res!296326 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9552))))

(declare-fun b!493608 () Bool)

(declare-fun res!296321 () Bool)

(assert (=> b!493608 (=> (not res!296321) (not e!289819))))

(assert (=> b!493608 (= res!296321 (and (= (size!15708 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15708 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15708 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!493609 () Bool)

(declare-fun res!296322 () Bool)

(assert (=> b!493609 (=> (not res!296322) (not e!289819))))

(declare-fun arrayContainsKey!0 (array!31925 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493609 (= res!296322 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!493610 () Bool)

(assert (=> b!493610 (= e!289822 true)))

(assert (=> b!493610 (= lt!223352 Undefined!3818)))

(assert (= (and start!45020 res!296323) b!493608))

(assert (= (and b!493608 res!296321) b!493601))

(assert (= (and b!493601 res!296324) b!493602))

(assert (= (and b!493602 res!296328) b!493609))

(assert (= (and b!493609 res!296322) b!493604))

(assert (= (and b!493604 res!296329) b!493603))

(assert (= (and b!493603 res!296325) b!493607))

(assert (= (and b!493607 res!296326) b!493606))

(assert (= (and b!493606 (not res!296330)) b!493605))

(assert (= (and b!493605 (not res!296327)) b!493610))

(declare-fun m!474553 () Bool)

(assert (=> b!493609 m!474553))

(declare-fun m!474555 () Bool)

(assert (=> b!493607 m!474555))

(declare-fun m!474557 () Bool)

(assert (=> b!493604 m!474557))

(declare-fun m!474559 () Bool)

(assert (=> b!493606 m!474559))

(declare-fun m!474561 () Bool)

(assert (=> b!493606 m!474561))

(declare-fun m!474563 () Bool)

(assert (=> b!493606 m!474563))

(declare-fun m!474565 () Bool)

(assert (=> b!493606 m!474565))

(declare-fun m!474567 () Bool)

(assert (=> b!493606 m!474567))

(assert (=> b!493606 m!474567))

(declare-fun m!474569 () Bool)

(assert (=> b!493606 m!474569))

(assert (=> b!493606 m!474559))

(declare-fun m!474571 () Bool)

(assert (=> b!493606 m!474571))

(assert (=> b!493606 m!474559))

(declare-fun m!474573 () Bool)

(assert (=> b!493606 m!474573))

(assert (=> b!493606 m!474559))

(declare-fun m!474575 () Bool)

(assert (=> b!493606 m!474575))

(assert (=> b!493606 m!474567))

(declare-fun m!474577 () Bool)

(assert (=> b!493606 m!474577))

(declare-fun m!474579 () Bool)

(assert (=> b!493602 m!474579))

(declare-fun m!474581 () Bool)

(assert (=> start!45020 m!474581))

(declare-fun m!474583 () Bool)

(assert (=> start!45020 m!474583))

(declare-fun m!474585 () Bool)

(assert (=> b!493603 m!474585))

(assert (=> b!493601 m!474559))

(assert (=> b!493601 m!474559))

(declare-fun m!474587 () Bool)

(assert (=> b!493601 m!474587))

(push 1)

(assert (not b!493607))

(assert (not b!493601))

(assert (not start!45020))

(assert (not b!493606))

(assert (not b!493603))

(assert (not b!493604))

(assert (not b!493609))

(assert (not b!493602))

(check-sat)

(pop 1)

