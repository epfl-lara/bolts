; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29138 () Bool)

(assert start!29138)

(declare-fun b!295438 () Bool)

(declare-fun res!155365 () Bool)

(declare-fun e!186745 () Bool)

(assert (=> b!295438 (=> (not res!155365) (not e!186745))))

(declare-datatypes ((array!14938 0))(
  ( (array!14939 (arr!7079 (Array (_ BitVec 32) (_ BitVec 64))) (size!7431 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14938)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14938 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!295438 (= res!155365 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!295439 () Bool)

(declare-fun e!186746 () Bool)

(declare-fun e!186749 () Bool)

(assert (=> b!295439 (= e!186746 e!186749)))

(declare-fun res!155364 () Bool)

(assert (=> b!295439 (=> (not res!155364) (not e!186749))))

(declare-fun lt!146558 () Bool)

(declare-datatypes ((SeekEntryResult!2239 0))(
  ( (MissingZero!2239 (index!11126 (_ BitVec 32))) (Found!2239 (index!11127 (_ BitVec 32))) (Intermediate!2239 (undefined!3051 Bool) (index!11128 (_ BitVec 32)) (x!29312 (_ BitVec 32))) (Undefined!2239) (MissingVacant!2239 (index!11129 (_ BitVec 32))) )
))
(declare-fun lt!146559 () SeekEntryResult!2239)

(assert (=> b!295439 (= res!155364 (and (or lt!146558 (not (undefined!3051 lt!146559))) (or lt!146558 (not (= (select (arr!7079 a!3312) (index!11128 lt!146559)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146558 (not (= (select (arr!7079 a!3312) (index!11128 lt!146559)) k0!2524))) (not lt!146558)))))

(get-info :version)

(assert (=> b!295439 (= lt!146558 (not ((_ is Intermediate!2239) lt!146559)))))

(declare-fun b!295440 () Bool)

(declare-fun res!155367 () Bool)

(assert (=> b!295440 (=> (not res!155367) (not e!186745))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!295440 (= res!155367 (validKeyInArray!0 k0!2524))))

(declare-fun b!295441 () Bool)

(assert (=> b!295441 (= e!186749 (not true))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!295441 (and (= (select (arr!7079 a!3312) (index!11128 lt!146559)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11128 lt!146559) i!1256))))

(declare-fun b!295442 () Bool)

(declare-fun res!155362 () Bool)

(declare-fun e!186748 () Bool)

(assert (=> b!295442 (=> (not res!155362) (not e!186748))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14938 (_ BitVec 32)) Bool)

(assert (=> b!295442 (= res!155362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!295443 () Bool)

(assert (=> b!295443 (= e!186748 e!186746)))

(declare-fun res!155361 () Bool)

(assert (=> b!295443 (=> (not res!155361) (not e!186746))))

(declare-fun lt!146556 () Bool)

(assert (=> b!295443 (= res!155361 lt!146556)))

(declare-fun lt!146557 () SeekEntryResult!2239)

(declare-fun lt!146560 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14938 (_ BitVec 32)) SeekEntryResult!2239)

(assert (=> b!295443 (= lt!146557 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146560 k0!2524 (array!14939 (store (arr!7079 a!3312) i!1256 k0!2524) (size!7431 a!3312)) mask!3809))))

(assert (=> b!295443 (= lt!146559 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146560 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295443 (= lt!146560 (toIndex!0 k0!2524 mask!3809))))

(declare-fun res!155363 () Bool)

(assert (=> start!29138 (=> (not res!155363) (not e!186745))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29138 (= res!155363 (validMask!0 mask!3809))))

(assert (=> start!29138 e!186745))

(assert (=> start!29138 true))

(declare-fun array_inv!5033 (array!14938) Bool)

(assert (=> start!29138 (array_inv!5033 a!3312)))

(declare-fun b!295444 () Bool)

(assert (=> b!295444 (= e!186745 e!186748)))

(declare-fun res!155366 () Bool)

(assert (=> b!295444 (=> (not res!155366) (not e!186748))))

(declare-fun lt!146561 () SeekEntryResult!2239)

(assert (=> b!295444 (= res!155366 (or lt!146556 (= lt!146561 (MissingVacant!2239 i!1256))))))

(assert (=> b!295444 (= lt!146556 (= lt!146561 (MissingZero!2239 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14938 (_ BitVec 32)) SeekEntryResult!2239)

(assert (=> b!295444 (= lt!146561 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!295445 () Bool)

(declare-fun res!155360 () Bool)

(assert (=> b!295445 (=> (not res!155360) (not e!186745))))

(assert (=> b!295445 (= res!155360 (and (= (size!7431 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7431 a!3312))))))

(assert (= (and start!29138 res!155363) b!295445))

(assert (= (and b!295445 res!155360) b!295440))

(assert (= (and b!295440 res!155367) b!295438))

(assert (= (and b!295438 res!155365) b!295444))

(assert (= (and b!295444 res!155366) b!295442))

(assert (= (and b!295442 res!155362) b!295443))

(assert (= (and b!295443 res!155361) b!295439))

(assert (= (and b!295439 res!155364) b!295441))

(declare-fun m!308571 () Bool)

(assert (=> start!29138 m!308571))

(declare-fun m!308573 () Bool)

(assert (=> start!29138 m!308573))

(declare-fun m!308575 () Bool)

(assert (=> b!295442 m!308575))

(declare-fun m!308577 () Bool)

(assert (=> b!295444 m!308577))

(declare-fun m!308579 () Bool)

(assert (=> b!295440 m!308579))

(declare-fun m!308581 () Bool)

(assert (=> b!295439 m!308581))

(declare-fun m!308583 () Bool)

(assert (=> b!295438 m!308583))

(assert (=> b!295441 m!308581))

(declare-fun m!308585 () Bool)

(assert (=> b!295443 m!308585))

(declare-fun m!308587 () Bool)

(assert (=> b!295443 m!308587))

(declare-fun m!308589 () Bool)

(assert (=> b!295443 m!308589))

(declare-fun m!308591 () Bool)

(assert (=> b!295443 m!308591))

(check-sat (not start!29138) (not b!295442) (not b!295444) (not b!295443) (not b!295438) (not b!295440))
(check-sat)
