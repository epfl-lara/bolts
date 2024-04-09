; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63906 () Bool)

(assert start!63906)

(declare-fun b!717889 () Bool)

(declare-fun res!480600 () Bool)

(declare-fun e!403073 () Bool)

(assert (=> b!717889 (=> (not res!480600) (not e!403073))))

(declare-datatypes ((array!40638 0))(
  ( (array!40639 (arr!19444 (Array (_ BitVec 32) (_ BitVec 64))) (size!19865 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40638)

(declare-datatypes ((List!13499 0))(
  ( (Nil!13496) (Cons!13495 (h!14540 (_ BitVec 64)) (t!19822 List!13499)) )
))
(declare-fun arrayNoDuplicates!0 (array!40638 (_ BitVec 32) List!13499) Bool)

(assert (=> b!717889 (= res!480600 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13496))))

(declare-fun b!717890 () Bool)

(declare-fun res!480601 () Bool)

(declare-fun e!403074 () Bool)

(assert (=> b!717890 (=> (not res!480601) (not e!403074))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40638 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!717890 (= res!480601 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!717891 () Bool)

(declare-fun res!480603 () Bool)

(assert (=> b!717891 (=> (not res!480603) (not e!403074))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!717891 (= res!480603 (and (= (size!19865 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19865 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19865 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!717892 () Bool)

(declare-fun res!480604 () Bool)

(assert (=> b!717892 (=> (not res!480604) (not e!403074))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!717892 (= res!480604 (validKeyInArray!0 k0!2102))))

(declare-fun b!717893 () Bool)

(assert (=> b!717893 (= e!403074 e!403073)))

(declare-fun res!480599 () Bool)

(assert (=> b!717893 (=> (not res!480599) (not e!403073))))

(declare-datatypes ((SeekEntryResult!7051 0))(
  ( (MissingZero!7051 (index!30571 (_ BitVec 32))) (Found!7051 (index!30572 (_ BitVec 32))) (Intermediate!7051 (undefined!7863 Bool) (index!30573 (_ BitVec 32)) (x!61616 (_ BitVec 32))) (Undefined!7051) (MissingVacant!7051 (index!30574 (_ BitVec 32))) )
))
(declare-fun lt!319214 () SeekEntryResult!7051)

(assert (=> b!717893 (= res!480599 (or (= lt!319214 (MissingZero!7051 i!1173)) (= lt!319214 (MissingVacant!7051 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40638 (_ BitVec 32)) SeekEntryResult!7051)

(assert (=> b!717893 (= lt!319214 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!717894 () Bool)

(declare-fun res!480606 () Bool)

(assert (=> b!717894 (=> (not res!480606) (not e!403074))))

(assert (=> b!717894 (= res!480606 (validKeyInArray!0 (select (arr!19444 a!3186) j!159)))))

(declare-fun b!717895 () Bool)

(declare-fun res!480605 () Bool)

(assert (=> b!717895 (=> (not res!480605) (not e!403073))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40638 (_ BitVec 32)) Bool)

(assert (=> b!717895 (= res!480605 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!717896 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!717896 (= e!403073 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19865 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19865 a!3186)) (bvsge mask!3328 #b00000000000000000000000000000000) (bvsgt mask!3328 #b00111111111111111111111111111111)))))

(declare-fun res!480602 () Bool)

(assert (=> start!63906 (=> (not res!480602) (not e!403074))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63906 (= res!480602 (validMask!0 mask!3328))))

(assert (=> start!63906 e!403074))

(assert (=> start!63906 true))

(declare-fun array_inv!15218 (array!40638) Bool)

(assert (=> start!63906 (array_inv!15218 a!3186)))

(assert (= (and start!63906 res!480602) b!717891))

(assert (= (and b!717891 res!480603) b!717894))

(assert (= (and b!717894 res!480606) b!717892))

(assert (= (and b!717892 res!480604) b!717890))

(assert (= (and b!717890 res!480601) b!717893))

(assert (= (and b!717893 res!480599) b!717895))

(assert (= (and b!717895 res!480605) b!717889))

(assert (= (and b!717889 res!480600) b!717896))

(declare-fun m!673759 () Bool)

(assert (=> b!717892 m!673759))

(declare-fun m!673761 () Bool)

(assert (=> b!717890 m!673761))

(declare-fun m!673763 () Bool)

(assert (=> b!717895 m!673763))

(declare-fun m!673765 () Bool)

(assert (=> b!717893 m!673765))

(declare-fun m!673767 () Bool)

(assert (=> b!717894 m!673767))

(assert (=> b!717894 m!673767))

(declare-fun m!673769 () Bool)

(assert (=> b!717894 m!673769))

(declare-fun m!673771 () Bool)

(assert (=> start!63906 m!673771))

(declare-fun m!673773 () Bool)

(assert (=> start!63906 m!673773))

(declare-fun m!673775 () Bool)

(assert (=> b!717889 m!673775))

(check-sat (not b!717893) (not b!717889) (not b!717894) (not b!717895) (not start!63906) (not b!717892) (not b!717890))
(check-sat)
(get-model)

(declare-fun d!98893 () Bool)

(assert (=> d!98893 (= (validKeyInArray!0 k0!2102) (and (not (= k0!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!717892 d!98893))

(declare-fun b!717960 () Bool)

(declare-fun e!403113 () SeekEntryResult!7051)

(declare-fun e!403112 () SeekEntryResult!7051)

(assert (=> b!717960 (= e!403113 e!403112)))

(declare-fun lt!319235 () (_ BitVec 64))

(declare-fun lt!319234 () SeekEntryResult!7051)

(assert (=> b!717960 (= lt!319235 (select (arr!19444 a!3186) (index!30573 lt!319234)))))

(declare-fun c!79024 () Bool)

(assert (=> b!717960 (= c!79024 (= lt!319235 k0!2102))))

(declare-fun e!403111 () SeekEntryResult!7051)

(declare-fun b!717961 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40638 (_ BitVec 32)) SeekEntryResult!7051)

(assert (=> b!717961 (= e!403111 (seekKeyOrZeroReturnVacant!0 (x!61616 lt!319234) (index!30573 lt!319234) (index!30573 lt!319234) k0!2102 a!3186 mask!3328))))

(declare-fun b!717962 () Bool)

(declare-fun c!79025 () Bool)

(assert (=> b!717962 (= c!79025 (= lt!319235 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!717962 (= e!403112 e!403111)))

(declare-fun b!717963 () Bool)

(assert (=> b!717963 (= e!403111 (MissingZero!7051 (index!30573 lt!319234)))))

(declare-fun d!98895 () Bool)

(declare-fun lt!319233 () SeekEntryResult!7051)

(get-info :version)

(assert (=> d!98895 (and (or ((_ is Undefined!7051) lt!319233) (not ((_ is Found!7051) lt!319233)) (and (bvsge (index!30572 lt!319233) #b00000000000000000000000000000000) (bvslt (index!30572 lt!319233) (size!19865 a!3186)))) (or ((_ is Undefined!7051) lt!319233) ((_ is Found!7051) lt!319233) (not ((_ is MissingZero!7051) lt!319233)) (and (bvsge (index!30571 lt!319233) #b00000000000000000000000000000000) (bvslt (index!30571 lt!319233) (size!19865 a!3186)))) (or ((_ is Undefined!7051) lt!319233) ((_ is Found!7051) lt!319233) ((_ is MissingZero!7051) lt!319233) (not ((_ is MissingVacant!7051) lt!319233)) (and (bvsge (index!30574 lt!319233) #b00000000000000000000000000000000) (bvslt (index!30574 lt!319233) (size!19865 a!3186)))) (or ((_ is Undefined!7051) lt!319233) (ite ((_ is Found!7051) lt!319233) (= (select (arr!19444 a!3186) (index!30572 lt!319233)) k0!2102) (ite ((_ is MissingZero!7051) lt!319233) (= (select (arr!19444 a!3186) (index!30571 lt!319233)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7051) lt!319233) (= (select (arr!19444 a!3186) (index!30574 lt!319233)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!98895 (= lt!319233 e!403113)))

(declare-fun c!79026 () Bool)

(assert (=> d!98895 (= c!79026 (and ((_ is Intermediate!7051) lt!319234) (undefined!7863 lt!319234)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40638 (_ BitVec 32)) SeekEntryResult!7051)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!98895 (= lt!319234 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2102 mask!3328) k0!2102 a!3186 mask!3328))))

(assert (=> d!98895 (validMask!0 mask!3328)))

(assert (=> d!98895 (= (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328) lt!319233)))

(declare-fun b!717964 () Bool)

(assert (=> b!717964 (= e!403113 Undefined!7051)))

(declare-fun b!717965 () Bool)

(assert (=> b!717965 (= e!403112 (Found!7051 (index!30573 lt!319234)))))

(assert (= (and d!98895 c!79026) b!717964))

(assert (= (and d!98895 (not c!79026)) b!717960))

(assert (= (and b!717960 c!79024) b!717965))

(assert (= (and b!717960 (not c!79024)) b!717962))

(assert (= (and b!717962 c!79025) b!717963))

(assert (= (and b!717962 (not c!79025)) b!717961))

(declare-fun m!673815 () Bool)

(assert (=> b!717960 m!673815))

(declare-fun m!673817 () Bool)

(assert (=> b!717961 m!673817))

(declare-fun m!673819 () Bool)

(assert (=> d!98895 m!673819))

(declare-fun m!673821 () Bool)

(assert (=> d!98895 m!673821))

(declare-fun m!673823 () Bool)

(assert (=> d!98895 m!673823))

(declare-fun m!673825 () Bool)

(assert (=> d!98895 m!673825))

(assert (=> d!98895 m!673819))

(declare-fun m!673827 () Bool)

(assert (=> d!98895 m!673827))

(assert (=> d!98895 m!673771))

(assert (=> b!717893 d!98895))

(declare-fun d!98905 () Bool)

(declare-fun res!480662 () Bool)

(declare-fun e!403137 () Bool)

(assert (=> d!98905 (=> res!480662 e!403137)))

(assert (=> d!98905 (= res!480662 (bvsge #b00000000000000000000000000000000 (size!19865 a!3186)))))

(assert (=> d!98905 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13496) e!403137)))

(declare-fun b!717991 () Bool)

(declare-fun e!403135 () Bool)

(declare-fun call!34725 () Bool)

(assert (=> b!717991 (= e!403135 call!34725)))

(declare-fun b!717992 () Bool)

(declare-fun e!403134 () Bool)

(assert (=> b!717992 (= e!403137 e!403134)))

(declare-fun res!480661 () Bool)

(assert (=> b!717992 (=> (not res!480661) (not e!403134))))

(declare-fun e!403136 () Bool)

(assert (=> b!717992 (= res!480661 (not e!403136))))

(declare-fun res!480663 () Bool)

(assert (=> b!717992 (=> (not res!480663) (not e!403136))))

(assert (=> b!717992 (= res!480663 (validKeyInArray!0 (select (arr!19444 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!717993 () Bool)

(assert (=> b!717993 (= e!403134 e!403135)))

(declare-fun c!79032 () Bool)

(assert (=> b!717993 (= c!79032 (validKeyInArray!0 (select (arr!19444 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!717994 () Bool)

(assert (=> b!717994 (= e!403135 call!34725)))

(declare-fun b!717995 () Bool)

(declare-fun contains!4037 (List!13499 (_ BitVec 64)) Bool)

(assert (=> b!717995 (= e!403136 (contains!4037 Nil!13496 (select (arr!19444 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!34722 () Bool)

(assert (=> bm!34722 (= call!34725 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!79032 (Cons!13495 (select (arr!19444 a!3186) #b00000000000000000000000000000000) Nil!13496) Nil!13496)))))

(assert (= (and d!98905 (not res!480662)) b!717992))

(assert (= (and b!717992 res!480663) b!717995))

(assert (= (and b!717992 res!480661) b!717993))

(assert (= (and b!717993 c!79032) b!717994))

(assert (= (and b!717993 (not c!79032)) b!717991))

(assert (= (or b!717994 b!717991) bm!34722))

(declare-fun m!673833 () Bool)

(assert (=> b!717992 m!673833))

(assert (=> b!717992 m!673833))

(declare-fun m!673835 () Bool)

(assert (=> b!717992 m!673835))

(assert (=> b!717993 m!673833))

(assert (=> b!717993 m!673833))

(assert (=> b!717993 m!673835))

(assert (=> b!717995 m!673833))

(assert (=> b!717995 m!673833))

(declare-fun m!673837 () Bool)

(assert (=> b!717995 m!673837))

(assert (=> bm!34722 m!673833))

(declare-fun m!673839 () Bool)

(assert (=> bm!34722 m!673839))

(assert (=> b!717889 d!98905))

(declare-fun d!98911 () Bool)

(assert (=> d!98911 (= (validKeyInArray!0 (select (arr!19444 a!3186) j!159)) (and (not (= (select (arr!19444 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19444 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!717894 d!98911))

(declare-fun b!718030 () Bool)

(declare-fun e!403163 () Bool)

(declare-fun e!403161 () Bool)

(assert (=> b!718030 (= e!403163 e!403161)))

(declare-fun lt!319251 () (_ BitVec 64))

(assert (=> b!718030 (= lt!319251 (select (arr!19444 a!3186) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!24636 0))(
  ( (Unit!24637) )
))
(declare-fun lt!319252 () Unit!24636)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!40638 (_ BitVec 64) (_ BitVec 32)) Unit!24636)

(assert (=> b!718030 (= lt!319252 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!319251 #b00000000000000000000000000000000))))

(assert (=> b!718030 (arrayContainsKey!0 a!3186 lt!319251 #b00000000000000000000000000000000)))

(declare-fun lt!319253 () Unit!24636)

(assert (=> b!718030 (= lt!319253 lt!319252)))

(declare-fun res!480677 () Bool)

(assert (=> b!718030 (= res!480677 (= (seekEntryOrOpen!0 (select (arr!19444 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7051 #b00000000000000000000000000000000)))))

(assert (=> b!718030 (=> (not res!480677) (not e!403161))))

(declare-fun b!718031 () Bool)

(declare-fun call!34728 () Bool)

(assert (=> b!718031 (= e!403163 call!34728)))

(declare-fun b!718032 () Bool)

(assert (=> b!718032 (= e!403161 call!34728)))

(declare-fun b!718033 () Bool)

(declare-fun e!403162 () Bool)

(assert (=> b!718033 (= e!403162 e!403163)))

(declare-fun c!79044 () Bool)

(assert (=> b!718033 (= c!79044 (validKeyInArray!0 (select (arr!19444 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!34725 () Bool)

(assert (=> bm!34725 (= call!34728 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun d!98915 () Bool)

(declare-fun res!480676 () Bool)

(assert (=> d!98915 (=> res!480676 e!403162)))

(assert (=> d!98915 (= res!480676 (bvsge #b00000000000000000000000000000000 (size!19865 a!3186)))))

(assert (=> d!98915 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!403162)))

(assert (= (and d!98915 (not res!480676)) b!718033))

(assert (= (and b!718033 c!79044) b!718030))

(assert (= (and b!718033 (not c!79044)) b!718031))

(assert (= (and b!718030 res!480677) b!718032))

(assert (= (or b!718032 b!718031) bm!34725))

(assert (=> b!718030 m!673833))

(declare-fun m!673857 () Bool)

(assert (=> b!718030 m!673857))

(declare-fun m!673859 () Bool)

(assert (=> b!718030 m!673859))

(assert (=> b!718030 m!673833))

(declare-fun m!673861 () Bool)

(assert (=> b!718030 m!673861))

(assert (=> b!718033 m!673833))

(assert (=> b!718033 m!673833))

(assert (=> b!718033 m!673835))

(declare-fun m!673863 () Bool)

(assert (=> bm!34725 m!673863))

(assert (=> b!717895 d!98915))

(declare-fun d!98923 () Bool)

(assert (=> d!98923 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!63906 d!98923))

(declare-fun d!98937 () Bool)

(assert (=> d!98937 (= (array_inv!15218 a!3186) (bvsge (size!19865 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!63906 d!98937))

(declare-fun d!98939 () Bool)

(declare-fun res!480692 () Bool)

(declare-fun e!403181 () Bool)

(assert (=> d!98939 (=> res!480692 e!403181)))

(assert (=> d!98939 (= res!480692 (= (select (arr!19444 a!3186) #b00000000000000000000000000000000) k0!2102))))

(assert (=> d!98939 (= (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000) e!403181)))

(declare-fun b!718054 () Bool)

(declare-fun e!403182 () Bool)

(assert (=> b!718054 (= e!403181 e!403182)))

(declare-fun res!480693 () Bool)

(assert (=> b!718054 (=> (not res!480693) (not e!403182))))

(assert (=> b!718054 (= res!480693 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19865 a!3186)))))

(declare-fun b!718055 () Bool)

(assert (=> b!718055 (= e!403182 (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!98939 (not res!480692)) b!718054))

(assert (= (and b!718054 res!480693) b!718055))

(assert (=> d!98939 m!673833))

(declare-fun m!673875 () Bool)

(assert (=> b!718055 m!673875))

(assert (=> b!717890 d!98939))

(check-sat (not bm!34722) (not d!98895) (not b!717993) (not b!717995) (not bm!34725) (not b!717961) (not b!718055) (not b!718033) (not b!718030) (not b!717992))
(check-sat)
