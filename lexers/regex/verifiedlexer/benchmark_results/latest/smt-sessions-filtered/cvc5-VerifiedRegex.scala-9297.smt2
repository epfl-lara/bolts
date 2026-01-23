; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!493320 () Bool)

(assert start!493320)

(declare-fun b!4791699 () Bool)

(declare-fun e!2991814 () Bool)

(declare-datatypes ((K!15772 0))(
  ( (K!15773 (val!20923 Int)) )
))
(declare-datatypes ((V!16018 0))(
  ( (V!16019 (val!20924 Int)) )
))
(declare-datatypes ((tuple2!56820 0))(
  ( (tuple2!56821 (_1!31704 K!15772) (_2!31704 V!16018)) )
))
(declare-datatypes ((List!54321 0))(
  ( (Nil!54197) (Cons!54197 (h!60621 tuple2!56820) (t!361771 List!54321)) )
))
(declare-datatypes ((tuple2!56822 0))(
  ( (tuple2!56823 (_1!31705 (_ BitVec 64)) (_2!31705 List!54321)) )
))
(declare-datatypes ((List!54322 0))(
  ( (Nil!54198) (Cons!54198 (h!60622 tuple2!56822) (t!361772 List!54322)) )
))
(declare-datatypes ((ListLongMap!5327 0))(
  ( (ListLongMap!5328 (toList!6905 List!54322)) )
))
(declare-fun lm!2473 () ListLongMap!5327)

(declare-fun lambda!230406 () Int)

(declare-fun forall!12238 (List!54322 Int) Bool)

(assert (=> b!4791699 (= e!2991814 (not (forall!12238 (toList!6905 lm!2473) lambda!230406)))))

(declare-fun e!2991813 () Bool)

(assert (=> b!4791699 e!2991813))

(declare-fun res!2036534 () Bool)

(assert (=> b!4791699 (=> (not res!2036534) (not e!2991813))))

(declare-fun lt!1950816 () (_ BitVec 64))

(declare-fun contains!17804 (ListLongMap!5327 (_ BitVec 64)) Bool)

(assert (=> b!4791699 (= res!2036534 (contains!17804 lm!2473 lt!1950816))))

(declare-datatypes ((Hashable!6913 0))(
  ( (HashableExt!6912 (__x!32936 Int)) )
))
(declare-fun hashF!1559 () Hashable!6913)

(declare-fun key!5896 () K!15772)

(declare-fun hash!4945 (Hashable!6913 K!15772) (_ BitVec 64))

(assert (=> b!4791699 (= lt!1950816 (hash!4945 hashF!1559 key!5896))))

(declare-datatypes ((Unit!139904 0))(
  ( (Unit!139905) )
))
(declare-fun lt!1950817 () Unit!139904)

(declare-fun lemmaInGenericMapThenInLongMap!317 (ListLongMap!5327 K!15772 Hashable!6913) Unit!139904)

(assert (=> b!4791699 (= lt!1950817 (lemmaInGenericMapThenInLongMap!317 lm!2473 key!5896 hashF!1559))))

(declare-fun res!2036536 () Bool)

(assert (=> start!493320 (=> (not res!2036536) (not e!2991814))))

(assert (=> start!493320 (= res!2036536 (forall!12238 (toList!6905 lm!2473) lambda!230406))))

(assert (=> start!493320 e!2991814))

(declare-fun e!2991815 () Bool)

(declare-fun inv!69799 (ListLongMap!5327) Bool)

(assert (=> start!493320 (and (inv!69799 lm!2473) e!2991815)))

(assert (=> start!493320 true))

(declare-fun tp_is_empty!33529 () Bool)

(assert (=> start!493320 tp_is_empty!33529))

(declare-fun b!4791700 () Bool)

(declare-fun res!2036535 () Bool)

(assert (=> b!4791700 (=> (not res!2036535) (not e!2991814))))

(declare-datatypes ((ListMap!6377 0))(
  ( (ListMap!6378 (toList!6906 List!54321)) )
))
(declare-fun contains!17805 (ListMap!6377 K!15772) Bool)

(declare-fun extractMap!2440 (List!54322) ListMap!6377)

(assert (=> b!4791700 (= res!2036535 (contains!17805 (extractMap!2440 (toList!6905 lm!2473)) key!5896))))

(declare-fun b!4791701 () Bool)

(declare-fun tp!1357969 () Bool)

(assert (=> b!4791701 (= e!2991815 tp!1357969)))

(declare-fun b!4791702 () Bool)

(declare-datatypes ((Option!13080 0))(
  ( (None!13079) (Some!13079 (v!48358 tuple2!56820)) )
))
(declare-fun isDefined!10222 (Option!13080) Bool)

(declare-fun getPair!885 (List!54321 K!15772) Option!13080)

(declare-fun apply!12982 (ListLongMap!5327 (_ BitVec 64)) List!54321)

(assert (=> b!4791702 (= e!2991813 (isDefined!10222 (getPair!885 (apply!12982 lm!2473 lt!1950816) key!5896)))))

(declare-fun b!4791703 () Bool)

(declare-fun res!2036533 () Bool)

(assert (=> b!4791703 (=> (not res!2036533) (not e!2991814))))

(declare-fun allKeysSameHashInMap!2318 (ListLongMap!5327 Hashable!6913) Bool)

(assert (=> b!4791703 (= res!2036533 (allKeysSameHashInMap!2318 lm!2473 hashF!1559))))

(assert (= (and start!493320 res!2036536) b!4791703))

(assert (= (and b!4791703 res!2036533) b!4791700))

(assert (= (and b!4791700 res!2036535) b!4791699))

(assert (= (and b!4791699 res!2036534) b!4791702))

(assert (= start!493320 b!4791701))

(declare-fun m!5772318 () Bool)

(assert (=> b!4791700 m!5772318))

(assert (=> b!4791700 m!5772318))

(declare-fun m!5772320 () Bool)

(assert (=> b!4791700 m!5772320))

(declare-fun m!5772322 () Bool)

(assert (=> b!4791699 m!5772322))

(declare-fun m!5772324 () Bool)

(assert (=> b!4791699 m!5772324))

(declare-fun m!5772326 () Bool)

(assert (=> b!4791699 m!5772326))

(declare-fun m!5772328 () Bool)

(assert (=> b!4791699 m!5772328))

(assert (=> start!493320 m!5772322))

(declare-fun m!5772330 () Bool)

(assert (=> start!493320 m!5772330))

(declare-fun m!5772332 () Bool)

(assert (=> b!4791703 m!5772332))

(declare-fun m!5772334 () Bool)

(assert (=> b!4791702 m!5772334))

(assert (=> b!4791702 m!5772334))

(declare-fun m!5772336 () Bool)

(assert (=> b!4791702 m!5772336))

(assert (=> b!4791702 m!5772336))

(declare-fun m!5772338 () Bool)

(assert (=> b!4791702 m!5772338))

(push 1)

(assert (not start!493320))

(assert (not b!4791703))

(assert (not b!4791699))

(assert (not b!4791702))

(assert (not b!4791700))

(assert tp_is_empty!33529)

(assert (not b!4791701))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

