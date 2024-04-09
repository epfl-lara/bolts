; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85826 () Bool)

(assert start!85826)

(declare-fun b!995004 () Bool)

(declare-fun e!561496 () Bool)

(declare-datatypes ((List!21110 0))(
  ( (Nil!21107) (Cons!21106 (h!22268 (_ BitVec 64)) (t!30119 List!21110)) )
))
(declare-fun noDuplicate!1464 (List!21110) Bool)

(assert (=> b!995004 (= e!561496 (not (noDuplicate!1464 Nil!21107)))))

(declare-fun b!995005 () Bool)

(declare-fun res!665600 () Bool)

(declare-fun e!561495 () Bool)

(assert (=> b!995005 (=> (not res!665600) (not e!561495))))

(declare-datatypes ((array!62950 0))(
  ( (array!62951 (arr!30308 (Array (_ BitVec 32) (_ BitVec 64))) (size!30811 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62950)

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!62950 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!995005 (= res!665600 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun res!665596 () Bool)

(assert (=> start!85826 (=> (not res!665596) (not e!561495))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85826 (= res!665596 (validMask!0 mask!3464))))

(assert (=> start!85826 e!561495))

(declare-fun array_inv!23298 (array!62950) Bool)

(assert (=> start!85826 (array_inv!23298 a!3219)))

(assert (=> start!85826 true))

(declare-fun b!995006 () Bool)

(assert (=> b!995006 (= e!561495 e!561496)))

(declare-fun res!665599 () Bool)

(assert (=> b!995006 (=> (not res!665599) (not e!561496))))

(declare-datatypes ((SeekEntryResult!9240 0))(
  ( (MissingZero!9240 (index!39330 (_ BitVec 32))) (Found!9240 (index!39331 (_ BitVec 32))) (Intermediate!9240 (undefined!10052 Bool) (index!39332 (_ BitVec 32)) (x!86802 (_ BitVec 32))) (Undefined!9240) (MissingVacant!9240 (index!39333 (_ BitVec 32))) )
))
(declare-fun lt!440805 () SeekEntryResult!9240)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!995006 (= res!665599 (or (= lt!440805 (MissingVacant!9240 i!1194)) (= lt!440805 (MissingZero!9240 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62950 (_ BitVec 32)) SeekEntryResult!9240)

(assert (=> b!995006 (= lt!440805 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!995007 () Bool)

(declare-fun res!665601 () Bool)

(assert (=> b!995007 (=> (not res!665601) (not e!561496))))

(assert (=> b!995007 (= res!665601 (and (bvsle #b00000000000000000000000000000000 (size!30811 a!3219)) (bvslt (size!30811 a!3219) #b01111111111111111111111111111111)))))

(declare-fun b!995008 () Bool)

(declare-fun res!665598 () Bool)

(assert (=> b!995008 (=> (not res!665598) (not e!561495))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!995008 (= res!665598 (and (= (size!30811 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30811 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30811 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!995009 () Bool)

(declare-fun res!665595 () Bool)

(assert (=> b!995009 (=> (not res!665595) (not e!561496))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62950 (_ BitVec 32)) Bool)

(assert (=> b!995009 (= res!665595 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!995010 () Bool)

(declare-fun res!665597 () Bool)

(assert (=> b!995010 (=> (not res!665597) (not e!561495))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!995010 (= res!665597 (validKeyInArray!0 k0!2224))))

(declare-fun b!995011 () Bool)

(declare-fun res!665602 () Bool)

(assert (=> b!995011 (=> (not res!665602) (not e!561495))))

(assert (=> b!995011 (= res!665602 (validKeyInArray!0 (select (arr!30308 a!3219) j!170)))))

(assert (= (and start!85826 res!665596) b!995008))

(assert (= (and b!995008 res!665598) b!995011))

(assert (= (and b!995011 res!665602) b!995010))

(assert (= (and b!995010 res!665597) b!995005))

(assert (= (and b!995005 res!665600) b!995006))

(assert (= (and b!995006 res!665599) b!995009))

(assert (= (and b!995009 res!665595) b!995007))

(assert (= (and b!995007 res!665601) b!995004))

(declare-fun m!922601 () Bool)

(assert (=> b!995005 m!922601))

(declare-fun m!922603 () Bool)

(assert (=> b!995004 m!922603))

(declare-fun m!922605 () Bool)

(assert (=> b!995009 m!922605))

(declare-fun m!922607 () Bool)

(assert (=> b!995010 m!922607))

(declare-fun m!922609 () Bool)

(assert (=> b!995011 m!922609))

(assert (=> b!995011 m!922609))

(declare-fun m!922611 () Bool)

(assert (=> b!995011 m!922611))

(declare-fun m!922613 () Bool)

(assert (=> b!995006 m!922613))

(declare-fun m!922615 () Bool)

(assert (=> start!85826 m!922615))

(declare-fun m!922617 () Bool)

(assert (=> start!85826 m!922617))

(check-sat (not b!995006) (not b!995004) (not b!995009) (not b!995005) (not start!85826) (not b!995010) (not b!995011))
(check-sat)
(get-model)

(declare-fun d!118733 () Bool)

(assert (=> d!118733 (= (validKeyInArray!0 (select (arr!30308 a!3219) j!170)) (and (not (= (select (arr!30308 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30308 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!995011 d!118733))

(declare-fun d!118735 () Bool)

(declare-fun lt!440817 () SeekEntryResult!9240)

(get-info :version)

(assert (=> d!118735 (and (or ((_ is Undefined!9240) lt!440817) (not ((_ is Found!9240) lt!440817)) (and (bvsge (index!39331 lt!440817) #b00000000000000000000000000000000) (bvslt (index!39331 lt!440817) (size!30811 a!3219)))) (or ((_ is Undefined!9240) lt!440817) ((_ is Found!9240) lt!440817) (not ((_ is MissingZero!9240) lt!440817)) (and (bvsge (index!39330 lt!440817) #b00000000000000000000000000000000) (bvslt (index!39330 lt!440817) (size!30811 a!3219)))) (or ((_ is Undefined!9240) lt!440817) ((_ is Found!9240) lt!440817) ((_ is MissingZero!9240) lt!440817) (not ((_ is MissingVacant!9240) lt!440817)) (and (bvsge (index!39333 lt!440817) #b00000000000000000000000000000000) (bvslt (index!39333 lt!440817) (size!30811 a!3219)))) (or ((_ is Undefined!9240) lt!440817) (ite ((_ is Found!9240) lt!440817) (= (select (arr!30308 a!3219) (index!39331 lt!440817)) k0!2224) (ite ((_ is MissingZero!9240) lt!440817) (= (select (arr!30308 a!3219) (index!39330 lt!440817)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9240) lt!440817) (= (select (arr!30308 a!3219) (index!39333 lt!440817)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!561521 () SeekEntryResult!9240)

(assert (=> d!118735 (= lt!440817 e!561521)))

(declare-fun c!100852 () Bool)

(declare-fun lt!440815 () SeekEntryResult!9240)

(assert (=> d!118735 (= c!100852 (and ((_ is Intermediate!9240) lt!440815) (undefined!10052 lt!440815)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!62950 (_ BitVec 32)) SeekEntryResult!9240)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!118735 (= lt!440815 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2224 mask!3464) k0!2224 a!3219 mask!3464))))

(assert (=> d!118735 (validMask!0 mask!3464)))

(assert (=> d!118735 (= (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464) lt!440817)))

(declare-fun b!995054 () Bool)

(declare-fun e!561519 () SeekEntryResult!9240)

(assert (=> b!995054 (= e!561519 (MissingZero!9240 (index!39332 lt!440815)))))

(declare-fun b!995055 () Bool)

(declare-fun c!100853 () Bool)

(declare-fun lt!440816 () (_ BitVec 64))

(assert (=> b!995055 (= c!100853 (= lt!440816 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!561520 () SeekEntryResult!9240)

(assert (=> b!995055 (= e!561520 e!561519)))

(declare-fun b!995056 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!62950 (_ BitVec 32)) SeekEntryResult!9240)

(assert (=> b!995056 (= e!561519 (seekKeyOrZeroReturnVacant!0 (x!86802 lt!440815) (index!39332 lt!440815) (index!39332 lt!440815) k0!2224 a!3219 mask!3464))))

(declare-fun b!995057 () Bool)

(assert (=> b!995057 (= e!561521 Undefined!9240)))

(declare-fun b!995058 () Bool)

(assert (=> b!995058 (= e!561520 (Found!9240 (index!39332 lt!440815)))))

(declare-fun b!995059 () Bool)

(assert (=> b!995059 (= e!561521 e!561520)))

(assert (=> b!995059 (= lt!440816 (select (arr!30308 a!3219) (index!39332 lt!440815)))))

(declare-fun c!100854 () Bool)

(assert (=> b!995059 (= c!100854 (= lt!440816 k0!2224))))

(assert (= (and d!118735 c!100852) b!995057))

(assert (= (and d!118735 (not c!100852)) b!995059))

(assert (= (and b!995059 c!100854) b!995058))

(assert (= (and b!995059 (not c!100854)) b!995055))

(assert (= (and b!995055 c!100853) b!995054))

(assert (= (and b!995055 (not c!100853)) b!995056))

(declare-fun m!922641 () Bool)

(assert (=> d!118735 m!922641))

(declare-fun m!922643 () Bool)

(assert (=> d!118735 m!922643))

(declare-fun m!922645 () Bool)

(assert (=> d!118735 m!922645))

(declare-fun m!922647 () Bool)

(assert (=> d!118735 m!922647))

(declare-fun m!922649 () Bool)

(assert (=> d!118735 m!922649))

(assert (=> d!118735 m!922615))

(assert (=> d!118735 m!922645))

(declare-fun m!922651 () Bool)

(assert (=> b!995056 m!922651))

(declare-fun m!922653 () Bool)

(assert (=> b!995059 m!922653))

(assert (=> b!995006 d!118735))

(declare-fun b!995092 () Bool)

(declare-fun e!561543 () Bool)

(declare-fun e!561544 () Bool)

(assert (=> b!995092 (= e!561543 e!561544)))

(declare-fun c!100866 () Bool)

(assert (=> b!995092 (= c!100866 (validKeyInArray!0 (select (arr!30308 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!995093 () Bool)

(declare-fun e!561545 () Bool)

(declare-fun call!42190 () Bool)

(assert (=> b!995093 (= e!561545 call!42190)))

(declare-fun b!995094 () Bool)

(assert (=> b!995094 (= e!561544 e!561545)))

(declare-fun lt!440834 () (_ BitVec 64))

(assert (=> b!995094 (= lt!440834 (select (arr!30308 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32906 0))(
  ( (Unit!32907) )
))
(declare-fun lt!440833 () Unit!32906)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!62950 (_ BitVec 64) (_ BitVec 32)) Unit!32906)

(assert (=> b!995094 (= lt!440833 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!440834 #b00000000000000000000000000000000))))

(assert (=> b!995094 (arrayContainsKey!0 a!3219 lt!440834 #b00000000000000000000000000000000)))

(declare-fun lt!440835 () Unit!32906)

(assert (=> b!995094 (= lt!440835 lt!440833)))

(declare-fun res!665643 () Bool)

(assert (=> b!995094 (= res!665643 (= (seekEntryOrOpen!0 (select (arr!30308 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9240 #b00000000000000000000000000000000)))))

(assert (=> b!995094 (=> (not res!665643) (not e!561545))))

(declare-fun d!118751 () Bool)

(declare-fun res!665644 () Bool)

(assert (=> d!118751 (=> res!665644 e!561543)))

(assert (=> d!118751 (= res!665644 (bvsge #b00000000000000000000000000000000 (size!30811 a!3219)))))

(assert (=> d!118751 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!561543)))

(declare-fun bm!42187 () Bool)

(assert (=> bm!42187 (= call!42190 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun b!995095 () Bool)

(assert (=> b!995095 (= e!561544 call!42190)))

(assert (= (and d!118751 (not res!665644)) b!995092))

(assert (= (and b!995092 c!100866) b!995094))

(assert (= (and b!995092 (not c!100866)) b!995095))

(assert (= (and b!995094 res!665643) b!995093))

(assert (= (or b!995093 b!995095) bm!42187))

(declare-fun m!922673 () Bool)

(assert (=> b!995092 m!922673))

(assert (=> b!995092 m!922673))

(declare-fun m!922675 () Bool)

(assert (=> b!995092 m!922675))

(assert (=> b!995094 m!922673))

(declare-fun m!922677 () Bool)

(assert (=> b!995094 m!922677))

(declare-fun m!922679 () Bool)

(assert (=> b!995094 m!922679))

(assert (=> b!995094 m!922673))

(declare-fun m!922681 () Bool)

(assert (=> b!995094 m!922681))

(declare-fun m!922683 () Bool)

(assert (=> bm!42187 m!922683))

(assert (=> b!995009 d!118751))

(declare-fun d!118757 () Bool)

(declare-fun res!665649 () Bool)

(declare-fun e!561550 () Bool)

(assert (=> d!118757 (=> res!665649 e!561550)))

(assert (=> d!118757 (= res!665649 ((_ is Nil!21107) Nil!21107))))

(assert (=> d!118757 (= (noDuplicate!1464 Nil!21107) e!561550)))

(declare-fun b!995100 () Bool)

(declare-fun e!561551 () Bool)

(assert (=> b!995100 (= e!561550 e!561551)))

(declare-fun res!665650 () Bool)

(assert (=> b!995100 (=> (not res!665650) (not e!561551))))

(declare-fun contains!5867 (List!21110 (_ BitVec 64)) Bool)

(assert (=> b!995100 (= res!665650 (not (contains!5867 (t!30119 Nil!21107) (h!22268 Nil!21107))))))

(declare-fun b!995101 () Bool)

(assert (=> b!995101 (= e!561551 (noDuplicate!1464 (t!30119 Nil!21107)))))

(assert (= (and d!118757 (not res!665649)) b!995100))

(assert (= (and b!995100 res!665650) b!995101))

(declare-fun m!922685 () Bool)

(assert (=> b!995100 m!922685))

(declare-fun m!922687 () Bool)

(assert (=> b!995101 m!922687))

(assert (=> b!995004 d!118757))

(declare-fun d!118759 () Bool)

(assert (=> d!118759 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!85826 d!118759))

(declare-fun d!118771 () Bool)

(assert (=> d!118771 (= (array_inv!23298 a!3219) (bvsge (size!30811 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!85826 d!118771))

(declare-fun d!118773 () Bool)

(assert (=> d!118773 (= (validKeyInArray!0 k0!2224) (and (not (= k0!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!995010 d!118773))

(declare-fun d!118775 () Bool)

(declare-fun res!665667 () Bool)

(declare-fun e!561577 () Bool)

(assert (=> d!118775 (=> res!665667 e!561577)))

(assert (=> d!118775 (= res!665667 (= (select (arr!30308 a!3219) #b00000000000000000000000000000000) k0!2224))))

(assert (=> d!118775 (= (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000) e!561577)))

(declare-fun b!995136 () Bool)

(declare-fun e!561578 () Bool)

(assert (=> b!995136 (= e!561577 e!561578)))

(declare-fun res!665668 () Bool)

(assert (=> b!995136 (=> (not res!665668) (not e!561578))))

(assert (=> b!995136 (= res!665668 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30811 a!3219)))))

(declare-fun b!995137 () Bool)

(assert (=> b!995137 (= e!561578 (arrayContainsKey!0 a!3219 k0!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!118775 (not res!665667)) b!995136))

(assert (= (and b!995136 res!665668) b!995137))

(assert (=> d!118775 m!922673))

(declare-fun m!922711 () Bool)

(assert (=> b!995137 m!922711))

(assert (=> b!995005 d!118775))

(check-sat (not b!995056) (not bm!42187) (not b!995101) (not b!995137) (not b!995094) (not b!995092) (not b!995100) (not d!118735))
(check-sat)
