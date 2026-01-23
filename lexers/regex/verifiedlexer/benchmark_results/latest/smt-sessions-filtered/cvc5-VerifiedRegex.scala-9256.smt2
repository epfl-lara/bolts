; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!490904 () Bool)

(assert start!490904)

(declare-fun b!4781335 () Bool)

(declare-fun e!2985029 () Bool)

(declare-fun tp!1357439 () Bool)

(assert (=> b!4781335 (= e!2985029 tp!1357439)))

(declare-fun b!4781336 () Bool)

(declare-fun res!2030129 () Bool)

(declare-fun e!2985028 () Bool)

(assert (=> b!4781336 (=> res!2030129 e!2985028)))

(declare-datatypes ((K!15567 0))(
  ( (K!15568 (val!20759 Int)) )
))
(declare-datatypes ((V!15813 0))(
  ( (V!15814 (val!20760 Int)) )
))
(declare-datatypes ((tuple2!56492 0))(
  ( (tuple2!56493 (_1!31540 K!15567) (_2!31540 V!15813)) )
))
(declare-datatypes ((List!54123 0))(
  ( (Nil!53999) (Cons!53999 (h!60419 tuple2!56492) (t!361573 List!54123)) )
))
(declare-datatypes ((tuple2!56494 0))(
  ( (tuple2!56495 (_1!31541 (_ BitVec 64)) (_2!31541 List!54123)) )
))
(declare-datatypes ((List!54124 0))(
  ( (Nil!54000) (Cons!54000 (h!60420 tuple2!56494) (t!361574 List!54124)) )
))
(declare-datatypes ((ListLongMap!5163 0))(
  ( (ListLongMap!5164 (toList!6741 List!54124)) )
))
(declare-fun lm!2709 () ListLongMap!5163)

(declare-fun lambda!228206 () Int)

(declare-fun forall!12123 (List!54124 Int) Bool)

(assert (=> b!4781336 (= res!2030129 (not (forall!12123 (toList!6741 lm!2709) lambda!228206)))))

(declare-fun b!4781337 () Bool)

(declare-fun e!2985030 () Bool)

(assert (=> b!4781337 (= e!2985030 e!2985028)))

(declare-fun res!2030133 () Bool)

(assert (=> b!4781337 (=> res!2030133 e!2985028)))

(declare-fun key!6641 () K!15567)

(declare-fun containsKey!3807 (List!54123 K!15567) Bool)

(assert (=> b!4781337 (= res!2030133 (containsKey!3807 (_2!31541 (h!60420 (toList!6741 lm!2709))) key!6641))))

(declare-fun apply!12886 (ListLongMap!5163 (_ BitVec 64)) List!54123)

(assert (=> b!4781337 (not (containsKey!3807 (apply!12886 lm!2709 (_1!31541 (h!60420 (toList!6741 lm!2709)))) key!6641))))

(declare-datatypes ((Unit!139271 0))(
  ( (Unit!139272) )
))
(declare-fun lt!1943806 () Unit!139271)

(declare-datatypes ((Hashable!6831 0))(
  ( (HashableExt!6830 (__x!32854 Int)) )
))
(declare-fun hashF!1687 () Hashable!6831)

(declare-fun lemmaNotSameHashThenCannotContainKey!185 (ListLongMap!5163 K!15567 (_ BitVec 64) Hashable!6831) Unit!139271)

(assert (=> b!4781337 (= lt!1943806 (lemmaNotSameHashThenCannotContainKey!185 lm!2709 key!6641 (_1!31541 (h!60420 (toList!6741 lm!2709))) hashF!1687))))

(declare-fun b!4781338 () Bool)

(declare-fun res!2030135 () Bool)

(declare-fun e!2985027 () Bool)

(assert (=> b!4781338 (=> (not res!2030135) (not e!2985027))))

(declare-fun allKeysSameHashInMap!2236 (ListLongMap!5163 Hashable!6831) Bool)

(assert (=> b!4781338 (= res!2030135 (allKeysSameHashInMap!2236 lm!2709 hashF!1687))))

(declare-fun res!2030132 () Bool)

(assert (=> start!490904 (=> (not res!2030132) (not e!2985027))))

(assert (=> start!490904 (= res!2030132 (forall!12123 (toList!6741 lm!2709) lambda!228206))))

(assert (=> start!490904 e!2985027))

(declare-fun inv!69594 (ListLongMap!5163) Bool)

(assert (=> start!490904 (and (inv!69594 lm!2709) e!2985029)))

(assert (=> start!490904 true))

(declare-fun tp_is_empty!33225 () Bool)

(assert (=> start!490904 tp_is_empty!33225))

(declare-fun tp_is_empty!33227 () Bool)

(assert (=> start!490904 tp_is_empty!33227))

(declare-fun b!4781339 () Bool)

(declare-fun res!2030130 () Bool)

(assert (=> b!4781339 (=> (not res!2030130) (not e!2985027))))

(declare-fun containsKeyBiggerList!487 (List!54124 K!15567) Bool)

(assert (=> b!4781339 (= res!2030130 (containsKeyBiggerList!487 (toList!6741 lm!2709) key!6641))))

(declare-fun b!4781340 () Bool)

(declare-fun head!10359 (List!54124) tuple2!56494)

(assert (=> b!4781340 (= e!2985028 (not (containsKey!3807 (_2!31541 (head!10359 (toList!6741 lm!2709))) key!6641)))))

(declare-fun b!4781341 () Bool)

(assert (=> b!4781341 (= e!2985027 (not e!2985030))))

(declare-fun res!2030134 () Bool)

(assert (=> b!4781341 (=> res!2030134 e!2985030)))

(declare-datatypes ((Option!12931 0))(
  ( (None!12930) (Some!12930 (v!48137 tuple2!56492)) )
))
(declare-fun lt!1943803 () Option!12931)

(declare-fun v!11584 () V!15813)

(declare-fun get!18359 (Option!12931) tuple2!56492)

(assert (=> b!4781341 (= res!2030134 (not (= (_2!31540 (get!18359 lt!1943803)) v!11584)))))

(declare-fun isDefined!10075 (Option!12931) Bool)

(assert (=> b!4781341 (isDefined!10075 lt!1943803)))

(declare-fun lt!1943798 () List!54123)

(declare-fun getPair!803 (List!54123 K!15567) Option!12931)

(assert (=> b!4781341 (= lt!1943803 (getPair!803 lt!1943798 key!6641))))

(declare-fun lt!1943807 () tuple2!56494)

(declare-fun lt!1943802 () Unit!139271)

(declare-fun forallContained!4067 (List!54124 Int tuple2!56494) Unit!139271)

(assert (=> b!4781341 (= lt!1943802 (forallContained!4067 (toList!6741 lm!2709) lambda!228206 lt!1943807))))

(declare-fun lt!1943808 () Unit!139271)

(declare-fun lemmaInGenMapThenGetPairDefined!577 (ListLongMap!5163 K!15567 Hashable!6831) Unit!139271)

(assert (=> b!4781341 (= lt!1943808 (lemmaInGenMapThenGetPairDefined!577 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1943799 () Unit!139271)

(assert (=> b!4781341 (= lt!1943799 (forallContained!4067 (toList!6741 lm!2709) lambda!228206 lt!1943807))))

(declare-fun contains!17533 (List!54124 tuple2!56494) Bool)

(assert (=> b!4781341 (contains!17533 (toList!6741 lm!2709) lt!1943807)))

(declare-fun lt!1943801 () (_ BitVec 64))

(assert (=> b!4781341 (= lt!1943807 (tuple2!56495 lt!1943801 lt!1943798))))

(declare-fun lt!1943805 () Unit!139271)

(declare-fun lemmaGetValueImpliesTupleContained!610 (ListLongMap!5163 (_ BitVec 64) List!54123) Unit!139271)

(assert (=> b!4781341 (= lt!1943805 (lemmaGetValueImpliesTupleContained!610 lm!2709 lt!1943801 lt!1943798))))

(assert (=> b!4781341 (= lt!1943798 (apply!12886 lm!2709 lt!1943801))))

(declare-fun contains!17534 (ListLongMap!5163 (_ BitVec 64)) Bool)

(assert (=> b!4781341 (contains!17534 lm!2709 lt!1943801)))

(declare-fun hash!4816 (Hashable!6831 K!15567) (_ BitVec 64))

(assert (=> b!4781341 (= lt!1943801 (hash!4816 hashF!1687 key!6641))))

(declare-fun lt!1943804 () Unit!139271)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1027 (ListLongMap!5163 K!15567 Hashable!6831) Unit!139271)

(assert (=> b!4781341 (= lt!1943804 (lemmaInGenMapThenLongMapContainsHash!1027 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6213 0))(
  ( (ListMap!6214 (toList!6742 List!54123)) )
))
(declare-fun contains!17535 (ListMap!6213 K!15567) Bool)

(declare-fun extractMap!2358 (List!54124) ListMap!6213)

(assert (=> b!4781341 (contains!17535 (extractMap!2358 (toList!6741 lm!2709)) key!6641)))

(declare-fun lt!1943800 () Unit!139271)

(declare-fun lemmaListContainsThenExtractedMapContains!679 (ListLongMap!5163 K!15567 Hashable!6831) Unit!139271)

(assert (=> b!4781341 (= lt!1943800 (lemmaListContainsThenExtractedMapContains!679 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4781342 () Bool)

(declare-fun res!2030131 () Bool)

(assert (=> b!4781342 (=> res!2030131 e!2985030)))

(assert (=> b!4781342 (= res!2030131 (or (and (is-Cons!54000 (toList!6741 lm!2709)) (= (_1!31541 (h!60420 (toList!6741 lm!2709))) lt!1943801)) (not (is-Cons!54000 (toList!6741 lm!2709)))))))

(assert (= (and start!490904 res!2030132) b!4781338))

(assert (= (and b!4781338 res!2030135) b!4781339))

(assert (= (and b!4781339 res!2030130) b!4781341))

(assert (= (and b!4781341 (not res!2030134)) b!4781342))

(assert (= (and b!4781342 (not res!2030131)) b!4781337))

(assert (= (and b!4781337 (not res!2030133)) b!4781336))

(assert (= (and b!4781336 (not res!2030129)) b!4781340))

(assert (= start!490904 b!4781335))

(declare-fun m!5758410 () Bool)

(assert (=> b!4781337 m!5758410))

(declare-fun m!5758412 () Bool)

(assert (=> b!4781337 m!5758412))

(assert (=> b!4781337 m!5758412))

(declare-fun m!5758414 () Bool)

(assert (=> b!4781337 m!5758414))

(declare-fun m!5758416 () Bool)

(assert (=> b!4781337 m!5758416))

(declare-fun m!5758418 () Bool)

(assert (=> b!4781340 m!5758418))

(declare-fun m!5758420 () Bool)

(assert (=> b!4781340 m!5758420))

(declare-fun m!5758422 () Bool)

(assert (=> b!4781341 m!5758422))

(declare-fun m!5758424 () Bool)

(assert (=> b!4781341 m!5758424))

(declare-fun m!5758426 () Bool)

(assert (=> b!4781341 m!5758426))

(declare-fun m!5758428 () Bool)

(assert (=> b!4781341 m!5758428))

(declare-fun m!5758430 () Bool)

(assert (=> b!4781341 m!5758430))

(declare-fun m!5758432 () Bool)

(assert (=> b!4781341 m!5758432))

(declare-fun m!5758434 () Bool)

(assert (=> b!4781341 m!5758434))

(declare-fun m!5758436 () Bool)

(assert (=> b!4781341 m!5758436))

(declare-fun m!5758438 () Bool)

(assert (=> b!4781341 m!5758438))

(declare-fun m!5758440 () Bool)

(assert (=> b!4781341 m!5758440))

(declare-fun m!5758442 () Bool)

(assert (=> b!4781341 m!5758442))

(declare-fun m!5758444 () Bool)

(assert (=> b!4781341 m!5758444))

(assert (=> b!4781341 m!5758434))

(declare-fun m!5758446 () Bool)

(assert (=> b!4781341 m!5758446))

(declare-fun m!5758448 () Bool)

(assert (=> b!4781341 m!5758448))

(assert (=> b!4781341 m!5758422))

(declare-fun m!5758450 () Bool)

(assert (=> b!4781336 m!5758450))

(declare-fun m!5758452 () Bool)

(assert (=> b!4781338 m!5758452))

(declare-fun m!5758454 () Bool)

(assert (=> b!4781339 m!5758454))

(assert (=> start!490904 m!5758450))

(declare-fun m!5758456 () Bool)

(assert (=> start!490904 m!5758456))

(push 1)

(assert (not b!4781338))

(assert tp_is_empty!33227)

(assert (not b!4781340))

(assert tp_is_empty!33225)

(assert (not b!4781339))

(assert (not b!4781335))

(assert (not b!4781336))

(assert (not b!4781341))

(assert (not start!490904))

(assert (not b!4781337))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1151870 () Bool)

(declare-fun d!1528645 () Bool)

(assert (= bs!1151870 (and d!1528645 start!490904)))

(declare-fun lambda!228218 () Int)

(assert (=> bs!1151870 (not (= lambda!228218 lambda!228206))))

(assert (=> d!1528645 true))

(assert (=> d!1528645 (= (allKeysSameHashInMap!2236 lm!2709 hashF!1687) (forall!12123 (toList!6741 lm!2709) lambda!228218))))

(declare-fun bs!1151871 () Bool)

(assert (= bs!1151871 d!1528645))

(declare-fun m!5758506 () Bool)

(assert (=> bs!1151871 m!5758506))

(assert (=> b!4781338 d!1528645))

(declare-fun d!1528647 () Bool)

(declare-fun res!2030170 () Bool)

(declare-fun e!2985056 () Bool)

(assert (=> d!1528647 (=> res!2030170 e!2985056)))

(assert (=> d!1528647 (= res!2030170 (is-Nil!54000 (toList!6741 lm!2709)))))

(assert (=> d!1528647 (= (forall!12123 (toList!6741 lm!2709) lambda!228206) e!2985056)))

(declare-fun b!4781382 () Bool)

(declare-fun e!2985057 () Bool)

(assert (=> b!4781382 (= e!2985056 e!2985057)))

(declare-fun res!2030171 () Bool)

(assert (=> b!4781382 (=> (not res!2030171) (not e!2985057))))

(declare-fun dynLambda!22012 (Int tuple2!56494) Bool)

(assert (=> b!4781382 (= res!2030171 (dynLambda!22012 lambda!228206 (h!60420 (toList!6741 lm!2709))))))

(declare-fun b!4781383 () Bool)

(assert (=> b!4781383 (= e!2985057 (forall!12123 (t!361574 (toList!6741 lm!2709)) lambda!228206))))

(assert (= (and d!1528647 (not res!2030170)) b!4781382))

(assert (= (and b!4781382 res!2030171) b!4781383))

(declare-fun b_lambda!185651 () Bool)

(assert (=> (not b_lambda!185651) (not b!4781382)))

(declare-fun m!5758510 () Bool)

(assert (=> b!4781382 m!5758510))

(declare-fun m!5758512 () Bool)

(assert (=> b!4781383 m!5758512))

(assert (=> start!490904 d!1528647))

(declare-fun d!1528651 () Bool)

(declare-fun isStrictlySorted!845 (List!54124) Bool)

(assert (=> d!1528651 (= (inv!69594 lm!2709) (isStrictlySorted!845 (toList!6741 lm!2709)))))

(declare-fun bs!1151872 () Bool)

(assert (= bs!1151872 d!1528651))

(declare-fun m!5758514 () Bool)

(assert (=> bs!1151872 m!5758514))

(assert (=> start!490904 d!1528651))

(declare-fun d!1528653 () Bool)

(declare-fun res!2030182 () Bool)

(declare-fun e!2985068 () Bool)

(assert (=> d!1528653 (=> res!2030182 e!2985068)))

(assert (=> d!1528653 (= res!2030182 (and (is-Cons!53999 (_2!31541 (h!60420 (toList!6741 lm!2709)))) (= (_1!31540 (h!60419 (_2!31541 (h!60420 (toList!6741 lm!2709))))) key!6641)))))

(assert (=> d!1528653 (= (containsKey!3807 (_2!31541 (h!60420 (toList!6741 lm!2709))) key!6641) e!2985068)))

(declare-fun b!4781394 () Bool)

(declare-fun e!2985069 () Bool)

(assert (=> b!4781394 (= e!2985068 e!2985069)))

(declare-fun res!2030183 () Bool)

(assert (=> b!4781394 (=> (not res!2030183) (not e!2985069))))

(assert (=> b!4781394 (= res!2030183 (is-Cons!53999 (_2!31541 (h!60420 (toList!6741 lm!2709)))))))

(declare-fun b!4781395 () Bool)

(assert (=> b!4781395 (= e!2985069 (containsKey!3807 (t!361573 (_2!31541 (h!60420 (toList!6741 lm!2709)))) key!6641))))

(assert (= (and d!1528653 (not res!2030182)) b!4781394))

(assert (= (and b!4781394 res!2030183) b!4781395))

(declare-fun m!5758518 () Bool)

(assert (=> b!4781395 m!5758518))

(assert (=> b!4781337 d!1528653))

(declare-fun d!1528657 () Bool)

(declare-fun res!2030184 () Bool)

(declare-fun e!2985070 () Bool)

(assert (=> d!1528657 (=> res!2030184 e!2985070)))

(assert (=> d!1528657 (= res!2030184 (and (is-Cons!53999 (apply!12886 lm!2709 (_1!31541 (h!60420 (toList!6741 lm!2709))))) (= (_1!31540 (h!60419 (apply!12886 lm!2709 (_1!31541 (h!60420 (toList!6741 lm!2709)))))) key!6641)))))

(assert (=> d!1528657 (= (containsKey!3807 (apply!12886 lm!2709 (_1!31541 (h!60420 (toList!6741 lm!2709)))) key!6641) e!2985070)))

(declare-fun b!4781396 () Bool)

(declare-fun e!2985071 () Bool)

(assert (=> b!4781396 (= e!2985070 e!2985071)))

(declare-fun res!2030185 () Bool)

(assert (=> b!4781396 (=> (not res!2030185) (not e!2985071))))

(assert (=> b!4781396 (= res!2030185 (is-Cons!53999 (apply!12886 lm!2709 (_1!31541 (h!60420 (toList!6741 lm!2709))))))))

(declare-fun b!4781397 () Bool)

(assert (=> b!4781397 (= e!2985071 (containsKey!3807 (t!361573 (apply!12886 lm!2709 (_1!31541 (h!60420 (toList!6741 lm!2709))))) key!6641))))

(assert (= (and d!1528657 (not res!2030184)) b!4781396))

(assert (= (and b!4781396 res!2030185) b!4781397))

(declare-fun m!5758520 () Bool)

(assert (=> b!4781397 m!5758520))

(assert (=> b!4781337 d!1528657))

(declare-fun d!1528659 () Bool)

(declare-datatypes ((Option!12933 0))(
  ( (None!12932) (Some!12932 (v!48143 List!54123)) )
))
(declare-fun get!18361 (Option!12933) List!54123)

(declare-fun getValueByKey!2276 (List!54124 (_ BitVec 64)) Option!12933)

(assert (=> d!1528659 (= (apply!12886 lm!2709 (_1!31541 (h!60420 (toList!6741 lm!2709)))) (get!18361 (getValueByKey!2276 (toList!6741 lm!2709) (_1!31541 (h!60420 (toList!6741 lm!2709))))))))

(declare-fun bs!1151873 () Bool)

(assert (= bs!1151873 d!1528659))

(declare-fun m!5758522 () Bool)

(assert (=> bs!1151873 m!5758522))

(assert (=> bs!1151873 m!5758522))

(declare-fun m!5758524 () Bool)

(assert (=> bs!1151873 m!5758524))

(assert (=> b!4781337 d!1528659))

(declare-fun bs!1151874 () Bool)

(declare-fun d!1528663 () Bool)

(assert (= bs!1151874 (and d!1528663 start!490904)))

(declare-fun lambda!228223 () Int)

(assert (=> bs!1151874 (= lambda!228223 lambda!228206)))

(declare-fun bs!1151875 () Bool)

(assert (= bs!1151875 (and d!1528663 d!1528645)))

(assert (=> bs!1151875 (not (= lambda!228223 lambda!228218))))

(assert (=> d!1528663 (not (containsKey!3807 (apply!12886 lm!2709 (_1!31541 (h!60420 (toList!6741 lm!2709)))) key!6641))))

(declare-fun lt!1943844 () Unit!139271)

(declare-fun choose!34265 (ListLongMap!5163 K!15567 (_ BitVec 64) Hashable!6831) Unit!139271)

(assert (=> d!1528663 (= lt!1943844 (choose!34265 lm!2709 key!6641 (_1!31541 (h!60420 (toList!6741 lm!2709))) hashF!1687))))

(assert (=> d!1528663 (forall!12123 (toList!6741 lm!2709) lambda!228223)))

(assert (=> d!1528663 (= (lemmaNotSameHashThenCannotContainKey!185 lm!2709 key!6641 (_1!31541 (h!60420 (toList!6741 lm!2709))) hashF!1687) lt!1943844)))

(declare-fun bs!1151876 () Bool)

(assert (= bs!1151876 d!1528663))

(assert (=> bs!1151876 m!5758412))

(assert (=> bs!1151876 m!5758412))

(assert (=> bs!1151876 m!5758414))

(declare-fun m!5758526 () Bool)

(assert (=> bs!1151876 m!5758526))

(declare-fun m!5758528 () Bool)

(assert (=> bs!1151876 m!5758528))

(assert (=> b!4781337 d!1528663))

(assert (=> b!4781336 d!1528647))

(declare-fun d!1528665 () Bool)

(declare-fun lt!1943847 () Bool)

(declare-fun content!9647 (List!54124) (Set tuple2!56494))

(assert (=> d!1528665 (= lt!1943847 (set.member lt!1943807 (content!9647 (toList!6741 lm!2709))))))

(declare-fun e!2985076 () Bool)

(assert (=> d!1528665 (= lt!1943847 e!2985076)))

(declare-fun res!2030191 () Bool)

(assert (=> d!1528665 (=> (not res!2030191) (not e!2985076))))

(assert (=> d!1528665 (= res!2030191 (is-Cons!54000 (toList!6741 lm!2709)))))

(assert (=> d!1528665 (= (contains!17533 (toList!6741 lm!2709) lt!1943807) lt!1943847)))

(declare-fun b!4781404 () Bool)

(declare-fun e!2985077 () Bool)

(assert (=> b!4781404 (= e!2985076 e!2985077)))

(declare-fun res!2030190 () Bool)

(assert (=> b!4781404 (=> res!2030190 e!2985077)))

(assert (=> b!4781404 (= res!2030190 (= (h!60420 (toList!6741 lm!2709)) lt!1943807))))

(declare-fun b!4781405 () Bool)

(assert (=> b!4781405 (= e!2985077 (contains!17533 (t!361574 (toList!6741 lm!2709)) lt!1943807))))

(assert (= (and d!1528665 res!2030191) b!4781404))

(assert (= (and b!4781404 (not res!2030190)) b!4781405))

(declare-fun m!5758532 () Bool)

(assert (=> d!1528665 m!5758532))

(declare-fun m!5758534 () Bool)

(assert (=> d!1528665 m!5758534))

(declare-fun m!5758536 () Bool)

(assert (=> b!4781405 m!5758536))

(assert (=> b!4781341 d!1528665))

(declare-fun d!1528669 () Bool)

(declare-fun e!2985089 () Bool)

(assert (=> d!1528669 e!2985089))

(declare-fun res!2030200 () Bool)

(assert (=> d!1528669 (=> res!2030200 e!2985089)))

(declare-fun lt!1943857 () Bool)

(assert (=> d!1528669 (= res!2030200 (not lt!1943857))))

(declare-fun lt!1943856 () Bool)

(assert (=> d!1528669 (= lt!1943857 lt!1943856)))

(declare-fun lt!1943859 () Unit!139271)

(declare-fun e!2985088 () Unit!139271)

(assert (=> d!1528669 (= lt!1943859 e!2985088)))

(declare-fun c!815108 () Bool)

(assert (=> d!1528669 (= c!815108 lt!1943856)))

(declare-fun containsKey!3809 (List!54124 (_ BitVec 64)) Bool)

(assert (=> d!1528669 (= lt!1943856 (containsKey!3809 (toList!6741 lm!2709) lt!1943801))))

(assert (=> d!1528669 (= (contains!17534 lm!2709 lt!1943801) lt!1943857)))

(declare-fun b!4781418 () Bool)

(declare-fun lt!1943858 () Unit!139271)

(assert (=> b!4781418 (= e!2985088 lt!1943858)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2070 (List!54124 (_ BitVec 64)) Unit!139271)

(assert (=> b!4781418 (= lt!1943858 (lemmaContainsKeyImpliesGetValueByKeyDefined!2070 (toList!6741 lm!2709) lt!1943801))))

(declare-fun isDefined!10077 (Option!12933) Bool)

(assert (=> b!4781418 (isDefined!10077 (getValueByKey!2276 (toList!6741 lm!2709) lt!1943801))))

(declare-fun b!4781419 () Bool)

(declare-fun Unit!139275 () Unit!139271)

(assert (=> b!4781419 (= e!2985088 Unit!139275)))

(declare-fun b!4781420 () Bool)

(assert (=> b!4781420 (= e!2985089 (isDefined!10077 (getValueByKey!2276 (toList!6741 lm!2709) lt!1943801)))))

(assert (= (and d!1528669 c!815108) b!4781418))

(assert (= (and d!1528669 (not c!815108)) b!4781419))

(assert (= (and d!1528669 (not res!2030200)) b!4781420))

(declare-fun m!5758542 () Bool)

(assert (=> d!1528669 m!5758542))

(declare-fun m!5758544 () Bool)

(assert (=> b!4781418 m!5758544))

(declare-fun m!5758546 () Bool)

(assert (=> b!4781418 m!5758546))

(assert (=> b!4781418 m!5758546))

(declare-fun m!5758548 () Bool)

(assert (=> b!4781418 m!5758548))

(assert (=> b!4781420 m!5758546))

(assert (=> b!4781420 m!5758546))

(assert (=> b!4781420 m!5758548))

(assert (=> b!4781341 d!1528669))

(declare-fun d!1528673 () Bool)

(assert (=> d!1528673 (= (apply!12886 lm!2709 lt!1943801) (get!18361 (getValueByKey!2276 (toList!6741 lm!2709) lt!1943801)))))

(declare-fun bs!1151880 () Bool)

(assert (= bs!1151880 d!1528673))

(assert (=> bs!1151880 m!5758546))

(assert (=> bs!1151880 m!5758546))

(declare-fun m!5758552 () Bool)

(assert (=> bs!1151880 m!5758552))

(assert (=> b!4781341 d!1528673))

(declare-fun d!1528677 () Bool)

(assert (=> d!1528677 (dynLambda!22012 lambda!228206 lt!1943807)))

(declare-fun lt!1943862 () Unit!139271)

(declare-fun choose!34266 (List!54124 Int tuple2!56494) Unit!139271)

(assert (=> d!1528677 (= lt!1943862 (choose!34266 (toList!6741 lm!2709) lambda!228206 lt!1943807))))

(declare-fun e!2985096 () Bool)

(assert (=> d!1528677 e!2985096))

(declare-fun res!2030207 () Bool)

(assert (=> d!1528677 (=> (not res!2030207) (not e!2985096))))

(assert (=> d!1528677 (= res!2030207 (forall!12123 (toList!6741 lm!2709) lambda!228206))))

(assert (=> d!1528677 (= (forallContained!4067 (toList!6741 lm!2709) lambda!228206 lt!1943807) lt!1943862)))

(declare-fun b!4781427 () Bool)

(assert (=> b!4781427 (= e!2985096 (contains!17533 (toList!6741 lm!2709) lt!1943807))))

(assert (= (and d!1528677 res!2030207) b!4781427))

(declare-fun b_lambda!185655 () Bool)

(assert (=> (not b_lambda!185655) (not d!1528677)))

(declare-fun m!5758558 () Bool)

(assert (=> d!1528677 m!5758558))

(declare-fun m!5758560 () Bool)

(assert (=> d!1528677 m!5758560))

(assert (=> d!1528677 m!5758450))

(assert (=> b!4781427 m!5758438))

(assert (=> b!4781341 d!1528677))

(declare-fun d!1528683 () Bool)

(assert (=> d!1528683 (contains!17533 (toList!6741 lm!2709) (tuple2!56495 lt!1943801 lt!1943798))))

(declare-fun lt!1943865 () Unit!139271)

(declare-fun choose!34267 (ListLongMap!5163 (_ BitVec 64) List!54123) Unit!139271)

(assert (=> d!1528683 (= lt!1943865 (choose!34267 lm!2709 lt!1943801 lt!1943798))))

(assert (=> d!1528683 (contains!17534 lm!2709 lt!1943801)))

(assert (=> d!1528683 (= (lemmaGetValueImpliesTupleContained!610 lm!2709 lt!1943801 lt!1943798) lt!1943865)))

(declare-fun bs!1151882 () Bool)

(assert (= bs!1151882 d!1528683))

(declare-fun m!5758566 () Bool)

(assert (=> bs!1151882 m!5758566))

(declare-fun m!5758568 () Bool)

(assert (=> bs!1151882 m!5758568))

(assert (=> bs!1151882 m!5758442))

(assert (=> b!4781341 d!1528683))

(declare-fun d!1528687 () Bool)

(declare-fun isEmpty!29356 (Option!12931) Bool)

(assert (=> d!1528687 (= (isDefined!10075 lt!1943803) (not (isEmpty!29356 lt!1943803)))))

(declare-fun bs!1151883 () Bool)

(assert (= bs!1151883 d!1528687))

(declare-fun m!5758570 () Bool)

(assert (=> bs!1151883 m!5758570))

(assert (=> b!4781341 d!1528687))

(declare-fun b!4781446 () Bool)

(declare-fun e!2985111 () Option!12931)

(assert (=> b!4781446 (= e!2985111 None!12930)))

(declare-fun b!4781447 () Bool)

(declare-fun res!2030218 () Bool)

(declare-fun e!2985110 () Bool)

(assert (=> b!4781447 (=> (not res!2030218) (not e!2985110))))

(declare-fun lt!1943870 () Option!12931)

(assert (=> b!4781447 (= res!2030218 (= (_1!31540 (get!18359 lt!1943870)) key!6641))))

(declare-fun b!4781448 () Bool)

(declare-fun contains!17539 (List!54123 tuple2!56492) Bool)

(assert (=> b!4781448 (= e!2985110 (contains!17539 lt!1943798 (get!18359 lt!1943870)))))

(declare-fun b!4781449 () Bool)

(declare-fun e!2985109 () Bool)

(assert (=> b!4781449 (= e!2985109 (not (containsKey!3807 lt!1943798 key!6641)))))

(declare-fun b!4781450 () Bool)

(declare-fun e!2985108 () Option!12931)

(assert (=> b!4781450 (= e!2985108 (Some!12930 (h!60419 lt!1943798)))))

(declare-fun b!4781451 () Bool)

(assert (=> b!4781451 (= e!2985111 (getPair!803 (t!361573 lt!1943798) key!6641))))

(declare-fun b!4781452 () Bool)

(assert (=> b!4781452 (= e!2985108 e!2985111)))

(declare-fun c!815114 () Bool)

(assert (=> b!4781452 (= c!815114 (is-Cons!53999 lt!1943798))))

(declare-fun b!4781445 () Bool)

(declare-fun e!2985107 () Bool)

(assert (=> b!4781445 (= e!2985107 e!2985110)))

(declare-fun res!2030217 () Bool)

(assert (=> b!4781445 (=> (not res!2030217) (not e!2985110))))

(assert (=> b!4781445 (= res!2030217 (isDefined!10075 lt!1943870))))

(declare-fun d!1528689 () Bool)

(assert (=> d!1528689 e!2985107))

(declare-fun res!2030219 () Bool)

(assert (=> d!1528689 (=> res!2030219 e!2985107)))

(assert (=> d!1528689 (= res!2030219 e!2985109)))

(declare-fun res!2030216 () Bool)

(assert (=> d!1528689 (=> (not res!2030216) (not e!2985109))))

(assert (=> d!1528689 (= res!2030216 (isEmpty!29356 lt!1943870))))

(assert (=> d!1528689 (= lt!1943870 e!2985108)))

(declare-fun c!815113 () Bool)

(assert (=> d!1528689 (= c!815113 (and (is-Cons!53999 lt!1943798) (= (_1!31540 (h!60419 lt!1943798)) key!6641)))))

(declare-fun noDuplicateKeys!2292 (List!54123) Bool)

(assert (=> d!1528689 (noDuplicateKeys!2292 lt!1943798)))

(assert (=> d!1528689 (= (getPair!803 lt!1943798 key!6641) lt!1943870)))

(assert (= (and d!1528689 c!815113) b!4781450))

(assert (= (and d!1528689 (not c!815113)) b!4781452))

(assert (= (and b!4781452 c!815114) b!4781451))

(assert (= (and b!4781452 (not c!815114)) b!4781446))

(assert (= (and d!1528689 res!2030216) b!4781449))

(assert (= (and d!1528689 (not res!2030219)) b!4781445))

(assert (= (and b!4781445 res!2030217) b!4781447))

(assert (= (and b!4781447 res!2030218) b!4781448))

(declare-fun m!5758572 () Bool)

(assert (=> b!4781449 m!5758572))

(declare-fun m!5758574 () Bool)

(assert (=> b!4781448 m!5758574))

(assert (=> b!4781448 m!5758574))

(declare-fun m!5758576 () Bool)

(assert (=> b!4781448 m!5758576))

(declare-fun m!5758578 () Bool)

(assert (=> b!4781445 m!5758578))

(assert (=> b!4781447 m!5758574))

(declare-fun m!5758580 () Bool)

(assert (=> b!4781451 m!5758580))

(declare-fun m!5758582 () Bool)

(assert (=> d!1528689 m!5758582))

(declare-fun m!5758584 () Bool)

(assert (=> d!1528689 m!5758584))

(assert (=> b!4781341 d!1528689))

(declare-fun b!4781477 () Bool)

(declare-fun e!2985132 () Unit!139271)

(declare-fun Unit!139276 () Unit!139271)

(assert (=> b!4781477 (= e!2985132 Unit!139276)))

(declare-fun d!1528691 () Bool)

(declare-fun e!2985133 () Bool)

(assert (=> d!1528691 e!2985133))

(declare-fun res!2030234 () Bool)

(assert (=> d!1528691 (=> res!2030234 e!2985133)))

(declare-fun e!2985130 () Bool)

(assert (=> d!1528691 (= res!2030234 e!2985130)))

(declare-fun res!2030233 () Bool)

(assert (=> d!1528691 (=> (not res!2030233) (not e!2985130))))

(declare-fun lt!1943894 () Bool)

(assert (=> d!1528691 (= res!2030233 (not lt!1943894))))

(declare-fun lt!1943892 () Bool)

(assert (=> d!1528691 (= lt!1943894 lt!1943892)))

(declare-fun lt!1943893 () Unit!139271)

(declare-fun e!2985135 () Unit!139271)

(assert (=> d!1528691 (= lt!1943893 e!2985135)))

(declare-fun c!815123 () Bool)

(assert (=> d!1528691 (= c!815123 lt!1943892)))

(declare-fun containsKey!3810 (List!54123 K!15567) Bool)

(assert (=> d!1528691 (= lt!1943892 (containsKey!3810 (toList!6742 (extractMap!2358 (toList!6741 lm!2709))) key!6641))))

(assert (=> d!1528691 (= (contains!17535 (extractMap!2358 (toList!6741 lm!2709)) key!6641) lt!1943894)))

(declare-fun b!4781478 () Bool)

(assert (=> b!4781478 false))

(declare-fun lt!1943891 () Unit!139271)

(declare-fun lt!1943896 () Unit!139271)

(assert (=> b!4781478 (= lt!1943891 lt!1943896)))

(assert (=> b!4781478 (containsKey!3810 (toList!6742 (extractMap!2358 (toList!6741 lm!2709))) key!6641)))

(declare-fun lemmaInGetKeysListThenContainsKey!1038 (List!54123 K!15567) Unit!139271)

(assert (=> b!4781478 (= lt!1943896 (lemmaInGetKeysListThenContainsKey!1038 (toList!6742 (extractMap!2358 (toList!6741 lm!2709))) key!6641))))

(declare-fun Unit!139277 () Unit!139271)

(assert (=> b!4781478 (= e!2985132 Unit!139277)))

(declare-fun b!4781479 () Bool)

(declare-fun lt!1943897 () Unit!139271)

(assert (=> b!4781479 (= e!2985135 lt!1943897)))

(declare-fun lt!1943895 () Unit!139271)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2071 (List!54123 K!15567) Unit!139271)

(assert (=> b!4781479 (= lt!1943895 (lemmaContainsKeyImpliesGetValueByKeyDefined!2071 (toList!6742 (extractMap!2358 (toList!6741 lm!2709))) key!6641))))

(declare-datatypes ((Option!12934 0))(
  ( (None!12933) (Some!12933 (v!48144 V!15813)) )
))
(declare-fun isDefined!10078 (Option!12934) Bool)

(declare-fun getValueByKey!2277 (List!54123 K!15567) Option!12934)

(assert (=> b!4781479 (isDefined!10078 (getValueByKey!2277 (toList!6742 (extractMap!2358 (toList!6741 lm!2709))) key!6641))))

(declare-fun lt!1943898 () Unit!139271)

(assert (=> b!4781479 (= lt!1943898 lt!1943895)))

(declare-fun lemmaInListThenGetKeysListContains!1033 (List!54123 K!15567) Unit!139271)

(assert (=> b!4781479 (= lt!1943897 (lemmaInListThenGetKeysListContains!1033 (toList!6742 (extractMap!2358 (toList!6741 lm!2709))) key!6641))))

(declare-fun call!334733 () Bool)

(assert (=> b!4781479 call!334733))

(declare-fun bm!334728 () Bool)

(declare-datatypes ((List!54127 0))(
  ( (Nil!54003) (Cons!54003 (h!60423 K!15567) (t!361577 List!54127)) )
))
(declare-fun e!2985131 () List!54127)

(declare-fun contains!17540 (List!54127 K!15567) Bool)

(assert (=> bm!334728 (= call!334733 (contains!17540 e!2985131 key!6641))))

(declare-fun c!815122 () Bool)

(assert (=> bm!334728 (= c!815122 c!815123)))

(declare-fun b!4781480 () Bool)

(declare-fun getKeysList!1038 (List!54123) List!54127)

(assert (=> b!4781480 (= e!2985131 (getKeysList!1038 (toList!6742 (extractMap!2358 (toList!6741 lm!2709)))))))

(declare-fun b!4781481 () Bool)

(assert (=> b!4781481 (= e!2985135 e!2985132)))

(declare-fun c!815121 () Bool)

(assert (=> b!4781481 (= c!815121 call!334733)))

(declare-fun b!4781482 () Bool)

(declare-fun e!2985134 () Bool)

(assert (=> b!4781482 (= e!2985133 e!2985134)))

(declare-fun res!2030232 () Bool)

(assert (=> b!4781482 (=> (not res!2030232) (not e!2985134))))

(assert (=> b!4781482 (= res!2030232 (isDefined!10078 (getValueByKey!2277 (toList!6742 (extractMap!2358 (toList!6741 lm!2709))) key!6641)))))

(declare-fun b!4781483 () Bool)

(declare-fun keys!19669 (ListMap!6213) List!54127)

(assert (=> b!4781483 (= e!2985130 (not (contains!17540 (keys!19669 (extractMap!2358 (toList!6741 lm!2709))) key!6641)))))

(declare-fun b!4781484 () Bool)

(assert (=> b!4781484 (= e!2985134 (contains!17540 (keys!19669 (extractMap!2358 (toList!6741 lm!2709))) key!6641))))

(declare-fun b!4781485 () Bool)

(assert (=> b!4781485 (= e!2985131 (keys!19669 (extractMap!2358 (toList!6741 lm!2709))))))

(assert (= (and d!1528691 c!815123) b!4781479))

(assert (= (and d!1528691 (not c!815123)) b!4781481))

(assert (= (and b!4781481 c!815121) b!4781478))

(assert (= (and b!4781481 (not c!815121)) b!4781477))

(assert (= (or b!4781479 b!4781481) bm!334728))

(assert (= (and bm!334728 c!815122) b!4781480))

(assert (= (and bm!334728 (not c!815122)) b!4781485))

(assert (= (and d!1528691 res!2030233) b!4781483))

(assert (= (and d!1528691 (not res!2030234)) b!4781482))

(assert (= (and b!4781482 res!2030232) b!4781484))

(declare-fun m!5758596 () Bool)

(assert (=> b!4781482 m!5758596))

(assert (=> b!4781482 m!5758596))

(declare-fun m!5758598 () Bool)

(assert (=> b!4781482 m!5758598))

(declare-fun m!5758600 () Bool)

(assert (=> b!4781478 m!5758600))

(declare-fun m!5758602 () Bool)

(assert (=> b!4781478 m!5758602))

(assert (=> b!4781483 m!5758434))

(declare-fun m!5758604 () Bool)

(assert (=> b!4781483 m!5758604))

(assert (=> b!4781483 m!5758604))

(declare-fun m!5758606 () Bool)

(assert (=> b!4781483 m!5758606))

(assert (=> b!4781485 m!5758434))

(assert (=> b!4781485 m!5758604))

(assert (=> b!4781484 m!5758434))

(assert (=> b!4781484 m!5758604))

(assert (=> b!4781484 m!5758604))

(assert (=> b!4781484 m!5758606))

(assert (=> d!1528691 m!5758600))

(declare-fun m!5758608 () Bool)

(assert (=> b!4781479 m!5758608))

(assert (=> b!4781479 m!5758596))

(assert (=> b!4781479 m!5758596))

(assert (=> b!4781479 m!5758598))

(declare-fun m!5758610 () Bool)

(assert (=> b!4781479 m!5758610))

(declare-fun m!5758612 () Bool)

(assert (=> bm!334728 m!5758612))

(declare-fun m!5758614 () Bool)

(assert (=> b!4781480 m!5758614))

(assert (=> b!4781341 d!1528691))

(declare-fun bs!1151891 () Bool)

(declare-fun d!1528697 () Bool)

(assert (= bs!1151891 (and d!1528697 start!490904)))

(declare-fun lambda!228237 () Int)

(assert (=> bs!1151891 (= lambda!228237 lambda!228206)))

(declare-fun bs!1151892 () Bool)

(assert (= bs!1151892 (and d!1528697 d!1528645)))

(assert (=> bs!1151892 (not (= lambda!228237 lambda!228218))))

(declare-fun bs!1151893 () Bool)

(assert (= bs!1151893 (and d!1528697 d!1528663)))

(assert (=> bs!1151893 (= lambda!228237 lambda!228223)))

(declare-fun e!2985141 () Bool)

(assert (=> d!1528697 e!2985141))

(declare-fun res!2030245 () Bool)

(assert (=> d!1528697 (=> (not res!2030245) (not e!2985141))))

(assert (=> d!1528697 (= res!2030245 (forall!12123 (toList!6741 lm!2709) lambda!228237))))

(declare-fun lt!1943924 () Unit!139271)

(declare-fun choose!34268 (ListLongMap!5163 K!15567 Hashable!6831) Unit!139271)

(assert (=> d!1528697 (= lt!1943924 (choose!34268 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1528697 (forall!12123 (toList!6741 lm!2709) lambda!228237)))

(assert (=> d!1528697 (= (lemmaInGenMapThenGetPairDefined!577 lm!2709 key!6641 hashF!1687) lt!1943924)))

(declare-fun b!4781495 () Bool)

(declare-fun res!2030244 () Bool)

(assert (=> b!4781495 (=> (not res!2030244) (not e!2985141))))

(assert (=> b!4781495 (= res!2030244 (contains!17535 (extractMap!2358 (toList!6741 lm!2709)) key!6641))))

(declare-fun b!4781496 () Bool)

(assert (=> b!4781496 (= e!2985141 (isDefined!10075 (getPair!803 (apply!12886 lm!2709 (hash!4816 hashF!1687 key!6641)) key!6641)))))

(declare-fun lt!1943922 () Unit!139271)

(assert (=> b!4781496 (= lt!1943922 (forallContained!4067 (toList!6741 lm!2709) lambda!228237 (tuple2!56495 (hash!4816 hashF!1687 key!6641) (apply!12886 lm!2709 (hash!4816 hashF!1687 key!6641)))))))

(declare-fun lt!1943920 () Unit!139271)

(declare-fun lt!1943918 () Unit!139271)

(assert (=> b!4781496 (= lt!1943920 lt!1943918)))

(declare-fun lt!1943921 () (_ BitVec 64))

(declare-fun lt!1943919 () List!54123)

(assert (=> b!4781496 (contains!17533 (toList!6741 lm!2709) (tuple2!56495 lt!1943921 lt!1943919))))

(assert (=> b!4781496 (= lt!1943918 (lemmaGetValueImpliesTupleContained!610 lm!2709 lt!1943921 lt!1943919))))

(declare-fun e!2985140 () Bool)

(assert (=> b!4781496 e!2985140))

(declare-fun res!2030243 () Bool)

(assert (=> b!4781496 (=> (not res!2030243) (not e!2985140))))

(assert (=> b!4781496 (= res!2030243 (contains!17534 lm!2709 lt!1943921))))

(assert (=> b!4781496 (= lt!1943919 (apply!12886 lm!2709 (hash!4816 hashF!1687 key!6641)))))

(assert (=> b!4781496 (= lt!1943921 (hash!4816 hashF!1687 key!6641))))

(declare-fun lt!1943923 () Unit!139271)

(declare-fun lt!1943925 () Unit!139271)

(assert (=> b!4781496 (= lt!1943923 lt!1943925)))

(assert (=> b!4781496 (contains!17534 lm!2709 (hash!4816 hashF!1687 key!6641))))

(assert (=> b!4781496 (= lt!1943925 (lemmaInGenMapThenLongMapContainsHash!1027 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4781494 () Bool)

(declare-fun res!2030246 () Bool)

(assert (=> b!4781494 (=> (not res!2030246) (not e!2985141))))

(assert (=> b!4781494 (= res!2030246 (allKeysSameHashInMap!2236 lm!2709 hashF!1687))))

(declare-fun b!4781497 () Bool)

(assert (=> b!4781497 (= e!2985140 (= (getValueByKey!2276 (toList!6741 lm!2709) lt!1943921) (Some!12932 lt!1943919)))))

(assert (= (and d!1528697 res!2030245) b!4781494))

(assert (= (and b!4781494 res!2030246) b!4781495))

(assert (= (and b!4781495 res!2030244) b!4781496))

(assert (= (and b!4781496 res!2030243) b!4781497))

(assert (=> b!4781496 m!5758444))

(assert (=> b!4781496 m!5758440))

(declare-fun m!5758620 () Bool)

(assert (=> b!4781496 m!5758620))

(assert (=> b!4781496 m!5758440))

(assert (=> b!4781496 m!5758620))

(declare-fun m!5758622 () Bool)

(assert (=> b!4781496 m!5758622))

(declare-fun m!5758624 () Bool)

(assert (=> b!4781496 m!5758624))

(declare-fun m!5758626 () Bool)

(assert (=> b!4781496 m!5758626))

(assert (=> b!4781496 m!5758440))

(declare-fun m!5758628 () Bool)

(assert (=> b!4781496 m!5758628))

(declare-fun m!5758630 () Bool)

(assert (=> b!4781496 m!5758630))

(declare-fun m!5758632 () Bool)

(assert (=> b!4781496 m!5758632))

(assert (=> b!4781496 m!5758622))

(declare-fun m!5758634 () Bool)

(assert (=> b!4781496 m!5758634))

(declare-fun m!5758636 () Bool)

(assert (=> b!4781497 m!5758636))

(assert (=> b!4781494 m!5758452))

(assert (=> b!4781495 m!5758434))

(assert (=> b!4781495 m!5758434))

(assert (=> b!4781495 m!5758446))

(declare-fun m!5758638 () Bool)

(assert (=> d!1528697 m!5758638))

(declare-fun m!5758640 () Bool)

(assert (=> d!1528697 m!5758640))

(assert (=> d!1528697 m!5758638))

(assert (=> b!4781341 d!1528697))

(declare-fun d!1528701 () Bool)

(declare-fun hash!4820 (Hashable!6831 K!15567) (_ BitVec 64))

(assert (=> d!1528701 (= (hash!4816 hashF!1687 key!6641) (hash!4820 hashF!1687 key!6641))))

(declare-fun bs!1151894 () Bool)

(assert (= bs!1151894 d!1528701))

(declare-fun m!5758642 () Bool)

(assert (=> bs!1151894 m!5758642))

(assert (=> b!4781341 d!1528701))

(declare-fun bs!1151895 () Bool)

(declare-fun d!1528703 () Bool)

(assert (= bs!1151895 (and d!1528703 start!490904)))

(declare-fun lambda!228240 () Int)

(assert (=> bs!1151895 (= lambda!228240 lambda!228206)))

(declare-fun bs!1151896 () Bool)

(assert (= bs!1151896 (and d!1528703 d!1528645)))

(assert (=> bs!1151896 (not (= lambda!228240 lambda!228218))))

(declare-fun bs!1151897 () Bool)

(assert (= bs!1151897 (and d!1528703 d!1528663)))

(assert (=> bs!1151897 (= lambda!228240 lambda!228223)))

(declare-fun bs!1151898 () Bool)

(assert (= bs!1151898 (and d!1528703 d!1528697)))

(assert (=> bs!1151898 (= lambda!228240 lambda!228237)))

(declare-fun lt!1943944 () ListMap!6213)

(declare-fun invariantList!1694 (List!54123) Bool)

(assert (=> d!1528703 (invariantList!1694 (toList!6742 lt!1943944))))

(declare-fun e!2985148 () ListMap!6213)

(assert (=> d!1528703 (= lt!1943944 e!2985148)))

(declare-fun c!815130 () Bool)

(assert (=> d!1528703 (= c!815130 (is-Cons!54000 (toList!6741 lm!2709)))))

(assert (=> d!1528703 (forall!12123 (toList!6741 lm!2709) lambda!228240)))

(assert (=> d!1528703 (= (extractMap!2358 (toList!6741 lm!2709)) lt!1943944)))

(declare-fun b!4781510 () Bool)

(declare-fun addToMapMapFromBucket!1659 (List!54123 ListMap!6213) ListMap!6213)

(assert (=> b!4781510 (= e!2985148 (addToMapMapFromBucket!1659 (_2!31541 (h!60420 (toList!6741 lm!2709))) (extractMap!2358 (t!361574 (toList!6741 lm!2709)))))))

(declare-fun b!4781511 () Bool)

(assert (=> b!4781511 (= e!2985148 (ListMap!6214 Nil!53999))))

(assert (= (and d!1528703 c!815130) b!4781510))

(assert (= (and d!1528703 (not c!815130)) b!4781511))

(declare-fun m!5758644 () Bool)

(assert (=> d!1528703 m!5758644))

(declare-fun m!5758646 () Bool)

(assert (=> d!1528703 m!5758646))

(declare-fun m!5758648 () Bool)

(assert (=> b!4781510 m!5758648))

(assert (=> b!4781510 m!5758648))

(declare-fun m!5758650 () Bool)

(assert (=> b!4781510 m!5758650))

(assert (=> b!4781341 d!1528703))

(declare-fun bs!1151899 () Bool)

(declare-fun d!1528705 () Bool)

(assert (= bs!1151899 (and d!1528705 d!1528645)))

(declare-fun lambda!228243 () Int)

(assert (=> bs!1151899 (not (= lambda!228243 lambda!228218))))

(declare-fun bs!1151900 () Bool)

(assert (= bs!1151900 (and d!1528705 d!1528663)))

(assert (=> bs!1151900 (= lambda!228243 lambda!228223)))

(declare-fun bs!1151901 () Bool)

(assert (= bs!1151901 (and d!1528705 start!490904)))

(assert (=> bs!1151901 (= lambda!228243 lambda!228206)))

(declare-fun bs!1151902 () Bool)

(assert (= bs!1151902 (and d!1528705 d!1528697)))

(assert (=> bs!1151902 (= lambda!228243 lambda!228237)))

(declare-fun bs!1151903 () Bool)

(assert (= bs!1151903 (and d!1528705 d!1528703)))

(assert (=> bs!1151903 (= lambda!228243 lambda!228240)))

(assert (=> d!1528705 (contains!17534 lm!2709 (hash!4816 hashF!1687 key!6641))))

(declare-fun lt!1943947 () Unit!139271)

(declare-fun choose!34269 (ListLongMap!5163 K!15567 Hashable!6831) Unit!139271)

(assert (=> d!1528705 (= lt!1943947 (choose!34269 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1528705 (forall!12123 (toList!6741 lm!2709) lambda!228243)))

(assert (=> d!1528705 (= (lemmaInGenMapThenLongMapContainsHash!1027 lm!2709 key!6641 hashF!1687) lt!1943947)))

(declare-fun bs!1151904 () Bool)

(assert (= bs!1151904 d!1528705))

(assert (=> bs!1151904 m!5758440))

(assert (=> bs!1151904 m!5758440))

(assert (=> bs!1151904 m!5758628))

(declare-fun m!5758652 () Bool)

(assert (=> bs!1151904 m!5758652))

(declare-fun m!5758654 () Bool)

(assert (=> bs!1151904 m!5758654))

(assert (=> b!4781341 d!1528705))

(declare-fun d!1528707 () Bool)

(assert (=> d!1528707 (= (get!18359 lt!1943803) (v!48137 lt!1943803))))

(assert (=> b!4781341 d!1528707))

(declare-fun bs!1151905 () Bool)

(declare-fun d!1528709 () Bool)

(assert (= bs!1151905 (and d!1528709 d!1528645)))

(declare-fun lambda!228246 () Int)

(assert (=> bs!1151905 (not (= lambda!228246 lambda!228218))))

(declare-fun bs!1151906 () Bool)

(assert (= bs!1151906 (and d!1528709 d!1528663)))

(assert (=> bs!1151906 (= lambda!228246 lambda!228223)))

(declare-fun bs!1151907 () Bool)

(assert (= bs!1151907 (and d!1528709 d!1528705)))

(assert (=> bs!1151907 (= lambda!228246 lambda!228243)))

(declare-fun bs!1151908 () Bool)

(assert (= bs!1151908 (and d!1528709 start!490904)))

(assert (=> bs!1151908 (= lambda!228246 lambda!228206)))

(declare-fun bs!1151909 () Bool)

(assert (= bs!1151909 (and d!1528709 d!1528697)))

(assert (=> bs!1151909 (= lambda!228246 lambda!228237)))

(declare-fun bs!1151910 () Bool)

(assert (= bs!1151910 (and d!1528709 d!1528703)))

(assert (=> bs!1151910 (= lambda!228246 lambda!228240)))

(assert (=> d!1528709 (contains!17535 (extractMap!2358 (toList!6741 lm!2709)) key!6641)))

(declare-fun lt!1943958 () Unit!139271)

(declare-fun choose!34270 (ListLongMap!5163 K!15567 Hashable!6831) Unit!139271)

(assert (=> d!1528709 (= lt!1943958 (choose!34270 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1528709 (forall!12123 (toList!6741 lm!2709) lambda!228246)))

(assert (=> d!1528709 (= (lemmaListContainsThenExtractedMapContains!679 lm!2709 key!6641 hashF!1687) lt!1943958)))

(declare-fun bs!1151911 () Bool)

(assert (= bs!1151911 d!1528709))

(assert (=> bs!1151911 m!5758434))

(assert (=> bs!1151911 m!5758434))

(assert (=> bs!1151911 m!5758446))

(declare-fun m!5758676 () Bool)

(assert (=> bs!1151911 m!5758676))

(declare-fun m!5758678 () Bool)

(assert (=> bs!1151911 m!5758678))

(assert (=> b!4781341 d!1528709))

(declare-fun d!1528713 () Bool)

(declare-fun res!2030258 () Bool)

(declare-fun e!2985165 () Bool)

(assert (=> d!1528713 (=> res!2030258 e!2985165)))

(assert (=> d!1528713 (= res!2030258 (and (is-Cons!53999 (_2!31541 (head!10359 (toList!6741 lm!2709)))) (= (_1!31540 (h!60419 (_2!31541 (head!10359 (toList!6741 lm!2709))))) key!6641)))))

(assert (=> d!1528713 (= (containsKey!3807 (_2!31541 (head!10359 (toList!6741 lm!2709))) key!6641) e!2985165)))

(declare-fun b!4781533 () Bool)

(declare-fun e!2985166 () Bool)

(assert (=> b!4781533 (= e!2985165 e!2985166)))

(declare-fun res!2030259 () Bool)

(assert (=> b!4781533 (=> (not res!2030259) (not e!2985166))))

(assert (=> b!4781533 (= res!2030259 (is-Cons!53999 (_2!31541 (head!10359 (toList!6741 lm!2709)))))))

(declare-fun b!4781534 () Bool)

(assert (=> b!4781534 (= e!2985166 (containsKey!3807 (t!361573 (_2!31541 (head!10359 (toList!6741 lm!2709)))) key!6641))))

(assert (= (and d!1528713 (not res!2030258)) b!4781533))

(assert (= (and b!4781533 res!2030259) b!4781534))

(declare-fun m!5758680 () Bool)

(assert (=> b!4781534 m!5758680))

(assert (=> b!4781340 d!1528713))

(declare-fun d!1528715 () Bool)

(assert (=> d!1528715 (= (head!10359 (toList!6741 lm!2709)) (h!60420 (toList!6741 lm!2709)))))

(assert (=> b!4781340 d!1528715))

(declare-fun d!1528717 () Bool)

(declare-fun res!2030269 () Bool)

(declare-fun e!2985176 () Bool)

(assert (=> d!1528717 (=> res!2030269 e!2985176)))

(declare-fun e!2985175 () Bool)

(assert (=> d!1528717 (= res!2030269 e!2985175)))

(declare-fun res!2030267 () Bool)

(assert (=> d!1528717 (=> (not res!2030267) (not e!2985175))))

(assert (=> d!1528717 (= res!2030267 (is-Cons!54000 (toList!6741 lm!2709)))))

(assert (=> d!1528717 (= (containsKeyBiggerList!487 (toList!6741 lm!2709) key!6641) e!2985176)))

(declare-fun b!4781542 () Bool)

(assert (=> b!4781542 (= e!2985175 (containsKey!3807 (_2!31541 (h!60420 (toList!6741 lm!2709))) key!6641))))

(declare-fun b!4781543 () Bool)

(declare-fun e!2985174 () Bool)

(assert (=> b!4781543 (= e!2985176 e!2985174)))

(declare-fun res!2030268 () Bool)

(assert (=> b!4781543 (=> (not res!2030268) (not e!2985174))))

(assert (=> b!4781543 (= res!2030268 (is-Cons!54000 (toList!6741 lm!2709)))))

(declare-fun b!4781544 () Bool)

(assert (=> b!4781544 (= e!2985174 (containsKeyBiggerList!487 (t!361574 (toList!6741 lm!2709)) key!6641))))

(assert (= (and d!1528717 res!2030267) b!4781542))

(assert (= (and d!1528717 (not res!2030269)) b!4781543))

(assert (= (and b!4781543 res!2030268) b!4781544))

(assert (=> b!4781542 m!5758410))

(declare-fun m!5758686 () Bool)

(assert (=> b!4781544 m!5758686))

(assert (=> b!4781339 d!1528717))

(declare-fun b!4781549 () Bool)

(declare-fun e!2985179 () Bool)

(declare-fun tp!1357447 () Bool)

(declare-fun tp!1357448 () Bool)

(assert (=> b!4781549 (= e!2985179 (and tp!1357447 tp!1357448))))

(assert (=> b!4781335 (= tp!1357439 e!2985179)))

(assert (= (and b!4781335 (is-Cons!54000 (toList!6741 lm!2709))) b!4781549))

(declare-fun b_lambda!185659 () Bool)

(assert (= b_lambda!185651 (or start!490904 b_lambda!185659)))

(declare-fun bs!1151912 () Bool)

(declare-fun d!1528721 () Bool)

(assert (= bs!1151912 (and d!1528721 start!490904)))

(assert (=> bs!1151912 (= (dynLambda!22012 lambda!228206 (h!60420 (toList!6741 lm!2709))) (noDuplicateKeys!2292 (_2!31541 (h!60420 (toList!6741 lm!2709)))))))

(declare-fun m!5758688 () Bool)

(assert (=> bs!1151912 m!5758688))

(assert (=> b!4781382 d!1528721))

(declare-fun b_lambda!185661 () Bool)

(assert (= b_lambda!185655 (or start!490904 b_lambda!185661)))

(declare-fun bs!1151913 () Bool)

(declare-fun d!1528723 () Bool)

(assert (= bs!1151913 (and d!1528723 start!490904)))

(assert (=> bs!1151913 (= (dynLambda!22012 lambda!228206 lt!1943807) (noDuplicateKeys!2292 (_2!31541 lt!1943807)))))

(declare-fun m!5758690 () Bool)

(assert (=> bs!1151913 m!5758690))

(assert (=> d!1528677 d!1528723))

(push 1)

(assert (not d!1528709))

(assert (not d!1528705))

(assert (not b!4781496))

(assert (not d!1528683))

(assert (not b!4781478))

(assert (not b!4781484))

(assert (not d!1528701))

(assert (not b!4781451))

(assert (not bs!1151913))

(assert (not b!4781482))

(assert (not b!4781448))

(assert (not bm!334728))

(assert (not b!4781427))

(assert (not d!1528669))

(assert (not b!4781395))

(assert (not b!4781510))

(assert (not d!1528697))

(assert (not d!1528645))

(assert (not b!4781494))

(assert (not b!4781418))

(assert (not b_lambda!185661))

(assert (not bs!1151912))

(assert tp_is_empty!33227)

(assert (not d!1528665))

(assert (not b!4781479))

(assert (not b!4781495))

(assert (not b!4781405))

(assert (not b!4781485))

(assert (not b!4781480))

(assert (not d!1528691))

(assert (not b!4781483))

(assert (not b!4781383))

(assert (not b!4781544))

(assert (not b!4781549))

(assert (not b!4781397))

(assert tp_is_empty!33225)

(assert (not b!4781445))

(assert (not b!4781449))

(assert (not d!1528651))

(assert (not d!1528687))

(assert (not d!1528663))

(assert (not d!1528659))

(assert (not b!4781497))

(assert (not b!4781534))

(assert (not b_lambda!185659))

(assert (not d!1528689))

(assert (not b!4781542))

(assert (not d!1528703))

(assert (not b!4781420))

(assert (not d!1528677))

(assert (not b!4781447))

(assert (not d!1528673))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

