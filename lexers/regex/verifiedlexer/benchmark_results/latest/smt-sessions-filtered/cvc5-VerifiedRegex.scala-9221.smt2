; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489500 () Bool)

(assert start!489500)

(declare-fun bs!1150551 () Bool)

(declare-fun b!4775589 () Bool)

(assert (= bs!1150551 (and b!4775589 start!489500)))

(declare-fun lambda!226595 () Int)

(declare-fun lambda!226594 () Int)

(assert (=> bs!1150551 (not (= lambda!226595 lambda!226594))))

(assert (=> b!4775589 true))

(declare-fun res!2026489 () Bool)

(declare-fun e!2981337 () Bool)

(assert (=> start!489500 (=> (not res!2026489) (not e!2981337))))

(declare-datatypes ((K!15392 0))(
  ( (K!15393 (val!20619 Int)) )
))
(declare-datatypes ((V!15638 0))(
  ( (V!15639 (val!20620 Int)) )
))
(declare-datatypes ((tuple2!56212 0))(
  ( (tuple2!56213 (_1!31400 K!15392) (_2!31400 V!15638)) )
))
(declare-datatypes ((List!53969 0))(
  ( (Nil!53845) (Cons!53845 (h!60259 tuple2!56212) (t!361419 List!53969)) )
))
(declare-datatypes ((tuple2!56214 0))(
  ( (tuple2!56215 (_1!31401 (_ BitVec 64)) (_2!31401 List!53969)) )
))
(declare-datatypes ((List!53970 0))(
  ( (Nil!53846) (Cons!53846 (h!60260 tuple2!56214) (t!361420 List!53970)) )
))
(declare-datatypes ((ListLongMap!5023 0))(
  ( (ListLongMap!5024 (toList!6605 List!53970)) )
))
(declare-fun lm!2709 () ListLongMap!5023)

(declare-fun forall!12029 (List!53970 Int) Bool)

(assert (=> start!489500 (= res!2026489 (forall!12029 (toList!6605 lm!2709) lambda!226594))))

(assert (=> start!489500 e!2981337))

(declare-fun e!2981336 () Bool)

(declare-fun inv!69419 (ListLongMap!5023) Bool)

(assert (=> start!489500 (and (inv!69419 lm!2709) e!2981336)))

(assert (=> start!489500 true))

(declare-fun tp_is_empty!32973 () Bool)

(assert (=> start!489500 tp_is_empty!32973))

(declare-fun tp_is_empty!32975 () Bool)

(assert (=> start!489500 tp_is_empty!32975))

(declare-fun b!4775585 () Bool)

(declare-fun res!2026491 () Bool)

(declare-fun e!2981338 () Bool)

(assert (=> b!4775585 (=> res!2026491 e!2981338)))

(declare-fun lt!1938610 () (_ BitVec 64))

(assert (=> b!4775585 (= res!2026491 (or (not (is-Cons!53846 (toList!6605 lm!2709))) (not (= (_1!31401 (h!60260 (toList!6605 lm!2709))) lt!1938610))))))

(declare-fun b!4775586 () Bool)

(declare-fun res!2026488 () Bool)

(assert (=> b!4775586 (=> (not res!2026488) (not e!2981337))))

(declare-datatypes ((Hashable!6761 0))(
  ( (HashableExt!6760 (__x!32784 Int)) )
))
(declare-fun hashF!1687 () Hashable!6761)

(declare-fun allKeysSameHashInMap!2166 (ListLongMap!5023 Hashable!6761) Bool)

(assert (=> b!4775586 (= res!2026488 (allKeysSameHashInMap!2166 lm!2709 hashF!1687))))

(declare-fun b!4775587 () Bool)

(assert (=> b!4775587 (= e!2981337 (not e!2981338))))

(declare-fun res!2026492 () Bool)

(assert (=> b!4775587 (=> res!2026492 e!2981338)))

(declare-datatypes ((Option!12850 0))(
  ( (None!12849) (Some!12849 (v!48010 tuple2!56212)) )
))
(declare-fun lt!1938615 () Option!12850)

(declare-fun v!11584 () V!15638)

(declare-fun get!18259 (Option!12850) tuple2!56212)

(assert (=> b!4775587 (= res!2026492 (not (= (_2!31400 (get!18259 lt!1938615)) v!11584)))))

(declare-fun isDefined!9994 (Option!12850) Bool)

(assert (=> b!4775587 (isDefined!9994 lt!1938615)))

(declare-fun lt!1938607 () List!53969)

(declare-fun key!6641 () K!15392)

(declare-fun getPair!749 (List!53969 K!15392) Option!12850)

(assert (=> b!4775587 (= lt!1938615 (getPair!749 lt!1938607 key!6641))))

(declare-fun lt!1938611 () tuple2!56214)

(declare-datatypes ((Unit!138840 0))(
  ( (Unit!138841) )
))
(declare-fun lt!1938609 () Unit!138840)

(declare-fun forallContained!3986 (List!53970 Int tuple2!56214) Unit!138840)

(assert (=> b!4775587 (= lt!1938609 (forallContained!3986 (toList!6605 lm!2709) lambda!226594 lt!1938611))))

(declare-fun lt!1938614 () Unit!138840)

(declare-fun lemmaInGenMapThenGetPairDefined!523 (ListLongMap!5023 K!15392 Hashable!6761) Unit!138840)

(assert (=> b!4775587 (= lt!1938614 (lemmaInGenMapThenGetPairDefined!523 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1938612 () Unit!138840)

(assert (=> b!4775587 (= lt!1938612 (forallContained!3986 (toList!6605 lm!2709) lambda!226594 lt!1938611))))

(declare-fun contains!17319 (List!53970 tuple2!56214) Bool)

(assert (=> b!4775587 (contains!17319 (toList!6605 lm!2709) lt!1938611)))

(assert (=> b!4775587 (= lt!1938611 (tuple2!56215 lt!1938610 lt!1938607))))

(declare-fun lt!1938613 () Unit!138840)

(declare-fun lemmaGetValueImpliesTupleContained!552 (ListLongMap!5023 (_ BitVec 64) List!53969) Unit!138840)

(assert (=> b!4775587 (= lt!1938613 (lemmaGetValueImpliesTupleContained!552 lm!2709 lt!1938610 lt!1938607))))

(declare-fun apply!12824 (ListLongMap!5023 (_ BitVec 64)) List!53969)

(assert (=> b!4775587 (= lt!1938607 (apply!12824 lm!2709 lt!1938610))))

(declare-fun contains!17320 (ListLongMap!5023 (_ BitVec 64)) Bool)

(assert (=> b!4775587 (contains!17320 lm!2709 lt!1938610)))

(declare-fun hash!4733 (Hashable!6761 K!15392) (_ BitVec 64))

(assert (=> b!4775587 (= lt!1938610 (hash!4733 hashF!1687 key!6641))))

(declare-fun lt!1938616 () Unit!138840)

(declare-fun lemmaInGenMapThenLongMapContainsHash!965 (ListLongMap!5023 K!15392 Hashable!6761) Unit!138840)

(assert (=> b!4775587 (= lt!1938616 (lemmaInGenMapThenLongMapContainsHash!965 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6081 0))(
  ( (ListMap!6082 (toList!6606 List!53969)) )
))
(declare-fun contains!17321 (ListMap!6081 K!15392) Bool)

(declare-fun extractMap!2292 (List!53970) ListMap!6081)

(assert (=> b!4775587 (contains!17321 (extractMap!2292 (toList!6605 lm!2709)) key!6641)))

(declare-fun lt!1938606 () Unit!138840)

(declare-fun lemmaListContainsThenExtractedMapContains!613 (ListLongMap!5023 K!15392 Hashable!6761) Unit!138840)

(assert (=> b!4775587 (= lt!1938606 (lemmaListContainsThenExtractedMapContains!613 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4775588 () Bool)

(declare-fun tp!1357077 () Bool)

(assert (=> b!4775588 (= e!2981336 tp!1357077)))

(declare-fun e!2981335 () Bool)

(assert (=> b!4775589 (= e!2981338 e!2981335)))

(declare-fun res!2026487 () Bool)

(assert (=> b!4775589 (=> res!2026487 e!2981335)))

(declare-fun containsKey!3736 (List!53969 K!15392) Bool)

(assert (=> b!4775589 (= res!2026487 (containsKey!3736 (_2!31401 (h!60260 (toList!6605 lm!2709))) key!6641))))

(declare-fun lt!1938608 () Unit!138840)

(assert (=> b!4775589 (= lt!1938608 (forallContained!3986 (toList!6605 lm!2709) lambda!226595 (h!60260 (toList!6605 lm!2709))))))

(declare-fun b!4775590 () Bool)

(declare-fun res!2026490 () Bool)

(assert (=> b!4775590 (=> (not res!2026490) (not e!2981337))))

(declare-fun containsKeyBiggerList!417 (List!53970 K!15392) Bool)

(assert (=> b!4775590 (= res!2026490 (containsKeyBiggerList!417 (toList!6605 lm!2709) key!6641))))

(declare-fun b!4775591 () Bool)

(assert (=> b!4775591 (= e!2981335 true)))

(assert (=> b!4775591 false))

(declare-fun lt!1938617 () Unit!138840)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!419 (ListLongMap!5023 K!15392 Hashable!6761) Unit!138840)

(assert (=> b!4775591 (= lt!1938617 (lemmaNotInItsHashBucketThenNotInMap!419 lm!2709 key!6641 hashF!1687))))

(assert (= (and start!489500 res!2026489) b!4775586))

(assert (= (and b!4775586 res!2026488) b!4775590))

(assert (= (and b!4775590 res!2026490) b!4775587))

(assert (= (and b!4775587 (not res!2026492)) b!4775585))

(assert (= (and b!4775585 (not res!2026491)) b!4775589))

(assert (= (and b!4775589 (not res!2026487)) b!4775591))

(assert (= start!489500 b!4775588))

(declare-fun m!5750076 () Bool)

(assert (=> b!4775591 m!5750076))

(declare-fun m!5750078 () Bool)

(assert (=> b!4775587 m!5750078))

(declare-fun m!5750080 () Bool)

(assert (=> b!4775587 m!5750080))

(declare-fun m!5750082 () Bool)

(assert (=> b!4775587 m!5750082))

(declare-fun m!5750084 () Bool)

(assert (=> b!4775587 m!5750084))

(declare-fun m!5750086 () Bool)

(assert (=> b!4775587 m!5750086))

(declare-fun m!5750088 () Bool)

(assert (=> b!4775587 m!5750088))

(declare-fun m!5750090 () Bool)

(assert (=> b!4775587 m!5750090))

(declare-fun m!5750092 () Bool)

(assert (=> b!4775587 m!5750092))

(declare-fun m!5750094 () Bool)

(assert (=> b!4775587 m!5750094))

(declare-fun m!5750096 () Bool)

(assert (=> b!4775587 m!5750096))

(assert (=> b!4775587 m!5750090))

(declare-fun m!5750098 () Bool)

(assert (=> b!4775587 m!5750098))

(assert (=> b!4775587 m!5750080))

(declare-fun m!5750100 () Bool)

(assert (=> b!4775587 m!5750100))

(declare-fun m!5750102 () Bool)

(assert (=> b!4775587 m!5750102))

(declare-fun m!5750104 () Bool)

(assert (=> b!4775587 m!5750104))

(declare-fun m!5750106 () Bool)

(assert (=> start!489500 m!5750106))

(declare-fun m!5750108 () Bool)

(assert (=> start!489500 m!5750108))

(declare-fun m!5750110 () Bool)

(assert (=> b!4775586 m!5750110))

(declare-fun m!5750112 () Bool)

(assert (=> b!4775590 m!5750112))

(declare-fun m!5750114 () Bool)

(assert (=> b!4775589 m!5750114))

(declare-fun m!5750116 () Bool)

(assert (=> b!4775589 m!5750116))

(push 1)

(assert (not b!4775590))

(assert (not start!489500))

(assert tp_is_empty!32973)

(assert (not b!4775591))

(assert (not b!4775589))

(assert (not b!4775586))

(assert (not b!4775587))

(assert (not b!4775588))

(assert tp_is_empty!32975)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

