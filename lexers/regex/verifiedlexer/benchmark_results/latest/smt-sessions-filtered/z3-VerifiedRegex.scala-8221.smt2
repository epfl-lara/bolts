; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!425028 () Bool)

(assert start!425028)

(declare-fun b!4377376 () Bool)

(declare-fun res!1802506 () Bool)

(declare-fun e!2724757 () Bool)

(assert (=> b!4377376 (=> (not res!1802506) (not e!2724757))))

(declare-datatypes ((V!10756 0))(
  ( (V!10757 (val!16679 Int)) )
))
(declare-datatypes ((K!10510 0))(
  ( (K!10511 (val!16680 Int)) )
))
(declare-datatypes ((tuple2!48678 0))(
  ( (tuple2!48679 (_1!27633 K!10510) (_2!27633 V!10756)) )
))
(declare-datatypes ((List!49274 0))(
  ( (Nil!49150) (Cons!49150 (h!54745 tuple2!48678) (t!356200 List!49274)) )
))
(declare-datatypes ((tuple2!48680 0))(
  ( (tuple2!48681 (_1!27634 (_ BitVec 64)) (_2!27634 List!49274)) )
))
(declare-datatypes ((List!49275 0))(
  ( (Nil!49151) (Cons!49151 (h!54746 tuple2!48680) (t!356201 List!49275)) )
))
(declare-datatypes ((ListLongMap!1787 0))(
  ( (ListLongMap!1788 (toList!3137 List!49275)) )
))
(declare-fun lm!1707 () ListLongMap!1787)

(declare-datatypes ((Hashable!4969 0))(
  ( (HashableExt!4968 (__x!30672 Int)) )
))
(declare-fun hashF!1247 () Hashable!4969)

(declare-fun allKeysSameHashInMap!681 (ListLongMap!1787 Hashable!4969) Bool)

(assert (=> b!4377376 (= res!1802506 (allKeysSameHashInMap!681 lm!1707 hashF!1247))))

(declare-fun b!4377377 () Bool)

(declare-fun res!1802503 () Bool)

(declare-fun e!2724755 () Bool)

(assert (=> b!4377377 (=> res!1802503 e!2724755)))

(declare-fun lt!1588007 () List!49274)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun allKeysSameHash!535 (List!49274 (_ BitVec 64) Hashable!4969) Bool)

(assert (=> b!4377377 (= res!1802503 (not (allKeysSameHash!535 lt!1588007 hash!377 hashF!1247)))))

(declare-fun res!1802507 () Bool)

(assert (=> start!425028 (=> (not res!1802507) (not e!2724757))))

(declare-fun lambda!144919 () Int)

(declare-fun forall!9267 (List!49275 Int) Bool)

(assert (=> start!425028 (= res!1802507 (forall!9267 (toList!3137 lm!1707) lambda!144919))))

(assert (=> start!425028 e!2724757))

(declare-fun e!2724758 () Bool)

(assert (=> start!425028 e!2724758))

(assert (=> start!425028 true))

(declare-fun e!2724756 () Bool)

(declare-fun inv!64696 (ListLongMap!1787) Bool)

(assert (=> start!425028 (and (inv!64696 lm!1707) e!2724756)))

(declare-fun tp_is_empty!25545 () Bool)

(assert (=> start!425028 tp_is_empty!25545))

(declare-fun tp_is_empty!25547 () Bool)

(assert (=> start!425028 tp_is_empty!25547))

(declare-fun b!4377378 () Bool)

(declare-fun e!2724750 () Bool)

(assert (=> b!4377378 (= e!2724750 e!2724755)))

(declare-fun res!1802508 () Bool)

(assert (=> b!4377378 (=> res!1802508 e!2724755)))

(assert (=> b!4377378 (= res!1802508 (not (forall!9267 (toList!3137 lm!1707) lambda!144919)))))

(declare-fun e!2724749 () Bool)

(assert (=> b!4377378 e!2724749))

(declare-fun res!1802497 () Bool)

(assert (=> b!4377378 (=> (not res!1802497) (not e!2724749))))

(declare-fun lt!1588019 () List!49274)

(assert (=> b!4377378 (= res!1802497 (= lt!1588007 lt!1588019))))

(declare-fun lt!1588000 () ListLongMap!1787)

(declare-fun +!785 (ListLongMap!1787 tuple2!48680) ListLongMap!1787)

(assert (=> b!4377378 (= lt!1588000 (+!785 lm!1707 (tuple2!48681 hash!377 lt!1588007)))))

(declare-fun newBucket!200 () List!49274)

(declare-fun tail!7070 (List!49274) List!49274)

(assert (=> b!4377378 (= lt!1588007 (tail!7070 newBucket!200))))

(declare-fun e!2724752 () Bool)

(assert (=> b!4377378 e!2724752))

(declare-fun res!1802500 () Bool)

(assert (=> b!4377378 (=> (not res!1802500) (not e!2724752))))

(declare-datatypes ((ListMap!2381 0))(
  ( (ListMap!2382 (toList!3138 List!49274)) )
))
(declare-fun lt!1588020 () ListMap!2381)

(declare-fun lt!1588010 () ListMap!2381)

(declare-fun eq!315 (ListMap!2381 ListMap!2381) Bool)

(assert (=> b!4377378 (= res!1802500 (eq!315 lt!1588020 lt!1588010))))

(declare-fun lt!1588013 () ListMap!2381)

(declare-fun lt!1588015 () tuple2!48678)

(declare-fun +!786 (ListMap!2381 tuple2!48678) ListMap!2381)

(assert (=> b!4377378 (= lt!1588010 (+!786 lt!1588013 lt!1588015))))

(declare-fun lt!1588017 () ListMap!2381)

(declare-fun addToMapMapFromBucket!258 (List!49274 ListMap!2381) ListMap!2381)

(assert (=> b!4377378 (= lt!1588013 (addToMapMapFromBucket!258 lt!1588019 lt!1588017))))

(declare-datatypes ((Unit!75016 0))(
  ( (Unit!75017) )
))
(declare-fun lt!1588004 () Unit!75016)

(declare-fun key!3918 () K!10510)

(declare-fun newValue!99 () V!10756)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!124 (ListMap!2381 K!10510 V!10756 List!49274) Unit!75016)

(assert (=> b!4377378 (= lt!1588004 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!124 lt!1588017 key!3918 newValue!99 lt!1588019))))

(declare-fun lt!1587999 () ListMap!2381)

(assert (=> b!4377378 (= lt!1587999 lt!1588020)))

(assert (=> b!4377378 (= lt!1588020 (addToMapMapFromBucket!258 lt!1588019 (+!786 lt!1588017 lt!1588015)))))

(declare-fun lt!1588011 () ListMap!2381)

(assert (=> b!4377378 (= lt!1588011 lt!1587999)))

(declare-fun lt!1588009 () List!49274)

(assert (=> b!4377378 (= lt!1587999 (addToMapMapFromBucket!258 lt!1588009 lt!1588017))))

(assert (=> b!4377378 (= lt!1588011 (addToMapMapFromBucket!258 newBucket!200 lt!1588017))))

(declare-fun lt!1588005 () ListLongMap!1787)

(declare-fun extractMap!636 (List!49275) ListMap!2381)

(assert (=> b!4377378 (= lt!1588011 (extractMap!636 (toList!3137 lt!1588005)))))

(assert (=> b!4377378 (= lt!1588017 (extractMap!636 (t!356201 (toList!3137 lm!1707))))))

(declare-fun b!4377379 () Bool)

(declare-fun tp!1331149 () Bool)

(assert (=> b!4377379 (= e!2724758 (and tp_is_empty!25545 tp_is_empty!25547 tp!1331149))))

(declare-fun b!4377380 () Bool)

(declare-fun tp!1331150 () Bool)

(assert (=> b!4377380 (= e!2724756 tp!1331150)))

(declare-fun b!4377381 () Bool)

(declare-fun res!1802504 () Bool)

(declare-fun e!2724754 () Bool)

(assert (=> b!4377381 (=> (not res!1802504) (not e!2724754))))

(assert (=> b!4377381 (= res!1802504 (forall!9267 (toList!3137 lt!1588005) lambda!144919))))

(declare-fun b!4377382 () Bool)

(assert (=> b!4377382 (= e!2724749 (= lt!1588013 (extractMap!636 (toList!3137 lt!1588000))))))

(declare-fun b!4377383 () Bool)

(declare-fun res!1802501 () Bool)

(declare-fun e!2724751 () Bool)

(assert (=> b!4377383 (=> (not res!1802501) (not e!2724751))))

(declare-fun contains!11477 (ListMap!2381 K!10510) Bool)

(assert (=> b!4377383 (= res!1802501 (contains!11477 (extractMap!636 (toList!3137 lm!1707)) key!3918))))

(declare-fun b!4377384 () Bool)

(declare-fun e!2724753 () Bool)

(assert (=> b!4377384 (= e!2724753 e!2724750)))

(declare-fun res!1802505 () Bool)

(assert (=> b!4377384 (=> res!1802505 e!2724750)))

(get-info :version)

(assert (=> b!4377384 (= res!1802505 (or (not ((_ is Cons!49151) (toList!3137 lm!1707))) (not (= (_1!27634 (h!54746 (toList!3137 lm!1707))) hash!377))))))

(assert (=> b!4377384 e!2724754))

(declare-fun res!1802498 () Bool)

(assert (=> b!4377384 (=> (not res!1802498) (not e!2724754))))

(assert (=> b!4377384 (= res!1802498 (forall!9267 (toList!3137 lt!1588005) lambda!144919))))

(declare-fun lt!1588012 () tuple2!48680)

(assert (=> b!4377384 (= lt!1588005 (+!785 lm!1707 lt!1588012))))

(assert (=> b!4377384 (= lt!1588012 (tuple2!48681 hash!377 newBucket!200))))

(declare-fun lt!1588003 () Unit!75016)

(declare-fun addValidProp!223 (ListLongMap!1787 Int (_ BitVec 64) List!49274) Unit!75016)

(assert (=> b!4377384 (= lt!1588003 (addValidProp!223 lm!1707 lambda!144919 hash!377 newBucket!200))))

(assert (=> b!4377384 (forall!9267 (toList!3137 lm!1707) lambda!144919)))

(declare-fun b!4377385 () Bool)

(assert (=> b!4377385 (= e!2724751 (not e!2724753))))

(declare-fun res!1802495 () Bool)

(assert (=> b!4377385 (=> res!1802495 e!2724753)))

(assert (=> b!4377385 (= res!1802495 (not (= newBucket!200 lt!1588009)))))

(assert (=> b!4377385 (= lt!1588009 (Cons!49150 lt!1588015 lt!1588019))))

(declare-fun lt!1588001 () List!49274)

(declare-fun removePairForKey!545 (List!49274 K!10510) List!49274)

(assert (=> b!4377385 (= lt!1588019 (removePairForKey!545 lt!1588001 key!3918))))

(assert (=> b!4377385 (= lt!1588015 (tuple2!48679 key!3918 newValue!99))))

(declare-fun lt!1588016 () tuple2!48680)

(declare-fun lt!1588006 () Unit!75016)

(declare-fun forallContained!1905 (List!49275 Int tuple2!48680) Unit!75016)

(assert (=> b!4377385 (= lt!1588006 (forallContained!1905 (toList!3137 lm!1707) lambda!144919 lt!1588016))))

(declare-fun contains!11478 (List!49275 tuple2!48680) Bool)

(assert (=> b!4377385 (contains!11478 (toList!3137 lm!1707) lt!1588016)))

(assert (=> b!4377385 (= lt!1588016 (tuple2!48681 hash!377 lt!1588001))))

(declare-fun lt!1588002 () Unit!75016)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!422 (List!49275 (_ BitVec 64) List!49274) Unit!75016)

(assert (=> b!4377385 (= lt!1588002 (lemmaGetValueByKeyImpliesContainsTuple!422 (toList!3137 lm!1707) hash!377 lt!1588001))))

(declare-fun apply!11429 (ListLongMap!1787 (_ BitVec 64)) List!49274)

(assert (=> b!4377385 (= lt!1588001 (apply!11429 lm!1707 hash!377))))

(declare-fun b!4377386 () Bool)

(assert (=> b!4377386 (= e!2724757 e!2724751)))

(declare-fun res!1802499 () Bool)

(assert (=> b!4377386 (=> (not res!1802499) (not e!2724751))))

(declare-fun lt!1588008 () (_ BitVec 64))

(assert (=> b!4377386 (= res!1802499 (= lt!1588008 hash!377))))

(declare-fun hash!1742 (Hashable!4969 K!10510) (_ BitVec 64))

(assert (=> b!4377386 (= lt!1588008 (hash!1742 hashF!1247 key!3918))))

(declare-fun b!4377387 () Bool)

(declare-fun res!1802502 () Bool)

(assert (=> b!4377387 (=> (not res!1802502) (not e!2724751))))

(declare-fun contains!11479 (ListLongMap!1787 (_ BitVec 64)) Bool)

(assert (=> b!4377387 (= res!1802502 (contains!11479 lm!1707 hash!377))))

(declare-fun b!4377388 () Bool)

(assert (=> b!4377388 (= e!2724752 (eq!315 lt!1587999 lt!1588010))))

(declare-fun b!4377389 () Bool)

(assert (=> b!4377389 (= e!2724754 (or (not ((_ is Cons!49151) (toList!3137 lm!1707))) (not (= (_1!27634 (h!54746 (toList!3137 lm!1707))) hash!377)) (= lt!1588005 (ListLongMap!1788 (Cons!49151 lt!1588012 (t!356201 (toList!3137 lm!1707)))))))))

(declare-fun b!4377390 () Bool)

(declare-fun noDuplicateKeys!577 (List!49274) Bool)

(assert (=> b!4377390 (= e!2724755 (noDuplicateKeys!577 lt!1588007))))

(declare-fun lt!1588018 () Unit!75016)

(assert (=> b!4377390 (= lt!1588018 (forallContained!1905 (toList!3137 lm!1707) lambda!144919 lt!1588016))))

(assert (=> b!4377390 (contains!11479 lm!1707 lt!1588008)))

(declare-fun lt!1588014 () Unit!75016)

(declare-fun lemmaInGenMapThenLongMapContainsHash!56 (ListLongMap!1787 K!10510 Hashable!4969) Unit!75016)

(assert (=> b!4377390 (= lt!1588014 (lemmaInGenMapThenLongMapContainsHash!56 lm!1707 key!3918 hashF!1247))))

(declare-fun b!4377391 () Bool)

(declare-fun res!1802496 () Bool)

(assert (=> b!4377391 (=> (not res!1802496) (not e!2724751))))

(assert (=> b!4377391 (= res!1802496 (allKeysSameHash!535 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4377392 () Bool)

(declare-fun res!1802509 () Bool)

(assert (=> b!4377392 (=> res!1802509 e!2724753)))

(assert (=> b!4377392 (= res!1802509 (not (noDuplicateKeys!577 newBucket!200)))))

(assert (= (and start!425028 res!1802507) b!4377376))

(assert (= (and b!4377376 res!1802506) b!4377386))

(assert (= (and b!4377386 res!1802499) b!4377391))

(assert (= (and b!4377391 res!1802496) b!4377383))

(assert (= (and b!4377383 res!1802501) b!4377387))

(assert (= (and b!4377387 res!1802502) b!4377385))

(assert (= (and b!4377385 (not res!1802495)) b!4377392))

(assert (= (and b!4377392 (not res!1802509)) b!4377384))

(assert (= (and b!4377384 res!1802498) b!4377381))

(assert (= (and b!4377381 res!1802504) b!4377389))

(assert (= (and b!4377384 (not res!1802505)) b!4377378))

(assert (= (and b!4377378 res!1802500) b!4377388))

(assert (= (and b!4377378 res!1802497) b!4377382))

(assert (= (and b!4377378 (not res!1802508)) b!4377377))

(assert (= (and b!4377377 (not res!1802503)) b!4377390))

(assert (= (and start!425028 ((_ is Cons!49150) newBucket!200)) b!4377379))

(assert (= start!425028 b!4377380))

(declare-fun m!5012123 () Bool)

(assert (=> start!425028 m!5012123))

(declare-fun m!5012125 () Bool)

(assert (=> start!425028 m!5012125))

(declare-fun m!5012127 () Bool)

(assert (=> b!4377391 m!5012127))

(declare-fun m!5012129 () Bool)

(assert (=> b!4377386 m!5012129))

(declare-fun m!5012131 () Bool)

(assert (=> b!4377388 m!5012131))

(declare-fun m!5012133 () Bool)

(assert (=> b!4377392 m!5012133))

(declare-fun m!5012135 () Bool)

(assert (=> b!4377378 m!5012135))

(declare-fun m!5012137 () Bool)

(assert (=> b!4377378 m!5012137))

(declare-fun m!5012139 () Bool)

(assert (=> b!4377378 m!5012139))

(declare-fun m!5012141 () Bool)

(assert (=> b!4377378 m!5012141))

(declare-fun m!5012143 () Bool)

(assert (=> b!4377378 m!5012143))

(assert (=> b!4377378 m!5012141))

(declare-fun m!5012145 () Bool)

(assert (=> b!4377378 m!5012145))

(declare-fun m!5012147 () Bool)

(assert (=> b!4377378 m!5012147))

(assert (=> b!4377378 m!5012123))

(declare-fun m!5012149 () Bool)

(assert (=> b!4377378 m!5012149))

(declare-fun m!5012151 () Bool)

(assert (=> b!4377378 m!5012151))

(declare-fun m!5012153 () Bool)

(assert (=> b!4377378 m!5012153))

(declare-fun m!5012155 () Bool)

(assert (=> b!4377378 m!5012155))

(declare-fun m!5012157 () Bool)

(assert (=> b!4377378 m!5012157))

(declare-fun m!5012159 () Bool)

(assert (=> b!4377376 m!5012159))

(declare-fun m!5012161 () Bool)

(assert (=> b!4377387 m!5012161))

(declare-fun m!5012163 () Bool)

(assert (=> b!4377377 m!5012163))

(declare-fun m!5012165 () Bool)

(assert (=> b!4377383 m!5012165))

(assert (=> b!4377383 m!5012165))

(declare-fun m!5012167 () Bool)

(assert (=> b!4377383 m!5012167))

(declare-fun m!5012169 () Bool)

(assert (=> b!4377384 m!5012169))

(declare-fun m!5012171 () Bool)

(assert (=> b!4377384 m!5012171))

(declare-fun m!5012173 () Bool)

(assert (=> b!4377384 m!5012173))

(assert (=> b!4377384 m!5012123))

(assert (=> b!4377381 m!5012169))

(declare-fun m!5012175 () Bool)

(assert (=> b!4377390 m!5012175))

(declare-fun m!5012177 () Bool)

(assert (=> b!4377390 m!5012177))

(declare-fun m!5012179 () Bool)

(assert (=> b!4377390 m!5012179))

(declare-fun m!5012181 () Bool)

(assert (=> b!4377390 m!5012181))

(declare-fun m!5012183 () Bool)

(assert (=> b!4377382 m!5012183))

(assert (=> b!4377385 m!5012177))

(declare-fun m!5012185 () Bool)

(assert (=> b!4377385 m!5012185))

(declare-fun m!5012187 () Bool)

(assert (=> b!4377385 m!5012187))

(declare-fun m!5012189 () Bool)

(assert (=> b!4377385 m!5012189))

(declare-fun m!5012191 () Bool)

(assert (=> b!4377385 m!5012191))

(check-sat (not b!4377376) (not b!4377384) (not b!4377383) (not b!4377377) (not b!4377385) (not b!4377378) (not start!425028) (not b!4377387) (not b!4377386) tp_is_empty!25545 (not b!4377382) (not b!4377392) (not b!4377390) (not b!4377380) tp_is_empty!25547 (not b!4377391) (not b!4377388) (not b!4377379) (not b!4377381))
(check-sat)
(get-model)

(declare-fun d!1302988 () Bool)

(declare-fun hash!1743 (Hashable!4969 K!10510) (_ BitVec 64))

(assert (=> d!1302988 (= (hash!1742 hashF!1247 key!3918) (hash!1743 hashF!1247 key!3918))))

(declare-fun bs!660121 () Bool)

(assert (= bs!660121 d!1302988))

(declare-fun m!5012193 () Bool)

(assert (=> bs!660121 m!5012193))

(assert (=> b!4377386 d!1302988))

(declare-fun d!1302990 () Bool)

(declare-fun res!1802514 () Bool)

(declare-fun e!2724763 () Bool)

(assert (=> d!1302990 (=> res!1802514 e!2724763)))

(assert (=> d!1302990 (= res!1802514 ((_ is Nil!49151) (toList!3137 lt!1588005)))))

(assert (=> d!1302990 (= (forall!9267 (toList!3137 lt!1588005) lambda!144919) e!2724763)))

(declare-fun b!4377397 () Bool)

(declare-fun e!2724764 () Bool)

(assert (=> b!4377397 (= e!2724763 e!2724764)))

(declare-fun res!1802515 () Bool)

(assert (=> b!4377397 (=> (not res!1802515) (not e!2724764))))

(declare-fun dynLambda!20706 (Int tuple2!48680) Bool)

(assert (=> b!4377397 (= res!1802515 (dynLambda!20706 lambda!144919 (h!54746 (toList!3137 lt!1588005))))))

(declare-fun b!4377398 () Bool)

(assert (=> b!4377398 (= e!2724764 (forall!9267 (t!356201 (toList!3137 lt!1588005)) lambda!144919))))

(assert (= (and d!1302990 (not res!1802514)) b!4377397))

(assert (= (and b!4377397 res!1802515) b!4377398))

(declare-fun b_lambda!134881 () Bool)

(assert (=> (not b_lambda!134881) (not b!4377397)))

(declare-fun m!5012195 () Bool)

(assert (=> b!4377397 m!5012195))

(declare-fun m!5012197 () Bool)

(assert (=> b!4377398 m!5012197))

(assert (=> b!4377384 d!1302990))

(declare-fun d!1302992 () Bool)

(declare-fun e!2724767 () Bool)

(assert (=> d!1302992 e!2724767))

(declare-fun res!1802520 () Bool)

(assert (=> d!1302992 (=> (not res!1802520) (not e!2724767))))

(declare-fun lt!1588032 () ListLongMap!1787)

(assert (=> d!1302992 (= res!1802520 (contains!11479 lt!1588032 (_1!27634 lt!1588012)))))

(declare-fun lt!1588029 () List!49275)

(assert (=> d!1302992 (= lt!1588032 (ListLongMap!1788 lt!1588029))))

(declare-fun lt!1588031 () Unit!75016)

(declare-fun lt!1588030 () Unit!75016)

(assert (=> d!1302992 (= lt!1588031 lt!1588030)))

(declare-datatypes ((Option!10553 0))(
  ( (None!10552) (Some!10552 (v!43551 List!49274)) )
))
(declare-fun getValueByKey!539 (List!49275 (_ BitVec 64)) Option!10553)

(assert (=> d!1302992 (= (getValueByKey!539 lt!1588029 (_1!27634 lt!1588012)) (Some!10552 (_2!27634 lt!1588012)))))

(declare-fun lemmaContainsTupThenGetReturnValue!303 (List!49275 (_ BitVec 64) List!49274) Unit!75016)

(assert (=> d!1302992 (= lt!1588030 (lemmaContainsTupThenGetReturnValue!303 lt!1588029 (_1!27634 lt!1588012) (_2!27634 lt!1588012)))))

(declare-fun insertStrictlySorted!174 (List!49275 (_ BitVec 64) List!49274) List!49275)

(assert (=> d!1302992 (= lt!1588029 (insertStrictlySorted!174 (toList!3137 lm!1707) (_1!27634 lt!1588012) (_2!27634 lt!1588012)))))

(assert (=> d!1302992 (= (+!785 lm!1707 lt!1588012) lt!1588032)))

(declare-fun b!4377403 () Bool)

(declare-fun res!1802521 () Bool)

(assert (=> b!4377403 (=> (not res!1802521) (not e!2724767))))

(assert (=> b!4377403 (= res!1802521 (= (getValueByKey!539 (toList!3137 lt!1588032) (_1!27634 lt!1588012)) (Some!10552 (_2!27634 lt!1588012))))))

(declare-fun b!4377404 () Bool)

(assert (=> b!4377404 (= e!2724767 (contains!11478 (toList!3137 lt!1588032) lt!1588012))))

(assert (= (and d!1302992 res!1802520) b!4377403))

(assert (= (and b!4377403 res!1802521) b!4377404))

(declare-fun m!5012199 () Bool)

(assert (=> d!1302992 m!5012199))

(declare-fun m!5012201 () Bool)

(assert (=> d!1302992 m!5012201))

(declare-fun m!5012203 () Bool)

(assert (=> d!1302992 m!5012203))

(declare-fun m!5012205 () Bool)

(assert (=> d!1302992 m!5012205))

(declare-fun m!5012207 () Bool)

(assert (=> b!4377403 m!5012207))

(declare-fun m!5012209 () Bool)

(assert (=> b!4377404 m!5012209))

(assert (=> b!4377384 d!1302992))

(declare-fun d!1302994 () Bool)

(assert (=> d!1302994 (forall!9267 (toList!3137 (+!785 lm!1707 (tuple2!48681 hash!377 newBucket!200))) lambda!144919)))

(declare-fun lt!1588035 () Unit!75016)

(declare-fun choose!27281 (ListLongMap!1787 Int (_ BitVec 64) List!49274) Unit!75016)

(assert (=> d!1302994 (= lt!1588035 (choose!27281 lm!1707 lambda!144919 hash!377 newBucket!200))))

(declare-fun e!2724774 () Bool)

(assert (=> d!1302994 e!2724774))

(declare-fun res!1802528 () Bool)

(assert (=> d!1302994 (=> (not res!1802528) (not e!2724774))))

(assert (=> d!1302994 (= res!1802528 (forall!9267 (toList!3137 lm!1707) lambda!144919))))

(assert (=> d!1302994 (= (addValidProp!223 lm!1707 lambda!144919 hash!377 newBucket!200) lt!1588035)))

(declare-fun b!4377412 () Bool)

(assert (=> b!4377412 (= e!2724774 (dynLambda!20706 lambda!144919 (tuple2!48681 hash!377 newBucket!200)))))

(assert (= (and d!1302994 res!1802528) b!4377412))

(declare-fun b_lambda!134883 () Bool)

(assert (=> (not b_lambda!134883) (not b!4377412)))

(declare-fun m!5012211 () Bool)

(assert (=> d!1302994 m!5012211))

(declare-fun m!5012213 () Bool)

(assert (=> d!1302994 m!5012213))

(declare-fun m!5012215 () Bool)

(assert (=> d!1302994 m!5012215))

(assert (=> d!1302994 m!5012123))

(declare-fun m!5012217 () Bool)

(assert (=> b!4377412 m!5012217))

(assert (=> b!4377384 d!1302994))

(declare-fun d!1302998 () Bool)

(declare-fun res!1802531 () Bool)

(declare-fun e!2724777 () Bool)

(assert (=> d!1302998 (=> res!1802531 e!2724777)))

(assert (=> d!1302998 (= res!1802531 ((_ is Nil!49151) (toList!3137 lm!1707)))))

(assert (=> d!1302998 (= (forall!9267 (toList!3137 lm!1707) lambda!144919) e!2724777)))

(declare-fun b!4377415 () Bool)

(declare-fun e!2724778 () Bool)

(assert (=> b!4377415 (= e!2724777 e!2724778)))

(declare-fun res!1802532 () Bool)

(assert (=> b!4377415 (=> (not res!1802532) (not e!2724778))))

(assert (=> b!4377415 (= res!1802532 (dynLambda!20706 lambda!144919 (h!54746 (toList!3137 lm!1707))))))

(declare-fun b!4377416 () Bool)

(assert (=> b!4377416 (= e!2724778 (forall!9267 (t!356201 (toList!3137 lm!1707)) lambda!144919))))

(assert (= (and d!1302998 (not res!1802531)) b!4377415))

(assert (= (and b!4377415 res!1802532) b!4377416))

(declare-fun b_lambda!134885 () Bool)

(assert (=> (not b_lambda!134885) (not b!4377415)))

(declare-fun m!5012223 () Bool)

(assert (=> b!4377415 m!5012223))

(declare-fun m!5012225 () Bool)

(assert (=> b!4377416 m!5012225))

(assert (=> b!4377384 d!1302998))

(declare-fun d!1303002 () Bool)

(declare-fun get!15981 (Option!10553) List!49274)

(assert (=> d!1303002 (= (apply!11429 lm!1707 hash!377) (get!15981 (getValueByKey!539 (toList!3137 lm!1707) hash!377)))))

(declare-fun bs!660122 () Bool)

(assert (= bs!660122 d!1303002))

(declare-fun m!5012227 () Bool)

(assert (=> bs!660122 m!5012227))

(assert (=> bs!660122 m!5012227))

(declare-fun m!5012229 () Bool)

(assert (=> bs!660122 m!5012229))

(assert (=> b!4377385 d!1303002))

(declare-fun b!4377429 () Bool)

(declare-fun e!2724787 () List!49274)

(declare-fun e!2724786 () List!49274)

(assert (=> b!4377429 (= e!2724787 e!2724786)))

(declare-fun c!744385 () Bool)

(assert (=> b!4377429 (= c!744385 ((_ is Cons!49150) lt!1588001))))

(declare-fun d!1303004 () Bool)

(declare-fun lt!1588041 () List!49274)

(declare-fun containsKey!841 (List!49274 K!10510) Bool)

(assert (=> d!1303004 (not (containsKey!841 lt!1588041 key!3918))))

(assert (=> d!1303004 (= lt!1588041 e!2724787)))

(declare-fun c!744386 () Bool)

(assert (=> d!1303004 (= c!744386 (and ((_ is Cons!49150) lt!1588001) (= (_1!27633 (h!54745 lt!1588001)) key!3918)))))

(assert (=> d!1303004 (noDuplicateKeys!577 lt!1588001)))

(assert (=> d!1303004 (= (removePairForKey!545 lt!1588001 key!3918) lt!1588041)))

(declare-fun b!4377428 () Bool)

(assert (=> b!4377428 (= e!2724787 (t!356200 lt!1588001))))

(declare-fun b!4377430 () Bool)

(assert (=> b!4377430 (= e!2724786 (Cons!49150 (h!54745 lt!1588001) (removePairForKey!545 (t!356200 lt!1588001) key!3918)))))

(declare-fun b!4377431 () Bool)

(assert (=> b!4377431 (= e!2724786 Nil!49150)))

(assert (= (and d!1303004 c!744386) b!4377428))

(assert (= (and d!1303004 (not c!744386)) b!4377429))

(assert (= (and b!4377429 c!744385) b!4377430))

(assert (= (and b!4377429 (not c!744385)) b!4377431))

(declare-fun m!5012235 () Bool)

(assert (=> d!1303004 m!5012235))

(declare-fun m!5012237 () Bool)

(assert (=> d!1303004 m!5012237))

(declare-fun m!5012239 () Bool)

(assert (=> b!4377430 m!5012239))

(assert (=> b!4377385 d!1303004))

(declare-fun d!1303008 () Bool)

(declare-fun lt!1588052 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7805 (List!49275) (InoxSet tuple2!48680))

(assert (=> d!1303008 (= lt!1588052 (select (content!7805 (toList!3137 lm!1707)) lt!1588016))))

(declare-fun e!2724795 () Bool)

(assert (=> d!1303008 (= lt!1588052 e!2724795)))

(declare-fun res!1802541 () Bool)

(assert (=> d!1303008 (=> (not res!1802541) (not e!2724795))))

(assert (=> d!1303008 (= res!1802541 ((_ is Cons!49151) (toList!3137 lm!1707)))))

(assert (=> d!1303008 (= (contains!11478 (toList!3137 lm!1707) lt!1588016) lt!1588052)))

(declare-fun b!4377440 () Bool)

(declare-fun e!2724794 () Bool)

(assert (=> b!4377440 (= e!2724795 e!2724794)))

(declare-fun res!1802540 () Bool)

(assert (=> b!4377440 (=> res!1802540 e!2724794)))

(assert (=> b!4377440 (= res!1802540 (= (h!54746 (toList!3137 lm!1707)) lt!1588016))))

(declare-fun b!4377441 () Bool)

(assert (=> b!4377441 (= e!2724794 (contains!11478 (t!356201 (toList!3137 lm!1707)) lt!1588016))))

(assert (= (and d!1303008 res!1802541) b!4377440))

(assert (= (and b!4377440 (not res!1802540)) b!4377441))

(declare-fun m!5012241 () Bool)

(assert (=> d!1303008 m!5012241))

(declare-fun m!5012243 () Bool)

(assert (=> d!1303008 m!5012243))

(declare-fun m!5012245 () Bool)

(assert (=> b!4377441 m!5012245))

(assert (=> b!4377385 d!1303008))

(declare-fun d!1303010 () Bool)

(assert (=> d!1303010 (dynLambda!20706 lambda!144919 lt!1588016)))

(declare-fun lt!1588059 () Unit!75016)

(declare-fun choose!27283 (List!49275 Int tuple2!48680) Unit!75016)

(assert (=> d!1303010 (= lt!1588059 (choose!27283 (toList!3137 lm!1707) lambda!144919 lt!1588016))))

(declare-fun e!2724802 () Bool)

(assert (=> d!1303010 e!2724802))

(declare-fun res!1802547 () Bool)

(assert (=> d!1303010 (=> (not res!1802547) (not e!2724802))))

(assert (=> d!1303010 (= res!1802547 (forall!9267 (toList!3137 lm!1707) lambda!144919))))

(assert (=> d!1303010 (= (forallContained!1905 (toList!3137 lm!1707) lambda!144919 lt!1588016) lt!1588059)))

(declare-fun b!4377449 () Bool)

(assert (=> b!4377449 (= e!2724802 (contains!11478 (toList!3137 lm!1707) lt!1588016))))

(assert (= (and d!1303010 res!1802547) b!4377449))

(declare-fun b_lambda!134889 () Bool)

(assert (=> (not b_lambda!134889) (not d!1303010)))

(declare-fun m!5012255 () Bool)

(assert (=> d!1303010 m!5012255))

(declare-fun m!5012257 () Bool)

(assert (=> d!1303010 m!5012257))

(assert (=> d!1303010 m!5012123))

(assert (=> b!4377449 m!5012191))

(assert (=> b!4377385 d!1303010))

(declare-fun d!1303014 () Bool)

(assert (=> d!1303014 (contains!11478 (toList!3137 lm!1707) (tuple2!48681 hash!377 lt!1588001))))

(declare-fun lt!1588065 () Unit!75016)

(declare-fun choose!27285 (List!49275 (_ BitVec 64) List!49274) Unit!75016)

(assert (=> d!1303014 (= lt!1588065 (choose!27285 (toList!3137 lm!1707) hash!377 lt!1588001))))

(declare-fun e!2724805 () Bool)

(assert (=> d!1303014 e!2724805))

(declare-fun res!1802550 () Bool)

(assert (=> d!1303014 (=> (not res!1802550) (not e!2724805))))

(declare-fun isStrictlySorted!147 (List!49275) Bool)

(assert (=> d!1303014 (= res!1802550 (isStrictlySorted!147 (toList!3137 lm!1707)))))

(assert (=> d!1303014 (= (lemmaGetValueByKeyImpliesContainsTuple!422 (toList!3137 lm!1707) hash!377 lt!1588001) lt!1588065)))

(declare-fun b!4377452 () Bool)

(assert (=> b!4377452 (= e!2724805 (= (getValueByKey!539 (toList!3137 lm!1707) hash!377) (Some!10552 lt!1588001)))))

(assert (= (and d!1303014 res!1802550) b!4377452))

(declare-fun m!5012265 () Bool)

(assert (=> d!1303014 m!5012265))

(declare-fun m!5012267 () Bool)

(assert (=> d!1303014 m!5012267))

(declare-fun m!5012269 () Bool)

(assert (=> d!1303014 m!5012269))

(assert (=> b!4377452 m!5012227))

(assert (=> b!4377385 d!1303014))

(declare-fun d!1303018 () Bool)

(declare-fun content!7806 (List!49274) (InoxSet tuple2!48678))

(assert (=> d!1303018 (= (eq!315 lt!1587999 lt!1588010) (= (content!7806 (toList!3138 lt!1587999)) (content!7806 (toList!3138 lt!1588010))))))

(declare-fun bs!660125 () Bool)

(assert (= bs!660125 d!1303018))

(declare-fun m!5012271 () Bool)

(assert (=> bs!660125 m!5012271))

(declare-fun m!5012273 () Bool)

(assert (=> bs!660125 m!5012273))

(assert (=> b!4377388 d!1303018))

(declare-fun d!1303020 () Bool)

(assert (=> d!1303020 (= (eq!315 lt!1588020 lt!1588010) (= (content!7806 (toList!3138 lt!1588020)) (content!7806 (toList!3138 lt!1588010))))))

(declare-fun bs!660126 () Bool)

(assert (= bs!660126 d!1303020))

(declare-fun m!5012275 () Bool)

(assert (=> bs!660126 m!5012275))

(assert (=> bs!660126 m!5012273))

(assert (=> b!4377378 d!1303020))

(declare-fun b!4377512 () Bool)

(assert (=> b!4377512 true))

(declare-fun bs!660134 () Bool)

(declare-fun b!4377513 () Bool)

(assert (= bs!660134 (and b!4377513 b!4377512)))

(declare-fun lambda!144959 () Int)

(declare-fun lambda!144958 () Int)

(assert (=> bs!660134 (= lambda!144959 lambda!144958)))

(assert (=> b!4377513 true))

(declare-fun lt!1588155 () ListMap!2381)

(declare-fun lambda!144960 () Int)

(assert (=> bs!660134 (= (= lt!1588155 lt!1588017) (= lambda!144960 lambda!144958))))

(assert (=> b!4377513 (= (= lt!1588155 lt!1588017) (= lambda!144960 lambda!144959))))

(assert (=> b!4377513 true))

(declare-fun bs!660135 () Bool)

(declare-fun d!1303022 () Bool)

(assert (= bs!660135 (and d!1303022 b!4377512)))

(declare-fun lambda!144961 () Int)

(declare-fun lt!1588159 () ListMap!2381)

(assert (=> bs!660135 (= (= lt!1588159 lt!1588017) (= lambda!144961 lambda!144958))))

(declare-fun bs!660136 () Bool)

(assert (= bs!660136 (and d!1303022 b!4377513)))

(assert (=> bs!660136 (= (= lt!1588159 lt!1588017) (= lambda!144961 lambda!144959))))

(assert (=> bs!660136 (= (= lt!1588159 lt!1588155) (= lambda!144961 lambda!144960))))

(assert (=> d!1303022 true))

(declare-fun call!304406 () Bool)

(declare-fun lt!1588146 () ListMap!2381)

(declare-fun c!744405 () Bool)

(declare-fun bm!304400 () Bool)

(declare-fun forall!9269 (List!49274 Int) Bool)

(assert (=> bm!304400 (= call!304406 (forall!9269 (ite c!744405 (toList!3138 lt!1588017) (toList!3138 lt!1588146)) (ite c!744405 lambda!144958 lambda!144960)))))

(declare-fun b!4377509 () Bool)

(declare-fun res!1802574 () Bool)

(declare-fun e!2724842 () Bool)

(assert (=> b!4377509 (=> (not res!1802574) (not e!2724842))))

(assert (=> b!4377509 (= res!1802574 (forall!9269 (toList!3138 lt!1588017) lambda!144961))))

(assert (=> d!1303022 e!2724842))

(declare-fun res!1802573 () Bool)

(assert (=> d!1303022 (=> (not res!1802573) (not e!2724842))))

(assert (=> d!1303022 (= res!1802573 (forall!9269 lt!1588019 lambda!144961))))

(declare-fun e!2724843 () ListMap!2381)

(assert (=> d!1303022 (= lt!1588159 e!2724843)))

(assert (=> d!1303022 (= c!744405 ((_ is Nil!49150) lt!1588019))))

(assert (=> d!1303022 (noDuplicateKeys!577 lt!1588019)))

(assert (=> d!1303022 (= (addToMapMapFromBucket!258 lt!1588019 lt!1588017) lt!1588159)))

(declare-fun b!4377510 () Bool)

(declare-fun e!2724841 () Bool)

(assert (=> b!4377510 (= e!2724841 (forall!9269 (toList!3138 lt!1588017) lambda!144960))))

(declare-fun bm!304401 () Bool)

(declare-fun call!304405 () Bool)

(assert (=> bm!304401 (= call!304405 (forall!9269 (ite c!744405 (toList!3138 lt!1588017) lt!1588019) (ite c!744405 lambda!144958 lambda!144960)))))

(declare-fun b!4377511 () Bool)

(declare-fun invariantList!720 (List!49274) Bool)

(assert (=> b!4377511 (= e!2724842 (invariantList!720 (toList!3138 lt!1588159)))))

(declare-fun bm!304402 () Bool)

(declare-fun call!304407 () Unit!75016)

(declare-fun lemmaContainsAllItsOwnKeys!102 (ListMap!2381) Unit!75016)

(assert (=> bm!304402 (= call!304407 (lemmaContainsAllItsOwnKeys!102 lt!1588017))))

(assert (=> b!4377512 (= e!2724843 lt!1588017)))

(declare-fun lt!1588158 () Unit!75016)

(assert (=> b!4377512 (= lt!1588158 call!304407)))

(assert (=> b!4377512 call!304406))

(declare-fun lt!1588152 () Unit!75016)

(assert (=> b!4377512 (= lt!1588152 lt!1588158)))

(assert (=> b!4377512 call!304405))

(declare-fun lt!1588147 () Unit!75016)

(declare-fun Unit!75021 () Unit!75016)

(assert (=> b!4377512 (= lt!1588147 Unit!75021)))

(assert (=> b!4377513 (= e!2724843 lt!1588155)))

(assert (=> b!4377513 (= lt!1588146 (+!786 lt!1588017 (h!54745 lt!1588019)))))

(assert (=> b!4377513 (= lt!1588155 (addToMapMapFromBucket!258 (t!356200 lt!1588019) (+!786 lt!1588017 (h!54745 lt!1588019))))))

(declare-fun lt!1588144 () Unit!75016)

(assert (=> b!4377513 (= lt!1588144 call!304407)))

(assert (=> b!4377513 (forall!9269 (toList!3138 lt!1588017) lambda!144959)))

(declare-fun lt!1588140 () Unit!75016)

(assert (=> b!4377513 (= lt!1588140 lt!1588144)))

(assert (=> b!4377513 (forall!9269 (toList!3138 lt!1588146) lambda!144960)))

(declare-fun lt!1588145 () Unit!75016)

(declare-fun Unit!75022 () Unit!75016)

(assert (=> b!4377513 (= lt!1588145 Unit!75022)))

(assert (=> b!4377513 (forall!9269 (t!356200 lt!1588019) lambda!144960)))

(declare-fun lt!1588157 () Unit!75016)

(declare-fun Unit!75023 () Unit!75016)

(assert (=> b!4377513 (= lt!1588157 Unit!75023)))

(declare-fun lt!1588139 () Unit!75016)

(declare-fun Unit!75024 () Unit!75016)

(assert (=> b!4377513 (= lt!1588139 Unit!75024)))

(declare-fun lt!1588148 () Unit!75016)

(declare-fun forallContained!1906 (List!49274 Int tuple2!48678) Unit!75016)

(assert (=> b!4377513 (= lt!1588148 (forallContained!1906 (toList!3138 lt!1588146) lambda!144960 (h!54745 lt!1588019)))))

(assert (=> b!4377513 (contains!11477 lt!1588146 (_1!27633 (h!54745 lt!1588019)))))

(declare-fun lt!1588141 () Unit!75016)

(declare-fun Unit!75025 () Unit!75016)

(assert (=> b!4377513 (= lt!1588141 Unit!75025)))

(assert (=> b!4377513 (contains!11477 lt!1588155 (_1!27633 (h!54745 lt!1588019)))))

(declare-fun lt!1588142 () Unit!75016)

(declare-fun Unit!75026 () Unit!75016)

(assert (=> b!4377513 (= lt!1588142 Unit!75026)))

(assert (=> b!4377513 call!304405))

(declare-fun lt!1588151 () Unit!75016)

(declare-fun Unit!75027 () Unit!75016)

(assert (=> b!4377513 (= lt!1588151 Unit!75027)))

(assert (=> b!4377513 call!304406))

(declare-fun lt!1588156 () Unit!75016)

(declare-fun Unit!75028 () Unit!75016)

(assert (=> b!4377513 (= lt!1588156 Unit!75028)))

(declare-fun lt!1588143 () Unit!75016)

(declare-fun Unit!75029 () Unit!75016)

(assert (=> b!4377513 (= lt!1588143 Unit!75029)))

(declare-fun lt!1588150 () Unit!75016)

(declare-fun addForallContainsKeyThenBeforeAdding!102 (ListMap!2381 ListMap!2381 K!10510 V!10756) Unit!75016)

(assert (=> b!4377513 (= lt!1588150 (addForallContainsKeyThenBeforeAdding!102 lt!1588017 lt!1588155 (_1!27633 (h!54745 lt!1588019)) (_2!27633 (h!54745 lt!1588019))))))

(assert (=> b!4377513 (forall!9269 (toList!3138 lt!1588017) lambda!144960)))

(declare-fun lt!1588149 () Unit!75016)

(assert (=> b!4377513 (= lt!1588149 lt!1588150)))

(assert (=> b!4377513 (forall!9269 (toList!3138 lt!1588017) lambda!144960)))

(declare-fun lt!1588153 () Unit!75016)

(declare-fun Unit!75030 () Unit!75016)

(assert (=> b!4377513 (= lt!1588153 Unit!75030)))

(declare-fun res!1802575 () Bool)

(assert (=> b!4377513 (= res!1802575 (forall!9269 lt!1588019 lambda!144960))))

(assert (=> b!4377513 (=> (not res!1802575) (not e!2724841))))

(assert (=> b!4377513 e!2724841))

(declare-fun lt!1588154 () Unit!75016)

(declare-fun Unit!75031 () Unit!75016)

(assert (=> b!4377513 (= lt!1588154 Unit!75031)))

(assert (= (and d!1303022 c!744405) b!4377512))

(assert (= (and d!1303022 (not c!744405)) b!4377513))

(assert (= (and b!4377513 res!1802575) b!4377510))

(assert (= (or b!4377512 b!4377513) bm!304402))

(assert (= (or b!4377512 b!4377513) bm!304401))

(assert (= (or b!4377512 b!4377513) bm!304400))

(assert (= (and d!1303022 res!1802573) b!4377509))

(assert (= (and b!4377509 res!1802574) b!4377511))

(declare-fun m!5012325 () Bool)

(assert (=> d!1303022 m!5012325))

(declare-fun m!5012327 () Bool)

(assert (=> d!1303022 m!5012327))

(declare-fun m!5012329 () Bool)

(assert (=> b!4377510 m!5012329))

(declare-fun m!5012331 () Bool)

(assert (=> b!4377511 m!5012331))

(declare-fun m!5012333 () Bool)

(assert (=> b!4377509 m!5012333))

(declare-fun m!5012335 () Bool)

(assert (=> bm!304400 m!5012335))

(declare-fun m!5012337 () Bool)

(assert (=> bm!304402 m!5012337))

(declare-fun m!5012339 () Bool)

(assert (=> b!4377513 m!5012339))

(declare-fun m!5012341 () Bool)

(assert (=> b!4377513 m!5012341))

(declare-fun m!5012343 () Bool)

(assert (=> b!4377513 m!5012343))

(declare-fun m!5012345 () Bool)

(assert (=> b!4377513 m!5012345))

(declare-fun m!5012347 () Bool)

(assert (=> b!4377513 m!5012347))

(assert (=> b!4377513 m!5012329))

(declare-fun m!5012349 () Bool)

(assert (=> b!4377513 m!5012349))

(declare-fun m!5012351 () Bool)

(assert (=> b!4377513 m!5012351))

(declare-fun m!5012353 () Bool)

(assert (=> b!4377513 m!5012353))

(assert (=> b!4377513 m!5012345))

(declare-fun m!5012355 () Bool)

(assert (=> b!4377513 m!5012355))

(declare-fun m!5012357 () Bool)

(assert (=> b!4377513 m!5012357))

(assert (=> b!4377513 m!5012329))

(declare-fun m!5012359 () Bool)

(assert (=> bm!304401 m!5012359))

(assert (=> b!4377378 d!1303022))

(declare-fun d!1303040 () Bool)

(assert (=> d!1303040 (eq!315 (addToMapMapFromBucket!258 lt!1588019 (+!786 lt!1588017 (tuple2!48679 key!3918 newValue!99))) (+!786 (addToMapMapFromBucket!258 lt!1588019 lt!1588017) (tuple2!48679 key!3918 newValue!99)))))

(declare-fun lt!1588170 () Unit!75016)

(declare-fun choose!27286 (ListMap!2381 K!10510 V!10756 List!49274) Unit!75016)

(assert (=> d!1303040 (= lt!1588170 (choose!27286 lt!1588017 key!3918 newValue!99 lt!1588019))))

(assert (=> d!1303040 (not (containsKey!841 lt!1588019 key!3918))))

(assert (=> d!1303040 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!124 lt!1588017 key!3918 newValue!99 lt!1588019) lt!1588170)))

(declare-fun bs!660137 () Bool)

(assert (= bs!660137 d!1303040))

(assert (=> bs!660137 m!5012135))

(declare-fun m!5012361 () Bool)

(assert (=> bs!660137 m!5012361))

(declare-fun m!5012363 () Bool)

(assert (=> bs!660137 m!5012363))

(declare-fun m!5012365 () Bool)

(assert (=> bs!660137 m!5012365))

(assert (=> bs!660137 m!5012363))

(declare-fun m!5012367 () Bool)

(assert (=> bs!660137 m!5012367))

(declare-fun m!5012369 () Bool)

(assert (=> bs!660137 m!5012369))

(assert (=> bs!660137 m!5012365))

(assert (=> bs!660137 m!5012361))

(declare-fun m!5012371 () Bool)

(assert (=> bs!660137 m!5012371))

(assert (=> bs!660137 m!5012135))

(assert (=> b!4377378 d!1303040))

(declare-fun bs!660138 () Bool)

(declare-fun b!4377523 () Bool)

(assert (= bs!660138 (and b!4377523 b!4377512)))

(declare-fun lambda!144966 () Int)

(assert (=> bs!660138 (= lambda!144966 lambda!144958)))

(declare-fun bs!660139 () Bool)

(assert (= bs!660139 (and b!4377523 b!4377513)))

(assert (=> bs!660139 (= lambda!144966 lambda!144959)))

(assert (=> bs!660139 (= (= lt!1588017 lt!1588155) (= lambda!144966 lambda!144960))))

(declare-fun bs!660140 () Bool)

(assert (= bs!660140 (and b!4377523 d!1303022)))

(assert (=> bs!660140 (= (= lt!1588017 lt!1588159) (= lambda!144966 lambda!144961))))

(assert (=> b!4377523 true))

(declare-fun bs!660141 () Bool)

(declare-fun b!4377524 () Bool)

(assert (= bs!660141 (and b!4377524 b!4377523)))

(declare-fun lambda!144969 () Int)

(assert (=> bs!660141 (= lambda!144969 lambda!144966)))

(declare-fun bs!660142 () Bool)

(assert (= bs!660142 (and b!4377524 b!4377512)))

(assert (=> bs!660142 (= lambda!144969 lambda!144958)))

(declare-fun bs!660143 () Bool)

(assert (= bs!660143 (and b!4377524 b!4377513)))

(assert (=> bs!660143 (= (= lt!1588017 lt!1588155) (= lambda!144969 lambda!144960))))

(assert (=> bs!660143 (= lambda!144969 lambda!144959)))

(declare-fun bs!660144 () Bool)

(assert (= bs!660144 (and b!4377524 d!1303022)))

(assert (=> bs!660144 (= (= lt!1588017 lt!1588159) (= lambda!144969 lambda!144961))))

(assert (=> b!4377524 true))

(declare-fun lt!1588191 () ListMap!2381)

(declare-fun lambda!144972 () Int)

(assert (=> bs!660141 (= (= lt!1588191 lt!1588017) (= lambda!144972 lambda!144966))))

(assert (=> bs!660142 (= (= lt!1588191 lt!1588017) (= lambda!144972 lambda!144958))))

(assert (=> b!4377524 (= (= lt!1588191 lt!1588017) (= lambda!144972 lambda!144969))))

(assert (=> bs!660143 (= (= lt!1588191 lt!1588155) (= lambda!144972 lambda!144960))))

(assert (=> bs!660143 (= (= lt!1588191 lt!1588017) (= lambda!144972 lambda!144959))))

(assert (=> bs!660144 (= (= lt!1588191 lt!1588159) (= lambda!144972 lambda!144961))))

(assert (=> b!4377524 true))

(declare-fun bs!660145 () Bool)

(declare-fun d!1303042 () Bool)

(assert (= bs!660145 (and d!1303042 b!4377523)))

(declare-fun lambda!144975 () Int)

(declare-fun lt!1588199 () ListMap!2381)

(assert (=> bs!660145 (= (= lt!1588199 lt!1588017) (= lambda!144975 lambda!144966))))

(declare-fun bs!660146 () Bool)

(assert (= bs!660146 (and d!1303042 b!4377512)))

(assert (=> bs!660146 (= (= lt!1588199 lt!1588017) (= lambda!144975 lambda!144958))))

(declare-fun bs!660147 () Bool)

(assert (= bs!660147 (and d!1303042 b!4377524)))

(assert (=> bs!660147 (= (= lt!1588199 lt!1588191) (= lambda!144975 lambda!144972))))

(assert (=> bs!660147 (= (= lt!1588199 lt!1588017) (= lambda!144975 lambda!144969))))

(declare-fun bs!660148 () Bool)

(assert (= bs!660148 (and d!1303042 b!4377513)))

(assert (=> bs!660148 (= (= lt!1588199 lt!1588155) (= lambda!144975 lambda!144960))))

(assert (=> bs!660148 (= (= lt!1588199 lt!1588017) (= lambda!144975 lambda!144959))))

(declare-fun bs!660149 () Bool)

(assert (= bs!660149 (and d!1303042 d!1303022)))

(assert (=> bs!660149 (= (= lt!1588199 lt!1588159) (= lambda!144975 lambda!144961))))

(assert (=> d!1303042 true))

(declare-fun bm!304403 () Bool)

(declare-fun call!304409 () Bool)

(declare-fun c!744408 () Bool)

(declare-fun lt!1588182 () ListMap!2381)

(assert (=> bm!304403 (= call!304409 (forall!9269 (ite c!744408 (toList!3138 lt!1588017) (toList!3138 lt!1588182)) (ite c!744408 lambda!144966 lambda!144972)))))

(declare-fun b!4377520 () Bool)

(declare-fun res!1802577 () Bool)

(declare-fun e!2724847 () Bool)

(assert (=> b!4377520 (=> (not res!1802577) (not e!2724847))))

(assert (=> b!4377520 (= res!1802577 (forall!9269 (toList!3138 lt!1588017) lambda!144975))))

(assert (=> d!1303042 e!2724847))

(declare-fun res!1802576 () Bool)

(assert (=> d!1303042 (=> (not res!1802576) (not e!2724847))))

(assert (=> d!1303042 (= res!1802576 (forall!9269 lt!1588009 lambda!144975))))

(declare-fun e!2724848 () ListMap!2381)

(assert (=> d!1303042 (= lt!1588199 e!2724848)))

(assert (=> d!1303042 (= c!744408 ((_ is Nil!49150) lt!1588009))))

(assert (=> d!1303042 (noDuplicateKeys!577 lt!1588009)))

(assert (=> d!1303042 (= (addToMapMapFromBucket!258 lt!1588009 lt!1588017) lt!1588199)))

(declare-fun b!4377521 () Bool)

(declare-fun e!2724846 () Bool)

(assert (=> b!4377521 (= e!2724846 (forall!9269 (toList!3138 lt!1588017) lambda!144972))))

(declare-fun bm!304404 () Bool)

(declare-fun call!304408 () Bool)

(assert (=> bm!304404 (= call!304408 (forall!9269 (ite c!744408 (toList!3138 lt!1588017) lt!1588009) (ite c!744408 lambda!144966 lambda!144972)))))

(declare-fun b!4377522 () Bool)

(assert (=> b!4377522 (= e!2724847 (invariantList!720 (toList!3138 lt!1588199)))))

(declare-fun bm!304405 () Bool)

(declare-fun call!304410 () Unit!75016)

(assert (=> bm!304405 (= call!304410 (lemmaContainsAllItsOwnKeys!102 lt!1588017))))

(assert (=> b!4377523 (= e!2724848 lt!1588017)))

(declare-fun lt!1588198 () Unit!75016)

(assert (=> b!4377523 (= lt!1588198 call!304410)))

(assert (=> b!4377523 call!304409))

(declare-fun lt!1588188 () Unit!75016)

(assert (=> b!4377523 (= lt!1588188 lt!1588198)))

(assert (=> b!4377523 call!304408))

(declare-fun lt!1588183 () Unit!75016)

(declare-fun Unit!75033 () Unit!75016)

(assert (=> b!4377523 (= lt!1588183 Unit!75033)))

(assert (=> b!4377524 (= e!2724848 lt!1588191)))

(assert (=> b!4377524 (= lt!1588182 (+!786 lt!1588017 (h!54745 lt!1588009)))))

(assert (=> b!4377524 (= lt!1588191 (addToMapMapFromBucket!258 (t!356200 lt!1588009) (+!786 lt!1588017 (h!54745 lt!1588009))))))

(declare-fun lt!1588180 () Unit!75016)

(assert (=> b!4377524 (= lt!1588180 call!304410)))

(assert (=> b!4377524 (forall!9269 (toList!3138 lt!1588017) lambda!144969)))

(declare-fun lt!1588176 () Unit!75016)

(assert (=> b!4377524 (= lt!1588176 lt!1588180)))

(assert (=> b!4377524 (forall!9269 (toList!3138 lt!1588182) lambda!144972)))

(declare-fun lt!1588181 () Unit!75016)

(declare-fun Unit!75036 () Unit!75016)

(assert (=> b!4377524 (= lt!1588181 Unit!75036)))

(assert (=> b!4377524 (forall!9269 (t!356200 lt!1588009) lambda!144972)))

(declare-fun lt!1588197 () Unit!75016)

(declare-fun Unit!75038 () Unit!75016)

(assert (=> b!4377524 (= lt!1588197 Unit!75038)))

(declare-fun lt!1588175 () Unit!75016)

(declare-fun Unit!75039 () Unit!75016)

(assert (=> b!4377524 (= lt!1588175 Unit!75039)))

(declare-fun lt!1588184 () Unit!75016)

(assert (=> b!4377524 (= lt!1588184 (forallContained!1906 (toList!3138 lt!1588182) lambda!144972 (h!54745 lt!1588009)))))

(assert (=> b!4377524 (contains!11477 lt!1588182 (_1!27633 (h!54745 lt!1588009)))))

(declare-fun lt!1588177 () Unit!75016)

(declare-fun Unit!75041 () Unit!75016)

(assert (=> b!4377524 (= lt!1588177 Unit!75041)))

(assert (=> b!4377524 (contains!11477 lt!1588191 (_1!27633 (h!54745 lt!1588009)))))

(declare-fun lt!1588178 () Unit!75016)

(declare-fun Unit!75043 () Unit!75016)

(assert (=> b!4377524 (= lt!1588178 Unit!75043)))

(assert (=> b!4377524 call!304408))

(declare-fun lt!1588187 () Unit!75016)

(declare-fun Unit!75045 () Unit!75016)

(assert (=> b!4377524 (= lt!1588187 Unit!75045)))

(assert (=> b!4377524 call!304409))

(declare-fun lt!1588194 () Unit!75016)

(declare-fun Unit!75047 () Unit!75016)

(assert (=> b!4377524 (= lt!1588194 Unit!75047)))

(declare-fun lt!1588179 () Unit!75016)

(declare-fun Unit!75048 () Unit!75016)

(assert (=> b!4377524 (= lt!1588179 Unit!75048)))

(declare-fun lt!1588186 () Unit!75016)

(assert (=> b!4377524 (= lt!1588186 (addForallContainsKeyThenBeforeAdding!102 lt!1588017 lt!1588191 (_1!27633 (h!54745 lt!1588009)) (_2!27633 (h!54745 lt!1588009))))))

(assert (=> b!4377524 (forall!9269 (toList!3138 lt!1588017) lambda!144972)))

(declare-fun lt!1588185 () Unit!75016)

(assert (=> b!4377524 (= lt!1588185 lt!1588186)))

(assert (=> b!4377524 (forall!9269 (toList!3138 lt!1588017) lambda!144972)))

(declare-fun lt!1588189 () Unit!75016)

(declare-fun Unit!75050 () Unit!75016)

(assert (=> b!4377524 (= lt!1588189 Unit!75050)))

(declare-fun res!1802578 () Bool)

(assert (=> b!4377524 (= res!1802578 (forall!9269 lt!1588009 lambda!144972))))

(assert (=> b!4377524 (=> (not res!1802578) (not e!2724846))))

(assert (=> b!4377524 e!2724846))

(declare-fun lt!1588190 () Unit!75016)

(declare-fun Unit!75052 () Unit!75016)

(assert (=> b!4377524 (= lt!1588190 Unit!75052)))

(assert (= (and d!1303042 c!744408) b!4377523))

(assert (= (and d!1303042 (not c!744408)) b!4377524))

(assert (= (and b!4377524 res!1802578) b!4377521))

(assert (= (or b!4377523 b!4377524) bm!304405))

(assert (= (or b!4377523 b!4377524) bm!304404))

(assert (= (or b!4377523 b!4377524) bm!304403))

(assert (= (and d!1303042 res!1802576) b!4377520))

(assert (= (and b!4377520 res!1802577) b!4377522))

(declare-fun m!5012373 () Bool)

(assert (=> d!1303042 m!5012373))

(declare-fun m!5012375 () Bool)

(assert (=> d!1303042 m!5012375))

(declare-fun m!5012377 () Bool)

(assert (=> b!4377521 m!5012377))

(declare-fun m!5012379 () Bool)

(assert (=> b!4377522 m!5012379))

(declare-fun m!5012381 () Bool)

(assert (=> b!4377520 m!5012381))

(declare-fun m!5012383 () Bool)

(assert (=> bm!304403 m!5012383))

(assert (=> bm!304405 m!5012337))

(declare-fun m!5012385 () Bool)

(assert (=> b!4377524 m!5012385))

(declare-fun m!5012387 () Bool)

(assert (=> b!4377524 m!5012387))

(declare-fun m!5012389 () Bool)

(assert (=> b!4377524 m!5012389))

(declare-fun m!5012391 () Bool)

(assert (=> b!4377524 m!5012391))

(declare-fun m!5012393 () Bool)

(assert (=> b!4377524 m!5012393))

(assert (=> b!4377524 m!5012377))

(declare-fun m!5012395 () Bool)

(assert (=> b!4377524 m!5012395))

(declare-fun m!5012397 () Bool)

(assert (=> b!4377524 m!5012397))

(declare-fun m!5012399 () Bool)

(assert (=> b!4377524 m!5012399))

(assert (=> b!4377524 m!5012391))

(declare-fun m!5012401 () Bool)

(assert (=> b!4377524 m!5012401))

(declare-fun m!5012403 () Bool)

(assert (=> b!4377524 m!5012403))

(assert (=> b!4377524 m!5012377))

(declare-fun m!5012405 () Bool)

(assert (=> bm!304404 m!5012405))

(assert (=> b!4377378 d!1303042))

(declare-fun d!1303044 () Bool)

(declare-fun e!2724849 () Bool)

(assert (=> d!1303044 e!2724849))

(declare-fun res!1802579 () Bool)

(assert (=> d!1303044 (=> (not res!1802579) (not e!2724849))))

(declare-fun lt!1588225 () ListLongMap!1787)

(assert (=> d!1303044 (= res!1802579 (contains!11479 lt!1588225 (_1!27634 (tuple2!48681 hash!377 lt!1588007))))))

(declare-fun lt!1588222 () List!49275)

(assert (=> d!1303044 (= lt!1588225 (ListLongMap!1788 lt!1588222))))

(declare-fun lt!1588224 () Unit!75016)

(declare-fun lt!1588223 () Unit!75016)

(assert (=> d!1303044 (= lt!1588224 lt!1588223)))

(assert (=> d!1303044 (= (getValueByKey!539 lt!1588222 (_1!27634 (tuple2!48681 hash!377 lt!1588007))) (Some!10552 (_2!27634 (tuple2!48681 hash!377 lt!1588007))))))

(assert (=> d!1303044 (= lt!1588223 (lemmaContainsTupThenGetReturnValue!303 lt!1588222 (_1!27634 (tuple2!48681 hash!377 lt!1588007)) (_2!27634 (tuple2!48681 hash!377 lt!1588007))))))

(assert (=> d!1303044 (= lt!1588222 (insertStrictlySorted!174 (toList!3137 lm!1707) (_1!27634 (tuple2!48681 hash!377 lt!1588007)) (_2!27634 (tuple2!48681 hash!377 lt!1588007))))))

(assert (=> d!1303044 (= (+!785 lm!1707 (tuple2!48681 hash!377 lt!1588007)) lt!1588225)))

(declare-fun b!4377525 () Bool)

(declare-fun res!1802580 () Bool)

(assert (=> b!4377525 (=> (not res!1802580) (not e!2724849))))

(assert (=> b!4377525 (= res!1802580 (= (getValueByKey!539 (toList!3137 lt!1588225) (_1!27634 (tuple2!48681 hash!377 lt!1588007))) (Some!10552 (_2!27634 (tuple2!48681 hash!377 lt!1588007)))))))

(declare-fun b!4377526 () Bool)

(assert (=> b!4377526 (= e!2724849 (contains!11478 (toList!3137 lt!1588225) (tuple2!48681 hash!377 lt!1588007)))))

(assert (= (and d!1303044 res!1802579) b!4377525))

(assert (= (and b!4377525 res!1802580) b!4377526))

(declare-fun m!5012407 () Bool)

(assert (=> d!1303044 m!5012407))

(declare-fun m!5012409 () Bool)

(assert (=> d!1303044 m!5012409))

(declare-fun m!5012411 () Bool)

(assert (=> d!1303044 m!5012411))

(declare-fun m!5012413 () Bool)

(assert (=> d!1303044 m!5012413))

(declare-fun m!5012415 () Bool)

(assert (=> b!4377525 m!5012415))

(declare-fun m!5012417 () Bool)

(assert (=> b!4377526 m!5012417))

(assert (=> b!4377378 d!1303044))

(declare-fun bs!660150 () Bool)

(declare-fun b!4377530 () Bool)

(assert (= bs!660150 (and b!4377530 b!4377523)))

(declare-fun lambda!144986 () Int)

(assert (=> bs!660150 (= lambda!144986 lambda!144966)))

(declare-fun bs!660151 () Bool)

(assert (= bs!660151 (and b!4377530 b!4377512)))

(assert (=> bs!660151 (= lambda!144986 lambda!144958)))

(declare-fun bs!660152 () Bool)

(assert (= bs!660152 (and b!4377530 b!4377524)))

(assert (=> bs!660152 (= (= lt!1588017 lt!1588191) (= lambda!144986 lambda!144972))))

(assert (=> bs!660152 (= lambda!144986 lambda!144969)))

(declare-fun bs!660153 () Bool)

(assert (= bs!660153 (and b!4377530 d!1303042)))

(assert (=> bs!660153 (= (= lt!1588017 lt!1588199) (= lambda!144986 lambda!144975))))

(declare-fun bs!660154 () Bool)

(assert (= bs!660154 (and b!4377530 b!4377513)))

(assert (=> bs!660154 (= (= lt!1588017 lt!1588155) (= lambda!144986 lambda!144960))))

(assert (=> bs!660154 (= lambda!144986 lambda!144959)))

(declare-fun bs!660155 () Bool)

(assert (= bs!660155 (and b!4377530 d!1303022)))

(assert (=> bs!660155 (= (= lt!1588017 lt!1588159) (= lambda!144986 lambda!144961))))

(assert (=> b!4377530 true))

(declare-fun bs!660156 () Bool)

(declare-fun b!4377531 () Bool)

(assert (= bs!660156 (and b!4377531 b!4377530)))

(declare-fun lambda!144989 () Int)

(assert (=> bs!660156 (= lambda!144989 lambda!144986)))

(declare-fun bs!660157 () Bool)

(assert (= bs!660157 (and b!4377531 b!4377523)))

(assert (=> bs!660157 (= lambda!144989 lambda!144966)))

(declare-fun bs!660158 () Bool)

(assert (= bs!660158 (and b!4377531 b!4377512)))

(assert (=> bs!660158 (= lambda!144989 lambda!144958)))

(declare-fun bs!660159 () Bool)

(assert (= bs!660159 (and b!4377531 b!4377524)))

(assert (=> bs!660159 (= (= lt!1588017 lt!1588191) (= lambda!144989 lambda!144972))))

(assert (=> bs!660159 (= lambda!144989 lambda!144969)))

(declare-fun bs!660160 () Bool)

(assert (= bs!660160 (and b!4377531 d!1303042)))

(assert (=> bs!660160 (= (= lt!1588017 lt!1588199) (= lambda!144989 lambda!144975))))

(declare-fun bs!660161 () Bool)

(assert (= bs!660161 (and b!4377531 b!4377513)))

(assert (=> bs!660161 (= (= lt!1588017 lt!1588155) (= lambda!144989 lambda!144960))))

(assert (=> bs!660161 (= lambda!144989 lambda!144959)))

(declare-fun bs!660162 () Bool)

(assert (= bs!660162 (and b!4377531 d!1303022)))

(assert (=> bs!660162 (= (= lt!1588017 lt!1588159) (= lambda!144989 lambda!144961))))

(assert (=> b!4377531 true))

(declare-fun lt!1588244 () ListMap!2381)

(declare-fun lambda!144992 () Int)

(assert (=> bs!660156 (= (= lt!1588244 lt!1588017) (= lambda!144992 lambda!144986))))

(assert (=> bs!660157 (= (= lt!1588244 lt!1588017) (= lambda!144992 lambda!144966))))

(assert (=> bs!660158 (= (= lt!1588244 lt!1588017) (= lambda!144992 lambda!144958))))

(assert (=> bs!660159 (= (= lt!1588244 lt!1588191) (= lambda!144992 lambda!144972))))

(assert (=> bs!660159 (= (= lt!1588244 lt!1588017) (= lambda!144992 lambda!144969))))

(assert (=> bs!660161 (= (= lt!1588244 lt!1588155) (= lambda!144992 lambda!144960))))

(assert (=> bs!660161 (= (= lt!1588244 lt!1588017) (= lambda!144992 lambda!144959))))

(assert (=> bs!660162 (= (= lt!1588244 lt!1588159) (= lambda!144992 lambda!144961))))

(assert (=> b!4377531 (= (= lt!1588244 lt!1588017) (= lambda!144992 lambda!144989))))

(assert (=> bs!660160 (= (= lt!1588244 lt!1588199) (= lambda!144992 lambda!144975))))

(assert (=> b!4377531 true))

(declare-fun bs!660163 () Bool)

(declare-fun d!1303046 () Bool)

(assert (= bs!660163 (and d!1303046 b!4377530)))

(declare-fun lt!1588248 () ListMap!2381)

(declare-fun lambda!144993 () Int)

(assert (=> bs!660163 (= (= lt!1588248 lt!1588017) (= lambda!144993 lambda!144986))))

(declare-fun bs!660164 () Bool)

(assert (= bs!660164 (and d!1303046 b!4377531)))

(assert (=> bs!660164 (= (= lt!1588248 lt!1588244) (= lambda!144993 lambda!144992))))

(declare-fun bs!660165 () Bool)

(assert (= bs!660165 (and d!1303046 b!4377523)))

(assert (=> bs!660165 (= (= lt!1588248 lt!1588017) (= lambda!144993 lambda!144966))))

(declare-fun bs!660166 () Bool)

(assert (= bs!660166 (and d!1303046 b!4377512)))

(assert (=> bs!660166 (= (= lt!1588248 lt!1588017) (= lambda!144993 lambda!144958))))

(declare-fun bs!660167 () Bool)

(assert (= bs!660167 (and d!1303046 b!4377524)))

(assert (=> bs!660167 (= (= lt!1588248 lt!1588191) (= lambda!144993 lambda!144972))))

(assert (=> bs!660167 (= (= lt!1588248 lt!1588017) (= lambda!144993 lambda!144969))))

(declare-fun bs!660168 () Bool)

(assert (= bs!660168 (and d!1303046 b!4377513)))

(assert (=> bs!660168 (= (= lt!1588248 lt!1588155) (= lambda!144993 lambda!144960))))

(assert (=> bs!660168 (= (= lt!1588248 lt!1588017) (= lambda!144993 lambda!144959))))

(declare-fun bs!660169 () Bool)

(assert (= bs!660169 (and d!1303046 d!1303022)))

(assert (=> bs!660169 (= (= lt!1588248 lt!1588159) (= lambda!144993 lambda!144961))))

(assert (=> bs!660164 (= (= lt!1588248 lt!1588017) (= lambda!144993 lambda!144989))))

(declare-fun bs!660170 () Bool)

(assert (= bs!660170 (and d!1303046 d!1303042)))

(assert (=> bs!660170 (= (= lt!1588248 lt!1588199) (= lambda!144993 lambda!144975))))

(assert (=> d!1303046 true))

(declare-fun lt!1588235 () ListMap!2381)

(declare-fun call!304412 () Bool)

(declare-fun bm!304406 () Bool)

(declare-fun c!744409 () Bool)

(assert (=> bm!304406 (= call!304412 (forall!9269 (ite c!744409 (toList!3138 lt!1588017) (toList!3138 lt!1588235)) (ite c!744409 lambda!144986 lambda!144992)))))

(declare-fun b!4377527 () Bool)

(declare-fun res!1802582 () Bool)

(declare-fun e!2724851 () Bool)

(assert (=> b!4377527 (=> (not res!1802582) (not e!2724851))))

(assert (=> b!4377527 (= res!1802582 (forall!9269 (toList!3138 lt!1588017) lambda!144993))))

(assert (=> d!1303046 e!2724851))

(declare-fun res!1802581 () Bool)

(assert (=> d!1303046 (=> (not res!1802581) (not e!2724851))))

(assert (=> d!1303046 (= res!1802581 (forall!9269 newBucket!200 lambda!144993))))

(declare-fun e!2724852 () ListMap!2381)

(assert (=> d!1303046 (= lt!1588248 e!2724852)))

(assert (=> d!1303046 (= c!744409 ((_ is Nil!49150) newBucket!200))))

(assert (=> d!1303046 (noDuplicateKeys!577 newBucket!200)))

(assert (=> d!1303046 (= (addToMapMapFromBucket!258 newBucket!200 lt!1588017) lt!1588248)))

(declare-fun b!4377528 () Bool)

(declare-fun e!2724850 () Bool)

(assert (=> b!4377528 (= e!2724850 (forall!9269 (toList!3138 lt!1588017) lambda!144992))))

(declare-fun call!304411 () Bool)

(declare-fun bm!304407 () Bool)

(assert (=> bm!304407 (= call!304411 (forall!9269 (ite c!744409 (toList!3138 lt!1588017) newBucket!200) (ite c!744409 lambda!144986 lambda!144992)))))

(declare-fun b!4377529 () Bool)

(assert (=> b!4377529 (= e!2724851 (invariantList!720 (toList!3138 lt!1588248)))))

(declare-fun bm!304408 () Bool)

(declare-fun call!304413 () Unit!75016)

(assert (=> bm!304408 (= call!304413 (lemmaContainsAllItsOwnKeys!102 lt!1588017))))

(assert (=> b!4377530 (= e!2724852 lt!1588017)))

(declare-fun lt!1588247 () Unit!75016)

(assert (=> b!4377530 (= lt!1588247 call!304413)))

(assert (=> b!4377530 call!304412))

(declare-fun lt!1588241 () Unit!75016)

(assert (=> b!4377530 (= lt!1588241 lt!1588247)))

(assert (=> b!4377530 call!304411))

(declare-fun lt!1588236 () Unit!75016)

(declare-fun Unit!75062 () Unit!75016)

(assert (=> b!4377530 (= lt!1588236 Unit!75062)))

(assert (=> b!4377531 (= e!2724852 lt!1588244)))

(assert (=> b!4377531 (= lt!1588235 (+!786 lt!1588017 (h!54745 newBucket!200)))))

(assert (=> b!4377531 (= lt!1588244 (addToMapMapFromBucket!258 (t!356200 newBucket!200) (+!786 lt!1588017 (h!54745 newBucket!200))))))

(declare-fun lt!1588233 () Unit!75016)

(assert (=> b!4377531 (= lt!1588233 call!304413)))

(assert (=> b!4377531 (forall!9269 (toList!3138 lt!1588017) lambda!144989)))

(declare-fun lt!1588229 () Unit!75016)

(assert (=> b!4377531 (= lt!1588229 lt!1588233)))

(assert (=> b!4377531 (forall!9269 (toList!3138 lt!1588235) lambda!144992)))

(declare-fun lt!1588234 () Unit!75016)

(declare-fun Unit!75064 () Unit!75016)

(assert (=> b!4377531 (= lt!1588234 Unit!75064)))

(assert (=> b!4377531 (forall!9269 (t!356200 newBucket!200) lambda!144992)))

(declare-fun lt!1588246 () Unit!75016)

(declare-fun Unit!75066 () Unit!75016)

(assert (=> b!4377531 (= lt!1588246 Unit!75066)))

(declare-fun lt!1588228 () Unit!75016)

(declare-fun Unit!75067 () Unit!75016)

(assert (=> b!4377531 (= lt!1588228 Unit!75067)))

(declare-fun lt!1588237 () Unit!75016)

(assert (=> b!4377531 (= lt!1588237 (forallContained!1906 (toList!3138 lt!1588235) lambda!144992 (h!54745 newBucket!200)))))

(assert (=> b!4377531 (contains!11477 lt!1588235 (_1!27633 (h!54745 newBucket!200)))))

(declare-fun lt!1588230 () Unit!75016)

(declare-fun Unit!75069 () Unit!75016)

(assert (=> b!4377531 (= lt!1588230 Unit!75069)))

(assert (=> b!4377531 (contains!11477 lt!1588244 (_1!27633 (h!54745 newBucket!200)))))

(declare-fun lt!1588231 () Unit!75016)

(declare-fun Unit!75070 () Unit!75016)

(assert (=> b!4377531 (= lt!1588231 Unit!75070)))

(assert (=> b!4377531 call!304411))

(declare-fun lt!1588240 () Unit!75016)

(declare-fun Unit!75071 () Unit!75016)

(assert (=> b!4377531 (= lt!1588240 Unit!75071)))

(assert (=> b!4377531 call!304412))

(declare-fun lt!1588245 () Unit!75016)

(declare-fun Unit!75072 () Unit!75016)

(assert (=> b!4377531 (= lt!1588245 Unit!75072)))

(declare-fun lt!1588232 () Unit!75016)

(declare-fun Unit!75073 () Unit!75016)

(assert (=> b!4377531 (= lt!1588232 Unit!75073)))

(declare-fun lt!1588239 () Unit!75016)

(assert (=> b!4377531 (= lt!1588239 (addForallContainsKeyThenBeforeAdding!102 lt!1588017 lt!1588244 (_1!27633 (h!54745 newBucket!200)) (_2!27633 (h!54745 newBucket!200))))))

(assert (=> b!4377531 (forall!9269 (toList!3138 lt!1588017) lambda!144992)))

(declare-fun lt!1588238 () Unit!75016)

(assert (=> b!4377531 (= lt!1588238 lt!1588239)))

(assert (=> b!4377531 (forall!9269 (toList!3138 lt!1588017) lambda!144992)))

(declare-fun lt!1588242 () Unit!75016)

(declare-fun Unit!75074 () Unit!75016)

(assert (=> b!4377531 (= lt!1588242 Unit!75074)))

(declare-fun res!1802583 () Bool)

(assert (=> b!4377531 (= res!1802583 (forall!9269 newBucket!200 lambda!144992))))

(assert (=> b!4377531 (=> (not res!1802583) (not e!2724850))))

(assert (=> b!4377531 e!2724850))

(declare-fun lt!1588243 () Unit!75016)

(declare-fun Unit!75076 () Unit!75016)

(assert (=> b!4377531 (= lt!1588243 Unit!75076)))

(assert (= (and d!1303046 c!744409) b!4377530))

(assert (= (and d!1303046 (not c!744409)) b!4377531))

(assert (= (and b!4377531 res!1802583) b!4377528))

(assert (= (or b!4377530 b!4377531) bm!304408))

(assert (= (or b!4377530 b!4377531) bm!304407))

(assert (= (or b!4377530 b!4377531) bm!304406))

(assert (= (and d!1303046 res!1802581) b!4377527))

(assert (= (and b!4377527 res!1802582) b!4377529))

(declare-fun m!5012419 () Bool)

(assert (=> d!1303046 m!5012419))

(assert (=> d!1303046 m!5012133))

(declare-fun m!5012421 () Bool)

(assert (=> b!4377528 m!5012421))

(declare-fun m!5012423 () Bool)

(assert (=> b!4377529 m!5012423))

(declare-fun m!5012425 () Bool)

(assert (=> b!4377527 m!5012425))

(declare-fun m!5012427 () Bool)

(assert (=> bm!304406 m!5012427))

(assert (=> bm!304408 m!5012337))

(declare-fun m!5012429 () Bool)

(assert (=> b!4377531 m!5012429))

(declare-fun m!5012431 () Bool)

(assert (=> b!4377531 m!5012431))

(declare-fun m!5012433 () Bool)

(assert (=> b!4377531 m!5012433))

(declare-fun m!5012435 () Bool)

(assert (=> b!4377531 m!5012435))

(declare-fun m!5012437 () Bool)

(assert (=> b!4377531 m!5012437))

(assert (=> b!4377531 m!5012421))

(declare-fun m!5012439 () Bool)

(assert (=> b!4377531 m!5012439))

(declare-fun m!5012441 () Bool)

(assert (=> b!4377531 m!5012441))

(declare-fun m!5012443 () Bool)

(assert (=> b!4377531 m!5012443))

(assert (=> b!4377531 m!5012435))

(declare-fun m!5012445 () Bool)

(assert (=> b!4377531 m!5012445))

(declare-fun m!5012447 () Bool)

(assert (=> b!4377531 m!5012447))

(assert (=> b!4377531 m!5012421))

(declare-fun m!5012449 () Bool)

(assert (=> bm!304407 m!5012449))

(assert (=> b!4377378 d!1303046))

(declare-fun d!1303048 () Bool)

(assert (=> d!1303048 (= (tail!7070 newBucket!200) (t!356200 newBucket!200))))

(assert (=> b!4377378 d!1303048))

(declare-fun d!1303050 () Bool)

(declare-fun e!2724862 () Bool)

(assert (=> d!1303050 e!2724862))

(declare-fun res!1802597 () Bool)

(assert (=> d!1303050 (=> (not res!1802597) (not e!2724862))))

(declare-fun lt!1588282 () ListMap!2381)

(assert (=> d!1303050 (= res!1802597 (contains!11477 lt!1588282 (_1!27633 lt!1588015)))))

(declare-fun lt!1588283 () List!49274)

(assert (=> d!1303050 (= lt!1588282 (ListMap!2382 lt!1588283))))

(declare-fun lt!1588280 () Unit!75016)

(declare-fun lt!1588281 () Unit!75016)

(assert (=> d!1303050 (= lt!1588280 lt!1588281)))

(declare-datatypes ((Option!10556 0))(
  ( (None!10555) (Some!10555 (v!43555 V!10756)) )
))
(declare-fun getValueByKey!542 (List!49274 K!10510) Option!10556)

(assert (=> d!1303050 (= (getValueByKey!542 lt!1588283 (_1!27633 lt!1588015)) (Some!10555 (_2!27633 lt!1588015)))))

(declare-fun lemmaContainsTupThenGetReturnValue!304 (List!49274 K!10510 V!10756) Unit!75016)

(assert (=> d!1303050 (= lt!1588281 (lemmaContainsTupThenGetReturnValue!304 lt!1588283 (_1!27633 lt!1588015) (_2!27633 lt!1588015)))))

(declare-fun insertNoDuplicatedKeys!138 (List!49274 K!10510 V!10756) List!49274)

(assert (=> d!1303050 (= lt!1588283 (insertNoDuplicatedKeys!138 (toList!3138 lt!1588017) (_1!27633 lt!1588015) (_2!27633 lt!1588015)))))

(assert (=> d!1303050 (= (+!786 lt!1588017 lt!1588015) lt!1588282)))

(declare-fun b!4377549 () Bool)

(declare-fun res!1802598 () Bool)

(assert (=> b!4377549 (=> (not res!1802598) (not e!2724862))))

(assert (=> b!4377549 (= res!1802598 (= (getValueByKey!542 (toList!3138 lt!1588282) (_1!27633 lt!1588015)) (Some!10555 (_2!27633 lt!1588015))))))

(declare-fun b!4377550 () Bool)

(declare-fun contains!11481 (List!49274 tuple2!48678) Bool)

(assert (=> b!4377550 (= e!2724862 (contains!11481 (toList!3138 lt!1588282) lt!1588015))))

(assert (= (and d!1303050 res!1802597) b!4377549))

(assert (= (and b!4377549 res!1802598) b!4377550))

(declare-fun m!5012483 () Bool)

(assert (=> d!1303050 m!5012483))

(declare-fun m!5012485 () Bool)

(assert (=> d!1303050 m!5012485))

(declare-fun m!5012487 () Bool)

(assert (=> d!1303050 m!5012487))

(declare-fun m!5012489 () Bool)

(assert (=> d!1303050 m!5012489))

(declare-fun m!5012491 () Bool)

(assert (=> b!4377549 m!5012491))

(declare-fun m!5012493 () Bool)

(assert (=> b!4377550 m!5012493))

(assert (=> b!4377378 d!1303050))

(declare-fun d!1303054 () Bool)

(declare-fun e!2724866 () Bool)

(assert (=> d!1303054 e!2724866))

(declare-fun res!1802602 () Bool)

(assert (=> d!1303054 (=> (not res!1802602) (not e!2724866))))

(declare-fun lt!1588307 () ListMap!2381)

(assert (=> d!1303054 (= res!1802602 (contains!11477 lt!1588307 (_1!27633 lt!1588015)))))

(declare-fun lt!1588308 () List!49274)

(assert (=> d!1303054 (= lt!1588307 (ListMap!2382 lt!1588308))))

(declare-fun lt!1588305 () Unit!75016)

(declare-fun lt!1588306 () Unit!75016)

(assert (=> d!1303054 (= lt!1588305 lt!1588306)))

(assert (=> d!1303054 (= (getValueByKey!542 lt!1588308 (_1!27633 lt!1588015)) (Some!10555 (_2!27633 lt!1588015)))))

(assert (=> d!1303054 (= lt!1588306 (lemmaContainsTupThenGetReturnValue!304 lt!1588308 (_1!27633 lt!1588015) (_2!27633 lt!1588015)))))

(assert (=> d!1303054 (= lt!1588308 (insertNoDuplicatedKeys!138 (toList!3138 lt!1588013) (_1!27633 lt!1588015) (_2!27633 lt!1588015)))))

(assert (=> d!1303054 (= (+!786 lt!1588013 lt!1588015) lt!1588307)))

(declare-fun b!4377556 () Bool)

(declare-fun res!1802603 () Bool)

(assert (=> b!4377556 (=> (not res!1802603) (not e!2724866))))

(assert (=> b!4377556 (= res!1802603 (= (getValueByKey!542 (toList!3138 lt!1588307) (_1!27633 lt!1588015)) (Some!10555 (_2!27633 lt!1588015))))))

(declare-fun b!4377557 () Bool)

(assert (=> b!4377557 (= e!2724866 (contains!11481 (toList!3138 lt!1588307) lt!1588015))))

(assert (= (and d!1303054 res!1802602) b!4377556))

(assert (= (and b!4377556 res!1802603) b!4377557))

(declare-fun m!5012495 () Bool)

(assert (=> d!1303054 m!5012495))

(declare-fun m!5012497 () Bool)

(assert (=> d!1303054 m!5012497))

(declare-fun m!5012499 () Bool)

(assert (=> d!1303054 m!5012499))

(declare-fun m!5012501 () Bool)

(assert (=> d!1303054 m!5012501))

(declare-fun m!5012503 () Bool)

(assert (=> b!4377556 m!5012503))

(declare-fun m!5012505 () Bool)

(assert (=> b!4377557 m!5012505))

(assert (=> b!4377378 d!1303054))

(declare-fun bs!660199 () Bool)

(declare-fun d!1303056 () Bool)

(assert (= bs!660199 (and d!1303056 start!425028)))

(declare-fun lambda!145008 () Int)

(assert (=> bs!660199 (= lambda!145008 lambda!144919)))

(declare-fun lt!1588311 () ListMap!2381)

(assert (=> d!1303056 (invariantList!720 (toList!3138 lt!1588311))))

(declare-fun e!2724869 () ListMap!2381)

(assert (=> d!1303056 (= lt!1588311 e!2724869)))

(declare-fun c!744414 () Bool)

(assert (=> d!1303056 (= c!744414 ((_ is Cons!49151) (toList!3137 lt!1588005)))))

(assert (=> d!1303056 (forall!9267 (toList!3137 lt!1588005) lambda!145008)))

(assert (=> d!1303056 (= (extractMap!636 (toList!3137 lt!1588005)) lt!1588311)))

(declare-fun b!4377562 () Bool)

(assert (=> b!4377562 (= e!2724869 (addToMapMapFromBucket!258 (_2!27634 (h!54746 (toList!3137 lt!1588005))) (extractMap!636 (t!356201 (toList!3137 lt!1588005)))))))

(declare-fun b!4377563 () Bool)

(assert (=> b!4377563 (= e!2724869 (ListMap!2382 Nil!49150))))

(assert (= (and d!1303056 c!744414) b!4377562))

(assert (= (and d!1303056 (not c!744414)) b!4377563))

(declare-fun m!5012541 () Bool)

(assert (=> d!1303056 m!5012541))

(declare-fun m!5012543 () Bool)

(assert (=> d!1303056 m!5012543))

(declare-fun m!5012545 () Bool)

(assert (=> b!4377562 m!5012545))

(assert (=> b!4377562 m!5012545))

(declare-fun m!5012547 () Bool)

(assert (=> b!4377562 m!5012547))

(assert (=> b!4377378 d!1303056))

(assert (=> b!4377378 d!1302998))

(declare-fun bs!660200 () Bool)

(declare-fun d!1303062 () Bool)

(assert (= bs!660200 (and d!1303062 start!425028)))

(declare-fun lambda!145009 () Int)

(assert (=> bs!660200 (= lambda!145009 lambda!144919)))

(declare-fun bs!660201 () Bool)

(assert (= bs!660201 (and d!1303062 d!1303056)))

(assert (=> bs!660201 (= lambda!145009 lambda!145008)))

(declare-fun lt!1588312 () ListMap!2381)

(assert (=> d!1303062 (invariantList!720 (toList!3138 lt!1588312))))

(declare-fun e!2724870 () ListMap!2381)

(assert (=> d!1303062 (= lt!1588312 e!2724870)))

(declare-fun c!744415 () Bool)

(assert (=> d!1303062 (= c!744415 ((_ is Cons!49151) (t!356201 (toList!3137 lm!1707))))))

(assert (=> d!1303062 (forall!9267 (t!356201 (toList!3137 lm!1707)) lambda!145009)))

(assert (=> d!1303062 (= (extractMap!636 (t!356201 (toList!3137 lm!1707))) lt!1588312)))

(declare-fun b!4377564 () Bool)

(assert (=> b!4377564 (= e!2724870 (addToMapMapFromBucket!258 (_2!27634 (h!54746 (t!356201 (toList!3137 lm!1707)))) (extractMap!636 (t!356201 (t!356201 (toList!3137 lm!1707))))))))

(declare-fun b!4377565 () Bool)

(assert (=> b!4377565 (= e!2724870 (ListMap!2382 Nil!49150))))

(assert (= (and d!1303062 c!744415) b!4377564))

(assert (= (and d!1303062 (not c!744415)) b!4377565))

(declare-fun m!5012549 () Bool)

(assert (=> d!1303062 m!5012549))

(declare-fun m!5012551 () Bool)

(assert (=> d!1303062 m!5012551))

(declare-fun m!5012553 () Bool)

(assert (=> b!4377564 m!5012553))

(assert (=> b!4377564 m!5012553))

(declare-fun m!5012555 () Bool)

(assert (=> b!4377564 m!5012555))

(assert (=> b!4377378 d!1303062))

(declare-fun bs!660202 () Bool)

(declare-fun b!4377573 () Bool)

(assert (= bs!660202 (and b!4377573 b!4377530)))

(declare-fun lambda!145010 () Int)

(assert (=> bs!660202 (= (= (+!786 lt!1588017 lt!1588015) lt!1588017) (= lambda!145010 lambda!144986))))

(declare-fun bs!660203 () Bool)

(assert (= bs!660203 (and b!4377573 b!4377531)))

(assert (=> bs!660203 (= (= (+!786 lt!1588017 lt!1588015) lt!1588244) (= lambda!145010 lambda!144992))))

(declare-fun bs!660204 () Bool)

(assert (= bs!660204 (and b!4377573 b!4377523)))

(assert (=> bs!660204 (= (= (+!786 lt!1588017 lt!1588015) lt!1588017) (= lambda!145010 lambda!144966))))

(declare-fun bs!660205 () Bool)

(assert (= bs!660205 (and b!4377573 b!4377512)))

(assert (=> bs!660205 (= (= (+!786 lt!1588017 lt!1588015) lt!1588017) (= lambda!145010 lambda!144958))))

(declare-fun bs!660206 () Bool)

(assert (= bs!660206 (and b!4377573 b!4377524)))

(assert (=> bs!660206 (= (= (+!786 lt!1588017 lt!1588015) lt!1588191) (= lambda!145010 lambda!144972))))

(assert (=> bs!660206 (= (= (+!786 lt!1588017 lt!1588015) lt!1588017) (= lambda!145010 lambda!144969))))

(declare-fun bs!660207 () Bool)

(assert (= bs!660207 (and b!4377573 b!4377513)))

(assert (=> bs!660207 (= (= (+!786 lt!1588017 lt!1588015) lt!1588155) (= lambda!145010 lambda!144960))))

(assert (=> bs!660207 (= (= (+!786 lt!1588017 lt!1588015) lt!1588017) (= lambda!145010 lambda!144959))))

(declare-fun bs!660208 () Bool)

(assert (= bs!660208 (and b!4377573 d!1303022)))

(assert (=> bs!660208 (= (= (+!786 lt!1588017 lt!1588015) lt!1588159) (= lambda!145010 lambda!144961))))

(declare-fun bs!660209 () Bool)

(assert (= bs!660209 (and b!4377573 d!1303046)))

(assert (=> bs!660209 (= (= (+!786 lt!1588017 lt!1588015) lt!1588248) (= lambda!145010 lambda!144993))))

(assert (=> bs!660203 (= (= (+!786 lt!1588017 lt!1588015) lt!1588017) (= lambda!145010 lambda!144989))))

(declare-fun bs!660210 () Bool)

(assert (= bs!660210 (and b!4377573 d!1303042)))

(assert (=> bs!660210 (= (= (+!786 lt!1588017 lt!1588015) lt!1588199) (= lambda!145010 lambda!144975))))

(assert (=> b!4377573 true))

(declare-fun bs!660211 () Bool)

(declare-fun b!4377574 () Bool)

(assert (= bs!660211 (and b!4377574 b!4377530)))

(declare-fun lambda!145011 () Int)

(assert (=> bs!660211 (= (= (+!786 lt!1588017 lt!1588015) lt!1588017) (= lambda!145011 lambda!144986))))

(declare-fun bs!660212 () Bool)

(assert (= bs!660212 (and b!4377574 b!4377531)))

(assert (=> bs!660212 (= (= (+!786 lt!1588017 lt!1588015) lt!1588244) (= lambda!145011 lambda!144992))))

(declare-fun bs!660213 () Bool)

(assert (= bs!660213 (and b!4377574 b!4377523)))

(assert (=> bs!660213 (= (= (+!786 lt!1588017 lt!1588015) lt!1588017) (= lambda!145011 lambda!144966))))

(declare-fun bs!660214 () Bool)

(assert (= bs!660214 (and b!4377574 b!4377512)))

(assert (=> bs!660214 (= (= (+!786 lt!1588017 lt!1588015) lt!1588017) (= lambda!145011 lambda!144958))))

(declare-fun bs!660215 () Bool)

(assert (= bs!660215 (and b!4377574 b!4377524)))

(assert (=> bs!660215 (= (= (+!786 lt!1588017 lt!1588015) lt!1588191) (= lambda!145011 lambda!144972))))

(assert (=> bs!660215 (= (= (+!786 lt!1588017 lt!1588015) lt!1588017) (= lambda!145011 lambda!144969))))

(declare-fun bs!660216 () Bool)

(assert (= bs!660216 (and b!4377574 b!4377513)))

(assert (=> bs!660216 (= (= (+!786 lt!1588017 lt!1588015) lt!1588155) (= lambda!145011 lambda!144960))))

(assert (=> bs!660216 (= (= (+!786 lt!1588017 lt!1588015) lt!1588017) (= lambda!145011 lambda!144959))))

(declare-fun bs!660217 () Bool)

(assert (= bs!660217 (and b!4377574 b!4377573)))

(assert (=> bs!660217 (= lambda!145011 lambda!145010)))

(declare-fun bs!660218 () Bool)

(assert (= bs!660218 (and b!4377574 d!1303022)))

(assert (=> bs!660218 (= (= (+!786 lt!1588017 lt!1588015) lt!1588159) (= lambda!145011 lambda!144961))))

(declare-fun bs!660219 () Bool)

(assert (= bs!660219 (and b!4377574 d!1303046)))

(assert (=> bs!660219 (= (= (+!786 lt!1588017 lt!1588015) lt!1588248) (= lambda!145011 lambda!144993))))

(assert (=> bs!660212 (= (= (+!786 lt!1588017 lt!1588015) lt!1588017) (= lambda!145011 lambda!144989))))

(declare-fun bs!660220 () Bool)

(assert (= bs!660220 (and b!4377574 d!1303042)))

(assert (=> bs!660220 (= (= (+!786 lt!1588017 lt!1588015) lt!1588199) (= lambda!145011 lambda!144975))))

(assert (=> b!4377574 true))

(declare-fun lambda!145012 () Int)

(declare-fun lt!1588337 () ListMap!2381)

(assert (=> bs!660211 (= (= lt!1588337 lt!1588017) (= lambda!145012 lambda!144986))))

(assert (=> bs!660212 (= (= lt!1588337 lt!1588244) (= lambda!145012 lambda!144992))))

(assert (=> bs!660213 (= (= lt!1588337 lt!1588017) (= lambda!145012 lambda!144966))))

(assert (=> bs!660214 (= (= lt!1588337 lt!1588017) (= lambda!145012 lambda!144958))))

(assert (=> bs!660215 (= (= lt!1588337 lt!1588191) (= lambda!145012 lambda!144972))))

(assert (=> bs!660215 (= (= lt!1588337 lt!1588017) (= lambda!145012 lambda!144969))))

(assert (=> bs!660216 (= (= lt!1588337 lt!1588155) (= lambda!145012 lambda!144960))))

(assert (=> b!4377574 (= (= lt!1588337 (+!786 lt!1588017 lt!1588015)) (= lambda!145012 lambda!145011))))

(assert (=> bs!660216 (= (= lt!1588337 lt!1588017) (= lambda!145012 lambda!144959))))

(assert (=> bs!660217 (= (= lt!1588337 (+!786 lt!1588017 lt!1588015)) (= lambda!145012 lambda!145010))))

(assert (=> bs!660218 (= (= lt!1588337 lt!1588159) (= lambda!145012 lambda!144961))))

(assert (=> bs!660219 (= (= lt!1588337 lt!1588248) (= lambda!145012 lambda!144993))))

(assert (=> bs!660212 (= (= lt!1588337 lt!1588017) (= lambda!145012 lambda!144989))))

(assert (=> bs!660220 (= (= lt!1588337 lt!1588199) (= lambda!145012 lambda!144975))))

(assert (=> b!4377574 true))

(declare-fun bs!660221 () Bool)

(declare-fun d!1303064 () Bool)

(assert (= bs!660221 (and d!1303064 b!4377530)))

(declare-fun lt!1588341 () ListMap!2381)

(declare-fun lambda!145013 () Int)

(assert (=> bs!660221 (= (= lt!1588341 lt!1588017) (= lambda!145013 lambda!144986))))

(declare-fun bs!660222 () Bool)

(assert (= bs!660222 (and d!1303064 b!4377531)))

(assert (=> bs!660222 (= (= lt!1588341 lt!1588244) (= lambda!145013 lambda!144992))))

(declare-fun bs!660223 () Bool)

(assert (= bs!660223 (and d!1303064 b!4377523)))

(assert (=> bs!660223 (= (= lt!1588341 lt!1588017) (= lambda!145013 lambda!144966))))

(declare-fun bs!660224 () Bool)

(assert (= bs!660224 (and d!1303064 b!4377524)))

(assert (=> bs!660224 (= (= lt!1588341 lt!1588191) (= lambda!145013 lambda!144972))))

(assert (=> bs!660224 (= (= lt!1588341 lt!1588017) (= lambda!145013 lambda!144969))))

(declare-fun bs!660225 () Bool)

(assert (= bs!660225 (and d!1303064 b!4377513)))

(assert (=> bs!660225 (= (= lt!1588341 lt!1588155) (= lambda!145013 lambda!144960))))

(declare-fun bs!660226 () Bool)

(assert (= bs!660226 (and d!1303064 b!4377574)))

(assert (=> bs!660226 (= (= lt!1588341 (+!786 lt!1588017 lt!1588015)) (= lambda!145013 lambda!145011))))

(assert (=> bs!660225 (= (= lt!1588341 lt!1588017) (= lambda!145013 lambda!144959))))

(declare-fun bs!660227 () Bool)

(assert (= bs!660227 (and d!1303064 b!4377573)))

(assert (=> bs!660227 (= (= lt!1588341 (+!786 lt!1588017 lt!1588015)) (= lambda!145013 lambda!145010))))

(declare-fun bs!660228 () Bool)

(assert (= bs!660228 (and d!1303064 d!1303022)))

(assert (=> bs!660228 (= (= lt!1588341 lt!1588159) (= lambda!145013 lambda!144961))))

(declare-fun bs!660229 () Bool)

(assert (= bs!660229 (and d!1303064 d!1303046)))

(assert (=> bs!660229 (= (= lt!1588341 lt!1588248) (= lambda!145013 lambda!144993))))

(declare-fun bs!660230 () Bool)

(assert (= bs!660230 (and d!1303064 b!4377512)))

(assert (=> bs!660230 (= (= lt!1588341 lt!1588017) (= lambda!145013 lambda!144958))))

(assert (=> bs!660226 (= (= lt!1588341 lt!1588337) (= lambda!145013 lambda!145012))))

(assert (=> bs!660222 (= (= lt!1588341 lt!1588017) (= lambda!145013 lambda!144989))))

(declare-fun bs!660231 () Bool)

(assert (= bs!660231 (and d!1303064 d!1303042)))

(assert (=> bs!660231 (= (= lt!1588341 lt!1588199) (= lambda!145013 lambda!144975))))

(assert (=> d!1303064 true))

(declare-fun call!304427 () Bool)

(declare-fun bm!304421 () Bool)

(declare-fun c!744416 () Bool)

(declare-fun lt!1588328 () ListMap!2381)

(assert (=> bm!304421 (= call!304427 (forall!9269 (ite c!744416 (toList!3138 (+!786 lt!1588017 lt!1588015)) (toList!3138 lt!1588328)) (ite c!744416 lambda!145010 lambda!145012)))))

(declare-fun b!4377570 () Bool)

(declare-fun res!1802609 () Bool)

(declare-fun e!2724874 () Bool)

(assert (=> b!4377570 (=> (not res!1802609) (not e!2724874))))

(assert (=> b!4377570 (= res!1802609 (forall!9269 (toList!3138 (+!786 lt!1588017 lt!1588015)) lambda!145013))))

(assert (=> d!1303064 e!2724874))

(declare-fun res!1802608 () Bool)

(assert (=> d!1303064 (=> (not res!1802608) (not e!2724874))))

(assert (=> d!1303064 (= res!1802608 (forall!9269 lt!1588019 lambda!145013))))

(declare-fun e!2724875 () ListMap!2381)

(assert (=> d!1303064 (= lt!1588341 e!2724875)))

(assert (=> d!1303064 (= c!744416 ((_ is Nil!49150) lt!1588019))))

(assert (=> d!1303064 (noDuplicateKeys!577 lt!1588019)))

(assert (=> d!1303064 (= (addToMapMapFromBucket!258 lt!1588019 (+!786 lt!1588017 lt!1588015)) lt!1588341)))

(declare-fun b!4377571 () Bool)

(declare-fun e!2724873 () Bool)

(assert (=> b!4377571 (= e!2724873 (forall!9269 (toList!3138 (+!786 lt!1588017 lt!1588015)) lambda!145012))))

(declare-fun bm!304422 () Bool)

(declare-fun call!304426 () Bool)

(assert (=> bm!304422 (= call!304426 (forall!9269 (ite c!744416 (toList!3138 (+!786 lt!1588017 lt!1588015)) lt!1588019) (ite c!744416 lambda!145010 lambda!145012)))))

(declare-fun b!4377572 () Bool)

(assert (=> b!4377572 (= e!2724874 (invariantList!720 (toList!3138 lt!1588341)))))

(declare-fun bm!304423 () Bool)

(declare-fun call!304428 () Unit!75016)

(assert (=> bm!304423 (= call!304428 (lemmaContainsAllItsOwnKeys!102 (+!786 lt!1588017 lt!1588015)))))

(assert (=> b!4377573 (= e!2724875 (+!786 lt!1588017 lt!1588015))))

(declare-fun lt!1588340 () Unit!75016)

(assert (=> b!4377573 (= lt!1588340 call!304428)))

(assert (=> b!4377573 call!304427))

(declare-fun lt!1588334 () Unit!75016)

(assert (=> b!4377573 (= lt!1588334 lt!1588340)))

(assert (=> b!4377573 call!304426))

(declare-fun lt!1588329 () Unit!75016)

(declare-fun Unit!75077 () Unit!75016)

(assert (=> b!4377573 (= lt!1588329 Unit!75077)))

(assert (=> b!4377574 (= e!2724875 lt!1588337)))

(assert (=> b!4377574 (= lt!1588328 (+!786 (+!786 lt!1588017 lt!1588015) (h!54745 lt!1588019)))))

(assert (=> b!4377574 (= lt!1588337 (addToMapMapFromBucket!258 (t!356200 lt!1588019) (+!786 (+!786 lt!1588017 lt!1588015) (h!54745 lt!1588019))))))

(declare-fun lt!1588326 () Unit!75016)

(assert (=> b!4377574 (= lt!1588326 call!304428)))

(assert (=> b!4377574 (forall!9269 (toList!3138 (+!786 lt!1588017 lt!1588015)) lambda!145011)))

(declare-fun lt!1588322 () Unit!75016)

(assert (=> b!4377574 (= lt!1588322 lt!1588326)))

(assert (=> b!4377574 (forall!9269 (toList!3138 lt!1588328) lambda!145012)))

(declare-fun lt!1588327 () Unit!75016)

(declare-fun Unit!75078 () Unit!75016)

(assert (=> b!4377574 (= lt!1588327 Unit!75078)))

(assert (=> b!4377574 (forall!9269 (t!356200 lt!1588019) lambda!145012)))

(declare-fun lt!1588339 () Unit!75016)

(declare-fun Unit!75079 () Unit!75016)

(assert (=> b!4377574 (= lt!1588339 Unit!75079)))

(declare-fun lt!1588321 () Unit!75016)

(declare-fun Unit!75080 () Unit!75016)

(assert (=> b!4377574 (= lt!1588321 Unit!75080)))

(declare-fun lt!1588330 () Unit!75016)

(assert (=> b!4377574 (= lt!1588330 (forallContained!1906 (toList!3138 lt!1588328) lambda!145012 (h!54745 lt!1588019)))))

(assert (=> b!4377574 (contains!11477 lt!1588328 (_1!27633 (h!54745 lt!1588019)))))

(declare-fun lt!1588323 () Unit!75016)

(declare-fun Unit!75081 () Unit!75016)

(assert (=> b!4377574 (= lt!1588323 Unit!75081)))

(assert (=> b!4377574 (contains!11477 lt!1588337 (_1!27633 (h!54745 lt!1588019)))))

(declare-fun lt!1588324 () Unit!75016)

(declare-fun Unit!75082 () Unit!75016)

(assert (=> b!4377574 (= lt!1588324 Unit!75082)))

(assert (=> b!4377574 call!304426))

(declare-fun lt!1588333 () Unit!75016)

(declare-fun Unit!75083 () Unit!75016)

(assert (=> b!4377574 (= lt!1588333 Unit!75083)))

(assert (=> b!4377574 call!304427))

(declare-fun lt!1588338 () Unit!75016)

(declare-fun Unit!75084 () Unit!75016)

(assert (=> b!4377574 (= lt!1588338 Unit!75084)))

(declare-fun lt!1588325 () Unit!75016)

(declare-fun Unit!75085 () Unit!75016)

(assert (=> b!4377574 (= lt!1588325 Unit!75085)))

(declare-fun lt!1588332 () Unit!75016)

(assert (=> b!4377574 (= lt!1588332 (addForallContainsKeyThenBeforeAdding!102 (+!786 lt!1588017 lt!1588015) lt!1588337 (_1!27633 (h!54745 lt!1588019)) (_2!27633 (h!54745 lt!1588019))))))

(assert (=> b!4377574 (forall!9269 (toList!3138 (+!786 lt!1588017 lt!1588015)) lambda!145012)))

(declare-fun lt!1588331 () Unit!75016)

(assert (=> b!4377574 (= lt!1588331 lt!1588332)))

(assert (=> b!4377574 (forall!9269 (toList!3138 (+!786 lt!1588017 lt!1588015)) lambda!145012)))

(declare-fun lt!1588335 () Unit!75016)

(declare-fun Unit!75086 () Unit!75016)

(assert (=> b!4377574 (= lt!1588335 Unit!75086)))

(declare-fun res!1802610 () Bool)

(assert (=> b!4377574 (= res!1802610 (forall!9269 lt!1588019 lambda!145012))))

(assert (=> b!4377574 (=> (not res!1802610) (not e!2724873))))

(assert (=> b!4377574 e!2724873))

(declare-fun lt!1588336 () Unit!75016)

(declare-fun Unit!75087 () Unit!75016)

(assert (=> b!4377574 (= lt!1588336 Unit!75087)))

(assert (= (and d!1303064 c!744416) b!4377573))

(assert (= (and d!1303064 (not c!744416)) b!4377574))

(assert (= (and b!4377574 res!1802610) b!4377571))

(assert (= (or b!4377573 b!4377574) bm!304423))

(assert (= (or b!4377573 b!4377574) bm!304422))

(assert (= (or b!4377573 b!4377574) bm!304421))

(assert (= (and d!1303064 res!1802608) b!4377570))

(assert (= (and b!4377570 res!1802609) b!4377572))

(declare-fun m!5012569 () Bool)

(assert (=> d!1303064 m!5012569))

(assert (=> d!1303064 m!5012327))

(declare-fun m!5012571 () Bool)

(assert (=> b!4377571 m!5012571))

(declare-fun m!5012573 () Bool)

(assert (=> b!4377572 m!5012573))

(declare-fun m!5012575 () Bool)

(assert (=> b!4377570 m!5012575))

(declare-fun m!5012577 () Bool)

(assert (=> bm!304421 m!5012577))

(assert (=> bm!304423 m!5012141))

(declare-fun m!5012579 () Bool)

(assert (=> bm!304423 m!5012579))

(declare-fun m!5012581 () Bool)

(assert (=> b!4377574 m!5012581))

(declare-fun m!5012583 () Bool)

(assert (=> b!4377574 m!5012583))

(declare-fun m!5012585 () Bool)

(assert (=> b!4377574 m!5012585))

(declare-fun m!5012587 () Bool)

(assert (=> b!4377574 m!5012587))

(declare-fun m!5012589 () Bool)

(assert (=> b!4377574 m!5012589))

(assert (=> b!4377574 m!5012571))

(assert (=> b!4377574 m!5012141))

(declare-fun m!5012591 () Bool)

(assert (=> b!4377574 m!5012591))

(declare-fun m!5012593 () Bool)

(assert (=> b!4377574 m!5012593))

(declare-fun m!5012595 () Bool)

(assert (=> b!4377574 m!5012595))

(assert (=> b!4377574 m!5012141))

(assert (=> b!4377574 m!5012587))

(declare-fun m!5012597 () Bool)

(assert (=> b!4377574 m!5012597))

(declare-fun m!5012599 () Bool)

(assert (=> b!4377574 m!5012599))

(assert (=> b!4377574 m!5012571))

(declare-fun m!5012601 () Bool)

(assert (=> bm!304422 m!5012601))

(assert (=> b!4377378 d!1303064))

(declare-fun d!1303068 () Bool)

(declare-fun e!2724882 () Bool)

(assert (=> d!1303068 e!2724882))

(declare-fun res!1802615 () Bool)

(assert (=> d!1303068 (=> res!1802615 e!2724882)))

(declare-fun lt!1588360 () Bool)

(assert (=> d!1303068 (= res!1802615 (not lt!1588360))))

(declare-fun lt!1588358 () Bool)

(assert (=> d!1303068 (= lt!1588360 lt!1588358)))

(declare-fun lt!1588357 () Unit!75016)

(declare-fun e!2724881 () Unit!75016)

(assert (=> d!1303068 (= lt!1588357 e!2724881)))

(declare-fun c!744419 () Bool)

(assert (=> d!1303068 (= c!744419 lt!1588358)))

(declare-fun containsKey!844 (List!49275 (_ BitVec 64)) Bool)

(assert (=> d!1303068 (= lt!1588358 (containsKey!844 (toList!3137 lm!1707) hash!377))))

(assert (=> d!1303068 (= (contains!11479 lm!1707 hash!377) lt!1588360)))

(declare-fun b!4377583 () Bool)

(declare-fun lt!1588359 () Unit!75016)

(assert (=> b!4377583 (= e!2724881 lt!1588359)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!452 (List!49275 (_ BitVec 64)) Unit!75016)

(assert (=> b!4377583 (= lt!1588359 (lemmaContainsKeyImpliesGetValueByKeyDefined!452 (toList!3137 lm!1707) hash!377))))

(declare-fun isDefined!7849 (Option!10553) Bool)

(assert (=> b!4377583 (isDefined!7849 (getValueByKey!539 (toList!3137 lm!1707) hash!377))))

(declare-fun b!4377584 () Bool)

(declare-fun Unit!75093 () Unit!75016)

(assert (=> b!4377584 (= e!2724881 Unit!75093)))

(declare-fun b!4377585 () Bool)

(assert (=> b!4377585 (= e!2724882 (isDefined!7849 (getValueByKey!539 (toList!3137 lm!1707) hash!377)))))

(assert (= (and d!1303068 c!744419) b!4377583))

(assert (= (and d!1303068 (not c!744419)) b!4377584))

(assert (= (and d!1303068 (not res!1802615)) b!4377585))

(declare-fun m!5012615 () Bool)

(assert (=> d!1303068 m!5012615))

(declare-fun m!5012617 () Bool)

(assert (=> b!4377583 m!5012617))

(assert (=> b!4377583 m!5012227))

(assert (=> b!4377583 m!5012227))

(declare-fun m!5012619 () Bool)

(assert (=> b!4377583 m!5012619))

(assert (=> b!4377585 m!5012227))

(assert (=> b!4377585 m!5012227))

(assert (=> b!4377585 m!5012619))

(assert (=> b!4377387 d!1303068))

(declare-fun bs!660233 () Bool)

(declare-fun d!1303072 () Bool)

(assert (= bs!660233 (and d!1303072 start!425028)))

(declare-fun lambda!145016 () Int)

(assert (=> bs!660233 (not (= lambda!145016 lambda!144919))))

(declare-fun bs!660234 () Bool)

(assert (= bs!660234 (and d!1303072 d!1303056)))

(assert (=> bs!660234 (not (= lambda!145016 lambda!145008))))

(declare-fun bs!660235 () Bool)

(assert (= bs!660235 (and d!1303072 d!1303062)))

(assert (=> bs!660235 (not (= lambda!145016 lambda!145009))))

(assert (=> d!1303072 true))

(assert (=> d!1303072 (= (allKeysSameHashInMap!681 lm!1707 hashF!1247) (forall!9267 (toList!3137 lm!1707) lambda!145016))))

(declare-fun bs!660236 () Bool)

(assert (= bs!660236 d!1303072))

(declare-fun m!5012621 () Bool)

(assert (=> bs!660236 m!5012621))

(assert (=> b!4377376 d!1303072))

(declare-fun bs!660237 () Bool)

(declare-fun d!1303074 () Bool)

(assert (= bs!660237 (and d!1303074 b!4377530)))

(declare-fun lambda!145019 () Int)

(assert (=> bs!660237 (not (= lambda!145019 lambda!144986))))

(declare-fun bs!660238 () Bool)

(assert (= bs!660238 (and d!1303074 b!4377531)))

(assert (=> bs!660238 (not (= lambda!145019 lambda!144992))))

(declare-fun bs!660239 () Bool)

(assert (= bs!660239 (and d!1303074 d!1303064)))

(assert (=> bs!660239 (not (= lambda!145019 lambda!145013))))

(declare-fun bs!660240 () Bool)

(assert (= bs!660240 (and d!1303074 b!4377523)))

(assert (=> bs!660240 (not (= lambda!145019 lambda!144966))))

(declare-fun bs!660241 () Bool)

(assert (= bs!660241 (and d!1303074 b!4377524)))

(assert (=> bs!660241 (not (= lambda!145019 lambda!144972))))

(assert (=> bs!660241 (not (= lambda!145019 lambda!144969))))

(declare-fun bs!660242 () Bool)

(assert (= bs!660242 (and d!1303074 b!4377513)))

(assert (=> bs!660242 (not (= lambda!145019 lambda!144960))))

(declare-fun bs!660243 () Bool)

(assert (= bs!660243 (and d!1303074 b!4377574)))

(assert (=> bs!660243 (not (= lambda!145019 lambda!145011))))

(assert (=> bs!660242 (not (= lambda!145019 lambda!144959))))

(declare-fun bs!660244 () Bool)

(assert (= bs!660244 (and d!1303074 b!4377573)))

(assert (=> bs!660244 (not (= lambda!145019 lambda!145010))))

(declare-fun bs!660245 () Bool)

(assert (= bs!660245 (and d!1303074 d!1303022)))

(assert (=> bs!660245 (not (= lambda!145019 lambda!144961))))

(declare-fun bs!660246 () Bool)

(assert (= bs!660246 (and d!1303074 d!1303046)))

(assert (=> bs!660246 (not (= lambda!145019 lambda!144993))))

(declare-fun bs!660247 () Bool)

(assert (= bs!660247 (and d!1303074 b!4377512)))

(assert (=> bs!660247 (not (= lambda!145019 lambda!144958))))

(assert (=> bs!660243 (not (= lambda!145019 lambda!145012))))

(assert (=> bs!660238 (not (= lambda!145019 lambda!144989))))

(declare-fun bs!660248 () Bool)

(assert (= bs!660248 (and d!1303074 d!1303042)))

(assert (=> bs!660248 (not (= lambda!145019 lambda!144975))))

(assert (=> d!1303074 true))

(assert (=> d!1303074 true))

(assert (=> d!1303074 (= (allKeysSameHash!535 lt!1588007 hash!377 hashF!1247) (forall!9269 lt!1588007 lambda!145019))))

(declare-fun bs!660249 () Bool)

(assert (= bs!660249 d!1303074))

(declare-fun m!5012635 () Bool)

(assert (=> bs!660249 m!5012635))

(assert (=> b!4377377 d!1303074))

(declare-fun bs!660250 () Bool)

(declare-fun d!1303078 () Bool)

(assert (= bs!660250 (and d!1303078 b!4377530)))

(declare-fun lambda!145020 () Int)

(assert (=> bs!660250 (not (= lambda!145020 lambda!144986))))

(declare-fun bs!660251 () Bool)

(assert (= bs!660251 (and d!1303078 b!4377531)))

(assert (=> bs!660251 (not (= lambda!145020 lambda!144992))))

(declare-fun bs!660252 () Bool)

(assert (= bs!660252 (and d!1303078 d!1303074)))

(assert (=> bs!660252 (= lambda!145020 lambda!145019)))

(declare-fun bs!660254 () Bool)

(assert (= bs!660254 (and d!1303078 d!1303064)))

(assert (=> bs!660254 (not (= lambda!145020 lambda!145013))))

(declare-fun bs!660256 () Bool)

(assert (= bs!660256 (and d!1303078 b!4377523)))

(assert (=> bs!660256 (not (= lambda!145020 lambda!144966))))

(declare-fun bs!660258 () Bool)

(assert (= bs!660258 (and d!1303078 b!4377524)))

(assert (=> bs!660258 (not (= lambda!145020 lambda!144972))))

(assert (=> bs!660258 (not (= lambda!145020 lambda!144969))))

(declare-fun bs!660259 () Bool)

(assert (= bs!660259 (and d!1303078 b!4377513)))

(assert (=> bs!660259 (not (= lambda!145020 lambda!144960))))

(declare-fun bs!660260 () Bool)

(assert (= bs!660260 (and d!1303078 b!4377574)))

(assert (=> bs!660260 (not (= lambda!145020 lambda!145011))))

(assert (=> bs!660259 (not (= lambda!145020 lambda!144959))))

(declare-fun bs!660261 () Bool)

(assert (= bs!660261 (and d!1303078 b!4377573)))

(assert (=> bs!660261 (not (= lambda!145020 lambda!145010))))

(declare-fun bs!660262 () Bool)

(assert (= bs!660262 (and d!1303078 d!1303022)))

(assert (=> bs!660262 (not (= lambda!145020 lambda!144961))))

(declare-fun bs!660263 () Bool)

(assert (= bs!660263 (and d!1303078 d!1303046)))

(assert (=> bs!660263 (not (= lambda!145020 lambda!144993))))

(declare-fun bs!660264 () Bool)

(assert (= bs!660264 (and d!1303078 b!4377512)))

(assert (=> bs!660264 (not (= lambda!145020 lambda!144958))))

(assert (=> bs!660260 (not (= lambda!145020 lambda!145012))))

(assert (=> bs!660251 (not (= lambda!145020 lambda!144989))))

(declare-fun bs!660265 () Bool)

(assert (= bs!660265 (and d!1303078 d!1303042)))

(assert (=> bs!660265 (not (= lambda!145020 lambda!144975))))

(assert (=> d!1303078 true))

(assert (=> d!1303078 true))

(assert (=> d!1303078 (= (allKeysSameHash!535 newBucket!200 hash!377 hashF!1247) (forall!9269 newBucket!200 lambda!145020))))

(declare-fun bs!660266 () Bool)

(assert (= bs!660266 d!1303078))

(declare-fun m!5012653 () Bool)

(assert (=> bs!660266 m!5012653))

(assert (=> b!4377391 d!1303078))

(assert (=> start!425028 d!1302998))

(declare-fun d!1303086 () Bool)

(assert (=> d!1303086 (= (inv!64696 lm!1707) (isStrictlySorted!147 (toList!3137 lm!1707)))))

(declare-fun bs!660271 () Bool)

(assert (= bs!660271 d!1303086))

(assert (=> bs!660271 m!5012269))

(assert (=> start!425028 d!1303086))

(assert (=> b!4377381 d!1302990))

(declare-fun d!1303088 () Bool)

(declare-fun res!1802633 () Bool)

(declare-fun e!2724898 () Bool)

(assert (=> d!1303088 (=> res!1802633 e!2724898)))

(assert (=> d!1303088 (= res!1802633 (not ((_ is Cons!49150) lt!1588007)))))

(assert (=> d!1303088 (= (noDuplicateKeys!577 lt!1588007) e!2724898)))

(declare-fun b!4377615 () Bool)

(declare-fun e!2724899 () Bool)

(assert (=> b!4377615 (= e!2724898 e!2724899)))

(declare-fun res!1802634 () Bool)

(assert (=> b!4377615 (=> (not res!1802634) (not e!2724899))))

(assert (=> b!4377615 (= res!1802634 (not (containsKey!841 (t!356200 lt!1588007) (_1!27633 (h!54745 lt!1588007)))))))

(declare-fun b!4377616 () Bool)

(assert (=> b!4377616 (= e!2724899 (noDuplicateKeys!577 (t!356200 lt!1588007)))))

(assert (= (and d!1303088 (not res!1802633)) b!4377615))

(assert (= (and b!4377615 res!1802634) b!4377616))

(declare-fun m!5012671 () Bool)

(assert (=> b!4377615 m!5012671))

(declare-fun m!5012673 () Bool)

(assert (=> b!4377616 m!5012673))

(assert (=> b!4377390 d!1303088))

(assert (=> b!4377390 d!1303010))

(declare-fun d!1303094 () Bool)

(declare-fun e!2724901 () Bool)

(assert (=> d!1303094 e!2724901))

(declare-fun res!1802635 () Bool)

(assert (=> d!1303094 (=> res!1802635 e!2724901)))

(declare-fun lt!1588403 () Bool)

(assert (=> d!1303094 (= res!1802635 (not lt!1588403))))

(declare-fun lt!1588401 () Bool)

(assert (=> d!1303094 (= lt!1588403 lt!1588401)))

(declare-fun lt!1588400 () Unit!75016)

(declare-fun e!2724900 () Unit!75016)

(assert (=> d!1303094 (= lt!1588400 e!2724900)))

(declare-fun c!744423 () Bool)

(assert (=> d!1303094 (= c!744423 lt!1588401)))

(assert (=> d!1303094 (= lt!1588401 (containsKey!844 (toList!3137 lm!1707) lt!1588008))))

(assert (=> d!1303094 (= (contains!11479 lm!1707 lt!1588008) lt!1588403)))

(declare-fun b!4377617 () Bool)

(declare-fun lt!1588402 () Unit!75016)

(assert (=> b!4377617 (= e!2724900 lt!1588402)))

(assert (=> b!4377617 (= lt!1588402 (lemmaContainsKeyImpliesGetValueByKeyDefined!452 (toList!3137 lm!1707) lt!1588008))))

(assert (=> b!4377617 (isDefined!7849 (getValueByKey!539 (toList!3137 lm!1707) lt!1588008))))

(declare-fun b!4377618 () Bool)

(declare-fun Unit!75100 () Unit!75016)

(assert (=> b!4377618 (= e!2724900 Unit!75100)))

(declare-fun b!4377619 () Bool)

(assert (=> b!4377619 (= e!2724901 (isDefined!7849 (getValueByKey!539 (toList!3137 lm!1707) lt!1588008)))))

(assert (= (and d!1303094 c!744423) b!4377617))

(assert (= (and d!1303094 (not c!744423)) b!4377618))

(assert (= (and d!1303094 (not res!1802635)) b!4377619))

(declare-fun m!5012675 () Bool)

(assert (=> d!1303094 m!5012675))

(declare-fun m!5012677 () Bool)

(assert (=> b!4377617 m!5012677))

(declare-fun m!5012679 () Bool)

(assert (=> b!4377617 m!5012679))

(assert (=> b!4377617 m!5012679))

(declare-fun m!5012681 () Bool)

(assert (=> b!4377617 m!5012681))

(assert (=> b!4377619 m!5012679))

(assert (=> b!4377619 m!5012679))

(assert (=> b!4377619 m!5012681))

(assert (=> b!4377390 d!1303094))

(declare-fun bs!660299 () Bool)

(declare-fun d!1303096 () Bool)

(assert (= bs!660299 (and d!1303096 start!425028)))

(declare-fun lambda!145029 () Int)

(assert (=> bs!660299 (= lambda!145029 lambda!144919)))

(declare-fun bs!660300 () Bool)

(assert (= bs!660300 (and d!1303096 d!1303056)))

(assert (=> bs!660300 (= lambda!145029 lambda!145008)))

(declare-fun bs!660301 () Bool)

(assert (= bs!660301 (and d!1303096 d!1303062)))

(assert (=> bs!660301 (= lambda!145029 lambda!145009)))

(declare-fun bs!660302 () Bool)

(assert (= bs!660302 (and d!1303096 d!1303072)))

(assert (=> bs!660302 (not (= lambda!145029 lambda!145016))))

(assert (=> d!1303096 (contains!11479 lm!1707 (hash!1742 hashF!1247 key!3918))))

(declare-fun lt!1588406 () Unit!75016)

(declare-fun choose!27288 (ListLongMap!1787 K!10510 Hashable!4969) Unit!75016)

(assert (=> d!1303096 (= lt!1588406 (choose!27288 lm!1707 key!3918 hashF!1247))))

(assert (=> d!1303096 (forall!9267 (toList!3137 lm!1707) lambda!145029)))

(assert (=> d!1303096 (= (lemmaInGenMapThenLongMapContainsHash!56 lm!1707 key!3918 hashF!1247) lt!1588406)))

(declare-fun bs!660303 () Bool)

(assert (= bs!660303 d!1303096))

(assert (=> bs!660303 m!5012129))

(assert (=> bs!660303 m!5012129))

(declare-fun m!5012683 () Bool)

(assert (=> bs!660303 m!5012683))

(declare-fun m!5012685 () Bool)

(assert (=> bs!660303 m!5012685))

(declare-fun m!5012687 () Bool)

(assert (=> bs!660303 m!5012687))

(assert (=> b!4377390 d!1303096))

(declare-fun d!1303098 () Bool)

(declare-fun e!2724922 () Bool)

(assert (=> d!1303098 e!2724922))

(declare-fun res!1802652 () Bool)

(assert (=> d!1303098 (=> res!1802652 e!2724922)))

(declare-fun e!2724925 () Bool)

(assert (=> d!1303098 (= res!1802652 e!2724925)))

(declare-fun res!1802651 () Bool)

(assert (=> d!1303098 (=> (not res!1802651) (not e!2724925))))

(declare-fun lt!1588458 () Bool)

(assert (=> d!1303098 (= res!1802651 (not lt!1588458))))

(declare-fun lt!1588452 () Bool)

(assert (=> d!1303098 (= lt!1588458 lt!1588452)))

(declare-fun lt!1588456 () Unit!75016)

(declare-fun e!2724921 () Unit!75016)

(assert (=> d!1303098 (= lt!1588456 e!2724921)))

(declare-fun c!744432 () Bool)

(assert (=> d!1303098 (= c!744432 lt!1588452)))

(declare-fun containsKey!845 (List!49274 K!10510) Bool)

(assert (=> d!1303098 (= lt!1588452 (containsKey!845 (toList!3138 (extractMap!636 (toList!3137 lm!1707))) key!3918))))

(assert (=> d!1303098 (= (contains!11477 (extractMap!636 (toList!3137 lm!1707)) key!3918) lt!1588458)))

(declare-fun b!4377649 () Bool)

(declare-datatypes ((List!49277 0))(
  ( (Nil!49153) (Cons!49153 (h!54750 K!10510) (t!356203 List!49277)) )
))
(declare-fun e!2724926 () List!49277)

(declare-fun keys!16665 (ListMap!2381) List!49277)

(assert (=> b!4377649 (= e!2724926 (keys!16665 (extractMap!636 (toList!3137 lm!1707))))))

(declare-fun b!4377650 () Bool)

(declare-fun e!2724924 () Unit!75016)

(assert (=> b!4377650 (= e!2724921 e!2724924)))

(declare-fun c!744431 () Bool)

(declare-fun call!304437 () Bool)

(assert (=> b!4377650 (= c!744431 call!304437)))

(declare-fun b!4377651 () Bool)

(declare-fun e!2724923 () Bool)

(assert (=> b!4377651 (= e!2724922 e!2724923)))

(declare-fun res!1802650 () Bool)

(assert (=> b!4377651 (=> (not res!1802650) (not e!2724923))))

(declare-fun isDefined!7850 (Option!10556) Bool)

(assert (=> b!4377651 (= res!1802650 (isDefined!7850 (getValueByKey!542 (toList!3138 (extractMap!636 (toList!3137 lm!1707))) key!3918)))))

(declare-fun b!4377652 () Bool)

(declare-fun contains!11483 (List!49277 K!10510) Bool)

(assert (=> b!4377652 (= e!2724925 (not (contains!11483 (keys!16665 (extractMap!636 (toList!3137 lm!1707))) key!3918)))))

(declare-fun b!4377653 () Bool)

(assert (=> b!4377653 (= e!2724923 (contains!11483 (keys!16665 (extractMap!636 (toList!3137 lm!1707))) key!3918))))

(declare-fun b!4377654 () Bool)

(declare-fun Unit!75101 () Unit!75016)

(assert (=> b!4377654 (= e!2724924 Unit!75101)))

(declare-fun b!4377655 () Bool)

(declare-fun lt!1588455 () Unit!75016)

(assert (=> b!4377655 (= e!2724921 lt!1588455)))

(declare-fun lt!1588454 () Unit!75016)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!453 (List!49274 K!10510) Unit!75016)

(assert (=> b!4377655 (= lt!1588454 (lemmaContainsKeyImpliesGetValueByKeyDefined!453 (toList!3138 (extractMap!636 (toList!3137 lm!1707))) key!3918))))

(assert (=> b!4377655 (isDefined!7850 (getValueByKey!542 (toList!3138 (extractMap!636 (toList!3137 lm!1707))) key!3918))))

(declare-fun lt!1588453 () Unit!75016)

(assert (=> b!4377655 (= lt!1588453 lt!1588454)))

(declare-fun lemmaInListThenGetKeysListContains!166 (List!49274 K!10510) Unit!75016)

(assert (=> b!4377655 (= lt!1588455 (lemmaInListThenGetKeysListContains!166 (toList!3138 (extractMap!636 (toList!3137 lm!1707))) key!3918))))

(assert (=> b!4377655 call!304437))

(declare-fun bm!304432 () Bool)

(assert (=> bm!304432 (= call!304437 (contains!11483 e!2724926 key!3918))))

(declare-fun c!744433 () Bool)

(assert (=> bm!304432 (= c!744433 c!744432)))

(declare-fun b!4377656 () Bool)

(assert (=> b!4377656 false))

(declare-fun lt!1588457 () Unit!75016)

(declare-fun lt!1588451 () Unit!75016)

(assert (=> b!4377656 (= lt!1588457 lt!1588451)))

(assert (=> b!4377656 (containsKey!845 (toList!3138 (extractMap!636 (toList!3137 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!167 (List!49274 K!10510) Unit!75016)

(assert (=> b!4377656 (= lt!1588451 (lemmaInGetKeysListThenContainsKey!167 (toList!3138 (extractMap!636 (toList!3137 lm!1707))) key!3918))))

(declare-fun Unit!75105 () Unit!75016)

(assert (=> b!4377656 (= e!2724924 Unit!75105)))

(declare-fun b!4377657 () Bool)

(declare-fun getKeysList!169 (List!49274) List!49277)

(assert (=> b!4377657 (= e!2724926 (getKeysList!169 (toList!3138 (extractMap!636 (toList!3137 lm!1707)))))))

(assert (= (and d!1303098 c!744432) b!4377655))

(assert (= (and d!1303098 (not c!744432)) b!4377650))

(assert (= (and b!4377650 c!744431) b!4377656))

(assert (= (and b!4377650 (not c!744431)) b!4377654))

(assert (= (or b!4377655 b!4377650) bm!304432))

(assert (= (and bm!304432 c!744433) b!4377657))

(assert (= (and bm!304432 (not c!744433)) b!4377649))

(assert (= (and d!1303098 res!1802651) b!4377652))

(assert (= (and d!1303098 (not res!1802652)) b!4377651))

(assert (= (and b!4377651 res!1802650) b!4377653))

(declare-fun m!5012775 () Bool)

(assert (=> b!4377657 m!5012775))

(declare-fun m!5012777 () Bool)

(assert (=> b!4377655 m!5012777))

(declare-fun m!5012779 () Bool)

(assert (=> b!4377655 m!5012779))

(assert (=> b!4377655 m!5012779))

(declare-fun m!5012781 () Bool)

(assert (=> b!4377655 m!5012781))

(declare-fun m!5012783 () Bool)

(assert (=> b!4377655 m!5012783))

(assert (=> b!4377651 m!5012779))

(assert (=> b!4377651 m!5012779))

(assert (=> b!4377651 m!5012781))

(assert (=> b!4377652 m!5012165))

(declare-fun m!5012785 () Bool)

(assert (=> b!4377652 m!5012785))

(assert (=> b!4377652 m!5012785))

(declare-fun m!5012787 () Bool)

(assert (=> b!4377652 m!5012787))

(declare-fun m!5012789 () Bool)

(assert (=> bm!304432 m!5012789))

(assert (=> b!4377653 m!5012165))

(assert (=> b!4377653 m!5012785))

(assert (=> b!4377653 m!5012785))

(assert (=> b!4377653 m!5012787))

(declare-fun m!5012791 () Bool)

(assert (=> d!1303098 m!5012791))

(assert (=> b!4377656 m!5012791))

(declare-fun m!5012793 () Bool)

(assert (=> b!4377656 m!5012793))

(assert (=> b!4377649 m!5012165))

(assert (=> b!4377649 m!5012785))

(assert (=> b!4377383 d!1303098))

(declare-fun bs!660346 () Bool)

(declare-fun d!1303110 () Bool)

(assert (= bs!660346 (and d!1303110 d!1303062)))

(declare-fun lambda!145035 () Int)

(assert (=> bs!660346 (= lambda!145035 lambda!145009)))

(declare-fun bs!660347 () Bool)

(assert (= bs!660347 (and d!1303110 d!1303056)))

(assert (=> bs!660347 (= lambda!145035 lambda!145008)))

(declare-fun bs!660348 () Bool)

(assert (= bs!660348 (and d!1303110 d!1303072)))

(assert (=> bs!660348 (not (= lambda!145035 lambda!145016))))

(declare-fun bs!660349 () Bool)

(assert (= bs!660349 (and d!1303110 d!1303096)))

(assert (=> bs!660349 (= lambda!145035 lambda!145029)))

(declare-fun bs!660350 () Bool)

(assert (= bs!660350 (and d!1303110 start!425028)))

(assert (=> bs!660350 (= lambda!145035 lambda!144919)))

(declare-fun lt!1588460 () ListMap!2381)

(assert (=> d!1303110 (invariantList!720 (toList!3138 lt!1588460))))

(declare-fun e!2724928 () ListMap!2381)

(assert (=> d!1303110 (= lt!1588460 e!2724928)))

(declare-fun c!744435 () Bool)

(assert (=> d!1303110 (= c!744435 ((_ is Cons!49151) (toList!3137 lm!1707)))))

(assert (=> d!1303110 (forall!9267 (toList!3137 lm!1707) lambda!145035)))

(assert (=> d!1303110 (= (extractMap!636 (toList!3137 lm!1707)) lt!1588460)))

(declare-fun b!4377660 () Bool)

(assert (=> b!4377660 (= e!2724928 (addToMapMapFromBucket!258 (_2!27634 (h!54746 (toList!3137 lm!1707))) (extractMap!636 (t!356201 (toList!3137 lm!1707)))))))

(declare-fun b!4377661 () Bool)

(assert (=> b!4377661 (= e!2724928 (ListMap!2382 Nil!49150))))

(assert (= (and d!1303110 c!744435) b!4377660))

(assert (= (and d!1303110 (not c!744435)) b!4377661))

(declare-fun m!5012803 () Bool)

(assert (=> d!1303110 m!5012803))

(declare-fun m!5012805 () Bool)

(assert (=> d!1303110 m!5012805))

(assert (=> b!4377660 m!5012137))

(assert (=> b!4377660 m!5012137))

(declare-fun m!5012807 () Bool)

(assert (=> b!4377660 m!5012807))

(assert (=> b!4377383 d!1303110))

(declare-fun d!1303114 () Bool)

(declare-fun res!1802653 () Bool)

(declare-fun e!2724929 () Bool)

(assert (=> d!1303114 (=> res!1802653 e!2724929)))

(assert (=> d!1303114 (= res!1802653 (not ((_ is Cons!49150) newBucket!200)))))

(assert (=> d!1303114 (= (noDuplicateKeys!577 newBucket!200) e!2724929)))

(declare-fun b!4377662 () Bool)

(declare-fun e!2724930 () Bool)

(assert (=> b!4377662 (= e!2724929 e!2724930)))

(declare-fun res!1802654 () Bool)

(assert (=> b!4377662 (=> (not res!1802654) (not e!2724930))))

(assert (=> b!4377662 (= res!1802654 (not (containsKey!841 (t!356200 newBucket!200) (_1!27633 (h!54745 newBucket!200)))))))

(declare-fun b!4377663 () Bool)

(assert (=> b!4377663 (= e!2724930 (noDuplicateKeys!577 (t!356200 newBucket!200)))))

(assert (= (and d!1303114 (not res!1802653)) b!4377662))

(assert (= (and b!4377662 res!1802654) b!4377663))

(declare-fun m!5012809 () Bool)

(assert (=> b!4377662 m!5012809))

(declare-fun m!5012811 () Bool)

(assert (=> b!4377663 m!5012811))

(assert (=> b!4377392 d!1303114))

(declare-fun bs!660351 () Bool)

(declare-fun d!1303116 () Bool)

(assert (= bs!660351 (and d!1303116 d!1303062)))

(declare-fun lambda!145038 () Int)

(assert (=> bs!660351 (= lambda!145038 lambda!145009)))

(declare-fun bs!660352 () Bool)

(assert (= bs!660352 (and d!1303116 d!1303056)))

(assert (=> bs!660352 (= lambda!145038 lambda!145008)))

(declare-fun bs!660353 () Bool)

(assert (= bs!660353 (and d!1303116 d!1303096)))

(assert (=> bs!660353 (= lambda!145038 lambda!145029)))

(declare-fun bs!660354 () Bool)

(assert (= bs!660354 (and d!1303116 start!425028)))

(assert (=> bs!660354 (= lambda!145038 lambda!144919)))

(declare-fun bs!660355 () Bool)

(assert (= bs!660355 (and d!1303116 d!1303072)))

(assert (=> bs!660355 (not (= lambda!145038 lambda!145016))))

(declare-fun bs!660356 () Bool)

(assert (= bs!660356 (and d!1303116 d!1303110)))

(assert (=> bs!660356 (= lambda!145038 lambda!145035)))

(declare-fun lt!1588461 () ListMap!2381)

(assert (=> d!1303116 (invariantList!720 (toList!3138 lt!1588461))))

(declare-fun e!2724931 () ListMap!2381)

(assert (=> d!1303116 (= lt!1588461 e!2724931)))

(declare-fun c!744436 () Bool)

(assert (=> d!1303116 (= c!744436 ((_ is Cons!49151) (toList!3137 lt!1588000)))))

(assert (=> d!1303116 (forall!9267 (toList!3137 lt!1588000) lambda!145038)))

(assert (=> d!1303116 (= (extractMap!636 (toList!3137 lt!1588000)) lt!1588461)))

(declare-fun b!4377664 () Bool)

(assert (=> b!4377664 (= e!2724931 (addToMapMapFromBucket!258 (_2!27634 (h!54746 (toList!3137 lt!1588000))) (extractMap!636 (t!356201 (toList!3137 lt!1588000)))))))

(declare-fun b!4377665 () Bool)

(assert (=> b!4377665 (= e!2724931 (ListMap!2382 Nil!49150))))

(assert (= (and d!1303116 c!744436) b!4377664))

(assert (= (and d!1303116 (not c!744436)) b!4377665))

(declare-fun m!5012813 () Bool)

(assert (=> d!1303116 m!5012813))

(declare-fun m!5012815 () Bool)

(assert (=> d!1303116 m!5012815))

(declare-fun m!5012817 () Bool)

(assert (=> b!4377664 m!5012817))

(assert (=> b!4377664 m!5012817))

(declare-fun m!5012819 () Bool)

(assert (=> b!4377664 m!5012819))

(assert (=> b!4377382 d!1303116))

(declare-fun b!4377672 () Bool)

(declare-fun e!2724934 () Bool)

(declare-fun tp!1331155 () Bool)

(declare-fun tp!1331156 () Bool)

(assert (=> b!4377672 (= e!2724934 (and tp!1331155 tp!1331156))))

(assert (=> b!4377380 (= tp!1331150 e!2724934)))

(assert (= (and b!4377380 ((_ is Cons!49151) (toList!3137 lm!1707))) b!4377672))

(declare-fun tp!1331159 () Bool)

(declare-fun b!4377677 () Bool)

(declare-fun e!2724937 () Bool)

(assert (=> b!4377677 (= e!2724937 (and tp_is_empty!25545 tp_is_empty!25547 tp!1331159))))

(assert (=> b!4377379 (= tp!1331149 e!2724937)))

(assert (= (and b!4377379 ((_ is Cons!49150) (t!356200 newBucket!200))) b!4377677))

(declare-fun b_lambda!134897 () Bool)

(assert (= b_lambda!134885 (or start!425028 b_lambda!134897)))

(declare-fun bs!660364 () Bool)

(declare-fun d!1303120 () Bool)

(assert (= bs!660364 (and d!1303120 start!425028)))

(assert (=> bs!660364 (= (dynLambda!20706 lambda!144919 (h!54746 (toList!3137 lm!1707))) (noDuplicateKeys!577 (_2!27634 (h!54746 (toList!3137 lm!1707)))))))

(declare-fun m!5012823 () Bool)

(assert (=> bs!660364 m!5012823))

(assert (=> b!4377415 d!1303120))

(declare-fun b_lambda!134899 () Bool)

(assert (= b_lambda!134881 (or start!425028 b_lambda!134899)))

(declare-fun bs!660365 () Bool)

(declare-fun d!1303122 () Bool)

(assert (= bs!660365 (and d!1303122 start!425028)))

(assert (=> bs!660365 (= (dynLambda!20706 lambda!144919 (h!54746 (toList!3137 lt!1588005))) (noDuplicateKeys!577 (_2!27634 (h!54746 (toList!3137 lt!1588005)))))))

(declare-fun m!5012825 () Bool)

(assert (=> bs!660365 m!5012825))

(assert (=> b!4377397 d!1303122))

(declare-fun b_lambda!134901 () Bool)

(assert (= b_lambda!134883 (or start!425028 b_lambda!134901)))

(declare-fun bs!660366 () Bool)

(declare-fun d!1303124 () Bool)

(assert (= bs!660366 (and d!1303124 start!425028)))

(assert (=> bs!660366 (= (dynLambda!20706 lambda!144919 (tuple2!48681 hash!377 newBucket!200)) (noDuplicateKeys!577 (_2!27634 (tuple2!48681 hash!377 newBucket!200))))))

(declare-fun m!5012827 () Bool)

(assert (=> bs!660366 m!5012827))

(assert (=> b!4377412 d!1303124))

(declare-fun b_lambda!134903 () Bool)

(assert (= b_lambda!134889 (or start!425028 b_lambda!134903)))

(declare-fun bs!660367 () Bool)

(declare-fun d!1303126 () Bool)

(assert (= bs!660367 (and d!1303126 start!425028)))

(assert (=> bs!660367 (= (dynLambda!20706 lambda!144919 lt!1588016) (noDuplicateKeys!577 (_2!27634 lt!1588016)))))

(declare-fun m!5012829 () Bool)

(assert (=> bs!660367 m!5012829))

(assert (=> d!1303010 d!1303126))

(check-sat (not d!1303042) (not d!1303068) (not b!4377511) (not b!4377526) (not b!4377513) (not bs!660366) (not d!1303004) (not b!4377672) (not d!1303054) (not d!1303008) (not b!4377571) (not b!4377657) (not d!1303062) (not d!1303086) (not b_lambda!134899) (not d!1303046) (not b!4377664) (not b!4377662) (not b_lambda!134897) (not d!1303096) (not b!4377528) (not d!1303050) (not bs!660365) (not b!4377677) (not b!4377572) (not b!4377525) (not d!1303002) (not b!4377510) (not b!4377404) (not b_lambda!134901) (not b!4377430) tp_is_empty!25545 (not b_lambda!134903) (not b!4377398) (not bm!304408) (not bm!304405) (not b!4377522) (not d!1303040) (not bm!304402) (not b!4377616) (not b!4377531) (not b!4377656) (not d!1303116) (not b!4377570) (not d!1303098) (not b!4377652) (not b!4377520) (not b!4377521) (not bs!660367) (not d!1302994) (not d!1303094) (not b!4377651) (not b!4377509) (not bm!304407) (not d!1303044) (not b!4377653) (not b!4377663) (not bm!304404) (not d!1303072) (not bm!304403) (not d!1303022) (not bs!660364) (not d!1302988) (not b!4377550) (not d!1303010) (not bm!304432) (not b!4377529) (not b!4377583) (not b!4377441) (not b!4377564) (not d!1303018) (not d!1303110) (not bm!304400) (not b!4377403) (not b!4377452) (not d!1302992) (not b!4377449) (not b!4377562) tp_is_empty!25547 (not bm!304401) (not b!4377524) (not b!4377615) (not d!1303074) (not b!4377556) (not bm!304421) (not d!1303064) (not b!4377660) (not d!1303056) (not b!4377574) (not b!4377549) (not bm!304422) (not b!4377655) (not bm!304406) (not b!4377649) (not d!1303078) (not b!4377557) (not b!4377617) (not d!1303020) (not d!1303014) (not b!4377416) (not b!4377619) (not bm!304423) (not b!4377585) (not b!4377527))
(check-sat)
