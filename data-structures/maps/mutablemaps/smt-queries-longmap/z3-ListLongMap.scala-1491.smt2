; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28344 () Bool)

(assert start!28344)

(declare-fun b!290285 () Bool)

(declare-fun res!151802 () Bool)

(declare-fun e!183706 () Bool)

(assert (=> b!290285 (=> (not res!151802) (not e!183706))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290285 (= res!151802 (validKeyInArray!0 k0!2524))))

(declare-fun res!151805 () Bool)

(assert (=> start!28344 (=> (not res!151805) (not e!183706))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28344 (= res!151805 (validMask!0 mask!3809))))

(assert (=> start!28344 e!183706))

(assert (=> start!28344 true))

(declare-datatypes ((array!14647 0))(
  ( (array!14648 (arr!6950 (Array (_ BitVec 32) (_ BitVec 64))) (size!7302 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14647)

(declare-fun array_inv!4904 (array!14647) Bool)

(assert (=> start!28344 (array_inv!4904 a!3312)))

(declare-fun b!290286 () Bool)

(declare-fun e!183703 () Bool)

(assert (=> b!290286 (= e!183706 e!183703)))

(declare-fun res!151807 () Bool)

(assert (=> b!290286 (=> (not res!151807) (not e!183703))))

(declare-fun lt!143451 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2110 0))(
  ( (MissingZero!2110 (index!10610 (_ BitVec 32))) (Found!2110 (index!10611 (_ BitVec 32))) (Intermediate!2110 (undefined!2922 Bool) (index!10612 (_ BitVec 32)) (x!28771 (_ BitVec 32))) (Undefined!2110) (MissingVacant!2110 (index!10613 (_ BitVec 32))) )
))
(declare-fun lt!143450 () SeekEntryResult!2110)

(assert (=> b!290286 (= res!151807 (or lt!143451 (= lt!143450 (MissingVacant!2110 i!1256))))))

(assert (=> b!290286 (= lt!143451 (= lt!143450 (MissingZero!2110 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14647 (_ BitVec 32)) SeekEntryResult!2110)

(assert (=> b!290286 (= lt!143450 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!290287 () Bool)

(declare-fun res!151804 () Bool)

(assert (=> b!290287 (=> (not res!151804) (not e!183706))))

(declare-fun arrayContainsKey!0 (array!14647 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290287 (= res!151804 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!290288 () Bool)

(declare-fun res!151809 () Bool)

(assert (=> b!290288 (=> (not res!151809) (not e!183703))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14647 (_ BitVec 32)) Bool)

(assert (=> b!290288 (= res!151809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!290289 () Bool)

(declare-fun e!183705 () Bool)

(assert (=> b!290289 (= e!183705 (not (or (bvslt mask!3809 #b00000000000000000000000000000000) (bvsle mask!3809 #b00111111111111111111111111111111))))))

(declare-fun lt!143449 () SeekEntryResult!2110)

(assert (=> b!290289 (= (index!10612 lt!143449) i!1256)))

(declare-fun b!290290 () Bool)

(declare-fun res!151803 () Bool)

(assert (=> b!290290 (=> (not res!151803) (not e!183706))))

(assert (=> b!290290 (= res!151803 (and (= (size!7302 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7302 a!3312))))))

(declare-fun b!290291 () Bool)

(declare-fun e!183702 () Bool)

(assert (=> b!290291 (= e!183702 e!183705)))

(declare-fun res!151808 () Bool)

(assert (=> b!290291 (=> (not res!151808) (not e!183705))))

(declare-fun lt!143453 () Bool)

(assert (=> b!290291 (= res!151808 (and (or lt!143453 (not (undefined!2922 lt!143449))) (not lt!143453) (= (select (arr!6950 a!3312) (index!10612 lt!143449)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(get-info :version)

(assert (=> b!290291 (= lt!143453 (not ((_ is Intermediate!2110) lt!143449)))))

(declare-fun b!290292 () Bool)

(assert (=> b!290292 (= e!183703 e!183702)))

(declare-fun res!151806 () Bool)

(assert (=> b!290292 (=> (not res!151806) (not e!183702))))

(assert (=> b!290292 (= res!151806 (and (not lt!143451) (= lt!143450 (MissingVacant!2110 i!1256))))))

(declare-fun lt!143452 () (_ BitVec 32))

(declare-fun lt!143448 () SeekEntryResult!2110)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14647 (_ BitVec 32)) SeekEntryResult!2110)

(assert (=> b!290292 (= lt!143448 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143452 k0!2524 (array!14648 (store (arr!6950 a!3312) i!1256 k0!2524) (size!7302 a!3312)) mask!3809))))

(assert (=> b!290292 (= lt!143449 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143452 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290292 (= lt!143452 (toIndex!0 k0!2524 mask!3809))))

(assert (= (and start!28344 res!151805) b!290290))

(assert (= (and b!290290 res!151803) b!290285))

(assert (= (and b!290285 res!151802) b!290287))

(assert (= (and b!290287 res!151804) b!290286))

(assert (= (and b!290286 res!151807) b!290288))

(assert (= (and b!290288 res!151809) b!290292))

(assert (= (and b!290292 res!151806) b!290291))

(assert (= (and b!290291 res!151808) b!290289))

(declare-fun m!304433 () Bool)

(assert (=> b!290285 m!304433))

(declare-fun m!304435 () Bool)

(assert (=> b!290292 m!304435))

(declare-fun m!304437 () Bool)

(assert (=> b!290292 m!304437))

(declare-fun m!304439 () Bool)

(assert (=> b!290292 m!304439))

(declare-fun m!304441 () Bool)

(assert (=> b!290292 m!304441))

(declare-fun m!304443 () Bool)

(assert (=> b!290288 m!304443))

(declare-fun m!304445 () Bool)

(assert (=> b!290286 m!304445))

(declare-fun m!304447 () Bool)

(assert (=> start!28344 m!304447))

(declare-fun m!304449 () Bool)

(assert (=> start!28344 m!304449))

(declare-fun m!304451 () Bool)

(assert (=> b!290291 m!304451))

(declare-fun m!304453 () Bool)

(assert (=> b!290287 m!304453))

(check-sat (not b!290292) (not b!290285) (not b!290286) (not start!28344) (not b!290287) (not b!290288))
(check-sat)
(get-model)

(declare-fun d!66195 () Bool)

(declare-fun e!183732 () Bool)

(assert (=> d!66195 e!183732))

(declare-fun c!46810 () Bool)

(declare-fun lt!143476 () SeekEntryResult!2110)

(assert (=> d!66195 (= c!46810 (and ((_ is Intermediate!2110) lt!143476) (undefined!2922 lt!143476)))))

(declare-fun e!183735 () SeekEntryResult!2110)

(assert (=> d!66195 (= lt!143476 e!183735)))

(declare-fun c!46811 () Bool)

(assert (=> d!66195 (= c!46811 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!143477 () (_ BitVec 64))

(assert (=> d!66195 (= lt!143477 (select (arr!6950 (array!14648 (store (arr!6950 a!3312) i!1256 k0!2524) (size!7302 a!3312))) lt!143452))))

(assert (=> d!66195 (validMask!0 mask!3809)))

(assert (=> d!66195 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143452 k0!2524 (array!14648 (store (arr!6950 a!3312) i!1256 k0!2524) (size!7302 a!3312)) mask!3809) lt!143476)))

(declare-fun b!290335 () Bool)

(assert (=> b!290335 (= e!183732 (bvsge (x!28771 lt!143476) #b01111111111111111111111111111110))))

(declare-fun b!290336 () Bool)

(declare-fun e!183733 () Bool)

(assert (=> b!290336 (= e!183732 e!183733)))

(declare-fun res!151842 () Bool)

(assert (=> b!290336 (= res!151842 (and ((_ is Intermediate!2110) lt!143476) (not (undefined!2922 lt!143476)) (bvslt (x!28771 lt!143476) #b01111111111111111111111111111110) (bvsge (x!28771 lt!143476) #b00000000000000000000000000000000) (bvsge (x!28771 lt!143476) #b00000000000000000000000000000000)))))

(assert (=> b!290336 (=> (not res!151842) (not e!183733))))

(declare-fun b!290337 () Bool)

(declare-fun e!183734 () SeekEntryResult!2110)

(assert (=> b!290337 (= e!183735 e!183734)))

(declare-fun c!46809 () Bool)

(assert (=> b!290337 (= c!46809 (or (= lt!143477 k0!2524) (= (bvadd lt!143477 lt!143477) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!290338 () Bool)

(assert (=> b!290338 (= e!183735 (Intermediate!2110 true lt!143452 #b00000000000000000000000000000000))))

(declare-fun b!290339 () Bool)

(assert (=> b!290339 (= e!183734 (Intermediate!2110 false lt!143452 #b00000000000000000000000000000000))))

(declare-fun b!290340 () Bool)

(assert (=> b!290340 (and (bvsge (index!10612 lt!143476) #b00000000000000000000000000000000) (bvslt (index!10612 lt!143476) (size!7302 (array!14648 (store (arr!6950 a!3312) i!1256 k0!2524) (size!7302 a!3312)))))))

(declare-fun res!151840 () Bool)

(assert (=> b!290340 (= res!151840 (= (select (arr!6950 (array!14648 (store (arr!6950 a!3312) i!1256 k0!2524) (size!7302 a!3312))) (index!10612 lt!143476)) k0!2524))))

(declare-fun e!183736 () Bool)

(assert (=> b!290340 (=> res!151840 e!183736)))

(assert (=> b!290340 (= e!183733 e!183736)))

(declare-fun b!290341 () Bool)

(assert (=> b!290341 (and (bvsge (index!10612 lt!143476) #b00000000000000000000000000000000) (bvslt (index!10612 lt!143476) (size!7302 (array!14648 (store (arr!6950 a!3312) i!1256 k0!2524) (size!7302 a!3312)))))))

(assert (=> b!290341 (= e!183736 (= (select (arr!6950 (array!14648 (store (arr!6950 a!3312) i!1256 k0!2524) (size!7302 a!3312))) (index!10612 lt!143476)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!290342 () Bool)

(assert (=> b!290342 (and (bvsge (index!10612 lt!143476) #b00000000000000000000000000000000) (bvslt (index!10612 lt!143476) (size!7302 (array!14648 (store (arr!6950 a!3312) i!1256 k0!2524) (size!7302 a!3312)))))))

(declare-fun res!151841 () Bool)

(assert (=> b!290342 (= res!151841 (= (select (arr!6950 (array!14648 (store (arr!6950 a!3312) i!1256 k0!2524) (size!7302 a!3312))) (index!10612 lt!143476)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!290342 (=> res!151841 e!183736)))

(declare-fun b!290343 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290343 (= e!183734 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!143452 #b00000000000000000000000000000000 mask!3809) k0!2524 (array!14648 (store (arr!6950 a!3312) i!1256 k0!2524) (size!7302 a!3312)) mask!3809))))

(assert (= (and d!66195 c!46811) b!290338))

(assert (= (and d!66195 (not c!46811)) b!290337))

(assert (= (and b!290337 c!46809) b!290339))

(assert (= (and b!290337 (not c!46809)) b!290343))

(assert (= (and d!66195 c!46810) b!290335))

(assert (= (and d!66195 (not c!46810)) b!290336))

(assert (= (and b!290336 res!151842) b!290340))

(assert (= (and b!290340 (not res!151840)) b!290342))

(assert (= (and b!290342 (not res!151841)) b!290341))

(declare-fun m!304477 () Bool)

(assert (=> d!66195 m!304477))

(assert (=> d!66195 m!304447))

(declare-fun m!304479 () Bool)

(assert (=> b!290342 m!304479))

(declare-fun m!304481 () Bool)

(assert (=> b!290343 m!304481))

(assert (=> b!290343 m!304481))

(declare-fun m!304483 () Bool)

(assert (=> b!290343 m!304483))

(assert (=> b!290341 m!304479))

(assert (=> b!290340 m!304479))

(assert (=> b!290292 d!66195))

(declare-fun d!66201 () Bool)

(declare-fun e!183737 () Bool)

(assert (=> d!66201 e!183737))

(declare-fun c!46813 () Bool)

(declare-fun lt!143478 () SeekEntryResult!2110)

(assert (=> d!66201 (= c!46813 (and ((_ is Intermediate!2110) lt!143478) (undefined!2922 lt!143478)))))

(declare-fun e!183740 () SeekEntryResult!2110)

(assert (=> d!66201 (= lt!143478 e!183740)))

(declare-fun c!46814 () Bool)

(assert (=> d!66201 (= c!46814 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!143479 () (_ BitVec 64))

(assert (=> d!66201 (= lt!143479 (select (arr!6950 a!3312) lt!143452))))

(assert (=> d!66201 (validMask!0 mask!3809)))

(assert (=> d!66201 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143452 k0!2524 a!3312 mask!3809) lt!143478)))

(declare-fun b!290344 () Bool)

(assert (=> b!290344 (= e!183737 (bvsge (x!28771 lt!143478) #b01111111111111111111111111111110))))

(declare-fun b!290345 () Bool)

(declare-fun e!183738 () Bool)

(assert (=> b!290345 (= e!183737 e!183738)))

(declare-fun res!151845 () Bool)

(assert (=> b!290345 (= res!151845 (and ((_ is Intermediate!2110) lt!143478) (not (undefined!2922 lt!143478)) (bvslt (x!28771 lt!143478) #b01111111111111111111111111111110) (bvsge (x!28771 lt!143478) #b00000000000000000000000000000000) (bvsge (x!28771 lt!143478) #b00000000000000000000000000000000)))))

(assert (=> b!290345 (=> (not res!151845) (not e!183738))))

(declare-fun b!290346 () Bool)

(declare-fun e!183739 () SeekEntryResult!2110)

(assert (=> b!290346 (= e!183740 e!183739)))

(declare-fun c!46812 () Bool)

(assert (=> b!290346 (= c!46812 (or (= lt!143479 k0!2524) (= (bvadd lt!143479 lt!143479) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!290347 () Bool)

(assert (=> b!290347 (= e!183740 (Intermediate!2110 true lt!143452 #b00000000000000000000000000000000))))

(declare-fun b!290348 () Bool)

(assert (=> b!290348 (= e!183739 (Intermediate!2110 false lt!143452 #b00000000000000000000000000000000))))

(declare-fun b!290349 () Bool)

(assert (=> b!290349 (and (bvsge (index!10612 lt!143478) #b00000000000000000000000000000000) (bvslt (index!10612 lt!143478) (size!7302 a!3312)))))

(declare-fun res!151843 () Bool)

(assert (=> b!290349 (= res!151843 (= (select (arr!6950 a!3312) (index!10612 lt!143478)) k0!2524))))

(declare-fun e!183741 () Bool)

(assert (=> b!290349 (=> res!151843 e!183741)))

(assert (=> b!290349 (= e!183738 e!183741)))

(declare-fun b!290350 () Bool)

(assert (=> b!290350 (and (bvsge (index!10612 lt!143478) #b00000000000000000000000000000000) (bvslt (index!10612 lt!143478) (size!7302 a!3312)))))

(assert (=> b!290350 (= e!183741 (= (select (arr!6950 a!3312) (index!10612 lt!143478)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!290351 () Bool)

(assert (=> b!290351 (and (bvsge (index!10612 lt!143478) #b00000000000000000000000000000000) (bvslt (index!10612 lt!143478) (size!7302 a!3312)))))

(declare-fun res!151844 () Bool)

(assert (=> b!290351 (= res!151844 (= (select (arr!6950 a!3312) (index!10612 lt!143478)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!290351 (=> res!151844 e!183741)))

(declare-fun b!290352 () Bool)

(assert (=> b!290352 (= e!183739 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!143452 #b00000000000000000000000000000000 mask!3809) k0!2524 a!3312 mask!3809))))

(assert (= (and d!66201 c!46814) b!290347))

(assert (= (and d!66201 (not c!46814)) b!290346))

(assert (= (and b!290346 c!46812) b!290348))

(assert (= (and b!290346 (not c!46812)) b!290352))

(assert (= (and d!66201 c!46813) b!290344))

(assert (= (and d!66201 (not c!46813)) b!290345))

(assert (= (and b!290345 res!151845) b!290349))

(assert (= (and b!290349 (not res!151843)) b!290351))

(assert (= (and b!290351 (not res!151844)) b!290350))

(declare-fun m!304485 () Bool)

(assert (=> d!66201 m!304485))

(assert (=> d!66201 m!304447))

(declare-fun m!304487 () Bool)

(assert (=> b!290351 m!304487))

(assert (=> b!290352 m!304481))

(assert (=> b!290352 m!304481))

(declare-fun m!304489 () Bool)

(assert (=> b!290352 m!304489))

(assert (=> b!290350 m!304487))

(assert (=> b!290349 m!304487))

(assert (=> b!290292 d!66201))

(declare-fun d!66203 () Bool)

(declare-fun lt!143485 () (_ BitVec 32))

(declare-fun lt!143484 () (_ BitVec 32))

(assert (=> d!66203 (= lt!143485 (bvmul (bvxor lt!143484 (bvlshr lt!143484 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66203 (= lt!143484 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66203 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!151846 (let ((h!5279 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!28774 (bvmul (bvxor h!5279 (bvlshr h!5279 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!28774 (bvlshr x!28774 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!151846 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!151846 #b00000000000000000000000000000000))))))

(assert (=> d!66203 (= (toIndex!0 k0!2524 mask!3809) (bvand (bvxor lt!143485 (bvlshr lt!143485 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!290292 d!66203))

(declare-fun d!66205 () Bool)

(declare-fun res!151851 () Bool)

(declare-fun e!183752 () Bool)

(assert (=> d!66205 (=> res!151851 e!183752)))

(assert (=> d!66205 (= res!151851 (= (select (arr!6950 a!3312) #b00000000000000000000000000000000) k0!2524))))

(assert (=> d!66205 (= (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000) e!183752)))

(declare-fun b!290369 () Bool)

(declare-fun e!183753 () Bool)

(assert (=> b!290369 (= e!183752 e!183753)))

(declare-fun res!151852 () Bool)

(assert (=> b!290369 (=> (not res!151852) (not e!183753))))

(assert (=> b!290369 (= res!151852 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7302 a!3312)))))

(declare-fun b!290370 () Bool)

(assert (=> b!290370 (= e!183753 (arrayContainsKey!0 a!3312 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66205 (not res!151851)) b!290369))

(assert (= (and b!290369 res!151852) b!290370))

(declare-fun m!304491 () Bool)

(assert (=> d!66205 m!304491))

(declare-fun m!304493 () Bool)

(assert (=> b!290370 m!304493))

(assert (=> b!290287 d!66205))

(declare-fun b!290425 () Bool)

(declare-fun e!183784 () SeekEntryResult!2110)

(assert (=> b!290425 (= e!183784 Undefined!2110)))

(declare-fun b!290426 () Bool)

(declare-fun e!183785 () SeekEntryResult!2110)

(assert (=> b!290426 (= e!183784 e!183785)))

(declare-fun lt!143511 () (_ BitVec 64))

(declare-fun lt!143512 () SeekEntryResult!2110)

(assert (=> b!290426 (= lt!143511 (select (arr!6950 a!3312) (index!10612 lt!143512)))))

(declare-fun c!46840 () Bool)

(assert (=> b!290426 (= c!46840 (= lt!143511 k0!2524))))

(declare-fun e!183786 () SeekEntryResult!2110)

(declare-fun b!290427 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14647 (_ BitVec 32)) SeekEntryResult!2110)

(assert (=> b!290427 (= e!183786 (seekKeyOrZeroReturnVacant!0 (x!28771 lt!143512) (index!10612 lt!143512) (index!10612 lt!143512) k0!2524 a!3312 mask!3809))))

(declare-fun d!66207 () Bool)

(declare-fun lt!143510 () SeekEntryResult!2110)

(assert (=> d!66207 (and (or ((_ is Undefined!2110) lt!143510) (not ((_ is Found!2110) lt!143510)) (and (bvsge (index!10611 lt!143510) #b00000000000000000000000000000000) (bvslt (index!10611 lt!143510) (size!7302 a!3312)))) (or ((_ is Undefined!2110) lt!143510) ((_ is Found!2110) lt!143510) (not ((_ is MissingZero!2110) lt!143510)) (and (bvsge (index!10610 lt!143510) #b00000000000000000000000000000000) (bvslt (index!10610 lt!143510) (size!7302 a!3312)))) (or ((_ is Undefined!2110) lt!143510) ((_ is Found!2110) lt!143510) ((_ is MissingZero!2110) lt!143510) (not ((_ is MissingVacant!2110) lt!143510)) (and (bvsge (index!10613 lt!143510) #b00000000000000000000000000000000) (bvslt (index!10613 lt!143510) (size!7302 a!3312)))) (or ((_ is Undefined!2110) lt!143510) (ite ((_ is Found!2110) lt!143510) (= (select (arr!6950 a!3312) (index!10611 lt!143510)) k0!2524) (ite ((_ is MissingZero!2110) lt!143510) (= (select (arr!6950 a!3312) (index!10610 lt!143510)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2110) lt!143510) (= (select (arr!6950 a!3312) (index!10613 lt!143510)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!66207 (= lt!143510 e!183784)))

(declare-fun c!46841 () Bool)

(assert (=> d!66207 (= c!46841 (and ((_ is Intermediate!2110) lt!143512) (undefined!2922 lt!143512)))))

(assert (=> d!66207 (= lt!143512 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(assert (=> d!66207 (validMask!0 mask!3809)))

(assert (=> d!66207 (= (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809) lt!143510)))

(declare-fun b!290428 () Bool)

(declare-fun c!46839 () Bool)

(assert (=> b!290428 (= c!46839 (= lt!143511 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!290428 (= e!183785 e!183786)))

(declare-fun b!290429 () Bool)

(assert (=> b!290429 (= e!183785 (Found!2110 (index!10612 lt!143512)))))

(declare-fun b!290430 () Bool)

(assert (=> b!290430 (= e!183786 (MissingZero!2110 (index!10612 lt!143512)))))

(assert (= (and d!66207 c!46841) b!290425))

(assert (= (and d!66207 (not c!46841)) b!290426))

(assert (= (and b!290426 c!46840) b!290429))

(assert (= (and b!290426 (not c!46840)) b!290428))

(assert (= (and b!290428 c!46839) b!290430))

(assert (= (and b!290428 (not c!46839)) b!290427))

(declare-fun m!304509 () Bool)

(assert (=> b!290426 m!304509))

(declare-fun m!304511 () Bool)

(assert (=> b!290427 m!304511))

(assert (=> d!66207 m!304441))

(declare-fun m!304513 () Bool)

(assert (=> d!66207 m!304513))

(declare-fun m!304515 () Bool)

(assert (=> d!66207 m!304515))

(assert (=> d!66207 m!304441))

(assert (=> d!66207 m!304447))

(declare-fun m!304517 () Bool)

(assert (=> d!66207 m!304517))

(declare-fun m!304519 () Bool)

(assert (=> d!66207 m!304519))

(assert (=> b!290286 d!66207))

(declare-fun d!66217 () Bool)

(assert (=> d!66217 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!28344 d!66217))

(declare-fun d!66223 () Bool)

(assert (=> d!66223 (= (array_inv!4904 a!3312) (bvsge (size!7302 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!28344 d!66223))

(declare-fun d!66225 () Bool)

(assert (=> d!66225 (= (validKeyInArray!0 k0!2524) (and (not (= k0!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!290285 d!66225))

(declare-fun b!290457 () Bool)

(declare-fun e!183803 () Bool)

(declare-fun call!25634 () Bool)

(assert (=> b!290457 (= e!183803 call!25634)))

(declare-fun b!290458 () Bool)

(declare-fun e!183804 () Bool)

(assert (=> b!290458 (= e!183804 e!183803)))

(declare-fun c!46850 () Bool)

(assert (=> b!290458 (= c!46850 (validKeyInArray!0 (select (arr!6950 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!290459 () Bool)

(declare-fun e!183805 () Bool)

(assert (=> b!290459 (= e!183805 call!25634)))

(declare-fun d!66227 () Bool)

(declare-fun res!151884 () Bool)

(assert (=> d!66227 (=> res!151884 e!183804)))

(assert (=> d!66227 (= res!151884 (bvsge #b00000000000000000000000000000000 (size!7302 a!3312)))))

(assert (=> d!66227 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!183804)))

(declare-fun b!290460 () Bool)

(assert (=> b!290460 (= e!183803 e!183805)))

(declare-fun lt!143531 () (_ BitVec 64))

(assert (=> b!290460 (= lt!143531 (select (arr!6950 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9133 0))(
  ( (Unit!9134) )
))
(declare-fun lt!143529 () Unit!9133)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14647 (_ BitVec 64) (_ BitVec 32)) Unit!9133)

(assert (=> b!290460 (= lt!143529 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!143531 #b00000000000000000000000000000000))))

(assert (=> b!290460 (arrayContainsKey!0 a!3312 lt!143531 #b00000000000000000000000000000000)))

(declare-fun lt!143530 () Unit!9133)

(assert (=> b!290460 (= lt!143530 lt!143529)))

(declare-fun res!151883 () Bool)

(assert (=> b!290460 (= res!151883 (= (seekEntryOrOpen!0 (select (arr!6950 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2110 #b00000000000000000000000000000000)))))

(assert (=> b!290460 (=> (not res!151883) (not e!183805))))

(declare-fun bm!25631 () Bool)

(assert (=> bm!25631 (= call!25634 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(assert (= (and d!66227 (not res!151884)) b!290458))

(assert (= (and b!290458 c!46850) b!290460))

(assert (= (and b!290458 (not c!46850)) b!290457))

(assert (= (and b!290460 res!151883) b!290459))

(assert (= (or b!290459 b!290457) bm!25631))

(assert (=> b!290458 m!304491))

(assert (=> b!290458 m!304491))

(declare-fun m!304535 () Bool)

(assert (=> b!290458 m!304535))

(assert (=> b!290460 m!304491))

(declare-fun m!304537 () Bool)

(assert (=> b!290460 m!304537))

(declare-fun m!304539 () Bool)

(assert (=> b!290460 m!304539))

(assert (=> b!290460 m!304491))

(declare-fun m!304541 () Bool)

(assert (=> b!290460 m!304541))

(declare-fun m!304543 () Bool)

(assert (=> bm!25631 m!304543))

(assert (=> b!290288 d!66227))

(check-sat (not b!290352) (not bm!25631) (not b!290343) (not b!290458) (not d!66201) (not b!290370) (not d!66207) (not d!66195) (not b!290427) (not b!290460))
(check-sat)
