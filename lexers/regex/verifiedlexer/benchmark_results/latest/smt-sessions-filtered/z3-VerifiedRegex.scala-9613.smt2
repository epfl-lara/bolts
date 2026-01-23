; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!505316 () Bool)

(assert start!505316)

(declare-fun res!2068672 () Bool)

(declare-fun e!3030388 () Bool)

(assert (=> start!505316 (=> (not res!2068672) (not e!3030388))))

(declare-datatypes ((K!17354 0))(
  ( (K!17355 (val!22189 Int)) )
))
(declare-datatypes ((V!17600 0))(
  ( (V!17601 (val!22190 Int)) )
))
(declare-datatypes ((tuple2!59250 0))(
  ( (tuple2!59251 (_1!32919 K!17354) (_2!32919 V!17600)) )
))
(declare-datatypes ((List!55682 0))(
  ( (Nil!55558) (Cons!55558 (h!61995 tuple2!59250) (t!363178 List!55682)) )
))
(declare-datatypes ((tuple2!59252 0))(
  ( (tuple2!59253 (_1!32920 (_ BitVec 64)) (_2!32920 List!55682)) )
))
(declare-datatypes ((List!55683 0))(
  ( (Nil!55559) (Cons!55559 (h!61996 tuple2!59252) (t!363179 List!55683)) )
))
(declare-datatypes ((ListLongMap!6463 0))(
  ( (ListLongMap!6464 (toList!7860 List!55683)) )
))
(declare-fun lm!2646 () ListLongMap!6463)

(declare-fun lambda!242552 () Int)

(declare-fun forall!12953 (List!55683 Int) Bool)

(assert (=> start!505316 (= res!2068672 (forall!12953 (toList!7860 lm!2646) lambda!242552))))

(assert (=> start!505316 e!3030388))

(declare-fun e!3030387 () Bool)

(declare-fun inv!71240 (ListLongMap!6463) Bool)

(assert (=> start!505316 (and (inv!71240 lm!2646) e!3030387)))

(assert (=> start!505316 true))

(declare-fun tp_is_empty!35187 () Bool)

(assert (=> start!505316 tp_is_empty!35187))

(declare-fun b!4848163 () Bool)

(declare-fun res!2068676 () Bool)

(assert (=> b!4848163 (=> (not res!2068676) (not e!3030388))))

(declare-datatypes ((Hashable!7500 0))(
  ( (HashableExt!7499 (__x!33775 Int)) )
))
(declare-fun hashF!1641 () Hashable!7500)

(declare-fun allKeysSameHashInMap!2816 (ListLongMap!6463 Hashable!7500) Bool)

(assert (=> b!4848163 (= res!2068676 (allKeysSameHashInMap!2816 lm!2646 hashF!1641))))

(declare-fun b!4848164 () Bool)

(declare-fun e!3030390 () Bool)

(declare-fun contains!19213 (ListLongMap!6463 (_ BitVec 64)) Bool)

(assert (=> b!4848164 (= e!3030390 (contains!19213 lm!2646 (_1!32920 (h!61996 (toList!7860 lm!2646)))))))

(declare-fun b!4848165 () Bool)

(declare-fun tp!1364646 () Bool)

(assert (=> b!4848165 (= e!3030387 tp!1364646)))

(declare-fun b!4848166 () Bool)

(declare-fun e!3030389 () Bool)

(assert (=> b!4848166 (= e!3030388 e!3030389)))

(declare-fun res!2068674 () Bool)

(assert (=> b!4848166 (=> (not res!2068674) (not e!3030389))))

(declare-fun lt!1988910 () (_ BitVec 64))

(assert (=> b!4848166 (= res!2068674 (contains!19213 lm!2646 lt!1988910))))

(declare-fun key!6445 () K!17354)

(declare-fun hash!5588 (Hashable!7500 K!17354) (_ BitVec 64))

(assert (=> b!4848166 (= lt!1988910 (hash!5588 hashF!1641 key!6445))))

(declare-fun b!4848167 () Bool)

(declare-fun res!2068673 () Bool)

(assert (=> b!4848167 (=> res!2068673 e!3030390)))

(get-info :version)

(assert (=> b!4848167 (= res!2068673 (or (and ((_ is Cons!55559) (toList!7860 lm!2646)) (= (_1!32920 (h!61996 (toList!7860 lm!2646))) lt!1988910)) (not ((_ is Cons!55559) (toList!7860 lm!2646))) (= lt!1988910 (_1!32920 (h!61996 (toList!7860 lm!2646))))))))

(declare-fun b!4848168 () Bool)

(assert (=> b!4848168 (= e!3030389 (not e!3030390))))

(declare-fun res!2068675 () Bool)

(assert (=> b!4848168 (=> res!2068675 e!3030390)))

(declare-fun lt!1988909 () List!55682)

(declare-datatypes ((Option!13671 0))(
  ( (None!13670) (Some!13670 (v!49434 tuple2!59250)) )
))
(declare-fun isDefined!10763 (Option!13671) Bool)

(declare-fun getPair!1090 (List!55682 K!17354) Option!13671)

(assert (=> b!4848168 (= res!2068675 (not (isDefined!10763 (getPair!1090 lt!1988909 key!6445))))))

(declare-datatypes ((Unit!145692 0))(
  ( (Unit!145693) )
))
(declare-fun lt!1988912 () Unit!145692)

(declare-fun lt!1988911 () tuple2!59252)

(declare-fun forallContained!4541 (List!55683 Int tuple2!59252) Unit!145692)

(assert (=> b!4848168 (= lt!1988912 (forallContained!4541 (toList!7860 lm!2646) lambda!242552 lt!1988911))))

(declare-fun contains!19214 (List!55683 tuple2!59252) Bool)

(assert (=> b!4848168 (contains!19214 (toList!7860 lm!2646) lt!1988911)))

(assert (=> b!4848168 (= lt!1988911 (tuple2!59253 lt!1988910 lt!1988909))))

(declare-fun lt!1988908 () Unit!145692)

(declare-fun lemmaGetValueImpliesTupleContained!767 (ListLongMap!6463 (_ BitVec 64) List!55682) Unit!145692)

(assert (=> b!4848168 (= lt!1988908 (lemmaGetValueImpliesTupleContained!767 lm!2646 lt!1988910 lt!1988909))))

(declare-fun apply!13443 (ListLongMap!6463 (_ BitVec 64)) List!55682)

(assert (=> b!4848168 (= lt!1988909 (apply!13443 lm!2646 lt!1988910))))

(declare-fun b!4848169 () Bool)

(declare-fun res!2068677 () Bool)

(assert (=> b!4848169 (=> res!2068677 e!3030390)))

(assert (=> b!4848169 (= res!2068677 (not (forall!12953 (toList!7860 lm!2646) lambda!242552)))))

(assert (= (and start!505316 res!2068672) b!4848163))

(assert (= (and b!4848163 res!2068676) b!4848166))

(assert (= (and b!4848166 res!2068674) b!4848168))

(assert (= (and b!4848168 (not res!2068675)) b!4848167))

(assert (= (and b!4848167 (not res!2068673)) b!4848169))

(assert (= (and b!4848169 (not res!2068677)) b!4848164))

(assert (= start!505316 b!4848165))

(declare-fun m!5846240 () Bool)

(assert (=> b!4848164 m!5846240))

(declare-fun m!5846242 () Bool)

(assert (=> b!4848169 m!5846242))

(declare-fun m!5846244 () Bool)

(assert (=> b!4848166 m!5846244))

(declare-fun m!5846246 () Bool)

(assert (=> b!4848166 m!5846246))

(assert (=> start!505316 m!5846242))

(declare-fun m!5846248 () Bool)

(assert (=> start!505316 m!5846248))

(declare-fun m!5846250 () Bool)

(assert (=> b!4848163 m!5846250))

(declare-fun m!5846252 () Bool)

(assert (=> b!4848168 m!5846252))

(declare-fun m!5846254 () Bool)

(assert (=> b!4848168 m!5846254))

(declare-fun m!5846256 () Bool)

(assert (=> b!4848168 m!5846256))

(declare-fun m!5846258 () Bool)

(assert (=> b!4848168 m!5846258))

(declare-fun m!5846260 () Bool)

(assert (=> b!4848168 m!5846260))

(assert (=> b!4848168 m!5846256))

(declare-fun m!5846262 () Bool)

(assert (=> b!4848168 m!5846262))

(check-sat (not b!4848169) (not b!4848166) (not b!4848168) (not b!4848163) tp_is_empty!35187 (not b!4848165) (not start!505316) (not b!4848164))
(check-sat)
(get-model)

(declare-fun d!1555448 () Bool)

(declare-fun e!3030409 () Bool)

(assert (=> d!1555448 e!3030409))

(declare-fun res!2068690 () Bool)

(assert (=> d!1555448 (=> res!2068690 e!3030409)))

(declare-fun lt!1988938 () Bool)

(assert (=> d!1555448 (= res!2068690 (not lt!1988938))))

(declare-fun lt!1988939 () Bool)

(assert (=> d!1555448 (= lt!1988938 lt!1988939)))

(declare-fun lt!1988937 () Unit!145692)

(declare-fun e!3030410 () Unit!145692)

(assert (=> d!1555448 (= lt!1988937 e!3030410)))

(declare-fun c!825177 () Bool)

(assert (=> d!1555448 (= c!825177 lt!1988939)))

(declare-fun containsKey!4684 (List!55683 (_ BitVec 64)) Bool)

(assert (=> d!1555448 (= lt!1988939 (containsKey!4684 (toList!7860 lm!2646) lt!1988910))))

(assert (=> d!1555448 (= (contains!19213 lm!2646 lt!1988910) lt!1988938)))

(declare-fun b!4848196 () Bool)

(declare-fun lt!1988940 () Unit!145692)

(assert (=> b!4848196 (= e!3030410 lt!1988940)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2502 (List!55683 (_ BitVec 64)) Unit!145692)

(assert (=> b!4848196 (= lt!1988940 (lemmaContainsKeyImpliesGetValueByKeyDefined!2502 (toList!7860 lm!2646) lt!1988910))))

(declare-datatypes ((Option!13673 0))(
  ( (None!13672) (Some!13672 (v!49438 List!55682)) )
))
(declare-fun isDefined!10765 (Option!13673) Bool)

(declare-fun getValueByKey!2730 (List!55683 (_ BitVec 64)) Option!13673)

(assert (=> b!4848196 (isDefined!10765 (getValueByKey!2730 (toList!7860 lm!2646) lt!1988910))))

(declare-fun b!4848197 () Bool)

(declare-fun Unit!145696 () Unit!145692)

(assert (=> b!4848197 (= e!3030410 Unit!145696)))

(declare-fun b!4848198 () Bool)

(assert (=> b!4848198 (= e!3030409 (isDefined!10765 (getValueByKey!2730 (toList!7860 lm!2646) lt!1988910)))))

(assert (= (and d!1555448 c!825177) b!4848196))

(assert (= (and d!1555448 (not c!825177)) b!4848197))

(assert (= (and d!1555448 (not res!2068690)) b!4848198))

(declare-fun m!5846290 () Bool)

(assert (=> d!1555448 m!5846290))

(declare-fun m!5846292 () Bool)

(assert (=> b!4848196 m!5846292))

(declare-fun m!5846294 () Bool)

(assert (=> b!4848196 m!5846294))

(assert (=> b!4848196 m!5846294))

(declare-fun m!5846296 () Bool)

(assert (=> b!4848196 m!5846296))

(assert (=> b!4848198 m!5846294))

(assert (=> b!4848198 m!5846294))

(assert (=> b!4848198 m!5846296))

(assert (=> b!4848166 d!1555448))

(declare-fun d!1555458 () Bool)

(declare-fun hash!5590 (Hashable!7500 K!17354) (_ BitVec 64))

(assert (=> d!1555458 (= (hash!5588 hashF!1641 key!6445) (hash!5590 hashF!1641 key!6445))))

(declare-fun bs!1172523 () Bool)

(assert (= bs!1172523 d!1555458))

(declare-fun m!5846298 () Bool)

(assert (=> bs!1172523 m!5846298))

(assert (=> b!4848166 d!1555458))

(declare-fun d!1555460 () Bool)

(declare-fun res!2068703 () Bool)

(declare-fun e!3030425 () Bool)

(assert (=> d!1555460 (=> res!2068703 e!3030425)))

(assert (=> d!1555460 (= res!2068703 ((_ is Nil!55559) (toList!7860 lm!2646)))))

(assert (=> d!1555460 (= (forall!12953 (toList!7860 lm!2646) lambda!242552) e!3030425)))

(declare-fun b!4848219 () Bool)

(declare-fun e!3030426 () Bool)

(assert (=> b!4848219 (= e!3030425 e!3030426)))

(declare-fun res!2068704 () Bool)

(assert (=> b!4848219 (=> (not res!2068704) (not e!3030426))))

(declare-fun dynLambda!22356 (Int tuple2!59252) Bool)

(assert (=> b!4848219 (= res!2068704 (dynLambda!22356 lambda!242552 (h!61996 (toList!7860 lm!2646))))))

(declare-fun b!4848220 () Bool)

(assert (=> b!4848220 (= e!3030426 (forall!12953 (t!363179 (toList!7860 lm!2646)) lambda!242552))))

(assert (= (and d!1555460 (not res!2068703)) b!4848219))

(assert (= (and b!4848219 res!2068704) b!4848220))

(declare-fun b_lambda!192533 () Bool)

(assert (=> (not b_lambda!192533) (not b!4848219)))

(declare-fun m!5846300 () Bool)

(assert (=> b!4848219 m!5846300))

(declare-fun m!5846302 () Bool)

(assert (=> b!4848220 m!5846302))

(assert (=> start!505316 d!1555460))

(declare-fun d!1555462 () Bool)

(declare-fun isStrictlySorted!1079 (List!55683) Bool)

(assert (=> d!1555462 (= (inv!71240 lm!2646) (isStrictlySorted!1079 (toList!7860 lm!2646)))))

(declare-fun bs!1172524 () Bool)

(assert (= bs!1172524 d!1555462))

(declare-fun m!5846304 () Bool)

(assert (=> bs!1172524 m!5846304))

(assert (=> start!505316 d!1555462))

(assert (=> b!4848169 d!1555460))

(declare-fun bs!1172526 () Bool)

(declare-fun d!1555464 () Bool)

(assert (= bs!1172526 (and d!1555464 start!505316)))

(declare-fun lambda!242558 () Int)

(assert (=> bs!1172526 (not (= lambda!242558 lambda!242552))))

(assert (=> d!1555464 true))

(assert (=> d!1555464 (= (allKeysSameHashInMap!2816 lm!2646 hashF!1641) (forall!12953 (toList!7860 lm!2646) lambda!242558))))

(declare-fun bs!1172527 () Bool)

(assert (= bs!1172527 d!1555464))

(declare-fun m!5846322 () Bool)

(assert (=> bs!1172527 m!5846322))

(assert (=> b!4848163 d!1555464))

(declare-fun d!1555470 () Bool)

(declare-fun isEmpty!29732 (Option!13671) Bool)

(assert (=> d!1555470 (= (isDefined!10763 (getPair!1090 lt!1988909 key!6445)) (not (isEmpty!29732 (getPair!1090 lt!1988909 key!6445))))))

(declare-fun bs!1172528 () Bool)

(assert (= bs!1172528 d!1555470))

(assert (=> bs!1172528 m!5846256))

(declare-fun m!5846324 () Bool)

(assert (=> bs!1172528 m!5846324))

(assert (=> b!4848168 d!1555470))

(declare-fun b!4848258 () Bool)

(declare-fun e!3030452 () Bool)

(declare-fun e!3030451 () Bool)

(assert (=> b!4848258 (= e!3030452 e!3030451)))

(declare-fun res!2068729 () Bool)

(assert (=> b!4848258 (=> (not res!2068729) (not e!3030451))))

(declare-fun lt!1988955 () Option!13671)

(assert (=> b!4848258 (= res!2068729 (isDefined!10763 lt!1988955))))

(declare-fun b!4848259 () Bool)

(declare-fun e!3030453 () Bool)

(declare-fun containsKey!4686 (List!55682 K!17354) Bool)

(assert (=> b!4848259 (= e!3030453 (not (containsKey!4686 lt!1988909 key!6445)))))

(declare-fun b!4848260 () Bool)

(declare-fun e!3030455 () Option!13671)

(declare-fun e!3030454 () Option!13671)

(assert (=> b!4848260 (= e!3030455 e!3030454)))

(declare-fun c!825189 () Bool)

(assert (=> b!4848260 (= c!825189 ((_ is Cons!55558) lt!1988909))))

(declare-fun b!4848261 () Bool)

(assert (=> b!4848261 (= e!3030455 (Some!13670 (h!61995 lt!1988909)))))

(declare-fun b!4848262 () Bool)

(assert (=> b!4848262 (= e!3030454 (getPair!1090 (t!363178 lt!1988909) key!6445))))

(declare-fun d!1555472 () Bool)

(assert (=> d!1555472 e!3030452))

(declare-fun res!2068728 () Bool)

(assert (=> d!1555472 (=> res!2068728 e!3030452)))

(assert (=> d!1555472 (= res!2068728 e!3030453)))

(declare-fun res!2068727 () Bool)

(assert (=> d!1555472 (=> (not res!2068727) (not e!3030453))))

(assert (=> d!1555472 (= res!2068727 (isEmpty!29732 lt!1988955))))

(assert (=> d!1555472 (= lt!1988955 e!3030455)))

(declare-fun c!825188 () Bool)

(assert (=> d!1555472 (= c!825188 (and ((_ is Cons!55558) lt!1988909) (= (_1!32919 (h!61995 lt!1988909)) key!6445)))))

(declare-fun noDuplicateKeys!2590 (List!55682) Bool)

(assert (=> d!1555472 (noDuplicateKeys!2590 lt!1988909)))

(assert (=> d!1555472 (= (getPair!1090 lt!1988909 key!6445) lt!1988955)))

(declare-fun b!4848257 () Bool)

(declare-fun res!2068726 () Bool)

(assert (=> b!4848257 (=> (not res!2068726) (not e!3030451))))

(declare-fun get!19035 (Option!13671) tuple2!59250)

(assert (=> b!4848257 (= res!2068726 (= (_1!32919 (get!19035 lt!1988955)) key!6445))))

(declare-fun b!4848263 () Bool)

(declare-fun contains!19216 (List!55682 tuple2!59250) Bool)

(assert (=> b!4848263 (= e!3030451 (contains!19216 lt!1988909 (get!19035 lt!1988955)))))

(declare-fun b!4848264 () Bool)

(assert (=> b!4848264 (= e!3030454 None!13670)))

(assert (= (and d!1555472 c!825188) b!4848261))

(assert (= (and d!1555472 (not c!825188)) b!4848260))

(assert (= (and b!4848260 c!825189) b!4848262))

(assert (= (and b!4848260 (not c!825189)) b!4848264))

(assert (= (and d!1555472 res!2068727) b!4848259))

(assert (= (and d!1555472 (not res!2068728)) b!4848258))

(assert (= (and b!4848258 res!2068729) b!4848257))

(assert (= (and b!4848257 res!2068726) b!4848263))

(declare-fun m!5846340 () Bool)

(assert (=> b!4848258 m!5846340))

(declare-fun m!5846344 () Bool)

(assert (=> b!4848257 m!5846344))

(declare-fun m!5846346 () Bool)

(assert (=> b!4848259 m!5846346))

(declare-fun m!5846348 () Bool)

(assert (=> d!1555472 m!5846348))

(declare-fun m!5846350 () Bool)

(assert (=> d!1555472 m!5846350))

(declare-fun m!5846352 () Bool)

(assert (=> b!4848262 m!5846352))

(assert (=> b!4848263 m!5846344))

(assert (=> b!4848263 m!5846344))

(declare-fun m!5846354 () Bool)

(assert (=> b!4848263 m!5846354))

(assert (=> b!4848168 d!1555472))

(declare-fun d!1555480 () Bool)

(assert (=> d!1555480 (contains!19214 (toList!7860 lm!2646) (tuple2!59253 lt!1988910 lt!1988909))))

(declare-fun lt!1988958 () Unit!145692)

(declare-fun choose!35456 (ListLongMap!6463 (_ BitVec 64) List!55682) Unit!145692)

(assert (=> d!1555480 (= lt!1988958 (choose!35456 lm!2646 lt!1988910 lt!1988909))))

(assert (=> d!1555480 (contains!19213 lm!2646 lt!1988910)))

(assert (=> d!1555480 (= (lemmaGetValueImpliesTupleContained!767 lm!2646 lt!1988910 lt!1988909) lt!1988958)))

(declare-fun bs!1172533 () Bool)

(assert (= bs!1172533 d!1555480))

(declare-fun m!5846360 () Bool)

(assert (=> bs!1172533 m!5846360))

(declare-fun m!5846362 () Bool)

(assert (=> bs!1172533 m!5846362))

(assert (=> bs!1172533 m!5846244))

(assert (=> b!4848168 d!1555480))

(declare-fun d!1555486 () Bool)

(declare-fun lt!1988961 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9881 (List!55683) (InoxSet tuple2!59252))

(assert (=> d!1555486 (= lt!1988961 (select (content!9881 (toList!7860 lm!2646)) lt!1988911))))

(declare-fun e!3030464 () Bool)

(assert (=> d!1555486 (= lt!1988961 e!3030464)))

(declare-fun res!2068735 () Bool)

(assert (=> d!1555486 (=> (not res!2068735) (not e!3030464))))

(assert (=> d!1555486 (= res!2068735 ((_ is Cons!55559) (toList!7860 lm!2646)))))

(assert (=> d!1555486 (= (contains!19214 (toList!7860 lm!2646) lt!1988911) lt!1988961)))

(declare-fun b!4848275 () Bool)

(declare-fun e!3030463 () Bool)

(assert (=> b!4848275 (= e!3030464 e!3030463)))

(declare-fun res!2068734 () Bool)

(assert (=> b!4848275 (=> res!2068734 e!3030463)))

(assert (=> b!4848275 (= res!2068734 (= (h!61996 (toList!7860 lm!2646)) lt!1988911))))

(declare-fun b!4848276 () Bool)

(assert (=> b!4848276 (= e!3030463 (contains!19214 (t!363179 (toList!7860 lm!2646)) lt!1988911))))

(assert (= (and d!1555486 res!2068735) b!4848275))

(assert (= (and b!4848275 (not res!2068734)) b!4848276))

(declare-fun m!5846364 () Bool)

(assert (=> d!1555486 m!5846364))

(declare-fun m!5846366 () Bool)

(assert (=> d!1555486 m!5846366))

(declare-fun m!5846368 () Bool)

(assert (=> b!4848276 m!5846368))

(assert (=> b!4848168 d!1555486))

(declare-fun d!1555488 () Bool)

(declare-fun get!19036 (Option!13673) List!55682)

(assert (=> d!1555488 (= (apply!13443 lm!2646 lt!1988910) (get!19036 (getValueByKey!2730 (toList!7860 lm!2646) lt!1988910)))))

(declare-fun bs!1172534 () Bool)

(assert (= bs!1172534 d!1555488))

(assert (=> bs!1172534 m!5846294))

(assert (=> bs!1172534 m!5846294))

(declare-fun m!5846370 () Bool)

(assert (=> bs!1172534 m!5846370))

(assert (=> b!4848168 d!1555488))

(declare-fun d!1555490 () Bool)

(assert (=> d!1555490 (dynLambda!22356 lambda!242552 lt!1988911)))

(declare-fun lt!1988964 () Unit!145692)

(declare-fun choose!35457 (List!55683 Int tuple2!59252) Unit!145692)

(assert (=> d!1555490 (= lt!1988964 (choose!35457 (toList!7860 lm!2646) lambda!242552 lt!1988911))))

(declare-fun e!3030467 () Bool)

(assert (=> d!1555490 e!3030467))

(declare-fun res!2068738 () Bool)

(assert (=> d!1555490 (=> (not res!2068738) (not e!3030467))))

(assert (=> d!1555490 (= res!2068738 (forall!12953 (toList!7860 lm!2646) lambda!242552))))

(assert (=> d!1555490 (= (forallContained!4541 (toList!7860 lm!2646) lambda!242552 lt!1988911) lt!1988964)))

(declare-fun b!4848279 () Bool)

(assert (=> b!4848279 (= e!3030467 (contains!19214 (toList!7860 lm!2646) lt!1988911))))

(assert (= (and d!1555490 res!2068738) b!4848279))

(declare-fun b_lambda!192541 () Bool)

(assert (=> (not b_lambda!192541) (not d!1555490)))

(declare-fun m!5846372 () Bool)

(assert (=> d!1555490 m!5846372))

(declare-fun m!5846374 () Bool)

(assert (=> d!1555490 m!5846374))

(assert (=> d!1555490 m!5846242))

(assert (=> b!4848279 m!5846252))

(assert (=> b!4848168 d!1555490))

(declare-fun d!1555492 () Bool)

(declare-fun e!3030468 () Bool)

(assert (=> d!1555492 e!3030468))

(declare-fun res!2068739 () Bool)

(assert (=> d!1555492 (=> res!2068739 e!3030468)))

(declare-fun lt!1988966 () Bool)

(assert (=> d!1555492 (= res!2068739 (not lt!1988966))))

(declare-fun lt!1988967 () Bool)

(assert (=> d!1555492 (= lt!1988966 lt!1988967)))

(declare-fun lt!1988965 () Unit!145692)

(declare-fun e!3030469 () Unit!145692)

(assert (=> d!1555492 (= lt!1988965 e!3030469)))

(declare-fun c!825190 () Bool)

(assert (=> d!1555492 (= c!825190 lt!1988967)))

(assert (=> d!1555492 (= lt!1988967 (containsKey!4684 (toList!7860 lm!2646) (_1!32920 (h!61996 (toList!7860 lm!2646)))))))

(assert (=> d!1555492 (= (contains!19213 lm!2646 (_1!32920 (h!61996 (toList!7860 lm!2646)))) lt!1988966)))

(declare-fun b!4848280 () Bool)

(declare-fun lt!1988968 () Unit!145692)

(assert (=> b!4848280 (= e!3030469 lt!1988968)))

(assert (=> b!4848280 (= lt!1988968 (lemmaContainsKeyImpliesGetValueByKeyDefined!2502 (toList!7860 lm!2646) (_1!32920 (h!61996 (toList!7860 lm!2646)))))))

(assert (=> b!4848280 (isDefined!10765 (getValueByKey!2730 (toList!7860 lm!2646) (_1!32920 (h!61996 (toList!7860 lm!2646)))))))

(declare-fun b!4848281 () Bool)

(declare-fun Unit!145697 () Unit!145692)

(assert (=> b!4848281 (= e!3030469 Unit!145697)))

(declare-fun b!4848282 () Bool)

(assert (=> b!4848282 (= e!3030468 (isDefined!10765 (getValueByKey!2730 (toList!7860 lm!2646) (_1!32920 (h!61996 (toList!7860 lm!2646))))))))

(assert (= (and d!1555492 c!825190) b!4848280))

(assert (= (and d!1555492 (not c!825190)) b!4848281))

(assert (= (and d!1555492 (not res!2068739)) b!4848282))

(declare-fun m!5846376 () Bool)

(assert (=> d!1555492 m!5846376))

(declare-fun m!5846378 () Bool)

(assert (=> b!4848280 m!5846378))

(declare-fun m!5846380 () Bool)

(assert (=> b!4848280 m!5846380))

(assert (=> b!4848280 m!5846380))

(declare-fun m!5846382 () Bool)

(assert (=> b!4848280 m!5846382))

(assert (=> b!4848282 m!5846380))

(assert (=> b!4848282 m!5846380))

(assert (=> b!4848282 m!5846382))

(assert (=> b!4848164 d!1555492))

(declare-fun b!4848287 () Bool)

(declare-fun e!3030472 () Bool)

(declare-fun tp!1364657 () Bool)

(declare-fun tp!1364658 () Bool)

(assert (=> b!4848287 (= e!3030472 (and tp!1364657 tp!1364658))))

(assert (=> b!4848165 (= tp!1364646 e!3030472)))

(assert (= (and b!4848165 ((_ is Cons!55559) (toList!7860 lm!2646))) b!4848287))

(declare-fun b_lambda!192543 () Bool)

(assert (= b_lambda!192533 (or start!505316 b_lambda!192543)))

(declare-fun bs!1172535 () Bool)

(declare-fun d!1555494 () Bool)

(assert (= bs!1172535 (and d!1555494 start!505316)))

(assert (=> bs!1172535 (= (dynLambda!22356 lambda!242552 (h!61996 (toList!7860 lm!2646))) (noDuplicateKeys!2590 (_2!32920 (h!61996 (toList!7860 lm!2646)))))))

(declare-fun m!5846384 () Bool)

(assert (=> bs!1172535 m!5846384))

(assert (=> b!4848219 d!1555494))

(declare-fun b_lambda!192545 () Bool)

(assert (= b_lambda!192541 (or start!505316 b_lambda!192545)))

(declare-fun bs!1172536 () Bool)

(declare-fun d!1555496 () Bool)

(assert (= bs!1172536 (and d!1555496 start!505316)))

(assert (=> bs!1172536 (= (dynLambda!22356 lambda!242552 lt!1988911) (noDuplicateKeys!2590 (_2!32920 lt!1988911)))))

(declare-fun m!5846386 () Bool)

(assert (=> bs!1172536 m!5846386))

(assert (=> d!1555490 d!1555496))

(check-sat (not d!1555470) (not d!1555458) (not d!1555486) (not d!1555472) (not b!4848262) (not d!1555464) (not d!1555490) (not d!1555480) (not d!1555462) (not b!4848258) (not bs!1172536) (not b!4848280) (not d!1555448) (not b!4848276) (not b!4848259) (not d!1555488) (not d!1555492) (not b!4848263) (not b!4848287) tp_is_empty!35187 (not b!4848220) (not b!4848198) (not b!4848282) (not b!4848279) (not b!4848196) (not bs!1172535) (not b_lambda!192543) (not b_lambda!192545) (not b!4848257))
(check-sat)
(get-model)

(declare-fun d!1555534 () Bool)

(declare-fun res!2068773 () Bool)

(declare-fun e!3030517 () Bool)

(assert (=> d!1555534 (=> res!2068773 e!3030517)))

(assert (=> d!1555534 (= res!2068773 (and ((_ is Cons!55559) (toList!7860 lm!2646)) (= (_1!32920 (h!61996 (toList!7860 lm!2646))) lt!1988910)))))

(assert (=> d!1555534 (= (containsKey!4684 (toList!7860 lm!2646) lt!1988910) e!3030517)))

(declare-fun b!4848344 () Bool)

(declare-fun e!3030518 () Bool)

(assert (=> b!4848344 (= e!3030517 e!3030518)))

(declare-fun res!2068774 () Bool)

(assert (=> b!4848344 (=> (not res!2068774) (not e!3030518))))

(assert (=> b!4848344 (= res!2068774 (and (or (not ((_ is Cons!55559) (toList!7860 lm!2646))) (bvsle (_1!32920 (h!61996 (toList!7860 lm!2646))) lt!1988910)) ((_ is Cons!55559) (toList!7860 lm!2646)) (bvslt (_1!32920 (h!61996 (toList!7860 lm!2646))) lt!1988910)))))

(declare-fun b!4848345 () Bool)

(assert (=> b!4848345 (= e!3030518 (containsKey!4684 (t!363179 (toList!7860 lm!2646)) lt!1988910))))

(assert (= (and d!1555534 (not res!2068773)) b!4848344))

(assert (= (and b!4848344 res!2068774) b!4848345))

(declare-fun m!5846428 () Bool)

(assert (=> b!4848345 m!5846428))

(assert (=> d!1555448 d!1555534))

(declare-fun d!1555540 () Bool)

(declare-fun res!2068775 () Bool)

(declare-fun e!3030519 () Bool)

(assert (=> d!1555540 (=> res!2068775 e!3030519)))

(assert (=> d!1555540 (= res!2068775 ((_ is Nil!55559) (toList!7860 lm!2646)))))

(assert (=> d!1555540 (= (forall!12953 (toList!7860 lm!2646) lambda!242558) e!3030519)))

(declare-fun b!4848346 () Bool)

(declare-fun e!3030520 () Bool)

(assert (=> b!4848346 (= e!3030519 e!3030520)))

(declare-fun res!2068776 () Bool)

(assert (=> b!4848346 (=> (not res!2068776) (not e!3030520))))

(assert (=> b!4848346 (= res!2068776 (dynLambda!22356 lambda!242558 (h!61996 (toList!7860 lm!2646))))))

(declare-fun b!4848347 () Bool)

(assert (=> b!4848347 (= e!3030520 (forall!12953 (t!363179 (toList!7860 lm!2646)) lambda!242558))))

(assert (= (and d!1555540 (not res!2068775)) b!4848346))

(assert (= (and b!4848346 res!2068776) b!4848347))

(declare-fun b_lambda!192551 () Bool)

(assert (=> (not b_lambda!192551) (not b!4848346)))

(declare-fun m!5846430 () Bool)

(assert (=> b!4848346 m!5846430))

(declare-fun m!5846432 () Bool)

(assert (=> b!4848347 m!5846432))

(assert (=> d!1555464 d!1555540))

(declare-fun d!1555542 () Bool)

(assert (=> d!1555542 (= (get!19036 (getValueByKey!2730 (toList!7860 lm!2646) lt!1988910)) (v!49438 (getValueByKey!2730 (toList!7860 lm!2646) lt!1988910)))))

(assert (=> d!1555488 d!1555542))

(declare-fun b!4848370 () Bool)

(declare-fun e!3030536 () Option!13673)

(assert (=> b!4848370 (= e!3030536 (Some!13672 (_2!32920 (h!61996 (toList!7860 lm!2646)))))))

(declare-fun b!4848372 () Bool)

(declare-fun e!3030537 () Option!13673)

(assert (=> b!4848372 (= e!3030537 (getValueByKey!2730 (t!363179 (toList!7860 lm!2646)) lt!1988910))))

(declare-fun d!1555546 () Bool)

(declare-fun c!825208 () Bool)

(assert (=> d!1555546 (= c!825208 (and ((_ is Cons!55559) (toList!7860 lm!2646)) (= (_1!32920 (h!61996 (toList!7860 lm!2646))) lt!1988910)))))

(assert (=> d!1555546 (= (getValueByKey!2730 (toList!7860 lm!2646) lt!1988910) e!3030536)))

(declare-fun b!4848373 () Bool)

(assert (=> b!4848373 (= e!3030537 None!13672)))

(declare-fun b!4848371 () Bool)

(assert (=> b!4848371 (= e!3030536 e!3030537)))

(declare-fun c!825209 () Bool)

(assert (=> b!4848371 (= c!825209 (and ((_ is Cons!55559) (toList!7860 lm!2646)) (not (= (_1!32920 (h!61996 (toList!7860 lm!2646))) lt!1988910))))))

(assert (= (and d!1555546 c!825208) b!4848370))

(assert (= (and d!1555546 (not c!825208)) b!4848371))

(assert (= (and b!4848371 c!825209) b!4848372))

(assert (= (and b!4848371 (not c!825209)) b!4848373))

(declare-fun m!5846440 () Bool)

(assert (=> b!4848372 m!5846440))

(assert (=> d!1555488 d!1555546))

(declare-fun d!1555550 () Bool)

(declare-fun res!2068787 () Bool)

(declare-fun e!3030538 () Bool)

(assert (=> d!1555550 (=> res!2068787 e!3030538)))

(assert (=> d!1555550 (= res!2068787 (and ((_ is Cons!55559) (toList!7860 lm!2646)) (= (_1!32920 (h!61996 (toList!7860 lm!2646))) (_1!32920 (h!61996 (toList!7860 lm!2646))))))))

(assert (=> d!1555550 (= (containsKey!4684 (toList!7860 lm!2646) (_1!32920 (h!61996 (toList!7860 lm!2646)))) e!3030538)))

(declare-fun b!4848374 () Bool)

(declare-fun e!3030539 () Bool)

(assert (=> b!4848374 (= e!3030538 e!3030539)))

(declare-fun res!2068788 () Bool)

(assert (=> b!4848374 (=> (not res!2068788) (not e!3030539))))

(assert (=> b!4848374 (= res!2068788 (and (or (not ((_ is Cons!55559) (toList!7860 lm!2646))) (bvsle (_1!32920 (h!61996 (toList!7860 lm!2646))) (_1!32920 (h!61996 (toList!7860 lm!2646))))) ((_ is Cons!55559) (toList!7860 lm!2646)) (bvslt (_1!32920 (h!61996 (toList!7860 lm!2646))) (_1!32920 (h!61996 (toList!7860 lm!2646))))))))

(declare-fun b!4848375 () Bool)

(assert (=> b!4848375 (= e!3030539 (containsKey!4684 (t!363179 (toList!7860 lm!2646)) (_1!32920 (h!61996 (toList!7860 lm!2646)))))))

(assert (= (and d!1555550 (not res!2068787)) b!4848374))

(assert (= (and b!4848374 res!2068788) b!4848375))

(declare-fun m!5846452 () Bool)

(assert (=> b!4848375 m!5846452))

(assert (=> d!1555492 d!1555550))

(declare-fun d!1555554 () Bool)

(declare-fun res!2068799 () Bool)

(declare-fun e!3030550 () Bool)

(assert (=> d!1555554 (=> res!2068799 e!3030550)))

(assert (=> d!1555554 (= res!2068799 (not ((_ is Cons!55558) (_2!32920 (h!61996 (toList!7860 lm!2646))))))))

(assert (=> d!1555554 (= (noDuplicateKeys!2590 (_2!32920 (h!61996 (toList!7860 lm!2646)))) e!3030550)))

(declare-fun b!4848384 () Bool)

(declare-fun e!3030551 () Bool)

(assert (=> b!4848384 (= e!3030550 e!3030551)))

(declare-fun res!2068800 () Bool)

(assert (=> b!4848384 (=> (not res!2068800) (not e!3030551))))

(assert (=> b!4848384 (= res!2068800 (not (containsKey!4686 (t!363178 (_2!32920 (h!61996 (toList!7860 lm!2646)))) (_1!32919 (h!61995 (_2!32920 (h!61996 (toList!7860 lm!2646))))))))))

(declare-fun b!4848385 () Bool)

(assert (=> b!4848385 (= e!3030551 (noDuplicateKeys!2590 (t!363178 (_2!32920 (h!61996 (toList!7860 lm!2646))))))))

(assert (= (and d!1555554 (not res!2068799)) b!4848384))

(assert (= (and b!4848384 res!2068800) b!4848385))

(declare-fun m!5846458 () Bool)

(assert (=> b!4848384 m!5846458))

(declare-fun m!5846460 () Bool)

(assert (=> b!4848385 m!5846460))

(assert (=> bs!1172535 d!1555554))

(declare-fun d!1555560 () Bool)

(declare-fun lt!1988978 () Bool)

(assert (=> d!1555560 (= lt!1988978 (select (content!9881 (t!363179 (toList!7860 lm!2646))) lt!1988911))))

(declare-fun e!3030553 () Bool)

(assert (=> d!1555560 (= lt!1988978 e!3030553)))

(declare-fun res!2068802 () Bool)

(assert (=> d!1555560 (=> (not res!2068802) (not e!3030553))))

(assert (=> d!1555560 (= res!2068802 ((_ is Cons!55559) (t!363179 (toList!7860 lm!2646))))))

(assert (=> d!1555560 (= (contains!19214 (t!363179 (toList!7860 lm!2646)) lt!1988911) lt!1988978)))

(declare-fun b!4848388 () Bool)

(declare-fun e!3030552 () Bool)

(assert (=> b!4848388 (= e!3030553 e!3030552)))

(declare-fun res!2068801 () Bool)

(assert (=> b!4848388 (=> res!2068801 e!3030552)))

(assert (=> b!4848388 (= res!2068801 (= (h!61996 (t!363179 (toList!7860 lm!2646))) lt!1988911))))

(declare-fun b!4848389 () Bool)

(assert (=> b!4848389 (= e!3030552 (contains!19214 (t!363179 (t!363179 (toList!7860 lm!2646))) lt!1988911))))

(assert (= (and d!1555560 res!2068802) b!4848388))

(assert (= (and b!4848388 (not res!2068801)) b!4848389))

(declare-fun m!5846462 () Bool)

(assert (=> d!1555560 m!5846462))

(declare-fun m!5846464 () Bool)

(assert (=> d!1555560 m!5846464))

(declare-fun m!5846466 () Bool)

(assert (=> b!4848389 m!5846466))

(assert (=> b!4848276 d!1555560))

(declare-fun d!1555562 () Bool)

(declare-fun res!2068814 () Bool)

(declare-fun e!3030568 () Bool)

(assert (=> d!1555562 (=> res!2068814 e!3030568)))

(assert (=> d!1555562 (= res!2068814 (or ((_ is Nil!55559) (toList!7860 lm!2646)) ((_ is Nil!55559) (t!363179 (toList!7860 lm!2646)))))))

(assert (=> d!1555562 (= (isStrictlySorted!1079 (toList!7860 lm!2646)) e!3030568)))

(declare-fun b!4848406 () Bool)

(declare-fun e!3030569 () Bool)

(assert (=> b!4848406 (= e!3030568 e!3030569)))

(declare-fun res!2068815 () Bool)

(assert (=> b!4848406 (=> (not res!2068815) (not e!3030569))))

(assert (=> b!4848406 (= res!2068815 (bvslt (_1!32920 (h!61996 (toList!7860 lm!2646))) (_1!32920 (h!61996 (t!363179 (toList!7860 lm!2646))))))))

(declare-fun b!4848407 () Bool)

(assert (=> b!4848407 (= e!3030569 (isStrictlySorted!1079 (t!363179 (toList!7860 lm!2646))))))

(assert (= (and d!1555562 (not res!2068814)) b!4848406))

(assert (= (and b!4848406 res!2068815) b!4848407))

(declare-fun m!5846478 () Bool)

(assert (=> b!4848407 m!5846478))

(assert (=> d!1555462 d!1555562))

(assert (=> b!4848279 d!1555486))

(declare-fun d!1555570 () Bool)

(declare-fun choose!35460 (Hashable!7500 K!17354) (_ BitVec 64))

(assert (=> d!1555570 (= (hash!5590 hashF!1641 key!6445) (choose!35460 hashF!1641 key!6445))))

(declare-fun bs!1172545 () Bool)

(assert (= bs!1172545 d!1555570))

(declare-fun m!5846484 () Bool)

(assert (=> bs!1172545 m!5846484))

(assert (=> d!1555458 d!1555570))

(declare-fun lt!1988980 () Bool)

(declare-fun d!1555576 () Bool)

(assert (=> d!1555576 (= lt!1988980 (select (content!9881 (toList!7860 lm!2646)) (tuple2!59253 lt!1988910 lt!1988909)))))

(declare-fun e!3030572 () Bool)

(assert (=> d!1555576 (= lt!1988980 e!3030572)))

(declare-fun res!2068817 () Bool)

(assert (=> d!1555576 (=> (not res!2068817) (not e!3030572))))

(assert (=> d!1555576 (= res!2068817 ((_ is Cons!55559) (toList!7860 lm!2646)))))

(assert (=> d!1555576 (= (contains!19214 (toList!7860 lm!2646) (tuple2!59253 lt!1988910 lt!1988909)) lt!1988980)))

(declare-fun b!4848409 () Bool)

(declare-fun e!3030571 () Bool)

(assert (=> b!4848409 (= e!3030572 e!3030571)))

(declare-fun res!2068816 () Bool)

(assert (=> b!4848409 (=> res!2068816 e!3030571)))

(assert (=> b!4848409 (= res!2068816 (= (h!61996 (toList!7860 lm!2646)) (tuple2!59253 lt!1988910 lt!1988909)))))

(declare-fun b!4848410 () Bool)

(assert (=> b!4848410 (= e!3030571 (contains!19214 (t!363179 (toList!7860 lm!2646)) (tuple2!59253 lt!1988910 lt!1988909)))))

(assert (= (and d!1555576 res!2068817) b!4848409))

(assert (= (and b!4848409 (not res!2068816)) b!4848410))

(assert (=> d!1555576 m!5846364))

(declare-fun m!5846486 () Bool)

(assert (=> d!1555576 m!5846486))

(declare-fun m!5846488 () Bool)

(assert (=> b!4848410 m!5846488))

(assert (=> d!1555480 d!1555576))

(declare-fun d!1555578 () Bool)

(assert (=> d!1555578 (contains!19214 (toList!7860 lm!2646) (tuple2!59253 lt!1988910 lt!1988909))))

(assert (=> d!1555578 true))

(declare-fun _$41!546 () Unit!145692)

(assert (=> d!1555578 (= (choose!35456 lm!2646 lt!1988910 lt!1988909) _$41!546)))

(declare-fun bs!1172546 () Bool)

(assert (= bs!1172546 d!1555578))

(assert (=> bs!1172546 m!5846360))

(assert (=> d!1555480 d!1555578))

(assert (=> d!1555480 d!1555448))

(declare-fun b!4848413 () Bool)

(declare-fun e!3030574 () Bool)

(declare-fun e!3030573 () Bool)

(assert (=> b!4848413 (= e!3030574 e!3030573)))

(declare-fun res!2068821 () Bool)

(assert (=> b!4848413 (=> (not res!2068821) (not e!3030573))))

(declare-fun lt!1988981 () Option!13671)

(assert (=> b!4848413 (= res!2068821 (isDefined!10763 lt!1988981))))

(declare-fun b!4848414 () Bool)

(declare-fun e!3030575 () Bool)

(assert (=> b!4848414 (= e!3030575 (not (containsKey!4686 (t!363178 lt!1988909) key!6445)))))

(declare-fun b!4848415 () Bool)

(declare-fun e!3030577 () Option!13671)

(declare-fun e!3030576 () Option!13671)

(assert (=> b!4848415 (= e!3030577 e!3030576)))

(declare-fun c!825211 () Bool)

(assert (=> b!4848415 (= c!825211 ((_ is Cons!55558) (t!363178 lt!1988909)))))

(declare-fun b!4848416 () Bool)

(assert (=> b!4848416 (= e!3030577 (Some!13670 (h!61995 (t!363178 lt!1988909))))))

(declare-fun b!4848417 () Bool)

(assert (=> b!4848417 (= e!3030576 (getPair!1090 (t!363178 (t!363178 lt!1988909)) key!6445))))

(declare-fun d!1555580 () Bool)

(assert (=> d!1555580 e!3030574))

(declare-fun res!2068820 () Bool)

(assert (=> d!1555580 (=> res!2068820 e!3030574)))

(assert (=> d!1555580 (= res!2068820 e!3030575)))

(declare-fun res!2068819 () Bool)

(assert (=> d!1555580 (=> (not res!2068819) (not e!3030575))))

(assert (=> d!1555580 (= res!2068819 (isEmpty!29732 lt!1988981))))

(assert (=> d!1555580 (= lt!1988981 e!3030577)))

(declare-fun c!825210 () Bool)

(assert (=> d!1555580 (= c!825210 (and ((_ is Cons!55558) (t!363178 lt!1988909)) (= (_1!32919 (h!61995 (t!363178 lt!1988909))) key!6445)))))

(assert (=> d!1555580 (noDuplicateKeys!2590 (t!363178 lt!1988909))))

(assert (=> d!1555580 (= (getPair!1090 (t!363178 lt!1988909) key!6445) lt!1988981)))

(declare-fun b!4848412 () Bool)

(declare-fun res!2068818 () Bool)

(assert (=> b!4848412 (=> (not res!2068818) (not e!3030573))))

(assert (=> b!4848412 (= res!2068818 (= (_1!32919 (get!19035 lt!1988981)) key!6445))))

(declare-fun b!4848418 () Bool)

(assert (=> b!4848418 (= e!3030573 (contains!19216 (t!363178 lt!1988909) (get!19035 lt!1988981)))))

(declare-fun b!4848419 () Bool)

(assert (=> b!4848419 (= e!3030576 None!13670)))

(assert (= (and d!1555580 c!825210) b!4848416))

(assert (= (and d!1555580 (not c!825210)) b!4848415))

(assert (= (and b!4848415 c!825211) b!4848417))

(assert (= (and b!4848415 (not c!825211)) b!4848419))

(assert (= (and d!1555580 res!2068819) b!4848414))

(assert (= (and d!1555580 (not res!2068820)) b!4848413))

(assert (= (and b!4848413 res!2068821) b!4848412))

(assert (= (and b!4848412 res!2068818) b!4848418))

(declare-fun m!5846490 () Bool)

(assert (=> b!4848413 m!5846490))

(declare-fun m!5846492 () Bool)

(assert (=> b!4848412 m!5846492))

(declare-fun m!5846494 () Bool)

(assert (=> b!4848414 m!5846494))

(declare-fun m!5846496 () Bool)

(assert (=> d!1555580 m!5846496))

(declare-fun m!5846498 () Bool)

(assert (=> d!1555580 m!5846498))

(declare-fun m!5846500 () Bool)

(assert (=> b!4848417 m!5846500))

(assert (=> b!4848418 m!5846492))

(assert (=> b!4848418 m!5846492))

(declare-fun m!5846502 () Bool)

(assert (=> b!4848418 m!5846502))

(assert (=> b!4848262 d!1555580))

(declare-fun d!1555582 () Bool)

(assert (=> d!1555582 (dynLambda!22356 lambda!242552 lt!1988911)))

(assert (=> d!1555582 true))

(declare-fun _$7!2467 () Unit!145692)

(assert (=> d!1555582 (= (choose!35457 (toList!7860 lm!2646) lambda!242552 lt!1988911) _$7!2467)))

(declare-fun b_lambda!192561 () Bool)

(assert (=> (not b_lambda!192561) (not d!1555582)))

(declare-fun bs!1172547 () Bool)

(assert (= bs!1172547 d!1555582))

(assert (=> bs!1172547 m!5846372))

(assert (=> d!1555490 d!1555582))

(assert (=> d!1555490 d!1555460))

(declare-fun d!1555584 () Bool)

(declare-fun lt!1988984 () Bool)

(declare-fun content!9883 (List!55682) (InoxSet tuple2!59250))

(assert (=> d!1555584 (= lt!1988984 (select (content!9883 lt!1988909) (get!19035 lt!1988955)))))

(declare-fun e!3030582 () Bool)

(assert (=> d!1555584 (= lt!1988984 e!3030582)))

(declare-fun res!2068826 () Bool)

(assert (=> d!1555584 (=> (not res!2068826) (not e!3030582))))

(assert (=> d!1555584 (= res!2068826 ((_ is Cons!55558) lt!1988909))))

(assert (=> d!1555584 (= (contains!19216 lt!1988909 (get!19035 lt!1988955)) lt!1988984)))

(declare-fun b!4848424 () Bool)

(declare-fun e!3030583 () Bool)

(assert (=> b!4848424 (= e!3030582 e!3030583)))

(declare-fun res!2068827 () Bool)

(assert (=> b!4848424 (=> res!2068827 e!3030583)))

(assert (=> b!4848424 (= res!2068827 (= (h!61995 lt!1988909) (get!19035 lt!1988955)))))

(declare-fun b!4848425 () Bool)

(assert (=> b!4848425 (= e!3030583 (contains!19216 (t!363178 lt!1988909) (get!19035 lt!1988955)))))

(assert (= (and d!1555584 res!2068826) b!4848424))

(assert (= (and b!4848424 (not res!2068827)) b!4848425))

(declare-fun m!5846504 () Bool)

(assert (=> d!1555584 m!5846504))

(assert (=> d!1555584 m!5846344))

(declare-fun m!5846506 () Bool)

(assert (=> d!1555584 m!5846506))

(assert (=> b!4848425 m!5846344))

(declare-fun m!5846508 () Bool)

(assert (=> b!4848425 m!5846508))

(assert (=> b!4848263 d!1555584))

(declare-fun d!1555586 () Bool)

(assert (=> d!1555586 (= (get!19035 lt!1988955) (v!49434 lt!1988955))))

(assert (=> b!4848263 d!1555586))

(declare-fun d!1555588 () Bool)

(declare-fun c!825214 () Bool)

(assert (=> d!1555588 (= c!825214 ((_ is Nil!55559) (toList!7860 lm!2646)))))

(declare-fun e!3030586 () (InoxSet tuple2!59252))

(assert (=> d!1555588 (= (content!9881 (toList!7860 lm!2646)) e!3030586)))

(declare-fun b!4848430 () Bool)

(assert (=> b!4848430 (= e!3030586 ((as const (Array tuple2!59252 Bool)) false))))

(declare-fun b!4848431 () Bool)

(assert (=> b!4848431 (= e!3030586 ((_ map or) (store ((as const (Array tuple2!59252 Bool)) false) (h!61996 (toList!7860 lm!2646)) true) (content!9881 (t!363179 (toList!7860 lm!2646)))))))

(assert (= (and d!1555588 c!825214) b!4848430))

(assert (= (and d!1555588 (not c!825214)) b!4848431))

(declare-fun m!5846510 () Bool)

(assert (=> b!4848431 m!5846510))

(assert (=> b!4848431 m!5846462))

(assert (=> d!1555486 d!1555588))

(assert (=> b!4848257 d!1555586))

(declare-fun d!1555590 () Bool)

(assert (=> d!1555590 (isDefined!10765 (getValueByKey!2730 (toList!7860 lm!2646) (_1!32920 (h!61996 (toList!7860 lm!2646)))))))

(declare-fun lt!1988987 () Unit!145692)

(declare-fun choose!35461 (List!55683 (_ BitVec 64)) Unit!145692)

(assert (=> d!1555590 (= lt!1988987 (choose!35461 (toList!7860 lm!2646) (_1!32920 (h!61996 (toList!7860 lm!2646)))))))

(declare-fun e!3030589 () Bool)

(assert (=> d!1555590 e!3030589))

(declare-fun res!2068830 () Bool)

(assert (=> d!1555590 (=> (not res!2068830) (not e!3030589))))

(assert (=> d!1555590 (= res!2068830 (isStrictlySorted!1079 (toList!7860 lm!2646)))))

(assert (=> d!1555590 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2502 (toList!7860 lm!2646) (_1!32920 (h!61996 (toList!7860 lm!2646)))) lt!1988987)))

(declare-fun b!4848434 () Bool)

(assert (=> b!4848434 (= e!3030589 (containsKey!4684 (toList!7860 lm!2646) (_1!32920 (h!61996 (toList!7860 lm!2646)))))))

(assert (= (and d!1555590 res!2068830) b!4848434))

(assert (=> d!1555590 m!5846380))

(assert (=> d!1555590 m!5846380))

(assert (=> d!1555590 m!5846382))

(declare-fun m!5846512 () Bool)

(assert (=> d!1555590 m!5846512))

(assert (=> d!1555590 m!5846304))

(assert (=> b!4848434 m!5846376))

(assert (=> b!4848280 d!1555590))

(declare-fun d!1555592 () Bool)

(declare-fun isEmpty!29734 (Option!13673) Bool)

(assert (=> d!1555592 (= (isDefined!10765 (getValueByKey!2730 (toList!7860 lm!2646) (_1!32920 (h!61996 (toList!7860 lm!2646))))) (not (isEmpty!29734 (getValueByKey!2730 (toList!7860 lm!2646) (_1!32920 (h!61996 (toList!7860 lm!2646)))))))))

(declare-fun bs!1172548 () Bool)

(assert (= bs!1172548 d!1555592))

(assert (=> bs!1172548 m!5846380))

(declare-fun m!5846514 () Bool)

(assert (=> bs!1172548 m!5846514))

(assert (=> b!4848280 d!1555592))

(declare-fun b!4848435 () Bool)

(declare-fun e!3030590 () Option!13673)

(assert (=> b!4848435 (= e!3030590 (Some!13672 (_2!32920 (h!61996 (toList!7860 lm!2646)))))))

(declare-fun b!4848437 () Bool)

(declare-fun e!3030591 () Option!13673)

(assert (=> b!4848437 (= e!3030591 (getValueByKey!2730 (t!363179 (toList!7860 lm!2646)) (_1!32920 (h!61996 (toList!7860 lm!2646)))))))

(declare-fun d!1555594 () Bool)

(declare-fun c!825215 () Bool)

(assert (=> d!1555594 (= c!825215 (and ((_ is Cons!55559) (toList!7860 lm!2646)) (= (_1!32920 (h!61996 (toList!7860 lm!2646))) (_1!32920 (h!61996 (toList!7860 lm!2646))))))))

(assert (=> d!1555594 (= (getValueByKey!2730 (toList!7860 lm!2646) (_1!32920 (h!61996 (toList!7860 lm!2646)))) e!3030590)))

(declare-fun b!4848438 () Bool)

(assert (=> b!4848438 (= e!3030591 None!13672)))

(declare-fun b!4848436 () Bool)

(assert (=> b!4848436 (= e!3030590 e!3030591)))

(declare-fun c!825216 () Bool)

(assert (=> b!4848436 (= c!825216 (and ((_ is Cons!55559) (toList!7860 lm!2646)) (not (= (_1!32920 (h!61996 (toList!7860 lm!2646))) (_1!32920 (h!61996 (toList!7860 lm!2646)))))))))

(assert (= (and d!1555594 c!825215) b!4848435))

(assert (= (and d!1555594 (not c!825215)) b!4848436))

(assert (= (and b!4848436 c!825216) b!4848437))

(assert (= (and b!4848436 (not c!825216)) b!4848438))

(declare-fun m!5846516 () Bool)

(assert (=> b!4848437 m!5846516))

(assert (=> b!4848280 d!1555594))

(assert (=> b!4848282 d!1555592))

(assert (=> b!4848282 d!1555594))

(declare-fun d!1555596 () Bool)

(assert (=> d!1555596 (= (isDefined!10763 lt!1988955) (not (isEmpty!29732 lt!1988955)))))

(declare-fun bs!1172549 () Bool)

(assert (= bs!1172549 d!1555596))

(assert (=> bs!1172549 m!5846348))

(assert (=> b!4848258 d!1555596))

(declare-fun d!1555598 () Bool)

(declare-fun res!2068835 () Bool)

(declare-fun e!3030596 () Bool)

(assert (=> d!1555598 (=> res!2068835 e!3030596)))

(assert (=> d!1555598 (= res!2068835 (and ((_ is Cons!55558) lt!1988909) (= (_1!32919 (h!61995 lt!1988909)) key!6445)))))

(assert (=> d!1555598 (= (containsKey!4686 lt!1988909 key!6445) e!3030596)))

(declare-fun b!4848443 () Bool)

(declare-fun e!3030597 () Bool)

(assert (=> b!4848443 (= e!3030596 e!3030597)))

(declare-fun res!2068836 () Bool)

(assert (=> b!4848443 (=> (not res!2068836) (not e!3030597))))

(assert (=> b!4848443 (= res!2068836 ((_ is Cons!55558) lt!1988909))))

(declare-fun b!4848444 () Bool)

(assert (=> b!4848444 (= e!3030597 (containsKey!4686 (t!363178 lt!1988909) key!6445))))

(assert (= (and d!1555598 (not res!2068835)) b!4848443))

(assert (= (and b!4848443 res!2068836) b!4848444))

(assert (=> b!4848444 m!5846494))

(assert (=> b!4848259 d!1555598))

(declare-fun d!1555600 () Bool)

(assert (=> d!1555600 (isDefined!10765 (getValueByKey!2730 (toList!7860 lm!2646) lt!1988910))))

(declare-fun lt!1988988 () Unit!145692)

(assert (=> d!1555600 (= lt!1988988 (choose!35461 (toList!7860 lm!2646) lt!1988910))))

(declare-fun e!3030598 () Bool)

(assert (=> d!1555600 e!3030598))

(declare-fun res!2068837 () Bool)

(assert (=> d!1555600 (=> (not res!2068837) (not e!3030598))))

(assert (=> d!1555600 (= res!2068837 (isStrictlySorted!1079 (toList!7860 lm!2646)))))

(assert (=> d!1555600 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2502 (toList!7860 lm!2646) lt!1988910) lt!1988988)))

(declare-fun b!4848445 () Bool)

(assert (=> b!4848445 (= e!3030598 (containsKey!4684 (toList!7860 lm!2646) lt!1988910))))

(assert (= (and d!1555600 res!2068837) b!4848445))

(assert (=> d!1555600 m!5846294))

(assert (=> d!1555600 m!5846294))

(assert (=> d!1555600 m!5846296))

(declare-fun m!5846518 () Bool)

(assert (=> d!1555600 m!5846518))

(assert (=> d!1555600 m!5846304))

(assert (=> b!4848445 m!5846290))

(assert (=> b!4848196 d!1555600))

(declare-fun d!1555602 () Bool)

(assert (=> d!1555602 (= (isDefined!10765 (getValueByKey!2730 (toList!7860 lm!2646) lt!1988910)) (not (isEmpty!29734 (getValueByKey!2730 (toList!7860 lm!2646) lt!1988910))))))

(declare-fun bs!1172550 () Bool)

(assert (= bs!1172550 d!1555602))

(assert (=> bs!1172550 m!5846294))

(declare-fun m!5846520 () Bool)

(assert (=> bs!1172550 m!5846520))

(assert (=> b!4848196 d!1555602))

(assert (=> b!4848196 d!1555546))

(assert (=> b!4848198 d!1555602))

(assert (=> b!4848198 d!1555546))

(declare-fun d!1555604 () Bool)

(declare-fun res!2068838 () Bool)

(declare-fun e!3030599 () Bool)

(assert (=> d!1555604 (=> res!2068838 e!3030599)))

(assert (=> d!1555604 (= res!2068838 ((_ is Nil!55559) (t!363179 (toList!7860 lm!2646))))))

(assert (=> d!1555604 (= (forall!12953 (t!363179 (toList!7860 lm!2646)) lambda!242552) e!3030599)))

(declare-fun b!4848446 () Bool)

(declare-fun e!3030600 () Bool)

(assert (=> b!4848446 (= e!3030599 e!3030600)))

(declare-fun res!2068839 () Bool)

(assert (=> b!4848446 (=> (not res!2068839) (not e!3030600))))

(assert (=> b!4848446 (= res!2068839 (dynLambda!22356 lambda!242552 (h!61996 (t!363179 (toList!7860 lm!2646)))))))

(declare-fun b!4848447 () Bool)

(assert (=> b!4848447 (= e!3030600 (forall!12953 (t!363179 (t!363179 (toList!7860 lm!2646))) lambda!242552))))

(assert (= (and d!1555604 (not res!2068838)) b!4848446))

(assert (= (and b!4848446 res!2068839) b!4848447))

(declare-fun b_lambda!192563 () Bool)

(assert (=> (not b_lambda!192563) (not b!4848446)))

(declare-fun m!5846522 () Bool)

(assert (=> b!4848446 m!5846522))

(declare-fun m!5846524 () Bool)

(assert (=> b!4848447 m!5846524))

(assert (=> b!4848220 d!1555604))

(declare-fun d!1555606 () Bool)

(declare-fun res!2068840 () Bool)

(declare-fun e!3030601 () Bool)

(assert (=> d!1555606 (=> res!2068840 e!3030601)))

(assert (=> d!1555606 (= res!2068840 (not ((_ is Cons!55558) (_2!32920 lt!1988911))))))

(assert (=> d!1555606 (= (noDuplicateKeys!2590 (_2!32920 lt!1988911)) e!3030601)))

(declare-fun b!4848448 () Bool)

(declare-fun e!3030602 () Bool)

(assert (=> b!4848448 (= e!3030601 e!3030602)))

(declare-fun res!2068841 () Bool)

(assert (=> b!4848448 (=> (not res!2068841) (not e!3030602))))

(assert (=> b!4848448 (= res!2068841 (not (containsKey!4686 (t!363178 (_2!32920 lt!1988911)) (_1!32919 (h!61995 (_2!32920 lt!1988911))))))))

(declare-fun b!4848449 () Bool)

(assert (=> b!4848449 (= e!3030602 (noDuplicateKeys!2590 (t!363178 (_2!32920 lt!1988911))))))

(assert (= (and d!1555606 (not res!2068840)) b!4848448))

(assert (= (and b!4848448 res!2068841) b!4848449))

(declare-fun m!5846526 () Bool)

(assert (=> b!4848448 m!5846526))

(declare-fun m!5846528 () Bool)

(assert (=> b!4848449 m!5846528))

(assert (=> bs!1172536 d!1555606))

(declare-fun d!1555608 () Bool)

(assert (=> d!1555608 (= (isEmpty!29732 lt!1988955) (not ((_ is Some!13670) lt!1988955)))))

(assert (=> d!1555472 d!1555608))

(declare-fun d!1555610 () Bool)

(declare-fun res!2068842 () Bool)

(declare-fun e!3030603 () Bool)

(assert (=> d!1555610 (=> res!2068842 e!3030603)))

(assert (=> d!1555610 (= res!2068842 (not ((_ is Cons!55558) lt!1988909)))))

(assert (=> d!1555610 (= (noDuplicateKeys!2590 lt!1988909) e!3030603)))

(declare-fun b!4848450 () Bool)

(declare-fun e!3030604 () Bool)

(assert (=> b!4848450 (= e!3030603 e!3030604)))

(declare-fun res!2068843 () Bool)

(assert (=> b!4848450 (=> (not res!2068843) (not e!3030604))))

(assert (=> b!4848450 (= res!2068843 (not (containsKey!4686 (t!363178 lt!1988909) (_1!32919 (h!61995 lt!1988909)))))))

(declare-fun b!4848451 () Bool)

(assert (=> b!4848451 (= e!3030604 (noDuplicateKeys!2590 (t!363178 lt!1988909)))))

(assert (= (and d!1555610 (not res!2068842)) b!4848450))

(assert (= (and b!4848450 res!2068843) b!4848451))

(declare-fun m!5846530 () Bool)

(assert (=> b!4848450 m!5846530))

(assert (=> b!4848451 m!5846498))

(assert (=> d!1555472 d!1555610))

(declare-fun d!1555612 () Bool)

(assert (=> d!1555612 (= (isEmpty!29732 (getPair!1090 lt!1988909 key!6445)) (not ((_ is Some!13670) (getPair!1090 lt!1988909 key!6445))))))

(assert (=> d!1555470 d!1555612))

(declare-fun tp_is_empty!35191 () Bool)

(declare-fun e!3030607 () Bool)

(declare-fun b!4848456 () Bool)

(declare-fun tp!1364666 () Bool)

(assert (=> b!4848456 (= e!3030607 (and tp_is_empty!35187 tp_is_empty!35191 tp!1364666))))

(assert (=> b!4848287 (= tp!1364657 e!3030607)))

(assert (= (and b!4848287 ((_ is Cons!55558) (_2!32920 (h!61996 (toList!7860 lm!2646))))) b!4848456))

(declare-fun b!4848457 () Bool)

(declare-fun e!3030608 () Bool)

(declare-fun tp!1364667 () Bool)

(declare-fun tp!1364668 () Bool)

(assert (=> b!4848457 (= e!3030608 (and tp!1364667 tp!1364668))))

(assert (=> b!4848287 (= tp!1364658 e!3030608)))

(assert (= (and b!4848287 ((_ is Cons!55559) (t!363179 (toList!7860 lm!2646)))) b!4848457))

(declare-fun b_lambda!192565 () Bool)

(assert (= b_lambda!192561 (or start!505316 b_lambda!192565)))

(assert (=> d!1555582 d!1555496))

(declare-fun b_lambda!192567 () Bool)

(assert (= b_lambda!192551 (or d!1555464 b_lambda!192567)))

(declare-fun bs!1172551 () Bool)

(declare-fun d!1555614 () Bool)

(assert (= bs!1172551 (and d!1555614 d!1555464)))

(declare-fun allKeysSameHash!2033 (List!55682 (_ BitVec 64) Hashable!7500) Bool)

(assert (=> bs!1172551 (= (dynLambda!22356 lambda!242558 (h!61996 (toList!7860 lm!2646))) (allKeysSameHash!2033 (_2!32920 (h!61996 (toList!7860 lm!2646))) (_1!32920 (h!61996 (toList!7860 lm!2646))) hashF!1641))))

(declare-fun m!5846532 () Bool)

(assert (=> bs!1172551 m!5846532))

(assert (=> b!4848346 d!1555614))

(declare-fun b_lambda!192569 () Bool)

(assert (= b_lambda!192563 (or start!505316 b_lambda!192569)))

(declare-fun bs!1172552 () Bool)

(declare-fun d!1555616 () Bool)

(assert (= bs!1172552 (and d!1555616 start!505316)))

(assert (=> bs!1172552 (= (dynLambda!22356 lambda!242552 (h!61996 (t!363179 (toList!7860 lm!2646)))) (noDuplicateKeys!2590 (_2!32920 (h!61996 (t!363179 (toList!7860 lm!2646))))))))

(declare-fun m!5846534 () Bool)

(assert (=> bs!1172552 m!5846534))

(assert (=> b!4848446 d!1555616))

(check-sat (not b!4848372) (not b!4848389) (not d!1555592) (not b!4848412) (not d!1555580) (not bs!1172551) (not b!4848410) (not b!4848437) (not b_lambda!192567) (not b!4848385) (not b_lambda!192565) (not b!4848450) (not b!4848347) (not b!4848447) (not b!4848451) (not d!1555596) (not b!4848417) tp_is_empty!35191 (not b!4848449) (not b!4848413) (not d!1555576) (not b!4848345) (not d!1555560) tp_is_empty!35187 (not b!4848418) (not b_lambda!192569) (not b!4848414) (not b!4848444) (not d!1555584) (not d!1555590) (not b!4848457) (not b!4848431) (not b!4848375) (not b!4848448) (not b!4848445) (not d!1555570) (not b!4848407) (not d!1555578) (not b!4848456) (not d!1555600) (not b!4848384) (not bs!1172552) (not b!4848434) (not b_lambda!192543) (not d!1555602) (not b!4848425) (not b_lambda!192545))
(check-sat)
