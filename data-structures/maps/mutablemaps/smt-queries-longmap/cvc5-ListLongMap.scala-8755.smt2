; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106306 () Bool)

(assert start!106306)

(declare-fun res!842238 () Bool)

(declare-fun e!720174 () Bool)

(assert (=> start!106306 (=> (not res!842238) (not e!720174))))

(declare-datatypes ((B!1922 0))(
  ( (B!1923 (val!16296 Int)) )
))
(declare-datatypes ((tuple2!21260 0))(
  ( (tuple2!21261 (_1!10640 (_ BitVec 64)) (_2!10640 B!1922)) )
))
(declare-datatypes ((List!28463 0))(
  ( (Nil!28460) (Cons!28459 (h!29668 tuple2!21260) (t!41991 List!28463)) )
))
(declare-datatypes ((ListLongMap!19145 0))(
  ( (ListLongMap!19146 (toList!9588 List!28463)) )
))
(declare-fun lm!212 () ListLongMap!19145)

(declare-fun a1!67 () (_ BitVec 64))

(declare-fun contains!7646 (ListLongMap!19145 (_ BitVec 64)) Bool)

(assert (=> start!106306 (= res!842238 (not (contains!7646 lm!212 a1!67)))))

(assert (=> start!106306 e!720174))

(declare-fun e!720175 () Bool)

(declare-fun inv!44088 (ListLongMap!19145) Bool)

(assert (=> start!106306 (and (inv!44088 lm!212) e!720175)))

(assert (=> start!106306 true))

(declare-fun tp_is_empty!32455 () Bool)

(assert (=> start!106306 tp_is_empty!32455))

(declare-fun b!1264592 () Bool)

(declare-fun res!842239 () Bool)

(assert (=> b!1264592 (=> (not res!842239) (not e!720174))))

(declare-fun isStrictlySorted!771 (List!28463) Bool)

(assert (=> b!1264592 (= res!842239 (isStrictlySorted!771 (toList!9588 lm!212)))))

(declare-fun b!1264593 () Bool)

(declare-fun res!842237 () Bool)

(assert (=> b!1264593 (=> (not res!842237) (not e!720174))))

(declare-fun containsKey!632 (List!28463 (_ BitVec 64)) Bool)

(assert (=> b!1264593 (= res!842237 (not (containsKey!632 (toList!9588 lm!212) a1!67)))))

(declare-fun b!1264595 () Bool)

(declare-fun tp!96240 () Bool)

(assert (=> b!1264595 (= e!720175 tp!96240)))

(declare-fun b1!78 () B!1922)

(declare-fun b!1264594 () Bool)

(declare-fun -!2154 (ListLongMap!19145 (_ BitVec 64)) ListLongMap!19145)

(declare-fun +!4239 (ListLongMap!19145 tuple2!21260) ListLongMap!19145)

(assert (=> b!1264594 (= e!720174 (not (= (-!2154 (+!4239 lm!212 (tuple2!21261 a1!67 b1!78)) a1!67) lm!212)))))

(declare-fun removeStrictlySorted!147 (List!28463 (_ BitVec 64)) List!28463)

(declare-fun insertStrictlySorted!453 (List!28463 (_ BitVec 64) B!1922) List!28463)

(assert (=> b!1264594 (= (removeStrictlySorted!147 (insertStrictlySorted!453 (toList!9588 lm!212) a1!67 b1!78) a1!67) (toList!9588 lm!212))))

(declare-datatypes ((Unit!42111 0))(
  ( (Unit!42112) )
))
(declare-fun lt!573815 () Unit!42111)

(declare-fun lemmaInsertStrictlySortedThenRemoveIsSame!1 (List!28463 (_ BitVec 64) B!1922) Unit!42111)

(assert (=> b!1264594 (= lt!573815 (lemmaInsertStrictlySortedThenRemoveIsSame!1 (toList!9588 lm!212) a1!67 b1!78))))

(assert (= (and start!106306 res!842238) b!1264592))

(assert (= (and b!1264592 res!842239) b!1264593))

(assert (= (and b!1264593 res!842237) b!1264594))

(assert (= start!106306 b!1264595))

(declare-fun m!1165119 () Bool)

(assert (=> start!106306 m!1165119))

(declare-fun m!1165121 () Bool)

(assert (=> start!106306 m!1165121))

(declare-fun m!1165123 () Bool)

(assert (=> b!1264592 m!1165123))

(declare-fun m!1165125 () Bool)

(assert (=> b!1264593 m!1165125))

(declare-fun m!1165127 () Bool)

(assert (=> b!1264594 m!1165127))

(declare-fun m!1165129 () Bool)

(assert (=> b!1264594 m!1165129))

(declare-fun m!1165131 () Bool)

(assert (=> b!1264594 m!1165131))

(declare-fun m!1165133 () Bool)

(assert (=> b!1264594 m!1165133))

(assert (=> b!1264594 m!1165133))

(declare-fun m!1165135 () Bool)

(assert (=> b!1264594 m!1165135))

(assert (=> b!1264594 m!1165127))

(push 1)

(assert (not b!1264594))

(assert (not b!1264592))

(assert (not b!1264595))

(assert (not start!106306))

(assert tp_is_empty!32455)

(assert (not b!1264593))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!138697 () Bool)

(assert (=> d!138697 (= (removeStrictlySorted!147 (insertStrictlySorted!453 (toList!9588 lm!212) a1!67 b1!78) a1!67) (toList!9588 lm!212))))

(declare-fun lt!573824 () Unit!42111)

(declare-fun choose!1889 (List!28463 (_ BitVec 64) B!1922) Unit!42111)

(assert (=> d!138697 (= lt!573824 (choose!1889 (toList!9588 lm!212) a1!67 b1!78))))

(assert (=> d!138697 (isStrictlySorted!771 (toList!9588 lm!212))))

(assert (=> d!138697 (= (lemmaInsertStrictlySortedThenRemoveIsSame!1 (toList!9588 lm!212) a1!67 b1!78) lt!573824)))

(declare-fun bs!35779 () Bool)

(assert (= bs!35779 d!138697))

(assert (=> bs!35779 m!1165133))

(assert (=> bs!35779 m!1165133))

(assert (=> bs!35779 m!1165135))

(declare-fun m!1165173 () Bool)

(assert (=> bs!35779 m!1165173))

(assert (=> bs!35779 m!1165123))

(assert (=> b!1264594 d!138697))

(declare-fun b!1264636 () Bool)

(declare-fun e!720202 () List!28463)

(assert (=> b!1264636 (= e!720202 (t!41991 (insertStrictlySorted!453 (toList!9588 lm!212) a1!67 b1!78)))))

(declare-fun b!1264637 () Bool)

(declare-fun e!720201 () List!28463)

(assert (=> b!1264637 (= e!720201 Nil!28460)))

(declare-fun b!1264638 () Bool)

(declare-fun $colon$colon!634 (List!28463 tuple2!21260) List!28463)

(assert (=> b!1264638 (= e!720201 ($colon$colon!634 (removeStrictlySorted!147 (t!41991 (insertStrictlySorted!453 (toList!9588 lm!212) a1!67 b1!78)) a1!67) (h!29668 (insertStrictlySorted!453 (toList!9588 lm!212) a1!67 b1!78))))))

(declare-fun b!1264639 () Bool)

(assert (=> b!1264639 (= e!720202 e!720201)))

(declare-fun c!123103 () Bool)

(assert (=> b!1264639 (= c!123103 (and (is-Cons!28459 (insertStrictlySorted!453 (toList!9588 lm!212) a1!67 b1!78)) (not (= (_1!10640 (h!29668 (insertStrictlySorted!453 (toList!9588 lm!212) a1!67 b1!78))) a1!67))))))

(declare-fun d!138703 () Bool)

(declare-fun e!720200 () Bool)

(assert (=> d!138703 e!720200))

(declare-fun res!842266 () Bool)

(assert (=> d!138703 (=> (not res!842266) (not e!720200))))

(declare-fun lt!573830 () List!28463)

(assert (=> d!138703 (= res!842266 (isStrictlySorted!771 lt!573830))))

(assert (=> d!138703 (= lt!573830 e!720202)))

(declare-fun c!123102 () Bool)

(assert (=> d!138703 (= c!123102 (and (is-Cons!28459 (insertStrictlySorted!453 (toList!9588 lm!212) a1!67 b1!78)) (= (_1!10640 (h!29668 (insertStrictlySorted!453 (toList!9588 lm!212) a1!67 b1!78))) a1!67)))))

(assert (=> d!138703 (isStrictlySorted!771 (insertStrictlySorted!453 (toList!9588 lm!212) a1!67 b1!78))))

(assert (=> d!138703 (= (removeStrictlySorted!147 (insertStrictlySorted!453 (toList!9588 lm!212) a1!67 b1!78) a1!67) lt!573830)))

(declare-fun b!1264640 () Bool)

(assert (=> b!1264640 (= e!720200 (not (containsKey!632 lt!573830 a1!67)))))

(assert (= (and d!138703 c!123102) b!1264636))

(assert (= (and d!138703 (not c!123102)) b!1264639))

(assert (= (and b!1264639 c!123103) b!1264638))

(assert (= (and b!1264639 (not c!123103)) b!1264637))

(assert (= (and d!138703 res!842266) b!1264640))

(declare-fun m!1165179 () Bool)

(assert (=> b!1264638 m!1165179))

(assert (=> b!1264638 m!1165179))

(declare-fun m!1165181 () Bool)

(assert (=> b!1264638 m!1165181))

(declare-fun m!1165183 () Bool)

(assert (=> d!138703 m!1165183))

(assert (=> d!138703 m!1165133))

(declare-fun m!1165185 () Bool)

(assert (=> d!138703 m!1165185))

(declare-fun m!1165187 () Bool)

(assert (=> b!1264640 m!1165187))

(assert (=> b!1264594 d!138703))

(declare-fun d!138709 () Bool)

(declare-fun e!720220 () Bool)

(assert (=> d!138709 e!720220))

(declare-fun res!842277 () Bool)

(assert (=> d!138709 (=> (not res!842277) (not e!720220))))

(declare-fun lt!573857 () ListLongMap!19145)

(assert (=> d!138709 (= res!842277 (contains!7646 lt!573857 (_1!10640 (tuple2!21261 a1!67 b1!78))))))

(declare-fun lt!573854 () List!28463)

(assert (=> d!138709 (= lt!573857 (ListLongMap!19146 lt!573854))))

(declare-fun lt!573855 () Unit!42111)

(declare-fun lt!573856 () Unit!42111)

(assert (=> d!138709 (= lt!573855 lt!573856)))

(declare-datatypes ((Option!728 0))(
  ( (Some!727 (v!19002 B!1922)) (None!726) )
))
(declare-fun getValueByKey!677 (List!28463 (_ BitVec 64)) Option!728)

(assert (=> d!138709 (= (getValueByKey!677 lt!573854 (_1!10640 (tuple2!21261 a1!67 b1!78))) (Some!727 (_2!10640 (tuple2!21261 a1!67 b1!78))))))

(declare-fun lemmaContainsTupThenGetReturnValue!340 (List!28463 (_ BitVec 64) B!1922) Unit!42111)

(assert (=> d!138709 (= lt!573856 (lemmaContainsTupThenGetReturnValue!340 lt!573854 (_1!10640 (tuple2!21261 a1!67 b1!78)) (_2!10640 (tuple2!21261 a1!67 b1!78))))))

(assert (=> d!138709 (= lt!573854 (insertStrictlySorted!453 (toList!9588 lm!212) (_1!10640 (tuple2!21261 a1!67 b1!78)) (_2!10640 (tuple2!21261 a1!67 b1!78))))))

(assert (=> d!138709 (= (+!4239 lm!212 (tuple2!21261 a1!67 b1!78)) lt!573857)))

(declare-fun b!1264669 () Bool)

(declare-fun res!842278 () Bool)

(assert (=> b!1264669 (=> (not res!842278) (not e!720220))))

(assert (=> b!1264669 (= res!842278 (= (getValueByKey!677 (toList!9588 lt!573857) (_1!10640 (tuple2!21261 a1!67 b1!78))) (Some!727 (_2!10640 (tuple2!21261 a1!67 b1!78)))))))

(declare-fun b!1264670 () Bool)

(declare-fun contains!7649 (List!28463 tuple2!21260) Bool)

(assert (=> b!1264670 (= e!720220 (contains!7649 (toList!9588 lt!573857) (tuple2!21261 a1!67 b1!78)))))

(assert (= (and d!138709 res!842277) b!1264669))

(assert (= (and b!1264669 res!842278) b!1264670))

(declare-fun m!1165205 () Bool)

(assert (=> d!138709 m!1165205))

(declare-fun m!1165207 () Bool)

(assert (=> d!138709 m!1165207))

(declare-fun m!1165209 () Bool)

(assert (=> d!138709 m!1165209))

(declare-fun m!1165211 () Bool)

(assert (=> d!138709 m!1165211))

(declare-fun m!1165213 () Bool)

(assert (=> b!1264669 m!1165213))

(declare-fun m!1165215 () Bool)

(assert (=> b!1264670 m!1165215))

(assert (=> b!1264594 d!138709))

(declare-fun d!138717 () Bool)

(declare-fun lt!573860 () ListLongMap!19145)

(assert (=> d!138717 (not (contains!7646 lt!573860 a1!67))))

(assert (=> d!138717 (= lt!573860 (ListLongMap!19146 (removeStrictlySorted!147 (toList!9588 (+!4239 lm!212 (tuple2!21261 a1!67 b1!78))) a1!67)))))

(assert (=> d!138717 (= (-!2154 (+!4239 lm!212 (tuple2!21261 a1!67 b1!78)) a1!67) lt!573860)))

(declare-fun bs!35782 () Bool)

(assert (= bs!35782 d!138717))

(declare-fun m!1165217 () Bool)

(assert (=> bs!35782 m!1165217))

(declare-fun m!1165219 () Bool)

(assert (=> bs!35782 m!1165219))

(assert (=> b!1264594 d!138717))

(declare-fun e!720242 () List!28463)

(declare-fun b!1264705 () Bool)

(assert (=> b!1264705 (= e!720242 (insertStrictlySorted!453 (t!41991 (toList!9588 lm!212)) a1!67 b1!78))))

(declare-fun b!1264706 () Bool)

(declare-fun e!720240 () List!28463)

(declare-fun call!62336 () List!28463)

(assert (=> b!1264706 (= e!720240 call!62336)))

(declare-fun b!1264707 () Bool)

(declare-fun e!720241 () List!28463)

(declare-fun call!62337 () List!28463)

(assert (=> b!1264707 (= e!720241 call!62337)))

(declare-fun e!720244 () Bool)

(declare-fun b!1264708 () Bool)

(declare-fun lt!573880 () List!28463)

(assert (=> b!1264708 (= e!720244 (contains!7649 lt!573880 (tuple2!21261 a1!67 b1!78)))))

(declare-fun b!1264709 () Bool)

(assert (=> b!1264709 (= e!720241 call!62337)))

(declare-fun call!62335 () List!28463)

(declare-fun c!123123 () Bool)

(declare-fun bm!62332 () Bool)

(assert (=> bm!62332 (= call!62335 ($colon$colon!634 e!720242 (ite c!123123 (h!29668 (toList!9588 lm!212)) (tuple2!21261 a1!67 b1!78))))))

(declare-fun c!123122 () Bool)

(assert (=> bm!62332 (= c!123122 c!123123)))

(declare-fun b!1264710 () Bool)

(declare-fun e!720243 () List!28463)

(assert (=> b!1264710 (= e!720243 e!720240)))

(declare-fun c!123121 () Bool)

(assert (=> b!1264710 (= c!123121 (and (is-Cons!28459 (toList!9588 lm!212)) (= (_1!10640 (h!29668 (toList!9588 lm!212))) a1!67)))))

(declare-fun bm!62333 () Bool)

(assert (=> bm!62333 (= call!62336 call!62335)))

(declare-fun b!1264711 () Bool)

(assert (=> b!1264711 (= e!720243 call!62335)))

(declare-fun b!1264712 () Bool)

(declare-fun c!123124 () Bool)

(assert (=> b!1264712 (= c!123124 (and (is-Cons!28459 (toList!9588 lm!212)) (bvsgt (_1!10640 (h!29668 (toList!9588 lm!212))) a1!67)))))

(assert (=> b!1264712 (= e!720240 e!720241)))

(declare-fun b!1264713 () Bool)

(assert (=> b!1264713 (= e!720242 (ite c!123121 (t!41991 (toList!9588 lm!212)) (ite c!123124 (Cons!28459 (h!29668 (toList!9588 lm!212)) (t!41991 (toList!9588 lm!212))) Nil!28460)))))

(declare-fun d!138719 () Bool)

(assert (=> d!138719 e!720244))

(declare-fun res!842296 () Bool)

(assert (=> d!138719 (=> (not res!842296) (not e!720244))))

(assert (=> d!138719 (= res!842296 (isStrictlySorted!771 lt!573880))))

(assert (=> d!138719 (= lt!573880 e!720243)))

(assert (=> d!138719 (= c!123123 (and (is-Cons!28459 (toList!9588 lm!212)) (bvslt (_1!10640 (h!29668 (toList!9588 lm!212))) a1!67)))))

(assert (=> d!138719 (isStrictlySorted!771 (toList!9588 lm!212))))

(assert (=> d!138719 (= (insertStrictlySorted!453 (toList!9588 lm!212) a1!67 b1!78) lt!573880)))

(declare-fun b!1264714 () Bool)

(declare-fun res!842295 () Bool)

(assert (=> b!1264714 (=> (not res!842295) (not e!720244))))

(assert (=> b!1264714 (= res!842295 (containsKey!632 lt!573880 a1!67))))

(declare-fun bm!62334 () Bool)

(assert (=> bm!62334 (= call!62337 call!62336)))

(assert (= (and d!138719 c!123123) b!1264711))

(assert (= (and d!138719 (not c!123123)) b!1264710))

(assert (= (and b!1264710 c!123121) b!1264706))

(assert (= (and b!1264710 (not c!123121)) b!1264712))

(assert (= (and b!1264712 c!123124) b!1264709))

(assert (= (and b!1264712 (not c!123124)) b!1264707))

(assert (= (or b!1264709 b!1264707) bm!62334))

(assert (= (or b!1264706 bm!62334) bm!62333))

(assert (= (or b!1264711 bm!62333) bm!62332))

(assert (= (and bm!62332 c!123122) b!1264705))

(assert (= (and bm!62332 (not c!123122)) b!1264713))

(assert (= (and d!138719 res!842296) b!1264714))

(assert (= (and b!1264714 res!842295) b!1264708))

(declare-fun m!1165237 () Bool)

(assert (=> b!1264714 m!1165237))

(declare-fun m!1165239 () Bool)

(assert (=> bm!62332 m!1165239))

(declare-fun m!1165241 () Bool)

(assert (=> b!1264705 m!1165241))

(declare-fun m!1165243 () Bool)

(assert (=> b!1264708 m!1165243))

(declare-fun m!1165245 () Bool)

(assert (=> d!138719 m!1165245))

(assert (=> d!138719 m!1165123))

(assert (=> b!1264594 d!138719))

(declare-fun d!138727 () Bool)

(declare-fun res!842303 () Bool)

(declare-fun e!720255 () Bool)

(assert (=> d!138727 (=> res!842303 e!720255)))

(assert (=> d!138727 (= res!842303 (and (is-Cons!28459 (toList!9588 lm!212)) (= (_1!10640 (h!29668 (toList!9588 lm!212))) a1!67)))))

(assert (=> d!138727 (= (containsKey!632 (toList!9588 lm!212) a1!67) e!720255)))

(declare-fun b!1264727 () Bool)

(declare-fun e!720256 () Bool)

(assert (=> b!1264727 (= e!720255 e!720256)))

(declare-fun res!842304 () Bool)

(assert (=> b!1264727 (=> (not res!842304) (not e!720256))))

(assert (=> b!1264727 (= res!842304 (and (or (not (is-Cons!28459 (toList!9588 lm!212))) (bvsle (_1!10640 (h!29668 (toList!9588 lm!212))) a1!67)) (is-Cons!28459 (toList!9588 lm!212)) (bvslt (_1!10640 (h!29668 (toList!9588 lm!212))) a1!67)))))

(declare-fun b!1264728 () Bool)

(assert (=> b!1264728 (= e!720256 (containsKey!632 (t!41991 (toList!9588 lm!212)) a1!67))))

(assert (= (and d!138727 (not res!842303)) b!1264727))

(assert (= (and b!1264727 res!842304) b!1264728))

(declare-fun m!1165251 () Bool)

(assert (=> b!1264728 m!1165251))

(assert (=> b!1264593 d!138727))

(declare-fun d!138731 () Bool)

(declare-fun e!720265 () Bool)

(assert (=> d!138731 e!720265))

(declare-fun res!842308 () Bool)

(assert (=> d!138731 (=> res!842308 e!720265)))

(declare-fun lt!573895 () Bool)

(assert (=> d!138731 (= res!842308 (not lt!573895))))

(declare-fun lt!573894 () Bool)

(assert (=> d!138731 (= lt!573895 lt!573894)))

(declare-fun lt!573896 () Unit!42111)

(declare-fun e!720264 () Unit!42111)

(assert (=> d!138731 (= lt!573896 e!720264)))

(declare-fun c!123133 () Bool)

(assert (=> d!138731 (= c!123133 lt!573894)))

(assert (=> d!138731 (= lt!573894 (containsKey!632 (toList!9588 lm!212) a1!67))))

(assert (=> d!138731 (= (contains!7646 lm!212 a1!67) lt!573895)))

(declare-fun b!1264740 () Bool)

(declare-fun lt!573893 () Unit!42111)

(assert (=> b!1264740 (= e!720264 lt!573893)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!441 (List!28463 (_ BitVec 64)) Unit!42111)

(assert (=> b!1264740 (= lt!573893 (lemmaContainsKeyImpliesGetValueByKeyDefined!441 (toList!9588 lm!212) a1!67))))

(declare-fun isDefined!481 (Option!728) Bool)

(assert (=> b!1264740 (isDefined!481 (getValueByKey!677 (toList!9588 lm!212) a1!67))))

(declare-fun b!1264741 () Bool)

(declare-fun Unit!42117 () Unit!42111)

(assert (=> b!1264741 (= e!720264 Unit!42117)))

(declare-fun b!1264742 () Bool)

(assert (=> b!1264742 (= e!720265 (isDefined!481 (getValueByKey!677 (toList!9588 lm!212) a1!67)))))

(assert (= (and d!138731 c!123133) b!1264740))

(assert (= (and d!138731 (not c!123133)) b!1264741))

(assert (= (and d!138731 (not res!842308)) b!1264742))

(assert (=> d!138731 m!1165125))

(declare-fun m!1165263 () Bool)

(assert (=> b!1264740 m!1165263))

(declare-fun m!1165265 () Bool)

(assert (=> b!1264740 m!1165265))

(assert (=> b!1264740 m!1165265))

(declare-fun m!1165267 () Bool)

(assert (=> b!1264740 m!1165267))

(assert (=> b!1264742 m!1165265))

(assert (=> b!1264742 m!1165265))

(assert (=> b!1264742 m!1165267))

(assert (=> start!106306 d!138731))

(declare-fun d!138735 () Bool)

(assert (=> d!138735 (= (inv!44088 lm!212) (isStrictlySorted!771 (toList!9588 lm!212)))))

(declare-fun bs!35785 () Bool)

(assert (= bs!35785 d!138735))

(assert (=> bs!35785 m!1165123))

(assert (=> start!106306 d!138735))

(declare-fun d!138737 () Bool)

(declare-fun res!842313 () Bool)

(declare-fun e!720276 () Bool)

(assert (=> d!138737 (=> res!842313 e!720276)))

(assert (=> d!138737 (= res!842313 (or (is-Nil!28460 (toList!9588 lm!212)) (is-Nil!28460 (t!41991 (toList!9588 lm!212)))))))

(assert (=> d!138737 (= (isStrictlySorted!771 (toList!9588 lm!212)) e!720276)))

(declare-fun b!1264759 () Bool)

(declare-fun e!720277 () Bool)

(assert (=> b!1264759 (= e!720276 e!720277)))

(declare-fun res!842314 () Bool)

(assert (=> b!1264759 (=> (not res!842314) (not e!720277))))

(assert (=> b!1264759 (= res!842314 (bvslt (_1!10640 (h!29668 (toList!9588 lm!212))) (_1!10640 (h!29668 (t!41991 (toList!9588 lm!212))))))))

(declare-fun b!1264760 () Bool)

(assert (=> b!1264760 (= e!720277 (isStrictlySorted!771 (t!41991 (toList!9588 lm!212))))))

(assert (= (and d!138737 (not res!842313)) b!1264759))

(assert (= (and b!1264759 res!842314) b!1264760))

(declare-fun m!1165269 () Bool)

(assert (=> b!1264760 m!1165269))

(assert (=> b!1264592 d!138737))

(declare-fun b!1264769 () Bool)

(declare-fun e!720282 () Bool)

(declare-fun tp!96249 () Bool)

(assert (=> b!1264769 (= e!720282 (and tp_is_empty!32455 tp!96249))))

(assert (=> b!1264595 (= tp!96240 e!720282)))

(assert (= (and b!1264595 (is-Cons!28459 (toList!9588 lm!212))) b!1264769))

(push 1)

(assert (not d!138719))

(assert (not d!138703))

(assert (not b!1264742))

(assert (not b!1264669))

(assert (not bm!62332))

(assert (not d!138697))

(assert (not b!1264670))

(assert (not d!138717))

(assert (not b!1264760))

(assert tp_is_empty!32455)

(assert (not d!138731))

(assert (not b!1264640))

(assert (not b!1264638))

(assert (not b!1264740))

(assert (not b!1264705))

(assert (not b!1264708))

(assert (not b!1264714))

(assert (not d!138735))

(assert (not b!1264769))

(assert (not b!1264728))

(assert (not d!138709))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

