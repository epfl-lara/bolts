; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29310 () Bool)

(assert start!29310)

(declare-fun b!296782 () Bool)

(declare-fun e!187579 () Bool)

(declare-fun e!187582 () Bool)

(assert (=> b!296782 (= e!187579 e!187582)))

(declare-fun res!156428 () Bool)

(assert (=> b!296782 (=> (not res!156428) (not e!187582))))

(declare-datatypes ((array!15020 0))(
  ( (array!15021 (arr!7117 (Array (_ BitVec 32) (_ BitVec 64))) (size!7469 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15020)

(declare-fun k!2524 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2277 0))(
  ( (MissingZero!2277 (index!11278 (_ BitVec 32))) (Found!2277 (index!11279 (_ BitVec 32))) (Intermediate!2277 (undefined!3089 Bool) (index!11280 (_ BitVec 32)) (x!29466 (_ BitVec 32))) (Undefined!2277) (MissingVacant!2277 (index!11281 (_ BitVec 32))) )
))
(declare-fun lt!147432 () SeekEntryResult!2277)

(declare-fun lt!147433 () Bool)

(assert (=> b!296782 (= res!156428 (and (or lt!147433 (not (undefined!3089 lt!147432))) (or lt!147433 (not (= (select (arr!7117 a!3312) (index!11280 lt!147432)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!147433 (not (= (select (arr!7117 a!3312) (index!11280 lt!147432)) k!2524))) (not lt!147433)))))

(assert (=> b!296782 (= lt!147433 (not (is-Intermediate!2277 lt!147432)))))

(declare-fun b!296783 () Bool)

(declare-fun e!187583 () Bool)

(assert (=> b!296783 (= e!187583 e!187579)))

(declare-fun res!156426 () Bool)

(assert (=> b!296783 (=> (not res!156426) (not e!187579))))

(declare-fun lt!147435 () Bool)

(assert (=> b!296783 (= res!156426 lt!147435)))

(declare-fun lt!147437 () SeekEntryResult!2277)

(declare-fun lt!147436 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15020 (_ BitVec 32)) SeekEntryResult!2277)

(assert (=> b!296783 (= lt!147437 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147436 k!2524 (array!15021 (store (arr!7117 a!3312) i!1256 k!2524) (size!7469 a!3312)) mask!3809))))

(assert (=> b!296783 (= lt!147432 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147436 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!296783 (= lt!147436 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!296784 () Bool)

(declare-fun res!156423 () Bool)

(declare-fun e!187580 () Bool)

(assert (=> b!296784 (=> (not res!156423) (not e!187580))))

(assert (=> b!296784 (= res!156423 (and (= (size!7469 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7469 a!3312))))))

(declare-fun res!156424 () Bool)

(assert (=> start!29310 (=> (not res!156424) (not e!187580))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29310 (= res!156424 (validMask!0 mask!3809))))

(assert (=> start!29310 e!187580))

(assert (=> start!29310 true))

(declare-fun array_inv!5071 (array!15020) Bool)

(assert (=> start!29310 (array_inv!5071 a!3312)))

(declare-fun b!296785 () Bool)

(assert (=> b!296785 (= e!187582 (not true))))

(assert (=> b!296785 (and (= (select (arr!7117 a!3312) (index!11280 lt!147432)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11280 lt!147432) i!1256))))

(declare-fun b!296786 () Bool)

(declare-fun res!156422 () Bool)

(assert (=> b!296786 (=> (not res!156422) (not e!187580))))

(declare-fun arrayContainsKey!0 (array!15020 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!296786 (= res!156422 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!296787 () Bool)

(declare-fun res!156425 () Bool)

(assert (=> b!296787 (=> (not res!156425) (not e!187580))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!296787 (= res!156425 (validKeyInArray!0 k!2524))))

(declare-fun b!296788 () Bool)

(assert (=> b!296788 (= e!187580 e!187583)))

(declare-fun res!156427 () Bool)

(assert (=> b!296788 (=> (not res!156427) (not e!187583))))

(declare-fun lt!147434 () SeekEntryResult!2277)

(assert (=> b!296788 (= res!156427 (or lt!147435 (= lt!147434 (MissingVacant!2277 i!1256))))))

(assert (=> b!296788 (= lt!147435 (= lt!147434 (MissingZero!2277 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15020 (_ BitVec 32)) SeekEntryResult!2277)

(assert (=> b!296788 (= lt!147434 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!296789 () Bool)

(declare-fun res!156429 () Bool)

(assert (=> b!296789 (=> (not res!156429) (not e!187583))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15020 (_ BitVec 32)) Bool)

(assert (=> b!296789 (= res!156429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!29310 res!156424) b!296784))

(assert (= (and b!296784 res!156423) b!296787))

(assert (= (and b!296787 res!156425) b!296786))

(assert (= (and b!296786 res!156422) b!296788))

(assert (= (and b!296788 res!156427) b!296789))

(assert (= (and b!296789 res!156429) b!296783))

(assert (= (and b!296783 res!156426) b!296782))

(assert (= (and b!296782 res!156428) b!296785))

(declare-fun m!309647 () Bool)

(assert (=> b!296783 m!309647))

(declare-fun m!309649 () Bool)

(assert (=> b!296783 m!309649))

(declare-fun m!309651 () Bool)

(assert (=> b!296783 m!309651))

(declare-fun m!309653 () Bool)

(assert (=> b!296783 m!309653))

(declare-fun m!309655 () Bool)

(assert (=> b!296782 m!309655))

(declare-fun m!309657 () Bool)

(assert (=> b!296786 m!309657))

(declare-fun m!309659 () Bool)

(assert (=> b!296789 m!309659))

(declare-fun m!309661 () Bool)

(assert (=> start!29310 m!309661))

(declare-fun m!309663 () Bool)

(assert (=> start!29310 m!309663))

(declare-fun m!309665 () Bool)

(assert (=> b!296787 m!309665))

(assert (=> b!296785 m!309655))

(declare-fun m!309667 () Bool)

(assert (=> b!296788 m!309667))

(push 1)

