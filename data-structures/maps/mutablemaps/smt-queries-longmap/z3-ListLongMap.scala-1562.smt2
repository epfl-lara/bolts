; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29714 () Bool)

(assert start!29714)

(declare-fun b!299417 () Bool)

(declare-fun res!157890 () Bool)

(declare-fun e!189128 () Bool)

(assert (=> b!299417 (=> (not res!157890) (not e!189128))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!299417 (= res!157890 (validKeyInArray!0 k0!2524))))

(declare-fun b!299418 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2323 0))(
  ( (MissingZero!2323 (index!11468 (_ BitVec 32))) (Found!2323 (index!11469 (_ BitVec 32))) (Intermediate!2323 (undefined!3135 Bool) (index!11470 (_ BitVec 32)) (x!29678 (_ BitVec 32))) (Undefined!2323) (MissingVacant!2323 (index!11471 (_ BitVec 32))) )
))
(declare-fun lt!148969 () SeekEntryResult!2323)

(declare-fun e!189129 () Bool)

(declare-fun lt!148970 () SeekEntryResult!2323)

(declare-datatypes ((array!15130 0))(
  ( (array!15131 (arr!7163 (Array (_ BitVec 32) (_ BitVec 64))) (size!7515 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15130)

(declare-fun lt!148971 () Bool)

(get-info :version)

(assert (=> b!299418 (= e!189129 (and (not lt!148971) (= lt!148970 (MissingVacant!2323 i!1256)) (let ((bdg!6446 (not ((_ is Intermediate!2323) lt!148969)))) (and (or bdg!6446 (not (undefined!3135 lt!148969))) (or bdg!6446 (not (= (select (arr!7163 a!3312) (index!11470 lt!148969)) #b1000000000000000000000000000000000000000000000000000000000000000))) (not bdg!6446) (or (bvslt (index!11470 lt!148969) #b00000000000000000000000000000000) (bvsge (index!11470 lt!148969) (size!7515 a!3312)))))))))

(declare-fun lt!148972 () SeekEntryResult!2323)

(declare-fun lt!148973 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15130 (_ BitVec 32)) SeekEntryResult!2323)

(assert (=> b!299418 (= lt!148972 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148973 k0!2524 (array!15131 (store (arr!7163 a!3312) i!1256 k0!2524) (size!7515 a!3312)) mask!3809))))

(assert (=> b!299418 (= lt!148969 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148973 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!299418 (= lt!148973 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!299419 () Bool)

(declare-fun res!157891 () Bool)

(assert (=> b!299419 (=> (not res!157891) (not e!189128))))

(declare-fun arrayContainsKey!0 (array!15130 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!299419 (= res!157891 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!299420 () Bool)

(declare-fun res!157893 () Bool)

(assert (=> b!299420 (=> (not res!157893) (not e!189128))))

(assert (=> b!299420 (= res!157893 (and (= (size!7515 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7515 a!3312))))))

(declare-fun b!299421 () Bool)

(assert (=> b!299421 (= e!189128 e!189129)))

(declare-fun res!157888 () Bool)

(assert (=> b!299421 (=> (not res!157888) (not e!189129))))

(assert (=> b!299421 (= res!157888 (or lt!148971 (= lt!148970 (MissingVacant!2323 i!1256))))))

(assert (=> b!299421 (= lt!148971 (= lt!148970 (MissingZero!2323 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15130 (_ BitVec 32)) SeekEntryResult!2323)

(assert (=> b!299421 (= lt!148970 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun res!157892 () Bool)

(assert (=> start!29714 (=> (not res!157892) (not e!189128))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29714 (= res!157892 (validMask!0 mask!3809))))

(assert (=> start!29714 e!189128))

(assert (=> start!29714 true))

(declare-fun array_inv!5117 (array!15130) Bool)

(assert (=> start!29714 (array_inv!5117 a!3312)))

(declare-fun b!299416 () Bool)

(declare-fun res!157889 () Bool)

(assert (=> b!299416 (=> (not res!157889) (not e!189129))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15130 (_ BitVec 32)) Bool)

(assert (=> b!299416 (= res!157889 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!29714 res!157892) b!299420))

(assert (= (and b!299420 res!157893) b!299417))

(assert (= (and b!299417 res!157890) b!299419))

(assert (= (and b!299419 res!157891) b!299421))

(assert (= (and b!299421 res!157888) b!299416))

(assert (= (and b!299416 res!157889) b!299418))

(declare-fun m!311663 () Bool)

(assert (=> b!299417 m!311663))

(declare-fun m!311665 () Bool)

(assert (=> b!299416 m!311665))

(declare-fun m!311667 () Bool)

(assert (=> b!299418 m!311667))

(declare-fun m!311669 () Bool)

(assert (=> b!299418 m!311669))

(declare-fun m!311671 () Bool)

(assert (=> b!299418 m!311671))

(declare-fun m!311673 () Bool)

(assert (=> b!299418 m!311673))

(declare-fun m!311675 () Bool)

(assert (=> b!299418 m!311675))

(declare-fun m!311677 () Bool)

(assert (=> b!299419 m!311677))

(declare-fun m!311679 () Bool)

(assert (=> b!299421 m!311679))

(declare-fun m!311681 () Bool)

(assert (=> start!29714 m!311681))

(declare-fun m!311683 () Bool)

(assert (=> start!29714 m!311683))

(check-sat (not b!299418) (not start!29714) (not b!299416) (not b!299421) (not b!299419) (not b!299417))
(check-sat)
(get-model)

(declare-fun b!299464 () Bool)

(declare-fun e!189159 () SeekEntryResult!2323)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!299464 (= e!189159 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148973 #b00000000000000000000000000000000 mask!3809) k0!2524 (array!15131 (store (arr!7163 a!3312) i!1256 k0!2524) (size!7515 a!3312)) mask!3809))))

(declare-fun b!299465 () Bool)

(declare-fun e!189157 () SeekEntryResult!2323)

(assert (=> b!299465 (= e!189157 (Intermediate!2323 true lt!148973 #b00000000000000000000000000000000))))

(declare-fun b!299466 () Bool)

(declare-fun lt!148993 () SeekEntryResult!2323)

(assert (=> b!299466 (and (bvsge (index!11470 lt!148993) #b00000000000000000000000000000000) (bvslt (index!11470 lt!148993) (size!7515 (array!15131 (store (arr!7163 a!3312) i!1256 k0!2524) (size!7515 a!3312)))))))

(declare-fun e!189160 () Bool)

(assert (=> b!299466 (= e!189160 (= (select (arr!7163 (array!15131 (store (arr!7163 a!3312) i!1256 k0!2524) (size!7515 a!3312))) (index!11470 lt!148993)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!299467 () Bool)

(assert (=> b!299467 (= e!189159 (Intermediate!2323 false lt!148973 #b00000000000000000000000000000000))))

(declare-fun b!299468 () Bool)

(assert (=> b!299468 (and (bvsge (index!11470 lt!148993) #b00000000000000000000000000000000) (bvslt (index!11470 lt!148993) (size!7515 (array!15131 (store (arr!7163 a!3312) i!1256 k0!2524) (size!7515 a!3312)))))))

(declare-fun res!157925 () Bool)

(assert (=> b!299468 (= res!157925 (= (select (arr!7163 (array!15131 (store (arr!7163 a!3312) i!1256 k0!2524) (size!7515 a!3312))) (index!11470 lt!148993)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!299468 (=> res!157925 e!189160)))

(declare-fun d!67455 () Bool)

(declare-fun e!189156 () Bool)

(assert (=> d!67455 e!189156))

(declare-fun c!48361 () Bool)

(assert (=> d!67455 (= c!48361 (and ((_ is Intermediate!2323) lt!148993) (undefined!3135 lt!148993)))))

(assert (=> d!67455 (= lt!148993 e!189157)))

(declare-fun c!48360 () Bool)

(assert (=> d!67455 (= c!48360 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!148994 () (_ BitVec 64))

(assert (=> d!67455 (= lt!148994 (select (arr!7163 (array!15131 (store (arr!7163 a!3312) i!1256 k0!2524) (size!7515 a!3312))) lt!148973))))

(assert (=> d!67455 (validMask!0 mask!3809)))

(assert (=> d!67455 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148973 k0!2524 (array!15131 (store (arr!7163 a!3312) i!1256 k0!2524) (size!7515 a!3312)) mask!3809) lt!148993)))

(declare-fun b!299469 () Bool)

(assert (=> b!299469 (and (bvsge (index!11470 lt!148993) #b00000000000000000000000000000000) (bvslt (index!11470 lt!148993) (size!7515 (array!15131 (store (arr!7163 a!3312) i!1256 k0!2524) (size!7515 a!3312)))))))

(declare-fun res!157926 () Bool)

(assert (=> b!299469 (= res!157926 (= (select (arr!7163 (array!15131 (store (arr!7163 a!3312) i!1256 k0!2524) (size!7515 a!3312))) (index!11470 lt!148993)) k0!2524))))

(assert (=> b!299469 (=> res!157926 e!189160)))

(declare-fun e!189158 () Bool)

(assert (=> b!299469 (= e!189158 e!189160)))

(declare-fun b!299470 () Bool)

(assert (=> b!299470 (= e!189156 (bvsge (x!29678 lt!148993) #b01111111111111111111111111111110))))

(declare-fun b!299471 () Bool)

(assert (=> b!299471 (= e!189156 e!189158)))

(declare-fun res!157924 () Bool)

(assert (=> b!299471 (= res!157924 (and ((_ is Intermediate!2323) lt!148993) (not (undefined!3135 lt!148993)) (bvslt (x!29678 lt!148993) #b01111111111111111111111111111110) (bvsge (x!29678 lt!148993) #b00000000000000000000000000000000) (bvsge (x!29678 lt!148993) #b00000000000000000000000000000000)))))

(assert (=> b!299471 (=> (not res!157924) (not e!189158))))

(declare-fun b!299472 () Bool)

(assert (=> b!299472 (= e!189157 e!189159)))

(declare-fun c!48362 () Bool)

(assert (=> b!299472 (= c!48362 (or (= lt!148994 k0!2524) (= (bvadd lt!148994 lt!148994) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!67455 c!48360) b!299465))

(assert (= (and d!67455 (not c!48360)) b!299472))

(assert (= (and b!299472 c!48362) b!299467))

(assert (= (and b!299472 (not c!48362)) b!299464))

(assert (= (and d!67455 c!48361) b!299470))

(assert (= (and d!67455 (not c!48361)) b!299471))

(assert (= (and b!299471 res!157924) b!299469))

(assert (= (and b!299469 (not res!157926)) b!299468))

(assert (= (and b!299468 (not res!157925)) b!299466))

(declare-fun m!311711 () Bool)

(assert (=> b!299468 m!311711))

(assert (=> b!299466 m!311711))

(assert (=> b!299469 m!311711))

(declare-fun m!311713 () Bool)

(assert (=> b!299464 m!311713))

(assert (=> b!299464 m!311713))

(declare-fun m!311715 () Bool)

(assert (=> b!299464 m!311715))

(declare-fun m!311717 () Bool)

(assert (=> d!67455 m!311717))

(assert (=> d!67455 m!311681))

(assert (=> b!299418 d!67455))

(declare-fun b!299473 () Bool)

(declare-fun e!189164 () SeekEntryResult!2323)

(assert (=> b!299473 (= e!189164 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148973 #b00000000000000000000000000000000 mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun b!299474 () Bool)

(declare-fun e!189162 () SeekEntryResult!2323)

(assert (=> b!299474 (= e!189162 (Intermediate!2323 true lt!148973 #b00000000000000000000000000000000))))

(declare-fun b!299475 () Bool)

(declare-fun lt!148995 () SeekEntryResult!2323)

(assert (=> b!299475 (and (bvsge (index!11470 lt!148995) #b00000000000000000000000000000000) (bvslt (index!11470 lt!148995) (size!7515 a!3312)))))

(declare-fun e!189165 () Bool)

(assert (=> b!299475 (= e!189165 (= (select (arr!7163 a!3312) (index!11470 lt!148995)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!299476 () Bool)

(assert (=> b!299476 (= e!189164 (Intermediate!2323 false lt!148973 #b00000000000000000000000000000000))))

(declare-fun b!299477 () Bool)

(assert (=> b!299477 (and (bvsge (index!11470 lt!148995) #b00000000000000000000000000000000) (bvslt (index!11470 lt!148995) (size!7515 a!3312)))))

(declare-fun res!157928 () Bool)

(assert (=> b!299477 (= res!157928 (= (select (arr!7163 a!3312) (index!11470 lt!148995)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!299477 (=> res!157928 e!189165)))

(declare-fun d!67463 () Bool)

(declare-fun e!189161 () Bool)

(assert (=> d!67463 e!189161))

(declare-fun c!48364 () Bool)

(assert (=> d!67463 (= c!48364 (and ((_ is Intermediate!2323) lt!148995) (undefined!3135 lt!148995)))))

(assert (=> d!67463 (= lt!148995 e!189162)))

(declare-fun c!48363 () Bool)

(assert (=> d!67463 (= c!48363 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!148996 () (_ BitVec 64))

(assert (=> d!67463 (= lt!148996 (select (arr!7163 a!3312) lt!148973))))

(assert (=> d!67463 (validMask!0 mask!3809)))

(assert (=> d!67463 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148973 k0!2524 a!3312 mask!3809) lt!148995)))

(declare-fun b!299478 () Bool)

(assert (=> b!299478 (and (bvsge (index!11470 lt!148995) #b00000000000000000000000000000000) (bvslt (index!11470 lt!148995) (size!7515 a!3312)))))

(declare-fun res!157929 () Bool)

(assert (=> b!299478 (= res!157929 (= (select (arr!7163 a!3312) (index!11470 lt!148995)) k0!2524))))

(assert (=> b!299478 (=> res!157929 e!189165)))

(declare-fun e!189163 () Bool)

(assert (=> b!299478 (= e!189163 e!189165)))

(declare-fun b!299479 () Bool)

(assert (=> b!299479 (= e!189161 (bvsge (x!29678 lt!148995) #b01111111111111111111111111111110))))

(declare-fun b!299480 () Bool)

(assert (=> b!299480 (= e!189161 e!189163)))

(declare-fun res!157927 () Bool)

(assert (=> b!299480 (= res!157927 (and ((_ is Intermediate!2323) lt!148995) (not (undefined!3135 lt!148995)) (bvslt (x!29678 lt!148995) #b01111111111111111111111111111110) (bvsge (x!29678 lt!148995) #b00000000000000000000000000000000) (bvsge (x!29678 lt!148995) #b00000000000000000000000000000000)))))

(assert (=> b!299480 (=> (not res!157927) (not e!189163))))

(declare-fun b!299481 () Bool)

(assert (=> b!299481 (= e!189162 e!189164)))

(declare-fun c!48365 () Bool)

(assert (=> b!299481 (= c!48365 (or (= lt!148996 k0!2524) (= (bvadd lt!148996 lt!148996) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!67463 c!48363) b!299474))

(assert (= (and d!67463 (not c!48363)) b!299481))

(assert (= (and b!299481 c!48365) b!299476))

(assert (= (and b!299481 (not c!48365)) b!299473))

(assert (= (and d!67463 c!48364) b!299479))

(assert (= (and d!67463 (not c!48364)) b!299480))

(assert (= (and b!299480 res!157927) b!299478))

(assert (= (and b!299478 (not res!157929)) b!299477))

(assert (= (and b!299477 (not res!157928)) b!299475))

(declare-fun m!311719 () Bool)

(assert (=> b!299477 m!311719))

(assert (=> b!299475 m!311719))

(assert (=> b!299478 m!311719))

(assert (=> b!299473 m!311713))

(assert (=> b!299473 m!311713))

(declare-fun m!311721 () Bool)

(assert (=> b!299473 m!311721))

(declare-fun m!311723 () Bool)

(assert (=> d!67463 m!311723))

(assert (=> d!67463 m!311681))

(assert (=> b!299418 d!67463))

(declare-fun d!67465 () Bool)

(declare-fun lt!149008 () (_ BitVec 32))

(declare-fun lt!149007 () (_ BitVec 32))

(assert (=> d!67465 (= lt!149008 (bvmul (bvxor lt!149007 (bvlshr lt!149007 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67465 (= lt!149007 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67465 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!157930 (let ((h!5336 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29681 (bvmul (bvxor h!5336 (bvlshr h!5336 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29681 (bvlshr x!29681 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!157930 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!157930 #b00000000000000000000000000000000))))))

(assert (=> d!67465 (= (toIndex!0 k0!2524 mask!3809) (bvand (bvxor lt!149008 (bvlshr lt!149008 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!299418 d!67465))

(declare-fun d!67467 () Bool)

(declare-fun res!157941 () Bool)

(declare-fun e!189179 () Bool)

(assert (=> d!67467 (=> res!157941 e!189179)))

(assert (=> d!67467 (= res!157941 (= (select (arr!7163 a!3312) #b00000000000000000000000000000000) k0!2524))))

(assert (=> d!67467 (= (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000) e!189179)))

(declare-fun b!299498 () Bool)

(declare-fun e!189180 () Bool)

(assert (=> b!299498 (= e!189179 e!189180)))

(declare-fun res!157942 () Bool)

(assert (=> b!299498 (=> (not res!157942) (not e!189180))))

(assert (=> b!299498 (= res!157942 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7515 a!3312)))))

(declare-fun b!299499 () Bool)

(assert (=> b!299499 (= e!189180 (arrayContainsKey!0 a!3312 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67467 (not res!157941)) b!299498))

(assert (= (and b!299498 res!157942) b!299499))

(declare-fun m!311737 () Bool)

(assert (=> d!67467 m!311737))

(declare-fun m!311739 () Bool)

(assert (=> b!299499 m!311739))

(assert (=> b!299419 d!67467))

(declare-fun d!67471 () Bool)

(assert (=> d!67471 (= (validKeyInArray!0 k0!2524) (and (not (= k0!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!299417 d!67471))

(declare-fun b!299560 () Bool)

(declare-fun e!189214 () SeekEntryResult!2323)

(declare-fun e!189216 () SeekEntryResult!2323)

(assert (=> b!299560 (= e!189214 e!189216)))

(declare-fun lt!149046 () (_ BitVec 64))

(declare-fun lt!149045 () SeekEntryResult!2323)

(assert (=> b!299560 (= lt!149046 (select (arr!7163 a!3312) (index!11470 lt!149045)))))

(declare-fun c!48397 () Bool)

(assert (=> b!299560 (= c!48397 (= lt!149046 k0!2524))))

(declare-fun d!67473 () Bool)

(declare-fun lt!149047 () SeekEntryResult!2323)

(assert (=> d!67473 (and (or ((_ is Undefined!2323) lt!149047) (not ((_ is Found!2323) lt!149047)) (and (bvsge (index!11469 lt!149047) #b00000000000000000000000000000000) (bvslt (index!11469 lt!149047) (size!7515 a!3312)))) (or ((_ is Undefined!2323) lt!149047) ((_ is Found!2323) lt!149047) (not ((_ is MissingZero!2323) lt!149047)) (and (bvsge (index!11468 lt!149047) #b00000000000000000000000000000000) (bvslt (index!11468 lt!149047) (size!7515 a!3312)))) (or ((_ is Undefined!2323) lt!149047) ((_ is Found!2323) lt!149047) ((_ is MissingZero!2323) lt!149047) (not ((_ is MissingVacant!2323) lt!149047)) (and (bvsge (index!11471 lt!149047) #b00000000000000000000000000000000) (bvslt (index!11471 lt!149047) (size!7515 a!3312)))) (or ((_ is Undefined!2323) lt!149047) (ite ((_ is Found!2323) lt!149047) (= (select (arr!7163 a!3312) (index!11469 lt!149047)) k0!2524) (ite ((_ is MissingZero!2323) lt!149047) (= (select (arr!7163 a!3312) (index!11468 lt!149047)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2323) lt!149047) (= (select (arr!7163 a!3312) (index!11471 lt!149047)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67473 (= lt!149047 e!189214)))

(declare-fun c!48396 () Bool)

(assert (=> d!67473 (= c!48396 (and ((_ is Intermediate!2323) lt!149045) (undefined!3135 lt!149045)))))

(assert (=> d!67473 (= lt!149045 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(assert (=> d!67473 (validMask!0 mask!3809)))

(assert (=> d!67473 (= (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809) lt!149047)))

(declare-fun b!299561 () Bool)

(declare-fun e!189215 () SeekEntryResult!2323)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15130 (_ BitVec 32)) SeekEntryResult!2323)

(assert (=> b!299561 (= e!189215 (seekKeyOrZeroReturnVacant!0 (x!29678 lt!149045) (index!11470 lt!149045) (index!11470 lt!149045) k0!2524 a!3312 mask!3809))))

(declare-fun b!299562 () Bool)

(assert (=> b!299562 (= e!189216 (Found!2323 (index!11470 lt!149045)))))

(declare-fun b!299563 () Bool)

(assert (=> b!299563 (= e!189215 (MissingZero!2323 (index!11470 lt!149045)))))

(declare-fun b!299564 () Bool)

(declare-fun c!48398 () Bool)

(assert (=> b!299564 (= c!48398 (= lt!149046 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!299564 (= e!189216 e!189215)))

(declare-fun b!299565 () Bool)

(assert (=> b!299565 (= e!189214 Undefined!2323)))

(assert (= (and d!67473 c!48396) b!299565))

(assert (= (and d!67473 (not c!48396)) b!299560))

(assert (= (and b!299560 c!48397) b!299562))

(assert (= (and b!299560 (not c!48397)) b!299564))

(assert (= (and b!299564 c!48398) b!299563))

(assert (= (and b!299564 (not c!48398)) b!299561))

(declare-fun m!311775 () Bool)

(assert (=> b!299560 m!311775))

(declare-fun m!311777 () Bool)

(assert (=> d!67473 m!311777))

(assert (=> d!67473 m!311671))

(assert (=> d!67473 m!311681))

(assert (=> d!67473 m!311671))

(declare-fun m!311779 () Bool)

(assert (=> d!67473 m!311779))

(declare-fun m!311781 () Bool)

(assert (=> d!67473 m!311781))

(declare-fun m!311783 () Bool)

(assert (=> d!67473 m!311783))

(declare-fun m!311785 () Bool)

(assert (=> b!299561 m!311785))

(assert (=> b!299421 d!67473))

(declare-fun b!299574 () Bool)

(declare-fun e!189224 () Bool)

(declare-fun call!25832 () Bool)

(assert (=> b!299574 (= e!189224 call!25832)))

(declare-fun b!299575 () Bool)

(declare-fun e!189225 () Bool)

(assert (=> b!299575 (= e!189225 e!189224)))

(declare-fun lt!149056 () (_ BitVec 64))

(assert (=> b!299575 (= lt!149056 (select (arr!7163 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9344 0))(
  ( (Unit!9345) )
))
(declare-fun lt!149055 () Unit!9344)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15130 (_ BitVec 64) (_ BitVec 32)) Unit!9344)

(assert (=> b!299575 (= lt!149055 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!149056 #b00000000000000000000000000000000))))

(assert (=> b!299575 (arrayContainsKey!0 a!3312 lt!149056 #b00000000000000000000000000000000)))

(declare-fun lt!149054 () Unit!9344)

(assert (=> b!299575 (= lt!149054 lt!149055)))

(declare-fun res!157953 () Bool)

(assert (=> b!299575 (= res!157953 (= (seekEntryOrOpen!0 (select (arr!7163 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2323 #b00000000000000000000000000000000)))))

(assert (=> b!299575 (=> (not res!157953) (not e!189224))))

(declare-fun d!67483 () Bool)

(declare-fun res!157954 () Bool)

(declare-fun e!189223 () Bool)

(assert (=> d!67483 (=> res!157954 e!189223)))

(assert (=> d!67483 (= res!157954 (bvsge #b00000000000000000000000000000000 (size!7515 a!3312)))))

(assert (=> d!67483 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!189223)))

(declare-fun bm!25829 () Bool)

(assert (=> bm!25829 (= call!25832 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!299576 () Bool)

(assert (=> b!299576 (= e!189225 call!25832)))

(declare-fun b!299577 () Bool)

(assert (=> b!299577 (= e!189223 e!189225)))

(declare-fun c!48401 () Bool)

(assert (=> b!299577 (= c!48401 (validKeyInArray!0 (select (arr!7163 a!3312) #b00000000000000000000000000000000)))))

(assert (= (and d!67483 (not res!157954)) b!299577))

(assert (= (and b!299577 c!48401) b!299575))

(assert (= (and b!299577 (not c!48401)) b!299576))

(assert (= (and b!299575 res!157953) b!299574))

(assert (= (or b!299574 b!299576) bm!25829))

(assert (=> b!299575 m!311737))

(declare-fun m!311787 () Bool)

(assert (=> b!299575 m!311787))

(declare-fun m!311789 () Bool)

(assert (=> b!299575 m!311789))

(assert (=> b!299575 m!311737))

(declare-fun m!311791 () Bool)

(assert (=> b!299575 m!311791))

(declare-fun m!311793 () Bool)

(assert (=> bm!25829 m!311793))

(assert (=> b!299577 m!311737))

(assert (=> b!299577 m!311737))

(declare-fun m!311795 () Bool)

(assert (=> b!299577 m!311795))

(assert (=> b!299416 d!67483))

(declare-fun d!67489 () Bool)

(assert (=> d!67489 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29714 d!67489))

(declare-fun d!67493 () Bool)

(assert (=> d!67493 (= (array_inv!5117 a!3312) (bvsge (size!7515 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29714 d!67493))

(check-sat (not d!67463) (not bm!25829) (not b!299464) (not b!299577) (not d!67473) (not b!299473) (not b!299575) (not b!299561) (not b!299499) (not d!67455))
(check-sat)
