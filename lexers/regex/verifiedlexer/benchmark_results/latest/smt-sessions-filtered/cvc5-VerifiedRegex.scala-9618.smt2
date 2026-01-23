; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!505798 () Bool)

(assert start!505798)

(declare-fun b!4849622 () Bool)

(declare-fun e!3031491 () Bool)

(declare-datatypes ((K!17377 0))(
  ( (K!17378 (val!22207 Int)) )
))
(declare-datatypes ((V!17623 0))(
  ( (V!17624 (val!22208 Int)) )
))
(declare-datatypes ((tuple2!59286 0))(
  ( (tuple2!59287 (_1!32937 K!17377) (_2!32937 V!17623)) )
))
(declare-datatypes ((List!55700 0))(
  ( (Nil!55576) (Cons!55576 (h!62013 tuple2!59286) (t!363196 List!55700)) )
))
(declare-fun lt!1989389 () List!55700)

(declare-fun key!6445 () K!17377)

(declare-datatypes ((Option!13688 0))(
  ( (None!13687) (Some!13687 (v!49467 tuple2!59286)) )
))
(declare-fun isDefined!10780 (Option!13688) Bool)

(declare-fun getPair!1099 (List!55700 K!17377) Option!13688)

(assert (=> b!4849622 (= e!3031491 (isDefined!10780 (getPair!1099 lt!1989389 key!6445)))))

(declare-datatypes ((Unit!145722 0))(
  ( (Unit!145723) )
))
(declare-fun lt!1989397 () Unit!145722)

(declare-fun lambda!242663 () Int)

(declare-datatypes ((tuple2!59288 0))(
  ( (tuple2!59289 (_1!32938 (_ BitVec 64)) (_2!32938 List!55700)) )
))
(declare-fun lt!1989396 () tuple2!59288)

(declare-datatypes ((List!55701 0))(
  ( (Nil!55577) (Cons!55577 (h!62014 tuple2!59288) (t!363197 List!55701)) )
))
(declare-datatypes ((ListLongMap!6481 0))(
  ( (ListLongMap!6482 (toList!7869 List!55701)) )
))
(declare-fun lt!1989387 () ListLongMap!6481)

(declare-fun forallContained!4550 (List!55701 Int tuple2!59288) Unit!145722)

(assert (=> b!4849622 (= lt!1989397 (forallContained!4550 (toList!7869 lt!1989387) lambda!242663 lt!1989396))))

(declare-fun contains!19239 (List!55701 tuple2!59288) Bool)

(assert (=> b!4849622 (contains!19239 (toList!7869 lt!1989387) lt!1989396)))

(declare-fun lt!1989394 () (_ BitVec 64))

(assert (=> b!4849622 (= lt!1989396 (tuple2!59289 lt!1989394 lt!1989389))))

(declare-fun lt!1989390 () Unit!145722)

(declare-fun lemmaGetValueImpliesTupleContained!776 (ListLongMap!6481 (_ BitVec 64) List!55700) Unit!145722)

(assert (=> b!4849622 (= lt!1989390 (lemmaGetValueImpliesTupleContained!776 lt!1989387 lt!1989394 lt!1989389))))

(declare-fun apply!13452 (ListLongMap!6481 (_ BitVec 64)) List!55700)

(assert (=> b!4849622 (= lt!1989389 (apply!13452 lt!1989387 lt!1989394))))

(declare-fun b!4849623 () Bool)

(declare-fun e!3031492 () Bool)

(declare-fun e!3031490 () Bool)

(assert (=> b!4849623 (= e!3031492 e!3031490)))

(declare-fun res!2069624 () Bool)

(assert (=> b!4849623 (=> res!2069624 e!3031490)))

(declare-fun lm!2646 () ListLongMap!6481)

(declare-fun containsKey!4699 (List!55700 K!17377) Bool)

(assert (=> b!4849623 (= res!2069624 (containsKey!4699 (_2!32938 (h!62014 (toList!7869 lm!2646))) key!6445))))

(assert (=> b!4849623 (not (containsKey!4699 (apply!13452 lm!2646 (_1!32938 (h!62014 (toList!7869 lm!2646)))) key!6445))))

(declare-fun lt!1989395 () Unit!145722)

(declare-datatypes ((Hashable!7509 0))(
  ( (HashableExt!7508 (__x!33784 Int)) )
))
(declare-fun hashF!1641 () Hashable!7509)

(declare-fun lemmaNotSameHashThenCannotContainKey!259 (ListLongMap!6481 K!17377 (_ BitVec 64) Hashable!7509) Unit!145722)

(assert (=> b!4849623 (= lt!1989395 (lemmaNotSameHashThenCannotContainKey!259 lm!2646 key!6445 (_1!32938 (h!62014 (toList!7869 lm!2646))) hashF!1641))))

(declare-fun b!4849624 () Bool)

(declare-fun res!2069620 () Bool)

(assert (=> b!4849624 (=> res!2069620 e!3031491)))

(declare-fun contains!19240 (ListLongMap!6481 (_ BitVec 64)) Bool)

(assert (=> b!4849624 (= res!2069620 (not (contains!19240 lt!1989387 lt!1989394)))))

(declare-fun b!4849625 () Bool)

(declare-fun e!3031489 () Bool)

(assert (=> b!4849625 (= e!3031489 (not e!3031492))))

(declare-fun res!2069622 () Bool)

(assert (=> b!4849625 (=> res!2069622 e!3031492)))

(declare-fun lt!1989392 () List!55700)

(assert (=> b!4849625 (= res!2069622 (not (isDefined!10780 (getPair!1099 lt!1989392 key!6445))))))

(declare-fun lt!1989388 () Unit!145722)

(declare-fun lt!1989391 () tuple2!59288)

(assert (=> b!4849625 (= lt!1989388 (forallContained!4550 (toList!7869 lm!2646) lambda!242663 lt!1989391))))

(assert (=> b!4849625 (contains!19239 (toList!7869 lm!2646) lt!1989391)))

(assert (=> b!4849625 (= lt!1989391 (tuple2!59289 lt!1989394 lt!1989392))))

(declare-fun lt!1989393 () Unit!145722)

(assert (=> b!4849625 (= lt!1989393 (lemmaGetValueImpliesTupleContained!776 lm!2646 lt!1989394 lt!1989392))))

(assert (=> b!4849625 (= lt!1989392 (apply!13452 lm!2646 lt!1989394))))

(declare-fun b!4849626 () Bool)

(declare-fun e!3031493 () Bool)

(declare-fun tp!1364761 () Bool)

(assert (=> b!4849626 (= e!3031493 tp!1364761)))

(declare-fun b!4849627 () Bool)

(declare-fun res!2069618 () Bool)

(assert (=> b!4849627 (=> res!2069618 e!3031492)))

(assert (=> b!4849627 (= res!2069618 (or (and (is-Cons!55577 (toList!7869 lm!2646)) (= (_1!32938 (h!62014 (toList!7869 lm!2646))) lt!1989394)) (not (is-Cons!55577 (toList!7869 lm!2646))) (= lt!1989394 (_1!32938 (h!62014 (toList!7869 lm!2646))))))))

(declare-fun res!2069621 () Bool)

(declare-fun e!3031494 () Bool)

(assert (=> start!505798 (=> (not res!2069621) (not e!3031494))))

(declare-fun forall!12962 (List!55701 Int) Bool)

(assert (=> start!505798 (= res!2069621 (forall!12962 (toList!7869 lm!2646) lambda!242663))))

(assert (=> start!505798 e!3031494))

(declare-fun inv!71264 (ListLongMap!6481) Bool)

(assert (=> start!505798 (and (inv!71264 lm!2646) e!3031493)))

(assert (=> start!505798 true))

(declare-fun tp_is_empty!35221 () Bool)

(assert (=> start!505798 tp_is_empty!35221))

(declare-fun b!4849628 () Bool)

(assert (=> b!4849628 (= e!3031490 e!3031491)))

(declare-fun res!2069617 () Bool)

(assert (=> b!4849628 (=> res!2069617 e!3031491)))

(assert (=> b!4849628 (= res!2069617 (not (forall!12962 (toList!7869 lt!1989387) lambda!242663)))))

(declare-fun tail!9541 (ListLongMap!6481) ListLongMap!6481)

(assert (=> b!4849628 (= lt!1989387 (tail!9541 lm!2646))))

(declare-fun b!4849629 () Bool)

(declare-fun res!2069619 () Bool)

(assert (=> b!4849629 (=> res!2069619 e!3031491)))

(declare-fun allKeysSameHashInMap!2825 (ListLongMap!6481 Hashable!7509) Bool)

(assert (=> b!4849629 (= res!2069619 (not (allKeysSameHashInMap!2825 lt!1989387 hashF!1641)))))

(declare-fun b!4849630 () Bool)

(assert (=> b!4849630 (= e!3031494 e!3031489)))

(declare-fun res!2069616 () Bool)

(assert (=> b!4849630 (=> (not res!2069616) (not e!3031489))))

(assert (=> b!4849630 (= res!2069616 (contains!19240 lm!2646 lt!1989394))))

(declare-fun hash!5617 (Hashable!7509 K!17377) (_ BitVec 64))

(assert (=> b!4849630 (= lt!1989394 (hash!5617 hashF!1641 key!6445))))

(declare-fun b!4849631 () Bool)

(declare-fun res!2069623 () Bool)

(assert (=> b!4849631 (=> (not res!2069623) (not e!3031494))))

(assert (=> b!4849631 (= res!2069623 (allKeysSameHashInMap!2825 lm!2646 hashF!1641))))

(assert (= (and start!505798 res!2069621) b!4849631))

(assert (= (and b!4849631 res!2069623) b!4849630))

(assert (= (and b!4849630 res!2069616) b!4849625))

(assert (= (and b!4849625 (not res!2069622)) b!4849627))

(assert (= (and b!4849627 (not res!2069618)) b!4849623))

(assert (= (and b!4849623 (not res!2069624)) b!4849628))

(assert (= (and b!4849628 (not res!2069617)) b!4849629))

(assert (= (and b!4849629 (not res!2069619)) b!4849624))

(assert (= (and b!4849624 (not res!2069620)) b!4849622))

(assert (= start!505798 b!4849626))

(declare-fun m!5847828 () Bool)

(assert (=> b!4849631 m!5847828))

(declare-fun m!5847830 () Bool)

(assert (=> b!4849629 m!5847830))

(declare-fun m!5847832 () Bool)

(assert (=> b!4849628 m!5847832))

(declare-fun m!5847834 () Bool)

(assert (=> b!4849628 m!5847834))

(declare-fun m!5847836 () Bool)

(assert (=> b!4849623 m!5847836))

(declare-fun m!5847838 () Bool)

(assert (=> b!4849623 m!5847838))

(assert (=> b!4849623 m!5847838))

(declare-fun m!5847840 () Bool)

(assert (=> b!4849623 m!5847840))

(declare-fun m!5847842 () Bool)

(assert (=> b!4849623 m!5847842))

(declare-fun m!5847844 () Bool)

(assert (=> start!505798 m!5847844))

(declare-fun m!5847846 () Bool)

(assert (=> start!505798 m!5847846))

(declare-fun m!5847848 () Bool)

(assert (=> b!4849625 m!5847848))

(declare-fun m!5847850 () Bool)

(assert (=> b!4849625 m!5847850))

(declare-fun m!5847852 () Bool)

(assert (=> b!4849625 m!5847852))

(declare-fun m!5847854 () Bool)

(assert (=> b!4849625 m!5847854))

(assert (=> b!4849625 m!5847848))

(declare-fun m!5847856 () Bool)

(assert (=> b!4849625 m!5847856))

(declare-fun m!5847858 () Bool)

(assert (=> b!4849625 m!5847858))

(declare-fun m!5847860 () Bool)

(assert (=> b!4849624 m!5847860))

(declare-fun m!5847862 () Bool)

(assert (=> b!4849622 m!5847862))

(assert (=> b!4849622 m!5847862))

(declare-fun m!5847864 () Bool)

(assert (=> b!4849622 m!5847864))

(declare-fun m!5847866 () Bool)

(assert (=> b!4849622 m!5847866))

(declare-fun m!5847868 () Bool)

(assert (=> b!4849622 m!5847868))

(declare-fun m!5847870 () Bool)

(assert (=> b!4849622 m!5847870))

(declare-fun m!5847872 () Bool)

(assert (=> b!4849622 m!5847872))

(declare-fun m!5847874 () Bool)

(assert (=> b!4849630 m!5847874))

(declare-fun m!5847876 () Bool)

(assert (=> b!4849630 m!5847876))

(push 1)

(assert (not b!4849622))

(assert (not b!4849626))

(assert (not b!4849629))

(assert (not b!4849623))

(assert (not b!4849630))

(assert (not start!505798))

(assert (not b!4849628))

(assert (not b!4849631))

(assert (not b!4849624))

(assert (not b!4849625))

(assert tp_is_empty!35221)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1556351 () Bool)

(declare-fun isEmpty!29745 (Option!13688) Bool)

(assert (=> d!1556351 (= (isDefined!10780 (getPair!1099 lt!1989392 key!6445)) (not (isEmpty!29745 (getPair!1099 lt!1989392 key!6445))))))

(declare-fun bs!1172735 () Bool)

(assert (= bs!1172735 d!1556351))

(assert (=> bs!1172735 m!5847848))

(declare-fun m!5847928 () Bool)

(assert (=> bs!1172735 m!5847928))

(assert (=> b!4849625 d!1556351))

(declare-fun d!1556353 () Bool)

(assert (=> d!1556353 (contains!19239 (toList!7869 lm!2646) (tuple2!59289 lt!1989394 lt!1989392))))

(declare-fun lt!1989433 () Unit!145722)

(declare-fun choose!35487 (ListLongMap!6481 (_ BitVec 64) List!55700) Unit!145722)

(assert (=> d!1556353 (= lt!1989433 (choose!35487 lm!2646 lt!1989394 lt!1989392))))

(assert (=> d!1556353 (contains!19240 lm!2646 lt!1989394)))

(assert (=> d!1556353 (= (lemmaGetValueImpliesTupleContained!776 lm!2646 lt!1989394 lt!1989392) lt!1989433)))

(declare-fun bs!1172736 () Bool)

(assert (= bs!1172736 d!1556353))

(declare-fun m!5847930 () Bool)

(assert (=> bs!1172736 m!5847930))

(declare-fun m!5847932 () Bool)

(assert (=> bs!1172736 m!5847932))

(assert (=> bs!1172736 m!5847874))

(assert (=> b!4849625 d!1556353))

(declare-fun d!1556355 () Bool)

(declare-fun lt!1989436 () Bool)

(declare-fun content!9893 (List!55701) (Set tuple2!59288))

(assert (=> d!1556355 (= lt!1989436 (set.member lt!1989391 (content!9893 (toList!7869 lm!2646))))))

(declare-fun e!3031518 () Bool)

(assert (=> d!1556355 (= lt!1989436 e!3031518)))

(declare-fun res!2069656 () Bool)

(assert (=> d!1556355 (=> (not res!2069656) (not e!3031518))))

(assert (=> d!1556355 (= res!2069656 (is-Cons!55577 (toList!7869 lm!2646)))))

(assert (=> d!1556355 (= (contains!19239 (toList!7869 lm!2646) lt!1989391) lt!1989436)))

(declare-fun b!4849667 () Bool)

(declare-fun e!3031517 () Bool)

(assert (=> b!4849667 (= e!3031518 e!3031517)))

(declare-fun res!2069657 () Bool)

(assert (=> b!4849667 (=> res!2069657 e!3031517)))

(assert (=> b!4849667 (= res!2069657 (= (h!62014 (toList!7869 lm!2646)) lt!1989391))))

(declare-fun b!4849668 () Bool)

(assert (=> b!4849668 (= e!3031517 (contains!19239 (t!363197 (toList!7869 lm!2646)) lt!1989391))))

(assert (= (and d!1556355 res!2069656) b!4849667))

(assert (= (and b!4849667 (not res!2069657)) b!4849668))

(declare-fun m!5847934 () Bool)

(assert (=> d!1556355 m!5847934))

(declare-fun m!5847936 () Bool)

(assert (=> d!1556355 m!5847936))

(declare-fun m!5847938 () Bool)

(assert (=> b!4849668 m!5847938))

(assert (=> b!4849625 d!1556355))

(declare-fun d!1556357 () Bool)

(declare-fun dynLambda!22363 (Int tuple2!59288) Bool)

(assert (=> d!1556357 (dynLambda!22363 lambda!242663 lt!1989391)))

(declare-fun lt!1989439 () Unit!145722)

(declare-fun choose!35488 (List!55701 Int tuple2!59288) Unit!145722)

(assert (=> d!1556357 (= lt!1989439 (choose!35488 (toList!7869 lm!2646) lambda!242663 lt!1989391))))

(declare-fun e!3031521 () Bool)

(assert (=> d!1556357 e!3031521))

(declare-fun res!2069660 () Bool)

(assert (=> d!1556357 (=> (not res!2069660) (not e!3031521))))

(assert (=> d!1556357 (= res!2069660 (forall!12962 (toList!7869 lm!2646) lambda!242663))))

(assert (=> d!1556357 (= (forallContained!4550 (toList!7869 lm!2646) lambda!242663 lt!1989391) lt!1989439)))

(declare-fun b!4849671 () Bool)

(assert (=> b!4849671 (= e!3031521 (contains!19239 (toList!7869 lm!2646) lt!1989391))))

(assert (= (and d!1556357 res!2069660) b!4849671))

(declare-fun b_lambda!192779 () Bool)

(assert (=> (not b_lambda!192779) (not d!1556357)))

(declare-fun m!5847940 () Bool)

(assert (=> d!1556357 m!5847940))

(declare-fun m!5847942 () Bool)

(assert (=> d!1556357 m!5847942))

(assert (=> d!1556357 m!5847844))

(assert (=> b!4849671 m!5847858))

(assert (=> b!4849625 d!1556357))

(declare-fun d!1556359 () Bool)

(declare-datatypes ((Option!13690 0))(
  ( (None!13689) (Some!13689 (v!49470 List!55700)) )
))
(declare-fun get!19054 (Option!13690) List!55700)

(declare-fun getValueByKey!2737 (List!55701 (_ BitVec 64)) Option!13690)

(assert (=> d!1556359 (= (apply!13452 lm!2646 lt!1989394) (get!19054 (getValueByKey!2737 (toList!7869 lm!2646) lt!1989394)))))

(declare-fun bs!1172737 () Bool)

(assert (= bs!1172737 d!1556359))

(declare-fun m!5847944 () Bool)

(assert (=> bs!1172737 m!5847944))

(assert (=> bs!1172737 m!5847944))

(declare-fun m!5847946 () Bool)

(assert (=> bs!1172737 m!5847946))

(assert (=> b!4849625 d!1556359))

(declare-fun b!4849692 () Bool)

(declare-fun e!3031539 () Bool)

(declare-fun e!3031536 () Bool)

(assert (=> b!4849692 (= e!3031539 e!3031536)))

(declare-fun res!2069673 () Bool)

(assert (=> b!4849692 (=> (not res!2069673) (not e!3031536))))

(declare-fun lt!1989442 () Option!13688)

(assert (=> b!4849692 (= res!2069673 (isDefined!10780 lt!1989442))))

(declare-fun b!4849693 () Bool)

(declare-fun res!2069676 () Bool)

(assert (=> b!4849693 (=> (not res!2069676) (not e!3031536))))

(declare-fun get!19055 (Option!13688) tuple2!59286)

(assert (=> b!4849693 (= res!2069676 (= (_1!32937 (get!19055 lt!1989442)) key!6445))))

(declare-fun b!4849694 () Bool)

(declare-fun contains!19243 (List!55700 tuple2!59286) Bool)

(assert (=> b!4849694 (= e!3031536 (contains!19243 lt!1989392 (get!19055 lt!1989442)))))

(declare-fun b!4849695 () Bool)

(declare-fun e!3031538 () Option!13688)

(declare-fun e!3031540 () Option!13688)

(assert (=> b!4849695 (= e!3031538 e!3031540)))

(declare-fun c!825359 () Bool)

(assert (=> b!4849695 (= c!825359 (is-Cons!55576 lt!1989392))))

(declare-fun b!4849696 () Bool)

(declare-fun e!3031537 () Bool)

(assert (=> b!4849696 (= e!3031537 (not (containsKey!4699 lt!1989392 key!6445)))))

(declare-fun d!1556361 () Bool)

(assert (=> d!1556361 e!3031539))

(declare-fun res!2069674 () Bool)

(assert (=> d!1556361 (=> res!2069674 e!3031539)))

(assert (=> d!1556361 (= res!2069674 e!3031537)))

(declare-fun res!2069675 () Bool)

(assert (=> d!1556361 (=> (not res!2069675) (not e!3031537))))

(assert (=> d!1556361 (= res!2069675 (isEmpty!29745 lt!1989442))))

(assert (=> d!1556361 (= lt!1989442 e!3031538)))

(declare-fun c!825360 () Bool)

(assert (=> d!1556361 (= c!825360 (and (is-Cons!55576 lt!1989392) (= (_1!32937 (h!62013 lt!1989392)) key!6445)))))

(declare-fun noDuplicateKeys!2597 (List!55700) Bool)

(assert (=> d!1556361 (noDuplicateKeys!2597 lt!1989392)))

(assert (=> d!1556361 (= (getPair!1099 lt!1989392 key!6445) lt!1989442)))

(declare-fun b!4849697 () Bool)

(assert (=> b!4849697 (= e!3031540 None!13687)))

(declare-fun b!4849698 () Bool)

(assert (=> b!4849698 (= e!3031538 (Some!13687 (h!62013 lt!1989392)))))

(declare-fun b!4849699 () Bool)

(assert (=> b!4849699 (= e!3031540 (getPair!1099 (t!363196 lt!1989392) key!6445))))

(assert (= (and d!1556361 c!825360) b!4849698))

(assert (= (and d!1556361 (not c!825360)) b!4849695))

(assert (= (and b!4849695 c!825359) b!4849699))

(assert (= (and b!4849695 (not c!825359)) b!4849697))

(assert (= (and d!1556361 res!2069675) b!4849696))

(assert (= (and d!1556361 (not res!2069674)) b!4849692))

(assert (= (and b!4849692 res!2069673) b!4849693))

(assert (= (and b!4849693 res!2069676) b!4849694))

(declare-fun m!5847948 () Bool)

(assert (=> b!4849694 m!5847948))

(assert (=> b!4849694 m!5847948))

(declare-fun m!5847950 () Bool)

(assert (=> b!4849694 m!5847950))

(declare-fun m!5847952 () Bool)

(assert (=> d!1556361 m!5847952))

(declare-fun m!5847954 () Bool)

(assert (=> d!1556361 m!5847954))

(assert (=> b!4849693 m!5847948))

(declare-fun m!5847956 () Bool)

(assert (=> b!4849692 m!5847956))

(declare-fun m!5847958 () Bool)

(assert (=> b!4849699 m!5847958))

(declare-fun m!5847960 () Bool)

(assert (=> b!4849696 m!5847960))

(assert (=> b!4849625 d!1556361))

(declare-fun d!1556365 () Bool)

(declare-fun e!3031548 () Bool)

(assert (=> d!1556365 e!3031548))

(declare-fun res!2069681 () Bool)

(assert (=> d!1556365 (=> res!2069681 e!3031548)))

(declare-fun lt!1989453 () Bool)

(assert (=> d!1556365 (= res!2069681 (not lt!1989453))))

(declare-fun lt!1989454 () Bool)

(assert (=> d!1556365 (= lt!1989453 lt!1989454)))

(declare-fun lt!1989451 () Unit!145722)

(declare-fun e!3031547 () Unit!145722)

(assert (=> d!1556365 (= lt!1989451 e!3031547)))

(declare-fun c!825363 () Bool)

(assert (=> d!1556365 (= c!825363 lt!1989454)))

(declare-fun containsKey!4701 (List!55701 (_ BitVec 64)) Bool)

(assert (=> d!1556365 (= lt!1989454 (containsKey!4701 (toList!7869 lm!2646) lt!1989394))))

(assert (=> d!1556365 (= (contains!19240 lm!2646 lt!1989394) lt!1989453)))

(declare-fun b!4849708 () Bool)

(declare-fun lt!1989452 () Unit!145722)

(assert (=> b!4849708 (= e!3031547 lt!1989452)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2509 (List!55701 (_ BitVec 64)) Unit!145722)

(assert (=> b!4849708 (= lt!1989452 (lemmaContainsKeyImpliesGetValueByKeyDefined!2509 (toList!7869 lm!2646) lt!1989394))))

(declare-fun isDefined!10782 (Option!13690) Bool)

(assert (=> b!4849708 (isDefined!10782 (getValueByKey!2737 (toList!7869 lm!2646) lt!1989394))))

(declare-fun b!4849709 () Bool)

(declare-fun Unit!145726 () Unit!145722)

(assert (=> b!4849709 (= e!3031547 Unit!145726)))

(declare-fun b!4849710 () Bool)

(assert (=> b!4849710 (= e!3031548 (isDefined!10782 (getValueByKey!2737 (toList!7869 lm!2646) lt!1989394)))))

(assert (= (and d!1556365 c!825363) b!4849708))

(assert (= (and d!1556365 (not c!825363)) b!4849709))

(assert (= (and d!1556365 (not res!2069681)) b!4849710))

(declare-fun m!5847968 () Bool)

(assert (=> d!1556365 m!5847968))

(declare-fun m!5847970 () Bool)

(assert (=> b!4849708 m!5847970))

(assert (=> b!4849708 m!5847944))

(assert (=> b!4849708 m!5847944))

(declare-fun m!5847972 () Bool)

(assert (=> b!4849708 m!5847972))

(assert (=> b!4849710 m!5847944))

(assert (=> b!4849710 m!5847944))

(assert (=> b!4849710 m!5847972))

(assert (=> b!4849630 d!1556365))

(declare-fun d!1556371 () Bool)

(declare-fun hash!5621 (Hashable!7509 K!17377) (_ BitVec 64))

(assert (=> d!1556371 (= (hash!5617 hashF!1641 key!6445) (hash!5621 hashF!1641 key!6445))))

(declare-fun bs!1172739 () Bool)

(assert (= bs!1172739 d!1556371))

(declare-fun m!5847974 () Bool)

(assert (=> bs!1172739 m!5847974))

(assert (=> b!4849630 d!1556371))

(declare-fun bs!1172742 () Bool)

(declare-fun d!1556373 () Bool)

(assert (= bs!1172742 (and d!1556373 start!505798)))

(declare-fun lambda!242678 () Int)

(assert (=> bs!1172742 (not (= lambda!242678 lambda!242663))))

(assert (=> d!1556373 true))

(assert (=> d!1556373 (= (allKeysSameHashInMap!2825 lm!2646 hashF!1641) (forall!12962 (toList!7869 lm!2646) lambda!242678))))

(declare-fun bs!1172743 () Bool)

(assert (= bs!1172743 d!1556373))

(declare-fun m!5847978 () Bool)

(assert (=> bs!1172743 m!5847978))

(assert (=> b!4849631 d!1556373))

(declare-fun d!1556377 () Bool)

(declare-fun res!2069690 () Bool)

(declare-fun e!3031557 () Bool)

(assert (=> d!1556377 (=> res!2069690 e!3031557)))

(assert (=> d!1556377 (= res!2069690 (is-Nil!55577 (toList!7869 lm!2646)))))

(assert (=> d!1556377 (= (forall!12962 (toList!7869 lm!2646) lambda!242663) e!3031557)))

(declare-fun b!4849723 () Bool)

(declare-fun e!3031558 () Bool)

(assert (=> b!4849723 (= e!3031557 e!3031558)))

(declare-fun res!2069691 () Bool)

(assert (=> b!4849723 (=> (not res!2069691) (not e!3031558))))

(assert (=> b!4849723 (= res!2069691 (dynLambda!22363 lambda!242663 (h!62014 (toList!7869 lm!2646))))))

(declare-fun b!4849724 () Bool)

(assert (=> b!4849724 (= e!3031558 (forall!12962 (t!363197 (toList!7869 lm!2646)) lambda!242663))))

(assert (= (and d!1556377 (not res!2069690)) b!4849723))

(assert (= (and b!4849723 res!2069691) b!4849724))

(declare-fun b_lambda!192783 () Bool)

(assert (=> (not b_lambda!192783) (not b!4849723)))

(declare-fun m!5847980 () Bool)

(assert (=> b!4849723 m!5847980))

(declare-fun m!5847982 () Bool)

(assert (=> b!4849724 m!5847982))

(assert (=> start!505798 d!1556377))

(declare-fun d!1556379 () Bool)

(declare-fun isStrictlySorted!1086 (List!55701) Bool)

(assert (=> d!1556379 (= (inv!71264 lm!2646) (isStrictlySorted!1086 (toList!7869 lm!2646)))))

(declare-fun bs!1172744 () Bool)

(assert (= bs!1172744 d!1556379))

(declare-fun m!5847984 () Bool)

(assert (=> bs!1172744 m!5847984))

(assert (=> start!505798 d!1556379))

(declare-fun d!1556381 () Bool)

(declare-fun res!2069692 () Bool)

(declare-fun e!3031559 () Bool)

(assert (=> d!1556381 (=> res!2069692 e!3031559)))

(assert (=> d!1556381 (= res!2069692 (is-Nil!55577 (toList!7869 lt!1989387)))))

(assert (=> d!1556381 (= (forall!12962 (toList!7869 lt!1989387) lambda!242663) e!3031559)))

(declare-fun b!4849725 () Bool)

(declare-fun e!3031560 () Bool)

(assert (=> b!4849725 (= e!3031559 e!3031560)))

(declare-fun res!2069693 () Bool)

(assert (=> b!4849725 (=> (not res!2069693) (not e!3031560))))

(assert (=> b!4849725 (= res!2069693 (dynLambda!22363 lambda!242663 (h!62014 (toList!7869 lt!1989387))))))

(declare-fun b!4849726 () Bool)

(assert (=> b!4849726 (= e!3031560 (forall!12962 (t!363197 (toList!7869 lt!1989387)) lambda!242663))))

(assert (= (and d!1556381 (not res!2069692)) b!4849725))

(assert (= (and b!4849725 res!2069693) b!4849726))

(declare-fun b_lambda!192785 () Bool)

(assert (=> (not b_lambda!192785) (not b!4849725)))

(declare-fun m!5847986 () Bool)

(assert (=> b!4849725 m!5847986))

(declare-fun m!5847988 () Bool)

(assert (=> b!4849726 m!5847988))

(assert (=> b!4849628 d!1556381))

(declare-fun d!1556383 () Bool)

(declare-fun tail!9543 (List!55701) List!55701)

(assert (=> d!1556383 (= (tail!9541 lm!2646) (ListLongMap!6482 (tail!9543 (toList!7869 lm!2646))))))

(declare-fun bs!1172745 () Bool)

(assert (= bs!1172745 d!1556383))

(declare-fun m!5847992 () Bool)

(assert (=> bs!1172745 m!5847992))

(assert (=> b!4849628 d!1556383))

(declare-fun d!1556387 () Bool)

(assert (=> d!1556387 (dynLambda!22363 lambda!242663 lt!1989396)))

(declare-fun lt!1989455 () Unit!145722)

(assert (=> d!1556387 (= lt!1989455 (choose!35488 (toList!7869 lt!1989387) lambda!242663 lt!1989396))))

(declare-fun e!3031565 () Bool)

(assert (=> d!1556387 e!3031565))

(declare-fun res!2069698 () Bool)

(assert (=> d!1556387 (=> (not res!2069698) (not e!3031565))))

(assert (=> d!1556387 (= res!2069698 (forall!12962 (toList!7869 lt!1989387) lambda!242663))))

(assert (=> d!1556387 (= (forallContained!4550 (toList!7869 lt!1989387) lambda!242663 lt!1989396) lt!1989455)))

(declare-fun b!4849731 () Bool)

(assert (=> b!4849731 (= e!3031565 (contains!19239 (toList!7869 lt!1989387) lt!1989396))))

(assert (= (and d!1556387 res!2069698) b!4849731))

(declare-fun b_lambda!192787 () Bool)

(assert (=> (not b_lambda!192787) (not d!1556387)))

(declare-fun m!5847994 () Bool)

(assert (=> d!1556387 m!5847994))

(declare-fun m!5847996 () Bool)

(assert (=> d!1556387 m!5847996))

(assert (=> d!1556387 m!5847832))

(assert (=> b!4849731 m!5847870))

(assert (=> b!4849622 d!1556387))

(declare-fun d!1556389 () Bool)

(assert (=> d!1556389 (= (isDefined!10780 (getPair!1099 lt!1989389 key!6445)) (not (isEmpty!29745 (getPair!1099 lt!1989389 key!6445))))))

(declare-fun bs!1172746 () Bool)

(assert (= bs!1172746 d!1556389))

(assert (=> bs!1172746 m!5847862))

(declare-fun m!5848000 () Bool)

(assert (=> bs!1172746 m!5848000))

(assert (=> b!4849622 d!1556389))

(declare-fun b!4849732 () Bool)

(declare-fun e!3031569 () Bool)

(declare-fun e!3031566 () Bool)

(assert (=> b!4849732 (= e!3031569 e!3031566)))

(declare-fun res!2069699 () Bool)

(assert (=> b!4849732 (=> (not res!2069699) (not e!3031566))))

(declare-fun lt!1989456 () Option!13688)

(assert (=> b!4849732 (= res!2069699 (isDefined!10780 lt!1989456))))

(declare-fun b!4849733 () Bool)

(declare-fun res!2069702 () Bool)

(assert (=> b!4849733 (=> (not res!2069702) (not e!3031566))))

(assert (=> b!4849733 (= res!2069702 (= (_1!32937 (get!19055 lt!1989456)) key!6445))))

(declare-fun b!4849734 () Bool)

(assert (=> b!4849734 (= e!3031566 (contains!19243 lt!1989389 (get!19055 lt!1989456)))))

(declare-fun b!4849735 () Bool)

(declare-fun e!3031568 () Option!13688)

(declare-fun e!3031570 () Option!13688)

(assert (=> b!4849735 (= e!3031568 e!3031570)))

(declare-fun c!825364 () Bool)

(assert (=> b!4849735 (= c!825364 (is-Cons!55576 lt!1989389))))

(declare-fun b!4849736 () Bool)

(declare-fun e!3031567 () Bool)

(assert (=> b!4849736 (= e!3031567 (not (containsKey!4699 lt!1989389 key!6445)))))

(declare-fun d!1556393 () Bool)

(assert (=> d!1556393 e!3031569))

(declare-fun res!2069700 () Bool)

(assert (=> d!1556393 (=> res!2069700 e!3031569)))

(assert (=> d!1556393 (= res!2069700 e!3031567)))

(declare-fun res!2069701 () Bool)

(assert (=> d!1556393 (=> (not res!2069701) (not e!3031567))))

(assert (=> d!1556393 (= res!2069701 (isEmpty!29745 lt!1989456))))

(assert (=> d!1556393 (= lt!1989456 e!3031568)))

(declare-fun c!825365 () Bool)

(assert (=> d!1556393 (= c!825365 (and (is-Cons!55576 lt!1989389) (= (_1!32937 (h!62013 lt!1989389)) key!6445)))))

(assert (=> d!1556393 (noDuplicateKeys!2597 lt!1989389)))

(assert (=> d!1556393 (= (getPair!1099 lt!1989389 key!6445) lt!1989456)))

(declare-fun b!4849737 () Bool)

(assert (=> b!4849737 (= e!3031570 None!13687)))

(declare-fun b!4849738 () Bool)

(assert (=> b!4849738 (= e!3031568 (Some!13687 (h!62013 lt!1989389)))))

(declare-fun b!4849739 () Bool)

(assert (=> b!4849739 (= e!3031570 (getPair!1099 (t!363196 lt!1989389) key!6445))))

(assert (= (and d!1556393 c!825365) b!4849738))

(assert (= (and d!1556393 (not c!825365)) b!4849735))

(assert (= (and b!4849735 c!825364) b!4849739))

(assert (= (and b!4849735 (not c!825364)) b!4849737))

(assert (= (and d!1556393 res!2069701) b!4849736))

(assert (= (and d!1556393 (not res!2069700)) b!4849732))

(assert (= (and b!4849732 res!2069699) b!4849733))

(assert (= (and b!4849733 res!2069702) b!4849734))

(declare-fun m!5848002 () Bool)

(assert (=> b!4849734 m!5848002))

(assert (=> b!4849734 m!5848002))

(declare-fun m!5848004 () Bool)

(assert (=> b!4849734 m!5848004))

(declare-fun m!5848006 () Bool)

(assert (=> d!1556393 m!5848006))

(declare-fun m!5848008 () Bool)

(assert (=> d!1556393 m!5848008))

(assert (=> b!4849733 m!5848002))

(declare-fun m!5848010 () Bool)

(assert (=> b!4849732 m!5848010))

(declare-fun m!5848012 () Bool)

(assert (=> b!4849739 m!5848012))

(declare-fun m!5848014 () Bool)

(assert (=> b!4849736 m!5848014))

(assert (=> b!4849622 d!1556393))

(declare-fun d!1556395 () Bool)

(assert (=> d!1556395 (contains!19239 (toList!7869 lt!1989387) (tuple2!59289 lt!1989394 lt!1989389))))

(declare-fun lt!1989457 () Unit!145722)

(assert (=> d!1556395 (= lt!1989457 (choose!35487 lt!1989387 lt!1989394 lt!1989389))))

(assert (=> d!1556395 (contains!19240 lt!1989387 lt!1989394)))

(assert (=> d!1556395 (= (lemmaGetValueImpliesTupleContained!776 lt!1989387 lt!1989394 lt!1989389) lt!1989457)))

(declare-fun bs!1172747 () Bool)

(assert (= bs!1172747 d!1556395))

(declare-fun m!5848016 () Bool)

(assert (=> bs!1172747 m!5848016))

(declare-fun m!5848018 () Bool)

(assert (=> bs!1172747 m!5848018))

(assert (=> bs!1172747 m!5847860))

(assert (=> b!4849622 d!1556395))

(declare-fun d!1556397 () Bool)

(assert (=> d!1556397 (= (apply!13452 lt!1989387 lt!1989394) (get!19054 (getValueByKey!2737 (toList!7869 lt!1989387) lt!1989394)))))

(declare-fun bs!1172748 () Bool)

(assert (= bs!1172748 d!1556397))

(declare-fun m!5848020 () Bool)

(assert (=> bs!1172748 m!5848020))

(assert (=> bs!1172748 m!5848020))

(declare-fun m!5848022 () Bool)

(assert (=> bs!1172748 m!5848022))

(assert (=> b!4849622 d!1556397))

(declare-fun d!1556399 () Bool)

(declare-fun lt!1989458 () Bool)

(assert (=> d!1556399 (= lt!1989458 (set.member lt!1989396 (content!9893 (toList!7869 lt!1989387))))))

(declare-fun e!3031572 () Bool)

(assert (=> d!1556399 (= lt!1989458 e!3031572)))

(declare-fun res!2069703 () Bool)

(assert (=> d!1556399 (=> (not res!2069703) (not e!3031572))))

(assert (=> d!1556399 (= res!2069703 (is-Cons!55577 (toList!7869 lt!1989387)))))

(assert (=> d!1556399 (= (contains!19239 (toList!7869 lt!1989387) lt!1989396) lt!1989458)))

(declare-fun b!4849740 () Bool)

(declare-fun e!3031571 () Bool)

(assert (=> b!4849740 (= e!3031572 e!3031571)))

(declare-fun res!2069704 () Bool)

(assert (=> b!4849740 (=> res!2069704 e!3031571)))

(assert (=> b!4849740 (= res!2069704 (= (h!62014 (toList!7869 lt!1989387)) lt!1989396))))

(declare-fun b!4849741 () Bool)

(assert (=> b!4849741 (= e!3031571 (contains!19239 (t!363197 (toList!7869 lt!1989387)) lt!1989396))))

(assert (= (and d!1556399 res!2069703) b!4849740))

(assert (= (and b!4849740 (not res!2069704)) b!4849741))

(declare-fun m!5848024 () Bool)

(assert (=> d!1556399 m!5848024))

(declare-fun m!5848026 () Bool)

(assert (=> d!1556399 m!5848026))

(declare-fun m!5848028 () Bool)

(assert (=> b!4849741 m!5848028))

(assert (=> b!4849622 d!1556399))

(declare-fun bs!1172749 () Bool)

(declare-fun d!1556401 () Bool)

(assert (= bs!1172749 (and d!1556401 start!505798)))

(declare-fun lambda!242679 () Int)

(assert (=> bs!1172749 (not (= lambda!242679 lambda!242663))))

(declare-fun bs!1172750 () Bool)

(assert (= bs!1172750 (and d!1556401 d!1556373)))

(assert (=> bs!1172750 (= lambda!242679 lambda!242678)))

(assert (=> d!1556401 true))

(assert (=> d!1556401 (= (allKeysSameHashInMap!2825 lt!1989387 hashF!1641) (forall!12962 (toList!7869 lt!1989387) lambda!242679))))

(declare-fun bs!1172751 () Bool)

(assert (= bs!1172751 d!1556401))

(declare-fun m!5848030 () Bool)

(assert (=> bs!1172751 m!5848030))

(assert (=> b!4849629 d!1556401))

(declare-fun d!1556403 () Bool)

(declare-fun e!3031574 () Bool)

(assert (=> d!1556403 e!3031574))

(declare-fun res!2069705 () Bool)

(assert (=> d!1556403 (=> res!2069705 e!3031574)))

(declare-fun lt!1989461 () Bool)

(assert (=> d!1556403 (= res!2069705 (not lt!1989461))))

(declare-fun lt!1989462 () Bool)

(assert (=> d!1556403 (= lt!1989461 lt!1989462)))

(declare-fun lt!1989459 () Unit!145722)

(declare-fun e!3031573 () Unit!145722)

(assert (=> d!1556403 (= lt!1989459 e!3031573)))

(declare-fun c!825366 () Bool)

(assert (=> d!1556403 (= c!825366 lt!1989462)))

(assert (=> d!1556403 (= lt!1989462 (containsKey!4701 (toList!7869 lt!1989387) lt!1989394))))

(assert (=> d!1556403 (= (contains!19240 lt!1989387 lt!1989394) lt!1989461)))

(declare-fun b!4849742 () Bool)

(declare-fun lt!1989460 () Unit!145722)

(assert (=> b!4849742 (= e!3031573 lt!1989460)))

(assert (=> b!4849742 (= lt!1989460 (lemmaContainsKeyImpliesGetValueByKeyDefined!2509 (toList!7869 lt!1989387) lt!1989394))))

(assert (=> b!4849742 (isDefined!10782 (getValueByKey!2737 (toList!7869 lt!1989387) lt!1989394))))

(declare-fun b!4849743 () Bool)

(declare-fun Unit!145727 () Unit!145722)

(assert (=> b!4849743 (= e!3031573 Unit!145727)))

(declare-fun b!4849744 () Bool)

(assert (=> b!4849744 (= e!3031574 (isDefined!10782 (getValueByKey!2737 (toList!7869 lt!1989387) lt!1989394)))))

(assert (= (and d!1556403 c!825366) b!4849742))

(assert (= (and d!1556403 (not c!825366)) b!4849743))

(assert (= (and d!1556403 (not res!2069705)) b!4849744))

(declare-fun m!5848032 () Bool)

(assert (=> d!1556403 m!5848032))

(declare-fun m!5848034 () Bool)

(assert (=> b!4849742 m!5848034))

(assert (=> b!4849742 m!5848020))

(assert (=> b!4849742 m!5848020))

(declare-fun m!5848036 () Bool)

(assert (=> b!4849742 m!5848036))

(assert (=> b!4849744 m!5848020))

(assert (=> b!4849744 m!5848020))

(assert (=> b!4849744 m!5848036))

(assert (=> b!4849624 d!1556403))

(declare-fun d!1556405 () Bool)

(declare-fun res!2069710 () Bool)

(declare-fun e!3031579 () Bool)

(assert (=> d!1556405 (=> res!2069710 e!3031579)))

(assert (=> d!1556405 (= res!2069710 (and (is-Cons!55576 (_2!32938 (h!62014 (toList!7869 lm!2646)))) (= (_1!32937 (h!62013 (_2!32938 (h!62014 (toList!7869 lm!2646))))) key!6445)))))

(assert (=> d!1556405 (= (containsKey!4699 (_2!32938 (h!62014 (toList!7869 lm!2646))) key!6445) e!3031579)))

(declare-fun b!4849749 () Bool)

(declare-fun e!3031580 () Bool)

(assert (=> b!4849749 (= e!3031579 e!3031580)))

(declare-fun res!2069711 () Bool)

(assert (=> b!4849749 (=> (not res!2069711) (not e!3031580))))

(assert (=> b!4849749 (= res!2069711 (is-Cons!55576 (_2!32938 (h!62014 (toList!7869 lm!2646)))))))

(declare-fun b!4849750 () Bool)

(assert (=> b!4849750 (= e!3031580 (containsKey!4699 (t!363196 (_2!32938 (h!62014 (toList!7869 lm!2646)))) key!6445))))

(assert (= (and d!1556405 (not res!2069710)) b!4849749))

(assert (= (and b!4849749 res!2069711) b!4849750))

(declare-fun m!5848042 () Bool)

(assert (=> b!4849750 m!5848042))

(assert (=> b!4849623 d!1556405))

(declare-fun d!1556409 () Bool)

(declare-fun res!2069712 () Bool)

(declare-fun e!3031581 () Bool)

(assert (=> d!1556409 (=> res!2069712 e!3031581)))

(assert (=> d!1556409 (= res!2069712 (and (is-Cons!55576 (apply!13452 lm!2646 (_1!32938 (h!62014 (toList!7869 lm!2646))))) (= (_1!32937 (h!62013 (apply!13452 lm!2646 (_1!32938 (h!62014 (toList!7869 lm!2646)))))) key!6445)))))

(assert (=> d!1556409 (= (containsKey!4699 (apply!13452 lm!2646 (_1!32938 (h!62014 (toList!7869 lm!2646)))) key!6445) e!3031581)))

(declare-fun b!4849751 () Bool)

(declare-fun e!3031582 () Bool)

(assert (=> b!4849751 (= e!3031581 e!3031582)))

(declare-fun res!2069713 () Bool)

(assert (=> b!4849751 (=> (not res!2069713) (not e!3031582))))

(assert (=> b!4849751 (= res!2069713 (is-Cons!55576 (apply!13452 lm!2646 (_1!32938 (h!62014 (toList!7869 lm!2646))))))))

(declare-fun b!4849752 () Bool)

(assert (=> b!4849752 (= e!3031582 (containsKey!4699 (t!363196 (apply!13452 lm!2646 (_1!32938 (h!62014 (toList!7869 lm!2646))))) key!6445))))

(assert (= (and d!1556409 (not res!2069712)) b!4849751))

(assert (= (and b!4849751 res!2069713) b!4849752))

(declare-fun m!5848044 () Bool)

(assert (=> b!4849752 m!5848044))

(assert (=> b!4849623 d!1556409))

(declare-fun d!1556411 () Bool)

(assert (=> d!1556411 (= (apply!13452 lm!2646 (_1!32938 (h!62014 (toList!7869 lm!2646)))) (get!19054 (getValueByKey!2737 (toList!7869 lm!2646) (_1!32938 (h!62014 (toList!7869 lm!2646))))))))

(declare-fun bs!1172753 () Bool)

(assert (= bs!1172753 d!1556411))

(declare-fun m!5848046 () Bool)

(assert (=> bs!1172753 m!5848046))

(assert (=> bs!1172753 m!5848046))

(declare-fun m!5848048 () Bool)

(assert (=> bs!1172753 m!5848048))

(assert (=> b!4849623 d!1556411))

(declare-fun bs!1172754 () Bool)

(declare-fun d!1556413 () Bool)

(assert (= bs!1172754 (and d!1556413 start!505798)))

(declare-fun lambda!242682 () Int)

(assert (=> bs!1172754 (= lambda!242682 lambda!242663)))

(declare-fun bs!1172755 () Bool)

(assert (= bs!1172755 (and d!1556413 d!1556373)))

(assert (=> bs!1172755 (not (= lambda!242682 lambda!242678))))

(declare-fun bs!1172756 () Bool)

(assert (= bs!1172756 (and d!1556413 d!1556401)))

(assert (=> bs!1172756 (not (= lambda!242682 lambda!242679))))

(assert (=> d!1556413 (not (containsKey!4699 (apply!13452 lm!2646 (_1!32938 (h!62014 (toList!7869 lm!2646)))) key!6445))))

(declare-fun lt!1989465 () Unit!145722)

(declare-fun choose!35489 (ListLongMap!6481 K!17377 (_ BitVec 64) Hashable!7509) Unit!145722)

(assert (=> d!1556413 (= lt!1989465 (choose!35489 lm!2646 key!6445 (_1!32938 (h!62014 (toList!7869 lm!2646))) hashF!1641))))

(assert (=> d!1556413 (forall!12962 (toList!7869 lm!2646) lambda!242682)))

(assert (=> d!1556413 (= (lemmaNotSameHashThenCannotContainKey!259 lm!2646 key!6445 (_1!32938 (h!62014 (toList!7869 lm!2646))) hashF!1641) lt!1989465)))

(declare-fun bs!1172757 () Bool)

(assert (= bs!1172757 d!1556413))

(assert (=> bs!1172757 m!5847838))

(assert (=> bs!1172757 m!5847838))

(assert (=> bs!1172757 m!5847840))

(declare-fun m!5848050 () Bool)

(assert (=> bs!1172757 m!5848050))

(declare-fun m!5848052 () Bool)

(assert (=> bs!1172757 m!5848052))

(assert (=> b!4849623 d!1556413))

(declare-fun b!4849757 () Bool)

(declare-fun e!3031585 () Bool)

(declare-fun tp!1364769 () Bool)

(declare-fun tp!1364770 () Bool)

(assert (=> b!4849757 (= e!3031585 (and tp!1364769 tp!1364770))))

(assert (=> b!4849626 (= tp!1364761 e!3031585)))

(assert (= (and b!4849626 (is-Cons!55577 (toList!7869 lm!2646))) b!4849757))

(declare-fun b_lambda!192789 () Bool)

(assert (= b_lambda!192785 (or start!505798 b_lambda!192789)))

(declare-fun bs!1172758 () Bool)

(declare-fun d!1556415 () Bool)

(assert (= bs!1172758 (and d!1556415 start!505798)))

(assert (=> bs!1172758 (= (dynLambda!22363 lambda!242663 (h!62014 (toList!7869 lt!1989387))) (noDuplicateKeys!2597 (_2!32938 (h!62014 (toList!7869 lt!1989387)))))))

(declare-fun m!5848054 () Bool)

(assert (=> bs!1172758 m!5848054))

(assert (=> b!4849725 d!1556415))

(declare-fun b_lambda!192791 () Bool)

(assert (= b_lambda!192779 (or start!505798 b_lambda!192791)))

(declare-fun bs!1172759 () Bool)

(declare-fun d!1556417 () Bool)

(assert (= bs!1172759 (and d!1556417 start!505798)))

(assert (=> bs!1172759 (= (dynLambda!22363 lambda!242663 lt!1989391) (noDuplicateKeys!2597 (_2!32938 lt!1989391)))))

(declare-fun m!5848056 () Bool)

(assert (=> bs!1172759 m!5848056))

(assert (=> d!1556357 d!1556417))

(declare-fun b_lambda!192793 () Bool)

(assert (= b_lambda!192783 (or start!505798 b_lambda!192793)))

(declare-fun bs!1172760 () Bool)

(declare-fun d!1556419 () Bool)

(assert (= bs!1172760 (and d!1556419 start!505798)))

(assert (=> bs!1172760 (= (dynLambda!22363 lambda!242663 (h!62014 (toList!7869 lm!2646))) (noDuplicateKeys!2597 (_2!32938 (h!62014 (toList!7869 lm!2646)))))))

(declare-fun m!5848058 () Bool)

(assert (=> bs!1172760 m!5848058))

(assert (=> b!4849723 d!1556419))

(declare-fun b_lambda!192795 () Bool)

(assert (= b_lambda!192787 (or start!505798 b_lambda!192795)))

(declare-fun bs!1172761 () Bool)

(declare-fun d!1556421 () Bool)

(assert (= bs!1172761 (and d!1556421 start!505798)))

(assert (=> bs!1172761 (= (dynLambda!22363 lambda!242663 lt!1989396) (noDuplicateKeys!2597 (_2!32938 lt!1989396)))))

(declare-fun m!5848060 () Bool)

(assert (=> bs!1172761 m!5848060))

(assert (=> d!1556387 d!1556421))

(push 1)

(assert (not d!1556387))

(assert (not b!4849734))

(assert (not b!4849752))

(assert (not d!1556395))

(assert (not d!1556361))

(assert (not d!1556351))

(assert (not b!4849692))

(assert (not d!1556403))

(assert (not d!1556357))

(assert (not d!1556399))

(assert (not d!1556413))

(assert (not b!4849732))

(assert (not b!4849710))

(assert (not d!1556379))

(assert (not b_lambda!192791))

(assert tp_is_empty!35221)

(assert (not b!4849750))

(assert (not b!4849671))

(assert (not d!1556355))

(assert (not b!4849742))

(assert (not d!1556373))

(assert (not d!1556359))

(assert (not b!4849693))

(assert (not b_lambda!192789))

(assert (not d!1556371))

(assert (not b!4849708))

(assert (not b!4849736))

(assert (not bs!1172758))

(assert (not b!4849724))

(assert (not b!4849741))

(assert (not b!4849699))

(assert (not d!1556365))

(assert (not bs!1172761))

(assert (not b!4849696))

(assert (not bs!1172760))

(assert (not b!4849731))

(assert (not b!4849744))

(assert (not b!4849668))

(assert (not b!4849739))

(assert (not d!1556397))

(assert (not b_lambda!192793))

(assert (not bs!1172759))

(assert (not d!1556401))

(assert (not d!1556383))

(assert (not b!4849694))

(assert (not b!4849757))

(assert (not d!1556353))

(assert (not b!4849733))

(assert (not d!1556393))

(assert (not b!4849726))

(assert (not d!1556411))

(assert (not b_lambda!192795))

(assert (not d!1556389))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1556467 () Bool)

(declare-fun res!2069752 () Bool)

(declare-fun e!3031635 () Bool)

(assert (=> d!1556467 (=> res!2069752 e!3031635)))

(assert (=> d!1556467 (= res!2069752 (not (is-Cons!55576 (_2!32938 (h!62014 (toList!7869 lm!2646))))))))

(assert (=> d!1556467 (= (noDuplicateKeys!2597 (_2!32938 (h!62014 (toList!7869 lm!2646)))) e!3031635)))

(declare-fun b!4849826 () Bool)

(declare-fun e!3031636 () Bool)

(assert (=> b!4849826 (= e!3031635 e!3031636)))

(declare-fun res!2069753 () Bool)

(assert (=> b!4849826 (=> (not res!2069753) (not e!3031636))))

(assert (=> b!4849826 (= res!2069753 (not (containsKey!4699 (t!363196 (_2!32938 (h!62014 (toList!7869 lm!2646)))) (_1!32937 (h!62013 (_2!32938 (h!62014 (toList!7869 lm!2646))))))))))

(declare-fun b!4849827 () Bool)

(assert (=> b!4849827 (= e!3031636 (noDuplicateKeys!2597 (t!363196 (_2!32938 (h!62014 (toList!7869 lm!2646))))))))

(assert (= (and d!1556467 (not res!2069752)) b!4849826))

(assert (= (and b!4849826 res!2069753) b!4849827))

(declare-fun m!5848164 () Bool)

(assert (=> b!4849826 m!5848164))

(declare-fun m!5848166 () Bool)

(assert (=> b!4849827 m!5848166))

(assert (=> bs!1172760 d!1556467))

(declare-fun d!1556469 () Bool)

(declare-fun c!825381 () Bool)

(assert (=> d!1556469 (= c!825381 (is-Nil!55577 (toList!7869 lt!1989387)))))

(declare-fun e!3031639 () (Set tuple2!59288))

(assert (=> d!1556469 (= (content!9893 (toList!7869 lt!1989387)) e!3031639)))

(declare-fun b!4849832 () Bool)

(assert (=> b!4849832 (= e!3031639 (as set.empty (Set tuple2!59288)))))

(declare-fun b!4849833 () Bool)

(assert (=> b!4849833 (= e!3031639 (set.union (set.insert (h!62014 (toList!7869 lt!1989387)) (as set.empty (Set tuple2!59288))) (content!9893 (t!363197 (toList!7869 lt!1989387)))))))

(assert (= (and d!1556469 c!825381) b!4849832))

(assert (= (and d!1556469 (not c!825381)) b!4849833))

(declare-fun m!5848168 () Bool)

(assert (=> b!4849833 m!5848168))

(declare-fun m!5848170 () Bool)

(assert (=> b!4849833 m!5848170))

(assert (=> d!1556399 d!1556469))

(declare-fun d!1556471 () Bool)

(declare-fun res!2069754 () Bool)

(declare-fun e!3031640 () Bool)

(assert (=> d!1556471 (=> res!2069754 e!3031640)))

(assert (=> d!1556471 (= res!2069754 (and (is-Cons!55576 (t!363196 (apply!13452 lm!2646 (_1!32938 (h!62014 (toList!7869 lm!2646)))))) (= (_1!32937 (h!62013 (t!363196 (apply!13452 lm!2646 (_1!32938 (h!62014 (toList!7869 lm!2646))))))) key!6445)))))

(assert (=> d!1556471 (= (containsKey!4699 (t!363196 (apply!13452 lm!2646 (_1!32938 (h!62014 (toList!7869 lm!2646))))) key!6445) e!3031640)))

(declare-fun b!4849834 () Bool)

(declare-fun e!3031641 () Bool)

(assert (=> b!4849834 (= e!3031640 e!3031641)))

(declare-fun res!2069755 () Bool)

(assert (=> b!4849834 (=> (not res!2069755) (not e!3031641))))

(assert (=> b!4849834 (= res!2069755 (is-Cons!55576 (t!363196 (apply!13452 lm!2646 (_1!32938 (h!62014 (toList!7869 lm!2646)))))))))

(declare-fun b!4849835 () Bool)

(assert (=> b!4849835 (= e!3031641 (containsKey!4699 (t!363196 (t!363196 (apply!13452 lm!2646 (_1!32938 (h!62014 (toList!7869 lm!2646)))))) key!6445))))

(assert (= (and d!1556471 (not res!2069754)) b!4849834))

(assert (= (and b!4849834 res!2069755) b!4849835))

(declare-fun m!5848172 () Bool)

(assert (=> b!4849835 m!5848172))

(assert (=> b!4849752 d!1556471))

(assert (=> b!4849731 d!1556399))

(declare-fun d!1556473 () Bool)

(assert (=> d!1556473 (dynLambda!22363 lambda!242663 lt!1989391)))

(assert (=> d!1556473 true))

(declare-fun _$7!2488 () Unit!145722)

(assert (=> d!1556473 (= (choose!35488 (toList!7869 lm!2646) lambda!242663 lt!1989391) _$7!2488)))

(declare-fun b_lambda!192811 () Bool)

(assert (=> (not b_lambda!192811) (not d!1556473)))

(declare-fun bs!1172781 () Bool)

(assert (= bs!1172781 d!1556473))

(assert (=> bs!1172781 m!5847940))

(assert (=> d!1556357 d!1556473))

(assert (=> d!1556357 d!1556377))

(declare-fun d!1556475 () Bool)

(declare-fun choose!35493 (Hashable!7509 K!17377) (_ BitVec 64))

(assert (=> d!1556475 (= (hash!5621 hashF!1641 key!6445) (choose!35493 hashF!1641 key!6445))))

(declare-fun bs!1172782 () Bool)

(assert (= bs!1172782 d!1556475))

(declare-fun m!5848174 () Bool)

(assert (=> bs!1172782 m!5848174))

(assert (=> d!1556371 d!1556475))

(declare-fun d!1556477 () Bool)

(declare-fun res!2069756 () Bool)

(declare-fun e!3031642 () Bool)

(assert (=> d!1556477 (=> res!2069756 e!3031642)))

(assert (=> d!1556477 (= res!2069756 (not (is-Cons!55576 (_2!32938 lt!1989396))))))

(assert (=> d!1556477 (= (noDuplicateKeys!2597 (_2!32938 lt!1989396)) e!3031642)))

(declare-fun b!4849836 () Bool)

(declare-fun e!3031643 () Bool)

(assert (=> b!4849836 (= e!3031642 e!3031643)))

(declare-fun res!2069757 () Bool)

(assert (=> b!4849836 (=> (not res!2069757) (not e!3031643))))

(assert (=> b!4849836 (= res!2069757 (not (containsKey!4699 (t!363196 (_2!32938 lt!1989396)) (_1!32937 (h!62013 (_2!32938 lt!1989396))))))))

(declare-fun b!4849837 () Bool)

(assert (=> b!4849837 (= e!3031643 (noDuplicateKeys!2597 (t!363196 (_2!32938 lt!1989396))))))

(assert (= (and d!1556477 (not res!2069756)) b!4849836))

(assert (= (and b!4849836 res!2069757) b!4849837))

(declare-fun m!5848176 () Bool)

(assert (=> b!4849836 m!5848176))

(declare-fun m!5848178 () Bool)

(assert (=> b!4849837 m!5848178))

(assert (=> bs!1172761 d!1556477))

(declare-fun d!1556479 () Bool)

(assert (=> d!1556479 (= (isEmpty!29745 (getPair!1099 lt!1989389 key!6445)) (not (is-Some!13687 (getPair!1099 lt!1989389 key!6445))))))

(assert (=> d!1556389 d!1556479))

(declare-fun d!1556481 () Bool)

(assert (=> d!1556481 (= (get!19054 (getValueByKey!2737 (toList!7869 lm!2646) (_1!32938 (h!62014 (toList!7869 lm!2646))))) (v!49470 (getValueByKey!2737 (toList!7869 lm!2646) (_1!32938 (h!62014 (toList!7869 lm!2646))))))))

(assert (=> d!1556411 d!1556481))

(declare-fun b!4849848 () Bool)

(declare-fun e!3031649 () Option!13690)

(assert (=> b!4849848 (= e!3031649 (getValueByKey!2737 (t!363197 (toList!7869 lm!2646)) (_1!32938 (h!62014 (toList!7869 lm!2646)))))))

(declare-fun b!4849847 () Bool)

(declare-fun e!3031648 () Option!13690)

(assert (=> b!4849847 (= e!3031648 e!3031649)))

(declare-fun c!825387 () Bool)

(assert (=> b!4849847 (= c!825387 (and (is-Cons!55577 (toList!7869 lm!2646)) (not (= (_1!32938 (h!62014 (toList!7869 lm!2646))) (_1!32938 (h!62014 (toList!7869 lm!2646)))))))))

(declare-fun b!4849846 () Bool)

(assert (=> b!4849846 (= e!3031648 (Some!13689 (_2!32938 (h!62014 (toList!7869 lm!2646)))))))

(declare-fun b!4849849 () Bool)

(assert (=> b!4849849 (= e!3031649 None!13689)))

(declare-fun d!1556483 () Bool)

(declare-fun c!825386 () Bool)

(assert (=> d!1556483 (= c!825386 (and (is-Cons!55577 (toList!7869 lm!2646)) (= (_1!32938 (h!62014 (toList!7869 lm!2646))) (_1!32938 (h!62014 (toList!7869 lm!2646))))))))

(assert (=> d!1556483 (= (getValueByKey!2737 (toList!7869 lm!2646) (_1!32938 (h!62014 (toList!7869 lm!2646)))) e!3031648)))

(assert (= (and d!1556483 c!825386) b!4849846))

(assert (= (and d!1556483 (not c!825386)) b!4849847))

(assert (= (and b!4849847 c!825387) b!4849848))

(assert (= (and b!4849847 (not c!825387)) b!4849849))

(declare-fun m!5848180 () Bool)

(assert (=> b!4849848 m!5848180))

(assert (=> d!1556411 d!1556483))

(declare-fun d!1556485 () Bool)

(assert (=> d!1556485 (= (isDefined!10780 lt!1989456) (not (isEmpty!29745 lt!1989456)))))

(declare-fun bs!1172783 () Bool)

(assert (= bs!1172783 d!1556485))

(assert (=> bs!1172783 m!5848006))

(assert (=> b!4849732 d!1556485))

(declare-fun d!1556487 () Bool)

(assert (=> d!1556487 (= (isDefined!10780 lt!1989442) (not (isEmpty!29745 lt!1989442)))))

(declare-fun bs!1172784 () Bool)

(assert (= bs!1172784 d!1556487))

(assert (=> bs!1172784 m!5847952))

(assert (=> b!4849692 d!1556487))

(declare-fun d!1556489 () Bool)

(assert (=> d!1556489 (= (isEmpty!29745 (getPair!1099 lt!1989392 key!6445)) (not (is-Some!13687 (getPair!1099 lt!1989392 key!6445))))))

(assert (=> d!1556351 d!1556489))

(declare-fun d!1556491 () Bool)

(assert (=> d!1556491 (= (get!19054 (getValueByKey!2737 (toList!7869 lm!2646) lt!1989394)) (v!49470 (getValueByKey!2737 (toList!7869 lm!2646) lt!1989394)))))

(assert (=> d!1556359 d!1556491))

(declare-fun b!4849852 () Bool)

(declare-fun e!3031651 () Option!13690)

(assert (=> b!4849852 (= e!3031651 (getValueByKey!2737 (t!363197 (toList!7869 lm!2646)) lt!1989394))))

(declare-fun b!4849851 () Bool)

(declare-fun e!3031650 () Option!13690)

(assert (=> b!4849851 (= e!3031650 e!3031651)))

(declare-fun c!825389 () Bool)

(assert (=> b!4849851 (= c!825389 (and (is-Cons!55577 (toList!7869 lm!2646)) (not (= (_1!32938 (h!62014 (toList!7869 lm!2646))) lt!1989394))))))

(declare-fun b!4849850 () Bool)

(assert (=> b!4849850 (= e!3031650 (Some!13689 (_2!32938 (h!62014 (toList!7869 lm!2646)))))))

(declare-fun b!4849853 () Bool)

(assert (=> b!4849853 (= e!3031651 None!13689)))

(declare-fun d!1556493 () Bool)

(declare-fun c!825388 () Bool)

(assert (=> d!1556493 (= c!825388 (and (is-Cons!55577 (toList!7869 lm!2646)) (= (_1!32938 (h!62014 (toList!7869 lm!2646))) lt!1989394)))))

(assert (=> d!1556493 (= (getValueByKey!2737 (toList!7869 lm!2646) lt!1989394) e!3031650)))

(assert (= (and d!1556493 c!825388) b!4849850))

(assert (= (and d!1556493 (not c!825388)) b!4849851))

(assert (= (and b!4849851 c!825389) b!4849852))

(assert (= (and b!4849851 (not c!825389)) b!4849853))

(declare-fun m!5848182 () Bool)

(assert (=> b!4849852 m!5848182))

(assert (=> d!1556359 d!1556493))

(declare-fun d!1556495 () Bool)

(declare-fun res!2069758 () Bool)

(declare-fun e!3031652 () Bool)

(assert (=> d!1556495 (=> res!2069758 e!3031652)))

(assert (=> d!1556495 (= res!2069758 (is-Nil!55577 (t!363197 (toList!7869 lm!2646))))))

(assert (=> d!1556495 (= (forall!12962 (t!363197 (toList!7869 lm!2646)) lambda!242663) e!3031652)))

(declare-fun b!4849854 () Bool)

(declare-fun e!3031653 () Bool)

(assert (=> b!4849854 (= e!3031652 e!3031653)))

(declare-fun res!2069759 () Bool)

(assert (=> b!4849854 (=> (not res!2069759) (not e!3031653))))

(assert (=> b!4849854 (= res!2069759 (dynLambda!22363 lambda!242663 (h!62014 (t!363197 (toList!7869 lm!2646)))))))

(declare-fun b!4849855 () Bool)

(assert (=> b!4849855 (= e!3031653 (forall!12962 (t!363197 (t!363197 (toList!7869 lm!2646))) lambda!242663))))

(assert (= (and d!1556495 (not res!2069758)) b!4849854))

(assert (= (and b!4849854 res!2069759) b!4849855))

(declare-fun b_lambda!192813 () Bool)

(assert (=> (not b_lambda!192813) (not b!4849854)))

(declare-fun m!5848184 () Bool)

(assert (=> b!4849854 m!5848184))

(declare-fun m!5848186 () Bool)

(assert (=> b!4849855 m!5848186))

(assert (=> b!4849724 d!1556495))

(declare-fun d!1556497 () Bool)

(declare-fun res!2069764 () Bool)

(declare-fun e!3031658 () Bool)

(assert (=> d!1556497 (=> res!2069764 e!3031658)))

(assert (=> d!1556497 (= res!2069764 (and (is-Cons!55577 (toList!7869 lt!1989387)) (= (_1!32938 (h!62014 (toList!7869 lt!1989387))) lt!1989394)))))

(assert (=> d!1556497 (= (containsKey!4701 (toList!7869 lt!1989387) lt!1989394) e!3031658)))

(declare-fun b!4849860 () Bool)

(declare-fun e!3031659 () Bool)

(assert (=> b!4849860 (= e!3031658 e!3031659)))

(declare-fun res!2069765 () Bool)

(assert (=> b!4849860 (=> (not res!2069765) (not e!3031659))))

(assert (=> b!4849860 (= res!2069765 (and (or (not (is-Cons!55577 (toList!7869 lt!1989387))) (bvsle (_1!32938 (h!62014 (toList!7869 lt!1989387))) lt!1989394)) (is-Cons!55577 (toList!7869 lt!1989387)) (bvslt (_1!32938 (h!62014 (toList!7869 lt!1989387))) lt!1989394)))))

(declare-fun b!4849861 () Bool)

(assert (=> b!4849861 (= e!3031659 (containsKey!4701 (t!363197 (toList!7869 lt!1989387)) lt!1989394))))

(assert (= (and d!1556497 (not res!2069764)) b!4849860))

(assert (= (and b!4849860 res!2069765) b!4849861))

(declare-fun m!5848188 () Bool)

(assert (=> b!4849861 m!5848188))

(assert (=> d!1556403 d!1556497))

(declare-fun d!1556499 () Bool)

(declare-fun res!2069766 () Bool)

(declare-fun e!3031660 () Bool)

(assert (=> d!1556499 (=> res!2069766 e!3031660)))

(assert (=> d!1556499 (= res!2069766 (is-Nil!55577 (t!363197 (toList!7869 lt!1989387))))))

(assert (=> d!1556499 (= (forall!12962 (t!363197 (toList!7869 lt!1989387)) lambda!242663) e!3031660)))

(declare-fun b!4849862 () Bool)

(declare-fun e!3031661 () Bool)

(assert (=> b!4849862 (= e!3031660 e!3031661)))

(declare-fun res!2069767 () Bool)

(assert (=> b!4849862 (=> (not res!2069767) (not e!3031661))))

(assert (=> b!4849862 (= res!2069767 (dynLambda!22363 lambda!242663 (h!62014 (t!363197 (toList!7869 lt!1989387)))))))

(declare-fun b!4849863 () Bool)

(assert (=> b!4849863 (= e!3031661 (forall!12962 (t!363197 (t!363197 (toList!7869 lt!1989387))) lambda!242663))))

(assert (= (and d!1556499 (not res!2069766)) b!4849862))

(assert (= (and b!4849862 res!2069767) b!4849863))

(declare-fun b_lambda!192815 () Bool)

(assert (=> (not b_lambda!192815) (not b!4849862)))

(declare-fun m!5848190 () Bool)

(assert (=> b!4849862 m!5848190))

(declare-fun m!5848192 () Bool)

(assert (=> b!4849863 m!5848192))

(assert (=> b!4849726 d!1556499))

(declare-fun d!1556501 () Bool)

(declare-fun c!825390 () Bool)

(assert (=> d!1556501 (= c!825390 (is-Nil!55577 (toList!7869 lm!2646)))))

(declare-fun e!3031662 () (Set tuple2!59288))

(assert (=> d!1556501 (= (content!9893 (toList!7869 lm!2646)) e!3031662)))

(declare-fun b!4849864 () Bool)

(assert (=> b!4849864 (= e!3031662 (as set.empty (Set tuple2!59288)))))

(declare-fun b!4849865 () Bool)

(assert (=> b!4849865 (= e!3031662 (set.union (set.insert (h!62014 (toList!7869 lm!2646)) (as set.empty (Set tuple2!59288))) (content!9893 (t!363197 (toList!7869 lm!2646)))))))

(assert (= (and d!1556501 c!825390) b!4849864))

(assert (= (and d!1556501 (not c!825390)) b!4849865))

(declare-fun m!5848194 () Bool)

(assert (=> b!4849865 m!5848194))

(declare-fun m!5848196 () Bool)

(assert (=> b!4849865 m!5848196))

(assert (=> d!1556355 d!1556501))

(declare-fun d!1556503 () Bool)

(declare-fun isEmpty!29747 (Option!13690) Bool)

(assert (=> d!1556503 (= (isDefined!10782 (getValueByKey!2737 (toList!7869 lm!2646) lt!1989394)) (not (isEmpty!29747 (getValueByKey!2737 (toList!7869 lm!2646) lt!1989394))))))

(declare-fun bs!1172785 () Bool)

(assert (= bs!1172785 d!1556503))

(assert (=> bs!1172785 m!5847944))

(declare-fun m!5848198 () Bool)

(assert (=> bs!1172785 m!5848198))

(assert (=> b!4849710 d!1556503))

(assert (=> b!4849710 d!1556493))

(declare-fun lt!1989501 () Bool)

(declare-fun d!1556505 () Bool)

(assert (=> d!1556505 (= lt!1989501 (set.member (tuple2!59289 lt!1989394 lt!1989392) (content!9893 (toList!7869 lm!2646))))))

(declare-fun e!3031664 () Bool)

(assert (=> d!1556505 (= lt!1989501 e!3031664)))

(declare-fun res!2069768 () Bool)

(assert (=> d!1556505 (=> (not res!2069768) (not e!3031664))))

(assert (=> d!1556505 (= res!2069768 (is-Cons!55577 (toList!7869 lm!2646)))))

(assert (=> d!1556505 (= (contains!19239 (toList!7869 lm!2646) (tuple2!59289 lt!1989394 lt!1989392)) lt!1989501)))

(declare-fun b!4849866 () Bool)

(declare-fun e!3031663 () Bool)

(assert (=> b!4849866 (= e!3031664 e!3031663)))

(declare-fun res!2069769 () Bool)

(assert (=> b!4849866 (=> res!2069769 e!3031663)))

(assert (=> b!4849866 (= res!2069769 (= (h!62014 (toList!7869 lm!2646)) (tuple2!59289 lt!1989394 lt!1989392)))))

(declare-fun b!4849867 () Bool)

(assert (=> b!4849867 (= e!3031663 (contains!19239 (t!363197 (toList!7869 lm!2646)) (tuple2!59289 lt!1989394 lt!1989392)))))

(assert (= (and d!1556505 res!2069768) b!4849866))

(assert (= (and b!4849866 (not res!2069769)) b!4849867))

(assert (=> d!1556505 m!5847934))

(declare-fun m!5848200 () Bool)

(assert (=> d!1556505 m!5848200))

(declare-fun m!5848202 () Bool)

(assert (=> b!4849867 m!5848202))

(assert (=> d!1556353 d!1556505))

(declare-fun d!1556507 () Bool)

(assert (=> d!1556507 (contains!19239 (toList!7869 lm!2646) (tuple2!59289 lt!1989394 lt!1989392))))

(assert (=> d!1556507 true))

(declare-fun _$41!567 () Unit!145722)

(assert (=> d!1556507 (= (choose!35487 lm!2646 lt!1989394 lt!1989392) _$41!567)))

(declare-fun bs!1172786 () Bool)

(assert (= bs!1172786 d!1556507))

(assert (=> bs!1172786 m!5847930))

(assert (=> d!1556353 d!1556507))

(assert (=> d!1556353 d!1556365))

(declare-fun d!1556509 () Bool)

(declare-fun res!2069770 () Bool)

(declare-fun e!3031665 () Bool)

(assert (=> d!1556509 (=> res!2069770 e!3031665)))

(assert (=> d!1556509 (= res!2069770 (and (is-Cons!55576 lt!1989389) (= (_1!32937 (h!62013 lt!1989389)) key!6445)))))

(assert (=> d!1556509 (= (containsKey!4699 lt!1989389 key!6445) e!3031665)))

(declare-fun b!4849869 () Bool)

(declare-fun e!3031666 () Bool)

(assert (=> b!4849869 (= e!3031665 e!3031666)))

(declare-fun res!2069771 () Bool)

(assert (=> b!4849869 (=> (not res!2069771) (not e!3031666))))

(assert (=> b!4849869 (= res!2069771 (is-Cons!55576 lt!1989389))))

(declare-fun b!4849870 () Bool)

(assert (=> b!4849870 (= e!3031666 (containsKey!4699 (t!363196 lt!1989389) key!6445))))

(assert (= (and d!1556509 (not res!2069770)) b!4849869))

(assert (= (and b!4849869 res!2069771) b!4849870))

(declare-fun m!5848204 () Bool)

(assert (=> b!4849870 m!5848204))

(assert (=> b!4849736 d!1556509))

(declare-fun d!1556511 () Bool)

(declare-fun res!2069772 () Bool)

(declare-fun e!3031667 () Bool)

(assert (=> d!1556511 (=> res!2069772 e!3031667)))

(assert (=> d!1556511 (= res!2069772 (and (is-Cons!55576 lt!1989392) (= (_1!32937 (h!62013 lt!1989392)) key!6445)))))

(assert (=> d!1556511 (= (containsKey!4699 lt!1989392 key!6445) e!3031667)))

(declare-fun b!4849871 () Bool)

(declare-fun e!3031668 () Bool)

(assert (=> b!4849871 (= e!3031667 e!3031668)))

(declare-fun res!2069773 () Bool)

(assert (=> b!4849871 (=> (not res!2069773) (not e!3031668))))

(assert (=> b!4849871 (= res!2069773 (is-Cons!55576 lt!1989392))))

(declare-fun b!4849872 () Bool)

(assert (=> b!4849872 (= e!3031668 (containsKey!4699 (t!363196 lt!1989392) key!6445))))

(assert (= (and d!1556511 (not res!2069772)) b!4849871))

(assert (= (and b!4849871 res!2069773) b!4849872))

(declare-fun m!5848206 () Bool)

(assert (=> b!4849872 m!5848206))

(assert (=> b!4849696 d!1556511))

(declare-fun d!1556513 () Bool)

(declare-fun res!2069778 () Bool)

(declare-fun e!3031673 () Bool)

(assert (=> d!1556513 (=> res!2069778 e!3031673)))

(assert (=> d!1556513 (= res!2069778 (or (is-Nil!55577 (toList!7869 lm!2646)) (is-Nil!55577 (t!363197 (toList!7869 lm!2646)))))))

(assert (=> d!1556513 (= (isStrictlySorted!1086 (toList!7869 lm!2646)) e!3031673)))

(declare-fun b!4849877 () Bool)

(declare-fun e!3031674 () Bool)

(assert (=> b!4849877 (= e!3031673 e!3031674)))

(declare-fun res!2069779 () Bool)

(assert (=> b!4849877 (=> (not res!2069779) (not e!3031674))))

(assert (=> b!4849877 (= res!2069779 (bvslt (_1!32938 (h!62014 (toList!7869 lm!2646))) (_1!32938 (h!62014 (t!363197 (toList!7869 lm!2646))))))))

(declare-fun b!4849878 () Bool)

(assert (=> b!4849878 (= e!3031674 (isStrictlySorted!1086 (t!363197 (toList!7869 lm!2646))))))

(assert (= (and d!1556513 (not res!2069778)) b!4849877))

(assert (= (and b!4849877 res!2069779) b!4849878))

(declare-fun m!5848208 () Bool)

(assert (=> b!4849878 m!5848208))

(assert (=> d!1556379 d!1556513))

(declare-fun d!1556515 () Bool)

(declare-fun lt!1989502 () Bool)

(assert (=> d!1556515 (= lt!1989502 (set.member lt!1989391 (content!9893 (t!363197 (toList!7869 lm!2646)))))))

(declare-fun e!3031676 () Bool)

(assert (=> d!1556515 (= lt!1989502 e!3031676)))

(declare-fun res!2069780 () Bool)

(assert (=> d!1556515 (=> (not res!2069780) (not e!3031676))))

(assert (=> d!1556515 (= res!2069780 (is-Cons!55577 (t!363197 (toList!7869 lm!2646))))))

(assert (=> d!1556515 (= (contains!19239 (t!363197 (toList!7869 lm!2646)) lt!1989391) lt!1989502)))

(declare-fun b!4849879 () Bool)

(declare-fun e!3031675 () Bool)

(assert (=> b!4849879 (= e!3031676 e!3031675)))

(declare-fun res!2069781 () Bool)

(assert (=> b!4849879 (=> res!2069781 e!3031675)))

(assert (=> b!4849879 (= res!2069781 (= (h!62014 (t!363197 (toList!7869 lm!2646))) lt!1989391))))

(declare-fun b!4849880 () Bool)

(assert (=> b!4849880 (= e!3031675 (contains!19239 (t!363197 (t!363197 (toList!7869 lm!2646))) lt!1989391))))

(assert (= (and d!1556515 res!2069780) b!4849879))

(assert (= (and b!4849879 (not res!2069781)) b!4849880))

(assert (=> d!1556515 m!5848196))

(declare-fun m!5848210 () Bool)

(assert (=> d!1556515 m!5848210))

(declare-fun m!5848212 () Bool)

(assert (=> b!4849880 m!5848212))

(assert (=> b!4849668 d!1556515))

(declare-fun d!1556517 () Bool)

(declare-fun res!2069782 () Bool)

(declare-fun e!3031677 () Bool)

(assert (=> d!1556517 (=> res!2069782 e!3031677)))

(assert (=> d!1556517 (= res!2069782 (not (is-Cons!55576 (_2!32938 (h!62014 (toList!7869 lt!1989387))))))))

(assert (=> d!1556517 (= (noDuplicateKeys!2597 (_2!32938 (h!62014 (toList!7869 lt!1989387)))) e!3031677)))

(declare-fun b!4849881 () Bool)

(declare-fun e!3031678 () Bool)

(assert (=> b!4849881 (= e!3031677 e!3031678)))

(declare-fun res!2069783 () Bool)

(assert (=> b!4849881 (=> (not res!2069783) (not e!3031678))))

(assert (=> b!4849881 (= res!2069783 (not (containsKey!4699 (t!363196 (_2!32938 (h!62014 (toList!7869 lt!1989387)))) (_1!32937 (h!62013 (_2!32938 (h!62014 (toList!7869 lt!1989387))))))))))

(declare-fun b!4849882 () Bool)

(assert (=> b!4849882 (= e!3031678 (noDuplicateKeys!2597 (t!363196 (_2!32938 (h!62014 (toList!7869 lt!1989387))))))))

(assert (= (and d!1556517 (not res!2069782)) b!4849881))

(assert (= (and b!4849881 res!2069783) b!4849882))

(declare-fun m!5848214 () Bool)

(assert (=> b!4849881 m!5848214))

(declare-fun m!5848216 () Bool)

(assert (=> b!4849882 m!5848216))

(assert (=> bs!1172758 d!1556517))

(declare-fun d!1556519 () Bool)

(assert (=> d!1556519 (= (tail!9543 (toList!7869 lm!2646)) (t!363197 (toList!7869 lm!2646)))))

(assert (=> d!1556383 d!1556519))

(declare-fun d!1556521 () Bool)

(assert (=> d!1556521 (isDefined!10782 (getValueByKey!2737 (toList!7869 lt!1989387) lt!1989394))))

(declare-fun lt!1989505 () Unit!145722)

(declare-fun choose!35494 (List!55701 (_ BitVec 64)) Unit!145722)

(assert (=> d!1556521 (= lt!1989505 (choose!35494 (toList!7869 lt!1989387) lt!1989394))))

(declare-fun e!3031681 () Bool)

(assert (=> d!1556521 e!3031681))

(declare-fun res!2069786 () Bool)

(assert (=> d!1556521 (=> (not res!2069786) (not e!3031681))))

(assert (=> d!1556521 (= res!2069786 (isStrictlySorted!1086 (toList!7869 lt!1989387)))))

(assert (=> d!1556521 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2509 (toList!7869 lt!1989387) lt!1989394) lt!1989505)))

(declare-fun b!4849885 () Bool)

(assert (=> b!4849885 (= e!3031681 (containsKey!4701 (toList!7869 lt!1989387) lt!1989394))))

(assert (= (and d!1556521 res!2069786) b!4849885))

(assert (=> d!1556521 m!5848020))

(assert (=> d!1556521 m!5848020))

(assert (=> d!1556521 m!5848036))

(declare-fun m!5848218 () Bool)

(assert (=> d!1556521 m!5848218))

(declare-fun m!5848220 () Bool)

(assert (=> d!1556521 m!5848220))

(assert (=> b!4849885 m!5848032))

(assert (=> b!4849742 d!1556521))

(declare-fun d!1556523 () Bool)

(assert (=> d!1556523 (= (isDefined!10782 (getValueByKey!2737 (toList!7869 lt!1989387) lt!1989394)) (not (isEmpty!29747 (getValueByKey!2737 (toList!7869 lt!1989387) lt!1989394))))))

(declare-fun bs!1172787 () Bool)

(assert (= bs!1172787 d!1556523))

(assert (=> bs!1172787 m!5848020))

(declare-fun m!5848222 () Bool)

(assert (=> bs!1172787 m!5848222))

(assert (=> b!4849742 d!1556523))

(declare-fun b!4849888 () Bool)

(declare-fun e!3031683 () Option!13690)

(assert (=> b!4849888 (= e!3031683 (getValueByKey!2737 (t!363197 (toList!7869 lt!1989387)) lt!1989394))))

(declare-fun b!4849887 () Bool)

(declare-fun e!3031682 () Option!13690)

(assert (=> b!4849887 (= e!3031682 e!3031683)))

(declare-fun c!825392 () Bool)

(assert (=> b!4849887 (= c!825392 (and (is-Cons!55577 (toList!7869 lt!1989387)) (not (= (_1!32938 (h!62014 (toList!7869 lt!1989387))) lt!1989394))))))

(declare-fun b!4849886 () Bool)

(assert (=> b!4849886 (= e!3031682 (Some!13689 (_2!32938 (h!62014 (toList!7869 lt!1989387)))))))

(declare-fun b!4849889 () Bool)

(assert (=> b!4849889 (= e!3031683 None!13689)))

(declare-fun d!1556525 () Bool)

(declare-fun c!825391 () Bool)

(assert (=> d!1556525 (= c!825391 (and (is-Cons!55577 (toList!7869 lt!1989387)) (= (_1!32938 (h!62014 (toList!7869 lt!1989387))) lt!1989394)))))

(assert (=> d!1556525 (= (getValueByKey!2737 (toList!7869 lt!1989387) lt!1989394) e!3031682)))

(assert (= (and d!1556525 c!825391) b!4849886))

(assert (= (and d!1556525 (not c!825391)) b!4849887))

(assert (= (and b!4849887 c!825392) b!4849888))

(assert (= (and b!4849887 (not c!825392)) b!4849889))

(declare-fun m!5848224 () Bool)

(assert (=> b!4849888 m!5848224))

(assert (=> b!4849742 d!1556525))

(assert (=> d!1556413 d!1556409))

(assert (=> d!1556413 d!1556411))

(declare-fun d!1556527 () Bool)

(assert (=> d!1556527 (not (containsKey!4699 (apply!13452 lm!2646 (_1!32938 (h!62014 (toList!7869 lm!2646)))) key!6445))))

(assert (=> d!1556527 true))

(declare-fun _$39!508 () Unit!145722)

(assert (=> d!1556527 (= (choose!35489 lm!2646 key!6445 (_1!32938 (h!62014 (toList!7869 lm!2646))) hashF!1641) _$39!508)))

(declare-fun bs!1172788 () Bool)

(assert (= bs!1172788 d!1556527))

(assert (=> bs!1172788 m!5847838))

(assert (=> bs!1172788 m!5847838))

(assert (=> bs!1172788 m!5847840))

(assert (=> d!1556413 d!1556527))

(declare-fun d!1556529 () Bool)

(declare-fun res!2069787 () Bool)

(declare-fun e!3031684 () Bool)

(assert (=> d!1556529 (=> res!2069787 e!3031684)))

(assert (=> d!1556529 (= res!2069787 (is-Nil!55577 (toList!7869 lm!2646)))))

(assert (=> d!1556529 (= (forall!12962 (toList!7869 lm!2646) lambda!242682) e!3031684)))

(declare-fun b!4849890 () Bool)

(declare-fun e!3031685 () Bool)

(assert (=> b!4849890 (= e!3031684 e!3031685)))

(declare-fun res!2069788 () Bool)

(assert (=> b!4849890 (=> (not res!2069788) (not e!3031685))))

(assert (=> b!4849890 (= res!2069788 (dynLambda!22363 lambda!242682 (h!62014 (toList!7869 lm!2646))))))

(declare-fun b!4849891 () Bool)

(assert (=> b!4849891 (= e!3031685 (forall!12962 (t!363197 (toList!7869 lm!2646)) lambda!242682))))

(assert (= (and d!1556529 (not res!2069787)) b!4849890))

(assert (= (and b!4849890 res!2069788) b!4849891))

(declare-fun b_lambda!192817 () Bool)

(assert (=> (not b_lambda!192817) (not b!4849890)))

(declare-fun m!5848226 () Bool)

(assert (=> b!4849890 m!5848226))

(declare-fun m!5848228 () Bool)

(assert (=> b!4849891 m!5848228))

(assert (=> d!1556413 d!1556529))

(declare-fun d!1556531 () Bool)

(assert (=> d!1556531 (= (get!19055 lt!1989442) (v!49467 lt!1989442))))

(assert (=> b!4849693 d!1556531))

(declare-fun d!1556533 () Bool)

(assert (=> d!1556533 (= (get!19055 lt!1989456) (v!49467 lt!1989456))))

(assert (=> b!4849733 d!1556533))

(declare-fun d!1556535 () Bool)

(assert (=> d!1556535 (isDefined!10782 (getValueByKey!2737 (toList!7869 lm!2646) lt!1989394))))

(declare-fun lt!1989506 () Unit!145722)

(assert (=> d!1556535 (= lt!1989506 (choose!35494 (toList!7869 lm!2646) lt!1989394))))

(declare-fun e!3031686 () Bool)

(assert (=> d!1556535 e!3031686))

(declare-fun res!2069789 () Bool)

(assert (=> d!1556535 (=> (not res!2069789) (not e!3031686))))

(assert (=> d!1556535 (= res!2069789 (isStrictlySorted!1086 (toList!7869 lm!2646)))))

(assert (=> d!1556535 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2509 (toList!7869 lm!2646) lt!1989394) lt!1989506)))

(declare-fun b!4849892 () Bool)

(assert (=> b!4849892 (= e!3031686 (containsKey!4701 (toList!7869 lm!2646) lt!1989394))))

(assert (= (and d!1556535 res!2069789) b!4849892))

(assert (=> d!1556535 m!5847944))

(assert (=> d!1556535 m!5847944))

(assert (=> d!1556535 m!5847972))

(declare-fun m!5848230 () Bool)

(assert (=> d!1556535 m!5848230))

(assert (=> d!1556535 m!5847984))

(assert (=> b!4849892 m!5847968))

(assert (=> b!4849708 d!1556535))

(assert (=> b!4849708 d!1556503))

(assert (=> b!4849708 d!1556493))

(declare-fun d!1556537 () Bool)

(declare-fun lt!1989509 () Bool)

(declare-fun content!9895 (List!55700) (Set tuple2!59286))

(assert (=> d!1556537 (= lt!1989509 (set.member (get!19055 lt!1989456) (content!9895 lt!1989389)))))

(declare-fun e!3031691 () Bool)

(assert (=> d!1556537 (= lt!1989509 e!3031691)))

(declare-fun res!2069795 () Bool)

(assert (=> d!1556537 (=> (not res!2069795) (not e!3031691))))

(assert (=> d!1556537 (= res!2069795 (is-Cons!55576 lt!1989389))))

(assert (=> d!1556537 (= (contains!19243 lt!1989389 (get!19055 lt!1989456)) lt!1989509)))

(declare-fun b!4849897 () Bool)

(declare-fun e!3031692 () Bool)

(assert (=> b!4849897 (= e!3031691 e!3031692)))

(declare-fun res!2069794 () Bool)

(assert (=> b!4849897 (=> res!2069794 e!3031692)))

(assert (=> b!4849897 (= res!2069794 (= (h!62013 lt!1989389) (get!19055 lt!1989456)))))

(declare-fun b!4849898 () Bool)

(assert (=> b!4849898 (= e!3031692 (contains!19243 (t!363196 lt!1989389) (get!19055 lt!1989456)))))

(assert (= (and d!1556537 res!2069795) b!4849897))

(assert (= (and b!4849897 (not res!2069794)) b!4849898))

(declare-fun m!5848232 () Bool)

(assert (=> d!1556537 m!5848232))

(assert (=> d!1556537 m!5848002))

(declare-fun m!5848234 () Bool)

(assert (=> d!1556537 m!5848234))

(assert (=> b!4849898 m!5848002))

(declare-fun m!5848236 () Bool)

(assert (=> b!4849898 m!5848236))

(assert (=> b!4849734 d!1556537))

(assert (=> b!4849734 d!1556533))

(declare-fun d!1556539 () Bool)

(declare-fun res!2069796 () Bool)

(declare-fun e!3031693 () Bool)

(assert (=> d!1556539 (=> res!2069796 e!3031693)))

(assert (=> d!1556539 (= res!2069796 (is-Nil!55577 (toList!7869 lm!2646)))))

(assert (=> d!1556539 (= (forall!12962 (toList!7869 lm!2646) lambda!242678) e!3031693)))

(declare-fun b!4849899 () Bool)

(declare-fun e!3031694 () Bool)

(assert (=> b!4849899 (= e!3031693 e!3031694)))

(declare-fun res!2069797 () Bool)

(assert (=> b!4849899 (=> (not res!2069797) (not e!3031694))))

(assert (=> b!4849899 (= res!2069797 (dynLambda!22363 lambda!242678 (h!62014 (toList!7869 lm!2646))))))

(declare-fun b!4849900 () Bool)

(assert (=> b!4849900 (= e!3031694 (forall!12962 (t!363197 (toList!7869 lm!2646)) lambda!242678))))

(assert (= (and d!1556539 (not res!2069796)) b!4849899))

(assert (= (and b!4849899 res!2069797) b!4849900))

(declare-fun b_lambda!192819 () Bool)

(assert (=> (not b_lambda!192819) (not b!4849899)))

(declare-fun m!5848238 () Bool)

(assert (=> b!4849899 m!5848238))

(declare-fun m!5848240 () Bool)

(assert (=> b!4849900 m!5848240))

(assert (=> d!1556373 d!1556539))

(declare-fun lt!1989510 () Bool)

(declare-fun d!1556541 () Bool)

(assert (=> d!1556541 (= lt!1989510 (set.member (tuple2!59289 lt!1989394 lt!1989389) (content!9893 (toList!7869 lt!1989387))))))

(declare-fun e!3031696 () Bool)

(assert (=> d!1556541 (= lt!1989510 e!3031696)))

(declare-fun res!2069798 () Bool)

(assert (=> d!1556541 (=> (not res!2069798) (not e!3031696))))

(assert (=> d!1556541 (= res!2069798 (is-Cons!55577 (toList!7869 lt!1989387)))))

(assert (=> d!1556541 (= (contains!19239 (toList!7869 lt!1989387) (tuple2!59289 lt!1989394 lt!1989389)) lt!1989510)))

(declare-fun b!4849901 () Bool)

(declare-fun e!3031695 () Bool)

(assert (=> b!4849901 (= e!3031696 e!3031695)))

(declare-fun res!2069799 () Bool)

(assert (=> b!4849901 (=> res!2069799 e!3031695)))

(assert (=> b!4849901 (= res!2069799 (= (h!62014 (toList!7869 lt!1989387)) (tuple2!59289 lt!1989394 lt!1989389)))))

(declare-fun b!4849902 () Bool)

(assert (=> b!4849902 (= e!3031695 (contains!19239 (t!363197 (toList!7869 lt!1989387)) (tuple2!59289 lt!1989394 lt!1989389)))))

(assert (= (and d!1556541 res!2069798) b!4849901))

(assert (= (and b!4849901 (not res!2069799)) b!4849902))

(assert (=> d!1556541 m!5848024))

(declare-fun m!5848242 () Bool)

(assert (=> d!1556541 m!5848242))

(declare-fun m!5848244 () Bool)

(assert (=> b!4849902 m!5848244))

(assert (=> d!1556395 d!1556541))

(declare-fun d!1556543 () Bool)

(assert (=> d!1556543 (contains!19239 (toList!7869 lt!1989387) (tuple2!59289 lt!1989394 lt!1989389))))

(assert (=> d!1556543 true))

(declare-fun _$41!568 () Unit!145722)

(assert (=> d!1556543 (= (choose!35487 lt!1989387 lt!1989394 lt!1989389) _$41!568)))

(declare-fun bs!1172789 () Bool)

(assert (= bs!1172789 d!1556543))

(assert (=> bs!1172789 m!5848016))

(assert (=> d!1556395 d!1556543))

(assert (=> d!1556395 d!1556403))

(declare-fun d!1556545 () Bool)

(assert (=> d!1556545 (dynLambda!22363 lambda!242663 lt!1989396)))

(assert (=> d!1556545 true))

(declare-fun _$7!2489 () Unit!145722)

(assert (=> d!1556545 (= (choose!35488 (toList!7869 lt!1989387) lambda!242663 lt!1989396) _$7!2489)))

(declare-fun b_lambda!192821 () Bool)

(assert (=> (not b_lambda!192821) (not d!1556545)))

(declare-fun bs!1172790 () Bool)

(assert (= bs!1172790 d!1556545))

(assert (=> bs!1172790 m!5847994))

(assert (=> d!1556387 d!1556545))

(assert (=> d!1556387 d!1556381))

(declare-fun d!1556547 () Bool)

(declare-fun lt!1989511 () Bool)

(assert (=> d!1556547 (= lt!1989511 (set.member (get!19055 lt!1989442) (content!9895 lt!1989392)))))

(declare-fun e!3031697 () Bool)

(assert (=> d!1556547 (= lt!1989511 e!3031697)))

(declare-fun res!2069801 () Bool)

(assert (=> d!1556547 (=> (not res!2069801) (not e!3031697))))

(assert (=> d!1556547 (= res!2069801 (is-Cons!55576 lt!1989392))))

(assert (=> d!1556547 (= (contains!19243 lt!1989392 (get!19055 lt!1989442)) lt!1989511)))

(declare-fun b!4849903 () Bool)

(declare-fun e!3031698 () Bool)

(assert (=> b!4849903 (= e!3031697 e!3031698)))

(declare-fun res!2069800 () Bool)

(assert (=> b!4849903 (=> res!2069800 e!3031698)))

(assert (=> b!4849903 (= res!2069800 (= (h!62013 lt!1989392) (get!19055 lt!1989442)))))

(declare-fun b!4849904 () Bool)

(assert (=> b!4849904 (= e!3031698 (contains!19243 (t!363196 lt!1989392) (get!19055 lt!1989442)))))

(assert (= (and d!1556547 res!2069801) b!4849903))

(assert (= (and b!4849903 (not res!2069800)) b!4849904))

(declare-fun m!5848246 () Bool)

(assert (=> d!1556547 m!5848246))

(assert (=> d!1556547 m!5847948))

(declare-fun m!5848248 () Bool)

(assert (=> d!1556547 m!5848248))

(assert (=> b!4849904 m!5847948))

(declare-fun m!5848250 () Bool)

(assert (=> b!4849904 m!5848250))

(assert (=> b!4849694 d!1556547))

(assert (=> b!4849694 d!1556531))

(declare-fun d!1556549 () Bool)

(declare-fun lt!1989512 () Bool)

(assert (=> d!1556549 (= lt!1989512 (set.member lt!1989396 (content!9893 (t!363197 (toList!7869 lt!1989387)))))))

(declare-fun e!3031700 () Bool)

(assert (=> d!1556549 (= lt!1989512 e!3031700)))

(declare-fun res!2069802 () Bool)

(assert (=> d!1556549 (=> (not res!2069802) (not e!3031700))))

(assert (=> d!1556549 (= res!2069802 (is-Cons!55577 (t!363197 (toList!7869 lt!1989387))))))

(assert (=> d!1556549 (= (contains!19239 (t!363197 (toList!7869 lt!1989387)) lt!1989396) lt!1989512)))

(declare-fun b!4849905 () Bool)

(declare-fun e!3031699 () Bool)

(assert (=> b!4849905 (= e!3031700 e!3031699)))

(declare-fun res!2069803 () Bool)

(assert (=> b!4849905 (=> res!2069803 e!3031699)))

(assert (=> b!4849905 (= res!2069803 (= (h!62014 (t!363197 (toList!7869 lt!1989387))) lt!1989396))))

(declare-fun b!4849906 () Bool)

(assert (=> b!4849906 (= e!3031699 (contains!19239 (t!363197 (t!363197 (toList!7869 lt!1989387))) lt!1989396))))

(assert (= (and d!1556549 res!2069802) b!4849905))

(assert (= (and b!4849905 (not res!2069803)) b!4849906))

(assert (=> d!1556549 m!5848170))

(declare-fun m!5848252 () Bool)

(assert (=> d!1556549 m!5848252))

(declare-fun m!5848254 () Bool)

(assert (=> b!4849906 m!5848254))

(assert (=> b!4849741 d!1556549))

(assert (=> b!4849671 d!1556355))

(declare-fun d!1556551 () Bool)

(declare-fun res!2069804 () Bool)

(declare-fun e!3031701 () Bool)

(assert (=> d!1556551 (=> res!2069804 e!3031701)))

(assert (=> d!1556551 (= res!2069804 (not (is-Cons!55576 (_2!32938 lt!1989391))))))

(assert (=> d!1556551 (= (noDuplicateKeys!2597 (_2!32938 lt!1989391)) e!3031701)))

(declare-fun b!4849907 () Bool)

(declare-fun e!3031702 () Bool)

(assert (=> b!4849907 (= e!3031701 e!3031702)))

(declare-fun res!2069805 () Bool)

(assert (=> b!4849907 (=> (not res!2069805) (not e!3031702))))

(assert (=> b!4849907 (= res!2069805 (not (containsKey!4699 (t!363196 (_2!32938 lt!1989391)) (_1!32937 (h!62013 (_2!32938 lt!1989391))))))))

(declare-fun b!4849908 () Bool)

(assert (=> b!4849908 (= e!3031702 (noDuplicateKeys!2597 (t!363196 (_2!32938 lt!1989391))))))

(assert (= (and d!1556551 (not res!2069804)) b!4849907))

(assert (= (and b!4849907 res!2069805) b!4849908))

(declare-fun m!5848256 () Bool)

(assert (=> b!4849907 m!5848256))

(declare-fun m!5848258 () Bool)

(assert (=> b!4849908 m!5848258))

(assert (=> bs!1172759 d!1556551))

(declare-fun d!1556553 () Bool)

(assert (=> d!1556553 (= (get!19054 (getValueByKey!2737 (toList!7869 lt!1989387) lt!1989394)) (v!49470 (getValueByKey!2737 (toList!7869 lt!1989387) lt!1989394)))))

(assert (=> d!1556397 d!1556553))

(assert (=> d!1556397 d!1556525))

(declare-fun d!1556555 () Bool)

(assert (=> d!1556555 (= (isEmpty!29745 lt!1989442) (not (is-Some!13687 lt!1989442)))))

(assert (=> d!1556361 d!1556555))

(declare-fun d!1556557 () Bool)

(declare-fun res!2069806 () Bool)

(declare-fun e!3031703 () Bool)

(assert (=> d!1556557 (=> res!2069806 e!3031703)))

(assert (=> d!1556557 (= res!2069806 (not (is-Cons!55576 lt!1989392)))))

(assert (=> d!1556557 (= (noDuplicateKeys!2597 lt!1989392) e!3031703)))

(declare-fun b!4849909 () Bool)

(declare-fun e!3031704 () Bool)

(assert (=> b!4849909 (= e!3031703 e!3031704)))

(declare-fun res!2069807 () Bool)

(assert (=> b!4849909 (=> (not res!2069807) (not e!3031704))))

(assert (=> b!4849909 (= res!2069807 (not (containsKey!4699 (t!363196 lt!1989392) (_1!32937 (h!62013 lt!1989392)))))))

(declare-fun b!4849910 () Bool)

(assert (=> b!4849910 (= e!3031704 (noDuplicateKeys!2597 (t!363196 lt!1989392)))))

(assert (= (and d!1556557 (not res!2069806)) b!4849909))

(assert (= (and b!4849909 res!2069807) b!4849910))

(declare-fun m!5848260 () Bool)

(assert (=> b!4849909 m!5848260))

(declare-fun m!5848262 () Bool)

(assert (=> b!4849910 m!5848262))

(assert (=> d!1556361 d!1556557))

(declare-fun d!1556559 () Bool)

(declare-fun res!2069808 () Bool)

(declare-fun e!3031705 () Bool)

(assert (=> d!1556559 (=> res!2069808 e!3031705)))

(assert (=> d!1556559 (= res!2069808 (is-Nil!55577 (toList!7869 lt!1989387)))))

(assert (=> d!1556559 (= (forall!12962 (toList!7869 lt!1989387) lambda!242679) e!3031705)))

(declare-fun b!4849911 () Bool)

(declare-fun e!3031706 () Bool)

(assert (=> b!4849911 (= e!3031705 e!3031706)))

(declare-fun res!2069809 () Bool)

(assert (=> b!4849911 (=> (not res!2069809) (not e!3031706))))

(assert (=> b!4849911 (= res!2069809 (dynLambda!22363 lambda!242679 (h!62014 (toList!7869 lt!1989387))))))

(declare-fun b!4849912 () Bool)

(assert (=> b!4849912 (= e!3031706 (forall!12962 (t!363197 (toList!7869 lt!1989387)) lambda!242679))))

(assert (= (and d!1556559 (not res!2069808)) b!4849911))

(assert (= (and b!4849911 res!2069809) b!4849912))

(declare-fun b_lambda!192823 () Bool)

(assert (=> (not b_lambda!192823) (not b!4849911)))

(declare-fun m!5848264 () Bool)

(assert (=> b!4849911 m!5848264))

(declare-fun m!5848266 () Bool)

(assert (=> b!4849912 m!5848266))

(assert (=> d!1556401 d!1556559))

(declare-fun d!1556561 () Bool)

(declare-fun res!2069810 () Bool)

(declare-fun e!3031707 () Bool)

(assert (=> d!1556561 (=> res!2069810 e!3031707)))

(assert (=> d!1556561 (= res!2069810 (and (is-Cons!55576 (t!363196 (_2!32938 (h!62014 (toList!7869 lm!2646))))) (= (_1!32937 (h!62013 (t!363196 (_2!32938 (h!62014 (toList!7869 lm!2646)))))) key!6445)))))

(assert (=> d!1556561 (= (containsKey!4699 (t!363196 (_2!32938 (h!62014 (toList!7869 lm!2646)))) key!6445) e!3031707)))

(declare-fun b!4849913 () Bool)

(declare-fun e!3031708 () Bool)

(assert (=> b!4849913 (= e!3031707 e!3031708)))

(declare-fun res!2069811 () Bool)

(assert (=> b!4849913 (=> (not res!2069811) (not e!3031708))))

(assert (=> b!4849913 (= res!2069811 (is-Cons!55576 (t!363196 (_2!32938 (h!62014 (toList!7869 lm!2646))))))))

(declare-fun b!4849914 () Bool)

(assert (=> b!4849914 (= e!3031708 (containsKey!4699 (t!363196 (t!363196 (_2!32938 (h!62014 (toList!7869 lm!2646))))) key!6445))))

(assert (= (and d!1556561 (not res!2069810)) b!4849913))

(assert (= (and b!4849913 res!2069811) b!4849914))

(declare-fun m!5848268 () Bool)

(assert (=> b!4849914 m!5848268))

(assert (=> b!4849750 d!1556561))

(declare-fun b!4849915 () Bool)

(declare-fun e!3031712 () Bool)

(declare-fun e!3031709 () Bool)

(assert (=> b!4849915 (= e!3031712 e!3031709)))

(declare-fun res!2069812 () Bool)

(assert (=> b!4849915 (=> (not res!2069812) (not e!3031709))))

(declare-fun lt!1989513 () Option!13688)

(assert (=> b!4849915 (= res!2069812 (isDefined!10780 lt!1989513))))

(declare-fun b!4849916 () Bool)

(declare-fun res!2069815 () Bool)

(assert (=> b!4849916 (=> (not res!2069815) (not e!3031709))))

(assert (=> b!4849916 (= res!2069815 (= (_1!32937 (get!19055 lt!1989513)) key!6445))))

(declare-fun b!4849917 () Bool)

(assert (=> b!4849917 (= e!3031709 (contains!19243 (t!363196 lt!1989392) (get!19055 lt!1989513)))))

(declare-fun b!4849918 () Bool)

(declare-fun e!3031711 () Option!13688)

(declare-fun e!3031713 () Option!13688)

(assert (=> b!4849918 (= e!3031711 e!3031713)))

(declare-fun c!825393 () Bool)

(assert (=> b!4849918 (= c!825393 (is-Cons!55576 (t!363196 lt!1989392)))))

(declare-fun b!4849919 () Bool)

(declare-fun e!3031710 () Bool)

(assert (=> b!4849919 (= e!3031710 (not (containsKey!4699 (t!363196 lt!1989392) key!6445)))))

(declare-fun d!1556563 () Bool)

(assert (=> d!1556563 e!3031712))

(declare-fun res!2069813 () Bool)

(assert (=> d!1556563 (=> res!2069813 e!3031712)))

(assert (=> d!1556563 (= res!2069813 e!3031710)))

(declare-fun res!2069814 () Bool)

(assert (=> d!1556563 (=> (not res!2069814) (not e!3031710))))

(assert (=> d!1556563 (= res!2069814 (isEmpty!29745 lt!1989513))))

(assert (=> d!1556563 (= lt!1989513 e!3031711)))

(declare-fun c!825394 () Bool)

(assert (=> d!1556563 (= c!825394 (and (is-Cons!55576 (t!363196 lt!1989392)) (= (_1!32937 (h!62013 (t!363196 lt!1989392))) key!6445)))))

(assert (=> d!1556563 (noDuplicateKeys!2597 (t!363196 lt!1989392))))

(assert (=> d!1556563 (= (getPair!1099 (t!363196 lt!1989392) key!6445) lt!1989513)))

(declare-fun b!4849920 () Bool)

(assert (=> b!4849920 (= e!3031713 None!13687)))

(declare-fun b!4849921 () Bool)

(assert (=> b!4849921 (= e!3031711 (Some!13687 (h!62013 (t!363196 lt!1989392))))))

(declare-fun b!4849922 () Bool)

(assert (=> b!4849922 (= e!3031713 (getPair!1099 (t!363196 (t!363196 lt!1989392)) key!6445))))

(assert (= (and d!1556563 c!825394) b!4849921))

(assert (= (and d!1556563 (not c!825394)) b!4849918))

(assert (= (and b!4849918 c!825393) b!4849922))

(assert (= (and b!4849918 (not c!825393)) b!4849920))

(assert (= (and d!1556563 res!2069814) b!4849919))

(assert (= (and d!1556563 (not res!2069813)) b!4849915))

(assert (= (and b!4849915 res!2069812) b!4849916))

(assert (= (and b!4849916 res!2069815) b!4849917))

(declare-fun m!5848270 () Bool)

(assert (=> b!4849917 m!5848270))

(assert (=> b!4849917 m!5848270))

(declare-fun m!5848272 () Bool)

(assert (=> b!4849917 m!5848272))

(declare-fun m!5848274 () Bool)

(assert (=> d!1556563 m!5848274))

(assert (=> d!1556563 m!5848262))

(assert (=> b!4849916 m!5848270))

(declare-fun m!5848276 () Bool)

(assert (=> b!4849915 m!5848276))

(declare-fun m!5848278 () Bool)

(assert (=> b!4849922 m!5848278))

(assert (=> b!4849919 m!5848206))

(assert (=> b!4849699 d!1556563))

(declare-fun b!4849923 () Bool)

(declare-fun e!3031717 () Bool)

(declare-fun e!3031714 () Bool)

(assert (=> b!4849923 (= e!3031717 e!3031714)))

(declare-fun res!2069816 () Bool)

(assert (=> b!4849923 (=> (not res!2069816) (not e!3031714))))

(declare-fun lt!1989514 () Option!13688)

(assert (=> b!4849923 (= res!2069816 (isDefined!10780 lt!1989514))))

(declare-fun b!4849924 () Bool)

(declare-fun res!2069819 () Bool)

(assert (=> b!4849924 (=> (not res!2069819) (not e!3031714))))

(assert (=> b!4849924 (= res!2069819 (= (_1!32937 (get!19055 lt!1989514)) key!6445))))

(declare-fun b!4849925 () Bool)

(assert (=> b!4849925 (= e!3031714 (contains!19243 (t!363196 lt!1989389) (get!19055 lt!1989514)))))

(declare-fun b!4849926 () Bool)

(declare-fun e!3031716 () Option!13688)

(declare-fun e!3031718 () Option!13688)

(assert (=> b!4849926 (= e!3031716 e!3031718)))

(declare-fun c!825395 () Bool)

(assert (=> b!4849926 (= c!825395 (is-Cons!55576 (t!363196 lt!1989389)))))

(declare-fun b!4849927 () Bool)

(declare-fun e!3031715 () Bool)

(assert (=> b!4849927 (= e!3031715 (not (containsKey!4699 (t!363196 lt!1989389) key!6445)))))

(declare-fun d!1556565 () Bool)

(assert (=> d!1556565 e!3031717))

(declare-fun res!2069817 () Bool)

(assert (=> d!1556565 (=> res!2069817 e!3031717)))

(assert (=> d!1556565 (= res!2069817 e!3031715)))

(declare-fun res!2069818 () Bool)

(assert (=> d!1556565 (=> (not res!2069818) (not e!3031715))))

(assert (=> d!1556565 (= res!2069818 (isEmpty!29745 lt!1989514))))

(assert (=> d!1556565 (= lt!1989514 e!3031716)))

(declare-fun c!825396 () Bool)

(assert (=> d!1556565 (= c!825396 (and (is-Cons!55576 (t!363196 lt!1989389)) (= (_1!32937 (h!62013 (t!363196 lt!1989389))) key!6445)))))

(assert (=> d!1556565 (noDuplicateKeys!2597 (t!363196 lt!1989389))))

(assert (=> d!1556565 (= (getPair!1099 (t!363196 lt!1989389) key!6445) lt!1989514)))

(declare-fun b!4849928 () Bool)

(assert (=> b!4849928 (= e!3031718 None!13687)))

(declare-fun b!4849929 () Bool)

(assert (=> b!4849929 (= e!3031716 (Some!13687 (h!62013 (t!363196 lt!1989389))))))

(declare-fun b!4849930 () Bool)

(assert (=> b!4849930 (= e!3031718 (getPair!1099 (t!363196 (t!363196 lt!1989389)) key!6445))))

(assert (= (and d!1556565 c!825396) b!4849929))

(assert (= (and d!1556565 (not c!825396)) b!4849926))

(assert (= (and b!4849926 c!825395) b!4849930))

(assert (= (and b!4849926 (not c!825395)) b!4849928))

(assert (= (and d!1556565 res!2069818) b!4849927))

(assert (= (and d!1556565 (not res!2069817)) b!4849923))

(assert (= (and b!4849923 res!2069816) b!4849924))

(assert (= (and b!4849924 res!2069819) b!4849925))

(declare-fun m!5848280 () Bool)

(assert (=> b!4849925 m!5848280))

(assert (=> b!4849925 m!5848280))

(declare-fun m!5848282 () Bool)

(assert (=> b!4849925 m!5848282))

(declare-fun m!5848284 () Bool)

(assert (=> d!1556565 m!5848284))

(declare-fun m!5848286 () Bool)

(assert (=> d!1556565 m!5848286))

(assert (=> b!4849924 m!5848280))

(declare-fun m!5848288 () Bool)

(assert (=> b!4849923 m!5848288))

(declare-fun m!5848290 () Bool)

(assert (=> b!4849930 m!5848290))

(assert (=> b!4849927 m!5848204))

(assert (=> b!4849739 d!1556565))

(declare-fun d!1556567 () Bool)

(declare-fun res!2069820 () Bool)

(declare-fun e!3031719 () Bool)

(assert (=> d!1556567 (=> res!2069820 e!3031719)))

(assert (=> d!1556567 (= res!2069820 (and (is-Cons!55577 (toList!7869 lm!2646)) (= (_1!32938 (h!62014 (toList!7869 lm!2646))) lt!1989394)))))

(assert (=> d!1556567 (= (containsKey!4701 (toList!7869 lm!2646) lt!1989394) e!3031719)))

(declare-fun b!4849931 () Bool)

(declare-fun e!3031720 () Bool)

(assert (=> b!4849931 (= e!3031719 e!3031720)))

(declare-fun res!2069821 () Bool)

(assert (=> b!4849931 (=> (not res!2069821) (not e!3031720))))

(assert (=> b!4849931 (= res!2069821 (and (or (not (is-Cons!55577 (toList!7869 lm!2646))) (bvsle (_1!32938 (h!62014 (toList!7869 lm!2646))) lt!1989394)) (is-Cons!55577 (toList!7869 lm!2646)) (bvslt (_1!32938 (h!62014 (toList!7869 lm!2646))) lt!1989394)))))

(declare-fun b!4849932 () Bool)

(assert (=> b!4849932 (= e!3031720 (containsKey!4701 (t!363197 (toList!7869 lm!2646)) lt!1989394))))

(assert (= (and d!1556567 (not res!2069820)) b!4849931))

(assert (= (and b!4849931 res!2069821) b!4849932))

(declare-fun m!5848292 () Bool)

(assert (=> b!4849932 m!5848292))

(assert (=> d!1556365 d!1556567))

(assert (=> b!4849744 d!1556523))

(assert (=> b!4849744 d!1556525))

(declare-fun d!1556569 () Bool)

(assert (=> d!1556569 (= (isEmpty!29745 lt!1989456) (not (is-Some!13687 lt!1989456)))))

(assert (=> d!1556393 d!1556569))

(declare-fun d!1556571 () Bool)

(declare-fun res!2069822 () Bool)

(declare-fun e!3031721 () Bool)

(assert (=> d!1556571 (=> res!2069822 e!3031721)))

(assert (=> d!1556571 (= res!2069822 (not (is-Cons!55576 lt!1989389)))))

(assert (=> d!1556571 (= (noDuplicateKeys!2597 lt!1989389) e!3031721)))

(declare-fun b!4849933 () Bool)

(declare-fun e!3031722 () Bool)

(assert (=> b!4849933 (= e!3031721 e!3031722)))

(declare-fun res!2069823 () Bool)

(assert (=> b!4849933 (=> (not res!2069823) (not e!3031722))))

(assert (=> b!4849933 (= res!2069823 (not (containsKey!4699 (t!363196 lt!1989389) (_1!32937 (h!62013 lt!1989389)))))))

(declare-fun b!4849934 () Bool)

(assert (=> b!4849934 (= e!3031722 (noDuplicateKeys!2597 (t!363196 lt!1989389)))))

(assert (= (and d!1556571 (not res!2069822)) b!4849933))

(assert (= (and b!4849933 res!2069823) b!4849934))

(declare-fun m!5848294 () Bool)

(assert (=> b!4849933 m!5848294))

(assert (=> b!4849934 m!5848286))

(assert (=> d!1556393 d!1556571))

(declare-fun b!4849939 () Bool)

(declare-fun e!3031725 () Bool)

(declare-fun tp_is_empty!35225 () Bool)

(declare-fun tp!1364779 () Bool)

(assert (=> b!4849939 (= e!3031725 (and tp_is_empty!35221 tp_is_empty!35225 tp!1364779))))

(assert (=> b!4849757 (= tp!1364769 e!3031725)))

(assert (= (and b!4849757 (is-Cons!55576 (_2!32938 (h!62014 (toList!7869 lm!2646))))) b!4849939))

(declare-fun b!4849940 () Bool)

(declare-fun e!3031726 () Bool)

(declare-fun tp!1364780 () Bool)

(declare-fun tp!1364781 () Bool)

(assert (=> b!4849940 (= e!3031726 (and tp!1364780 tp!1364781))))

(assert (=> b!4849757 (= tp!1364770 e!3031726)))

(assert (= (and b!4849757 (is-Cons!55577 (t!363197 (toList!7869 lm!2646)))) b!4849940))

(declare-fun b_lambda!192825 () Bool)

(assert (= b_lambda!192821 (or start!505798 b_lambda!192825)))

(assert (=> d!1556545 d!1556421))

(declare-fun b_lambda!192827 () Bool)

(assert (= b_lambda!192813 (or start!505798 b_lambda!192827)))

(declare-fun bs!1172791 () Bool)

(declare-fun d!1556573 () Bool)

(assert (= bs!1172791 (and d!1556573 start!505798)))

(assert (=> bs!1172791 (= (dynLambda!22363 lambda!242663 (h!62014 (t!363197 (toList!7869 lm!2646)))) (noDuplicateKeys!2597 (_2!32938 (h!62014 (t!363197 (toList!7869 lm!2646))))))))

(declare-fun m!5848296 () Bool)

(assert (=> bs!1172791 m!5848296))

(assert (=> b!4849854 d!1556573))

(declare-fun b_lambda!192829 () Bool)

(assert (= b_lambda!192811 (or start!505798 b_lambda!192829)))

(assert (=> d!1556473 d!1556417))

(declare-fun b_lambda!192831 () Bool)

(assert (= b_lambda!192823 (or d!1556401 b_lambda!192831)))

(declare-fun bs!1172792 () Bool)

(declare-fun d!1556575 () Bool)

(assert (= bs!1172792 (and d!1556575 d!1556401)))

(declare-fun allKeysSameHash!2037 (List!55700 (_ BitVec 64) Hashable!7509) Bool)

(assert (=> bs!1172792 (= (dynLambda!22363 lambda!242679 (h!62014 (toList!7869 lt!1989387))) (allKeysSameHash!2037 (_2!32938 (h!62014 (toList!7869 lt!1989387))) (_1!32938 (h!62014 (toList!7869 lt!1989387))) hashF!1641))))

(declare-fun m!5848298 () Bool)

(assert (=> bs!1172792 m!5848298))

(assert (=> b!4849911 d!1556575))

(declare-fun b_lambda!192833 () Bool)

(assert (= b_lambda!192819 (or d!1556373 b_lambda!192833)))

(declare-fun bs!1172793 () Bool)

(declare-fun d!1556577 () Bool)

(assert (= bs!1172793 (and d!1556577 d!1556373)))

(assert (=> bs!1172793 (= (dynLambda!22363 lambda!242678 (h!62014 (toList!7869 lm!2646))) (allKeysSameHash!2037 (_2!32938 (h!62014 (toList!7869 lm!2646))) (_1!32938 (h!62014 (toList!7869 lm!2646))) hashF!1641))))

(declare-fun m!5848300 () Bool)

(assert (=> bs!1172793 m!5848300))

(assert (=> b!4849899 d!1556577))

(declare-fun b_lambda!192835 () Bool)

(assert (= b_lambda!192817 (or d!1556413 b_lambda!192835)))

(declare-fun bs!1172794 () Bool)

(declare-fun d!1556579 () Bool)

(assert (= bs!1172794 (and d!1556579 d!1556413)))

(assert (=> bs!1172794 (= (dynLambda!22363 lambda!242682 (h!62014 (toList!7869 lm!2646))) (noDuplicateKeys!2597 (_2!32938 (h!62014 (toList!7869 lm!2646)))))))

(assert (=> bs!1172794 m!5848058))

(assert (=> b!4849890 d!1556579))

(declare-fun b_lambda!192837 () Bool)

(assert (= b_lambda!192815 (or start!505798 b_lambda!192837)))

(declare-fun bs!1172795 () Bool)

(declare-fun d!1556581 () Bool)

(assert (= bs!1172795 (and d!1556581 start!505798)))

(assert (=> bs!1172795 (= (dynLambda!22363 lambda!242663 (h!62014 (t!363197 (toList!7869 lt!1989387)))) (noDuplicateKeys!2597 (_2!32938 (h!62014 (t!363197 (toList!7869 lt!1989387))))))))

(declare-fun m!5848302 () Bool)

(assert (=> bs!1172795 m!5848302))

(assert (=> b!4849862 d!1556581))

(push 1)

(assert (not b!4849932))

(assert (not b!4849870))

(assert (not b_lambda!192827))

(assert (not b!4849852))

(assert (not b!4849865))

(assert (not b!4849915))

(assert (not b_lambda!192793))

(assert (not b!4849900))

(assert (not b!4849927))

(assert (not bs!1172795))

(assert (not b_lambda!192837))

(assert (not b_lambda!192791))

(assert (not b!4849925))

(assert tp_is_empty!35221)

(assert (not d!1556535))

(assert (not b!4849861))

(assert (not b_lambda!192829))

(assert (not d!1556549))

(assert (not b!4849914))

(assert (not b!4849902))

(assert (not d!1556541))

(assert (not b!4849934))

(assert (not d!1556475))

(assert (not b!4849898))

(assert (not bs!1172794))

(assert (not b!4849880))

(assert (not b!4849908))

(assert (not d!1556527))

(assert (not b_lambda!192789))

(assert (not b!4849906))

(assert (not b!4849863))

(assert (not bs!1172791))

(assert (not b!4849835))

(assert (not d!1556485))

(assert (not b!4849836))

(assert (not b!4849833))

(assert (not b!4849881))

(assert (not b!4849917))

(assert (not b!4849922))

(assert (not b!4849837))

(assert (not d!1556543))

(assert (not d!1556523))

(assert (not b!4849826))

(assert (not b!4849878))

(assert (not b_lambda!192833))

(assert (not d!1556563))

(assert (not d!1556521))

(assert (not d!1556565))

(assert (not b_lambda!192825))

(assert (not b!4849904))

(assert (not b!4849855))

(assert (not d!1556505))

(assert (not b!4849848))

(assert (not b_lambda!192835))

(assert (not b_lambda!192831))

(assert (not b!4849923))

(assert (not d!1556507))

(assert (not b!4849916))

(assert (not b!4849872))

(assert (not d!1556487))

(assert (not d!1556537))

(assert (not b!4849885))

(assert (not b!4849892))

(assert (not b!4849930))

(assert (not b!4849867))

(assert (not d!1556503))

(assert (not b!4849939))

(assert (not b!4849910))

(assert (not d!1556547))

(assert (not d!1556515))

(assert (not b!4849940))

(assert (not b!4849933))

(assert (not bs!1172793))

(assert (not b!4849919))

(assert (not b!4849827))

(assert (not bs!1172792))

(assert (not b!4849909))

(assert (not b!4849912))

(assert (not b!4849882))

(assert tp_is_empty!35225)

(assert (not b!4849907))

(assert (not b!4849924))

(assert (not b_lambda!192795))

(assert (not b!4849891))

(assert (not b!4849888))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

