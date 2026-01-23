; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!493324 () Bool)

(assert start!493324)

(declare-fun res!2036558 () Bool)

(declare-fun e!2991832 () Bool)

(assert (=> start!493324 (=> (not res!2036558) (not e!2991832))))

(declare-datatypes ((K!15777 0))(
  ( (K!15778 (val!20927 Int)) )
))
(declare-datatypes ((V!16023 0))(
  ( (V!16024 (val!20928 Int)) )
))
(declare-datatypes ((tuple2!56828 0))(
  ( (tuple2!56829 (_1!31708 K!15777) (_2!31708 V!16023)) )
))
(declare-datatypes ((List!54325 0))(
  ( (Nil!54201) (Cons!54201 (h!60625 tuple2!56828) (t!361775 List!54325)) )
))
(declare-datatypes ((tuple2!56830 0))(
  ( (tuple2!56831 (_1!31709 (_ BitVec 64)) (_2!31709 List!54325)) )
))
(declare-datatypes ((List!54326 0))(
  ( (Nil!54202) (Cons!54202 (h!60626 tuple2!56830) (t!361776 List!54326)) )
))
(declare-datatypes ((ListLongMap!5331 0))(
  ( (ListLongMap!5332 (toList!6909 List!54326)) )
))
(declare-fun lm!2473 () ListLongMap!5331)

(declare-fun lambda!230414 () Int)

(declare-fun forall!12240 (List!54326 Int) Bool)

(assert (=> start!493324 (= res!2036558 (forall!12240 (toList!6909 lm!2473) lambda!230414))))

(assert (=> start!493324 e!2991832))

(declare-fun e!2991833 () Bool)

(declare-fun inv!69804 (ListLongMap!5331) Bool)

(assert (=> start!493324 (and (inv!69804 lm!2473) e!2991833)))

(assert (=> start!493324 true))

(declare-fun tp_is_empty!33533 () Bool)

(assert (=> start!493324 tp_is_empty!33533))

(declare-fun b!4791729 () Bool)

(declare-fun res!2036560 () Bool)

(assert (=> b!4791729 (=> (not res!2036560) (not e!2991832))))

(declare-fun key!5896 () K!15777)

(declare-datatypes ((ListMap!6381 0))(
  ( (ListMap!6382 (toList!6910 List!54325)) )
))
(declare-fun contains!17808 (ListMap!6381 K!15777) Bool)

(declare-fun extractMap!2442 (List!54326) ListMap!6381)

(assert (=> b!4791729 (= res!2036560 (contains!17808 (extractMap!2442 (toList!6909 lm!2473)) key!5896))))

(declare-fun lt!1950828 () (_ BitVec 64))

(declare-fun e!2991831 () Bool)

(declare-fun b!4791730 () Bool)

(declare-datatypes ((Option!13082 0))(
  ( (None!13081) (Some!13081 (v!48360 tuple2!56828)) )
))
(declare-fun isDefined!10224 (Option!13082) Bool)

(declare-fun getPair!887 (List!54325 K!15777) Option!13082)

(declare-fun apply!12984 (ListLongMap!5331 (_ BitVec 64)) List!54325)

(assert (=> b!4791730 (= e!2991831 (isDefined!10224 (getPair!887 (apply!12984 lm!2473 lt!1950828) key!5896)))))

(declare-fun b!4791731 () Bool)

(declare-fun tp!1357975 () Bool)

(assert (=> b!4791731 (= e!2991833 tp!1357975)))

(declare-fun b!4791732 () Bool)

(assert (=> b!4791732 (= e!2991832 (not true))))

(assert (=> b!4791732 e!2991831))

(declare-fun res!2036557 () Bool)

(assert (=> b!4791732 (=> (not res!2036557) (not e!2991831))))

(declare-fun contains!17809 (ListLongMap!5331 (_ BitVec 64)) Bool)

(assert (=> b!4791732 (= res!2036557 (contains!17809 lm!2473 lt!1950828))))

(declare-datatypes ((Hashable!6915 0))(
  ( (HashableExt!6914 (__x!32938 Int)) )
))
(declare-fun hashF!1559 () Hashable!6915)

(declare-fun hash!4947 (Hashable!6915 K!15777) (_ BitVec 64))

(assert (=> b!4791732 (= lt!1950828 (hash!4947 hashF!1559 key!5896))))

(declare-datatypes ((Unit!139908 0))(
  ( (Unit!139909) )
))
(declare-fun lt!1950829 () Unit!139908)

(declare-fun lemmaInGenericMapThenInLongMap!319 (ListLongMap!5331 K!15777 Hashable!6915) Unit!139908)

(assert (=> b!4791732 (= lt!1950829 (lemmaInGenericMapThenInLongMap!319 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4791733 () Bool)

(declare-fun res!2036559 () Bool)

(assert (=> b!4791733 (=> (not res!2036559) (not e!2991832))))

(declare-fun allKeysSameHashInMap!2320 (ListLongMap!5331 Hashable!6915) Bool)

(assert (=> b!4791733 (= res!2036559 (allKeysSameHashInMap!2320 lm!2473 hashF!1559))))

(assert (= (and start!493324 res!2036558) b!4791733))

(assert (= (and b!4791733 res!2036559) b!4791729))

(assert (= (and b!4791729 res!2036560) b!4791732))

(assert (= (and b!4791732 res!2036557) b!4791730))

(assert (= start!493324 b!4791731))

(declare-fun m!5772362 () Bool)

(assert (=> b!4791732 m!5772362))

(declare-fun m!5772364 () Bool)

(assert (=> b!4791732 m!5772364))

(declare-fun m!5772366 () Bool)

(assert (=> b!4791732 m!5772366))

(declare-fun m!5772368 () Bool)

(assert (=> b!4791733 m!5772368))

(declare-fun m!5772370 () Bool)

(assert (=> b!4791729 m!5772370))

(assert (=> b!4791729 m!5772370))

(declare-fun m!5772372 () Bool)

(assert (=> b!4791729 m!5772372))

(declare-fun m!5772374 () Bool)

(assert (=> start!493324 m!5772374))

(declare-fun m!5772376 () Bool)

(assert (=> start!493324 m!5772376))

(declare-fun m!5772378 () Bool)

(assert (=> b!4791730 m!5772378))

(assert (=> b!4791730 m!5772378))

(declare-fun m!5772380 () Bool)

(assert (=> b!4791730 m!5772380))

(assert (=> b!4791730 m!5772380))

(declare-fun m!5772382 () Bool)

(assert (=> b!4791730 m!5772382))

(push 1)

(assert (not b!4791731))

(assert tp_is_empty!33533)

(assert (not b!4791733))

(assert (not b!4791732))

(assert (not b!4791730))

(assert (not start!493324))

(assert (not b!4791729))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

