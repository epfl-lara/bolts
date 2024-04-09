; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28524 () Bool)

(assert start!28524)

(declare-fun b!291725 () Bool)

(declare-fun e!184597 () Bool)

(declare-fun e!184599 () Bool)

(assert (=> b!291725 (= e!184597 e!184599)))

(declare-fun res!152966 () Bool)

(assert (=> b!291725 (=> (not res!152966) (not e!184599))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2152 0))(
  ( (MissingZero!2152 (index!10778 (_ BitVec 32))) (Found!2152 (index!10779 (_ BitVec 32))) (Intermediate!2152 (undefined!2964 Bool) (index!10780 (_ BitVec 32)) (x!28937 (_ BitVec 32))) (Undefined!2152) (MissingVacant!2152 (index!10781 (_ BitVec 32))) )
))
(declare-fun lt!144397 () SeekEntryResult!2152)

(declare-fun lt!144401 () Bool)

(assert (=> b!291725 (= res!152966 (or lt!144401 (= lt!144397 (MissingVacant!2152 i!1256))))))

(assert (=> b!291725 (= lt!144401 (= lt!144397 (MissingZero!2152 i!1256)))))

(declare-datatypes ((array!14737 0))(
  ( (array!14738 (arr!6992 (Array (_ BitVec 32) (_ BitVec 64))) (size!7344 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14737)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14737 (_ BitVec 32)) SeekEntryResult!2152)

(assert (=> b!291725 (= lt!144397 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!291727 () Bool)

(declare-fun e!184598 () Bool)

(assert (=> b!291727 (= e!184599 e!184598)))

(declare-fun res!152964 () Bool)

(assert (=> b!291727 (=> (not res!152964) (not e!184598))))

(assert (=> b!291727 (= res!152964 (and (not lt!144401) (= lt!144397 (MissingVacant!2152 i!1256))))))

(declare-fun lt!144399 () (_ BitVec 32))

(declare-fun lt!144398 () SeekEntryResult!2152)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14737 (_ BitVec 32)) SeekEntryResult!2152)

(assert (=> b!291727 (= lt!144398 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144399 k0!2524 (array!14738 (store (arr!6992 a!3312) i!1256 k0!2524) (size!7344 a!3312)) mask!3809))))

(declare-fun lt!144400 () SeekEntryResult!2152)

(assert (=> b!291727 (= lt!144400 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144399 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!291727 (= lt!144399 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!291728 () Bool)

(declare-fun res!152961 () Bool)

(assert (=> b!291728 (=> (not res!152961) (not e!184597))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!291728 (= res!152961 (validKeyInArray!0 k0!2524))))

(declare-fun b!291729 () Bool)

(declare-fun res!152967 () Bool)

(assert (=> b!291729 (=> (not res!152967) (not e!184599))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14737 (_ BitVec 32)) Bool)

(assert (=> b!291729 (= res!152967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!291730 () Bool)

(declare-fun e!184596 () Bool)

(assert (=> b!291730 (= e!184598 e!184596)))

(declare-fun res!152963 () Bool)

(assert (=> b!291730 (=> (not res!152963) (not e!184596))))

(declare-fun lt!144396 () Bool)

(assert (=> b!291730 (= res!152963 (and (or lt!144396 (not (undefined!2964 lt!144400))) (not lt!144396) (= (select (arr!6992 a!3312) (index!10780 lt!144400)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(get-info :version)

(assert (=> b!291730 (= lt!144396 (not ((_ is Intermediate!2152) lt!144400)))))

(declare-fun b!291731 () Bool)

(declare-fun res!152960 () Bool)

(assert (=> b!291731 (=> (not res!152960) (not e!184597))))

(assert (=> b!291731 (= res!152960 (and (= (size!7344 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7344 a!3312))))))

(declare-fun b!291732 () Bool)

(declare-fun res!152962 () Bool)

(assert (=> b!291732 (=> (not res!152962) (not e!184597))))

(declare-fun arrayContainsKey!0 (array!14737 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!291732 (= res!152962 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!291726 () Bool)

(assert (=> b!291726 (= e!184596 (not (or (not (= lt!144400 (Intermediate!2152 false (index!10780 lt!144400) (x!28937 lt!144400)))) (bvsgt #b00000000000000000000000000000000 (x!28937 lt!144400)) (and (bvsge lt!144399 #b00000000000000000000000000000000) (bvslt lt!144399 (size!7344 a!3312))))))))

(assert (=> b!291726 (= (index!10780 lt!144400) i!1256)))

(declare-fun res!152965 () Bool)

(assert (=> start!28524 (=> (not res!152965) (not e!184597))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28524 (= res!152965 (validMask!0 mask!3809))))

(assert (=> start!28524 e!184597))

(assert (=> start!28524 true))

(declare-fun array_inv!4946 (array!14737) Bool)

(assert (=> start!28524 (array_inv!4946 a!3312)))

(assert (= (and start!28524 res!152965) b!291731))

(assert (= (and b!291731 res!152960) b!291728))

(assert (= (and b!291728 res!152961) b!291732))

(assert (= (and b!291732 res!152962) b!291725))

(assert (= (and b!291725 res!152966) b!291729))

(assert (= (and b!291729 res!152967) b!291727))

(assert (= (and b!291727 res!152964) b!291730))

(assert (= (and b!291730 res!152963) b!291726))

(declare-fun m!305597 () Bool)

(assert (=> b!291728 m!305597))

(declare-fun m!305599 () Bool)

(assert (=> b!291725 m!305599))

(declare-fun m!305601 () Bool)

(assert (=> b!291729 m!305601))

(declare-fun m!305603 () Bool)

(assert (=> b!291730 m!305603))

(declare-fun m!305605 () Bool)

(assert (=> b!291732 m!305605))

(declare-fun m!305607 () Bool)

(assert (=> b!291727 m!305607))

(declare-fun m!305609 () Bool)

(assert (=> b!291727 m!305609))

(declare-fun m!305611 () Bool)

(assert (=> b!291727 m!305611))

(declare-fun m!305613 () Bool)

(assert (=> b!291727 m!305613))

(declare-fun m!305615 () Bool)

(assert (=> start!28524 m!305615))

(declare-fun m!305617 () Bool)

(assert (=> start!28524 m!305617))

(check-sat (not b!291725) (not start!28524) (not b!291728) (not b!291729) (not b!291727) (not b!291732))
(check-sat)
(get-model)

(declare-fun b!291769 () Bool)

(declare-fun e!184628 () Bool)

(declare-fun e!184627 () Bool)

(assert (=> b!291769 (= e!184628 e!184627)))

(declare-fun lt!144426 () (_ BitVec 64))

(assert (=> b!291769 (= lt!144426 (select (arr!6992 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9139 0))(
  ( (Unit!9140) )
))
(declare-fun lt!144427 () Unit!9139)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14737 (_ BitVec 64) (_ BitVec 32)) Unit!9139)

(assert (=> b!291769 (= lt!144427 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!144426 #b00000000000000000000000000000000))))

(assert (=> b!291769 (arrayContainsKey!0 a!3312 lt!144426 #b00000000000000000000000000000000)))

(declare-fun lt!144428 () Unit!9139)

(assert (=> b!291769 (= lt!144428 lt!144427)))

(declare-fun res!153001 () Bool)

(assert (=> b!291769 (= res!153001 (= (seekEntryOrOpen!0 (select (arr!6992 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2152 #b00000000000000000000000000000000)))))

(assert (=> b!291769 (=> (not res!153001) (not e!184627))))

(declare-fun b!291770 () Bool)

(declare-fun call!25652 () Bool)

(assert (=> b!291770 (= e!184628 call!25652)))

(declare-fun bm!25649 () Bool)

(assert (=> bm!25649 (= call!25652 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!291771 () Bool)

(assert (=> b!291771 (= e!184627 call!25652)))

(declare-fun b!291772 () Bool)

(declare-fun e!184626 () Bool)

(assert (=> b!291772 (= e!184626 e!184628)))

(declare-fun c!46949 () Bool)

(assert (=> b!291772 (= c!46949 (validKeyInArray!0 (select (arr!6992 a!3312) #b00000000000000000000000000000000)))))

(declare-fun d!66331 () Bool)

(declare-fun res!153000 () Bool)

(assert (=> d!66331 (=> res!153000 e!184626)))

(assert (=> d!66331 (= res!153000 (bvsge #b00000000000000000000000000000000 (size!7344 a!3312)))))

(assert (=> d!66331 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!184626)))

(assert (= (and d!66331 (not res!153000)) b!291772))

(assert (= (and b!291772 c!46949) b!291769))

(assert (= (and b!291772 (not c!46949)) b!291770))

(assert (= (and b!291769 res!153001) b!291771))

(assert (= (or b!291771 b!291770) bm!25649))

(declare-fun m!305643 () Bool)

(assert (=> b!291769 m!305643))

(declare-fun m!305647 () Bool)

(assert (=> b!291769 m!305647))

(declare-fun m!305649 () Bool)

(assert (=> b!291769 m!305649))

(assert (=> b!291769 m!305643))

(declare-fun m!305651 () Bool)

(assert (=> b!291769 m!305651))

(declare-fun m!305653 () Bool)

(assert (=> bm!25649 m!305653))

(assert (=> b!291772 m!305643))

(assert (=> b!291772 m!305643))

(declare-fun m!305655 () Bool)

(assert (=> b!291772 m!305655))

(assert (=> b!291729 d!66331))

(declare-fun d!66337 () Bool)

(assert (=> d!66337 (= (validKeyInArray!0 k0!2524) (and (not (= k0!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!291728 d!66337))

(declare-fun b!291829 () Bool)

(declare-fun lt!144448 () SeekEntryResult!2152)

(assert (=> b!291829 (and (bvsge (index!10780 lt!144448) #b00000000000000000000000000000000) (bvslt (index!10780 lt!144448) (size!7344 (array!14738 (store (arr!6992 a!3312) i!1256 k0!2524) (size!7344 a!3312)))))))

(declare-fun res!153017 () Bool)

(assert (=> b!291829 (= res!153017 (= (select (arr!6992 (array!14738 (store (arr!6992 a!3312) i!1256 k0!2524) (size!7344 a!3312))) (index!10780 lt!144448)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!184664 () Bool)

(assert (=> b!291829 (=> res!153017 e!184664)))

(declare-fun d!66339 () Bool)

(declare-fun e!184666 () Bool)

(assert (=> d!66339 e!184666))

(declare-fun c!46972 () Bool)

(assert (=> d!66339 (= c!46972 (and ((_ is Intermediate!2152) lt!144448) (undefined!2964 lt!144448)))))

(declare-fun e!184662 () SeekEntryResult!2152)

(assert (=> d!66339 (= lt!144448 e!184662)))

(declare-fun c!46971 () Bool)

(assert (=> d!66339 (= c!46971 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!144449 () (_ BitVec 64))

(assert (=> d!66339 (= lt!144449 (select (arr!6992 (array!14738 (store (arr!6992 a!3312) i!1256 k0!2524) (size!7344 a!3312))) lt!144399))))

(assert (=> d!66339 (validMask!0 mask!3809)))

(assert (=> d!66339 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144399 k0!2524 (array!14738 (store (arr!6992 a!3312) i!1256 k0!2524) (size!7344 a!3312)) mask!3809) lt!144448)))

(declare-fun b!291830 () Bool)

(assert (=> b!291830 (and (bvsge (index!10780 lt!144448) #b00000000000000000000000000000000) (bvslt (index!10780 lt!144448) (size!7344 (array!14738 (store (arr!6992 a!3312) i!1256 k0!2524) (size!7344 a!3312)))))))

(declare-fun res!153018 () Bool)

(assert (=> b!291830 (= res!153018 (= (select (arr!6992 (array!14738 (store (arr!6992 a!3312) i!1256 k0!2524) (size!7344 a!3312))) (index!10780 lt!144448)) k0!2524))))

(assert (=> b!291830 (=> res!153018 e!184664)))

(declare-fun e!184665 () Bool)

(assert (=> b!291830 (= e!184665 e!184664)))

(declare-fun b!291831 () Bool)

(assert (=> b!291831 (= e!184666 (bvsge (x!28937 lt!144448) #b01111111111111111111111111111110))))

(declare-fun b!291832 () Bool)

(declare-fun e!184663 () SeekEntryResult!2152)

(assert (=> b!291832 (= e!184662 e!184663)))

(declare-fun c!46973 () Bool)

(assert (=> b!291832 (= c!46973 (or (= lt!144449 k0!2524) (= (bvadd lt!144449 lt!144449) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!291833 () Bool)

(assert (=> b!291833 (= e!184666 e!184665)))

(declare-fun res!153016 () Bool)

(assert (=> b!291833 (= res!153016 (and ((_ is Intermediate!2152) lt!144448) (not (undefined!2964 lt!144448)) (bvslt (x!28937 lt!144448) #b01111111111111111111111111111110) (bvsge (x!28937 lt!144448) #b00000000000000000000000000000000) (bvsge (x!28937 lt!144448) #b00000000000000000000000000000000)))))

(assert (=> b!291833 (=> (not res!153016) (not e!184665))))

(declare-fun b!291834 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!291834 (= e!184663 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!144399 #b00000000000000000000000000000000 mask!3809) k0!2524 (array!14738 (store (arr!6992 a!3312) i!1256 k0!2524) (size!7344 a!3312)) mask!3809))))

(declare-fun b!291835 () Bool)

(assert (=> b!291835 (= e!184662 (Intermediate!2152 true lt!144399 #b00000000000000000000000000000000))))

(declare-fun b!291836 () Bool)

(assert (=> b!291836 (and (bvsge (index!10780 lt!144448) #b00000000000000000000000000000000) (bvslt (index!10780 lt!144448) (size!7344 (array!14738 (store (arr!6992 a!3312) i!1256 k0!2524) (size!7344 a!3312)))))))

(assert (=> b!291836 (= e!184664 (= (select (arr!6992 (array!14738 (store (arr!6992 a!3312) i!1256 k0!2524) (size!7344 a!3312))) (index!10780 lt!144448)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!291837 () Bool)

(assert (=> b!291837 (= e!184663 (Intermediate!2152 false lt!144399 #b00000000000000000000000000000000))))

(assert (= (and d!66339 c!46971) b!291835))

(assert (= (and d!66339 (not c!46971)) b!291832))

(assert (= (and b!291832 c!46973) b!291837))

(assert (= (and b!291832 (not c!46973)) b!291834))

(assert (= (and d!66339 c!46972) b!291831))

(assert (= (and d!66339 (not c!46972)) b!291833))

(assert (= (and b!291833 res!153016) b!291830))

(assert (= (and b!291830 (not res!153018)) b!291829))

(assert (= (and b!291829 (not res!153017)) b!291836))

(declare-fun m!305673 () Bool)

(assert (=> b!291836 m!305673))

(declare-fun m!305675 () Bool)

(assert (=> b!291834 m!305675))

(assert (=> b!291834 m!305675))

(declare-fun m!305677 () Bool)

(assert (=> b!291834 m!305677))

(assert (=> b!291829 m!305673))

(declare-fun m!305679 () Bool)

(assert (=> d!66339 m!305679))

(assert (=> d!66339 m!305615))

(assert (=> b!291830 m!305673))

(assert (=> b!291727 d!66339))

(declare-fun b!291844 () Bool)

(declare-fun lt!144453 () SeekEntryResult!2152)

(assert (=> b!291844 (and (bvsge (index!10780 lt!144453) #b00000000000000000000000000000000) (bvslt (index!10780 lt!144453) (size!7344 a!3312)))))

(declare-fun res!153020 () Bool)

(assert (=> b!291844 (= res!153020 (= (select (arr!6992 a!3312) (index!10780 lt!144453)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!184672 () Bool)

(assert (=> b!291844 (=> res!153020 e!184672)))

(declare-fun d!66347 () Bool)

(declare-fun e!184674 () Bool)

(assert (=> d!66347 e!184674))

(declare-fun c!46978 () Bool)

(assert (=> d!66347 (= c!46978 (and ((_ is Intermediate!2152) lt!144453) (undefined!2964 lt!144453)))))

(declare-fun e!184670 () SeekEntryResult!2152)

(assert (=> d!66347 (= lt!144453 e!184670)))

(declare-fun c!46977 () Bool)

(assert (=> d!66347 (= c!46977 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!144454 () (_ BitVec 64))

(assert (=> d!66347 (= lt!144454 (select (arr!6992 a!3312) lt!144399))))

(assert (=> d!66347 (validMask!0 mask!3809)))

(assert (=> d!66347 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144399 k0!2524 a!3312 mask!3809) lt!144453)))

(declare-fun b!291845 () Bool)

(assert (=> b!291845 (and (bvsge (index!10780 lt!144453) #b00000000000000000000000000000000) (bvslt (index!10780 lt!144453) (size!7344 a!3312)))))

(declare-fun res!153021 () Bool)

(assert (=> b!291845 (= res!153021 (= (select (arr!6992 a!3312) (index!10780 lt!144453)) k0!2524))))

(assert (=> b!291845 (=> res!153021 e!184672)))

(declare-fun e!184673 () Bool)

(assert (=> b!291845 (= e!184673 e!184672)))

(declare-fun b!291846 () Bool)

(assert (=> b!291846 (= e!184674 (bvsge (x!28937 lt!144453) #b01111111111111111111111111111110))))

(declare-fun b!291847 () Bool)

(declare-fun e!184671 () SeekEntryResult!2152)

(assert (=> b!291847 (= e!184670 e!184671)))

(declare-fun c!46979 () Bool)

(assert (=> b!291847 (= c!46979 (or (= lt!144454 k0!2524) (= (bvadd lt!144454 lt!144454) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!291848 () Bool)

(assert (=> b!291848 (= e!184674 e!184673)))

(declare-fun res!153019 () Bool)

(assert (=> b!291848 (= res!153019 (and ((_ is Intermediate!2152) lt!144453) (not (undefined!2964 lt!144453)) (bvslt (x!28937 lt!144453) #b01111111111111111111111111111110) (bvsge (x!28937 lt!144453) #b00000000000000000000000000000000) (bvsge (x!28937 lt!144453) #b00000000000000000000000000000000)))))

(assert (=> b!291848 (=> (not res!153019) (not e!184673))))

(declare-fun b!291849 () Bool)

(assert (=> b!291849 (= e!184671 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!144399 #b00000000000000000000000000000000 mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun b!291850 () Bool)

(assert (=> b!291850 (= e!184670 (Intermediate!2152 true lt!144399 #b00000000000000000000000000000000))))

(declare-fun b!291851 () Bool)

(assert (=> b!291851 (and (bvsge (index!10780 lt!144453) #b00000000000000000000000000000000) (bvslt (index!10780 lt!144453) (size!7344 a!3312)))))

(assert (=> b!291851 (= e!184672 (= (select (arr!6992 a!3312) (index!10780 lt!144453)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!291852 () Bool)

(assert (=> b!291852 (= e!184671 (Intermediate!2152 false lt!144399 #b00000000000000000000000000000000))))

(assert (= (and d!66347 c!46977) b!291850))

(assert (= (and d!66347 (not c!46977)) b!291847))

(assert (= (and b!291847 c!46979) b!291852))

(assert (= (and b!291847 (not c!46979)) b!291849))

(assert (= (and d!66347 c!46978) b!291846))

(assert (= (and d!66347 (not c!46978)) b!291848))

(assert (= (and b!291848 res!153019) b!291845))

(assert (= (and b!291845 (not res!153021)) b!291844))

(assert (= (and b!291844 (not res!153020)) b!291851))

(declare-fun m!305693 () Bool)

(assert (=> b!291851 m!305693))

(assert (=> b!291849 m!305675))

(assert (=> b!291849 m!305675))

(declare-fun m!305695 () Bool)

(assert (=> b!291849 m!305695))

(assert (=> b!291844 m!305693))

(declare-fun m!305697 () Bool)

(assert (=> d!66347 m!305697))

(assert (=> d!66347 m!305615))

(assert (=> b!291845 m!305693))

(assert (=> b!291727 d!66347))

(declare-fun d!66351 () Bool)

(declare-fun lt!144466 () (_ BitVec 32))

(declare-fun lt!144465 () (_ BitVec 32))

(assert (=> d!66351 (= lt!144466 (bvmul (bvxor lt!144465 (bvlshr lt!144465 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66351 (= lt!144465 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66351 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!153022 (let ((h!5285 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!28940 (bvmul (bvxor h!5285 (bvlshr h!5285 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!28940 (bvlshr x!28940 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!153022 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!153022 #b00000000000000000000000000000000))))))

(assert (=> d!66351 (= (toIndex!0 k0!2524 mask!3809) (bvand (bvxor lt!144466 (bvlshr lt!144466 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!291727 d!66351))

(declare-fun d!66359 () Bool)

(declare-fun res!153037 () Bool)

(declare-fun e!184694 () Bool)

(assert (=> d!66359 (=> res!153037 e!184694)))

(assert (=> d!66359 (= res!153037 (= (select (arr!6992 a!3312) #b00000000000000000000000000000000) k0!2524))))

(assert (=> d!66359 (= (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000) e!184694)))

(declare-fun b!291877 () Bool)

(declare-fun e!184695 () Bool)

(assert (=> b!291877 (= e!184694 e!184695)))

(declare-fun res!153038 () Bool)

(assert (=> b!291877 (=> (not res!153038) (not e!184695))))

(assert (=> b!291877 (= res!153038 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7344 a!3312)))))

(declare-fun b!291878 () Bool)

(assert (=> b!291878 (= e!184695 (arrayContainsKey!0 a!3312 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66359 (not res!153037)) b!291877))

(assert (= (and b!291877 res!153038) b!291878))

(assert (=> d!66359 m!305643))

(declare-fun m!305709 () Bool)

(assert (=> b!291878 m!305709))

(assert (=> b!291732 d!66359))

(declare-fun d!66363 () Bool)

(assert (=> d!66363 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!28524 d!66363))

(declare-fun d!66367 () Bool)

(assert (=> d!66367 (= (array_inv!4946 a!3312) (bvsge (size!7344 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!28524 d!66367))

(declare-fun b!291967 () Bool)

(declare-fun e!184746 () SeekEntryResult!2152)

(declare-fun e!184747 () SeekEntryResult!2152)

(assert (=> b!291967 (= e!184746 e!184747)))

(declare-fun lt!144513 () (_ BitVec 64))

(declare-fun lt!144515 () SeekEntryResult!2152)

(assert (=> b!291967 (= lt!144513 (select (arr!6992 a!3312) (index!10780 lt!144515)))))

(declare-fun c!47016 () Bool)

(assert (=> b!291967 (= c!47016 (= lt!144513 k0!2524))))

(declare-fun d!66369 () Bool)

(declare-fun lt!144514 () SeekEntryResult!2152)

(assert (=> d!66369 (and (or ((_ is Undefined!2152) lt!144514) (not ((_ is Found!2152) lt!144514)) (and (bvsge (index!10779 lt!144514) #b00000000000000000000000000000000) (bvslt (index!10779 lt!144514) (size!7344 a!3312)))) (or ((_ is Undefined!2152) lt!144514) ((_ is Found!2152) lt!144514) (not ((_ is MissingZero!2152) lt!144514)) (and (bvsge (index!10778 lt!144514) #b00000000000000000000000000000000) (bvslt (index!10778 lt!144514) (size!7344 a!3312)))) (or ((_ is Undefined!2152) lt!144514) ((_ is Found!2152) lt!144514) ((_ is MissingZero!2152) lt!144514) (not ((_ is MissingVacant!2152) lt!144514)) (and (bvsge (index!10781 lt!144514) #b00000000000000000000000000000000) (bvslt (index!10781 lt!144514) (size!7344 a!3312)))) (or ((_ is Undefined!2152) lt!144514) (ite ((_ is Found!2152) lt!144514) (= (select (arr!6992 a!3312) (index!10779 lt!144514)) k0!2524) (ite ((_ is MissingZero!2152) lt!144514) (= (select (arr!6992 a!3312) (index!10778 lt!144514)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2152) lt!144514) (= (select (arr!6992 a!3312) (index!10781 lt!144514)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!66369 (= lt!144514 e!184746)))

(declare-fun c!47017 () Bool)

(assert (=> d!66369 (= c!47017 (and ((_ is Intermediate!2152) lt!144515) (undefined!2964 lt!144515)))))

(assert (=> d!66369 (= lt!144515 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(assert (=> d!66369 (validMask!0 mask!3809)))

(assert (=> d!66369 (= (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809) lt!144514)))

(declare-fun b!291968 () Bool)

(declare-fun e!184745 () SeekEntryResult!2152)

(assert (=> b!291968 (= e!184745 (MissingZero!2152 (index!10780 lt!144515)))))

(declare-fun b!291969 () Bool)

(assert (=> b!291969 (= e!184747 (Found!2152 (index!10780 lt!144515)))))

(declare-fun b!291970 () Bool)

(declare-fun c!47018 () Bool)

(assert (=> b!291970 (= c!47018 (= lt!144513 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!291970 (= e!184747 e!184745)))

(declare-fun b!291971 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14737 (_ BitVec 32)) SeekEntryResult!2152)

(assert (=> b!291971 (= e!184745 (seekKeyOrZeroReturnVacant!0 (x!28937 lt!144515) (index!10780 lt!144515) (index!10780 lt!144515) k0!2524 a!3312 mask!3809))))

(declare-fun b!291972 () Bool)

(assert (=> b!291972 (= e!184746 Undefined!2152)))

(assert (= (and d!66369 c!47017) b!291972))

(assert (= (and d!66369 (not c!47017)) b!291967))

(assert (= (and b!291967 c!47016) b!291969))

(assert (= (and b!291967 (not c!47016)) b!291970))

(assert (= (and b!291970 c!47018) b!291968))

(assert (= (and b!291970 (not c!47018)) b!291971))

(declare-fun m!305749 () Bool)

(assert (=> b!291967 m!305749))

(declare-fun m!305751 () Bool)

(assert (=> d!66369 m!305751))

(declare-fun m!305753 () Bool)

(assert (=> d!66369 m!305753))

(declare-fun m!305755 () Bool)

(assert (=> d!66369 m!305755))

(assert (=> d!66369 m!305613))

(assert (=> d!66369 m!305613))

(declare-fun m!305757 () Bool)

(assert (=> d!66369 m!305757))

(assert (=> d!66369 m!305615))

(declare-fun m!305759 () Bool)

(assert (=> b!291971 m!305759))

(assert (=> b!291725 d!66369))

(check-sat (not b!291834) (not d!66369) (not b!291772) (not d!66347) (not b!291971) (not bm!25649) (not b!291849) (not b!291769) (not d!66339) (not b!291878))
(check-sat)
