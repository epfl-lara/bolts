; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!417176 () Bool)

(assert start!417176)

(declare-fun b!4329797 () Bool)

(declare-fun res!1774542 () Bool)

(declare-fun e!2694232 () Bool)

(assert (=> b!4329797 (=> (not res!1774542) (not e!2694232))))

(declare-fun hash!427 () (_ BitVec 64))

(declare-datatypes ((K!9858 0))(
  ( (K!9859 (val!16157 Int)) )
))
(declare-datatypes ((V!10104 0))(
  ( (V!10105 (val!16158 Int)) )
))
(declare-datatypes ((tuple2!47634 0))(
  ( (tuple2!47635 (_1!27111 K!9858) (_2!27111 V!10104)) )
))
(declare-datatypes ((List!48645 0))(
  ( (Nil!48521) (Cons!48521 (h!53992 tuple2!47634) (t!355557 List!48645)) )
))
(declare-fun newBucket!230 () List!48645)

(declare-datatypes ((Hashable!4708 0))(
  ( (HashableExt!4707 (__x!30411 Int)) )
))
(declare-fun hashF!1461 () Hashable!4708)

(declare-fun allKeysSameHash!276 (List!48645 (_ BitVec 64) Hashable!4708) Bool)

(assert (=> b!4329797 (= res!1774542 (allKeysSameHash!276 newBucket!230 hash!427 hashF!1461))))

(declare-fun b!4329798 () Bool)

(declare-fun e!2694231 () Bool)

(declare-fun tp!1328256 () Bool)

(assert (=> b!4329798 (= e!2694231 tp!1328256)))

(declare-fun b!4329799 () Bool)

(declare-fun res!1774541 () Bool)

(assert (=> b!4329799 (=> (not res!1774541) (not e!2694232))))

(declare-datatypes ((tuple2!47636 0))(
  ( (tuple2!47637 (_1!27112 (_ BitVec 64)) (_2!27112 List!48645)) )
))
(declare-datatypes ((List!48646 0))(
  ( (Nil!48522) (Cons!48522 (h!53993 tuple2!47636) (t!355558 List!48646)) )
))
(declare-datatypes ((ListLongMap!1265 0))(
  ( (ListLongMap!1266 (toList!2633 List!48646)) )
))
(declare-fun lm!2227 () ListLongMap!1265)

(assert (=> b!4329799 (= res!1774541 (is-Cons!48522 (toList!2633 lm!2227)))))

(declare-fun res!1774540 () Bool)

(assert (=> start!417176 (=> (not res!1774540) (not e!2694232))))

(declare-fun lambda!134449 () Int)

(declare-fun forall!8856 (List!48646 Int) Bool)

(assert (=> start!417176 (= res!1774540 (forall!8856 (toList!2633 lm!2227) lambda!134449))))

(assert (=> start!417176 e!2694232))

(declare-fun inv!64045 (ListLongMap!1265) Bool)

(assert (=> start!417176 (and (inv!64045 lm!2227) e!2694231)))

(assert (=> start!417176 true))

(declare-fun e!2694230 () Bool)

(assert (=> start!417176 e!2694230))

(declare-fun b!4329800 () Bool)

(declare-fun tp_is_empty!24503 () Bool)

(declare-fun tp!1328255 () Bool)

(declare-fun tp_is_empty!24501 () Bool)

(assert (=> b!4329800 (= e!2694230 (and tp_is_empty!24501 tp_is_empty!24503 tp!1328255))))

(declare-fun b!4329801 () Bool)

(declare-fun res!1774539 () Bool)

(assert (=> b!4329801 (=> (not res!1774539) (not e!2694232))))

(declare-fun allKeysSameHashInMap!420 (ListLongMap!1265 Hashable!4708) Bool)

(assert (=> b!4329801 (= res!1774539 (allKeysSameHashInMap!420 lm!2227 hashF!1461))))

(declare-fun b!4329802 () Bool)

(assert (=> b!4329802 (= e!2694232 (not (inv!64045 (ListLongMap!1266 (t!355558 (toList!2633 lm!2227))))))))

(declare-fun b!4329803 () Bool)

(declare-fun res!1774538 () Bool)

(assert (=> b!4329803 (=> (not res!1774538) (not e!2694232))))

(declare-fun noDuplicateKeys!328 (List!48645) Bool)

(assert (=> b!4329803 (= res!1774538 (noDuplicateKeys!328 newBucket!230))))

(assert (= (and start!417176 res!1774540) b!4329801))

(assert (= (and b!4329801 res!1774539) b!4329803))

(assert (= (and b!4329803 res!1774538) b!4329797))

(assert (= (and b!4329797 res!1774542) b!4329799))

(assert (= (and b!4329799 res!1774541) b!4329802))

(assert (= start!417176 b!4329798))

(assert (= (and start!417176 (is-Cons!48521 newBucket!230)) b!4329800))

(declare-fun m!4924021 () Bool)

(assert (=> b!4329801 m!4924021))

(declare-fun m!4924023 () Bool)

(assert (=> b!4329797 m!4924023))

(declare-fun m!4924025 () Bool)

(assert (=> b!4329802 m!4924025))

(declare-fun m!4924027 () Bool)

(assert (=> b!4329803 m!4924027))

(declare-fun m!4924029 () Bool)

(assert (=> start!417176 m!4924029))

(declare-fun m!4924031 () Bool)

(assert (=> start!417176 m!4924031))

(push 1)

(assert (not start!417176))

(assert (not b!4329798))

(assert (not b!4329801))

(assert tp_is_empty!24503)

(assert (not b!4329797))

(assert (not b!4329802))

(assert tp_is_empty!24501)

(assert (not b!4329800))

(assert (not b!4329803))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1272470 () Bool)

(declare-fun res!1774562 () Bool)

(declare-fun e!2694246 () Bool)

(assert (=> d!1272470 (=> res!1774562 e!2694246)))

(assert (=> d!1272470 (= res!1774562 (is-Nil!48522 (toList!2633 lm!2227)))))

(assert (=> d!1272470 (= (forall!8856 (toList!2633 lm!2227) lambda!134449) e!2694246)))

(declare-fun b!4329829 () Bool)

(declare-fun e!2694247 () Bool)

(assert (=> b!4329829 (= e!2694246 e!2694247)))

(declare-fun res!1774563 () Bool)

(assert (=> b!4329829 (=> (not res!1774563) (not e!2694247))))

(declare-fun dynLambda!20532 (Int tuple2!47636) Bool)

(assert (=> b!4329829 (= res!1774563 (dynLambda!20532 lambda!134449 (h!53993 (toList!2633 lm!2227))))))

(declare-fun b!4329830 () Bool)

(assert (=> b!4329830 (= e!2694247 (forall!8856 (t!355558 (toList!2633 lm!2227)) lambda!134449))))

(assert (= (and d!1272470 (not res!1774562)) b!4329829))

(assert (= (and b!4329829 res!1774563) b!4329830))

(declare-fun b_lambda!127571 () Bool)

(assert (=> (not b_lambda!127571) (not b!4329829)))

(declare-fun m!4924045 () Bool)

(assert (=> b!4329829 m!4924045))

(declare-fun m!4924047 () Bool)

(assert (=> b!4329830 m!4924047))

(assert (=> start!417176 d!1272470))

(declare-fun d!1272472 () Bool)

(declare-fun isStrictlySorted!26 (List!48646) Bool)

(assert (=> d!1272472 (= (inv!64045 lm!2227) (isStrictlySorted!26 (toList!2633 lm!2227)))))

(declare-fun bs!607648 () Bool)

(assert (= bs!607648 d!1272472))

(declare-fun m!4924049 () Bool)

(assert (=> bs!607648 m!4924049))

(assert (=> start!417176 d!1272472))

(declare-fun d!1272474 () Bool)

(assert (=> d!1272474 true))

(assert (=> d!1272474 true))

(declare-fun lambda!134455 () Int)

(declare-fun forall!8858 (List!48645 Int) Bool)

(assert (=> d!1272474 (= (allKeysSameHash!276 newBucket!230 hash!427 hashF!1461) (forall!8858 newBucket!230 lambda!134455))))

(declare-fun bs!607649 () Bool)

(assert (= bs!607649 d!1272474))

(declare-fun m!4924051 () Bool)

(assert (=> bs!607649 m!4924051))

(assert (=> b!4329797 d!1272474))

(declare-fun d!1272476 () Bool)

(declare-fun res!1774568 () Bool)

(declare-fun e!2694252 () Bool)

(assert (=> d!1272476 (=> res!1774568 e!2694252)))

(assert (=> d!1272476 (= res!1774568 (not (is-Cons!48521 newBucket!230)))))

(assert (=> d!1272476 (= (noDuplicateKeys!328 newBucket!230) e!2694252)))

(declare-fun b!4329839 () Bool)

(declare-fun e!2694253 () Bool)

(assert (=> b!4329839 (= e!2694252 e!2694253)))

(declare-fun res!1774569 () Bool)

(assert (=> b!4329839 (=> (not res!1774569) (not e!2694253))))

(declare-fun containsKey!469 (List!48645 K!9858) Bool)

(assert (=> b!4329839 (= res!1774569 (not (containsKey!469 (t!355557 newBucket!230) (_1!27111 (h!53992 newBucket!230)))))))

(declare-fun b!4329840 () Bool)

(assert (=> b!4329840 (= e!2694253 (noDuplicateKeys!328 (t!355557 newBucket!230)))))

(assert (= (and d!1272476 (not res!1774568)) b!4329839))

(assert (= (and b!4329839 res!1774569) b!4329840))

(declare-fun m!4924053 () Bool)

(assert (=> b!4329839 m!4924053))

(declare-fun m!4924055 () Bool)

(assert (=> b!4329840 m!4924055))

(assert (=> b!4329803 d!1272476))

(declare-fun bs!607650 () Bool)

(declare-fun d!1272478 () Bool)

(assert (= bs!607650 (and d!1272478 start!417176)))

(declare-fun lambda!134458 () Int)

(assert (=> bs!607650 (not (= lambda!134458 lambda!134449))))

(assert (=> d!1272478 true))

(assert (=> d!1272478 (= (allKeysSameHashInMap!420 lm!2227 hashF!1461) (forall!8856 (toList!2633 lm!2227) lambda!134458))))

(declare-fun bs!607651 () Bool)

(assert (= bs!607651 d!1272478))

(declare-fun m!4924057 () Bool)

(assert (=> bs!607651 m!4924057))

(assert (=> b!4329801 d!1272478))

(declare-fun d!1272482 () Bool)

(assert (=> d!1272482 (= (inv!64045 (ListLongMap!1266 (t!355558 (toList!2633 lm!2227)))) (isStrictlySorted!26 (toList!2633 (ListLongMap!1266 (t!355558 (toList!2633 lm!2227))))))))

(declare-fun bs!607652 () Bool)

(assert (= bs!607652 d!1272482))

(declare-fun m!4924059 () Bool)

(assert (=> bs!607652 m!4924059))

(assert (=> b!4329802 d!1272482))

(declare-fun b!4329847 () Bool)

(declare-fun e!2694256 () Bool)

(declare-fun tp!1328267 () Bool)

(declare-fun tp!1328268 () Bool)

(assert (=> b!4329847 (= e!2694256 (and tp!1328267 tp!1328268))))

(assert (=> b!4329798 (= tp!1328256 e!2694256)))

(assert (= (and b!4329798 (is-Cons!48522 (toList!2633 lm!2227))) b!4329847))

(declare-fun tp!1328271 () Bool)

(declare-fun e!2694263 () Bool)

(declare-fun b!4329856 () Bool)

(assert (=> b!4329856 (= e!2694263 (and tp_is_empty!24501 tp_is_empty!24503 tp!1328271))))

(assert (=> b!4329800 (= tp!1328255 e!2694263)))

(assert (= (and b!4329800 (is-Cons!48521 (t!355557 newBucket!230))) b!4329856))

(declare-fun b_lambda!127573 () Bool)

(assert (= b_lambda!127571 (or start!417176 b_lambda!127573)))

(declare-fun bs!607653 () Bool)

(declare-fun d!1272484 () Bool)

(assert (= bs!607653 (and d!1272484 start!417176)))

(assert (=> bs!607653 (= (dynLambda!20532 lambda!134449 (h!53993 (toList!2633 lm!2227))) (noDuplicateKeys!328 (_2!27112 (h!53993 (toList!2633 lm!2227)))))))

(declare-fun m!4924061 () Bool)

(assert (=> bs!607653 m!4924061))

(assert (=> b!4329829 d!1272484))

(push 1)

(assert (not bs!607653))

(assert (not b!4329830))

(assert (not d!1272478))

(assert tp_is_empty!24501)

(assert (not b!4329856))

(assert (not b_lambda!127573))

(assert (not b!4329840))

(assert (not d!1272472))

(assert (not d!1272474))

(assert tp_is_empty!24503)

(assert (not b!4329839))

(assert (not d!1272482))

(assert (not b!4329847))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1272498 () Bool)

(declare-fun res!1774582 () Bool)

(declare-fun e!2694278 () Bool)

(assert (=> d!1272498 (=> res!1774582 e!2694278)))

(assert (=> d!1272498 (= res!1774582 (is-Nil!48522 (t!355558 (toList!2633 lm!2227))))))

(assert (=> d!1272498 (= (forall!8856 (t!355558 (toList!2633 lm!2227)) lambda!134449) e!2694278)))

(declare-fun b!4329881 () Bool)

(declare-fun e!2694279 () Bool)

(assert (=> b!4329881 (= e!2694278 e!2694279)))

(declare-fun res!1774583 () Bool)

(assert (=> b!4329881 (=> (not res!1774583) (not e!2694279))))

(assert (=> b!4329881 (= res!1774583 (dynLambda!20532 lambda!134449 (h!53993 (t!355558 (toList!2633 lm!2227)))))))

(declare-fun b!4329882 () Bool)

(assert (=> b!4329882 (= e!2694279 (forall!8856 (t!355558 (t!355558 (toList!2633 lm!2227))) lambda!134449))))

(assert (= (and d!1272498 (not res!1774582)) b!4329881))

(assert (= (and b!4329881 res!1774583) b!4329882))

(declare-fun b_lambda!127579 () Bool)

(assert (=> (not b_lambda!127579) (not b!4329881)))

(declare-fun m!4924081 () Bool)

(assert (=> b!4329881 m!4924081))

(declare-fun m!4924083 () Bool)

(assert (=> b!4329882 m!4924083))

(assert (=> b!4329830 d!1272498))

(declare-fun d!1272500 () Bool)

(declare-fun res!1774588 () Bool)

(declare-fun e!2694284 () Bool)

(assert (=> d!1272500 (=> res!1774588 e!2694284)))

(assert (=> d!1272500 (= res!1774588 (is-Nil!48521 newBucket!230))))

(assert (=> d!1272500 (= (forall!8858 newBucket!230 lambda!134455) e!2694284)))

(declare-fun b!4329887 () Bool)

(declare-fun e!2694285 () Bool)

(assert (=> b!4329887 (= e!2694284 e!2694285)))

(declare-fun res!1774589 () Bool)

(assert (=> b!4329887 (=> (not res!1774589) (not e!2694285))))

(declare-fun dynLambda!20534 (Int tuple2!47634) Bool)

(assert (=> b!4329887 (= res!1774589 (dynLambda!20534 lambda!134455 (h!53992 newBucket!230)))))

(declare-fun b!4329888 () Bool)

(assert (=> b!4329888 (= e!2694285 (forall!8858 (t!355557 newBucket!230) lambda!134455))))

(assert (= (and d!1272500 (not res!1774588)) b!4329887))

(assert (= (and b!4329887 res!1774589) b!4329888))

(declare-fun b_lambda!127581 () Bool)

(assert (=> (not b_lambda!127581) (not b!4329887)))

(declare-fun m!4924085 () Bool)

(assert (=> b!4329887 m!4924085))

(declare-fun m!4924087 () Bool)

(assert (=> b!4329888 m!4924087))

(assert (=> d!1272474 d!1272500))

(declare-fun d!1272502 () Bool)

(declare-fun res!1774590 () Bool)

(declare-fun e!2694286 () Bool)

(assert (=> d!1272502 (=> res!1774590 e!2694286)))

(assert (=> d!1272502 (= res!1774590 (is-Nil!48522 (toList!2633 lm!2227)))))

(assert (=> d!1272502 (= (forall!8856 (toList!2633 lm!2227) lambda!134458) e!2694286)))

(declare-fun b!4329889 () Bool)

(declare-fun e!2694287 () Bool)

(assert (=> b!4329889 (= e!2694286 e!2694287)))

(declare-fun res!1774591 () Bool)

(assert (=> b!4329889 (=> (not res!1774591) (not e!2694287))))

(assert (=> b!4329889 (= res!1774591 (dynLambda!20532 lambda!134458 (h!53993 (toList!2633 lm!2227))))))

(declare-fun b!4329890 () Bool)

(assert (=> b!4329890 (= e!2694287 (forall!8856 (t!355558 (toList!2633 lm!2227)) lambda!134458))))

(assert (= (and d!1272502 (not res!1774590)) b!4329889))

(assert (= (and b!4329889 res!1774591) b!4329890))

(declare-fun b_lambda!127583 () Bool)

(assert (=> (not b_lambda!127583) (not b!4329889)))

(declare-fun m!4924089 () Bool)

(assert (=> b!4329889 m!4924089))

(declare-fun m!4924091 () Bool)

(assert (=> b!4329890 m!4924091))

(assert (=> d!1272478 d!1272502))

(declare-fun d!1272504 () Bool)

(declare-fun res!1774592 () Bool)

(declare-fun e!2694288 () Bool)

(assert (=> d!1272504 (=> res!1774592 e!2694288)))

(assert (=> d!1272504 (= res!1774592 (not (is-Cons!48521 (_2!27112 (h!53993 (toList!2633 lm!2227))))))))

(assert (=> d!1272504 (= (noDuplicateKeys!328 (_2!27112 (h!53993 (toList!2633 lm!2227)))) e!2694288)))

(declare-fun b!4329891 () Bool)

(declare-fun e!2694289 () Bool)

(assert (=> b!4329891 (= e!2694288 e!2694289)))

(declare-fun res!1774593 () Bool)

(assert (=> b!4329891 (=> (not res!1774593) (not e!2694289))))

(assert (=> b!4329891 (= res!1774593 (not (containsKey!469 (t!355557 (_2!27112 (h!53993 (toList!2633 lm!2227)))) (_1!27111 (h!53992 (_2!27112 (h!53993 (toList!2633 lm!2227))))))))))

(declare-fun b!4329892 () Bool)

(assert (=> b!4329892 (= e!2694289 (noDuplicateKeys!328 (t!355557 (_2!27112 (h!53993 (toList!2633 lm!2227))))))))

(assert (= (and d!1272504 (not res!1774592)) b!4329891))

(assert (= (and b!4329891 res!1774593) b!4329892))

(declare-fun m!4924093 () Bool)

(assert (=> b!4329891 m!4924093))

(declare-fun m!4924095 () Bool)

(assert (=> b!4329892 m!4924095))

(assert (=> bs!607653 d!1272504))

(declare-fun d!1272506 () Bool)

(declare-fun res!1774598 () Bool)

(declare-fun e!2694294 () Bool)

(assert (=> d!1272506 (=> res!1774598 e!2694294)))

(assert (=> d!1272506 (= res!1774598 (and (is-Cons!48521 (t!355557 newBucket!230)) (= (_1!27111 (h!53992 (t!355557 newBucket!230))) (_1!27111 (h!53992 newBucket!230)))))))

(assert (=> d!1272506 (= (containsKey!469 (t!355557 newBucket!230) (_1!27111 (h!53992 newBucket!230))) e!2694294)))

(declare-fun b!4329897 () Bool)

(declare-fun e!2694295 () Bool)

(assert (=> b!4329897 (= e!2694294 e!2694295)))

(declare-fun res!1774599 () Bool)

(assert (=> b!4329897 (=> (not res!1774599) (not e!2694295))))

(assert (=> b!4329897 (= res!1774599 (is-Cons!48521 (t!355557 newBucket!230)))))

(declare-fun b!4329898 () Bool)

(assert (=> b!4329898 (= e!2694295 (containsKey!469 (t!355557 (t!355557 newBucket!230)) (_1!27111 (h!53992 newBucket!230))))))

(assert (= (and d!1272506 (not res!1774598)) b!4329897))

(assert (= (and b!4329897 res!1774599) b!4329898))

(declare-fun m!4924097 () Bool)

(assert (=> b!4329898 m!4924097))

(assert (=> b!4329839 d!1272506))

(declare-fun d!1272508 () Bool)

(declare-fun res!1774604 () Bool)

(declare-fun e!2694300 () Bool)

(assert (=> d!1272508 (=> res!1774604 e!2694300)))

(assert (=> d!1272508 (= res!1774604 (or (is-Nil!48522 (toList!2633 lm!2227)) (is-Nil!48522 (t!355558 (toList!2633 lm!2227)))))))

(assert (=> d!1272508 (= (isStrictlySorted!26 (toList!2633 lm!2227)) e!2694300)))

(declare-fun b!4329903 () Bool)

(declare-fun e!2694301 () Bool)

(assert (=> b!4329903 (= e!2694300 e!2694301)))

(declare-fun res!1774605 () Bool)

(assert (=> b!4329903 (=> (not res!1774605) (not e!2694301))))

(assert (=> b!4329903 (= res!1774605 (bvslt (_1!27112 (h!53993 (toList!2633 lm!2227))) (_1!27112 (h!53993 (t!355558 (toList!2633 lm!2227))))))))

(declare-fun b!4329904 () Bool)

(assert (=> b!4329904 (= e!2694301 (isStrictlySorted!26 (t!355558 (toList!2633 lm!2227))))))

(assert (= (and d!1272508 (not res!1774604)) b!4329903))

(assert (= (and b!4329903 res!1774605) b!4329904))

(declare-fun m!4924099 () Bool)

(assert (=> b!4329904 m!4924099))

(assert (=> d!1272472 d!1272508))

(declare-fun d!1272510 () Bool)

(declare-fun res!1774606 () Bool)

(declare-fun e!2694302 () Bool)

(assert (=> d!1272510 (=> res!1774606 e!2694302)))

(assert (=> d!1272510 (= res!1774606 (not (is-Cons!48521 (t!355557 newBucket!230))))))

(assert (=> d!1272510 (= (noDuplicateKeys!328 (t!355557 newBucket!230)) e!2694302)))

(declare-fun b!4329905 () Bool)

(declare-fun e!2694303 () Bool)

(assert (=> b!4329905 (= e!2694302 e!2694303)))

(declare-fun res!1774607 () Bool)

(assert (=> b!4329905 (=> (not res!1774607) (not e!2694303))))

(assert (=> b!4329905 (= res!1774607 (not (containsKey!469 (t!355557 (t!355557 newBucket!230)) (_1!27111 (h!53992 (t!355557 newBucket!230))))))))

(declare-fun b!4329906 () Bool)

(assert (=> b!4329906 (= e!2694303 (noDuplicateKeys!328 (t!355557 (t!355557 newBucket!230))))))

(assert (= (and d!1272510 (not res!1774606)) b!4329905))

(assert (= (and b!4329905 res!1774607) b!4329906))

(declare-fun m!4924101 () Bool)

(assert (=> b!4329905 m!4924101))

(declare-fun m!4924103 () Bool)

(assert (=> b!4329906 m!4924103))

(assert (=> b!4329840 d!1272510))

(declare-fun d!1272512 () Bool)

(declare-fun res!1774608 () Bool)

(declare-fun e!2694304 () Bool)

(assert (=> d!1272512 (=> res!1774608 e!2694304)))

(assert (=> d!1272512 (= res!1774608 (or (is-Nil!48522 (toList!2633 (ListLongMap!1266 (t!355558 (toList!2633 lm!2227))))) (is-Nil!48522 (t!355558 (toList!2633 (ListLongMap!1266 (t!355558 (toList!2633 lm!2227))))))))))

(assert (=> d!1272512 (= (isStrictlySorted!26 (toList!2633 (ListLongMap!1266 (t!355558 (toList!2633 lm!2227))))) e!2694304)))

(declare-fun b!4329907 () Bool)

(declare-fun e!2694305 () Bool)

(assert (=> b!4329907 (= e!2694304 e!2694305)))

(declare-fun res!1774609 () Bool)

(assert (=> b!4329907 (=> (not res!1774609) (not e!2694305))))

(assert (=> b!4329907 (= res!1774609 (bvslt (_1!27112 (h!53993 (toList!2633 (ListLongMap!1266 (t!355558 (toList!2633 lm!2227)))))) (_1!27112 (h!53993 (t!355558 (toList!2633 (ListLongMap!1266 (t!355558 (toList!2633 lm!2227)))))))))))

(declare-fun b!4329908 () Bool)

(assert (=> b!4329908 (= e!2694305 (isStrictlySorted!26 (t!355558 (toList!2633 (ListLongMap!1266 (t!355558 (toList!2633 lm!2227)))))))))

(assert (= (and d!1272512 (not res!1774608)) b!4329907))

(assert (= (and b!4329907 res!1774609) b!4329908))

(declare-fun m!4924105 () Bool)

(assert (=> b!4329908 m!4924105))

(assert (=> d!1272482 d!1272512))

(declare-fun e!2694306 () Bool)

(declare-fun tp!1328281 () Bool)

(declare-fun b!4329909 () Bool)

(assert (=> b!4329909 (= e!2694306 (and tp_is_empty!24501 tp_is_empty!24503 tp!1328281))))

(assert (=> b!4329856 (= tp!1328271 e!2694306)))

(assert (= (and b!4329856 (is-Cons!48521 (t!355557 (t!355557 newBucket!230)))) b!4329909))

(declare-fun tp!1328282 () Bool)

(declare-fun e!2694307 () Bool)

(declare-fun b!4329910 () Bool)

(assert (=> b!4329910 (= e!2694307 (and tp_is_empty!24501 tp_is_empty!24503 tp!1328282))))

(assert (=> b!4329847 (= tp!1328267 e!2694307)))

(assert (= (and b!4329847 (is-Cons!48521 (_2!27112 (h!53993 (toList!2633 lm!2227))))) b!4329910))

(declare-fun b!4329911 () Bool)

(declare-fun e!2694308 () Bool)

(declare-fun tp!1328283 () Bool)

(declare-fun tp!1328284 () Bool)

(assert (=> b!4329911 (= e!2694308 (and tp!1328283 tp!1328284))))

(assert (=> b!4329847 (= tp!1328268 e!2694308)))

(assert (= (and b!4329847 (is-Cons!48522 (t!355558 (toList!2633 lm!2227)))) b!4329911))

(declare-fun b_lambda!127585 () Bool)

(assert (= b_lambda!127583 (or d!1272478 b_lambda!127585)))

(declare-fun bs!607660 () Bool)

(declare-fun d!1272514 () Bool)

(assert (= bs!607660 (and d!1272514 d!1272478)))

(assert (=> bs!607660 (= (dynLambda!20532 lambda!134458 (h!53993 (toList!2633 lm!2227))) (allKeysSameHash!276 (_2!27112 (h!53993 (toList!2633 lm!2227))) (_1!27112 (h!53993 (toList!2633 lm!2227))) hashF!1461))))

(declare-fun m!4924107 () Bool)

(assert (=> bs!607660 m!4924107))

(assert (=> b!4329889 d!1272514))

(declare-fun b_lambda!127587 () Bool)

(assert (= b_lambda!127579 (or start!417176 b_lambda!127587)))

(declare-fun bs!607661 () Bool)

(declare-fun d!1272516 () Bool)

(assert (= bs!607661 (and d!1272516 start!417176)))

(assert (=> bs!607661 (= (dynLambda!20532 lambda!134449 (h!53993 (t!355558 (toList!2633 lm!2227)))) (noDuplicateKeys!328 (_2!27112 (h!53993 (t!355558 (toList!2633 lm!2227))))))))

(declare-fun m!4924109 () Bool)

(assert (=> bs!607661 m!4924109))

(assert (=> b!4329881 d!1272516))

(declare-fun b_lambda!127589 () Bool)

(assert (= b_lambda!127581 (or d!1272474 b_lambda!127589)))

(declare-fun bs!607662 () Bool)

(declare-fun d!1272518 () Bool)

(assert (= bs!607662 (and d!1272518 d!1272474)))

(declare-fun hash!1252 (Hashable!4708 K!9858) (_ BitVec 64))

(assert (=> bs!607662 (= (dynLambda!20534 lambda!134455 (h!53992 newBucket!230)) (= (hash!1252 hashF!1461 (_1!27111 (h!53992 newBucket!230))) hash!427))))

(declare-fun m!4924111 () Bool)

(assert (=> bs!607662 m!4924111))

(assert (=> b!4329887 d!1272518))

(push 1)

(assert (not b!4329892))

(assert (not b!4329909))

(assert (not bs!607662))

(assert (not b!4329882))

(assert (not b_lambda!127589))

(assert tp_is_empty!24503)

(assert (not b!4329904))

(assert (not b!4329908))

(assert (not b_lambda!127585))

(assert (not b!4329888))

(assert (not b!4329910))

(assert tp_is_empty!24501)

(assert (not b!4329898))

(assert (not b!4329906))

(assert (not b!4329905))

(assert (not bs!607660))

(assert (not b_lambda!127573))

(assert (not bs!607661))

(assert (not b!4329890))

(assert (not b!4329891))

(assert (not b_lambda!127587))

(assert (not b!4329911))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

