; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!417212 () Bool)

(assert start!417212)

(declare-fun b!4329957 () Bool)

(declare-fun res!1774650 () Bool)

(declare-fun e!2694346 () Bool)

(assert (=> b!4329957 (=> (not res!1774650) (not e!2694346))))

(declare-datatypes ((K!9863 0))(
  ( (K!9864 (val!16161 Int)) )
))
(declare-datatypes ((V!10109 0))(
  ( (V!10110 (val!16162 Int)) )
))
(declare-datatypes ((tuple2!47642 0))(
  ( (tuple2!47643 (_1!27115 K!9863) (_2!27115 V!10109)) )
))
(declare-datatypes ((List!48649 0))(
  ( (Nil!48525) (Cons!48525 (h!53998 tuple2!47642) (t!355561 List!48649)) )
))
(declare-datatypes ((tuple2!47644 0))(
  ( (tuple2!47645 (_1!27116 (_ BitVec 64)) (_2!27116 List!48649)) )
))
(declare-datatypes ((List!48650 0))(
  ( (Nil!48526) (Cons!48526 (h!53999 tuple2!47644) (t!355562 List!48650)) )
))
(declare-datatypes ((ListLongMap!1269 0))(
  ( (ListLongMap!1270 (toList!2635 List!48650)) )
))
(declare-fun lm!2227 () ListLongMap!1269)

(assert (=> b!4329957 (= res!1774650 (is-Cons!48526 (toList!2635 lm!2227)))))

(declare-fun b!4329958 () Bool)

(declare-fun res!1774652 () Bool)

(assert (=> b!4329958 (=> (not res!1774652) (not e!2694346))))

(declare-datatypes ((Hashable!4710 0))(
  ( (HashableExt!4709 (__x!30413 Int)) )
))
(declare-fun hashF!1461 () Hashable!4710)

(declare-fun allKeysSameHashInMap!422 (ListLongMap!1269 Hashable!4710) Bool)

(assert (=> b!4329958 (= res!1774652 (allKeysSameHashInMap!422 lm!2227 hashF!1461))))

(declare-fun b!4329959 () Bool)

(declare-fun res!1774648 () Bool)

(assert (=> b!4329959 (=> (not res!1774648) (not e!2694346))))

(declare-fun hash!427 () (_ BitVec 64))

(declare-fun newBucket!230 () List!48649)

(declare-fun allKeysSameHash!278 (List!48649 (_ BitVec 64) Hashable!4710) Bool)

(assert (=> b!4329959 (= res!1774648 (allKeysSameHash!278 newBucket!230 hash!427 hashF!1461))))

(declare-fun b!4329960 () Bool)

(declare-fun lambda!134469 () Int)

(declare-fun forall!8860 (List!48650 Int) Bool)

(assert (=> b!4329960 (= e!2694346 (not (forall!8860 (t!355562 (toList!2635 lm!2227)) lambda!134469)))))

(declare-fun b!4329962 () Bool)

(declare-fun tp_is_empty!24511 () Bool)

(declare-fun tp!1328294 () Bool)

(declare-fun tp_is_empty!24509 () Bool)

(declare-fun e!2694347 () Bool)

(assert (=> b!4329962 (= e!2694347 (and tp_is_empty!24509 tp_is_empty!24511 tp!1328294))))

(declare-fun b!4329963 () Bool)

(declare-fun e!2694348 () Bool)

(declare-fun tp!1328293 () Bool)

(assert (=> b!4329963 (= e!2694348 tp!1328293)))

(declare-fun b!4329961 () Bool)

(declare-fun res!1774649 () Bool)

(assert (=> b!4329961 (=> (not res!1774649) (not e!2694346))))

(declare-fun noDuplicateKeys!330 (List!48649) Bool)

(assert (=> b!4329961 (= res!1774649 (noDuplicateKeys!330 newBucket!230))))

(declare-fun res!1774651 () Bool)

(assert (=> start!417212 (=> (not res!1774651) (not e!2694346))))

(assert (=> start!417212 (= res!1774651 (forall!8860 (toList!2635 lm!2227) lambda!134469))))

(assert (=> start!417212 e!2694346))

(declare-fun inv!64050 (ListLongMap!1269) Bool)

(assert (=> start!417212 (and (inv!64050 lm!2227) e!2694348)))

(assert (=> start!417212 true))

(assert (=> start!417212 e!2694347))

(assert (= (and start!417212 res!1774651) b!4329958))

(assert (= (and b!4329958 res!1774652) b!4329961))

(assert (= (and b!4329961 res!1774649) b!4329959))

(assert (= (and b!4329959 res!1774648) b!4329957))

(assert (= (and b!4329957 res!1774650) b!4329960))

(assert (= start!417212 b!4329963))

(assert (= (and start!417212 (is-Cons!48525 newBucket!230)) b!4329962))

(declare-fun m!4924139 () Bool)

(assert (=> b!4329960 m!4924139))

(declare-fun m!4924141 () Bool)

(assert (=> start!417212 m!4924141))

(declare-fun m!4924143 () Bool)

(assert (=> start!417212 m!4924143))

(declare-fun m!4924145 () Bool)

(assert (=> b!4329959 m!4924145))

(declare-fun m!4924147 () Bool)

(assert (=> b!4329961 m!4924147))

(declare-fun m!4924149 () Bool)

(assert (=> b!4329958 m!4924149))

(push 1)

(assert (not b!4329958))

(assert (not b!4329960))

(assert tp_is_empty!24511)

(assert (not b!4329962))

(assert (not b!4329959))

(assert (not start!417212))

(assert tp_is_empty!24509)

(assert (not b!4329961))

(assert (not b!4329963))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1272539 () Bool)

(assert (=> d!1272539 true))

(assert (=> d!1272539 true))

(declare-fun lambda!134477 () Int)

(declare-fun forall!8862 (List!48649 Int) Bool)

(assert (=> d!1272539 (= (allKeysSameHash!278 newBucket!230 hash!427 hashF!1461) (forall!8862 newBucket!230 lambda!134477))))

(declare-fun bs!607665 () Bool)

(assert (= bs!607665 d!1272539))

(declare-fun m!4924163 () Bool)

(assert (=> bs!607665 m!4924163))

(assert (=> b!4329959 d!1272539))

(declare-fun bs!607666 () Bool)

(declare-fun d!1272541 () Bool)

(assert (= bs!607666 (and d!1272541 start!417212)))

(declare-fun lambda!134483 () Int)

(assert (=> bs!607666 (not (= lambda!134483 lambda!134469))))

(assert (=> d!1272541 true))

(assert (=> d!1272541 (= (allKeysSameHashInMap!422 lm!2227 hashF!1461) (forall!8860 (toList!2635 lm!2227) lambda!134483))))

(declare-fun bs!607667 () Bool)

(assert (= bs!607667 d!1272541))

(declare-fun m!4924167 () Bool)

(assert (=> bs!607667 m!4924167))

(assert (=> b!4329958 d!1272541))

(declare-fun d!1272543 () Bool)

(declare-fun res!1774672 () Bool)

(declare-fun e!2694362 () Bool)

(assert (=> d!1272543 (=> res!1774672 e!2694362)))

(assert (=> d!1272543 (= res!1774672 (is-Nil!48526 (t!355562 (toList!2635 lm!2227))))))

(assert (=> d!1272543 (= (forall!8860 (t!355562 (toList!2635 lm!2227)) lambda!134469) e!2694362)))

(declare-fun b!4329999 () Bool)

(declare-fun e!2694363 () Bool)

(assert (=> b!4329999 (= e!2694362 e!2694363)))

(declare-fun res!1774673 () Bool)

(assert (=> b!4329999 (=> (not res!1774673) (not e!2694363))))

(declare-fun dynLambda!20535 (Int tuple2!47644) Bool)

(assert (=> b!4329999 (= res!1774673 (dynLambda!20535 lambda!134469 (h!53999 (t!355562 (toList!2635 lm!2227)))))))

(declare-fun b!4330000 () Bool)

(assert (=> b!4330000 (= e!2694363 (forall!8860 (t!355562 (t!355562 (toList!2635 lm!2227))) lambda!134469))))

(assert (= (and d!1272543 (not res!1774672)) b!4329999))

(assert (= (and b!4329999 res!1774673) b!4330000))

(declare-fun b_lambda!127603 () Bool)

(assert (=> (not b_lambda!127603) (not b!4329999)))

(declare-fun m!4924169 () Bool)

(assert (=> b!4329999 m!4924169))

(declare-fun m!4924171 () Bool)

(assert (=> b!4330000 m!4924171))

(assert (=> b!4329960 d!1272543))

(declare-fun d!1272547 () Bool)

(declare-fun res!1774674 () Bool)

(declare-fun e!2694364 () Bool)

(assert (=> d!1272547 (=> res!1774674 e!2694364)))

(assert (=> d!1272547 (= res!1774674 (is-Nil!48526 (toList!2635 lm!2227)))))

(assert (=> d!1272547 (= (forall!8860 (toList!2635 lm!2227) lambda!134469) e!2694364)))

(declare-fun b!4330001 () Bool)

(declare-fun e!2694365 () Bool)

(assert (=> b!4330001 (= e!2694364 e!2694365)))

(declare-fun res!1774675 () Bool)

(assert (=> b!4330001 (=> (not res!1774675) (not e!2694365))))

(assert (=> b!4330001 (= res!1774675 (dynLambda!20535 lambda!134469 (h!53999 (toList!2635 lm!2227))))))

(declare-fun b!4330002 () Bool)

(assert (=> b!4330002 (= e!2694365 (forall!8860 (t!355562 (toList!2635 lm!2227)) lambda!134469))))

(assert (= (and d!1272547 (not res!1774674)) b!4330001))

(assert (= (and b!4330001 res!1774675) b!4330002))

(declare-fun b_lambda!127605 () Bool)

(assert (=> (not b_lambda!127605) (not b!4330001)))

(declare-fun m!4924173 () Bool)

(assert (=> b!4330001 m!4924173))

(assert (=> b!4330002 m!4924139))

(assert (=> start!417212 d!1272547))

(declare-fun d!1272549 () Bool)

(declare-fun isStrictlySorted!28 (List!48650) Bool)

(assert (=> d!1272549 (= (inv!64050 lm!2227) (isStrictlySorted!28 (toList!2635 lm!2227)))))

(declare-fun bs!607669 () Bool)

(assert (= bs!607669 d!1272549))

(declare-fun m!4924175 () Bool)

(assert (=> bs!607669 m!4924175))

(assert (=> start!417212 d!1272549))

(declare-fun d!1272551 () Bool)

(declare-fun res!1774680 () Bool)

(declare-fun e!2694370 () Bool)

(assert (=> d!1272551 (=> res!1774680 e!2694370)))

(assert (=> d!1272551 (= res!1774680 (not (is-Cons!48525 newBucket!230)))))

(assert (=> d!1272551 (= (noDuplicateKeys!330 newBucket!230) e!2694370)))

(declare-fun b!4330009 () Bool)

(declare-fun e!2694371 () Bool)

(assert (=> b!4330009 (= e!2694370 e!2694371)))

(declare-fun res!1774681 () Bool)

(assert (=> b!4330009 (=> (not res!1774681) (not e!2694371))))

(declare-fun containsKey!471 (List!48649 K!9863) Bool)

(assert (=> b!4330009 (= res!1774681 (not (containsKey!471 (t!355561 newBucket!230) (_1!27115 (h!53998 newBucket!230)))))))

(declare-fun b!4330010 () Bool)

(assert (=> b!4330010 (= e!2694371 (noDuplicateKeys!330 (t!355561 newBucket!230)))))

(assert (= (and d!1272551 (not res!1774680)) b!4330009))

(assert (= (and b!4330009 res!1774681) b!4330010))

(declare-fun m!4924179 () Bool)

(assert (=> b!4330009 m!4924179))

(declare-fun m!4924181 () Bool)

(assert (=> b!4330010 m!4924181))

(assert (=> b!4329961 d!1272551))

(declare-fun b!4330015 () Bool)

(declare-fun e!2694374 () Bool)

(declare-fun tp!1328305 () Bool)

(declare-fun tp!1328306 () Bool)

(assert (=> b!4330015 (= e!2694374 (and tp!1328305 tp!1328306))))

(assert (=> b!4329963 (= tp!1328293 e!2694374)))

(assert (= (and b!4329963 (is-Cons!48526 (toList!2635 lm!2227))) b!4330015))

(declare-fun e!2694377 () Bool)

(declare-fun b!4330020 () Bool)

(declare-fun tp!1328309 () Bool)

(assert (=> b!4330020 (= e!2694377 (and tp_is_empty!24509 tp_is_empty!24511 tp!1328309))))

(assert (=> b!4329962 (= tp!1328294 e!2694377)))

(assert (= (and b!4329962 (is-Cons!48525 (t!355561 newBucket!230))) b!4330020))

(declare-fun b_lambda!127607 () Bool)

(assert (= b_lambda!127605 (or start!417212 b_lambda!127607)))

(declare-fun bs!607672 () Bool)

(declare-fun d!1272555 () Bool)

(assert (= bs!607672 (and d!1272555 start!417212)))

(assert (=> bs!607672 (= (dynLambda!20535 lambda!134469 (h!53999 (toList!2635 lm!2227))) (noDuplicateKeys!330 (_2!27116 (h!53999 (toList!2635 lm!2227)))))))

(declare-fun m!4924183 () Bool)

(assert (=> bs!607672 m!4924183))

(assert (=> b!4330001 d!1272555))

(declare-fun b_lambda!127609 () Bool)

(assert (= b_lambda!127603 (or start!417212 b_lambda!127609)))

(declare-fun bs!607673 () Bool)

(declare-fun d!1272557 () Bool)

(assert (= bs!607673 (and d!1272557 start!417212)))

(assert (=> bs!607673 (= (dynLambda!20535 lambda!134469 (h!53999 (t!355562 (toList!2635 lm!2227)))) (noDuplicateKeys!330 (_2!27116 (h!53999 (t!355562 (toList!2635 lm!2227))))))))

(declare-fun m!4924185 () Bool)

(assert (=> bs!607673 m!4924185))

(assert (=> b!4329999 d!1272557))

(push 1)

(assert (not b!4330015))

(assert (not b!4330002))

(assert (not d!1272549))

(assert (not b!4330009))

(assert (not d!1272541))

(assert tp_is_empty!24509)

(assert (not d!1272539))

(assert (not b_lambda!127609))

(assert (not b!4330020))

(assert tp_is_empty!24511)

(assert (not b_lambda!127607))

(assert (not bs!607673))

(assert (not b!4330010))

(assert (not bs!607672))

(assert (not b!4330000))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

