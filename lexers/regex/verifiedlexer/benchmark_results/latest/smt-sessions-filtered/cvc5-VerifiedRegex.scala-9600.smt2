; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!504794 () Bool)

(assert start!504794)

(declare-fun b!4846284 () Bool)

(declare-fun res!2067399 () Bool)

(declare-fun e!3029046 () Bool)

(assert (=> b!4846284 (=> res!2067399 e!3029046)))

(declare-datatypes ((K!17287 0))(
  ( (K!17288 (val!22135 Int)) )
))
(declare-datatypes ((V!17533 0))(
  ( (V!17534 (val!22136 Int)) )
))
(declare-datatypes ((tuple2!59142 0))(
  ( (tuple2!59143 (_1!32865 K!17287) (_2!32865 V!17533)) )
))
(declare-datatypes ((List!55628 0))(
  ( (Nil!55504) (Cons!55504 (h!61941 tuple2!59142) (t!363124 List!55628)) )
))
(declare-datatypes ((tuple2!59144 0))(
  ( (tuple2!59145 (_1!32866 (_ BitVec 64)) (_2!32866 List!55628)) )
))
(declare-datatypes ((List!55629 0))(
  ( (Nil!55505) (Cons!55505 (h!61942 tuple2!59144) (t!363125 List!55629)) )
))
(declare-datatypes ((ListLongMap!6409 0))(
  ( (ListLongMap!6410 (toList!7833 List!55629)) )
))
(declare-fun lm!2646 () ListLongMap!6409)

(declare-fun lt!1988014 () (_ BitVec 64))

(assert (=> b!4846284 (= res!2067399 (or (and (is-Cons!55505 (toList!7833 lm!2646)) (= (_1!32866 (h!61942 (toList!7833 lm!2646))) lt!1988014)) (not (is-Cons!55505 (toList!7833 lm!2646))) (= lt!1988014 (_1!32866 (h!61942 (toList!7833 lm!2646))))))))

(declare-fun res!2067400 () Bool)

(declare-fun e!3029045 () Bool)

(assert (=> start!504794 (=> (not res!2067400) (not e!3029045))))

(declare-fun lambda!242323 () Int)

(declare-fun forall!12926 (List!55629 Int) Bool)

(assert (=> start!504794 (= res!2067400 (forall!12926 (toList!7833 lm!2646) lambda!242323))))

(assert (=> start!504794 e!3029045))

(declare-fun e!3029044 () Bool)

(declare-fun inv!71174 (ListLongMap!6409) Bool)

(assert (=> start!504794 (and (inv!71174 lm!2646) e!3029044)))

(assert (=> start!504794 true))

(declare-fun tp_is_empty!35121 () Bool)

(assert (=> start!504794 tp_is_empty!35121))

(declare-fun b!4846285 () Bool)

(declare-fun tp!1364463 () Bool)

(assert (=> b!4846285 (= e!3029044 tp!1364463)))

(declare-fun b!4846286 () Bool)

(assert (=> b!4846286 (= e!3029046 true)))

(declare-fun b!4846287 () Bool)

(declare-fun e!3029043 () Bool)

(assert (=> b!4846287 (= e!3029043 (not e!3029046))))

(declare-fun res!2067402 () Bool)

(assert (=> b!4846287 (=> res!2067402 e!3029046)))

(declare-fun lt!1988015 () List!55628)

(declare-fun key!6445 () K!17287)

(declare-datatypes ((Option!13633 0))(
  ( (None!13632) (Some!13632 (v!49378 tuple2!59142)) )
))
(declare-fun isDefined!10725 (Option!13633) Bool)

(declare-fun getPair!1063 (List!55628 K!17287) Option!13633)

(assert (=> b!4846287 (= res!2067402 (not (isDefined!10725 (getPair!1063 lt!1988015 key!6445))))))

(declare-fun lt!1988012 () tuple2!59144)

(declare-datatypes ((Unit!145627 0))(
  ( (Unit!145628) )
))
(declare-fun lt!1988016 () Unit!145627)

(declare-fun forallContained!4514 (List!55629 Int tuple2!59144) Unit!145627)

(assert (=> b!4846287 (= lt!1988016 (forallContained!4514 (toList!7833 lm!2646) lambda!242323 lt!1988012))))

(declare-fun contains!19148 (List!55629 tuple2!59144) Bool)

(assert (=> b!4846287 (contains!19148 (toList!7833 lm!2646) lt!1988012)))

(assert (=> b!4846287 (= lt!1988012 (tuple2!59145 lt!1988014 lt!1988015))))

(declare-fun lt!1988013 () Unit!145627)

(declare-fun lemmaGetValueImpliesTupleContained!740 (ListLongMap!6409 (_ BitVec 64) List!55628) Unit!145627)

(assert (=> b!4846287 (= lt!1988013 (lemmaGetValueImpliesTupleContained!740 lm!2646 lt!1988014 lt!1988015))))

(declare-fun apply!13416 (ListLongMap!6409 (_ BitVec 64)) List!55628)

(assert (=> b!4846287 (= lt!1988015 (apply!13416 lm!2646 lt!1988014))))

(declare-fun b!4846288 () Bool)

(declare-fun res!2067397 () Bool)

(assert (=> b!4846288 (=> res!2067397 e!3029046)))

(assert (=> b!4846288 (= res!2067397 (not (forall!12926 (toList!7833 lm!2646) lambda!242323)))))

(declare-fun b!4846289 () Bool)

(declare-fun res!2067401 () Bool)

(assert (=> b!4846289 (=> (not res!2067401) (not e!3029045))))

(declare-datatypes ((Hashable!7473 0))(
  ( (HashableExt!7472 (__x!33748 Int)) )
))
(declare-fun hashF!1641 () Hashable!7473)

(declare-fun allKeysSameHashInMap!2789 (ListLongMap!6409 Hashable!7473) Bool)

(assert (=> b!4846289 (= res!2067401 (allKeysSameHashInMap!2789 lm!2646 hashF!1641))))

(declare-fun b!4846290 () Bool)

(assert (=> b!4846290 (= e!3029045 e!3029043)))

(declare-fun res!2067398 () Bool)

(assert (=> b!4846290 (=> (not res!2067398) (not e!3029043))))

(declare-fun contains!19149 (ListLongMap!6409 (_ BitVec 64)) Bool)

(assert (=> b!4846290 (= res!2067398 (contains!19149 lm!2646 lt!1988014))))

(declare-fun hash!5543 (Hashable!7473 K!17287) (_ BitVec 64))

(assert (=> b!4846290 (= lt!1988014 (hash!5543 hashF!1641 key!6445))))

(declare-fun b!4846291 () Bool)

(declare-fun res!2067396 () Bool)

(assert (=> b!4846291 (=> res!2067396 e!3029046)))

(assert (=> b!4846291 (= res!2067396 (not (contains!19149 lm!2646 (_1!32866 (h!61942 (toList!7833 lm!2646))))))))

(assert (= (and start!504794 res!2067400) b!4846289))

(assert (= (and b!4846289 res!2067401) b!4846290))

(assert (= (and b!4846290 res!2067398) b!4846287))

(assert (= (and b!4846287 (not res!2067402)) b!4846284))

(assert (= (and b!4846284 (not res!2067399)) b!4846288))

(assert (= (and b!4846288 (not res!2067397)) b!4846291))

(assert (= (and b!4846291 (not res!2067396)) b!4846286))

(assert (= start!504794 b!4846285))

(declare-fun m!5844192 () Bool)

(assert (=> b!4846291 m!5844192))

(declare-fun m!5844194 () Bool)

(assert (=> b!4846288 m!5844194))

(declare-fun m!5844196 () Bool)

(assert (=> b!4846287 m!5844196))

(declare-fun m!5844198 () Bool)

(assert (=> b!4846287 m!5844198))

(declare-fun m!5844200 () Bool)

(assert (=> b!4846287 m!5844200))

(declare-fun m!5844202 () Bool)

(assert (=> b!4846287 m!5844202))

(assert (=> b!4846287 m!5844202))

(declare-fun m!5844204 () Bool)

(assert (=> b!4846287 m!5844204))

(declare-fun m!5844206 () Bool)

(assert (=> b!4846287 m!5844206))

(assert (=> start!504794 m!5844194))

(declare-fun m!5844208 () Bool)

(assert (=> start!504794 m!5844208))

(declare-fun m!5844210 () Bool)

(assert (=> b!4846289 m!5844210))

(declare-fun m!5844212 () Bool)

(assert (=> b!4846290 m!5844212))

(declare-fun m!5844214 () Bool)

(assert (=> b!4846290 m!5844214))

(push 1)

(assert (not b!4846291))

(assert (not b!4846285))

(assert (not start!504794))

(assert (not b!4846288))

(assert (not b!4846287))

(assert tp_is_empty!35121)

(assert (not b!4846290))

(assert (not b!4846289))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

