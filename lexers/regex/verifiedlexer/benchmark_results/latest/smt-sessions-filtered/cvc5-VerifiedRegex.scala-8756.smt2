; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!467450 () Bool)

(assert start!467450)

(declare-fun tp_is_empty!29745 () Bool)

(declare-fun e!2897570 () Bool)

(declare-fun b!4644867 () Bool)

(declare-fun tp_is_empty!29747 () Bool)

(declare-fun tp!1343044 () Bool)

(assert (=> b!4644867 (= e!2897570 (and tp_is_empty!29745 tp_is_empty!29747 tp!1343044))))

(declare-fun b!4644868 () Bool)

(declare-fun res!1951415 () Bool)

(declare-fun e!2897571 () Bool)

(assert (=> b!4644868 (=> (not res!1951415) (not e!2897571))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((K!13183 0))(
  ( (K!13184 (val!18817 Int)) )
))
(declare-datatypes ((V!13429 0))(
  ( (V!13430 (val!18818 Int)) )
))
(declare-datatypes ((tuple2!52898 0))(
  ( (tuple2!52899 (_1!29743 K!13183) (_2!29743 V!13429)) )
))
(declare-datatypes ((List!51946 0))(
  ( (Nil!51822) (Cons!51822 (h!57946 tuple2!52898) (t!359042 List!51946)) )
))
(declare-fun oldBucket!40 () List!51946)

(declare-fun key!4968 () K!13183)

(declare-datatypes ((ListMap!4495 0))(
  ( (ListMap!4496 (toList!5169 List!51946)) )
))
(declare-fun contains!14974 (ListMap!4495 K!13183) Bool)

(declare-datatypes ((tuple2!52900 0))(
  ( (tuple2!52901 (_1!29744 (_ BitVec 64)) (_2!29744 List!51946)) )
))
(declare-datatypes ((List!51947 0))(
  ( (Nil!51823) (Cons!51823 (h!57947 tuple2!52900) (t!359043 List!51947)) )
))
(declare-fun extractMap!1669 (List!51947) ListMap!4495)

(assert (=> b!4644868 (= res!1951415 (contains!14974 (extractMap!1669 (Cons!51823 (tuple2!52901 hash!414 oldBucket!40) Nil!51823)) key!4968))))

(declare-fun b!4644869 () Bool)

(declare-fun res!1951416 () Bool)

(assert (=> b!4644869 (=> (not res!1951416) (not e!2897571))))

(declare-datatypes ((Hashable!6010 0))(
  ( (HashableExt!6009 (__x!31713 Int)) )
))
(declare-fun hashF!1389 () Hashable!6010)

(declare-fun allKeysSameHash!1467 (List!51946 (_ BitVec 64) Hashable!6010) Bool)

(assert (=> b!4644869 (= res!1951416 (allKeysSameHash!1467 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4644870 () Bool)

(declare-fun res!1951418 () Bool)

(assert (=> b!4644870 (=> (not res!1951418) (not e!2897571))))

(declare-fun newBucket!224 () List!51946)

(assert (=> b!4644870 (= res!1951418 (allKeysSameHash!1467 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4644871 () Bool)

(declare-fun res!1951414 () Bool)

(assert (=> b!4644871 (=> (not res!1951414) (not e!2897571))))

(declare-fun hash!3730 (Hashable!6010 K!13183) (_ BitVec 64))

(assert (=> b!4644871 (= res!1951414 (= (hash!3730 hashF!1389 key!4968) hash!414))))

(declare-fun b!4644872 () Bool)

(declare-fun e!2897569 () Bool)

(declare-fun tp!1343045 () Bool)

(assert (=> b!4644872 (= e!2897569 (and tp_is_empty!29745 tp_is_empty!29747 tp!1343045))))

(declare-fun b!4644873 () Bool)

(declare-fun res!1951419 () Bool)

(assert (=> b!4644873 (=> (not res!1951419) (not e!2897571))))

(declare-fun noDuplicateKeys!1613 (List!51946) Bool)

(assert (=> b!4644873 (= res!1951419 (noDuplicateKeys!1613 newBucket!224))))

(declare-fun b!4644874 () Bool)

(declare-fun res!1951413 () Bool)

(assert (=> b!4644874 (=> (not res!1951413) (not e!2897571))))

(declare-fun removePairForKey!1236 (List!51946 K!13183) List!51946)

(assert (=> b!4644874 (= res!1951413 (= (removePairForKey!1236 oldBucket!40 key!4968) newBucket!224))))

(declare-fun res!1951417 () Bool)

(assert (=> start!467450 (=> (not res!1951417) (not e!2897571))))

(assert (=> start!467450 (= res!1951417 (noDuplicateKeys!1613 oldBucket!40))))

(assert (=> start!467450 e!2897571))

(assert (=> start!467450 true))

(assert (=> start!467450 e!2897570))

(assert (=> start!467450 tp_is_empty!29745))

(assert (=> start!467450 e!2897569))

(declare-fun b!4644875 () Bool)

(assert (=> b!4644875 (= e!2897571 false)))

(assert (= (and start!467450 res!1951417) b!4644873))

(assert (= (and b!4644873 res!1951419) b!4644874))

(assert (= (and b!4644874 res!1951413) b!4644869))

(assert (= (and b!4644869 res!1951416) b!4644868))

(assert (= (and b!4644868 res!1951415) b!4644871))

(assert (= (and b!4644871 res!1951414) b!4644870))

(assert (= (and b!4644870 res!1951418) b!4644875))

(assert (= (and start!467450 (is-Cons!51822 oldBucket!40)) b!4644867))

(assert (= (and start!467450 (is-Cons!51822 newBucket!224)) b!4644872))

(declare-fun m!5509851 () Bool)

(assert (=> b!4644869 m!5509851))

(declare-fun m!5509853 () Bool)

(assert (=> b!4644870 m!5509853))

(declare-fun m!5509855 () Bool)

(assert (=> b!4644871 m!5509855))

(declare-fun m!5509857 () Bool)

(assert (=> b!4644868 m!5509857))

(assert (=> b!4644868 m!5509857))

(declare-fun m!5509859 () Bool)

(assert (=> b!4644868 m!5509859))

(declare-fun m!5509861 () Bool)

(assert (=> start!467450 m!5509861))

(declare-fun m!5509863 () Bool)

(assert (=> b!4644874 m!5509863))

(declare-fun m!5509865 () Bool)

(assert (=> b!4644873 m!5509865))

(push 1)

(assert (not b!4644870))

(assert tp_is_empty!29745)

(assert (not b!4644868))

(assert (not b!4644872))

(assert (not b!4644873))

(assert (not start!467450))

(assert tp_is_empty!29747)

(assert (not b!4644869))

(assert (not b!4644867))

(assert (not b!4644874))

(assert (not b!4644871))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

