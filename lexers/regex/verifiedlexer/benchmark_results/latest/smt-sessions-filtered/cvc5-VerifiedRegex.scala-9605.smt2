; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!504918 () Bool)

(assert start!504918)

(declare-fun b!4846835 () Bool)

(declare-fun e!3029423 () Bool)

(declare-fun e!3029426 () Bool)

(assert (=> b!4846835 (= e!3029423 e!3029426)))

(declare-fun res!2067811 () Bool)

(assert (=> b!4846835 (=> (not res!2067811) (not e!3029426))))

(declare-datatypes ((K!17312 0))(
  ( (K!17313 (val!22155 Int)) )
))
(declare-datatypes ((V!17558 0))(
  ( (V!17559 (val!22156 Int)) )
))
(declare-datatypes ((tuple2!59182 0))(
  ( (tuple2!59183 (_1!32885 K!17312) (_2!32885 V!17558)) )
))
(declare-datatypes ((List!55648 0))(
  ( (Nil!55524) (Cons!55524 (h!61961 tuple2!59182) (t!363144 List!55648)) )
))
(declare-datatypes ((tuple2!59184 0))(
  ( (tuple2!59185 (_1!32886 (_ BitVec 64)) (_2!32886 List!55648)) )
))
(declare-datatypes ((List!55649 0))(
  ( (Nil!55525) (Cons!55525 (h!61962 tuple2!59184) (t!363145 List!55649)) )
))
(declare-datatypes ((ListLongMap!6429 0))(
  ( (ListLongMap!6430 (toList!7843 List!55649)) )
))
(declare-fun lm!2646 () ListLongMap!6429)

(declare-fun lt!1988355 () (_ BitVec 64))

(declare-fun contains!19170 (ListLongMap!6429 (_ BitVec 64)) Bool)

(assert (=> b!4846835 (= res!2067811 (contains!19170 lm!2646 lt!1988355))))

(declare-datatypes ((Hashable!7483 0))(
  ( (HashableExt!7482 (__x!33758 Int)) )
))
(declare-fun hashF!1641 () Hashable!7483)

(declare-fun key!6445 () K!17312)

(declare-fun hash!5558 (Hashable!7483 K!17312) (_ BitVec 64))

(assert (=> b!4846835 (= lt!1988355 (hash!5558 hashF!1641 key!6445))))

(declare-fun b!4846836 () Bool)

(declare-fun res!2067810 () Bool)

(assert (=> b!4846836 (=> (not res!2067810) (not e!3029423))))

(declare-fun allKeysSameHashInMap!2799 (ListLongMap!6429 Hashable!7483) Bool)

(assert (=> b!4846836 (= res!2067810 (allKeysSameHashInMap!2799 lm!2646 hashF!1641))))

(declare-fun b!4846837 () Bool)

(declare-fun e!3029424 () Bool)

(assert (=> b!4846837 (= e!3029424 (or (and (is-Cons!55525 (toList!7843 lm!2646)) (= (_1!32886 (h!61962 (toList!7843 lm!2646))) lt!1988355)) (not (is-Cons!55525 (toList!7843 lm!2646))) (not (= lt!1988355 (_1!32886 (h!61962 (toList!7843 lm!2646)))))))))

(declare-fun res!2067812 () Bool)

(assert (=> start!504918 (=> (not res!2067812) (not e!3029423))))

(declare-fun lambda!242423 () Int)

(declare-fun forall!12936 (List!55649 Int) Bool)

(assert (=> start!504918 (= res!2067812 (forall!12936 (toList!7843 lm!2646) lambda!242423))))

(assert (=> start!504918 e!3029423))

(declare-fun e!3029425 () Bool)

(declare-fun inv!71199 (ListLongMap!6429) Bool)

(assert (=> start!504918 (and (inv!71199 lm!2646) e!3029425)))

(assert (=> start!504918 true))

(declare-fun tp_is_empty!35145 () Bool)

(assert (=> start!504918 tp_is_empty!35145))

(declare-fun b!4846838 () Bool)

(declare-fun tp!1364515 () Bool)

(assert (=> b!4846838 (= e!3029425 tp!1364515)))

(declare-fun b!4846839 () Bool)

(assert (=> b!4846839 (= e!3029426 (not e!3029424))))

(declare-fun res!2067809 () Bool)

(assert (=> b!4846839 (=> res!2067809 e!3029424)))

(declare-fun lt!1988354 () List!55648)

(declare-datatypes ((Option!13645 0))(
  ( (None!13644) (Some!13644 (v!49394 tuple2!59182)) )
))
(declare-fun isDefined!10737 (Option!13645) Bool)

(declare-fun getPair!1073 (List!55648 K!17312) Option!13645)

(assert (=> b!4846839 (= res!2067809 (not (isDefined!10737 (getPair!1073 lt!1988354 key!6445))))))

(declare-fun lt!1988351 () tuple2!59184)

(declare-datatypes ((Unit!145649 0))(
  ( (Unit!145650) )
))
(declare-fun lt!1988352 () Unit!145649)

(declare-fun forallContained!4524 (List!55649 Int tuple2!59184) Unit!145649)

(assert (=> b!4846839 (= lt!1988352 (forallContained!4524 (toList!7843 lm!2646) lambda!242423 lt!1988351))))

(declare-fun contains!19171 (List!55649 tuple2!59184) Bool)

(assert (=> b!4846839 (contains!19171 (toList!7843 lm!2646) lt!1988351)))

(assert (=> b!4846839 (= lt!1988351 (tuple2!59185 lt!1988355 lt!1988354))))

(declare-fun lt!1988353 () Unit!145649)

(declare-fun lemmaGetValueImpliesTupleContained!750 (ListLongMap!6429 (_ BitVec 64) List!55648) Unit!145649)

(assert (=> b!4846839 (= lt!1988353 (lemmaGetValueImpliesTupleContained!750 lm!2646 lt!1988355 lt!1988354))))

(declare-fun apply!13426 (ListLongMap!6429 (_ BitVec 64)) List!55648)

(assert (=> b!4846839 (= lt!1988354 (apply!13426 lm!2646 lt!1988355))))

(assert (= (and start!504918 res!2067812) b!4846836))

(assert (= (and b!4846836 res!2067810) b!4846835))

(assert (= (and b!4846835 res!2067811) b!4846839))

(assert (= (and b!4846839 (not res!2067809)) b!4846837))

(assert (= start!504918 b!4846838))

(declare-fun m!5844858 () Bool)

(assert (=> b!4846835 m!5844858))

(declare-fun m!5844860 () Bool)

(assert (=> b!4846835 m!5844860))

(declare-fun m!5844862 () Bool)

(assert (=> b!4846836 m!5844862))

(declare-fun m!5844864 () Bool)

(assert (=> start!504918 m!5844864))

(declare-fun m!5844866 () Bool)

(assert (=> start!504918 m!5844866))

(declare-fun m!5844868 () Bool)

(assert (=> b!4846839 m!5844868))

(declare-fun m!5844870 () Bool)

(assert (=> b!4846839 m!5844870))

(declare-fun m!5844872 () Bool)

(assert (=> b!4846839 m!5844872))

(declare-fun m!5844874 () Bool)

(assert (=> b!4846839 m!5844874))

(declare-fun m!5844876 () Bool)

(assert (=> b!4846839 m!5844876))

(assert (=> b!4846839 m!5844868))

(declare-fun m!5844878 () Bool)

(assert (=> b!4846839 m!5844878))

(push 1)

(assert (not b!4846835))

(assert (not start!504918))

(assert (not b!4846839))

(assert tp_is_empty!35145)

(assert (not b!4846836))

(assert (not b!4846838))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

