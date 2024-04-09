; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28862 () Bool)

(assert start!28862)

(declare-fun b!293988 () Bool)

(declare-fun res!154620 () Bool)

(declare-fun e!185878 () Bool)

(assert (=> b!293988 (=> (not res!154620) (not e!185878))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!293988 (= res!154620 (validKeyInArray!0 k0!2524))))

(declare-fun lt!145784 () Bool)

(declare-datatypes ((SeekEntryResult!2221 0))(
  ( (MissingZero!2221 (index!11054 (_ BitVec 32))) (Found!2221 (index!11055 (_ BitVec 32))) (Intermediate!2221 (undefined!3033 Bool) (index!11056 (_ BitVec 32)) (x!29216 (_ BitVec 32))) (Undefined!2221) (MissingVacant!2221 (index!11057 (_ BitVec 32))) )
))
(declare-fun lt!145785 () SeekEntryResult!2221)

(declare-fun e!185879 () Bool)

(declare-datatypes ((array!14887 0))(
  ( (array!14888 (arr!7061 (Array (_ BitVec 32) (_ BitVec 64))) (size!7413 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14887)

(declare-fun b!293989 () Bool)

(get-info :version)

(assert (=> b!293989 (= e!185879 (and lt!145784 (let ((bdg!6229 (not ((_ is Intermediate!2221) lt!145785)))) (and (or bdg!6229 (not (undefined!3033 lt!145785))) (or bdg!6229 (not (= (select (arr!7061 a!3312) (index!11056 lt!145785)) #b1000000000000000000000000000000000000000000000000000000000000000))) (not bdg!6229) (or (bvslt (index!11056 lt!145785) #b00000000000000000000000000000000) (bvsge (index!11056 lt!145785) (size!7413 a!3312)))))))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!145783 () SeekEntryResult!2221)

(declare-fun lt!145787 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14887 (_ BitVec 32)) SeekEntryResult!2221)

(assert (=> b!293989 (= lt!145783 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145787 k0!2524 (array!14888 (store (arr!7061 a!3312) i!1256 k0!2524) (size!7413 a!3312)) mask!3809))))

(assert (=> b!293989 (= lt!145785 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145787 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!293989 (= lt!145787 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!293990 () Bool)

(declare-fun res!154617 () Bool)

(assert (=> b!293990 (=> (not res!154617) (not e!185878))))

(assert (=> b!293990 (= res!154617 (and (= (size!7413 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7413 a!3312))))))

(declare-fun b!293991 () Bool)

(declare-fun res!154618 () Bool)

(assert (=> b!293991 (=> (not res!154618) (not e!185879))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14887 (_ BitVec 32)) Bool)

(assert (=> b!293991 (= res!154618 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!154616 () Bool)

(assert (=> start!28862 (=> (not res!154616) (not e!185878))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28862 (= res!154616 (validMask!0 mask!3809))))

(assert (=> start!28862 e!185878))

(assert (=> start!28862 true))

(declare-fun array_inv!5015 (array!14887) Bool)

(assert (=> start!28862 (array_inv!5015 a!3312)))

(declare-fun b!293992 () Bool)

(declare-fun res!154619 () Bool)

(assert (=> b!293992 (=> (not res!154619) (not e!185878))))

(declare-fun arrayContainsKey!0 (array!14887 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!293992 (= res!154619 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!293993 () Bool)

(assert (=> b!293993 (= e!185878 e!185879)))

(declare-fun res!154615 () Bool)

(assert (=> b!293993 (=> (not res!154615) (not e!185879))))

(declare-fun lt!145786 () SeekEntryResult!2221)

(assert (=> b!293993 (= res!154615 (or lt!145784 (= lt!145786 (MissingVacant!2221 i!1256))))))

(assert (=> b!293993 (= lt!145784 (= lt!145786 (MissingZero!2221 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14887 (_ BitVec 32)) SeekEntryResult!2221)

(assert (=> b!293993 (= lt!145786 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(assert (= (and start!28862 res!154616) b!293990))

(assert (= (and b!293990 res!154617) b!293988))

(assert (= (and b!293988 res!154620) b!293992))

(assert (= (and b!293992 res!154619) b!293993))

(assert (= (and b!293993 res!154615) b!293991))

(assert (= (and b!293991 res!154618) b!293989))

(declare-fun m!307575 () Bool)

(assert (=> b!293989 m!307575))

(declare-fun m!307577 () Bool)

(assert (=> b!293989 m!307577))

(declare-fun m!307579 () Bool)

(assert (=> b!293989 m!307579))

(declare-fun m!307581 () Bool)

(assert (=> b!293989 m!307581))

(declare-fun m!307583 () Bool)

(assert (=> b!293989 m!307583))

(declare-fun m!307585 () Bool)

(assert (=> b!293991 m!307585))

(declare-fun m!307587 () Bool)

(assert (=> b!293992 m!307587))

(declare-fun m!307589 () Bool)

(assert (=> b!293988 m!307589))

(declare-fun m!307591 () Bool)

(assert (=> start!28862 m!307591))

(declare-fun m!307593 () Bool)

(assert (=> start!28862 m!307593))

(declare-fun m!307595 () Bool)

(assert (=> b!293993 m!307595))

(check-sat (not b!293988) (not b!293993) (not b!293991) (not start!28862) (not b!293989) (not b!293992))
(check-sat)
(get-model)

(declare-fun b!294020 () Bool)

(declare-fun e!185896 () Bool)

(declare-fun call!25689 () Bool)

(assert (=> b!294020 (= e!185896 call!25689)))

(declare-fun b!294021 () Bool)

(declare-fun e!185895 () Bool)

(assert (=> b!294021 (= e!185896 e!185895)))

(declare-fun lt!145811 () (_ BitVec 64))

(assert (=> b!294021 (= lt!145811 (select (arr!7061 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9187 0))(
  ( (Unit!9188) )
))
(declare-fun lt!145810 () Unit!9187)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14887 (_ BitVec 64) (_ BitVec 32)) Unit!9187)

(assert (=> b!294021 (= lt!145810 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!145811 #b00000000000000000000000000000000))))

(assert (=> b!294021 (arrayContainsKey!0 a!3312 lt!145811 #b00000000000000000000000000000000)))

(declare-fun lt!145809 () Unit!9187)

(assert (=> b!294021 (= lt!145809 lt!145810)))

(declare-fun res!154644 () Bool)

(assert (=> b!294021 (= res!154644 (= (seekEntryOrOpen!0 (select (arr!7061 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2221 #b00000000000000000000000000000000)))))

(assert (=> b!294021 (=> (not res!154644) (not e!185895))))

(declare-fun b!294022 () Bool)

(assert (=> b!294022 (= e!185895 call!25689)))

(declare-fun bm!25686 () Bool)

(assert (=> bm!25686 (= call!25689 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!294023 () Bool)

(declare-fun e!185897 () Bool)

(assert (=> b!294023 (= e!185897 e!185896)))

(declare-fun c!47259 () Bool)

(assert (=> b!294023 (= c!47259 (validKeyInArray!0 (select (arr!7061 a!3312) #b00000000000000000000000000000000)))))

(declare-fun d!66617 () Bool)

(declare-fun res!154643 () Bool)

(assert (=> d!66617 (=> res!154643 e!185897)))

(assert (=> d!66617 (= res!154643 (bvsge #b00000000000000000000000000000000 (size!7413 a!3312)))))

(assert (=> d!66617 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!185897)))

(assert (= (and d!66617 (not res!154643)) b!294023))

(assert (= (and b!294023 c!47259) b!294021))

(assert (= (and b!294023 (not c!47259)) b!294020))

(assert (= (and b!294021 res!154644) b!294022))

(assert (= (or b!294022 b!294020) bm!25686))

(declare-fun m!307619 () Bool)

(assert (=> b!294021 m!307619))

(declare-fun m!307621 () Bool)

(assert (=> b!294021 m!307621))

(declare-fun m!307623 () Bool)

(assert (=> b!294021 m!307623))

(assert (=> b!294021 m!307619))

(declare-fun m!307625 () Bool)

(assert (=> b!294021 m!307625))

(declare-fun m!307627 () Bool)

(assert (=> bm!25686 m!307627))

(assert (=> b!294023 m!307619))

(assert (=> b!294023 m!307619))

(declare-fun m!307629 () Bool)

(assert (=> b!294023 m!307629))

(assert (=> b!293991 d!66617))

(declare-fun d!66619 () Bool)

(assert (=> d!66619 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!28862 d!66619))

(declare-fun d!66621 () Bool)

(assert (=> d!66621 (= (array_inv!5015 a!3312) (bvsge (size!7413 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!28862 d!66621))

(declare-fun d!66623 () Bool)

(declare-fun res!154649 () Bool)

(declare-fun e!185902 () Bool)

(assert (=> d!66623 (=> res!154649 e!185902)))

(assert (=> d!66623 (= res!154649 (= (select (arr!7061 a!3312) #b00000000000000000000000000000000) k0!2524))))

(assert (=> d!66623 (= (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000) e!185902)))

(declare-fun b!294028 () Bool)

(declare-fun e!185903 () Bool)

(assert (=> b!294028 (= e!185902 e!185903)))

(declare-fun res!154650 () Bool)

(assert (=> b!294028 (=> (not res!154650) (not e!185903))))

(assert (=> b!294028 (= res!154650 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7413 a!3312)))))

(declare-fun b!294029 () Bool)

(assert (=> b!294029 (= e!185903 (arrayContainsKey!0 a!3312 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66623 (not res!154649)) b!294028))

(assert (= (and b!294028 res!154650) b!294029))

(assert (=> d!66623 m!307619))

(declare-fun m!307631 () Bool)

(assert (=> b!294029 m!307631))

(assert (=> b!293992 d!66623))

(declare-fun b!294042 () Bool)

(declare-fun e!185912 () SeekEntryResult!2221)

(declare-fun e!185910 () SeekEntryResult!2221)

(assert (=> b!294042 (= e!185912 e!185910)))

(declare-fun lt!145820 () (_ BitVec 64))

(declare-fun lt!145818 () SeekEntryResult!2221)

(assert (=> b!294042 (= lt!145820 (select (arr!7061 a!3312) (index!11056 lt!145818)))))

(declare-fun c!47267 () Bool)

(assert (=> b!294042 (= c!47267 (= lt!145820 k0!2524))))

(declare-fun b!294043 () Bool)

(assert (=> b!294043 (= e!185910 (Found!2221 (index!11056 lt!145818)))))

(declare-fun b!294044 () Bool)

(declare-fun c!47266 () Bool)

(assert (=> b!294044 (= c!47266 (= lt!145820 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!185911 () SeekEntryResult!2221)

(assert (=> b!294044 (= e!185910 e!185911)))

(declare-fun b!294045 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14887 (_ BitVec 32)) SeekEntryResult!2221)

(assert (=> b!294045 (= e!185911 (seekKeyOrZeroReturnVacant!0 (x!29216 lt!145818) (index!11056 lt!145818) (index!11056 lt!145818) k0!2524 a!3312 mask!3809))))

(declare-fun b!294046 () Bool)

(assert (=> b!294046 (= e!185912 Undefined!2221)))

(declare-fun b!294047 () Bool)

(assert (=> b!294047 (= e!185911 (MissingZero!2221 (index!11056 lt!145818)))))

(declare-fun d!66631 () Bool)

(declare-fun lt!145819 () SeekEntryResult!2221)

(assert (=> d!66631 (and (or ((_ is Undefined!2221) lt!145819) (not ((_ is Found!2221) lt!145819)) (and (bvsge (index!11055 lt!145819) #b00000000000000000000000000000000) (bvslt (index!11055 lt!145819) (size!7413 a!3312)))) (or ((_ is Undefined!2221) lt!145819) ((_ is Found!2221) lt!145819) (not ((_ is MissingZero!2221) lt!145819)) (and (bvsge (index!11054 lt!145819) #b00000000000000000000000000000000) (bvslt (index!11054 lt!145819) (size!7413 a!3312)))) (or ((_ is Undefined!2221) lt!145819) ((_ is Found!2221) lt!145819) ((_ is MissingZero!2221) lt!145819) (not ((_ is MissingVacant!2221) lt!145819)) (and (bvsge (index!11057 lt!145819) #b00000000000000000000000000000000) (bvslt (index!11057 lt!145819) (size!7413 a!3312)))) (or ((_ is Undefined!2221) lt!145819) (ite ((_ is Found!2221) lt!145819) (= (select (arr!7061 a!3312) (index!11055 lt!145819)) k0!2524) (ite ((_ is MissingZero!2221) lt!145819) (= (select (arr!7061 a!3312) (index!11054 lt!145819)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2221) lt!145819) (= (select (arr!7061 a!3312) (index!11057 lt!145819)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!66631 (= lt!145819 e!185912)))

(declare-fun c!47268 () Bool)

(assert (=> d!66631 (= c!47268 (and ((_ is Intermediate!2221) lt!145818) (undefined!3033 lt!145818)))))

(assert (=> d!66631 (= lt!145818 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(assert (=> d!66631 (validMask!0 mask!3809)))

(assert (=> d!66631 (= (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809) lt!145819)))

(assert (= (and d!66631 c!47268) b!294046))

(assert (= (and d!66631 (not c!47268)) b!294042))

(assert (= (and b!294042 c!47267) b!294043))

(assert (= (and b!294042 (not c!47267)) b!294044))

(assert (= (and b!294044 c!47266) b!294047))

(assert (= (and b!294044 (not c!47266)) b!294045))

(declare-fun m!307633 () Bool)

(assert (=> b!294042 m!307633))

(declare-fun m!307635 () Bool)

(assert (=> b!294045 m!307635))

(assert (=> d!66631 m!307591))

(assert (=> d!66631 m!307579))

(declare-fun m!307637 () Bool)

(assert (=> d!66631 m!307637))

(assert (=> d!66631 m!307579))

(declare-fun m!307639 () Bool)

(assert (=> d!66631 m!307639))

(declare-fun m!307641 () Bool)

(assert (=> d!66631 m!307641))

(declare-fun m!307643 () Bool)

(assert (=> d!66631 m!307643))

(assert (=> b!293993 d!66631))

(declare-fun d!66643 () Bool)

(assert (=> d!66643 (= (validKeyInArray!0 k0!2524) (and (not (= k0!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!293988 d!66643))

(declare-fun b!294114 () Bool)

(declare-fun e!185954 () SeekEntryResult!2221)

(declare-fun e!185953 () SeekEntryResult!2221)

(assert (=> b!294114 (= e!185954 e!185953)))

(declare-fun c!47293 () Bool)

(declare-fun lt!145844 () (_ BitVec 64))

(assert (=> b!294114 (= c!47293 (or (= lt!145844 k0!2524) (= (bvadd lt!145844 lt!145844) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!294115 () Bool)

(declare-fun e!185956 () Bool)

(declare-fun lt!145843 () SeekEntryResult!2221)

(assert (=> b!294115 (= e!185956 (bvsge (x!29216 lt!145843) #b01111111111111111111111111111110))))

(declare-fun b!294116 () Bool)

(assert (=> b!294116 (and (bvsge (index!11056 lt!145843) #b00000000000000000000000000000000) (bvslt (index!11056 lt!145843) (size!7413 (array!14888 (store (arr!7061 a!3312) i!1256 k0!2524) (size!7413 a!3312)))))))

(declare-fun res!154670 () Bool)

(assert (=> b!294116 (= res!154670 (= (select (arr!7061 (array!14888 (store (arr!7061 a!3312) i!1256 k0!2524) (size!7413 a!3312))) (index!11056 lt!145843)) k0!2524))))

(declare-fun e!185957 () Bool)

(assert (=> b!294116 (=> res!154670 e!185957)))

(declare-fun e!185955 () Bool)

(assert (=> b!294116 (= e!185955 e!185957)))

(declare-fun b!294117 () Bool)

(assert (=> b!294117 (= e!185953 (Intermediate!2221 false lt!145787 #b00000000000000000000000000000000))))

(declare-fun b!294118 () Bool)

(assert (=> b!294118 (= e!185954 (Intermediate!2221 true lt!145787 #b00000000000000000000000000000000))))

(declare-fun b!294119 () Bool)

(assert (=> b!294119 (and (bvsge (index!11056 lt!145843) #b00000000000000000000000000000000) (bvslt (index!11056 lt!145843) (size!7413 (array!14888 (store (arr!7061 a!3312) i!1256 k0!2524) (size!7413 a!3312)))))))

(declare-fun res!154669 () Bool)

(assert (=> b!294119 (= res!154669 (= (select (arr!7061 (array!14888 (store (arr!7061 a!3312) i!1256 k0!2524) (size!7413 a!3312))) (index!11056 lt!145843)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!294119 (=> res!154669 e!185957)))

(declare-fun b!294121 () Bool)

(assert (=> b!294121 (= e!185956 e!185955)))

(declare-fun res!154671 () Bool)

(assert (=> b!294121 (= res!154671 (and ((_ is Intermediate!2221) lt!145843) (not (undefined!3033 lt!145843)) (bvslt (x!29216 lt!145843) #b01111111111111111111111111111110) (bvsge (x!29216 lt!145843) #b00000000000000000000000000000000) (bvsge (x!29216 lt!145843) #b00000000000000000000000000000000)))))

(assert (=> b!294121 (=> (not res!154671) (not e!185955))))

(declare-fun b!294122 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!294122 (= e!185953 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145787 #b00000000000000000000000000000000 mask!3809) k0!2524 (array!14888 (store (arr!7061 a!3312) i!1256 k0!2524) (size!7413 a!3312)) mask!3809))))

(declare-fun d!66645 () Bool)

(assert (=> d!66645 e!185956))

(declare-fun c!47294 () Bool)

(assert (=> d!66645 (= c!47294 (and ((_ is Intermediate!2221) lt!145843) (undefined!3033 lt!145843)))))

(assert (=> d!66645 (= lt!145843 e!185954)))

(declare-fun c!47295 () Bool)

(assert (=> d!66645 (= c!47295 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66645 (= lt!145844 (select (arr!7061 (array!14888 (store (arr!7061 a!3312) i!1256 k0!2524) (size!7413 a!3312))) lt!145787))))

(assert (=> d!66645 (validMask!0 mask!3809)))

(assert (=> d!66645 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145787 k0!2524 (array!14888 (store (arr!7061 a!3312) i!1256 k0!2524) (size!7413 a!3312)) mask!3809) lt!145843)))

(declare-fun b!294120 () Bool)

(assert (=> b!294120 (and (bvsge (index!11056 lt!145843) #b00000000000000000000000000000000) (bvslt (index!11056 lt!145843) (size!7413 (array!14888 (store (arr!7061 a!3312) i!1256 k0!2524) (size!7413 a!3312)))))))

(assert (=> b!294120 (= e!185957 (= (select (arr!7061 (array!14888 (store (arr!7061 a!3312) i!1256 k0!2524) (size!7413 a!3312))) (index!11056 lt!145843)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!66645 c!47295) b!294118))

(assert (= (and d!66645 (not c!47295)) b!294114))

(assert (= (and b!294114 c!47293) b!294117))

(assert (= (and b!294114 (not c!47293)) b!294122))

(assert (= (and d!66645 c!47294) b!294115))

(assert (= (and d!66645 (not c!47294)) b!294121))

(assert (= (and b!294121 res!154671) b!294116))

(assert (= (and b!294116 (not res!154670)) b!294119))

(assert (= (and b!294119 (not res!154669)) b!294120))

(declare-fun m!307677 () Bool)

(assert (=> b!294122 m!307677))

(assert (=> b!294122 m!307677))

(declare-fun m!307679 () Bool)

(assert (=> b!294122 m!307679))

(declare-fun m!307681 () Bool)

(assert (=> b!294116 m!307681))

(declare-fun m!307683 () Bool)

(assert (=> d!66645 m!307683))

(assert (=> d!66645 m!307591))

(assert (=> b!294120 m!307681))

(assert (=> b!294119 m!307681))

(assert (=> b!293989 d!66645))

(declare-fun b!294123 () Bool)

(declare-fun e!185959 () SeekEntryResult!2221)

(declare-fun e!185958 () SeekEntryResult!2221)

(assert (=> b!294123 (= e!185959 e!185958)))

(declare-fun c!47296 () Bool)

(declare-fun lt!145846 () (_ BitVec 64))

(assert (=> b!294123 (= c!47296 (or (= lt!145846 k0!2524) (= (bvadd lt!145846 lt!145846) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!294124 () Bool)

(declare-fun e!185961 () Bool)

(declare-fun lt!145845 () SeekEntryResult!2221)

(assert (=> b!294124 (= e!185961 (bvsge (x!29216 lt!145845) #b01111111111111111111111111111110))))

(declare-fun b!294125 () Bool)

(assert (=> b!294125 (and (bvsge (index!11056 lt!145845) #b00000000000000000000000000000000) (bvslt (index!11056 lt!145845) (size!7413 a!3312)))))

(declare-fun res!154673 () Bool)

(assert (=> b!294125 (= res!154673 (= (select (arr!7061 a!3312) (index!11056 lt!145845)) k0!2524))))

(declare-fun e!185962 () Bool)

(assert (=> b!294125 (=> res!154673 e!185962)))

(declare-fun e!185960 () Bool)

(assert (=> b!294125 (= e!185960 e!185962)))

(declare-fun b!294126 () Bool)

(assert (=> b!294126 (= e!185958 (Intermediate!2221 false lt!145787 #b00000000000000000000000000000000))))

(declare-fun b!294127 () Bool)

(assert (=> b!294127 (= e!185959 (Intermediate!2221 true lt!145787 #b00000000000000000000000000000000))))

(declare-fun b!294128 () Bool)

(assert (=> b!294128 (and (bvsge (index!11056 lt!145845) #b00000000000000000000000000000000) (bvslt (index!11056 lt!145845) (size!7413 a!3312)))))

(declare-fun res!154672 () Bool)

(assert (=> b!294128 (= res!154672 (= (select (arr!7061 a!3312) (index!11056 lt!145845)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!294128 (=> res!154672 e!185962)))

(declare-fun b!294130 () Bool)

(assert (=> b!294130 (= e!185961 e!185960)))

(declare-fun res!154674 () Bool)

(assert (=> b!294130 (= res!154674 (and ((_ is Intermediate!2221) lt!145845) (not (undefined!3033 lt!145845)) (bvslt (x!29216 lt!145845) #b01111111111111111111111111111110) (bvsge (x!29216 lt!145845) #b00000000000000000000000000000000) (bvsge (x!29216 lt!145845) #b00000000000000000000000000000000)))))

(assert (=> b!294130 (=> (not res!154674) (not e!185960))))

(declare-fun b!294131 () Bool)

(assert (=> b!294131 (= e!185958 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145787 #b00000000000000000000000000000000 mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun d!66655 () Bool)

(assert (=> d!66655 e!185961))

(declare-fun c!47297 () Bool)

(assert (=> d!66655 (= c!47297 (and ((_ is Intermediate!2221) lt!145845) (undefined!3033 lt!145845)))))

(assert (=> d!66655 (= lt!145845 e!185959)))

(declare-fun c!47298 () Bool)

(assert (=> d!66655 (= c!47298 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66655 (= lt!145846 (select (arr!7061 a!3312) lt!145787))))

(assert (=> d!66655 (validMask!0 mask!3809)))

(assert (=> d!66655 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145787 k0!2524 a!3312 mask!3809) lt!145845)))

(declare-fun b!294129 () Bool)

(assert (=> b!294129 (and (bvsge (index!11056 lt!145845) #b00000000000000000000000000000000) (bvslt (index!11056 lt!145845) (size!7413 a!3312)))))

(assert (=> b!294129 (= e!185962 (= (select (arr!7061 a!3312) (index!11056 lt!145845)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!66655 c!47298) b!294127))

(assert (= (and d!66655 (not c!47298)) b!294123))

(assert (= (and b!294123 c!47296) b!294126))

(assert (= (and b!294123 (not c!47296)) b!294131))

(assert (= (and d!66655 c!47297) b!294124))

(assert (= (and d!66655 (not c!47297)) b!294130))

(assert (= (and b!294130 res!154674) b!294125))

(assert (= (and b!294125 (not res!154673)) b!294128))

(assert (= (and b!294128 (not res!154672)) b!294129))

(assert (=> b!294131 m!307677))

(assert (=> b!294131 m!307677))

(declare-fun m!307685 () Bool)

(assert (=> b!294131 m!307685))

(declare-fun m!307687 () Bool)

(assert (=> b!294125 m!307687))

(declare-fun m!307689 () Bool)

(assert (=> d!66655 m!307689))

(assert (=> d!66655 m!307591))

(assert (=> b!294129 m!307687))

(assert (=> b!294128 m!307687))

(assert (=> b!293989 d!66655))

(declare-fun d!66657 () Bool)

(declare-fun lt!145856 () (_ BitVec 32))

(declare-fun lt!145855 () (_ BitVec 32))

(assert (=> d!66657 (= lt!145856 (bvmul (bvxor lt!145855 (bvlshr lt!145855 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66657 (= lt!145855 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66657 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!154675 (let ((h!5297 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29219 (bvmul (bvxor h!5297 (bvlshr h!5297 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29219 (bvlshr x!29219 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!154675 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!154675 #b00000000000000000000000000000000))))))

(assert (=> d!66657 (= (toIndex!0 k0!2524 mask!3809) (bvand (bvxor lt!145856 (bvlshr lt!145856 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!293989 d!66657))

(check-sat (not b!294021) (not b!294122) (not b!294023) (not b!294131) (not bm!25686) (not b!294029) (not d!66645) (not d!66631) (not d!66655) (not b!294045))
(check-sat)
