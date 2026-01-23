; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!504450 () Bool)

(assert start!504450)

(declare-fun b!4844677 () Bool)

(declare-fun e!3027922 () Bool)

(declare-fun tp!1364111 () Bool)

(assert (=> b!4844677 (= e!3027922 tp!1364111)))

(declare-fun res!2066254 () Bool)

(declare-fun e!3027921 () Bool)

(assert (=> start!504450 (=> (not res!2066254) (not e!3027921))))

(declare-datatypes ((K!17202 0))(
  ( (K!17203 (val!22067 Int)) )
))
(declare-datatypes ((V!17448 0))(
  ( (V!17449 (val!22068 Int)) )
))
(declare-datatypes ((tuple2!59006 0))(
  ( (tuple2!59007 (_1!32797 K!17202) (_2!32797 V!17448)) )
))
(declare-datatypes ((List!55560 0))(
  ( (Nil!55436) (Cons!55436 (h!61873 tuple2!59006) (t!363056 List!55560)) )
))
(declare-datatypes ((tuple2!59008 0))(
  ( (tuple2!59009 (_1!32798 (_ BitVec 64)) (_2!32798 List!55560)) )
))
(declare-datatypes ((List!55561 0))(
  ( (Nil!55437) (Cons!55437 (h!61874 tuple2!59008) (t!363057 List!55561)) )
))
(declare-datatypes ((ListLongMap!6369 0))(
  ( (ListLongMap!6370 (toList!7813 List!55561)) )
))
(declare-fun lm!2706 () ListLongMap!6369)

(declare-fun lambda!242157 () Int)

(declare-fun forall!12892 (List!55561 Int) Bool)

(assert (=> start!504450 (= res!2066254 (forall!12892 (toList!7813 lm!2706) lambda!242157))))

(assert (=> start!504450 e!3027921))

(declare-fun inv!71103 (ListLongMap!6369) Bool)

(assert (=> start!504450 (and (inv!71103 lm!2706) e!3027922)))

(assert (=> start!504450 true))

(declare-fun tp_is_empty!35017 () Bool)

(assert (=> start!504450 tp_is_empty!35017))

(declare-fun b!4844675 () Bool)

(declare-fun res!2066253 () Bool)

(assert (=> b!4844675 (=> (not res!2066253) (not e!3027921))))

(declare-fun key!6636 () K!17202)

(declare-fun containsKeyBiggerList!737 (List!55561 K!17202) Bool)

(assert (=> b!4844675 (= res!2066253 (containsKeyBiggerList!737 (toList!7813 lm!2706) key!6636))))

(declare-fun b!4844674 () Bool)

(declare-fun res!2066252 () Bool)

(assert (=> b!4844674 (=> (not res!2066252) (not e!3027921))))

(declare-datatypes ((Hashable!7453 0))(
  ( (HashableExt!7452 (__x!33728 Int)) )
))
(declare-fun hashF!1684 () Hashable!7453)

(declare-fun allKeysSameHashInMap!2769 (ListLongMap!6369 Hashable!7453) Bool)

(assert (=> b!4844674 (= res!2066252 (allKeysSameHashInMap!2769 lm!2706 hashF!1684))))

(declare-fun b!4844676 () Bool)

(assert (=> b!4844676 (= e!3027921 (= (toList!7813 lm!2706) Nil!55437))))

(assert (= (and start!504450 res!2066254) b!4844674))

(assert (= (and b!4844674 res!2066252) b!4844675))

(assert (= (and b!4844675 res!2066253) b!4844676))

(assert (= start!504450 b!4844677))

(declare-fun m!5843244 () Bool)

(assert (=> start!504450 m!5843244))

(declare-fun m!5843246 () Bool)

(assert (=> start!504450 m!5843246))

(declare-fun m!5843248 () Bool)

(assert (=> b!4844675 m!5843248))

(declare-fun m!5843250 () Bool)

(assert (=> b!4844674 m!5843250))

(push 1)

(assert (not b!4844677))

(assert (not start!504450))

(assert (not b!4844675))

(assert tp_is_empty!35017)

(assert (not b!4844674))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1554280 () Bool)

(declare-fun res!2066268 () Bool)

(declare-fun e!3027933 () Bool)

(assert (=> d!1554280 (=> res!2066268 e!3027933)))

(assert (=> d!1554280 (= res!2066268 (is-Nil!55437 (toList!7813 lm!2706)))))

(assert (=> d!1554280 (= (forall!12892 (toList!7813 lm!2706) lambda!242157) e!3027933)))

(declare-fun b!4844694 () Bool)

(declare-fun e!3027934 () Bool)

(assert (=> b!4844694 (= e!3027933 e!3027934)))

(declare-fun res!2066269 () Bool)

(assert (=> b!4844694 (=> (not res!2066269) (not e!3027934))))

(declare-fun dynLambda!22324 (Int tuple2!59008) Bool)

(assert (=> b!4844694 (= res!2066269 (dynLambda!22324 lambda!242157 (h!61874 (toList!7813 lm!2706))))))

(declare-fun b!4844695 () Bool)

(assert (=> b!4844695 (= e!3027934 (forall!12892 (t!363057 (toList!7813 lm!2706)) lambda!242157))))

(assert (= (and d!1554280 (not res!2066268)) b!4844694))

(assert (= (and b!4844694 res!2066269) b!4844695))

(declare-fun b_lambda!192239 () Bool)

(assert (=> (not b_lambda!192239) (not b!4844694)))

(declare-fun m!5843260 () Bool)

(assert (=> b!4844694 m!5843260))

(declare-fun m!5843262 () Bool)

(assert (=> b!4844695 m!5843262))

(assert (=> start!504450 d!1554280))

(declare-fun d!1554282 () Bool)

(declare-fun isStrictlySorted!1058 (List!55561) Bool)

(assert (=> d!1554282 (= (inv!71103 lm!2706) (isStrictlySorted!1058 (toList!7813 lm!2706)))))

(declare-fun bs!1172218 () Bool)

(assert (= bs!1172218 d!1554282))

(declare-fun m!5843264 () Bool)

(assert (=> bs!1172218 m!5843264))

(assert (=> start!504450 d!1554282))

(declare-fun bs!1172219 () Bool)

(declare-fun d!1554284 () Bool)

(assert (= bs!1172219 (and d!1554284 start!504450)))

(declare-fun lambda!242163 () Int)

(assert (=> bs!1172219 (not (= lambda!242163 lambda!242157))))

(assert (=> d!1554284 true))

(assert (=> d!1554284 (= (allKeysSameHashInMap!2769 lm!2706 hashF!1684) (forall!12892 (toList!7813 lm!2706) lambda!242163))))

(declare-fun bs!1172220 () Bool)

(assert (= bs!1172220 d!1554284))

(declare-fun m!5843266 () Bool)

(assert (=> bs!1172220 m!5843266))

(assert (=> b!4844674 d!1554284))

(declare-fun d!1554288 () Bool)

(declare-fun res!2066278 () Bool)

(declare-fun e!3027941 () Bool)

(assert (=> d!1554288 (=> res!2066278 e!3027941)))

(declare-fun e!3027942 () Bool)

(assert (=> d!1554288 (= res!2066278 e!3027942)))

(declare-fun res!2066276 () Bool)

(assert (=> d!1554288 (=> (not res!2066276) (not e!3027942))))

(assert (=> d!1554288 (= res!2066276 (is-Cons!55437 (toList!7813 lm!2706)))))

(assert (=> d!1554288 (= (containsKeyBiggerList!737 (toList!7813 lm!2706) key!6636) e!3027941)))

(declare-fun b!4844704 () Bool)

(declare-fun containsKey!4627 (List!55560 K!17202) Bool)

(assert (=> b!4844704 (= e!3027942 (containsKey!4627 (_2!32798 (h!61874 (toList!7813 lm!2706))) key!6636))))

(declare-fun b!4844705 () Bool)

(declare-fun e!3027943 () Bool)

(assert (=> b!4844705 (= e!3027941 e!3027943)))

(declare-fun res!2066277 () Bool)

(assert (=> b!4844705 (=> (not res!2066277) (not e!3027943))))

(assert (=> b!4844705 (= res!2066277 (is-Cons!55437 (toList!7813 lm!2706)))))

(declare-fun b!4844706 () Bool)

(assert (=> b!4844706 (= e!3027943 (containsKeyBiggerList!737 (t!363057 (toList!7813 lm!2706)) key!6636))))

(assert (= (and d!1554288 res!2066276) b!4844704))

(assert (= (and d!1554288 (not res!2066278)) b!4844705))

(assert (= (and b!4844705 res!2066277) b!4844706))

(declare-fun m!5843268 () Bool)

(assert (=> b!4844704 m!5843268))

(declare-fun m!5843270 () Bool)

(assert (=> b!4844706 m!5843270))

(assert (=> b!4844675 d!1554288))

(declare-fun b!4844715 () Bool)

(declare-fun e!3027950 () Bool)

(declare-fun tp!1364119 () Bool)

(declare-fun tp!1364120 () Bool)

(assert (=> b!4844715 (= e!3027950 (and tp!1364119 tp!1364120))))

(assert (=> b!4844677 (= tp!1364111 e!3027950)))

(assert (= (and b!4844677 (is-Cons!55437 (toList!7813 lm!2706))) b!4844715))

(declare-fun b_lambda!192241 () Bool)

(assert (= b_lambda!192239 (or start!504450 b_lambda!192241)))

(declare-fun bs!1172221 () Bool)

(declare-fun d!1554290 () Bool)

(assert (= bs!1172221 (and d!1554290 start!504450)))

(declare-fun noDuplicateKeys!2559 (List!55560) Bool)

(assert (=> bs!1172221 (= (dynLambda!22324 lambda!242157 (h!61874 (toList!7813 lm!2706))) (noDuplicateKeys!2559 (_2!32798 (h!61874 (toList!7813 lm!2706)))))))

(declare-fun m!5843272 () Bool)

(assert (=> bs!1172221 m!5843272))

(assert (=> b!4844694 d!1554290))

(push 1)

(assert (not d!1554282))

(assert (not b_lambda!192241))

(assert (not bs!1172221))

(assert (not b!4844695))

(assert (not b!4844715))

(assert (not b!4844706))

(assert tp_is_empty!35017)

(assert (not b!4844704))

(assert (not d!1554284))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

