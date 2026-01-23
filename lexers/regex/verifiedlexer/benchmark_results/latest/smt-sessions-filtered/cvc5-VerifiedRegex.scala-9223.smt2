; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489508 () Bool)

(assert start!489508)

(declare-fun bs!1150559 () Bool)

(declare-fun b!4775676 () Bool)

(assert (= bs!1150559 (and b!4775676 start!489508)))

(declare-fun lambda!226637 () Int)

(declare-fun lambda!226636 () Int)

(assert (=> bs!1150559 (not (= lambda!226637 lambda!226636))))

(assert (=> b!4775676 true))

(declare-fun b!4775671 () Bool)

(declare-fun e!2981380 () Bool)

(declare-fun tp!1357089 () Bool)

(assert (=> b!4775671 (= e!2981380 tp!1357089)))

(declare-fun res!2026557 () Bool)

(declare-fun e!2981378 () Bool)

(assert (=> start!489508 (=> (not res!2026557) (not e!2981378))))

(declare-datatypes ((K!15402 0))(
  ( (K!15403 (val!20627 Int)) )
))
(declare-datatypes ((V!15648 0))(
  ( (V!15649 (val!20628 Int)) )
))
(declare-datatypes ((tuple2!56228 0))(
  ( (tuple2!56229 (_1!31408 K!15402) (_2!31408 V!15648)) )
))
(declare-datatypes ((List!53977 0))(
  ( (Nil!53853) (Cons!53853 (h!60267 tuple2!56228) (t!361427 List!53977)) )
))
(declare-datatypes ((tuple2!56230 0))(
  ( (tuple2!56231 (_1!31409 (_ BitVec 64)) (_2!31409 List!53977)) )
))
(declare-datatypes ((List!53978 0))(
  ( (Nil!53854) (Cons!53854 (h!60268 tuple2!56230) (t!361428 List!53978)) )
))
(declare-datatypes ((ListLongMap!5031 0))(
  ( (ListLongMap!5032 (toList!6613 List!53978)) )
))
(declare-fun lm!2709 () ListLongMap!5031)

(declare-fun forall!12033 (List!53978 Int) Bool)

(assert (=> start!489508 (= res!2026557 (forall!12033 (toList!6613 lm!2709) lambda!226636))))

(assert (=> start!489508 e!2981378))

(declare-fun inv!69429 (ListLongMap!5031) Bool)

(assert (=> start!489508 (and (inv!69429 lm!2709) e!2981380)))

(assert (=> start!489508 true))

(declare-fun tp_is_empty!32989 () Bool)

(assert (=> start!489508 tp_is_empty!32989))

(declare-fun tp_is_empty!32991 () Bool)

(assert (=> start!489508 tp_is_empty!32991))

(declare-fun b!4775672 () Bool)

(declare-fun e!2981377 () Bool)

(assert (=> b!4775672 (= e!2981377 (forall!12033 (toList!6613 lm!2709) lambda!226636))))

(declare-fun b!4775673 () Bool)

(declare-fun e!2981379 () Bool)

(assert (=> b!4775673 (= e!2981378 (not e!2981379))))

(declare-fun res!2026556 () Bool)

(assert (=> b!4775673 (=> res!2026556 e!2981379)))

(declare-datatypes ((Option!12854 0))(
  ( (None!12853) (Some!12853 (v!48014 tuple2!56228)) )
))
(declare-fun lt!1938748 () Option!12854)

(declare-fun v!11584 () V!15648)

(declare-fun get!18265 (Option!12854) tuple2!56228)

(assert (=> b!4775673 (= res!2026556 (not (= (_2!31408 (get!18265 lt!1938748)) v!11584)))))

(declare-fun isDefined!9998 (Option!12854) Bool)

(assert (=> b!4775673 (isDefined!9998 lt!1938748)))

(declare-fun lt!1938758 () List!53977)

(declare-fun key!6641 () K!15402)

(declare-fun getPair!753 (List!53977 K!15402) Option!12854)

(assert (=> b!4775673 (= lt!1938748 (getPair!753 lt!1938758 key!6641))))

(declare-fun lt!1938754 () tuple2!56230)

(declare-datatypes ((Unit!138848 0))(
  ( (Unit!138849) )
))
(declare-fun lt!1938755 () Unit!138848)

(declare-fun forallContained!3990 (List!53978 Int tuple2!56230) Unit!138848)

(assert (=> b!4775673 (= lt!1938755 (forallContained!3990 (toList!6613 lm!2709) lambda!226636 lt!1938754))))

(declare-datatypes ((Hashable!6765 0))(
  ( (HashableExt!6764 (__x!32788 Int)) )
))
(declare-fun hashF!1687 () Hashable!6765)

(declare-fun lt!1938751 () Unit!138848)

(declare-fun lemmaInGenMapThenGetPairDefined!527 (ListLongMap!5031 K!15402 Hashable!6765) Unit!138848)

(assert (=> b!4775673 (= lt!1938751 (lemmaInGenMapThenGetPairDefined!527 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1938752 () Unit!138848)

(assert (=> b!4775673 (= lt!1938752 (forallContained!3990 (toList!6613 lm!2709) lambda!226636 lt!1938754))))

(declare-fun contains!17331 (List!53978 tuple2!56230) Bool)

(assert (=> b!4775673 (contains!17331 (toList!6613 lm!2709) lt!1938754)))

(declare-fun lt!1938750 () (_ BitVec 64))

(assert (=> b!4775673 (= lt!1938754 (tuple2!56231 lt!1938750 lt!1938758))))

(declare-fun lt!1938749 () Unit!138848)

(declare-fun lemmaGetValueImpliesTupleContained!556 (ListLongMap!5031 (_ BitVec 64) List!53977) Unit!138848)

(assert (=> b!4775673 (= lt!1938749 (lemmaGetValueImpliesTupleContained!556 lm!2709 lt!1938750 lt!1938758))))

(declare-fun apply!12828 (ListLongMap!5031 (_ BitVec 64)) List!53977)

(assert (=> b!4775673 (= lt!1938758 (apply!12828 lm!2709 lt!1938750))))

(declare-fun contains!17332 (ListLongMap!5031 (_ BitVec 64)) Bool)

(assert (=> b!4775673 (contains!17332 lm!2709 lt!1938750)))

(declare-fun hash!4737 (Hashable!6765 K!15402) (_ BitVec 64))

(assert (=> b!4775673 (= lt!1938750 (hash!4737 hashF!1687 key!6641))))

(declare-fun lt!1938756 () Unit!138848)

(declare-fun lemmaInGenMapThenLongMapContainsHash!969 (ListLongMap!5031 K!15402 Hashable!6765) Unit!138848)

(assert (=> b!4775673 (= lt!1938756 (lemmaInGenMapThenLongMapContainsHash!969 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6089 0))(
  ( (ListMap!6090 (toList!6614 List!53977)) )
))
(declare-fun contains!17333 (ListMap!6089 K!15402) Bool)

(declare-fun extractMap!2296 (List!53978) ListMap!6089)

(assert (=> b!4775673 (contains!17333 (extractMap!2296 (toList!6613 lm!2709)) key!6641)))

(declare-fun lt!1938753 () Unit!138848)

(declare-fun lemmaListContainsThenExtractedMapContains!617 (ListLongMap!5031 K!15402 Hashable!6765) Unit!138848)

(assert (=> b!4775673 (= lt!1938753 (lemmaListContainsThenExtractedMapContains!617 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4775674 () Bool)

(declare-fun res!2026558 () Bool)

(assert (=> b!4775674 (=> (not res!2026558) (not e!2981378))))

(declare-fun allKeysSameHashInMap!2170 (ListLongMap!5031 Hashable!6765) Bool)

(assert (=> b!4775674 (= res!2026558 (allKeysSameHashInMap!2170 lm!2709 hashF!1687))))

(declare-fun b!4775675 () Bool)

(declare-fun res!2026555 () Bool)

(assert (=> b!4775675 (=> res!2026555 e!2981379)))

(assert (=> b!4775675 (= res!2026555 (or (not (is-Cons!53854 (toList!6613 lm!2709))) (not (= (_1!31409 (h!60268 (toList!6613 lm!2709))) lt!1938750))))))

(assert (=> b!4775676 (= e!2981379 e!2981377)))

(declare-fun res!2026554 () Bool)

(assert (=> b!4775676 (=> res!2026554 e!2981377)))

(declare-fun containsKey!3740 (List!53977 K!15402) Bool)

(assert (=> b!4775676 (= res!2026554 (not (containsKey!3740 (_2!31409 (h!60268 (toList!6613 lm!2709))) key!6641)))))

(declare-fun lt!1938757 () Unit!138848)

(assert (=> b!4775676 (= lt!1938757 (forallContained!3990 (toList!6613 lm!2709) lambda!226637 (h!60268 (toList!6613 lm!2709))))))

(declare-fun b!4775677 () Bool)

(declare-fun res!2026553 () Bool)

(assert (=> b!4775677 (=> (not res!2026553) (not e!2981378))))

(declare-fun containsKeyBiggerList!421 (List!53978 K!15402) Bool)

(assert (=> b!4775677 (= res!2026553 (containsKeyBiggerList!421 (toList!6613 lm!2709) key!6641))))

(assert (= (and start!489508 res!2026557) b!4775674))

(assert (= (and b!4775674 res!2026558) b!4775677))

(assert (= (and b!4775677 res!2026553) b!4775673))

(assert (= (and b!4775673 (not res!2026556)) b!4775675))

(assert (= (and b!4775675 (not res!2026555)) b!4775676))

(assert (= (and b!4775676 (not res!2026554)) b!4775672))

(assert (= start!489508 b!4775671))

(declare-fun m!5750240 () Bool)

(assert (=> b!4775676 m!5750240))

(declare-fun m!5750242 () Bool)

(assert (=> b!4775676 m!5750242))

(declare-fun m!5750244 () Bool)

(assert (=> b!4775677 m!5750244))

(declare-fun m!5750246 () Bool)

(assert (=> b!4775673 m!5750246))

(declare-fun m!5750248 () Bool)

(assert (=> b!4775673 m!5750248))

(declare-fun m!5750250 () Bool)

(assert (=> b!4775673 m!5750250))

(declare-fun m!5750252 () Bool)

(assert (=> b!4775673 m!5750252))

(declare-fun m!5750254 () Bool)

(assert (=> b!4775673 m!5750254))

(declare-fun m!5750256 () Bool)

(assert (=> b!4775673 m!5750256))

(declare-fun m!5750258 () Bool)

(assert (=> b!4775673 m!5750258))

(declare-fun m!5750260 () Bool)

(assert (=> b!4775673 m!5750260))

(assert (=> b!4775673 m!5750260))

(declare-fun m!5750262 () Bool)

(assert (=> b!4775673 m!5750262))

(declare-fun m!5750264 () Bool)

(assert (=> b!4775673 m!5750264))

(declare-fun m!5750266 () Bool)

(assert (=> b!4775673 m!5750266))

(assert (=> b!4775673 m!5750258))

(declare-fun m!5750268 () Bool)

(assert (=> b!4775673 m!5750268))

(declare-fun m!5750270 () Bool)

(assert (=> b!4775673 m!5750270))

(declare-fun m!5750272 () Bool)

(assert (=> b!4775673 m!5750272))

(declare-fun m!5750274 () Bool)

(assert (=> b!4775672 m!5750274))

(assert (=> start!489508 m!5750274))

(declare-fun m!5750276 () Bool)

(assert (=> start!489508 m!5750276))

(declare-fun m!5750278 () Bool)

(assert (=> b!4775674 m!5750278))

(push 1)

(assert tp_is_empty!32991)

(assert (not b!4775672))

(assert (not b!4775676))

(assert (not start!489508))

(assert (not b!4775673))

(assert (not b!4775674))

(assert tp_is_empty!32989)

(assert (not b!4775671))

(assert (not b!4775677))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

