; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85872 () Bool)

(assert start!85872)

(declare-fun b!995182 () Bool)

(declare-fun e!561605 () Bool)

(declare-fun e!561606 () Bool)

(assert (=> b!995182 (= e!561605 e!561606)))

(declare-fun res!665702 () Bool)

(assert (=> b!995182 (=> (not res!665702) (not e!561606))))

(declare-datatypes ((SeekEntryResult!9242 0))(
  ( (MissingZero!9242 (index!39338 (_ BitVec 32))) (Found!9242 (index!39339 (_ BitVec 32))) (Intermediate!9242 (undefined!10054 Bool) (index!39340 (_ BitVec 32)) (x!86812 (_ BitVec 32))) (Undefined!9242) (MissingVacant!9242 (index!39341 (_ BitVec 32))) )
))
(declare-fun lt!440865 () SeekEntryResult!9242)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!995182 (= res!665702 (or (= lt!440865 (MissingVacant!9242 i!1194)) (= lt!440865 (MissingZero!9242 i!1194))))))

(declare-datatypes ((array!62957 0))(
  ( (array!62958 (arr!30310 (Array (_ BitVec 32) (_ BitVec 64))) (size!30813 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62957)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62957 (_ BitVec 32)) SeekEntryResult!9242)

(assert (=> b!995182 (= lt!440865 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!995183 () Bool)

(declare-fun e!561608 () Bool)

(assert (=> b!995183 (= e!561606 e!561608)))

(declare-fun res!665706 () Bool)

(assert (=> b!995183 (=> res!665706 e!561608)))

(declare-datatypes ((List!21112 0))(
  ( (Nil!21109) (Cons!21108 (h!22270 (_ BitVec 64)) (t!30121 List!21112)) )
))
(declare-fun contains!5869 (List!21112 (_ BitVec 64)) Bool)

(assert (=> b!995183 (= res!665706 (contains!5869 Nil!21109 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!995184 () Bool)

(declare-fun res!665705 () Bool)

(assert (=> b!995184 (=> (not res!665705) (not e!561605))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!995184 (= res!665705 (and (= (size!30813 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30813 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30813 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!995185 () Bool)

(assert (=> b!995185 (= e!561608 (contains!5869 Nil!21109 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!995186 () Bool)

(declare-fun res!665710 () Bool)

(assert (=> b!995186 (=> (not res!665710) (not e!561605))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!995186 (= res!665710 (validKeyInArray!0 (select (arr!30310 a!3219) j!170)))))

(declare-fun b!995187 () Bool)

(declare-fun res!665709 () Bool)

(assert (=> b!995187 (=> (not res!665709) (not e!561605))))

(declare-fun arrayContainsKey!0 (array!62957 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!995187 (= res!665709 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!995188 () Bool)

(declare-fun res!665704 () Bool)

(assert (=> b!995188 (=> (not res!665704) (not e!561605))))

(assert (=> b!995188 (= res!665704 (validKeyInArray!0 k!2224))))

(declare-fun b!995189 () Bool)

(declare-fun res!665707 () Bool)

(assert (=> b!995189 (=> (not res!665707) (not e!561606))))

(assert (=> b!995189 (= res!665707 (and (bvsle #b00000000000000000000000000000000 (size!30813 a!3219)) (bvslt (size!30813 a!3219) #b01111111111111111111111111111111)))))

(declare-fun res!665701 () Bool)

(assert (=> start!85872 (=> (not res!665701) (not e!561605))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85872 (= res!665701 (validMask!0 mask!3464))))

(assert (=> start!85872 e!561605))

(declare-fun array_inv!23300 (array!62957) Bool)

(assert (=> start!85872 (array_inv!23300 a!3219)))

(assert (=> start!85872 true))

(declare-fun b!995190 () Bool)

(declare-fun res!665703 () Bool)

(assert (=> b!995190 (=> (not res!665703) (not e!561606))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62957 (_ BitVec 32)) Bool)

(assert (=> b!995190 (= res!665703 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!995191 () Bool)

(declare-fun res!665708 () Bool)

(assert (=> b!995191 (=> (not res!665708) (not e!561606))))

(declare-fun noDuplicate!1466 (List!21112) Bool)

(assert (=> b!995191 (= res!665708 (noDuplicate!1466 Nil!21109))))

(assert (= (and start!85872 res!665701) b!995184))

(assert (= (and b!995184 res!665705) b!995186))

(assert (= (and b!995186 res!665710) b!995188))

(assert (= (and b!995188 res!665704) b!995187))

(assert (= (and b!995187 res!665709) b!995182))

(assert (= (and b!995182 res!665702) b!995190))

(assert (= (and b!995190 res!665703) b!995189))

(assert (= (and b!995189 res!665707) b!995191))

(assert (= (and b!995191 res!665708) b!995183))

(assert (= (and b!995183 (not res!665706)) b!995185))

(declare-fun m!922733 () Bool)

(assert (=> b!995190 m!922733))

(declare-fun m!922735 () Bool)

(assert (=> b!995187 m!922735))

(declare-fun m!922737 () Bool)

(assert (=> b!995182 m!922737))

(declare-fun m!922739 () Bool)

(assert (=> b!995188 m!922739))

(declare-fun m!922741 () Bool)

(assert (=> b!995191 m!922741))

(declare-fun m!922743 () Bool)

(assert (=> b!995186 m!922743))

(assert (=> b!995186 m!922743))

(declare-fun m!922745 () Bool)

(assert (=> b!995186 m!922745))

(declare-fun m!922747 () Bool)

(assert (=> b!995183 m!922747))

(declare-fun m!922749 () Bool)

(assert (=> start!85872 m!922749))

(declare-fun m!922751 () Bool)

(assert (=> start!85872 m!922751))

(declare-fun m!922753 () Bool)

(assert (=> b!995185 m!922753))

(push 1)

(assert (not b!995191))

(assert (not start!85872))

(assert (not b!995188))

(assert (not b!995183))

(assert (not b!995186))

(assert (not b!995185))

(assert (not b!995182))

(assert (not b!995190))

(assert (not b!995187))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!995302 () Bool)

(declare-fun e!561674 () SeekEntryResult!9242)

(declare-fun lt!440891 () SeekEntryResult!9242)

(assert (=> b!995302 (= e!561674 (Found!9242 (index!39340 lt!440891)))))

(declare-fun b!995303 () Bool)

(declare-fun e!561675 () SeekEntryResult!9242)

(assert (=> b!995303 (= e!561675 Undefined!9242)))

(declare-fun b!995304 () Bool)

(assert (=> b!995304 (= e!561675 e!561674)))

(declare-fun lt!440893 () (_ BitVec 64))

(assert (=> b!995304 (= lt!440893 (select (arr!30310 a!3219) (index!39340 lt!440891)))))

(declare-fun c!100893 () Bool)

(assert (=> b!995304 (= c!100893 (= lt!440893 k!2224))))

(declare-fun b!995305 () Bool)

(declare-fun e!561676 () SeekEntryResult!9242)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!62957 (_ BitVec 32)) SeekEntryResult!9242)

(assert (=> b!995305 (= e!561676 (seekKeyOrZeroReturnVacant!0 (x!86812 lt!440891) (index!39340 lt!440891) (index!39340 lt!440891) k!2224 a!3219 mask!3464))))

(declare-fun b!995306 () Bool)

(assert (=> b!995306 (= e!561676 (MissingZero!9242 (index!39340 lt!440891)))))

(declare-fun b!995307 () Bool)

(declare-fun c!100892 () Bool)

(assert (=> b!995307 (= c!100892 (= lt!440893 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!995307 (= e!561674 e!561676)))

(declare-fun d!118789 () Bool)

(declare-fun lt!440892 () SeekEntryResult!9242)

(assert (=> d!118789 (and (or (is-Undefined!9242 lt!440892) (not (is-Found!9242 lt!440892)) (and (bvsge (index!39339 lt!440892) #b00000000000000000000000000000000) (bvslt (index!39339 lt!440892) (size!30813 a!3219)))) (or (is-Undefined!9242 lt!440892) (is-Found!9242 lt!440892) (not (is-MissingZero!9242 lt!440892)) (and (bvsge (index!39338 lt!440892) #b00000000000000000000000000000000) (bvslt (index!39338 lt!440892) (size!30813 a!3219)))) (or (is-Undefined!9242 lt!440892) (is-Found!9242 lt!440892) (is-MissingZero!9242 lt!440892) (not (is-MissingVacant!9242 lt!440892)) (and (bvsge (index!39341 lt!440892) #b00000000000000000000000000000000) (bvslt (index!39341 lt!440892) (size!30813 a!3219)))) (or (is-Undefined!9242 lt!440892) (ite (is-Found!9242 lt!440892) (= (select (arr!30310 a!3219) (index!39339 lt!440892)) k!2224) (ite (is-MissingZero!9242 lt!440892) (= (select (arr!30310 a!3219) (index!39338 lt!440892)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!9242 lt!440892) (= (select (arr!30310 a!3219) (index!39341 lt!440892)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!118789 (= lt!440892 e!561675)))

(declare-fun c!100891 () Bool)

(assert (=> d!118789 (= c!100891 (and (is-Intermediate!9242 lt!440891) (undefined!10054 lt!440891)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!62957 (_ BitVec 32)) SeekEntryResult!9242)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!118789 (= lt!440891 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2224 mask!3464) k!2224 a!3219 mask!3464))))

(assert (=> d!118789 (validMask!0 mask!3464)))

(assert (=> d!118789 (= (seekEntryOrOpen!0 k!2224 a!3219 mask!3464) lt!440892)))

(assert (= (and d!118789 c!100891) b!995303))

(assert (= (and d!118789 (not c!100891)) b!995304))

(assert (= (and b!995304 c!100893) b!995302))

(assert (= (and b!995304 (not c!100893)) b!995307))

(assert (= (and b!995307 c!100892) b!995306))

(assert (= (and b!995307 (not c!100892)) b!995305))

(declare-fun m!922831 () Bool)

(assert (=> b!995304 m!922831))

(declare-fun m!922833 () Bool)

(assert (=> b!995305 m!922833))

(declare-fun m!922835 () Bool)

(assert (=> d!118789 m!922835))

(declare-fun m!922837 () Bool)

(assert (=> d!118789 m!922837))

(declare-fun m!922839 () Bool)

(assert (=> d!118789 m!922839))

(assert (=> d!118789 m!922749))

(declare-fun m!922841 () Bool)

(assert (=> d!118789 m!922841))

(assert (=> d!118789 m!922837))

(declare-fun m!922843 () Bool)

(assert (=> d!118789 m!922843))

(assert (=> b!995182 d!118789))

(declare-fun d!118815 () Bool)

(declare-fun res!665813 () Bool)

(declare-fun e!561687 () Bool)

(assert (=> d!118815 (=> res!665813 e!561687)))

(assert (=> d!118815 (= res!665813 (= (select (arr!30310 a!3219) #b00000000000000000000000000000000) k!2224))))

(assert (=> d!118815 (= (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000) e!561687)))

(declare-fun b!995318 () Bool)

(declare-fun e!561688 () Bool)

(assert (=> b!995318 (= e!561687 e!561688)))

(declare-fun res!665814 () Bool)

(assert (=> b!995318 (=> (not res!665814) (not e!561688))))

(assert (=> b!995318 (= res!665814 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30813 a!3219)))))

(declare-fun b!995319 () Bool)

(assert (=> b!995319 (= e!561688 (arrayContainsKey!0 a!3219 k!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!118815 (not res!665813)) b!995318))

(assert (= (and b!995318 res!665814) b!995319))

(declare-fun m!922851 () Bool)

(assert (=> d!118815 m!922851))

(declare-fun m!922853 () Bool)

(assert (=> b!995319 m!922853))

(assert (=> b!995187 d!118815))

(declare-fun d!118819 () Bool)

(assert (=> d!118819 (= (validKeyInArray!0 (select (arr!30310 a!3219) j!170)) (and (not (= (select (arr!30310 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30310 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!995186 d!118819))

(declare-fun d!118821 () Bool)

(declare-fun res!665819 () Bool)

(declare-fun e!561693 () Bool)

(assert (=> d!118821 (=> res!665819 e!561693)))

(assert (=> d!118821 (= res!665819 (is-Nil!21109 Nil!21109))))

(assert (=> d!118821 (= (noDuplicate!1466 Nil!21109) e!561693)))

(declare-fun b!995324 () Bool)

(declare-fun e!561694 () Bool)

(assert (=> b!995324 (= e!561693 e!561694)))

(declare-fun res!665820 () Bool)

(assert (=> b!995324 (=> (not res!665820) (not e!561694))))

(assert (=> b!995324 (= res!665820 (not (contains!5869 (t!30121 Nil!21109) (h!22270 Nil!21109))))))

(declare-fun b!995325 () Bool)

(assert (=> b!995325 (= e!561694 (noDuplicate!1466 (t!30121 Nil!21109)))))

(assert (= (and d!118821 (not res!665819)) b!995324))

(assert (= (and b!995324 res!665820) b!995325))

(declare-fun m!922855 () Bool)

(assert (=> b!995324 m!922855))

(declare-fun m!922857 () Bool)

(assert (=> b!995325 m!922857))

(assert (=> b!995191 d!118821))

(declare-fun d!118823 () Bool)

(assert (=> d!118823 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!85872 d!118823))

(declare-fun d!118829 () Bool)

(assert (=> d!118829 (= (array_inv!23300 a!3219) (bvsge (size!30813 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!85872 d!118829))

(declare-fun d!118831 () Bool)

(declare-fun lt!440914 () Bool)

(declare-fun content!485 (List!21112) (Set (_ BitVec 64)))

(assert (=> d!118831 (= lt!440914 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!485 Nil!21109)))))

(declare-fun e!561720 () Bool)

(assert (=> d!118831 (= lt!440914 e!561720)))

(declare-fun res!665831 () Bool)

(assert (=> d!118831 (=> (not res!665831) (not e!561720))))

(assert (=> d!118831 (= res!665831 (is-Cons!21108 Nil!21109))))

(assert (=> d!118831 (= (contains!5869 Nil!21109 #b1000000000000000000000000000000000000000000000000000000000000000) lt!440914)))

(declare-fun b!995366 () Bool)

(declare-fun e!561721 () Bool)

(assert (=> b!995366 (= e!561720 e!561721)))

(declare-fun res!665832 () Bool)

(assert (=> b!995366 (=> res!665832 e!561721)))

(assert (=> b!995366 (= res!665832 (= (h!22270 Nil!21109) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!995367 () Bool)

(assert (=> b!995367 (= e!561721 (contains!5869 (t!30121 Nil!21109) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!118831 res!665831) b!995366))

(assert (= (and b!995366 (not res!665832)) b!995367))

(declare-fun m!922877 () Bool)

(assert (=> d!118831 m!922877))

(declare-fun m!922879 () Bool)

(assert (=> d!118831 m!922879))

(declare-fun m!922881 () Bool)

(assert (=> b!995367 m!922881))

(assert (=> b!995185 d!118831))

(declare-fun b!995396 () Bool)

(declare-fun e!561742 () Bool)

(declare-fun e!561744 () Bool)

(assert (=> b!995396 (= e!561742 e!561744)))

(declare-fun lt!440936 () (_ BitVec 64))

(assert (=> b!995396 (= lt!440936 (select (arr!30310 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32912 0))(
  ( (Unit!32913) )
))
(declare-fun lt!440934 () Unit!32912)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!62957 (_ BitVec 64) (_ BitVec 32)) Unit!32912)

(assert (=> b!995396 (= lt!440934 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!440936 #b00000000000000000000000000000000))))

(assert (=> b!995396 (arrayContainsKey!0 a!3219 lt!440936 #b00000000000000000000000000000000)))

(declare-fun lt!440935 () Unit!32912)

(assert (=> b!995396 (= lt!440935 lt!440934)))

(declare-fun res!665845 () Bool)

(assert (=> b!995396 (= res!665845 (= (seekEntryOrOpen!0 (select (arr!30310 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9242 #b00000000000000000000000000000000)))))

(assert (=> b!995396 (=> (not res!665845) (not e!561744))))

(declare-fun bm!42202 () Bool)

(declare-fun call!42205 () Bool)

(assert (=> bm!42202 (= call!42205 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun d!118835 () Bool)

(declare-fun res!665846 () Bool)

(declare-fun e!561743 () Bool)

(assert (=> d!118835 (=> res!665846 e!561743)))

(assert (=> d!118835 (= res!665846 (bvsge #b00000000000000000000000000000000 (size!30813 a!3219)))))

(assert (=> d!118835 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!561743)))

(declare-fun b!995397 () Bool)

(assert (=> b!995397 (= e!561742 call!42205)))

(declare-fun b!995398 () Bool)

(assert (=> b!995398 (= e!561743 e!561742)))

(declare-fun c!100917 () Bool)

(assert (=> b!995398 (= c!100917 (validKeyInArray!0 (select (arr!30310 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!995399 () Bool)

(assert (=> b!995399 (= e!561744 call!42205)))

(assert (= (and d!118835 (not res!665846)) b!995398))

(assert (= (and b!995398 c!100917) b!995396))

(assert (= (and b!995398 (not c!100917)) b!995397))

(assert (= (and b!995396 res!665845) b!995399))

(assert (= (or b!995399 b!995397) bm!42202))

(assert (=> b!995396 m!922851))

(declare-fun m!922911 () Bool)

(assert (=> b!995396 m!922911))

(declare-fun m!922913 () Bool)

(assert (=> b!995396 m!922913))

(assert (=> b!995396 m!922851))

(declare-fun m!922915 () Bool)

(assert (=> b!995396 m!922915))

(declare-fun m!922917 () Bool)

(assert (=> bm!42202 m!922917))

(assert (=> b!995398 m!922851))

(assert (=> b!995398 m!922851))

(declare-fun m!922919 () Bool)

(assert (=> b!995398 m!922919))

(assert (=> b!995190 d!118835))

(declare-fun d!118839 () Bool)

(declare-fun lt!440937 () Bool)

(assert (=> d!118839 (= lt!440937 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!485 Nil!21109)))))

(declare-fun e!561745 () Bool)

(assert (=> d!118839 (= lt!440937 e!561745)))

(declare-fun res!665847 () Bool)

