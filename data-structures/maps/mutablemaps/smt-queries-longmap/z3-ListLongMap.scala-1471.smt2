; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28224 () Bool)

(assert start!28224)

(declare-fun b!288881 () Bool)

(declare-fun e!182911 () Bool)

(assert (=> b!288881 (= e!182911 (not true))))

(declare-datatypes ((array!14527 0))(
  ( (array!14528 (arr!6890 (Array (_ BitVec 32) (_ BitVec 64))) (size!7242 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14527)

(declare-datatypes ((SeekEntryResult!2050 0))(
  ( (MissingZero!2050 (index!10370 (_ BitVec 32))) (Found!2050 (index!10371 (_ BitVec 32))) (Intermediate!2050 (undefined!2862 Bool) (index!10372 (_ BitVec 32)) (x!28551 (_ BitVec 32))) (Undefined!2050) (MissingVacant!2050 (index!10373 (_ BitVec 32))) )
))
(declare-fun lt!142467 () SeekEntryResult!2050)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!288881 (and (= (select (arr!6890 a!3312) (index!10372 lt!142467)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10372 lt!142467) i!1256))))

(declare-fun b!288882 () Bool)

(declare-fun res!150546 () Bool)

(declare-fun e!182912 () Bool)

(assert (=> b!288882 (=> (not res!150546) (not e!182912))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14527 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288882 (= res!150546 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!288883 () Bool)

(declare-fun e!182914 () Bool)

(declare-fun e!182913 () Bool)

(assert (=> b!288883 (= e!182914 e!182913)))

(declare-fun res!150543 () Bool)

(assert (=> b!288883 (=> (not res!150543) (not e!182913))))

(declare-fun lt!142470 () Bool)

(assert (=> b!288883 (= res!150543 lt!142470)))

(declare-fun lt!142469 () (_ BitVec 32))

(declare-fun lt!142471 () SeekEntryResult!2050)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14527 (_ BitVec 32)) SeekEntryResult!2050)

(assert (=> b!288883 (= lt!142471 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142469 k0!2524 (array!14528 (store (arr!6890 a!3312) i!1256 k0!2524) (size!7242 a!3312)) mask!3809))))

(assert (=> b!288883 (= lt!142467 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142469 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288883 (= lt!142469 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!288884 () Bool)

(declare-fun res!150548 () Bool)

(assert (=> b!288884 (=> (not res!150548) (not e!182912))))

(assert (=> b!288884 (= res!150548 (and (= (size!7242 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7242 a!3312))))))

(declare-fun b!288885 () Bool)

(assert (=> b!288885 (= e!182913 e!182911)))

(declare-fun res!150549 () Bool)

(assert (=> b!288885 (=> (not res!150549) (not e!182911))))

(declare-fun lt!142472 () Bool)

(assert (=> b!288885 (= res!150549 (and (or lt!142472 (not (undefined!2862 lt!142467))) (or lt!142472 (not (= (select (arr!6890 a!3312) (index!10372 lt!142467)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142472 (not (= (select (arr!6890 a!3312) (index!10372 lt!142467)) k0!2524))) (not lt!142472)))))

(get-info :version)

(assert (=> b!288885 (= lt!142472 (not ((_ is Intermediate!2050) lt!142467)))))

(declare-fun b!288886 () Bool)

(declare-fun res!150545 () Bool)

(assert (=> b!288886 (=> (not res!150545) (not e!182912))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288886 (= res!150545 (validKeyInArray!0 k0!2524))))

(declare-fun b!288887 () Bool)

(assert (=> b!288887 (= e!182912 e!182914)))

(declare-fun res!150542 () Bool)

(assert (=> b!288887 (=> (not res!150542) (not e!182914))))

(declare-fun lt!142468 () SeekEntryResult!2050)

(assert (=> b!288887 (= res!150542 (or lt!142470 (= lt!142468 (MissingVacant!2050 i!1256))))))

(assert (=> b!288887 (= lt!142470 (= lt!142468 (MissingZero!2050 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14527 (_ BitVec 32)) SeekEntryResult!2050)

(assert (=> b!288887 (= lt!142468 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun res!150547 () Bool)

(assert (=> start!28224 (=> (not res!150547) (not e!182912))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28224 (= res!150547 (validMask!0 mask!3809))))

(assert (=> start!28224 e!182912))

(assert (=> start!28224 true))

(declare-fun array_inv!4844 (array!14527) Bool)

(assert (=> start!28224 (array_inv!4844 a!3312)))

(declare-fun b!288888 () Bool)

(declare-fun res!150544 () Bool)

(assert (=> b!288888 (=> (not res!150544) (not e!182914))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14527 (_ BitVec 32)) Bool)

(assert (=> b!288888 (= res!150544 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!28224 res!150547) b!288884))

(assert (= (and b!288884 res!150548) b!288886))

(assert (= (and b!288886 res!150545) b!288882))

(assert (= (and b!288882 res!150546) b!288887))

(assert (= (and b!288887 res!150542) b!288888))

(assert (= (and b!288888 res!150544) b!288883))

(assert (= (and b!288883 res!150543) b!288885))

(assert (= (and b!288885 res!150549) b!288881))

(declare-fun m!303113 () Bool)

(assert (=> b!288885 m!303113))

(assert (=> b!288881 m!303113))

(declare-fun m!303115 () Bool)

(assert (=> start!28224 m!303115))

(declare-fun m!303117 () Bool)

(assert (=> start!28224 m!303117))

(declare-fun m!303119 () Bool)

(assert (=> b!288888 m!303119))

(declare-fun m!303121 () Bool)

(assert (=> b!288882 m!303121))

(declare-fun m!303123 () Bool)

(assert (=> b!288887 m!303123))

(declare-fun m!303125 () Bool)

(assert (=> b!288883 m!303125))

(declare-fun m!303127 () Bool)

(assert (=> b!288883 m!303127))

(declare-fun m!303129 () Bool)

(assert (=> b!288883 m!303129))

(declare-fun m!303131 () Bool)

(assert (=> b!288883 m!303131))

(declare-fun m!303133 () Bool)

(assert (=> b!288886 m!303133))

(check-sat (not start!28224) (not b!288887) (not b!288888) (not b!288886) (not b!288882) (not b!288883))
(check-sat)
