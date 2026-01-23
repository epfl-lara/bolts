; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489496 () Bool)

(assert start!489496)

(declare-fun bs!1150547 () Bool)

(declare-fun b!4775542 () Bool)

(assert (= bs!1150547 (and b!4775542 start!489496)))

(declare-fun lambda!226575 () Int)

(declare-fun lambda!226574 () Int)

(assert (=> bs!1150547 (not (= lambda!226575 lambda!226574))))

(assert (=> b!4775542 true))

(declare-fun b!4775539 () Bool)

(declare-fun e!2981312 () Bool)

(declare-fun tp!1357071 () Bool)

(assert (=> b!4775539 (= e!2981312 tp!1357071)))

(declare-fun b!4775540 () Bool)

(declare-fun res!2026456 () Bool)

(declare-fun e!2981314 () Bool)

(assert (=> b!4775540 (=> res!2026456 e!2981314)))

(declare-datatypes ((K!15387 0))(
  ( (K!15388 (val!20615 Int)) )
))
(declare-datatypes ((V!15633 0))(
  ( (V!15634 (val!20616 Int)) )
))
(declare-datatypes ((tuple2!56204 0))(
  ( (tuple2!56205 (_1!31396 K!15387) (_2!31396 V!15633)) )
))
(declare-datatypes ((List!53965 0))(
  ( (Nil!53841) (Cons!53841 (h!60255 tuple2!56204) (t!361415 List!53965)) )
))
(declare-datatypes ((tuple2!56206 0))(
  ( (tuple2!56207 (_1!31397 (_ BitVec 64)) (_2!31397 List!53965)) )
))
(declare-datatypes ((List!53966 0))(
  ( (Nil!53842) (Cons!53842 (h!60256 tuple2!56206) (t!361416 List!53966)) )
))
(declare-datatypes ((ListLongMap!5019 0))(
  ( (ListLongMap!5020 (toList!6601 List!53966)) )
))
(declare-fun lm!2709 () ListLongMap!5019)

(declare-fun lt!1938540 () (_ BitVec 64))

(assert (=> b!4775540 (= res!2026456 (or (not (is-Cons!53842 (toList!6601 lm!2709))) (not (= (_1!31397 (h!60256 (toList!6601 lm!2709))) lt!1938540))))))

(declare-fun b!4775541 () Bool)

(declare-fun res!2026454 () Bool)

(declare-fun e!2981313 () Bool)

(assert (=> b!4775541 (=> (not res!2026454) (not e!2981313))))

(declare-datatypes ((Hashable!6759 0))(
  ( (HashableExt!6758 (__x!32782 Int)) )
))
(declare-fun hashF!1687 () Hashable!6759)

(declare-fun allKeysSameHashInMap!2164 (ListLongMap!5019 Hashable!6759) Bool)

(assert (=> b!4775541 (= res!2026454 (allKeysSameHashInMap!2164 lm!2709 hashF!1687))))

(declare-fun e!2981311 () Bool)

(assert (=> b!4775542 (= e!2981314 e!2981311)))

(declare-fun res!2026451 () Bool)

(assert (=> b!4775542 (=> res!2026451 e!2981311)))

(declare-fun key!6641 () K!15387)

(declare-fun containsKey!3734 (List!53965 K!15387) Bool)

(assert (=> b!4775542 (= res!2026451 (containsKey!3734 (_2!31397 (h!60256 (toList!6601 lm!2709))) key!6641))))

(declare-datatypes ((Unit!138836 0))(
  ( (Unit!138837) )
))
(declare-fun lt!1938543 () Unit!138836)

(declare-fun forallContained!3984 (List!53966 Int tuple2!56206) Unit!138836)

(assert (=> b!4775542 (= lt!1938543 (forallContained!3984 (toList!6601 lm!2709) lambda!226575 (h!60256 (toList!6601 lm!2709))))))

(declare-fun b!4775543 () Bool)

(assert (=> b!4775543 (= e!2981311 true)))

(assert (=> b!4775543 false))

(declare-fun lt!1938538 () Unit!138836)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!417 (ListLongMap!5019 K!15387 Hashable!6759) Unit!138836)

(assert (=> b!4775543 (= lt!1938538 (lemmaNotInItsHashBucketThenNotInMap!417 lm!2709 key!6641 hashF!1687))))

(declare-fun res!2026455 () Bool)

(assert (=> start!489496 (=> (not res!2026455) (not e!2981313))))

(declare-fun forall!12027 (List!53966 Int) Bool)

(assert (=> start!489496 (= res!2026455 (forall!12027 (toList!6601 lm!2709) lambda!226574))))

(assert (=> start!489496 e!2981313))

(declare-fun inv!69414 (ListLongMap!5019) Bool)

(assert (=> start!489496 (and (inv!69414 lm!2709) e!2981312)))

(assert (=> start!489496 true))

(declare-fun tp_is_empty!32965 () Bool)

(assert (=> start!489496 tp_is_empty!32965))

(declare-fun tp_is_empty!32967 () Bool)

(assert (=> start!489496 tp_is_empty!32967))

(declare-fun b!4775544 () Bool)

(declare-fun res!2026453 () Bool)

(assert (=> b!4775544 (=> (not res!2026453) (not e!2981313))))

(declare-fun containsKeyBiggerList!415 (List!53966 K!15387) Bool)

(assert (=> b!4775544 (= res!2026453 (containsKeyBiggerList!415 (toList!6601 lm!2709) key!6641))))

(declare-fun b!4775545 () Bool)

(assert (=> b!4775545 (= e!2981313 (not e!2981314))))

(declare-fun res!2026452 () Bool)

(assert (=> b!4775545 (=> res!2026452 e!2981314)))

(declare-datatypes ((Option!12848 0))(
  ( (None!12847) (Some!12847 (v!48008 tuple2!56204)) )
))
(declare-fun lt!1938544 () Option!12848)

(declare-fun v!11584 () V!15633)

(declare-fun get!18256 (Option!12848) tuple2!56204)

(assert (=> b!4775545 (= res!2026452 (not (= (_2!31396 (get!18256 lt!1938544)) v!11584)))))

(declare-fun isDefined!9992 (Option!12848) Bool)

(assert (=> b!4775545 (isDefined!9992 lt!1938544)))

(declare-fun lt!1938545 () List!53965)

(declare-fun getPair!747 (List!53965 K!15387) Option!12848)

(assert (=> b!4775545 (= lt!1938544 (getPair!747 lt!1938545 key!6641))))

(declare-fun lt!1938536 () tuple2!56206)

(declare-fun lt!1938534 () Unit!138836)

(assert (=> b!4775545 (= lt!1938534 (forallContained!3984 (toList!6601 lm!2709) lambda!226574 lt!1938536))))

(declare-fun lt!1938539 () Unit!138836)

(declare-fun lemmaInGenMapThenGetPairDefined!521 (ListLongMap!5019 K!15387 Hashable!6759) Unit!138836)

(assert (=> b!4775545 (= lt!1938539 (lemmaInGenMapThenGetPairDefined!521 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1938537 () Unit!138836)

(assert (=> b!4775545 (= lt!1938537 (forallContained!3984 (toList!6601 lm!2709) lambda!226574 lt!1938536))))

(declare-fun contains!17313 (List!53966 tuple2!56206) Bool)

(assert (=> b!4775545 (contains!17313 (toList!6601 lm!2709) lt!1938536)))

(assert (=> b!4775545 (= lt!1938536 (tuple2!56207 lt!1938540 lt!1938545))))

(declare-fun lt!1938535 () Unit!138836)

(declare-fun lemmaGetValueImpliesTupleContained!550 (ListLongMap!5019 (_ BitVec 64) List!53965) Unit!138836)

(assert (=> b!4775545 (= lt!1938535 (lemmaGetValueImpliesTupleContained!550 lm!2709 lt!1938540 lt!1938545))))

(declare-fun apply!12822 (ListLongMap!5019 (_ BitVec 64)) List!53965)

(assert (=> b!4775545 (= lt!1938545 (apply!12822 lm!2709 lt!1938540))))

(declare-fun contains!17314 (ListLongMap!5019 (_ BitVec 64)) Bool)

(assert (=> b!4775545 (contains!17314 lm!2709 lt!1938540)))

(declare-fun hash!4731 (Hashable!6759 K!15387) (_ BitVec 64))

(assert (=> b!4775545 (= lt!1938540 (hash!4731 hashF!1687 key!6641))))

(declare-fun lt!1938541 () Unit!138836)

(declare-fun lemmaInGenMapThenLongMapContainsHash!963 (ListLongMap!5019 K!15387 Hashable!6759) Unit!138836)

(assert (=> b!4775545 (= lt!1938541 (lemmaInGenMapThenLongMapContainsHash!963 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6077 0))(
  ( (ListMap!6078 (toList!6602 List!53965)) )
))
(declare-fun contains!17315 (ListMap!6077 K!15387) Bool)

(declare-fun extractMap!2290 (List!53966) ListMap!6077)

(assert (=> b!4775545 (contains!17315 (extractMap!2290 (toList!6601 lm!2709)) key!6641)))

(declare-fun lt!1938542 () Unit!138836)

(declare-fun lemmaListContainsThenExtractedMapContains!611 (ListLongMap!5019 K!15387 Hashable!6759) Unit!138836)

(assert (=> b!4775545 (= lt!1938542 (lemmaListContainsThenExtractedMapContains!611 lm!2709 key!6641 hashF!1687))))

(assert (= (and start!489496 res!2026455) b!4775541))

(assert (= (and b!4775541 res!2026454) b!4775544))

(assert (= (and b!4775544 res!2026453) b!4775545))

(assert (= (and b!4775545 (not res!2026452)) b!4775540))

(assert (= (and b!4775540 (not res!2026456)) b!4775542))

(assert (= (and b!4775542 (not res!2026451)) b!4775543))

(assert (= start!489496 b!4775539))

(declare-fun m!5749992 () Bool)

(assert (=> start!489496 m!5749992))

(declare-fun m!5749994 () Bool)

(assert (=> start!489496 m!5749994))

(declare-fun m!5749996 () Bool)

(assert (=> b!4775542 m!5749996))

(declare-fun m!5749998 () Bool)

(assert (=> b!4775542 m!5749998))

(declare-fun m!5750000 () Bool)

(assert (=> b!4775543 m!5750000))

(declare-fun m!5750002 () Bool)

(assert (=> b!4775544 m!5750002))

(declare-fun m!5750004 () Bool)

(assert (=> b!4775541 m!5750004))

(declare-fun m!5750006 () Bool)

(assert (=> b!4775545 m!5750006))

(declare-fun m!5750008 () Bool)

(assert (=> b!4775545 m!5750008))

(declare-fun m!5750010 () Bool)

(assert (=> b!4775545 m!5750010))

(declare-fun m!5750012 () Bool)

(assert (=> b!4775545 m!5750012))

(declare-fun m!5750014 () Bool)

(assert (=> b!4775545 m!5750014))

(declare-fun m!5750016 () Bool)

(assert (=> b!4775545 m!5750016))

(declare-fun m!5750018 () Bool)

(assert (=> b!4775545 m!5750018))

(declare-fun m!5750020 () Bool)

(assert (=> b!4775545 m!5750020))

(declare-fun m!5750022 () Bool)

(assert (=> b!4775545 m!5750022))

(declare-fun m!5750024 () Bool)

(assert (=> b!4775545 m!5750024))

(declare-fun m!5750026 () Bool)

(assert (=> b!4775545 m!5750026))

(declare-fun m!5750028 () Bool)

(assert (=> b!4775545 m!5750028))

(declare-fun m!5750030 () Bool)

(assert (=> b!4775545 m!5750030))

(assert (=> b!4775545 m!5750014))

(assert (=> b!4775545 m!5750018))

(declare-fun m!5750032 () Bool)

(assert (=> b!4775545 m!5750032))

(push 1)

(assert tp_is_empty!32965)

(assert (not start!489496))

(assert (not b!4775543))

(assert tp_is_empty!32967)

(assert (not b!4775544))

(assert (not b!4775545))

(assert (not b!4775542))

(assert (not b!4775539))

(assert (not b!4775541))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

