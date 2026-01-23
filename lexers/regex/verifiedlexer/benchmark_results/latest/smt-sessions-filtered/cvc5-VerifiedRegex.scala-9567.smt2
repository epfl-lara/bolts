; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!503724 () Bool)

(assert start!503724)

(declare-fun b!4840441 () Bool)

(declare-fun res!2063543 () Bool)

(declare-fun e!3025059 () Bool)

(assert (=> b!4840441 (=> (not res!2063543) (not e!3025059))))

(declare-datatypes ((K!17122 0))(
  ( (K!17123 (val!22003 Int)) )
))
(declare-datatypes ((V!17368 0))(
  ( (V!17369 (val!22004 Int)) )
))
(declare-datatypes ((tuple2!58878 0))(
  ( (tuple2!58879 (_1!32733 K!17122) (_2!32733 V!17368)) )
))
(declare-datatypes ((List!55488 0))(
  ( (Nil!55364) (Cons!55364 (h!61799 tuple2!58878) (t!362984 List!55488)) )
))
(declare-datatypes ((tuple2!58880 0))(
  ( (tuple2!58881 (_1!32734 (_ BitVec 64)) (_2!32734 List!55488)) )
))
(declare-datatypes ((List!55489 0))(
  ( (Nil!55365) (Cons!55365 (h!61800 tuple2!58880) (t!362985 List!55489)) )
))
(declare-datatypes ((ListLongMap!6305 0))(
  ( (ListLongMap!6306 (toList!7755 List!55489)) )
))
(declare-fun lm!2671 () ListLongMap!6305)

(declare-fun key!6540 () K!17122)

(declare-fun containsKey!4587 (List!55488 K!17122) Bool)

(assert (=> b!4840441 (= res!2063543 (containsKey!4587 (_2!32734 (h!61800 (toList!7755 lm!2671))) key!6540))))

(declare-fun res!2063547 () Bool)

(assert (=> start!503724 (=> (not res!2063547) (not e!3025059))))

(declare-fun lambda!240961 () Int)

(declare-fun forall!12845 (List!55489 Int) Bool)

(assert (=> start!503724 (= res!2063547 (forall!12845 (toList!7755 lm!2671) lambda!240961))))

(assert (=> start!503724 e!3025059))

(declare-fun e!3025060 () Bool)

(declare-fun inv!71023 (ListLongMap!6305) Bool)

(assert (=> start!503724 (and (inv!71023 lm!2671) e!3025060)))

(assert (=> start!503724 true))

(declare-fun tp_is_empty!34945 () Bool)

(assert (=> start!503724 tp_is_empty!34945))

(declare-fun b!4840442 () Bool)

(declare-fun tp!1363843 () Bool)

(assert (=> b!4840442 (= e!3025060 tp!1363843)))

(declare-fun b!4840443 () Bool)

(declare-fun res!2063545 () Bool)

(assert (=> b!4840443 (=> (not res!2063545) (not e!3025059))))

(declare-datatypes ((Hashable!7421 0))(
  ( (HashableExt!7420 (__x!33696 Int)) )
))
(declare-fun hashF!1662 () Hashable!7421)

(declare-fun allKeysSameHashInMap!2737 (ListLongMap!6305 Hashable!7421) Bool)

(assert (=> b!4840443 (= res!2063545 (allKeysSameHashInMap!2737 lm!2671 hashF!1662))))

(declare-fun b!4840444 () Bool)

(declare-fun res!2063548 () Bool)

(assert (=> b!4840444 (=> (not res!2063548) (not e!3025059))))

(assert (=> b!4840444 (= res!2063548 (is-Cons!55365 (toList!7755 lm!2671)))))

(declare-fun b!4840445 () Bool)

(declare-fun res!2063544 () Bool)

(assert (=> b!4840445 (=> (not res!2063544) (not e!3025059))))

(declare-fun containsKeyBiggerList!705 (List!55489 K!17122) Bool)

(assert (=> b!4840445 (= res!2063544 (containsKeyBiggerList!705 (toList!7755 lm!2671) key!6540))))

(declare-fun b!4840446 () Bool)

(declare-fun e!3025058 () Bool)

(assert (=> b!4840446 (= e!3025059 e!3025058)))

(declare-fun res!2063546 () Bool)

(assert (=> b!4840446 (=> (not res!2063546) (not e!3025058))))

(assert (=> b!4840446 (= res!2063546 (forall!12845 (toList!7755 lm!2671) lambda!240961))))

(declare-fun lt!1984765 () V!17368)

(declare-fun getValue!189 (List!55489 K!17122) V!17368)

(assert (=> b!4840446 (= lt!1984765 (getValue!189 (toList!7755 lm!2671) key!6540))))

(declare-fun b!4840447 () Bool)

(declare-fun head!10383 (List!55489) tuple2!58880)

(assert (=> b!4840447 (= e!3025058 (not (containsKey!4587 (_2!32734 (head!10383 (toList!7755 lm!2671))) key!6540)))))

(assert (= (and start!503724 res!2063547) b!4840443))

(assert (= (and b!4840443 res!2063545) b!4840445))

(assert (= (and b!4840445 res!2063544) b!4840444))

(assert (= (and b!4840444 res!2063548) b!4840441))

(assert (= (and b!4840441 res!2063543) b!4840446))

(assert (= (and b!4840446 res!2063546) b!4840447))

(assert (= start!503724 b!4840442))

(declare-fun m!5836170 () Bool)

(assert (=> b!4840445 m!5836170))

(declare-fun m!5836172 () Bool)

(assert (=> b!4840443 m!5836172))

(declare-fun m!5836174 () Bool)

(assert (=> b!4840441 m!5836174))

(declare-fun m!5836176 () Bool)

(assert (=> b!4840447 m!5836176))

(declare-fun m!5836178 () Bool)

(assert (=> b!4840447 m!5836178))

(declare-fun m!5836180 () Bool)

(assert (=> start!503724 m!5836180))

(declare-fun m!5836182 () Bool)

(assert (=> start!503724 m!5836182))

(assert (=> b!4840446 m!5836180))

(declare-fun m!5836184 () Bool)

(assert (=> b!4840446 m!5836184))

(push 1)

(assert (not b!4840443))

(assert (not start!503724))

(assert tp_is_empty!34945)

(assert (not b!4840445))

(assert (not b!4840447))

(assert (not b!4840446))

(assert (not b!4840441))

(assert (not b!4840442))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1551596 () Bool)

(declare-fun res!2063571 () Bool)

(declare-fun e!3025074 () Bool)

(assert (=> d!1551596 (=> res!2063571 e!3025074)))

(assert (=> d!1551596 (= res!2063571 (is-Nil!55365 (toList!7755 lm!2671)))))

(assert (=> d!1551596 (= (forall!12845 (toList!7755 lm!2671) lambda!240961) e!3025074)))

(declare-fun b!4840473 () Bool)

(declare-fun e!3025075 () Bool)

(assert (=> b!4840473 (= e!3025074 e!3025075)))

(declare-fun res!2063572 () Bool)

(assert (=> b!4840473 (=> (not res!2063572) (not e!3025075))))

(declare-fun dynLambda!22297 (Int tuple2!58880) Bool)

(assert (=> b!4840473 (= res!2063572 (dynLambda!22297 lambda!240961 (h!61800 (toList!7755 lm!2671))))))

(declare-fun b!4840474 () Bool)

(assert (=> b!4840474 (= e!3025075 (forall!12845 (t!362985 (toList!7755 lm!2671)) lambda!240961))))

(assert (= (and d!1551596 (not res!2063571)) b!4840473))

(assert (= (and b!4840473 res!2063572) b!4840474))

(declare-fun b_lambda!191331 () Bool)

(assert (=> (not b_lambda!191331) (not b!4840473)))

(declare-fun m!5836202 () Bool)

(assert (=> b!4840473 m!5836202))

(declare-fun m!5836204 () Bool)

(assert (=> b!4840474 m!5836204))

(assert (=> b!4840446 d!1551596))

(declare-fun d!1551598 () Bool)

(declare-fun c!824333 () Bool)

(declare-fun e!3025081 () Bool)

(assert (=> d!1551598 (= c!824333 e!3025081)))

(declare-fun res!2063575 () Bool)

(assert (=> d!1551598 (=> (not res!2063575) (not e!3025081))))

(assert (=> d!1551598 (= res!2063575 (is-Cons!55365 (toList!7755 lm!2671)))))

(declare-fun e!3025080 () V!17368)

(assert (=> d!1551598 (= (getValue!189 (toList!7755 lm!2671) key!6540) e!3025080)))

(declare-fun b!4840483 () Bool)

(assert (=> b!4840483 (= e!3025081 (containsKey!4587 (_2!32734 (h!61800 (toList!7755 lm!2671))) key!6540))))

(declare-fun b!4840481 () Bool)

(declare-datatypes ((Option!13610 0))(
  ( (None!13609) (Some!13609 (v!49335 tuple2!58878)) )
))
(declare-fun get!18950 (Option!13610) tuple2!58878)

(declare-fun getPair!1050 (List!55488 K!17122) Option!13610)

(assert (=> b!4840481 (= e!3025080 (_2!32733 (get!18950 (getPair!1050 (_2!32734 (h!61800 (toList!7755 lm!2671))) key!6540))))))

(declare-fun b!4840482 () Bool)

(assert (=> b!4840482 (= e!3025080 (getValue!189 (t!362985 (toList!7755 lm!2671)) key!6540))))

(assert (= (and d!1551598 res!2063575) b!4840483))

(assert (= (and d!1551598 c!824333) b!4840481))

(assert (= (and d!1551598 (not c!824333)) b!4840482))

(assert (=> b!4840483 m!5836174))

(declare-fun m!5836206 () Bool)

(assert (=> b!4840481 m!5836206))

(assert (=> b!4840481 m!5836206))

(declare-fun m!5836208 () Bool)

(assert (=> b!4840481 m!5836208))

(declare-fun m!5836210 () Bool)

(assert (=> b!4840482 m!5836210))

(assert (=> b!4840446 d!1551598))

(declare-fun d!1551600 () Bool)

(declare-fun res!2063580 () Bool)

(declare-fun e!3025086 () Bool)

(assert (=> d!1551600 (=> res!2063580 e!3025086)))

(assert (=> d!1551600 (= res!2063580 (and (is-Cons!55364 (_2!32734 (h!61800 (toList!7755 lm!2671)))) (= (_1!32733 (h!61799 (_2!32734 (h!61800 (toList!7755 lm!2671))))) key!6540)))))

(assert (=> d!1551600 (= (containsKey!4587 (_2!32734 (h!61800 (toList!7755 lm!2671))) key!6540) e!3025086)))

(declare-fun b!4840488 () Bool)

(declare-fun e!3025087 () Bool)

(assert (=> b!4840488 (= e!3025086 e!3025087)))

(declare-fun res!2063581 () Bool)

(assert (=> b!4840488 (=> (not res!2063581) (not e!3025087))))

(assert (=> b!4840488 (= res!2063581 (is-Cons!55364 (_2!32734 (h!61800 (toList!7755 lm!2671)))))))

(declare-fun b!4840489 () Bool)

(assert (=> b!4840489 (= e!3025087 (containsKey!4587 (t!362984 (_2!32734 (h!61800 (toList!7755 lm!2671)))) key!6540))))

(assert (= (and d!1551600 (not res!2063580)) b!4840488))

(assert (= (and b!4840488 res!2063581) b!4840489))

(declare-fun m!5836212 () Bool)

(assert (=> b!4840489 m!5836212))

(assert (=> b!4840441 d!1551600))

(declare-fun d!1551602 () Bool)

(declare-fun res!2063589 () Bool)

(declare-fun e!3025094 () Bool)

(assert (=> d!1551602 (=> res!2063589 e!3025094)))

(declare-fun e!3025096 () Bool)

(assert (=> d!1551602 (= res!2063589 e!3025096)))

(declare-fun res!2063590 () Bool)

(assert (=> d!1551602 (=> (not res!2063590) (not e!3025096))))

(assert (=> d!1551602 (= res!2063590 (is-Cons!55365 (toList!7755 lm!2671)))))

(assert (=> d!1551602 (= (containsKeyBiggerList!705 (toList!7755 lm!2671) key!6540) e!3025094)))

(declare-fun b!4840496 () Bool)

(assert (=> b!4840496 (= e!3025096 (containsKey!4587 (_2!32734 (h!61800 (toList!7755 lm!2671))) key!6540))))

(declare-fun b!4840497 () Bool)

(declare-fun e!3025095 () Bool)

(assert (=> b!4840497 (= e!3025094 e!3025095)))

(declare-fun res!2063588 () Bool)

(assert (=> b!4840497 (=> (not res!2063588) (not e!3025095))))

(assert (=> b!4840497 (= res!2063588 (is-Cons!55365 (toList!7755 lm!2671)))))

(declare-fun b!4840498 () Bool)

(assert (=> b!4840498 (= e!3025095 (containsKeyBiggerList!705 (t!362985 (toList!7755 lm!2671)) key!6540))))

(assert (= (and d!1551602 res!2063590) b!4840496))

(assert (= (and d!1551602 (not res!2063589)) b!4840497))

(assert (= (and b!4840497 res!2063588) b!4840498))

(assert (=> b!4840496 m!5836174))

(declare-fun m!5836214 () Bool)

(assert (=> b!4840498 m!5836214))

(assert (=> b!4840445 d!1551602))

(assert (=> start!503724 d!1551596))

(declare-fun d!1551606 () Bool)

(declare-fun isStrictlySorted!1043 (List!55489) Bool)

(assert (=> d!1551606 (= (inv!71023 lm!2671) (isStrictlySorted!1043 (toList!7755 lm!2671)))))

(declare-fun bs!1168367 () Bool)

(assert (= bs!1168367 d!1551606))

(declare-fun m!5836216 () Bool)

(assert (=> bs!1168367 m!5836216))

(assert (=> start!503724 d!1551606))

(declare-fun bs!1168368 () Bool)

(declare-fun d!1551608 () Bool)

(assert (= bs!1168368 (and d!1551608 start!503724)))

(declare-fun lambda!240969 () Int)

(assert (=> bs!1168368 (not (= lambda!240969 lambda!240961))))

(assert (=> d!1551608 true))

(assert (=> d!1551608 (= (allKeysSameHashInMap!2737 lm!2671 hashF!1662) (forall!12845 (toList!7755 lm!2671) lambda!240969))))

(declare-fun bs!1168369 () Bool)

(assert (= bs!1168369 d!1551608))

(declare-fun m!5836218 () Bool)

(assert (=> bs!1168369 m!5836218))

(assert (=> b!4840443 d!1551608))

(declare-fun d!1551610 () Bool)

(declare-fun res!2063600 () Bool)

(declare-fun e!3025106 () Bool)

(assert (=> d!1551610 (=> res!2063600 e!3025106)))

(assert (=> d!1551610 (= res!2063600 (and (is-Cons!55364 (_2!32734 (head!10383 (toList!7755 lm!2671)))) (= (_1!32733 (h!61799 (_2!32734 (head!10383 (toList!7755 lm!2671))))) key!6540)))))

(assert (=> d!1551610 (= (containsKey!4587 (_2!32734 (head!10383 (toList!7755 lm!2671))) key!6540) e!3025106)))

(declare-fun b!4840510 () Bool)

(declare-fun e!3025107 () Bool)

(assert (=> b!4840510 (= e!3025106 e!3025107)))

(declare-fun res!2063601 () Bool)

(assert (=> b!4840510 (=> (not res!2063601) (not e!3025107))))

(assert (=> b!4840510 (= res!2063601 (is-Cons!55364 (_2!32734 (head!10383 (toList!7755 lm!2671)))))))

(declare-fun b!4840511 () Bool)

(assert (=> b!4840511 (= e!3025107 (containsKey!4587 (t!362984 (_2!32734 (head!10383 (toList!7755 lm!2671)))) key!6540))))

(assert (= (and d!1551610 (not res!2063600)) b!4840510))

(assert (= (and b!4840510 res!2063601) b!4840511))

(declare-fun m!5836220 () Bool)

(assert (=> b!4840511 m!5836220))

(assert (=> b!4840447 d!1551610))

(declare-fun d!1551612 () Bool)

(assert (=> d!1551612 (= (head!10383 (toList!7755 lm!2671)) (h!61800 (toList!7755 lm!2671)))))

(assert (=> b!4840447 d!1551612))

(declare-fun b!4840516 () Bool)

(declare-fun e!3025110 () Bool)

(declare-fun tp!1363851 () Bool)

(declare-fun tp!1363852 () Bool)

(assert (=> b!4840516 (= e!3025110 (and tp!1363851 tp!1363852))))

(assert (=> b!4840442 (= tp!1363843 e!3025110)))

(assert (= (and b!4840442 (is-Cons!55365 (toList!7755 lm!2671))) b!4840516))

(declare-fun b_lambda!191333 () Bool)

(assert (= b_lambda!191331 (or start!503724 b_lambda!191333)))

(declare-fun bs!1168370 () Bool)

(declare-fun d!1551616 () Bool)

(assert (= bs!1168370 (and d!1551616 start!503724)))

(declare-fun noDuplicateKeys!2543 (List!55488) Bool)

(assert (=> bs!1168370 (= (dynLambda!22297 lambda!240961 (h!61800 (toList!7755 lm!2671))) (noDuplicateKeys!2543 (_2!32734 (h!61800 (toList!7755 lm!2671)))))))

(declare-fun m!5836224 () Bool)

(assert (=> bs!1168370 m!5836224))

(assert (=> b!4840473 d!1551616))

(push 1)

(assert (not b!4840481))

(assert (not b!4840511))

(assert (not b!4840516))

(assert (not b!4840482))

(assert (not b!4840483))

(assert (not d!1551606))

(assert (not b_lambda!191333))

(assert (not b!4840474))

(assert (not b!4840496))

(assert (not bs!1168370))

(assert (not b!4840489))

(assert (not d!1551608))

(assert (not b!4840498))

(assert tp_is_empty!34945)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

