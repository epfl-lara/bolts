; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27888 () Bool)

(assert start!27888)

(declare-fun b!286639 () Bool)

(declare-fun e!181607 () Bool)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun lt!141209 () (_ BitVec 32))

(assert (=> b!286639 (= e!181607 (and (bvsge mask!3809 #b00000000000000000000000000000000) (or (bvslt lt!141209 #b00000000000000000000000000000000) (bvsge lt!141209 (bvadd #b00000000000000000000000000000001 mask!3809)))))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!286639 (= lt!141209 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!286640 () Bool)

(declare-fun res!148757 () Bool)

(declare-fun e!181608 () Bool)

(assert (=> b!286640 (=> (not res!148757) (not e!181608))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286640 (= res!148757 (validKeyInArray!0 k0!2524))))

(declare-fun b!286641 () Bool)

(declare-fun res!148759 () Bool)

(assert (=> b!286641 (=> (not res!148759) (not e!181607))))

(declare-datatypes ((array!14365 0))(
  ( (array!14366 (arr!6815 (Array (_ BitVec 32) (_ BitVec 64))) (size!7167 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14365)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14365 (_ BitVec 32)) Bool)

(assert (=> b!286641 (= res!148759 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!148758 () Bool)

(assert (=> start!27888 (=> (not res!148758) (not e!181608))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27888 (= res!148758 (validMask!0 mask!3809))))

(assert (=> start!27888 e!181608))

(assert (=> start!27888 true))

(declare-fun array_inv!4769 (array!14365) Bool)

(assert (=> start!27888 (array_inv!4769 a!3312)))

(declare-fun b!286642 () Bool)

(declare-fun res!148760 () Bool)

(assert (=> b!286642 (=> (not res!148760) (not e!181608))))

(declare-fun arrayContainsKey!0 (array!14365 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286642 (= res!148760 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!286643 () Bool)

(declare-fun res!148761 () Bool)

(assert (=> b!286643 (=> (not res!148761) (not e!181608))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286643 (= res!148761 (and (= (size!7167 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7167 a!3312))))))

(declare-fun b!286644 () Bool)

(assert (=> b!286644 (= e!181608 e!181607)))

(declare-fun res!148756 () Bool)

(assert (=> b!286644 (=> (not res!148756) (not e!181607))))

(declare-datatypes ((SeekEntryResult!1975 0))(
  ( (MissingZero!1975 (index!10070 (_ BitVec 32))) (Found!1975 (index!10071 (_ BitVec 32))) (Intermediate!1975 (undefined!2787 Bool) (index!10072 (_ BitVec 32)) (x!28255 (_ BitVec 32))) (Undefined!1975) (MissingVacant!1975 (index!10073 (_ BitVec 32))) )
))
(declare-fun lt!141208 () SeekEntryResult!1975)

(assert (=> b!286644 (= res!148756 (or (= lt!141208 (MissingZero!1975 i!1256)) (= lt!141208 (MissingVacant!1975 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14365 (_ BitVec 32)) SeekEntryResult!1975)

(assert (=> b!286644 (= lt!141208 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(assert (= (and start!27888 res!148758) b!286643))

(assert (= (and b!286643 res!148761) b!286640))

(assert (= (and b!286640 res!148757) b!286642))

(assert (= (and b!286642 res!148760) b!286644))

(assert (= (and b!286644 res!148756) b!286641))

(assert (= (and b!286641 res!148759) b!286639))

(declare-fun m!301299 () Bool)

(assert (=> b!286644 m!301299))

(declare-fun m!301301 () Bool)

(assert (=> b!286642 m!301301))

(declare-fun m!301303 () Bool)

(assert (=> b!286640 m!301303))

(declare-fun m!301305 () Bool)

(assert (=> b!286641 m!301305))

(declare-fun m!301307 () Bool)

(assert (=> b!286639 m!301307))

(declare-fun m!301309 () Bool)

(assert (=> start!27888 m!301309))

(declare-fun m!301311 () Bool)

(assert (=> start!27888 m!301311))

(check-sat (not b!286639) (not start!27888) (not b!286642) (not b!286641) (not b!286640) (not b!286644))
(check-sat)
(get-model)

(declare-fun d!65913 () Bool)

(declare-fun res!148784 () Bool)

(declare-fun e!181623 () Bool)

(assert (=> d!65913 (=> res!148784 e!181623)))

(assert (=> d!65913 (= res!148784 (= (select (arr!6815 a!3312) #b00000000000000000000000000000000) k0!2524))))

(assert (=> d!65913 (= (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000) e!181623)))

(declare-fun b!286667 () Bool)

(declare-fun e!181624 () Bool)

(assert (=> b!286667 (= e!181623 e!181624)))

(declare-fun res!148785 () Bool)

(assert (=> b!286667 (=> (not res!148785) (not e!181624))))

(assert (=> b!286667 (= res!148785 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7167 a!3312)))))

(declare-fun b!286668 () Bool)

(assert (=> b!286668 (= e!181624 (arrayContainsKey!0 a!3312 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65913 (not res!148784)) b!286667))

(assert (= (and b!286667 res!148785) b!286668))

(declare-fun m!301327 () Bool)

(assert (=> d!65913 m!301327))

(declare-fun m!301329 () Bool)

(assert (=> b!286668 m!301329))

(assert (=> b!286642 d!65913))

(declare-fun b!286677 () Bool)

(declare-fun e!181633 () Bool)

(declare-fun call!25598 () Bool)

(assert (=> b!286677 (= e!181633 call!25598)))

(declare-fun b!286678 () Bool)

(declare-fun e!181631 () Bool)

(assert (=> b!286678 (= e!181631 e!181633)))

(declare-fun c!46499 () Bool)

(assert (=> b!286678 (= c!46499 (validKeyInArray!0 (select (arr!6815 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!286679 () Bool)

(declare-fun e!181632 () Bool)

(assert (=> b!286679 (= e!181632 call!25598)))

(declare-fun d!65915 () Bool)

(declare-fun res!148790 () Bool)

(assert (=> d!65915 (=> res!148790 e!181631)))

(assert (=> d!65915 (= res!148790 (bvsge #b00000000000000000000000000000000 (size!7167 a!3312)))))

(assert (=> d!65915 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!181631)))

(declare-fun bm!25595 () Bool)

(assert (=> bm!25595 (= call!25598 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!286680 () Bool)

(assert (=> b!286680 (= e!181633 e!181632)))

(declare-fun lt!141224 () (_ BitVec 64))

(assert (=> b!286680 (= lt!141224 (select (arr!6815 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9053 0))(
  ( (Unit!9054) )
))
(declare-fun lt!141223 () Unit!9053)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14365 (_ BitVec 64) (_ BitVec 32)) Unit!9053)

(assert (=> b!286680 (= lt!141223 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!141224 #b00000000000000000000000000000000))))

(assert (=> b!286680 (arrayContainsKey!0 a!3312 lt!141224 #b00000000000000000000000000000000)))

(declare-fun lt!141222 () Unit!9053)

(assert (=> b!286680 (= lt!141222 lt!141223)))

(declare-fun res!148791 () Bool)

(assert (=> b!286680 (= res!148791 (= (seekEntryOrOpen!0 (select (arr!6815 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!1975 #b00000000000000000000000000000000)))))

(assert (=> b!286680 (=> (not res!148791) (not e!181632))))

(assert (= (and d!65915 (not res!148790)) b!286678))

(assert (= (and b!286678 c!46499) b!286680))

(assert (= (and b!286678 (not c!46499)) b!286677))

(assert (= (and b!286680 res!148791) b!286679))

(assert (= (or b!286679 b!286677) bm!25595))

(assert (=> b!286678 m!301327))

(assert (=> b!286678 m!301327))

(declare-fun m!301331 () Bool)

(assert (=> b!286678 m!301331))

(declare-fun m!301333 () Bool)

(assert (=> bm!25595 m!301333))

(assert (=> b!286680 m!301327))

(declare-fun m!301335 () Bool)

(assert (=> b!286680 m!301335))

(declare-fun m!301337 () Bool)

(assert (=> b!286680 m!301337))

(assert (=> b!286680 m!301327))

(declare-fun m!301339 () Bool)

(assert (=> b!286680 m!301339))

(assert (=> b!286641 d!65915))

(declare-fun d!65921 () Bool)

(assert (=> d!65921 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!27888 d!65921))

(declare-fun d!65929 () Bool)

(assert (=> d!65929 (= (array_inv!4769 a!3312) (bvsge (size!7167 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!27888 d!65929))

(declare-fun d!65931 () Bool)

(declare-fun lt!141239 () (_ BitVec 32))

(declare-fun lt!141238 () (_ BitVec 32))

(assert (=> d!65931 (= lt!141239 (bvmul (bvxor lt!141238 (bvlshr lt!141238 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!65931 (= lt!141238 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!65931 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!148798 (let ((h!5267 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!28257 (bvmul (bvxor h!5267 (bvlshr h!5267 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!28257 (bvlshr x!28257 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!148798 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!148798 #b00000000000000000000000000000000))))))

(assert (=> d!65931 (= (toIndex!0 k0!2524 mask!3809) (bvand (bvxor lt!141239 (bvlshr lt!141239 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!286639 d!65931))

(declare-fun d!65933 () Bool)

(assert (=> d!65933 (= (validKeyInArray!0 k0!2524) (and (not (= k0!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!286640 d!65933))

(declare-fun b!286753 () Bool)

(declare-fun e!181676 () SeekEntryResult!1975)

(declare-fun e!181678 () SeekEntryResult!1975)

(assert (=> b!286753 (= e!181676 e!181678)))

(declare-fun lt!141279 () (_ BitVec 64))

(declare-fun lt!141280 () SeekEntryResult!1975)

(assert (=> b!286753 (= lt!141279 (select (arr!6815 a!3312) (index!10072 lt!141280)))))

(declare-fun c!46530 () Bool)

(assert (=> b!286753 (= c!46530 (= lt!141279 k0!2524))))

(declare-fun b!286754 () Bool)

(declare-fun c!46532 () Bool)

(assert (=> b!286754 (= c!46532 (= lt!141279 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!181677 () SeekEntryResult!1975)

(assert (=> b!286754 (= e!181678 e!181677)))

(declare-fun d!65935 () Bool)

(declare-fun lt!141281 () SeekEntryResult!1975)

(get-info :version)

(assert (=> d!65935 (and (or ((_ is Undefined!1975) lt!141281) (not ((_ is Found!1975) lt!141281)) (and (bvsge (index!10071 lt!141281) #b00000000000000000000000000000000) (bvslt (index!10071 lt!141281) (size!7167 a!3312)))) (or ((_ is Undefined!1975) lt!141281) ((_ is Found!1975) lt!141281) (not ((_ is MissingZero!1975) lt!141281)) (and (bvsge (index!10070 lt!141281) #b00000000000000000000000000000000) (bvslt (index!10070 lt!141281) (size!7167 a!3312)))) (or ((_ is Undefined!1975) lt!141281) ((_ is Found!1975) lt!141281) ((_ is MissingZero!1975) lt!141281) (not ((_ is MissingVacant!1975) lt!141281)) (and (bvsge (index!10073 lt!141281) #b00000000000000000000000000000000) (bvslt (index!10073 lt!141281) (size!7167 a!3312)))) (or ((_ is Undefined!1975) lt!141281) (ite ((_ is Found!1975) lt!141281) (= (select (arr!6815 a!3312) (index!10071 lt!141281)) k0!2524) (ite ((_ is MissingZero!1975) lt!141281) (= (select (arr!6815 a!3312) (index!10070 lt!141281)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1975) lt!141281) (= (select (arr!6815 a!3312) (index!10073 lt!141281)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65935 (= lt!141281 e!181676)))

(declare-fun c!46531 () Bool)

(assert (=> d!65935 (= c!46531 (and ((_ is Intermediate!1975) lt!141280) (undefined!2787 lt!141280)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14365 (_ BitVec 32)) SeekEntryResult!1975)

(assert (=> d!65935 (= lt!141280 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(assert (=> d!65935 (validMask!0 mask!3809)))

(assert (=> d!65935 (= (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809) lt!141281)))

(declare-fun b!286755 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14365 (_ BitVec 32)) SeekEntryResult!1975)

(assert (=> b!286755 (= e!181677 (seekKeyOrZeroReturnVacant!0 (x!28255 lt!141280) (index!10072 lt!141280) (index!10072 lt!141280) k0!2524 a!3312 mask!3809))))

(declare-fun b!286756 () Bool)

(assert (=> b!286756 (= e!181678 (Found!1975 (index!10072 lt!141280)))))

(declare-fun b!286757 () Bool)

(assert (=> b!286757 (= e!181676 Undefined!1975)))

(declare-fun b!286758 () Bool)

(assert (=> b!286758 (= e!181677 (MissingZero!1975 (index!10072 lt!141280)))))

(assert (= (and d!65935 c!46531) b!286757))

(assert (= (and d!65935 (not c!46531)) b!286753))

(assert (= (and b!286753 c!46530) b!286756))

(assert (= (and b!286753 (not c!46530)) b!286754))

(assert (= (and b!286754 c!46532) b!286758))

(assert (= (and b!286754 (not c!46532)) b!286755))

(declare-fun m!301389 () Bool)

(assert (=> b!286753 m!301389))

(assert (=> d!65935 m!301307))

(declare-fun m!301391 () Bool)

(assert (=> d!65935 m!301391))

(declare-fun m!301393 () Bool)

(assert (=> d!65935 m!301393))

(assert (=> d!65935 m!301309))

(declare-fun m!301395 () Bool)

(assert (=> d!65935 m!301395))

(declare-fun m!301397 () Bool)

(assert (=> d!65935 m!301397))

(assert (=> d!65935 m!301307))

(declare-fun m!301399 () Bool)

(assert (=> b!286755 m!301399))

(assert (=> b!286644 d!65935))

(check-sat (not b!286668) (not b!286678) (not d!65935) (not bm!25595) (not b!286680) (not b!286755))
(check-sat)
