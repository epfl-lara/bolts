; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!434702 () Bool)

(assert start!434702)

(declare-fun b!4441936 () Bool)

(declare-fun res!1839336 () Bool)

(declare-fun e!2765739 () Bool)

(assert (=> b!4441936 (=> (not res!1839336) (not e!2765739))))

(declare-datatypes ((K!11173 0))(
  ( (K!11174 (val!17209 Int)) )
))
(declare-fun key!3717 () K!11173)

(declare-datatypes ((Hashable!5234 0))(
  ( (HashableExt!5233 (__x!30937 Int)) )
))
(declare-fun hashF!1220 () Hashable!5234)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun hash!2297 (Hashable!5234 K!11173) (_ BitVec 64))

(assert (=> b!4441936 (= res!1839336 (= (hash!2297 hashF!1220 key!3717) hash!366))))

(declare-fun b!4441937 () Bool)

(declare-fun e!2765741 () Bool)

(declare-fun tp!1334228 () Bool)

(assert (=> b!4441937 (= e!2765741 tp!1334228)))

(declare-fun b!4441938 () Bool)

(declare-fun res!1839332 () Bool)

(declare-fun e!2765740 () Bool)

(assert (=> b!4441938 (=> res!1839332 e!2765740)))

(declare-datatypes ((V!11419 0))(
  ( (V!11420 (val!17210 Int)) )
))
(declare-datatypes ((tuple2!49738 0))(
  ( (tuple2!49739 (_1!28163 K!11173) (_2!28163 V!11419)) )
))
(declare-datatypes ((List!49928 0))(
  ( (Nil!49804) (Cons!49804 (h!55533 tuple2!49738) (t!356870 List!49928)) )
))
(declare-datatypes ((tuple2!49740 0))(
  ( (tuple2!49741 (_1!28164 (_ BitVec 64)) (_2!28164 List!49928)) )
))
(declare-datatypes ((List!49929 0))(
  ( (Nil!49805) (Cons!49805 (h!55534 tuple2!49740) (t!356871 List!49929)) )
))
(declare-datatypes ((ListLongMap!2317 0))(
  ( (ListLongMap!2318 (toList!3667 List!49929)) )
))
(declare-fun lt!1637262 () ListLongMap!2317)

(declare-fun allKeysSameHashInMap!946 (ListLongMap!2317 Hashable!5234) Bool)

(assert (=> b!4441938 (= res!1839332 (not (allKeysSameHashInMap!946 lt!1637262 hashF!1220)))))

(declare-fun b!4441939 () Bool)

(declare-fun e!2765745 () Bool)

(declare-fun e!2765743 () Bool)

(assert (=> b!4441939 (= e!2765745 (not e!2765743))))

(declare-fun res!1839337 () Bool)

(assert (=> b!4441939 (=> res!1839337 e!2765743)))

(declare-fun lt!1637260 () ListLongMap!2317)

(declare-fun lambda!157469 () Int)

(declare-fun forall!9711 (List!49929 Int) Bool)

(assert (=> b!4441939 (= res!1839337 (not (forall!9711 (toList!3667 lt!1637260) lambda!157469)))))

(assert (=> b!4441939 (forall!9711 (toList!3667 lt!1637260) lambda!157469)))

(declare-fun newBucket!194 () List!49928)

(declare-fun lm!1616 () ListLongMap!2317)

(declare-fun +!1223 (ListLongMap!2317 tuple2!49740) ListLongMap!2317)

(assert (=> b!4441939 (= lt!1637260 (+!1223 lm!1616 (tuple2!49741 hash!366 newBucket!194)))))

(declare-datatypes ((Unit!83958 0))(
  ( (Unit!83959) )
))
(declare-fun lt!1637261 () Unit!83958)

(declare-fun addValidProp!478 (ListLongMap!2317 Int (_ BitVec 64) List!49928) Unit!83958)

(assert (=> b!4441939 (= lt!1637261 (addValidProp!478 lm!1616 lambda!157469 hash!366 newBucket!194))))

(declare-fun b!4441940 () Bool)

(assert (=> b!4441940 (= e!2765743 e!2765740)))

(declare-fun res!1839330 () Bool)

(assert (=> b!4441940 (=> res!1839330 e!2765740)))

(assert (=> b!4441940 (= res!1839330 (not (forall!9711 (toList!3667 lt!1637262) lambda!157469)))))

(declare-fun tail!7380 (ListLongMap!2317) ListLongMap!2317)

(assert (=> b!4441940 (= lt!1637262 (tail!7380 lm!1616))))

(declare-fun lt!1637263 () Unit!83958)

(declare-fun e!2765746 () Unit!83958)

(assert (=> b!4441940 (= lt!1637263 e!2765746)))

(declare-fun c!755944 () Bool)

(declare-datatypes ((ListMap!2911 0))(
  ( (ListMap!2912 (toList!3668 List!49928)) )
))
(declare-fun contains!12377 (ListMap!2911 K!11173) Bool)

(declare-fun extractMap!901 (List!49929) ListMap!2911)

(declare-fun tail!7381 (List!49929) List!49929)

(assert (=> b!4441940 (= c!755944 (contains!12377 (extractMap!901 (tail!7381 (toList!3667 lm!1616))) key!3717))))

(declare-fun b!4441941 () Bool)

(declare-fun res!1839325 () Bool)

(assert (=> b!4441941 (=> (not res!1839325) (not e!2765739))))

(assert (=> b!4441941 (= res!1839325 (allKeysSameHashInMap!946 lm!1616 hashF!1220))))

(declare-fun b!4441942 () Bool)

(declare-fun res!1839334 () Bool)

(assert (=> b!4441942 (=> (not res!1839334) (not e!2765745))))

(assert (=> b!4441942 (= res!1839334 (forall!9711 (toList!3667 lm!1616) lambda!157469))))

(declare-fun b!4441943 () Bool)

(declare-fun res!1839326 () Bool)

(assert (=> b!4441943 (=> (not res!1839326) (not e!2765739))))

(declare-fun allKeysSameHash!800 (List!49928 (_ BitVec 64) Hashable!5234) Bool)

(assert (=> b!4441943 (= res!1839326 (allKeysSameHash!800 newBucket!194 hash!366 hashF!1220))))

(declare-fun res!1839331 () Bool)

(assert (=> start!434702 (=> (not res!1839331) (not e!2765739))))

(assert (=> start!434702 (= res!1839331 (forall!9711 (toList!3667 lm!1616) lambda!157469))))

(assert (=> start!434702 e!2765739))

(declare-fun tp_is_empty!26605 () Bool)

(assert (=> start!434702 tp_is_empty!26605))

(declare-fun tp_is_empty!26607 () Bool)

(assert (=> start!434702 tp_is_empty!26607))

(declare-fun e!2765742 () Bool)

(assert (=> start!434702 e!2765742))

(declare-fun inv!65360 (ListLongMap!2317) Bool)

(assert (=> start!434702 (and (inv!65360 lm!1616) e!2765741)))

(assert (=> start!434702 true))

(declare-fun b!4441944 () Bool)

(declare-fun res!1839324 () Bool)

(assert (=> b!4441944 (=> res!1839324 e!2765743)))

(assert (=> b!4441944 (= res!1839324 (or (and (is-Cons!49805 (toList!3667 lm!1616)) (= (_1!28164 (h!55534 (toList!3667 lm!1616))) hash!366)) (not (is-Cons!49805 (toList!3667 lm!1616))) (= (_1!28164 (h!55534 (toList!3667 lm!1616))) hash!366)))))

(declare-fun b!4441945 () Bool)

(assert (=> b!4441945 (= e!2765739 e!2765745)))

(declare-fun res!1839328 () Bool)

(assert (=> b!4441945 (=> (not res!1839328) (not e!2765745))))

(declare-fun e!2765747 () Bool)

(assert (=> b!4441945 (= res!1839328 e!2765747)))

(declare-fun res!1839333 () Bool)

(assert (=> b!4441945 (=> res!1839333 e!2765747)))

(declare-fun e!2765744 () Bool)

(assert (=> b!4441945 (= res!1839333 e!2765744)))

(declare-fun res!1839327 () Bool)

(assert (=> b!4441945 (=> (not res!1839327) (not e!2765744))))

(declare-fun lt!1637259 () Bool)

(assert (=> b!4441945 (= res!1839327 lt!1637259)))

(declare-fun contains!12378 (ListLongMap!2317 (_ BitVec 64)) Bool)

(assert (=> b!4441945 (= lt!1637259 (contains!12378 lm!1616 hash!366))))

(declare-fun b!4441946 () Bool)

(declare-fun res!1839329 () Bool)

(assert (=> b!4441946 (=> (not res!1839329) (not e!2765745))))

(declare-fun noDuplicateKeys!840 (List!49928) Bool)

(assert (=> b!4441946 (= res!1839329 (noDuplicateKeys!840 newBucket!194))))

(declare-fun b!4441947 () Bool)

(declare-fun tp!1334227 () Bool)

(assert (=> b!4441947 (= e!2765742 (and tp_is_empty!26607 tp_is_empty!26605 tp!1334227))))

(declare-fun b!4441948 () Bool)

(declare-fun res!1839335 () Bool)

(assert (=> b!4441948 (=> (not res!1839335) (not e!2765739))))

(assert (=> b!4441948 (= res!1839335 (not (contains!12377 (extractMap!901 (toList!3667 lm!1616)) key!3717)))))

(declare-fun newValue!93 () V!11419)

(declare-fun b!4441949 () Bool)

(assert (=> b!4441949 (= e!2765747 (and (not lt!1637259) (= newBucket!194 (Cons!49804 (tuple2!49739 key!3717 newValue!93) Nil!49804))))))

(declare-fun b!4441950 () Bool)

(assert (=> b!4441950 (= e!2765740 (not (contains!12377 (extractMap!901 (toList!3667 lt!1637262)) key!3717)))))

(declare-fun b!4441951 () Bool)

(declare-fun Unit!83960 () Unit!83958)

(assert (=> b!4441951 (= e!2765746 Unit!83960)))

(declare-fun lt!1637258 () Unit!83958)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!77 (ListLongMap!2317 K!11173 Hashable!5234) Unit!83958)

(assert (=> b!4441951 (= lt!1637258 (lemmaExtractTailMapContainsThenExtractMapDoes!77 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4441951 false))

(declare-fun b!4441952 () Bool)

(declare-fun apply!11692 (ListLongMap!2317 (_ BitVec 64)) List!49928)

(assert (=> b!4441952 (= e!2765744 (= newBucket!194 (Cons!49804 (tuple2!49739 key!3717 newValue!93) (apply!11692 lm!1616 hash!366))))))

(declare-fun b!4441953 () Bool)

(declare-fun Unit!83961 () Unit!83958)

(assert (=> b!4441953 (= e!2765746 Unit!83961)))

(assert (= (and start!434702 res!1839331) b!4441941))

(assert (= (and b!4441941 res!1839325) b!4441936))

(assert (= (and b!4441936 res!1839336) b!4441943))

(assert (= (and b!4441943 res!1839326) b!4441948))

(assert (= (and b!4441948 res!1839335) b!4441945))

(assert (= (and b!4441945 res!1839327) b!4441952))

(assert (= (and b!4441945 (not res!1839333)) b!4441949))

(assert (= (and b!4441945 res!1839328) b!4441946))

(assert (= (and b!4441946 res!1839329) b!4441942))

(assert (= (and b!4441942 res!1839334) b!4441939))

(assert (= (and b!4441939 (not res!1839337)) b!4441944))

(assert (= (and b!4441944 (not res!1839324)) b!4441940))

(assert (= (and b!4441940 c!755944) b!4441951))

(assert (= (and b!4441940 (not c!755944)) b!4441953))

(assert (= (and b!4441940 (not res!1839330)) b!4441938))

(assert (= (and b!4441938 (not res!1839332)) b!4441950))

(assert (= (and start!434702 (is-Cons!49804 newBucket!194)) b!4441947))

(assert (= start!434702 b!4441937))

(declare-fun m!5130755 () Bool)

(assert (=> b!4441939 m!5130755))

(assert (=> b!4441939 m!5130755))

(declare-fun m!5130757 () Bool)

(assert (=> b!4441939 m!5130757))

(declare-fun m!5130759 () Bool)

(assert (=> b!4441939 m!5130759))

(declare-fun m!5130761 () Bool)

(assert (=> b!4441948 m!5130761))

(assert (=> b!4441948 m!5130761))

(declare-fun m!5130763 () Bool)

(assert (=> b!4441948 m!5130763))

(declare-fun m!5130765 () Bool)

(assert (=> b!4441936 m!5130765))

(declare-fun m!5130767 () Bool)

(assert (=> b!4441952 m!5130767))

(declare-fun m!5130769 () Bool)

(assert (=> b!4441940 m!5130769))

(declare-fun m!5130771 () Bool)

(assert (=> b!4441940 m!5130771))

(declare-fun m!5130773 () Bool)

(assert (=> b!4441940 m!5130773))

(declare-fun m!5130775 () Bool)

(assert (=> b!4441940 m!5130775))

(assert (=> b!4441940 m!5130769))

(assert (=> b!4441940 m!5130771))

(declare-fun m!5130777 () Bool)

(assert (=> b!4441940 m!5130777))

(declare-fun m!5130779 () Bool)

(assert (=> b!4441946 m!5130779))

(declare-fun m!5130781 () Bool)

(assert (=> b!4441950 m!5130781))

(assert (=> b!4441950 m!5130781))

(declare-fun m!5130783 () Bool)

(assert (=> b!4441950 m!5130783))

(declare-fun m!5130785 () Bool)

(assert (=> b!4441942 m!5130785))

(declare-fun m!5130787 () Bool)

(assert (=> b!4441938 m!5130787))

(declare-fun m!5130789 () Bool)

(assert (=> b!4441951 m!5130789))

(declare-fun m!5130791 () Bool)

(assert (=> b!4441943 m!5130791))

(declare-fun m!5130793 () Bool)

(assert (=> b!4441941 m!5130793))

(assert (=> start!434702 m!5130785))

(declare-fun m!5130795 () Bool)

(assert (=> start!434702 m!5130795))

(declare-fun m!5130797 () Bool)

(assert (=> b!4441945 m!5130797))

(push 1)

(assert (not b!4441945))

(assert (not b!4441937))

(assert (not b!4441941))

(assert (not b!4441951))

(assert (not b!4441947))

(assert (not start!434702))

(assert tp_is_empty!26605)

(assert tp_is_empty!26607)

(assert (not b!4441950))

(assert (not b!4441943))

(assert (not b!4441939))

(assert (not b!4441946))

(assert (not b!4441942))

(assert (not b!4441940))

(assert (not b!4441948))

(assert (not b!4441938))

(assert (not b!4441936))

(assert (not b!4441952))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1348385 () Bool)

(declare-fun res!1839384 () Bool)

(declare-fun e!2765779 () Bool)

(assert (=> d!1348385 (=> res!1839384 e!2765779)))

(assert (=> d!1348385 (= res!1839384 (is-Nil!49805 (toList!3667 lm!1616)))))

(assert (=> d!1348385 (= (forall!9711 (toList!3667 lm!1616) lambda!157469) e!2765779)))

(declare-fun b!4442012 () Bool)

(declare-fun e!2765780 () Bool)

(assert (=> b!4442012 (= e!2765779 e!2765780)))

(declare-fun res!1839385 () Bool)

(assert (=> b!4442012 (=> (not res!1839385) (not e!2765780))))

(declare-fun dynLambda!20913 (Int tuple2!49740) Bool)

(assert (=> b!4442012 (= res!1839385 (dynLambda!20913 lambda!157469 (h!55534 (toList!3667 lm!1616))))))

(declare-fun b!4442013 () Bool)

(assert (=> b!4442013 (= e!2765780 (forall!9711 (t!356871 (toList!3667 lm!1616)) lambda!157469))))

(assert (= (and d!1348385 (not res!1839384)) b!4442012))

(assert (= (and b!4442012 res!1839385) b!4442013))

(declare-fun b_lambda!145137 () Bool)

(assert (=> (not b_lambda!145137) (not b!4442012)))

(declare-fun m!5130843 () Bool)

(assert (=> b!4442012 m!5130843))

(declare-fun m!5130845 () Bool)

(assert (=> b!4442013 m!5130845))

(assert (=> start!434702 d!1348385))

(declare-fun d!1348387 () Bool)

(declare-fun isStrictlySorted!272 (List!49929) Bool)

(assert (=> d!1348387 (= (inv!65360 lm!1616) (isStrictlySorted!272 (toList!3667 lm!1616)))))

(declare-fun bs!764369 () Bool)

(assert (= bs!764369 d!1348387))

(declare-fun m!5130847 () Bool)

(assert (=> bs!764369 m!5130847))

(assert (=> start!434702 d!1348387))

(declare-fun d!1348389 () Bool)

(declare-fun res!1839390 () Bool)

(declare-fun e!2765785 () Bool)

(assert (=> d!1348389 (=> res!1839390 e!2765785)))

(assert (=> d!1348389 (= res!1839390 (not (is-Cons!49804 newBucket!194)))))

(assert (=> d!1348389 (= (noDuplicateKeys!840 newBucket!194) e!2765785)))

(declare-fun b!4442018 () Bool)

(declare-fun e!2765786 () Bool)

(assert (=> b!4442018 (= e!2765785 e!2765786)))

(declare-fun res!1839391 () Bool)

(assert (=> b!4442018 (=> (not res!1839391) (not e!2765786))))

(declare-fun containsKey!1249 (List!49928 K!11173) Bool)

(assert (=> b!4442018 (= res!1839391 (not (containsKey!1249 (t!356870 newBucket!194) (_1!28163 (h!55533 newBucket!194)))))))

(declare-fun b!4442019 () Bool)

(assert (=> b!4442019 (= e!2765786 (noDuplicateKeys!840 (t!356870 newBucket!194)))))

(assert (= (and d!1348389 (not res!1839390)) b!4442018))

(assert (= (and b!4442018 res!1839391) b!4442019))

(declare-fun m!5130849 () Bool)

(assert (=> b!4442018 m!5130849))

(declare-fun m!5130851 () Bool)

(assert (=> b!4442019 m!5130851))

(assert (=> b!4441946 d!1348389))

(declare-fun d!1348391 () Bool)

(declare-fun hash!2299 (Hashable!5234 K!11173) (_ BitVec 64))

(assert (=> d!1348391 (= (hash!2297 hashF!1220 key!3717) (hash!2299 hashF!1220 key!3717))))

(declare-fun bs!764370 () Bool)

(assert (= bs!764370 d!1348391))

(declare-fun m!5130853 () Bool)

(assert (=> bs!764370 m!5130853))

(assert (=> b!4441936 d!1348391))

(declare-fun bm!309052 () Bool)

(declare-fun call!309057 () Bool)

(declare-datatypes ((List!49932 0))(
  ( (Nil!49808) (Cons!49808 (h!55539 K!11173) (t!356874 List!49932)) )
))
(declare-fun e!2765809 () List!49932)

(declare-fun contains!12381 (List!49932 K!11173) Bool)

(assert (=> bm!309052 (= call!309057 (contains!12381 e!2765809 key!3717))))

(declare-fun c!755957 () Bool)

(declare-fun c!755959 () Bool)

(assert (=> bm!309052 (= c!755957 c!755959)))

(declare-fun d!1348393 () Bool)

(declare-fun e!2765808 () Bool)

(assert (=> d!1348393 e!2765808))

(declare-fun res!1839402 () Bool)

(assert (=> d!1348393 (=> res!1839402 e!2765808)))

(declare-fun e!2765810 () Bool)

(assert (=> d!1348393 (= res!1839402 e!2765810)))

(declare-fun res!1839401 () Bool)

(assert (=> d!1348393 (=> (not res!1839401) (not e!2765810))))

(declare-fun lt!1637312 () Bool)

(assert (=> d!1348393 (= res!1839401 (not lt!1637312))))

(declare-fun lt!1637317 () Bool)

(assert (=> d!1348393 (= lt!1637312 lt!1637317)))

(declare-fun lt!1637310 () Unit!83958)

(declare-fun e!2765807 () Unit!83958)

(assert (=> d!1348393 (= lt!1637310 e!2765807)))

(assert (=> d!1348393 (= c!755959 lt!1637317)))

(declare-fun containsKey!1250 (List!49928 K!11173) Bool)

(assert (=> d!1348393 (= lt!1637317 (containsKey!1250 (toList!3668 (extractMap!901 (toList!3667 lm!1616))) key!3717))))

(assert (=> d!1348393 (= (contains!12377 (extractMap!901 (toList!3667 lm!1616)) key!3717) lt!1637312)))

(declare-fun b!4442049 () Bool)

(declare-fun keys!17064 (ListMap!2911) List!49932)

(assert (=> b!4442049 (= e!2765810 (not (contains!12381 (keys!17064 (extractMap!901 (toList!3667 lm!1616))) key!3717)))))

(declare-fun b!4442050 () Bool)

(declare-fun getKeysList!292 (List!49928) List!49932)

(assert (=> b!4442050 (= e!2765809 (getKeysList!292 (toList!3668 (extractMap!901 (toList!3667 lm!1616)))))))

(declare-fun b!4442051 () Bool)

(declare-fun e!2765805 () Unit!83958)

(assert (=> b!4442051 (= e!2765807 e!2765805)))

(declare-fun c!755958 () Bool)

(assert (=> b!4442051 (= c!755958 call!309057)))

(declare-fun b!4442052 () Bool)

(declare-fun lt!1637315 () Unit!83958)

(assert (=> b!4442052 (= e!2765807 lt!1637315)))

(declare-fun lt!1637316 () Unit!83958)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!700 (List!49928 K!11173) Unit!83958)

(assert (=> b!4442052 (= lt!1637316 (lemmaContainsKeyImpliesGetValueByKeyDefined!700 (toList!3668 (extractMap!901 (toList!3667 lm!1616))) key!3717))))

(declare-datatypes ((Option!10807 0))(
  ( (None!10806) (Some!10806 (v!44038 V!11419)) )
))
(declare-fun isDefined!8097 (Option!10807) Bool)

(declare-fun getValueByKey!793 (List!49928 K!11173) Option!10807)

(assert (=> b!4442052 (isDefined!8097 (getValueByKey!793 (toList!3668 (extractMap!901 (toList!3667 lm!1616))) key!3717))))

(declare-fun lt!1637311 () Unit!83958)

(assert (=> b!4442052 (= lt!1637311 lt!1637316)))

(declare-fun lemmaInListThenGetKeysListContains!289 (List!49928 K!11173) Unit!83958)

(assert (=> b!4442052 (= lt!1637315 (lemmaInListThenGetKeysListContains!289 (toList!3668 (extractMap!901 (toList!3667 lm!1616))) key!3717))))

(assert (=> b!4442052 call!309057))

(declare-fun b!4442053 () Bool)

(assert (=> b!4442053 false))

(declare-fun lt!1637314 () Unit!83958)

(declare-fun lt!1637313 () Unit!83958)

(assert (=> b!4442053 (= lt!1637314 lt!1637313)))

(assert (=> b!4442053 (containsKey!1250 (toList!3668 (extractMap!901 (toList!3667 lm!1616))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!290 (List!49928 K!11173) Unit!83958)

(assert (=> b!4442053 (= lt!1637313 (lemmaInGetKeysListThenContainsKey!290 (toList!3668 (extractMap!901 (toList!3667 lm!1616))) key!3717))))

(declare-fun Unit!83966 () Unit!83958)

(assert (=> b!4442053 (= e!2765805 Unit!83966)))

(declare-fun b!4442054 () Bool)

(assert (=> b!4442054 (= e!2765809 (keys!17064 (extractMap!901 (toList!3667 lm!1616))))))

(declare-fun b!4442055 () Bool)

(declare-fun Unit!83967 () Unit!83958)

(assert (=> b!4442055 (= e!2765805 Unit!83967)))

(declare-fun b!4442056 () Bool)

(declare-fun e!2765806 () Bool)

(assert (=> b!4442056 (= e!2765806 (contains!12381 (keys!17064 (extractMap!901 (toList!3667 lm!1616))) key!3717))))

(declare-fun b!4442057 () Bool)

(assert (=> b!4442057 (= e!2765808 e!2765806)))

(declare-fun res!1839403 () Bool)

(assert (=> b!4442057 (=> (not res!1839403) (not e!2765806))))

(assert (=> b!4442057 (= res!1839403 (isDefined!8097 (getValueByKey!793 (toList!3668 (extractMap!901 (toList!3667 lm!1616))) key!3717)))))

(assert (= (and d!1348393 c!755959) b!4442052))

(assert (= (and d!1348393 (not c!755959)) b!4442051))

(assert (= (and b!4442051 c!755958) b!4442053))

(assert (= (and b!4442051 (not c!755958)) b!4442055))

(assert (= (or b!4442052 b!4442051) bm!309052))

(assert (= (and bm!309052 c!755957) b!4442050))

(assert (= (and bm!309052 (not c!755957)) b!4442054))

(assert (= (and d!1348393 res!1839401) b!4442049))

(assert (= (and d!1348393 (not res!1839402)) b!4442057))

(assert (= (and b!4442057 res!1839403) b!4442056))

(declare-fun m!5130865 () Bool)

(assert (=> bm!309052 m!5130865))

(assert (=> b!4442056 m!5130761))

(declare-fun m!5130867 () Bool)

(assert (=> b!4442056 m!5130867))

(assert (=> b!4442056 m!5130867))

(declare-fun m!5130869 () Bool)

(assert (=> b!4442056 m!5130869))

(assert (=> b!4442054 m!5130761))

(assert (=> b!4442054 m!5130867))

(declare-fun m!5130871 () Bool)

(assert (=> b!4442057 m!5130871))

(assert (=> b!4442057 m!5130871))

(declare-fun m!5130873 () Bool)

(assert (=> b!4442057 m!5130873))

(declare-fun m!5130875 () Bool)

(assert (=> b!4442052 m!5130875))

(assert (=> b!4442052 m!5130871))

(assert (=> b!4442052 m!5130871))

(assert (=> b!4442052 m!5130873))

(declare-fun m!5130877 () Bool)

(assert (=> b!4442052 m!5130877))

(assert (=> b!4442049 m!5130761))

(assert (=> b!4442049 m!5130867))

(assert (=> b!4442049 m!5130867))

(assert (=> b!4442049 m!5130869))

(declare-fun m!5130879 () Bool)

(assert (=> b!4442053 m!5130879))

(declare-fun m!5130881 () Bool)

(assert (=> b!4442053 m!5130881))

(declare-fun m!5130883 () Bool)

(assert (=> b!4442050 m!5130883))

(assert (=> d!1348393 m!5130879))

(assert (=> b!4441948 d!1348393))

(declare-fun bs!764373 () Bool)

(declare-fun d!1348399 () Bool)

(assert (= bs!764373 (and d!1348399 start!434702)))

(declare-fun lambda!157486 () Int)

(assert (=> bs!764373 (= lambda!157486 lambda!157469)))

(declare-fun lt!1637320 () ListMap!2911)

(declare-fun invariantList!845 (List!49928) Bool)

(assert (=> d!1348399 (invariantList!845 (toList!3668 lt!1637320))))

(declare-fun e!2765813 () ListMap!2911)

(assert (=> d!1348399 (= lt!1637320 e!2765813)))

(declare-fun c!755962 () Bool)

(assert (=> d!1348399 (= c!755962 (is-Cons!49805 (toList!3667 lm!1616)))))

(assert (=> d!1348399 (forall!9711 (toList!3667 lm!1616) lambda!157486)))

(assert (=> d!1348399 (= (extractMap!901 (toList!3667 lm!1616)) lt!1637320)))

(declare-fun b!4442062 () Bool)

(declare-fun addToMapMapFromBucket!448 (List!49928 ListMap!2911) ListMap!2911)

(assert (=> b!4442062 (= e!2765813 (addToMapMapFromBucket!448 (_2!28164 (h!55534 (toList!3667 lm!1616))) (extractMap!901 (t!356871 (toList!3667 lm!1616)))))))

(declare-fun b!4442063 () Bool)

(assert (=> b!4442063 (= e!2765813 (ListMap!2912 Nil!49804))))

(assert (= (and d!1348399 c!755962) b!4442062))

(assert (= (and d!1348399 (not c!755962)) b!4442063))

(declare-fun m!5130885 () Bool)

(assert (=> d!1348399 m!5130885))

(declare-fun m!5130887 () Bool)

(assert (=> d!1348399 m!5130887))

(declare-fun m!5130889 () Bool)

(assert (=> b!4442062 m!5130889))

(assert (=> b!4442062 m!5130889))

(declare-fun m!5130891 () Bool)

(assert (=> b!4442062 m!5130891))

(assert (=> b!4441948 d!1348399))

(declare-fun bs!764374 () Bool)

(declare-fun d!1348401 () Bool)

(assert (= bs!764374 (and d!1348401 start!434702)))

(declare-fun lambda!157489 () Int)

(assert (=> bs!764374 (not (= lambda!157489 lambda!157469))))

(declare-fun bs!764375 () Bool)

(assert (= bs!764375 (and d!1348401 d!1348399)))

(assert (=> bs!764375 (not (= lambda!157489 lambda!157486))))

(assert (=> d!1348401 true))

(assert (=> d!1348401 (= (allKeysSameHashInMap!946 lt!1637262 hashF!1220) (forall!9711 (toList!3667 lt!1637262) lambda!157489))))

(declare-fun bs!764376 () Bool)

(assert (= bs!764376 d!1348401))

(declare-fun m!5130893 () Bool)

(assert (=> bs!764376 m!5130893))

(assert (=> b!4441938 d!1348401))

(declare-fun d!1348403 () Bool)

(declare-fun res!1839404 () Bool)

(declare-fun e!2765814 () Bool)

(assert (=> d!1348403 (=> res!1839404 e!2765814)))

(assert (=> d!1348403 (= res!1839404 (is-Nil!49805 (toList!3667 lt!1637260)))))

(assert (=> d!1348403 (= (forall!9711 (toList!3667 lt!1637260) lambda!157469) e!2765814)))

(declare-fun b!4442066 () Bool)

(declare-fun e!2765815 () Bool)

(assert (=> b!4442066 (= e!2765814 e!2765815)))

(declare-fun res!1839405 () Bool)

(assert (=> b!4442066 (=> (not res!1839405) (not e!2765815))))

(assert (=> b!4442066 (= res!1839405 (dynLambda!20913 lambda!157469 (h!55534 (toList!3667 lt!1637260))))))

(declare-fun b!4442067 () Bool)

(assert (=> b!4442067 (= e!2765815 (forall!9711 (t!356871 (toList!3667 lt!1637260)) lambda!157469))))

(assert (= (and d!1348403 (not res!1839404)) b!4442066))

(assert (= (and b!4442066 res!1839405) b!4442067))

(declare-fun b_lambda!145139 () Bool)

(assert (=> (not b_lambda!145139) (not b!4442066)))

(declare-fun m!5130895 () Bool)

(assert (=> b!4442066 m!5130895))

(declare-fun m!5130897 () Bool)

(assert (=> b!4442067 m!5130897))

(assert (=> b!4441939 d!1348403))

(declare-fun d!1348405 () Bool)

(declare-fun e!2765818 () Bool)

(assert (=> d!1348405 e!2765818))

(declare-fun res!1839410 () Bool)

(assert (=> d!1348405 (=> (not res!1839410) (not e!2765818))))

(declare-fun lt!1637334 () ListLongMap!2317)

(assert (=> d!1348405 (= res!1839410 (contains!12378 lt!1637334 (_1!28164 (tuple2!49741 hash!366 newBucket!194))))))

(declare-fun lt!1637333 () List!49929)

(assert (=> d!1348405 (= lt!1637334 (ListLongMap!2318 lt!1637333))))

(declare-fun lt!1637332 () Unit!83958)

(declare-fun lt!1637331 () Unit!83958)

(assert (=> d!1348405 (= lt!1637332 lt!1637331)))

(declare-datatypes ((Option!10808 0))(
  ( (None!10807) (Some!10807 (v!44039 List!49928)) )
))
(declare-fun getValueByKey!794 (List!49929 (_ BitVec 64)) Option!10808)

(assert (=> d!1348405 (= (getValueByKey!794 lt!1637333 (_1!28164 (tuple2!49741 hash!366 newBucket!194))) (Some!10807 (_2!28164 (tuple2!49741 hash!366 newBucket!194))))))

(declare-fun lemmaContainsTupThenGetReturnValue!516 (List!49929 (_ BitVec 64) List!49928) Unit!83958)

(assert (=> d!1348405 (= lt!1637331 (lemmaContainsTupThenGetReturnValue!516 lt!1637333 (_1!28164 (tuple2!49741 hash!366 newBucket!194)) (_2!28164 (tuple2!49741 hash!366 newBucket!194))))))

(declare-fun insertStrictlySorted!300 (List!49929 (_ BitVec 64) List!49928) List!49929)

(assert (=> d!1348405 (= lt!1637333 (insertStrictlySorted!300 (toList!3667 lm!1616) (_1!28164 (tuple2!49741 hash!366 newBucket!194)) (_2!28164 (tuple2!49741 hash!366 newBucket!194))))))

(assert (=> d!1348405 (= (+!1223 lm!1616 (tuple2!49741 hash!366 newBucket!194)) lt!1637334)))

(declare-fun b!4442072 () Bool)

(declare-fun res!1839411 () Bool)

(assert (=> b!4442072 (=> (not res!1839411) (not e!2765818))))

(assert (=> b!4442072 (= res!1839411 (= (getValueByKey!794 (toList!3667 lt!1637334) (_1!28164 (tuple2!49741 hash!366 newBucket!194))) (Some!10807 (_2!28164 (tuple2!49741 hash!366 newBucket!194)))))))

(declare-fun b!4442073 () Bool)

(declare-fun contains!12382 (List!49929 tuple2!49740) Bool)

(assert (=> b!4442073 (= e!2765818 (contains!12382 (toList!3667 lt!1637334) (tuple2!49741 hash!366 newBucket!194)))))

(assert (= (and d!1348405 res!1839410) b!4442072))

(assert (= (and b!4442072 res!1839411) b!4442073))

(declare-fun m!5130899 () Bool)

(assert (=> d!1348405 m!5130899))

(declare-fun m!5130901 () Bool)

(assert (=> d!1348405 m!5130901))

(declare-fun m!5130903 () Bool)

(assert (=> d!1348405 m!5130903))

(declare-fun m!5130905 () Bool)

(assert (=> d!1348405 m!5130905))

(declare-fun m!5130907 () Bool)

(assert (=> b!4442072 m!5130907))

(declare-fun m!5130909 () Bool)

(assert (=> b!4442073 m!5130909))

(assert (=> b!4441939 d!1348405))

(declare-fun d!1348407 () Bool)

(assert (=> d!1348407 (forall!9711 (toList!3667 (+!1223 lm!1616 (tuple2!49741 hash!366 newBucket!194))) lambda!157469)))

(declare-fun lt!1637338 () Unit!83958)

(declare-fun choose!28216 (ListLongMap!2317 Int (_ BitVec 64) List!49928) Unit!83958)

(assert (=> d!1348407 (= lt!1637338 (choose!28216 lm!1616 lambda!157469 hash!366 newBucket!194))))

(declare-fun e!2765821 () Bool)

(assert (=> d!1348407 e!2765821))

(declare-fun res!1839414 () Bool)

(assert (=> d!1348407 (=> (not res!1839414) (not e!2765821))))

(assert (=> d!1348407 (= res!1839414 (forall!9711 (toList!3667 lm!1616) lambda!157469))))

(assert (=> d!1348407 (= (addValidProp!478 lm!1616 lambda!157469 hash!366 newBucket!194) lt!1637338)))

(declare-fun b!4442077 () Bool)

(assert (=> b!4442077 (= e!2765821 (dynLambda!20913 lambda!157469 (tuple2!49741 hash!366 newBucket!194)))))

(assert (= (and d!1348407 res!1839414) b!4442077))

(declare-fun b_lambda!145141 () Bool)

(assert (=> (not b_lambda!145141) (not b!4442077)))

(assert (=> d!1348407 m!5130757))

(declare-fun m!5130915 () Bool)

(assert (=> d!1348407 m!5130915))

(declare-fun m!5130917 () Bool)

(assert (=> d!1348407 m!5130917))

(assert (=> d!1348407 m!5130785))

(declare-fun m!5130919 () Bool)

(assert (=> b!4442077 m!5130919))

(assert (=> b!4441939 d!1348407))

(declare-fun bm!309053 () Bool)

(declare-fun call!309058 () Bool)

(declare-fun e!2765826 () List!49932)

(assert (=> bm!309053 (= call!309058 (contains!12381 e!2765826 key!3717))))

(declare-fun c!755963 () Bool)

(declare-fun c!755965 () Bool)

(assert (=> bm!309053 (= c!755963 c!755965)))

(declare-fun d!1348411 () Bool)

(declare-fun e!2765825 () Bool)

(assert (=> d!1348411 e!2765825))

(declare-fun res!1839416 () Bool)

(assert (=> d!1348411 (=> res!1839416 e!2765825)))

(declare-fun e!2765827 () Bool)

(assert (=> d!1348411 (= res!1839416 e!2765827)))

(declare-fun res!1839415 () Bool)

(assert (=> d!1348411 (=> (not res!1839415) (not e!2765827))))

(declare-fun lt!1637341 () Bool)

(assert (=> d!1348411 (= res!1839415 (not lt!1637341))))

(declare-fun lt!1637346 () Bool)

(assert (=> d!1348411 (= lt!1637341 lt!1637346)))

(declare-fun lt!1637339 () Unit!83958)

(declare-fun e!2765824 () Unit!83958)

(assert (=> d!1348411 (= lt!1637339 e!2765824)))

(assert (=> d!1348411 (= c!755965 lt!1637346)))

(assert (=> d!1348411 (= lt!1637346 (containsKey!1250 (toList!3668 (extractMap!901 (toList!3667 lt!1637262))) key!3717))))

(assert (=> d!1348411 (= (contains!12377 (extractMap!901 (toList!3667 lt!1637262)) key!3717) lt!1637341)))

(declare-fun b!4442082 () Bool)

(assert (=> b!4442082 (= e!2765827 (not (contains!12381 (keys!17064 (extractMap!901 (toList!3667 lt!1637262))) key!3717)))))

(declare-fun b!4442083 () Bool)

(assert (=> b!4442083 (= e!2765826 (getKeysList!292 (toList!3668 (extractMap!901 (toList!3667 lt!1637262)))))))

(declare-fun b!4442084 () Bool)

(declare-fun e!2765822 () Unit!83958)

(assert (=> b!4442084 (= e!2765824 e!2765822)))

(declare-fun c!755964 () Bool)

(assert (=> b!4442084 (= c!755964 call!309058)))

(declare-fun b!4442085 () Bool)

(declare-fun lt!1637344 () Unit!83958)

(assert (=> b!4442085 (= e!2765824 lt!1637344)))

(declare-fun lt!1637345 () Unit!83958)

(assert (=> b!4442085 (= lt!1637345 (lemmaContainsKeyImpliesGetValueByKeyDefined!700 (toList!3668 (extractMap!901 (toList!3667 lt!1637262))) key!3717))))

(assert (=> b!4442085 (isDefined!8097 (getValueByKey!793 (toList!3668 (extractMap!901 (toList!3667 lt!1637262))) key!3717))))

(declare-fun lt!1637340 () Unit!83958)

(assert (=> b!4442085 (= lt!1637340 lt!1637345)))

(assert (=> b!4442085 (= lt!1637344 (lemmaInListThenGetKeysListContains!289 (toList!3668 (extractMap!901 (toList!3667 lt!1637262))) key!3717))))

(assert (=> b!4442085 call!309058))

(declare-fun b!4442086 () Bool)

(assert (=> b!4442086 false))

(declare-fun lt!1637343 () Unit!83958)

(declare-fun lt!1637342 () Unit!83958)

(assert (=> b!4442086 (= lt!1637343 lt!1637342)))

(assert (=> b!4442086 (containsKey!1250 (toList!3668 (extractMap!901 (toList!3667 lt!1637262))) key!3717)))

(assert (=> b!4442086 (= lt!1637342 (lemmaInGetKeysListThenContainsKey!290 (toList!3668 (extractMap!901 (toList!3667 lt!1637262))) key!3717))))

(declare-fun Unit!83968 () Unit!83958)

(assert (=> b!4442086 (= e!2765822 Unit!83968)))

(declare-fun b!4442087 () Bool)

(assert (=> b!4442087 (= e!2765826 (keys!17064 (extractMap!901 (toList!3667 lt!1637262))))))

(declare-fun b!4442088 () Bool)

(declare-fun Unit!83969 () Unit!83958)

(assert (=> b!4442088 (= e!2765822 Unit!83969)))

(declare-fun b!4442089 () Bool)

(declare-fun e!2765823 () Bool)

(assert (=> b!4442089 (= e!2765823 (contains!12381 (keys!17064 (extractMap!901 (toList!3667 lt!1637262))) key!3717))))

(declare-fun b!4442090 () Bool)

(assert (=> b!4442090 (= e!2765825 e!2765823)))

(declare-fun res!1839417 () Bool)

(assert (=> b!4442090 (=> (not res!1839417) (not e!2765823))))

(assert (=> b!4442090 (= res!1839417 (isDefined!8097 (getValueByKey!793 (toList!3668 (extractMap!901 (toList!3667 lt!1637262))) key!3717)))))

(assert (= (and d!1348411 c!755965) b!4442085))

(assert (= (and d!1348411 (not c!755965)) b!4442084))

(assert (= (and b!4442084 c!755964) b!4442086))

(assert (= (and b!4442084 (not c!755964)) b!4442088))

(assert (= (or b!4442085 b!4442084) bm!309053))

(assert (= (and bm!309053 c!755963) b!4442083))

(assert (= (and bm!309053 (not c!755963)) b!4442087))

(assert (= (and d!1348411 res!1839415) b!4442082))

(assert (= (and d!1348411 (not res!1839416)) b!4442090))

(assert (= (and b!4442090 res!1839417) b!4442089))

(declare-fun m!5130923 () Bool)

(assert (=> bm!309053 m!5130923))

(assert (=> b!4442089 m!5130781))

(declare-fun m!5130925 () Bool)

(assert (=> b!4442089 m!5130925))

(assert (=> b!4442089 m!5130925))

(declare-fun m!5130927 () Bool)

(assert (=> b!4442089 m!5130927))

(assert (=> b!4442087 m!5130781))

(assert (=> b!4442087 m!5130925))

(declare-fun m!5130929 () Bool)

(assert (=> b!4442090 m!5130929))

(assert (=> b!4442090 m!5130929))

(declare-fun m!5130931 () Bool)

(assert (=> b!4442090 m!5130931))

(declare-fun m!5130933 () Bool)

(assert (=> b!4442085 m!5130933))

(assert (=> b!4442085 m!5130929))

(assert (=> b!4442085 m!5130929))

(assert (=> b!4442085 m!5130931))

(declare-fun m!5130935 () Bool)

(assert (=> b!4442085 m!5130935))

(assert (=> b!4442082 m!5130781))

(assert (=> b!4442082 m!5130925))

(assert (=> b!4442082 m!5130925))

(assert (=> b!4442082 m!5130927))

(declare-fun m!5130937 () Bool)

(assert (=> b!4442086 m!5130937))

(declare-fun m!5130939 () Bool)

(assert (=> b!4442086 m!5130939))

(declare-fun m!5130941 () Bool)

(assert (=> b!4442083 m!5130941))

(assert (=> d!1348411 m!5130937))

(assert (=> b!4441950 d!1348411))

(declare-fun bs!764384 () Bool)

(declare-fun d!1348415 () Bool)

(assert (= bs!764384 (and d!1348415 start!434702)))

(declare-fun lambda!157497 () Int)

(assert (=> bs!764384 (= lambda!157497 lambda!157469)))

(declare-fun bs!764385 () Bool)

(assert (= bs!764385 (and d!1348415 d!1348399)))

(assert (=> bs!764385 (= lambda!157497 lambda!157486)))

(declare-fun bs!764387 () Bool)

(assert (= bs!764387 (and d!1348415 d!1348401)))

(assert (=> bs!764387 (not (= lambda!157497 lambda!157489))))

(declare-fun lt!1637347 () ListMap!2911)

(assert (=> d!1348415 (invariantList!845 (toList!3668 lt!1637347))))

(declare-fun e!2765828 () ListMap!2911)

(assert (=> d!1348415 (= lt!1637347 e!2765828)))

(declare-fun c!755966 () Bool)

(assert (=> d!1348415 (= c!755966 (is-Cons!49805 (toList!3667 lt!1637262)))))

(assert (=> d!1348415 (forall!9711 (toList!3667 lt!1637262) lambda!157497)))

(assert (=> d!1348415 (= (extractMap!901 (toList!3667 lt!1637262)) lt!1637347)))

(declare-fun b!4442091 () Bool)

(assert (=> b!4442091 (= e!2765828 (addToMapMapFromBucket!448 (_2!28164 (h!55534 (toList!3667 lt!1637262))) (extractMap!901 (t!356871 (toList!3667 lt!1637262)))))))

(declare-fun b!4442092 () Bool)

(assert (=> b!4442092 (= e!2765828 (ListMap!2912 Nil!49804))))

(assert (= (and d!1348415 c!755966) b!4442091))

(assert (= (and d!1348415 (not c!755966)) b!4442092))

(declare-fun m!5130945 () Bool)

(assert (=> d!1348415 m!5130945))

(declare-fun m!5130947 () Bool)

(assert (=> d!1348415 m!5130947))

(declare-fun m!5130949 () Bool)

(assert (=> b!4442091 m!5130949))

(assert (=> b!4442091 m!5130949))

(declare-fun m!5130951 () Bool)

(assert (=> b!4442091 m!5130951))

(assert (=> b!4441950 d!1348415))

(declare-fun d!1348419 () Bool)

(declare-fun res!1839418 () Bool)

(declare-fun e!2765829 () Bool)

(assert (=> d!1348419 (=> res!1839418 e!2765829)))

(assert (=> d!1348419 (= res!1839418 (is-Nil!49805 (toList!3667 lt!1637262)))))

(assert (=> d!1348419 (= (forall!9711 (toList!3667 lt!1637262) lambda!157469) e!2765829)))

(declare-fun b!4442093 () Bool)

(declare-fun e!2765830 () Bool)

(assert (=> b!4442093 (= e!2765829 e!2765830)))

(declare-fun res!1839419 () Bool)

(assert (=> b!4442093 (=> (not res!1839419) (not e!2765830))))

(assert (=> b!4442093 (= res!1839419 (dynLambda!20913 lambda!157469 (h!55534 (toList!3667 lt!1637262))))))

(declare-fun b!4442094 () Bool)

(assert (=> b!4442094 (= e!2765830 (forall!9711 (t!356871 (toList!3667 lt!1637262)) lambda!157469))))

(assert (= (and d!1348419 (not res!1839418)) b!4442093))

(assert (= (and b!4442093 res!1839419) b!4442094))

(declare-fun b_lambda!145143 () Bool)

(assert (=> (not b_lambda!145143) (not b!4442093)))

(declare-fun m!5130953 () Bool)

(assert (=> b!4442093 m!5130953))

(declare-fun m!5130955 () Bool)

(assert (=> b!4442094 m!5130955))

(assert (=> b!4441940 d!1348419))

(declare-fun d!1348421 () Bool)

(assert (=> d!1348421 (= (tail!7380 lm!1616) (ListLongMap!2318 (tail!7381 (toList!3667 lm!1616))))))

(declare-fun bs!764388 () Bool)

(assert (= bs!764388 d!1348421))

(assert (=> bs!764388 m!5130769))

(assert (=> b!4441940 d!1348421))

(declare-fun bs!764389 () Bool)

(declare-fun d!1348423 () Bool)

(assert (= bs!764389 (and d!1348423 start!434702)))

(declare-fun lambda!157498 () Int)

(assert (=> bs!764389 (= lambda!157498 lambda!157469)))

(declare-fun bs!764390 () Bool)

(assert (= bs!764390 (and d!1348423 d!1348399)))

(assert (=> bs!764390 (= lambda!157498 lambda!157486)))

(declare-fun bs!764391 () Bool)

(assert (= bs!764391 (and d!1348423 d!1348401)))

(assert (=> bs!764391 (not (= lambda!157498 lambda!157489))))

(declare-fun bs!764392 () Bool)

(assert (= bs!764392 (and d!1348423 d!1348415)))

(assert (=> bs!764392 (= lambda!157498 lambda!157497)))

(declare-fun lt!1637348 () ListMap!2911)

(assert (=> d!1348423 (invariantList!845 (toList!3668 lt!1637348))))

(declare-fun e!2765831 () ListMap!2911)

(assert (=> d!1348423 (= lt!1637348 e!2765831)))

(declare-fun c!755967 () Bool)

(assert (=> d!1348423 (= c!755967 (is-Cons!49805 (tail!7381 (toList!3667 lm!1616))))))

(assert (=> d!1348423 (forall!9711 (tail!7381 (toList!3667 lm!1616)) lambda!157498)))

(assert (=> d!1348423 (= (extractMap!901 (tail!7381 (toList!3667 lm!1616))) lt!1637348)))

(declare-fun b!4442095 () Bool)

(assert (=> b!4442095 (= e!2765831 (addToMapMapFromBucket!448 (_2!28164 (h!55534 (tail!7381 (toList!3667 lm!1616)))) (extractMap!901 (t!356871 (tail!7381 (toList!3667 lm!1616))))))))

(declare-fun b!4442096 () Bool)

(assert (=> b!4442096 (= e!2765831 (ListMap!2912 Nil!49804))))

(assert (= (and d!1348423 c!755967) b!4442095))

(assert (= (and d!1348423 (not c!755967)) b!4442096))

(declare-fun m!5130957 () Bool)

(assert (=> d!1348423 m!5130957))

(assert (=> d!1348423 m!5130769))

(declare-fun m!5130959 () Bool)

(assert (=> d!1348423 m!5130959))

(declare-fun m!5130961 () Bool)

(assert (=> b!4442095 m!5130961))

(assert (=> b!4442095 m!5130961))

(declare-fun m!5130963 () Bool)

(assert (=> b!4442095 m!5130963))

(assert (=> b!4441940 d!1348423))

(declare-fun d!1348425 () Bool)

(assert (=> d!1348425 (= (tail!7381 (toList!3667 lm!1616)) (t!356871 (toList!3667 lm!1616)))))

(assert (=> b!4441940 d!1348425))

(declare-fun bm!309054 () Bool)

(declare-fun call!309059 () Bool)

(declare-fun e!2765836 () List!49932)

(assert (=> bm!309054 (= call!309059 (contains!12381 e!2765836 key!3717))))

(declare-fun c!755968 () Bool)

(declare-fun c!755970 () Bool)

(assert (=> bm!309054 (= c!755968 c!755970)))

(declare-fun d!1348427 () Bool)

(declare-fun e!2765835 () Bool)

(assert (=> d!1348427 e!2765835))

(declare-fun res!1839421 () Bool)

(assert (=> d!1348427 (=> res!1839421 e!2765835)))

(declare-fun e!2765837 () Bool)

(assert (=> d!1348427 (= res!1839421 e!2765837)))

(declare-fun res!1839420 () Bool)

(assert (=> d!1348427 (=> (not res!1839420) (not e!2765837))))

(declare-fun lt!1637351 () Bool)

(assert (=> d!1348427 (= res!1839420 (not lt!1637351))))

(declare-fun lt!1637356 () Bool)

(assert (=> d!1348427 (= lt!1637351 lt!1637356)))

(declare-fun lt!1637349 () Unit!83958)

(declare-fun e!2765834 () Unit!83958)

(assert (=> d!1348427 (= lt!1637349 e!2765834)))

(assert (=> d!1348427 (= c!755970 lt!1637356)))

(assert (=> d!1348427 (= lt!1637356 (containsKey!1250 (toList!3668 (extractMap!901 (tail!7381 (toList!3667 lm!1616)))) key!3717))))

(assert (=> d!1348427 (= (contains!12377 (extractMap!901 (tail!7381 (toList!3667 lm!1616))) key!3717) lt!1637351)))

(declare-fun b!4442097 () Bool)

(assert (=> b!4442097 (= e!2765837 (not (contains!12381 (keys!17064 (extractMap!901 (tail!7381 (toList!3667 lm!1616)))) key!3717)))))

(declare-fun b!4442098 () Bool)

(assert (=> b!4442098 (= e!2765836 (getKeysList!292 (toList!3668 (extractMap!901 (tail!7381 (toList!3667 lm!1616))))))))

(declare-fun b!4442099 () Bool)

(declare-fun e!2765832 () Unit!83958)

(assert (=> b!4442099 (= e!2765834 e!2765832)))

(declare-fun c!755969 () Bool)

(assert (=> b!4442099 (= c!755969 call!309059)))

(declare-fun b!4442100 () Bool)

(declare-fun lt!1637354 () Unit!83958)

(assert (=> b!4442100 (= e!2765834 lt!1637354)))

(declare-fun lt!1637355 () Unit!83958)

(assert (=> b!4442100 (= lt!1637355 (lemmaContainsKeyImpliesGetValueByKeyDefined!700 (toList!3668 (extractMap!901 (tail!7381 (toList!3667 lm!1616)))) key!3717))))

(assert (=> b!4442100 (isDefined!8097 (getValueByKey!793 (toList!3668 (extractMap!901 (tail!7381 (toList!3667 lm!1616)))) key!3717))))

(declare-fun lt!1637350 () Unit!83958)

(assert (=> b!4442100 (= lt!1637350 lt!1637355)))

(assert (=> b!4442100 (= lt!1637354 (lemmaInListThenGetKeysListContains!289 (toList!3668 (extractMap!901 (tail!7381 (toList!3667 lm!1616)))) key!3717))))

(assert (=> b!4442100 call!309059))

(declare-fun b!4442101 () Bool)

(assert (=> b!4442101 false))

(declare-fun lt!1637353 () Unit!83958)

(declare-fun lt!1637352 () Unit!83958)

(assert (=> b!4442101 (= lt!1637353 lt!1637352)))

(assert (=> b!4442101 (containsKey!1250 (toList!3668 (extractMap!901 (tail!7381 (toList!3667 lm!1616)))) key!3717)))

(assert (=> b!4442101 (= lt!1637352 (lemmaInGetKeysListThenContainsKey!290 (toList!3668 (extractMap!901 (tail!7381 (toList!3667 lm!1616)))) key!3717))))

(declare-fun Unit!83970 () Unit!83958)

(assert (=> b!4442101 (= e!2765832 Unit!83970)))

(declare-fun b!4442102 () Bool)

(assert (=> b!4442102 (= e!2765836 (keys!17064 (extractMap!901 (tail!7381 (toList!3667 lm!1616)))))))

(declare-fun b!4442103 () Bool)

(declare-fun Unit!83971 () Unit!83958)

(assert (=> b!4442103 (= e!2765832 Unit!83971)))

(declare-fun b!4442104 () Bool)

(declare-fun e!2765833 () Bool)

(assert (=> b!4442104 (= e!2765833 (contains!12381 (keys!17064 (extractMap!901 (tail!7381 (toList!3667 lm!1616)))) key!3717))))

(declare-fun b!4442105 () Bool)

(assert (=> b!4442105 (= e!2765835 e!2765833)))

(declare-fun res!1839422 () Bool)

(assert (=> b!4442105 (=> (not res!1839422) (not e!2765833))))

(assert (=> b!4442105 (= res!1839422 (isDefined!8097 (getValueByKey!793 (toList!3668 (extractMap!901 (tail!7381 (toList!3667 lm!1616)))) key!3717)))))

(assert (= (and d!1348427 c!755970) b!4442100))

(assert (= (and d!1348427 (not c!755970)) b!4442099))

(assert (= (and b!4442099 c!755969) b!4442101))

(assert (= (and b!4442099 (not c!755969)) b!4442103))

(assert (= (or b!4442100 b!4442099) bm!309054))

(assert (= (and bm!309054 c!755968) b!4442098))

(assert (= (and bm!309054 (not c!755968)) b!4442102))

(assert (= (and d!1348427 res!1839420) b!4442097))

(assert (= (and d!1348427 (not res!1839421)) b!4442105))

(assert (= (and b!4442105 res!1839422) b!4442104))

(declare-fun m!5130965 () Bool)

(assert (=> bm!309054 m!5130965))

(assert (=> b!4442104 m!5130771))

(declare-fun m!5130967 () Bool)

(assert (=> b!4442104 m!5130967))

(assert (=> b!4442104 m!5130967))

(declare-fun m!5130969 () Bool)

(assert (=> b!4442104 m!5130969))

(assert (=> b!4442102 m!5130771))

(assert (=> b!4442102 m!5130967))

(declare-fun m!5130971 () Bool)

(assert (=> b!4442105 m!5130971))

(assert (=> b!4442105 m!5130971))

(declare-fun m!5130973 () Bool)

(assert (=> b!4442105 m!5130973))

(declare-fun m!5130975 () Bool)

(assert (=> b!4442100 m!5130975))

(assert (=> b!4442100 m!5130971))

(assert (=> b!4442100 m!5130971))

(assert (=> b!4442100 m!5130973))

(declare-fun m!5130977 () Bool)

(assert (=> b!4442100 m!5130977))

(assert (=> b!4442097 m!5130771))

(assert (=> b!4442097 m!5130967))

(assert (=> b!4442097 m!5130967))

(assert (=> b!4442097 m!5130969))

(declare-fun m!5130979 () Bool)

(assert (=> b!4442101 m!5130979))

(declare-fun m!5130981 () Bool)

(assert (=> b!4442101 m!5130981))

(declare-fun m!5130983 () Bool)

(assert (=> b!4442098 m!5130983))

(assert (=> d!1348427 m!5130979))

(assert (=> b!4441940 d!1348427))

(declare-fun bs!764393 () Bool)

(declare-fun d!1348429 () Bool)

(assert (= bs!764393 (and d!1348429 d!1348415)))

(declare-fun lambda!157501 () Int)

(assert (=> bs!764393 (= lambda!157501 lambda!157497)))

(declare-fun bs!764394 () Bool)

(assert (= bs!764394 (and d!1348429 start!434702)))

(assert (=> bs!764394 (= lambda!157501 lambda!157469)))

(declare-fun bs!764395 () Bool)

(assert (= bs!764395 (and d!1348429 d!1348401)))

(assert (=> bs!764395 (not (= lambda!157501 lambda!157489))))

(declare-fun bs!764396 () Bool)

(assert (= bs!764396 (and d!1348429 d!1348423)))

(assert (=> bs!764396 (= lambda!157501 lambda!157498)))

(declare-fun bs!764397 () Bool)

(assert (= bs!764397 (and d!1348429 d!1348399)))

(assert (=> bs!764397 (= lambda!157501 lambda!157486)))

(assert (=> d!1348429 (contains!12377 (extractMap!901 (toList!3667 lm!1616)) key!3717)))

(declare-fun lt!1637359 () Unit!83958)

(declare-fun choose!28217 (ListLongMap!2317 K!11173 Hashable!5234) Unit!83958)

(assert (=> d!1348429 (= lt!1637359 (choose!28217 lm!1616 key!3717 hashF!1220))))

(assert (=> d!1348429 (forall!9711 (toList!3667 lm!1616) lambda!157501)))

(assert (=> d!1348429 (= (lemmaExtractTailMapContainsThenExtractMapDoes!77 lm!1616 key!3717 hashF!1220) lt!1637359)))

(declare-fun bs!764398 () Bool)

(assert (= bs!764398 d!1348429))

(assert (=> bs!764398 m!5130761))

(assert (=> bs!764398 m!5130761))

(assert (=> bs!764398 m!5130763))

(declare-fun m!5130985 () Bool)

(assert (=> bs!764398 m!5130985))

(declare-fun m!5130987 () Bool)

(assert (=> bs!764398 m!5130987))

(assert (=> b!4441951 d!1348429))

(declare-fun bs!764399 () Bool)

(declare-fun d!1348431 () Bool)

(assert (= bs!764399 (and d!1348431 d!1348415)))

(declare-fun lambda!157502 () Int)

(assert (=> bs!764399 (not (= lambda!157502 lambda!157497))))

(declare-fun bs!764400 () Bool)

(assert (= bs!764400 (and d!1348431 start!434702)))

(assert (=> bs!764400 (not (= lambda!157502 lambda!157469))))

(declare-fun bs!764401 () Bool)

(assert (= bs!764401 (and d!1348431 d!1348401)))

(assert (=> bs!764401 (= lambda!157502 lambda!157489)))

(declare-fun bs!764402 () Bool)

(assert (= bs!764402 (and d!1348431 d!1348429)))

(assert (=> bs!764402 (not (= lambda!157502 lambda!157501))))

(declare-fun bs!764403 () Bool)

(assert (= bs!764403 (and d!1348431 d!1348423)))

(assert (=> bs!764403 (not (= lambda!157502 lambda!157498))))

(declare-fun bs!764404 () Bool)

(assert (= bs!764404 (and d!1348431 d!1348399)))

(assert (=> bs!764404 (not (= lambda!157502 lambda!157486))))

(assert (=> d!1348431 true))

(assert (=> d!1348431 (= (allKeysSameHashInMap!946 lm!1616 hashF!1220) (forall!9711 (toList!3667 lm!1616) lambda!157502))))

(declare-fun bs!764405 () Bool)

(assert (= bs!764405 d!1348431))

(declare-fun m!5130989 () Bool)

(assert (=> bs!764405 m!5130989))

(assert (=> b!4441941 d!1348431))

(declare-fun d!1348433 () Bool)

(declare-fun get!16244 (Option!10808) List!49928)

(assert (=> d!1348433 (= (apply!11692 lm!1616 hash!366) (get!16244 (getValueByKey!794 (toList!3667 lm!1616) hash!366)))))

(declare-fun bs!764406 () Bool)

(assert (= bs!764406 d!1348433))

(declare-fun m!5130991 () Bool)

(assert (=> bs!764406 m!5130991))

(assert (=> bs!764406 m!5130991))

(declare-fun m!5130993 () Bool)

(assert (=> bs!764406 m!5130993))

(assert (=> b!4441952 d!1348433))

(assert (=> b!4441942 d!1348385))

(declare-fun d!1348435 () Bool)

(assert (=> d!1348435 true))

(assert (=> d!1348435 true))

(declare-fun lambda!157505 () Int)

(declare-fun forall!9713 (List!49928 Int) Bool)

(assert (=> d!1348435 (= (allKeysSameHash!800 newBucket!194 hash!366 hashF!1220) (forall!9713 newBucket!194 lambda!157505))))

(declare-fun bs!764407 () Bool)

(assert (= bs!764407 d!1348435))

(declare-fun m!5130995 () Bool)

(assert (=> bs!764407 m!5130995))

(assert (=> b!4441943 d!1348435))

(declare-fun d!1348437 () Bool)

(declare-fun e!2765842 () Bool)

(assert (=> d!1348437 e!2765842))

(declare-fun res!1839425 () Bool)

(assert (=> d!1348437 (=> res!1839425 e!2765842)))

(declare-fun lt!1637368 () Bool)

(assert (=> d!1348437 (= res!1839425 (not lt!1637368))))

(declare-fun lt!1637370 () Bool)

(assert (=> d!1348437 (= lt!1637368 lt!1637370)))

(declare-fun lt!1637371 () Unit!83958)

(declare-fun e!2765843 () Unit!83958)

(assert (=> d!1348437 (= lt!1637371 e!2765843)))

(declare-fun c!755973 () Bool)

(assert (=> d!1348437 (= c!755973 lt!1637370)))

(declare-fun containsKey!1251 (List!49929 (_ BitVec 64)) Bool)

(assert (=> d!1348437 (= lt!1637370 (containsKey!1251 (toList!3667 lm!1616) hash!366))))

(assert (=> d!1348437 (= (contains!12378 lm!1616 hash!366) lt!1637368)))

(declare-fun b!4442116 () Bool)

(declare-fun lt!1637369 () Unit!83958)

(assert (=> b!4442116 (= e!2765843 lt!1637369)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!701 (List!49929 (_ BitVec 64)) Unit!83958)

(assert (=> b!4442116 (= lt!1637369 (lemmaContainsKeyImpliesGetValueByKeyDefined!701 (toList!3667 lm!1616) hash!366))))

(declare-fun isDefined!8098 (Option!10808) Bool)

(assert (=> b!4442116 (isDefined!8098 (getValueByKey!794 (toList!3667 lm!1616) hash!366))))

(declare-fun b!4442117 () Bool)

(declare-fun Unit!83972 () Unit!83958)

(assert (=> b!4442117 (= e!2765843 Unit!83972)))

(declare-fun b!4442118 () Bool)

(assert (=> b!4442118 (= e!2765842 (isDefined!8098 (getValueByKey!794 (toList!3667 lm!1616) hash!366)))))

(assert (= (and d!1348437 c!755973) b!4442116))

(assert (= (and d!1348437 (not c!755973)) b!4442117))

(assert (= (and d!1348437 (not res!1839425)) b!4442118))

(declare-fun m!5130997 () Bool)

(assert (=> d!1348437 m!5130997))

(declare-fun m!5130999 () Bool)

(assert (=> b!4442116 m!5130999))

(assert (=> b!4442116 m!5130991))

(assert (=> b!4442116 m!5130991))

(declare-fun m!5131001 () Bool)

(assert (=> b!4442116 m!5131001))

(assert (=> b!4442118 m!5130991))

(assert (=> b!4442118 m!5130991))

(assert (=> b!4442118 m!5131001))

(assert (=> b!4441945 d!1348437))

(declare-fun b!4442123 () Bool)

(declare-fun e!2765846 () Bool)

(declare-fun tp!1334237 () Bool)

(assert (=> b!4442123 (= e!2765846 (and tp_is_empty!26607 tp_is_empty!26605 tp!1334237))))

(assert (=> b!4441947 (= tp!1334227 e!2765846)))

(assert (= (and b!4441947 (is-Cons!49804 (t!356870 newBucket!194))) b!4442123))

(declare-fun b!4442128 () Bool)

(declare-fun e!2765849 () Bool)

(declare-fun tp!1334242 () Bool)

(declare-fun tp!1334243 () Bool)

(assert (=> b!4442128 (= e!2765849 (and tp!1334242 tp!1334243))))

(assert (=> b!4441937 (= tp!1334228 e!2765849)))

(assert (= (and b!4441937 (is-Cons!49805 (toList!3667 lm!1616))) b!4442128))

(declare-fun b_lambda!145145 () Bool)

(assert (= b_lambda!145137 (or start!434702 b_lambda!145145)))

(declare-fun bs!764408 () Bool)

(declare-fun d!1348439 () Bool)

(assert (= bs!764408 (and d!1348439 start!434702)))

(assert (=> bs!764408 (= (dynLambda!20913 lambda!157469 (h!55534 (toList!3667 lm!1616))) (noDuplicateKeys!840 (_2!28164 (h!55534 (toList!3667 lm!1616)))))))

(declare-fun m!5131003 () Bool)

(assert (=> bs!764408 m!5131003))

(assert (=> b!4442012 d!1348439))

(declare-fun b_lambda!145147 () Bool)

(assert (= b_lambda!145141 (or start!434702 b_lambda!145147)))

(declare-fun bs!764409 () Bool)

(declare-fun d!1348441 () Bool)

(assert (= bs!764409 (and d!1348441 start!434702)))

(assert (=> bs!764409 (= (dynLambda!20913 lambda!157469 (tuple2!49741 hash!366 newBucket!194)) (noDuplicateKeys!840 (_2!28164 (tuple2!49741 hash!366 newBucket!194))))))

(declare-fun m!5131005 () Bool)

(assert (=> bs!764409 m!5131005))

(assert (=> b!4442077 d!1348441))

(declare-fun b_lambda!145149 () Bool)

(assert (= b_lambda!145139 (or start!434702 b_lambda!145149)))

(declare-fun bs!764410 () Bool)

(declare-fun d!1348443 () Bool)

(assert (= bs!764410 (and d!1348443 start!434702)))

(assert (=> bs!764410 (= (dynLambda!20913 lambda!157469 (h!55534 (toList!3667 lt!1637260))) (noDuplicateKeys!840 (_2!28164 (h!55534 (toList!3667 lt!1637260)))))))

(declare-fun m!5131007 () Bool)

(assert (=> bs!764410 m!5131007))

(assert (=> b!4442066 d!1348443))

(declare-fun b_lambda!145151 () Bool)

(assert (= b_lambda!145143 (or start!434702 b_lambda!145151)))

(declare-fun bs!764411 () Bool)

(declare-fun d!1348445 () Bool)

(assert (= bs!764411 (and d!1348445 start!434702)))

(assert (=> bs!764411 (= (dynLambda!20913 lambda!157469 (h!55534 (toList!3667 lt!1637262))) (noDuplicateKeys!840 (_2!28164 (h!55534 (toList!3667 lt!1637262)))))))

(declare-fun m!5131009 () Bool)

(assert (=> bs!764411 m!5131009))

(assert (=> b!4442093 d!1348445))

(push 1)

(assert (not b!4442049))

(assert (not b!4442083))

(assert (not d!1348423))

(assert (not b!4442057))

(assert (not bm!309054))

(assert (not b!4442100))

(assert (not b!4442098))

(assert (not d!1348421))

(assert (not d!1348435))

(assert (not b!4442050))

(assert (not b!4442019))

(assert (not b!4442116))

(assert (not b!4442018))

(assert (not d!1348431))

(assert (not bm!309052))

(assert (not d!1348391))

(assert (not bm!309053))

(assert (not b!4442095))

(assert (not b!4442052))

(assert (not b!4442054))

(assert (not b!4442072))

(assert (not bs!764408))

(assert (not b!4442087))

(assert (not b!4442102))

(assert (not b!4442128))

(assert (not d!1348393))

(assert (not b!4442123))

(assert (not b!4442094))

(assert (not d!1348411))

(assert (not b!4442056))

(assert (not bs!764410))

(assert (not d!1348437))

(assert (not d!1348401))

(assert (not b!4442086))

(assert tp_is_empty!26605)

(assert (not d!1348407))

(assert (not b!4442053))

(assert (not d!1348399))

(assert (not d!1348387))

(assert (not b!4442013))

(assert (not b!4442089))

(assert (not b!4442082))

(assert (not b!4442090))

(assert (not d!1348433))

(assert (not d!1348405))

(assert (not b!4442118))

(assert (not d!1348429))

(assert (not b_lambda!145151))

(assert (not bs!764411))

(assert (not b_lambda!145149))

(assert (not d!1348427))

(assert (not b!4442062))

(assert (not b!4442091))

(assert (not b!4442097))

(assert (not b_lambda!145147))

(assert (not b!4442105))

(assert tp_is_empty!26607)

(assert (not b!4442085))

(assert (not b!4442073))

(assert (not b_lambda!145145))

(assert (not b!4442101))

(assert (not b!4442067))

(assert (not b!4442104))

(assert (not d!1348415))

(assert (not bs!764409))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

