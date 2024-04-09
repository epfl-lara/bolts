; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27826 () Bool)

(assert start!27826)

(declare-fun b!286297 () Bool)

(declare-fun res!148490 () Bool)

(declare-fun e!181419 () Bool)

(assert (=> b!286297 (=> (not res!148490) (not e!181419))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14336 0))(
  ( (array!14337 (arr!6802 (Array (_ BitVec 32) (_ BitVec 64))) (size!7154 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14336)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!286297 (= res!148490 (and (= (size!7154 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7154 a!3312))))))

(declare-fun b!286298 () Bool)

(declare-fun e!181418 () Bool)

(assert (=> b!286298 (= e!181419 e!181418)))

(declare-fun res!148489 () Bool)

(assert (=> b!286298 (=> (not res!148489) (not e!181418))))

(declare-datatypes ((SeekEntryResult!1962 0))(
  ( (MissingZero!1962 (index!10018 (_ BitVec 32))) (Found!1962 (index!10019 (_ BitVec 32))) (Intermediate!1962 (undefined!2774 Bool) (index!10020 (_ BitVec 32)) (x!28210 (_ BitVec 32))) (Undefined!1962) (MissingVacant!1962 (index!10021 (_ BitVec 32))) )
))
(declare-fun lt!141083 () SeekEntryResult!1962)

(assert (=> b!286298 (= res!148489 (or (= lt!141083 (MissingZero!1962 i!1256)) (= lt!141083 (MissingVacant!1962 i!1256))))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14336 (_ BitVec 32)) SeekEntryResult!1962)

(assert (=> b!286298 (= lt!141083 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!286299 () Bool)

(declare-fun res!148488 () Bool)

(assert (=> b!286299 (=> (not res!148488) (not e!181419))))

(declare-fun arrayContainsKey!0 (array!14336 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286299 (= res!148488 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!148491 () Bool)

(assert (=> start!27826 (=> (not res!148491) (not e!181419))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27826 (= res!148491 (validMask!0 mask!3809))))

(assert (=> start!27826 e!181419))

(assert (=> start!27826 true))

(declare-fun array_inv!4756 (array!14336) Bool)

(assert (=> start!27826 (array_inv!4756 a!3312)))

(declare-fun b!286300 () Bool)

(declare-fun res!148486 () Bool)

(assert (=> b!286300 (=> (not res!148486) (not e!181418))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14336 (_ BitVec 32)) Bool)

(assert (=> b!286300 (= res!148486 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!286301 () Bool)

(assert (=> b!286301 (= e!181418 (and (bvsge mask!3809 #b00000000000000000000000000000000) (bvsgt mask!3809 #b00111111111111111111111111111111)))))

(declare-fun b!286302 () Bool)

(declare-fun res!148487 () Bool)

(assert (=> b!286302 (=> (not res!148487) (not e!181419))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286302 (= res!148487 (validKeyInArray!0 k!2524))))

(assert (= (and start!27826 res!148491) b!286297))

(assert (= (and b!286297 res!148490) b!286302))

(assert (= (and b!286302 res!148487) b!286299))

(assert (= (and b!286299 res!148488) b!286298))

(assert (= (and b!286298 res!148489) b!286300))

(assert (= (and b!286300 res!148486) b!286301))

(declare-fun m!301039 () Bool)

(assert (=> b!286299 m!301039))

(declare-fun m!301041 () Bool)

(assert (=> b!286298 m!301041))

(declare-fun m!301043 () Bool)

(assert (=> start!27826 m!301043))

(declare-fun m!301045 () Bool)

(assert (=> start!27826 m!301045))

(declare-fun m!301047 () Bool)

(assert (=> b!286300 m!301047))

(declare-fun m!301049 () Bool)

(assert (=> b!286302 m!301049))

(push 1)

(assert (not b!286302))

(assert (not start!27826))

(assert (not b!286299))

(assert (not b!286300))

(assert (not b!286298))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!65875 () Bool)

(declare-fun res!148536 () Bool)

(declare-fun e!181449 () Bool)

(assert (=> d!65875 (=> res!148536 e!181449)))

(assert (=> d!65875 (= res!148536 (= (select (arr!6802 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!65875 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!181449)))

(declare-fun b!286351 () Bool)

(declare-fun e!181450 () Bool)

(assert (=> b!286351 (= e!181449 e!181450)))

(declare-fun res!148537 () Bool)

(assert (=> b!286351 (=> (not res!148537) (not e!181450))))

(assert (=> b!286351 (= res!148537 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7154 a!3312)))))

(declare-fun b!286352 () Bool)

(assert (=> b!286352 (= e!181450 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65875 (not res!148536)) b!286351))

(assert (= (and b!286351 res!148537) b!286352))

(declare-fun m!301075 () Bool)

(assert (=> d!65875 m!301075))

(declare-fun m!301077 () Bool)

(assert (=> b!286352 m!301077))

(assert (=> b!286299 d!65875))

(declare-fun b!286405 () Bool)

(declare-fun e!181484 () SeekEntryResult!1962)

(declare-fun lt!141123 () SeekEntryResult!1962)

(assert (=> b!286405 (= e!181484 (Found!1962 (index!10020 lt!141123)))))

(declare-fun b!286406 () Bool)

(declare-fun e!181485 () SeekEntryResult!1962)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14336 (_ BitVec 32)) SeekEntryResult!1962)

(assert (=> b!286406 (= e!181485 (seekKeyOrZeroReturnVacant!0 (x!28210 lt!141123) (index!10020 lt!141123) (index!10020 lt!141123) k!2524 a!3312 mask!3809))))

(declare-fun b!286407 () Bool)

(declare-fun e!181486 () SeekEntryResult!1962)

(assert (=> b!286407 (= e!181486 Undefined!1962)))

(declare-fun b!286408 () Bool)

(assert (=> b!286408 (= e!181486 e!181484)))

(declare-fun lt!141125 () (_ BitVec 64))

(assert (=> b!286408 (= lt!141125 (select (arr!6802 a!3312) (index!10020 lt!141123)))))

(declare-fun c!46484 () Bool)

(assert (=> b!286408 (= c!46484 (= lt!141125 k!2524))))

(declare-fun d!65877 () Bool)

(declare-fun lt!141124 () SeekEntryResult!1962)

(assert (=> d!65877 (and (or (is-Undefined!1962 lt!141124) (not (is-Found!1962 lt!141124)) (and (bvsge (index!10019 lt!141124) #b00000000000000000000000000000000) (bvslt (index!10019 lt!141124) (size!7154 a!3312)))) (or (is-Undefined!1962 lt!141124) (is-Found!1962 lt!141124) (not (is-MissingZero!1962 lt!141124)) (and (bvsge (index!10018 lt!141124) #b00000000000000000000000000000000) (bvslt (index!10018 lt!141124) (size!7154 a!3312)))) (or (is-Undefined!1962 lt!141124) (is-Found!1962 lt!141124) (is-MissingZero!1962 lt!141124) (not (is-MissingVacant!1962 lt!141124)) (and (bvsge (index!10021 lt!141124) #b00000000000000000000000000000000) (bvslt (index!10021 lt!141124) (size!7154 a!3312)))) (or (is-Undefined!1962 lt!141124) (ite (is-Found!1962 lt!141124) (= (select (arr!6802 a!3312) (index!10019 lt!141124)) k!2524) (ite (is-MissingZero!1962 lt!141124) (= (select (arr!6802 a!3312) (index!10018 lt!141124)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1962 lt!141124) (= (select (arr!6802 a!3312) (index!10021 lt!141124)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65877 (= lt!141124 e!181486)))

(declare-fun c!46483 () Bool)

(assert (=> d!65877 (= c!46483 (and (is-Intermediate!1962 lt!141123) (undefined!2774 lt!141123)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14336 (_ BitVec 32)) SeekEntryResult!1962)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!65877 (= lt!141123 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!65877 (validMask!0 mask!3809)))

(assert (=> d!65877 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!141124)))

(declare-fun b!286409 () Bool)

(declare-fun c!46482 () Bool)

(assert (=> b!286409 (= c!46482 (= lt!141125 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!286409 (= e!181484 e!181485)))

(declare-fun b!286410 () Bool)

(assert (=> b!286410 (= e!181485 (MissingZero!1962 (index!10020 lt!141123)))))

(assert (= (and d!65877 c!46483) b!286407))

(assert (= (and d!65877 (not c!46483)) b!286408))

(assert (= (and b!286408 c!46484) b!286405))

(assert (= (and b!286408 (not c!46484)) b!286409))

(assert (= (and b!286409 c!46482) b!286410))

(assert (= (and b!286409 (not c!46482)) b!286406))

(declare-fun m!301119 () Bool)

(assert (=> b!286406 m!301119))

(declare-fun m!301121 () Bool)

(assert (=> b!286408 m!301121))

(declare-fun m!301123 () Bool)

(assert (=> d!65877 m!301123))

(assert (=> d!65877 m!301043))

(declare-fun m!301125 () Bool)

(assert (=> d!65877 m!301125))

(declare-fun m!301127 () Bool)

(assert (=> d!65877 m!301127))

(declare-fun m!301129 () Bool)

(assert (=> d!65877 m!301129))

(declare-fun m!301131 () Bool)

(assert (=> d!65877 m!301131))

(assert (=> d!65877 m!301125))

(assert (=> b!286298 d!65877))

(declare-fun d!65893 () Bool)

(assert (=> d!65893 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!286302 d!65893))

