; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63396 () Bool)

(assert start!63396)

(declare-fun b!713872 () Bool)

(declare-fun res!477129 () Bool)

(declare-fun e!401243 () Bool)

(assert (=> b!713872 (=> (not res!477129) (not e!401243))))

(declare-datatypes ((array!40454 0))(
  ( (array!40455 (arr!19363 (Array (_ BitVec 32) (_ BitVec 64))) (size!19775 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40454)

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40454 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!713872 (= res!477129 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!713873 () Bool)

(declare-fun res!477123 () Bool)

(assert (=> b!713873 (=> (not res!477123) (not e!401243))))

(declare-datatypes ((List!13457 0))(
  ( (Nil!13454) (Cons!13453 (h!14498 (_ BitVec 64)) (t!19780 List!13457)) )
))
(declare-fun newAcc!49 () List!13457)

(declare-fun contains!4000 (List!13457 (_ BitVec 64)) Bool)

(assert (=> b!713873 (= res!477123 (not (contains!4000 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713874 () Bool)

(declare-fun res!477127 () Bool)

(assert (=> b!713874 (=> (not res!477127) (not e!401243))))

(assert (=> b!713874 (= res!477127 (not (contains!4000 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713875 () Bool)

(declare-fun res!477134 () Bool)

(assert (=> b!713875 (=> (not res!477134) (not e!401243))))

(declare-fun acc!652 () List!13457)

(assert (=> b!713875 (= res!477134 (not (contains!4000 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!477137 () Bool)

(assert (=> start!63396 (=> (not res!477137) (not e!401243))))

(assert (=> start!63396 (= res!477137 (and (bvslt (size!19775 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19775 a!3591))))))

(assert (=> start!63396 e!401243))

(assert (=> start!63396 true))

(declare-fun array_inv!15137 (array!40454) Bool)

(assert (=> start!63396 (array_inv!15137 a!3591)))

(declare-fun b!713876 () Bool)

(declare-fun res!477130 () Bool)

(assert (=> b!713876 (=> (not res!477130) (not e!401243))))

(declare-fun noDuplicate!1247 (List!13457) Bool)

(assert (=> b!713876 (= res!477130 (noDuplicate!1247 acc!652))))

(declare-fun b!713877 () Bool)

(declare-fun res!477135 () Bool)

(assert (=> b!713877 (=> (not res!477135) (not e!401243))))

(assert (=> b!713877 (= res!477135 (not (contains!4000 acc!652 k0!2824)))))

(declare-fun b!713878 () Bool)

(declare-fun res!477132 () Bool)

(assert (=> b!713878 (=> (not res!477132) (not e!401243))))

(assert (=> b!713878 (= res!477132 (contains!4000 newAcc!49 k0!2824))))

(declare-fun b!713879 () Bool)

(declare-fun res!477124 () Bool)

(assert (=> b!713879 (=> (not res!477124) (not e!401243))))

(assert (=> b!713879 (= res!477124 (noDuplicate!1247 newAcc!49))))

(declare-fun b!713880 () Bool)

(declare-fun res!477122 () Bool)

(assert (=> b!713880 (=> (not res!477122) (not e!401243))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!713880 (= res!477122 (not (validKeyInArray!0 (select (arr!19363 a!3591) from!2969))))))

(declare-fun b!713881 () Bool)

(declare-fun res!477138 () Bool)

(assert (=> b!713881 (=> (not res!477138) (not e!401243))))

(assert (=> b!713881 (= res!477138 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19775 a!3591)))))

(declare-fun b!713882 () Bool)

(declare-fun res!477125 () Bool)

(assert (=> b!713882 (=> (not res!477125) (not e!401243))))

(declare-fun -!409 (List!13457 (_ BitVec 64)) List!13457)

(assert (=> b!713882 (= res!477125 (= (-!409 newAcc!49 k0!2824) acc!652))))

(declare-fun b!713883 () Bool)

(assert (=> b!713883 (= e!401243 (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969)))))

(declare-fun b!713884 () Bool)

(declare-fun res!477136 () Bool)

(assert (=> b!713884 (=> (not res!477136) (not e!401243))))

(declare-fun subseq!444 (List!13457 List!13457) Bool)

(assert (=> b!713884 (= res!477136 (subseq!444 acc!652 newAcc!49))))

(declare-fun b!713885 () Bool)

(declare-fun res!477133 () Bool)

(assert (=> b!713885 (=> (not res!477133) (not e!401243))))

(assert (=> b!713885 (= res!477133 (validKeyInArray!0 k0!2824))))

(declare-fun b!713886 () Bool)

(declare-fun res!477126 () Bool)

(assert (=> b!713886 (=> (not res!477126) (not e!401243))))

(assert (=> b!713886 (= res!477126 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!713887 () Bool)

(declare-fun res!477128 () Bool)

(assert (=> b!713887 (=> (not res!477128) (not e!401243))))

(assert (=> b!713887 (= res!477128 (not (contains!4000 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713888 () Bool)

(declare-fun res!477131 () Bool)

(assert (=> b!713888 (=> (not res!477131) (not e!401243))))

(declare-fun arrayNoDuplicates!0 (array!40454 (_ BitVec 32) List!13457) Bool)

(assert (=> b!713888 (= res!477131 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(assert (= (and start!63396 res!477137) b!713876))

(assert (= (and b!713876 res!477130) b!713879))

(assert (= (and b!713879 res!477124) b!713875))

(assert (= (and b!713875 res!477134) b!713887))

(assert (= (and b!713887 res!477128) b!713872))

(assert (= (and b!713872 res!477129) b!713877))

(assert (= (and b!713877 res!477135) b!713885))

(assert (= (and b!713885 res!477133) b!713888))

(assert (= (and b!713888 res!477131) b!713884))

(assert (= (and b!713884 res!477136) b!713878))

(assert (= (and b!713878 res!477132) b!713882))

(assert (= (and b!713882 res!477125) b!713873))

(assert (= (and b!713873 res!477123) b!713874))

(assert (= (and b!713874 res!477127) b!713881))

(assert (= (and b!713881 res!477138) b!713880))

(assert (= (and b!713880 res!477122) b!713886))

(assert (= (and b!713886 res!477126) b!713883))

(declare-fun m!670579 () Bool)

(assert (=> b!713877 m!670579))

(declare-fun m!670581 () Bool)

(assert (=> b!713888 m!670581))

(declare-fun m!670583 () Bool)

(assert (=> b!713875 m!670583))

(declare-fun m!670585 () Bool)

(assert (=> b!713878 m!670585))

(declare-fun m!670587 () Bool)

(assert (=> b!713873 m!670587))

(declare-fun m!670589 () Bool)

(assert (=> b!713876 m!670589))

(declare-fun m!670591 () Bool)

(assert (=> b!713874 m!670591))

(declare-fun m!670593 () Bool)

(assert (=> start!63396 m!670593))

(declare-fun m!670595 () Bool)

(assert (=> b!713887 m!670595))

(declare-fun m!670597 () Bool)

(assert (=> b!713882 m!670597))

(declare-fun m!670599 () Bool)

(assert (=> b!713880 m!670599))

(assert (=> b!713880 m!670599))

(declare-fun m!670601 () Bool)

(assert (=> b!713880 m!670601))

(declare-fun m!670603 () Bool)

(assert (=> b!713883 m!670603))

(declare-fun m!670605 () Bool)

(assert (=> b!713872 m!670605))

(declare-fun m!670607 () Bool)

(assert (=> b!713884 m!670607))

(declare-fun m!670609 () Bool)

(assert (=> b!713879 m!670609))

(declare-fun m!670611 () Bool)

(assert (=> b!713885 m!670611))

(check-sat (not b!713872) (not b!713888) (not b!713885) (not b!713884) (not b!713887) (not b!713875) (not b!713879) (not b!713874) (not b!713873) (not start!63396) (not b!713877) (not b!713880) (not b!713882) (not b!713878) (not b!713876) (not b!713883))
(check-sat)
(get-model)

(declare-fun d!98121 () Bool)

(declare-fun res!477194 () Bool)

(declare-fun e!401255 () Bool)

(assert (=> d!98121 (=> res!477194 e!401255)))

(get-info :version)

(assert (=> d!98121 (= res!477194 ((_ is Nil!13454) newAcc!49))))

(assert (=> d!98121 (= (noDuplicate!1247 newAcc!49) e!401255)))

(declare-fun b!713944 () Bool)

(declare-fun e!401256 () Bool)

(assert (=> b!713944 (= e!401255 e!401256)))

(declare-fun res!477195 () Bool)

(assert (=> b!713944 (=> (not res!477195) (not e!401256))))

(assert (=> b!713944 (= res!477195 (not (contains!4000 (t!19780 newAcc!49) (h!14498 newAcc!49))))))

(declare-fun b!713945 () Bool)

(assert (=> b!713945 (= e!401256 (noDuplicate!1247 (t!19780 newAcc!49)))))

(assert (= (and d!98121 (not res!477194)) b!713944))

(assert (= (and b!713944 res!477195) b!713945))

(declare-fun m!670647 () Bool)

(assert (=> b!713944 m!670647))

(declare-fun m!670649 () Bool)

(assert (=> b!713945 m!670649))

(assert (=> b!713879 d!98121))

(declare-fun d!98123 () Bool)

(declare-fun lt!318680 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!367 (List!13457) (InoxSet (_ BitVec 64)))

(assert (=> d!98123 (= lt!318680 (select (content!367 acc!652) k0!2824))))

(declare-fun e!401262 () Bool)

(assert (=> d!98123 (= lt!318680 e!401262)))

(declare-fun res!477200 () Bool)

(assert (=> d!98123 (=> (not res!477200) (not e!401262))))

(assert (=> d!98123 (= res!477200 ((_ is Cons!13453) acc!652))))

(assert (=> d!98123 (= (contains!4000 acc!652 k0!2824) lt!318680)))

(declare-fun b!713950 () Bool)

(declare-fun e!401261 () Bool)

(assert (=> b!713950 (= e!401262 e!401261)))

(declare-fun res!477201 () Bool)

(assert (=> b!713950 (=> res!477201 e!401261)))

(assert (=> b!713950 (= res!477201 (= (h!14498 acc!652) k0!2824))))

(declare-fun b!713951 () Bool)

(assert (=> b!713951 (= e!401261 (contains!4000 (t!19780 acc!652) k0!2824))))

(assert (= (and d!98123 res!477200) b!713950))

(assert (= (and b!713950 (not res!477201)) b!713951))

(declare-fun m!670651 () Bool)

(assert (=> d!98123 m!670651))

(declare-fun m!670653 () Bool)

(assert (=> d!98123 m!670653))

(declare-fun m!670655 () Bool)

(assert (=> b!713951 m!670655))

(assert (=> b!713877 d!98123))

(declare-fun b!713962 () Bool)

(declare-fun e!401271 () Bool)

(declare-fun e!401272 () Bool)

(assert (=> b!713962 (= e!401271 e!401272)))

(declare-fun c!78744 () Bool)

(assert (=> b!713962 (= c!78744 (validKeyInArray!0 (select (arr!19363 a!3591) from!2969)))))

(declare-fun b!713963 () Bool)

(declare-fun e!401273 () Bool)

(assert (=> b!713963 (= e!401273 e!401271)))

(declare-fun res!477210 () Bool)

(assert (=> b!713963 (=> (not res!477210) (not e!401271))))

(declare-fun e!401274 () Bool)

(assert (=> b!713963 (= res!477210 (not e!401274))))

(declare-fun res!477208 () Bool)

(assert (=> b!713963 (=> (not res!477208) (not e!401274))))

(assert (=> b!713963 (= res!477208 (validKeyInArray!0 (select (arr!19363 a!3591) from!2969)))))

(declare-fun b!713964 () Bool)

(declare-fun call!34593 () Bool)

(assert (=> b!713964 (= e!401272 call!34593)))

(declare-fun b!713965 () Bool)

(assert (=> b!713965 (= e!401274 (contains!4000 acc!652 (select (arr!19363 a!3591) from!2969)))))

(declare-fun d!98125 () Bool)

(declare-fun res!477209 () Bool)

(assert (=> d!98125 (=> res!477209 e!401273)))

(assert (=> d!98125 (= res!477209 (bvsge from!2969 (size!19775 a!3591)))))

(assert (=> d!98125 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!401273)))

(declare-fun b!713966 () Bool)

(assert (=> b!713966 (= e!401272 call!34593)))

(declare-fun bm!34590 () Bool)

(assert (=> bm!34590 (= call!34593 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78744 (Cons!13453 (select (arr!19363 a!3591) from!2969) acc!652) acc!652)))))

(assert (= (and d!98125 (not res!477209)) b!713963))

(assert (= (and b!713963 res!477208) b!713965))

(assert (= (and b!713963 res!477210) b!713962))

(assert (= (and b!713962 c!78744) b!713966))

(assert (= (and b!713962 (not c!78744)) b!713964))

(assert (= (or b!713966 b!713964) bm!34590))

(assert (=> b!713962 m!670599))

(assert (=> b!713962 m!670599))

(assert (=> b!713962 m!670601))

(assert (=> b!713963 m!670599))

(assert (=> b!713963 m!670599))

(assert (=> b!713963 m!670601))

(assert (=> b!713965 m!670599))

(assert (=> b!713965 m!670599))

(declare-fun m!670657 () Bool)

(assert (=> b!713965 m!670657))

(assert (=> bm!34590 m!670599))

(declare-fun m!670659 () Bool)

(assert (=> bm!34590 m!670659))

(assert (=> b!713888 d!98125))

(declare-fun d!98131 () Bool)

(declare-fun lt!318681 () Bool)

(assert (=> d!98131 (= lt!318681 (select (content!367 newAcc!49) k0!2824))))

(declare-fun e!401280 () Bool)

(assert (=> d!98131 (= lt!318681 e!401280)))

(declare-fun res!477215 () Bool)

(assert (=> d!98131 (=> (not res!477215) (not e!401280))))

(assert (=> d!98131 (= res!477215 ((_ is Cons!13453) newAcc!49))))

(assert (=> d!98131 (= (contains!4000 newAcc!49 k0!2824) lt!318681)))

(declare-fun b!713971 () Bool)

(declare-fun e!401279 () Bool)

(assert (=> b!713971 (= e!401280 e!401279)))

(declare-fun res!477216 () Bool)

(assert (=> b!713971 (=> res!477216 e!401279)))

(assert (=> b!713971 (= res!477216 (= (h!14498 newAcc!49) k0!2824))))

(declare-fun b!713972 () Bool)

(assert (=> b!713972 (= e!401279 (contains!4000 (t!19780 newAcc!49) k0!2824))))

(assert (= (and d!98131 res!477215) b!713971))

(assert (= (and b!713971 (not res!477216)) b!713972))

(declare-fun m!670661 () Bool)

(assert (=> d!98131 m!670661))

(declare-fun m!670663 () Bool)

(assert (=> d!98131 m!670663))

(declare-fun m!670665 () Bool)

(assert (=> b!713972 m!670665))

(assert (=> b!713878 d!98131))

(declare-fun d!98135 () Bool)

(declare-fun res!477217 () Bool)

(declare-fun e!401281 () Bool)

(assert (=> d!98135 (=> res!477217 e!401281)))

(assert (=> d!98135 (= res!477217 ((_ is Nil!13454) acc!652))))

(assert (=> d!98135 (= (noDuplicate!1247 acc!652) e!401281)))

(declare-fun b!713973 () Bool)

(declare-fun e!401282 () Bool)

(assert (=> b!713973 (= e!401281 e!401282)))

(declare-fun res!477218 () Bool)

(assert (=> b!713973 (=> (not res!477218) (not e!401282))))

(assert (=> b!713973 (= res!477218 (not (contains!4000 (t!19780 acc!652) (h!14498 acc!652))))))

(declare-fun b!713974 () Bool)

(assert (=> b!713974 (= e!401282 (noDuplicate!1247 (t!19780 acc!652)))))

(assert (= (and d!98135 (not res!477217)) b!713973))

(assert (= (and b!713973 res!477218) b!713974))

(declare-fun m!670667 () Bool)

(assert (=> b!713973 m!670667))

(declare-fun m!670669 () Bool)

(assert (=> b!713974 m!670669))

(assert (=> b!713876 d!98135))

(declare-fun d!98137 () Bool)

(assert (=> d!98137 (= (array_inv!15137 a!3591) (bvsge (size!19775 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!63396 d!98137))

(declare-fun d!98141 () Bool)

(declare-fun lt!318682 () Bool)

(assert (=> d!98141 (= lt!318682 (select (content!367 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!401286 () Bool)

(assert (=> d!98141 (= lt!318682 e!401286)))

(declare-fun res!477221 () Bool)

(assert (=> d!98141 (=> (not res!477221) (not e!401286))))

(assert (=> d!98141 (= res!477221 ((_ is Cons!13453) acc!652))))

(assert (=> d!98141 (= (contains!4000 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318682)))

(declare-fun b!713977 () Bool)

(declare-fun e!401285 () Bool)

(assert (=> b!713977 (= e!401286 e!401285)))

(declare-fun res!477222 () Bool)

(assert (=> b!713977 (=> res!477222 e!401285)))

(assert (=> b!713977 (= res!477222 (= (h!14498 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!713978 () Bool)

(assert (=> b!713978 (= e!401285 (contains!4000 (t!19780 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98141 res!477221) b!713977))

(assert (= (and b!713977 (not res!477222)) b!713978))

(assert (=> d!98141 m!670651))

(declare-fun m!670675 () Bool)

(assert (=> d!98141 m!670675))

(declare-fun m!670677 () Bool)

(assert (=> b!713978 m!670677))

(assert (=> b!713887 d!98141))

(declare-fun d!98143 () Bool)

(assert (=> d!98143 (= (validKeyInArray!0 k0!2824) (and (not (= k0!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!713885 d!98143))

(declare-fun d!98145 () Bool)

(declare-fun lt!318685 () Bool)

(assert (=> d!98145 (= lt!318685 (select (content!367 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!401292 () Bool)

(assert (=> d!98145 (= lt!318685 e!401292)))

(declare-fun res!477227 () Bool)

(assert (=> d!98145 (=> (not res!477227) (not e!401292))))

(assert (=> d!98145 (= res!477227 ((_ is Cons!13453) acc!652))))

(assert (=> d!98145 (= (contains!4000 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318685)))

(declare-fun b!713983 () Bool)

(declare-fun e!401291 () Bool)

(assert (=> b!713983 (= e!401292 e!401291)))

(declare-fun res!477228 () Bool)

(assert (=> b!713983 (=> res!477228 e!401291)))

(assert (=> b!713983 (= res!477228 (= (h!14498 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!713984 () Bool)

(assert (=> b!713984 (= e!401291 (contains!4000 (t!19780 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98145 res!477227) b!713983))

(assert (= (and b!713983 (not res!477228)) b!713984))

(assert (=> d!98145 m!670651))

(declare-fun m!670679 () Bool)

(assert (=> d!98145 m!670679))

(declare-fun m!670681 () Bool)

(assert (=> b!713984 m!670681))

(assert (=> b!713875 d!98145))

(declare-fun d!98147 () Bool)

(declare-fun lt!318686 () Bool)

(assert (=> d!98147 (= lt!318686 (select (content!367 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!401294 () Bool)

(assert (=> d!98147 (= lt!318686 e!401294)))

(declare-fun res!477229 () Bool)

(assert (=> d!98147 (=> (not res!477229) (not e!401294))))

(assert (=> d!98147 (= res!477229 ((_ is Cons!13453) newAcc!49))))

(assert (=> d!98147 (= (contains!4000 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318686)))

(declare-fun b!713985 () Bool)

(declare-fun e!401293 () Bool)

(assert (=> b!713985 (= e!401294 e!401293)))

(declare-fun res!477230 () Bool)

(assert (=> b!713985 (=> res!477230 e!401293)))

(assert (=> b!713985 (= res!477230 (= (h!14498 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!713986 () Bool)

(assert (=> b!713986 (= e!401293 (contains!4000 (t!19780 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98147 res!477229) b!713985))

(assert (= (and b!713985 (not res!477230)) b!713986))

(assert (=> d!98147 m!670661))

(declare-fun m!670683 () Bool)

(assert (=> d!98147 m!670683))

(declare-fun m!670685 () Bool)

(assert (=> b!713986 m!670685))

(assert (=> b!713873 d!98147))

(declare-fun b!714014 () Bool)

(declare-fun e!401323 () Bool)

(declare-fun e!401321 () Bool)

(assert (=> b!714014 (= e!401323 e!401321)))

(declare-fun res!477258 () Bool)

(assert (=> b!714014 (=> res!477258 e!401321)))

(declare-fun e!401324 () Bool)

(assert (=> b!714014 (= res!477258 e!401324)))

(declare-fun res!477257 () Bool)

(assert (=> b!714014 (=> (not res!477257) (not e!401324))))

(assert (=> b!714014 (= res!477257 (= (h!14498 acc!652) (h!14498 newAcc!49)))))

(declare-fun d!98149 () Bool)

(declare-fun res!477259 () Bool)

(declare-fun e!401322 () Bool)

(assert (=> d!98149 (=> res!477259 e!401322)))

(assert (=> d!98149 (= res!477259 ((_ is Nil!13454) acc!652))))

(assert (=> d!98149 (= (subseq!444 acc!652 newAcc!49) e!401322)))

(declare-fun b!714016 () Bool)

(assert (=> b!714016 (= e!401321 (subseq!444 acc!652 (t!19780 newAcc!49)))))

(declare-fun b!714013 () Bool)

(assert (=> b!714013 (= e!401322 e!401323)))

(declare-fun res!477260 () Bool)

(assert (=> b!714013 (=> (not res!477260) (not e!401323))))

(assert (=> b!714013 (= res!477260 ((_ is Cons!13453) newAcc!49))))

(declare-fun b!714015 () Bool)

(assert (=> b!714015 (= e!401324 (subseq!444 (t!19780 acc!652) (t!19780 newAcc!49)))))

(assert (= (and d!98149 (not res!477259)) b!714013))

(assert (= (and b!714013 res!477260) b!714014))

(assert (= (and b!714014 res!477257) b!714015))

(assert (= (and b!714014 (not res!477258)) b!714016))

(declare-fun m!670705 () Bool)

(assert (=> b!714016 m!670705))

(declare-fun m!670707 () Bool)

(assert (=> b!714015 m!670707))

(assert (=> b!713884 d!98149))

(declare-fun d!98161 () Bool)

(declare-fun lt!318692 () Bool)

(assert (=> d!98161 (= lt!318692 (select (content!367 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!401330 () Bool)

(assert (=> d!98161 (= lt!318692 e!401330)))

(declare-fun res!477265 () Bool)

(assert (=> d!98161 (=> (not res!477265) (not e!401330))))

(assert (=> d!98161 (= res!477265 ((_ is Cons!13453) newAcc!49))))

(assert (=> d!98161 (= (contains!4000 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318692)))

(declare-fun b!714021 () Bool)

(declare-fun e!401329 () Bool)

(assert (=> b!714021 (= e!401330 e!401329)))

(declare-fun res!477266 () Bool)

(assert (=> b!714021 (=> res!477266 e!401329)))

(assert (=> b!714021 (= res!477266 (= (h!14498 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!714022 () Bool)

(assert (=> b!714022 (= e!401329 (contains!4000 (t!19780 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98161 res!477265) b!714021))

(assert (= (and b!714021 (not res!477266)) b!714022))

(assert (=> d!98161 m!670661))

(declare-fun m!670713 () Bool)

(assert (=> d!98161 m!670713))

(declare-fun m!670715 () Bool)

(assert (=> b!714022 m!670715))

(assert (=> b!713874 d!98161))

(declare-fun d!98165 () Bool)

(declare-fun res!477289 () Bool)

(declare-fun e!401353 () Bool)

(assert (=> d!98165 (=> res!477289 e!401353)))

(assert (=> d!98165 (= res!477289 (= (select (arr!19363 a!3591) from!2969) k0!2824))))

(assert (=> d!98165 (= (arrayContainsKey!0 a!3591 k0!2824 from!2969) e!401353)))

(declare-fun b!714045 () Bool)

(declare-fun e!401354 () Bool)

(assert (=> b!714045 (= e!401353 e!401354)))

(declare-fun res!477290 () Bool)

(assert (=> b!714045 (=> (not res!477290) (not e!401354))))

(assert (=> b!714045 (= res!477290 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19775 a!3591)))))

(declare-fun b!714046 () Bool)

(assert (=> b!714046 (= e!401354 (arrayContainsKey!0 a!3591 k0!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!98165 (not res!477289)) b!714045))

(assert (= (and b!714045 res!477290) b!714046))

(assert (=> d!98165 m!670599))

(declare-fun m!670723 () Bool)

(assert (=> b!714046 m!670723))

(assert (=> b!713872 d!98165))

(declare-fun d!98171 () Bool)

(declare-fun res!477295 () Bool)

(declare-fun e!401359 () Bool)

(assert (=> d!98171 (=> res!477295 e!401359)))

(assert (=> d!98171 (= res!477295 (= (select (arr!19363 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) k0!2824))))

(assert (=> d!98171 (= (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969)) e!401359)))

(declare-fun b!714051 () Bool)

(declare-fun e!401360 () Bool)

(assert (=> b!714051 (= e!401359 e!401360)))

(declare-fun res!477296 () Bool)

(assert (=> b!714051 (=> (not res!477296) (not e!401360))))

(assert (=> b!714051 (= res!477296 (bvslt (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (size!19775 a!3591)))))

(declare-fun b!714052 () Bool)

(assert (=> b!714052 (= e!401360 (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!98171 (not res!477295)) b!714051))

(assert (= (and b!714051 res!477296) b!714052))

(declare-fun m!670733 () Bool)

(assert (=> d!98171 m!670733))

(declare-fun m!670735 () Bool)

(assert (=> b!714052 m!670735))

(assert (=> b!713883 d!98171))

(declare-fun b!714088 () Bool)

(declare-fun e!401389 () List!13457)

(assert (=> b!714088 (= e!401389 Nil!13454)))

(declare-fun lt!318698 () List!13457)

(declare-fun b!714089 () Bool)

(declare-fun e!401388 () Bool)

(assert (=> b!714089 (= e!401388 (= (content!367 lt!318698) ((_ map and) (content!367 newAcc!49) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) k0!2824 true)))))))

(declare-fun bm!34598 () Bool)

(declare-fun call!34601 () List!13457)

(assert (=> bm!34598 (= call!34601 (-!409 (t!19780 newAcc!49) k0!2824))))

(declare-fun b!714090 () Bool)

(declare-fun e!401387 () List!13457)

(assert (=> b!714090 (= e!401387 call!34601)))

(declare-fun b!714091 () Bool)

(assert (=> b!714091 (= e!401387 (Cons!13453 (h!14498 newAcc!49) call!34601))))

(declare-fun b!714092 () Bool)

(assert (=> b!714092 (= e!401389 e!401387)))

(declare-fun c!78756 () Bool)

(assert (=> b!714092 (= c!78756 (= k0!2824 (h!14498 newAcc!49)))))

(declare-fun d!98177 () Bool)

(assert (=> d!98177 e!401388))

(declare-fun res!477310 () Bool)

(assert (=> d!98177 (=> (not res!477310) (not e!401388))))

(declare-fun size!19778 (List!13457) Int)

(assert (=> d!98177 (= res!477310 (<= (size!19778 lt!318698) (size!19778 newAcc!49)))))

(assert (=> d!98177 (= lt!318698 e!401389)))

(declare-fun c!78757 () Bool)

(assert (=> d!98177 (= c!78757 ((_ is Cons!13453) newAcc!49))))

(assert (=> d!98177 (= (-!409 newAcc!49 k0!2824) lt!318698)))

(assert (= (and d!98177 c!78757) b!714092))

(assert (= (and d!98177 (not c!78757)) b!714088))

(assert (= (and b!714092 c!78756) b!714090))

(assert (= (and b!714092 (not c!78756)) b!714091))

(assert (= (or b!714090 b!714091) bm!34598))

(assert (= (and d!98177 res!477310) b!714089))

(declare-fun m!670741 () Bool)

(assert (=> b!714089 m!670741))

(assert (=> b!714089 m!670661))

(declare-fun m!670743 () Bool)

(assert (=> b!714089 m!670743))

(declare-fun m!670746 () Bool)

(assert (=> bm!34598 m!670746))

(declare-fun m!670749 () Bool)

(assert (=> d!98177 m!670749))

(declare-fun m!670753 () Bool)

(assert (=> d!98177 m!670753))

(assert (=> b!713882 d!98177))

(declare-fun d!98183 () Bool)

(assert (=> d!98183 (= (validKeyInArray!0 (select (arr!19363 a!3591) from!2969)) (and (not (= (select (arr!19363 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19363 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!713880 d!98183))

(check-sat (not b!713944) (not d!98145) (not bm!34598) (not d!98123) (not d!98177) (not b!713962) (not b!713963) (not b!714015) (not d!98161) (not b!713986) (not b!714016) (not d!98131) (not b!714046) (not b!713974) (not b!713978) (not bm!34590) (not b!713973) (not b!713972) (not b!714022) (not b!714052) (not d!98147) (not b!714089) (not b!713951) (not b!713984) (not d!98141) (not b!713965) (not b!713945))
(check-sat)
