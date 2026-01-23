; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!468678 () Bool)

(assert start!468678)

(declare-fun b!4656641 () Bool)

(declare-fun res!1958124 () Bool)

(declare-fun e!2905447 () Bool)

(assert (=> b!4656641 (=> (not res!1958124) (not e!2905447))))

(declare-datatypes ((Hashable!6040 0))(
  ( (HashableExt!6039 (__x!31743 Int)) )
))
(declare-fun hashF!1389 () Hashable!6040)

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((K!13258 0))(
  ( (K!13259 (val!18877 Int)) )
))
(declare-datatypes ((V!13504 0))(
  ( (V!13505 (val!18878 Int)) )
))
(declare-datatypes ((tuple2!53018 0))(
  ( (tuple2!53019 (_1!29803 K!13258) (_2!29803 V!13504)) )
))
(declare-datatypes ((List!52028 0))(
  ( (Nil!51904) (Cons!51904 (h!58050 tuple2!53018) (t!359144 List!52028)) )
))
(declare-fun oldBucket!40 () List!52028)

(declare-fun allKeysSameHash!1497 (List!52028 (_ BitVec 64) Hashable!6040) Bool)

(assert (=> b!4656641 (= res!1958124 (allKeysSameHash!1497 oldBucket!40 hash!414 hashF!1389))))

(declare-fun tp_is_empty!29865 () Bool)

(declare-fun tp_is_empty!29867 () Bool)

(declare-fun b!4656642 () Bool)

(declare-fun tp!1343344 () Bool)

(declare-fun e!2905452 () Bool)

(assert (=> b!4656642 (= e!2905452 (and tp_is_empty!29865 tp_is_empty!29867 tp!1343344))))

(declare-fun b!4656643 () Bool)

(declare-fun e!2905450 () Bool)

(assert (=> b!4656643 (= e!2905447 e!2905450)))

(declare-fun res!1958121 () Bool)

(assert (=> b!4656643 (=> (not res!1958121) (not e!2905450))))

(declare-datatypes ((ListMap!4555 0))(
  ( (ListMap!4556 (toList!5215 List!52028)) )
))
(declare-fun lt!1819225 () ListMap!4555)

(declare-fun key!4968 () K!13258)

(declare-fun contains!15044 (ListMap!4555 K!13258) Bool)

(assert (=> b!4656643 (= res!1958121 (contains!15044 lt!1819225 key!4968))))

(declare-datatypes ((tuple2!53020 0))(
  ( (tuple2!53021 (_1!29804 (_ BitVec 64)) (_2!29804 List!52028)) )
))
(declare-datatypes ((List!52029 0))(
  ( (Nil!51905) (Cons!51905 (h!58051 tuple2!53020) (t!359145 List!52029)) )
))
(declare-fun lt!1819232 () List!52029)

(declare-fun extractMap!1699 (List!52029) ListMap!4555)

(assert (=> b!4656643 (= lt!1819225 (extractMap!1699 lt!1819232))))

(assert (=> b!4656643 (= lt!1819232 (Cons!51905 (tuple2!53021 hash!414 oldBucket!40) Nil!51905))))

(declare-fun b!4656644 () Bool)

(declare-fun res!1958125 () Bool)

(assert (=> b!4656644 (=> (not res!1958125) (not e!2905447))))

(declare-fun newBucket!224 () List!52028)

(declare-fun removePairForKey!1266 (List!52028 K!13258) List!52028)

(assert (=> b!4656644 (= res!1958125 (= (removePairForKey!1266 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4656645 () Bool)

(declare-fun res!1958127 () Bool)

(declare-fun e!2905453 () Bool)

(assert (=> b!4656645 (=> (not res!1958127) (not e!2905453))))

(assert (=> b!4656645 (= res!1958127 (allKeysSameHash!1497 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4656646 () Bool)

(declare-fun res!1958120 () Bool)

(assert (=> b!4656646 (=> (not res!1958120) (not e!2905447))))

(declare-fun noDuplicateKeys!1643 (List!52028) Bool)

(assert (=> b!4656646 (= res!1958120 (noDuplicateKeys!1643 newBucket!224))))

(declare-fun b!4656647 () Bool)

(declare-fun e!2905448 () Bool)

(declare-fun tp!1343345 () Bool)

(assert (=> b!4656647 (= e!2905448 (and tp_is_empty!29865 tp_is_empty!29867 tp!1343345))))

(declare-fun res!1958122 () Bool)

(assert (=> start!468678 (=> (not res!1958122) (not e!2905447))))

(assert (=> start!468678 (= res!1958122 (noDuplicateKeys!1643 oldBucket!40))))

(assert (=> start!468678 e!2905447))

(assert (=> start!468678 true))

(assert (=> start!468678 e!2905448))

(assert (=> start!468678 tp_is_empty!29865))

(assert (=> start!468678 e!2905452))

(declare-fun b!4656648 () Bool)

(declare-fun e!2905449 () Bool)

(assert (=> b!4656648 (= e!2905453 (not e!2905449))))

(declare-fun res!1958126 () Bool)

(assert (=> b!4656648 (=> res!1958126 e!2905449)))

(assert (=> b!4656648 (= res!1958126 (or (and (is-Cons!51904 oldBucket!40) (= (_1!29803 (h!58050 oldBucket!40)) key!4968)) (not (is-Cons!51904 oldBucket!40)) (= (_1!29803 (h!58050 oldBucket!40)) key!4968)))))

(declare-fun e!2905451 () Bool)

(assert (=> b!4656648 e!2905451))

(declare-fun res!1958123 () Bool)

(assert (=> b!4656648 (=> (not res!1958123) (not e!2905451))))

(declare-fun lt!1819228 () ListMap!4555)

(declare-fun addToMapMapFromBucket!1100 (List!52028 ListMap!4555) ListMap!4555)

(assert (=> b!4656648 (= res!1958123 (= lt!1819225 (addToMapMapFromBucket!1100 oldBucket!40 lt!1819228)))))

(assert (=> b!4656648 (= lt!1819228 (extractMap!1699 Nil!51905))))

(assert (=> b!4656648 true))

(declare-fun b!4656649 () Bool)

(assert (=> b!4656649 (= e!2905451 (= lt!1819228 (ListMap!4556 Nil!51904)))))

(declare-fun b!4656650 () Bool)

(assert (=> b!4656650 (= e!2905449 true)))

(declare-fun lt!1819230 () List!52028)

(declare-datatypes ((Option!11823 0))(
  ( (None!11822) (Some!11822 (v!46096 tuple2!53018)) )
))
(declare-fun isDefined!9088 (Option!11823) Bool)

(declare-fun getPair!371 (List!52028 K!13258) Option!11823)

(assert (=> b!4656650 (isDefined!9088 (getPair!371 lt!1819230 key!4968))))

(declare-datatypes ((Unit!118746 0))(
  ( (Unit!118747) )
))
(declare-fun lt!1819224 () Unit!118746)

(declare-fun lt!1819234 () tuple2!53020)

(declare-fun lambda!199477 () Int)

(declare-fun forallContained!3229 (List!52029 Int tuple2!53020) Unit!118746)

(assert (=> b!4656650 (= lt!1819224 (forallContained!3229 lt!1819232 lambda!199477 lt!1819234))))

(declare-fun contains!15045 (List!52029 tuple2!53020) Bool)

(assert (=> b!4656650 (contains!15045 lt!1819232 lt!1819234)))

(declare-fun lt!1819227 () (_ BitVec 64))

(assert (=> b!4656650 (= lt!1819234 (tuple2!53021 lt!1819227 lt!1819230))))

(declare-datatypes ((ListLongMap!3769 0))(
  ( (ListLongMap!3770 (toList!5216 List!52029)) )
))
(declare-fun lt!1819226 () ListLongMap!3769)

(declare-fun lt!1819233 () Unit!118746)

(declare-fun lemmaGetValueImpliesTupleContained!176 (ListLongMap!3769 (_ BitVec 64) List!52028) Unit!118746)

(assert (=> b!4656650 (= lt!1819233 (lemmaGetValueImpliesTupleContained!176 lt!1819226 lt!1819227 lt!1819230))))

(declare-fun apply!12246 (ListLongMap!3769 (_ BitVec 64)) List!52028)

(assert (=> b!4656650 (= lt!1819230 (apply!12246 lt!1819226 lt!1819227))))

(declare-fun contains!15046 (ListLongMap!3769 (_ BitVec 64)) Bool)

(assert (=> b!4656650 (contains!15046 lt!1819226 lt!1819227)))

(declare-fun lt!1819231 () Unit!118746)

(declare-fun lemmaInGenMapThenLongMapContainsHash!577 (ListLongMap!3769 K!13258 Hashable!6040) Unit!118746)

(assert (=> b!4656650 (= lt!1819231 (lemmaInGenMapThenLongMapContainsHash!577 lt!1819226 key!4968 hashF!1389))))

(declare-fun lt!1819229 () Unit!118746)

(declare-fun lemmaInGenMapThenGetPairDefined!167 (ListLongMap!3769 K!13258 Hashable!6040) Unit!118746)

(assert (=> b!4656650 (= lt!1819229 (lemmaInGenMapThenGetPairDefined!167 lt!1819226 key!4968 hashF!1389))))

(assert (=> b!4656650 (= lt!1819226 (ListLongMap!3770 lt!1819232))))

(declare-fun b!4656651 () Bool)

(assert (=> b!4656651 (= e!2905450 e!2905453)))

(declare-fun res!1958119 () Bool)

(assert (=> b!4656651 (=> (not res!1958119) (not e!2905453))))

(assert (=> b!4656651 (= res!1958119 (= lt!1819227 hash!414))))

(declare-fun hash!3782 (Hashable!6040 K!13258) (_ BitVec 64))

(assert (=> b!4656651 (= lt!1819227 (hash!3782 hashF!1389 key!4968))))

(assert (= (and start!468678 res!1958122) b!4656646))

(assert (= (and b!4656646 res!1958120) b!4656644))

(assert (= (and b!4656644 res!1958125) b!4656641))

(assert (= (and b!4656641 res!1958124) b!4656643))

(assert (= (and b!4656643 res!1958121) b!4656651))

(assert (= (and b!4656651 res!1958119) b!4656645))

(assert (= (and b!4656645 res!1958127) b!4656648))

(assert (= (and b!4656648 res!1958123) b!4656649))

(assert (= (and b!4656648 (not res!1958126)) b!4656650))

(assert (= (and start!468678 (is-Cons!51904 oldBucket!40)) b!4656647))

(assert (= (and start!468678 (is-Cons!51904 newBucket!224)) b!4656642))

(declare-fun m!5537077 () Bool)

(assert (=> b!4656643 m!5537077))

(declare-fun m!5537079 () Bool)

(assert (=> b!4656643 m!5537079))

(declare-fun m!5537081 () Bool)

(assert (=> b!4656644 m!5537081))

(declare-fun m!5537083 () Bool)

(assert (=> b!4656641 m!5537083))

(declare-fun m!5537085 () Bool)

(assert (=> start!468678 m!5537085))

(declare-fun m!5537087 () Bool)

(assert (=> b!4656648 m!5537087))

(declare-fun m!5537089 () Bool)

(assert (=> b!4656648 m!5537089))

(declare-fun m!5537091 () Bool)

(assert (=> b!4656645 m!5537091))

(declare-fun m!5537093 () Bool)

(assert (=> b!4656650 m!5537093))

(declare-fun m!5537095 () Bool)

(assert (=> b!4656650 m!5537095))

(declare-fun m!5537097 () Bool)

(assert (=> b!4656650 m!5537097))

(declare-fun m!5537099 () Bool)

(assert (=> b!4656650 m!5537099))

(declare-fun m!5537101 () Bool)

(assert (=> b!4656650 m!5537101))

(declare-fun m!5537103 () Bool)

(assert (=> b!4656650 m!5537103))

(declare-fun m!5537105 () Bool)

(assert (=> b!4656650 m!5537105))

(declare-fun m!5537107 () Bool)

(assert (=> b!4656650 m!5537107))

(assert (=> b!4656650 m!5537107))

(declare-fun m!5537109 () Bool)

(assert (=> b!4656650 m!5537109))

(declare-fun m!5537111 () Bool)

(assert (=> b!4656646 m!5537111))

(declare-fun m!5537113 () Bool)

(assert (=> b!4656651 m!5537113))

(push 1)

(assert (not b!4656648))

(assert (not b!4656643))

(assert (not b!4656650))

(assert (not b!4656651))

(assert tp_is_empty!29865)

(assert (not start!468678))

(assert tp_is_empty!29867)

(assert (not b!4656641))

(assert (not b!4656645))

(assert (not b!4656647))

(assert (not b!4656644))

(assert (not b!4656642))

(assert (not b!4656646))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

