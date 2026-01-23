; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489056 () Bool)

(assert start!489056)

(declare-fun b!4773733 () Bool)

(declare-fun res!2025277 () Bool)

(declare-fun e!2980150 () Bool)

(assert (=> b!4773733 (=> (not res!2025277) (not e!2980150))))

(declare-datatypes ((K!15262 0))(
  ( (K!15263 (val!20515 Int)) )
))
(declare-datatypes ((V!15508 0))(
  ( (V!15509 (val!20516 Int)) )
))
(declare-datatypes ((tuple2!56004 0))(
  ( (tuple2!56005 (_1!31296 K!15262) (_2!31296 V!15508)) )
))
(declare-datatypes ((List!53857 0))(
  ( (Nil!53733) (Cons!53733 (h!60147 tuple2!56004) (t!361307 List!53857)) )
))
(declare-datatypes ((tuple2!56006 0))(
  ( (tuple2!56007 (_1!31297 (_ BitVec 64)) (_2!31297 List!53857)) )
))
(declare-datatypes ((List!53858 0))(
  ( (Nil!53734) (Cons!53734 (h!60148 tuple2!56006) (t!361308 List!53858)) )
))
(declare-datatypes ((ListLongMap!4919 0))(
  ( (ListLongMap!4920 (toList!6505 List!53858)) )
))
(declare-fun lm!1309 () ListLongMap!4919)

(declare-fun key!2872 () K!15262)

(declare-datatypes ((ListMap!5985 0))(
  ( (ListMap!5986 (toList!6506 List!53857)) )
))
(declare-fun contains!17173 (ListMap!5985 K!15262) Bool)

(declare-fun extractMap!2244 (List!53858) ListMap!5985)

(assert (=> b!4773733 (= res!2025277 (contains!17173 (extractMap!2244 (toList!6505 lm!1309)) key!2872))))

(declare-fun res!2025278 () Bool)

(assert (=> start!489056 (=> (not res!2025278) (not e!2980150))))

(declare-fun lambda!225988 () Int)

(declare-fun forall!11977 (List!53858 Int) Bool)

(assert (=> start!489056 (= res!2025278 (forall!11977 (toList!6505 lm!1309) lambda!225988))))

(assert (=> start!489056 e!2980150))

(declare-fun e!2980151 () Bool)

(declare-fun inv!69289 (ListLongMap!4919) Bool)

(assert (=> start!489056 (and (inv!69289 lm!1309) e!2980151)))

(assert (=> start!489056 true))

(declare-fun tp_is_empty!32813 () Bool)

(assert (=> start!489056 tp_is_empty!32813))

(declare-fun tp_is_empty!32815 () Bool)

(assert (=> start!489056 tp_is_empty!32815))

(declare-fun b!4773734 () Bool)

(declare-fun res!2025275 () Bool)

(assert (=> b!4773734 (=> (not res!2025275) (not e!2980150))))

(declare-datatypes ((Hashable!6709 0))(
  ( (HashableExt!6708 (__x!32732 Int)) )
))
(declare-fun hashF!980 () Hashable!6709)

(declare-fun allKeysSameHashInMap!2114 (ListLongMap!4919 Hashable!6709) Bool)

(assert (=> b!4773734 (= res!2025275 (allKeysSameHashInMap!2114 lm!1309 hashF!980))))

(declare-fun b!4773735 () Bool)

(declare-fun e!2980149 () Bool)

(assert (=> b!4773735 (= e!2980150 (not e!2980149))))

(declare-fun res!2025276 () Bool)

(assert (=> b!4773735 (=> res!2025276 e!2980149)))

(declare-datatypes ((Option!12802 0))(
  ( (None!12801) (Some!12801 (v!47942 tuple2!56004)) )
))
(declare-fun lt!1936566 () Option!12802)

(declare-fun v!9615 () V!15508)

(declare-fun get!18193 (Option!12802) tuple2!56004)

(assert (=> b!4773735 (= res!2025276 (not (= (_2!31296 (get!18193 lt!1936566)) v!9615)))))

(declare-fun isDefined!9948 (Option!12802) Bool)

(assert (=> b!4773735 (isDefined!9948 lt!1936566)))

(declare-fun lt!1936568 () List!53857)

(declare-fun getPair!717 (List!53857 K!15262) Option!12802)

(assert (=> b!4773735 (= lt!1936566 (getPair!717 lt!1936568 key!2872))))

(declare-fun lt!1936565 () tuple2!56006)

(declare-datatypes ((Unit!138722 0))(
  ( (Unit!138723) )
))
(declare-fun lt!1936564 () Unit!138722)

(declare-fun forallContained!3950 (List!53858 Int tuple2!56006) Unit!138722)

(assert (=> b!4773735 (= lt!1936564 (forallContained!3950 (toList!6505 lm!1309) lambda!225988 lt!1936565))))

(declare-fun lt!1936561 () Unit!138722)

(declare-fun lemmaInGenMapThenGetPairDefined!491 (ListLongMap!4919 K!15262 Hashable!6709) Unit!138722)

(assert (=> b!4773735 (= lt!1936561 (lemmaInGenMapThenGetPairDefined!491 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1936562 () Unit!138722)

(assert (=> b!4773735 (= lt!1936562 (forallContained!3950 (toList!6505 lm!1309) lambda!225988 lt!1936565))))

(declare-fun contains!17174 (List!53858 tuple2!56006) Bool)

(assert (=> b!4773735 (contains!17174 (toList!6505 lm!1309) lt!1936565)))

(declare-fun lt!1936567 () (_ BitVec 64))

(assert (=> b!4773735 (= lt!1936565 (tuple2!56007 lt!1936567 lt!1936568))))

(declare-fun lt!1936560 () Unit!138722)

(declare-fun lemmaGetValueImpliesTupleContained!512 (ListLongMap!4919 (_ BitVec 64) List!53857) Unit!138722)

(assert (=> b!4773735 (= lt!1936560 (lemmaGetValueImpliesTupleContained!512 lm!1309 lt!1936567 lt!1936568))))

(declare-fun apply!12772 (ListLongMap!4919 (_ BitVec 64)) List!53857)

(assert (=> b!4773735 (= lt!1936568 (apply!12772 lm!1309 lt!1936567))))

(declare-fun contains!17175 (ListLongMap!4919 (_ BitVec 64)) Bool)

(assert (=> b!4773735 (contains!17175 lm!1309 lt!1936567)))

(declare-fun hash!4684 (Hashable!6709 K!15262) (_ BitVec 64))

(assert (=> b!4773735 (= lt!1936567 (hash!4684 hashF!980 key!2872))))

(declare-fun lt!1936563 () Unit!138722)

(declare-fun lemmaInGenMapThenLongMapContainsHash!921 (ListLongMap!4919 K!15262 Hashable!6709) Unit!138722)

(assert (=> b!4773735 (= lt!1936563 (lemmaInGenMapThenLongMapContainsHash!921 lm!1309 key!2872 hashF!980))))

(declare-fun b!4773736 () Bool)

(assert (=> b!4773736 (= e!2980149 true)))

(declare-fun containsKeyBiggerList!365 (List!53858 K!15262) Bool)

(assert (=> b!4773736 (containsKeyBiggerList!365 (toList!6505 lm!1309) key!2872)))

(declare-fun lt!1936569 () Unit!138722)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!223 (ListLongMap!4919 K!15262 Hashable!6709) Unit!138722)

(assert (=> b!4773736 (= lt!1936569 (lemmaInLongMapThenContainsKeyBiggerList!223 lm!1309 key!2872 hashF!980))))

(declare-fun b!4773737 () Bool)

(declare-fun tp!1356873 () Bool)

(assert (=> b!4773737 (= e!2980151 tp!1356873)))

(assert (= (and start!489056 res!2025278) b!4773734))

(assert (= (and b!4773734 res!2025275) b!4773733))

(assert (= (and b!4773733 res!2025277) b!4773735))

(assert (= (and b!4773735 (not res!2025276)) b!4773736))

(assert (= start!489056 b!4773737))

(declare-fun m!5747308 () Bool)

(assert (=> b!4773734 m!5747308))

(declare-fun m!5747310 () Bool)

(assert (=> b!4773735 m!5747310))

(declare-fun m!5747312 () Bool)

(assert (=> b!4773735 m!5747312))

(declare-fun m!5747314 () Bool)

(assert (=> b!4773735 m!5747314))

(declare-fun m!5747316 () Bool)

(assert (=> b!4773735 m!5747316))

(declare-fun m!5747318 () Bool)

(assert (=> b!4773735 m!5747318))

(declare-fun m!5747320 () Bool)

(assert (=> b!4773735 m!5747320))

(declare-fun m!5747322 () Bool)

(assert (=> b!4773735 m!5747322))

(declare-fun m!5747324 () Bool)

(assert (=> b!4773735 m!5747324))

(declare-fun m!5747326 () Bool)

(assert (=> b!4773735 m!5747326))

(declare-fun m!5747328 () Bool)

(assert (=> b!4773735 m!5747328))

(declare-fun m!5747330 () Bool)

(assert (=> b!4773735 m!5747330))

(assert (=> b!4773735 m!5747314))

(declare-fun m!5747332 () Bool)

(assert (=> b!4773733 m!5747332))

(assert (=> b!4773733 m!5747332))

(declare-fun m!5747334 () Bool)

(assert (=> b!4773733 m!5747334))

(declare-fun m!5747336 () Bool)

(assert (=> b!4773736 m!5747336))

(declare-fun m!5747338 () Bool)

(assert (=> b!4773736 m!5747338))

(declare-fun m!5747340 () Bool)

(assert (=> start!489056 m!5747340))

(declare-fun m!5747342 () Bool)

(assert (=> start!489056 m!5747342))

(push 1)

(assert tp_is_empty!32813)

(assert (not start!489056))

(assert (not b!4773734))

(assert (not b!4773733))

(assert tp_is_empty!32815)

(assert (not b!4773735))

(assert (not b!4773737))

(assert (not b!4773736))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

