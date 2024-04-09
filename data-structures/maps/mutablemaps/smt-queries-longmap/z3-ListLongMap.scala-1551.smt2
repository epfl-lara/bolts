; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29336 () Bool)

(assert start!29336)

(declare-fun b!297084 () Bool)

(declare-fun res!156726 () Bool)

(declare-fun e!187765 () Bool)

(assert (=> b!297084 (=> (not res!156726) (not e!187765))))

(declare-datatypes ((array!15046 0))(
  ( (array!15047 (arr!7130 (Array (_ BitVec 32) (_ BitVec 64))) (size!7482 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15046)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15046 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!297084 (= res!156726 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!297085 () Bool)

(declare-fun e!187766 () Bool)

(declare-fun lt!147688 () Bool)

(declare-datatypes ((SeekEntryResult!2290 0))(
  ( (MissingZero!2290 (index!11330 (_ BitVec 32))) (Found!2290 (index!11331 (_ BitVec 32))) (Intermediate!2290 (undefined!3102 Bool) (index!11332 (_ BitVec 32)) (x!29511 (_ BitVec 32))) (Undefined!2290) (MissingVacant!2290 (index!11333 (_ BitVec 32))) )
))
(declare-fun lt!147689 () SeekEntryResult!2290)

(get-info :version)

(assert (=> b!297085 (= e!187766 (and lt!147688 (not ((_ is Intermediate!2290) lt!147689))))))

(declare-fun lt!147690 () (_ BitVec 32))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun lt!147692 () SeekEntryResult!2290)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15046 (_ BitVec 32)) SeekEntryResult!2290)

(assert (=> b!297085 (= lt!147692 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147690 k0!2524 (array!15047 (store (arr!7130 a!3312) i!1256 k0!2524) (size!7482 a!3312)) mask!3809))))

(assert (=> b!297085 (= lt!147689 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147690 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!297085 (= lt!147690 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!297086 () Bool)

(declare-fun res!156725 () Bool)

(assert (=> b!297086 (=> (not res!156725) (not e!187765))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!297086 (= res!156725 (validKeyInArray!0 k0!2524))))

(declare-fun b!297087 () Bool)

(assert (=> b!297087 (= e!187765 e!187766)))

(declare-fun res!156727 () Bool)

(assert (=> b!297087 (=> (not res!156727) (not e!187766))))

(declare-fun lt!147691 () SeekEntryResult!2290)

(assert (=> b!297087 (= res!156727 (or lt!147688 (= lt!147691 (MissingVacant!2290 i!1256))))))

(assert (=> b!297087 (= lt!147688 (= lt!147691 (MissingZero!2290 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15046 (_ BitVec 32)) SeekEntryResult!2290)

(assert (=> b!297087 (= lt!147691 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun res!156729 () Bool)

(assert (=> start!29336 (=> (not res!156729) (not e!187765))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29336 (= res!156729 (validMask!0 mask!3809))))

(assert (=> start!29336 e!187765))

(assert (=> start!29336 true))

(declare-fun array_inv!5084 (array!15046) Bool)

(assert (=> start!29336 (array_inv!5084 a!3312)))

(declare-fun b!297088 () Bool)

(declare-fun res!156724 () Bool)

(assert (=> b!297088 (=> (not res!156724) (not e!187765))))

(assert (=> b!297088 (= res!156724 (and (= (size!7482 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7482 a!3312))))))

(declare-fun b!297089 () Bool)

(declare-fun res!156728 () Bool)

(assert (=> b!297089 (=> (not res!156728) (not e!187766))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15046 (_ BitVec 32)) Bool)

(assert (=> b!297089 (= res!156728 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!29336 res!156729) b!297088))

(assert (= (and b!297088 res!156724) b!297086))

(assert (= (and b!297086 res!156725) b!297084))

(assert (= (and b!297084 res!156726) b!297087))

(assert (= (and b!297087 res!156727) b!297089))

(assert (= (and b!297089 res!156728) b!297085))

(declare-fun m!309955 () Bool)

(assert (=> start!29336 m!309955))

(declare-fun m!309957 () Bool)

(assert (=> start!29336 m!309957))

(declare-fun m!309959 () Bool)

(assert (=> b!297084 m!309959))

(declare-fun m!309961 () Bool)

(assert (=> b!297086 m!309961))

(declare-fun m!309963 () Bool)

(assert (=> b!297087 m!309963))

(declare-fun m!309965 () Bool)

(assert (=> b!297089 m!309965))

(declare-fun m!309967 () Bool)

(assert (=> b!297085 m!309967))

(declare-fun m!309969 () Bool)

(assert (=> b!297085 m!309969))

(declare-fun m!309971 () Bool)

(assert (=> b!297085 m!309971))

(declare-fun m!309973 () Bool)

(assert (=> b!297085 m!309973))

(check-sat (not start!29336) (not b!297085) (not b!297086) (not b!297089) (not b!297084) (not b!297087))
(check-sat)
(get-model)

(declare-fun d!67041 () Bool)

(assert (=> d!67041 (= (validKeyInArray!0 k0!2524) (and (not (= k0!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!297086 d!67041))

(declare-fun b!297120 () Bool)

(declare-fun e!187783 () SeekEntryResult!2290)

(assert (=> b!297120 (= e!187783 Undefined!2290)))

(declare-fun lt!147716 () SeekEntryResult!2290)

(declare-fun e!187784 () SeekEntryResult!2290)

(declare-fun b!297121 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15046 (_ BitVec 32)) SeekEntryResult!2290)

(assert (=> b!297121 (= e!187784 (seekKeyOrZeroReturnVacant!0 (x!29511 lt!147716) (index!11332 lt!147716) (index!11332 lt!147716) k0!2524 a!3312 mask!3809))))

(declare-fun b!297122 () Bool)

(declare-fun e!187782 () SeekEntryResult!2290)

(assert (=> b!297122 (= e!187782 (Found!2290 (index!11332 lt!147716)))))

(declare-fun b!297123 () Bool)

(declare-fun c!47769 () Bool)

(declare-fun lt!147715 () (_ BitVec 64))

(assert (=> b!297123 (= c!47769 (= lt!147715 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!297123 (= e!187782 e!187784)))

(declare-fun d!67043 () Bool)

(declare-fun lt!147714 () SeekEntryResult!2290)

(assert (=> d!67043 (and (or ((_ is Undefined!2290) lt!147714) (not ((_ is Found!2290) lt!147714)) (and (bvsge (index!11331 lt!147714) #b00000000000000000000000000000000) (bvslt (index!11331 lt!147714) (size!7482 a!3312)))) (or ((_ is Undefined!2290) lt!147714) ((_ is Found!2290) lt!147714) (not ((_ is MissingZero!2290) lt!147714)) (and (bvsge (index!11330 lt!147714) #b00000000000000000000000000000000) (bvslt (index!11330 lt!147714) (size!7482 a!3312)))) (or ((_ is Undefined!2290) lt!147714) ((_ is Found!2290) lt!147714) ((_ is MissingZero!2290) lt!147714) (not ((_ is MissingVacant!2290) lt!147714)) (and (bvsge (index!11333 lt!147714) #b00000000000000000000000000000000) (bvslt (index!11333 lt!147714) (size!7482 a!3312)))) (or ((_ is Undefined!2290) lt!147714) (ite ((_ is Found!2290) lt!147714) (= (select (arr!7130 a!3312) (index!11331 lt!147714)) k0!2524) (ite ((_ is MissingZero!2290) lt!147714) (= (select (arr!7130 a!3312) (index!11330 lt!147714)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2290) lt!147714) (= (select (arr!7130 a!3312) (index!11333 lt!147714)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67043 (= lt!147714 e!187783)))

(declare-fun c!47768 () Bool)

(assert (=> d!67043 (= c!47768 (and ((_ is Intermediate!2290) lt!147716) (undefined!3102 lt!147716)))))

(assert (=> d!67043 (= lt!147716 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(assert (=> d!67043 (validMask!0 mask!3809)))

(assert (=> d!67043 (= (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809) lt!147714)))

(declare-fun b!297124 () Bool)

(assert (=> b!297124 (= e!187784 (MissingZero!2290 (index!11332 lt!147716)))))

(declare-fun b!297125 () Bool)

(assert (=> b!297125 (= e!187783 e!187782)))

(assert (=> b!297125 (= lt!147715 (select (arr!7130 a!3312) (index!11332 lt!147716)))))

(declare-fun c!47767 () Bool)

(assert (=> b!297125 (= c!47767 (= lt!147715 k0!2524))))

(assert (= (and d!67043 c!47768) b!297120))

(assert (= (and d!67043 (not c!47768)) b!297125))

(assert (= (and b!297125 c!47767) b!297122))

(assert (= (and b!297125 (not c!47767)) b!297123))

(assert (= (and b!297123 c!47769) b!297124))

(assert (= (and b!297123 (not c!47769)) b!297121))

(declare-fun m!309995 () Bool)

(assert (=> b!297121 m!309995))

(declare-fun m!309997 () Bool)

(assert (=> d!67043 m!309997))

(declare-fun m!309999 () Bool)

(assert (=> d!67043 m!309999))

(assert (=> d!67043 m!309955))

(declare-fun m!310001 () Bool)

(assert (=> d!67043 m!310001))

(assert (=> d!67043 m!309973))

(assert (=> d!67043 m!309973))

(declare-fun m!310003 () Bool)

(assert (=> d!67043 m!310003))

(declare-fun m!310005 () Bool)

(assert (=> b!297125 m!310005))

(assert (=> b!297087 d!67043))

(declare-fun d!67051 () Bool)

(assert (=> d!67051 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29336 d!67051))

(declare-fun d!67059 () Bool)

(assert (=> d!67059 (= (array_inv!5084 a!3312) (bvsge (size!7482 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29336 d!67059))

(declare-fun d!67061 () Bool)

(declare-fun res!156766 () Bool)

(declare-fun e!187820 () Bool)

(assert (=> d!67061 (=> res!156766 e!187820)))

(assert (=> d!67061 (= res!156766 (bvsge #b00000000000000000000000000000000 (size!7482 a!3312)))))

(assert (=> d!67061 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!187820)))

(declare-fun b!297188 () Bool)

(declare-fun e!187821 () Bool)

(declare-fun call!25752 () Bool)

(assert (=> b!297188 (= e!187821 call!25752)))

(declare-fun b!297189 () Bool)

(declare-fun e!187822 () Bool)

(assert (=> b!297189 (= e!187822 e!187821)))

(declare-fun lt!147748 () (_ BitVec 64))

(assert (=> b!297189 (= lt!147748 (select (arr!7130 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9245 0))(
  ( (Unit!9246) )
))
(declare-fun lt!147747 () Unit!9245)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15046 (_ BitVec 64) (_ BitVec 32)) Unit!9245)

(assert (=> b!297189 (= lt!147747 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!147748 #b00000000000000000000000000000000))))

(assert (=> b!297189 (arrayContainsKey!0 a!3312 lt!147748 #b00000000000000000000000000000000)))

(declare-fun lt!147746 () Unit!9245)

(assert (=> b!297189 (= lt!147746 lt!147747)))

(declare-fun res!156765 () Bool)

(assert (=> b!297189 (= res!156765 (= (seekEntryOrOpen!0 (select (arr!7130 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2290 #b00000000000000000000000000000000)))))

(assert (=> b!297189 (=> (not res!156765) (not e!187821))))

(declare-fun b!297190 () Bool)

(assert (=> b!297190 (= e!187822 call!25752)))

(declare-fun b!297191 () Bool)

(assert (=> b!297191 (= e!187820 e!187822)))

(declare-fun c!47793 () Bool)

(assert (=> b!297191 (= c!47793 (validKeyInArray!0 (select (arr!7130 a!3312) #b00000000000000000000000000000000)))))

(declare-fun bm!25749 () Bool)

(assert (=> bm!25749 (= call!25752 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(assert (= (and d!67061 (not res!156766)) b!297191))

(assert (= (and b!297191 c!47793) b!297189))

(assert (= (and b!297191 (not c!47793)) b!297190))

(assert (= (and b!297189 res!156765) b!297188))

(assert (= (or b!297188 b!297190) bm!25749))

(declare-fun m!310033 () Bool)

(assert (=> b!297189 m!310033))

(declare-fun m!310035 () Bool)

(assert (=> b!297189 m!310035))

(declare-fun m!310037 () Bool)

(assert (=> b!297189 m!310037))

(assert (=> b!297189 m!310033))

(declare-fun m!310039 () Bool)

(assert (=> b!297189 m!310039))

(assert (=> b!297191 m!310033))

(assert (=> b!297191 m!310033))

(declare-fun m!310041 () Bool)

(assert (=> b!297191 m!310041))

(declare-fun m!310043 () Bool)

(assert (=> bm!25749 m!310043))

(assert (=> b!297089 d!67061))

(declare-fun d!67065 () Bool)

(declare-fun res!156771 () Bool)

(declare-fun e!187827 () Bool)

(assert (=> d!67065 (=> res!156771 e!187827)))

(assert (=> d!67065 (= res!156771 (= (select (arr!7130 a!3312) #b00000000000000000000000000000000) k0!2524))))

(assert (=> d!67065 (= (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000) e!187827)))

(declare-fun b!297196 () Bool)

(declare-fun e!187828 () Bool)

(assert (=> b!297196 (= e!187827 e!187828)))

(declare-fun res!156772 () Bool)

(assert (=> b!297196 (=> (not res!156772) (not e!187828))))

(assert (=> b!297196 (= res!156772 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7482 a!3312)))))

(declare-fun b!297197 () Bool)

(assert (=> b!297197 (= e!187828 (arrayContainsKey!0 a!3312 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67065 (not res!156771)) b!297196))

(assert (= (and b!297196 res!156772) b!297197))

(assert (=> d!67065 m!310033))

(declare-fun m!310045 () Bool)

(assert (=> b!297197 m!310045))

(assert (=> b!297084 d!67065))

(declare-fun b!297284 () Bool)

(declare-fun e!187883 () SeekEntryResult!2290)

(assert (=> b!297284 (= e!187883 (Intermediate!2290 false lt!147690 #b00000000000000000000000000000000))))

(declare-fun b!297285 () Bool)

(declare-fun lt!147782 () SeekEntryResult!2290)

(assert (=> b!297285 (and (bvsge (index!11332 lt!147782) #b00000000000000000000000000000000) (bvslt (index!11332 lt!147782) (size!7482 (array!15047 (store (arr!7130 a!3312) i!1256 k0!2524) (size!7482 a!3312)))))))

(declare-fun res!156802 () Bool)

(assert (=> b!297285 (= res!156802 (= (select (arr!7130 (array!15047 (store (arr!7130 a!3312) i!1256 k0!2524) (size!7482 a!3312))) (index!11332 lt!147782)) k0!2524))))

(declare-fun e!187881 () Bool)

(assert (=> b!297285 (=> res!156802 e!187881)))

(declare-fun e!187884 () Bool)

(assert (=> b!297285 (= e!187884 e!187881)))

(declare-fun b!297286 () Bool)

(declare-fun e!187880 () SeekEntryResult!2290)

(assert (=> b!297286 (= e!187880 (Intermediate!2290 true lt!147690 #b00000000000000000000000000000000))))

(declare-fun b!297287 () Bool)

(assert (=> b!297287 (= e!187880 e!187883)))

(declare-fun c!47825 () Bool)

(declare-fun lt!147783 () (_ BitVec 64))

(assert (=> b!297287 (= c!47825 (or (= lt!147783 k0!2524) (= (bvadd lt!147783 lt!147783) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!297288 () Bool)

(declare-fun e!187882 () Bool)

(assert (=> b!297288 (= e!187882 e!187884)))

(declare-fun res!156803 () Bool)

(assert (=> b!297288 (= res!156803 (and ((_ is Intermediate!2290) lt!147782) (not (undefined!3102 lt!147782)) (bvslt (x!29511 lt!147782) #b01111111111111111111111111111110) (bvsge (x!29511 lt!147782) #b00000000000000000000000000000000) (bvsge (x!29511 lt!147782) #b00000000000000000000000000000000)))))

(assert (=> b!297288 (=> (not res!156803) (not e!187884))))

(declare-fun b!297289 () Bool)

(assert (=> b!297289 (= e!187882 (bvsge (x!29511 lt!147782) #b01111111111111111111111111111110))))

(declare-fun b!297290 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!297290 (= e!187883 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!147690 #b00000000000000000000000000000000 mask!3809) k0!2524 (array!15047 (store (arr!7130 a!3312) i!1256 k0!2524) (size!7482 a!3312)) mask!3809))))

(declare-fun d!67067 () Bool)

(assert (=> d!67067 e!187882))

(declare-fun c!47823 () Bool)

(assert (=> d!67067 (= c!47823 (and ((_ is Intermediate!2290) lt!147782) (undefined!3102 lt!147782)))))

(assert (=> d!67067 (= lt!147782 e!187880)))

(declare-fun c!47824 () Bool)

(assert (=> d!67067 (= c!47824 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!67067 (= lt!147783 (select (arr!7130 (array!15047 (store (arr!7130 a!3312) i!1256 k0!2524) (size!7482 a!3312))) lt!147690))))

(assert (=> d!67067 (validMask!0 mask!3809)))

(assert (=> d!67067 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147690 k0!2524 (array!15047 (store (arr!7130 a!3312) i!1256 k0!2524) (size!7482 a!3312)) mask!3809) lt!147782)))

(declare-fun b!297291 () Bool)

(assert (=> b!297291 (and (bvsge (index!11332 lt!147782) #b00000000000000000000000000000000) (bvslt (index!11332 lt!147782) (size!7482 (array!15047 (store (arr!7130 a!3312) i!1256 k0!2524) (size!7482 a!3312)))))))

(declare-fun res!156804 () Bool)

(assert (=> b!297291 (= res!156804 (= (select (arr!7130 (array!15047 (store (arr!7130 a!3312) i!1256 k0!2524) (size!7482 a!3312))) (index!11332 lt!147782)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!297291 (=> res!156804 e!187881)))

(declare-fun b!297292 () Bool)

(assert (=> b!297292 (and (bvsge (index!11332 lt!147782) #b00000000000000000000000000000000) (bvslt (index!11332 lt!147782) (size!7482 (array!15047 (store (arr!7130 a!3312) i!1256 k0!2524) (size!7482 a!3312)))))))

(assert (=> b!297292 (= e!187881 (= (select (arr!7130 (array!15047 (store (arr!7130 a!3312) i!1256 k0!2524) (size!7482 a!3312))) (index!11332 lt!147782)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!67067 c!47824) b!297286))

(assert (= (and d!67067 (not c!47824)) b!297287))

(assert (= (and b!297287 c!47825) b!297284))

(assert (= (and b!297287 (not c!47825)) b!297290))

(assert (= (and d!67067 c!47823) b!297289))

(assert (= (and d!67067 (not c!47823)) b!297288))

(assert (= (and b!297288 res!156803) b!297285))

(assert (= (and b!297285 (not res!156802)) b!297291))

(assert (= (and b!297291 (not res!156804)) b!297292))

(declare-fun m!310077 () Bool)

(assert (=> b!297291 m!310077))

(assert (=> b!297285 m!310077))

(declare-fun m!310079 () Bool)

(assert (=> d!67067 m!310079))

(assert (=> d!67067 m!309955))

(declare-fun m!310081 () Bool)

(assert (=> b!297290 m!310081))

(assert (=> b!297290 m!310081))

(declare-fun m!310083 () Bool)

(assert (=> b!297290 m!310083))

(assert (=> b!297292 m!310077))

(assert (=> b!297085 d!67067))

(declare-fun b!297293 () Bool)

(declare-fun e!187888 () SeekEntryResult!2290)

(assert (=> b!297293 (= e!187888 (Intermediate!2290 false lt!147690 #b00000000000000000000000000000000))))

(declare-fun b!297294 () Bool)

(declare-fun lt!147784 () SeekEntryResult!2290)

(assert (=> b!297294 (and (bvsge (index!11332 lt!147784) #b00000000000000000000000000000000) (bvslt (index!11332 lt!147784) (size!7482 a!3312)))))

(declare-fun res!156805 () Bool)

(assert (=> b!297294 (= res!156805 (= (select (arr!7130 a!3312) (index!11332 lt!147784)) k0!2524))))

(declare-fun e!187886 () Bool)

(assert (=> b!297294 (=> res!156805 e!187886)))

(declare-fun e!187889 () Bool)

(assert (=> b!297294 (= e!187889 e!187886)))

(declare-fun b!297295 () Bool)

(declare-fun e!187885 () SeekEntryResult!2290)

(assert (=> b!297295 (= e!187885 (Intermediate!2290 true lt!147690 #b00000000000000000000000000000000))))

(declare-fun b!297296 () Bool)

(assert (=> b!297296 (= e!187885 e!187888)))

(declare-fun c!47828 () Bool)

(declare-fun lt!147785 () (_ BitVec 64))

(assert (=> b!297296 (= c!47828 (or (= lt!147785 k0!2524) (= (bvadd lt!147785 lt!147785) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!297297 () Bool)

(declare-fun e!187887 () Bool)

(assert (=> b!297297 (= e!187887 e!187889)))

(declare-fun res!156806 () Bool)

(assert (=> b!297297 (= res!156806 (and ((_ is Intermediate!2290) lt!147784) (not (undefined!3102 lt!147784)) (bvslt (x!29511 lt!147784) #b01111111111111111111111111111110) (bvsge (x!29511 lt!147784) #b00000000000000000000000000000000) (bvsge (x!29511 lt!147784) #b00000000000000000000000000000000)))))

(assert (=> b!297297 (=> (not res!156806) (not e!187889))))

(declare-fun b!297298 () Bool)

(assert (=> b!297298 (= e!187887 (bvsge (x!29511 lt!147784) #b01111111111111111111111111111110))))

(declare-fun b!297299 () Bool)

(assert (=> b!297299 (= e!187888 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!147690 #b00000000000000000000000000000000 mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun d!67079 () Bool)

(assert (=> d!67079 e!187887))

(declare-fun c!47826 () Bool)

(assert (=> d!67079 (= c!47826 (and ((_ is Intermediate!2290) lt!147784) (undefined!3102 lt!147784)))))

(assert (=> d!67079 (= lt!147784 e!187885)))

(declare-fun c!47827 () Bool)

(assert (=> d!67079 (= c!47827 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!67079 (= lt!147785 (select (arr!7130 a!3312) lt!147690))))

(assert (=> d!67079 (validMask!0 mask!3809)))

(assert (=> d!67079 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147690 k0!2524 a!3312 mask!3809) lt!147784)))

(declare-fun b!297300 () Bool)

(assert (=> b!297300 (and (bvsge (index!11332 lt!147784) #b00000000000000000000000000000000) (bvslt (index!11332 lt!147784) (size!7482 a!3312)))))

(declare-fun res!156807 () Bool)

(assert (=> b!297300 (= res!156807 (= (select (arr!7130 a!3312) (index!11332 lt!147784)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!297300 (=> res!156807 e!187886)))

(declare-fun b!297301 () Bool)

(assert (=> b!297301 (and (bvsge (index!11332 lt!147784) #b00000000000000000000000000000000) (bvslt (index!11332 lt!147784) (size!7482 a!3312)))))

(assert (=> b!297301 (= e!187886 (= (select (arr!7130 a!3312) (index!11332 lt!147784)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!67079 c!47827) b!297295))

(assert (= (and d!67079 (not c!47827)) b!297296))

(assert (= (and b!297296 c!47828) b!297293))

(assert (= (and b!297296 (not c!47828)) b!297299))

(assert (= (and d!67079 c!47826) b!297298))

(assert (= (and d!67079 (not c!47826)) b!297297))

(assert (= (and b!297297 res!156806) b!297294))

(assert (= (and b!297294 (not res!156805)) b!297300))

(assert (= (and b!297300 (not res!156807)) b!297301))

(declare-fun m!310085 () Bool)

(assert (=> b!297300 m!310085))

(assert (=> b!297294 m!310085))

(declare-fun m!310089 () Bool)

(assert (=> d!67079 m!310089))

(assert (=> d!67079 m!309955))

(assert (=> b!297299 m!310081))

(assert (=> b!297299 m!310081))

(declare-fun m!310095 () Bool)

(assert (=> b!297299 m!310095))

(assert (=> b!297301 m!310085))

(assert (=> b!297085 d!67079))

(declare-fun d!67081 () Bool)

(declare-fun lt!147794 () (_ BitVec 32))

(declare-fun lt!147793 () (_ BitVec 32))

(assert (=> d!67081 (= lt!147794 (bvmul (bvxor lt!147793 (bvlshr lt!147793 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67081 (= lt!147793 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67081 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!156810 (let ((h!5320 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29518 (bvmul (bvxor h!5320 (bvlshr h!5320 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29518 (bvlshr x!29518 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!156810 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!156810 #b00000000000000000000000000000000))))))

(assert (=> d!67081 (= (toIndex!0 k0!2524 mask!3809) (bvand (bvxor lt!147794 (bvlshr lt!147794 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!297085 d!67081))

(check-sat (not d!67067) (not b!297191) (not b!297121) (not bm!25749) (not b!297290) (not d!67079) (not b!297197) (not b!297189) (not d!67043) (not b!297299))
(check-sat)
