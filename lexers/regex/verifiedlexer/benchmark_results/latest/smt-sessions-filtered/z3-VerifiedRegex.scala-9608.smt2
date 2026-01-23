; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!505084 () Bool)

(assert start!505084)

(declare-fun b!4847357 () Bool)

(declare-fun e!3029809 () Bool)

(declare-fun tp!1364570 () Bool)

(assert (=> b!4847357 (= e!3029809 tp!1364570)))

(declare-fun b!4847358 () Bool)

(declare-fun e!3029807 () Bool)

(declare-fun e!3029808 () Bool)

(assert (=> b!4847358 (= e!3029807 (not e!3029808))))

(declare-fun res!2068133 () Bool)

(assert (=> b!4847358 (=> res!2068133 e!3029808)))

(declare-datatypes ((K!17329 0))(
  ( (K!17330 (val!22169 Int)) )
))
(declare-datatypes ((V!17575 0))(
  ( (V!17576 (val!22170 Int)) )
))
(declare-datatypes ((tuple2!59210 0))(
  ( (tuple2!59211 (_1!32899 K!17329) (_2!32899 V!17575)) )
))
(declare-datatypes ((List!55662 0))(
  ( (Nil!55538) (Cons!55538 (h!61975 tuple2!59210) (t!363158 List!55662)) )
))
(declare-fun lt!1988577 () List!55662)

(declare-fun key!6445 () K!17329)

(declare-datatypes ((Option!13655 0))(
  ( (None!13654) (Some!13654 (v!49410 tuple2!59210)) )
))
(declare-fun isDefined!10747 (Option!13655) Bool)

(declare-fun getPair!1080 (List!55662 K!17329) Option!13655)

(assert (=> b!4847358 (= res!2068133 (not (isDefined!10747 (getPair!1080 lt!1988577 key!6445))))))

(declare-datatypes ((tuple2!59212 0))(
  ( (tuple2!59213 (_1!32900 (_ BitVec 64)) (_2!32900 List!55662)) )
))
(declare-fun lt!1988580 () tuple2!59212)

(declare-datatypes ((Unit!145666 0))(
  ( (Unit!145667) )
))
(declare-fun lt!1988576 () Unit!145666)

(declare-datatypes ((List!55663 0))(
  ( (Nil!55539) (Cons!55539 (h!61976 tuple2!59212) (t!363159 List!55663)) )
))
(declare-datatypes ((ListLongMap!6443 0))(
  ( (ListLongMap!6444 (toList!7850 List!55663)) )
))
(declare-fun lm!2646 () ListLongMap!6443)

(declare-fun lambda!242476 () Int)

(declare-fun forallContained!4531 (List!55663 Int tuple2!59212) Unit!145666)

(assert (=> b!4847358 (= lt!1988576 (forallContained!4531 (toList!7850 lm!2646) lambda!242476 lt!1988580))))

(declare-fun contains!19187 (List!55663 tuple2!59212) Bool)

(assert (=> b!4847358 (contains!19187 (toList!7850 lm!2646) lt!1988580)))

(declare-fun lt!1988578 () (_ BitVec 64))

(assert (=> b!4847358 (= lt!1988580 (tuple2!59213 lt!1988578 lt!1988577))))

(declare-fun lt!1988579 () Unit!145666)

(declare-fun lemmaGetValueImpliesTupleContained!757 (ListLongMap!6443 (_ BitVec 64) List!55662) Unit!145666)

(assert (=> b!4847358 (= lt!1988579 (lemmaGetValueImpliesTupleContained!757 lm!2646 lt!1988578 lt!1988577))))

(declare-fun apply!13433 (ListLongMap!6443 (_ BitVec 64)) List!55662)

(assert (=> b!4847358 (= lt!1988577 (apply!13433 lm!2646 lt!1988578))))

(declare-fun b!4847359 () Bool)

(declare-fun res!2068136 () Bool)

(assert (=> b!4847359 (=> res!2068136 e!3029808)))

(get-info :version)

(assert (=> b!4847359 (= res!2068136 (or (not ((_ is Cons!55539) (toList!7850 lm!2646))) (not (= (_1!32900 (h!61976 (toList!7850 lm!2646))) lt!1988578))))))

(declare-fun b!4847360 () Bool)

(declare-fun noDuplicateKeys!2584 (List!55662) Bool)

(assert (=> b!4847360 (= e!3029808 (noDuplicateKeys!2584 (_2!32900 (h!61976 (toList!7850 lm!2646)))))))

(declare-fun b!4847361 () Bool)

(declare-fun res!2068137 () Bool)

(declare-fun e!3029810 () Bool)

(assert (=> b!4847361 (=> (not res!2068137) (not e!3029810))))

(declare-datatypes ((Hashable!7490 0))(
  ( (HashableExt!7489 (__x!33765 Int)) )
))
(declare-fun hashF!1641 () Hashable!7490)

(declare-fun allKeysSameHashInMap!2806 (ListLongMap!6443 Hashable!7490) Bool)

(assert (=> b!4847361 (= res!2068137 (allKeysSameHashInMap!2806 lm!2646 hashF!1641))))

(declare-fun b!4847356 () Bool)

(assert (=> b!4847356 (= e!3029810 e!3029807)))

(declare-fun res!2068135 () Bool)

(assert (=> b!4847356 (=> (not res!2068135) (not e!3029807))))

(declare-fun contains!19188 (ListLongMap!6443 (_ BitVec 64)) Bool)

(assert (=> b!4847356 (= res!2068135 (contains!19188 lm!2646 lt!1988578))))

(declare-fun hash!5572 (Hashable!7490 K!17329) (_ BitVec 64))

(assert (=> b!4847356 (= lt!1988578 (hash!5572 hashF!1641 key!6445))))

(declare-fun res!2068134 () Bool)

(assert (=> start!505084 (=> (not res!2068134) (not e!3029810))))

(declare-fun forall!12943 (List!55663 Int) Bool)

(assert (=> start!505084 (= res!2068134 (forall!12943 (toList!7850 lm!2646) lambda!242476))))

(assert (=> start!505084 e!3029810))

(declare-fun inv!71215 (ListLongMap!6443) Bool)

(assert (=> start!505084 (and (inv!71215 lm!2646) e!3029809)))

(assert (=> start!505084 true))

(declare-fun tp_is_empty!35163 () Bool)

(assert (=> start!505084 tp_is_empty!35163))

(assert (= (and start!505084 res!2068134) b!4847361))

(assert (= (and b!4847361 res!2068137) b!4847356))

(assert (= (and b!4847356 res!2068135) b!4847358))

(assert (= (and b!4847358 (not res!2068133)) b!4847359))

(assert (= (and b!4847359 (not res!2068136)) b!4847360))

(assert (= start!505084 b!4847357))

(declare-fun m!5845408 () Bool)

(assert (=> b!4847358 m!5845408))

(declare-fun m!5845410 () Bool)

(assert (=> b!4847358 m!5845410))

(declare-fun m!5845412 () Bool)

(assert (=> b!4847358 m!5845412))

(declare-fun m!5845414 () Bool)

(assert (=> b!4847358 m!5845414))

(declare-fun m!5845416 () Bool)

(assert (=> b!4847358 m!5845416))

(assert (=> b!4847358 m!5845408))

(declare-fun m!5845418 () Bool)

(assert (=> b!4847358 m!5845418))

(declare-fun m!5845420 () Bool)

(assert (=> start!505084 m!5845420))

(declare-fun m!5845422 () Bool)

(assert (=> start!505084 m!5845422))

(declare-fun m!5845424 () Bool)

(assert (=> b!4847360 m!5845424))

(declare-fun m!5845426 () Bool)

(assert (=> b!4847361 m!5845426))

(declare-fun m!5845428 () Bool)

(assert (=> b!4847356 m!5845428))

(declare-fun m!5845430 () Bool)

(assert (=> b!4847356 m!5845430))

(check-sat (not b!4847356) (not b!4847357) (not b!4847360) (not b!4847361) tp_is_empty!35163 (not start!505084) (not b!4847358))
(check-sat)
(get-model)

(declare-fun d!1555105 () Bool)

(declare-fun res!2068142 () Bool)

(declare-fun e!3029815 () Bool)

(assert (=> d!1555105 (=> res!2068142 e!3029815)))

(assert (=> d!1555105 (= res!2068142 (not ((_ is Cons!55538) (_2!32900 (h!61976 (toList!7850 lm!2646))))))))

(assert (=> d!1555105 (= (noDuplicateKeys!2584 (_2!32900 (h!61976 (toList!7850 lm!2646)))) e!3029815)))

(declare-fun b!4847366 () Bool)

(declare-fun e!3029816 () Bool)

(assert (=> b!4847366 (= e!3029815 e!3029816)))

(declare-fun res!2068143 () Bool)

(assert (=> b!4847366 (=> (not res!2068143) (not e!3029816))))

(declare-fun containsKey!4673 (List!55662 K!17329) Bool)

(assert (=> b!4847366 (= res!2068143 (not (containsKey!4673 (t!363158 (_2!32900 (h!61976 (toList!7850 lm!2646)))) (_1!32899 (h!61975 (_2!32900 (h!61976 (toList!7850 lm!2646))))))))))

(declare-fun b!4847367 () Bool)

(assert (=> b!4847367 (= e!3029816 (noDuplicateKeys!2584 (t!363158 (_2!32900 (h!61976 (toList!7850 lm!2646))))))))

(assert (= (and d!1555105 (not res!2068142)) b!4847366))

(assert (= (and b!4847366 res!2068143) b!4847367))

(declare-fun m!5845432 () Bool)

(assert (=> b!4847366 m!5845432))

(declare-fun m!5845434 () Bool)

(assert (=> b!4847367 m!5845434))

(assert (=> b!4847360 d!1555105))

(declare-fun bs!1172433 () Bool)

(declare-fun d!1555107 () Bool)

(assert (= bs!1172433 (and d!1555107 start!505084)))

(declare-fun lambda!242479 () Int)

(assert (=> bs!1172433 (not (= lambda!242479 lambda!242476))))

(assert (=> d!1555107 true))

(assert (=> d!1555107 (= (allKeysSameHashInMap!2806 lm!2646 hashF!1641) (forall!12943 (toList!7850 lm!2646) lambda!242479))))

(declare-fun bs!1172434 () Bool)

(assert (= bs!1172434 d!1555107))

(declare-fun m!5845436 () Bool)

(assert (=> bs!1172434 m!5845436))

(assert (=> b!4847361 d!1555107))

(declare-fun d!1555109 () Bool)

(declare-fun e!3029821 () Bool)

(assert (=> d!1555109 e!3029821))

(declare-fun res!2068146 () Bool)

(assert (=> d!1555109 (=> res!2068146 e!3029821)))

(declare-fun lt!1988591 () Bool)

(assert (=> d!1555109 (= res!2068146 (not lt!1988591))))

(declare-fun lt!1988592 () Bool)

(assert (=> d!1555109 (= lt!1988591 lt!1988592)))

(declare-fun lt!1988590 () Unit!145666)

(declare-fun e!3029822 () Unit!145666)

(assert (=> d!1555109 (= lt!1988590 e!3029822)))

(declare-fun c!825085 () Bool)

(assert (=> d!1555109 (= c!825085 lt!1988592)))

(declare-fun containsKey!4674 (List!55663 (_ BitVec 64)) Bool)

(assert (=> d!1555109 (= lt!1988592 (containsKey!4674 (toList!7850 lm!2646) lt!1988578))))

(assert (=> d!1555109 (= (contains!19188 lm!2646 lt!1988578) lt!1988591)))

(declare-fun b!4847376 () Bool)

(declare-fun lt!1988589 () Unit!145666)

(assert (=> b!4847376 (= e!3029822 lt!1988589)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2496 (List!55663 (_ BitVec 64)) Unit!145666)

(assert (=> b!4847376 (= lt!1988589 (lemmaContainsKeyImpliesGetValueByKeyDefined!2496 (toList!7850 lm!2646) lt!1988578))))

(declare-datatypes ((Option!13657 0))(
  ( (None!13656) (Some!13656 (v!49414 List!55662)) )
))
(declare-fun isDefined!10749 (Option!13657) Bool)

(declare-fun getValueByKey!2724 (List!55663 (_ BitVec 64)) Option!13657)

(assert (=> b!4847376 (isDefined!10749 (getValueByKey!2724 (toList!7850 lm!2646) lt!1988578))))

(declare-fun b!4847377 () Bool)

(declare-fun Unit!145669 () Unit!145666)

(assert (=> b!4847377 (= e!3029822 Unit!145669)))

(declare-fun b!4847378 () Bool)

(assert (=> b!4847378 (= e!3029821 (isDefined!10749 (getValueByKey!2724 (toList!7850 lm!2646) lt!1988578)))))

(assert (= (and d!1555109 c!825085) b!4847376))

(assert (= (and d!1555109 (not c!825085)) b!4847377))

(assert (= (and d!1555109 (not res!2068146)) b!4847378))

(declare-fun m!5845438 () Bool)

(assert (=> d!1555109 m!5845438))

(declare-fun m!5845440 () Bool)

(assert (=> b!4847376 m!5845440))

(declare-fun m!5845442 () Bool)

(assert (=> b!4847376 m!5845442))

(assert (=> b!4847376 m!5845442))

(declare-fun m!5845444 () Bool)

(assert (=> b!4847376 m!5845444))

(assert (=> b!4847378 m!5845442))

(assert (=> b!4847378 m!5845442))

(assert (=> b!4847378 m!5845444))

(assert (=> b!4847356 d!1555109))

(declare-fun d!1555113 () Bool)

(declare-fun hash!5574 (Hashable!7490 K!17329) (_ BitVec 64))

(assert (=> d!1555113 (= (hash!5572 hashF!1641 key!6445) (hash!5574 hashF!1641 key!6445))))

(declare-fun bs!1172435 () Bool)

(assert (= bs!1172435 d!1555113))

(declare-fun m!5845446 () Bool)

(assert (=> bs!1172435 m!5845446))

(assert (=> b!4847356 d!1555113))

(declare-fun d!1555115 () Bool)

(declare-fun dynLambda!22350 (Int tuple2!59212) Bool)

(assert (=> d!1555115 (dynLambda!22350 lambda!242476 lt!1988580)))

(declare-fun lt!1988607 () Unit!145666)

(declare-fun choose!35437 (List!55663 Int tuple2!59212) Unit!145666)

(assert (=> d!1555115 (= lt!1988607 (choose!35437 (toList!7850 lm!2646) lambda!242476 lt!1988580))))

(declare-fun e!3029831 () Bool)

(assert (=> d!1555115 e!3029831))

(declare-fun res!2068152 () Bool)

(assert (=> d!1555115 (=> (not res!2068152) (not e!3029831))))

(assert (=> d!1555115 (= res!2068152 (forall!12943 (toList!7850 lm!2646) lambda!242476))))

(assert (=> d!1555115 (= (forallContained!4531 (toList!7850 lm!2646) lambda!242476 lt!1988580) lt!1988607)))

(declare-fun b!4847390 () Bool)

(assert (=> b!4847390 (= e!3029831 (contains!19187 (toList!7850 lm!2646) lt!1988580))))

(assert (= (and d!1555115 res!2068152) b!4847390))

(declare-fun b_lambda!192459 () Bool)

(assert (=> (not b_lambda!192459) (not d!1555115)))

(declare-fun m!5845458 () Bool)

(assert (=> d!1555115 m!5845458))

(declare-fun m!5845460 () Bool)

(assert (=> d!1555115 m!5845460))

(assert (=> d!1555115 m!5845420))

(assert (=> b!4847390 m!5845414))

(assert (=> b!4847358 d!1555115))

(declare-fun b!4847430 () Bool)

(declare-fun e!3029867 () Option!13655)

(declare-fun e!3029866 () Option!13655)

(assert (=> b!4847430 (= e!3029867 e!3029866)))

(declare-fun c!825094 () Bool)

(assert (=> b!4847430 (= c!825094 ((_ is Cons!55538) lt!1988577))))

(declare-fun b!4847431 () Bool)

(declare-fun e!3029865 () Bool)

(assert (=> b!4847431 (= e!3029865 (not (containsKey!4673 lt!1988577 key!6445)))))

(declare-fun b!4847432 () Bool)

(assert (=> b!4847432 (= e!3029866 None!13654)))

(declare-fun b!4847433 () Bool)

(declare-fun e!3029864 () Bool)

(declare-fun lt!1988616 () Option!13655)

(declare-fun contains!19190 (List!55662 tuple2!59210) Bool)

(declare-fun get!19018 (Option!13655) tuple2!59210)

(assert (=> b!4847433 (= e!3029864 (contains!19190 lt!1988577 (get!19018 lt!1988616)))))

(declare-fun b!4847434 () Bool)

(assert (=> b!4847434 (= e!3029866 (getPair!1080 (t!363158 lt!1988577) key!6445))))

(declare-fun d!1555121 () Bool)

(declare-fun e!3029863 () Bool)

(assert (=> d!1555121 e!3029863))

(declare-fun res!2068183 () Bool)

(assert (=> d!1555121 (=> res!2068183 e!3029863)))

(assert (=> d!1555121 (= res!2068183 e!3029865)))

(declare-fun res!2068184 () Bool)

(assert (=> d!1555121 (=> (not res!2068184) (not e!3029865))))

(declare-fun isEmpty!29724 (Option!13655) Bool)

(assert (=> d!1555121 (= res!2068184 (isEmpty!29724 lt!1988616))))

(assert (=> d!1555121 (= lt!1988616 e!3029867)))

(declare-fun c!825093 () Bool)

(assert (=> d!1555121 (= c!825093 (and ((_ is Cons!55538) lt!1988577) (= (_1!32899 (h!61975 lt!1988577)) key!6445)))))

(assert (=> d!1555121 (noDuplicateKeys!2584 lt!1988577)))

(assert (=> d!1555121 (= (getPair!1080 lt!1988577 key!6445) lt!1988616)))

(declare-fun b!4847435 () Bool)

(assert (=> b!4847435 (= e!3029867 (Some!13654 (h!61975 lt!1988577)))))

(declare-fun b!4847436 () Bool)

(declare-fun res!2068182 () Bool)

(assert (=> b!4847436 (=> (not res!2068182) (not e!3029864))))

(assert (=> b!4847436 (= res!2068182 (= (_1!32899 (get!19018 lt!1988616)) key!6445))))

(declare-fun b!4847437 () Bool)

(assert (=> b!4847437 (= e!3029863 e!3029864)))

(declare-fun res!2068185 () Bool)

(assert (=> b!4847437 (=> (not res!2068185) (not e!3029864))))

(assert (=> b!4847437 (= res!2068185 (isDefined!10747 lt!1988616))))

(assert (= (and d!1555121 c!825093) b!4847435))

(assert (= (and d!1555121 (not c!825093)) b!4847430))

(assert (= (and b!4847430 c!825094) b!4847434))

(assert (= (and b!4847430 (not c!825094)) b!4847432))

(assert (= (and d!1555121 res!2068184) b!4847431))

(assert (= (and d!1555121 (not res!2068183)) b!4847437))

(assert (= (and b!4847437 res!2068185) b!4847436))

(assert (= (and b!4847436 res!2068182) b!4847433))

(declare-fun m!5845484 () Bool)

(assert (=> b!4847434 m!5845484))

(declare-fun m!5845486 () Bool)

(assert (=> b!4847433 m!5845486))

(assert (=> b!4847433 m!5845486))

(declare-fun m!5845488 () Bool)

(assert (=> b!4847433 m!5845488))

(declare-fun m!5845490 () Bool)

(assert (=> d!1555121 m!5845490))

(declare-fun m!5845492 () Bool)

(assert (=> d!1555121 m!5845492))

(declare-fun m!5845494 () Bool)

(assert (=> b!4847437 m!5845494))

(declare-fun m!5845496 () Bool)

(assert (=> b!4847431 m!5845496))

(assert (=> b!4847436 m!5845486))

(assert (=> b!4847358 d!1555121))

(declare-fun d!1555135 () Bool)

(declare-fun get!19019 (Option!13657) List!55662)

(assert (=> d!1555135 (= (apply!13433 lm!2646 lt!1988578) (get!19019 (getValueByKey!2724 (toList!7850 lm!2646) lt!1988578)))))

(declare-fun bs!1172440 () Bool)

(assert (= bs!1172440 d!1555135))

(assert (=> bs!1172440 m!5845442))

(assert (=> bs!1172440 m!5845442))

(declare-fun m!5845498 () Bool)

(assert (=> bs!1172440 m!5845498))

(assert (=> b!4847358 d!1555135))

(declare-fun d!1555137 () Bool)

(assert (=> d!1555137 (= (isDefined!10747 (getPair!1080 lt!1988577 key!6445)) (not (isEmpty!29724 (getPair!1080 lt!1988577 key!6445))))))

(declare-fun bs!1172441 () Bool)

(assert (= bs!1172441 d!1555137))

(assert (=> bs!1172441 m!5845408))

(declare-fun m!5845500 () Bool)

(assert (=> bs!1172441 m!5845500))

(assert (=> b!4847358 d!1555137))

(declare-fun d!1555139 () Bool)

(declare-fun lt!1988625 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9873 (List!55663) (InoxSet tuple2!59212))

(assert (=> d!1555139 (= lt!1988625 (select (content!9873 (toList!7850 lm!2646)) lt!1988580))))

(declare-fun e!3029890 () Bool)

(assert (=> d!1555139 (= lt!1988625 e!3029890)))

(declare-fun res!2068203 () Bool)

(assert (=> d!1555139 (=> (not res!2068203) (not e!3029890))))

(assert (=> d!1555139 (= res!2068203 ((_ is Cons!55539) (toList!7850 lm!2646)))))

(assert (=> d!1555139 (= (contains!19187 (toList!7850 lm!2646) lt!1988580) lt!1988625)))

(declare-fun b!4847471 () Bool)

(declare-fun e!3029889 () Bool)

(assert (=> b!4847471 (= e!3029890 e!3029889)))

(declare-fun res!2068202 () Bool)

(assert (=> b!4847471 (=> res!2068202 e!3029889)))

(assert (=> b!4847471 (= res!2068202 (= (h!61976 (toList!7850 lm!2646)) lt!1988580))))

(declare-fun b!4847472 () Bool)

(assert (=> b!4847472 (= e!3029889 (contains!19187 (t!363159 (toList!7850 lm!2646)) lt!1988580))))

(assert (= (and d!1555139 res!2068203) b!4847471))

(assert (= (and b!4847471 (not res!2068202)) b!4847472))

(declare-fun m!5845524 () Bool)

(assert (=> d!1555139 m!5845524))

(declare-fun m!5845526 () Bool)

(assert (=> d!1555139 m!5845526))

(declare-fun m!5845528 () Bool)

(assert (=> b!4847472 m!5845528))

(assert (=> b!4847358 d!1555139))

(declare-fun d!1555151 () Bool)

(assert (=> d!1555151 (contains!19187 (toList!7850 lm!2646) (tuple2!59213 lt!1988578 lt!1988577))))

(declare-fun lt!1988628 () Unit!145666)

(declare-fun choose!35439 (ListLongMap!6443 (_ BitVec 64) List!55662) Unit!145666)

(assert (=> d!1555151 (= lt!1988628 (choose!35439 lm!2646 lt!1988578 lt!1988577))))

(assert (=> d!1555151 (contains!19188 lm!2646 lt!1988578)))

(assert (=> d!1555151 (= (lemmaGetValueImpliesTupleContained!757 lm!2646 lt!1988578 lt!1988577) lt!1988628)))

(declare-fun bs!1172447 () Bool)

(assert (= bs!1172447 d!1555151))

(declare-fun m!5845532 () Bool)

(assert (=> bs!1172447 m!5845532))

(declare-fun m!5845534 () Bool)

(assert (=> bs!1172447 m!5845534))

(assert (=> bs!1172447 m!5845428))

(assert (=> b!4847358 d!1555151))

(declare-fun d!1555153 () Bool)

(declare-fun res!2068208 () Bool)

(declare-fun e!3029896 () Bool)

(assert (=> d!1555153 (=> res!2068208 e!3029896)))

(assert (=> d!1555153 (= res!2068208 ((_ is Nil!55539) (toList!7850 lm!2646)))))

(assert (=> d!1555153 (= (forall!12943 (toList!7850 lm!2646) lambda!242476) e!3029896)))

(declare-fun b!4847479 () Bool)

(declare-fun e!3029897 () Bool)

(assert (=> b!4847479 (= e!3029896 e!3029897)))

(declare-fun res!2068209 () Bool)

(assert (=> b!4847479 (=> (not res!2068209) (not e!3029897))))

(assert (=> b!4847479 (= res!2068209 (dynLambda!22350 lambda!242476 (h!61976 (toList!7850 lm!2646))))))

(declare-fun b!4847480 () Bool)

(assert (=> b!4847480 (= e!3029897 (forall!12943 (t!363159 (toList!7850 lm!2646)) lambda!242476))))

(assert (= (and d!1555153 (not res!2068208)) b!4847479))

(assert (= (and b!4847479 res!2068209) b!4847480))

(declare-fun b_lambda!192469 () Bool)

(assert (=> (not b_lambda!192469) (not b!4847479)))

(declare-fun m!5845536 () Bool)

(assert (=> b!4847479 m!5845536))

(declare-fun m!5845538 () Bool)

(assert (=> b!4847480 m!5845538))

(assert (=> start!505084 d!1555153))

(declare-fun d!1555155 () Bool)

(declare-fun isStrictlySorted!1073 (List!55663) Bool)

(assert (=> d!1555155 (= (inv!71215 lm!2646) (isStrictlySorted!1073 (toList!7850 lm!2646)))))

(declare-fun bs!1172448 () Bool)

(assert (= bs!1172448 d!1555155))

(declare-fun m!5845540 () Bool)

(assert (=> bs!1172448 m!5845540))

(assert (=> start!505084 d!1555155))

(declare-fun b!4847485 () Bool)

(declare-fun e!3029900 () Bool)

(declare-fun tp!1364581 () Bool)

(declare-fun tp!1364582 () Bool)

(assert (=> b!4847485 (= e!3029900 (and tp!1364581 tp!1364582))))

(assert (=> b!4847357 (= tp!1364570 e!3029900)))

(assert (= (and b!4847357 ((_ is Cons!55539) (toList!7850 lm!2646))) b!4847485))

(declare-fun b_lambda!192471 () Bool)

(assert (= b_lambda!192459 (or start!505084 b_lambda!192471)))

(declare-fun bs!1172449 () Bool)

(declare-fun d!1555157 () Bool)

(assert (= bs!1172449 (and d!1555157 start!505084)))

(assert (=> bs!1172449 (= (dynLambda!22350 lambda!242476 lt!1988580) (noDuplicateKeys!2584 (_2!32900 lt!1988580)))))

(declare-fun m!5845542 () Bool)

(assert (=> bs!1172449 m!5845542))

(assert (=> d!1555115 d!1555157))

(declare-fun b_lambda!192473 () Bool)

(assert (= b_lambda!192469 (or start!505084 b_lambda!192473)))

(declare-fun bs!1172450 () Bool)

(declare-fun d!1555159 () Bool)

(assert (= bs!1172450 (and d!1555159 start!505084)))

(assert (=> bs!1172450 (= (dynLambda!22350 lambda!242476 (h!61976 (toList!7850 lm!2646))) (noDuplicateKeys!2584 (_2!32900 (h!61976 (toList!7850 lm!2646)))))))

(assert (=> bs!1172450 m!5845424))

(assert (=> b!4847479 d!1555159))

(check-sat (not b!4847436) (not b!4847431) (not b!4847378) (not b!4847480) (not d!1555107) (not d!1555109) (not d!1555121) (not d!1555115) (not b!4847437) (not b_lambda!192473) (not bs!1172450) (not d!1555135) (not b!4847434) (not b!4847367) tp_is_empty!35163 (not bs!1172449) (not b!4847390) (not b!4847376) (not b!4847366) (not b!4847485) (not d!1555137) (not b_lambda!192471) (not b!4847433) (not b!4847472) (not d!1555155) (not d!1555151) (not d!1555139) (not d!1555113))
(check-sat)
