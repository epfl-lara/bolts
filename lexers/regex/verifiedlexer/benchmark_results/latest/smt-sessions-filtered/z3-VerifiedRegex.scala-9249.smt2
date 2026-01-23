; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!490502 () Bool)

(assert start!490502)

(declare-fun bs!1151543 () Bool)

(declare-fun b!4779775 () Bool)

(assert (= bs!1151543 (and b!4779775 start!490502)))

(declare-fun lambda!227799 () Int)

(declare-fun lambda!227798 () Int)

(assert (=> bs!1151543 (not (= lambda!227799 lambda!227798))))

(assert (=> b!4779775 true))

(declare-fun b!4779770 () Bool)

(declare-fun res!2029186 () Bool)

(declare-fun e!2984008 () Bool)

(assert (=> b!4779770 (=> res!2029186 e!2984008)))

(declare-datatypes ((K!15534 0))(
  ( (K!15535 (val!20733 Int)) )
))
(declare-datatypes ((V!15780 0))(
  ( (V!15781 (val!20734 Int)) )
))
(declare-datatypes ((tuple2!56440 0))(
  ( (tuple2!56441 (_1!31514 K!15534) (_2!31514 V!15780)) )
))
(declare-datatypes ((List!54093 0))(
  ( (Nil!53969) (Cons!53969 (h!60387 tuple2!56440) (t!361543 List!54093)) )
))
(declare-datatypes ((tuple2!56442 0))(
  ( (tuple2!56443 (_1!31515 (_ BitVec 64)) (_2!31515 List!54093)) )
))
(declare-datatypes ((List!54094 0))(
  ( (Nil!53970) (Cons!53970 (h!60388 tuple2!56442) (t!361544 List!54094)) )
))
(declare-datatypes ((ListLongMap!5137 0))(
  ( (ListLongMap!5138 (toList!6715 List!54094)) )
))
(declare-fun lm!2709 () ListLongMap!5137)

(declare-fun lt!1942490 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4779770 (= res!2029186 (or (not ((_ is Cons!53970) (toList!6715 lm!2709))) (not (= (_1!31515 (h!60388 (toList!6715 lm!2709))) lt!1942490))))))

(declare-fun res!2029190 () Bool)

(declare-fun e!2984009 () Bool)

(assert (=> start!490502 (=> (not res!2029190) (not e!2984009))))

(declare-fun forall!12102 (List!54094 Int) Bool)

(assert (=> start!490502 (= res!2029190 (forall!12102 (toList!6715 lm!2709) lambda!227798))))

(assert (=> start!490502 e!2984009))

(declare-fun e!2984010 () Bool)

(declare-fun inv!69560 (ListLongMap!5137) Bool)

(assert (=> start!490502 (and (inv!69560 lm!2709) e!2984010)))

(assert (=> start!490502 true))

(declare-fun tp_is_empty!33173 () Bool)

(assert (=> start!490502 tp_is_empty!33173))

(declare-fun tp_is_empty!33175 () Bool)

(assert (=> start!490502 tp_is_empty!33175))

(declare-fun b!4779771 () Bool)

(declare-fun res!2029185 () Bool)

(assert (=> b!4779771 (=> (not res!2029185) (not e!2984009))))

(declare-datatypes ((Hashable!6818 0))(
  ( (HashableExt!6817 (__x!32841 Int)) )
))
(declare-fun hashF!1687 () Hashable!6818)

(declare-fun allKeysSameHashInMap!2223 (ListLongMap!5137 Hashable!6818) Bool)

(assert (=> b!4779771 (= res!2029185 (allKeysSameHashInMap!2223 lm!2709 hashF!1687))))

(declare-fun v!11584 () V!15780)

(declare-fun key!6641 () K!15534)

(declare-fun b!4779772 () Bool)

(declare-fun e!2984007 () Bool)

(declare-fun getValue!48 (List!54094 K!15534) V!15780)

(assert (=> b!4779772 (= e!2984007 (= (getValue!48 (toList!6715 lm!2709) key!6641) v!11584))))

(declare-fun b!4779773 () Bool)

(assert (=> b!4779773 (= e!2984009 (not e!2984008))))

(declare-fun res!2029189 () Bool)

(assert (=> b!4779773 (=> res!2029189 e!2984008)))

(declare-datatypes ((Option!12910 0))(
  ( (None!12909) (Some!12909 (v!48100 tuple2!56440)) )
))
(declare-fun lt!1942492 () Option!12910)

(declare-fun get!18337 (Option!12910) tuple2!56440)

(assert (=> b!4779773 (= res!2029189 (not (= (_2!31514 (get!18337 lt!1942492)) v!11584)))))

(declare-fun isDefined!10054 (Option!12910) Bool)

(assert (=> b!4779773 (isDefined!10054 lt!1942492)))

(declare-fun lt!1942497 () List!54093)

(declare-fun getPair!790 (List!54093 K!15534) Option!12910)

(assert (=> b!4779773 (= lt!1942492 (getPair!790 lt!1942497 key!6641))))

(declare-datatypes ((Unit!139163 0))(
  ( (Unit!139164) )
))
(declare-fun lt!1942491 () Unit!139163)

(declare-fun lt!1942496 () tuple2!56442)

(declare-fun forallContained!4046 (List!54094 Int tuple2!56442) Unit!139163)

(assert (=> b!4779773 (= lt!1942491 (forallContained!4046 (toList!6715 lm!2709) lambda!227798 lt!1942496))))

(declare-fun lt!1942489 () Unit!139163)

(declare-fun lemmaInGenMapThenGetPairDefined!564 (ListLongMap!5137 K!15534 Hashable!6818) Unit!139163)

(assert (=> b!4779773 (= lt!1942489 (lemmaInGenMapThenGetPairDefined!564 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1942487 () Unit!139163)

(assert (=> b!4779773 (= lt!1942487 (forallContained!4046 (toList!6715 lm!2709) lambda!227798 lt!1942496))))

(declare-fun contains!17486 (List!54094 tuple2!56442) Bool)

(assert (=> b!4779773 (contains!17486 (toList!6715 lm!2709) lt!1942496)))

(assert (=> b!4779773 (= lt!1942496 (tuple2!56443 lt!1942490 lt!1942497))))

(declare-fun lt!1942495 () Unit!139163)

(declare-fun lemmaGetValueImpliesTupleContained!597 (ListLongMap!5137 (_ BitVec 64) List!54093) Unit!139163)

(assert (=> b!4779773 (= lt!1942495 (lemmaGetValueImpliesTupleContained!597 lm!2709 lt!1942490 lt!1942497))))

(declare-fun apply!12873 (ListLongMap!5137 (_ BitVec 64)) List!54093)

(assert (=> b!4779773 (= lt!1942497 (apply!12873 lm!2709 lt!1942490))))

(declare-fun contains!17487 (ListLongMap!5137 (_ BitVec 64)) Bool)

(assert (=> b!4779773 (contains!17487 lm!2709 lt!1942490)))

(declare-fun hash!4799 (Hashable!6818 K!15534) (_ BitVec 64))

(assert (=> b!4779773 (= lt!1942490 (hash!4799 hashF!1687 key!6641))))

(declare-fun lt!1942488 () Unit!139163)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1014 (ListLongMap!5137 K!15534 Hashable!6818) Unit!139163)

(assert (=> b!4779773 (= lt!1942488 (lemmaInGenMapThenLongMapContainsHash!1014 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6187 0))(
  ( (ListMap!6188 (toList!6716 List!54093)) )
))
(declare-fun contains!17488 (ListMap!6187 K!15534) Bool)

(declare-fun extractMap!2345 (List!54094) ListMap!6187)

(assert (=> b!4779773 (contains!17488 (extractMap!2345 (toList!6715 lm!2709)) key!6641)))

(declare-fun lt!1942493 () Unit!139163)

(declare-fun lemmaListContainsThenExtractedMapContains!666 (ListLongMap!5137 K!15534 Hashable!6818) Unit!139163)

(assert (=> b!4779773 (= lt!1942493 (lemmaListContainsThenExtractedMapContains!666 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4779774 () Bool)

(declare-fun tp!1357356 () Bool)

(assert (=> b!4779774 (= e!2984010 tp!1357356)))

(assert (=> b!4779775 (= e!2984008 e!2984007)))

(declare-fun res!2029188 () Bool)

(assert (=> b!4779775 (=> res!2029188 e!2984007)))

(declare-fun containsKey!3792 (List!54093 K!15534) Bool)

(assert (=> b!4779775 (= res!2029188 (not (containsKey!3792 (_2!31515 (h!60388 (toList!6715 lm!2709))) key!6641)))))

(declare-fun lt!1942494 () Unit!139163)

(assert (=> b!4779775 (= lt!1942494 (forallContained!4046 (toList!6715 lm!2709) lambda!227799 (h!60388 (toList!6715 lm!2709))))))

(declare-fun b!4779776 () Bool)

(declare-fun res!2029187 () Bool)

(assert (=> b!4779776 (=> (not res!2029187) (not e!2984009))))

(declare-fun containsKeyBiggerList!474 (List!54094 K!15534) Bool)

(assert (=> b!4779776 (= res!2029187 (containsKeyBiggerList!474 (toList!6715 lm!2709) key!6641))))

(assert (= (and start!490502 res!2029190) b!4779771))

(assert (= (and b!4779771 res!2029185) b!4779776))

(assert (= (and b!4779776 res!2029187) b!4779773))

(assert (= (and b!4779773 (not res!2029189)) b!4779770))

(assert (= (and b!4779770 (not res!2029186)) b!4779775))

(assert (= (and b!4779775 (not res!2029188)) b!4779772))

(assert (= start!490502 b!4779774))

(declare-fun m!5756332 () Bool)

(assert (=> b!4779773 m!5756332))

(declare-fun m!5756334 () Bool)

(assert (=> b!4779773 m!5756334))

(declare-fun m!5756336 () Bool)

(assert (=> b!4779773 m!5756336))

(declare-fun m!5756338 () Bool)

(assert (=> b!4779773 m!5756338))

(declare-fun m!5756340 () Bool)

(assert (=> b!4779773 m!5756340))

(declare-fun m!5756342 () Bool)

(assert (=> b!4779773 m!5756342))

(declare-fun m!5756344 () Bool)

(assert (=> b!4779773 m!5756344))

(declare-fun m!5756346 () Bool)

(assert (=> b!4779773 m!5756346))

(declare-fun m!5756348 () Bool)

(assert (=> b!4779773 m!5756348))

(declare-fun m!5756350 () Bool)

(assert (=> b!4779773 m!5756350))

(declare-fun m!5756352 () Bool)

(assert (=> b!4779773 m!5756352))

(assert (=> b!4779773 m!5756346))

(declare-fun m!5756354 () Bool)

(assert (=> b!4779773 m!5756354))

(declare-fun m!5756356 () Bool)

(assert (=> b!4779773 m!5756356))

(assert (=> b!4779773 m!5756342))

(declare-fun m!5756358 () Bool)

(assert (=> b!4779773 m!5756358))

(declare-fun m!5756360 () Bool)

(assert (=> start!490502 m!5756360))

(declare-fun m!5756362 () Bool)

(assert (=> start!490502 m!5756362))

(declare-fun m!5756364 () Bool)

(assert (=> b!4779771 m!5756364))

(declare-fun m!5756366 () Bool)

(assert (=> b!4779776 m!5756366))

(declare-fun m!5756368 () Bool)

(assert (=> b!4779775 m!5756368))

(declare-fun m!5756370 () Bool)

(assert (=> b!4779775 m!5756370))

(declare-fun m!5756372 () Bool)

(assert (=> b!4779772 m!5756372))

(check-sat (not b!4779771) tp_is_empty!33173 (not b!4779775) (not b!4779774) (not b!4779776) tp_is_empty!33175 (not start!490502) (not b!4779772) (not b!4779773))
(check-sat)
(get-model)

(declare-fun d!1527918 () Bool)

(declare-fun res!2029197 () Bool)

(declare-fun e!2984017 () Bool)

(assert (=> d!1527918 (=> res!2029197 e!2984017)))

(assert (=> d!1527918 (= res!2029197 (and ((_ is Cons!53969) (_2!31515 (h!60388 (toList!6715 lm!2709)))) (= (_1!31514 (h!60387 (_2!31515 (h!60388 (toList!6715 lm!2709))))) key!6641)))))

(assert (=> d!1527918 (= (containsKey!3792 (_2!31515 (h!60388 (toList!6715 lm!2709))) key!6641) e!2984017)))

(declare-fun b!4779785 () Bool)

(declare-fun e!2984018 () Bool)

(assert (=> b!4779785 (= e!2984017 e!2984018)))

(declare-fun res!2029198 () Bool)

(assert (=> b!4779785 (=> (not res!2029198) (not e!2984018))))

(assert (=> b!4779785 (= res!2029198 ((_ is Cons!53969) (_2!31515 (h!60388 (toList!6715 lm!2709)))))))

(declare-fun b!4779786 () Bool)

(assert (=> b!4779786 (= e!2984018 (containsKey!3792 (t!361543 (_2!31515 (h!60388 (toList!6715 lm!2709)))) key!6641))))

(assert (= (and d!1527918 (not res!2029197)) b!4779785))

(assert (= (and b!4779785 res!2029198) b!4779786))

(declare-fun m!5756382 () Bool)

(assert (=> b!4779786 m!5756382))

(assert (=> b!4779775 d!1527918))

(declare-fun d!1527926 () Bool)

(declare-fun dynLambda!22009 (Int tuple2!56442) Bool)

(assert (=> d!1527926 (dynLambda!22009 lambda!227799 (h!60388 (toList!6715 lm!2709)))))

(declare-fun lt!1942506 () Unit!139163)

(declare-fun choose!34230 (List!54094 Int tuple2!56442) Unit!139163)

(assert (=> d!1527926 (= lt!1942506 (choose!34230 (toList!6715 lm!2709) lambda!227799 (h!60388 (toList!6715 lm!2709))))))

(declare-fun e!2984028 () Bool)

(assert (=> d!1527926 e!2984028))

(declare-fun res!2029208 () Bool)

(assert (=> d!1527926 (=> (not res!2029208) (not e!2984028))))

(assert (=> d!1527926 (= res!2029208 (forall!12102 (toList!6715 lm!2709) lambda!227799))))

(assert (=> d!1527926 (= (forallContained!4046 (toList!6715 lm!2709) lambda!227799 (h!60388 (toList!6715 lm!2709))) lt!1942506)))

(declare-fun b!4779796 () Bool)

(assert (=> b!4779796 (= e!2984028 (contains!17486 (toList!6715 lm!2709) (h!60388 (toList!6715 lm!2709))))))

(assert (= (and d!1527926 res!2029208) b!4779796))

(declare-fun b_lambda!185469 () Bool)

(assert (=> (not b_lambda!185469) (not d!1527926)))

(declare-fun m!5756394 () Bool)

(assert (=> d!1527926 m!5756394))

(declare-fun m!5756396 () Bool)

(assert (=> d!1527926 m!5756396))

(declare-fun m!5756398 () Bool)

(assert (=> d!1527926 m!5756398))

(declare-fun m!5756400 () Bool)

(assert (=> b!4779796 m!5756400))

(assert (=> b!4779775 d!1527926))

(declare-fun d!1527932 () Bool)

(declare-fun res!2029213 () Bool)

(declare-fun e!2984033 () Bool)

(assert (=> d!1527932 (=> res!2029213 e!2984033)))

(assert (=> d!1527932 (= res!2029213 ((_ is Nil!53970) (toList!6715 lm!2709)))))

(assert (=> d!1527932 (= (forall!12102 (toList!6715 lm!2709) lambda!227798) e!2984033)))

(declare-fun b!4779801 () Bool)

(declare-fun e!2984034 () Bool)

(assert (=> b!4779801 (= e!2984033 e!2984034)))

(declare-fun res!2029214 () Bool)

(assert (=> b!4779801 (=> (not res!2029214) (not e!2984034))))

(assert (=> b!4779801 (= res!2029214 (dynLambda!22009 lambda!227798 (h!60388 (toList!6715 lm!2709))))))

(declare-fun b!4779802 () Bool)

(assert (=> b!4779802 (= e!2984034 (forall!12102 (t!361544 (toList!6715 lm!2709)) lambda!227798))))

(assert (= (and d!1527932 (not res!2029213)) b!4779801))

(assert (= (and b!4779801 res!2029214) b!4779802))

(declare-fun b_lambda!185471 () Bool)

(assert (=> (not b_lambda!185471) (not b!4779801)))

(declare-fun m!5756402 () Bool)

(assert (=> b!4779801 m!5756402))

(declare-fun m!5756404 () Bool)

(assert (=> b!4779802 m!5756404))

(assert (=> start!490502 d!1527932))

(declare-fun d!1527934 () Bool)

(declare-fun isStrictlySorted!842 (List!54094) Bool)

(assert (=> d!1527934 (= (inv!69560 lm!2709) (isStrictlySorted!842 (toList!6715 lm!2709)))))

(declare-fun bs!1151549 () Bool)

(assert (= bs!1151549 d!1527934))

(declare-fun m!5756406 () Bool)

(assert (=> bs!1151549 m!5756406))

(assert (=> start!490502 d!1527934))

(declare-fun d!1527936 () Bool)

(declare-fun res!2029232 () Bool)

(declare-fun e!2984059 () Bool)

(assert (=> d!1527936 (=> res!2029232 e!2984059)))

(declare-fun e!2984061 () Bool)

(assert (=> d!1527936 (= res!2029232 e!2984061)))

(declare-fun res!2029231 () Bool)

(assert (=> d!1527936 (=> (not res!2029231) (not e!2984061))))

(assert (=> d!1527936 (= res!2029231 ((_ is Cons!53970) (toList!6715 lm!2709)))))

(assert (=> d!1527936 (= (containsKeyBiggerList!474 (toList!6715 lm!2709) key!6641) e!2984059)))

(declare-fun b!4779836 () Bool)

(assert (=> b!4779836 (= e!2984061 (containsKey!3792 (_2!31515 (h!60388 (toList!6715 lm!2709))) key!6641))))

(declare-fun b!4779837 () Bool)

(declare-fun e!2984060 () Bool)

(assert (=> b!4779837 (= e!2984059 e!2984060)))

(declare-fun res!2029230 () Bool)

(assert (=> b!4779837 (=> (not res!2029230) (not e!2984060))))

(assert (=> b!4779837 (= res!2029230 ((_ is Cons!53970) (toList!6715 lm!2709)))))

(declare-fun b!4779838 () Bool)

(assert (=> b!4779838 (= e!2984060 (containsKeyBiggerList!474 (t!361544 (toList!6715 lm!2709)) key!6641))))

(assert (= (and d!1527936 res!2029231) b!4779836))

(assert (= (and d!1527936 (not res!2029232)) b!4779837))

(assert (= (and b!4779837 res!2029230) b!4779838))

(assert (=> b!4779836 m!5756368))

(declare-fun m!5756428 () Bool)

(assert (=> b!4779838 m!5756428))

(assert (=> b!4779776 d!1527936))

(declare-fun bs!1151551 () Bool)

(declare-fun d!1527940 () Bool)

(assert (= bs!1151551 (and d!1527940 start!490502)))

(declare-fun lambda!227805 () Int)

(assert (=> bs!1151551 (not (= lambda!227805 lambda!227798))))

(declare-fun bs!1151552 () Bool)

(assert (= bs!1151552 (and d!1527940 b!4779775)))

(assert (=> bs!1151552 (= lambda!227805 lambda!227799)))

(assert (=> d!1527940 true))

(assert (=> d!1527940 (= (allKeysSameHashInMap!2223 lm!2709 hashF!1687) (forall!12102 (toList!6715 lm!2709) lambda!227805))))

(declare-fun bs!1151553 () Bool)

(assert (= bs!1151553 d!1527940))

(declare-fun m!5756432 () Bool)

(assert (=> bs!1151553 m!5756432))

(assert (=> b!4779771 d!1527940))

(declare-fun d!1527944 () Bool)

(declare-fun c!814877 () Bool)

(declare-fun e!2984082 () Bool)

(assert (=> d!1527944 (= c!814877 e!2984082)))

(declare-fun res!2029247 () Bool)

(assert (=> d!1527944 (=> (not res!2029247) (not e!2984082))))

(assert (=> d!1527944 (= res!2029247 ((_ is Cons!53970) (toList!6715 lm!2709)))))

(declare-fun e!2984081 () V!15780)

(assert (=> d!1527944 (= (getValue!48 (toList!6715 lm!2709) key!6641) e!2984081)))

(declare-fun b!4779871 () Bool)

(assert (=> b!4779871 (= e!2984082 (containsKey!3792 (_2!31515 (h!60388 (toList!6715 lm!2709))) key!6641))))

(declare-fun b!4779869 () Bool)

(assert (=> b!4779869 (= e!2984081 (_2!31514 (get!18337 (getPair!790 (_2!31515 (h!60388 (toList!6715 lm!2709))) key!6641))))))

(declare-fun b!4779870 () Bool)

(assert (=> b!4779870 (= e!2984081 (getValue!48 (t!361544 (toList!6715 lm!2709)) key!6641))))

(assert (= (and d!1527944 res!2029247) b!4779871))

(assert (= (and d!1527944 c!814877) b!4779869))

(assert (= (and d!1527944 (not c!814877)) b!4779870))

(assert (=> b!4779871 m!5756368))

(declare-fun m!5756448 () Bool)

(assert (=> b!4779869 m!5756448))

(assert (=> b!4779869 m!5756448))

(declare-fun m!5756450 () Bool)

(assert (=> b!4779869 m!5756450))

(declare-fun m!5756452 () Bool)

(assert (=> b!4779870 m!5756452))

(assert (=> b!4779772 d!1527944))

(declare-fun d!1527950 () Bool)

(assert (=> d!1527950 (contains!17486 (toList!6715 lm!2709) (tuple2!56443 lt!1942490 lt!1942497))))

(declare-fun lt!1942539 () Unit!139163)

(declare-fun choose!34231 (ListLongMap!5137 (_ BitVec 64) List!54093) Unit!139163)

(assert (=> d!1527950 (= lt!1942539 (choose!34231 lm!2709 lt!1942490 lt!1942497))))

(assert (=> d!1527950 (contains!17487 lm!2709 lt!1942490)))

(assert (=> d!1527950 (= (lemmaGetValueImpliesTupleContained!597 lm!2709 lt!1942490 lt!1942497) lt!1942539)))

(declare-fun bs!1151557 () Bool)

(assert (= bs!1151557 d!1527950))

(declare-fun m!5756462 () Bool)

(assert (=> bs!1151557 m!5756462))

(declare-fun m!5756464 () Bool)

(assert (=> bs!1151557 m!5756464))

(assert (=> bs!1151557 m!5756354))

(assert (=> b!4779773 d!1527950))

(declare-fun bs!1151570 () Bool)

(declare-fun d!1527954 () Bool)

(assert (= bs!1151570 (and d!1527954 start!490502)))

(declare-fun lambda!227817 () Int)

(assert (=> bs!1151570 (= lambda!227817 lambda!227798)))

(declare-fun bs!1151571 () Bool)

(assert (= bs!1151571 (and d!1527954 b!4779775)))

(assert (=> bs!1151571 (not (= lambda!227817 lambda!227799))))

(declare-fun bs!1151572 () Bool)

(assert (= bs!1151572 (and d!1527954 d!1527940)))

(assert (=> bs!1151572 (not (= lambda!227817 lambda!227805))))

(assert (=> d!1527954 (contains!17488 (extractMap!2345 (toList!6715 lm!2709)) key!6641)))

(declare-fun lt!1942563 () Unit!139163)

(declare-fun choose!34232 (ListLongMap!5137 K!15534 Hashable!6818) Unit!139163)

(assert (=> d!1527954 (= lt!1942563 (choose!34232 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1527954 (forall!12102 (toList!6715 lm!2709) lambda!227817)))

(assert (=> d!1527954 (= (lemmaListContainsThenExtractedMapContains!666 lm!2709 key!6641 hashF!1687) lt!1942563)))

(declare-fun bs!1151573 () Bool)

(assert (= bs!1151573 d!1527954))

(assert (=> bs!1151573 m!5756342))

(assert (=> bs!1151573 m!5756342))

(assert (=> bs!1151573 m!5756358))

(declare-fun m!5756486 () Bool)

(assert (=> bs!1151573 m!5756486))

(declare-fun m!5756488 () Bool)

(assert (=> bs!1151573 m!5756488))

(assert (=> b!4779773 d!1527954))

(declare-fun d!1527964 () Bool)

(assert (=> d!1527964 (= (get!18337 lt!1942492) (v!48100 lt!1942492))))

(assert (=> b!4779773 d!1527964))

(declare-fun d!1527966 () Bool)

(declare-fun e!2984096 () Bool)

(assert (=> d!1527966 e!2984096))

(declare-fun res!2029253 () Bool)

(assert (=> d!1527966 (=> res!2029253 e!2984096)))

(declare-fun lt!1942573 () Bool)

(assert (=> d!1527966 (= res!2029253 (not lt!1942573))))

(declare-fun lt!1942574 () Bool)

(assert (=> d!1527966 (= lt!1942573 lt!1942574)))

(declare-fun lt!1942572 () Unit!139163)

(declare-fun e!2984097 () Unit!139163)

(assert (=> d!1527966 (= lt!1942572 e!2984097)))

(declare-fun c!814886 () Bool)

(assert (=> d!1527966 (= c!814886 lt!1942574)))

(declare-fun containsKey!3795 (List!54094 (_ BitVec 64)) Bool)

(assert (=> d!1527966 (= lt!1942574 (containsKey!3795 (toList!6715 lm!2709) lt!1942490))))

(assert (=> d!1527966 (= (contains!17487 lm!2709 lt!1942490) lt!1942573)))

(declare-fun b!4779895 () Bool)

(declare-fun lt!1942575 () Unit!139163)

(assert (=> b!4779895 (= e!2984097 lt!1942575)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2064 (List!54094 (_ BitVec 64)) Unit!139163)

(assert (=> b!4779895 (= lt!1942575 (lemmaContainsKeyImpliesGetValueByKeyDefined!2064 (toList!6715 lm!2709) lt!1942490))))

(declare-datatypes ((Option!12913 0))(
  ( (None!12912) (Some!12912 (v!48107 List!54093)) )
))
(declare-fun isDefined!10057 (Option!12913) Bool)

(declare-fun getValueByKey!2270 (List!54094 (_ BitVec 64)) Option!12913)

(assert (=> b!4779895 (isDefined!10057 (getValueByKey!2270 (toList!6715 lm!2709) lt!1942490))))

(declare-fun b!4779896 () Bool)

(declare-fun Unit!139168 () Unit!139163)

(assert (=> b!4779896 (= e!2984097 Unit!139168)))

(declare-fun b!4779897 () Bool)

(assert (=> b!4779897 (= e!2984096 (isDefined!10057 (getValueByKey!2270 (toList!6715 lm!2709) lt!1942490)))))

(assert (= (and d!1527966 c!814886) b!4779895))

(assert (= (and d!1527966 (not c!814886)) b!4779896))

(assert (= (and d!1527966 (not res!2029253)) b!4779897))

(declare-fun m!5756490 () Bool)

(assert (=> d!1527966 m!5756490))

(declare-fun m!5756492 () Bool)

(assert (=> b!4779895 m!5756492))

(declare-fun m!5756494 () Bool)

(assert (=> b!4779895 m!5756494))

(assert (=> b!4779895 m!5756494))

(declare-fun m!5756496 () Bool)

(assert (=> b!4779895 m!5756496))

(assert (=> b!4779897 m!5756494))

(assert (=> b!4779897 m!5756494))

(assert (=> b!4779897 m!5756496))

(assert (=> b!4779773 d!1527966))

(declare-fun d!1527968 () Bool)

(declare-fun isEmpty!29345 (Option!12910) Bool)

(assert (=> d!1527968 (= (isDefined!10054 lt!1942492) (not (isEmpty!29345 lt!1942492)))))

(declare-fun bs!1151574 () Bool)

(assert (= bs!1151574 d!1527968))

(declare-fun m!5756498 () Bool)

(assert (=> bs!1151574 m!5756498))

(assert (=> b!4779773 d!1527968))

(declare-fun bm!334683 () Bool)

(declare-fun call!334688 () Bool)

(declare-datatypes ((List!54096 0))(
  ( (Nil!53972) (Cons!53972 (h!60390 K!15534) (t!361546 List!54096)) )
))
(declare-fun e!2984150 () List!54096)

(declare-fun contains!17491 (List!54096 K!15534) Bool)

(assert (=> bm!334683 (= call!334688 (contains!17491 e!2984150 key!6641))))

(declare-fun c!814898 () Bool)

(declare-fun c!814896 () Bool)

(assert (=> bm!334683 (= c!814898 c!814896)))

(declare-fun b!4779964 () Bool)

(declare-fun e!2984152 () Bool)

(declare-fun keys!19652 (ListMap!6187) List!54096)

(assert (=> b!4779964 (= e!2984152 (not (contains!17491 (keys!19652 (extractMap!2345 (toList!6715 lm!2709))) key!6641)))))

(declare-fun b!4779965 () Bool)

(declare-fun e!2984147 () Unit!139163)

(declare-fun lt!1942623 () Unit!139163)

(assert (=> b!4779965 (= e!2984147 lt!1942623)))

(declare-fun lt!1942624 () Unit!139163)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2065 (List!54093 K!15534) Unit!139163)

(assert (=> b!4779965 (= lt!1942624 (lemmaContainsKeyImpliesGetValueByKeyDefined!2065 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))) key!6641))))

(declare-datatypes ((Option!12914 0))(
  ( (None!12913) (Some!12913 (v!48108 V!15780)) )
))
(declare-fun isDefined!10058 (Option!12914) Bool)

(declare-fun getValueByKey!2271 (List!54093 K!15534) Option!12914)

(assert (=> b!4779965 (isDefined!10058 (getValueByKey!2271 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))) key!6641))))

(declare-fun lt!1942617 () Unit!139163)

(assert (=> b!4779965 (= lt!1942617 lt!1942624)))

(declare-fun lemmaInListThenGetKeysListContains!1030 (List!54093 K!15534) Unit!139163)

(assert (=> b!4779965 (= lt!1942623 (lemmaInListThenGetKeysListContains!1030 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))) key!6641))))

(assert (=> b!4779965 call!334688))

(declare-fun b!4779966 () Bool)

(declare-fun e!2984151 () Unit!139163)

(declare-fun Unit!139169 () Unit!139163)

(assert (=> b!4779966 (= e!2984151 Unit!139169)))

(declare-fun b!4779967 () Bool)

(declare-fun e!2984148 () Bool)

(declare-fun e!2984149 () Bool)

(assert (=> b!4779967 (= e!2984148 e!2984149)))

(declare-fun res!2029297 () Bool)

(assert (=> b!4779967 (=> (not res!2029297) (not e!2984149))))

(assert (=> b!4779967 (= res!2029297 (isDefined!10058 (getValueByKey!2271 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))) key!6641)))))

(declare-fun b!4779968 () Bool)

(assert (=> b!4779968 (= e!2984150 (keys!19652 (extractMap!2345 (toList!6715 lm!2709))))))

(declare-fun b!4779969 () Bool)

(declare-fun getKeysList!1035 (List!54093) List!54096)

(assert (=> b!4779969 (= e!2984150 (getKeysList!1035 (toList!6716 (extractMap!2345 (toList!6715 lm!2709)))))))

(declare-fun b!4779970 () Bool)

(assert (=> b!4779970 (= e!2984149 (contains!17491 (keys!19652 (extractMap!2345 (toList!6715 lm!2709))) key!6641))))

(declare-fun b!4779971 () Bool)

(assert (=> b!4779971 (= e!2984147 e!2984151)))

(declare-fun c!814897 () Bool)

(assert (=> b!4779971 (= c!814897 call!334688)))

(declare-fun d!1527970 () Bool)

(assert (=> d!1527970 e!2984148))

(declare-fun res!2029298 () Bool)

(assert (=> d!1527970 (=> res!2029298 e!2984148)))

(assert (=> d!1527970 (= res!2029298 e!2984152)))

(declare-fun res!2029299 () Bool)

(assert (=> d!1527970 (=> (not res!2029299) (not e!2984152))))

(declare-fun lt!1942621 () Bool)

(assert (=> d!1527970 (= res!2029299 (not lt!1942621))))

(declare-fun lt!1942619 () Bool)

(assert (=> d!1527970 (= lt!1942621 lt!1942619)))

(declare-fun lt!1942618 () Unit!139163)

(assert (=> d!1527970 (= lt!1942618 e!2984147)))

(assert (=> d!1527970 (= c!814896 lt!1942619)))

(declare-fun containsKey!3796 (List!54093 K!15534) Bool)

(assert (=> d!1527970 (= lt!1942619 (containsKey!3796 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))) key!6641))))

(assert (=> d!1527970 (= (contains!17488 (extractMap!2345 (toList!6715 lm!2709)) key!6641) lt!1942621)))

(declare-fun b!4779972 () Bool)

(assert (=> b!4779972 false))

(declare-fun lt!1942620 () Unit!139163)

(declare-fun lt!1942622 () Unit!139163)

(assert (=> b!4779972 (= lt!1942620 lt!1942622)))

(assert (=> b!4779972 (containsKey!3796 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))) key!6641)))

(declare-fun lemmaInGetKeysListThenContainsKey!1035 (List!54093 K!15534) Unit!139163)

(assert (=> b!4779972 (= lt!1942622 (lemmaInGetKeysListThenContainsKey!1035 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))) key!6641))))

(declare-fun Unit!139170 () Unit!139163)

(assert (=> b!4779972 (= e!2984151 Unit!139170)))

(assert (= (and d!1527970 c!814896) b!4779965))

(assert (= (and d!1527970 (not c!814896)) b!4779971))

(assert (= (and b!4779971 c!814897) b!4779972))

(assert (= (and b!4779971 (not c!814897)) b!4779966))

(assert (= (or b!4779965 b!4779971) bm!334683))

(assert (= (and bm!334683 c!814898) b!4779969))

(assert (= (and bm!334683 (not c!814898)) b!4779968))

(assert (= (and d!1527970 res!2029299) b!4779964))

(assert (= (and d!1527970 (not res!2029298)) b!4779967))

(assert (= (and b!4779967 res!2029297) b!4779970))

(declare-fun m!5756550 () Bool)

(assert (=> b!4779969 m!5756550))

(declare-fun m!5756552 () Bool)

(assert (=> bm!334683 m!5756552))

(declare-fun m!5756554 () Bool)

(assert (=> b!4779965 m!5756554))

(declare-fun m!5756556 () Bool)

(assert (=> b!4779965 m!5756556))

(assert (=> b!4779965 m!5756556))

(declare-fun m!5756558 () Bool)

(assert (=> b!4779965 m!5756558))

(declare-fun m!5756560 () Bool)

(assert (=> b!4779965 m!5756560))

(declare-fun m!5756562 () Bool)

(assert (=> d!1527970 m!5756562))

(assert (=> b!4779964 m!5756342))

(declare-fun m!5756564 () Bool)

(assert (=> b!4779964 m!5756564))

(assert (=> b!4779964 m!5756564))

(declare-fun m!5756566 () Bool)

(assert (=> b!4779964 m!5756566))

(assert (=> b!4779968 m!5756342))

(assert (=> b!4779968 m!5756564))

(assert (=> b!4779972 m!5756562))

(declare-fun m!5756568 () Bool)

(assert (=> b!4779972 m!5756568))

(assert (=> b!4779970 m!5756342))

(assert (=> b!4779970 m!5756564))

(assert (=> b!4779970 m!5756564))

(assert (=> b!4779970 m!5756566))

(assert (=> b!4779967 m!5756556))

(assert (=> b!4779967 m!5756556))

(assert (=> b!4779967 m!5756558))

(assert (=> b!4779773 d!1527970))

(declare-fun d!1527990 () Bool)

(declare-fun get!18339 (Option!12913) List!54093)

(assert (=> d!1527990 (= (apply!12873 lm!2709 lt!1942490) (get!18339 (getValueByKey!2270 (toList!6715 lm!2709) lt!1942490)))))

(declare-fun bs!1151585 () Bool)

(assert (= bs!1151585 d!1527990))

(assert (=> bs!1151585 m!5756494))

(assert (=> bs!1151585 m!5756494))

(declare-fun m!5756570 () Bool)

(assert (=> bs!1151585 m!5756570))

(assert (=> b!4779773 d!1527990))

(declare-fun bs!1151586 () Bool)

(declare-fun d!1527992 () Bool)

(assert (= bs!1151586 (and d!1527992 start!490502)))

(declare-fun lambda!227831 () Int)

(assert (=> bs!1151586 (= lambda!227831 lambda!227798)))

(declare-fun bs!1151587 () Bool)

(assert (= bs!1151587 (and d!1527992 b!4779775)))

(assert (=> bs!1151587 (not (= lambda!227831 lambda!227799))))

(declare-fun bs!1151588 () Bool)

(assert (= bs!1151588 (and d!1527992 d!1527940)))

(assert (=> bs!1151588 (not (= lambda!227831 lambda!227805))))

(declare-fun bs!1151589 () Bool)

(assert (= bs!1151589 (and d!1527992 d!1527954)))

(assert (=> bs!1151589 (= lambda!227831 lambda!227817)))

(declare-fun b!4779981 () Bool)

(declare-fun res!2029311 () Bool)

(declare-fun e!2984158 () Bool)

(assert (=> b!4779981 (=> (not res!2029311) (not e!2984158))))

(assert (=> b!4779981 (= res!2029311 (allKeysSameHashInMap!2223 lm!2709 hashF!1687))))

(declare-fun lt!1942647 () (_ BitVec 64))

(declare-fun e!2984157 () Bool)

(declare-fun b!4779984 () Bool)

(declare-fun lt!1942642 () List!54093)

(assert (=> b!4779984 (= e!2984157 (= (getValueByKey!2270 (toList!6715 lm!2709) lt!1942647) (Some!12912 lt!1942642)))))

(declare-fun b!4779982 () Bool)

(declare-fun res!2029310 () Bool)

(assert (=> b!4779982 (=> (not res!2029310) (not e!2984158))))

(assert (=> b!4779982 (= res!2029310 (contains!17488 (extractMap!2345 (toList!6715 lm!2709)) key!6641))))

(assert (=> d!1527992 e!2984158))

(declare-fun res!2029309 () Bool)

(assert (=> d!1527992 (=> (not res!2029309) (not e!2984158))))

(assert (=> d!1527992 (= res!2029309 (forall!12102 (toList!6715 lm!2709) lambda!227831))))

(declare-fun lt!1942643 () Unit!139163)

(declare-fun choose!34233 (ListLongMap!5137 K!15534 Hashable!6818) Unit!139163)

(assert (=> d!1527992 (= lt!1942643 (choose!34233 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1527992 (forall!12102 (toList!6715 lm!2709) lambda!227831)))

(assert (=> d!1527992 (= (lemmaInGenMapThenGetPairDefined!564 lm!2709 key!6641 hashF!1687) lt!1942643)))

(declare-fun b!4779983 () Bool)

(assert (=> b!4779983 (= e!2984158 (isDefined!10054 (getPair!790 (apply!12873 lm!2709 (hash!4799 hashF!1687 key!6641)) key!6641)))))

(declare-fun lt!1942644 () Unit!139163)

(assert (=> b!4779983 (= lt!1942644 (forallContained!4046 (toList!6715 lm!2709) lambda!227831 (tuple2!56443 (hash!4799 hashF!1687 key!6641) (apply!12873 lm!2709 (hash!4799 hashF!1687 key!6641)))))))

(declare-fun lt!1942648 () Unit!139163)

(declare-fun lt!1942645 () Unit!139163)

(assert (=> b!4779983 (= lt!1942648 lt!1942645)))

(assert (=> b!4779983 (contains!17486 (toList!6715 lm!2709) (tuple2!56443 lt!1942647 lt!1942642))))

(assert (=> b!4779983 (= lt!1942645 (lemmaGetValueImpliesTupleContained!597 lm!2709 lt!1942647 lt!1942642))))

(assert (=> b!4779983 e!2984157))

(declare-fun res!2029308 () Bool)

(assert (=> b!4779983 (=> (not res!2029308) (not e!2984157))))

(assert (=> b!4779983 (= res!2029308 (contains!17487 lm!2709 lt!1942647))))

(assert (=> b!4779983 (= lt!1942642 (apply!12873 lm!2709 (hash!4799 hashF!1687 key!6641)))))

(assert (=> b!4779983 (= lt!1942647 (hash!4799 hashF!1687 key!6641))))

(declare-fun lt!1942646 () Unit!139163)

(declare-fun lt!1942641 () Unit!139163)

(assert (=> b!4779983 (= lt!1942646 lt!1942641)))

(assert (=> b!4779983 (contains!17487 lm!2709 (hash!4799 hashF!1687 key!6641))))

(assert (=> b!4779983 (= lt!1942641 (lemmaInGenMapThenLongMapContainsHash!1014 lm!2709 key!6641 hashF!1687))))

(assert (= (and d!1527992 res!2029309) b!4779981))

(assert (= (and b!4779981 res!2029311) b!4779982))

(assert (= (and b!4779982 res!2029310) b!4779983))

(assert (= (and b!4779983 res!2029308) b!4779984))

(declare-fun m!5756572 () Bool)

(assert (=> d!1527992 m!5756572))

(declare-fun m!5756574 () Bool)

(assert (=> d!1527992 m!5756574))

(assert (=> d!1527992 m!5756572))

(assert (=> b!4779983 m!5756344))

(declare-fun m!5756576 () Bool)

(assert (=> b!4779983 m!5756576))

(declare-fun m!5756578 () Bool)

(assert (=> b!4779983 m!5756578))

(assert (=> b!4779983 m!5756344))

(assert (=> b!4779983 m!5756344))

(declare-fun m!5756580 () Bool)

(assert (=> b!4779983 m!5756580))

(assert (=> b!4779983 m!5756352))

(declare-fun m!5756582 () Bool)

(assert (=> b!4779983 m!5756582))

(declare-fun m!5756584 () Bool)

(assert (=> b!4779983 m!5756584))

(declare-fun m!5756586 () Bool)

(assert (=> b!4779983 m!5756586))

(assert (=> b!4779983 m!5756576))

(assert (=> b!4779983 m!5756584))

(declare-fun m!5756588 () Bool)

(assert (=> b!4779983 m!5756588))

(declare-fun m!5756590 () Bool)

(assert (=> b!4779983 m!5756590))

(assert (=> b!4779981 m!5756364))

(declare-fun m!5756592 () Bool)

(assert (=> b!4779984 m!5756592))

(assert (=> b!4779982 m!5756342))

(assert (=> b!4779982 m!5756342))

(assert (=> b!4779982 m!5756358))

(assert (=> b!4779773 d!1527992))

(declare-fun b!4780001 () Bool)

(declare-fun e!2984170 () Bool)

(assert (=> b!4780001 (= e!2984170 (not (containsKey!3792 lt!1942497 key!6641)))))

(declare-fun b!4780002 () Bool)

(declare-fun e!2984169 () Bool)

(declare-fun e!2984173 () Bool)

(assert (=> b!4780002 (= e!2984169 e!2984173)))

(declare-fun res!2029322 () Bool)

(assert (=> b!4780002 (=> (not res!2029322) (not e!2984173))))

(declare-fun lt!1942651 () Option!12910)

(assert (=> b!4780002 (= res!2029322 (isDefined!10054 lt!1942651))))

(declare-fun d!1527994 () Bool)

(assert (=> d!1527994 e!2984169))

(declare-fun res!2029323 () Bool)

(assert (=> d!1527994 (=> res!2029323 e!2984169)))

(assert (=> d!1527994 (= res!2029323 e!2984170)))

(declare-fun res!2029320 () Bool)

(assert (=> d!1527994 (=> (not res!2029320) (not e!2984170))))

(assert (=> d!1527994 (= res!2029320 (isEmpty!29345 lt!1942651))))

(declare-fun e!2984172 () Option!12910)

(assert (=> d!1527994 (= lt!1942651 e!2984172)))

(declare-fun c!814904 () Bool)

(assert (=> d!1527994 (= c!814904 (and ((_ is Cons!53969) lt!1942497) (= (_1!31514 (h!60387 lt!1942497)) key!6641)))))

(declare-fun noDuplicateKeys!2289 (List!54093) Bool)

(assert (=> d!1527994 (noDuplicateKeys!2289 lt!1942497)))

(assert (=> d!1527994 (= (getPair!790 lt!1942497 key!6641) lt!1942651)))

(declare-fun b!4780003 () Bool)

(declare-fun contains!17492 (List!54093 tuple2!56440) Bool)

(assert (=> b!4780003 (= e!2984173 (contains!17492 lt!1942497 (get!18337 lt!1942651)))))

(declare-fun b!4780004 () Bool)

(declare-fun e!2984171 () Option!12910)

(assert (=> b!4780004 (= e!2984171 None!12909)))

(declare-fun b!4780005 () Bool)

(assert (=> b!4780005 (= e!2984171 (getPair!790 (t!361543 lt!1942497) key!6641))))

(declare-fun b!4780006 () Bool)

(declare-fun res!2029321 () Bool)

(assert (=> b!4780006 (=> (not res!2029321) (not e!2984173))))

(assert (=> b!4780006 (= res!2029321 (= (_1!31514 (get!18337 lt!1942651)) key!6641))))

(declare-fun b!4780007 () Bool)

(assert (=> b!4780007 (= e!2984172 (Some!12909 (h!60387 lt!1942497)))))

(declare-fun b!4780008 () Bool)

(assert (=> b!4780008 (= e!2984172 e!2984171)))

(declare-fun c!814903 () Bool)

(assert (=> b!4780008 (= c!814903 ((_ is Cons!53969) lt!1942497))))

(assert (= (and d!1527994 c!814904) b!4780007))

(assert (= (and d!1527994 (not c!814904)) b!4780008))

(assert (= (and b!4780008 c!814903) b!4780005))

(assert (= (and b!4780008 (not c!814903)) b!4780004))

(assert (= (and d!1527994 res!2029320) b!4780001))

(assert (= (and d!1527994 (not res!2029323)) b!4780002))

(assert (= (and b!4780002 res!2029322) b!4780006))

(assert (= (and b!4780006 res!2029321) b!4780003))

(declare-fun m!5756594 () Bool)

(assert (=> b!4780006 m!5756594))

(assert (=> b!4780003 m!5756594))

(assert (=> b!4780003 m!5756594))

(declare-fun m!5756596 () Bool)

(assert (=> b!4780003 m!5756596))

(declare-fun m!5756598 () Bool)

(assert (=> b!4780001 m!5756598))

(declare-fun m!5756600 () Bool)

(assert (=> d!1527994 m!5756600))

(declare-fun m!5756602 () Bool)

(assert (=> d!1527994 m!5756602))

(declare-fun m!5756604 () Bool)

(assert (=> b!4780005 m!5756604))

(declare-fun m!5756606 () Bool)

(assert (=> b!4780002 m!5756606))

(assert (=> b!4779773 d!1527994))

(declare-fun d!1527996 () Bool)

(declare-fun hash!4801 (Hashable!6818 K!15534) (_ BitVec 64))

(assert (=> d!1527996 (= (hash!4799 hashF!1687 key!6641) (hash!4801 hashF!1687 key!6641))))

(declare-fun bs!1151590 () Bool)

(assert (= bs!1151590 d!1527996))

(declare-fun m!5756608 () Bool)

(assert (=> bs!1151590 m!5756608))

(assert (=> b!4779773 d!1527996))

(declare-fun bs!1151591 () Bool)

(declare-fun d!1527998 () Bool)

(assert (= bs!1151591 (and d!1527998 d!1527954)))

(declare-fun lambda!227834 () Int)

(assert (=> bs!1151591 (= lambda!227834 lambda!227817)))

(declare-fun bs!1151592 () Bool)

(assert (= bs!1151592 (and d!1527998 d!1527940)))

(assert (=> bs!1151592 (not (= lambda!227834 lambda!227805))))

(declare-fun bs!1151593 () Bool)

(assert (= bs!1151593 (and d!1527998 d!1527992)))

(assert (=> bs!1151593 (= lambda!227834 lambda!227831)))

(declare-fun bs!1151594 () Bool)

(assert (= bs!1151594 (and d!1527998 start!490502)))

(assert (=> bs!1151594 (= lambda!227834 lambda!227798)))

(declare-fun bs!1151595 () Bool)

(assert (= bs!1151595 (and d!1527998 b!4779775)))

(assert (=> bs!1151595 (not (= lambda!227834 lambda!227799))))

(declare-fun lt!1942654 () ListMap!6187)

(declare-fun invariantList!1691 (List!54093) Bool)

(assert (=> d!1527998 (invariantList!1691 (toList!6716 lt!1942654))))

(declare-fun e!2984176 () ListMap!6187)

(assert (=> d!1527998 (= lt!1942654 e!2984176)))

(declare-fun c!814907 () Bool)

(assert (=> d!1527998 (= c!814907 ((_ is Cons!53970) (toList!6715 lm!2709)))))

(assert (=> d!1527998 (forall!12102 (toList!6715 lm!2709) lambda!227834)))

(assert (=> d!1527998 (= (extractMap!2345 (toList!6715 lm!2709)) lt!1942654)))

(declare-fun b!4780013 () Bool)

(declare-fun addToMapMapFromBucket!1656 (List!54093 ListMap!6187) ListMap!6187)

(assert (=> b!4780013 (= e!2984176 (addToMapMapFromBucket!1656 (_2!31515 (h!60388 (toList!6715 lm!2709))) (extractMap!2345 (t!361544 (toList!6715 lm!2709)))))))

(declare-fun b!4780014 () Bool)

(assert (=> b!4780014 (= e!2984176 (ListMap!6188 Nil!53969))))

(assert (= (and d!1527998 c!814907) b!4780013))

(assert (= (and d!1527998 (not c!814907)) b!4780014))

(declare-fun m!5756610 () Bool)

(assert (=> d!1527998 m!5756610))

(declare-fun m!5756612 () Bool)

(assert (=> d!1527998 m!5756612))

(declare-fun m!5756614 () Bool)

(assert (=> b!4780013 m!5756614))

(assert (=> b!4780013 m!5756614))

(declare-fun m!5756616 () Bool)

(assert (=> b!4780013 m!5756616))

(assert (=> b!4779773 d!1527998))

(declare-fun bs!1151596 () Bool)

(declare-fun d!1528000 () Bool)

(assert (= bs!1151596 (and d!1528000 d!1527998)))

(declare-fun lambda!227837 () Int)

(assert (=> bs!1151596 (= lambda!227837 lambda!227834)))

(declare-fun bs!1151597 () Bool)

(assert (= bs!1151597 (and d!1528000 d!1527954)))

(assert (=> bs!1151597 (= lambda!227837 lambda!227817)))

(declare-fun bs!1151598 () Bool)

(assert (= bs!1151598 (and d!1528000 d!1527940)))

(assert (=> bs!1151598 (not (= lambda!227837 lambda!227805))))

(declare-fun bs!1151599 () Bool)

(assert (= bs!1151599 (and d!1528000 d!1527992)))

(assert (=> bs!1151599 (= lambda!227837 lambda!227831)))

(declare-fun bs!1151600 () Bool)

(assert (= bs!1151600 (and d!1528000 start!490502)))

(assert (=> bs!1151600 (= lambda!227837 lambda!227798)))

(declare-fun bs!1151601 () Bool)

(assert (= bs!1151601 (and d!1528000 b!4779775)))

(assert (=> bs!1151601 (not (= lambda!227837 lambda!227799))))

(assert (=> d!1528000 (contains!17487 lm!2709 (hash!4799 hashF!1687 key!6641))))

(declare-fun lt!1942657 () Unit!139163)

(declare-fun choose!34234 (ListLongMap!5137 K!15534 Hashable!6818) Unit!139163)

(assert (=> d!1528000 (= lt!1942657 (choose!34234 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1528000 (forall!12102 (toList!6715 lm!2709) lambda!227837)))

(assert (=> d!1528000 (= (lemmaInGenMapThenLongMapContainsHash!1014 lm!2709 key!6641 hashF!1687) lt!1942657)))

(declare-fun bs!1151602 () Bool)

(assert (= bs!1151602 d!1528000))

(assert (=> bs!1151602 m!5756344))

(assert (=> bs!1151602 m!5756344))

(assert (=> bs!1151602 m!5756580))

(declare-fun m!5756618 () Bool)

(assert (=> bs!1151602 m!5756618))

(declare-fun m!5756620 () Bool)

(assert (=> bs!1151602 m!5756620))

(assert (=> b!4779773 d!1528000))

(declare-fun d!1528002 () Bool)

(declare-fun lt!1942660 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9636 (List!54094) (InoxSet tuple2!56442))

(assert (=> d!1528002 (= lt!1942660 (select (content!9636 (toList!6715 lm!2709)) lt!1942496))))

(declare-fun e!2984181 () Bool)

(assert (=> d!1528002 (= lt!1942660 e!2984181)))

(declare-fun res!2029328 () Bool)

(assert (=> d!1528002 (=> (not res!2029328) (not e!2984181))))

(assert (=> d!1528002 (= res!2029328 ((_ is Cons!53970) (toList!6715 lm!2709)))))

(assert (=> d!1528002 (= (contains!17486 (toList!6715 lm!2709) lt!1942496) lt!1942660)))

(declare-fun b!4780019 () Bool)

(declare-fun e!2984182 () Bool)

(assert (=> b!4780019 (= e!2984181 e!2984182)))

(declare-fun res!2029329 () Bool)

(assert (=> b!4780019 (=> res!2029329 e!2984182)))

(assert (=> b!4780019 (= res!2029329 (= (h!60388 (toList!6715 lm!2709)) lt!1942496))))

(declare-fun b!4780020 () Bool)

(assert (=> b!4780020 (= e!2984182 (contains!17486 (t!361544 (toList!6715 lm!2709)) lt!1942496))))

(assert (= (and d!1528002 res!2029328) b!4780019))

(assert (= (and b!4780019 (not res!2029329)) b!4780020))

(declare-fun m!5756622 () Bool)

(assert (=> d!1528002 m!5756622))

(declare-fun m!5756624 () Bool)

(assert (=> d!1528002 m!5756624))

(declare-fun m!5756626 () Bool)

(assert (=> b!4780020 m!5756626))

(assert (=> b!4779773 d!1528002))

(declare-fun d!1528004 () Bool)

(assert (=> d!1528004 (dynLambda!22009 lambda!227798 lt!1942496)))

(declare-fun lt!1942661 () Unit!139163)

(assert (=> d!1528004 (= lt!1942661 (choose!34230 (toList!6715 lm!2709) lambda!227798 lt!1942496))))

(declare-fun e!2984183 () Bool)

(assert (=> d!1528004 e!2984183))

(declare-fun res!2029330 () Bool)

(assert (=> d!1528004 (=> (not res!2029330) (not e!2984183))))

(assert (=> d!1528004 (= res!2029330 (forall!12102 (toList!6715 lm!2709) lambda!227798))))

(assert (=> d!1528004 (= (forallContained!4046 (toList!6715 lm!2709) lambda!227798 lt!1942496) lt!1942661)))

(declare-fun b!4780021 () Bool)

(assert (=> b!4780021 (= e!2984183 (contains!17486 (toList!6715 lm!2709) lt!1942496))))

(assert (= (and d!1528004 res!2029330) b!4780021))

(declare-fun b_lambda!185483 () Bool)

(assert (=> (not b_lambda!185483) (not d!1528004)))

(declare-fun m!5756628 () Bool)

(assert (=> d!1528004 m!5756628))

(declare-fun m!5756630 () Bool)

(assert (=> d!1528004 m!5756630))

(assert (=> d!1528004 m!5756360))

(assert (=> b!4780021 m!5756332))

(assert (=> b!4779773 d!1528004))

(declare-fun b!4780026 () Bool)

(declare-fun e!2984186 () Bool)

(declare-fun tp!1357367 () Bool)

(declare-fun tp!1357368 () Bool)

(assert (=> b!4780026 (= e!2984186 (and tp!1357367 tp!1357368))))

(assert (=> b!4779774 (= tp!1357356 e!2984186)))

(assert (= (and b!4779774 ((_ is Cons!53970) (toList!6715 lm!2709))) b!4780026))

(declare-fun b_lambda!185485 () Bool)

(assert (= b_lambda!185471 (or start!490502 b_lambda!185485)))

(declare-fun bs!1151603 () Bool)

(declare-fun d!1528006 () Bool)

(assert (= bs!1151603 (and d!1528006 start!490502)))

(assert (=> bs!1151603 (= (dynLambda!22009 lambda!227798 (h!60388 (toList!6715 lm!2709))) (noDuplicateKeys!2289 (_2!31515 (h!60388 (toList!6715 lm!2709)))))))

(declare-fun m!5756632 () Bool)

(assert (=> bs!1151603 m!5756632))

(assert (=> b!4779801 d!1528006))

(declare-fun b_lambda!185487 () Bool)

(assert (= b_lambda!185469 (or b!4779775 b_lambda!185487)))

(declare-fun bs!1151604 () Bool)

(declare-fun d!1528008 () Bool)

(assert (= bs!1151604 (and d!1528008 b!4779775)))

(declare-fun allKeysSameHash!1938 (List!54093 (_ BitVec 64) Hashable!6818) Bool)

(assert (=> bs!1151604 (= (dynLambda!22009 lambda!227799 (h!60388 (toList!6715 lm!2709))) (allKeysSameHash!1938 (_2!31515 (h!60388 (toList!6715 lm!2709))) (_1!31515 (h!60388 (toList!6715 lm!2709))) hashF!1687))))

(declare-fun m!5756634 () Bool)

(assert (=> bs!1151604 m!5756634))

(assert (=> d!1527926 d!1528008))

(declare-fun b_lambda!185489 () Bool)

(assert (= b_lambda!185483 (or start!490502 b_lambda!185489)))

(declare-fun bs!1151605 () Bool)

(declare-fun d!1528010 () Bool)

(assert (= bs!1151605 (and d!1528010 start!490502)))

(assert (=> bs!1151605 (= (dynLambda!22009 lambda!227798 lt!1942496) (noDuplicateKeys!2289 (_2!31515 lt!1942496)))))

(declare-fun m!5756636 () Bool)

(assert (=> bs!1151605 m!5756636))

(assert (=> d!1528004 d!1528010))

(check-sat (not b_lambda!185489) (not b!4780020) (not d!1527992) (not d!1527934) (not b!4779786) (not d!1527926) (not b!4779802) (not b_lambda!185485) (not d!1527994) (not b!4779869) (not b!4780003) (not b!4780013) (not b!4780005) (not bm!334683) (not d!1528000) (not d!1527950) (not d!1528004) (not b!4779981) tp_is_empty!33173 (not b!4779969) (not d!1527998) (not b!4779984) (not b!4779970) (not b!4779965) (not b!4779871) (not b!4780001) (not b!4779895) (not b!4779836) (not d!1527966) (not b!4780026) tp_is_empty!33175 (not d!1527970) (not b!4779967) (not b!4779897) (not b!4779968) (not d!1527996) (not bs!1151603) (not d!1527990) (not b_lambda!185487) (not b!4779983) (not b!4779972) (not d!1527940) (not b!4779982) (not bs!1151605) (not b!4779796) (not b!4779870) (not b!4780006) (not d!1528002) (not b!4779838) (not d!1527968) (not b!4779964) (not b!4780021) (not d!1527954) (not bs!1151604) (not b!4780002))
(check-sat)
(get-model)

(declare-fun d!1528052 () Bool)

(declare-fun noDuplicatedKeys!418 (List!54093) Bool)

(assert (=> d!1528052 (= (invariantList!1691 (toList!6716 lt!1942654)) (noDuplicatedKeys!418 (toList!6716 lt!1942654)))))

(declare-fun bs!1151621 () Bool)

(assert (= bs!1151621 d!1528052))

(declare-fun m!5756700 () Bool)

(assert (=> bs!1151621 m!5756700))

(assert (=> d!1527998 d!1528052))

(declare-fun d!1528054 () Bool)

(declare-fun res!2029357 () Bool)

(declare-fun e!2984221 () Bool)

(assert (=> d!1528054 (=> res!2029357 e!2984221)))

(assert (=> d!1528054 (= res!2029357 ((_ is Nil!53970) (toList!6715 lm!2709)))))

(assert (=> d!1528054 (= (forall!12102 (toList!6715 lm!2709) lambda!227834) e!2984221)))

(declare-fun b!4780071 () Bool)

(declare-fun e!2984222 () Bool)

(assert (=> b!4780071 (= e!2984221 e!2984222)))

(declare-fun res!2029358 () Bool)

(assert (=> b!4780071 (=> (not res!2029358) (not e!2984222))))

(assert (=> b!4780071 (= res!2029358 (dynLambda!22009 lambda!227834 (h!60388 (toList!6715 lm!2709))))))

(declare-fun b!4780072 () Bool)

(assert (=> b!4780072 (= e!2984222 (forall!12102 (t!361544 (toList!6715 lm!2709)) lambda!227834))))

(assert (= (and d!1528054 (not res!2029357)) b!4780071))

(assert (= (and b!4780071 res!2029358) b!4780072))

(declare-fun b_lambda!185497 () Bool)

(assert (=> (not b_lambda!185497) (not b!4780071)))

(declare-fun m!5756702 () Bool)

(assert (=> b!4780071 m!5756702))

(declare-fun m!5756704 () Bool)

(assert (=> b!4780072 m!5756704))

(assert (=> d!1527998 d!1528054))

(declare-fun d!1528056 () Bool)

(declare-fun c!814917 () Bool)

(declare-fun e!2984224 () Bool)

(assert (=> d!1528056 (= c!814917 e!2984224)))

(declare-fun res!2029359 () Bool)

(assert (=> d!1528056 (=> (not res!2029359) (not e!2984224))))

(assert (=> d!1528056 (= res!2029359 ((_ is Cons!53970) (t!361544 (toList!6715 lm!2709))))))

(declare-fun e!2984223 () V!15780)

(assert (=> d!1528056 (= (getValue!48 (t!361544 (toList!6715 lm!2709)) key!6641) e!2984223)))

(declare-fun b!4780075 () Bool)

(assert (=> b!4780075 (= e!2984224 (containsKey!3792 (_2!31515 (h!60388 (t!361544 (toList!6715 lm!2709)))) key!6641))))

(declare-fun b!4780073 () Bool)

(assert (=> b!4780073 (= e!2984223 (_2!31514 (get!18337 (getPair!790 (_2!31515 (h!60388 (t!361544 (toList!6715 lm!2709)))) key!6641))))))

(declare-fun b!4780074 () Bool)

(assert (=> b!4780074 (= e!2984223 (getValue!48 (t!361544 (t!361544 (toList!6715 lm!2709))) key!6641))))

(assert (= (and d!1528056 res!2029359) b!4780075))

(assert (= (and d!1528056 c!814917) b!4780073))

(assert (= (and d!1528056 (not c!814917)) b!4780074))

(declare-fun m!5756706 () Bool)

(assert (=> b!4780075 m!5756706))

(declare-fun m!5756708 () Bool)

(assert (=> b!4780073 m!5756708))

(assert (=> b!4780073 m!5756708))

(declare-fun m!5756710 () Bool)

(assert (=> b!4780073 m!5756710))

(declare-fun m!5756712 () Bool)

(assert (=> b!4780074 m!5756712))

(assert (=> b!4779870 d!1528056))

(assert (=> b!4779981 d!1527940))

(declare-fun d!1528058 () Bool)

(declare-fun lt!1942699 () Bool)

(declare-fun content!9637 (List!54096) (InoxSet K!15534))

(assert (=> d!1528058 (= lt!1942699 (select (content!9637 (keys!19652 (extractMap!2345 (toList!6715 lm!2709)))) key!6641))))

(declare-fun e!2984230 () Bool)

(assert (=> d!1528058 (= lt!1942699 e!2984230)))

(declare-fun res!2029364 () Bool)

(assert (=> d!1528058 (=> (not res!2029364) (not e!2984230))))

(assert (=> d!1528058 (= res!2029364 ((_ is Cons!53972) (keys!19652 (extractMap!2345 (toList!6715 lm!2709)))))))

(assert (=> d!1528058 (= (contains!17491 (keys!19652 (extractMap!2345 (toList!6715 lm!2709))) key!6641) lt!1942699)))

(declare-fun b!4780080 () Bool)

(declare-fun e!2984229 () Bool)

(assert (=> b!4780080 (= e!2984230 e!2984229)))

(declare-fun res!2029365 () Bool)

(assert (=> b!4780080 (=> res!2029365 e!2984229)))

(assert (=> b!4780080 (= res!2029365 (= (h!60390 (keys!19652 (extractMap!2345 (toList!6715 lm!2709)))) key!6641))))

(declare-fun b!4780081 () Bool)

(assert (=> b!4780081 (= e!2984229 (contains!17491 (t!361546 (keys!19652 (extractMap!2345 (toList!6715 lm!2709)))) key!6641))))

(assert (= (and d!1528058 res!2029364) b!4780080))

(assert (= (and b!4780080 (not res!2029365)) b!4780081))

(assert (=> d!1528058 m!5756564))

(declare-fun m!5756714 () Bool)

(assert (=> d!1528058 m!5756714))

(declare-fun m!5756716 () Bool)

(assert (=> d!1528058 m!5756716))

(declare-fun m!5756718 () Bool)

(assert (=> b!4780081 m!5756718))

(assert (=> b!4779964 d!1528058))

(declare-fun b!4780089 () Bool)

(assert (=> b!4780089 true))

(declare-fun d!1528060 () Bool)

(declare-fun e!2984233 () Bool)

(assert (=> d!1528060 e!2984233))

(declare-fun res!2029374 () Bool)

(assert (=> d!1528060 (=> (not res!2029374) (not e!2984233))))

(declare-fun lt!1942702 () List!54096)

(declare-fun noDuplicate!896 (List!54096) Bool)

(assert (=> d!1528060 (= res!2029374 (noDuplicate!896 lt!1942702))))

(assert (=> d!1528060 (= lt!1942702 (getKeysList!1035 (toList!6716 (extractMap!2345 (toList!6715 lm!2709)))))))

(assert (=> d!1528060 (= (keys!19652 (extractMap!2345 (toList!6715 lm!2709))) lt!1942702)))

(declare-fun b!4780088 () Bool)

(declare-fun res!2029372 () Bool)

(assert (=> b!4780088 (=> (not res!2029372) (not e!2984233))))

(declare-fun length!648 (List!54096) Int)

(declare-fun length!649 (List!54093) Int)

(assert (=> b!4780088 (= res!2029372 (= (length!648 lt!1942702) (length!649 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))))))))

(declare-fun res!2029373 () Bool)

(assert (=> b!4780089 (=> (not res!2029373) (not e!2984233))))

(declare-fun lambda!227845 () Int)

(declare-fun forall!12104 (List!54096 Int) Bool)

(assert (=> b!4780089 (= res!2029373 (forall!12104 lt!1942702 lambda!227845))))

(declare-fun lambda!227846 () Int)

(declare-fun b!4780090 () Bool)

(declare-fun map!12166 (List!54093 Int) List!54096)

(assert (=> b!4780090 (= e!2984233 (= (content!9637 lt!1942702) (content!9637 (map!12166 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))) lambda!227846))))))

(assert (= (and d!1528060 res!2029374) b!4780088))

(assert (= (and b!4780088 res!2029372) b!4780089))

(assert (= (and b!4780089 res!2029373) b!4780090))

(declare-fun m!5756720 () Bool)

(assert (=> d!1528060 m!5756720))

(assert (=> d!1528060 m!5756550))

(declare-fun m!5756722 () Bool)

(assert (=> b!4780088 m!5756722))

(declare-fun m!5756724 () Bool)

(assert (=> b!4780088 m!5756724))

(declare-fun m!5756726 () Bool)

(assert (=> b!4780089 m!5756726))

(declare-fun m!5756728 () Bool)

(assert (=> b!4780090 m!5756728))

(declare-fun m!5756730 () Bool)

(assert (=> b!4780090 m!5756730))

(assert (=> b!4780090 m!5756730))

(declare-fun m!5756732 () Bool)

(assert (=> b!4780090 m!5756732))

(assert (=> b!4779964 d!1528060))

(assert (=> b!4779983 d!1528000))

(declare-fun d!1528062 () Bool)

(assert (=> d!1528062 (= (isDefined!10054 (getPair!790 (apply!12873 lm!2709 (hash!4799 hashF!1687 key!6641)) key!6641)) (not (isEmpty!29345 (getPair!790 (apply!12873 lm!2709 (hash!4799 hashF!1687 key!6641)) key!6641))))))

(declare-fun bs!1151622 () Bool)

(assert (= bs!1151622 d!1528062))

(assert (=> bs!1151622 m!5756584))

(declare-fun m!5756734 () Bool)

(assert (=> bs!1151622 m!5756734))

(assert (=> b!4779983 d!1528062))

(declare-fun d!1528064 () Bool)

(declare-fun lt!1942703 () Bool)

(assert (=> d!1528064 (= lt!1942703 (select (content!9636 (toList!6715 lm!2709)) (tuple2!56443 lt!1942647 lt!1942642)))))

(declare-fun e!2984234 () Bool)

(assert (=> d!1528064 (= lt!1942703 e!2984234)))

(declare-fun res!2029375 () Bool)

(assert (=> d!1528064 (=> (not res!2029375) (not e!2984234))))

(assert (=> d!1528064 (= res!2029375 ((_ is Cons!53970) (toList!6715 lm!2709)))))

(assert (=> d!1528064 (= (contains!17486 (toList!6715 lm!2709) (tuple2!56443 lt!1942647 lt!1942642)) lt!1942703)))

(declare-fun b!4780093 () Bool)

(declare-fun e!2984235 () Bool)

(assert (=> b!4780093 (= e!2984234 e!2984235)))

(declare-fun res!2029376 () Bool)

(assert (=> b!4780093 (=> res!2029376 e!2984235)))

(assert (=> b!4780093 (= res!2029376 (= (h!60388 (toList!6715 lm!2709)) (tuple2!56443 lt!1942647 lt!1942642)))))

(declare-fun b!4780094 () Bool)

(assert (=> b!4780094 (= e!2984235 (contains!17486 (t!361544 (toList!6715 lm!2709)) (tuple2!56443 lt!1942647 lt!1942642)))))

(assert (= (and d!1528064 res!2029375) b!4780093))

(assert (= (and b!4780093 (not res!2029376)) b!4780094))

(assert (=> d!1528064 m!5756622))

(declare-fun m!5756736 () Bool)

(assert (=> d!1528064 m!5756736))

(declare-fun m!5756738 () Bool)

(assert (=> b!4780094 m!5756738))

(assert (=> b!4779983 d!1528064))

(declare-fun d!1528066 () Bool)

(assert (=> d!1528066 (contains!17486 (toList!6715 lm!2709) (tuple2!56443 lt!1942647 lt!1942642))))

(declare-fun lt!1942704 () Unit!139163)

(assert (=> d!1528066 (= lt!1942704 (choose!34231 lm!2709 lt!1942647 lt!1942642))))

(assert (=> d!1528066 (contains!17487 lm!2709 lt!1942647)))

(assert (=> d!1528066 (= (lemmaGetValueImpliesTupleContained!597 lm!2709 lt!1942647 lt!1942642) lt!1942704)))

(declare-fun bs!1151623 () Bool)

(assert (= bs!1151623 d!1528066))

(assert (=> bs!1151623 m!5756578))

(declare-fun m!5756740 () Bool)

(assert (=> bs!1151623 m!5756740))

(assert (=> bs!1151623 m!5756590))

(assert (=> b!4779983 d!1528066))

(declare-fun d!1528068 () Bool)

(declare-fun e!2984236 () Bool)

(assert (=> d!1528068 e!2984236))

(declare-fun res!2029377 () Bool)

(assert (=> d!1528068 (=> res!2029377 e!2984236)))

(declare-fun lt!1942706 () Bool)

(assert (=> d!1528068 (= res!2029377 (not lt!1942706))))

(declare-fun lt!1942707 () Bool)

(assert (=> d!1528068 (= lt!1942706 lt!1942707)))

(declare-fun lt!1942705 () Unit!139163)

(declare-fun e!2984237 () Unit!139163)

(assert (=> d!1528068 (= lt!1942705 e!2984237)))

(declare-fun c!814918 () Bool)

(assert (=> d!1528068 (= c!814918 lt!1942707)))

(assert (=> d!1528068 (= lt!1942707 (containsKey!3795 (toList!6715 lm!2709) lt!1942647))))

(assert (=> d!1528068 (= (contains!17487 lm!2709 lt!1942647) lt!1942706)))

(declare-fun b!4780095 () Bool)

(declare-fun lt!1942708 () Unit!139163)

(assert (=> b!4780095 (= e!2984237 lt!1942708)))

(assert (=> b!4780095 (= lt!1942708 (lemmaContainsKeyImpliesGetValueByKeyDefined!2064 (toList!6715 lm!2709) lt!1942647))))

(assert (=> b!4780095 (isDefined!10057 (getValueByKey!2270 (toList!6715 lm!2709) lt!1942647))))

(declare-fun b!4780096 () Bool)

(declare-fun Unit!139183 () Unit!139163)

(assert (=> b!4780096 (= e!2984237 Unit!139183)))

(declare-fun b!4780097 () Bool)

(assert (=> b!4780097 (= e!2984236 (isDefined!10057 (getValueByKey!2270 (toList!6715 lm!2709) lt!1942647)))))

(assert (= (and d!1528068 c!814918) b!4780095))

(assert (= (and d!1528068 (not c!814918)) b!4780096))

(assert (= (and d!1528068 (not res!2029377)) b!4780097))

(declare-fun m!5756742 () Bool)

(assert (=> d!1528068 m!5756742))

(declare-fun m!5756744 () Bool)

(assert (=> b!4780095 m!5756744))

(assert (=> b!4780095 m!5756592))

(assert (=> b!4780095 m!5756592))

(declare-fun m!5756746 () Bool)

(assert (=> b!4780095 m!5756746))

(assert (=> b!4780097 m!5756592))

(assert (=> b!4780097 m!5756592))

(assert (=> b!4780097 m!5756746))

(assert (=> b!4779983 d!1528068))

(declare-fun d!1528070 () Bool)

(assert (=> d!1528070 (= (apply!12873 lm!2709 (hash!4799 hashF!1687 key!6641)) (get!18339 (getValueByKey!2270 (toList!6715 lm!2709) (hash!4799 hashF!1687 key!6641))))))

(declare-fun bs!1151624 () Bool)

(assert (= bs!1151624 d!1528070))

(assert (=> bs!1151624 m!5756344))

(declare-fun m!5756748 () Bool)

(assert (=> bs!1151624 m!5756748))

(assert (=> bs!1151624 m!5756748))

(declare-fun m!5756750 () Bool)

(assert (=> bs!1151624 m!5756750))

(assert (=> b!4779983 d!1528070))

(declare-fun b!4780098 () Bool)

(declare-fun e!2984239 () Bool)

(assert (=> b!4780098 (= e!2984239 (not (containsKey!3792 (apply!12873 lm!2709 (hash!4799 hashF!1687 key!6641)) key!6641)))))

(declare-fun b!4780099 () Bool)

(declare-fun e!2984238 () Bool)

(declare-fun e!2984242 () Bool)

(assert (=> b!4780099 (= e!2984238 e!2984242)))

(declare-fun res!2029380 () Bool)

(assert (=> b!4780099 (=> (not res!2029380) (not e!2984242))))

(declare-fun lt!1942709 () Option!12910)

(assert (=> b!4780099 (= res!2029380 (isDefined!10054 lt!1942709))))

(declare-fun d!1528072 () Bool)

(assert (=> d!1528072 e!2984238))

(declare-fun res!2029381 () Bool)

(assert (=> d!1528072 (=> res!2029381 e!2984238)))

(assert (=> d!1528072 (= res!2029381 e!2984239)))

(declare-fun res!2029378 () Bool)

(assert (=> d!1528072 (=> (not res!2029378) (not e!2984239))))

(assert (=> d!1528072 (= res!2029378 (isEmpty!29345 lt!1942709))))

(declare-fun e!2984241 () Option!12910)

(assert (=> d!1528072 (= lt!1942709 e!2984241)))

(declare-fun c!814920 () Bool)

(assert (=> d!1528072 (= c!814920 (and ((_ is Cons!53969) (apply!12873 lm!2709 (hash!4799 hashF!1687 key!6641))) (= (_1!31514 (h!60387 (apply!12873 lm!2709 (hash!4799 hashF!1687 key!6641)))) key!6641)))))

(assert (=> d!1528072 (noDuplicateKeys!2289 (apply!12873 lm!2709 (hash!4799 hashF!1687 key!6641)))))

(assert (=> d!1528072 (= (getPair!790 (apply!12873 lm!2709 (hash!4799 hashF!1687 key!6641)) key!6641) lt!1942709)))

(declare-fun b!4780100 () Bool)

(assert (=> b!4780100 (= e!2984242 (contains!17492 (apply!12873 lm!2709 (hash!4799 hashF!1687 key!6641)) (get!18337 lt!1942709)))))

(declare-fun b!4780101 () Bool)

(declare-fun e!2984240 () Option!12910)

(assert (=> b!4780101 (= e!2984240 None!12909)))

(declare-fun b!4780102 () Bool)

(assert (=> b!4780102 (= e!2984240 (getPair!790 (t!361543 (apply!12873 lm!2709 (hash!4799 hashF!1687 key!6641))) key!6641))))

(declare-fun b!4780103 () Bool)

(declare-fun res!2029379 () Bool)

(assert (=> b!4780103 (=> (not res!2029379) (not e!2984242))))

(assert (=> b!4780103 (= res!2029379 (= (_1!31514 (get!18337 lt!1942709)) key!6641))))

(declare-fun b!4780104 () Bool)

(assert (=> b!4780104 (= e!2984241 (Some!12909 (h!60387 (apply!12873 lm!2709 (hash!4799 hashF!1687 key!6641)))))))

(declare-fun b!4780105 () Bool)

(assert (=> b!4780105 (= e!2984241 e!2984240)))

(declare-fun c!814919 () Bool)

(assert (=> b!4780105 (= c!814919 ((_ is Cons!53969) (apply!12873 lm!2709 (hash!4799 hashF!1687 key!6641))))))

(assert (= (and d!1528072 c!814920) b!4780104))

(assert (= (and d!1528072 (not c!814920)) b!4780105))

(assert (= (and b!4780105 c!814919) b!4780102))

(assert (= (and b!4780105 (not c!814919)) b!4780101))

(assert (= (and d!1528072 res!2029378) b!4780098))

(assert (= (and d!1528072 (not res!2029381)) b!4780099))

(assert (= (and b!4780099 res!2029380) b!4780103))

(assert (= (and b!4780103 res!2029379) b!4780100))

(declare-fun m!5756752 () Bool)

(assert (=> b!4780103 m!5756752))

(assert (=> b!4780100 m!5756752))

(assert (=> b!4780100 m!5756576))

(assert (=> b!4780100 m!5756752))

(declare-fun m!5756754 () Bool)

(assert (=> b!4780100 m!5756754))

(assert (=> b!4780098 m!5756576))

(declare-fun m!5756756 () Bool)

(assert (=> b!4780098 m!5756756))

(declare-fun m!5756758 () Bool)

(assert (=> d!1528072 m!5756758))

(assert (=> d!1528072 m!5756576))

(declare-fun m!5756760 () Bool)

(assert (=> d!1528072 m!5756760))

(declare-fun m!5756762 () Bool)

(assert (=> b!4780102 m!5756762))

(declare-fun m!5756764 () Bool)

(assert (=> b!4780099 m!5756764))

(assert (=> b!4779983 d!1528072))

(assert (=> b!4779983 d!1527996))

(declare-fun d!1528074 () Bool)

(assert (=> d!1528074 (dynLambda!22009 lambda!227831 (tuple2!56443 (hash!4799 hashF!1687 key!6641) (apply!12873 lm!2709 (hash!4799 hashF!1687 key!6641))))))

(declare-fun lt!1942710 () Unit!139163)

(assert (=> d!1528074 (= lt!1942710 (choose!34230 (toList!6715 lm!2709) lambda!227831 (tuple2!56443 (hash!4799 hashF!1687 key!6641) (apply!12873 lm!2709 (hash!4799 hashF!1687 key!6641)))))))

(declare-fun e!2984243 () Bool)

(assert (=> d!1528074 e!2984243))

(declare-fun res!2029382 () Bool)

(assert (=> d!1528074 (=> (not res!2029382) (not e!2984243))))

(assert (=> d!1528074 (= res!2029382 (forall!12102 (toList!6715 lm!2709) lambda!227831))))

(assert (=> d!1528074 (= (forallContained!4046 (toList!6715 lm!2709) lambda!227831 (tuple2!56443 (hash!4799 hashF!1687 key!6641) (apply!12873 lm!2709 (hash!4799 hashF!1687 key!6641)))) lt!1942710)))

(declare-fun b!4780106 () Bool)

(assert (=> b!4780106 (= e!2984243 (contains!17486 (toList!6715 lm!2709) (tuple2!56443 (hash!4799 hashF!1687 key!6641) (apply!12873 lm!2709 (hash!4799 hashF!1687 key!6641)))))))

(assert (= (and d!1528074 res!2029382) b!4780106))

(declare-fun b_lambda!185499 () Bool)

(assert (=> (not b_lambda!185499) (not d!1528074)))

(declare-fun m!5756766 () Bool)

(assert (=> d!1528074 m!5756766))

(declare-fun m!5756768 () Bool)

(assert (=> d!1528074 m!5756768))

(assert (=> d!1528074 m!5756572))

(declare-fun m!5756770 () Bool)

(assert (=> b!4780106 m!5756770))

(assert (=> b!4779983 d!1528074))

(declare-fun d!1528076 () Bool)

(declare-fun e!2984244 () Bool)

(assert (=> d!1528076 e!2984244))

(declare-fun res!2029383 () Bool)

(assert (=> d!1528076 (=> res!2029383 e!2984244)))

(declare-fun lt!1942712 () Bool)

(assert (=> d!1528076 (= res!2029383 (not lt!1942712))))

(declare-fun lt!1942713 () Bool)

(assert (=> d!1528076 (= lt!1942712 lt!1942713)))

(declare-fun lt!1942711 () Unit!139163)

(declare-fun e!2984245 () Unit!139163)

(assert (=> d!1528076 (= lt!1942711 e!2984245)))

(declare-fun c!814921 () Bool)

(assert (=> d!1528076 (= c!814921 lt!1942713)))

(assert (=> d!1528076 (= lt!1942713 (containsKey!3795 (toList!6715 lm!2709) (hash!4799 hashF!1687 key!6641)))))

(assert (=> d!1528076 (= (contains!17487 lm!2709 (hash!4799 hashF!1687 key!6641)) lt!1942712)))

(declare-fun b!4780107 () Bool)

(declare-fun lt!1942714 () Unit!139163)

(assert (=> b!4780107 (= e!2984245 lt!1942714)))

(assert (=> b!4780107 (= lt!1942714 (lemmaContainsKeyImpliesGetValueByKeyDefined!2064 (toList!6715 lm!2709) (hash!4799 hashF!1687 key!6641)))))

(assert (=> b!4780107 (isDefined!10057 (getValueByKey!2270 (toList!6715 lm!2709) (hash!4799 hashF!1687 key!6641)))))

(declare-fun b!4780108 () Bool)

(declare-fun Unit!139184 () Unit!139163)

(assert (=> b!4780108 (= e!2984245 Unit!139184)))

(declare-fun b!4780109 () Bool)

(assert (=> b!4780109 (= e!2984244 (isDefined!10057 (getValueByKey!2270 (toList!6715 lm!2709) (hash!4799 hashF!1687 key!6641))))))

(assert (= (and d!1528076 c!814921) b!4780107))

(assert (= (and d!1528076 (not c!814921)) b!4780108))

(assert (= (and d!1528076 (not res!2029383)) b!4780109))

(assert (=> d!1528076 m!5756344))

(declare-fun m!5756772 () Bool)

(assert (=> d!1528076 m!5756772))

(assert (=> b!4780107 m!5756344))

(declare-fun m!5756774 () Bool)

(assert (=> b!4780107 m!5756774))

(assert (=> b!4780107 m!5756344))

(assert (=> b!4780107 m!5756748))

(assert (=> b!4780107 m!5756748))

(declare-fun m!5756776 () Bool)

(assert (=> b!4780107 m!5756776))

(assert (=> b!4780109 m!5756344))

(assert (=> b!4780109 m!5756748))

(assert (=> b!4780109 m!5756748))

(assert (=> b!4780109 m!5756776))

(assert (=> b!4779983 d!1528076))

(declare-fun d!1528078 () Bool)

(declare-fun res!2029388 () Bool)

(declare-fun e!2984250 () Bool)

(assert (=> d!1528078 (=> res!2029388 e!2984250)))

(assert (=> d!1528078 (= res!2029388 (not ((_ is Cons!53969) (_2!31515 (h!60388 (toList!6715 lm!2709))))))))

(assert (=> d!1528078 (= (noDuplicateKeys!2289 (_2!31515 (h!60388 (toList!6715 lm!2709)))) e!2984250)))

(declare-fun b!4780114 () Bool)

(declare-fun e!2984251 () Bool)

(assert (=> b!4780114 (= e!2984250 e!2984251)))

(declare-fun res!2029389 () Bool)

(assert (=> b!4780114 (=> (not res!2029389) (not e!2984251))))

(assert (=> b!4780114 (= res!2029389 (not (containsKey!3792 (t!361543 (_2!31515 (h!60388 (toList!6715 lm!2709)))) (_1!31514 (h!60387 (_2!31515 (h!60388 (toList!6715 lm!2709))))))))))

(declare-fun b!4780115 () Bool)

(assert (=> b!4780115 (= e!2984251 (noDuplicateKeys!2289 (t!361543 (_2!31515 (h!60388 (toList!6715 lm!2709))))))))

(assert (= (and d!1528078 (not res!2029388)) b!4780114))

(assert (= (and b!4780114 res!2029389) b!4780115))

(declare-fun m!5756778 () Bool)

(assert (=> b!4780114 m!5756778))

(declare-fun m!5756780 () Bool)

(assert (=> b!4780115 m!5756780))

(assert (=> bs!1151603 d!1528078))

(declare-fun d!1528080 () Bool)

(assert (=> d!1528080 (isDefined!10057 (getValueByKey!2270 (toList!6715 lm!2709) lt!1942490))))

(declare-fun lt!1942717 () Unit!139163)

(declare-fun choose!34239 (List!54094 (_ BitVec 64)) Unit!139163)

(assert (=> d!1528080 (= lt!1942717 (choose!34239 (toList!6715 lm!2709) lt!1942490))))

(declare-fun e!2984254 () Bool)

(assert (=> d!1528080 e!2984254))

(declare-fun res!2029392 () Bool)

(assert (=> d!1528080 (=> (not res!2029392) (not e!2984254))))

(assert (=> d!1528080 (= res!2029392 (isStrictlySorted!842 (toList!6715 lm!2709)))))

(assert (=> d!1528080 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2064 (toList!6715 lm!2709) lt!1942490) lt!1942717)))

(declare-fun b!4780118 () Bool)

(assert (=> b!4780118 (= e!2984254 (containsKey!3795 (toList!6715 lm!2709) lt!1942490))))

(assert (= (and d!1528080 res!2029392) b!4780118))

(assert (=> d!1528080 m!5756494))

(assert (=> d!1528080 m!5756494))

(assert (=> d!1528080 m!5756496))

(declare-fun m!5756782 () Bool)

(assert (=> d!1528080 m!5756782))

(assert (=> d!1528080 m!5756406))

(assert (=> b!4780118 m!5756490))

(assert (=> b!4779895 d!1528080))

(declare-fun d!1528082 () Bool)

(declare-fun isEmpty!29347 (Option!12913) Bool)

(assert (=> d!1528082 (= (isDefined!10057 (getValueByKey!2270 (toList!6715 lm!2709) lt!1942490)) (not (isEmpty!29347 (getValueByKey!2270 (toList!6715 lm!2709) lt!1942490))))))

(declare-fun bs!1151625 () Bool)

(assert (= bs!1151625 d!1528082))

(assert (=> bs!1151625 m!5756494))

(declare-fun m!5756784 () Bool)

(assert (=> bs!1151625 m!5756784))

(assert (=> b!4779895 d!1528082))

(declare-fun b!4780130 () Bool)

(declare-fun e!2984260 () Option!12913)

(assert (=> b!4780130 (= e!2984260 None!12912)))

(declare-fun b!4780129 () Bool)

(assert (=> b!4780129 (= e!2984260 (getValueByKey!2270 (t!361544 (toList!6715 lm!2709)) lt!1942490))))

(declare-fun b!4780128 () Bool)

(declare-fun e!2984259 () Option!12913)

(assert (=> b!4780128 (= e!2984259 e!2984260)))

(declare-fun c!814927 () Bool)

(assert (=> b!4780128 (= c!814927 (and ((_ is Cons!53970) (toList!6715 lm!2709)) (not (= (_1!31515 (h!60388 (toList!6715 lm!2709))) lt!1942490))))))

(declare-fun b!4780127 () Bool)

(assert (=> b!4780127 (= e!2984259 (Some!12912 (_2!31515 (h!60388 (toList!6715 lm!2709)))))))

(declare-fun d!1528084 () Bool)

(declare-fun c!814926 () Bool)

(assert (=> d!1528084 (= c!814926 (and ((_ is Cons!53970) (toList!6715 lm!2709)) (= (_1!31515 (h!60388 (toList!6715 lm!2709))) lt!1942490)))))

(assert (=> d!1528084 (= (getValueByKey!2270 (toList!6715 lm!2709) lt!1942490) e!2984259)))

(assert (= (and d!1528084 c!814926) b!4780127))

(assert (= (and d!1528084 (not c!814926)) b!4780128))

(assert (= (and b!4780128 c!814927) b!4780129))

(assert (= (and b!4780128 (not c!814927)) b!4780130))

(declare-fun m!5756786 () Bool)

(assert (=> b!4780129 m!5756786))

(assert (=> b!4779895 d!1528084))

(assert (=> b!4779897 d!1528082))

(assert (=> b!4779897 d!1528084))

(declare-fun d!1528086 () Bool)

(declare-fun res!2029393 () Bool)

(declare-fun e!2984261 () Bool)

(assert (=> d!1528086 (=> res!2029393 e!2984261)))

(assert (=> d!1528086 (= res!2029393 (and ((_ is Cons!53969) lt!1942497) (= (_1!31514 (h!60387 lt!1942497)) key!6641)))))

(assert (=> d!1528086 (= (containsKey!3792 lt!1942497 key!6641) e!2984261)))

(declare-fun b!4780131 () Bool)

(declare-fun e!2984262 () Bool)

(assert (=> b!4780131 (= e!2984261 e!2984262)))

(declare-fun res!2029394 () Bool)

(assert (=> b!4780131 (=> (not res!2029394) (not e!2984262))))

(assert (=> b!4780131 (= res!2029394 ((_ is Cons!53969) lt!1942497))))

(declare-fun b!4780132 () Bool)

(assert (=> b!4780132 (= e!2984262 (containsKey!3792 (t!361543 lt!1942497) key!6641))))

(assert (= (and d!1528086 (not res!2029393)) b!4780131))

(assert (= (and b!4780131 res!2029394) b!4780132))

(declare-fun m!5756788 () Bool)

(assert (=> b!4780132 m!5756788))

(assert (=> b!4780001 d!1528086))

(assert (=> b!4779968 d!1528060))

(declare-fun d!1528088 () Bool)

(declare-fun res!2029395 () Bool)

(declare-fun e!2984263 () Bool)

(assert (=> d!1528088 (=> res!2029395 e!2984263)))

(assert (=> d!1528088 (= res!2029395 (and ((_ is Cons!53969) (t!361543 (_2!31515 (h!60388 (toList!6715 lm!2709))))) (= (_1!31514 (h!60387 (t!361543 (_2!31515 (h!60388 (toList!6715 lm!2709)))))) key!6641)))))

(assert (=> d!1528088 (= (containsKey!3792 (t!361543 (_2!31515 (h!60388 (toList!6715 lm!2709)))) key!6641) e!2984263)))

(declare-fun b!4780133 () Bool)

(declare-fun e!2984264 () Bool)

(assert (=> b!4780133 (= e!2984263 e!2984264)))

(declare-fun res!2029396 () Bool)

(assert (=> b!4780133 (=> (not res!2029396) (not e!2984264))))

(assert (=> b!4780133 (= res!2029396 ((_ is Cons!53969) (t!361543 (_2!31515 (h!60388 (toList!6715 lm!2709))))))))

(declare-fun b!4780134 () Bool)

(assert (=> b!4780134 (= e!2984264 (containsKey!3792 (t!361543 (t!361543 (_2!31515 (h!60388 (toList!6715 lm!2709))))) key!6641))))

(assert (= (and d!1528088 (not res!2029395)) b!4780133))

(assert (= (and b!4780133 res!2029396) b!4780134))

(declare-fun m!5756790 () Bool)

(assert (=> b!4780134 m!5756790))

(assert (=> b!4779786 d!1528088))

(declare-fun d!1528090 () Bool)

(declare-fun res!2029397 () Bool)

(declare-fun e!2984265 () Bool)

(assert (=> d!1528090 (=> res!2029397 e!2984265)))

(assert (=> d!1528090 (= res!2029397 ((_ is Nil!53970) (toList!6715 lm!2709)))))

(assert (=> d!1528090 (= (forall!12102 (toList!6715 lm!2709) lambda!227831) e!2984265)))

(declare-fun b!4780135 () Bool)

(declare-fun e!2984266 () Bool)

(assert (=> b!4780135 (= e!2984265 e!2984266)))

(declare-fun res!2029398 () Bool)

(assert (=> b!4780135 (=> (not res!2029398) (not e!2984266))))

(assert (=> b!4780135 (= res!2029398 (dynLambda!22009 lambda!227831 (h!60388 (toList!6715 lm!2709))))))

(declare-fun b!4780136 () Bool)

(assert (=> b!4780136 (= e!2984266 (forall!12102 (t!361544 (toList!6715 lm!2709)) lambda!227831))))

(assert (= (and d!1528090 (not res!2029397)) b!4780135))

(assert (= (and b!4780135 res!2029398) b!4780136))

(declare-fun b_lambda!185501 () Bool)

(assert (=> (not b_lambda!185501) (not b!4780135)))

(declare-fun m!5756792 () Bool)

(assert (=> b!4780135 m!5756792))

(declare-fun m!5756794 () Bool)

(assert (=> b!4780136 m!5756794))

(assert (=> d!1527992 d!1528090))

(declare-fun bs!1151626 () Bool)

(declare-fun d!1528092 () Bool)

(assert (= bs!1151626 (and d!1528092 d!1527998)))

(declare-fun lambda!227849 () Int)

(assert (=> bs!1151626 (= lambda!227849 lambda!227834)))

(declare-fun bs!1151627 () Bool)

(assert (= bs!1151627 (and d!1528092 d!1527954)))

(assert (=> bs!1151627 (= lambda!227849 lambda!227817)))

(declare-fun bs!1151628 () Bool)

(assert (= bs!1151628 (and d!1528092 d!1527992)))

(assert (=> bs!1151628 (= lambda!227849 lambda!227831)))

(declare-fun bs!1151629 () Bool)

(assert (= bs!1151629 (and d!1528092 d!1527940)))

(assert (=> bs!1151629 (not (= lambda!227849 lambda!227805))))

(declare-fun bs!1151630 () Bool)

(assert (= bs!1151630 (and d!1528092 d!1528000)))

(assert (=> bs!1151630 (= lambda!227849 lambda!227837)))

(declare-fun bs!1151631 () Bool)

(assert (= bs!1151631 (and d!1528092 start!490502)))

(assert (=> bs!1151631 (= lambda!227849 lambda!227798)))

(declare-fun bs!1151632 () Bool)

(assert (= bs!1151632 (and d!1528092 b!4779775)))

(assert (=> bs!1151632 (not (= lambda!227849 lambda!227799))))

(assert (=> d!1528092 (isDefined!10054 (getPair!790 (apply!12873 lm!2709 (hash!4799 hashF!1687 key!6641)) key!6641))))

(declare-fun lt!1942737 () Unit!139163)

(assert (=> d!1528092 (= lt!1942737 (forallContained!4046 (toList!6715 lm!2709) lambda!227849 (tuple2!56443 (hash!4799 hashF!1687 key!6641) (apply!12873 lm!2709 (hash!4799 hashF!1687 key!6641)))))))

(declare-fun lt!1942738 () Unit!139163)

(declare-fun lt!1942736 () Unit!139163)

(assert (=> d!1528092 (= lt!1942738 lt!1942736)))

(declare-fun lt!1942733 () (_ BitVec 64))

(declare-fun lt!1942735 () List!54093)

(assert (=> d!1528092 (contains!17486 (toList!6715 lm!2709) (tuple2!56443 lt!1942733 lt!1942735))))

(assert (=> d!1528092 (= lt!1942736 (lemmaGetValueImpliesTupleContained!597 lm!2709 lt!1942733 lt!1942735))))

(assert (=> d!1528092 (= lt!1942735 (apply!12873 lm!2709 (hash!4799 hashF!1687 key!6641)))))

(assert (=> d!1528092 (= lt!1942733 (hash!4799 hashF!1687 key!6641))))

(declare-fun lt!1942734 () Unit!139163)

(declare-fun lt!1942732 () Unit!139163)

(assert (=> d!1528092 (= lt!1942734 lt!1942732)))

(assert (=> d!1528092 (contains!17487 lm!2709 (hash!4799 hashF!1687 key!6641))))

(assert (=> d!1528092 (= lt!1942732 (lemmaInGenMapThenLongMapContainsHash!1014 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1528092 true))

(declare-fun _$25!322 () Unit!139163)

(assert (=> d!1528092 (= (choose!34233 lm!2709 key!6641 hashF!1687) _$25!322)))

(declare-fun bs!1151633 () Bool)

(assert (= bs!1151633 d!1528092))

(assert (=> bs!1151633 m!5756584))

(assert (=> bs!1151633 m!5756586))

(assert (=> bs!1151633 m!5756576))

(assert (=> bs!1151633 m!5756584))

(assert (=> bs!1151633 m!5756344))

(assert (=> bs!1151633 m!5756576))

(declare-fun m!5756796 () Bool)

(assert (=> bs!1151633 m!5756796))

(assert (=> bs!1151633 m!5756344))

(assert (=> bs!1151633 m!5756580))

(declare-fun m!5756798 () Bool)

(assert (=> bs!1151633 m!5756798))

(assert (=> bs!1151633 m!5756344))

(assert (=> bs!1151633 m!5756352))

(declare-fun m!5756800 () Bool)

(assert (=> bs!1151633 m!5756800))

(assert (=> d!1527992 d!1528092))

(declare-fun d!1528094 () Bool)

(declare-fun lt!1942741 () Bool)

(declare-fun content!9639 (List!54093) (InoxSet tuple2!56440))

(assert (=> d!1528094 (= lt!1942741 (select (content!9639 lt!1942497) (get!18337 lt!1942651)))))

(declare-fun e!2984272 () Bool)

(assert (=> d!1528094 (= lt!1942741 e!2984272)))

(declare-fun res!2029403 () Bool)

(assert (=> d!1528094 (=> (not res!2029403) (not e!2984272))))

(assert (=> d!1528094 (= res!2029403 ((_ is Cons!53969) lt!1942497))))

(assert (=> d!1528094 (= (contains!17492 lt!1942497 (get!18337 lt!1942651)) lt!1942741)))

(declare-fun b!4780141 () Bool)

(declare-fun e!2984271 () Bool)

(assert (=> b!4780141 (= e!2984272 e!2984271)))

(declare-fun res!2029404 () Bool)

(assert (=> b!4780141 (=> res!2029404 e!2984271)))

(assert (=> b!4780141 (= res!2029404 (= (h!60387 lt!1942497) (get!18337 lt!1942651)))))

(declare-fun b!4780142 () Bool)

(assert (=> b!4780142 (= e!2984271 (contains!17492 (t!361543 lt!1942497) (get!18337 lt!1942651)))))

(assert (= (and d!1528094 res!2029403) b!4780141))

(assert (= (and b!4780141 (not res!2029404)) b!4780142))

(declare-fun m!5756802 () Bool)

(assert (=> d!1528094 m!5756802))

(assert (=> d!1528094 m!5756594))

(declare-fun m!5756804 () Bool)

(assert (=> d!1528094 m!5756804))

(assert (=> b!4780142 m!5756594))

(declare-fun m!5756806 () Bool)

(assert (=> b!4780142 m!5756806))

(assert (=> b!4780003 d!1528094))

(declare-fun d!1528096 () Bool)

(assert (=> d!1528096 (= (get!18337 lt!1942651) (v!48100 lt!1942651))))

(assert (=> b!4780003 d!1528096))

(assert (=> b!4779970 d!1528058))

(assert (=> b!4779970 d!1528060))

(declare-fun d!1528098 () Bool)

(declare-fun choose!34240 (Hashable!6818 K!15534) (_ BitVec 64))

(assert (=> d!1528098 (= (hash!4801 hashF!1687 key!6641) (choose!34240 hashF!1687 key!6641))))

(declare-fun bs!1151634 () Bool)

(assert (= bs!1151634 d!1528098))

(declare-fun m!5756808 () Bool)

(assert (=> bs!1151634 m!5756808))

(assert (=> d!1527996 d!1528098))

(declare-fun d!1528100 () Bool)

(declare-fun res!2029405 () Bool)

(declare-fun e!2984273 () Bool)

(assert (=> d!1528100 (=> res!2029405 e!2984273)))

(assert (=> d!1528100 (= res!2029405 ((_ is Nil!53970) (toList!6715 lm!2709)))))

(assert (=> d!1528100 (= (forall!12102 (toList!6715 lm!2709) lambda!227805) e!2984273)))

(declare-fun b!4780143 () Bool)

(declare-fun e!2984274 () Bool)

(assert (=> b!4780143 (= e!2984273 e!2984274)))

(declare-fun res!2029406 () Bool)

(assert (=> b!4780143 (=> (not res!2029406) (not e!2984274))))

(assert (=> b!4780143 (= res!2029406 (dynLambda!22009 lambda!227805 (h!60388 (toList!6715 lm!2709))))))

(declare-fun b!4780144 () Bool)

(assert (=> b!4780144 (= e!2984274 (forall!12102 (t!361544 (toList!6715 lm!2709)) lambda!227805))))

(assert (= (and d!1528100 (not res!2029405)) b!4780143))

(assert (= (and b!4780143 res!2029406) b!4780144))

(declare-fun b_lambda!185503 () Bool)

(assert (=> (not b_lambda!185503) (not b!4780143)))

(declare-fun m!5756810 () Bool)

(assert (=> b!4780143 m!5756810))

(declare-fun m!5756812 () Bool)

(assert (=> b!4780144 m!5756812))

(assert (=> d!1527940 d!1528100))

(declare-fun b!4780145 () Bool)

(declare-fun e!2984276 () Bool)

(assert (=> b!4780145 (= e!2984276 (not (containsKey!3792 (t!361543 lt!1942497) key!6641)))))

(declare-fun b!4780146 () Bool)

(declare-fun e!2984275 () Bool)

(declare-fun e!2984279 () Bool)

(assert (=> b!4780146 (= e!2984275 e!2984279)))

(declare-fun res!2029409 () Bool)

(assert (=> b!4780146 (=> (not res!2029409) (not e!2984279))))

(declare-fun lt!1942742 () Option!12910)

(assert (=> b!4780146 (= res!2029409 (isDefined!10054 lt!1942742))))

(declare-fun d!1528102 () Bool)

(assert (=> d!1528102 e!2984275))

(declare-fun res!2029410 () Bool)

(assert (=> d!1528102 (=> res!2029410 e!2984275)))

(assert (=> d!1528102 (= res!2029410 e!2984276)))

(declare-fun res!2029407 () Bool)

(assert (=> d!1528102 (=> (not res!2029407) (not e!2984276))))

(assert (=> d!1528102 (= res!2029407 (isEmpty!29345 lt!1942742))))

(declare-fun e!2984278 () Option!12910)

(assert (=> d!1528102 (= lt!1942742 e!2984278)))

(declare-fun c!814929 () Bool)

(assert (=> d!1528102 (= c!814929 (and ((_ is Cons!53969) (t!361543 lt!1942497)) (= (_1!31514 (h!60387 (t!361543 lt!1942497))) key!6641)))))

(assert (=> d!1528102 (noDuplicateKeys!2289 (t!361543 lt!1942497))))

(assert (=> d!1528102 (= (getPair!790 (t!361543 lt!1942497) key!6641) lt!1942742)))

(declare-fun b!4780147 () Bool)

(assert (=> b!4780147 (= e!2984279 (contains!17492 (t!361543 lt!1942497) (get!18337 lt!1942742)))))

(declare-fun b!4780148 () Bool)

(declare-fun e!2984277 () Option!12910)

(assert (=> b!4780148 (= e!2984277 None!12909)))

(declare-fun b!4780149 () Bool)

(assert (=> b!4780149 (= e!2984277 (getPair!790 (t!361543 (t!361543 lt!1942497)) key!6641))))

(declare-fun b!4780150 () Bool)

(declare-fun res!2029408 () Bool)

(assert (=> b!4780150 (=> (not res!2029408) (not e!2984279))))

(assert (=> b!4780150 (= res!2029408 (= (_1!31514 (get!18337 lt!1942742)) key!6641))))

(declare-fun b!4780151 () Bool)

(assert (=> b!4780151 (= e!2984278 (Some!12909 (h!60387 (t!361543 lt!1942497))))))

(declare-fun b!4780152 () Bool)

(assert (=> b!4780152 (= e!2984278 e!2984277)))

(declare-fun c!814928 () Bool)

(assert (=> b!4780152 (= c!814928 ((_ is Cons!53969) (t!361543 lt!1942497)))))

(assert (= (and d!1528102 c!814929) b!4780151))

(assert (= (and d!1528102 (not c!814929)) b!4780152))

(assert (= (and b!4780152 c!814928) b!4780149))

(assert (= (and b!4780152 (not c!814928)) b!4780148))

(assert (= (and d!1528102 res!2029407) b!4780145))

(assert (= (and d!1528102 (not res!2029410)) b!4780146))

(assert (= (and b!4780146 res!2029409) b!4780150))

(assert (= (and b!4780150 res!2029408) b!4780147))

(declare-fun m!5756814 () Bool)

(assert (=> b!4780150 m!5756814))

(assert (=> b!4780147 m!5756814))

(assert (=> b!4780147 m!5756814))

(declare-fun m!5756816 () Bool)

(assert (=> b!4780147 m!5756816))

(assert (=> b!4780145 m!5756788))

(declare-fun m!5756818 () Bool)

(assert (=> d!1528102 m!5756818))

(declare-fun m!5756820 () Bool)

(assert (=> d!1528102 m!5756820))

(declare-fun m!5756822 () Bool)

(assert (=> b!4780149 m!5756822))

(declare-fun m!5756824 () Bool)

(assert (=> b!4780146 m!5756824))

(assert (=> b!4780005 d!1528102))

(declare-fun d!1528104 () Bool)

(declare-fun res!2029415 () Bool)

(declare-fun e!2984284 () Bool)

(assert (=> d!1528104 (=> res!2029415 e!2984284)))

(assert (=> d!1528104 (= res!2029415 (and ((_ is Cons!53969) (toList!6716 (extractMap!2345 (toList!6715 lm!2709)))) (= (_1!31514 (h!60387 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))))) key!6641)))))

(assert (=> d!1528104 (= (containsKey!3796 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))) key!6641) e!2984284)))

(declare-fun b!4780157 () Bool)

(declare-fun e!2984285 () Bool)

(assert (=> b!4780157 (= e!2984284 e!2984285)))

(declare-fun res!2029416 () Bool)

(assert (=> b!4780157 (=> (not res!2029416) (not e!2984285))))

(assert (=> b!4780157 (= res!2029416 ((_ is Cons!53969) (toList!6716 (extractMap!2345 (toList!6715 lm!2709)))))))

(declare-fun b!4780158 () Bool)

(assert (=> b!4780158 (= e!2984285 (containsKey!3796 (t!361543 (toList!6716 (extractMap!2345 (toList!6715 lm!2709)))) key!6641))))

(assert (= (and d!1528104 (not res!2029415)) b!4780157))

(assert (= (and b!4780157 res!2029416) b!4780158))

(declare-fun m!5756826 () Bool)

(assert (=> b!4780158 m!5756826))

(assert (=> b!4779972 d!1528104))

(declare-fun d!1528106 () Bool)

(assert (=> d!1528106 (containsKey!3796 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))) key!6641)))

(declare-fun lt!1942745 () Unit!139163)

(declare-fun choose!34241 (List!54093 K!15534) Unit!139163)

(assert (=> d!1528106 (= lt!1942745 (choose!34241 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))) key!6641))))

(assert (=> d!1528106 (invariantList!1691 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))))))

(assert (=> d!1528106 (= (lemmaInGetKeysListThenContainsKey!1035 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))) key!6641) lt!1942745)))

(declare-fun bs!1151635 () Bool)

(assert (= bs!1151635 d!1528106))

(assert (=> bs!1151635 m!5756562))

(declare-fun m!5756828 () Bool)

(assert (=> bs!1151635 m!5756828))

(declare-fun m!5756830 () Bool)

(assert (=> bs!1151635 m!5756830))

(assert (=> b!4779972 d!1528106))

(declare-fun d!1528108 () Bool)

(declare-fun res!2029417 () Bool)

(declare-fun e!2984286 () Bool)

(assert (=> d!1528108 (=> res!2029417 e!2984286)))

(assert (=> d!1528108 (= res!2029417 ((_ is Nil!53970) (t!361544 (toList!6715 lm!2709))))))

(assert (=> d!1528108 (= (forall!12102 (t!361544 (toList!6715 lm!2709)) lambda!227798) e!2984286)))

(declare-fun b!4780159 () Bool)

(declare-fun e!2984287 () Bool)

(assert (=> b!4780159 (= e!2984286 e!2984287)))

(declare-fun res!2029418 () Bool)

(assert (=> b!4780159 (=> (not res!2029418) (not e!2984287))))

(assert (=> b!4780159 (= res!2029418 (dynLambda!22009 lambda!227798 (h!60388 (t!361544 (toList!6715 lm!2709)))))))

(declare-fun b!4780160 () Bool)

(assert (=> b!4780160 (= e!2984287 (forall!12102 (t!361544 (t!361544 (toList!6715 lm!2709))) lambda!227798))))

(assert (= (and d!1528108 (not res!2029417)) b!4780159))

(assert (= (and b!4780159 res!2029418) b!4780160))

(declare-fun b_lambda!185505 () Bool)

(assert (=> (not b_lambda!185505) (not b!4780159)))

(declare-fun m!5756832 () Bool)

(assert (=> b!4780159 m!5756832))

(declare-fun m!5756834 () Bool)

(assert (=> b!4780160 m!5756834))

(assert (=> b!4779802 d!1528108))

(declare-fun d!1528110 () Bool)

(declare-fun res!2029419 () Bool)

(declare-fun e!2984288 () Bool)

(assert (=> d!1528110 (=> res!2029419 e!2984288)))

(assert (=> d!1528110 (= res!2029419 (not ((_ is Cons!53969) (_2!31515 lt!1942496))))))

(assert (=> d!1528110 (= (noDuplicateKeys!2289 (_2!31515 lt!1942496)) e!2984288)))

(declare-fun b!4780161 () Bool)

(declare-fun e!2984289 () Bool)

(assert (=> b!4780161 (= e!2984288 e!2984289)))

(declare-fun res!2029420 () Bool)

(assert (=> b!4780161 (=> (not res!2029420) (not e!2984289))))

(assert (=> b!4780161 (= res!2029420 (not (containsKey!3792 (t!361543 (_2!31515 lt!1942496)) (_1!31514 (h!60387 (_2!31515 lt!1942496))))))))

(declare-fun b!4780162 () Bool)

(assert (=> b!4780162 (= e!2984289 (noDuplicateKeys!2289 (t!361543 (_2!31515 lt!1942496))))))

(assert (= (and d!1528110 (not res!2029419)) b!4780161))

(assert (= (and b!4780161 res!2029420) b!4780162))

(declare-fun m!5756836 () Bool)

(assert (=> b!4780161 m!5756836))

(declare-fun m!5756838 () Bool)

(assert (=> b!4780162 m!5756838))

(assert (=> bs!1151605 d!1528110))

(assert (=> d!1528000 d!1528076))

(assert (=> d!1528000 d!1527996))

(declare-fun d!1528112 () Bool)

(assert (=> d!1528112 (contains!17487 lm!2709 (hash!4799 hashF!1687 key!6641))))

(assert (=> d!1528112 true))

(declare-fun _$27!1599 () Unit!139163)

(assert (=> d!1528112 (= (choose!34234 lm!2709 key!6641 hashF!1687) _$27!1599)))

(declare-fun bs!1151636 () Bool)

(assert (= bs!1151636 d!1528112))

(assert (=> bs!1151636 m!5756344))

(assert (=> bs!1151636 m!5756344))

(assert (=> bs!1151636 m!5756580))

(assert (=> d!1528000 d!1528112))

(declare-fun d!1528114 () Bool)

(declare-fun res!2029421 () Bool)

(declare-fun e!2984290 () Bool)

(assert (=> d!1528114 (=> res!2029421 e!2984290)))

(assert (=> d!1528114 (= res!2029421 ((_ is Nil!53970) (toList!6715 lm!2709)))))

(assert (=> d!1528114 (= (forall!12102 (toList!6715 lm!2709) lambda!227837) e!2984290)))

(declare-fun b!4780163 () Bool)

(declare-fun e!2984291 () Bool)

(assert (=> b!4780163 (= e!2984290 e!2984291)))

(declare-fun res!2029422 () Bool)

(assert (=> b!4780163 (=> (not res!2029422) (not e!2984291))))

(assert (=> b!4780163 (= res!2029422 (dynLambda!22009 lambda!227837 (h!60388 (toList!6715 lm!2709))))))

(declare-fun b!4780164 () Bool)

(assert (=> b!4780164 (= e!2984291 (forall!12102 (t!361544 (toList!6715 lm!2709)) lambda!227837))))

(assert (= (and d!1528114 (not res!2029421)) b!4780163))

(assert (= (and b!4780163 res!2029422) b!4780164))

(declare-fun b_lambda!185507 () Bool)

(assert (=> (not b_lambda!185507) (not b!4780163)))

(declare-fun m!5756840 () Bool)

(assert (=> b!4780163 m!5756840))

(declare-fun m!5756842 () Bool)

(assert (=> b!4780164 m!5756842))

(assert (=> d!1528000 d!1528114))

(declare-fun d!1528116 () Bool)

(assert (=> d!1528116 (= (isEmpty!29345 lt!1942492) (not ((_ is Some!12909) lt!1942492)))))

(assert (=> d!1527968 d!1528116))

(declare-fun d!1528118 () Bool)

(assert (=> d!1528118 (= (get!18337 (getPair!790 (_2!31515 (h!60388 (toList!6715 lm!2709))) key!6641)) (v!48100 (getPair!790 (_2!31515 (h!60388 (toList!6715 lm!2709))) key!6641)))))

(assert (=> b!4779869 d!1528118))

(declare-fun b!4780165 () Bool)

(declare-fun e!2984293 () Bool)

(assert (=> b!4780165 (= e!2984293 (not (containsKey!3792 (_2!31515 (h!60388 (toList!6715 lm!2709))) key!6641)))))

(declare-fun b!4780166 () Bool)

(declare-fun e!2984292 () Bool)

(declare-fun e!2984296 () Bool)

(assert (=> b!4780166 (= e!2984292 e!2984296)))

(declare-fun res!2029425 () Bool)

(assert (=> b!4780166 (=> (not res!2029425) (not e!2984296))))

(declare-fun lt!1942746 () Option!12910)

(assert (=> b!4780166 (= res!2029425 (isDefined!10054 lt!1942746))))

(declare-fun d!1528120 () Bool)

(assert (=> d!1528120 e!2984292))

(declare-fun res!2029426 () Bool)

(assert (=> d!1528120 (=> res!2029426 e!2984292)))

(assert (=> d!1528120 (= res!2029426 e!2984293)))

(declare-fun res!2029423 () Bool)

(assert (=> d!1528120 (=> (not res!2029423) (not e!2984293))))

(assert (=> d!1528120 (= res!2029423 (isEmpty!29345 lt!1942746))))

(declare-fun e!2984295 () Option!12910)

(assert (=> d!1528120 (= lt!1942746 e!2984295)))

(declare-fun c!814931 () Bool)

(assert (=> d!1528120 (= c!814931 (and ((_ is Cons!53969) (_2!31515 (h!60388 (toList!6715 lm!2709)))) (= (_1!31514 (h!60387 (_2!31515 (h!60388 (toList!6715 lm!2709))))) key!6641)))))

(assert (=> d!1528120 (noDuplicateKeys!2289 (_2!31515 (h!60388 (toList!6715 lm!2709))))))

(assert (=> d!1528120 (= (getPair!790 (_2!31515 (h!60388 (toList!6715 lm!2709))) key!6641) lt!1942746)))

(declare-fun b!4780167 () Bool)

(assert (=> b!4780167 (= e!2984296 (contains!17492 (_2!31515 (h!60388 (toList!6715 lm!2709))) (get!18337 lt!1942746)))))

(declare-fun b!4780168 () Bool)

(declare-fun e!2984294 () Option!12910)

(assert (=> b!4780168 (= e!2984294 None!12909)))

(declare-fun b!4780169 () Bool)

(assert (=> b!4780169 (= e!2984294 (getPair!790 (t!361543 (_2!31515 (h!60388 (toList!6715 lm!2709)))) key!6641))))

(declare-fun b!4780170 () Bool)

(declare-fun res!2029424 () Bool)

(assert (=> b!4780170 (=> (not res!2029424) (not e!2984296))))

(assert (=> b!4780170 (= res!2029424 (= (_1!31514 (get!18337 lt!1942746)) key!6641))))

(declare-fun b!4780171 () Bool)

(assert (=> b!4780171 (= e!2984295 (Some!12909 (h!60387 (_2!31515 (h!60388 (toList!6715 lm!2709))))))))

(declare-fun b!4780172 () Bool)

(assert (=> b!4780172 (= e!2984295 e!2984294)))

(declare-fun c!814930 () Bool)

(assert (=> b!4780172 (= c!814930 ((_ is Cons!53969) (_2!31515 (h!60388 (toList!6715 lm!2709)))))))

(assert (= (and d!1528120 c!814931) b!4780171))

(assert (= (and d!1528120 (not c!814931)) b!4780172))

(assert (= (and b!4780172 c!814930) b!4780169))

(assert (= (and b!4780172 (not c!814930)) b!4780168))

(assert (= (and d!1528120 res!2029423) b!4780165))

(assert (= (and d!1528120 (not res!2029426)) b!4780166))

(assert (= (and b!4780166 res!2029425) b!4780170))

(assert (= (and b!4780170 res!2029424) b!4780167))

(declare-fun m!5756844 () Bool)

(assert (=> b!4780170 m!5756844))

(assert (=> b!4780167 m!5756844))

(assert (=> b!4780167 m!5756844))

(declare-fun m!5756846 () Bool)

(assert (=> b!4780167 m!5756846))

(assert (=> b!4780165 m!5756368))

(declare-fun m!5756848 () Bool)

(assert (=> d!1528120 m!5756848))

(assert (=> d!1528120 m!5756632))

(declare-fun m!5756850 () Bool)

(assert (=> b!4780169 m!5756850))

(declare-fun m!5756852 () Bool)

(assert (=> b!4780166 m!5756852))

(assert (=> b!4779869 d!1528120))

(declare-fun d!1528122 () Bool)

(assert (=> d!1528122 (= (get!18339 (getValueByKey!2270 (toList!6715 lm!2709) lt!1942490)) (v!48107 (getValueByKey!2270 (toList!6715 lm!2709) lt!1942490)))))

(assert (=> d!1527990 d!1528122))

(assert (=> d!1527990 d!1528084))

(declare-fun b!4780347 () Bool)

(assert (=> b!4780347 true))

(declare-fun bs!1151667 () Bool)

(declare-fun b!4780343 () Bool)

(assert (= bs!1151667 (and b!4780343 b!4780347)))

(declare-fun lambda!227933 () Int)

(declare-fun lambda!227932 () Int)

(assert (=> bs!1151667 (= lambda!227933 lambda!227932)))

(assert (=> b!4780343 true))

(declare-fun lambda!227934 () Int)

(declare-fun lt!1942907 () ListMap!6187)

(assert (=> bs!1151667 (= (= lt!1942907 (extractMap!2345 (t!361544 (toList!6715 lm!2709)))) (= lambda!227934 lambda!227932))))

(assert (=> b!4780343 (= (= lt!1942907 (extractMap!2345 (t!361544 (toList!6715 lm!2709)))) (= lambda!227934 lambda!227933))))

(assert (=> b!4780343 true))

(declare-fun bs!1151669 () Bool)

(declare-fun d!1528124 () Bool)

(assert (= bs!1151669 (and d!1528124 b!4780347)))

(declare-fun lambda!227935 () Int)

(declare-fun lt!1942906 () ListMap!6187)

(assert (=> bs!1151669 (= (= lt!1942906 (extractMap!2345 (t!361544 (toList!6715 lm!2709)))) (= lambda!227935 lambda!227932))))

(declare-fun bs!1151670 () Bool)

(assert (= bs!1151670 (and d!1528124 b!4780343)))

(assert (=> bs!1151670 (= (= lt!1942906 (extractMap!2345 (t!361544 (toList!6715 lm!2709)))) (= lambda!227935 lambda!227933))))

(assert (=> bs!1151670 (= (= lt!1942906 lt!1942907) (= lambda!227935 lambda!227934))))

(assert (=> d!1528124 true))

(declare-fun e!2984405 () ListMap!6187)

(assert (=> b!4780343 (= e!2984405 lt!1942907)))

(declare-fun lt!1942913 () ListMap!6187)

(declare-fun +!2465 (ListMap!6187 tuple2!56440) ListMap!6187)

(assert (=> b!4780343 (= lt!1942913 (+!2465 (extractMap!2345 (t!361544 (toList!6715 lm!2709))) (h!60387 (_2!31515 (h!60388 (toList!6715 lm!2709))))))))

(assert (=> b!4780343 (= lt!1942907 (addToMapMapFromBucket!1656 (t!361543 (_2!31515 (h!60388 (toList!6715 lm!2709)))) (+!2465 (extractMap!2345 (t!361544 (toList!6715 lm!2709))) (h!60387 (_2!31515 (h!60388 (toList!6715 lm!2709)))))))))

(declare-fun lt!1942901 () Unit!139163)

(declare-fun call!334706 () Unit!139163)

(assert (=> b!4780343 (= lt!1942901 call!334706)))

(declare-fun call!334704 () Bool)

(assert (=> b!4780343 call!334704))

(declare-fun lt!1942914 () Unit!139163)

(assert (=> b!4780343 (= lt!1942914 lt!1942901)))

(declare-fun forall!12106 (List!54093 Int) Bool)

(assert (=> b!4780343 (forall!12106 (toList!6716 lt!1942913) lambda!227934)))

(declare-fun lt!1942911 () Unit!139163)

(declare-fun Unit!139186 () Unit!139163)

(assert (=> b!4780343 (= lt!1942911 Unit!139186)))

(assert (=> b!4780343 (forall!12106 (t!361543 (_2!31515 (h!60388 (toList!6715 lm!2709)))) lambda!227934)))

(declare-fun lt!1942918 () Unit!139163)

(declare-fun Unit!139187 () Unit!139163)

(assert (=> b!4780343 (= lt!1942918 Unit!139187)))

(declare-fun lt!1942909 () Unit!139163)

(declare-fun Unit!139188 () Unit!139163)

(assert (=> b!4780343 (= lt!1942909 Unit!139188)))

(declare-fun lt!1942904 () Unit!139163)

(declare-fun forallContained!4048 (List!54093 Int tuple2!56440) Unit!139163)

(assert (=> b!4780343 (= lt!1942904 (forallContained!4048 (toList!6716 lt!1942913) lambda!227934 (h!60387 (_2!31515 (h!60388 (toList!6715 lm!2709))))))))

(assert (=> b!4780343 (contains!17488 lt!1942913 (_1!31514 (h!60387 (_2!31515 (h!60388 (toList!6715 lm!2709))))))))

(declare-fun lt!1942910 () Unit!139163)

(declare-fun Unit!139189 () Unit!139163)

(assert (=> b!4780343 (= lt!1942910 Unit!139189)))

(assert (=> b!4780343 (contains!17488 lt!1942907 (_1!31514 (h!60387 (_2!31515 (h!60388 (toList!6715 lm!2709))))))))

(declare-fun lt!1942900 () Unit!139163)

(declare-fun Unit!139190 () Unit!139163)

(assert (=> b!4780343 (= lt!1942900 Unit!139190)))

(assert (=> b!4780343 (forall!12106 (_2!31515 (h!60388 (toList!6715 lm!2709))) lambda!227934)))

(declare-fun lt!1942908 () Unit!139163)

(declare-fun Unit!139191 () Unit!139163)

(assert (=> b!4780343 (= lt!1942908 Unit!139191)))

(assert (=> b!4780343 (forall!12106 (toList!6716 lt!1942913) lambda!227934)))

(declare-fun lt!1942912 () Unit!139163)

(declare-fun Unit!139192 () Unit!139163)

(assert (=> b!4780343 (= lt!1942912 Unit!139192)))

(declare-fun lt!1942903 () Unit!139163)

(declare-fun Unit!139193 () Unit!139163)

(assert (=> b!4780343 (= lt!1942903 Unit!139193)))

(declare-fun lt!1942915 () Unit!139163)

(declare-fun addForallContainsKeyThenBeforeAdding!920 (ListMap!6187 ListMap!6187 K!15534 V!15780) Unit!139163)

(assert (=> b!4780343 (= lt!1942915 (addForallContainsKeyThenBeforeAdding!920 (extractMap!2345 (t!361544 (toList!6715 lm!2709))) lt!1942907 (_1!31514 (h!60387 (_2!31515 (h!60388 (toList!6715 lm!2709))))) (_2!31514 (h!60387 (_2!31515 (h!60388 (toList!6715 lm!2709)))))))))

(declare-fun call!334705 () Bool)

(assert (=> b!4780343 call!334705))

(declare-fun lt!1942899 () Unit!139163)

(assert (=> b!4780343 (= lt!1942899 lt!1942915)))

(assert (=> b!4780343 (forall!12106 (toList!6716 (extractMap!2345 (t!361544 (toList!6715 lm!2709)))) lambda!227934)))

(declare-fun lt!1942917 () Unit!139163)

(declare-fun Unit!139194 () Unit!139163)

(assert (=> b!4780343 (= lt!1942917 Unit!139194)))

(declare-fun res!2029522 () Bool)

(assert (=> b!4780343 (= res!2029522 (forall!12106 (_2!31515 (h!60388 (toList!6715 lm!2709))) lambda!227934))))

(declare-fun e!2984407 () Bool)

(assert (=> b!4780343 (=> (not res!2029522) (not e!2984407))))

(assert (=> b!4780343 e!2984407))

(declare-fun lt!1942916 () Unit!139163)

(declare-fun Unit!139195 () Unit!139163)

(assert (=> b!4780343 (= lt!1942916 Unit!139195)))

(declare-fun b!4780344 () Bool)

(declare-fun e!2984406 () Bool)

(assert (=> b!4780344 (= e!2984406 (invariantList!1691 (toList!6716 lt!1942906)))))

(assert (=> d!1528124 e!2984406))

(declare-fun res!2029523 () Bool)

(assert (=> d!1528124 (=> (not res!2029523) (not e!2984406))))

(assert (=> d!1528124 (= res!2029523 (forall!12106 (_2!31515 (h!60388 (toList!6715 lm!2709))) lambda!227935))))

(assert (=> d!1528124 (= lt!1942906 e!2984405)))

(declare-fun c!814964 () Bool)

(assert (=> d!1528124 (= c!814964 ((_ is Nil!53969) (_2!31515 (h!60388 (toList!6715 lm!2709)))))))

(assert (=> d!1528124 (noDuplicateKeys!2289 (_2!31515 (h!60388 (toList!6715 lm!2709))))))

(assert (=> d!1528124 (= (addToMapMapFromBucket!1656 (_2!31515 (h!60388 (toList!6715 lm!2709))) (extractMap!2345 (t!361544 (toList!6715 lm!2709)))) lt!1942906)))

(declare-fun bm!334699 () Bool)

(assert (=> bm!334699 (= call!334705 (forall!12106 (toList!6716 (extractMap!2345 (t!361544 (toList!6715 lm!2709)))) (ite c!814964 lambda!227932 lambda!227934)))))

(declare-fun bm!334700 () Bool)

(assert (=> bm!334700 (= call!334704 (forall!12106 (toList!6716 (extractMap!2345 (t!361544 (toList!6715 lm!2709)))) (ite c!814964 lambda!227932 lambda!227933)))))

(declare-fun b!4780345 () Bool)

(declare-fun res!2029524 () Bool)

(assert (=> b!4780345 (=> (not res!2029524) (not e!2984406))))

(assert (=> b!4780345 (= res!2029524 (forall!12106 (toList!6716 (extractMap!2345 (t!361544 (toList!6715 lm!2709)))) lambda!227935))))

(declare-fun b!4780346 () Bool)

(assert (=> b!4780346 (= e!2984407 (forall!12106 (toList!6716 (extractMap!2345 (t!361544 (toList!6715 lm!2709)))) lambda!227934))))

(declare-fun bm!334701 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!921 (ListMap!6187) Unit!139163)

(assert (=> bm!334701 (= call!334706 (lemmaContainsAllItsOwnKeys!921 (extractMap!2345 (t!361544 (toList!6715 lm!2709)))))))

(assert (=> b!4780347 (= e!2984405 (extractMap!2345 (t!361544 (toList!6715 lm!2709))))))

(declare-fun lt!1942905 () Unit!139163)

(assert (=> b!4780347 (= lt!1942905 call!334706)))

(assert (=> b!4780347 call!334705))

(declare-fun lt!1942898 () Unit!139163)

(assert (=> b!4780347 (= lt!1942898 lt!1942905)))

(assert (=> b!4780347 call!334704))

(declare-fun lt!1942902 () Unit!139163)

(declare-fun Unit!139196 () Unit!139163)

(assert (=> b!4780347 (= lt!1942902 Unit!139196)))

(assert (= (and d!1528124 c!814964) b!4780347))

(assert (= (and d!1528124 (not c!814964)) b!4780343))

(assert (= (and b!4780343 res!2029522) b!4780346))

(assert (= (or b!4780347 b!4780343) bm!334701))

(assert (= (or b!4780347 b!4780343) bm!334699))

(assert (= (or b!4780347 b!4780343) bm!334700))

(assert (= (and d!1528124 res!2029523) b!4780345))

(assert (= (and b!4780345 res!2029524) b!4780344))

(declare-fun m!5757064 () Bool)

(assert (=> b!4780345 m!5757064))

(declare-fun m!5757066 () Bool)

(assert (=> d!1528124 m!5757066))

(assert (=> d!1528124 m!5756632))

(declare-fun m!5757068 () Bool)

(assert (=> bm!334699 m!5757068))

(declare-fun m!5757070 () Bool)

(assert (=> b!4780343 m!5757070))

(declare-fun m!5757072 () Bool)

(assert (=> b!4780343 m!5757072))

(declare-fun m!5757074 () Bool)

(assert (=> b!4780343 m!5757074))

(declare-fun m!5757076 () Bool)

(assert (=> b!4780343 m!5757076))

(declare-fun m!5757078 () Bool)

(assert (=> b!4780343 m!5757078))

(assert (=> b!4780343 m!5756614))

(declare-fun m!5757080 () Bool)

(assert (=> b!4780343 m!5757080))

(declare-fun m!5757082 () Bool)

(assert (=> b!4780343 m!5757082))

(declare-fun m!5757084 () Bool)

(assert (=> b!4780343 m!5757084))

(declare-fun m!5757086 () Bool)

(assert (=> b!4780343 m!5757086))

(assert (=> b!4780343 m!5756614))

(assert (=> b!4780343 m!5757084))

(assert (=> b!4780343 m!5757070))

(declare-fun m!5757088 () Bool)

(assert (=> b!4780343 m!5757088))

(assert (=> b!4780343 m!5757072))

(declare-fun m!5757090 () Bool)

(assert (=> b!4780344 m!5757090))

(assert (=> b!4780346 m!5757088))

(declare-fun m!5757092 () Bool)

(assert (=> bm!334700 m!5757092))

(assert (=> bm!334701 m!5756614))

(declare-fun m!5757094 () Bool)

(assert (=> bm!334701 m!5757094))

(assert (=> b!4780013 d!1528124))

(declare-fun bs!1151678 () Bool)

(declare-fun d!1528224 () Bool)

(assert (= bs!1151678 (and d!1528224 d!1527998)))

(declare-fun lambda!227936 () Int)

(assert (=> bs!1151678 (= lambda!227936 lambda!227834)))

(declare-fun bs!1151679 () Bool)

(assert (= bs!1151679 (and d!1528224 d!1527954)))

(assert (=> bs!1151679 (= lambda!227936 lambda!227817)))

(declare-fun bs!1151680 () Bool)

(assert (= bs!1151680 (and d!1528224 d!1527940)))

(assert (=> bs!1151680 (not (= lambda!227936 lambda!227805))))

(declare-fun bs!1151681 () Bool)

(assert (= bs!1151681 (and d!1528224 d!1528000)))

(assert (=> bs!1151681 (= lambda!227936 lambda!227837)))

(declare-fun bs!1151682 () Bool)

(assert (= bs!1151682 (and d!1528224 start!490502)))

(assert (=> bs!1151682 (= lambda!227936 lambda!227798)))

(declare-fun bs!1151683 () Bool)

(assert (= bs!1151683 (and d!1528224 b!4779775)))

(assert (=> bs!1151683 (not (= lambda!227936 lambda!227799))))

(declare-fun bs!1151684 () Bool)

(assert (= bs!1151684 (and d!1528224 d!1527992)))

(assert (=> bs!1151684 (= lambda!227936 lambda!227831)))

(declare-fun bs!1151685 () Bool)

(assert (= bs!1151685 (and d!1528224 d!1528092)))

(assert (=> bs!1151685 (= lambda!227936 lambda!227849)))

(declare-fun lt!1942920 () ListMap!6187)

(assert (=> d!1528224 (invariantList!1691 (toList!6716 lt!1942920))))

(declare-fun e!2984414 () ListMap!6187)

(assert (=> d!1528224 (= lt!1942920 e!2984414)))

(declare-fun c!814965 () Bool)

(assert (=> d!1528224 (= c!814965 ((_ is Cons!53970) (t!361544 (toList!6715 lm!2709))))))

(assert (=> d!1528224 (forall!12102 (t!361544 (toList!6715 lm!2709)) lambda!227936)))

(assert (=> d!1528224 (= (extractMap!2345 (t!361544 (toList!6715 lm!2709))) lt!1942920)))

(declare-fun b!4780358 () Bool)

(assert (=> b!4780358 (= e!2984414 (addToMapMapFromBucket!1656 (_2!31515 (h!60388 (t!361544 (toList!6715 lm!2709)))) (extractMap!2345 (t!361544 (t!361544 (toList!6715 lm!2709))))))))

(declare-fun b!4780359 () Bool)

(assert (=> b!4780359 (= e!2984414 (ListMap!6188 Nil!53969))))

(assert (= (and d!1528224 c!814965) b!4780358))

(assert (= (and d!1528224 (not c!814965)) b!4780359))

(declare-fun m!5757096 () Bool)

(assert (=> d!1528224 m!5757096))

(declare-fun m!5757098 () Bool)

(assert (=> d!1528224 m!5757098))

(declare-fun m!5757100 () Bool)

(assert (=> b!4780358 m!5757100))

(assert (=> b!4780358 m!5757100))

(declare-fun m!5757102 () Bool)

(assert (=> b!4780358 m!5757102))

(assert (=> b!4780013 d!1528224))

(assert (=> b!4779871 d!1527918))

(declare-fun d!1528226 () Bool)

(declare-fun c!814968 () Bool)

(assert (=> d!1528226 (= c!814968 ((_ is Nil!53970) (toList!6715 lm!2709)))))

(declare-fun e!2984417 () (InoxSet tuple2!56442))

(assert (=> d!1528226 (= (content!9636 (toList!6715 lm!2709)) e!2984417)))

(declare-fun b!4780364 () Bool)

(assert (=> b!4780364 (= e!2984417 ((as const (Array tuple2!56442 Bool)) false))))

(declare-fun b!4780365 () Bool)

(assert (=> b!4780365 (= e!2984417 ((_ map or) (store ((as const (Array tuple2!56442 Bool)) false) (h!60388 (toList!6715 lm!2709)) true) (content!9636 (t!361544 (toList!6715 lm!2709)))))))

(assert (= (and d!1528226 c!814968) b!4780364))

(assert (= (and d!1528226 (not c!814968)) b!4780365))

(declare-fun m!5757104 () Bool)

(assert (=> b!4780365 m!5757104))

(declare-fun m!5757106 () Bool)

(assert (=> b!4780365 m!5757106))

(assert (=> d!1528002 d!1528226))

(declare-fun d!1528228 () Bool)

(declare-fun lt!1942921 () Bool)

(assert (=> d!1528228 (= lt!1942921 (select (content!9636 (toList!6715 lm!2709)) (h!60388 (toList!6715 lm!2709))))))

(declare-fun e!2984418 () Bool)

(assert (=> d!1528228 (= lt!1942921 e!2984418)))

(declare-fun res!2029527 () Bool)

(assert (=> d!1528228 (=> (not res!2029527) (not e!2984418))))

(assert (=> d!1528228 (= res!2029527 ((_ is Cons!53970) (toList!6715 lm!2709)))))

(assert (=> d!1528228 (= (contains!17486 (toList!6715 lm!2709) (h!60388 (toList!6715 lm!2709))) lt!1942921)))

(declare-fun b!4780366 () Bool)

(declare-fun e!2984419 () Bool)

(assert (=> b!4780366 (= e!2984418 e!2984419)))

(declare-fun res!2029528 () Bool)

(assert (=> b!4780366 (=> res!2029528 e!2984419)))

(assert (=> b!4780366 (= res!2029528 (= (h!60388 (toList!6715 lm!2709)) (h!60388 (toList!6715 lm!2709))))))

(declare-fun b!4780367 () Bool)

(assert (=> b!4780367 (= e!2984419 (contains!17486 (t!361544 (toList!6715 lm!2709)) (h!60388 (toList!6715 lm!2709))))))

(assert (= (and d!1528228 res!2029527) b!4780366))

(assert (= (and b!4780366 (not res!2029528)) b!4780367))

(assert (=> d!1528228 m!5756622))

(declare-fun m!5757108 () Bool)

(assert (=> d!1528228 m!5757108))

(declare-fun m!5757110 () Bool)

(assert (=> b!4780367 m!5757110))

(assert (=> b!4779796 d!1528228))

(declare-fun d!1528230 () Bool)

(declare-fun res!2029533 () Bool)

(declare-fun e!2984424 () Bool)

(assert (=> d!1528230 (=> res!2029533 e!2984424)))

(assert (=> d!1528230 (= res!2029533 (or ((_ is Nil!53970) (toList!6715 lm!2709)) ((_ is Nil!53970) (t!361544 (toList!6715 lm!2709)))))))

(assert (=> d!1528230 (= (isStrictlySorted!842 (toList!6715 lm!2709)) e!2984424)))

(declare-fun b!4780372 () Bool)

(declare-fun e!2984425 () Bool)

(assert (=> b!4780372 (= e!2984424 e!2984425)))

(declare-fun res!2029534 () Bool)

(assert (=> b!4780372 (=> (not res!2029534) (not e!2984425))))

(assert (=> b!4780372 (= res!2029534 (bvslt (_1!31515 (h!60388 (toList!6715 lm!2709))) (_1!31515 (h!60388 (t!361544 (toList!6715 lm!2709))))))))

(declare-fun b!4780373 () Bool)

(assert (=> b!4780373 (= e!2984425 (isStrictlySorted!842 (t!361544 (toList!6715 lm!2709))))))

(assert (= (and d!1528230 (not res!2029533)) b!4780372))

(assert (= (and b!4780372 res!2029534) b!4780373))

(declare-fun m!5757112 () Bool)

(assert (=> b!4780373 m!5757112))

(assert (=> d!1527934 d!1528230))

(declare-fun d!1528232 () Bool)

(declare-fun lt!1942922 () Bool)

(assert (=> d!1528232 (= lt!1942922 (select (content!9637 e!2984150) key!6641))))

(declare-fun e!2984427 () Bool)

(assert (=> d!1528232 (= lt!1942922 e!2984427)))

(declare-fun res!2029535 () Bool)

(assert (=> d!1528232 (=> (not res!2029535) (not e!2984427))))

(assert (=> d!1528232 (= res!2029535 ((_ is Cons!53972) e!2984150))))

(assert (=> d!1528232 (= (contains!17491 e!2984150 key!6641) lt!1942922)))

(declare-fun b!4780374 () Bool)

(declare-fun e!2984426 () Bool)

(assert (=> b!4780374 (= e!2984427 e!2984426)))

(declare-fun res!2029536 () Bool)

(assert (=> b!4780374 (=> res!2029536 e!2984426)))

(assert (=> b!4780374 (= res!2029536 (= (h!60390 e!2984150) key!6641))))

(declare-fun b!4780375 () Bool)

(assert (=> b!4780375 (= e!2984426 (contains!17491 (t!361546 e!2984150) key!6641))))

(assert (= (and d!1528232 res!2029535) b!4780374))

(assert (= (and b!4780374 (not res!2029536)) b!4780375))

(declare-fun m!5757114 () Bool)

(assert (=> d!1528232 m!5757114))

(declare-fun m!5757116 () Bool)

(assert (=> d!1528232 m!5757116))

(declare-fun m!5757118 () Bool)

(assert (=> b!4780375 m!5757118))

(assert (=> bm!334683 d!1528232))

(assert (=> d!1527954 d!1527970))

(assert (=> d!1527954 d!1527998))

(declare-fun d!1528234 () Bool)

(assert (=> d!1528234 (contains!17488 (extractMap!2345 (toList!6715 lm!2709)) key!6641)))

(assert (=> d!1528234 true))

(declare-fun _$34!916 () Unit!139163)

(assert (=> d!1528234 (= (choose!34232 lm!2709 key!6641 hashF!1687) _$34!916)))

(declare-fun bs!1151686 () Bool)

(assert (= bs!1151686 d!1528234))

(assert (=> bs!1151686 m!5756342))

(assert (=> bs!1151686 m!5756342))

(assert (=> bs!1151686 m!5756358))

(assert (=> d!1527954 d!1528234))

(declare-fun d!1528236 () Bool)

(declare-fun res!2029537 () Bool)

(declare-fun e!2984428 () Bool)

(assert (=> d!1528236 (=> res!2029537 e!2984428)))

(assert (=> d!1528236 (= res!2029537 ((_ is Nil!53970) (toList!6715 lm!2709)))))

(assert (=> d!1528236 (= (forall!12102 (toList!6715 lm!2709) lambda!227817) e!2984428)))

(declare-fun b!4780376 () Bool)

(declare-fun e!2984429 () Bool)

(assert (=> b!4780376 (= e!2984428 e!2984429)))

(declare-fun res!2029538 () Bool)

(assert (=> b!4780376 (=> (not res!2029538) (not e!2984429))))

(assert (=> b!4780376 (= res!2029538 (dynLambda!22009 lambda!227817 (h!60388 (toList!6715 lm!2709))))))

(declare-fun b!4780377 () Bool)

(assert (=> b!4780377 (= e!2984429 (forall!12102 (t!361544 (toList!6715 lm!2709)) lambda!227817))))

(assert (= (and d!1528236 (not res!2029537)) b!4780376))

(assert (= (and b!4780376 res!2029538) b!4780377))

(declare-fun b_lambda!185543 () Bool)

(assert (=> (not b_lambda!185543) (not b!4780376)))

(declare-fun m!5757120 () Bool)

(assert (=> b!4780376 m!5757120))

(declare-fun m!5757122 () Bool)

(assert (=> b!4780377 m!5757122))

(assert (=> d!1527954 d!1528236))

(declare-fun d!1528238 () Bool)

(declare-fun lt!1942923 () Bool)

(assert (=> d!1528238 (= lt!1942923 (select (content!9636 (t!361544 (toList!6715 lm!2709))) lt!1942496))))

(declare-fun e!2984430 () Bool)

(assert (=> d!1528238 (= lt!1942923 e!2984430)))

(declare-fun res!2029539 () Bool)

(assert (=> d!1528238 (=> (not res!2029539) (not e!2984430))))

(assert (=> d!1528238 (= res!2029539 ((_ is Cons!53970) (t!361544 (toList!6715 lm!2709))))))

(assert (=> d!1528238 (= (contains!17486 (t!361544 (toList!6715 lm!2709)) lt!1942496) lt!1942923)))

(declare-fun b!4780378 () Bool)

(declare-fun e!2984431 () Bool)

(assert (=> b!4780378 (= e!2984430 e!2984431)))

(declare-fun res!2029540 () Bool)

(assert (=> b!4780378 (=> res!2029540 e!2984431)))

(assert (=> b!4780378 (= res!2029540 (= (h!60388 (t!361544 (toList!6715 lm!2709))) lt!1942496))))

(declare-fun b!4780379 () Bool)

(assert (=> b!4780379 (= e!2984431 (contains!17486 (t!361544 (t!361544 (toList!6715 lm!2709))) lt!1942496))))

(assert (= (and d!1528238 res!2029539) b!4780378))

(assert (= (and b!4780378 (not res!2029540)) b!4780379))

(assert (=> d!1528238 m!5757106))

(declare-fun m!5757124 () Bool)

(assert (=> d!1528238 m!5757124))

(declare-fun m!5757126 () Bool)

(assert (=> b!4780379 m!5757126))

(assert (=> b!4780020 d!1528238))

(declare-fun d!1528240 () Bool)

(assert (=> d!1528240 (dynLambda!22009 lambda!227799 (h!60388 (toList!6715 lm!2709)))))

(assert (=> d!1528240 true))

(declare-fun _$7!2341 () Unit!139163)

(assert (=> d!1528240 (= (choose!34230 (toList!6715 lm!2709) lambda!227799 (h!60388 (toList!6715 lm!2709))) _$7!2341)))

(declare-fun b_lambda!185545 () Bool)

(assert (=> (not b_lambda!185545) (not d!1528240)))

(declare-fun bs!1151687 () Bool)

(assert (= bs!1151687 d!1528240))

(assert (=> bs!1151687 m!5756394))

(assert (=> d!1527926 d!1528240))

(declare-fun d!1528242 () Bool)

(declare-fun res!2029541 () Bool)

(declare-fun e!2984432 () Bool)

(assert (=> d!1528242 (=> res!2029541 e!2984432)))

(assert (=> d!1528242 (= res!2029541 ((_ is Nil!53970) (toList!6715 lm!2709)))))

(assert (=> d!1528242 (= (forall!12102 (toList!6715 lm!2709) lambda!227799) e!2984432)))

(declare-fun b!4780380 () Bool)

(declare-fun e!2984433 () Bool)

(assert (=> b!4780380 (= e!2984432 e!2984433)))

(declare-fun res!2029542 () Bool)

(assert (=> b!4780380 (=> (not res!2029542) (not e!2984433))))

(assert (=> b!4780380 (= res!2029542 (dynLambda!22009 lambda!227799 (h!60388 (toList!6715 lm!2709))))))

(declare-fun b!4780381 () Bool)

(assert (=> b!4780381 (= e!2984433 (forall!12102 (t!361544 (toList!6715 lm!2709)) lambda!227799))))

(assert (= (and d!1528242 (not res!2029541)) b!4780380))

(assert (= (and b!4780380 res!2029542) b!4780381))

(declare-fun b_lambda!185547 () Bool)

(assert (=> (not b_lambda!185547) (not b!4780380)))

(assert (=> b!4780380 m!5756394))

(declare-fun m!5757128 () Bool)

(assert (=> b!4780381 m!5757128))

(assert (=> d!1527926 d!1528242))

(declare-fun d!1528244 () Bool)

(assert (=> d!1528244 (isDefined!10058 (getValueByKey!2271 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))) key!6641))))

(declare-fun lt!1942926 () Unit!139163)

(declare-fun choose!34243 (List!54093 K!15534) Unit!139163)

(assert (=> d!1528244 (= lt!1942926 (choose!34243 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))) key!6641))))

(assert (=> d!1528244 (invariantList!1691 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))))))

(assert (=> d!1528244 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2065 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))) key!6641) lt!1942926)))

(declare-fun bs!1151688 () Bool)

(assert (= bs!1151688 d!1528244))

(assert (=> bs!1151688 m!5756556))

(assert (=> bs!1151688 m!5756556))

(assert (=> bs!1151688 m!5756558))

(declare-fun m!5757130 () Bool)

(assert (=> bs!1151688 m!5757130))

(assert (=> bs!1151688 m!5756830))

(assert (=> b!4779965 d!1528244))

(declare-fun d!1528246 () Bool)

(declare-fun isEmpty!29349 (Option!12914) Bool)

(assert (=> d!1528246 (= (isDefined!10058 (getValueByKey!2271 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))) key!6641)) (not (isEmpty!29349 (getValueByKey!2271 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))) key!6641))))))

(declare-fun bs!1151689 () Bool)

(assert (= bs!1151689 d!1528246))

(assert (=> bs!1151689 m!5756556))

(declare-fun m!5757132 () Bool)

(assert (=> bs!1151689 m!5757132))

(assert (=> b!4779965 d!1528246))

(declare-fun b!4780390 () Bool)

(declare-fun e!2984438 () Option!12914)

(assert (=> b!4780390 (= e!2984438 (Some!12913 (_2!31514 (h!60387 (toList!6716 (extractMap!2345 (toList!6715 lm!2709)))))))))

(declare-fun b!4780392 () Bool)

(declare-fun e!2984439 () Option!12914)

(assert (=> b!4780392 (= e!2984439 (getValueByKey!2271 (t!361543 (toList!6716 (extractMap!2345 (toList!6715 lm!2709)))) key!6641))))

(declare-fun d!1528248 () Bool)

(declare-fun c!814973 () Bool)

(assert (=> d!1528248 (= c!814973 (and ((_ is Cons!53969) (toList!6716 (extractMap!2345 (toList!6715 lm!2709)))) (= (_1!31514 (h!60387 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))))) key!6641)))))

(assert (=> d!1528248 (= (getValueByKey!2271 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))) key!6641) e!2984438)))

(declare-fun b!4780393 () Bool)

(assert (=> b!4780393 (= e!2984439 None!12913)))

(declare-fun b!4780391 () Bool)

(assert (=> b!4780391 (= e!2984438 e!2984439)))

(declare-fun c!814974 () Bool)

(assert (=> b!4780391 (= c!814974 (and ((_ is Cons!53969) (toList!6716 (extractMap!2345 (toList!6715 lm!2709)))) (not (= (_1!31514 (h!60387 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))))) key!6641))))))

(assert (= (and d!1528248 c!814973) b!4780390))

(assert (= (and d!1528248 (not c!814973)) b!4780391))

(assert (= (and b!4780391 c!814974) b!4780392))

(assert (= (and b!4780391 (not c!814974)) b!4780393))

(declare-fun m!5757134 () Bool)

(assert (=> b!4780392 m!5757134))

(assert (=> b!4779965 d!1528248))

(declare-fun d!1528250 () Bool)

(assert (=> d!1528250 (contains!17491 (getKeysList!1035 (toList!6716 (extractMap!2345 (toList!6715 lm!2709)))) key!6641)))

(declare-fun lt!1942929 () Unit!139163)

(declare-fun choose!34244 (List!54093 K!15534) Unit!139163)

(assert (=> d!1528250 (= lt!1942929 (choose!34244 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))) key!6641))))

(assert (=> d!1528250 (invariantList!1691 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))))))

(assert (=> d!1528250 (= (lemmaInListThenGetKeysListContains!1030 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))) key!6641) lt!1942929)))

(declare-fun bs!1151690 () Bool)

(assert (= bs!1151690 d!1528250))

(assert (=> bs!1151690 m!5756550))

(assert (=> bs!1151690 m!5756550))

(declare-fun m!5757136 () Bool)

(assert (=> bs!1151690 m!5757136))

(declare-fun m!5757138 () Bool)

(assert (=> bs!1151690 m!5757138))

(assert (=> bs!1151690 m!5756830))

(assert (=> b!4779965 d!1528250))

(assert (=> b!4779836 d!1527918))

(assert (=> b!4779982 d!1527970))

(assert (=> b!4779982 d!1527998))

(assert (=> d!1527970 d!1528104))

(declare-fun d!1528252 () Bool)

(declare-fun lt!1942930 () Bool)

(assert (=> d!1528252 (= lt!1942930 (select (content!9636 (toList!6715 lm!2709)) (tuple2!56443 lt!1942490 lt!1942497)))))

(declare-fun e!2984440 () Bool)

(assert (=> d!1528252 (= lt!1942930 e!2984440)))

(declare-fun res!2029543 () Bool)

(assert (=> d!1528252 (=> (not res!2029543) (not e!2984440))))

(assert (=> d!1528252 (= res!2029543 ((_ is Cons!53970) (toList!6715 lm!2709)))))

(assert (=> d!1528252 (= (contains!17486 (toList!6715 lm!2709) (tuple2!56443 lt!1942490 lt!1942497)) lt!1942930)))

(declare-fun b!4780394 () Bool)

(declare-fun e!2984441 () Bool)

(assert (=> b!4780394 (= e!2984440 e!2984441)))

(declare-fun res!2029544 () Bool)

(assert (=> b!4780394 (=> res!2029544 e!2984441)))

(assert (=> b!4780394 (= res!2029544 (= (h!60388 (toList!6715 lm!2709)) (tuple2!56443 lt!1942490 lt!1942497)))))

(declare-fun b!4780395 () Bool)

(assert (=> b!4780395 (= e!2984441 (contains!17486 (t!361544 (toList!6715 lm!2709)) (tuple2!56443 lt!1942490 lt!1942497)))))

(assert (= (and d!1528252 res!2029543) b!4780394))

(assert (= (and b!4780394 (not res!2029544)) b!4780395))

(assert (=> d!1528252 m!5756622))

(declare-fun m!5757140 () Bool)

(assert (=> d!1528252 m!5757140))

(declare-fun m!5757142 () Bool)

(assert (=> b!4780395 m!5757142))

(assert (=> d!1527950 d!1528252))

(declare-fun d!1528254 () Bool)

(assert (=> d!1528254 (contains!17486 (toList!6715 lm!2709) (tuple2!56443 lt!1942490 lt!1942497))))

(assert (=> d!1528254 true))

(declare-fun _$41!490 () Unit!139163)

(assert (=> d!1528254 (= (choose!34231 lm!2709 lt!1942490 lt!1942497) _$41!490)))

(declare-fun bs!1151691 () Bool)

(assert (= bs!1151691 d!1528254))

(assert (=> bs!1151691 m!5756462))

(assert (=> d!1527950 d!1528254))

(assert (=> d!1527950 d!1527966))

(assert (=> b!4779967 d!1528246))

(assert (=> b!4779967 d!1528248))

(declare-fun b!4780400 () Bool)

(declare-fun e!2984443 () Option!12913)

(assert (=> b!4780400 (= e!2984443 None!12912)))

(declare-fun b!4780399 () Bool)

(assert (=> b!4780399 (= e!2984443 (getValueByKey!2270 (t!361544 (toList!6715 lm!2709)) lt!1942647))))

(declare-fun b!4780398 () Bool)

(declare-fun e!2984442 () Option!12913)

(assert (=> b!4780398 (= e!2984442 e!2984443)))

(declare-fun c!814976 () Bool)

(assert (=> b!4780398 (= c!814976 (and ((_ is Cons!53970) (toList!6715 lm!2709)) (not (= (_1!31515 (h!60388 (toList!6715 lm!2709))) lt!1942647))))))

(declare-fun b!4780397 () Bool)

(assert (=> b!4780397 (= e!2984442 (Some!12912 (_2!31515 (h!60388 (toList!6715 lm!2709)))))))

(declare-fun d!1528256 () Bool)

(declare-fun c!814975 () Bool)

(assert (=> d!1528256 (= c!814975 (and ((_ is Cons!53970) (toList!6715 lm!2709)) (= (_1!31515 (h!60388 (toList!6715 lm!2709))) lt!1942647)))))

(assert (=> d!1528256 (= (getValueByKey!2270 (toList!6715 lm!2709) lt!1942647) e!2984442)))

(assert (= (and d!1528256 c!814975) b!4780397))

(assert (= (and d!1528256 (not c!814975)) b!4780398))

(assert (= (and b!4780398 c!814976) b!4780399))

(assert (= (and b!4780398 (not c!814976)) b!4780400))

(declare-fun m!5757144 () Bool)

(assert (=> b!4780399 m!5757144))

(assert (=> b!4779984 d!1528256))

(declare-fun d!1528258 () Bool)

(declare-fun res!2029547 () Bool)

(declare-fun e!2984444 () Bool)

(assert (=> d!1528258 (=> res!2029547 e!2984444)))

(declare-fun e!2984446 () Bool)

(assert (=> d!1528258 (= res!2029547 e!2984446)))

(declare-fun res!2029546 () Bool)

(assert (=> d!1528258 (=> (not res!2029546) (not e!2984446))))

(assert (=> d!1528258 (= res!2029546 ((_ is Cons!53970) (t!361544 (toList!6715 lm!2709))))))

(assert (=> d!1528258 (= (containsKeyBiggerList!474 (t!361544 (toList!6715 lm!2709)) key!6641) e!2984444)))

(declare-fun b!4780401 () Bool)

(assert (=> b!4780401 (= e!2984446 (containsKey!3792 (_2!31515 (h!60388 (t!361544 (toList!6715 lm!2709)))) key!6641))))

(declare-fun b!4780402 () Bool)

(declare-fun e!2984445 () Bool)

(assert (=> b!4780402 (= e!2984444 e!2984445)))

(declare-fun res!2029545 () Bool)

(assert (=> b!4780402 (=> (not res!2029545) (not e!2984445))))

(assert (=> b!4780402 (= res!2029545 ((_ is Cons!53970) (t!361544 (toList!6715 lm!2709))))))

(declare-fun b!4780403 () Bool)

(assert (=> b!4780403 (= e!2984445 (containsKeyBiggerList!474 (t!361544 (t!361544 (toList!6715 lm!2709))) key!6641))))

(assert (= (and d!1528258 res!2029546) b!4780401))

(assert (= (and d!1528258 (not res!2029547)) b!4780402))

(assert (= (and b!4780402 res!2029545) b!4780403))

(assert (=> b!4780401 m!5756706))

(declare-fun m!5757146 () Bool)

(assert (=> b!4780403 m!5757146))

(assert (=> b!4779838 d!1528258))

(declare-fun bs!1151692 () Bool)

(declare-fun b!4780427 () Bool)

(assert (= bs!1151692 (and b!4780427 b!4780089)))

(declare-fun lambda!227945 () Int)

(assert (=> bs!1151692 (= (= (t!361543 (toList!6716 (extractMap!2345 (toList!6715 lm!2709)))) (toList!6716 (extractMap!2345 (toList!6715 lm!2709)))) (= lambda!227945 lambda!227845))))

(assert (=> b!4780427 true))

(declare-fun bs!1151693 () Bool)

(declare-fun b!4780424 () Bool)

(assert (= bs!1151693 (and b!4780424 b!4780089)))

(declare-fun lambda!227946 () Int)

(assert (=> bs!1151693 (= (= (Cons!53969 (h!60387 (toList!6716 (extractMap!2345 (toList!6715 lm!2709)))) (t!361543 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))))) (toList!6716 (extractMap!2345 (toList!6715 lm!2709)))) (= lambda!227946 lambda!227845))))

(declare-fun bs!1151694 () Bool)

(assert (= bs!1151694 (and b!4780424 b!4780427)))

(assert (=> bs!1151694 (= (= (Cons!53969 (h!60387 (toList!6716 (extractMap!2345 (toList!6715 lm!2709)))) (t!361543 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))))) (t!361543 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))))) (= lambda!227946 lambda!227945))))

(assert (=> b!4780424 true))

(declare-fun bs!1151695 () Bool)

(declare-fun b!4780429 () Bool)

(assert (= bs!1151695 (and b!4780429 b!4780089)))

(declare-fun lambda!227947 () Int)

(assert (=> bs!1151695 (= lambda!227947 lambda!227845)))

(declare-fun bs!1151696 () Bool)

(assert (= bs!1151696 (and b!4780429 b!4780427)))

(assert (=> bs!1151696 (= (= (toList!6716 (extractMap!2345 (toList!6715 lm!2709))) (t!361543 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))))) (= lambda!227947 lambda!227945))))

(declare-fun bs!1151697 () Bool)

(assert (= bs!1151697 (and b!4780429 b!4780424)))

(assert (=> bs!1151697 (= (= (toList!6716 (extractMap!2345 (toList!6715 lm!2709))) (Cons!53969 (h!60387 (toList!6716 (extractMap!2345 (toList!6715 lm!2709)))) (t!361543 (toList!6716 (extractMap!2345 (toList!6715 lm!2709)))))) (= lambda!227947 lambda!227946))))

(assert (=> b!4780429 true))

(declare-fun bs!1151698 () Bool)

(declare-fun b!4780430 () Bool)

(assert (= bs!1151698 (and b!4780430 b!4780090)))

(declare-fun lambda!227948 () Int)

(assert (=> bs!1151698 (= lambda!227948 lambda!227846)))

(declare-fun b!4780422 () Bool)

(assert (=> b!4780422 false))

(declare-fun e!2984455 () Unit!139163)

(declare-fun Unit!139201 () Unit!139163)

(assert (=> b!4780422 (= e!2984455 Unit!139201)))

(declare-fun b!4780423 () Bool)

(declare-fun res!2029554 () Bool)

(declare-fun e!2984456 () Bool)

(assert (=> b!4780423 (=> (not res!2029554) (not e!2984456))))

(declare-fun lt!1942951 () List!54096)

(assert (=> b!4780423 (= res!2029554 (= (length!648 lt!1942951) (length!649 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))))))))

(declare-fun e!2984457 () List!54096)

(assert (=> b!4780424 (= e!2984457 (Cons!53972 (_1!31514 (h!60387 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))))) (getKeysList!1035 (t!361543 (toList!6716 (extractMap!2345 (toList!6715 lm!2709)))))))))

(declare-fun c!814985 () Bool)

(assert (=> b!4780424 (= c!814985 (containsKey!3796 (t!361543 (toList!6716 (extractMap!2345 (toList!6715 lm!2709)))) (_1!31514 (h!60387 (toList!6716 (extractMap!2345 (toList!6715 lm!2709)))))))))

(declare-fun lt!1942945 () Unit!139163)

(assert (=> b!4780424 (= lt!1942945 e!2984455)))

(declare-fun c!814984 () Bool)

(assert (=> b!4780424 (= c!814984 (contains!17491 (getKeysList!1035 (t!361543 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))))) (_1!31514 (h!60387 (toList!6716 (extractMap!2345 (toList!6715 lm!2709)))))))))

(declare-fun lt!1942950 () Unit!139163)

(declare-fun e!2984458 () Unit!139163)

(assert (=> b!4780424 (= lt!1942950 e!2984458)))

(declare-fun lt!1942947 () List!54096)

(assert (=> b!4780424 (= lt!1942947 (getKeysList!1035 (t!361543 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))))))))

(declare-fun lt!1942946 () Unit!139163)

(declare-fun lemmaForallContainsAddHeadPreserves!314 (List!54093 List!54096 tuple2!56440) Unit!139163)

(assert (=> b!4780424 (= lt!1942946 (lemmaForallContainsAddHeadPreserves!314 (t!361543 (toList!6716 (extractMap!2345 (toList!6715 lm!2709)))) lt!1942947 (h!60387 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))))))))

(assert (=> b!4780424 (forall!12104 lt!1942947 lambda!227946)))

(declare-fun lt!1942949 () Unit!139163)

(assert (=> b!4780424 (= lt!1942949 lt!1942946)))

(declare-fun b!4780425 () Bool)

(declare-fun Unit!139202 () Unit!139163)

(assert (=> b!4780425 (= e!2984458 Unit!139202)))

(assert (=> b!4780427 false))

(declare-fun lt!1942948 () Unit!139163)

(declare-fun forallContained!4050 (List!54096 Int K!15534) Unit!139163)

(assert (=> b!4780427 (= lt!1942948 (forallContained!4050 (getKeysList!1035 (t!361543 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))))) lambda!227945 (_1!31514 (h!60387 (toList!6716 (extractMap!2345 (toList!6715 lm!2709)))))))))

(declare-fun Unit!139203 () Unit!139163)

(assert (=> b!4780427 (= e!2984458 Unit!139203)))

(declare-fun b!4780428 () Bool)

(assert (=> b!4780428 (= e!2984457 Nil!53972)))

(declare-fun res!2029555 () Bool)

(assert (=> b!4780429 (=> (not res!2029555) (not e!2984456))))

(assert (=> b!4780429 (= res!2029555 (forall!12104 lt!1942951 lambda!227947))))

(assert (=> b!4780430 (= e!2984456 (= (content!9637 lt!1942951) (content!9637 (map!12166 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))) lambda!227948))))))

(declare-fun d!1528260 () Bool)

(assert (=> d!1528260 e!2984456))

(declare-fun res!2029556 () Bool)

(assert (=> d!1528260 (=> (not res!2029556) (not e!2984456))))

(assert (=> d!1528260 (= res!2029556 (noDuplicate!896 lt!1942951))))

(assert (=> d!1528260 (= lt!1942951 e!2984457)))

(declare-fun c!814983 () Bool)

(assert (=> d!1528260 (= c!814983 ((_ is Cons!53969) (toList!6716 (extractMap!2345 (toList!6715 lm!2709)))))))

(assert (=> d!1528260 (invariantList!1691 (toList!6716 (extractMap!2345 (toList!6715 lm!2709))))))

(assert (=> d!1528260 (= (getKeysList!1035 (toList!6716 (extractMap!2345 (toList!6715 lm!2709)))) lt!1942951)))

(declare-fun b!4780426 () Bool)

(declare-fun Unit!139204 () Unit!139163)

(assert (=> b!4780426 (= e!2984455 Unit!139204)))

(assert (= (and d!1528260 c!814983) b!4780424))

(assert (= (and d!1528260 (not c!814983)) b!4780428))

(assert (= (and b!4780424 c!814985) b!4780422))

(assert (= (and b!4780424 (not c!814985)) b!4780426))

(assert (= (and b!4780424 c!814984) b!4780427))

(assert (= (and b!4780424 (not c!814984)) b!4780425))

(assert (= (and d!1528260 res!2029556) b!4780423))

(assert (= (and b!4780423 res!2029554) b!4780429))

(assert (= (and b!4780429 res!2029555) b!4780430))

(declare-fun m!5757148 () Bool)

(assert (=> b!4780423 m!5757148))

(assert (=> b!4780423 m!5756724))

(declare-fun m!5757150 () Bool)

(assert (=> d!1528260 m!5757150))

(assert (=> d!1528260 m!5756830))

(declare-fun m!5757152 () Bool)

(assert (=> b!4780427 m!5757152))

(assert (=> b!4780427 m!5757152))

(declare-fun m!5757154 () Bool)

(assert (=> b!4780427 m!5757154))

(declare-fun m!5757156 () Bool)

(assert (=> b!4780430 m!5757156))

(declare-fun m!5757158 () Bool)

(assert (=> b!4780430 m!5757158))

(assert (=> b!4780430 m!5757158))

(declare-fun m!5757160 () Bool)

(assert (=> b!4780430 m!5757160))

(assert (=> b!4780424 m!5757152))

(declare-fun m!5757162 () Bool)

(assert (=> b!4780424 m!5757162))

(declare-fun m!5757164 () Bool)

(assert (=> b!4780424 m!5757164))

(declare-fun m!5757166 () Bool)

(assert (=> b!4780424 m!5757166))

(assert (=> b!4780424 m!5757152))

(declare-fun m!5757168 () Bool)

(assert (=> b!4780424 m!5757168))

(declare-fun m!5757170 () Bool)

(assert (=> b!4780429 m!5757170))

(assert (=> b!4779969 d!1528260))

(declare-fun d!1528262 () Bool)

(assert (=> d!1528262 (= (isDefined!10054 lt!1942651) (not (isEmpty!29345 lt!1942651)))))

(declare-fun bs!1151699 () Bool)

(assert (= bs!1151699 d!1528262))

(assert (=> bs!1151699 m!5756600))

(assert (=> b!4780002 d!1528262))

(declare-fun bs!1151700 () Bool)

(declare-fun d!1528264 () Bool)

(assert (= bs!1151700 (and d!1528264 b!4780347)))

(declare-fun lambda!227951 () Int)

(assert (=> bs!1151700 (not (= lambda!227951 lambda!227932))))

(declare-fun bs!1151701 () Bool)

(assert (= bs!1151701 (and d!1528264 b!4780343)))

(assert (=> bs!1151701 (not (= lambda!227951 lambda!227933))))

(assert (=> bs!1151701 (not (= lambda!227951 lambda!227934))))

(declare-fun bs!1151702 () Bool)

(assert (= bs!1151702 (and d!1528264 d!1528124)))

(assert (=> bs!1151702 (not (= lambda!227951 lambda!227935))))

(assert (=> d!1528264 true))

(assert (=> d!1528264 true))

(assert (=> d!1528264 (= (allKeysSameHash!1938 (_2!31515 (h!60388 (toList!6715 lm!2709))) (_1!31515 (h!60388 (toList!6715 lm!2709))) hashF!1687) (forall!12106 (_2!31515 (h!60388 (toList!6715 lm!2709))) lambda!227951))))

(declare-fun bs!1151703 () Bool)

(assert (= bs!1151703 d!1528264))

(declare-fun m!5757172 () Bool)

(assert (=> bs!1151703 m!5757172))

(assert (=> bs!1151604 d!1528264))

(declare-fun d!1528266 () Bool)

(assert (=> d!1528266 (dynLambda!22009 lambda!227798 lt!1942496)))

(assert (=> d!1528266 true))

(declare-fun _$7!2342 () Unit!139163)

(assert (=> d!1528266 (= (choose!34230 (toList!6715 lm!2709) lambda!227798 lt!1942496) _$7!2342)))

(declare-fun b_lambda!185549 () Bool)

(assert (=> (not b_lambda!185549) (not d!1528266)))

(declare-fun bs!1151704 () Bool)

(assert (= bs!1151704 d!1528266))

(assert (=> bs!1151704 m!5756628))

(assert (=> d!1528004 d!1528266))

(assert (=> d!1528004 d!1527932))

(assert (=> b!4780006 d!1528096))

(declare-fun d!1528268 () Bool)

(assert (=> d!1528268 (= (isEmpty!29345 lt!1942651) (not ((_ is Some!12909) lt!1942651)))))

(assert (=> d!1527994 d!1528268))

(declare-fun d!1528270 () Bool)

(declare-fun res!2029557 () Bool)

(declare-fun e!2984459 () Bool)

(assert (=> d!1528270 (=> res!2029557 e!2984459)))

(assert (=> d!1528270 (= res!2029557 (not ((_ is Cons!53969) lt!1942497)))))

(assert (=> d!1528270 (= (noDuplicateKeys!2289 lt!1942497) e!2984459)))

(declare-fun b!4780437 () Bool)

(declare-fun e!2984460 () Bool)

(assert (=> b!4780437 (= e!2984459 e!2984460)))

(declare-fun res!2029558 () Bool)

(assert (=> b!4780437 (=> (not res!2029558) (not e!2984460))))

(assert (=> b!4780437 (= res!2029558 (not (containsKey!3792 (t!361543 lt!1942497) (_1!31514 (h!60387 lt!1942497)))))))

(declare-fun b!4780438 () Bool)

(assert (=> b!4780438 (= e!2984460 (noDuplicateKeys!2289 (t!361543 lt!1942497)))))

(assert (= (and d!1528270 (not res!2029557)) b!4780437))

(assert (= (and b!4780437 res!2029558) b!4780438))

(declare-fun m!5757174 () Bool)

(assert (=> b!4780437 m!5757174))

(assert (=> b!4780438 m!5756820))

(assert (=> d!1527994 d!1528270))

(declare-fun d!1528272 () Bool)

(declare-fun res!2029563 () Bool)

(declare-fun e!2984465 () Bool)

(assert (=> d!1528272 (=> res!2029563 e!2984465)))

(assert (=> d!1528272 (= res!2029563 (and ((_ is Cons!53970) (toList!6715 lm!2709)) (= (_1!31515 (h!60388 (toList!6715 lm!2709))) lt!1942490)))))

(assert (=> d!1528272 (= (containsKey!3795 (toList!6715 lm!2709) lt!1942490) e!2984465)))

(declare-fun b!4780443 () Bool)

(declare-fun e!2984466 () Bool)

(assert (=> b!4780443 (= e!2984465 e!2984466)))

(declare-fun res!2029564 () Bool)

(assert (=> b!4780443 (=> (not res!2029564) (not e!2984466))))

(assert (=> b!4780443 (= res!2029564 (and (or (not ((_ is Cons!53970) (toList!6715 lm!2709))) (bvsle (_1!31515 (h!60388 (toList!6715 lm!2709))) lt!1942490)) ((_ is Cons!53970) (toList!6715 lm!2709)) (bvslt (_1!31515 (h!60388 (toList!6715 lm!2709))) lt!1942490)))))

(declare-fun b!4780444 () Bool)

(assert (=> b!4780444 (= e!2984466 (containsKey!3795 (t!361544 (toList!6715 lm!2709)) lt!1942490))))

(assert (= (and d!1528272 (not res!2029563)) b!4780443))

(assert (= (and b!4780443 res!2029564) b!4780444))

(declare-fun m!5757176 () Bool)

(assert (=> b!4780444 m!5757176))

(assert (=> d!1527966 d!1528272))

(assert (=> b!4780021 d!1528002))

(declare-fun tp!1357376 () Bool)

(declare-fun e!2984469 () Bool)

(declare-fun b!4780449 () Bool)

(assert (=> b!4780449 (= e!2984469 (and tp_is_empty!33173 tp_is_empty!33175 tp!1357376))))

(assert (=> b!4780026 (= tp!1357367 e!2984469)))

(assert (= (and b!4780026 ((_ is Cons!53969) (_2!31515 (h!60388 (toList!6715 lm!2709))))) b!4780449))

(declare-fun b!4780450 () Bool)

(declare-fun e!2984470 () Bool)

(declare-fun tp!1357377 () Bool)

(declare-fun tp!1357378 () Bool)

(assert (=> b!4780450 (= e!2984470 (and tp!1357377 tp!1357378))))

(assert (=> b!4780026 (= tp!1357368 e!2984470)))

(assert (= (and b!4780026 ((_ is Cons!53970) (t!361544 (toList!6715 lm!2709)))) b!4780450))

(declare-fun b_lambda!185551 () Bool)

(assert (= b_lambda!185503 (or d!1527940 b_lambda!185551)))

(declare-fun bs!1151705 () Bool)

(declare-fun d!1528274 () Bool)

(assert (= bs!1151705 (and d!1528274 d!1527940)))

(assert (=> bs!1151705 (= (dynLambda!22009 lambda!227805 (h!60388 (toList!6715 lm!2709))) (allKeysSameHash!1938 (_2!31515 (h!60388 (toList!6715 lm!2709))) (_1!31515 (h!60388 (toList!6715 lm!2709))) hashF!1687))))

(assert (=> bs!1151705 m!5756634))

(assert (=> b!4780143 d!1528274))

(declare-fun b_lambda!185553 () Bool)

(assert (= b_lambda!185543 (or d!1527954 b_lambda!185553)))

(declare-fun bs!1151706 () Bool)

(declare-fun d!1528276 () Bool)

(assert (= bs!1151706 (and d!1528276 d!1527954)))

(assert (=> bs!1151706 (= (dynLambda!22009 lambda!227817 (h!60388 (toList!6715 lm!2709))) (noDuplicateKeys!2289 (_2!31515 (h!60388 (toList!6715 lm!2709)))))))

(assert (=> bs!1151706 m!5756632))

(assert (=> b!4780376 d!1528276))

(declare-fun b_lambda!185555 () Bool)

(assert (= b_lambda!185501 (or d!1527992 b_lambda!185555)))

(declare-fun bs!1151707 () Bool)

(declare-fun d!1528278 () Bool)

(assert (= bs!1151707 (and d!1528278 d!1527992)))

(assert (=> bs!1151707 (= (dynLambda!22009 lambda!227831 (h!60388 (toList!6715 lm!2709))) (noDuplicateKeys!2289 (_2!31515 (h!60388 (toList!6715 lm!2709)))))))

(assert (=> bs!1151707 m!5756632))

(assert (=> b!4780135 d!1528278))

(declare-fun b_lambda!185557 () Bool)

(assert (= b_lambda!185549 (or start!490502 b_lambda!185557)))

(assert (=> d!1528266 d!1528010))

(declare-fun b_lambda!185559 () Bool)

(assert (= b_lambda!185507 (or d!1528000 b_lambda!185559)))

(declare-fun bs!1151708 () Bool)

(declare-fun d!1528280 () Bool)

(assert (= bs!1151708 (and d!1528280 d!1528000)))

(assert (=> bs!1151708 (= (dynLambda!22009 lambda!227837 (h!60388 (toList!6715 lm!2709))) (noDuplicateKeys!2289 (_2!31515 (h!60388 (toList!6715 lm!2709)))))))

(assert (=> bs!1151708 m!5756632))

(assert (=> b!4780163 d!1528280))

(declare-fun b_lambda!185561 () Bool)

(assert (= b_lambda!185499 (or d!1527992 b_lambda!185561)))

(declare-fun bs!1151709 () Bool)

(declare-fun d!1528282 () Bool)

(assert (= bs!1151709 (and d!1528282 d!1527992)))

(assert (=> bs!1151709 (= (dynLambda!22009 lambda!227831 (tuple2!56443 (hash!4799 hashF!1687 key!6641) (apply!12873 lm!2709 (hash!4799 hashF!1687 key!6641)))) (noDuplicateKeys!2289 (_2!31515 (tuple2!56443 (hash!4799 hashF!1687 key!6641) (apply!12873 lm!2709 (hash!4799 hashF!1687 key!6641))))))))

(declare-fun m!5757178 () Bool)

(assert (=> bs!1151709 m!5757178))

(assert (=> d!1528074 d!1528282))

(declare-fun b_lambda!185563 () Bool)

(assert (= b_lambda!185497 (or d!1527998 b_lambda!185563)))

(declare-fun bs!1151710 () Bool)

(declare-fun d!1528284 () Bool)

(assert (= bs!1151710 (and d!1528284 d!1527998)))

(assert (=> bs!1151710 (= (dynLambda!22009 lambda!227834 (h!60388 (toList!6715 lm!2709))) (noDuplicateKeys!2289 (_2!31515 (h!60388 (toList!6715 lm!2709)))))))

(assert (=> bs!1151710 m!5756632))

(assert (=> b!4780071 d!1528284))

(declare-fun b_lambda!185565 () Bool)

(assert (= b_lambda!185545 (or b!4779775 b_lambda!185565)))

(assert (=> d!1528240 d!1528008))

(declare-fun b_lambda!185567 () Bool)

(assert (= b_lambda!185505 (or start!490502 b_lambda!185567)))

(declare-fun bs!1151711 () Bool)

(declare-fun d!1528286 () Bool)

(assert (= bs!1151711 (and d!1528286 start!490502)))

(assert (=> bs!1151711 (= (dynLambda!22009 lambda!227798 (h!60388 (t!361544 (toList!6715 lm!2709)))) (noDuplicateKeys!2289 (_2!31515 (h!60388 (t!361544 (toList!6715 lm!2709))))))))

(declare-fun m!5757180 () Bool)

(assert (=> bs!1151711 m!5757180))

(assert (=> b!4780159 d!1528286))

(declare-fun b_lambda!185569 () Bool)

(assert (= b_lambda!185547 (or b!4779775 b_lambda!185569)))

(assert (=> b!4780380 d!1528008))

(check-sat (not b!4780090) (not d!1528254) (not b_lambda!185485) (not b!4780106) (not b!4780118) (not b!4780429) (not d!1528234) (not d!1528262) (not b_lambda!185561) (not b!4780099) (not d!1528232) (not b_lambda!185563) (not b!4780427) (not d!1528074) (not b!4780379) (not b!4780449) (not bs!1151709) (not b_lambda!185555) (not b_lambda!185557) (not d!1528052) (not d!1528076) (not bs!1151710) tp_is_empty!33173 (not bs!1151708) (not b!4780343) (not b_lambda!185567) (not b!4780167) (not b!4780437) (not b!4780100) (not b_lambda!185489) (not d!1528070) (not b!4780424) (not d!1528250) (not b!4780170) (not b!4780144) (not b!4780169) (not bs!1151707) (not b_lambda!185569) (not b!4780401) (not b!4780147) (not bs!1151706) (not b!4780162) (not b!4780098) (not d!1528064) (not b!4780166) (not d!1528080) (not b!4780095) (not d!1528106) (not b!4780450) (not d!1528264) (not b!4780103) (not b!4780142) (not b!4780373) (not b!4780129) tp_is_empty!33175 (not d!1528094) (not b_lambda!185559) (not b!4780344) (not b!4780132) (not b!4780146) (not b!4780392) (not d!1528092) (not bm!334700) (not b!4780149) (not b!4780403) (not b!4780345) (not bs!1151705) (not b!4780114) (not b!4780438) (not b!4780444) (not b!4780399) (not b!4780160) (not b!4780161) (not b!4780072) (not b!4780150) (not d!1528112) (not b!4780109) (not b!4780075) (not b!4780375) (not d!1528246) (not d!1528068) (not b_lambda!185553) (not b!4780145) (not b!4780107) (not d!1528058) (not b_lambda!185487) (not b!4780423) (not d!1528228) (not d!1528260) (not b!4780081) (not b!4780094) (not b!4780134) (not b!4780115) (not b_lambda!185551) (not b!4780097) (not b!4780073) (not b!4780164) (not bm!334699) (not b!4780395) (not d!1528072) (not d!1528098) (not d!1528062) (not d!1528238) (not b!4780158) (not b!4780367) (not b!4780074) (not b!4780377) (not b!4780346) (not b!4780102) (not d!1528120) (not b!4780136) (not d!1528060) (not d!1528102) (not d!1528124) (not d!1528066) (not bs!1151711) (not b!4780088) (not d!1528082) (not d!1528224) (not b!4780165) (not b!4780089) (not b!4780430) (not b!4780358) (not d!1528244) (not d!1528252) (not b_lambda!185565) (not b!4780381) (not b!4780365) (not bm!334701))
(check-sat)
