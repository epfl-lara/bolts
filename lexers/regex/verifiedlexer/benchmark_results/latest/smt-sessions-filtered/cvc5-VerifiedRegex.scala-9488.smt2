; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!501234 () Bool)

(assert start!501234)

(declare-fun res!2056026 () Bool)

(declare-fun e!3016920 () Bool)

(assert (=> start!501234 (=> (not res!2056026) (not e!3016920))))

(declare-datatypes ((V!16973 0))(
  ( (V!16974 (val!21687 Int)) )
))
(declare-datatypes ((K!16727 0))(
  ( (K!16728 (val!21688 Int)) )
))
(declare-datatypes ((tuple2!58310 0))(
  ( (tuple2!58311 (_1!32449 K!16727) (_2!32449 V!16973)) )
))
(declare-datatypes ((List!55160 0))(
  ( (Nil!55036) (Cons!55036 (h!61470 tuple2!58310) (t!362656 List!55160)) )
))
(declare-datatypes ((tuple2!58312 0))(
  ( (tuple2!58313 (_1!32450 (_ BitVec 64)) (_2!32450 List!55160)) )
))
(declare-datatypes ((List!55161 0))(
  ( (Nil!55037) (Cons!55037 (h!61471 tuple2!58312) (t!362657 List!55161)) )
))
(declare-datatypes ((ListLongMap!6053 0))(
  ( (ListLongMap!6054 (toList!7531 List!55161)) )
))
(declare-fun lm!2325 () ListLongMap!6053)

(declare-fun lambda!237305 () Int)

(declare-fun forall!12649 (List!55161 Int) Bool)

(assert (=> start!501234 (= res!2056026 (forall!12649 (toList!7531 lm!2325) lambda!237305))))

(assert (=> start!501234 e!3016920))

(declare-fun e!3016922 () Bool)

(declare-fun inv!70628 (ListLongMap!6053) Bool)

(assert (=> start!501234 (and (inv!70628 lm!2325) e!3016922)))

(assert (=> start!501234 true))

(declare-fun tp_is_empty!34529 () Bool)

(assert (=> start!501234 tp_is_empty!34529))

(declare-fun b!4828202 () Bool)

(declare-fun res!2056029 () Bool)

(assert (=> b!4828202 (=> (not res!2056029) (not e!3016920))))

(declare-datatypes ((Hashable!7295 0))(
  ( (HashableExt!7294 (__x!33570 Int)) )
))
(declare-fun hashF!1543 () Hashable!7295)

(declare-fun allKeysSameHashInMap!2611 (ListLongMap!6053 Hashable!7295) Bool)

(assert (=> b!4828202 (= res!2056029 (allKeysSameHashInMap!2611 lm!2325 hashF!1543))))

(declare-fun b!4828203 () Bool)

(declare-fun e!3016921 () Bool)

(assert (=> b!4828203 (= e!3016920 (not e!3016921))))

(declare-fun res!2056025 () Bool)

(assert (=> b!4828203 (=> res!2056025 e!3016921)))

(assert (=> b!4828203 (= res!2056025 (not (forall!12649 (toList!7531 lm!2325) lambda!237305)))))

(declare-fun e!3016919 () Bool)

(declare-fun key!5594 () K!16727)

(declare-datatypes ((ListMap!6903 0))(
  ( (ListMap!6904 (toList!7532 List!55160)) )
))
(declare-fun lt!1974785 () ListMap!6903)

(declare-fun contains!18838 (ListMap!6903 K!16727) Bool)

(declare-fun addToMapMapFromBucket!1818 (List!55160 ListMap!6903) ListMap!6903)

(assert (=> b!4828203 (= (contains!18838 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785) key!5594) e!3016919)))

(declare-fun res!2056027 () Bool)

(assert (=> b!4828203 (=> res!2056027 e!3016919)))

(declare-fun containsKey!4406 (List!55160 K!16727) Bool)

(assert (=> b!4828203 (= res!2056027 (containsKey!4406 (_2!32450 (h!61471 (toList!7531 lm!2325))) key!5594))))

(declare-datatypes ((Unit!143378 0))(
  ( (Unit!143379) )
))
(declare-fun lt!1974784 () Unit!143378)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!41 (List!55160 ListMap!6903 K!16727) Unit!143378)

(assert (=> b!4828203 (= lt!1974784 (lemmaAddToMapFromBucketContainsIIFInAccOrL!41 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785 key!5594))))

(declare-fun extractMap!2703 (List!55161) ListMap!6903)

(assert (=> b!4828203 (= lt!1974785 (extractMap!2703 (t!362657 (toList!7531 lm!2325))))))

(declare-fun b!4828204 () Bool)

(assert (=> b!4828204 (= e!3016919 (contains!18838 lt!1974785 key!5594))))

(declare-fun b!4828205 () Bool)

(declare-fun tp!1362775 () Bool)

(assert (=> b!4828205 (= e!3016922 tp!1362775)))

(declare-fun b!4828206 () Bool)

(declare-fun res!2056028 () Bool)

(assert (=> b!4828206 (=> (not res!2056028) (not e!3016920))))

(assert (=> b!4828206 (= res!2056028 (is-Cons!55037 (toList!7531 lm!2325)))))

(declare-fun b!4828207 () Bool)

(declare-fun res!2056024 () Bool)

(assert (=> b!4828207 (=> (not res!2056024) (not e!3016920))))

(declare-fun contains!18839 (ListLongMap!6053 (_ BitVec 64)) Bool)

(declare-fun hash!5446 (Hashable!7295 K!16727) (_ BitVec 64))

(assert (=> b!4828207 (= res!2056024 (not (contains!18839 lm!2325 (hash!5446 hashF!1543 key!5594))))))

(declare-fun b!4828208 () Bool)

(assert (=> b!4828208 (= e!3016921 (contains!18839 lm!2325 (_1!32450 (h!61471 (toList!7531 lm!2325)))))))

(assert (= (and start!501234 res!2056026) b!4828202))

(assert (= (and b!4828202 res!2056029) b!4828207))

(assert (= (and b!4828207 res!2056024) b!4828206))

(assert (= (and b!4828206 res!2056028) b!4828203))

(assert (= (and b!4828203 (not res!2056027)) b!4828204))

(assert (= (and b!4828203 (not res!2056025)) b!4828208))

(assert (= start!501234 b!4828205))

(declare-fun m!5819760 () Bool)

(assert (=> b!4828202 m!5819760))

(declare-fun m!5819762 () Bool)

(assert (=> start!501234 m!5819762))

(declare-fun m!5819764 () Bool)

(assert (=> start!501234 m!5819764))

(declare-fun m!5819766 () Bool)

(assert (=> b!4828208 m!5819766))

(declare-fun m!5819768 () Bool)

(assert (=> b!4828207 m!5819768))

(assert (=> b!4828207 m!5819768))

(declare-fun m!5819770 () Bool)

(assert (=> b!4828207 m!5819770))

(declare-fun m!5819772 () Bool)

(assert (=> b!4828204 m!5819772))

(declare-fun m!5819774 () Bool)

(assert (=> b!4828203 m!5819774))

(assert (=> b!4828203 m!5819762))

(declare-fun m!5819776 () Bool)

(assert (=> b!4828203 m!5819776))

(declare-fun m!5819778 () Bool)

(assert (=> b!4828203 m!5819778))

(declare-fun m!5819780 () Bool)

(assert (=> b!4828203 m!5819780))

(declare-fun m!5819782 () Bool)

(assert (=> b!4828203 m!5819782))

(assert (=> b!4828203 m!5819776))

(push 1)

(assert (not start!501234))

(assert tp_is_empty!34529)

(assert (not b!4828205))

(assert (not b!4828207))

(assert (not b!4828203))

(assert (not b!4828204))

(assert (not b!4828202))

(assert (not b!4828208))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4828248 () Bool)

(declare-fun e!3016950 () Bool)

(declare-datatypes ((List!55164 0))(
  ( (Nil!55040) (Cons!55040 (h!61474 K!16727) (t!362660 List!55164)) )
))
(declare-fun contains!18842 (List!55164 K!16727) Bool)

(declare-fun keys!20262 (ListMap!6903) List!55164)

(assert (=> b!4828248 (= e!3016950 (contains!18842 (keys!20262 lt!1974785) key!5594))))

(declare-fun d!1547241 () Bool)

(declare-fun e!3016951 () Bool)

(assert (=> d!1547241 e!3016951))

(declare-fun res!2056055 () Bool)

(assert (=> d!1547241 (=> res!2056055 e!3016951)))

(declare-fun e!3016947 () Bool)

(assert (=> d!1547241 (= res!2056055 e!3016947)))

(declare-fun res!2056056 () Bool)

(assert (=> d!1547241 (=> (not res!2056056) (not e!3016947))))

(declare-fun lt!1974808 () Bool)

(assert (=> d!1547241 (= res!2056056 (not lt!1974808))))

(declare-fun lt!1974809 () Bool)

(assert (=> d!1547241 (= lt!1974808 lt!1974809)))

(declare-fun lt!1974814 () Unit!143378)

(declare-fun e!3016948 () Unit!143378)

(assert (=> d!1547241 (= lt!1974814 e!3016948)))

(declare-fun c!822670 () Bool)

(assert (=> d!1547241 (= c!822670 lt!1974809)))

(declare-fun containsKey!4408 (List!55160 K!16727) Bool)

(assert (=> d!1547241 (= lt!1974809 (containsKey!4408 (toList!7532 lt!1974785) key!5594))))

(assert (=> d!1547241 (= (contains!18838 lt!1974785 key!5594) lt!1974808)))

(declare-fun b!4828249 () Bool)

(declare-fun lt!1974810 () Unit!143378)

(assert (=> b!4828249 (= e!3016948 lt!1974810)))

(declare-fun lt!1974811 () Unit!143378)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2421 (List!55160 K!16727) Unit!143378)

(assert (=> b!4828249 (= lt!1974811 (lemmaContainsKeyImpliesGetValueByKeyDefined!2421 (toList!7532 lt!1974785) key!5594))))

(declare-datatypes ((Option!13509 0))(
  ( (None!13508) (Some!13508 (v!49195 V!16973)) )
))
(declare-fun isDefined!10624 (Option!13509) Bool)

(declare-fun getValueByKey!2636 (List!55160 K!16727) Option!13509)

(assert (=> b!4828249 (isDefined!10624 (getValueByKey!2636 (toList!7532 lt!1974785) key!5594))))

(declare-fun lt!1974813 () Unit!143378)

(assert (=> b!4828249 (= lt!1974813 lt!1974811)))

(declare-fun lemmaInListThenGetKeysListContains!1160 (List!55160 K!16727) Unit!143378)

(assert (=> b!4828249 (= lt!1974810 (lemmaInListThenGetKeysListContains!1160 (toList!7532 lt!1974785) key!5594))))

(declare-fun call!336493 () Bool)

(assert (=> b!4828249 call!336493))

(declare-fun b!4828250 () Bool)

(assert (=> b!4828250 false))

(declare-fun lt!1974815 () Unit!143378)

(declare-fun lt!1974812 () Unit!143378)

(assert (=> b!4828250 (= lt!1974815 lt!1974812)))

(assert (=> b!4828250 (containsKey!4408 (toList!7532 lt!1974785) key!5594)))

(declare-fun lemmaInGetKeysListThenContainsKey!1165 (List!55160 K!16727) Unit!143378)

(assert (=> b!4828250 (= lt!1974812 (lemmaInGetKeysListThenContainsKey!1165 (toList!7532 lt!1974785) key!5594))))

(declare-fun e!3016952 () Unit!143378)

(declare-fun Unit!143382 () Unit!143378)

(assert (=> b!4828250 (= e!3016952 Unit!143382)))

(declare-fun b!4828251 () Bool)

(assert (=> b!4828251 (= e!3016948 e!3016952)))

(declare-fun c!822668 () Bool)

(assert (=> b!4828251 (= c!822668 call!336493)))

(declare-fun b!4828252 () Bool)

(declare-fun e!3016949 () List!55164)

(assert (=> b!4828252 (= e!3016949 (keys!20262 lt!1974785))))

(declare-fun b!4828253 () Bool)

(declare-fun getKeysList!1165 (List!55160) List!55164)

(assert (=> b!4828253 (= e!3016949 (getKeysList!1165 (toList!7532 lt!1974785)))))

(declare-fun bm!336488 () Bool)

(assert (=> bm!336488 (= call!336493 (contains!18842 e!3016949 key!5594))))

(declare-fun c!822669 () Bool)

(assert (=> bm!336488 (= c!822669 c!822670)))

(declare-fun b!4828254 () Bool)

(assert (=> b!4828254 (= e!3016947 (not (contains!18842 (keys!20262 lt!1974785) key!5594)))))

(declare-fun b!4828255 () Bool)

(assert (=> b!4828255 (= e!3016951 e!3016950)))

(declare-fun res!2056054 () Bool)

(assert (=> b!4828255 (=> (not res!2056054) (not e!3016950))))

(assert (=> b!4828255 (= res!2056054 (isDefined!10624 (getValueByKey!2636 (toList!7532 lt!1974785) key!5594)))))

(declare-fun b!4828256 () Bool)

(declare-fun Unit!143383 () Unit!143378)

(assert (=> b!4828256 (= e!3016952 Unit!143383)))

(assert (= (and d!1547241 c!822670) b!4828249))

(assert (= (and d!1547241 (not c!822670)) b!4828251))

(assert (= (and b!4828251 c!822668) b!4828250))

(assert (= (and b!4828251 (not c!822668)) b!4828256))

(assert (= (or b!4828249 b!4828251) bm!336488))

(assert (= (and bm!336488 c!822669) b!4828253))

(assert (= (and bm!336488 (not c!822669)) b!4828252))

(assert (= (and d!1547241 res!2056056) b!4828254))

(assert (= (and d!1547241 (not res!2056055)) b!4828255))

(assert (= (and b!4828255 res!2056054) b!4828248))

(declare-fun m!5819808 () Bool)

(assert (=> d!1547241 m!5819808))

(declare-fun m!5819810 () Bool)

(assert (=> bm!336488 m!5819810))

(assert (=> b!4828250 m!5819808))

(declare-fun m!5819812 () Bool)

(assert (=> b!4828250 m!5819812))

(declare-fun m!5819814 () Bool)

(assert (=> b!4828255 m!5819814))

(assert (=> b!4828255 m!5819814))

(declare-fun m!5819816 () Bool)

(assert (=> b!4828255 m!5819816))

(declare-fun m!5819818 () Bool)

(assert (=> b!4828249 m!5819818))

(assert (=> b!4828249 m!5819814))

(assert (=> b!4828249 m!5819814))

(assert (=> b!4828249 m!5819816))

(declare-fun m!5819820 () Bool)

(assert (=> b!4828249 m!5819820))

(declare-fun m!5819822 () Bool)

(assert (=> b!4828254 m!5819822))

(assert (=> b!4828254 m!5819822))

(declare-fun m!5819824 () Bool)

(assert (=> b!4828254 m!5819824))

(declare-fun m!5819826 () Bool)

(assert (=> b!4828253 m!5819826))

(assert (=> b!4828248 m!5819822))

(assert (=> b!4828248 m!5819822))

(assert (=> b!4828248 m!5819824))

(assert (=> b!4828252 m!5819822))

(assert (=> b!4828204 d!1547241))

(declare-fun d!1547245 () Bool)

(declare-fun res!2056061 () Bool)

(declare-fun e!3016957 () Bool)

(assert (=> d!1547245 (=> res!2056061 e!3016957)))

(assert (=> d!1547245 (= res!2056061 (is-Nil!55037 (toList!7531 lm!2325)))))

(assert (=> d!1547245 (= (forall!12649 (toList!7531 lm!2325) lambda!237305) e!3016957)))

(declare-fun b!4828261 () Bool)

(declare-fun e!3016958 () Bool)

(assert (=> b!4828261 (= e!3016957 e!3016958)))

(declare-fun res!2056062 () Bool)

(assert (=> b!4828261 (=> (not res!2056062) (not e!3016958))))

(declare-fun dynLambda!22230 (Int tuple2!58312) Bool)

(assert (=> b!4828261 (= res!2056062 (dynLambda!22230 lambda!237305 (h!61471 (toList!7531 lm!2325))))))

(declare-fun b!4828262 () Bool)

(assert (=> b!4828262 (= e!3016958 (forall!12649 (t!362657 (toList!7531 lm!2325)) lambda!237305))))

(assert (= (and d!1547245 (not res!2056061)) b!4828261))

(assert (= (and b!4828261 res!2056062) b!4828262))

(declare-fun b_lambda!190175 () Bool)

(assert (=> (not b_lambda!190175) (not b!4828261)))

(declare-fun m!5819828 () Bool)

(assert (=> b!4828261 m!5819828))

(declare-fun m!5819830 () Bool)

(assert (=> b!4828262 m!5819830))

(assert (=> start!501234 d!1547245))

(declare-fun d!1547247 () Bool)

(declare-fun isStrictlySorted!994 (List!55161) Bool)

(assert (=> d!1547247 (= (inv!70628 lm!2325) (isStrictlySorted!994 (toList!7531 lm!2325)))))

(declare-fun bs!1164971 () Bool)

(assert (= bs!1164971 d!1547247))

(declare-fun m!5819832 () Bool)

(assert (=> bs!1164971 m!5819832))

(assert (=> start!501234 d!1547247))

(declare-fun e!3016962 () Bool)

(declare-fun b!4828263 () Bool)

(assert (=> b!4828263 (= e!3016962 (contains!18842 (keys!20262 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) key!5594))))

(declare-fun d!1547249 () Bool)

(declare-fun e!3016963 () Bool)

(assert (=> d!1547249 e!3016963))

(declare-fun res!2056064 () Bool)

(assert (=> d!1547249 (=> res!2056064 e!3016963)))

(declare-fun e!3016959 () Bool)

(assert (=> d!1547249 (= res!2056064 e!3016959)))

(declare-fun res!2056065 () Bool)

(assert (=> d!1547249 (=> (not res!2056065) (not e!3016959))))

(declare-fun lt!1974816 () Bool)

(assert (=> d!1547249 (= res!2056065 (not lt!1974816))))

(declare-fun lt!1974817 () Bool)

(assert (=> d!1547249 (= lt!1974816 lt!1974817)))

(declare-fun lt!1974822 () Unit!143378)

(declare-fun e!3016960 () Unit!143378)

(assert (=> d!1547249 (= lt!1974822 e!3016960)))

(declare-fun c!822673 () Bool)

(assert (=> d!1547249 (= c!822673 lt!1974817)))

(assert (=> d!1547249 (= lt!1974817 (containsKey!4408 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) key!5594))))

(assert (=> d!1547249 (= (contains!18838 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785) key!5594) lt!1974816)))

(declare-fun b!4828264 () Bool)

(declare-fun lt!1974818 () Unit!143378)

(assert (=> b!4828264 (= e!3016960 lt!1974818)))

(declare-fun lt!1974819 () Unit!143378)

(assert (=> b!4828264 (= lt!1974819 (lemmaContainsKeyImpliesGetValueByKeyDefined!2421 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) key!5594))))

(assert (=> b!4828264 (isDefined!10624 (getValueByKey!2636 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) key!5594))))

(declare-fun lt!1974821 () Unit!143378)

(assert (=> b!4828264 (= lt!1974821 lt!1974819)))

(assert (=> b!4828264 (= lt!1974818 (lemmaInListThenGetKeysListContains!1160 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) key!5594))))

(declare-fun call!336494 () Bool)

(assert (=> b!4828264 call!336494))

(declare-fun b!4828265 () Bool)

(assert (=> b!4828265 false))

(declare-fun lt!1974823 () Unit!143378)

(declare-fun lt!1974820 () Unit!143378)

(assert (=> b!4828265 (= lt!1974823 lt!1974820)))

(assert (=> b!4828265 (containsKey!4408 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) key!5594)))

(assert (=> b!4828265 (= lt!1974820 (lemmaInGetKeysListThenContainsKey!1165 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) key!5594))))

(declare-fun e!3016964 () Unit!143378)

(declare-fun Unit!143384 () Unit!143378)

(assert (=> b!4828265 (= e!3016964 Unit!143384)))

(declare-fun b!4828266 () Bool)

(assert (=> b!4828266 (= e!3016960 e!3016964)))

(declare-fun c!822671 () Bool)

(assert (=> b!4828266 (= c!822671 call!336494)))

(declare-fun b!4828267 () Bool)

(declare-fun e!3016961 () List!55164)

(assert (=> b!4828267 (= e!3016961 (keys!20262 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)))))

(declare-fun b!4828268 () Bool)

(assert (=> b!4828268 (= e!3016961 (getKeysList!1165 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))))))

(declare-fun bm!336489 () Bool)

(assert (=> bm!336489 (= call!336494 (contains!18842 e!3016961 key!5594))))

(declare-fun c!822672 () Bool)

(assert (=> bm!336489 (= c!822672 c!822673)))

(declare-fun b!4828269 () Bool)

(assert (=> b!4828269 (= e!3016959 (not (contains!18842 (keys!20262 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) key!5594)))))

(declare-fun b!4828270 () Bool)

(assert (=> b!4828270 (= e!3016963 e!3016962)))

(declare-fun res!2056063 () Bool)

(assert (=> b!4828270 (=> (not res!2056063) (not e!3016962))))

(assert (=> b!4828270 (= res!2056063 (isDefined!10624 (getValueByKey!2636 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) key!5594)))))

(declare-fun b!4828271 () Bool)

(declare-fun Unit!143385 () Unit!143378)

(assert (=> b!4828271 (= e!3016964 Unit!143385)))

(assert (= (and d!1547249 c!822673) b!4828264))

(assert (= (and d!1547249 (not c!822673)) b!4828266))

(assert (= (and b!4828266 c!822671) b!4828265))

(assert (= (and b!4828266 (not c!822671)) b!4828271))

(assert (= (or b!4828264 b!4828266) bm!336489))

(assert (= (and bm!336489 c!822672) b!4828268))

(assert (= (and bm!336489 (not c!822672)) b!4828267))

(assert (= (and d!1547249 res!2056065) b!4828269))

(assert (= (and d!1547249 (not res!2056064)) b!4828270))

(assert (= (and b!4828270 res!2056063) b!4828263))

(declare-fun m!5819834 () Bool)

(assert (=> d!1547249 m!5819834))

(declare-fun m!5819836 () Bool)

(assert (=> bm!336489 m!5819836))

(assert (=> b!4828265 m!5819834))

(declare-fun m!5819838 () Bool)

(assert (=> b!4828265 m!5819838))

(declare-fun m!5819840 () Bool)

(assert (=> b!4828270 m!5819840))

(assert (=> b!4828270 m!5819840))

(declare-fun m!5819842 () Bool)

(assert (=> b!4828270 m!5819842))

(declare-fun m!5819844 () Bool)

(assert (=> b!4828264 m!5819844))

(assert (=> b!4828264 m!5819840))

(assert (=> b!4828264 m!5819840))

(assert (=> b!4828264 m!5819842))

(declare-fun m!5819846 () Bool)

(assert (=> b!4828264 m!5819846))

(assert (=> b!4828269 m!5819776))

(declare-fun m!5819848 () Bool)

(assert (=> b!4828269 m!5819848))

(assert (=> b!4828269 m!5819848))

(declare-fun m!5819850 () Bool)

(assert (=> b!4828269 m!5819850))

(declare-fun m!5819852 () Bool)

(assert (=> b!4828268 m!5819852))

(assert (=> b!4828263 m!5819776))

(assert (=> b!4828263 m!5819848))

(assert (=> b!4828263 m!5819848))

(assert (=> b!4828263 m!5819850))

(assert (=> b!4828267 m!5819776))

(assert (=> b!4828267 m!5819848))

(assert (=> b!4828203 d!1547249))

(assert (=> b!4828203 d!1547245))

(declare-fun b!4828338 () Bool)

(assert (=> b!4828338 true))

(declare-fun bs!1164974 () Bool)

(declare-fun b!4828339 () Bool)

(assert (= bs!1164974 (and b!4828339 b!4828338)))

(declare-fun lambda!237343 () Int)

(declare-fun lambda!237342 () Int)

(assert (=> bs!1164974 (= lambda!237343 lambda!237342)))

(assert (=> b!4828339 true))

(declare-fun lt!1974924 () ListMap!6903)

(declare-fun lambda!237344 () Int)

(assert (=> bs!1164974 (= (= lt!1974924 lt!1974785) (= lambda!237344 lambda!237342))))

(assert (=> b!4828339 (= (= lt!1974924 lt!1974785) (= lambda!237344 lambda!237343))))

(assert (=> b!4828339 true))

(declare-fun bs!1164975 () Bool)

(declare-fun d!1547251 () Bool)

(assert (= bs!1164975 (and d!1547251 b!4828338)))

(declare-fun lt!1974911 () ListMap!6903)

(declare-fun lambda!237345 () Int)

(assert (=> bs!1164975 (= (= lt!1974911 lt!1974785) (= lambda!237345 lambda!237342))))

(declare-fun bs!1164976 () Bool)

(assert (= bs!1164976 (and d!1547251 b!4828339)))

(assert (=> bs!1164976 (= (= lt!1974911 lt!1974785) (= lambda!237345 lambda!237343))))

(assert (=> bs!1164976 (= (= lt!1974911 lt!1974924) (= lambda!237345 lambda!237344))))

(assert (=> d!1547251 true))

(declare-fun b!4828335 () Bool)

(declare-fun e!3017008 () Bool)

(declare-fun invariantList!1819 (List!55160) Bool)

(assert (=> b!4828335 (= e!3017008 (invariantList!1819 (toList!7532 lt!1974911)))))

(declare-fun b!4828336 () Bool)

(declare-fun e!3017007 () Bool)

(declare-fun call!336507 () Bool)

(assert (=> b!4828336 (= e!3017007 call!336507)))

(declare-fun bm!336500 () Bool)

(declare-fun call!336505 () Unit!143378)

(declare-fun lemmaContainsAllItsOwnKeys!997 (ListMap!6903) Unit!143378)

(assert (=> bm!336500 (= call!336505 (lemmaContainsAllItsOwnKeys!997 lt!1974785))))

(declare-fun c!822691 () Bool)

(declare-fun call!336506 () Bool)

(declare-fun bm!336502 () Bool)

(declare-fun forall!12651 (List!55160 Int) Bool)

(assert (=> bm!336502 (= call!336506 (forall!12651 (toList!7532 lt!1974785) (ite c!822691 lambda!237342 lambda!237343)))))

(declare-fun b!4828337 () Bool)

(declare-fun res!2056093 () Bool)

(assert (=> b!4828337 (=> (not res!2056093) (not e!3017008))))

(assert (=> b!4828337 (= res!2056093 (forall!12651 (toList!7532 lt!1974785) lambda!237345))))

(declare-fun e!3017009 () ListMap!6903)

(assert (=> b!4828338 (= e!3017009 lt!1974785)))

(declare-fun lt!1974917 () Unit!143378)

(assert (=> b!4828338 (= lt!1974917 call!336505)))

(assert (=> b!4828338 call!336507))

(declare-fun lt!1974910 () Unit!143378)

(assert (=> b!4828338 (= lt!1974910 lt!1974917)))

(assert (=> b!4828338 call!336506))

(declare-fun lt!1974914 () Unit!143378)

(declare-fun Unit!143386 () Unit!143378)

(assert (=> b!4828338 (= lt!1974914 Unit!143386)))

(assert (=> b!4828339 (= e!3017009 lt!1974924)))

(declare-fun lt!1974926 () ListMap!6903)

(declare-fun +!2542 (ListMap!6903 tuple2!58310) ListMap!6903)

(assert (=> b!4828339 (= lt!1974926 (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))))))

(assert (=> b!4828339 (= lt!1974924 (addToMapMapFromBucket!1818 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325)))) (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))))

(declare-fun lt!1974915 () Unit!143378)

(assert (=> b!4828339 (= lt!1974915 call!336505)))

(assert (=> b!4828339 call!336506))

(declare-fun lt!1974919 () Unit!143378)

(assert (=> b!4828339 (= lt!1974919 lt!1974915)))

(assert (=> b!4828339 (forall!12651 (toList!7532 lt!1974926) lambda!237344)))

(declare-fun lt!1974916 () Unit!143378)

(declare-fun Unit!143387 () Unit!143378)

(assert (=> b!4828339 (= lt!1974916 Unit!143387)))

(assert (=> b!4828339 (forall!12651 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325)))) lambda!237344)))

(declare-fun lt!1974923 () Unit!143378)

(declare-fun Unit!143388 () Unit!143378)

(assert (=> b!4828339 (= lt!1974923 Unit!143388)))

(declare-fun lt!1974930 () Unit!143378)

(declare-fun Unit!143389 () Unit!143378)

(assert (=> b!4828339 (= lt!1974930 Unit!143389)))

(declare-fun lt!1974925 () Unit!143378)

(declare-fun forallContained!4396 (List!55160 Int tuple2!58310) Unit!143378)

(assert (=> b!4828339 (= lt!1974925 (forallContained!4396 (toList!7532 lt!1974926) lambda!237344 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))))))

(assert (=> b!4828339 (contains!18838 lt!1974926 (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))))))

(declare-fun lt!1974918 () Unit!143378)

(declare-fun Unit!143390 () Unit!143378)

(assert (=> b!4828339 (= lt!1974918 Unit!143390)))

(assert (=> b!4828339 (contains!18838 lt!1974924 (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))))))

(declare-fun lt!1974928 () Unit!143378)

(declare-fun Unit!143391 () Unit!143378)

(assert (=> b!4828339 (= lt!1974928 Unit!143391)))

(assert (=> b!4828339 (forall!12651 (_2!32450 (h!61471 (toList!7531 lm!2325))) lambda!237344)))

(declare-fun lt!1974929 () Unit!143378)

(declare-fun Unit!143392 () Unit!143378)

(assert (=> b!4828339 (= lt!1974929 Unit!143392)))

(assert (=> b!4828339 (forall!12651 (toList!7532 lt!1974926) lambda!237344)))

(declare-fun lt!1974913 () Unit!143378)

(declare-fun Unit!143393 () Unit!143378)

(assert (=> b!4828339 (= lt!1974913 Unit!143393)))

(declare-fun lt!1974922 () Unit!143378)

(declare-fun Unit!143394 () Unit!143378)

(assert (=> b!4828339 (= lt!1974922 Unit!143394)))

(declare-fun lt!1974920 () Unit!143378)

(declare-fun addForallContainsKeyThenBeforeAdding!996 (ListMap!6903 ListMap!6903 K!16727 V!16973) Unit!143378)

(assert (=> b!4828339 (= lt!1974920 (addForallContainsKeyThenBeforeAdding!996 lt!1974785 lt!1974924 (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) (_2!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))))

(assert (=> b!4828339 (forall!12651 (toList!7532 lt!1974785) lambda!237344)))

(declare-fun lt!1974921 () Unit!143378)

(assert (=> b!4828339 (= lt!1974921 lt!1974920)))

(assert (=> b!4828339 (forall!12651 (toList!7532 lt!1974785) lambda!237344)))

(declare-fun lt!1974912 () Unit!143378)

(declare-fun Unit!143395 () Unit!143378)

(assert (=> b!4828339 (= lt!1974912 Unit!143395)))

(declare-fun res!2056095 () Bool)

(assert (=> b!4828339 (= res!2056095 (forall!12651 (_2!32450 (h!61471 (toList!7531 lm!2325))) lambda!237344))))

(assert (=> b!4828339 (=> (not res!2056095) (not e!3017007))))

(assert (=> b!4828339 e!3017007))

(declare-fun lt!1974927 () Unit!143378)

(declare-fun Unit!143396 () Unit!143378)

(assert (=> b!4828339 (= lt!1974927 Unit!143396)))

(assert (=> d!1547251 e!3017008))

(declare-fun res!2056094 () Bool)

(assert (=> d!1547251 (=> (not res!2056094) (not e!3017008))))

(assert (=> d!1547251 (= res!2056094 (forall!12651 (_2!32450 (h!61471 (toList!7531 lm!2325))) lambda!237345))))

(assert (=> d!1547251 (= lt!1974911 e!3017009)))

(assert (=> d!1547251 (= c!822691 (is-Nil!55036 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))

(declare-fun noDuplicateKeys!2463 (List!55160) Bool)

(assert (=> d!1547251 (noDuplicateKeys!2463 (_2!32450 (h!61471 (toList!7531 lm!2325))))))

(assert (=> d!1547251 (= (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785) lt!1974911)))

(declare-fun bm!336501 () Bool)

(assert (=> bm!336501 (= call!336507 (forall!12651 (toList!7532 lt!1974785) (ite c!822691 lambda!237342 lambda!237344)))))

(assert (= (and d!1547251 c!822691) b!4828338))

(assert (= (and d!1547251 (not c!822691)) b!4828339))

(assert (= (and b!4828339 res!2056095) b!4828336))

(assert (= (or b!4828338 b!4828339) bm!336500))

(assert (= (or b!4828338 b!4828336) bm!336501))

(assert (= (or b!4828338 b!4828339) bm!336502))

(assert (= (and d!1547251 res!2056094) b!4828337))

(assert (= (and b!4828337 res!2056093) b!4828335))

(declare-fun m!5819906 () Bool)

(assert (=> b!4828339 m!5819906))

(declare-fun m!5819908 () Bool)

(assert (=> b!4828339 m!5819908))

(declare-fun m!5819910 () Bool)

(assert (=> b!4828339 m!5819910))

(declare-fun m!5819912 () Bool)

(assert (=> b!4828339 m!5819912))

(declare-fun m!5819914 () Bool)

(assert (=> b!4828339 m!5819914))

(declare-fun m!5819916 () Bool)

(assert (=> b!4828339 m!5819916))

(declare-fun m!5819918 () Bool)

(assert (=> b!4828339 m!5819918))

(assert (=> b!4828339 m!5819916))

(declare-fun m!5819920 () Bool)

(assert (=> b!4828339 m!5819920))

(assert (=> b!4828339 m!5819912))

(assert (=> b!4828339 m!5819910))

(assert (=> b!4828339 m!5819908))

(declare-fun m!5819922 () Bool)

(assert (=> b!4828339 m!5819922))

(declare-fun m!5819924 () Bool)

(assert (=> b!4828339 m!5819924))

(declare-fun m!5819926 () Bool)

(assert (=> bm!336501 m!5819926))

(declare-fun m!5819928 () Bool)

(assert (=> bm!336502 m!5819928))

(declare-fun m!5819930 () Bool)

(assert (=> d!1547251 m!5819930))

(declare-fun m!5819932 () Bool)

(assert (=> d!1547251 m!5819932))

(declare-fun m!5819934 () Bool)

(assert (=> b!4828335 m!5819934))

(declare-fun m!5819936 () Bool)

(assert (=> bm!336500 m!5819936))

(declare-fun m!5819938 () Bool)

(assert (=> b!4828337 m!5819938))

(assert (=> b!4828203 d!1547251))

(declare-fun e!3017012 () Bool)

(declare-fun d!1547263 () Bool)

(assert (=> d!1547263 (= (contains!18838 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785) key!5594) e!3017012)))

(declare-fun res!2056098 () Bool)

(assert (=> d!1547263 (=> res!2056098 e!3017012)))

(assert (=> d!1547263 (= res!2056098 (containsKey!4406 (_2!32450 (h!61471 (toList!7531 lm!2325))) key!5594))))

(declare-fun lt!1974933 () Unit!143378)

(declare-fun choose!35177 (List!55160 ListMap!6903 K!16727) Unit!143378)

(assert (=> d!1547263 (= lt!1974933 (choose!35177 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785 key!5594))))

(assert (=> d!1547263 (noDuplicateKeys!2463 (_2!32450 (h!61471 (toList!7531 lm!2325))))))

(assert (=> d!1547263 (= (lemmaAddToMapFromBucketContainsIIFInAccOrL!41 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785 key!5594) lt!1974933)))

(declare-fun b!4828344 () Bool)

(assert (=> b!4828344 (= e!3017012 (contains!18838 lt!1974785 key!5594))))

(assert (= (and d!1547263 (not res!2056098)) b!4828344))

(assert (=> d!1547263 m!5819932))

(assert (=> d!1547263 m!5819776))

(assert (=> d!1547263 m!5819780))

(assert (=> d!1547263 m!5819776))

(assert (=> d!1547263 m!5819778))

(declare-fun m!5819940 () Bool)

(assert (=> d!1547263 m!5819940))

(assert (=> b!4828344 m!5819772))

(assert (=> b!4828203 d!1547263))

(declare-fun d!1547265 () Bool)

(declare-fun res!2056103 () Bool)

(declare-fun e!3017017 () Bool)

(assert (=> d!1547265 (=> res!2056103 e!3017017)))

(assert (=> d!1547265 (= res!2056103 (and (is-Cons!55036 (_2!32450 (h!61471 (toList!7531 lm!2325)))) (= (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) key!5594)))))

(assert (=> d!1547265 (= (containsKey!4406 (_2!32450 (h!61471 (toList!7531 lm!2325))) key!5594) e!3017017)))

(declare-fun b!4828349 () Bool)

(declare-fun e!3017018 () Bool)

(assert (=> b!4828349 (= e!3017017 e!3017018)))

(declare-fun res!2056104 () Bool)

(assert (=> b!4828349 (=> (not res!2056104) (not e!3017018))))

(assert (=> b!4828349 (= res!2056104 (is-Cons!55036 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))

(declare-fun b!4828350 () Bool)

(assert (=> b!4828350 (= e!3017018 (containsKey!4406 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325)))) key!5594))))

(assert (= (and d!1547265 (not res!2056103)) b!4828349))

(assert (= (and b!4828349 res!2056104) b!4828350))

(declare-fun m!5819942 () Bool)

(assert (=> b!4828350 m!5819942))

(assert (=> b!4828203 d!1547265))

(declare-fun bs!1164977 () Bool)

(declare-fun d!1547267 () Bool)

(assert (= bs!1164977 (and d!1547267 start!501234)))

(declare-fun lambda!237348 () Int)

(assert (=> bs!1164977 (= lambda!237348 lambda!237305)))

(declare-fun lt!1974936 () ListMap!6903)

(assert (=> d!1547267 (invariantList!1819 (toList!7532 lt!1974936))))

(declare-fun e!3017021 () ListMap!6903)

(assert (=> d!1547267 (= lt!1974936 e!3017021)))

(declare-fun c!822694 () Bool)

(assert (=> d!1547267 (= c!822694 (is-Cons!55037 (t!362657 (toList!7531 lm!2325))))))

(assert (=> d!1547267 (forall!12649 (t!362657 (toList!7531 lm!2325)) lambda!237348)))

(assert (=> d!1547267 (= (extractMap!2703 (t!362657 (toList!7531 lm!2325))) lt!1974936)))

(declare-fun b!4828355 () Bool)

(assert (=> b!4828355 (= e!3017021 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (t!362657 (toList!7531 lm!2325)))) (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325))))))))

(declare-fun b!4828356 () Bool)

(assert (=> b!4828356 (= e!3017021 (ListMap!6904 Nil!55036))))

(assert (= (and d!1547267 c!822694) b!4828355))

(assert (= (and d!1547267 (not c!822694)) b!4828356))

(declare-fun m!5819944 () Bool)

(assert (=> d!1547267 m!5819944))

(declare-fun m!5819946 () Bool)

(assert (=> d!1547267 m!5819946))

(declare-fun m!5819948 () Bool)

(assert (=> b!4828355 m!5819948))

(assert (=> b!4828355 m!5819948))

(declare-fun m!5819950 () Bool)

(assert (=> b!4828355 m!5819950))

(assert (=> b!4828203 d!1547267))

(declare-fun d!1547269 () Bool)

(declare-fun e!3017026 () Bool)

(assert (=> d!1547269 e!3017026))

(declare-fun res!2056107 () Bool)

(assert (=> d!1547269 (=> res!2056107 e!3017026)))

(declare-fun lt!1974945 () Bool)

(assert (=> d!1547269 (= res!2056107 (not lt!1974945))))

(declare-fun lt!1974948 () Bool)

(assert (=> d!1547269 (= lt!1974945 lt!1974948)))

(declare-fun lt!1974947 () Unit!143378)

(declare-fun e!3017027 () Unit!143378)

(assert (=> d!1547269 (= lt!1974947 e!3017027)))

(declare-fun c!822697 () Bool)

(assert (=> d!1547269 (= c!822697 lt!1974948)))

(declare-fun containsKey!4409 (List!55161 (_ BitVec 64)) Bool)

(assert (=> d!1547269 (= lt!1974948 (containsKey!4409 (toList!7531 lm!2325) (_1!32450 (h!61471 (toList!7531 lm!2325)))))))

(assert (=> d!1547269 (= (contains!18839 lm!2325 (_1!32450 (h!61471 (toList!7531 lm!2325)))) lt!1974945)))

(declare-fun b!4828363 () Bool)

(declare-fun lt!1974946 () Unit!143378)

(assert (=> b!4828363 (= e!3017027 lt!1974946)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2422 (List!55161 (_ BitVec 64)) Unit!143378)

(assert (=> b!4828363 (= lt!1974946 (lemmaContainsKeyImpliesGetValueByKeyDefined!2422 (toList!7531 lm!2325) (_1!32450 (h!61471 (toList!7531 lm!2325)))))))

(declare-datatypes ((Option!13510 0))(
  ( (None!13509) (Some!13509 (v!49196 List!55160)) )
))
(declare-fun isDefined!10625 (Option!13510) Bool)

(declare-fun getValueByKey!2637 (List!55161 (_ BitVec 64)) Option!13510)

(assert (=> b!4828363 (isDefined!10625 (getValueByKey!2637 (toList!7531 lm!2325) (_1!32450 (h!61471 (toList!7531 lm!2325)))))))

(declare-fun b!4828364 () Bool)

(declare-fun Unit!143397 () Unit!143378)

(assert (=> b!4828364 (= e!3017027 Unit!143397)))

(declare-fun b!4828365 () Bool)

(assert (=> b!4828365 (= e!3017026 (isDefined!10625 (getValueByKey!2637 (toList!7531 lm!2325) (_1!32450 (h!61471 (toList!7531 lm!2325))))))))

(assert (= (and d!1547269 c!822697) b!4828363))

(assert (= (and d!1547269 (not c!822697)) b!4828364))

(assert (= (and d!1547269 (not res!2056107)) b!4828365))

(declare-fun m!5819952 () Bool)

(assert (=> d!1547269 m!5819952))

(declare-fun m!5819954 () Bool)

(assert (=> b!4828363 m!5819954))

(declare-fun m!5819956 () Bool)

(assert (=> b!4828363 m!5819956))

(assert (=> b!4828363 m!5819956))

(declare-fun m!5819958 () Bool)

(assert (=> b!4828363 m!5819958))

(assert (=> b!4828365 m!5819956))

(assert (=> b!4828365 m!5819956))

(assert (=> b!4828365 m!5819958))

(assert (=> b!4828208 d!1547269))

(declare-fun bs!1164978 () Bool)

(declare-fun d!1547271 () Bool)

(assert (= bs!1164978 (and d!1547271 start!501234)))

(declare-fun lambda!237351 () Int)

(assert (=> bs!1164978 (not (= lambda!237351 lambda!237305))))

(declare-fun bs!1164979 () Bool)

(assert (= bs!1164979 (and d!1547271 d!1547267)))

(assert (=> bs!1164979 (not (= lambda!237351 lambda!237348))))

(assert (=> d!1547271 true))

(assert (=> d!1547271 (= (allKeysSameHashInMap!2611 lm!2325 hashF!1543) (forall!12649 (toList!7531 lm!2325) lambda!237351))))

(declare-fun bs!1164980 () Bool)

(assert (= bs!1164980 d!1547271))

(declare-fun m!5819960 () Bool)

(assert (=> bs!1164980 m!5819960))

(assert (=> b!4828202 d!1547271))

(declare-fun d!1547273 () Bool)

(declare-fun e!3017028 () Bool)

(assert (=> d!1547273 e!3017028))

(declare-fun res!2056108 () Bool)

(assert (=> d!1547273 (=> res!2056108 e!3017028)))

(declare-fun lt!1974949 () Bool)

(assert (=> d!1547273 (= res!2056108 (not lt!1974949))))

(declare-fun lt!1974952 () Bool)

(assert (=> d!1547273 (= lt!1974949 lt!1974952)))

(declare-fun lt!1974951 () Unit!143378)

(declare-fun e!3017029 () Unit!143378)

(assert (=> d!1547273 (= lt!1974951 e!3017029)))

(declare-fun c!822698 () Bool)

(assert (=> d!1547273 (= c!822698 lt!1974952)))

(assert (=> d!1547273 (= lt!1974952 (containsKey!4409 (toList!7531 lm!2325) (hash!5446 hashF!1543 key!5594)))))

(assert (=> d!1547273 (= (contains!18839 lm!2325 (hash!5446 hashF!1543 key!5594)) lt!1974949)))

(declare-fun b!4828368 () Bool)

(declare-fun lt!1974950 () Unit!143378)

(assert (=> b!4828368 (= e!3017029 lt!1974950)))

(assert (=> b!4828368 (= lt!1974950 (lemmaContainsKeyImpliesGetValueByKeyDefined!2422 (toList!7531 lm!2325) (hash!5446 hashF!1543 key!5594)))))

(assert (=> b!4828368 (isDefined!10625 (getValueByKey!2637 (toList!7531 lm!2325) (hash!5446 hashF!1543 key!5594)))))

(declare-fun b!4828369 () Bool)

(declare-fun Unit!143398 () Unit!143378)

(assert (=> b!4828369 (= e!3017029 Unit!143398)))

(declare-fun b!4828370 () Bool)

(assert (=> b!4828370 (= e!3017028 (isDefined!10625 (getValueByKey!2637 (toList!7531 lm!2325) (hash!5446 hashF!1543 key!5594))))))

(assert (= (and d!1547273 c!822698) b!4828368))

(assert (= (and d!1547273 (not c!822698)) b!4828369))

(assert (= (and d!1547273 (not res!2056108)) b!4828370))

(assert (=> d!1547273 m!5819768))

(declare-fun m!5819962 () Bool)

(assert (=> d!1547273 m!5819962))

(assert (=> b!4828368 m!5819768))

(declare-fun m!5819964 () Bool)

(assert (=> b!4828368 m!5819964))

(assert (=> b!4828368 m!5819768))

(declare-fun m!5819966 () Bool)

(assert (=> b!4828368 m!5819966))

(assert (=> b!4828368 m!5819966))

(declare-fun m!5819968 () Bool)

(assert (=> b!4828368 m!5819968))

(assert (=> b!4828370 m!5819768))

(assert (=> b!4828370 m!5819966))

(assert (=> b!4828370 m!5819966))

(assert (=> b!4828370 m!5819968))

(assert (=> b!4828207 d!1547273))

(declare-fun d!1547275 () Bool)

(declare-fun hash!5448 (Hashable!7295 K!16727) (_ BitVec 64))

(assert (=> d!1547275 (= (hash!5446 hashF!1543 key!5594) (hash!5448 hashF!1543 key!5594))))

(declare-fun bs!1164981 () Bool)

(assert (= bs!1164981 d!1547275))

(declare-fun m!5819970 () Bool)

(assert (=> bs!1164981 m!5819970))

(assert (=> b!4828207 d!1547275))

(declare-fun b!4828375 () Bool)

(declare-fun e!3017032 () Bool)

(declare-fun tp!1362783 () Bool)

(declare-fun tp!1362784 () Bool)

(assert (=> b!4828375 (= e!3017032 (and tp!1362783 tp!1362784))))

(assert (=> b!4828205 (= tp!1362775 e!3017032)))

(assert (= (and b!4828205 (is-Cons!55037 (toList!7531 lm!2325))) b!4828375))

(declare-fun b_lambda!190177 () Bool)

(assert (= b_lambda!190175 (or start!501234 b_lambda!190177)))

(declare-fun bs!1164982 () Bool)

(declare-fun d!1547277 () Bool)

(assert (= bs!1164982 (and d!1547277 start!501234)))

(assert (=> bs!1164982 (= (dynLambda!22230 lambda!237305 (h!61471 (toList!7531 lm!2325))) (noDuplicateKeys!2463 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))

(assert (=> bs!1164982 m!5819932))

(assert (=> b!4828261 d!1547277))

(push 1)

(assert (not bm!336502))

(assert (not bm!336500))

(assert (not b!4828262))

(assert (not b!4828265))

(assert (not b!4828339))

(assert (not bm!336501))

(assert (not b!4828375))

(assert (not d!1547273))

(assert (not b!4828363))

(assert (not b!4828335))

(assert (not d!1547263))

(assert (not b!4828269))

(assert (not d!1547251))

(assert (not b!4828270))

(assert (not b!4828368))

(assert (not b!4828267))

(assert tp_is_empty!34529)

(assert (not d!1547267))

(assert (not b!4828344))

(assert (not d!1547249))

(assert (not b!4828248))

(assert (not b!4828337))

(assert (not b!4828350))

(assert (not d!1547241))

(assert (not b!4828249))

(assert (not d!1547275))

(assert (not b!4828253))

(assert (not bm!336489))

(assert (not b!4828268))

(assert (not d!1547247))

(assert (not bm!336488))

(assert (not b!4828263))

(assert (not b!4828370))

(assert (not d!1547269))

(assert (not b!4828255))

(assert (not b!4828252))

(assert (not d!1547271))

(assert (not b!4828355))

(assert (not b!4828264))

(assert (not b!4828250))

(assert (not b!4828254))

(assert (not b_lambda!190177))

(assert (not bs!1164982))

(assert (not b!4828365))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> b!4828344 d!1547241))

(declare-fun d!1547293 () Bool)

(declare-fun res!2056132 () Bool)

(declare-fun e!3017063 () Bool)

(assert (=> d!1547293 (=> res!2056132 e!3017063)))

(assert (=> d!1547293 (= res!2056132 (and (is-Cons!55037 (toList!7531 lm!2325)) (= (_1!32450 (h!61471 (toList!7531 lm!2325))) (_1!32450 (h!61471 (toList!7531 lm!2325))))))))

(assert (=> d!1547293 (= (containsKey!4409 (toList!7531 lm!2325) (_1!32450 (h!61471 (toList!7531 lm!2325)))) e!3017063)))

(declare-fun b!4828420 () Bool)

(declare-fun e!3017064 () Bool)

(assert (=> b!4828420 (= e!3017063 e!3017064)))

(declare-fun res!2056133 () Bool)

(assert (=> b!4828420 (=> (not res!2056133) (not e!3017064))))

(assert (=> b!4828420 (= res!2056133 (and (or (not (is-Cons!55037 (toList!7531 lm!2325))) (bvsle (_1!32450 (h!61471 (toList!7531 lm!2325))) (_1!32450 (h!61471 (toList!7531 lm!2325))))) (is-Cons!55037 (toList!7531 lm!2325)) (bvslt (_1!32450 (h!61471 (toList!7531 lm!2325))) (_1!32450 (h!61471 (toList!7531 lm!2325))))))))

(declare-fun b!4828421 () Bool)

(assert (=> b!4828421 (= e!3017064 (containsKey!4409 (t!362657 (toList!7531 lm!2325)) (_1!32450 (h!61471 (toList!7531 lm!2325)))))))

(assert (= (and d!1547293 (not res!2056132)) b!4828420))

(assert (= (and b!4828420 res!2056133) b!4828421))

(declare-fun m!5820032 () Bool)

(assert (=> b!4828421 m!5820032))

(assert (=> d!1547269 d!1547293))

(declare-fun d!1547295 () Bool)

(declare-fun res!2056138 () Bool)

(declare-fun e!3017069 () Bool)

(assert (=> d!1547295 (=> res!2056138 e!3017069)))

(assert (=> d!1547295 (= res!2056138 (or (is-Nil!55037 (toList!7531 lm!2325)) (is-Nil!55037 (t!362657 (toList!7531 lm!2325)))))))

(assert (=> d!1547295 (= (isStrictlySorted!994 (toList!7531 lm!2325)) e!3017069)))

(declare-fun b!4828426 () Bool)

(declare-fun e!3017070 () Bool)

(assert (=> b!4828426 (= e!3017069 e!3017070)))

(declare-fun res!2056139 () Bool)

(assert (=> b!4828426 (=> (not res!2056139) (not e!3017070))))

(assert (=> b!4828426 (= res!2056139 (bvslt (_1!32450 (h!61471 (toList!7531 lm!2325))) (_1!32450 (h!61471 (t!362657 (toList!7531 lm!2325))))))))

(declare-fun b!4828427 () Bool)

(assert (=> b!4828427 (= e!3017070 (isStrictlySorted!994 (t!362657 (toList!7531 lm!2325))))))

(assert (= (and d!1547295 (not res!2056138)) b!4828426))

(assert (= (and b!4828426 res!2056139) b!4828427))

(declare-fun m!5820034 () Bool)

(assert (=> b!4828427 m!5820034))

(assert (=> d!1547247 d!1547295))

(declare-fun d!1547297 () Bool)

(declare-fun res!2056144 () Bool)

(declare-fun e!3017075 () Bool)

(assert (=> d!1547297 (=> res!2056144 e!3017075)))

(assert (=> d!1547297 (= res!2056144 (and (is-Cons!55036 (toList!7532 lt!1974785)) (= (_1!32449 (h!61470 (toList!7532 lt!1974785))) key!5594)))))

(assert (=> d!1547297 (= (containsKey!4408 (toList!7532 lt!1974785) key!5594) e!3017075)))

(declare-fun b!4828432 () Bool)

(declare-fun e!3017076 () Bool)

(assert (=> b!4828432 (= e!3017075 e!3017076)))

(declare-fun res!2056145 () Bool)

(assert (=> b!4828432 (=> (not res!2056145) (not e!3017076))))

(assert (=> b!4828432 (= res!2056145 (is-Cons!55036 (toList!7532 lt!1974785)))))

(declare-fun b!4828433 () Bool)

(assert (=> b!4828433 (= e!3017076 (containsKey!4408 (t!362656 (toList!7532 lt!1974785)) key!5594))))

(assert (= (and d!1547297 (not res!2056144)) b!4828432))

(assert (= (and b!4828432 res!2056145) b!4828433))

(declare-fun m!5820036 () Bool)

(assert (=> b!4828433 m!5820036))

(assert (=> b!4828250 d!1547297))

(declare-fun d!1547299 () Bool)

(assert (=> d!1547299 (containsKey!4408 (toList!7532 lt!1974785) key!5594)))

(declare-fun lt!1975028 () Unit!143378)

(declare-fun choose!35179 (List!55160 K!16727) Unit!143378)

(assert (=> d!1547299 (= lt!1975028 (choose!35179 (toList!7532 lt!1974785) key!5594))))

(assert (=> d!1547299 (invariantList!1819 (toList!7532 lt!1974785))))

(assert (=> d!1547299 (= (lemmaInGetKeysListThenContainsKey!1165 (toList!7532 lt!1974785) key!5594) lt!1975028)))

(declare-fun bs!1164991 () Bool)

(assert (= bs!1164991 d!1547299))

(assert (=> bs!1164991 m!5819808))

(declare-fun m!5820038 () Bool)

(assert (=> bs!1164991 m!5820038))

(declare-fun m!5820040 () Bool)

(assert (=> bs!1164991 m!5820040))

(assert (=> b!4828250 d!1547299))

(declare-fun d!1547301 () Bool)

(declare-fun res!2056146 () Bool)

(declare-fun e!3017077 () Bool)

(assert (=> d!1547301 (=> res!2056146 e!3017077)))

(assert (=> d!1547301 (= res!2056146 (is-Nil!55037 (toList!7531 lm!2325)))))

(assert (=> d!1547301 (= (forall!12649 (toList!7531 lm!2325) lambda!237351) e!3017077)))

(declare-fun b!4828434 () Bool)

(declare-fun e!3017078 () Bool)

(assert (=> b!4828434 (= e!3017077 e!3017078)))

(declare-fun res!2056147 () Bool)

(assert (=> b!4828434 (=> (not res!2056147) (not e!3017078))))

(assert (=> b!4828434 (= res!2056147 (dynLambda!22230 lambda!237351 (h!61471 (toList!7531 lm!2325))))))

(declare-fun b!4828435 () Bool)

(assert (=> b!4828435 (= e!3017078 (forall!12649 (t!362657 (toList!7531 lm!2325)) lambda!237351))))

(assert (= (and d!1547301 (not res!2056146)) b!4828434))

(assert (= (and b!4828434 res!2056147) b!4828435))

(declare-fun b_lambda!190183 () Bool)

(assert (=> (not b_lambda!190183) (not b!4828434)))

(declare-fun m!5820042 () Bool)

(assert (=> b!4828434 m!5820042))

(declare-fun m!5820044 () Bool)

(assert (=> b!4828435 m!5820044))

(assert (=> d!1547271 d!1547301))

(assert (=> d!1547263 d!1547251))

(assert (=> d!1547263 d!1547265))

(declare-fun e!3017081 () Bool)

(declare-fun d!1547303 () Bool)

(assert (=> d!1547303 (= (contains!18838 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785) key!5594) e!3017081)))

(declare-fun res!2056150 () Bool)

(assert (=> d!1547303 (=> res!2056150 e!3017081)))

(assert (=> d!1547303 (= res!2056150 (containsKey!4406 (_2!32450 (h!61471 (toList!7531 lm!2325))) key!5594))))

(assert (=> d!1547303 true))

(declare-fun _$29!826 () Unit!143378)

(assert (=> d!1547303 (= (choose!35177 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785 key!5594) _$29!826)))

(declare-fun b!4828438 () Bool)

(assert (=> b!4828438 (= e!3017081 (contains!18838 lt!1974785 key!5594))))

(assert (= (and d!1547303 (not res!2056150)) b!4828438))

(assert (=> d!1547303 m!5819776))

(assert (=> d!1547303 m!5819776))

(assert (=> d!1547303 m!5819778))

(assert (=> d!1547303 m!5819780))

(assert (=> b!4828438 m!5819772))

(assert (=> d!1547263 d!1547303))

(assert (=> d!1547263 d!1547249))

(declare-fun d!1547305 () Bool)

(declare-fun res!2056155 () Bool)

(declare-fun e!3017086 () Bool)

(assert (=> d!1547305 (=> res!2056155 e!3017086)))

(assert (=> d!1547305 (= res!2056155 (not (is-Cons!55036 (_2!32450 (h!61471 (toList!7531 lm!2325))))))))

(assert (=> d!1547305 (= (noDuplicateKeys!2463 (_2!32450 (h!61471 (toList!7531 lm!2325)))) e!3017086)))

(declare-fun b!4828443 () Bool)

(declare-fun e!3017087 () Bool)

(assert (=> b!4828443 (= e!3017086 e!3017087)))

(declare-fun res!2056156 () Bool)

(assert (=> b!4828443 (=> (not res!2056156) (not e!3017087))))

(assert (=> b!4828443 (= res!2056156 (not (containsKey!4406 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325)))) (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))))))))

(declare-fun b!4828444 () Bool)

(assert (=> b!4828444 (= e!3017087 (noDuplicateKeys!2463 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325))))))))

(assert (= (and d!1547305 (not res!2056155)) b!4828443))

(assert (= (and b!4828443 res!2056156) b!4828444))

(declare-fun m!5820046 () Bool)

(assert (=> b!4828443 m!5820046))

(declare-fun m!5820048 () Bool)

(assert (=> b!4828444 m!5820048))

(assert (=> d!1547263 d!1547305))

(declare-fun d!1547307 () Bool)

(assert (=> d!1547307 (isDefined!10624 (getValueByKey!2636 (toList!7532 lt!1974785) key!5594))))

(declare-fun lt!1975031 () Unit!143378)

(declare-fun choose!35180 (List!55160 K!16727) Unit!143378)

(assert (=> d!1547307 (= lt!1975031 (choose!35180 (toList!7532 lt!1974785) key!5594))))

(assert (=> d!1547307 (invariantList!1819 (toList!7532 lt!1974785))))

(assert (=> d!1547307 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2421 (toList!7532 lt!1974785) key!5594) lt!1975031)))

(declare-fun bs!1164992 () Bool)

(assert (= bs!1164992 d!1547307))

(assert (=> bs!1164992 m!5819814))

(assert (=> bs!1164992 m!5819814))

(assert (=> bs!1164992 m!5819816))

(declare-fun m!5820050 () Bool)

(assert (=> bs!1164992 m!5820050))

(assert (=> bs!1164992 m!5820040))

(assert (=> b!4828249 d!1547307))

(declare-fun d!1547309 () Bool)

(declare-fun isEmpty!29670 (Option!13509) Bool)

(assert (=> d!1547309 (= (isDefined!10624 (getValueByKey!2636 (toList!7532 lt!1974785) key!5594)) (not (isEmpty!29670 (getValueByKey!2636 (toList!7532 lt!1974785) key!5594))))))

(declare-fun bs!1164993 () Bool)

(assert (= bs!1164993 d!1547309))

(assert (=> bs!1164993 m!5819814))

(declare-fun m!5820052 () Bool)

(assert (=> bs!1164993 m!5820052))

(assert (=> b!4828249 d!1547309))

(declare-fun b!4828454 () Bool)

(declare-fun e!3017092 () Option!13509)

(declare-fun e!3017093 () Option!13509)

(assert (=> b!4828454 (= e!3017092 e!3017093)))

(declare-fun c!822711 () Bool)

(assert (=> b!4828454 (= c!822711 (and (is-Cons!55036 (toList!7532 lt!1974785)) (not (= (_1!32449 (h!61470 (toList!7532 lt!1974785))) key!5594))))))

(declare-fun b!4828456 () Bool)

(assert (=> b!4828456 (= e!3017093 None!13508)))

(declare-fun b!4828455 () Bool)

(assert (=> b!4828455 (= e!3017093 (getValueByKey!2636 (t!362656 (toList!7532 lt!1974785)) key!5594))))

(declare-fun b!4828453 () Bool)

(assert (=> b!4828453 (= e!3017092 (Some!13508 (_2!32449 (h!61470 (toList!7532 lt!1974785)))))))

(declare-fun d!1547311 () Bool)

(declare-fun c!822710 () Bool)

(assert (=> d!1547311 (= c!822710 (and (is-Cons!55036 (toList!7532 lt!1974785)) (= (_1!32449 (h!61470 (toList!7532 lt!1974785))) key!5594)))))

(assert (=> d!1547311 (= (getValueByKey!2636 (toList!7532 lt!1974785) key!5594) e!3017092)))

(assert (= (and d!1547311 c!822710) b!4828453))

(assert (= (and d!1547311 (not c!822710)) b!4828454))

(assert (= (and b!4828454 c!822711) b!4828455))

(assert (= (and b!4828454 (not c!822711)) b!4828456))

(declare-fun m!5820054 () Bool)

(assert (=> b!4828455 m!5820054))

(assert (=> b!4828249 d!1547311))

(declare-fun d!1547313 () Bool)

(assert (=> d!1547313 (contains!18842 (getKeysList!1165 (toList!7532 lt!1974785)) key!5594)))

(declare-fun lt!1975034 () Unit!143378)

(declare-fun choose!35181 (List!55160 K!16727) Unit!143378)

(assert (=> d!1547313 (= lt!1975034 (choose!35181 (toList!7532 lt!1974785) key!5594))))

(assert (=> d!1547313 (invariantList!1819 (toList!7532 lt!1974785))))

(assert (=> d!1547313 (= (lemmaInListThenGetKeysListContains!1160 (toList!7532 lt!1974785) key!5594) lt!1975034)))

(declare-fun bs!1164994 () Bool)

(assert (= bs!1164994 d!1547313))

(assert (=> bs!1164994 m!5819826))

(assert (=> bs!1164994 m!5819826))

(declare-fun m!5820056 () Bool)

(assert (=> bs!1164994 m!5820056))

(declare-fun m!5820058 () Bool)

(assert (=> bs!1164994 m!5820058))

(assert (=> bs!1164994 m!5820040))

(assert (=> b!4828249 d!1547313))

(declare-fun d!1547315 () Bool)

(declare-fun res!2056157 () Bool)

(declare-fun e!3017094 () Bool)

(assert (=> d!1547315 (=> res!2056157 e!3017094)))

(assert (=> d!1547315 (= res!2056157 (and (is-Cons!55036 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325))))) (= (_1!32449 (h!61470 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325)))))) key!5594)))))

(assert (=> d!1547315 (= (containsKey!4406 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325)))) key!5594) e!3017094)))

(declare-fun b!4828457 () Bool)

(declare-fun e!3017095 () Bool)

(assert (=> b!4828457 (= e!3017094 e!3017095)))

(declare-fun res!2056158 () Bool)

(assert (=> b!4828457 (=> (not res!2056158) (not e!3017095))))

(assert (=> b!4828457 (= res!2056158 (is-Cons!55036 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325))))))))

(declare-fun b!4828458 () Bool)

(assert (=> b!4828458 (= e!3017095 (containsKey!4406 (t!362656 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325))))) key!5594))))

(assert (= (and d!1547315 (not res!2056157)) b!4828457))

(assert (= (and b!4828457 res!2056158) b!4828458))

(declare-fun m!5820060 () Bool)

(assert (=> b!4828458 m!5820060))

(assert (=> b!4828350 d!1547315))

(declare-fun d!1547317 () Bool)

(declare-fun lt!1975037 () Bool)

(declare-fun content!9826 (List!55164) (Set K!16727))

(assert (=> d!1547317 (= lt!1975037 (set.member key!5594 (content!9826 (keys!20262 lt!1974785))))))

(declare-fun e!3017100 () Bool)

(assert (=> d!1547317 (= lt!1975037 e!3017100)))

(declare-fun res!2056163 () Bool)

(assert (=> d!1547317 (=> (not res!2056163) (not e!3017100))))

(assert (=> d!1547317 (= res!2056163 (is-Cons!55040 (keys!20262 lt!1974785)))))

(assert (=> d!1547317 (= (contains!18842 (keys!20262 lt!1974785) key!5594) lt!1975037)))

(declare-fun b!4828463 () Bool)

(declare-fun e!3017101 () Bool)

(assert (=> b!4828463 (= e!3017100 e!3017101)))

(declare-fun res!2056164 () Bool)

(assert (=> b!4828463 (=> res!2056164 e!3017101)))

(assert (=> b!4828463 (= res!2056164 (= (h!61474 (keys!20262 lt!1974785)) key!5594))))

(declare-fun b!4828464 () Bool)

(assert (=> b!4828464 (= e!3017101 (contains!18842 (t!362660 (keys!20262 lt!1974785)) key!5594))))

(assert (= (and d!1547317 res!2056163) b!4828463))

(assert (= (and b!4828463 (not res!2056164)) b!4828464))

(assert (=> d!1547317 m!5819822))

(declare-fun m!5820062 () Bool)

(assert (=> d!1547317 m!5820062))

(declare-fun m!5820064 () Bool)

(assert (=> d!1547317 m!5820064))

(declare-fun m!5820066 () Bool)

(assert (=> b!4828464 m!5820066))

(assert (=> b!4828248 d!1547317))

(declare-fun b!4828472 () Bool)

(assert (=> b!4828472 true))

(declare-fun d!1547319 () Bool)

(declare-fun e!3017104 () Bool)

(assert (=> d!1547319 e!3017104))

(declare-fun res!2056172 () Bool)

(assert (=> d!1547319 (=> (not res!2056172) (not e!3017104))))

(declare-fun lt!1975040 () List!55164)

(declare-fun noDuplicate!967 (List!55164) Bool)

(assert (=> d!1547319 (= res!2056172 (noDuplicate!967 lt!1975040))))

(assert (=> d!1547319 (= lt!1975040 (getKeysList!1165 (toList!7532 lt!1974785)))))

(assert (=> d!1547319 (= (keys!20262 lt!1974785) lt!1975040)))

(declare-fun b!4828471 () Bool)

(declare-fun res!2056171 () Bool)

(assert (=> b!4828471 (=> (not res!2056171) (not e!3017104))))

(declare-fun length!790 (List!55164) Int)

(declare-fun length!791 (List!55160) Int)

(assert (=> b!4828471 (= res!2056171 (= (length!790 lt!1975040) (length!791 (toList!7532 lt!1974785))))))

(declare-fun res!2056173 () Bool)

(assert (=> b!4828472 (=> (not res!2056173) (not e!3017104))))

(declare-fun lambda!237391 () Int)

(declare-fun forall!12653 (List!55164 Int) Bool)

(assert (=> b!4828472 (= res!2056173 (forall!12653 lt!1975040 lambda!237391))))

(declare-fun lambda!237392 () Int)

(declare-fun b!4828473 () Bool)

(declare-fun map!12601 (List!55160 Int) List!55164)

(assert (=> b!4828473 (= e!3017104 (= (content!9826 lt!1975040) (content!9826 (map!12601 (toList!7532 lt!1974785) lambda!237392))))))

(assert (= (and d!1547319 res!2056172) b!4828471))

(assert (= (and b!4828471 res!2056171) b!4828472))

(assert (= (and b!4828472 res!2056173) b!4828473))

(declare-fun m!5820068 () Bool)

(assert (=> d!1547319 m!5820068))

(assert (=> d!1547319 m!5819826))

(declare-fun m!5820070 () Bool)

(assert (=> b!4828471 m!5820070))

(declare-fun m!5820072 () Bool)

(assert (=> b!4828471 m!5820072))

(declare-fun m!5820074 () Bool)

(assert (=> b!4828472 m!5820074))

(declare-fun m!5820076 () Bool)

(assert (=> b!4828473 m!5820076))

(declare-fun m!5820078 () Bool)

(assert (=> b!4828473 m!5820078))

(assert (=> b!4828473 m!5820078))

(declare-fun m!5820080 () Bool)

(assert (=> b!4828473 m!5820080))

(assert (=> b!4828248 d!1547319))

(assert (=> b!4828252 d!1547319))

(declare-fun d!1547321 () Bool)

(declare-fun res!2056174 () Bool)

(declare-fun e!3017105 () Bool)

(assert (=> d!1547321 (=> res!2056174 e!3017105)))

(assert (=> d!1547321 (= res!2056174 (and (is-Cons!55037 (toList!7531 lm!2325)) (= (_1!32450 (h!61471 (toList!7531 lm!2325))) (hash!5446 hashF!1543 key!5594))))))

(assert (=> d!1547321 (= (containsKey!4409 (toList!7531 lm!2325) (hash!5446 hashF!1543 key!5594)) e!3017105)))

(declare-fun b!4828476 () Bool)

(declare-fun e!3017106 () Bool)

(assert (=> b!4828476 (= e!3017105 e!3017106)))

(declare-fun res!2056175 () Bool)

(assert (=> b!4828476 (=> (not res!2056175) (not e!3017106))))

(assert (=> b!4828476 (= res!2056175 (and (or (not (is-Cons!55037 (toList!7531 lm!2325))) (bvsle (_1!32450 (h!61471 (toList!7531 lm!2325))) (hash!5446 hashF!1543 key!5594))) (is-Cons!55037 (toList!7531 lm!2325)) (bvslt (_1!32450 (h!61471 (toList!7531 lm!2325))) (hash!5446 hashF!1543 key!5594))))))

(declare-fun b!4828477 () Bool)

(assert (=> b!4828477 (= e!3017106 (containsKey!4409 (t!362657 (toList!7531 lm!2325)) (hash!5446 hashF!1543 key!5594)))))

(assert (= (and d!1547321 (not res!2056174)) b!4828476))

(assert (= (and b!4828476 res!2056175) b!4828477))

(assert (=> b!4828477 m!5819768))

(declare-fun m!5820082 () Bool)

(assert (=> b!4828477 m!5820082))

(assert (=> d!1547273 d!1547321))

(declare-fun d!1547323 () Bool)

(declare-fun choose!35182 (Hashable!7295 K!16727) (_ BitVec 64))

(assert (=> d!1547323 (= (hash!5448 hashF!1543 key!5594) (choose!35182 hashF!1543 key!5594))))

(declare-fun bs!1164995 () Bool)

(assert (= bs!1164995 d!1547323))

(declare-fun m!5820084 () Bool)

(assert (=> bs!1164995 m!5820084))

(assert (=> d!1547275 d!1547323))

(assert (=> b!4828254 d!1547317))

(assert (=> b!4828254 d!1547319))

(declare-fun bs!1164996 () Bool)

(declare-fun d!1547325 () Bool)

(assert (= bs!1164996 (and d!1547325 b!4828338)))

(declare-fun lambda!237395 () Int)

(assert (=> bs!1164996 (= lambda!237395 lambda!237342)))

(declare-fun bs!1164997 () Bool)

(assert (= bs!1164997 (and d!1547325 b!4828339)))

(assert (=> bs!1164997 (= lambda!237395 lambda!237343)))

(assert (=> bs!1164997 (= (= lt!1974785 lt!1974924) (= lambda!237395 lambda!237344))))

(declare-fun bs!1164998 () Bool)

(assert (= bs!1164998 (and d!1547325 d!1547251)))

(assert (=> bs!1164998 (= (= lt!1974785 lt!1974911) (= lambda!237395 lambda!237345))))

(assert (=> d!1547325 true))

(assert (=> d!1547325 (forall!12651 (toList!7532 lt!1974785) lambda!237395)))

(declare-fun lt!1975043 () Unit!143378)

(declare-fun choose!35183 (ListMap!6903) Unit!143378)

(assert (=> d!1547325 (= lt!1975043 (choose!35183 lt!1974785))))

(assert (=> d!1547325 (= (lemmaContainsAllItsOwnKeys!997 lt!1974785) lt!1975043)))

(declare-fun bs!1164999 () Bool)

(assert (= bs!1164999 d!1547325))

(declare-fun m!5820086 () Bool)

(assert (=> bs!1164999 m!5820086))

(declare-fun m!5820088 () Bool)

(assert (=> bs!1164999 m!5820088))

(assert (=> bm!336500 d!1547325))

(declare-fun d!1547327 () Bool)

(assert (=> d!1547327 (isDefined!10624 (getValueByKey!2636 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) key!5594))))

(declare-fun lt!1975044 () Unit!143378)

(assert (=> d!1547327 (= lt!1975044 (choose!35180 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) key!5594))))

(assert (=> d!1547327 (invariantList!1819 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)))))

(assert (=> d!1547327 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2421 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) key!5594) lt!1975044)))

(declare-fun bs!1165000 () Bool)

(assert (= bs!1165000 d!1547327))

(assert (=> bs!1165000 m!5819840))

(assert (=> bs!1165000 m!5819840))

(assert (=> bs!1165000 m!5819842))

(declare-fun m!5820090 () Bool)

(assert (=> bs!1165000 m!5820090))

(declare-fun m!5820092 () Bool)

(assert (=> bs!1165000 m!5820092))

(assert (=> b!4828264 d!1547327))

(declare-fun d!1547329 () Bool)

(assert (=> d!1547329 (= (isDefined!10624 (getValueByKey!2636 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) key!5594)) (not (isEmpty!29670 (getValueByKey!2636 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) key!5594))))))

(declare-fun bs!1165001 () Bool)

(assert (= bs!1165001 d!1547329))

(assert (=> bs!1165001 m!5819840))

(declare-fun m!5820094 () Bool)

(assert (=> bs!1165001 m!5820094))

(assert (=> b!4828264 d!1547329))

(declare-fun b!4828479 () Bool)

(declare-fun e!3017107 () Option!13509)

(declare-fun e!3017108 () Option!13509)

(assert (=> b!4828479 (= e!3017107 e!3017108)))

(declare-fun c!822713 () Bool)

(assert (=> b!4828479 (= c!822713 (and (is-Cons!55036 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))) (not (= (_1!32449 (h!61470 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)))) key!5594))))))

(declare-fun b!4828481 () Bool)

(assert (=> b!4828481 (= e!3017108 None!13508)))

(declare-fun b!4828480 () Bool)

(assert (=> b!4828480 (= e!3017108 (getValueByKey!2636 (t!362656 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))) key!5594))))

(declare-fun b!4828478 () Bool)

(assert (=> b!4828478 (= e!3017107 (Some!13508 (_2!32449 (h!61470 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))))))))

(declare-fun d!1547331 () Bool)

(declare-fun c!822712 () Bool)

(assert (=> d!1547331 (= c!822712 (and (is-Cons!55036 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))) (= (_1!32449 (h!61470 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)))) key!5594)))))

(assert (=> d!1547331 (= (getValueByKey!2636 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) key!5594) e!3017107)))

(assert (= (and d!1547331 c!822712) b!4828478))

(assert (= (and d!1547331 (not c!822712)) b!4828479))

(assert (= (and b!4828479 c!822713) b!4828480))

(assert (= (and b!4828479 (not c!822713)) b!4828481))

(declare-fun m!5820096 () Bool)

(assert (=> b!4828480 m!5820096))

(assert (=> b!4828264 d!1547331))

(declare-fun d!1547333 () Bool)

(assert (=> d!1547333 (contains!18842 (getKeysList!1165 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))) key!5594)))

(declare-fun lt!1975045 () Unit!143378)

(assert (=> d!1547333 (= lt!1975045 (choose!35181 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) key!5594))))

(assert (=> d!1547333 (invariantList!1819 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)))))

(assert (=> d!1547333 (= (lemmaInListThenGetKeysListContains!1160 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) key!5594) lt!1975045)))

(declare-fun bs!1165002 () Bool)

(assert (= bs!1165002 d!1547333))

(assert (=> bs!1165002 m!5819852))

(assert (=> bs!1165002 m!5819852))

(declare-fun m!5820098 () Bool)

(assert (=> bs!1165002 m!5820098))

(declare-fun m!5820100 () Bool)

(assert (=> bs!1165002 m!5820100))

(assert (=> bs!1165002 m!5820092))

(assert (=> b!4828264 d!1547333))

(declare-fun d!1547335 () Bool)

(declare-fun lt!1975046 () Bool)

(assert (=> d!1547335 (= lt!1975046 (set.member key!5594 (content!9826 e!3016949)))))

(declare-fun e!3017109 () Bool)

(assert (=> d!1547335 (= lt!1975046 e!3017109)))

(declare-fun res!2056176 () Bool)

(assert (=> d!1547335 (=> (not res!2056176) (not e!3017109))))

(assert (=> d!1547335 (= res!2056176 (is-Cons!55040 e!3016949))))

(assert (=> d!1547335 (= (contains!18842 e!3016949 key!5594) lt!1975046)))

(declare-fun b!4828482 () Bool)

(declare-fun e!3017110 () Bool)

(assert (=> b!4828482 (= e!3017109 e!3017110)))

(declare-fun res!2056177 () Bool)

(assert (=> b!4828482 (=> res!2056177 e!3017110)))

(assert (=> b!4828482 (= res!2056177 (= (h!61474 e!3016949) key!5594))))

(declare-fun b!4828483 () Bool)

(assert (=> b!4828483 (= e!3017110 (contains!18842 (t!362660 e!3016949) key!5594))))

(assert (= (and d!1547335 res!2056176) b!4828482))

(assert (= (and b!4828482 (not res!2056177)) b!4828483))

(declare-fun m!5820102 () Bool)

(assert (=> d!1547335 m!5820102))

(declare-fun m!5820104 () Bool)

(assert (=> d!1547335 m!5820104))

(declare-fun m!5820106 () Bool)

(assert (=> b!4828483 m!5820106))

(assert (=> bm!336488 d!1547335))

(declare-fun d!1547337 () Bool)

(declare-fun lt!1975047 () Bool)

(assert (=> d!1547337 (= lt!1975047 (set.member key!5594 (content!9826 (keys!20262 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)))))))

(declare-fun e!3017111 () Bool)

(assert (=> d!1547337 (= lt!1975047 e!3017111)))

(declare-fun res!2056178 () Bool)

(assert (=> d!1547337 (=> (not res!2056178) (not e!3017111))))

(assert (=> d!1547337 (= res!2056178 (is-Cons!55040 (keys!20262 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))))))

(assert (=> d!1547337 (= (contains!18842 (keys!20262 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) key!5594) lt!1975047)))

(declare-fun b!4828484 () Bool)

(declare-fun e!3017112 () Bool)

(assert (=> b!4828484 (= e!3017111 e!3017112)))

(declare-fun res!2056179 () Bool)

(assert (=> b!4828484 (=> res!2056179 e!3017112)))

(assert (=> b!4828484 (= res!2056179 (= (h!61474 (keys!20262 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))) key!5594))))

(declare-fun b!4828485 () Bool)

(assert (=> b!4828485 (= e!3017112 (contains!18842 (t!362660 (keys!20262 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))) key!5594))))

(assert (= (and d!1547337 res!2056178) b!4828484))

(assert (= (and b!4828484 (not res!2056179)) b!4828485))

(assert (=> d!1547337 m!5819848))

(declare-fun m!5820108 () Bool)

(assert (=> d!1547337 m!5820108))

(declare-fun m!5820110 () Bool)

(assert (=> d!1547337 m!5820110))

(declare-fun m!5820112 () Bool)

(assert (=> b!4828485 m!5820112))

(assert (=> b!4828263 d!1547337))

(declare-fun bs!1165003 () Bool)

(declare-fun b!4828487 () Bool)

(assert (= bs!1165003 (and b!4828487 b!4828472)))

(declare-fun lambda!237396 () Int)

(assert (=> bs!1165003 (= (= (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) (toList!7532 lt!1974785)) (= lambda!237396 lambda!237391))))

(assert (=> b!4828487 true))

(declare-fun bs!1165004 () Bool)

(declare-fun b!4828488 () Bool)

(assert (= bs!1165004 (and b!4828488 b!4828473)))

(declare-fun lambda!237397 () Int)

(assert (=> bs!1165004 (= lambda!237397 lambda!237392)))

(declare-fun d!1547339 () Bool)

(declare-fun e!3017113 () Bool)

(assert (=> d!1547339 e!3017113))

(declare-fun res!2056181 () Bool)

(assert (=> d!1547339 (=> (not res!2056181) (not e!3017113))))

(declare-fun lt!1975048 () List!55164)

(assert (=> d!1547339 (= res!2056181 (noDuplicate!967 lt!1975048))))

(assert (=> d!1547339 (= lt!1975048 (getKeysList!1165 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))))))

(assert (=> d!1547339 (= (keys!20262 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) lt!1975048)))

(declare-fun b!4828486 () Bool)

(declare-fun res!2056180 () Bool)

(assert (=> b!4828486 (=> (not res!2056180) (not e!3017113))))

(assert (=> b!4828486 (= res!2056180 (= (length!790 lt!1975048) (length!791 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)))))))

(declare-fun res!2056182 () Bool)

(assert (=> b!4828487 (=> (not res!2056182) (not e!3017113))))

(assert (=> b!4828487 (= res!2056182 (forall!12653 lt!1975048 lambda!237396))))

(assert (=> b!4828488 (= e!3017113 (= (content!9826 lt!1975048) (content!9826 (map!12601 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) lambda!237397))))))

(assert (= (and d!1547339 res!2056181) b!4828486))

(assert (= (and b!4828486 res!2056180) b!4828487))

(assert (= (and b!4828487 res!2056182) b!4828488))

(declare-fun m!5820114 () Bool)

(assert (=> d!1547339 m!5820114))

(assert (=> d!1547339 m!5819852))

(declare-fun m!5820116 () Bool)

(assert (=> b!4828486 m!5820116))

(declare-fun m!5820118 () Bool)

(assert (=> b!4828486 m!5820118))

(declare-fun m!5820120 () Bool)

(assert (=> b!4828487 m!5820120))

(declare-fun m!5820122 () Bool)

(assert (=> b!4828488 m!5820122))

(declare-fun m!5820124 () Bool)

(assert (=> b!4828488 m!5820124))

(assert (=> b!4828488 m!5820124))

(declare-fun m!5820126 () Bool)

(assert (=> b!4828488 m!5820126))

(assert (=> b!4828263 d!1547339))

(declare-fun bs!1165005 () Bool)

(declare-fun b!4828492 () Bool)

(assert (= bs!1165005 (and b!4828492 b!4828338)))

(declare-fun lambda!237398 () Int)

(assert (=> bs!1165005 (= (= (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325)))) lt!1974785) (= lambda!237398 lambda!237342))))

(declare-fun bs!1165006 () Bool)

(assert (= bs!1165006 (and b!4828492 b!4828339)))

(assert (=> bs!1165006 (= (= (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325)))) lt!1974785) (= lambda!237398 lambda!237343))))

(declare-fun bs!1165007 () Bool)

(assert (= bs!1165007 (and b!4828492 d!1547325)))

(assert (=> bs!1165007 (= (= (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325)))) lt!1974785) (= lambda!237398 lambda!237395))))

(declare-fun bs!1165008 () Bool)

(assert (= bs!1165008 (and b!4828492 d!1547251)))

(assert (=> bs!1165008 (= (= (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325)))) lt!1974911) (= lambda!237398 lambda!237345))))

(assert (=> bs!1165006 (= (= (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325)))) lt!1974924) (= lambda!237398 lambda!237344))))

(assert (=> b!4828492 true))

(declare-fun bs!1165009 () Bool)

(declare-fun b!4828493 () Bool)

(assert (= bs!1165009 (and b!4828493 b!4828492)))

(declare-fun lambda!237399 () Int)

(assert (=> bs!1165009 (= lambda!237399 lambda!237398)))

(declare-fun bs!1165010 () Bool)

(assert (= bs!1165010 (and b!4828493 b!4828338)))

(assert (=> bs!1165010 (= (= (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325)))) lt!1974785) (= lambda!237399 lambda!237342))))

(declare-fun bs!1165011 () Bool)

(assert (= bs!1165011 (and b!4828493 b!4828339)))

(assert (=> bs!1165011 (= (= (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325)))) lt!1974785) (= lambda!237399 lambda!237343))))

(declare-fun bs!1165012 () Bool)

(assert (= bs!1165012 (and b!4828493 d!1547325)))

(assert (=> bs!1165012 (= (= (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325)))) lt!1974785) (= lambda!237399 lambda!237395))))

(declare-fun bs!1165013 () Bool)

(assert (= bs!1165013 (and b!4828493 d!1547251)))

(assert (=> bs!1165013 (= (= (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325)))) lt!1974911) (= lambda!237399 lambda!237345))))

(assert (=> bs!1165011 (= (= (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325)))) lt!1974924) (= lambda!237399 lambda!237344))))

(assert (=> b!4828493 true))

(declare-fun lambda!237400 () Int)

(declare-fun lt!1975063 () ListMap!6903)

(assert (=> bs!1165010 (= (= lt!1975063 lt!1974785) (= lambda!237400 lambda!237342))))

(assert (=> bs!1165011 (= (= lt!1975063 lt!1974785) (= lambda!237400 lambda!237343))))

(assert (=> bs!1165012 (= (= lt!1975063 lt!1974785) (= lambda!237400 lambda!237395))))

(assert (=> bs!1165013 (= (= lt!1975063 lt!1974911) (= lambda!237400 lambda!237345))))

(assert (=> bs!1165011 (= (= lt!1975063 lt!1974924) (= lambda!237400 lambda!237344))))

(assert (=> bs!1165009 (= (= lt!1975063 (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325))))) (= lambda!237400 lambda!237398))))

(assert (=> b!4828493 (= (= lt!1975063 (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325))))) (= lambda!237400 lambda!237399))))

(assert (=> b!4828493 true))

(declare-fun bs!1165014 () Bool)

(declare-fun d!1547341 () Bool)

(assert (= bs!1165014 (and d!1547341 b!4828493)))

(declare-fun lambda!237401 () Int)

(declare-fun lt!1975050 () ListMap!6903)

(assert (=> bs!1165014 (= (= lt!1975050 lt!1975063) (= lambda!237401 lambda!237400))))

(declare-fun bs!1165015 () Bool)

(assert (= bs!1165015 (and d!1547341 b!4828338)))

(assert (=> bs!1165015 (= (= lt!1975050 lt!1974785) (= lambda!237401 lambda!237342))))

(declare-fun bs!1165016 () Bool)

(assert (= bs!1165016 (and d!1547341 b!4828339)))

(assert (=> bs!1165016 (= (= lt!1975050 lt!1974785) (= lambda!237401 lambda!237343))))

(declare-fun bs!1165017 () Bool)

(assert (= bs!1165017 (and d!1547341 d!1547325)))

(assert (=> bs!1165017 (= (= lt!1975050 lt!1974785) (= lambda!237401 lambda!237395))))

(declare-fun bs!1165018 () Bool)

(assert (= bs!1165018 (and d!1547341 d!1547251)))

(assert (=> bs!1165018 (= (= lt!1975050 lt!1974911) (= lambda!237401 lambda!237345))))

(assert (=> bs!1165016 (= (= lt!1975050 lt!1974924) (= lambda!237401 lambda!237344))))

(declare-fun bs!1165019 () Bool)

(assert (= bs!1165019 (and d!1547341 b!4828492)))

(assert (=> bs!1165019 (= (= lt!1975050 (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325))))) (= lambda!237401 lambda!237398))))

(assert (=> bs!1165014 (= (= lt!1975050 (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325))))) (= lambda!237401 lambda!237399))))

(assert (=> d!1547341 true))

(declare-fun b!4828489 () Bool)

(declare-fun e!3017115 () Bool)

(assert (=> b!4828489 (= e!3017115 (invariantList!1819 (toList!7532 lt!1975050)))))

(declare-fun b!4828490 () Bool)

(declare-fun e!3017114 () Bool)

(declare-fun call!336519 () Bool)

(assert (=> b!4828490 (= e!3017114 call!336519)))

(declare-fun bm!336512 () Bool)

(declare-fun call!336517 () Unit!143378)

(assert (=> bm!336512 (= call!336517 (lemmaContainsAllItsOwnKeys!997 (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325))))))))

(declare-fun c!822714 () Bool)

(declare-fun bm!336514 () Bool)

(declare-fun call!336518 () Bool)

(assert (=> bm!336514 (= call!336518 (forall!12651 (toList!7532 (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325))))) (ite c!822714 lambda!237398 lambda!237399)))))

(declare-fun b!4828491 () Bool)

(declare-fun res!2056183 () Bool)

(assert (=> b!4828491 (=> (not res!2056183) (not e!3017115))))

(assert (=> b!4828491 (= res!2056183 (forall!12651 (toList!7532 (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325))))) lambda!237401))))

(declare-fun e!3017116 () ListMap!6903)

(assert (=> b!4828492 (= e!3017116 (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325)))))))

(declare-fun lt!1975056 () Unit!143378)

(assert (=> b!4828492 (= lt!1975056 call!336517)))

(assert (=> b!4828492 call!336519))

(declare-fun lt!1975049 () Unit!143378)

(assert (=> b!4828492 (= lt!1975049 lt!1975056)))

(assert (=> b!4828492 call!336518))

(declare-fun lt!1975053 () Unit!143378)

(declare-fun Unit!143416 () Unit!143378)

(assert (=> b!4828492 (= lt!1975053 Unit!143416)))

(assert (=> b!4828493 (= e!3017116 lt!1975063)))

(declare-fun lt!1975065 () ListMap!6903)

(assert (=> b!4828493 (= lt!1975065 (+!2542 (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325)))) (h!61470 (_2!32450 (h!61471 (t!362657 (toList!7531 lm!2325)))))))))

(assert (=> b!4828493 (= lt!1975063 (addToMapMapFromBucket!1818 (t!362656 (_2!32450 (h!61471 (t!362657 (toList!7531 lm!2325))))) (+!2542 (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325)))) (h!61470 (_2!32450 (h!61471 (t!362657 (toList!7531 lm!2325))))))))))

(declare-fun lt!1975054 () Unit!143378)

(assert (=> b!4828493 (= lt!1975054 call!336517)))

(assert (=> b!4828493 call!336518))

(declare-fun lt!1975058 () Unit!143378)

(assert (=> b!4828493 (= lt!1975058 lt!1975054)))

(assert (=> b!4828493 (forall!12651 (toList!7532 lt!1975065) lambda!237400)))

(declare-fun lt!1975055 () Unit!143378)

(declare-fun Unit!143417 () Unit!143378)

(assert (=> b!4828493 (= lt!1975055 Unit!143417)))

(assert (=> b!4828493 (forall!12651 (t!362656 (_2!32450 (h!61471 (t!362657 (toList!7531 lm!2325))))) lambda!237400)))

(declare-fun lt!1975062 () Unit!143378)

(declare-fun Unit!143418 () Unit!143378)

(assert (=> b!4828493 (= lt!1975062 Unit!143418)))

(declare-fun lt!1975069 () Unit!143378)

(declare-fun Unit!143419 () Unit!143378)

(assert (=> b!4828493 (= lt!1975069 Unit!143419)))

(declare-fun lt!1975064 () Unit!143378)

(assert (=> b!4828493 (= lt!1975064 (forallContained!4396 (toList!7532 lt!1975065) lambda!237400 (h!61470 (_2!32450 (h!61471 (t!362657 (toList!7531 lm!2325)))))))))

(assert (=> b!4828493 (contains!18838 lt!1975065 (_1!32449 (h!61470 (_2!32450 (h!61471 (t!362657 (toList!7531 lm!2325)))))))))

(declare-fun lt!1975057 () Unit!143378)

(declare-fun Unit!143420 () Unit!143378)

(assert (=> b!4828493 (= lt!1975057 Unit!143420)))

(assert (=> b!4828493 (contains!18838 lt!1975063 (_1!32449 (h!61470 (_2!32450 (h!61471 (t!362657 (toList!7531 lm!2325)))))))))

(declare-fun lt!1975067 () Unit!143378)

(declare-fun Unit!143421 () Unit!143378)

(assert (=> b!4828493 (= lt!1975067 Unit!143421)))

(assert (=> b!4828493 (forall!12651 (_2!32450 (h!61471 (t!362657 (toList!7531 lm!2325)))) lambda!237400)))

(declare-fun lt!1975068 () Unit!143378)

(declare-fun Unit!143422 () Unit!143378)

(assert (=> b!4828493 (= lt!1975068 Unit!143422)))

(assert (=> b!4828493 (forall!12651 (toList!7532 lt!1975065) lambda!237400)))

(declare-fun lt!1975052 () Unit!143378)

(declare-fun Unit!143423 () Unit!143378)

(assert (=> b!4828493 (= lt!1975052 Unit!143423)))

(declare-fun lt!1975061 () Unit!143378)

(declare-fun Unit!143424 () Unit!143378)

(assert (=> b!4828493 (= lt!1975061 Unit!143424)))

(declare-fun lt!1975059 () Unit!143378)

(assert (=> b!4828493 (= lt!1975059 (addForallContainsKeyThenBeforeAdding!996 (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325)))) lt!1975063 (_1!32449 (h!61470 (_2!32450 (h!61471 (t!362657 (toList!7531 lm!2325)))))) (_2!32449 (h!61470 (_2!32450 (h!61471 (t!362657 (toList!7531 lm!2325))))))))))

(assert (=> b!4828493 (forall!12651 (toList!7532 (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325))))) lambda!237400)))

(declare-fun lt!1975060 () Unit!143378)

(assert (=> b!4828493 (= lt!1975060 lt!1975059)))

(assert (=> b!4828493 (forall!12651 (toList!7532 (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325))))) lambda!237400)))

(declare-fun lt!1975051 () Unit!143378)

(declare-fun Unit!143425 () Unit!143378)

(assert (=> b!4828493 (= lt!1975051 Unit!143425)))

(declare-fun res!2056185 () Bool)

(assert (=> b!4828493 (= res!2056185 (forall!12651 (_2!32450 (h!61471 (t!362657 (toList!7531 lm!2325)))) lambda!237400))))

(assert (=> b!4828493 (=> (not res!2056185) (not e!3017114))))

(assert (=> b!4828493 e!3017114))

(declare-fun lt!1975066 () Unit!143378)

(declare-fun Unit!143426 () Unit!143378)

(assert (=> b!4828493 (= lt!1975066 Unit!143426)))

(assert (=> d!1547341 e!3017115))

(declare-fun res!2056184 () Bool)

(assert (=> d!1547341 (=> (not res!2056184) (not e!3017115))))

(assert (=> d!1547341 (= res!2056184 (forall!12651 (_2!32450 (h!61471 (t!362657 (toList!7531 lm!2325)))) lambda!237401))))

(assert (=> d!1547341 (= lt!1975050 e!3017116)))

(assert (=> d!1547341 (= c!822714 (is-Nil!55036 (_2!32450 (h!61471 (t!362657 (toList!7531 lm!2325))))))))

(assert (=> d!1547341 (noDuplicateKeys!2463 (_2!32450 (h!61471 (t!362657 (toList!7531 lm!2325)))))))

(assert (=> d!1547341 (= (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (t!362657 (toList!7531 lm!2325)))) (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325))))) lt!1975050)))

(declare-fun bm!336513 () Bool)

(assert (=> bm!336513 (= call!336519 (forall!12651 (toList!7532 (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325))))) (ite c!822714 lambda!237398 lambda!237400)))))

(assert (= (and d!1547341 c!822714) b!4828492))

(assert (= (and d!1547341 (not c!822714)) b!4828493))

(assert (= (and b!4828493 res!2056185) b!4828490))

(assert (= (or b!4828492 b!4828493) bm!336512))

(assert (= (or b!4828492 b!4828490) bm!336513))

(assert (= (or b!4828492 b!4828493) bm!336514))

(assert (= (and d!1547341 res!2056184) b!4828491))

(assert (= (and b!4828491 res!2056183) b!4828489))

(assert (=> b!4828493 m!5819948))

(declare-fun m!5820128 () Bool)

(assert (=> b!4828493 m!5820128))

(declare-fun m!5820130 () Bool)

(assert (=> b!4828493 m!5820130))

(declare-fun m!5820132 () Bool)

(assert (=> b!4828493 m!5820132))

(declare-fun m!5820134 () Bool)

(assert (=> b!4828493 m!5820134))

(declare-fun m!5820136 () Bool)

(assert (=> b!4828493 m!5820136))

(assert (=> b!4828493 m!5819948))

(declare-fun m!5820138 () Bool)

(assert (=> b!4828493 m!5820138))

(declare-fun m!5820140 () Bool)

(assert (=> b!4828493 m!5820140))

(assert (=> b!4828493 m!5820138))

(declare-fun m!5820142 () Bool)

(assert (=> b!4828493 m!5820142))

(assert (=> b!4828493 m!5820134))

(assert (=> b!4828493 m!5820132))

(assert (=> b!4828493 m!5820130))

(declare-fun m!5820144 () Bool)

(assert (=> b!4828493 m!5820144))

(declare-fun m!5820146 () Bool)

(assert (=> b!4828493 m!5820146))

(declare-fun m!5820148 () Bool)

(assert (=> bm!336513 m!5820148))

(declare-fun m!5820150 () Bool)

(assert (=> bm!336514 m!5820150))

(declare-fun m!5820152 () Bool)

(assert (=> d!1547341 m!5820152))

(declare-fun m!5820154 () Bool)

(assert (=> d!1547341 m!5820154))

(declare-fun m!5820156 () Bool)

(assert (=> b!4828489 m!5820156))

(assert (=> bm!336512 m!5819948))

(declare-fun m!5820158 () Bool)

(assert (=> bm!336512 m!5820158))

(declare-fun m!5820160 () Bool)

(assert (=> b!4828491 m!5820160))

(assert (=> b!4828355 d!1547341))

(declare-fun bs!1165020 () Bool)

(declare-fun d!1547343 () Bool)

(assert (= bs!1165020 (and d!1547343 start!501234)))

(declare-fun lambda!237402 () Int)

(assert (=> bs!1165020 (= lambda!237402 lambda!237305)))

(declare-fun bs!1165021 () Bool)

(assert (= bs!1165021 (and d!1547343 d!1547267)))

(assert (=> bs!1165021 (= lambda!237402 lambda!237348)))

(declare-fun bs!1165022 () Bool)

(assert (= bs!1165022 (and d!1547343 d!1547271)))

(assert (=> bs!1165022 (not (= lambda!237402 lambda!237351))))

(declare-fun lt!1975070 () ListMap!6903)

(assert (=> d!1547343 (invariantList!1819 (toList!7532 lt!1975070))))

(declare-fun e!3017117 () ListMap!6903)

(assert (=> d!1547343 (= lt!1975070 e!3017117)))

(declare-fun c!822715 () Bool)

(assert (=> d!1547343 (= c!822715 (is-Cons!55037 (t!362657 (t!362657 (toList!7531 lm!2325)))))))

(assert (=> d!1547343 (forall!12649 (t!362657 (t!362657 (toList!7531 lm!2325))) lambda!237402)))

(assert (=> d!1547343 (= (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325)))) lt!1975070)))

(declare-fun b!4828494 () Bool)

(assert (=> b!4828494 (= e!3017117 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (t!362657 (t!362657 (toList!7531 lm!2325))))) (extractMap!2703 (t!362657 (t!362657 (t!362657 (toList!7531 lm!2325)))))))))

(declare-fun b!4828495 () Bool)

(assert (=> b!4828495 (= e!3017117 (ListMap!6904 Nil!55036))))

(assert (= (and d!1547343 c!822715) b!4828494))

(assert (= (and d!1547343 (not c!822715)) b!4828495))

(declare-fun m!5820162 () Bool)

(assert (=> d!1547343 m!5820162))

(declare-fun m!5820164 () Bool)

(assert (=> d!1547343 m!5820164))

(declare-fun m!5820166 () Bool)

(assert (=> b!4828494 m!5820166))

(assert (=> b!4828494 m!5820166))

(declare-fun m!5820168 () Bool)

(assert (=> b!4828494 m!5820168))

(assert (=> b!4828355 d!1547343))

(declare-fun d!1547345 () Bool)

(declare-fun res!2056186 () Bool)

(declare-fun e!3017118 () Bool)

(assert (=> d!1547345 (=> res!2056186 e!3017118)))

(assert (=> d!1547345 (= res!2056186 (and (is-Cons!55036 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))) (= (_1!32449 (h!61470 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)))) key!5594)))))

(assert (=> d!1547345 (= (containsKey!4408 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) key!5594) e!3017118)))

(declare-fun b!4828496 () Bool)

(declare-fun e!3017119 () Bool)

(assert (=> b!4828496 (= e!3017118 e!3017119)))

(declare-fun res!2056187 () Bool)

(assert (=> b!4828496 (=> (not res!2056187) (not e!3017119))))

(assert (=> b!4828496 (= res!2056187 (is-Cons!55036 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))))))

(declare-fun b!4828497 () Bool)

(assert (=> b!4828497 (= e!3017119 (containsKey!4408 (t!362656 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))) key!5594))))

(assert (= (and d!1547345 (not res!2056186)) b!4828496))

(assert (= (and b!4828496 res!2056187) b!4828497))

(declare-fun m!5820170 () Bool)

(assert (=> b!4828497 m!5820170))

(assert (=> d!1547249 d!1547345))

(declare-fun bs!1165023 () Bool)

(declare-fun b!4828520 () Bool)

(assert (= bs!1165023 (and b!4828520 b!4828472)))

(declare-fun lambda!237411 () Int)

(assert (=> bs!1165023 (= (= (t!362656 (toList!7532 lt!1974785)) (toList!7532 lt!1974785)) (= lambda!237411 lambda!237391))))

(declare-fun bs!1165024 () Bool)

(assert (= bs!1165024 (and b!4828520 b!4828487)))

(assert (=> bs!1165024 (= (= (t!362656 (toList!7532 lt!1974785)) (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))) (= lambda!237411 lambda!237396))))

(assert (=> b!4828520 true))

(declare-fun bs!1165025 () Bool)

(declare-fun b!4828519 () Bool)

(assert (= bs!1165025 (and b!4828519 b!4828472)))

(declare-fun lambda!237412 () Int)

(assert (=> bs!1165025 (= (= (Cons!55036 (h!61470 (toList!7532 lt!1974785)) (t!362656 (toList!7532 lt!1974785))) (toList!7532 lt!1974785)) (= lambda!237412 lambda!237391))))

(declare-fun bs!1165026 () Bool)

(assert (= bs!1165026 (and b!4828519 b!4828487)))

(assert (=> bs!1165026 (= (= (Cons!55036 (h!61470 (toList!7532 lt!1974785)) (t!362656 (toList!7532 lt!1974785))) (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))) (= lambda!237412 lambda!237396))))

(declare-fun bs!1165027 () Bool)

(assert (= bs!1165027 (and b!4828519 b!4828520)))

(assert (=> bs!1165027 (= (= (Cons!55036 (h!61470 (toList!7532 lt!1974785)) (t!362656 (toList!7532 lt!1974785))) (t!362656 (toList!7532 lt!1974785))) (= lambda!237412 lambda!237411))))

(assert (=> b!4828519 true))

(declare-fun bs!1165028 () Bool)

(declare-fun b!4828522 () Bool)

(assert (= bs!1165028 (and b!4828522 b!4828472)))

(declare-fun lambda!237413 () Int)

(assert (=> bs!1165028 (= lambda!237413 lambda!237391)))

(declare-fun bs!1165029 () Bool)

(assert (= bs!1165029 (and b!4828522 b!4828487)))

(assert (=> bs!1165029 (= (= (toList!7532 lt!1974785) (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))) (= lambda!237413 lambda!237396))))

(declare-fun bs!1165030 () Bool)

(assert (= bs!1165030 (and b!4828522 b!4828520)))

(assert (=> bs!1165030 (= (= (toList!7532 lt!1974785) (t!362656 (toList!7532 lt!1974785))) (= lambda!237413 lambda!237411))))

(declare-fun bs!1165031 () Bool)

(assert (= bs!1165031 (and b!4828522 b!4828519)))

(assert (=> bs!1165031 (= (= (toList!7532 lt!1974785) (Cons!55036 (h!61470 (toList!7532 lt!1974785)) (t!362656 (toList!7532 lt!1974785)))) (= lambda!237413 lambda!237412))))

(assert (=> b!4828522 true))

(declare-fun bs!1165032 () Bool)

(declare-fun b!4828523 () Bool)

(assert (= bs!1165032 (and b!4828523 b!4828473)))

(declare-fun lambda!237414 () Int)

(assert (=> bs!1165032 (= lambda!237414 lambda!237392)))

(declare-fun bs!1165033 () Bool)

(assert (= bs!1165033 (and b!4828523 b!4828488)))

(assert (=> bs!1165033 (= lambda!237414 lambda!237397)))

(declare-fun d!1547347 () Bool)

(declare-fun e!3017128 () Bool)

(assert (=> d!1547347 e!3017128))

(declare-fun res!2056196 () Bool)

(assert (=> d!1547347 (=> (not res!2056196) (not e!3017128))))

(declare-fun lt!1975086 () List!55164)

(assert (=> d!1547347 (= res!2056196 (noDuplicate!967 lt!1975086))))

(declare-fun e!3017131 () List!55164)

(assert (=> d!1547347 (= lt!1975086 e!3017131)))

(declare-fun c!822722 () Bool)

(assert (=> d!1547347 (= c!822722 (is-Cons!55036 (toList!7532 lt!1974785)))))

(assert (=> d!1547347 (invariantList!1819 (toList!7532 lt!1974785))))

(assert (=> d!1547347 (= (getKeysList!1165 (toList!7532 lt!1974785)) lt!1975086)))

(declare-fun b!4828516 () Bool)

(declare-fun e!3017130 () Unit!143378)

(declare-fun Unit!143427 () Unit!143378)

(assert (=> b!4828516 (= e!3017130 Unit!143427)))

(declare-fun b!4828517 () Bool)

(assert (=> b!4828517 (= e!3017131 Nil!55040)))

(declare-fun b!4828518 () Bool)

(assert (=> b!4828518 false))

(declare-fun Unit!143428 () Unit!143378)

(assert (=> b!4828518 (= e!3017130 Unit!143428)))

(assert (=> b!4828519 (= e!3017131 (Cons!55040 (_1!32449 (h!61470 (toList!7532 lt!1974785))) (getKeysList!1165 (t!362656 (toList!7532 lt!1974785)))))))

(declare-fun c!822724 () Bool)

(assert (=> b!4828519 (= c!822724 (containsKey!4408 (t!362656 (toList!7532 lt!1974785)) (_1!32449 (h!61470 (toList!7532 lt!1974785)))))))

(declare-fun lt!1975088 () Unit!143378)

(assert (=> b!4828519 (= lt!1975088 e!3017130)))

(declare-fun c!822723 () Bool)

(assert (=> b!4828519 (= c!822723 (contains!18842 (getKeysList!1165 (t!362656 (toList!7532 lt!1974785))) (_1!32449 (h!61470 (toList!7532 lt!1974785)))))))

(declare-fun lt!1975090 () Unit!143378)

(declare-fun e!3017129 () Unit!143378)

(assert (=> b!4828519 (= lt!1975090 e!3017129)))

(declare-fun lt!1975087 () List!55164)

(assert (=> b!4828519 (= lt!1975087 (getKeysList!1165 (t!362656 (toList!7532 lt!1974785))))))

(declare-fun lt!1975091 () Unit!143378)

(declare-fun lemmaForallContainsAddHeadPreserves!381 (List!55160 List!55164 tuple2!58310) Unit!143378)

(assert (=> b!4828519 (= lt!1975091 (lemmaForallContainsAddHeadPreserves!381 (t!362656 (toList!7532 lt!1974785)) lt!1975087 (h!61470 (toList!7532 lt!1974785))))))

(assert (=> b!4828519 (forall!12653 lt!1975087 lambda!237412)))

(declare-fun lt!1975089 () Unit!143378)

(assert (=> b!4828519 (= lt!1975089 lt!1975091)))

(assert (=> b!4828520 false))

(declare-fun lt!1975085 () Unit!143378)

(declare-fun forallContained!4398 (List!55164 Int K!16727) Unit!143378)

(assert (=> b!4828520 (= lt!1975085 (forallContained!4398 (getKeysList!1165 (t!362656 (toList!7532 lt!1974785))) lambda!237411 (_1!32449 (h!61470 (toList!7532 lt!1974785)))))))

(declare-fun Unit!143429 () Unit!143378)

(assert (=> b!4828520 (= e!3017129 Unit!143429)))

(declare-fun b!4828521 () Bool)

(declare-fun Unit!143430 () Unit!143378)

(assert (=> b!4828521 (= e!3017129 Unit!143430)))

(declare-fun res!2056195 () Bool)

(assert (=> b!4828522 (=> (not res!2056195) (not e!3017128))))

(assert (=> b!4828522 (= res!2056195 (forall!12653 lt!1975086 lambda!237413))))

(assert (=> b!4828523 (= e!3017128 (= (content!9826 lt!1975086) (content!9826 (map!12601 (toList!7532 lt!1974785) lambda!237414))))))

(declare-fun b!4828524 () Bool)

(declare-fun res!2056194 () Bool)

(assert (=> b!4828524 (=> (not res!2056194) (not e!3017128))))

(assert (=> b!4828524 (= res!2056194 (= (length!790 lt!1975086) (length!791 (toList!7532 lt!1974785))))))

(assert (= (and d!1547347 c!822722) b!4828519))

(assert (= (and d!1547347 (not c!822722)) b!4828517))

(assert (= (and b!4828519 c!822724) b!4828518))

(assert (= (and b!4828519 (not c!822724)) b!4828516))

(assert (= (and b!4828519 c!822723) b!4828520))

(assert (= (and b!4828519 (not c!822723)) b!4828521))

(assert (= (and d!1547347 res!2056196) b!4828524))

(assert (= (and b!4828524 res!2056194) b!4828522))

(assert (= (and b!4828522 res!2056195) b!4828523))

(declare-fun m!5820172 () Bool)

(assert (=> b!4828524 m!5820172))

(assert (=> b!4828524 m!5820072))

(declare-fun m!5820174 () Bool)

(assert (=> b!4828523 m!5820174))

(declare-fun m!5820176 () Bool)

(assert (=> b!4828523 m!5820176))

(assert (=> b!4828523 m!5820176))

(declare-fun m!5820178 () Bool)

(assert (=> b!4828523 m!5820178))

(declare-fun m!5820180 () Bool)

(assert (=> b!4828522 m!5820180))

(declare-fun m!5820182 () Bool)

(assert (=> b!4828520 m!5820182))

(assert (=> b!4828520 m!5820182))

(declare-fun m!5820184 () Bool)

(assert (=> b!4828520 m!5820184))

(assert (=> b!4828519 m!5820182))

(declare-fun m!5820186 () Bool)

(assert (=> b!4828519 m!5820186))

(declare-fun m!5820188 () Bool)

(assert (=> b!4828519 m!5820188))

(declare-fun m!5820190 () Bool)

(assert (=> b!4828519 m!5820190))

(assert (=> b!4828519 m!5820182))

(declare-fun m!5820192 () Bool)

(assert (=> b!4828519 m!5820192))

(declare-fun m!5820194 () Bool)

(assert (=> d!1547347 m!5820194))

(assert (=> d!1547347 m!5820040))

(assert (=> b!4828253 d!1547347))

(declare-fun d!1547349 () Bool)

(declare-fun noDuplicatedKeys!485 (List!55160) Bool)

(assert (=> d!1547349 (= (invariantList!1819 (toList!7532 lt!1974911)) (noDuplicatedKeys!485 (toList!7532 lt!1974911)))))

(declare-fun bs!1165034 () Bool)

(assert (= bs!1165034 d!1547349))

(declare-fun m!5820196 () Bool)

(assert (=> bs!1165034 m!5820196))

(assert (=> b!4828335 d!1547349))

(declare-fun d!1547351 () Bool)

(assert (=> d!1547351 (= (invariantList!1819 (toList!7532 lt!1974936)) (noDuplicatedKeys!485 (toList!7532 lt!1974936)))))

(declare-fun bs!1165035 () Bool)

(assert (= bs!1165035 d!1547351))

(declare-fun m!5820198 () Bool)

(assert (=> bs!1165035 m!5820198))

(assert (=> d!1547267 d!1547351))

(declare-fun d!1547353 () Bool)

(declare-fun res!2056197 () Bool)

(declare-fun e!3017132 () Bool)

(assert (=> d!1547353 (=> res!2056197 e!3017132)))

(assert (=> d!1547353 (= res!2056197 (is-Nil!55037 (t!362657 (toList!7531 lm!2325))))))

(assert (=> d!1547353 (= (forall!12649 (t!362657 (toList!7531 lm!2325)) lambda!237348) e!3017132)))

(declare-fun b!4828527 () Bool)

(declare-fun e!3017133 () Bool)

(assert (=> b!4828527 (= e!3017132 e!3017133)))

(declare-fun res!2056198 () Bool)

(assert (=> b!4828527 (=> (not res!2056198) (not e!3017133))))

(assert (=> b!4828527 (= res!2056198 (dynLambda!22230 lambda!237348 (h!61471 (t!362657 (toList!7531 lm!2325)))))))

(declare-fun b!4828528 () Bool)

(assert (=> b!4828528 (= e!3017133 (forall!12649 (t!362657 (t!362657 (toList!7531 lm!2325))) lambda!237348))))

(assert (= (and d!1547353 (not res!2056197)) b!4828527))

(assert (= (and b!4828527 res!2056198) b!4828528))

(declare-fun b_lambda!190185 () Bool)

(assert (=> (not b_lambda!190185) (not b!4828527)))

(declare-fun m!5820200 () Bool)

(assert (=> b!4828527 m!5820200))

(declare-fun m!5820202 () Bool)

(assert (=> b!4828528 m!5820202))

(assert (=> d!1547267 d!1547353))

(declare-fun d!1547355 () Bool)

(declare-fun res!2056203 () Bool)

(declare-fun e!3017138 () Bool)

(assert (=> d!1547355 (=> res!2056203 e!3017138)))

(assert (=> d!1547355 (= res!2056203 (is-Nil!55036 (toList!7532 lt!1974785)))))

(assert (=> d!1547355 (= (forall!12651 (toList!7532 lt!1974785) lambda!237345) e!3017138)))

(declare-fun b!4828533 () Bool)

(declare-fun e!3017139 () Bool)

(assert (=> b!4828533 (= e!3017138 e!3017139)))

(declare-fun res!2056204 () Bool)

(assert (=> b!4828533 (=> (not res!2056204) (not e!3017139))))

(declare-fun dynLambda!22232 (Int tuple2!58310) Bool)

(assert (=> b!4828533 (= res!2056204 (dynLambda!22232 lambda!237345 (h!61470 (toList!7532 lt!1974785))))))

(declare-fun b!4828534 () Bool)

(assert (=> b!4828534 (= e!3017139 (forall!12651 (t!362656 (toList!7532 lt!1974785)) lambda!237345))))

(assert (= (and d!1547355 (not res!2056203)) b!4828533))

(assert (= (and b!4828533 res!2056204) b!4828534))

(declare-fun b_lambda!190187 () Bool)

(assert (=> (not b_lambda!190187) (not b!4828533)))

(declare-fun m!5820204 () Bool)

(assert (=> b!4828533 m!5820204))

(declare-fun m!5820206 () Bool)

(assert (=> b!4828534 m!5820206))

(assert (=> b!4828337 d!1547355))

(assert (=> b!4828267 d!1547339))

(declare-fun d!1547357 () Bool)

(declare-fun res!2056205 () Bool)

(declare-fun e!3017140 () Bool)

(assert (=> d!1547357 (=> res!2056205 e!3017140)))

(assert (=> d!1547357 (= res!2056205 (is-Nil!55036 (toList!7532 lt!1974785)))))

(assert (=> d!1547357 (= (forall!12651 (toList!7532 lt!1974785) (ite c!822691 lambda!237342 lambda!237343)) e!3017140)))

(declare-fun b!4828535 () Bool)

(declare-fun e!3017141 () Bool)

(assert (=> b!4828535 (= e!3017140 e!3017141)))

(declare-fun res!2056206 () Bool)

(assert (=> b!4828535 (=> (not res!2056206) (not e!3017141))))

(assert (=> b!4828535 (= res!2056206 (dynLambda!22232 (ite c!822691 lambda!237342 lambda!237343) (h!61470 (toList!7532 lt!1974785))))))

(declare-fun b!4828536 () Bool)

(assert (=> b!4828536 (= e!3017141 (forall!12651 (t!362656 (toList!7532 lt!1974785)) (ite c!822691 lambda!237342 lambda!237343)))))

(assert (= (and d!1547357 (not res!2056205)) b!4828535))

(assert (= (and b!4828535 res!2056206) b!4828536))

(declare-fun b_lambda!190189 () Bool)

(assert (=> (not b_lambda!190189) (not b!4828535)))

(declare-fun m!5820208 () Bool)

(assert (=> b!4828535 m!5820208))

(declare-fun m!5820210 () Bool)

(assert (=> b!4828536 m!5820210))

(assert (=> bm!336502 d!1547357))

(assert (=> d!1547241 d!1547297))

(assert (=> b!4828255 d!1547309))

(assert (=> b!4828255 d!1547311))

(declare-fun d!1547359 () Bool)

(declare-fun res!2056207 () Bool)

(declare-fun e!3017142 () Bool)

(assert (=> d!1547359 (=> res!2056207 e!3017142)))

(assert (=> d!1547359 (= res!2056207 (is-Nil!55036 (toList!7532 lt!1974785)))))

(assert (=> d!1547359 (= (forall!12651 (toList!7532 lt!1974785) (ite c!822691 lambda!237342 lambda!237344)) e!3017142)))

(declare-fun b!4828537 () Bool)

(declare-fun e!3017143 () Bool)

(assert (=> b!4828537 (= e!3017142 e!3017143)))

(declare-fun res!2056208 () Bool)

(assert (=> b!4828537 (=> (not res!2056208) (not e!3017143))))

(assert (=> b!4828537 (= res!2056208 (dynLambda!22232 (ite c!822691 lambda!237342 lambda!237344) (h!61470 (toList!7532 lt!1974785))))))

(declare-fun b!4828538 () Bool)

(assert (=> b!4828538 (= e!3017143 (forall!12651 (t!362656 (toList!7532 lt!1974785)) (ite c!822691 lambda!237342 lambda!237344)))))

(assert (= (and d!1547359 (not res!2056207)) b!4828537))

(assert (= (and b!4828537 res!2056208) b!4828538))

(declare-fun b_lambda!190191 () Bool)

(assert (=> (not b_lambda!190191) (not b!4828537)))

(declare-fun m!5820212 () Bool)

(assert (=> b!4828537 m!5820212))

(declare-fun m!5820214 () Bool)

(assert (=> b!4828538 m!5820214))

(assert (=> bm!336501 d!1547359))

(assert (=> b!4828265 d!1547345))

(declare-fun d!1547361 () Bool)

(assert (=> d!1547361 (containsKey!4408 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) key!5594)))

(declare-fun lt!1975092 () Unit!143378)

(assert (=> d!1547361 (= lt!1975092 (choose!35179 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) key!5594))))

(assert (=> d!1547361 (invariantList!1819 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)))))

(assert (=> d!1547361 (= (lemmaInGetKeysListThenContainsKey!1165 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) key!5594) lt!1975092)))

(declare-fun bs!1165036 () Bool)

(assert (= bs!1165036 d!1547361))

(assert (=> bs!1165036 m!5819834))

(declare-fun m!5820216 () Bool)

(assert (=> bs!1165036 m!5820216))

(assert (=> bs!1165036 m!5820092))

(assert (=> b!4828265 d!1547361))

(assert (=> b!4828269 d!1547337))

(assert (=> b!4828269 d!1547339))

(declare-fun d!1547363 () Bool)

(assert (=> d!1547363 (isDefined!10625 (getValueByKey!2637 (toList!7531 lm!2325) (hash!5446 hashF!1543 key!5594)))))

(declare-fun lt!1975095 () Unit!143378)

(declare-fun choose!35184 (List!55161 (_ BitVec 64)) Unit!143378)

(assert (=> d!1547363 (= lt!1975095 (choose!35184 (toList!7531 lm!2325) (hash!5446 hashF!1543 key!5594)))))

(declare-fun e!3017146 () Bool)

(assert (=> d!1547363 e!3017146))

(declare-fun res!2056211 () Bool)

(assert (=> d!1547363 (=> (not res!2056211) (not e!3017146))))

(assert (=> d!1547363 (= res!2056211 (isStrictlySorted!994 (toList!7531 lm!2325)))))

(assert (=> d!1547363 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2422 (toList!7531 lm!2325) (hash!5446 hashF!1543 key!5594)) lt!1975095)))

(declare-fun b!4828541 () Bool)

(assert (=> b!4828541 (= e!3017146 (containsKey!4409 (toList!7531 lm!2325) (hash!5446 hashF!1543 key!5594)))))

(assert (= (and d!1547363 res!2056211) b!4828541))

(assert (=> d!1547363 m!5819768))

(assert (=> d!1547363 m!5819966))

(assert (=> d!1547363 m!5819966))

(assert (=> d!1547363 m!5819968))

(assert (=> d!1547363 m!5819768))

(declare-fun m!5820218 () Bool)

(assert (=> d!1547363 m!5820218))

(assert (=> d!1547363 m!5819832))

(assert (=> b!4828541 m!5819768))

(assert (=> b!4828541 m!5819962))

(assert (=> b!4828368 d!1547363))

(declare-fun d!1547365 () Bool)

(declare-fun isEmpty!29671 (Option!13510) Bool)

(assert (=> d!1547365 (= (isDefined!10625 (getValueByKey!2637 (toList!7531 lm!2325) (hash!5446 hashF!1543 key!5594))) (not (isEmpty!29671 (getValueByKey!2637 (toList!7531 lm!2325) (hash!5446 hashF!1543 key!5594)))))))

(declare-fun bs!1165037 () Bool)

(assert (= bs!1165037 d!1547365))

(assert (=> bs!1165037 m!5819966))

(declare-fun m!5820220 () Bool)

(assert (=> bs!1165037 m!5820220))

(assert (=> b!4828368 d!1547365))

(declare-fun b!4828550 () Bool)

(declare-fun e!3017151 () Option!13510)

(assert (=> b!4828550 (= e!3017151 (Some!13509 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))

(declare-fun e!3017152 () Option!13510)

(declare-fun b!4828552 () Bool)

(assert (=> b!4828552 (= e!3017152 (getValueByKey!2637 (t!362657 (toList!7531 lm!2325)) (hash!5446 hashF!1543 key!5594)))))

(declare-fun b!4828553 () Bool)

(assert (=> b!4828553 (= e!3017152 None!13509)))

(declare-fun b!4828551 () Bool)

(assert (=> b!4828551 (= e!3017151 e!3017152)))

(declare-fun c!822730 () Bool)

(assert (=> b!4828551 (= c!822730 (and (is-Cons!55037 (toList!7531 lm!2325)) (not (= (_1!32450 (h!61471 (toList!7531 lm!2325))) (hash!5446 hashF!1543 key!5594)))))))

(declare-fun d!1547367 () Bool)

(declare-fun c!822729 () Bool)

(assert (=> d!1547367 (= c!822729 (and (is-Cons!55037 (toList!7531 lm!2325)) (= (_1!32450 (h!61471 (toList!7531 lm!2325))) (hash!5446 hashF!1543 key!5594))))))

(assert (=> d!1547367 (= (getValueByKey!2637 (toList!7531 lm!2325) (hash!5446 hashF!1543 key!5594)) e!3017151)))

(assert (= (and d!1547367 c!822729) b!4828550))

(assert (= (and d!1547367 (not c!822729)) b!4828551))

(assert (= (and b!4828551 c!822730) b!4828552))

(assert (= (and b!4828551 (not c!822730)) b!4828553))

(assert (=> b!4828552 m!5819768))

(declare-fun m!5820222 () Bool)

(assert (=> b!4828552 m!5820222))

(assert (=> b!4828368 d!1547367))

(declare-fun d!1547369 () Bool)

(declare-fun res!2056212 () Bool)

(declare-fun e!3017153 () Bool)

(assert (=> d!1547369 (=> res!2056212 e!3017153)))

(assert (=> d!1547369 (= res!2056212 (is-Nil!55036 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))

(assert (=> d!1547369 (= (forall!12651 (_2!32450 (h!61471 (toList!7531 lm!2325))) lambda!237344) e!3017153)))

(declare-fun b!4828554 () Bool)

(declare-fun e!3017154 () Bool)

(assert (=> b!4828554 (= e!3017153 e!3017154)))

(declare-fun res!2056213 () Bool)

(assert (=> b!4828554 (=> (not res!2056213) (not e!3017154))))

(assert (=> b!4828554 (= res!2056213 (dynLambda!22232 lambda!237344 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))))))

(declare-fun b!4828555 () Bool)

(assert (=> b!4828555 (= e!3017154 (forall!12651 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325)))) lambda!237344))))

(assert (= (and d!1547369 (not res!2056212)) b!4828554))

(assert (= (and b!4828554 res!2056213) b!4828555))

(declare-fun b_lambda!190193 () Bool)

(assert (=> (not b_lambda!190193) (not b!4828554)))

(declare-fun m!5820224 () Bool)

(assert (=> b!4828554 m!5820224))

(assert (=> b!4828555 m!5819922))

(assert (=> b!4828339 d!1547369))

(declare-fun d!1547371 () Bool)

(declare-fun e!3017157 () Bool)

(assert (=> d!1547371 e!3017157))

(declare-fun res!2056219 () Bool)

(assert (=> d!1547371 (=> (not res!2056219) (not e!3017157))))

(declare-fun lt!1975106 () ListMap!6903)

(assert (=> d!1547371 (= res!2056219 (contains!18838 lt!1975106 (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))))

(declare-fun lt!1975104 () List!55160)

(assert (=> d!1547371 (= lt!1975106 (ListMap!6904 lt!1975104))))

(declare-fun lt!1975107 () Unit!143378)

(declare-fun lt!1975105 () Unit!143378)

(assert (=> d!1547371 (= lt!1975107 lt!1975105)))

(assert (=> d!1547371 (= (getValueByKey!2636 lt!1975104 (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))) (Some!13508 (_2!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1224 (List!55160 K!16727 V!16973) Unit!143378)

(assert (=> d!1547371 (= lt!1975105 (lemmaContainsTupThenGetReturnValue!1224 lt!1975104 (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) (_2!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))))

(declare-fun insertNoDuplicatedKeys!732 (List!55160 K!16727 V!16973) List!55160)

(assert (=> d!1547371 (= lt!1975104 (insertNoDuplicatedKeys!732 (toList!7532 lt!1974785) (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) (_2!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))))

(assert (=> d!1547371 (= (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) lt!1975106)))

(declare-fun b!4828560 () Bool)

(declare-fun res!2056218 () Bool)

(assert (=> b!4828560 (=> (not res!2056218) (not e!3017157))))

(assert (=> b!4828560 (= res!2056218 (= (getValueByKey!2636 (toList!7532 lt!1975106) (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))) (Some!13508 (_2!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))))))))

(declare-fun b!4828561 () Bool)

(declare-fun contains!18844 (List!55160 tuple2!58310) Bool)

(assert (=> b!4828561 (= e!3017157 (contains!18844 (toList!7532 lt!1975106) (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))))))

(assert (= (and d!1547371 res!2056219) b!4828560))

(assert (= (and b!4828560 res!2056218) b!4828561))

(declare-fun m!5820226 () Bool)

(assert (=> d!1547371 m!5820226))

(declare-fun m!5820228 () Bool)

(assert (=> d!1547371 m!5820228))

(declare-fun m!5820230 () Bool)

(assert (=> d!1547371 m!5820230))

(declare-fun m!5820232 () Bool)

(assert (=> d!1547371 m!5820232))

(declare-fun m!5820234 () Bool)

(assert (=> b!4828560 m!5820234))

(declare-fun m!5820236 () Bool)

(assert (=> b!4828561 m!5820236))

(assert (=> b!4828339 d!1547371))

(declare-fun d!1547373 () Bool)

(assert (=> d!1547373 (dynLambda!22232 lambda!237344 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))

(declare-fun lt!1975110 () Unit!143378)

(declare-fun choose!35185 (List!55160 Int tuple2!58310) Unit!143378)

(assert (=> d!1547373 (= lt!1975110 (choose!35185 (toList!7532 lt!1974926) lambda!237344 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))))))

(declare-fun e!3017160 () Bool)

(assert (=> d!1547373 e!3017160))

(declare-fun res!2056222 () Bool)

(assert (=> d!1547373 (=> (not res!2056222) (not e!3017160))))

(assert (=> d!1547373 (= res!2056222 (forall!12651 (toList!7532 lt!1974926) lambda!237344))))

(assert (=> d!1547373 (= (forallContained!4396 (toList!7532 lt!1974926) lambda!237344 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) lt!1975110)))

(declare-fun b!4828564 () Bool)

(assert (=> b!4828564 (= e!3017160 (contains!18844 (toList!7532 lt!1974926) (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))))))

(assert (= (and d!1547373 res!2056222) b!4828564))

(declare-fun b_lambda!190195 () Bool)

(assert (=> (not b_lambda!190195) (not d!1547373)))

(assert (=> d!1547373 m!5820224))

(declare-fun m!5820238 () Bool)

(assert (=> d!1547373 m!5820238))

(assert (=> d!1547373 m!5819912))

(declare-fun m!5820240 () Bool)

(assert (=> b!4828564 m!5820240))

(assert (=> b!4828339 d!1547373))

(declare-fun bs!1165038 () Bool)

(declare-fun b!4828568 () Bool)

(assert (= bs!1165038 (and b!4828568 b!4828493)))

(declare-fun lambda!237415 () Int)

(assert (=> bs!1165038 (= (= (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) lt!1975063) (= lambda!237415 lambda!237400))))

(declare-fun bs!1165039 () Bool)

(assert (= bs!1165039 (and b!4828568 b!4828338)))

(assert (=> bs!1165039 (= (= (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) lt!1974785) (= lambda!237415 lambda!237342))))

(declare-fun bs!1165040 () Bool)

(assert (= bs!1165040 (and b!4828568 b!4828339)))

(assert (=> bs!1165040 (= (= (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) lt!1974785) (= lambda!237415 lambda!237343))))

(declare-fun bs!1165041 () Bool)

(assert (= bs!1165041 (and b!4828568 d!1547341)))

(assert (=> bs!1165041 (= (= (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) lt!1975050) (= lambda!237415 lambda!237401))))

(declare-fun bs!1165042 () Bool)

(assert (= bs!1165042 (and b!4828568 d!1547325)))

(assert (=> bs!1165042 (= (= (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) lt!1974785) (= lambda!237415 lambda!237395))))

(declare-fun bs!1165043 () Bool)

(assert (= bs!1165043 (and b!4828568 d!1547251)))

(assert (=> bs!1165043 (= (= (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) lt!1974911) (= lambda!237415 lambda!237345))))

(assert (=> bs!1165040 (= (= (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) lt!1974924) (= lambda!237415 lambda!237344))))

(declare-fun bs!1165044 () Bool)

(assert (= bs!1165044 (and b!4828568 b!4828492)))

(assert (=> bs!1165044 (= (= (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325))))) (= lambda!237415 lambda!237398))))

(assert (=> bs!1165038 (= (= (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325))))) (= lambda!237415 lambda!237399))))

(assert (=> b!4828568 true))

(declare-fun bs!1165045 () Bool)

(declare-fun b!4828569 () Bool)

(assert (= bs!1165045 (and b!4828569 b!4828493)))

(declare-fun lambda!237416 () Int)

(assert (=> bs!1165045 (= (= (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) lt!1975063) (= lambda!237416 lambda!237400))))

(declare-fun bs!1165046 () Bool)

(assert (= bs!1165046 (and b!4828569 b!4828338)))

(assert (=> bs!1165046 (= (= (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) lt!1974785) (= lambda!237416 lambda!237342))))

(declare-fun bs!1165047 () Bool)

(assert (= bs!1165047 (and b!4828569 b!4828339)))

(assert (=> bs!1165047 (= (= (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) lt!1974785) (= lambda!237416 lambda!237343))))

(declare-fun bs!1165048 () Bool)

(assert (= bs!1165048 (and b!4828569 d!1547341)))

(assert (=> bs!1165048 (= (= (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) lt!1975050) (= lambda!237416 lambda!237401))))

(declare-fun bs!1165049 () Bool)

(assert (= bs!1165049 (and b!4828569 b!4828568)))

(assert (=> bs!1165049 (= lambda!237416 lambda!237415)))

(declare-fun bs!1165050 () Bool)

(assert (= bs!1165050 (and b!4828569 d!1547325)))

(assert (=> bs!1165050 (= (= (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) lt!1974785) (= lambda!237416 lambda!237395))))

(declare-fun bs!1165051 () Bool)

(assert (= bs!1165051 (and b!4828569 d!1547251)))

(assert (=> bs!1165051 (= (= (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) lt!1974911) (= lambda!237416 lambda!237345))))

(assert (=> bs!1165047 (= (= (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) lt!1974924) (= lambda!237416 lambda!237344))))

(declare-fun bs!1165052 () Bool)

(assert (= bs!1165052 (and b!4828569 b!4828492)))

(assert (=> bs!1165052 (= (= (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325))))) (= lambda!237416 lambda!237398))))

(assert (=> bs!1165045 (= (= (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325))))) (= lambda!237416 lambda!237399))))

(assert (=> b!4828569 true))

(declare-fun lt!1975125 () ListMap!6903)

(declare-fun lambda!237417 () Int)

(assert (=> bs!1165045 (= (= lt!1975125 lt!1975063) (= lambda!237417 lambda!237400))))

(assert (=> bs!1165046 (= (= lt!1975125 lt!1974785) (= lambda!237417 lambda!237342))))

(assert (=> bs!1165047 (= (= lt!1975125 lt!1974785) (= lambda!237417 lambda!237343))))

(assert (=> bs!1165048 (= (= lt!1975125 lt!1975050) (= lambda!237417 lambda!237401))))

(assert (=> bs!1165049 (= (= lt!1975125 (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))) (= lambda!237417 lambda!237415))))

(assert (=> bs!1165050 (= (= lt!1975125 lt!1974785) (= lambda!237417 lambda!237395))))

(assert (=> bs!1165047 (= (= lt!1975125 lt!1974924) (= lambda!237417 lambda!237344))))

(assert (=> bs!1165052 (= (= lt!1975125 (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325))))) (= lambda!237417 lambda!237398))))

(assert (=> bs!1165045 (= (= lt!1975125 (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325))))) (= lambda!237417 lambda!237399))))

(assert (=> bs!1165051 (= (= lt!1975125 lt!1974911) (= lambda!237417 lambda!237345))))

(assert (=> b!4828569 (= (= lt!1975125 (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))) (= lambda!237417 lambda!237416))))

(assert (=> b!4828569 true))

(declare-fun bs!1165053 () Bool)

(declare-fun d!1547375 () Bool)

(assert (= bs!1165053 (and d!1547375 b!4828493)))

(declare-fun lt!1975112 () ListMap!6903)

(declare-fun lambda!237418 () Int)

(assert (=> bs!1165053 (= (= lt!1975112 lt!1975063) (= lambda!237418 lambda!237400))))

(declare-fun bs!1165054 () Bool)

(assert (= bs!1165054 (and d!1547375 b!4828338)))

(assert (=> bs!1165054 (= (= lt!1975112 lt!1974785) (= lambda!237418 lambda!237342))))

(declare-fun bs!1165055 () Bool)

(assert (= bs!1165055 (and d!1547375 b!4828339)))

(assert (=> bs!1165055 (= (= lt!1975112 lt!1974785) (= lambda!237418 lambda!237343))))

(declare-fun bs!1165056 () Bool)

(assert (= bs!1165056 (and d!1547375 b!4828568)))

(assert (=> bs!1165056 (= (= lt!1975112 (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))) (= lambda!237418 lambda!237415))))

(declare-fun bs!1165057 () Bool)

(assert (= bs!1165057 (and d!1547375 d!1547325)))

(assert (=> bs!1165057 (= (= lt!1975112 lt!1974785) (= lambda!237418 lambda!237395))))

(assert (=> bs!1165055 (= (= lt!1975112 lt!1974924) (= lambda!237418 lambda!237344))))

(declare-fun bs!1165058 () Bool)

(assert (= bs!1165058 (and d!1547375 b!4828492)))

(assert (=> bs!1165058 (= (= lt!1975112 (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325))))) (= lambda!237418 lambda!237398))))

(assert (=> bs!1165053 (= (= lt!1975112 (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325))))) (= lambda!237418 lambda!237399))))

(declare-fun bs!1165059 () Bool)

(assert (= bs!1165059 (and d!1547375 d!1547341)))

(assert (=> bs!1165059 (= (= lt!1975112 lt!1975050) (= lambda!237418 lambda!237401))))

(declare-fun bs!1165060 () Bool)

(assert (= bs!1165060 (and d!1547375 b!4828569)))

(assert (=> bs!1165060 (= (= lt!1975112 lt!1975125) (= lambda!237418 lambda!237417))))

(declare-fun bs!1165061 () Bool)

(assert (= bs!1165061 (and d!1547375 d!1547251)))

(assert (=> bs!1165061 (= (= lt!1975112 lt!1974911) (= lambda!237418 lambda!237345))))

(assert (=> bs!1165060 (= (= lt!1975112 (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))) (= lambda!237418 lambda!237416))))

(assert (=> d!1547375 true))

(declare-fun b!4828565 () Bool)

(declare-fun e!3017162 () Bool)

(assert (=> b!4828565 (= e!3017162 (invariantList!1819 (toList!7532 lt!1975112)))))

(declare-fun b!4828566 () Bool)

(declare-fun e!3017161 () Bool)

(declare-fun call!336522 () Bool)

(assert (=> b!4828566 (= e!3017161 call!336522)))

(declare-fun bm!336515 () Bool)

(declare-fun call!336520 () Unit!143378)

(assert (=> bm!336515 (= call!336520 (lemmaContainsAllItsOwnKeys!997 (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))))

(declare-fun bm!336517 () Bool)

(declare-fun call!336521 () Bool)

(declare-fun c!822731 () Bool)

(assert (=> bm!336517 (= call!336521 (forall!12651 (toList!7532 (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))) (ite c!822731 lambda!237415 lambda!237416)))))

(declare-fun b!4828567 () Bool)

(declare-fun res!2056223 () Bool)

(assert (=> b!4828567 (=> (not res!2056223) (not e!3017162))))

(assert (=> b!4828567 (= res!2056223 (forall!12651 (toList!7532 (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))) lambda!237418))))

(declare-fun e!3017163 () ListMap!6903)

(assert (=> b!4828568 (= e!3017163 (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))))))

(declare-fun lt!1975118 () Unit!143378)

(assert (=> b!4828568 (= lt!1975118 call!336520)))

(assert (=> b!4828568 call!336522))

(declare-fun lt!1975111 () Unit!143378)

(assert (=> b!4828568 (= lt!1975111 lt!1975118)))

(assert (=> b!4828568 call!336521))

(declare-fun lt!1975115 () Unit!143378)

(declare-fun Unit!143431 () Unit!143378)

(assert (=> b!4828568 (= lt!1975115 Unit!143431)))

(assert (=> b!4828569 (= e!3017163 lt!1975125)))

(declare-fun lt!1975127 () ListMap!6903)

(assert (=> b!4828569 (= lt!1975127 (+!2542 (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) (h!61470 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))))

(assert (=> b!4828569 (= lt!1975125 (addToMapMapFromBucket!1818 (t!362656 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325))))) (+!2542 (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) (h!61470 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325))))))))))

(declare-fun lt!1975116 () Unit!143378)

(assert (=> b!4828569 (= lt!1975116 call!336520)))

(assert (=> b!4828569 call!336521))

(declare-fun lt!1975120 () Unit!143378)

(assert (=> b!4828569 (= lt!1975120 lt!1975116)))

(assert (=> b!4828569 (forall!12651 (toList!7532 lt!1975127) lambda!237417)))

(declare-fun lt!1975117 () Unit!143378)

(declare-fun Unit!143432 () Unit!143378)

(assert (=> b!4828569 (= lt!1975117 Unit!143432)))

(assert (=> b!4828569 (forall!12651 (t!362656 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325))))) lambda!237417)))

(declare-fun lt!1975124 () Unit!143378)

(declare-fun Unit!143433 () Unit!143378)

(assert (=> b!4828569 (= lt!1975124 Unit!143433)))

(declare-fun lt!1975131 () Unit!143378)

(declare-fun Unit!143434 () Unit!143378)

(assert (=> b!4828569 (= lt!1975131 Unit!143434)))

(declare-fun lt!1975126 () Unit!143378)

(assert (=> b!4828569 (= lt!1975126 (forallContained!4396 (toList!7532 lt!1975127) lambda!237417 (h!61470 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))))

(assert (=> b!4828569 (contains!18838 lt!1975127 (_1!32449 (h!61470 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))))

(declare-fun lt!1975119 () Unit!143378)

(declare-fun Unit!143435 () Unit!143378)

(assert (=> b!4828569 (= lt!1975119 Unit!143435)))

(assert (=> b!4828569 (contains!18838 lt!1975125 (_1!32449 (h!61470 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))))

(declare-fun lt!1975129 () Unit!143378)

(declare-fun Unit!143436 () Unit!143378)

(assert (=> b!4828569 (= lt!1975129 Unit!143436)))

(assert (=> b!4828569 (forall!12651 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325)))) lambda!237417)))

(declare-fun lt!1975130 () Unit!143378)

(declare-fun Unit!143437 () Unit!143378)

(assert (=> b!4828569 (= lt!1975130 Unit!143437)))

(assert (=> b!4828569 (forall!12651 (toList!7532 lt!1975127) lambda!237417)))

(declare-fun lt!1975114 () Unit!143378)

(declare-fun Unit!143438 () Unit!143378)

(assert (=> b!4828569 (= lt!1975114 Unit!143438)))

(declare-fun lt!1975123 () Unit!143378)

(declare-fun Unit!143439 () Unit!143378)

(assert (=> b!4828569 (= lt!1975123 Unit!143439)))

(declare-fun lt!1975121 () Unit!143378)

(assert (=> b!4828569 (= lt!1975121 (addForallContainsKeyThenBeforeAdding!996 (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) lt!1975125 (_1!32449 (h!61470 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325)))))) (_2!32449 (h!61470 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325))))))))))

(assert (=> b!4828569 (forall!12651 (toList!7532 (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))) lambda!237417)))

(declare-fun lt!1975122 () Unit!143378)

(assert (=> b!4828569 (= lt!1975122 lt!1975121)))

(assert (=> b!4828569 (forall!12651 (toList!7532 (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))) lambda!237417)))

(declare-fun lt!1975113 () Unit!143378)

(declare-fun Unit!143440 () Unit!143378)

(assert (=> b!4828569 (= lt!1975113 Unit!143440)))

(declare-fun res!2056225 () Bool)

(assert (=> b!4828569 (= res!2056225 (forall!12651 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325)))) lambda!237417))))

(assert (=> b!4828569 (=> (not res!2056225) (not e!3017161))))

(assert (=> b!4828569 e!3017161))

(declare-fun lt!1975128 () Unit!143378)

(declare-fun Unit!143441 () Unit!143378)

(assert (=> b!4828569 (= lt!1975128 Unit!143441)))

(assert (=> d!1547375 e!3017162))

(declare-fun res!2056224 () Bool)

(assert (=> d!1547375 (=> (not res!2056224) (not e!3017162))))

(assert (=> d!1547375 (= res!2056224 (forall!12651 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325)))) lambda!237418))))

(assert (=> d!1547375 (= lt!1975112 e!3017163)))

(assert (=> d!1547375 (= c!822731 (is-Nil!55036 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325))))))))

(assert (=> d!1547375 (noDuplicateKeys!2463 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))

(assert (=> d!1547375 (= (addToMapMapFromBucket!1818 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325)))) (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))) lt!1975112)))

(declare-fun bm!336516 () Bool)

(assert (=> bm!336516 (= call!336522 (forall!12651 (toList!7532 (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))) (ite c!822731 lambda!237415 lambda!237417)))))

(assert (= (and d!1547375 c!822731) b!4828568))

(assert (= (and d!1547375 (not c!822731)) b!4828569))

(assert (= (and b!4828569 res!2056225) b!4828566))

(assert (= (or b!4828568 b!4828569) bm!336515))

(assert (= (or b!4828568 b!4828566) bm!336516))

(assert (= (or b!4828568 b!4828569) bm!336517))

(assert (= (and d!1547375 res!2056224) b!4828567))

(assert (= (and b!4828567 res!2056223) b!4828565))

(assert (=> b!4828569 m!5819916))

(declare-fun m!5820242 () Bool)

(assert (=> b!4828569 m!5820242))

(declare-fun m!5820244 () Bool)

(assert (=> b!4828569 m!5820244))

(declare-fun m!5820246 () Bool)

(assert (=> b!4828569 m!5820246))

(declare-fun m!5820248 () Bool)

(assert (=> b!4828569 m!5820248))

(declare-fun m!5820250 () Bool)

(assert (=> b!4828569 m!5820250))

(assert (=> b!4828569 m!5819916))

(declare-fun m!5820252 () Bool)

(assert (=> b!4828569 m!5820252))

(declare-fun m!5820254 () Bool)

(assert (=> b!4828569 m!5820254))

(assert (=> b!4828569 m!5820252))

(declare-fun m!5820256 () Bool)

(assert (=> b!4828569 m!5820256))

(assert (=> b!4828569 m!5820248))

(assert (=> b!4828569 m!5820246))

(assert (=> b!4828569 m!5820244))

(declare-fun m!5820258 () Bool)

(assert (=> b!4828569 m!5820258))

(declare-fun m!5820260 () Bool)

(assert (=> b!4828569 m!5820260))

(declare-fun m!5820262 () Bool)

(assert (=> bm!336516 m!5820262))

(declare-fun m!5820264 () Bool)

(assert (=> bm!336517 m!5820264))

(declare-fun m!5820266 () Bool)

(assert (=> d!1547375 m!5820266))

(assert (=> d!1547375 m!5820048))

(declare-fun m!5820268 () Bool)

(assert (=> b!4828565 m!5820268))

(assert (=> bm!336515 m!5819916))

(declare-fun m!5820270 () Bool)

(assert (=> bm!336515 m!5820270))

(declare-fun m!5820272 () Bool)

(assert (=> b!4828567 m!5820272))

(assert (=> b!4828339 d!1547375))

(declare-fun d!1547377 () Bool)

(declare-fun res!2056226 () Bool)

(declare-fun e!3017164 () Bool)

(assert (=> d!1547377 (=> res!2056226 e!3017164)))

(assert (=> d!1547377 (= res!2056226 (is-Nil!55036 (toList!7532 lt!1974926)))))

(assert (=> d!1547377 (= (forall!12651 (toList!7532 lt!1974926) lambda!237344) e!3017164)))

(declare-fun b!4828570 () Bool)

(declare-fun e!3017165 () Bool)

(assert (=> b!4828570 (= e!3017164 e!3017165)))

(declare-fun res!2056227 () Bool)

(assert (=> b!4828570 (=> (not res!2056227) (not e!3017165))))

(assert (=> b!4828570 (= res!2056227 (dynLambda!22232 lambda!237344 (h!61470 (toList!7532 lt!1974926))))))

(declare-fun b!4828571 () Bool)

(assert (=> b!4828571 (= e!3017165 (forall!12651 (t!362656 (toList!7532 lt!1974926)) lambda!237344))))

(assert (= (and d!1547377 (not res!2056226)) b!4828570))

(assert (= (and b!4828570 res!2056227) b!4828571))

(declare-fun b_lambda!190197 () Bool)

(assert (=> (not b_lambda!190197) (not b!4828570)))

(declare-fun m!5820274 () Bool)

(assert (=> b!4828570 m!5820274))

(declare-fun m!5820276 () Bool)

(assert (=> b!4828571 m!5820276))

(assert (=> b!4828339 d!1547377))

(declare-fun bs!1165062 () Bool)

(declare-fun d!1547379 () Bool)

(assert (= bs!1165062 (and d!1547379 b!4828493)))

(declare-fun lambda!237423 () Int)

(assert (=> bs!1165062 (= (= lt!1974924 lt!1975063) (= lambda!237423 lambda!237400))))

(declare-fun bs!1165063 () Bool)

(assert (= bs!1165063 (and d!1547379 b!4828338)))

(assert (=> bs!1165063 (= (= lt!1974924 lt!1974785) (= lambda!237423 lambda!237342))))

(declare-fun bs!1165064 () Bool)

(assert (= bs!1165064 (and d!1547379 b!4828339)))

(assert (=> bs!1165064 (= (= lt!1974924 lt!1974785) (= lambda!237423 lambda!237343))))

(declare-fun bs!1165065 () Bool)

(assert (= bs!1165065 (and d!1547379 b!4828568)))

(assert (=> bs!1165065 (= (= lt!1974924 (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))) (= lambda!237423 lambda!237415))))

(assert (=> bs!1165064 (= lambda!237423 lambda!237344)))

(declare-fun bs!1165066 () Bool)

(assert (= bs!1165066 (and d!1547379 b!4828492)))

(assert (=> bs!1165066 (= (= lt!1974924 (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325))))) (= lambda!237423 lambda!237398))))

(assert (=> bs!1165062 (= (= lt!1974924 (extractMap!2703 (t!362657 (t!362657 (toList!7531 lm!2325))))) (= lambda!237423 lambda!237399))))

(declare-fun bs!1165067 () Bool)

(assert (= bs!1165067 (and d!1547379 d!1547341)))

(assert (=> bs!1165067 (= (= lt!1974924 lt!1975050) (= lambda!237423 lambda!237401))))

(declare-fun bs!1165068 () Bool)

(assert (= bs!1165068 (and d!1547379 b!4828569)))

(assert (=> bs!1165068 (= (= lt!1974924 lt!1975125) (= lambda!237423 lambda!237417))))

(declare-fun bs!1165069 () Bool)

(assert (= bs!1165069 (and d!1547379 d!1547375)))

(assert (=> bs!1165069 (= (= lt!1974924 lt!1975112) (= lambda!237423 lambda!237418))))

(declare-fun bs!1165070 () Bool)

(assert (= bs!1165070 (and d!1547379 d!1547325)))

(assert (=> bs!1165070 (= (= lt!1974924 lt!1974785) (= lambda!237423 lambda!237395))))

(declare-fun bs!1165071 () Bool)

(assert (= bs!1165071 (and d!1547379 d!1547251)))

(assert (=> bs!1165071 (= (= lt!1974924 lt!1974911) (= lambda!237423 lambda!237345))))

(assert (=> bs!1165068 (= (= lt!1974924 (+!2542 lt!1974785 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))) (= lambda!237423 lambda!237416))))

(assert (=> d!1547379 true))

(assert (=> d!1547379 (forall!12651 (toList!7532 lt!1974785) lambda!237423)))

(declare-fun lt!1975134 () Unit!143378)

(declare-fun choose!35186 (ListMap!6903 ListMap!6903 K!16727 V!16973) Unit!143378)

(assert (=> d!1547379 (= lt!1975134 (choose!35186 lt!1974785 lt!1974924 (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) (_2!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))))

(assert (=> d!1547379 (forall!12651 (toList!7532 (+!2542 lt!1974785 (tuple2!58311 (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) (_2!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))) lambda!237423)))

(assert (=> d!1547379 (= (addForallContainsKeyThenBeforeAdding!996 lt!1974785 lt!1974924 (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) (_2!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))) lt!1975134)))

(declare-fun bs!1165072 () Bool)

(assert (= bs!1165072 d!1547379))

(declare-fun m!5820278 () Bool)

(assert (=> bs!1165072 m!5820278))

(declare-fun m!5820280 () Bool)

(assert (=> bs!1165072 m!5820280))

(declare-fun m!5820282 () Bool)

(assert (=> bs!1165072 m!5820282))

(declare-fun m!5820284 () Bool)

(assert (=> bs!1165072 m!5820284))

(assert (=> b!4828339 d!1547379))

(declare-fun d!1547381 () Bool)

(declare-fun res!2056228 () Bool)

(declare-fun e!3017166 () Bool)

(assert (=> d!1547381 (=> res!2056228 e!3017166)))

(assert (=> d!1547381 (= res!2056228 (is-Nil!55036 (toList!7532 lt!1974785)))))

(assert (=> d!1547381 (= (forall!12651 (toList!7532 lt!1974785) lambda!237344) e!3017166)))

(declare-fun b!4828573 () Bool)

(declare-fun e!3017167 () Bool)

(assert (=> b!4828573 (= e!3017166 e!3017167)))

(declare-fun res!2056229 () Bool)

(assert (=> b!4828573 (=> (not res!2056229) (not e!3017167))))

(assert (=> b!4828573 (= res!2056229 (dynLambda!22232 lambda!237344 (h!61470 (toList!7532 lt!1974785))))))

(declare-fun b!4828574 () Bool)

(assert (=> b!4828574 (= e!3017167 (forall!12651 (t!362656 (toList!7532 lt!1974785)) lambda!237344))))

(assert (= (and d!1547381 (not res!2056228)) b!4828573))

(assert (= (and b!4828573 res!2056229) b!4828574))

(declare-fun b_lambda!190199 () Bool)

(assert (=> (not b_lambda!190199) (not b!4828573)))

(declare-fun m!5820286 () Bool)

(assert (=> b!4828573 m!5820286))

(declare-fun m!5820288 () Bool)

(assert (=> b!4828574 m!5820288))

(assert (=> b!4828339 d!1547381))

(declare-fun d!1547383 () Bool)

(declare-fun res!2056230 () Bool)

(declare-fun e!3017168 () Bool)

(assert (=> d!1547383 (=> res!2056230 e!3017168)))

(assert (=> d!1547383 (= res!2056230 (is-Nil!55036 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325))))))))

(assert (=> d!1547383 (= (forall!12651 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325)))) lambda!237344) e!3017168)))

(declare-fun b!4828575 () Bool)

(declare-fun e!3017169 () Bool)

(assert (=> b!4828575 (= e!3017168 e!3017169)))

(declare-fun res!2056231 () Bool)

(assert (=> b!4828575 (=> (not res!2056231) (not e!3017169))))

(assert (=> b!4828575 (= res!2056231 (dynLambda!22232 lambda!237344 (h!61470 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))))

(declare-fun b!4828576 () Bool)

(assert (=> b!4828576 (= e!3017169 (forall!12651 (t!362656 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325))))) lambda!237344))))

(assert (= (and d!1547383 (not res!2056230)) b!4828575))

(assert (= (and b!4828575 res!2056231) b!4828576))

(declare-fun b_lambda!190201 () Bool)

(assert (=> (not b_lambda!190201) (not b!4828575)))

(declare-fun m!5820290 () Bool)

(assert (=> b!4828575 m!5820290))

(declare-fun m!5820292 () Bool)

(assert (=> b!4828576 m!5820292))

(assert (=> b!4828339 d!1547383))

(declare-fun b!4828577 () Bool)

(declare-fun e!3017173 () Bool)

(assert (=> b!4828577 (= e!3017173 (contains!18842 (keys!20262 lt!1974926) (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))))

(declare-fun d!1547385 () Bool)

(declare-fun e!3017174 () Bool)

(assert (=> d!1547385 e!3017174))

(declare-fun res!2056233 () Bool)

(assert (=> d!1547385 (=> res!2056233 e!3017174)))

(declare-fun e!3017170 () Bool)

(assert (=> d!1547385 (= res!2056233 e!3017170)))

(declare-fun res!2056234 () Bool)

(assert (=> d!1547385 (=> (not res!2056234) (not e!3017170))))

(declare-fun lt!1975135 () Bool)

(assert (=> d!1547385 (= res!2056234 (not lt!1975135))))

(declare-fun lt!1975136 () Bool)

(assert (=> d!1547385 (= lt!1975135 lt!1975136)))

(declare-fun lt!1975141 () Unit!143378)

(declare-fun e!3017171 () Unit!143378)

(assert (=> d!1547385 (= lt!1975141 e!3017171)))

(declare-fun c!822734 () Bool)

(assert (=> d!1547385 (= c!822734 lt!1975136)))

(assert (=> d!1547385 (= lt!1975136 (containsKey!4408 (toList!7532 lt!1974926) (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))))

(assert (=> d!1547385 (= (contains!18838 lt!1974926 (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))) lt!1975135)))

(declare-fun b!4828578 () Bool)

(declare-fun lt!1975137 () Unit!143378)

(assert (=> b!4828578 (= e!3017171 lt!1975137)))

(declare-fun lt!1975138 () Unit!143378)

(assert (=> b!4828578 (= lt!1975138 (lemmaContainsKeyImpliesGetValueByKeyDefined!2421 (toList!7532 lt!1974926) (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))))

(assert (=> b!4828578 (isDefined!10624 (getValueByKey!2636 (toList!7532 lt!1974926) (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))))

(declare-fun lt!1975140 () Unit!143378)

(assert (=> b!4828578 (= lt!1975140 lt!1975138)))

(assert (=> b!4828578 (= lt!1975137 (lemmaInListThenGetKeysListContains!1160 (toList!7532 lt!1974926) (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))))

(declare-fun call!336523 () Bool)

(assert (=> b!4828578 call!336523))

(declare-fun b!4828579 () Bool)

(assert (=> b!4828579 false))

(declare-fun lt!1975142 () Unit!143378)

(declare-fun lt!1975139 () Unit!143378)

(assert (=> b!4828579 (= lt!1975142 lt!1975139)))

(assert (=> b!4828579 (containsKey!4408 (toList!7532 lt!1974926) (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))))))

(assert (=> b!4828579 (= lt!1975139 (lemmaInGetKeysListThenContainsKey!1165 (toList!7532 lt!1974926) (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))))

(declare-fun e!3017175 () Unit!143378)

(declare-fun Unit!143442 () Unit!143378)

(assert (=> b!4828579 (= e!3017175 Unit!143442)))

(declare-fun b!4828580 () Bool)

(assert (=> b!4828580 (= e!3017171 e!3017175)))

(declare-fun c!822732 () Bool)

(assert (=> b!4828580 (= c!822732 call!336523)))

(declare-fun b!4828581 () Bool)

(declare-fun e!3017172 () List!55164)

(assert (=> b!4828581 (= e!3017172 (keys!20262 lt!1974926))))

(declare-fun b!4828582 () Bool)

(assert (=> b!4828582 (= e!3017172 (getKeysList!1165 (toList!7532 lt!1974926)))))

(declare-fun bm!336518 () Bool)

(assert (=> bm!336518 (= call!336523 (contains!18842 e!3017172 (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))))

(declare-fun c!822733 () Bool)

(assert (=> bm!336518 (= c!822733 c!822734)))

(declare-fun b!4828583 () Bool)

(assert (=> b!4828583 (= e!3017170 (not (contains!18842 (keys!20262 lt!1974926) (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))))))))

(declare-fun b!4828584 () Bool)

(assert (=> b!4828584 (= e!3017174 e!3017173)))

(declare-fun res!2056232 () Bool)

(assert (=> b!4828584 (=> (not res!2056232) (not e!3017173))))

(assert (=> b!4828584 (= res!2056232 (isDefined!10624 (getValueByKey!2636 (toList!7532 lt!1974926) (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))))))))

(declare-fun b!4828585 () Bool)

(declare-fun Unit!143443 () Unit!143378)

(assert (=> b!4828585 (= e!3017175 Unit!143443)))

(assert (= (and d!1547385 c!822734) b!4828578))

(assert (= (and d!1547385 (not c!822734)) b!4828580))

(assert (= (and b!4828580 c!822732) b!4828579))

(assert (= (and b!4828580 (not c!822732)) b!4828585))

(assert (= (or b!4828578 b!4828580) bm!336518))

(assert (= (and bm!336518 c!822733) b!4828582))

(assert (= (and bm!336518 (not c!822733)) b!4828581))

(assert (= (and d!1547385 res!2056234) b!4828583))

(assert (= (and d!1547385 (not res!2056233)) b!4828584))

(assert (= (and b!4828584 res!2056232) b!4828577))

(declare-fun m!5820294 () Bool)

(assert (=> d!1547385 m!5820294))

(declare-fun m!5820296 () Bool)

(assert (=> bm!336518 m!5820296))

(assert (=> b!4828579 m!5820294))

(declare-fun m!5820298 () Bool)

(assert (=> b!4828579 m!5820298))

(declare-fun m!5820300 () Bool)

(assert (=> b!4828584 m!5820300))

(assert (=> b!4828584 m!5820300))

(declare-fun m!5820302 () Bool)

(assert (=> b!4828584 m!5820302))

(declare-fun m!5820304 () Bool)

(assert (=> b!4828578 m!5820304))

(assert (=> b!4828578 m!5820300))

(assert (=> b!4828578 m!5820300))

(assert (=> b!4828578 m!5820302))

(declare-fun m!5820306 () Bool)

(assert (=> b!4828578 m!5820306))

(declare-fun m!5820308 () Bool)

(assert (=> b!4828583 m!5820308))

(assert (=> b!4828583 m!5820308))

(declare-fun m!5820310 () Bool)

(assert (=> b!4828583 m!5820310))

(declare-fun m!5820312 () Bool)

(assert (=> b!4828582 m!5820312))

(assert (=> b!4828577 m!5820308))

(assert (=> b!4828577 m!5820308))

(assert (=> b!4828577 m!5820310))

(assert (=> b!4828581 m!5820308))

(assert (=> b!4828339 d!1547385))

(declare-fun b!4828586 () Bool)

(declare-fun e!3017179 () Bool)

(assert (=> b!4828586 (= e!3017179 (contains!18842 (keys!20262 lt!1974924) (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))))

(declare-fun d!1547387 () Bool)

(declare-fun e!3017180 () Bool)

(assert (=> d!1547387 e!3017180))

(declare-fun res!2056236 () Bool)

(assert (=> d!1547387 (=> res!2056236 e!3017180)))

(declare-fun e!3017176 () Bool)

(assert (=> d!1547387 (= res!2056236 e!3017176)))

(declare-fun res!2056237 () Bool)

(assert (=> d!1547387 (=> (not res!2056237) (not e!3017176))))

(declare-fun lt!1975143 () Bool)

(assert (=> d!1547387 (= res!2056237 (not lt!1975143))))

(declare-fun lt!1975144 () Bool)

(assert (=> d!1547387 (= lt!1975143 lt!1975144)))

(declare-fun lt!1975149 () Unit!143378)

(declare-fun e!3017177 () Unit!143378)

(assert (=> d!1547387 (= lt!1975149 e!3017177)))

(declare-fun c!822737 () Bool)

(assert (=> d!1547387 (= c!822737 lt!1975144)))

(assert (=> d!1547387 (= lt!1975144 (containsKey!4408 (toList!7532 lt!1974924) (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))))

(assert (=> d!1547387 (= (contains!18838 lt!1974924 (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))) lt!1975143)))

(declare-fun b!4828587 () Bool)

(declare-fun lt!1975145 () Unit!143378)

(assert (=> b!4828587 (= e!3017177 lt!1975145)))

(declare-fun lt!1975146 () Unit!143378)

(assert (=> b!4828587 (= lt!1975146 (lemmaContainsKeyImpliesGetValueByKeyDefined!2421 (toList!7532 lt!1974924) (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))))

(assert (=> b!4828587 (isDefined!10624 (getValueByKey!2636 (toList!7532 lt!1974924) (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))))

(declare-fun lt!1975148 () Unit!143378)

(assert (=> b!4828587 (= lt!1975148 lt!1975146)))

(assert (=> b!4828587 (= lt!1975145 (lemmaInListThenGetKeysListContains!1160 (toList!7532 lt!1974924) (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))))

(declare-fun call!336524 () Bool)

(assert (=> b!4828587 call!336524))

(declare-fun b!4828588 () Bool)

(assert (=> b!4828588 false))

(declare-fun lt!1975150 () Unit!143378)

(declare-fun lt!1975147 () Unit!143378)

(assert (=> b!4828588 (= lt!1975150 lt!1975147)))

(assert (=> b!4828588 (containsKey!4408 (toList!7532 lt!1974924) (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))))))

(assert (=> b!4828588 (= lt!1975147 (lemmaInGetKeysListThenContainsKey!1165 (toList!7532 lt!1974924) (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))))

(declare-fun e!3017181 () Unit!143378)

(declare-fun Unit!143444 () Unit!143378)

(assert (=> b!4828588 (= e!3017181 Unit!143444)))

(declare-fun b!4828589 () Bool)

(assert (=> b!4828589 (= e!3017177 e!3017181)))

(declare-fun c!822735 () Bool)

(assert (=> b!4828589 (= c!822735 call!336524)))

(declare-fun b!4828590 () Bool)

(declare-fun e!3017178 () List!55164)

(assert (=> b!4828590 (= e!3017178 (keys!20262 lt!1974924))))

(declare-fun b!4828591 () Bool)

(assert (=> b!4828591 (= e!3017178 (getKeysList!1165 (toList!7532 lt!1974924)))))

(declare-fun bm!336519 () Bool)

(assert (=> bm!336519 (= call!336524 (contains!18842 e!3017178 (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))))

(declare-fun c!822736 () Bool)

(assert (=> bm!336519 (= c!822736 c!822737)))

(declare-fun b!4828592 () Bool)

(assert (=> b!4828592 (= e!3017176 (not (contains!18842 (keys!20262 lt!1974924) (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))))))))

(declare-fun b!4828593 () Bool)

(assert (=> b!4828593 (= e!3017180 e!3017179)))

(declare-fun res!2056235 () Bool)

(assert (=> b!4828593 (=> (not res!2056235) (not e!3017179))))

(assert (=> b!4828593 (= res!2056235 (isDefined!10624 (getValueByKey!2636 (toList!7532 lt!1974924) (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))))))))

(declare-fun b!4828594 () Bool)

(declare-fun Unit!143445 () Unit!143378)

(assert (=> b!4828594 (= e!3017181 Unit!143445)))

(assert (= (and d!1547387 c!822737) b!4828587))

(assert (= (and d!1547387 (not c!822737)) b!4828589))

(assert (= (and b!4828589 c!822735) b!4828588))

(assert (= (and b!4828589 (not c!822735)) b!4828594))

(assert (= (or b!4828587 b!4828589) bm!336519))

(assert (= (and bm!336519 c!822736) b!4828591))

(assert (= (and bm!336519 (not c!822736)) b!4828590))

(assert (= (and d!1547387 res!2056237) b!4828592))

(assert (= (and d!1547387 (not res!2056236)) b!4828593))

(assert (= (and b!4828593 res!2056235) b!4828586))

(declare-fun m!5820314 () Bool)

(assert (=> d!1547387 m!5820314))

(declare-fun m!5820316 () Bool)

(assert (=> bm!336519 m!5820316))

(assert (=> b!4828588 m!5820314))

(declare-fun m!5820318 () Bool)

(assert (=> b!4828588 m!5820318))

(declare-fun m!5820320 () Bool)

(assert (=> b!4828593 m!5820320))

(assert (=> b!4828593 m!5820320))

(declare-fun m!5820322 () Bool)

(assert (=> b!4828593 m!5820322))

(declare-fun m!5820324 () Bool)

(assert (=> b!4828587 m!5820324))

(assert (=> b!4828587 m!5820320))

(assert (=> b!4828587 m!5820320))

(assert (=> b!4828587 m!5820322))

(declare-fun m!5820326 () Bool)

(assert (=> b!4828587 m!5820326))

(declare-fun m!5820328 () Bool)

(assert (=> b!4828592 m!5820328))

(assert (=> b!4828592 m!5820328))

(declare-fun m!5820330 () Bool)

(assert (=> b!4828592 m!5820330))

(declare-fun m!5820332 () Bool)

(assert (=> b!4828591 m!5820332))

(assert (=> b!4828586 m!5820328))

(assert (=> b!4828586 m!5820328))

(assert (=> b!4828586 m!5820330))

(assert (=> b!4828590 m!5820328))

(assert (=> b!4828339 d!1547387))

(declare-fun d!1547389 () Bool)

(declare-fun lt!1975151 () Bool)

(assert (=> d!1547389 (= lt!1975151 (set.member key!5594 (content!9826 e!3016961)))))

(declare-fun e!3017182 () Bool)

(assert (=> d!1547389 (= lt!1975151 e!3017182)))

(declare-fun res!2056238 () Bool)

(assert (=> d!1547389 (=> (not res!2056238) (not e!3017182))))

(assert (=> d!1547389 (= res!2056238 (is-Cons!55040 e!3016961))))

(assert (=> d!1547389 (= (contains!18842 e!3016961 key!5594) lt!1975151)))

(declare-fun b!4828595 () Bool)

(declare-fun e!3017183 () Bool)

(assert (=> b!4828595 (= e!3017182 e!3017183)))

(declare-fun res!2056239 () Bool)

(assert (=> b!4828595 (=> res!2056239 e!3017183)))

(assert (=> b!4828595 (= res!2056239 (= (h!61474 e!3016961) key!5594))))

(declare-fun b!4828596 () Bool)

(assert (=> b!4828596 (= e!3017183 (contains!18842 (t!362660 e!3016961) key!5594))))

(assert (= (and d!1547389 res!2056238) b!4828595))

(assert (= (and b!4828595 (not res!2056239)) b!4828596))

(declare-fun m!5820334 () Bool)

(assert (=> d!1547389 m!5820334))

(declare-fun m!5820336 () Bool)

(assert (=> d!1547389 m!5820336))

(declare-fun m!5820338 () Bool)

(assert (=> b!4828596 m!5820338))

(assert (=> bm!336489 d!1547389))

(assert (=> bs!1164982 d!1547305))

(declare-fun d!1547391 () Bool)

(assert (=> d!1547391 (isDefined!10625 (getValueByKey!2637 (toList!7531 lm!2325) (_1!32450 (h!61471 (toList!7531 lm!2325)))))))

(declare-fun lt!1975152 () Unit!143378)

(assert (=> d!1547391 (= lt!1975152 (choose!35184 (toList!7531 lm!2325) (_1!32450 (h!61471 (toList!7531 lm!2325)))))))

(declare-fun e!3017184 () Bool)

(assert (=> d!1547391 e!3017184))

(declare-fun res!2056240 () Bool)

(assert (=> d!1547391 (=> (not res!2056240) (not e!3017184))))

(assert (=> d!1547391 (= res!2056240 (isStrictlySorted!994 (toList!7531 lm!2325)))))

(assert (=> d!1547391 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2422 (toList!7531 lm!2325) (_1!32450 (h!61471 (toList!7531 lm!2325)))) lt!1975152)))

(declare-fun b!4828597 () Bool)

(assert (=> b!4828597 (= e!3017184 (containsKey!4409 (toList!7531 lm!2325) (_1!32450 (h!61471 (toList!7531 lm!2325)))))))

(assert (= (and d!1547391 res!2056240) b!4828597))

(assert (=> d!1547391 m!5819956))

(assert (=> d!1547391 m!5819956))

(assert (=> d!1547391 m!5819958))

(declare-fun m!5820340 () Bool)

(assert (=> d!1547391 m!5820340))

(assert (=> d!1547391 m!5819832))

(assert (=> b!4828597 m!5819952))

(assert (=> b!4828363 d!1547391))

(declare-fun d!1547393 () Bool)

(assert (=> d!1547393 (= (isDefined!10625 (getValueByKey!2637 (toList!7531 lm!2325) (_1!32450 (h!61471 (toList!7531 lm!2325))))) (not (isEmpty!29671 (getValueByKey!2637 (toList!7531 lm!2325) (_1!32450 (h!61471 (toList!7531 lm!2325)))))))))

(declare-fun bs!1165073 () Bool)

(assert (= bs!1165073 d!1547393))

(assert (=> bs!1165073 m!5819956))

(declare-fun m!5820342 () Bool)

(assert (=> bs!1165073 m!5820342))

(assert (=> b!4828363 d!1547393))

(declare-fun b!4828598 () Bool)

(declare-fun e!3017185 () Option!13510)

(assert (=> b!4828598 (= e!3017185 (Some!13509 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))

(declare-fun b!4828600 () Bool)

(declare-fun e!3017186 () Option!13510)

(assert (=> b!4828600 (= e!3017186 (getValueByKey!2637 (t!362657 (toList!7531 lm!2325)) (_1!32450 (h!61471 (toList!7531 lm!2325)))))))

(declare-fun b!4828601 () Bool)

(assert (=> b!4828601 (= e!3017186 None!13509)))

(declare-fun b!4828599 () Bool)

(assert (=> b!4828599 (= e!3017185 e!3017186)))

(declare-fun c!822739 () Bool)

(assert (=> b!4828599 (= c!822739 (and (is-Cons!55037 (toList!7531 lm!2325)) (not (= (_1!32450 (h!61471 (toList!7531 lm!2325))) (_1!32450 (h!61471 (toList!7531 lm!2325)))))))))

(declare-fun d!1547395 () Bool)

(declare-fun c!822738 () Bool)

(assert (=> d!1547395 (= c!822738 (and (is-Cons!55037 (toList!7531 lm!2325)) (= (_1!32450 (h!61471 (toList!7531 lm!2325))) (_1!32450 (h!61471 (toList!7531 lm!2325))))))))

(assert (=> d!1547395 (= (getValueByKey!2637 (toList!7531 lm!2325) (_1!32450 (h!61471 (toList!7531 lm!2325)))) e!3017185)))

(assert (= (and d!1547395 c!822738) b!4828598))

(assert (= (and d!1547395 (not c!822738)) b!4828599))

(assert (= (and b!4828599 c!822739) b!4828600))

(assert (= (and b!4828599 (not c!822739)) b!4828601))

(declare-fun m!5820344 () Bool)

(assert (=> b!4828600 m!5820344))

(assert (=> b!4828363 d!1547395))

(declare-fun bs!1165074 () Bool)

(declare-fun b!4828606 () Bool)

(assert (= bs!1165074 (and b!4828606 b!4828487)))

(declare-fun lambda!237424 () Int)

(assert (=> bs!1165074 (= (= (t!362656 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))) (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))) (= lambda!237424 lambda!237396))))

(declare-fun bs!1165075 () Bool)

(assert (= bs!1165075 (and b!4828606 b!4828520)))

(assert (=> bs!1165075 (= (= (t!362656 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))) (t!362656 (toList!7532 lt!1974785))) (= lambda!237424 lambda!237411))))

(declare-fun bs!1165076 () Bool)

(assert (= bs!1165076 (and b!4828606 b!4828522)))

(assert (=> bs!1165076 (= (= (t!362656 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))) (toList!7532 lt!1974785)) (= lambda!237424 lambda!237413))))

(declare-fun bs!1165077 () Bool)

(assert (= bs!1165077 (and b!4828606 b!4828472)))

(assert (=> bs!1165077 (= (= (t!362656 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))) (toList!7532 lt!1974785)) (= lambda!237424 lambda!237391))))

(declare-fun bs!1165078 () Bool)

(assert (= bs!1165078 (and b!4828606 b!4828519)))

(assert (=> bs!1165078 (= (= (t!362656 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))) (Cons!55036 (h!61470 (toList!7532 lt!1974785)) (t!362656 (toList!7532 lt!1974785)))) (= lambda!237424 lambda!237412))))

(assert (=> b!4828606 true))

(declare-fun bs!1165079 () Bool)

(declare-fun b!4828605 () Bool)

(assert (= bs!1165079 (and b!4828605 b!4828487)))

(declare-fun lambda!237425 () Int)

(assert (=> bs!1165079 (= (= (Cons!55036 (h!61470 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))) (t!362656 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)))) (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))) (= lambda!237425 lambda!237396))))

(declare-fun bs!1165080 () Bool)

(assert (= bs!1165080 (and b!4828605 b!4828520)))

(assert (=> bs!1165080 (= (= (Cons!55036 (h!61470 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))) (t!362656 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)))) (t!362656 (toList!7532 lt!1974785))) (= lambda!237425 lambda!237411))))

(declare-fun bs!1165081 () Bool)

(assert (= bs!1165081 (and b!4828605 b!4828522)))

(assert (=> bs!1165081 (= (= (Cons!55036 (h!61470 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))) (t!362656 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)))) (toList!7532 lt!1974785)) (= lambda!237425 lambda!237413))))

(declare-fun bs!1165082 () Bool)

(assert (= bs!1165082 (and b!4828605 b!4828472)))

(assert (=> bs!1165082 (= (= (Cons!55036 (h!61470 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))) (t!362656 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)))) (toList!7532 lt!1974785)) (= lambda!237425 lambda!237391))))

(declare-fun bs!1165083 () Bool)

(assert (= bs!1165083 (and b!4828605 b!4828606)))

(assert (=> bs!1165083 (= (= (Cons!55036 (h!61470 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))) (t!362656 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)))) (t!362656 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)))) (= lambda!237425 lambda!237424))))

(declare-fun bs!1165084 () Bool)

(assert (= bs!1165084 (and b!4828605 b!4828519)))

(assert (=> bs!1165084 (= (= (Cons!55036 (h!61470 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))) (t!362656 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)))) (Cons!55036 (h!61470 (toList!7532 lt!1974785)) (t!362656 (toList!7532 lt!1974785)))) (= lambda!237425 lambda!237412))))

(assert (=> b!4828605 true))

(declare-fun bs!1165085 () Bool)

(declare-fun b!4828608 () Bool)

(assert (= bs!1165085 (and b!4828608 b!4828487)))

(declare-fun lambda!237426 () Int)

(assert (=> bs!1165085 (= lambda!237426 lambda!237396)))

(declare-fun bs!1165086 () Bool)

(assert (= bs!1165086 (and b!4828608 b!4828520)))

(assert (=> bs!1165086 (= (= (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) (t!362656 (toList!7532 lt!1974785))) (= lambda!237426 lambda!237411))))

(declare-fun bs!1165087 () Bool)

(assert (= bs!1165087 (and b!4828608 b!4828522)))

(assert (=> bs!1165087 (= (= (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) (toList!7532 lt!1974785)) (= lambda!237426 lambda!237413))))

(declare-fun bs!1165088 () Bool)

(assert (= bs!1165088 (and b!4828608 b!4828472)))

(assert (=> bs!1165088 (= (= (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) (toList!7532 lt!1974785)) (= lambda!237426 lambda!237391))))

(declare-fun bs!1165089 () Bool)

(assert (= bs!1165089 (and b!4828608 b!4828606)))

(assert (=> bs!1165089 (= (= (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) (t!362656 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)))) (= lambda!237426 lambda!237424))))

(declare-fun bs!1165090 () Bool)

(assert (= bs!1165090 (and b!4828608 b!4828519)))

(assert (=> bs!1165090 (= (= (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) (Cons!55036 (h!61470 (toList!7532 lt!1974785)) (t!362656 (toList!7532 lt!1974785)))) (= lambda!237426 lambda!237412))))

(declare-fun bs!1165091 () Bool)

(assert (= bs!1165091 (and b!4828608 b!4828605)))

(assert (=> bs!1165091 (= (= (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) (Cons!55036 (h!61470 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))) (t!362656 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))))) (= lambda!237426 lambda!237425))))

(assert (=> b!4828608 true))

(declare-fun bs!1165092 () Bool)

(declare-fun b!4828609 () Bool)

(assert (= bs!1165092 (and b!4828609 b!4828473)))

(declare-fun lambda!237427 () Int)

(assert (=> bs!1165092 (= lambda!237427 lambda!237392)))

(declare-fun bs!1165093 () Bool)

(assert (= bs!1165093 (and b!4828609 b!4828488)))

(assert (=> bs!1165093 (= lambda!237427 lambda!237397)))

(declare-fun bs!1165094 () Bool)

(assert (= bs!1165094 (and b!4828609 b!4828523)))

(assert (=> bs!1165094 (= lambda!237427 lambda!237414)))

(declare-fun d!1547397 () Bool)

(declare-fun e!3017187 () Bool)

(assert (=> d!1547397 e!3017187))

(declare-fun res!2056243 () Bool)

(assert (=> d!1547397 (=> (not res!2056243) (not e!3017187))))

(declare-fun lt!1975154 () List!55164)

(assert (=> d!1547397 (= res!2056243 (noDuplicate!967 lt!1975154))))

(declare-fun e!3017190 () List!55164)

(assert (=> d!1547397 (= lt!1975154 e!3017190)))

(declare-fun c!822740 () Bool)

(assert (=> d!1547397 (= c!822740 (is-Cons!55036 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))))))

(assert (=> d!1547397 (invariantList!1819 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)))))

(assert (=> d!1547397 (= (getKeysList!1165 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))) lt!1975154)))

(declare-fun b!4828602 () Bool)

(declare-fun e!3017189 () Unit!143378)

(declare-fun Unit!143446 () Unit!143378)

(assert (=> b!4828602 (= e!3017189 Unit!143446)))

(declare-fun b!4828603 () Bool)

(assert (=> b!4828603 (= e!3017190 Nil!55040)))

(declare-fun b!4828604 () Bool)

(assert (=> b!4828604 false))

(declare-fun Unit!143447 () Unit!143378)

(assert (=> b!4828604 (= e!3017189 Unit!143447)))

(assert (=> b!4828605 (= e!3017190 (Cons!55040 (_1!32449 (h!61470 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)))) (getKeysList!1165 (t!362656 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))))))))

(declare-fun c!822742 () Bool)

(assert (=> b!4828605 (= c!822742 (containsKey!4408 (t!362656 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))) (_1!32449 (h!61470 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))))))))

(declare-fun lt!1975156 () Unit!143378)

(assert (=> b!4828605 (= lt!1975156 e!3017189)))

(declare-fun c!822741 () Bool)

(assert (=> b!4828605 (= c!822741 (contains!18842 (getKeysList!1165 (t!362656 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)))) (_1!32449 (h!61470 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))))))))

(declare-fun lt!1975158 () Unit!143378)

(declare-fun e!3017188 () Unit!143378)

(assert (=> b!4828605 (= lt!1975158 e!3017188)))

(declare-fun lt!1975155 () List!55164)

(assert (=> b!4828605 (= lt!1975155 (getKeysList!1165 (t!362656 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)))))))

(declare-fun lt!1975159 () Unit!143378)

(assert (=> b!4828605 (= lt!1975159 (lemmaForallContainsAddHeadPreserves!381 (t!362656 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))) lt!1975155 (h!61470 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)))))))

(assert (=> b!4828605 (forall!12653 lt!1975155 lambda!237425)))

(declare-fun lt!1975157 () Unit!143378)

(assert (=> b!4828605 (= lt!1975157 lt!1975159)))

(assert (=> b!4828606 false))

(declare-fun lt!1975153 () Unit!143378)

(assert (=> b!4828606 (= lt!1975153 (forallContained!4398 (getKeysList!1165 (t!362656 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)))) lambda!237424 (_1!32449 (h!61470 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785))))))))

(declare-fun Unit!143448 () Unit!143378)

(assert (=> b!4828606 (= e!3017188 Unit!143448)))

(declare-fun b!4828607 () Bool)

(declare-fun Unit!143449 () Unit!143378)

(assert (=> b!4828607 (= e!3017188 Unit!143449)))

(declare-fun res!2056242 () Bool)

(assert (=> b!4828608 (=> (not res!2056242) (not e!3017187))))

(assert (=> b!4828608 (= res!2056242 (forall!12653 lt!1975154 lambda!237426))))

(assert (=> b!4828609 (= e!3017187 (= (content!9826 lt!1975154) (content!9826 (map!12601 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)) lambda!237427))))))

(declare-fun b!4828610 () Bool)

(declare-fun res!2056241 () Bool)

(assert (=> b!4828610 (=> (not res!2056241) (not e!3017187))))

(assert (=> b!4828610 (= res!2056241 (= (length!790 lt!1975154) (length!791 (toList!7532 (addToMapMapFromBucket!1818 (_2!32450 (h!61471 (toList!7531 lm!2325))) lt!1974785)))))))

(assert (= (and d!1547397 c!822740) b!4828605))

(assert (= (and d!1547397 (not c!822740)) b!4828603))

(assert (= (and b!4828605 c!822742) b!4828604))

(assert (= (and b!4828605 (not c!822742)) b!4828602))

(assert (= (and b!4828605 c!822741) b!4828606))

(assert (= (and b!4828605 (not c!822741)) b!4828607))

(assert (= (and d!1547397 res!2056243) b!4828610))

(assert (= (and b!4828610 res!2056241) b!4828608))

(assert (= (and b!4828608 res!2056242) b!4828609))

(declare-fun m!5820346 () Bool)

(assert (=> b!4828610 m!5820346))

(assert (=> b!4828610 m!5820118))

(declare-fun m!5820348 () Bool)

(assert (=> b!4828609 m!5820348))

(declare-fun m!5820350 () Bool)

(assert (=> b!4828609 m!5820350))

(assert (=> b!4828609 m!5820350))

(declare-fun m!5820352 () Bool)

(assert (=> b!4828609 m!5820352))

(declare-fun m!5820354 () Bool)

(assert (=> b!4828608 m!5820354))

(declare-fun m!5820356 () Bool)

(assert (=> b!4828606 m!5820356))

(assert (=> b!4828606 m!5820356))

(declare-fun m!5820358 () Bool)

(assert (=> b!4828606 m!5820358))

(assert (=> b!4828605 m!5820356))

(declare-fun m!5820360 () Bool)

(assert (=> b!4828605 m!5820360))

(declare-fun m!5820362 () Bool)

(assert (=> b!4828605 m!5820362))

(declare-fun m!5820364 () Bool)

(assert (=> b!4828605 m!5820364))

(assert (=> b!4828605 m!5820356))

(declare-fun m!5820366 () Bool)

(assert (=> b!4828605 m!5820366))

(declare-fun m!5820368 () Bool)

(assert (=> d!1547397 m!5820368))

(assert (=> d!1547397 m!5820092))

(assert (=> b!4828268 d!1547397))

(declare-fun d!1547399 () Bool)

(declare-fun res!2056244 () Bool)

(declare-fun e!3017191 () Bool)

(assert (=> d!1547399 (=> res!2056244 e!3017191)))

(assert (=> d!1547399 (= res!2056244 (is-Nil!55037 (t!362657 (toList!7531 lm!2325))))))

(assert (=> d!1547399 (= (forall!12649 (t!362657 (toList!7531 lm!2325)) lambda!237305) e!3017191)))

(declare-fun b!4828611 () Bool)

(declare-fun e!3017192 () Bool)

(assert (=> b!4828611 (= e!3017191 e!3017192)))

(declare-fun res!2056245 () Bool)

(assert (=> b!4828611 (=> (not res!2056245) (not e!3017192))))

(assert (=> b!4828611 (= res!2056245 (dynLambda!22230 lambda!237305 (h!61471 (t!362657 (toList!7531 lm!2325)))))))

(declare-fun b!4828612 () Bool)

(assert (=> b!4828612 (= e!3017192 (forall!12649 (t!362657 (t!362657 (toList!7531 lm!2325))) lambda!237305))))

(assert (= (and d!1547399 (not res!2056244)) b!4828611))

(assert (= (and b!4828611 res!2056245) b!4828612))

(declare-fun b_lambda!190203 () Bool)

(assert (=> (not b_lambda!190203) (not b!4828611)))

(declare-fun m!5820370 () Bool)

(assert (=> b!4828611 m!5820370))

(declare-fun m!5820372 () Bool)

(assert (=> b!4828612 m!5820372))

(assert (=> b!4828262 d!1547399))

(declare-fun d!1547401 () Bool)

(declare-fun res!2056246 () Bool)

(declare-fun e!3017193 () Bool)

(assert (=> d!1547401 (=> res!2056246 e!3017193)))

(assert (=> d!1547401 (= res!2056246 (is-Nil!55036 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))

(assert (=> d!1547401 (= (forall!12651 (_2!32450 (h!61471 (toList!7531 lm!2325))) lambda!237345) e!3017193)))

(declare-fun b!4828613 () Bool)

(declare-fun e!3017194 () Bool)

(assert (=> b!4828613 (= e!3017193 e!3017194)))

(declare-fun res!2056247 () Bool)

(assert (=> b!4828613 (=> (not res!2056247) (not e!3017194))))

(assert (=> b!4828613 (= res!2056247 (dynLambda!22232 lambda!237345 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))))))

(declare-fun b!4828614 () Bool)

(assert (=> b!4828614 (= e!3017194 (forall!12651 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325)))) lambda!237345))))

(assert (= (and d!1547401 (not res!2056246)) b!4828613))

(assert (= (and b!4828613 res!2056247) b!4828614))

(declare-fun b_lambda!190205 () Bool)

(assert (=> (not b_lambda!190205) (not b!4828613)))

(declare-fun m!5820374 () Bool)

(assert (=> b!4828613 m!5820374))

(declare-fun m!5820376 () Bool)

(assert (=> b!4828614 m!5820376))

(assert (=> d!1547251 d!1547401))

(assert (=> d!1547251 d!1547305))

(assert (=> b!4828370 d!1547365))

(assert (=> b!4828370 d!1547367))

(assert (=> b!4828270 d!1547329))

(assert (=> b!4828270 d!1547331))

(assert (=> b!4828365 d!1547393))

(assert (=> b!4828365 d!1547395))

(declare-fun tp_is_empty!34533 () Bool)

(declare-fun tp!1362793 () Bool)

(declare-fun b!4828619 () Bool)

(declare-fun e!3017197 () Bool)

(assert (=> b!4828619 (= e!3017197 (and tp_is_empty!34529 tp_is_empty!34533 tp!1362793))))

(assert (=> b!4828375 (= tp!1362783 e!3017197)))

(assert (= (and b!4828375 (is-Cons!55036 (_2!32450 (h!61471 (toList!7531 lm!2325))))) b!4828619))

(declare-fun b!4828620 () Bool)

(declare-fun e!3017198 () Bool)

(declare-fun tp!1362794 () Bool)

(declare-fun tp!1362795 () Bool)

(assert (=> b!4828620 (= e!3017198 (and tp!1362794 tp!1362795))))

(assert (=> b!4828375 (= tp!1362784 e!3017198)))

(assert (= (and b!4828375 (is-Cons!55037 (t!362657 (toList!7531 lm!2325)))) b!4828620))

(declare-fun b_lambda!190207 () Bool)

(assert (= b_lambda!190193 (or b!4828339 b_lambda!190207)))

(declare-fun bs!1165095 () Bool)

(declare-fun d!1547403 () Bool)

(assert (= bs!1165095 (and d!1547403 b!4828339)))

(assert (=> bs!1165095 (= (dynLambda!22232 lambda!237344 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) (contains!18838 lt!1974924 (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))))

(assert (=> bs!1165095 m!5819924))

(assert (=> b!4828554 d!1547403))

(declare-fun b_lambda!190209 () Bool)

(assert (= b_lambda!190185 (or d!1547267 b_lambda!190209)))

(declare-fun bs!1165096 () Bool)

(declare-fun d!1547405 () Bool)

(assert (= bs!1165096 (and d!1547405 d!1547267)))

(assert (=> bs!1165096 (= (dynLambda!22230 lambda!237348 (h!61471 (t!362657 (toList!7531 lm!2325)))) (noDuplicateKeys!2463 (_2!32450 (h!61471 (t!362657 (toList!7531 lm!2325))))))))

(assert (=> bs!1165096 m!5820154))

(assert (=> b!4828527 d!1547405))

(declare-fun b_lambda!190211 () Bool)

(assert (= b_lambda!190199 (or b!4828339 b_lambda!190211)))

(declare-fun bs!1165097 () Bool)

(declare-fun d!1547407 () Bool)

(assert (= bs!1165097 (and d!1547407 b!4828339)))

(assert (=> bs!1165097 (= (dynLambda!22232 lambda!237344 (h!61470 (toList!7532 lt!1974785))) (contains!18838 lt!1974924 (_1!32449 (h!61470 (toList!7532 lt!1974785)))))))

(declare-fun m!5820378 () Bool)

(assert (=> bs!1165097 m!5820378))

(assert (=> b!4828573 d!1547407))

(declare-fun b_lambda!190213 () Bool)

(assert (= b_lambda!190201 (or b!4828339 b_lambda!190213)))

(declare-fun bs!1165098 () Bool)

(declare-fun d!1547409 () Bool)

(assert (= bs!1165098 (and d!1547409 b!4828339)))

(assert (=> bs!1165098 (= (dynLambda!22232 lambda!237344 (h!61470 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325)))))) (contains!18838 lt!1974924 (_1!32449 (h!61470 (t!362656 (_2!32450 (h!61471 (toList!7531 lm!2325))))))))))

(declare-fun m!5820380 () Bool)

(assert (=> bs!1165098 m!5820380))

(assert (=> b!4828575 d!1547409))

(declare-fun b_lambda!190215 () Bool)

(assert (= b_lambda!190203 (or start!501234 b_lambda!190215)))

(declare-fun bs!1165099 () Bool)

(declare-fun d!1547411 () Bool)

(assert (= bs!1165099 (and d!1547411 start!501234)))

(assert (=> bs!1165099 (= (dynLambda!22230 lambda!237305 (h!61471 (t!362657 (toList!7531 lm!2325)))) (noDuplicateKeys!2463 (_2!32450 (h!61471 (t!362657 (toList!7531 lm!2325))))))))

(assert (=> bs!1165099 m!5820154))

(assert (=> b!4828611 d!1547411))

(declare-fun b_lambda!190217 () Bool)

(assert (= b_lambda!190205 (or d!1547251 b_lambda!190217)))

(declare-fun bs!1165100 () Bool)

(declare-fun d!1547413 () Bool)

(assert (= bs!1165100 (and d!1547413 d!1547251)))

(assert (=> bs!1165100 (= (dynLambda!22232 lambda!237345 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325))))) (contains!18838 lt!1974911 (_1!32449 (h!61470 (_2!32450 (h!61471 (toList!7531 lm!2325)))))))))

(declare-fun m!5820382 () Bool)

(assert (=> bs!1165100 m!5820382))

(assert (=> b!4828613 d!1547413))

(declare-fun b_lambda!190219 () Bool)

(assert (= b_lambda!190195 (or b!4828339 b_lambda!190219)))

(assert (=> d!1547373 d!1547403))

(declare-fun b_lambda!190221 () Bool)

(assert (= b_lambda!190197 (or b!4828339 b_lambda!190221)))

(declare-fun bs!1165101 () Bool)

(declare-fun d!1547415 () Bool)

(assert (= bs!1165101 (and d!1547415 b!4828339)))

(assert (=> bs!1165101 (= (dynLambda!22232 lambda!237344 (h!61470 (toList!7532 lt!1974926))) (contains!18838 lt!1974924 (_1!32449 (h!61470 (toList!7532 lt!1974926)))))))

(declare-fun m!5820384 () Bool)

(assert (=> bs!1165101 m!5820384))

(assert (=> b!4828570 d!1547415))

(declare-fun b_lambda!190223 () Bool)

(assert (= b_lambda!190187 (or d!1547251 b_lambda!190223)))

(declare-fun bs!1165102 () Bool)

(declare-fun d!1547417 () Bool)

(assert (= bs!1165102 (and d!1547417 d!1547251)))

(assert (=> bs!1165102 (= (dynLambda!22232 lambda!237345 (h!61470 (toList!7532 lt!1974785))) (contains!18838 lt!1974911 (_1!32449 (h!61470 (toList!7532 lt!1974785)))))))

(declare-fun m!5820386 () Bool)

(assert (=> bs!1165102 m!5820386))

(assert (=> b!4828533 d!1547417))

(declare-fun b_lambda!190225 () Bool)

(assert (= b_lambda!190183 (or d!1547271 b_lambda!190225)))

(declare-fun bs!1165103 () Bool)

(declare-fun d!1547419 () Bool)

(assert (= bs!1165103 (and d!1547419 d!1547271)))

(declare-fun allKeysSameHash!2012 (List!55160 (_ BitVec 64) Hashable!7295) Bool)

(assert (=> bs!1165103 (= (dynLambda!22230 lambda!237351 (h!61471 (toList!7531 lm!2325))) (allKeysSameHash!2012 (_2!32450 (h!61471 (toList!7531 lm!2325))) (_1!32450 (h!61471 (toList!7531 lm!2325))) hashF!1543))))

(declare-fun m!5820388 () Bool)

(assert (=> bs!1165103 m!5820388))

(assert (=> b!4828434 d!1547419))

(push 1)

(assert (not b!4828564))

(assert (not b!4828581))

(assert (not d!1547335))

(assert (not bm!336518))

(assert (not b!4828565))

(assert (not d!1547351))

(assert (not bs!1165100))

(assert (not b!4828586))

(assert (not d!1547339))

(assert (not b!4828458))

(assert (not b!4828620))

(assert (not d!1547317))

(assert (not bm!336512))

(assert (not d!1547327))

(assert (not d!1547303))

(assert (not bs!1165096))

(assert tp_is_empty!34529)

(assert (not b!4828612))

(assert (not d!1547365))

(assert (not b!4828596))

(assert (not b!4828443))

(assert (not b!4828536))

(assert (not b_lambda!190207))

(assert (not b!4828522))

(assert (not b!4828486))

(assert (not b!4828435))

(assert (not b!4828497))

(assert (not bm!336513))

(assert (not b!4828608))

(assert (not b!4828523))

(assert (not b!4828487))

(assert (not bm!336516))

(assert (not bs!1165097))

(assert (not b!4828567))

(assert (not d!1547349))

(assert (not b!4828571))

(assert (not d!1547389))

(assert (not b!4828583))

(assert (not d!1547299))

(assert (not d!1547363))

(assert (not b!4828520))

(assert (not b!4828609))

(assert (not b!4828538))

(assert (not b_lambda!190223))

(assert tp_is_empty!34533)

(assert (not bm!336517))

(assert (not b!4828577))

(assert (not b!4828493))

(assert (not b!4828593))

(assert (not b!4828534))

(assert (not d!1547397))

(assert (not d!1547391))

(assert (not b!4828587))

(assert (not d!1547313))

(assert (not b!4828610))

(assert (not bs!1165101))

(assert (not b!4828606))

(assert (not b!4828438))

(assert (not b!4828444))

(assert (not d!1547319))

(assert (not b!4828477))

(assert (not b!4828600))

(assert (not b!4828614))

(assert (not b!4828485))

(assert (not d!1547393))

(assert (not d!1547371))

(assert (not b!4828605))

(assert (not b!4828597))

(assert (not b!4828579))

(assert (not b!4828592))

(assert (not d!1547361))

(assert (not b_lambda!190221))

(assert (not b_lambda!190215))

(assert (not d!1547379))

(assert (not b!4828519))

(assert (not d!1547307))

(assert (not d!1547325))

(assert (not b_lambda!190191))

(assert (not b!4828528))

(assert (not b!4828524))

(assert (not b!4828427))

(assert (not d!1547323))

(assert (not bs!1165102))

(assert (not b!4828582))

(assert (not d!1547341))

(assert (not b!4828494))

(assert (not b!4828483))

(assert (not bs!1165099))

(assert (not b!4828569))

(assert (not bs!1165095))

(assert (not b!4828619))

(assert (not b!4828578))

(assert (not b!4828590))

(assert (not d!1547309))

(assert (not d!1547373))

(assert (not d!1547347))

(assert (not b!4828471))

(assert (not b!4828552))

(assert (not b!4828555))

(assert (not b!4828576))

(assert (not d!1547337))

(assert (not b!4828489))

(assert (not b_lambda!190211))

(assert (not b!4828472))

(assert (not d!1547333))

(assert (not d!1547329))

(assert (not b_lambda!190189))

(assert (not d!1547343))

(assert (not b!4828561))

(assert (not d!1547375))

(assert (not b!4828488))

(assert (not b!4828421))

(assert (not b_lambda!190213))

(assert (not b!4828480))

(assert (not b!4828588))

(assert (not b!4828473))

(assert (not b!4828584))

(assert (not b!4828491))

(assert (not bm!336519))

(assert (not b!4828574))

(assert (not b!4828464))

(assert (not b!4828455))

(assert (not b_lambda!190225))

(assert (not b!4828591))

(assert (not b_lambda!190219))

(assert (not b!4828560))

(assert (not bm!336514))

(assert (not b!4828433))

(assert (not b_lambda!190209))

(assert (not b_lambda!190177))

(assert (not d!1547387))

(assert (not d!1547385))

(assert (not b!4828541))

(assert (not b_lambda!190217))

(assert (not bs!1165098))

(assert (not bm!336515))

(assert (not bs!1165103))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

