; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28914 () Bool)

(assert start!28914)

(declare-fun b!294240 () Bool)

(declare-fun res!154726 () Bool)

(declare-fun e!186028 () Bool)

(assert (=> b!294240 (=> (not res!154726) (not e!186028))))

(declare-datatypes ((array!14894 0))(
  ( (array!14895 (arr!7063 (Array (_ BitVec 32) (_ BitVec 64))) (size!7415 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14894)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14894 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!294240 (= res!154726 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!294241 () Bool)

(declare-fun res!154729 () Bool)

(assert (=> b!294241 (=> (not res!154729) (not e!186028))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!294241 (= res!154729 (validKeyInArray!0 k!2524))))

(declare-fun b!294242 () Bool)

(declare-fun res!154728 () Bool)

(declare-fun e!186029 () Bool)

(assert (=> b!294242 (=> (not res!154728) (not e!186029))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14894 (_ BitVec 32)) Bool)

(assert (=> b!294242 (= res!154728 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!154727 () Bool)

(assert (=> start!28914 (=> (not res!154727) (not e!186028))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28914 (= res!154727 (validMask!0 mask!3809))))

(assert (=> start!28914 e!186028))

(assert (=> start!28914 true))

(declare-fun array_inv!5017 (array!14894) Bool)

(assert (=> start!28914 (array_inv!5017 a!3312)))

(declare-datatypes ((SeekEntryResult!2223 0))(
  ( (MissingZero!2223 (index!11062 (_ BitVec 32))) (Found!2223 (index!11063 (_ BitVec 32))) (Intermediate!2223 (undefined!3035 Bool) (index!11064 (_ BitVec 32)) (x!29232 (_ BitVec 32))) (Undefined!2223) (MissingVacant!2223 (index!11065 (_ BitVec 32))) )
))
(declare-fun lt!145911 () SeekEntryResult!2223)

(declare-fun b!294243 () Bool)

(declare-fun lt!145910 () Bool)

(assert (=> b!294243 (= e!186029 (and lt!145910 (let ((bdg!6235 (not (is-Intermediate!2223 lt!145911)))) (and (or bdg!6235 (not (undefined!3035 lt!145911))) (or bdg!6235 (not (= (select (arr!7063 a!3312) (index!11064 lt!145911)) #b1000000000000000000000000000000000000000000000000000000000000000))) (not bdg!6235) (= (select (arr!7063 a!3312) (index!11064 lt!145911)) k!2524)))))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!145913 () (_ BitVec 32))

(declare-fun lt!145909 () SeekEntryResult!2223)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14894 (_ BitVec 32)) SeekEntryResult!2223)

(assert (=> b!294243 (= lt!145909 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145913 k!2524 (array!14895 (store (arr!7063 a!3312) i!1256 k!2524) (size!7415 a!3312)) mask!3809))))

(assert (=> b!294243 (= lt!145911 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145913 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!294243 (= lt!145913 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!294244 () Bool)

(declare-fun res!154731 () Bool)

(assert (=> b!294244 (=> (not res!154731) (not e!186028))))

(assert (=> b!294244 (= res!154731 (and (= (size!7415 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7415 a!3312))))))

(declare-fun b!294245 () Bool)

(assert (=> b!294245 (= e!186028 e!186029)))

(declare-fun res!154730 () Bool)

(assert (=> b!294245 (=> (not res!154730) (not e!186029))))

(declare-fun lt!145912 () SeekEntryResult!2223)

(assert (=> b!294245 (= res!154730 (or lt!145910 (= lt!145912 (MissingVacant!2223 i!1256))))))

(assert (=> b!294245 (= lt!145910 (= lt!145912 (MissingZero!2223 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14894 (_ BitVec 32)) SeekEntryResult!2223)

(assert (=> b!294245 (= lt!145912 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(assert (= (and start!28914 res!154727) b!294244))

(assert (= (and b!294244 res!154731) b!294241))

(assert (= (and b!294241 res!154729) b!294240))

(assert (= (and b!294240 res!154726) b!294245))

(assert (= (and b!294245 res!154730) b!294242))

(assert (= (and b!294242 res!154728) b!294243))

(declare-fun m!307739 () Bool)

(assert (=> b!294243 m!307739))

(declare-fun m!307741 () Bool)

(assert (=> b!294243 m!307741))

(declare-fun m!307743 () Bool)

(assert (=> b!294243 m!307743))

(declare-fun m!307745 () Bool)

(assert (=> b!294243 m!307745))

(declare-fun m!307747 () Bool)

(assert (=> b!294243 m!307747))

(declare-fun m!307749 () Bool)

(assert (=> b!294245 m!307749))

(declare-fun m!307751 () Bool)

(assert (=> start!28914 m!307751))

(declare-fun m!307753 () Bool)

(assert (=> start!28914 m!307753))

(declare-fun m!307755 () Bool)

(assert (=> b!294241 m!307755))

(declare-fun m!307757 () Bool)

(assert (=> b!294242 m!307757))

(declare-fun m!307759 () Bool)

(assert (=> b!294240 m!307759))

(push 1)

(assert (not start!28914))

(assert (not b!294243))

(assert (not b!294240))

(assert (not b!294241))

(assert (not b!294242))

(assert (not b!294245))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!66681 () Bool)

(declare-fun res!154784 () Bool)

(declare-fun e!186067 () Bool)

(assert (=> d!66681 (=> res!154784 e!186067)))

(assert (=> d!66681 (= res!154784 (= (select (arr!7063 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!66681 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!186067)))

(declare-fun b!294304 () Bool)

(declare-fun e!186068 () Bool)

(assert (=> b!294304 (= e!186067 e!186068)))

(declare-fun res!154785 () Bool)

(assert (=> b!294304 (=> (not res!154785) (not e!186068))))

(assert (=> b!294304 (= res!154785 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7415 a!3312)))))

(declare-fun b!294305 () Bool)

(assert (=> b!294305 (= e!186068 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66681 (not res!154784)) b!294304))

(assert (= (and b!294304 res!154785) b!294305))

(declare-fun m!307819 () Bool)

(assert (=> d!66681 m!307819))

(declare-fun m!307821 () Bool)

(assert (=> b!294305 m!307821))

(assert (=> b!294240 d!66681))

(declare-fun b!294354 () Bool)

(declare-fun e!186094 () SeekEntryResult!2223)

(assert (=> b!294354 (= e!186094 Undefined!2223)))

(declare-fun b!294355 () Bool)

(declare-fun e!186095 () SeekEntryResult!2223)

(declare-fun lt!145979 () SeekEntryResult!2223)

(assert (=> b!294355 (= e!186095 (Found!2223 (index!11064 lt!145979)))))

(declare-fun b!294356 () Bool)

(assert (=> b!294356 (= e!186094 e!186095)))

(declare-fun lt!145978 () (_ BitVec 64))

(assert (=> b!294356 (= lt!145978 (select (arr!7063 a!3312) (index!11064 lt!145979)))))

(declare-fun c!47356 () Bool)

(assert (=> b!294356 (= c!47356 (= lt!145978 k!2524))))

(declare-fun d!66683 () Bool)

(declare-fun lt!145977 () SeekEntryResult!2223)

(assert (=> d!66683 (and (or (is-Undefined!2223 lt!145977) (not (is-Found!2223 lt!145977)) (and (bvsge (index!11063 lt!145977) #b00000000000000000000000000000000) (bvslt (index!11063 lt!145977) (size!7415 a!3312)))) (or (is-Undefined!2223 lt!145977) (is-Found!2223 lt!145977) (not (is-MissingZero!2223 lt!145977)) (and (bvsge (index!11062 lt!145977) #b00000000000000000000000000000000) (bvslt (index!11062 lt!145977) (size!7415 a!3312)))) (or (is-Undefined!2223 lt!145977) (is-Found!2223 lt!145977) (is-MissingZero!2223 lt!145977) (not (is-MissingVacant!2223 lt!145977)) (and (bvsge (index!11065 lt!145977) #b00000000000000000000000000000000) (bvslt (index!11065 lt!145977) (size!7415 a!3312)))) (or (is-Undefined!2223 lt!145977) (ite (is-Found!2223 lt!145977) (= (select (arr!7063 a!3312) (index!11063 lt!145977)) k!2524) (ite (is-MissingZero!2223 lt!145977) (= (select (arr!7063 a!3312) (index!11062 lt!145977)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2223 lt!145977) (= (select (arr!7063 a!3312) (index!11065 lt!145977)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!66683 (= lt!145977 e!186094)))

(declare-fun c!47358 () Bool)

(assert (=> d!66683 (= c!47358 (and (is-Intermediate!2223 lt!145979) (undefined!3035 lt!145979)))))

(assert (=> d!66683 (= lt!145979 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!66683 (validMask!0 mask!3809)))

(assert (=> d!66683 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!145977)))

(declare-fun e!186093 () SeekEntryResult!2223)

(declare-fun b!294357 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14894 (_ BitVec 32)) SeekEntryResult!2223)

(assert (=> b!294357 (= e!186093 (seekKeyOrZeroReturnVacant!0 (x!29232 lt!145979) (index!11064 lt!145979) (index!11064 lt!145979) k!2524 a!3312 mask!3809))))

(declare-fun b!294358 () Bool)

(declare-fun c!47357 () Bool)

(assert (=> b!294358 (= c!47357 (= lt!145978 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!294358 (= e!186095 e!186093)))

(declare-fun b!294359 () Bool)

(assert (=> b!294359 (= e!186093 (MissingZero!2223 (index!11064 lt!145979)))))

(assert (= (and d!66683 c!47358) b!294354))

(assert (= (and d!66683 (not c!47358)) b!294356))

(assert (= (and b!294356 c!47356) b!294355))

(assert (= (and b!294356 (not c!47356)) b!294358))

(assert (= (and b!294358 c!47357) b!294359))

(assert (= (and b!294358 (not c!47357)) b!294357))

(declare-fun m!307847 () Bool)

(assert (=> b!294356 m!307847))

(assert (=> d!66683 m!307743))

(declare-fun m!307849 () Bool)

(assert (=> d!66683 m!307849))

(declare-fun m!307851 () Bool)

(assert (=> d!66683 m!307851))

(assert (=> d!66683 m!307743))

(declare-fun m!307853 () Bool)

(assert (=> d!66683 m!307853))

(declare-fun m!307855 () Bool)

(assert (=> d!66683 m!307855))

(assert (=> d!66683 m!307751))

(declare-fun m!307857 () Bool)

(assert (=> b!294357 m!307857))

(assert (=> b!294245 d!66683))

(declare-fun d!66695 () Bool)

(assert (=> d!66695 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!28914 d!66695))

(declare-fun d!66699 () Bool)

(assert (=> d!66699 (= (array_inv!5017 a!3312) (bvsge (size!7415 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!28914 d!66699))

(declare-fun d!66701 () Bool)

(declare-fun e!186147 () Bool)

(assert (=> d!66701 e!186147))

(declare-fun c!47389 () Bool)

(declare-fun lt!146013 () SeekEntryResult!2223)

(assert (=> d!66701 (= c!47389 (and (is-Intermediate!2223 lt!146013) (undefined!3035 lt!146013)))))

(declare-fun e!186148 () SeekEntryResult!2223)

(assert (=> d!66701 (= lt!146013 e!186148)))

(declare-fun c!47390 () Bool)

(assert (=> d!66701 (= c!47390 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!146012 () (_ BitVec 64))

(assert (=> d!66701 (= lt!146012 (select (arr!7063 (array!14895 (store (arr!7063 a!3312) i!1256 k!2524) (size!7415 a!3312))) lt!145913))))

(assert (=> d!66701 (validMask!0 mask!3809)))

(assert (=> d!66701 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145913 k!2524 (array!14895 (store (arr!7063 a!3312) i!1256 k!2524) (size!7415 a!3312)) mask!3809) lt!146013)))

(declare-fun b!294450 () Bool)

(declare-fun e!186146 () Bool)

(assert (=> b!294450 (= e!186147 e!186146)))

(declare-fun res!154819 () Bool)

(assert (=> b!294450 (= res!154819 (and (is-Intermediate!2223 lt!146013) (not (undefined!3035 lt!146013)) (bvslt (x!29232 lt!146013) #b01111111111111111111111111111110) (bvsge (x!29232 lt!146013) #b00000000000000000000000000000000) (bvsge (x!29232 lt!146013) #b00000000000000000000000000000000)))))

(assert (=> b!294450 (=> (not res!154819) (not e!186146))))

(declare-fun b!294451 () Bool)

(assert (=> b!294451 (and (bvsge (index!11064 lt!146013) #b00000000000000000000000000000000) (bvslt (index!11064 lt!146013) (size!7415 (array!14895 (store (arr!7063 a!3312) i!1256 k!2524) (size!7415 a!3312)))))))

(declare-fun res!154820 () Bool)

(assert (=> b!294451 (= res!154820 (= (select (arr!7063 (array!14895 (store (arr!7063 a!3312) i!1256 k!2524) (size!7415 a!3312))) (index!11064 lt!146013)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!186149 () Bool)

(assert (=> b!294451 (=> res!154820 e!186149)))

(declare-fun b!294452 () Bool)

(assert (=> b!294452 (and (bvsge (index!11064 lt!146013) #b00000000000000000000000000000000) (bvslt (index!11064 lt!146013) (size!7415 (array!14895 (store (arr!7063 a!3312) i!1256 k!2524) (size!7415 a!3312)))))))

(assert (=> b!294452 (= e!186149 (= (select (arr!7063 (array!14895 (store (arr!7063 a!3312) i!1256 k!2524) (size!7415 a!3312))) (index!11064 lt!146013)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!294453 () Bool)

(declare-fun e!186150 () SeekEntryResult!2223)

(assert (=> b!294453 (= e!186148 e!186150)))

(declare-fun c!47391 () Bool)

(assert (=> b!294453 (= c!47391 (or (= lt!146012 k!2524) (= (bvadd lt!146012 lt!146012) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!294454 () Bool)

(assert (=> b!294454 (and (bvsge (index!11064 lt!146013) #b00000000000000000000000000000000) (bvslt (index!11064 lt!146013) (size!7415 (array!14895 (store (arr!7063 a!3312) i!1256 k!2524) (size!7415 a!3312)))))))

(declare-fun res!154818 () Bool)

(assert (=> b!294454 (= res!154818 (= (select (arr!7063 (array!14895 (store (arr!7063 a!3312) i!1256 k!2524) (size!7415 a!3312))) (index!11064 lt!146013)) k!2524))))

(assert (=> b!294454 (=> res!154818 e!186149)))

(assert (=> b!294454 (= e!186146 e!186149)))

(declare-fun b!294455 () Bool)

(assert (=> b!294455 (= e!186150 (Intermediate!2223 false lt!145913 #b00000000000000000000000000000000))))

(declare-fun b!294456 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!294456 (= e!186150 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145913 #b00000000000000000000000000000000 mask!3809) k!2524 (array!14895 (store (arr!7063 a!3312) i!1256 k!2524) (size!7415 a!3312)) mask!3809))))

(declare-fun b!294457 () Bool)

(assert (=> b!294457 (= e!186148 (Intermediate!2223 true lt!145913 #b00000000000000000000000000000000))))

(declare-fun b!294458 () Bool)

(assert (=> b!294458 (= e!186147 (bvsge (x!29232 lt!146013) #b01111111111111111111111111111110))))

(assert (= (and d!66701 c!47390) b!294457))

(assert (= (and d!66701 (not c!47390)) b!294453))

(assert (= (and b!294453 c!47391) b!294455))

(assert (= (and b!294453 (not c!47391)) b!294456))

(assert (= (and d!66701 c!47389) b!294458))

(assert (= (and d!66701 (not c!47389)) b!294450))

(assert (= (and b!294450 res!154819) b!294454))

(assert (= (and b!294454 (not res!154818)) b!294451))

(assert (= (and b!294451 (not res!154820)) b!294452))

(declare-fun m!307887 () Bool)

(assert (=> d!66701 m!307887))

(assert (=> d!66701 m!307751))

(declare-fun m!307889 () Bool)

(assert (=> b!294456 m!307889))

(assert (=> b!294456 m!307889))

(declare-fun m!307891 () Bool)

(assert (=> b!294456 m!307891))

(declare-fun m!307893 () Bool)

(assert (=> b!294452 m!307893))

(assert (=> b!294451 m!307893))

(assert (=> b!294454 m!307893))

(assert (=> b!294243 d!66701))

(declare-fun d!66713 () Bool)

(declare-fun e!186152 () Bool)

(assert (=> d!66713 e!186152))

(declare-fun c!47392 () Bool)

(declare-fun lt!146015 () SeekEntryResult!2223)

(assert (=> d!66713 (= c!47392 (and (is-Intermediate!2223 lt!146015) (undefined!3035 lt!146015)))))

(declare-fun e!186153 () SeekEntryResult!2223)

(assert (=> d!66713 (= lt!146015 e!186153)))

(declare-fun c!47393 () Bool)

(assert (=> d!66713 (= c!47393 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!146014 () (_ BitVec 64))

(assert (=> d!66713 (= lt!146014 (select (arr!7063 a!3312) lt!145913))))

(assert (=> d!66713 (validMask!0 mask!3809)))

(assert (=> d!66713 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145913 k!2524 a!3312 mask!3809) lt!146015)))

(declare-fun b!294459 () Bool)

(declare-fun e!186151 () Bool)

(assert (=> b!294459 (= e!186152 e!186151)))

(declare-fun res!154822 () Bool)

(assert (=> b!294459 (= res!154822 (and (is-Intermediate!2223 lt!146015) (not (undefined!3035 lt!146015)) (bvslt (x!29232 lt!146015) #b01111111111111111111111111111110) (bvsge (x!29232 lt!146015) #b00000000000000000000000000000000) (bvsge (x!29232 lt!146015) #b00000000000000000000000000000000)))))

(assert (=> b!294459 (=> (not res!154822) (not e!186151))))

(declare-fun b!294460 () Bool)

(assert (=> b!294460 (and (bvsge (index!11064 lt!146015) #b00000000000000000000000000000000) (bvslt (index!11064 lt!146015) (size!7415 a!3312)))))

(declare-fun res!154823 () Bool)

(assert (=> b!294460 (= res!154823 (= (select (arr!7063 a!3312) (index!11064 lt!146015)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!186154 () Bool)

(assert (=> b!294460 (=> res!154823 e!186154)))

(declare-fun b!294461 () Bool)

(assert (=> b!294461 (and (bvsge (index!11064 lt!146015) #b00000000000000000000000000000000) (bvslt (index!11064 lt!146015) (size!7415 a!3312)))))

(assert (=> b!294461 (= e!186154 (= (select (arr!7063 a!3312) (index!11064 lt!146015)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!294462 () Bool)

(declare-fun e!186155 () SeekEntryResult!2223)

(assert (=> b!294462 (= e!186153 e!186155)))

(declare-fun c!47394 () Bool)

(assert (=> b!294462 (= c!47394 (or (= lt!146014 k!2524) (= (bvadd lt!146014 lt!146014) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!294463 () Bool)

(assert (=> b!294463 (and (bvsge (index!11064 lt!146015) #b00000000000000000000000000000000) (bvslt (index!11064 lt!146015) (size!7415 a!3312)))))

(declare-fun res!154821 () Bool)

(assert (=> b!294463 (= res!154821 (= (select (arr!7063 a!3312) (index!11064 lt!146015)) k!2524))))

(assert (=> b!294463 (=> res!154821 e!186154)))

(assert (=> b!294463 (= e!186151 e!186154)))

(declare-fun b!294464 () Bool)

(assert (=> b!294464 (= e!186155 (Intermediate!2223 false lt!145913 #b00000000000000000000000000000000))))

(declare-fun b!294465 () Bool)

(assert (=> b!294465 (= e!186155 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145913 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!294466 () Bool)

(assert (=> b!294466 (= e!186153 (Intermediate!2223 true lt!145913 #b00000000000000000000000000000000))))

(declare-fun b!294467 () Bool)

(assert (=> b!294467 (= e!186152 (bvsge (x!29232 lt!146015) #b01111111111111111111111111111110))))

(assert (= (and d!66713 c!47393) b!294466))

(assert (= (and d!66713 (not c!47393)) b!294462))

(assert (= (and b!294462 c!47394) b!294464))

(assert (= (and b!294462 (not c!47394)) b!294465))

(assert (= (and d!66713 c!47392) b!294467))

(assert (= (and d!66713 (not c!47392)) b!294459))

(assert (= (and b!294459 res!154822) b!294463))

(assert (= (and b!294463 (not res!154821)) b!294460))

(assert (= (and b!294460 (not res!154823)) b!294461))

(declare-fun m!307895 () Bool)

(assert (=> d!66713 m!307895))

(assert (=> d!66713 m!307751))

(assert (=> b!294465 m!307889))

(assert (=> b!294465 m!307889))

(declare-fun m!307897 () Bool)

(assert (=> b!294465 m!307897))

(declare-fun m!307899 () Bool)

(assert (=> b!294461 m!307899))

(assert (=> b!294460 m!307899))

(assert (=> b!294463 m!307899))

(assert (=> b!294243 d!66713))

(declare-fun d!66715 () Bool)

(declare-fun lt!146021 () (_ BitVec 32))

(declare-fun lt!146020 () (_ BitVec 32))

(assert (=> d!66715 (= lt!146021 (bvmul (bvxor lt!146020 (bvlshr lt!146020 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66715 (= lt!146020 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66715 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!154824 (let ((h!5302 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29240 (bvmul (bvxor h!5302 (bvlshr h!5302 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29240 (bvlshr x!29240 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!154824 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!154824 #b00000000000000000000000000000000))))))

(assert (=> d!66715 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!146021 (bvlshr lt!146021 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!294243 d!66715))

(declare-fun b!294492 () Bool)

(declare-fun e!186177 () Bool)

(declare-fun e!186176 () Bool)

(assert (=> b!294492 (= e!186177 e!186176)))

(declare-fun c!47400 () Bool)

(assert (=> b!294492 (= c!47400 (validKeyInArray!0 (select (arr!7063 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!294493 () Bool)

(declare-fun e!186175 () Bool)

(declare-fun call!25704 () Bool)

(assert (=> b!294493 (= e!186175 call!25704)))

(declare-fun b!294494 () Bool)

(assert (=> b!294494 (= e!186176 e!186175)))

(declare-fun lt!146037 () (_ BitVec 64))

(assert (=> b!294494 (= lt!146037 (select (arr!7063 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9195 0))(
  ( (Unit!9196) )
))
(declare-fun lt!146039 () Unit!9195)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14894 (_ BitVec 64) (_ BitVec 32)) Unit!9195)

(assert (=> b!294494 (= lt!146039 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!146037 #b00000000000000000000000000000000))))

(assert (=> b!294494 (arrayContainsKey!0 a!3312 lt!146037 #b00000000000000000000000000000000)))

(declare-fun lt!146038 () Unit!9195)

(assert (=> b!294494 (= lt!146038 lt!146039)))

(declare-fun res!154840 () Bool)

(assert (=> b!294494 (= res!154840 (= (seekEntryOrOpen!0 (select (arr!7063 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2223 #b00000000000000000000000000000000)))))

(assert (=> b!294494 (=> (not res!154840) (not e!186175))))

(declare-fun d!66721 () Bool)

(declare-fun res!154839 () Bool)

(assert (=> d!66721 (=> res!154839 e!186177)))

(assert (=> d!66721 (= res!154839 (bvsge #b00000000000000000000000000000000 (size!7415 a!3312)))))

(assert (=> d!66721 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!186177)))

(declare-fun b!294495 () Bool)

(assert (=> b!294495 (= e!186176 call!25704)))

(declare-fun bm!25701 () Bool)

(assert (=> bm!25701 (= call!25704 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(assert (= (and d!66721 (not res!154839)) b!294492))

(assert (= (and b!294492 c!47400) b!294494))

(assert (= (and b!294492 (not c!47400)) b!294495))

(assert (= (and b!294494 res!154840) b!294493))

(assert (= (or b!294493 b!294495) bm!25701))

(assert (=> b!294492 m!307819))

(assert (=> b!294492 m!307819))

(declare-fun m!307913 () Bool)

(assert (=> b!294492 m!307913))

(assert (=> b!294494 m!307819))

(declare-fun m!307915 () Bool)

(assert (=> b!294494 m!307915))

(declare-fun m!307917 () Bool)

(assert (=> b!294494 m!307917))

(assert (=> b!294494 m!307819))

(declare-fun m!307919 () Bool)

(assert (=> b!294494 m!307919))

(declare-fun m!307921 () Bool)

(assert (=> bm!25701 m!307921))

(assert (=> b!294242 d!66721))

(declare-fun d!66725 () Bool)

(assert (=> d!66725 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!294241 d!66725))

(push 1)

