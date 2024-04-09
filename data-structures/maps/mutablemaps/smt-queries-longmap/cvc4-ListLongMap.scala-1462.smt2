; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28124 () Bool)

(assert start!28124)

(declare-fun b!288041 () Bool)

(declare-fun res!149846 () Bool)

(declare-fun e!182392 () Bool)

(assert (=> b!288041 (=> (not res!149846) (not e!182392))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14472 0))(
  ( (array!14473 (arr!6864 (Array (_ BitVec 32) (_ BitVec 64))) (size!7216 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14472)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!288041 (= res!149846 (and (= (size!7216 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7216 a!3312))))))

(declare-fun res!149845 () Bool)

(assert (=> start!28124 (=> (not res!149845) (not e!182392))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28124 (= res!149845 (validMask!0 mask!3809))))

(assert (=> start!28124 e!182392))

(assert (=> start!28124 true))

(declare-fun array_inv!4818 (array!14472) Bool)

(assert (=> start!28124 (array_inv!4818 a!3312)))

(declare-fun b!288042 () Bool)

(declare-fun e!182390 () Bool)

(declare-fun e!182388 () Bool)

(assert (=> b!288042 (= e!182390 e!182388)))

(declare-fun res!149850 () Bool)

(assert (=> b!288042 (=> (not res!149850) (not e!182388))))

(declare-fun lt!141903 () Bool)

(assert (=> b!288042 (= res!149850 lt!141903)))

(declare-datatypes ((SeekEntryResult!2024 0))(
  ( (MissingZero!2024 (index!10266 (_ BitVec 32))) (Found!2024 (index!10267 (_ BitVec 32))) (Intermediate!2024 (undefined!2836 Bool) (index!10268 (_ BitVec 32)) (x!28447 (_ BitVec 32))) (Undefined!2024) (MissingVacant!2024 (index!10269 (_ BitVec 32))) )
))
(declare-fun lt!141904 () SeekEntryResult!2024)

(declare-fun lt!141906 () (_ BitVec 32))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14472 (_ BitVec 32)) SeekEntryResult!2024)

(assert (=> b!288042 (= lt!141904 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141906 k!2524 (array!14473 (store (arr!6864 a!3312) i!1256 k!2524) (size!7216 a!3312)) mask!3809))))

(declare-fun lt!141908 () SeekEntryResult!2024)

(assert (=> b!288042 (= lt!141908 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141906 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288042 (= lt!141906 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!288043 () Bool)

(assert (=> b!288043 (= e!182392 e!182390)))

(declare-fun res!149848 () Bool)

(assert (=> b!288043 (=> (not res!149848) (not e!182390))))

(declare-fun lt!141907 () SeekEntryResult!2024)

(assert (=> b!288043 (= res!149848 (or lt!141903 (= lt!141907 (MissingVacant!2024 i!1256))))))

(assert (=> b!288043 (= lt!141903 (= lt!141907 (MissingZero!2024 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14472 (_ BitVec 32)) SeekEntryResult!2024)

(assert (=> b!288043 (= lt!141907 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!288044 () Bool)

(declare-fun res!149849 () Bool)

(assert (=> b!288044 (=> (not res!149849) (not e!182392))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288044 (= res!149849 (validKeyInArray!0 k!2524))))

(declare-fun b!288045 () Bool)

(declare-fun res!149844 () Bool)

(assert (=> b!288045 (=> (not res!149844) (not e!182390))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14472 (_ BitVec 32)) Bool)

(assert (=> b!288045 (= res!149844 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!288046 () Bool)

(declare-fun res!149847 () Bool)

(assert (=> b!288046 (=> (not res!149847) (not e!182392))))

(declare-fun arrayContainsKey!0 (array!14472 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288046 (= res!149847 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!288047 () Bool)

(declare-fun e!182389 () Bool)

(assert (=> b!288047 (= e!182388 e!182389)))

(declare-fun res!149843 () Bool)

(assert (=> b!288047 (=> (not res!149843) (not e!182389))))

(declare-fun lt!141905 () Bool)

(assert (=> b!288047 (= res!149843 (and (or lt!141905 (not (undefined!2836 lt!141908))) (or lt!141905 (not (= (select (arr!6864 a!3312) (index!10268 lt!141908)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!141905 (not (= (select (arr!6864 a!3312) (index!10268 lt!141908)) k!2524))) (not lt!141905)))))

(assert (=> b!288047 (= lt!141905 (not (is-Intermediate!2024 lt!141908)))))

(declare-fun b!288048 () Bool)

(assert (=> b!288048 (= e!182389 (not (or (bvslt mask!3809 #b00000000000000000000000000000000) (bvsle mask!3809 #b00111111111111111111111111111111))))))

(assert (=> b!288048 (and (= (select (arr!6864 a!3312) (index!10268 lt!141908)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10268 lt!141908) i!1256))))

(assert (= (and start!28124 res!149845) b!288041))

(assert (= (and b!288041 res!149846) b!288044))

(assert (= (and b!288044 res!149849) b!288046))

(assert (= (and b!288046 res!149847) b!288043))

(assert (= (and b!288043 res!149848) b!288045))

(assert (= (and b!288045 res!149844) b!288042))

(assert (= (and b!288042 res!149850) b!288047))

(assert (= (and b!288047 res!149843) b!288048))

(declare-fun m!302421 () Bool)

(assert (=> b!288046 m!302421))

(declare-fun m!302423 () Bool)

(assert (=> b!288047 m!302423))

(declare-fun m!302425 () Bool)

(assert (=> b!288043 m!302425))

(assert (=> b!288048 m!302423))

(declare-fun m!302427 () Bool)

(assert (=> start!28124 m!302427))

(declare-fun m!302429 () Bool)

(assert (=> start!28124 m!302429))

(declare-fun m!302431 () Bool)

(assert (=> b!288045 m!302431))

(declare-fun m!302433 () Bool)

(assert (=> b!288042 m!302433))

(declare-fun m!302435 () Bool)

(assert (=> b!288042 m!302435))

(declare-fun m!302437 () Bool)

(assert (=> b!288042 m!302437))

(declare-fun m!302439 () Bool)

(assert (=> b!288042 m!302439))

(declare-fun m!302441 () Bool)

(assert (=> b!288044 m!302441))

(push 1)

(assert (not b!288043))

(assert (not b!288044))

(assert (not b!288045))

(assert (not b!288042))

(assert (not b!288046))

(assert (not start!28124))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!66095 () Bool)

(assert (=> d!66095 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!28124 d!66095))

(declare-fun d!66097 () Bool)

(assert (=> d!66097 (= (array_inv!4818 a!3312) (bvsge (size!7216 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!28124 d!66097))

(declare-fun b!288139 () Bool)

(declare-fun e!182447 () SeekEntryResult!2024)

(assert (=> b!288139 (= e!182447 (Intermediate!2024 true lt!141906 #b00000000000000000000000000000000))))

(declare-fun lt!141946 () SeekEntryResult!2024)

(declare-fun b!288140 () Bool)

(assert (=> b!288140 (and (bvsge (index!10268 lt!141946) #b00000000000000000000000000000000) (bvslt (index!10268 lt!141946) (size!7216 (array!14473 (store (arr!6864 a!3312) i!1256 k!2524) (size!7216 a!3312)))))))

(declare-fun res!149883 () Bool)

(assert (=> b!288140 (= res!149883 (= (select (arr!6864 (array!14473 (store (arr!6864 a!3312) i!1256 k!2524) (size!7216 a!3312))) (index!10268 lt!141946)) k!2524))))

(declare-fun e!182451 () Bool)

(assert (=> b!288140 (=> res!149883 e!182451)))

(declare-fun e!182450 () Bool)

(assert (=> b!288140 (= e!182450 e!182451)))

(declare-fun e!182448 () SeekEntryResult!2024)

(declare-fun b!288141 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288141 (= e!182448 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!141906 #b00000000000000000000000000000000 mask!3809) k!2524 (array!14473 (store (arr!6864 a!3312) i!1256 k!2524) (size!7216 a!3312)) mask!3809))))

(declare-fun b!288142 () Bool)

(assert (=> b!288142 (= e!182448 (Intermediate!2024 false lt!141906 #b00000000000000000000000000000000))))

(declare-fun b!288143 () Bool)

(declare-fun e!182449 () Bool)

(assert (=> b!288143 (= e!182449 (bvsge (x!28447 lt!141946) #b01111111111111111111111111111110))))

(declare-fun b!288144 () Bool)

(assert (=> b!288144 (and (bvsge (index!10268 lt!141946) #b00000000000000000000000000000000) (bvslt (index!10268 lt!141946) (size!7216 (array!14473 (store (arr!6864 a!3312) i!1256 k!2524) (size!7216 a!3312)))))))

(declare-fun res!149884 () Bool)

(assert (=> b!288144 (= res!149884 (= (select (arr!6864 (array!14473 (store (arr!6864 a!3312) i!1256 k!2524) (size!7216 a!3312))) (index!10268 lt!141946)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!288144 (=> res!149884 e!182451)))

(declare-fun b!288145 () Bool)

(assert (=> b!288145 (= e!182449 e!182450)))

(declare-fun res!149882 () Bool)

(assert (=> b!288145 (= res!149882 (and (is-Intermediate!2024 lt!141946) (not (undefined!2836 lt!141946)) (bvslt (x!28447 lt!141946) #b01111111111111111111111111111110) (bvsge (x!28447 lt!141946) #b00000000000000000000000000000000) (bvsge (x!28447 lt!141946) #b00000000000000000000000000000000)))))

(assert (=> b!288145 (=> (not res!149882) (not e!182450))))

(declare-fun d!66099 () Bool)

(assert (=> d!66099 e!182449))

(declare-fun c!46690 () Bool)

(assert (=> d!66099 (= c!46690 (and (is-Intermediate!2024 lt!141946) (undefined!2836 lt!141946)))))

(assert (=> d!66099 (= lt!141946 e!182447)))

(declare-fun c!46689 () Bool)

(assert (=> d!66099 (= c!46689 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!141945 () (_ BitVec 64))

(assert (=> d!66099 (= lt!141945 (select (arr!6864 (array!14473 (store (arr!6864 a!3312) i!1256 k!2524) (size!7216 a!3312))) lt!141906))))

(assert (=> d!66099 (validMask!0 mask!3809)))

(assert (=> d!66099 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141906 k!2524 (array!14473 (store (arr!6864 a!3312) i!1256 k!2524) (size!7216 a!3312)) mask!3809) lt!141946)))

(declare-fun b!288146 () Bool)

(assert (=> b!288146 (= e!182447 e!182448)))

(declare-fun c!46691 () Bool)

(assert (=> b!288146 (= c!46691 (or (= lt!141945 k!2524) (= (bvadd lt!141945 lt!141945) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!288147 () Bool)

(assert (=> b!288147 (and (bvsge (index!10268 lt!141946) #b00000000000000000000000000000000) (bvslt (index!10268 lt!141946) (size!7216 (array!14473 (store (arr!6864 a!3312) i!1256 k!2524) (size!7216 a!3312)))))))

(assert (=> b!288147 (= e!182451 (= (select (arr!6864 (array!14473 (store (arr!6864 a!3312) i!1256 k!2524) (size!7216 a!3312))) (index!10268 lt!141946)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!66099 c!46689) b!288139))

(assert (= (and d!66099 (not c!46689)) b!288146))

(assert (= (and b!288146 c!46691) b!288142))

(assert (= (and b!288146 (not c!46691)) b!288141))

(assert (= (and d!66099 c!46690) b!288143))

(assert (= (and d!66099 (not c!46690)) b!288145))

(assert (= (and b!288145 res!149882) b!288140))

(assert (= (and b!288140 (not res!149883)) b!288144))

(assert (= (and b!288144 (not res!149884)) b!288147))

(declare-fun m!302483 () Bool)

(assert (=> b!288140 m!302483))

(declare-fun m!302485 () Bool)

(assert (=> d!66099 m!302485))

(assert (=> d!66099 m!302427))

(declare-fun m!302487 () Bool)

(assert (=> b!288141 m!302487))

(assert (=> b!288141 m!302487))

(declare-fun m!302489 () Bool)

(assert (=> b!288141 m!302489))

(assert (=> b!288147 m!302483))

(assert (=> b!288144 m!302483))

(assert (=> b!288042 d!66099))

(declare-fun b!288148 () Bool)

(declare-fun e!182452 () SeekEntryResult!2024)

(assert (=> b!288148 (= e!182452 (Intermediate!2024 true lt!141906 #b00000000000000000000000000000000))))

(declare-fun b!288149 () Bool)

(declare-fun lt!141948 () SeekEntryResult!2024)

(assert (=> b!288149 (and (bvsge (index!10268 lt!141948) #b00000000000000000000000000000000) (bvslt (index!10268 lt!141948) (size!7216 a!3312)))))

(declare-fun res!149886 () Bool)

(assert (=> b!288149 (= res!149886 (= (select (arr!6864 a!3312) (index!10268 lt!141948)) k!2524))))

(declare-fun e!182456 () Bool)

(assert (=> b!288149 (=> res!149886 e!182456)))

(declare-fun e!182455 () Bool)

(assert (=> b!288149 (= e!182455 e!182456)))

(declare-fun b!288150 () Bool)

(declare-fun e!182453 () SeekEntryResult!2024)

(assert (=> b!288150 (= e!182453 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!141906 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!288151 () Bool)

(assert (=> b!288151 (= e!182453 (Intermediate!2024 false lt!141906 #b00000000000000000000000000000000))))

(declare-fun b!288152 () Bool)

(declare-fun e!182454 () Bool)

(assert (=> b!288152 (= e!182454 (bvsge (x!28447 lt!141948) #b01111111111111111111111111111110))))

(declare-fun b!288153 () Bool)

(assert (=> b!288153 (and (bvsge (index!10268 lt!141948) #b00000000000000000000000000000000) (bvslt (index!10268 lt!141948) (size!7216 a!3312)))))

(declare-fun res!149887 () Bool)

(assert (=> b!288153 (= res!149887 (= (select (arr!6864 a!3312) (index!10268 lt!141948)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!288153 (=> res!149887 e!182456)))

(declare-fun b!288154 () Bool)

(assert (=> b!288154 (= e!182454 e!182455)))

(declare-fun res!149885 () Bool)

(assert (=> b!288154 (= res!149885 (and (is-Intermediate!2024 lt!141948) (not (undefined!2836 lt!141948)) (bvslt (x!28447 lt!141948) #b01111111111111111111111111111110) (bvsge (x!28447 lt!141948) #b00000000000000000000000000000000) (bvsge (x!28447 lt!141948) #b00000000000000000000000000000000)))))

(assert (=> b!288154 (=> (not res!149885) (not e!182455))))

(declare-fun d!66113 () Bool)

(assert (=> d!66113 e!182454))

(declare-fun c!46693 () Bool)

(assert (=> d!66113 (= c!46693 (and (is-Intermediate!2024 lt!141948) (undefined!2836 lt!141948)))))

(assert (=> d!66113 (= lt!141948 e!182452)))

(declare-fun c!46692 () Bool)

(assert (=> d!66113 (= c!46692 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!141947 () (_ BitVec 64))

(assert (=> d!66113 (= lt!141947 (select (arr!6864 a!3312) lt!141906))))

(assert (=> d!66113 (validMask!0 mask!3809)))

(assert (=> d!66113 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141906 k!2524 a!3312 mask!3809) lt!141948)))

(declare-fun b!288155 () Bool)

(assert (=> b!288155 (= e!182452 e!182453)))

(declare-fun c!46694 () Bool)

(assert (=> b!288155 (= c!46694 (or (= lt!141947 k!2524) (= (bvadd lt!141947 lt!141947) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!288156 () Bool)

(assert (=> b!288156 (and (bvsge (index!10268 lt!141948) #b00000000000000000000000000000000) (bvslt (index!10268 lt!141948) (size!7216 a!3312)))))

(assert (=> b!288156 (= e!182456 (= (select (arr!6864 a!3312) (index!10268 lt!141948)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!66113 c!46692) b!288148))

(assert (= (and d!66113 (not c!46692)) b!288155))

(assert (= (and b!288155 c!46694) b!288151))

(assert (= (and b!288155 (not c!46694)) b!288150))

(assert (= (and d!66113 c!46693) b!288152))

(assert (= (and d!66113 (not c!46693)) b!288154))

(assert (= (and b!288154 res!149885) b!288149))

(assert (= (and b!288149 (not res!149886)) b!288153))

(assert (= (and b!288153 (not res!149887)) b!288156))

(declare-fun m!302491 () Bool)

(assert (=> b!288149 m!302491))

(declare-fun m!302493 () Bool)

(assert (=> d!66113 m!302493))

(assert (=> d!66113 m!302427))

(assert (=> b!288150 m!302487))

(assert (=> b!288150 m!302487))

(declare-fun m!302495 () Bool)

(assert (=> b!288150 m!302495))

(assert (=> b!288156 m!302491))

(assert (=> b!288153 m!302491))

(assert (=> b!288042 d!66113))

(declare-fun d!66115 () Bool)

(declare-fun lt!141954 () (_ BitVec 32))

(declare-fun lt!141953 () (_ BitVec 32))

(assert (=> d!66115 (= lt!141954 (bvmul (bvxor lt!141953 (bvlshr lt!141953 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66115 (= lt!141953 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66115 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!149892 (let ((h!5277 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!28451 (bvmul (bvxor h!5277 (bvlshr h!5277 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!28451 (bvlshr x!28451 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!149892 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!149892 #b00000000000000000000000000000000))))))

(assert (=> d!66115 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!141954 (bvlshr lt!141954 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!288042 d!66115))

(declare-fun b!288207 () Bool)

(declare-fun e!182490 () Bool)

(declare-fun e!182489 () Bool)

(assert (=> b!288207 (= e!182490 e!182489)))

(declare-fun lt!141970 () (_ BitVec 64))

(assert (=> b!288207 (= lt!141970 (select (arr!6864 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9071 0))(
  ( (Unit!9072) )
))
