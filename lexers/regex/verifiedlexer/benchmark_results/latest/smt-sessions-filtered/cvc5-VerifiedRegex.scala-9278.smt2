; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!492460 () Bool)

(assert start!492460)

(declare-fun b!4787603 () Bool)

(declare-fun res!2034037 () Bool)

(declare-fun e!2989236 () Bool)

(assert (=> b!4787603 (=> (not res!2034037) (not e!2989236))))

(declare-datatypes ((K!15677 0))(
  ( (K!15678 (val!20847 Int)) )
))
(declare-datatypes ((V!15923 0))(
  ( (V!15924 (val!20848 Int)) )
))
(declare-datatypes ((tuple2!56668 0))(
  ( (tuple2!56669 (_1!31628 K!15677) (_2!31628 V!15923)) )
))
(declare-datatypes ((List!54235 0))(
  ( (Nil!54111) (Cons!54111 (h!60535 tuple2!56668) (t!361685 List!54235)) )
))
(declare-datatypes ((tuple2!56670 0))(
  ( (tuple2!56671 (_1!31629 (_ BitVec 64)) (_2!31629 List!54235)) )
))
(declare-datatypes ((List!54236 0))(
  ( (Nil!54112) (Cons!54112 (h!60536 tuple2!56670) (t!361686 List!54236)) )
))
(declare-datatypes ((ListLongMap!5251 0))(
  ( (ListLongMap!5252 (toList!6829 List!54236)) )
))
(declare-fun lm!2473 () ListLongMap!5251)

(declare-datatypes ((Hashable!6875 0))(
  ( (HashableExt!6874 (__x!32898 Int)) )
))
(declare-fun hashF!1559 () Hashable!6875)

(declare-fun allKeysSameHashInMap!2280 (ListLongMap!5251 Hashable!6875) Bool)

(assert (=> b!4787603 (= res!2034037 (allKeysSameHashInMap!2280 lm!2473 hashF!1559))))

(declare-fun b!4787604 () Bool)

(declare-fun res!2034043 () Bool)

(declare-fun e!2989235 () Bool)

(assert (=> b!4787604 (=> res!2034043 e!2989235)))

(declare-fun key!5896 () K!15677)

(declare-fun containsKey!3885 (List!54235 K!15677) Bool)

(assert (=> b!4787604 (= res!2034043 (containsKey!3885 (_2!31629 (h!60536 (toList!6829 lm!2473))) key!5896))))

(declare-fun b!4787605 () Bool)

(declare-fun isEmpty!29398 (ListLongMap!5251) Bool)

(assert (=> b!4787605 (= e!2989235 (not (isEmpty!29398 lm!2473)))))

(declare-fun e!2989237 () Bool)

(declare-fun lt!1948280 () (_ BitVec 64))

(declare-fun b!4787606 () Bool)

(declare-datatypes ((Option!13022 0))(
  ( (None!13021) (Some!13021 (v!48284 tuple2!56668)) )
))
(declare-fun isDefined!10164 (Option!13022) Bool)

(declare-fun getPair!847 (List!54235 K!15677) Option!13022)

(declare-fun apply!12936 (ListLongMap!5251 (_ BitVec 64)) List!54235)

(assert (=> b!4787606 (= e!2989237 (isDefined!10164 (getPair!847 (apply!12936 lm!2473 lt!1948280) key!5896)))))

(declare-fun b!4787607 () Bool)

(declare-fun res!2034038 () Bool)

(assert (=> b!4787607 (=> (not res!2034038) (not e!2989236))))

(declare-datatypes ((ListMap!6301 0))(
  ( (ListMap!6302 (toList!6830 List!54235)) )
))
(declare-fun contains!17702 (ListMap!6301 K!15677) Bool)

(declare-fun extractMap!2402 (List!54236) ListMap!6301)

(assert (=> b!4787607 (= res!2034038 (contains!17702 (extractMap!2402 (toList!6829 lm!2473)) key!5896))))

(declare-fun res!2034039 () Bool)

(assert (=> start!492460 (=> (not res!2034039) (not e!2989236))))

(declare-fun lambda!229592 () Int)

(declare-fun forall!12185 (List!54236 Int) Bool)

(assert (=> start!492460 (= res!2034039 (forall!12185 (toList!6829 lm!2473) lambda!229592))))

(assert (=> start!492460 e!2989236))

(declare-fun e!2989238 () Bool)

(declare-fun inv!69704 (ListLongMap!5251) Bool)

(assert (=> start!492460 (and (inv!69704 lm!2473) e!2989238)))

(assert (=> start!492460 true))

(declare-fun tp_is_empty!33381 () Bool)

(assert (=> start!492460 tp_is_empty!33381))

(declare-fun tp_is_empty!33383 () Bool)

(assert (=> start!492460 tp_is_empty!33383))

(declare-fun b!4787608 () Bool)

(declare-fun tp!1357755 () Bool)

(assert (=> b!4787608 (= e!2989238 tp!1357755)))

(declare-fun b!4787609 () Bool)

(declare-fun res!2034042 () Bool)

(assert (=> b!4787609 (=> res!2034042 e!2989235)))

(assert (=> b!4787609 (= res!2034042 (not (is-Cons!54112 (toList!6829 lm!2473))))))

(declare-fun b!4787610 () Bool)

(assert (=> b!4787610 (= e!2989236 (not e!2989235))))

(declare-fun res!2034041 () Bool)

(assert (=> b!4787610 (=> res!2034041 e!2989235)))

(declare-fun value!3111 () V!15923)

(declare-fun getValue!71 (List!54236 K!15677) V!15923)

(assert (=> b!4787610 (= res!2034041 (not (= (getValue!71 (toList!6829 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!525 (List!54236 K!15677) Bool)

(assert (=> b!4787610 (containsKeyBiggerList!525 (toList!6829 lm!2473) key!5896)))

(declare-datatypes ((Unit!139595 0))(
  ( (Unit!139596) )
))
(declare-fun lt!1948279 () Unit!139595)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!265 (ListLongMap!5251 K!15677 Hashable!6875) Unit!139595)

(assert (=> b!4787610 (= lt!1948279 (lemmaInLongMapThenContainsKeyBiggerList!265 lm!2473 key!5896 hashF!1559))))

(assert (=> b!4787610 e!2989237))

(declare-fun res!2034040 () Bool)

(assert (=> b!4787610 (=> (not res!2034040) (not e!2989237))))

(declare-fun contains!17703 (ListLongMap!5251 (_ BitVec 64)) Bool)

(assert (=> b!4787610 (= res!2034040 (contains!17703 lm!2473 lt!1948280))))

(declare-fun hash!4897 (Hashable!6875 K!15677) (_ BitVec 64))

(assert (=> b!4787610 (= lt!1948280 (hash!4897 hashF!1559 key!5896))))

(declare-fun lt!1948278 () Unit!139595)

(declare-fun lemmaInGenericMapThenInLongMap!279 (ListLongMap!5251 K!15677 Hashable!6875) Unit!139595)

(assert (=> b!4787610 (= lt!1948278 (lemmaInGenericMapThenInLongMap!279 lm!2473 key!5896 hashF!1559))))

(assert (= (and start!492460 res!2034039) b!4787603))

(assert (= (and b!4787603 res!2034037) b!4787607))

(assert (= (and b!4787607 res!2034038) b!4787610))

(assert (= (and b!4787610 res!2034040) b!4787606))

(assert (= (and b!4787610 (not res!2034041)) b!4787609))

(assert (= (and b!4787609 (not res!2034042)) b!4787604))

(assert (= (and b!4787604 (not res!2034043)) b!4787605))

(assert (= start!492460 b!4787608))

(declare-fun m!5766966 () Bool)

(assert (=> b!4787610 m!5766966))

(declare-fun m!5766968 () Bool)

(assert (=> b!4787610 m!5766968))

(declare-fun m!5766970 () Bool)

(assert (=> b!4787610 m!5766970))

(declare-fun m!5766972 () Bool)

(assert (=> b!4787610 m!5766972))

(declare-fun m!5766974 () Bool)

(assert (=> b!4787610 m!5766974))

(declare-fun m!5766976 () Bool)

(assert (=> b!4787610 m!5766976))

(declare-fun m!5766978 () Bool)

(assert (=> start!492460 m!5766978))

(declare-fun m!5766980 () Bool)

(assert (=> start!492460 m!5766980))

(declare-fun m!5766982 () Bool)

(assert (=> b!4787606 m!5766982))

(assert (=> b!4787606 m!5766982))

(declare-fun m!5766984 () Bool)

(assert (=> b!4787606 m!5766984))

(assert (=> b!4787606 m!5766984))

(declare-fun m!5766986 () Bool)

(assert (=> b!4787606 m!5766986))

(declare-fun m!5766988 () Bool)

(assert (=> b!4787607 m!5766988))

(assert (=> b!4787607 m!5766988))

(declare-fun m!5766990 () Bool)

(assert (=> b!4787607 m!5766990))

(declare-fun m!5766992 () Bool)

(assert (=> b!4787604 m!5766992))

(declare-fun m!5766994 () Bool)

(assert (=> b!4787605 m!5766994))

(declare-fun m!5766996 () Bool)

(assert (=> b!4787603 m!5766996))

(push 1)

(assert (not b!4787606))

(assert (not b!4787607))

(assert (not b!4787603))

(assert (not b!4787605))

(assert (not b!4787604))

(assert tp_is_empty!33383)

(assert (not start!492460))

(assert tp_is_empty!33381)

(assert (not b!4787608))

(assert (not b!4787610))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1531465 () Bool)

(declare-fun isEmpty!29400 (Option!13022) Bool)

(assert (=> d!1531465 (= (isDefined!10164 (getPair!847 (apply!12936 lm!2473 lt!1948280) key!5896)) (not (isEmpty!29400 (getPair!847 (apply!12936 lm!2473 lt!1948280) key!5896))))))

(declare-fun bs!1153788 () Bool)

(assert (= bs!1153788 d!1531465))

(assert (=> bs!1153788 m!5766984))

(declare-fun m!5767030 () Bool)

(assert (=> bs!1153788 m!5767030))

(assert (=> b!4787606 d!1531465))

(declare-fun b!4787651 () Bool)

(declare-fun e!2989264 () Option!13022)

(assert (=> b!4787651 (= e!2989264 (Some!13021 (h!60535 (apply!12936 lm!2473 lt!1948280))))))

(declare-fun b!4787652 () Bool)

(declare-fun e!2989263 () Bool)

(declare-fun e!2989261 () Bool)

(assert (=> b!4787652 (= e!2989263 e!2989261)))

(declare-fun res!2034076 () Bool)

(assert (=> b!4787652 (=> (not res!2034076) (not e!2989261))))

(declare-fun lt!1948292 () Option!13022)

(assert (=> b!4787652 (= res!2034076 (isDefined!10164 lt!1948292))))

(declare-fun b!4787654 () Bool)

(declare-fun res!2034074 () Bool)

(assert (=> b!4787654 (=> (not res!2034074) (not e!2989261))))

(declare-fun get!18427 (Option!13022) tuple2!56668)

(assert (=> b!4787654 (= res!2034074 (= (_1!31628 (get!18427 lt!1948292)) key!5896))))

(declare-fun b!4787655 () Bool)

(declare-fun e!2989262 () Option!13022)

(assert (=> b!4787655 (= e!2989262 (getPair!847 (t!361685 (apply!12936 lm!2473 lt!1948280)) key!5896))))

(declare-fun b!4787656 () Bool)

(declare-fun contains!17706 (List!54235 tuple2!56668) Bool)

(assert (=> b!4787656 (= e!2989261 (contains!17706 (apply!12936 lm!2473 lt!1948280) (get!18427 lt!1948292)))))

(declare-fun b!4787657 () Bool)

(assert (=> b!4787657 (= e!2989262 None!13021)))

(declare-fun e!2989265 () Bool)

(declare-fun b!4787658 () Bool)

(assert (=> b!4787658 (= e!2989265 (not (containsKey!3885 (apply!12936 lm!2473 lt!1948280) key!5896)))))

(declare-fun d!1531467 () Bool)

(assert (=> d!1531467 e!2989263))

(declare-fun res!2034073 () Bool)

(assert (=> d!1531467 (=> res!2034073 e!2989263)))

(assert (=> d!1531467 (= res!2034073 e!2989265)))

(declare-fun res!2034075 () Bool)

(assert (=> d!1531467 (=> (not res!2034075) (not e!2989265))))

(assert (=> d!1531467 (= res!2034075 (isEmpty!29400 lt!1948292))))

(assert (=> d!1531467 (= lt!1948292 e!2989264)))

(declare-fun c!816037 () Bool)

(assert (=> d!1531467 (= c!816037 (and (is-Cons!54111 (apply!12936 lm!2473 lt!1948280)) (= (_1!31628 (h!60535 (apply!12936 lm!2473 lt!1948280))) key!5896)))))

(declare-fun noDuplicateKeys!2318 (List!54235) Bool)

(assert (=> d!1531467 (noDuplicateKeys!2318 (apply!12936 lm!2473 lt!1948280))))

(assert (=> d!1531467 (= (getPair!847 (apply!12936 lm!2473 lt!1948280) key!5896) lt!1948292)))

(declare-fun b!4787653 () Bool)

(assert (=> b!4787653 (= e!2989264 e!2989262)))

(declare-fun c!816036 () Bool)

(assert (=> b!4787653 (= c!816036 (is-Cons!54111 (apply!12936 lm!2473 lt!1948280)))))

(assert (= (and d!1531467 c!816037) b!4787651))

(assert (= (and d!1531467 (not c!816037)) b!4787653))

(assert (= (and b!4787653 c!816036) b!4787655))

(assert (= (and b!4787653 (not c!816036)) b!4787657))

(assert (= (and d!1531467 res!2034075) b!4787658))

(assert (= (and d!1531467 (not res!2034073)) b!4787652))

(assert (= (and b!4787652 res!2034076) b!4787654))

(assert (= (and b!4787654 res!2034074) b!4787656))

(declare-fun m!5767032 () Bool)

(assert (=> b!4787655 m!5767032))

(declare-fun m!5767034 () Bool)

(assert (=> b!4787652 m!5767034))

(declare-fun m!5767036 () Bool)

(assert (=> b!4787656 m!5767036))

(assert (=> b!4787656 m!5766982))

(assert (=> b!4787656 m!5767036))

(declare-fun m!5767038 () Bool)

(assert (=> b!4787656 m!5767038))

(declare-fun m!5767040 () Bool)

(assert (=> d!1531467 m!5767040))

(assert (=> d!1531467 m!5766982))

(declare-fun m!5767042 () Bool)

(assert (=> d!1531467 m!5767042))

(assert (=> b!4787654 m!5767036))

(assert (=> b!4787658 m!5766982))

(declare-fun m!5767044 () Bool)

(assert (=> b!4787658 m!5767044))

(assert (=> b!4787606 d!1531467))

(declare-fun d!1531469 () Bool)

(declare-datatypes ((Option!13024 0))(
  ( (None!13023) (Some!13023 (v!48286 List!54235)) )
))
(declare-fun get!18428 (Option!13024) List!54235)

(declare-fun getValueByKey!2323 (List!54236 (_ BitVec 64)) Option!13024)

(assert (=> d!1531469 (= (apply!12936 lm!2473 lt!1948280) (get!18428 (getValueByKey!2323 (toList!6829 lm!2473) lt!1948280)))))

(declare-fun bs!1153789 () Bool)

(assert (= bs!1153789 d!1531469))

(declare-fun m!5767046 () Bool)

(assert (=> bs!1153789 m!5767046))

(assert (=> bs!1153789 m!5767046))

(declare-fun m!5767048 () Bool)

(assert (=> bs!1153789 m!5767048))

(assert (=> b!4787606 d!1531469))

(declare-fun d!1531471 () Bool)

(declare-fun isEmpty!29401 (List!54236) Bool)

(assert (=> d!1531471 (= (isEmpty!29398 lm!2473) (isEmpty!29401 (toList!6829 lm!2473)))))

(declare-fun bs!1153790 () Bool)

(assert (= bs!1153790 d!1531471))

(declare-fun m!5767050 () Bool)

(assert (=> bs!1153790 m!5767050))

(assert (=> b!4787605 d!1531471))

(declare-fun b!4787677 () Bool)

(declare-fun e!2989278 () Bool)

(declare-datatypes ((List!54239 0))(
  ( (Nil!54115) (Cons!54115 (h!60539 K!15677) (t!361689 List!54239)) )
))
(declare-fun contains!17707 (List!54239 K!15677) Bool)

(declare-fun keys!19737 (ListMap!6301) List!54239)

(assert (=> b!4787677 (= e!2989278 (not (contains!17707 (keys!19737 (extractMap!2402 (toList!6829 lm!2473))) key!5896)))))

(declare-fun b!4787678 () Bool)

(declare-fun e!2989279 () Unit!139595)

(declare-fun e!2989281 () Unit!139595)

(assert (=> b!4787678 (= e!2989279 e!2989281)))

(declare-fun c!816045 () Bool)

(declare-fun call!334891 () Bool)

(assert (=> b!4787678 (= c!816045 call!334891)))

(declare-fun b!4787679 () Bool)

(declare-fun e!2989283 () List!54239)

(assert (=> b!4787679 (= e!2989283 (keys!19737 (extractMap!2402 (toList!6829 lm!2473))))))

(declare-fun bm!334886 () Bool)

(assert (=> bm!334886 (= call!334891 (contains!17707 e!2989283 key!5896))))

(declare-fun c!816044 () Bool)

(declare-fun c!816046 () Bool)

(assert (=> bm!334886 (= c!816044 c!816046)))

(declare-fun d!1531473 () Bool)

(declare-fun e!2989280 () Bool)

(assert (=> d!1531473 e!2989280))

(declare-fun res!2034084 () Bool)

(assert (=> d!1531473 (=> res!2034084 e!2989280)))

(assert (=> d!1531473 (= res!2034084 e!2989278)))

(declare-fun res!2034083 () Bool)

(assert (=> d!1531473 (=> (not res!2034083) (not e!2989278))))

(declare-fun lt!1948317 () Bool)

(assert (=> d!1531473 (= res!2034083 (not lt!1948317))))

(declare-fun lt!1948311 () Bool)

(assert (=> d!1531473 (= lt!1948317 lt!1948311)))

(declare-fun lt!1948314 () Unit!139595)

(assert (=> d!1531473 (= lt!1948314 e!2989279)))

(assert (=> d!1531473 (= c!816046 lt!1948311)))

(declare-fun containsKey!3887 (List!54235 K!15677) Bool)

(assert (=> d!1531473 (= lt!1948311 (containsKey!3887 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))) key!5896))))

(assert (=> d!1531473 (= (contains!17702 (extractMap!2402 (toList!6829 lm!2473)) key!5896) lt!1948317)))

(declare-fun b!4787680 () Bool)

(declare-fun e!2989282 () Bool)

(assert (=> b!4787680 (= e!2989280 e!2989282)))

(declare-fun res!2034085 () Bool)

(assert (=> b!4787680 (=> (not res!2034085) (not e!2989282))))

(declare-datatypes ((Option!13025 0))(
  ( (None!13024) (Some!13024 (v!48287 V!15923)) )
))
(declare-fun isDefined!10166 (Option!13025) Bool)

(declare-fun getValueByKey!2324 (List!54235 K!15677) Option!13025)

(assert (=> b!4787680 (= res!2034085 (isDefined!10166 (getValueByKey!2324 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))) key!5896)))))

(declare-fun b!4787681 () Bool)

(declare-fun Unit!139599 () Unit!139595)

(assert (=> b!4787681 (= e!2989281 Unit!139599)))

(declare-fun b!4787682 () Bool)

(declare-fun getKeysList!1062 (List!54235) List!54239)

(assert (=> b!4787682 (= e!2989283 (getKeysList!1062 (toList!6830 (extractMap!2402 (toList!6829 lm!2473)))))))

(declare-fun b!4787683 () Bool)

(assert (=> b!4787683 (= e!2989282 (contains!17707 (keys!19737 (extractMap!2402 (toList!6829 lm!2473))) key!5896))))

(declare-fun b!4787684 () Bool)

(assert (=> b!4787684 false))

(declare-fun lt!1948315 () Unit!139595)

(declare-fun lt!1948313 () Unit!139595)

(assert (=> b!4787684 (= lt!1948315 lt!1948313)))

(assert (=> b!4787684 (containsKey!3887 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))) key!5896)))

(declare-fun lemmaInGetKeysListThenContainsKey!1062 (List!54235 K!15677) Unit!139595)

(assert (=> b!4787684 (= lt!1948313 (lemmaInGetKeysListThenContainsKey!1062 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))) key!5896))))

(declare-fun Unit!139600 () Unit!139595)

(assert (=> b!4787684 (= e!2989281 Unit!139600)))

(declare-fun b!4787685 () Bool)

(declare-fun lt!1948318 () Unit!139595)

(assert (=> b!4787685 (= e!2989279 lt!1948318)))

(declare-fun lt!1948312 () Unit!139595)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2115 (List!54235 K!15677) Unit!139595)

(assert (=> b!4787685 (= lt!1948312 (lemmaContainsKeyImpliesGetValueByKeyDefined!2115 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))) key!5896))))

(assert (=> b!4787685 (isDefined!10166 (getValueByKey!2324 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))) key!5896))))

(declare-fun lt!1948316 () Unit!139595)

(assert (=> b!4787685 (= lt!1948316 lt!1948312)))

(declare-fun lemmaInListThenGetKeysListContains!1057 (List!54235 K!15677) Unit!139595)

(assert (=> b!4787685 (= lt!1948318 (lemmaInListThenGetKeysListContains!1057 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))) key!5896))))

(assert (=> b!4787685 call!334891))

(assert (= (and d!1531473 c!816046) b!4787685))

(assert (= (and d!1531473 (not c!816046)) b!4787678))

(assert (= (and b!4787678 c!816045) b!4787684))

(assert (= (and b!4787678 (not c!816045)) b!4787681))

(assert (= (or b!4787685 b!4787678) bm!334886))

(assert (= (and bm!334886 c!816044) b!4787682))

(assert (= (and bm!334886 (not c!816044)) b!4787679))

(assert (= (and d!1531473 res!2034083) b!4787677))

(assert (= (and d!1531473 (not res!2034084)) b!4787680))

(assert (= (and b!4787680 res!2034085) b!4787683))

(declare-fun m!5767054 () Bool)

(assert (=> b!4787685 m!5767054))

(declare-fun m!5767056 () Bool)

(assert (=> b!4787685 m!5767056))

(assert (=> b!4787685 m!5767056))

(declare-fun m!5767058 () Bool)

(assert (=> b!4787685 m!5767058))

(declare-fun m!5767060 () Bool)

(assert (=> b!4787685 m!5767060))

(assert (=> b!4787679 m!5766988))

(declare-fun m!5767062 () Bool)

(assert (=> b!4787679 m!5767062))

(declare-fun m!5767064 () Bool)

(assert (=> b!4787682 m!5767064))

(assert (=> b!4787683 m!5766988))

(assert (=> b!4787683 m!5767062))

(assert (=> b!4787683 m!5767062))

(declare-fun m!5767066 () Bool)

(assert (=> b!4787683 m!5767066))

(declare-fun m!5767068 () Bool)

(assert (=> b!4787684 m!5767068))

(declare-fun m!5767070 () Bool)

(assert (=> b!4787684 m!5767070))

(assert (=> d!1531473 m!5767068))

(assert (=> b!4787680 m!5767056))

(assert (=> b!4787680 m!5767056))

(assert (=> b!4787680 m!5767058))

(declare-fun m!5767072 () Bool)

(assert (=> bm!334886 m!5767072))

(assert (=> b!4787677 m!5766988))

(assert (=> b!4787677 m!5767062))

(assert (=> b!4787677 m!5767062))

(assert (=> b!4787677 m!5767066))

(assert (=> b!4787607 d!1531473))

(declare-fun bs!1153792 () Bool)

(declare-fun d!1531479 () Bool)

(assert (= bs!1153792 (and d!1531479 start!492460)))

(declare-fun lambda!229598 () Int)

(assert (=> bs!1153792 (= lambda!229598 lambda!229592)))

(declare-fun lt!1948322 () ListMap!6301)

(declare-fun invariantList!1716 (List!54235) Bool)

(assert (=> d!1531479 (invariantList!1716 (toList!6830 lt!1948322))))

(declare-fun e!2989301 () ListMap!6301)

(assert (=> d!1531479 (= lt!1948322 e!2989301)))

(declare-fun c!816055 () Bool)

(assert (=> d!1531479 (= c!816055 (is-Cons!54112 (toList!6829 lm!2473)))))

(assert (=> d!1531479 (forall!12185 (toList!6829 lm!2473) lambda!229598)))

(assert (=> d!1531479 (= (extractMap!2402 (toList!6829 lm!2473)) lt!1948322)))

(declare-fun b!4787714 () Bool)

(declare-fun addToMapMapFromBucket!1687 (List!54235 ListMap!6301) ListMap!6301)

(assert (=> b!4787714 (= e!2989301 (addToMapMapFromBucket!1687 (_2!31629 (h!60536 (toList!6829 lm!2473))) (extractMap!2402 (t!361686 (toList!6829 lm!2473)))))))

(declare-fun b!4787715 () Bool)

(assert (=> b!4787715 (= e!2989301 (ListMap!6302 Nil!54111))))

(assert (= (and d!1531479 c!816055) b!4787714))

(assert (= (and d!1531479 (not c!816055)) b!4787715))

(declare-fun m!5767088 () Bool)

(assert (=> d!1531479 m!5767088))

(declare-fun m!5767090 () Bool)

(assert (=> d!1531479 m!5767090))

(declare-fun m!5767092 () Bool)

(assert (=> b!4787714 m!5767092))

(assert (=> b!4787714 m!5767092))

(declare-fun m!5767094 () Bool)

(assert (=> b!4787714 m!5767094))

(assert (=> b!4787607 d!1531479))

(declare-fun bs!1153794 () Bool)

(declare-fun d!1531483 () Bool)

(assert (= bs!1153794 (and d!1531483 start!492460)))

(declare-fun lambda!229601 () Int)

(assert (=> bs!1153794 (not (= lambda!229601 lambda!229592))))

(declare-fun bs!1153795 () Bool)

(assert (= bs!1153795 (and d!1531483 d!1531479)))

(assert (=> bs!1153795 (not (= lambda!229601 lambda!229598))))

(assert (=> d!1531483 true))

(assert (=> d!1531483 (= (allKeysSameHashInMap!2280 lm!2473 hashF!1559) (forall!12185 (toList!6829 lm!2473) lambda!229601))))

(declare-fun bs!1153796 () Bool)

(assert (= bs!1153796 d!1531483))

(declare-fun m!5767100 () Bool)

(assert (=> bs!1153796 m!5767100))

(assert (=> b!4787603 d!1531483))

(declare-fun d!1531487 () Bool)

(declare-fun res!2034105 () Bool)

(declare-fun e!2989308 () Bool)

(assert (=> d!1531487 (=> res!2034105 e!2989308)))

(declare-fun e!2989309 () Bool)

(assert (=> d!1531487 (= res!2034105 e!2989309)))

(declare-fun res!2034106 () Bool)

(assert (=> d!1531487 (=> (not res!2034106) (not e!2989309))))

(assert (=> d!1531487 (= res!2034106 (is-Cons!54112 (toList!6829 lm!2473)))))

(assert (=> d!1531487 (= (containsKeyBiggerList!525 (toList!6829 lm!2473) key!5896) e!2989308)))

(declare-fun b!4787724 () Bool)

(assert (=> b!4787724 (= e!2989309 (containsKey!3885 (_2!31629 (h!60536 (toList!6829 lm!2473))) key!5896))))

(declare-fun b!4787725 () Bool)

(declare-fun e!2989310 () Bool)

(assert (=> b!4787725 (= e!2989308 e!2989310)))

(declare-fun res!2034104 () Bool)

(assert (=> b!4787725 (=> (not res!2034104) (not e!2989310))))

(assert (=> b!4787725 (= res!2034104 (is-Cons!54112 (toList!6829 lm!2473)))))

(declare-fun b!4787726 () Bool)

(assert (=> b!4787726 (= e!2989310 (containsKeyBiggerList!525 (t!361686 (toList!6829 lm!2473)) key!5896))))

(assert (= (and d!1531487 res!2034106) b!4787724))

(assert (= (and d!1531487 (not res!2034105)) b!4787725))

(assert (= (and b!4787725 res!2034104) b!4787726))

(assert (=> b!4787724 m!5766992))

(declare-fun m!5767102 () Bool)

(assert (=> b!4787726 m!5767102))

(assert (=> b!4787610 d!1531487))

(declare-fun bs!1153797 () Bool)

(declare-fun d!1531489 () Bool)

(assert (= bs!1153797 (and d!1531489 start!492460)))

(declare-fun lambda!229604 () Int)

(assert (=> bs!1153797 (= lambda!229604 lambda!229592)))

(declare-fun bs!1153798 () Bool)

(assert (= bs!1153798 (and d!1531489 d!1531479)))

(assert (=> bs!1153798 (= lambda!229604 lambda!229598)))

(declare-fun bs!1153799 () Bool)

(assert (= bs!1153799 (and d!1531489 d!1531483)))

(assert (=> bs!1153799 (not (= lambda!229604 lambda!229601))))

(assert (=> d!1531489 (containsKeyBiggerList!525 (toList!6829 lm!2473) key!5896)))

(declare-fun lt!1948325 () Unit!139595)

(declare-fun choose!34429 (ListLongMap!5251 K!15677 Hashable!6875) Unit!139595)

(assert (=> d!1531489 (= lt!1948325 (choose!34429 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1531489 (forall!12185 (toList!6829 lm!2473) lambda!229604)))

(assert (=> d!1531489 (= (lemmaInLongMapThenContainsKeyBiggerList!265 lm!2473 key!5896 hashF!1559) lt!1948325)))

(declare-fun bs!1153800 () Bool)

(assert (= bs!1153800 d!1531489))

(assert (=> bs!1153800 m!5766966))

(declare-fun m!5767104 () Bool)

(assert (=> bs!1153800 m!5767104))

(declare-fun m!5767106 () Bool)

(assert (=> bs!1153800 m!5767106))

(assert (=> b!4787610 d!1531489))

(declare-fun bs!1153801 () Bool)

(declare-fun d!1531491 () Bool)

(assert (= bs!1153801 (and d!1531491 start!492460)))

(declare-fun lambda!229607 () Int)

(assert (=> bs!1153801 (= lambda!229607 lambda!229592)))

(declare-fun bs!1153802 () Bool)

(assert (= bs!1153802 (and d!1531491 d!1531479)))

(assert (=> bs!1153802 (= lambda!229607 lambda!229598)))

(declare-fun bs!1153803 () Bool)

(assert (= bs!1153803 (and d!1531491 d!1531483)))

(assert (=> bs!1153803 (not (= lambda!229607 lambda!229601))))

(declare-fun bs!1153804 () Bool)

(assert (= bs!1153804 (and d!1531491 d!1531489)))

(assert (=> bs!1153804 (= lambda!229607 lambda!229604)))

(declare-fun e!2989317 () Bool)

(assert (=> d!1531491 e!2989317))

(declare-fun res!2034111 () Bool)

(assert (=> d!1531491 (=> (not res!2034111) (not e!2989317))))

(assert (=> d!1531491 (= res!2034111 (contains!17703 lm!2473 (hash!4897 hashF!1559 key!5896)))))

(declare-fun lt!1948336 () Unit!139595)

(declare-fun choose!34430 (ListLongMap!5251 K!15677 Hashable!6875) Unit!139595)

(assert (=> d!1531491 (= lt!1948336 (choose!34430 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1531491 (forall!12185 (toList!6829 lm!2473) lambda!229607)))

(assert (=> d!1531491 (= (lemmaInGenericMapThenInLongMap!279 lm!2473 key!5896 hashF!1559) lt!1948336)))

(declare-fun b!4787735 () Bool)

(assert (=> b!4787735 (= e!2989317 (isDefined!10164 (getPair!847 (apply!12936 lm!2473 (hash!4897 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1531491 res!2034111) b!4787735))

(assert (=> d!1531491 m!5766968))

(assert (=> d!1531491 m!5766968))

(declare-fun m!5767108 () Bool)

(assert (=> d!1531491 m!5767108))

(declare-fun m!5767110 () Bool)

(assert (=> d!1531491 m!5767110))

(declare-fun m!5767112 () Bool)

(assert (=> d!1531491 m!5767112))

(assert (=> b!4787735 m!5766968))

(assert (=> b!4787735 m!5766968))

(declare-fun m!5767114 () Bool)

(assert (=> b!4787735 m!5767114))

(assert (=> b!4787735 m!5767114))

(declare-fun m!5767116 () Bool)

(assert (=> b!4787735 m!5767116))

(assert (=> b!4787735 m!5767116))

(declare-fun m!5767118 () Bool)

(assert (=> b!4787735 m!5767118))

(assert (=> b!4787610 d!1531491))

(declare-fun d!1531493 () Bool)

(declare-fun c!816061 () Bool)

(declare-fun e!2989325 () Bool)

(assert (=> d!1531493 (= c!816061 e!2989325)))

(declare-fun res!2034115 () Bool)

(assert (=> d!1531493 (=> (not res!2034115) (not e!2989325))))

(assert (=> d!1531493 (= res!2034115 (is-Cons!54112 (toList!6829 lm!2473)))))

(declare-fun e!2989324 () V!15923)

(assert (=> d!1531493 (= (getValue!71 (toList!6829 lm!2473) key!5896) e!2989324)))

(declare-fun b!4787747 () Bool)

(assert (=> b!4787747 (= e!2989325 (containsKey!3885 (_2!31629 (h!60536 (toList!6829 lm!2473))) key!5896))))

(declare-fun b!4787745 () Bool)

(assert (=> b!4787745 (= e!2989324 (_2!31628 (get!18427 (getPair!847 (_2!31629 (h!60536 (toList!6829 lm!2473))) key!5896))))))

(declare-fun b!4787746 () Bool)

(assert (=> b!4787746 (= e!2989324 (getValue!71 (t!361686 (toList!6829 lm!2473)) key!5896))))

(assert (= (and d!1531493 res!2034115) b!4787747))

(assert (= (and d!1531493 c!816061) b!4787745))

(assert (= (and d!1531493 (not c!816061)) b!4787746))

(assert (=> b!4787747 m!5766992))

(declare-fun m!5767126 () Bool)

(assert (=> b!4787745 m!5767126))

(assert (=> b!4787745 m!5767126))

(declare-fun m!5767128 () Bool)

(assert (=> b!4787745 m!5767128))

(declare-fun m!5767130 () Bool)

(assert (=> b!4787746 m!5767130))

(assert (=> b!4787610 d!1531493))

(declare-fun d!1531497 () Bool)

(declare-fun hash!4899 (Hashable!6875 K!15677) (_ BitVec 64))

(assert (=> d!1531497 (= (hash!4897 hashF!1559 key!5896) (hash!4899 hashF!1559 key!5896))))

(declare-fun bs!1153805 () Bool)

(assert (= bs!1153805 d!1531497))

(declare-fun m!5767132 () Bool)

(assert (=> bs!1153805 m!5767132))

(assert (=> b!4787610 d!1531497))

(declare-fun d!1531499 () Bool)

(declare-fun e!2989339 () Bool)

(assert (=> d!1531499 e!2989339))

(declare-fun res!2034127 () Bool)

(assert (=> d!1531499 (=> res!2034127 e!2989339)))

(declare-fun lt!1948349 () Bool)

(assert (=> d!1531499 (= res!2034127 (not lt!1948349))))

(declare-fun lt!1948351 () Bool)

(assert (=> d!1531499 (= lt!1948349 lt!1948351)))

(declare-fun lt!1948350 () Unit!139595)

(declare-fun e!2989340 () Unit!139595)

(assert (=> d!1531499 (= lt!1948350 e!2989340)))

(declare-fun c!816064 () Bool)

(assert (=> d!1531499 (= c!816064 lt!1948351)))

(declare-fun containsKey!3888 (List!54236 (_ BitVec 64)) Bool)

(assert (=> d!1531499 (= lt!1948351 (containsKey!3888 (toList!6829 lm!2473) lt!1948280))))

(assert (=> d!1531499 (= (contains!17703 lm!2473 lt!1948280) lt!1948349)))

(declare-fun b!4787763 () Bool)

(declare-fun lt!1948352 () Unit!139595)

(assert (=> b!4787763 (= e!2989340 lt!1948352)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2116 (List!54236 (_ BitVec 64)) Unit!139595)

(assert (=> b!4787763 (= lt!1948352 (lemmaContainsKeyImpliesGetValueByKeyDefined!2116 (toList!6829 lm!2473) lt!1948280))))

(declare-fun isDefined!10167 (Option!13024) Bool)

(assert (=> b!4787763 (isDefined!10167 (getValueByKey!2323 (toList!6829 lm!2473) lt!1948280))))

(declare-fun b!4787764 () Bool)

(declare-fun Unit!139601 () Unit!139595)

(assert (=> b!4787764 (= e!2989340 Unit!139601)))

(declare-fun b!4787765 () Bool)

(assert (=> b!4787765 (= e!2989339 (isDefined!10167 (getValueByKey!2323 (toList!6829 lm!2473) lt!1948280)))))

(assert (= (and d!1531499 c!816064) b!4787763))

(assert (= (and d!1531499 (not c!816064)) b!4787764))

(assert (= (and d!1531499 (not res!2034127)) b!4787765))

(declare-fun m!5767136 () Bool)

(assert (=> d!1531499 m!5767136))

(declare-fun m!5767138 () Bool)

(assert (=> b!4787763 m!5767138))

(assert (=> b!4787763 m!5767046))

(assert (=> b!4787763 m!5767046))

(declare-fun m!5767140 () Bool)

(assert (=> b!4787763 m!5767140))

(assert (=> b!4787765 m!5767046))

(assert (=> b!4787765 m!5767046))

(assert (=> b!4787765 m!5767140))

(assert (=> b!4787610 d!1531499))

(declare-fun d!1531503 () Bool)

(declare-fun res!2034132 () Bool)

(declare-fun e!2989345 () Bool)

(assert (=> d!1531503 (=> res!2034132 e!2989345)))

(assert (=> d!1531503 (= res!2034132 (and (is-Cons!54111 (_2!31629 (h!60536 (toList!6829 lm!2473)))) (= (_1!31628 (h!60535 (_2!31629 (h!60536 (toList!6829 lm!2473))))) key!5896)))))

(assert (=> d!1531503 (= (containsKey!3885 (_2!31629 (h!60536 (toList!6829 lm!2473))) key!5896) e!2989345)))

(declare-fun b!4787770 () Bool)

(declare-fun e!2989346 () Bool)

(assert (=> b!4787770 (= e!2989345 e!2989346)))

(declare-fun res!2034133 () Bool)

(assert (=> b!4787770 (=> (not res!2034133) (not e!2989346))))

(assert (=> b!4787770 (= res!2034133 (is-Cons!54111 (_2!31629 (h!60536 (toList!6829 lm!2473)))))))

(declare-fun b!4787771 () Bool)

(assert (=> b!4787771 (= e!2989346 (containsKey!3885 (t!361685 (_2!31629 (h!60536 (toList!6829 lm!2473)))) key!5896))))

(assert (= (and d!1531503 (not res!2034132)) b!4787770))

(assert (= (and b!4787770 res!2034133) b!4787771))

(declare-fun m!5767142 () Bool)

(assert (=> b!4787771 m!5767142))

(assert (=> b!4787604 d!1531503))

(declare-fun d!1531505 () Bool)

(declare-fun res!2034138 () Bool)

(declare-fun e!2989351 () Bool)

(assert (=> d!1531505 (=> res!2034138 e!2989351)))

(assert (=> d!1531505 (= res!2034138 (is-Nil!54112 (toList!6829 lm!2473)))))

(assert (=> d!1531505 (= (forall!12185 (toList!6829 lm!2473) lambda!229592) e!2989351)))

(declare-fun b!4787776 () Bool)

(declare-fun e!2989352 () Bool)

(assert (=> b!4787776 (= e!2989351 e!2989352)))

(declare-fun res!2034139 () Bool)

(assert (=> b!4787776 (=> (not res!2034139) (not e!2989352))))

(declare-fun dynLambda!22042 (Int tuple2!56670) Bool)

(assert (=> b!4787776 (= res!2034139 (dynLambda!22042 lambda!229592 (h!60536 (toList!6829 lm!2473))))))

(declare-fun b!4787777 () Bool)

(assert (=> b!4787777 (= e!2989352 (forall!12185 (t!361686 (toList!6829 lm!2473)) lambda!229592))))

(assert (= (and d!1531505 (not res!2034138)) b!4787776))

(assert (= (and b!4787776 res!2034139) b!4787777))

(declare-fun b_lambda!186323 () Bool)

(assert (=> (not b_lambda!186323) (not b!4787776)))

(declare-fun m!5767144 () Bool)

(assert (=> b!4787776 m!5767144))

(declare-fun m!5767146 () Bool)

(assert (=> b!4787777 m!5767146))

(assert (=> start!492460 d!1531505))

(declare-fun d!1531507 () Bool)

(declare-fun isStrictlySorted!864 (List!54236) Bool)

(assert (=> d!1531507 (= (inv!69704 lm!2473) (isStrictlySorted!864 (toList!6829 lm!2473)))))

(declare-fun bs!1153806 () Bool)

(assert (= bs!1153806 d!1531507))

(declare-fun m!5767148 () Bool)

(assert (=> bs!1153806 m!5767148))

(assert (=> start!492460 d!1531507))

(declare-fun b!4787782 () Bool)

(declare-fun e!2989355 () Bool)

(declare-fun tp!1357763 () Bool)

(declare-fun tp!1357764 () Bool)

(assert (=> b!4787782 (= e!2989355 (and tp!1357763 tp!1357764))))

(assert (=> b!4787608 (= tp!1357755 e!2989355)))

(assert (= (and b!4787608 (is-Cons!54112 (toList!6829 lm!2473))) b!4787782))

(declare-fun b_lambda!186325 () Bool)

(assert (= b_lambda!186323 (or start!492460 b_lambda!186325)))

(declare-fun bs!1153807 () Bool)

(declare-fun d!1531509 () Bool)

(assert (= bs!1153807 (and d!1531509 start!492460)))

(assert (=> bs!1153807 (= (dynLambda!22042 lambda!229592 (h!60536 (toList!6829 lm!2473))) (noDuplicateKeys!2318 (_2!31629 (h!60536 (toList!6829 lm!2473)))))))

(declare-fun m!5767150 () Bool)

(assert (=> bs!1153807 m!5767150))

(assert (=> b!4787776 d!1531509))

(push 1)

(assert (not b!4787683))

(assert (not bs!1153807))

(assert (not b!4787765))

(assert (not d!1531467))

(assert (not b!4787656))

(assert (not b!4787777))

(assert (not b!4787745))

(assert (not d!1531465))

(assert (not b!4787763))

(assert tp_is_empty!33381)

(assert (not b!4787724))

(assert (not d!1531473))

(assert (not b!4787680))

(assert (not b!4787655))

(assert (not b!4787771))

(assert (not d!1531499))

(assert (not b_lambda!186325))

(assert (not b!4787684))

(assert (not b!4787726))

(assert (not b!4787747))

(assert (not b!4787658))

(assert (not b!4787679))

(assert (not bm!334886))

(assert (not b!4787654))

(assert (not d!1531491))

(assert (not b!4787746))

(assert (not d!1531507))

(assert (not b!4787782))

(assert (not b!4787682))

(assert (not b!4787685))

(assert (not b!4787735))

(assert (not d!1531489))

(assert tp_is_empty!33383)

(assert (not d!1531479))

(assert (not d!1531497))

(assert (not d!1531471))

(assert (not d!1531469))

(assert (not b!4787714))

(assert (not b!4787652))

(assert (not b!4787677))

(assert (not d!1531483))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1531521 () Bool)

(declare-fun res!2034159 () Bool)

(declare-fun e!2989387 () Bool)

(assert (=> d!1531521 (=> res!2034159 e!2989387)))

(assert (=> d!1531521 (= res!2034159 (and (is-Cons!54111 (toList!6830 (extractMap!2402 (toList!6829 lm!2473)))) (= (_1!31628 (h!60535 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))))) key!5896)))))

(assert (=> d!1531521 (= (containsKey!3887 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))) key!5896) e!2989387)))

(declare-fun b!4787826 () Bool)

(declare-fun e!2989388 () Bool)

(assert (=> b!4787826 (= e!2989387 e!2989388)))

(declare-fun res!2034160 () Bool)

(assert (=> b!4787826 (=> (not res!2034160) (not e!2989388))))

(assert (=> b!4787826 (= res!2034160 (is-Cons!54111 (toList!6830 (extractMap!2402 (toList!6829 lm!2473)))))))

(declare-fun b!4787827 () Bool)

(assert (=> b!4787827 (= e!2989388 (containsKey!3887 (t!361685 (toList!6830 (extractMap!2402 (toList!6829 lm!2473)))) key!5896))))

(assert (= (and d!1531521 (not res!2034159)) b!4787826))

(assert (= (and b!4787826 res!2034160) b!4787827))

(declare-fun m!5767196 () Bool)

(assert (=> b!4787827 m!5767196))

(assert (=> b!4787684 d!1531521))

(declare-fun d!1531523 () Bool)

(assert (=> d!1531523 (containsKey!3887 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))) key!5896)))

(declare-fun lt!1948385 () Unit!139595)

(declare-fun choose!34433 (List!54235 K!15677) Unit!139595)

(assert (=> d!1531523 (= lt!1948385 (choose!34433 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))) key!5896))))

(assert (=> d!1531523 (invariantList!1716 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))))))

(assert (=> d!1531523 (= (lemmaInGetKeysListThenContainsKey!1062 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))) key!5896) lt!1948385)))

(declare-fun bs!1153813 () Bool)

(assert (= bs!1153813 d!1531523))

(assert (=> bs!1153813 m!5767068))

(declare-fun m!5767198 () Bool)

(assert (=> bs!1153813 m!5767198))

(declare-fun m!5767200 () Bool)

(assert (=> bs!1153813 m!5767200))

(assert (=> b!4787684 d!1531523))

(declare-fun d!1531525 () Bool)

(declare-fun lt!1948390 () Bool)

(declare-fun content!9684 (List!54239) (Set K!15677))

(assert (=> d!1531525 (= lt!1948390 (set.member key!5896 (content!9684 (keys!19737 (extractMap!2402 (toList!6829 lm!2473))))))))

(declare-fun e!2989396 () Bool)

(assert (=> d!1531525 (= lt!1948390 e!2989396)))

(declare-fun res!2034166 () Bool)

(assert (=> d!1531525 (=> (not res!2034166) (not e!2989396))))

(assert (=> d!1531525 (= res!2034166 (is-Cons!54115 (keys!19737 (extractMap!2402 (toList!6829 lm!2473)))))))

(assert (=> d!1531525 (= (contains!17707 (keys!19737 (extractMap!2402 (toList!6829 lm!2473))) key!5896) lt!1948390)))

(declare-fun b!4787836 () Bool)

(declare-fun e!2989395 () Bool)

(assert (=> b!4787836 (= e!2989396 e!2989395)))

(declare-fun res!2034165 () Bool)

(assert (=> b!4787836 (=> res!2034165 e!2989395)))

(assert (=> b!4787836 (= res!2034165 (= (h!60539 (keys!19737 (extractMap!2402 (toList!6829 lm!2473)))) key!5896))))

(declare-fun b!4787837 () Bool)

(assert (=> b!4787837 (= e!2989395 (contains!17707 (t!361689 (keys!19737 (extractMap!2402 (toList!6829 lm!2473)))) key!5896))))

(assert (= (and d!1531525 res!2034166) b!4787836))

(assert (= (and b!4787836 (not res!2034165)) b!4787837))

(assert (=> d!1531525 m!5767062))

(declare-fun m!5767202 () Bool)

(assert (=> d!1531525 m!5767202))

(declare-fun m!5767204 () Bool)

(assert (=> d!1531525 m!5767204))

(declare-fun m!5767206 () Bool)

(assert (=> b!4787837 m!5767206))

(assert (=> b!4787683 d!1531525))

(declare-fun b!4787847 () Bool)

(assert (=> b!4787847 true))

(declare-fun d!1531527 () Bool)

(declare-fun e!2989400 () Bool)

(assert (=> d!1531527 e!2989400))

(declare-fun res!2034173 () Bool)

(assert (=> d!1531527 (=> (not res!2034173) (not e!2989400))))

(declare-fun lt!1948394 () List!54239)

(declare-fun noDuplicate!908 (List!54239) Bool)

(assert (=> d!1531527 (= res!2034173 (noDuplicate!908 lt!1948394))))

(assert (=> d!1531527 (= lt!1948394 (getKeysList!1062 (toList!6830 (extractMap!2402 (toList!6829 lm!2473)))))))

(assert (=> d!1531527 (= (keys!19737 (extractMap!2402 (toList!6829 lm!2473))) lt!1948394)))

(declare-fun b!4787846 () Bool)

(declare-fun res!2034174 () Bool)

(assert (=> b!4787846 (=> (not res!2034174) (not e!2989400))))

(declare-fun length!672 (List!54239) Int)

(declare-fun length!673 (List!54235) Int)

(assert (=> b!4787846 (= res!2034174 (= (length!672 lt!1948394) (length!673 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))))))))

(declare-fun res!2034175 () Bool)

(assert (=> b!4787847 (=> (not res!2034175) (not e!2989400))))

(declare-fun lambda!229623 () Int)

(declare-fun forall!12187 (List!54239 Int) Bool)

(assert (=> b!4787847 (= res!2034175 (forall!12187 lt!1948394 lambda!229623))))

(declare-fun b!4787848 () Bool)

(declare-fun lambda!229625 () Int)

(declare-fun map!12207 (List!54235 Int) List!54239)

(assert (=> b!4787848 (= e!2989400 (= (content!9684 lt!1948394) (content!9684 (map!12207 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))) lambda!229625))))))

(assert (= (and d!1531527 res!2034173) b!4787846))

(assert (= (and b!4787846 res!2034174) b!4787847))

(assert (= (and b!4787847 res!2034175) b!4787848))

(declare-fun m!5767216 () Bool)

(assert (=> d!1531527 m!5767216))

(assert (=> d!1531527 m!5767064))

(declare-fun m!5767218 () Bool)

(assert (=> b!4787846 m!5767218))

(declare-fun m!5767220 () Bool)

(assert (=> b!4787846 m!5767220))

(declare-fun m!5767222 () Bool)

(assert (=> b!4787847 m!5767222))

(declare-fun m!5767224 () Bool)

(assert (=> b!4787848 m!5767224))

(declare-fun m!5767226 () Bool)

(assert (=> b!4787848 m!5767226))

(assert (=> b!4787848 m!5767226))

(declare-fun m!5767228 () Bool)

(assert (=> b!4787848 m!5767228))

(assert (=> b!4787683 d!1531527))

(declare-fun d!1531531 () Bool)

(declare-fun res!2034176 () Bool)

(declare-fun e!2989401 () Bool)

(assert (=> d!1531531 (=> res!2034176 e!2989401)))

(assert (=> d!1531531 (= res!2034176 (is-Nil!54112 (t!361686 (toList!6829 lm!2473))))))

(assert (=> d!1531531 (= (forall!12185 (t!361686 (toList!6829 lm!2473)) lambda!229592) e!2989401)))

(declare-fun b!4787853 () Bool)

(declare-fun e!2989402 () Bool)

(assert (=> b!4787853 (= e!2989401 e!2989402)))

(declare-fun res!2034177 () Bool)

(assert (=> b!4787853 (=> (not res!2034177) (not e!2989402))))

(assert (=> b!4787853 (= res!2034177 (dynLambda!22042 lambda!229592 (h!60536 (t!361686 (toList!6829 lm!2473)))))))

(declare-fun b!4787854 () Bool)

(assert (=> b!4787854 (= e!2989402 (forall!12185 (t!361686 (t!361686 (toList!6829 lm!2473))) lambda!229592))))

(assert (= (and d!1531531 (not res!2034176)) b!4787853))

(assert (= (and b!4787853 res!2034177) b!4787854))

(declare-fun b_lambda!186327 () Bool)

(assert (=> (not b_lambda!186327) (not b!4787853)))

(declare-fun m!5767232 () Bool)

(assert (=> b!4787853 m!5767232))

(declare-fun m!5767234 () Bool)

(assert (=> b!4787854 m!5767234))

(assert (=> b!4787777 d!1531531))

(declare-fun d!1531535 () Bool)

(assert (=> d!1531535 (isDefined!10166 (getValueByKey!2324 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))) key!5896))))

(declare-fun lt!1948397 () Unit!139595)

(declare-fun choose!34434 (List!54235 K!15677) Unit!139595)

(assert (=> d!1531535 (= lt!1948397 (choose!34434 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))) key!5896))))

(assert (=> d!1531535 (invariantList!1716 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))))))

(assert (=> d!1531535 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2115 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))) key!5896) lt!1948397)))

(declare-fun bs!1153823 () Bool)

(assert (= bs!1153823 d!1531535))

(assert (=> bs!1153823 m!5767056))

(assert (=> bs!1153823 m!5767056))

(assert (=> bs!1153823 m!5767058))

(declare-fun m!5767238 () Bool)

(assert (=> bs!1153823 m!5767238))

(assert (=> bs!1153823 m!5767200))

(assert (=> b!4787685 d!1531535))

(declare-fun d!1531539 () Bool)

(declare-fun isEmpty!29404 (Option!13025) Bool)

(assert (=> d!1531539 (= (isDefined!10166 (getValueByKey!2324 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))) key!5896)) (not (isEmpty!29404 (getValueByKey!2324 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))) key!5896))))))

(declare-fun bs!1153824 () Bool)

(assert (= bs!1153824 d!1531539))

(assert (=> bs!1153824 m!5767056))

(declare-fun m!5767240 () Bool)

(assert (=> bs!1153824 m!5767240))

(assert (=> b!4787685 d!1531539))

(declare-fun b!4787869 () Bool)

(declare-fun e!2989413 () Option!13025)

(assert (=> b!4787869 (= e!2989413 (Some!13024 (_2!31628 (h!60535 (toList!6830 (extractMap!2402 (toList!6829 lm!2473)))))))))

(declare-fun b!4787870 () Bool)

(declare-fun e!2989414 () Option!13025)

(assert (=> b!4787870 (= e!2989413 e!2989414)))

(declare-fun c!816085 () Bool)

(assert (=> b!4787870 (= c!816085 (and (is-Cons!54111 (toList!6830 (extractMap!2402 (toList!6829 lm!2473)))) (not (= (_1!31628 (h!60535 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))))) key!5896))))))

(declare-fun d!1531541 () Bool)

(declare-fun c!816084 () Bool)

(assert (=> d!1531541 (= c!816084 (and (is-Cons!54111 (toList!6830 (extractMap!2402 (toList!6829 lm!2473)))) (= (_1!31628 (h!60535 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))))) key!5896)))))

(assert (=> d!1531541 (= (getValueByKey!2324 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))) key!5896) e!2989413)))

(declare-fun b!4787872 () Bool)

(assert (=> b!4787872 (= e!2989414 None!13024)))

(declare-fun b!4787871 () Bool)

(assert (=> b!4787871 (= e!2989414 (getValueByKey!2324 (t!361685 (toList!6830 (extractMap!2402 (toList!6829 lm!2473)))) key!5896))))

(assert (= (and d!1531541 c!816084) b!4787869))

(assert (= (and d!1531541 (not c!816084)) b!4787870))

(assert (= (and b!4787870 c!816085) b!4787871))

(assert (= (and b!4787870 (not c!816085)) b!4787872))

(declare-fun m!5767244 () Bool)

(assert (=> b!4787871 m!5767244))

(assert (=> b!4787685 d!1531541))

(declare-fun d!1531545 () Bool)

(assert (=> d!1531545 (contains!17707 (getKeysList!1062 (toList!6830 (extractMap!2402 (toList!6829 lm!2473)))) key!5896)))

(declare-fun lt!1948400 () Unit!139595)

(declare-fun choose!34435 (List!54235 K!15677) Unit!139595)

(assert (=> d!1531545 (= lt!1948400 (choose!34435 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))) key!5896))))

(assert (=> d!1531545 (invariantList!1716 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))))))

(assert (=> d!1531545 (= (lemmaInListThenGetKeysListContains!1057 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))) key!5896) lt!1948400)))

(declare-fun bs!1153825 () Bool)

(assert (= bs!1153825 d!1531545))

(assert (=> bs!1153825 m!5767064))

(assert (=> bs!1153825 m!5767064))

(declare-fun m!5767246 () Bool)

(assert (=> bs!1153825 m!5767246))

(declare-fun m!5767248 () Bool)

(assert (=> bs!1153825 m!5767248))

(assert (=> bs!1153825 m!5767200))

(assert (=> b!4787685 d!1531545))

(declare-fun d!1531547 () Bool)

(declare-fun isEmpty!29405 (Option!13024) Bool)

(assert (=> d!1531547 (= (isDefined!10167 (getValueByKey!2323 (toList!6829 lm!2473) lt!1948280)) (not (isEmpty!29405 (getValueByKey!2323 (toList!6829 lm!2473) lt!1948280))))))

(declare-fun bs!1153826 () Bool)

(assert (= bs!1153826 d!1531547))

(assert (=> bs!1153826 m!5767046))

(declare-fun m!5767254 () Bool)

(assert (=> bs!1153826 m!5767254))

(assert (=> b!4787765 d!1531547))

(declare-fun d!1531551 () Bool)

(declare-fun c!816090 () Bool)

(assert (=> d!1531551 (= c!816090 (and (is-Cons!54112 (toList!6829 lm!2473)) (= (_1!31629 (h!60536 (toList!6829 lm!2473))) lt!1948280)))))

(declare-fun e!2989428 () Option!13024)

(assert (=> d!1531551 (= (getValueByKey!2323 (toList!6829 lm!2473) lt!1948280) e!2989428)))

(declare-fun b!4787894 () Bool)

(declare-fun e!2989429 () Option!13024)

(assert (=> b!4787894 (= e!2989429 (getValueByKey!2323 (t!361686 (toList!6829 lm!2473)) lt!1948280))))

(declare-fun b!4787893 () Bool)

(assert (=> b!4787893 (= e!2989428 e!2989429)))

(declare-fun c!816091 () Bool)

(assert (=> b!4787893 (= c!816091 (and (is-Cons!54112 (toList!6829 lm!2473)) (not (= (_1!31629 (h!60536 (toList!6829 lm!2473))) lt!1948280))))))

(declare-fun b!4787895 () Bool)

(assert (=> b!4787895 (= e!2989429 None!13023)))

(declare-fun b!4787892 () Bool)

(assert (=> b!4787892 (= e!2989428 (Some!13023 (_2!31629 (h!60536 (toList!6829 lm!2473)))))))

(assert (= (and d!1531551 c!816090) b!4787892))

(assert (= (and d!1531551 (not c!816090)) b!4787893))

(assert (= (and b!4787893 c!816091) b!4787894))

(assert (= (and b!4787893 (not c!816091)) b!4787895))

(declare-fun m!5767260 () Bool)

(assert (=> b!4787894 m!5767260))

(assert (=> b!4787765 d!1531551))

(declare-fun d!1531555 () Bool)

(declare-fun noDuplicatedKeys!429 (List!54235) Bool)

(assert (=> d!1531555 (= (invariantList!1716 (toList!6830 lt!1948322)) (noDuplicatedKeys!429 (toList!6830 lt!1948322)))))

(declare-fun bs!1153829 () Bool)

(assert (= bs!1153829 d!1531555))

(declare-fun m!5767262 () Bool)

(assert (=> bs!1153829 m!5767262))

(assert (=> d!1531479 d!1531555))

(declare-fun d!1531557 () Bool)

(declare-fun res!2034190 () Bool)

(declare-fun e!2989430 () Bool)

(assert (=> d!1531557 (=> res!2034190 e!2989430)))

(assert (=> d!1531557 (= res!2034190 (is-Nil!54112 (toList!6829 lm!2473)))))

(assert (=> d!1531557 (= (forall!12185 (toList!6829 lm!2473) lambda!229598) e!2989430)))

(declare-fun b!4787896 () Bool)

(declare-fun e!2989431 () Bool)

(assert (=> b!4787896 (= e!2989430 e!2989431)))

(declare-fun res!2034191 () Bool)

(assert (=> b!4787896 (=> (not res!2034191) (not e!2989431))))

(assert (=> b!4787896 (= res!2034191 (dynLambda!22042 lambda!229598 (h!60536 (toList!6829 lm!2473))))))

(declare-fun b!4787897 () Bool)

(assert (=> b!4787897 (= e!2989431 (forall!12185 (t!361686 (toList!6829 lm!2473)) lambda!229598))))

(assert (= (and d!1531557 (not res!2034190)) b!4787896))

(assert (= (and b!4787896 res!2034191) b!4787897))

(declare-fun b_lambda!186333 () Bool)

(assert (=> (not b_lambda!186333) (not b!4787896)))

(declare-fun m!5767264 () Bool)

(assert (=> b!4787896 m!5767264))

(declare-fun m!5767266 () Bool)

(assert (=> b!4787897 m!5767266))

(assert (=> d!1531479 d!1531557))

(declare-fun lt!1948403 () Bool)

(declare-fun d!1531559 () Bool)

(declare-fun content!9685 (List!54235) (Set tuple2!56668))

(assert (=> d!1531559 (= lt!1948403 (set.member (get!18427 lt!1948292) (content!9685 (apply!12936 lm!2473 lt!1948280))))))

(declare-fun e!2989437 () Bool)

(assert (=> d!1531559 (= lt!1948403 e!2989437)))

(declare-fun res!2034196 () Bool)

(assert (=> d!1531559 (=> (not res!2034196) (not e!2989437))))

(assert (=> d!1531559 (= res!2034196 (is-Cons!54111 (apply!12936 lm!2473 lt!1948280)))))

(assert (=> d!1531559 (= (contains!17706 (apply!12936 lm!2473 lt!1948280) (get!18427 lt!1948292)) lt!1948403)))

(declare-fun b!4787902 () Bool)

(declare-fun e!2989436 () Bool)

(assert (=> b!4787902 (= e!2989437 e!2989436)))

(declare-fun res!2034197 () Bool)

(assert (=> b!4787902 (=> res!2034197 e!2989436)))

(assert (=> b!4787902 (= res!2034197 (= (h!60535 (apply!12936 lm!2473 lt!1948280)) (get!18427 lt!1948292)))))

(declare-fun b!4787903 () Bool)

(assert (=> b!4787903 (= e!2989436 (contains!17706 (t!361685 (apply!12936 lm!2473 lt!1948280)) (get!18427 lt!1948292)))))

(assert (= (and d!1531559 res!2034196) b!4787902))

(assert (= (and b!4787902 (not res!2034197)) b!4787903))

(assert (=> d!1531559 m!5766982))

(declare-fun m!5767268 () Bool)

(assert (=> d!1531559 m!5767268))

(assert (=> d!1531559 m!5767036))

(declare-fun m!5767270 () Bool)

(assert (=> d!1531559 m!5767270))

(assert (=> b!4787903 m!5767036))

(declare-fun m!5767272 () Bool)

(assert (=> b!4787903 m!5767272))

(assert (=> b!4787656 d!1531559))

(declare-fun d!1531561 () Bool)

(assert (=> d!1531561 (= (get!18427 lt!1948292) (v!48284 lt!1948292))))

(assert (=> b!4787656 d!1531561))

(declare-fun d!1531563 () Bool)

(declare-fun res!2034198 () Bool)

(declare-fun e!2989438 () Bool)

(assert (=> d!1531563 (=> res!2034198 e!2989438)))

(assert (=> d!1531563 (= res!2034198 (and (is-Cons!54111 (apply!12936 lm!2473 lt!1948280)) (= (_1!31628 (h!60535 (apply!12936 lm!2473 lt!1948280))) key!5896)))))

(assert (=> d!1531563 (= (containsKey!3885 (apply!12936 lm!2473 lt!1948280) key!5896) e!2989438)))

(declare-fun b!4787904 () Bool)

(declare-fun e!2989439 () Bool)

(assert (=> b!4787904 (= e!2989438 e!2989439)))

(declare-fun res!2034199 () Bool)

(assert (=> b!4787904 (=> (not res!2034199) (not e!2989439))))

(assert (=> b!4787904 (= res!2034199 (is-Cons!54111 (apply!12936 lm!2473 lt!1948280)))))

(declare-fun b!4787905 () Bool)

(assert (=> b!4787905 (= e!2989439 (containsKey!3885 (t!361685 (apply!12936 lm!2473 lt!1948280)) key!5896))))

(assert (= (and d!1531563 (not res!2034198)) b!4787904))

(assert (= (and b!4787904 res!2034199) b!4787905))

(declare-fun m!5767274 () Bool)

(assert (=> b!4787905 m!5767274))

(assert (=> b!4787658 d!1531563))

(declare-fun d!1531565 () Bool)

(assert (=> d!1531565 (isDefined!10167 (getValueByKey!2323 (toList!6829 lm!2473) lt!1948280))))

(declare-fun lt!1948406 () Unit!139595)

(declare-fun choose!34436 (List!54236 (_ BitVec 64)) Unit!139595)

(assert (=> d!1531565 (= lt!1948406 (choose!34436 (toList!6829 lm!2473) lt!1948280))))

(declare-fun e!2989442 () Bool)

(assert (=> d!1531565 e!2989442))

(declare-fun res!2034202 () Bool)

(assert (=> d!1531565 (=> (not res!2034202) (not e!2989442))))

(assert (=> d!1531565 (= res!2034202 (isStrictlySorted!864 (toList!6829 lm!2473)))))

(assert (=> d!1531565 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2116 (toList!6829 lm!2473) lt!1948280) lt!1948406)))

(declare-fun b!4787908 () Bool)

(assert (=> b!4787908 (= e!2989442 (containsKey!3888 (toList!6829 lm!2473) lt!1948280))))

(assert (= (and d!1531565 res!2034202) b!4787908))

(assert (=> d!1531565 m!5767046))

(assert (=> d!1531565 m!5767046))

(assert (=> d!1531565 m!5767140))

(declare-fun m!5767276 () Bool)

(assert (=> d!1531565 m!5767276))

(assert (=> d!1531565 m!5767148))

(assert (=> b!4787908 m!5767136))

(assert (=> b!4787763 d!1531565))

(assert (=> b!4787763 d!1531547))

(assert (=> b!4787763 d!1531551))

(declare-fun d!1531567 () Bool)

(declare-fun res!2034207 () Bool)

(declare-fun e!2989447 () Bool)

(assert (=> d!1531567 (=> res!2034207 e!2989447)))

(assert (=> d!1531567 (= res!2034207 (not (is-Cons!54111 (_2!31629 (h!60536 (toList!6829 lm!2473))))))))

(assert (=> d!1531567 (= (noDuplicateKeys!2318 (_2!31629 (h!60536 (toList!6829 lm!2473)))) e!2989447)))

(declare-fun b!4787913 () Bool)

(declare-fun e!2989448 () Bool)

(assert (=> b!4787913 (= e!2989447 e!2989448)))

(declare-fun res!2034208 () Bool)

(assert (=> b!4787913 (=> (not res!2034208) (not e!2989448))))

(assert (=> b!4787913 (= res!2034208 (not (containsKey!3885 (t!361685 (_2!31629 (h!60536 (toList!6829 lm!2473)))) (_1!31628 (h!60535 (_2!31629 (h!60536 (toList!6829 lm!2473))))))))))

(declare-fun b!4787914 () Bool)

(assert (=> b!4787914 (= e!2989448 (noDuplicateKeys!2318 (t!361685 (_2!31629 (h!60536 (toList!6829 lm!2473))))))))

(assert (= (and d!1531567 (not res!2034207)) b!4787913))

(assert (= (and b!4787913 res!2034208) b!4787914))

(declare-fun m!5767278 () Bool)

(assert (=> b!4787913 m!5767278))

(declare-fun m!5767280 () Bool)

(assert (=> b!4787914 m!5767280))

(assert (=> bs!1153807 d!1531567))

(declare-fun d!1531569 () Bool)

(assert (=> d!1531569 (= (isDefined!10164 (getPair!847 (apply!12936 lm!2473 (hash!4897 hashF!1559 key!5896)) key!5896)) (not (isEmpty!29400 (getPair!847 (apply!12936 lm!2473 (hash!4897 hashF!1559 key!5896)) key!5896))))))

(declare-fun bs!1153830 () Bool)

(assert (= bs!1153830 d!1531569))

(assert (=> bs!1153830 m!5767116))

(declare-fun m!5767282 () Bool)

(assert (=> bs!1153830 m!5767282))

(assert (=> b!4787735 d!1531569))

(declare-fun b!4787915 () Bool)

(declare-fun e!2989452 () Option!13022)

(assert (=> b!4787915 (= e!2989452 (Some!13021 (h!60535 (apply!12936 lm!2473 (hash!4897 hashF!1559 key!5896)))))))

(declare-fun b!4787916 () Bool)

(declare-fun e!2989451 () Bool)

(declare-fun e!2989449 () Bool)

(assert (=> b!4787916 (= e!2989451 e!2989449)))

(declare-fun res!2034212 () Bool)

(assert (=> b!4787916 (=> (not res!2034212) (not e!2989449))))

(declare-fun lt!1948407 () Option!13022)

(assert (=> b!4787916 (= res!2034212 (isDefined!10164 lt!1948407))))

(declare-fun b!4787918 () Bool)

(declare-fun res!2034210 () Bool)

(assert (=> b!4787918 (=> (not res!2034210) (not e!2989449))))

(assert (=> b!4787918 (= res!2034210 (= (_1!31628 (get!18427 lt!1948407)) key!5896))))

(declare-fun e!2989450 () Option!13022)

(declare-fun b!4787919 () Bool)

(assert (=> b!4787919 (= e!2989450 (getPair!847 (t!361685 (apply!12936 lm!2473 (hash!4897 hashF!1559 key!5896))) key!5896))))

(declare-fun b!4787920 () Bool)

(assert (=> b!4787920 (= e!2989449 (contains!17706 (apply!12936 lm!2473 (hash!4897 hashF!1559 key!5896)) (get!18427 lt!1948407)))))

(declare-fun b!4787921 () Bool)

(assert (=> b!4787921 (= e!2989450 None!13021)))

(declare-fun e!2989453 () Bool)

(declare-fun b!4787922 () Bool)

(assert (=> b!4787922 (= e!2989453 (not (containsKey!3885 (apply!12936 lm!2473 (hash!4897 hashF!1559 key!5896)) key!5896)))))

(declare-fun d!1531571 () Bool)

(assert (=> d!1531571 e!2989451))

(declare-fun res!2034209 () Bool)

(assert (=> d!1531571 (=> res!2034209 e!2989451)))

(assert (=> d!1531571 (= res!2034209 e!2989453)))

(declare-fun res!2034211 () Bool)

(assert (=> d!1531571 (=> (not res!2034211) (not e!2989453))))

(assert (=> d!1531571 (= res!2034211 (isEmpty!29400 lt!1948407))))

(assert (=> d!1531571 (= lt!1948407 e!2989452)))

(declare-fun c!816093 () Bool)

(assert (=> d!1531571 (= c!816093 (and (is-Cons!54111 (apply!12936 lm!2473 (hash!4897 hashF!1559 key!5896))) (= (_1!31628 (h!60535 (apply!12936 lm!2473 (hash!4897 hashF!1559 key!5896)))) key!5896)))))

(assert (=> d!1531571 (noDuplicateKeys!2318 (apply!12936 lm!2473 (hash!4897 hashF!1559 key!5896)))))

(assert (=> d!1531571 (= (getPair!847 (apply!12936 lm!2473 (hash!4897 hashF!1559 key!5896)) key!5896) lt!1948407)))

(declare-fun b!4787917 () Bool)

(assert (=> b!4787917 (= e!2989452 e!2989450)))

(declare-fun c!816092 () Bool)

(assert (=> b!4787917 (= c!816092 (is-Cons!54111 (apply!12936 lm!2473 (hash!4897 hashF!1559 key!5896))))))

(assert (= (and d!1531571 c!816093) b!4787915))

(assert (= (and d!1531571 (not c!816093)) b!4787917))

(assert (= (and b!4787917 c!816092) b!4787919))

(assert (= (and b!4787917 (not c!816092)) b!4787921))

(assert (= (and d!1531571 res!2034211) b!4787922))

(assert (= (and d!1531571 (not res!2034209)) b!4787916))

(assert (= (and b!4787916 res!2034212) b!4787918))

(assert (= (and b!4787918 res!2034210) b!4787920))

(declare-fun m!5767284 () Bool)

(assert (=> b!4787919 m!5767284))

(declare-fun m!5767286 () Bool)

(assert (=> b!4787916 m!5767286))

(declare-fun m!5767288 () Bool)

(assert (=> b!4787920 m!5767288))

(assert (=> b!4787920 m!5767114))

(assert (=> b!4787920 m!5767288))

(declare-fun m!5767290 () Bool)

(assert (=> b!4787920 m!5767290))

(declare-fun m!5767292 () Bool)

(assert (=> d!1531571 m!5767292))

(assert (=> d!1531571 m!5767114))

(declare-fun m!5767294 () Bool)

(assert (=> d!1531571 m!5767294))

(assert (=> b!4787918 m!5767288))

(assert (=> b!4787922 m!5767114))

(declare-fun m!5767296 () Bool)

(assert (=> b!4787922 m!5767296))

(assert (=> b!4787735 d!1531571))

(declare-fun d!1531573 () Bool)

(assert (=> d!1531573 (= (apply!12936 lm!2473 (hash!4897 hashF!1559 key!5896)) (get!18428 (getValueByKey!2323 (toList!6829 lm!2473) (hash!4897 hashF!1559 key!5896))))))

(declare-fun bs!1153831 () Bool)

(assert (= bs!1153831 d!1531573))

(assert (=> bs!1153831 m!5766968))

(declare-fun m!5767298 () Bool)

(assert (=> bs!1153831 m!5767298))

(assert (=> bs!1153831 m!5767298))

(declare-fun m!5767300 () Bool)

(assert (=> bs!1153831 m!5767300))

(assert (=> b!4787735 d!1531573))

(assert (=> b!4787735 d!1531497))

(declare-fun bs!1153832 () Bool)

(declare-fun b!4787943 () Bool)

(assert (= bs!1153832 (and b!4787943 b!4787847)))

(declare-fun lambda!229634 () Int)

(assert (=> bs!1153832 (= (= (t!361685 (toList!6830 (extractMap!2402 (toList!6829 lm!2473)))) (toList!6830 (extractMap!2402 (toList!6829 lm!2473)))) (= lambda!229634 lambda!229623))))

(assert (=> b!4787943 true))

(declare-fun bs!1153833 () Bool)

(declare-fun b!4787944 () Bool)

(assert (= bs!1153833 (and b!4787944 b!4787847)))

(declare-fun lambda!229635 () Int)

(assert (=> bs!1153833 (= (= (Cons!54111 (h!60535 (toList!6830 (extractMap!2402 (toList!6829 lm!2473)))) (t!361685 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))))) (toList!6830 (extractMap!2402 (toList!6829 lm!2473)))) (= lambda!229635 lambda!229623))))

(declare-fun bs!1153834 () Bool)

(assert (= bs!1153834 (and b!4787944 b!4787943)))

(assert (=> bs!1153834 (= (= (Cons!54111 (h!60535 (toList!6830 (extractMap!2402 (toList!6829 lm!2473)))) (t!361685 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))))) (t!361685 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))))) (= lambda!229635 lambda!229634))))

(assert (=> b!4787944 true))

(declare-fun bs!1153835 () Bool)

(declare-fun b!4787942 () Bool)

(assert (= bs!1153835 (and b!4787942 b!4787847)))

(declare-fun lambda!229636 () Int)

(assert (=> bs!1153835 (= lambda!229636 lambda!229623)))

(declare-fun bs!1153836 () Bool)

(assert (= bs!1153836 (and b!4787942 b!4787943)))

(assert (=> bs!1153836 (= (= (toList!6830 (extractMap!2402 (toList!6829 lm!2473))) (t!361685 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))))) (= lambda!229636 lambda!229634))))

(declare-fun bs!1153837 () Bool)

(assert (= bs!1153837 (and b!4787942 b!4787944)))

(assert (=> bs!1153837 (= (= (toList!6830 (extractMap!2402 (toList!6829 lm!2473))) (Cons!54111 (h!60535 (toList!6830 (extractMap!2402 (toList!6829 lm!2473)))) (t!361685 (toList!6830 (extractMap!2402 (toList!6829 lm!2473)))))) (= lambda!229636 lambda!229635))))

(assert (=> b!4787942 true))

(declare-fun bs!1153838 () Bool)

(declare-fun b!4787949 () Bool)

(assert (= bs!1153838 (and b!4787949 b!4787848)))

(declare-fun lambda!229637 () Int)

(assert (=> bs!1153838 (= lambda!229637 lambda!229625)))

(declare-fun b!4787941 () Bool)

(declare-fun e!2989463 () Unit!139595)

(declare-fun Unit!139605 () Unit!139595)

(assert (=> b!4787941 (= e!2989463 Unit!139605)))

(declare-fun res!2034219 () Bool)

(declare-fun e!2989462 () Bool)

(assert (=> b!4787942 (=> (not res!2034219) (not e!2989462))))

(declare-fun lt!1948424 () List!54239)

(assert (=> b!4787942 (= res!2034219 (forall!12187 lt!1948424 lambda!229636))))

(assert (=> b!4787943 false))

(declare-fun lt!1948425 () Unit!139595)

(declare-fun forallContained!4133 (List!54239 Int K!15677) Unit!139595)

(assert (=> b!4787943 (= lt!1948425 (forallContained!4133 (getKeysList!1062 (t!361685 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))))) lambda!229634 (_1!31628 (h!60535 (toList!6830 (extractMap!2402 (toList!6829 lm!2473)))))))))

(declare-fun e!2989465 () Unit!139595)

(declare-fun Unit!139606 () Unit!139595)

(assert (=> b!4787943 (= e!2989465 Unit!139606)))

(declare-fun b!4787945 () Bool)

(declare-fun res!2034221 () Bool)

(assert (=> b!4787945 (=> (not res!2034221) (not e!2989462))))

(assert (=> b!4787945 (= res!2034221 (= (length!672 lt!1948424) (length!673 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))))))))

(declare-fun b!4787946 () Bool)

(declare-fun Unit!139607 () Unit!139595)

(assert (=> b!4787946 (= e!2989465 Unit!139607)))

(declare-fun b!4787947 () Bool)

(assert (=> b!4787947 false))

(declare-fun Unit!139608 () Unit!139595)

(assert (=> b!4787947 (= e!2989463 Unit!139608)))

(declare-fun b!4787948 () Bool)

(declare-fun e!2989464 () List!54239)

(assert (=> b!4787948 (= e!2989464 Nil!54115)))

(assert (=> b!4787949 (= e!2989462 (= (content!9684 lt!1948424) (content!9684 (map!12207 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))) lambda!229637))))))

(assert (=> b!4787944 (= e!2989464 (Cons!54115 (_1!31628 (h!60535 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))))) (getKeysList!1062 (t!361685 (toList!6830 (extractMap!2402 (toList!6829 lm!2473)))))))))

(declare-fun c!816100 () Bool)

(assert (=> b!4787944 (= c!816100 (containsKey!3887 (t!361685 (toList!6830 (extractMap!2402 (toList!6829 lm!2473)))) (_1!31628 (h!60535 (toList!6830 (extractMap!2402 (toList!6829 lm!2473)))))))))

(declare-fun lt!1948426 () Unit!139595)

(assert (=> b!4787944 (= lt!1948426 e!2989463)))

(declare-fun c!816102 () Bool)

(assert (=> b!4787944 (= c!816102 (contains!17707 (getKeysList!1062 (t!361685 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))))) (_1!31628 (h!60535 (toList!6830 (extractMap!2402 (toList!6829 lm!2473)))))))))

(declare-fun lt!1948422 () Unit!139595)

(assert (=> b!4787944 (= lt!1948422 e!2989465)))

(declare-fun lt!1948428 () List!54239)

(assert (=> b!4787944 (= lt!1948428 (getKeysList!1062 (t!361685 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))))))))

(declare-fun lt!1948427 () Unit!139595)

(declare-fun lemmaForallContainsAddHeadPreserves!325 (List!54235 List!54239 tuple2!56668) Unit!139595)

(assert (=> b!4787944 (= lt!1948427 (lemmaForallContainsAddHeadPreserves!325 (t!361685 (toList!6830 (extractMap!2402 (toList!6829 lm!2473)))) lt!1948428 (h!60535 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))))))))

(assert (=> b!4787944 (forall!12187 lt!1948428 lambda!229635)))

(declare-fun lt!1948423 () Unit!139595)

(assert (=> b!4787944 (= lt!1948423 lt!1948427)))

(declare-fun d!1531575 () Bool)

(assert (=> d!1531575 e!2989462))

(declare-fun res!2034220 () Bool)

(assert (=> d!1531575 (=> (not res!2034220) (not e!2989462))))

(assert (=> d!1531575 (= res!2034220 (noDuplicate!908 lt!1948424))))

(assert (=> d!1531575 (= lt!1948424 e!2989464)))

(declare-fun c!816101 () Bool)

(assert (=> d!1531575 (= c!816101 (is-Cons!54111 (toList!6830 (extractMap!2402 (toList!6829 lm!2473)))))))

(assert (=> d!1531575 (invariantList!1716 (toList!6830 (extractMap!2402 (toList!6829 lm!2473))))))

(assert (=> d!1531575 (= (getKeysList!1062 (toList!6830 (extractMap!2402 (toList!6829 lm!2473)))) lt!1948424)))

(assert (= (and d!1531575 c!816101) b!4787944))

(assert (= (and d!1531575 (not c!816101)) b!4787948))

(assert (= (and b!4787944 c!816100) b!4787947))

(assert (= (and b!4787944 (not c!816100)) b!4787941))

(assert (= (and b!4787944 c!816102) b!4787943))

(assert (= (and b!4787944 (not c!816102)) b!4787946))

(assert (= (and d!1531575 res!2034220) b!4787945))

(assert (= (and b!4787945 res!2034221) b!4787942))

(assert (= (and b!4787942 res!2034219) b!4787949))

(declare-fun m!5767302 () Bool)

(assert (=> b!4787942 m!5767302))

(declare-fun m!5767304 () Bool)

(assert (=> b!4787943 m!5767304))

(assert (=> b!4787943 m!5767304))

(declare-fun m!5767306 () Bool)

(assert (=> b!4787943 m!5767306))

(declare-fun m!5767308 () Bool)

(assert (=> b!4787944 m!5767308))

(declare-fun m!5767310 () Bool)

(assert (=> b!4787944 m!5767310))

(assert (=> b!4787944 m!5767304))

(declare-fun m!5767312 () Bool)

(assert (=> b!4787944 m!5767312))

(declare-fun m!5767314 () Bool)

(assert (=> b!4787944 m!5767314))

(assert (=> b!4787944 m!5767304))

(declare-fun m!5767316 () Bool)

(assert (=> b!4787949 m!5767316))

(declare-fun m!5767318 () Bool)

(assert (=> b!4787949 m!5767318))

(assert (=> b!4787949 m!5767318))

(declare-fun m!5767320 () Bool)

(assert (=> b!4787949 m!5767320))

(declare-fun m!5767322 () Bool)

(assert (=> b!4787945 m!5767322))

(assert (=> b!4787945 m!5767220))

(declare-fun m!5767324 () Bool)

(assert (=> d!1531575 m!5767324))

(assert (=> d!1531575 m!5767200))

(assert (=> b!4787682 d!1531575))

(declare-fun d!1531577 () Bool)

(declare-fun choose!34437 (Hashable!6875 K!15677) (_ BitVec 64))

(assert (=> d!1531577 (= (hash!4899 hashF!1559 key!5896) (choose!34437 hashF!1559 key!5896))))

(declare-fun bs!1153839 () Bool)

(assert (= bs!1153839 d!1531577))

(declare-fun m!5767326 () Bool)

(assert (=> bs!1153839 m!5767326))

(assert (=> d!1531497 d!1531577))

(declare-fun d!1531579 () Bool)

(assert (=> d!1531579 (= (isEmpty!29401 (toList!6829 lm!2473)) (is-Nil!54112 (toList!6829 lm!2473)))))

(assert (=> d!1531471 d!1531579))

(assert (=> d!1531473 d!1531521))

(declare-fun d!1531581 () Bool)

(assert (=> d!1531581 (= (isEmpty!29400 (getPair!847 (apply!12936 lm!2473 lt!1948280) key!5896)) (not (is-Some!13021 (getPair!847 (apply!12936 lm!2473 lt!1948280) key!5896))))))

(assert (=> d!1531465 d!1531581))

(declare-fun d!1531583 () Bool)

(declare-fun res!2034222 () Bool)

(declare-fun e!2989466 () Bool)

(assert (=> d!1531583 (=> res!2034222 e!2989466)))

(assert (=> d!1531583 (= res!2034222 (is-Nil!54112 (toList!6829 lm!2473)))))

(assert (=> d!1531583 (= (forall!12185 (toList!6829 lm!2473) lambda!229601) e!2989466)))

(declare-fun b!4787952 () Bool)

(declare-fun e!2989467 () Bool)

(assert (=> b!4787952 (= e!2989466 e!2989467)))

(declare-fun res!2034223 () Bool)

(assert (=> b!4787952 (=> (not res!2034223) (not e!2989467))))

(assert (=> b!4787952 (= res!2034223 (dynLambda!22042 lambda!229601 (h!60536 (toList!6829 lm!2473))))))

(declare-fun b!4787953 () Bool)

(assert (=> b!4787953 (= e!2989467 (forall!12185 (t!361686 (toList!6829 lm!2473)) lambda!229601))))

(assert (= (and d!1531583 (not res!2034222)) b!4787952))

(assert (= (and b!4787952 res!2034223) b!4787953))

(declare-fun b_lambda!186335 () Bool)

(assert (=> (not b_lambda!186335) (not b!4787952)))

(declare-fun m!5767328 () Bool)

(assert (=> b!4787952 m!5767328))

(declare-fun m!5767330 () Bool)

(assert (=> b!4787953 m!5767330))

(assert (=> d!1531483 d!1531583))

(assert (=> b!4787724 d!1531503))

(declare-fun d!1531585 () Bool)

(declare-fun res!2034224 () Bool)

(declare-fun e!2989468 () Bool)

(assert (=> d!1531585 (=> res!2034224 e!2989468)))

(assert (=> d!1531585 (= res!2034224 (and (is-Cons!54111 (t!361685 (_2!31629 (h!60536 (toList!6829 lm!2473))))) (= (_1!31628 (h!60535 (t!361685 (_2!31629 (h!60536 (toList!6829 lm!2473)))))) key!5896)))))

(assert (=> d!1531585 (= (containsKey!3885 (t!361685 (_2!31629 (h!60536 (toList!6829 lm!2473)))) key!5896) e!2989468)))

(declare-fun b!4787954 () Bool)

(declare-fun e!2989469 () Bool)

(assert (=> b!4787954 (= e!2989468 e!2989469)))

(declare-fun res!2034225 () Bool)

(assert (=> b!4787954 (=> (not res!2034225) (not e!2989469))))

(assert (=> b!4787954 (= res!2034225 (is-Cons!54111 (t!361685 (_2!31629 (h!60536 (toList!6829 lm!2473))))))))

(declare-fun b!4787955 () Bool)

(assert (=> b!4787955 (= e!2989469 (containsKey!3885 (t!361685 (t!361685 (_2!31629 (h!60536 (toList!6829 lm!2473))))) key!5896))))

(assert (= (and d!1531585 (not res!2034224)) b!4787954))

(assert (= (and b!4787954 res!2034225) b!4787955))

(declare-fun m!5767332 () Bool)

(assert (=> b!4787955 m!5767332))

(assert (=> b!4787771 d!1531585))

(declare-fun d!1531587 () Bool)

(declare-fun res!2034227 () Bool)

(declare-fun e!2989470 () Bool)

(assert (=> d!1531587 (=> res!2034227 e!2989470)))

(declare-fun e!2989471 () Bool)

(assert (=> d!1531587 (= res!2034227 e!2989471)))

(declare-fun res!2034228 () Bool)

(assert (=> d!1531587 (=> (not res!2034228) (not e!2989471))))

(assert (=> d!1531587 (= res!2034228 (is-Cons!54112 (t!361686 (toList!6829 lm!2473))))))

(assert (=> d!1531587 (= (containsKeyBiggerList!525 (t!361686 (toList!6829 lm!2473)) key!5896) e!2989470)))

(declare-fun b!4787956 () Bool)

(assert (=> b!4787956 (= e!2989471 (containsKey!3885 (_2!31629 (h!60536 (t!361686 (toList!6829 lm!2473)))) key!5896))))

(declare-fun b!4787957 () Bool)

(declare-fun e!2989472 () Bool)

(assert (=> b!4787957 (= e!2989470 e!2989472)))

(declare-fun res!2034226 () Bool)

(assert (=> b!4787957 (=> (not res!2034226) (not e!2989472))))

(assert (=> b!4787957 (= res!2034226 (is-Cons!54112 (t!361686 (toList!6829 lm!2473))))))

(declare-fun b!4787958 () Bool)

(assert (=> b!4787958 (= e!2989472 (containsKeyBiggerList!525 (t!361686 (t!361686 (toList!6829 lm!2473))) key!5896))))

(assert (= (and d!1531587 res!2034228) b!4787956))

(assert (= (and d!1531587 (not res!2034227)) b!4787957))

(assert (= (and b!4787957 res!2034226) b!4787958))

(declare-fun m!5767334 () Bool)

(assert (=> b!4787956 m!5767334))

(declare-fun m!5767336 () Bool)

(assert (=> b!4787958 m!5767336))

(assert (=> b!4787726 d!1531587))

(declare-fun d!1531589 () Bool)

(declare-fun res!2034233 () Bool)

(declare-fun e!2989477 () Bool)

(assert (=> d!1531589 (=> res!2034233 e!2989477)))

(assert (=> d!1531589 (= res!2034233 (or (is-Nil!54112 (toList!6829 lm!2473)) (is-Nil!54112 (t!361686 (toList!6829 lm!2473)))))))

(assert (=> d!1531589 (= (isStrictlySorted!864 (toList!6829 lm!2473)) e!2989477)))

(declare-fun b!4787963 () Bool)

(declare-fun e!2989478 () Bool)

(assert (=> b!4787963 (= e!2989477 e!2989478)))

(declare-fun res!2034234 () Bool)

(assert (=> b!4787963 (=> (not res!2034234) (not e!2989478))))

(assert (=> b!4787963 (= res!2034234 (bvslt (_1!31629 (h!60536 (toList!6829 lm!2473))) (_1!31629 (h!60536 (t!361686 (toList!6829 lm!2473))))))))

(declare-fun b!4787964 () Bool)

(assert (=> b!4787964 (= e!2989478 (isStrictlySorted!864 (t!361686 (toList!6829 lm!2473))))))

(assert (= (and d!1531589 (not res!2034233)) b!4787963))

(assert (= (and b!4787963 res!2034234) b!4787964))

(declare-fun m!5767338 () Bool)

(assert (=> b!4787964 m!5767338))

(assert (=> d!1531507 d!1531589))

(assert (=> b!4787654 d!1531561))

(declare-fun d!1531591 () Bool)

(assert (=> d!1531591 (= (isEmpty!29400 lt!1948292) (not (is-Some!13021 lt!1948292)))))

(assert (=> d!1531467 d!1531591))

(declare-fun d!1531593 () Bool)

(declare-fun res!2034235 () Bool)

(declare-fun e!2989479 () Bool)

(assert (=> d!1531593 (=> res!2034235 e!2989479)))

(assert (=> d!1531593 (= res!2034235 (not (is-Cons!54111 (apply!12936 lm!2473 lt!1948280))))))

(assert (=> d!1531593 (= (noDuplicateKeys!2318 (apply!12936 lm!2473 lt!1948280)) e!2989479)))

(declare-fun b!4787965 () Bool)

(declare-fun e!2989480 () Bool)

(assert (=> b!4787965 (= e!2989479 e!2989480)))

(declare-fun res!2034236 () Bool)

(assert (=> b!4787965 (=> (not res!2034236) (not e!2989480))))

(assert (=> b!4787965 (= res!2034236 (not (containsKey!3885 (t!361685 (apply!12936 lm!2473 lt!1948280)) (_1!31628 (h!60535 (apply!12936 lm!2473 lt!1948280))))))))

(declare-fun b!4787966 () Bool)

(assert (=> b!4787966 (= e!2989480 (noDuplicateKeys!2318 (t!361685 (apply!12936 lm!2473 lt!1948280))))))

(assert (= (and d!1531593 (not res!2034235)) b!4787965))

(assert (= (and b!4787965 res!2034236) b!4787966))

(declare-fun m!5767340 () Bool)

(assert (=> b!4787965 m!5767340))

(declare-fun m!5767342 () Bool)

(assert (=> b!4787966 m!5767342))

(assert (=> d!1531467 d!1531593))

(assert (=> b!4787747 d!1531503))

(declare-fun d!1531595 () Bool)

(declare-fun c!816103 () Bool)

(declare-fun e!2989482 () Bool)

(assert (=> d!1531595 (= c!816103 e!2989482)))

(declare-fun res!2034237 () Bool)

(assert (=> d!1531595 (=> (not res!2034237) (not e!2989482))))

(assert (=> d!1531595 (= res!2034237 (is-Cons!54112 (t!361686 (toList!6829 lm!2473))))))

(declare-fun e!2989481 () V!15923)

(assert (=> d!1531595 (= (getValue!71 (t!361686 (toList!6829 lm!2473)) key!5896) e!2989481)))

(declare-fun b!4787969 () Bool)

(assert (=> b!4787969 (= e!2989482 (containsKey!3885 (_2!31629 (h!60536 (t!361686 (toList!6829 lm!2473)))) key!5896))))

(declare-fun b!4787967 () Bool)

(assert (=> b!4787967 (= e!2989481 (_2!31628 (get!18427 (getPair!847 (_2!31629 (h!60536 (t!361686 (toList!6829 lm!2473)))) key!5896))))))

(declare-fun b!4787968 () Bool)

(assert (=> b!4787968 (= e!2989481 (getValue!71 (t!361686 (t!361686 (toList!6829 lm!2473))) key!5896))))

(assert (= (and d!1531595 res!2034237) b!4787969))

(assert (= (and d!1531595 c!816103) b!4787967))

(assert (= (and d!1531595 (not c!816103)) b!4787968))

(assert (=> b!4787969 m!5767334))

(declare-fun m!5767344 () Bool)

(assert (=> b!4787967 m!5767344))

(assert (=> b!4787967 m!5767344))

(declare-fun m!5767346 () Bool)

(assert (=> b!4787967 m!5767346))

(declare-fun m!5767348 () Bool)

(assert (=> b!4787968 m!5767348))

(assert (=> b!4787746 d!1531595))

(assert (=> b!4787679 d!1531527))

(assert (=> b!4787680 d!1531539))

(assert (=> b!4787680 d!1531541))

(declare-fun d!1531597 () Bool)

(declare-fun lt!1948429 () Bool)

(assert (=> d!1531597 (= lt!1948429 (set.member key!5896 (content!9684 e!2989283)))))

(declare-fun e!2989484 () Bool)

(assert (=> d!1531597 (= lt!1948429 e!2989484)))

(declare-fun res!2034239 () Bool)

(assert (=> d!1531597 (=> (not res!2034239) (not e!2989484))))

(assert (=> d!1531597 (= res!2034239 (is-Cons!54115 e!2989283))))

(assert (=> d!1531597 (= (contains!17707 e!2989283 key!5896) lt!1948429)))

(declare-fun b!4787970 () Bool)

(declare-fun e!2989483 () Bool)

(assert (=> b!4787970 (= e!2989484 e!2989483)))

(declare-fun res!2034238 () Bool)

(assert (=> b!4787970 (=> res!2034238 e!2989483)))

(assert (=> b!4787970 (= res!2034238 (= (h!60539 e!2989283) key!5896))))

(declare-fun b!4787971 () Bool)

(assert (=> b!4787971 (= e!2989483 (contains!17707 (t!361689 e!2989283) key!5896))))

(assert (= (and d!1531597 res!2034239) b!4787970))

(assert (= (and b!4787970 (not res!2034238)) b!4787971))

(declare-fun m!5767350 () Bool)

(assert (=> d!1531597 m!5767350))

(declare-fun m!5767352 () Bool)

(assert (=> d!1531597 m!5767352))

(declare-fun m!5767354 () Bool)

(assert (=> b!4787971 m!5767354))

(assert (=> bm!334886 d!1531597))

(declare-fun b!4787972 () Bool)

(declare-fun e!2989488 () Option!13022)

(assert (=> b!4787972 (= e!2989488 (Some!13021 (h!60535 (t!361685 (apply!12936 lm!2473 lt!1948280)))))))

(declare-fun b!4787973 () Bool)

(declare-fun e!2989487 () Bool)

(declare-fun e!2989485 () Bool)

(assert (=> b!4787973 (= e!2989487 e!2989485)))

(declare-fun res!2034243 () Bool)

(assert (=> b!4787973 (=> (not res!2034243) (not e!2989485))))

(declare-fun lt!1948430 () Option!13022)

(assert (=> b!4787973 (= res!2034243 (isDefined!10164 lt!1948430))))

(declare-fun b!4787975 () Bool)

(declare-fun res!2034241 () Bool)

(assert (=> b!4787975 (=> (not res!2034241) (not e!2989485))))

(assert (=> b!4787975 (= res!2034241 (= (_1!31628 (get!18427 lt!1948430)) key!5896))))

(declare-fun b!4787976 () Bool)

(declare-fun e!2989486 () Option!13022)

(assert (=> b!4787976 (= e!2989486 (getPair!847 (t!361685 (t!361685 (apply!12936 lm!2473 lt!1948280))) key!5896))))

(declare-fun b!4787977 () Bool)

(assert (=> b!4787977 (= e!2989485 (contains!17706 (t!361685 (apply!12936 lm!2473 lt!1948280)) (get!18427 lt!1948430)))))

(declare-fun b!4787978 () Bool)

(assert (=> b!4787978 (= e!2989486 None!13021)))

(declare-fun b!4787979 () Bool)

(declare-fun e!2989489 () Bool)

(assert (=> b!4787979 (= e!2989489 (not (containsKey!3885 (t!361685 (apply!12936 lm!2473 lt!1948280)) key!5896)))))

(declare-fun d!1531599 () Bool)

(assert (=> d!1531599 e!2989487))

(declare-fun res!2034240 () Bool)

(assert (=> d!1531599 (=> res!2034240 e!2989487)))

(assert (=> d!1531599 (= res!2034240 e!2989489)))

(declare-fun res!2034242 () Bool)

(assert (=> d!1531599 (=> (not res!2034242) (not e!2989489))))

(assert (=> d!1531599 (= res!2034242 (isEmpty!29400 lt!1948430))))

(assert (=> d!1531599 (= lt!1948430 e!2989488)))

(declare-fun c!816105 () Bool)

(assert (=> d!1531599 (= c!816105 (and (is-Cons!54111 (t!361685 (apply!12936 lm!2473 lt!1948280))) (= (_1!31628 (h!60535 (t!361685 (apply!12936 lm!2473 lt!1948280)))) key!5896)))))

(assert (=> d!1531599 (noDuplicateKeys!2318 (t!361685 (apply!12936 lm!2473 lt!1948280)))))

(assert (=> d!1531599 (= (getPair!847 (t!361685 (apply!12936 lm!2473 lt!1948280)) key!5896) lt!1948430)))

(declare-fun b!4787974 () Bool)

(assert (=> b!4787974 (= e!2989488 e!2989486)))

(declare-fun c!816104 () Bool)

(assert (=> b!4787974 (= c!816104 (is-Cons!54111 (t!361685 (apply!12936 lm!2473 lt!1948280))))))

(assert (= (and d!1531599 c!816105) b!4787972))

(assert (= (and d!1531599 (not c!816105)) b!4787974))

(assert (= (and b!4787974 c!816104) b!4787976))

(assert (= (and b!4787974 (not c!816104)) b!4787978))

(assert (= (and d!1531599 res!2034242) b!4787979))

(assert (= (and d!1531599 (not res!2034240)) b!4787973))

(assert (= (and b!4787973 res!2034243) b!4787975))

(assert (= (and b!4787975 res!2034241) b!4787977))

(declare-fun m!5767356 () Bool)

(assert (=> b!4787976 m!5767356))

(declare-fun m!5767358 () Bool)

(assert (=> b!4787973 m!5767358))

(declare-fun m!5767360 () Bool)

(assert (=> b!4787977 m!5767360))

(assert (=> b!4787977 m!5767360))

(declare-fun m!5767362 () Bool)

(assert (=> b!4787977 m!5767362))

(declare-fun m!5767364 () Bool)

(assert (=> d!1531599 m!5767364))

(assert (=> d!1531599 m!5767342))

(assert (=> b!4787975 m!5767360))

(assert (=> b!4787979 m!5767274))

(assert (=> b!4787655 d!1531599))

(assert (=> d!1531489 d!1531487))

(declare-fun d!1531601 () Bool)

(assert (=> d!1531601 (containsKeyBiggerList!525 (toList!6829 lm!2473) key!5896)))

(assert (=> d!1531601 true))

(declare-fun _$33!799 () Unit!139595)

(assert (=> d!1531601 (= (choose!34429 lm!2473 key!5896 hashF!1559) _$33!799)))

(declare-fun bs!1153840 () Bool)

(assert (= bs!1153840 d!1531601))

(assert (=> bs!1153840 m!5766966))

(assert (=> d!1531489 d!1531601))

(declare-fun d!1531603 () Bool)

(declare-fun res!2034244 () Bool)

(declare-fun e!2989490 () Bool)

(assert (=> d!1531603 (=> res!2034244 e!2989490)))

(assert (=> d!1531603 (= res!2034244 (is-Nil!54112 (toList!6829 lm!2473)))))

(assert (=> d!1531603 (= (forall!12185 (toList!6829 lm!2473) lambda!229604) e!2989490)))

(declare-fun b!4787980 () Bool)

(declare-fun e!2989491 () Bool)

(assert (=> b!4787980 (= e!2989490 e!2989491)))

(declare-fun res!2034245 () Bool)

(assert (=> b!4787980 (=> (not res!2034245) (not e!2989491))))

(assert (=> b!4787980 (= res!2034245 (dynLambda!22042 lambda!229604 (h!60536 (toList!6829 lm!2473))))))

(declare-fun b!4787981 () Bool)

(assert (=> b!4787981 (= e!2989491 (forall!12185 (t!361686 (toList!6829 lm!2473)) lambda!229604))))

(assert (= (and d!1531603 (not res!2034244)) b!4787980))

(assert (= (and b!4787980 res!2034245) b!4787981))

(declare-fun b_lambda!186337 () Bool)

(assert (=> (not b_lambda!186337) (not b!4787980)))

(declare-fun m!5767366 () Bool)

(assert (=> b!4787980 m!5767366))

(declare-fun m!5767368 () Bool)

(assert (=> b!4787981 m!5767368))

(assert (=> d!1531489 d!1531603))

(assert (=> b!4787677 d!1531525))

(assert (=> b!4787677 d!1531527))

(declare-fun b!4787992 () Bool)

(assert (=> b!4787992 true))

(declare-fun bs!1153841 () Bool)

(declare-fun b!4787996 () Bool)

(assert (= bs!1153841 (and b!4787996 b!4787992)))

(declare-fun lambda!229667 () Int)

(declare-fun lambda!229666 () Int)

(assert (=> bs!1153841 (= lambda!229667 lambda!229666)))

(assert (=> b!4787996 true))

(declare-fun lt!1948490 () ListMap!6301)

(declare-fun lambda!229668 () Int)

(assert (=> bs!1153841 (= (= lt!1948490 (extractMap!2402 (t!361686 (toList!6829 lm!2473)))) (= lambda!229668 lambda!229666))))

(assert (=> b!4787996 (= (= lt!1948490 (extractMap!2402 (t!361686 (toList!6829 lm!2473)))) (= lambda!229668 lambda!229667))))

(assert (=> b!4787996 true))

(declare-fun bs!1153842 () Bool)

(declare-fun d!1531605 () Bool)

(assert (= bs!1153842 (and d!1531605 b!4787992)))

(declare-fun lt!1948484 () ListMap!6301)

(declare-fun lambda!229669 () Int)

(assert (=> bs!1153842 (= (= lt!1948484 (extractMap!2402 (t!361686 (toList!6829 lm!2473)))) (= lambda!229669 lambda!229666))))

(declare-fun bs!1153843 () Bool)

(assert (= bs!1153843 (and d!1531605 b!4787996)))

(assert (=> bs!1153843 (= (= lt!1948484 (extractMap!2402 (t!361686 (toList!6829 lm!2473)))) (= lambda!229669 lambda!229667))))

(assert (=> bs!1153843 (= (= lt!1948484 lt!1948490) (= lambda!229669 lambda!229668))))

(assert (=> d!1531605 true))

(declare-fun e!2989499 () ListMap!6301)

(assert (=> b!4787992 (= e!2989499 (extractMap!2402 (t!361686 (toList!6829 lm!2473))))))

(declare-fun lt!1948480 () Unit!139595)

(declare-fun call!334903 () Unit!139595)

(assert (=> b!4787992 (= lt!1948480 call!334903)))

(declare-fun call!334901 () Bool)

(assert (=> b!4787992 call!334901))

(declare-fun lt!1948478 () Unit!139595)

(assert (=> b!4787992 (= lt!1948478 lt!1948480)))

(declare-fun call!334902 () Bool)

(assert (=> b!4787992 call!334902))

(declare-fun lt!1948473 () Unit!139595)

(declare-fun Unit!139609 () Unit!139595)

(assert (=> b!4787992 (= lt!1948473 Unit!139609)))

(declare-fun b!4787993 () Bool)

(declare-fun res!2034254 () Bool)

(declare-fun e!2989500 () Bool)

(assert (=> b!4787993 (=> (not res!2034254) (not e!2989500))))

(declare-fun forall!12188 (List!54235 Int) Bool)

(assert (=> b!4787993 (= res!2034254 (forall!12188 (toList!6830 (extractMap!2402 (t!361686 (toList!6829 lm!2473)))) lambda!229669))))

(declare-fun bm!334896 () Bool)

(declare-fun c!816108 () Bool)

(assert (=> bm!334896 (= call!334902 (forall!12188 (ite c!816108 (toList!6830 (extractMap!2402 (t!361686 (toList!6829 lm!2473)))) (_2!31629 (h!60536 (toList!6829 lm!2473)))) (ite c!816108 lambda!229666 lambda!229668)))))

(declare-fun lt!1948475 () ListMap!6301)

(declare-fun bm!334897 () Bool)

(assert (=> bm!334897 (= call!334901 (forall!12188 (ite c!816108 (toList!6830 (extractMap!2402 (t!361686 (toList!6829 lm!2473)))) (toList!6830 lt!1948475)) (ite c!816108 lambda!229666 lambda!229668)))))

(declare-fun b!4787994 () Bool)

(assert (=> b!4787994 (= e!2989500 (invariantList!1716 (toList!6830 lt!1948484)))))

(assert (=> d!1531605 e!2989500))

(declare-fun res!2034253 () Bool)

(assert (=> d!1531605 (=> (not res!2034253) (not e!2989500))))

(assert (=> d!1531605 (= res!2034253 (forall!12188 (_2!31629 (h!60536 (toList!6829 lm!2473))) lambda!229669))))

(assert (=> d!1531605 (= lt!1948484 e!2989499)))

(assert (=> d!1531605 (= c!816108 (is-Nil!54111 (_2!31629 (h!60536 (toList!6829 lm!2473)))))))

(assert (=> d!1531605 (noDuplicateKeys!2318 (_2!31629 (h!60536 (toList!6829 lm!2473))))))

(assert (=> d!1531605 (= (addToMapMapFromBucket!1687 (_2!31629 (h!60536 (toList!6829 lm!2473))) (extractMap!2402 (t!361686 (toList!6829 lm!2473)))) lt!1948484)))

(declare-fun b!4787995 () Bool)

(declare-fun e!2989498 () Bool)

(assert (=> b!4787995 (= e!2989498 (forall!12188 (toList!6830 (extractMap!2402 (t!361686 (toList!6829 lm!2473)))) lambda!229668))))

(declare-fun bm!334898 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!932 (ListMap!6301) Unit!139595)

(assert (=> bm!334898 (= call!334903 (lemmaContainsAllItsOwnKeys!932 (extractMap!2402 (t!361686 (toList!6829 lm!2473)))))))

(assert (=> b!4787996 (= e!2989499 lt!1948490)))

(declare-fun +!2476 (ListMap!6301 tuple2!56668) ListMap!6301)

(assert (=> b!4787996 (= lt!1948475 (+!2476 (extractMap!2402 (t!361686 (toList!6829 lm!2473))) (h!60535 (_2!31629 (h!60536 (toList!6829 lm!2473))))))))

(assert (=> b!4787996 (= lt!1948490 (addToMapMapFromBucket!1687 (t!361685 (_2!31629 (h!60536 (toList!6829 lm!2473)))) (+!2476 (extractMap!2402 (t!361686 (toList!6829 lm!2473))) (h!60535 (_2!31629 (h!60536 (toList!6829 lm!2473)))))))))

(declare-fun lt!1948492 () Unit!139595)

(assert (=> b!4787996 (= lt!1948492 call!334903)))

(assert (=> b!4787996 (forall!12188 (toList!6830 (extractMap!2402 (t!361686 (toList!6829 lm!2473)))) lambda!229667)))

(declare-fun lt!1948488 () Unit!139595)

(assert (=> b!4787996 (= lt!1948488 lt!1948492)))

(assert (=> b!4787996 (forall!12188 (toList!6830 lt!1948475) lambda!229668)))

(declare-fun lt!1948474 () Unit!139595)

(declare-fun Unit!139610 () Unit!139595)

(assert (=> b!4787996 (= lt!1948474 Unit!139610)))

(assert (=> b!4787996 (forall!12188 (t!361685 (_2!31629 (h!60536 (toList!6829 lm!2473)))) lambda!229668)))

(declare-fun lt!1948477 () Unit!139595)

(declare-fun Unit!139611 () Unit!139595)

(assert (=> b!4787996 (= lt!1948477 Unit!139611)))

(declare-fun lt!1948493 () Unit!139595)

(declare-fun Unit!139612 () Unit!139595)

(assert (=> b!4787996 (= lt!1948493 Unit!139612)))

(declare-fun lt!1948489 () Unit!139595)

(declare-fun forallContained!4134 (List!54235 Int tuple2!56668) Unit!139595)

(assert (=> b!4787996 (= lt!1948489 (forallContained!4134 (toList!6830 lt!1948475) lambda!229668 (h!60535 (_2!31629 (h!60536 (toList!6829 lm!2473))))))))

(assert (=> b!4787996 (contains!17702 lt!1948475 (_1!31628 (h!60535 (_2!31629 (h!60536 (toList!6829 lm!2473))))))))

(declare-fun lt!1948491 () Unit!139595)

(declare-fun Unit!139613 () Unit!139595)

(assert (=> b!4787996 (= lt!1948491 Unit!139613)))

(assert (=> b!4787996 (contains!17702 lt!1948490 (_1!31628 (h!60535 (_2!31629 (h!60536 (toList!6829 lm!2473))))))))

(declare-fun lt!1948485 () Unit!139595)

(declare-fun Unit!139614 () Unit!139595)

(assert (=> b!4787996 (= lt!1948485 Unit!139614)))

(assert (=> b!4787996 (forall!12188 (_2!31629 (h!60536 (toList!6829 lm!2473))) lambda!229668)))

(declare-fun lt!1948487 () Unit!139595)

(declare-fun Unit!139615 () Unit!139595)

(assert (=> b!4787996 (= lt!1948487 Unit!139615)))

(assert (=> b!4787996 call!334901))

(declare-fun lt!1948481 () Unit!139595)

(declare-fun Unit!139616 () Unit!139595)

(assert (=> b!4787996 (= lt!1948481 Unit!139616)))

(declare-fun lt!1948476 () Unit!139595)

(declare-fun Unit!139617 () Unit!139595)

(assert (=> b!4787996 (= lt!1948476 Unit!139617)))

(declare-fun lt!1948486 () Unit!139595)

(declare-fun addForallContainsKeyThenBeforeAdding!931 (ListMap!6301 ListMap!6301 K!15677 V!15923) Unit!139595)

(assert (=> b!4787996 (= lt!1948486 (addForallContainsKeyThenBeforeAdding!931 (extractMap!2402 (t!361686 (toList!6829 lm!2473))) lt!1948490 (_1!31628 (h!60535 (_2!31629 (h!60536 (toList!6829 lm!2473))))) (_2!31628 (h!60535 (_2!31629 (h!60536 (toList!6829 lm!2473)))))))))

(assert (=> b!4787996 (forall!12188 (toList!6830 (extractMap!2402 (t!361686 (toList!6829 lm!2473)))) lambda!229668)))

(declare-fun lt!1948479 () Unit!139595)

(assert (=> b!4787996 (= lt!1948479 lt!1948486)))

(assert (=> b!4787996 (forall!12188 (toList!6830 (extractMap!2402 (t!361686 (toList!6829 lm!2473)))) lambda!229668)))

(declare-fun lt!1948482 () Unit!139595)

(declare-fun Unit!139618 () Unit!139595)

(assert (=> b!4787996 (= lt!1948482 Unit!139618)))

(declare-fun res!2034252 () Bool)

(assert (=> b!4787996 (= res!2034252 call!334902)))

(assert (=> b!4787996 (=> (not res!2034252) (not e!2989498))))

(assert (=> b!4787996 e!2989498))

(declare-fun lt!1948483 () Unit!139595)

(declare-fun Unit!139619 () Unit!139595)

(assert (=> b!4787996 (= lt!1948483 Unit!139619)))

(assert (= (and d!1531605 c!816108) b!4787992))

(assert (= (and d!1531605 (not c!816108)) b!4787996))

(assert (= (and b!4787996 res!2034252) b!4787995))

(assert (= (or b!4787992 b!4787996) bm!334897))

(assert (= (or b!4787992 b!4787996) bm!334896))

(assert (= (or b!4787992 b!4787996) bm!334898))

(assert (= (and d!1531605 res!2034253) b!4787993))

(assert (= (and b!4787993 res!2034254) b!4787994))

(assert (=> bm!334898 m!5767092))

(declare-fun m!5767370 () Bool)

(assert (=> bm!334898 m!5767370))

(declare-fun m!5767372 () Bool)

(assert (=> bm!334896 m!5767372))

(declare-fun m!5767374 () Bool)

(assert (=> b!4787996 m!5767374))

(declare-fun m!5767376 () Bool)

(assert (=> b!4787996 m!5767376))

(assert (=> b!4787996 m!5767092))

(declare-fun m!5767378 () Bool)

(assert (=> b!4787996 m!5767378))

(declare-fun m!5767380 () Bool)

(assert (=> b!4787996 m!5767380))

(declare-fun m!5767382 () Bool)

(assert (=> b!4787996 m!5767382))

(assert (=> b!4787996 m!5767374))

(declare-fun m!5767384 () Bool)

(assert (=> b!4787996 m!5767384))

(declare-fun m!5767386 () Bool)

(assert (=> b!4787996 m!5767386))

(declare-fun m!5767388 () Bool)

(assert (=> b!4787996 m!5767388))

(declare-fun m!5767390 () Bool)

(assert (=> b!4787996 m!5767390))

(declare-fun m!5767392 () Bool)

(assert (=> b!4787996 m!5767392))

(declare-fun m!5767394 () Bool)

(assert (=> b!4787996 m!5767394))

(assert (=> b!4787996 m!5767092))

(assert (=> b!4787996 m!5767390))

(declare-fun m!5767396 () Bool)

(assert (=> bm!334897 m!5767396))

(declare-fun m!5767398 () Bool)

(assert (=> b!4787993 m!5767398))

(assert (=> b!4787995 m!5767374))

(declare-fun m!5767400 () Bool)

(assert (=> b!4787994 m!5767400))

(declare-fun m!5767402 () Bool)

(assert (=> d!1531605 m!5767402))

(assert (=> d!1531605 m!5767150))

(assert (=> b!4787714 d!1531605))

(declare-fun bs!1153844 () Bool)

(declare-fun d!1531607 () Bool)

(assert (= bs!1153844 (and d!1531607 start!492460)))

(declare-fun lambda!229670 () Int)

(assert (=> bs!1153844 (= lambda!229670 lambda!229592)))

(declare-fun bs!1153845 () Bool)

(assert (= bs!1153845 (and d!1531607 d!1531479)))

(assert (=> bs!1153845 (= lambda!229670 lambda!229598)))

(declare-fun bs!1153846 () Bool)

(assert (= bs!1153846 (and d!1531607 d!1531489)))

(assert (=> bs!1153846 (= lambda!229670 lambda!229604)))

(declare-fun bs!1153847 () Bool)

(assert (= bs!1153847 (and d!1531607 d!1531483)))

(assert (=> bs!1153847 (not (= lambda!229670 lambda!229601))))

(declare-fun bs!1153848 () Bool)

(assert (= bs!1153848 (and d!1531607 d!1531491)))

(assert (=> bs!1153848 (= lambda!229670 lambda!229607)))

(declare-fun lt!1948494 () ListMap!6301)

(assert (=> d!1531607 (invariantList!1716 (toList!6830 lt!1948494))))

(declare-fun e!2989501 () ListMap!6301)

(assert (=> d!1531607 (= lt!1948494 e!2989501)))

(declare-fun c!816109 () Bool)

(assert (=> d!1531607 (= c!816109 (is-Cons!54112 (t!361686 (toList!6829 lm!2473))))))

(assert (=> d!1531607 (forall!12185 (t!361686 (toList!6829 lm!2473)) lambda!229670)))

(assert (=> d!1531607 (= (extractMap!2402 (t!361686 (toList!6829 lm!2473))) lt!1948494)))

(declare-fun b!4787999 () Bool)

(assert (=> b!4787999 (= e!2989501 (addToMapMapFromBucket!1687 (_2!31629 (h!60536 (t!361686 (toList!6829 lm!2473)))) (extractMap!2402 (t!361686 (t!361686 (toList!6829 lm!2473))))))))

(declare-fun b!4788000 () Bool)

(assert (=> b!4788000 (= e!2989501 (ListMap!6302 Nil!54111))))

(assert (= (and d!1531607 c!816109) b!4787999))

(assert (= (and d!1531607 (not c!816109)) b!4788000))

(declare-fun m!5767404 () Bool)

(assert (=> d!1531607 m!5767404))

(declare-fun m!5767406 () Bool)

(assert (=> d!1531607 m!5767406))

(declare-fun m!5767408 () Bool)

(assert (=> b!4787999 m!5767408))

(assert (=> b!4787999 m!5767408))

(declare-fun m!5767410 () Bool)

(assert (=> b!4787999 m!5767410))

(assert (=> b!4787714 d!1531607))

(declare-fun d!1531609 () Bool)

(assert (=> d!1531609 (= (get!18428 (getValueByKey!2323 (toList!6829 lm!2473) lt!1948280)) (v!48286 (getValueByKey!2323 (toList!6829 lm!2473) lt!1948280)))))

(assert (=> d!1531469 d!1531609))

(assert (=> d!1531469 d!1531551))

(declare-fun d!1531611 () Bool)

(declare-fun e!2989502 () Bool)

(assert (=> d!1531611 e!2989502))

(declare-fun res!2034255 () Bool)

(assert (=> d!1531611 (=> res!2034255 e!2989502)))

(declare-fun lt!1948495 () Bool)

(assert (=> d!1531611 (= res!2034255 (not lt!1948495))))

(declare-fun lt!1948497 () Bool)

(assert (=> d!1531611 (= lt!1948495 lt!1948497)))

(declare-fun lt!1948496 () Unit!139595)

(declare-fun e!2989503 () Unit!139595)

(assert (=> d!1531611 (= lt!1948496 e!2989503)))

(declare-fun c!816110 () Bool)

(assert (=> d!1531611 (= c!816110 lt!1948497)))

(assert (=> d!1531611 (= lt!1948497 (containsKey!3888 (toList!6829 lm!2473) (hash!4897 hashF!1559 key!5896)))))

(assert (=> d!1531611 (= (contains!17703 lm!2473 (hash!4897 hashF!1559 key!5896)) lt!1948495)))

(declare-fun b!4788001 () Bool)

(declare-fun lt!1948498 () Unit!139595)

(assert (=> b!4788001 (= e!2989503 lt!1948498)))

(assert (=> b!4788001 (= lt!1948498 (lemmaContainsKeyImpliesGetValueByKeyDefined!2116 (toList!6829 lm!2473) (hash!4897 hashF!1559 key!5896)))))

(assert (=> b!4788001 (isDefined!10167 (getValueByKey!2323 (toList!6829 lm!2473) (hash!4897 hashF!1559 key!5896)))))

(declare-fun b!4788002 () Bool)

(declare-fun Unit!139620 () Unit!139595)

(assert (=> b!4788002 (= e!2989503 Unit!139620)))

(declare-fun b!4788003 () Bool)

(assert (=> b!4788003 (= e!2989502 (isDefined!10167 (getValueByKey!2323 (toList!6829 lm!2473) (hash!4897 hashF!1559 key!5896))))))

(assert (= (and d!1531611 c!816110) b!4788001))

(assert (= (and d!1531611 (not c!816110)) b!4788002))

(assert (= (and d!1531611 (not res!2034255)) b!4788003))

(assert (=> d!1531611 m!5766968))

(declare-fun m!5767412 () Bool)

(assert (=> d!1531611 m!5767412))

(assert (=> b!4788001 m!5766968))

(declare-fun m!5767414 () Bool)

(assert (=> b!4788001 m!5767414))

(assert (=> b!4788001 m!5766968))

(assert (=> b!4788001 m!5767298))

(assert (=> b!4788001 m!5767298))

(declare-fun m!5767416 () Bool)

(assert (=> b!4788001 m!5767416))

(assert (=> b!4788003 m!5766968))

(assert (=> b!4788003 m!5767298))

(assert (=> b!4788003 m!5767298))

(assert (=> b!4788003 m!5767416))

(assert (=> d!1531491 d!1531611))

(assert (=> d!1531491 d!1531497))

(declare-fun d!1531613 () Bool)

(declare-fun e!2989506 () Bool)

(assert (=> d!1531613 e!2989506))

(declare-fun res!2034258 () Bool)

(assert (=> d!1531613 (=> (not res!2034258) (not e!2989506))))

(assert (=> d!1531613 (= res!2034258 (contains!17703 lm!2473 (hash!4897 hashF!1559 key!5896)))))

(assert (=> d!1531613 true))

(declare-fun _$5!181 () Unit!139595)

(assert (=> d!1531613 (= (choose!34430 lm!2473 key!5896 hashF!1559) _$5!181)))

(declare-fun b!4788006 () Bool)

(assert (=> b!4788006 (= e!2989506 (isDefined!10164 (getPair!847 (apply!12936 lm!2473 (hash!4897 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1531613 res!2034258) b!4788006))

(assert (=> d!1531613 m!5766968))

(assert (=> d!1531613 m!5766968))

(assert (=> d!1531613 m!5767108))

(assert (=> b!4788006 m!5766968))

(assert (=> b!4788006 m!5766968))

(assert (=> b!4788006 m!5767114))

(assert (=> b!4788006 m!5767114))

(assert (=> b!4788006 m!5767116))

(assert (=> b!4788006 m!5767116))

(assert (=> b!4788006 m!5767118))

(assert (=> d!1531491 d!1531613))

(declare-fun d!1531615 () Bool)

(declare-fun res!2034259 () Bool)

(declare-fun e!2989507 () Bool)

(assert (=> d!1531615 (=> res!2034259 e!2989507)))

(assert (=> d!1531615 (= res!2034259 (is-Nil!54112 (toList!6829 lm!2473)))))

(assert (=> d!1531615 (= (forall!12185 (toList!6829 lm!2473) lambda!229607) e!2989507)))

(declare-fun b!4788007 () Bool)

(declare-fun e!2989508 () Bool)

(assert (=> b!4788007 (= e!2989507 e!2989508)))

(declare-fun res!2034260 () Bool)

(assert (=> b!4788007 (=> (not res!2034260) (not e!2989508))))

(assert (=> b!4788007 (= res!2034260 (dynLambda!22042 lambda!229607 (h!60536 (toList!6829 lm!2473))))))

(declare-fun b!4788008 () Bool)

(assert (=> b!4788008 (= e!2989508 (forall!12185 (t!361686 (toList!6829 lm!2473)) lambda!229607))))

(assert (= (and d!1531615 (not res!2034259)) b!4788007))

(assert (= (and b!4788007 res!2034260) b!4788008))

(declare-fun b_lambda!186339 () Bool)

(assert (=> (not b_lambda!186339) (not b!4788007)))

(declare-fun m!5767418 () Bool)

(assert (=> b!4788007 m!5767418))

(declare-fun m!5767420 () Bool)

(assert (=> b!4788008 m!5767420))

(assert (=> d!1531491 d!1531615))

(declare-fun d!1531617 () Bool)

(assert (=> d!1531617 (= (isDefined!10164 lt!1948292) (not (isEmpty!29400 lt!1948292)))))

(declare-fun bs!1153849 () Bool)

(assert (= bs!1153849 d!1531617))

(assert (=> bs!1153849 m!5767040))

(assert (=> b!4787652 d!1531617))

(declare-fun d!1531619 () Bool)

(declare-fun res!2034265 () Bool)

(declare-fun e!2989513 () Bool)

(assert (=> d!1531619 (=> res!2034265 e!2989513)))

(assert (=> d!1531619 (= res!2034265 (and (is-Cons!54112 (toList!6829 lm!2473)) (= (_1!31629 (h!60536 (toList!6829 lm!2473))) lt!1948280)))))

(assert (=> d!1531619 (= (containsKey!3888 (toList!6829 lm!2473) lt!1948280) e!2989513)))

(declare-fun b!4788013 () Bool)

(declare-fun e!2989514 () Bool)

(assert (=> b!4788013 (= e!2989513 e!2989514)))

(declare-fun res!2034266 () Bool)

(assert (=> b!4788013 (=> (not res!2034266) (not e!2989514))))

(assert (=> b!4788013 (= res!2034266 (and (or (not (is-Cons!54112 (toList!6829 lm!2473))) (bvsle (_1!31629 (h!60536 (toList!6829 lm!2473))) lt!1948280)) (is-Cons!54112 (toList!6829 lm!2473)) (bvslt (_1!31629 (h!60536 (toList!6829 lm!2473))) lt!1948280)))))

(declare-fun b!4788014 () Bool)

(assert (=> b!4788014 (= e!2989514 (containsKey!3888 (t!361686 (toList!6829 lm!2473)) lt!1948280))))

(assert (= (and d!1531619 (not res!2034265)) b!4788013))

(assert (= (and b!4788013 res!2034266) b!4788014))

(declare-fun m!5767422 () Bool)

(assert (=> b!4788014 m!5767422))

(assert (=> d!1531499 d!1531619))

(declare-fun d!1531621 () Bool)

(assert (=> d!1531621 (= (get!18427 (getPair!847 (_2!31629 (h!60536 (toList!6829 lm!2473))) key!5896)) (v!48284 (getPair!847 (_2!31629 (h!60536 (toList!6829 lm!2473))) key!5896)))))

(assert (=> b!4787745 d!1531621))

(declare-fun b!4788015 () Bool)

(declare-fun e!2989518 () Option!13022)

(assert (=> b!4788015 (= e!2989518 (Some!13021 (h!60535 (_2!31629 (h!60536 (toList!6829 lm!2473))))))))

(declare-fun b!4788016 () Bool)

(declare-fun e!2989517 () Bool)

(declare-fun e!2989515 () Bool)

(assert (=> b!4788016 (= e!2989517 e!2989515)))

(declare-fun res!2034270 () Bool)

(assert (=> b!4788016 (=> (not res!2034270) (not e!2989515))))

(declare-fun lt!1948499 () Option!13022)

(assert (=> b!4788016 (= res!2034270 (isDefined!10164 lt!1948499))))

(declare-fun b!4788018 () Bool)

(declare-fun res!2034268 () Bool)

(assert (=> b!4788018 (=> (not res!2034268) (not e!2989515))))

(assert (=> b!4788018 (= res!2034268 (= (_1!31628 (get!18427 lt!1948499)) key!5896))))

(declare-fun b!4788019 () Bool)

(declare-fun e!2989516 () Option!13022)

(assert (=> b!4788019 (= e!2989516 (getPair!847 (t!361685 (_2!31629 (h!60536 (toList!6829 lm!2473)))) key!5896))))

(declare-fun b!4788020 () Bool)

(assert (=> b!4788020 (= e!2989515 (contains!17706 (_2!31629 (h!60536 (toList!6829 lm!2473))) (get!18427 lt!1948499)))))

(declare-fun b!4788021 () Bool)

(assert (=> b!4788021 (= e!2989516 None!13021)))

(declare-fun b!4788022 () Bool)

(declare-fun e!2989519 () Bool)

(assert (=> b!4788022 (= e!2989519 (not (containsKey!3885 (_2!31629 (h!60536 (toList!6829 lm!2473))) key!5896)))))

(declare-fun d!1531623 () Bool)

(assert (=> d!1531623 e!2989517))

(declare-fun res!2034267 () Bool)

(assert (=> d!1531623 (=> res!2034267 e!2989517)))

(assert (=> d!1531623 (= res!2034267 e!2989519)))

(declare-fun res!2034269 () Bool)

(assert (=> d!1531623 (=> (not res!2034269) (not e!2989519))))

(assert (=> d!1531623 (= res!2034269 (isEmpty!29400 lt!1948499))))

(assert (=> d!1531623 (= lt!1948499 e!2989518)))

(declare-fun c!816112 () Bool)

(assert (=> d!1531623 (= c!816112 (and (is-Cons!54111 (_2!31629 (h!60536 (toList!6829 lm!2473)))) (= (_1!31628 (h!60535 (_2!31629 (h!60536 (toList!6829 lm!2473))))) key!5896)))))

(assert (=> d!1531623 (noDuplicateKeys!2318 (_2!31629 (h!60536 (toList!6829 lm!2473))))))

(assert (=> d!1531623 (= (getPair!847 (_2!31629 (h!60536 (toList!6829 lm!2473))) key!5896) lt!1948499)))

(declare-fun b!4788017 () Bool)

(assert (=> b!4788017 (= e!2989518 e!2989516)))

(declare-fun c!816111 () Bool)

(assert (=> b!4788017 (= c!816111 (is-Cons!54111 (_2!31629 (h!60536 (toList!6829 lm!2473)))))))

(assert (= (and d!1531623 c!816112) b!4788015))

(assert (= (and d!1531623 (not c!816112)) b!4788017))

(assert (= (and b!4788017 c!816111) b!4788019))

(assert (= (and b!4788017 (not c!816111)) b!4788021))

(assert (= (and d!1531623 res!2034269) b!4788022))

(assert (= (and d!1531623 (not res!2034267)) b!4788016))

(assert (= (and b!4788016 res!2034270) b!4788018))

(assert (= (and b!4788018 res!2034268) b!4788020))

(declare-fun m!5767424 () Bool)

(assert (=> b!4788019 m!5767424))

(declare-fun m!5767426 () Bool)

(assert (=> b!4788016 m!5767426))

(declare-fun m!5767428 () Bool)

(assert (=> b!4788020 m!5767428))

(assert (=> b!4788020 m!5767428))

(declare-fun m!5767430 () Bool)

(assert (=> b!4788020 m!5767430))

(declare-fun m!5767432 () Bool)

(assert (=> d!1531623 m!5767432))

(assert (=> d!1531623 m!5767150))

(assert (=> b!4788018 m!5767428))

(assert (=> b!4788022 m!5766992))

(assert (=> b!4787745 d!1531623))

(declare-fun tp!1357773 () Bool)

(declare-fun e!2989522 () Bool)

(declare-fun b!4788027 () Bool)

(assert (=> b!4788027 (= e!2989522 (and tp_is_empty!33381 tp_is_empty!33383 tp!1357773))))

(assert (=> b!4787782 (= tp!1357763 e!2989522)))

(assert (= (and b!4787782 (is-Cons!54111 (_2!31629 (h!60536 (toList!6829 lm!2473))))) b!4788027))

(declare-fun b!4788028 () Bool)

(declare-fun e!2989523 () Bool)

(declare-fun tp!1357774 () Bool)

(declare-fun tp!1357775 () Bool)

(assert (=> b!4788028 (= e!2989523 (and tp!1357774 tp!1357775))))

(assert (=> b!4787782 (= tp!1357764 e!2989523)))

(assert (= (and b!4787782 (is-Cons!54112 (t!361686 (toList!6829 lm!2473)))) b!4788028))

(declare-fun b_lambda!186341 () Bool)

(assert (= b_lambda!186335 (or d!1531483 b_lambda!186341)))

(declare-fun bs!1153850 () Bool)

(declare-fun d!1531625 () Bool)

(assert (= bs!1153850 (and d!1531625 d!1531483)))

(declare-fun allKeysSameHash!1950 (List!54235 (_ BitVec 64) Hashable!6875) Bool)

(assert (=> bs!1153850 (= (dynLambda!22042 lambda!229601 (h!60536 (toList!6829 lm!2473))) (allKeysSameHash!1950 (_2!31629 (h!60536 (toList!6829 lm!2473))) (_1!31629 (h!60536 (toList!6829 lm!2473))) hashF!1559))))

(declare-fun m!5767434 () Bool)

(assert (=> bs!1153850 m!5767434))

(assert (=> b!4787952 d!1531625))

(declare-fun b_lambda!186343 () Bool)

(assert (= b_lambda!186339 (or d!1531491 b_lambda!186343)))

(declare-fun bs!1153851 () Bool)

(declare-fun d!1531627 () Bool)

(assert (= bs!1153851 (and d!1531627 d!1531491)))

(assert (=> bs!1153851 (= (dynLambda!22042 lambda!229607 (h!60536 (toList!6829 lm!2473))) (noDuplicateKeys!2318 (_2!31629 (h!60536 (toList!6829 lm!2473)))))))

(assert (=> bs!1153851 m!5767150))

(assert (=> b!4788007 d!1531627))

(declare-fun b_lambda!186345 () Bool)

(assert (= b_lambda!186333 (or d!1531479 b_lambda!186345)))

(declare-fun bs!1153852 () Bool)

(declare-fun d!1531629 () Bool)

(assert (= bs!1153852 (and d!1531629 d!1531479)))

(assert (=> bs!1153852 (= (dynLambda!22042 lambda!229598 (h!60536 (toList!6829 lm!2473))) (noDuplicateKeys!2318 (_2!31629 (h!60536 (toList!6829 lm!2473)))))))

(assert (=> bs!1153852 m!5767150))

(assert (=> b!4787896 d!1531629))

(declare-fun b_lambda!186347 () Bool)

(assert (= b_lambda!186337 (or d!1531489 b_lambda!186347)))

(declare-fun bs!1153853 () Bool)

(declare-fun d!1531631 () Bool)

(assert (= bs!1153853 (and d!1531631 d!1531489)))

(assert (=> bs!1153853 (= (dynLambda!22042 lambda!229604 (h!60536 (toList!6829 lm!2473))) (noDuplicateKeys!2318 (_2!31629 (h!60536 (toList!6829 lm!2473)))))))

(assert (=> bs!1153853 m!5767150))

(assert (=> b!4787980 d!1531631))

(declare-fun b_lambda!186349 () Bool)

(assert (= b_lambda!186327 (or start!492460 b_lambda!186349)))

(declare-fun bs!1153854 () Bool)

(declare-fun d!1531633 () Bool)

(assert (= bs!1153854 (and d!1531633 start!492460)))

(assert (=> bs!1153854 (= (dynLambda!22042 lambda!229592 (h!60536 (t!361686 (toList!6829 lm!2473)))) (noDuplicateKeys!2318 (_2!31629 (h!60536 (t!361686 (toList!6829 lm!2473))))))))

(declare-fun m!5767436 () Bool)

(assert (=> bs!1153854 m!5767436))

(assert (=> b!4787853 d!1531633))

(push 1)

(assert (not b!4788003))

(assert (not b!4788008))

(assert (not d!1531539))

(assert (not b!4787914))

(assert (not d!1531601))

(assert (not b!4787964))

(assert (not b_lambda!186345))

(assert (not b!4788018))

(assert (not d!1531611))

(assert (not b!4787958))

(assert (not b!4787854))

(assert (not b!4788028))

(assert (not b!4787916))

(assert (not b!4787897))

(assert (not b!4787913))

(assert (not d!1531607))

(assert (not b!4788014))

(assert (not bm!334896))

(assert (not b!4787999))

(assert (not d!1531623))

(assert (not b_lambda!186349))

(assert (not b!4787976))

(assert (not b!4788006))

(assert (not b!4787871))

(assert (not d!1531535))

(assert (not d!1531599))

(assert (not b_lambda!186343))

(assert (not b!4787965))

(assert (not d!1531613))

(assert (not b!4788020))

(assert (not d!1531547))

(assert (not bm!334898))

(assert (not d!1531605))

(assert (not d!1531555))

(assert (not b!4787979))

(assert (not d!1531569))

(assert (not b!4787955))

(assert (not b_lambda!186325))

(assert (not d!1531617))

(assert (not d!1531523))

(assert (not b!4787971))

(assert (not b!4787827))

(assert (not b!4787905))

(assert (not b!4788022))

(assert (not b!4787993))

(assert (not b!4787942))

(assert (not b!4787953))

(assert (not bs!1153851))

(assert (not b!4787847))

(assert (not bs!1153852))

(assert (not b!4787975))

(assert (not b_lambda!186347))

(assert (not bs!1153854))

(assert (not d!1531575))

(assert (not bs!1153853))

(assert (not d!1531559))

(assert (not b!4787949))

(assert (not b!4787944))

(assert (not d!1531577))

(assert (not b!4787920))

(assert (not b!4788027))

(assert (not b!4787966))

(assert (not bm!334897))

(assert (not b!4787846))

(assert (not b!4787994))

(assert (not b!4787943))

(assert (not b!4787945))

(assert tp_is_empty!33383)

(assert (not b!4787922))

(assert (not b!4787956))

(assert (not b!4787918))

(assert (not d!1531597))

(assert (not b!4787995))

(assert (not d!1531525))

(assert (not b!4787903))

(assert (not b!4788001))

(assert (not b!4787968))

(assert (not b!4787977))

(assert (not b!4787848))

(assert (not b!4787837))

(assert (not b!4787894))

(assert (not b!4787967))

(assert (not d!1531573))

(assert (not b!4787973))

(assert (not d!1531565))

(assert (not d!1531545))

(assert (not b!4787981))

(assert (not b!4787908))

(assert (not b_lambda!186341))

(assert (not b!4787996))

(assert (not bs!1153850))

(assert (not d!1531527))

(assert (not b!4788019))

(assert (not b!4788016))

(assert (not d!1531571))

(assert tp_is_empty!33381)

(assert (not b!4787969))

(assert (not b!4787919))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

