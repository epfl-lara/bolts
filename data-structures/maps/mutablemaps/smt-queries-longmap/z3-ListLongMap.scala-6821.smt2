; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85784 () Bool)

(assert start!85784)

(declare-fun b!994828 () Bool)

(declare-fun res!665495 () Bool)

(declare-fun e!561398 () Bool)

(assert (=> b!994828 (=> (not res!665495) (not e!561398))))

(declare-datatypes ((array!62941 0))(
  ( (array!62942 (arr!30305 (Array (_ BitVec 32) (_ BitVec 64))) (size!30808 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62941)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994828 (= res!665495 (and (= (size!30808 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30808 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30808 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!994829 () Bool)

(declare-fun res!665492 () Bool)

(declare-fun e!561396 () Bool)

(assert (=> b!994829 (=> (not res!665492) (not e!561396))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62941 (_ BitVec 32)) Bool)

(assert (=> b!994829 (= res!665492 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!994830 () Bool)

(declare-fun res!665496 () Bool)

(assert (=> b!994830 (=> (not res!665496) (not e!561398))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!62941 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994830 (= res!665496 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!994831 () Bool)

(assert (=> b!994831 (= e!561396 (and (bvsle #b00000000000000000000000000000000 (size!30808 a!3219)) (bvsge (size!30808 a!3219) #b01111111111111111111111111111111)))))

(declare-fun b!994832 () Bool)

(declare-fun res!665497 () Bool)

(assert (=> b!994832 (=> (not res!665497) (not e!561398))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994832 (= res!665497 (validKeyInArray!0 (select (arr!30305 a!3219) j!170)))))

(declare-fun b!994833 () Bool)

(declare-fun res!665494 () Bool)

(assert (=> b!994833 (=> (not res!665494) (not e!561398))))

(assert (=> b!994833 (= res!665494 (validKeyInArray!0 k0!2224))))

(declare-fun res!665493 () Bool)

(assert (=> start!85784 (=> (not res!665493) (not e!561398))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85784 (= res!665493 (validMask!0 mask!3464))))

(assert (=> start!85784 e!561398))

(declare-fun array_inv!23295 (array!62941) Bool)

(assert (=> start!85784 (array_inv!23295 a!3219)))

(assert (=> start!85784 true))

(declare-fun b!994834 () Bool)

(assert (=> b!994834 (= e!561398 e!561396)))

(declare-fun res!665491 () Bool)

(assert (=> b!994834 (=> (not res!665491) (not e!561396))))

(declare-datatypes ((SeekEntryResult!9237 0))(
  ( (MissingZero!9237 (index!39318 (_ BitVec 32))) (Found!9237 (index!39319 (_ BitVec 32))) (Intermediate!9237 (undefined!10049 Bool) (index!39320 (_ BitVec 32)) (x!86791 (_ BitVec 32))) (Undefined!9237) (MissingVacant!9237 (index!39321 (_ BitVec 32))) )
))
(declare-fun lt!440742 () SeekEntryResult!9237)

(assert (=> b!994834 (= res!665491 (or (= lt!440742 (MissingVacant!9237 i!1194)) (= lt!440742 (MissingZero!9237 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62941 (_ BitVec 32)) SeekEntryResult!9237)

(assert (=> b!994834 (= lt!440742 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(assert (= (and start!85784 res!665493) b!994828))

(assert (= (and b!994828 res!665495) b!994832))

(assert (= (and b!994832 res!665497) b!994833))

(assert (= (and b!994833 res!665494) b!994830))

(assert (= (and b!994830 res!665496) b!994834))

(assert (= (and b!994834 res!665491) b!994829))

(assert (= (and b!994829 res!665492) b!994831))

(declare-fun m!922467 () Bool)

(assert (=> b!994834 m!922467))

(declare-fun m!922469 () Bool)

(assert (=> b!994829 m!922469))

(declare-fun m!922471 () Bool)

(assert (=> start!85784 m!922471))

(declare-fun m!922473 () Bool)

(assert (=> start!85784 m!922473))

(declare-fun m!922475 () Bool)

(assert (=> b!994832 m!922475))

(assert (=> b!994832 m!922475))

(declare-fun m!922477 () Bool)

(assert (=> b!994832 m!922477))

(declare-fun m!922479 () Bool)

(assert (=> b!994833 m!922479))

(declare-fun m!922481 () Bool)

(assert (=> b!994830 m!922481))

(check-sat (not start!85784) (not b!994830) (not b!994829) (not b!994833) (not b!994834) (not b!994832))
(check-sat)
(get-model)

(declare-fun d!118689 () Bool)

(declare-fun res!665523 () Bool)

(declare-fun e!561412 () Bool)

(assert (=> d!118689 (=> res!665523 e!561412)))

(assert (=> d!118689 (= res!665523 (= (select (arr!30305 a!3219) #b00000000000000000000000000000000) k0!2224))))

(assert (=> d!118689 (= (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000) e!561412)))

(declare-fun b!994860 () Bool)

(declare-fun e!561413 () Bool)

(assert (=> b!994860 (= e!561412 e!561413)))

(declare-fun res!665524 () Bool)

(assert (=> b!994860 (=> (not res!665524) (not e!561413))))

(assert (=> b!994860 (= res!665524 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30808 a!3219)))))

(declare-fun b!994861 () Bool)

(assert (=> b!994861 (= e!561413 (arrayContainsKey!0 a!3219 k0!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!118689 (not res!665523)) b!994860))

(assert (= (and b!994860 res!665524) b!994861))

(declare-fun m!922499 () Bool)

(assert (=> d!118689 m!922499))

(declare-fun m!922501 () Bool)

(assert (=> b!994861 m!922501))

(assert (=> b!994830 d!118689))

(declare-fun d!118691 () Bool)

(assert (=> d!118691 (= (validKeyInArray!0 (select (arr!30305 a!3219) j!170)) (and (not (= (select (arr!30305 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30305 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!994832 d!118691))

(declare-fun d!118693 () Bool)

(assert (=> d!118693 (= (validKeyInArray!0 k0!2224) (and (not (= k0!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!994833 d!118693))

(declare-fun d!118695 () Bool)

(assert (=> d!118695 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!85784 d!118695))

(declare-fun d!118701 () Bool)

(assert (=> d!118701 (= (array_inv!23295 a!3219) (bvsge (size!30808 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!85784 d!118701))

(declare-fun d!118705 () Bool)

(declare-fun res!665541 () Bool)

(declare-fun e!561434 () Bool)

(assert (=> d!118705 (=> res!665541 e!561434)))

(assert (=> d!118705 (= res!665541 (bvsge #b00000000000000000000000000000000 (size!30808 a!3219)))))

(assert (=> d!118705 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!561434)))

(declare-fun b!994882 () Bool)

(declare-fun e!561433 () Bool)

(declare-fun call!42181 () Bool)

(assert (=> b!994882 (= e!561433 call!42181)))

(declare-fun b!994883 () Bool)

(declare-fun e!561432 () Bool)

(assert (=> b!994883 (= e!561434 e!561432)))

(declare-fun c!100812 () Bool)

(assert (=> b!994883 (= c!100812 (validKeyInArray!0 (select (arr!30305 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!994884 () Bool)

(assert (=> b!994884 (= e!561432 e!561433)))

(declare-fun lt!440754 () (_ BitVec 64))

(assert (=> b!994884 (= lt!440754 (select (arr!30305 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32902 0))(
  ( (Unit!32903) )
))
(declare-fun lt!440752 () Unit!32902)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!62941 (_ BitVec 64) (_ BitVec 32)) Unit!32902)

(assert (=> b!994884 (= lt!440752 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!440754 #b00000000000000000000000000000000))))

(assert (=> b!994884 (arrayContainsKey!0 a!3219 lt!440754 #b00000000000000000000000000000000)))

(declare-fun lt!440753 () Unit!32902)

(assert (=> b!994884 (= lt!440753 lt!440752)))

(declare-fun res!665542 () Bool)

(assert (=> b!994884 (= res!665542 (= (seekEntryOrOpen!0 (select (arr!30305 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9237 #b00000000000000000000000000000000)))))

(assert (=> b!994884 (=> (not res!665542) (not e!561433))))

(declare-fun b!994885 () Bool)

(assert (=> b!994885 (= e!561432 call!42181)))

(declare-fun bm!42178 () Bool)

(assert (=> bm!42178 (= call!42181 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(assert (= (and d!118705 (not res!665541)) b!994883))

(assert (= (and b!994883 c!100812) b!994884))

(assert (= (and b!994883 (not c!100812)) b!994885))

(assert (= (and b!994884 res!665542) b!994882))

(assert (= (or b!994882 b!994885) bm!42178))

(assert (=> b!994883 m!922499))

(assert (=> b!994883 m!922499))

(declare-fun m!922511 () Bool)

(assert (=> b!994883 m!922511))

(assert (=> b!994884 m!922499))

(declare-fun m!922513 () Bool)

(assert (=> b!994884 m!922513))

(declare-fun m!922515 () Bool)

(assert (=> b!994884 m!922515))

(assert (=> b!994884 m!922499))

(declare-fun m!922517 () Bool)

(assert (=> b!994884 m!922517))

(declare-fun m!922519 () Bool)

(assert (=> bm!42178 m!922519))

(assert (=> b!994829 d!118705))

(declare-fun b!994922 () Bool)

(declare-fun e!561460 () SeekEntryResult!9237)

(declare-fun e!561459 () SeekEntryResult!9237)

(assert (=> b!994922 (= e!561460 e!561459)))

(declare-fun lt!440779 () (_ BitVec 64))

(declare-fun lt!440780 () SeekEntryResult!9237)

(assert (=> b!994922 (= lt!440779 (select (arr!30305 a!3219) (index!39320 lt!440780)))))

(declare-fun c!100827 () Bool)

(assert (=> b!994922 (= c!100827 (= lt!440779 k0!2224))))

(declare-fun b!994923 () Bool)

(assert (=> b!994923 (= e!561459 (Found!9237 (index!39320 lt!440780)))))

(declare-fun b!994924 () Bool)

(declare-fun e!561461 () SeekEntryResult!9237)

(assert (=> b!994924 (= e!561461 (MissingZero!9237 (index!39320 lt!440780)))))

(declare-fun b!994925 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!62941 (_ BitVec 32)) SeekEntryResult!9237)

(assert (=> b!994925 (= e!561461 (seekKeyOrZeroReturnVacant!0 (x!86791 lt!440780) (index!39320 lt!440780) (index!39320 lt!440780) k0!2224 a!3219 mask!3464))))

(declare-fun b!994926 () Bool)

(assert (=> b!994926 (= e!561460 Undefined!9237)))

(declare-fun b!994927 () Bool)

(declare-fun c!100825 () Bool)

(assert (=> b!994927 (= c!100825 (= lt!440779 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!994927 (= e!561459 e!561461)))

(declare-fun d!118719 () Bool)

(declare-fun lt!440781 () SeekEntryResult!9237)

(get-info :version)

(assert (=> d!118719 (and (or ((_ is Undefined!9237) lt!440781) (not ((_ is Found!9237) lt!440781)) (and (bvsge (index!39319 lt!440781) #b00000000000000000000000000000000) (bvslt (index!39319 lt!440781) (size!30808 a!3219)))) (or ((_ is Undefined!9237) lt!440781) ((_ is Found!9237) lt!440781) (not ((_ is MissingZero!9237) lt!440781)) (and (bvsge (index!39318 lt!440781) #b00000000000000000000000000000000) (bvslt (index!39318 lt!440781) (size!30808 a!3219)))) (or ((_ is Undefined!9237) lt!440781) ((_ is Found!9237) lt!440781) ((_ is MissingZero!9237) lt!440781) (not ((_ is MissingVacant!9237) lt!440781)) (and (bvsge (index!39321 lt!440781) #b00000000000000000000000000000000) (bvslt (index!39321 lt!440781) (size!30808 a!3219)))) (or ((_ is Undefined!9237) lt!440781) (ite ((_ is Found!9237) lt!440781) (= (select (arr!30305 a!3219) (index!39319 lt!440781)) k0!2224) (ite ((_ is MissingZero!9237) lt!440781) (= (select (arr!30305 a!3219) (index!39318 lt!440781)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9237) lt!440781) (= (select (arr!30305 a!3219) (index!39321 lt!440781)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!118719 (= lt!440781 e!561460)))

(declare-fun c!100826 () Bool)

(assert (=> d!118719 (= c!100826 (and ((_ is Intermediate!9237) lt!440780) (undefined!10049 lt!440780)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!62941 (_ BitVec 32)) SeekEntryResult!9237)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!118719 (= lt!440780 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2224 mask!3464) k0!2224 a!3219 mask!3464))))

(assert (=> d!118719 (validMask!0 mask!3464)))

(assert (=> d!118719 (= (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464) lt!440781)))

(assert (= (and d!118719 c!100826) b!994926))

(assert (= (and d!118719 (not c!100826)) b!994922))

(assert (= (and b!994922 c!100827) b!994923))

(assert (= (and b!994922 (not c!100827)) b!994927))

(assert (= (and b!994927 c!100825) b!994924))

(assert (= (and b!994927 (not c!100825)) b!994925))

(declare-fun m!922541 () Bool)

(assert (=> b!994922 m!922541))

(declare-fun m!922543 () Bool)

(assert (=> b!994925 m!922543))

(declare-fun m!922545 () Bool)

(assert (=> d!118719 m!922545))

(assert (=> d!118719 m!922471))

(declare-fun m!922547 () Bool)

(assert (=> d!118719 m!922547))

(declare-fun m!922549 () Bool)

(assert (=> d!118719 m!922549))

(assert (=> d!118719 m!922549))

(declare-fun m!922551 () Bool)

(assert (=> d!118719 m!922551))

(declare-fun m!922553 () Bool)

(assert (=> d!118719 m!922553))

(assert (=> b!994834 d!118719))

(check-sat (not b!994925) (not b!994884) (not b!994883) (not bm!42178) (not d!118719) (not b!994861))
(check-sat)
