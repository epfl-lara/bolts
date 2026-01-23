; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!490696 () Bool)

(assert start!490696)

(declare-fun b!4780463 () Bool)

(declare-fun res!2029575 () Bool)

(declare-fun e!2984479 () Bool)

(assert (=> b!4780463 (=> (not res!2029575) (not e!2984479))))

(declare-datatypes ((K!15537 0))(
  ( (K!15538 (val!20735 Int)) )
))
(declare-datatypes ((V!15783 0))(
  ( (V!15784 (val!20736 Int)) )
))
(declare-datatypes ((tuple2!56444 0))(
  ( (tuple2!56445 (_1!31516 K!15537) (_2!31516 V!15783)) )
))
(declare-datatypes ((List!54097 0))(
  ( (Nil!53973) (Cons!53973 (h!60393 tuple2!56444) (t!361547 List!54097)) )
))
(declare-datatypes ((tuple2!56446 0))(
  ( (tuple2!56447 (_1!31517 (_ BitVec 64)) (_2!31517 List!54097)) )
))
(declare-datatypes ((List!54098 0))(
  ( (Nil!53974) (Cons!53974 (h!60394 tuple2!56446) (t!361548 List!54098)) )
))
(declare-datatypes ((ListLongMap!5139 0))(
  ( (ListLongMap!5140 (toList!6717 List!54098)) )
))
(declare-fun lm!2709 () ListLongMap!5139)

(declare-datatypes ((Hashable!6819 0))(
  ( (HashableExt!6818 (__x!32842 Int)) )
))
(declare-fun hashF!1687 () Hashable!6819)

(declare-fun allKeysSameHashInMap!2224 (ListLongMap!5139 Hashable!6819) Bool)

(assert (=> b!4780463 (= res!2029575 (allKeysSameHashInMap!2224 lm!2709 hashF!1687))))

(declare-fun b!4780464 () Bool)

(declare-fun res!2029576 () Bool)

(assert (=> b!4780464 (=> (not res!2029576) (not e!2984479))))

(declare-fun key!6641 () K!15537)

(declare-fun containsKeyBiggerList!475 (List!54098 K!15537) Bool)

(assert (=> b!4780464 (= res!2029576 (containsKeyBiggerList!475 (toList!6717 lm!2709) key!6641))))

(declare-fun b!4780465 () Bool)

(declare-fun res!2029579 () Bool)

(declare-fun e!2984478 () Bool)

(assert (=> b!4780465 (=> res!2029579 e!2984478)))

(declare-fun lt!1942981 () (_ BitVec 64))

(assert (=> b!4780465 (= res!2029579 (or (and (is-Cons!53974 (toList!6717 lm!2709)) (= (_1!31517 (h!60394 (toList!6717 lm!2709))) lt!1942981)) (not (is-Cons!53974 (toList!6717 lm!2709)))))))

(declare-fun b!4780466 () Bool)

(declare-fun lambda!227960 () Int)

(declare-fun forall!12107 (List!54098 Int) Bool)

(assert (=> b!4780466 (= e!2984478 (forall!12107 (toList!6717 lm!2709) lambda!227960))))

(declare-fun res!2029578 () Bool)

(assert (=> start!490696 (=> (not res!2029578) (not e!2984479))))

(assert (=> start!490696 (= res!2029578 (forall!12107 (toList!6717 lm!2709) lambda!227960))))

(assert (=> start!490696 e!2984479))

(declare-fun e!2984477 () Bool)

(declare-fun inv!69564 (ListLongMap!5139) Bool)

(assert (=> start!490696 (and (inv!69564 lm!2709) e!2984477)))

(assert (=> start!490696 true))

(declare-fun tp_is_empty!33177 () Bool)

(assert (=> start!490696 tp_is_empty!33177))

(declare-fun tp_is_empty!33179 () Bool)

(assert (=> start!490696 tp_is_empty!33179))

(declare-fun b!4780467 () Bool)

(declare-fun tp!1357381 () Bool)

(assert (=> b!4780467 (= e!2984477 tp!1357381)))

(declare-fun b!4780468 () Bool)

(assert (=> b!4780468 (= e!2984479 (not e!2984478))))

(declare-fun res!2029577 () Bool)

(assert (=> b!4780468 (=> res!2029577 e!2984478)))

(declare-datatypes ((Option!12915 0))(
  ( (None!12914) (Some!12914 (v!48113 tuple2!56444)) )
))
(declare-fun lt!1942976 () Option!12915)

(declare-fun v!11584 () V!15783)

(declare-fun get!18341 (Option!12915) tuple2!56444)

(assert (=> b!4780468 (= res!2029577 (not (= (_2!31516 (get!18341 lt!1942976)) v!11584)))))

(declare-fun isDefined!10059 (Option!12915) Bool)

(assert (=> b!4780468 (isDefined!10059 lt!1942976)))

(declare-fun lt!1942977 () List!54097)

(declare-fun getPair!791 (List!54097 K!15537) Option!12915)

(assert (=> b!4780468 (= lt!1942976 (getPair!791 lt!1942977 key!6641))))

(declare-fun lt!1942975 () tuple2!56446)

(declare-datatypes ((Unit!139205 0))(
  ( (Unit!139206) )
))
(declare-fun lt!1942980 () Unit!139205)

(declare-fun forallContained!4051 (List!54098 Int tuple2!56446) Unit!139205)

(assert (=> b!4780468 (= lt!1942980 (forallContained!4051 (toList!6717 lm!2709) lambda!227960 lt!1942975))))

(declare-fun lt!1942972 () Unit!139205)

(declare-fun lemmaInGenMapThenGetPairDefined!565 (ListLongMap!5139 K!15537 Hashable!6819) Unit!139205)

(assert (=> b!4780468 (= lt!1942972 (lemmaInGenMapThenGetPairDefined!565 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1942979 () Unit!139205)

(assert (=> b!4780468 (= lt!1942979 (forallContained!4051 (toList!6717 lm!2709) lambda!227960 lt!1942975))))

(declare-fun contains!17493 (List!54098 tuple2!56446) Bool)

(assert (=> b!4780468 (contains!17493 (toList!6717 lm!2709) lt!1942975)))

(assert (=> b!4780468 (= lt!1942975 (tuple2!56447 lt!1942981 lt!1942977))))

(declare-fun lt!1942973 () Unit!139205)

(declare-fun lemmaGetValueImpliesTupleContained!598 (ListLongMap!5139 (_ BitVec 64) List!54097) Unit!139205)

(assert (=> b!4780468 (= lt!1942973 (lemmaGetValueImpliesTupleContained!598 lm!2709 lt!1942981 lt!1942977))))

(declare-fun apply!12874 (ListLongMap!5139 (_ BitVec 64)) List!54097)

(assert (=> b!4780468 (= lt!1942977 (apply!12874 lm!2709 lt!1942981))))

(declare-fun contains!17494 (ListLongMap!5139 (_ BitVec 64)) Bool)

(assert (=> b!4780468 (contains!17494 lm!2709 lt!1942981)))

(declare-fun hash!4802 (Hashable!6819 K!15537) (_ BitVec 64))

(assert (=> b!4780468 (= lt!1942981 (hash!4802 hashF!1687 key!6641))))

(declare-fun lt!1942978 () Unit!139205)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1015 (ListLongMap!5139 K!15537 Hashable!6819) Unit!139205)

(assert (=> b!4780468 (= lt!1942978 (lemmaInGenMapThenLongMapContainsHash!1015 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6189 0))(
  ( (ListMap!6190 (toList!6718 List!54097)) )
))
(declare-fun contains!17495 (ListMap!6189 K!15537) Bool)

(declare-fun extractMap!2346 (List!54098) ListMap!6189)

(assert (=> b!4780468 (contains!17495 (extractMap!2346 (toList!6717 lm!2709)) key!6641)))

(declare-fun lt!1942974 () Unit!139205)

(declare-fun lemmaListContainsThenExtractedMapContains!667 (ListLongMap!5139 K!15537 Hashable!6819) Unit!139205)

(assert (=> b!4780468 (= lt!1942974 (lemmaListContainsThenExtractedMapContains!667 lm!2709 key!6641 hashF!1687))))

(assert (= (and start!490696 res!2029578) b!4780463))

(assert (= (and b!4780463 res!2029575) b!4780464))

(assert (= (and b!4780464 res!2029576) b!4780468))

(assert (= (and b!4780468 (not res!2029577)) b!4780465))

(assert (= (and b!4780465 (not res!2029579)) b!4780466))

(assert (= start!490696 b!4780467))

(declare-fun m!5757182 () Bool)

(assert (=> b!4780468 m!5757182))

(assert (=> b!4780468 m!5757182))

(declare-fun m!5757184 () Bool)

(assert (=> b!4780468 m!5757184))

(declare-fun m!5757186 () Bool)

(assert (=> b!4780468 m!5757186))

(declare-fun m!5757188 () Bool)

(assert (=> b!4780468 m!5757188))

(declare-fun m!5757190 () Bool)

(assert (=> b!4780468 m!5757190))

(assert (=> b!4780468 m!5757186))

(declare-fun m!5757192 () Bool)

(assert (=> b!4780468 m!5757192))

(declare-fun m!5757194 () Bool)

(assert (=> b!4780468 m!5757194))

(declare-fun m!5757196 () Bool)

(assert (=> b!4780468 m!5757196))

(declare-fun m!5757198 () Bool)

(assert (=> b!4780468 m!5757198))

(declare-fun m!5757200 () Bool)

(assert (=> b!4780468 m!5757200))

(declare-fun m!5757202 () Bool)

(assert (=> b!4780468 m!5757202))

(declare-fun m!5757204 () Bool)

(assert (=> b!4780468 m!5757204))

(declare-fun m!5757206 () Bool)

(assert (=> b!4780468 m!5757206))

(declare-fun m!5757208 () Bool)

(assert (=> b!4780468 m!5757208))

(declare-fun m!5757210 () Bool)

(assert (=> b!4780464 m!5757210))

(declare-fun m!5757212 () Bool)

(assert (=> b!4780466 m!5757212))

(assert (=> start!490696 m!5757212))

(declare-fun m!5757214 () Bool)

(assert (=> start!490696 m!5757214))

(declare-fun m!5757216 () Bool)

(assert (=> b!4780463 m!5757216))

(push 1)

(assert (not b!4780464))

(assert (not b!4780463))

(assert (not b!4780467))

(assert (not start!490696))

(assert (not b!4780468))

(assert tp_is_empty!33179)

(assert tp_is_empty!33177)

(assert (not b!4780466))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

