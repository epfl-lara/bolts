; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60908 () Bool)

(assert start!60908)

(declare-fun b!683057 () Bool)

(declare-fun e!389081 () Bool)

(declare-datatypes ((List!13046 0))(
  ( (Nil!13043) (Cons!13042 (h!14087 (_ BitVec 64)) (t!19297 List!13046)) )
))
(declare-fun acc!681 () List!13046)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3589 (List!13046 (_ BitVec 64)) Bool)

(assert (=> b!683057 (= e!389081 (contains!3589 acc!681 k0!2843))))

(declare-fun b!683058 () Bool)

(declare-datatypes ((Unit!23997 0))(
  ( (Unit!23998) )
))
(declare-fun e!389080 () Unit!23997)

(declare-fun Unit!23999 () Unit!23997)

(assert (=> b!683058 (= e!389080 Unit!23999)))

(declare-fun res!449053 () Bool)

(declare-fun e!389077 () Bool)

(assert (=> start!60908 (=> (not res!449053) (not e!389077))))

(declare-datatypes ((array!39548 0))(
  ( (array!39549 (arr!18952 (Array (_ BitVec 32) (_ BitVec 64))) (size!19316 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39548)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!60908 (= res!449053 (and (bvslt (size!19316 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19316 a!3626))))))

(assert (=> start!60908 e!389077))

(assert (=> start!60908 true))

(declare-fun array_inv!14726 (array!39548) Bool)

(assert (=> start!60908 (array_inv!14726 a!3626)))

(declare-fun b!683059 () Bool)

(declare-fun e!389078 () Bool)

(assert (=> b!683059 (= e!389078 (not (contains!3589 acc!681 k0!2843)))))

(declare-fun b!683060 () Bool)

(declare-fun res!449049 () Bool)

(assert (=> b!683060 (=> (not res!449049) (not e!389077))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!683060 (= res!449049 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19316 a!3626))))))

(declare-fun b!683061 () Bool)

(declare-fun e!389079 () Bool)

(assert (=> b!683061 (= e!389077 (not e!389079))))

(declare-fun res!449052 () Bool)

(assert (=> b!683061 (=> res!449052 e!389079)))

(assert (=> b!683061 (= res!449052 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun lt!313787 () List!13046)

(declare-fun -!139 (List!13046 (_ BitVec 64)) List!13046)

(assert (=> b!683061 (= (-!139 lt!313787 k0!2843) acc!681)))

(declare-fun $colon$colon!338 (List!13046 (_ BitVec 64)) List!13046)

(assert (=> b!683061 (= lt!313787 ($colon$colon!338 acc!681 k0!2843))))

(declare-fun lt!313788 () Unit!23997)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13046) Unit!23997)

(assert (=> b!683061 (= lt!313788 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(declare-fun subseq!174 (List!13046 List!13046) Bool)

(assert (=> b!683061 (subseq!174 acc!681 acc!681)))

(declare-fun lt!313782 () Unit!23997)

(declare-fun lemmaListSubSeqRefl!0 (List!13046) Unit!23997)

(assert (=> b!683061 (= lt!313782 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun arrayNoDuplicates!0 (array!39548 (_ BitVec 32) List!13046) Bool)

(assert (=> b!683061 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!313785 () Unit!23997)

(assert (=> b!683061 (= lt!313785 e!389080)))

(declare-fun c!77375 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!683061 (= c!77375 (validKeyInArray!0 (select (arr!18952 a!3626) from!3004)))))

(declare-fun lt!313781 () Unit!23997)

(declare-fun e!389082 () Unit!23997)

(assert (=> b!683061 (= lt!313781 e!389082)))

(declare-fun c!77374 () Bool)

(declare-fun arrayContainsKey!0 (array!39548 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!683061 (= c!77374 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!683061 (arrayContainsKey!0 (array!39549 (store (arr!18952 a!3626) i!1382 k0!2843) (size!19316 a!3626)) k0!2843 from!3004)))

(declare-fun b!683062 () Bool)

(declare-fun lt!313786 () Unit!23997)

(assert (=> b!683062 (= e!389080 lt!313786)))

(declare-fun lt!313783 () Unit!23997)

(assert (=> b!683062 (= lt!313783 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!683062 (subseq!174 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39548 List!13046 List!13046 (_ BitVec 32)) Unit!23997)

(assert (=> b!683062 (= lt!313786 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!338 acc!681 (select (arr!18952 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!683062 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!683063 () Bool)

(declare-fun res!449045 () Bool)

(assert (=> b!683063 (=> (not res!449045) (not e!389077))))

(assert (=> b!683063 (= res!449045 (not (contains!3589 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!683064 () Bool)

(declare-fun res!449044 () Bool)

(assert (=> b!683064 (=> (not res!449044) (not e!389077))))

(assert (=> b!683064 (= res!449044 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!683065 () Bool)

(declare-fun res!449056 () Bool)

(assert (=> b!683065 (=> (not res!449056) (not e!389077))))

(declare-fun e!389083 () Bool)

(assert (=> b!683065 (= res!449056 e!389083)))

(declare-fun res!449048 () Bool)

(assert (=> b!683065 (=> res!449048 e!389083)))

(assert (=> b!683065 (= res!449048 e!389081)))

(declare-fun res!449055 () Bool)

(assert (=> b!683065 (=> (not res!449055) (not e!389081))))

(assert (=> b!683065 (= res!449055 (bvsgt from!3004 i!1382))))

(declare-fun b!683066 () Bool)

(declare-fun res!449043 () Bool)

(assert (=> b!683066 (=> (not res!449043) (not e!389077))))

(assert (=> b!683066 (= res!449043 (not (contains!3589 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!683067 () Bool)

(declare-fun res!449047 () Bool)

(assert (=> b!683067 (=> (not res!449047) (not e!389077))))

(declare-fun noDuplicate!836 (List!13046) Bool)

(assert (=> b!683067 (= res!449047 (noDuplicate!836 acc!681))))

(declare-fun b!683068 () Bool)

(assert (=> b!683068 (= e!389083 e!389078)))

(declare-fun res!449050 () Bool)

(assert (=> b!683068 (=> (not res!449050) (not e!389078))))

(assert (=> b!683068 (= res!449050 (bvsle from!3004 i!1382))))

(declare-fun b!683069 () Bool)

(declare-fun Unit!24000 () Unit!23997)

(assert (=> b!683069 (= e!389082 Unit!24000)))

(declare-fun b!683070 () Bool)

(declare-fun res!449054 () Bool)

(assert (=> b!683070 (=> (not res!449054) (not e!389077))))

(assert (=> b!683070 (= res!449054 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!683071 () Bool)

(declare-fun res!449051 () Bool)

(assert (=> b!683071 (=> (not res!449051) (not e!389077))))

(assert (=> b!683071 (= res!449051 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19316 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!683072 () Bool)

(declare-fun res!449057 () Bool)

(assert (=> b!683072 (=> (not res!449057) (not e!389077))))

(assert (=> b!683072 (= res!449057 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13043))))

(declare-fun b!683073 () Bool)

(declare-fun Unit!24001 () Unit!23997)

(assert (=> b!683073 (= e!389082 Unit!24001)))

(declare-fun lt!313784 () Unit!23997)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39548 (_ BitVec 64) (_ BitVec 32)) Unit!23997)

(assert (=> b!683073 (= lt!313784 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!683073 false))

(declare-fun b!683074 () Bool)

(assert (=> b!683074 (= e!389079 (noDuplicate!836 lt!313787))))

(declare-fun b!683075 () Bool)

(declare-fun res!449046 () Bool)

(assert (=> b!683075 (=> (not res!449046) (not e!389077))))

(assert (=> b!683075 (= res!449046 (validKeyInArray!0 k0!2843))))

(assert (= (and start!60908 res!449053) b!683067))

(assert (= (and b!683067 res!449047) b!683066))

(assert (= (and b!683066 res!449043) b!683063))

(assert (= (and b!683063 res!449045) b!683065))

(assert (= (and b!683065 res!449055) b!683057))

(assert (= (and b!683065 (not res!449048)) b!683068))

(assert (= (and b!683068 res!449050) b!683059))

(assert (= (and b!683065 res!449056) b!683072))

(assert (= (and b!683072 res!449057) b!683070))

(assert (= (and b!683070 res!449054) b!683060))

(assert (= (and b!683060 res!449049) b!683075))

(assert (= (and b!683075 res!449046) b!683064))

(assert (= (and b!683064 res!449044) b!683071))

(assert (= (and b!683071 res!449051) b!683061))

(assert (= (and b!683061 c!77374) b!683073))

(assert (= (and b!683061 (not c!77374)) b!683069))

(assert (= (and b!683061 c!77375) b!683062))

(assert (= (and b!683061 (not c!77375)) b!683058))

(assert (= (and b!683061 (not res!449052)) b!683074))

(declare-fun m!647691 () Bool)

(assert (=> b!683064 m!647691))

(declare-fun m!647693 () Bool)

(assert (=> b!683072 m!647693))

(declare-fun m!647695 () Bool)

(assert (=> b!683074 m!647695))

(declare-fun m!647697 () Bool)

(assert (=> b!683057 m!647697))

(assert (=> b!683059 m!647697))

(declare-fun m!647699 () Bool)

(assert (=> b!683070 m!647699))

(declare-fun m!647701 () Bool)

(assert (=> b!683062 m!647701))

(declare-fun m!647703 () Bool)

(assert (=> b!683062 m!647703))

(declare-fun m!647705 () Bool)

(assert (=> b!683062 m!647705))

(declare-fun m!647707 () Bool)

(assert (=> b!683062 m!647707))

(assert (=> b!683062 m!647703))

(assert (=> b!683062 m!647705))

(declare-fun m!647709 () Bool)

(assert (=> b!683062 m!647709))

(declare-fun m!647711 () Bool)

(assert (=> b!683062 m!647711))

(declare-fun m!647713 () Bool)

(assert (=> b!683067 m!647713))

(declare-fun m!647715 () Bool)

(assert (=> b!683073 m!647715))

(declare-fun m!647717 () Bool)

(assert (=> b!683063 m!647717))

(declare-fun m!647719 () Bool)

(assert (=> start!60908 m!647719))

(declare-fun m!647721 () Bool)

(assert (=> b!683066 m!647721))

(declare-fun m!647723 () Bool)

(assert (=> b!683075 m!647723))

(assert (=> b!683061 m!647701))

(assert (=> b!683061 m!647703))

(declare-fun m!647725 () Bool)

(assert (=> b!683061 m!647725))

(declare-fun m!647727 () Bool)

(assert (=> b!683061 m!647727))

(declare-fun m!647729 () Bool)

(assert (=> b!683061 m!647729))

(assert (=> b!683061 m!647709))

(declare-fun m!647731 () Bool)

(assert (=> b!683061 m!647731))

(declare-fun m!647733 () Bool)

(assert (=> b!683061 m!647733))

(assert (=> b!683061 m!647703))

(declare-fun m!647735 () Bool)

(assert (=> b!683061 m!647735))

(declare-fun m!647737 () Bool)

(assert (=> b!683061 m!647737))

(assert (=> b!683061 m!647711))

(check-sat (not b!683073) (not b!683072) (not b!683059) (not b!683070) (not b!683066) (not b!683074) (not start!60908) (not b!683061) (not b!683063) (not b!683064) (not b!683057) (not b!683075) (not b!683067) (not b!683062))
(check-sat)
(get-model)

(declare-fun d!94047 () Bool)

(assert (=> d!94047 (= (array_inv!14726 a!3626) (bvsge (size!19316 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!60908 d!94047))

(declare-fun d!94049 () Bool)

(declare-fun lt!313815 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!283 (List!13046) (InoxSet (_ BitVec 64)))

(assert (=> d!94049 (= lt!313815 (select (content!283 acc!681) k0!2843))))

(declare-fun e!389113 () Bool)

(assert (=> d!94049 (= lt!313815 e!389113)))

(declare-fun res!449107 () Bool)

(assert (=> d!94049 (=> (not res!449107) (not e!389113))))

(get-info :version)

(assert (=> d!94049 (= res!449107 ((_ is Cons!13042) acc!681))))

(assert (=> d!94049 (= (contains!3589 acc!681 k0!2843) lt!313815)))

(declare-fun b!683137 () Bool)

(declare-fun e!389112 () Bool)

(assert (=> b!683137 (= e!389113 e!389112)))

(declare-fun res!449108 () Bool)

(assert (=> b!683137 (=> res!449108 e!389112)))

(assert (=> b!683137 (= res!449108 (= (h!14087 acc!681) k0!2843))))

(declare-fun b!683138 () Bool)

(assert (=> b!683138 (= e!389112 (contains!3589 (t!19297 acc!681) k0!2843))))

(assert (= (and d!94049 res!449107) b!683137))

(assert (= (and b!683137 (not res!449108)) b!683138))

(declare-fun m!647787 () Bool)

(assert (=> d!94049 m!647787))

(declare-fun m!647789 () Bool)

(assert (=> d!94049 m!647789))

(declare-fun m!647791 () Bool)

(assert (=> b!683138 m!647791))

(assert (=> b!683057 d!94049))

(assert (=> b!683059 d!94049))

(declare-fun b!683149 () Bool)

(declare-fun e!389125 () Bool)

(declare-fun call!34004 () Bool)

(assert (=> b!683149 (= e!389125 call!34004)))

(declare-fun b!683150 () Bool)

(assert (=> b!683150 (= e!389125 call!34004)))

(declare-fun b!683151 () Bool)

(declare-fun e!389124 () Bool)

(declare-fun e!389123 () Bool)

(assert (=> b!683151 (= e!389124 e!389123)))

(declare-fun res!449116 () Bool)

(assert (=> b!683151 (=> (not res!449116) (not e!389123))))

(declare-fun e!389122 () Bool)

(assert (=> b!683151 (= res!449116 (not e!389122))))

(declare-fun res!449117 () Bool)

(assert (=> b!683151 (=> (not res!449117) (not e!389122))))

(assert (=> b!683151 (= res!449117 (validKeyInArray!0 (select (arr!18952 a!3626) from!3004)))))

(declare-fun d!94051 () Bool)

(declare-fun res!449115 () Bool)

(assert (=> d!94051 (=> res!449115 e!389124)))

(assert (=> d!94051 (= res!449115 (bvsge from!3004 (size!19316 a!3626)))))

(assert (=> d!94051 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!389124)))

(declare-fun b!683152 () Bool)

(assert (=> b!683152 (= e!389123 e!389125)))

(declare-fun c!77384 () Bool)

(assert (=> b!683152 (= c!77384 (validKeyInArray!0 (select (arr!18952 a!3626) from!3004)))))

(declare-fun bm!34001 () Bool)

(assert (=> bm!34001 (= call!34004 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77384 (Cons!13042 (select (arr!18952 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!683153 () Bool)

(assert (=> b!683153 (= e!389122 (contains!3589 acc!681 (select (arr!18952 a!3626) from!3004)))))

(assert (= (and d!94051 (not res!449115)) b!683151))

(assert (= (and b!683151 res!449117) b!683153))

(assert (= (and b!683151 res!449116) b!683152))

(assert (= (and b!683152 c!77384) b!683149))

(assert (= (and b!683152 (not c!77384)) b!683150))

(assert (= (or b!683149 b!683150) bm!34001))

(assert (=> b!683151 m!647703))

(assert (=> b!683151 m!647703))

(assert (=> b!683151 m!647735))

(assert (=> b!683152 m!647703))

(assert (=> b!683152 m!647703))

(assert (=> b!683152 m!647735))

(assert (=> bm!34001 m!647703))

(declare-fun m!647793 () Bool)

(assert (=> bm!34001 m!647793))

(assert (=> b!683153 m!647703))

(assert (=> b!683153 m!647703))

(declare-fun m!647795 () Bool)

(assert (=> b!683153 m!647795))

(assert (=> b!683070 d!94051))

(declare-fun d!94053 () Bool)

(declare-fun lt!313816 () Bool)

(assert (=> d!94053 (= lt!313816 (select (content!283 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!389127 () Bool)

(assert (=> d!94053 (= lt!313816 e!389127)))

(declare-fun res!449118 () Bool)

(assert (=> d!94053 (=> (not res!449118) (not e!389127))))

(assert (=> d!94053 (= res!449118 ((_ is Cons!13042) acc!681))))

(assert (=> d!94053 (= (contains!3589 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!313816)))

(declare-fun b!683154 () Bool)

(declare-fun e!389126 () Bool)

(assert (=> b!683154 (= e!389127 e!389126)))

(declare-fun res!449119 () Bool)

(assert (=> b!683154 (=> res!449119 e!389126)))

(assert (=> b!683154 (= res!449119 (= (h!14087 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!683155 () Bool)

(assert (=> b!683155 (= e!389126 (contains!3589 (t!19297 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94053 res!449118) b!683154))

(assert (= (and b!683154 (not res!449119)) b!683155))

(assert (=> d!94053 m!647787))

(declare-fun m!647797 () Bool)

(assert (=> d!94053 m!647797))

(declare-fun m!647799 () Bool)

(assert (=> b!683155 m!647799))

(assert (=> b!683066 d!94053))

(declare-fun d!94055 () Bool)

(declare-fun res!449124 () Bool)

(declare-fun e!389132 () Bool)

(assert (=> d!94055 (=> res!449124 e!389132)))

(assert (=> d!94055 (= res!449124 ((_ is Nil!13043) acc!681))))

(assert (=> d!94055 (= (noDuplicate!836 acc!681) e!389132)))

(declare-fun b!683160 () Bool)

(declare-fun e!389133 () Bool)

(assert (=> b!683160 (= e!389132 e!389133)))

(declare-fun res!449125 () Bool)

(assert (=> b!683160 (=> (not res!449125) (not e!389133))))

(assert (=> b!683160 (= res!449125 (not (contains!3589 (t!19297 acc!681) (h!14087 acc!681))))))

(declare-fun b!683161 () Bool)

(assert (=> b!683161 (= e!389133 (noDuplicate!836 (t!19297 acc!681)))))

(assert (= (and d!94055 (not res!449124)) b!683160))

(assert (= (and b!683160 res!449125) b!683161))

(declare-fun m!647801 () Bool)

(assert (=> b!683160 m!647801))

(declare-fun m!647803 () Bool)

(assert (=> b!683161 m!647803))

(assert (=> b!683067 d!94055))

(declare-fun d!94057 () Bool)

(declare-fun lt!313817 () Bool)

(assert (=> d!94057 (= lt!313817 (select (content!283 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!389135 () Bool)

(assert (=> d!94057 (= lt!313817 e!389135)))

(declare-fun res!449126 () Bool)

(assert (=> d!94057 (=> (not res!449126) (not e!389135))))

(assert (=> d!94057 (= res!449126 ((_ is Cons!13042) acc!681))))

(assert (=> d!94057 (= (contains!3589 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!313817)))

(declare-fun b!683162 () Bool)

(declare-fun e!389134 () Bool)

(assert (=> b!683162 (= e!389135 e!389134)))

(declare-fun res!449127 () Bool)

(assert (=> b!683162 (=> res!449127 e!389134)))

(assert (=> b!683162 (= res!449127 (= (h!14087 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!683163 () Bool)

(assert (=> b!683163 (= e!389134 (contains!3589 (t!19297 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94057 res!449126) b!683162))

(assert (= (and b!683162 (not res!449127)) b!683163))

(assert (=> d!94057 m!647787))

(declare-fun m!647805 () Bool)

(assert (=> d!94057 m!647805))

(declare-fun m!647807 () Bool)

(assert (=> b!683163 m!647807))

(assert (=> b!683063 d!94057))

(declare-fun d!94059 () Bool)

(declare-fun res!449128 () Bool)

(declare-fun e!389136 () Bool)

(assert (=> d!94059 (=> res!449128 e!389136)))

(assert (=> d!94059 (= res!449128 ((_ is Nil!13043) lt!313787))))

(assert (=> d!94059 (= (noDuplicate!836 lt!313787) e!389136)))

(declare-fun b!683164 () Bool)

(declare-fun e!389137 () Bool)

(assert (=> b!683164 (= e!389136 e!389137)))

(declare-fun res!449129 () Bool)

(assert (=> b!683164 (=> (not res!449129) (not e!389137))))

(assert (=> b!683164 (= res!449129 (not (contains!3589 (t!19297 lt!313787) (h!14087 lt!313787))))))

(declare-fun b!683165 () Bool)

(assert (=> b!683165 (= e!389137 (noDuplicate!836 (t!19297 lt!313787)))))

(assert (= (and d!94059 (not res!449128)) b!683164))

(assert (= (and b!683164 res!449129) b!683165))

(declare-fun m!647809 () Bool)

(assert (=> b!683164 m!647809))

(declare-fun m!647811 () Bool)

(assert (=> b!683165 m!647811))

(assert (=> b!683074 d!94059))

(declare-fun d!94061 () Bool)

(assert (=> d!94061 (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))

(declare-fun lt!313820 () Unit!23997)

(declare-fun choose!13 (array!39548 (_ BitVec 64) (_ BitVec 32)) Unit!23997)

(assert (=> d!94061 (= lt!313820 (choose!13 a!3626 k0!2843 from!3004))))

(assert (=> d!94061 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!94061 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004) lt!313820)))

(declare-fun bs!20039 () Bool)

(assert (= bs!20039 d!94061))

(assert (=> bs!20039 m!647691))

(declare-fun m!647813 () Bool)

(assert (=> bs!20039 m!647813))

(assert (=> b!683073 d!94061))

(declare-fun d!94063 () Bool)

(assert (=> d!94063 (= (validKeyInArray!0 k0!2843) (and (not (= k0!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!683075 d!94063))

(declare-fun d!94067 () Bool)

(declare-fun res!449140 () Bool)

(declare-fun e!389148 () Bool)

(assert (=> d!94067 (=> res!449140 e!389148)))

(assert (=> d!94067 (= res!449140 (= (select (arr!18952 a!3626) #b00000000000000000000000000000000) k0!2843))))

(assert (=> d!94067 (= (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000) e!389148)))

(declare-fun b!683176 () Bool)

(declare-fun e!389149 () Bool)

(assert (=> b!683176 (= e!389148 e!389149)))

(declare-fun res!449141 () Bool)

(assert (=> b!683176 (=> (not res!449141) (not e!389149))))

(assert (=> b!683176 (= res!449141 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19316 a!3626)))))

(declare-fun b!683177 () Bool)

(assert (=> b!683177 (= e!389149 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!94067 (not res!449140)) b!683176))

(assert (= (and b!683176 res!449141) b!683177))

(declare-fun m!647819 () Bool)

(assert (=> d!94067 m!647819))

(declare-fun m!647821 () Bool)

(assert (=> b!683177 m!647821))

(assert (=> b!683064 d!94067))

(declare-fun d!94071 () Bool)

(assert (=> d!94071 (= ($colon$colon!338 acc!681 (select (arr!18952 a!3626) from!3004)) (Cons!13042 (select (arr!18952 a!3626) from!3004) acc!681))))

(assert (=> b!683062 d!94071))

(declare-fun b!683194 () Bool)

(declare-fun e!389167 () Bool)

(assert (=> b!683194 (= e!389167 (subseq!174 (t!19297 acc!681) (t!19297 acc!681)))))

(declare-fun d!94075 () Bool)

(declare-fun res!449157 () Bool)

(declare-fun e!389165 () Bool)

(assert (=> d!94075 (=> res!449157 e!389165)))

(assert (=> d!94075 (= res!449157 ((_ is Nil!13043) acc!681))))

(assert (=> d!94075 (= (subseq!174 acc!681 acc!681) e!389165)))

(declare-fun b!683193 () Bool)

(declare-fun e!389164 () Bool)

(declare-fun e!389166 () Bool)

(assert (=> b!683193 (= e!389164 e!389166)))

(declare-fun res!449158 () Bool)

(assert (=> b!683193 (=> res!449158 e!389166)))

(assert (=> b!683193 (= res!449158 e!389167)))

(declare-fun res!449159 () Bool)

(assert (=> b!683193 (=> (not res!449159) (not e!389167))))

(assert (=> b!683193 (= res!449159 (= (h!14087 acc!681) (h!14087 acc!681)))))

(declare-fun b!683195 () Bool)

(assert (=> b!683195 (= e!389166 (subseq!174 acc!681 (t!19297 acc!681)))))

(declare-fun b!683192 () Bool)

(assert (=> b!683192 (= e!389165 e!389164)))

(declare-fun res!449156 () Bool)

(assert (=> b!683192 (=> (not res!449156) (not e!389164))))

(assert (=> b!683192 (= res!449156 ((_ is Cons!13042) acc!681))))

(assert (= (and d!94075 (not res!449157)) b!683192))

(assert (= (and b!683192 res!449156) b!683193))

(assert (= (and b!683193 res!449159) b!683194))

(assert (= (and b!683193 (not res!449158)) b!683195))

(declare-fun m!647831 () Bool)

(assert (=> b!683194 m!647831))

(declare-fun m!647833 () Bool)

(assert (=> b!683195 m!647833))

(assert (=> b!683062 d!94075))

(declare-fun d!94083 () Bool)

(assert (=> d!94083 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!313833 () Unit!23997)

(declare-fun choose!80 (array!39548 List!13046 List!13046 (_ BitVec 32)) Unit!23997)

(assert (=> d!94083 (= lt!313833 (choose!80 a!3626 ($colon$colon!338 acc!681 (select (arr!18952 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> d!94083 (bvslt (size!19316 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!94083 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!338 acc!681 (select (arr!18952 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)) lt!313833)))

(declare-fun bs!20041 () Bool)

(assert (= bs!20041 d!94083))

(assert (=> bs!20041 m!647701))

(assert (=> bs!20041 m!647705))

(declare-fun m!647849 () Bool)

(assert (=> bs!20041 m!647849))

(assert (=> b!683062 d!94083))

(declare-fun d!94091 () Bool)

(assert (=> d!94091 (subseq!174 acc!681 acc!681)))

(declare-fun lt!313836 () Unit!23997)

(declare-fun choose!36 (List!13046) Unit!23997)

(assert (=> d!94091 (= lt!313836 (choose!36 acc!681))))

(assert (=> d!94091 (= (lemmaListSubSeqRefl!0 acc!681) lt!313836)))

(declare-fun bs!20042 () Bool)

(assert (= bs!20042 d!94091))

(assert (=> bs!20042 m!647711))

(declare-fun m!647851 () Bool)

(assert (=> bs!20042 m!647851))

(assert (=> b!683062 d!94091))

(declare-fun b!683218 () Bool)

(declare-fun e!389194 () Bool)

(declare-fun call!34005 () Bool)

(assert (=> b!683218 (= e!389194 call!34005)))

(declare-fun b!683219 () Bool)

(assert (=> b!683219 (= e!389194 call!34005)))

(declare-fun b!683220 () Bool)

(declare-fun e!389192 () Bool)

(declare-fun e!389191 () Bool)

(assert (=> b!683220 (= e!389192 e!389191)))

(declare-fun res!449183 () Bool)

(assert (=> b!683220 (=> (not res!449183) (not e!389191))))

(declare-fun e!389190 () Bool)

(assert (=> b!683220 (= res!449183 (not e!389190))))

(declare-fun res!449184 () Bool)

(assert (=> b!683220 (=> (not res!449184) (not e!389190))))

(assert (=> b!683220 (= res!449184 (validKeyInArray!0 (select (arr!18952 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun d!94093 () Bool)

(declare-fun res!449182 () Bool)

(assert (=> d!94093 (=> res!449182 e!389192)))

(assert (=> d!94093 (= res!449182 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19316 a!3626)))))

(assert (=> d!94093 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) e!389192)))

(declare-fun b!683222 () Bool)

(assert (=> b!683222 (= e!389191 e!389194)))

(declare-fun c!77385 () Bool)

(assert (=> b!683222 (= c!77385 (validKeyInArray!0 (select (arr!18952 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun bm!34002 () Bool)

(assert (=> bm!34002 (= call!34005 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!77385 (Cons!13042 (select (arr!18952 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) acc!681) acc!681)))))

(declare-fun b!683224 () Bool)

(assert (=> b!683224 (= e!389190 (contains!3589 acc!681 (select (arr!18952 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(assert (= (and d!94093 (not res!449182)) b!683220))

(assert (= (and b!683220 res!449184) b!683224))

(assert (= (and b!683220 res!449183) b!683222))

(assert (= (and b!683222 c!77385) b!683218))

(assert (= (and b!683222 (not c!77385)) b!683219))

(assert (= (or b!683218 b!683219) bm!34002))

(declare-fun m!647857 () Bool)

(assert (=> b!683220 m!647857))

(assert (=> b!683220 m!647857))

(declare-fun m!647859 () Bool)

(assert (=> b!683220 m!647859))

(assert (=> b!683222 m!647857))

(assert (=> b!683222 m!647857))

(assert (=> b!683222 m!647859))

(assert (=> bm!34002 m!647857))

(declare-fun m!647865 () Bool)

(assert (=> bm!34002 m!647865))

(assert (=> b!683224 m!647857))

(assert (=> b!683224 m!647857))

(declare-fun m!647867 () Bool)

(assert (=> b!683224 m!647867))

(assert (=> b!683062 d!94093))

(assert (=> b!683061 d!94075))

(declare-fun d!94099 () Bool)

(declare-fun res!449195 () Bool)

(declare-fun e!389204 () Bool)

(assert (=> d!94099 (=> res!449195 e!389204)))

(assert (=> d!94099 (= res!449195 (= (select (arr!18952 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k0!2843))))

(assert (=> d!94099 (= (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!389204)))

(declare-fun b!683233 () Bool)

(declare-fun e!389205 () Bool)

(assert (=> b!683233 (= e!389204 e!389205)))

(declare-fun res!449196 () Bool)

(assert (=> b!683233 (=> (not res!449196) (not e!389205))))

(assert (=> b!683233 (= res!449196 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19316 a!3626)))))

(declare-fun b!683234 () Bool)

(assert (=> b!683234 (= e!389205 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!94099 (not res!449195)) b!683233))

(assert (= (and b!683233 res!449196) b!683234))

(assert (=> d!94099 m!647857))

(declare-fun m!647873 () Bool)

(assert (=> b!683234 m!647873))

(assert (=> b!683061 d!94099))

(declare-fun b!683268 () Bool)

(declare-fun e!389233 () List!13046)

(declare-fun call!34011 () List!13046)

(assert (=> b!683268 (= e!389233 call!34011)))

(declare-fun bm!34008 () Bool)

(assert (=> bm!34008 (= call!34011 (-!139 (t!19297 lt!313787) k0!2843))))

(declare-fun b!683269 () Bool)

(declare-fun e!389234 () List!13046)

(assert (=> b!683269 (= e!389234 e!389233)))

(declare-fun c!77393 () Bool)

(assert (=> b!683269 (= c!77393 (= k0!2843 (h!14087 lt!313787)))))

(declare-fun b!683270 () Bool)

(assert (=> b!683270 (= e!389233 (Cons!13042 (h!14087 lt!313787) call!34011))))

(declare-fun d!94103 () Bool)

(declare-fun e!389235 () Bool)

(assert (=> d!94103 e!389235))

(declare-fun res!449216 () Bool)

(assert (=> d!94103 (=> (not res!449216) (not e!389235))))

(declare-fun lt!313847 () List!13046)

(declare-fun size!19318 (List!13046) Int)

(assert (=> d!94103 (= res!449216 (<= (size!19318 lt!313847) (size!19318 lt!313787)))))

(assert (=> d!94103 (= lt!313847 e!389234)))

(declare-fun c!77394 () Bool)

(assert (=> d!94103 (= c!77394 ((_ is Cons!13042) lt!313787))))

(assert (=> d!94103 (= (-!139 lt!313787 k0!2843) lt!313847)))

(declare-fun b!683271 () Bool)

(assert (=> b!683271 (= e!389234 Nil!13043)))

(declare-fun b!683272 () Bool)

(assert (=> b!683272 (= e!389235 (= (content!283 lt!313847) ((_ map and) (content!283 lt!313787) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) k0!2843 true)))))))

(assert (= (and d!94103 c!77394) b!683269))

(assert (= (and d!94103 (not c!77394)) b!683271))

(assert (= (and b!683269 c!77393) b!683268))

(assert (= (and b!683269 (not c!77393)) b!683270))

(assert (= (or b!683268 b!683270) bm!34008))

(assert (= (and d!94103 res!449216) b!683272))

(declare-fun m!647897 () Bool)

(assert (=> bm!34008 m!647897))

(declare-fun m!647899 () Bool)

(assert (=> d!94103 m!647899))

(declare-fun m!647901 () Bool)

(assert (=> d!94103 m!647901))

(declare-fun m!647903 () Bool)

(assert (=> b!683272 m!647903))

(declare-fun m!647905 () Bool)

(assert (=> b!683272 m!647905))

(declare-fun m!647907 () Bool)

(assert (=> b!683272 m!647907))

(assert (=> b!683061 d!94103))

(declare-fun d!94119 () Bool)

(assert (=> d!94119 (= (-!139 ($colon$colon!338 acc!681 k0!2843) k0!2843) acc!681)))

(declare-fun lt!313854 () Unit!23997)

(declare-fun choose!16 ((_ BitVec 64) List!13046) Unit!23997)

(assert (=> d!94119 (= lt!313854 (choose!16 k0!2843 acc!681))))

(assert (=> d!94119 (not (contains!3589 acc!681 k0!2843))))

(assert (=> d!94119 (= (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681) lt!313854)))

(declare-fun bs!20045 () Bool)

(assert (= bs!20045 d!94119))

(assert (=> bs!20045 m!647733))

(assert (=> bs!20045 m!647733))

(declare-fun m!647909 () Bool)

(assert (=> bs!20045 m!647909))

(declare-fun m!647911 () Bool)

(assert (=> bs!20045 m!647911))

(assert (=> bs!20045 m!647697))

(assert (=> b!683061 d!94119))

(declare-fun d!94121 () Bool)

(declare-fun res!449219 () Bool)

(declare-fun e!389248 () Bool)

(assert (=> d!94121 (=> res!449219 e!389248)))

(assert (=> d!94121 (= res!449219 (= (select (arr!18952 (array!39549 (store (arr!18952 a!3626) i!1382 k0!2843) (size!19316 a!3626))) from!3004) k0!2843))))

(assert (=> d!94121 (= (arrayContainsKey!0 (array!39549 (store (arr!18952 a!3626) i!1382 k0!2843) (size!19316 a!3626)) k0!2843 from!3004) e!389248)))

(declare-fun b!683291 () Bool)

(declare-fun e!389249 () Bool)

(assert (=> b!683291 (= e!389248 e!389249)))

(declare-fun res!449220 () Bool)

(assert (=> b!683291 (=> (not res!449220) (not e!389249))))

(assert (=> b!683291 (= res!449220 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19316 (array!39549 (store (arr!18952 a!3626) i!1382 k0!2843) (size!19316 a!3626)))))))

(declare-fun b!683292 () Bool)

(assert (=> b!683292 (= e!389249 (arrayContainsKey!0 (array!39549 (store (arr!18952 a!3626) i!1382 k0!2843) (size!19316 a!3626)) k0!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!94121 (not res!449219)) b!683291))

(assert (= (and b!683291 res!449220) b!683292))

(declare-fun m!647913 () Bool)

(assert (=> d!94121 m!647913))

(declare-fun m!647915 () Bool)

(assert (=> b!683292 m!647915))

(assert (=> b!683061 d!94121))

(assert (=> b!683061 d!94091))

(declare-fun d!94123 () Bool)

(assert (=> d!94123 (= (validKeyInArray!0 (select (arr!18952 a!3626) from!3004)) (and (not (= (select (arr!18952 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18952 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!683061 d!94123))

(declare-fun d!94125 () Bool)

(assert (=> d!94125 (= ($colon$colon!338 acc!681 k0!2843) (Cons!13042 k0!2843 acc!681))))

(assert (=> b!683061 d!94125))

(assert (=> b!683061 d!94093))

(declare-fun b!683295 () Bool)

(declare-fun e!389255 () Bool)

(declare-fun call!34016 () Bool)

(assert (=> b!683295 (= e!389255 call!34016)))

(declare-fun b!683296 () Bool)

(assert (=> b!683296 (= e!389255 call!34016)))

(declare-fun b!683297 () Bool)

(declare-fun e!389254 () Bool)

(declare-fun e!389253 () Bool)

(assert (=> b!683297 (= e!389254 e!389253)))

(declare-fun res!449224 () Bool)

(assert (=> b!683297 (=> (not res!449224) (not e!389253))))

(declare-fun e!389252 () Bool)

(assert (=> b!683297 (= res!449224 (not e!389252))))

(declare-fun res!449225 () Bool)

(assert (=> b!683297 (=> (not res!449225) (not e!389252))))

(assert (=> b!683297 (= res!449225 (validKeyInArray!0 (select (arr!18952 a!3626) #b00000000000000000000000000000000)))))

(declare-fun d!94127 () Bool)

(declare-fun res!449223 () Bool)

(assert (=> d!94127 (=> res!449223 e!389254)))

(assert (=> d!94127 (= res!449223 (bvsge #b00000000000000000000000000000000 (size!19316 a!3626)))))

(assert (=> d!94127 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13043) e!389254)))

(declare-fun b!683298 () Bool)

(assert (=> b!683298 (= e!389253 e!389255)))

(declare-fun c!77403 () Bool)

(assert (=> b!683298 (= c!77403 (validKeyInArray!0 (select (arr!18952 a!3626) #b00000000000000000000000000000000)))))

(declare-fun bm!34013 () Bool)

(assert (=> bm!34013 (= call!34016 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!77403 (Cons!13042 (select (arr!18952 a!3626) #b00000000000000000000000000000000) Nil!13043) Nil!13043)))))

(declare-fun b!683299 () Bool)

(assert (=> b!683299 (= e!389252 (contains!3589 Nil!13043 (select (arr!18952 a!3626) #b00000000000000000000000000000000)))))

(assert (= (and d!94127 (not res!449223)) b!683297))

(assert (= (and b!683297 res!449225) b!683299))

(assert (= (and b!683297 res!449224) b!683298))

(assert (= (and b!683298 c!77403) b!683295))

(assert (= (and b!683298 (not c!77403)) b!683296))

(assert (= (or b!683295 b!683296) bm!34013))

(assert (=> b!683297 m!647819))

(assert (=> b!683297 m!647819))

(declare-fun m!647917 () Bool)

(assert (=> b!683297 m!647917))

(assert (=> b!683298 m!647819))

(assert (=> b!683298 m!647819))

(assert (=> b!683298 m!647917))

(assert (=> bm!34013 m!647819))

(declare-fun m!647919 () Bool)

(assert (=> bm!34013 m!647919))

(assert (=> b!683299 m!647819))

(assert (=> b!683299 m!647819))

(declare-fun m!647921 () Bool)

(assert (=> b!683299 m!647921))

(assert (=> b!683072 d!94127))

(check-sat (not b!683153) (not d!94061) (not b!683234) (not bm!34001) (not d!94083) (not bm!34013) (not d!94049) (not b!683152) (not b!683155) (not b!683220) (not b!683222) (not b!683224) (not b!683138) (not d!94103) (not b!683160) (not b!683161) (not b!683292) (not b!683297) (not d!94057) (not b!683298) (not bm!34008) (not b!683163) (not b!683272) (not d!94091) (not b!683299) (not b!683165) (not d!94053) (not b!683177) (not b!683195) (not b!683151) (not b!683194) (not b!683164) (not d!94119) (not bm!34002))
(check-sat)
