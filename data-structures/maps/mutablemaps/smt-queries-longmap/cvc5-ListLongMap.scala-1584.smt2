; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30090 () Bool)

(assert start!30090)

(declare-fun res!159264 () Bool)

(declare-fun e!190204 () Bool)

(assert (=> start!30090 (=> (not res!159264) (not e!190204))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30090 (= res!159264 (validMask!0 mask!3709))))

(assert (=> start!30090 e!190204))

(assert (=> start!30090 true))

(declare-datatypes ((array!15278 0))(
  ( (array!15279 (arr!7228 (Array (_ BitVec 32) (_ BitVec 64))) (size!7580 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15278)

(declare-fun array_inv!5182 (array!15278) Bool)

(assert (=> start!30090 (array_inv!5182 a!3293)))

(declare-fun b!301423 () Bool)

(declare-fun res!159260 () Bool)

(assert (=> b!301423 (=> (not res!159260) (not e!190204))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15278 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301423 (= res!159260 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!301424 () Bool)

(declare-fun res!159262 () Bool)

(assert (=> b!301424 (=> (not res!159262) (not e!190204))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!301424 (= res!159262 (and (= (size!7580 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7580 a!3293))))))

(declare-fun b!301425 () Bool)

(declare-fun res!159261 () Bool)

(assert (=> b!301425 (=> (not res!159261) (not e!190204))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15278 (_ BitVec 32)) Bool)

(assert (=> b!301425 (= res!159261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!301426 () Bool)

(declare-fun res!159263 () Bool)

(assert (=> b!301426 (=> (not res!159263) (not e!190204))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301426 (= res!159263 (validKeyInArray!0 k!2441))))

(declare-fun b!301427 () Bool)

(declare-fun res!159259 () Bool)

(assert (=> b!301427 (=> (not res!159259) (not e!190204))))

(declare-datatypes ((SeekEntryResult!2379 0))(
  ( (MissingZero!2379 (index!11692 (_ BitVec 32))) (Found!2379 (index!11693 (_ BitVec 32))) (Intermediate!2379 (undefined!3191 Bool) (index!11694 (_ BitVec 32)) (x!29934 (_ BitVec 32))) (Undefined!2379) (MissingVacant!2379 (index!11695 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15278 (_ BitVec 32)) SeekEntryResult!2379)

(assert (=> b!301427 (= res!159259 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2379 i!1240)))))

(declare-fun b!301428 () Bool)

(declare-fun lt!149834 () (_ BitVec 32))

(assert (=> b!301428 (= e!190204 (and (bvsge mask!3709 #b00000000000000000000000000000000) (or (bvslt lt!149834 #b00000000000000000000000000000000) (bvsge lt!149834 (bvadd #b00000000000000000000000000000001 mask!3709)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301428 (= lt!149834 (toIndex!0 k!2441 mask!3709))))

(assert (= (and start!30090 res!159264) b!301424))

(assert (= (and b!301424 res!159262) b!301426))

(assert (= (and b!301426 res!159263) b!301423))

(assert (= (and b!301423 res!159260) b!301427))

(assert (= (and b!301427 res!159259) b!301425))

(assert (= (and b!301425 res!159261) b!301428))

(declare-fun m!313201 () Bool)

(assert (=> b!301425 m!313201))

(declare-fun m!313203 () Bool)

(assert (=> b!301427 m!313203))

(declare-fun m!313205 () Bool)

(assert (=> b!301426 m!313205))

(declare-fun m!313207 () Bool)

(assert (=> b!301428 m!313207))

(declare-fun m!313209 () Bool)

(assert (=> start!30090 m!313209))

(declare-fun m!313211 () Bool)

(assert (=> start!30090 m!313211))

(declare-fun m!313213 () Bool)

(assert (=> b!301423 m!313213))

(push 1)

(assert (not b!301423))

(assert (not b!301426))

(assert (not b!301428))

(assert (not b!301427))

(assert (not start!30090))

(assert (not b!301425))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!67771 () Bool)

(declare-fun res!159313 () Bool)

(declare-fun e!190231 () Bool)

(assert (=> d!67771 (=> res!159313 e!190231)))

(assert (=> d!67771 (= res!159313 (bvsge #b00000000000000000000000000000000 (size!7580 a!3293)))))

(assert (=> d!67771 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!190231)))

(declare-fun b!301479 () Bool)

(declare-fun e!190229 () Bool)

(declare-fun call!25871 () Bool)

(assert (=> b!301479 (= e!190229 call!25871)))

(declare-fun bm!25868 () Bool)

(assert (=> bm!25868 (= call!25871 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!301480 () Bool)

(declare-fun e!190230 () Bool)

(assert (=> b!301480 (= e!190231 e!190230)))

(declare-fun c!48680 () Bool)

(assert (=> b!301480 (= c!48680 (validKeyInArray!0 (select (arr!7228 a!3293) #b00000000000000000000000000000000)))))

(declare-fun b!301481 () Bool)

(assert (=> b!301481 (= e!190230 e!190229)))

(declare-fun lt!149853 () (_ BitVec 64))

(assert (=> b!301481 (= lt!149853 (select (arr!7228 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9368 0))(
  ( (Unit!9369) )
))
(declare-fun lt!149854 () Unit!9368)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15278 (_ BitVec 64) (_ BitVec 32)) Unit!9368)

(assert (=> b!301481 (= lt!149854 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!149853 #b00000000000000000000000000000000))))

(assert (=> b!301481 (arrayContainsKey!0 a!3293 lt!149853 #b00000000000000000000000000000000)))

(declare-fun lt!149855 () Unit!9368)

(assert (=> b!301481 (= lt!149855 lt!149854)))

(declare-fun res!159312 () Bool)

(assert (=> b!301481 (= res!159312 (= (seekEntryOrOpen!0 (select (arr!7228 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2379 #b00000000000000000000000000000000)))))

(assert (=> b!301481 (=> (not res!159312) (not e!190229))))

(declare-fun b!301482 () Bool)

(assert (=> b!301482 (= e!190230 call!25871)))

(assert (= (and d!67771 (not res!159313)) b!301480))

(assert (= (and b!301480 c!48680) b!301481))

(assert (= (and b!301480 (not c!48680)) b!301482))

(assert (= (and b!301481 res!159312) b!301479))

(assert (= (or b!301479 b!301482) bm!25868))

(declare-fun m!313247 () Bool)

(assert (=> bm!25868 m!313247))

(declare-fun m!313249 () Bool)

(assert (=> b!301480 m!313249))

(assert (=> b!301480 m!313249))

(declare-fun m!313251 () Bool)

(assert (=> b!301480 m!313251))

(assert (=> b!301481 m!313249))

(declare-fun m!313253 () Bool)

(assert (=> b!301481 m!313253))

(declare-fun m!313255 () Bool)

(assert (=> b!301481 m!313255))

(assert (=> b!301481 m!313249))

(declare-fun m!313257 () Bool)

(assert (=> b!301481 m!313257))

(assert (=> b!301425 d!67771))

(declare-fun d!67781 () Bool)

(assert (=> d!67781 (= (validKeyInArray!0 k!2441) (and (not (= k!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!301426 d!67781))

(declare-fun d!67787 () Bool)

(assert (=> d!67787 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!30090 d!67787))

(declare-fun d!67791 () Bool)

(assert (=> d!67791 (= (array_inv!5182 a!3293) (bvsge (size!7580 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!30090 d!67791))

(declare-fun b!301537 () Bool)

(declare-fun e!190264 () SeekEntryResult!2379)

(declare-fun e!190263 () SeekEntryResult!2379)

(assert (=> b!301537 (= e!190264 e!190263)))

(declare-fun lt!149894 () (_ BitVec 64))

(declare-fun lt!149893 () SeekEntryResult!2379)

(assert (=> b!301537 (= lt!149894 (select (arr!7228 a!3293) (index!11694 lt!149893)))))

(declare-fun c!48705 () Bool)

(assert (=> b!301537 (= c!48705 (= lt!149894 k!2441))))

(declare-fun b!301538 () Bool)

(declare-fun e!190262 () SeekEntryResult!2379)

(assert (=> b!301538 (= e!190262 (MissingZero!2379 (index!11694 lt!149893)))))

(declare-fun b!301539 () Bool)

(assert (=> b!301539 (= e!190263 (Found!2379 (index!11694 lt!149893)))))

(declare-fun b!301540 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15278 (_ BitVec 32)) SeekEntryResult!2379)

(assert (=> b!301540 (= e!190262 (seekKeyOrZeroReturnVacant!0 (x!29934 lt!149893) (index!11694 lt!149893) (index!11694 lt!149893) k!2441 a!3293 mask!3709))))

(declare-fun b!301541 () Bool)

(assert (=> b!301541 (= e!190264 Undefined!2379)))

(declare-fun d!67793 () Bool)

(declare-fun lt!149892 () SeekEntryResult!2379)

(assert (=> d!67793 (and (or (is-Undefined!2379 lt!149892) (not (is-Found!2379 lt!149892)) (and (bvsge (index!11693 lt!149892) #b00000000000000000000000000000000) (bvslt (index!11693 lt!149892) (size!7580 a!3293)))) (or (is-Undefined!2379 lt!149892) (is-Found!2379 lt!149892) (not (is-MissingZero!2379 lt!149892)) (and (bvsge (index!11692 lt!149892) #b00000000000000000000000000000000) (bvslt (index!11692 lt!149892) (size!7580 a!3293)))) (or (is-Undefined!2379 lt!149892) (is-Found!2379 lt!149892) (is-MissingZero!2379 lt!149892) (not (is-MissingVacant!2379 lt!149892)) (and (bvsge (index!11695 lt!149892) #b00000000000000000000000000000000) (bvslt (index!11695 lt!149892) (size!7580 a!3293)))) (or (is-Undefined!2379 lt!149892) (ite (is-Found!2379 lt!149892) (= (select (arr!7228 a!3293) (index!11693 lt!149892)) k!2441) (ite (is-MissingZero!2379 lt!149892) (= (select (arr!7228 a!3293) (index!11692 lt!149892)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2379 lt!149892) (= (select (arr!7228 a!3293) (index!11695 lt!149892)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67793 (= lt!149892 e!190264)))

(declare-fun c!48707 () Bool)

(assert (=> d!67793 (= c!48707 (and (is-Intermediate!2379 lt!149893) (undefined!3191 lt!149893)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15278 (_ BitVec 32)) SeekEntryResult!2379)

(assert (=> d!67793 (= lt!149893 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(assert (=> d!67793 (validMask!0 mask!3709)))

(assert (=> d!67793 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) lt!149892)))

(declare-fun b!301542 () Bool)

(declare-fun c!48706 () Bool)

(assert (=> b!301542 (= c!48706 (= lt!149894 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!301542 (= e!190263 e!190262)))

(assert (= (and d!67793 c!48707) b!301541))

(assert (= (and d!67793 (not c!48707)) b!301537))

(assert (= (and b!301537 c!48705) b!301539))

(assert (= (and b!301537 (not c!48705)) b!301542))

(assert (= (and b!301542 c!48706) b!301538))

(assert (= (and b!301542 (not c!48706)) b!301540))

(declare-fun m!313283 () Bool)

(assert (=> b!301537 m!313283))

(declare-fun m!313285 () Bool)

(assert (=> b!301540 m!313285))

(assert (=> d!67793 m!313207))

(declare-fun m!313287 () Bool)

(assert (=> d!67793 m!313287))

(declare-fun m!313289 () Bool)

(assert (=> d!67793 m!313289))

(declare-fun m!313291 () Bool)

(assert (=> d!67793 m!313291))

(assert (=> d!67793 m!313207))

(declare-fun m!313293 () Bool)

(assert (=> d!67793 m!313293))

(assert (=> d!67793 m!313209))

(assert (=> b!301427 d!67793))

(declare-fun d!67803 () Bool)

(declare-fun lt!149903 () (_ BitVec 32))

(declare-fun lt!149902 () (_ BitVec 32))

(assert (=> d!67803 (= lt!149903 (bvmul (bvxor lt!149902 (bvlshr lt!149902 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67803 (= lt!149902 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67803 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!159321 (let ((h!5350 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29939 (bvmul (bvxor h!5350 (bvlshr h!5350 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29939 (bvlshr x!29939 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!159321 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!159321 #b00000000000000000000000000000000))))))

(assert (=> d!67803 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!149903 (bvlshr lt!149903 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!301428 d!67803))

(declare-fun d!67809 () Bool)

(declare-fun res!159336 () Bool)

(declare-fun e!190284 () Bool)

(assert (=> d!67809 (=> res!159336 e!190284)))

(assert (=> d!67809 (= res!159336 (= (select (arr!7228 a!3293) #b00000000000000000000000000000000) k!2441))))

(assert (=> d!67809 (= (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000) e!190284)))

(declare-fun b!301567 () Bool)

(declare-fun e!190285 () Bool)

(assert (=> b!301567 (= e!190284 e!190285)))

(declare-fun res!159337 () Bool)

(assert (=> b!301567 (=> (not res!159337) (not e!190285))))

(assert (=> b!301567 (= res!159337 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7580 a!3293)))))

(declare-fun b!301568 () Bool)

(assert (=> b!301568 (= e!190285 (arrayContainsKey!0 a!3293 k!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67809 (not res!159336)) b!301567))

(assert (= (and b!301567 res!159337) b!301568))

(assert (=> d!67809 m!313249))

(declare-fun m!313309 () Bool)

(assert (=> b!301568 m!313309))

(assert (=> b!301423 d!67809))

(push 1)

(assert (not b!301480))

(assert (not b!301540))

(assert (not bm!25868))

(assert (not b!301568))

(assert (not d!67793))

(assert (not b!301481))

(check-sat)

(pop 1)

(push 1)

(check-sat)

