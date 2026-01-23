; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!417148 () Bool)

(assert start!417148)

(declare-fun b!4329691 () Bool)

(declare-fun e!2694170 () Bool)

(declare-datatypes ((K!9853 0))(
  ( (K!9854 (val!16153 Int)) )
))
(declare-datatypes ((V!10099 0))(
  ( (V!10100 (val!16154 Int)) )
))
(declare-datatypes ((tuple2!47626 0))(
  ( (tuple2!47627 (_1!27107 K!9853) (_2!27107 V!10099)) )
))
(declare-datatypes ((List!48641 0))(
  ( (Nil!48517) (Cons!48517 (h!53986 tuple2!47626) (t!355553 List!48641)) )
))
(declare-datatypes ((tuple2!47628 0))(
  ( (tuple2!47629 (_1!27108 (_ BitVec 64)) (_2!27108 List!48641)) )
))
(declare-datatypes ((List!48642 0))(
  ( (Nil!48518) (Cons!48518 (h!53987 tuple2!47628) (t!355554 List!48642)) )
))
(declare-datatypes ((ListLongMap!1261 0))(
  ( (ListLongMap!1262 (toList!2631 List!48642)) )
))
(declare-fun lm!2227 () ListLongMap!1261)

(declare-fun size!35841 (List!48642) Int)

(assert (=> b!4329691 (= e!2694170 (< (size!35841 (toList!2631 lm!2227)) 0))))

(declare-fun b!4329692 () Bool)

(declare-fun res!1774491 () Bool)

(assert (=> b!4329692 (=> (not res!1774491) (not e!2694170))))

(declare-datatypes ((Hashable!4706 0))(
  ( (HashableExt!4705 (__x!30409 Int)) )
))
(declare-fun hashF!1461 () Hashable!4706)

(declare-fun allKeysSameHashInMap!418 (ListLongMap!1261 Hashable!4706) Bool)

(assert (=> b!4329692 (= res!1774491 (allKeysSameHashInMap!418 lm!2227 hashF!1461))))

(declare-fun b!4329693 () Bool)

(declare-fun e!2694172 () Bool)

(declare-fun tp!1328225 () Bool)

(assert (=> b!4329693 (= e!2694172 tp!1328225)))

(declare-fun res!1774490 () Bool)

(assert (=> start!417148 (=> (not res!1774490) (not e!2694170))))

(declare-fun lambda!134431 () Int)

(declare-fun forall!8852 (List!48642 Int) Bool)

(assert (=> start!417148 (= res!1774490 (forall!8852 (toList!2631 lm!2227) lambda!134431))))

(assert (=> start!417148 e!2694170))

(declare-fun inv!64040 (ListLongMap!1261) Bool)

(assert (=> start!417148 (and (inv!64040 lm!2227) e!2694172)))

(assert (=> start!417148 true))

(declare-fun e!2694171 () Bool)

(assert (=> start!417148 e!2694171))

(declare-fun tp!1328226 () Bool)

(declare-fun b!4329694 () Bool)

(declare-fun tp_is_empty!24495 () Bool)

(declare-fun tp_is_empty!24493 () Bool)

(assert (=> b!4329694 (= e!2694171 (and tp_is_empty!24493 tp_is_empty!24495 tp!1328226))))

(declare-fun b!4329695 () Bool)

(declare-fun res!1774489 () Bool)

(assert (=> b!4329695 (=> (not res!1774489) (not e!2694170))))

(declare-fun hash!427 () (_ BitVec 64))

(declare-fun newBucket!230 () List!48641)

(declare-fun allKeysSameHash!274 (List!48641 (_ BitVec 64) Hashable!4706) Bool)

(assert (=> b!4329695 (= res!1774489 (allKeysSameHash!274 newBucket!230 hash!427 hashF!1461))))

(declare-fun b!4329696 () Bool)

(declare-fun res!1774488 () Bool)

(assert (=> b!4329696 (=> (not res!1774488) (not e!2694170))))

(declare-fun noDuplicateKeys!326 (List!48641) Bool)

(assert (=> b!4329696 (= res!1774488 (noDuplicateKeys!326 newBucket!230))))

(assert (= (and start!417148 res!1774490) b!4329692))

(assert (= (and b!4329692 res!1774491) b!4329696))

(assert (= (and b!4329696 res!1774488) b!4329695))

(assert (= (and b!4329695 res!1774489) b!4329691))

(assert (= start!417148 b!4329693))

(assert (= (and start!417148 (is-Cons!48517 newBucket!230)) b!4329694))

(declare-fun m!4923961 () Bool)

(assert (=> b!4329692 m!4923961))

(declare-fun m!4923963 () Bool)

(assert (=> b!4329696 m!4923963))

(declare-fun m!4923965 () Bool)

(assert (=> start!417148 m!4923965))

(declare-fun m!4923967 () Bool)

(assert (=> start!417148 m!4923967))

(declare-fun m!4923969 () Bool)

(assert (=> b!4329695 m!4923969))

(declare-fun m!4923971 () Bool)

(assert (=> b!4329691 m!4923971))

(push 1)

(assert (not b!4329693))

(assert (not b!4329692))

(assert tp_is_empty!24495)

(assert tp_is_empty!24493)

(assert (not start!417148))

(assert (not b!4329695))

(assert (not b!4329691))

(assert (not b!4329696))

(assert (not b!4329694))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1272441 () Bool)

(declare-fun res!1774508 () Bool)

(declare-fun e!2694186 () Bool)

(assert (=> d!1272441 (=> res!1774508 e!2694186)))

(assert (=> d!1272441 (= res!1774508 (is-Nil!48518 (toList!2631 lm!2227)))))

(assert (=> d!1272441 (= (forall!8852 (toList!2631 lm!2227) lambda!134431) e!2694186)))

(declare-fun b!4329719 () Bool)

(declare-fun e!2694187 () Bool)

(assert (=> b!4329719 (= e!2694186 e!2694187)))

(declare-fun res!1774509 () Bool)

(assert (=> b!4329719 (=> (not res!1774509) (not e!2694187))))

(declare-fun dynLambda!20530 (Int tuple2!47628) Bool)

(assert (=> b!4329719 (= res!1774509 (dynLambda!20530 lambda!134431 (h!53987 (toList!2631 lm!2227))))))

(declare-fun b!4329720 () Bool)

(assert (=> b!4329720 (= e!2694187 (forall!8852 (t!355554 (toList!2631 lm!2227)) lambda!134431))))

(assert (= (and d!1272441 (not res!1774508)) b!4329719))

(assert (= (and b!4329719 res!1774509) b!4329720))

(declare-fun b_lambda!127563 () Bool)

(assert (=> (not b_lambda!127563) (not b!4329719)))

(declare-fun m!4923985 () Bool)

(assert (=> b!4329719 m!4923985))

(declare-fun m!4923987 () Bool)

(assert (=> b!4329720 m!4923987))

(assert (=> start!417148 d!1272441))

(declare-fun d!1272445 () Bool)

(declare-fun isStrictlySorted!24 (List!48642) Bool)

(assert (=> d!1272445 (= (inv!64040 lm!2227) (isStrictlySorted!24 (toList!2631 lm!2227)))))

(declare-fun bs!607636 () Bool)

(assert (= bs!607636 d!1272445))

(declare-fun m!4923989 () Bool)

(assert (=> bs!607636 m!4923989))

(assert (=> start!417148 d!1272445))

(declare-fun d!1272447 () Bool)

(declare-fun lt!1545418 () Int)

(assert (=> d!1272447 (>= lt!1545418 0)))

(declare-fun e!2694196 () Int)

(assert (=> d!1272447 (= lt!1545418 e!2694196)))

(declare-fun c!736652 () Bool)

(assert (=> d!1272447 (= c!736652 (is-Nil!48518 (toList!2631 lm!2227)))))

(assert (=> d!1272447 (= (size!35841 (toList!2631 lm!2227)) lt!1545418)))

(declare-fun b!4329731 () Bool)

(assert (=> b!4329731 (= e!2694196 0)))

(declare-fun b!4329732 () Bool)

(assert (=> b!4329732 (= e!2694196 (+ 1 (size!35841 (t!355554 (toList!2631 lm!2227)))))))

(assert (= (and d!1272447 c!736652) b!4329731))

(assert (= (and d!1272447 (not c!736652)) b!4329732))

(declare-fun m!4923995 () Bool)

(assert (=> b!4329732 m!4923995))

(assert (=> b!4329691 d!1272447))

(declare-fun bs!607638 () Bool)

(declare-fun d!1272451 () Bool)

(assert (= bs!607638 (and d!1272451 start!417148)))

(declare-fun lambda!134437 () Int)

(assert (=> bs!607638 (not (= lambda!134437 lambda!134431))))

(assert (=> d!1272451 true))

(assert (=> d!1272451 (= (allKeysSameHashInMap!418 lm!2227 hashF!1461) (forall!8852 (toList!2631 lm!2227) lambda!134437))))

(declare-fun bs!607639 () Bool)

(assert (= bs!607639 d!1272451))

(declare-fun m!4923999 () Bool)

(assert (=> bs!607639 m!4923999))

(assert (=> b!4329692 d!1272451))

(declare-fun d!1272455 () Bool)

(assert (=> d!1272455 true))

(assert (=> d!1272455 true))

(declare-fun lambda!134440 () Int)

(declare-fun forall!8854 (List!48641 Int) Bool)

(assert (=> d!1272455 (= (allKeysSameHash!274 newBucket!230 hash!427 hashF!1461) (forall!8854 newBucket!230 lambda!134440))))

(declare-fun bs!607640 () Bool)

(assert (= bs!607640 d!1272455))

(declare-fun m!4924001 () Bool)

(assert (=> bs!607640 m!4924001))

(assert (=> b!4329695 d!1272455))

(declare-fun d!1272457 () Bool)

(declare-fun res!1774520 () Bool)

(declare-fun e!2694204 () Bool)

(assert (=> d!1272457 (=> res!1774520 e!2694204)))

(assert (=> d!1272457 (= res!1774520 (not (is-Cons!48517 newBucket!230)))))

(assert (=> d!1272457 (= (noDuplicateKeys!326 newBucket!230) e!2694204)))

(declare-fun b!4329749 () Bool)

(declare-fun e!2694205 () Bool)

(assert (=> b!4329749 (= e!2694204 e!2694205)))

(declare-fun res!1774521 () Bool)

(assert (=> b!4329749 (=> (not res!1774521) (not e!2694205))))

(declare-fun containsKey!468 (List!48641 K!9853) Bool)

(assert (=> b!4329749 (= res!1774521 (not (containsKey!468 (t!355553 newBucket!230) (_1!27107 (h!53986 newBucket!230)))))))

(declare-fun b!4329750 () Bool)

(assert (=> b!4329750 (= e!2694205 (noDuplicateKeys!326 (t!355553 newBucket!230)))))

(assert (= (and d!1272457 (not res!1774520)) b!4329749))

(assert (= (and b!4329749 res!1774521) b!4329750))

(declare-fun m!4924003 () Bool)

(assert (=> b!4329749 m!4924003))

(declare-fun m!4924005 () Bool)

(assert (=> b!4329750 m!4924005))

(assert (=> b!4329696 d!1272457))

(declare-fun b!4329755 () Bool)

(declare-fun tp!1328235 () Bool)

(declare-fun e!2694208 () Bool)

(assert (=> b!4329755 (= e!2694208 (and tp_is_empty!24493 tp_is_empty!24495 tp!1328235))))

(assert (=> b!4329694 (= tp!1328226 e!2694208)))

(assert (= (and b!4329694 (is-Cons!48517 (t!355553 newBucket!230))) b!4329755))

(declare-fun b!4329760 () Bool)

(declare-fun e!2694211 () Bool)

(declare-fun tp!1328240 () Bool)

(declare-fun tp!1328241 () Bool)

(assert (=> b!4329760 (= e!2694211 (and tp!1328240 tp!1328241))))

(assert (=> b!4329693 (= tp!1328225 e!2694211)))

(assert (= (and b!4329693 (is-Cons!48518 (toList!2631 lm!2227))) b!4329760))

(declare-fun b_lambda!127567 () Bool)

(assert (= b_lambda!127563 (or start!417148 b_lambda!127567)))

(declare-fun bs!607641 () Bool)

(declare-fun d!1272461 () Bool)

(assert (= bs!607641 (and d!1272461 start!417148)))

(assert (=> bs!607641 (= (dynLambda!20530 lambda!134431 (h!53987 (toList!2631 lm!2227))) (noDuplicateKeys!326 (_2!27108 (h!53987 (toList!2631 lm!2227)))))))

(declare-fun m!4924009 () Bool)

(assert (=> bs!607641 m!4924009))

(assert (=> b!4329719 d!1272461))

(push 1)

(assert (not b!4329749))

(assert (not bs!607641))

(assert (not b!4329750))

(assert (not d!1272451))

(assert tp_is_empty!24495)

(assert (not b_lambda!127567))

(assert (not b!4329732))

(assert tp_is_empty!24493)

(assert (not b!4329755))

(assert (not d!1272455))

(assert (not b!4329720))

(assert (not b!4329760))

(assert (not d!1272445))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

