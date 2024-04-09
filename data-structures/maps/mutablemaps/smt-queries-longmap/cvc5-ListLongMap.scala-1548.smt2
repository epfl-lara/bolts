; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29316 () Bool)

(assert start!29316)

(declare-fun b!296854 () Bool)

(declare-fun e!187624 () Bool)

(declare-fun e!187628 () Bool)

(assert (=> b!296854 (= e!187624 e!187628)))

(declare-fun res!156501 () Bool)

(assert (=> b!296854 (=> (not res!156501) (not e!187628))))

(declare-fun lt!147490 () Bool)

(assert (=> b!296854 (= res!156501 lt!147490)))

(declare-fun lt!147493 () (_ BitVec 32))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!15026 0))(
  ( (array!15027 (arr!7120 (Array (_ BitVec 32) (_ BitVec 64))) (size!7472 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15026)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2280 0))(
  ( (MissingZero!2280 (index!11290 (_ BitVec 32))) (Found!2280 (index!11291 (_ BitVec 32))) (Intermediate!2280 (undefined!3092 Bool) (index!11292 (_ BitVec 32)) (x!29477 (_ BitVec 32))) (Undefined!2280) (MissingVacant!2280 (index!11293 (_ BitVec 32))) )
))
(declare-fun lt!147489 () SeekEntryResult!2280)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15026 (_ BitVec 32)) SeekEntryResult!2280)

(assert (=> b!296854 (= lt!147489 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147493 k!2524 (array!15027 (store (arr!7120 a!3312) i!1256 k!2524) (size!7472 a!3312)) mask!3809))))

(declare-fun lt!147491 () SeekEntryResult!2280)

(assert (=> b!296854 (= lt!147491 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147493 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!296854 (= lt!147493 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!296855 () Bool)

(declare-fun res!156497 () Bool)

(declare-fun e!187626 () Bool)

(assert (=> b!296855 (=> (not res!156497) (not e!187626))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!296855 (= res!156497 (validKeyInArray!0 k!2524))))

(declare-fun b!296857 () Bool)

(declare-fun res!156495 () Bool)

(assert (=> b!296857 (=> (not res!156495) (not e!187626))))

(assert (=> b!296857 (= res!156495 (and (= (size!7472 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7472 a!3312))))))

(declare-fun b!296858 () Bool)

(declare-fun res!156500 () Bool)

(assert (=> b!296858 (=> (not res!156500) (not e!187624))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15026 (_ BitVec 32)) Bool)

(assert (=> b!296858 (= res!156500 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!296859 () Bool)

(assert (=> b!296859 (= e!187626 e!187624)))

(declare-fun res!156498 () Bool)

(assert (=> b!296859 (=> (not res!156498) (not e!187624))))

(declare-fun lt!147494 () SeekEntryResult!2280)

(assert (=> b!296859 (= res!156498 (or lt!147490 (= lt!147494 (MissingVacant!2280 i!1256))))))

(assert (=> b!296859 (= lt!147490 (= lt!147494 (MissingZero!2280 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15026 (_ BitVec 32)) SeekEntryResult!2280)

(assert (=> b!296859 (= lt!147494 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!296860 () Bool)

(declare-fun e!187627 () Bool)

(assert (=> b!296860 (= e!187628 e!187627)))

(declare-fun res!156496 () Bool)

(assert (=> b!296860 (=> (not res!156496) (not e!187627))))

(declare-fun lt!147492 () Bool)

(assert (=> b!296860 (= res!156496 (and (or lt!147492 (not (undefined!3092 lt!147491))) (or lt!147492 (not (= (select (arr!7120 a!3312) (index!11292 lt!147491)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!147492 (not (= (select (arr!7120 a!3312) (index!11292 lt!147491)) k!2524))) (not lt!147492)))))

(assert (=> b!296860 (= lt!147492 (not (is-Intermediate!2280 lt!147491)))))

(declare-fun b!296861 () Bool)

(declare-fun res!156499 () Bool)

(assert (=> b!296861 (=> (not res!156499) (not e!187626))))

(declare-fun arrayContainsKey!0 (array!15026 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!296861 (= res!156499 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!156494 () Bool)

(assert (=> start!29316 (=> (not res!156494) (not e!187626))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29316 (= res!156494 (validMask!0 mask!3809))))

(assert (=> start!29316 e!187626))

(assert (=> start!29316 true))

(declare-fun array_inv!5074 (array!15026) Bool)

(assert (=> start!29316 (array_inv!5074 a!3312)))

(declare-fun b!296856 () Bool)

(assert (=> b!296856 (= e!187627 (not true))))

(assert (=> b!296856 (= lt!147489 lt!147491)))

(declare-datatypes ((Unit!9227 0))(
  ( (Unit!9228) )
))
(declare-fun lt!147488 () Unit!9227)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15026 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9227)

(assert (=> b!296856 (= lt!147488 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!147493 (index!11292 lt!147491) (x!29477 lt!147491) mask!3809))))

(assert (=> b!296856 (and (= (select (arr!7120 a!3312) (index!11292 lt!147491)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11292 lt!147491) i!1256))))

(assert (= (and start!29316 res!156494) b!296857))

(assert (= (and b!296857 res!156495) b!296855))

(assert (= (and b!296855 res!156497) b!296861))

(assert (= (and b!296861 res!156499) b!296859))

(assert (= (and b!296859 res!156498) b!296858))

(assert (= (and b!296858 res!156500) b!296854))

(assert (= (and b!296854 res!156501) b!296860))

(assert (= (and b!296860 res!156496) b!296856))

(declare-fun m!309713 () Bool)

(assert (=> b!296861 m!309713))

(declare-fun m!309715 () Bool)

(assert (=> b!296854 m!309715))

(declare-fun m!309717 () Bool)

(assert (=> b!296854 m!309717))

(declare-fun m!309719 () Bool)

(assert (=> b!296854 m!309719))

(declare-fun m!309721 () Bool)

(assert (=> b!296854 m!309721))

(declare-fun m!309723 () Bool)

(assert (=> b!296859 m!309723))

(declare-fun m!309725 () Bool)

(assert (=> b!296856 m!309725))

(declare-fun m!309727 () Bool)

(assert (=> b!296856 m!309727))

(declare-fun m!309729 () Bool)

(assert (=> b!296855 m!309729))

(declare-fun m!309731 () Bool)

(assert (=> start!29316 m!309731))

(declare-fun m!309733 () Bool)

(assert (=> start!29316 m!309733))

(declare-fun m!309735 () Bool)

(assert (=> b!296858 m!309735))

(assert (=> b!296860 m!309727))

(push 1)

