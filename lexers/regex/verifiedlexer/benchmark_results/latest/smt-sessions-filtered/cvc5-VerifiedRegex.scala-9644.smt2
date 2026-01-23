; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!506650 () Bool)

(assert start!506650)

(declare-fun bs!1173139 () Bool)

(declare-fun b!4852940 () Bool)

(assert (= bs!1173139 (and b!4852940 start!506650)))

(declare-fun lambda!242938 () Int)

(declare-fun lambda!242937 () Int)

(assert (=> bs!1173139 (not (= lambda!242938 lambda!242937))))

(assert (=> b!4852940 true))

(declare-fun b!4852941 () Bool)

(assert (=> b!4852941 true))

(assert (=> b!4852941 true))

(declare-fun res!2071728 () Bool)

(declare-fun e!3033795 () Bool)

(assert (=> start!506650 (=> (not res!2071728) (not e!3033795))))

(declare-datatypes ((V!17753 0))(
  ( (V!17754 (val!22311 Int)) )
))
(declare-datatypes ((K!17507 0))(
  ( (K!17508 (val!22312 Int)) )
))
(declare-datatypes ((tuple2!59458 0))(
  ( (tuple2!59459 (_1!33023 K!17507) (_2!33023 V!17753)) )
))
(declare-datatypes ((List!55786 0))(
  ( (Nil!55662) (Cons!55662 (h!62105 tuple2!59458) (t!363282 List!55786)) )
))
(declare-datatypes ((tuple2!59460 0))(
  ( (tuple2!59461 (_1!33024 (_ BitVec 64)) (_2!33024 List!55786)) )
))
(declare-datatypes ((List!55787 0))(
  ( (Nil!55663) (Cons!55663 (h!62106 tuple2!59460) (t!363283 List!55787)) )
))
(declare-datatypes ((ListLongMap!6537 0))(
  ( (ListLongMap!6538 (toList!7897 List!55787)) )
))
(declare-fun lm!2840 () ListLongMap!6537)

(declare-fun forall!12995 (List!55787 Int) Bool)

(assert (=> start!506650 (= res!2071728 (forall!12995 (toList!7897 lm!2840) lambda!242937))))

(assert (=> start!506650 e!3033795))

(declare-fun e!3033797 () Bool)

(declare-fun inv!71370 (ListLongMap!6537) Bool)

(assert (=> start!506650 (and (inv!71370 lm!2840) e!3033797)))

(assert (=> start!506650 true))

(declare-fun tp_is_empty!35377 () Bool)

(assert (=> start!506650 tp_is_empty!35377))

(declare-fun e!3033796 () Bool)

(assert (=> b!4852940 (= e!3033795 (not e!3033796))))

(declare-fun res!2071731 () Bool)

(assert (=> b!4852940 (=> res!2071731 e!3033796)))

(declare-datatypes ((Hashable!7539 0))(
  ( (HashableExt!7538 (__x!33814 Int)) )
))
(declare-fun hashF!1802 () Hashable!7539)

(declare-fun hash!467 () (_ BitVec 64))

(declare-fun lt!1990494 () List!55786)

(declare-fun allKeysSameHash!2049 (List!55786 (_ BitVec 64) Hashable!7539) Bool)

(assert (=> b!4852940 (= res!2071731 (not (allKeysSameHash!2049 lt!1990494 hash!467 hashF!1802)))))

(declare-datatypes ((Unit!145791 0))(
  ( (Unit!145792) )
))
(declare-fun lt!1990492 () Unit!145791)

(declare-fun lt!1990493 () tuple2!59460)

(declare-fun forallContained!4572 (List!55787 Int tuple2!59460) Unit!145791)

(assert (=> b!4852940 (= lt!1990492 (forallContained!4572 (toList!7897 lm!2840) lambda!242938 lt!1990493))))

(declare-fun contains!19316 (List!55787 tuple2!59460) Bool)

(assert (=> b!4852940 (contains!19316 (toList!7897 lm!2840) lt!1990493)))

(assert (=> b!4852940 (= lt!1990493 (tuple2!59461 hash!467 lt!1990494))))

(declare-fun lt!1990495 () Unit!145791)

(declare-fun lemmaGetValueImpliesTupleContained!800 (ListLongMap!6537 (_ BitVec 64) List!55786) Unit!145791)

(assert (=> b!4852940 (= lt!1990495 (lemmaGetValueImpliesTupleContained!800 lm!2840 hash!467 lt!1990494))))

(declare-fun apply!13478 (ListLongMap!6537 (_ BitVec 64)) List!55786)

(assert (=> b!4852940 (= lt!1990494 (apply!13478 lm!2840 hash!467))))

(assert (=> b!4852941 (= e!3033796 true)))

(declare-fun key!6955 () K!17507)

(declare-fun lt!1990491 () Unit!145791)

(declare-fun lambda!242939 () Int)

(declare-fun forallContained!4573 (List!55786 Int tuple2!59458) Unit!145791)

(declare-datatypes ((Option!13739 0))(
  ( (None!13738) (Some!13738 (v!49544 tuple2!59458)) )
))
(declare-fun get!19119 (Option!13739) tuple2!59458)

(declare-fun getPair!1135 (List!55786 K!17507) Option!13739)

(assert (=> b!4852941 (= lt!1990491 (forallContained!4573 lt!1990494 lambda!242939 (tuple2!59459 key!6955 (_2!33023 (get!19119 (getPair!1135 lt!1990494 key!6955))))))))

(declare-fun lt!1990496 () Unit!145791)

(assert (=> b!4852941 (= lt!1990496 (forallContained!4572 (toList!7897 lm!2840) lambda!242937 lt!1990493))))

(declare-fun b!4852942 () Bool)

(declare-fun res!2071732 () Bool)

(assert (=> b!4852942 (=> res!2071732 e!3033796)))

(declare-fun containsKey!4749 (List!55786 K!17507) Bool)

(assert (=> b!4852942 (= res!2071732 (not (containsKey!4749 lt!1990494 key!6955)))))

(declare-fun b!4852943 () Bool)

(declare-fun res!2071729 () Bool)

(assert (=> b!4852943 (=> (not res!2071729) (not e!3033795))))

(declare-fun allKeysSameHashInMap!2853 (ListLongMap!6537 Hashable!7539) Bool)

(assert (=> b!4852943 (= res!2071729 (allKeysSameHashInMap!2853 lm!2840 hashF!1802))))

(declare-fun b!4852944 () Bool)

(declare-fun res!2071730 () Bool)

(assert (=> b!4852944 (=> (not res!2071730) (not e!3033795))))

(declare-fun hash!5669 (Hashable!7539 K!17507) (_ BitVec 64))

(assert (=> b!4852944 (= res!2071730 (not (= hash!467 (hash!5669 hashF!1802 key!6955))))))

(declare-fun b!4852945 () Bool)

(declare-fun res!2071733 () Bool)

(assert (=> b!4852945 (=> (not res!2071733) (not e!3033795))))

(declare-fun contains!19317 (ListLongMap!6537 (_ BitVec 64)) Bool)

(assert (=> b!4852945 (= res!2071733 (contains!19317 lm!2840 hash!467))))

(declare-fun b!4852946 () Bool)

(declare-fun tp!1365141 () Bool)

(assert (=> b!4852946 (= e!3033797 tp!1365141)))

(assert (= (and start!506650 res!2071728) b!4852943))

(assert (= (and b!4852943 res!2071729) b!4852945))

(assert (= (and b!4852945 res!2071733) b!4852944))

(assert (= (and b!4852944 res!2071730) b!4852940))

(assert (= (and b!4852940 (not res!2071731)) b!4852942))

(assert (= (and b!4852942 (not res!2071732)) b!4852941))

(assert (= start!506650 b!4852946))

(declare-fun m!5851188 () Bool)

(assert (=> b!4852943 m!5851188))

(declare-fun m!5851190 () Bool)

(assert (=> b!4852944 m!5851190))

(declare-fun m!5851192 () Bool)

(assert (=> b!4852941 m!5851192))

(assert (=> b!4852941 m!5851192))

(declare-fun m!5851194 () Bool)

(assert (=> b!4852941 m!5851194))

(declare-fun m!5851196 () Bool)

(assert (=> b!4852941 m!5851196))

(declare-fun m!5851198 () Bool)

(assert (=> b!4852941 m!5851198))

(declare-fun m!5851200 () Bool)

(assert (=> b!4852942 m!5851200))

(declare-fun m!5851202 () Bool)

(assert (=> b!4852945 m!5851202))

(declare-fun m!5851204 () Bool)

(assert (=> b!4852940 m!5851204))

(declare-fun m!5851206 () Bool)

(assert (=> b!4852940 m!5851206))

(declare-fun m!5851208 () Bool)

(assert (=> b!4852940 m!5851208))

(declare-fun m!5851210 () Bool)

(assert (=> b!4852940 m!5851210))

(declare-fun m!5851212 () Bool)

(assert (=> b!4852940 m!5851212))

(declare-fun m!5851214 () Bool)

(assert (=> start!506650 m!5851214))

(declare-fun m!5851216 () Bool)

(assert (=> start!506650 m!5851216))

(push 1)

(assert (not b!4852945))

(assert (not b!4852942))

(assert (not b!4852941))

(assert (not start!506650))

(assert (not b!4852943))

(assert (not b!4852946))

(assert (not b!4852944))

(assert tp_is_empty!35377)

(assert (not b!4852940))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

