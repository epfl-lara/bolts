; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28916 () Bool)

(assert start!28916)

(declare-fun b!294258 () Bool)

(declare-fun res!154744 () Bool)

(declare-fun e!186038 () Bool)

(assert (=> b!294258 (=> (not res!154744) (not e!186038))))

(declare-datatypes ((array!14896 0))(
  ( (array!14897 (arr!7064 (Array (_ BitVec 32) (_ BitVec 64))) (size!7416 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14896)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14896 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!294258 (= res!154744 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun res!154749 () Bool)

(assert (=> start!28916 (=> (not res!154749) (not e!186038))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28916 (= res!154749 (validMask!0 mask!3809))))

(assert (=> start!28916 e!186038))

(assert (=> start!28916 true))

(declare-fun array_inv!5018 (array!14896) Bool)

(assert (=> start!28916 (array_inv!5018 a!3312)))

(declare-fun b!294259 () Bool)

(declare-fun res!154747 () Bool)

(assert (=> b!294259 (=> (not res!154747) (not e!186038))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!294259 (= res!154747 (and (= (size!7416 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7416 a!3312))))))

(declare-fun e!186037 () Bool)

(declare-datatypes ((SeekEntryResult!2224 0))(
  ( (MissingZero!2224 (index!11066 (_ BitVec 32))) (Found!2224 (index!11067 (_ BitVec 32))) (Intermediate!2224 (undefined!3036 Bool) (index!11068 (_ BitVec 32)) (x!29233 (_ BitVec 32))) (Undefined!2224) (MissingVacant!2224 (index!11069 (_ BitVec 32))) )
))
(declare-fun lt!145925 () SeekEntryResult!2224)

(declare-fun lt!145928 () Bool)

(declare-fun b!294260 () Bool)

(get-info :version)

(assert (=> b!294260 (= e!186037 (and lt!145928 (let ((bdg!6235 (not ((_ is Intermediate!2224) lt!145925)))) (and (or bdg!6235 (not (undefined!3036 lt!145925))) (or bdg!6235 (not (= (select (arr!7064 a!3312) (index!11068 lt!145925)) #b1000000000000000000000000000000000000000000000000000000000000000))) (not bdg!6235) (= (select (arr!7064 a!3312) (index!11068 lt!145925)) k0!2524)))))))

(declare-fun lt!145927 () (_ BitVec 32))

(declare-fun lt!145926 () SeekEntryResult!2224)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14896 (_ BitVec 32)) SeekEntryResult!2224)

(assert (=> b!294260 (= lt!145926 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145927 k0!2524 (array!14897 (store (arr!7064 a!3312) i!1256 k0!2524) (size!7416 a!3312)) mask!3809))))

(assert (=> b!294260 (= lt!145925 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145927 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!294260 (= lt!145927 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!294261 () Bool)

(declare-fun res!154746 () Bool)

(assert (=> b!294261 (=> (not res!154746) (not e!186038))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!294261 (= res!154746 (validKeyInArray!0 k0!2524))))

(declare-fun b!294262 () Bool)

(assert (=> b!294262 (= e!186038 e!186037)))

(declare-fun res!154745 () Bool)

(assert (=> b!294262 (=> (not res!154745) (not e!186037))))

(declare-fun lt!145924 () SeekEntryResult!2224)

(assert (=> b!294262 (= res!154745 (or lt!145928 (= lt!145924 (MissingVacant!2224 i!1256))))))

(assert (=> b!294262 (= lt!145928 (= lt!145924 (MissingZero!2224 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14896 (_ BitVec 32)) SeekEntryResult!2224)

(assert (=> b!294262 (= lt!145924 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!294263 () Bool)

(declare-fun res!154748 () Bool)

(assert (=> b!294263 (=> (not res!154748) (not e!186037))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14896 (_ BitVec 32)) Bool)

(assert (=> b!294263 (= res!154748 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!28916 res!154749) b!294259))

(assert (= (and b!294259 res!154747) b!294261))

(assert (= (and b!294261 res!154746) b!294258))

(assert (= (and b!294258 res!154744) b!294262))

(assert (= (and b!294262 res!154745) b!294263))

(assert (= (and b!294263 res!154748) b!294260))

(declare-fun m!307761 () Bool)

(assert (=> b!294260 m!307761))

(declare-fun m!307763 () Bool)

(assert (=> b!294260 m!307763))

(declare-fun m!307765 () Bool)

(assert (=> b!294260 m!307765))

(declare-fun m!307767 () Bool)

(assert (=> b!294260 m!307767))

(declare-fun m!307769 () Bool)

(assert (=> b!294260 m!307769))

(declare-fun m!307771 () Bool)

(assert (=> b!294262 m!307771))

(declare-fun m!307773 () Bool)

(assert (=> b!294261 m!307773))

(declare-fun m!307775 () Bool)

(assert (=> b!294258 m!307775))

(declare-fun m!307777 () Bool)

(assert (=> start!28916 m!307777))

(declare-fun m!307779 () Bool)

(assert (=> start!28916 m!307779))

(declare-fun m!307781 () Bool)

(assert (=> b!294263 m!307781))

(check-sat (not start!28916) (not b!294262) (not b!294261) (not b!294263) (not b!294258) (not b!294260))
(check-sat)
(get-model)

(declare-fun d!66673 () Bool)

(declare-fun res!154772 () Bool)

(declare-fun e!186052 () Bool)

(assert (=> d!66673 (=> res!154772 e!186052)))

(assert (=> d!66673 (= res!154772 (= (select (arr!7064 a!3312) #b00000000000000000000000000000000) k0!2524))))

(assert (=> d!66673 (= (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000) e!186052)))

(declare-fun b!294286 () Bool)

(declare-fun e!186053 () Bool)

(assert (=> b!294286 (= e!186052 e!186053)))

(declare-fun res!154773 () Bool)

(assert (=> b!294286 (=> (not res!154773) (not e!186053))))

(assert (=> b!294286 (= res!154773 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7416 a!3312)))))

(declare-fun b!294287 () Bool)

(assert (=> b!294287 (= e!186053 (arrayContainsKey!0 a!3312 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66673 (not res!154772)) b!294286))

(assert (= (and b!294286 res!154773) b!294287))

(declare-fun m!307805 () Bool)

(assert (=> d!66673 m!307805))

(declare-fun m!307807 () Bool)

(assert (=> b!294287 m!307807))

(assert (=> b!294258 d!66673))

(declare-fun d!66675 () Bool)

(declare-fun res!154778 () Bool)

(declare-fun e!186061 () Bool)

(assert (=> d!66675 (=> res!154778 e!186061)))

(assert (=> d!66675 (= res!154778 (bvsge #b00000000000000000000000000000000 (size!7416 a!3312)))))

(assert (=> d!66675 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!186061)))

(declare-fun bm!25695 () Bool)

(declare-fun call!25698 () Bool)

(assert (=> bm!25695 (= call!25698 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!294296 () Bool)

(declare-fun e!186060 () Bool)

(declare-fun e!186062 () Bool)

(assert (=> b!294296 (= e!186060 e!186062)))

(declare-fun lt!145950 () (_ BitVec 64))

(assert (=> b!294296 (= lt!145950 (select (arr!7064 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9193 0))(
  ( (Unit!9194) )
))
(declare-fun lt!145951 () Unit!9193)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14896 (_ BitVec 64) (_ BitVec 32)) Unit!9193)

(assert (=> b!294296 (= lt!145951 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!145950 #b00000000000000000000000000000000))))

(assert (=> b!294296 (arrayContainsKey!0 a!3312 lt!145950 #b00000000000000000000000000000000)))

(declare-fun lt!145952 () Unit!9193)

(assert (=> b!294296 (= lt!145952 lt!145951)))

(declare-fun res!154779 () Bool)

(assert (=> b!294296 (= res!154779 (= (seekEntryOrOpen!0 (select (arr!7064 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2224 #b00000000000000000000000000000000)))))

(assert (=> b!294296 (=> (not res!154779) (not e!186062))))

(declare-fun b!294297 () Bool)

(assert (=> b!294297 (= e!186062 call!25698)))

(declare-fun b!294298 () Bool)

(assert (=> b!294298 (= e!186060 call!25698)))

(declare-fun b!294299 () Bool)

(assert (=> b!294299 (= e!186061 e!186060)))

(declare-fun c!47331 () Bool)

(assert (=> b!294299 (= c!47331 (validKeyInArray!0 (select (arr!7064 a!3312) #b00000000000000000000000000000000)))))

(assert (= (and d!66675 (not res!154778)) b!294299))

(assert (= (and b!294299 c!47331) b!294296))

(assert (= (and b!294299 (not c!47331)) b!294298))

(assert (= (and b!294296 res!154779) b!294297))

(assert (= (or b!294297 b!294298) bm!25695))

(declare-fun m!307809 () Bool)

(assert (=> bm!25695 m!307809))

(assert (=> b!294296 m!307805))

(declare-fun m!307811 () Bool)

(assert (=> b!294296 m!307811))

(declare-fun m!307813 () Bool)

(assert (=> b!294296 m!307813))

(assert (=> b!294296 m!307805))

(declare-fun m!307815 () Bool)

(assert (=> b!294296 m!307815))

(assert (=> b!294299 m!307805))

(assert (=> b!294299 m!307805))

(declare-fun m!307817 () Bool)

(assert (=> b!294299 m!307817))

(assert (=> b!294263 d!66675))

(declare-fun b!294318 () Bool)

(declare-fun e!186077 () SeekEntryResult!2224)

(assert (=> b!294318 (= e!186077 Undefined!2224)))

(declare-fun b!294319 () Bool)

(declare-fun c!47338 () Bool)

(declare-fun lt!145961 () (_ BitVec 64))

(assert (=> b!294319 (= c!47338 (= lt!145961 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!186075 () SeekEntryResult!2224)

(declare-fun e!186076 () SeekEntryResult!2224)

(assert (=> b!294319 (= e!186075 e!186076)))

(declare-fun b!294320 () Bool)

(declare-fun lt!145959 () SeekEntryResult!2224)

(assert (=> b!294320 (= e!186076 (MissingZero!2224 (index!11068 lt!145959)))))

(declare-fun b!294321 () Bool)

(assert (=> b!294321 (= e!186077 e!186075)))

(assert (=> b!294321 (= lt!145961 (select (arr!7064 a!3312) (index!11068 lt!145959)))))

(declare-fun c!47339 () Bool)

(assert (=> b!294321 (= c!47339 (= lt!145961 k0!2524))))

(declare-fun b!294322 () Bool)

(assert (=> b!294322 (= e!186075 (Found!2224 (index!11068 lt!145959)))))

(declare-fun b!294323 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14896 (_ BitVec 32)) SeekEntryResult!2224)

(assert (=> b!294323 (= e!186076 (seekKeyOrZeroReturnVacant!0 (x!29233 lt!145959) (index!11068 lt!145959) (index!11068 lt!145959) k0!2524 a!3312 mask!3809))))

(declare-fun d!66677 () Bool)

(declare-fun lt!145960 () SeekEntryResult!2224)

(assert (=> d!66677 (and (or ((_ is Undefined!2224) lt!145960) (not ((_ is Found!2224) lt!145960)) (and (bvsge (index!11067 lt!145960) #b00000000000000000000000000000000) (bvslt (index!11067 lt!145960) (size!7416 a!3312)))) (or ((_ is Undefined!2224) lt!145960) ((_ is Found!2224) lt!145960) (not ((_ is MissingZero!2224) lt!145960)) (and (bvsge (index!11066 lt!145960) #b00000000000000000000000000000000) (bvslt (index!11066 lt!145960) (size!7416 a!3312)))) (or ((_ is Undefined!2224) lt!145960) ((_ is Found!2224) lt!145960) ((_ is MissingZero!2224) lt!145960) (not ((_ is MissingVacant!2224) lt!145960)) (and (bvsge (index!11069 lt!145960) #b00000000000000000000000000000000) (bvslt (index!11069 lt!145960) (size!7416 a!3312)))) (or ((_ is Undefined!2224) lt!145960) (ite ((_ is Found!2224) lt!145960) (= (select (arr!7064 a!3312) (index!11067 lt!145960)) k0!2524) (ite ((_ is MissingZero!2224) lt!145960) (= (select (arr!7064 a!3312) (index!11066 lt!145960)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2224) lt!145960) (= (select (arr!7064 a!3312) (index!11069 lt!145960)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!66677 (= lt!145960 e!186077)))

(declare-fun c!47340 () Bool)

(assert (=> d!66677 (= c!47340 (and ((_ is Intermediate!2224) lt!145959) (undefined!3036 lt!145959)))))

(assert (=> d!66677 (= lt!145959 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(assert (=> d!66677 (validMask!0 mask!3809)))

(assert (=> d!66677 (= (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809) lt!145960)))

(assert (= (and d!66677 c!47340) b!294318))

(assert (= (and d!66677 (not c!47340)) b!294321))

(assert (= (and b!294321 c!47339) b!294322))

(assert (= (and b!294321 (not c!47339)) b!294319))

(assert (= (and b!294319 c!47338) b!294320))

(assert (= (and b!294319 (not c!47338)) b!294323))

(declare-fun m!307823 () Bool)

(assert (=> b!294321 m!307823))

(declare-fun m!307825 () Bool)

(assert (=> b!294323 m!307825))

(assert (=> d!66677 m!307767))

(declare-fun m!307827 () Bool)

(assert (=> d!66677 m!307827))

(assert (=> d!66677 m!307767))

(declare-fun m!307829 () Bool)

(assert (=> d!66677 m!307829))

(declare-fun m!307831 () Bool)

(assert (=> d!66677 m!307831))

(declare-fun m!307833 () Bool)

(assert (=> d!66677 m!307833))

(assert (=> d!66677 m!307777))

(assert (=> b!294262 d!66677))

(declare-fun d!66685 () Bool)

(assert (=> d!66685 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!28916 d!66685))

(declare-fun d!66691 () Bool)

(assert (=> d!66691 (= (array_inv!5018 a!3312) (bvsge (size!7416 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!28916 d!66691))

(declare-fun d!66693 () Bool)

(assert (=> d!66693 (= (validKeyInArray!0 k0!2524) (and (not (= k0!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!294261 d!66693))

(declare-fun b!294415 () Bool)

(declare-fun e!186127 () SeekEntryResult!2224)

(assert (=> b!294415 (= e!186127 (Intermediate!2224 true lt!145927 #b00000000000000000000000000000000))))

(declare-fun b!294416 () Bool)

(declare-fun lt!145993 () SeekEntryResult!2224)

(assert (=> b!294416 (and (bvsge (index!11068 lt!145993) #b00000000000000000000000000000000) (bvslt (index!11068 lt!145993) (size!7416 (array!14897 (store (arr!7064 a!3312) i!1256 k0!2524) (size!7416 a!3312)))))))

(declare-fun res!154805 () Bool)

(assert (=> b!294416 (= res!154805 (= (select (arr!7064 (array!14897 (store (arr!7064 a!3312) i!1256 k0!2524) (size!7416 a!3312))) (index!11068 lt!145993)) k0!2524))))

(declare-fun e!186128 () Bool)

(assert (=> b!294416 (=> res!154805 e!186128)))

(declare-fun e!186130 () Bool)

(assert (=> b!294416 (= e!186130 e!186128)))

(declare-fun e!186126 () SeekEntryResult!2224)

(declare-fun b!294417 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!294417 (= e!186126 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145927 #b00000000000000000000000000000000 mask!3809) k0!2524 (array!14897 (store (arr!7064 a!3312) i!1256 k0!2524) (size!7416 a!3312)) mask!3809))))

(declare-fun b!294418 () Bool)

(declare-fun e!186129 () Bool)

(assert (=> b!294418 (= e!186129 (bvsge (x!29233 lt!145993) #b01111111111111111111111111111110))))

(declare-fun b!294419 () Bool)

(assert (=> b!294419 (and (bvsge (index!11068 lt!145993) #b00000000000000000000000000000000) (bvslt (index!11068 lt!145993) (size!7416 (array!14897 (store (arr!7064 a!3312) i!1256 k0!2524) (size!7416 a!3312)))))))

(declare-fun res!154804 () Bool)

(assert (=> b!294419 (= res!154804 (= (select (arr!7064 (array!14897 (store (arr!7064 a!3312) i!1256 k0!2524) (size!7416 a!3312))) (index!11068 lt!145993)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!294419 (=> res!154804 e!186128)))

(declare-fun b!294420 () Bool)

(assert (=> b!294420 (and (bvsge (index!11068 lt!145993) #b00000000000000000000000000000000) (bvslt (index!11068 lt!145993) (size!7416 (array!14897 (store (arr!7064 a!3312) i!1256 k0!2524) (size!7416 a!3312)))))))

(assert (=> b!294420 (= e!186128 (= (select (arr!7064 (array!14897 (store (arr!7064 a!3312) i!1256 k0!2524) (size!7416 a!3312))) (index!11068 lt!145993)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!294414 () Bool)

(assert (=> b!294414 (= e!186127 e!186126)))

(declare-fun c!47379 () Bool)

(declare-fun lt!145992 () (_ BitVec 64))

(assert (=> b!294414 (= c!47379 (or (= lt!145992 k0!2524) (= (bvadd lt!145992 lt!145992) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!66697 () Bool)

(assert (=> d!66697 e!186129))

(declare-fun c!47377 () Bool)

(assert (=> d!66697 (= c!47377 (and ((_ is Intermediate!2224) lt!145993) (undefined!3036 lt!145993)))))

(assert (=> d!66697 (= lt!145993 e!186127)))

(declare-fun c!47378 () Bool)

(assert (=> d!66697 (= c!47378 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66697 (= lt!145992 (select (arr!7064 (array!14897 (store (arr!7064 a!3312) i!1256 k0!2524) (size!7416 a!3312))) lt!145927))))

(assert (=> d!66697 (validMask!0 mask!3809)))

(assert (=> d!66697 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145927 k0!2524 (array!14897 (store (arr!7064 a!3312) i!1256 k0!2524) (size!7416 a!3312)) mask!3809) lt!145993)))

(declare-fun b!294421 () Bool)

(assert (=> b!294421 (= e!186126 (Intermediate!2224 false lt!145927 #b00000000000000000000000000000000))))

(declare-fun b!294422 () Bool)

(assert (=> b!294422 (= e!186129 e!186130)))

(declare-fun res!154806 () Bool)

(assert (=> b!294422 (= res!154806 (and ((_ is Intermediate!2224) lt!145993) (not (undefined!3036 lt!145993)) (bvslt (x!29233 lt!145993) #b01111111111111111111111111111110) (bvsge (x!29233 lt!145993) #b00000000000000000000000000000000) (bvsge (x!29233 lt!145993) #b00000000000000000000000000000000)))))

(assert (=> b!294422 (=> (not res!154806) (not e!186130))))

(assert (= (and d!66697 c!47378) b!294415))

(assert (= (and d!66697 (not c!47378)) b!294414))

(assert (= (and b!294414 c!47379) b!294421))

(assert (= (and b!294414 (not c!47379)) b!294417))

(assert (= (and d!66697 c!47377) b!294418))

(assert (= (and d!66697 (not c!47377)) b!294422))

(assert (= (and b!294422 res!154806) b!294416))

(assert (= (and b!294416 (not res!154805)) b!294419))

(assert (= (and b!294419 (not res!154804)) b!294420))

(declare-fun m!307873 () Bool)

(assert (=> d!66697 m!307873))

(assert (=> d!66697 m!307777))

(declare-fun m!307875 () Bool)

(assert (=> b!294419 m!307875))

(assert (=> b!294416 m!307875))

(assert (=> b!294420 m!307875))

(declare-fun m!307877 () Bool)

(assert (=> b!294417 m!307877))

(assert (=> b!294417 m!307877))

(declare-fun m!307879 () Bool)

(assert (=> b!294417 m!307879))

(assert (=> b!294260 d!66697))

(declare-fun b!294424 () Bool)

(declare-fun e!186132 () SeekEntryResult!2224)

(assert (=> b!294424 (= e!186132 (Intermediate!2224 true lt!145927 #b00000000000000000000000000000000))))

(declare-fun b!294425 () Bool)

(declare-fun lt!145995 () SeekEntryResult!2224)

(assert (=> b!294425 (and (bvsge (index!11068 lt!145995) #b00000000000000000000000000000000) (bvslt (index!11068 lt!145995) (size!7416 a!3312)))))

(declare-fun res!154809 () Bool)

(assert (=> b!294425 (= res!154809 (= (select (arr!7064 a!3312) (index!11068 lt!145995)) k0!2524))))

(declare-fun e!186133 () Bool)

(assert (=> b!294425 (=> res!154809 e!186133)))

(declare-fun e!186135 () Bool)

(assert (=> b!294425 (= e!186135 e!186133)))

(declare-fun b!294426 () Bool)

(declare-fun e!186131 () SeekEntryResult!2224)

(assert (=> b!294426 (= e!186131 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145927 #b00000000000000000000000000000000 mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun b!294427 () Bool)

(declare-fun e!186134 () Bool)

(assert (=> b!294427 (= e!186134 (bvsge (x!29233 lt!145995) #b01111111111111111111111111111110))))

(declare-fun b!294428 () Bool)

(assert (=> b!294428 (and (bvsge (index!11068 lt!145995) #b00000000000000000000000000000000) (bvslt (index!11068 lt!145995) (size!7416 a!3312)))))

(declare-fun res!154808 () Bool)

(assert (=> b!294428 (= res!154808 (= (select (arr!7064 a!3312) (index!11068 lt!145995)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!294428 (=> res!154808 e!186133)))

(declare-fun b!294429 () Bool)

(assert (=> b!294429 (and (bvsge (index!11068 lt!145995) #b00000000000000000000000000000000) (bvslt (index!11068 lt!145995) (size!7416 a!3312)))))

(assert (=> b!294429 (= e!186133 (= (select (arr!7064 a!3312) (index!11068 lt!145995)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!294423 () Bool)

(assert (=> b!294423 (= e!186132 e!186131)))

(declare-fun c!47382 () Bool)

(declare-fun lt!145994 () (_ BitVec 64))

(assert (=> b!294423 (= c!47382 (or (= lt!145994 k0!2524) (= (bvadd lt!145994 lt!145994) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!66707 () Bool)

(assert (=> d!66707 e!186134))

(declare-fun c!47380 () Bool)

(assert (=> d!66707 (= c!47380 (and ((_ is Intermediate!2224) lt!145995) (undefined!3036 lt!145995)))))

(assert (=> d!66707 (= lt!145995 e!186132)))

(declare-fun c!47381 () Bool)

(assert (=> d!66707 (= c!47381 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66707 (= lt!145994 (select (arr!7064 a!3312) lt!145927))))

(assert (=> d!66707 (validMask!0 mask!3809)))

(assert (=> d!66707 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145927 k0!2524 a!3312 mask!3809) lt!145995)))

(declare-fun b!294430 () Bool)

(assert (=> b!294430 (= e!186131 (Intermediate!2224 false lt!145927 #b00000000000000000000000000000000))))

(declare-fun b!294431 () Bool)

(assert (=> b!294431 (= e!186134 e!186135)))

(declare-fun res!154810 () Bool)

(assert (=> b!294431 (= res!154810 (and ((_ is Intermediate!2224) lt!145995) (not (undefined!3036 lt!145995)) (bvslt (x!29233 lt!145995) #b01111111111111111111111111111110) (bvsge (x!29233 lt!145995) #b00000000000000000000000000000000) (bvsge (x!29233 lt!145995) #b00000000000000000000000000000000)))))

(assert (=> b!294431 (=> (not res!154810) (not e!186135))))

(assert (= (and d!66707 c!47381) b!294424))

(assert (= (and d!66707 (not c!47381)) b!294423))

(assert (= (and b!294423 c!47382) b!294430))

(assert (= (and b!294423 (not c!47382)) b!294426))

(assert (= (and d!66707 c!47380) b!294427))

(assert (= (and d!66707 (not c!47380)) b!294431))

(assert (= (and b!294431 res!154810) b!294425))

(assert (= (and b!294425 (not res!154809)) b!294428))

(assert (= (and b!294428 (not res!154808)) b!294429))

(declare-fun m!307881 () Bool)

(assert (=> d!66707 m!307881))

(assert (=> d!66707 m!307777))

(declare-fun m!307883 () Bool)

(assert (=> b!294428 m!307883))

(assert (=> b!294425 m!307883))

(assert (=> b!294429 m!307883))

(assert (=> b!294426 m!307877))

(assert (=> b!294426 m!307877))

(declare-fun m!307885 () Bool)

(assert (=> b!294426 m!307885))

(assert (=> b!294260 d!66707))

(declare-fun d!66709 () Bool)

(declare-fun lt!146011 () (_ BitVec 32))

(declare-fun lt!146010 () (_ BitVec 32))

(assert (=> d!66709 (= lt!146011 (bvmul (bvxor lt!146010 (bvlshr lt!146010 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66709 (= lt!146010 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66709 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!154811 (let ((h!5301 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29238 (bvmul (bvxor h!5301 (bvlshr h!5301 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29238 (bvlshr x!29238 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!154811 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!154811 #b00000000000000000000000000000000))))))

(assert (=> d!66709 (= (toIndex!0 k0!2524 mask!3809) (bvand (bvxor lt!146011 (bvlshr lt!146011 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!294260 d!66709))

(check-sat (not b!294417) (not d!66697) (not bm!25695) (not b!294299) (not b!294287) (not d!66677) (not b!294296) (not d!66707) (not b!294426) (not b!294323))
(check-sat)
