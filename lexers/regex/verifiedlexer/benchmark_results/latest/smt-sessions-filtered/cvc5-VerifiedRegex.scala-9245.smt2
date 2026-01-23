; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!490296 () Bool)

(assert start!490296)

(declare-fun bs!1151358 () Bool)

(declare-fun b!4778924 () Bool)

(assert (= bs!1151358 (and b!4778924 start!490296)))

(declare-fun lambda!227547 () Int)

(declare-fun lambda!227546 () Int)

(assert (=> bs!1151358 (not (= lambda!227547 lambda!227546))))

(assert (=> b!4778924 true))

(declare-fun b!4778921 () Bool)

(declare-fun res!2028659 () Bool)

(declare-fun e!2983463 () Bool)

(assert (=> b!4778921 (=> (not res!2028659) (not e!2983463))))

(declare-datatypes ((K!15512 0))(
  ( (K!15513 (val!20715 Int)) )
))
(declare-datatypes ((V!15758 0))(
  ( (V!15759 (val!20716 Int)) )
))
(declare-datatypes ((tuple2!56404 0))(
  ( (tuple2!56405 (_1!31496 K!15512) (_2!31496 V!15758)) )
))
(declare-datatypes ((List!54073 0))(
  ( (Nil!53949) (Cons!53949 (h!60365 tuple2!56404) (t!361523 List!54073)) )
))
(declare-datatypes ((tuple2!56406 0))(
  ( (tuple2!56407 (_1!31497 (_ BitVec 64)) (_2!31497 List!54073)) )
))
(declare-datatypes ((List!54074 0))(
  ( (Nil!53950) (Cons!53950 (h!60366 tuple2!56406) (t!361524 List!54074)) )
))
(declare-datatypes ((ListLongMap!5119 0))(
  ( (ListLongMap!5120 (toList!6697 List!54074)) )
))
(declare-fun lm!2709 () ListLongMap!5119)

(declare-fun key!6641 () K!15512)

(declare-fun containsKeyBiggerList!465 (List!54074 K!15512) Bool)

(assert (=> b!4778921 (= res!2028659 (containsKeyBiggerList!465 (toList!6697 lm!2709) key!6641))))

(declare-fun b!4778922 () Bool)

(declare-fun e!2983461 () Bool)

(declare-fun tp!1357307 () Bool)

(assert (=> b!4778922 (= e!2983461 tp!1357307)))

(declare-fun b!4778923 () Bool)

(declare-fun e!2983462 () Bool)

(assert (=> b!4778923 (= e!2983463 (not e!2983462))))

(declare-fun res!2028655 () Bool)

(assert (=> b!4778923 (=> res!2028655 e!2983462)))

(declare-datatypes ((Option!12897 0))(
  ( (None!12896) (Some!12896 (v!48079 tuple2!56404)) )
))
(declare-fun lt!1941733 () Option!12897)

(declare-fun v!11584 () V!15758)

(declare-fun get!18322 (Option!12897) tuple2!56404)

(assert (=> b!4778923 (= res!2028655 (not (= (_2!31496 (get!18322 lt!1941733)) v!11584)))))

(declare-fun isDefined!10041 (Option!12897) Bool)

(assert (=> b!4778923 (isDefined!10041 lt!1941733)))

(declare-fun lt!1941741 () List!54073)

(declare-fun getPair!781 (List!54073 K!15512) Option!12897)

(assert (=> b!4778923 (= lt!1941733 (getPair!781 lt!1941741 key!6641))))

(declare-fun lt!1941738 () tuple2!56406)

(declare-datatypes ((Unit!139111 0))(
  ( (Unit!139112) )
))
(declare-fun lt!1941734 () Unit!139111)

(declare-fun forallContained!4034 (List!54074 Int tuple2!56406) Unit!139111)

(assert (=> b!4778923 (= lt!1941734 (forallContained!4034 (toList!6697 lm!2709) lambda!227546 lt!1941738))))

(declare-fun lt!1941742 () Unit!139111)

(declare-datatypes ((Hashable!6809 0))(
  ( (HashableExt!6808 (__x!32832 Int)) )
))
(declare-fun hashF!1687 () Hashable!6809)

(declare-fun lemmaInGenMapThenGetPairDefined!555 (ListLongMap!5119 K!15512 Hashable!6809) Unit!139111)

(assert (=> b!4778923 (= lt!1941742 (lemmaInGenMapThenGetPairDefined!555 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1941739 () Unit!139111)

(assert (=> b!4778923 (= lt!1941739 (forallContained!4034 (toList!6697 lm!2709) lambda!227546 lt!1941738))))

(declare-fun contains!17455 (List!54074 tuple2!56406) Bool)

(assert (=> b!4778923 (contains!17455 (toList!6697 lm!2709) lt!1941738)))

(declare-fun lt!1941740 () (_ BitVec 64))

(assert (=> b!4778923 (= lt!1941738 (tuple2!56407 lt!1941740 lt!1941741))))

(declare-fun lt!1941736 () Unit!139111)

(declare-fun lemmaGetValueImpliesTupleContained!588 (ListLongMap!5119 (_ BitVec 64) List!54073) Unit!139111)

(assert (=> b!4778923 (= lt!1941736 (lemmaGetValueImpliesTupleContained!588 lm!2709 lt!1941740 lt!1941741))))

(declare-fun apply!12864 (ListLongMap!5119 (_ BitVec 64)) List!54073)

(assert (=> b!4778923 (= lt!1941741 (apply!12864 lm!2709 lt!1941740))))

(declare-fun contains!17456 (ListLongMap!5119 (_ BitVec 64)) Bool)

(assert (=> b!4778923 (contains!17456 lm!2709 lt!1941740)))

(declare-fun hash!4788 (Hashable!6809 K!15512) (_ BitVec 64))

(assert (=> b!4778923 (= lt!1941740 (hash!4788 hashF!1687 key!6641))))

(declare-fun lt!1941735 () Unit!139111)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1005 (ListLongMap!5119 K!15512 Hashable!6809) Unit!139111)

(assert (=> b!4778923 (= lt!1941735 (lemmaInGenMapThenLongMapContainsHash!1005 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6169 0))(
  ( (ListMap!6170 (toList!6698 List!54073)) )
))
(declare-fun contains!17457 (ListMap!6169 K!15512) Bool)

(declare-fun extractMap!2336 (List!54074) ListMap!6169)

(assert (=> b!4778923 (contains!17457 (extractMap!2336 (toList!6697 lm!2709)) key!6641)))

(declare-fun lt!1941732 () Unit!139111)

(declare-fun lemmaListContainsThenExtractedMapContains!657 (ListLongMap!5119 K!15512 Hashable!6809) Unit!139111)

(assert (=> b!4778923 (= lt!1941732 (lemmaListContainsThenExtractedMapContains!657 lm!2709 key!6641 hashF!1687))))

(declare-fun res!2028658 () Bool)

(assert (=> start!490296 (=> (not res!2028658) (not e!2983463))))

(declare-fun forall!12089 (List!54074 Int) Bool)

(assert (=> start!490296 (= res!2028658 (forall!12089 (toList!6697 lm!2709) lambda!227546))))

(assert (=> start!490296 e!2983463))

(declare-fun inv!69539 (ListLongMap!5119) Bool)

(assert (=> start!490296 (and (inv!69539 lm!2709) e!2983461)))

(assert (=> start!490296 true))

(declare-fun tp_is_empty!33137 () Bool)

(assert (=> start!490296 tp_is_empty!33137))

(declare-fun tp_is_empty!33139 () Bool)

(assert (=> start!490296 tp_is_empty!33139))

(declare-fun e!2983464 () Bool)

(assert (=> b!4778924 (= e!2983462 e!2983464)))

(declare-fun res!2028656 () Bool)

(assert (=> b!4778924 (=> res!2028656 e!2983464)))

(declare-fun containsKey!3779 (List!54073 K!15512) Bool)

(assert (=> b!4778924 (= res!2028656 (containsKey!3779 (_2!31497 (h!60366 (toList!6697 lm!2709))) key!6641))))

(declare-fun lt!1941737 () Unit!139111)

(assert (=> b!4778924 (= lt!1941737 (forallContained!4034 (toList!6697 lm!2709) lambda!227547 (h!60366 (toList!6697 lm!2709))))))

(declare-fun b!4778925 () Bool)

(declare-fun res!2028657 () Bool)

(assert (=> b!4778925 (=> res!2028657 e!2983462)))

(assert (=> b!4778925 (= res!2028657 (or (not (is-Cons!53950 (toList!6697 lm!2709))) (not (= (_1!31497 (h!60366 (toList!6697 lm!2709))) lt!1941740))))))

(declare-fun b!4778926 () Bool)

(assert (=> b!4778926 (= e!2983464 (forall!12089 (toList!6697 lm!2709) lambda!227546))))

(declare-fun b!4778927 () Bool)

(declare-fun res!2028660 () Bool)

(assert (=> b!4778927 (=> (not res!2028660) (not e!2983463))))

(declare-fun allKeysSameHashInMap!2214 (ListLongMap!5119 Hashable!6809) Bool)

(assert (=> b!4778927 (= res!2028660 (allKeysSameHashInMap!2214 lm!2709 hashF!1687))))

(assert (= (and start!490296 res!2028658) b!4778927))

(assert (= (and b!4778927 res!2028660) b!4778921))

(assert (= (and b!4778921 res!2028659) b!4778923))

(assert (= (and b!4778923 (not res!2028655)) b!4778925))

(assert (= (and b!4778925 (not res!2028657)) b!4778924))

(assert (= (and b!4778924 (not res!2028656)) b!4778926))

(assert (= start!490296 b!4778922))

(declare-fun m!5755200 () Bool)

(assert (=> b!4778927 m!5755200))

(declare-fun m!5755202 () Bool)

(assert (=> b!4778926 m!5755202))

(declare-fun m!5755204 () Bool)

(assert (=> b!4778923 m!5755204))

(declare-fun m!5755206 () Bool)

(assert (=> b!4778923 m!5755206))

(declare-fun m!5755208 () Bool)

(assert (=> b!4778923 m!5755208))

(declare-fun m!5755210 () Bool)

(assert (=> b!4778923 m!5755210))

(declare-fun m!5755212 () Bool)

(assert (=> b!4778923 m!5755212))

(declare-fun m!5755214 () Bool)

(assert (=> b!4778923 m!5755214))

(declare-fun m!5755216 () Bool)

(assert (=> b!4778923 m!5755216))

(declare-fun m!5755218 () Bool)

(assert (=> b!4778923 m!5755218))

(declare-fun m!5755220 () Bool)

(assert (=> b!4778923 m!5755220))

(assert (=> b!4778923 m!5755216))

(declare-fun m!5755222 () Bool)

(assert (=> b!4778923 m!5755222))

(declare-fun m!5755224 () Bool)

(assert (=> b!4778923 m!5755224))

(declare-fun m!5755226 () Bool)

(assert (=> b!4778923 m!5755226))

(declare-fun m!5755228 () Bool)

(assert (=> b!4778923 m!5755228))

(assert (=> b!4778923 m!5755220))

(declare-fun m!5755230 () Bool)

(assert (=> b!4778923 m!5755230))

(declare-fun m!5755232 () Bool)

(assert (=> b!4778924 m!5755232))

(declare-fun m!5755234 () Bool)

(assert (=> b!4778924 m!5755234))

(assert (=> start!490296 m!5755202))

(declare-fun m!5755236 () Bool)

(assert (=> start!490296 m!5755236))

(declare-fun m!5755238 () Bool)

(assert (=> b!4778921 m!5755238))

(push 1)

(assert (not b!4778926))

(assert tp_is_empty!33137)

(assert (not start!490296))

(assert (not b!4778927))

(assert (not b!4778923))

(assert tp_is_empty!33139)

(assert (not b!4778921))

(assert (not b!4778924))

(assert (not b!4778922))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

