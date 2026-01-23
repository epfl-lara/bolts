; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!459682 () Bool)

(assert start!459682)

(declare-fun b!4603437 () Bool)

(declare-fun res!1926056 () Bool)

(declare-fun e!2871413 () Bool)

(assert (=> b!4603437 (=> res!1926056 e!2871413)))

(declare-datatypes ((K!12503 0))(
  ( (K!12504 (val!18273 Int)) )
))
(declare-datatypes ((V!12749 0))(
  ( (V!12750 (val!18274 Int)) )
))
(declare-datatypes ((tuple2!51814 0))(
  ( (tuple2!51815 (_1!29201 K!12503) (_2!29201 V!12749)) )
))
(declare-datatypes ((List!51258 0))(
  ( (Nil!51134) (Cons!51134 (h!57108 tuple2!51814) (t!358252 List!51258)) )
))
(declare-fun lt!1761975 () List!51258)

(declare-fun hash!344 () (_ BitVec 64))

(declare-datatypes ((tuple2!51816 0))(
  ( (tuple2!51817 (_1!29202 (_ BitVec 64)) (_2!29202 List!51258)) )
))
(declare-datatypes ((List!51259 0))(
  ( (Nil!51135) (Cons!51135 (h!57109 tuple2!51816) (t!358253 List!51259)) )
))
(declare-datatypes ((ListLongMap!3329 0))(
  ( (ListLongMap!3330 (toList!4697 List!51259)) )
))
(declare-fun lt!1761973 () ListLongMap!3329)

(declare-fun apply!12078 (ListLongMap!3329 (_ BitVec 64)) List!51258)

(assert (=> b!4603437 (= res!1926056 (not (= (apply!12078 lt!1761973 hash!344) lt!1761975)))))

(declare-fun b!4603438 () Bool)

(declare-fun res!1926059 () Bool)

(declare-fun e!2871414 () Bool)

(assert (=> b!4603438 (=> (not res!1926059) (not e!2871414))))

(declare-datatypes ((Hashable!5740 0))(
  ( (HashableExt!5739 (__x!31443 Int)) )
))
(declare-fun hashF!1107 () Hashable!5740)

(declare-fun newBucket!178 () List!51258)

(declare-fun allKeysSameHash!1197 (List!51258 (_ BitVec 64) Hashable!5740) Bool)

(assert (=> b!4603438 (= res!1926059 (allKeysSameHash!1197 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4603439 () Bool)

(declare-fun e!2871412 () Bool)

(assert (=> b!4603439 (= e!2871412 e!2871413)))

(declare-fun res!1926061 () Bool)

(assert (=> b!4603439 (=> res!1926061 e!2871413)))

(declare-fun contains!14110 (ListLongMap!3329 (_ BitVec 64)) Bool)

(assert (=> b!4603439 (= res!1926061 (not (contains!14110 lt!1761973 hash!344)))))

(declare-fun lm!1477 () ListLongMap!3329)

(declare-fun tail!7984 (ListLongMap!3329) ListLongMap!3329)

(assert (=> b!4603439 (= lt!1761973 (tail!7984 lm!1477))))

(declare-fun b!4603440 () Bool)

(declare-fun res!1926052 () Bool)

(assert (=> b!4603440 (=> res!1926052 e!2871412)))

(declare-fun noDuplicateKeys!1341 (List!51258) Bool)

(assert (=> b!4603440 (= res!1926052 (not (noDuplicateKeys!1341 newBucket!178)))))

(declare-fun res!1926060 () Bool)

(declare-fun e!2871411 () Bool)

(assert (=> start!459682 (=> (not res!1926060) (not e!2871411))))

(declare-fun lambda!187035 () Int)

(declare-fun forall!10637 (List!51259 Int) Bool)

(assert (=> start!459682 (= res!1926060 (forall!10637 (toList!4697 lm!1477) lambda!187035))))

(assert (=> start!459682 e!2871411))

(assert (=> start!459682 true))

(declare-fun e!2871415 () Bool)

(declare-fun inv!66688 (ListLongMap!3329) Bool)

(assert (=> start!459682 (and (inv!66688 lm!1477) e!2871415)))

(declare-fun tp_is_empty!28657 () Bool)

(assert (=> start!459682 tp_is_empty!28657))

(declare-fun e!2871416 () Bool)

(assert (=> start!459682 e!2871416))

(declare-fun b!4603441 () Bool)

(assert (=> b!4603441 (= e!2871413 true)))

(assert (=> b!4603441 false))

(declare-datatypes ((Unit!108817 0))(
  ( (Unit!108818) )
))
(declare-fun lt!1761974 () Unit!108817)

(declare-fun key!3287 () K!12503)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!305 (ListLongMap!3329 K!12503 Hashable!5740) Unit!108817)

(assert (=> b!4603441 (= lt!1761974 (lemmaNotInItsHashBucketThenNotInMap!305 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4603442 () Bool)

(assert (=> b!4603442 (= e!2871414 (not e!2871412))))

(declare-fun res!1926053 () Bool)

(assert (=> b!4603442 (=> res!1926053 e!2871412)))

(declare-fun removePairForKey!966 (List!51258 K!12503) List!51258)

(assert (=> b!4603442 (= res!1926053 (not (= newBucket!178 (removePairForKey!966 lt!1761975 key!3287))))))

(declare-fun lt!1761972 () tuple2!51816)

(declare-fun lt!1761978 () Unit!108817)

(declare-fun forallContained!2886 (List!51259 Int tuple2!51816) Unit!108817)

(assert (=> b!4603442 (= lt!1761978 (forallContained!2886 (toList!4697 lm!1477) lambda!187035 lt!1761972))))

(declare-fun contains!14111 (List!51259 tuple2!51816) Bool)

(assert (=> b!4603442 (contains!14111 (toList!4697 lm!1477) lt!1761972)))

(assert (=> b!4603442 (= lt!1761972 (tuple2!51817 hash!344 lt!1761975))))

(declare-fun lt!1761977 () Unit!108817)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!851 (List!51259 (_ BitVec 64) List!51258) Unit!108817)

(assert (=> b!4603442 (= lt!1761977 (lemmaGetValueByKeyImpliesContainsTuple!851 (toList!4697 lm!1477) hash!344 lt!1761975))))

(assert (=> b!4603442 (= lt!1761975 (apply!12078 lm!1477 hash!344))))

(declare-fun lt!1761979 () (_ BitVec 64))

(assert (=> b!4603442 (contains!14110 lm!1477 lt!1761979)))

(declare-fun lt!1761976 () Unit!108817)

(declare-fun lemmaInGenMapThenLongMapContainsHash!415 (ListLongMap!3329 K!12503 Hashable!5740) Unit!108817)

(assert (=> b!4603442 (= lt!1761976 (lemmaInGenMapThenLongMapContainsHash!415 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4603443 () Bool)

(declare-fun res!1926055 () Bool)

(assert (=> b!4603443 (=> res!1926055 e!2871413)))

(assert (=> b!4603443 (= res!1926055 (not (contains!14111 (t!358253 (toList!4697 lm!1477)) lt!1761972)))))

(declare-fun b!4603444 () Bool)

(declare-fun res!1926058 () Bool)

(assert (=> b!4603444 (=> res!1926058 e!2871413)))

(declare-fun containsKey!2197 (List!51258 K!12503) Bool)

(assert (=> b!4603444 (= res!1926058 (containsKey!2197 lt!1761975 key!3287))))

(declare-fun b!4603445 () Bool)

(assert (=> b!4603445 (= e!2871411 e!2871414)))

(declare-fun res!1926057 () Bool)

(assert (=> b!4603445 (=> (not res!1926057) (not e!2871414))))

(assert (=> b!4603445 (= res!1926057 (= lt!1761979 hash!344))))

(declare-fun hash!3262 (Hashable!5740 K!12503) (_ BitVec 64))

(assert (=> b!4603445 (= lt!1761979 (hash!3262 hashF!1107 key!3287))))

(declare-fun b!4603446 () Bool)

(declare-fun tp!1340669 () Bool)

(assert (=> b!4603446 (= e!2871415 tp!1340669)))

(declare-fun b!4603447 () Bool)

(declare-fun res!1926051 () Bool)

(assert (=> b!4603447 (=> (not res!1926051) (not e!2871411))))

(declare-datatypes ((ListMap!3959 0))(
  ( (ListMap!3960 (toList!4698 List!51258)) )
))
(declare-fun contains!14112 (ListMap!3959 K!12503) Bool)

(declare-fun extractMap!1401 (List!51259) ListMap!3959)

(assert (=> b!4603447 (= res!1926051 (contains!14112 (extractMap!1401 (toList!4697 lm!1477)) key!3287))))

(declare-fun b!4603448 () Bool)

(declare-fun res!1926054 () Bool)

(assert (=> b!4603448 (=> (not res!1926054) (not e!2871411))))

(declare-fun allKeysSameHashInMap!1452 (ListLongMap!3329 Hashable!5740) Bool)

(assert (=> b!4603448 (= res!1926054 (allKeysSameHashInMap!1452 lm!1477 hashF!1107))))

(declare-fun tp_is_empty!28659 () Bool)

(declare-fun tp!1340668 () Bool)

(declare-fun b!4603449 () Bool)

(assert (=> b!4603449 (= e!2871416 (and tp_is_empty!28657 tp_is_empty!28659 tp!1340668))))

(declare-fun b!4603450 () Bool)

(declare-fun res!1926062 () Bool)

(assert (=> b!4603450 (=> res!1926062 e!2871412)))

(assert (=> b!4603450 (= res!1926062 (or (is-Nil!51135 (toList!4697 lm!1477)) (= (_1!29202 (h!57109 (toList!4697 lm!1477))) hash!344)))))

(assert (= (and start!459682 res!1926060) b!4603448))

(assert (= (and b!4603448 res!1926054) b!4603447))

(assert (= (and b!4603447 res!1926051) b!4603445))

(assert (= (and b!4603445 res!1926057) b!4603438))

(assert (= (and b!4603438 res!1926059) b!4603442))

(assert (= (and b!4603442 (not res!1926053)) b!4603440))

(assert (= (and b!4603440 (not res!1926052)) b!4603450))

(assert (= (and b!4603450 (not res!1926062)) b!4603439))

(assert (= (and b!4603439 (not res!1926061)) b!4603437))

(assert (= (and b!4603437 (not res!1926056)) b!4603443))

(assert (= (and b!4603443 (not res!1926055)) b!4603444))

(assert (= (and b!4603444 (not res!1926058)) b!4603441))

(assert (= start!459682 b!4603446))

(assert (= (and start!459682 (is-Cons!51134 newBucket!178)) b!4603449))

(declare-fun m!5432545 () Bool)

(assert (=> b!4603439 m!5432545))

(declare-fun m!5432547 () Bool)

(assert (=> b!4603439 m!5432547))

(declare-fun m!5432549 () Bool)

(assert (=> b!4603442 m!5432549))

(declare-fun m!5432551 () Bool)

(assert (=> b!4603442 m!5432551))

(declare-fun m!5432553 () Bool)

(assert (=> b!4603442 m!5432553))

(declare-fun m!5432555 () Bool)

(assert (=> b!4603442 m!5432555))

(declare-fun m!5432557 () Bool)

(assert (=> b!4603442 m!5432557))

(declare-fun m!5432559 () Bool)

(assert (=> b!4603442 m!5432559))

(declare-fun m!5432561 () Bool)

(assert (=> b!4603442 m!5432561))

(declare-fun m!5432563 () Bool)

(assert (=> b!4603437 m!5432563))

(declare-fun m!5432565 () Bool)

(assert (=> b!4603443 m!5432565))

(declare-fun m!5432567 () Bool)

(assert (=> b!4603444 m!5432567))

(declare-fun m!5432569 () Bool)

(assert (=> b!4603441 m!5432569))

(declare-fun m!5432571 () Bool)

(assert (=> b!4603445 m!5432571))

(declare-fun m!5432573 () Bool)

(assert (=> b!4603440 m!5432573))

(declare-fun m!5432575 () Bool)

(assert (=> b!4603438 m!5432575))

(declare-fun m!5432577 () Bool)

(assert (=> b!4603448 m!5432577))

(declare-fun m!5432579 () Bool)

(assert (=> start!459682 m!5432579))

(declare-fun m!5432581 () Bool)

(assert (=> start!459682 m!5432581))

(declare-fun m!5432583 () Bool)

(assert (=> b!4603447 m!5432583))

(assert (=> b!4603447 m!5432583))

(declare-fun m!5432585 () Bool)

(assert (=> b!4603447 m!5432585))

(push 1)

(assert tp_is_empty!28659)

(assert (not b!4603441))

(assert (not b!4603449))

(assert (not b!4603444))

(assert (not b!4603437))

(assert (not b!4603447))

(assert tp_is_empty!28657)

(assert (not b!4603442))

(assert (not b!4603440))

(assert (not b!4603448))

(assert (not b!4603445))

(assert (not start!459682))

(assert (not b!4603438))

(assert (not b!4603443))

(assert (not b!4603446))

(assert (not b!4603439))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

