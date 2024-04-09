; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85874 () Bool)

(assert start!85874)

(declare-fun b!995213 () Bool)

(declare-fun e!561620 () Bool)

(declare-fun e!561619 () Bool)

(assert (=> b!995213 (= e!561620 e!561619)))

(declare-fun res!665731 () Bool)

(assert (=> b!995213 (=> res!665731 e!561619)))

(declare-datatypes ((List!21113 0))(
  ( (Nil!21110) (Cons!21109 (h!22271 (_ BitVec 64)) (t!30122 List!21113)) )
))
(declare-fun contains!5870 (List!21113 (_ BitVec 64)) Bool)

(assert (=> b!995213 (= res!665731 (contains!5870 Nil!21110 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!995214 () Bool)

(declare-fun res!665735 () Bool)

(declare-fun e!561617 () Bool)

(assert (=> b!995214 (=> (not res!665735) (not e!561617))))

(declare-datatypes ((array!62959 0))(
  ( (array!62960 (arr!30311 (Array (_ BitVec 32) (_ BitVec 64))) (size!30814 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62959)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!995214 (= res!665735 (and (= (size!30814 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30814 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30814 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!995215 () Bool)

(declare-fun res!665734 () Bool)

(assert (=> b!995215 (=> (not res!665734) (not e!561620))))

(assert (=> b!995215 (= res!665734 (and (bvsle #b00000000000000000000000000000000 (size!30814 a!3219)) (bvslt (size!30814 a!3219) #b01111111111111111111111111111111)))))

(declare-fun b!995212 () Bool)

(assert (=> b!995212 (= e!561619 (contains!5870 Nil!21110 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!665739 () Bool)

(assert (=> start!85874 (=> (not res!665739) (not e!561617))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85874 (= res!665739 (validMask!0 mask!3464))))

(assert (=> start!85874 e!561617))

(declare-fun array_inv!23301 (array!62959) Bool)

(assert (=> start!85874 (array_inv!23301 a!3219)))

(assert (=> start!85874 true))

(declare-fun b!995216 () Bool)

(declare-fun res!665737 () Bool)

(assert (=> b!995216 (=> (not res!665737) (not e!561620))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62959 (_ BitVec 32)) Bool)

(assert (=> b!995216 (= res!665737 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!995217 () Bool)

(declare-fun res!665733 () Bool)

(assert (=> b!995217 (=> (not res!665733) (not e!561617))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!995217 (= res!665733 (validKeyInArray!0 k0!2224))))

(declare-fun b!995218 () Bool)

(assert (=> b!995218 (= e!561617 e!561620)))

(declare-fun res!665736 () Bool)

(assert (=> b!995218 (=> (not res!665736) (not e!561620))))

(declare-datatypes ((SeekEntryResult!9243 0))(
  ( (MissingZero!9243 (index!39342 (_ BitVec 32))) (Found!9243 (index!39343 (_ BitVec 32))) (Intermediate!9243 (undefined!10055 Bool) (index!39344 (_ BitVec 32)) (x!86813 (_ BitVec 32))) (Undefined!9243) (MissingVacant!9243 (index!39345 (_ BitVec 32))) )
))
(declare-fun lt!440868 () SeekEntryResult!9243)

(assert (=> b!995218 (= res!665736 (or (= lt!440868 (MissingVacant!9243 i!1194)) (= lt!440868 (MissingZero!9243 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62959 (_ BitVec 32)) SeekEntryResult!9243)

(assert (=> b!995218 (= lt!440868 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!995219 () Bool)

(declare-fun res!665732 () Bool)

(assert (=> b!995219 (=> (not res!665732) (not e!561620))))

(declare-fun noDuplicate!1467 (List!21113) Bool)

(assert (=> b!995219 (= res!665732 (noDuplicate!1467 Nil!21110))))

(declare-fun b!995220 () Bool)

(declare-fun res!665738 () Bool)

(assert (=> b!995220 (=> (not res!665738) (not e!561617))))

(assert (=> b!995220 (= res!665738 (validKeyInArray!0 (select (arr!30311 a!3219) j!170)))))

(declare-fun b!995221 () Bool)

(declare-fun res!665740 () Bool)

(assert (=> b!995221 (=> (not res!665740) (not e!561617))))

(declare-fun arrayContainsKey!0 (array!62959 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!995221 (= res!665740 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!85874 res!665739) b!995214))

(assert (= (and b!995214 res!665735) b!995220))

(assert (= (and b!995220 res!665738) b!995217))

(assert (= (and b!995217 res!665733) b!995221))

(assert (= (and b!995221 res!665740) b!995218))

(assert (= (and b!995218 res!665736) b!995216))

(assert (= (and b!995216 res!665737) b!995215))

(assert (= (and b!995215 res!665734) b!995219))

(assert (= (and b!995219 res!665732) b!995213))

(assert (= (and b!995213 (not res!665731)) b!995212))

(declare-fun m!922755 () Bool)

(assert (=> b!995218 m!922755))

(declare-fun m!922757 () Bool)

(assert (=> b!995213 m!922757))

(declare-fun m!922759 () Bool)

(assert (=> start!85874 m!922759))

(declare-fun m!922761 () Bool)

(assert (=> start!85874 m!922761))

(declare-fun m!922763 () Bool)

(assert (=> b!995220 m!922763))

(assert (=> b!995220 m!922763))

(declare-fun m!922765 () Bool)

(assert (=> b!995220 m!922765))

(declare-fun m!922767 () Bool)

(assert (=> b!995216 m!922767))

(declare-fun m!922769 () Bool)

(assert (=> b!995219 m!922769))

(declare-fun m!922771 () Bool)

(assert (=> b!995221 m!922771))

(declare-fun m!922773 () Bool)

(assert (=> b!995212 m!922773))

(declare-fun m!922775 () Bool)

(assert (=> b!995217 m!922775))

(check-sat (not b!995212) (not b!995221) (not b!995220) (not b!995213) (not start!85874) (not b!995217) (not b!995216) (not b!995218) (not b!995219))
(check-sat)
(get-model)

(declare-fun d!118783 () Bool)

(assert (=> d!118783 (= (validKeyInArray!0 k0!2224) (and (not (= k0!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!995217 d!118783))

(declare-fun b!995266 () Bool)

(declare-fun e!561646 () Bool)

(declare-fun e!561647 () Bool)

(assert (=> b!995266 (= e!561646 e!561647)))

(declare-fun lt!440882 () (_ BitVec 64))

(assert (=> b!995266 (= lt!440882 (select (arr!30311 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32910 0))(
  ( (Unit!32911) )
))
(declare-fun lt!440883 () Unit!32910)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!62959 (_ BitVec 64) (_ BitVec 32)) Unit!32910)

(assert (=> b!995266 (= lt!440883 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!440882 #b00000000000000000000000000000000))))

(assert (=> b!995266 (arrayContainsKey!0 a!3219 lt!440882 #b00000000000000000000000000000000)))

(declare-fun lt!440881 () Unit!32910)

(assert (=> b!995266 (= lt!440881 lt!440883)))

(declare-fun res!665782 () Bool)

(assert (=> b!995266 (= res!665782 (= (seekEntryOrOpen!0 (select (arr!30311 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9243 #b00000000000000000000000000000000)))))

(assert (=> b!995266 (=> (not res!665782) (not e!561647))))

(declare-fun b!995267 () Bool)

(declare-fun call!42199 () Bool)

(assert (=> b!995267 (= e!561646 call!42199)))

(declare-fun b!995268 () Bool)

(assert (=> b!995268 (= e!561647 call!42199)))

(declare-fun b!995269 () Bool)

(declare-fun e!561645 () Bool)

(assert (=> b!995269 (= e!561645 e!561646)))

(declare-fun c!100884 () Bool)

(assert (=> b!995269 (= c!100884 (validKeyInArray!0 (select (arr!30311 a!3219) #b00000000000000000000000000000000)))))

(declare-fun bm!42196 () Bool)

(assert (=> bm!42196 (= call!42199 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun d!118785 () Bool)

(declare-fun res!665781 () Bool)

(assert (=> d!118785 (=> res!665781 e!561645)))

(assert (=> d!118785 (= res!665781 (bvsge #b00000000000000000000000000000000 (size!30814 a!3219)))))

(assert (=> d!118785 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!561645)))

(assert (= (and d!118785 (not res!665781)) b!995269))

(assert (= (and b!995269 c!100884) b!995266))

(assert (= (and b!995269 (not c!100884)) b!995267))

(assert (= (and b!995266 res!665782) b!995268))

(assert (= (or b!995268 b!995267) bm!42196))

(declare-fun m!922805 () Bool)

(assert (=> b!995266 m!922805))

(declare-fun m!922807 () Bool)

(assert (=> b!995266 m!922807))

(declare-fun m!922809 () Bool)

(assert (=> b!995266 m!922809))

(assert (=> b!995266 m!922805))

(declare-fun m!922811 () Bool)

(assert (=> b!995266 m!922811))

(assert (=> b!995269 m!922805))

(assert (=> b!995269 m!922805))

(declare-fun m!922813 () Bool)

(assert (=> b!995269 m!922813))

(declare-fun m!922815 () Bool)

(assert (=> bm!42196 m!922815))

(assert (=> b!995216 d!118785))

(declare-fun d!118793 () Bool)

(declare-fun res!665787 () Bool)

(declare-fun e!561652 () Bool)

(assert (=> d!118793 (=> res!665787 e!561652)))

(assert (=> d!118793 (= res!665787 (= (select (arr!30311 a!3219) #b00000000000000000000000000000000) k0!2224))))

(assert (=> d!118793 (= (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000) e!561652)))

(declare-fun b!995274 () Bool)

(declare-fun e!561653 () Bool)

(assert (=> b!995274 (= e!561652 e!561653)))

(declare-fun res!665788 () Bool)

(assert (=> b!995274 (=> (not res!665788) (not e!561653))))

(assert (=> b!995274 (= res!665788 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30814 a!3219)))))

(declare-fun b!995275 () Bool)

(assert (=> b!995275 (= e!561653 (arrayContainsKey!0 a!3219 k0!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!118793 (not res!665787)) b!995274))

(assert (= (and b!995274 res!665788) b!995275))

(assert (=> d!118793 m!922805))

(declare-fun m!922817 () Bool)

(assert (=> b!995275 m!922817))

(assert (=> b!995221 d!118793))

(declare-fun d!118795 () Bool)

(assert (=> d!118795 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!85874 d!118795))

(declare-fun d!118807 () Bool)

(assert (=> d!118807 (= (array_inv!23301 a!3219) (bvsge (size!30814 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!85874 d!118807))

(declare-fun d!118809 () Bool)

(assert (=> d!118809 (= (validKeyInArray!0 (select (arr!30311 a!3219) j!170)) (and (not (= (select (arr!30311 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30311 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!995220 d!118809))

(declare-fun d!118811 () Bool)

(declare-fun res!665801 () Bool)

(declare-fun e!561672 () Bool)

(assert (=> d!118811 (=> res!665801 e!561672)))

(get-info :version)

(assert (=> d!118811 (= res!665801 ((_ is Nil!21110) Nil!21110))))

(assert (=> d!118811 (= (noDuplicate!1467 Nil!21110) e!561672)))

(declare-fun b!995300 () Bool)

(declare-fun e!561673 () Bool)

(assert (=> b!995300 (= e!561672 e!561673)))

(declare-fun res!665802 () Bool)

(assert (=> b!995300 (=> (not res!665802) (not e!561673))))

(assert (=> b!995300 (= res!665802 (not (contains!5870 (t!30122 Nil!21110) (h!22271 Nil!21110))))))

(declare-fun b!995301 () Bool)

(assert (=> b!995301 (= e!561673 (noDuplicate!1467 (t!30122 Nil!21110)))))

(assert (= (and d!118811 (not res!665801)) b!995300))

(assert (= (and b!995300 res!665802) b!995301))

(declare-fun m!922827 () Bool)

(assert (=> b!995300 m!922827))

(declare-fun m!922829 () Bool)

(assert (=> b!995301 m!922829))

(assert (=> b!995219 d!118811))

(declare-fun d!118813 () Bool)

(declare-fun lt!440896 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!484 (List!21113) (InoxSet (_ BitVec 64)))

(assert (=> d!118813 (= lt!440896 (select (content!484 Nil!21110) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!561681 () Bool)

(assert (=> d!118813 (= lt!440896 e!561681)))

(declare-fun res!665807 () Bool)

(assert (=> d!118813 (=> (not res!665807) (not e!561681))))

(assert (=> d!118813 (= res!665807 ((_ is Cons!21109) Nil!21110))))

(assert (=> d!118813 (= (contains!5870 Nil!21110 #b0000000000000000000000000000000000000000000000000000000000000000) lt!440896)))

(declare-fun b!995312 () Bool)

(declare-fun e!561682 () Bool)

(assert (=> b!995312 (= e!561681 e!561682)))

(declare-fun res!665808 () Bool)

(assert (=> b!995312 (=> res!665808 e!561682)))

(assert (=> b!995312 (= res!665808 (= (h!22271 Nil!21110) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!995313 () Bool)

(assert (=> b!995313 (= e!561682 (contains!5870 (t!30122 Nil!21110) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!118813 res!665807) b!995312))

(assert (= (and b!995312 (not res!665808)) b!995313))

(declare-fun m!922845 () Bool)

(assert (=> d!118813 m!922845))

(declare-fun m!922847 () Bool)

(assert (=> d!118813 m!922847))

(declare-fun m!922849 () Bool)

(assert (=> b!995313 m!922849))

(assert (=> b!995213 d!118813))

(declare-fun b!995368 () Bool)

(declare-fun c!100909 () Bool)

(declare-fun lt!440916 () (_ BitVec 64))

(assert (=> b!995368 (= c!100909 (= lt!440916 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!561724 () SeekEntryResult!9243)

(declare-fun e!561722 () SeekEntryResult!9243)

(assert (=> b!995368 (= e!561724 e!561722)))

(declare-fun b!995369 () Bool)

(declare-fun e!561723 () SeekEntryResult!9243)

(assert (=> b!995369 (= e!561723 e!561724)))

(declare-fun lt!440917 () SeekEntryResult!9243)

(assert (=> b!995369 (= lt!440916 (select (arr!30311 a!3219) (index!39344 lt!440917)))))

(declare-fun c!100911 () Bool)

(assert (=> b!995369 (= c!100911 (= lt!440916 k0!2224))))

(declare-fun b!995370 () Bool)

(assert (=> b!995370 (= e!561722 (MissingZero!9243 (index!39344 lt!440917)))))

(declare-fun b!995371 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!62959 (_ BitVec 32)) SeekEntryResult!9243)

(assert (=> b!995371 (= e!561722 (seekKeyOrZeroReturnVacant!0 (x!86813 lt!440917) (index!39344 lt!440917) (index!39344 lt!440917) k0!2224 a!3219 mask!3464))))

(declare-fun b!995372 () Bool)

(assert (=> b!995372 (= e!561723 Undefined!9243)))

(declare-fun d!118817 () Bool)

(declare-fun lt!440915 () SeekEntryResult!9243)

(assert (=> d!118817 (and (or ((_ is Undefined!9243) lt!440915) (not ((_ is Found!9243) lt!440915)) (and (bvsge (index!39343 lt!440915) #b00000000000000000000000000000000) (bvslt (index!39343 lt!440915) (size!30814 a!3219)))) (or ((_ is Undefined!9243) lt!440915) ((_ is Found!9243) lt!440915) (not ((_ is MissingZero!9243) lt!440915)) (and (bvsge (index!39342 lt!440915) #b00000000000000000000000000000000) (bvslt (index!39342 lt!440915) (size!30814 a!3219)))) (or ((_ is Undefined!9243) lt!440915) ((_ is Found!9243) lt!440915) ((_ is MissingZero!9243) lt!440915) (not ((_ is MissingVacant!9243) lt!440915)) (and (bvsge (index!39345 lt!440915) #b00000000000000000000000000000000) (bvslt (index!39345 lt!440915) (size!30814 a!3219)))) (or ((_ is Undefined!9243) lt!440915) (ite ((_ is Found!9243) lt!440915) (= (select (arr!30311 a!3219) (index!39343 lt!440915)) k0!2224) (ite ((_ is MissingZero!9243) lt!440915) (= (select (arr!30311 a!3219) (index!39342 lt!440915)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9243) lt!440915) (= (select (arr!30311 a!3219) (index!39345 lt!440915)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!118817 (= lt!440915 e!561723)))

(declare-fun c!100910 () Bool)

(assert (=> d!118817 (= c!100910 (and ((_ is Intermediate!9243) lt!440917) (undefined!10055 lt!440917)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!62959 (_ BitVec 32)) SeekEntryResult!9243)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!118817 (= lt!440917 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2224 mask!3464) k0!2224 a!3219 mask!3464))))

(assert (=> d!118817 (validMask!0 mask!3464)))

(assert (=> d!118817 (= (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464) lt!440915)))

(declare-fun b!995373 () Bool)

(assert (=> b!995373 (= e!561724 (Found!9243 (index!39344 lt!440917)))))

(assert (= (and d!118817 c!100910) b!995372))

(assert (= (and d!118817 (not c!100910)) b!995369))

(assert (= (and b!995369 c!100911) b!995373))

(assert (= (and b!995369 (not c!100911)) b!995368))

(assert (= (and b!995368 c!100909) b!995370))

(assert (= (and b!995368 (not c!100909)) b!995371))

(declare-fun m!922883 () Bool)

(assert (=> b!995369 m!922883))

(declare-fun m!922885 () Bool)

(assert (=> b!995371 m!922885))

(declare-fun m!922887 () Bool)

(assert (=> d!118817 m!922887))

(declare-fun m!922889 () Bool)

(assert (=> d!118817 m!922889))

(declare-fun m!922891 () Bool)

(assert (=> d!118817 m!922891))

(assert (=> d!118817 m!922759))

(declare-fun m!922893 () Bool)

(assert (=> d!118817 m!922893))

(assert (=> d!118817 m!922887))

(declare-fun m!922895 () Bool)

(assert (=> d!118817 m!922895))

(assert (=> b!995218 d!118817))

(declare-fun d!118837 () Bool)

(declare-fun lt!440918 () Bool)

(assert (=> d!118837 (= lt!440918 (select (content!484 Nil!21110) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!561725 () Bool)

(assert (=> d!118837 (= lt!440918 e!561725)))

(declare-fun res!665833 () Bool)

(assert (=> d!118837 (=> (not res!665833) (not e!561725))))

(assert (=> d!118837 (= res!665833 ((_ is Cons!21109) Nil!21110))))

(assert (=> d!118837 (= (contains!5870 Nil!21110 #b1000000000000000000000000000000000000000000000000000000000000000) lt!440918)))

(declare-fun b!995374 () Bool)

(declare-fun e!561726 () Bool)

(assert (=> b!995374 (= e!561725 e!561726)))

(declare-fun res!665834 () Bool)

(assert (=> b!995374 (=> res!665834 e!561726)))

(assert (=> b!995374 (= res!665834 (= (h!22271 Nil!21110) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!995375 () Bool)

(assert (=> b!995375 (= e!561726 (contains!5870 (t!30122 Nil!21110) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!118837 res!665833) b!995374))

(assert (= (and b!995374 (not res!665834)) b!995375))

(assert (=> d!118837 m!922845))

(declare-fun m!922897 () Bool)

(assert (=> d!118837 m!922897))

(declare-fun m!922899 () Bool)

(assert (=> b!995375 m!922899))

(assert (=> b!995212 d!118837))

(check-sat (not b!995300) (not bm!42196) (not d!118837) (not b!995266) (not b!995375) (not b!995371) (not d!118813) (not b!995269) (not b!995301) (not b!995275) (not b!995313) (not d!118817))
(check-sat)
