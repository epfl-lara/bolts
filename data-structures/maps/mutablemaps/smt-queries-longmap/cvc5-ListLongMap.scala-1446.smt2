; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27886 () Bool)

(assert start!27886)

(declare-fun b!286621 () Bool)

(declare-fun res!148741 () Bool)

(declare-fun e!181599 () Bool)

(assert (=> b!286621 (=> (not res!148741) (not e!181599))))

(declare-datatypes ((array!14363 0))(
  ( (array!14364 (arr!6814 (Array (_ BitVec 32) (_ BitVec 64))) (size!7166 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14363)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14363 (_ BitVec 32)) Bool)

(assert (=> b!286621 (= res!148741 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!286622 () Bool)

(declare-fun res!148738 () Bool)

(declare-fun e!181598 () Bool)

(assert (=> b!286622 (=> (not res!148738) (not e!181598))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286622 (= res!148738 (validKeyInArray!0 k!2524))))

(declare-fun b!286624 () Bool)

(declare-fun res!148743 () Bool)

(assert (=> b!286624 (=> (not res!148743) (not e!181598))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286624 (= res!148743 (and (= (size!7166 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7166 a!3312))))))

(declare-fun b!286625 () Bool)

(declare-fun res!148740 () Bool)

(assert (=> b!286625 (=> (not res!148740) (not e!181598))))

(declare-fun arrayContainsKey!0 (array!14363 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286625 (= res!148740 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!286626 () Bool)

(declare-fun lt!141203 () (_ BitVec 32))

(assert (=> b!286626 (= e!181599 (and (bvsge mask!3809 #b00000000000000000000000000000000) (or (bvslt lt!141203 #b00000000000000000000000000000000) (bvsge lt!141203 (bvadd #b00000000000000000000000000000001 mask!3809)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!286626 (= lt!141203 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!286623 () Bool)

(assert (=> b!286623 (= e!181598 e!181599)))

(declare-fun res!148739 () Bool)

(assert (=> b!286623 (=> (not res!148739) (not e!181599))))

(declare-datatypes ((SeekEntryResult!1974 0))(
  ( (MissingZero!1974 (index!10066 (_ BitVec 32))) (Found!1974 (index!10067 (_ BitVec 32))) (Intermediate!1974 (undefined!2786 Bool) (index!10068 (_ BitVec 32)) (x!28254 (_ BitVec 32))) (Undefined!1974) (MissingVacant!1974 (index!10069 (_ BitVec 32))) )
))
(declare-fun lt!141202 () SeekEntryResult!1974)

(assert (=> b!286623 (= res!148739 (or (= lt!141202 (MissingZero!1974 i!1256)) (= lt!141202 (MissingVacant!1974 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14363 (_ BitVec 32)) SeekEntryResult!1974)

(assert (=> b!286623 (= lt!141202 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!148742 () Bool)

(assert (=> start!27886 (=> (not res!148742) (not e!181598))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27886 (= res!148742 (validMask!0 mask!3809))))

(assert (=> start!27886 e!181598))

(assert (=> start!27886 true))

(declare-fun array_inv!4768 (array!14363) Bool)

(assert (=> start!27886 (array_inv!4768 a!3312)))

(assert (= (and start!27886 res!148742) b!286624))

(assert (= (and b!286624 res!148743) b!286622))

(assert (= (and b!286622 res!148738) b!286625))

(assert (= (and b!286625 res!148740) b!286623))

(assert (= (and b!286623 res!148739) b!286621))

(assert (= (and b!286621 res!148741) b!286626))

(declare-fun m!301285 () Bool)

(assert (=> b!286625 m!301285))

(declare-fun m!301287 () Bool)

(assert (=> b!286623 m!301287))

(declare-fun m!301289 () Bool)

(assert (=> b!286621 m!301289))

(declare-fun m!301291 () Bool)

(assert (=> b!286622 m!301291))

(declare-fun m!301293 () Bool)

(assert (=> start!27886 m!301293))

(declare-fun m!301295 () Bool)

(assert (=> start!27886 m!301295))

(declare-fun m!301297 () Bool)

(assert (=> b!286626 m!301297))

(push 1)

(assert (not b!286625))

(assert (not b!286623))

(assert (not b!286621))

(assert (not b!286622))

(assert (not start!27886))

(assert (not b!286626))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!65917 () Bool)

(assert (=> d!65917 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!27886 d!65917))

(declare-fun d!65923 () Bool)

(assert (=> d!65923 (= (array_inv!4768 a!3312) (bvsge (size!7166 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!27886 d!65923))

(declare-fun b!286717 () Bool)

(declare-fun e!181657 () SeekEntryResult!1974)

(assert (=> b!286717 (= e!181657 Undefined!1974)))

(declare-fun b!286718 () Bool)

(declare-fun c!46516 () Bool)

(declare-fun lt!141252 () (_ BitVec 64))

(assert (=> b!286718 (= c!46516 (= lt!141252 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!181656 () SeekEntryResult!1974)

(declare-fun e!181655 () SeekEntryResult!1974)

(assert (=> b!286718 (= e!181656 e!181655)))

(declare-fun b!286719 () Bool)

(declare-fun lt!141253 () SeekEntryResult!1974)

(assert (=> b!286719 (= e!181656 (Found!1974 (index!10068 lt!141253)))))

(declare-fun b!286720 () Bool)

(assert (=> b!286720 (= e!181657 e!181656)))

(assert (=> b!286720 (= lt!141252 (select (arr!6814 a!3312) (index!10068 lt!141253)))))

(declare-fun c!46515 () Bool)

(assert (=> b!286720 (= c!46515 (= lt!141252 k!2524))))

(declare-fun b!286722 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14363 (_ BitVec 32)) SeekEntryResult!1974)

(assert (=> b!286722 (= e!181655 (seekKeyOrZeroReturnVacant!0 (x!28254 lt!141253) (index!10068 lt!141253) (index!10068 lt!141253) k!2524 a!3312 mask!3809))))

(declare-fun d!65925 () Bool)

(declare-fun lt!141254 () SeekEntryResult!1974)

(assert (=> d!65925 (and (or (is-Undefined!1974 lt!141254) (not (is-Found!1974 lt!141254)) (and (bvsge (index!10067 lt!141254) #b00000000000000000000000000000000) (bvslt (index!10067 lt!141254) (size!7166 a!3312)))) (or (is-Undefined!1974 lt!141254) (is-Found!1974 lt!141254) (not (is-MissingZero!1974 lt!141254)) (and (bvsge (index!10066 lt!141254) #b00000000000000000000000000000000) (bvslt (index!10066 lt!141254) (size!7166 a!3312)))) (or (is-Undefined!1974 lt!141254) (is-Found!1974 lt!141254) (is-MissingZero!1974 lt!141254) (not (is-MissingVacant!1974 lt!141254)) (and (bvsge (index!10069 lt!141254) #b00000000000000000000000000000000) (bvslt (index!10069 lt!141254) (size!7166 a!3312)))) (or (is-Undefined!1974 lt!141254) (ite (is-Found!1974 lt!141254) (= (select (arr!6814 a!3312) (index!10067 lt!141254)) k!2524) (ite (is-MissingZero!1974 lt!141254) (= (select (arr!6814 a!3312) (index!10066 lt!141254)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1974 lt!141254) (= (select (arr!6814 a!3312) (index!10069 lt!141254)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65925 (= lt!141254 e!181657)))

(declare-fun c!46517 () Bool)

(assert (=> d!65925 (= c!46517 (and (is-Intermediate!1974 lt!141253) (undefined!2786 lt!141253)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14363 (_ BitVec 32)) SeekEntryResult!1974)

(assert (=> d!65925 (= lt!141253 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!65925 (validMask!0 mask!3809)))

(assert (=> d!65925 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!141254)))

(declare-fun b!286721 () Bool)

(assert (=> b!286721 (= e!181655 (MissingZero!1974 (index!10068 lt!141253)))))

(assert (= (and d!65925 c!46517) b!286717))

(assert (= (and d!65925 (not c!46517)) b!286720))

(assert (= (and b!286720 c!46515) b!286719))

(assert (= (and b!286720 (not c!46515)) b!286718))

(assert (= (and b!286718 c!46516) b!286721))

(assert (= (and b!286718 (not c!46516)) b!286722))

(declare-fun m!301353 () Bool)

(assert (=> b!286720 m!301353))

(declare-fun m!301355 () Bool)

(assert (=> b!286722 m!301355))

(assert (=> d!65925 m!301293))

(declare-fun m!301357 () Bool)

(assert (=> d!65925 m!301357))

(declare-fun m!301359 () Bool)

(assert (=> d!65925 m!301359))

(assert (=> d!65925 m!301297))

(declare-fun m!301361 () Bool)

(assert (=> d!65925 m!301361))

(assert (=> d!65925 m!301297))

(declare-fun m!301363 () Bool)

(assert (=> d!65925 m!301363))

(assert (=> b!286623 d!65925))

(declare-fun b!286749 () Bool)

(declare-fun e!181674 () Bool)

(declare-fun call!25604 () Bool)

(assert (=> b!286749 (= e!181674 call!25604)))

(declare-fun bm!25601 () Bool)

(assert (=> bm!25601 (= call!25604 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!286751 () Bool)

(declare-fun e!181675 () Bool)

(assert (=> b!286751 (= e!181675 call!25604)))

(declare-fun b!286752 () Bool)

(declare-fun e!181673 () Bool)

(assert (=> b!286752 (= e!181673 e!181675)))

(declare-fun c!46529 () Bool)

(assert (=> b!286752 (= c!46529 (validKeyInArray!0 (select (arr!6814 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!286750 () Bool)

(assert (=> b!286750 (= e!181675 e!181674)))

(declare-fun lt!141277 () (_ BitVec 64))

(assert (=> b!286750 (= lt!141277 (select (arr!6814 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9057 0))(
  ( (Unit!9058) )
))
(declare-fun lt!141276 () Unit!9057)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14363 (_ BitVec 64) (_ BitVec 32)) Unit!9057)

(assert (=> b!286750 (= lt!141276 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!141277 #b00000000000000000000000000000000))))

(assert (=> b!286750 (arrayContainsKey!0 a!3312 lt!141277 #b00000000000000000000000000000000)))

(declare-fun lt!141278 () Unit!9057)

(assert (=> b!286750 (= lt!141278 lt!141276)))

(declare-fun res!148804 () Bool)

(assert (=> b!286750 (= res!148804 (= (seekEntryOrOpen!0 (select (arr!6814 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!1974 #b00000000000000000000000000000000)))))

(assert (=> b!286750 (=> (not res!148804) (not e!181674))))

(declare-fun d!65937 () Bool)

(declare-fun res!148805 () Bool)

(assert (=> d!65937 (=> res!148805 e!181673)))

(assert (=> d!65937 (= res!148805 (bvsge #b00000000000000000000000000000000 (size!7166 a!3312)))))

(assert (=> d!65937 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!181673)))

(assert (= (and d!65937 (not res!148805)) b!286752))

(assert (= (and b!286752 c!46529) b!286750))

(assert (= (and b!286752 (not c!46529)) b!286751))

(assert (= (and b!286750 res!148804) b!286749))

(assert (= (or b!286749 b!286751) bm!25601))

(declare-fun m!301377 () Bool)

(assert (=> bm!25601 m!301377))

(declare-fun m!301379 () Bool)

(assert (=> b!286752 m!301379))

(assert (=> b!286752 m!301379))

(declare-fun m!301381 () Bool)

(assert (=> b!286752 m!301381))

(assert (=> b!286750 m!301379))

(declare-fun m!301383 () Bool)

(assert (=> b!286750 m!301383))

(declare-fun m!301385 () Bool)

(assert (=> b!286750 m!301385))

(assert (=> b!286750 m!301379))

(declare-fun m!301387 () Bool)

(assert (=> b!286750 m!301387))

(assert (=> b!286621 d!65937))

(declare-fun d!65943 () Bool)

(assert (=> d!65943 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!286622 d!65943))

(declare-fun d!65945 () Bool)

(declare-fun res!148810 () Bool)

(declare-fun e!181683 () Bool)

(assert (=> d!65945 (=> res!148810 e!181683)))

(assert (=> d!65945 (= res!148810 (= (select (arr!6814 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!65945 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!181683)))

(declare-fun b!286763 () Bool)

(declare-fun e!181684 () Bool)

(assert (=> b!286763 (= e!181683 e!181684)))

(declare-fun res!148811 () Bool)

(assert (=> b!286763 (=> (not res!148811) (not e!181684))))

(assert (=> b!286763 (= res!148811 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7166 a!3312)))))

(declare-fun b!286764 () Bool)

(assert (=> b!286764 (= e!181684 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65945 (not res!148810)) b!286763))

(assert (= (and b!286763 res!148811) b!286764))

(assert (=> d!65945 m!301379))

(declare-fun m!301401 () Bool)

(assert (=> b!286764 m!301401))

(assert (=> b!286625 d!65945))

(declare-fun d!65947 () Bool)

(declare-fun lt!141287 () (_ BitVec 32))

(declare-fun lt!141286 () (_ BitVec 32))

(assert (=> d!65947 (= lt!141287 (bvmul (bvxor lt!141286 (bvlshr lt!141286 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!65947 (= lt!141286 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!65947 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!148812 (let ((h!5269 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!28259 (bvmul (bvxor h!5269 (bvlshr h!5269 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!28259 (bvlshr x!28259 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!148812 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!148812 #b00000000000000000000000000000000))))))

(assert (=> d!65947 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!141287 (bvlshr lt!141287 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!286626 d!65947))

(push 1)

(assert (not b!286750))

(assert (not b!286722))

(assert (not bm!25601))

(assert (not b!286764))

(assert (not b!286752))

(assert (not d!65925))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

