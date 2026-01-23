; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!505426 () Bool)

(assert start!505426)

(declare-fun b!4848520 () Bool)

(declare-fun e!3030647 () Bool)

(declare-fun tp!1364677 () Bool)

(assert (=> b!4848520 (= e!3030647 tp!1364677)))

(declare-fun b!4848521 () Bool)

(declare-fun e!3030645 () Bool)

(declare-fun e!3030643 () Bool)

(assert (=> b!4848521 (= e!3030645 e!3030643)))

(declare-fun res!2068900 () Bool)

(assert (=> b!4848521 (=> (not res!2068900) (not e!3030643))))

(declare-datatypes ((K!17362 0))(
  ( (K!17363 (val!22195 Int)) )
))
(declare-datatypes ((V!17608 0))(
  ( (V!17609 (val!22196 Int)) )
))
(declare-datatypes ((tuple2!59262 0))(
  ( (tuple2!59263 (_1!32925 K!17362) (_2!32925 V!17608)) )
))
(declare-datatypes ((List!55688 0))(
  ( (Nil!55564) (Cons!55564 (h!62001 tuple2!59262) (t!363184 List!55688)) )
))
(declare-datatypes ((tuple2!59264 0))(
  ( (tuple2!59265 (_1!32926 (_ BitVec 64)) (_2!32926 List!55688)) )
))
(declare-datatypes ((List!55689 0))(
  ( (Nil!55565) (Cons!55565 (h!62002 tuple2!59264) (t!363185 List!55689)) )
))
(declare-datatypes ((ListLongMap!6469 0))(
  ( (ListLongMap!6470 (toList!7863 List!55689)) )
))
(declare-fun lm!2646 () ListLongMap!6469)

(declare-fun lt!1989032 () (_ BitVec 64))

(declare-fun contains!19221 (ListLongMap!6469 (_ BitVec 64)) Bool)

(assert (=> b!4848521 (= res!2068900 (contains!19221 lm!2646 lt!1989032))))

(declare-datatypes ((Hashable!7503 0))(
  ( (HashableExt!7502 (__x!33778 Int)) )
))
(declare-fun hashF!1641 () Hashable!7503)

(declare-fun key!6445 () K!17362)

(declare-fun hash!5593 (Hashable!7503 K!17362) (_ BitVec 64))

(assert (=> b!4848521 (= lt!1989032 (hash!5593 hashF!1641 key!6445))))

(declare-fun b!4848522 () Bool)

(declare-fun res!2068902 () Bool)

(declare-fun e!3030646 () Bool)

(assert (=> b!4848522 (=> res!2068902 e!3030646)))

(assert (=> b!4848522 (= res!2068902 (or (and (is-Cons!55565 (toList!7863 lm!2646)) (= (_1!32926 (h!62002 (toList!7863 lm!2646))) lt!1989032)) (not (is-Cons!55565 (toList!7863 lm!2646))) (= lt!1989032 (_1!32926 (h!62002 (toList!7863 lm!2646))))))))

(declare-fun b!4848523 () Bool)

(declare-fun res!2068898 () Bool)

(assert (=> b!4848523 (=> (not res!2068898) (not e!3030645))))

(declare-fun allKeysSameHashInMap!2819 (ListLongMap!6469 Hashable!7503) Bool)

(assert (=> b!4848523 (= res!2068898 (allKeysSameHashInMap!2819 lm!2646 hashF!1641))))

(declare-fun b!4848524 () Bool)

(declare-fun e!3030644 () Bool)

(declare-fun lambda!242579 () Int)

(declare-fun forall!12956 (List!55689 Int) Bool)

(declare-fun tail!9529 (ListLongMap!6469) ListLongMap!6469)

(assert (=> b!4848524 (= e!3030644 (forall!12956 (toList!7863 (tail!9529 lm!2646)) lambda!242579))))

(declare-fun b!4848526 () Bool)

(assert (=> b!4848526 (= e!3030643 (not e!3030646))))

(declare-fun res!2068899 () Bool)

(assert (=> b!4848526 (=> res!2068899 e!3030646)))

(declare-fun lt!1989036 () List!55688)

(declare-datatypes ((Option!13676 0))(
  ( (None!13675) (Some!13675 (v!49443 tuple2!59262)) )
))
(declare-fun isDefined!10768 (Option!13676) Bool)

(declare-fun getPair!1093 (List!55688 K!17362) Option!13676)

(assert (=> b!4848526 (= res!2068899 (not (isDefined!10768 (getPair!1093 lt!1989036 key!6445))))))

(declare-datatypes ((Unit!145702 0))(
  ( (Unit!145703) )
))
(declare-fun lt!1989034 () Unit!145702)

(declare-fun lt!1989035 () tuple2!59264)

(declare-fun forallContained!4544 (List!55689 Int tuple2!59264) Unit!145702)

(assert (=> b!4848526 (= lt!1989034 (forallContained!4544 (toList!7863 lm!2646) lambda!242579 lt!1989035))))

(declare-fun contains!19222 (List!55689 tuple2!59264) Bool)

(assert (=> b!4848526 (contains!19222 (toList!7863 lm!2646) lt!1989035)))

(assert (=> b!4848526 (= lt!1989035 (tuple2!59265 lt!1989032 lt!1989036))))

(declare-fun lt!1989031 () Unit!145702)

(declare-fun lemmaGetValueImpliesTupleContained!770 (ListLongMap!6469 (_ BitVec 64) List!55688) Unit!145702)

(assert (=> b!4848526 (= lt!1989031 (lemmaGetValueImpliesTupleContained!770 lm!2646 lt!1989032 lt!1989036))))

(declare-fun apply!13446 (ListLongMap!6469 (_ BitVec 64)) List!55688)

(assert (=> b!4848526 (= lt!1989036 (apply!13446 lm!2646 lt!1989032))))

(declare-fun res!2068903 () Bool)

(assert (=> start!505426 (=> (not res!2068903) (not e!3030645))))

(assert (=> start!505426 (= res!2068903 (forall!12956 (toList!7863 lm!2646) lambda!242579))))

(assert (=> start!505426 e!3030645))

(declare-fun inv!71249 (ListLongMap!6469) Bool)

(assert (=> start!505426 (and (inv!71249 lm!2646) e!3030647)))

(assert (=> start!505426 true))

(declare-fun tp_is_empty!35197 () Bool)

(assert (=> start!505426 tp_is_empty!35197))

(declare-fun b!4848525 () Bool)

(assert (=> b!4848525 (= e!3030646 e!3030644)))

(declare-fun res!2068901 () Bool)

(assert (=> b!4848525 (=> res!2068901 e!3030644)))

(declare-fun containsKey!4687 (List!55688 K!17362) Bool)

(assert (=> b!4848525 (= res!2068901 (containsKey!4687 (_2!32926 (h!62002 (toList!7863 lm!2646))) key!6445))))

(assert (=> b!4848525 (not (containsKey!4687 (apply!13446 lm!2646 (_1!32926 (h!62002 (toList!7863 lm!2646)))) key!6445))))

(declare-fun lt!1989033 () Unit!145702)

(declare-fun lemmaNotSameHashThenCannotContainKey!253 (ListLongMap!6469 K!17362 (_ BitVec 64) Hashable!7503) Unit!145702)

(assert (=> b!4848525 (= lt!1989033 (lemmaNotSameHashThenCannotContainKey!253 lm!2646 key!6445 (_1!32926 (h!62002 (toList!7863 lm!2646))) hashF!1641))))

(assert (= (and start!505426 res!2068903) b!4848523))

(assert (= (and b!4848523 res!2068898) b!4848521))

(assert (= (and b!4848521 res!2068900) b!4848526))

(assert (= (and b!4848526 (not res!2068899)) b!4848522))

(assert (= (and b!4848522 (not res!2068902)) b!4848525))

(assert (= (and b!4848525 (not res!2068901)) b!4848524))

(assert (= start!505426 b!4848520))

(declare-fun m!5846584 () Bool)

(assert (=> b!4848525 m!5846584))

(declare-fun m!5846586 () Bool)

(assert (=> b!4848525 m!5846586))

(assert (=> b!4848525 m!5846586))

(declare-fun m!5846588 () Bool)

(assert (=> b!4848525 m!5846588))

(declare-fun m!5846590 () Bool)

(assert (=> b!4848525 m!5846590))

(declare-fun m!5846592 () Bool)

(assert (=> b!4848526 m!5846592))

(declare-fun m!5846594 () Bool)

(assert (=> b!4848526 m!5846594))

(declare-fun m!5846596 () Bool)

(assert (=> b!4848526 m!5846596))

(assert (=> b!4848526 m!5846596))

(declare-fun m!5846598 () Bool)

(assert (=> b!4848526 m!5846598))

(declare-fun m!5846600 () Bool)

(assert (=> b!4848526 m!5846600))

(declare-fun m!5846602 () Bool)

(assert (=> b!4848526 m!5846602))

(declare-fun m!5846604 () Bool)

(assert (=> b!4848523 m!5846604))

(declare-fun m!5846606 () Bool)

(assert (=> b!4848524 m!5846606))

(declare-fun m!5846608 () Bool)

(assert (=> b!4848524 m!5846608))

(declare-fun m!5846610 () Bool)

(assert (=> b!4848521 m!5846610))

(declare-fun m!5846612 () Bool)

(assert (=> b!4848521 m!5846612))

(declare-fun m!5846614 () Bool)

(assert (=> start!505426 m!5846614))

(declare-fun m!5846616 () Bool)

(assert (=> start!505426 m!5846616))

(push 1)

(assert (not b!4848524))

(assert (not b!4848526))

(assert (not start!505426))

(assert (not b!4848521))

(assert tp_is_empty!35197)

(assert (not b!4848520))

(assert (not b!4848525))

(assert (not b!4848523))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1172557 () Bool)

(declare-fun d!1555620 () Bool)

(assert (= bs!1172557 (and d!1555620 start!505426)))

(declare-fun lambda!242589 () Int)

(assert (=> bs!1172557 (not (= lambda!242589 lambda!242579))))

(assert (=> d!1555620 true))

(assert (=> d!1555620 (= (allKeysSameHashInMap!2819 lm!2646 hashF!1641) (forall!12956 (toList!7863 lm!2646) lambda!242589))))

(declare-fun bs!1172558 () Bool)

(assert (= bs!1172558 d!1555620))

(declare-fun m!5846652 () Bool)

(assert (=> bs!1172558 m!5846652))

(assert (=> b!4848523 d!1555620))

(declare-fun d!1555622 () Bool)

(declare-fun res!2068926 () Bool)

(declare-fun e!3030667 () Bool)

(assert (=> d!1555622 (=> res!2068926 e!3030667)))

(assert (=> d!1555622 (= res!2068926 (is-Nil!55565 (toList!7863 (tail!9529 lm!2646))))))

(assert (=> d!1555622 (= (forall!12956 (toList!7863 (tail!9529 lm!2646)) lambda!242579) e!3030667)))

(declare-fun b!4848554 () Bool)

(declare-fun e!3030668 () Bool)

(assert (=> b!4848554 (= e!3030667 e!3030668)))

(declare-fun res!2068927 () Bool)

(assert (=> b!4848554 (=> (not res!2068927) (not e!3030668))))

(declare-fun dynLambda!22357 (Int tuple2!59264) Bool)

(assert (=> b!4848554 (= res!2068927 (dynLambda!22357 lambda!242579 (h!62002 (toList!7863 (tail!9529 lm!2646)))))))

(declare-fun b!4848555 () Bool)

(assert (=> b!4848555 (= e!3030668 (forall!12956 (t!363185 (toList!7863 (tail!9529 lm!2646))) lambda!242579))))

(assert (= (and d!1555622 (not res!2068926)) b!4848554))

(assert (= (and b!4848554 res!2068927) b!4848555))

(declare-fun b_lambda!192571 () Bool)

(assert (=> (not b_lambda!192571) (not b!4848554)))

(declare-fun m!5846654 () Bool)

(assert (=> b!4848554 m!5846654))

(declare-fun m!5846656 () Bool)

(assert (=> b!4848555 m!5846656))

(assert (=> b!4848524 d!1555622))

(declare-fun d!1555626 () Bool)

(declare-fun tail!9531 (List!55689) List!55689)

(assert (=> d!1555626 (= (tail!9529 lm!2646) (ListLongMap!6470 (tail!9531 (toList!7863 lm!2646))))))

(declare-fun bs!1172559 () Bool)

(assert (= bs!1172559 d!1555626))

(declare-fun m!5846658 () Bool)

(assert (=> bs!1172559 m!5846658))

(assert (=> b!4848524 d!1555626))

(declare-fun d!1555628 () Bool)

(declare-fun res!2068932 () Bool)

(declare-fun e!3030673 () Bool)

(assert (=> d!1555628 (=> res!2068932 e!3030673)))

(assert (=> d!1555628 (= res!2068932 (is-Nil!55565 (toList!7863 lm!2646)))))

(assert (=> d!1555628 (= (forall!12956 (toList!7863 lm!2646) lambda!242579) e!3030673)))

(declare-fun b!4848558 () Bool)

(declare-fun e!3030674 () Bool)

(assert (=> b!4848558 (= e!3030673 e!3030674)))

(declare-fun res!2068933 () Bool)

(assert (=> b!4848558 (=> (not res!2068933) (not e!3030674))))

(assert (=> b!4848558 (= res!2068933 (dynLambda!22357 lambda!242579 (h!62002 (toList!7863 lm!2646))))))

(declare-fun b!4848559 () Bool)

(assert (=> b!4848559 (= e!3030674 (forall!12956 (t!363185 (toList!7863 lm!2646)) lambda!242579))))

(assert (= (and d!1555628 (not res!2068932)) b!4848558))

(assert (= (and b!4848558 res!2068933) b!4848559))

(declare-fun b_lambda!192573 () Bool)

(assert (=> (not b_lambda!192573) (not b!4848558)))

(declare-fun m!5846660 () Bool)

(assert (=> b!4848558 m!5846660))

(declare-fun m!5846662 () Bool)

(assert (=> b!4848559 m!5846662))

(assert (=> start!505426 d!1555628))

(declare-fun d!1555630 () Bool)

(declare-fun isStrictlySorted!1080 (List!55689) Bool)

(assert (=> d!1555630 (= (inv!71249 lm!2646) (isStrictlySorted!1080 (toList!7863 lm!2646)))))

(declare-fun bs!1172560 () Bool)

(assert (= bs!1172560 d!1555630))

(declare-fun m!5846664 () Bool)

(assert (=> bs!1172560 m!5846664))

(assert (=> start!505426 d!1555630))

(declare-fun d!1555632 () Bool)

(declare-fun res!2068940 () Bool)

(declare-fun e!3030681 () Bool)

(assert (=> d!1555632 (=> res!2068940 e!3030681)))

(assert (=> d!1555632 (= res!2068940 (and (is-Cons!55564 (_2!32926 (h!62002 (toList!7863 lm!2646)))) (= (_1!32925 (h!62001 (_2!32926 (h!62002 (toList!7863 lm!2646))))) key!6445)))))

(assert (=> d!1555632 (= (containsKey!4687 (_2!32926 (h!62002 (toList!7863 lm!2646))) key!6445) e!3030681)))

(declare-fun b!4848568 () Bool)

(declare-fun e!3030682 () Bool)

(assert (=> b!4848568 (= e!3030681 e!3030682)))

(declare-fun res!2068941 () Bool)

(assert (=> b!4848568 (=> (not res!2068941) (not e!3030682))))

(assert (=> b!4848568 (= res!2068941 (is-Cons!55564 (_2!32926 (h!62002 (toList!7863 lm!2646)))))))

(declare-fun b!4848569 () Bool)

(assert (=> b!4848569 (= e!3030682 (containsKey!4687 (t!363184 (_2!32926 (h!62002 (toList!7863 lm!2646)))) key!6445))))

(assert (= (and d!1555632 (not res!2068940)) b!4848568))

(assert (= (and b!4848568 res!2068941) b!4848569))

(declare-fun m!5846670 () Bool)

(assert (=> b!4848569 m!5846670))

(assert (=> b!4848525 d!1555632))

(declare-fun d!1555636 () Bool)

(declare-fun res!2068942 () Bool)

(declare-fun e!3030683 () Bool)

(assert (=> d!1555636 (=> res!2068942 e!3030683)))

(assert (=> d!1555636 (= res!2068942 (and (is-Cons!55564 (apply!13446 lm!2646 (_1!32926 (h!62002 (toList!7863 lm!2646))))) (= (_1!32925 (h!62001 (apply!13446 lm!2646 (_1!32926 (h!62002 (toList!7863 lm!2646)))))) key!6445)))))

(assert (=> d!1555636 (= (containsKey!4687 (apply!13446 lm!2646 (_1!32926 (h!62002 (toList!7863 lm!2646)))) key!6445) e!3030683)))

(declare-fun b!4848570 () Bool)

(declare-fun e!3030684 () Bool)

(assert (=> b!4848570 (= e!3030683 e!3030684)))

(declare-fun res!2068943 () Bool)

(assert (=> b!4848570 (=> (not res!2068943) (not e!3030684))))

(assert (=> b!4848570 (= res!2068943 (is-Cons!55564 (apply!13446 lm!2646 (_1!32926 (h!62002 (toList!7863 lm!2646))))))))

(declare-fun b!4848571 () Bool)

(assert (=> b!4848571 (= e!3030684 (containsKey!4687 (t!363184 (apply!13446 lm!2646 (_1!32926 (h!62002 (toList!7863 lm!2646))))) key!6445))))

(assert (= (and d!1555636 (not res!2068942)) b!4848570))

(assert (= (and b!4848570 res!2068943) b!4848571))

(declare-fun m!5846672 () Bool)

(assert (=> b!4848571 m!5846672))

(assert (=> b!4848525 d!1555636))

(declare-fun d!1555638 () Bool)

(declare-datatypes ((Option!13678 0))(
  ( (None!13677) (Some!13677 (v!49446 List!55688)) )
))
(declare-fun get!19039 (Option!13678) List!55688)

(declare-fun getValueByKey!2731 (List!55689 (_ BitVec 64)) Option!13678)

(assert (=> d!1555638 (= (apply!13446 lm!2646 (_1!32926 (h!62002 (toList!7863 lm!2646)))) (get!19039 (getValueByKey!2731 (toList!7863 lm!2646) (_1!32926 (h!62002 (toList!7863 lm!2646))))))))

(declare-fun bs!1172561 () Bool)

(assert (= bs!1172561 d!1555638))

(declare-fun m!5846674 () Bool)

(assert (=> bs!1172561 m!5846674))

(assert (=> bs!1172561 m!5846674))

(declare-fun m!5846676 () Bool)

(assert (=> bs!1172561 m!5846676))

(assert (=> b!4848525 d!1555638))

(declare-fun bs!1172563 () Bool)

(declare-fun d!1555640 () Bool)

(assert (= bs!1172563 (and d!1555640 start!505426)))

(declare-fun lambda!242592 () Int)

(assert (=> bs!1172563 (= lambda!242592 lambda!242579)))

(declare-fun bs!1172564 () Bool)

(assert (= bs!1172564 (and d!1555640 d!1555620)))

(assert (=> bs!1172564 (not (= lambda!242592 lambda!242589))))

(assert (=> d!1555640 (not (containsKey!4687 (apply!13446 lm!2646 (_1!32926 (h!62002 (toList!7863 lm!2646)))) key!6445))))

(declare-fun lt!1989057 () Unit!145702)

(declare-fun choose!35462 (ListLongMap!6469 K!17362 (_ BitVec 64) Hashable!7503) Unit!145702)

(assert (=> d!1555640 (= lt!1989057 (choose!35462 lm!2646 key!6445 (_1!32926 (h!62002 (toList!7863 lm!2646))) hashF!1641))))

(assert (=> d!1555640 (forall!12956 (toList!7863 lm!2646) lambda!242592)))

(assert (=> d!1555640 (= (lemmaNotSameHashThenCannotContainKey!253 lm!2646 key!6445 (_1!32926 (h!62002 (toList!7863 lm!2646))) hashF!1641) lt!1989057)))

(declare-fun bs!1172565 () Bool)

(assert (= bs!1172565 d!1555640))

(assert (=> bs!1172565 m!5846586))

(assert (=> bs!1172565 m!5846586))

(assert (=> bs!1172565 m!5846588))

(declare-fun m!5846680 () Bool)

(assert (=> bs!1172565 m!5846680))

(declare-fun m!5846682 () Bool)

(assert (=> bs!1172565 m!5846682))

(assert (=> b!4848525 d!1555640))

(declare-fun b!4848594 () Bool)

(declare-fun e!3030701 () Bool)

(assert (=> b!4848594 (= e!3030701 (not (containsKey!4687 lt!1989036 key!6445)))))

(declare-fun b!4848595 () Bool)

(declare-fun res!2068958 () Bool)

(declare-fun e!3030700 () Bool)

(assert (=> b!4848595 (=> (not res!2068958) (not e!3030700))))

(declare-fun lt!1989060 () Option!13676)

(declare-fun get!19040 (Option!13676) tuple2!59262)

(assert (=> b!4848595 (= res!2068958 (= (_1!32925 (get!19040 lt!1989060)) key!6445))))

(declare-fun b!4848596 () Bool)

(declare-fun e!3030703 () Bool)

(assert (=> b!4848596 (= e!3030703 e!3030700)))

(declare-fun res!2068956 () Bool)

(assert (=> b!4848596 (=> (not res!2068956) (not e!3030700))))

(assert (=> b!4848596 (= res!2068956 (isDefined!10768 lt!1989060))))

(declare-fun b!4848597 () Bool)

(declare-fun e!3030699 () Option!13676)

(assert (=> b!4848597 (= e!3030699 (Some!13675 (h!62001 lt!1989036)))))

(declare-fun b!4848598 () Bool)

(declare-fun e!3030702 () Option!13676)

(assert (=> b!4848598 (= e!3030702 (getPair!1093 (t!363184 lt!1989036) key!6445))))

(declare-fun b!4848599 () Bool)

(assert (=> b!4848599 (= e!3030702 None!13675)))

(declare-fun d!1555644 () Bool)

(assert (=> d!1555644 e!3030703))

(declare-fun res!2068959 () Bool)

(assert (=> d!1555644 (=> res!2068959 e!3030703)))

(assert (=> d!1555644 (= res!2068959 e!3030701)))

(declare-fun res!2068957 () Bool)

(assert (=> d!1555644 (=> (not res!2068957) (not e!3030701))))

(declare-fun isEmpty!29735 (Option!13676) Bool)

(assert (=> d!1555644 (= res!2068957 (isEmpty!29735 lt!1989060))))

(assert (=> d!1555644 (= lt!1989060 e!3030699)))

(declare-fun c!825221 () Bool)

(assert (=> d!1555644 (= c!825221 (and (is-Cons!55564 lt!1989036) (= (_1!32925 (h!62001 lt!1989036)) key!6445)))))

(declare-fun noDuplicateKeys!2591 (List!55688) Bool)

(assert (=> d!1555644 (noDuplicateKeys!2591 lt!1989036)))

(assert (=> d!1555644 (= (getPair!1093 lt!1989036 key!6445) lt!1989060)))

(declare-fun b!4848600 () Bool)

(assert (=> b!4848600 (= e!3030699 e!3030702)))

(declare-fun c!825222 () Bool)

(assert (=> b!4848600 (= c!825222 (is-Cons!55564 lt!1989036))))

(declare-fun b!4848601 () Bool)

(declare-fun contains!19225 (List!55688 tuple2!59262) Bool)

(assert (=> b!4848601 (= e!3030700 (contains!19225 lt!1989036 (get!19040 lt!1989060)))))

(assert (= (and d!1555644 c!825221) b!4848597))

(assert (= (and d!1555644 (not c!825221)) b!4848600))

(assert (= (and b!4848600 c!825222) b!4848598))

(assert (= (and b!4848600 (not c!825222)) b!4848599))

(assert (= (and d!1555644 res!2068957) b!4848594))

(assert (= (and d!1555644 (not res!2068959)) b!4848596))

(assert (= (and b!4848596 res!2068956) b!4848595))

(assert (= (and b!4848595 res!2068958) b!4848601))

(declare-fun m!5846686 () Bool)

(assert (=> d!1555644 m!5846686))

(declare-fun m!5846688 () Bool)

(assert (=> d!1555644 m!5846688))

(declare-fun m!5846690 () Bool)

(assert (=> b!4848598 m!5846690))

(declare-fun m!5846692 () Bool)

(assert (=> b!4848595 m!5846692))

(assert (=> b!4848601 m!5846692))

(assert (=> b!4848601 m!5846692))

(declare-fun m!5846694 () Bool)

(assert (=> b!4848601 m!5846694))

(declare-fun m!5846696 () Bool)

(assert (=> b!4848594 m!5846696))

(declare-fun m!5846698 () Bool)

(assert (=> b!4848596 m!5846698))

(assert (=> b!4848526 d!1555644))

(declare-fun d!1555648 () Bool)

(assert (=> d!1555648 (= (isDefined!10768 (getPair!1093 lt!1989036 key!6445)) (not (isEmpty!29735 (getPair!1093 lt!1989036 key!6445))))))

(declare-fun bs!1172568 () Bool)

(assert (= bs!1172568 d!1555648))

(assert (=> bs!1172568 m!5846596))

(declare-fun m!5846702 () Bool)

(assert (=> bs!1172568 m!5846702))

(assert (=> b!4848526 d!1555648))

(declare-fun d!1555652 () Bool)

(declare-fun lt!1989063 () Bool)

(declare-fun content!9884 (List!55689) (Set tuple2!59264))

(assert (=> d!1555652 (= lt!1989063 (set.member lt!1989035 (content!9884 (toList!7863 lm!2646))))))

(declare-fun e!3030713 () Bool)

(assert (=> d!1555652 (= lt!1989063 e!3030713)))

(declare-fun res!2068969 () Bool)

(assert (=> d!1555652 (=> (not res!2068969) (not e!3030713))))

(assert (=> d!1555652 (= res!2068969 (is-Cons!55565 (toList!7863 lm!2646)))))

(assert (=> d!1555652 (= (contains!19222 (toList!7863 lm!2646) lt!1989035) lt!1989063)))

(declare-fun b!4848610 () Bool)

(declare-fun e!3030712 () Bool)

(assert (=> b!4848610 (= e!3030713 e!3030712)))

(declare-fun res!2068968 () Bool)

(assert (=> b!4848610 (=> res!2068968 e!3030712)))

(assert (=> b!4848610 (= res!2068968 (= (h!62002 (toList!7863 lm!2646)) lt!1989035))))

(declare-fun b!4848611 () Bool)

(assert (=> b!4848611 (= e!3030712 (contains!19222 (t!363185 (toList!7863 lm!2646)) lt!1989035))))

(assert (= (and d!1555652 res!2068969) b!4848610))

(assert (= (and b!4848610 (not res!2068968)) b!4848611))

(declare-fun m!5846706 () Bool)

(assert (=> d!1555652 m!5846706))

(declare-fun m!5846708 () Bool)

(assert (=> d!1555652 m!5846708))

(declare-fun m!5846710 () Bool)

(assert (=> b!4848611 m!5846710))

(assert (=> b!4848526 d!1555652))

(declare-fun d!1555656 () Bool)

(assert (=> d!1555656 (contains!19222 (toList!7863 lm!2646) (tuple2!59265 lt!1989032 lt!1989036))))

(declare-fun lt!1989066 () Unit!145702)

(declare-fun choose!35463 (ListLongMap!6469 (_ BitVec 64) List!55688) Unit!145702)

(assert (=> d!1555656 (= lt!1989066 (choose!35463 lm!2646 lt!1989032 lt!1989036))))

(assert (=> d!1555656 (contains!19221 lm!2646 lt!1989032)))

(assert (=> d!1555656 (= (lemmaGetValueImpliesTupleContained!770 lm!2646 lt!1989032 lt!1989036) lt!1989066)))

(declare-fun bs!1172570 () Bool)

(assert (= bs!1172570 d!1555656))

(declare-fun m!5846716 () Bool)

(assert (=> bs!1172570 m!5846716))

(declare-fun m!5846718 () Bool)

(assert (=> bs!1172570 m!5846718))

(assert (=> bs!1172570 m!5846610))

(assert (=> b!4848526 d!1555656))

(declare-fun d!1555660 () Bool)

(assert (=> d!1555660 (= (apply!13446 lm!2646 lt!1989032) (get!19039 (getValueByKey!2731 (toList!7863 lm!2646) lt!1989032)))))

(declare-fun bs!1172571 () Bool)

(assert (= bs!1172571 d!1555660))

(declare-fun m!5846720 () Bool)

(assert (=> bs!1172571 m!5846720))

(assert (=> bs!1172571 m!5846720))

(declare-fun m!5846722 () Bool)

(assert (=> bs!1172571 m!5846722))

(assert (=> b!4848526 d!1555660))

(declare-fun d!1555662 () Bool)

(assert (=> d!1555662 (dynLambda!22357 lambda!242579 lt!1989035)))

(declare-fun lt!1989069 () Unit!145702)

(declare-fun choose!35464 (List!55689 Int tuple2!59264) Unit!145702)

(assert (=> d!1555662 (= lt!1989069 (choose!35464 (toList!7863 lm!2646) lambda!242579 lt!1989035))))

(declare-fun e!3030716 () Bool)

(assert (=> d!1555662 e!3030716))

(declare-fun res!2068972 () Bool)

(assert (=> d!1555662 (=> (not res!2068972) (not e!3030716))))

(assert (=> d!1555662 (= res!2068972 (forall!12956 (toList!7863 lm!2646) lambda!242579))))

(assert (=> d!1555662 (= (forallContained!4544 (toList!7863 lm!2646) lambda!242579 lt!1989035) lt!1989069)))

(declare-fun b!4848615 () Bool)

(assert (=> b!4848615 (= e!3030716 (contains!19222 (toList!7863 lm!2646) lt!1989035))))

(assert (= (and d!1555662 res!2068972) b!4848615))

(declare-fun b_lambda!192577 () Bool)

(assert (=> (not b_lambda!192577) (not d!1555662)))

(declare-fun m!5846724 () Bool)

(assert (=> d!1555662 m!5846724))

(declare-fun m!5846726 () Bool)

(assert (=> d!1555662 m!5846726))

(assert (=> d!1555662 m!5846614))

(assert (=> b!4848615 m!5846602))

(assert (=> b!4848526 d!1555662))

(declare-fun d!1555664 () Bool)

(declare-fun e!3030722 () Bool)

(assert (=> d!1555664 e!3030722))

(declare-fun res!2068975 () Bool)

(assert (=> d!1555664 (=> res!2068975 e!3030722)))

(declare-fun lt!1989082 () Bool)

(assert (=> d!1555664 (= res!2068975 (not lt!1989082))))

(declare-fun lt!1989084 () Bool)

(assert (=> d!1555664 (= lt!1989082 lt!1989084)))

(declare-fun lt!1989083 () Unit!145702)

(declare-fun e!3030721 () Unit!145702)

(assert (=> d!1555664 (= lt!1989083 e!3030721)))

(declare-fun c!825225 () Bool)

(assert (=> d!1555664 (= c!825225 lt!1989084)))

(declare-fun containsKey!4689 (List!55689 (_ BitVec 64)) Bool)

(assert (=> d!1555664 (= lt!1989084 (containsKey!4689 (toList!7863 lm!2646) lt!1989032))))

(assert (=> d!1555664 (= (contains!19221 lm!2646 lt!1989032) lt!1989082)))

(declare-fun b!4848622 () Bool)

(declare-fun lt!1989081 () Unit!145702)

(assert (=> b!4848622 (= e!3030721 lt!1989081)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2503 (List!55689 (_ BitVec 64)) Unit!145702)

(assert (=> b!4848622 (= lt!1989081 (lemmaContainsKeyImpliesGetValueByKeyDefined!2503 (toList!7863 lm!2646) lt!1989032))))

(declare-fun isDefined!10770 (Option!13678) Bool)

(assert (=> b!4848622 (isDefined!10770 (getValueByKey!2731 (toList!7863 lm!2646) lt!1989032))))

(declare-fun b!4848623 () Bool)

(declare-fun Unit!145706 () Unit!145702)

(assert (=> b!4848623 (= e!3030721 Unit!145706)))

(declare-fun b!4848624 () Bool)

(assert (=> b!4848624 (= e!3030722 (isDefined!10770 (getValueByKey!2731 (toList!7863 lm!2646) lt!1989032)))))

(assert (= (and d!1555664 c!825225) b!4848622))

(assert (= (and d!1555664 (not c!825225)) b!4848623))

(assert (= (and d!1555664 (not res!2068975)) b!4848624))

(declare-fun m!5846732 () Bool)

(assert (=> d!1555664 m!5846732))

(declare-fun m!5846734 () Bool)

(assert (=> b!4848622 m!5846734))

(assert (=> b!4848622 m!5846720))

(assert (=> b!4848622 m!5846720))

(declare-fun m!5846736 () Bool)

(assert (=> b!4848622 m!5846736))

(assert (=> b!4848624 m!5846720))

(assert (=> b!4848624 m!5846720))

(assert (=> b!4848624 m!5846736))

(assert (=> b!4848521 d!1555664))

(declare-fun d!1555668 () Bool)

(declare-fun hash!5597 (Hashable!7503 K!17362) (_ BitVec 64))

(assert (=> d!1555668 (= (hash!5593 hashF!1641 key!6445) (hash!5597 hashF!1641 key!6445))))

(declare-fun bs!1172575 () Bool)

(assert (= bs!1172575 d!1555668))

(declare-fun m!5846738 () Bool)

(assert (=> bs!1172575 m!5846738))

(assert (=> b!4848521 d!1555668))

(declare-fun b!4848629 () Bool)

(declare-fun e!3030725 () Bool)

(declare-fun tp!1364685 () Bool)

(declare-fun tp!1364686 () Bool)

(assert (=> b!4848629 (= e!3030725 (and tp!1364685 tp!1364686))))

(assert (=> b!4848520 (= tp!1364677 e!3030725)))

(assert (= (and b!4848520 (is-Cons!55565 (toList!7863 lm!2646))) b!4848629))

(declare-fun b_lambda!192579 () Bool)

(assert (= b_lambda!192577 (or start!505426 b_lambda!192579)))

(declare-fun bs!1172576 () Bool)

(declare-fun d!1555670 () Bool)

(assert (= bs!1172576 (and d!1555670 start!505426)))

(assert (=> bs!1172576 (= (dynLambda!22357 lambda!242579 lt!1989035) (noDuplicateKeys!2591 (_2!32926 lt!1989035)))))

(declare-fun m!5846740 () Bool)

(assert (=> bs!1172576 m!5846740))

(assert (=> d!1555662 d!1555670))

(declare-fun b_lambda!192581 () Bool)

(assert (= b_lambda!192573 (or start!505426 b_lambda!192581)))

(declare-fun bs!1172577 () Bool)

(declare-fun d!1555672 () Bool)

(assert (= bs!1172577 (and d!1555672 start!505426)))

(assert (=> bs!1172577 (= (dynLambda!22357 lambda!242579 (h!62002 (toList!7863 lm!2646))) (noDuplicateKeys!2591 (_2!32926 (h!62002 (toList!7863 lm!2646)))))))

(declare-fun m!5846742 () Bool)

(assert (=> bs!1172577 m!5846742))

(assert (=> b!4848558 d!1555672))

(declare-fun b_lambda!192583 () Bool)

(assert (= b_lambda!192571 (or start!505426 b_lambda!192583)))

(declare-fun bs!1172578 () Bool)

(declare-fun d!1555674 () Bool)

(assert (= bs!1172578 (and d!1555674 start!505426)))

(assert (=> bs!1172578 (= (dynLambda!22357 lambda!242579 (h!62002 (toList!7863 (tail!9529 lm!2646)))) (noDuplicateKeys!2591 (_2!32926 (h!62002 (toList!7863 (tail!9529 lm!2646))))))))

(declare-fun m!5846744 () Bool)

(assert (=> bs!1172578 m!5846744))

(assert (=> b!4848554 d!1555674))

(push 1)

(assert (not b!4848624))

(assert (not d!1555638))

(assert (not b!4848555))

(assert (not d!1555656))

(assert (not d!1555626))

(assert (not d!1555664))

(assert (not b_lambda!192579))

(assert (not b_lambda!192581))

(assert (not b!4848594))

(assert (not d!1555640))

(assert (not d!1555648))

(assert (not d!1555652))

(assert (not bs!1172577))

(assert (not b!4848629))

(assert (not bs!1172578))

(assert (not d!1555662))

(assert (not b!4848622))

(assert (not b!4848615))

(assert (not bs!1172576))

(assert (not b!4848611))

(assert (not b!4848596))

(assert (not d!1555660))

(assert (not b!4848601))

(assert (not d!1555630))

(assert (not b!4848559))

(assert tp_is_empty!35197)

(assert (not d!1555620))

(assert (not b!4848569))

(assert (not b!4848571))

(assert (not b!4848598))

(assert (not b_lambda!192583))

(assert (not d!1555644))

(assert (not d!1555668))

(assert (not b!4848595))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1555700 () Bool)

(assert (=> d!1555700 (= (get!19039 (getValueByKey!2731 (toList!7863 lm!2646) (_1!32926 (h!62002 (toList!7863 lm!2646))))) (v!49446 (getValueByKey!2731 (toList!7863 lm!2646) (_1!32926 (h!62002 (toList!7863 lm!2646))))))))

(assert (=> d!1555638 d!1555700))

(declare-fun b!4848689 () Bool)

(declare-fun e!3030765 () Option!13678)

(declare-fun e!3030766 () Option!13678)

(assert (=> b!4848689 (= e!3030765 e!3030766)))

(declare-fun c!825240 () Bool)

(assert (=> b!4848689 (= c!825240 (and (is-Cons!55565 (toList!7863 lm!2646)) (not (= (_1!32926 (h!62002 (toList!7863 lm!2646))) (_1!32926 (h!62002 (toList!7863 lm!2646)))))))))

(declare-fun b!4848691 () Bool)

(assert (=> b!4848691 (= e!3030766 None!13677)))

(declare-fun b!4848690 () Bool)

(assert (=> b!4848690 (= e!3030766 (getValueByKey!2731 (t!363185 (toList!7863 lm!2646)) (_1!32926 (h!62002 (toList!7863 lm!2646)))))))

(declare-fun d!1555702 () Bool)

(declare-fun c!825239 () Bool)

(assert (=> d!1555702 (= c!825239 (and (is-Cons!55565 (toList!7863 lm!2646)) (= (_1!32926 (h!62002 (toList!7863 lm!2646))) (_1!32926 (h!62002 (toList!7863 lm!2646))))))))

(assert (=> d!1555702 (= (getValueByKey!2731 (toList!7863 lm!2646) (_1!32926 (h!62002 (toList!7863 lm!2646)))) e!3030765)))

(declare-fun b!4848688 () Bool)

(assert (=> b!4848688 (= e!3030765 (Some!13677 (_2!32926 (h!62002 (toList!7863 lm!2646)))))))

(assert (= (and d!1555702 c!825239) b!4848688))

(assert (= (and d!1555702 (not c!825239)) b!4848689))

(assert (= (and b!4848689 c!825240) b!4848690))

(assert (= (and b!4848689 (not c!825240)) b!4848691))

(declare-fun m!5846800 () Bool)

(assert (=> b!4848690 m!5846800))

(assert (=> d!1555638 d!1555702))

(declare-fun d!1555704 () Bool)

(declare-fun res!2069006 () Bool)

(declare-fun e!3030771 () Bool)

(assert (=> d!1555704 (=> res!2069006 e!3030771)))

(assert (=> d!1555704 (= res!2069006 (not (is-Cons!55564 (_2!32926 lt!1989035))))))

(assert (=> d!1555704 (= (noDuplicateKeys!2591 (_2!32926 lt!1989035)) e!3030771)))

(declare-fun b!4848696 () Bool)

(declare-fun e!3030772 () Bool)

(assert (=> b!4848696 (= e!3030771 e!3030772)))

(declare-fun res!2069007 () Bool)

(assert (=> b!4848696 (=> (not res!2069007) (not e!3030772))))

(assert (=> b!4848696 (= res!2069007 (not (containsKey!4687 (t!363184 (_2!32926 lt!1989035)) (_1!32925 (h!62001 (_2!32926 lt!1989035))))))))

(declare-fun b!4848697 () Bool)

(assert (=> b!4848697 (= e!3030772 (noDuplicateKeys!2591 (t!363184 (_2!32926 lt!1989035))))))

(assert (= (and d!1555704 (not res!2069006)) b!4848696))

(assert (= (and b!4848696 res!2069007) b!4848697))

(declare-fun m!5846802 () Bool)

(assert (=> b!4848696 m!5846802))

(declare-fun m!5846804 () Bool)

(assert (=> b!4848697 m!5846804))

(assert (=> bs!1172576 d!1555704))

(declare-fun d!1555706 () Bool)

(declare-fun isEmpty!29737 (Option!13678) Bool)

(assert (=> d!1555706 (= (isDefined!10770 (getValueByKey!2731 (toList!7863 lm!2646) lt!1989032)) (not (isEmpty!29737 (getValueByKey!2731 (toList!7863 lm!2646) lt!1989032))))))

(declare-fun bs!1172587 () Bool)

(assert (= bs!1172587 d!1555706))

(assert (=> bs!1172587 m!5846720))

(declare-fun m!5846806 () Bool)

(assert (=> bs!1172587 m!5846806))

(assert (=> b!4848624 d!1555706))

(declare-fun b!4848699 () Bool)

(declare-fun e!3030773 () Option!13678)

(declare-fun e!3030774 () Option!13678)

(assert (=> b!4848699 (= e!3030773 e!3030774)))

(declare-fun c!825242 () Bool)

(assert (=> b!4848699 (= c!825242 (and (is-Cons!55565 (toList!7863 lm!2646)) (not (= (_1!32926 (h!62002 (toList!7863 lm!2646))) lt!1989032))))))

(declare-fun b!4848701 () Bool)

(assert (=> b!4848701 (= e!3030774 None!13677)))

(declare-fun b!4848700 () Bool)

(assert (=> b!4848700 (= e!3030774 (getValueByKey!2731 (t!363185 (toList!7863 lm!2646)) lt!1989032))))

(declare-fun d!1555708 () Bool)

(declare-fun c!825241 () Bool)

(assert (=> d!1555708 (= c!825241 (and (is-Cons!55565 (toList!7863 lm!2646)) (= (_1!32926 (h!62002 (toList!7863 lm!2646))) lt!1989032)))))

(assert (=> d!1555708 (= (getValueByKey!2731 (toList!7863 lm!2646) lt!1989032) e!3030773)))

(declare-fun b!4848698 () Bool)

(assert (=> b!4848698 (= e!3030773 (Some!13677 (_2!32926 (h!62002 (toList!7863 lm!2646)))))))

(assert (= (and d!1555708 c!825241) b!4848698))

(assert (= (and d!1555708 (not c!825241)) b!4848699))

(assert (= (and b!4848699 c!825242) b!4848700))

(assert (= (and b!4848699 (not c!825242)) b!4848701))

(declare-fun m!5846808 () Bool)

(assert (=> b!4848700 m!5846808))

(assert (=> b!4848624 d!1555708))

(declare-fun d!1555710 () Bool)

(assert (=> d!1555710 (dynLambda!22357 lambda!242579 lt!1989035)))

(assert (=> d!1555710 true))

(declare-fun _$7!2470 () Unit!145702)

(assert (=> d!1555710 (= (choose!35464 (toList!7863 lm!2646) lambda!242579 lt!1989035) _$7!2470)))

(declare-fun b_lambda!192595 () Bool)

(assert (=> (not b_lambda!192595) (not d!1555710)))

(declare-fun bs!1172588 () Bool)

(assert (= bs!1172588 d!1555710))

(assert (=> bs!1172588 m!5846724))

(assert (=> d!1555662 d!1555710))

(assert (=> d!1555662 d!1555628))

(declare-fun d!1555712 () Bool)

(declare-fun res!2069008 () Bool)

(declare-fun e!3030775 () Bool)

(assert (=> d!1555712 (=> res!2069008 e!3030775)))

(assert (=> d!1555712 (= res!2069008 (is-Nil!55565 (t!363185 (toList!7863 (tail!9529 lm!2646)))))))

(assert (=> d!1555712 (= (forall!12956 (t!363185 (toList!7863 (tail!9529 lm!2646))) lambda!242579) e!3030775)))

(declare-fun b!4848702 () Bool)

(declare-fun e!3030776 () Bool)

(assert (=> b!4848702 (= e!3030775 e!3030776)))

(declare-fun res!2069009 () Bool)

(assert (=> b!4848702 (=> (not res!2069009) (not e!3030776))))

(assert (=> b!4848702 (= res!2069009 (dynLambda!22357 lambda!242579 (h!62002 (t!363185 (toList!7863 (tail!9529 lm!2646))))))))

(declare-fun b!4848703 () Bool)

(assert (=> b!4848703 (= e!3030776 (forall!12956 (t!363185 (t!363185 (toList!7863 (tail!9529 lm!2646)))) lambda!242579))))

(assert (= (and d!1555712 (not res!2069008)) b!4848702))

(assert (= (and b!4848702 res!2069009) b!4848703))

(declare-fun b_lambda!192597 () Bool)

(assert (=> (not b_lambda!192597) (not b!4848702)))

(declare-fun m!5846810 () Bool)

(assert (=> b!4848702 m!5846810))

(declare-fun m!5846812 () Bool)

(assert (=> b!4848703 m!5846812))

(assert (=> b!4848555 d!1555712))

(declare-fun d!1555714 () Bool)

(declare-fun res!2069010 () Bool)

(declare-fun e!3030777 () Bool)

(assert (=> d!1555714 (=> res!2069010 e!3030777)))

(assert (=> d!1555714 (= res!2069010 (and (is-Cons!55564 (t!363184 (_2!32926 (h!62002 (toList!7863 lm!2646))))) (= (_1!32925 (h!62001 (t!363184 (_2!32926 (h!62002 (toList!7863 lm!2646)))))) key!6445)))))

(assert (=> d!1555714 (= (containsKey!4687 (t!363184 (_2!32926 (h!62002 (toList!7863 lm!2646)))) key!6445) e!3030777)))

(declare-fun b!4848704 () Bool)

(declare-fun e!3030778 () Bool)

(assert (=> b!4848704 (= e!3030777 e!3030778)))

(declare-fun res!2069011 () Bool)

(assert (=> b!4848704 (=> (not res!2069011) (not e!3030778))))

(assert (=> b!4848704 (= res!2069011 (is-Cons!55564 (t!363184 (_2!32926 (h!62002 (toList!7863 lm!2646))))))))

(declare-fun b!4848705 () Bool)

(assert (=> b!4848705 (= e!3030778 (containsKey!4687 (t!363184 (t!363184 (_2!32926 (h!62002 (toList!7863 lm!2646))))) key!6445))))

(assert (= (and d!1555714 (not res!2069010)) b!4848704))

(assert (= (and b!4848704 res!2069011) b!4848705))

(declare-fun m!5846814 () Bool)

(assert (=> b!4848705 m!5846814))

(assert (=> b!4848569 d!1555714))

(declare-fun d!1555716 () Bool)

(assert (=> d!1555716 (= (get!19039 (getValueByKey!2731 (toList!7863 lm!2646) lt!1989032)) (v!49446 (getValueByKey!2731 (toList!7863 lm!2646) lt!1989032)))))

(assert (=> d!1555660 d!1555716))

(assert (=> d!1555660 d!1555708))

(declare-fun b!4848706 () Bool)

(declare-fun e!3030781 () Bool)

(assert (=> b!4848706 (= e!3030781 (not (containsKey!4687 (t!363184 lt!1989036) key!6445)))))

(declare-fun b!4848707 () Bool)

(declare-fun res!2069014 () Bool)

(declare-fun e!3030780 () Bool)

(assert (=> b!4848707 (=> (not res!2069014) (not e!3030780))))

(declare-fun lt!1989109 () Option!13676)

(assert (=> b!4848707 (= res!2069014 (= (_1!32925 (get!19040 lt!1989109)) key!6445))))

(declare-fun b!4848708 () Bool)

(declare-fun e!3030783 () Bool)

(assert (=> b!4848708 (= e!3030783 e!3030780)))

(declare-fun res!2069012 () Bool)

(assert (=> b!4848708 (=> (not res!2069012) (not e!3030780))))

(assert (=> b!4848708 (= res!2069012 (isDefined!10768 lt!1989109))))

(declare-fun b!4848709 () Bool)

(declare-fun e!3030779 () Option!13676)

(assert (=> b!4848709 (= e!3030779 (Some!13675 (h!62001 (t!363184 lt!1989036))))))

(declare-fun b!4848710 () Bool)

(declare-fun e!3030782 () Option!13676)

(assert (=> b!4848710 (= e!3030782 (getPair!1093 (t!363184 (t!363184 lt!1989036)) key!6445))))

(declare-fun b!4848711 () Bool)

(assert (=> b!4848711 (= e!3030782 None!13675)))

(declare-fun d!1555718 () Bool)

(assert (=> d!1555718 e!3030783))

(declare-fun res!2069015 () Bool)

(assert (=> d!1555718 (=> res!2069015 e!3030783)))

(assert (=> d!1555718 (= res!2069015 e!3030781)))

(declare-fun res!2069013 () Bool)

(assert (=> d!1555718 (=> (not res!2069013) (not e!3030781))))

(assert (=> d!1555718 (= res!2069013 (isEmpty!29735 lt!1989109))))

(assert (=> d!1555718 (= lt!1989109 e!3030779)))

(declare-fun c!825243 () Bool)

(assert (=> d!1555718 (= c!825243 (and (is-Cons!55564 (t!363184 lt!1989036)) (= (_1!32925 (h!62001 (t!363184 lt!1989036))) key!6445)))))

(assert (=> d!1555718 (noDuplicateKeys!2591 (t!363184 lt!1989036))))

(assert (=> d!1555718 (= (getPair!1093 (t!363184 lt!1989036) key!6445) lt!1989109)))

(declare-fun b!4848712 () Bool)

(assert (=> b!4848712 (= e!3030779 e!3030782)))

(declare-fun c!825244 () Bool)

(assert (=> b!4848712 (= c!825244 (is-Cons!55564 (t!363184 lt!1989036)))))

(declare-fun b!4848713 () Bool)

(assert (=> b!4848713 (= e!3030780 (contains!19225 (t!363184 lt!1989036) (get!19040 lt!1989109)))))

(assert (= (and d!1555718 c!825243) b!4848709))

(assert (= (and d!1555718 (not c!825243)) b!4848712))

(assert (= (and b!4848712 c!825244) b!4848710))

(assert (= (and b!4848712 (not c!825244)) b!4848711))

(assert (= (and d!1555718 res!2069013) b!4848706))

(assert (= (and d!1555718 (not res!2069015)) b!4848708))

(assert (= (and b!4848708 res!2069012) b!4848707))

(assert (= (and b!4848707 res!2069014) b!4848713))

(declare-fun m!5846816 () Bool)

(assert (=> d!1555718 m!5846816))

(declare-fun m!5846818 () Bool)

(assert (=> d!1555718 m!5846818))

(declare-fun m!5846820 () Bool)

(assert (=> b!4848710 m!5846820))

(declare-fun m!5846822 () Bool)

(assert (=> b!4848707 m!5846822))

(assert (=> b!4848713 m!5846822))

(assert (=> b!4848713 m!5846822))

(declare-fun m!5846824 () Bool)

(assert (=> b!4848713 m!5846824))

(declare-fun m!5846826 () Bool)

(assert (=> b!4848706 m!5846826))

(declare-fun m!5846828 () Bool)

(assert (=> b!4848708 m!5846828))

(assert (=> b!4848598 d!1555718))

(declare-fun d!1555720 () Bool)

(declare-fun c!825247 () Bool)

(assert (=> d!1555720 (= c!825247 (is-Nil!55565 (toList!7863 lm!2646)))))

(declare-fun e!3030786 () (Set tuple2!59264))

(assert (=> d!1555720 (= (content!9884 (toList!7863 lm!2646)) e!3030786)))

(declare-fun b!4848718 () Bool)

(assert (=> b!4848718 (= e!3030786 (as set.empty (Set tuple2!59264)))))

(declare-fun b!4848719 () Bool)

(assert (=> b!4848719 (= e!3030786 (set.union (set.insert (h!62002 (toList!7863 lm!2646)) (as set.empty (Set tuple2!59264))) (content!9884 (t!363185 (toList!7863 lm!2646)))))))

(assert (= (and d!1555720 c!825247) b!4848718))

(assert (= (and d!1555720 (not c!825247)) b!4848719))

(declare-fun m!5846830 () Bool)

(assert (=> b!4848719 m!5846830))

(declare-fun m!5846832 () Bool)

(assert (=> b!4848719 m!5846832))

(assert (=> d!1555652 d!1555720))

(declare-fun d!1555722 () Bool)

(declare-fun res!2069016 () Bool)

(declare-fun e!3030787 () Bool)

(assert (=> d!1555722 (=> res!2069016 e!3030787)))

(assert (=> d!1555722 (= res!2069016 (and (is-Cons!55564 (t!363184 (apply!13446 lm!2646 (_1!32926 (h!62002 (toList!7863 lm!2646)))))) (= (_1!32925 (h!62001 (t!363184 (apply!13446 lm!2646 (_1!32926 (h!62002 (toList!7863 lm!2646))))))) key!6445)))))

(assert (=> d!1555722 (= (containsKey!4687 (t!363184 (apply!13446 lm!2646 (_1!32926 (h!62002 (toList!7863 lm!2646))))) key!6445) e!3030787)))

(declare-fun b!4848720 () Bool)

(declare-fun e!3030788 () Bool)

(assert (=> b!4848720 (= e!3030787 e!3030788)))

(declare-fun res!2069017 () Bool)

(assert (=> b!4848720 (=> (not res!2069017) (not e!3030788))))

(assert (=> b!4848720 (= res!2069017 (is-Cons!55564 (t!363184 (apply!13446 lm!2646 (_1!32926 (h!62002 (toList!7863 lm!2646)))))))))

(declare-fun b!4848721 () Bool)

(assert (=> b!4848721 (= e!3030788 (containsKey!4687 (t!363184 (t!363184 (apply!13446 lm!2646 (_1!32926 (h!62002 (toList!7863 lm!2646)))))) key!6445))))

(assert (= (and d!1555722 (not res!2069016)) b!4848720))

(assert (= (and b!4848720 res!2069017) b!4848721))

(declare-fun m!5846834 () Bool)

(assert (=> b!4848721 m!5846834))

(assert (=> b!4848571 d!1555722))

(declare-fun d!1555724 () Bool)

(declare-fun res!2069018 () Bool)

(declare-fun e!3030789 () Bool)

(assert (=> d!1555724 (=> res!2069018 e!3030789)))

(assert (=> d!1555724 (= res!2069018 (is-Nil!55565 (t!363185 (toList!7863 lm!2646))))))

(assert (=> d!1555724 (= (forall!12956 (t!363185 (toList!7863 lm!2646)) lambda!242579) e!3030789)))

(declare-fun b!4848722 () Bool)

(declare-fun e!3030790 () Bool)

(assert (=> b!4848722 (= e!3030789 e!3030790)))

(declare-fun res!2069019 () Bool)

(assert (=> b!4848722 (=> (not res!2069019) (not e!3030790))))

(assert (=> b!4848722 (= res!2069019 (dynLambda!22357 lambda!242579 (h!62002 (t!363185 (toList!7863 lm!2646)))))))

(declare-fun b!4848723 () Bool)

(assert (=> b!4848723 (= e!3030790 (forall!12956 (t!363185 (t!363185 (toList!7863 lm!2646))) lambda!242579))))

(assert (= (and d!1555724 (not res!2069018)) b!4848722))

(assert (= (and b!4848722 res!2069019) b!4848723))

(declare-fun b_lambda!192599 () Bool)

(assert (=> (not b_lambda!192599) (not b!4848722)))

(declare-fun m!5846836 () Bool)

(assert (=> b!4848722 m!5846836))

(declare-fun m!5846838 () Bool)

(assert (=> b!4848723 m!5846838))

(assert (=> b!4848559 d!1555724))

(declare-fun d!1555726 () Bool)

(declare-fun res!2069024 () Bool)

(declare-fun e!3030795 () Bool)

(assert (=> d!1555726 (=> res!2069024 e!3030795)))

(assert (=> d!1555726 (= res!2069024 (and (is-Cons!55565 (toList!7863 lm!2646)) (= (_1!32926 (h!62002 (toList!7863 lm!2646))) lt!1989032)))))

(assert (=> d!1555726 (= (containsKey!4689 (toList!7863 lm!2646) lt!1989032) e!3030795)))

(declare-fun b!4848728 () Bool)

(declare-fun e!3030796 () Bool)

(assert (=> b!4848728 (= e!3030795 e!3030796)))

(declare-fun res!2069025 () Bool)

(assert (=> b!4848728 (=> (not res!2069025) (not e!3030796))))

(assert (=> b!4848728 (= res!2069025 (and (or (not (is-Cons!55565 (toList!7863 lm!2646))) (bvsle (_1!32926 (h!62002 (toList!7863 lm!2646))) lt!1989032)) (is-Cons!55565 (toList!7863 lm!2646)) (bvslt (_1!32926 (h!62002 (toList!7863 lm!2646))) lt!1989032)))))

(declare-fun b!4848729 () Bool)

(assert (=> b!4848729 (= e!3030796 (containsKey!4689 (t!363185 (toList!7863 lm!2646)) lt!1989032))))

(assert (= (and d!1555726 (not res!2069024)) b!4848728))

(assert (= (and b!4848728 res!2069025) b!4848729))

(declare-fun m!5846840 () Bool)

(assert (=> b!4848729 m!5846840))

(assert (=> d!1555664 d!1555726))

(declare-fun d!1555728 () Bool)

(declare-fun lt!1989112 () Bool)

(declare-fun content!9886 (List!55688) (Set tuple2!59262))

(assert (=> d!1555728 (= lt!1989112 (set.member (get!19040 lt!1989060) (content!9886 lt!1989036)))))

(declare-fun e!3030801 () Bool)

(assert (=> d!1555728 (= lt!1989112 e!3030801)))

(declare-fun res!2069030 () Bool)

(assert (=> d!1555728 (=> (not res!2069030) (not e!3030801))))

(assert (=> d!1555728 (= res!2069030 (is-Cons!55564 lt!1989036))))

(assert (=> d!1555728 (= (contains!19225 lt!1989036 (get!19040 lt!1989060)) lt!1989112)))

(declare-fun b!4848734 () Bool)

(declare-fun e!3030802 () Bool)

(assert (=> b!4848734 (= e!3030801 e!3030802)))

(declare-fun res!2069031 () Bool)

(assert (=> b!4848734 (=> res!2069031 e!3030802)))

(assert (=> b!4848734 (= res!2069031 (= (h!62001 lt!1989036) (get!19040 lt!1989060)))))

(declare-fun b!4848735 () Bool)

(assert (=> b!4848735 (= e!3030802 (contains!19225 (t!363184 lt!1989036) (get!19040 lt!1989060)))))

(assert (= (and d!1555728 res!2069030) b!4848734))

(assert (= (and b!4848734 (not res!2069031)) b!4848735))

(declare-fun m!5846842 () Bool)

(assert (=> d!1555728 m!5846842))

(assert (=> d!1555728 m!5846692))

(declare-fun m!5846844 () Bool)

(assert (=> d!1555728 m!5846844))

(assert (=> b!4848735 m!5846692))

(declare-fun m!5846846 () Bool)

(assert (=> b!4848735 m!5846846))

(assert (=> b!4848601 d!1555728))

(declare-fun d!1555730 () Bool)

(assert (=> d!1555730 (= (get!19040 lt!1989060) (v!49443 lt!1989060))))

(assert (=> b!4848601 d!1555730))

(declare-fun d!1555732 () Bool)

(assert (=> d!1555732 (= (isEmpty!29735 (getPair!1093 lt!1989036 key!6445)) (not (is-Some!13675 (getPair!1093 lt!1989036 key!6445))))))

(assert (=> d!1555648 d!1555732))

(declare-fun d!1555734 () Bool)

(assert (=> d!1555734 (isDefined!10770 (getValueByKey!2731 (toList!7863 lm!2646) lt!1989032))))

(declare-fun lt!1989115 () Unit!145702)

(declare-fun choose!35468 (List!55689 (_ BitVec 64)) Unit!145702)

(assert (=> d!1555734 (= lt!1989115 (choose!35468 (toList!7863 lm!2646) lt!1989032))))

(declare-fun e!3030805 () Bool)

(assert (=> d!1555734 e!3030805))

(declare-fun res!2069034 () Bool)

(assert (=> d!1555734 (=> (not res!2069034) (not e!3030805))))

(assert (=> d!1555734 (= res!2069034 (isStrictlySorted!1080 (toList!7863 lm!2646)))))

(assert (=> d!1555734 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2503 (toList!7863 lm!2646) lt!1989032) lt!1989115)))

(declare-fun b!4848738 () Bool)

(assert (=> b!4848738 (= e!3030805 (containsKey!4689 (toList!7863 lm!2646) lt!1989032))))

(assert (= (and d!1555734 res!2069034) b!4848738))

(assert (=> d!1555734 m!5846720))

(assert (=> d!1555734 m!5846720))

(assert (=> d!1555734 m!5846736))

(declare-fun m!5846848 () Bool)

(assert (=> d!1555734 m!5846848))

(assert (=> d!1555734 m!5846664))

(assert (=> b!4848738 m!5846732))

(assert (=> b!4848622 d!1555734))

(assert (=> b!4848622 d!1555706))

(assert (=> b!4848622 d!1555708))

(declare-fun d!1555736 () Bool)

(assert (=> d!1555736 (= (tail!9531 (toList!7863 lm!2646)) (t!363185 (toList!7863 lm!2646)))))

(assert (=> d!1555626 d!1555736))

(declare-fun d!1555738 () Bool)

(declare-fun res!2069035 () Bool)

(declare-fun e!3030806 () Bool)

(assert (=> d!1555738 (=> res!2069035 e!3030806)))

(assert (=> d!1555738 (= res!2069035 (not (is-Cons!55564 (_2!32926 (h!62002 (toList!7863 (tail!9529 lm!2646)))))))))

(assert (=> d!1555738 (= (noDuplicateKeys!2591 (_2!32926 (h!62002 (toList!7863 (tail!9529 lm!2646))))) e!3030806)))

(declare-fun b!4848739 () Bool)

(declare-fun e!3030807 () Bool)

(assert (=> b!4848739 (= e!3030806 e!3030807)))

(declare-fun res!2069036 () Bool)

(assert (=> b!4848739 (=> (not res!2069036) (not e!3030807))))

(assert (=> b!4848739 (= res!2069036 (not (containsKey!4687 (t!363184 (_2!32926 (h!62002 (toList!7863 (tail!9529 lm!2646))))) (_1!32925 (h!62001 (_2!32926 (h!62002 (toList!7863 (tail!9529 lm!2646)))))))))))

(declare-fun b!4848740 () Bool)

(assert (=> b!4848740 (= e!3030807 (noDuplicateKeys!2591 (t!363184 (_2!32926 (h!62002 (toList!7863 (tail!9529 lm!2646)))))))))

(assert (= (and d!1555738 (not res!2069035)) b!4848739))

(assert (= (and b!4848739 res!2069036) b!4848740))

(declare-fun m!5846850 () Bool)

(assert (=> b!4848739 m!5846850))

(declare-fun m!5846852 () Bool)

(assert (=> b!4848740 m!5846852))

(assert (=> bs!1172578 d!1555738))

(declare-fun d!1555740 () Bool)

(declare-fun res!2069037 () Bool)

(declare-fun e!3030808 () Bool)

(assert (=> d!1555740 (=> res!2069037 e!3030808)))

(assert (=> d!1555740 (= res!2069037 (is-Nil!55565 (toList!7863 lm!2646)))))

(assert (=> d!1555740 (= (forall!12956 (toList!7863 lm!2646) lambda!242589) e!3030808)))

(declare-fun b!4848741 () Bool)

(declare-fun e!3030809 () Bool)

(assert (=> b!4848741 (= e!3030808 e!3030809)))

(declare-fun res!2069038 () Bool)

(assert (=> b!4848741 (=> (not res!2069038) (not e!3030809))))

(assert (=> b!4848741 (= res!2069038 (dynLambda!22357 lambda!242589 (h!62002 (toList!7863 lm!2646))))))

(declare-fun b!4848742 () Bool)

(assert (=> b!4848742 (= e!3030809 (forall!12956 (t!363185 (toList!7863 lm!2646)) lambda!242589))))

(assert (= (and d!1555740 (not res!2069037)) b!4848741))

(assert (= (and b!4848741 res!2069038) b!4848742))

(declare-fun b_lambda!192601 () Bool)

(assert (=> (not b_lambda!192601) (not b!4848741)))

(declare-fun m!5846854 () Bool)

(assert (=> b!4848741 m!5846854))

(declare-fun m!5846856 () Bool)

(assert (=> b!4848742 m!5846856))

(assert (=> d!1555620 d!1555740))

(declare-fun d!1555742 () Bool)

(declare-fun res!2069039 () Bool)

(declare-fun e!3030810 () Bool)

(assert (=> d!1555742 (=> res!2069039 e!3030810)))

(assert (=> d!1555742 (= res!2069039 (and (is-Cons!55564 lt!1989036) (= (_1!32925 (h!62001 lt!1989036)) key!6445)))))

(assert (=> d!1555742 (= (containsKey!4687 lt!1989036 key!6445) e!3030810)))

(declare-fun b!4848743 () Bool)

(declare-fun e!3030811 () Bool)

(assert (=> b!4848743 (= e!3030810 e!3030811)))

(declare-fun res!2069040 () Bool)

(assert (=> b!4848743 (=> (not res!2069040) (not e!3030811))))

(assert (=> b!4848743 (= res!2069040 (is-Cons!55564 lt!1989036))))

(declare-fun b!4848744 () Bool)

(assert (=> b!4848744 (= e!3030811 (containsKey!4687 (t!363184 lt!1989036) key!6445))))

(assert (= (and d!1555742 (not res!2069039)) b!4848743))

(assert (= (and b!4848743 res!2069040) b!4848744))

(assert (=> b!4848744 m!5846826))

(assert (=> b!4848594 d!1555742))

(assert (=> b!4848595 d!1555730))

(assert (=> d!1555640 d!1555636))

(assert (=> d!1555640 d!1555638))

(declare-fun d!1555744 () Bool)

(assert (=> d!1555744 (not (containsKey!4687 (apply!13446 lm!2646 (_1!32926 (h!62002 (toList!7863 lm!2646)))) key!6445))))

(assert (=> d!1555744 true))

(declare-fun _$39!490 () Unit!145702)

(assert (=> d!1555744 (= (choose!35462 lm!2646 key!6445 (_1!32926 (h!62002 (toList!7863 lm!2646))) hashF!1641) _$39!490)))

(declare-fun bs!1172589 () Bool)

(assert (= bs!1172589 d!1555744))

(assert (=> bs!1172589 m!5846586))

(assert (=> bs!1172589 m!5846586))

(assert (=> bs!1172589 m!5846588))

(assert (=> d!1555640 d!1555744))

(declare-fun d!1555746 () Bool)

(declare-fun res!2069041 () Bool)

(declare-fun e!3030812 () Bool)

(assert (=> d!1555746 (=> res!2069041 e!3030812)))

(assert (=> d!1555746 (= res!2069041 (is-Nil!55565 (toList!7863 lm!2646)))))

(assert (=> d!1555746 (= (forall!12956 (toList!7863 lm!2646) lambda!242592) e!3030812)))

(declare-fun b!4848745 () Bool)

(declare-fun e!3030813 () Bool)

(assert (=> b!4848745 (= e!3030812 e!3030813)))

(declare-fun res!2069042 () Bool)

(assert (=> b!4848745 (=> (not res!2069042) (not e!3030813))))

(assert (=> b!4848745 (= res!2069042 (dynLambda!22357 lambda!242592 (h!62002 (toList!7863 lm!2646))))))

(declare-fun b!4848746 () Bool)

(assert (=> b!4848746 (= e!3030813 (forall!12956 (t!363185 (toList!7863 lm!2646)) lambda!242592))))

(assert (= (and d!1555746 (not res!2069041)) b!4848745))

(assert (= (and b!4848745 res!2069042) b!4848746))

(declare-fun b_lambda!192603 () Bool)

(assert (=> (not b_lambda!192603) (not b!4848745)))

(declare-fun m!5846858 () Bool)

(assert (=> b!4848745 m!5846858))

(declare-fun m!5846860 () Bool)

(assert (=> b!4848746 m!5846860))

(assert (=> d!1555640 d!1555746))

(declare-fun d!1555748 () Bool)

(assert (=> d!1555748 (= (isDefined!10768 lt!1989060) (not (isEmpty!29735 lt!1989060)))))

(declare-fun bs!1172590 () Bool)

(assert (= bs!1172590 d!1555748))

(assert (=> bs!1172590 m!5846686))

(assert (=> b!4848596 d!1555748))

(declare-fun d!1555750 () Bool)

(declare-fun lt!1989116 () Bool)

(assert (=> d!1555750 (= lt!1989116 (set.member (tuple2!59265 lt!1989032 lt!1989036) (content!9884 (toList!7863 lm!2646))))))

(declare-fun e!3030815 () Bool)

(assert (=> d!1555750 (= lt!1989116 e!3030815)))

(declare-fun res!2069044 () Bool)

(assert (=> d!1555750 (=> (not res!2069044) (not e!3030815))))

(assert (=> d!1555750 (= res!2069044 (is-Cons!55565 (toList!7863 lm!2646)))))

(assert (=> d!1555750 (= (contains!19222 (toList!7863 lm!2646) (tuple2!59265 lt!1989032 lt!1989036)) lt!1989116)))

(declare-fun b!4848747 () Bool)

(declare-fun e!3030814 () Bool)

(assert (=> b!4848747 (= e!3030815 e!3030814)))

(declare-fun res!2069043 () Bool)

(assert (=> b!4848747 (=> res!2069043 e!3030814)))

(assert (=> b!4848747 (= res!2069043 (= (h!62002 (toList!7863 lm!2646)) (tuple2!59265 lt!1989032 lt!1989036)))))

(declare-fun b!4848748 () Bool)

(assert (=> b!4848748 (= e!3030814 (contains!19222 (t!363185 (toList!7863 lm!2646)) (tuple2!59265 lt!1989032 lt!1989036)))))

(assert (= (and d!1555750 res!2069044) b!4848747))

(assert (= (and b!4848747 (not res!2069043)) b!4848748))

(assert (=> d!1555750 m!5846706))

(declare-fun m!5846862 () Bool)

(assert (=> d!1555750 m!5846862))

(declare-fun m!5846864 () Bool)

(assert (=> b!4848748 m!5846864))

(assert (=> d!1555656 d!1555750))

(declare-fun d!1555752 () Bool)

(assert (=> d!1555752 (contains!19222 (toList!7863 lm!2646) (tuple2!59265 lt!1989032 lt!1989036))))

(assert (=> d!1555752 true))

(declare-fun _$41!549 () Unit!145702)

(assert (=> d!1555752 (= (choose!35463 lm!2646 lt!1989032 lt!1989036) _$41!549)))

(declare-fun bs!1172591 () Bool)

(assert (= bs!1172591 d!1555752))

(assert (=> bs!1172591 m!5846716))

(assert (=> d!1555656 d!1555752))

(assert (=> d!1555656 d!1555664))

(declare-fun d!1555754 () Bool)

(declare-fun res!2069049 () Bool)

(declare-fun e!3030820 () Bool)

(assert (=> d!1555754 (=> res!2069049 e!3030820)))

(assert (=> d!1555754 (= res!2069049 (or (is-Nil!55565 (toList!7863 lm!2646)) (is-Nil!55565 (t!363185 (toList!7863 lm!2646)))))))

(assert (=> d!1555754 (= (isStrictlySorted!1080 (toList!7863 lm!2646)) e!3030820)))

(declare-fun b!4848754 () Bool)

(declare-fun e!3030821 () Bool)

(assert (=> b!4848754 (= e!3030820 e!3030821)))

(declare-fun res!2069050 () Bool)

(assert (=> b!4848754 (=> (not res!2069050) (not e!3030821))))

(assert (=> b!4848754 (= res!2069050 (bvslt (_1!32926 (h!62002 (toList!7863 lm!2646))) (_1!32926 (h!62002 (t!363185 (toList!7863 lm!2646))))))))

(declare-fun b!4848755 () Bool)

(assert (=> b!4848755 (= e!3030821 (isStrictlySorted!1080 (t!363185 (toList!7863 lm!2646))))))

(assert (= (and d!1555754 (not res!2069049)) b!4848754))

(assert (= (and b!4848754 res!2069050) b!4848755))

(declare-fun m!5846866 () Bool)

(assert (=> b!4848755 m!5846866))

(assert (=> d!1555630 d!1555754))

(declare-fun d!1555756 () Bool)

(declare-fun res!2069051 () Bool)

(declare-fun e!3030822 () Bool)

(assert (=> d!1555756 (=> res!2069051 e!3030822)))

(assert (=> d!1555756 (= res!2069051 (not (is-Cons!55564 (_2!32926 (h!62002 (toList!7863 lm!2646))))))))

(assert (=> d!1555756 (= (noDuplicateKeys!2591 (_2!32926 (h!62002 (toList!7863 lm!2646)))) e!3030822)))

(declare-fun b!4848756 () Bool)

(declare-fun e!3030823 () Bool)

(assert (=> b!4848756 (= e!3030822 e!3030823)))

(declare-fun res!2069052 () Bool)

(assert (=> b!4848756 (=> (not res!2069052) (not e!3030823))))

(assert (=> b!4848756 (= res!2069052 (not (containsKey!4687 (t!363184 (_2!32926 (h!62002 (toList!7863 lm!2646)))) (_1!32925 (h!62001 (_2!32926 (h!62002 (toList!7863 lm!2646))))))))))

(declare-fun b!4848757 () Bool)

(assert (=> b!4848757 (= e!3030823 (noDuplicateKeys!2591 (t!363184 (_2!32926 (h!62002 (toList!7863 lm!2646))))))))

(assert (= (and d!1555756 (not res!2069051)) b!4848756))

(assert (= (and b!4848756 res!2069052) b!4848757))

(declare-fun m!5846868 () Bool)

(assert (=> b!4848756 m!5846868))

(declare-fun m!5846870 () Bool)

(assert (=> b!4848757 m!5846870))

(assert (=> bs!1172577 d!1555756))

(declare-fun d!1555758 () Bool)

(declare-fun lt!1989117 () Bool)

(assert (=> d!1555758 (= lt!1989117 (set.member lt!1989035 (content!9884 (t!363185 (toList!7863 lm!2646)))))))

(declare-fun e!3030825 () Bool)

(assert (=> d!1555758 (= lt!1989117 e!3030825)))

(declare-fun res!2069054 () Bool)

(assert (=> d!1555758 (=> (not res!2069054) (not e!3030825))))

(assert (=> d!1555758 (= res!2069054 (is-Cons!55565 (t!363185 (toList!7863 lm!2646))))))

(assert (=> d!1555758 (= (contains!19222 (t!363185 (toList!7863 lm!2646)) lt!1989035) lt!1989117)))

(declare-fun b!4848758 () Bool)

(declare-fun e!3030824 () Bool)

(assert (=> b!4848758 (= e!3030825 e!3030824)))

(declare-fun res!2069053 () Bool)

(assert (=> b!4848758 (=> res!2069053 e!3030824)))

(assert (=> b!4848758 (= res!2069053 (= (h!62002 (t!363185 (toList!7863 lm!2646))) lt!1989035))))

(declare-fun b!4848759 () Bool)

(assert (=> b!4848759 (= e!3030824 (contains!19222 (t!363185 (t!363185 (toList!7863 lm!2646))) lt!1989035))))

(assert (= (and d!1555758 res!2069054) b!4848758))

(assert (= (and b!4848758 (not res!2069053)) b!4848759))

(assert (=> d!1555758 m!5846832))

(declare-fun m!5846872 () Bool)

(assert (=> d!1555758 m!5846872))

(declare-fun m!5846874 () Bool)

(assert (=> b!4848759 m!5846874))

(assert (=> b!4848611 d!1555758))

(assert (=> b!4848615 d!1555652))

(declare-fun d!1555760 () Bool)

(assert (=> d!1555760 (= (isEmpty!29735 lt!1989060) (not (is-Some!13675 lt!1989060)))))

(assert (=> d!1555644 d!1555760))

(declare-fun d!1555762 () Bool)

(declare-fun res!2069055 () Bool)

(declare-fun e!3030826 () Bool)

(assert (=> d!1555762 (=> res!2069055 e!3030826)))

(assert (=> d!1555762 (= res!2069055 (not (is-Cons!55564 lt!1989036)))))

(assert (=> d!1555762 (= (noDuplicateKeys!2591 lt!1989036) e!3030826)))

(declare-fun b!4848760 () Bool)

(declare-fun e!3030827 () Bool)

(assert (=> b!4848760 (= e!3030826 e!3030827)))

(declare-fun res!2069056 () Bool)

(assert (=> b!4848760 (=> (not res!2069056) (not e!3030827))))

(assert (=> b!4848760 (= res!2069056 (not (containsKey!4687 (t!363184 lt!1989036) (_1!32925 (h!62001 lt!1989036)))))))

(declare-fun b!4848761 () Bool)

(assert (=> b!4848761 (= e!3030827 (noDuplicateKeys!2591 (t!363184 lt!1989036)))))

(assert (= (and d!1555762 (not res!2069055)) b!4848760))

(assert (= (and b!4848760 res!2069056) b!4848761))

(declare-fun m!5846876 () Bool)

(assert (=> b!4848760 m!5846876))

(assert (=> b!4848761 m!5846818))

(assert (=> d!1555644 d!1555762))

(declare-fun d!1555764 () Bool)

(declare-fun choose!35469 (Hashable!7503 K!17362) (_ BitVec 64))

(assert (=> d!1555764 (= (hash!5597 hashF!1641 key!6445) (choose!35469 hashF!1641 key!6445))))

(declare-fun bs!1172592 () Bool)

(assert (= bs!1172592 d!1555764))

(declare-fun m!5846878 () Bool)

(assert (=> bs!1172592 m!5846878))

(assert (=> d!1555668 d!1555764))

(declare-fun tp_is_empty!35201 () Bool)

(declare-fun e!3030830 () Bool)

(declare-fun b!4848766 () Bool)

(declare-fun tp!1364695 () Bool)

(assert (=> b!4848766 (= e!3030830 (and tp_is_empty!35197 tp_is_empty!35201 tp!1364695))))

(assert (=> b!4848629 (= tp!1364685 e!3030830)))

(assert (= (and b!4848629 (is-Cons!55564 (_2!32926 (h!62002 (toList!7863 lm!2646))))) b!4848766))

(declare-fun b!4848767 () Bool)

(declare-fun e!3030831 () Bool)

(declare-fun tp!1364696 () Bool)

(declare-fun tp!1364697 () Bool)

(assert (=> b!4848767 (= e!3030831 (and tp!1364696 tp!1364697))))

(assert (=> b!4848629 (= tp!1364686 e!3030831)))

(assert (= (and b!4848629 (is-Cons!55565 (t!363185 (toList!7863 lm!2646)))) b!4848767))

(declare-fun b_lambda!192605 () Bool)

(assert (= b_lambda!192599 (or start!505426 b_lambda!192605)))

(declare-fun bs!1172593 () Bool)

(declare-fun d!1555766 () Bool)

(assert (= bs!1172593 (and d!1555766 start!505426)))

(assert (=> bs!1172593 (= (dynLambda!22357 lambda!242579 (h!62002 (t!363185 (toList!7863 lm!2646)))) (noDuplicateKeys!2591 (_2!32926 (h!62002 (t!363185 (toList!7863 lm!2646))))))))

(declare-fun m!5846880 () Bool)

(assert (=> bs!1172593 m!5846880))

(assert (=> b!4848722 d!1555766))

(declare-fun b_lambda!192607 () Bool)

(assert (= b_lambda!192603 (or d!1555640 b_lambda!192607)))

(declare-fun bs!1172594 () Bool)

(declare-fun d!1555768 () Bool)

(assert (= bs!1172594 (and d!1555768 d!1555640)))

(assert (=> bs!1172594 (= (dynLambda!22357 lambda!242592 (h!62002 (toList!7863 lm!2646))) (noDuplicateKeys!2591 (_2!32926 (h!62002 (toList!7863 lm!2646)))))))

(assert (=> bs!1172594 m!5846742))

(assert (=> b!4848745 d!1555768))

(declare-fun b_lambda!192609 () Bool)

(assert (= b_lambda!192595 (or start!505426 b_lambda!192609)))

(assert (=> d!1555710 d!1555670))

(declare-fun b_lambda!192611 () Bool)

(assert (= b_lambda!192601 (or d!1555620 b_lambda!192611)))

(declare-fun bs!1172595 () Bool)

(declare-fun d!1555770 () Bool)

(assert (= bs!1172595 (and d!1555770 d!1555620)))

(declare-fun allKeysSameHash!2034 (List!55688 (_ BitVec 64) Hashable!7503) Bool)

(assert (=> bs!1172595 (= (dynLambda!22357 lambda!242589 (h!62002 (toList!7863 lm!2646))) (allKeysSameHash!2034 (_2!32926 (h!62002 (toList!7863 lm!2646))) (_1!32926 (h!62002 (toList!7863 lm!2646))) hashF!1641))))

(declare-fun m!5846882 () Bool)

(assert (=> bs!1172595 m!5846882))

(assert (=> b!4848741 d!1555770))

(declare-fun b_lambda!192613 () Bool)

(assert (= b_lambda!192597 (or start!505426 b_lambda!192613)))

(declare-fun bs!1172596 () Bool)

(declare-fun d!1555772 () Bool)

(assert (= bs!1172596 (and d!1555772 start!505426)))

(assert (=> bs!1172596 (= (dynLambda!22357 lambda!242579 (h!62002 (t!363185 (toList!7863 (tail!9529 lm!2646))))) (noDuplicateKeys!2591 (_2!32926 (h!62002 (t!363185 (toList!7863 (tail!9529 lm!2646)))))))))

(declare-fun m!5846884 () Bool)

(assert (=> bs!1172596 m!5846884))

(assert (=> b!4848702 d!1555772))

(push 1)

(assert (not d!1555734))

(assert tp_is_empty!35201)

(assert (not b!4848697))

(assert (not b!4848761))

(assert tp_is_empty!35197)

(assert (not b!4848721))

(assert (not b!4848740))

(assert (not b!4848755))

(assert (not b!4848710))

(assert (not b!4848729))

(assert (not b!4848700))

(assert (not d!1555706))

(assert (not b_lambda!192611))

(assert (not d!1555752))

(assert (not bs!1172594))

(assert (not d!1555718))

(assert (not b_lambda!192605))

(assert (not b!4848738))

(assert (not b!4848767))

(assert (not b_lambda!192609))

(assert (not bs!1172596))

(assert (not bs!1172593))

(assert (not d!1555758))

(assert (not b!4848748))

(assert (not b!4848696))

(assert (not d!1555764))

(assert (not b!4848757))

(assert (not b!4848759))

(assert (not b_lambda!192579))

(assert (not b!4848760))

(assert (not b!4848703))

(assert (not bs!1172595))

(assert (not b!4848713))

(assert (not b_lambda!192581))

(assert (not b!4848739))

(assert (not b!4848719))

(assert (not b_lambda!192583))

(assert (not b_lambda!192613))

(assert (not b!4848735))

(assert (not b!4848766))

(assert (not b!4848705))

(assert (not b!4848706))

(assert (not b!4848744))

(assert (not b!4848690))

(assert (not b!4848746))

(assert (not d!1555728))

(assert (not b!4848723))

(assert (not b_lambda!192607))

(assert (not d!1555750))

(assert (not d!1555744))

(assert (not d!1555748))

(assert (not b!4848708))

(assert (not b!4848756))

(assert (not b!4848707))

(assert (not b!4848742))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

