; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62802 () Bool)

(assert start!62802)

(declare-fun b!708214 () Bool)

(declare-fun res!472048 () Bool)

(declare-fun e!398567 () Bool)

(assert (=> b!708214 (=> (not res!472048) (not e!398567))))

(declare-datatypes ((List!13406 0))(
  ( (Nil!13403) (Cons!13402 (h!14447 (_ BitVec 64)) (t!19702 List!13406)) )
))
(declare-fun acc!652 () List!13406)

(declare-fun newAcc!49 () List!13406)

(declare-fun subseq!393 (List!13406 List!13406) Bool)

(assert (=> b!708214 (= res!472048 (subseq!393 acc!652 newAcc!49))))

(declare-fun b!708215 () Bool)

(declare-fun res!472042 () Bool)

(assert (=> b!708215 (=> (not res!472042) (not e!398567))))

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun contains!3949 (List!13406 (_ BitVec 64)) Bool)

(assert (=> b!708215 (= res!472042 (contains!3949 newAcc!49 k0!2824))))

(declare-fun b!708216 () Bool)

(declare-fun res!472040 () Bool)

(assert (=> b!708216 (=> (not res!472040) (not e!398567))))

(assert (=> b!708216 (= res!472040 (not (contains!3949 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!708217 () Bool)

(declare-fun res!472037 () Bool)

(assert (=> b!708217 (=> (not res!472037) (not e!398567))))

(declare-fun -!358 (List!13406 (_ BitVec 64)) List!13406)

(assert (=> b!708217 (= res!472037 (= (-!358 newAcc!49 k0!2824) acc!652))))

(declare-fun b!708218 () Bool)

(declare-fun res!472045 () Bool)

(assert (=> b!708218 (=> (not res!472045) (not e!398567))))

(assert (=> b!708218 (= res!472045 (not (contains!3949 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!708219 () Bool)

(declare-fun res!472050 () Bool)

(declare-fun e!398566 () Bool)

(assert (=> b!708219 (=> (not res!472050) (not e!398566))))

(declare-fun lt!318053 () List!13406)

(declare-fun noDuplicate!1196 (List!13406) Bool)

(assert (=> b!708219 (= res!472050 (noDuplicate!1196 lt!318053))))

(declare-fun b!708220 () Bool)

(declare-fun e!398568 () Bool)

(assert (=> b!708220 (= e!398568 (contains!3949 lt!318053 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708222 () Bool)

(declare-fun res!472035 () Bool)

(assert (=> b!708222 (=> (not res!472035) (not e!398567))))

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((array!40325 0))(
  ( (array!40326 (arr!19312 (Array (_ BitVec 32) (_ BitVec 64))) (size!19700 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40325)

(assert (=> b!708222 (= res!472035 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19700 a!3591)))))

(declare-fun b!708223 () Bool)

(declare-fun res!472051 () Bool)

(assert (=> b!708223 (=> (not res!472051) (not e!398567))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!708223 (= res!472051 (validKeyInArray!0 k0!2824))))

(declare-fun b!708224 () Bool)

(assert (=> b!708224 (= e!398567 e!398566)))

(declare-fun res!472049 () Bool)

(assert (=> b!708224 (=> (not res!472049) (not e!398566))))

(assert (=> b!708224 (= res!472049 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!503 (List!13406 (_ BitVec 64)) List!13406)

(assert (=> b!708224 (= lt!318053 ($colon$colon!503 acc!652 (select (arr!19312 a!3591) from!2969)))))

(declare-fun b!708225 () Bool)

(assert (=> b!708225 (= e!398566 e!398568)))

(declare-fun res!472047 () Bool)

(assert (=> b!708225 (=> res!472047 e!398568)))

(assert (=> b!708225 (= res!472047 (contains!3949 lt!318053 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708226 () Bool)

(declare-fun res!472053 () Bool)

(assert (=> b!708226 (=> (not res!472053) (not e!398567))))

(assert (=> b!708226 (= res!472053 (noDuplicate!1196 acc!652))))

(declare-fun b!708227 () Bool)

(declare-fun res!472043 () Bool)

(assert (=> b!708227 (=> (not res!472043) (not e!398567))))

(declare-fun arrayNoDuplicates!0 (array!40325 (_ BitVec 32) List!13406) Bool)

(assert (=> b!708227 (= res!472043 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!708228 () Bool)

(declare-fun res!472041 () Bool)

(assert (=> b!708228 (=> (not res!472041) (not e!398567))))

(assert (=> b!708228 (= res!472041 (not (contains!3949 acc!652 k0!2824)))))

(declare-fun b!708229 () Bool)

(declare-fun res!472034 () Bool)

(assert (=> b!708229 (=> (not res!472034) (not e!398567))))

(assert (=> b!708229 (= res!472034 (noDuplicate!1196 newAcc!49))))

(declare-fun b!708230 () Bool)

(declare-fun res!472044 () Bool)

(assert (=> b!708230 (=> (not res!472044) (not e!398567))))

(declare-fun arrayContainsKey!0 (array!40325 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!708230 (= res!472044 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!708231 () Bool)

(declare-fun res!472038 () Bool)

(assert (=> b!708231 (=> (not res!472038) (not e!398567))))

(assert (=> b!708231 (= res!472038 (not (contains!3949 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!708232 () Bool)

(declare-fun res!472039 () Bool)

(assert (=> b!708232 (=> (not res!472039) (not e!398567))))

(assert (=> b!708232 (= res!472039 (validKeyInArray!0 (select (arr!19312 a!3591) from!2969)))))

(declare-fun b!708233 () Bool)

(declare-fun res!472036 () Bool)

(assert (=> b!708233 (=> (not res!472036) (not e!398567))))

(assert (=> b!708233 (= res!472036 (not (contains!3949 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!708221 () Bool)

(declare-fun res!472046 () Bool)

(assert (=> b!708221 (=> (not res!472046) (not e!398566))))

(assert (=> b!708221 (= res!472046 (noDuplicate!1196 ($colon$colon!503 newAcc!49 (select (arr!19312 a!3591) from!2969))))))

(declare-fun res!472052 () Bool)

(assert (=> start!62802 (=> (not res!472052) (not e!398567))))

(assert (=> start!62802 (= res!472052 (and (bvslt (size!19700 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19700 a!3591))))))

(assert (=> start!62802 e!398567))

(assert (=> start!62802 true))

(declare-fun array_inv!15086 (array!40325) Bool)

(assert (=> start!62802 (array_inv!15086 a!3591)))

(assert (= (and start!62802 res!472052) b!708226))

(assert (= (and b!708226 res!472053) b!708229))

(assert (= (and b!708229 res!472034) b!708233))

(assert (= (and b!708233 res!472036) b!708218))

(assert (= (and b!708218 res!472045) b!708230))

(assert (= (and b!708230 res!472044) b!708228))

(assert (= (and b!708228 res!472041) b!708223))

(assert (= (and b!708223 res!472051) b!708227))

(assert (= (and b!708227 res!472043) b!708214))

(assert (= (and b!708214 res!472048) b!708215))

(assert (= (and b!708215 res!472042) b!708217))

(assert (= (and b!708217 res!472037) b!708216))

(assert (= (and b!708216 res!472040) b!708231))

(assert (= (and b!708231 res!472038) b!708222))

(assert (= (and b!708222 res!472035) b!708232))

(assert (= (and b!708232 res!472039) b!708224))

(assert (= (and b!708224 res!472049) b!708219))

(assert (= (and b!708219 res!472050) b!708221))

(assert (= (and b!708221 res!472046) b!708225))

(assert (= (and b!708225 (not res!472047)) b!708220))

(declare-fun m!665753 () Bool)

(assert (=> start!62802 m!665753))

(declare-fun m!665755 () Bool)

(assert (=> b!708216 m!665755))

(declare-fun m!665757 () Bool)

(assert (=> b!708230 m!665757))

(declare-fun m!665759 () Bool)

(assert (=> b!708217 m!665759))

(declare-fun m!665761 () Bool)

(assert (=> b!708214 m!665761))

(declare-fun m!665763 () Bool)

(assert (=> b!708231 m!665763))

(declare-fun m!665765 () Bool)

(assert (=> b!708220 m!665765))

(declare-fun m!665767 () Bool)

(assert (=> b!708223 m!665767))

(declare-fun m!665769 () Bool)

(assert (=> b!708215 m!665769))

(declare-fun m!665771 () Bool)

(assert (=> b!708229 m!665771))

(declare-fun m!665773 () Bool)

(assert (=> b!708228 m!665773))

(declare-fun m!665775 () Bool)

(assert (=> b!708225 m!665775))

(declare-fun m!665777 () Bool)

(assert (=> b!708224 m!665777))

(assert (=> b!708224 m!665777))

(declare-fun m!665779 () Bool)

(assert (=> b!708224 m!665779))

(assert (=> b!708221 m!665777))

(assert (=> b!708221 m!665777))

(declare-fun m!665781 () Bool)

(assert (=> b!708221 m!665781))

(assert (=> b!708221 m!665781))

(declare-fun m!665783 () Bool)

(assert (=> b!708221 m!665783))

(assert (=> b!708232 m!665777))

(assert (=> b!708232 m!665777))

(declare-fun m!665785 () Bool)

(assert (=> b!708232 m!665785))

(declare-fun m!665787 () Bool)

(assert (=> b!708219 m!665787))

(declare-fun m!665789 () Bool)

(assert (=> b!708233 m!665789))

(declare-fun m!665791 () Bool)

(assert (=> b!708226 m!665791))

(declare-fun m!665793 () Bool)

(assert (=> b!708218 m!665793))

(declare-fun m!665795 () Bool)

(assert (=> b!708227 m!665795))

(check-sat (not b!708233) (not b!708219) (not b!708226) (not b!708227) (not start!62802) (not b!708231) (not b!708216) (not b!708218) (not b!708214) (not b!708228) (not b!708232) (not b!708230) (not b!708224) (not b!708225) (not b!708223) (not b!708217) (not b!708215) (not b!708229) (not b!708221) (not b!708220))
(check-sat)
(get-model)

(declare-fun d!96713 () Bool)

(declare-fun res!472118 () Bool)

(declare-fun e!398585 () Bool)

(assert (=> d!96713 (=> res!472118 e!398585)))

(get-info :version)

(assert (=> d!96713 (= res!472118 ((_ is Nil!13403) ($colon$colon!503 newAcc!49 (select (arr!19312 a!3591) from!2969))))))

(assert (=> d!96713 (= (noDuplicate!1196 ($colon$colon!503 newAcc!49 (select (arr!19312 a!3591) from!2969))) e!398585)))

(declare-fun b!708298 () Bool)

(declare-fun e!398586 () Bool)

(assert (=> b!708298 (= e!398585 e!398586)))

(declare-fun res!472119 () Bool)

(assert (=> b!708298 (=> (not res!472119) (not e!398586))))

(assert (=> b!708298 (= res!472119 (not (contains!3949 (t!19702 ($colon$colon!503 newAcc!49 (select (arr!19312 a!3591) from!2969))) (h!14447 ($colon$colon!503 newAcc!49 (select (arr!19312 a!3591) from!2969))))))))

(declare-fun b!708299 () Bool)

(assert (=> b!708299 (= e!398586 (noDuplicate!1196 (t!19702 ($colon$colon!503 newAcc!49 (select (arr!19312 a!3591) from!2969)))))))

(assert (= (and d!96713 (not res!472118)) b!708298))

(assert (= (and b!708298 res!472119) b!708299))

(declare-fun m!665841 () Bool)

(assert (=> b!708298 m!665841))

(declare-fun m!665843 () Bool)

(assert (=> b!708299 m!665843))

(assert (=> b!708221 d!96713))

(declare-fun d!96715 () Bool)

(assert (=> d!96715 (= ($colon$colon!503 newAcc!49 (select (arr!19312 a!3591) from!2969)) (Cons!13402 (select (arr!19312 a!3591) from!2969) newAcc!49))))

(assert (=> b!708221 d!96715))

(declare-fun d!96717 () Bool)

(assert (=> d!96717 (= (validKeyInArray!0 (select (arr!19312 a!3591) from!2969)) (and (not (= (select (arr!19312 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19312 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!708232 d!96717))

(declare-fun d!96719 () Bool)

(declare-fun lt!318059 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!340 (List!13406) (InoxSet (_ BitVec 64)))

(assert (=> d!96719 (= lt!318059 (select (content!340 lt!318053) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!398591 () Bool)

(assert (=> d!96719 (= lt!318059 e!398591)))

(declare-fun res!472125 () Bool)

(assert (=> d!96719 (=> (not res!472125) (not e!398591))))

(assert (=> d!96719 (= res!472125 ((_ is Cons!13402) lt!318053))))

(assert (=> d!96719 (= (contains!3949 lt!318053 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318059)))

(declare-fun b!708304 () Bool)

(declare-fun e!398592 () Bool)

(assert (=> b!708304 (= e!398591 e!398592)))

(declare-fun res!472124 () Bool)

(assert (=> b!708304 (=> res!472124 e!398592)))

(assert (=> b!708304 (= res!472124 (= (h!14447 lt!318053) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708305 () Bool)

(assert (=> b!708305 (= e!398592 (contains!3949 (t!19702 lt!318053) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96719 res!472125) b!708304))

(assert (= (and b!708304 (not res!472124)) b!708305))

(declare-fun m!665845 () Bool)

(assert (=> d!96719 m!665845))

(declare-fun m!665847 () Bool)

(assert (=> d!96719 m!665847))

(declare-fun m!665849 () Bool)

(assert (=> b!708305 m!665849))

(assert (=> b!708220 d!96719))

(declare-fun d!96721 () Bool)

(declare-fun lt!318060 () Bool)

(assert (=> d!96721 (= lt!318060 (select (content!340 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!398593 () Bool)

(assert (=> d!96721 (= lt!318060 e!398593)))

(declare-fun res!472127 () Bool)

(assert (=> d!96721 (=> (not res!472127) (not e!398593))))

(assert (=> d!96721 (= res!472127 ((_ is Cons!13402) newAcc!49))))

(assert (=> d!96721 (= (contains!3949 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318060)))

(declare-fun b!708306 () Bool)

(declare-fun e!398594 () Bool)

(assert (=> b!708306 (= e!398593 e!398594)))

(declare-fun res!472126 () Bool)

(assert (=> b!708306 (=> res!472126 e!398594)))

(assert (=> b!708306 (= res!472126 (= (h!14447 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708307 () Bool)

(assert (=> b!708307 (= e!398594 (contains!3949 (t!19702 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96721 res!472127) b!708306))

(assert (= (and b!708306 (not res!472126)) b!708307))

(declare-fun m!665851 () Bool)

(assert (=> d!96721 m!665851))

(declare-fun m!665853 () Bool)

(assert (=> d!96721 m!665853))

(declare-fun m!665855 () Bool)

(assert (=> b!708307 m!665855))

(assert (=> b!708231 d!96721))

(declare-fun d!96723 () Bool)

(assert (=> d!96723 (= ($colon$colon!503 acc!652 (select (arr!19312 a!3591) from!2969)) (Cons!13402 (select (arr!19312 a!3591) from!2969) acc!652))))

(assert (=> b!708224 d!96723))

(declare-fun b!708319 () Bool)

(declare-fun e!398603 () Bool)

(assert (=> b!708319 (= e!398603 (subseq!393 acc!652 (t!19702 newAcc!49)))))

(declare-fun b!708317 () Bool)

(declare-fun e!398606 () Bool)

(assert (=> b!708317 (= e!398606 e!398603)))

(declare-fun res!472136 () Bool)

(assert (=> b!708317 (=> res!472136 e!398603)))

(declare-fun e!398604 () Bool)

(assert (=> b!708317 (= res!472136 e!398604)))

(declare-fun res!472138 () Bool)

(assert (=> b!708317 (=> (not res!472138) (not e!398604))))

(assert (=> b!708317 (= res!472138 (= (h!14447 acc!652) (h!14447 newAcc!49)))))

(declare-fun b!708316 () Bool)

(declare-fun e!398605 () Bool)

(assert (=> b!708316 (= e!398605 e!398606)))

(declare-fun res!472137 () Bool)

(assert (=> b!708316 (=> (not res!472137) (not e!398606))))

(assert (=> b!708316 (= res!472137 ((_ is Cons!13402) newAcc!49))))

(declare-fun d!96725 () Bool)

(declare-fun res!472139 () Bool)

(assert (=> d!96725 (=> res!472139 e!398605)))

(assert (=> d!96725 (= res!472139 ((_ is Nil!13403) acc!652))))

(assert (=> d!96725 (= (subseq!393 acc!652 newAcc!49) e!398605)))

(declare-fun b!708318 () Bool)

(assert (=> b!708318 (= e!398604 (subseq!393 (t!19702 acc!652) (t!19702 newAcc!49)))))

(assert (= (and d!96725 (not res!472139)) b!708316))

(assert (= (and b!708316 res!472137) b!708317))

(assert (= (and b!708317 res!472138) b!708318))

(assert (= (and b!708317 (not res!472136)) b!708319))

(declare-fun m!665857 () Bool)

(assert (=> b!708319 m!665857))

(declare-fun m!665859 () Bool)

(assert (=> b!708318 m!665859))

(assert (=> b!708214 d!96725))

(declare-fun d!96727 () Bool)

(declare-fun lt!318061 () Bool)

(assert (=> d!96727 (= lt!318061 (select (content!340 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!398607 () Bool)

(assert (=> d!96727 (= lt!318061 e!398607)))

(declare-fun res!472141 () Bool)

(assert (=> d!96727 (=> (not res!472141) (not e!398607))))

(assert (=> d!96727 (= res!472141 ((_ is Cons!13402) acc!652))))

(assert (=> d!96727 (= (contains!3949 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318061)))

(declare-fun b!708320 () Bool)

(declare-fun e!398608 () Bool)

(assert (=> b!708320 (= e!398607 e!398608)))

(declare-fun res!472140 () Bool)

(assert (=> b!708320 (=> res!472140 e!398608)))

(assert (=> b!708320 (= res!472140 (= (h!14447 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708321 () Bool)

(assert (=> b!708321 (= e!398608 (contains!3949 (t!19702 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96727 res!472141) b!708320))

(assert (= (and b!708320 (not res!472140)) b!708321))

(declare-fun m!665861 () Bool)

(assert (=> d!96727 m!665861))

(declare-fun m!665863 () Bool)

(assert (=> d!96727 m!665863))

(declare-fun m!665865 () Bool)

(assert (=> b!708321 m!665865))

(assert (=> b!708233 d!96727))

(declare-fun d!96729 () Bool)

(assert (=> d!96729 (= (validKeyInArray!0 k0!2824) (and (not (= k0!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!708223 d!96729))

(declare-fun d!96731 () Bool)

(declare-fun lt!318062 () Bool)

(assert (=> d!96731 (= lt!318062 (select (content!340 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!398609 () Bool)

(assert (=> d!96731 (= lt!318062 e!398609)))

(declare-fun res!472143 () Bool)

(assert (=> d!96731 (=> (not res!472143) (not e!398609))))

(assert (=> d!96731 (= res!472143 ((_ is Cons!13402) newAcc!49))))

(assert (=> d!96731 (= (contains!3949 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318062)))

(declare-fun b!708322 () Bool)

(declare-fun e!398610 () Bool)

(assert (=> b!708322 (= e!398609 e!398610)))

(declare-fun res!472142 () Bool)

(assert (=> b!708322 (=> res!472142 e!398610)))

(assert (=> b!708322 (= res!472142 (= (h!14447 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708323 () Bool)

(assert (=> b!708323 (= e!398610 (contains!3949 (t!19702 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96731 res!472143) b!708322))

(assert (= (and b!708322 (not res!472142)) b!708323))

(assert (=> d!96731 m!665851))

(declare-fun m!665867 () Bool)

(assert (=> d!96731 m!665867))

(declare-fun m!665869 () Bool)

(assert (=> b!708323 m!665869))

(assert (=> b!708216 d!96731))

(declare-fun b!708352 () Bool)

(declare-fun e!398638 () Bool)

(declare-fun e!398637 () Bool)

(assert (=> b!708352 (= e!398638 e!398637)))

(declare-fun c!78459 () Bool)

(assert (=> b!708352 (= c!78459 (validKeyInArray!0 (select (arr!19312 a!3591) from!2969)))))

(declare-fun b!708353 () Bool)

(declare-fun call!34398 () Bool)

(assert (=> b!708353 (= e!398637 call!34398)))

(declare-fun b!708354 () Bool)

(assert (=> b!708354 (= e!398637 call!34398)))

(declare-fun b!708355 () Bool)

(declare-fun e!398639 () Bool)

(assert (=> b!708355 (= e!398639 e!398638)))

(declare-fun res!472170 () Bool)

(assert (=> b!708355 (=> (not res!472170) (not e!398638))))

(declare-fun e!398640 () Bool)

(assert (=> b!708355 (= res!472170 (not e!398640))))

(declare-fun res!472168 () Bool)

(assert (=> b!708355 (=> (not res!472168) (not e!398640))))

(assert (=> b!708355 (= res!472168 (validKeyInArray!0 (select (arr!19312 a!3591) from!2969)))))

(declare-fun b!708356 () Bool)

(assert (=> b!708356 (= e!398640 (contains!3949 acc!652 (select (arr!19312 a!3591) from!2969)))))

(declare-fun d!96735 () Bool)

(declare-fun res!472169 () Bool)

(assert (=> d!96735 (=> res!472169 e!398639)))

(assert (=> d!96735 (= res!472169 (bvsge from!2969 (size!19700 a!3591)))))

(assert (=> d!96735 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!398639)))

(declare-fun bm!34395 () Bool)

(assert (=> bm!34395 (= call!34398 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78459 (Cons!13402 (select (arr!19312 a!3591) from!2969) acc!652) acc!652)))))

(assert (= (and d!96735 (not res!472169)) b!708355))

(assert (= (and b!708355 res!472168) b!708356))

(assert (= (and b!708355 res!472170) b!708352))

(assert (= (and b!708352 c!78459) b!708354))

(assert (= (and b!708352 (not c!78459)) b!708353))

(assert (= (or b!708354 b!708353) bm!34395))

(assert (=> b!708352 m!665777))

(assert (=> b!708352 m!665777))

(assert (=> b!708352 m!665785))

(assert (=> b!708355 m!665777))

(assert (=> b!708355 m!665777))

(assert (=> b!708355 m!665785))

(assert (=> b!708356 m!665777))

(assert (=> b!708356 m!665777))

(declare-fun m!665877 () Bool)

(assert (=> b!708356 m!665877))

(assert (=> bm!34395 m!665777))

(declare-fun m!665879 () Bool)

(assert (=> bm!34395 m!665879))

(assert (=> b!708227 d!96735))

(declare-fun d!96747 () Bool)

(declare-fun lt!318065 () Bool)

(assert (=> d!96747 (= lt!318065 (select (content!340 lt!318053) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!398645 () Bool)

(assert (=> d!96747 (= lt!318065 e!398645)))

(declare-fun res!472176 () Bool)

(assert (=> d!96747 (=> (not res!472176) (not e!398645))))

(assert (=> d!96747 (= res!472176 ((_ is Cons!13402) lt!318053))))

(assert (=> d!96747 (= (contains!3949 lt!318053 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318065)))

(declare-fun b!708361 () Bool)

(declare-fun e!398646 () Bool)

(assert (=> b!708361 (= e!398645 e!398646)))

(declare-fun res!472175 () Bool)

(assert (=> b!708361 (=> res!472175 e!398646)))

(assert (=> b!708361 (= res!472175 (= (h!14447 lt!318053) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708362 () Bool)

(assert (=> b!708362 (= e!398646 (contains!3949 (t!19702 lt!318053) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96747 res!472176) b!708361))

(assert (= (and b!708361 (not res!472175)) b!708362))

(assert (=> d!96747 m!665845))

(declare-fun m!665881 () Bool)

(assert (=> d!96747 m!665881))

(declare-fun m!665883 () Bool)

(assert (=> b!708362 m!665883))

(assert (=> b!708225 d!96747))

(declare-fun d!96749 () Bool)

(declare-fun lt!318066 () Bool)

(assert (=> d!96749 (= lt!318066 (select (content!340 newAcc!49) k0!2824))))

(declare-fun e!398647 () Bool)

(assert (=> d!96749 (= lt!318066 e!398647)))

(declare-fun res!472178 () Bool)

(assert (=> d!96749 (=> (not res!472178) (not e!398647))))

(assert (=> d!96749 (= res!472178 ((_ is Cons!13402) newAcc!49))))

(assert (=> d!96749 (= (contains!3949 newAcc!49 k0!2824) lt!318066)))

(declare-fun b!708363 () Bool)

(declare-fun e!398648 () Bool)

(assert (=> b!708363 (= e!398647 e!398648)))

(declare-fun res!472177 () Bool)

(assert (=> b!708363 (=> res!472177 e!398648)))

(assert (=> b!708363 (= res!472177 (= (h!14447 newAcc!49) k0!2824))))

(declare-fun b!708364 () Bool)

(assert (=> b!708364 (= e!398648 (contains!3949 (t!19702 newAcc!49) k0!2824))))

(assert (= (and d!96749 res!472178) b!708363))

(assert (= (and b!708363 (not res!472177)) b!708364))

(assert (=> d!96749 m!665851))

(declare-fun m!665885 () Bool)

(assert (=> d!96749 m!665885))

(declare-fun m!665887 () Bool)

(assert (=> b!708364 m!665887))

(assert (=> b!708215 d!96749))

(declare-fun d!96751 () Bool)

(declare-fun res!472179 () Bool)

(declare-fun e!398649 () Bool)

(assert (=> d!96751 (=> res!472179 e!398649)))

(assert (=> d!96751 (= res!472179 ((_ is Nil!13403) acc!652))))

(assert (=> d!96751 (= (noDuplicate!1196 acc!652) e!398649)))

(declare-fun b!708365 () Bool)

(declare-fun e!398650 () Bool)

(assert (=> b!708365 (= e!398649 e!398650)))

(declare-fun res!472180 () Bool)

(assert (=> b!708365 (=> (not res!472180) (not e!398650))))

(assert (=> b!708365 (= res!472180 (not (contains!3949 (t!19702 acc!652) (h!14447 acc!652))))))

(declare-fun b!708366 () Bool)

(assert (=> b!708366 (= e!398650 (noDuplicate!1196 (t!19702 acc!652)))))

(assert (= (and d!96751 (not res!472179)) b!708365))

(assert (= (and b!708365 res!472180) b!708366))

(declare-fun m!665889 () Bool)

(assert (=> b!708365 m!665889))

(declare-fun m!665891 () Bool)

(assert (=> b!708366 m!665891))

(assert (=> b!708226 d!96751))

(declare-fun d!96753 () Bool)

(assert (=> d!96753 (= (array_inv!15086 a!3591) (bvsge (size!19700 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!62802 d!96753))

(declare-fun d!96757 () Bool)

(declare-fun res!472185 () Bool)

(declare-fun e!398660 () Bool)

(assert (=> d!96757 (=> res!472185 e!398660)))

(assert (=> d!96757 (= res!472185 ((_ is Nil!13403) newAcc!49))))

(assert (=> d!96757 (= (noDuplicate!1196 newAcc!49) e!398660)))

(declare-fun b!708379 () Bool)

(declare-fun e!398661 () Bool)

(assert (=> b!708379 (= e!398660 e!398661)))

(declare-fun res!472186 () Bool)

(assert (=> b!708379 (=> (not res!472186) (not e!398661))))

(assert (=> b!708379 (= res!472186 (not (contains!3949 (t!19702 newAcc!49) (h!14447 newAcc!49))))))

(declare-fun b!708380 () Bool)

(assert (=> b!708380 (= e!398661 (noDuplicate!1196 (t!19702 newAcc!49)))))

(assert (= (and d!96757 (not res!472185)) b!708379))

(assert (= (and b!708379 res!472186) b!708380))

(declare-fun m!665905 () Bool)

(assert (=> b!708379 m!665905))

(declare-fun m!665907 () Bool)

(assert (=> b!708380 m!665907))

(assert (=> b!708229 d!96757))

(declare-fun d!96761 () Bool)

(declare-fun res!472189 () Bool)

(declare-fun e!398664 () Bool)

(assert (=> d!96761 (=> res!472189 e!398664)))

(assert (=> d!96761 (= res!472189 ((_ is Nil!13403) lt!318053))))

(assert (=> d!96761 (= (noDuplicate!1196 lt!318053) e!398664)))

(declare-fun b!708383 () Bool)

(declare-fun e!398665 () Bool)

(assert (=> b!708383 (= e!398664 e!398665)))

(declare-fun res!472190 () Bool)

(assert (=> b!708383 (=> (not res!472190) (not e!398665))))

(assert (=> b!708383 (= res!472190 (not (contains!3949 (t!19702 lt!318053) (h!14447 lt!318053))))))

(declare-fun b!708384 () Bool)

(assert (=> b!708384 (= e!398665 (noDuplicate!1196 (t!19702 lt!318053)))))

(assert (= (and d!96761 (not res!472189)) b!708383))

(assert (= (and b!708383 res!472190) b!708384))

(declare-fun m!665911 () Bool)

(assert (=> b!708383 m!665911))

(declare-fun m!665915 () Bool)

(assert (=> b!708384 m!665915))

(assert (=> b!708219 d!96761))

(declare-fun d!96765 () Bool)

(declare-fun res!472198 () Bool)

(declare-fun e!398675 () Bool)

(assert (=> d!96765 (=> res!472198 e!398675)))

(assert (=> d!96765 (= res!472198 (= (select (arr!19312 a!3591) from!2969) k0!2824))))

(assert (=> d!96765 (= (arrayContainsKey!0 a!3591 k0!2824 from!2969) e!398675)))

(declare-fun b!708396 () Bool)

(declare-fun e!398676 () Bool)

(assert (=> b!708396 (= e!398675 e!398676)))

(declare-fun res!472199 () Bool)

(assert (=> b!708396 (=> (not res!472199) (not e!398676))))

(assert (=> b!708396 (= res!472199 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19700 a!3591)))))

(declare-fun b!708397 () Bool)

(assert (=> b!708397 (= e!398676 (arrayContainsKey!0 a!3591 k0!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!96765 (not res!472198)) b!708396))

(assert (= (and b!708396 res!472199) b!708397))

(assert (=> d!96765 m!665777))

(declare-fun m!665923 () Bool)

(assert (=> b!708397 m!665923))

(assert (=> b!708230 d!96765))

(declare-fun b!708437 () Bool)

(declare-fun e!398709 () List!13406)

(declare-fun e!398710 () List!13406)

(assert (=> b!708437 (= e!398709 e!398710)))

(declare-fun c!78475 () Bool)

(assert (=> b!708437 (= c!78475 (= k0!2824 (h!14447 newAcc!49)))))

(declare-fun b!708438 () Bool)

(assert (=> b!708438 (= e!398709 Nil!13403)))

(declare-fun d!96767 () Bool)

(declare-fun e!398708 () Bool)

(assert (=> d!96767 e!398708))

(declare-fun res!472221 () Bool)

(assert (=> d!96767 (=> (not res!472221) (not e!398708))))

(declare-fun lt!318077 () List!13406)

(declare-fun size!19703 (List!13406) Int)

(assert (=> d!96767 (= res!472221 (<= (size!19703 lt!318077) (size!19703 newAcc!49)))))

(assert (=> d!96767 (= lt!318077 e!398709)))

(declare-fun c!78476 () Bool)

(assert (=> d!96767 (= c!78476 ((_ is Cons!13402) newAcc!49))))

(assert (=> d!96767 (= (-!358 newAcc!49 k0!2824) lt!318077)))

(declare-fun b!708439 () Bool)

(declare-fun call!34409 () List!13406)

(assert (=> b!708439 (= e!398710 call!34409)))

(declare-fun b!708440 () Bool)

(assert (=> b!708440 (= e!398710 (Cons!13402 (h!14447 newAcc!49) call!34409))))

(declare-fun b!708441 () Bool)

(assert (=> b!708441 (= e!398708 (= (content!340 lt!318077) ((_ map and) (content!340 newAcc!49) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) k0!2824 true)))))))

(declare-fun bm!34406 () Bool)

(assert (=> bm!34406 (= call!34409 (-!358 (t!19702 newAcc!49) k0!2824))))

(assert (= (and d!96767 c!78476) b!708437))

(assert (= (and d!96767 (not c!78476)) b!708438))

(assert (= (and b!708437 c!78475) b!708439))

(assert (= (and b!708437 (not c!78475)) b!708440))

(assert (= (or b!708439 b!708440) bm!34406))

(assert (= (and d!96767 res!472221) b!708441))

(declare-fun m!665945 () Bool)

(assert (=> d!96767 m!665945))

(declare-fun m!665947 () Bool)

(assert (=> d!96767 m!665947))

(declare-fun m!665949 () Bool)

(assert (=> b!708441 m!665949))

(assert (=> b!708441 m!665851))

(declare-fun m!665951 () Bool)

(assert (=> b!708441 m!665951))

(declare-fun m!665953 () Bool)

(assert (=> bm!34406 m!665953))

(assert (=> b!708217 d!96767))

(declare-fun d!96781 () Bool)

(declare-fun lt!318078 () Bool)

(assert (=> d!96781 (= lt!318078 (select (content!340 acc!652) k0!2824))))

(declare-fun e!398713 () Bool)

(assert (=> d!96781 (= lt!318078 e!398713)))

(declare-fun res!472225 () Bool)

(assert (=> d!96781 (=> (not res!472225) (not e!398713))))

(assert (=> d!96781 (= res!472225 ((_ is Cons!13402) acc!652))))

(assert (=> d!96781 (= (contains!3949 acc!652 k0!2824) lt!318078)))

(declare-fun b!708444 () Bool)

(declare-fun e!398714 () Bool)

(assert (=> b!708444 (= e!398713 e!398714)))

(declare-fun res!472224 () Bool)

(assert (=> b!708444 (=> res!472224 e!398714)))

(assert (=> b!708444 (= res!472224 (= (h!14447 acc!652) k0!2824))))

(declare-fun b!708445 () Bool)

(assert (=> b!708445 (= e!398714 (contains!3949 (t!19702 acc!652) k0!2824))))

(assert (= (and d!96781 res!472225) b!708444))

(assert (= (and b!708444 (not res!472224)) b!708445))

(assert (=> d!96781 m!665861))

(declare-fun m!665955 () Bool)

(assert (=> d!96781 m!665955))

(declare-fun m!665957 () Bool)

(assert (=> b!708445 m!665957))

(assert (=> b!708228 d!96781))

(declare-fun d!96783 () Bool)

(declare-fun lt!318079 () Bool)

(assert (=> d!96783 (= lt!318079 (select (content!340 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!398717 () Bool)

(assert (=> d!96783 (= lt!318079 e!398717)))

(declare-fun res!472229 () Bool)

(assert (=> d!96783 (=> (not res!472229) (not e!398717))))

(assert (=> d!96783 (= res!472229 ((_ is Cons!13402) acc!652))))

(assert (=> d!96783 (= (contains!3949 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318079)))

(declare-fun b!708448 () Bool)

(declare-fun e!398718 () Bool)

(assert (=> b!708448 (= e!398717 e!398718)))

(declare-fun res!472228 () Bool)

(assert (=> b!708448 (=> res!472228 e!398718)))

(assert (=> b!708448 (= res!472228 (= (h!14447 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708449 () Bool)

(assert (=> b!708449 (= e!398718 (contains!3949 (t!19702 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96783 res!472229) b!708448))

(assert (= (and b!708448 (not res!472228)) b!708449))

(assert (=> d!96783 m!665861))

(declare-fun m!665959 () Bool)

(assert (=> d!96783 m!665959))

(declare-fun m!665961 () Bool)

(assert (=> b!708449 m!665961))

(assert (=> b!708218 d!96783))

(check-sat (not b!708366) (not b!708298) (not b!708441) (not bm!34406) (not b!708319) (not d!96747) (not b!708299) (not b!708321) (not b!708352) (not b!708397) (not b!708380) (not b!708364) (not d!96727) (not b!708384) (not bm!34395) (not d!96783) (not d!96719) (not b!708323) (not b!708355) (not b!708356) (not d!96749) (not b!708307) (not d!96767) (not b!708318) (not d!96721) (not b!708383) (not b!708379) (not d!96781) (not b!708365) (not b!708445) (not b!708362) (not b!708449) (not d!96731) (not b!708305))
(check-sat)
