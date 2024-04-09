; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29142 () Bool)

(assert start!29142)

(declare-fun b!295486 () Bool)

(declare-fun res!155412 () Bool)

(declare-fun e!186776 () Bool)

(assert (=> b!295486 (=> (not res!155412) (not e!186776))))

(declare-datatypes ((array!14942 0))(
  ( (array!14943 (arr!7081 (Array (_ BitVec 32) (_ BitVec 64))) (size!7433 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14942)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14942 (_ BitVec 32)) Bool)

(assert (=> b!295486 (= res!155412 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!295487 () Bool)

(declare-fun res!155409 () Bool)

(declare-fun e!186779 () Bool)

(assert (=> b!295487 (=> (not res!155409) (not e!186779))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14942 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!295487 (= res!155409 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!295488 () Bool)

(declare-fun e!186778 () Bool)

(assert (=> b!295488 (= e!186776 e!186778)))

(declare-fun res!155414 () Bool)

(assert (=> b!295488 (=> (not res!155414) (not e!186778))))

(declare-fun lt!146593 () Bool)

(assert (=> b!295488 (= res!155414 lt!146593)))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!146594 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2241 0))(
  ( (MissingZero!2241 (index!11134 (_ BitVec 32))) (Found!2241 (index!11135 (_ BitVec 32))) (Intermediate!2241 (undefined!3053 Bool) (index!11136 (_ BitVec 32)) (x!29322 (_ BitVec 32))) (Undefined!2241) (MissingVacant!2241 (index!11137 (_ BitVec 32))) )
))
(declare-fun lt!146592 () SeekEntryResult!2241)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14942 (_ BitVec 32)) SeekEntryResult!2241)

(assert (=> b!295488 (= lt!146592 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146594 k!2524 (array!14943 (store (arr!7081 a!3312) i!1256 k!2524) (size!7433 a!3312)) mask!3809))))

(declare-fun lt!146595 () SeekEntryResult!2241)

(assert (=> b!295488 (= lt!146595 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146594 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295488 (= lt!146594 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!295489 () Bool)

(declare-fun res!155413 () Bool)

(assert (=> b!295489 (=> (not res!155413) (not e!186779))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!295489 (= res!155413 (validKeyInArray!0 k!2524))))

(declare-fun b!295490 () Bool)

(declare-fun res!155415 () Bool)

(assert (=> b!295490 (=> (not res!155415) (not e!186779))))

(assert (=> b!295490 (= res!155415 (and (= (size!7433 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7433 a!3312))))))

(declare-fun b!295491 () Bool)

(declare-fun e!186775 () Bool)

(assert (=> b!295491 (= e!186778 e!186775)))

(declare-fun res!155408 () Bool)

(assert (=> b!295491 (=> (not res!155408) (not e!186775))))

(declare-fun lt!146597 () Bool)

(assert (=> b!295491 (= res!155408 (and (or lt!146597 (not (undefined!3053 lt!146595))) (or lt!146597 (not (= (select (arr!7081 a!3312) (index!11136 lt!146595)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146597 (not (= (select (arr!7081 a!3312) (index!11136 lt!146595)) k!2524))) (not lt!146597)))))

(assert (=> b!295491 (= lt!146597 (not (is-Intermediate!2241 lt!146595)))))

(declare-fun b!295492 () Bool)

(assert (=> b!295492 (= e!186775 (not true))))

(assert (=> b!295492 (and (= (select (arr!7081 a!3312) (index!11136 lt!146595)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11136 lt!146595) i!1256))))

(declare-fun b!295493 () Bool)

(assert (=> b!295493 (= e!186779 e!186776)))

(declare-fun res!155410 () Bool)

(assert (=> b!295493 (=> (not res!155410) (not e!186776))))

(declare-fun lt!146596 () SeekEntryResult!2241)

(assert (=> b!295493 (= res!155410 (or lt!146593 (= lt!146596 (MissingVacant!2241 i!1256))))))

(assert (=> b!295493 (= lt!146593 (= lt!146596 (MissingZero!2241 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14942 (_ BitVec 32)) SeekEntryResult!2241)

(assert (=> b!295493 (= lt!146596 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!155411 () Bool)

(assert (=> start!29142 (=> (not res!155411) (not e!186779))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29142 (= res!155411 (validMask!0 mask!3809))))

(assert (=> start!29142 e!186779))

(assert (=> start!29142 true))

(declare-fun array_inv!5035 (array!14942) Bool)

(assert (=> start!29142 (array_inv!5035 a!3312)))

(assert (= (and start!29142 res!155411) b!295490))

(assert (= (and b!295490 res!155415) b!295489))

(assert (= (and b!295489 res!155413) b!295487))

(assert (= (and b!295487 res!155409) b!295493))

(assert (= (and b!295493 res!155410) b!295486))

(assert (= (and b!295486 res!155412) b!295488))

(assert (= (and b!295488 res!155414) b!295491))

(assert (= (and b!295491 res!155408) b!295492))

(declare-fun m!308615 () Bool)

(assert (=> b!295487 m!308615))

(declare-fun m!308617 () Bool)

(assert (=> b!295489 m!308617))

(declare-fun m!308619 () Bool)

(assert (=> start!29142 m!308619))

(declare-fun m!308621 () Bool)

(assert (=> start!29142 m!308621))

(declare-fun m!308623 () Bool)

(assert (=> b!295486 m!308623))

(declare-fun m!308625 () Bool)

(assert (=> b!295493 m!308625))

(declare-fun m!308627 () Bool)

(assert (=> b!295492 m!308627))

(assert (=> b!295491 m!308627))

(declare-fun m!308629 () Bool)

(assert (=> b!295488 m!308629))

(declare-fun m!308631 () Bool)

(assert (=> b!295488 m!308631))

(declare-fun m!308633 () Bool)

(assert (=> b!295488 m!308633))

(declare-fun m!308635 () Bool)

(assert (=> b!295488 m!308635))

(push 1)

