; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28398 () Bool)

(assert start!28398)

(declare-fun b!290573 () Bool)

(declare-fun e!183879 () Bool)

(declare-fun e!183882 () Bool)

(assert (=> b!290573 (= e!183879 e!183882)))

(declare-fun res!151956 () Bool)

(assert (=> b!290573 (=> (not res!151956) (not e!183882))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!143599 () Bool)

(declare-datatypes ((SeekEntryResult!2113 0))(
  ( (MissingZero!2113 (index!10622 (_ BitVec 32))) (Found!2113 (index!10623 (_ BitVec 32))) (Intermediate!2113 (undefined!2925 Bool) (index!10624 (_ BitVec 32)) (x!28788 (_ BitVec 32))) (Undefined!2113) (MissingVacant!2113 (index!10625 (_ BitVec 32))) )
))
(declare-fun lt!143603 () SeekEntryResult!2113)

(assert (=> b!290573 (= res!151956 (or lt!143599 (= lt!143603 (MissingVacant!2113 i!1256))))))

(assert (=> b!290573 (= lt!143599 (= lt!143603 (MissingZero!2113 i!1256)))))

(declare-datatypes ((array!14656 0))(
  ( (array!14657 (arr!6953 (Array (_ BitVec 32) (_ BitVec 64))) (size!7305 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14656)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14656 (_ BitVec 32)) SeekEntryResult!2113)

(assert (=> b!290573 (= lt!143603 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!290574 () Bool)

(declare-fun res!151952 () Bool)

(assert (=> b!290574 (=> (not res!151952) (not e!183882))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14656 (_ BitVec 32)) Bool)

(assert (=> b!290574 (= res!151952 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!290575 () Bool)

(declare-fun e!183880 () Bool)

(declare-fun e!183883 () Bool)

(assert (=> b!290575 (= e!183880 e!183883)))

(declare-fun res!151954 () Bool)

(assert (=> b!290575 (=> (not res!151954) (not e!183883))))

(declare-fun lt!143598 () Bool)

(declare-fun lt!143602 () SeekEntryResult!2113)

(assert (=> b!290575 (= res!151954 (and (or lt!143598 (not (undefined!2925 lt!143602))) (not lt!143598) (= (select (arr!6953 a!3312) (index!10624 lt!143602)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(get-info :version)

(assert (=> b!290575 (= lt!143598 (not ((_ is Intermediate!2113) lt!143602)))))

(declare-fun b!290576 () Bool)

(declare-fun res!151953 () Bool)

(assert (=> b!290576 (=> (not res!151953) (not e!183879))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290576 (= res!151953 (validKeyInArray!0 k0!2524))))

(declare-fun b!290577 () Bool)

(assert (=> b!290577 (= e!183882 e!183880)))

(declare-fun res!151949 () Bool)

(assert (=> b!290577 (=> (not res!151949) (not e!183880))))

(assert (=> b!290577 (= res!151949 (and (not lt!143599) (= lt!143603 (MissingVacant!2113 i!1256))))))

(declare-fun lt!143601 () SeekEntryResult!2113)

(declare-fun lt!143600 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14656 (_ BitVec 32)) SeekEntryResult!2113)

(assert (=> b!290577 (= lt!143601 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143600 k0!2524 (array!14657 (store (arr!6953 a!3312) i!1256 k0!2524) (size!7305 a!3312)) mask!3809))))

(assert (=> b!290577 (= lt!143602 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143600 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290577 (= lt!143600 (toIndex!0 k0!2524 mask!3809))))

(declare-fun res!151950 () Bool)

(assert (=> start!28398 (=> (not res!151950) (not e!183879))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28398 (= res!151950 (validMask!0 mask!3809))))

(assert (=> start!28398 e!183879))

(assert (=> start!28398 true))

(declare-fun array_inv!4907 (array!14656) Bool)

(assert (=> start!28398 (array_inv!4907 a!3312)))

(declare-fun b!290578 () Bool)

(declare-fun res!151951 () Bool)

(assert (=> b!290578 (=> (not res!151951) (not e!183879))))

(declare-fun arrayContainsKey!0 (array!14656 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290578 (= res!151951 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!290579 () Bool)

(declare-fun res!151955 () Bool)

(assert (=> b!290579 (=> (not res!151955) (not e!183879))))

(assert (=> b!290579 (= res!151955 (and (= (size!7305 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7305 a!3312))))))

(declare-fun b!290580 () Bool)

(assert (=> b!290580 (= e!183883 (not true))))

(assert (=> b!290580 (= (index!10624 lt!143602) i!1256)))

(assert (= (and start!28398 res!151950) b!290579))

(assert (= (and b!290579 res!151955) b!290576))

(assert (= (and b!290576 res!151953) b!290578))

(assert (= (and b!290578 res!151951) b!290573))

(assert (= (and b!290573 res!151956) b!290574))

(assert (= (and b!290574 res!151952) b!290577))

(assert (= (and b!290577 res!151949) b!290575))

(assert (= (and b!290575 res!151954) b!290580))

(declare-fun m!304619 () Bool)

(assert (=> b!290578 m!304619))

(declare-fun m!304621 () Bool)

(assert (=> b!290574 m!304621))

(declare-fun m!304623 () Bool)

(assert (=> b!290573 m!304623))

(declare-fun m!304625 () Bool)

(assert (=> start!28398 m!304625))

(declare-fun m!304627 () Bool)

(assert (=> start!28398 m!304627))

(declare-fun m!304629 () Bool)

(assert (=> b!290576 m!304629))

(declare-fun m!304631 () Bool)

(assert (=> b!290575 m!304631))

(declare-fun m!304633 () Bool)

(assert (=> b!290577 m!304633))

(declare-fun m!304635 () Bool)

(assert (=> b!290577 m!304635))

(declare-fun m!304637 () Bool)

(assert (=> b!290577 m!304637))

(declare-fun m!304639 () Bool)

(assert (=> b!290577 m!304639))

(check-sat (not b!290577) (not b!290576) (not b!290573) (not b!290574) (not start!28398) (not b!290578))
(check-sat)
