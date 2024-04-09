; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29260 () Bool)

(assert start!29260)

(declare-fun b!296542 () Bool)

(declare-fun res!156324 () Bool)

(declare-fun e!187435 () Bool)

(assert (=> b!296542 (=> (not res!156324) (not e!187435))))

(declare-datatypes ((array!15015 0))(
  ( (array!15016 (arr!7116 (Array (_ BitVec 32) (_ BitVec 64))) (size!7468 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15015)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15015 (_ BitVec 32)) Bool)

(assert (=> b!296542 (= res!156324 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!296543 () Bool)

(declare-fun res!156330 () Bool)

(declare-fun e!187432 () Bool)

(assert (=> b!296543 (=> (not res!156330) (not e!187432))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15015 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!296543 (= res!156330 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!296544 () Bool)

(declare-fun res!156329 () Bool)

(assert (=> b!296544 (=> (not res!156329) (not e!187432))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!296544 (= res!156329 (and (= (size!7468 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7468 a!3312))))))

(declare-fun b!296545 () Bool)

(declare-fun res!156326 () Bool)

(assert (=> b!296545 (=> (not res!156326) (not e!187432))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!296545 (= res!156326 (validKeyInArray!0 k!2524))))

(declare-fun b!296546 () Bool)

(declare-fun e!187434 () Bool)

(assert (=> b!296546 (= e!187435 e!187434)))

(declare-fun res!156325 () Bool)

(assert (=> b!296546 (=> (not res!156325) (not e!187434))))

(declare-fun lt!147318 () Bool)

(assert (=> b!296546 (= res!156325 lt!147318)))

(declare-datatypes ((SeekEntryResult!2276 0))(
  ( (MissingZero!2276 (index!11274 (_ BitVec 32))) (Found!2276 (index!11275 (_ BitVec 32))) (Intermediate!2276 (undefined!3088 Bool) (index!11276 (_ BitVec 32)) (x!29451 (_ BitVec 32))) (Undefined!2276) (MissingVacant!2276 (index!11277 (_ BitVec 32))) )
))
(declare-fun lt!147321 () SeekEntryResult!2276)

(declare-fun lt!147320 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15015 (_ BitVec 32)) SeekEntryResult!2276)

(assert (=> b!296546 (= lt!147321 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147320 k!2524 (array!15016 (store (arr!7116 a!3312) i!1256 k!2524) (size!7468 a!3312)) mask!3809))))

(declare-fun lt!147322 () SeekEntryResult!2276)

(assert (=> b!296546 (= lt!147322 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147320 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!296546 (= lt!147320 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!296547 () Bool)

(assert (=> b!296547 (= e!187432 e!187435)))

(declare-fun res!156323 () Bool)

(assert (=> b!296547 (=> (not res!156323) (not e!187435))))

(declare-fun lt!147319 () SeekEntryResult!2276)

(assert (=> b!296547 (= res!156323 (or lt!147318 (= lt!147319 (MissingVacant!2276 i!1256))))))

(assert (=> b!296547 (= lt!147318 (= lt!147319 (MissingZero!2276 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15015 (_ BitVec 32)) SeekEntryResult!2276)

(assert (=> b!296547 (= lt!147319 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!296548 () Bool)

(declare-fun e!187436 () Bool)

(assert (=> b!296548 (= e!187436 (not (or (not (= lt!147322 (Intermediate!2276 false (index!11276 lt!147322) (x!29451 lt!147322)))) (bvsgt #b00000000000000000000000000000000 (x!29451 lt!147322)) (and (bvsge lt!147320 #b00000000000000000000000000000000) (bvslt lt!147320 (size!7468 a!3312))))))))

(assert (=> b!296548 (and (= (select (arr!7116 a!3312) (index!11276 lt!147322)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11276 lt!147322) i!1256))))

(declare-fun res!156327 () Bool)

(assert (=> start!29260 (=> (not res!156327) (not e!187432))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29260 (= res!156327 (validMask!0 mask!3809))))

(assert (=> start!29260 e!187432))

(assert (=> start!29260 true))

(declare-fun array_inv!5070 (array!15015) Bool)

(assert (=> start!29260 (array_inv!5070 a!3312)))

(declare-fun b!296549 () Bool)

(assert (=> b!296549 (= e!187434 e!187436)))

(declare-fun res!156328 () Bool)

(assert (=> b!296549 (=> (not res!156328) (not e!187436))))

(declare-fun lt!147323 () Bool)

(assert (=> b!296549 (= res!156328 (and (or lt!147323 (not (undefined!3088 lt!147322))) (or lt!147323 (not (= (select (arr!7116 a!3312) (index!11276 lt!147322)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!147323 (not (= (select (arr!7116 a!3312) (index!11276 lt!147322)) k!2524))) (not lt!147323)))))

(assert (=> b!296549 (= lt!147323 (not (is-Intermediate!2276 lt!147322)))))

(assert (= (and start!29260 res!156327) b!296544))

(assert (= (and b!296544 res!156329) b!296545))

(assert (= (and b!296545 res!156326) b!296543))

(assert (= (and b!296543 res!156330) b!296547))

(assert (= (and b!296547 res!156323) b!296542))

(assert (= (and b!296542 res!156324) b!296546))

(assert (= (and b!296546 res!156325) b!296549))

(assert (= (and b!296549 res!156328) b!296548))

(declare-fun m!309505 () Bool)

(assert (=> b!296546 m!309505))

(declare-fun m!309507 () Bool)

(assert (=> b!296546 m!309507))

(declare-fun m!309509 () Bool)

(assert (=> b!296546 m!309509))

(declare-fun m!309511 () Bool)

(assert (=> b!296546 m!309511))

(declare-fun m!309513 () Bool)

(assert (=> b!296547 m!309513))

(declare-fun m!309515 () Bool)

(assert (=> b!296548 m!309515))

(assert (=> b!296549 m!309515))

(declare-fun m!309517 () Bool)

(assert (=> b!296542 m!309517))

(declare-fun m!309519 () Bool)

(assert (=> start!29260 m!309519))

(declare-fun m!309521 () Bool)

(assert (=> start!29260 m!309521))

(declare-fun m!309523 () Bool)

(assert (=> b!296543 m!309523))

(declare-fun m!309525 () Bool)

(assert (=> b!296545 m!309525))

(push 1)

(assert (not b!296543))

(assert (not b!296547))

(assert (not b!296546))

(assert (not start!29260))

(assert (not b!296545))

(assert (not b!296542))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!66985 () Bool)

(declare-fun res!156348 () Bool)

(declare-fun e!187461 () Bool)

(assert (=> d!66985 (=> res!156348 e!187461)))

(assert (=> d!66985 (= res!156348 (= (select (arr!7116 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!66985 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!187461)))

(declare-fun b!296590 () Bool)

(declare-fun e!187462 () Bool)

(assert (=> b!296590 (= e!187461 e!187462)))

(declare-fun res!156349 () Bool)

(assert (=> b!296590 (=> (not res!156349) (not e!187462))))

(assert (=> b!296590 (= res!156349 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7468 a!3312)))))

(declare-fun b!296591 () Bool)

(assert (=> b!296591 (= e!187462 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66985 (not res!156348)) b!296590))

(assert (= (and b!296590 res!156349) b!296591))

(declare-fun m!309541 () Bool)

(assert (=> d!66985 m!309541))

(declare-fun m!309543 () Bool)

(assert (=> b!296591 m!309543))

(assert (=> b!296543 d!66985))

(declare-fun d!66989 () Bool)

(assert (=> d!66989 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!296545 d!66989))

(declare-fun lt!147360 () SeekEntryResult!2276)

(declare-fun b!296640 () Bool)

(assert (=> b!296640 (and (bvsge (index!11276 lt!147360) #b00000000000000000000000000000000) (bvslt (index!11276 lt!147360) (size!7468 (array!15016 (store (arr!7116 a!3312) i!1256 k!2524) (size!7468 a!3312)))))))

(declare-fun res!156376 () Bool)

(assert (=> b!296640 (= res!156376 (= (select (arr!7116 (array!15016 (store (arr!7116 a!3312) i!1256 k!2524) (size!7468 a!3312))) (index!11276 lt!147360)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!187501 () Bool)

(assert (=> b!296640 (=> res!156376 e!187501)))

(declare-fun d!66991 () Bool)

(declare-fun e!187498 () Bool)

(assert (=> d!66991 e!187498))

(declare-fun c!47715 () Bool)

(assert (=> d!66991 (= c!47715 (and (is-Intermediate!2276 lt!147360) (undefined!3088 lt!147360)))))

(declare-fun e!187497 () SeekEntryResult!2276)

(assert (=> d!66991 (= lt!147360 e!187497)))

(declare-fun c!47714 () Bool)

(assert (=> d!66991 (= c!47714 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!147361 () (_ BitVec 64))

(assert (=> d!66991 (= lt!147361 (select (arr!7116 (array!15016 (store (arr!7116 a!3312) i!1256 k!2524) (size!7468 a!3312))) lt!147320))))

(assert (=> d!66991 (validMask!0 mask!3809)))

(assert (=> d!66991 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147320 k!2524 (array!15016 (store (arr!7116 a!3312) i!1256 k!2524) (size!7468 a!3312)) mask!3809) lt!147360)))

(declare-fun b!296641 () Bool)

(declare-fun e!187500 () Bool)

(assert (=> b!296641 (= e!187498 e!187500)))

(declare-fun res!156375 () Bool)

(assert (=> b!296641 (= res!156375 (and (is-Intermediate!2276 lt!147360) (not (undefined!3088 lt!147360)) (bvslt (x!29451 lt!147360) #b01111111111111111111111111111110) (bvsge (x!29451 lt!147360) #b00000000000000000000000000000000) (bvsge (x!29451 lt!147360) #b00000000000000000000000000000000)))))

(assert (=> b!296641 (=> (not res!156375) (not e!187500))))

(declare-fun b!296642 () Bool)

(assert (=> b!296642 (and (bvsge (index!11276 lt!147360) #b00000000000000000000000000000000) (bvslt (index!11276 lt!147360) (size!7468 (array!15016 (store (arr!7116 a!3312) i!1256 k!2524) (size!7468 a!3312)))))))

(declare-fun res!156374 () Bool)

(assert (=> b!296642 (= res!156374 (= (select (arr!7116 (array!15016 (store (arr!7116 a!3312) i!1256 k!2524) (size!7468 a!3312))) (index!11276 lt!147360)) k!2524))))

(assert (=> b!296642 (=> res!156374 e!187501)))

(assert (=> b!296642 (= e!187500 e!187501)))

(declare-fun b!296643 () Bool)

(assert (=> b!296643 (= e!187497 (Intermediate!2276 true lt!147320 #b00000000000000000000000000000000))))

(declare-fun b!296644 () Bool)

(declare-fun e!187499 () SeekEntryResult!2276)

(assert (=> b!296644 (= e!187497 e!187499)))

(declare-fun c!47713 () Bool)

(assert (=> b!296644 (= c!47713 (or (= lt!147361 k!2524) (= (bvadd lt!147361 lt!147361) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!296645 () Bool)

(assert (=> b!296645 (and (bvsge (index!11276 lt!147360) #b00000000000000000000000000000000) (bvslt (index!11276 lt!147360) (size!7468 (array!15016 (store (arr!7116 a!3312) i!1256 k!2524) (size!7468 a!3312)))))))

(assert (=> b!296645 (= e!187501 (= (select (arr!7116 (array!15016 (store (arr!7116 a!3312) i!1256 k!2524) (size!7468 a!3312))) (index!11276 lt!147360)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!296646 () Bool)

(assert (=> b!296646 (= e!187499 (Intermediate!2276 false lt!147320 #b00000000000000000000000000000000))))

(declare-fun b!296647 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!296647 (= e!187499 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!147320 #b00000000000000000000000000000000 mask!3809) k!2524 (array!15016 (store (arr!7116 a!3312) i!1256 k!2524) (size!7468 a!3312)) mask!3809))))

(declare-fun b!296648 () Bool)

(assert (=> b!296648 (= e!187498 (bvsge (x!29451 lt!147360) #b01111111111111111111111111111110))))

(assert (= (and d!66991 c!47714) b!296643))

(assert (= (and d!66991 (not c!47714)) b!296644))

(assert (= (and b!296644 c!47713) b!296646))

(assert (= (and b!296644 (not c!47713)) b!296647))

(assert (= (and d!66991 c!47715) b!296648))

(assert (= (and d!66991 (not c!47715)) b!296641))

(assert (= (and b!296641 res!156375) b!296642))

(assert (= (and b!296642 (not res!156374)) b!296640))

(assert (= (and b!296640 (not res!156376)) b!296645))

(declare-fun m!309571 () Bool)

(assert (=> b!296647 m!309571))

(assert (=> b!296647 m!309571))

(declare-fun m!309573 () Bool)

(assert (=> b!296647 m!309573))

(declare-fun m!309575 () Bool)

(assert (=> b!296640 m!309575))

(assert (=> b!296642 m!309575))

(declare-fun m!309577 () Bool)

(assert (=> d!66991 m!309577))

(assert (=> d!66991 m!309519))

(assert (=> b!296645 m!309575))

(assert (=> b!296546 d!66991))

(declare-fun b!296649 () Bool)

(declare-fun lt!147362 () SeekEntryResult!2276)

(assert (=> b!296649 (and (bvsge (index!11276 lt!147362) #b00000000000000000000000000000000) (bvslt (index!11276 lt!147362) (size!7468 a!3312)))))

(declare-fun res!156379 () Bool)

(assert (=> b!296649 (= res!156379 (= (select (arr!7116 a!3312) (index!11276 lt!147362)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!187506 () Bool)

(assert (=> b!296649 (=> res!156379 e!187506)))

(declare-fun d!67011 () Bool)

(declare-fun e!187503 () Bool)

(assert (=> d!67011 e!187503))

(declare-fun c!47718 () Bool)

(assert (=> d!67011 (= c!47718 (and (is-Intermediate!2276 lt!147362) (undefined!3088 lt!147362)))))

(declare-fun e!187502 () SeekEntryResult!2276)

(assert (=> d!67011 (= lt!147362 e!187502)))

(declare-fun c!47717 () Bool)

(assert (=> d!67011 (= c!47717 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!147363 () (_ BitVec 64))

(assert (=> d!67011 (= lt!147363 (select (arr!7116 a!3312) lt!147320))))

(assert (=> d!67011 (validMask!0 mask!3809)))

(assert (=> d!67011 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147320 k!2524 a!3312 mask!3809) lt!147362)))

(declare-fun b!296650 () Bool)

(declare-fun e!187505 () Bool)

(assert (=> b!296650 (= e!187503 e!187505)))

(declare-fun res!156378 () Bool)

(assert (=> b!296650 (= res!156378 (and (is-Intermediate!2276 lt!147362) (not (undefined!3088 lt!147362)) (bvslt (x!29451 lt!147362) #b01111111111111111111111111111110) (bvsge (x!29451 lt!147362) #b00000000000000000000000000000000) (bvsge (x!29451 lt!147362) #b00000000000000000000000000000000)))))

(assert (=> b!296650 (=> (not res!156378) (not e!187505))))

(declare-fun b!296651 () Bool)

(assert (=> b!296651 (and (bvsge (index!11276 lt!147362) #b00000000000000000000000000000000) (bvslt (index!11276 lt!147362) (size!7468 a!3312)))))

(declare-fun res!156377 () Bool)

(assert (=> b!296651 (= res!156377 (= (select (arr!7116 a!3312) (index!11276 lt!147362)) k!2524))))

(assert (=> b!296651 (=> res!156377 e!187506)))

(assert (=> b!296651 (= e!187505 e!187506)))

(declare-fun b!296652 () Bool)

(assert (=> b!296652 (= e!187502 (Intermediate!2276 true lt!147320 #b00000000000000000000000000000000))))

(declare-fun b!296653 () Bool)

(declare-fun e!187504 () SeekEntryResult!2276)

(assert (=> b!296653 (= e!187502 e!187504)))

(declare-fun c!47716 () Bool)

(assert (=> b!296653 (= c!47716 (or (= lt!147363 k!2524) (= (bvadd lt!147363 lt!147363) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!296654 () Bool)

(assert (=> b!296654 (and (bvsge (index!11276 lt!147362) #b00000000000000000000000000000000) (bvslt (index!11276 lt!147362) (size!7468 a!3312)))))

(assert (=> b!296654 (= e!187506 (= (select (arr!7116 a!3312) (index!11276 lt!147362)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!296655 () Bool)

(assert (=> b!296655 (= e!187504 (Intermediate!2276 false lt!147320 #b00000000000000000000000000000000))))

(declare-fun b!296656 () Bool)

(assert (=> b!296656 (= e!187504 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!147320 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!296657 () Bool)

(assert (=> b!296657 (= e!187503 (bvsge (x!29451 lt!147362) #b01111111111111111111111111111110))))

(assert (= (and d!67011 c!47717) b!296652))

(assert (= (and d!67011 (not c!47717)) b!296653))

(assert (= (and b!296653 c!47716) b!296655))

(assert (= (and b!296653 (not c!47716)) b!296656))

(assert (= (and d!67011 c!47718) b!296657))

(assert (= (and d!67011 (not c!47718)) b!296650))

(assert (= (and b!296650 res!156378) b!296651))

(assert (= (and b!296651 (not res!156377)) b!296649))

(assert (= (and b!296649 (not res!156379)) b!296654))

(assert (=> b!296656 m!309571))

(assert (=> b!296656 m!309571))

(declare-fun m!309579 () Bool)

(assert (=> b!296656 m!309579))

(declare-fun m!309581 () Bool)

(assert (=> b!296649 m!309581))

(assert (=> b!296651 m!309581))

(declare-fun m!309583 () Bool)

(assert (=> d!67011 m!309583))

(assert (=> d!67011 m!309519))

(assert (=> b!296654 m!309581))

(assert (=> b!296546 d!67011))

(declare-fun d!67013 () Bool)

(declare-fun lt!147375 () (_ BitVec 32))

(declare-fun lt!147374 () (_ BitVec 32))

(assert (=> d!67013 (= lt!147375 (bvmul (bvxor lt!147374 (bvlshr lt!147374 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67013 (= lt!147374 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67013 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!156380 (let ((h!5316 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29455 (bvmul (bvxor h!5316 (bvlshr h!5316 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29455 (bvlshr x!29455 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!156380 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!156380 #b00000000000000000000000000000000))))))

(assert (=> d!67013 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!147375 (bvlshr lt!147375 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!296546 d!67013))

(declare-fun d!67015 () Bool)

(assert (=> d!67015 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29260 d!67015))

(declare-fun d!67019 () Bool)

(assert (=> d!67019 (= (array_inv!5070 a!3312) (bvsge (size!7468 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29260 d!67019))

(declare-fun b!296702 () Bool)

(declare-fun e!187532 () Bool)

(declare-fun e!187531 () Bool)

(assert (=> b!296702 (= e!187532 e!187531)))

(declare-fun c!47739 () Bool)

(assert (=> b!296702 (= c!47739 (validKeyInArray!0 (select (arr!7116 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!296703 () Bool)

(declare-fun e!187533 () Bool)

(assert (=> b!296703 (= e!187531 e!187533)))

(declare-fun lt!147394 () (_ BitVec 64))

(assert (=> b!296703 (= lt!147394 (select (arr!7116 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9225 0))(
  ( (Unit!9226) )
))
(declare-fun lt!147396 () Unit!9225)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15015 (_ BitVec 64) (_ BitVec 32)) Unit!9225)

(assert (=> b!296703 (= lt!147396 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!147394 #b00000000000000000000000000000000))))

(assert (=> b!296703 (arrayContainsKey!0 a!3312 lt!147394 #b00000000000000000000000000000000)))

(declare-fun lt!147395 () Unit!9225)

(assert (=> b!296703 (= lt!147395 lt!147396)))

(declare-fun res!156386 () Bool)

(assert (=> b!296703 (= res!156386 (= (seekEntryOrOpen!0 (select (arr!7116 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2276 #b00000000000000000000000000000000)))))

(assert (=> b!296703 (=> (not res!156386) (not e!187533))))

(declare-fun b!296704 () Bool)

(declare-fun call!25749 () Bool)

(assert (=> b!296704 (= e!187533 call!25749)))

(declare-fun d!67021 () Bool)

(declare-fun res!156385 () Bool)

(assert (=> d!67021 (=> res!156385 e!187532)))

(assert (=> d!67021 (= res!156385 (bvsge #b00000000000000000000000000000000 (size!7468 a!3312)))))

(assert (=> d!67021 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!187532)))

(declare-fun b!296705 () Bool)

(assert (=> b!296705 (= e!187531 call!25749)))

(declare-fun bm!25746 () Bool)

(assert (=> bm!25746 (= call!25749 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(assert (= (and d!67021 (not res!156385)) b!296702))

(assert (= (and b!296702 c!47739) b!296703))

(assert (= (and b!296702 (not c!47739)) b!296705))

(assert (= (and b!296703 res!156386) b!296704))

(assert (= (or b!296704 b!296705) bm!25746))

(assert (=> b!296702 m!309541))

(assert (=> b!296702 m!309541))

(declare-fun m!309609 () Bool)

(assert (=> b!296702 m!309609))

(assert (=> b!296703 m!309541))

(declare-fun m!309611 () Bool)

(assert (=> b!296703 m!309611))

(declare-fun m!309613 () Bool)

(assert (=> b!296703 m!309613))

(assert (=> b!296703 m!309541))

(declare-fun m!309615 () Bool)

(assert (=> b!296703 m!309615))

(declare-fun m!309617 () Bool)

(assert (=> bm!25746 m!309617))

(assert (=> b!296542 d!67021))

(declare-fun lt!147418 () SeekEntryResult!2276)

(declare-fun e!187567 () SeekEntryResult!2276)

(declare-fun b!296760 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15015 (_ BitVec 32)) SeekEntryResult!2276)

(assert (=> b!296760 (= e!187567 (seekKeyOrZeroReturnVacant!0 (x!29451 lt!147418) (index!11276 lt!147418) (index!11276 lt!147418) k!2524 a!3312 mask!3809))))

(declare-fun b!296761 () Bool)

(declare-fun e!187568 () SeekEntryResult!2276)

(declare-fun e!187566 () SeekEntryResult!2276)

(assert (=> b!296761 (= e!187568 e!187566)))

(declare-fun lt!147417 () (_ BitVec 64))

(assert (=> b!296761 (= lt!147417 (select (arr!7116 a!3312) (index!11276 lt!147418)))))

(declare-fun c!47759 () Bool)

(assert (=> b!296761 (= c!47759 (= lt!147417 k!2524))))

(declare-fun b!296762 () Bool)

(assert (=> b!296762 (= e!187566 (Found!2276 (index!11276 lt!147418)))))

(declare-fun b!296763 () Bool)

(declare-fun c!47760 () Bool)

(assert (=> b!296763 (= c!47760 (= lt!147417 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!296763 (= e!187566 e!187567)))

(declare-fun b!296764 () Bool)

(assert (=> b!296764 (= e!187568 Undefined!2276)))

(declare-fun b!296765 () Bool)

(assert (=> b!296765 (= e!187567 (MissingZero!2276 (index!11276 lt!147418)))))

