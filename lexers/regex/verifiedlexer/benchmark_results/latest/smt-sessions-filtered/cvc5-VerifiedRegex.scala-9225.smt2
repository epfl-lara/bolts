; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489516 () Bool)

(assert start!489516)

(declare-fun b!4775773 () Bool)

(declare-fun res!2026643 () Bool)

(declare-fun e!2981419 () Bool)

(assert (=> b!4775773 (=> res!2026643 e!2981419)))

(declare-datatypes ((K!15412 0))(
  ( (K!15413 (val!20635 Int)) )
))
(declare-datatypes ((V!15658 0))(
  ( (V!15659 (val!20636 Int)) )
))
(declare-datatypes ((tuple2!56244 0))(
  ( (tuple2!56245 (_1!31416 K!15412) (_2!31416 V!15658)) )
))
(declare-datatypes ((List!53985 0))(
  ( (Nil!53861) (Cons!53861 (h!60275 tuple2!56244) (t!361435 List!53985)) )
))
(declare-datatypes ((tuple2!56246 0))(
  ( (tuple2!56247 (_1!31417 (_ BitVec 64)) (_2!31417 List!53985)) )
))
(declare-datatypes ((List!53986 0))(
  ( (Nil!53862) (Cons!53862 (h!60276 tuple2!56246) (t!361436 List!53986)) )
))
(declare-datatypes ((ListLongMap!5039 0))(
  ( (ListLongMap!5040 (toList!6621 List!53986)) )
))
(declare-fun lm!2709 () ListLongMap!5039)

(declare-fun lt!1938874 () (_ BitVec 64))

(assert (=> b!4775773 (= res!2026643 (or (and (is-Cons!53862 (toList!6621 lm!2709)) (= (_1!31417 (h!60276 (toList!6621 lm!2709))) lt!1938874)) (not (is-Cons!53862 (toList!6621 lm!2709)))))))

(declare-fun b!4775774 () Bool)

(declare-fun res!2026641 () Bool)

(assert (=> b!4775774 (=> res!2026641 e!2981419)))

(declare-fun contains!17343 (ListLongMap!5039 (_ BitVec 64)) Bool)

(assert (=> b!4775774 (= res!2026641 (not (contains!17343 lm!2709 (_1!31417 (h!60276 (toList!6621 lm!2709))))))))

(declare-fun b!4775775 () Bool)

(declare-fun res!2026639 () Bool)

(declare-fun e!2981418 () Bool)

(assert (=> b!4775775 (=> (not res!2026639) (not e!2981418))))

(declare-fun key!6641 () K!15412)

(declare-fun containsKeyBiggerList!425 (List!53986 K!15412) Bool)

(assert (=> b!4775775 (= res!2026639 (containsKeyBiggerList!425 (toList!6621 lm!2709) key!6641))))

(declare-fun b!4775776 () Bool)

(declare-fun res!2026644 () Bool)

(assert (=> b!4775776 (=> (not res!2026644) (not e!2981418))))

(declare-datatypes ((Hashable!6769 0))(
  ( (HashableExt!6768 (__x!32792 Int)) )
))
(declare-fun hashF!1687 () Hashable!6769)

(declare-fun allKeysSameHashInMap!2174 (ListLongMap!5039 Hashable!6769) Bool)

(assert (=> b!4775776 (= res!2026644 (allKeysSameHashInMap!2174 lm!2709 hashF!1687))))

(declare-fun b!4775777 () Bool)

(declare-fun e!2981417 () Bool)

(declare-fun tp!1357101 () Bool)

(assert (=> b!4775777 (= e!2981417 tp!1357101)))

(declare-fun b!4775778 () Bool)

(assert (=> b!4775778 (= e!2981418 (not e!2981419))))

(declare-fun res!2026640 () Bool)

(assert (=> b!4775778 (=> res!2026640 e!2981419)))

(declare-datatypes ((Option!12858 0))(
  ( (None!12857) (Some!12857 (v!48018 tuple2!56244)) )
))
(declare-fun lt!1938878 () Option!12858)

(declare-fun v!11584 () V!15658)

(declare-fun get!18271 (Option!12858) tuple2!56244)

(assert (=> b!4775778 (= res!2026640 (not (= (_2!31416 (get!18271 lt!1938878)) v!11584)))))

(declare-fun isDefined!10002 (Option!12858) Bool)

(assert (=> b!4775778 (isDefined!10002 lt!1938878)))

(declare-fun lt!1938873 () List!53985)

(declare-fun getPair!757 (List!53985 K!15412) Option!12858)

(assert (=> b!4775778 (= lt!1938878 (getPair!757 lt!1938873 key!6641))))

(declare-fun lt!1938880 () tuple2!56246)

(declare-fun lambda!226680 () Int)

(declare-datatypes ((Unit!138856 0))(
  ( (Unit!138857) )
))
(declare-fun lt!1938879 () Unit!138856)

(declare-fun forallContained!3994 (List!53986 Int tuple2!56246) Unit!138856)

(assert (=> b!4775778 (= lt!1938879 (forallContained!3994 (toList!6621 lm!2709) lambda!226680 lt!1938880))))

(declare-fun lt!1938876 () Unit!138856)

(declare-fun lemmaInGenMapThenGetPairDefined!531 (ListLongMap!5039 K!15412 Hashable!6769) Unit!138856)

(assert (=> b!4775778 (= lt!1938876 (lemmaInGenMapThenGetPairDefined!531 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1938872 () Unit!138856)

(assert (=> b!4775778 (= lt!1938872 (forallContained!3994 (toList!6621 lm!2709) lambda!226680 lt!1938880))))

(declare-fun contains!17344 (List!53986 tuple2!56246) Bool)

(assert (=> b!4775778 (contains!17344 (toList!6621 lm!2709) lt!1938880)))

(assert (=> b!4775778 (= lt!1938880 (tuple2!56247 lt!1938874 lt!1938873))))

(declare-fun lt!1938881 () Unit!138856)

(declare-fun lemmaGetValueImpliesTupleContained!560 (ListLongMap!5039 (_ BitVec 64) List!53985) Unit!138856)

(assert (=> b!4775778 (= lt!1938881 (lemmaGetValueImpliesTupleContained!560 lm!2709 lt!1938874 lt!1938873))))

(declare-fun apply!12832 (ListLongMap!5039 (_ BitVec 64)) List!53985)

(assert (=> b!4775778 (= lt!1938873 (apply!12832 lm!2709 lt!1938874))))

(assert (=> b!4775778 (contains!17343 lm!2709 lt!1938874)))

(declare-fun hash!4741 (Hashable!6769 K!15412) (_ BitVec 64))

(assert (=> b!4775778 (= lt!1938874 (hash!4741 hashF!1687 key!6641))))

(declare-fun lt!1938875 () Unit!138856)

(declare-fun lemmaInGenMapThenLongMapContainsHash!973 (ListLongMap!5039 K!15412 Hashable!6769) Unit!138856)

(assert (=> b!4775778 (= lt!1938875 (lemmaInGenMapThenLongMapContainsHash!973 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6097 0))(
  ( (ListMap!6098 (toList!6622 List!53985)) )
))
(declare-fun contains!17345 (ListMap!6097 K!15412) Bool)

(declare-fun extractMap!2300 (List!53986) ListMap!6097)

(assert (=> b!4775778 (contains!17345 (extractMap!2300 (toList!6621 lm!2709)) key!6641)))

(declare-fun lt!1938877 () Unit!138856)

(declare-fun lemmaListContainsThenExtractedMapContains!621 (ListLongMap!5039 K!15412 Hashable!6769) Unit!138856)

(assert (=> b!4775778 (= lt!1938877 (lemmaListContainsThenExtractedMapContains!621 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4775779 () Bool)

(assert (=> b!4775779 (= e!2981419 true)))

(declare-fun res!2026645 () Bool)

(assert (=> start!489516 (=> (not res!2026645) (not e!2981418))))

(declare-fun forall!12037 (List!53986 Int) Bool)

(assert (=> start!489516 (= res!2026645 (forall!12037 (toList!6621 lm!2709) lambda!226680))))

(assert (=> start!489516 e!2981418))

(declare-fun inv!69439 (ListLongMap!5039) Bool)

(assert (=> start!489516 (and (inv!69439 lm!2709) e!2981417)))

(assert (=> start!489516 true))

(declare-fun tp_is_empty!33005 () Bool)

(assert (=> start!489516 tp_is_empty!33005))

(declare-fun tp_is_empty!33007 () Bool)

(assert (=> start!489516 tp_is_empty!33007))

(declare-fun b!4775780 () Bool)

(declare-fun res!2026642 () Bool)

(assert (=> b!4775780 (=> res!2026642 e!2981419)))

(assert (=> b!4775780 (= res!2026642 (not (forall!12037 (toList!6621 lm!2709) lambda!226680)))))

(assert (= (and start!489516 res!2026645) b!4775776))

(assert (= (and b!4775776 res!2026644) b!4775775))

(assert (= (and b!4775775 res!2026639) b!4775778))

(assert (= (and b!4775778 (not res!2026640)) b!4775773))

(assert (= (and b!4775773 (not res!2026643)) b!4775780))

(assert (= (and b!4775780 (not res!2026642)) b!4775774))

(assert (= (and b!4775774 (not res!2026641)) b!4775779))

(assert (= start!489516 b!4775777))

(declare-fun m!5750396 () Bool)

(assert (=> b!4775778 m!5750396))

(declare-fun m!5750398 () Bool)

(assert (=> b!4775778 m!5750398))

(declare-fun m!5750400 () Bool)

(assert (=> b!4775778 m!5750400))

(declare-fun m!5750402 () Bool)

(assert (=> b!4775778 m!5750402))

(declare-fun m!5750404 () Bool)

(assert (=> b!4775778 m!5750404))

(assert (=> b!4775778 m!5750400))

(declare-fun m!5750406 () Bool)

(assert (=> b!4775778 m!5750406))

(declare-fun m!5750408 () Bool)

(assert (=> b!4775778 m!5750408))

(declare-fun m!5750410 () Bool)

(assert (=> b!4775778 m!5750410))

(declare-fun m!5750412 () Bool)

(assert (=> b!4775778 m!5750412))

(declare-fun m!5750414 () Bool)

(assert (=> b!4775778 m!5750414))

(declare-fun m!5750416 () Bool)

(assert (=> b!4775778 m!5750416))

(declare-fun m!5750418 () Bool)

(assert (=> b!4775778 m!5750418))

(declare-fun m!5750420 () Bool)

(assert (=> b!4775778 m!5750420))

(assert (=> b!4775778 m!5750412))

(declare-fun m!5750422 () Bool)

(assert (=> b!4775778 m!5750422))

(declare-fun m!5750424 () Bool)

(assert (=> b!4775775 m!5750424))

(declare-fun m!5750426 () Bool)

(assert (=> start!489516 m!5750426))

(declare-fun m!5750428 () Bool)

(assert (=> start!489516 m!5750428))

(declare-fun m!5750430 () Bool)

(assert (=> b!4775776 m!5750430))

(assert (=> b!4775780 m!5750426))

(declare-fun m!5750432 () Bool)

(assert (=> b!4775774 m!5750432))

(push 1)

(assert (not b!4775776))

(assert (not b!4775780))

(assert tp_is_empty!33005)

(assert (not b!4775774))

(assert (not b!4775775))

(assert (not b!4775778))

(assert (not b!4775777))

(assert (not start!489516))

(assert tp_is_empty!33007)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

