; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63904 () Bool)

(assert start!63904)

(declare-fun b!717865 () Bool)

(declare-fun res!480578 () Bool)

(declare-fun e!403063 () Bool)

(assert (=> b!717865 (=> (not res!480578) (not e!403063))))

(declare-datatypes ((array!40636 0))(
  ( (array!40637 (arr!19443 (Array (_ BitVec 32) (_ BitVec 64))) (size!19864 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40636)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40636 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!717865 (= res!480578 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!717866 () Bool)

(declare-fun res!480580 () Bool)

(assert (=> b!717866 (=> (not res!480580) (not e!403063))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!717866 (= res!480580 (validKeyInArray!0 k!2102))))

(declare-fun b!717867 () Bool)

(declare-fun e!403065 () Bool)

(assert (=> b!717867 (= e!403063 e!403065)))

(declare-fun res!480577 () Bool)

(assert (=> b!717867 (=> (not res!480577) (not e!403065))))

(declare-datatypes ((SeekEntryResult!7050 0))(
  ( (MissingZero!7050 (index!30567 (_ BitVec 32))) (Found!7050 (index!30568 (_ BitVec 32))) (Intermediate!7050 (undefined!7862 Bool) (index!30569 (_ BitVec 32)) (x!61615 (_ BitVec 32))) (Undefined!7050) (MissingVacant!7050 (index!30570 (_ BitVec 32))) )
))
(declare-fun lt!319211 () SeekEntryResult!7050)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!717867 (= res!480577 (or (= lt!319211 (MissingZero!7050 i!1173)) (= lt!319211 (MissingVacant!7050 i!1173))))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40636 (_ BitVec 32)) SeekEntryResult!7050)

(assert (=> b!717867 (= lt!319211 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!717868 () Bool)

(declare-fun res!480575 () Bool)

(assert (=> b!717868 (=> (not res!480575) (not e!403063))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!717868 (= res!480575 (and (= (size!19864 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19864 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19864 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!717869 () Bool)

(declare-fun res!480576 () Bool)

(assert (=> b!717869 (=> (not res!480576) (not e!403065))))

(declare-datatypes ((List!13498 0))(
  ( (Nil!13495) (Cons!13494 (h!14539 (_ BitVec 64)) (t!19821 List!13498)) )
))
(declare-fun arrayNoDuplicates!0 (array!40636 (_ BitVec 32) List!13498) Bool)

(assert (=> b!717869 (= res!480576 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13495))))

(declare-fun res!480581 () Bool)

(assert (=> start!63904 (=> (not res!480581) (not e!403063))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63904 (= res!480581 (validMask!0 mask!3328))))

(assert (=> start!63904 e!403063))

(assert (=> start!63904 true))

(declare-fun array_inv!15217 (array!40636) Bool)

(assert (=> start!63904 (array_inv!15217 a!3186)))

(declare-fun b!717870 () Bool)

(declare-fun res!480582 () Bool)

(assert (=> b!717870 (=> (not res!480582) (not e!403065))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40636 (_ BitVec 32)) Bool)

(assert (=> b!717870 (= res!480582 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!717871 () Bool)

(declare-fun res!480579 () Bool)

(assert (=> b!717871 (=> (not res!480579) (not e!403063))))

(assert (=> b!717871 (= res!480579 (validKeyInArray!0 (select (arr!19443 a!3186) j!159)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!717872 () Bool)

(assert (=> b!717872 (= e!403065 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19864 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19864 a!3186)) (bvsge mask!3328 #b00000000000000000000000000000000) (bvsgt mask!3328 #b00111111111111111111111111111111)))))

(assert (= (and start!63904 res!480581) b!717868))

(assert (= (and b!717868 res!480575) b!717871))

(assert (= (and b!717871 res!480579) b!717866))

(assert (= (and b!717866 res!480580) b!717865))

(assert (= (and b!717865 res!480578) b!717867))

(assert (= (and b!717867 res!480577) b!717870))

(assert (= (and b!717870 res!480582) b!717869))

(assert (= (and b!717869 res!480576) b!717872))

(declare-fun m!673741 () Bool)

(assert (=> b!717866 m!673741))

(declare-fun m!673743 () Bool)

(assert (=> b!717871 m!673743))

(assert (=> b!717871 m!673743))

(declare-fun m!673745 () Bool)

(assert (=> b!717871 m!673745))

(declare-fun m!673747 () Bool)

(assert (=> b!717865 m!673747))

(declare-fun m!673749 () Bool)

(assert (=> b!717867 m!673749))

(declare-fun m!673751 () Bool)

(assert (=> b!717870 m!673751))

(declare-fun m!673753 () Bool)

(assert (=> b!717869 m!673753))

(declare-fun m!673755 () Bool)

(assert (=> start!63904 m!673755))

(declare-fun m!673757 () Bool)

(assert (=> start!63904 m!673757))

(push 1)

(assert (not b!717871))

(assert (not start!63904))

(assert (not b!717869))

(assert (not b!717870))

(assert (not b!717867))

(assert (not b!717866))

(assert (not b!717865))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!34715 () Bool)

(declare-fun call!34718 () Bool)

(declare-fun c!79022 () Bool)

(assert (=> bm!34715 (= call!34718 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!79022 (Cons!13494 (select (arr!19443 a!3186) #b00000000000000000000000000000000) Nil!13495) Nil!13495)))))

(declare-fun d!98897 () Bool)

(declare-fun res!480641 () Bool)

(declare-fun e!403104 () Bool)

(assert (=> d!98897 (=> res!480641 e!403104)))

(assert (=> d!98897 (= res!480641 (bvsge #b00000000000000000000000000000000 (size!19864 a!3186)))))

(assert (=> d!98897 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13495) e!403104)))

(declare-fun b!717951 () Bool)

(declare-fun e!403107 () Bool)

(declare-fun contains!4038 (List!13498 (_ BitVec 64)) Bool)

(assert (=> b!717951 (= e!403107 (contains!4038 Nil!13495 (select (arr!19443 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!717952 () Bool)

(declare-fun e!403105 () Bool)

(declare-fun e!403106 () Bool)

(assert (=> b!717952 (= e!403105 e!403106)))

(assert (=> b!717952 (= c!79022 (validKeyInArray!0 (select (arr!19443 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!717953 () Bool)

(assert (=> b!717953 (= e!403106 call!34718)))

(declare-fun b!717954 () Bool)

(assert (=> b!717954 (= e!403106 call!34718)))

(declare-fun b!717955 () Bool)

(assert (=> b!717955 (= e!403104 e!403105)))

(declare-fun res!480643 () Bool)

(assert (=> b!717955 (=> (not res!480643) (not e!403105))))

(assert (=> b!717955 (= res!480643 (not e!403107))))

(declare-fun res!480642 () Bool)

(assert (=> b!717955 (=> (not res!480642) (not e!403107))))

(assert (=> b!717955 (= res!480642 (validKeyInArray!0 (select (arr!19443 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!98897 (not res!480641)) b!717955))

(assert (= (and b!717955 res!480642) b!717951))

(assert (= (and b!717955 res!480643) b!717952))

(assert (= (and b!717952 c!79022) b!717954))

(assert (= (and b!717952 (not c!79022)) b!717953))

(assert (= (or b!717954 b!717953) bm!34715))

(declare-fun m!673795 () Bool)

(assert (=> bm!34715 m!673795))

(declare-fun m!673797 () Bool)

(assert (=> bm!34715 m!673797))

(assert (=> b!717951 m!673795))

(assert (=> b!717951 m!673795))

(declare-fun m!673799 () Bool)

(assert (=> b!717951 m!673799))

(assert (=> b!717952 m!673795))

(assert (=> b!717952 m!673795))

(declare-fun m!673801 () Bool)

(assert (=> b!717952 m!673801))

(assert (=> b!717955 m!673795))

(assert (=> b!717955 m!673795))

(assert (=> b!717955 m!673801))

(assert (=> b!717869 d!98897))

(declare-fun d!98901 () Bool)

(assert (=> d!98901 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!63904 d!98901))

(declare-fun d!98913 () Bool)

(assert (=> d!98913 (= (array_inv!15217 a!3186) (bvsge (size!19864 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!63904 d!98913))

(declare-fun d!98917 () Bool)

(declare-fun res!480668 () Bool)

(declare-fun e!403142 () Bool)

(assert (=> d!98917 (=> res!480668 e!403142)))

(assert (=> d!98917 (= res!480668 (= (select (arr!19443 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!98917 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!403142)))

(declare-fun b!718000 () Bool)

(declare-fun e!403143 () Bool)

(assert (=> b!718000 (= e!403142 e!403143)))

(declare-fun res!480669 () Bool)

(assert (=> b!718000 (=> (not res!480669) (not e!403143))))

(assert (=> b!718000 (= res!480669 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19864 a!3186)))))

(declare-fun b!718001 () Bool)

(assert (=> b!718001 (= e!403143 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!98917 (not res!480668)) b!718000))

(assert (= (and b!718000 res!480669) b!718001))

(assert (=> d!98917 m!673795))

(declare-fun m!673841 () Bool)

(assert (=> b!718001 m!673841))

(assert (=> b!717865 d!98917))

(declare-fun bm!34728 () Bool)

(declare-fun call!34731 () Bool)

(assert (=> bm!34728 (= call!34731 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun d!98919 () Bool)

(declare-fun res!480686 () Bool)

(declare-fun e!403174 () Bool)

(assert (=> d!98919 (=> res!480686 e!403174)))

(assert (=> d!98919 (= res!480686 (bvsge #b00000000000000000000000000000000 (size!19864 a!3186)))))

(assert (=> d!98919 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!403174)))

(declare-fun b!718046 () Bool)

(declare-fun e!403175 () Bool)

(assert (=> b!718046 (= e!403175 call!34731)))

(declare-fun b!718047 () Bool)

(declare-fun e!403176 () Bool)

(assert (=> b!718047 (= e!403175 e!403176)))

(declare-fun lt!319262 () (_ BitVec 64))

(assert (=> b!718047 (= lt!319262 (select (arr!19443 a!3186) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!24638 0))(
  ( (Unit!24639) )
))
(declare-fun lt!319261 () Unit!24638)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!40636 (_ BitVec 64) (_ BitVec 32)) Unit!24638)

(assert (=> b!718047 (= lt!319261 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!319262 #b00000000000000000000000000000000))))

(assert (=> b!718047 (arrayContainsKey!0 a!3186 lt!319262 #b00000000000000000000000000000000)))

(declare-fun lt!319260 () Unit!24638)

(assert (=> b!718047 (= lt!319260 lt!319261)))

(declare-fun res!480687 () Bool)

(assert (=> b!718047 (= res!480687 (= (seekEntryOrOpen!0 (select (arr!19443 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7050 #b00000000000000000000000000000000)))))

(assert (=> b!718047 (=> (not res!480687) (not e!403176))))

(declare-fun b!718048 () Bool)

(assert (=> b!718048 (= e!403176 call!34731)))

(declare-fun b!718049 () Bool)

(assert (=> b!718049 (= e!403174 e!403175)))

(declare-fun c!79047 () Bool)

(assert (=> b!718049 (= c!79047 (validKeyInArray!0 (select (arr!19443 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!98919 (not res!480686)) b!718049))

(assert (= (and b!718049 c!79047) b!718047))

(assert (= (and b!718049 (not c!79047)) b!718046))

(assert (= (and b!718047 res!480687) b!718048))

(assert (= (or b!718048 b!718046) bm!34728))

(declare-fun m!673867 () Bool)

(assert (=> bm!34728 m!673867))

(assert (=> b!718047 m!673795))

(declare-fun m!673869 () Bool)

(assert (=> b!718047 m!673869))

(declare-fun m!673871 () Bool)

(assert (=> b!718047 m!673871))

(assert (=> b!718047 m!673795))

(declare-fun m!673873 () Bool)

(assert (=> b!718047 m!673873))

(assert (=> b!718049 m!673795))

(assert (=> b!718049 m!673795))

(assert (=> b!718049 m!673801))

(assert (=> b!717870 d!98919))

(declare-fun d!98929 () Bool)

(assert (=> d!98929 (= (validKeyInArray!0 (select (arr!19443 a!3186) j!159)) (and (not (= (select (arr!19443 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19443 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!717871 d!98929))

(declare-fun d!98931 () Bool)

(assert (=> d!98931 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!717866 d!98931))

(declare-fun b!718068 () Bool)

(declare-fun e!403191 () SeekEntryResult!7050)

(declare-fun lt!319271 () SeekEntryResult!7050)

(assert (=> b!718068 (= e!403191 (Found!7050 (index!30569 lt!319271)))))

