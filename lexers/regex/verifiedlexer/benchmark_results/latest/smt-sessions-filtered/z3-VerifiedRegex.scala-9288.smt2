; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!493018 () Bool)

(assert start!493018)

(declare-fun b!4790183 () Bool)

(declare-fun e!2990863 () Bool)

(declare-fun e!2990861 () Bool)

(assert (=> b!4790183 (= e!2990863 (not e!2990861))))

(declare-fun res!2035609 () Bool)

(assert (=> b!4790183 (=> res!2035609 e!2990861)))

(declare-datatypes ((K!15729 0))(
  ( (K!15730 (val!20889 Int)) )
))
(declare-datatypes ((V!15975 0))(
  ( (V!15976 (val!20890 Int)) )
))
(declare-datatypes ((tuple2!56752 0))(
  ( (tuple2!56753 (_1!31670 K!15729) (_2!31670 V!15975)) )
))
(declare-datatypes ((List!54283 0))(
  ( (Nil!54159) (Cons!54159 (h!60583 tuple2!56752) (t!361733 List!54283)) )
))
(declare-datatypes ((tuple2!56754 0))(
  ( (tuple2!56755 (_1!31671 (_ BitVec 64)) (_2!31671 List!54283)) )
))
(declare-datatypes ((List!54284 0))(
  ( (Nil!54160) (Cons!54160 (h!60584 tuple2!56754) (t!361734 List!54284)) )
))
(declare-datatypes ((ListLongMap!5293 0))(
  ( (ListLongMap!5294 (toList!6871 List!54284)) )
))
(declare-fun lm!2473 () ListLongMap!5293)

(declare-fun value!3111 () V!15975)

(declare-fun key!5896 () K!15729)

(declare-fun getValue!92 (List!54284 K!15729) V!15975)

(assert (=> b!4790183 (= res!2035609 (not (= (getValue!92 (toList!6871 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!546 (List!54284 K!15729) Bool)

(assert (=> b!4790183 (containsKeyBiggerList!546 (toList!6871 lm!2473) key!5896)))

(declare-datatypes ((Hashable!6896 0))(
  ( (HashableExt!6895 (__x!32919 Int)) )
))
(declare-fun hashF!1559 () Hashable!6896)

(declare-datatypes ((Unit!139767 0))(
  ( (Unit!139768) )
))
(declare-fun lt!1949795 () Unit!139767)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!286 (ListLongMap!5293 K!15729 Hashable!6896) Unit!139767)

(assert (=> b!4790183 (= lt!1949795 (lemmaInLongMapThenContainsKeyBiggerList!286 lm!2473 key!5896 hashF!1559))))

(declare-fun e!2990860 () Bool)

(assert (=> b!4790183 e!2990860))

(declare-fun res!2035610 () Bool)

(assert (=> b!4790183 (=> (not res!2035610) (not e!2990860))))

(declare-fun lt!1949789 () (_ BitVec 64))

(declare-fun contains!17762 (ListLongMap!5293 (_ BitVec 64)) Bool)

(assert (=> b!4790183 (= res!2035610 (contains!17762 lm!2473 lt!1949789))))

(declare-fun hash!4924 (Hashable!6896 K!15729) (_ BitVec 64))

(assert (=> b!4790183 (= lt!1949789 (hash!4924 hashF!1559 key!5896))))

(declare-fun lt!1949790 () Unit!139767)

(declare-fun lemmaInGenericMapThenInLongMap!300 (ListLongMap!5293 K!15729 Hashable!6896) Unit!139767)

(assert (=> b!4790183 (= lt!1949790 (lemmaInGenericMapThenInLongMap!300 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4790184 () Bool)

(declare-fun e!2990862 () Unit!139767)

(declare-fun Unit!139769 () Unit!139767)

(assert (=> b!4790184 (= e!2990862 Unit!139769)))

(declare-fun b!4790185 () Bool)

(declare-datatypes ((Option!13055 0))(
  ( (None!13054) (Some!13054 (v!48329 tuple2!56752)) )
))
(declare-fun isDefined!10197 (Option!13055) Bool)

(declare-fun getPair!868 (List!54283 K!15729) Option!13055)

(declare-fun apply!12957 (ListLongMap!5293 (_ BitVec 64)) List!54283)

(assert (=> b!4790185 (= e!2990860 (isDefined!10197 (getPair!868 (apply!12957 lm!2473 lt!1949789) key!5896)))))

(declare-fun b!4790186 () Bool)

(declare-fun e!2990864 () Bool)

(declare-fun tp!1357884 () Bool)

(assert (=> b!4790186 (= e!2990864 tp!1357884)))

(declare-fun res!2035606 () Bool)

(assert (=> start!493018 (=> (not res!2035606) (not e!2990863))))

(declare-fun lambda!230123 () Int)

(declare-fun forall!12217 (List!54284 Int) Bool)

(assert (=> start!493018 (= res!2035606 (forall!12217 (toList!6871 lm!2473) lambda!230123))))

(assert (=> start!493018 e!2990863))

(declare-fun inv!69755 (ListLongMap!5293) Bool)

(assert (=> start!493018 (and (inv!69755 lm!2473) e!2990864)))

(assert (=> start!493018 true))

(declare-fun tp_is_empty!33465 () Bool)

(assert (=> start!493018 tp_is_empty!33465))

(declare-fun tp_is_empty!33467 () Bool)

(assert (=> start!493018 tp_is_empty!33467))

(declare-fun b!4790187 () Bool)

(declare-fun res!2035607 () Bool)

(assert (=> b!4790187 (=> (not res!2035607) (not e!2990863))))

(declare-datatypes ((ListMap!6343 0))(
  ( (ListMap!6344 (toList!6872 List!54283)) )
))
(declare-fun contains!17763 (ListMap!6343 K!15729) Bool)

(declare-fun extractMap!2423 (List!54284) ListMap!6343)

(assert (=> b!4790187 (= res!2035607 (contains!17763 (extractMap!2423 (toList!6871 lm!2473)) key!5896))))

(declare-fun b!4790188 () Bool)

(declare-fun res!2035608 () Bool)

(assert (=> b!4790188 (=> res!2035608 e!2990861)))

(get-info :version)

(assert (=> b!4790188 (= res!2035608 (not ((_ is Cons!54160) (toList!6871 lm!2473))))))

(declare-fun b!4790189 () Bool)

(declare-fun res!2035611 () Bool)

(assert (=> b!4790189 (=> res!2035611 e!2990861)))

(declare-fun containsKey!3918 (List!54283 K!15729) Bool)

(assert (=> b!4790189 (= res!2035611 (containsKey!3918 (_2!31671 (h!60584 (toList!6871 lm!2473))) key!5896))))

(declare-fun b!4790190 () Bool)

(declare-fun isEmpty!29429 (ListLongMap!5293) Bool)

(assert (=> b!4790190 (= e!2990861 (not (isEmpty!29429 lm!2473)))))

(declare-fun lt!1949792 () ListLongMap!5293)

(assert (=> b!4790190 (contains!17763 (extractMap!2423 (toList!6871 lt!1949792)) key!5896)))

(declare-fun lt!1949793 () Unit!139767)

(declare-fun lemmaListContainsThenExtractedMapContains!696 (ListLongMap!5293 K!15729 Hashable!6896) Unit!139767)

(assert (=> b!4790190 (= lt!1949793 (lemmaListContainsThenExtractedMapContains!696 lt!1949792 key!5896 hashF!1559))))

(declare-fun lt!1949794 () Unit!139767)

(assert (=> b!4790190 (= lt!1949794 e!2990862)))

(declare-fun c!816449 () Bool)

(assert (=> b!4790190 (= c!816449 (not (contains!17762 lt!1949792 lt!1949789)))))

(declare-fun tail!9247 (ListLongMap!5293) ListLongMap!5293)

(assert (=> b!4790190 (= lt!1949792 (tail!9247 lm!2473))))

(declare-fun b!4790191 () Bool)

(declare-fun lt!1949791 () Unit!139767)

(assert (=> b!4790191 (= e!2990862 lt!1949791)))

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!22 (ListLongMap!5293 K!15729 Hashable!6896) Unit!139767)

(assert (=> b!4790191 (= lt!1949791 (lemmaHashNotInLongMapThenNotInGenerated!22 lt!1949792 key!5896 hashF!1559))))

(assert (=> b!4790191 (not (contains!17763 (extractMap!2423 (toList!6871 lt!1949792)) key!5896))))

(declare-fun b!4790192 () Bool)

(declare-fun res!2035612 () Bool)

(assert (=> b!4790192 (=> (not res!2035612) (not e!2990863))))

(declare-fun allKeysSameHashInMap!2301 (ListLongMap!5293 Hashable!6896) Bool)

(assert (=> b!4790192 (= res!2035612 (allKeysSameHashInMap!2301 lm!2473 hashF!1559))))

(assert (= (and start!493018 res!2035606) b!4790192))

(assert (= (and b!4790192 res!2035612) b!4790187))

(assert (= (and b!4790187 res!2035607) b!4790183))

(assert (= (and b!4790183 res!2035610) b!4790185))

(assert (= (and b!4790183 (not res!2035609)) b!4790188))

(assert (= (and b!4790188 (not res!2035608)) b!4790189))

(assert (= (and b!4790189 (not res!2035611)) b!4790190))

(assert (= (and b!4790190 c!816449) b!4790191))

(assert (= (and b!4790190 (not c!816449)) b!4790184))

(assert (= start!493018 b!4790186))

(declare-fun m!5770122 () Bool)

(assert (=> start!493018 m!5770122))

(declare-fun m!5770124 () Bool)

(assert (=> start!493018 m!5770124))

(declare-fun m!5770126 () Bool)

(assert (=> b!4790192 m!5770126))

(declare-fun m!5770128 () Bool)

(assert (=> b!4790185 m!5770128))

(assert (=> b!4790185 m!5770128))

(declare-fun m!5770130 () Bool)

(assert (=> b!4790185 m!5770130))

(assert (=> b!4790185 m!5770130))

(declare-fun m!5770132 () Bool)

(assert (=> b!4790185 m!5770132))

(declare-fun m!5770134 () Bool)

(assert (=> b!4790190 m!5770134))

(declare-fun m!5770136 () Bool)

(assert (=> b!4790190 m!5770136))

(declare-fun m!5770138 () Bool)

(assert (=> b!4790190 m!5770138))

(assert (=> b!4790190 m!5770138))

(declare-fun m!5770140 () Bool)

(assert (=> b!4790190 m!5770140))

(declare-fun m!5770142 () Bool)

(assert (=> b!4790190 m!5770142))

(declare-fun m!5770144 () Bool)

(assert (=> b!4790190 m!5770144))

(declare-fun m!5770146 () Bool)

(assert (=> b!4790189 m!5770146))

(declare-fun m!5770148 () Bool)

(assert (=> b!4790187 m!5770148))

(assert (=> b!4790187 m!5770148))

(declare-fun m!5770150 () Bool)

(assert (=> b!4790187 m!5770150))

(declare-fun m!5770152 () Bool)

(assert (=> b!4790183 m!5770152))

(declare-fun m!5770154 () Bool)

(assert (=> b!4790183 m!5770154))

(declare-fun m!5770156 () Bool)

(assert (=> b!4790183 m!5770156))

(declare-fun m!5770158 () Bool)

(assert (=> b!4790183 m!5770158))

(declare-fun m!5770160 () Bool)

(assert (=> b!4790183 m!5770160))

(declare-fun m!5770162 () Bool)

(assert (=> b!4790183 m!5770162))

(declare-fun m!5770164 () Bool)

(assert (=> b!4790191 m!5770164))

(assert (=> b!4790191 m!5770138))

(assert (=> b!4790191 m!5770138))

(assert (=> b!4790191 m!5770140))

(check-sat (not start!493018) (not b!4790190) (not b!4790189) (not b!4790191) tp_is_empty!33465 (not b!4790187) (not b!4790192) (not b!4790185) tp_is_empty!33467 (not b!4790183) (not b!4790186))
(check-sat)
(get-model)

(declare-fun d!1532433 () Bool)

(declare-fun res!2035617 () Bool)

(declare-fun e!2990869 () Bool)

(assert (=> d!1532433 (=> res!2035617 e!2990869)))

(assert (=> d!1532433 (= res!2035617 (and ((_ is Cons!54159) (_2!31671 (h!60584 (toList!6871 lm!2473)))) (= (_1!31670 (h!60583 (_2!31671 (h!60584 (toList!6871 lm!2473))))) key!5896)))))

(assert (=> d!1532433 (= (containsKey!3918 (_2!31671 (h!60584 (toList!6871 lm!2473))) key!5896) e!2990869)))

(declare-fun b!4790197 () Bool)

(declare-fun e!2990870 () Bool)

(assert (=> b!4790197 (= e!2990869 e!2990870)))

(declare-fun res!2035618 () Bool)

(assert (=> b!4790197 (=> (not res!2035618) (not e!2990870))))

(assert (=> b!4790197 (= res!2035618 ((_ is Cons!54159) (_2!31671 (h!60584 (toList!6871 lm!2473)))))))

(declare-fun b!4790198 () Bool)

(assert (=> b!4790198 (= e!2990870 (containsKey!3918 (t!361733 (_2!31671 (h!60584 (toList!6871 lm!2473)))) key!5896))))

(assert (= (and d!1532433 (not res!2035617)) b!4790197))

(assert (= (and b!4790197 res!2035618) b!4790198))

(declare-fun m!5770166 () Bool)

(assert (=> b!4790198 m!5770166))

(assert (=> b!4790189 d!1532433))

(declare-fun d!1532435 () Bool)

(declare-fun res!2035623 () Bool)

(declare-fun e!2990875 () Bool)

(assert (=> d!1532435 (=> res!2035623 e!2990875)))

(assert (=> d!1532435 (= res!2035623 ((_ is Nil!54160) (toList!6871 lm!2473)))))

(assert (=> d!1532435 (= (forall!12217 (toList!6871 lm!2473) lambda!230123) e!2990875)))

(declare-fun b!4790203 () Bool)

(declare-fun e!2990876 () Bool)

(assert (=> b!4790203 (= e!2990875 e!2990876)))

(declare-fun res!2035624 () Bool)

(assert (=> b!4790203 (=> (not res!2035624) (not e!2990876))))

(declare-fun dynLambda!22049 (Int tuple2!56754) Bool)

(assert (=> b!4790203 (= res!2035624 (dynLambda!22049 lambda!230123 (h!60584 (toList!6871 lm!2473))))))

(declare-fun b!4790204 () Bool)

(assert (=> b!4790204 (= e!2990876 (forall!12217 (t!361734 (toList!6871 lm!2473)) lambda!230123))))

(assert (= (and d!1532435 (not res!2035623)) b!4790203))

(assert (= (and b!4790203 res!2035624) b!4790204))

(declare-fun b_lambda!186483 () Bool)

(assert (=> (not b_lambda!186483) (not b!4790203)))

(declare-fun m!5770168 () Bool)

(assert (=> b!4790203 m!5770168))

(declare-fun m!5770170 () Bool)

(assert (=> b!4790204 m!5770170))

(assert (=> start!493018 d!1532435))

(declare-fun d!1532437 () Bool)

(declare-fun isStrictlySorted!871 (List!54284) Bool)

(assert (=> d!1532437 (= (inv!69755 lm!2473) (isStrictlySorted!871 (toList!6871 lm!2473)))))

(declare-fun bs!1154248 () Bool)

(assert (= bs!1154248 d!1532437))

(declare-fun m!5770172 () Bool)

(assert (=> bs!1154248 m!5770172))

(assert (=> start!493018 d!1532437))

(declare-fun d!1532439 () Bool)

(declare-fun res!2035631 () Bool)

(declare-fun e!2990886 () Bool)

(assert (=> d!1532439 (=> res!2035631 e!2990886)))

(declare-fun e!2990887 () Bool)

(assert (=> d!1532439 (= res!2035631 e!2990887)))

(declare-fun res!2035633 () Bool)

(assert (=> d!1532439 (=> (not res!2035633) (not e!2990887))))

(assert (=> d!1532439 (= res!2035633 ((_ is Cons!54160) (toList!6871 lm!2473)))))

(assert (=> d!1532439 (= (containsKeyBiggerList!546 (toList!6871 lm!2473) key!5896) e!2990886)))

(declare-fun b!4790217 () Bool)

(assert (=> b!4790217 (= e!2990887 (containsKey!3918 (_2!31671 (h!60584 (toList!6871 lm!2473))) key!5896))))

(declare-fun b!4790218 () Bool)

(declare-fun e!2990888 () Bool)

(assert (=> b!4790218 (= e!2990886 e!2990888)))

(declare-fun res!2035632 () Bool)

(assert (=> b!4790218 (=> (not res!2035632) (not e!2990888))))

(assert (=> b!4790218 (= res!2035632 ((_ is Cons!54160) (toList!6871 lm!2473)))))

(declare-fun b!4790219 () Bool)

(assert (=> b!4790219 (= e!2990888 (containsKeyBiggerList!546 (t!361734 (toList!6871 lm!2473)) key!5896))))

(assert (= (and d!1532439 res!2035633) b!4790217))

(assert (= (and d!1532439 (not res!2035631)) b!4790218))

(assert (= (and b!4790218 res!2035632) b!4790219))

(assert (=> b!4790217 m!5770146))

(declare-fun m!5770182 () Bool)

(assert (=> b!4790219 m!5770182))

(assert (=> b!4790183 d!1532439))

(declare-fun bs!1154250 () Bool)

(declare-fun d!1532443 () Bool)

(assert (= bs!1154250 (and d!1532443 start!493018)))

(declare-fun lambda!230129 () Int)

(assert (=> bs!1154250 (= lambda!230129 lambda!230123)))

(assert (=> d!1532443 (containsKeyBiggerList!546 (toList!6871 lm!2473) key!5896)))

(declare-fun lt!1949801 () Unit!139767)

(declare-fun choose!34471 (ListLongMap!5293 K!15729 Hashable!6896) Unit!139767)

(assert (=> d!1532443 (= lt!1949801 (choose!34471 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1532443 (forall!12217 (toList!6871 lm!2473) lambda!230129)))

(assert (=> d!1532443 (= (lemmaInLongMapThenContainsKeyBiggerList!286 lm!2473 key!5896 hashF!1559) lt!1949801)))

(declare-fun bs!1154251 () Bool)

(assert (= bs!1154251 d!1532443))

(assert (=> bs!1154251 m!5770154))

(declare-fun m!5770184 () Bool)

(assert (=> bs!1154251 m!5770184))

(declare-fun m!5770186 () Bool)

(assert (=> bs!1154251 m!5770186))

(assert (=> b!4790183 d!1532443))

(declare-fun bs!1154253 () Bool)

(declare-fun d!1532445 () Bool)

(assert (= bs!1154253 (and d!1532445 start!493018)))

(declare-fun lambda!230132 () Int)

(assert (=> bs!1154253 (= lambda!230132 lambda!230123)))

(declare-fun bs!1154254 () Bool)

(assert (= bs!1154254 (and d!1532445 d!1532443)))

(assert (=> bs!1154254 (= lambda!230132 lambda!230129)))

(declare-fun e!2990909 () Bool)

(assert (=> d!1532445 e!2990909))

(declare-fun res!2035645 () Bool)

(assert (=> d!1532445 (=> (not res!2035645) (not e!2990909))))

(assert (=> d!1532445 (= res!2035645 (contains!17762 lm!2473 (hash!4924 hashF!1559 key!5896)))))

(declare-fun lt!1949828 () Unit!139767)

(declare-fun choose!34472 (ListLongMap!5293 K!15729 Hashable!6896) Unit!139767)

(assert (=> d!1532445 (= lt!1949828 (choose!34472 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1532445 (forall!12217 (toList!6871 lm!2473) lambda!230132)))

(assert (=> d!1532445 (= (lemmaInGenericMapThenInLongMap!300 lm!2473 key!5896 hashF!1559) lt!1949828)))

(declare-fun b!4790249 () Bool)

(assert (=> b!4790249 (= e!2990909 (isDefined!10197 (getPair!868 (apply!12957 lm!2473 (hash!4924 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1532445 res!2035645) b!4790249))

(assert (=> d!1532445 m!5770156))

(assert (=> d!1532445 m!5770156))

(declare-fun m!5770212 () Bool)

(assert (=> d!1532445 m!5770212))

(declare-fun m!5770214 () Bool)

(assert (=> d!1532445 m!5770214))

(declare-fun m!5770216 () Bool)

(assert (=> d!1532445 m!5770216))

(assert (=> b!4790249 m!5770156))

(assert (=> b!4790249 m!5770156))

(declare-fun m!5770218 () Bool)

(assert (=> b!4790249 m!5770218))

(assert (=> b!4790249 m!5770218))

(declare-fun m!5770220 () Bool)

(assert (=> b!4790249 m!5770220))

(assert (=> b!4790249 m!5770220))

(declare-fun m!5770222 () Bool)

(assert (=> b!4790249 m!5770222))

(assert (=> b!4790183 d!1532445))

(declare-fun d!1532453 () Bool)

(declare-fun hash!4926 (Hashable!6896 K!15729) (_ BitVec 64))

(assert (=> d!1532453 (= (hash!4924 hashF!1559 key!5896) (hash!4926 hashF!1559 key!5896))))

(declare-fun bs!1154256 () Bool)

(assert (= bs!1154256 d!1532453))

(declare-fun m!5770224 () Bool)

(assert (=> bs!1154256 m!5770224))

(assert (=> b!4790183 d!1532453))

(declare-fun d!1532455 () Bool)

(declare-fun e!2990920 () Bool)

(assert (=> d!1532455 e!2990920))

(declare-fun res!2035651 () Bool)

(assert (=> d!1532455 (=> res!2035651 e!2990920)))

(declare-fun lt!1949849 () Bool)

(assert (=> d!1532455 (= res!2035651 (not lt!1949849))))

(declare-fun lt!1949850 () Bool)

(assert (=> d!1532455 (= lt!1949849 lt!1949850)))

(declare-fun lt!1949851 () Unit!139767)

(declare-fun e!2990921 () Unit!139767)

(assert (=> d!1532455 (= lt!1949851 e!2990921)))

(declare-fun c!816467 () Bool)

(assert (=> d!1532455 (= c!816467 lt!1949850)))

(declare-fun containsKey!3921 (List!54284 (_ BitVec 64)) Bool)

(assert (=> d!1532455 (= lt!1949850 (containsKey!3921 (toList!6871 lm!2473) lt!1949789))))

(assert (=> d!1532455 (= (contains!17762 lm!2473 lt!1949789) lt!1949849)))

(declare-fun b!4790265 () Bool)

(declare-fun lt!1949852 () Unit!139767)

(assert (=> b!4790265 (= e!2990921 lt!1949852)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2129 (List!54284 (_ BitVec 64)) Unit!139767)

(assert (=> b!4790265 (= lt!1949852 (lemmaContainsKeyImpliesGetValueByKeyDefined!2129 (toList!6871 lm!2473) lt!1949789))))

(declare-datatypes ((Option!13058 0))(
  ( (None!13057) (Some!13057 (v!48332 List!54283)) )
))
(declare-fun isDefined!10200 (Option!13058) Bool)

(declare-fun getValueByKey!2337 (List!54284 (_ BitVec 64)) Option!13058)

(assert (=> b!4790265 (isDefined!10200 (getValueByKey!2337 (toList!6871 lm!2473) lt!1949789))))

(declare-fun b!4790266 () Bool)

(declare-fun Unit!139776 () Unit!139767)

(assert (=> b!4790266 (= e!2990921 Unit!139776)))

(declare-fun b!4790267 () Bool)

(assert (=> b!4790267 (= e!2990920 (isDefined!10200 (getValueByKey!2337 (toList!6871 lm!2473) lt!1949789)))))

(assert (= (and d!1532455 c!816467) b!4790265))

(assert (= (and d!1532455 (not c!816467)) b!4790266))

(assert (= (and d!1532455 (not res!2035651)) b!4790267))

(declare-fun m!5770234 () Bool)

(assert (=> d!1532455 m!5770234))

(declare-fun m!5770236 () Bool)

(assert (=> b!4790265 m!5770236))

(declare-fun m!5770238 () Bool)

(assert (=> b!4790265 m!5770238))

(assert (=> b!4790265 m!5770238))

(declare-fun m!5770240 () Bool)

(assert (=> b!4790265 m!5770240))

(assert (=> b!4790267 m!5770238))

(assert (=> b!4790267 m!5770238))

(assert (=> b!4790267 m!5770240))

(assert (=> b!4790183 d!1532455))

(declare-fun d!1532459 () Bool)

(declare-fun c!816471 () Bool)

(declare-fun e!2990929 () Bool)

(assert (=> d!1532459 (= c!816471 e!2990929)))

(declare-fun res!2035655 () Bool)

(assert (=> d!1532459 (=> (not res!2035655) (not e!2990929))))

(assert (=> d!1532459 (= res!2035655 ((_ is Cons!54160) (toList!6871 lm!2473)))))

(declare-fun e!2990928 () V!15975)

(assert (=> d!1532459 (= (getValue!92 (toList!6871 lm!2473) key!5896) e!2990928)))

(declare-fun b!4790279 () Bool)

(assert (=> b!4790279 (= e!2990929 (containsKey!3918 (_2!31671 (h!60584 (toList!6871 lm!2473))) key!5896))))

(declare-fun b!4790277 () Bool)

(declare-fun get!18450 (Option!13055) tuple2!56752)

(assert (=> b!4790277 (= e!2990928 (_2!31670 (get!18450 (getPair!868 (_2!31671 (h!60584 (toList!6871 lm!2473))) key!5896))))))

(declare-fun b!4790278 () Bool)

(assert (=> b!4790278 (= e!2990928 (getValue!92 (t!361734 (toList!6871 lm!2473)) key!5896))))

(assert (= (and d!1532459 res!2035655) b!4790279))

(assert (= (and d!1532459 c!816471) b!4790277))

(assert (= (and d!1532459 (not c!816471)) b!4790278))

(assert (=> b!4790279 m!5770146))

(declare-fun m!5770254 () Bool)

(assert (=> b!4790277 m!5770254))

(assert (=> b!4790277 m!5770254))

(declare-fun m!5770256 () Bool)

(assert (=> b!4790277 m!5770256))

(declare-fun m!5770258 () Bool)

(assert (=> b!4790278 m!5770258))

(assert (=> b!4790183 d!1532459))

(declare-fun d!1532465 () Bool)

(declare-fun isEmpty!29432 (Option!13055) Bool)

(assert (=> d!1532465 (= (isDefined!10197 (getPair!868 (apply!12957 lm!2473 lt!1949789) key!5896)) (not (isEmpty!29432 (getPair!868 (apply!12957 lm!2473 lt!1949789) key!5896))))))

(declare-fun bs!1154260 () Bool)

(assert (= bs!1154260 d!1532465))

(assert (=> bs!1154260 m!5770130))

(declare-fun m!5770260 () Bool)

(assert (=> bs!1154260 m!5770260))

(assert (=> b!4790185 d!1532465))

(declare-fun b!4790308 () Bool)

(declare-fun e!2990952 () Option!13055)

(assert (=> b!4790308 (= e!2990952 (Some!13054 (h!60583 (apply!12957 lm!2473 lt!1949789))))))

(declare-fun b!4790309 () Bool)

(declare-fun res!2035678 () Bool)

(declare-fun e!2990953 () Bool)

(assert (=> b!4790309 (=> (not res!2035678) (not e!2990953))))

(declare-fun lt!1949868 () Option!13055)

(assert (=> b!4790309 (= res!2035678 (= (_1!31670 (get!18450 lt!1949868)) key!5896))))

(declare-fun e!2990956 () Option!13055)

(declare-fun b!4790310 () Bool)

(assert (=> b!4790310 (= e!2990956 (getPair!868 (t!361733 (apply!12957 lm!2473 lt!1949789)) key!5896))))

(declare-fun d!1532467 () Bool)

(declare-fun e!2990954 () Bool)

(assert (=> d!1532467 e!2990954))

(declare-fun res!2035679 () Bool)

(assert (=> d!1532467 (=> res!2035679 e!2990954)))

(declare-fun e!2990955 () Bool)

(assert (=> d!1532467 (= res!2035679 e!2990955)))

(declare-fun res!2035676 () Bool)

(assert (=> d!1532467 (=> (not res!2035676) (not e!2990955))))

(assert (=> d!1532467 (= res!2035676 (isEmpty!29432 lt!1949868))))

(assert (=> d!1532467 (= lt!1949868 e!2990952)))

(declare-fun c!816476 () Bool)

(assert (=> d!1532467 (= c!816476 (and ((_ is Cons!54159) (apply!12957 lm!2473 lt!1949789)) (= (_1!31670 (h!60583 (apply!12957 lm!2473 lt!1949789))) key!5896)))))

(declare-fun noDuplicateKeys!2325 (List!54283) Bool)

(assert (=> d!1532467 (noDuplicateKeys!2325 (apply!12957 lm!2473 lt!1949789))))

(assert (=> d!1532467 (= (getPair!868 (apply!12957 lm!2473 lt!1949789) key!5896) lt!1949868)))

(declare-fun b!4790311 () Bool)

(assert (=> b!4790311 (= e!2990955 (not (containsKey!3918 (apply!12957 lm!2473 lt!1949789) key!5896)))))

(declare-fun b!4790312 () Bool)

(assert (=> b!4790312 (= e!2990952 e!2990956)))

(declare-fun c!816477 () Bool)

(assert (=> b!4790312 (= c!816477 ((_ is Cons!54159) (apply!12957 lm!2473 lt!1949789)))))

(declare-fun b!4790313 () Bool)

(assert (=> b!4790313 (= e!2990956 None!13054)))

(declare-fun b!4790314 () Bool)

(declare-fun contains!17766 (List!54283 tuple2!56752) Bool)

(assert (=> b!4790314 (= e!2990953 (contains!17766 (apply!12957 lm!2473 lt!1949789) (get!18450 lt!1949868)))))

(declare-fun b!4790315 () Bool)

(assert (=> b!4790315 (= e!2990954 e!2990953)))

(declare-fun res!2035677 () Bool)

(assert (=> b!4790315 (=> (not res!2035677) (not e!2990953))))

(assert (=> b!4790315 (= res!2035677 (isDefined!10197 lt!1949868))))

(assert (= (and d!1532467 c!816476) b!4790308))

(assert (= (and d!1532467 (not c!816476)) b!4790312))

(assert (= (and b!4790312 c!816477) b!4790310))

(assert (= (and b!4790312 (not c!816477)) b!4790313))

(assert (= (and d!1532467 res!2035676) b!4790311))

(assert (= (and d!1532467 (not res!2035679)) b!4790315))

(assert (= (and b!4790315 res!2035677) b!4790309))

(assert (= (and b!4790309 res!2035678) b!4790314))

(assert (=> b!4790311 m!5770128))

(declare-fun m!5770280 () Bool)

(assert (=> b!4790311 m!5770280))

(declare-fun m!5770282 () Bool)

(assert (=> d!1532467 m!5770282))

(assert (=> d!1532467 m!5770128))

(declare-fun m!5770284 () Bool)

(assert (=> d!1532467 m!5770284))

(declare-fun m!5770286 () Bool)

(assert (=> b!4790314 m!5770286))

(assert (=> b!4790314 m!5770128))

(assert (=> b!4790314 m!5770286))

(declare-fun m!5770288 () Bool)

(assert (=> b!4790314 m!5770288))

(assert (=> b!4790309 m!5770286))

(declare-fun m!5770290 () Bool)

(assert (=> b!4790310 m!5770290))

(declare-fun m!5770292 () Bool)

(assert (=> b!4790315 m!5770292))

(assert (=> b!4790185 d!1532467))

(declare-fun d!1532475 () Bool)

(declare-fun get!18452 (Option!13058) List!54283)

(assert (=> d!1532475 (= (apply!12957 lm!2473 lt!1949789) (get!18452 (getValueByKey!2337 (toList!6871 lm!2473) lt!1949789)))))

(declare-fun bs!1154269 () Bool)

(assert (= bs!1154269 d!1532475))

(assert (=> bs!1154269 m!5770238))

(assert (=> bs!1154269 m!5770238))

(declare-fun m!5770300 () Bool)

(assert (=> bs!1154269 m!5770300))

(assert (=> b!4790185 d!1532475))

(declare-fun b!4790392 () Bool)

(declare-fun e!2991011 () Bool)

(declare-datatypes ((List!54286 0))(
  ( (Nil!54162) (Cons!54162 (h!60586 K!15729) (t!361736 List!54286)) )
))
(declare-fun contains!17767 (List!54286 K!15729) Bool)

(declare-fun keys!19764 (ListMap!6343) List!54286)

(assert (=> b!4790392 (= e!2991011 (contains!17767 (keys!19764 (extractMap!2423 (toList!6871 lt!1949792))) key!5896))))

(declare-fun bm!334970 () Bool)

(declare-fun call!334975 () Bool)

(declare-fun e!2991012 () List!54286)

(assert (=> bm!334970 (= call!334975 (contains!17767 e!2991012 key!5896))))

(declare-fun c!816498 () Bool)

(declare-fun c!816497 () Bool)

(assert (=> bm!334970 (= c!816498 c!816497)))

(declare-fun b!4790393 () Bool)

(assert (=> b!4790393 (= e!2991012 (keys!19764 (extractMap!2423 (toList!6871 lt!1949792))))))

(declare-fun d!1532481 () Bool)

(declare-fun e!2991014 () Bool)

(assert (=> d!1532481 e!2991014))

(declare-fun res!2035717 () Bool)

(assert (=> d!1532481 (=> res!2035717 e!2991014)))

(declare-fun e!2991009 () Bool)

(assert (=> d!1532481 (= res!2035717 e!2991009)))

(declare-fun res!2035718 () Bool)

(assert (=> d!1532481 (=> (not res!2035718) (not e!2991009))))

(declare-fun lt!1949903 () Bool)

(assert (=> d!1532481 (= res!2035718 (not lt!1949903))))

(declare-fun lt!1949900 () Bool)

(assert (=> d!1532481 (= lt!1949903 lt!1949900)))

(declare-fun lt!1949907 () Unit!139767)

(declare-fun e!2991013 () Unit!139767)

(assert (=> d!1532481 (= lt!1949907 e!2991013)))

(assert (=> d!1532481 (= c!816497 lt!1949900)))

(declare-fun containsKey!3922 (List!54283 K!15729) Bool)

(assert (=> d!1532481 (= lt!1949900 (containsKey!3922 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))) key!5896))))

(assert (=> d!1532481 (= (contains!17763 (extractMap!2423 (toList!6871 lt!1949792)) key!5896) lt!1949903)))

(declare-fun b!4790394 () Bool)

(declare-fun e!2991010 () Unit!139767)

(assert (=> b!4790394 (= e!2991013 e!2991010)))

(declare-fun c!816499 () Bool)

(assert (=> b!4790394 (= c!816499 call!334975)))

(declare-fun b!4790395 () Bool)

(declare-fun lt!1949902 () Unit!139767)

(assert (=> b!4790395 (= e!2991013 lt!1949902)))

(declare-fun lt!1949906 () Unit!139767)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2130 (List!54283 K!15729) Unit!139767)

(assert (=> b!4790395 (= lt!1949906 (lemmaContainsKeyImpliesGetValueByKeyDefined!2130 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))) key!5896))))

(declare-datatypes ((Option!13059 0))(
  ( (None!13058) (Some!13058 (v!48333 V!15975)) )
))
(declare-fun isDefined!10201 (Option!13059) Bool)

(declare-fun getValueByKey!2338 (List!54283 K!15729) Option!13059)

(assert (=> b!4790395 (isDefined!10201 (getValueByKey!2338 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))) key!5896))))

(declare-fun lt!1949905 () Unit!139767)

(assert (=> b!4790395 (= lt!1949905 lt!1949906)))

(declare-fun lemmaInListThenGetKeysListContains!1064 (List!54283 K!15729) Unit!139767)

(assert (=> b!4790395 (= lt!1949902 (lemmaInListThenGetKeysListContains!1064 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))) key!5896))))

(assert (=> b!4790395 call!334975))

(declare-fun b!4790396 () Bool)

(assert (=> b!4790396 false))

(declare-fun lt!1949901 () Unit!139767)

(declare-fun lt!1949904 () Unit!139767)

(assert (=> b!4790396 (= lt!1949901 lt!1949904)))

(assert (=> b!4790396 (containsKey!3922 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))) key!5896)))

(declare-fun lemmaInGetKeysListThenContainsKey!1069 (List!54283 K!15729) Unit!139767)

(assert (=> b!4790396 (= lt!1949904 (lemmaInGetKeysListThenContainsKey!1069 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))) key!5896))))

(declare-fun Unit!139777 () Unit!139767)

(assert (=> b!4790396 (= e!2991010 Unit!139777)))

(declare-fun b!4790397 () Bool)

(declare-fun getKeysList!1069 (List!54283) List!54286)

(assert (=> b!4790397 (= e!2991012 (getKeysList!1069 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))))))

(declare-fun b!4790398 () Bool)

(assert (=> b!4790398 (= e!2991014 e!2991011)))

(declare-fun res!2035716 () Bool)

(assert (=> b!4790398 (=> (not res!2035716) (not e!2991011))))

(assert (=> b!4790398 (= res!2035716 (isDefined!10201 (getValueByKey!2338 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))) key!5896)))))

(declare-fun b!4790399 () Bool)

(declare-fun Unit!139778 () Unit!139767)

(assert (=> b!4790399 (= e!2991010 Unit!139778)))

(declare-fun b!4790400 () Bool)

(assert (=> b!4790400 (= e!2991009 (not (contains!17767 (keys!19764 (extractMap!2423 (toList!6871 lt!1949792))) key!5896)))))

(assert (= (and d!1532481 c!816497) b!4790395))

(assert (= (and d!1532481 (not c!816497)) b!4790394))

(assert (= (and b!4790394 c!816499) b!4790396))

(assert (= (and b!4790394 (not c!816499)) b!4790399))

(assert (= (or b!4790395 b!4790394) bm!334970))

(assert (= (and bm!334970 c!816498) b!4790397))

(assert (= (and bm!334970 (not c!816498)) b!4790393))

(assert (= (and d!1532481 res!2035718) b!4790400))

(assert (= (and d!1532481 (not res!2035717)) b!4790398))

(assert (= (and b!4790398 res!2035716) b!4790392))

(declare-fun m!5770366 () Bool)

(assert (=> b!4790396 m!5770366))

(declare-fun m!5770368 () Bool)

(assert (=> b!4790396 m!5770368))

(assert (=> b!4790392 m!5770138))

(declare-fun m!5770370 () Bool)

(assert (=> b!4790392 m!5770370))

(assert (=> b!4790392 m!5770370))

(declare-fun m!5770372 () Bool)

(assert (=> b!4790392 m!5770372))

(declare-fun m!5770374 () Bool)

(assert (=> bm!334970 m!5770374))

(declare-fun m!5770376 () Bool)

(assert (=> b!4790395 m!5770376))

(declare-fun m!5770378 () Bool)

(assert (=> b!4790395 m!5770378))

(assert (=> b!4790395 m!5770378))

(declare-fun m!5770380 () Bool)

(assert (=> b!4790395 m!5770380))

(declare-fun m!5770382 () Bool)

(assert (=> b!4790395 m!5770382))

(assert (=> d!1532481 m!5770366))

(assert (=> b!4790400 m!5770138))

(assert (=> b!4790400 m!5770370))

(assert (=> b!4790400 m!5770370))

(assert (=> b!4790400 m!5770372))

(assert (=> b!4790393 m!5770138))

(assert (=> b!4790393 m!5770370))

(assert (=> b!4790398 m!5770378))

(assert (=> b!4790398 m!5770378))

(assert (=> b!4790398 m!5770380))

(declare-fun m!5770384 () Bool)

(assert (=> b!4790397 m!5770384))

(assert (=> b!4790190 d!1532481))

(declare-fun bs!1154295 () Bool)

(declare-fun d!1532503 () Bool)

(assert (= bs!1154295 (and d!1532503 start!493018)))

(declare-fun lambda!230151 () Int)

(assert (=> bs!1154295 (= lambda!230151 lambda!230123)))

(declare-fun bs!1154296 () Bool)

(assert (= bs!1154296 (and d!1532503 d!1532443)))

(assert (=> bs!1154296 (= lambda!230151 lambda!230129)))

(declare-fun bs!1154297 () Bool)

(assert (= bs!1154297 (and d!1532503 d!1532445)))

(assert (=> bs!1154297 (= lambda!230151 lambda!230132)))

(assert (=> d!1532503 (contains!17763 (extractMap!2423 (toList!6871 lt!1949792)) key!5896)))

(declare-fun lt!1949910 () Unit!139767)

(declare-fun choose!34474 (ListLongMap!5293 K!15729 Hashable!6896) Unit!139767)

(assert (=> d!1532503 (= lt!1949910 (choose!34474 lt!1949792 key!5896 hashF!1559))))

(assert (=> d!1532503 (forall!12217 (toList!6871 lt!1949792) lambda!230151)))

(assert (=> d!1532503 (= (lemmaListContainsThenExtractedMapContains!696 lt!1949792 key!5896 hashF!1559) lt!1949910)))

(declare-fun bs!1154298 () Bool)

(assert (= bs!1154298 d!1532503))

(assert (=> bs!1154298 m!5770138))

(assert (=> bs!1154298 m!5770138))

(assert (=> bs!1154298 m!5770140))

(declare-fun m!5770386 () Bool)

(assert (=> bs!1154298 m!5770386))

(declare-fun m!5770388 () Bool)

(assert (=> bs!1154298 m!5770388))

(assert (=> b!4790190 d!1532503))

(declare-fun d!1532505 () Bool)

(declare-fun isEmpty!29433 (List!54284) Bool)

(assert (=> d!1532505 (= (isEmpty!29429 lm!2473) (isEmpty!29433 (toList!6871 lm!2473)))))

(declare-fun bs!1154299 () Bool)

(assert (= bs!1154299 d!1532505))

(declare-fun m!5770390 () Bool)

(assert (=> bs!1154299 m!5770390))

(assert (=> b!4790190 d!1532505))

(declare-fun d!1532507 () Bool)

(declare-fun tail!9249 (List!54284) List!54284)

(assert (=> d!1532507 (= (tail!9247 lm!2473) (ListLongMap!5294 (tail!9249 (toList!6871 lm!2473))))))

(declare-fun bs!1154300 () Bool)

(assert (= bs!1154300 d!1532507))

(declare-fun m!5770392 () Bool)

(assert (=> bs!1154300 m!5770392))

(assert (=> b!4790190 d!1532507))

(declare-fun d!1532509 () Bool)

(declare-fun e!2991018 () Bool)

(assert (=> d!1532509 e!2991018))

(declare-fun res!2035719 () Bool)

(assert (=> d!1532509 (=> res!2035719 e!2991018)))

(declare-fun lt!1949911 () Bool)

(assert (=> d!1532509 (= res!2035719 (not lt!1949911))))

(declare-fun lt!1949912 () Bool)

(assert (=> d!1532509 (= lt!1949911 lt!1949912)))

(declare-fun lt!1949913 () Unit!139767)

(declare-fun e!2991019 () Unit!139767)

(assert (=> d!1532509 (= lt!1949913 e!2991019)))

(declare-fun c!816500 () Bool)

(assert (=> d!1532509 (= c!816500 lt!1949912)))

(assert (=> d!1532509 (= lt!1949912 (containsKey!3921 (toList!6871 lt!1949792) lt!1949789))))

(assert (=> d!1532509 (= (contains!17762 lt!1949792 lt!1949789) lt!1949911)))

(declare-fun b!4790406 () Bool)

(declare-fun lt!1949914 () Unit!139767)

(assert (=> b!4790406 (= e!2991019 lt!1949914)))

(assert (=> b!4790406 (= lt!1949914 (lemmaContainsKeyImpliesGetValueByKeyDefined!2129 (toList!6871 lt!1949792) lt!1949789))))

(assert (=> b!4790406 (isDefined!10200 (getValueByKey!2337 (toList!6871 lt!1949792) lt!1949789))))

(declare-fun b!4790407 () Bool)

(declare-fun Unit!139779 () Unit!139767)

(assert (=> b!4790407 (= e!2991019 Unit!139779)))

(declare-fun b!4790408 () Bool)

(assert (=> b!4790408 (= e!2991018 (isDefined!10200 (getValueByKey!2337 (toList!6871 lt!1949792) lt!1949789)))))

(assert (= (and d!1532509 c!816500) b!4790406))

(assert (= (and d!1532509 (not c!816500)) b!4790407))

(assert (= (and d!1532509 (not res!2035719)) b!4790408))

(declare-fun m!5770394 () Bool)

(assert (=> d!1532509 m!5770394))

(declare-fun m!5770396 () Bool)

(assert (=> b!4790406 m!5770396))

(declare-fun m!5770398 () Bool)

(assert (=> b!4790406 m!5770398))

(assert (=> b!4790406 m!5770398))

(declare-fun m!5770400 () Bool)

(assert (=> b!4790406 m!5770400))

(assert (=> b!4790408 m!5770398))

(assert (=> b!4790408 m!5770398))

(assert (=> b!4790408 m!5770400))

(assert (=> b!4790190 d!1532509))

(declare-fun bs!1154301 () Bool)

(declare-fun d!1532511 () Bool)

(assert (= bs!1154301 (and d!1532511 start!493018)))

(declare-fun lambda!230154 () Int)

(assert (=> bs!1154301 (= lambda!230154 lambda!230123)))

(declare-fun bs!1154302 () Bool)

(assert (= bs!1154302 (and d!1532511 d!1532443)))

(assert (=> bs!1154302 (= lambda!230154 lambda!230129)))

(declare-fun bs!1154303 () Bool)

(assert (= bs!1154303 (and d!1532511 d!1532445)))

(assert (=> bs!1154303 (= lambda!230154 lambda!230132)))

(declare-fun bs!1154304 () Bool)

(assert (= bs!1154304 (and d!1532511 d!1532503)))

(assert (=> bs!1154304 (= lambda!230154 lambda!230151)))

(declare-fun lt!1949917 () ListMap!6343)

(declare-fun invariantList!1723 (List!54283) Bool)

(assert (=> d!1532511 (invariantList!1723 (toList!6872 lt!1949917))))

(declare-fun e!2991022 () ListMap!6343)

(assert (=> d!1532511 (= lt!1949917 e!2991022)))

(declare-fun c!816503 () Bool)

(assert (=> d!1532511 (= c!816503 ((_ is Cons!54160) (toList!6871 lt!1949792)))))

(assert (=> d!1532511 (forall!12217 (toList!6871 lt!1949792) lambda!230154)))

(assert (=> d!1532511 (= (extractMap!2423 (toList!6871 lt!1949792)) lt!1949917)))

(declare-fun b!4790413 () Bool)

(declare-fun addToMapMapFromBucket!1694 (List!54283 ListMap!6343) ListMap!6343)

(assert (=> b!4790413 (= e!2991022 (addToMapMapFromBucket!1694 (_2!31671 (h!60584 (toList!6871 lt!1949792))) (extractMap!2423 (t!361734 (toList!6871 lt!1949792)))))))

(declare-fun b!4790414 () Bool)

(assert (=> b!4790414 (= e!2991022 (ListMap!6344 Nil!54159))))

(assert (= (and d!1532511 c!816503) b!4790413))

(assert (= (and d!1532511 (not c!816503)) b!4790414))

(declare-fun m!5770402 () Bool)

(assert (=> d!1532511 m!5770402))

(declare-fun m!5770404 () Bool)

(assert (=> d!1532511 m!5770404))

(declare-fun m!5770406 () Bool)

(assert (=> b!4790413 m!5770406))

(assert (=> b!4790413 m!5770406))

(declare-fun m!5770408 () Bool)

(assert (=> b!4790413 m!5770408))

(assert (=> b!4790190 d!1532511))

(declare-fun bs!1154305 () Bool)

(declare-fun d!1532513 () Bool)

(assert (= bs!1154305 (and d!1532513 d!1532511)))

(declare-fun lambda!230157 () Int)

(assert (=> bs!1154305 (not (= lambda!230157 lambda!230154))))

(declare-fun bs!1154306 () Bool)

(assert (= bs!1154306 (and d!1532513 d!1532445)))

(assert (=> bs!1154306 (not (= lambda!230157 lambda!230132))))

(declare-fun bs!1154307 () Bool)

(assert (= bs!1154307 (and d!1532513 d!1532503)))

(assert (=> bs!1154307 (not (= lambda!230157 lambda!230151))))

(declare-fun bs!1154308 () Bool)

(assert (= bs!1154308 (and d!1532513 d!1532443)))

(assert (=> bs!1154308 (not (= lambda!230157 lambda!230129))))

(declare-fun bs!1154309 () Bool)

(assert (= bs!1154309 (and d!1532513 start!493018)))

(assert (=> bs!1154309 (not (= lambda!230157 lambda!230123))))

(assert (=> d!1532513 true))

(assert (=> d!1532513 (= (allKeysSameHashInMap!2301 lm!2473 hashF!1559) (forall!12217 (toList!6871 lm!2473) lambda!230157))))

(declare-fun bs!1154310 () Bool)

(assert (= bs!1154310 d!1532513))

(declare-fun m!5770410 () Bool)

(assert (=> bs!1154310 m!5770410))

(assert (=> b!4790192 d!1532513))

(declare-fun bs!1154311 () Bool)

(declare-fun d!1532515 () Bool)

(assert (= bs!1154311 (and d!1532515 d!1532511)))

(declare-fun lambda!230160 () Int)

(assert (=> bs!1154311 (= lambda!230160 lambda!230154)))

(declare-fun bs!1154312 () Bool)

(assert (= bs!1154312 (and d!1532515 d!1532513)))

(assert (=> bs!1154312 (not (= lambda!230160 lambda!230157))))

(declare-fun bs!1154313 () Bool)

(assert (= bs!1154313 (and d!1532515 d!1532445)))

(assert (=> bs!1154313 (= lambda!230160 lambda!230132)))

(declare-fun bs!1154314 () Bool)

(assert (= bs!1154314 (and d!1532515 d!1532503)))

(assert (=> bs!1154314 (= lambda!230160 lambda!230151)))

(declare-fun bs!1154315 () Bool)

(assert (= bs!1154315 (and d!1532515 d!1532443)))

(assert (=> bs!1154315 (= lambda!230160 lambda!230129)))

(declare-fun bs!1154316 () Bool)

(assert (= bs!1154316 (and d!1532515 start!493018)))

(assert (=> bs!1154316 (= lambda!230160 lambda!230123)))

(assert (=> d!1532515 (not (contains!17763 (extractMap!2423 (toList!6871 lt!1949792)) key!5896))))

(declare-fun lt!1949920 () Unit!139767)

(declare-fun choose!34475 (ListLongMap!5293 K!15729 Hashable!6896) Unit!139767)

(assert (=> d!1532515 (= lt!1949920 (choose!34475 lt!1949792 key!5896 hashF!1559))))

(assert (=> d!1532515 (forall!12217 (toList!6871 lt!1949792) lambda!230160)))

(assert (=> d!1532515 (= (lemmaHashNotInLongMapThenNotInGenerated!22 lt!1949792 key!5896 hashF!1559) lt!1949920)))

(declare-fun bs!1154317 () Bool)

(assert (= bs!1154317 d!1532515))

(assert (=> bs!1154317 m!5770138))

(assert (=> bs!1154317 m!5770138))

(assert (=> bs!1154317 m!5770140))

(declare-fun m!5770412 () Bool)

(assert (=> bs!1154317 m!5770412))

(declare-fun m!5770414 () Bool)

(assert (=> bs!1154317 m!5770414))

(assert (=> b!4790191 d!1532515))

(assert (=> b!4790191 d!1532481))

(assert (=> b!4790191 d!1532511))

(declare-fun b!4790417 () Bool)

(declare-fun e!2991025 () Bool)

(assert (=> b!4790417 (= e!2991025 (contains!17767 (keys!19764 (extractMap!2423 (toList!6871 lm!2473))) key!5896))))

(declare-fun bm!334971 () Bool)

(declare-fun call!334976 () Bool)

(declare-fun e!2991026 () List!54286)

(assert (=> bm!334971 (= call!334976 (contains!17767 e!2991026 key!5896))))

(declare-fun c!816505 () Bool)

(declare-fun c!816504 () Bool)

(assert (=> bm!334971 (= c!816505 c!816504)))

(declare-fun b!4790418 () Bool)

(assert (=> b!4790418 (= e!2991026 (keys!19764 (extractMap!2423 (toList!6871 lm!2473))))))

(declare-fun d!1532517 () Bool)

(declare-fun e!2991028 () Bool)

(assert (=> d!1532517 e!2991028))

(declare-fun res!2035721 () Bool)

(assert (=> d!1532517 (=> res!2035721 e!2991028)))

(declare-fun e!2991023 () Bool)

(assert (=> d!1532517 (= res!2035721 e!2991023)))

(declare-fun res!2035722 () Bool)

(assert (=> d!1532517 (=> (not res!2035722) (not e!2991023))))

(declare-fun lt!1949924 () Bool)

(assert (=> d!1532517 (= res!2035722 (not lt!1949924))))

(declare-fun lt!1949921 () Bool)

(assert (=> d!1532517 (= lt!1949924 lt!1949921)))

(declare-fun lt!1949928 () Unit!139767)

(declare-fun e!2991027 () Unit!139767)

(assert (=> d!1532517 (= lt!1949928 e!2991027)))

(assert (=> d!1532517 (= c!816504 lt!1949921)))

(assert (=> d!1532517 (= lt!1949921 (containsKey!3922 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))) key!5896))))

(assert (=> d!1532517 (= (contains!17763 (extractMap!2423 (toList!6871 lm!2473)) key!5896) lt!1949924)))

(declare-fun b!4790419 () Bool)

(declare-fun e!2991024 () Unit!139767)

(assert (=> b!4790419 (= e!2991027 e!2991024)))

(declare-fun c!816506 () Bool)

(assert (=> b!4790419 (= c!816506 call!334976)))

(declare-fun b!4790420 () Bool)

(declare-fun lt!1949923 () Unit!139767)

(assert (=> b!4790420 (= e!2991027 lt!1949923)))

(declare-fun lt!1949927 () Unit!139767)

(assert (=> b!4790420 (= lt!1949927 (lemmaContainsKeyImpliesGetValueByKeyDefined!2130 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))) key!5896))))

(assert (=> b!4790420 (isDefined!10201 (getValueByKey!2338 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))) key!5896))))

(declare-fun lt!1949926 () Unit!139767)

(assert (=> b!4790420 (= lt!1949926 lt!1949927)))

(assert (=> b!4790420 (= lt!1949923 (lemmaInListThenGetKeysListContains!1064 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))) key!5896))))

(assert (=> b!4790420 call!334976))

(declare-fun b!4790421 () Bool)

(assert (=> b!4790421 false))

(declare-fun lt!1949922 () Unit!139767)

(declare-fun lt!1949925 () Unit!139767)

(assert (=> b!4790421 (= lt!1949922 lt!1949925)))

(assert (=> b!4790421 (containsKey!3922 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))) key!5896)))

(assert (=> b!4790421 (= lt!1949925 (lemmaInGetKeysListThenContainsKey!1069 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))) key!5896))))

(declare-fun Unit!139780 () Unit!139767)

(assert (=> b!4790421 (= e!2991024 Unit!139780)))

(declare-fun b!4790422 () Bool)

(assert (=> b!4790422 (= e!2991026 (getKeysList!1069 (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))))))

(declare-fun b!4790423 () Bool)

(assert (=> b!4790423 (= e!2991028 e!2991025)))

(declare-fun res!2035720 () Bool)

(assert (=> b!4790423 (=> (not res!2035720) (not e!2991025))))

(assert (=> b!4790423 (= res!2035720 (isDefined!10201 (getValueByKey!2338 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))) key!5896)))))

(declare-fun b!4790424 () Bool)

(declare-fun Unit!139781 () Unit!139767)

(assert (=> b!4790424 (= e!2991024 Unit!139781)))

(declare-fun b!4790425 () Bool)

(assert (=> b!4790425 (= e!2991023 (not (contains!17767 (keys!19764 (extractMap!2423 (toList!6871 lm!2473))) key!5896)))))

(assert (= (and d!1532517 c!816504) b!4790420))

(assert (= (and d!1532517 (not c!816504)) b!4790419))

(assert (= (and b!4790419 c!816506) b!4790421))

(assert (= (and b!4790419 (not c!816506)) b!4790424))

(assert (= (or b!4790420 b!4790419) bm!334971))

(assert (= (and bm!334971 c!816505) b!4790422))

(assert (= (and bm!334971 (not c!816505)) b!4790418))

(assert (= (and d!1532517 res!2035722) b!4790425))

(assert (= (and d!1532517 (not res!2035721)) b!4790423))

(assert (= (and b!4790423 res!2035720) b!4790417))

(declare-fun m!5770416 () Bool)

(assert (=> b!4790421 m!5770416))

(declare-fun m!5770418 () Bool)

(assert (=> b!4790421 m!5770418))

(assert (=> b!4790417 m!5770148))

(declare-fun m!5770420 () Bool)

(assert (=> b!4790417 m!5770420))

(assert (=> b!4790417 m!5770420))

(declare-fun m!5770422 () Bool)

(assert (=> b!4790417 m!5770422))

(declare-fun m!5770424 () Bool)

(assert (=> bm!334971 m!5770424))

(declare-fun m!5770426 () Bool)

(assert (=> b!4790420 m!5770426))

(declare-fun m!5770428 () Bool)

(assert (=> b!4790420 m!5770428))

(assert (=> b!4790420 m!5770428))

(declare-fun m!5770430 () Bool)

(assert (=> b!4790420 m!5770430))

(declare-fun m!5770432 () Bool)

(assert (=> b!4790420 m!5770432))

(assert (=> d!1532517 m!5770416))

(assert (=> b!4790425 m!5770148))

(assert (=> b!4790425 m!5770420))

(assert (=> b!4790425 m!5770420))

(assert (=> b!4790425 m!5770422))

(assert (=> b!4790418 m!5770148))

(assert (=> b!4790418 m!5770420))

(assert (=> b!4790423 m!5770428))

(assert (=> b!4790423 m!5770428))

(assert (=> b!4790423 m!5770430))

(declare-fun m!5770434 () Bool)

(assert (=> b!4790422 m!5770434))

(assert (=> b!4790187 d!1532517))

(declare-fun bs!1154318 () Bool)

(declare-fun d!1532519 () Bool)

(assert (= bs!1154318 (and d!1532519 d!1532511)))

(declare-fun lambda!230161 () Int)

(assert (=> bs!1154318 (= lambda!230161 lambda!230154)))

(declare-fun bs!1154319 () Bool)

(assert (= bs!1154319 (and d!1532519 d!1532513)))

(assert (=> bs!1154319 (not (= lambda!230161 lambda!230157))))

(declare-fun bs!1154320 () Bool)

(assert (= bs!1154320 (and d!1532519 d!1532445)))

(assert (=> bs!1154320 (= lambda!230161 lambda!230132)))

(declare-fun bs!1154321 () Bool)

(assert (= bs!1154321 (and d!1532519 d!1532515)))

(assert (=> bs!1154321 (= lambda!230161 lambda!230160)))

(declare-fun bs!1154322 () Bool)

(assert (= bs!1154322 (and d!1532519 d!1532503)))

(assert (=> bs!1154322 (= lambda!230161 lambda!230151)))

(declare-fun bs!1154323 () Bool)

(assert (= bs!1154323 (and d!1532519 d!1532443)))

(assert (=> bs!1154323 (= lambda!230161 lambda!230129)))

(declare-fun bs!1154324 () Bool)

(assert (= bs!1154324 (and d!1532519 start!493018)))

(assert (=> bs!1154324 (= lambda!230161 lambda!230123)))

(declare-fun lt!1949929 () ListMap!6343)

(assert (=> d!1532519 (invariantList!1723 (toList!6872 lt!1949929))))

(declare-fun e!2991029 () ListMap!6343)

(assert (=> d!1532519 (= lt!1949929 e!2991029)))

(declare-fun c!816507 () Bool)

(assert (=> d!1532519 (= c!816507 ((_ is Cons!54160) (toList!6871 lm!2473)))))

(assert (=> d!1532519 (forall!12217 (toList!6871 lm!2473) lambda!230161)))

(assert (=> d!1532519 (= (extractMap!2423 (toList!6871 lm!2473)) lt!1949929)))

(declare-fun b!4790426 () Bool)

(assert (=> b!4790426 (= e!2991029 (addToMapMapFromBucket!1694 (_2!31671 (h!60584 (toList!6871 lm!2473))) (extractMap!2423 (t!361734 (toList!6871 lm!2473)))))))

(declare-fun b!4790427 () Bool)

(assert (=> b!4790427 (= e!2991029 (ListMap!6344 Nil!54159))))

(assert (= (and d!1532519 c!816507) b!4790426))

(assert (= (and d!1532519 (not c!816507)) b!4790427))

(declare-fun m!5770436 () Bool)

(assert (=> d!1532519 m!5770436))

(declare-fun m!5770438 () Bool)

(assert (=> d!1532519 m!5770438))

(declare-fun m!5770440 () Bool)

(assert (=> b!4790426 m!5770440))

(assert (=> b!4790426 m!5770440))

(declare-fun m!5770442 () Bool)

(assert (=> b!4790426 m!5770442))

(assert (=> b!4790187 d!1532519))

(declare-fun b!4790432 () Bool)

(declare-fun e!2991032 () Bool)

(declare-fun tp!1357895 () Bool)

(declare-fun tp!1357896 () Bool)

(assert (=> b!4790432 (= e!2991032 (and tp!1357895 tp!1357896))))

(assert (=> b!4790186 (= tp!1357884 e!2991032)))

(assert (= (and b!4790186 ((_ is Cons!54160) (toList!6871 lm!2473))) b!4790432))

(declare-fun b_lambda!186489 () Bool)

(assert (= b_lambda!186483 (or start!493018 b_lambda!186489)))

(declare-fun bs!1154325 () Bool)

(declare-fun d!1532521 () Bool)

(assert (= bs!1154325 (and d!1532521 start!493018)))

(assert (=> bs!1154325 (= (dynLambda!22049 lambda!230123 (h!60584 (toList!6871 lm!2473))) (noDuplicateKeys!2325 (_2!31671 (h!60584 (toList!6871 lm!2473)))))))

(declare-fun m!5770444 () Bool)

(assert (=> bs!1154325 m!5770444))

(assert (=> b!4790203 d!1532521))

(check-sat (not bm!334971) (not d!1532503) (not b!4790198) (not b!4790423) (not b!4790426) (not d!1532467) (not b!4790406) (not d!1532453) (not b!4790417) (not b!4790425) (not b!4790432) (not b!4790413) (not d!1532481) (not b!4790279) tp_is_empty!33467 (not d!1532507) (not b!4790314) (not d!1532513) (not b!4790265) (not d!1532455) (not b!4790217) (not b!4790311) (not d!1532437) (not d!1532465) (not d!1532517) (not d!1532505) (not b!4790420) (not b!4790400) (not b!4790204) (not b!4790310) (not b!4790249) (not b!4790395) (not b!4790421) (not b!4790422) (not b!4790397) (not b!4790309) (not d!1532445) (not b!4790315) (not b!4790278) (not b!4790418) (not d!1532519) (not bm!334970) (not b!4790393) (not b!4790267) tp_is_empty!33465 (not b_lambda!186489) (not d!1532511) (not d!1532509) (not b!4790396) (not d!1532515) (not bs!1154325) (not b!4790398) (not d!1532475) (not b!4790219) (not d!1532443) (not b!4790277) (not b!4790392) (not b!4790408))
(check-sat)
(get-model)

(declare-fun d!1532547 () Bool)

(declare-fun noDuplicatedKeys!433 (List!54283) Bool)

(assert (=> d!1532547 (= (invariantList!1723 (toList!6872 lt!1949917)) (noDuplicatedKeys!433 (toList!6872 lt!1949917)))))

(declare-fun bs!1154328 () Bool)

(assert (= bs!1154328 d!1532547))

(declare-fun m!5770478 () Bool)

(assert (=> bs!1154328 m!5770478))

(assert (=> d!1532511 d!1532547))

(declare-fun d!1532549 () Bool)

(declare-fun res!2035752 () Bool)

(declare-fun e!2991068 () Bool)

(assert (=> d!1532549 (=> res!2035752 e!2991068)))

(assert (=> d!1532549 (= res!2035752 ((_ is Nil!54160) (toList!6871 lt!1949792)))))

(assert (=> d!1532549 (= (forall!12217 (toList!6871 lt!1949792) lambda!230154) e!2991068)))

(declare-fun b!4790488 () Bool)

(declare-fun e!2991069 () Bool)

(assert (=> b!4790488 (= e!2991068 e!2991069)))

(declare-fun res!2035753 () Bool)

(assert (=> b!4790488 (=> (not res!2035753) (not e!2991069))))

(assert (=> b!4790488 (= res!2035753 (dynLambda!22049 lambda!230154 (h!60584 (toList!6871 lt!1949792))))))

(declare-fun b!4790489 () Bool)

(assert (=> b!4790489 (= e!2991069 (forall!12217 (t!361734 (toList!6871 lt!1949792)) lambda!230154))))

(assert (= (and d!1532549 (not res!2035752)) b!4790488))

(assert (= (and b!4790488 res!2035753) b!4790489))

(declare-fun b_lambda!186493 () Bool)

(assert (=> (not b_lambda!186493) (not b!4790488)))

(declare-fun m!5770480 () Bool)

(assert (=> b!4790488 m!5770480))

(declare-fun m!5770482 () Bool)

(assert (=> b!4790489 m!5770482))

(assert (=> d!1532511 d!1532549))

(assert (=> d!1532515 d!1532481))

(assert (=> d!1532515 d!1532511))

(declare-fun d!1532551 () Bool)

(assert (=> d!1532551 (not (contains!17763 (extractMap!2423 (toList!6871 lt!1949792)) key!5896))))

(assert (=> d!1532551 true))

(declare-fun _$28!820 () Unit!139767)

(assert (=> d!1532551 (= (choose!34475 lt!1949792 key!5896 hashF!1559) _$28!820)))

(declare-fun bs!1154329 () Bool)

(assert (= bs!1154329 d!1532551))

(assert (=> bs!1154329 m!5770138))

(assert (=> bs!1154329 m!5770138))

(assert (=> bs!1154329 m!5770140))

(assert (=> d!1532515 d!1532551))

(declare-fun d!1532553 () Bool)

(declare-fun res!2035754 () Bool)

(declare-fun e!2991070 () Bool)

(assert (=> d!1532553 (=> res!2035754 e!2991070)))

(assert (=> d!1532553 (= res!2035754 ((_ is Nil!54160) (toList!6871 lt!1949792)))))

(assert (=> d!1532553 (= (forall!12217 (toList!6871 lt!1949792) lambda!230160) e!2991070)))

(declare-fun b!4790490 () Bool)

(declare-fun e!2991071 () Bool)

(assert (=> b!4790490 (= e!2991070 e!2991071)))

(declare-fun res!2035755 () Bool)

(assert (=> b!4790490 (=> (not res!2035755) (not e!2991071))))

(assert (=> b!4790490 (= res!2035755 (dynLambda!22049 lambda!230160 (h!60584 (toList!6871 lt!1949792))))))

(declare-fun b!4790491 () Bool)

(assert (=> b!4790491 (= e!2991071 (forall!12217 (t!361734 (toList!6871 lt!1949792)) lambda!230160))))

(assert (= (and d!1532553 (not res!2035754)) b!4790490))

(assert (= (and b!4790490 res!2035755) b!4790491))

(declare-fun b_lambda!186495 () Bool)

(assert (=> (not b_lambda!186495) (not b!4790490)))

(declare-fun m!5770484 () Bool)

(assert (=> b!4790490 m!5770484))

(declare-fun m!5770486 () Bool)

(assert (=> b!4790491 m!5770486))

(assert (=> d!1532515 d!1532553))

(declare-fun d!1532555 () Bool)

(declare-fun res!2035756 () Bool)

(declare-fun e!2991072 () Bool)

(assert (=> d!1532555 (=> res!2035756 e!2991072)))

(assert (=> d!1532555 (= res!2035756 (and ((_ is Cons!54159) (t!361733 (_2!31671 (h!60584 (toList!6871 lm!2473))))) (= (_1!31670 (h!60583 (t!361733 (_2!31671 (h!60584 (toList!6871 lm!2473)))))) key!5896)))))

(assert (=> d!1532555 (= (containsKey!3918 (t!361733 (_2!31671 (h!60584 (toList!6871 lm!2473)))) key!5896) e!2991072)))

(declare-fun b!4790492 () Bool)

(declare-fun e!2991073 () Bool)

(assert (=> b!4790492 (= e!2991072 e!2991073)))

(declare-fun res!2035757 () Bool)

(assert (=> b!4790492 (=> (not res!2035757) (not e!2991073))))

(assert (=> b!4790492 (= res!2035757 ((_ is Cons!54159) (t!361733 (_2!31671 (h!60584 (toList!6871 lm!2473))))))))

(declare-fun b!4790493 () Bool)

(assert (=> b!4790493 (= e!2991073 (containsKey!3918 (t!361733 (t!361733 (_2!31671 (h!60584 (toList!6871 lm!2473))))) key!5896))))

(assert (= (and d!1532555 (not res!2035756)) b!4790492))

(assert (= (and b!4790492 res!2035757) b!4790493))

(declare-fun m!5770488 () Bool)

(assert (=> b!4790493 m!5770488))

(assert (=> b!4790198 d!1532555))

(declare-fun d!1532557 () Bool)

(declare-fun res!2035762 () Bool)

(declare-fun e!2991078 () Bool)

(assert (=> d!1532557 (=> res!2035762 e!2991078)))

(assert (=> d!1532557 (= res!2035762 (and ((_ is Cons!54159) (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))) (= (_1!31670 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))))) key!5896)))))

(assert (=> d!1532557 (= (containsKey!3922 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))) key!5896) e!2991078)))

(declare-fun b!4790498 () Bool)

(declare-fun e!2991079 () Bool)

(assert (=> b!4790498 (= e!2991078 e!2991079)))

(declare-fun res!2035763 () Bool)

(assert (=> b!4790498 (=> (not res!2035763) (not e!2991079))))

(assert (=> b!4790498 (= res!2035763 ((_ is Cons!54159) (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))))))

(declare-fun b!4790499 () Bool)

(assert (=> b!4790499 (= e!2991079 (containsKey!3922 (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))) key!5896))))

(assert (= (and d!1532557 (not res!2035762)) b!4790498))

(assert (= (and b!4790498 res!2035763) b!4790499))

(declare-fun m!5770490 () Bool)

(assert (=> b!4790499 m!5770490))

(assert (=> d!1532481 d!1532557))

(declare-fun d!1532559 () Bool)

(declare-fun lt!1949935 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9696 (List!54286) (InoxSet K!15729))

(assert (=> d!1532559 (= lt!1949935 (select (content!9696 (keys!19764 (extractMap!2423 (toList!6871 lm!2473)))) key!5896))))

(declare-fun e!2991085 () Bool)

(assert (=> d!1532559 (= lt!1949935 e!2991085)))

(declare-fun res!2035769 () Bool)

(assert (=> d!1532559 (=> (not res!2035769) (not e!2991085))))

(assert (=> d!1532559 (= res!2035769 ((_ is Cons!54162) (keys!19764 (extractMap!2423 (toList!6871 lm!2473)))))))

(assert (=> d!1532559 (= (contains!17767 (keys!19764 (extractMap!2423 (toList!6871 lm!2473))) key!5896) lt!1949935)))

(declare-fun b!4790504 () Bool)

(declare-fun e!2991084 () Bool)

(assert (=> b!4790504 (= e!2991085 e!2991084)))

(declare-fun res!2035768 () Bool)

(assert (=> b!4790504 (=> res!2035768 e!2991084)))

(assert (=> b!4790504 (= res!2035768 (= (h!60586 (keys!19764 (extractMap!2423 (toList!6871 lm!2473)))) key!5896))))

(declare-fun b!4790505 () Bool)

(assert (=> b!4790505 (= e!2991084 (contains!17767 (t!361736 (keys!19764 (extractMap!2423 (toList!6871 lm!2473)))) key!5896))))

(assert (= (and d!1532559 res!2035769) b!4790504))

(assert (= (and b!4790504 (not res!2035768)) b!4790505))

(assert (=> d!1532559 m!5770420))

(declare-fun m!5770492 () Bool)

(assert (=> d!1532559 m!5770492))

(declare-fun m!5770494 () Bool)

(assert (=> d!1532559 m!5770494))

(declare-fun m!5770496 () Bool)

(assert (=> b!4790505 m!5770496))

(assert (=> b!4790425 d!1532559))

(declare-fun b!4790513 () Bool)

(assert (=> b!4790513 true))

(declare-fun d!1532561 () Bool)

(declare-fun e!2991088 () Bool)

(assert (=> d!1532561 e!2991088))

(declare-fun res!2035778 () Bool)

(assert (=> d!1532561 (=> (not res!2035778) (not e!2991088))))

(declare-fun lt!1949938 () List!54286)

(declare-fun noDuplicate!915 (List!54286) Bool)

(assert (=> d!1532561 (= res!2035778 (noDuplicate!915 lt!1949938))))

(assert (=> d!1532561 (= lt!1949938 (getKeysList!1069 (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))))))

(assert (=> d!1532561 (= (keys!19764 (extractMap!2423 (toList!6871 lm!2473))) lt!1949938)))

(declare-fun b!4790512 () Bool)

(declare-fun res!2035776 () Bool)

(assert (=> b!4790512 (=> (not res!2035776) (not e!2991088))))

(declare-fun length!686 (List!54286) Int)

(declare-fun length!687 (List!54283) Int)

(assert (=> b!4790512 (= res!2035776 (= (length!686 lt!1949938) (length!687 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))))))))

(declare-fun res!2035777 () Bool)

(assert (=> b!4790513 (=> (not res!2035777) (not e!2991088))))

(declare-fun lambda!230172 () Int)

(declare-fun forall!12220 (List!54286 Int) Bool)

(assert (=> b!4790513 (= res!2035777 (forall!12220 lt!1949938 lambda!230172))))

(declare-fun b!4790514 () Bool)

(declare-fun lambda!230173 () Int)

(declare-fun map!12224 (List!54283 Int) List!54286)

(assert (=> b!4790514 (= e!2991088 (= (content!9696 lt!1949938) (content!9696 (map!12224 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))) lambda!230173))))))

(assert (= (and d!1532561 res!2035778) b!4790512))

(assert (= (and b!4790512 res!2035776) b!4790513))

(assert (= (and b!4790513 res!2035777) b!4790514))

(declare-fun m!5770498 () Bool)

(assert (=> d!1532561 m!5770498))

(assert (=> d!1532561 m!5770434))

(declare-fun m!5770500 () Bool)

(assert (=> b!4790512 m!5770500))

(declare-fun m!5770502 () Bool)

(assert (=> b!4790512 m!5770502))

(declare-fun m!5770504 () Bool)

(assert (=> b!4790513 m!5770504))

(declare-fun m!5770506 () Bool)

(assert (=> b!4790514 m!5770506))

(declare-fun m!5770508 () Bool)

(assert (=> b!4790514 m!5770508))

(assert (=> b!4790514 m!5770508))

(declare-fun m!5770510 () Bool)

(assert (=> b!4790514 m!5770510))

(assert (=> b!4790425 d!1532561))

(declare-fun d!1532563 () Bool)

(assert (=> d!1532563 (= (isDefined!10197 lt!1949868) (not (isEmpty!29432 lt!1949868)))))

(declare-fun bs!1154330 () Bool)

(assert (= bs!1154330 d!1532563))

(assert (=> bs!1154330 m!5770282))

(assert (=> b!4790315 d!1532563))

(declare-fun d!1532565 () Bool)

(declare-fun isEmpty!29436 (Option!13058) Bool)

(assert (=> d!1532565 (= (isDefined!10200 (getValueByKey!2337 (toList!6871 lm!2473) lt!1949789)) (not (isEmpty!29436 (getValueByKey!2337 (toList!6871 lm!2473) lt!1949789))))))

(declare-fun bs!1154331 () Bool)

(assert (= bs!1154331 d!1532565))

(assert (=> bs!1154331 m!5770238))

(declare-fun m!5770512 () Bool)

(assert (=> bs!1154331 m!5770512))

(assert (=> b!4790267 d!1532565))

(declare-fun b!4790526 () Bool)

(declare-fun e!2991093 () Option!13058)

(declare-fun e!2991094 () Option!13058)

(assert (=> b!4790526 (= e!2991093 e!2991094)))

(declare-fun c!816525 () Bool)

(assert (=> b!4790526 (= c!816525 (and ((_ is Cons!54160) (toList!6871 lm!2473)) (not (= (_1!31671 (h!60584 (toList!6871 lm!2473))) lt!1949789))))))

(declare-fun b!4790528 () Bool)

(assert (=> b!4790528 (= e!2991094 None!13057)))

(declare-fun b!4790525 () Bool)

(assert (=> b!4790525 (= e!2991093 (Some!13057 (_2!31671 (h!60584 (toList!6871 lm!2473)))))))

(declare-fun d!1532567 () Bool)

(declare-fun c!816524 () Bool)

(assert (=> d!1532567 (= c!816524 (and ((_ is Cons!54160) (toList!6871 lm!2473)) (= (_1!31671 (h!60584 (toList!6871 lm!2473))) lt!1949789)))))

(assert (=> d!1532567 (= (getValueByKey!2337 (toList!6871 lm!2473) lt!1949789) e!2991093)))

(declare-fun b!4790527 () Bool)

(assert (=> b!4790527 (= e!2991094 (getValueByKey!2337 (t!361734 (toList!6871 lm!2473)) lt!1949789))))

(assert (= (and d!1532567 c!816524) b!4790525))

(assert (= (and d!1532567 (not c!816524)) b!4790526))

(assert (= (and b!4790526 c!816525) b!4790527))

(assert (= (and b!4790526 (not c!816525)) b!4790528))

(declare-fun m!5770514 () Bool)

(assert (=> b!4790527 m!5770514))

(assert (=> b!4790267 d!1532567))

(declare-fun d!1532569 () Bool)

(declare-fun res!2035783 () Bool)

(declare-fun e!2991099 () Bool)

(assert (=> d!1532569 (=> res!2035783 e!2991099)))

(assert (=> d!1532569 (= res!2035783 (and ((_ is Cons!54160) (toList!6871 lm!2473)) (= (_1!31671 (h!60584 (toList!6871 lm!2473))) lt!1949789)))))

(assert (=> d!1532569 (= (containsKey!3921 (toList!6871 lm!2473) lt!1949789) e!2991099)))

(declare-fun b!4790533 () Bool)

(declare-fun e!2991100 () Bool)

(assert (=> b!4790533 (= e!2991099 e!2991100)))

(declare-fun res!2035784 () Bool)

(assert (=> b!4790533 (=> (not res!2035784) (not e!2991100))))

(assert (=> b!4790533 (= res!2035784 (and (or (not ((_ is Cons!54160) (toList!6871 lm!2473))) (bvsle (_1!31671 (h!60584 (toList!6871 lm!2473))) lt!1949789)) ((_ is Cons!54160) (toList!6871 lm!2473)) (bvslt (_1!31671 (h!60584 (toList!6871 lm!2473))) lt!1949789)))))

(declare-fun b!4790534 () Bool)

(assert (=> b!4790534 (= e!2991100 (containsKey!3921 (t!361734 (toList!6871 lm!2473)) lt!1949789))))

(assert (= (and d!1532569 (not res!2035783)) b!4790533))

(assert (= (and b!4790533 res!2035784) b!4790534))

(declare-fun m!5770516 () Bool)

(assert (=> b!4790534 m!5770516))

(assert (=> d!1532455 d!1532569))

(declare-fun bs!1154332 () Bool)

(declare-fun b!4790563 () Bool)

(assert (= bs!1154332 (and b!4790563 b!4790513)))

(declare-fun lambda!230210 () Int)

(assert (=> bs!1154332 (= (= (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))) (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))) (= lambda!230210 lambda!230172))))

(assert (=> b!4790563 true))

(declare-fun bs!1154333 () Bool)

(declare-fun b!4790565 () Bool)

(assert (= bs!1154333 (and b!4790565 b!4790513)))

(declare-fun lambda!230211 () Int)

(assert (=> bs!1154333 (= (= (Cons!54159 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))) (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))))) (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))) (= lambda!230211 lambda!230172))))

(declare-fun bs!1154334 () Bool)

(assert (= bs!1154334 (and b!4790565 b!4790563)))

(assert (=> bs!1154334 (= (= (Cons!54159 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))) (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))))) (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))))) (= lambda!230211 lambda!230210))))

(assert (=> b!4790565 true))

(declare-fun bs!1154335 () Bool)

(declare-fun b!4790570 () Bool)

(assert (= bs!1154335 (and b!4790570 b!4790513)))

(declare-fun lambda!230212 () Int)

(assert (=> bs!1154335 (= (= (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))) (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))) (= lambda!230212 lambda!230172))))

(declare-fun bs!1154336 () Bool)

(assert (= bs!1154336 (and b!4790570 b!4790563)))

(assert (=> bs!1154336 (= (= (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))) (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))))) (= lambda!230212 lambda!230210))))

(declare-fun bs!1154337 () Bool)

(assert (= bs!1154337 (and b!4790570 b!4790565)))

(assert (=> bs!1154337 (= (= (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))) (Cons!54159 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))) (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))))) (= lambda!230212 lambda!230211))))

(assert (=> b!4790570 true))

(declare-fun bs!1154338 () Bool)

(declare-fun b!4790567 () Bool)

(assert (= bs!1154338 (and b!4790567 b!4790514)))

(declare-fun lambda!230214 () Int)

(assert (=> bs!1154338 (= lambda!230214 lambda!230173)))

(assert (=> b!4790563 false))

(declare-fun lt!1949998 () Unit!139767)

(declare-fun forallContained!4149 (List!54286 Int K!15729) Unit!139767)

(assert (=> b!4790563 (= lt!1949998 (forallContained!4149 (getKeysList!1069 (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))))) lambda!230210 (_1!31670 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))))))))

(declare-fun e!2991118 () Unit!139767)

(declare-fun Unit!139794 () Unit!139767)

(assert (=> b!4790563 (= e!2991118 Unit!139794)))

(declare-fun b!4790564 () Bool)

(declare-fun Unit!139795 () Unit!139767)

(assert (=> b!4790564 (= e!2991118 Unit!139795)))

(declare-fun e!2991117 () List!54286)

(assert (=> b!4790565 (= e!2991117 (Cons!54162 (_1!31670 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))))) (getKeysList!1069 (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))))))))

(declare-fun c!816534 () Bool)

(assert (=> b!4790565 (= c!816534 (containsKey!3922 (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))) (_1!31670 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))))))))

(declare-fun lt!1949997 () Unit!139767)

(declare-fun e!2991115 () Unit!139767)

(assert (=> b!4790565 (= lt!1949997 e!2991115)))

(declare-fun c!816535 () Bool)

(assert (=> b!4790565 (= c!816535 (contains!17767 (getKeysList!1069 (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))))) (_1!31670 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))))))))

(declare-fun lt!1949999 () Unit!139767)

(assert (=> b!4790565 (= lt!1949999 e!2991118)))

(declare-fun lt!1949996 () List!54286)

(assert (=> b!4790565 (= lt!1949996 (getKeysList!1069 (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))))))))

(declare-fun lt!1950000 () Unit!139767)

(declare-fun lemmaForallContainsAddHeadPreserves!330 (List!54283 List!54286 tuple2!56752) Unit!139767)

(assert (=> b!4790565 (= lt!1950000 (lemmaForallContainsAddHeadPreserves!330 (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))) lt!1949996 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))))))))

(assert (=> b!4790565 (forall!12220 lt!1949996 lambda!230211)))

(declare-fun lt!1949995 () Unit!139767)

(assert (=> b!4790565 (= lt!1949995 lt!1950000)))

(declare-fun b!4790566 () Bool)

(declare-fun Unit!139797 () Unit!139767)

(assert (=> b!4790566 (= e!2991115 Unit!139797)))

(declare-fun e!2991116 () Bool)

(declare-fun lt!1950001 () List!54286)

(assert (=> b!4790567 (= e!2991116 (= (content!9696 lt!1950001) (content!9696 (map!12224 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))) lambda!230214))))))

(declare-fun b!4790568 () Bool)

(assert (=> b!4790568 false))

(declare-fun Unit!139798 () Unit!139767)

(assert (=> b!4790568 (= e!2991115 Unit!139798)))

(declare-fun res!2035797 () Bool)

(assert (=> b!4790570 (=> (not res!2035797) (not e!2991116))))

(assert (=> b!4790570 (= res!2035797 (forall!12220 lt!1950001 lambda!230212))))

(declare-fun b!4790571 () Bool)

(declare-fun res!2035799 () Bool)

(assert (=> b!4790571 (=> (not res!2035799) (not e!2991116))))

(assert (=> b!4790571 (= res!2035799 (= (length!686 lt!1950001) (length!687 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))))))))

(declare-fun b!4790569 () Bool)

(assert (=> b!4790569 (= e!2991117 Nil!54162)))

(declare-fun d!1532571 () Bool)

(assert (=> d!1532571 e!2991116))

(declare-fun res!2035798 () Bool)

(assert (=> d!1532571 (=> (not res!2035798) (not e!2991116))))

(assert (=> d!1532571 (= res!2035798 (noDuplicate!915 lt!1950001))))

(assert (=> d!1532571 (= lt!1950001 e!2991117)))

(declare-fun c!816536 () Bool)

(assert (=> d!1532571 (= c!816536 ((_ is Cons!54159) (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))))))

(assert (=> d!1532571 (invariantList!1723 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))))))

(assert (=> d!1532571 (= (getKeysList!1069 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))) lt!1950001)))

(assert (= (and d!1532571 c!816536) b!4790565))

(assert (= (and d!1532571 (not c!816536)) b!4790569))

(assert (= (and b!4790565 c!816534) b!4790568))

(assert (= (and b!4790565 (not c!816534)) b!4790566))

(assert (= (and b!4790565 c!816535) b!4790563))

(assert (= (and b!4790565 (not c!816535)) b!4790564))

(assert (= (and d!1532571 res!2035798) b!4790571))

(assert (= (and b!4790571 res!2035799) b!4790570))

(assert (= (and b!4790570 res!2035797) b!4790567))

(declare-fun m!5770518 () Bool)

(assert (=> b!4790570 m!5770518))

(declare-fun m!5770520 () Bool)

(assert (=> b!4790563 m!5770520))

(assert (=> b!4790563 m!5770520))

(declare-fun m!5770522 () Bool)

(assert (=> b!4790563 m!5770522))

(declare-fun m!5770524 () Bool)

(assert (=> b!4790565 m!5770524))

(assert (=> b!4790565 m!5770520))

(declare-fun m!5770526 () Bool)

(assert (=> b!4790565 m!5770526))

(declare-fun m!5770528 () Bool)

(assert (=> b!4790565 m!5770528))

(assert (=> b!4790565 m!5770520))

(declare-fun m!5770530 () Bool)

(assert (=> b!4790565 m!5770530))

(declare-fun m!5770532 () Bool)

(assert (=> b!4790567 m!5770532))

(declare-fun m!5770534 () Bool)

(assert (=> b!4790567 m!5770534))

(assert (=> b!4790567 m!5770534))

(declare-fun m!5770536 () Bool)

(assert (=> b!4790567 m!5770536))

(declare-fun m!5770538 () Bool)

(assert (=> d!1532571 m!5770538))

(declare-fun m!5770540 () Bool)

(assert (=> d!1532571 m!5770540))

(declare-fun m!5770542 () Bool)

(assert (=> b!4790571 m!5770542))

(declare-fun m!5770544 () Bool)

(assert (=> b!4790571 m!5770544))

(assert (=> b!4790397 d!1532571))

(declare-fun d!1532573 () Bool)

(assert (=> d!1532573 (= (isEmpty!29432 (getPair!868 (apply!12957 lm!2473 lt!1949789) key!5896)) (not ((_ is Some!13054) (getPair!868 (apply!12957 lm!2473 lt!1949789) key!5896))))))

(assert (=> d!1532465 d!1532573))

(declare-fun d!1532575 () Bool)

(declare-fun isEmpty!29437 (Option!13059) Bool)

(assert (=> d!1532575 (= (isDefined!10201 (getValueByKey!2338 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))) key!5896)) (not (isEmpty!29437 (getValueByKey!2338 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))) key!5896))))))

(declare-fun bs!1154342 () Bool)

(assert (= bs!1154342 d!1532575))

(assert (=> bs!1154342 m!5770428))

(declare-fun m!5770546 () Bool)

(assert (=> bs!1154342 m!5770546))

(assert (=> b!4790423 d!1532575))

(declare-fun b!4790594 () Bool)

(declare-fun e!2991128 () Option!13059)

(assert (=> b!4790594 (= e!2991128 None!13058)))

(declare-fun b!4790592 () Bool)

(declare-fun e!2991127 () Option!13059)

(assert (=> b!4790592 (= e!2991127 e!2991128)))

(declare-fun c!816544 () Bool)

(assert (=> b!4790592 (= c!816544 (and ((_ is Cons!54159) (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))) (not (= (_1!31670 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))))) key!5896))))))

(declare-fun b!4790591 () Bool)

(assert (=> b!4790591 (= e!2991127 (Some!13058 (_2!31670 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))))))))

(declare-fun b!4790593 () Bool)

(assert (=> b!4790593 (= e!2991128 (getValueByKey!2338 (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))) key!5896))))

(declare-fun d!1532577 () Bool)

(declare-fun c!816543 () Bool)

(assert (=> d!1532577 (= c!816543 (and ((_ is Cons!54159) (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))) (= (_1!31670 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))))) key!5896)))))

(assert (=> d!1532577 (= (getValueByKey!2338 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))) key!5896) e!2991127)))

(assert (= (and d!1532577 c!816543) b!4790591))

(assert (= (and d!1532577 (not c!816543)) b!4790592))

(assert (= (and b!4790592 c!816544) b!4790593))

(assert (= (and b!4790592 (not c!816544)) b!4790594))

(declare-fun m!5770580 () Bool)

(assert (=> b!4790593 m!5770580))

(assert (=> b!4790423 d!1532577))

(declare-fun bs!1154351 () Bool)

(declare-fun b!4790596 () Bool)

(assert (= bs!1154351 (and b!4790596 b!4790513)))

(declare-fun lambda!230219 () Int)

(assert (=> bs!1154351 (= (= (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))) (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))) (= lambda!230219 lambda!230172))))

(declare-fun bs!1154352 () Bool)

(assert (= bs!1154352 (and b!4790596 b!4790563)))

(assert (=> bs!1154352 (= (= (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))) (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))))) (= lambda!230219 lambda!230210))))

(declare-fun bs!1154353 () Bool)

(assert (= bs!1154353 (and b!4790596 b!4790565)))

(assert (=> bs!1154353 (= (= (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))) (Cons!54159 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))) (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))))) (= lambda!230219 lambda!230211))))

(declare-fun bs!1154354 () Bool)

(assert (= bs!1154354 (and b!4790596 b!4790570)))

(assert (=> bs!1154354 (= lambda!230219 lambda!230212)))

(assert (=> b!4790596 true))

(declare-fun bs!1154355 () Bool)

(declare-fun b!4790597 () Bool)

(assert (= bs!1154355 (and b!4790597 b!4790514)))

(declare-fun lambda!230220 () Int)

(assert (=> bs!1154355 (= lambda!230220 lambda!230173)))

(declare-fun bs!1154356 () Bool)

(assert (= bs!1154356 (and b!4790597 b!4790567)))

(assert (=> bs!1154356 (= lambda!230220 lambda!230214)))

(declare-fun d!1532581 () Bool)

(declare-fun e!2991129 () Bool)

(assert (=> d!1532581 e!2991129))

(declare-fun res!2035805 () Bool)

(assert (=> d!1532581 (=> (not res!2035805) (not e!2991129))))

(declare-fun lt!1950024 () List!54286)

(assert (=> d!1532581 (= res!2035805 (noDuplicate!915 lt!1950024))))

(assert (=> d!1532581 (= lt!1950024 (getKeysList!1069 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))))))

(assert (=> d!1532581 (= (keys!19764 (extractMap!2423 (toList!6871 lt!1949792))) lt!1950024)))

(declare-fun b!4790595 () Bool)

(declare-fun res!2035803 () Bool)

(assert (=> b!4790595 (=> (not res!2035803) (not e!2991129))))

(assert (=> b!4790595 (= res!2035803 (= (length!686 lt!1950024) (length!687 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))))))))

(declare-fun res!2035804 () Bool)

(assert (=> b!4790596 (=> (not res!2035804) (not e!2991129))))

(assert (=> b!4790596 (= res!2035804 (forall!12220 lt!1950024 lambda!230219))))

(assert (=> b!4790597 (= e!2991129 (= (content!9696 lt!1950024) (content!9696 (map!12224 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))) lambda!230220))))))

(assert (= (and d!1532581 res!2035805) b!4790595))

(assert (= (and b!4790595 res!2035803) b!4790596))

(assert (= (and b!4790596 res!2035804) b!4790597))

(declare-fun m!5770590 () Bool)

(assert (=> d!1532581 m!5770590))

(assert (=> d!1532581 m!5770384))

(declare-fun m!5770592 () Bool)

(assert (=> b!4790595 m!5770592))

(assert (=> b!4790595 m!5770544))

(declare-fun m!5770594 () Bool)

(assert (=> b!4790596 m!5770594))

(declare-fun m!5770596 () Bool)

(assert (=> b!4790597 m!5770596))

(declare-fun m!5770598 () Bool)

(assert (=> b!4790597 m!5770598))

(assert (=> b!4790597 m!5770598))

(declare-fun m!5770600 () Bool)

(assert (=> b!4790597 m!5770600))

(assert (=> b!4790393 d!1532581))

(declare-fun d!1532585 () Bool)

(declare-fun res!2035820 () Bool)

(declare-fun e!2991144 () Bool)

(assert (=> d!1532585 (=> res!2035820 e!2991144)))

(assert (=> d!1532585 (= res!2035820 (or ((_ is Nil!54160) (toList!6871 lm!2473)) ((_ is Nil!54160) (t!361734 (toList!6871 lm!2473)))))))

(assert (=> d!1532585 (= (isStrictlySorted!871 (toList!6871 lm!2473)) e!2991144)))

(declare-fun b!4790612 () Bool)

(declare-fun e!2991145 () Bool)

(assert (=> b!4790612 (= e!2991144 e!2991145)))

(declare-fun res!2035821 () Bool)

(assert (=> b!4790612 (=> (not res!2035821) (not e!2991145))))

(assert (=> b!4790612 (= res!2035821 (bvslt (_1!31671 (h!60584 (toList!6871 lm!2473))) (_1!31671 (h!60584 (t!361734 (toList!6871 lm!2473))))))))

(declare-fun b!4790613 () Bool)

(assert (=> b!4790613 (= e!2991145 (isStrictlySorted!871 (t!361734 (toList!6871 lm!2473))))))

(assert (= (and d!1532585 (not res!2035820)) b!4790612))

(assert (= (and b!4790612 res!2035821) b!4790613))

(declare-fun m!5770616 () Bool)

(assert (=> b!4790613 m!5770616))

(assert (=> d!1532437 d!1532585))

(declare-fun d!1532593 () Bool)

(assert (=> d!1532593 (isDefined!10200 (getValueByKey!2337 (toList!6871 lm!2473) lt!1949789))))

(declare-fun lt!1950031 () Unit!139767)

(declare-fun choose!34479 (List!54284 (_ BitVec 64)) Unit!139767)

(assert (=> d!1532593 (= lt!1950031 (choose!34479 (toList!6871 lm!2473) lt!1949789))))

(declare-fun e!2991154 () Bool)

(assert (=> d!1532593 e!2991154))

(declare-fun res!2035829 () Bool)

(assert (=> d!1532593 (=> (not res!2035829) (not e!2991154))))

(assert (=> d!1532593 (= res!2035829 (isStrictlySorted!871 (toList!6871 lm!2473)))))

(assert (=> d!1532593 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2129 (toList!6871 lm!2473) lt!1949789) lt!1950031)))

(declare-fun b!4790623 () Bool)

(assert (=> b!4790623 (= e!2991154 (containsKey!3921 (toList!6871 lm!2473) lt!1949789))))

(assert (= (and d!1532593 res!2035829) b!4790623))

(assert (=> d!1532593 m!5770238))

(assert (=> d!1532593 m!5770238))

(assert (=> d!1532593 m!5770240))

(declare-fun m!5770638 () Bool)

(assert (=> d!1532593 m!5770638))

(assert (=> d!1532593 m!5770172))

(assert (=> b!4790623 m!5770234))

(assert (=> b!4790265 d!1532593))

(assert (=> b!4790265 d!1532565))

(assert (=> b!4790265 d!1532567))

(declare-fun d!1532607 () Bool)

(assert (=> d!1532607 (isDefined!10201 (getValueByKey!2338 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))) key!5896))))

(declare-fun lt!1950034 () Unit!139767)

(declare-fun choose!34480 (List!54283 K!15729) Unit!139767)

(assert (=> d!1532607 (= lt!1950034 (choose!34480 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))) key!5896))))

(assert (=> d!1532607 (invariantList!1723 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))))))

(assert (=> d!1532607 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2130 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))) key!5896) lt!1950034)))

(declare-fun bs!1154359 () Bool)

(assert (= bs!1154359 d!1532607))

(assert (=> bs!1154359 m!5770378))

(assert (=> bs!1154359 m!5770378))

(assert (=> bs!1154359 m!5770380))

(declare-fun m!5770640 () Bool)

(assert (=> bs!1154359 m!5770640))

(assert (=> bs!1154359 m!5770540))

(assert (=> b!4790395 d!1532607))

(declare-fun d!1532611 () Bool)

(assert (=> d!1532611 (= (isDefined!10201 (getValueByKey!2338 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))) key!5896)) (not (isEmpty!29437 (getValueByKey!2338 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))) key!5896))))))

(declare-fun bs!1154360 () Bool)

(assert (= bs!1154360 d!1532611))

(assert (=> bs!1154360 m!5770378))

(declare-fun m!5770642 () Bool)

(assert (=> bs!1154360 m!5770642))

(assert (=> b!4790395 d!1532611))

(declare-fun b!4790627 () Bool)

(declare-fun e!2991156 () Option!13059)

(assert (=> b!4790627 (= e!2991156 None!13058)))

(declare-fun b!4790625 () Bool)

(declare-fun e!2991155 () Option!13059)

(assert (=> b!4790625 (= e!2991155 e!2991156)))

(declare-fun c!816547 () Bool)

(assert (=> b!4790625 (= c!816547 (and ((_ is Cons!54159) (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))) (not (= (_1!31670 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))))) key!5896))))))

(declare-fun b!4790624 () Bool)

(assert (=> b!4790624 (= e!2991155 (Some!13058 (_2!31670 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))))))))

(declare-fun b!4790626 () Bool)

(assert (=> b!4790626 (= e!2991156 (getValueByKey!2338 (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))) key!5896))))

(declare-fun d!1532613 () Bool)

(declare-fun c!816546 () Bool)

(assert (=> d!1532613 (= c!816546 (and ((_ is Cons!54159) (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))) (= (_1!31670 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))))) key!5896)))))

(assert (=> d!1532613 (= (getValueByKey!2338 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))) key!5896) e!2991155)))

(assert (= (and d!1532613 c!816546) b!4790624))

(assert (= (and d!1532613 (not c!816546)) b!4790625))

(assert (= (and b!4790625 c!816547) b!4790626))

(assert (= (and b!4790625 (not c!816547)) b!4790627))

(declare-fun m!5770644 () Bool)

(assert (=> b!4790626 m!5770644))

(assert (=> b!4790395 d!1532613))

(declare-fun d!1532615 () Bool)

(assert (=> d!1532615 (contains!17767 (getKeysList!1069 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))) key!5896)))

(declare-fun lt!1950037 () Unit!139767)

(declare-fun choose!34481 (List!54283 K!15729) Unit!139767)

(assert (=> d!1532615 (= lt!1950037 (choose!34481 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))) key!5896))))

(assert (=> d!1532615 (invariantList!1723 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))))))

(assert (=> d!1532615 (= (lemmaInListThenGetKeysListContains!1064 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))) key!5896) lt!1950037)))

(declare-fun bs!1154361 () Bool)

(assert (= bs!1154361 d!1532615))

(assert (=> bs!1154361 m!5770384))

(assert (=> bs!1154361 m!5770384))

(declare-fun m!5770646 () Bool)

(assert (=> bs!1154361 m!5770646))

(declare-fun m!5770648 () Bool)

(assert (=> bs!1154361 m!5770648))

(assert (=> bs!1154361 m!5770540))

(assert (=> b!4790395 d!1532615))

(declare-fun d!1532617 () Bool)

(declare-fun res!2035830 () Bool)

(declare-fun e!2991157 () Bool)

(assert (=> d!1532617 (=> res!2035830 e!2991157)))

(assert (=> d!1532617 (= res!2035830 (and ((_ is Cons!54159) (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))) (= (_1!31670 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))))) key!5896)))))

(assert (=> d!1532617 (= (containsKey!3922 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))) key!5896) e!2991157)))

(declare-fun b!4790628 () Bool)

(declare-fun e!2991158 () Bool)

(assert (=> b!4790628 (= e!2991157 e!2991158)))

(declare-fun res!2035831 () Bool)

(assert (=> b!4790628 (=> (not res!2035831) (not e!2991158))))

(assert (=> b!4790628 (= res!2035831 ((_ is Cons!54159) (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))))))

(declare-fun b!4790629 () Bool)

(assert (=> b!4790629 (= e!2991158 (containsKey!3922 (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))) key!5896))))

(assert (= (and d!1532617 (not res!2035830)) b!4790628))

(assert (= (and b!4790628 res!2035831) b!4790629))

(declare-fun m!5770650 () Bool)

(assert (=> b!4790629 m!5770650))

(assert (=> b!4790421 d!1532617))

(declare-fun d!1532619 () Bool)

(assert (=> d!1532619 (containsKey!3922 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))) key!5896)))

(declare-fun lt!1950040 () Unit!139767)

(declare-fun choose!34482 (List!54283 K!15729) Unit!139767)

(assert (=> d!1532619 (= lt!1950040 (choose!34482 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))) key!5896))))

(assert (=> d!1532619 (invariantList!1723 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))))))

(assert (=> d!1532619 (= (lemmaInGetKeysListThenContainsKey!1069 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))) key!5896) lt!1950040)))

(declare-fun bs!1154362 () Bool)

(assert (= bs!1154362 d!1532619))

(assert (=> bs!1154362 m!5770416))

(declare-fun m!5770652 () Bool)

(assert (=> bs!1154362 m!5770652))

(declare-fun m!5770654 () Bool)

(assert (=> bs!1154362 m!5770654))

(assert (=> b!4790421 d!1532619))

(declare-fun d!1532621 () Bool)

(assert (=> d!1532621 (= (get!18450 lt!1949868) (v!48329 lt!1949868))))

(assert (=> b!4790309 d!1532621))

(declare-fun d!1532623 () Bool)

(declare-fun lt!1950041 () Bool)

(assert (=> d!1532623 (= lt!1950041 (select (content!9696 (keys!19764 (extractMap!2423 (toList!6871 lt!1949792)))) key!5896))))

(declare-fun e!2991160 () Bool)

(assert (=> d!1532623 (= lt!1950041 e!2991160)))

(declare-fun res!2035833 () Bool)

(assert (=> d!1532623 (=> (not res!2035833) (not e!2991160))))

(assert (=> d!1532623 (= res!2035833 ((_ is Cons!54162) (keys!19764 (extractMap!2423 (toList!6871 lt!1949792)))))))

(assert (=> d!1532623 (= (contains!17767 (keys!19764 (extractMap!2423 (toList!6871 lt!1949792))) key!5896) lt!1950041)))

(declare-fun b!4790630 () Bool)

(declare-fun e!2991159 () Bool)

(assert (=> b!4790630 (= e!2991160 e!2991159)))

(declare-fun res!2035832 () Bool)

(assert (=> b!4790630 (=> res!2035832 e!2991159)))

(assert (=> b!4790630 (= res!2035832 (= (h!60586 (keys!19764 (extractMap!2423 (toList!6871 lt!1949792)))) key!5896))))

(declare-fun b!4790631 () Bool)

(assert (=> b!4790631 (= e!2991159 (contains!17767 (t!361736 (keys!19764 (extractMap!2423 (toList!6871 lt!1949792)))) key!5896))))

(assert (= (and d!1532623 res!2035833) b!4790630))

(assert (= (and b!4790630 (not res!2035832)) b!4790631))

(assert (=> d!1532623 m!5770370))

(declare-fun m!5770656 () Bool)

(assert (=> d!1532623 m!5770656))

(declare-fun m!5770658 () Bool)

(assert (=> d!1532623 m!5770658))

(declare-fun m!5770660 () Bool)

(assert (=> b!4790631 m!5770660))

(assert (=> b!4790392 d!1532623))

(assert (=> b!4790392 d!1532581))

(declare-fun d!1532625 () Bool)

(declare-fun lt!1950042 () Bool)

(assert (=> d!1532625 (= lt!1950042 (select (content!9696 e!2991026) key!5896))))

(declare-fun e!2991162 () Bool)

(assert (=> d!1532625 (= lt!1950042 e!2991162)))

(declare-fun res!2035835 () Bool)

(assert (=> d!1532625 (=> (not res!2035835) (not e!2991162))))

(assert (=> d!1532625 (= res!2035835 ((_ is Cons!54162) e!2991026))))

(assert (=> d!1532625 (= (contains!17767 e!2991026 key!5896) lt!1950042)))

(declare-fun b!4790632 () Bool)

(declare-fun e!2991161 () Bool)

(assert (=> b!4790632 (= e!2991162 e!2991161)))

(declare-fun res!2035834 () Bool)

(assert (=> b!4790632 (=> res!2035834 e!2991161)))

(assert (=> b!4790632 (= res!2035834 (= (h!60586 e!2991026) key!5896))))

(declare-fun b!4790633 () Bool)

(assert (=> b!4790633 (= e!2991161 (contains!17767 (t!361736 e!2991026) key!5896))))

(assert (= (and d!1532625 res!2035835) b!4790632))

(assert (= (and b!4790632 (not res!2035834)) b!4790633))

(declare-fun m!5770662 () Bool)

(assert (=> d!1532625 m!5770662))

(declare-fun m!5770664 () Bool)

(assert (=> d!1532625 m!5770664))

(declare-fun m!5770666 () Bool)

(assert (=> b!4790633 m!5770666))

(assert (=> bm!334971 d!1532625))

(declare-fun d!1532627 () Bool)

(declare-fun res!2035836 () Bool)

(declare-fun e!2991163 () Bool)

(assert (=> d!1532627 (=> res!2035836 e!2991163)))

(assert (=> d!1532627 (= res!2035836 (and ((_ is Cons!54159) (apply!12957 lm!2473 lt!1949789)) (= (_1!31670 (h!60583 (apply!12957 lm!2473 lt!1949789))) key!5896)))))

(assert (=> d!1532627 (= (containsKey!3918 (apply!12957 lm!2473 lt!1949789) key!5896) e!2991163)))

(declare-fun b!4790634 () Bool)

(declare-fun e!2991164 () Bool)

(assert (=> b!4790634 (= e!2991163 e!2991164)))

(declare-fun res!2035837 () Bool)

(assert (=> b!4790634 (=> (not res!2035837) (not e!2991164))))

(assert (=> b!4790634 (= res!2035837 ((_ is Cons!54159) (apply!12957 lm!2473 lt!1949789)))))

(declare-fun b!4790635 () Bool)

(assert (=> b!4790635 (= e!2991164 (containsKey!3918 (t!361733 (apply!12957 lm!2473 lt!1949789)) key!5896))))

(assert (= (and d!1532627 (not res!2035836)) b!4790634))

(assert (= (and b!4790634 res!2035837) b!4790635))

(declare-fun m!5770668 () Bool)

(assert (=> b!4790635 m!5770668))

(assert (=> b!4790311 d!1532627))

(declare-fun d!1532629 () Bool)

(declare-fun res!2035838 () Bool)

(declare-fun e!2991165 () Bool)

(assert (=> d!1532629 (=> res!2035838 e!2991165)))

(assert (=> d!1532629 (= res!2035838 ((_ is Nil!54160) (toList!6871 lm!2473)))))

(assert (=> d!1532629 (= (forall!12217 (toList!6871 lm!2473) lambda!230157) e!2991165)))

(declare-fun b!4790636 () Bool)

(declare-fun e!2991166 () Bool)

(assert (=> b!4790636 (= e!2991165 e!2991166)))

(declare-fun res!2035839 () Bool)

(assert (=> b!4790636 (=> (not res!2035839) (not e!2991166))))

(assert (=> b!4790636 (= res!2035839 (dynLambda!22049 lambda!230157 (h!60584 (toList!6871 lm!2473))))))

(declare-fun b!4790637 () Bool)

(assert (=> b!4790637 (= e!2991166 (forall!12217 (t!361734 (toList!6871 lm!2473)) lambda!230157))))

(assert (= (and d!1532629 (not res!2035838)) b!4790636))

(assert (= (and b!4790636 res!2035839) b!4790637))

(declare-fun b_lambda!186499 () Bool)

(assert (=> (not b_lambda!186499) (not b!4790636)))

(declare-fun m!5770670 () Bool)

(assert (=> b!4790636 m!5770670))

(declare-fun m!5770672 () Bool)

(assert (=> b!4790637 m!5770672))

(assert (=> d!1532513 d!1532629))

(declare-fun d!1532631 () Bool)

(assert (=> d!1532631 (= (get!18452 (getValueByKey!2337 (toList!6871 lm!2473) lt!1949789)) (v!48332 (getValueByKey!2337 (toList!6871 lm!2473) lt!1949789)))))

(assert (=> d!1532475 d!1532631))

(assert (=> d!1532475 d!1532567))

(assert (=> d!1532517 d!1532617))

(assert (=> b!4790279 d!1532433))

(declare-fun d!1532633 () Bool)

(declare-fun res!2035840 () Bool)

(declare-fun e!2991167 () Bool)

(assert (=> d!1532633 (=> res!2035840 e!2991167)))

(assert (=> d!1532633 (= res!2035840 (and ((_ is Cons!54160) (toList!6871 lt!1949792)) (= (_1!31671 (h!60584 (toList!6871 lt!1949792))) lt!1949789)))))

(assert (=> d!1532633 (= (containsKey!3921 (toList!6871 lt!1949792) lt!1949789) e!2991167)))

(declare-fun b!4790638 () Bool)

(declare-fun e!2991168 () Bool)

(assert (=> b!4790638 (= e!2991167 e!2991168)))

(declare-fun res!2035841 () Bool)

(assert (=> b!4790638 (=> (not res!2035841) (not e!2991168))))

(assert (=> b!4790638 (= res!2035841 (and (or (not ((_ is Cons!54160) (toList!6871 lt!1949792))) (bvsle (_1!31671 (h!60584 (toList!6871 lt!1949792))) lt!1949789)) ((_ is Cons!54160) (toList!6871 lt!1949792)) (bvslt (_1!31671 (h!60584 (toList!6871 lt!1949792))) lt!1949789)))))

(declare-fun b!4790639 () Bool)

(assert (=> b!4790639 (= e!2991168 (containsKey!3921 (t!361734 (toList!6871 lt!1949792)) lt!1949789))))

(assert (= (and d!1532633 (not res!2035840)) b!4790638))

(assert (= (and b!4790638 res!2035841) b!4790639))

(declare-fun m!5770674 () Bool)

(assert (=> b!4790639 m!5770674))

(assert (=> d!1532509 d!1532633))

(declare-fun d!1532635 () Bool)

(declare-fun res!2035842 () Bool)

(declare-fun e!2991169 () Bool)

(assert (=> d!1532635 (=> res!2035842 e!2991169)))

(assert (=> d!1532635 (= res!2035842 ((_ is Nil!54160) (t!361734 (toList!6871 lm!2473))))))

(assert (=> d!1532635 (= (forall!12217 (t!361734 (toList!6871 lm!2473)) lambda!230123) e!2991169)))

(declare-fun b!4790640 () Bool)

(declare-fun e!2991170 () Bool)

(assert (=> b!4790640 (= e!2991169 e!2991170)))

(declare-fun res!2035843 () Bool)

(assert (=> b!4790640 (=> (not res!2035843) (not e!2991170))))

(assert (=> b!4790640 (= res!2035843 (dynLambda!22049 lambda!230123 (h!60584 (t!361734 (toList!6871 lm!2473)))))))

(declare-fun b!4790641 () Bool)

(assert (=> b!4790641 (= e!2991170 (forall!12217 (t!361734 (t!361734 (toList!6871 lm!2473))) lambda!230123))))

(assert (= (and d!1532635 (not res!2035842)) b!4790640))

(assert (= (and b!4790640 res!2035843) b!4790641))

(declare-fun b_lambda!186501 () Bool)

(assert (=> (not b_lambda!186501) (not b!4790640)))

(declare-fun m!5770676 () Bool)

(assert (=> b!4790640 m!5770676))

(declare-fun m!5770678 () Bool)

(assert (=> b!4790641 m!5770678))

(assert (=> b!4790204 d!1532635))

(assert (=> d!1532503 d!1532481))

(assert (=> d!1532503 d!1532511))

(declare-fun d!1532637 () Bool)

(assert (=> d!1532637 (contains!17763 (extractMap!2423 (toList!6871 lt!1949792)) key!5896)))

(assert (=> d!1532637 true))

(declare-fun _$34!939 () Unit!139767)

(assert (=> d!1532637 (= (choose!34474 lt!1949792 key!5896 hashF!1559) _$34!939)))

(declare-fun bs!1154363 () Bool)

(assert (= bs!1154363 d!1532637))

(assert (=> bs!1154363 m!5770138))

(assert (=> bs!1154363 m!5770138))

(assert (=> bs!1154363 m!5770140))

(assert (=> d!1532503 d!1532637))

(declare-fun d!1532639 () Bool)

(declare-fun res!2035850 () Bool)

(declare-fun e!2991179 () Bool)

(assert (=> d!1532639 (=> res!2035850 e!2991179)))

(assert (=> d!1532639 (= res!2035850 ((_ is Nil!54160) (toList!6871 lt!1949792)))))

(assert (=> d!1532639 (= (forall!12217 (toList!6871 lt!1949792) lambda!230151) e!2991179)))

(declare-fun b!4790660 () Bool)

(declare-fun e!2991180 () Bool)

(assert (=> b!4790660 (= e!2991179 e!2991180)))

(declare-fun res!2035851 () Bool)

(assert (=> b!4790660 (=> (not res!2035851) (not e!2991180))))

(assert (=> b!4790660 (= res!2035851 (dynLambda!22049 lambda!230151 (h!60584 (toList!6871 lt!1949792))))))

(declare-fun b!4790661 () Bool)

(assert (=> b!4790661 (= e!2991180 (forall!12217 (t!361734 (toList!6871 lt!1949792)) lambda!230151))))

(assert (= (and d!1532639 (not res!2035850)) b!4790660))

(assert (= (and b!4790660 res!2035851) b!4790661))

(declare-fun b_lambda!186503 () Bool)

(assert (=> (not b_lambda!186503) (not b!4790660)))

(declare-fun m!5770680 () Bool)

(assert (=> b!4790660 m!5770680))

(declare-fun m!5770682 () Bool)

(assert (=> b!4790661 m!5770682))

(assert (=> d!1532503 d!1532639))

(declare-fun d!1532641 () Bool)

(declare-fun e!2991181 () Bool)

(assert (=> d!1532641 e!2991181))

(declare-fun res!2035852 () Bool)

(assert (=> d!1532641 (=> res!2035852 e!2991181)))

(declare-fun lt!1950057 () Bool)

(assert (=> d!1532641 (= res!2035852 (not lt!1950057))))

(declare-fun lt!1950058 () Bool)

(assert (=> d!1532641 (= lt!1950057 lt!1950058)))

(declare-fun lt!1950059 () Unit!139767)

(declare-fun e!2991182 () Unit!139767)

(assert (=> d!1532641 (= lt!1950059 e!2991182)))

(declare-fun c!816554 () Bool)

(assert (=> d!1532641 (= c!816554 lt!1950058)))

(assert (=> d!1532641 (= lt!1950058 (containsKey!3921 (toList!6871 lm!2473) (hash!4924 hashF!1559 key!5896)))))

(assert (=> d!1532641 (= (contains!17762 lm!2473 (hash!4924 hashF!1559 key!5896)) lt!1950057)))

(declare-fun b!4790662 () Bool)

(declare-fun lt!1950060 () Unit!139767)

(assert (=> b!4790662 (= e!2991182 lt!1950060)))

(assert (=> b!4790662 (= lt!1950060 (lemmaContainsKeyImpliesGetValueByKeyDefined!2129 (toList!6871 lm!2473) (hash!4924 hashF!1559 key!5896)))))

(assert (=> b!4790662 (isDefined!10200 (getValueByKey!2337 (toList!6871 lm!2473) (hash!4924 hashF!1559 key!5896)))))

(declare-fun b!4790663 () Bool)

(declare-fun Unit!139801 () Unit!139767)

(assert (=> b!4790663 (= e!2991182 Unit!139801)))

(declare-fun b!4790664 () Bool)

(assert (=> b!4790664 (= e!2991181 (isDefined!10200 (getValueByKey!2337 (toList!6871 lm!2473) (hash!4924 hashF!1559 key!5896))))))

(assert (= (and d!1532641 c!816554) b!4790662))

(assert (= (and d!1532641 (not c!816554)) b!4790663))

(assert (= (and d!1532641 (not res!2035852)) b!4790664))

(assert (=> d!1532641 m!5770156))

(declare-fun m!5770684 () Bool)

(assert (=> d!1532641 m!5770684))

(assert (=> b!4790662 m!5770156))

(declare-fun m!5770686 () Bool)

(assert (=> b!4790662 m!5770686))

(assert (=> b!4790662 m!5770156))

(declare-fun m!5770688 () Bool)

(assert (=> b!4790662 m!5770688))

(assert (=> b!4790662 m!5770688))

(declare-fun m!5770690 () Bool)

(assert (=> b!4790662 m!5770690))

(assert (=> b!4790664 m!5770156))

(assert (=> b!4790664 m!5770688))

(assert (=> b!4790664 m!5770688))

(assert (=> b!4790664 m!5770690))

(assert (=> d!1532445 d!1532641))

(assert (=> d!1532445 d!1532453))

(declare-fun d!1532643 () Bool)

(declare-fun e!2991189 () Bool)

(assert (=> d!1532643 e!2991189))

(declare-fun res!2035858 () Bool)

(assert (=> d!1532643 (=> (not res!2035858) (not e!2991189))))

(assert (=> d!1532643 (= res!2035858 (contains!17762 lm!2473 (hash!4924 hashF!1559 key!5896)))))

(assert (=> d!1532643 true))

(declare-fun _$5!199 () Unit!139767)

(assert (=> d!1532643 (= (choose!34472 lm!2473 key!5896 hashF!1559) _$5!199)))

(declare-fun b!4790678 () Bool)

(assert (=> b!4790678 (= e!2991189 (isDefined!10197 (getPair!868 (apply!12957 lm!2473 (hash!4924 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1532643 res!2035858) b!4790678))

(assert (=> d!1532643 m!5770156))

(assert (=> d!1532643 m!5770156))

(assert (=> d!1532643 m!5770212))

(assert (=> b!4790678 m!5770156))

(assert (=> b!4790678 m!5770156))

(assert (=> b!4790678 m!5770218))

(assert (=> b!4790678 m!5770218))

(assert (=> b!4790678 m!5770220))

(assert (=> b!4790678 m!5770220))

(assert (=> b!4790678 m!5770222))

(assert (=> d!1532445 d!1532643))

(declare-fun d!1532645 () Bool)

(declare-fun res!2035859 () Bool)

(declare-fun e!2991190 () Bool)

(assert (=> d!1532645 (=> res!2035859 e!2991190)))

(assert (=> d!1532645 (= res!2035859 ((_ is Nil!54160) (toList!6871 lm!2473)))))

(assert (=> d!1532645 (= (forall!12217 (toList!6871 lm!2473) lambda!230132) e!2991190)))

(declare-fun b!4790679 () Bool)

(declare-fun e!2991191 () Bool)

(assert (=> b!4790679 (= e!2991190 e!2991191)))

(declare-fun res!2035860 () Bool)

(assert (=> b!4790679 (=> (not res!2035860) (not e!2991191))))

(assert (=> b!4790679 (= res!2035860 (dynLambda!22049 lambda!230132 (h!60584 (toList!6871 lm!2473))))))

(declare-fun b!4790680 () Bool)

(assert (=> b!4790680 (= e!2991191 (forall!12217 (t!361734 (toList!6871 lm!2473)) lambda!230132))))

(assert (= (and d!1532645 (not res!2035859)) b!4790679))

(assert (= (and b!4790679 res!2035860) b!4790680))

(declare-fun b_lambda!186505 () Bool)

(assert (=> (not b_lambda!186505) (not b!4790679)))

(declare-fun m!5770720 () Bool)

(assert (=> b!4790679 m!5770720))

(declare-fun m!5770722 () Bool)

(assert (=> b!4790680 m!5770722))

(assert (=> d!1532445 d!1532645))

(assert (=> d!1532443 d!1532439))

(declare-fun d!1532649 () Bool)

(assert (=> d!1532649 (containsKeyBiggerList!546 (toList!6871 lm!2473) key!5896)))

(assert (=> d!1532649 true))

(declare-fun _$33!817 () Unit!139767)

(assert (=> d!1532649 (= (choose!34471 lm!2473 key!5896 hashF!1559) _$33!817)))

(declare-fun bs!1154371 () Bool)

(assert (= bs!1154371 d!1532649))

(assert (=> bs!1154371 m!5770154))

(assert (=> d!1532443 d!1532649))

(declare-fun d!1532651 () Bool)

(declare-fun res!2035861 () Bool)

(declare-fun e!2991192 () Bool)

(assert (=> d!1532651 (=> res!2035861 e!2991192)))

(assert (=> d!1532651 (= res!2035861 ((_ is Nil!54160) (toList!6871 lm!2473)))))

(assert (=> d!1532651 (= (forall!12217 (toList!6871 lm!2473) lambda!230129) e!2991192)))

(declare-fun b!4790681 () Bool)

(declare-fun e!2991193 () Bool)

(assert (=> b!4790681 (= e!2991192 e!2991193)))

(declare-fun res!2035862 () Bool)

(assert (=> b!4790681 (=> (not res!2035862) (not e!2991193))))

(assert (=> b!4790681 (= res!2035862 (dynLambda!22049 lambda!230129 (h!60584 (toList!6871 lm!2473))))))

(declare-fun b!4790682 () Bool)

(assert (=> b!4790682 (= e!2991193 (forall!12217 (t!361734 (toList!6871 lm!2473)) lambda!230129))))

(assert (= (and d!1532651 (not res!2035861)) b!4790681))

(assert (= (and b!4790681 res!2035862) b!4790682))

(declare-fun b_lambda!186507 () Bool)

(assert (=> (not b_lambda!186507) (not b!4790681)))

(declare-fun m!5770724 () Bool)

(assert (=> b!4790681 m!5770724))

(declare-fun m!5770726 () Bool)

(assert (=> b!4790682 m!5770726))

(assert (=> d!1532443 d!1532651))

(declare-fun d!1532653 () Bool)

(assert (=> d!1532653 (= (get!18450 (getPair!868 (_2!31671 (h!60584 (toList!6871 lm!2473))) key!5896)) (v!48329 (getPair!868 (_2!31671 (h!60584 (toList!6871 lm!2473))) key!5896)))))

(assert (=> b!4790277 d!1532653))

(declare-fun b!4790683 () Bool)

(declare-fun e!2991194 () Option!13055)

(assert (=> b!4790683 (= e!2991194 (Some!13054 (h!60583 (_2!31671 (h!60584 (toList!6871 lm!2473))))))))

(declare-fun b!4790684 () Bool)

(declare-fun res!2035865 () Bool)

(declare-fun e!2991195 () Bool)

(assert (=> b!4790684 (=> (not res!2035865) (not e!2991195))))

(declare-fun lt!1950070 () Option!13055)

(assert (=> b!4790684 (= res!2035865 (= (_1!31670 (get!18450 lt!1950070)) key!5896))))

(declare-fun b!4790685 () Bool)

(declare-fun e!2991198 () Option!13055)

(assert (=> b!4790685 (= e!2991198 (getPair!868 (t!361733 (_2!31671 (h!60584 (toList!6871 lm!2473)))) key!5896))))

(declare-fun d!1532655 () Bool)

(declare-fun e!2991196 () Bool)

(assert (=> d!1532655 e!2991196))

(declare-fun res!2035866 () Bool)

(assert (=> d!1532655 (=> res!2035866 e!2991196)))

(declare-fun e!2991197 () Bool)

(assert (=> d!1532655 (= res!2035866 e!2991197)))

(declare-fun res!2035863 () Bool)

(assert (=> d!1532655 (=> (not res!2035863) (not e!2991197))))

(assert (=> d!1532655 (= res!2035863 (isEmpty!29432 lt!1950070))))

(assert (=> d!1532655 (= lt!1950070 e!2991194)))

(declare-fun c!816558 () Bool)

(assert (=> d!1532655 (= c!816558 (and ((_ is Cons!54159) (_2!31671 (h!60584 (toList!6871 lm!2473)))) (= (_1!31670 (h!60583 (_2!31671 (h!60584 (toList!6871 lm!2473))))) key!5896)))))

(assert (=> d!1532655 (noDuplicateKeys!2325 (_2!31671 (h!60584 (toList!6871 lm!2473))))))

(assert (=> d!1532655 (= (getPair!868 (_2!31671 (h!60584 (toList!6871 lm!2473))) key!5896) lt!1950070)))

(declare-fun b!4790686 () Bool)

(assert (=> b!4790686 (= e!2991197 (not (containsKey!3918 (_2!31671 (h!60584 (toList!6871 lm!2473))) key!5896)))))

(declare-fun b!4790687 () Bool)

(assert (=> b!4790687 (= e!2991194 e!2991198)))

(declare-fun c!816559 () Bool)

(assert (=> b!4790687 (= c!816559 ((_ is Cons!54159) (_2!31671 (h!60584 (toList!6871 lm!2473)))))))

(declare-fun b!4790688 () Bool)

(assert (=> b!4790688 (= e!2991198 None!13054)))

(declare-fun b!4790689 () Bool)

(assert (=> b!4790689 (= e!2991195 (contains!17766 (_2!31671 (h!60584 (toList!6871 lm!2473))) (get!18450 lt!1950070)))))

(declare-fun b!4790690 () Bool)

(assert (=> b!4790690 (= e!2991196 e!2991195)))

(declare-fun res!2035864 () Bool)

(assert (=> b!4790690 (=> (not res!2035864) (not e!2991195))))

(assert (=> b!4790690 (= res!2035864 (isDefined!10197 lt!1950070))))

(assert (= (and d!1532655 c!816558) b!4790683))

(assert (= (and d!1532655 (not c!816558)) b!4790687))

(assert (= (and b!4790687 c!816559) b!4790685))

(assert (= (and b!4790687 (not c!816559)) b!4790688))

(assert (= (and d!1532655 res!2035863) b!4790686))

(assert (= (and d!1532655 (not res!2035866)) b!4790690))

(assert (= (and b!4790690 res!2035864) b!4790684))

(assert (= (and b!4790684 res!2035865) b!4790689))

(assert (=> b!4790686 m!5770146))

(declare-fun m!5770732 () Bool)

(assert (=> d!1532655 m!5770732))

(assert (=> d!1532655 m!5770444))

(declare-fun m!5770734 () Bool)

(assert (=> b!4790689 m!5770734))

(assert (=> b!4790689 m!5770734))

(declare-fun m!5770736 () Bool)

(assert (=> b!4790689 m!5770736))

(assert (=> b!4790684 m!5770734))

(declare-fun m!5770738 () Bool)

(assert (=> b!4790685 m!5770738))

(declare-fun m!5770740 () Bool)

(assert (=> b!4790690 m!5770740))

(assert (=> b!4790277 d!1532655))

(declare-fun b!4790809 () Bool)

(assert (=> b!4790809 true))

(declare-fun bs!1154443 () Bool)

(declare-fun b!4790806 () Bool)

(assert (= bs!1154443 (and b!4790806 b!4790809)))

(declare-fun lambda!230273 () Int)

(declare-fun lambda!230272 () Int)

(assert (=> bs!1154443 (= lambda!230273 lambda!230272)))

(assert (=> b!4790806 true))

(declare-fun lambda!230274 () Int)

(declare-fun lt!1950175 () ListMap!6343)

(assert (=> bs!1154443 (= (= lt!1950175 (extractMap!2423 (t!361734 (toList!6871 lm!2473)))) (= lambda!230274 lambda!230272))))

(assert (=> b!4790806 (= (= lt!1950175 (extractMap!2423 (t!361734 (toList!6871 lm!2473)))) (= lambda!230274 lambda!230273))))

(assert (=> b!4790806 true))

(declare-fun bs!1154444 () Bool)

(declare-fun d!1532661 () Bool)

(assert (= bs!1154444 (and d!1532661 b!4790809)))

(declare-fun lt!1950169 () ListMap!6343)

(declare-fun lambda!230275 () Int)

(assert (=> bs!1154444 (= (= lt!1950169 (extractMap!2423 (t!361734 (toList!6871 lm!2473)))) (= lambda!230275 lambda!230272))))

(declare-fun bs!1154445 () Bool)

(assert (= bs!1154445 (and d!1532661 b!4790806)))

(assert (=> bs!1154445 (= (= lt!1950169 (extractMap!2423 (t!361734 (toList!6871 lm!2473)))) (= lambda!230275 lambda!230273))))

(assert (=> bs!1154445 (= (= lt!1950169 lt!1950175) (= lambda!230275 lambda!230274))))

(assert (=> d!1532661 true))

(declare-fun bm!334990 () Bool)

(declare-fun call!334997 () Unit!139767)

(declare-fun lemmaContainsAllItsOwnKeys!938 (ListMap!6343) Unit!139767)

(assert (=> bm!334990 (= call!334997 (lemmaContainsAllItsOwnKeys!938 (extractMap!2423 (t!361734 (toList!6871 lm!2473)))))))

(declare-fun b!4790805 () Bool)

(declare-fun res!2035940 () Bool)

(declare-fun e!2991284 () Bool)

(assert (=> b!4790805 (=> (not res!2035940) (not e!2991284))))

(declare-fun forall!12221 (List!54283 Int) Bool)

(assert (=> b!4790805 (= res!2035940 (forall!12221 (toList!6872 (extractMap!2423 (t!361734 (toList!6871 lm!2473)))) lambda!230275))))

(declare-fun call!334996 () Bool)

(declare-fun bm!334991 () Bool)

(declare-fun lt!1950182 () ListMap!6343)

(declare-fun c!816578 () Bool)

(assert (=> bm!334991 (= call!334996 (forall!12221 (ite c!816578 (toList!6872 (extractMap!2423 (t!361734 (toList!6871 lm!2473)))) (toList!6872 lt!1950182)) (ite c!816578 lambda!230272 lambda!230274)))))

(declare-fun call!334995 () Bool)

(declare-fun bm!334992 () Bool)

(assert (=> bm!334992 (= call!334995 (forall!12221 (toList!6872 (extractMap!2423 (t!361734 (toList!6871 lm!2473)))) (ite c!816578 lambda!230272 lambda!230274)))))

(assert (=> d!1532661 e!2991284))

(declare-fun res!2035941 () Bool)

(assert (=> d!1532661 (=> (not res!2035941) (not e!2991284))))

(assert (=> d!1532661 (= res!2035941 (forall!12221 (_2!31671 (h!60584 (toList!6871 lm!2473))) lambda!230275))))

(declare-fun e!2991285 () ListMap!6343)

(assert (=> d!1532661 (= lt!1950169 e!2991285)))

(assert (=> d!1532661 (= c!816578 ((_ is Nil!54159) (_2!31671 (h!60584 (toList!6871 lm!2473)))))))

(assert (=> d!1532661 (noDuplicateKeys!2325 (_2!31671 (h!60584 (toList!6871 lm!2473))))))

(assert (=> d!1532661 (= (addToMapMapFromBucket!1694 (_2!31671 (h!60584 (toList!6871 lm!2473))) (extractMap!2423 (t!361734 (toList!6871 lm!2473)))) lt!1950169)))

(assert (=> b!4790806 (= e!2991285 lt!1950175)))

(declare-fun +!2482 (ListMap!6343 tuple2!56752) ListMap!6343)

(assert (=> b!4790806 (= lt!1950182 (+!2482 (extractMap!2423 (t!361734 (toList!6871 lm!2473))) (h!60583 (_2!31671 (h!60584 (toList!6871 lm!2473))))))))

(assert (=> b!4790806 (= lt!1950175 (addToMapMapFromBucket!1694 (t!361733 (_2!31671 (h!60584 (toList!6871 lm!2473)))) (+!2482 (extractMap!2423 (t!361734 (toList!6871 lm!2473))) (h!60583 (_2!31671 (h!60584 (toList!6871 lm!2473)))))))))

(declare-fun lt!1950181 () Unit!139767)

(assert (=> b!4790806 (= lt!1950181 call!334997)))

(assert (=> b!4790806 (forall!12221 (toList!6872 (extractMap!2423 (t!361734 (toList!6871 lm!2473)))) lambda!230273)))

(declare-fun lt!1950179 () Unit!139767)

(assert (=> b!4790806 (= lt!1950179 lt!1950181)))

(assert (=> b!4790806 call!334996))

(declare-fun lt!1950176 () Unit!139767)

(declare-fun Unit!139806 () Unit!139767)

(assert (=> b!4790806 (= lt!1950176 Unit!139806)))

(assert (=> b!4790806 (forall!12221 (t!361733 (_2!31671 (h!60584 (toList!6871 lm!2473)))) lambda!230274)))

(declare-fun lt!1950172 () Unit!139767)

(declare-fun Unit!139807 () Unit!139767)

(assert (=> b!4790806 (= lt!1950172 Unit!139807)))

(declare-fun lt!1950183 () Unit!139767)

(declare-fun Unit!139808 () Unit!139767)

(assert (=> b!4790806 (= lt!1950183 Unit!139808)))

(declare-fun lt!1950188 () Unit!139767)

(declare-fun forallContained!4151 (List!54283 Int tuple2!56752) Unit!139767)

(assert (=> b!4790806 (= lt!1950188 (forallContained!4151 (toList!6872 lt!1950182) lambda!230274 (h!60583 (_2!31671 (h!60584 (toList!6871 lm!2473))))))))

(assert (=> b!4790806 (contains!17763 lt!1950182 (_1!31670 (h!60583 (_2!31671 (h!60584 (toList!6871 lm!2473))))))))

(declare-fun lt!1950178 () Unit!139767)

(declare-fun Unit!139809 () Unit!139767)

(assert (=> b!4790806 (= lt!1950178 Unit!139809)))

(assert (=> b!4790806 (contains!17763 lt!1950175 (_1!31670 (h!60583 (_2!31671 (h!60584 (toList!6871 lm!2473))))))))

(declare-fun lt!1950170 () Unit!139767)

(declare-fun Unit!139810 () Unit!139767)

(assert (=> b!4790806 (= lt!1950170 Unit!139810)))

(assert (=> b!4790806 (forall!12221 (_2!31671 (h!60584 (toList!6871 lm!2473))) lambda!230274)))

(declare-fun lt!1950184 () Unit!139767)

(declare-fun Unit!139811 () Unit!139767)

(assert (=> b!4790806 (= lt!1950184 Unit!139811)))

(assert (=> b!4790806 (forall!12221 (toList!6872 lt!1950182) lambda!230274)))

(declare-fun lt!1950177 () Unit!139767)

(declare-fun Unit!139812 () Unit!139767)

(assert (=> b!4790806 (= lt!1950177 Unit!139812)))

(declare-fun lt!1950185 () Unit!139767)

(declare-fun Unit!139813 () Unit!139767)

(assert (=> b!4790806 (= lt!1950185 Unit!139813)))

(declare-fun lt!1950174 () Unit!139767)

(declare-fun addForallContainsKeyThenBeforeAdding!937 (ListMap!6343 ListMap!6343 K!15729 V!15975) Unit!139767)

(assert (=> b!4790806 (= lt!1950174 (addForallContainsKeyThenBeforeAdding!937 (extractMap!2423 (t!361734 (toList!6871 lm!2473))) lt!1950175 (_1!31670 (h!60583 (_2!31671 (h!60584 (toList!6871 lm!2473))))) (_2!31670 (h!60583 (_2!31671 (h!60584 (toList!6871 lm!2473)))))))))

(assert (=> b!4790806 call!334995))

(declare-fun lt!1950187 () Unit!139767)

(assert (=> b!4790806 (= lt!1950187 lt!1950174)))

(assert (=> b!4790806 (forall!12221 (toList!6872 (extractMap!2423 (t!361734 (toList!6871 lm!2473)))) lambda!230274)))

(declare-fun lt!1950189 () Unit!139767)

(declare-fun Unit!139814 () Unit!139767)

(assert (=> b!4790806 (= lt!1950189 Unit!139814)))

(declare-fun res!2035939 () Bool)

(assert (=> b!4790806 (= res!2035939 (forall!12221 (_2!31671 (h!60584 (toList!6871 lm!2473))) lambda!230274))))

(declare-fun e!2991283 () Bool)

(assert (=> b!4790806 (=> (not res!2035939) (not e!2991283))))

(assert (=> b!4790806 e!2991283))

(declare-fun lt!1950180 () Unit!139767)

(declare-fun Unit!139815 () Unit!139767)

(assert (=> b!4790806 (= lt!1950180 Unit!139815)))

(declare-fun b!4790807 () Bool)

(assert (=> b!4790807 (= e!2991283 (forall!12221 (toList!6872 (extractMap!2423 (t!361734 (toList!6871 lm!2473)))) lambda!230274))))

(declare-fun b!4790808 () Bool)

(assert (=> b!4790808 (= e!2991284 (invariantList!1723 (toList!6872 lt!1950169)))))

(assert (=> b!4790809 (= e!2991285 (extractMap!2423 (t!361734 (toList!6871 lm!2473))))))

(declare-fun lt!1950173 () Unit!139767)

(assert (=> b!4790809 (= lt!1950173 call!334997)))

(assert (=> b!4790809 call!334995))

(declare-fun lt!1950171 () Unit!139767)

(assert (=> b!4790809 (= lt!1950171 lt!1950173)))

(assert (=> b!4790809 call!334996))

(declare-fun lt!1950186 () Unit!139767)

(declare-fun Unit!139816 () Unit!139767)

(assert (=> b!4790809 (= lt!1950186 Unit!139816)))

(assert (= (and d!1532661 c!816578) b!4790809))

(assert (= (and d!1532661 (not c!816578)) b!4790806))

(assert (= (and b!4790806 res!2035939) b!4790807))

(assert (= (or b!4790809 b!4790806) bm!334991))

(assert (= (or b!4790809 b!4790806) bm!334992))

(assert (= (or b!4790809 b!4790806) bm!334990))

(assert (= (and d!1532661 res!2035941) b!4790805))

(assert (= (and b!4790805 res!2035940) b!4790808))

(assert (=> b!4790806 m!5770440))

(declare-fun m!5770954 () Bool)

(assert (=> b!4790806 m!5770954))

(declare-fun m!5770956 () Bool)

(assert (=> b!4790806 m!5770956))

(declare-fun m!5770958 () Bool)

(assert (=> b!4790806 m!5770958))

(declare-fun m!5770960 () Bool)

(assert (=> b!4790806 m!5770960))

(assert (=> b!4790806 m!5770440))

(declare-fun m!5770962 () Bool)

(assert (=> b!4790806 m!5770962))

(declare-fun m!5770964 () Bool)

(assert (=> b!4790806 m!5770964))

(declare-fun m!5770966 () Bool)

(assert (=> b!4790806 m!5770966))

(declare-fun m!5770968 () Bool)

(assert (=> b!4790806 m!5770968))

(assert (=> b!4790806 m!5770962))

(declare-fun m!5770970 () Bool)

(assert (=> b!4790806 m!5770970))

(assert (=> b!4790806 m!5770966))

(declare-fun m!5770972 () Bool)

(assert (=> b!4790806 m!5770972))

(declare-fun m!5770974 () Bool)

(assert (=> b!4790806 m!5770974))

(declare-fun m!5770976 () Bool)

(assert (=> bm!334992 m!5770976))

(declare-fun m!5770978 () Bool)

(assert (=> b!4790805 m!5770978))

(assert (=> bm!334990 m!5770440))

(declare-fun m!5770980 () Bool)

(assert (=> bm!334990 m!5770980))

(declare-fun m!5770982 () Bool)

(assert (=> bm!334991 m!5770982))

(declare-fun m!5770984 () Bool)

(assert (=> b!4790808 m!5770984))

(declare-fun m!5770986 () Bool)

(assert (=> d!1532661 m!5770986))

(assert (=> d!1532661 m!5770444))

(assert (=> b!4790807 m!5770974))

(assert (=> b!4790426 d!1532661))

(declare-fun bs!1154446 () Bool)

(declare-fun d!1532763 () Bool)

(assert (= bs!1154446 (and d!1532763 d!1532511)))

(declare-fun lambda!230276 () Int)

(assert (=> bs!1154446 (= lambda!230276 lambda!230154)))

(declare-fun bs!1154447 () Bool)

(assert (= bs!1154447 (and d!1532763 d!1532513)))

(assert (=> bs!1154447 (not (= lambda!230276 lambda!230157))))

(declare-fun bs!1154448 () Bool)

(assert (= bs!1154448 (and d!1532763 d!1532445)))

(assert (=> bs!1154448 (= lambda!230276 lambda!230132)))

(declare-fun bs!1154449 () Bool)

(assert (= bs!1154449 (and d!1532763 d!1532515)))

(assert (=> bs!1154449 (= lambda!230276 lambda!230160)))

(declare-fun bs!1154450 () Bool)

(assert (= bs!1154450 (and d!1532763 d!1532443)))

(assert (=> bs!1154450 (= lambda!230276 lambda!230129)))

(declare-fun bs!1154451 () Bool)

(assert (= bs!1154451 (and d!1532763 start!493018)))

(assert (=> bs!1154451 (= lambda!230276 lambda!230123)))

(declare-fun bs!1154452 () Bool)

(assert (= bs!1154452 (and d!1532763 d!1532519)))

(assert (=> bs!1154452 (= lambda!230276 lambda!230161)))

(declare-fun bs!1154453 () Bool)

(assert (= bs!1154453 (and d!1532763 d!1532503)))

(assert (=> bs!1154453 (= lambda!230276 lambda!230151)))

(declare-fun lt!1950190 () ListMap!6343)

(assert (=> d!1532763 (invariantList!1723 (toList!6872 lt!1950190))))

(declare-fun e!2991286 () ListMap!6343)

(assert (=> d!1532763 (= lt!1950190 e!2991286)))

(declare-fun c!816579 () Bool)

(assert (=> d!1532763 (= c!816579 ((_ is Cons!54160) (t!361734 (toList!6871 lm!2473))))))

(assert (=> d!1532763 (forall!12217 (t!361734 (toList!6871 lm!2473)) lambda!230276)))

(assert (=> d!1532763 (= (extractMap!2423 (t!361734 (toList!6871 lm!2473))) lt!1950190)))

(declare-fun b!4790812 () Bool)

(assert (=> b!4790812 (= e!2991286 (addToMapMapFromBucket!1694 (_2!31671 (h!60584 (t!361734 (toList!6871 lm!2473)))) (extractMap!2423 (t!361734 (t!361734 (toList!6871 lm!2473))))))))

(declare-fun b!4790813 () Bool)

(assert (=> b!4790813 (= e!2991286 (ListMap!6344 Nil!54159))))

(assert (= (and d!1532763 c!816579) b!4790812))

(assert (= (and d!1532763 (not c!816579)) b!4790813))

(declare-fun m!5770988 () Bool)

(assert (=> d!1532763 m!5770988))

(declare-fun m!5770990 () Bool)

(assert (=> d!1532763 m!5770990))

(declare-fun m!5770992 () Bool)

(assert (=> b!4790812 m!5770992))

(assert (=> b!4790812 m!5770992))

(declare-fun m!5770994 () Bool)

(assert (=> b!4790812 m!5770994))

(assert (=> b!4790426 d!1532763))

(declare-fun d!1532765 () Bool)

(declare-fun res!2035942 () Bool)

(declare-fun e!2991287 () Bool)

(assert (=> d!1532765 (=> res!2035942 e!2991287)))

(declare-fun e!2991288 () Bool)

(assert (=> d!1532765 (= res!2035942 e!2991288)))

(declare-fun res!2035944 () Bool)

(assert (=> d!1532765 (=> (not res!2035944) (not e!2991288))))

(assert (=> d!1532765 (= res!2035944 ((_ is Cons!54160) (t!361734 (toList!6871 lm!2473))))))

(assert (=> d!1532765 (= (containsKeyBiggerList!546 (t!361734 (toList!6871 lm!2473)) key!5896) e!2991287)))

(declare-fun b!4790814 () Bool)

(assert (=> b!4790814 (= e!2991288 (containsKey!3918 (_2!31671 (h!60584 (t!361734 (toList!6871 lm!2473)))) key!5896))))

(declare-fun b!4790815 () Bool)

(declare-fun e!2991289 () Bool)

(assert (=> b!4790815 (= e!2991287 e!2991289)))

(declare-fun res!2035943 () Bool)

(assert (=> b!4790815 (=> (not res!2035943) (not e!2991289))))

(assert (=> b!4790815 (= res!2035943 ((_ is Cons!54160) (t!361734 (toList!6871 lm!2473))))))

(declare-fun b!4790816 () Bool)

(assert (=> b!4790816 (= e!2991289 (containsKeyBiggerList!546 (t!361734 (t!361734 (toList!6871 lm!2473))) key!5896))))

(assert (= (and d!1532765 res!2035944) b!4790814))

(assert (= (and d!1532765 (not res!2035942)) b!4790815))

(assert (= (and b!4790815 res!2035943) b!4790816))

(declare-fun m!5770996 () Bool)

(assert (=> b!4790814 m!5770996))

(declare-fun m!5770998 () Bool)

(assert (=> b!4790816 m!5770998))

(assert (=> b!4790219 d!1532765))

(declare-fun d!1532767 () Bool)

(assert (=> d!1532767 (= (isEmpty!29432 lt!1949868) (not ((_ is Some!13054) lt!1949868)))))

(assert (=> d!1532467 d!1532767))

(declare-fun d!1532769 () Bool)

(declare-fun res!2035949 () Bool)

(declare-fun e!2991294 () Bool)

(assert (=> d!1532769 (=> res!2035949 e!2991294)))

(assert (=> d!1532769 (= res!2035949 (not ((_ is Cons!54159) (apply!12957 lm!2473 lt!1949789))))))

(assert (=> d!1532769 (= (noDuplicateKeys!2325 (apply!12957 lm!2473 lt!1949789)) e!2991294)))

(declare-fun b!4790821 () Bool)

(declare-fun e!2991295 () Bool)

(assert (=> b!4790821 (= e!2991294 e!2991295)))

(declare-fun res!2035950 () Bool)

(assert (=> b!4790821 (=> (not res!2035950) (not e!2991295))))

(assert (=> b!4790821 (= res!2035950 (not (containsKey!3918 (t!361733 (apply!12957 lm!2473 lt!1949789)) (_1!31670 (h!60583 (apply!12957 lm!2473 lt!1949789))))))))

(declare-fun b!4790822 () Bool)

(assert (=> b!4790822 (= e!2991295 (noDuplicateKeys!2325 (t!361733 (apply!12957 lm!2473 lt!1949789))))))

(assert (= (and d!1532769 (not res!2035949)) b!4790821))

(assert (= (and b!4790821 res!2035950) b!4790822))

(declare-fun m!5771000 () Bool)

(assert (=> b!4790821 m!5771000))

(declare-fun m!5771002 () Bool)

(assert (=> b!4790822 m!5771002))

(assert (=> d!1532467 d!1532769))

(declare-fun d!1532771 () Bool)

(declare-fun res!2035951 () Bool)

(declare-fun e!2991296 () Bool)

(assert (=> d!1532771 (=> res!2035951 e!2991296)))

(assert (=> d!1532771 (= res!2035951 (not ((_ is Cons!54159) (_2!31671 (h!60584 (toList!6871 lm!2473))))))))

(assert (=> d!1532771 (= (noDuplicateKeys!2325 (_2!31671 (h!60584 (toList!6871 lm!2473)))) e!2991296)))

(declare-fun b!4790823 () Bool)

(declare-fun e!2991297 () Bool)

(assert (=> b!4790823 (= e!2991296 e!2991297)))

(declare-fun res!2035952 () Bool)

(assert (=> b!4790823 (=> (not res!2035952) (not e!2991297))))

(assert (=> b!4790823 (= res!2035952 (not (containsKey!3918 (t!361733 (_2!31671 (h!60584 (toList!6871 lm!2473)))) (_1!31670 (h!60583 (_2!31671 (h!60584 (toList!6871 lm!2473))))))))))

(declare-fun b!4790824 () Bool)

(assert (=> b!4790824 (= e!2991297 (noDuplicateKeys!2325 (t!361733 (_2!31671 (h!60584 (toList!6871 lm!2473))))))))

(assert (= (and d!1532771 (not res!2035951)) b!4790823))

(assert (= (and b!4790823 res!2035952) b!4790824))

(declare-fun m!5771004 () Bool)

(assert (=> b!4790823 m!5771004))

(declare-fun m!5771006 () Bool)

(assert (=> b!4790824 m!5771006))

(assert (=> bs!1154325 d!1532771))

(assert (=> b!4790217 d!1532433))

(declare-fun d!1532773 () Bool)

(assert (=> d!1532773 (= (isDefined!10197 (getPair!868 (apply!12957 lm!2473 (hash!4924 hashF!1559 key!5896)) key!5896)) (not (isEmpty!29432 (getPair!868 (apply!12957 lm!2473 (hash!4924 hashF!1559 key!5896)) key!5896))))))

(declare-fun bs!1154454 () Bool)

(assert (= bs!1154454 d!1532773))

(assert (=> bs!1154454 m!5770220))

(declare-fun m!5771008 () Bool)

(assert (=> bs!1154454 m!5771008))

(assert (=> b!4790249 d!1532773))

(declare-fun e!2991298 () Option!13055)

(declare-fun b!4790825 () Bool)

(assert (=> b!4790825 (= e!2991298 (Some!13054 (h!60583 (apply!12957 lm!2473 (hash!4924 hashF!1559 key!5896)))))))

(declare-fun b!4790826 () Bool)

(declare-fun res!2035955 () Bool)

(declare-fun e!2991299 () Bool)

(assert (=> b!4790826 (=> (not res!2035955) (not e!2991299))))

(declare-fun lt!1950191 () Option!13055)

(assert (=> b!4790826 (= res!2035955 (= (_1!31670 (get!18450 lt!1950191)) key!5896))))

(declare-fun e!2991302 () Option!13055)

(declare-fun b!4790827 () Bool)

(assert (=> b!4790827 (= e!2991302 (getPair!868 (t!361733 (apply!12957 lm!2473 (hash!4924 hashF!1559 key!5896))) key!5896))))

(declare-fun d!1532775 () Bool)

(declare-fun e!2991300 () Bool)

(assert (=> d!1532775 e!2991300))

(declare-fun res!2035956 () Bool)

(assert (=> d!1532775 (=> res!2035956 e!2991300)))

(declare-fun e!2991301 () Bool)

(assert (=> d!1532775 (= res!2035956 e!2991301)))

(declare-fun res!2035953 () Bool)

(assert (=> d!1532775 (=> (not res!2035953) (not e!2991301))))

(assert (=> d!1532775 (= res!2035953 (isEmpty!29432 lt!1950191))))

(assert (=> d!1532775 (= lt!1950191 e!2991298)))

(declare-fun c!816580 () Bool)

(assert (=> d!1532775 (= c!816580 (and ((_ is Cons!54159) (apply!12957 lm!2473 (hash!4924 hashF!1559 key!5896))) (= (_1!31670 (h!60583 (apply!12957 lm!2473 (hash!4924 hashF!1559 key!5896)))) key!5896)))))

(assert (=> d!1532775 (noDuplicateKeys!2325 (apply!12957 lm!2473 (hash!4924 hashF!1559 key!5896)))))

(assert (=> d!1532775 (= (getPair!868 (apply!12957 lm!2473 (hash!4924 hashF!1559 key!5896)) key!5896) lt!1950191)))

(declare-fun b!4790828 () Bool)

(assert (=> b!4790828 (= e!2991301 (not (containsKey!3918 (apply!12957 lm!2473 (hash!4924 hashF!1559 key!5896)) key!5896)))))

(declare-fun b!4790829 () Bool)

(assert (=> b!4790829 (= e!2991298 e!2991302)))

(declare-fun c!816581 () Bool)

(assert (=> b!4790829 (= c!816581 ((_ is Cons!54159) (apply!12957 lm!2473 (hash!4924 hashF!1559 key!5896))))))

(declare-fun b!4790830 () Bool)

(assert (=> b!4790830 (= e!2991302 None!13054)))

(declare-fun b!4790831 () Bool)

(assert (=> b!4790831 (= e!2991299 (contains!17766 (apply!12957 lm!2473 (hash!4924 hashF!1559 key!5896)) (get!18450 lt!1950191)))))

(declare-fun b!4790832 () Bool)

(assert (=> b!4790832 (= e!2991300 e!2991299)))

(declare-fun res!2035954 () Bool)

(assert (=> b!4790832 (=> (not res!2035954) (not e!2991299))))

(assert (=> b!4790832 (= res!2035954 (isDefined!10197 lt!1950191))))

(assert (= (and d!1532775 c!816580) b!4790825))

(assert (= (and d!1532775 (not c!816580)) b!4790829))

(assert (= (and b!4790829 c!816581) b!4790827))

(assert (= (and b!4790829 (not c!816581)) b!4790830))

(assert (= (and d!1532775 res!2035953) b!4790828))

(assert (= (and d!1532775 (not res!2035956)) b!4790832))

(assert (= (and b!4790832 res!2035954) b!4790826))

(assert (= (and b!4790826 res!2035955) b!4790831))

(assert (=> b!4790828 m!5770218))

(declare-fun m!5771010 () Bool)

(assert (=> b!4790828 m!5771010))

(declare-fun m!5771012 () Bool)

(assert (=> d!1532775 m!5771012))

(assert (=> d!1532775 m!5770218))

(declare-fun m!5771014 () Bool)

(assert (=> d!1532775 m!5771014))

(declare-fun m!5771016 () Bool)

(assert (=> b!4790831 m!5771016))

(assert (=> b!4790831 m!5770218))

(assert (=> b!4790831 m!5771016))

(declare-fun m!5771018 () Bool)

(assert (=> b!4790831 m!5771018))

(assert (=> b!4790826 m!5771016))

(declare-fun m!5771020 () Bool)

(assert (=> b!4790827 m!5771020))

(declare-fun m!5771022 () Bool)

(assert (=> b!4790832 m!5771022))

(assert (=> b!4790249 d!1532775))

(declare-fun d!1532777 () Bool)

(assert (=> d!1532777 (= (apply!12957 lm!2473 (hash!4924 hashF!1559 key!5896)) (get!18452 (getValueByKey!2337 (toList!6871 lm!2473) (hash!4924 hashF!1559 key!5896))))))

(declare-fun bs!1154455 () Bool)

(assert (= bs!1154455 d!1532777))

(assert (=> bs!1154455 m!5770156))

(assert (=> bs!1154455 m!5770688))

(assert (=> bs!1154455 m!5770688))

(declare-fun m!5771024 () Bool)

(assert (=> bs!1154455 m!5771024))

(assert (=> b!4790249 d!1532777))

(assert (=> b!4790249 d!1532453))

(declare-fun d!1532779 () Bool)

(assert (=> d!1532779 (= (tail!9249 (toList!6871 lm!2473)) (t!361734 (toList!6871 lm!2473)))))

(assert (=> d!1532507 d!1532779))

(assert (=> b!4790398 d!1532611))

(assert (=> b!4790398 d!1532613))

(declare-fun d!1532781 () Bool)

(assert (=> d!1532781 (= (invariantList!1723 (toList!6872 lt!1949929)) (noDuplicatedKeys!433 (toList!6872 lt!1949929)))))

(declare-fun bs!1154456 () Bool)

(assert (= bs!1154456 d!1532781))

(declare-fun m!5771026 () Bool)

(assert (=> bs!1154456 m!5771026))

(assert (=> d!1532519 d!1532781))

(declare-fun d!1532783 () Bool)

(declare-fun res!2035957 () Bool)

(declare-fun e!2991303 () Bool)

(assert (=> d!1532783 (=> res!2035957 e!2991303)))

(assert (=> d!1532783 (= res!2035957 ((_ is Nil!54160) (toList!6871 lm!2473)))))

(assert (=> d!1532783 (= (forall!12217 (toList!6871 lm!2473) lambda!230161) e!2991303)))

(declare-fun b!4790833 () Bool)

(declare-fun e!2991304 () Bool)

(assert (=> b!4790833 (= e!2991303 e!2991304)))

(declare-fun res!2035958 () Bool)

(assert (=> b!4790833 (=> (not res!2035958) (not e!2991304))))

(assert (=> b!4790833 (= res!2035958 (dynLambda!22049 lambda!230161 (h!60584 (toList!6871 lm!2473))))))

(declare-fun b!4790834 () Bool)

(assert (=> b!4790834 (= e!2991304 (forall!12217 (t!361734 (toList!6871 lm!2473)) lambda!230161))))

(assert (= (and d!1532783 (not res!2035957)) b!4790833))

(assert (= (and b!4790833 res!2035958) b!4790834))

(declare-fun b_lambda!186537 () Bool)

(assert (=> (not b_lambda!186537) (not b!4790833)))

(declare-fun m!5771028 () Bool)

(assert (=> b!4790833 m!5771028))

(declare-fun m!5771030 () Bool)

(assert (=> b!4790834 m!5771030))

(assert (=> d!1532519 d!1532783))

(assert (=> b!4790400 d!1532623))

(assert (=> b!4790400 d!1532581))

(declare-fun bs!1154457 () Bool)

(declare-fun b!4790835 () Bool)

(assert (= bs!1154457 (and b!4790835 b!4790563)))

(declare-fun lambda!230277 () Int)

(assert (=> bs!1154457 (= (= (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))) (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))))) (= lambda!230277 lambda!230210))))

(declare-fun bs!1154458 () Bool)

(assert (= bs!1154458 (and b!4790835 b!4790596)))

(assert (=> bs!1154458 (= (= (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))) (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))) (= lambda!230277 lambda!230219))))

(declare-fun bs!1154459 () Bool)

(assert (= bs!1154459 (and b!4790835 b!4790513)))

(assert (=> bs!1154459 (= (= (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))) (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))) (= lambda!230277 lambda!230172))))

(declare-fun bs!1154460 () Bool)

(assert (= bs!1154460 (and b!4790835 b!4790565)))

(assert (=> bs!1154460 (= (= (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))) (Cons!54159 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))) (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))))) (= lambda!230277 lambda!230211))))

(declare-fun bs!1154461 () Bool)

(assert (= bs!1154461 (and b!4790835 b!4790570)))

(assert (=> bs!1154461 (= (= (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))) (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))) (= lambda!230277 lambda!230212))))

(assert (=> b!4790835 true))

(declare-fun bs!1154462 () Bool)

(declare-fun b!4790837 () Bool)

(assert (= bs!1154462 (and b!4790837 b!4790563)))

(declare-fun lambda!230278 () Int)

(assert (=> bs!1154462 (= (= (Cons!54159 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))) (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))))) (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))))) (= lambda!230278 lambda!230210))))

(declare-fun bs!1154463 () Bool)

(assert (= bs!1154463 (and b!4790837 b!4790596)))

(assert (=> bs!1154463 (= (= (Cons!54159 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))) (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))))) (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))) (= lambda!230278 lambda!230219))))

(declare-fun bs!1154464 () Bool)

(assert (= bs!1154464 (and b!4790837 b!4790835)))

(assert (=> bs!1154464 (= (= (Cons!54159 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))) (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))))) (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))))) (= lambda!230278 lambda!230277))))

(declare-fun bs!1154465 () Bool)

(assert (= bs!1154465 (and b!4790837 b!4790513)))

(assert (=> bs!1154465 (= (= (Cons!54159 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))) (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))))) (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))) (= lambda!230278 lambda!230172))))

(declare-fun bs!1154466 () Bool)

(assert (= bs!1154466 (and b!4790837 b!4790565)))

(assert (=> bs!1154466 (= (= (Cons!54159 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))) (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))))) (Cons!54159 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))) (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))))) (= lambda!230278 lambda!230211))))

(declare-fun bs!1154467 () Bool)

(assert (= bs!1154467 (and b!4790837 b!4790570)))

(assert (=> bs!1154467 (= (= (Cons!54159 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))) (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))))) (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))) (= lambda!230278 lambda!230212))))

(assert (=> b!4790837 true))

(declare-fun bs!1154468 () Bool)

(declare-fun b!4790842 () Bool)

(assert (= bs!1154468 (and b!4790842 b!4790563)))

(declare-fun lambda!230279 () Int)

(assert (=> bs!1154468 (= (= (toList!6872 (extractMap!2423 (toList!6871 lm!2473))) (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))))) (= lambda!230279 lambda!230210))))

(declare-fun bs!1154469 () Bool)

(assert (= bs!1154469 (and b!4790842 b!4790596)))

(assert (=> bs!1154469 (= (= (toList!6872 (extractMap!2423 (toList!6871 lm!2473))) (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))) (= lambda!230279 lambda!230219))))

(declare-fun bs!1154470 () Bool)

(assert (= bs!1154470 (and b!4790842 b!4790835)))

(assert (=> bs!1154470 (= (= (toList!6872 (extractMap!2423 (toList!6871 lm!2473))) (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))))) (= lambda!230279 lambda!230277))))

(declare-fun bs!1154471 () Bool)

(assert (= bs!1154471 (and b!4790842 b!4790513)))

(assert (=> bs!1154471 (= lambda!230279 lambda!230172)))

(declare-fun bs!1154472 () Bool)

(assert (= bs!1154472 (and b!4790842 b!4790565)))

(assert (=> bs!1154472 (= (= (toList!6872 (extractMap!2423 (toList!6871 lm!2473))) (Cons!54159 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))) (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))))) (= lambda!230279 lambda!230211))))

(declare-fun bs!1154473 () Bool)

(assert (= bs!1154473 (and b!4790842 b!4790837)))

(assert (=> bs!1154473 (= (= (toList!6872 (extractMap!2423 (toList!6871 lm!2473))) (Cons!54159 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))) (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))))) (= lambda!230279 lambda!230278))))

(declare-fun bs!1154474 () Bool)

(assert (= bs!1154474 (and b!4790842 b!4790570)))

(assert (=> bs!1154474 (= (= (toList!6872 (extractMap!2423 (toList!6871 lm!2473))) (toList!6872 (extractMap!2423 (toList!6871 lt!1949792)))) (= lambda!230279 lambda!230212))))

(assert (=> b!4790842 true))

(declare-fun bs!1154475 () Bool)

(declare-fun b!4790839 () Bool)

(assert (= bs!1154475 (and b!4790839 b!4790514)))

(declare-fun lambda!230280 () Int)

(assert (=> bs!1154475 (= lambda!230280 lambda!230173)))

(declare-fun bs!1154476 () Bool)

(assert (= bs!1154476 (and b!4790839 b!4790567)))

(assert (=> bs!1154476 (= lambda!230280 lambda!230214)))

(declare-fun bs!1154477 () Bool)

(assert (= bs!1154477 (and b!4790839 b!4790597)))

(assert (=> bs!1154477 (= lambda!230280 lambda!230220)))

(assert (=> b!4790835 false))

(declare-fun lt!1950195 () Unit!139767)

(assert (=> b!4790835 (= lt!1950195 (forallContained!4149 (getKeysList!1069 (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))))) lambda!230277 (_1!31670 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))))))))

(declare-fun e!2991308 () Unit!139767)

(declare-fun Unit!139829 () Unit!139767)

(assert (=> b!4790835 (= e!2991308 Unit!139829)))

(declare-fun b!4790836 () Bool)

(declare-fun Unit!139830 () Unit!139767)

(assert (=> b!4790836 (= e!2991308 Unit!139830)))

(declare-fun e!2991307 () List!54286)

(assert (=> b!4790837 (= e!2991307 (Cons!54162 (_1!31670 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))))) (getKeysList!1069 (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))))))))

(declare-fun c!816582 () Bool)

(assert (=> b!4790837 (= c!816582 (containsKey!3922 (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))) (_1!31670 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))))))))

(declare-fun lt!1950194 () Unit!139767)

(declare-fun e!2991305 () Unit!139767)

(assert (=> b!4790837 (= lt!1950194 e!2991305)))

(declare-fun c!816583 () Bool)

(assert (=> b!4790837 (= c!816583 (contains!17767 (getKeysList!1069 (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))))) (_1!31670 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))))))))

(declare-fun lt!1950196 () Unit!139767)

(assert (=> b!4790837 (= lt!1950196 e!2991308)))

(declare-fun lt!1950193 () List!54286)

(assert (=> b!4790837 (= lt!1950193 (getKeysList!1069 (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))))))))

(declare-fun lt!1950197 () Unit!139767)

(assert (=> b!4790837 (= lt!1950197 (lemmaForallContainsAddHeadPreserves!330 (t!361733 (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))) lt!1950193 (h!60583 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))))))))

(assert (=> b!4790837 (forall!12220 lt!1950193 lambda!230278)))

(declare-fun lt!1950192 () Unit!139767)

(assert (=> b!4790837 (= lt!1950192 lt!1950197)))

(declare-fun b!4790838 () Bool)

(declare-fun Unit!139831 () Unit!139767)

(assert (=> b!4790838 (= e!2991305 Unit!139831)))

(declare-fun lt!1950198 () List!54286)

(declare-fun e!2991306 () Bool)

(assert (=> b!4790839 (= e!2991306 (= (content!9696 lt!1950198) (content!9696 (map!12224 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))) lambda!230280))))))

(declare-fun b!4790840 () Bool)

(assert (=> b!4790840 false))

(declare-fun Unit!139832 () Unit!139767)

(assert (=> b!4790840 (= e!2991305 Unit!139832)))

(declare-fun res!2035959 () Bool)

(assert (=> b!4790842 (=> (not res!2035959) (not e!2991306))))

(assert (=> b!4790842 (= res!2035959 (forall!12220 lt!1950198 lambda!230279))))

(declare-fun b!4790843 () Bool)

(declare-fun res!2035961 () Bool)

(assert (=> b!4790843 (=> (not res!2035961) (not e!2991306))))

(assert (=> b!4790843 (= res!2035961 (= (length!686 lt!1950198) (length!687 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))))))))

(declare-fun b!4790841 () Bool)

(assert (=> b!4790841 (= e!2991307 Nil!54162)))

(declare-fun d!1532785 () Bool)

(assert (=> d!1532785 e!2991306))

(declare-fun res!2035960 () Bool)

(assert (=> d!1532785 (=> (not res!2035960) (not e!2991306))))

(assert (=> d!1532785 (= res!2035960 (noDuplicate!915 lt!1950198))))

(assert (=> d!1532785 (= lt!1950198 e!2991307)))

(declare-fun c!816584 () Bool)

(assert (=> d!1532785 (= c!816584 ((_ is Cons!54159) (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))))))

(assert (=> d!1532785 (invariantList!1723 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))))))

(assert (=> d!1532785 (= (getKeysList!1069 (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))) lt!1950198)))

(assert (= (and d!1532785 c!816584) b!4790837))

(assert (= (and d!1532785 (not c!816584)) b!4790841))

(assert (= (and b!4790837 c!816582) b!4790840))

(assert (= (and b!4790837 (not c!816582)) b!4790838))

(assert (= (and b!4790837 c!816583) b!4790835))

(assert (= (and b!4790837 (not c!816583)) b!4790836))

(assert (= (and d!1532785 res!2035960) b!4790843))

(assert (= (and b!4790843 res!2035961) b!4790842))

(assert (= (and b!4790842 res!2035959) b!4790839))

(declare-fun m!5771032 () Bool)

(assert (=> b!4790842 m!5771032))

(declare-fun m!5771034 () Bool)

(assert (=> b!4790835 m!5771034))

(assert (=> b!4790835 m!5771034))

(declare-fun m!5771036 () Bool)

(assert (=> b!4790835 m!5771036))

(declare-fun m!5771038 () Bool)

(assert (=> b!4790837 m!5771038))

(assert (=> b!4790837 m!5771034))

(declare-fun m!5771040 () Bool)

(assert (=> b!4790837 m!5771040))

(declare-fun m!5771042 () Bool)

(assert (=> b!4790837 m!5771042))

(assert (=> b!4790837 m!5771034))

(declare-fun m!5771044 () Bool)

(assert (=> b!4790837 m!5771044))

(declare-fun m!5771046 () Bool)

(assert (=> b!4790839 m!5771046))

(declare-fun m!5771048 () Bool)

(assert (=> b!4790839 m!5771048))

(assert (=> b!4790839 m!5771048))

(declare-fun m!5771050 () Bool)

(assert (=> b!4790839 m!5771050))

(declare-fun m!5771052 () Bool)

(assert (=> d!1532785 m!5771052))

(assert (=> d!1532785 m!5770654))

(declare-fun m!5771054 () Bool)

(assert (=> b!4790843 m!5771054))

(assert (=> b!4790843 m!5770502))

(assert (=> b!4790422 d!1532785))

(declare-fun d!1532787 () Bool)

(assert (=> d!1532787 (= (isDefined!10200 (getValueByKey!2337 (toList!6871 lt!1949792) lt!1949789)) (not (isEmpty!29436 (getValueByKey!2337 (toList!6871 lt!1949792) lt!1949789))))))

(declare-fun bs!1154478 () Bool)

(assert (= bs!1154478 d!1532787))

(assert (=> bs!1154478 m!5770398))

(declare-fun m!5771056 () Bool)

(assert (=> bs!1154478 m!5771056))

(assert (=> b!4790408 d!1532787))

(declare-fun b!4790845 () Bool)

(declare-fun e!2991309 () Option!13058)

(declare-fun e!2991310 () Option!13058)

(assert (=> b!4790845 (= e!2991309 e!2991310)))

(declare-fun c!816586 () Bool)

(assert (=> b!4790845 (= c!816586 (and ((_ is Cons!54160) (toList!6871 lt!1949792)) (not (= (_1!31671 (h!60584 (toList!6871 lt!1949792))) lt!1949789))))))

(declare-fun b!4790847 () Bool)

(assert (=> b!4790847 (= e!2991310 None!13057)))

(declare-fun b!4790844 () Bool)

(assert (=> b!4790844 (= e!2991309 (Some!13057 (_2!31671 (h!60584 (toList!6871 lt!1949792)))))))

(declare-fun d!1532789 () Bool)

(declare-fun c!816585 () Bool)

(assert (=> d!1532789 (= c!816585 (and ((_ is Cons!54160) (toList!6871 lt!1949792)) (= (_1!31671 (h!60584 (toList!6871 lt!1949792))) lt!1949789)))))

(assert (=> d!1532789 (= (getValueByKey!2337 (toList!6871 lt!1949792) lt!1949789) e!2991309)))

(declare-fun b!4790846 () Bool)

(assert (=> b!4790846 (= e!2991310 (getValueByKey!2337 (t!361734 (toList!6871 lt!1949792)) lt!1949789))))

(assert (= (and d!1532789 c!816585) b!4790844))

(assert (= (and d!1532789 (not c!816585)) b!4790845))

(assert (= (and b!4790845 c!816586) b!4790846))

(assert (= (and b!4790845 (not c!816586)) b!4790847))

(declare-fun m!5771058 () Bool)

(assert (=> b!4790846 m!5771058))

(assert (=> b!4790408 d!1532789))

(assert (=> b!4790396 d!1532557))

(declare-fun d!1532791 () Bool)

(assert (=> d!1532791 (containsKey!3922 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))) key!5896)))

(declare-fun lt!1950199 () Unit!139767)

(assert (=> d!1532791 (= lt!1950199 (choose!34482 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))) key!5896))))

(assert (=> d!1532791 (invariantList!1723 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))))))

(assert (=> d!1532791 (= (lemmaInGetKeysListThenContainsKey!1069 (toList!6872 (extractMap!2423 (toList!6871 lt!1949792))) key!5896) lt!1950199)))

(declare-fun bs!1154479 () Bool)

(assert (= bs!1154479 d!1532791))

(assert (=> bs!1154479 m!5770366))

(declare-fun m!5771060 () Bool)

(assert (=> bs!1154479 m!5771060))

(assert (=> bs!1154479 m!5770540))

(assert (=> b!4790396 d!1532791))

(declare-fun bs!1154480 () Bool)

(declare-fun b!4790852 () Bool)

(assert (= bs!1154480 (and b!4790852 b!4790809)))

(declare-fun lambda!230281 () Int)

(assert (=> bs!1154480 (= (= (extractMap!2423 (t!361734 (toList!6871 lt!1949792))) (extractMap!2423 (t!361734 (toList!6871 lm!2473)))) (= lambda!230281 lambda!230272))))

(declare-fun bs!1154481 () Bool)

(assert (= bs!1154481 (and b!4790852 b!4790806)))

(assert (=> bs!1154481 (= (= (extractMap!2423 (t!361734 (toList!6871 lt!1949792))) (extractMap!2423 (t!361734 (toList!6871 lm!2473)))) (= lambda!230281 lambda!230273))))

(assert (=> bs!1154481 (= (= (extractMap!2423 (t!361734 (toList!6871 lt!1949792))) lt!1950175) (= lambda!230281 lambda!230274))))

(declare-fun bs!1154482 () Bool)

(assert (= bs!1154482 (and b!4790852 d!1532661)))

(assert (=> bs!1154482 (= (= (extractMap!2423 (t!361734 (toList!6871 lt!1949792))) lt!1950169) (= lambda!230281 lambda!230275))))

(assert (=> b!4790852 true))

(declare-fun bs!1154483 () Bool)

(declare-fun b!4790849 () Bool)

(assert (= bs!1154483 (and b!4790849 b!4790806)))

(declare-fun lambda!230282 () Int)

(assert (=> bs!1154483 (= (= (extractMap!2423 (t!361734 (toList!6871 lt!1949792))) (extractMap!2423 (t!361734 (toList!6871 lm!2473)))) (= lambda!230282 lambda!230273))))

(declare-fun bs!1154484 () Bool)

(assert (= bs!1154484 (and b!4790849 b!4790852)))

(assert (=> bs!1154484 (= lambda!230282 lambda!230281)))

(declare-fun bs!1154485 () Bool)

(assert (= bs!1154485 (and b!4790849 d!1532661)))

(assert (=> bs!1154485 (= (= (extractMap!2423 (t!361734 (toList!6871 lt!1949792))) lt!1950169) (= lambda!230282 lambda!230275))))

(assert (=> bs!1154483 (= (= (extractMap!2423 (t!361734 (toList!6871 lt!1949792))) lt!1950175) (= lambda!230282 lambda!230274))))

(declare-fun bs!1154486 () Bool)

(assert (= bs!1154486 (and b!4790849 b!4790809)))

(assert (=> bs!1154486 (= (= (extractMap!2423 (t!361734 (toList!6871 lt!1949792))) (extractMap!2423 (t!361734 (toList!6871 lm!2473)))) (= lambda!230282 lambda!230272))))

(assert (=> b!4790849 true))

(declare-fun lambda!230283 () Int)

(declare-fun lt!1950206 () ListMap!6343)

(assert (=> bs!1154483 (= (= lt!1950206 (extractMap!2423 (t!361734 (toList!6871 lm!2473)))) (= lambda!230283 lambda!230273))))

(assert (=> bs!1154484 (= (= lt!1950206 (extractMap!2423 (t!361734 (toList!6871 lt!1949792)))) (= lambda!230283 lambda!230281))))

(assert (=> b!4790849 (= (= lt!1950206 (extractMap!2423 (t!361734 (toList!6871 lt!1949792)))) (= lambda!230283 lambda!230282))))

(assert (=> bs!1154485 (= (= lt!1950206 lt!1950169) (= lambda!230283 lambda!230275))))

(assert (=> bs!1154483 (= (= lt!1950206 lt!1950175) (= lambda!230283 lambda!230274))))

(assert (=> bs!1154486 (= (= lt!1950206 (extractMap!2423 (t!361734 (toList!6871 lm!2473)))) (= lambda!230283 lambda!230272))))

(assert (=> b!4790849 true))

(declare-fun bs!1154487 () Bool)

(declare-fun d!1532793 () Bool)

(assert (= bs!1154487 (and d!1532793 b!4790849)))

(declare-fun lambda!230284 () Int)

(declare-fun lt!1950200 () ListMap!6343)

(assert (=> bs!1154487 (= (= lt!1950200 lt!1950206) (= lambda!230284 lambda!230283))))

(declare-fun bs!1154488 () Bool)

(assert (= bs!1154488 (and d!1532793 b!4790806)))

(assert (=> bs!1154488 (= (= lt!1950200 (extractMap!2423 (t!361734 (toList!6871 lm!2473)))) (= lambda!230284 lambda!230273))))

(declare-fun bs!1154489 () Bool)

(assert (= bs!1154489 (and d!1532793 b!4790852)))

(assert (=> bs!1154489 (= (= lt!1950200 (extractMap!2423 (t!361734 (toList!6871 lt!1949792)))) (= lambda!230284 lambda!230281))))

(assert (=> bs!1154487 (= (= lt!1950200 (extractMap!2423 (t!361734 (toList!6871 lt!1949792)))) (= lambda!230284 lambda!230282))))

(declare-fun bs!1154490 () Bool)

(assert (= bs!1154490 (and d!1532793 d!1532661)))

(assert (=> bs!1154490 (= (= lt!1950200 lt!1950169) (= lambda!230284 lambda!230275))))

(assert (=> bs!1154488 (= (= lt!1950200 lt!1950175) (= lambda!230284 lambda!230274))))

(declare-fun bs!1154491 () Bool)

(assert (= bs!1154491 (and d!1532793 b!4790809)))

(assert (=> bs!1154491 (= (= lt!1950200 (extractMap!2423 (t!361734 (toList!6871 lm!2473)))) (= lambda!230284 lambda!230272))))

(assert (=> d!1532793 true))

(declare-fun bm!334993 () Bool)

(declare-fun call!335000 () Unit!139767)

(assert (=> bm!334993 (= call!335000 (lemmaContainsAllItsOwnKeys!938 (extractMap!2423 (t!361734 (toList!6871 lt!1949792)))))))

(declare-fun b!4790848 () Bool)

(declare-fun res!2035963 () Bool)

(declare-fun e!2991312 () Bool)

(assert (=> b!4790848 (=> (not res!2035963) (not e!2991312))))

(assert (=> b!4790848 (= res!2035963 (forall!12221 (toList!6872 (extractMap!2423 (t!361734 (toList!6871 lt!1949792)))) lambda!230284))))

(declare-fun c!816587 () Bool)

(declare-fun bm!334994 () Bool)

(declare-fun lt!1950213 () ListMap!6343)

(declare-fun call!334999 () Bool)

(assert (=> bm!334994 (= call!334999 (forall!12221 (ite c!816587 (toList!6872 (extractMap!2423 (t!361734 (toList!6871 lt!1949792)))) (toList!6872 lt!1950213)) (ite c!816587 lambda!230281 lambda!230283)))))

(declare-fun bm!334995 () Bool)

(declare-fun call!334998 () Bool)

(assert (=> bm!334995 (= call!334998 (forall!12221 (toList!6872 (extractMap!2423 (t!361734 (toList!6871 lt!1949792)))) (ite c!816587 lambda!230281 lambda!230283)))))

(assert (=> d!1532793 e!2991312))

(declare-fun res!2035964 () Bool)

(assert (=> d!1532793 (=> (not res!2035964) (not e!2991312))))

(assert (=> d!1532793 (= res!2035964 (forall!12221 (_2!31671 (h!60584 (toList!6871 lt!1949792))) lambda!230284))))

(declare-fun e!2991313 () ListMap!6343)

(assert (=> d!1532793 (= lt!1950200 e!2991313)))

(assert (=> d!1532793 (= c!816587 ((_ is Nil!54159) (_2!31671 (h!60584 (toList!6871 lt!1949792)))))))

(assert (=> d!1532793 (noDuplicateKeys!2325 (_2!31671 (h!60584 (toList!6871 lt!1949792))))))

(assert (=> d!1532793 (= (addToMapMapFromBucket!1694 (_2!31671 (h!60584 (toList!6871 lt!1949792))) (extractMap!2423 (t!361734 (toList!6871 lt!1949792)))) lt!1950200)))

(assert (=> b!4790849 (= e!2991313 lt!1950206)))

(assert (=> b!4790849 (= lt!1950213 (+!2482 (extractMap!2423 (t!361734 (toList!6871 lt!1949792))) (h!60583 (_2!31671 (h!60584 (toList!6871 lt!1949792))))))))

(assert (=> b!4790849 (= lt!1950206 (addToMapMapFromBucket!1694 (t!361733 (_2!31671 (h!60584 (toList!6871 lt!1949792)))) (+!2482 (extractMap!2423 (t!361734 (toList!6871 lt!1949792))) (h!60583 (_2!31671 (h!60584 (toList!6871 lt!1949792)))))))))

(declare-fun lt!1950212 () Unit!139767)

(assert (=> b!4790849 (= lt!1950212 call!335000)))

(assert (=> b!4790849 (forall!12221 (toList!6872 (extractMap!2423 (t!361734 (toList!6871 lt!1949792)))) lambda!230282)))

(declare-fun lt!1950210 () Unit!139767)

(assert (=> b!4790849 (= lt!1950210 lt!1950212)))

(assert (=> b!4790849 call!334999))

(declare-fun lt!1950207 () Unit!139767)

(declare-fun Unit!139833 () Unit!139767)

(assert (=> b!4790849 (= lt!1950207 Unit!139833)))

(assert (=> b!4790849 (forall!12221 (t!361733 (_2!31671 (h!60584 (toList!6871 lt!1949792)))) lambda!230283)))

(declare-fun lt!1950203 () Unit!139767)

(declare-fun Unit!139834 () Unit!139767)

(assert (=> b!4790849 (= lt!1950203 Unit!139834)))

(declare-fun lt!1950214 () Unit!139767)

(declare-fun Unit!139835 () Unit!139767)

(assert (=> b!4790849 (= lt!1950214 Unit!139835)))

(declare-fun lt!1950219 () Unit!139767)

(assert (=> b!4790849 (= lt!1950219 (forallContained!4151 (toList!6872 lt!1950213) lambda!230283 (h!60583 (_2!31671 (h!60584 (toList!6871 lt!1949792))))))))

(assert (=> b!4790849 (contains!17763 lt!1950213 (_1!31670 (h!60583 (_2!31671 (h!60584 (toList!6871 lt!1949792))))))))

(declare-fun lt!1950209 () Unit!139767)

(declare-fun Unit!139836 () Unit!139767)

(assert (=> b!4790849 (= lt!1950209 Unit!139836)))

(assert (=> b!4790849 (contains!17763 lt!1950206 (_1!31670 (h!60583 (_2!31671 (h!60584 (toList!6871 lt!1949792))))))))

(declare-fun lt!1950201 () Unit!139767)

(declare-fun Unit!139837 () Unit!139767)

(assert (=> b!4790849 (= lt!1950201 Unit!139837)))

(assert (=> b!4790849 (forall!12221 (_2!31671 (h!60584 (toList!6871 lt!1949792))) lambda!230283)))

(declare-fun lt!1950215 () Unit!139767)

(declare-fun Unit!139838 () Unit!139767)

(assert (=> b!4790849 (= lt!1950215 Unit!139838)))

(assert (=> b!4790849 (forall!12221 (toList!6872 lt!1950213) lambda!230283)))

(declare-fun lt!1950208 () Unit!139767)

(declare-fun Unit!139839 () Unit!139767)

(assert (=> b!4790849 (= lt!1950208 Unit!139839)))

(declare-fun lt!1950216 () Unit!139767)

(declare-fun Unit!139840 () Unit!139767)

(assert (=> b!4790849 (= lt!1950216 Unit!139840)))

(declare-fun lt!1950205 () Unit!139767)

(assert (=> b!4790849 (= lt!1950205 (addForallContainsKeyThenBeforeAdding!937 (extractMap!2423 (t!361734 (toList!6871 lt!1949792))) lt!1950206 (_1!31670 (h!60583 (_2!31671 (h!60584 (toList!6871 lt!1949792))))) (_2!31670 (h!60583 (_2!31671 (h!60584 (toList!6871 lt!1949792)))))))))

(assert (=> b!4790849 call!334998))

(declare-fun lt!1950218 () Unit!139767)

(assert (=> b!4790849 (= lt!1950218 lt!1950205)))

(assert (=> b!4790849 (forall!12221 (toList!6872 (extractMap!2423 (t!361734 (toList!6871 lt!1949792)))) lambda!230283)))

(declare-fun lt!1950220 () Unit!139767)

(declare-fun Unit!139841 () Unit!139767)

(assert (=> b!4790849 (= lt!1950220 Unit!139841)))

(declare-fun res!2035962 () Bool)

(assert (=> b!4790849 (= res!2035962 (forall!12221 (_2!31671 (h!60584 (toList!6871 lt!1949792))) lambda!230283))))

(declare-fun e!2991311 () Bool)

(assert (=> b!4790849 (=> (not res!2035962) (not e!2991311))))

(assert (=> b!4790849 e!2991311))

(declare-fun lt!1950211 () Unit!139767)

(declare-fun Unit!139842 () Unit!139767)

(assert (=> b!4790849 (= lt!1950211 Unit!139842)))

(declare-fun b!4790850 () Bool)

(assert (=> b!4790850 (= e!2991311 (forall!12221 (toList!6872 (extractMap!2423 (t!361734 (toList!6871 lt!1949792)))) lambda!230283))))

(declare-fun b!4790851 () Bool)

(assert (=> b!4790851 (= e!2991312 (invariantList!1723 (toList!6872 lt!1950200)))))

(assert (=> b!4790852 (= e!2991313 (extractMap!2423 (t!361734 (toList!6871 lt!1949792))))))

(declare-fun lt!1950204 () Unit!139767)

(assert (=> b!4790852 (= lt!1950204 call!335000)))

(assert (=> b!4790852 call!334998))

(declare-fun lt!1950202 () Unit!139767)

(assert (=> b!4790852 (= lt!1950202 lt!1950204)))

(assert (=> b!4790852 call!334999))

(declare-fun lt!1950217 () Unit!139767)

(declare-fun Unit!139843 () Unit!139767)

(assert (=> b!4790852 (= lt!1950217 Unit!139843)))

(assert (= (and d!1532793 c!816587) b!4790852))

(assert (= (and d!1532793 (not c!816587)) b!4790849))

(assert (= (and b!4790849 res!2035962) b!4790850))

(assert (= (or b!4790852 b!4790849) bm!334994))

(assert (= (or b!4790852 b!4790849) bm!334995))

(assert (= (or b!4790852 b!4790849) bm!334993))

(assert (= (and d!1532793 res!2035964) b!4790848))

(assert (= (and b!4790848 res!2035963) b!4790851))

(assert (=> b!4790849 m!5770406))

(declare-fun m!5771062 () Bool)

(assert (=> b!4790849 m!5771062))

(declare-fun m!5771064 () Bool)

(assert (=> b!4790849 m!5771064))

(declare-fun m!5771066 () Bool)

(assert (=> b!4790849 m!5771066))

(declare-fun m!5771068 () Bool)

(assert (=> b!4790849 m!5771068))

(assert (=> b!4790849 m!5770406))

(declare-fun m!5771070 () Bool)

(assert (=> b!4790849 m!5771070))

(declare-fun m!5771072 () Bool)

(assert (=> b!4790849 m!5771072))

(declare-fun m!5771074 () Bool)

(assert (=> b!4790849 m!5771074))

(declare-fun m!5771076 () Bool)

(assert (=> b!4790849 m!5771076))

(assert (=> b!4790849 m!5771070))

(declare-fun m!5771078 () Bool)

(assert (=> b!4790849 m!5771078))

(assert (=> b!4790849 m!5771074))

(declare-fun m!5771080 () Bool)

(assert (=> b!4790849 m!5771080))

(declare-fun m!5771082 () Bool)

(assert (=> b!4790849 m!5771082))

(declare-fun m!5771084 () Bool)

(assert (=> bm!334995 m!5771084))

(declare-fun m!5771086 () Bool)

(assert (=> b!4790848 m!5771086))

(assert (=> bm!334993 m!5770406))

(declare-fun m!5771088 () Bool)

(assert (=> bm!334993 m!5771088))

(declare-fun m!5771090 () Bool)

(assert (=> bm!334994 m!5771090))

(declare-fun m!5771092 () Bool)

(assert (=> b!4790851 m!5771092))

(declare-fun m!5771094 () Bool)

(assert (=> d!1532793 m!5771094))

(declare-fun m!5771096 () Bool)

(assert (=> d!1532793 m!5771096))

(assert (=> b!4790850 m!5771082))

(assert (=> b!4790413 d!1532793))

(declare-fun bs!1154492 () Bool)

(declare-fun d!1532795 () Bool)

(assert (= bs!1154492 (and d!1532795 d!1532511)))

(declare-fun lambda!230285 () Int)

(assert (=> bs!1154492 (= lambda!230285 lambda!230154)))

(declare-fun bs!1154493 () Bool)

(assert (= bs!1154493 (and d!1532795 d!1532513)))

(assert (=> bs!1154493 (not (= lambda!230285 lambda!230157))))

(declare-fun bs!1154494 () Bool)

(assert (= bs!1154494 (and d!1532795 d!1532763)))

(assert (=> bs!1154494 (= lambda!230285 lambda!230276)))

(declare-fun bs!1154495 () Bool)

(assert (= bs!1154495 (and d!1532795 d!1532445)))

(assert (=> bs!1154495 (= lambda!230285 lambda!230132)))

(declare-fun bs!1154496 () Bool)

(assert (= bs!1154496 (and d!1532795 d!1532515)))

(assert (=> bs!1154496 (= lambda!230285 lambda!230160)))

(declare-fun bs!1154497 () Bool)

(assert (= bs!1154497 (and d!1532795 d!1532443)))

(assert (=> bs!1154497 (= lambda!230285 lambda!230129)))

(declare-fun bs!1154498 () Bool)

(assert (= bs!1154498 (and d!1532795 start!493018)))

(assert (=> bs!1154498 (= lambda!230285 lambda!230123)))

(declare-fun bs!1154499 () Bool)

(assert (= bs!1154499 (and d!1532795 d!1532519)))

(assert (=> bs!1154499 (= lambda!230285 lambda!230161)))

(declare-fun bs!1154500 () Bool)

(assert (= bs!1154500 (and d!1532795 d!1532503)))

(assert (=> bs!1154500 (= lambda!230285 lambda!230151)))

(declare-fun lt!1950221 () ListMap!6343)

(assert (=> d!1532795 (invariantList!1723 (toList!6872 lt!1950221))))

(declare-fun e!2991314 () ListMap!6343)

(assert (=> d!1532795 (= lt!1950221 e!2991314)))

(declare-fun c!816588 () Bool)

(assert (=> d!1532795 (= c!816588 ((_ is Cons!54160) (t!361734 (toList!6871 lt!1949792))))))

(assert (=> d!1532795 (forall!12217 (t!361734 (toList!6871 lt!1949792)) lambda!230285)))

(assert (=> d!1532795 (= (extractMap!2423 (t!361734 (toList!6871 lt!1949792))) lt!1950221)))

(declare-fun b!4790853 () Bool)

(assert (=> b!4790853 (= e!2991314 (addToMapMapFromBucket!1694 (_2!31671 (h!60584 (t!361734 (toList!6871 lt!1949792)))) (extractMap!2423 (t!361734 (t!361734 (toList!6871 lt!1949792))))))))

(declare-fun b!4790854 () Bool)

(assert (=> b!4790854 (= e!2991314 (ListMap!6344 Nil!54159))))

(assert (= (and d!1532795 c!816588) b!4790853))

(assert (= (and d!1532795 (not c!816588)) b!4790854))

(declare-fun m!5771098 () Bool)

(assert (=> d!1532795 m!5771098))

(declare-fun m!5771100 () Bool)

(assert (=> d!1532795 m!5771100))

(declare-fun m!5771102 () Bool)

(assert (=> b!4790853 m!5771102))

(assert (=> b!4790853 m!5771102))

(declare-fun m!5771104 () Bool)

(assert (=> b!4790853 m!5771104))

(assert (=> b!4790413 d!1532795))

(declare-fun d!1532797 () Bool)

(assert (=> d!1532797 (isDefined!10201 (getValueByKey!2338 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))) key!5896))))

(declare-fun lt!1950222 () Unit!139767)

(assert (=> d!1532797 (= lt!1950222 (choose!34480 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))) key!5896))))

(assert (=> d!1532797 (invariantList!1723 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))))))

(assert (=> d!1532797 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2130 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))) key!5896) lt!1950222)))

(declare-fun bs!1154501 () Bool)

(assert (= bs!1154501 d!1532797))

(assert (=> bs!1154501 m!5770428))

(assert (=> bs!1154501 m!5770428))

(assert (=> bs!1154501 m!5770430))

(declare-fun m!5771106 () Bool)

(assert (=> bs!1154501 m!5771106))

(assert (=> bs!1154501 m!5770654))

(assert (=> b!4790420 d!1532797))

(assert (=> b!4790420 d!1532575))

(assert (=> b!4790420 d!1532577))

(declare-fun d!1532799 () Bool)

(assert (=> d!1532799 (contains!17767 (getKeysList!1069 (toList!6872 (extractMap!2423 (toList!6871 lm!2473)))) key!5896)))

(declare-fun lt!1950223 () Unit!139767)

(assert (=> d!1532799 (= lt!1950223 (choose!34481 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))) key!5896))))

(assert (=> d!1532799 (invariantList!1723 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))))))

(assert (=> d!1532799 (= (lemmaInListThenGetKeysListContains!1064 (toList!6872 (extractMap!2423 (toList!6871 lm!2473))) key!5896) lt!1950223)))

(declare-fun bs!1154502 () Bool)

(assert (= bs!1154502 d!1532799))

(assert (=> bs!1154502 m!5770434))

(assert (=> bs!1154502 m!5770434))

(declare-fun m!5771108 () Bool)

(assert (=> bs!1154502 m!5771108))

(declare-fun m!5771110 () Bool)

(assert (=> bs!1154502 m!5771110))

(assert (=> bs!1154502 m!5770654))

(assert (=> b!4790420 d!1532799))

(declare-fun d!1532801 () Bool)

(assert (=> d!1532801 (isDefined!10200 (getValueByKey!2337 (toList!6871 lt!1949792) lt!1949789))))

(declare-fun lt!1950224 () Unit!139767)

(assert (=> d!1532801 (= lt!1950224 (choose!34479 (toList!6871 lt!1949792) lt!1949789))))

(declare-fun e!2991315 () Bool)

(assert (=> d!1532801 e!2991315))

(declare-fun res!2035965 () Bool)

(assert (=> d!1532801 (=> (not res!2035965) (not e!2991315))))

(assert (=> d!1532801 (= res!2035965 (isStrictlySorted!871 (toList!6871 lt!1949792)))))

(assert (=> d!1532801 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2129 (toList!6871 lt!1949792) lt!1949789) lt!1950224)))

(declare-fun b!4790855 () Bool)

(assert (=> b!4790855 (= e!2991315 (containsKey!3921 (toList!6871 lt!1949792) lt!1949789))))

(assert (= (and d!1532801 res!2035965) b!4790855))

(assert (=> d!1532801 m!5770398))

(assert (=> d!1532801 m!5770398))

(assert (=> d!1532801 m!5770400))

(declare-fun m!5771112 () Bool)

(assert (=> d!1532801 m!5771112))

(declare-fun m!5771114 () Bool)

(assert (=> d!1532801 m!5771114))

(assert (=> b!4790855 m!5770394))

(assert (=> b!4790406 d!1532801))

(assert (=> b!4790406 d!1532787))

(assert (=> b!4790406 d!1532789))

(declare-fun d!1532803 () Bool)

(declare-fun lt!1950227 () Bool)

(declare-fun content!9698 (List!54283) (InoxSet tuple2!56752))

(assert (=> d!1532803 (= lt!1950227 (select (content!9698 (apply!12957 lm!2473 lt!1949789)) (get!18450 lt!1949868)))))

(declare-fun e!2991321 () Bool)

(assert (=> d!1532803 (= lt!1950227 e!2991321)))

(declare-fun res!2035971 () Bool)

(assert (=> d!1532803 (=> (not res!2035971) (not e!2991321))))

(assert (=> d!1532803 (= res!2035971 ((_ is Cons!54159) (apply!12957 lm!2473 lt!1949789)))))

(assert (=> d!1532803 (= (contains!17766 (apply!12957 lm!2473 lt!1949789) (get!18450 lt!1949868)) lt!1950227)))

(declare-fun b!4790860 () Bool)

(declare-fun e!2991320 () Bool)

(assert (=> b!4790860 (= e!2991321 e!2991320)))

(declare-fun res!2035970 () Bool)

(assert (=> b!4790860 (=> res!2035970 e!2991320)))

(assert (=> b!4790860 (= res!2035970 (= (h!60583 (apply!12957 lm!2473 lt!1949789)) (get!18450 lt!1949868)))))

(declare-fun b!4790861 () Bool)

(assert (=> b!4790861 (= e!2991320 (contains!17766 (t!361733 (apply!12957 lm!2473 lt!1949789)) (get!18450 lt!1949868)))))

(assert (= (and d!1532803 res!2035971) b!4790860))

(assert (= (and b!4790860 (not res!2035970)) b!4790861))

(assert (=> d!1532803 m!5770128))

(declare-fun m!5771116 () Bool)

(assert (=> d!1532803 m!5771116))

(assert (=> d!1532803 m!5770286))

(declare-fun m!5771118 () Bool)

(assert (=> d!1532803 m!5771118))

(assert (=> b!4790861 m!5770286))

(declare-fun m!5771120 () Bool)

(assert (=> b!4790861 m!5771120))

(assert (=> b!4790314 d!1532803))

(assert (=> b!4790314 d!1532621))

(declare-fun b!4790862 () Bool)

(declare-fun e!2991322 () Option!13055)

(assert (=> b!4790862 (= e!2991322 (Some!13054 (h!60583 (t!361733 (apply!12957 lm!2473 lt!1949789)))))))

(declare-fun b!4790863 () Bool)

(declare-fun res!2035974 () Bool)

(declare-fun e!2991323 () Bool)

(assert (=> b!4790863 (=> (not res!2035974) (not e!2991323))))

(declare-fun lt!1950228 () Option!13055)

(assert (=> b!4790863 (= res!2035974 (= (_1!31670 (get!18450 lt!1950228)) key!5896))))

(declare-fun b!4790864 () Bool)

(declare-fun e!2991326 () Option!13055)

(assert (=> b!4790864 (= e!2991326 (getPair!868 (t!361733 (t!361733 (apply!12957 lm!2473 lt!1949789))) key!5896))))

(declare-fun d!1532805 () Bool)

(declare-fun e!2991324 () Bool)

(assert (=> d!1532805 e!2991324))

(declare-fun res!2035975 () Bool)

(assert (=> d!1532805 (=> res!2035975 e!2991324)))

(declare-fun e!2991325 () Bool)

(assert (=> d!1532805 (= res!2035975 e!2991325)))

(declare-fun res!2035972 () Bool)

(assert (=> d!1532805 (=> (not res!2035972) (not e!2991325))))

(assert (=> d!1532805 (= res!2035972 (isEmpty!29432 lt!1950228))))

(assert (=> d!1532805 (= lt!1950228 e!2991322)))

(declare-fun c!816589 () Bool)

(assert (=> d!1532805 (= c!816589 (and ((_ is Cons!54159) (t!361733 (apply!12957 lm!2473 lt!1949789))) (= (_1!31670 (h!60583 (t!361733 (apply!12957 lm!2473 lt!1949789)))) key!5896)))))

(assert (=> d!1532805 (noDuplicateKeys!2325 (t!361733 (apply!12957 lm!2473 lt!1949789)))))

(assert (=> d!1532805 (= (getPair!868 (t!361733 (apply!12957 lm!2473 lt!1949789)) key!5896) lt!1950228)))

(declare-fun b!4790865 () Bool)

(assert (=> b!4790865 (= e!2991325 (not (containsKey!3918 (t!361733 (apply!12957 lm!2473 lt!1949789)) key!5896)))))

(declare-fun b!4790866 () Bool)

(assert (=> b!4790866 (= e!2991322 e!2991326)))

(declare-fun c!816590 () Bool)

(assert (=> b!4790866 (= c!816590 ((_ is Cons!54159) (t!361733 (apply!12957 lm!2473 lt!1949789))))))

(declare-fun b!4790867 () Bool)

(assert (=> b!4790867 (= e!2991326 None!13054)))

(declare-fun b!4790868 () Bool)

(assert (=> b!4790868 (= e!2991323 (contains!17766 (t!361733 (apply!12957 lm!2473 lt!1949789)) (get!18450 lt!1950228)))))

(declare-fun b!4790869 () Bool)

(assert (=> b!4790869 (= e!2991324 e!2991323)))

(declare-fun res!2035973 () Bool)

(assert (=> b!4790869 (=> (not res!2035973) (not e!2991323))))

(assert (=> b!4790869 (= res!2035973 (isDefined!10197 lt!1950228))))

(assert (= (and d!1532805 c!816589) b!4790862))

(assert (= (and d!1532805 (not c!816589)) b!4790866))

(assert (= (and b!4790866 c!816590) b!4790864))

(assert (= (and b!4790866 (not c!816590)) b!4790867))

(assert (= (and d!1532805 res!2035972) b!4790865))

(assert (= (and d!1532805 (not res!2035975)) b!4790869))

(assert (= (and b!4790869 res!2035973) b!4790863))

(assert (= (and b!4790863 res!2035974) b!4790868))

(assert (=> b!4790865 m!5770668))

(declare-fun m!5771122 () Bool)

(assert (=> d!1532805 m!5771122))

(assert (=> d!1532805 m!5771002))

(declare-fun m!5771124 () Bool)

(assert (=> b!4790868 m!5771124))

(assert (=> b!4790868 m!5771124))

(declare-fun m!5771126 () Bool)

(assert (=> b!4790868 m!5771126))

(assert (=> b!4790863 m!5771124))

(declare-fun m!5771128 () Bool)

(assert (=> b!4790864 m!5771128))

(declare-fun m!5771130 () Bool)

(assert (=> b!4790869 m!5771130))

(assert (=> b!4790310 d!1532805))

(assert (=> b!4790418 d!1532561))

(declare-fun d!1532807 () Bool)

(declare-fun lt!1950229 () Bool)

(assert (=> d!1532807 (= lt!1950229 (select (content!9696 e!2991012) key!5896))))

(declare-fun e!2991328 () Bool)

(assert (=> d!1532807 (= lt!1950229 e!2991328)))

(declare-fun res!2035977 () Bool)

(assert (=> d!1532807 (=> (not res!2035977) (not e!2991328))))

(assert (=> d!1532807 (= res!2035977 ((_ is Cons!54162) e!2991012))))

(assert (=> d!1532807 (= (contains!17767 e!2991012 key!5896) lt!1950229)))

(declare-fun b!4790870 () Bool)

(declare-fun e!2991327 () Bool)

(assert (=> b!4790870 (= e!2991328 e!2991327)))

(declare-fun res!2035976 () Bool)

(assert (=> b!4790870 (=> res!2035976 e!2991327)))

(assert (=> b!4790870 (= res!2035976 (= (h!60586 e!2991012) key!5896))))

(declare-fun b!4790871 () Bool)

(assert (=> b!4790871 (= e!2991327 (contains!17767 (t!361736 e!2991012) key!5896))))

(assert (= (and d!1532807 res!2035977) b!4790870))

(assert (= (and b!4790870 (not res!2035976)) b!4790871))

(declare-fun m!5771132 () Bool)

(assert (=> d!1532807 m!5771132))

(declare-fun m!5771134 () Bool)

(assert (=> d!1532807 m!5771134))

(declare-fun m!5771136 () Bool)

(assert (=> b!4790871 m!5771136))

(assert (=> bm!334970 d!1532807))

(declare-fun d!1532809 () Bool)

(declare-fun c!816591 () Bool)

(declare-fun e!2991330 () Bool)

(assert (=> d!1532809 (= c!816591 e!2991330)))

(declare-fun res!2035978 () Bool)

(assert (=> d!1532809 (=> (not res!2035978) (not e!2991330))))

(assert (=> d!1532809 (= res!2035978 ((_ is Cons!54160) (t!361734 (toList!6871 lm!2473))))))

(declare-fun e!2991329 () V!15975)

(assert (=> d!1532809 (= (getValue!92 (t!361734 (toList!6871 lm!2473)) key!5896) e!2991329)))

(declare-fun b!4790874 () Bool)

(assert (=> b!4790874 (= e!2991330 (containsKey!3918 (_2!31671 (h!60584 (t!361734 (toList!6871 lm!2473)))) key!5896))))

(declare-fun b!4790872 () Bool)

(assert (=> b!4790872 (= e!2991329 (_2!31670 (get!18450 (getPair!868 (_2!31671 (h!60584 (t!361734 (toList!6871 lm!2473)))) key!5896))))))

(declare-fun b!4790873 () Bool)

(assert (=> b!4790873 (= e!2991329 (getValue!92 (t!361734 (t!361734 (toList!6871 lm!2473))) key!5896))))

(assert (= (and d!1532809 res!2035978) b!4790874))

(assert (= (and d!1532809 c!816591) b!4790872))

(assert (= (and d!1532809 (not c!816591)) b!4790873))

(assert (=> b!4790874 m!5770996))

(declare-fun m!5771138 () Bool)

(assert (=> b!4790872 m!5771138))

(assert (=> b!4790872 m!5771138))

(declare-fun m!5771140 () Bool)

(assert (=> b!4790872 m!5771140))

(declare-fun m!5771142 () Bool)

(assert (=> b!4790873 m!5771142))

(assert (=> b!4790278 d!1532809))

(declare-fun d!1532811 () Bool)

(declare-fun choose!34485 (Hashable!6896 K!15729) (_ BitVec 64))

(assert (=> d!1532811 (= (hash!4926 hashF!1559 key!5896) (choose!34485 hashF!1559 key!5896))))

(declare-fun bs!1154503 () Bool)

(assert (= bs!1154503 d!1532811))

(declare-fun m!5771144 () Bool)

(assert (=> bs!1154503 m!5771144))

(assert (=> d!1532453 d!1532811))

(declare-fun d!1532813 () Bool)

(assert (=> d!1532813 (= (isEmpty!29433 (toList!6871 lm!2473)) ((_ is Nil!54160) (toList!6871 lm!2473)))))

(assert (=> d!1532505 d!1532813))

(assert (=> b!4790417 d!1532559))

(assert (=> b!4790417 d!1532561))

(declare-fun tp!1357904 () Bool)

(declare-fun e!2991333 () Bool)

(declare-fun b!4790879 () Bool)

(assert (=> b!4790879 (= e!2991333 (and tp_is_empty!33465 tp_is_empty!33467 tp!1357904))))

(assert (=> b!4790432 (= tp!1357895 e!2991333)))

(assert (= (and b!4790432 ((_ is Cons!54159) (_2!31671 (h!60584 (toList!6871 lm!2473))))) b!4790879))

(declare-fun b!4790880 () Bool)

(declare-fun e!2991334 () Bool)

(declare-fun tp!1357905 () Bool)

(declare-fun tp!1357906 () Bool)

(assert (=> b!4790880 (= e!2991334 (and tp!1357905 tp!1357906))))

(assert (=> b!4790432 (= tp!1357896 e!2991334)))

(assert (= (and b!4790432 ((_ is Cons!54160) (t!361734 (toList!6871 lm!2473)))) b!4790880))

(declare-fun b_lambda!186539 () Bool)

(assert (= b_lambda!186537 (or d!1532519 b_lambda!186539)))

(declare-fun bs!1154504 () Bool)

(declare-fun d!1532815 () Bool)

(assert (= bs!1154504 (and d!1532815 d!1532519)))

(assert (=> bs!1154504 (= (dynLambda!22049 lambda!230161 (h!60584 (toList!6871 lm!2473))) (noDuplicateKeys!2325 (_2!31671 (h!60584 (toList!6871 lm!2473)))))))

(assert (=> bs!1154504 m!5770444))

(assert (=> b!4790833 d!1532815))

(declare-fun b_lambda!186541 () Bool)

(assert (= b_lambda!186503 (or d!1532503 b_lambda!186541)))

(declare-fun bs!1154505 () Bool)

(declare-fun d!1532817 () Bool)

(assert (= bs!1154505 (and d!1532817 d!1532503)))

(assert (=> bs!1154505 (= (dynLambda!22049 lambda!230151 (h!60584 (toList!6871 lt!1949792))) (noDuplicateKeys!2325 (_2!31671 (h!60584 (toList!6871 lt!1949792)))))))

(assert (=> bs!1154505 m!5771096))

(assert (=> b!4790660 d!1532817))

(declare-fun b_lambda!186543 () Bool)

(assert (= b_lambda!186493 (or d!1532511 b_lambda!186543)))

(declare-fun bs!1154506 () Bool)

(declare-fun d!1532819 () Bool)

(assert (= bs!1154506 (and d!1532819 d!1532511)))

(assert (=> bs!1154506 (= (dynLambda!22049 lambda!230154 (h!60584 (toList!6871 lt!1949792))) (noDuplicateKeys!2325 (_2!31671 (h!60584 (toList!6871 lt!1949792)))))))

(assert (=> bs!1154506 m!5771096))

(assert (=> b!4790488 d!1532819))

(declare-fun b_lambda!186545 () Bool)

(assert (= b_lambda!186501 (or start!493018 b_lambda!186545)))

(declare-fun bs!1154507 () Bool)

(declare-fun d!1532821 () Bool)

(assert (= bs!1154507 (and d!1532821 start!493018)))

(assert (=> bs!1154507 (= (dynLambda!22049 lambda!230123 (h!60584 (t!361734 (toList!6871 lm!2473)))) (noDuplicateKeys!2325 (_2!31671 (h!60584 (t!361734 (toList!6871 lm!2473))))))))

(declare-fun m!5771146 () Bool)

(assert (=> bs!1154507 m!5771146))

(assert (=> b!4790640 d!1532821))

(declare-fun b_lambda!186547 () Bool)

(assert (= b_lambda!186495 (or d!1532515 b_lambda!186547)))

(declare-fun bs!1154508 () Bool)

(declare-fun d!1532823 () Bool)

(assert (= bs!1154508 (and d!1532823 d!1532515)))

(assert (=> bs!1154508 (= (dynLambda!22049 lambda!230160 (h!60584 (toList!6871 lt!1949792))) (noDuplicateKeys!2325 (_2!31671 (h!60584 (toList!6871 lt!1949792)))))))

(assert (=> bs!1154508 m!5771096))

(assert (=> b!4790490 d!1532823))

(declare-fun b_lambda!186549 () Bool)

(assert (= b_lambda!186507 (or d!1532443 b_lambda!186549)))

(declare-fun bs!1154509 () Bool)

(declare-fun d!1532825 () Bool)

(assert (= bs!1154509 (and d!1532825 d!1532443)))

(assert (=> bs!1154509 (= (dynLambda!22049 lambda!230129 (h!60584 (toList!6871 lm!2473))) (noDuplicateKeys!2325 (_2!31671 (h!60584 (toList!6871 lm!2473)))))))

(assert (=> bs!1154509 m!5770444))

(assert (=> b!4790681 d!1532825))

(declare-fun b_lambda!186551 () Bool)

(assert (= b_lambda!186505 (or d!1532445 b_lambda!186551)))

(declare-fun bs!1154510 () Bool)

(declare-fun d!1532827 () Bool)

(assert (= bs!1154510 (and d!1532827 d!1532445)))

(assert (=> bs!1154510 (= (dynLambda!22049 lambda!230132 (h!60584 (toList!6871 lm!2473))) (noDuplicateKeys!2325 (_2!31671 (h!60584 (toList!6871 lm!2473)))))))

(assert (=> bs!1154510 m!5770444))

(assert (=> b!4790679 d!1532827))

(declare-fun b_lambda!186553 () Bool)

(assert (= b_lambda!186499 (or d!1532513 b_lambda!186553)))

(declare-fun bs!1154511 () Bool)

(declare-fun d!1532829 () Bool)

(assert (= bs!1154511 (and d!1532829 d!1532513)))

(declare-fun allKeysSameHash!1954 (List!54283 (_ BitVec 64) Hashable!6896) Bool)

(assert (=> bs!1154511 (= (dynLambda!22049 lambda!230157 (h!60584 (toList!6871 lm!2473))) (allKeysSameHash!1954 (_2!31671 (h!60584 (toList!6871 lm!2473))) (_1!31671 (h!60584 (toList!6871 lm!2473))) hashF!1559))))

(declare-fun m!5771148 () Bool)

(assert (=> bs!1154511 m!5771148))

(assert (=> b!4790636 d!1532829))

(check-sat (not d!1532803) (not b!4790822) (not d!1532791) (not b!4790861) (not bs!1154511) (not b!4790868) (not b!4790839) (not b!4790680) (not d!1532565) (not b!4790808) (not d!1532807) (not b_lambda!186545) (not d!1532619) (not b!4790633) (not b_lambda!186553) (not b!4790641) (not d!1532773) (not b!4790499) (not b!4790834) (not b!4790631) (not b!4790514) tp_is_empty!33467 (not b!4790812) (not d!1532615) (not b_lambda!186539) (not d!1532649) (not b!4790843) (not b!4790512) (not bs!1154507) (not b!4790689) (not b!4790837) (not b!4790690) (not b!4790879) (not b!4790863) (not d!1532775) (not b!4790623) (not b_lambda!186551) (not b!4790613) (not b!4790597) (not d!1532559) (not b!4790846) (not b!4790626) (not b!4790661) (not b!4790513) (not d!1532563) (not d!1532571) (not b!4790871) (not bm!334991) (not d!1532799) (not b!4790678) (not b!4790595) (not bm!334994) (not d!1532641) (not d!1532655) (not bm!334995) (not b_lambda!186549) (not bs!1154510) (not bm!334993) (not d!1532787) (not b!4790831) (not d!1532805) (not b!4790629) (not bm!334990) (not b!4790534) (not b!4790849) (not b_lambda!186541) (not b!4790571) (not b!4790835) (not b!4790842) (not d!1532797) (not b!4790563) (not bs!1154504) (not b!4790664) (not d!1532811) (not b!4790639) (not b!4790637) (not d!1532777) (not b!4790635) (not bs!1154505) (not b!4790565) (not b!4790567) (not d!1532575) (not b!4790662) (not b!4790527) (not b!4790489) tp_is_empty!33465 (not d!1532801) (not b!4790873) (not b!4790493) (not b!4790806) (not b_lambda!186489) (not b!4790855) (not b!4790821) (not d!1532593) (not bs!1154509) (not d!1532661) (not b!4790684) (not b!4790865) (not b!4790828) (not bm!334992) (not d!1532785) (not b!4790593) (not b!4790816) (not d!1532637) (not b!4790491) (not d!1532625) (not b!4790823) (not d!1532581) (not b_lambda!186543) (not b!4790807) (not b!4790850) (not b!4790864) (not b!4790827) (not b!4790824) (not d!1532611) (not b!4790851) (not b_lambda!186547) (not d!1532551) (not d!1532607) (not d!1532763) (not d!1532781) (not b!4790682) (not bs!1154508) (not b!4790853) (not b!4790826) (not d!1532623) (not b!4790685) (not b!4790874) (not b!4790880) (not b!4790869) (not b!4790570) (not d!1532561) (not d!1532547) (not b!4790596) (not bs!1154506) (not b!4790848) (not b!4790505) (not d!1532795) (not b!4790686) (not b!4790872) (not b!4790805) (not d!1532643) (not b!4790832) (not d!1532793) (not b!4790814))
(check-sat)
