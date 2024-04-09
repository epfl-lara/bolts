; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29898 () Bool)

(assert start!29898)

(declare-fun b!300424 () Bool)

(declare-fun res!158476 () Bool)

(declare-fun e!189705 () Bool)

(assert (=> b!300424 (=> (not res!158476) (not e!189705))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300424 (= res!158476 (validKeyInArray!0 k!2524))))

(declare-fun lt!149525 () Bool)

(declare-fun b!300425 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun e!189706 () Bool)

(declare-datatypes ((SeekEntryResult!2343 0))(
  ( (MissingZero!2343 (index!11548 (_ BitVec 32))) (Found!2343 (index!11549 (_ BitVec 32))) (Intermediate!2343 (undefined!3155 Bool) (index!11550 (_ BitVec 32)) (x!29772 (_ BitVec 32))) (Undefined!2343) (MissingVacant!2343 (index!11551 (_ BitVec 32))) )
))
(declare-fun lt!149521 () SeekEntryResult!2343)

(declare-fun lt!149524 () SeekEntryResult!2343)

(assert (=> b!300425 (= e!189706 (and (not lt!149525) (= lt!149524 (MissingVacant!2343 i!1256)) (not (is-Intermediate!2343 lt!149521))))))

(declare-fun lt!149522 () (_ BitVec 32))

(declare-datatypes ((array!15179 0))(
  ( (array!15180 (arr!7183 (Array (_ BitVec 32) (_ BitVec 64))) (size!7535 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15179)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun lt!149523 () SeekEntryResult!2343)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15179 (_ BitVec 32)) SeekEntryResult!2343)

(assert (=> b!300425 (= lt!149523 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149522 k!2524 (array!15180 (store (arr!7183 a!3312) i!1256 k!2524) (size!7535 a!3312)) mask!3809))))

(assert (=> b!300425 (= lt!149521 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149522 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!300425 (= lt!149522 (toIndex!0 k!2524 mask!3809))))

(declare-fun res!158473 () Bool)

(assert (=> start!29898 (=> (not res!158473) (not e!189705))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29898 (= res!158473 (validMask!0 mask!3809))))

(assert (=> start!29898 e!189705))

(assert (=> start!29898 true))

(declare-fun array_inv!5137 (array!15179) Bool)

(assert (=> start!29898 (array_inv!5137 a!3312)))

(declare-fun b!300426 () Bool)

(declare-fun res!158478 () Bool)

(assert (=> b!300426 (=> (not res!158478) (not e!189706))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15179 (_ BitVec 32)) Bool)

(assert (=> b!300426 (= res!158478 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!300427 () Bool)

(assert (=> b!300427 (= e!189705 e!189706)))

(declare-fun res!158474 () Bool)

(assert (=> b!300427 (=> (not res!158474) (not e!189706))))

(assert (=> b!300427 (= res!158474 (or lt!149525 (= lt!149524 (MissingVacant!2343 i!1256))))))

(assert (=> b!300427 (= lt!149525 (= lt!149524 (MissingZero!2343 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15179 (_ BitVec 32)) SeekEntryResult!2343)

(assert (=> b!300427 (= lt!149524 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!300428 () Bool)

(declare-fun res!158477 () Bool)

(assert (=> b!300428 (=> (not res!158477) (not e!189705))))

(assert (=> b!300428 (= res!158477 (and (= (size!7535 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7535 a!3312))))))

(declare-fun b!300429 () Bool)

(declare-fun res!158475 () Bool)

(assert (=> b!300429 (=> (not res!158475) (not e!189705))))

(declare-fun arrayContainsKey!0 (array!15179 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300429 (= res!158475 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!29898 res!158473) b!300428))

(assert (= (and b!300428 res!158477) b!300424))

(assert (= (and b!300424 res!158476) b!300429))

(assert (= (and b!300429 res!158475) b!300427))

(assert (= (and b!300427 res!158474) b!300426))

(assert (= (and b!300426 res!158478) b!300425))

(declare-fun m!312439 () Bool)

(assert (=> b!300429 m!312439))

(declare-fun m!312441 () Bool)

(assert (=> b!300424 m!312441))

(declare-fun m!312443 () Bool)

(assert (=> start!29898 m!312443))

(declare-fun m!312445 () Bool)

(assert (=> start!29898 m!312445))

(declare-fun m!312447 () Bool)

(assert (=> b!300426 m!312447))

(declare-fun m!312449 () Bool)

(assert (=> b!300427 m!312449))

(declare-fun m!312451 () Bool)

(assert (=> b!300425 m!312451))

(declare-fun m!312453 () Bool)

(assert (=> b!300425 m!312453))

(declare-fun m!312455 () Bool)

(assert (=> b!300425 m!312455))

(declare-fun m!312457 () Bool)

(assert (=> b!300425 m!312457))

(push 1)

(assert (not b!300429))

(assert (not start!29898))

(assert (not b!300426))

(assert (not b!300427))

(assert (not b!300425))

(assert (not b!300424))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!300514 () Bool)

(declare-fun e!189761 () SeekEntryResult!2343)

(assert (=> b!300514 (= e!189761 (Intermediate!2343 true lt!149522 #b00000000000000000000000000000000))))

(declare-fun d!67635 () Bool)

(declare-fun e!189759 () Bool)

(assert (=> d!67635 e!189759))

(declare-fun c!48583 () Bool)

(declare-fun lt!149578 () SeekEntryResult!2343)

(assert (=> d!67635 (= c!48583 (and (is-Intermediate!2343 lt!149578) (undefined!3155 lt!149578)))))

(assert (=> d!67635 (= lt!149578 e!189761)))

(declare-fun c!48584 () Bool)

(assert (=> d!67635 (= c!48584 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!149579 () (_ BitVec 64))

(assert (=> d!67635 (= lt!149579 (select (arr!7183 (array!15180 (store (arr!7183 a!3312) i!1256 k!2524) (size!7535 a!3312))) lt!149522))))

(assert (=> d!67635 (validMask!0 mask!3809)))

(assert (=> d!67635 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149522 k!2524 (array!15180 (store (arr!7183 a!3312) i!1256 k!2524) (size!7535 a!3312)) mask!3809) lt!149578)))

(declare-fun b!300515 () Bool)

(assert (=> b!300515 (and (bvsge (index!11550 lt!149578) #b00000000000000000000000000000000) (bvslt (index!11550 lt!149578) (size!7535 (array!15180 (store (arr!7183 a!3312) i!1256 k!2524) (size!7535 a!3312)))))))

(declare-fun res!158539 () Bool)

(assert (=> b!300515 (= res!158539 (= (select (arr!7183 (array!15180 (store (arr!7183 a!3312) i!1256 k!2524) (size!7535 a!3312))) (index!11550 lt!149578)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!189762 () Bool)

(assert (=> b!300515 (=> res!158539 e!189762)))

(declare-fun b!300516 () Bool)

(declare-fun e!189760 () SeekEntryResult!2343)

(assert (=> b!300516 (= e!189761 e!189760)))

(declare-fun c!48582 () Bool)

(assert (=> b!300516 (= c!48582 (or (= lt!149579 k!2524) (= (bvadd lt!149579 lt!149579) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!300517 () Bool)

(assert (=> b!300517 (= e!189759 (bvsge (x!29772 lt!149578) #b01111111111111111111111111111110))))

(declare-fun b!300518 () Bool)

(declare-fun e!189763 () Bool)

(assert (=> b!300518 (= e!189759 e!189763)))

(declare-fun res!158540 () Bool)

(assert (=> b!300518 (= res!158540 (and (is-Intermediate!2343 lt!149578) (not (undefined!3155 lt!149578)) (bvslt (x!29772 lt!149578) #b01111111111111111111111111111110) (bvsge (x!29772 lt!149578) #b00000000000000000000000000000000) (bvsge (x!29772 lt!149578) #b00000000000000000000000000000000)))))

(assert (=> b!300518 (=> (not res!158540) (not e!189763))))

(declare-fun b!300519 () Bool)

(assert (=> b!300519 (= e!189760 (Intermediate!2343 false lt!149522 #b00000000000000000000000000000000))))

(declare-fun b!300520 () Bool)

(assert (=> b!300520 (and (bvsge (index!11550 lt!149578) #b00000000000000000000000000000000) (bvslt (index!11550 lt!149578) (size!7535 (array!15180 (store (arr!7183 a!3312) i!1256 k!2524) (size!7535 a!3312)))))))

(assert (=> b!300520 (= e!189762 (= (select (arr!7183 (array!15180 (store (arr!7183 a!3312) i!1256 k!2524) (size!7535 a!3312))) (index!11550 lt!149578)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!300521 () Bool)

(assert (=> b!300521 (and (bvsge (index!11550 lt!149578) #b00000000000000000000000000000000) (bvslt (index!11550 lt!149578) (size!7535 (array!15180 (store (arr!7183 a!3312) i!1256 k!2524) (size!7535 a!3312)))))))

(declare-fun res!158541 () Bool)

(assert (=> b!300521 (= res!158541 (= (select (arr!7183 (array!15180 (store (arr!7183 a!3312) i!1256 k!2524) (size!7535 a!3312))) (index!11550 lt!149578)) k!2524))))

(assert (=> b!300521 (=> res!158541 e!189762)))

(assert (=> b!300521 (= e!189763 e!189762)))

(declare-fun b!300522 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!300522 (= e!189760 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!149522 #b00000000000000000000000000000000 mask!3809) k!2524 (array!15180 (store (arr!7183 a!3312) i!1256 k!2524) (size!7535 a!3312)) mask!3809))))

(assert (= (and d!67635 c!48584) b!300514))

(assert (= (and d!67635 (not c!48584)) b!300516))

(assert (= (and b!300516 c!48582) b!300519))

(assert (= (and b!300516 (not c!48582)) b!300522))

(assert (= (and d!67635 c!48583) b!300517))

(assert (= (and d!67635 (not c!48583)) b!300518))

(assert (= (and b!300518 res!158540) b!300521))

(assert (= (and b!300521 (not res!158541)) b!300515))

(assert (= (and b!300515 (not res!158539)) b!300520))

(declare-fun m!312525 () Bool)

(assert (=> b!300521 m!312525))

(declare-fun m!312527 () Bool)

(assert (=> b!300522 m!312527))

(assert (=> b!300522 m!312527))

(declare-fun m!312529 () Bool)

(assert (=> b!300522 m!312529))

(assert (=> b!300515 m!312525))

(declare-fun m!312531 () Bool)

(assert (=> d!67635 m!312531))

(assert (=> d!67635 m!312443))

(assert (=> b!300520 m!312525))

(assert (=> b!300425 d!67635))

(declare-fun b!300523 () Bool)

(declare-fun e!189766 () SeekEntryResult!2343)

(assert (=> b!300523 (= e!189766 (Intermediate!2343 true lt!149522 #b00000000000000000000000000000000))))

(declare-fun d!67651 () Bool)

(declare-fun e!189764 () Bool)

(assert (=> d!67651 e!189764))

(declare-fun c!48586 () Bool)

(declare-fun lt!149580 () SeekEntryResult!2343)

(assert (=> d!67651 (= c!48586 (and (is-Intermediate!2343 lt!149580) (undefined!3155 lt!149580)))))

(assert (=> d!67651 (= lt!149580 e!189766)))

(declare-fun c!48587 () Bool)

(assert (=> d!67651 (= c!48587 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!149581 () (_ BitVec 64))

(assert (=> d!67651 (= lt!149581 (select (arr!7183 a!3312) lt!149522))))

(assert (=> d!67651 (validMask!0 mask!3809)))

(assert (=> d!67651 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149522 k!2524 a!3312 mask!3809) lt!149580)))

(declare-fun b!300524 () Bool)

(assert (=> b!300524 (and (bvsge (index!11550 lt!149580) #b00000000000000000000000000000000) (bvslt (index!11550 lt!149580) (size!7535 a!3312)))))

(declare-fun res!158542 () Bool)

(assert (=> b!300524 (= res!158542 (= (select (arr!7183 a!3312) (index!11550 lt!149580)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!189767 () Bool)

(assert (=> b!300524 (=> res!158542 e!189767)))

(declare-fun b!300525 () Bool)

(declare-fun e!189765 () SeekEntryResult!2343)

(assert (=> b!300525 (= e!189766 e!189765)))

(declare-fun c!48585 () Bool)

(assert (=> b!300525 (= c!48585 (or (= lt!149581 k!2524) (= (bvadd lt!149581 lt!149581) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!300526 () Bool)

(assert (=> b!300526 (= e!189764 (bvsge (x!29772 lt!149580) #b01111111111111111111111111111110))))

(declare-fun b!300527 () Bool)

(declare-fun e!189768 () Bool)

(assert (=> b!300527 (= e!189764 e!189768)))

(declare-fun res!158543 () Bool)

(assert (=> b!300527 (= res!158543 (and (is-Intermediate!2343 lt!149580) (not (undefined!3155 lt!149580)) (bvslt (x!29772 lt!149580) #b01111111111111111111111111111110) (bvsge (x!29772 lt!149580) #b00000000000000000000000000000000) (bvsge (x!29772 lt!149580) #b00000000000000000000000000000000)))))

(assert (=> b!300527 (=> (not res!158543) (not e!189768))))

(declare-fun b!300528 () Bool)

(assert (=> b!300528 (= e!189765 (Intermediate!2343 false lt!149522 #b00000000000000000000000000000000))))

(declare-fun b!300529 () Bool)

(assert (=> b!300529 (and (bvsge (index!11550 lt!149580) #b00000000000000000000000000000000) (bvslt (index!11550 lt!149580) (size!7535 a!3312)))))

(assert (=> b!300529 (= e!189767 (= (select (arr!7183 a!3312) (index!11550 lt!149580)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!300530 () Bool)

(assert (=> b!300530 (and (bvsge (index!11550 lt!149580) #b00000000000000000000000000000000) (bvslt (index!11550 lt!149580) (size!7535 a!3312)))))

(declare-fun res!158544 () Bool)

(assert (=> b!300530 (= res!158544 (= (select (arr!7183 a!3312) (index!11550 lt!149580)) k!2524))))

(assert (=> b!300530 (=> res!158544 e!189767)))

(assert (=> b!300530 (= e!189768 e!189767)))

(declare-fun b!300531 () Bool)

(assert (=> b!300531 (= e!189765 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!149522 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(assert (= (and d!67651 c!48587) b!300523))

(assert (= (and d!67651 (not c!48587)) b!300525))

(assert (= (and b!300525 c!48585) b!300528))

(assert (= (and b!300525 (not c!48585)) b!300531))

(assert (= (and d!67651 c!48586) b!300526))

(assert (= (and d!67651 (not c!48586)) b!300527))

(assert (= (and b!300527 res!158543) b!300530))

(assert (= (and b!300530 (not res!158544)) b!300524))

(assert (= (and b!300524 (not res!158542)) b!300529))

(declare-fun m!312533 () Bool)

(assert (=> b!300530 m!312533))

(assert (=> b!300531 m!312527))

(assert (=> b!300531 m!312527))

(declare-fun m!312535 () Bool)

(assert (=> b!300531 m!312535))

(assert (=> b!300524 m!312533))

(declare-fun m!312537 () Bool)

(assert (=> d!67651 m!312537))

(assert (=> d!67651 m!312443))

(assert (=> b!300529 m!312533))

(assert (=> b!300425 d!67651))

(declare-fun d!67653 () Bool)

(declare-fun lt!149587 () (_ BitVec 32))

(declare-fun lt!149586 () (_ BitVec 32))

(assert (=> d!67653 (= lt!149587 (bvmul (bvxor lt!149586 (bvlshr lt!149586 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67653 (= lt!149586 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67653 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!158545 (let ((h!5345 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29776 (bvmul (bvxor h!5345 (bvlshr h!5345 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29776 (bvlshr x!29776 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!158545 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!158545 #b00000000000000000000000000000000))))))

(assert (=> d!67653 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!149587 (bvlshr lt!149587 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!300425 d!67653))

(declare-fun d!67659 () Bool)

(assert (=> d!67659 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!300424 d!67659))

(declare-fun d!67661 () Bool)

(declare-fun res!158550 () Bool)

(declare-fun e!189777 () Bool)

(assert (=> d!67661 (=> res!158550 e!189777)))

(assert (=> d!67661 (= res!158550 (= (select (arr!7183 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!67661 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!189777)))

(declare-fun b!300544 () Bool)

(declare-fun e!189778 () Bool)

(assert (=> b!300544 (= e!189777 e!189778)))

(declare-fun res!158551 () Bool)

(assert (=> b!300544 (=> (not res!158551) (not e!189778))))

(assert (=> b!300544 (= res!158551 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7535 a!3312)))))

(declare-fun b!300545 () Bool)

(assert (=> b!300545 (= e!189778 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67661 (not res!158550)) b!300544))

(assert (= (and b!300544 res!158551) b!300545))

(declare-fun m!312539 () Bool)

(assert (=> d!67661 m!312539))

(declare-fun m!312541 () Bool)

(assert (=> b!300545 m!312541))

(assert (=> b!300429 d!67661))

(declare-fun d!67663 () Bool)

(assert (=> d!67663 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29898 d!67663))

(declare-fun d!67669 () Bool)

(assert (=> d!67669 (= (array_inv!5137 a!3312) (bvsge (size!7535 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29898 d!67669))

(declare-fun b!300624 () Bool)

(declare-fun e!189820 () SeekEntryResult!2343)

(declare-fun e!189821 () SeekEntryResult!2343)

(assert (=> b!300624 (= e!189820 e!189821)))

(declare-fun lt!149629 () (_ BitVec 64))

(declare-fun lt!149627 () SeekEntryResult!2343)

(assert (=> b!300624 (= lt!149629 (select (arr!7183 a!3312) (index!11550 lt!149627)))))

(declare-fun c!48625 () Bool)

(assert (=> b!300624 (= c!48625 (= lt!149629 k!2524))))

(declare-fun b!300625 () Bool)

(assert (=> b!300625 (= e!189820 Undefined!2343)))

(declare-fun b!300626 () Bool)

(declare-fun e!189822 () SeekEntryResult!2343)

(assert (=> b!300626 (= e!189822 (MissingZero!2343 (index!11550 lt!149627)))))

(declare-fun d!67671 () Bool)

(declare-fun lt!149628 () SeekEntryResult!2343)

(assert (=> d!67671 (and (or (is-Undefined!2343 lt!149628) (not (is-Found!2343 lt!149628)) (and (bvsge (index!11549 lt!149628) #b00000000000000000000000000000000) (bvslt (index!11549 lt!149628) (size!7535 a!3312)))) (or (is-Undefined!2343 lt!149628) (is-Found!2343 lt!149628) (not (is-MissingZero!2343 lt!149628)) (and (bvsge (index!11548 lt!149628) #b00000000000000000000000000000000) (bvslt (index!11548 lt!149628) (size!7535 a!3312)))) (or (is-Undefined!2343 lt!149628) (is-Found!2343 lt!149628) (is-MissingZero!2343 lt!149628) (not (is-MissingVacant!2343 lt!149628)) (and (bvsge (index!11551 lt!149628) #b00000000000000000000000000000000) (bvslt (index!11551 lt!149628) (size!7535 a!3312)))) (or (is-Undefined!2343 lt!149628) (ite (is-Found!2343 lt!149628) (= (select (arr!7183 a!3312) (index!11549 lt!149628)) k!2524) (ite (is-MissingZero!2343 lt!149628) (= (select (arr!7183 a!3312) (index!11548 lt!149628)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2343 lt!149628) (= (select (arr!7183 a!3312) (index!11551 lt!149628)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67671 (= lt!149628 e!189820)))

(declare-fun c!48626 () Bool)

(assert (=> d!67671 (= c!48626 (and (is-Intermediate!2343 lt!149627) (undefined!3155 lt!149627)))))

(assert (=> d!67671 (= lt!149627 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!67671 (validMask!0 mask!3809)))

(assert (=> d!67671 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!149628)))

(declare-fun b!300627 () Bool)

(declare-fun c!48627 () Bool)

(assert (=> b!300627 (= c!48627 (= lt!149629 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!300627 (= e!189821 e!189822)))

(declare-fun b!300628 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15179 (_ BitVec 32)) SeekEntryResult!2343)

(assert (=> b!300628 (= e!189822 (seekKeyOrZeroReturnVacant!0 (x!29772 lt!149627) (index!11550 lt!149627) (index!11550 lt!149627) k!2524 a!3312 mask!3809))))

(declare-fun b!300629 () Bool)

(assert (=> b!300629 (= e!189821 (Found!2343 (index!11550 lt!149627)))))

(assert (= (and d!67671 c!48626) b!300625))

(assert (= (and d!67671 (not c!48626)) b!300624))

(assert (= (and b!300624 c!48625) b!300629))

(assert (= (and b!300624 (not c!48625)) b!300627))

(assert (= (and b!300627 c!48627) b!300626))

(assert (= (and b!300627 (not c!48627)) b!300628))

(declare-fun m!312569 () Bool)

(assert (=> b!300624 m!312569))

(assert (=> d!67671 m!312443))

(declare-fun m!312571 () Bool)

(assert (=> d!67671 m!312571))

(declare-fun m!312573 () Bool)

(assert (=> d!67671 m!312573))

(declare-fun m!312575 () Bool)

(assert (=> d!67671 m!312575))

(assert (=> d!67671 m!312457))

(assert (=> d!67671 m!312457))

(declare-fun m!312577 () Bool)

(assert (=> d!67671 m!312577))

(declare-fun m!312579 () Bool)

(assert (=> b!300628 m!312579))

(assert (=> b!300427 d!67671))

(declare-fun b!300678 () Bool)

(declare-fun e!189854 () Bool)

(declare-fun call!25859 () Bool)

(assert (=> b!300678 (= e!189854 call!25859)))

(declare-fun b!300679 () Bool)

(declare-fun e!189855 () Bool)

(declare-fun e!189856 () Bool)

(assert (=> b!300679 (= e!189855 e!189856)))

(declare-fun c!48641 () Bool)

(assert (=> b!300679 (= c!48641 (validKeyInArray!0 (select (arr!7183 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!300680 () Bool)

(assert (=> b!300680 (= e!189856 e!189854)))

(declare-fun lt!149643 () (_ BitVec 64))

(assert (=> b!300680 (= lt!149643 (select (arr!7183 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9360 0))(
  ( (Unit!9361) )
))
(declare-fun lt!149645 () Unit!9360)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15179 (_ BitVec 64) (_ BitVec 32)) Unit!9360)

(assert (=> b!300680 (= lt!149645 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!149643 #b00000000000000000000000000000000))))

(assert (=> b!300680 (arrayContainsKey!0 a!3312 lt!149643 #b00000000000000000000000000000000)))

(declare-fun lt!149644 () Unit!9360)

(assert (=> b!300680 (= lt!149644 lt!149645)))

(declare-fun res!158589 () Bool)

(assert (=> b!300680 (= res!158589 (= (seekEntryOrOpen!0 (select (arr!7183 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2343 #b00000000000000000000000000000000)))))

(assert (=> b!300680 (=> (not res!158589) (not e!189854))))

(declare-fun d!67677 () Bool)

(declare-fun res!158588 () Bool)

(assert (=> d!67677 (=> res!158588 e!189855)))

(assert (=> d!67677 (= res!158588 (bvsge #b00000000000000000000000000000000 (size!7535 a!3312)))))

(assert (=> d!67677 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!189855)))

(declare-fun bm!25856 () Bool)

(assert (=> bm!25856 (= call!25859 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!300681 () Bool)

(assert (=> b!300681 (= e!189856 call!25859)))

(assert (= (and d!67677 (not res!158588)) b!300679))

