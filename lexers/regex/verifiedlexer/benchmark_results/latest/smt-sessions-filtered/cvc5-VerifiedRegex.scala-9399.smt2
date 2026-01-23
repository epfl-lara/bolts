; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!497774 () Bool)

(assert start!497774)

(declare-fun b!4813729 () Bool)

(declare-fun e!3007492 () Bool)

(assert (=> b!4813729 (= e!3007492 (not true))))

(declare-datatypes ((K!16282 0))(
  ( (K!16283 (val!21331 Int)) )
))
(declare-datatypes ((V!16528 0))(
  ( (V!16529 (val!21332 Int)) )
))
(declare-datatypes ((tuple2!57598 0))(
  ( (tuple2!57599 (_1!32093 K!16282) (_2!32093 V!16528)) )
))
(declare-datatypes ((List!54766 0))(
  ( (Nil!54642) (Cons!54642 (h!61074 tuple2!57598) (t!362262 List!54766)) )
))
(declare-datatypes ((tuple2!57600 0))(
  ( (tuple2!57601 (_1!32094 (_ BitVec 64)) (_2!32094 List!54766)) )
))
(declare-datatypes ((List!54767 0))(
  ( (Nil!54643) (Cons!54643 (h!61075 tuple2!57600) (t!362263 List!54767)) )
))
(declare-datatypes ((ListLongMap!5697 0))(
  ( (ListLongMap!5698 (toList!7217 List!54767)) )
))
(declare-fun lm!1254 () ListLongMap!5697)

(declare-fun lambda!233986 () Int)

(declare-datatypes ((Unit!141749 0))(
  ( (Unit!141750) )
))
(declare-fun lt!1964671 () Unit!141749)

(declare-fun lt!1964673 () tuple2!57600)

(declare-fun forallContained!4291 (List!54767 Int tuple2!57600) Unit!141749)

(assert (=> b!4813729 (= lt!1964671 (forallContained!4291 (toList!7217 lm!1254) lambda!233986 lt!1964673))))

(declare-fun lt!1964668 () Unit!141749)

(declare-fun e!3007493 () Unit!141749)

(assert (=> b!4813729 (= lt!1964668 e!3007493)))

(declare-fun c!820421 () Bool)

(declare-fun contains!18405 (List!54767 tuple2!57600) Bool)

(assert (=> b!4813729 (= c!820421 (not (contains!18405 (toList!7217 lm!1254) lt!1964673)))))

(declare-fun lt!1964676 () (_ BitVec 64))

(declare-fun lt!1964669 () List!54766)

(assert (=> b!4813729 (= lt!1964673 (tuple2!57601 lt!1964676 lt!1964669))))

(declare-fun apply!13222 (ListLongMap!5697 (_ BitVec 64)) List!54766)

(assert (=> b!4813729 (= lt!1964669 (apply!13222 lm!1254 lt!1964676))))

(declare-fun contains!18406 (ListLongMap!5697 (_ BitVec 64)) Bool)

(assert (=> b!4813729 (contains!18406 lm!1254 lt!1964676)))

(declare-datatypes ((Hashable!7117 0))(
  ( (HashableExt!7116 (__x!33392 Int)) )
))
(declare-fun hashF!938 () Hashable!7117)

(declare-fun key!2670 () K!16282)

(declare-fun hash!5180 (Hashable!7117 K!16282) (_ BitVec 64))

(assert (=> b!4813729 (= lt!1964676 (hash!5180 hashF!938 key!2670))))

(declare-fun lt!1964675 () Unit!141749)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1055 (ListLongMap!5697 K!16282 Hashable!7117) Unit!141749)

(assert (=> b!4813729 (= lt!1964675 (lemmaInGenMapThenLongMapContainsHash!1055 lm!1254 key!2670 hashF!938))))

(declare-fun res!2047459 () Bool)

(assert (=> start!497774 (=> (not res!2047459) (not e!3007492))))

(declare-fun forall!12421 (List!54767 Int) Bool)

(assert (=> start!497774 (= res!2047459 (forall!12421 (toList!7217 lm!1254) lambda!233986))))

(assert (=> start!497774 e!3007492))

(declare-fun e!3007491 () Bool)

(declare-fun inv!70183 (ListLongMap!5697) Bool)

(assert (=> start!497774 (and (inv!70183 lm!1254) e!3007491)))

(assert (=> start!497774 true))

(declare-fun tp_is_empty!34103 () Bool)

(assert (=> start!497774 tp_is_empty!34103))

(declare-fun b!4813730 () Bool)

(declare-fun res!2047458 () Bool)

(assert (=> b!4813730 (=> (not res!2047458) (not e!3007492))))

(declare-datatypes ((ListMap!6631 0))(
  ( (ListMap!6632 (toList!7218 List!54766)) )
))
(declare-fun contains!18407 (ListMap!6631 K!16282) Bool)

(declare-fun extractMap!2567 (List!54767) ListMap!6631)

(assert (=> b!4813730 (= res!2047458 (contains!18407 (extractMap!2567 (toList!7217 lm!1254)) key!2670))))

(declare-fun b!4813731 () Bool)

(declare-fun res!2047457 () Bool)

(assert (=> b!4813731 (=> (not res!2047457) (not e!3007492))))

(declare-fun allKeysSameHashInMap!2433 (ListLongMap!5697 Hashable!7117) Bool)

(assert (=> b!4813731 (= res!2047457 (allKeysSameHashInMap!2433 lm!1254 hashF!938))))

(declare-fun b!4813732 () Bool)

(declare-fun tp!1361650 () Bool)

(assert (=> b!4813732 (= e!3007491 tp!1361650)))

(declare-fun b!4813733 () Bool)

(declare-fun Unit!141751 () Unit!141749)

(assert (=> b!4813733 (= e!3007493 Unit!141751)))

(declare-fun lt!1964670 () Unit!141749)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!308 (List!54767 (_ BitVec 64)) Unit!141749)

(assert (=> b!4813733 (= lt!1964670 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!308 (toList!7217 lm!1254) lt!1964676))))

(declare-fun containsKey!4196 (List!54767 (_ BitVec 64)) Bool)

(assert (=> b!4813733 (containsKey!4196 (toList!7217 lm!1254) lt!1964676)))

(declare-fun lt!1964674 () Unit!141749)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2314 (List!54767 (_ BitVec 64)) Unit!141749)

(assert (=> b!4813733 (= lt!1964674 (lemmaContainsKeyImpliesGetValueByKeyDefined!2314 (toList!7217 lm!1254) lt!1964676))))

(declare-datatypes ((Option!13360 0))(
  ( (None!13359) (Some!13359 (v!48992 List!54766)) )
))
(declare-fun isDefined!10497 (Option!13360) Bool)

(declare-fun getValueByKey!2527 (List!54767 (_ BitVec 64)) Option!13360)

(assert (=> b!4813733 (isDefined!10497 (getValueByKey!2527 (toList!7217 lm!1254) lt!1964676))))

(declare-fun lt!1964672 () Unit!141749)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!1025 (List!54767 (_ BitVec 64) List!54766) Unit!141749)

(assert (=> b!4813733 (= lt!1964672 (lemmaGetValueByKeyImpliesContainsTuple!1025 (toList!7217 lm!1254) lt!1964676 lt!1964669))))

(assert (=> b!4813733 false))

(declare-fun b!4813734 () Bool)

(declare-fun Unit!141752 () Unit!141749)

(assert (=> b!4813734 (= e!3007493 Unit!141752)))

(assert (= (and start!497774 res!2047459) b!4813731))

(assert (= (and b!4813731 res!2047457) b!4813730))

(assert (= (and b!4813730 res!2047458) b!4813729))

(assert (= (and b!4813729 c!820421) b!4813733))

(assert (= (and b!4813729 (not c!820421)) b!4813734))

(assert (= start!497774 b!4813732))

(declare-fun m!5799442 () Bool)

(assert (=> b!4813731 m!5799442))

(declare-fun m!5799444 () Bool)

(assert (=> b!4813729 m!5799444))

(declare-fun m!5799446 () Bool)

(assert (=> b!4813729 m!5799446))

(declare-fun m!5799448 () Bool)

(assert (=> b!4813729 m!5799448))

(declare-fun m!5799450 () Bool)

(assert (=> b!4813729 m!5799450))

(declare-fun m!5799452 () Bool)

(assert (=> b!4813729 m!5799452))

(declare-fun m!5799454 () Bool)

(assert (=> b!4813729 m!5799454))

(declare-fun m!5799456 () Bool)

(assert (=> b!4813730 m!5799456))

(assert (=> b!4813730 m!5799456))

(declare-fun m!5799458 () Bool)

(assert (=> b!4813730 m!5799458))

(declare-fun m!5799460 () Bool)

(assert (=> start!497774 m!5799460))

(declare-fun m!5799462 () Bool)

(assert (=> start!497774 m!5799462))

(declare-fun m!5799464 () Bool)

(assert (=> b!4813733 m!5799464))

(declare-fun m!5799466 () Bool)

(assert (=> b!4813733 m!5799466))

(declare-fun m!5799468 () Bool)

(assert (=> b!4813733 m!5799468))

(declare-fun m!5799470 () Bool)

(assert (=> b!4813733 m!5799470))

(declare-fun m!5799472 () Bool)

(assert (=> b!4813733 m!5799472))

(assert (=> b!4813733 m!5799470))

(declare-fun m!5799474 () Bool)

(assert (=> b!4813733 m!5799474))

(push 1)

(assert (not b!4813730))

(assert (not b!4813729))

(assert (not b!4813732))

(assert (not b!4813731))

(assert (not b!4813733))

(assert tp_is_empty!34103)

(assert (not start!497774))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

