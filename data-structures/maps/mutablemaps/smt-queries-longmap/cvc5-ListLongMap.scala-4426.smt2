; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61296 () Bool)

(assert start!61296)

(declare-fun b!686432 () Bool)

(declare-fun e!390874 () Bool)

(declare-datatypes ((List!13084 0))(
  ( (Nil!13081) (Cons!13080 (h!14125 (_ BitVec 64)) (t!19347 List!13084)) )
))
(declare-fun acc!681 () List!13084)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3627 (List!13084 (_ BitVec 64)) Bool)

(assert (=> b!686432 (= e!390874 (contains!3627 acc!681 k!2843))))

(declare-fun b!686433 () Bool)

(declare-fun e!390873 () Bool)

(declare-fun lt!315090 () List!13084)

(declare-fun noDuplicate!874 (List!13084) Bool)

(assert (=> b!686433 (= e!390873 (noDuplicate!874 lt!315090))))

(declare-fun b!686434 () Bool)

(declare-datatypes ((Unit!24187 0))(
  ( (Unit!24188) )
))
(declare-fun e!390876 () Unit!24187)

(declare-fun Unit!24189 () Unit!24187)

(assert (=> b!686434 (= e!390876 Unit!24189)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lt!315083 () Unit!24187)

(declare-datatypes ((array!39636 0))(
  ( (array!39637 (arr!18990 (Array (_ BitVec 32) (_ BitVec 64))) (size!19363 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39636)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39636 (_ BitVec 64) (_ BitVec 32)) Unit!24187)

(assert (=> b!686434 (= lt!315083 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!686434 false))

(declare-fun b!686435 () Bool)

(declare-fun e!390871 () Unit!24187)

(declare-fun lt!315088 () Unit!24187)

(assert (=> b!686435 (= e!390871 lt!315088)))

(declare-fun lt!315086 () Unit!24187)

(declare-fun lemmaListSubSeqRefl!0 (List!13084) Unit!24187)

(assert (=> b!686435 (= lt!315086 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!212 (List!13084 List!13084) Bool)

(assert (=> b!686435 (subseq!212 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39636 List!13084 List!13084 (_ BitVec 32)) Unit!24187)

(declare-fun $colon$colon!376 (List!13084 (_ BitVec 64)) List!13084)

(assert (=> b!686435 (= lt!315088 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!376 acc!681 (select (arr!18990 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39636 (_ BitVec 32) List!13084) Bool)

(assert (=> b!686435 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!686436 () Bool)

(declare-fun e!390870 () Bool)

(declare-fun e!390872 () Bool)

(assert (=> b!686436 (= e!390870 e!390872)))

(declare-fun res!451703 () Bool)

(assert (=> b!686436 (=> (not res!451703) (not e!390872))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!686436 (= res!451703 (bvsle from!3004 i!1382))))

(declare-fun res!451704 () Bool)

(declare-fun e!390877 () Bool)

(assert (=> start!61296 (=> (not res!451704) (not e!390877))))

(assert (=> start!61296 (= res!451704 (and (bvslt (size!19363 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19363 a!3626))))))

(assert (=> start!61296 e!390877))

(assert (=> start!61296 true))

(declare-fun array_inv!14764 (array!39636) Bool)

(assert (=> start!61296 (array_inv!14764 a!3626)))

(declare-fun b!686437 () Bool)

(declare-fun Unit!24190 () Unit!24187)

(assert (=> b!686437 (= e!390871 Unit!24190)))

(declare-fun b!686438 () Bool)

(declare-fun res!451706 () Bool)

(assert (=> b!686438 (=> (not res!451706) (not e!390877))))

(assert (=> b!686438 (= res!451706 (noDuplicate!874 acc!681))))

(declare-fun b!686439 () Bool)

(declare-fun Unit!24191 () Unit!24187)

(assert (=> b!686439 (= e!390876 Unit!24191)))

(declare-fun b!686440 () Bool)

(declare-fun res!451700 () Bool)

(assert (=> b!686440 (=> (not res!451700) (not e!390877))))

(assert (=> b!686440 (= res!451700 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13081))))

(declare-fun b!686441 () Bool)

(declare-fun res!451712 () Bool)

(assert (=> b!686441 (=> (not res!451712) (not e!390877))))

(assert (=> b!686441 (= res!451712 (not (contains!3627 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!686442 () Bool)

(declare-fun res!451702 () Bool)

(assert (=> b!686442 (=> (not res!451702) (not e!390877))))

(declare-fun arrayContainsKey!0 (array!39636 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!686442 (= res!451702 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!686443 () Bool)

(declare-fun res!451711 () Bool)

(assert (=> b!686443 (=> (not res!451711) (not e!390877))))

(assert (=> b!686443 (= res!451711 (not (contains!3627 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!686444 () Bool)

(assert (=> b!686444 (= e!390872 (not (contains!3627 acc!681 k!2843)))))

(declare-fun b!686445 () Bool)

(declare-fun res!451698 () Bool)

(assert (=> b!686445 (=> (not res!451698) (not e!390877))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!686445 (= res!451698 (validKeyInArray!0 k!2843))))

(declare-fun b!686446 () Bool)

(declare-fun res!451701 () Bool)

(assert (=> b!686446 (=> (not res!451701) (not e!390877))))

(assert (=> b!686446 (= res!451701 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19363 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!686447 () Bool)

(declare-fun res!451707 () Bool)

(assert (=> b!686447 (=> (not res!451707) (not e!390877))))

(assert (=> b!686447 (= res!451707 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19363 a!3626))))))

(declare-fun b!686448 () Bool)

(declare-fun res!451708 () Bool)

(assert (=> b!686448 (=> (not res!451708) (not e!390877))))

(assert (=> b!686448 (= res!451708 e!390870)))

(declare-fun res!451699 () Bool)

(assert (=> b!686448 (=> res!451699 e!390870)))

(assert (=> b!686448 (= res!451699 e!390874)))

(declare-fun res!451705 () Bool)

(assert (=> b!686448 (=> (not res!451705) (not e!390874))))

(assert (=> b!686448 (= res!451705 (bvsgt from!3004 i!1382))))

(declare-fun b!686449 () Bool)

(declare-fun res!451709 () Bool)

(assert (=> b!686449 (=> (not res!451709) (not e!390877))))

(assert (=> b!686449 (= res!451709 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!686450 () Bool)

(assert (=> b!686450 (= e!390877 (not e!390873))))

(declare-fun res!451710 () Bool)

(assert (=> b!686450 (=> res!451710 e!390873)))

(assert (=> b!686450 (= res!451710 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!686450 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315090)))

(declare-fun lt!315089 () Unit!24187)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39636 (_ BitVec 64) (_ BitVec 32) List!13084 List!13084) Unit!24187)

(assert (=> b!686450 (= lt!315089 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315090))))

(declare-fun -!177 (List!13084 (_ BitVec 64)) List!13084)

(assert (=> b!686450 (= (-!177 lt!315090 k!2843) acc!681)))

(assert (=> b!686450 (= lt!315090 ($colon$colon!376 acc!681 k!2843))))

(declare-fun lt!315085 () Unit!24187)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13084) Unit!24187)

(assert (=> b!686450 (= lt!315085 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!686450 (subseq!212 acc!681 acc!681)))

(declare-fun lt!315082 () Unit!24187)

(assert (=> b!686450 (= lt!315082 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!686450 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315087 () Unit!24187)

(assert (=> b!686450 (= lt!315087 e!390871)))

(declare-fun c!77735 () Bool)

(assert (=> b!686450 (= c!77735 (validKeyInArray!0 (select (arr!18990 a!3626) from!3004)))))

(declare-fun lt!315084 () Unit!24187)

(assert (=> b!686450 (= lt!315084 e!390876)))

(declare-fun c!77734 () Bool)

(assert (=> b!686450 (= c!77734 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!686450 (arrayContainsKey!0 (array!39637 (store (arr!18990 a!3626) i!1382 k!2843) (size!19363 a!3626)) k!2843 from!3004)))

(assert (= (and start!61296 res!451704) b!686438))

(assert (= (and b!686438 res!451706) b!686443))

(assert (= (and b!686443 res!451711) b!686441))

(assert (= (and b!686441 res!451712) b!686448))

(assert (= (and b!686448 res!451705) b!686432))

(assert (= (and b!686448 (not res!451699)) b!686436))

(assert (= (and b!686436 res!451703) b!686444))

(assert (= (and b!686448 res!451708) b!686440))

(assert (= (and b!686440 res!451700) b!686449))

(assert (= (and b!686449 res!451709) b!686447))

(assert (= (and b!686447 res!451707) b!686445))

(assert (= (and b!686445 res!451698) b!686442))

(assert (= (and b!686442 res!451702) b!686446))

(assert (= (and b!686446 res!451701) b!686450))

(assert (= (and b!686450 c!77734) b!686434))

(assert (= (and b!686450 (not c!77734)) b!686439))

(assert (= (and b!686450 c!77735) b!686435))

(assert (= (and b!686450 (not c!77735)) b!686437))

(assert (= (and b!686450 (not res!451710)) b!686433))

(declare-fun m!650583 () Bool)

(assert (=> b!686432 m!650583))

(declare-fun m!650585 () Bool)

(assert (=> b!686441 m!650585))

(declare-fun m!650587 () Bool)

(assert (=> b!686445 m!650587))

(assert (=> b!686444 m!650583))

(declare-fun m!650589 () Bool)

(assert (=> b!686435 m!650589))

(declare-fun m!650591 () Bool)

(assert (=> b!686435 m!650591))

(declare-fun m!650593 () Bool)

(assert (=> b!686435 m!650593))

(declare-fun m!650595 () Bool)

(assert (=> b!686435 m!650595))

(assert (=> b!686435 m!650591))

(assert (=> b!686435 m!650593))

(declare-fun m!650597 () Bool)

(assert (=> b!686435 m!650597))

(declare-fun m!650599 () Bool)

(assert (=> b!686435 m!650599))

(declare-fun m!650601 () Bool)

(assert (=> b!686449 m!650601))

(declare-fun m!650603 () Bool)

(assert (=> b!686438 m!650603))

(declare-fun m!650605 () Bool)

(assert (=> b!686440 m!650605))

(declare-fun m!650607 () Bool)

(assert (=> b!686434 m!650607))

(declare-fun m!650609 () Bool)

(assert (=> b!686442 m!650609))

(declare-fun m!650611 () Bool)

(assert (=> b!686450 m!650611))

(assert (=> b!686450 m!650589))

(assert (=> b!686450 m!650591))

(declare-fun m!650613 () Bool)

(assert (=> b!686450 m!650613))

(declare-fun m!650615 () Bool)

(assert (=> b!686450 m!650615))

(declare-fun m!650617 () Bool)

(assert (=> b!686450 m!650617))

(declare-fun m!650619 () Bool)

(assert (=> b!686450 m!650619))

(assert (=> b!686450 m!650597))

(declare-fun m!650621 () Bool)

(assert (=> b!686450 m!650621))

(declare-fun m!650623 () Bool)

(assert (=> b!686450 m!650623))

(assert (=> b!686450 m!650591))

(declare-fun m!650625 () Bool)

(assert (=> b!686450 m!650625))

(declare-fun m!650627 () Bool)

(assert (=> b!686450 m!650627))

(assert (=> b!686450 m!650599))

(declare-fun m!650629 () Bool)

(assert (=> b!686433 m!650629))

(declare-fun m!650631 () Bool)

(assert (=> start!61296 m!650631))

(declare-fun m!650633 () Bool)

(assert (=> b!686443 m!650633))

(push 1)

(assert (not b!686433))

(assert (not b!686440))

(assert (not b!686444))

(assert (not b!686443))

(assert (not b!686432))

(assert (not b!686434))

(assert (not b!686445))

(assert (not b!686441))

(assert (not b!686442))

(assert (not start!61296))

(assert (not b!686450))

(assert (not b!686449))

(assert (not b!686435))

(assert (not b!686438))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!94679 () Bool)

(declare-fun res!451884 () Bool)

(declare-fun e!391014 () Bool)

(assert (=> d!94679 (=> res!451884 e!391014)))

(assert (=> d!94679 (= res!451884 (= (select (arr!18990 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!94679 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!391014)))

(declare-fun b!686660 () Bool)

(declare-fun e!391015 () Bool)

(assert (=> b!686660 (= e!391014 e!391015)))

(declare-fun res!451885 () Bool)

(assert (=> b!686660 (=> (not res!451885) (not e!391015))))

(assert (=> b!686660 (= res!451885 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19363 a!3626)))))

(declare-fun b!686661 () Bool)

(assert (=> b!686661 (= e!391015 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!94679 (not res!451884)) b!686660))

(assert (= (and b!686660 res!451885) b!686661))

(declare-fun m!650801 () Bool)

(assert (=> d!94679 m!650801))

(declare-fun m!650803 () Bool)

(assert (=> b!686661 m!650803))

(assert (=> b!686442 d!94679))

(declare-fun d!94689 () Bool)

(declare-fun lt!315171 () Bool)

(declare-fun content!296 (List!13084) (Set (_ BitVec 64)))

(assert (=> d!94689 (= lt!315171 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!296 acc!681)))))

(declare-fun e!391039 () Bool)

(assert (=> d!94689 (= lt!315171 e!391039)))

(declare-fun res!451908 () Bool)

(assert (=> d!94689 (=> (not res!451908) (not e!391039))))

(assert (=> d!94689 (= res!451908 (is-Cons!13080 acc!681))))

(assert (=> d!94689 (= (contains!3627 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!315171)))

(declare-fun b!686685 () Bool)

(declare-fun e!391038 () Bool)

(assert (=> b!686685 (= e!391039 e!391038)))

(declare-fun res!451907 () Bool)

(assert (=> b!686685 (=> res!451907 e!391038)))

(assert (=> b!686685 (= res!451907 (= (h!14125 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!686686 () Bool)

(assert (=> b!686686 (= e!391038 (contains!3627 (t!19347 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94689 res!451908) b!686685))

(assert (= (and b!686685 (not res!451907)) b!686686))

(declare-fun m!650831 () Bool)

(assert (=> d!94689 m!650831))

(declare-fun m!650833 () Bool)

(assert (=> d!94689 m!650833))

(declare-fun m!650835 () Bool)

(assert (=> b!686686 m!650835))

(assert (=> b!686441 d!94689))

(declare-fun d!94707 () Bool)

(declare-fun lt!315172 () Bool)

(assert (=> d!94707 (= lt!315172 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!296 acc!681)))))

(declare-fun e!391041 () Bool)

(assert (=> d!94707 (= lt!315172 e!391041)))

(declare-fun res!451910 () Bool)

(assert (=> d!94707 (=> (not res!451910) (not e!391041))))

(assert (=> d!94707 (= res!451910 (is-Cons!13080 acc!681))))

(assert (=> d!94707 (= (contains!3627 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!315172)))

(declare-fun b!686687 () Bool)

(declare-fun e!391040 () Bool)

(assert (=> b!686687 (= e!391041 e!391040)))

(declare-fun res!451909 () Bool)

(assert (=> b!686687 (=> res!451909 e!391040)))

(assert (=> b!686687 (= res!451909 (= (h!14125 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!686688 () Bool)

(assert (=> b!686688 (= e!391040 (contains!3627 (t!19347 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94707 res!451910) b!686687))

(assert (= (and b!686687 (not res!451909)) b!686688))

(assert (=> d!94707 m!650831))

(declare-fun m!650837 () Bool)

(assert (=> d!94707 m!650837))

(declare-fun m!650839 () Bool)

(assert (=> b!686688 m!650839))

(assert (=> b!686443 d!94707))

(declare-fun d!94709 () Bool)

(declare-fun lt!315175 () Bool)

(assert (=> d!94709 (= lt!315175 (set.member k!2843 (content!296 acc!681)))))

(declare-fun e!391043 () Bool)

(assert (=> d!94709 (= lt!315175 e!391043)))

(declare-fun res!451912 () Bool)

(assert (=> d!94709 (=> (not res!451912) (not e!391043))))

(assert (=> d!94709 (= res!451912 (is-Cons!13080 acc!681))))

(assert (=> d!94709 (= (contains!3627 acc!681 k!2843) lt!315175)))

(declare-fun b!686689 () Bool)

(declare-fun e!391042 () Bool)

(assert (=> b!686689 (= e!391043 e!391042)))

(declare-fun res!451911 () Bool)

(assert (=> b!686689 (=> res!451911 e!391042)))

(assert (=> b!686689 (= res!451911 (= (h!14125 acc!681) k!2843))))

(declare-fun b!686690 () Bool)

(assert (=> b!686690 (= e!391042 (contains!3627 (t!19347 acc!681) k!2843))))

(assert (= (and d!94709 res!451912) b!686689))

(assert (= (and b!686689 (not res!451911)) b!686690))

(assert (=> d!94709 m!650831))

(declare-fun m!650841 () Bool)

(assert (=> d!94709 m!650841))

(declare-fun m!650843 () Bool)

(assert (=> b!686690 m!650843))

(assert (=> b!686432 d!94709))

(declare-fun b!686704 () Bool)

(declare-fun e!391054 () Bool)

(assert (=> b!686704 (= e!391054 (subseq!212 acc!681 (t!19347 acc!681)))))

(declare-fun b!686702 () Bool)

(declare-fun e!391055 () Bool)

(assert (=> b!686702 (= e!391055 e!391054)))

(declare-fun res!451923 () Bool)

(assert (=> b!686702 (=> res!451923 e!391054)))

(declare-fun e!391057 () Bool)

(assert (=> b!686702 (= res!451923 e!391057)))

(declare-fun res!451924 () Bool)

(assert (=> b!686702 (=> (not res!451924) (not e!391057))))

(assert (=> b!686702 (= res!451924 (= (h!14125 acc!681) (h!14125 acc!681)))))

(declare-fun b!686701 () Bool)

(declare-fun e!391056 () Bool)

(assert (=> b!686701 (= e!391056 e!391055)))

(declare-fun res!451925 () Bool)

(assert (=> b!686701 (=> (not res!451925) (not e!391055))))

(assert (=> b!686701 (= res!451925 (is-Cons!13080 acc!681))))

(declare-fun d!94711 () Bool)

(declare-fun res!451926 () Bool)

(assert (=> d!94711 (=> res!451926 e!391056)))

(assert (=> d!94711 (= res!451926 (is-Nil!13081 acc!681))))

(assert (=> d!94711 (= (subseq!212 acc!681 acc!681) e!391056)))

(declare-fun b!686703 () Bool)

(assert (=> b!686703 (= e!391057 (subseq!212 (t!19347 acc!681) (t!19347 acc!681)))))

(assert (= (and d!94711 (not res!451926)) b!686701))

(assert (= (and b!686701 res!451925) b!686702))

(assert (= (and b!686702 res!451924) b!686703))

(assert (= (and b!686702 (not res!451923)) b!686704))

(declare-fun m!650859 () Bool)

(assert (=> b!686704 m!650859))

(declare-fun m!650861 () Bool)

(assert (=> b!686703 m!650861))

(assert (=> b!686450 d!94711))

(declare-fun d!94721 () Bool)

(assert (=> d!94721 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315090)))

(declare-fun lt!315190 () Unit!24187)

(declare-fun choose!66 (array!39636 (_ BitVec 64) (_ BitVec 32) List!13084 List!13084) Unit!24187)

(assert (=> d!94721 (= lt!315190 (choose!66 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315090))))

(assert (=> d!94721 (bvslt (size!19363 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!94721 (= (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315090) lt!315190)))

(declare-fun bs!20135 () Bool)

(assert (= bs!20135 d!94721))

(assert (=> bs!20135 m!650611))

(declare-fun m!650869 () Bool)

(assert (=> bs!20135 m!650869))

(assert (=> b!686450 d!94721))

(declare-fun bm!34113 () Bool)

(declare-fun call!34116 () List!13084)

(assert (=> bm!34113 (= call!34116 (-!177 (t!19347 lt!315090) k!2843))))

(declare-fun b!686757 () Bool)

(declare-fun e!391095 () List!13084)

(assert (=> b!686757 (= e!391095 Nil!13081)))

(declare-fun e!391096 () Bool)

(declare-fun lt!315199 () List!13084)

(declare-fun b!686758 () Bool)

(assert (=> b!686758 (= e!391096 (= (content!296 lt!315199) (set.minus (content!296 lt!315090) (set.insert k!2843 (as set.empty (Set (_ BitVec 64)))))))))

(declare-fun b!686759 () Bool)

(declare-fun e!391097 () List!13084)

(assert (=> b!686759 (= e!391097 (Cons!13080 (h!14125 lt!315090) call!34116))))

(declare-fun b!686760 () Bool)

(assert (=> b!686760 (= e!391097 call!34116)))

(declare-fun d!94727 () Bool)

(assert (=> d!94727 e!391096))

(declare-fun res!451943 () Bool)

(assert (=> d!94727 (=> (not res!451943) (not e!391096))))

(declare-fun size!19367 (List!13084) Int)

(assert (=> d!94727 (= res!451943 (<= (size!19367 lt!315199) (size!19367 lt!315090)))))

(assert (=> d!94727 (= lt!315199 e!391095)))

(declare-fun c!77775 () Bool)

(assert (=> d!94727 (= c!77775 (is-Cons!13080 lt!315090))))

(assert (=> d!94727 (= (-!177 lt!315090 k!2843) lt!315199)))

(declare-fun b!686761 () Bool)

(assert (=> b!686761 (= e!391095 e!391097)))

(declare-fun c!77774 () Bool)

(assert (=> b!686761 (= c!77774 (= k!2843 (h!14125 lt!315090)))))

(assert (= (and d!94727 c!77775) b!686761))

(assert (= (and d!94727 (not c!77775)) b!686757))

(assert (= (and b!686761 c!77774) b!686760))

(assert (= (and b!686761 (not c!77774)) b!686759))

(assert (= (or b!686760 b!686759) bm!34113))

(assert (= (and d!94727 res!451943) b!686758))

(declare-fun m!650905 () Bool)

(assert (=> bm!34113 m!650905))

(declare-fun m!650907 () Bool)

(assert (=> b!686758 m!650907))

(declare-fun m!650909 () Bool)

(assert (=> b!686758 m!650909))

(declare-fun m!650911 () Bool)

(assert (=> b!686758 m!650911))

(declare-fun m!650913 () Bool)

(assert (=> d!94727 m!650913))

(declare-fun m!650915 () Bool)

(assert (=> d!94727 m!650915))

(assert (=> b!686450 d!94727))

(declare-fun d!94745 () Bool)

(assert (=> d!94745 (= (-!177 ($colon$colon!376 acc!681 k!2843) k!2843) acc!681)))

(declare-fun lt!315204 () Unit!24187)

(declare-fun choose!16 ((_ BitVec 64) List!13084) Unit!24187)

(assert (=> d!94745 (= lt!315204 (choose!16 k!2843 acc!681))))

(assert (=> d!94745 (not (contains!3627 acc!681 k!2843))))

(assert (=> d!94745 (= (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681) lt!315204)))

(declare-fun bs!20137 () Bool)

(assert (= bs!20137 d!94745))

(assert (=> bs!20137 m!650623))

(assert (=> bs!20137 m!650623))

(declare-fun m!650937 () Bool)

(assert (=> bs!20137 m!650937))

(declare-fun m!650939 () Bool)

(assert (=> bs!20137 m!650939))

(assert (=> bs!20137 m!650583))

(assert (=> b!686450 d!94745))

(declare-fun d!94755 () Bool)

(declare-fun res!451956 () Bool)

(declare-fun e!391112 () Bool)

(assert (=> d!94755 (=> res!451956 e!391112)))

(assert (=> d!94755 (= res!451956 (= (select (arr!18990 (array!39637 (store (arr!18990 a!3626) i!1382 k!2843) (size!19363 a!3626))) from!3004) k!2843))))

(assert (=> d!94755 (= (arrayContainsKey!0 (array!39637 (store (arr!18990 a!3626) i!1382 k!2843) (size!19363 a!3626)) k!2843 from!3004) e!391112)))

(declare-fun b!686778 () Bool)

(declare-fun e!391113 () Bool)

(assert (=> b!686778 (= e!391112 e!391113)))

(declare-fun res!451957 () Bool)

(assert (=> b!686778 (=> (not res!451957) (not e!391113))))

(assert (=> b!686778 (= res!451957 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19363 (array!39637 (store (arr!18990 a!3626) i!1382 k!2843) (size!19363 a!3626)))))))

(declare-fun b!686779 () Bool)

(assert (=> b!686779 (= e!391113 (arrayContainsKey!0 (array!39637 (store (arr!18990 a!3626) i!1382 k!2843) (size!19363 a!3626)) k!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!94755 (not res!451956)) b!686778))

(assert (= (and b!686778 res!451957) b!686779))

(declare-fun m!650943 () Bool)

(assert (=> d!94755 m!650943))

(declare-fun m!650945 () Bool)

(assert (=> b!686779 m!650945))

(assert (=> b!686450 d!94755))

(declare-fun d!94757 () Bool)

(declare-fun res!451958 () Bool)

(declare-fun e!391114 () Bool)

(assert (=> d!94757 (=> res!451958 e!391114)))

(assert (=> d!94757 (= res!451958 (= (select (arr!18990 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k!2843))))

(assert (=> d!94757 (= (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!391114)))

(declare-fun b!686780 () Bool)

(declare-fun e!391115 () Bool)

(assert (=> b!686780 (= e!391114 e!391115)))

(declare-fun res!451959 () Bool)

(assert (=> b!686780 (=> (not res!451959) (not e!391115))))

(assert (=> b!686780 (= res!451959 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19363 a!3626)))))

(declare-fun b!686781 () Bool)

(assert (=> b!686781 (= e!391115 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!94757 (not res!451958)) b!686780))

(assert (= (and b!686780 res!451959) b!686781))

(declare-fun m!650947 () Bool)

(assert (=> d!94757 m!650947))

(declare-fun m!650949 () Bool)

(assert (=> b!686781 m!650949))

(assert (=> b!686450 d!94757))

(declare-fun b!686792 () Bool)

(declare-fun e!391125 () Bool)

(declare-fun e!391127 () Bool)

(assert (=> b!686792 (= e!391125 e!391127)))

(declare-fun res!451967 () Bool)

(assert (=> b!686792 (=> (not res!451967) (not e!391127))))

(declare-fun e!391126 () Bool)

(assert (=> b!686792 (= res!451967 (not e!391126))))

(declare-fun res!451968 () Bool)

(assert (=> b!686792 (=> (not res!451968) (not e!391126))))

(assert (=> b!686792 (= res!451968 (validKeyInArray!0 (select (arr!18990 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!686793 () Bool)

(declare-fun e!391124 () Bool)

(assert (=> b!686793 (= e!391127 e!391124)))

(declare-fun c!77780 () Bool)

(assert (=> b!686793 (= c!77780 (validKeyInArray!0 (select (arr!18990 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun d!94759 () Bool)

(declare-fun res!451966 () Bool)

(assert (=> d!94759 (=> res!451966 e!391125)))

(assert (=> d!94759 (= res!451966 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19363 a!3626)))))

(assert (=> d!94759 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315090) e!391125)))

(declare-fun bm!34118 () Bool)

(declare-fun call!34121 () Bool)

(assert (=> bm!34118 (= call!34121 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!77780 (Cons!13080 (select (arr!18990 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) lt!315090) lt!315090)))))

(declare-fun b!686794 () Bool)

(assert (=> b!686794 (= e!391126 (contains!3627 lt!315090 (select (arr!18990 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!686795 () Bool)

(assert (=> b!686795 (= e!391124 call!34121)))

(declare-fun b!686796 () Bool)

(assert (=> b!686796 (= e!391124 call!34121)))

(assert (= (and d!94759 (not res!451966)) b!686792))

(assert (= (and b!686792 res!451968) b!686794))

(assert (= (and b!686792 res!451967) b!686793))

(assert (= (and b!686793 c!77780) b!686796))

(assert (= (and b!686793 (not c!77780)) b!686795))

(assert (= (or b!686796 b!686795) bm!34118))

(assert (=> b!686792 m!650947))

(assert (=> b!686792 m!650947))

(declare-fun m!650951 () Bool)

(assert (=> b!686792 m!650951))

(assert (=> b!686793 m!650947))

(assert (=> b!686793 m!650947))

(assert (=> b!686793 m!650951))

(assert (=> bm!34118 m!650947))

(declare-fun m!650953 () Bool)

(assert (=> bm!34118 m!650953))

(assert (=> b!686794 m!650947))

(assert (=> b!686794 m!650947))

(declare-fun m!650955 () Bool)

(assert (=> b!686794 m!650955))

(assert (=> b!686450 d!94759))

(declare-fun d!94761 () Bool)

(assert (=> d!94761 (subseq!212 acc!681 acc!681)))

(declare-fun lt!315207 () Unit!24187)

(declare-fun choose!36 (List!13084) Unit!24187)

(assert (=> d!94761 (= lt!315207 (choose!36 acc!681))))

(assert (=> d!94761 (= (lemmaListSubSeqRefl!0 acc!681) lt!315207)))

(declare-fun bs!20138 () Bool)

(assert (= bs!20138 d!94761))

(assert (=> bs!20138 m!650599))

(declare-fun m!650957 () Bool)

(assert (=> bs!20138 m!650957))

(assert (=> b!686450 d!94761))

(declare-fun d!94763 () Bool)

(assert (=> d!94763 (= (validKeyInArray!0 (select (arr!18990 a!3626) from!3004)) (and (not (= (select (arr!18990 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18990 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!686450 d!94763))

(declare-fun d!94765 () Bool)

(assert (=> d!94765 (= ($colon$colon!376 acc!681 k!2843) (Cons!13080 k!2843 acc!681))))

(assert (=> b!686450 d!94765))

(declare-fun b!686797 () Bool)

(declare-fun e!391129 () Bool)

(declare-fun e!391131 () Bool)

(assert (=> b!686797 (= e!391129 e!391131)))

(declare-fun res!451970 () Bool)

(assert (=> b!686797 (=> (not res!451970) (not e!391131))))

(declare-fun e!391130 () Bool)

(assert (=> b!686797 (= res!451970 (not e!391130))))

(declare-fun res!451971 () Bool)

(assert (=> b!686797 (=> (not res!451971) (not e!391130))))

(assert (=> b!686797 (= res!451971 (validKeyInArray!0 (select (arr!18990 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!686798 () Bool)

(declare-fun e!391128 () Bool)

(assert (=> b!686798 (= e!391131 e!391128)))

(declare-fun c!77781 () Bool)

(assert (=> b!686798 (= c!77781 (validKeyInArray!0 (select (arr!18990 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun d!94767 () Bool)

(declare-fun res!451969 () Bool)

(assert (=> d!94767 (=> res!451969 e!391129)))

(assert (=> d!94767 (= res!451969 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19363 a!3626)))))

(assert (=> d!94767 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) e!391129)))

(declare-fun call!34122 () Bool)

(declare-fun bm!34119 () Bool)

(assert (=> bm!34119 (= call!34122 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!77781 (Cons!13080 (select (arr!18990 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) acc!681) acc!681)))))

(declare-fun b!686799 () Bool)

(assert (=> b!686799 (= e!391130 (contains!3627 acc!681 (select (arr!18990 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!686800 () Bool)

(assert (=> b!686800 (= e!391128 call!34122)))

(declare-fun b!686801 () Bool)

(assert (=> b!686801 (= e!391128 call!34122)))

(assert (= (and d!94767 (not res!451969)) b!686797))

(assert (= (and b!686797 res!451971) b!686799))

(assert (= (and b!686797 res!451970) b!686798))

(assert (= (and b!686798 c!77781) b!686801))

(assert (= (and b!686798 (not c!77781)) b!686800))

(assert (= (or b!686801 b!686800) bm!34119))

(assert (=> b!686797 m!650947))

(assert (=> b!686797 m!650947))

(assert (=> b!686797 m!650951))

(assert (=> b!686798 m!650947))

(assert (=> b!686798 m!650947))

(assert (=> b!686798 m!650951))

(assert (=> bm!34119 m!650947))

(declare-fun m!650959 () Bool)

(assert (=> bm!34119 m!650959))

(assert (=> b!686799 m!650947))

(assert (=> b!686799 m!650947))

(declare-fun m!650961 () Bool)

(assert (=> b!686799 m!650961))

(assert (=> b!686450 d!94767))

(declare-fun b!686802 () Bool)

(declare-fun e!391133 () Bool)

(declare-fun e!391135 () Bool)

(assert (=> b!686802 (= e!391133 e!391135)))

(declare-fun res!451973 () Bool)

(assert (=> b!686802 (=> (not res!451973) (not e!391135))))

(declare-fun e!391134 () Bool)

(assert (=> b!686802 (= res!451973 (not e!391134))))

(declare-fun res!451974 () Bool)

(assert (=> b!686802 (=> (not res!451974) (not e!391134))))

(assert (=> b!686802 (= res!451974 (validKeyInArray!0 (select (arr!18990 a!3626) from!3004)))))

(declare-fun b!686803 () Bool)

(declare-fun e!391132 () Bool)

(assert (=> b!686803 (= e!391135 e!391132)))

(declare-fun c!77782 () Bool)

(assert (=> b!686803 (= c!77782 (validKeyInArray!0 (select (arr!18990 a!3626) from!3004)))))

(declare-fun d!94769 () Bool)

(declare-fun res!451972 () Bool)

(assert (=> d!94769 (=> res!451972 e!391133)))

(assert (=> d!94769 (= res!451972 (bvsge from!3004 (size!19363 a!3626)))))

(assert (=> d!94769 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!391133)))

(declare-fun bm!34120 () Bool)

(declare-fun call!34123 () Bool)

(assert (=> bm!34120 (= call!34123 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77782 (Cons!13080 (select (arr!18990 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!686804 () Bool)

(assert (=> b!686804 (= e!391134 (contains!3627 acc!681 (select (arr!18990 a!3626) from!3004)))))

(declare-fun b!686805 () Bool)

(assert (=> b!686805 (= e!391132 call!34123)))

(declare-fun b!686806 () Bool)

(assert (=> b!686806 (= e!391132 call!34123)))

(assert (= (and d!94769 (not res!451972)) b!686802))

(assert (= (and b!686802 res!451974) b!686804))

(assert (= (and b!686802 res!451973) b!686803))

(assert (= (and b!686803 c!77782) b!686806))

(assert (= (and b!686803 (not c!77782)) b!686805))

(assert (= (or b!686806 b!686805) bm!34120))

(assert (=> b!686802 m!650591))

(assert (=> b!686802 m!650591))

(assert (=> b!686802 m!650625))

(assert (=> b!686803 m!650591))

(assert (=> b!686803 m!650591))

(assert (=> b!686803 m!650625))

(assert (=> bm!34120 m!650591))

(declare-fun m!650963 () Bool)

(assert (=> bm!34120 m!650963))

(assert (=> b!686804 m!650591))

(assert (=> b!686804 m!650591))

(declare-fun m!650965 () Bool)

(assert (=> b!686804 m!650965))

(assert (=> b!686449 d!94769))

(declare-fun d!94771 () Bool)

(assert (=> d!94771 (= (array_inv!14764 a!3626) (bvsge (size!19363 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!61296 d!94771))

(declare-fun b!686807 () Bool)

(declare-fun e!391137 () Bool)

(declare-fun e!391139 () Bool)

(assert (=> b!686807 (= e!391137 e!391139)))

(declare-fun res!451976 () Bool)

(assert (=> b!686807 (=> (not res!451976) (not e!391139))))

(declare-fun e!391138 () Bool)

(assert (=> b!686807 (= res!451976 (not e!391138))))

(declare-fun res!451977 () Bool)

(assert (=> b!686807 (=> (not res!451977) (not e!391138))))

(assert (=> b!686807 (= res!451977 (validKeyInArray!0 (select (arr!18990 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!686808 () Bool)

(declare-fun e!391136 () Bool)

(assert (=> b!686808 (= e!391139 e!391136)))

(declare-fun c!77783 () Bool)

(assert (=> b!686808 (= c!77783 (validKeyInArray!0 (select (arr!18990 a!3626) #b00000000000000000000000000000000)))))

(declare-fun d!94773 () Bool)

(declare-fun res!451975 () Bool)

(assert (=> d!94773 (=> res!451975 e!391137)))

(assert (=> d!94773 (= res!451975 (bvsge #b00000000000000000000000000000000 (size!19363 a!3626)))))

(assert (=> d!94773 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13081) e!391137)))

(declare-fun bm!34121 () Bool)

(declare-fun call!34124 () Bool)

(assert (=> bm!34121 (= call!34124 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!77783 (Cons!13080 (select (arr!18990 a!3626) #b00000000000000000000000000000000) Nil!13081) Nil!13081)))))

(declare-fun b!686809 () Bool)

(assert (=> b!686809 (= e!391138 (contains!3627 Nil!13081 (select (arr!18990 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!686810 () Bool)

(assert (=> b!686810 (= e!391136 call!34124)))

(declare-fun b!686811 () Bool)

(assert (=> b!686811 (= e!391136 call!34124)))

(assert (= (and d!94773 (not res!451975)) b!686807))

(assert (= (and b!686807 res!451977) b!686809))

(assert (= (and b!686807 res!451976) b!686808))

(assert (= (and b!686808 c!77783) b!686811))

