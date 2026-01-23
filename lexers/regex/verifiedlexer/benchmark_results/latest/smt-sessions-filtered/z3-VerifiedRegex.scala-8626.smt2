; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!460216 () Bool)

(assert start!460216)

(declare-fun b!4605767 () Bool)

(declare-fun e!2872884 () Bool)

(declare-fun tp!1340834 () Bool)

(assert (=> b!4605767 (= e!2872884 tp!1340834)))

(declare-fun b!4605768 () Bool)

(declare-fun e!2872883 () Bool)

(declare-datatypes ((K!12535 0))(
  ( (K!12536 (val!18299 Int)) )
))
(declare-datatypes ((V!12781 0))(
  ( (V!12782 (val!18300 Int)) )
))
(declare-datatypes ((tuple2!51866 0))(
  ( (tuple2!51867 (_1!29227 K!12535) (_2!29227 V!12781)) )
))
(declare-datatypes ((List!51291 0))(
  ( (Nil!51167) (Cons!51167 (h!57149 tuple2!51866) (t!358285 List!51291)) )
))
(declare-datatypes ((tuple2!51868 0))(
  ( (tuple2!51869 (_1!29228 (_ BitVec 64)) (_2!29228 List!51291)) )
))
(declare-datatypes ((List!51292 0))(
  ( (Nil!51168) (Cons!51168 (h!57150 tuple2!51868) (t!358286 List!51292)) )
))
(declare-datatypes ((ListLongMap!3355 0))(
  ( (ListLongMap!3356 (toList!4723 List!51292)) )
))
(declare-fun lt!1763367 () ListLongMap!3355)

(declare-datatypes ((Hashable!5753 0))(
  ( (HashableExt!5752 (__x!31456 Int)) )
))
(declare-fun hashF!1107 () Hashable!5753)

(declare-fun allKeysSameHashInMap!1465 (ListLongMap!3355 Hashable!5753) Bool)

(assert (=> b!4605768 (= e!2872883 (allKeysSameHashInMap!1465 lt!1763367 hashF!1107))))

(declare-fun b!4605769 () Bool)

(declare-fun res!1927404 () Bool)

(assert (=> b!4605769 (=> res!1927404 e!2872883)))

(declare-fun lambda!187462 () Int)

(declare-fun forall!10661 (List!51292 Int) Bool)

(assert (=> b!4605769 (= res!1927404 (not (forall!10661 (toList!4723 lt!1763367) lambda!187462)))))

(declare-fun tp_is_empty!28709 () Bool)

(declare-fun e!2872887 () Bool)

(declare-fun tp!1340835 () Bool)

(declare-fun b!4605770 () Bool)

(declare-fun tp_is_empty!28711 () Bool)

(assert (=> b!4605770 (= e!2872887 (and tp_is_empty!28709 tp_is_empty!28711 tp!1340835))))

(declare-fun b!4605771 () Bool)

(declare-fun res!1927403 () Bool)

(declare-fun e!2872888 () Bool)

(assert (=> b!4605771 (=> res!1927403 e!2872888)))

(declare-fun lm!1477 () ListLongMap!3355)

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4605771 (= res!1927403 (or ((_ is Nil!51168) (toList!4723 lm!1477)) (= (_1!29228 (h!57150 (toList!4723 lm!1477))) hash!344)))))

(declare-fun b!4605772 () Bool)

(declare-fun res!1927410 () Bool)

(declare-fun e!2872886 () Bool)

(assert (=> b!4605772 (=> res!1927410 e!2872886)))

(declare-fun lt!1763372 () List!51291)

(declare-fun apply!12091 (ListLongMap!3355 (_ BitVec 64)) List!51291)

(assert (=> b!4605772 (= res!1927410 (not (= (apply!12091 lt!1763367 hash!344) lt!1763372)))))

(declare-fun b!4605774 () Bool)

(declare-fun res!1927407 () Bool)

(declare-fun e!2872885 () Bool)

(assert (=> b!4605774 (=> (not res!1927407) (not e!2872885))))

(declare-fun newBucket!178 () List!51291)

(declare-fun allKeysSameHash!1210 (List!51291 (_ BitVec 64) Hashable!5753) Bool)

(assert (=> b!4605774 (= res!1927407 (allKeysSameHash!1210 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4605775 () Bool)

(declare-fun res!1927408 () Bool)

(declare-fun e!2872882 () Bool)

(assert (=> b!4605775 (=> (not res!1927408) (not e!2872882))))

(declare-fun key!3287 () K!12535)

(declare-datatypes ((ListMap!3985 0))(
  ( (ListMap!3986 (toList!4724 List!51291)) )
))
(declare-fun contains!14158 (ListMap!3985 K!12535) Bool)

(declare-fun extractMap!1414 (List!51292) ListMap!3985)

(assert (=> b!4605775 (= res!1927408 (contains!14158 (extractMap!1414 (toList!4723 lm!1477)) key!3287))))

(declare-fun b!4605776 () Bool)

(declare-fun res!1927406 () Bool)

(assert (=> b!4605776 (=> res!1927406 e!2872888)))

(declare-fun noDuplicateKeys!1354 (List!51291) Bool)

(assert (=> b!4605776 (= res!1927406 (not (noDuplicateKeys!1354 newBucket!178)))))

(declare-fun b!4605777 () Bool)

(declare-fun e!2872889 () Bool)

(assert (=> b!4605777 (= e!2872889 e!2872883)))

(declare-fun res!1927401 () Bool)

(assert (=> b!4605777 (=> res!1927401 e!2872883)))

(declare-fun containsKeyBiggerList!294 (List!51292 K!12535) Bool)

(assert (=> b!4605777 (= res!1927401 (not (containsKeyBiggerList!294 (t!358286 (toList!4723 lm!1477)) key!3287)))))

(assert (=> b!4605777 (containsKeyBiggerList!294 (toList!4723 lt!1763367) key!3287)))

(declare-datatypes ((Unit!108959 0))(
  ( (Unit!108960) )
))
(declare-fun lt!1763371 () Unit!108959)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!164 (ListLongMap!3355 K!12535 Hashable!5753) Unit!108959)

(assert (=> b!4605777 (= lt!1763371 (lemmaInLongMapThenContainsKeyBiggerList!164 lt!1763367 key!3287 hashF!1107))))

(declare-fun b!4605778 () Bool)

(assert (=> b!4605778 (= e!2872885 (not e!2872888))))

(declare-fun res!1927412 () Bool)

(assert (=> b!4605778 (=> res!1927412 e!2872888)))

(declare-fun removePairForKey!979 (List!51291 K!12535) List!51291)

(assert (=> b!4605778 (= res!1927412 (not (= newBucket!178 (removePairForKey!979 lt!1763372 key!3287))))))

(declare-fun lt!1763366 () Unit!108959)

(declare-fun lt!1763368 () tuple2!51868)

(declare-fun forallContained!2907 (List!51292 Int tuple2!51868) Unit!108959)

(assert (=> b!4605778 (= lt!1763366 (forallContained!2907 (toList!4723 lm!1477) lambda!187462 lt!1763368))))

(declare-fun contains!14159 (List!51292 tuple2!51868) Bool)

(assert (=> b!4605778 (contains!14159 (toList!4723 lm!1477) lt!1763368)))

(assert (=> b!4605778 (= lt!1763368 (tuple2!51869 hash!344 lt!1763372))))

(declare-fun lt!1763364 () Unit!108959)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!864 (List!51292 (_ BitVec 64) List!51291) Unit!108959)

(assert (=> b!4605778 (= lt!1763364 (lemmaGetValueByKeyImpliesContainsTuple!864 (toList!4723 lm!1477) hash!344 lt!1763372))))

(assert (=> b!4605778 (= lt!1763372 (apply!12091 lm!1477 hash!344))))

(declare-fun lt!1763369 () (_ BitVec 64))

(declare-fun contains!14160 (ListLongMap!3355 (_ BitVec 64)) Bool)

(assert (=> b!4605778 (contains!14160 lm!1477 lt!1763369)))

(declare-fun lt!1763373 () Unit!108959)

(declare-fun lemmaInGenMapThenLongMapContainsHash!428 (ListLongMap!3355 K!12535 Hashable!5753) Unit!108959)

(assert (=> b!4605778 (= lt!1763373 (lemmaInGenMapThenLongMapContainsHash!428 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4605779 () Bool)

(declare-fun e!2872890 () Unit!108959)

(declare-fun Unit!108961 () Unit!108959)

(assert (=> b!4605779 (= e!2872890 Unit!108961)))

(declare-fun b!4605780 () Bool)

(assert (=> b!4605780 (= e!2872886 e!2872889)))

(declare-fun res!1927399 () Bool)

(assert (=> b!4605780 (=> res!1927399 e!2872889)))

(declare-fun lt!1763365 () Bool)

(assert (=> b!4605780 (= res!1927399 lt!1763365)))

(declare-fun lt!1763363 () Unit!108959)

(assert (=> b!4605780 (= lt!1763363 e!2872890)))

(declare-fun c!788986 () Bool)

(assert (=> b!4605780 (= c!788986 lt!1763365)))

(declare-fun containsKey!2225 (List!51291 K!12535) Bool)

(assert (=> b!4605780 (= lt!1763365 (not (containsKey!2225 lt!1763372 key!3287)))))

(declare-fun b!4605781 () Bool)

(assert (=> b!4605781 (= e!2872882 e!2872885)))

(declare-fun res!1927411 () Bool)

(assert (=> b!4605781 (=> (not res!1927411) (not e!2872885))))

(assert (=> b!4605781 (= res!1927411 (= lt!1763369 hash!344))))

(declare-fun hash!3282 (Hashable!5753 K!12535) (_ BitVec 64))

(assert (=> b!4605781 (= lt!1763369 (hash!3282 hashF!1107 key!3287))))

(declare-fun b!4605782 () Bool)

(declare-fun res!1927400 () Bool)

(assert (=> b!4605782 (=> (not res!1927400) (not e!2872882))))

(assert (=> b!4605782 (= res!1927400 (allKeysSameHashInMap!1465 lm!1477 hashF!1107))))

(declare-fun res!1927402 () Bool)

(assert (=> start!460216 (=> (not res!1927402) (not e!2872882))))

(assert (=> start!460216 (= res!1927402 (forall!10661 (toList!4723 lm!1477) lambda!187462))))

(assert (=> start!460216 e!2872882))

(assert (=> start!460216 true))

(declare-fun inv!66719 (ListLongMap!3355) Bool)

(assert (=> start!460216 (and (inv!66719 lm!1477) e!2872884)))

(assert (=> start!460216 tp_is_empty!28709))

(assert (=> start!460216 e!2872887))

(declare-fun b!4605773 () Bool)

(assert (=> b!4605773 (= e!2872888 e!2872886)))

(declare-fun res!1927409 () Bool)

(assert (=> b!4605773 (=> res!1927409 e!2872886)))

(assert (=> b!4605773 (= res!1927409 (not (contains!14160 lt!1763367 hash!344)))))

(declare-fun tail!8004 (ListLongMap!3355) ListLongMap!3355)

(assert (=> b!4605773 (= lt!1763367 (tail!8004 lm!1477))))

(declare-fun b!4605783 () Bool)

(declare-fun res!1927405 () Bool)

(assert (=> b!4605783 (=> res!1927405 e!2872886)))

(assert (=> b!4605783 (= res!1927405 (not (contains!14159 (t!358286 (toList!4723 lm!1477)) lt!1763368)))))

(declare-fun b!4605784 () Bool)

(declare-fun Unit!108962 () Unit!108959)

(assert (=> b!4605784 (= e!2872890 Unit!108962)))

(declare-fun lt!1763370 () Unit!108959)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!318 (ListLongMap!3355 K!12535 Hashable!5753) Unit!108959)

(assert (=> b!4605784 (= lt!1763370 (lemmaNotInItsHashBucketThenNotInMap!318 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4605784 false))

(assert (= (and start!460216 res!1927402) b!4605782))

(assert (= (and b!4605782 res!1927400) b!4605775))

(assert (= (and b!4605775 res!1927408) b!4605781))

(assert (= (and b!4605781 res!1927411) b!4605774))

(assert (= (and b!4605774 res!1927407) b!4605778))

(assert (= (and b!4605778 (not res!1927412)) b!4605776))

(assert (= (and b!4605776 (not res!1927406)) b!4605771))

(assert (= (and b!4605771 (not res!1927403)) b!4605773))

(assert (= (and b!4605773 (not res!1927409)) b!4605772))

(assert (= (and b!4605772 (not res!1927410)) b!4605783))

(assert (= (and b!4605783 (not res!1927405)) b!4605780))

(assert (= (and b!4605780 c!788986) b!4605784))

(assert (= (and b!4605780 (not c!788986)) b!4605779))

(assert (= (and b!4605780 (not res!1927399)) b!4605777))

(assert (= (and b!4605777 (not res!1927401)) b!4605769))

(assert (= (and b!4605769 (not res!1927404)) b!4605768))

(assert (= start!460216 b!4605767))

(assert (= (and start!460216 ((_ is Cons!51167) newBucket!178)) b!4605770))

(declare-fun m!5435101 () Bool)

(assert (=> b!4605774 m!5435101))

(declare-fun m!5435103 () Bool)

(assert (=> b!4605768 m!5435103))

(declare-fun m!5435105 () Bool)

(assert (=> b!4605775 m!5435105))

(assert (=> b!4605775 m!5435105))

(declare-fun m!5435107 () Bool)

(assert (=> b!4605775 m!5435107))

(declare-fun m!5435109 () Bool)

(assert (=> b!4605782 m!5435109))

(declare-fun m!5435111 () Bool)

(assert (=> b!4605784 m!5435111))

(declare-fun m!5435113 () Bool)

(assert (=> b!4605780 m!5435113))

(declare-fun m!5435115 () Bool)

(assert (=> b!4605773 m!5435115))

(declare-fun m!5435117 () Bool)

(assert (=> b!4605773 m!5435117))

(declare-fun m!5435119 () Bool)

(assert (=> b!4605772 m!5435119))

(declare-fun m!5435121 () Bool)

(assert (=> start!460216 m!5435121))

(declare-fun m!5435123 () Bool)

(assert (=> start!460216 m!5435123))

(declare-fun m!5435125 () Bool)

(assert (=> b!4605781 m!5435125))

(declare-fun m!5435127 () Bool)

(assert (=> b!4605778 m!5435127))

(declare-fun m!5435129 () Bool)

(assert (=> b!4605778 m!5435129))

(declare-fun m!5435131 () Bool)

(assert (=> b!4605778 m!5435131))

(declare-fun m!5435133 () Bool)

(assert (=> b!4605778 m!5435133))

(declare-fun m!5435135 () Bool)

(assert (=> b!4605778 m!5435135))

(declare-fun m!5435137 () Bool)

(assert (=> b!4605778 m!5435137))

(declare-fun m!5435139 () Bool)

(assert (=> b!4605778 m!5435139))

(declare-fun m!5435141 () Bool)

(assert (=> b!4605769 m!5435141))

(declare-fun m!5435143 () Bool)

(assert (=> b!4605777 m!5435143))

(declare-fun m!5435145 () Bool)

(assert (=> b!4605777 m!5435145))

(declare-fun m!5435147 () Bool)

(assert (=> b!4605777 m!5435147))

(declare-fun m!5435149 () Bool)

(assert (=> b!4605776 m!5435149))

(declare-fun m!5435151 () Bool)

(assert (=> b!4605783 m!5435151))

(check-sat (not b!4605775) (not b!4605769) (not b!4605767) (not b!4605782) (not b!4605781) (not b!4605773) (not b!4605780) (not b!4605774) (not b!4605772) tp_is_empty!28709 (not b!4605778) (not b!4605768) tp_is_empty!28711 (not b!4605770) (not b!4605783) (not b!4605777) (not start!460216) (not b!4605784) (not b!4605776))
(check-sat)
(get-model)

(declare-fun bs!1014342 () Bool)

(declare-fun d!1450787 () Bool)

(assert (= bs!1014342 (and d!1450787 start!460216)))

(declare-fun lambda!187465 () Int)

(assert (=> bs!1014342 (not (= lambda!187465 lambda!187462))))

(assert (=> d!1450787 true))

(assert (=> d!1450787 (= (allKeysSameHashInMap!1465 lt!1763367 hashF!1107) (forall!10661 (toList!4723 lt!1763367) lambda!187465))))

(declare-fun bs!1014343 () Bool)

(assert (= bs!1014343 d!1450787))

(declare-fun m!5435153 () Bool)

(assert (=> bs!1014343 m!5435153))

(assert (=> b!4605768 d!1450787))

(declare-fun d!1450789 () Bool)

(declare-fun res!1927417 () Bool)

(declare-fun e!2872895 () Bool)

(assert (=> d!1450789 (=> res!1927417 e!2872895)))

(assert (=> d!1450789 (= res!1927417 ((_ is Nil!51168) (toList!4723 lt!1763367)))))

(assert (=> d!1450789 (= (forall!10661 (toList!4723 lt!1763367) lambda!187462) e!2872895)))

(declare-fun b!4605791 () Bool)

(declare-fun e!2872896 () Bool)

(assert (=> b!4605791 (= e!2872895 e!2872896)))

(declare-fun res!1927418 () Bool)

(assert (=> b!4605791 (=> (not res!1927418) (not e!2872896))))

(declare-fun dynLambda!21424 (Int tuple2!51868) Bool)

(assert (=> b!4605791 (= res!1927418 (dynLambda!21424 lambda!187462 (h!57150 (toList!4723 lt!1763367))))))

(declare-fun b!4605792 () Bool)

(assert (=> b!4605792 (= e!2872896 (forall!10661 (t!358286 (toList!4723 lt!1763367)) lambda!187462))))

(assert (= (and d!1450789 (not res!1927417)) b!4605791))

(assert (= (and b!4605791 res!1927418) b!4605792))

(declare-fun b_lambda!169973 () Bool)

(assert (=> (not b_lambda!169973) (not b!4605791)))

(declare-fun m!5435155 () Bool)

(assert (=> b!4605791 m!5435155))

(declare-fun m!5435157 () Bool)

(assert (=> b!4605792 m!5435157))

(assert (=> b!4605769 d!1450789))

(declare-fun d!1450791 () Bool)

(declare-fun res!1927423 () Bool)

(declare-fun e!2872901 () Bool)

(assert (=> d!1450791 (=> res!1927423 e!2872901)))

(assert (=> d!1450791 (= res!1927423 (and ((_ is Cons!51167) lt!1763372) (= (_1!29227 (h!57149 lt!1763372)) key!3287)))))

(assert (=> d!1450791 (= (containsKey!2225 lt!1763372 key!3287) e!2872901)))

(declare-fun b!4605797 () Bool)

(declare-fun e!2872902 () Bool)

(assert (=> b!4605797 (= e!2872901 e!2872902)))

(declare-fun res!1927424 () Bool)

(assert (=> b!4605797 (=> (not res!1927424) (not e!2872902))))

(assert (=> b!4605797 (= res!1927424 ((_ is Cons!51167) lt!1763372))))

(declare-fun b!4605798 () Bool)

(assert (=> b!4605798 (= e!2872902 (containsKey!2225 (t!358285 lt!1763372) key!3287))))

(assert (= (and d!1450791 (not res!1927423)) b!4605797))

(assert (= (and b!4605797 res!1927424) b!4605798))

(declare-fun m!5435159 () Bool)

(assert (=> b!4605798 m!5435159))

(assert (=> b!4605780 d!1450791))

(declare-fun d!1450793 () Bool)

(declare-fun res!1927425 () Bool)

(declare-fun e!2872903 () Bool)

(assert (=> d!1450793 (=> res!1927425 e!2872903)))

(assert (=> d!1450793 (= res!1927425 ((_ is Nil!51168) (toList!4723 lm!1477)))))

(assert (=> d!1450793 (= (forall!10661 (toList!4723 lm!1477) lambda!187462) e!2872903)))

(declare-fun b!4605799 () Bool)

(declare-fun e!2872904 () Bool)

(assert (=> b!4605799 (= e!2872903 e!2872904)))

(declare-fun res!1927426 () Bool)

(assert (=> b!4605799 (=> (not res!1927426) (not e!2872904))))

(assert (=> b!4605799 (= res!1927426 (dynLambda!21424 lambda!187462 (h!57150 (toList!4723 lm!1477))))))

(declare-fun b!4605800 () Bool)

(assert (=> b!4605800 (= e!2872904 (forall!10661 (t!358286 (toList!4723 lm!1477)) lambda!187462))))

(assert (= (and d!1450793 (not res!1927425)) b!4605799))

(assert (= (and b!4605799 res!1927426) b!4605800))

(declare-fun b_lambda!169975 () Bool)

(assert (=> (not b_lambda!169975) (not b!4605799)))

(declare-fun m!5435161 () Bool)

(assert (=> b!4605799 m!5435161))

(declare-fun m!5435163 () Bool)

(assert (=> b!4605800 m!5435163))

(assert (=> start!460216 d!1450793))

(declare-fun d!1450795 () Bool)

(declare-fun isStrictlySorted!557 (List!51292) Bool)

(assert (=> d!1450795 (= (inv!66719 lm!1477) (isStrictlySorted!557 (toList!4723 lm!1477)))))

(declare-fun bs!1014344 () Bool)

(assert (= bs!1014344 d!1450795))

(declare-fun m!5435165 () Bool)

(assert (=> bs!1014344 m!5435165))

(assert (=> start!460216 d!1450795))

(declare-fun d!1450797 () Bool)

(declare-fun hash!3284 (Hashable!5753 K!12535) (_ BitVec 64))

(assert (=> d!1450797 (= (hash!3282 hashF!1107 key!3287) (hash!3284 hashF!1107 key!3287))))

(declare-fun bs!1014345 () Bool)

(assert (= bs!1014345 d!1450797))

(declare-fun m!5435167 () Bool)

(assert (=> bs!1014345 m!5435167))

(assert (=> b!4605781 d!1450797))

(declare-fun bs!1014346 () Bool)

(declare-fun d!1450799 () Bool)

(assert (= bs!1014346 (and d!1450799 start!460216)))

(declare-fun lambda!187466 () Int)

(assert (=> bs!1014346 (not (= lambda!187466 lambda!187462))))

(declare-fun bs!1014347 () Bool)

(assert (= bs!1014347 (and d!1450799 d!1450787)))

(assert (=> bs!1014347 (= lambda!187466 lambda!187465)))

(assert (=> d!1450799 true))

(assert (=> d!1450799 (= (allKeysSameHashInMap!1465 lm!1477 hashF!1107) (forall!10661 (toList!4723 lm!1477) lambda!187466))))

(declare-fun bs!1014348 () Bool)

(assert (= bs!1014348 d!1450799))

(declare-fun m!5435169 () Bool)

(assert (=> bs!1014348 m!5435169))

(assert (=> b!4605782 d!1450799))

(declare-fun d!1450803 () Bool)

(declare-datatypes ((Option!11427 0))(
  ( (None!11426) (Some!11426 (v!45460 List!51291)) )
))
(declare-fun get!16925 (Option!11427) List!51291)

(declare-fun getValueByKey!1345 (List!51292 (_ BitVec 64)) Option!11427)

(assert (=> d!1450803 (= (apply!12091 lt!1763367 hash!344) (get!16925 (getValueByKey!1345 (toList!4723 lt!1763367) hash!344)))))

(declare-fun bs!1014351 () Bool)

(assert (= bs!1014351 d!1450803))

(declare-fun m!5435173 () Bool)

(assert (=> bs!1014351 m!5435173))

(assert (=> bs!1014351 m!5435173))

(declare-fun m!5435175 () Bool)

(assert (=> bs!1014351 m!5435175))

(assert (=> b!4605772 d!1450803))

(declare-fun d!1450807 () Bool)

(declare-fun lt!1763376 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8684 (List!51292) (InoxSet tuple2!51868))

(assert (=> d!1450807 (= lt!1763376 (select (content!8684 (t!358286 (toList!4723 lm!1477))) lt!1763368))))

(declare-fun e!2872910 () Bool)

(assert (=> d!1450807 (= lt!1763376 e!2872910)))

(declare-fun res!1927431 () Bool)

(assert (=> d!1450807 (=> (not res!1927431) (not e!2872910))))

(assert (=> d!1450807 (= res!1927431 ((_ is Cons!51168) (t!358286 (toList!4723 lm!1477))))))

(assert (=> d!1450807 (= (contains!14159 (t!358286 (toList!4723 lm!1477)) lt!1763368) lt!1763376)))

(declare-fun b!4605807 () Bool)

(declare-fun e!2872909 () Bool)

(assert (=> b!4605807 (= e!2872910 e!2872909)))

(declare-fun res!1927432 () Bool)

(assert (=> b!4605807 (=> res!1927432 e!2872909)))

(assert (=> b!4605807 (= res!1927432 (= (h!57150 (t!358286 (toList!4723 lm!1477))) lt!1763368))))

(declare-fun b!4605808 () Bool)

(assert (=> b!4605808 (= e!2872909 (contains!14159 (t!358286 (t!358286 (toList!4723 lm!1477))) lt!1763368))))

(assert (= (and d!1450807 res!1927431) b!4605807))

(assert (= (and b!4605807 (not res!1927432)) b!4605808))

(declare-fun m!5435177 () Bool)

(assert (=> d!1450807 m!5435177))

(declare-fun m!5435179 () Bool)

(assert (=> d!1450807 m!5435179))

(declare-fun m!5435181 () Bool)

(assert (=> b!4605808 m!5435181))

(assert (=> b!4605783 d!1450807))

(declare-fun d!1450809 () Bool)

(declare-fun e!2872922 () Bool)

(assert (=> d!1450809 e!2872922))

(declare-fun res!1927441 () Bool)

(assert (=> d!1450809 (=> res!1927441 e!2872922)))

(declare-fun lt!1763389 () Bool)

(assert (=> d!1450809 (= res!1927441 (not lt!1763389))))

(declare-fun lt!1763388 () Bool)

(assert (=> d!1450809 (= lt!1763389 lt!1763388)))

(declare-fun lt!1763391 () Unit!108959)

(declare-fun e!2872921 () Unit!108959)

(assert (=> d!1450809 (= lt!1763391 e!2872921)))

(declare-fun c!788989 () Bool)

(assert (=> d!1450809 (= c!788989 lt!1763388)))

(declare-fun containsKey!2228 (List!51292 (_ BitVec 64)) Bool)

(assert (=> d!1450809 (= lt!1763388 (containsKey!2228 (toList!4723 lt!1763367) hash!344))))

(assert (=> d!1450809 (= (contains!14160 lt!1763367 hash!344) lt!1763389)))

(declare-fun b!4605821 () Bool)

(declare-fun lt!1763390 () Unit!108959)

(assert (=> b!4605821 (= e!2872921 lt!1763390)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1249 (List!51292 (_ BitVec 64)) Unit!108959)

(assert (=> b!4605821 (= lt!1763390 (lemmaContainsKeyImpliesGetValueByKeyDefined!1249 (toList!4723 lt!1763367) hash!344))))

(declare-fun isDefined!8695 (Option!11427) Bool)

(assert (=> b!4605821 (isDefined!8695 (getValueByKey!1345 (toList!4723 lt!1763367) hash!344))))

(declare-fun b!4605822 () Bool)

(declare-fun Unit!108967 () Unit!108959)

(assert (=> b!4605822 (= e!2872921 Unit!108967)))

(declare-fun b!4605823 () Bool)

(assert (=> b!4605823 (= e!2872922 (isDefined!8695 (getValueByKey!1345 (toList!4723 lt!1763367) hash!344)))))

(assert (= (and d!1450809 c!788989) b!4605821))

(assert (= (and d!1450809 (not c!788989)) b!4605822))

(assert (= (and d!1450809 (not res!1927441)) b!4605823))

(declare-fun m!5435191 () Bool)

(assert (=> d!1450809 m!5435191))

(declare-fun m!5435193 () Bool)

(assert (=> b!4605821 m!5435193))

(assert (=> b!4605821 m!5435173))

(assert (=> b!4605821 m!5435173))

(declare-fun m!5435195 () Bool)

(assert (=> b!4605821 m!5435195))

(assert (=> b!4605823 m!5435173))

(assert (=> b!4605823 m!5435173))

(assert (=> b!4605823 m!5435195))

(assert (=> b!4605773 d!1450809))

(declare-fun d!1450817 () Bool)

(declare-fun tail!8006 (List!51292) List!51292)

(assert (=> d!1450817 (= (tail!8004 lm!1477) (ListLongMap!3356 (tail!8006 (toList!4723 lm!1477))))))

(declare-fun bs!1014359 () Bool)

(assert (= bs!1014359 d!1450817))

(declare-fun m!5435197 () Bool)

(assert (=> bs!1014359 m!5435197))

(assert (=> b!4605773 d!1450817))

(declare-fun bs!1014366 () Bool)

(declare-fun d!1450819 () Bool)

(assert (= bs!1014366 (and d!1450819 start!460216)))

(declare-fun lambda!187479 () Int)

(assert (=> bs!1014366 (= lambda!187479 lambda!187462)))

(declare-fun bs!1014367 () Bool)

(assert (= bs!1014367 (and d!1450819 d!1450787)))

(assert (=> bs!1014367 (not (= lambda!187479 lambda!187465))))

(declare-fun bs!1014368 () Bool)

(assert (= bs!1014368 (and d!1450819 d!1450799)))

(assert (=> bs!1014368 (not (= lambda!187479 lambda!187466))))

(assert (=> d!1450819 (not (contains!14158 (extractMap!1414 (toList!4723 lm!1477)) key!3287))))

(declare-fun lt!1763420 () Unit!108959)

(declare-fun choose!30953 (ListLongMap!3355 K!12535 Hashable!5753) Unit!108959)

(assert (=> d!1450819 (= lt!1763420 (choose!30953 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1450819 (forall!10661 (toList!4723 lm!1477) lambda!187479)))

(assert (=> d!1450819 (= (lemmaNotInItsHashBucketThenNotInMap!318 lm!1477 key!3287 hashF!1107) lt!1763420)))

(declare-fun bs!1014369 () Bool)

(assert (= bs!1014369 d!1450819))

(assert (=> bs!1014369 m!5435105))

(assert (=> bs!1014369 m!5435105))

(assert (=> bs!1014369 m!5435107))

(declare-fun m!5435237 () Bool)

(assert (=> bs!1014369 m!5435237))

(declare-fun m!5435239 () Bool)

(assert (=> bs!1014369 m!5435239))

(assert (=> b!4605784 d!1450819))

(declare-fun d!1450835 () Bool)

(assert (=> d!1450835 true))

(assert (=> d!1450835 true))

(declare-fun lambda!187482 () Int)

(declare-fun forall!10663 (List!51291 Int) Bool)

(assert (=> d!1450835 (= (allKeysSameHash!1210 newBucket!178 hash!344 hashF!1107) (forall!10663 newBucket!178 lambda!187482))))

(declare-fun bs!1014372 () Bool)

(assert (= bs!1014372 d!1450835))

(declare-fun m!5435249 () Bool)

(assert (=> bs!1014372 m!5435249))

(assert (=> b!4605774 d!1450835))

(declare-fun b!4605939 () Bool)

(declare-datatypes ((List!51294 0))(
  ( (Nil!51170) (Cons!51170 (h!57154 K!12535) (t!358288 List!51294)) )
))
(declare-fun e!2873005 () List!51294)

(declare-fun keys!17937 (ListMap!3985) List!51294)

(assert (=> b!4605939 (= e!2873005 (keys!17937 (extractMap!1414 (toList!4723 lm!1477))))))

(declare-fun b!4605940 () Bool)

(declare-fun e!2873006 () Unit!108959)

(declare-fun lt!1763471 () Unit!108959)

(assert (=> b!4605940 (= e!2873006 lt!1763471)))

(declare-fun lt!1763473 () Unit!108959)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1250 (List!51291 K!12535) Unit!108959)

(assert (=> b!4605940 (= lt!1763473 (lemmaContainsKeyImpliesGetValueByKeyDefined!1250 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))) key!3287))))

(declare-datatypes ((Option!11428 0))(
  ( (None!11427) (Some!11427 (v!45461 V!12781)) )
))
(declare-fun isDefined!8696 (Option!11428) Bool)

(declare-fun getValueByKey!1346 (List!51291 K!12535) Option!11428)

(assert (=> b!4605940 (isDefined!8696 (getValueByKey!1346 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))) key!3287))))

(declare-fun lt!1763475 () Unit!108959)

(assert (=> b!4605940 (= lt!1763475 lt!1763473)))

(declare-fun lemmaInListThenGetKeysListContains!586 (List!51291 K!12535) Unit!108959)

(assert (=> b!4605940 (= lt!1763471 (lemmaInListThenGetKeysListContains!586 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))) key!3287))))

(declare-fun call!321303 () Bool)

(assert (=> b!4605940 call!321303))

(declare-fun b!4605941 () Bool)

(declare-fun e!2873009 () Unit!108959)

(assert (=> b!4605941 (= e!2873006 e!2873009)))

(declare-fun c!789015 () Bool)

(assert (=> b!4605941 (= c!789015 call!321303)))

(declare-fun b!4605942 () Bool)

(declare-fun e!2873010 () Bool)

(declare-fun contains!14162 (List!51294 K!12535) Bool)

(assert (=> b!4605942 (= e!2873010 (contains!14162 (keys!17937 (extractMap!1414 (toList!4723 lm!1477))) key!3287))))

(declare-fun b!4605943 () Bool)

(declare-fun e!2873007 () Bool)

(assert (=> b!4605943 (= e!2873007 (not (contains!14162 (keys!17937 (extractMap!1414 (toList!4723 lm!1477))) key!3287)))))

(declare-fun d!1450843 () Bool)

(declare-fun e!2873008 () Bool)

(assert (=> d!1450843 e!2873008))

(declare-fun res!1927501 () Bool)

(assert (=> d!1450843 (=> res!1927501 e!2873008)))

(assert (=> d!1450843 (= res!1927501 e!2873007)))

(declare-fun res!1927500 () Bool)

(assert (=> d!1450843 (=> (not res!1927500) (not e!2873007))))

(declare-fun lt!1763470 () Bool)

(assert (=> d!1450843 (= res!1927500 (not lt!1763470))))

(declare-fun lt!1763474 () Bool)

(assert (=> d!1450843 (= lt!1763470 lt!1763474)))

(declare-fun lt!1763469 () Unit!108959)

(assert (=> d!1450843 (= lt!1763469 e!2873006)))

(declare-fun c!789016 () Bool)

(assert (=> d!1450843 (= c!789016 lt!1763474)))

(declare-fun containsKey!2229 (List!51291 K!12535) Bool)

(assert (=> d!1450843 (= lt!1763474 (containsKey!2229 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))) key!3287))))

(assert (=> d!1450843 (= (contains!14158 (extractMap!1414 (toList!4723 lm!1477)) key!3287) lt!1763470)))

(declare-fun bm!321298 () Bool)

(assert (=> bm!321298 (= call!321303 (contains!14162 e!2873005 key!3287))))

(declare-fun c!789017 () Bool)

(assert (=> bm!321298 (= c!789017 c!789016)))

(declare-fun b!4605944 () Bool)

(assert (=> b!4605944 false))

(declare-fun lt!1763472 () Unit!108959)

(declare-fun lt!1763476 () Unit!108959)

(assert (=> b!4605944 (= lt!1763472 lt!1763476)))

(assert (=> b!4605944 (containsKey!2229 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!589 (List!51291 K!12535) Unit!108959)

(assert (=> b!4605944 (= lt!1763476 (lemmaInGetKeysListThenContainsKey!589 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))) key!3287))))

(declare-fun Unit!108968 () Unit!108959)

(assert (=> b!4605944 (= e!2873009 Unit!108968)))

(declare-fun b!4605945 () Bool)

(declare-fun getKeysList!590 (List!51291) List!51294)

(assert (=> b!4605945 (= e!2873005 (getKeysList!590 (toList!4724 (extractMap!1414 (toList!4723 lm!1477)))))))

(declare-fun b!4605946 () Bool)

(assert (=> b!4605946 (= e!2873008 e!2873010)))

(declare-fun res!1927499 () Bool)

(assert (=> b!4605946 (=> (not res!1927499) (not e!2873010))))

(assert (=> b!4605946 (= res!1927499 (isDefined!8696 (getValueByKey!1346 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))) key!3287)))))

(declare-fun b!4605947 () Bool)

(declare-fun Unit!108969 () Unit!108959)

(assert (=> b!4605947 (= e!2873009 Unit!108969)))

(assert (= (and d!1450843 c!789016) b!4605940))

(assert (= (and d!1450843 (not c!789016)) b!4605941))

(assert (= (and b!4605941 c!789015) b!4605944))

(assert (= (and b!4605941 (not c!789015)) b!4605947))

(assert (= (or b!4605940 b!4605941) bm!321298))

(assert (= (and bm!321298 c!789017) b!4605945))

(assert (= (and bm!321298 (not c!789017)) b!4605939))

(assert (= (and d!1450843 res!1927500) b!4605943))

(assert (= (and d!1450843 (not res!1927501)) b!4605946))

(assert (= (and b!4605946 res!1927499) b!4605942))

(assert (=> b!4605939 m!5435105))

(declare-fun m!5435303 () Bool)

(assert (=> b!4605939 m!5435303))

(declare-fun m!5435305 () Bool)

(assert (=> b!4605940 m!5435305))

(declare-fun m!5435307 () Bool)

(assert (=> b!4605940 m!5435307))

(assert (=> b!4605940 m!5435307))

(declare-fun m!5435309 () Bool)

(assert (=> b!4605940 m!5435309))

(declare-fun m!5435311 () Bool)

(assert (=> b!4605940 m!5435311))

(assert (=> b!4605942 m!5435105))

(assert (=> b!4605942 m!5435303))

(assert (=> b!4605942 m!5435303))

(declare-fun m!5435313 () Bool)

(assert (=> b!4605942 m!5435313))

(assert (=> b!4605943 m!5435105))

(assert (=> b!4605943 m!5435303))

(assert (=> b!4605943 m!5435303))

(assert (=> b!4605943 m!5435313))

(declare-fun m!5435315 () Bool)

(assert (=> d!1450843 m!5435315))

(declare-fun m!5435317 () Bool)

(assert (=> b!4605945 m!5435317))

(declare-fun m!5435319 () Bool)

(assert (=> bm!321298 m!5435319))

(assert (=> b!4605944 m!5435315))

(declare-fun m!5435321 () Bool)

(assert (=> b!4605944 m!5435321))

(assert (=> b!4605946 m!5435307))

(assert (=> b!4605946 m!5435307))

(assert (=> b!4605946 m!5435309))

(assert (=> b!4605775 d!1450843))

(declare-fun bs!1014391 () Bool)

(declare-fun d!1450865 () Bool)

(assert (= bs!1014391 (and d!1450865 start!460216)))

(declare-fun lambda!187494 () Int)

(assert (=> bs!1014391 (= lambda!187494 lambda!187462)))

(declare-fun bs!1014392 () Bool)

(assert (= bs!1014392 (and d!1450865 d!1450787)))

(assert (=> bs!1014392 (not (= lambda!187494 lambda!187465))))

(declare-fun bs!1014393 () Bool)

(assert (= bs!1014393 (and d!1450865 d!1450799)))

(assert (=> bs!1014393 (not (= lambda!187494 lambda!187466))))

(declare-fun bs!1014394 () Bool)

(assert (= bs!1014394 (and d!1450865 d!1450819)))

(assert (=> bs!1014394 (= lambda!187494 lambda!187479)))

(declare-fun lt!1763483 () ListMap!3985)

(declare-fun invariantList!1141 (List!51291) Bool)

(assert (=> d!1450865 (invariantList!1141 (toList!4724 lt!1763483))))

(declare-fun e!2873024 () ListMap!3985)

(assert (=> d!1450865 (= lt!1763483 e!2873024)))

(declare-fun c!789023 () Bool)

(assert (=> d!1450865 (= c!789023 ((_ is Cons!51168) (toList!4723 lm!1477)))))

(assert (=> d!1450865 (forall!10661 (toList!4723 lm!1477) lambda!187494)))

(assert (=> d!1450865 (= (extractMap!1414 (toList!4723 lm!1477)) lt!1763483)))

(declare-fun b!4605970 () Bool)

(declare-fun addToMapMapFromBucket!833 (List!51291 ListMap!3985) ListMap!3985)

(assert (=> b!4605970 (= e!2873024 (addToMapMapFromBucket!833 (_2!29228 (h!57150 (toList!4723 lm!1477))) (extractMap!1414 (t!358286 (toList!4723 lm!1477)))))))

(declare-fun b!4605971 () Bool)

(assert (=> b!4605971 (= e!2873024 (ListMap!3986 Nil!51167))))

(assert (= (and d!1450865 c!789023) b!4605970))

(assert (= (and d!1450865 (not c!789023)) b!4605971))

(declare-fun m!5435343 () Bool)

(assert (=> d!1450865 m!5435343))

(declare-fun m!5435345 () Bool)

(assert (=> d!1450865 m!5435345))

(declare-fun m!5435347 () Bool)

(assert (=> b!4605970 m!5435347))

(assert (=> b!4605970 m!5435347))

(declare-fun m!5435349 () Bool)

(assert (=> b!4605970 m!5435349))

(assert (=> b!4605775 d!1450865))

(declare-fun d!1450875 () Bool)

(declare-fun res!1927508 () Bool)

(declare-fun e!2873029 () Bool)

(assert (=> d!1450875 (=> res!1927508 e!2873029)))

(assert (=> d!1450875 (= res!1927508 (not ((_ is Cons!51167) newBucket!178)))))

(assert (=> d!1450875 (= (noDuplicateKeys!1354 newBucket!178) e!2873029)))

(declare-fun b!4605976 () Bool)

(declare-fun e!2873030 () Bool)

(assert (=> b!4605976 (= e!2873029 e!2873030)))

(declare-fun res!1927509 () Bool)

(assert (=> b!4605976 (=> (not res!1927509) (not e!2873030))))

(assert (=> b!4605976 (= res!1927509 (not (containsKey!2225 (t!358285 newBucket!178) (_1!29227 (h!57149 newBucket!178)))))))

(declare-fun b!4605977 () Bool)

(assert (=> b!4605977 (= e!2873030 (noDuplicateKeys!1354 (t!358285 newBucket!178)))))

(assert (= (and d!1450875 (not res!1927508)) b!4605976))

(assert (= (and b!4605976 res!1927509) b!4605977))

(declare-fun m!5435351 () Bool)

(assert (=> b!4605976 m!5435351))

(declare-fun m!5435353 () Bool)

(assert (=> b!4605977 m!5435353))

(assert (=> b!4605776 d!1450875))

(declare-fun d!1450877 () Bool)

(declare-fun res!1927517 () Bool)

(declare-fun e!2873037 () Bool)

(assert (=> d!1450877 (=> res!1927517 e!2873037)))

(declare-fun e!2873038 () Bool)

(assert (=> d!1450877 (= res!1927517 e!2873038)))

(declare-fun res!1927516 () Bool)

(assert (=> d!1450877 (=> (not res!1927516) (not e!2873038))))

(assert (=> d!1450877 (= res!1927516 ((_ is Cons!51168) (t!358286 (toList!4723 lm!1477))))))

(assert (=> d!1450877 (= (containsKeyBiggerList!294 (t!358286 (toList!4723 lm!1477)) key!3287) e!2873037)))

(declare-fun b!4605984 () Bool)

(assert (=> b!4605984 (= e!2873038 (containsKey!2225 (_2!29228 (h!57150 (t!358286 (toList!4723 lm!1477)))) key!3287))))

(declare-fun b!4605985 () Bool)

(declare-fun e!2873039 () Bool)

(assert (=> b!4605985 (= e!2873037 e!2873039)))

(declare-fun res!1927518 () Bool)

(assert (=> b!4605985 (=> (not res!1927518) (not e!2873039))))

(assert (=> b!4605985 (= res!1927518 ((_ is Cons!51168) (t!358286 (toList!4723 lm!1477))))))

(declare-fun b!4605986 () Bool)

(assert (=> b!4605986 (= e!2873039 (containsKeyBiggerList!294 (t!358286 (t!358286 (toList!4723 lm!1477))) key!3287))))

(assert (= (and d!1450877 res!1927516) b!4605984))

(assert (= (and d!1450877 (not res!1927517)) b!4605985))

(assert (= (and b!4605985 res!1927518) b!4605986))

(declare-fun m!5435355 () Bool)

(assert (=> b!4605984 m!5435355))

(declare-fun m!5435357 () Bool)

(assert (=> b!4605986 m!5435357))

(assert (=> b!4605777 d!1450877))

(declare-fun d!1450879 () Bool)

(declare-fun res!1927520 () Bool)

(declare-fun e!2873040 () Bool)

(assert (=> d!1450879 (=> res!1927520 e!2873040)))

(declare-fun e!2873041 () Bool)

(assert (=> d!1450879 (= res!1927520 e!2873041)))

(declare-fun res!1927519 () Bool)

(assert (=> d!1450879 (=> (not res!1927519) (not e!2873041))))

(assert (=> d!1450879 (= res!1927519 ((_ is Cons!51168) (toList!4723 lt!1763367)))))

(assert (=> d!1450879 (= (containsKeyBiggerList!294 (toList!4723 lt!1763367) key!3287) e!2873040)))

(declare-fun b!4605987 () Bool)

(assert (=> b!4605987 (= e!2873041 (containsKey!2225 (_2!29228 (h!57150 (toList!4723 lt!1763367))) key!3287))))

(declare-fun b!4605988 () Bool)

(declare-fun e!2873042 () Bool)

(assert (=> b!4605988 (= e!2873040 e!2873042)))

(declare-fun res!1927521 () Bool)

(assert (=> b!4605988 (=> (not res!1927521) (not e!2873042))))

(assert (=> b!4605988 (= res!1927521 ((_ is Cons!51168) (toList!4723 lt!1763367)))))

(declare-fun b!4605989 () Bool)

(assert (=> b!4605989 (= e!2873042 (containsKeyBiggerList!294 (t!358286 (toList!4723 lt!1763367)) key!3287))))

(assert (= (and d!1450879 res!1927519) b!4605987))

(assert (= (and d!1450879 (not res!1927520)) b!4605988))

(assert (= (and b!4605988 res!1927521) b!4605989))

(declare-fun m!5435359 () Bool)

(assert (=> b!4605987 m!5435359))

(declare-fun m!5435361 () Bool)

(assert (=> b!4605989 m!5435361))

(assert (=> b!4605777 d!1450879))

(declare-fun bs!1014395 () Bool)

(declare-fun d!1450881 () Bool)

(assert (= bs!1014395 (and d!1450881 start!460216)))

(declare-fun lambda!187497 () Int)

(assert (=> bs!1014395 (= lambda!187497 lambda!187462)))

(declare-fun bs!1014396 () Bool)

(assert (= bs!1014396 (and d!1450881 d!1450799)))

(assert (=> bs!1014396 (not (= lambda!187497 lambda!187466))))

(declare-fun bs!1014397 () Bool)

(assert (= bs!1014397 (and d!1450881 d!1450787)))

(assert (=> bs!1014397 (not (= lambda!187497 lambda!187465))))

(declare-fun bs!1014398 () Bool)

(assert (= bs!1014398 (and d!1450881 d!1450865)))

(assert (=> bs!1014398 (= lambda!187497 lambda!187494)))

(declare-fun bs!1014399 () Bool)

(assert (= bs!1014399 (and d!1450881 d!1450819)))

(assert (=> bs!1014399 (= lambda!187497 lambda!187479)))

(assert (=> d!1450881 (containsKeyBiggerList!294 (toList!4723 lt!1763367) key!3287)))

(declare-fun lt!1763486 () Unit!108959)

(declare-fun choose!30954 (ListLongMap!3355 K!12535 Hashable!5753) Unit!108959)

(assert (=> d!1450881 (= lt!1763486 (choose!30954 lt!1763367 key!3287 hashF!1107))))

(assert (=> d!1450881 (forall!10661 (toList!4723 lt!1763367) lambda!187497)))

(assert (=> d!1450881 (= (lemmaInLongMapThenContainsKeyBiggerList!164 lt!1763367 key!3287 hashF!1107) lt!1763486)))

(declare-fun bs!1014400 () Bool)

(assert (= bs!1014400 d!1450881))

(assert (=> bs!1014400 m!5435145))

(declare-fun m!5435363 () Bool)

(assert (=> bs!1014400 m!5435363))

(declare-fun m!5435365 () Bool)

(assert (=> bs!1014400 m!5435365))

(assert (=> b!4605777 d!1450881))

(declare-fun d!1450883 () Bool)

(declare-fun lt!1763487 () Bool)

(assert (=> d!1450883 (= lt!1763487 (select (content!8684 (toList!4723 lm!1477)) lt!1763368))))

(declare-fun e!2873044 () Bool)

(assert (=> d!1450883 (= lt!1763487 e!2873044)))

(declare-fun res!1927522 () Bool)

(assert (=> d!1450883 (=> (not res!1927522) (not e!2873044))))

(assert (=> d!1450883 (= res!1927522 ((_ is Cons!51168) (toList!4723 lm!1477)))))

(assert (=> d!1450883 (= (contains!14159 (toList!4723 lm!1477) lt!1763368) lt!1763487)))

(declare-fun b!4605990 () Bool)

(declare-fun e!2873043 () Bool)

(assert (=> b!4605990 (= e!2873044 e!2873043)))

(declare-fun res!1927523 () Bool)

(assert (=> b!4605990 (=> res!1927523 e!2873043)))

(assert (=> b!4605990 (= res!1927523 (= (h!57150 (toList!4723 lm!1477)) lt!1763368))))

(declare-fun b!4605991 () Bool)

(assert (=> b!4605991 (= e!2873043 (contains!14159 (t!358286 (toList!4723 lm!1477)) lt!1763368))))

(assert (= (and d!1450883 res!1927522) b!4605990))

(assert (= (and b!4605990 (not res!1927523)) b!4605991))

(declare-fun m!5435367 () Bool)

(assert (=> d!1450883 m!5435367))

(declare-fun m!5435369 () Bool)

(assert (=> d!1450883 m!5435369))

(assert (=> b!4605991 m!5435151))

(assert (=> b!4605778 d!1450883))

(declare-fun bs!1014401 () Bool)

(declare-fun d!1450885 () Bool)

(assert (= bs!1014401 (and d!1450885 start!460216)))

(declare-fun lambda!187500 () Int)

(assert (=> bs!1014401 (= lambda!187500 lambda!187462)))

(declare-fun bs!1014402 () Bool)

(assert (= bs!1014402 (and d!1450885 d!1450799)))

(assert (=> bs!1014402 (not (= lambda!187500 lambda!187466))))

(declare-fun bs!1014403 () Bool)

(assert (= bs!1014403 (and d!1450885 d!1450881)))

(assert (=> bs!1014403 (= lambda!187500 lambda!187497)))

(declare-fun bs!1014404 () Bool)

(assert (= bs!1014404 (and d!1450885 d!1450787)))

(assert (=> bs!1014404 (not (= lambda!187500 lambda!187465))))

(declare-fun bs!1014405 () Bool)

(assert (= bs!1014405 (and d!1450885 d!1450865)))

(assert (=> bs!1014405 (= lambda!187500 lambda!187494)))

(declare-fun bs!1014406 () Bool)

(assert (= bs!1014406 (and d!1450885 d!1450819)))

(assert (=> bs!1014406 (= lambda!187500 lambda!187479)))

(assert (=> d!1450885 (contains!14160 lm!1477 (hash!3282 hashF!1107 key!3287))))

(declare-fun lt!1763490 () Unit!108959)

(declare-fun choose!30955 (ListLongMap!3355 K!12535 Hashable!5753) Unit!108959)

(assert (=> d!1450885 (= lt!1763490 (choose!30955 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1450885 (forall!10661 (toList!4723 lm!1477) lambda!187500)))

(assert (=> d!1450885 (= (lemmaInGenMapThenLongMapContainsHash!428 lm!1477 key!3287 hashF!1107) lt!1763490)))

(declare-fun bs!1014407 () Bool)

(assert (= bs!1014407 d!1450885))

(assert (=> bs!1014407 m!5435125))

(assert (=> bs!1014407 m!5435125))

(declare-fun m!5435371 () Bool)

(assert (=> bs!1014407 m!5435371))

(declare-fun m!5435373 () Bool)

(assert (=> bs!1014407 m!5435373))

(declare-fun m!5435375 () Bool)

(assert (=> bs!1014407 m!5435375))

(assert (=> b!4605778 d!1450885))

(declare-fun d!1450887 () Bool)

(assert (=> d!1450887 (= (apply!12091 lm!1477 hash!344) (get!16925 (getValueByKey!1345 (toList!4723 lm!1477) hash!344)))))

(declare-fun bs!1014408 () Bool)

(assert (= bs!1014408 d!1450887))

(declare-fun m!5435377 () Bool)

(assert (=> bs!1014408 m!5435377))

(assert (=> bs!1014408 m!5435377))

(declare-fun m!5435379 () Bool)

(assert (=> bs!1014408 m!5435379))

(assert (=> b!4605778 d!1450887))

(declare-fun d!1450889 () Bool)

(assert (=> d!1450889 (contains!14159 (toList!4723 lm!1477) (tuple2!51869 hash!344 lt!1763372))))

(declare-fun lt!1763493 () Unit!108959)

(declare-fun choose!30956 (List!51292 (_ BitVec 64) List!51291) Unit!108959)

(assert (=> d!1450889 (= lt!1763493 (choose!30956 (toList!4723 lm!1477) hash!344 lt!1763372))))

(declare-fun e!2873047 () Bool)

(assert (=> d!1450889 e!2873047))

(declare-fun res!1927526 () Bool)

(assert (=> d!1450889 (=> (not res!1927526) (not e!2873047))))

(assert (=> d!1450889 (= res!1927526 (isStrictlySorted!557 (toList!4723 lm!1477)))))

(assert (=> d!1450889 (= (lemmaGetValueByKeyImpliesContainsTuple!864 (toList!4723 lm!1477) hash!344 lt!1763372) lt!1763493)))

(declare-fun b!4605994 () Bool)

(assert (=> b!4605994 (= e!2873047 (= (getValueByKey!1345 (toList!4723 lm!1477) hash!344) (Some!11426 lt!1763372)))))

(assert (= (and d!1450889 res!1927526) b!4605994))

(declare-fun m!5435381 () Bool)

(assert (=> d!1450889 m!5435381))

(declare-fun m!5435383 () Bool)

(assert (=> d!1450889 m!5435383))

(assert (=> d!1450889 m!5435165))

(assert (=> b!4605994 m!5435377))

(assert (=> b!4605778 d!1450889))

(declare-fun d!1450891 () Bool)

(assert (=> d!1450891 (dynLambda!21424 lambda!187462 lt!1763368)))

(declare-fun lt!1763496 () Unit!108959)

(declare-fun choose!30957 (List!51292 Int tuple2!51868) Unit!108959)

(assert (=> d!1450891 (= lt!1763496 (choose!30957 (toList!4723 lm!1477) lambda!187462 lt!1763368))))

(declare-fun e!2873050 () Bool)

(assert (=> d!1450891 e!2873050))

(declare-fun res!1927529 () Bool)

(assert (=> d!1450891 (=> (not res!1927529) (not e!2873050))))

(assert (=> d!1450891 (= res!1927529 (forall!10661 (toList!4723 lm!1477) lambda!187462))))

(assert (=> d!1450891 (= (forallContained!2907 (toList!4723 lm!1477) lambda!187462 lt!1763368) lt!1763496)))

(declare-fun b!4605997 () Bool)

(assert (=> b!4605997 (= e!2873050 (contains!14159 (toList!4723 lm!1477) lt!1763368))))

(assert (= (and d!1450891 res!1927529) b!4605997))

(declare-fun b_lambda!169989 () Bool)

(assert (=> (not b_lambda!169989) (not d!1450891)))

(declare-fun m!5435385 () Bool)

(assert (=> d!1450891 m!5435385))

(declare-fun m!5435387 () Bool)

(assert (=> d!1450891 m!5435387))

(assert (=> d!1450891 m!5435121))

(assert (=> b!4605997 m!5435139))

(assert (=> b!4605778 d!1450891))

(declare-fun b!4606007 () Bool)

(declare-fun e!2873055 () List!51291)

(declare-fun e!2873056 () List!51291)

(assert (=> b!4606007 (= e!2873055 e!2873056)))

(declare-fun c!789029 () Bool)

(assert (=> b!4606007 (= c!789029 ((_ is Cons!51167) lt!1763372))))

(declare-fun b!4606006 () Bool)

(assert (=> b!4606006 (= e!2873055 (t!358285 lt!1763372))))

(declare-fun b!4606008 () Bool)

(assert (=> b!4606008 (= e!2873056 (Cons!51167 (h!57149 lt!1763372) (removePairForKey!979 (t!358285 lt!1763372) key!3287)))))

(declare-fun b!4606009 () Bool)

(assert (=> b!4606009 (= e!2873056 Nil!51167)))

(declare-fun d!1450893 () Bool)

(declare-fun lt!1763499 () List!51291)

(assert (=> d!1450893 (not (containsKey!2225 lt!1763499 key!3287))))

(assert (=> d!1450893 (= lt!1763499 e!2873055)))

(declare-fun c!789028 () Bool)

(assert (=> d!1450893 (= c!789028 (and ((_ is Cons!51167) lt!1763372) (= (_1!29227 (h!57149 lt!1763372)) key!3287)))))

(assert (=> d!1450893 (noDuplicateKeys!1354 lt!1763372)))

(assert (=> d!1450893 (= (removePairForKey!979 lt!1763372 key!3287) lt!1763499)))

(assert (= (and d!1450893 c!789028) b!4606006))

(assert (= (and d!1450893 (not c!789028)) b!4606007))

(assert (= (and b!4606007 c!789029) b!4606008))

(assert (= (and b!4606007 (not c!789029)) b!4606009))

(declare-fun m!5435389 () Bool)

(assert (=> b!4606008 m!5435389))

(declare-fun m!5435391 () Bool)

(assert (=> d!1450893 m!5435391))

(declare-fun m!5435393 () Bool)

(assert (=> d!1450893 m!5435393))

(assert (=> b!4605778 d!1450893))

(declare-fun d!1450895 () Bool)

(declare-fun e!2873058 () Bool)

(assert (=> d!1450895 e!2873058))

(declare-fun res!1927530 () Bool)

(assert (=> d!1450895 (=> res!1927530 e!2873058)))

(declare-fun lt!1763501 () Bool)

(assert (=> d!1450895 (= res!1927530 (not lt!1763501))))

(declare-fun lt!1763500 () Bool)

(assert (=> d!1450895 (= lt!1763501 lt!1763500)))

(declare-fun lt!1763503 () Unit!108959)

(declare-fun e!2873057 () Unit!108959)

(assert (=> d!1450895 (= lt!1763503 e!2873057)))

(declare-fun c!789030 () Bool)

(assert (=> d!1450895 (= c!789030 lt!1763500)))

(assert (=> d!1450895 (= lt!1763500 (containsKey!2228 (toList!4723 lm!1477) lt!1763369))))

(assert (=> d!1450895 (= (contains!14160 lm!1477 lt!1763369) lt!1763501)))

(declare-fun b!4606010 () Bool)

(declare-fun lt!1763502 () Unit!108959)

(assert (=> b!4606010 (= e!2873057 lt!1763502)))

(assert (=> b!4606010 (= lt!1763502 (lemmaContainsKeyImpliesGetValueByKeyDefined!1249 (toList!4723 lm!1477) lt!1763369))))

(assert (=> b!4606010 (isDefined!8695 (getValueByKey!1345 (toList!4723 lm!1477) lt!1763369))))

(declare-fun b!4606011 () Bool)

(declare-fun Unit!108970 () Unit!108959)

(assert (=> b!4606011 (= e!2873057 Unit!108970)))

(declare-fun b!4606012 () Bool)

(assert (=> b!4606012 (= e!2873058 (isDefined!8695 (getValueByKey!1345 (toList!4723 lm!1477) lt!1763369)))))

(assert (= (and d!1450895 c!789030) b!4606010))

(assert (= (and d!1450895 (not c!789030)) b!4606011))

(assert (= (and d!1450895 (not res!1927530)) b!4606012))

(declare-fun m!5435395 () Bool)

(assert (=> d!1450895 m!5435395))

(declare-fun m!5435397 () Bool)

(assert (=> b!4606010 m!5435397))

(declare-fun m!5435399 () Bool)

(assert (=> b!4606010 m!5435399))

(assert (=> b!4606010 m!5435399))

(declare-fun m!5435401 () Bool)

(assert (=> b!4606010 m!5435401))

(assert (=> b!4606012 m!5435399))

(assert (=> b!4606012 m!5435399))

(assert (=> b!4606012 m!5435401))

(assert (=> b!4605778 d!1450895))

(declare-fun e!2873061 () Bool)

(declare-fun tp!1340847 () Bool)

(declare-fun b!4606017 () Bool)

(assert (=> b!4606017 (= e!2873061 (and tp_is_empty!28709 tp_is_empty!28711 tp!1340847))))

(assert (=> b!4605770 (= tp!1340835 e!2873061)))

(assert (= (and b!4605770 ((_ is Cons!51167) (t!358285 newBucket!178))) b!4606017))

(declare-fun b!4606022 () Bool)

(declare-fun e!2873064 () Bool)

(declare-fun tp!1340852 () Bool)

(declare-fun tp!1340853 () Bool)

(assert (=> b!4606022 (= e!2873064 (and tp!1340852 tp!1340853))))

(assert (=> b!4605767 (= tp!1340834 e!2873064)))

(assert (= (and b!4605767 ((_ is Cons!51168) (toList!4723 lm!1477))) b!4606022))

(declare-fun b_lambda!169991 () Bool)

(assert (= b_lambda!169973 (or start!460216 b_lambda!169991)))

(declare-fun bs!1014409 () Bool)

(declare-fun d!1450897 () Bool)

(assert (= bs!1014409 (and d!1450897 start!460216)))

(assert (=> bs!1014409 (= (dynLambda!21424 lambda!187462 (h!57150 (toList!4723 lt!1763367))) (noDuplicateKeys!1354 (_2!29228 (h!57150 (toList!4723 lt!1763367)))))))

(declare-fun m!5435403 () Bool)

(assert (=> bs!1014409 m!5435403))

(assert (=> b!4605791 d!1450897))

(declare-fun b_lambda!169993 () Bool)

(assert (= b_lambda!169975 (or start!460216 b_lambda!169993)))

(declare-fun bs!1014410 () Bool)

(declare-fun d!1450899 () Bool)

(assert (= bs!1014410 (and d!1450899 start!460216)))

(assert (=> bs!1014410 (= (dynLambda!21424 lambda!187462 (h!57150 (toList!4723 lm!1477))) (noDuplicateKeys!1354 (_2!29228 (h!57150 (toList!4723 lm!1477)))))))

(declare-fun m!5435405 () Bool)

(assert (=> bs!1014410 m!5435405))

(assert (=> b!4605799 d!1450899))

(declare-fun b_lambda!169995 () Bool)

(assert (= b_lambda!169989 (or start!460216 b_lambda!169995)))

(declare-fun bs!1014411 () Bool)

(declare-fun d!1450901 () Bool)

(assert (= bs!1014411 (and d!1450901 start!460216)))

(assert (=> bs!1014411 (= (dynLambda!21424 lambda!187462 lt!1763368) (noDuplicateKeys!1354 (_2!29228 lt!1763368)))))

(declare-fun m!5435407 () Bool)

(assert (=> bs!1014411 m!5435407))

(assert (=> d!1450891 d!1450901))

(check-sat (not b!4605986) (not bs!1014409) (not b!4605977) (not b!4605798) (not b!4605984) (not b!4605944) (not b_lambda!169991) (not b!4605945) (not b!4605976) (not d!1450885) (not d!1450787) (not b_lambda!169995) (not d!1450835) (not d!1450797) (not b_lambda!169993) (not d!1450799) (not bm!321298) (not d!1450865) (not b!4605939) (not b!4606022) (not d!1450817) (not d!1450893) (not b!4605800) (not d!1450803) (not bs!1014411) (not d!1450795) (not b!4605997) (not d!1450889) (not b!4605940) (not b!4605946) (not b!4605989) (not b!4605987) (not d!1450843) (not b!4605942) (not b!4606012) (not b!4605808) (not b!4605823) (not b!4605821) (not b!4605991) (not d!1450887) tp_is_empty!28709 (not b!4605970) (not d!1450819) (not b!4605792) (not d!1450807) (not b!4606008) (not b!4605994) (not d!1450809) (not b!4606017) (not b!4606010) (not b!4605943) (not d!1450881) tp_is_empty!28711 (not d!1450895) (not bs!1014410) (not d!1450883) (not d!1450891))
(check-sat)
(get-model)

(declare-fun d!1450903 () Bool)

(declare-fun noDuplicatedKeys!335 (List!51291) Bool)

(assert (=> d!1450903 (= (invariantList!1141 (toList!4724 lt!1763483)) (noDuplicatedKeys!335 (toList!4724 lt!1763483)))))

(declare-fun bs!1014412 () Bool)

(assert (= bs!1014412 d!1450903))

(declare-fun m!5435409 () Bool)

(assert (=> bs!1014412 m!5435409))

(assert (=> d!1450865 d!1450903))

(declare-fun d!1450905 () Bool)

(declare-fun res!1927531 () Bool)

(declare-fun e!2873065 () Bool)

(assert (=> d!1450905 (=> res!1927531 e!2873065)))

(assert (=> d!1450905 (= res!1927531 ((_ is Nil!51168) (toList!4723 lm!1477)))))

(assert (=> d!1450905 (= (forall!10661 (toList!4723 lm!1477) lambda!187494) e!2873065)))

(declare-fun b!4606023 () Bool)

(declare-fun e!2873066 () Bool)

(assert (=> b!4606023 (= e!2873065 e!2873066)))

(declare-fun res!1927532 () Bool)

(assert (=> b!4606023 (=> (not res!1927532) (not e!2873066))))

(assert (=> b!4606023 (= res!1927532 (dynLambda!21424 lambda!187494 (h!57150 (toList!4723 lm!1477))))))

(declare-fun b!4606024 () Bool)

(assert (=> b!4606024 (= e!2873066 (forall!10661 (t!358286 (toList!4723 lm!1477)) lambda!187494))))

(assert (= (and d!1450905 (not res!1927531)) b!4606023))

(assert (= (and b!4606023 res!1927532) b!4606024))

(declare-fun b_lambda!169997 () Bool)

(assert (=> (not b_lambda!169997) (not b!4606023)))

(declare-fun m!5435411 () Bool)

(assert (=> b!4606023 m!5435411))

(declare-fun m!5435413 () Bool)

(assert (=> b!4606024 m!5435413))

(assert (=> d!1450865 d!1450905))

(assert (=> d!1450819 d!1450843))

(assert (=> d!1450819 d!1450865))

(declare-fun d!1450907 () Bool)

(assert (=> d!1450907 (not (contains!14158 (extractMap!1414 (toList!4723 lm!1477)) key!3287))))

(assert (=> d!1450907 true))

(declare-fun _$26!572 () Unit!108959)

(assert (=> d!1450907 (= (choose!30953 lm!1477 key!3287 hashF!1107) _$26!572)))

(declare-fun bs!1014413 () Bool)

(assert (= bs!1014413 d!1450907))

(assert (=> bs!1014413 m!5435105))

(assert (=> bs!1014413 m!5435105))

(assert (=> bs!1014413 m!5435107))

(assert (=> d!1450819 d!1450907))

(declare-fun d!1450913 () Bool)

(declare-fun res!1927539 () Bool)

(declare-fun e!2873073 () Bool)

(assert (=> d!1450913 (=> res!1927539 e!2873073)))

(assert (=> d!1450913 (= res!1927539 ((_ is Nil!51168) (toList!4723 lm!1477)))))

(assert (=> d!1450913 (= (forall!10661 (toList!4723 lm!1477) lambda!187479) e!2873073)))

(declare-fun b!4606031 () Bool)

(declare-fun e!2873074 () Bool)

(assert (=> b!4606031 (= e!2873073 e!2873074)))

(declare-fun res!1927540 () Bool)

(assert (=> b!4606031 (=> (not res!1927540) (not e!2873074))))

(assert (=> b!4606031 (= res!1927540 (dynLambda!21424 lambda!187479 (h!57150 (toList!4723 lm!1477))))))

(declare-fun b!4606032 () Bool)

(assert (=> b!4606032 (= e!2873074 (forall!10661 (t!358286 (toList!4723 lm!1477)) lambda!187479))))

(assert (= (and d!1450913 (not res!1927539)) b!4606031))

(assert (= (and b!4606031 res!1927540) b!4606032))

(declare-fun b_lambda!169999 () Bool)

(assert (=> (not b_lambda!169999) (not b!4606031)))

(declare-fun m!5435421 () Bool)

(assert (=> b!4606031 m!5435421))

(declare-fun m!5435423 () Bool)

(assert (=> b!4606032 m!5435423))

(assert (=> d!1450819 d!1450913))

(declare-fun d!1450915 () Bool)

(declare-fun isEmpty!28885 (Option!11428) Bool)

(assert (=> d!1450915 (= (isDefined!8696 (getValueByKey!1346 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))) key!3287)) (not (isEmpty!28885 (getValueByKey!1346 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))) key!3287))))))

(declare-fun bs!1014414 () Bool)

(assert (= bs!1014414 d!1450915))

(assert (=> bs!1014414 m!5435307))

(declare-fun m!5435425 () Bool)

(assert (=> bs!1014414 m!5435425))

(assert (=> b!4605946 d!1450915))

(declare-fun b!4606053 () Bool)

(declare-fun e!2873082 () Option!11428)

(declare-fun e!2873083 () Option!11428)

(assert (=> b!4606053 (= e!2873082 e!2873083)))

(declare-fun c!789036 () Bool)

(assert (=> b!4606053 (= c!789036 (and ((_ is Cons!51167) (toList!4724 (extractMap!1414 (toList!4723 lm!1477)))) (not (= (_1!29227 (h!57149 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))))) key!3287))))))

(declare-fun d!1450917 () Bool)

(declare-fun c!789035 () Bool)

(assert (=> d!1450917 (= c!789035 (and ((_ is Cons!51167) (toList!4724 (extractMap!1414 (toList!4723 lm!1477)))) (= (_1!29227 (h!57149 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))))) key!3287)))))

(assert (=> d!1450917 (= (getValueByKey!1346 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))) key!3287) e!2873082)))

(declare-fun b!4606052 () Bool)

(assert (=> b!4606052 (= e!2873082 (Some!11427 (_2!29227 (h!57149 (toList!4724 (extractMap!1414 (toList!4723 lm!1477)))))))))

(declare-fun b!4606054 () Bool)

(assert (=> b!4606054 (= e!2873083 (getValueByKey!1346 (t!358285 (toList!4724 (extractMap!1414 (toList!4723 lm!1477)))) key!3287))))

(declare-fun b!4606055 () Bool)

(assert (=> b!4606055 (= e!2873083 None!11427)))

(assert (= (and d!1450917 c!789035) b!4606052))

(assert (= (and d!1450917 (not c!789035)) b!4606053))

(assert (= (and b!4606053 c!789036) b!4606054))

(assert (= (and b!4606053 (not c!789036)) b!4606055))

(declare-fun m!5435441 () Bool)

(assert (=> b!4606054 m!5435441))

(assert (=> b!4605946 d!1450917))

(declare-fun d!1450921 () Bool)

(declare-fun res!1927562 () Bool)

(declare-fun e!2873096 () Bool)

(assert (=> d!1450921 (=> res!1927562 e!2873096)))

(assert (=> d!1450921 (= res!1927562 (and ((_ is Cons!51168) (toList!4723 lm!1477)) (= (_1!29228 (h!57150 (toList!4723 lm!1477))) lt!1763369)))))

(assert (=> d!1450921 (= (containsKey!2228 (toList!4723 lm!1477) lt!1763369) e!2873096)))

(declare-fun b!4606068 () Bool)

(declare-fun e!2873097 () Bool)

(assert (=> b!4606068 (= e!2873096 e!2873097)))

(declare-fun res!1927563 () Bool)

(assert (=> b!4606068 (=> (not res!1927563) (not e!2873097))))

(assert (=> b!4606068 (= res!1927563 (and (or (not ((_ is Cons!51168) (toList!4723 lm!1477))) (bvsle (_1!29228 (h!57150 (toList!4723 lm!1477))) lt!1763369)) ((_ is Cons!51168) (toList!4723 lm!1477)) (bvslt (_1!29228 (h!57150 (toList!4723 lm!1477))) lt!1763369)))))

(declare-fun b!4606069 () Bool)

(assert (=> b!4606069 (= e!2873097 (containsKey!2228 (t!358286 (toList!4723 lm!1477)) lt!1763369))))

(assert (= (and d!1450921 (not res!1927562)) b!4606068))

(assert (= (and b!4606068 res!1927563) b!4606069))

(declare-fun m!5435449 () Bool)

(assert (=> b!4606069 m!5435449))

(assert (=> d!1450895 d!1450921))

(declare-fun d!1450927 () Bool)

(declare-fun res!1927568 () Bool)

(declare-fun e!2873105 () Bool)

(assert (=> d!1450927 (=> res!1927568 e!2873105)))

(assert (=> d!1450927 (= res!1927568 (and ((_ is Cons!51167) (toList!4724 (extractMap!1414 (toList!4723 lm!1477)))) (= (_1!29227 (h!57149 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))))) key!3287)))))

(assert (=> d!1450927 (= (containsKey!2229 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))) key!3287) e!2873105)))

(declare-fun b!4606080 () Bool)

(declare-fun e!2873106 () Bool)

(assert (=> b!4606080 (= e!2873105 e!2873106)))

(declare-fun res!1927569 () Bool)

(assert (=> b!4606080 (=> (not res!1927569) (not e!2873106))))

(assert (=> b!4606080 (= res!1927569 ((_ is Cons!51167) (toList!4724 (extractMap!1414 (toList!4723 lm!1477)))))))

(declare-fun b!4606081 () Bool)

(assert (=> b!4606081 (= e!2873106 (containsKey!2229 (t!358285 (toList!4724 (extractMap!1414 (toList!4723 lm!1477)))) key!3287))))

(assert (= (and d!1450927 (not res!1927568)) b!4606080))

(assert (= (and b!4606080 res!1927569) b!4606081))

(declare-fun m!5435455 () Bool)

(assert (=> b!4606081 m!5435455))

(assert (=> b!4605944 d!1450927))

(declare-fun d!1450931 () Bool)

(assert (=> d!1450931 (containsKey!2229 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))) key!3287)))

(declare-fun lt!1763512 () Unit!108959)

(declare-fun choose!30958 (List!51291 K!12535) Unit!108959)

(assert (=> d!1450931 (= lt!1763512 (choose!30958 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))) key!3287))))

(assert (=> d!1450931 (invariantList!1141 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))))))

(assert (=> d!1450931 (= (lemmaInGetKeysListThenContainsKey!589 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))) key!3287) lt!1763512)))

(declare-fun bs!1014416 () Bool)

(assert (= bs!1014416 d!1450931))

(assert (=> bs!1014416 m!5435315))

(declare-fun m!5435463 () Bool)

(assert (=> bs!1014416 m!5435463))

(declare-fun m!5435465 () Bool)

(assert (=> bs!1014416 m!5435465))

(assert (=> b!4605944 d!1450931))

(declare-fun d!1450937 () Bool)

(declare-fun res!1927572 () Bool)

(declare-fun e!2873109 () Bool)

(assert (=> d!1450937 (=> res!1927572 e!2873109)))

(assert (=> d!1450937 (= res!1927572 (not ((_ is Cons!51167) (_2!29228 (h!57150 (toList!4723 lt!1763367))))))))

(assert (=> d!1450937 (= (noDuplicateKeys!1354 (_2!29228 (h!57150 (toList!4723 lt!1763367)))) e!2873109)))

(declare-fun b!4606084 () Bool)

(declare-fun e!2873110 () Bool)

(assert (=> b!4606084 (= e!2873109 e!2873110)))

(declare-fun res!1927573 () Bool)

(assert (=> b!4606084 (=> (not res!1927573) (not e!2873110))))

(assert (=> b!4606084 (= res!1927573 (not (containsKey!2225 (t!358285 (_2!29228 (h!57150 (toList!4723 lt!1763367)))) (_1!29227 (h!57149 (_2!29228 (h!57150 (toList!4723 lt!1763367))))))))))

(declare-fun b!4606085 () Bool)

(assert (=> b!4606085 (= e!2873110 (noDuplicateKeys!1354 (t!358285 (_2!29228 (h!57150 (toList!4723 lt!1763367))))))))

(assert (= (and d!1450937 (not res!1927572)) b!4606084))

(assert (= (and b!4606084 res!1927573) b!4606085))

(declare-fun m!5435467 () Bool)

(assert (=> b!4606084 m!5435467))

(declare-fun m!5435469 () Bool)

(assert (=> b!4606085 m!5435469))

(assert (=> bs!1014409 d!1450937))

(declare-fun d!1450939 () Bool)

(declare-fun lt!1763515 () Bool)

(declare-fun content!8686 (List!51294) (InoxSet K!12535))

(assert (=> d!1450939 (= lt!1763515 (select (content!8686 (keys!17937 (extractMap!1414 (toList!4723 lm!1477)))) key!3287))))

(declare-fun e!2873121 () Bool)

(assert (=> d!1450939 (= lt!1763515 e!2873121)))

(declare-fun res!1927578 () Bool)

(assert (=> d!1450939 (=> (not res!1927578) (not e!2873121))))

(assert (=> d!1450939 (= res!1927578 ((_ is Cons!51170) (keys!17937 (extractMap!1414 (toList!4723 lm!1477)))))))

(assert (=> d!1450939 (= (contains!14162 (keys!17937 (extractMap!1414 (toList!4723 lm!1477))) key!3287) lt!1763515)))

(declare-fun b!4606102 () Bool)

(declare-fun e!2873122 () Bool)

(assert (=> b!4606102 (= e!2873121 e!2873122)))

(declare-fun res!1927579 () Bool)

(assert (=> b!4606102 (=> res!1927579 e!2873122)))

(assert (=> b!4606102 (= res!1927579 (= (h!57154 (keys!17937 (extractMap!1414 (toList!4723 lm!1477)))) key!3287))))

(declare-fun b!4606103 () Bool)

(assert (=> b!4606103 (= e!2873122 (contains!14162 (t!358288 (keys!17937 (extractMap!1414 (toList!4723 lm!1477)))) key!3287))))

(assert (= (and d!1450939 res!1927578) b!4606102))

(assert (= (and b!4606102 (not res!1927579)) b!4606103))

(assert (=> d!1450939 m!5435303))

(declare-fun m!5435473 () Bool)

(assert (=> d!1450939 m!5435473))

(declare-fun m!5435475 () Bool)

(assert (=> d!1450939 m!5435475))

(declare-fun m!5435477 () Bool)

(assert (=> b!4606103 m!5435477))

(assert (=> b!4605943 d!1450939))

(declare-fun b!4606128 () Bool)

(assert (=> b!4606128 true))

(declare-fun d!1450943 () Bool)

(declare-fun e!2873140 () Bool)

(assert (=> d!1450943 e!2873140))

(declare-fun res!1927600 () Bool)

(assert (=> d!1450943 (=> (not res!1927600) (not e!2873140))))

(declare-fun lt!1763523 () List!51294)

(declare-fun noDuplicate!822 (List!51294) Bool)

(assert (=> d!1450943 (= res!1927600 (noDuplicate!822 lt!1763523))))

(assert (=> d!1450943 (= lt!1763523 (getKeysList!590 (toList!4724 (extractMap!1414 (toList!4723 lm!1477)))))))

(assert (=> d!1450943 (= (keys!17937 (extractMap!1414 (toList!4723 lm!1477))) lt!1763523)))

(declare-fun b!4606127 () Bool)

(declare-fun res!1927599 () Bool)

(assert (=> b!4606127 (=> (not res!1927599) (not e!2873140))))

(declare-fun length!500 (List!51294) Int)

(declare-fun length!501 (List!51291) Int)

(assert (=> b!4606127 (= res!1927599 (= (length!500 lt!1763523) (length!501 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))))))))

(declare-fun res!1927601 () Bool)

(assert (=> b!4606128 (=> (not res!1927601) (not e!2873140))))

(declare-fun lambda!187511 () Int)

(declare-fun forall!10665 (List!51294 Int) Bool)

(assert (=> b!4606128 (= res!1927601 (forall!10665 lt!1763523 lambda!187511))))

(declare-fun lambda!187512 () Int)

(declare-fun b!4606129 () Bool)

(declare-fun map!11312 (List!51291 Int) List!51294)

(assert (=> b!4606129 (= e!2873140 (= (content!8686 lt!1763523) (content!8686 (map!11312 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))) lambda!187512))))))

(assert (= (and d!1450943 res!1927600) b!4606127))

(assert (= (and b!4606127 res!1927599) b!4606128))

(assert (= (and b!4606128 res!1927601) b!4606129))

(declare-fun m!5435501 () Bool)

(assert (=> d!1450943 m!5435501))

(assert (=> d!1450943 m!5435317))

(declare-fun m!5435503 () Bool)

(assert (=> b!4606127 m!5435503))

(declare-fun m!5435505 () Bool)

(assert (=> b!4606127 m!5435505))

(declare-fun m!5435507 () Bool)

(assert (=> b!4606128 m!5435507))

(declare-fun m!5435509 () Bool)

(assert (=> b!4606129 m!5435509))

(declare-fun m!5435511 () Bool)

(assert (=> b!4606129 m!5435511))

(assert (=> b!4606129 m!5435511))

(declare-fun m!5435513 () Bool)

(assert (=> b!4606129 m!5435513))

(assert (=> b!4605943 d!1450943))

(declare-fun d!1450959 () Bool)

(declare-fun c!789052 () Bool)

(assert (=> d!1450959 (= c!789052 (and ((_ is Cons!51168) (toList!4723 lm!1477)) (= (_1!29228 (h!57150 (toList!4723 lm!1477))) hash!344)))))

(declare-fun e!2873153 () Option!11427)

(assert (=> d!1450959 (= (getValueByKey!1345 (toList!4723 lm!1477) hash!344) e!2873153)))

(declare-fun b!4606148 () Bool)

(assert (=> b!4606148 (= e!2873153 (Some!11426 (_2!29228 (h!57150 (toList!4723 lm!1477)))))))

(declare-fun b!4606149 () Bool)

(declare-fun e!2873154 () Option!11427)

(assert (=> b!4606149 (= e!2873153 e!2873154)))

(declare-fun c!789053 () Bool)

(assert (=> b!4606149 (= c!789053 (and ((_ is Cons!51168) (toList!4723 lm!1477)) (not (= (_1!29228 (h!57150 (toList!4723 lm!1477))) hash!344))))))

(declare-fun b!4606150 () Bool)

(assert (=> b!4606150 (= e!2873154 (getValueByKey!1345 (t!358286 (toList!4723 lm!1477)) hash!344))))

(declare-fun b!4606151 () Bool)

(assert (=> b!4606151 (= e!2873154 None!11426)))

(assert (= (and d!1450959 c!789052) b!4606148))

(assert (= (and d!1450959 (not c!789052)) b!4606149))

(assert (= (and b!4606149 c!789053) b!4606150))

(assert (= (and b!4606149 (not c!789053)) b!4606151))

(declare-fun m!5435523 () Bool)

(assert (=> b!4606150 m!5435523))

(assert (=> b!4605994 d!1450959))

(declare-fun d!1450965 () Bool)

(declare-fun res!1927611 () Bool)

(declare-fun e!2873156 () Bool)

(assert (=> d!1450965 (=> res!1927611 e!2873156)))

(assert (=> d!1450965 (= res!1927611 ((_ is Nil!51168) (toList!4723 lt!1763367)))))

(assert (=> d!1450965 (= (forall!10661 (toList!4723 lt!1763367) lambda!187465) e!2873156)))

(declare-fun b!4606153 () Bool)

(declare-fun e!2873158 () Bool)

(assert (=> b!4606153 (= e!2873156 e!2873158)))

(declare-fun res!1927613 () Bool)

(assert (=> b!4606153 (=> (not res!1927613) (not e!2873158))))

(assert (=> b!4606153 (= res!1927613 (dynLambda!21424 lambda!187465 (h!57150 (toList!4723 lt!1763367))))))

(declare-fun b!4606155 () Bool)

(assert (=> b!4606155 (= e!2873158 (forall!10661 (t!358286 (toList!4723 lt!1763367)) lambda!187465))))

(assert (= (and d!1450965 (not res!1927611)) b!4606153))

(assert (= (and b!4606153 res!1927613) b!4606155))

(declare-fun b_lambda!170005 () Bool)

(assert (=> (not b_lambda!170005) (not b!4606153)))

(declare-fun m!5435525 () Bool)

(assert (=> b!4606153 m!5435525))

(declare-fun m!5435529 () Bool)

(assert (=> b!4606155 m!5435529))

(assert (=> d!1450787 d!1450965))

(declare-fun b!4606157 () Bool)

(declare-fun e!2873159 () List!51291)

(declare-fun e!2873160 () List!51291)

(assert (=> b!4606157 (= e!2873159 e!2873160)))

(declare-fun c!789055 () Bool)

(assert (=> b!4606157 (= c!789055 ((_ is Cons!51167) (t!358285 lt!1763372)))))

(declare-fun b!4606156 () Bool)

(assert (=> b!4606156 (= e!2873159 (t!358285 (t!358285 lt!1763372)))))

(declare-fun b!4606158 () Bool)

(assert (=> b!4606158 (= e!2873160 (Cons!51167 (h!57149 (t!358285 lt!1763372)) (removePairForKey!979 (t!358285 (t!358285 lt!1763372)) key!3287)))))

(declare-fun b!4606159 () Bool)

(assert (=> b!4606159 (= e!2873160 Nil!51167)))

(declare-fun d!1450969 () Bool)

(declare-fun lt!1763524 () List!51291)

(assert (=> d!1450969 (not (containsKey!2225 lt!1763524 key!3287))))

(assert (=> d!1450969 (= lt!1763524 e!2873159)))

(declare-fun c!789054 () Bool)

(assert (=> d!1450969 (= c!789054 (and ((_ is Cons!51167) (t!358285 lt!1763372)) (= (_1!29227 (h!57149 (t!358285 lt!1763372))) key!3287)))))

(assert (=> d!1450969 (noDuplicateKeys!1354 (t!358285 lt!1763372))))

(assert (=> d!1450969 (= (removePairForKey!979 (t!358285 lt!1763372) key!3287) lt!1763524)))

(assert (= (and d!1450969 c!789054) b!4606156))

(assert (= (and d!1450969 (not c!789054)) b!4606157))

(assert (= (and b!4606157 c!789055) b!4606158))

(assert (= (and b!4606157 (not c!789055)) b!4606159))

(declare-fun m!5435533 () Bool)

(assert (=> b!4606158 m!5435533))

(declare-fun m!5435537 () Bool)

(assert (=> d!1450969 m!5435537))

(declare-fun m!5435539 () Bool)

(assert (=> d!1450969 m!5435539))

(assert (=> b!4606008 d!1450969))

(declare-fun d!1450975 () Bool)

(declare-fun lt!1763525 () Bool)

(assert (=> d!1450975 (= lt!1763525 (select (content!8684 (t!358286 (t!358286 (toList!4723 lm!1477)))) lt!1763368))))

(declare-fun e!2873164 () Bool)

(assert (=> d!1450975 (= lt!1763525 e!2873164)))

(declare-fun res!1927614 () Bool)

(assert (=> d!1450975 (=> (not res!1927614) (not e!2873164))))

(assert (=> d!1450975 (= res!1927614 ((_ is Cons!51168) (t!358286 (t!358286 (toList!4723 lm!1477)))))))

(assert (=> d!1450975 (= (contains!14159 (t!358286 (t!358286 (toList!4723 lm!1477))) lt!1763368) lt!1763525)))

(declare-fun b!4606164 () Bool)

(declare-fun e!2873163 () Bool)

(assert (=> b!4606164 (= e!2873164 e!2873163)))

(declare-fun res!1927615 () Bool)

(assert (=> b!4606164 (=> res!1927615 e!2873163)))

(assert (=> b!4606164 (= res!1927615 (= (h!57150 (t!358286 (t!358286 (toList!4723 lm!1477)))) lt!1763368))))

(declare-fun b!4606165 () Bool)

(assert (=> b!4606165 (= e!2873163 (contains!14159 (t!358286 (t!358286 (t!358286 (toList!4723 lm!1477)))) lt!1763368))))

(assert (= (and d!1450975 res!1927614) b!4606164))

(assert (= (and b!4606164 (not res!1927615)) b!4606165))

(declare-fun m!5435541 () Bool)

(assert (=> d!1450975 m!5435541))

(declare-fun m!5435543 () Bool)

(assert (=> d!1450975 m!5435543))

(declare-fun m!5435545 () Bool)

(assert (=> b!4606165 m!5435545))

(assert (=> b!4605808 d!1450975))

(declare-fun d!1450977 () Bool)

(declare-fun res!1927616 () Bool)

(declare-fun e!2873165 () Bool)

(assert (=> d!1450977 (=> res!1927616 e!2873165)))

(assert (=> d!1450977 (= res!1927616 (not ((_ is Cons!51167) (_2!29228 lt!1763368))))))

(assert (=> d!1450977 (= (noDuplicateKeys!1354 (_2!29228 lt!1763368)) e!2873165)))

(declare-fun b!4606166 () Bool)

(declare-fun e!2873166 () Bool)

(assert (=> b!4606166 (= e!2873165 e!2873166)))

(declare-fun res!1927617 () Bool)

(assert (=> b!4606166 (=> (not res!1927617) (not e!2873166))))

(assert (=> b!4606166 (= res!1927617 (not (containsKey!2225 (t!358285 (_2!29228 lt!1763368)) (_1!29227 (h!57149 (_2!29228 lt!1763368))))))))

(declare-fun b!4606167 () Bool)

(assert (=> b!4606167 (= e!2873166 (noDuplicateKeys!1354 (t!358285 (_2!29228 lt!1763368))))))

(assert (= (and d!1450977 (not res!1927616)) b!4606166))

(assert (= (and b!4606166 res!1927617) b!4606167))

(declare-fun m!5435547 () Bool)

(assert (=> b!4606166 m!5435547))

(declare-fun m!5435549 () Bool)

(assert (=> b!4606167 m!5435549))

(assert (=> bs!1014411 d!1450977))

(declare-fun d!1450979 () Bool)

(declare-fun c!789060 () Bool)

(assert (=> d!1450979 (= c!789060 ((_ is Nil!51168) (t!358286 (toList!4723 lm!1477))))))

(declare-fun e!2873169 () (InoxSet tuple2!51868))

(assert (=> d!1450979 (= (content!8684 (t!358286 (toList!4723 lm!1477))) e!2873169)))

(declare-fun b!4606172 () Bool)

(assert (=> b!4606172 (= e!2873169 ((as const (Array tuple2!51868 Bool)) false))))

(declare-fun b!4606173 () Bool)

(assert (=> b!4606173 (= e!2873169 ((_ map or) (store ((as const (Array tuple2!51868 Bool)) false) (h!57150 (t!358286 (toList!4723 lm!1477))) true) (content!8684 (t!358286 (t!358286 (toList!4723 lm!1477))))))))

(assert (= (and d!1450979 c!789060) b!4606172))

(assert (= (and d!1450979 (not c!789060)) b!4606173))

(declare-fun m!5435551 () Bool)

(assert (=> b!4606173 m!5435551))

(assert (=> b!4606173 m!5435541))

(assert (=> d!1450807 d!1450979))

(declare-fun d!1450981 () Bool)

(declare-fun res!1927618 () Bool)

(declare-fun e!2873170 () Bool)

(assert (=> d!1450981 (=> res!1927618 e!2873170)))

(assert (=> d!1450981 (= res!1927618 (not ((_ is Cons!51167) (t!358285 newBucket!178))))))

(assert (=> d!1450981 (= (noDuplicateKeys!1354 (t!358285 newBucket!178)) e!2873170)))

(declare-fun b!4606174 () Bool)

(declare-fun e!2873171 () Bool)

(assert (=> b!4606174 (= e!2873170 e!2873171)))

(declare-fun res!1927619 () Bool)

(assert (=> b!4606174 (=> (not res!1927619) (not e!2873171))))

(assert (=> b!4606174 (= res!1927619 (not (containsKey!2225 (t!358285 (t!358285 newBucket!178)) (_1!29227 (h!57149 (t!358285 newBucket!178))))))))

(declare-fun b!4606175 () Bool)

(assert (=> b!4606175 (= e!2873171 (noDuplicateKeys!1354 (t!358285 (t!358285 newBucket!178))))))

(assert (= (and d!1450981 (not res!1927618)) b!4606174))

(assert (= (and b!4606174 res!1927619) b!4606175))

(declare-fun m!5435553 () Bool)

(assert (=> b!4606174 m!5435553))

(declare-fun m!5435555 () Bool)

(assert (=> b!4606175 m!5435555))

(assert (=> b!4605977 d!1450981))

(declare-fun d!1450983 () Bool)

(declare-fun res!1927620 () Bool)

(declare-fun e!2873172 () Bool)

(assert (=> d!1450983 (=> res!1927620 e!2873172)))

(assert (=> d!1450983 (= res!1927620 (and ((_ is Cons!51167) (t!358285 lt!1763372)) (= (_1!29227 (h!57149 (t!358285 lt!1763372))) key!3287)))))

(assert (=> d!1450983 (= (containsKey!2225 (t!358285 lt!1763372) key!3287) e!2873172)))

(declare-fun b!4606176 () Bool)

(declare-fun e!2873173 () Bool)

(assert (=> b!4606176 (= e!2873172 e!2873173)))

(declare-fun res!1927621 () Bool)

(assert (=> b!4606176 (=> (not res!1927621) (not e!2873173))))

(assert (=> b!4606176 (= res!1927621 ((_ is Cons!51167) (t!358285 lt!1763372)))))

(declare-fun b!4606177 () Bool)

(assert (=> b!4606177 (= e!2873173 (containsKey!2225 (t!358285 (t!358285 lt!1763372)) key!3287))))

(assert (= (and d!1450983 (not res!1927620)) b!4606176))

(assert (= (and b!4606176 res!1927621) b!4606177))

(declare-fun m!5435557 () Bool)

(assert (=> b!4606177 m!5435557))

(assert (=> b!4605798 d!1450983))

(assert (=> d!1450843 d!1450927))

(declare-fun bs!1014427 () Bool)

(declare-fun b!4606226 () Bool)

(assert (= bs!1014427 (and b!4606226 d!1450835)))

(declare-fun lambda!187553 () Int)

(assert (=> bs!1014427 (not (= lambda!187553 lambda!187482))))

(assert (=> b!4606226 true))

(declare-fun bs!1014428 () Bool)

(declare-fun b!4606228 () Bool)

(assert (= bs!1014428 (and b!4606228 d!1450835)))

(declare-fun lambda!187554 () Int)

(assert (=> bs!1014428 (not (= lambda!187554 lambda!187482))))

(declare-fun bs!1014429 () Bool)

(assert (= bs!1014429 (and b!4606228 b!4606226)))

(assert (=> bs!1014429 (= lambda!187554 lambda!187553)))

(assert (=> b!4606228 true))

(declare-fun lambda!187555 () Int)

(assert (=> bs!1014428 (not (= lambda!187555 lambda!187482))))

(declare-fun lt!1763604 () ListMap!3985)

(assert (=> bs!1014429 (= (= lt!1763604 (extractMap!1414 (t!358286 (toList!4723 lm!1477)))) (= lambda!187555 lambda!187553))))

(assert (=> b!4606228 (= (= lt!1763604 (extractMap!1414 (t!358286 (toList!4723 lm!1477)))) (= lambda!187555 lambda!187554))))

(assert (=> b!4606228 true))

(declare-fun bs!1014430 () Bool)

(declare-fun d!1450985 () Bool)

(assert (= bs!1014430 (and d!1450985 d!1450835)))

(declare-fun lambda!187556 () Int)

(assert (=> bs!1014430 (not (= lambda!187556 lambda!187482))))

(declare-fun bs!1014431 () Bool)

(assert (= bs!1014431 (and d!1450985 b!4606226)))

(declare-fun lt!1763606 () ListMap!3985)

(assert (=> bs!1014431 (= (= lt!1763606 (extractMap!1414 (t!358286 (toList!4723 lm!1477)))) (= lambda!187556 lambda!187553))))

(declare-fun bs!1014432 () Bool)

(assert (= bs!1014432 (and d!1450985 b!4606228)))

(assert (=> bs!1014432 (= (= lt!1763606 (extractMap!1414 (t!358286 (toList!4723 lm!1477)))) (= lambda!187556 lambda!187554))))

(assert (=> bs!1014432 (= (= lt!1763606 lt!1763604) (= lambda!187556 lambda!187555))))

(assert (=> d!1450985 true))

(declare-fun b!4606225 () Bool)

(declare-fun res!1927646 () Bool)

(declare-fun e!2873200 () Bool)

(assert (=> b!4606225 (=> (not res!1927646) (not e!2873200))))

(assert (=> b!4606225 (= res!1927646 (forall!10663 (toList!4724 (extractMap!1414 (t!358286 (toList!4723 lm!1477)))) lambda!187556))))

(assert (=> d!1450985 e!2873200))

(declare-fun res!1927647 () Bool)

(assert (=> d!1450985 (=> (not res!1927647) (not e!2873200))))

(assert (=> d!1450985 (= res!1927647 (forall!10663 (_2!29228 (h!57150 (toList!4723 lm!1477))) lambda!187556))))

(declare-fun e!2873202 () ListMap!3985)

(assert (=> d!1450985 (= lt!1763606 e!2873202)))

(declare-fun c!789072 () Bool)

(assert (=> d!1450985 (= c!789072 ((_ is Nil!51167) (_2!29228 (h!57150 (toList!4723 lm!1477)))))))

(assert (=> d!1450985 (noDuplicateKeys!1354 (_2!29228 (h!57150 (toList!4723 lm!1477))))))

(assert (=> d!1450985 (= (addToMapMapFromBucket!833 (_2!29228 (h!57150 (toList!4723 lm!1477))) (extractMap!1414 (t!358286 (toList!4723 lm!1477)))) lt!1763606)))

(assert (=> b!4606226 (= e!2873202 (extractMap!1414 (t!358286 (toList!4723 lm!1477))))))

(declare-fun lt!1763602 () Unit!108959)

(declare-fun call!321311 () Unit!108959)

(assert (=> b!4606226 (= lt!1763602 call!321311)))

(declare-fun call!321312 () Bool)

(assert (=> b!4606226 call!321312))

(declare-fun lt!1763603 () Unit!108959)

(assert (=> b!4606226 (= lt!1763603 lt!1763602)))

(declare-fun call!321310 () Bool)

(assert (=> b!4606226 call!321310))

(declare-fun lt!1763605 () Unit!108959)

(declare-fun Unit!108971 () Unit!108959)

(assert (=> b!4606226 (= lt!1763605 Unit!108971)))

(declare-fun b!4606227 () Bool)

(declare-fun e!2873201 () Bool)

(assert (=> b!4606227 (= e!2873201 (forall!10663 (toList!4724 (extractMap!1414 (t!358286 (toList!4723 lm!1477)))) lambda!187555))))

(declare-fun bm!321305 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!445 (ListMap!3985) Unit!108959)

(assert (=> bm!321305 (= call!321311 (lemmaContainsAllItsOwnKeys!445 (extractMap!1414 (t!358286 (toList!4723 lm!1477)))))))

(assert (=> b!4606228 (= e!2873202 lt!1763604)))

(declare-fun lt!1763591 () ListMap!3985)

(declare-fun +!1771 (ListMap!3985 tuple2!51866) ListMap!3985)

(assert (=> b!4606228 (= lt!1763591 (+!1771 (extractMap!1414 (t!358286 (toList!4723 lm!1477))) (h!57149 (_2!29228 (h!57150 (toList!4723 lm!1477))))))))

(assert (=> b!4606228 (= lt!1763604 (addToMapMapFromBucket!833 (t!358285 (_2!29228 (h!57150 (toList!4723 lm!1477)))) (+!1771 (extractMap!1414 (t!358286 (toList!4723 lm!1477))) (h!57149 (_2!29228 (h!57150 (toList!4723 lm!1477)))))))))

(declare-fun lt!1763610 () Unit!108959)

(assert (=> b!4606228 (= lt!1763610 call!321311)))

(assert (=> b!4606228 call!321312))

(declare-fun lt!1763593 () Unit!108959)

(assert (=> b!4606228 (= lt!1763593 lt!1763610)))

(assert (=> b!4606228 (forall!10663 (toList!4724 lt!1763591) lambda!187555)))

(declare-fun lt!1763608 () Unit!108959)

(declare-fun Unit!108972 () Unit!108959)

(assert (=> b!4606228 (= lt!1763608 Unit!108972)))

(assert (=> b!4606228 (forall!10663 (t!358285 (_2!29228 (h!57150 (toList!4723 lm!1477)))) lambda!187555)))

(declare-fun lt!1763599 () Unit!108959)

(declare-fun Unit!108973 () Unit!108959)

(assert (=> b!4606228 (= lt!1763599 Unit!108973)))

(declare-fun lt!1763596 () Unit!108959)

(declare-fun Unit!108974 () Unit!108959)

(assert (=> b!4606228 (= lt!1763596 Unit!108974)))

(declare-fun lt!1763607 () Unit!108959)

(declare-fun forallContained!2908 (List!51291 Int tuple2!51866) Unit!108959)

(assert (=> b!4606228 (= lt!1763607 (forallContained!2908 (toList!4724 lt!1763591) lambda!187555 (h!57149 (_2!29228 (h!57150 (toList!4723 lm!1477))))))))

(assert (=> b!4606228 (contains!14158 lt!1763591 (_1!29227 (h!57149 (_2!29228 (h!57150 (toList!4723 lm!1477))))))))

(declare-fun lt!1763597 () Unit!108959)

(declare-fun Unit!108976 () Unit!108959)

(assert (=> b!4606228 (= lt!1763597 Unit!108976)))

(assert (=> b!4606228 (contains!14158 lt!1763604 (_1!29227 (h!57149 (_2!29228 (h!57150 (toList!4723 lm!1477))))))))

(declare-fun lt!1763601 () Unit!108959)

(declare-fun Unit!108977 () Unit!108959)

(assert (=> b!4606228 (= lt!1763601 Unit!108977)))

(assert (=> b!4606228 (forall!10663 (_2!29228 (h!57150 (toList!4723 lm!1477))) lambda!187555)))

(declare-fun lt!1763609 () Unit!108959)

(declare-fun Unit!108978 () Unit!108959)

(assert (=> b!4606228 (= lt!1763609 Unit!108978)))

(assert (=> b!4606228 (forall!10663 (toList!4724 lt!1763591) lambda!187555)))

(declare-fun lt!1763598 () Unit!108959)

(declare-fun Unit!108980 () Unit!108959)

(assert (=> b!4606228 (= lt!1763598 Unit!108980)))

(declare-fun lt!1763600 () Unit!108959)

(declare-fun Unit!108982 () Unit!108959)

(assert (=> b!4606228 (= lt!1763600 Unit!108982)))

(declare-fun lt!1763594 () Unit!108959)

(declare-fun addForallContainsKeyThenBeforeAdding!445 (ListMap!3985 ListMap!3985 K!12535 V!12781) Unit!108959)

(assert (=> b!4606228 (= lt!1763594 (addForallContainsKeyThenBeforeAdding!445 (extractMap!1414 (t!358286 (toList!4723 lm!1477))) lt!1763604 (_1!29227 (h!57149 (_2!29228 (h!57150 (toList!4723 lm!1477))))) (_2!29227 (h!57149 (_2!29228 (h!57150 (toList!4723 lm!1477)))))))))

(assert (=> b!4606228 (forall!10663 (toList!4724 (extractMap!1414 (t!358286 (toList!4723 lm!1477)))) lambda!187555)))

(declare-fun lt!1763592 () Unit!108959)

(assert (=> b!4606228 (= lt!1763592 lt!1763594)))

(assert (=> b!4606228 (forall!10663 (toList!4724 (extractMap!1414 (t!358286 (toList!4723 lm!1477)))) lambda!187555)))

(declare-fun lt!1763595 () Unit!108959)

(declare-fun Unit!108983 () Unit!108959)

(assert (=> b!4606228 (= lt!1763595 Unit!108983)))

(declare-fun res!1927645 () Bool)

(assert (=> b!4606228 (= res!1927645 call!321310)))

(assert (=> b!4606228 (=> (not res!1927645) (not e!2873201))))

(assert (=> b!4606228 e!2873201))

(declare-fun lt!1763590 () Unit!108959)

(declare-fun Unit!108984 () Unit!108959)

(assert (=> b!4606228 (= lt!1763590 Unit!108984)))

(declare-fun b!4606229 () Bool)

(assert (=> b!4606229 (= e!2873200 (invariantList!1141 (toList!4724 lt!1763606)))))

(declare-fun bm!321306 () Bool)

(assert (=> bm!321306 (= call!321310 (forall!10663 (ite c!789072 (toList!4724 (extractMap!1414 (t!358286 (toList!4723 lm!1477)))) (_2!29228 (h!57150 (toList!4723 lm!1477)))) (ite c!789072 lambda!187553 lambda!187555)))))

(declare-fun bm!321307 () Bool)

(assert (=> bm!321307 (= call!321312 (forall!10663 (toList!4724 (extractMap!1414 (t!358286 (toList!4723 lm!1477)))) (ite c!789072 lambda!187553 lambda!187554)))))

(assert (= (and d!1450985 c!789072) b!4606226))

(assert (= (and d!1450985 (not c!789072)) b!4606228))

(assert (= (and b!4606228 res!1927645) b!4606227))

(assert (= (or b!4606226 b!4606228) bm!321307))

(assert (= (or b!4606226 b!4606228) bm!321306))

(assert (= (or b!4606226 b!4606228) bm!321305))

(assert (= (and d!1450985 res!1927647) b!4606225))

(assert (= (and b!4606225 res!1927646) b!4606229))

(declare-fun m!5435601 () Bool)

(assert (=> b!4606228 m!5435601))

(assert (=> b!4606228 m!5435347))

(declare-fun m!5435603 () Bool)

(assert (=> b!4606228 m!5435603))

(declare-fun m!5435605 () Bool)

(assert (=> b!4606228 m!5435605))

(declare-fun m!5435607 () Bool)

(assert (=> b!4606228 m!5435607))

(assert (=> b!4606228 m!5435603))

(declare-fun m!5435609 () Bool)

(assert (=> b!4606228 m!5435609))

(assert (=> b!4606228 m!5435347))

(declare-fun m!5435611 () Bool)

(assert (=> b!4606228 m!5435611))

(assert (=> b!4606228 m!5435605))

(declare-fun m!5435613 () Bool)

(assert (=> b!4606228 m!5435613))

(declare-fun m!5435615 () Bool)

(assert (=> b!4606228 m!5435615))

(declare-fun m!5435617 () Bool)

(assert (=> b!4606228 m!5435617))

(declare-fun m!5435619 () Bool)

(assert (=> b!4606228 m!5435619))

(assert (=> b!4606228 m!5435613))

(assert (=> bm!321305 m!5435347))

(declare-fun m!5435621 () Bool)

(assert (=> bm!321305 m!5435621))

(declare-fun m!5435623 () Bool)

(assert (=> bm!321307 m!5435623))

(declare-fun m!5435625 () Bool)

(assert (=> b!4606225 m!5435625))

(assert (=> b!4606227 m!5435613))

(declare-fun m!5435627 () Bool)

(assert (=> d!1450985 m!5435627))

(assert (=> d!1450985 m!5435405))

(declare-fun m!5435629 () Bool)

(assert (=> bm!321306 m!5435629))

(declare-fun m!5435631 () Bool)

(assert (=> b!4606229 m!5435631))

(assert (=> b!4605970 d!1450985))

(declare-fun bs!1014433 () Bool)

(declare-fun d!1451001 () Bool)

(assert (= bs!1014433 (and d!1451001 start!460216)))

(declare-fun lambda!187561 () Int)

(assert (=> bs!1014433 (= lambda!187561 lambda!187462)))

(declare-fun bs!1014434 () Bool)

(assert (= bs!1014434 (and d!1451001 d!1450885)))

(assert (=> bs!1014434 (= lambda!187561 lambda!187500)))

(declare-fun bs!1014435 () Bool)

(assert (= bs!1014435 (and d!1451001 d!1450799)))

(assert (=> bs!1014435 (not (= lambda!187561 lambda!187466))))

(declare-fun bs!1014436 () Bool)

(assert (= bs!1014436 (and d!1451001 d!1450881)))

(assert (=> bs!1014436 (= lambda!187561 lambda!187497)))

(declare-fun bs!1014437 () Bool)

(assert (= bs!1014437 (and d!1451001 d!1450787)))

(assert (=> bs!1014437 (not (= lambda!187561 lambda!187465))))

(declare-fun bs!1014438 () Bool)

(assert (= bs!1014438 (and d!1451001 d!1450865)))

(assert (=> bs!1014438 (= lambda!187561 lambda!187494)))

(declare-fun bs!1014439 () Bool)

(assert (= bs!1014439 (and d!1451001 d!1450819)))

(assert (=> bs!1014439 (= lambda!187561 lambda!187479)))

(declare-fun lt!1763619 () ListMap!3985)

(assert (=> d!1451001 (invariantList!1141 (toList!4724 lt!1763619))))

(declare-fun e!2873205 () ListMap!3985)

(assert (=> d!1451001 (= lt!1763619 e!2873205)))

(declare-fun c!789075 () Bool)

(assert (=> d!1451001 (= c!789075 ((_ is Cons!51168) (t!358286 (toList!4723 lm!1477))))))

(assert (=> d!1451001 (forall!10661 (t!358286 (toList!4723 lm!1477)) lambda!187561)))

(assert (=> d!1451001 (= (extractMap!1414 (t!358286 (toList!4723 lm!1477))) lt!1763619)))

(declare-fun b!4606236 () Bool)

(assert (=> b!4606236 (= e!2873205 (addToMapMapFromBucket!833 (_2!29228 (h!57150 (t!358286 (toList!4723 lm!1477)))) (extractMap!1414 (t!358286 (t!358286 (toList!4723 lm!1477))))))))

(declare-fun b!4606237 () Bool)

(assert (=> b!4606237 (= e!2873205 (ListMap!3986 Nil!51167))))

(assert (= (and d!1451001 c!789075) b!4606236))

(assert (= (and d!1451001 (not c!789075)) b!4606237))

(declare-fun m!5435633 () Bool)

(assert (=> d!1451001 m!5435633))

(declare-fun m!5435635 () Bool)

(assert (=> d!1451001 m!5435635))

(declare-fun m!5435637 () Bool)

(assert (=> b!4606236 m!5435637))

(assert (=> b!4606236 m!5435637))

(declare-fun m!5435639 () Bool)

(assert (=> b!4606236 m!5435639))

(assert (=> b!4605970 d!1451001))

(declare-fun d!1451003 () Bool)

(declare-fun e!2873207 () Bool)

(assert (=> d!1451003 e!2873207))

(declare-fun res!1927648 () Bool)

(assert (=> d!1451003 (=> res!1927648 e!2873207)))

(declare-fun lt!1763631 () Bool)

(assert (=> d!1451003 (= res!1927648 (not lt!1763631))))

(declare-fun lt!1763630 () Bool)

(assert (=> d!1451003 (= lt!1763631 lt!1763630)))

(declare-fun lt!1763633 () Unit!108959)

(declare-fun e!2873206 () Unit!108959)

(assert (=> d!1451003 (= lt!1763633 e!2873206)))

(declare-fun c!789076 () Bool)

(assert (=> d!1451003 (= c!789076 lt!1763630)))

(assert (=> d!1451003 (= lt!1763630 (containsKey!2228 (toList!4723 lm!1477) (hash!3282 hashF!1107 key!3287)))))

(assert (=> d!1451003 (= (contains!14160 lm!1477 (hash!3282 hashF!1107 key!3287)) lt!1763631)))

(declare-fun b!4606238 () Bool)

(declare-fun lt!1763632 () Unit!108959)

(assert (=> b!4606238 (= e!2873206 lt!1763632)))

(assert (=> b!4606238 (= lt!1763632 (lemmaContainsKeyImpliesGetValueByKeyDefined!1249 (toList!4723 lm!1477) (hash!3282 hashF!1107 key!3287)))))

(assert (=> b!4606238 (isDefined!8695 (getValueByKey!1345 (toList!4723 lm!1477) (hash!3282 hashF!1107 key!3287)))))

(declare-fun b!4606239 () Bool)

(declare-fun Unit!108986 () Unit!108959)

(assert (=> b!4606239 (= e!2873206 Unit!108986)))

(declare-fun b!4606240 () Bool)

(assert (=> b!4606240 (= e!2873207 (isDefined!8695 (getValueByKey!1345 (toList!4723 lm!1477) (hash!3282 hashF!1107 key!3287))))))

(assert (= (and d!1451003 c!789076) b!4606238))

(assert (= (and d!1451003 (not c!789076)) b!4606239))

(assert (= (and d!1451003 (not res!1927648)) b!4606240))

(assert (=> d!1451003 m!5435125))

(declare-fun m!5435641 () Bool)

(assert (=> d!1451003 m!5435641))

(assert (=> b!4606238 m!5435125))

(declare-fun m!5435643 () Bool)

(assert (=> b!4606238 m!5435643))

(assert (=> b!4606238 m!5435125))

(declare-fun m!5435645 () Bool)

(assert (=> b!4606238 m!5435645))

(assert (=> b!4606238 m!5435645))

(declare-fun m!5435647 () Bool)

(assert (=> b!4606238 m!5435647))

(assert (=> b!4606240 m!5435125))

(assert (=> b!4606240 m!5435645))

(assert (=> b!4606240 m!5435645))

(assert (=> b!4606240 m!5435647))

(assert (=> d!1450885 d!1451003))

(assert (=> d!1450885 d!1450797))

(declare-fun d!1451005 () Bool)

(assert (=> d!1451005 (contains!14160 lm!1477 (hash!3282 hashF!1107 key!3287))))

(assert (=> d!1451005 true))

(declare-fun _$27!1465 () Unit!108959)

(assert (=> d!1451005 (= (choose!30955 lm!1477 key!3287 hashF!1107) _$27!1465)))

(declare-fun bs!1014440 () Bool)

(assert (= bs!1014440 d!1451005))

(assert (=> bs!1014440 m!5435125))

(assert (=> bs!1014440 m!5435125))

(assert (=> bs!1014440 m!5435371))

(assert (=> d!1450885 d!1451005))

(declare-fun d!1451007 () Bool)

(declare-fun res!1927649 () Bool)

(declare-fun e!2873208 () Bool)

(assert (=> d!1451007 (=> res!1927649 e!2873208)))

(assert (=> d!1451007 (= res!1927649 ((_ is Nil!51168) (toList!4723 lm!1477)))))

(assert (=> d!1451007 (= (forall!10661 (toList!4723 lm!1477) lambda!187500) e!2873208)))

(declare-fun b!4606241 () Bool)

(declare-fun e!2873209 () Bool)

(assert (=> b!4606241 (= e!2873208 e!2873209)))

(declare-fun res!1927650 () Bool)

(assert (=> b!4606241 (=> (not res!1927650) (not e!2873209))))

(assert (=> b!4606241 (= res!1927650 (dynLambda!21424 lambda!187500 (h!57150 (toList!4723 lm!1477))))))

(declare-fun b!4606242 () Bool)

(assert (=> b!4606242 (= e!2873209 (forall!10661 (t!358286 (toList!4723 lm!1477)) lambda!187500))))

(assert (= (and d!1451007 (not res!1927649)) b!4606241))

(assert (= (and b!4606241 res!1927650) b!4606242))

(declare-fun b_lambda!170013 () Bool)

(assert (=> (not b_lambda!170013) (not b!4606241)))

(declare-fun m!5435649 () Bool)

(assert (=> b!4606241 m!5435649))

(declare-fun m!5435651 () Bool)

(assert (=> b!4606242 m!5435651))

(assert (=> d!1450885 d!1451007))

(declare-fun d!1451009 () Bool)

(assert (=> d!1451009 (isDefined!8695 (getValueByKey!1345 (toList!4723 lt!1763367) hash!344))))

(declare-fun lt!1763658 () Unit!108959)

(declare-fun choose!30961 (List!51292 (_ BitVec 64)) Unit!108959)

(assert (=> d!1451009 (= lt!1763658 (choose!30961 (toList!4723 lt!1763367) hash!344))))

(declare-fun e!2873212 () Bool)

(assert (=> d!1451009 e!2873212))

(declare-fun res!1927653 () Bool)

(assert (=> d!1451009 (=> (not res!1927653) (not e!2873212))))

(assert (=> d!1451009 (= res!1927653 (isStrictlySorted!557 (toList!4723 lt!1763367)))))

(assert (=> d!1451009 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1249 (toList!4723 lt!1763367) hash!344) lt!1763658)))

(declare-fun b!4606245 () Bool)

(assert (=> b!4606245 (= e!2873212 (containsKey!2228 (toList!4723 lt!1763367) hash!344))))

(assert (= (and d!1451009 res!1927653) b!4606245))

(assert (=> d!1451009 m!5435173))

(assert (=> d!1451009 m!5435173))

(assert (=> d!1451009 m!5435195))

(declare-fun m!5435653 () Bool)

(assert (=> d!1451009 m!5435653))

(declare-fun m!5435655 () Bool)

(assert (=> d!1451009 m!5435655))

(assert (=> b!4606245 m!5435191))

(assert (=> b!4605821 d!1451009))

(declare-fun d!1451011 () Bool)

(declare-fun isEmpty!28887 (Option!11427) Bool)

(assert (=> d!1451011 (= (isDefined!8695 (getValueByKey!1345 (toList!4723 lt!1763367) hash!344)) (not (isEmpty!28887 (getValueByKey!1345 (toList!4723 lt!1763367) hash!344))))))

(declare-fun bs!1014441 () Bool)

(assert (= bs!1014441 d!1451011))

(assert (=> bs!1014441 m!5435173))

(declare-fun m!5435657 () Bool)

(assert (=> bs!1014441 m!5435657))

(assert (=> b!4605821 d!1451011))

(declare-fun d!1451013 () Bool)

(declare-fun c!789077 () Bool)

(assert (=> d!1451013 (= c!789077 (and ((_ is Cons!51168) (toList!4723 lt!1763367)) (= (_1!29228 (h!57150 (toList!4723 lt!1763367))) hash!344)))))

(declare-fun e!2873215 () Option!11427)

(assert (=> d!1451013 (= (getValueByKey!1345 (toList!4723 lt!1763367) hash!344) e!2873215)))

(declare-fun b!4606246 () Bool)

(assert (=> b!4606246 (= e!2873215 (Some!11426 (_2!29228 (h!57150 (toList!4723 lt!1763367)))))))

(declare-fun b!4606247 () Bool)

(declare-fun e!2873216 () Option!11427)

(assert (=> b!4606247 (= e!2873215 e!2873216)))

(declare-fun c!789078 () Bool)

(assert (=> b!4606247 (= c!789078 (and ((_ is Cons!51168) (toList!4723 lt!1763367)) (not (= (_1!29228 (h!57150 (toList!4723 lt!1763367))) hash!344))))))

(declare-fun b!4606248 () Bool)

(assert (=> b!4606248 (= e!2873216 (getValueByKey!1345 (t!358286 (toList!4723 lt!1763367)) hash!344))))

(declare-fun b!4606249 () Bool)

(assert (=> b!4606249 (= e!2873216 None!11426)))

(assert (= (and d!1451013 c!789077) b!4606246))

(assert (= (and d!1451013 (not c!789077)) b!4606247))

(assert (= (and b!4606247 c!789078) b!4606248))

(assert (= (and b!4606247 (not c!789078)) b!4606249))

(declare-fun m!5435659 () Bool)

(assert (=> b!4606248 m!5435659))

(assert (=> b!4605821 d!1451013))

(declare-fun d!1451015 () Bool)

(declare-fun res!1927656 () Bool)

(declare-fun e!2873217 () Bool)

(assert (=> d!1451015 (=> res!1927656 e!2873217)))

(assert (=> d!1451015 (= res!1927656 (and ((_ is Cons!51167) lt!1763499) (= (_1!29227 (h!57149 lt!1763499)) key!3287)))))

(assert (=> d!1451015 (= (containsKey!2225 lt!1763499 key!3287) e!2873217)))

(declare-fun b!4606252 () Bool)

(declare-fun e!2873218 () Bool)

(assert (=> b!4606252 (= e!2873217 e!2873218)))

(declare-fun res!1927657 () Bool)

(assert (=> b!4606252 (=> (not res!1927657) (not e!2873218))))

(assert (=> b!4606252 (= res!1927657 ((_ is Cons!51167) lt!1763499))))

(declare-fun b!4606253 () Bool)

(assert (=> b!4606253 (= e!2873218 (containsKey!2225 (t!358285 lt!1763499) key!3287))))

(assert (= (and d!1451015 (not res!1927656)) b!4606252))

(assert (= (and b!4606252 res!1927657) b!4606253))

(declare-fun m!5435661 () Bool)

(assert (=> b!4606253 m!5435661))

(assert (=> d!1450893 d!1451015))

(declare-fun d!1451017 () Bool)

(declare-fun res!1927658 () Bool)

(declare-fun e!2873219 () Bool)

(assert (=> d!1451017 (=> res!1927658 e!2873219)))

(assert (=> d!1451017 (= res!1927658 (not ((_ is Cons!51167) lt!1763372)))))

(assert (=> d!1451017 (= (noDuplicateKeys!1354 lt!1763372) e!2873219)))

(declare-fun b!4606254 () Bool)

(declare-fun e!2873220 () Bool)

(assert (=> b!4606254 (= e!2873219 e!2873220)))

(declare-fun res!1927659 () Bool)

(assert (=> b!4606254 (=> (not res!1927659) (not e!2873220))))

(assert (=> b!4606254 (= res!1927659 (not (containsKey!2225 (t!358285 lt!1763372) (_1!29227 (h!57149 lt!1763372)))))))

(declare-fun b!4606255 () Bool)

(assert (=> b!4606255 (= e!2873220 (noDuplicateKeys!1354 (t!358285 lt!1763372)))))

(assert (= (and d!1451017 (not res!1927658)) b!4606254))

(assert (= (and b!4606254 res!1927659) b!4606255))

(declare-fun m!5435663 () Bool)

(assert (=> b!4606254 m!5435663))

(assert (=> b!4606255 m!5435539))

(assert (=> d!1450893 d!1451017))

(assert (=> d!1450881 d!1450879))

(declare-fun d!1451019 () Bool)

(assert (=> d!1451019 (containsKeyBiggerList!294 (toList!4723 lt!1763367) key!3287)))

(assert (=> d!1451019 true))

(declare-fun _$33!769 () Unit!108959)

(assert (=> d!1451019 (= (choose!30954 lt!1763367 key!3287 hashF!1107) _$33!769)))

(declare-fun bs!1014442 () Bool)

(assert (= bs!1014442 d!1451019))

(assert (=> bs!1014442 m!5435145))

(assert (=> d!1450881 d!1451019))

(declare-fun d!1451021 () Bool)

(declare-fun res!1927660 () Bool)

(declare-fun e!2873221 () Bool)

(assert (=> d!1451021 (=> res!1927660 e!2873221)))

(assert (=> d!1451021 (= res!1927660 ((_ is Nil!51168) (toList!4723 lt!1763367)))))

(assert (=> d!1451021 (= (forall!10661 (toList!4723 lt!1763367) lambda!187497) e!2873221)))

(declare-fun b!4606256 () Bool)

(declare-fun e!2873222 () Bool)

(assert (=> b!4606256 (= e!2873221 e!2873222)))

(declare-fun res!1927661 () Bool)

(assert (=> b!4606256 (=> (not res!1927661) (not e!2873222))))

(assert (=> b!4606256 (= res!1927661 (dynLambda!21424 lambda!187497 (h!57150 (toList!4723 lt!1763367))))))

(declare-fun b!4606257 () Bool)

(assert (=> b!4606257 (= e!2873222 (forall!10661 (t!358286 (toList!4723 lt!1763367)) lambda!187497))))

(assert (= (and d!1451021 (not res!1927660)) b!4606256))

(assert (= (and b!4606256 res!1927661) b!4606257))

(declare-fun b_lambda!170015 () Bool)

(assert (=> (not b_lambda!170015) (not b!4606256)))

(declare-fun m!5435665 () Bool)

(assert (=> b!4606256 m!5435665))

(declare-fun m!5435667 () Bool)

(assert (=> b!4606257 m!5435667))

(assert (=> d!1450881 d!1451021))

(declare-fun d!1451023 () Bool)

(declare-fun res!1927662 () Bool)

(declare-fun e!2873223 () Bool)

(assert (=> d!1451023 (=> res!1927662 e!2873223)))

(assert (=> d!1451023 (= res!1927662 ((_ is Nil!51168) (toList!4723 lm!1477)))))

(assert (=> d!1451023 (= (forall!10661 (toList!4723 lm!1477) lambda!187466) e!2873223)))

(declare-fun b!4606258 () Bool)

(declare-fun e!2873224 () Bool)

(assert (=> b!4606258 (= e!2873223 e!2873224)))

(declare-fun res!1927663 () Bool)

(assert (=> b!4606258 (=> (not res!1927663) (not e!2873224))))

(assert (=> b!4606258 (= res!1927663 (dynLambda!21424 lambda!187466 (h!57150 (toList!4723 lm!1477))))))

(declare-fun b!4606259 () Bool)

(assert (=> b!4606259 (= e!2873224 (forall!10661 (t!358286 (toList!4723 lm!1477)) lambda!187466))))

(assert (= (and d!1451023 (not res!1927662)) b!4606258))

(assert (= (and b!4606258 res!1927663) b!4606259))

(declare-fun b_lambda!170017 () Bool)

(assert (=> (not b_lambda!170017) (not b!4606258)))

(declare-fun m!5435669 () Bool)

(assert (=> b!4606258 m!5435669))

(declare-fun m!5435671 () Bool)

(assert (=> b!4606259 m!5435671))

(assert (=> d!1450799 d!1451023))

(declare-fun d!1451025 () Bool)

(declare-fun res!1927664 () Bool)

(declare-fun e!2873225 () Bool)

(assert (=> d!1451025 (=> res!1927664 e!2873225)))

(assert (=> d!1451025 (= res!1927664 (not ((_ is Cons!51167) (_2!29228 (h!57150 (toList!4723 lm!1477))))))))

(assert (=> d!1451025 (= (noDuplicateKeys!1354 (_2!29228 (h!57150 (toList!4723 lm!1477)))) e!2873225)))

(declare-fun b!4606260 () Bool)

(declare-fun e!2873226 () Bool)

(assert (=> b!4606260 (= e!2873225 e!2873226)))

(declare-fun res!1927665 () Bool)

(assert (=> b!4606260 (=> (not res!1927665) (not e!2873226))))

(assert (=> b!4606260 (= res!1927665 (not (containsKey!2225 (t!358285 (_2!29228 (h!57150 (toList!4723 lm!1477)))) (_1!29227 (h!57149 (_2!29228 (h!57150 (toList!4723 lm!1477))))))))))

(declare-fun b!4606261 () Bool)

(assert (=> b!4606261 (= e!2873226 (noDuplicateKeys!1354 (t!358285 (_2!29228 (h!57150 (toList!4723 lm!1477))))))))

(assert (= (and d!1451025 (not res!1927664)) b!4606260))

(assert (= (and b!4606260 res!1927665) b!4606261))

(declare-fun m!5435673 () Bool)

(assert (=> b!4606260 m!5435673))

(declare-fun m!5435675 () Bool)

(assert (=> b!4606261 m!5435675))

(assert (=> bs!1014410 d!1451025))

(declare-fun d!1451027 () Bool)

(declare-fun res!1927669 () Bool)

(declare-fun e!2873229 () Bool)

(assert (=> d!1451027 (=> res!1927669 e!2873229)))

(declare-fun e!2873230 () Bool)

(assert (=> d!1451027 (= res!1927669 e!2873230)))

(declare-fun res!1927668 () Bool)

(assert (=> d!1451027 (=> (not res!1927668) (not e!2873230))))

(assert (=> d!1451027 (= res!1927668 ((_ is Cons!51168) (t!358286 (t!358286 (toList!4723 lm!1477)))))))

(assert (=> d!1451027 (= (containsKeyBiggerList!294 (t!358286 (t!358286 (toList!4723 lm!1477))) key!3287) e!2873229)))

(declare-fun b!4606262 () Bool)

(assert (=> b!4606262 (= e!2873230 (containsKey!2225 (_2!29228 (h!57150 (t!358286 (t!358286 (toList!4723 lm!1477))))) key!3287))))

(declare-fun b!4606263 () Bool)

(declare-fun e!2873231 () Bool)

(assert (=> b!4606263 (= e!2873229 e!2873231)))

(declare-fun res!1927670 () Bool)

(assert (=> b!4606263 (=> (not res!1927670) (not e!2873231))))

(assert (=> b!4606263 (= res!1927670 ((_ is Cons!51168) (t!358286 (t!358286 (toList!4723 lm!1477)))))))

(declare-fun b!4606264 () Bool)

(assert (=> b!4606264 (= e!2873231 (containsKeyBiggerList!294 (t!358286 (t!358286 (t!358286 (toList!4723 lm!1477)))) key!3287))))

(assert (= (and d!1451027 res!1927668) b!4606262))

(assert (= (and d!1451027 (not res!1927669)) b!4606263))

(assert (= (and b!4606263 res!1927670) b!4606264))

(declare-fun m!5435677 () Bool)

(assert (=> b!4606262 m!5435677))

(declare-fun m!5435679 () Bool)

(assert (=> b!4606264 m!5435679))

(assert (=> b!4605986 d!1451027))

(declare-fun bs!1014456 () Bool)

(declare-fun b!4606296 () Bool)

(assert (= bs!1014456 (and b!4606296 b!4606128)))

(declare-fun lambda!187599 () Int)

(assert (=> bs!1014456 (= (= (t!358285 (toList!4724 (extractMap!1414 (toList!4723 lm!1477)))) (toList!4724 (extractMap!1414 (toList!4723 lm!1477)))) (= lambda!187599 lambda!187511))))

(assert (=> b!4606296 true))

(declare-fun bs!1014457 () Bool)

(declare-fun b!4606303 () Bool)

(assert (= bs!1014457 (and b!4606303 b!4606128)))

(declare-fun lambda!187600 () Int)

(assert (=> bs!1014457 (= (= (Cons!51167 (h!57149 (toList!4724 (extractMap!1414 (toList!4723 lm!1477)))) (t!358285 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))))) (toList!4724 (extractMap!1414 (toList!4723 lm!1477)))) (= lambda!187600 lambda!187511))))

(declare-fun bs!1014458 () Bool)

(assert (= bs!1014458 (and b!4606303 b!4606296)))

(assert (=> bs!1014458 (= (= (Cons!51167 (h!57149 (toList!4724 (extractMap!1414 (toList!4723 lm!1477)))) (t!358285 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))))) (t!358285 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))))) (= lambda!187600 lambda!187599))))

(assert (=> b!4606303 true))

(declare-fun bs!1014459 () Bool)

(declare-fun b!4606299 () Bool)

(assert (= bs!1014459 (and b!4606299 b!4606128)))

(declare-fun lambda!187601 () Int)

(assert (=> bs!1014459 (= lambda!187601 lambda!187511)))

(declare-fun bs!1014460 () Bool)

(assert (= bs!1014460 (and b!4606299 b!4606296)))

(assert (=> bs!1014460 (= (= (toList!4724 (extractMap!1414 (toList!4723 lm!1477))) (t!358285 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))))) (= lambda!187601 lambda!187599))))

(declare-fun bs!1014461 () Bool)

(assert (= bs!1014461 (and b!4606299 b!4606303)))

(assert (=> bs!1014461 (= (= (toList!4724 (extractMap!1414 (toList!4723 lm!1477))) (Cons!51167 (h!57149 (toList!4724 (extractMap!1414 (toList!4723 lm!1477)))) (t!358285 (toList!4724 (extractMap!1414 (toList!4723 lm!1477)))))) (= lambda!187601 lambda!187600))))

(assert (=> b!4606299 true))

(declare-fun bs!1014462 () Bool)

(declare-fun b!4606300 () Bool)

(assert (= bs!1014462 (and b!4606300 b!4606129)))

(declare-fun lambda!187602 () Int)

(assert (=> bs!1014462 (= lambda!187602 lambda!187512)))

(assert (=> b!4606296 false))

(declare-fun lt!1763703 () Unit!108959)

(declare-fun forallContained!2911 (List!51294 Int K!12535) Unit!108959)

(assert (=> b!4606296 (= lt!1763703 (forallContained!2911 (getKeysList!590 (t!358285 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))))) lambda!187599 (_1!29227 (h!57149 (toList!4724 (extractMap!1414 (toList!4723 lm!1477)))))))))

(declare-fun e!2873245 () Unit!108959)

(declare-fun Unit!108998 () Unit!108959)

(assert (=> b!4606296 (= e!2873245 Unit!108998)))

(declare-fun b!4606297 () Bool)

(declare-fun res!1927684 () Bool)

(declare-fun e!2873247 () Bool)

(assert (=> b!4606297 (=> (not res!1927684) (not e!2873247))))

(declare-fun lt!1763702 () List!51294)

(assert (=> b!4606297 (= res!1927684 (= (length!500 lt!1763702) (length!501 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))))))))

(declare-fun b!4606298 () Bool)

(declare-fun Unit!108999 () Unit!108959)

(assert (=> b!4606298 (= e!2873245 Unit!108999)))

(declare-fun res!1927683 () Bool)

(assert (=> b!4606299 (=> (not res!1927683) (not e!2873247))))

(assert (=> b!4606299 (= res!1927683 (forall!10665 lt!1763702 lambda!187601))))

(declare-fun b!4606301 () Bool)

(declare-fun e!2873244 () List!51294)

(assert (=> b!4606301 (= e!2873244 Nil!51170)))

(declare-fun b!4606302 () Bool)

(declare-fun e!2873246 () Unit!108959)

(declare-fun Unit!109000 () Unit!108959)

(assert (=> b!4606302 (= e!2873246 Unit!109000)))

(assert (=> b!4606303 (= e!2873244 (Cons!51170 (_1!29227 (h!57149 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))))) (getKeysList!590 (t!358285 (toList!4724 (extractMap!1414 (toList!4723 lm!1477)))))))))

(declare-fun c!789087 () Bool)

(assert (=> b!4606303 (= c!789087 (containsKey!2229 (t!358285 (toList!4724 (extractMap!1414 (toList!4723 lm!1477)))) (_1!29227 (h!57149 (toList!4724 (extractMap!1414 (toList!4723 lm!1477)))))))))

(declare-fun lt!1763698 () Unit!108959)

(assert (=> b!4606303 (= lt!1763698 e!2873246)))

(declare-fun c!789088 () Bool)

(assert (=> b!4606303 (= c!789088 (contains!14162 (getKeysList!590 (t!358285 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))))) (_1!29227 (h!57149 (toList!4724 (extractMap!1414 (toList!4723 lm!1477)))))))))

(declare-fun lt!1763697 () Unit!108959)

(assert (=> b!4606303 (= lt!1763697 e!2873245)))

(declare-fun lt!1763699 () List!51294)

(assert (=> b!4606303 (= lt!1763699 (getKeysList!590 (t!358285 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))))))))

(declare-fun lt!1763701 () Unit!108959)

(declare-fun lemmaForallContainsAddHeadPreserves!242 (List!51291 List!51294 tuple2!51866) Unit!108959)

(assert (=> b!4606303 (= lt!1763701 (lemmaForallContainsAddHeadPreserves!242 (t!358285 (toList!4724 (extractMap!1414 (toList!4723 lm!1477)))) lt!1763699 (h!57149 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))))))))

(assert (=> b!4606303 (forall!10665 lt!1763699 lambda!187600)))

(declare-fun lt!1763700 () Unit!108959)

(assert (=> b!4606303 (= lt!1763700 lt!1763701)))

(declare-fun b!4606304 () Bool)

(assert (=> b!4606304 false))

(declare-fun Unit!109001 () Unit!108959)

(assert (=> b!4606304 (= e!2873246 Unit!109001)))

(assert (=> b!4606300 (= e!2873247 (= (content!8686 lt!1763702) (content!8686 (map!11312 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))) lambda!187602))))))

(declare-fun d!1451029 () Bool)

(assert (=> d!1451029 e!2873247))

(declare-fun res!1927682 () Bool)

(assert (=> d!1451029 (=> (not res!1927682) (not e!2873247))))

(assert (=> d!1451029 (= res!1927682 (noDuplicate!822 lt!1763702))))

(assert (=> d!1451029 (= lt!1763702 e!2873244)))

(declare-fun c!789089 () Bool)

(assert (=> d!1451029 (= c!789089 ((_ is Cons!51167) (toList!4724 (extractMap!1414 (toList!4723 lm!1477)))))))

(assert (=> d!1451029 (invariantList!1141 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))))))

(assert (=> d!1451029 (= (getKeysList!590 (toList!4724 (extractMap!1414 (toList!4723 lm!1477)))) lt!1763702)))

(assert (= (and d!1451029 c!789089) b!4606303))

(assert (= (and d!1451029 (not c!789089)) b!4606301))

(assert (= (and b!4606303 c!789087) b!4606304))

(assert (= (and b!4606303 (not c!789087)) b!4606302))

(assert (= (and b!4606303 c!789088) b!4606296))

(assert (= (and b!4606303 (not c!789088)) b!4606298))

(assert (= (and d!1451029 res!1927682) b!4606297))

(assert (= (and b!4606297 res!1927684) b!4606299))

(assert (= (and b!4606299 res!1927683) b!4606300))

(declare-fun m!5435725 () Bool)

(assert (=> d!1451029 m!5435725))

(assert (=> d!1451029 m!5435465))

(declare-fun m!5435727 () Bool)

(assert (=> b!4606297 m!5435727))

(assert (=> b!4606297 m!5435505))

(declare-fun m!5435729 () Bool)

(assert (=> b!4606299 m!5435729))

(declare-fun m!5435731 () Bool)

(assert (=> b!4606296 m!5435731))

(assert (=> b!4606296 m!5435731))

(declare-fun m!5435733 () Bool)

(assert (=> b!4606296 m!5435733))

(declare-fun m!5435735 () Bool)

(assert (=> b!4606303 m!5435735))

(assert (=> b!4606303 m!5435731))

(declare-fun m!5435737 () Bool)

(assert (=> b!4606303 m!5435737))

(declare-fun m!5435739 () Bool)

(assert (=> b!4606303 m!5435739))

(assert (=> b!4606303 m!5435731))

(declare-fun m!5435741 () Bool)

(assert (=> b!4606303 m!5435741))

(declare-fun m!5435743 () Bool)

(assert (=> b!4606300 m!5435743))

(declare-fun m!5435745 () Bool)

(assert (=> b!4606300 m!5435745))

(assert (=> b!4606300 m!5435745))

(declare-fun m!5435747 () Bool)

(assert (=> b!4606300 m!5435747))

(assert (=> b!4605945 d!1451029))

(declare-fun d!1451041 () Bool)

(declare-fun res!1927687 () Bool)

(declare-fun e!2873250 () Bool)

(assert (=> d!1451041 (=> res!1927687 e!2873250)))

(assert (=> d!1451041 (= res!1927687 (and ((_ is Cons!51167) (_2!29228 (h!57150 (t!358286 (toList!4723 lm!1477))))) (= (_1!29227 (h!57149 (_2!29228 (h!57150 (t!358286 (toList!4723 lm!1477)))))) key!3287)))))

(assert (=> d!1451041 (= (containsKey!2225 (_2!29228 (h!57150 (t!358286 (toList!4723 lm!1477)))) key!3287) e!2873250)))

(declare-fun b!4606309 () Bool)

(declare-fun e!2873251 () Bool)

(assert (=> b!4606309 (= e!2873250 e!2873251)))

(declare-fun res!1927688 () Bool)

(assert (=> b!4606309 (=> (not res!1927688) (not e!2873251))))

(assert (=> b!4606309 (= res!1927688 ((_ is Cons!51167) (_2!29228 (h!57150 (t!358286 (toList!4723 lm!1477))))))))

(declare-fun b!4606310 () Bool)

(assert (=> b!4606310 (= e!2873251 (containsKey!2225 (t!358285 (_2!29228 (h!57150 (t!358286 (toList!4723 lm!1477))))) key!3287))))

(assert (= (and d!1451041 (not res!1927687)) b!4606309))

(assert (= (and b!4606309 res!1927688) b!4606310))

(declare-fun m!5435749 () Bool)

(assert (=> b!4606310 m!5435749))

(assert (=> b!4605984 d!1451041))

(declare-fun d!1451043 () Bool)

(declare-fun lt!1763704 () Bool)

(assert (=> d!1451043 (= lt!1763704 (select (content!8686 e!2873005) key!3287))))

(declare-fun e!2873256 () Bool)

(assert (=> d!1451043 (= lt!1763704 e!2873256)))

(declare-fun res!1927693 () Bool)

(assert (=> d!1451043 (=> (not res!1927693) (not e!2873256))))

(assert (=> d!1451043 (= res!1927693 ((_ is Cons!51170) e!2873005))))

(assert (=> d!1451043 (= (contains!14162 e!2873005 key!3287) lt!1763704)))

(declare-fun b!4606315 () Bool)

(declare-fun e!2873257 () Bool)

(assert (=> b!4606315 (= e!2873256 e!2873257)))

(declare-fun res!1927694 () Bool)

(assert (=> b!4606315 (=> res!1927694 e!2873257)))

(assert (=> b!4606315 (= res!1927694 (= (h!57154 e!2873005) key!3287))))

(declare-fun b!4606316 () Bool)

(assert (=> b!4606316 (= e!2873257 (contains!14162 (t!358288 e!2873005) key!3287))))

(assert (= (and d!1451043 res!1927693) b!4606315))

(assert (= (and b!4606315 (not res!1927694)) b!4606316))

(declare-fun m!5435751 () Bool)

(assert (=> d!1451043 m!5435751))

(declare-fun m!5435753 () Bool)

(assert (=> d!1451043 m!5435753))

(declare-fun m!5435755 () Bool)

(assert (=> b!4606316 m!5435755))

(assert (=> bm!321298 d!1451043))

(declare-fun d!1451045 () Bool)

(assert (=> d!1451045 (dynLambda!21424 lambda!187462 lt!1763368)))

(assert (=> d!1451045 true))

(declare-fun _$7!2162 () Unit!108959)

(assert (=> d!1451045 (= (choose!30957 (toList!4723 lm!1477) lambda!187462 lt!1763368) _$7!2162)))

(declare-fun b_lambda!170021 () Bool)

(assert (=> (not b_lambda!170021) (not d!1451045)))

(declare-fun bs!1014465 () Bool)

(assert (= bs!1014465 d!1451045))

(assert (=> bs!1014465 m!5435385))

(assert (=> d!1450891 d!1451045))

(assert (=> d!1450891 d!1450793))

(assert (=> b!4605991 d!1450807))

(declare-fun d!1451051 () Bool)

(declare-fun res!1927697 () Bool)

(declare-fun e!2873262 () Bool)

(assert (=> d!1451051 (=> res!1927697 e!2873262)))

(assert (=> d!1451051 (= res!1927697 ((_ is Nil!51168) (t!358286 (toList!4723 lt!1763367))))))

(assert (=> d!1451051 (= (forall!10661 (t!358286 (toList!4723 lt!1763367)) lambda!187462) e!2873262)))

(declare-fun b!4606323 () Bool)

(declare-fun e!2873263 () Bool)

(assert (=> b!4606323 (= e!2873262 e!2873263)))

(declare-fun res!1927698 () Bool)

(assert (=> b!4606323 (=> (not res!1927698) (not e!2873263))))

(assert (=> b!4606323 (= res!1927698 (dynLambda!21424 lambda!187462 (h!57150 (t!358286 (toList!4723 lt!1763367)))))))

(declare-fun b!4606324 () Bool)

(assert (=> b!4606324 (= e!2873263 (forall!10661 (t!358286 (t!358286 (toList!4723 lt!1763367))) lambda!187462))))

(assert (= (and d!1451051 (not res!1927697)) b!4606323))

(assert (= (and b!4606323 res!1927698) b!4606324))

(declare-fun b_lambda!170023 () Bool)

(assert (=> (not b_lambda!170023) (not b!4606323)))

(declare-fun m!5435763 () Bool)

(assert (=> b!4606323 m!5435763))

(declare-fun m!5435765 () Bool)

(assert (=> b!4606324 m!5435765))

(assert (=> b!4605792 d!1451051))

(declare-fun d!1451055 () Bool)

(declare-fun lt!1763705 () Bool)

(assert (=> d!1451055 (= lt!1763705 (select (content!8684 (toList!4723 lm!1477)) (tuple2!51869 hash!344 lt!1763372)))))

(declare-fun e!2873267 () Bool)

(assert (=> d!1451055 (= lt!1763705 e!2873267)))

(declare-fun res!1927701 () Bool)

(assert (=> d!1451055 (=> (not res!1927701) (not e!2873267))))

(assert (=> d!1451055 (= res!1927701 ((_ is Cons!51168) (toList!4723 lm!1477)))))

(assert (=> d!1451055 (= (contains!14159 (toList!4723 lm!1477) (tuple2!51869 hash!344 lt!1763372)) lt!1763705)))

(declare-fun b!4606327 () Bool)

(declare-fun e!2873266 () Bool)

(assert (=> b!4606327 (= e!2873267 e!2873266)))

(declare-fun res!1927702 () Bool)

(assert (=> b!4606327 (=> res!1927702 e!2873266)))

(assert (=> b!4606327 (= res!1927702 (= (h!57150 (toList!4723 lm!1477)) (tuple2!51869 hash!344 lt!1763372)))))

(declare-fun b!4606328 () Bool)

(assert (=> b!4606328 (= e!2873266 (contains!14159 (t!358286 (toList!4723 lm!1477)) (tuple2!51869 hash!344 lt!1763372)))))

(assert (= (and d!1451055 res!1927701) b!4606327))

(assert (= (and b!4606327 (not res!1927702)) b!4606328))

(assert (=> d!1451055 m!5435367))

(declare-fun m!5435771 () Bool)

(assert (=> d!1451055 m!5435771))

(declare-fun m!5435773 () Bool)

(assert (=> b!4606328 m!5435773))

(assert (=> d!1450889 d!1451055))

(declare-fun d!1451059 () Bool)

(assert (=> d!1451059 (contains!14159 (toList!4723 lm!1477) (tuple2!51869 hash!344 lt!1763372))))

(assert (=> d!1451059 true))

(declare-fun _$14!1506 () Unit!108959)

(assert (=> d!1451059 (= (choose!30956 (toList!4723 lm!1477) hash!344 lt!1763372) _$14!1506)))

(declare-fun bs!1014466 () Bool)

(assert (= bs!1014466 d!1451059))

(assert (=> bs!1014466 m!5435381))

(assert (=> d!1450889 d!1451059))

(declare-fun d!1451069 () Bool)

(declare-fun res!1927719 () Bool)

(declare-fun e!2873285 () Bool)

(assert (=> d!1451069 (=> res!1927719 e!2873285)))

(assert (=> d!1451069 (= res!1927719 (or ((_ is Nil!51168) (toList!4723 lm!1477)) ((_ is Nil!51168) (t!358286 (toList!4723 lm!1477)))))))

(assert (=> d!1451069 (= (isStrictlySorted!557 (toList!4723 lm!1477)) e!2873285)))

(declare-fun b!4606347 () Bool)

(declare-fun e!2873286 () Bool)

(assert (=> b!4606347 (= e!2873285 e!2873286)))

(declare-fun res!1927720 () Bool)

(assert (=> b!4606347 (=> (not res!1927720) (not e!2873286))))

(assert (=> b!4606347 (= res!1927720 (bvslt (_1!29228 (h!57150 (toList!4723 lm!1477))) (_1!29228 (h!57150 (t!358286 (toList!4723 lm!1477))))))))

(declare-fun b!4606348 () Bool)

(assert (=> b!4606348 (= e!2873286 (isStrictlySorted!557 (t!358286 (toList!4723 lm!1477))))))

(assert (= (and d!1451069 (not res!1927719)) b!4606347))

(assert (= (and b!4606347 res!1927720) b!4606348))

(declare-fun m!5435793 () Bool)

(assert (=> b!4606348 m!5435793))

(assert (=> d!1450889 d!1451069))

(declare-fun d!1451079 () Bool)

(declare-fun res!1927721 () Bool)

(declare-fun e!2873287 () Bool)

(assert (=> d!1451079 (=> res!1927721 e!2873287)))

(assert (=> d!1451079 (= res!1927721 (and ((_ is Cons!51168) (toList!4723 lt!1763367)) (= (_1!29228 (h!57150 (toList!4723 lt!1763367))) hash!344)))))

(assert (=> d!1451079 (= (containsKey!2228 (toList!4723 lt!1763367) hash!344) e!2873287)))

(declare-fun b!4606349 () Bool)

(declare-fun e!2873288 () Bool)

(assert (=> b!4606349 (= e!2873287 e!2873288)))

(declare-fun res!1927722 () Bool)

(assert (=> b!4606349 (=> (not res!1927722) (not e!2873288))))

(assert (=> b!4606349 (= res!1927722 (and (or (not ((_ is Cons!51168) (toList!4723 lt!1763367))) (bvsle (_1!29228 (h!57150 (toList!4723 lt!1763367))) hash!344)) ((_ is Cons!51168) (toList!4723 lt!1763367)) (bvslt (_1!29228 (h!57150 (toList!4723 lt!1763367))) hash!344)))))

(declare-fun b!4606350 () Bool)

(assert (=> b!4606350 (= e!2873288 (containsKey!2228 (t!358286 (toList!4723 lt!1763367)) hash!344))))

(assert (= (and d!1451079 (not res!1927721)) b!4606349))

(assert (= (and b!4606349 res!1927722) b!4606350))

(declare-fun m!5435795 () Bool)

(assert (=> b!4606350 m!5435795))

(assert (=> d!1450809 d!1451079))

(assert (=> b!4605942 d!1450939))

(assert (=> b!4605942 d!1450943))

(declare-fun d!1451081 () Bool)

(declare-fun res!1927724 () Bool)

(declare-fun e!2873289 () Bool)

(assert (=> d!1451081 (=> res!1927724 e!2873289)))

(declare-fun e!2873290 () Bool)

(assert (=> d!1451081 (= res!1927724 e!2873290)))

(declare-fun res!1927723 () Bool)

(assert (=> d!1451081 (=> (not res!1927723) (not e!2873290))))

(assert (=> d!1451081 (= res!1927723 ((_ is Cons!51168) (t!358286 (toList!4723 lt!1763367))))))

(assert (=> d!1451081 (= (containsKeyBiggerList!294 (t!358286 (toList!4723 lt!1763367)) key!3287) e!2873289)))

(declare-fun b!4606351 () Bool)

(assert (=> b!4606351 (= e!2873290 (containsKey!2225 (_2!29228 (h!57150 (t!358286 (toList!4723 lt!1763367)))) key!3287))))

(declare-fun b!4606352 () Bool)

(declare-fun e!2873291 () Bool)

(assert (=> b!4606352 (= e!2873289 e!2873291)))

(declare-fun res!1927725 () Bool)

(assert (=> b!4606352 (=> (not res!1927725) (not e!2873291))))

(assert (=> b!4606352 (= res!1927725 ((_ is Cons!51168) (t!358286 (toList!4723 lt!1763367))))))

(declare-fun b!4606353 () Bool)

(assert (=> b!4606353 (= e!2873291 (containsKeyBiggerList!294 (t!358286 (t!358286 (toList!4723 lt!1763367))) key!3287))))

(assert (= (and d!1451081 res!1927723) b!4606351))

(assert (= (and d!1451081 (not res!1927724)) b!4606352))

(assert (= (and b!4606352 res!1927725) b!4606353))

(declare-fun m!5435797 () Bool)

(assert (=> b!4606351 m!5435797))

(declare-fun m!5435799 () Bool)

(assert (=> b!4606353 m!5435799))

(assert (=> b!4605989 d!1451081))

(declare-fun d!1451083 () Bool)

(declare-fun res!1927726 () Bool)

(declare-fun e!2873292 () Bool)

(assert (=> d!1451083 (=> res!1927726 e!2873292)))

(assert (=> d!1451083 (= res!1927726 ((_ is Nil!51168) (t!358286 (toList!4723 lm!1477))))))

(assert (=> d!1451083 (= (forall!10661 (t!358286 (toList!4723 lm!1477)) lambda!187462) e!2873292)))

(declare-fun b!4606354 () Bool)

(declare-fun e!2873293 () Bool)

(assert (=> b!4606354 (= e!2873292 e!2873293)))

(declare-fun res!1927727 () Bool)

(assert (=> b!4606354 (=> (not res!1927727) (not e!2873293))))

(assert (=> b!4606354 (= res!1927727 (dynLambda!21424 lambda!187462 (h!57150 (t!358286 (toList!4723 lm!1477)))))))

(declare-fun b!4606355 () Bool)

(assert (=> b!4606355 (= e!2873293 (forall!10661 (t!358286 (t!358286 (toList!4723 lm!1477))) lambda!187462))))

(assert (= (and d!1451083 (not res!1927726)) b!4606354))

(assert (= (and b!4606354 res!1927727) b!4606355))

(declare-fun b_lambda!170027 () Bool)

(assert (=> (not b_lambda!170027) (not b!4606354)))

(declare-fun m!5435801 () Bool)

(assert (=> b!4606354 m!5435801))

(declare-fun m!5435805 () Bool)

(assert (=> b!4606355 m!5435805))

(assert (=> b!4605800 d!1451083))

(assert (=> b!4605997 d!1450883))

(declare-fun d!1451087 () Bool)

(assert (=> d!1451087 (isDefined!8696 (getValueByKey!1346 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))) key!3287))))

(declare-fun lt!1763716 () Unit!108959)

(declare-fun choose!30962 (List!51291 K!12535) Unit!108959)

(assert (=> d!1451087 (= lt!1763716 (choose!30962 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))) key!3287))))

(assert (=> d!1451087 (invariantList!1141 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))))))

(assert (=> d!1451087 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1250 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))) key!3287) lt!1763716)))

(declare-fun bs!1014469 () Bool)

(assert (= bs!1014469 d!1451087))

(assert (=> bs!1014469 m!5435307))

(assert (=> bs!1014469 m!5435307))

(assert (=> bs!1014469 m!5435309))

(declare-fun m!5435821 () Bool)

(assert (=> bs!1014469 m!5435821))

(assert (=> bs!1014469 m!5435465))

(assert (=> b!4605940 d!1451087))

(assert (=> b!4605940 d!1450915))

(assert (=> b!4605940 d!1450917))

(declare-fun d!1451095 () Bool)

(assert (=> d!1451095 (contains!14162 (getKeysList!590 (toList!4724 (extractMap!1414 (toList!4723 lm!1477)))) key!3287)))

(declare-fun lt!1763719 () Unit!108959)

(declare-fun choose!30964 (List!51291 K!12535) Unit!108959)

(assert (=> d!1451095 (= lt!1763719 (choose!30964 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))) key!3287))))

(assert (=> d!1451095 (invariantList!1141 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))))))

(assert (=> d!1451095 (= (lemmaInListThenGetKeysListContains!586 (toList!4724 (extractMap!1414 (toList!4723 lm!1477))) key!3287) lt!1763719)))

(declare-fun bs!1014472 () Bool)

(assert (= bs!1014472 d!1451095))

(assert (=> bs!1014472 m!5435317))

(assert (=> bs!1014472 m!5435317))

(declare-fun m!5435829 () Bool)

(assert (=> bs!1014472 m!5435829))

(declare-fun m!5435831 () Bool)

(assert (=> bs!1014472 m!5435831))

(assert (=> bs!1014472 m!5435465))

(assert (=> b!4605940 d!1451095))

(declare-fun d!1451103 () Bool)

(declare-fun res!1927735 () Bool)

(declare-fun e!2873302 () Bool)

(assert (=> d!1451103 (=> res!1927735 e!2873302)))

(assert (=> d!1451103 (= res!1927735 (and ((_ is Cons!51167) (_2!29228 (h!57150 (toList!4723 lt!1763367)))) (= (_1!29227 (h!57149 (_2!29228 (h!57150 (toList!4723 lt!1763367))))) key!3287)))))

(assert (=> d!1451103 (= (containsKey!2225 (_2!29228 (h!57150 (toList!4723 lt!1763367))) key!3287) e!2873302)))

(declare-fun b!4606365 () Bool)

(declare-fun e!2873303 () Bool)

(assert (=> b!4606365 (= e!2873302 e!2873303)))

(declare-fun res!1927736 () Bool)

(assert (=> b!4606365 (=> (not res!1927736) (not e!2873303))))

(assert (=> b!4606365 (= res!1927736 ((_ is Cons!51167) (_2!29228 (h!57150 (toList!4723 lt!1763367)))))))

(declare-fun b!4606366 () Bool)

(assert (=> b!4606366 (= e!2873303 (containsKey!2225 (t!358285 (_2!29228 (h!57150 (toList!4723 lt!1763367)))) key!3287))))

(assert (= (and d!1451103 (not res!1927735)) b!4606365))

(assert (= (and b!4606365 res!1927736) b!4606366))

(declare-fun m!5435833 () Bool)

(assert (=> b!4606366 m!5435833))

(assert (=> b!4605987 d!1451103))

(declare-fun d!1451105 () Bool)

(declare-fun choose!30965 (Hashable!5753 K!12535) (_ BitVec 64))

(assert (=> d!1451105 (= (hash!3284 hashF!1107 key!3287) (choose!30965 hashF!1107 key!3287))))

(declare-fun bs!1014473 () Bool)

(assert (= bs!1014473 d!1451105))

(declare-fun m!5435835 () Bool)

(assert (=> bs!1014473 m!5435835))

(assert (=> d!1450797 d!1451105))

(assert (=> b!4605939 d!1450943))

(declare-fun d!1451107 () Bool)

(declare-fun res!1927746 () Bool)

(declare-fun e!2873319 () Bool)

(assert (=> d!1451107 (=> res!1927746 e!2873319)))

(assert (=> d!1451107 (= res!1927746 ((_ is Nil!51167) newBucket!178))))

(assert (=> d!1451107 (= (forall!10663 newBucket!178 lambda!187482) e!2873319)))

(declare-fun b!4606388 () Bool)

(declare-fun e!2873320 () Bool)

(assert (=> b!4606388 (= e!2873319 e!2873320)))

(declare-fun res!1927747 () Bool)

(assert (=> b!4606388 (=> (not res!1927747) (not e!2873320))))

(declare-fun dynLambda!21426 (Int tuple2!51866) Bool)

(assert (=> b!4606388 (= res!1927747 (dynLambda!21426 lambda!187482 (h!57149 newBucket!178)))))

(declare-fun b!4606389 () Bool)

(assert (=> b!4606389 (= e!2873320 (forall!10663 (t!358285 newBucket!178) lambda!187482))))

(assert (= (and d!1451107 (not res!1927746)) b!4606388))

(assert (= (and b!4606388 res!1927747) b!4606389))

(declare-fun b_lambda!170033 () Bool)

(assert (=> (not b_lambda!170033) (not b!4606388)))

(declare-fun m!5435847 () Bool)

(assert (=> b!4606388 m!5435847))

(declare-fun m!5435849 () Bool)

(assert (=> b!4606389 m!5435849))

(assert (=> d!1450835 d!1451107))

(declare-fun d!1451115 () Bool)

(assert (=> d!1451115 (= (tail!8006 (toList!4723 lm!1477)) (t!358286 (toList!4723 lm!1477)))))

(assert (=> d!1450817 d!1451115))

(declare-fun d!1451117 () Bool)

(assert (=> d!1451117 (= (get!16925 (getValueByKey!1345 (toList!4723 lt!1763367) hash!344)) (v!45460 (getValueByKey!1345 (toList!4723 lt!1763367) hash!344)))))

(assert (=> d!1450803 d!1451117))

(assert (=> d!1450803 d!1451013))

(declare-fun d!1451121 () Bool)

(assert (=> d!1451121 (= (isDefined!8695 (getValueByKey!1345 (toList!4723 lm!1477) lt!1763369)) (not (isEmpty!28887 (getValueByKey!1345 (toList!4723 lm!1477) lt!1763369))))))

(declare-fun bs!1014475 () Bool)

(assert (= bs!1014475 d!1451121))

(assert (=> bs!1014475 m!5435399))

(declare-fun m!5435851 () Bool)

(assert (=> bs!1014475 m!5435851))

(assert (=> b!4606012 d!1451121))

(declare-fun d!1451123 () Bool)

(declare-fun c!789100 () Bool)

(assert (=> d!1451123 (= c!789100 (and ((_ is Cons!51168) (toList!4723 lm!1477)) (= (_1!29228 (h!57150 (toList!4723 lm!1477))) lt!1763369)))))

(declare-fun e!2873321 () Option!11427)

(assert (=> d!1451123 (= (getValueByKey!1345 (toList!4723 lm!1477) lt!1763369) e!2873321)))

(declare-fun b!4606390 () Bool)

(assert (=> b!4606390 (= e!2873321 (Some!11426 (_2!29228 (h!57150 (toList!4723 lm!1477)))))))

(declare-fun b!4606391 () Bool)

(declare-fun e!2873322 () Option!11427)

(assert (=> b!4606391 (= e!2873321 e!2873322)))

(declare-fun c!789101 () Bool)

(assert (=> b!4606391 (= c!789101 (and ((_ is Cons!51168) (toList!4723 lm!1477)) (not (= (_1!29228 (h!57150 (toList!4723 lm!1477))) lt!1763369))))))

(declare-fun b!4606392 () Bool)

(assert (=> b!4606392 (= e!2873322 (getValueByKey!1345 (t!358286 (toList!4723 lm!1477)) lt!1763369))))

(declare-fun b!4606393 () Bool)

(assert (=> b!4606393 (= e!2873322 None!11426)))

(assert (= (and d!1451123 c!789100) b!4606390))

(assert (= (and d!1451123 (not c!789100)) b!4606391))

(assert (= (and b!4606391 c!789101) b!4606392))

(assert (= (and b!4606391 (not c!789101)) b!4606393))

(declare-fun m!5435853 () Bool)

(assert (=> b!4606392 m!5435853))

(assert (=> b!4606012 d!1451123))

(declare-fun d!1451125 () Bool)

(declare-fun c!789102 () Bool)

(assert (=> d!1451125 (= c!789102 ((_ is Nil!51168) (toList!4723 lm!1477)))))

(declare-fun e!2873323 () (InoxSet tuple2!51868))

(assert (=> d!1451125 (= (content!8684 (toList!4723 lm!1477)) e!2873323)))

(declare-fun b!4606394 () Bool)

(assert (=> b!4606394 (= e!2873323 ((as const (Array tuple2!51868 Bool)) false))))

(declare-fun b!4606395 () Bool)

(assert (=> b!4606395 (= e!2873323 ((_ map or) (store ((as const (Array tuple2!51868 Bool)) false) (h!57150 (toList!4723 lm!1477)) true) (content!8684 (t!358286 (toList!4723 lm!1477)))))))

(assert (= (and d!1451125 c!789102) b!4606394))

(assert (= (and d!1451125 (not c!789102)) b!4606395))

(declare-fun m!5435855 () Bool)

(assert (=> b!4606395 m!5435855))

(assert (=> b!4606395 m!5435177))

(assert (=> d!1450883 d!1451125))

(declare-fun d!1451127 () Bool)

(assert (=> d!1451127 (= (get!16925 (getValueByKey!1345 (toList!4723 lm!1477) hash!344)) (v!45460 (getValueByKey!1345 (toList!4723 lm!1477) hash!344)))))

(assert (=> d!1450887 d!1451127))

(assert (=> d!1450887 d!1450959))

(declare-fun d!1451129 () Bool)

(assert (=> d!1451129 (isDefined!8695 (getValueByKey!1345 (toList!4723 lm!1477) lt!1763369))))

(declare-fun lt!1763720 () Unit!108959)

(assert (=> d!1451129 (= lt!1763720 (choose!30961 (toList!4723 lm!1477) lt!1763369))))

(declare-fun e!2873324 () Bool)

(assert (=> d!1451129 e!2873324))

(declare-fun res!1927748 () Bool)

(assert (=> d!1451129 (=> (not res!1927748) (not e!2873324))))

(assert (=> d!1451129 (= res!1927748 (isStrictlySorted!557 (toList!4723 lm!1477)))))

(assert (=> d!1451129 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1249 (toList!4723 lm!1477) lt!1763369) lt!1763720)))

(declare-fun b!4606396 () Bool)

(assert (=> b!4606396 (= e!2873324 (containsKey!2228 (toList!4723 lm!1477) lt!1763369))))

(assert (= (and d!1451129 res!1927748) b!4606396))

(assert (=> d!1451129 m!5435399))

(assert (=> d!1451129 m!5435399))

(assert (=> d!1451129 m!5435401))

(declare-fun m!5435857 () Bool)

(assert (=> d!1451129 m!5435857))

(assert (=> d!1451129 m!5435165))

(assert (=> b!4606396 m!5435395))

(assert (=> b!4606010 d!1451129))

(assert (=> b!4606010 d!1451121))

(assert (=> b!4606010 d!1451123))

(assert (=> d!1450795 d!1451069))

(assert (=> b!4605823 d!1451011))

(assert (=> b!4605823 d!1451013))

(declare-fun d!1451131 () Bool)

(declare-fun res!1927749 () Bool)

(declare-fun e!2873325 () Bool)

(assert (=> d!1451131 (=> res!1927749 e!2873325)))

(assert (=> d!1451131 (= res!1927749 (and ((_ is Cons!51167) (t!358285 newBucket!178)) (= (_1!29227 (h!57149 (t!358285 newBucket!178))) (_1!29227 (h!57149 newBucket!178)))))))

(assert (=> d!1451131 (= (containsKey!2225 (t!358285 newBucket!178) (_1!29227 (h!57149 newBucket!178))) e!2873325)))

(declare-fun b!4606397 () Bool)

(declare-fun e!2873326 () Bool)

(assert (=> b!4606397 (= e!2873325 e!2873326)))

(declare-fun res!1927750 () Bool)

(assert (=> b!4606397 (=> (not res!1927750) (not e!2873326))))

(assert (=> b!4606397 (= res!1927750 ((_ is Cons!51167) (t!358285 newBucket!178)))))

(declare-fun b!4606398 () Bool)

(assert (=> b!4606398 (= e!2873326 (containsKey!2225 (t!358285 (t!358285 newBucket!178)) (_1!29227 (h!57149 newBucket!178))))))

(assert (= (and d!1451131 (not res!1927749)) b!4606397))

(assert (= (and b!4606397 res!1927750) b!4606398))

(declare-fun m!5435859 () Bool)

(assert (=> b!4606398 m!5435859))

(assert (=> b!4605976 d!1451131))

(declare-fun e!2873327 () Bool)

(declare-fun tp!1340854 () Bool)

(declare-fun b!4606399 () Bool)

(assert (=> b!4606399 (= e!2873327 (and tp_is_empty!28709 tp_is_empty!28711 tp!1340854))))

(assert (=> b!4606022 (= tp!1340852 e!2873327)))

(assert (= (and b!4606022 ((_ is Cons!51167) (_2!29228 (h!57150 (toList!4723 lm!1477))))) b!4606399))

(declare-fun b!4606400 () Bool)

(declare-fun e!2873328 () Bool)

(declare-fun tp!1340855 () Bool)

(declare-fun tp!1340856 () Bool)

(assert (=> b!4606400 (= e!2873328 (and tp!1340855 tp!1340856))))

(assert (=> b!4606022 (= tp!1340853 e!2873328)))

(assert (= (and b!4606022 ((_ is Cons!51168) (t!358286 (toList!4723 lm!1477)))) b!4606400))

(declare-fun tp!1340857 () Bool)

(declare-fun b!4606401 () Bool)

(declare-fun e!2873329 () Bool)

(assert (=> b!4606401 (= e!2873329 (and tp_is_empty!28709 tp_is_empty!28711 tp!1340857))))

(assert (=> b!4606017 (= tp!1340847 e!2873329)))

(assert (= (and b!4606017 ((_ is Cons!51167) (t!358285 (t!358285 newBucket!178)))) b!4606401))

(declare-fun b_lambda!170037 () Bool)

(assert (= b_lambda!169999 (or d!1450819 b_lambda!170037)))

(declare-fun bs!1014477 () Bool)

(declare-fun d!1451135 () Bool)

(assert (= bs!1014477 (and d!1451135 d!1450819)))

(assert (=> bs!1014477 (= (dynLambda!21424 lambda!187479 (h!57150 (toList!4723 lm!1477))) (noDuplicateKeys!1354 (_2!29228 (h!57150 (toList!4723 lm!1477)))))))

(assert (=> bs!1014477 m!5435405))

(assert (=> b!4606031 d!1451135))

(declare-fun b_lambda!170039 () Bool)

(assert (= b_lambda!170015 (or d!1450881 b_lambda!170039)))

(declare-fun bs!1014478 () Bool)

(declare-fun d!1451137 () Bool)

(assert (= bs!1014478 (and d!1451137 d!1450881)))

(assert (=> bs!1014478 (= (dynLambda!21424 lambda!187497 (h!57150 (toList!4723 lt!1763367))) (noDuplicateKeys!1354 (_2!29228 (h!57150 (toList!4723 lt!1763367)))))))

(assert (=> bs!1014478 m!5435403))

(assert (=> b!4606256 d!1451137))

(declare-fun b_lambda!170041 () Bool)

(assert (= b_lambda!170021 (or start!460216 b_lambda!170041)))

(assert (=> d!1451045 d!1450901))

(declare-fun b_lambda!170043 () Bool)

(assert (= b_lambda!169997 (or d!1450865 b_lambda!170043)))

(declare-fun bs!1014479 () Bool)

(declare-fun d!1451139 () Bool)

(assert (= bs!1014479 (and d!1451139 d!1450865)))

(assert (=> bs!1014479 (= (dynLambda!21424 lambda!187494 (h!57150 (toList!4723 lm!1477))) (noDuplicateKeys!1354 (_2!29228 (h!57150 (toList!4723 lm!1477)))))))

(assert (=> bs!1014479 m!5435405))

(assert (=> b!4606023 d!1451139))

(declare-fun b_lambda!170045 () Bool)

(assert (= b_lambda!170027 (or start!460216 b_lambda!170045)))

(declare-fun bs!1014480 () Bool)

(declare-fun d!1451141 () Bool)

(assert (= bs!1014480 (and d!1451141 start!460216)))

(assert (=> bs!1014480 (= (dynLambda!21424 lambda!187462 (h!57150 (t!358286 (toList!4723 lm!1477)))) (noDuplicateKeys!1354 (_2!29228 (h!57150 (t!358286 (toList!4723 lm!1477))))))))

(declare-fun m!5435863 () Bool)

(assert (=> bs!1014480 m!5435863))

(assert (=> b!4606354 d!1451141))

(declare-fun b_lambda!170047 () Bool)

(assert (= b_lambda!170023 (or start!460216 b_lambda!170047)))

(declare-fun bs!1014481 () Bool)

(declare-fun d!1451143 () Bool)

(assert (= bs!1014481 (and d!1451143 start!460216)))

(assert (=> bs!1014481 (= (dynLambda!21424 lambda!187462 (h!57150 (t!358286 (toList!4723 lt!1763367)))) (noDuplicateKeys!1354 (_2!29228 (h!57150 (t!358286 (toList!4723 lt!1763367))))))))

(declare-fun m!5435865 () Bool)

(assert (=> bs!1014481 m!5435865))

(assert (=> b!4606323 d!1451143))

(declare-fun b_lambda!170049 () Bool)

(assert (= b_lambda!170017 (or d!1450799 b_lambda!170049)))

(declare-fun bs!1014482 () Bool)

(declare-fun d!1451145 () Bool)

(assert (= bs!1014482 (and d!1451145 d!1450799)))

(assert (=> bs!1014482 (= (dynLambda!21424 lambda!187466 (h!57150 (toList!4723 lm!1477))) (allKeysSameHash!1210 (_2!29228 (h!57150 (toList!4723 lm!1477))) (_1!29228 (h!57150 (toList!4723 lm!1477))) hashF!1107))))

(declare-fun m!5435867 () Bool)

(assert (=> bs!1014482 m!5435867))

(assert (=> b!4606258 d!1451145))

(declare-fun b_lambda!170051 () Bool)

(assert (= b_lambda!170013 (or d!1450885 b_lambda!170051)))

(declare-fun bs!1014483 () Bool)

(declare-fun d!1451147 () Bool)

(assert (= bs!1014483 (and d!1451147 d!1450885)))

(assert (=> bs!1014483 (= (dynLambda!21424 lambda!187500 (h!57150 (toList!4723 lm!1477))) (noDuplicateKeys!1354 (_2!29228 (h!57150 (toList!4723 lm!1477)))))))

(assert (=> bs!1014483 m!5435405))

(assert (=> b!4606241 d!1451147))

(declare-fun b_lambda!170053 () Bool)

(assert (= b_lambda!170033 (or d!1450835 b_lambda!170053)))

(declare-fun bs!1014484 () Bool)

(declare-fun d!1451149 () Bool)

(assert (= bs!1014484 (and d!1451149 d!1450835)))

(assert (=> bs!1014484 (= (dynLambda!21426 lambda!187482 (h!57149 newBucket!178)) (= (hash!3282 hashF!1107 (_1!29227 (h!57149 newBucket!178))) hash!344))))

(declare-fun m!5435869 () Bool)

(assert (=> bs!1014484 m!5435869))

(assert (=> b!4606388 d!1451149))

(declare-fun b_lambda!170055 () Bool)

(assert (= b_lambda!170005 (or d!1450787 b_lambda!170055)))

(declare-fun bs!1014485 () Bool)

(declare-fun d!1451151 () Bool)

(assert (= bs!1014485 (and d!1451151 d!1450787)))

(assert (=> bs!1014485 (= (dynLambda!21424 lambda!187465 (h!57150 (toList!4723 lt!1763367))) (allKeysSameHash!1210 (_2!29228 (h!57150 (toList!4723 lt!1763367))) (_1!29228 (h!57150 (toList!4723 lt!1763367))) hashF!1107))))

(declare-fun m!5435871 () Bool)

(assert (=> bs!1014485 m!5435871))

(assert (=> b!4606153 d!1451151))

(check-sat (not b!4606032) (not b!4606350) tp_is_empty!28709 (not b_lambda!170037) (not b!4606129) (not b!4606174) (not bs!1014478) (not d!1451129) (not b!4606254) (not b_lambda!170045) (not d!1451043) (not d!1450903) (not d!1451055) (not b_lambda!169993) (not d!1451005) (not b_lambda!170055) (not d!1451009) (not b_lambda!170043) (not b!4606166) (not d!1451029) (not bs!1014480) (not b!4606353) (not b!4606389) (not b!4606395) (not b!4606328) (not b!4606238) (not b!4606167) (not b!4606297) (not bm!321305) (not b!4606103) (not b!4606228) (not d!1451059) (not b!4606150) (not b!4606081) (not b!4606316) (not b!4606300) (not d!1451003) (not b!4606240) (not b!4606177) (not d!1451105) (not b!4606127) (not b!4606257) (not bs!1014484) (not b!4606262) (not b!4606255) (not d!1450969) (not bm!321307) (not d!1450915) (not b!4606227) (not b!4606399) (not d!1451121) (not b!4606355) (not b!4606296) (not b!4606128) (not d!1450931) (not b!4606348) (not bs!1014479) (not b!4606242) (not d!1450907) (not b!4606248) (not b!4606175) (not b!4606054) (not d!1451095) (not b!4606245) (not b_lambda!170051) (not b!4606299) (not b!4606229) (not b_lambda!169991) (not bs!1014483) (not b_lambda!170053) (not bm!321306) (not b_lambda!170049) (not b!4606225) (not b!4606158) (not d!1451019) (not bs!1014477) (not b!4606069) (not d!1451001) (not b!4606085) (not b_lambda!170041) (not b!4606392) (not b!4606260) (not b!4606236) (not d!1450943) (not d!1451011) (not d!1450975) (not b!4606400) (not b!4606324) (not b!4606024) (not b!4606398) (not b!4606396) (not bs!1014485) (not b!4606261) (not d!1451087) (not b!4606303) (not b_lambda!169995) (not b!4606253) (not d!1450939) (not b!4606366) tp_is_empty!28711 (not b!4606155) (not b_lambda!170047) (not b_lambda!170039) (not b!4606259) (not b!4606401) (not b!4606351) (not d!1450985) (not b!4606084) (not bs!1014482) (not b!4606173) (not b!4606310) (not b!4606165) (not b!4606264) (not bs!1014481))
(check-sat)
