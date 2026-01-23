; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489972 () Bool)

(assert start!489972)

(declare-fun b!4777711 () Bool)

(declare-fun e!2982640 () Bool)

(declare-datatypes ((K!15477 0))(
  ( (K!15478 (val!20687 Int)) )
))
(declare-datatypes ((V!15723 0))(
  ( (V!15724 (val!20688 Int)) )
))
(declare-datatypes ((tuple2!56348 0))(
  ( (tuple2!56349 (_1!31468 K!15477) (_2!31468 V!15723)) )
))
(declare-datatypes ((List!54041 0))(
  ( (Nil!53917) (Cons!53917 (h!60331 tuple2!56348) (t!361491 List!54041)) )
))
(declare-datatypes ((tuple2!56350 0))(
  ( (tuple2!56351 (_1!31469 (_ BitVec 64)) (_2!31469 List!54041)) )
))
(declare-datatypes ((List!54042 0))(
  ( (Nil!53918) (Cons!53918 (h!60332 tuple2!56350) (t!361492 List!54042)) )
))
(declare-datatypes ((ListLongMap!5091 0))(
  ( (ListLongMap!5092 (toList!6669 List!54042)) )
))
(declare-fun lm!2709 () ListLongMap!5091)

(declare-fun lambda!227256 () Int)

(declare-fun forall!12071 (List!54042 Int) Bool)

(assert (=> b!4777711 (= e!2982640 (not (forall!12071 (toList!6669 lm!2709) lambda!227256)))))

(declare-fun key!6641 () K!15477)

(declare-datatypes ((ListMap!6141 0))(
  ( (ListMap!6142 (toList!6670 List!54041)) )
))
(declare-fun contains!17417 (ListMap!6141 K!15477) Bool)

(declare-fun extractMap!2322 (List!54042) ListMap!6141)

(assert (=> b!4777711 (contains!17417 (extractMap!2322 (toList!6669 lm!2709)) key!6641)))

(declare-datatypes ((Hashable!6795 0))(
  ( (HashableExt!6794 (__x!32818 Int)) )
))
(declare-fun hashF!1687 () Hashable!6795)

(declare-datatypes ((Unit!138980 0))(
  ( (Unit!138981) )
))
(declare-fun lt!1940836 () Unit!138980)

(declare-fun lemmaListContainsThenExtractedMapContains!643 (ListLongMap!5091 K!15477 Hashable!6795) Unit!138980)

(assert (=> b!4777711 (= lt!1940836 (lemmaListContainsThenExtractedMapContains!643 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4777710 () Bool)

(declare-fun res!2027941 () Bool)

(assert (=> b!4777710 (=> (not res!2027941) (not e!2982640))))

(declare-fun containsKeyBiggerList!451 (List!54042 K!15477) Bool)

(assert (=> b!4777710 (= res!2027941 (containsKeyBiggerList!451 (toList!6669 lm!2709) key!6641))))

(declare-fun b!4777712 () Bool)

(declare-fun e!2982639 () Bool)

(declare-fun tp!1357223 () Bool)

(assert (=> b!4777712 (= e!2982639 tp!1357223)))

(declare-fun b!4777709 () Bool)

(declare-fun res!2027943 () Bool)

(assert (=> b!4777709 (=> (not res!2027943) (not e!2982640))))

(declare-fun allKeysSameHashInMap!2200 (ListLongMap!5091 Hashable!6795) Bool)

(assert (=> b!4777709 (= res!2027943 (allKeysSameHashInMap!2200 lm!2709 hashF!1687))))

(declare-fun res!2027942 () Bool)

(assert (=> start!489972 (=> (not res!2027942) (not e!2982640))))

(assert (=> start!489972 (= res!2027942 (forall!12071 (toList!6669 lm!2709) lambda!227256))))

(assert (=> start!489972 e!2982640))

(declare-fun inv!69504 (ListLongMap!5091) Bool)

(assert (=> start!489972 (and (inv!69504 lm!2709) e!2982639)))

(assert (=> start!489972 true))

(declare-fun tp_is_empty!33101 () Bool)

(assert (=> start!489972 tp_is_empty!33101))

(assert (= (and start!489972 res!2027942) b!4777709))

(assert (= (and b!4777709 res!2027943) b!4777710))

(assert (= (and b!4777710 res!2027941) b!4777711))

(assert (= start!489972 b!4777712))

(declare-fun m!5753386 () Bool)

(assert (=> b!4777711 m!5753386))

(declare-fun m!5753388 () Bool)

(assert (=> b!4777711 m!5753388))

(assert (=> b!4777711 m!5753388))

(declare-fun m!5753390 () Bool)

(assert (=> b!4777711 m!5753390))

(declare-fun m!5753392 () Bool)

(assert (=> b!4777711 m!5753392))

(declare-fun m!5753394 () Bool)

(assert (=> b!4777710 m!5753394))

(declare-fun m!5753396 () Bool)

(assert (=> b!4777709 m!5753396))

(assert (=> start!489972 m!5753386))

(declare-fun m!5753398 () Bool)

(assert (=> start!489972 m!5753398))

(push 1)

(assert (not b!4777709))

(assert (not b!4777711))

(assert tp_is_empty!33101)

(assert (not b!4777712))

(assert (not b!4777710))

(assert (not start!489972))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

