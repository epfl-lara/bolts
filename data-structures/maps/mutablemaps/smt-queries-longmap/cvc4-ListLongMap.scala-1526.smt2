; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28748 () Bool)

(assert start!28748)

(declare-fun b!293407 () Bool)

(declare-fun res!154360 () Bool)

(declare-fun e!185534 () Bool)

(assert (=> b!293407 (=> (not res!154360) (not e!185534))))

(declare-datatypes ((array!14871 0))(
  ( (array!14872 (arr!7056 (Array (_ BitVec 32) (_ BitVec 64))) (size!7408 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14871)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14871 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!293407 (= res!154360 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!293408 () Bool)

(declare-fun res!154363 () Bool)

(assert (=> b!293408 (=> (not res!154363) (not e!185534))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!293408 (= res!154363 (validKeyInArray!0 k!2524))))

(declare-fun b!293409 () Bool)

(declare-fun res!154361 () Bool)

(declare-fun e!185536 () Bool)

(assert (=> b!293409 (=> (not res!154361) (not e!185536))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14871 (_ BitVec 32)) Bool)

(assert (=> b!293409 (= res!154361 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!293410 () Bool)

(assert (=> b!293410 (= e!185534 e!185536)))

(declare-fun res!154362 () Bool)

(assert (=> b!293410 (=> (not res!154362) (not e!185536))))

(declare-datatypes ((SeekEntryResult!2216 0))(
  ( (MissingZero!2216 (index!11034 (_ BitVec 32))) (Found!2216 (index!11035 (_ BitVec 32))) (Intermediate!2216 (undefined!3028 Bool) (index!11036 (_ BitVec 32)) (x!29181 (_ BitVec 32))) (Undefined!2216) (MissingVacant!2216 (index!11037 (_ BitVec 32))) )
))
(declare-fun lt!145489 () SeekEntryResult!2216)

(declare-fun lt!145491 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!293410 (= res!154362 (or lt!145491 (= lt!145489 (MissingVacant!2216 i!1256))))))

(assert (=> b!293410 (= lt!145491 (= lt!145489 (MissingZero!2216 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14871 (_ BitVec 32)) SeekEntryResult!2216)

(assert (=> b!293410 (= lt!145489 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!154364 () Bool)

(assert (=> start!28748 (=> (not res!154364) (not e!185534))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28748 (= res!154364 (validMask!0 mask!3809))))

(assert (=> start!28748 e!185534))

(assert (=> start!28748 true))

(declare-fun array_inv!5010 (array!14871) Bool)

(assert (=> start!28748 (array_inv!5010 a!3312)))

(declare-fun b!293411 () Bool)

(declare-fun res!154365 () Bool)

(assert (=> b!293411 (=> (not res!154365) (not e!185534))))

(assert (=> b!293411 (= res!154365 (and (= (size!7408 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7408 a!3312))))))

(declare-fun lt!145493 () SeekEntryResult!2216)

(declare-fun b!293412 () Bool)

(assert (=> b!293412 (= e!185536 (and lt!145491 (let ((bdg!6217 (not (is-Intermediate!2216 lt!145493)))) (and (or bdg!6217 (not (undefined!3028 lt!145493))) (not bdg!6217) (or (bvslt (index!11036 lt!145493) #b00000000000000000000000000000000) (bvsge (index!11036 lt!145493) (size!7408 a!3312)))))))))

(declare-fun lt!145492 () (_ BitVec 32))

(declare-fun lt!145490 () SeekEntryResult!2216)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14871 (_ BitVec 32)) SeekEntryResult!2216)

(assert (=> b!293412 (= lt!145490 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145492 k!2524 (array!14872 (store (arr!7056 a!3312) i!1256 k!2524) (size!7408 a!3312)) mask!3809))))

(assert (=> b!293412 (= lt!145493 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145492 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!293412 (= lt!145492 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!28748 res!154364) b!293411))

(assert (= (and b!293411 res!154365) b!293408))

(assert (= (and b!293408 res!154363) b!293407))

(assert (= (and b!293407 res!154360) b!293410))

(assert (= (and b!293410 res!154362) b!293409))

(assert (= (and b!293409 res!154361) b!293412))

(declare-fun m!307163 () Bool)

(assert (=> b!293410 m!307163))

(declare-fun m!307165 () Bool)

(assert (=> start!28748 m!307165))

(declare-fun m!307167 () Bool)

(assert (=> start!28748 m!307167))

(declare-fun m!307169 () Bool)

(assert (=> b!293409 m!307169))

(declare-fun m!307171 () Bool)

(assert (=> b!293407 m!307171))

(declare-fun m!307173 () Bool)

(assert (=> b!293408 m!307173))

(declare-fun m!307175 () Bool)

(assert (=> b!293412 m!307175))

(declare-fun m!307177 () Bool)

(assert (=> b!293412 m!307177))

(declare-fun m!307179 () Bool)

(assert (=> b!293412 m!307179))

(declare-fun m!307181 () Bool)

(assert (=> b!293412 m!307181))

(push 1)

(assert (not b!293408))

(assert (not b!293412))

(assert (not start!28748))

(assert (not b!293409))

(assert (not b!293407))

(assert (not b!293410))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!66491 () Bool)

(declare-fun res!154388 () Bool)

(declare-fun e!185565 () Bool)

(assert (=> d!66491 (=> res!154388 e!185565)))

(assert (=> d!66491 (= res!154388 (= (select (arr!7056 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!66491 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!185565)))

(declare-fun b!293447 () Bool)

(declare-fun e!185566 () Bool)

(assert (=> b!293447 (= e!185565 e!185566)))

(declare-fun res!154389 () Bool)

(assert (=> b!293447 (=> (not res!154389) (not e!185566))))

(assert (=> b!293447 (= res!154389 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7408 a!3312)))))

(declare-fun b!293448 () Bool)

(assert (=> b!293448 (= e!185566 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66491 (not res!154388)) b!293447))

(assert (= (and b!293447 res!154389) b!293448))

(declare-fun m!307209 () Bool)

(assert (=> d!66491 m!307209))

(declare-fun m!307211 () Bool)

(assert (=> b!293448 m!307211))

(assert (=> b!293407 d!66491))

(declare-fun b!293494 () Bool)

(declare-fun e!185595 () SeekEntryResult!2216)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!293494 (= e!185595 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145492 #b00000000000000000000000000000000 mask!3809) k!2524 (array!14872 (store (arr!7056 a!3312) i!1256 k!2524) (size!7408 a!3312)) mask!3809))))

(declare-fun b!293495 () Bool)

(declare-fun lt!145522 () SeekEntryResult!2216)

(assert (=> b!293495 (and (bvsge (index!11036 lt!145522) #b00000000000000000000000000000000) (bvslt (index!11036 lt!145522) (size!7408 (array!14872 (store (arr!7056 a!3312) i!1256 k!2524) (size!7408 a!3312)))))))

(declare-fun e!185594 () Bool)

(assert (=> b!293495 (= e!185594 (= (select (arr!7056 (array!14872 (store (arr!7056 a!3312) i!1256 k!2524) (size!7408 a!3312))) (index!11036 lt!145522)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!66497 () Bool)

(declare-fun e!185592 () Bool)

(assert (=> d!66497 e!185592))

(declare-fun c!47112 () Bool)

(assert (=> d!66497 (= c!47112 (and (is-Intermediate!2216 lt!145522) (undefined!3028 lt!145522)))))

(declare-fun e!185593 () SeekEntryResult!2216)

(assert (=> d!66497 (= lt!145522 e!185593)))

(declare-fun c!47113 () Bool)

(assert (=> d!66497 (= c!47113 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!145523 () (_ BitVec 64))

(assert (=> d!66497 (= lt!145523 (select (arr!7056 (array!14872 (store (arr!7056 a!3312) i!1256 k!2524) (size!7408 a!3312))) lt!145492))))

(assert (=> d!66497 (validMask!0 mask!3809)))

(assert (=> d!66497 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145492 k!2524 (array!14872 (store (arr!7056 a!3312) i!1256 k!2524) (size!7408 a!3312)) mask!3809) lt!145522)))

(declare-fun b!293496 () Bool)

(assert (=> b!293496 (= e!185595 (Intermediate!2216 false lt!145492 #b00000000000000000000000000000000))))

(declare-fun b!293497 () Bool)

(declare-fun e!185596 () Bool)

(assert (=> b!293497 (= e!185592 e!185596)))

(declare-fun res!154407 () Bool)

(assert (=> b!293497 (= res!154407 (and (is-Intermediate!2216 lt!145522) (not (undefined!3028 lt!145522)) (bvslt (x!29181 lt!145522) #b01111111111111111111111111111110) (bvsge (x!29181 lt!145522) #b00000000000000000000000000000000) (bvsge (x!29181 lt!145522) #b00000000000000000000000000000000)))))

(assert (=> b!293497 (=> (not res!154407) (not e!185596))))

(declare-fun b!293498 () Bool)

(assert (=> b!293498 (and (bvsge (index!11036 lt!145522) #b00000000000000000000000000000000) (bvslt (index!11036 lt!145522) (size!7408 (array!14872 (store (arr!7056 a!3312) i!1256 k!2524) (size!7408 a!3312)))))))

(declare-fun res!154406 () Bool)

(assert (=> b!293498 (= res!154406 (= (select (arr!7056 (array!14872 (store (arr!7056 a!3312) i!1256 k!2524) (size!7408 a!3312))) (index!11036 lt!145522)) k!2524))))

(assert (=> b!293498 (=> res!154406 e!185594)))

(assert (=> b!293498 (= e!185596 e!185594)))

(declare-fun b!293499 () Bool)

(assert (=> b!293499 (= e!185593 e!185595)))

(declare-fun c!47114 () Bool)

(assert (=> b!293499 (= c!47114 (or (= lt!145523 k!2524) (= (bvadd lt!145523 lt!145523) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!293500 () Bool)

(assert (=> b!293500 (= e!185592 (bvsge (x!29181 lt!145522) #b01111111111111111111111111111110))))

(declare-fun b!293501 () Bool)

(assert (=> b!293501 (= e!185593 (Intermediate!2216 true lt!145492 #b00000000000000000000000000000000))))

(declare-fun b!293502 () Bool)

(assert (=> b!293502 (and (bvsge (index!11036 lt!145522) #b00000000000000000000000000000000) (bvslt (index!11036 lt!145522) (size!7408 (array!14872 (store (arr!7056 a!3312) i!1256 k!2524) (size!7408 a!3312)))))))

(declare-fun res!154405 () Bool)

(assert (=> b!293502 (= res!154405 (= (select (arr!7056 (array!14872 (store (arr!7056 a!3312) i!1256 k!2524) (size!7408 a!3312))) (index!11036 lt!145522)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!293502 (=> res!154405 e!185594)))

(assert (= (and d!66497 c!47113) b!293501))

(assert (= (and d!66497 (not c!47113)) b!293499))

(assert (= (and b!293499 c!47114) b!293496))

(assert (= (and b!293499 (not c!47114)) b!293494))

(assert (= (and d!66497 c!47112) b!293500))

(assert (= (and d!66497 (not c!47112)) b!293497))

(assert (= (and b!293497 res!154407) b!293498))

(assert (= (and b!293498 (not res!154406)) b!293502))

(assert (= (and b!293502 (not res!154405)) b!293495))

(declare-fun m!307215 () Bool)

(assert (=> b!293502 m!307215))

(declare-fun m!307219 () Bool)

(assert (=> d!66497 m!307219))

(assert (=> d!66497 m!307165))

(assert (=> b!293495 m!307215))

(assert (=> b!293498 m!307215))

(declare-fun m!307223 () Bool)

(assert (=> b!293494 m!307223))

(assert (=> b!293494 m!307223))

(declare-fun m!307227 () Bool)

(assert (=> b!293494 m!307227))

(assert (=> b!293412 d!66497))

(declare-fun e!185605 () SeekEntryResult!2216)

(declare-fun b!293512 () Bool)

(assert (=> b!293512 (= e!185605 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145492 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!293513 () Bool)

(declare-fun lt!145526 () SeekEntryResult!2216)

(assert (=> b!293513 (and (bvsge (index!11036 lt!145526) #b00000000000000000000000000000000) (bvslt (index!11036 lt!145526) (size!7408 a!3312)))))

(declare-fun e!185604 () Bool)

(assert (=> b!293513 (= e!185604 (= (select (arr!7056 a!3312) (index!11036 lt!145526)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!66509 () Bool)

(declare-fun e!185602 () Bool)

(assert (=> d!66509 e!185602))

(declare-fun c!47118 () Bool)

(assert (=> d!66509 (= c!47118 (and (is-Intermediate!2216 lt!145526) (undefined!3028 lt!145526)))))

(declare-fun e!185603 () SeekEntryResult!2216)

(assert (=> d!66509 (= lt!145526 e!185603)))

(declare-fun c!47119 () Bool)

(assert (=> d!66509 (= c!47119 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!145527 () (_ BitVec 64))

(assert (=> d!66509 (= lt!145527 (select (arr!7056 a!3312) lt!145492))))

(assert (=> d!66509 (validMask!0 mask!3809)))

(assert (=> d!66509 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145492 k!2524 a!3312 mask!3809) lt!145526)))

(declare-fun b!293514 () Bool)

(assert (=> b!293514 (= e!185605 (Intermediate!2216 false lt!145492 #b00000000000000000000000000000000))))

(declare-fun b!293515 () Bool)

(declare-fun e!185606 () Bool)

(assert (=> b!293515 (= e!185602 e!185606)))

(declare-fun res!154413 () Bool)

(assert (=> b!293515 (= res!154413 (and (is-Intermediate!2216 lt!145526) (not (undefined!3028 lt!145526)) (bvslt (x!29181 lt!145526) #b01111111111111111111111111111110) (bvsge (x!29181 lt!145526) #b00000000000000000000000000000000) (bvsge (x!29181 lt!145526) #b00000000000000000000000000000000)))))

(assert (=> b!293515 (=> (not res!154413) (not e!185606))))

(declare-fun b!293516 () Bool)

(assert (=> b!293516 (and (bvsge (index!11036 lt!145526) #b00000000000000000000000000000000) (bvslt (index!11036 lt!145526) (size!7408 a!3312)))))

(declare-fun res!154412 () Bool)

(assert (=> b!293516 (= res!154412 (= (select (arr!7056 a!3312) (index!11036 lt!145526)) k!2524))))

(assert (=> b!293516 (=> res!154412 e!185604)))

(assert (=> b!293516 (= e!185606 e!185604)))

(declare-fun b!293517 () Bool)

(assert (=> b!293517 (= e!185603 e!185605)))

(declare-fun c!47120 () Bool)

(assert (=> b!293517 (= c!47120 (or (= lt!145527 k!2524) (= (bvadd lt!145527 lt!145527) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!293518 () Bool)

(assert (=> b!293518 (= e!185602 (bvsge (x!29181 lt!145526) #b01111111111111111111111111111110))))

(declare-fun b!293519 () Bool)

(assert (=> b!293519 (= e!185603 (Intermediate!2216 true lt!145492 #b00000000000000000000000000000000))))

(declare-fun b!293520 () Bool)

(assert (=> b!293520 (and (bvsge (index!11036 lt!145526) #b00000000000000000000000000000000) (bvslt (index!11036 lt!145526) (size!7408 a!3312)))))

(declare-fun res!154411 () Bool)

(assert (=> b!293520 (= res!154411 (= (select (arr!7056 a!3312) (index!11036 lt!145526)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!293520 (=> res!154411 e!185604)))

(assert (= (and d!66509 c!47119) b!293519))

(assert (= (and d!66509 (not c!47119)) b!293517))

(assert (= (and b!293517 c!47120) b!293514))

(assert (= (and b!293517 (not c!47120)) b!293512))

(assert (= (and d!66509 c!47118) b!293518))

(assert (= (and d!66509 (not c!47118)) b!293515))

(assert (= (and b!293515 res!154413) b!293516))

(assert (= (and b!293516 (not res!154412)) b!293520))

(assert (= (and b!293520 (not res!154411)) b!293513))

(declare-fun m!307231 () Bool)

(assert (=> b!293520 m!307231))

(declare-fun m!307235 () Bool)

(assert (=> d!66509 m!307235))

(assert (=> d!66509 m!307165))

(assert (=> b!293513 m!307231))

(assert (=> b!293516 m!307231))

(assert (=> b!293512 m!307223))

(assert (=> b!293512 m!307223))

(declare-fun m!307239 () Bool)

(assert (=> b!293512 m!307239))

(assert (=> b!293412 d!66509))

(declare-fun d!66513 () Bool)

(declare-fun lt!145548 () (_ BitVec 32))

(declare-fun lt!145547 () (_ BitVec 32))

(assert (=> d!66513 (= lt!145548 (bvmul (bvxor lt!145547 (bvlshr lt!145547 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66513 (= lt!145547 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66513 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!154415 (let ((h!5292 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29185 (bvmul (bvxor h!5292 (bvlshr h!5292 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29185 (bvlshr x!29185 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!154415 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!154415 #b00000000000000000000000000000000))))))

(assert (=> d!66513 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!145548 (bvlshr lt!145548 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!293412 d!66513))

(declare-fun d!66517 () Bool)

(declare-fun res!154421 () Bool)

(declare-fun e!185622 () Bool)

(assert (=> d!66517 (=> res!154421 e!185622)))

(assert (=> d!66517 (= res!154421 (bvsge #b00000000000000000000000000000000 (size!7408 a!3312)))))

(assert (=> d!66517 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!185622)))

(declare-fun b!293547 () Bool)

(declare-fun e!185623 () Bool)

(assert (=> b!293547 (= e!185622 e!185623)))

(declare-fun c!47132 () Bool)

(assert (=> b!293547 (= c!47132 (validKeyInArray!0 (select (arr!7056 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!293548 () Bool)

(declare-fun call!25676 () Bool)

(assert (=> b!293548 (= e!185623 call!25676)))

(declare-fun b!293549 () Bool)

(declare-fun e!185624 () Bool)

(assert (=> b!293549 (= e!185623 e!185624)))

(declare-fun lt!145557 () (_ BitVec 64))

(assert (=> b!293549 (= lt!145557 (select (arr!7056 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9179 0))(
  ( (Unit!9180) )
))
(declare-fun lt!145556 () Unit!9179)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14871 (_ BitVec 64) (_ BitVec 32)) Unit!9179)

(assert (=> b!293549 (= lt!145556 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!145557 #b00000000000000000000000000000000))))

(assert (=> b!293549 (arrayContainsKey!0 a!3312 lt!145557 #b00000000000000000000000000000000)))

(declare-fun lt!145555 () Unit!9179)

(assert (=> b!293549 (= lt!145555 lt!145556)))

(declare-fun res!154420 () Bool)

(assert (=> b!293549 (= res!154420 (= (seekEntryOrOpen!0 (select (arr!7056 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2216 #b00000000000000000000000000000000)))))

(assert (=> b!293549 (=> (not res!154420) (not e!185624))))

(declare-fun bm!25673 () Bool)

(assert (=> bm!25673 (= call!25676 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!293550 () Bool)

(assert (=> b!293550 (= e!185624 call!25676)))

(assert (= (and d!66517 (not res!154421)) b!293547))

(assert (= (and b!293547 c!47132) b!293549))

(assert (= (and b!293547 (not c!47132)) b!293548))

(assert (= (and b!293549 res!154420) b!293550))

(assert (= (or b!293550 b!293548) bm!25673))

(assert (=> b!293547 m!307209))

(assert (=> b!293547 m!307209))

(declare-fun m!307253 () Bool)

(assert (=> b!293547 m!307253))

(assert (=> b!293549 m!307209))

(declare-fun m!307255 () Bool)

(assert (=> b!293549 m!307255))

(declare-fun m!307257 () Bool)

(assert (=> b!293549 m!307257))

(assert (=> b!293549 m!307209))

(declare-fun m!307259 () Bool)

(assert (=> b!293549 m!307259))

(declare-fun m!307261 () Bool)

(assert (=> bm!25673 m!307261))

(assert (=> b!293409 d!66517))

(declare-fun d!66521 () Bool)

(assert (=> d!66521 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!293408 d!66521))

(declare-fun b!293623 () Bool)

(declare-fun e!185666 () SeekEntryResult!2216)

(assert (=> b!293623 (= e!185666 Undefined!2216)))

(declare-fun e!185667 () SeekEntryResult!2216)

(declare-fun lt!145587 () SeekEntryResult!2216)

(declare-fun b!293624 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14871 (_ BitVec 32)) SeekEntryResult!2216)

(assert (=> b!293624 (= e!185667 (seekKeyOrZeroReturnVacant!0 (x!29181 lt!145587) (index!11036 lt!145587) (index!11036 lt!145587) k!2524 a!3312 mask!3809))))

(declare-fun b!293625 () Bool)

(assert (=> b!293625 (= e!185667 (MissingZero!2216 (index!11036 lt!145587)))))

(declare-fun b!293626 () Bool)

(declare-fun c!47161 () Bool)

(declare-fun lt!145588 () (_ BitVec 64))

(assert (=> b!293626 (= c!47161 (= lt!145588 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!185668 () SeekEntryResult!2216)

(assert (=> b!293626 (= e!185668 e!185667)))

(declare-fun d!66523 () Bool)

(declare-fun lt!145589 () SeekEntryResult!2216)

(assert (=> d!66523 (and (or (is-Undefined!2216 lt!145589) (not (is-Found!2216 lt!145589)) (and (bvsge (index!11035 lt!145589) #b00000000000000000000000000000000) (bvslt (index!11035 lt!145589) (size!7408 a!3312)))) (or (is-Undefined!2216 lt!145589) (is-Found!2216 lt!145589) (not (is-MissingZero!2216 lt!145589)) (and (bvsge (index!11034 lt!145589) #b00000000000000000000000000000000) (bvslt (index!11034 lt!145589) (size!7408 a!3312)))) (or (is-Undefined!2216 lt!145589) (is-Found!2216 lt!145589) (is-MissingZero!2216 lt!145589) (not (is-MissingVacant!2216 lt!145589)) (and (bvsge (index!11037 lt!145589) #b00000000000000000000000000000000) (bvslt (index!11037 lt!145589) (size!7408 a!3312)))) (or (is-Undefined!2216 lt!145589) (ite (is-Found!2216 lt!145589) (= (select (arr!7056 a!3312) (index!11035 lt!145589)) k!2524) (ite (is-MissingZero!2216 lt!145589) (= (select (arr!7056 a!3312) (index!11034 lt!145589)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2216 lt!145589) (= (select (arr!7056 a!3312) (index!11037 lt!145589)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!66523 (= lt!145589 e!185666)))

(declare-fun c!47160 () Bool)

(assert (=> d!66523 (= c!47160 (and (is-Intermediate!2216 lt!145587) (undefined!3028 lt!145587)))))

(assert (=> d!66523 (= lt!145587 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!66523 (validMask!0 mask!3809)))

(assert (=> d!66523 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!145589)))

(declare-fun b!293627 () Bool)

(assert (=> b!293627 (= e!185666 e!185668)))

(assert (=> b!293627 (= lt!145588 (select (arr!7056 a!3312) (index!11036 lt!145587)))))

(declare-fun c!47162 () Bool)

