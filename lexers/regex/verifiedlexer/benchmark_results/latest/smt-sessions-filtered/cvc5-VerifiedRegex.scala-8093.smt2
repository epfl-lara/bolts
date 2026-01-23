; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!417236 () Bool)

(assert start!417236)

(declare-fun b!4330061 () Bool)

(declare-fun e!2694404 () Bool)

(declare-datatypes ((K!9868 0))(
  ( (K!9869 (val!16165 Int)) )
))
(declare-datatypes ((V!10114 0))(
  ( (V!10115 (val!16166 Int)) )
))
(declare-datatypes ((tuple2!47650 0))(
  ( (tuple2!47651 (_1!27119 K!9868) (_2!27119 V!10114)) )
))
(declare-datatypes ((List!48653 0))(
  ( (Nil!48529) (Cons!48529 (h!54004 tuple2!47650) (t!355565 List!48653)) )
))
(declare-datatypes ((tuple2!47652 0))(
  ( (tuple2!47653 (_1!27120 (_ BitVec 64)) (_2!27120 List!48653)) )
))
(declare-datatypes ((List!48654 0))(
  ( (Nil!48530) (Cons!48530 (h!54005 tuple2!47652) (t!355566 List!48654)) )
))
(declare-datatypes ((ListLongMap!1273 0))(
  ( (ListLongMap!1274 (toList!2637 List!48654)) )
))
(declare-fun lm!2227 () ListLongMap!1273)

(declare-datatypes ((Hashable!4712 0))(
  ( (HashableExt!4711 (__x!30415 Int)) )
))
(declare-fun hashF!1461 () Hashable!4712)

(declare-fun allKeysSameHashInMap!424 (ListLongMap!1273 Hashable!4712) Bool)

(assert (=> b!4330061 (= e!2694404 (not (allKeysSameHashInMap!424 (ListLongMap!1274 (t!355566 (toList!2637 lm!2227))) hashF!1461)))))

(declare-fun b!4330062 () Bool)

(declare-fun res!1774710 () Bool)

(assert (=> b!4330062 (=> (not res!1774710) (not e!2694404))))

(assert (=> b!4330062 (= res!1774710 (is-Cons!48530 (toList!2637 lm!2227)))))

(declare-fun tp_is_empty!24519 () Bool)

(declare-fun tp_is_empty!24517 () Bool)

(declare-fun tp!1328323 () Bool)

(declare-fun e!2694405 () Bool)

(declare-fun b!4330064 () Bool)

(assert (=> b!4330064 (= e!2694405 (and tp_is_empty!24517 tp_is_empty!24519 tp!1328323))))

(declare-fun b!4330065 () Bool)

(declare-fun res!1774709 () Bool)

(assert (=> b!4330065 (=> (not res!1774709) (not e!2694404))))

(declare-fun lambda!134491 () Int)

(declare-fun forall!8864 (List!48654 Int) Bool)

(assert (=> b!4330065 (= res!1774709 (forall!8864 (t!355566 (toList!2637 lm!2227)) lambda!134491))))

(declare-fun b!4330066 () Bool)

(declare-fun res!1774712 () Bool)

(assert (=> b!4330066 (=> (not res!1774712) (not e!2694404))))

(declare-fun newBucket!230 () List!48653)

(declare-fun noDuplicateKeys!332 (List!48653) Bool)

(assert (=> b!4330066 (= res!1774712 (noDuplicateKeys!332 newBucket!230))))

(declare-fun b!4330063 () Bool)

(declare-fun e!2694406 () Bool)

(declare-fun tp!1328324 () Bool)

(assert (=> b!4330063 (= e!2694406 tp!1328324)))

(declare-fun res!1774708 () Bool)

(assert (=> start!417236 (=> (not res!1774708) (not e!2694404))))

(assert (=> start!417236 (= res!1774708 (forall!8864 (toList!2637 lm!2227) lambda!134491))))

(assert (=> start!417236 e!2694404))

(declare-fun inv!64055 (ListLongMap!1273) Bool)

(assert (=> start!417236 (and (inv!64055 lm!2227) e!2694406)))

(assert (=> start!417236 true))

(assert (=> start!417236 e!2694405))

(declare-fun b!4330067 () Bool)

(declare-fun res!1774713 () Bool)

(assert (=> b!4330067 (=> (not res!1774713) (not e!2694404))))

(assert (=> b!4330067 (= res!1774713 (allKeysSameHashInMap!424 lm!2227 hashF!1461))))

(declare-fun b!4330068 () Bool)

(declare-fun res!1774711 () Bool)

(assert (=> b!4330068 (=> (not res!1774711) (not e!2694404))))

(declare-fun hash!427 () (_ BitVec 64))

(declare-fun allKeysSameHash!280 (List!48653 (_ BitVec 64) Hashable!4712) Bool)

(assert (=> b!4330068 (= res!1774711 (allKeysSameHash!280 newBucket!230 hash!427 hashF!1461))))

(assert (= (and start!417236 res!1774708) b!4330067))

(assert (= (and b!4330067 res!1774713) b!4330066))

(assert (= (and b!4330066 res!1774712) b!4330068))

(assert (= (and b!4330068 res!1774711) b!4330062))

(assert (= (and b!4330062 res!1774710) b!4330065))

(assert (= (and b!4330065 res!1774709) b!4330061))

(assert (= start!417236 b!4330063))

(assert (= (and start!417236 (is-Cons!48529 newBucket!230)) b!4330064))

(declare-fun m!4924203 () Bool)

(assert (=> b!4330061 m!4924203))

(declare-fun m!4924205 () Bool)

(assert (=> b!4330065 m!4924205))

(declare-fun m!4924207 () Bool)

(assert (=> b!4330067 m!4924207))

(declare-fun m!4924209 () Bool)

(assert (=> b!4330066 m!4924209))

(declare-fun m!4924211 () Bool)

(assert (=> b!4330068 m!4924211))

(declare-fun m!4924213 () Bool)

(assert (=> start!417236 m!4924213))

(declare-fun m!4924215 () Bool)

(assert (=> start!417236 m!4924215))

(push 1)

(assert (not b!4330063))

(assert tp_is_empty!24519)

(assert (not b!4330064))

(assert (not b!4330068))

(assert tp_is_empty!24517)

(assert (not start!417236))

(assert (not b!4330065))

(assert (not b!4330061))

(assert (not b!4330067))

(assert (not b!4330066))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1272570 () Bool)

(assert (=> d!1272570 true))

(assert (=> d!1272570 true))

(declare-fun lambda!134499 () Int)

(declare-fun forall!8866 (List!48653 Int) Bool)

(assert (=> d!1272570 (= (allKeysSameHash!280 newBucket!230 hash!427 hashF!1461) (forall!8866 newBucket!230 lambda!134499))))

(declare-fun bs!607679 () Bool)

(assert (= bs!607679 d!1272570))

(declare-fun m!4924231 () Bool)

(assert (=> bs!607679 m!4924231))

(assert (=> b!4330068 d!1272570))

(declare-fun d!1272572 () Bool)

(declare-fun res!1774736 () Bool)

(declare-fun e!2694420 () Bool)

(assert (=> d!1272572 (=> res!1774736 e!2694420)))

(assert (=> d!1272572 (= res!1774736 (is-Nil!48530 (toList!2637 lm!2227)))))

(assert (=> d!1272572 (= (forall!8864 (toList!2637 lm!2227) lambda!134491) e!2694420)))

(declare-fun b!4330101 () Bool)

(declare-fun e!2694421 () Bool)

(assert (=> b!4330101 (= e!2694420 e!2694421)))

(declare-fun res!1774737 () Bool)

(assert (=> b!4330101 (=> (not res!1774737) (not e!2694421))))

(declare-fun dynLambda!20537 (Int tuple2!47652) Bool)

(assert (=> b!4330101 (= res!1774737 (dynLambda!20537 lambda!134491 (h!54005 (toList!2637 lm!2227))))))

(declare-fun b!4330102 () Bool)

(assert (=> b!4330102 (= e!2694421 (forall!8864 (t!355566 (toList!2637 lm!2227)) lambda!134491))))

(assert (= (and d!1272572 (not res!1774736)) b!4330101))

(assert (= (and b!4330101 res!1774737) b!4330102))

(declare-fun b_lambda!127619 () Bool)

(assert (=> (not b_lambda!127619) (not b!4330101)))

(declare-fun m!4924233 () Bool)

(assert (=> b!4330101 m!4924233))

(assert (=> b!4330102 m!4924205))

(assert (=> start!417236 d!1272572))

(declare-fun d!1272574 () Bool)

(declare-fun isStrictlySorted!30 (List!48654) Bool)

(assert (=> d!1272574 (= (inv!64055 lm!2227) (isStrictlySorted!30 (toList!2637 lm!2227)))))

(declare-fun bs!607680 () Bool)

(assert (= bs!607680 d!1272574))

(declare-fun m!4924235 () Bool)

(assert (=> bs!607680 m!4924235))

(assert (=> start!417236 d!1272574))

(declare-fun d!1272578 () Bool)

(declare-fun res!1774742 () Bool)

(declare-fun e!2694426 () Bool)

(assert (=> d!1272578 (=> res!1774742 e!2694426)))

(assert (=> d!1272578 (= res!1774742 (not (is-Cons!48529 newBucket!230)))))

(assert (=> d!1272578 (= (noDuplicateKeys!332 newBucket!230) e!2694426)))

(declare-fun b!4330107 () Bool)

(declare-fun e!2694427 () Bool)

(assert (=> b!4330107 (= e!2694426 e!2694427)))

(declare-fun res!1774743 () Bool)

(assert (=> b!4330107 (=> (not res!1774743) (not e!2694427))))

(declare-fun containsKey!473 (List!48653 K!9868) Bool)

(assert (=> b!4330107 (= res!1774743 (not (containsKey!473 (t!355565 newBucket!230) (_1!27119 (h!54004 newBucket!230)))))))

(declare-fun b!4330108 () Bool)

(assert (=> b!4330108 (= e!2694427 (noDuplicateKeys!332 (t!355565 newBucket!230)))))

(assert (= (and d!1272578 (not res!1774742)) b!4330107))

(assert (= (and b!4330107 res!1774743) b!4330108))

(declare-fun m!4924237 () Bool)

(assert (=> b!4330107 m!4924237))

(declare-fun m!4924239 () Bool)

(assert (=> b!4330108 m!4924239))

(assert (=> b!4330066 d!1272578))

(declare-fun d!1272580 () Bool)

(declare-fun res!1774744 () Bool)

(declare-fun e!2694428 () Bool)

(assert (=> d!1272580 (=> res!1774744 e!2694428)))

(assert (=> d!1272580 (= res!1774744 (is-Nil!48530 (t!355566 (toList!2637 lm!2227))))))

(assert (=> d!1272580 (= (forall!8864 (t!355566 (toList!2637 lm!2227)) lambda!134491) e!2694428)))

(declare-fun b!4330109 () Bool)

(declare-fun e!2694429 () Bool)

(assert (=> b!4330109 (= e!2694428 e!2694429)))

(declare-fun res!1774745 () Bool)

(assert (=> b!4330109 (=> (not res!1774745) (not e!2694429))))

(assert (=> b!4330109 (= res!1774745 (dynLambda!20537 lambda!134491 (h!54005 (t!355566 (toList!2637 lm!2227)))))))

(declare-fun b!4330110 () Bool)

(assert (=> b!4330110 (= e!2694429 (forall!8864 (t!355566 (t!355566 (toList!2637 lm!2227))) lambda!134491))))

(assert (= (and d!1272580 (not res!1774744)) b!4330109))

(assert (= (and b!4330109 res!1774745) b!4330110))

(declare-fun b_lambda!127621 () Bool)

(assert (=> (not b_lambda!127621) (not b!4330109)))

(declare-fun m!4924241 () Bool)

(assert (=> b!4330109 m!4924241))

(declare-fun m!4924243 () Bool)

(assert (=> b!4330110 m!4924243))

(assert (=> b!4330065 d!1272580))

(declare-fun bs!607681 () Bool)

(declare-fun d!1272582 () Bool)

(assert (= bs!607681 (and d!1272582 start!417236)))

(declare-fun lambda!134504 () Int)

(assert (=> bs!607681 (not (= lambda!134504 lambda!134491))))

(assert (=> d!1272582 true))

(assert (=> d!1272582 (= (allKeysSameHashInMap!424 lm!2227 hashF!1461) (forall!8864 (toList!2637 lm!2227) lambda!134504))))

(declare-fun bs!607682 () Bool)

(assert (= bs!607682 d!1272582))

(declare-fun m!4924245 () Bool)

(assert (=> bs!607682 m!4924245))

(assert (=> b!4330067 d!1272582))

(declare-fun bs!607683 () Bool)

(declare-fun d!1272584 () Bool)

(assert (= bs!607683 (and d!1272584 start!417236)))

(declare-fun lambda!134505 () Int)

(assert (=> bs!607683 (not (= lambda!134505 lambda!134491))))

(declare-fun bs!607684 () Bool)

(assert (= bs!607684 (and d!1272584 d!1272582)))

(assert (=> bs!607684 (= lambda!134505 lambda!134504)))

(assert (=> d!1272584 true))

(assert (=> d!1272584 (= (allKeysSameHashInMap!424 (ListLongMap!1274 (t!355566 (toList!2637 lm!2227))) hashF!1461) (forall!8864 (toList!2637 (ListLongMap!1274 (t!355566 (toList!2637 lm!2227)))) lambda!134505))))

(declare-fun bs!607685 () Bool)

(assert (= bs!607685 d!1272584))

(declare-fun m!4924247 () Bool)

(assert (=> bs!607685 m!4924247))

(assert (=> b!4330061 d!1272584))

(declare-fun b!4330119 () Bool)

(declare-fun e!2694432 () Bool)

(declare-fun tp!1328335 () Bool)

(declare-fun tp!1328336 () Bool)

(assert (=> b!4330119 (= e!2694432 (and tp!1328335 tp!1328336))))

(assert (=> b!4330063 (= tp!1328324 e!2694432)))

(assert (= (and b!4330063 (is-Cons!48530 (toList!2637 lm!2227))) b!4330119))

(declare-fun tp!1328339 () Bool)

(declare-fun e!2694435 () Bool)

(declare-fun b!4330124 () Bool)

(assert (=> b!4330124 (= e!2694435 (and tp_is_empty!24517 tp_is_empty!24519 tp!1328339))))

(assert (=> b!4330064 (= tp!1328323 e!2694435)))

(assert (= (and b!4330064 (is-Cons!48529 (t!355565 newBucket!230))) b!4330124))

(declare-fun b_lambda!127623 () Bool)

(assert (= b_lambda!127619 (or start!417236 b_lambda!127623)))

(declare-fun bs!607688 () Bool)

(declare-fun d!1272586 () Bool)

(assert (= bs!607688 (and d!1272586 start!417236)))

(assert (=> bs!607688 (= (dynLambda!20537 lambda!134491 (h!54005 (toList!2637 lm!2227))) (noDuplicateKeys!332 (_2!27120 (h!54005 (toList!2637 lm!2227)))))))

(declare-fun m!4924251 () Bool)

(assert (=> bs!607688 m!4924251))

(assert (=> b!4330101 d!1272586))

(declare-fun b_lambda!127625 () Bool)

(assert (= b_lambda!127621 (or start!417236 b_lambda!127625)))

(declare-fun bs!607689 () Bool)

(declare-fun d!1272590 () Bool)

(assert (= bs!607689 (and d!1272590 start!417236)))

(assert (=> bs!607689 (= (dynLambda!20537 lambda!134491 (h!54005 (t!355566 (toList!2637 lm!2227)))) (noDuplicateKeys!332 (_2!27120 (h!54005 (t!355566 (toList!2637 lm!2227))))))))

(declare-fun m!4924253 () Bool)

(assert (=> bs!607689 m!4924253))

(assert (=> b!4330109 d!1272590))

(push 1)

(assert (not b_lambda!127625))

(assert (not d!1272582))

(assert tp_is_empty!24519)

(assert (not b_lambda!127623))

(assert (not d!1272584))

(assert (not b!4330110))

(assert (not b!4330124))

(assert tp_is_empty!24517)

(assert (not d!1272570))

(assert (not bs!607688))

(assert (not d!1272574))

(assert (not b!4330119))

(assert (not b!4330102))

(assert (not b!4330108))

(assert (not b!4330107))

(assert (not bs!607689))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1272606 () Bool)

(declare-fun res!1774760 () Bool)

(declare-fun e!2694456 () Bool)

(assert (=> d!1272606 (=> res!1774760 e!2694456)))

(assert (=> d!1272606 (= res!1774760 (is-Nil!48530 (toList!2637 (ListLongMap!1274 (t!355566 (toList!2637 lm!2227))))))))

(assert (=> d!1272606 (= (forall!8864 (toList!2637 (ListLongMap!1274 (t!355566 (toList!2637 lm!2227)))) lambda!134505) e!2694456)))

(declare-fun b!4330153 () Bool)

(declare-fun e!2694457 () Bool)

(assert (=> b!4330153 (= e!2694456 e!2694457)))

(declare-fun res!1774761 () Bool)

(assert (=> b!4330153 (=> (not res!1774761) (not e!2694457))))

(assert (=> b!4330153 (= res!1774761 (dynLambda!20537 lambda!134505 (h!54005 (toList!2637 (ListLongMap!1274 (t!355566 (toList!2637 lm!2227)))))))))

(declare-fun b!4330154 () Bool)

(assert (=> b!4330154 (= e!2694457 (forall!8864 (t!355566 (toList!2637 (ListLongMap!1274 (t!355566 (toList!2637 lm!2227))))) lambda!134505))))

(assert (= (and d!1272606 (not res!1774760)) b!4330153))

(assert (= (and b!4330153 res!1774761) b!4330154))

(declare-fun b_lambda!127635 () Bool)

(assert (=> (not b_lambda!127635) (not b!4330153)))

(declare-fun m!4924275 () Bool)

(assert (=> b!4330153 m!4924275))

(declare-fun m!4924277 () Bool)

(assert (=> b!4330154 m!4924277))

(assert (=> d!1272584 d!1272606))

(declare-fun d!1272608 () Bool)

(declare-fun res!1774762 () Bool)

(declare-fun e!2694458 () Bool)

(assert (=> d!1272608 (=> res!1774762 e!2694458)))

(assert (=> d!1272608 (= res!1774762 (is-Nil!48530 (toList!2637 lm!2227)))))

(assert (=> d!1272608 (= (forall!8864 (toList!2637 lm!2227) lambda!134504) e!2694458)))

(declare-fun b!4330155 () Bool)

(declare-fun e!2694459 () Bool)

(assert (=> b!4330155 (= e!2694458 e!2694459)))

(declare-fun res!1774763 () Bool)

(assert (=> b!4330155 (=> (not res!1774763) (not e!2694459))))

(assert (=> b!4330155 (= res!1774763 (dynLambda!20537 lambda!134504 (h!54005 (toList!2637 lm!2227))))))

(declare-fun b!4330156 () Bool)

(assert (=> b!4330156 (= e!2694459 (forall!8864 (t!355566 (toList!2637 lm!2227)) lambda!134504))))

(assert (= (and d!1272608 (not res!1774762)) b!4330155))

(assert (= (and b!4330155 res!1774763) b!4330156))

(declare-fun b_lambda!127637 () Bool)

(assert (=> (not b_lambda!127637) (not b!4330155)))

(declare-fun m!4924279 () Bool)

(assert (=> b!4330155 m!4924279))

(declare-fun m!4924281 () Bool)

(assert (=> b!4330156 m!4924281))

(assert (=> d!1272582 d!1272608))

(declare-fun d!1272610 () Bool)

(declare-fun res!1774768 () Bool)

(declare-fun e!2694464 () Bool)

(assert (=> d!1272610 (=> res!1774768 e!2694464)))

(assert (=> d!1272610 (= res!1774768 (and (is-Cons!48529 (t!355565 newBucket!230)) (= (_1!27119 (h!54004 (t!355565 newBucket!230))) (_1!27119 (h!54004 newBucket!230)))))))

(assert (=> d!1272610 (= (containsKey!473 (t!355565 newBucket!230) (_1!27119 (h!54004 newBucket!230))) e!2694464)))

(declare-fun b!4330161 () Bool)

(declare-fun e!2694465 () Bool)

(assert (=> b!4330161 (= e!2694464 e!2694465)))

(declare-fun res!1774769 () Bool)

(assert (=> b!4330161 (=> (not res!1774769) (not e!2694465))))

(assert (=> b!4330161 (= res!1774769 (is-Cons!48529 (t!355565 newBucket!230)))))

(declare-fun b!4330162 () Bool)

(assert (=> b!4330162 (= e!2694465 (containsKey!473 (t!355565 (t!355565 newBucket!230)) (_1!27119 (h!54004 newBucket!230))))))

(assert (= (and d!1272610 (not res!1774768)) b!4330161))

(assert (= (and b!4330161 res!1774769) b!4330162))

(declare-fun m!4924283 () Bool)

(assert (=> b!4330162 m!4924283))

(assert (=> b!4330107 d!1272610))

(declare-fun d!1272612 () Bool)

(declare-fun res!1774774 () Bool)

(declare-fun e!2694470 () Bool)

(assert (=> d!1272612 (=> res!1774774 e!2694470)))

(assert (=> d!1272612 (= res!1774774 (or (is-Nil!48530 (toList!2637 lm!2227)) (is-Nil!48530 (t!355566 (toList!2637 lm!2227)))))))

(assert (=> d!1272612 (= (isStrictlySorted!30 (toList!2637 lm!2227)) e!2694470)))

(declare-fun b!4330167 () Bool)

(declare-fun e!2694471 () Bool)

(assert (=> b!4330167 (= e!2694470 e!2694471)))

(declare-fun res!1774775 () Bool)

(assert (=> b!4330167 (=> (not res!1774775) (not e!2694471))))

(assert (=> b!4330167 (= res!1774775 (bvslt (_1!27120 (h!54005 (toList!2637 lm!2227))) (_1!27120 (h!54005 (t!355566 (toList!2637 lm!2227))))))))

(declare-fun b!4330168 () Bool)

(assert (=> b!4330168 (= e!2694471 (isStrictlySorted!30 (t!355566 (toList!2637 lm!2227))))))

(assert (= (and d!1272612 (not res!1774774)) b!4330167))

(assert (= (and b!4330167 res!1774775) b!4330168))

(declare-fun m!4924285 () Bool)

(assert (=> b!4330168 m!4924285))

(assert (=> d!1272574 d!1272612))

(declare-fun d!1272614 () Bool)

(declare-fun res!1774776 () Bool)

(declare-fun e!2694472 () Bool)

(assert (=> d!1272614 (=> res!1774776 e!2694472)))

(assert (=> d!1272614 (= res!1774776 (not (is-Cons!48529 (_2!27120 (h!54005 (toList!2637 lm!2227))))))))

(assert (=> d!1272614 (= (noDuplicateKeys!332 (_2!27120 (h!54005 (toList!2637 lm!2227)))) e!2694472)))

(declare-fun b!4330169 () Bool)

(declare-fun e!2694473 () Bool)

(assert (=> b!4330169 (= e!2694472 e!2694473)))

(declare-fun res!1774777 () Bool)

(assert (=> b!4330169 (=> (not res!1774777) (not e!2694473))))

(assert (=> b!4330169 (= res!1774777 (not (containsKey!473 (t!355565 (_2!27120 (h!54005 (toList!2637 lm!2227)))) (_1!27119 (h!54004 (_2!27120 (h!54005 (toList!2637 lm!2227))))))))))

(declare-fun b!4330170 () Bool)

(assert (=> b!4330170 (= e!2694473 (noDuplicateKeys!332 (t!355565 (_2!27120 (h!54005 (toList!2637 lm!2227))))))))

(assert (= (and d!1272614 (not res!1774776)) b!4330169))

(assert (= (and b!4330169 res!1774777) b!4330170))

(declare-fun m!4924287 () Bool)

(assert (=> b!4330169 m!4924287))

(declare-fun m!4924289 () Bool)

(assert (=> b!4330170 m!4924289))

(assert (=> bs!607688 d!1272614))

(declare-fun d!1272616 () Bool)

(declare-fun res!1774778 () Bool)

(declare-fun e!2694474 () Bool)

(assert (=> d!1272616 (=> res!1774778 e!2694474)))

(assert (=> d!1272616 (= res!1774778 (not (is-Cons!48529 (t!355565 newBucket!230))))))

(assert (=> d!1272616 (= (noDuplicateKeys!332 (t!355565 newBucket!230)) e!2694474)))

(declare-fun b!4330171 () Bool)

(declare-fun e!2694475 () Bool)

(assert (=> b!4330171 (= e!2694474 e!2694475)))

(declare-fun res!1774779 () Bool)

(assert (=> b!4330171 (=> (not res!1774779) (not e!2694475))))

(assert (=> b!4330171 (= res!1774779 (not (containsKey!473 (t!355565 (t!355565 newBucket!230)) (_1!27119 (h!54004 (t!355565 newBucket!230))))))))

(declare-fun b!4330172 () Bool)

(assert (=> b!4330172 (= e!2694475 (noDuplicateKeys!332 (t!355565 (t!355565 newBucket!230))))))

(assert (= (and d!1272616 (not res!1774778)) b!4330171))

(assert (= (and b!4330171 res!1774779) b!4330172))

(declare-fun m!4924291 () Bool)

(assert (=> b!4330171 m!4924291))

(declare-fun m!4924293 () Bool)

(assert (=> b!4330172 m!4924293))

(assert (=> b!4330108 d!1272616))

(assert (=> b!4330102 d!1272580))

(declare-fun d!1272618 () Bool)

(declare-fun res!1774784 () Bool)

(declare-fun e!2694480 () Bool)

(assert (=> d!1272618 (=> res!1774784 e!2694480)))

(assert (=> d!1272618 (= res!1774784 (is-Nil!48529 newBucket!230))))

(assert (=> d!1272618 (= (forall!8866 newBucket!230 lambda!134499) e!2694480)))

(declare-fun b!4330177 () Bool)

(declare-fun e!2694481 () Bool)

(assert (=> b!4330177 (= e!2694480 e!2694481)))

(declare-fun res!1774785 () Bool)

(assert (=> b!4330177 (=> (not res!1774785) (not e!2694481))))

(declare-fun dynLambda!20539 (Int tuple2!47650) Bool)

(assert (=> b!4330177 (= res!1774785 (dynLambda!20539 lambda!134499 (h!54004 newBucket!230)))))

(declare-fun b!4330178 () Bool)

(assert (=> b!4330178 (= e!2694481 (forall!8866 (t!355565 newBucket!230) lambda!134499))))

(assert (= (and d!1272618 (not res!1774784)) b!4330177))

(assert (= (and b!4330177 res!1774785) b!4330178))

(declare-fun b_lambda!127639 () Bool)

(assert (=> (not b_lambda!127639) (not b!4330177)))

(declare-fun m!4924295 () Bool)

(assert (=> b!4330177 m!4924295))

(declare-fun m!4924297 () Bool)

(assert (=> b!4330178 m!4924297))

(assert (=> d!1272570 d!1272618))

(declare-fun d!1272620 () Bool)

(declare-fun res!1774786 () Bool)

(declare-fun e!2694482 () Bool)

(assert (=> d!1272620 (=> res!1774786 e!2694482)))

(assert (=> d!1272620 (= res!1774786 (is-Nil!48530 (t!355566 (t!355566 (toList!2637 lm!2227)))))))

(assert (=> d!1272620 (= (forall!8864 (t!355566 (t!355566 (toList!2637 lm!2227))) lambda!134491) e!2694482)))

(declare-fun b!4330179 () Bool)

(declare-fun e!2694483 () Bool)

(assert (=> b!4330179 (= e!2694482 e!2694483)))

(declare-fun res!1774787 () Bool)

(assert (=> b!4330179 (=> (not res!1774787) (not e!2694483))))

(assert (=> b!4330179 (= res!1774787 (dynLambda!20537 lambda!134491 (h!54005 (t!355566 (t!355566 (toList!2637 lm!2227))))))))

(declare-fun b!4330180 () Bool)

(assert (=> b!4330180 (= e!2694483 (forall!8864 (t!355566 (t!355566 (t!355566 (toList!2637 lm!2227)))) lambda!134491))))

(assert (= (and d!1272620 (not res!1774786)) b!4330179))

(assert (= (and b!4330179 res!1774787) b!4330180))

(declare-fun b_lambda!127641 () Bool)

(assert (=> (not b_lambda!127641) (not b!4330179)))

(declare-fun m!4924299 () Bool)

(assert (=> b!4330179 m!4924299))

(declare-fun m!4924301 () Bool)

(assert (=> b!4330180 m!4924301))

(assert (=> b!4330110 d!1272620))

(declare-fun d!1272622 () Bool)

(declare-fun res!1774788 () Bool)

(declare-fun e!2694484 () Bool)

(assert (=> d!1272622 (=> res!1774788 e!2694484)))

(assert (=> d!1272622 (= res!1774788 (not (is-Cons!48529 (_2!27120 (h!54005 (t!355566 (toList!2637 lm!2227)))))))))

(assert (=> d!1272622 (= (noDuplicateKeys!332 (_2!27120 (h!54005 (t!355566 (toList!2637 lm!2227))))) e!2694484)))

(declare-fun b!4330181 () Bool)

(declare-fun e!2694485 () Bool)

(assert (=> b!4330181 (= e!2694484 e!2694485)))

(declare-fun res!1774789 () Bool)

(assert (=> b!4330181 (=> (not res!1774789) (not e!2694485))))

(assert (=> b!4330181 (= res!1774789 (not (containsKey!473 (t!355565 (_2!27120 (h!54005 (t!355566 (toList!2637 lm!2227))))) (_1!27119 (h!54004 (_2!27120 (h!54005 (t!355566 (toList!2637 lm!2227)))))))))))

(declare-fun b!4330182 () Bool)

(assert (=> b!4330182 (= e!2694485 (noDuplicateKeys!332 (t!355565 (_2!27120 (h!54005 (t!355566 (toList!2637 lm!2227)))))))))

(assert (= (and d!1272622 (not res!1774788)) b!4330181))

(assert (= (and b!4330181 res!1774789) b!4330182))

(declare-fun m!4924303 () Bool)

(assert (=> b!4330181 m!4924303))

(declare-fun m!4924305 () Bool)

(assert (=> b!4330182 m!4924305))

(assert (=> bs!607689 d!1272622))

(declare-fun tp!1328349 () Bool)

(declare-fun b!4330183 () Bool)

(declare-fun e!2694486 () Bool)

(assert (=> b!4330183 (= e!2694486 (and tp_is_empty!24517 tp_is_empty!24519 tp!1328349))))

(assert (=> b!4330124 (= tp!1328339 e!2694486)))

(assert (= (and b!4330124 (is-Cons!48529 (t!355565 (t!355565 newBucket!230)))) b!4330183))

(declare-fun b!4330184 () Bool)

(declare-fun tp!1328350 () Bool)

(declare-fun e!2694487 () Bool)

(assert (=> b!4330184 (= e!2694487 (and tp_is_empty!24517 tp_is_empty!24519 tp!1328350))))

(assert (=> b!4330119 (= tp!1328335 e!2694487)))

(assert (= (and b!4330119 (is-Cons!48529 (_2!27120 (h!54005 (toList!2637 lm!2227))))) b!4330184))

(declare-fun b!4330185 () Bool)

(declare-fun e!2694488 () Bool)

(declare-fun tp!1328351 () Bool)

(declare-fun tp!1328352 () Bool)

(assert (=> b!4330185 (= e!2694488 (and tp!1328351 tp!1328352))))

(assert (=> b!4330119 (= tp!1328336 e!2694488)))

(assert (= (and b!4330119 (is-Cons!48530 (t!355566 (toList!2637 lm!2227)))) b!4330185))

(declare-fun b_lambda!127643 () Bool)

(assert (= b_lambda!127635 (or d!1272584 b_lambda!127643)))

(declare-fun bs!607697 () Bool)

(declare-fun d!1272624 () Bool)

(assert (= bs!607697 (and d!1272624 d!1272584)))

(assert (=> bs!607697 (= (dynLambda!20537 lambda!134505 (h!54005 (toList!2637 (ListLongMap!1274 (t!355566 (toList!2637 lm!2227)))))) (allKeysSameHash!280 (_2!27120 (h!54005 (toList!2637 (ListLongMap!1274 (t!355566 (toList!2637 lm!2227)))))) (_1!27120 (h!54005 (toList!2637 (ListLongMap!1274 (t!355566 (toList!2637 lm!2227)))))) hashF!1461))))

(declare-fun m!4924307 () Bool)

(assert (=> bs!607697 m!4924307))

(assert (=> b!4330153 d!1272624))

(declare-fun b_lambda!127645 () Bool)

(assert (= b_lambda!127641 (or start!417236 b_lambda!127645)))

(declare-fun bs!607698 () Bool)

(declare-fun d!1272626 () Bool)

(assert (= bs!607698 (and d!1272626 start!417236)))

(assert (=> bs!607698 (= (dynLambda!20537 lambda!134491 (h!54005 (t!355566 (t!355566 (toList!2637 lm!2227))))) (noDuplicateKeys!332 (_2!27120 (h!54005 (t!355566 (t!355566 (toList!2637 lm!2227)))))))))

(declare-fun m!4924309 () Bool)

(assert (=> bs!607698 m!4924309))

(assert (=> b!4330179 d!1272626))

(declare-fun b_lambda!127647 () Bool)

(assert (= b_lambda!127637 (or d!1272582 b_lambda!127647)))

(declare-fun bs!607699 () Bool)

(declare-fun d!1272628 () Bool)

(assert (= bs!607699 (and d!1272628 d!1272582)))

(assert (=> bs!607699 (= (dynLambda!20537 lambda!134504 (h!54005 (toList!2637 lm!2227))) (allKeysSameHash!280 (_2!27120 (h!54005 (toList!2637 lm!2227))) (_1!27120 (h!54005 (toList!2637 lm!2227))) hashF!1461))))

(declare-fun m!4924311 () Bool)

(assert (=> bs!607699 m!4924311))

(assert (=> b!4330155 d!1272628))

(declare-fun b_lambda!127649 () Bool)

(assert (= b_lambda!127639 (or d!1272570 b_lambda!127649)))

(declare-fun bs!607700 () Bool)

(declare-fun d!1272630 () Bool)

(assert (= bs!607700 (and d!1272630 d!1272570)))

(declare-fun hash!1253 (Hashable!4712 K!9868) (_ BitVec 64))

(assert (=> bs!607700 (= (dynLambda!20539 lambda!134499 (h!54004 newBucket!230)) (= (hash!1253 hashF!1461 (_1!27119 (h!54004 newBucket!230))) hash!427))))

(declare-fun m!4924313 () Bool)

(assert (=> bs!607700 m!4924313))

(assert (=> b!4330177 d!1272630))

(push 1)

(assert (not b!4330168))

(assert tp_is_empty!24519)

(assert (not b!4330171))

(assert (not b_lambda!127649))

(assert (not bs!607698))

(assert (not bs!607700))

(assert tp_is_empty!24517)

(assert (not b!4330184))

(assert (not b!4330180))

(assert (not bs!607697))

(assert (not b_lambda!127647))

(assert (not b!4330156))

(assert (not bs!607699))

(assert (not b!4330172))

(assert (not b_lambda!127625))

(assert (not b_lambda!127623))

(assert (not b!4330162))

(assert (not b!4330169))

(assert (not b!4330183))

(assert (not b_lambda!127645))

(assert (not b!4330185))

(assert (not b!4330178))

(assert (not b!4330170))

(assert (not b_lambda!127643))

(assert (not b!4330154))

(assert (not b!4330182))

(assert (not b!4330181))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

