; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29312 () Bool)

(assert start!29312)

(declare-fun b!296806 () Bool)

(declare-fun e!187597 () Bool)

(declare-fun e!187598 () Bool)

(assert (=> b!296806 (= e!187597 e!187598)))

(declare-fun res!156446 () Bool)

(assert (=> b!296806 (=> (not res!156446) (not e!187598))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2278 0))(
  ( (MissingZero!2278 (index!11282 (_ BitVec 32))) (Found!2278 (index!11283 (_ BitVec 32))) (Intermediate!2278 (undefined!3090 Bool) (index!11284 (_ BitVec 32)) (x!29467 (_ BitVec 32))) (Undefined!2278) (MissingVacant!2278 (index!11285 (_ BitVec 32))) )
))
(declare-fun lt!147452 () SeekEntryResult!2278)

(declare-fun lt!147453 () Bool)

(assert (=> b!296806 (= res!156446 (or lt!147453 (= lt!147452 (MissingVacant!2278 i!1256))))))

(assert (=> b!296806 (= lt!147453 (= lt!147452 (MissingZero!2278 i!1256)))))

(declare-datatypes ((array!15022 0))(
  ( (array!15023 (arr!7118 (Array (_ BitVec 32) (_ BitVec 64))) (size!7470 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15022)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15022 (_ BitVec 32)) SeekEntryResult!2278)

(assert (=> b!296806 (= lt!147452 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!296807 () Bool)

(declare-fun e!187594 () Bool)

(assert (=> b!296807 (= e!187598 e!187594)))

(declare-fun res!156453 () Bool)

(assert (=> b!296807 (=> (not res!156453) (not e!187594))))

(assert (=> b!296807 (= res!156453 lt!147453)))

(declare-fun lt!147451 () (_ BitVec 32))

(declare-fun lt!147450 () SeekEntryResult!2278)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15022 (_ BitVec 32)) SeekEntryResult!2278)

(assert (=> b!296807 (= lt!147450 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147451 k0!2524 (array!15023 (store (arr!7118 a!3312) i!1256 k0!2524) (size!7470 a!3312)) mask!3809))))

(declare-fun lt!147454 () SeekEntryResult!2278)

(assert (=> b!296807 (= lt!147454 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147451 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!296807 (= lt!147451 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!296808 () Bool)

(declare-fun res!156448 () Bool)

(assert (=> b!296808 (=> (not res!156448) (not e!187597))))

(declare-fun arrayContainsKey!0 (array!15022 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!296808 (= res!156448 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!296809 () Bool)

(declare-fun res!156447 () Bool)

(assert (=> b!296809 (=> (not res!156447) (not e!187597))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!296809 (= res!156447 (validKeyInArray!0 k0!2524))))

(declare-fun b!296810 () Bool)

(declare-fun res!156450 () Bool)

(assert (=> b!296810 (=> (not res!156450) (not e!187598))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15022 (_ BitVec 32)) Bool)

(assert (=> b!296810 (= res!156450 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!296811 () Bool)

(declare-fun e!187595 () Bool)

(assert (=> b!296811 (= e!187594 e!187595)))

(declare-fun res!156452 () Bool)

(assert (=> b!296811 (=> (not res!156452) (not e!187595))))

(declare-fun lt!147455 () Bool)

(assert (=> b!296811 (= res!156452 (and (or lt!147455 (not (undefined!3090 lt!147454))) (or lt!147455 (not (= (select (arr!7118 a!3312) (index!11284 lt!147454)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!147455 (not (= (select (arr!7118 a!3312) (index!11284 lt!147454)) k0!2524))) (not lt!147455)))))

(get-info :version)

(assert (=> b!296811 (= lt!147455 (not ((_ is Intermediate!2278) lt!147454)))))

(declare-fun res!156451 () Bool)

(assert (=> start!29312 (=> (not res!156451) (not e!187597))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29312 (= res!156451 (validMask!0 mask!3809))))

(assert (=> start!29312 e!187597))

(assert (=> start!29312 true))

(declare-fun array_inv!5072 (array!15022) Bool)

(assert (=> start!29312 (array_inv!5072 a!3312)))

(declare-fun b!296812 () Bool)

(declare-fun res!156449 () Bool)

(assert (=> b!296812 (=> (not res!156449) (not e!187597))))

(assert (=> b!296812 (= res!156449 (and (= (size!7470 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7470 a!3312))))))

(declare-fun b!296813 () Bool)

(assert (=> b!296813 (= e!187595 (not true))))

(assert (=> b!296813 (and (= (select (arr!7118 a!3312) (index!11284 lt!147454)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11284 lt!147454) i!1256))))

(assert (= (and start!29312 res!156451) b!296812))

(assert (= (and b!296812 res!156449) b!296809))

(assert (= (and b!296809 res!156447) b!296808))

(assert (= (and b!296808 res!156448) b!296806))

(assert (= (and b!296806 res!156446) b!296810))

(assert (= (and b!296810 res!156450) b!296807))

(assert (= (and b!296807 res!156453) b!296811))

(assert (= (and b!296811 res!156452) b!296813))

(declare-fun m!309669 () Bool)

(assert (=> b!296808 m!309669))

(declare-fun m!309671 () Bool)

(assert (=> start!29312 m!309671))

(declare-fun m!309673 () Bool)

(assert (=> start!29312 m!309673))

(declare-fun m!309675 () Bool)

(assert (=> b!296809 m!309675))

(declare-fun m!309677 () Bool)

(assert (=> b!296811 m!309677))

(declare-fun m!309679 () Bool)

(assert (=> b!296806 m!309679))

(declare-fun m!309681 () Bool)

(assert (=> b!296807 m!309681))

(declare-fun m!309683 () Bool)

(assert (=> b!296807 m!309683))

(declare-fun m!309685 () Bool)

(assert (=> b!296807 m!309685))

(declare-fun m!309687 () Bool)

(assert (=> b!296807 m!309687))

(declare-fun m!309689 () Bool)

(assert (=> b!296810 m!309689))

(assert (=> b!296813 m!309677))

(check-sat (not start!29312) (not b!296806) (not b!296807) (not b!296809) (not b!296808) (not b!296810))
(check-sat)
