; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!494836 () Bool)

(assert start!494836)

(declare-fun b!4797911 () Bool)

(declare-datatypes ((Unit!140414 0))(
  ( (Unit!140415) )
))
(declare-fun e!2996027 () Unit!140414)

(declare-fun lt!1954662 () Unit!140414)

(assert (=> b!4797911 (= e!2996027 lt!1954662)))

(declare-datatypes ((Hashable!6947 0))(
  ( (HashableExt!6946 (__x!32970 Int)) )
))
(declare-fun hashF!1559 () Hashable!6947)

(declare-datatypes ((K!15857 0))(
  ( (K!15858 (val!20991 Int)) )
))
(declare-fun key!5896 () K!15857)

(declare-datatypes ((V!16103 0))(
  ( (V!16104 (val!20992 Int)) )
))
(declare-datatypes ((tuple2!56956 0))(
  ( (tuple2!56957 (_1!31772 K!15857) (_2!31772 V!16103)) )
))
(declare-datatypes ((List!54408 0))(
  ( (Nil!54284) (Cons!54284 (h!60716 tuple2!56956) (t!361858 List!54408)) )
))
(declare-datatypes ((tuple2!56958 0))(
  ( (tuple2!56959 (_1!31773 (_ BitVec 64)) (_2!31773 List!54408)) )
))
(declare-datatypes ((List!54409 0))(
  ( (Nil!54285) (Cons!54285 (h!60717 tuple2!56958) (t!361859 List!54409)) )
))
(declare-datatypes ((ListLongMap!5395 0))(
  ( (ListLongMap!5396 (toList!6973 List!54409)) )
))
(declare-fun lt!1954663 () ListLongMap!5395)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!45 (ListLongMap!5395 K!15857 Hashable!6947) Unit!140414)

(assert (=> b!4797911 (= lt!1954662 (lemmaHashNotInLongMapThenNotInGenerated!45 lt!1954663 key!5896 hashF!1559))))

(declare-datatypes ((ListMap!6445 0))(
  ( (ListMap!6446 (toList!6974 List!54408)) )
))
(declare-fun contains!17927 (ListMap!6445 K!15857) Bool)

(declare-fun extractMap!2474 (List!54409) ListMap!6445)

(assert (=> b!4797911 (not (contains!17927 (extractMap!2474 (toList!6973 lt!1954663)) key!5896))))

(declare-fun b!4797912 () Bool)

(declare-fun res!2040181 () Bool)

(declare-fun e!2996024 () Bool)

(assert (=> b!4797912 (=> res!2040181 e!2996024)))

(declare-fun lm!2473 () ListLongMap!5395)

(declare-fun containsKey!4001 (List!54408 K!15857) Bool)

(assert (=> b!4797912 (= res!2040181 (containsKey!4001 (_2!31773 (h!60717 (toList!6973 lm!2473))) key!5896))))

(declare-fun b!4797913 () Bool)

(declare-fun e!2996023 () Bool)

(declare-fun tp!1358251 () Bool)

(assert (=> b!4797913 (= e!2996023 tp!1358251)))

(declare-fun b!4797915 () Bool)

(declare-fun res!2040183 () Bool)

(assert (=> b!4797915 (=> res!2040183 e!2996024)))

(assert (=> b!4797915 (= res!2040183 (not (is-Cons!54285 (toList!6973 lm!2473))))))

(declare-fun b!4797916 () Bool)

(declare-fun Unit!140416 () Unit!140414)

(assert (=> b!4797916 (= e!2996027 Unit!140416)))

(declare-fun b!4797917 () Bool)

(declare-fun res!2040184 () Bool)

(declare-fun e!2996026 () Bool)

(assert (=> b!4797917 (=> (not res!2040184) (not e!2996026))))

(declare-fun allKeysSameHashInMap!2352 (ListLongMap!5395 Hashable!6947) Bool)

(assert (=> b!4797917 (= res!2040184 (allKeysSameHashInMap!2352 lm!2473 hashF!1559))))

(declare-fun b!4797918 () Bool)

(declare-fun res!2040182 () Bool)

(assert (=> b!4797918 (=> (not res!2040182) (not e!2996026))))

(assert (=> b!4797918 (= res!2040182 (contains!17927 (extractMap!2474 (toList!6973 lm!2473)) key!5896))))

(declare-fun b!4797919 () Bool)

(assert (=> b!4797919 (= e!2996026 (not e!2996024))))

(declare-fun res!2040186 () Bool)

(assert (=> b!4797919 (=> res!2040186 e!2996024)))

(declare-fun value!3111 () V!16103)

(declare-fun getValue!135 (List!54409 K!15857) V!16103)

(assert (=> b!4797919 (= res!2040186 (not (= (getValue!135 (toList!6973 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!589 (List!54409 K!15857) Bool)

(assert (=> b!4797919 (containsKeyBiggerList!589 (toList!6973 lm!2473) key!5896)))

(declare-fun lt!1954661 () Unit!140414)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!329 (ListLongMap!5395 K!15857 Hashable!6947) Unit!140414)

(assert (=> b!4797919 (= lt!1954661 (lemmaInLongMapThenContainsKeyBiggerList!329 lm!2473 key!5896 hashF!1559))))

(declare-fun e!2996025 () Bool)

(assert (=> b!4797919 e!2996025))

(declare-fun res!2040187 () Bool)

(assert (=> b!4797919 (=> (not res!2040187) (not e!2996025))))

(declare-fun lt!1954664 () (_ BitVec 64))

(declare-fun contains!17928 (ListLongMap!5395 (_ BitVec 64)) Bool)

(assert (=> b!4797919 (= res!2040187 (contains!17928 lm!2473 lt!1954664))))

(declare-fun hash!4996 (Hashable!6947 K!15857) (_ BitVec 64))

(assert (=> b!4797919 (= lt!1954664 (hash!4996 hashF!1559 key!5896))))

(declare-fun lt!1954665 () Unit!140414)

(declare-fun lemmaInGenericMapThenInLongMap!351 (ListLongMap!5395 K!15857 Hashable!6947) Unit!140414)

(assert (=> b!4797919 (= lt!1954665 (lemmaInGenericMapThenInLongMap!351 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4797920 () Bool)

(assert (=> b!4797920 (= e!2996024 true)))

(declare-fun lt!1954660 () Unit!140414)

(assert (=> b!4797920 (= lt!1954660 e!2996027)))

(declare-fun c!817740 () Bool)

(assert (=> b!4797920 (= c!817740 (not (contains!17928 lt!1954663 lt!1954664)))))

(declare-fun tail!9304 (ListLongMap!5395) ListLongMap!5395)

(assert (=> b!4797920 (= lt!1954663 (tail!9304 lm!2473))))

(declare-fun res!2040185 () Bool)

(assert (=> start!494836 (=> (not res!2040185) (not e!2996026))))

(declare-fun lambda!231770 () Int)

(declare-fun forall!12302 (List!54409 Int) Bool)

(assert (=> start!494836 (= res!2040185 (forall!12302 (toList!6973 lm!2473) lambda!231770))))

(assert (=> start!494836 e!2996026))

(declare-fun inv!69884 (ListLongMap!5395) Bool)

(assert (=> start!494836 (and (inv!69884 lm!2473) e!2996023)))

(assert (=> start!494836 true))

(declare-fun tp_is_empty!33649 () Bool)

(assert (=> start!494836 tp_is_empty!33649))

(declare-fun tp_is_empty!33651 () Bool)

(assert (=> start!494836 tp_is_empty!33651))

(declare-fun b!4797914 () Bool)

(declare-datatypes ((Option!13151 0))(
  ( (None!13150) (Some!13150 (v!48463 tuple2!56956)) )
))
(declare-fun isDefined!10292 (Option!13151) Bool)

(declare-fun getPair!919 (List!54408 K!15857) Option!13151)

(declare-fun apply!13020 (ListLongMap!5395 (_ BitVec 64)) List!54408)

(assert (=> b!4797914 (= e!2996025 (isDefined!10292 (getPair!919 (apply!13020 lm!2473 lt!1954664) key!5896)))))

(assert (= (and start!494836 res!2040185) b!4797917))

(assert (= (and b!4797917 res!2040184) b!4797918))

(assert (= (and b!4797918 res!2040182) b!4797919))

(assert (= (and b!4797919 res!2040187) b!4797914))

(assert (= (and b!4797919 (not res!2040186)) b!4797915))

(assert (= (and b!4797915 (not res!2040183)) b!4797912))

(assert (= (and b!4797912 (not res!2040181)) b!4797920))

(assert (= (and b!4797920 c!817740) b!4797911))

(assert (= (and b!4797920 (not c!817740)) b!4797916))

(assert (= start!494836 b!4797913))

(declare-fun m!5780514 () Bool)

(assert (=> start!494836 m!5780514))

(declare-fun m!5780516 () Bool)

(assert (=> start!494836 m!5780516))

(declare-fun m!5780518 () Bool)

(assert (=> b!4797912 m!5780518))

(declare-fun m!5780520 () Bool)

(assert (=> b!4797917 m!5780520))

(declare-fun m!5780522 () Bool)

(assert (=> b!4797918 m!5780522))

(assert (=> b!4797918 m!5780522))

(declare-fun m!5780524 () Bool)

(assert (=> b!4797918 m!5780524))

(declare-fun m!5780526 () Bool)

(assert (=> b!4797920 m!5780526))

(declare-fun m!5780528 () Bool)

(assert (=> b!4797920 m!5780528))

(declare-fun m!5780530 () Bool)

(assert (=> b!4797911 m!5780530))

(declare-fun m!5780532 () Bool)

(assert (=> b!4797911 m!5780532))

(assert (=> b!4797911 m!5780532))

(declare-fun m!5780534 () Bool)

(assert (=> b!4797911 m!5780534))

(declare-fun m!5780536 () Bool)

(assert (=> b!4797914 m!5780536))

(assert (=> b!4797914 m!5780536))

(declare-fun m!5780538 () Bool)

(assert (=> b!4797914 m!5780538))

(assert (=> b!4797914 m!5780538))

(declare-fun m!5780540 () Bool)

(assert (=> b!4797914 m!5780540))

(declare-fun m!5780542 () Bool)

(assert (=> b!4797919 m!5780542))

(declare-fun m!5780544 () Bool)

(assert (=> b!4797919 m!5780544))

(declare-fun m!5780546 () Bool)

(assert (=> b!4797919 m!5780546))

(declare-fun m!5780548 () Bool)

(assert (=> b!4797919 m!5780548))

(declare-fun m!5780550 () Bool)

(assert (=> b!4797919 m!5780550))

(declare-fun m!5780552 () Bool)

(assert (=> b!4797919 m!5780552))

(push 1)

(assert (not b!4797914))

(assert (not start!494836))

(assert (not b!4797917))

(assert (not b!4797919))

(assert (not b!4797918))

(assert (not b!4797912))

(assert (not b!4797920))

(assert tp_is_empty!33651)

(assert (not b!4797911))

(assert (not b!4797913))

(assert tp_is_empty!33649)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

