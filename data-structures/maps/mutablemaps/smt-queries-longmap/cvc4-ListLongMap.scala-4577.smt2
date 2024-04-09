; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63908 () Bool)

(assert start!63908)

(declare-fun b!717913 () Bool)

(declare-fun res!480628 () Bool)

(declare-fun e!403081 () Bool)

(assert (=> b!717913 (=> (not res!480628) (not e!403081))))

(declare-datatypes ((array!40640 0))(
  ( (array!40641 (arr!19445 (Array (_ BitVec 32) (_ BitVec 64))) (size!19866 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40640)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!717913 (= res!480628 (and (= (size!19866 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19866 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19866 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!717914 () Bool)

(declare-fun res!480629 () Bool)

(declare-fun e!403083 () Bool)

(assert (=> b!717914 (=> (not res!480629) (not e!403083))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40640 (_ BitVec 32)) Bool)

(assert (=> b!717914 (= res!480629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!717915 () Bool)

(declare-fun res!480625 () Bool)

(assert (=> b!717915 (=> (not res!480625) (not e!403083))))

(declare-datatypes ((List!13500 0))(
  ( (Nil!13497) (Cons!13496 (h!14541 (_ BitVec 64)) (t!19823 List!13500)) )
))
(declare-fun arrayNoDuplicates!0 (array!40640 (_ BitVec 32) List!13500) Bool)

(assert (=> b!717915 (= res!480625 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13497))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun b!717916 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!717916 (= e!403083 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19866 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19866 a!3186)) (bvsge mask!3328 #b00000000000000000000000000000000) (bvsgt mask!3328 #b00111111111111111111111111111111)))))

(declare-fun b!717917 () Bool)

(assert (=> b!717917 (= e!403081 e!403083)))

(declare-fun res!480627 () Bool)

(assert (=> b!717917 (=> (not res!480627) (not e!403083))))

(declare-datatypes ((SeekEntryResult!7052 0))(
  ( (MissingZero!7052 (index!30575 (_ BitVec 32))) (Found!7052 (index!30576 (_ BitVec 32))) (Intermediate!7052 (undefined!7864 Bool) (index!30577 (_ BitVec 32)) (x!61617 (_ BitVec 32))) (Undefined!7052) (MissingVacant!7052 (index!30578 (_ BitVec 32))) )
))
(declare-fun lt!319217 () SeekEntryResult!7052)

(assert (=> b!717917 (= res!480627 (or (= lt!319217 (MissingZero!7052 i!1173)) (= lt!319217 (MissingVacant!7052 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40640 (_ BitVec 32)) SeekEntryResult!7052)

(assert (=> b!717917 (= lt!319217 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!717918 () Bool)

(declare-fun res!480624 () Bool)

(assert (=> b!717918 (=> (not res!480624) (not e!403081))))

(declare-fun arrayContainsKey!0 (array!40640 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!717918 (= res!480624 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun res!480623 () Bool)

(assert (=> start!63908 (=> (not res!480623) (not e!403081))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63908 (= res!480623 (validMask!0 mask!3328))))

(assert (=> start!63908 e!403081))

(assert (=> start!63908 true))

(declare-fun array_inv!15219 (array!40640) Bool)

(assert (=> start!63908 (array_inv!15219 a!3186)))

(declare-fun b!717919 () Bool)

(declare-fun res!480630 () Bool)

(assert (=> b!717919 (=> (not res!480630) (not e!403081))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!717919 (= res!480630 (validKeyInArray!0 (select (arr!19445 a!3186) j!159)))))

(declare-fun b!717920 () Bool)

(declare-fun res!480626 () Bool)

(assert (=> b!717920 (=> (not res!480626) (not e!403081))))

(assert (=> b!717920 (= res!480626 (validKeyInArray!0 k!2102))))

(assert (= (and start!63908 res!480623) b!717913))

(assert (= (and b!717913 res!480628) b!717919))

(assert (= (and b!717919 res!480630) b!717920))

(assert (= (and b!717920 res!480626) b!717918))

(assert (= (and b!717918 res!480624) b!717917))

(assert (= (and b!717917 res!480627) b!717914))

(assert (= (and b!717914 res!480629) b!717915))

(assert (= (and b!717915 res!480625) b!717916))

(declare-fun m!673777 () Bool)

(assert (=> b!717919 m!673777))

(assert (=> b!717919 m!673777))

(declare-fun m!673779 () Bool)

(assert (=> b!717919 m!673779))

(declare-fun m!673781 () Bool)

(assert (=> start!63908 m!673781))

(declare-fun m!673783 () Bool)

(assert (=> start!63908 m!673783))

(declare-fun m!673785 () Bool)

(assert (=> b!717917 m!673785))

(declare-fun m!673787 () Bool)

(assert (=> b!717920 m!673787))

(declare-fun m!673789 () Bool)

(assert (=> b!717914 m!673789))

(declare-fun m!673791 () Bool)

(assert (=> b!717915 m!673791))

(declare-fun m!673793 () Bool)

(assert (=> b!717918 m!673793))

(push 1)

(assert (not start!63908))

(assert (not b!717919))

(assert (not b!717918))

(assert (not b!717915))

(assert (not b!717914))

(assert (not b!717920))

(assert (not b!717917))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!717956 () Bool)

(declare-fun e!403109 () Bool)

(declare-fun e!403108 () Bool)

(assert (=> b!717956 (= e!403109 e!403108)))

(declare-fun lt!319232 () (_ BitVec 64))

(assert (=> b!717956 (= lt!319232 (select (arr!19445 a!3186) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!24634 0))(
  ( (Unit!24635) )
))
(declare-fun lt!319230 () Unit!24634)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!40640 (_ BitVec 64) (_ BitVec 32)) Unit!24634)

(assert (=> b!717956 (= lt!319230 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!319232 #b00000000000000000000000000000000))))

(assert (=> b!717956 (arrayContainsKey!0 a!3186 lt!319232 #b00000000000000000000000000000000)))

(declare-fun lt!319231 () Unit!24634)

(assert (=> b!717956 (= lt!319231 lt!319230)))

(declare-fun res!480644 () Bool)

(assert (=> b!717956 (= res!480644 (= (seekEntryOrOpen!0 (select (arr!19445 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7052 #b00000000000000000000000000000000)))))

(assert (=> b!717956 (=> (not res!480644) (not e!403108))))

(declare-fun d!98899 () Bool)

(declare-fun res!480645 () Bool)

(declare-fun e!403110 () Bool)

(assert (=> d!98899 (=> res!480645 e!403110)))

(assert (=> d!98899 (= res!480645 (bvsge #b00000000000000000000000000000000 (size!19866 a!3186)))))

(assert (=> d!98899 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!403110)))

(declare-fun b!717957 () Bool)

(declare-fun call!34719 () Bool)

(assert (=> b!717957 (= e!403108 call!34719)))

(declare-fun bm!34716 () Bool)

(assert (=> bm!34716 (= call!34719 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!717958 () Bool)

(assert (=> b!717958 (= e!403110 e!403109)))

(declare-fun c!79023 () Bool)

(assert (=> b!717958 (= c!79023 (validKeyInArray!0 (select (arr!19445 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!717959 () Bool)

(assert (=> b!717959 (= e!403109 call!34719)))

(assert (= (and d!98899 (not res!480645)) b!717958))

(assert (= (and b!717958 c!79023) b!717956))

(assert (= (and b!717958 (not c!79023)) b!717959))

(assert (= (and b!717956 res!480644) b!717957))

(assert (= (or b!717957 b!717959) bm!34716))

(declare-fun m!673803 () Bool)

(assert (=> b!717956 m!673803))

(declare-fun m!673805 () Bool)

(assert (=> b!717956 m!673805))

(declare-fun m!673807 () Bool)

(assert (=> b!717956 m!673807))

(assert (=> b!717956 m!673803))

(declare-fun m!673809 () Bool)

(assert (=> b!717956 m!673809))

(declare-fun m!673811 () Bool)

(assert (=> bm!34716 m!673811))

(assert (=> b!717958 m!673803))

(assert (=> b!717958 m!673803))

(declare-fun m!673813 () Bool)

(assert (=> b!717958 m!673813))

(assert (=> b!717914 d!98899))

(declare-fun b!717976 () Bool)

(declare-fun e!403123 () Bool)

(declare-fun e!403125 () Bool)

(assert (=> b!717976 (= e!403123 e!403125)))

(declare-fun c!79029 () Bool)

(assert (=> b!717976 (= c!79029 (validKeyInArray!0 (select (arr!19445 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!34719 () Bool)

(declare-fun call!34722 () Bool)

(assert (=> bm!34719 (= call!34722 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!79029 (Cons!13496 (select (arr!19445 a!3186) #b00000000000000000000000000000000) Nil!13497) Nil!13497)))))

(declare-fun b!717977 () Bool)

(declare-fun e!403124 () Bool)

(declare-fun contains!4036 (List!13500 (_ BitVec 64)) Bool)

(assert (=> b!717977 (= e!403124 (contains!4036 Nil!13497 (select (arr!19445 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!98903 () Bool)

(declare-fun res!480654 () Bool)

(declare-fun e!403122 () Bool)

(assert (=> d!98903 (=> res!480654 e!403122)))

(assert (=> d!98903 (= res!480654 (bvsge #b00000000000000000000000000000000 (size!19866 a!3186)))))

(assert (=> d!98903 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13497) e!403122)))

(declare-fun b!717978 () Bool)

(assert (=> b!717978 (= e!403125 call!34722)))

(declare-fun b!717979 () Bool)

(assert (=> b!717979 (= e!403122 e!403123)))

(declare-fun res!480653 () Bool)

(assert (=> b!717979 (=> (not res!480653) (not e!403123))))

(assert (=> b!717979 (= res!480653 (not e!403124))))

(declare-fun res!480652 () Bool)

(assert (=> b!717979 (=> (not res!480652) (not e!403124))))

(assert (=> b!717979 (= res!480652 (validKeyInArray!0 (select (arr!19445 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!717980 () Bool)

(assert (=> b!717980 (= e!403125 call!34722)))

(assert (= (and d!98903 (not res!480654)) b!717979))

(assert (= (and b!717979 res!480652) b!717977))

(assert (= (and b!717979 res!480653) b!717976))

(assert (= (and b!717976 c!79029) b!717978))

(assert (= (and b!717976 (not c!79029)) b!717980))

(assert (= (or b!717978 b!717980) bm!34719))

(assert (=> b!717976 m!673803))

(assert (=> b!717976 m!673803))

(assert (=> b!717976 m!673813))

(assert (=> bm!34719 m!673803))

(declare-fun m!673829 () Bool)

(assert (=> bm!34719 m!673829))

(assert (=> b!717977 m!673803))

(assert (=> b!717977 m!673803))

(declare-fun m!673831 () Bool)

(assert (=> b!717977 m!673831))

(assert (=> b!717979 m!673803))

(assert (=> b!717979 m!673803))

(assert (=> b!717979 m!673813))

(assert (=> b!717915 d!98903))

(declare-fun d!98907 () Bool)

(assert (=> d!98907 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!717920 d!98907))

(declare-fun b!718022 () Bool)

(declare-fun c!79043 () Bool)

(declare-fun lt!319250 () (_ BitVec 64))

(assert (=> b!718022 (= c!79043 (= lt!319250 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!403157 () SeekEntryResult!7052)

(declare-fun e!403158 () SeekEntryResult!7052)

(assert (=> b!718022 (= e!403157 e!403158)))

(declare-fun d!98909 () Bool)

(declare-fun lt!319249 () SeekEntryResult!7052)

(assert (=> d!98909 (and (or (is-Undefined!7052 lt!319249) (not (is-Found!7052 lt!319249)) (and (bvsge (index!30576 lt!319249) #b00000000000000000000000000000000) (bvslt (index!30576 lt!319249) (size!19866 a!3186)))) (or (is-Undefined!7052 lt!319249) (is-Found!7052 lt!319249) (not (is-MissingZero!7052 lt!319249)) (and (bvsge (index!30575 lt!319249) #b00000000000000000000000000000000) (bvslt (index!30575 lt!319249) (size!19866 a!3186)))) (or (is-Undefined!7052 lt!319249) (is-Found!7052 lt!319249) (is-MissingZero!7052 lt!319249) (not (is-MissingVacant!7052 lt!319249)) (and (bvsge (index!30578 lt!319249) #b00000000000000000000000000000000) (bvslt (index!30578 lt!319249) (size!19866 a!3186)))) (or (is-Undefined!7052 lt!319249) (ite (is-Found!7052 lt!319249) (= (select (arr!19445 a!3186) (index!30576 lt!319249)) k!2102) (ite (is-MissingZero!7052 lt!319249) (= (select (arr!19445 a!3186) (index!30575 lt!319249)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7052 lt!319249) (= (select (arr!19445 a!3186) (index!30578 lt!319249)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!403156 () SeekEntryResult!7052)

(assert (=> d!98909 (= lt!319249 e!403156)))

(declare-fun c!79042 () Bool)

(declare-fun lt!319248 () SeekEntryResult!7052)

(assert (=> d!98909 (= c!79042 (and (is-Intermediate!7052 lt!319248) (undefined!7864 lt!319248)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40640 (_ BitVec 32)) SeekEntryResult!7052)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!98909 (= lt!319248 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!98909 (validMask!0 mask!3328)))

(assert (=> d!98909 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!319249)))

(declare-fun b!718023 () Bool)

(assert (=> b!718023 (= e!403156 Undefined!7052)))

(declare-fun b!718024 () Bool)

(assert (=> b!718024 (= e!403158 (MissingZero!7052 (index!30577 lt!319248)))))

(declare-fun b!718025 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40640 (_ BitVec 32)) SeekEntryResult!7052)

(assert (=> b!718025 (= e!403158 (seekKeyOrZeroReturnVacant!0 (x!61617 lt!319248) (index!30577 lt!319248) (index!30577 lt!319248) k!2102 a!3186 mask!3328))))

(declare-fun b!718026 () Bool)

(assert (=> b!718026 (= e!403157 (Found!7052 (index!30577 lt!319248)))))

(declare-fun b!718027 () Bool)

(assert (=> b!718027 (= e!403156 e!403157)))

(assert (=> b!718027 (= lt!319250 (select (arr!19445 a!3186) (index!30577 lt!319248)))))

(declare-fun c!79041 () Bool)

(assert (=> b!718027 (= c!79041 (= lt!319250 k!2102))))

(assert (= (and d!98909 c!79042) b!718023))

(assert (= (and d!98909 (not c!79042)) b!718027))

(assert (= (and b!718027 c!79041) b!718026))

(assert (= (and b!718027 (not c!79041)) b!718022))

(assert (= (and b!718022 c!79043) b!718024))

(assert (= (and b!718022 (not c!79043)) b!718025))

(declare-fun m!673843 () Bool)

(assert (=> d!98909 m!673843))

(declare-fun m!673845 () Bool)

(assert (=> d!98909 m!673845))

(declare-fun m!673847 () Bool)

(assert (=> d!98909 m!673847))

(declare-fun m!673849 () Bool)

(assert (=> d!98909 m!673849))

(assert (=> d!98909 m!673781))

(assert (=> d!98909 m!673849))

(declare-fun m!673851 () Bool)

(assert (=> d!98909 m!673851))

(declare-fun m!673853 () Bool)

(assert (=> b!718025 m!673853))

(declare-fun m!673855 () Bool)

(assert (=> b!718027 m!673855))

(assert (=> b!717917 d!98909))

(declare-fun d!98921 () Bool)

(declare-fun res!480684 () Bool)

(declare-fun e!403172 () Bool)

(assert (=> d!98921 (=> res!480684 e!403172)))

(assert (=> d!98921 (= res!480684 (= (select (arr!19445 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!98921 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!403172)))

(declare-fun b!718044 () Bool)

(declare-fun e!403173 () Bool)

(assert (=> b!718044 (= e!403172 e!403173)))

(declare-fun res!480685 () Bool)

(assert (=> b!718044 (=> (not res!480685) (not e!403173))))

(assert (=> b!718044 (= res!480685 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19866 a!3186)))))

(declare-fun b!718045 () Bool)

(assert (=> b!718045 (= e!403173 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!98921 (not res!480684)) b!718044))

(assert (= (and b!718044 res!480685) b!718045))

(assert (=> d!98921 m!673803))

(declare-fun m!673865 () Bool)

(assert (=> b!718045 m!673865))

(assert (=> b!717918 d!98921))

(declare-fun d!98925 () Bool)

(assert (=> d!98925 (= (validKeyInArray!0 (select (arr!19445 a!3186) j!159)) (and (not (= (select (arr!19445 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19445 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!717919 d!98925))

(declare-fun d!98927 () Bool)

(assert (=> d!98927 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!63908 d!98927))

(declare-fun d!98935 () Bool)

(assert (=> d!98935 (= (array_inv!15219 a!3186) (bvsge (size!19866 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!63908 d!98935))

(push 1)

