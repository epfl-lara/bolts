; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!494660 () Bool)

(assert start!494660)

(declare-fun b!4797119 () Bool)

(declare-fun e!2995509 () Bool)

(declare-fun e!2995510 () Bool)

(assert (=> b!4797119 (= e!2995509 e!2995510)))

(declare-fun res!2039703 () Bool)

(assert (=> b!4797119 (=> res!2039703 e!2995510)))

(declare-datatypes ((K!15842 0))(
  ( (K!15843 (val!20979 Int)) )
))
(declare-datatypes ((V!16088 0))(
  ( (V!16089 (val!20980 Int)) )
))
(declare-datatypes ((tuple2!56932 0))(
  ( (tuple2!56933 (_1!31760 K!15842) (_2!31760 V!16088)) )
))
(declare-datatypes ((List!54394 0))(
  ( (Nil!54270) (Cons!54270 (h!60702 tuple2!56932) (t!361844 List!54394)) )
))
(declare-datatypes ((tuple2!56934 0))(
  ( (tuple2!56935 (_1!31761 (_ BitVec 64)) (_2!31761 List!54394)) )
))
(declare-datatypes ((List!54395 0))(
  ( (Nil!54271) (Cons!54271 (h!60703 tuple2!56934) (t!361845 List!54395)) )
))
(declare-datatypes ((ListLongMap!5383 0))(
  ( (ListLongMap!5384 (toList!6961 List!54395)) )
))
(declare-fun lt!1954234 () ListLongMap!5383)

(declare-fun lt!1954235 () (_ BitVec 64))

(declare-fun contains!17911 (ListLongMap!5383 (_ BitVec 64)) Bool)

(assert (=> b!4797119 (= res!2039703 (contains!17911 lt!1954234 lt!1954235))))

(declare-fun lm!2473 () ListLongMap!5383)

(declare-fun tail!9296 (ListLongMap!5383) ListLongMap!5383)

(assert (=> b!4797119 (= lt!1954234 (tail!9296 lm!2473))))

(declare-fun res!2039707 () Bool)

(declare-fun e!2995507 () Bool)

(assert (=> start!494660 (=> (not res!2039707) (not e!2995507))))

(declare-fun lambda!231614 () Int)

(declare-fun forall!12292 (List!54395 Int) Bool)

(assert (=> start!494660 (= res!2039707 (forall!12292 (toList!6961 lm!2473) lambda!231614))))

(assert (=> start!494660 e!2995507))

(declare-fun e!2995508 () Bool)

(declare-fun inv!69869 (ListLongMap!5383) Bool)

(assert (=> start!494660 (and (inv!69869 lm!2473) e!2995508)))

(assert (=> start!494660 true))

(declare-fun tp_is_empty!33625 () Bool)

(assert (=> start!494660 tp_is_empty!33625))

(declare-fun tp_is_empty!33627 () Bool)

(assert (=> start!494660 tp_is_empty!33627))

(declare-fun b!4797120 () Bool)

(declare-fun e!2995511 () Bool)

(declare-fun key!5896 () K!15842)

(declare-datatypes ((Option!13141 0))(
  ( (None!13140) (Some!13140 (v!48449 tuple2!56932)) )
))
(declare-fun isDefined!10282 (Option!13141) Bool)

(declare-fun getPair!913 (List!54394 K!15842) Option!13141)

(declare-fun apply!13014 (ListLongMap!5383 (_ BitVec 64)) List!54394)

(assert (=> b!4797120 (= e!2995511 (isDefined!10282 (getPair!913 (apply!13014 lm!2473 lt!1954235) key!5896)))))

(declare-fun b!4797121 () Bool)

(declare-fun tp!1358211 () Bool)

(assert (=> b!4797121 (= e!2995508 tp!1358211)))

(declare-fun b!4797122 () Bool)

(declare-datatypes ((Hashable!6941 0))(
  ( (HashableExt!6940 (__x!32964 Int)) )
))
(declare-fun hashF!1559 () Hashable!6941)

(declare-fun allKeysSameHashInMap!2346 (ListLongMap!5383 Hashable!6941) Bool)

(assert (=> b!4797122 (= e!2995510 (allKeysSameHashInMap!2346 lt!1954234 hashF!1559))))

(declare-fun b!4797123 () Bool)

(declare-fun res!2039702 () Bool)

(assert (=> b!4797123 (=> res!2039702 e!2995509)))

(declare-fun containsKey!3991 (List!54394 K!15842) Bool)

(assert (=> b!4797123 (= res!2039702 (containsKey!3991 (_2!31761 (h!60703 (toList!6961 lm!2473))) key!5896))))

(declare-fun b!4797124 () Bool)

(declare-fun res!2039709 () Bool)

(assert (=> b!4797124 (=> res!2039709 e!2995510)))

(assert (=> b!4797124 (= res!2039709 (not (forall!12292 (toList!6961 lt!1954234) lambda!231614)))))

(declare-fun b!4797125 () Bool)

(declare-fun res!2039708 () Bool)

(assert (=> b!4797125 (=> (not res!2039708) (not e!2995507))))

(declare-datatypes ((ListMap!6433 0))(
  ( (ListMap!6434 (toList!6962 List!54394)) )
))
(declare-fun contains!17912 (ListMap!6433 K!15842) Bool)

(declare-fun extractMap!2468 (List!54395) ListMap!6433)

(assert (=> b!4797125 (= res!2039708 (contains!17912 (extractMap!2468 (toList!6961 lm!2473)) key!5896))))

(declare-fun b!4797126 () Bool)

(assert (=> b!4797126 (= e!2995507 (not e!2995509))))

(declare-fun res!2039701 () Bool)

(assert (=> b!4797126 (=> res!2039701 e!2995509)))

(declare-fun value!3111 () V!16088)

(declare-fun getValue!129 (List!54395 K!15842) V!16088)

(assert (=> b!4797126 (= res!2039701 (not (= (getValue!129 (toList!6961 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!583 (List!54395 K!15842) Bool)

(assert (=> b!4797126 (containsKeyBiggerList!583 (toList!6961 lm!2473) key!5896)))

(declare-datatypes ((Unit!140360 0))(
  ( (Unit!140361) )
))
(declare-fun lt!1954233 () Unit!140360)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!323 (ListLongMap!5383 K!15842 Hashable!6941) Unit!140360)

(assert (=> b!4797126 (= lt!1954233 (lemmaInLongMapThenContainsKeyBiggerList!323 lm!2473 key!5896 hashF!1559))))

(assert (=> b!4797126 e!2995511))

(declare-fun res!2039705 () Bool)

(assert (=> b!4797126 (=> (not res!2039705) (not e!2995511))))

(assert (=> b!4797126 (= res!2039705 (contains!17911 lm!2473 lt!1954235))))

(declare-fun hash!4988 (Hashable!6941 K!15842) (_ BitVec 64))

(assert (=> b!4797126 (= lt!1954235 (hash!4988 hashF!1559 key!5896))))

(declare-fun lt!1954232 () Unit!140360)

(declare-fun lemmaInGenericMapThenInLongMap!345 (ListLongMap!5383 K!15842 Hashable!6941) Unit!140360)

(assert (=> b!4797126 (= lt!1954232 (lemmaInGenericMapThenInLongMap!345 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4797127 () Bool)

(declare-fun res!2039706 () Bool)

(assert (=> b!4797127 (=> res!2039706 e!2995509)))

(assert (=> b!4797127 (= res!2039706 (not (is-Cons!54271 (toList!6961 lm!2473))))))

(declare-fun b!4797128 () Bool)

(declare-fun res!2039704 () Bool)

(assert (=> b!4797128 (=> (not res!2039704) (not e!2995507))))

(assert (=> b!4797128 (= res!2039704 (allKeysSameHashInMap!2346 lm!2473 hashF!1559))))

(assert (= (and start!494660 res!2039707) b!4797128))

(assert (= (and b!4797128 res!2039704) b!4797125))

(assert (= (and b!4797125 res!2039708) b!4797126))

(assert (= (and b!4797126 res!2039705) b!4797120))

(assert (= (and b!4797126 (not res!2039701)) b!4797127))

(assert (= (and b!4797127 (not res!2039706)) b!4797123))

(assert (= (and b!4797123 (not res!2039702)) b!4797119))

(assert (= (and b!4797119 (not res!2039703)) b!4797124))

(assert (= (and b!4797124 (not res!2039709)) b!4797122))

(assert (= start!494660 b!4797121))

(declare-fun m!5779574 () Bool)

(assert (=> b!4797120 m!5779574))

(assert (=> b!4797120 m!5779574))

(declare-fun m!5779576 () Bool)

(assert (=> b!4797120 m!5779576))

(assert (=> b!4797120 m!5779576))

(declare-fun m!5779578 () Bool)

(assert (=> b!4797120 m!5779578))

(declare-fun m!5779580 () Bool)

(assert (=> b!4797125 m!5779580))

(assert (=> b!4797125 m!5779580))

(declare-fun m!5779582 () Bool)

(assert (=> b!4797125 m!5779582))

(declare-fun m!5779584 () Bool)

(assert (=> b!4797124 m!5779584))

(declare-fun m!5779586 () Bool)

(assert (=> b!4797123 m!5779586))

(declare-fun m!5779588 () Bool)

(assert (=> b!4797122 m!5779588))

(declare-fun m!5779590 () Bool)

(assert (=> b!4797126 m!5779590))

(declare-fun m!5779592 () Bool)

(assert (=> b!4797126 m!5779592))

(declare-fun m!5779594 () Bool)

(assert (=> b!4797126 m!5779594))

(declare-fun m!5779596 () Bool)

(assert (=> b!4797126 m!5779596))

(declare-fun m!5779598 () Bool)

(assert (=> b!4797126 m!5779598))

(declare-fun m!5779600 () Bool)

(assert (=> b!4797126 m!5779600))

(declare-fun m!5779602 () Bool)

(assert (=> b!4797119 m!5779602))

(declare-fun m!5779604 () Bool)

(assert (=> b!4797119 m!5779604))

(declare-fun m!5779606 () Bool)

(assert (=> start!494660 m!5779606))

(declare-fun m!5779608 () Bool)

(assert (=> start!494660 m!5779608))

(declare-fun m!5779610 () Bool)

(assert (=> b!4797128 m!5779610))

(push 1)

(assert (not b!4797123))

(assert tp_is_empty!33627)

(assert (not b!4797124))

(assert (not b!4797125))

(assert (not b!4797126))

(assert (not b!4797128))

(assert (not b!4797120))

(assert (not start!494660))

(assert (not b!4797119))

(assert tp_is_empty!33625)

(assert (not b!4797121))

(assert (not b!4797122))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1156440 () Bool)

(declare-fun d!1535398 () Bool)

(assert (= bs!1156440 (and d!1535398 start!494660)))

(declare-fun lambda!231622 () Int)

(assert (=> bs!1156440 (not (= lambda!231622 lambda!231614))))

(assert (=> d!1535398 true))

(assert (=> d!1535398 (= (allKeysSameHashInMap!2346 lm!2473 hashF!1559) (forall!12292 (toList!6961 lm!2473) lambda!231622))))

(declare-fun bs!1156441 () Bool)

(assert (= bs!1156441 d!1535398))

(declare-fun m!5779650 () Bool)

(assert (=> bs!1156441 m!5779650))

(assert (=> b!4797128 d!1535398))

(declare-fun d!1535400 () Bool)

(declare-fun res!2039741 () Bool)

(declare-fun e!2995531 () Bool)

(assert (=> d!1535400 (=> res!2039741 e!2995531)))

(assert (=> d!1535400 (= res!2039741 (and (is-Cons!54270 (_2!31761 (h!60703 (toList!6961 lm!2473)))) (= (_1!31760 (h!60702 (_2!31761 (h!60703 (toList!6961 lm!2473))))) key!5896)))))

(assert (=> d!1535400 (= (containsKey!3991 (_2!31761 (h!60703 (toList!6961 lm!2473))) key!5896) e!2995531)))

(declare-fun b!4797165 () Bool)

(declare-fun e!2995532 () Bool)

(assert (=> b!4797165 (= e!2995531 e!2995532)))

(declare-fun res!2039742 () Bool)

(assert (=> b!4797165 (=> (not res!2039742) (not e!2995532))))

(assert (=> b!4797165 (= res!2039742 (is-Cons!54270 (_2!31761 (h!60703 (toList!6961 lm!2473)))))))

(declare-fun b!4797166 () Bool)

(assert (=> b!4797166 (= e!2995532 (containsKey!3991 (t!361844 (_2!31761 (h!60703 (toList!6961 lm!2473)))) key!5896))))

(assert (= (and d!1535400 (not res!2039741)) b!4797165))

(assert (= (and b!4797165 res!2039742) b!4797166))

(declare-fun m!5779652 () Bool)

(assert (=> b!4797166 m!5779652))

(assert (=> b!4797123 d!1535400))

(declare-fun bs!1156442 () Bool)

(declare-fun d!1535402 () Bool)

(assert (= bs!1156442 (and d!1535402 start!494660)))

(declare-fun lambda!231623 () Int)

(assert (=> bs!1156442 (not (= lambda!231623 lambda!231614))))

(declare-fun bs!1156443 () Bool)

(assert (= bs!1156443 (and d!1535402 d!1535398)))

(assert (=> bs!1156443 (= lambda!231623 lambda!231622)))

(assert (=> d!1535402 true))

(assert (=> d!1535402 (= (allKeysSameHashInMap!2346 lt!1954234 hashF!1559) (forall!12292 (toList!6961 lt!1954234) lambda!231623))))

(declare-fun bs!1156444 () Bool)

(assert (= bs!1156444 d!1535402))

(declare-fun m!5779654 () Bool)

(assert (=> bs!1156444 m!5779654))

(assert (=> b!4797122 d!1535402))

(declare-fun d!1535406 () Bool)

(declare-fun res!2039747 () Bool)

(declare-fun e!2995537 () Bool)

(assert (=> d!1535406 (=> res!2039747 e!2995537)))

(assert (=> d!1535406 (= res!2039747 (is-Nil!54271 (toList!6961 lt!1954234)))))

(assert (=> d!1535406 (= (forall!12292 (toList!6961 lt!1954234) lambda!231614) e!2995537)))

(declare-fun b!4797171 () Bool)

(declare-fun e!2995538 () Bool)

(assert (=> b!4797171 (= e!2995537 e!2995538)))

(declare-fun res!2039748 () Bool)

(assert (=> b!4797171 (=> (not res!2039748) (not e!2995538))))

(declare-fun dynLambda!22083 (Int tuple2!56934) Bool)

(assert (=> b!4797171 (= res!2039748 (dynLambda!22083 lambda!231614 (h!60703 (toList!6961 lt!1954234))))))

(declare-fun b!4797172 () Bool)

(assert (=> b!4797172 (= e!2995538 (forall!12292 (t!361845 (toList!6961 lt!1954234)) lambda!231614))))

(assert (= (and d!1535406 (not res!2039747)) b!4797171))

(assert (= (and b!4797171 res!2039748) b!4797172))

(declare-fun b_lambda!187251 () Bool)

(assert (=> (not b_lambda!187251) (not b!4797171)))

(declare-fun m!5779656 () Bool)

(assert (=> b!4797171 m!5779656))

(declare-fun m!5779658 () Bool)

(assert (=> b!4797172 m!5779658))

(assert (=> b!4797124 d!1535406))

(declare-fun d!1535408 () Bool)

(declare-fun e!2995550 () Bool)

(assert (=> d!1535408 e!2995550))

(declare-fun res!2039757 () Bool)

(assert (=> d!1535408 (=> res!2039757 e!2995550)))

(declare-fun lt!1954257 () Bool)

(assert (=> d!1535408 (= res!2039757 (not lt!1954257))))

(declare-fun lt!1954259 () Bool)

(assert (=> d!1535408 (= lt!1954257 lt!1954259)))

(declare-fun lt!1954258 () Unit!140360)

(declare-fun e!2995549 () Unit!140360)

(assert (=> d!1535408 (= lt!1954258 e!2995549)))

(declare-fun c!817614 () Bool)

(assert (=> d!1535408 (= c!817614 lt!1954259)))

(declare-fun containsKey!3993 (List!54395 (_ BitVec 64)) Bool)

(assert (=> d!1535408 (= lt!1954259 (containsKey!3993 (toList!6961 lt!1954234) lt!1954235))))

(assert (=> d!1535408 (= (contains!17911 lt!1954234 lt!1954235) lt!1954257)))

(declare-fun b!4797185 () Bool)

(declare-fun lt!1954256 () Unit!140360)

(assert (=> b!4797185 (= e!2995549 lt!1954256)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2167 (List!54395 (_ BitVec 64)) Unit!140360)

(assert (=> b!4797185 (= lt!1954256 (lemmaContainsKeyImpliesGetValueByKeyDefined!2167 (toList!6961 lt!1954234) lt!1954235))))

(declare-datatypes ((Option!13143 0))(
  ( (None!13142) (Some!13142 (v!48451 List!54394)) )
))
(declare-fun isDefined!10284 (Option!13143) Bool)

(declare-fun getValueByKey!2376 (List!54395 (_ BitVec 64)) Option!13143)

(assert (=> b!4797185 (isDefined!10284 (getValueByKey!2376 (toList!6961 lt!1954234) lt!1954235))))

(declare-fun b!4797186 () Bool)

(declare-fun Unit!140364 () Unit!140360)

(assert (=> b!4797186 (= e!2995549 Unit!140364)))

(declare-fun b!4797187 () Bool)

(assert (=> b!4797187 (= e!2995550 (isDefined!10284 (getValueByKey!2376 (toList!6961 lt!1954234) lt!1954235)))))

(assert (= (and d!1535408 c!817614) b!4797185))

(assert (= (and d!1535408 (not c!817614)) b!4797186))

(assert (= (and d!1535408 (not res!2039757)) b!4797187))

(declare-fun m!5779664 () Bool)

(assert (=> d!1535408 m!5779664))

(declare-fun m!5779666 () Bool)

(assert (=> b!4797185 m!5779666))

(declare-fun m!5779668 () Bool)

(assert (=> b!4797185 m!5779668))

(assert (=> b!4797185 m!5779668))

(declare-fun m!5779670 () Bool)

(assert (=> b!4797185 m!5779670))

(assert (=> b!4797187 m!5779668))

(assert (=> b!4797187 m!5779668))

(assert (=> b!4797187 m!5779670))

(assert (=> b!4797119 d!1535408))

(declare-fun d!1535412 () Bool)

(declare-fun tail!9298 (List!54395) List!54395)

(assert (=> d!1535412 (= (tail!9296 lm!2473) (ListLongMap!5384 (tail!9298 (toList!6961 lm!2473))))))

(declare-fun bs!1156445 () Bool)

(assert (= bs!1156445 d!1535412))

(declare-fun m!5779672 () Bool)

(assert (=> bs!1156445 m!5779672))

(assert (=> b!4797119 d!1535412))

(declare-fun d!1535414 () Bool)

(declare-fun isEmpty!29477 (Option!13141) Bool)

(assert (=> d!1535414 (= (isDefined!10282 (getPair!913 (apply!13014 lm!2473 lt!1954235) key!5896)) (not (isEmpty!29477 (getPair!913 (apply!13014 lm!2473 lt!1954235) key!5896))))))

(declare-fun bs!1156447 () Bool)

(assert (= bs!1156447 d!1535414))

(assert (=> bs!1156447 m!5779576))

(declare-fun m!5779676 () Bool)

(assert (=> bs!1156447 m!5779676))

(assert (=> b!4797120 d!1535414))

(declare-fun b!4797206 () Bool)

(declare-fun e!2995565 () Bool)

(declare-fun e!2995562 () Bool)

(assert (=> b!4797206 (= e!2995565 e!2995562)))

(declare-fun res!2039769 () Bool)

(assert (=> b!4797206 (=> (not res!2039769) (not e!2995562))))

(declare-fun lt!1954262 () Option!13141)

(assert (=> b!4797206 (= res!2039769 (isDefined!10282 lt!1954262))))

(declare-fun b!4797207 () Bool)

(declare-fun e!2995561 () Option!13141)

(assert (=> b!4797207 (= e!2995561 (getPair!913 (t!361844 (apply!13014 lm!2473 lt!1954235)) key!5896))))

(declare-fun b!4797208 () Bool)

(declare-fun e!2995563 () Option!13141)

(assert (=> b!4797208 (= e!2995563 (Some!13140 (h!60702 (apply!13014 lm!2473 lt!1954235))))))

(declare-fun b!4797209 () Bool)

(declare-fun e!2995564 () Bool)

(assert (=> b!4797209 (= e!2995564 (not (containsKey!3991 (apply!13014 lm!2473 lt!1954235) key!5896)))))

(declare-fun b!4797210 () Bool)

(assert (=> b!4797210 (= e!2995563 e!2995561)))

(declare-fun c!817620 () Bool)

(assert (=> b!4797210 (= c!817620 (is-Cons!54270 (apply!13014 lm!2473 lt!1954235)))))

(declare-fun b!4797211 () Bool)

(declare-fun res!2039766 () Bool)

(assert (=> b!4797211 (=> (not res!2039766) (not e!2995562))))

(declare-fun get!18519 (Option!13141) tuple2!56932)

(assert (=> b!4797211 (= res!2039766 (= (_1!31760 (get!18519 lt!1954262)) key!5896))))

(declare-fun b!4797212 () Bool)

(declare-fun contains!17915 (List!54394 tuple2!56932) Bool)

(assert (=> b!4797212 (= e!2995562 (contains!17915 (apply!13014 lm!2473 lt!1954235) (get!18519 lt!1954262)))))

(declare-fun b!4797213 () Bool)

(assert (=> b!4797213 (= e!2995561 None!13140)))

(declare-fun d!1535418 () Bool)

(assert (=> d!1535418 e!2995565))

(declare-fun res!2039767 () Bool)

(assert (=> d!1535418 (=> res!2039767 e!2995565)))

(assert (=> d!1535418 (= res!2039767 e!2995564)))

(declare-fun res!2039768 () Bool)

(assert (=> d!1535418 (=> (not res!2039768) (not e!2995564))))

(assert (=> d!1535418 (= res!2039768 (isEmpty!29477 lt!1954262))))

(assert (=> d!1535418 (= lt!1954262 e!2995563)))

(declare-fun c!817619 () Bool)

(assert (=> d!1535418 (= c!817619 (and (is-Cons!54270 (apply!13014 lm!2473 lt!1954235)) (= (_1!31760 (h!60702 (apply!13014 lm!2473 lt!1954235))) key!5896)))))

(declare-fun noDuplicateKeys!2352 (List!54394) Bool)

(assert (=> d!1535418 (noDuplicateKeys!2352 (apply!13014 lm!2473 lt!1954235))))

(assert (=> d!1535418 (= (getPair!913 (apply!13014 lm!2473 lt!1954235) key!5896) lt!1954262)))

(assert (= (and d!1535418 c!817619) b!4797208))

(assert (= (and d!1535418 (not c!817619)) b!4797210))

(assert (= (and b!4797210 c!817620) b!4797207))

(assert (= (and b!4797210 (not c!817620)) b!4797213))

(assert (= (and d!1535418 res!2039768) b!4797209))

(assert (= (and d!1535418 (not res!2039767)) b!4797206))

(assert (= (and b!4797206 res!2039769) b!4797211))

(assert (= (and b!4797211 res!2039766) b!4797212))

(declare-fun m!5779680 () Bool)

(assert (=> b!4797206 m!5779680))

(declare-fun m!5779682 () Bool)

(assert (=> b!4797211 m!5779682))

(assert (=> b!4797209 m!5779574))

(declare-fun m!5779684 () Bool)

(assert (=> b!4797209 m!5779684))

(declare-fun m!5779686 () Bool)

(assert (=> d!1535418 m!5779686))

(assert (=> d!1535418 m!5779574))

(declare-fun m!5779688 () Bool)

(assert (=> d!1535418 m!5779688))

(assert (=> b!4797212 m!5779682))

(assert (=> b!4797212 m!5779574))

(assert (=> b!4797212 m!5779682))

(declare-fun m!5779690 () Bool)

(assert (=> b!4797212 m!5779690))

(declare-fun m!5779692 () Bool)

(assert (=> b!4797207 m!5779692))

(assert (=> b!4797120 d!1535418))

(declare-fun d!1535422 () Bool)

(declare-fun get!18520 (Option!13143) List!54394)

(assert (=> d!1535422 (= (apply!13014 lm!2473 lt!1954235) (get!18520 (getValueByKey!2376 (toList!6961 lm!2473) lt!1954235)))))

(declare-fun bs!1156453 () Bool)

(assert (= bs!1156453 d!1535422))

(declare-fun m!5779696 () Bool)

(assert (=> bs!1156453 m!5779696))

(assert (=> bs!1156453 m!5779696))

(declare-fun m!5779698 () Bool)

(assert (=> bs!1156453 m!5779698))

(assert (=> b!4797120 d!1535422))

(declare-fun b!4797241 () Bool)

(declare-datatypes ((List!54398 0))(
  ( (Nil!54274) (Cons!54274 (h!60706 K!15842) (t!361848 List!54398)) )
))
(declare-fun e!2995585 () List!54398)

(declare-fun getKeysList!1089 (List!54394) List!54398)

(assert (=> b!4797241 (= e!2995585 (getKeysList!1089 (toList!6962 (extractMap!2468 (toList!6961 lm!2473)))))))

(declare-fun d!1535426 () Bool)

(declare-fun e!2995584 () Bool)

(assert (=> d!1535426 e!2995584))

(declare-fun res!2039779 () Bool)

(assert (=> d!1535426 (=> res!2039779 e!2995584)))

(declare-fun e!2995587 () Bool)

(assert (=> d!1535426 (= res!2039779 e!2995587)))

(declare-fun res!2039780 () Bool)

(assert (=> d!1535426 (=> (not res!2039780) (not e!2995587))))

(declare-fun lt!1954296 () Bool)

(assert (=> d!1535426 (= res!2039780 (not lt!1954296))))

(declare-fun lt!1954291 () Bool)

(assert (=> d!1535426 (= lt!1954296 lt!1954291)))

(declare-fun lt!1954298 () Unit!140360)

(declare-fun e!2995588 () Unit!140360)

(assert (=> d!1535426 (= lt!1954298 e!2995588)))

(declare-fun c!817631 () Bool)

(assert (=> d!1535426 (= c!817631 lt!1954291)))

(declare-fun containsKey!3994 (List!54394 K!15842) Bool)

(assert (=> d!1535426 (= lt!1954291 (containsKey!3994 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))) key!5896))))

(assert (=> d!1535426 (= (contains!17912 (extractMap!2468 (toList!6961 lm!2473)) key!5896) lt!1954296)))

(declare-fun b!4797242 () Bool)

(declare-fun keys!19830 (ListMap!6433) List!54398)

(assert (=> b!4797242 (= e!2995585 (keys!19830 (extractMap!2468 (toList!6961 lm!2473))))))

(declare-fun b!4797243 () Bool)

(assert (=> b!4797243 false))

(declare-fun lt!1954293 () Unit!140360)

(declare-fun lt!1954297 () Unit!140360)

(assert (=> b!4797243 (= lt!1954293 lt!1954297)))

(assert (=> b!4797243 (containsKey!3994 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))) key!5896)))

(declare-fun lemmaInGetKeysListThenContainsKey!1089 (List!54394 K!15842) Unit!140360)

(assert (=> b!4797243 (= lt!1954297 (lemmaInGetKeysListThenContainsKey!1089 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))) key!5896))))

(declare-fun e!2995586 () Unit!140360)

(declare-fun Unit!140365 () Unit!140360)

(assert (=> b!4797243 (= e!2995586 Unit!140365)))

(declare-fun b!4797244 () Bool)

(declare-fun contains!17916 (List!54398 K!15842) Bool)

(assert (=> b!4797244 (= e!2995587 (not (contains!17916 (keys!19830 (extractMap!2468 (toList!6961 lm!2473))) key!5896)))))

(declare-fun bm!335234 () Bool)

(declare-fun call!335239 () Bool)

(assert (=> bm!335234 (= call!335239 (contains!17916 e!2995585 key!5896))))

(declare-fun c!817632 () Bool)

(assert (=> bm!335234 (= c!817632 c!817631)))

(declare-fun b!4797245 () Bool)

(declare-fun lt!1954295 () Unit!140360)

(assert (=> b!4797245 (= e!2995588 lt!1954295)))

(declare-fun lt!1954292 () Unit!140360)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2168 (List!54394 K!15842) Unit!140360)

(assert (=> b!4797245 (= lt!1954292 (lemmaContainsKeyImpliesGetValueByKeyDefined!2168 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))) key!5896))))

(declare-datatypes ((Option!13144 0))(
  ( (None!13143) (Some!13143 (v!48452 V!16088)) )
))
(declare-fun isDefined!10285 (Option!13144) Bool)

(declare-fun getValueByKey!2377 (List!54394 K!15842) Option!13144)

(assert (=> b!4797245 (isDefined!10285 (getValueByKey!2377 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))) key!5896))))

(declare-fun lt!1954294 () Unit!140360)

(assert (=> b!4797245 (= lt!1954294 lt!1954292)))

(declare-fun lemmaInListThenGetKeysListContains!1084 (List!54394 K!15842) Unit!140360)

(assert (=> b!4797245 (= lt!1954295 (lemmaInListThenGetKeysListContains!1084 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))) key!5896))))

(assert (=> b!4797245 call!335239))

(declare-fun b!4797246 () Bool)

(declare-fun Unit!140366 () Unit!140360)

(assert (=> b!4797246 (= e!2995586 Unit!140366)))

(declare-fun b!4797247 () Bool)

(declare-fun e!2995589 () Bool)

(assert (=> b!4797247 (= e!2995584 e!2995589)))

(declare-fun res!2039781 () Bool)

(assert (=> b!4797247 (=> (not res!2039781) (not e!2995589))))

(assert (=> b!4797247 (= res!2039781 (isDefined!10285 (getValueByKey!2377 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))) key!5896)))))

(declare-fun b!4797248 () Bool)

(assert (=> b!4797248 (= e!2995588 e!2995586)))

(declare-fun c!817630 () Bool)

(assert (=> b!4797248 (= c!817630 call!335239)))

(declare-fun b!4797249 () Bool)

(assert (=> b!4797249 (= e!2995589 (contains!17916 (keys!19830 (extractMap!2468 (toList!6961 lm!2473))) key!5896))))

(assert (= (and d!1535426 c!817631) b!4797245))

(assert (= (and d!1535426 (not c!817631)) b!4797248))

(assert (= (and b!4797248 c!817630) b!4797243))

(assert (= (and b!4797248 (not c!817630)) b!4797246))

(assert (= (or b!4797245 b!4797248) bm!335234))

(assert (= (and bm!335234 c!817632) b!4797241))

(assert (= (and bm!335234 (not c!817632)) b!4797242))

(assert (= (and d!1535426 res!2039780) b!4797244))

(assert (= (and d!1535426 (not res!2039779)) b!4797247))

(assert (= (and b!4797247 res!2039781) b!4797249))

(declare-fun m!5779708 () Bool)

(assert (=> b!4797241 m!5779708))

(declare-fun m!5779710 () Bool)

(assert (=> bm!335234 m!5779710))

(assert (=> b!4797242 m!5779580))

(declare-fun m!5779712 () Bool)

(assert (=> b!4797242 m!5779712))

(assert (=> b!4797244 m!5779580))

(assert (=> b!4797244 m!5779712))

(assert (=> b!4797244 m!5779712))

(declare-fun m!5779714 () Bool)

(assert (=> b!4797244 m!5779714))

(declare-fun m!5779716 () Bool)

(assert (=> d!1535426 m!5779716))

(assert (=> b!4797243 m!5779716))

(declare-fun m!5779718 () Bool)

(assert (=> b!4797243 m!5779718))

(declare-fun m!5779720 () Bool)

(assert (=> b!4797247 m!5779720))

(assert (=> b!4797247 m!5779720))

(declare-fun m!5779722 () Bool)

(assert (=> b!4797247 m!5779722))

(declare-fun m!5779724 () Bool)

(assert (=> b!4797245 m!5779724))

(assert (=> b!4797245 m!5779720))

(assert (=> b!4797245 m!5779720))

(assert (=> b!4797245 m!5779722))

(declare-fun m!5779726 () Bool)

(assert (=> b!4797245 m!5779726))

(assert (=> b!4797249 m!5779580))

(assert (=> b!4797249 m!5779712))

(assert (=> b!4797249 m!5779712))

(assert (=> b!4797249 m!5779714))

(assert (=> b!4797125 d!1535426))

(declare-fun bs!1156455 () Bool)

(declare-fun d!1535430 () Bool)

(assert (= bs!1156455 (and d!1535430 start!494660)))

(declare-fun lambda!231630 () Int)

(assert (=> bs!1156455 (= lambda!231630 lambda!231614)))

(declare-fun bs!1156456 () Bool)

(assert (= bs!1156456 (and d!1535430 d!1535398)))

(assert (=> bs!1156456 (not (= lambda!231630 lambda!231622))))

(declare-fun bs!1156457 () Bool)

(assert (= bs!1156457 (and d!1535430 d!1535402)))

(assert (=> bs!1156457 (not (= lambda!231630 lambda!231623))))

(declare-fun lt!1954305 () ListMap!6433)

(declare-fun invariantList!1743 (List!54394) Bool)

(assert (=> d!1535430 (invariantList!1743 (toList!6962 lt!1954305))))

(declare-fun e!2995603 () ListMap!6433)

(assert (=> d!1535430 (= lt!1954305 e!2995603)))

(declare-fun c!817636 () Bool)

(assert (=> d!1535430 (= c!817636 (is-Cons!54271 (toList!6961 lm!2473)))))

(assert (=> d!1535430 (forall!12292 (toList!6961 lm!2473) lambda!231630)))

(assert (=> d!1535430 (= (extractMap!2468 (toList!6961 lm!2473)) lt!1954305)))

(declare-fun b!4797266 () Bool)

(declare-fun addToMapMapFromBucket!1720 (List!54394 ListMap!6433) ListMap!6433)

(assert (=> b!4797266 (= e!2995603 (addToMapMapFromBucket!1720 (_2!31761 (h!60703 (toList!6961 lm!2473))) (extractMap!2468 (t!361845 (toList!6961 lm!2473)))))))

(declare-fun b!4797267 () Bool)

(assert (=> b!4797267 (= e!2995603 (ListMap!6434 Nil!54270))))

(assert (= (and d!1535430 c!817636) b!4797266))

(assert (= (and d!1535430 (not c!817636)) b!4797267))

(declare-fun m!5779740 () Bool)

(assert (=> d!1535430 m!5779740))

(declare-fun m!5779742 () Bool)

(assert (=> d!1535430 m!5779742))

(declare-fun m!5779744 () Bool)

(assert (=> b!4797266 m!5779744))

(assert (=> b!4797266 m!5779744))

(declare-fun m!5779746 () Bool)

(assert (=> b!4797266 m!5779746))

(assert (=> b!4797125 d!1535430))

(declare-fun d!1535438 () Bool)

(declare-fun e!2995605 () Bool)

(assert (=> d!1535438 e!2995605))

(declare-fun res!2039792 () Bool)

(assert (=> d!1535438 (=> res!2039792 e!2995605)))

(declare-fun lt!1954307 () Bool)

(assert (=> d!1535438 (= res!2039792 (not lt!1954307))))

(declare-fun lt!1954309 () Bool)

(assert (=> d!1535438 (= lt!1954307 lt!1954309)))

(declare-fun lt!1954308 () Unit!140360)

(declare-fun e!2995604 () Unit!140360)

(assert (=> d!1535438 (= lt!1954308 e!2995604)))

(declare-fun c!817637 () Bool)

(assert (=> d!1535438 (= c!817637 lt!1954309)))

(assert (=> d!1535438 (= lt!1954309 (containsKey!3993 (toList!6961 lm!2473) lt!1954235))))

(assert (=> d!1535438 (= (contains!17911 lm!2473 lt!1954235) lt!1954307)))

(declare-fun b!4797268 () Bool)

(declare-fun lt!1954306 () Unit!140360)

(assert (=> b!4797268 (= e!2995604 lt!1954306)))

(assert (=> b!4797268 (= lt!1954306 (lemmaContainsKeyImpliesGetValueByKeyDefined!2167 (toList!6961 lm!2473) lt!1954235))))

(assert (=> b!4797268 (isDefined!10284 (getValueByKey!2376 (toList!6961 lm!2473) lt!1954235))))

(declare-fun b!4797269 () Bool)

(declare-fun Unit!140367 () Unit!140360)

(assert (=> b!4797269 (= e!2995604 Unit!140367)))

(declare-fun b!4797270 () Bool)

(assert (=> b!4797270 (= e!2995605 (isDefined!10284 (getValueByKey!2376 (toList!6961 lm!2473) lt!1954235)))))

(assert (= (and d!1535438 c!817637) b!4797268))

(assert (= (and d!1535438 (not c!817637)) b!4797269))

(assert (= (and d!1535438 (not res!2039792)) b!4797270))

(declare-fun m!5779748 () Bool)

(assert (=> d!1535438 m!5779748))

(declare-fun m!5779750 () Bool)

(assert (=> b!4797268 m!5779750))

(assert (=> b!4797268 m!5779696))

(assert (=> b!4797268 m!5779696))

(declare-fun m!5779752 () Bool)

(assert (=> b!4797268 m!5779752))

(assert (=> b!4797270 m!5779696))

(assert (=> b!4797270 m!5779696))

(assert (=> b!4797270 m!5779752))

(assert (=> b!4797126 d!1535438))

(declare-fun d!1535440 () Bool)

(declare-fun res!2039801 () Bool)

(declare-fun e!2995612 () Bool)

(assert (=> d!1535440 (=> res!2039801 e!2995612)))

(declare-fun e!2995614 () Bool)

(assert (=> d!1535440 (= res!2039801 e!2995614)))

(declare-fun res!2039799 () Bool)

(assert (=> d!1535440 (=> (not res!2039799) (not e!2995614))))

(assert (=> d!1535440 (= res!2039799 (is-Cons!54271 (toList!6961 lm!2473)))))

(assert (=> d!1535440 (= (containsKeyBiggerList!583 (toList!6961 lm!2473) key!5896) e!2995612)))

(declare-fun b!4797277 () Bool)

(assert (=> b!4797277 (= e!2995614 (containsKey!3991 (_2!31761 (h!60703 (toList!6961 lm!2473))) key!5896))))

(declare-fun b!4797278 () Bool)

(declare-fun e!2995613 () Bool)

(assert (=> b!4797278 (= e!2995612 e!2995613)))

(declare-fun res!2039800 () Bool)

(assert (=> b!4797278 (=> (not res!2039800) (not e!2995613))))

(assert (=> b!4797278 (= res!2039800 (is-Cons!54271 (toList!6961 lm!2473)))))

(declare-fun b!4797279 () Bool)

(assert (=> b!4797279 (= e!2995613 (containsKeyBiggerList!583 (t!361845 (toList!6961 lm!2473)) key!5896))))

(assert (= (and d!1535440 res!2039799) b!4797277))

(assert (= (and d!1535440 (not res!2039801)) b!4797278))

(assert (= (and b!4797278 res!2039800) b!4797279))

(assert (=> b!4797277 m!5779586))

(declare-fun m!5779754 () Bool)

(assert (=> b!4797279 m!5779754))

(assert (=> b!4797126 d!1535440))

(declare-fun bs!1156462 () Bool)

(declare-fun d!1535442 () Bool)

(assert (= bs!1156462 (and d!1535442 start!494660)))

(declare-fun lambda!231636 () Int)

(assert (=> bs!1156462 (= lambda!231636 lambda!231614)))

(declare-fun bs!1156463 () Bool)

(assert (= bs!1156463 (and d!1535442 d!1535398)))

(assert (=> bs!1156463 (not (= lambda!231636 lambda!231622))))

(declare-fun bs!1156464 () Bool)

(assert (= bs!1156464 (and d!1535442 d!1535402)))

(assert (=> bs!1156464 (not (= lambda!231636 lambda!231623))))

(declare-fun bs!1156465 () Bool)

(assert (= bs!1156465 (and d!1535442 d!1535430)))

(assert (=> bs!1156465 (= lambda!231636 lambda!231630)))

(assert (=> d!1535442 (containsKeyBiggerList!583 (toList!6961 lm!2473) key!5896)))

(declare-fun lt!1954315 () Unit!140360)

(declare-fun choose!34618 (ListLongMap!5383 K!15842 Hashable!6941) Unit!140360)

(assert (=> d!1535442 (= lt!1954315 (choose!34618 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1535442 (forall!12292 (toList!6961 lm!2473) lambda!231636)))

(assert (=> d!1535442 (= (lemmaInLongMapThenContainsKeyBiggerList!323 lm!2473 key!5896 hashF!1559) lt!1954315)))

(declare-fun bs!1156466 () Bool)

(assert (= bs!1156466 d!1535442))

(assert (=> bs!1156466 m!5779590))

(declare-fun m!5779760 () Bool)

(assert (=> bs!1156466 m!5779760))

(declare-fun m!5779762 () Bool)

(assert (=> bs!1156466 m!5779762))

(assert (=> b!4797126 d!1535442))

(declare-fun bs!1156467 () Bool)

(declare-fun d!1535446 () Bool)

(assert (= bs!1156467 (and d!1535446 d!1535430)))

(declare-fun lambda!231639 () Int)

(assert (=> bs!1156467 (= lambda!231639 lambda!231630)))

(declare-fun bs!1156468 () Bool)

(assert (= bs!1156468 (and d!1535446 d!1535402)))

(assert (=> bs!1156468 (not (= lambda!231639 lambda!231623))))

(declare-fun bs!1156469 () Bool)

(assert (= bs!1156469 (and d!1535446 d!1535398)))

(assert (=> bs!1156469 (not (= lambda!231639 lambda!231622))))

(declare-fun bs!1156470 () Bool)

(assert (= bs!1156470 (and d!1535446 d!1535442)))

(assert (=> bs!1156470 (= lambda!231639 lambda!231636)))

(declare-fun bs!1156471 () Bool)

(assert (= bs!1156471 (and d!1535446 start!494660)))

(assert (=> bs!1156471 (= lambda!231639 lambda!231614)))

(declare-fun e!2995617 () Bool)

(assert (=> d!1535446 e!2995617))

(declare-fun res!2039804 () Bool)

(assert (=> d!1535446 (=> (not res!2039804) (not e!2995617))))

(assert (=> d!1535446 (= res!2039804 (contains!17911 lm!2473 (hash!4988 hashF!1559 key!5896)))))

(declare-fun lt!1954318 () Unit!140360)

(declare-fun choose!34619 (ListLongMap!5383 K!15842 Hashable!6941) Unit!140360)

(assert (=> d!1535446 (= lt!1954318 (choose!34619 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1535446 (forall!12292 (toList!6961 lm!2473) lambda!231639)))

(assert (=> d!1535446 (= (lemmaInGenericMapThenInLongMap!345 lm!2473 key!5896 hashF!1559) lt!1954318)))

(declare-fun b!4797282 () Bool)

(assert (=> b!4797282 (= e!2995617 (isDefined!10282 (getPair!913 (apply!13014 lm!2473 (hash!4988 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1535446 res!2039804) b!4797282))

(assert (=> d!1535446 m!5779594))

(assert (=> d!1535446 m!5779594))

(declare-fun m!5779764 () Bool)

(assert (=> d!1535446 m!5779764))

(declare-fun m!5779766 () Bool)

(assert (=> d!1535446 m!5779766))

(declare-fun m!5779768 () Bool)

(assert (=> d!1535446 m!5779768))

(assert (=> b!4797282 m!5779594))

(assert (=> b!4797282 m!5779594))

(declare-fun m!5779770 () Bool)

(assert (=> b!4797282 m!5779770))

(assert (=> b!4797282 m!5779770))

(declare-fun m!5779772 () Bool)

(assert (=> b!4797282 m!5779772))

(assert (=> b!4797282 m!5779772))

(declare-fun m!5779774 () Bool)

(assert (=> b!4797282 m!5779774))

(assert (=> b!4797126 d!1535446))

(declare-fun d!1535448 () Bool)

(declare-fun c!817640 () Bool)

(declare-fun e!2995625 () Bool)

(assert (=> d!1535448 (= c!817640 e!2995625)))

(declare-fun res!2039809 () Bool)

(assert (=> d!1535448 (=> (not res!2039809) (not e!2995625))))

(assert (=> d!1535448 (= res!2039809 (is-Cons!54271 (toList!6961 lm!2473)))))

(declare-fun e!2995624 () V!16088)

(assert (=> d!1535448 (= (getValue!129 (toList!6961 lm!2473) key!5896) e!2995624)))

(declare-fun b!4797293 () Bool)

(assert (=> b!4797293 (= e!2995625 (containsKey!3991 (_2!31761 (h!60703 (toList!6961 lm!2473))) key!5896))))

(declare-fun b!4797291 () Bool)

(assert (=> b!4797291 (= e!2995624 (_2!31760 (get!18519 (getPair!913 (_2!31761 (h!60703 (toList!6961 lm!2473))) key!5896))))))

(declare-fun b!4797292 () Bool)

(assert (=> b!4797292 (= e!2995624 (getValue!129 (t!361845 (toList!6961 lm!2473)) key!5896))))

(assert (= (and d!1535448 res!2039809) b!4797293))

(assert (= (and d!1535448 c!817640) b!4797291))

(assert (= (and d!1535448 (not c!817640)) b!4797292))

(assert (=> b!4797293 m!5779586))

(declare-fun m!5779776 () Bool)

(assert (=> b!4797291 m!5779776))

(assert (=> b!4797291 m!5779776))

(declare-fun m!5779778 () Bool)

(assert (=> b!4797291 m!5779778))

(declare-fun m!5779780 () Bool)

(assert (=> b!4797292 m!5779780))

(assert (=> b!4797126 d!1535448))

(declare-fun d!1535450 () Bool)

(declare-fun hash!4990 (Hashable!6941 K!15842) (_ BitVec 64))

(assert (=> d!1535450 (= (hash!4988 hashF!1559 key!5896) (hash!4990 hashF!1559 key!5896))))

(declare-fun bs!1156472 () Bool)

(assert (= bs!1156472 d!1535450))

(declare-fun m!5779782 () Bool)

(assert (=> bs!1156472 m!5779782))

(assert (=> b!4797126 d!1535450))

(declare-fun d!1535452 () Bool)

(declare-fun res!2039810 () Bool)

(declare-fun e!2995626 () Bool)

(assert (=> d!1535452 (=> res!2039810 e!2995626)))

(assert (=> d!1535452 (= res!2039810 (is-Nil!54271 (toList!6961 lm!2473)))))

(assert (=> d!1535452 (= (forall!12292 (toList!6961 lm!2473) lambda!231614) e!2995626)))

(declare-fun b!4797294 () Bool)

(declare-fun e!2995627 () Bool)

(assert (=> b!4797294 (= e!2995626 e!2995627)))

(declare-fun res!2039811 () Bool)

(assert (=> b!4797294 (=> (not res!2039811) (not e!2995627))))

(assert (=> b!4797294 (= res!2039811 (dynLambda!22083 lambda!231614 (h!60703 (toList!6961 lm!2473))))))

(declare-fun b!4797295 () Bool)

(assert (=> b!4797295 (= e!2995627 (forall!12292 (t!361845 (toList!6961 lm!2473)) lambda!231614))))

(assert (= (and d!1535452 (not res!2039810)) b!4797294))

(assert (= (and b!4797294 res!2039811) b!4797295))

(declare-fun b_lambda!187255 () Bool)

(assert (=> (not b_lambda!187255) (not b!4797294)))

(declare-fun m!5779784 () Bool)

(assert (=> b!4797294 m!5779784))

(declare-fun m!5779786 () Bool)

(assert (=> b!4797295 m!5779786))

(assert (=> start!494660 d!1535452))

(declare-fun d!1535454 () Bool)

(declare-fun isStrictlySorted!890 (List!54395) Bool)

(assert (=> d!1535454 (= (inv!69869 lm!2473) (isStrictlySorted!890 (toList!6961 lm!2473)))))

(declare-fun bs!1156473 () Bool)

(assert (= bs!1156473 d!1535454))

(declare-fun m!5779788 () Bool)

(assert (=> bs!1156473 m!5779788))

(assert (=> start!494660 d!1535454))

(declare-fun b!4797301 () Bool)

(declare-fun e!2995631 () Bool)

(declare-fun tp!1358219 () Bool)

(declare-fun tp!1358220 () Bool)

(assert (=> b!4797301 (= e!2995631 (and tp!1358219 tp!1358220))))

(assert (=> b!4797121 (= tp!1358211 e!2995631)))

(assert (= (and b!4797121 (is-Cons!54271 (toList!6961 lm!2473))) b!4797301))

(declare-fun b_lambda!187257 () Bool)

(assert (= b_lambda!187255 (or start!494660 b_lambda!187257)))

(declare-fun bs!1156474 () Bool)

(declare-fun d!1535456 () Bool)

(assert (= bs!1156474 (and d!1535456 start!494660)))

(assert (=> bs!1156474 (= (dynLambda!22083 lambda!231614 (h!60703 (toList!6961 lm!2473))) (noDuplicateKeys!2352 (_2!31761 (h!60703 (toList!6961 lm!2473)))))))

(declare-fun m!5779790 () Bool)

(assert (=> bs!1156474 m!5779790))

(assert (=> b!4797294 d!1535456))

(declare-fun b_lambda!187259 () Bool)

(assert (= b_lambda!187251 (or start!494660 b_lambda!187259)))

(declare-fun bs!1156476 () Bool)

(declare-fun d!1535458 () Bool)

(assert (= bs!1156476 (and d!1535458 start!494660)))

(assert (=> bs!1156476 (= (dynLambda!22083 lambda!231614 (h!60703 (toList!6961 lt!1954234))) (noDuplicateKeys!2352 (_2!31761 (h!60703 (toList!6961 lt!1954234)))))))

(declare-fun m!5779792 () Bool)

(assert (=> bs!1156476 m!5779792))

(assert (=> b!4797171 d!1535458))

(push 1)

(assert (not bs!1156476))

(assert tp_is_empty!33625)

(assert (not b!4797282))

(assert (not b!4797242))

(assert (not b!4797266))

(assert (not b!4797291))

(assert (not d!1535454))

(assert (not b!4797209))

(assert (not b_lambda!187257))

(assert (not d!1535422))

(assert (not b!4797166))

(assert (not bs!1156474))

(assert (not b!4797185))

(assert (not b!4797279))

(assert (not b!4797292))

(assert (not b!4797212))

(assert (not b!4797244))

(assert (not bm!335234))

(assert (not b!4797247))

(assert (not d!1535398))

(assert (not b!4797245))

(assert tp_is_empty!33627)

(assert (not b!4797241))

(assert (not d!1535412))

(assert (not b!4797295))

(assert (not d!1535450))

(assert (not b!4797243))

(assert (not b_lambda!187259))

(assert (not d!1535430))

(assert (not d!1535442))

(assert (not d!1535408))

(assert (not b!4797211))

(assert (not d!1535438))

(assert (not b!4797187))

(assert (not b!4797172))

(assert (not b!4797301))

(assert (not d!1535426))

(assert (not d!1535446))

(assert (not d!1535402))

(assert (not d!1535414))

(assert (not b!4797293))

(assert (not b!4797206))

(assert (not b!4797270))

(assert (not b!4797249))

(assert (not b!4797277))

(assert (not b!4797268))

(assert (not b!4797207))

(assert (not d!1535418))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1535482 () Bool)

(assert (=> d!1535482 (isDefined!10284 (getValueByKey!2376 (toList!6961 lm!2473) lt!1954235))))

(declare-fun lt!1954354 () Unit!140360)

(declare-fun choose!34622 (List!54395 (_ BitVec 64)) Unit!140360)

(assert (=> d!1535482 (= lt!1954354 (choose!34622 (toList!6961 lm!2473) lt!1954235))))

(declare-fun e!2995687 () Bool)

(assert (=> d!1535482 e!2995687))

(declare-fun res!2039847 () Bool)

(assert (=> d!1535482 (=> (not res!2039847) (not e!2995687))))

(assert (=> d!1535482 (= res!2039847 (isStrictlySorted!890 (toList!6961 lm!2473)))))

(assert (=> d!1535482 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2167 (toList!6961 lm!2473) lt!1954235) lt!1954354)))

(declare-fun b!4797383 () Bool)

(assert (=> b!4797383 (= e!2995687 (containsKey!3993 (toList!6961 lm!2473) lt!1954235))))

(assert (= (and d!1535482 res!2039847) b!4797383))

(assert (=> d!1535482 m!5779696))

(assert (=> d!1535482 m!5779696))

(assert (=> d!1535482 m!5779752))

(declare-fun m!5779870 () Bool)

(assert (=> d!1535482 m!5779870))

(assert (=> d!1535482 m!5779788))

(assert (=> b!4797383 m!5779748))

(assert (=> b!4797268 d!1535482))

(declare-fun d!1535484 () Bool)

(declare-fun isEmpty!29479 (Option!13143) Bool)

(assert (=> d!1535484 (= (isDefined!10284 (getValueByKey!2376 (toList!6961 lm!2473) lt!1954235)) (not (isEmpty!29479 (getValueByKey!2376 (toList!6961 lm!2473) lt!1954235))))))

(declare-fun bs!1156490 () Bool)

(assert (= bs!1156490 d!1535484))

(assert (=> bs!1156490 m!5779696))

(declare-fun m!5779872 () Bool)

(assert (=> bs!1156490 m!5779872))

(assert (=> b!4797268 d!1535484))

(declare-fun d!1535486 () Bool)

(declare-fun c!817666 () Bool)

(assert (=> d!1535486 (= c!817666 (and (is-Cons!54271 (toList!6961 lm!2473)) (= (_1!31761 (h!60703 (toList!6961 lm!2473))) lt!1954235)))))

(declare-fun e!2995692 () Option!13143)

(assert (=> d!1535486 (= (getValueByKey!2376 (toList!6961 lm!2473) lt!1954235) e!2995692)))

(declare-fun b!4797395 () Bool)

(declare-fun e!2995693 () Option!13143)

(assert (=> b!4797395 (= e!2995693 None!13142)))

(declare-fun b!4797393 () Bool)

(assert (=> b!4797393 (= e!2995692 e!2995693)))

(declare-fun c!817667 () Bool)

(assert (=> b!4797393 (= c!817667 (and (is-Cons!54271 (toList!6961 lm!2473)) (not (= (_1!31761 (h!60703 (toList!6961 lm!2473))) lt!1954235))))))

(declare-fun b!4797392 () Bool)

(assert (=> b!4797392 (= e!2995692 (Some!13142 (_2!31761 (h!60703 (toList!6961 lm!2473)))))))

(declare-fun b!4797394 () Bool)

(assert (=> b!4797394 (= e!2995693 (getValueByKey!2376 (t!361845 (toList!6961 lm!2473)) lt!1954235))))

(assert (= (and d!1535486 c!817666) b!4797392))

(assert (= (and d!1535486 (not c!817666)) b!4797393))

(assert (= (and b!4797393 c!817667) b!4797394))

(assert (= (and b!4797393 (not c!817667)) b!4797395))

(declare-fun m!5779874 () Bool)

(assert (=> b!4797394 m!5779874))

(assert (=> b!4797268 d!1535486))

(declare-fun d!1535488 () Bool)

(declare-fun res!2039848 () Bool)

(declare-fun e!2995694 () Bool)

(assert (=> d!1535488 (=> res!2039848 e!2995694)))

(assert (=> d!1535488 (= res!2039848 (and (is-Cons!54270 (apply!13014 lm!2473 lt!1954235)) (= (_1!31760 (h!60702 (apply!13014 lm!2473 lt!1954235))) key!5896)))))

(assert (=> d!1535488 (= (containsKey!3991 (apply!13014 lm!2473 lt!1954235) key!5896) e!2995694)))

(declare-fun b!4797396 () Bool)

(declare-fun e!2995695 () Bool)

(assert (=> b!4797396 (= e!2995694 e!2995695)))

(declare-fun res!2039849 () Bool)

(assert (=> b!4797396 (=> (not res!2039849) (not e!2995695))))

(assert (=> b!4797396 (= res!2039849 (is-Cons!54270 (apply!13014 lm!2473 lt!1954235)))))

(declare-fun b!4797397 () Bool)

(assert (=> b!4797397 (= e!2995695 (containsKey!3991 (t!361844 (apply!13014 lm!2473 lt!1954235)) key!5896))))

(assert (= (and d!1535488 (not res!2039848)) b!4797396))

(assert (= (and b!4797396 res!2039849) b!4797397))

(declare-fun m!5779876 () Bool)

(assert (=> b!4797397 m!5779876))

(assert (=> b!4797209 d!1535488))

(declare-fun d!1535490 () Bool)

(declare-fun noDuplicatedKeys!445 (List!54394) Bool)

(assert (=> d!1535490 (= (invariantList!1743 (toList!6962 lt!1954305)) (noDuplicatedKeys!445 (toList!6962 lt!1954305)))))

(declare-fun bs!1156491 () Bool)

(assert (= bs!1156491 d!1535490))

(declare-fun m!5779878 () Bool)

(assert (=> bs!1156491 m!5779878))

(assert (=> d!1535430 d!1535490))

(declare-fun d!1535492 () Bool)

(declare-fun res!2039850 () Bool)

(declare-fun e!2995696 () Bool)

(assert (=> d!1535492 (=> res!2039850 e!2995696)))

(assert (=> d!1535492 (= res!2039850 (is-Nil!54271 (toList!6961 lm!2473)))))

(assert (=> d!1535492 (= (forall!12292 (toList!6961 lm!2473) lambda!231630) e!2995696)))

(declare-fun b!4797398 () Bool)

(declare-fun e!2995697 () Bool)

(assert (=> b!4797398 (= e!2995696 e!2995697)))

(declare-fun res!2039851 () Bool)

(assert (=> b!4797398 (=> (not res!2039851) (not e!2995697))))

(assert (=> b!4797398 (= res!2039851 (dynLambda!22083 lambda!231630 (h!60703 (toList!6961 lm!2473))))))

(declare-fun b!4797399 () Bool)

(assert (=> b!4797399 (= e!2995697 (forall!12292 (t!361845 (toList!6961 lm!2473)) lambda!231630))))

(assert (= (and d!1535492 (not res!2039850)) b!4797398))

(assert (= (and b!4797398 res!2039851) b!4797399))

(declare-fun b_lambda!187267 () Bool)

(assert (=> (not b_lambda!187267) (not b!4797398)))

(declare-fun m!5779880 () Bool)

(assert (=> b!4797398 m!5779880))

(declare-fun m!5779882 () Bool)

(assert (=> b!4797399 m!5779882))

(assert (=> d!1535430 d!1535492))

(declare-fun d!1535494 () Bool)

(declare-fun res!2039856 () Bool)

(declare-fun e!2995702 () Bool)

(assert (=> d!1535494 (=> res!2039856 e!2995702)))

(assert (=> d!1535494 (= res!2039856 (and (is-Cons!54270 (toList!6962 (extractMap!2468 (toList!6961 lm!2473)))) (= (_1!31760 (h!60702 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))))) key!5896)))))

(assert (=> d!1535494 (= (containsKey!3994 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))) key!5896) e!2995702)))

(declare-fun b!4797404 () Bool)

(declare-fun e!2995703 () Bool)

(assert (=> b!4797404 (= e!2995702 e!2995703)))

(declare-fun res!2039857 () Bool)

(assert (=> b!4797404 (=> (not res!2039857) (not e!2995703))))

(assert (=> b!4797404 (= res!2039857 (is-Cons!54270 (toList!6962 (extractMap!2468 (toList!6961 lm!2473)))))))

(declare-fun b!4797405 () Bool)

(assert (=> b!4797405 (= e!2995703 (containsKey!3994 (t!361844 (toList!6962 (extractMap!2468 (toList!6961 lm!2473)))) key!5896))))

(assert (= (and d!1535494 (not res!2039856)) b!4797404))

(assert (= (and b!4797404 res!2039857) b!4797405))

(declare-fun m!5779884 () Bool)

(assert (=> b!4797405 m!5779884))

(assert (=> d!1535426 d!1535494))

(declare-fun d!1535496 () Bool)

(declare-fun res!2039858 () Bool)

(declare-fun e!2995704 () Bool)

(assert (=> d!1535496 (=> res!2039858 e!2995704)))

(assert (=> d!1535496 (= res!2039858 (is-Nil!54271 (t!361845 (toList!6961 lt!1954234))))))

(assert (=> d!1535496 (= (forall!12292 (t!361845 (toList!6961 lt!1954234)) lambda!231614) e!2995704)))

(declare-fun b!4797406 () Bool)

(declare-fun e!2995705 () Bool)

(assert (=> b!4797406 (= e!2995704 e!2995705)))

(declare-fun res!2039859 () Bool)

(assert (=> b!4797406 (=> (not res!2039859) (not e!2995705))))

(assert (=> b!4797406 (= res!2039859 (dynLambda!22083 lambda!231614 (h!60703 (t!361845 (toList!6961 lt!1954234)))))))

(declare-fun b!4797407 () Bool)

(assert (=> b!4797407 (= e!2995705 (forall!12292 (t!361845 (t!361845 (toList!6961 lt!1954234))) lambda!231614))))

(assert (= (and d!1535496 (not res!2039858)) b!4797406))

(assert (= (and b!4797406 res!2039859) b!4797407))

(declare-fun b_lambda!187269 () Bool)

(assert (=> (not b_lambda!187269) (not b!4797406)))

(declare-fun m!5779886 () Bool)

(assert (=> b!4797406 m!5779886))

(declare-fun m!5779888 () Bool)

(assert (=> b!4797407 m!5779888))

(assert (=> b!4797172 d!1535496))

(assert (=> b!4797270 d!1535484))

(assert (=> b!4797270 d!1535486))

(declare-fun d!1535498 () Bool)

(assert (=> d!1535498 (= (get!18519 lt!1954262) (v!48449 lt!1954262))))

(assert (=> b!4797211 d!1535498))

(declare-fun b!4797426 () Bool)

(assert (=> b!4797426 true))

(declare-fun bs!1156492 () Bool)

(declare-fun b!4797428 () Bool)

(assert (= bs!1156492 (and b!4797428 b!4797426)))

(declare-fun lambda!231675 () Int)

(declare-fun lambda!231674 () Int)

(assert (=> bs!1156492 (= lambda!231675 lambda!231674)))

(assert (=> b!4797428 true))

(declare-fun lambda!231676 () Int)

(declare-fun lt!1954412 () ListMap!6433)

(assert (=> bs!1156492 (= (= lt!1954412 (extractMap!2468 (t!361845 (toList!6961 lm!2473)))) (= lambda!231676 lambda!231674))))

(assert (=> b!4797428 (= (= lt!1954412 (extractMap!2468 (t!361845 (toList!6961 lm!2473)))) (= lambda!231676 lambda!231675))))

(assert (=> b!4797428 true))

(declare-fun bs!1156494 () Bool)

(declare-fun d!1535500 () Bool)

(assert (= bs!1156494 (and d!1535500 b!4797426)))

(declare-fun lambda!231677 () Int)

(declare-fun lt!1954405 () ListMap!6433)

(assert (=> bs!1156494 (= (= lt!1954405 (extractMap!2468 (t!361845 (toList!6961 lm!2473)))) (= lambda!231677 lambda!231674))))

(declare-fun bs!1156495 () Bool)

(assert (= bs!1156495 (and d!1535500 b!4797428)))

(assert (=> bs!1156495 (= (= lt!1954405 (extractMap!2468 (t!361845 (toList!6961 lm!2473)))) (= lambda!231677 lambda!231675))))

(assert (=> bs!1156495 (= (= lt!1954405 lt!1954412) (= lambda!231677 lambda!231676))))

(assert (=> d!1535500 true))

(declare-fun b!4797424 () Bool)

(declare-fun res!2039873 () Bool)

(declare-fun e!2995719 () Bool)

(assert (=> b!4797424 (=> (not res!2039873) (not e!2995719))))

(declare-fun forall!12294 (List!54394 Int) Bool)

(assert (=> b!4797424 (= res!2039873 (forall!12294 (toList!6962 (extractMap!2468 (t!361845 (toList!6961 lm!2473)))) lambda!231677))))

(declare-fun b!4797425 () Bool)

(assert (=> b!4797425 (= e!2995719 (invariantList!1743 (toList!6962 lt!1954405)))))

(declare-fun e!2995718 () ListMap!6433)

(assert (=> b!4797426 (= e!2995718 (extractMap!2468 (t!361845 (toList!6961 lm!2473))))))

(declare-fun lt!1954399 () Unit!140360)

(declare-fun call!335250 () Unit!140360)

(assert (=> b!4797426 (= lt!1954399 call!335250)))

(declare-fun call!335251 () Bool)

(assert (=> b!4797426 call!335251))

(declare-fun lt!1954402 () Unit!140360)

(assert (=> b!4797426 (= lt!1954402 lt!1954399)))

(declare-fun call!335249 () Bool)

(assert (=> b!4797426 call!335249))

(declare-fun lt!1954407 () Unit!140360)

(declare-fun Unit!140372 () Unit!140360)

(assert (=> b!4797426 (= lt!1954407 Unit!140372)))

(declare-fun b!4797427 () Bool)

(declare-fun e!2995720 () Bool)

(assert (=> b!4797427 (= e!2995720 (forall!12294 (toList!6962 (extractMap!2468 (t!361845 (toList!6961 lm!2473)))) lambda!231676))))

(declare-fun c!817670 () Bool)

(declare-fun bm!335244 () Bool)

(assert (=> bm!335244 (= call!335249 (forall!12294 (ite c!817670 (toList!6962 (extractMap!2468 (t!361845 (toList!6961 lm!2473)))) (_2!31761 (h!60703 (toList!6961 lm!2473)))) (ite c!817670 lambda!231674 lambda!231676)))))

(assert (=> b!4797428 (= e!2995718 lt!1954412)))

(declare-fun lt!1954404 () ListMap!6433)

(declare-fun +!2496 (ListMap!6433 tuple2!56932) ListMap!6433)

(assert (=> b!4797428 (= lt!1954404 (+!2496 (extractMap!2468 (t!361845 (toList!6961 lm!2473))) (h!60702 (_2!31761 (h!60703 (toList!6961 lm!2473))))))))

(assert (=> b!4797428 (= lt!1954412 (addToMapMapFromBucket!1720 (t!361844 (_2!31761 (h!60703 (toList!6961 lm!2473)))) (+!2496 (extractMap!2468 (t!361845 (toList!6961 lm!2473))) (h!60702 (_2!31761 (h!60703 (toList!6961 lm!2473)))))))))

(declare-fun lt!1954398 () Unit!140360)

(assert (=> b!4797428 (= lt!1954398 call!335250)))

(assert (=> b!4797428 (forall!12294 (toList!6962 (extractMap!2468 (t!361845 (toList!6961 lm!2473)))) lambda!231675)))

(declare-fun lt!1954410 () Unit!140360)

(assert (=> b!4797428 (= lt!1954410 lt!1954398)))

(assert (=> b!4797428 (forall!12294 (toList!6962 lt!1954404) lambda!231676)))

(declare-fun lt!1954415 () Unit!140360)

(declare-fun Unit!140373 () Unit!140360)

(assert (=> b!4797428 (= lt!1954415 Unit!140373)))

(assert (=> b!4797428 call!335251))

(declare-fun lt!1954406 () Unit!140360)

(declare-fun Unit!140374 () Unit!140360)

(assert (=> b!4797428 (= lt!1954406 Unit!140374)))

(declare-fun lt!1954416 () Unit!140360)

(declare-fun Unit!140375 () Unit!140360)

(assert (=> b!4797428 (= lt!1954416 Unit!140375)))

(declare-fun lt!1954401 () Unit!140360)

(declare-fun forallContained!4194 (List!54394 Int tuple2!56932) Unit!140360)

(assert (=> b!4797428 (= lt!1954401 (forallContained!4194 (toList!6962 lt!1954404) lambda!231676 (h!60702 (_2!31761 (h!60703 (toList!6961 lm!2473))))))))

(assert (=> b!4797428 (contains!17912 lt!1954404 (_1!31760 (h!60702 (_2!31761 (h!60703 (toList!6961 lm!2473))))))))

(declare-fun lt!1954411 () Unit!140360)

(declare-fun Unit!140376 () Unit!140360)

(assert (=> b!4797428 (= lt!1954411 Unit!140376)))

(assert (=> b!4797428 (contains!17912 lt!1954412 (_1!31760 (h!60702 (_2!31761 (h!60703 (toList!6961 lm!2473))))))))

(declare-fun lt!1954409 () Unit!140360)

(declare-fun Unit!140377 () Unit!140360)

(assert (=> b!4797428 (= lt!1954409 Unit!140377)))

(assert (=> b!4797428 (forall!12294 (_2!31761 (h!60703 (toList!6961 lm!2473))) lambda!231676)))

(declare-fun lt!1954414 () Unit!140360)

(declare-fun Unit!140378 () Unit!140360)

(assert (=> b!4797428 (= lt!1954414 Unit!140378)))

(assert (=> b!4797428 (forall!12294 (toList!6962 lt!1954404) lambda!231676)))

(declare-fun lt!1954408 () Unit!140360)

(declare-fun Unit!140379 () Unit!140360)

(assert (=> b!4797428 (= lt!1954408 Unit!140379)))

(declare-fun lt!1954403 () Unit!140360)

(declare-fun Unit!140380 () Unit!140360)

(assert (=> b!4797428 (= lt!1954403 Unit!140380)))

(declare-fun lt!1954397 () Unit!140360)

(declare-fun addForallContainsKeyThenBeforeAdding!951 (ListMap!6433 ListMap!6433 K!15842 V!16088) Unit!140360)

(assert (=> b!4797428 (= lt!1954397 (addForallContainsKeyThenBeforeAdding!951 (extractMap!2468 (t!361845 (toList!6961 lm!2473))) lt!1954412 (_1!31760 (h!60702 (_2!31761 (h!60703 (toList!6961 lm!2473))))) (_2!31760 (h!60702 (_2!31761 (h!60703 (toList!6961 lm!2473)))))))))

(assert (=> b!4797428 (forall!12294 (toList!6962 (extractMap!2468 (t!361845 (toList!6961 lm!2473)))) lambda!231676)))

(declare-fun lt!1954400 () Unit!140360)

(assert (=> b!4797428 (= lt!1954400 lt!1954397)))

(assert (=> b!4797428 (forall!12294 (toList!6962 (extractMap!2468 (t!361845 (toList!6961 lm!2473)))) lambda!231676)))

(declare-fun lt!1954417 () Unit!140360)

(declare-fun Unit!140381 () Unit!140360)

(assert (=> b!4797428 (= lt!1954417 Unit!140381)))

(declare-fun res!2039872 () Bool)

(assert (=> b!4797428 (= res!2039872 call!335249)))

(assert (=> b!4797428 (=> (not res!2039872) (not e!2995720))))

(assert (=> b!4797428 e!2995720))

(declare-fun lt!1954413 () Unit!140360)

(declare-fun Unit!140382 () Unit!140360)

(assert (=> b!4797428 (= lt!1954413 Unit!140382)))

(assert (=> d!1535500 e!2995719))

(declare-fun res!2039874 () Bool)

(assert (=> d!1535500 (=> (not res!2039874) (not e!2995719))))

(assert (=> d!1535500 (= res!2039874 (forall!12294 (_2!31761 (h!60703 (toList!6961 lm!2473))) lambda!231677))))

(assert (=> d!1535500 (= lt!1954405 e!2995718)))

(assert (=> d!1535500 (= c!817670 (is-Nil!54270 (_2!31761 (h!60703 (toList!6961 lm!2473)))))))

(assert (=> d!1535500 (noDuplicateKeys!2352 (_2!31761 (h!60703 (toList!6961 lm!2473))))))

(assert (=> d!1535500 (= (addToMapMapFromBucket!1720 (_2!31761 (h!60703 (toList!6961 lm!2473))) (extractMap!2468 (t!361845 (toList!6961 lm!2473)))) lt!1954405)))

(declare-fun bm!335245 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!952 (ListMap!6433) Unit!140360)

(assert (=> bm!335245 (= call!335250 (lemmaContainsAllItsOwnKeys!952 (extractMap!2468 (t!361845 (toList!6961 lm!2473)))))))

(declare-fun bm!335246 () Bool)

(assert (=> bm!335246 (= call!335251 (forall!12294 (ite c!817670 (toList!6962 (extractMap!2468 (t!361845 (toList!6961 lm!2473)))) (t!361844 (_2!31761 (h!60703 (toList!6961 lm!2473))))) (ite c!817670 lambda!231674 lambda!231676)))))

(assert (= (and d!1535500 c!817670) b!4797426))

(assert (= (and d!1535500 (not c!817670)) b!4797428))

(assert (= (and b!4797428 res!2039872) b!4797427))

(assert (= (or b!4797426 b!4797428) bm!335244))

(assert (= (or b!4797426 b!4797428) bm!335246))

(assert (= (or b!4797426 b!4797428) bm!335245))

(assert (= (and d!1535500 res!2039874) b!4797424))

(assert (= (and b!4797424 res!2039873) b!4797425))

(declare-fun m!5779894 () Bool)

(assert (=> d!1535500 m!5779894))

(assert (=> d!1535500 m!5779790))

(declare-fun m!5779896 () Bool)

(assert (=> bm!335244 m!5779896))

(declare-fun m!5779898 () Bool)

(assert (=> b!4797424 m!5779898))

(declare-fun m!5779900 () Bool)

(assert (=> bm!335246 m!5779900))

(declare-fun m!5779902 () Bool)

(assert (=> b!4797425 m!5779902))

(assert (=> bm!335245 m!5779744))

(declare-fun m!5779904 () Bool)

(assert (=> bm!335245 m!5779904))

(declare-fun m!5779906 () Bool)

(assert (=> b!4797428 m!5779906))

(declare-fun m!5779908 () Bool)

(assert (=> b!4797428 m!5779908))

(declare-fun m!5779910 () Bool)

(assert (=> b!4797428 m!5779910))

(assert (=> b!4797428 m!5779744))

(declare-fun m!5779912 () Bool)

(assert (=> b!4797428 m!5779912))

(assert (=> b!4797428 m!5779744))

(declare-fun m!5779914 () Bool)

(assert (=> b!4797428 m!5779914))

(assert (=> b!4797428 m!5779906))

(declare-fun m!5779916 () Bool)

(assert (=> b!4797428 m!5779916))

(declare-fun m!5779918 () Bool)

(assert (=> b!4797428 m!5779918))

(declare-fun m!5779920 () Bool)

(assert (=> b!4797428 m!5779920))

(declare-fun m!5779922 () Bool)

(assert (=> b!4797428 m!5779922))

(assert (=> b!4797428 m!5779914))

(declare-fun m!5779924 () Bool)

(assert (=> b!4797428 m!5779924))

(assert (=> b!4797428 m!5779908))

(assert (=> b!4797427 m!5779908))

(assert (=> b!4797266 d!1535500))

(declare-fun bs!1156496 () Bool)

(declare-fun d!1535508 () Bool)

(assert (= bs!1156496 (and d!1535508 d!1535446)))

(declare-fun lambda!231678 () Int)

(assert (=> bs!1156496 (= lambda!231678 lambda!231639)))

(declare-fun bs!1156497 () Bool)

(assert (= bs!1156497 (and d!1535508 d!1535430)))

(assert (=> bs!1156497 (= lambda!231678 lambda!231630)))

(declare-fun bs!1156498 () Bool)

(assert (= bs!1156498 (and d!1535508 d!1535402)))

(assert (=> bs!1156498 (not (= lambda!231678 lambda!231623))))

(declare-fun bs!1156499 () Bool)

(assert (= bs!1156499 (and d!1535508 d!1535398)))

(assert (=> bs!1156499 (not (= lambda!231678 lambda!231622))))

(declare-fun bs!1156500 () Bool)

(assert (= bs!1156500 (and d!1535508 d!1535442)))

(assert (=> bs!1156500 (= lambda!231678 lambda!231636)))

(declare-fun bs!1156501 () Bool)

(assert (= bs!1156501 (and d!1535508 start!494660)))

(assert (=> bs!1156501 (= lambda!231678 lambda!231614)))

(declare-fun lt!1954418 () ListMap!6433)

(assert (=> d!1535508 (invariantList!1743 (toList!6962 lt!1954418))))

(declare-fun e!2995725 () ListMap!6433)

(assert (=> d!1535508 (= lt!1954418 e!2995725)))

(declare-fun c!817675 () Bool)

(assert (=> d!1535508 (= c!817675 (is-Cons!54271 (t!361845 (toList!6961 lm!2473))))))

(assert (=> d!1535508 (forall!12292 (t!361845 (toList!6961 lm!2473)) lambda!231678)))

(assert (=> d!1535508 (= (extractMap!2468 (t!361845 (toList!6961 lm!2473))) lt!1954418)))

(declare-fun b!4797439 () Bool)

(assert (=> b!4797439 (= e!2995725 (addToMapMapFromBucket!1720 (_2!31761 (h!60703 (t!361845 (toList!6961 lm!2473)))) (extractMap!2468 (t!361845 (t!361845 (toList!6961 lm!2473))))))))

(declare-fun b!4797440 () Bool)

(assert (=> b!4797440 (= e!2995725 (ListMap!6434 Nil!54270))))

(assert (= (and d!1535508 c!817675) b!4797439))

(assert (= (and d!1535508 (not c!817675)) b!4797440))

(declare-fun m!5779926 () Bool)

(assert (=> d!1535508 m!5779926))

(declare-fun m!5779928 () Bool)

(assert (=> d!1535508 m!5779928))

(declare-fun m!5779930 () Bool)

(assert (=> b!4797439 m!5779930))

(assert (=> b!4797439 m!5779930))

(declare-fun m!5779932 () Bool)

(assert (=> b!4797439 m!5779932))

(assert (=> b!4797266 d!1535508))

(declare-fun d!1535510 () Bool)

(assert (=> d!1535510 (= (isDefined!10282 lt!1954262) (not (isEmpty!29477 lt!1954262)))))

(declare-fun bs!1156502 () Bool)

(assert (= bs!1156502 d!1535510))

(assert (=> bs!1156502 m!5779686))

(assert (=> b!4797206 d!1535510))

(declare-fun b!4797441 () Bool)

(declare-fun e!2995730 () Bool)

(declare-fun e!2995727 () Bool)

(assert (=> b!4797441 (= e!2995730 e!2995727)))

(declare-fun res!2039878 () Bool)

(assert (=> b!4797441 (=> (not res!2039878) (not e!2995727))))

(declare-fun lt!1954419 () Option!13141)

(assert (=> b!4797441 (= res!2039878 (isDefined!10282 lt!1954419))))

(declare-fun b!4797442 () Bool)

(declare-fun e!2995726 () Option!13141)

(assert (=> b!4797442 (= e!2995726 (getPair!913 (t!361844 (t!361844 (apply!13014 lm!2473 lt!1954235))) key!5896))))

(declare-fun b!4797443 () Bool)

(declare-fun e!2995728 () Option!13141)

(assert (=> b!4797443 (= e!2995728 (Some!13140 (h!60702 (t!361844 (apply!13014 lm!2473 lt!1954235)))))))

(declare-fun e!2995729 () Bool)

(declare-fun b!4797444 () Bool)

(assert (=> b!4797444 (= e!2995729 (not (containsKey!3991 (t!361844 (apply!13014 lm!2473 lt!1954235)) key!5896)))))

(declare-fun b!4797445 () Bool)

(assert (=> b!4797445 (= e!2995728 e!2995726)))

(declare-fun c!817677 () Bool)

(assert (=> b!4797445 (= c!817677 (is-Cons!54270 (t!361844 (apply!13014 lm!2473 lt!1954235))))))

(declare-fun b!4797446 () Bool)

(declare-fun res!2039875 () Bool)

(assert (=> b!4797446 (=> (not res!2039875) (not e!2995727))))

(assert (=> b!4797446 (= res!2039875 (= (_1!31760 (get!18519 lt!1954419)) key!5896))))

(declare-fun b!4797447 () Bool)

(assert (=> b!4797447 (= e!2995727 (contains!17915 (t!361844 (apply!13014 lm!2473 lt!1954235)) (get!18519 lt!1954419)))))

(declare-fun b!4797448 () Bool)

(assert (=> b!4797448 (= e!2995726 None!13140)))

(declare-fun d!1535512 () Bool)

(assert (=> d!1535512 e!2995730))

(declare-fun res!2039876 () Bool)

(assert (=> d!1535512 (=> res!2039876 e!2995730)))

(assert (=> d!1535512 (= res!2039876 e!2995729)))

(declare-fun res!2039877 () Bool)

(assert (=> d!1535512 (=> (not res!2039877) (not e!2995729))))

(assert (=> d!1535512 (= res!2039877 (isEmpty!29477 lt!1954419))))

(assert (=> d!1535512 (= lt!1954419 e!2995728)))

(declare-fun c!817676 () Bool)

(assert (=> d!1535512 (= c!817676 (and (is-Cons!54270 (t!361844 (apply!13014 lm!2473 lt!1954235))) (= (_1!31760 (h!60702 (t!361844 (apply!13014 lm!2473 lt!1954235)))) key!5896)))))

(assert (=> d!1535512 (noDuplicateKeys!2352 (t!361844 (apply!13014 lm!2473 lt!1954235)))))

(assert (=> d!1535512 (= (getPair!913 (t!361844 (apply!13014 lm!2473 lt!1954235)) key!5896) lt!1954419)))

(assert (= (and d!1535512 c!817676) b!4797443))

(assert (= (and d!1535512 (not c!817676)) b!4797445))

(assert (= (and b!4797445 c!817677) b!4797442))

(assert (= (and b!4797445 (not c!817677)) b!4797448))

(assert (= (and d!1535512 res!2039877) b!4797444))

(assert (= (and d!1535512 (not res!2039876)) b!4797441))

(assert (= (and b!4797441 res!2039878) b!4797446))

(assert (= (and b!4797446 res!2039875) b!4797447))

(declare-fun m!5779934 () Bool)

(assert (=> b!4797441 m!5779934))

(declare-fun m!5779936 () Bool)

(assert (=> b!4797446 m!5779936))

(assert (=> b!4797444 m!5779876))

(declare-fun m!5779938 () Bool)

(assert (=> d!1535512 m!5779938))

(declare-fun m!5779940 () Bool)

(assert (=> d!1535512 m!5779940))

(assert (=> b!4797447 m!5779936))

(assert (=> b!4797447 m!5779936))

(declare-fun m!5779942 () Bool)

(assert (=> b!4797447 m!5779942))

(declare-fun m!5779944 () Bool)

(assert (=> b!4797442 m!5779944))

(assert (=> b!4797207 d!1535512))

(declare-fun d!1535514 () Bool)

(declare-fun res!2039879 () Bool)

(declare-fun e!2995731 () Bool)

(assert (=> d!1535514 (=> res!2039879 e!2995731)))

(assert (=> d!1535514 (= res!2039879 (is-Nil!54271 (toList!6961 lm!2473)))))

(assert (=> d!1535514 (= (forall!12292 (toList!6961 lm!2473) lambda!231622) e!2995731)))

(declare-fun b!4797449 () Bool)

(declare-fun e!2995732 () Bool)

(assert (=> b!4797449 (= e!2995731 e!2995732)))

(declare-fun res!2039880 () Bool)

(assert (=> b!4797449 (=> (not res!2039880) (not e!2995732))))

(assert (=> b!4797449 (= res!2039880 (dynLambda!22083 lambda!231622 (h!60703 (toList!6961 lm!2473))))))

(declare-fun b!4797450 () Bool)

(assert (=> b!4797450 (= e!2995732 (forall!12292 (t!361845 (toList!6961 lm!2473)) lambda!231622))))

(assert (= (and d!1535514 (not res!2039879)) b!4797449))

(assert (= (and b!4797449 res!2039880) b!4797450))

(declare-fun b_lambda!187271 () Bool)

(assert (=> (not b_lambda!187271) (not b!4797449)))

(declare-fun m!5779946 () Bool)

(assert (=> b!4797449 m!5779946))

(declare-fun m!5779948 () Bool)

(assert (=> b!4797450 m!5779948))

(assert (=> d!1535398 d!1535514))

(declare-fun d!1535516 () Bool)

(declare-fun res!2039881 () Bool)

(declare-fun e!2995735 () Bool)

(assert (=> d!1535516 (=> res!2039881 e!2995735)))

(assert (=> d!1535516 (= res!2039881 (is-Nil!54271 (t!361845 (toList!6961 lm!2473))))))

(assert (=> d!1535516 (= (forall!12292 (t!361845 (toList!6961 lm!2473)) lambda!231614) e!2995735)))

(declare-fun b!4797455 () Bool)

(declare-fun e!2995736 () Bool)

(assert (=> b!4797455 (= e!2995735 e!2995736)))

(declare-fun res!2039882 () Bool)

(assert (=> b!4797455 (=> (not res!2039882) (not e!2995736))))

(assert (=> b!4797455 (= res!2039882 (dynLambda!22083 lambda!231614 (h!60703 (t!361845 (toList!6961 lm!2473)))))))

(declare-fun b!4797456 () Bool)

(assert (=> b!4797456 (= e!2995736 (forall!12292 (t!361845 (t!361845 (toList!6961 lm!2473))) lambda!231614))))

(assert (= (and d!1535516 (not res!2039881)) b!4797455))

(assert (= (and b!4797455 res!2039882) b!4797456))

(declare-fun b_lambda!187273 () Bool)

(assert (=> (not b_lambda!187273) (not b!4797455)))

(declare-fun m!5779950 () Bool)

(assert (=> b!4797455 m!5779950))

(declare-fun m!5779952 () Bool)

(assert (=> b!4797456 m!5779952))

(assert (=> b!4797295 d!1535516))

(declare-fun d!1535518 () Bool)

(declare-fun e!2995738 () Bool)

(assert (=> d!1535518 e!2995738))

(declare-fun res!2039883 () Bool)

(assert (=> d!1535518 (=> res!2039883 e!2995738)))

(declare-fun lt!1954421 () Bool)

(assert (=> d!1535518 (= res!2039883 (not lt!1954421))))

(declare-fun lt!1954423 () Bool)

(assert (=> d!1535518 (= lt!1954421 lt!1954423)))

(declare-fun lt!1954422 () Unit!140360)

(declare-fun e!2995737 () Unit!140360)

(assert (=> d!1535518 (= lt!1954422 e!2995737)))

(declare-fun c!817680 () Bool)

(assert (=> d!1535518 (= c!817680 lt!1954423)))

(assert (=> d!1535518 (= lt!1954423 (containsKey!3993 (toList!6961 lm!2473) (hash!4988 hashF!1559 key!5896)))))

(assert (=> d!1535518 (= (contains!17911 lm!2473 (hash!4988 hashF!1559 key!5896)) lt!1954421)))

(declare-fun b!4797457 () Bool)

(declare-fun lt!1954420 () Unit!140360)

(assert (=> b!4797457 (= e!2995737 lt!1954420)))

(assert (=> b!4797457 (= lt!1954420 (lemmaContainsKeyImpliesGetValueByKeyDefined!2167 (toList!6961 lm!2473) (hash!4988 hashF!1559 key!5896)))))

(assert (=> b!4797457 (isDefined!10284 (getValueByKey!2376 (toList!6961 lm!2473) (hash!4988 hashF!1559 key!5896)))))

(declare-fun b!4797458 () Bool)

(declare-fun Unit!140383 () Unit!140360)

(assert (=> b!4797458 (= e!2995737 Unit!140383)))

(declare-fun b!4797459 () Bool)

(assert (=> b!4797459 (= e!2995738 (isDefined!10284 (getValueByKey!2376 (toList!6961 lm!2473) (hash!4988 hashF!1559 key!5896))))))

(assert (= (and d!1535518 c!817680) b!4797457))

(assert (= (and d!1535518 (not c!817680)) b!4797458))

(assert (= (and d!1535518 (not res!2039883)) b!4797459))

(assert (=> d!1535518 m!5779594))

(declare-fun m!5779956 () Bool)

(assert (=> d!1535518 m!5779956))

(assert (=> b!4797457 m!5779594))

(declare-fun m!5779958 () Bool)

(assert (=> b!4797457 m!5779958))

(assert (=> b!4797457 m!5779594))

(declare-fun m!5779960 () Bool)

(assert (=> b!4797457 m!5779960))

(assert (=> b!4797457 m!5779960))

(declare-fun m!5779962 () Bool)

(assert (=> b!4797457 m!5779962))

(assert (=> b!4797459 m!5779594))

(assert (=> b!4797459 m!5779960))

(assert (=> b!4797459 m!5779960))

(assert (=> b!4797459 m!5779962))

(assert (=> d!1535446 d!1535518))

(assert (=> d!1535446 d!1535450))

(declare-fun d!1535522 () Bool)

(declare-fun e!2995747 () Bool)

(assert (=> d!1535522 e!2995747))

(declare-fun res!2039892 () Bool)

(assert (=> d!1535522 (=> (not res!2039892) (not e!2995747))))

(assert (=> d!1535522 (= res!2039892 (contains!17911 lm!2473 (hash!4988 hashF!1559 key!5896)))))

(assert (=> d!1535522 true))

(declare-fun _$5!235 () Unit!140360)

(assert (=> d!1535522 (= (choose!34619 lm!2473 key!5896 hashF!1559) _$5!235)))

(declare-fun b!4797468 () Bool)

(assert (=> b!4797468 (= e!2995747 (isDefined!10282 (getPair!913 (apply!13014 lm!2473 (hash!4988 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1535522 res!2039892) b!4797468))

(assert (=> d!1535522 m!5779594))

(assert (=> d!1535522 m!5779594))

(assert (=> d!1535522 m!5779764))

(assert (=> b!4797468 m!5779594))

(assert (=> b!4797468 m!5779594))

(assert (=> b!4797468 m!5779770))

(assert (=> b!4797468 m!5779770))

(assert (=> b!4797468 m!5779772))

(assert (=> b!4797468 m!5779772))

(assert (=> b!4797468 m!5779774))

(assert (=> d!1535446 d!1535522))

(declare-fun d!1535534 () Bool)

(declare-fun res!2039893 () Bool)

(declare-fun e!2995750 () Bool)

(assert (=> d!1535534 (=> res!2039893 e!2995750)))

(assert (=> d!1535534 (= res!2039893 (is-Nil!54271 (toList!6961 lm!2473)))))

(assert (=> d!1535534 (= (forall!12292 (toList!6961 lm!2473) lambda!231639) e!2995750)))

(declare-fun b!4797473 () Bool)

(declare-fun e!2995751 () Bool)

(assert (=> b!4797473 (= e!2995750 e!2995751)))

(declare-fun res!2039894 () Bool)

(assert (=> b!4797473 (=> (not res!2039894) (not e!2995751))))

(assert (=> b!4797473 (= res!2039894 (dynLambda!22083 lambda!231639 (h!60703 (toList!6961 lm!2473))))))

(declare-fun b!4797474 () Bool)

(assert (=> b!4797474 (= e!2995751 (forall!12292 (t!361845 (toList!6961 lm!2473)) lambda!231639))))

(assert (= (and d!1535534 (not res!2039893)) b!4797473))

(assert (= (and b!4797473 res!2039894) b!4797474))

(declare-fun b_lambda!187279 () Bool)

(assert (=> (not b_lambda!187279) (not b!4797473)))

(declare-fun m!5779978 () Bool)

(assert (=> b!4797473 m!5779978))

(declare-fun m!5779980 () Bool)

(assert (=> b!4797474 m!5779980))

(assert (=> d!1535446 d!1535534))

(declare-fun d!1535538 () Bool)

(assert (=> d!1535538 (= (isDefined!10282 (getPair!913 (apply!13014 lm!2473 (hash!4988 hashF!1559 key!5896)) key!5896)) (not (isEmpty!29477 (getPair!913 (apply!13014 lm!2473 (hash!4988 hashF!1559 key!5896)) key!5896))))))

(declare-fun bs!1156504 () Bool)

(assert (= bs!1156504 d!1535538))

(assert (=> bs!1156504 m!5779772))

(declare-fun m!5779984 () Bool)

(assert (=> bs!1156504 m!5779984))

(assert (=> b!4797282 d!1535538))

(declare-fun b!4797477 () Bool)

(declare-fun e!2995758 () Bool)

(declare-fun e!2995755 () Bool)

(assert (=> b!4797477 (= e!2995758 e!2995755)))

(declare-fun res!2039900 () Bool)

(assert (=> b!4797477 (=> (not res!2039900) (not e!2995755))))

(declare-fun lt!1954424 () Option!13141)

(assert (=> b!4797477 (= res!2039900 (isDefined!10282 lt!1954424))))

(declare-fun b!4797478 () Bool)

(declare-fun e!2995754 () Option!13141)

(assert (=> b!4797478 (= e!2995754 (getPair!913 (t!361844 (apply!13014 lm!2473 (hash!4988 hashF!1559 key!5896))) key!5896))))

(declare-fun b!4797479 () Bool)

(declare-fun e!2995756 () Option!13141)

(assert (=> b!4797479 (= e!2995756 (Some!13140 (h!60702 (apply!13014 lm!2473 (hash!4988 hashF!1559 key!5896)))))))

(declare-fun e!2995757 () Bool)

(declare-fun b!4797480 () Bool)

(assert (=> b!4797480 (= e!2995757 (not (containsKey!3991 (apply!13014 lm!2473 (hash!4988 hashF!1559 key!5896)) key!5896)))))

(declare-fun b!4797481 () Bool)

(assert (=> b!4797481 (= e!2995756 e!2995754)))

(declare-fun c!817684 () Bool)

(assert (=> b!4797481 (= c!817684 (is-Cons!54270 (apply!13014 lm!2473 (hash!4988 hashF!1559 key!5896))))))

(declare-fun b!4797482 () Bool)

(declare-fun res!2039897 () Bool)

(assert (=> b!4797482 (=> (not res!2039897) (not e!2995755))))

(assert (=> b!4797482 (= res!2039897 (= (_1!31760 (get!18519 lt!1954424)) key!5896))))

(declare-fun b!4797483 () Bool)

(assert (=> b!4797483 (= e!2995755 (contains!17915 (apply!13014 lm!2473 (hash!4988 hashF!1559 key!5896)) (get!18519 lt!1954424)))))

(declare-fun b!4797484 () Bool)

(assert (=> b!4797484 (= e!2995754 None!13140)))

(declare-fun d!1535542 () Bool)

(assert (=> d!1535542 e!2995758))

(declare-fun res!2039898 () Bool)

(assert (=> d!1535542 (=> res!2039898 e!2995758)))

(assert (=> d!1535542 (= res!2039898 e!2995757)))

(declare-fun res!2039899 () Bool)

(assert (=> d!1535542 (=> (not res!2039899) (not e!2995757))))

(assert (=> d!1535542 (= res!2039899 (isEmpty!29477 lt!1954424))))

(assert (=> d!1535542 (= lt!1954424 e!2995756)))

(declare-fun c!817683 () Bool)

(assert (=> d!1535542 (= c!817683 (and (is-Cons!54270 (apply!13014 lm!2473 (hash!4988 hashF!1559 key!5896))) (= (_1!31760 (h!60702 (apply!13014 lm!2473 (hash!4988 hashF!1559 key!5896)))) key!5896)))))

(assert (=> d!1535542 (noDuplicateKeys!2352 (apply!13014 lm!2473 (hash!4988 hashF!1559 key!5896)))))

(assert (=> d!1535542 (= (getPair!913 (apply!13014 lm!2473 (hash!4988 hashF!1559 key!5896)) key!5896) lt!1954424)))

(assert (= (and d!1535542 c!817683) b!4797479))

(assert (= (and d!1535542 (not c!817683)) b!4797481))

(assert (= (and b!4797481 c!817684) b!4797478))

(assert (= (and b!4797481 (not c!817684)) b!4797484))

(assert (= (and d!1535542 res!2039899) b!4797480))

(assert (= (and d!1535542 (not res!2039898)) b!4797477))

(assert (= (and b!4797477 res!2039900) b!4797482))

(assert (= (and b!4797482 res!2039897) b!4797483))

(declare-fun m!5779986 () Bool)

(assert (=> b!4797477 m!5779986))

(declare-fun m!5779988 () Bool)

(assert (=> b!4797482 m!5779988))

(assert (=> b!4797480 m!5779770))

(declare-fun m!5779990 () Bool)

(assert (=> b!4797480 m!5779990))

(declare-fun m!5779992 () Bool)

(assert (=> d!1535542 m!5779992))

(assert (=> d!1535542 m!5779770))

(declare-fun m!5779994 () Bool)

(assert (=> d!1535542 m!5779994))

(assert (=> b!4797483 m!5779988))

(assert (=> b!4797483 m!5779770))

(assert (=> b!4797483 m!5779988))

(declare-fun m!5779996 () Bool)

(assert (=> b!4797483 m!5779996))

(declare-fun m!5779998 () Bool)

(assert (=> b!4797478 m!5779998))

(assert (=> b!4797282 d!1535542))

(declare-fun d!1535544 () Bool)

(assert (=> d!1535544 (= (apply!13014 lm!2473 (hash!4988 hashF!1559 key!5896)) (get!18520 (getValueByKey!2376 (toList!6961 lm!2473) (hash!4988 hashF!1559 key!5896))))))

(declare-fun bs!1156505 () Bool)

(assert (= bs!1156505 d!1535544))

(assert (=> bs!1156505 m!5779594))

(assert (=> bs!1156505 m!5779960))

(assert (=> bs!1156505 m!5779960))

(declare-fun m!5780000 () Bool)

(assert (=> bs!1156505 m!5780000))

(assert (=> b!4797282 d!1535544))

(assert (=> b!4797282 d!1535450))

(declare-fun d!1535548 () Bool)

(declare-fun res!2039905 () Bool)

(declare-fun e!2995763 () Bool)

(assert (=> d!1535548 (=> res!2039905 e!2995763)))

(assert (=> d!1535548 (= res!2039905 (not (is-Cons!54270 (_2!31761 (h!60703 (toList!6961 lm!2473))))))))

(assert (=> d!1535548 (= (noDuplicateKeys!2352 (_2!31761 (h!60703 (toList!6961 lm!2473)))) e!2995763)))

(declare-fun b!4797489 () Bool)

(declare-fun e!2995764 () Bool)

(assert (=> b!4797489 (= e!2995763 e!2995764)))

(declare-fun res!2039906 () Bool)

(assert (=> b!4797489 (=> (not res!2039906) (not e!2995764))))

(assert (=> b!4797489 (= res!2039906 (not (containsKey!3991 (t!361844 (_2!31761 (h!60703 (toList!6961 lm!2473)))) (_1!31760 (h!60702 (_2!31761 (h!60703 (toList!6961 lm!2473))))))))))

(declare-fun b!4797490 () Bool)

(assert (=> b!4797490 (= e!2995764 (noDuplicateKeys!2352 (t!361844 (_2!31761 (h!60703 (toList!6961 lm!2473))))))))

(assert (= (and d!1535548 (not res!2039905)) b!4797489))

(assert (= (and b!4797489 res!2039906) b!4797490))

(declare-fun m!5780002 () Bool)

(assert (=> b!4797489 m!5780002))

(declare-fun m!5780004 () Bool)

(assert (=> b!4797490 m!5780004))

(assert (=> bs!1156474 d!1535548))

(assert (=> b!4797277 d!1535400))

(declare-fun d!1535550 () Bool)

(assert (=> d!1535550 (= (get!18519 (getPair!913 (_2!31761 (h!60703 (toList!6961 lm!2473))) key!5896)) (v!48449 (getPair!913 (_2!31761 (h!60703 (toList!6961 lm!2473))) key!5896)))))

(assert (=> b!4797291 d!1535550))

(declare-fun b!4797491 () Bool)

(declare-fun e!2995769 () Bool)

(declare-fun e!2995766 () Bool)

(assert (=> b!4797491 (= e!2995769 e!2995766)))

(declare-fun res!2039910 () Bool)

(assert (=> b!4797491 (=> (not res!2039910) (not e!2995766))))

(declare-fun lt!1954425 () Option!13141)

(assert (=> b!4797491 (= res!2039910 (isDefined!10282 lt!1954425))))

(declare-fun b!4797492 () Bool)

(declare-fun e!2995765 () Option!13141)

(assert (=> b!4797492 (= e!2995765 (getPair!913 (t!361844 (_2!31761 (h!60703 (toList!6961 lm!2473)))) key!5896))))

(declare-fun b!4797493 () Bool)

(declare-fun e!2995767 () Option!13141)

(assert (=> b!4797493 (= e!2995767 (Some!13140 (h!60702 (_2!31761 (h!60703 (toList!6961 lm!2473))))))))

(declare-fun b!4797494 () Bool)

(declare-fun e!2995768 () Bool)

(assert (=> b!4797494 (= e!2995768 (not (containsKey!3991 (_2!31761 (h!60703 (toList!6961 lm!2473))) key!5896)))))

(declare-fun b!4797495 () Bool)

(assert (=> b!4797495 (= e!2995767 e!2995765)))

(declare-fun c!817686 () Bool)

(assert (=> b!4797495 (= c!817686 (is-Cons!54270 (_2!31761 (h!60703 (toList!6961 lm!2473)))))))

(declare-fun b!4797496 () Bool)

(declare-fun res!2039907 () Bool)

(assert (=> b!4797496 (=> (not res!2039907) (not e!2995766))))

(assert (=> b!4797496 (= res!2039907 (= (_1!31760 (get!18519 lt!1954425)) key!5896))))

(declare-fun b!4797497 () Bool)

(assert (=> b!4797497 (= e!2995766 (contains!17915 (_2!31761 (h!60703 (toList!6961 lm!2473))) (get!18519 lt!1954425)))))

(declare-fun b!4797498 () Bool)

(assert (=> b!4797498 (= e!2995765 None!13140)))

(declare-fun d!1535552 () Bool)

(assert (=> d!1535552 e!2995769))

(declare-fun res!2039908 () Bool)

(assert (=> d!1535552 (=> res!2039908 e!2995769)))

(assert (=> d!1535552 (= res!2039908 e!2995768)))

(declare-fun res!2039909 () Bool)

(assert (=> d!1535552 (=> (not res!2039909) (not e!2995768))))

(assert (=> d!1535552 (= res!2039909 (isEmpty!29477 lt!1954425))))

(assert (=> d!1535552 (= lt!1954425 e!2995767)))

(declare-fun c!817685 () Bool)

(assert (=> d!1535552 (= c!817685 (and (is-Cons!54270 (_2!31761 (h!60703 (toList!6961 lm!2473)))) (= (_1!31760 (h!60702 (_2!31761 (h!60703 (toList!6961 lm!2473))))) key!5896)))))

(assert (=> d!1535552 (noDuplicateKeys!2352 (_2!31761 (h!60703 (toList!6961 lm!2473))))))

(assert (=> d!1535552 (= (getPair!913 (_2!31761 (h!60703 (toList!6961 lm!2473))) key!5896) lt!1954425)))

(assert (= (and d!1535552 c!817685) b!4797493))

(assert (= (and d!1535552 (not c!817685)) b!4797495))

(assert (= (and b!4797495 c!817686) b!4797492))

(assert (= (and b!4797495 (not c!817686)) b!4797498))

(assert (= (and d!1535552 res!2039909) b!4797494))

(assert (= (and d!1535552 (not res!2039908)) b!4797491))

(assert (= (and b!4797491 res!2039910) b!4797496))

(assert (= (and b!4797496 res!2039907) b!4797497))

(declare-fun m!5780006 () Bool)

(assert (=> b!4797491 m!5780006))

(declare-fun m!5780008 () Bool)

(assert (=> b!4797496 m!5780008))

(assert (=> b!4797494 m!5779586))

(declare-fun m!5780010 () Bool)

(assert (=> d!1535552 m!5780010))

(assert (=> d!1535552 m!5779790))

(assert (=> b!4797497 m!5780008))

(assert (=> b!4797497 m!5780008))

(declare-fun m!5780012 () Bool)

(assert (=> b!4797497 m!5780012))

(declare-fun m!5780014 () Bool)

(assert (=> b!4797492 m!5780014))

(assert (=> b!4797291 d!1535552))

(declare-fun d!1535554 () Bool)

(declare-fun c!817687 () Bool)

(declare-fun e!2995771 () Bool)

(assert (=> d!1535554 (= c!817687 e!2995771)))

(declare-fun res!2039911 () Bool)

(assert (=> d!1535554 (=> (not res!2039911) (not e!2995771))))

(assert (=> d!1535554 (= res!2039911 (is-Cons!54271 (t!361845 (toList!6961 lm!2473))))))

(declare-fun e!2995770 () V!16088)

(assert (=> d!1535554 (= (getValue!129 (t!361845 (toList!6961 lm!2473)) key!5896) e!2995770)))

(declare-fun b!4797501 () Bool)

(assert (=> b!4797501 (= e!2995771 (containsKey!3991 (_2!31761 (h!60703 (t!361845 (toList!6961 lm!2473)))) key!5896))))

(declare-fun b!4797499 () Bool)

(assert (=> b!4797499 (= e!2995770 (_2!31760 (get!18519 (getPair!913 (_2!31761 (h!60703 (t!361845 (toList!6961 lm!2473)))) key!5896))))))

(declare-fun b!4797500 () Bool)

(assert (=> b!4797500 (= e!2995770 (getValue!129 (t!361845 (t!361845 (toList!6961 lm!2473))) key!5896))))

(assert (= (and d!1535554 res!2039911) b!4797501))

(assert (= (and d!1535554 c!817687) b!4797499))

(assert (= (and d!1535554 (not c!817687)) b!4797500))

(declare-fun m!5780016 () Bool)

(assert (=> b!4797501 m!5780016))

(declare-fun m!5780018 () Bool)

(assert (=> b!4797499 m!5780018))

(assert (=> b!4797499 m!5780018))

(declare-fun m!5780020 () Bool)

(assert (=> b!4797499 m!5780020))

(declare-fun m!5780022 () Bool)

(assert (=> b!4797500 m!5780022))

(assert (=> b!4797292 d!1535554))

(declare-fun d!1535556 () Bool)

(declare-fun lt!1954428 () Bool)

(declare-fun content!9729 (List!54394) (Set tuple2!56932))

(assert (=> d!1535556 (= lt!1954428 (set.member (get!18519 lt!1954262) (content!9729 (apply!13014 lm!2473 lt!1954235))))))

(declare-fun e!2995777 () Bool)

(assert (=> d!1535556 (= lt!1954428 e!2995777)))

(declare-fun res!2039916 () Bool)

(assert (=> d!1535556 (=> (not res!2039916) (not e!2995777))))

(assert (=> d!1535556 (= res!2039916 (is-Cons!54270 (apply!13014 lm!2473 lt!1954235)))))

(assert (=> d!1535556 (= (contains!17915 (apply!13014 lm!2473 lt!1954235) (get!18519 lt!1954262)) lt!1954428)))

(declare-fun b!4797506 () Bool)

(declare-fun e!2995776 () Bool)

(assert (=> b!4797506 (= e!2995777 e!2995776)))

(declare-fun res!2039917 () Bool)

(assert (=> b!4797506 (=> res!2039917 e!2995776)))

(assert (=> b!4797506 (= res!2039917 (= (h!60702 (apply!13014 lm!2473 lt!1954235)) (get!18519 lt!1954262)))))

(declare-fun b!4797507 () Bool)

(assert (=> b!4797507 (= e!2995776 (contains!17915 (t!361844 (apply!13014 lm!2473 lt!1954235)) (get!18519 lt!1954262)))))

(assert (= (and d!1535556 res!2039916) b!4797506))

(assert (= (and b!4797506 (not res!2039917)) b!4797507))

(assert (=> d!1535556 m!5779574))

(declare-fun m!5780024 () Bool)

(assert (=> d!1535556 m!5780024))

(assert (=> d!1535556 m!5779682))

(declare-fun m!5780026 () Bool)

(assert (=> d!1535556 m!5780026))

(assert (=> b!4797507 m!5779682))

(declare-fun m!5780028 () Bool)

(assert (=> b!4797507 m!5780028))

(assert (=> b!4797212 d!1535556))

(assert (=> b!4797212 d!1535498))

(declare-fun d!1535558 () Bool)

(assert (=> d!1535558 (= (isEmpty!29477 lt!1954262) (not (is-Some!13140 lt!1954262)))))

(assert (=> d!1535418 d!1535558))

(declare-fun d!1535560 () Bool)

(declare-fun res!2039918 () Bool)

(declare-fun e!2995778 () Bool)

(assert (=> d!1535560 (=> res!2039918 e!2995778)))

(assert (=> d!1535560 (= res!2039918 (not (is-Cons!54270 (apply!13014 lm!2473 lt!1954235))))))

(assert (=> d!1535560 (= (noDuplicateKeys!2352 (apply!13014 lm!2473 lt!1954235)) e!2995778)))

(declare-fun b!4797508 () Bool)

(declare-fun e!2995779 () Bool)

(assert (=> b!4797508 (= e!2995778 e!2995779)))

(declare-fun res!2039919 () Bool)

(assert (=> b!4797508 (=> (not res!2039919) (not e!2995779))))

(assert (=> b!4797508 (= res!2039919 (not (containsKey!3991 (t!361844 (apply!13014 lm!2473 lt!1954235)) (_1!31760 (h!60702 (apply!13014 lm!2473 lt!1954235))))))))

(declare-fun b!4797509 () Bool)

(assert (=> b!4797509 (= e!2995779 (noDuplicateKeys!2352 (t!361844 (apply!13014 lm!2473 lt!1954235))))))

(assert (= (and d!1535560 (not res!2039918)) b!4797508))

(assert (= (and b!4797508 res!2039919) b!4797509))

(declare-fun m!5780030 () Bool)

(assert (=> b!4797508 m!5780030))

(assert (=> b!4797509 m!5779940))

(assert (=> d!1535418 d!1535560))

(declare-fun d!1535562 () Bool)

(assert (=> d!1535562 (= (tail!9298 (toList!6961 lm!2473)) (t!361845 (toList!6961 lm!2473)))))

(assert (=> d!1535412 d!1535562))

(declare-fun d!1535564 () Bool)

(assert (=> d!1535564 (= (get!18520 (getValueByKey!2376 (toList!6961 lm!2473) lt!1954235)) (v!48451 (getValueByKey!2376 (toList!6961 lm!2473) lt!1954235)))))

(assert (=> d!1535422 d!1535564))

(assert (=> d!1535422 d!1535486))

(assert (=> b!4797293 d!1535400))

(declare-fun d!1535566 () Bool)

(assert (=> d!1535566 (isDefined!10284 (getValueByKey!2376 (toList!6961 lt!1954234) lt!1954235))))

(declare-fun lt!1954429 () Unit!140360)

(assert (=> d!1535566 (= lt!1954429 (choose!34622 (toList!6961 lt!1954234) lt!1954235))))

(declare-fun e!2995780 () Bool)

(assert (=> d!1535566 e!2995780))

(declare-fun res!2039920 () Bool)

(assert (=> d!1535566 (=> (not res!2039920) (not e!2995780))))

(assert (=> d!1535566 (= res!2039920 (isStrictlySorted!890 (toList!6961 lt!1954234)))))

(assert (=> d!1535566 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2167 (toList!6961 lt!1954234) lt!1954235) lt!1954429)))

(declare-fun b!4797510 () Bool)

(assert (=> b!4797510 (= e!2995780 (containsKey!3993 (toList!6961 lt!1954234) lt!1954235))))

(assert (= (and d!1535566 res!2039920) b!4797510))

(assert (=> d!1535566 m!5779668))

(assert (=> d!1535566 m!5779668))

(assert (=> d!1535566 m!5779670))

(declare-fun m!5780032 () Bool)

(assert (=> d!1535566 m!5780032))

(declare-fun m!5780034 () Bool)

(assert (=> d!1535566 m!5780034))

(assert (=> b!4797510 m!5779664))

(assert (=> b!4797185 d!1535566))

(declare-fun d!1535568 () Bool)

(assert (=> d!1535568 (= (isDefined!10284 (getValueByKey!2376 (toList!6961 lt!1954234) lt!1954235)) (not (isEmpty!29479 (getValueByKey!2376 (toList!6961 lt!1954234) lt!1954235))))))

(declare-fun bs!1156506 () Bool)

(assert (= bs!1156506 d!1535568))

(assert (=> bs!1156506 m!5779668))

(declare-fun m!5780036 () Bool)

(assert (=> bs!1156506 m!5780036))

(assert (=> b!4797185 d!1535568))

(declare-fun d!1535570 () Bool)

(declare-fun c!817688 () Bool)

(assert (=> d!1535570 (= c!817688 (and (is-Cons!54271 (toList!6961 lt!1954234)) (= (_1!31761 (h!60703 (toList!6961 lt!1954234))) lt!1954235)))))

(declare-fun e!2995781 () Option!13143)

(assert (=> d!1535570 (= (getValueByKey!2376 (toList!6961 lt!1954234) lt!1954235) e!2995781)))

(declare-fun b!4797514 () Bool)

(declare-fun e!2995782 () Option!13143)

(assert (=> b!4797514 (= e!2995782 None!13142)))

(declare-fun b!4797512 () Bool)

(assert (=> b!4797512 (= e!2995781 e!2995782)))

(declare-fun c!817689 () Bool)

(assert (=> b!4797512 (= c!817689 (and (is-Cons!54271 (toList!6961 lt!1954234)) (not (= (_1!31761 (h!60703 (toList!6961 lt!1954234))) lt!1954235))))))

(declare-fun b!4797511 () Bool)

(assert (=> b!4797511 (= e!2995781 (Some!13142 (_2!31761 (h!60703 (toList!6961 lt!1954234)))))))

(declare-fun b!4797513 () Bool)

(assert (=> b!4797513 (= e!2995782 (getValueByKey!2376 (t!361845 (toList!6961 lt!1954234)) lt!1954235))))

(assert (= (and d!1535570 c!817688) b!4797511))

(assert (= (and d!1535570 (not c!817688)) b!4797512))

(assert (= (and b!4797512 c!817689) b!4797513))

(assert (= (and b!4797512 (not c!817689)) b!4797514))

(declare-fun m!5780038 () Bool)

(assert (=> b!4797513 m!5780038))

(assert (=> b!4797185 d!1535570))

(assert (=> b!4797243 d!1535494))

(declare-fun d!1535572 () Bool)

(assert (=> d!1535572 (containsKey!3994 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))) key!5896)))

(declare-fun lt!1954432 () Unit!140360)

(declare-fun choose!34623 (List!54394 K!15842) Unit!140360)

(assert (=> d!1535572 (= lt!1954432 (choose!34623 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))) key!5896))))

(assert (=> d!1535572 (invariantList!1743 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))))))

(assert (=> d!1535572 (= (lemmaInGetKeysListThenContainsKey!1089 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))) key!5896) lt!1954432)))

(declare-fun bs!1156507 () Bool)

(assert (= bs!1156507 d!1535572))

(assert (=> bs!1156507 m!5779716))

(declare-fun m!5780040 () Bool)

(assert (=> bs!1156507 m!5780040))

(declare-fun m!5780042 () Bool)

(assert (=> bs!1156507 m!5780042))

(assert (=> b!4797243 d!1535572))

(declare-fun d!1535574 () Bool)

(declare-fun lt!1954435 () Bool)

(declare-fun content!9730 (List!54398) (Set K!15842))

(assert (=> d!1535574 (= lt!1954435 (set.member key!5896 (content!9730 (keys!19830 (extractMap!2468 (toList!6961 lm!2473))))))))

(declare-fun e!2995788 () Bool)

(assert (=> d!1535574 (= lt!1954435 e!2995788)))

(declare-fun res!2039926 () Bool)

(assert (=> d!1535574 (=> (not res!2039926) (not e!2995788))))

(assert (=> d!1535574 (= res!2039926 (is-Cons!54274 (keys!19830 (extractMap!2468 (toList!6961 lm!2473)))))))

(assert (=> d!1535574 (= (contains!17916 (keys!19830 (extractMap!2468 (toList!6961 lm!2473))) key!5896) lt!1954435)))

(declare-fun b!4797519 () Bool)

(declare-fun e!2995787 () Bool)

(assert (=> b!4797519 (= e!2995788 e!2995787)))

(declare-fun res!2039925 () Bool)

(assert (=> b!4797519 (=> res!2039925 e!2995787)))

(assert (=> b!4797519 (= res!2039925 (= (h!60706 (keys!19830 (extractMap!2468 (toList!6961 lm!2473)))) key!5896))))

(declare-fun b!4797520 () Bool)

(assert (=> b!4797520 (= e!2995787 (contains!17916 (t!361848 (keys!19830 (extractMap!2468 (toList!6961 lm!2473)))) key!5896))))

(assert (= (and d!1535574 res!2039926) b!4797519))

(assert (= (and b!4797519 (not res!2039925)) b!4797520))

(assert (=> d!1535574 m!5779712))

(declare-fun m!5780044 () Bool)

(assert (=> d!1535574 m!5780044))

(declare-fun m!5780046 () Bool)

(assert (=> d!1535574 m!5780046))

(declare-fun m!5780048 () Bool)

(assert (=> b!4797520 m!5780048))

(assert (=> b!4797244 d!1535574))

(declare-fun b!4797528 () Bool)

(assert (=> b!4797528 true))

(declare-fun d!1535576 () Bool)

(declare-fun e!2995791 () Bool)

(assert (=> d!1535576 e!2995791))

(declare-fun res!2039933 () Bool)

(assert (=> d!1535576 (=> (not res!2039933) (not e!2995791))))

(declare-fun lt!1954438 () List!54398)

(declare-fun noDuplicate!926 (List!54398) Bool)

(assert (=> d!1535576 (= res!2039933 (noDuplicate!926 lt!1954438))))

(assert (=> d!1535576 (= lt!1954438 (getKeysList!1089 (toList!6962 (extractMap!2468 (toList!6961 lm!2473)))))))

(assert (=> d!1535576 (= (keys!19830 (extractMap!2468 (toList!6961 lm!2473))) lt!1954438)))

(declare-fun b!4797527 () Bool)

(declare-fun res!2039934 () Bool)

(assert (=> b!4797527 (=> (not res!2039934) (not e!2995791))))

(declare-fun length!708 (List!54398) Int)

(declare-fun length!709 (List!54394) Int)

(assert (=> b!4797527 (= res!2039934 (= (length!708 lt!1954438) (length!709 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))))))))

(declare-fun res!2039935 () Bool)

(assert (=> b!4797528 (=> (not res!2039935) (not e!2995791))))

(declare-fun lambda!231683 () Int)

(declare-fun forall!12295 (List!54398 Int) Bool)

(assert (=> b!4797528 (= res!2039935 (forall!12295 lt!1954438 lambda!231683))))

(declare-fun b!4797529 () Bool)

(declare-fun lambda!231684 () Int)

(declare-fun map!12258 (List!54394 Int) List!54398)

(assert (=> b!4797529 (= e!2995791 (= (content!9730 lt!1954438) (content!9730 (map!12258 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))) lambda!231684))))))

(assert (= (and d!1535576 res!2039933) b!4797527))

(assert (= (and b!4797527 res!2039934) b!4797528))

(assert (= (and b!4797528 res!2039935) b!4797529))

(declare-fun m!5780050 () Bool)

(assert (=> d!1535576 m!5780050))

(assert (=> d!1535576 m!5779708))

(declare-fun m!5780052 () Bool)

(assert (=> b!4797527 m!5780052))

(declare-fun m!5780054 () Bool)

(assert (=> b!4797527 m!5780054))

(declare-fun m!5780056 () Bool)

(assert (=> b!4797528 m!5780056))

(declare-fun m!5780058 () Bool)

(assert (=> b!4797529 m!5780058))

(declare-fun m!5780060 () Bool)

(assert (=> b!4797529 m!5780060))

(assert (=> b!4797529 m!5780060))

(declare-fun m!5780062 () Bool)

(assert (=> b!4797529 m!5780062))

(assert (=> b!4797244 d!1535576))

(declare-fun d!1535578 () Bool)

(declare-fun res!2039936 () Bool)

(declare-fun e!2995792 () Bool)

(assert (=> d!1535578 (=> res!2039936 e!2995792)))

(assert (=> d!1535578 (= res!2039936 (is-Nil!54271 (toList!6961 lt!1954234)))))

(assert (=> d!1535578 (= (forall!12292 (toList!6961 lt!1954234) lambda!231623) e!2995792)))

(declare-fun b!4797532 () Bool)

(declare-fun e!2995793 () Bool)

(assert (=> b!4797532 (= e!2995792 e!2995793)))

(declare-fun res!2039937 () Bool)

(assert (=> b!4797532 (=> (not res!2039937) (not e!2995793))))

(assert (=> b!4797532 (= res!2039937 (dynLambda!22083 lambda!231623 (h!60703 (toList!6961 lt!1954234))))))

(declare-fun b!4797533 () Bool)

(assert (=> b!4797533 (= e!2995793 (forall!12292 (t!361845 (toList!6961 lt!1954234)) lambda!231623))))

(assert (= (and d!1535578 (not res!2039936)) b!4797532))

(assert (= (and b!4797532 res!2039937) b!4797533))

(declare-fun b_lambda!187281 () Bool)

(assert (=> (not b_lambda!187281) (not b!4797532)))

(declare-fun m!5780064 () Bool)

(assert (=> b!4797532 m!5780064))

(declare-fun m!5780066 () Bool)

(assert (=> b!4797533 m!5780066))

(assert (=> d!1535402 d!1535578))

(declare-fun d!1535580 () Bool)

(declare-fun res!2039942 () Bool)

(declare-fun e!2995798 () Bool)

(assert (=> d!1535580 (=> res!2039942 e!2995798)))

(assert (=> d!1535580 (= res!2039942 (and (is-Cons!54271 (toList!6961 lm!2473)) (= (_1!31761 (h!60703 (toList!6961 lm!2473))) lt!1954235)))))

(assert (=> d!1535580 (= (containsKey!3993 (toList!6961 lm!2473) lt!1954235) e!2995798)))

(declare-fun b!4797538 () Bool)

(declare-fun e!2995799 () Bool)

(assert (=> b!4797538 (= e!2995798 e!2995799)))

(declare-fun res!2039943 () Bool)

(assert (=> b!4797538 (=> (not res!2039943) (not e!2995799))))

(assert (=> b!4797538 (= res!2039943 (and (or (not (is-Cons!54271 (toList!6961 lm!2473))) (bvsle (_1!31761 (h!60703 (toList!6961 lm!2473))) lt!1954235)) (is-Cons!54271 (toList!6961 lm!2473)) (bvslt (_1!31761 (h!60703 (toList!6961 lm!2473))) lt!1954235)))))

(declare-fun b!4797539 () Bool)

(assert (=> b!4797539 (= e!2995799 (containsKey!3993 (t!361845 (toList!6961 lm!2473)) lt!1954235))))

(assert (= (and d!1535580 (not res!2039942)) b!4797538))

(assert (= (and b!4797538 res!2039943) b!4797539))

(declare-fun m!5780068 () Bool)

(assert (=> b!4797539 m!5780068))

(assert (=> d!1535438 d!1535580))

(declare-fun d!1535582 () Bool)

(declare-fun lt!1954439 () Bool)

(assert (=> d!1535582 (= lt!1954439 (set.member key!5896 (content!9730 e!2995585)))))

(declare-fun e!2995801 () Bool)

(assert (=> d!1535582 (= lt!1954439 e!2995801)))

(declare-fun res!2039945 () Bool)

(assert (=> d!1535582 (=> (not res!2039945) (not e!2995801))))

(assert (=> d!1535582 (= res!2039945 (is-Cons!54274 e!2995585))))

(assert (=> d!1535582 (= (contains!17916 e!2995585 key!5896) lt!1954439)))

(declare-fun b!4797540 () Bool)

(declare-fun e!2995800 () Bool)

(assert (=> b!4797540 (= e!2995801 e!2995800)))

(declare-fun res!2039944 () Bool)

(assert (=> b!4797540 (=> res!2039944 e!2995800)))

(assert (=> b!4797540 (= res!2039944 (= (h!60706 e!2995585) key!5896))))

(declare-fun b!4797541 () Bool)

(assert (=> b!4797541 (= e!2995800 (contains!17916 (t!361848 e!2995585) key!5896))))

(assert (= (and d!1535582 res!2039945) b!4797540))

(assert (= (and b!4797540 (not res!2039944)) b!4797541))

(declare-fun m!5780070 () Bool)

(assert (=> d!1535582 m!5780070))

(declare-fun m!5780072 () Bool)

(assert (=> d!1535582 m!5780072))

(declare-fun m!5780074 () Bool)

(assert (=> b!4797541 m!5780074))

(assert (=> bm!335234 d!1535582))

(declare-fun d!1535584 () Bool)

(declare-fun choose!34624 (Hashable!6941 K!15842) (_ BitVec 64))

(assert (=> d!1535584 (= (hash!4990 hashF!1559 key!5896) (choose!34624 hashF!1559 key!5896))))

(declare-fun bs!1156508 () Bool)

(assert (= bs!1156508 d!1535584))

(declare-fun m!5780076 () Bool)

(assert (=> bs!1156508 m!5780076))

(assert (=> d!1535450 d!1535584))

(declare-fun d!1535586 () Bool)

(declare-fun res!2039946 () Bool)

(declare-fun e!2995802 () Bool)

(assert (=> d!1535586 (=> res!2039946 e!2995802)))

(assert (=> d!1535586 (= res!2039946 (and (is-Cons!54270 (t!361844 (_2!31761 (h!60703 (toList!6961 lm!2473))))) (= (_1!31760 (h!60702 (t!361844 (_2!31761 (h!60703 (toList!6961 lm!2473)))))) key!5896)))))

(assert (=> d!1535586 (= (containsKey!3991 (t!361844 (_2!31761 (h!60703 (toList!6961 lm!2473)))) key!5896) e!2995802)))

(declare-fun b!4797542 () Bool)

(declare-fun e!2995803 () Bool)

(assert (=> b!4797542 (= e!2995802 e!2995803)))

(declare-fun res!2039947 () Bool)

(assert (=> b!4797542 (=> (not res!2039947) (not e!2995803))))

(assert (=> b!4797542 (= res!2039947 (is-Cons!54270 (t!361844 (_2!31761 (h!60703 (toList!6961 lm!2473))))))))

(declare-fun b!4797543 () Bool)

(assert (=> b!4797543 (= e!2995803 (containsKey!3991 (t!361844 (t!361844 (_2!31761 (h!60703 (toList!6961 lm!2473))))) key!5896))))

(assert (= (and d!1535586 (not res!2039946)) b!4797542))

(assert (= (and b!4797542 res!2039947) b!4797543))

(declare-fun m!5780078 () Bool)

(assert (=> b!4797543 m!5780078))

(assert (=> b!4797166 d!1535586))

(declare-fun bs!1156509 () Bool)

(declare-fun b!4797565 () Bool)

(assert (= bs!1156509 (and b!4797565 b!4797528)))

(declare-fun lambda!231693 () Int)

(assert (=> bs!1156509 (= (= (t!361844 (toList!6962 (extractMap!2468 (toList!6961 lm!2473)))) (toList!6962 (extractMap!2468 (toList!6961 lm!2473)))) (= lambda!231693 lambda!231683))))

(assert (=> b!4797565 true))

(declare-fun bs!1156510 () Bool)

(declare-fun b!4797566 () Bool)

(assert (= bs!1156510 (and b!4797566 b!4797528)))

(declare-fun lambda!231694 () Int)

(assert (=> bs!1156510 (= (= (Cons!54270 (h!60702 (toList!6962 (extractMap!2468 (toList!6961 lm!2473)))) (t!361844 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))))) (toList!6962 (extractMap!2468 (toList!6961 lm!2473)))) (= lambda!231694 lambda!231683))))

(declare-fun bs!1156511 () Bool)

(assert (= bs!1156511 (and b!4797566 b!4797565)))

(assert (=> bs!1156511 (= (= (Cons!54270 (h!60702 (toList!6962 (extractMap!2468 (toList!6961 lm!2473)))) (t!361844 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))))) (t!361844 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))))) (= lambda!231694 lambda!231693))))

(assert (=> b!4797566 true))

(declare-fun bs!1156512 () Bool)

(declare-fun b!4797563 () Bool)

(assert (= bs!1156512 (and b!4797563 b!4797528)))

(declare-fun lambda!231695 () Int)

(assert (=> bs!1156512 (= lambda!231695 lambda!231683)))

(declare-fun bs!1156513 () Bool)

(assert (= bs!1156513 (and b!4797563 b!4797565)))

(assert (=> bs!1156513 (= (= (toList!6962 (extractMap!2468 (toList!6961 lm!2473))) (t!361844 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))))) (= lambda!231695 lambda!231693))))

(declare-fun bs!1156514 () Bool)

(assert (= bs!1156514 (and b!4797563 b!4797566)))

(assert (=> bs!1156514 (= (= (toList!6962 (extractMap!2468 (toList!6961 lm!2473))) (Cons!54270 (h!60702 (toList!6962 (extractMap!2468 (toList!6961 lm!2473)))) (t!361844 (toList!6962 (extractMap!2468 (toList!6961 lm!2473)))))) (= lambda!231695 lambda!231694))))

(assert (=> b!4797563 true))

(declare-fun bs!1156515 () Bool)

(declare-fun b!4797569 () Bool)

(assert (= bs!1156515 (and b!4797569 b!4797529)))

(declare-fun lambda!231696 () Int)

(assert (=> bs!1156515 (= lambda!231696 lambda!231684)))

(declare-fun d!1535588 () Bool)

(declare-fun e!2995812 () Bool)

(assert (=> d!1535588 e!2995812))

(declare-fun res!2039956 () Bool)

(assert (=> d!1535588 (=> (not res!2039956) (not e!2995812))))

(declare-fun lt!1954454 () List!54398)

(assert (=> d!1535588 (= res!2039956 (noDuplicate!926 lt!1954454))))

(declare-fun e!2995814 () List!54398)

(assert (=> d!1535588 (= lt!1954454 e!2995814)))

(declare-fun c!817698 () Bool)

(assert (=> d!1535588 (= c!817698 (is-Cons!54270 (toList!6962 (extractMap!2468 (toList!6961 lm!2473)))))))

(assert (=> d!1535588 (invariantList!1743 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))))))

(assert (=> d!1535588 (= (getKeysList!1089 (toList!6962 (extractMap!2468 (toList!6961 lm!2473)))) lt!1954454)))

(declare-fun b!4797562 () Bool)

(declare-fun e!2995815 () Unit!140360)

(declare-fun Unit!140384 () Unit!140360)

(assert (=> b!4797562 (= e!2995815 Unit!140384)))

(declare-fun res!2039955 () Bool)

(assert (=> b!4797563 (=> (not res!2039955) (not e!2995812))))

(assert (=> b!4797563 (= res!2039955 (forall!12295 lt!1954454 lambda!231695))))

(declare-fun b!4797564 () Bool)

(declare-fun e!2995813 () Unit!140360)

(declare-fun Unit!140385 () Unit!140360)

(assert (=> b!4797564 (= e!2995813 Unit!140385)))

(assert (=> b!4797565 false))

(declare-fun lt!1954460 () Unit!140360)

(declare-fun forallContained!4195 (List!54398 Int K!15842) Unit!140360)

(assert (=> b!4797565 (= lt!1954460 (forallContained!4195 (getKeysList!1089 (t!361844 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))))) lambda!231693 (_1!31760 (h!60702 (toList!6962 (extractMap!2468 (toList!6961 lm!2473)))))))))

(declare-fun Unit!140386 () Unit!140360)

(assert (=> b!4797565 (= e!2995813 Unit!140386)))

(assert (=> b!4797566 (= e!2995814 (Cons!54274 (_1!31760 (h!60702 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))))) (getKeysList!1089 (t!361844 (toList!6962 (extractMap!2468 (toList!6961 lm!2473)))))))))

(declare-fun c!817697 () Bool)

(assert (=> b!4797566 (= c!817697 (containsKey!3994 (t!361844 (toList!6962 (extractMap!2468 (toList!6961 lm!2473)))) (_1!31760 (h!60702 (toList!6962 (extractMap!2468 (toList!6961 lm!2473)))))))))

(declare-fun lt!1954458 () Unit!140360)

(assert (=> b!4797566 (= lt!1954458 e!2995815)))

(declare-fun c!817696 () Bool)

(assert (=> b!4797566 (= c!817696 (contains!17916 (getKeysList!1089 (t!361844 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))))) (_1!31760 (h!60702 (toList!6962 (extractMap!2468 (toList!6961 lm!2473)))))))))

(declare-fun lt!1954455 () Unit!140360)

(assert (=> b!4797566 (= lt!1954455 e!2995813)))

(declare-fun lt!1954457 () List!54398)

(assert (=> b!4797566 (= lt!1954457 (getKeysList!1089 (t!361844 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))))))))

(declare-fun lt!1954456 () Unit!140360)

(declare-fun lemmaForallContainsAddHeadPreserves!341 (List!54394 List!54398 tuple2!56932) Unit!140360)

(assert (=> b!4797566 (= lt!1954456 (lemmaForallContainsAddHeadPreserves!341 (t!361844 (toList!6962 (extractMap!2468 (toList!6961 lm!2473)))) lt!1954457 (h!60702 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))))))))

(assert (=> b!4797566 (forall!12295 lt!1954457 lambda!231694)))

(declare-fun lt!1954459 () Unit!140360)

(assert (=> b!4797566 (= lt!1954459 lt!1954456)))

(declare-fun b!4797567 () Bool)

(assert (=> b!4797567 (= e!2995814 Nil!54274)))

(declare-fun b!4797568 () Bool)

(assert (=> b!4797568 false))

(declare-fun Unit!140387 () Unit!140360)

(assert (=> b!4797568 (= e!2995815 Unit!140387)))

(assert (=> b!4797569 (= e!2995812 (= (content!9730 lt!1954454) (content!9730 (map!12258 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))) lambda!231696))))))

(declare-fun b!4797570 () Bool)

(declare-fun res!2039954 () Bool)

(assert (=> b!4797570 (=> (not res!2039954) (not e!2995812))))

(assert (=> b!4797570 (= res!2039954 (= (length!708 lt!1954454) (length!709 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))))))))

(assert (= (and d!1535588 c!817698) b!4797566))

(assert (= (and d!1535588 (not c!817698)) b!4797567))

(assert (= (and b!4797566 c!817697) b!4797568))

(assert (= (and b!4797566 (not c!817697)) b!4797562))

(assert (= (and b!4797566 c!817696) b!4797565))

(assert (= (and b!4797566 (not c!817696)) b!4797564))

(assert (= (and d!1535588 res!2039956) b!4797570))

(assert (= (and b!4797570 res!2039954) b!4797563))

(assert (= (and b!4797563 res!2039955) b!4797569))

(declare-fun m!5780080 () Bool)

(assert (=> b!4797569 m!5780080))

(declare-fun m!5780082 () Bool)

(assert (=> b!4797569 m!5780082))

(assert (=> b!4797569 m!5780082))

(declare-fun m!5780084 () Bool)

(assert (=> b!4797569 m!5780084))

(declare-fun m!5780086 () Bool)

(assert (=> b!4797566 m!5780086))

(declare-fun m!5780088 () Bool)

(assert (=> b!4797566 m!5780088))

(declare-fun m!5780090 () Bool)

(assert (=> b!4797566 m!5780090))

(declare-fun m!5780092 () Bool)

(assert (=> b!4797566 m!5780092))

(assert (=> b!4797566 m!5780090))

(declare-fun m!5780094 () Bool)

(assert (=> b!4797566 m!5780094))

(declare-fun m!5780096 () Bool)

(assert (=> b!4797570 m!5780096))

(assert (=> b!4797570 m!5780054))

(declare-fun m!5780098 () Bool)

(assert (=> d!1535588 m!5780098))

(assert (=> d!1535588 m!5780042))

(declare-fun m!5780100 () Bool)

(assert (=> b!4797563 m!5780100))

(assert (=> b!4797565 m!5780090))

(assert (=> b!4797565 m!5780090))

(declare-fun m!5780102 () Bool)

(assert (=> b!4797565 m!5780102))

(assert (=> b!4797241 d!1535588))

(declare-fun d!1535590 () Bool)

(declare-fun res!2039959 () Bool)

(declare-fun e!2995816 () Bool)

(assert (=> d!1535590 (=> res!2039959 e!2995816)))

(declare-fun e!2995818 () Bool)

(assert (=> d!1535590 (= res!2039959 e!2995818)))

(declare-fun res!2039957 () Bool)

(assert (=> d!1535590 (=> (not res!2039957) (not e!2995818))))

(assert (=> d!1535590 (= res!2039957 (is-Cons!54271 (t!361845 (toList!6961 lm!2473))))))

(assert (=> d!1535590 (= (containsKeyBiggerList!583 (t!361845 (toList!6961 lm!2473)) key!5896) e!2995816)))

(declare-fun b!4797573 () Bool)

(assert (=> b!4797573 (= e!2995818 (containsKey!3991 (_2!31761 (h!60703 (t!361845 (toList!6961 lm!2473)))) key!5896))))

(declare-fun b!4797574 () Bool)

(declare-fun e!2995817 () Bool)

(assert (=> b!4797574 (= e!2995816 e!2995817)))

(declare-fun res!2039958 () Bool)

(assert (=> b!4797574 (=> (not res!2039958) (not e!2995817))))

(assert (=> b!4797574 (= res!2039958 (is-Cons!54271 (t!361845 (toList!6961 lm!2473))))))

(declare-fun b!4797575 () Bool)

(assert (=> b!4797575 (= e!2995817 (containsKeyBiggerList!583 (t!361845 (t!361845 (toList!6961 lm!2473))) key!5896))))

(assert (= (and d!1535590 res!2039957) b!4797573))

(assert (= (and d!1535590 (not res!2039959)) b!4797574))

(assert (= (and b!4797574 res!2039958) b!4797575))

(assert (=> b!4797573 m!5780016))

(declare-fun m!5780104 () Bool)

(assert (=> b!4797575 m!5780104))

(assert (=> b!4797279 d!1535590))

(assert (=> b!4797242 d!1535576))

(declare-fun d!1535592 () Bool)

(declare-fun res!2039960 () Bool)

(declare-fun e!2995819 () Bool)

(assert (=> d!1535592 (=> res!2039960 e!2995819)))

(assert (=> d!1535592 (= res!2039960 (and (is-Cons!54271 (toList!6961 lt!1954234)) (= (_1!31761 (h!60703 (toList!6961 lt!1954234))) lt!1954235)))))

(assert (=> d!1535592 (= (containsKey!3993 (toList!6961 lt!1954234) lt!1954235) e!2995819)))

(declare-fun b!4797576 () Bool)

(declare-fun e!2995820 () Bool)

(assert (=> b!4797576 (= e!2995819 e!2995820)))

(declare-fun res!2039961 () Bool)

(assert (=> b!4797576 (=> (not res!2039961) (not e!2995820))))

(assert (=> b!4797576 (= res!2039961 (and (or (not (is-Cons!54271 (toList!6961 lt!1954234))) (bvsle (_1!31761 (h!60703 (toList!6961 lt!1954234))) lt!1954235)) (is-Cons!54271 (toList!6961 lt!1954234)) (bvslt (_1!31761 (h!60703 (toList!6961 lt!1954234))) lt!1954235)))))

(declare-fun b!4797577 () Bool)

(assert (=> b!4797577 (= e!2995820 (containsKey!3993 (t!361845 (toList!6961 lt!1954234)) lt!1954235))))

(assert (= (and d!1535592 (not res!2039960)) b!4797576))

(assert (= (and b!4797576 res!2039961) b!4797577))

(declare-fun m!5780106 () Bool)

(assert (=> b!4797577 m!5780106))

(assert (=> d!1535408 d!1535592))

(declare-fun d!1535594 () Bool)

(assert (=> d!1535594 (= (isEmpty!29477 (getPair!913 (apply!13014 lm!2473 lt!1954235) key!5896)) (not (is-Some!13140 (getPair!913 (apply!13014 lm!2473 lt!1954235) key!5896))))))

(assert (=> d!1535414 d!1535594))

(assert (=> b!4797249 d!1535574))

(assert (=> b!4797249 d!1535576))

(assert (=> d!1535442 d!1535440))

(declare-fun d!1535596 () Bool)

(assert (=> d!1535596 (containsKeyBiggerList!583 (toList!6961 lm!2473) key!5896)))

(assert (=> d!1535596 true))

(declare-fun _$33!853 () Unit!140360)

(assert (=> d!1535596 (= (choose!34618 lm!2473 key!5896 hashF!1559) _$33!853)))

(declare-fun bs!1156516 () Bool)

(assert (= bs!1156516 d!1535596))

(assert (=> bs!1156516 m!5779590))

(assert (=> d!1535442 d!1535596))

(declare-fun d!1535598 () Bool)

(declare-fun res!2039962 () Bool)

(declare-fun e!2995821 () Bool)

(assert (=> d!1535598 (=> res!2039962 e!2995821)))

(assert (=> d!1535598 (= res!2039962 (is-Nil!54271 (toList!6961 lm!2473)))))

(assert (=> d!1535598 (= (forall!12292 (toList!6961 lm!2473) lambda!231636) e!2995821)))

(declare-fun b!4797578 () Bool)

(declare-fun e!2995822 () Bool)

(assert (=> b!4797578 (= e!2995821 e!2995822)))

(declare-fun res!2039963 () Bool)

(assert (=> b!4797578 (=> (not res!2039963) (not e!2995822))))

(assert (=> b!4797578 (= res!2039963 (dynLambda!22083 lambda!231636 (h!60703 (toList!6961 lm!2473))))))

(declare-fun b!4797579 () Bool)

(assert (=> b!4797579 (= e!2995822 (forall!12292 (t!361845 (toList!6961 lm!2473)) lambda!231636))))

(assert (= (and d!1535598 (not res!2039962)) b!4797578))

(assert (= (and b!4797578 res!2039963) b!4797579))

(declare-fun b_lambda!187283 () Bool)

(assert (=> (not b_lambda!187283) (not b!4797578)))

(declare-fun m!5780108 () Bool)

(assert (=> b!4797578 m!5780108))

(declare-fun m!5780110 () Bool)

(assert (=> b!4797579 m!5780110))

(assert (=> d!1535442 d!1535598))

(declare-fun d!1535600 () Bool)

(assert (=> d!1535600 (isDefined!10285 (getValueByKey!2377 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))) key!5896))))

(declare-fun lt!1954463 () Unit!140360)

(declare-fun choose!34625 (List!54394 K!15842) Unit!140360)

(assert (=> d!1535600 (= lt!1954463 (choose!34625 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))) key!5896))))

(assert (=> d!1535600 (invariantList!1743 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))))))

(assert (=> d!1535600 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2168 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))) key!5896) lt!1954463)))

(declare-fun bs!1156517 () Bool)

(assert (= bs!1156517 d!1535600))

(assert (=> bs!1156517 m!5779720))

(assert (=> bs!1156517 m!5779720))

(assert (=> bs!1156517 m!5779722))

(declare-fun m!5780112 () Bool)

(assert (=> bs!1156517 m!5780112))

(assert (=> bs!1156517 m!5780042))

(assert (=> b!4797245 d!1535600))

(declare-fun d!1535602 () Bool)

(declare-fun isEmpty!29481 (Option!13144) Bool)

(assert (=> d!1535602 (= (isDefined!10285 (getValueByKey!2377 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))) key!5896)) (not (isEmpty!29481 (getValueByKey!2377 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))) key!5896))))))

(declare-fun bs!1156518 () Bool)

(assert (= bs!1156518 d!1535602))

(assert (=> bs!1156518 m!5779720))

(declare-fun m!5780114 () Bool)

(assert (=> bs!1156518 m!5780114))

(assert (=> b!4797245 d!1535602))

(declare-fun b!4797588 () Bool)

(declare-fun e!2995827 () Option!13144)

(assert (=> b!4797588 (= e!2995827 (Some!13143 (_2!31760 (h!60702 (toList!6962 (extractMap!2468 (toList!6961 lm!2473)))))))))

(declare-fun d!1535604 () Bool)

(declare-fun c!817703 () Bool)

(assert (=> d!1535604 (= c!817703 (and (is-Cons!54270 (toList!6962 (extractMap!2468 (toList!6961 lm!2473)))) (= (_1!31760 (h!60702 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))))) key!5896)))))

(assert (=> d!1535604 (= (getValueByKey!2377 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))) key!5896) e!2995827)))

(declare-fun b!4797590 () Bool)

(declare-fun e!2995828 () Option!13144)

(assert (=> b!4797590 (= e!2995828 (getValueByKey!2377 (t!361844 (toList!6962 (extractMap!2468 (toList!6961 lm!2473)))) key!5896))))

(declare-fun b!4797591 () Bool)

(assert (=> b!4797591 (= e!2995828 None!13143)))

(declare-fun b!4797589 () Bool)

(assert (=> b!4797589 (= e!2995827 e!2995828)))

(declare-fun c!817704 () Bool)

(assert (=> b!4797589 (= c!817704 (and (is-Cons!54270 (toList!6962 (extractMap!2468 (toList!6961 lm!2473)))) (not (= (_1!31760 (h!60702 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))))) key!5896))))))

(assert (= (and d!1535604 c!817703) b!4797588))

(assert (= (and d!1535604 (not c!817703)) b!4797589))

(assert (= (and b!4797589 c!817704) b!4797590))

(assert (= (and b!4797589 (not c!817704)) b!4797591))

(declare-fun m!5780116 () Bool)

(assert (=> b!4797590 m!5780116))

(assert (=> b!4797245 d!1535604))

(declare-fun d!1535606 () Bool)

(assert (=> d!1535606 (contains!17916 (getKeysList!1089 (toList!6962 (extractMap!2468 (toList!6961 lm!2473)))) key!5896)))

(declare-fun lt!1954466 () Unit!140360)

(declare-fun choose!34626 (List!54394 K!15842) Unit!140360)

(assert (=> d!1535606 (= lt!1954466 (choose!34626 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))) key!5896))))

(assert (=> d!1535606 (invariantList!1743 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))))))

(assert (=> d!1535606 (= (lemmaInListThenGetKeysListContains!1084 (toList!6962 (extractMap!2468 (toList!6961 lm!2473))) key!5896) lt!1954466)))

(declare-fun bs!1156519 () Bool)

(assert (= bs!1156519 d!1535606))

(assert (=> bs!1156519 m!5779708))

(assert (=> bs!1156519 m!5779708))

(declare-fun m!5780118 () Bool)

(assert (=> bs!1156519 m!5780118))

(declare-fun m!5780120 () Bool)

(assert (=> bs!1156519 m!5780120))

(assert (=> bs!1156519 m!5780042))

(assert (=> b!4797245 d!1535606))

(declare-fun d!1535608 () Bool)

(declare-fun res!2039964 () Bool)

(declare-fun e!2995829 () Bool)

(assert (=> d!1535608 (=> res!2039964 e!2995829)))

(assert (=> d!1535608 (= res!2039964 (not (is-Cons!54270 (_2!31761 (h!60703 (toList!6961 lt!1954234))))))))

(assert (=> d!1535608 (= (noDuplicateKeys!2352 (_2!31761 (h!60703 (toList!6961 lt!1954234)))) e!2995829)))

(declare-fun b!4797592 () Bool)

(declare-fun e!2995830 () Bool)

(assert (=> b!4797592 (= e!2995829 e!2995830)))

(declare-fun res!2039965 () Bool)

(assert (=> b!4797592 (=> (not res!2039965) (not e!2995830))))

(assert (=> b!4797592 (= res!2039965 (not (containsKey!3991 (t!361844 (_2!31761 (h!60703 (toList!6961 lt!1954234)))) (_1!31760 (h!60702 (_2!31761 (h!60703 (toList!6961 lt!1954234))))))))))

(declare-fun b!4797593 () Bool)

(assert (=> b!4797593 (= e!2995830 (noDuplicateKeys!2352 (t!361844 (_2!31761 (h!60703 (toList!6961 lt!1954234))))))))

(assert (= (and d!1535608 (not res!2039964)) b!4797592))

(assert (= (and b!4797592 res!2039965) b!4797593))

(declare-fun m!5780122 () Bool)

(assert (=> b!4797592 m!5780122))

(declare-fun m!5780124 () Bool)

(assert (=> b!4797593 m!5780124))

(assert (=> bs!1156476 d!1535608))

(assert (=> b!4797187 d!1535568))

(assert (=> b!4797187 d!1535570))

(declare-fun d!1535610 () Bool)

(declare-fun res!2039970 () Bool)

(declare-fun e!2995835 () Bool)

(assert (=> d!1535610 (=> res!2039970 e!2995835)))

(assert (=> d!1535610 (= res!2039970 (or (is-Nil!54271 (toList!6961 lm!2473)) (is-Nil!54271 (t!361845 (toList!6961 lm!2473)))))))

(assert (=> d!1535610 (= (isStrictlySorted!890 (toList!6961 lm!2473)) e!2995835)))

(declare-fun b!4797598 () Bool)

(declare-fun e!2995836 () Bool)

(assert (=> b!4797598 (= e!2995835 e!2995836)))

(declare-fun res!2039971 () Bool)

(assert (=> b!4797598 (=> (not res!2039971) (not e!2995836))))

(assert (=> b!4797598 (= res!2039971 (bvslt (_1!31761 (h!60703 (toList!6961 lm!2473))) (_1!31761 (h!60703 (t!361845 (toList!6961 lm!2473))))))))

(declare-fun b!4797599 () Bool)

(assert (=> b!4797599 (= e!2995836 (isStrictlySorted!890 (t!361845 (toList!6961 lm!2473))))))

(assert (= (and d!1535610 (not res!2039970)) b!4797598))

(assert (= (and b!4797598 res!2039971) b!4797599))

(declare-fun m!5780126 () Bool)

(assert (=> b!4797599 m!5780126))

(assert (=> d!1535454 d!1535610))

(assert (=> b!4797247 d!1535602))

(assert (=> b!4797247 d!1535604))

(declare-fun b!4797604 () Bool)

(declare-fun e!2995839 () Bool)

(declare-fun tp!1358229 () Bool)

(assert (=> b!4797604 (= e!2995839 (and tp_is_empty!33625 tp_is_empty!33627 tp!1358229))))

(assert (=> b!4797301 (= tp!1358219 e!2995839)))

(assert (= (and b!4797301 (is-Cons!54270 (_2!31761 (h!60703 (toList!6961 lm!2473))))) b!4797604))

(declare-fun b!4797605 () Bool)

(declare-fun e!2995840 () Bool)

(declare-fun tp!1358230 () Bool)

(declare-fun tp!1358231 () Bool)

(assert (=> b!4797605 (= e!2995840 (and tp!1358230 tp!1358231))))

(assert (=> b!4797301 (= tp!1358220 e!2995840)))

(assert (= (and b!4797301 (is-Cons!54271 (t!361845 (toList!6961 lm!2473)))) b!4797605))

(declare-fun b_lambda!187285 () Bool)

(assert (= b_lambda!187271 (or d!1535398 b_lambda!187285)))

(declare-fun bs!1156520 () Bool)

(declare-fun d!1535612 () Bool)

(assert (= bs!1156520 (and d!1535612 d!1535398)))

(declare-fun allKeysSameHash!1968 (List!54394 (_ BitVec 64) Hashable!6941) Bool)

(assert (=> bs!1156520 (= (dynLambda!22083 lambda!231622 (h!60703 (toList!6961 lm!2473))) (allKeysSameHash!1968 (_2!31761 (h!60703 (toList!6961 lm!2473))) (_1!31761 (h!60703 (toList!6961 lm!2473))) hashF!1559))))

(declare-fun m!5780128 () Bool)

(assert (=> bs!1156520 m!5780128))

(assert (=> b!4797449 d!1535612))

(declare-fun b_lambda!187287 () Bool)

(assert (= b_lambda!187269 (or start!494660 b_lambda!187287)))

(declare-fun bs!1156521 () Bool)

(declare-fun d!1535614 () Bool)

(assert (= bs!1156521 (and d!1535614 start!494660)))

(assert (=> bs!1156521 (= (dynLambda!22083 lambda!231614 (h!60703 (t!361845 (toList!6961 lt!1954234)))) (noDuplicateKeys!2352 (_2!31761 (h!60703 (t!361845 (toList!6961 lt!1954234))))))))

(declare-fun m!5780130 () Bool)

(assert (=> bs!1156521 m!5780130))

(assert (=> b!4797406 d!1535614))

(declare-fun b_lambda!187289 () Bool)

(assert (= b_lambda!187273 (or start!494660 b_lambda!187289)))

(declare-fun bs!1156522 () Bool)

(declare-fun d!1535616 () Bool)

(assert (= bs!1156522 (and d!1535616 start!494660)))

(assert (=> bs!1156522 (= (dynLambda!22083 lambda!231614 (h!60703 (t!361845 (toList!6961 lm!2473)))) (noDuplicateKeys!2352 (_2!31761 (h!60703 (t!361845 (toList!6961 lm!2473))))))))

(declare-fun m!5780132 () Bool)

(assert (=> bs!1156522 m!5780132))

(assert (=> b!4797455 d!1535616))

(declare-fun b_lambda!187291 () Bool)

(assert (= b_lambda!187283 (or d!1535442 b_lambda!187291)))

(declare-fun bs!1156523 () Bool)

(declare-fun d!1535618 () Bool)

(assert (= bs!1156523 (and d!1535618 d!1535442)))

(assert (=> bs!1156523 (= (dynLambda!22083 lambda!231636 (h!60703 (toList!6961 lm!2473))) (noDuplicateKeys!2352 (_2!31761 (h!60703 (toList!6961 lm!2473)))))))

(assert (=> bs!1156523 m!5779790))

(assert (=> b!4797578 d!1535618))

(declare-fun b_lambda!187293 () Bool)

(assert (= b_lambda!187281 (or d!1535402 b_lambda!187293)))

(declare-fun bs!1156524 () Bool)

(declare-fun d!1535620 () Bool)

(assert (= bs!1156524 (and d!1535620 d!1535402)))

(assert (=> bs!1156524 (= (dynLambda!22083 lambda!231623 (h!60703 (toList!6961 lt!1954234))) (allKeysSameHash!1968 (_2!31761 (h!60703 (toList!6961 lt!1954234))) (_1!31761 (h!60703 (toList!6961 lt!1954234))) hashF!1559))))

(declare-fun m!5780134 () Bool)

(assert (=> bs!1156524 m!5780134))

(assert (=> b!4797532 d!1535620))

(declare-fun b_lambda!187295 () Bool)

(assert (= b_lambda!187267 (or d!1535430 b_lambda!187295)))

(declare-fun bs!1156525 () Bool)

(declare-fun d!1535622 () Bool)

(assert (= bs!1156525 (and d!1535622 d!1535430)))

(assert (=> bs!1156525 (= (dynLambda!22083 lambda!231630 (h!60703 (toList!6961 lm!2473))) (noDuplicateKeys!2352 (_2!31761 (h!60703 (toList!6961 lm!2473)))))))

(assert (=> bs!1156525 m!5779790))

(assert (=> b!4797398 d!1535622))

(declare-fun b_lambda!187297 () Bool)

(assert (= b_lambda!187279 (or d!1535446 b_lambda!187297)))

(declare-fun bs!1156526 () Bool)

(declare-fun d!1535624 () Bool)

(assert (= bs!1156526 (and d!1535624 d!1535446)))

(assert (=> bs!1156526 (= (dynLambda!22083 lambda!231639 (h!60703 (toList!6961 lm!2473))) (noDuplicateKeys!2352 (_2!31761 (h!60703 (toList!6961 lm!2473)))))))

(assert (=> bs!1156526 m!5779790))

(assert (=> b!4797473 d!1535624))

(push 1)

(assert (not b_lambda!187291))

(assert (not b!4797468))

(assert (not d!1535576))

(assert (not b!4797513))

(assert (not d!1535500))

(assert (not d!1535572))

(assert (not d!1535566))

(assert (not b!4797496))

(assert (not b_lambda!187287))

(assert (not d!1535490))

(assert (not b!4797509))

(assert (not bm!335245))

(assert (not b_lambda!187297))

(assert (not d!1535508))

(assert tp_is_empty!33625)

(assert (not d!1535552))

(assert (not b!4797483))

(assert (not b!4797575))

(assert (not b!4797569))

(assert (not d!1535588))

(assert (not b!4797383))

(assert (not b!4797425))

(assert (not d!1535522))

(assert (not b!4797566))

(assert (not b!4797447))

(assert (not b!4797590))

(assert (not b!4797605))

(assert tp_is_empty!33627)

(assert (not b!4797446))

(assert (not b!4797441))

(assert (not d!1535596))

(assert (not b!4797399))

(assert (not bs!1156526))

(assert (not b!4797528))

(assert (not d!1535518))

(assert (not b!4797474))

(assert (not b!4797499))

(assert (not b!4797510))

(assert (not b!4797592))

(assert (not bs!1156521))

(assert (not b!4797442))

(assert (not b!4797543))

(assert (not b!4797489))

(assert (not bs!1156520))

(assert (not b!4797577))

(assert (not b!4797497))

(assert (not b_lambda!187289))

(assert (not b_lambda!187259))

(assert (not d!1535584))

(assert (not b!4797397))

(assert (not d!1535538))

(assert (not bs!1156525))

(assert (not b!4797507))

(assert (not d!1535574))

(assert (not b!4797539))

(assert (not b!4797492))

(assert (not d!1535606))

(assert (not b!4797428))

(assert (not b!4797529))

(assert (not b!4797424))

(assert (not b!4797457))

(assert (not d!1535556))

(assert (not d!1535542))

(assert (not b!4797604))

(assert (not b!4797541))

(assert (not b!4797533))

(assert (not b!4797480))

(assert (not b!4797508))

(assert (not b_lambda!187295))

(assert (not b!4797427))

(assert (not bm!335244))

(assert (not b!4797520))

(assert (not b!4797405))

(assert (not d!1535484))

(assert (not b!4797456))

(assert (not b!4797501))

(assert (not bs!1156522))

(assert (not b_lambda!187293))

(assert (not b!4797444))

(assert (not b!4797599))

(assert (not b!4797570))

(assert (not b_lambda!187257))

(assert (not d!1535512))

(assert (not b!4797490))

(assert (not b!4797579))

(assert (not bs!1156524))

(assert (not d!1535600))

(assert (not b!4797482))

(assert (not d!1535568))

(assert (not b!4797563))

(assert (not b!4797500))

(assert (not b!4797565))

(assert (not b!4797394))

(assert (not d!1535482))

(assert (not b_lambda!187285))

(assert (not b!4797491))

(assert (not bm!335246))

(assert (not b!4797527))

(assert (not b!4797478))

(assert (not b!4797477))

(assert (not d!1535582))

(assert (not b!4797494))

(assert (not b!4797439))

(assert (not b!4797593))

(assert (not b!4797459))

(assert (not bs!1156523))

(assert (not d!1535510))

(assert (not b!4797407))

(assert (not b!4797573))

(assert (not b!4797450))

(assert (not d!1535544))

(assert (not d!1535602))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

