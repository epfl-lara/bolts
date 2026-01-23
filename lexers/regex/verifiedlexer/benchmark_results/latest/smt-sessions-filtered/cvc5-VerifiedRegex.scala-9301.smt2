; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!493336 () Bool)

(assert start!493336)

(declare-fun b!4791839 () Bool)

(declare-fun e!2991899 () Bool)

(declare-fun e!2991901 () Bool)

(assert (=> b!4791839 (= e!2991899 (not e!2991901))))

(declare-fun res!2036649 () Bool)

(assert (=> b!4791839 (=> res!2036649 e!2991901)))

(declare-datatypes ((K!15792 0))(
  ( (K!15793 (val!20939 Int)) )
))
(declare-datatypes ((V!16038 0))(
  ( (V!16039 (val!20940 Int)) )
))
(declare-datatypes ((tuple2!56852 0))(
  ( (tuple2!56853 (_1!31720 K!15792) (_2!31720 V!16038)) )
))
(declare-datatypes ((List!54337 0))(
  ( (Nil!54213) (Cons!54213 (h!60637 tuple2!56852) (t!361787 List!54337)) )
))
(declare-datatypes ((tuple2!56854 0))(
  ( (tuple2!56855 (_1!31721 (_ BitVec 64)) (_2!31721 List!54337)) )
))
(declare-datatypes ((List!54338 0))(
  ( (Nil!54214) (Cons!54214 (h!60638 tuple2!56854) (t!361788 List!54338)) )
))
(declare-datatypes ((ListLongMap!5343 0))(
  ( (ListLongMap!5344 (toList!6921 List!54338)) )
))
(declare-fun lm!2473 () ListLongMap!5343)

(declare-fun value!3111 () V!16038)

(declare-fun key!5896 () K!15792)

(declare-fun getValue!109 (List!54338 K!15792) V!16038)

(assert (=> b!4791839 (= res!2036649 (not (= (getValue!109 (toList!6921 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!563 (List!54338 K!15792) Bool)

(assert (=> b!4791839 (containsKeyBiggerList!563 (toList!6921 lm!2473) key!5896)))

(declare-datatypes ((Hashable!6921 0))(
  ( (HashableExt!6920 (__x!32944 Int)) )
))
(declare-fun hashF!1559 () Hashable!6921)

(declare-datatypes ((Unit!139920 0))(
  ( (Unit!139921) )
))
(declare-fun lt!1950902 () Unit!139920)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!303 (ListLongMap!5343 K!15792 Hashable!6921) Unit!139920)

(assert (=> b!4791839 (= lt!1950902 (lemmaInLongMapThenContainsKeyBiggerList!303 lm!2473 key!5896 hashF!1559))))

(declare-fun e!2991900 () Bool)

(assert (=> b!4791839 e!2991900))

(declare-fun res!2036653 () Bool)

(assert (=> b!4791839 (=> (not res!2036653) (not e!2991900))))

(declare-fun lt!1950903 () (_ BitVec 64))

(declare-fun contains!17822 (ListLongMap!5343 (_ BitVec 64)) Bool)

(assert (=> b!4791839 (= res!2036653 (contains!17822 lm!2473 lt!1950903))))

(declare-fun hash!4953 (Hashable!6921 K!15792) (_ BitVec 64))

(assert (=> b!4791839 (= lt!1950903 (hash!4953 hashF!1559 key!5896))))

(declare-fun lt!1950904 () Unit!139920)

(declare-fun lemmaInGenericMapThenInLongMap!325 (ListLongMap!5343 K!15792 Hashable!6921) Unit!139920)

(assert (=> b!4791839 (= lt!1950904 (lemmaInGenericMapThenInLongMap!325 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4791840 () Bool)

(declare-fun e!2991902 () Bool)

(declare-fun tp!1357993 () Bool)

(assert (=> b!4791840 (= e!2991902 tp!1357993)))

(declare-fun b!4791841 () Bool)

(declare-datatypes ((Option!13088 0))(
  ( (None!13087) (Some!13087 (v!48366 tuple2!56852)) )
))
(declare-fun isDefined!10230 (Option!13088) Bool)

(declare-fun getPair!893 (List!54337 K!15792) Option!13088)

(declare-fun apply!12990 (ListLongMap!5343 (_ BitVec 64)) List!54337)

(assert (=> b!4791841 (= e!2991900 (isDefined!10230 (getPair!893 (apply!12990 lm!2473 lt!1950903) key!5896)))))

(declare-fun b!4791842 () Bool)

(declare-fun size!36363 (List!54338) Int)

(assert (=> b!4791842 (= e!2991901 (>= (size!36363 (toList!6921 lm!2473)) 0))))

(declare-fun res!2036652 () Bool)

(assert (=> start!493336 (=> (not res!2036652) (not e!2991899))))

(declare-fun lambda!230444 () Int)

(declare-fun forall!12246 (List!54338 Int) Bool)

(assert (=> start!493336 (= res!2036652 (forall!12246 (toList!6921 lm!2473) lambda!230444))))

(assert (=> start!493336 e!2991899))

(declare-fun inv!69819 (ListLongMap!5343) Bool)

(assert (=> start!493336 (and (inv!69819 lm!2473) e!2991902)))

(assert (=> start!493336 true))

(declare-fun tp_is_empty!33545 () Bool)

(assert (=> start!493336 tp_is_empty!33545))

(declare-fun tp_is_empty!33547 () Bool)

(assert (=> start!493336 tp_is_empty!33547))

(declare-fun b!4791843 () Bool)

(declare-fun res!2036650 () Bool)

(assert (=> b!4791843 (=> (not res!2036650) (not e!2991899))))

(declare-fun allKeysSameHashInMap!2326 (ListLongMap!5343 Hashable!6921) Bool)

(assert (=> b!4791843 (= res!2036650 (allKeysSameHashInMap!2326 lm!2473 hashF!1559))))

(declare-fun b!4791844 () Bool)

(declare-fun res!2036651 () Bool)

(assert (=> b!4791844 (=> (not res!2036651) (not e!2991899))))

(declare-datatypes ((ListMap!6393 0))(
  ( (ListMap!6394 (toList!6922 List!54337)) )
))
(declare-fun contains!17823 (ListMap!6393 K!15792) Bool)

(declare-fun extractMap!2448 (List!54338) ListMap!6393)

(assert (=> b!4791844 (= res!2036651 (contains!17823 (extractMap!2448 (toList!6921 lm!2473)) key!5896))))

(assert (= (and start!493336 res!2036652) b!4791843))

(assert (= (and b!4791843 res!2036650) b!4791844))

(assert (= (and b!4791844 res!2036651) b!4791839))

(assert (= (and b!4791839 res!2036653) b!4791841))

(assert (= (and b!4791839 (not res!2036649)) b!4791842))

(assert (= start!493336 b!4791840))

(declare-fun m!5772514 () Bool)

(assert (=> b!4791843 m!5772514))

(declare-fun m!5772516 () Bool)

(assert (=> b!4791842 m!5772516))

(declare-fun m!5772518 () Bool)

(assert (=> b!4791841 m!5772518))

(assert (=> b!4791841 m!5772518))

(declare-fun m!5772520 () Bool)

(assert (=> b!4791841 m!5772520))

(assert (=> b!4791841 m!5772520))

(declare-fun m!5772522 () Bool)

(assert (=> b!4791841 m!5772522))

(declare-fun m!5772524 () Bool)

(assert (=> b!4791844 m!5772524))

(assert (=> b!4791844 m!5772524))

(declare-fun m!5772526 () Bool)

(assert (=> b!4791844 m!5772526))

(declare-fun m!5772528 () Bool)

(assert (=> b!4791839 m!5772528))

(declare-fun m!5772530 () Bool)

(assert (=> b!4791839 m!5772530))

(declare-fun m!5772532 () Bool)

(assert (=> b!4791839 m!5772532))

(declare-fun m!5772534 () Bool)

(assert (=> b!4791839 m!5772534))

(declare-fun m!5772536 () Bool)

(assert (=> b!4791839 m!5772536))

(declare-fun m!5772538 () Bool)

(assert (=> b!4791839 m!5772538))

(declare-fun m!5772540 () Bool)

(assert (=> start!493336 m!5772540))

(declare-fun m!5772542 () Bool)

(assert (=> start!493336 m!5772542))

(push 1)

(assert (not b!4791839))

(assert (not b!4791840))

(assert (not b!4791841))

(assert tp_is_empty!33545)

(assert tp_is_empty!33547)

(assert (not start!493336))

(assert (not b!4791843))

(assert (not b!4791842))

(assert (not b!4791844))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1532952 () Bool)

(declare-fun res!2036673 () Bool)

(declare-fun e!2991919 () Bool)

(assert (=> d!1532952 (=> res!2036673 e!2991919)))

(assert (=> d!1532952 (= res!2036673 (is-Nil!54214 (toList!6921 lm!2473)))))

(assert (=> d!1532952 (= (forall!12246 (toList!6921 lm!2473) lambda!230444) e!2991919)))

(declare-fun b!4791867 () Bool)

(declare-fun e!2991920 () Bool)

(assert (=> b!4791867 (= e!2991919 e!2991920)))

(declare-fun res!2036674 () Bool)

(assert (=> b!4791867 (=> (not res!2036674) (not e!2991920))))

(declare-fun dynLambda!22052 (Int tuple2!56854) Bool)

(assert (=> b!4791867 (= res!2036674 (dynLambda!22052 lambda!230444 (h!60638 (toList!6921 lm!2473))))))

(declare-fun b!4791868 () Bool)

(assert (=> b!4791868 (= e!2991920 (forall!12246 (t!361788 (toList!6921 lm!2473)) lambda!230444))))

(assert (= (and d!1532952 (not res!2036673)) b!4791867))

(assert (= (and b!4791867 res!2036674) b!4791868))

(declare-fun b_lambda!186571 () Bool)

(assert (=> (not b_lambda!186571) (not b!4791867)))

(declare-fun m!5772574 () Bool)

(assert (=> b!4791867 m!5772574))

(declare-fun m!5772576 () Bool)

(assert (=> b!4791868 m!5772576))

(assert (=> start!493336 d!1532952))

(declare-fun d!1532954 () Bool)

(declare-fun isStrictlySorted!874 (List!54338) Bool)

(assert (=> d!1532954 (= (inv!69819 lm!2473) (isStrictlySorted!874 (toList!6921 lm!2473)))))

(declare-fun bs!1154636 () Bool)

(assert (= bs!1154636 d!1532954))

(declare-fun m!5772578 () Bool)

(assert (=> bs!1154636 m!5772578))

(assert (=> start!493336 d!1532954))

(declare-fun d!1532956 () Bool)

(declare-fun e!2991925 () Bool)

(assert (=> d!1532956 e!2991925))

(declare-fun res!2036677 () Bool)

(assert (=> d!1532956 (=> res!2036677 e!2991925)))

(declare-fun lt!1950922 () Bool)

(assert (=> d!1532956 (= res!2036677 (not lt!1950922))))

(declare-fun lt!1950924 () Bool)

(assert (=> d!1532956 (= lt!1950922 lt!1950924)))

(declare-fun lt!1950925 () Unit!139920)

(declare-fun e!2991926 () Unit!139920)

(assert (=> d!1532956 (= lt!1950925 e!2991926)))

(declare-fun c!816694 () Bool)

(assert (=> d!1532956 (= c!816694 lt!1950924)))

(declare-fun containsKey!3939 (List!54338 (_ BitVec 64)) Bool)

(assert (=> d!1532956 (= lt!1950924 (containsKey!3939 (toList!6921 lm!2473) lt!1950903))))

(assert (=> d!1532956 (= (contains!17822 lm!2473 lt!1950903) lt!1950922)))

(declare-fun b!4791875 () Bool)

(declare-fun lt!1950923 () Unit!139920)

(assert (=> b!4791875 (= e!2991926 lt!1950923)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2135 (List!54338 (_ BitVec 64)) Unit!139920)

(assert (=> b!4791875 (= lt!1950923 (lemmaContainsKeyImpliesGetValueByKeyDefined!2135 (toList!6921 lm!2473) lt!1950903))))

(declare-datatypes ((Option!13090 0))(
  ( (None!13089) (Some!13089 (v!48368 List!54337)) )
))
(declare-fun isDefined!10232 (Option!13090) Bool)

(declare-fun getValueByKey!2343 (List!54338 (_ BitVec 64)) Option!13090)

(assert (=> b!4791875 (isDefined!10232 (getValueByKey!2343 (toList!6921 lm!2473) lt!1950903))))

(declare-fun b!4791876 () Bool)

(declare-fun Unit!139924 () Unit!139920)

(assert (=> b!4791876 (= e!2991926 Unit!139924)))

(declare-fun b!4791877 () Bool)

(assert (=> b!4791877 (= e!2991925 (isDefined!10232 (getValueByKey!2343 (toList!6921 lm!2473) lt!1950903)))))

(assert (= (and d!1532956 c!816694) b!4791875))

(assert (= (and d!1532956 (not c!816694)) b!4791876))

(assert (= (and d!1532956 (not res!2036677)) b!4791877))

(declare-fun m!5772580 () Bool)

(assert (=> d!1532956 m!5772580))

(declare-fun m!5772582 () Bool)

(assert (=> b!4791875 m!5772582))

(declare-fun m!5772584 () Bool)

(assert (=> b!4791875 m!5772584))

(assert (=> b!4791875 m!5772584))

(declare-fun m!5772586 () Bool)

(assert (=> b!4791875 m!5772586))

(assert (=> b!4791877 m!5772584))

(assert (=> b!4791877 m!5772584))

(assert (=> b!4791877 m!5772586))

(assert (=> b!4791839 d!1532956))

(declare-fun d!1532958 () Bool)

(declare-fun res!2036684 () Bool)

(declare-fun e!2991935 () Bool)

(assert (=> d!1532958 (=> res!2036684 e!2991935)))

(declare-fun e!2991933 () Bool)

(assert (=> d!1532958 (= res!2036684 e!2991933)))

(declare-fun res!2036686 () Bool)

(assert (=> d!1532958 (=> (not res!2036686) (not e!2991933))))

(assert (=> d!1532958 (= res!2036686 (is-Cons!54214 (toList!6921 lm!2473)))))

(assert (=> d!1532958 (= (containsKeyBiggerList!563 (toList!6921 lm!2473) key!5896) e!2991935)))

(declare-fun b!4791884 () Bool)

(declare-fun containsKey!3940 (List!54337 K!15792) Bool)

(assert (=> b!4791884 (= e!2991933 (containsKey!3940 (_2!31721 (h!60638 (toList!6921 lm!2473))) key!5896))))

(declare-fun b!4791885 () Bool)

(declare-fun e!2991934 () Bool)

(assert (=> b!4791885 (= e!2991935 e!2991934)))

(declare-fun res!2036685 () Bool)

(assert (=> b!4791885 (=> (not res!2036685) (not e!2991934))))

(assert (=> b!4791885 (= res!2036685 (is-Cons!54214 (toList!6921 lm!2473)))))

(declare-fun b!4791886 () Bool)

(assert (=> b!4791886 (= e!2991934 (containsKeyBiggerList!563 (t!361788 (toList!6921 lm!2473)) key!5896))))

(assert (= (and d!1532958 res!2036686) b!4791884))

(assert (= (and d!1532958 (not res!2036684)) b!4791885))

(assert (= (and b!4791885 res!2036685) b!4791886))

(declare-fun m!5772588 () Bool)

(assert (=> b!4791884 m!5772588))

(declare-fun m!5772590 () Bool)

(assert (=> b!4791886 m!5772590))

(assert (=> b!4791839 d!1532958))

(declare-fun bs!1154637 () Bool)

(declare-fun d!1532960 () Bool)

(assert (= bs!1154637 (and d!1532960 start!493336)))

(declare-fun lambda!230450 () Int)

(assert (=> bs!1154637 (= lambda!230450 lambda!230444)))

(assert (=> d!1532960 (containsKeyBiggerList!563 (toList!6921 lm!2473) key!5896)))

(declare-fun lt!1950928 () Unit!139920)

(declare-fun choose!34496 (ListLongMap!5343 K!15792 Hashable!6921) Unit!139920)

(assert (=> d!1532960 (= lt!1950928 (choose!34496 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1532960 (forall!12246 (toList!6921 lm!2473) lambda!230450)))

(assert (=> d!1532960 (= (lemmaInLongMapThenContainsKeyBiggerList!303 lm!2473 key!5896 hashF!1559) lt!1950928)))

(declare-fun bs!1154638 () Bool)

(assert (= bs!1154638 d!1532960))

(assert (=> bs!1154638 m!5772528))

(declare-fun m!5772592 () Bool)

(assert (=> bs!1154638 m!5772592))

(declare-fun m!5772594 () Bool)

(assert (=> bs!1154638 m!5772594))

(assert (=> b!4791839 d!1532960))

(declare-fun bs!1154640 () Bool)

(declare-fun d!1532964 () Bool)

(assert (= bs!1154640 (and d!1532964 start!493336)))

(declare-fun lambda!230453 () Int)

(assert (=> bs!1154640 (= lambda!230453 lambda!230444)))

(declare-fun bs!1154641 () Bool)

(assert (= bs!1154641 (and d!1532964 d!1532960)))

(assert (=> bs!1154641 (= lambda!230453 lambda!230450)))

(declare-fun e!2991941 () Bool)

(assert (=> d!1532964 e!2991941))

(declare-fun res!2036689 () Bool)

(assert (=> d!1532964 (=> (not res!2036689) (not e!2991941))))

(assert (=> d!1532964 (= res!2036689 (contains!17822 lm!2473 (hash!4953 hashF!1559 key!5896)))))

(declare-fun lt!1950934 () Unit!139920)

(declare-fun choose!34497 (ListLongMap!5343 K!15792 Hashable!6921) Unit!139920)

(assert (=> d!1532964 (= lt!1950934 (choose!34497 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1532964 (forall!12246 (toList!6921 lm!2473) lambda!230453)))

(assert (=> d!1532964 (= (lemmaInGenericMapThenInLongMap!325 lm!2473 key!5896 hashF!1559) lt!1950934)))

(declare-fun b!4791895 () Bool)

(assert (=> b!4791895 (= e!2991941 (isDefined!10230 (getPair!893 (apply!12990 lm!2473 (hash!4953 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1532964 res!2036689) b!4791895))

(assert (=> d!1532964 m!5772532))

(assert (=> d!1532964 m!5772532))

(declare-fun m!5772600 () Bool)

(assert (=> d!1532964 m!5772600))

(declare-fun m!5772602 () Bool)

(assert (=> d!1532964 m!5772602))

(declare-fun m!5772604 () Bool)

(assert (=> d!1532964 m!5772604))

(assert (=> b!4791895 m!5772532))

(assert (=> b!4791895 m!5772532))

(declare-fun m!5772606 () Bool)

(assert (=> b!4791895 m!5772606))

(assert (=> b!4791895 m!5772606))

(declare-fun m!5772608 () Bool)

(assert (=> b!4791895 m!5772608))

(assert (=> b!4791895 m!5772608))

(declare-fun m!5772610 () Bool)

(assert (=> b!4791895 m!5772610))

(assert (=> b!4791839 d!1532964))

(declare-fun d!1532970 () Bool)

(declare-fun c!816700 () Bool)

(declare-fun e!2991947 () Bool)

(assert (=> d!1532970 (= c!816700 e!2991947)))

(declare-fun res!2036692 () Bool)

(assert (=> d!1532970 (=> (not res!2036692) (not e!2991947))))

(assert (=> d!1532970 (= res!2036692 (is-Cons!54214 (toList!6921 lm!2473)))))

(declare-fun e!2991946 () V!16038)

(assert (=> d!1532970 (= (getValue!109 (toList!6921 lm!2473) key!5896) e!2991946)))

(declare-fun b!4791904 () Bool)

(assert (=> b!4791904 (= e!2991947 (containsKey!3940 (_2!31721 (h!60638 (toList!6921 lm!2473))) key!5896))))

(declare-fun b!4791902 () Bool)

(declare-fun get!18472 (Option!13088) tuple2!56852)

(assert (=> b!4791902 (= e!2991946 (_2!31720 (get!18472 (getPair!893 (_2!31721 (h!60638 (toList!6921 lm!2473))) key!5896))))))

(declare-fun b!4791903 () Bool)

(assert (=> b!4791903 (= e!2991946 (getValue!109 (t!361788 (toList!6921 lm!2473)) key!5896))))

(assert (= (and d!1532970 res!2036692) b!4791904))

(assert (= (and d!1532970 c!816700) b!4791902))

(assert (= (and d!1532970 (not c!816700)) b!4791903))

(assert (=> b!4791904 m!5772588))

(declare-fun m!5772612 () Bool)

(assert (=> b!4791902 m!5772612))

(assert (=> b!4791902 m!5772612))

(declare-fun m!5772614 () Bool)

(assert (=> b!4791902 m!5772614))

(declare-fun m!5772616 () Bool)

(assert (=> b!4791903 m!5772616))

(assert (=> b!4791839 d!1532970))

(declare-fun d!1532972 () Bool)

(declare-fun hash!4955 (Hashable!6921 K!15792) (_ BitVec 64))

(assert (=> d!1532972 (= (hash!4953 hashF!1559 key!5896) (hash!4955 hashF!1559 key!5896))))

(declare-fun bs!1154642 () Bool)

(assert (= bs!1154642 d!1532972))

(declare-fun m!5772618 () Bool)

(assert (=> bs!1154642 m!5772618))

(assert (=> b!4791839 d!1532972))

(declare-fun b!4791947 () Bool)

(declare-fun e!2991977 () Bool)

(declare-datatypes ((List!54341 0))(
  ( (Nil!54217) (Cons!54217 (h!60641 K!15792) (t!361791 List!54341)) )
))
(declare-fun contains!17826 (List!54341 K!15792) Bool)

(declare-fun keys!19793 (ListMap!6393) List!54341)

(assert (=> b!4791947 (= e!2991977 (not (contains!17826 (keys!19793 (extractMap!2448 (toList!6921 lm!2473))) key!5896)))))

(declare-fun b!4791948 () Bool)

(declare-fun e!2991975 () Bool)

(declare-fun e!2991980 () Bool)

(assert (=> b!4791948 (= e!2991975 e!2991980)))

(declare-fun res!2036713 () Bool)

(assert (=> b!4791948 (=> (not res!2036713) (not e!2991980))))

(declare-datatypes ((Option!13091 0))(
  ( (None!13090) (Some!13090 (v!48369 V!16038)) )
))
(declare-fun isDefined!10233 (Option!13091) Bool)

(declare-fun getValueByKey!2344 (List!54337 K!15792) Option!13091)

(assert (=> b!4791948 (= res!2036713 (isDefined!10233 (getValueByKey!2344 (toList!6922 (extractMap!2448 (toList!6921 lm!2473))) key!5896)))))

(declare-fun b!4791949 () Bool)

(declare-fun e!2991979 () Unit!139920)

(declare-fun lt!1950956 () Unit!139920)

(assert (=> b!4791949 (= e!2991979 lt!1950956)))

(declare-fun lt!1950961 () Unit!139920)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2136 (List!54337 K!15792) Unit!139920)

(assert (=> b!4791949 (= lt!1950961 (lemmaContainsKeyImpliesGetValueByKeyDefined!2136 (toList!6922 (extractMap!2448 (toList!6921 lm!2473))) key!5896))))

(assert (=> b!4791949 (isDefined!10233 (getValueByKey!2344 (toList!6922 (extractMap!2448 (toList!6921 lm!2473))) key!5896))))

(declare-fun lt!1950959 () Unit!139920)

(assert (=> b!4791949 (= lt!1950959 lt!1950961)))

(declare-fun lemmaInListThenGetKeysListContains!1067 (List!54337 K!15792) Unit!139920)

(assert (=> b!4791949 (= lt!1950956 (lemmaInListThenGetKeysListContains!1067 (toList!6922 (extractMap!2448 (toList!6921 lm!2473))) key!5896))))

(declare-fun call!335013 () Bool)

(assert (=> b!4791949 call!335013))

(declare-fun bm!335008 () Bool)

(declare-fun e!2991976 () List!54341)

(assert (=> bm!335008 (= call!335013 (contains!17826 e!2991976 key!5896))))

(declare-fun c!816713 () Bool)

(declare-fun c!816715 () Bool)

(assert (=> bm!335008 (= c!816713 c!816715)))

(declare-fun b!4791950 () Bool)

(declare-fun e!2991978 () Unit!139920)

(declare-fun Unit!139925 () Unit!139920)

(assert (=> b!4791950 (= e!2991978 Unit!139925)))

(declare-fun b!4791952 () Bool)

(assert (=> b!4791952 (= e!2991979 e!2991978)))

(declare-fun c!816714 () Bool)

(assert (=> b!4791952 (= c!816714 call!335013)))

(declare-fun b!4791953 () Bool)

(assert (=> b!4791953 (= e!2991980 (contains!17826 (keys!19793 (extractMap!2448 (toList!6921 lm!2473))) key!5896))))

(declare-fun d!1532974 () Bool)

(assert (=> d!1532974 e!2991975))

(declare-fun res!2036712 () Bool)

(assert (=> d!1532974 (=> res!2036712 e!2991975)))

(assert (=> d!1532974 (= res!2036712 e!2991977)))

(declare-fun res!2036711 () Bool)

(assert (=> d!1532974 (=> (not res!2036711) (not e!2991977))))

(declare-fun lt!1950957 () Bool)

(assert (=> d!1532974 (= res!2036711 (not lt!1950957))))

(declare-fun lt!1950960 () Bool)

(assert (=> d!1532974 (= lt!1950957 lt!1950960)))

(declare-fun lt!1950954 () Unit!139920)

(assert (=> d!1532974 (= lt!1950954 e!2991979)))

(assert (=> d!1532974 (= c!816715 lt!1950960)))

(declare-fun containsKey!3941 (List!54337 K!15792) Bool)

(assert (=> d!1532974 (= lt!1950960 (containsKey!3941 (toList!6922 (extractMap!2448 (toList!6921 lm!2473))) key!5896))))

(assert (=> d!1532974 (= (contains!17823 (extractMap!2448 (toList!6921 lm!2473)) key!5896) lt!1950957)))

(declare-fun b!4791951 () Bool)

(assert (=> b!4791951 (= e!2991976 (keys!19793 (extractMap!2448 (toList!6921 lm!2473))))))

(declare-fun b!4791954 () Bool)

(assert (=> b!4791954 false))

(declare-fun lt!1950955 () Unit!139920)

(declare-fun lt!1950958 () Unit!139920)

(assert (=> b!4791954 (= lt!1950955 lt!1950958)))

(assert (=> b!4791954 (containsKey!3941 (toList!6922 (extractMap!2448 (toList!6921 lm!2473))) key!5896)))

(declare-fun lemmaInGetKeysListThenContainsKey!1072 (List!54337 K!15792) Unit!139920)

(assert (=> b!4791954 (= lt!1950958 (lemmaInGetKeysListThenContainsKey!1072 (toList!6922 (extractMap!2448 (toList!6921 lm!2473))) key!5896))))

(declare-fun Unit!139926 () Unit!139920)

(assert (=> b!4791954 (= e!2991978 Unit!139926)))

(declare-fun b!4791955 () Bool)

(declare-fun getKeysList!1072 (List!54337) List!54341)

(assert (=> b!4791955 (= e!2991976 (getKeysList!1072 (toList!6922 (extractMap!2448 (toList!6921 lm!2473)))))))

(assert (= (and d!1532974 c!816715) b!4791949))

(assert (= (and d!1532974 (not c!816715)) b!4791952))

(assert (= (and b!4791952 c!816714) b!4791954))

(assert (= (and b!4791952 (not c!816714)) b!4791950))

(assert (= (or b!4791949 b!4791952) bm!335008))

(assert (= (and bm!335008 c!816713) b!4791955))

(assert (= (and bm!335008 (not c!816713)) b!4791951))

(assert (= (and d!1532974 res!2036711) b!4791947))

(assert (= (and d!1532974 (not res!2036712)) b!4791948))

(assert (= (and b!4791948 res!2036713) b!4791953))

(declare-fun m!5772638 () Bool)

(assert (=> b!4791948 m!5772638))

(assert (=> b!4791948 m!5772638))

(declare-fun m!5772640 () Bool)

(assert (=> b!4791948 m!5772640))

(declare-fun m!5772642 () Bool)

(assert (=> b!4791955 m!5772642))

(declare-fun m!5772644 () Bool)

(assert (=> d!1532974 m!5772644))

(assert (=> b!4791947 m!5772524))

(declare-fun m!5772646 () Bool)

(assert (=> b!4791947 m!5772646))

(assert (=> b!4791947 m!5772646))

(declare-fun m!5772648 () Bool)

(assert (=> b!4791947 m!5772648))

(assert (=> b!4791953 m!5772524))

(assert (=> b!4791953 m!5772646))

(assert (=> b!4791953 m!5772646))

(assert (=> b!4791953 m!5772648))

(declare-fun m!5772650 () Bool)

(assert (=> b!4791949 m!5772650))

(assert (=> b!4791949 m!5772638))

(assert (=> b!4791949 m!5772638))

(assert (=> b!4791949 m!5772640))

(declare-fun m!5772652 () Bool)

(assert (=> b!4791949 m!5772652))

(declare-fun m!5772654 () Bool)

(assert (=> bm!335008 m!5772654))

(assert (=> b!4791954 m!5772644))

(declare-fun m!5772656 () Bool)

(assert (=> b!4791954 m!5772656))

(assert (=> b!4791951 m!5772524))

(assert (=> b!4791951 m!5772646))

(assert (=> b!4791844 d!1532974))

(declare-fun bs!1154644 () Bool)

(declare-fun d!1532980 () Bool)

(assert (= bs!1154644 (and d!1532980 start!493336)))

(declare-fun lambda!230456 () Int)

(assert (=> bs!1154644 (= lambda!230456 lambda!230444)))

(declare-fun bs!1154645 () Bool)

(assert (= bs!1154645 (and d!1532980 d!1532960)))

(assert (=> bs!1154645 (= lambda!230456 lambda!230450)))

(declare-fun bs!1154646 () Bool)

(assert (= bs!1154646 (and d!1532980 d!1532964)))

(assert (=> bs!1154646 (= lambda!230456 lambda!230453)))

(declare-fun lt!1950964 () ListMap!6393)

(declare-fun invariantList!1726 (List!54337) Bool)

(assert (=> d!1532980 (invariantList!1726 (toList!6922 lt!1950964))))

(declare-fun e!2991983 () ListMap!6393)

(assert (=> d!1532980 (= lt!1950964 e!2991983)))

(declare-fun c!816718 () Bool)

(assert (=> d!1532980 (= c!816718 (is-Cons!54214 (toList!6921 lm!2473)))))

(assert (=> d!1532980 (forall!12246 (toList!6921 lm!2473) lambda!230456)))

(assert (=> d!1532980 (= (extractMap!2448 (toList!6921 lm!2473)) lt!1950964)))

(declare-fun b!4791960 () Bool)

(declare-fun addToMapMapFromBucket!1703 (List!54337 ListMap!6393) ListMap!6393)

(assert (=> b!4791960 (= e!2991983 (addToMapMapFromBucket!1703 (_2!31721 (h!60638 (toList!6921 lm!2473))) (extractMap!2448 (t!361788 (toList!6921 lm!2473)))))))

(declare-fun b!4791961 () Bool)

(assert (=> b!4791961 (= e!2991983 (ListMap!6394 Nil!54213))))

(assert (= (and d!1532980 c!816718) b!4791960))

(assert (= (and d!1532980 (not c!816718)) b!4791961))

(declare-fun m!5772658 () Bool)

(assert (=> d!1532980 m!5772658))

(declare-fun m!5772660 () Bool)

(assert (=> d!1532980 m!5772660))

(declare-fun m!5772662 () Bool)

(assert (=> b!4791960 m!5772662))

(assert (=> b!4791960 m!5772662))

(declare-fun m!5772664 () Bool)

(assert (=> b!4791960 m!5772664))

(assert (=> b!4791844 d!1532980))

(declare-fun bs!1154647 () Bool)

(declare-fun d!1532982 () Bool)

(assert (= bs!1154647 (and d!1532982 start!493336)))

(declare-fun lambda!230459 () Int)

(assert (=> bs!1154647 (not (= lambda!230459 lambda!230444))))

(declare-fun bs!1154648 () Bool)

(assert (= bs!1154648 (and d!1532982 d!1532960)))

(assert (=> bs!1154648 (not (= lambda!230459 lambda!230450))))

(declare-fun bs!1154649 () Bool)

(assert (= bs!1154649 (and d!1532982 d!1532964)))

(assert (=> bs!1154649 (not (= lambda!230459 lambda!230453))))

(declare-fun bs!1154650 () Bool)

(assert (= bs!1154650 (and d!1532982 d!1532980)))

(assert (=> bs!1154650 (not (= lambda!230459 lambda!230456))))

(assert (=> d!1532982 true))

(assert (=> d!1532982 (= (allKeysSameHashInMap!2326 lm!2473 hashF!1559) (forall!12246 (toList!6921 lm!2473) lambda!230459))))

(declare-fun bs!1154651 () Bool)

(assert (= bs!1154651 d!1532982))

(declare-fun m!5772666 () Bool)

(assert (=> bs!1154651 m!5772666))

(assert (=> b!4791843 d!1532982))

(declare-fun d!1532984 () Bool)

(declare-fun lt!1950967 () Int)

(assert (=> d!1532984 (>= lt!1950967 0)))

(declare-fun e!2991986 () Int)

(assert (=> d!1532984 (= lt!1950967 e!2991986)))

(declare-fun c!816721 () Bool)

(assert (=> d!1532984 (= c!816721 (is-Nil!54214 (toList!6921 lm!2473)))))

(assert (=> d!1532984 (= (size!36363 (toList!6921 lm!2473)) lt!1950967)))

(declare-fun b!4791968 () Bool)

(assert (=> b!4791968 (= e!2991986 0)))

(declare-fun b!4791969 () Bool)

(assert (=> b!4791969 (= e!2991986 (+ 1 (size!36363 (t!361788 (toList!6921 lm!2473)))))))

(assert (= (and d!1532984 c!816721) b!4791968))

(assert (= (and d!1532984 (not c!816721)) b!4791969))

(declare-fun m!5772668 () Bool)

(assert (=> b!4791969 m!5772668))

(assert (=> b!4791842 d!1532984))

(declare-fun d!1532986 () Bool)

(declare-fun isEmpty!29440 (Option!13088) Bool)

(assert (=> d!1532986 (= (isDefined!10230 (getPair!893 (apply!12990 lm!2473 lt!1950903) key!5896)) (not (isEmpty!29440 (getPair!893 (apply!12990 lm!2473 lt!1950903) key!5896))))))

(declare-fun bs!1154652 () Bool)

(assert (= bs!1154652 d!1532986))

(assert (=> bs!1154652 m!5772520))

(declare-fun m!5772670 () Bool)

(assert (=> bs!1154652 m!5772670))

(assert (=> b!4791841 d!1532986))

(declare-fun b!4791986 () Bool)

(declare-fun e!2991998 () Bool)

(assert (=> b!4791986 (= e!2991998 (not (containsKey!3940 (apply!12990 lm!2473 lt!1950903) key!5896)))))

(declare-fun b!4791987 () Bool)

(declare-fun e!2991997 () Bool)

(declare-fun lt!1950970 () Option!13088)

(declare-fun contains!17827 (List!54337 tuple2!56852) Bool)

(assert (=> b!4791987 (= e!2991997 (contains!17827 (apply!12990 lm!2473 lt!1950903) (get!18472 lt!1950970)))))

(declare-fun e!2992000 () Option!13088)

(declare-fun b!4791988 () Bool)

(assert (=> b!4791988 (= e!2992000 (getPair!893 (t!361787 (apply!12990 lm!2473 lt!1950903)) key!5896))))

(declare-fun b!4791989 () Bool)

(declare-fun e!2991999 () Bool)

(assert (=> b!4791989 (= e!2991999 e!2991997)))

(declare-fun res!2036723 () Bool)

(assert (=> b!4791989 (=> (not res!2036723) (not e!2991997))))

(assert (=> b!4791989 (= res!2036723 (isDefined!10230 lt!1950970))))

(declare-fun b!4791990 () Bool)

(declare-fun e!2992001 () Option!13088)

(assert (=> b!4791990 (= e!2992001 e!2992000)))

(declare-fun c!816727 () Bool)

(assert (=> b!4791990 (= c!816727 (is-Cons!54213 (apply!12990 lm!2473 lt!1950903)))))

(declare-fun b!4791991 () Bool)

(assert (=> b!4791991 (= e!2992001 (Some!13087 (h!60637 (apply!12990 lm!2473 lt!1950903))))))

(declare-fun d!1532988 () Bool)

(assert (=> d!1532988 e!2991999))

(declare-fun res!2036722 () Bool)

(assert (=> d!1532988 (=> res!2036722 e!2991999)))

(assert (=> d!1532988 (= res!2036722 e!2991998)))

(declare-fun res!2036724 () Bool)

(assert (=> d!1532988 (=> (not res!2036724) (not e!2991998))))

(assert (=> d!1532988 (= res!2036724 (isEmpty!29440 lt!1950970))))

(assert (=> d!1532988 (= lt!1950970 e!2992001)))

(declare-fun c!816726 () Bool)

(assert (=> d!1532988 (= c!816726 (and (is-Cons!54213 (apply!12990 lm!2473 lt!1950903)) (= (_1!31720 (h!60637 (apply!12990 lm!2473 lt!1950903))) key!5896)))))

(declare-fun noDuplicateKeys!2334 (List!54337) Bool)

(assert (=> d!1532988 (noDuplicateKeys!2334 (apply!12990 lm!2473 lt!1950903))))

(assert (=> d!1532988 (= (getPair!893 (apply!12990 lm!2473 lt!1950903) key!5896) lt!1950970)))

(declare-fun b!4791992 () Bool)

(declare-fun res!2036725 () Bool)

(assert (=> b!4791992 (=> (not res!2036725) (not e!2991997))))

(assert (=> b!4791992 (= res!2036725 (= (_1!31720 (get!18472 lt!1950970)) key!5896))))

(declare-fun b!4791993 () Bool)

(assert (=> b!4791993 (= e!2992000 None!13087)))

(assert (= (and d!1532988 c!816726) b!4791991))

(assert (= (and d!1532988 (not c!816726)) b!4791990))

(assert (= (and b!4791990 c!816727) b!4791988))

(assert (= (and b!4791990 (not c!816727)) b!4791993))

(assert (= (and d!1532988 res!2036724) b!4791986))

(assert (= (and d!1532988 (not res!2036722)) b!4791989))

(assert (= (and b!4791989 res!2036723) b!4791992))

(assert (= (and b!4791992 res!2036725) b!4791987))

(assert (=> b!4791986 m!5772518))

(declare-fun m!5772672 () Bool)

(assert (=> b!4791986 m!5772672))

(declare-fun m!5772674 () Bool)

(assert (=> b!4791989 m!5772674))

(declare-fun m!5772676 () Bool)

(assert (=> b!4791992 m!5772676))

(assert (=> b!4791987 m!5772676))

(assert (=> b!4791987 m!5772518))

(assert (=> b!4791987 m!5772676))

(declare-fun m!5772678 () Bool)

(assert (=> b!4791987 m!5772678))

(declare-fun m!5772680 () Bool)

(assert (=> d!1532988 m!5772680))

(assert (=> d!1532988 m!5772518))

(declare-fun m!5772682 () Bool)

(assert (=> d!1532988 m!5772682))

(declare-fun m!5772684 () Bool)

(assert (=> b!4791988 m!5772684))

(assert (=> b!4791841 d!1532988))

(declare-fun d!1532990 () Bool)

(declare-fun get!18473 (Option!13090) List!54337)

(assert (=> d!1532990 (= (apply!12990 lm!2473 lt!1950903) (get!18473 (getValueByKey!2343 (toList!6921 lm!2473) lt!1950903)))))

(declare-fun bs!1154653 () Bool)

(assert (= bs!1154653 d!1532990))

(assert (=> bs!1154653 m!5772584))

(assert (=> bs!1154653 m!5772584))

(declare-fun m!5772686 () Bool)

(assert (=> bs!1154653 m!5772686))

(assert (=> b!4791841 d!1532990))

(declare-fun b!4792006 () Bool)

(declare-fun e!2992008 () Bool)

(declare-fun tp!1358001 () Bool)

(declare-fun tp!1358002 () Bool)

(assert (=> b!4792006 (= e!2992008 (and tp!1358001 tp!1358002))))

(assert (=> b!4791840 (= tp!1357993 e!2992008)))

(assert (= (and b!4791840 (is-Cons!54214 (toList!6921 lm!2473))) b!4792006))

(declare-fun b_lambda!186573 () Bool)

(assert (= b_lambda!186571 (or start!493336 b_lambda!186573)))

(declare-fun bs!1154654 () Bool)

(declare-fun d!1532992 () Bool)

(assert (= bs!1154654 (and d!1532992 start!493336)))

(assert (=> bs!1154654 (= (dynLambda!22052 lambda!230444 (h!60638 (toList!6921 lm!2473))) (noDuplicateKeys!2334 (_2!31721 (h!60638 (toList!6921 lm!2473)))))))

(declare-fun m!5772688 () Bool)

(assert (=> bs!1154654 m!5772688))

(assert (=> b!4791867 d!1532992))

(push 1)

(assert (not d!1532986))

(assert (not b!4791903))

(assert (not d!1532974))

(assert (not bm!335008))

(assert (not b!4791895))

(assert (not b!4791884))

(assert (not d!1532956))

(assert (not d!1532972))

(assert (not b!4791969))

(assert (not b!4791954))

(assert (not b!4791951))

(assert (not d!1532982))

(assert (not d!1532988))

(assert (not b!4791875))

(assert (not b!4791955))

(assert (not b!4791989))

(assert (not b!4791868))

(assert (not b!4791953))

(assert tp_is_empty!33545)

(assert (not b!4791986))

(assert (not b!4791988))

(assert (not d!1532990))

(assert tp_is_empty!33547)

(assert (not b!4791949))

(assert (not bs!1154654))

(assert (not b!4791987))

(assert (not d!1532954))

(assert (not d!1532980))

(assert (not d!1532960))

(assert (not b!4791886))

(assert (not b!4791948))

(assert (not b!4792006))

(assert (not b!4791902))

(assert (not b_lambda!186573))

(assert (not b!4791877))

(assert (not b!4791947))

(assert (not d!1532964))

(assert (not b!4791904))

(assert (not b!4791992))

(assert (not b!4791960))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

