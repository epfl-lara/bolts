; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106310 () Bool)

(assert start!106310)

(declare-fun b!1264617 () Bool)

(declare-fun res!842256 () Bool)

(declare-fun e!720186 () Bool)

(assert (=> b!1264617 (=> (not res!842256) (not e!720186))))

(declare-datatypes ((B!1926 0))(
  ( (B!1927 (val!16298 Int)) )
))
(declare-datatypes ((tuple2!21264 0))(
  ( (tuple2!21265 (_1!10642 (_ BitVec 64)) (_2!10642 B!1926)) )
))
(declare-datatypes ((List!28465 0))(
  ( (Nil!28462) (Cons!28461 (h!29670 tuple2!21264) (t!41993 List!28465)) )
))
(declare-datatypes ((ListLongMap!19149 0))(
  ( (ListLongMap!19150 (toList!9590 List!28465)) )
))
(declare-fun lm!212 () ListLongMap!19149)

(declare-fun a1!67 () (_ BitVec 64))

(declare-fun containsKey!634 (List!28465 (_ BitVec 64)) Bool)

(assert (=> b!1264617 (= res!842256 (not (containsKey!634 (toList!9590 lm!212) a1!67)))))

(declare-fun b!1264616 () Bool)

(declare-fun res!842255 () Bool)

(assert (=> b!1264616 (=> (not res!842255) (not e!720186))))

(declare-fun isStrictlySorted!773 (List!28465) Bool)

(assert (=> b!1264616 (= res!842255 (isStrictlySorted!773 (toList!9590 lm!212)))))

(declare-fun b!1264619 () Bool)

(declare-fun e!720187 () Bool)

(declare-fun tp!96246 () Bool)

(assert (=> b!1264619 (= e!720187 tp!96246)))

(declare-fun b1!78 () B!1926)

(declare-fun b!1264618 () Bool)

(declare-fun -!2156 (ListLongMap!19149 (_ BitVec 64)) ListLongMap!19149)

(declare-fun +!4241 (ListLongMap!19149 tuple2!21264) ListLongMap!19149)

(assert (=> b!1264618 (= e!720186 (not (= (-!2156 (+!4241 lm!212 (tuple2!21265 a1!67 b1!78)) a1!67) lm!212)))))

(declare-fun removeStrictlySorted!149 (List!28465 (_ BitVec 64)) List!28465)

(declare-fun insertStrictlySorted!455 (List!28465 (_ BitVec 64) B!1926) List!28465)

(assert (=> b!1264618 (= (removeStrictlySorted!149 (insertStrictlySorted!455 (toList!9590 lm!212) a1!67 b1!78) a1!67) (toList!9590 lm!212))))

(declare-datatypes ((Unit!42115 0))(
  ( (Unit!42116) )
))
(declare-fun lt!573821 () Unit!42115)

(declare-fun lemmaInsertStrictlySortedThenRemoveIsSame!3 (List!28465 (_ BitVec 64) B!1926) Unit!42115)

(assert (=> b!1264618 (= lt!573821 (lemmaInsertStrictlySortedThenRemoveIsSame!3 (toList!9590 lm!212) a1!67 b1!78))))

(declare-fun res!842257 () Bool)

(assert (=> start!106310 (=> (not res!842257) (not e!720186))))

(declare-fun contains!7648 (ListLongMap!19149 (_ BitVec 64)) Bool)

(assert (=> start!106310 (= res!842257 (not (contains!7648 lm!212 a1!67)))))

(assert (=> start!106310 e!720186))

(declare-fun inv!44090 (ListLongMap!19149) Bool)

(assert (=> start!106310 (and (inv!44090 lm!212) e!720187)))

(assert (=> start!106310 true))

(declare-fun tp_is_empty!32459 () Bool)

(assert (=> start!106310 tp_is_empty!32459))

(assert (= (and start!106310 res!842257) b!1264616))

(assert (= (and b!1264616 res!842255) b!1264617))

(assert (= (and b!1264617 res!842256) b!1264618))

(assert (= start!106310 b!1264619))

(declare-fun m!1165155 () Bool)

(assert (=> b!1264617 m!1165155))

(declare-fun m!1165157 () Bool)

(assert (=> b!1264616 m!1165157))

(declare-fun m!1165159 () Bool)

(assert (=> b!1264618 m!1165159))

(declare-fun m!1165161 () Bool)

(assert (=> b!1264618 m!1165161))

(declare-fun m!1165163 () Bool)

(assert (=> b!1264618 m!1165163))

(declare-fun m!1165165 () Bool)

(assert (=> b!1264618 m!1165165))

(assert (=> b!1264618 m!1165165))

(declare-fun m!1165167 () Bool)

(assert (=> b!1264618 m!1165167))

(assert (=> b!1264618 m!1165159))

(declare-fun m!1165169 () Bool)

(assert (=> start!106310 m!1165169))

(declare-fun m!1165171 () Bool)

(assert (=> start!106310 m!1165171))

(push 1)

(assert (not b!1264616))

(assert (not b!1264617))

(assert (not b!1264618))

(assert (not start!106310))

(assert tp_is_empty!32459)

(assert (not b!1264619))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!138699 () Bool)

(declare-fun res!842262 () Bool)

(declare-fun e!720192 () Bool)

(assert (=> d!138699 (=> res!842262 e!720192)))

(assert (=> d!138699 (= res!842262 (and (is-Cons!28461 (toList!9590 lm!212)) (= (_1!10642 (h!29670 (toList!9590 lm!212))) a1!67)))))

(assert (=> d!138699 (= (containsKey!634 (toList!9590 lm!212) a1!67) e!720192)))

(declare-fun b!1264624 () Bool)

(declare-fun e!720193 () Bool)

(assert (=> b!1264624 (= e!720192 e!720193)))

(declare-fun res!842263 () Bool)

(assert (=> b!1264624 (=> (not res!842263) (not e!720193))))

(assert (=> b!1264624 (= res!842263 (and (or (not (is-Cons!28461 (toList!9590 lm!212))) (bvsle (_1!10642 (h!29670 (toList!9590 lm!212))) a1!67)) (is-Cons!28461 (toList!9590 lm!212)) (bvslt (_1!10642 (h!29670 (toList!9590 lm!212))) a1!67)))))

(declare-fun b!1264625 () Bool)

(assert (=> b!1264625 (= e!720193 (containsKey!634 (t!41993 (toList!9590 lm!212)) a1!67))))

(assert (= (and d!138699 (not res!842262)) b!1264624))

(assert (= (and b!1264624 res!842263) b!1264625))

(declare-fun m!1165175 () Bool)

(assert (=> b!1264625 m!1165175))

(assert (=> b!1264617 d!138699))

(declare-fun d!138705 () Bool)

(declare-fun e!720214 () Bool)

(assert (=> d!138705 e!720214))

(declare-fun res!842271 () Bool)

(assert (=> d!138705 (=> res!842271 e!720214)))

(declare-fun lt!573851 () Bool)

(assert (=> d!138705 (= res!842271 (not lt!573851))))

(declare-fun lt!573849 () Bool)

(assert (=> d!138705 (= lt!573851 lt!573849)))

(declare-fun lt!573852 () Unit!42115)

(declare-fun e!720213 () Unit!42115)

(assert (=> d!138705 (= lt!573852 e!720213)))

(declare-fun c!123110 () Bool)

(assert (=> d!138705 (= c!123110 lt!573849)))

(assert (=> d!138705 (= lt!573849 (containsKey!634 (toList!9590 lm!212) a1!67))))

(assert (=> d!138705 (= (contains!7648 lm!212 a1!67) lt!573851)))

(declare-fun b!1264657 () Bool)

(declare-fun lt!573850 () Unit!42115)

(assert (=> b!1264657 (= e!720213 lt!573850)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!442 (List!28465 (_ BitVec 64)) Unit!42115)

(assert (=> b!1264657 (= lt!573850 (lemmaContainsKeyImpliesGetValueByKeyDefined!442 (toList!9590 lm!212) a1!67))))

(declare-datatypes ((Option!729 0))(
  ( (Some!728 (v!19003 B!1926)) (None!727) )
))
(declare-fun isDefined!482 (Option!729) Bool)

(declare-fun getValueByKey!678 (List!28465 (_ BitVec 64)) Option!729)

(assert (=> b!1264657 (isDefined!482 (getValueByKey!678 (toList!9590 lm!212) a1!67))))

(declare-fun b!1264658 () Bool)

(declare-fun Unit!42118 () Unit!42115)

(assert (=> b!1264658 (= e!720213 Unit!42118)))

(declare-fun b!1264659 () Bool)

(assert (=> b!1264659 (= e!720214 (isDefined!482 (getValueByKey!678 (toList!9590 lm!212) a1!67)))))

(assert (= (and d!138705 c!123110) b!1264657))

(assert (= (and d!138705 (not c!123110)) b!1264658))

(assert (= (and d!138705 (not res!842271)) b!1264659))

(assert (=> d!138705 m!1165155))

(declare-fun m!1165189 () Bool)

(assert (=> b!1264657 m!1165189))

(declare-fun m!1165191 () Bool)

(assert (=> b!1264657 m!1165191))

(assert (=> b!1264657 m!1165191))

(declare-fun m!1165193 () Bool)

(assert (=> b!1264657 m!1165193))

(assert (=> b!1264659 m!1165191))

(assert (=> b!1264659 m!1165191))

(assert (=> b!1264659 m!1165193))

(assert (=> start!106310 d!138705))

(declare-fun d!138711 () Bool)

(assert (=> d!138711 (= (inv!44090 lm!212) (isStrictlySorted!773 (toList!9590 lm!212)))))

(declare-fun bs!35781 () Bool)

(assert (= bs!35781 d!138711))

(assert (=> bs!35781 m!1165157))

(assert (=> start!106310 d!138711))

(declare-fun d!138715 () Bool)

(declare-fun res!842283 () Bool)

(declare-fun e!720225 () Bool)

(assert (=> d!138715 (=> res!842283 e!720225)))

(assert (=> d!138715 (= res!842283 (or (is-Nil!28462 (toList!9590 lm!212)) (is-Nil!28462 (t!41993 (toList!9590 lm!212)))))))

(assert (=> d!138715 (= (isStrictlySorted!773 (toList!9590 lm!212)) e!720225)))

(declare-fun b!1264675 () Bool)

(declare-fun e!720226 () Bool)

(assert (=> b!1264675 (= e!720225 e!720226)))

(declare-fun res!842284 () Bool)

(assert (=> b!1264675 (=> (not res!842284) (not e!720226))))

(assert (=> b!1264675 (= res!842284 (bvslt (_1!10642 (h!29670 (toList!9590 lm!212))) (_1!10642 (h!29670 (t!41993 (toList!9590 lm!212))))))))

(declare-fun b!1264676 () Bool)

(assert (=> b!1264676 (= e!720226 (isStrictlySorted!773 (t!41993 (toList!9590 lm!212))))))

(assert (= (and d!138715 (not res!842283)) b!1264675))

(assert (= (and b!1264675 res!842284) b!1264676))

(declare-fun m!1165221 () Bool)

(assert (=> b!1264676 m!1165221))

(assert (=> b!1264616 d!138715))

(declare-fun d!138721 () Bool)

(assert (=> d!138721 (= (removeStrictlySorted!149 (insertStrictlySorted!455 (toList!9590 lm!212) a1!67 b1!78) a1!67) (toList!9590 lm!212))))

(declare-fun lt!573871 () Unit!42115)

(declare-fun choose!1891 (List!28465 (_ BitVec 64) B!1926) Unit!42115)

(assert (=> d!138721 (= lt!573871 (choose!1891 (toList!9590 lm!212) a1!67 b1!78))))

(assert (=> d!138721 (isStrictlySorted!773 (toList!9590 lm!212))))

(assert (=> d!138721 (= (lemmaInsertStrictlySortedThenRemoveIsSame!3 (toList!9590 lm!212) a1!67 b1!78) lt!573871)))

(declare-fun bs!35783 () Bool)

(assert (= bs!35783 d!138721))

(assert (=> bs!35783 m!1165165))

(assert (=> bs!35783 m!1165165))

(assert (=> bs!35783 m!1165167))

(declare-fun m!1165223 () Bool)

(assert (=> bs!35783 m!1165223))

(assert (=> bs!35783 m!1165157))

(assert (=> b!1264618 d!138721))

(declare-fun d!138723 () Bool)

(declare-fun e!720259 () Bool)

(assert (=> d!138723 e!720259))

(declare-fun res!842305 () Bool)

(assert (=> d!138723 (=> (not res!842305) (not e!720259))))

(declare-fun lt!573884 () List!28465)

(assert (=> d!138723 (= res!842305 (isStrictlySorted!773 lt!573884))))

(declare-fun e!720257 () List!28465)

(assert (=> d!138723 (= lt!573884 e!720257)))

(declare-fun c!123130 () Bool)

(assert (=> d!138723 (= c!123130 (and (is-Cons!28461 (insertStrictlySorted!455 (toList!9590 lm!212) a1!67 b1!78)) (= (_1!10642 (h!29670 (insertStrictlySorted!455 (toList!9590 lm!212) a1!67 b1!78))) a1!67)))))

(assert (=> d!138723 (isStrictlySorted!773 (insertStrictlySorted!455 (toList!9590 lm!212) a1!67 b1!78))))

