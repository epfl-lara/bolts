; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!490704 () Bool)

(assert start!490704)

(declare-fun b!4780525 () Bool)

(declare-fun res!2029625 () Bool)

(declare-fun e!2984507 () Bool)

(assert (=> b!4780525 (=> (not res!2029625) (not e!2984507))))

(declare-datatypes ((K!15547 0))(
  ( (K!15548 (val!20743 Int)) )
))
(declare-datatypes ((V!15793 0))(
  ( (V!15794 (val!20744 Int)) )
))
(declare-datatypes ((tuple2!56460 0))(
  ( (tuple2!56461 (_1!31524 K!15547) (_2!31524 V!15793)) )
))
(declare-datatypes ((List!54105 0))(
  ( (Nil!53981) (Cons!53981 (h!60401 tuple2!56460) (t!361555 List!54105)) )
))
(declare-datatypes ((tuple2!56462 0))(
  ( (tuple2!56463 (_1!31525 (_ BitVec 64)) (_2!31525 List!54105)) )
))
(declare-datatypes ((List!54106 0))(
  ( (Nil!53982) (Cons!53982 (h!60402 tuple2!56462) (t!361556 List!54106)) )
))
(declare-datatypes ((ListLongMap!5147 0))(
  ( (ListLongMap!5148 (toList!6725 List!54106)) )
))
(declare-fun lm!2709 () ListLongMap!5147)

(declare-datatypes ((Hashable!6823 0))(
  ( (HashableExt!6822 (__x!32846 Int)) )
))
(declare-fun hashF!1687 () Hashable!6823)

(declare-fun allKeysSameHashInMap!2228 (ListLongMap!5147 Hashable!6823) Bool)

(assert (=> b!4780525 (= res!2029625 (allKeysSameHashInMap!2228 lm!2709 hashF!1687))))

(declare-fun b!4780526 () Bool)

(declare-fun e!2984509 () Bool)

(declare-fun contains!17505 (ListLongMap!5147 (_ BitVec 64)) Bool)

(assert (=> b!4780526 (= e!2984509 (contains!17505 lm!2709 (_1!31525 (h!60402 (toList!6725 lm!2709)))))))

(declare-fun b!4780528 () Bool)

(assert (=> b!4780528 (= e!2984507 (not e!2984509))))

(declare-fun res!2029629 () Bool)

(assert (=> b!4780528 (=> res!2029629 e!2984509)))

(declare-datatypes ((Option!12919 0))(
  ( (None!12918) (Some!12918 (v!48117 tuple2!56460)) )
))
(declare-fun lt!1943092 () Option!12919)

(declare-fun v!11584 () V!15793)

(declare-fun get!18345 (Option!12919) tuple2!56460)

(assert (=> b!4780528 (= res!2029629 (not (= (_2!31524 (get!18345 lt!1943092)) v!11584)))))

(declare-fun isDefined!10063 (Option!12919) Bool)

(assert (=> b!4780528 (isDefined!10063 lt!1943092)))

(declare-fun lt!1943089 () List!54105)

(declare-fun key!6641 () K!15547)

(declare-fun getPair!795 (List!54105 K!15547) Option!12919)

(assert (=> b!4780528 (= lt!1943092 (getPair!795 lt!1943089 key!6641))))

(declare-fun lt!1943090 () tuple2!56462)

(declare-fun lambda!227992 () Int)

(declare-datatypes ((Unit!139213 0))(
  ( (Unit!139214) )
))
(declare-fun lt!1943086 () Unit!139213)

(declare-fun forallContained!4055 (List!54106 Int tuple2!56462) Unit!139213)

(assert (=> b!4780528 (= lt!1943086 (forallContained!4055 (toList!6725 lm!2709) lambda!227992 lt!1943090))))

(declare-fun lt!1943093 () Unit!139213)

(declare-fun lemmaInGenMapThenGetPairDefined!569 (ListLongMap!5147 K!15547 Hashable!6823) Unit!139213)

(assert (=> b!4780528 (= lt!1943093 (lemmaInGenMapThenGetPairDefined!569 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1943088 () Unit!139213)

(assert (=> b!4780528 (= lt!1943088 (forallContained!4055 (toList!6725 lm!2709) lambda!227992 lt!1943090))))

(declare-fun contains!17506 (List!54106 tuple2!56462) Bool)

(assert (=> b!4780528 (contains!17506 (toList!6725 lm!2709) lt!1943090)))

(declare-fun lt!1943095 () (_ BitVec 64))

(assert (=> b!4780528 (= lt!1943090 (tuple2!56463 lt!1943095 lt!1943089))))

(declare-fun lt!1943091 () Unit!139213)

(declare-fun lemmaGetValueImpliesTupleContained!602 (ListLongMap!5147 (_ BitVec 64) List!54105) Unit!139213)

(assert (=> b!4780528 (= lt!1943091 (lemmaGetValueImpliesTupleContained!602 lm!2709 lt!1943095 lt!1943089))))

(declare-fun apply!12878 (ListLongMap!5147 (_ BitVec 64)) List!54105)

(assert (=> b!4780528 (= lt!1943089 (apply!12878 lm!2709 lt!1943095))))

(assert (=> b!4780528 (contains!17505 lm!2709 lt!1943095)))

(declare-fun hash!4806 (Hashable!6823 K!15547) (_ BitVec 64))

(assert (=> b!4780528 (= lt!1943095 (hash!4806 hashF!1687 key!6641))))

(declare-fun lt!1943087 () Unit!139213)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1019 (ListLongMap!5147 K!15547 Hashable!6823) Unit!139213)

(assert (=> b!4780528 (= lt!1943087 (lemmaInGenMapThenLongMapContainsHash!1019 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6197 0))(
  ( (ListMap!6198 (toList!6726 List!54105)) )
))
(declare-fun contains!17507 (ListMap!6197 K!15547) Bool)

(declare-fun extractMap!2350 (List!54106) ListMap!6197)

(assert (=> b!4780528 (contains!17507 (extractMap!2350 (toList!6725 lm!2709)) key!6641)))

(declare-fun lt!1943094 () Unit!139213)

(declare-fun lemmaListContainsThenExtractedMapContains!671 (ListLongMap!5147 K!15547 Hashable!6823) Unit!139213)

(assert (=> b!4780528 (= lt!1943094 (lemmaListContainsThenExtractedMapContains!671 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4780529 () Bool)

(declare-fun e!2984508 () Bool)

(declare-fun tp!1357393 () Bool)

(assert (=> b!4780529 (= e!2984508 tp!1357393)))

(declare-fun b!4780530 () Bool)

(declare-fun res!2029626 () Bool)

(assert (=> b!4780530 (=> res!2029626 e!2984509)))

(assert (=> b!4780530 (= res!2029626 (or (and (is-Cons!53982 (toList!6725 lm!2709)) (= (_1!31525 (h!60402 (toList!6725 lm!2709))) lt!1943095)) (not (is-Cons!53982 (toList!6725 lm!2709)))))))

(declare-fun b!4780531 () Bool)

(declare-fun res!2029630 () Bool)

(assert (=> b!4780531 (=> res!2029630 e!2984509)))

(declare-fun forall!12111 (List!54106 Int) Bool)

(assert (=> b!4780531 (= res!2029630 (not (forall!12111 (toList!6725 lm!2709) lambda!227992)))))

(declare-fun res!2029628 () Bool)

(assert (=> start!490704 (=> (not res!2029628) (not e!2984507))))

(assert (=> start!490704 (= res!2029628 (forall!12111 (toList!6725 lm!2709) lambda!227992))))

(assert (=> start!490704 e!2984507))

(declare-fun inv!69574 (ListLongMap!5147) Bool)

(assert (=> start!490704 (and (inv!69574 lm!2709) e!2984508)))

(assert (=> start!490704 true))

(declare-fun tp_is_empty!33193 () Bool)

(assert (=> start!490704 tp_is_empty!33193))

(declare-fun tp_is_empty!33195 () Bool)

(assert (=> start!490704 tp_is_empty!33195))

(declare-fun b!4780527 () Bool)

(declare-fun res!2029627 () Bool)

(assert (=> b!4780527 (=> (not res!2029627) (not e!2984507))))

(declare-fun containsKeyBiggerList!479 (List!54106 K!15547) Bool)

(assert (=> b!4780527 (= res!2029627 (containsKeyBiggerList!479 (toList!6725 lm!2709) key!6641))))

(assert (= (and start!490704 res!2029628) b!4780525))

(assert (= (and b!4780525 res!2029625) b!4780527))

(assert (= (and b!4780527 res!2029627) b!4780528))

(assert (= (and b!4780528 (not res!2029629)) b!4780530))

(assert (= (and b!4780530 (not res!2029626)) b!4780531))

(assert (= (and b!4780531 (not res!2029630)) b!4780526))

(assert (= start!490704 b!4780529))

(declare-fun m!5757322 () Bool)

(assert (=> b!4780526 m!5757322))

(declare-fun m!5757324 () Bool)

(assert (=> b!4780531 m!5757324))

(declare-fun m!5757326 () Bool)

(assert (=> b!4780525 m!5757326))

(declare-fun m!5757328 () Bool)

(assert (=> b!4780527 m!5757328))

(declare-fun m!5757330 () Bool)

(assert (=> b!4780528 m!5757330))

(declare-fun m!5757332 () Bool)

(assert (=> b!4780528 m!5757332))

(declare-fun m!5757334 () Bool)

(assert (=> b!4780528 m!5757334))

(declare-fun m!5757336 () Bool)

(assert (=> b!4780528 m!5757336))

(declare-fun m!5757338 () Bool)

(assert (=> b!4780528 m!5757338))

(declare-fun m!5757340 () Bool)

(assert (=> b!4780528 m!5757340))

(declare-fun m!5757342 () Bool)

(assert (=> b!4780528 m!5757342))

(declare-fun m!5757344 () Bool)

(assert (=> b!4780528 m!5757344))

(declare-fun m!5757346 () Bool)

(assert (=> b!4780528 m!5757346))

(declare-fun m!5757348 () Bool)

(assert (=> b!4780528 m!5757348))

(declare-fun m!5757350 () Bool)

(assert (=> b!4780528 m!5757350))

(declare-fun m!5757352 () Bool)

(assert (=> b!4780528 m!5757352))

(declare-fun m!5757354 () Bool)

(assert (=> b!4780528 m!5757354))

(assert (=> b!4780528 m!5757330))

(assert (=> b!4780528 m!5757338))

(declare-fun m!5757356 () Bool)

(assert (=> b!4780528 m!5757356))

(assert (=> start!490704 m!5757324))

(declare-fun m!5757358 () Bool)

(assert (=> start!490704 m!5757358))

(push 1)

(assert (not b!4780525))

(assert (not b!4780528))

(assert (not b!4780531))

(assert (not b!4780527))

(assert (not start!490704))

(assert tp_is_empty!33195)

(assert (not b!4780529))

(assert tp_is_empty!33193)

(assert (not b!4780526))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1528291 () Bool)

(declare-fun lt!1943128 () Bool)

(declare-fun content!9641 (List!54106) (Set tuple2!56462))

(assert (=> d!1528291 (= lt!1943128 (set.member lt!1943090 (content!9641 (toList!6725 lm!2709))))))

(declare-fun e!2984524 () Bool)

(assert (=> d!1528291 (= lt!1943128 e!2984524)))

(declare-fun res!2029653 () Bool)

(assert (=> d!1528291 (=> (not res!2029653) (not e!2984524))))

(assert (=> d!1528291 (= res!2029653 (is-Cons!53982 (toList!6725 lm!2709)))))

(assert (=> d!1528291 (= (contains!17506 (toList!6725 lm!2709) lt!1943090) lt!1943128)))

(declare-fun b!4780557 () Bool)

(declare-fun e!2984523 () Bool)

(assert (=> b!4780557 (= e!2984524 e!2984523)))

(declare-fun res!2029654 () Bool)

(assert (=> b!4780557 (=> res!2029654 e!2984523)))

(assert (=> b!4780557 (= res!2029654 (= (h!60402 (toList!6725 lm!2709)) lt!1943090))))

(declare-fun b!4780558 () Bool)

(assert (=> b!4780558 (= e!2984523 (contains!17506 (t!361556 (toList!6725 lm!2709)) lt!1943090))))

(assert (= (and d!1528291 res!2029653) b!4780557))

(assert (= (and b!4780557 (not res!2029654)) b!4780558))

(declare-fun m!5757398 () Bool)

(assert (=> d!1528291 m!5757398))

(declare-fun m!5757400 () Bool)

(assert (=> d!1528291 m!5757400))

(declare-fun m!5757402 () Bool)

(assert (=> b!4780558 m!5757402))

(assert (=> b!4780528 d!1528291))

(declare-fun d!1528293 () Bool)

(declare-fun dynLambda!22010 (Int tuple2!56462) Bool)

(assert (=> d!1528293 (dynLambda!22010 lambda!227992 lt!1943090)))

(declare-fun lt!1943131 () Unit!139213)

(declare-fun choose!34245 (List!54106 Int tuple2!56462) Unit!139213)

(assert (=> d!1528293 (= lt!1943131 (choose!34245 (toList!6725 lm!2709) lambda!227992 lt!1943090))))

(declare-fun e!2984527 () Bool)

(assert (=> d!1528293 e!2984527))

(declare-fun res!2029657 () Bool)

(assert (=> d!1528293 (=> (not res!2029657) (not e!2984527))))

(assert (=> d!1528293 (= res!2029657 (forall!12111 (toList!6725 lm!2709) lambda!227992))))

(assert (=> d!1528293 (= (forallContained!4055 (toList!6725 lm!2709) lambda!227992 lt!1943090) lt!1943131)))

(declare-fun b!4780561 () Bool)

(assert (=> b!4780561 (= e!2984527 (contains!17506 (toList!6725 lm!2709) lt!1943090))))

(assert (= (and d!1528293 res!2029657) b!4780561))

(declare-fun b_lambda!185571 () Bool)

(assert (=> (not b_lambda!185571) (not d!1528293)))

(declare-fun m!5757404 () Bool)

(assert (=> d!1528293 m!5757404))

(declare-fun m!5757406 () Bool)

(assert (=> d!1528293 m!5757406))

(assert (=> d!1528293 m!5757324))

(assert (=> b!4780561 m!5757342))

(assert (=> b!4780528 d!1528293))

(declare-fun d!1528295 () Bool)

(declare-fun isEmpty!29350 (Option!12919) Bool)

(assert (=> d!1528295 (= (isDefined!10063 lt!1943092) (not (isEmpty!29350 lt!1943092)))))

(declare-fun bs!1151718 () Bool)

(assert (= bs!1151718 d!1528295))

(declare-fun m!5757408 () Bool)

(assert (=> bs!1151718 m!5757408))

(assert (=> b!4780528 d!1528295))

(declare-fun bs!1151722 () Bool)

(declare-fun d!1528297 () Bool)

(assert (= bs!1151722 (and d!1528297 start!490704)))

(declare-fun lambda!228011 () Int)

(assert (=> bs!1151722 (= lambda!228011 lambda!227992)))

(declare-fun b!4780593 () Bool)

(declare-fun res!2029686 () Bool)

(declare-fun e!2984551 () Bool)

(assert (=> b!4780593 (=> (not res!2029686) (not e!2984551))))

(assert (=> b!4780593 (= res!2029686 (allKeysSameHashInMap!2228 lm!2709 hashF!1687))))

(declare-fun b!4780595 () Bool)

(assert (=> b!4780595 (= e!2984551 (isDefined!10063 (getPair!795 (apply!12878 lm!2709 (hash!4806 hashF!1687 key!6641)) key!6641)))))

(declare-fun lt!1943158 () Unit!139213)

(assert (=> b!4780595 (= lt!1943158 (forallContained!4055 (toList!6725 lm!2709) lambda!228011 (tuple2!56463 (hash!4806 hashF!1687 key!6641) (apply!12878 lm!2709 (hash!4806 hashF!1687 key!6641)))))))

(declare-fun lt!1943163 () Unit!139213)

(declare-fun lt!1943160 () Unit!139213)

(assert (=> b!4780595 (= lt!1943163 lt!1943160)))

(declare-fun lt!1943157 () (_ BitVec 64))

(declare-fun lt!1943159 () List!54105)

(assert (=> b!4780595 (contains!17506 (toList!6725 lm!2709) (tuple2!56463 lt!1943157 lt!1943159))))

(assert (=> b!4780595 (= lt!1943160 (lemmaGetValueImpliesTupleContained!602 lm!2709 lt!1943157 lt!1943159))))

(declare-fun e!2984552 () Bool)

(assert (=> b!4780595 e!2984552))

(declare-fun res!2029683 () Bool)

(assert (=> b!4780595 (=> (not res!2029683) (not e!2984552))))

(assert (=> b!4780595 (= res!2029683 (contains!17505 lm!2709 lt!1943157))))

(assert (=> b!4780595 (= lt!1943159 (apply!12878 lm!2709 (hash!4806 hashF!1687 key!6641)))))

(assert (=> b!4780595 (= lt!1943157 (hash!4806 hashF!1687 key!6641))))

(declare-fun lt!1943162 () Unit!139213)

(declare-fun lt!1943161 () Unit!139213)

(assert (=> b!4780595 (= lt!1943162 lt!1943161)))

(assert (=> b!4780595 (contains!17505 lm!2709 (hash!4806 hashF!1687 key!6641))))

(assert (=> b!4780595 (= lt!1943161 (lemmaInGenMapThenLongMapContainsHash!1019 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1528297 e!2984551))

(declare-fun res!2029684 () Bool)

(assert (=> d!1528297 (=> (not res!2029684) (not e!2984551))))

(assert (=> d!1528297 (= res!2029684 (forall!12111 (toList!6725 lm!2709) lambda!228011))))

(declare-fun lt!1943156 () Unit!139213)

(declare-fun choose!34246 (ListLongMap!5147 K!15547 Hashable!6823) Unit!139213)

(assert (=> d!1528297 (= lt!1943156 (choose!34246 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1528297 (forall!12111 (toList!6725 lm!2709) lambda!228011)))

(assert (=> d!1528297 (= (lemmaInGenMapThenGetPairDefined!569 lm!2709 key!6641 hashF!1687) lt!1943156)))

(declare-fun b!4780594 () Bool)

(declare-fun res!2029685 () Bool)

(assert (=> b!4780594 (=> (not res!2029685) (not e!2984551))))

(assert (=> b!4780594 (= res!2029685 (contains!17507 (extractMap!2350 (toList!6725 lm!2709)) key!6641))))

(declare-fun b!4780596 () Bool)

(declare-datatypes ((Option!12921 0))(
  ( (None!12920) (Some!12920 (v!48121 List!54105)) )
))
(declare-fun getValueByKey!2272 (List!54106 (_ BitVec 64)) Option!12921)

(assert (=> b!4780596 (= e!2984552 (= (getValueByKey!2272 (toList!6725 lm!2709) lt!1943157) (Some!12920 lt!1943159)))))

(assert (= (and d!1528297 res!2029684) b!4780593))

(assert (= (and b!4780593 res!2029686) b!4780594))

(assert (= (and b!4780594 res!2029685) b!4780595))

(assert (= (and b!4780595 res!2029683) b!4780596))

(assert (=> b!4780594 m!5757338))

(assert (=> b!4780594 m!5757338))

(assert (=> b!4780594 m!5757356))

(declare-fun m!5757422 () Bool)

(assert (=> d!1528297 m!5757422))

(declare-fun m!5757424 () Bool)

(assert (=> d!1528297 m!5757424))

(assert (=> d!1528297 m!5757422))

(declare-fun m!5757426 () Bool)

(assert (=> b!4780596 m!5757426))

(assert (=> b!4780593 m!5757326))

(declare-fun m!5757428 () Bool)

(assert (=> b!4780595 m!5757428))

(declare-fun m!5757430 () Bool)

(assert (=> b!4780595 m!5757430))

(declare-fun m!5757432 () Bool)

(assert (=> b!4780595 m!5757432))

(declare-fun m!5757434 () Bool)

(assert (=> b!4780595 m!5757434))

(assert (=> b!4780595 m!5757348))

(declare-fun m!5757436 () Bool)

(assert (=> b!4780595 m!5757436))

(assert (=> b!4780595 m!5757434))

(declare-fun m!5757438 () Bool)

(assert (=> b!4780595 m!5757438))

(declare-fun m!5757440 () Bool)

(assert (=> b!4780595 m!5757440))

(assert (=> b!4780595 m!5757352))

(assert (=> b!4780595 m!5757348))

(declare-fun m!5757442 () Bool)

(assert (=> b!4780595 m!5757442))

(assert (=> b!4780595 m!5757348))

(assert (=> b!4780595 m!5757432))

(assert (=> b!4780528 d!1528297))

(declare-fun bs!1151723 () Bool)

(declare-fun d!1528309 () Bool)

(assert (= bs!1151723 (and d!1528309 start!490704)))

(declare-fun lambda!228014 () Int)

(assert (=> bs!1151723 (= lambda!228014 lambda!227992)))

(declare-fun bs!1151724 () Bool)

(assert (= bs!1151724 (and d!1528309 d!1528297)))

(assert (=> bs!1151724 (= lambda!228014 lambda!228011)))

(declare-fun lt!1943170 () ListMap!6197)

(declare-fun invariantList!1692 (List!54105) Bool)

(assert (=> d!1528309 (invariantList!1692 (toList!6726 lt!1943170))))

(declare-fun e!2984557 () ListMap!6197)

(assert (=> d!1528309 (= lt!1943170 e!2984557)))

(declare-fun c!814991 () Bool)

(assert (=> d!1528309 (= c!814991 (is-Cons!53982 (toList!6725 lm!2709)))))

(assert (=> d!1528309 (forall!12111 (toList!6725 lm!2709) lambda!228014)))

(assert (=> d!1528309 (= (extractMap!2350 (toList!6725 lm!2709)) lt!1943170)))

(declare-fun b!4780604 () Bool)

(declare-fun addToMapMapFromBucket!1657 (List!54105 ListMap!6197) ListMap!6197)

(assert (=> b!4780604 (= e!2984557 (addToMapMapFromBucket!1657 (_2!31525 (h!60402 (toList!6725 lm!2709))) (extractMap!2350 (t!361556 (toList!6725 lm!2709)))))))

(declare-fun b!4780605 () Bool)

(assert (=> b!4780605 (= e!2984557 (ListMap!6198 Nil!53981))))

(assert (= (and d!1528309 c!814991) b!4780604))

(assert (= (and d!1528309 (not c!814991)) b!4780605))

(declare-fun m!5757452 () Bool)

(assert (=> d!1528309 m!5757452))

(declare-fun m!5757454 () Bool)

(assert (=> d!1528309 m!5757454))

(declare-fun m!5757456 () Bool)

(assert (=> b!4780604 m!5757456))

(assert (=> b!4780604 m!5757456))

(declare-fun m!5757458 () Bool)

(assert (=> b!4780604 m!5757458))

(assert (=> b!4780528 d!1528309))

(declare-fun bs!1151725 () Bool)

(declare-fun d!1528313 () Bool)

(assert (= bs!1151725 (and d!1528313 start!490704)))

(declare-fun lambda!228017 () Int)

(assert (=> bs!1151725 (= lambda!228017 lambda!227992)))

(declare-fun bs!1151726 () Bool)

(assert (= bs!1151726 (and d!1528313 d!1528297)))

(assert (=> bs!1151726 (= lambda!228017 lambda!228011)))

(declare-fun bs!1151727 () Bool)

(assert (= bs!1151727 (and d!1528313 d!1528309)))

(assert (=> bs!1151727 (= lambda!228017 lambda!228014)))

(assert (=> d!1528313 (contains!17505 lm!2709 (hash!4806 hashF!1687 key!6641))))

(declare-fun lt!1943173 () Unit!139213)

(declare-fun choose!34247 (ListLongMap!5147 K!15547 Hashable!6823) Unit!139213)

(assert (=> d!1528313 (= lt!1943173 (choose!34247 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1528313 (forall!12111 (toList!6725 lm!2709) lambda!228017)))

(assert (=> d!1528313 (= (lemmaInGenMapThenLongMapContainsHash!1019 lm!2709 key!6641 hashF!1687) lt!1943173)))

(declare-fun bs!1151728 () Bool)

(assert (= bs!1151728 d!1528313))

(assert (=> bs!1151728 m!5757348))

(assert (=> bs!1151728 m!5757348))

(assert (=> bs!1151728 m!5757436))

(declare-fun m!5757460 () Bool)

(assert (=> bs!1151728 m!5757460))

(declare-fun m!5757462 () Bool)

(assert (=> bs!1151728 m!5757462))

(assert (=> b!4780528 d!1528313))

(declare-fun bs!1151729 () Bool)

(declare-fun d!1528315 () Bool)

(assert (= bs!1151729 (and d!1528315 start!490704)))

(declare-fun lambda!228020 () Int)

(assert (=> bs!1151729 (= lambda!228020 lambda!227992)))

(declare-fun bs!1151730 () Bool)

(assert (= bs!1151730 (and d!1528315 d!1528297)))

(assert (=> bs!1151730 (= lambda!228020 lambda!228011)))

(declare-fun bs!1151731 () Bool)

(assert (= bs!1151731 (and d!1528315 d!1528309)))

(assert (=> bs!1151731 (= lambda!228020 lambda!228014)))

(declare-fun bs!1151732 () Bool)

(assert (= bs!1151732 (and d!1528315 d!1528313)))

(assert (=> bs!1151732 (= lambda!228020 lambda!228017)))

(assert (=> d!1528315 (contains!17507 (extractMap!2350 (toList!6725 lm!2709)) key!6641)))

(declare-fun lt!1943176 () Unit!139213)

(declare-fun choose!34248 (ListLongMap!5147 K!15547 Hashable!6823) Unit!139213)

(assert (=> d!1528315 (= lt!1943176 (choose!34248 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1528315 (forall!12111 (toList!6725 lm!2709) lambda!228020)))

(assert (=> d!1528315 (= (lemmaListContainsThenExtractedMapContains!671 lm!2709 key!6641 hashF!1687) lt!1943176)))

(declare-fun bs!1151733 () Bool)

(assert (= bs!1151733 d!1528315))

(assert (=> bs!1151733 m!5757338))

(assert (=> bs!1151733 m!5757338))

(assert (=> bs!1151733 m!5757356))

(declare-fun m!5757464 () Bool)

(assert (=> bs!1151733 m!5757464))

(declare-fun m!5757466 () Bool)

(assert (=> bs!1151733 m!5757466))

(assert (=> b!4780528 d!1528315))

(declare-fun d!1528317 () Bool)

(assert (=> d!1528317 (contains!17506 (toList!6725 lm!2709) (tuple2!56463 lt!1943095 lt!1943089))))

(declare-fun lt!1943181 () Unit!139213)

(declare-fun choose!34249 (ListLongMap!5147 (_ BitVec 64) List!54105) Unit!139213)

(assert (=> d!1528317 (= lt!1943181 (choose!34249 lm!2709 lt!1943095 lt!1943089))))

(assert (=> d!1528317 (contains!17505 lm!2709 lt!1943095)))

(assert (=> d!1528317 (= (lemmaGetValueImpliesTupleContained!602 lm!2709 lt!1943095 lt!1943089) lt!1943181)))

(declare-fun bs!1151734 () Bool)

(assert (= bs!1151734 d!1528317))

(declare-fun m!5757468 () Bool)

(assert (=> bs!1151734 m!5757468))

(declare-fun m!5757470 () Bool)

(assert (=> bs!1151734 m!5757470))

(assert (=> bs!1151734 m!5757334))

(assert (=> b!4780528 d!1528317))

(declare-fun b!4780626 () Bool)

(declare-fun e!2984573 () Unit!139213)

(declare-fun Unit!139217 () Unit!139213)

(assert (=> b!4780626 (= e!2984573 Unit!139217)))

(declare-fun b!4780627 () Bool)

(declare-fun e!2984575 () Bool)

(declare-datatypes ((List!54109 0))(
  ( (Nil!53985) (Cons!53985 (h!60405 K!15547) (t!361559 List!54109)) )
))
(declare-fun contains!17511 (List!54109 K!15547) Bool)

(declare-fun keys!19659 (ListMap!6197) List!54109)

(assert (=> b!4780627 (= e!2984575 (not (contains!17511 (keys!19659 (extractMap!2350 (toList!6725 lm!2709))) key!6641)))))

(declare-fun b!4780628 () Bool)

(assert (=> b!4780628 false))

(declare-fun lt!1943205 () Unit!139213)

(declare-fun lt!1943207 () Unit!139213)

(assert (=> b!4780628 (= lt!1943205 lt!1943207)))

(declare-fun containsKey!3797 (List!54105 K!15547) Bool)

(assert (=> b!4780628 (containsKey!3797 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))) key!6641)))

(declare-fun lemmaInGetKeysListThenContainsKey!1036 (List!54105 K!15547) Unit!139213)

(assert (=> b!4780628 (= lt!1943207 (lemmaInGetKeysListThenContainsKey!1036 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))) key!6641))))

(declare-fun Unit!139218 () Unit!139213)

(assert (=> b!4780628 (= e!2984573 Unit!139218)))

(declare-fun b!4780629 () Bool)

(declare-fun e!2984570 () List!54109)

(declare-fun getKeysList!1036 (List!54105) List!54109)

(assert (=> b!4780629 (= e!2984570 (getKeysList!1036 (toList!6726 (extractMap!2350 (toList!6725 lm!2709)))))))

(declare-fun b!4780630 () Bool)

(declare-fun e!2984574 () Bool)

(declare-fun e!2984571 () Bool)

(assert (=> b!4780630 (= e!2984574 e!2984571)))

(declare-fun res!2029696 () Bool)

(assert (=> b!4780630 (=> (not res!2029696) (not e!2984571))))

(declare-datatypes ((Option!12922 0))(
  ( (None!12921) (Some!12921 (v!48124 V!15793)) )
))
(declare-fun isDefined!10065 (Option!12922) Bool)

(declare-fun getValueByKey!2273 (List!54105 K!15547) Option!12922)

(assert (=> b!4780630 (= res!2029696 (isDefined!10065 (getValueByKey!2273 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))) key!6641)))))

(declare-fun b!4780631 () Bool)

(declare-fun e!2984572 () Unit!139213)

(declare-fun lt!1943208 () Unit!139213)

(assert (=> b!4780631 (= e!2984572 lt!1943208)))

(declare-fun lt!1943202 () Unit!139213)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2066 (List!54105 K!15547) Unit!139213)

(assert (=> b!4780631 (= lt!1943202 (lemmaContainsKeyImpliesGetValueByKeyDefined!2066 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))) key!6641))))

(assert (=> b!4780631 (isDefined!10065 (getValueByKey!2273 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))) key!6641))))

(declare-fun lt!1943206 () Unit!139213)

(assert (=> b!4780631 (= lt!1943206 lt!1943202)))

(declare-fun lemmaInListThenGetKeysListContains!1031 (List!54105 K!15547) Unit!139213)

(assert (=> b!4780631 (= lt!1943208 (lemmaInListThenGetKeysListContains!1031 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))) key!6641))))

(declare-fun call!334709 () Bool)

(assert (=> b!4780631 call!334709))

(declare-fun b!4780632 () Bool)

(assert (=> b!4780632 (= e!2984570 (keys!19659 (extractMap!2350 (toList!6725 lm!2709))))))

(declare-fun d!1528319 () Bool)

(assert (=> d!1528319 e!2984574))

(declare-fun res!2029695 () Bool)

(assert (=> d!1528319 (=> res!2029695 e!2984574)))

(assert (=> d!1528319 (= res!2029695 e!2984575)))

(declare-fun res!2029694 () Bool)

(assert (=> d!1528319 (=> (not res!2029694) (not e!2984575))))

(declare-fun lt!1943203 () Bool)

(assert (=> d!1528319 (= res!2029694 (not lt!1943203))))

(declare-fun lt!1943209 () Bool)

(assert (=> d!1528319 (= lt!1943203 lt!1943209)))

(declare-fun lt!1943204 () Unit!139213)

(assert (=> d!1528319 (= lt!1943204 e!2984572)))

(declare-fun c!814999 () Bool)

(assert (=> d!1528319 (= c!814999 lt!1943209)))

(assert (=> d!1528319 (= lt!1943209 (containsKey!3797 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))) key!6641))))

(assert (=> d!1528319 (= (contains!17507 (extractMap!2350 (toList!6725 lm!2709)) key!6641) lt!1943203)))

(declare-fun b!4780633 () Bool)

(assert (=> b!4780633 (= e!2984571 (contains!17511 (keys!19659 (extractMap!2350 (toList!6725 lm!2709))) key!6641))))

(declare-fun bm!334704 () Bool)

(assert (=> bm!334704 (= call!334709 (contains!17511 e!2984570 key!6641))))

(declare-fun c!815000 () Bool)

(assert (=> bm!334704 (= c!815000 c!814999)))

(declare-fun b!4780634 () Bool)

(assert (=> b!4780634 (= e!2984572 e!2984573)))

(declare-fun c!814998 () Bool)

(assert (=> b!4780634 (= c!814998 call!334709)))

(assert (= (and d!1528319 c!814999) b!4780631))

(assert (= (and d!1528319 (not c!814999)) b!4780634))

(assert (= (and b!4780634 c!814998) b!4780628))

(assert (= (and b!4780634 (not c!814998)) b!4780626))

(assert (= (or b!4780631 b!4780634) bm!334704))

(assert (= (and bm!334704 c!815000) b!4780629))

(assert (= (and bm!334704 (not c!815000)) b!4780632))

(assert (= (and d!1528319 res!2029694) b!4780627))

(assert (= (and d!1528319 (not res!2029695)) b!4780630))

(assert (= (and b!4780630 res!2029696) b!4780633))

(declare-fun m!5757480 () Bool)

(assert (=> b!4780629 m!5757480))

(declare-fun m!5757482 () Bool)

(assert (=> b!4780631 m!5757482))

(declare-fun m!5757484 () Bool)

(assert (=> b!4780631 m!5757484))

(assert (=> b!4780631 m!5757484))

(declare-fun m!5757486 () Bool)

(assert (=> b!4780631 m!5757486))

(declare-fun m!5757488 () Bool)

(assert (=> b!4780631 m!5757488))

(assert (=> b!4780630 m!5757484))

(assert (=> b!4780630 m!5757484))

(assert (=> b!4780630 m!5757486))

(assert (=> b!4780633 m!5757338))

(declare-fun m!5757490 () Bool)

(assert (=> b!4780633 m!5757490))

(assert (=> b!4780633 m!5757490))

(declare-fun m!5757492 () Bool)

(assert (=> b!4780633 m!5757492))

(declare-fun m!5757494 () Bool)

(assert (=> d!1528319 m!5757494))

(assert (=> b!4780628 m!5757494))

(declare-fun m!5757496 () Bool)

(assert (=> b!4780628 m!5757496))

(declare-fun m!5757498 () Bool)

(assert (=> bm!334704 m!5757498))

(assert (=> b!4780627 m!5757338))

(assert (=> b!4780627 m!5757490))

(assert (=> b!4780627 m!5757490))

(assert (=> b!4780627 m!5757492))

(assert (=> b!4780632 m!5757338))

(assert (=> b!4780632 m!5757490))

(assert (=> b!4780528 d!1528319))

(declare-fun d!1528325 () Bool)

(declare-fun e!2984591 () Bool)

(assert (=> d!1528325 e!2984591))

(declare-fun res!2029707 () Bool)

(assert (=> d!1528325 (=> res!2029707 e!2984591)))

(declare-fun lt!1943222 () Bool)

(assert (=> d!1528325 (= res!2029707 (not lt!1943222))))

(declare-fun lt!1943221 () Bool)

(assert (=> d!1528325 (= lt!1943222 lt!1943221)))

(declare-fun lt!1943223 () Unit!139213)

(declare-fun e!2984590 () Unit!139213)

(assert (=> d!1528325 (= lt!1943223 e!2984590)))

(declare-fun c!815007 () Bool)

(assert (=> d!1528325 (= c!815007 lt!1943221)))

(declare-fun containsKey!3798 (List!54106 (_ BitVec 64)) Bool)

(assert (=> d!1528325 (= lt!1943221 (containsKey!3798 (toList!6725 lm!2709) lt!1943095))))

(assert (=> d!1528325 (= (contains!17505 lm!2709 lt!1943095) lt!1943222)))

(declare-fun b!4780657 () Bool)

(declare-fun lt!1943220 () Unit!139213)

(assert (=> b!4780657 (= e!2984590 lt!1943220)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2067 (List!54106 (_ BitVec 64)) Unit!139213)

(assert (=> b!4780657 (= lt!1943220 (lemmaContainsKeyImpliesGetValueByKeyDefined!2067 (toList!6725 lm!2709) lt!1943095))))

(declare-fun isDefined!10066 (Option!12921) Bool)

(assert (=> b!4780657 (isDefined!10066 (getValueByKey!2272 (toList!6725 lm!2709) lt!1943095))))

(declare-fun b!4780658 () Bool)

(declare-fun Unit!139219 () Unit!139213)

(assert (=> b!4780658 (= e!2984590 Unit!139219)))

(declare-fun b!4780659 () Bool)

(assert (=> b!4780659 (= e!2984591 (isDefined!10066 (getValueByKey!2272 (toList!6725 lm!2709) lt!1943095)))))

(assert (= (and d!1528325 c!815007) b!4780657))

(assert (= (and d!1528325 (not c!815007)) b!4780658))

(assert (= (and d!1528325 (not res!2029707)) b!4780659))

(declare-fun m!5757500 () Bool)

(assert (=> d!1528325 m!5757500))

(declare-fun m!5757502 () Bool)

(assert (=> b!4780657 m!5757502))

(declare-fun m!5757504 () Bool)

(assert (=> b!4780657 m!5757504))

(assert (=> b!4780657 m!5757504))

(declare-fun m!5757506 () Bool)

(assert (=> b!4780657 m!5757506))

(assert (=> b!4780659 m!5757504))

(assert (=> b!4780659 m!5757504))

(assert (=> b!4780659 m!5757506))

(assert (=> b!4780528 d!1528325))

(declare-fun d!1528327 () Bool)

(declare-fun hash!4808 (Hashable!6823 K!15547) (_ BitVec 64))

(assert (=> d!1528327 (= (hash!4806 hashF!1687 key!6641) (hash!4808 hashF!1687 key!6641))))

(declare-fun bs!1151739 () Bool)

(assert (= bs!1151739 d!1528327))

(declare-fun m!5757508 () Bool)

(assert (=> bs!1151739 m!5757508))

(assert (=> b!4780528 d!1528327))

(declare-fun d!1528329 () Bool)

(declare-fun get!18347 (Option!12921) List!54105)

(assert (=> d!1528329 (= (apply!12878 lm!2709 lt!1943095) (get!18347 (getValueByKey!2272 (toList!6725 lm!2709) lt!1943095)))))

(declare-fun bs!1151740 () Bool)

(assert (= bs!1151740 d!1528329))

(assert (=> bs!1151740 m!5757504))

(assert (=> bs!1151740 m!5757504))

(declare-fun m!5757510 () Bool)

(assert (=> bs!1151740 m!5757510))

(assert (=> b!4780528 d!1528329))

(declare-fun d!1528331 () Bool)

(declare-fun e!2984610 () Bool)

(assert (=> d!1528331 e!2984610))

(declare-fun res!2029720 () Bool)

(assert (=> d!1528331 (=> res!2029720 e!2984610)))

(declare-fun e!2984607 () Bool)

(assert (=> d!1528331 (= res!2029720 e!2984607)))

(declare-fun res!2029721 () Bool)

(assert (=> d!1528331 (=> (not res!2029721) (not e!2984607))))

(declare-fun lt!1943227 () Option!12919)

(assert (=> d!1528331 (= res!2029721 (isEmpty!29350 lt!1943227))))

(declare-fun e!2984611 () Option!12919)

(assert (=> d!1528331 (= lt!1943227 e!2984611)))

(declare-fun c!815015 () Bool)

(assert (=> d!1528331 (= c!815015 (and (is-Cons!53981 lt!1943089) (= (_1!31524 (h!60401 lt!1943089)) key!6641)))))

(declare-fun noDuplicateKeys!2290 (List!54105) Bool)

(assert (=> d!1528331 (noDuplicateKeys!2290 lt!1943089)))

(assert (=> d!1528331 (= (getPair!795 lt!1943089 key!6641) lt!1943227)))

(declare-fun b!4780684 () Bool)

(declare-fun res!2029722 () Bool)

(declare-fun e!2984609 () Bool)

(assert (=> b!4780684 (=> (not res!2029722) (not e!2984609))))

(assert (=> b!4780684 (= res!2029722 (= (_1!31524 (get!18345 lt!1943227)) key!6641))))

(declare-fun b!4780685 () Bool)

(assert (=> b!4780685 (= e!2984610 e!2984609)))

(declare-fun res!2029723 () Bool)

(assert (=> b!4780685 (=> (not res!2029723) (not e!2984609))))

(assert (=> b!4780685 (= res!2029723 (isDefined!10063 lt!1943227))))

(declare-fun b!4780686 () Bool)

(declare-fun e!2984608 () Option!12919)

(assert (=> b!4780686 (= e!2984608 (getPair!795 (t!361555 lt!1943089) key!6641))))

(declare-fun b!4780687 () Bool)

(declare-fun contains!17512 (List!54105 tuple2!56460) Bool)

(assert (=> b!4780687 (= e!2984609 (contains!17512 lt!1943089 (get!18345 lt!1943227)))))

(declare-fun b!4780688 () Bool)

(declare-fun containsKey!3799 (List!54105 K!15547) Bool)

(assert (=> b!4780688 (= e!2984607 (not (containsKey!3799 lt!1943089 key!6641)))))

(declare-fun b!4780689 () Bool)

(assert (=> b!4780689 (= e!2984611 (Some!12918 (h!60401 lt!1943089)))))

(declare-fun b!4780690 () Bool)

(assert (=> b!4780690 (= e!2984608 None!12918)))

(declare-fun b!4780691 () Bool)

(assert (=> b!4780691 (= e!2984611 e!2984608)))

(declare-fun c!815014 () Bool)

(assert (=> b!4780691 (= c!815014 (is-Cons!53981 lt!1943089))))

(assert (= (and d!1528331 c!815015) b!4780689))

(assert (= (and d!1528331 (not c!815015)) b!4780691))

(assert (= (and b!4780691 c!815014) b!4780686))

(assert (= (and b!4780691 (not c!815014)) b!4780690))

(assert (= (and d!1528331 res!2029721) b!4780688))

(assert (= (and d!1528331 (not res!2029720)) b!4780685))

(assert (= (and b!4780685 res!2029723) b!4780684))

(assert (= (and b!4780684 res!2029722) b!4780687))

(declare-fun m!5757526 () Bool)

(assert (=> b!4780686 m!5757526))

(declare-fun m!5757528 () Bool)

(assert (=> b!4780688 m!5757528))

(declare-fun m!5757530 () Bool)

(assert (=> b!4780687 m!5757530))

(assert (=> b!4780687 m!5757530))

(declare-fun m!5757532 () Bool)

(assert (=> b!4780687 m!5757532))

(assert (=> b!4780684 m!5757530))

(declare-fun m!5757534 () Bool)

(assert (=> d!1528331 m!5757534))

(declare-fun m!5757536 () Bool)

(assert (=> d!1528331 m!5757536))

(declare-fun m!5757538 () Bool)

(assert (=> b!4780685 m!5757538))

(assert (=> b!4780528 d!1528331))

(declare-fun d!1528337 () Bool)

(assert (=> d!1528337 (= (get!18345 lt!1943092) (v!48117 lt!1943092))))

(assert (=> b!4780528 d!1528337))

(declare-fun d!1528339 () Bool)

(declare-fun res!2029728 () Bool)

(declare-fun e!2984616 () Bool)

(assert (=> d!1528339 (=> res!2029728 e!2984616)))

(assert (=> d!1528339 (= res!2029728 (is-Nil!53982 (toList!6725 lm!2709)))))

(assert (=> d!1528339 (= (forall!12111 (toList!6725 lm!2709) lambda!227992) e!2984616)))

(declare-fun b!4780696 () Bool)

(declare-fun e!2984617 () Bool)

(assert (=> b!4780696 (= e!2984616 e!2984617)))

(declare-fun res!2029729 () Bool)

(assert (=> b!4780696 (=> (not res!2029729) (not e!2984617))))

(assert (=> b!4780696 (= res!2029729 (dynLambda!22010 lambda!227992 (h!60402 (toList!6725 lm!2709))))))

(declare-fun b!4780697 () Bool)

(assert (=> b!4780697 (= e!2984617 (forall!12111 (t!361556 (toList!6725 lm!2709)) lambda!227992))))

(assert (= (and d!1528339 (not res!2029728)) b!4780696))

(assert (= (and b!4780696 res!2029729) b!4780697))

(declare-fun b_lambda!185575 () Bool)

(assert (=> (not b_lambda!185575) (not b!4780696)))

(declare-fun m!5757540 () Bool)

(assert (=> b!4780696 m!5757540))

(declare-fun m!5757542 () Bool)

(assert (=> b!4780697 m!5757542))

(assert (=> start!490704 d!1528339))

(declare-fun d!1528341 () Bool)

(declare-fun isStrictlySorted!843 (List!54106) Bool)

(assert (=> d!1528341 (= (inv!69574 lm!2709) (isStrictlySorted!843 (toList!6725 lm!2709)))))

(declare-fun bs!1151741 () Bool)

(assert (= bs!1151741 d!1528341))

(declare-fun m!5757544 () Bool)

(assert (=> bs!1151741 m!5757544))

(assert (=> start!490704 d!1528341))

(declare-fun d!1528343 () Bool)

(declare-fun res!2029736 () Bool)

(declare-fun e!2984625 () Bool)

(assert (=> d!1528343 (=> res!2029736 e!2984625)))

(declare-fun e!2984626 () Bool)

(assert (=> d!1528343 (= res!2029736 e!2984626)))

(declare-fun res!2029737 () Bool)

(assert (=> d!1528343 (=> (not res!2029737) (not e!2984626))))

(assert (=> d!1528343 (= res!2029737 (is-Cons!53982 (toList!6725 lm!2709)))))

(assert (=> d!1528343 (= (containsKeyBiggerList!479 (toList!6725 lm!2709) key!6641) e!2984625)))

(declare-fun b!4780704 () Bool)

(assert (=> b!4780704 (= e!2984626 (containsKey!3799 (_2!31525 (h!60402 (toList!6725 lm!2709))) key!6641))))

(declare-fun b!4780705 () Bool)

(declare-fun e!2984624 () Bool)

(assert (=> b!4780705 (= e!2984625 e!2984624)))

(declare-fun res!2029738 () Bool)

(assert (=> b!4780705 (=> (not res!2029738) (not e!2984624))))

(assert (=> b!4780705 (= res!2029738 (is-Cons!53982 (toList!6725 lm!2709)))))

(declare-fun b!4780706 () Bool)

(assert (=> b!4780706 (= e!2984624 (containsKeyBiggerList!479 (t!361556 (toList!6725 lm!2709)) key!6641))))

(assert (= (and d!1528343 res!2029737) b!4780704))

(assert (= (and d!1528343 (not res!2029736)) b!4780705))

(assert (= (and b!4780705 res!2029738) b!4780706))

(declare-fun m!5757546 () Bool)

(assert (=> b!4780704 m!5757546))

(declare-fun m!5757548 () Bool)

(assert (=> b!4780706 m!5757548))

(assert (=> b!4780527 d!1528343))

(declare-fun bs!1151742 () Bool)

(declare-fun d!1528345 () Bool)

(assert (= bs!1151742 (and d!1528345 start!490704)))

(declare-fun lambda!228026 () Int)

(assert (=> bs!1151742 (not (= lambda!228026 lambda!227992))))

(declare-fun bs!1151743 () Bool)

(assert (= bs!1151743 (and d!1528345 d!1528309)))

(assert (=> bs!1151743 (not (= lambda!228026 lambda!228014))))

(declare-fun bs!1151744 () Bool)

(assert (= bs!1151744 (and d!1528345 d!1528297)))

(assert (=> bs!1151744 (not (= lambda!228026 lambda!228011))))

(declare-fun bs!1151745 () Bool)

(assert (= bs!1151745 (and d!1528345 d!1528313)))

(assert (=> bs!1151745 (not (= lambda!228026 lambda!228017))))

(declare-fun bs!1151746 () Bool)

(assert (= bs!1151746 (and d!1528345 d!1528315)))

(assert (=> bs!1151746 (not (= lambda!228026 lambda!228020))))

(assert (=> d!1528345 true))

(assert (=> d!1528345 (= (allKeysSameHashInMap!2228 lm!2709 hashF!1687) (forall!12111 (toList!6725 lm!2709) lambda!228026))))

(declare-fun bs!1151747 () Bool)

(assert (= bs!1151747 d!1528345))

(declare-fun m!5757550 () Bool)

(assert (=> bs!1151747 m!5757550))

(assert (=> b!4780525 d!1528345))

(declare-fun d!1528347 () Bool)

(declare-fun e!2984628 () Bool)

(assert (=> d!1528347 e!2984628))

(declare-fun res!2029739 () Bool)

(assert (=> d!1528347 (=> res!2029739 e!2984628)))

(declare-fun lt!1943230 () Bool)

(assert (=> d!1528347 (= res!2029739 (not lt!1943230))))

(declare-fun lt!1943229 () Bool)

(assert (=> d!1528347 (= lt!1943230 lt!1943229)))

(declare-fun lt!1943231 () Unit!139213)

(declare-fun e!2984627 () Unit!139213)

(assert (=> d!1528347 (= lt!1943231 e!2984627)))

(declare-fun c!815016 () Bool)

(assert (=> d!1528347 (= c!815016 lt!1943229)))

(assert (=> d!1528347 (= lt!1943229 (containsKey!3798 (toList!6725 lm!2709) (_1!31525 (h!60402 (toList!6725 lm!2709)))))))

(assert (=> d!1528347 (= (contains!17505 lm!2709 (_1!31525 (h!60402 (toList!6725 lm!2709)))) lt!1943230)))

(declare-fun b!4780709 () Bool)

(declare-fun lt!1943228 () Unit!139213)

(assert (=> b!4780709 (= e!2984627 lt!1943228)))

(assert (=> b!4780709 (= lt!1943228 (lemmaContainsKeyImpliesGetValueByKeyDefined!2067 (toList!6725 lm!2709) (_1!31525 (h!60402 (toList!6725 lm!2709)))))))

(assert (=> b!4780709 (isDefined!10066 (getValueByKey!2272 (toList!6725 lm!2709) (_1!31525 (h!60402 (toList!6725 lm!2709)))))))

(declare-fun b!4780710 () Bool)

(declare-fun Unit!139220 () Unit!139213)

(assert (=> b!4780710 (= e!2984627 Unit!139220)))

(declare-fun b!4780711 () Bool)

(assert (=> b!4780711 (= e!2984628 (isDefined!10066 (getValueByKey!2272 (toList!6725 lm!2709) (_1!31525 (h!60402 (toList!6725 lm!2709))))))))

(assert (= (and d!1528347 c!815016) b!4780709))

(assert (= (and d!1528347 (not c!815016)) b!4780710))

(assert (= (and d!1528347 (not res!2029739)) b!4780711))

(declare-fun m!5757552 () Bool)

(assert (=> d!1528347 m!5757552))

(declare-fun m!5757554 () Bool)

(assert (=> b!4780709 m!5757554))

(declare-fun m!5757556 () Bool)

(assert (=> b!4780709 m!5757556))

(assert (=> b!4780709 m!5757556))

(declare-fun m!5757558 () Bool)

(assert (=> b!4780709 m!5757558))

(assert (=> b!4780711 m!5757556))

(assert (=> b!4780711 m!5757556))

(assert (=> b!4780711 m!5757558))

(assert (=> b!4780526 d!1528347))

(assert (=> b!4780531 d!1528339))

(declare-fun b!4780716 () Bool)

(declare-fun e!2984631 () Bool)

(declare-fun tp!1357401 () Bool)

(declare-fun tp!1357402 () Bool)

(assert (=> b!4780716 (= e!2984631 (and tp!1357401 tp!1357402))))

(assert (=> b!4780529 (= tp!1357393 e!2984631)))

(assert (= (and b!4780529 (is-Cons!53982 (toList!6725 lm!2709))) b!4780716))

(declare-fun b_lambda!185577 () Bool)

(assert (= b_lambda!185571 (or start!490704 b_lambda!185577)))

(declare-fun bs!1151748 () Bool)

(declare-fun d!1528349 () Bool)

(assert (= bs!1151748 (and d!1528349 start!490704)))

(assert (=> bs!1151748 (= (dynLambda!22010 lambda!227992 lt!1943090) (noDuplicateKeys!2290 (_2!31525 lt!1943090)))))

(declare-fun m!5757560 () Bool)

(assert (=> bs!1151748 m!5757560))

(assert (=> d!1528293 d!1528349))

(declare-fun b_lambda!185579 () Bool)

(assert (= b_lambda!185575 (or start!490704 b_lambda!185579)))

(declare-fun bs!1151749 () Bool)

(declare-fun d!1528351 () Bool)

(assert (= bs!1151749 (and d!1528351 start!490704)))

(assert (=> bs!1151749 (= (dynLambda!22010 lambda!227992 (h!60402 (toList!6725 lm!2709))) (noDuplicateKeys!2290 (_2!31525 (h!60402 (toList!6725 lm!2709)))))))

(declare-fun m!5757562 () Bool)

(assert (=> bs!1151749 m!5757562))

(assert (=> b!4780696 d!1528351))

(push 1)

(assert (not b!4780628))

(assert (not b!4780687))

(assert (not b!4780596))

(assert (not b!4780657))

(assert (not d!1528293))

(assert (not b!4780631))

(assert (not b!4780684))

(assert (not d!1528345))

(assert (not d!1528325))

(assert (not d!1528329))

(assert (not b!4780561))

(assert (not b!4780593))

(assert (not b!4780688))

(assert (not d!1528341))

(assert (not b!4780558))

(assert (not b_lambda!185579))

(assert (not b!4780630))

(assert (not b!4780704))

(assert (not d!1528331))

(assert (not d!1528317))

(assert (not bm!334704))

(assert (not b!4780711))

(assert (not d!1528291))

(assert (not bs!1151748))

(assert (not b!4780627))

(assert (not b!4780629))

(assert (not d!1528327))

(assert (not d!1528313))

(assert (not b!4780594))

(assert (not b!4780604))

(assert (not b!4780595))

(assert (not b!4780716))

(assert (not bs!1151749))

(assert (not d!1528295))

(assert (not b!4780686))

(assert (not d!1528347))

(assert (not b!4780697))

(assert (not d!1528309))

(assert (not b!4780685))

(assert tp_is_empty!33195)

(assert (not d!1528319))

(assert (not b!4780709))

(assert (not b!4780706))

(assert (not b!4780633))

(assert (not b!4780659))

(assert (not b_lambda!185577))

(assert (not d!1528297))

(assert tp_is_empty!33193)

(assert (not b!4780632))

(assert (not d!1528315))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1528375 () Bool)

(declare-fun res!2029771 () Bool)

(declare-fun e!2984673 () Bool)

(assert (=> d!1528375 (=> res!2029771 e!2984673)))

(assert (=> d!1528375 (= res!2029771 (is-Nil!53982 (toList!6725 lm!2709)))))

(assert (=> d!1528375 (= (forall!12111 (toList!6725 lm!2709) lambda!228026) e!2984673)))

(declare-fun b!4780779 () Bool)

(declare-fun e!2984674 () Bool)

(assert (=> b!4780779 (= e!2984673 e!2984674)))

(declare-fun res!2029772 () Bool)

(assert (=> b!4780779 (=> (not res!2029772) (not e!2984674))))

(assert (=> b!4780779 (= res!2029772 (dynLambda!22010 lambda!228026 (h!60402 (toList!6725 lm!2709))))))

(declare-fun b!4780780 () Bool)

(assert (=> b!4780780 (= e!2984674 (forall!12111 (t!361556 (toList!6725 lm!2709)) lambda!228026))))

(assert (= (and d!1528375 (not res!2029771)) b!4780779))

(assert (= (and b!4780779 res!2029772) b!4780780))

(declare-fun b_lambda!185587 () Bool)

(assert (=> (not b_lambda!185587) (not b!4780779)))

(declare-fun m!5757646 () Bool)

(assert (=> b!4780779 m!5757646))

(declare-fun m!5757648 () Bool)

(assert (=> b!4780780 m!5757648))

(assert (=> d!1528345 d!1528375))

(declare-fun d!1528377 () Bool)

(assert (=> d!1528377 (dynLambda!22010 lambda!227992 lt!1943090)))

(assert (=> d!1528377 true))

(declare-fun _$7!2345 () Unit!139213)

(assert (=> d!1528377 (= (choose!34245 (toList!6725 lm!2709) lambda!227992 lt!1943090) _$7!2345)))

(declare-fun b_lambda!185589 () Bool)

(assert (=> (not b_lambda!185589) (not d!1528377)))

(declare-fun bs!1151768 () Bool)

(assert (= bs!1151768 d!1528377))

(assert (=> bs!1151768 m!5757404))

(assert (=> d!1528293 d!1528377))

(assert (=> d!1528293 d!1528339))

(declare-fun d!1528379 () Bool)

(declare-fun res!2029777 () Bool)

(declare-fun e!2984679 () Bool)

(assert (=> d!1528379 (=> res!2029777 e!2984679)))

(assert (=> d!1528379 (= res!2029777 (or (is-Nil!53982 (toList!6725 lm!2709)) (is-Nil!53982 (t!361556 (toList!6725 lm!2709)))))))

(assert (=> d!1528379 (= (isStrictlySorted!843 (toList!6725 lm!2709)) e!2984679)))

(declare-fun b!4780785 () Bool)

(declare-fun e!2984680 () Bool)

(assert (=> b!4780785 (= e!2984679 e!2984680)))

(declare-fun res!2029778 () Bool)

(assert (=> b!4780785 (=> (not res!2029778) (not e!2984680))))

(assert (=> b!4780785 (= res!2029778 (bvslt (_1!31525 (h!60402 (toList!6725 lm!2709))) (_1!31525 (h!60402 (t!361556 (toList!6725 lm!2709))))))))

(declare-fun b!4780786 () Bool)

(assert (=> b!4780786 (= e!2984680 (isStrictlySorted!843 (t!361556 (toList!6725 lm!2709))))))

(assert (= (and d!1528379 (not res!2029777)) b!4780785))

(assert (= (and b!4780785 res!2029778) b!4780786))

(declare-fun m!5757650 () Bool)

(assert (=> b!4780786 m!5757650))

(assert (=> d!1528341 d!1528379))

(declare-fun d!1528381 () Bool)

(declare-fun isEmpty!29352 (Option!12921) Bool)

(assert (=> d!1528381 (= (isDefined!10066 (getValueByKey!2272 (toList!6725 lm!2709) (_1!31525 (h!60402 (toList!6725 lm!2709))))) (not (isEmpty!29352 (getValueByKey!2272 (toList!6725 lm!2709) (_1!31525 (h!60402 (toList!6725 lm!2709)))))))))

(declare-fun bs!1151769 () Bool)

(assert (= bs!1151769 d!1528381))

(assert (=> bs!1151769 m!5757556))

(declare-fun m!5757652 () Bool)

(assert (=> bs!1151769 m!5757652))

(assert (=> b!4780711 d!1528381))

(declare-fun d!1528383 () Bool)

(declare-fun c!815034 () Bool)

(assert (=> d!1528383 (= c!815034 (and (is-Cons!53982 (toList!6725 lm!2709)) (= (_1!31525 (h!60402 (toList!6725 lm!2709))) (_1!31525 (h!60402 (toList!6725 lm!2709))))))))

(declare-fun e!2984685 () Option!12921)

(assert (=> d!1528383 (= (getValueByKey!2272 (toList!6725 lm!2709) (_1!31525 (h!60402 (toList!6725 lm!2709)))) e!2984685)))

(declare-fun b!4780795 () Bool)

(assert (=> b!4780795 (= e!2984685 (Some!12920 (_2!31525 (h!60402 (toList!6725 lm!2709)))))))

(declare-fun b!4780797 () Bool)

(declare-fun e!2984686 () Option!12921)

(assert (=> b!4780797 (= e!2984686 (getValueByKey!2272 (t!361556 (toList!6725 lm!2709)) (_1!31525 (h!60402 (toList!6725 lm!2709)))))))

(declare-fun b!4780798 () Bool)

(assert (=> b!4780798 (= e!2984686 None!12920)))

(declare-fun b!4780796 () Bool)

(assert (=> b!4780796 (= e!2984685 e!2984686)))

(declare-fun c!815035 () Bool)

(assert (=> b!4780796 (= c!815035 (and (is-Cons!53982 (toList!6725 lm!2709)) (not (= (_1!31525 (h!60402 (toList!6725 lm!2709))) (_1!31525 (h!60402 (toList!6725 lm!2709)))))))))

(assert (= (and d!1528383 c!815034) b!4780795))

(assert (= (and d!1528383 (not c!815034)) b!4780796))

(assert (= (and b!4780796 c!815035) b!4780797))

(assert (= (and b!4780796 (not c!815035)) b!4780798))

(declare-fun m!5757654 () Bool)

(assert (=> b!4780797 m!5757654))

(assert (=> b!4780711 d!1528383))

(declare-fun d!1528385 () Bool)

(assert (=> d!1528385 (isDefined!10066 (getValueByKey!2272 (toList!6725 lm!2709) (_1!31525 (h!60402 (toList!6725 lm!2709)))))))

(declare-fun lt!1943298 () Unit!139213)

(declare-fun choose!34255 (List!54106 (_ BitVec 64)) Unit!139213)

(assert (=> d!1528385 (= lt!1943298 (choose!34255 (toList!6725 lm!2709) (_1!31525 (h!60402 (toList!6725 lm!2709)))))))

(declare-fun e!2984689 () Bool)

(assert (=> d!1528385 e!2984689))

(declare-fun res!2029781 () Bool)

(assert (=> d!1528385 (=> (not res!2029781) (not e!2984689))))

(assert (=> d!1528385 (= res!2029781 (isStrictlySorted!843 (toList!6725 lm!2709)))))

(assert (=> d!1528385 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2067 (toList!6725 lm!2709) (_1!31525 (h!60402 (toList!6725 lm!2709)))) lt!1943298)))

(declare-fun b!4780801 () Bool)

(assert (=> b!4780801 (= e!2984689 (containsKey!3798 (toList!6725 lm!2709) (_1!31525 (h!60402 (toList!6725 lm!2709)))))))

(assert (= (and d!1528385 res!2029781) b!4780801))

(assert (=> d!1528385 m!5757556))

(assert (=> d!1528385 m!5757556))

(assert (=> d!1528385 m!5757558))

(declare-fun m!5757656 () Bool)

(assert (=> d!1528385 m!5757656))

(assert (=> d!1528385 m!5757544))

(assert (=> b!4780801 m!5757552))

(assert (=> b!4780709 d!1528385))

(assert (=> b!4780709 d!1528381))

(assert (=> b!4780709 d!1528383))

(assert (=> b!4780561 d!1528291))

(declare-fun d!1528387 () Bool)

(declare-fun res!2029786 () Bool)

(declare-fun e!2984694 () Bool)

(assert (=> d!1528387 (=> res!2029786 e!2984694)))

(assert (=> d!1528387 (= res!2029786 (not (is-Cons!53981 (_2!31525 (h!60402 (toList!6725 lm!2709))))))))

(assert (=> d!1528387 (= (noDuplicateKeys!2290 (_2!31525 (h!60402 (toList!6725 lm!2709)))) e!2984694)))

(declare-fun b!4780806 () Bool)

(declare-fun e!2984695 () Bool)

(assert (=> b!4780806 (= e!2984694 e!2984695)))

(declare-fun res!2029787 () Bool)

(assert (=> b!4780806 (=> (not res!2029787) (not e!2984695))))

(assert (=> b!4780806 (= res!2029787 (not (containsKey!3799 (t!361555 (_2!31525 (h!60402 (toList!6725 lm!2709)))) (_1!31524 (h!60401 (_2!31525 (h!60402 (toList!6725 lm!2709))))))))))

(declare-fun b!4780807 () Bool)

(assert (=> b!4780807 (= e!2984695 (noDuplicateKeys!2290 (t!361555 (_2!31525 (h!60402 (toList!6725 lm!2709))))))))

(assert (= (and d!1528387 (not res!2029786)) b!4780806))

(assert (= (and b!4780806 res!2029787) b!4780807))

(declare-fun m!5757658 () Bool)

(assert (=> b!4780806 m!5757658))

(declare-fun m!5757660 () Bool)

(assert (=> b!4780807 m!5757660))

(assert (=> bs!1151749 d!1528387))

(declare-fun d!1528389 () Bool)

(declare-fun res!2029788 () Bool)

(declare-fun e!2984697 () Bool)

(assert (=> d!1528389 (=> res!2029788 e!2984697)))

(declare-fun e!2984698 () Bool)

(assert (=> d!1528389 (= res!2029788 e!2984698)))

(declare-fun res!2029789 () Bool)

(assert (=> d!1528389 (=> (not res!2029789) (not e!2984698))))

(assert (=> d!1528389 (= res!2029789 (is-Cons!53982 (t!361556 (toList!6725 lm!2709))))))

(assert (=> d!1528389 (= (containsKeyBiggerList!479 (t!361556 (toList!6725 lm!2709)) key!6641) e!2984697)))

(declare-fun b!4780808 () Bool)

(assert (=> b!4780808 (= e!2984698 (containsKey!3799 (_2!31525 (h!60402 (t!361556 (toList!6725 lm!2709)))) key!6641))))

(declare-fun b!4780809 () Bool)

(declare-fun e!2984696 () Bool)

(assert (=> b!4780809 (= e!2984697 e!2984696)))

(declare-fun res!2029790 () Bool)

(assert (=> b!4780809 (=> (not res!2029790) (not e!2984696))))

(assert (=> b!4780809 (= res!2029790 (is-Cons!53982 (t!361556 (toList!6725 lm!2709))))))

(declare-fun b!4780810 () Bool)

(assert (=> b!4780810 (= e!2984696 (containsKeyBiggerList!479 (t!361556 (t!361556 (toList!6725 lm!2709))) key!6641))))

(assert (= (and d!1528389 res!2029789) b!4780808))

(assert (= (and d!1528389 (not res!2029788)) b!4780809))

(assert (= (and b!4780809 res!2029790) b!4780810))

(declare-fun m!5757662 () Bool)

(assert (=> b!4780808 m!5757662))

(declare-fun m!5757664 () Bool)

(assert (=> b!4780810 m!5757664))

(assert (=> b!4780706 d!1528389))

(declare-fun d!1528391 () Bool)

(declare-fun choose!34256 (Hashable!6823 K!15547) (_ BitVec 64))

(assert (=> d!1528391 (= (hash!4808 hashF!1687 key!6641) (choose!34256 hashF!1687 key!6641))))

(declare-fun bs!1151770 () Bool)

(assert (= bs!1151770 d!1528391))

(declare-fun m!5757666 () Bool)

(assert (=> bs!1151770 m!5757666))

(assert (=> d!1528327 d!1528391))

(declare-fun d!1528393 () Bool)

(declare-fun res!2029795 () Bool)

(declare-fun e!2984703 () Bool)

(assert (=> d!1528393 (=> res!2029795 e!2984703)))

(assert (=> d!1528393 (= res!2029795 (and (is-Cons!53981 (_2!31525 (h!60402 (toList!6725 lm!2709)))) (= (_1!31524 (h!60401 (_2!31525 (h!60402 (toList!6725 lm!2709))))) key!6641)))))

(assert (=> d!1528393 (= (containsKey!3799 (_2!31525 (h!60402 (toList!6725 lm!2709))) key!6641) e!2984703)))

(declare-fun b!4780815 () Bool)

(declare-fun e!2984704 () Bool)

(assert (=> b!4780815 (= e!2984703 e!2984704)))

(declare-fun res!2029796 () Bool)

(assert (=> b!4780815 (=> (not res!2029796) (not e!2984704))))

(assert (=> b!4780815 (= res!2029796 (is-Cons!53981 (_2!31525 (h!60402 (toList!6725 lm!2709)))))))

(declare-fun b!4780816 () Bool)

(assert (=> b!4780816 (= e!2984704 (containsKey!3799 (t!361555 (_2!31525 (h!60402 (toList!6725 lm!2709)))) key!6641))))

(assert (= (and d!1528393 (not res!2029795)) b!4780815))

(assert (= (and b!4780815 res!2029796) b!4780816))

(declare-fun m!5757668 () Bool)

(assert (=> b!4780816 m!5757668))

(assert (=> b!4780704 d!1528393))

(declare-fun d!1528395 () Bool)

(declare-fun res!2029801 () Bool)

(declare-fun e!2984709 () Bool)

(assert (=> d!1528395 (=> res!2029801 e!2984709)))

(assert (=> d!1528395 (= res!2029801 (and (is-Cons!53981 (toList!6726 (extractMap!2350 (toList!6725 lm!2709)))) (= (_1!31524 (h!60401 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))))) key!6641)))))

(assert (=> d!1528395 (= (containsKey!3797 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))) key!6641) e!2984709)))

(declare-fun b!4780821 () Bool)

(declare-fun e!2984710 () Bool)

(assert (=> b!4780821 (= e!2984709 e!2984710)))

(declare-fun res!2029802 () Bool)

(assert (=> b!4780821 (=> (not res!2029802) (not e!2984710))))

(assert (=> b!4780821 (= res!2029802 (is-Cons!53981 (toList!6726 (extractMap!2350 (toList!6725 lm!2709)))))))

(declare-fun b!4780822 () Bool)

(assert (=> b!4780822 (= e!2984710 (containsKey!3797 (t!361555 (toList!6726 (extractMap!2350 (toList!6725 lm!2709)))) key!6641))))

(assert (= (and d!1528395 (not res!2029801)) b!4780821))

(assert (= (and b!4780821 res!2029802) b!4780822))

(declare-fun m!5757670 () Bool)

(assert (=> b!4780822 m!5757670))

(assert (=> d!1528319 d!1528395))

(declare-fun d!1528397 () Bool)

(declare-fun noDuplicatedKeys!420 (List!54105) Bool)

(assert (=> d!1528397 (= (invariantList!1692 (toList!6726 lt!1943170)) (noDuplicatedKeys!420 (toList!6726 lt!1943170)))))

(declare-fun bs!1151771 () Bool)

(assert (= bs!1151771 d!1528397))

(declare-fun m!5757672 () Bool)

(assert (=> bs!1151771 m!5757672))

(assert (=> d!1528309 d!1528397))

(declare-fun d!1528399 () Bool)

(declare-fun res!2029803 () Bool)

(declare-fun e!2984711 () Bool)

(assert (=> d!1528399 (=> res!2029803 e!2984711)))

(assert (=> d!1528399 (= res!2029803 (is-Nil!53982 (toList!6725 lm!2709)))))

(assert (=> d!1528399 (= (forall!12111 (toList!6725 lm!2709) lambda!228014) e!2984711)))

(declare-fun b!4780823 () Bool)

(declare-fun e!2984712 () Bool)

(assert (=> b!4780823 (= e!2984711 e!2984712)))

(declare-fun res!2029804 () Bool)

(assert (=> b!4780823 (=> (not res!2029804) (not e!2984712))))

(assert (=> b!4780823 (= res!2029804 (dynLambda!22010 lambda!228014 (h!60402 (toList!6725 lm!2709))))))

(declare-fun b!4780824 () Bool)

(assert (=> b!4780824 (= e!2984712 (forall!12111 (t!361556 (toList!6725 lm!2709)) lambda!228014))))

(assert (= (and d!1528399 (not res!2029803)) b!4780823))

(assert (= (and b!4780823 res!2029804) b!4780824))

(declare-fun b_lambda!185591 () Bool)

(assert (=> (not b_lambda!185591) (not b!4780823)))

(declare-fun m!5757674 () Bool)

(assert (=> b!4780823 m!5757674))

(declare-fun m!5757676 () Bool)

(assert (=> b!4780824 m!5757676))

(assert (=> d!1528309 d!1528399))

(declare-fun d!1528401 () Bool)

(assert (=> d!1528401 (= (isEmpty!29350 lt!1943227) (not (is-Some!12918 lt!1943227)))))

(assert (=> d!1528331 d!1528401))

(declare-fun d!1528403 () Bool)

(declare-fun res!2029805 () Bool)

(declare-fun e!2984713 () Bool)

(assert (=> d!1528403 (=> res!2029805 e!2984713)))

(assert (=> d!1528403 (= res!2029805 (not (is-Cons!53981 lt!1943089)))))

(assert (=> d!1528403 (= (noDuplicateKeys!2290 lt!1943089) e!2984713)))

(declare-fun b!4780825 () Bool)

(declare-fun e!2984714 () Bool)

(assert (=> b!4780825 (= e!2984713 e!2984714)))

(declare-fun res!2029806 () Bool)

(assert (=> b!4780825 (=> (not res!2029806) (not e!2984714))))

(assert (=> b!4780825 (= res!2029806 (not (containsKey!3799 (t!361555 lt!1943089) (_1!31524 (h!60401 lt!1943089)))))))

(declare-fun b!4780826 () Bool)

(assert (=> b!4780826 (= e!2984714 (noDuplicateKeys!2290 (t!361555 lt!1943089)))))

(assert (= (and d!1528403 (not res!2029805)) b!4780825))

(assert (= (and b!4780825 res!2029806) b!4780826))

(declare-fun m!5757678 () Bool)

(assert (=> b!4780825 m!5757678))

(declare-fun m!5757680 () Bool)

(assert (=> b!4780826 m!5757680))

(assert (=> d!1528331 d!1528403))

(declare-fun d!1528405 () Bool)

(declare-fun res!2029807 () Bool)

(declare-fun e!2984715 () Bool)

(assert (=> d!1528405 (=> res!2029807 e!2984715)))

(assert (=> d!1528405 (= res!2029807 (is-Nil!53982 (toList!6725 lm!2709)))))

(assert (=> d!1528405 (= (forall!12111 (toList!6725 lm!2709) lambda!228011) e!2984715)))

(declare-fun b!4780827 () Bool)

(declare-fun e!2984716 () Bool)

(assert (=> b!4780827 (= e!2984715 e!2984716)))

(declare-fun res!2029808 () Bool)

(assert (=> b!4780827 (=> (not res!2029808) (not e!2984716))))

(assert (=> b!4780827 (= res!2029808 (dynLambda!22010 lambda!228011 (h!60402 (toList!6725 lm!2709))))))

(declare-fun b!4780828 () Bool)

(assert (=> b!4780828 (= e!2984716 (forall!12111 (t!361556 (toList!6725 lm!2709)) lambda!228011))))

(assert (= (and d!1528405 (not res!2029807)) b!4780827))

(assert (= (and b!4780827 res!2029808) b!4780828))

(declare-fun b_lambda!185593 () Bool)

(assert (=> (not b_lambda!185593) (not b!4780827)))

(declare-fun m!5757682 () Bool)

(assert (=> b!4780827 m!5757682))

(declare-fun m!5757684 () Bool)

(assert (=> b!4780828 m!5757684))

(assert (=> d!1528297 d!1528405))

(declare-fun bs!1151772 () Bool)

(declare-fun d!1528407 () Bool)

(assert (= bs!1151772 (and d!1528407 start!490704)))

(declare-fun lambda!228042 () Int)

(assert (=> bs!1151772 (= lambda!228042 lambda!227992)))

(declare-fun bs!1151773 () Bool)

(assert (= bs!1151773 (and d!1528407 d!1528309)))

(assert (=> bs!1151773 (= lambda!228042 lambda!228014)))

(declare-fun bs!1151774 () Bool)

(assert (= bs!1151774 (and d!1528407 d!1528297)))

(assert (=> bs!1151774 (= lambda!228042 lambda!228011)))

(declare-fun bs!1151775 () Bool)

(assert (= bs!1151775 (and d!1528407 d!1528313)))

(assert (=> bs!1151775 (= lambda!228042 lambda!228017)))

(declare-fun bs!1151776 () Bool)

(assert (= bs!1151776 (and d!1528407 d!1528315)))

(assert (=> bs!1151776 (= lambda!228042 lambda!228020)))

(declare-fun bs!1151777 () Bool)

(assert (= bs!1151777 (and d!1528407 d!1528345)))

(assert (=> bs!1151777 (not (= lambda!228042 lambda!228026))))

(assert (=> d!1528407 (isDefined!10063 (getPair!795 (apply!12878 lm!2709 (hash!4806 hashF!1687 key!6641)) key!6641))))

(declare-fun lt!1943318 () Unit!139213)

(assert (=> d!1528407 (= lt!1943318 (forallContained!4055 (toList!6725 lm!2709) lambda!228042 (tuple2!56463 (hash!4806 hashF!1687 key!6641) (apply!12878 lm!2709 (hash!4806 hashF!1687 key!6641)))))))

(declare-fun lt!1943316 () Unit!139213)

(declare-fun lt!1943315 () Unit!139213)

(assert (=> d!1528407 (= lt!1943316 lt!1943315)))

(declare-fun lt!1943313 () (_ BitVec 64))

(declare-fun lt!1943317 () List!54105)

(assert (=> d!1528407 (contains!17506 (toList!6725 lm!2709) (tuple2!56463 lt!1943313 lt!1943317))))

(assert (=> d!1528407 (= lt!1943315 (lemmaGetValueImpliesTupleContained!602 lm!2709 lt!1943313 lt!1943317))))

(assert (=> d!1528407 (= lt!1943317 (apply!12878 lm!2709 (hash!4806 hashF!1687 key!6641)))))

(assert (=> d!1528407 (= lt!1943313 (hash!4806 hashF!1687 key!6641))))

(declare-fun lt!1943319 () Unit!139213)

(declare-fun lt!1943314 () Unit!139213)

(assert (=> d!1528407 (= lt!1943319 lt!1943314)))

(assert (=> d!1528407 (contains!17505 lm!2709 (hash!4806 hashF!1687 key!6641))))

(assert (=> d!1528407 (= lt!1943314 (lemmaInGenMapThenLongMapContainsHash!1019 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1528407 true))

(declare-fun _$25!325 () Unit!139213)

(assert (=> d!1528407 (= (choose!34246 lm!2709 key!6641 hashF!1687) _$25!325)))

(declare-fun bs!1151778 () Bool)

(assert (= bs!1151778 d!1528407))

(assert (=> bs!1151778 m!5757348))

(assert (=> bs!1151778 m!5757432))

(assert (=> bs!1151778 m!5757348))

(assert (=> bs!1151778 m!5757432))

(assert (=> bs!1151778 m!5757434))

(declare-fun m!5757686 () Bool)

(assert (=> bs!1151778 m!5757686))

(assert (=> bs!1151778 m!5757348))

(assert (=> bs!1151778 m!5757436))

(declare-fun m!5757688 () Bool)

(assert (=> bs!1151778 m!5757688))

(assert (=> bs!1151778 m!5757352))

(assert (=> bs!1151778 m!5757434))

(assert (=> bs!1151778 m!5757438))

(declare-fun m!5757690 () Bool)

(assert (=> bs!1151778 m!5757690))

(assert (=> d!1528297 d!1528407))

(declare-fun b!4780845 () Bool)

(assert (=> b!4780845 true))

(declare-fun bs!1151779 () Bool)

(declare-fun b!4780842 () Bool)

(assert (= bs!1151779 (and b!4780842 b!4780845)))

(declare-fun lambda!228072 () Int)

(declare-fun lambda!228071 () Int)

(assert (=> bs!1151779 (= lambda!228072 lambda!228071)))

(assert (=> b!4780842 true))

(declare-fun lt!1943378 () ListMap!6197)

(declare-fun lambda!228073 () Int)

(assert (=> bs!1151779 (= (= lt!1943378 (extractMap!2350 (t!361556 (toList!6725 lm!2709)))) (= lambda!228073 lambda!228071))))

(assert (=> b!4780842 (= (= lt!1943378 (extractMap!2350 (t!361556 (toList!6725 lm!2709)))) (= lambda!228073 lambda!228072))))

(assert (=> b!4780842 true))

(declare-fun bs!1151781 () Bool)

(declare-fun d!1528409 () Bool)

(assert (= bs!1151781 (and d!1528409 b!4780845)))

(declare-fun lambda!228074 () Int)

(declare-fun lt!1943379 () ListMap!6197)

(assert (=> bs!1151781 (= (= lt!1943379 (extractMap!2350 (t!361556 (toList!6725 lm!2709)))) (= lambda!228074 lambda!228071))))

(declare-fun bs!1151782 () Bool)

(assert (= bs!1151782 (and d!1528409 b!4780842)))

(assert (=> bs!1151782 (= (= lt!1943379 (extractMap!2350 (t!361556 (toList!6725 lm!2709)))) (= lambda!228074 lambda!228072))))

(assert (=> bs!1151782 (= (= lt!1943379 lt!1943378) (= lambda!228074 lambda!228073))))

(assert (=> d!1528409 true))

(declare-fun c!815038 () Bool)

(declare-fun bm!334714 () Bool)

(declare-fun call!334720 () Bool)

(declare-fun forall!12113 (List!54105 Int) Bool)

(assert (=> bm!334714 (= call!334720 (forall!12113 (ite c!815038 (toList!6726 (extractMap!2350 (t!361556 (toList!6725 lm!2709)))) (t!361555 (_2!31525 (h!60402 (toList!6725 lm!2709))))) (ite c!815038 lambda!228071 lambda!228073)))))

(declare-fun b!4780841 () Bool)

(declare-fun res!2029819 () Bool)

(declare-fun e!2984725 () Bool)

(assert (=> b!4780841 (=> (not res!2029819) (not e!2984725))))

(assert (=> b!4780841 (= res!2029819 (forall!12113 (toList!6726 (extractMap!2350 (t!361556 (toList!6725 lm!2709)))) lambda!228074))))

(declare-fun call!334719 () Bool)

(declare-fun bm!334715 () Bool)

(assert (=> bm!334715 (= call!334719 (forall!12113 (toList!6726 (extractMap!2350 (t!361556 (toList!6725 lm!2709)))) (ite c!815038 lambda!228071 lambda!228072)))))

(declare-fun bm!334716 () Bool)

(declare-fun call!334721 () Unit!139213)

(declare-fun lemmaContainsAllItsOwnKeys!922 (ListMap!6197) Unit!139213)

(assert (=> bm!334716 (= call!334721 (lemmaContainsAllItsOwnKeys!922 (extractMap!2350 (t!361556 (toList!6725 lm!2709)))))))

(declare-fun b!4780843 () Bool)

(assert (=> b!4780843 (= e!2984725 (invariantList!1692 (toList!6726 lt!1943379)))))

(declare-fun b!4780844 () Bool)

(declare-fun e!2984726 () Bool)

(assert (=> b!4780844 (= e!2984726 (forall!12113 (toList!6726 (extractMap!2350 (t!361556 (toList!6725 lm!2709)))) lambda!228073))))

(declare-fun e!2984727 () ListMap!6197)

(assert (=> b!4780845 (= e!2984727 (extractMap!2350 (t!361556 (toList!6725 lm!2709))))))

(declare-fun lt!1943375 () Unit!139213)

(assert (=> b!4780845 (= lt!1943375 call!334721)))

(assert (=> b!4780845 call!334720))

(declare-fun lt!1943367 () Unit!139213)

(assert (=> b!4780845 (= lt!1943367 lt!1943375)))

(assert (=> b!4780845 call!334719))

(declare-fun lt!1943366 () Unit!139213)

(declare-fun Unit!139225 () Unit!139213)

(assert (=> b!4780845 (= lt!1943366 Unit!139225)))

(assert (=> d!1528409 e!2984725))

(declare-fun res!2029818 () Bool)

(assert (=> d!1528409 (=> (not res!2029818) (not e!2984725))))

(assert (=> d!1528409 (= res!2029818 (forall!12113 (_2!31525 (h!60402 (toList!6725 lm!2709))) lambda!228074))))

(assert (=> d!1528409 (= lt!1943379 e!2984727)))

(assert (=> d!1528409 (= c!815038 (is-Nil!53981 (_2!31525 (h!60402 (toList!6725 lm!2709)))))))

(assert (=> d!1528409 (noDuplicateKeys!2290 (_2!31525 (h!60402 (toList!6725 lm!2709))))))

(assert (=> d!1528409 (= (addToMapMapFromBucket!1657 (_2!31525 (h!60402 (toList!6725 lm!2709))) (extractMap!2350 (t!361556 (toList!6725 lm!2709)))) lt!1943379)))

(assert (=> b!4780842 (= e!2984727 lt!1943378)))

(declare-fun lt!1943365 () ListMap!6197)

(declare-fun +!2466 (ListMap!6197 tuple2!56460) ListMap!6197)

(assert (=> b!4780842 (= lt!1943365 (+!2466 (extractMap!2350 (t!361556 (toList!6725 lm!2709))) (h!60401 (_2!31525 (h!60402 (toList!6725 lm!2709))))))))

(assert (=> b!4780842 (= lt!1943378 (addToMapMapFromBucket!1657 (t!361555 (_2!31525 (h!60402 (toList!6725 lm!2709)))) (+!2466 (extractMap!2350 (t!361556 (toList!6725 lm!2709))) (h!60401 (_2!31525 (h!60402 (toList!6725 lm!2709)))))))))

(declare-fun lt!1943382 () Unit!139213)

(assert (=> b!4780842 (= lt!1943382 call!334721)))

(assert (=> b!4780842 call!334719))

(declare-fun lt!1943371 () Unit!139213)

(assert (=> b!4780842 (= lt!1943371 lt!1943382)))

(assert (=> b!4780842 (forall!12113 (toList!6726 lt!1943365) lambda!228073)))

(declare-fun lt!1943377 () Unit!139213)

(declare-fun Unit!139226 () Unit!139213)

(assert (=> b!4780842 (= lt!1943377 Unit!139226)))

(assert (=> b!4780842 call!334720))

(declare-fun lt!1943368 () Unit!139213)

(declare-fun Unit!139227 () Unit!139213)

(assert (=> b!4780842 (= lt!1943368 Unit!139227)))

(declare-fun lt!1943364 () Unit!139213)

(declare-fun Unit!139228 () Unit!139213)

(assert (=> b!4780842 (= lt!1943364 Unit!139228)))

(declare-fun lt!1943384 () Unit!139213)

(declare-fun forallContained!4057 (List!54105 Int tuple2!56460) Unit!139213)

(assert (=> b!4780842 (= lt!1943384 (forallContained!4057 (toList!6726 lt!1943365) lambda!228073 (h!60401 (_2!31525 (h!60402 (toList!6725 lm!2709))))))))

(assert (=> b!4780842 (contains!17507 lt!1943365 (_1!31524 (h!60401 (_2!31525 (h!60402 (toList!6725 lm!2709))))))))

(declare-fun lt!1943370 () Unit!139213)

(declare-fun Unit!139229 () Unit!139213)

(assert (=> b!4780842 (= lt!1943370 Unit!139229)))

(assert (=> b!4780842 (contains!17507 lt!1943378 (_1!31524 (h!60401 (_2!31525 (h!60402 (toList!6725 lm!2709))))))))

(declare-fun lt!1943369 () Unit!139213)

(declare-fun Unit!139230 () Unit!139213)

(assert (=> b!4780842 (= lt!1943369 Unit!139230)))

(assert (=> b!4780842 (forall!12113 (_2!31525 (h!60402 (toList!6725 lm!2709))) lambda!228073)))

(declare-fun lt!1943381 () Unit!139213)

(declare-fun Unit!139231 () Unit!139213)

(assert (=> b!4780842 (= lt!1943381 Unit!139231)))

(assert (=> b!4780842 (forall!12113 (toList!6726 lt!1943365) lambda!228073)))

(declare-fun lt!1943372 () Unit!139213)

(declare-fun Unit!139232 () Unit!139213)

(assert (=> b!4780842 (= lt!1943372 Unit!139232)))

(declare-fun lt!1943373 () Unit!139213)

(declare-fun Unit!139233 () Unit!139213)

(assert (=> b!4780842 (= lt!1943373 Unit!139233)))

(declare-fun lt!1943374 () Unit!139213)

(declare-fun addForallContainsKeyThenBeforeAdding!921 (ListMap!6197 ListMap!6197 K!15547 V!15793) Unit!139213)

(assert (=> b!4780842 (= lt!1943374 (addForallContainsKeyThenBeforeAdding!921 (extractMap!2350 (t!361556 (toList!6725 lm!2709))) lt!1943378 (_1!31524 (h!60401 (_2!31525 (h!60402 (toList!6725 lm!2709))))) (_2!31524 (h!60401 (_2!31525 (h!60402 (toList!6725 lm!2709)))))))))

(assert (=> b!4780842 (forall!12113 (toList!6726 (extractMap!2350 (t!361556 (toList!6725 lm!2709)))) lambda!228073)))

(declare-fun lt!1943383 () Unit!139213)

(assert (=> b!4780842 (= lt!1943383 lt!1943374)))

(assert (=> b!4780842 (forall!12113 (toList!6726 (extractMap!2350 (t!361556 (toList!6725 lm!2709)))) lambda!228073)))

(declare-fun lt!1943380 () Unit!139213)

(declare-fun Unit!139234 () Unit!139213)

(assert (=> b!4780842 (= lt!1943380 Unit!139234)))

(declare-fun res!2029817 () Bool)

(assert (=> b!4780842 (= res!2029817 (forall!12113 (_2!31525 (h!60402 (toList!6725 lm!2709))) lambda!228073))))

(assert (=> b!4780842 (=> (not res!2029817) (not e!2984726))))

(assert (=> b!4780842 e!2984726))

(declare-fun lt!1943376 () Unit!139213)

(declare-fun Unit!139235 () Unit!139213)

(assert (=> b!4780842 (= lt!1943376 Unit!139235)))

(assert (= (and d!1528409 c!815038) b!4780845))

(assert (= (and d!1528409 (not c!815038)) b!4780842))

(assert (= (and b!4780842 res!2029817) b!4780844))

(assert (= (or b!4780845 b!4780842) bm!334716))

(assert (= (or b!4780845 b!4780842) bm!334715))

(assert (= (or b!4780845 b!4780842) bm!334714))

(assert (= (and d!1528409 res!2029818) b!4780841))

(assert (= (and b!4780841 res!2029819) b!4780843))

(declare-fun m!5757696 () Bool)

(assert (=> b!4780841 m!5757696))

(declare-fun m!5757698 () Bool)

(assert (=> bm!334714 m!5757698))

(declare-fun m!5757700 () Bool)

(assert (=> bm!334715 m!5757700))

(declare-fun m!5757702 () Bool)

(assert (=> b!4780844 m!5757702))

(assert (=> bm!334716 m!5757456))

(declare-fun m!5757704 () Bool)

(assert (=> bm!334716 m!5757704))

(assert (=> b!4780842 m!5757456))

(declare-fun m!5757706 () Bool)

(assert (=> b!4780842 m!5757706))

(declare-fun m!5757708 () Bool)

(assert (=> b!4780842 m!5757708))

(assert (=> b!4780842 m!5757702))

(declare-fun m!5757710 () Bool)

(assert (=> b!4780842 m!5757710))

(declare-fun m!5757712 () Bool)

(assert (=> b!4780842 m!5757712))

(assert (=> b!4780842 m!5757710))

(declare-fun m!5757714 () Bool)

(assert (=> b!4780842 m!5757714))

(assert (=> b!4780842 m!5757702))

(assert (=> b!4780842 m!5757456))

(declare-fun m!5757716 () Bool)

(assert (=> b!4780842 m!5757716))

(assert (=> b!4780842 m!5757706))

(declare-fun m!5757718 () Bool)

(assert (=> b!4780842 m!5757718))

(declare-fun m!5757720 () Bool)

(assert (=> b!4780842 m!5757720))

(assert (=> b!4780842 m!5757712))

(declare-fun m!5757722 () Bool)

(assert (=> d!1528409 m!5757722))

(assert (=> d!1528409 m!5757562))

(declare-fun m!5757724 () Bool)

(assert (=> b!4780843 m!5757724))

(assert (=> b!4780604 d!1528409))

(declare-fun bs!1151783 () Bool)

(declare-fun d!1528417 () Bool)

(assert (= bs!1151783 (and d!1528417 start!490704)))

(declare-fun lambda!228075 () Int)

(assert (=> bs!1151783 (= lambda!228075 lambda!227992)))

(declare-fun bs!1151784 () Bool)

(assert (= bs!1151784 (and d!1528417 d!1528309)))

(assert (=> bs!1151784 (= lambda!228075 lambda!228014)))

(declare-fun bs!1151785 () Bool)

(assert (= bs!1151785 (and d!1528417 d!1528407)))

(assert (=> bs!1151785 (= lambda!228075 lambda!228042)))

(declare-fun bs!1151786 () Bool)

(assert (= bs!1151786 (and d!1528417 d!1528297)))

(assert (=> bs!1151786 (= lambda!228075 lambda!228011)))

(declare-fun bs!1151787 () Bool)

(assert (= bs!1151787 (and d!1528417 d!1528313)))

(assert (=> bs!1151787 (= lambda!228075 lambda!228017)))

(declare-fun bs!1151788 () Bool)

(assert (= bs!1151788 (and d!1528417 d!1528315)))

(assert (=> bs!1151788 (= lambda!228075 lambda!228020)))

(declare-fun bs!1151789 () Bool)

(assert (= bs!1151789 (and d!1528417 d!1528345)))

(assert (=> bs!1151789 (not (= lambda!228075 lambda!228026))))

(declare-fun lt!1943386 () ListMap!6197)

(assert (=> d!1528417 (invariantList!1692 (toList!6726 lt!1943386))))

(declare-fun e!2984733 () ListMap!6197)

(assert (=> d!1528417 (= lt!1943386 e!2984733)))

(declare-fun c!815043 () Bool)

(assert (=> d!1528417 (= c!815043 (is-Cons!53982 (t!361556 (toList!6725 lm!2709))))))

(assert (=> d!1528417 (forall!12111 (t!361556 (toList!6725 lm!2709)) lambda!228075)))

(assert (=> d!1528417 (= (extractMap!2350 (t!361556 (toList!6725 lm!2709))) lt!1943386)))

(declare-fun b!4780857 () Bool)

(assert (=> b!4780857 (= e!2984733 (addToMapMapFromBucket!1657 (_2!31525 (h!60402 (t!361556 (toList!6725 lm!2709)))) (extractMap!2350 (t!361556 (t!361556 (toList!6725 lm!2709))))))))

(declare-fun b!4780858 () Bool)

(assert (=> b!4780858 (= e!2984733 (ListMap!6198 Nil!53981))))

(assert (= (and d!1528417 c!815043) b!4780857))

(assert (= (and d!1528417 (not c!815043)) b!4780858))

(declare-fun m!5757726 () Bool)

(assert (=> d!1528417 m!5757726))

(declare-fun m!5757728 () Bool)

(assert (=> d!1528417 m!5757728))

(declare-fun m!5757730 () Bool)

(assert (=> b!4780857 m!5757730))

(assert (=> b!4780857 m!5757730))

(declare-fun m!5757732 () Bool)

(assert (=> b!4780857 m!5757732))

(assert (=> b!4780604 d!1528417))

(declare-fun d!1528419 () Bool)

(declare-fun lt!1943387 () Bool)

(assert (=> d!1528419 (= lt!1943387 (set.member lt!1943090 (content!9641 (t!361556 (toList!6725 lm!2709)))))))

(declare-fun e!2984735 () Bool)

(assert (=> d!1528419 (= lt!1943387 e!2984735)))

(declare-fun res!2029821 () Bool)

(assert (=> d!1528419 (=> (not res!2029821) (not e!2984735))))

(assert (=> d!1528419 (= res!2029821 (is-Cons!53982 (t!361556 (toList!6725 lm!2709))))))

(assert (=> d!1528419 (= (contains!17506 (t!361556 (toList!6725 lm!2709)) lt!1943090) lt!1943387)))

(declare-fun b!4780859 () Bool)

(declare-fun e!2984734 () Bool)

(assert (=> b!4780859 (= e!2984735 e!2984734)))

(declare-fun res!2029822 () Bool)

(assert (=> b!4780859 (=> res!2029822 e!2984734)))

(assert (=> b!4780859 (= res!2029822 (= (h!60402 (t!361556 (toList!6725 lm!2709))) lt!1943090))))

(declare-fun b!4780860 () Bool)

(assert (=> b!4780860 (= e!2984734 (contains!17506 (t!361556 (t!361556 (toList!6725 lm!2709))) lt!1943090))))

(assert (= (and d!1528419 res!2029821) b!4780859))

(assert (= (and b!4780859 (not res!2029822)) b!4780860))

(declare-fun m!5757734 () Bool)

(assert (=> d!1528419 m!5757734))

(declare-fun m!5757736 () Bool)

(assert (=> d!1528419 m!5757736))

(declare-fun m!5757738 () Bool)

(assert (=> b!4780860 m!5757738))

(assert (=> b!4780558 d!1528419))

(declare-fun d!1528421 () Bool)

(declare-fun res!2029823 () Bool)

(declare-fun e!2984738 () Bool)

(assert (=> d!1528421 (=> res!2029823 e!2984738)))

(assert (=> d!1528421 (= res!2029823 (is-Nil!53982 (t!361556 (toList!6725 lm!2709))))))

(assert (=> d!1528421 (= (forall!12111 (t!361556 (toList!6725 lm!2709)) lambda!227992) e!2984738)))

(declare-fun b!4780865 () Bool)

(declare-fun e!2984739 () Bool)

(assert (=> b!4780865 (= e!2984738 e!2984739)))

(declare-fun res!2029824 () Bool)

(assert (=> b!4780865 (=> (not res!2029824) (not e!2984739))))

(assert (=> b!4780865 (= res!2029824 (dynLambda!22010 lambda!227992 (h!60402 (t!361556 (toList!6725 lm!2709)))))))

(declare-fun b!4780866 () Bool)

(assert (=> b!4780866 (= e!2984739 (forall!12111 (t!361556 (t!361556 (toList!6725 lm!2709))) lambda!227992))))

(assert (= (and d!1528421 (not res!2029823)) b!4780865))

(assert (= (and b!4780865 res!2029824) b!4780866))

(declare-fun b_lambda!185595 () Bool)

(assert (=> (not b_lambda!185595) (not b!4780865)))

(declare-fun m!5757740 () Bool)

(assert (=> b!4780865 m!5757740))

(declare-fun m!5757742 () Bool)

(assert (=> b!4780866 m!5757742))

(assert (=> b!4780697 d!1528421))

(declare-fun lt!1943388 () Bool)

(declare-fun d!1528423 () Bool)

(assert (=> d!1528423 (= lt!1943388 (set.member (tuple2!56463 lt!1943095 lt!1943089) (content!9641 (toList!6725 lm!2709))))))

(declare-fun e!2984741 () Bool)

(assert (=> d!1528423 (= lt!1943388 e!2984741)))

(declare-fun res!2029825 () Bool)

(assert (=> d!1528423 (=> (not res!2029825) (not e!2984741))))

(assert (=> d!1528423 (= res!2029825 (is-Cons!53982 (toList!6725 lm!2709)))))

(assert (=> d!1528423 (= (contains!17506 (toList!6725 lm!2709) (tuple2!56463 lt!1943095 lt!1943089)) lt!1943388)))

(declare-fun b!4780867 () Bool)

(declare-fun e!2984740 () Bool)

(assert (=> b!4780867 (= e!2984741 e!2984740)))

(declare-fun res!2029826 () Bool)

(assert (=> b!4780867 (=> res!2029826 e!2984740)))

(assert (=> b!4780867 (= res!2029826 (= (h!60402 (toList!6725 lm!2709)) (tuple2!56463 lt!1943095 lt!1943089)))))

(declare-fun b!4780868 () Bool)

(assert (=> b!4780868 (= e!2984740 (contains!17506 (t!361556 (toList!6725 lm!2709)) (tuple2!56463 lt!1943095 lt!1943089)))))

(assert (= (and d!1528423 res!2029825) b!4780867))

(assert (= (and b!4780867 (not res!2029826)) b!4780868))

(assert (=> d!1528423 m!5757398))

(declare-fun m!5757746 () Bool)

(assert (=> d!1528423 m!5757746))

(declare-fun m!5757748 () Bool)

(assert (=> b!4780868 m!5757748))

(assert (=> d!1528317 d!1528423))

(declare-fun d!1528427 () Bool)

(assert (=> d!1528427 (contains!17506 (toList!6725 lm!2709) (tuple2!56463 lt!1943095 lt!1943089))))

(assert (=> d!1528427 true))

(declare-fun _$41!493 () Unit!139213)

(assert (=> d!1528427 (= (choose!34249 lm!2709 lt!1943095 lt!1943089) _$41!493)))

(declare-fun bs!1151791 () Bool)

(assert (= bs!1151791 d!1528427))

(assert (=> bs!1151791 m!5757468))

(assert (=> d!1528317 d!1528427))

(assert (=> d!1528317 d!1528325))

(declare-fun d!1528433 () Bool)

(declare-fun res!2029833 () Bool)

(declare-fun e!2984750 () Bool)

(assert (=> d!1528433 (=> res!2029833 e!2984750)))

(assert (=> d!1528433 (= res!2029833 (and (is-Cons!53982 (toList!6725 lm!2709)) (= (_1!31525 (h!60402 (toList!6725 lm!2709))) lt!1943095)))))

(assert (=> d!1528433 (= (containsKey!3798 (toList!6725 lm!2709) lt!1943095) e!2984750)))

(declare-fun b!4780880 () Bool)

(declare-fun e!2984751 () Bool)

(assert (=> b!4780880 (= e!2984750 e!2984751)))

(declare-fun res!2029834 () Bool)

(assert (=> b!4780880 (=> (not res!2029834) (not e!2984751))))

(assert (=> b!4780880 (= res!2029834 (and (or (not (is-Cons!53982 (toList!6725 lm!2709))) (bvsle (_1!31525 (h!60402 (toList!6725 lm!2709))) lt!1943095)) (is-Cons!53982 (toList!6725 lm!2709)) (bvslt (_1!31525 (h!60402 (toList!6725 lm!2709))) lt!1943095)))))

(declare-fun b!4780881 () Bool)

(assert (=> b!4780881 (= e!2984751 (containsKey!3798 (t!361556 (toList!6725 lm!2709)) lt!1943095))))

(assert (= (and d!1528433 (not res!2029833)) b!4780880))

(assert (= (and b!4780880 res!2029834) b!4780881))

(declare-fun m!5757758 () Bool)

(assert (=> b!4780881 m!5757758))

(assert (=> d!1528325 d!1528433))

(declare-fun d!1528437 () Bool)

(declare-fun res!2029835 () Bool)

(declare-fun e!2984752 () Bool)

(assert (=> d!1528437 (=> res!2029835 e!2984752)))

(assert (=> d!1528437 (= res!2029835 (not (is-Cons!53981 (_2!31525 lt!1943090))))))

(assert (=> d!1528437 (= (noDuplicateKeys!2290 (_2!31525 lt!1943090)) e!2984752)))

(declare-fun b!4780882 () Bool)

(declare-fun e!2984753 () Bool)

(assert (=> b!4780882 (= e!2984752 e!2984753)))

(declare-fun res!2029836 () Bool)

(assert (=> b!4780882 (=> (not res!2029836) (not e!2984753))))

(assert (=> b!4780882 (= res!2029836 (not (containsKey!3799 (t!361555 (_2!31525 lt!1943090)) (_1!31524 (h!60401 (_2!31525 lt!1943090))))))))

(declare-fun b!4780883 () Bool)

(assert (=> b!4780883 (= e!2984753 (noDuplicateKeys!2290 (t!361555 (_2!31525 lt!1943090))))))

(assert (= (and d!1528437 (not res!2029835)) b!4780882))

(assert (= (and b!4780882 res!2029836) b!4780883))

(declare-fun m!5757760 () Bool)

(assert (=> b!4780882 m!5757760))

(declare-fun m!5757762 () Bool)

(assert (=> b!4780883 m!5757762))

(assert (=> bs!1151748 d!1528437))

(declare-fun d!1528439 () Bool)

(declare-fun lt!1943391 () Bool)

(declare-fun content!9643 (List!54109) (Set K!15547))

(assert (=> d!1528439 (= lt!1943391 (set.member key!6641 (content!9643 e!2984570)))))

(declare-fun e!2984758 () Bool)

(assert (=> d!1528439 (= lt!1943391 e!2984758)))

(declare-fun res!2029842 () Bool)

(assert (=> d!1528439 (=> (not res!2029842) (not e!2984758))))

(assert (=> d!1528439 (= res!2029842 (is-Cons!53985 e!2984570))))

(assert (=> d!1528439 (= (contains!17511 e!2984570 key!6641) lt!1943391)))

(declare-fun b!4780888 () Bool)

(declare-fun e!2984759 () Bool)

(assert (=> b!4780888 (= e!2984758 e!2984759)))

(declare-fun res!2029841 () Bool)

(assert (=> b!4780888 (=> res!2029841 e!2984759)))

(assert (=> b!4780888 (= res!2029841 (= (h!60405 e!2984570) key!6641))))

(declare-fun b!4780889 () Bool)

(assert (=> b!4780889 (= e!2984759 (contains!17511 (t!361559 e!2984570) key!6641))))

(assert (= (and d!1528439 res!2029842) b!4780888))

(assert (= (and b!4780888 (not res!2029841)) b!4780889))

(declare-fun m!5757764 () Bool)

(assert (=> d!1528439 m!5757764))

(declare-fun m!5757766 () Bool)

(assert (=> d!1528439 m!5757766))

(declare-fun m!5757768 () Bool)

(assert (=> b!4780889 m!5757768))

(assert (=> bm!334704 d!1528439))

(declare-fun d!1528441 () Bool)

(declare-fun res!2029843 () Bool)

(declare-fun e!2984760 () Bool)

(assert (=> d!1528441 (=> res!2029843 e!2984760)))

(assert (=> d!1528441 (= res!2029843 (and (is-Cons!53982 (toList!6725 lm!2709)) (= (_1!31525 (h!60402 (toList!6725 lm!2709))) (_1!31525 (h!60402 (toList!6725 lm!2709))))))))

(assert (=> d!1528441 (= (containsKey!3798 (toList!6725 lm!2709) (_1!31525 (h!60402 (toList!6725 lm!2709)))) e!2984760)))

(declare-fun b!4780890 () Bool)

(declare-fun e!2984761 () Bool)

(assert (=> b!4780890 (= e!2984760 e!2984761)))

(declare-fun res!2029844 () Bool)

(assert (=> b!4780890 (=> (not res!2029844) (not e!2984761))))

(assert (=> b!4780890 (= res!2029844 (and (or (not (is-Cons!53982 (toList!6725 lm!2709))) (bvsle (_1!31525 (h!60402 (toList!6725 lm!2709))) (_1!31525 (h!60402 (toList!6725 lm!2709))))) (is-Cons!53982 (toList!6725 lm!2709)) (bvslt (_1!31525 (h!60402 (toList!6725 lm!2709))) (_1!31525 (h!60402 (toList!6725 lm!2709))))))))

(declare-fun b!4780891 () Bool)

(assert (=> b!4780891 (= e!2984761 (containsKey!3798 (t!361556 (toList!6725 lm!2709)) (_1!31525 (h!60402 (toList!6725 lm!2709)))))))

(assert (= (and d!1528441 (not res!2029843)) b!4780890))

(assert (= (and b!4780890 res!2029844) b!4780891))

(declare-fun m!5757770 () Bool)

(assert (=> b!4780891 m!5757770))

(assert (=> d!1528347 d!1528441))

(declare-fun d!1528443 () Bool)

(declare-fun c!815050 () Bool)

(assert (=> d!1528443 (= c!815050 (is-Nil!53982 (toList!6725 lm!2709)))))

(declare-fun e!2984764 () (Set tuple2!56462))

(assert (=> d!1528443 (= (content!9641 (toList!6725 lm!2709)) e!2984764)))

(declare-fun b!4780896 () Bool)

(assert (=> b!4780896 (= e!2984764 (as set.empty (Set tuple2!56462)))))

(declare-fun b!4780897 () Bool)

(assert (=> b!4780897 (= e!2984764 (set.union (set.insert (h!60402 (toList!6725 lm!2709)) (as set.empty (Set tuple2!56462))) (content!9641 (t!361556 (toList!6725 lm!2709)))))))

(assert (= (and d!1528443 c!815050) b!4780896))

(assert (= (and d!1528443 (not c!815050)) b!4780897))

(declare-fun m!5757772 () Bool)

(assert (=> b!4780897 m!5757772))

(assert (=> b!4780897 m!5757734))

(assert (=> d!1528291 d!1528443))

(declare-fun d!1528445 () Bool)

(assert (=> d!1528445 (= (isDefined!10063 (getPair!795 (apply!12878 lm!2709 (hash!4806 hashF!1687 key!6641)) key!6641)) (not (isEmpty!29350 (getPair!795 (apply!12878 lm!2709 (hash!4806 hashF!1687 key!6641)) key!6641))))))

(declare-fun bs!1151792 () Bool)

(assert (= bs!1151792 d!1528445))

(assert (=> bs!1151792 m!5757434))

(declare-fun m!5757774 () Bool)

(assert (=> bs!1151792 m!5757774))

(assert (=> b!4780595 d!1528445))

(declare-fun d!1528447 () Bool)

(declare-fun e!2984766 () Bool)

(assert (=> d!1528447 e!2984766))

(declare-fun res!2029845 () Bool)

(assert (=> d!1528447 (=> res!2029845 e!2984766)))

(declare-fun lt!1943394 () Bool)

(assert (=> d!1528447 (= res!2029845 (not lt!1943394))))

(declare-fun lt!1943393 () Bool)

(assert (=> d!1528447 (= lt!1943394 lt!1943393)))

(declare-fun lt!1943395 () Unit!139213)

(declare-fun e!2984765 () Unit!139213)

(assert (=> d!1528447 (= lt!1943395 e!2984765)))

(declare-fun c!815051 () Bool)

(assert (=> d!1528447 (= c!815051 lt!1943393)))

(assert (=> d!1528447 (= lt!1943393 (containsKey!3798 (toList!6725 lm!2709) (hash!4806 hashF!1687 key!6641)))))

(assert (=> d!1528447 (= (contains!17505 lm!2709 (hash!4806 hashF!1687 key!6641)) lt!1943394)))

(declare-fun b!4780898 () Bool)

(declare-fun lt!1943392 () Unit!139213)

(assert (=> b!4780898 (= e!2984765 lt!1943392)))

(assert (=> b!4780898 (= lt!1943392 (lemmaContainsKeyImpliesGetValueByKeyDefined!2067 (toList!6725 lm!2709) (hash!4806 hashF!1687 key!6641)))))

(assert (=> b!4780898 (isDefined!10066 (getValueByKey!2272 (toList!6725 lm!2709) (hash!4806 hashF!1687 key!6641)))))

(declare-fun b!4780899 () Bool)

(declare-fun Unit!139236 () Unit!139213)

(assert (=> b!4780899 (= e!2984765 Unit!139236)))

(declare-fun b!4780900 () Bool)

(assert (=> b!4780900 (= e!2984766 (isDefined!10066 (getValueByKey!2272 (toList!6725 lm!2709) (hash!4806 hashF!1687 key!6641))))))

(assert (= (and d!1528447 c!815051) b!4780898))

(assert (= (and d!1528447 (not c!815051)) b!4780899))

(assert (= (and d!1528447 (not res!2029845)) b!4780900))

(assert (=> d!1528447 m!5757348))

(declare-fun m!5757776 () Bool)

(assert (=> d!1528447 m!5757776))

(assert (=> b!4780898 m!5757348))

(declare-fun m!5757778 () Bool)

(assert (=> b!4780898 m!5757778))

(assert (=> b!4780898 m!5757348))

(declare-fun m!5757780 () Bool)

(assert (=> b!4780898 m!5757780))

(assert (=> b!4780898 m!5757780))

(declare-fun m!5757782 () Bool)

(assert (=> b!4780898 m!5757782))

(assert (=> b!4780900 m!5757348))

(assert (=> b!4780900 m!5757780))

(assert (=> b!4780900 m!5757780))

(assert (=> b!4780900 m!5757782))

(assert (=> b!4780595 d!1528447))

(declare-fun d!1528449 () Bool)

(assert (=> d!1528449 (contains!17506 (toList!6725 lm!2709) (tuple2!56463 lt!1943157 lt!1943159))))

(declare-fun lt!1943396 () Unit!139213)

(assert (=> d!1528449 (= lt!1943396 (choose!34249 lm!2709 lt!1943157 lt!1943159))))

(assert (=> d!1528449 (contains!17505 lm!2709 lt!1943157)))

(assert (=> d!1528449 (= (lemmaGetValueImpliesTupleContained!602 lm!2709 lt!1943157 lt!1943159) lt!1943396)))

(declare-fun bs!1151793 () Bool)

(assert (= bs!1151793 d!1528449))

(assert (=> bs!1151793 m!5757442))

(declare-fun m!5757784 () Bool)

(assert (=> bs!1151793 m!5757784))

(assert (=> bs!1151793 m!5757430))

(assert (=> b!4780595 d!1528449))

(declare-fun d!1528451 () Bool)

(declare-fun e!2984770 () Bool)

(assert (=> d!1528451 e!2984770))

(declare-fun res!2029846 () Bool)

(assert (=> d!1528451 (=> res!2029846 e!2984770)))

(declare-fun e!2984767 () Bool)

(assert (=> d!1528451 (= res!2029846 e!2984767)))

(declare-fun res!2029847 () Bool)

(assert (=> d!1528451 (=> (not res!2029847) (not e!2984767))))

(declare-fun lt!1943397 () Option!12919)

(assert (=> d!1528451 (= res!2029847 (isEmpty!29350 lt!1943397))))

(declare-fun e!2984771 () Option!12919)

(assert (=> d!1528451 (= lt!1943397 e!2984771)))

(declare-fun c!815053 () Bool)

(assert (=> d!1528451 (= c!815053 (and (is-Cons!53981 (apply!12878 lm!2709 (hash!4806 hashF!1687 key!6641))) (= (_1!31524 (h!60401 (apply!12878 lm!2709 (hash!4806 hashF!1687 key!6641)))) key!6641)))))

(assert (=> d!1528451 (noDuplicateKeys!2290 (apply!12878 lm!2709 (hash!4806 hashF!1687 key!6641)))))

(assert (=> d!1528451 (= (getPair!795 (apply!12878 lm!2709 (hash!4806 hashF!1687 key!6641)) key!6641) lt!1943397)))

(declare-fun b!4780901 () Bool)

(declare-fun res!2029848 () Bool)

(declare-fun e!2984769 () Bool)

(assert (=> b!4780901 (=> (not res!2029848) (not e!2984769))))

(assert (=> b!4780901 (= res!2029848 (= (_1!31524 (get!18345 lt!1943397)) key!6641))))

(declare-fun b!4780902 () Bool)

(assert (=> b!4780902 (= e!2984770 e!2984769)))

(declare-fun res!2029849 () Bool)

(assert (=> b!4780902 (=> (not res!2029849) (not e!2984769))))

(assert (=> b!4780902 (= res!2029849 (isDefined!10063 lt!1943397))))

(declare-fun b!4780903 () Bool)

(declare-fun e!2984768 () Option!12919)

(assert (=> b!4780903 (= e!2984768 (getPair!795 (t!361555 (apply!12878 lm!2709 (hash!4806 hashF!1687 key!6641))) key!6641))))

(declare-fun b!4780904 () Bool)

(assert (=> b!4780904 (= e!2984769 (contains!17512 (apply!12878 lm!2709 (hash!4806 hashF!1687 key!6641)) (get!18345 lt!1943397)))))

(declare-fun b!4780905 () Bool)

(assert (=> b!4780905 (= e!2984767 (not (containsKey!3799 (apply!12878 lm!2709 (hash!4806 hashF!1687 key!6641)) key!6641)))))

(declare-fun b!4780906 () Bool)

(assert (=> b!4780906 (= e!2984771 (Some!12918 (h!60401 (apply!12878 lm!2709 (hash!4806 hashF!1687 key!6641)))))))

(declare-fun b!4780907 () Bool)

(assert (=> b!4780907 (= e!2984768 None!12918)))

(declare-fun b!4780908 () Bool)

(assert (=> b!4780908 (= e!2984771 e!2984768)))

(declare-fun c!815052 () Bool)

(assert (=> b!4780908 (= c!815052 (is-Cons!53981 (apply!12878 lm!2709 (hash!4806 hashF!1687 key!6641))))))

(assert (= (and d!1528451 c!815053) b!4780906))

(assert (= (and d!1528451 (not c!815053)) b!4780908))

(assert (= (and b!4780908 c!815052) b!4780903))

(assert (= (and b!4780908 (not c!815052)) b!4780907))

(assert (= (and d!1528451 res!2029847) b!4780905))

(assert (= (and d!1528451 (not res!2029846)) b!4780902))

(assert (= (and b!4780902 res!2029849) b!4780901))

(assert (= (and b!4780901 res!2029848) b!4780904))

(declare-fun m!5757786 () Bool)

(assert (=> b!4780903 m!5757786))

(assert (=> b!4780905 m!5757432))

(declare-fun m!5757788 () Bool)

(assert (=> b!4780905 m!5757788))

(declare-fun m!5757790 () Bool)

(assert (=> b!4780904 m!5757790))

(assert (=> b!4780904 m!5757432))

(assert (=> b!4780904 m!5757790))

(declare-fun m!5757792 () Bool)

(assert (=> b!4780904 m!5757792))

(assert (=> b!4780901 m!5757790))

(declare-fun m!5757794 () Bool)

(assert (=> d!1528451 m!5757794))

(assert (=> d!1528451 m!5757432))

(declare-fun m!5757796 () Bool)

(assert (=> d!1528451 m!5757796))

(declare-fun m!5757798 () Bool)

(assert (=> b!4780902 m!5757798))

(assert (=> b!4780595 d!1528451))

(assert (=> b!4780595 d!1528327))

(declare-fun d!1528453 () Bool)

(assert (=> d!1528453 (dynLambda!22010 lambda!228011 (tuple2!56463 (hash!4806 hashF!1687 key!6641) (apply!12878 lm!2709 (hash!4806 hashF!1687 key!6641))))))

(declare-fun lt!1943412 () Unit!139213)

(assert (=> d!1528453 (= lt!1943412 (choose!34245 (toList!6725 lm!2709) lambda!228011 (tuple2!56463 (hash!4806 hashF!1687 key!6641) (apply!12878 lm!2709 (hash!4806 hashF!1687 key!6641)))))))

(declare-fun e!2984772 () Bool)

(assert (=> d!1528453 e!2984772))

(declare-fun res!2029850 () Bool)

(assert (=> d!1528453 (=> (not res!2029850) (not e!2984772))))

(assert (=> d!1528453 (= res!2029850 (forall!12111 (toList!6725 lm!2709) lambda!228011))))

(assert (=> d!1528453 (= (forallContained!4055 (toList!6725 lm!2709) lambda!228011 (tuple2!56463 (hash!4806 hashF!1687 key!6641) (apply!12878 lm!2709 (hash!4806 hashF!1687 key!6641)))) lt!1943412)))

(declare-fun b!4780909 () Bool)

(assert (=> b!4780909 (= e!2984772 (contains!17506 (toList!6725 lm!2709) (tuple2!56463 (hash!4806 hashF!1687 key!6641) (apply!12878 lm!2709 (hash!4806 hashF!1687 key!6641)))))))

(assert (= (and d!1528453 res!2029850) b!4780909))

(declare-fun b_lambda!185599 () Bool)

(assert (=> (not b_lambda!185599) (not d!1528453)))

(declare-fun m!5757800 () Bool)

(assert (=> d!1528453 m!5757800))

(declare-fun m!5757802 () Bool)

(assert (=> d!1528453 m!5757802))

(assert (=> d!1528453 m!5757422))

(declare-fun m!5757804 () Bool)

(assert (=> b!4780909 m!5757804))

(assert (=> b!4780595 d!1528453))

(assert (=> b!4780595 d!1528313))

(declare-fun d!1528455 () Bool)

(declare-fun e!2984774 () Bool)

(assert (=> d!1528455 e!2984774))

(declare-fun res!2029851 () Bool)

(assert (=> d!1528455 (=> res!2029851 e!2984774)))

(declare-fun lt!1943415 () Bool)

(assert (=> d!1528455 (= res!2029851 (not lt!1943415))))

(declare-fun lt!1943414 () Bool)

(assert (=> d!1528455 (= lt!1943415 lt!1943414)))

(declare-fun lt!1943416 () Unit!139213)

(declare-fun e!2984773 () Unit!139213)

(assert (=> d!1528455 (= lt!1943416 e!2984773)))

(declare-fun c!815054 () Bool)

(assert (=> d!1528455 (= c!815054 lt!1943414)))

(assert (=> d!1528455 (= lt!1943414 (containsKey!3798 (toList!6725 lm!2709) lt!1943157))))

(assert (=> d!1528455 (= (contains!17505 lm!2709 lt!1943157) lt!1943415)))

(declare-fun b!4780910 () Bool)

(declare-fun lt!1943413 () Unit!139213)

(assert (=> b!4780910 (= e!2984773 lt!1943413)))

(assert (=> b!4780910 (= lt!1943413 (lemmaContainsKeyImpliesGetValueByKeyDefined!2067 (toList!6725 lm!2709) lt!1943157))))

(assert (=> b!4780910 (isDefined!10066 (getValueByKey!2272 (toList!6725 lm!2709) lt!1943157))))

(declare-fun b!4780911 () Bool)

(declare-fun Unit!139237 () Unit!139213)

(assert (=> b!4780911 (= e!2984773 Unit!139237)))

(declare-fun b!4780912 () Bool)

(assert (=> b!4780912 (= e!2984774 (isDefined!10066 (getValueByKey!2272 (toList!6725 lm!2709) lt!1943157)))))

(assert (= (and d!1528455 c!815054) b!4780910))

(assert (= (and d!1528455 (not c!815054)) b!4780911))

(assert (= (and d!1528455 (not res!2029851)) b!4780912))

(declare-fun m!5757806 () Bool)

(assert (=> d!1528455 m!5757806))

(declare-fun m!5757808 () Bool)

(assert (=> b!4780910 m!5757808))

(assert (=> b!4780910 m!5757426))

(assert (=> b!4780910 m!5757426))

(declare-fun m!5757810 () Bool)

(assert (=> b!4780910 m!5757810))

(assert (=> b!4780912 m!5757426))

(assert (=> b!4780912 m!5757426))

(assert (=> b!4780912 m!5757810))

(assert (=> b!4780595 d!1528455))

(declare-fun d!1528457 () Bool)

(declare-fun lt!1943417 () Bool)

(assert (=> d!1528457 (= lt!1943417 (set.member (tuple2!56463 lt!1943157 lt!1943159) (content!9641 (toList!6725 lm!2709))))))

(declare-fun e!2984776 () Bool)

(assert (=> d!1528457 (= lt!1943417 e!2984776)))

(declare-fun res!2029852 () Bool)

(assert (=> d!1528457 (=> (not res!2029852) (not e!2984776))))

(assert (=> d!1528457 (= res!2029852 (is-Cons!53982 (toList!6725 lm!2709)))))

(assert (=> d!1528457 (= (contains!17506 (toList!6725 lm!2709) (tuple2!56463 lt!1943157 lt!1943159)) lt!1943417)))

(declare-fun b!4780913 () Bool)

(declare-fun e!2984775 () Bool)

(assert (=> b!4780913 (= e!2984776 e!2984775)))

(declare-fun res!2029853 () Bool)

(assert (=> b!4780913 (=> res!2029853 e!2984775)))

(assert (=> b!4780913 (= res!2029853 (= (h!60402 (toList!6725 lm!2709)) (tuple2!56463 lt!1943157 lt!1943159)))))

(declare-fun b!4780914 () Bool)

(assert (=> b!4780914 (= e!2984775 (contains!17506 (t!361556 (toList!6725 lm!2709)) (tuple2!56463 lt!1943157 lt!1943159)))))

(assert (= (and d!1528457 res!2029852) b!4780913))

(assert (= (and b!4780913 (not res!2029853)) b!4780914))

(assert (=> d!1528457 m!5757398))

(declare-fun m!5757812 () Bool)

(assert (=> d!1528457 m!5757812))

(declare-fun m!5757814 () Bool)

(assert (=> b!4780914 m!5757814))

(assert (=> b!4780595 d!1528457))

(declare-fun d!1528459 () Bool)

(assert (=> d!1528459 (= (apply!12878 lm!2709 (hash!4806 hashF!1687 key!6641)) (get!18347 (getValueByKey!2272 (toList!6725 lm!2709) (hash!4806 hashF!1687 key!6641))))))

(declare-fun bs!1151794 () Bool)

(assert (= bs!1151794 d!1528459))

(assert (=> bs!1151794 m!5757348))

(assert (=> bs!1151794 m!5757780))

(assert (=> bs!1151794 m!5757780))

(declare-fun m!5757816 () Bool)

(assert (=> bs!1151794 m!5757816))

(assert (=> b!4780595 d!1528459))

(declare-fun d!1528461 () Bool)

(declare-fun lt!1943420 () Bool)

(declare-fun content!9644 (List!54105) (Set tuple2!56460))

(assert (=> d!1528461 (= lt!1943420 (set.member (get!18345 lt!1943227) (content!9644 lt!1943089)))))

(declare-fun e!2984781 () Bool)

(assert (=> d!1528461 (= lt!1943420 e!2984781)))

(declare-fun res!2029859 () Bool)

(assert (=> d!1528461 (=> (not res!2029859) (not e!2984781))))

(assert (=> d!1528461 (= res!2029859 (is-Cons!53981 lt!1943089))))

(assert (=> d!1528461 (= (contains!17512 lt!1943089 (get!18345 lt!1943227)) lt!1943420)))

(declare-fun b!4780919 () Bool)

(declare-fun e!2984782 () Bool)

(assert (=> b!4780919 (= e!2984781 e!2984782)))

(declare-fun res!2029858 () Bool)

(assert (=> b!4780919 (=> res!2029858 e!2984782)))

(assert (=> b!4780919 (= res!2029858 (= (h!60401 lt!1943089) (get!18345 lt!1943227)))))

(declare-fun b!4780920 () Bool)

(assert (=> b!4780920 (= e!2984782 (contains!17512 (t!361555 lt!1943089) (get!18345 lt!1943227)))))

(assert (= (and d!1528461 res!2029859) b!4780919))

(assert (= (and b!4780919 (not res!2029858)) b!4780920))

(declare-fun m!5757818 () Bool)

(assert (=> d!1528461 m!5757818))

(assert (=> d!1528461 m!5757530))

(declare-fun m!5757820 () Bool)

(assert (=> d!1528461 m!5757820))

(assert (=> b!4780920 m!5757530))

(declare-fun m!5757822 () Bool)

(assert (=> b!4780920 m!5757822))

(assert (=> b!4780687 d!1528461))

(declare-fun d!1528463 () Bool)

(assert (=> d!1528463 (= (get!18345 lt!1943227) (v!48117 lt!1943227))))

(assert (=> b!4780687 d!1528463))

(assert (=> d!1528315 d!1528319))

(assert (=> d!1528315 d!1528309))

(declare-fun d!1528465 () Bool)

(assert (=> d!1528465 (contains!17507 (extractMap!2350 (toList!6725 lm!2709)) key!6641)))

(assert (=> d!1528465 true))

(declare-fun _$34!919 () Unit!139213)

(assert (=> d!1528465 (= (choose!34248 lm!2709 key!6641 hashF!1687) _$34!919)))

(declare-fun bs!1151803 () Bool)

(assert (= bs!1151803 d!1528465))

(assert (=> bs!1151803 m!5757338))

(assert (=> bs!1151803 m!5757338))

(assert (=> bs!1151803 m!5757356))

(assert (=> d!1528315 d!1528465))

(declare-fun d!1528479 () Bool)

(declare-fun res!2029867 () Bool)

(declare-fun e!2984790 () Bool)

(assert (=> d!1528479 (=> res!2029867 e!2984790)))

(assert (=> d!1528479 (= res!2029867 (is-Nil!53982 (toList!6725 lm!2709)))))

(assert (=> d!1528479 (= (forall!12111 (toList!6725 lm!2709) lambda!228020) e!2984790)))

(declare-fun b!4780928 () Bool)

(declare-fun e!2984791 () Bool)

(assert (=> b!4780928 (= e!2984790 e!2984791)))

(declare-fun res!2029868 () Bool)

(assert (=> b!4780928 (=> (not res!2029868) (not e!2984791))))

(assert (=> b!4780928 (= res!2029868 (dynLambda!22010 lambda!228020 (h!60402 (toList!6725 lm!2709))))))

(declare-fun b!4780929 () Bool)

(assert (=> b!4780929 (= e!2984791 (forall!12111 (t!361556 (toList!6725 lm!2709)) lambda!228020))))

(assert (= (and d!1528479 (not res!2029867)) b!4780928))

(assert (= (and b!4780928 res!2029868) b!4780929))

(declare-fun b_lambda!185603 () Bool)

(assert (=> (not b_lambda!185603) (not b!4780928)))

(declare-fun m!5757840 () Bool)

(assert (=> b!4780928 m!5757840))

(declare-fun m!5757842 () Bool)

(assert (=> b!4780929 m!5757842))

(assert (=> d!1528315 d!1528479))

(declare-fun d!1528483 () Bool)

(declare-fun lt!1943432 () Bool)

(assert (=> d!1528483 (= lt!1943432 (set.member key!6641 (content!9643 (keys!19659 (extractMap!2350 (toList!6725 lm!2709))))))))

(declare-fun e!2984792 () Bool)

(assert (=> d!1528483 (= lt!1943432 e!2984792)))

(declare-fun res!2029870 () Bool)

(assert (=> d!1528483 (=> (not res!2029870) (not e!2984792))))

(assert (=> d!1528483 (= res!2029870 (is-Cons!53985 (keys!19659 (extractMap!2350 (toList!6725 lm!2709)))))))

(assert (=> d!1528483 (= (contains!17511 (keys!19659 (extractMap!2350 (toList!6725 lm!2709))) key!6641) lt!1943432)))

(declare-fun b!4780930 () Bool)

(declare-fun e!2984793 () Bool)

(assert (=> b!4780930 (= e!2984792 e!2984793)))

(declare-fun res!2029869 () Bool)

(assert (=> b!4780930 (=> res!2029869 e!2984793)))

(assert (=> b!4780930 (= res!2029869 (= (h!60405 (keys!19659 (extractMap!2350 (toList!6725 lm!2709)))) key!6641))))

(declare-fun b!4780931 () Bool)

(assert (=> b!4780931 (= e!2984793 (contains!17511 (t!361559 (keys!19659 (extractMap!2350 (toList!6725 lm!2709)))) key!6641))))

(assert (= (and d!1528483 res!2029870) b!4780930))

(assert (= (and b!4780930 (not res!2029869)) b!4780931))

(assert (=> d!1528483 m!5757490))

(declare-fun m!5757844 () Bool)

(assert (=> d!1528483 m!5757844))

(declare-fun m!5757846 () Bool)

(assert (=> d!1528483 m!5757846))

(declare-fun m!5757848 () Bool)

(assert (=> b!4780931 m!5757848))

(assert (=> b!4780633 d!1528483))

(declare-fun b!4780951 () Bool)

(assert (=> b!4780951 true))

(declare-fun d!1528485 () Bool)

(declare-fun e!2984802 () Bool)

(assert (=> d!1528485 e!2984802))

(declare-fun res!2029877 () Bool)

(assert (=> d!1528485 (=> (not res!2029877) (not e!2984802))))

(declare-fun lt!1943438 () List!54109)

(declare-fun noDuplicate!898 (List!54109) Bool)

(assert (=> d!1528485 (= res!2029877 (noDuplicate!898 lt!1943438))))

(assert (=> d!1528485 (= lt!1943438 (getKeysList!1036 (toList!6726 (extractMap!2350 (toList!6725 lm!2709)))))))

(assert (=> d!1528485 (= (keys!19659 (extractMap!2350 (toList!6725 lm!2709))) lt!1943438)))

(declare-fun b!4780950 () Bool)

(declare-fun res!2029878 () Bool)

(assert (=> b!4780950 (=> (not res!2029878) (not e!2984802))))

(declare-fun length!652 (List!54109) Int)

(declare-fun length!653 (List!54105) Int)

(assert (=> b!4780950 (= res!2029878 (= (length!652 lt!1943438) (length!653 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))))))))

(declare-fun res!2029879 () Bool)

(assert (=> b!4780951 (=> (not res!2029879) (not e!2984802))))

(declare-fun lambda!228083 () Int)

(declare-fun forall!12114 (List!54109 Int) Bool)

(assert (=> b!4780951 (= res!2029879 (forall!12114 lt!1943438 lambda!228083))))

(declare-fun lambda!228084 () Int)

(declare-fun b!4780952 () Bool)

(declare-fun map!12171 (List!54105 Int) List!54109)

(assert (=> b!4780952 (= e!2984802 (= (content!9643 lt!1943438) (content!9643 (map!12171 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))) lambda!228084))))))

(assert (= (and d!1528485 res!2029877) b!4780950))

(assert (= (and b!4780950 res!2029878) b!4780951))

(assert (= (and b!4780951 res!2029879) b!4780952))

(declare-fun m!5757858 () Bool)

(assert (=> d!1528485 m!5757858))

(assert (=> d!1528485 m!5757480))

(declare-fun m!5757860 () Bool)

(assert (=> b!4780950 m!5757860))

(declare-fun m!5757862 () Bool)

(assert (=> b!4780950 m!5757862))

(declare-fun m!5757864 () Bool)

(assert (=> b!4780951 m!5757864))

(declare-fun m!5757866 () Bool)

(assert (=> b!4780952 m!5757866))

(declare-fun m!5757868 () Bool)

(assert (=> b!4780952 m!5757868))

(assert (=> b!4780952 m!5757868))

(declare-fun m!5757870 () Bool)

(assert (=> b!4780952 m!5757870))

(assert (=> b!4780633 d!1528485))

(declare-fun d!1528493 () Bool)

(declare-fun c!815061 () Bool)

(assert (=> d!1528493 (= c!815061 (and (is-Cons!53982 (toList!6725 lm!2709)) (= (_1!31525 (h!60402 (toList!6725 lm!2709))) lt!1943157)))))

(declare-fun e!2984803 () Option!12921)

(assert (=> d!1528493 (= (getValueByKey!2272 (toList!6725 lm!2709) lt!1943157) e!2984803)))

(declare-fun b!4780955 () Bool)

(assert (=> b!4780955 (= e!2984803 (Some!12920 (_2!31525 (h!60402 (toList!6725 lm!2709)))))))

(declare-fun b!4780957 () Bool)

(declare-fun e!2984804 () Option!12921)

(assert (=> b!4780957 (= e!2984804 (getValueByKey!2272 (t!361556 (toList!6725 lm!2709)) lt!1943157))))

(declare-fun b!4780958 () Bool)

(assert (=> b!4780958 (= e!2984804 None!12920)))

(declare-fun b!4780956 () Bool)

(assert (=> b!4780956 (= e!2984803 e!2984804)))

(declare-fun c!815062 () Bool)

(assert (=> b!4780956 (= c!815062 (and (is-Cons!53982 (toList!6725 lm!2709)) (not (= (_1!31525 (h!60402 (toList!6725 lm!2709))) lt!1943157))))))

(assert (= (and d!1528493 c!815061) b!4780955))

(assert (= (and d!1528493 (not c!815061)) b!4780956))

(assert (= (and b!4780956 c!815062) b!4780957))

(assert (= (and b!4780956 (not c!815062)) b!4780958))

(declare-fun m!5757872 () Bool)

(assert (=> b!4780957 m!5757872))

(assert (=> b!4780596 d!1528493))

(declare-fun d!1528495 () Bool)

(declare-fun res!2029884 () Bool)

(declare-fun e!2984809 () Bool)

(assert (=> d!1528495 (=> res!2029884 e!2984809)))

(assert (=> d!1528495 (= res!2029884 (and (is-Cons!53981 lt!1943089) (= (_1!31524 (h!60401 lt!1943089)) key!6641)))))

(assert (=> d!1528495 (= (containsKey!3799 lt!1943089 key!6641) e!2984809)))

(declare-fun b!4780961 () Bool)

(declare-fun e!2984810 () Bool)

(assert (=> b!4780961 (= e!2984809 e!2984810)))

(declare-fun res!2029885 () Bool)

(assert (=> b!4780961 (=> (not res!2029885) (not e!2984810))))

(assert (=> b!4780961 (= res!2029885 (is-Cons!53981 lt!1943089))))

(declare-fun b!4780962 () Bool)

(assert (=> b!4780962 (= e!2984810 (containsKey!3799 (t!361555 lt!1943089) key!6641))))

(assert (= (and d!1528495 (not res!2029884)) b!4780961))

(assert (= (and b!4780961 res!2029885) b!4780962))

(declare-fun m!5757874 () Bool)

(assert (=> b!4780962 m!5757874))

(assert (=> b!4780688 d!1528495))

(declare-fun d!1528497 () Bool)

(assert (=> d!1528497 (isDefined!10065 (getValueByKey!2273 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))) key!6641))))

(declare-fun lt!1943441 () Unit!139213)

(declare-fun choose!34259 (List!54105 K!15547) Unit!139213)

(assert (=> d!1528497 (= lt!1943441 (choose!34259 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))) key!6641))))

(assert (=> d!1528497 (invariantList!1692 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))))))

(assert (=> d!1528497 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2066 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))) key!6641) lt!1943441)))

(declare-fun bs!1151807 () Bool)

(assert (= bs!1151807 d!1528497))

(assert (=> bs!1151807 m!5757484))

(assert (=> bs!1151807 m!5757484))

(assert (=> bs!1151807 m!5757486))

(declare-fun m!5757878 () Bool)

(assert (=> bs!1151807 m!5757878))

(declare-fun m!5757880 () Bool)

(assert (=> bs!1151807 m!5757880))

(assert (=> b!4780631 d!1528497))

(declare-fun d!1528501 () Bool)

(declare-fun isEmpty!29355 (Option!12922) Bool)

(assert (=> d!1528501 (= (isDefined!10065 (getValueByKey!2273 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))) key!6641)) (not (isEmpty!29355 (getValueByKey!2273 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))) key!6641))))))

(declare-fun bs!1151808 () Bool)

(assert (= bs!1151808 d!1528501))

(assert (=> bs!1151808 m!5757484))

(declare-fun m!5757882 () Bool)

(assert (=> bs!1151808 m!5757882))

(assert (=> b!4780631 d!1528501))

(declare-fun b!4780981 () Bool)

(declare-fun e!2984823 () Option!12922)

(assert (=> b!4780981 (= e!2984823 (Some!12921 (_2!31524 (h!60401 (toList!6726 (extractMap!2350 (toList!6725 lm!2709)))))))))

(declare-fun b!4780984 () Bool)

(declare-fun e!2984824 () Option!12922)

(assert (=> b!4780984 (= e!2984824 None!12921)))

(declare-fun b!4780982 () Bool)

(assert (=> b!4780982 (= e!2984823 e!2984824)))

(declare-fun c!815068 () Bool)

(assert (=> b!4780982 (= c!815068 (and (is-Cons!53981 (toList!6726 (extractMap!2350 (toList!6725 lm!2709)))) (not (= (_1!31524 (h!60401 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))))) key!6641))))))

(declare-fun d!1528503 () Bool)

(declare-fun c!815067 () Bool)

(assert (=> d!1528503 (= c!815067 (and (is-Cons!53981 (toList!6726 (extractMap!2350 (toList!6725 lm!2709)))) (= (_1!31524 (h!60401 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))))) key!6641)))))

(assert (=> d!1528503 (= (getValueByKey!2273 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))) key!6641) e!2984823)))

(declare-fun b!4780983 () Bool)

(assert (=> b!4780983 (= e!2984824 (getValueByKey!2273 (t!361555 (toList!6726 (extractMap!2350 (toList!6725 lm!2709)))) key!6641))))

(assert (= (and d!1528503 c!815067) b!4780981))

(assert (= (and d!1528503 (not c!815067)) b!4780982))

(assert (= (and b!4780982 c!815068) b!4780983))

(assert (= (and b!4780982 (not c!815068)) b!4780984))

(declare-fun m!5757890 () Bool)

(assert (=> b!4780983 m!5757890))

(assert (=> b!4780631 d!1528503))

(declare-fun d!1528507 () Bool)

(assert (=> d!1528507 (contains!17511 (getKeysList!1036 (toList!6726 (extractMap!2350 (toList!6725 lm!2709)))) key!6641)))

(declare-fun lt!1943449 () Unit!139213)

(declare-fun choose!34261 (List!54105 K!15547) Unit!139213)

(assert (=> d!1528507 (= lt!1943449 (choose!34261 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))) key!6641))))

(assert (=> d!1528507 (invariantList!1692 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))))))

(assert (=> d!1528507 (= (lemmaInListThenGetKeysListContains!1031 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))) key!6641) lt!1943449)))

(declare-fun bs!1151809 () Bool)

(assert (= bs!1151809 d!1528507))

(assert (=> bs!1151809 m!5757480))

(assert (=> bs!1151809 m!5757480))

(declare-fun m!5757892 () Bool)

(assert (=> bs!1151809 m!5757892))

(declare-fun m!5757894 () Bool)

(assert (=> bs!1151809 m!5757894))

(assert (=> bs!1151809 m!5757880))

(assert (=> b!4780631 d!1528507))

(assert (=> d!1528313 d!1528447))

(assert (=> d!1528313 d!1528327))

(declare-fun d!1528509 () Bool)

(assert (=> d!1528509 (contains!17505 lm!2709 (hash!4806 hashF!1687 key!6641))))

(assert (=> d!1528509 true))

(declare-fun _$27!1602 () Unit!139213)

(assert (=> d!1528509 (= (choose!34247 lm!2709 key!6641 hashF!1687) _$27!1602)))

(declare-fun bs!1151810 () Bool)

(assert (= bs!1151810 d!1528509))

(assert (=> bs!1151810 m!5757348))

(assert (=> bs!1151810 m!5757348))

(assert (=> bs!1151810 m!5757436))

(assert (=> d!1528313 d!1528509))

(declare-fun d!1528511 () Bool)

(declare-fun res!2029903 () Bool)

(declare-fun e!2984828 () Bool)

(assert (=> d!1528511 (=> res!2029903 e!2984828)))

(assert (=> d!1528511 (= res!2029903 (is-Nil!53982 (toList!6725 lm!2709)))))

(assert (=> d!1528511 (= (forall!12111 (toList!6725 lm!2709) lambda!228017) e!2984828)))

(declare-fun b!4780996 () Bool)

(declare-fun e!2984829 () Bool)

(assert (=> b!4780996 (= e!2984828 e!2984829)))

(declare-fun res!2029904 () Bool)

(assert (=> b!4780996 (=> (not res!2029904) (not e!2984829))))

(assert (=> b!4780996 (= res!2029904 (dynLambda!22010 lambda!228017 (h!60402 (toList!6725 lm!2709))))))

(declare-fun b!4780997 () Bool)

(assert (=> b!4780997 (= e!2984829 (forall!12111 (t!361556 (toList!6725 lm!2709)) lambda!228017))))

(assert (= (and d!1528511 (not res!2029903)) b!4780996))

(assert (= (and b!4780996 res!2029904) b!4780997))

(declare-fun b_lambda!185605 () Bool)

(assert (=> (not b_lambda!185605) (not b!4780996)))

(declare-fun m!5757896 () Bool)

(assert (=> b!4780996 m!5757896))

(declare-fun m!5757900 () Bool)

(assert (=> b!4780997 m!5757900))

(assert (=> d!1528313 d!1528511))

(declare-fun d!1528513 () Bool)

(assert (=> d!1528513 (= (isDefined!10066 (getValueByKey!2272 (toList!6725 lm!2709) lt!1943095)) (not (isEmpty!29352 (getValueByKey!2272 (toList!6725 lm!2709) lt!1943095))))))

(declare-fun bs!1151811 () Bool)

(assert (= bs!1151811 d!1528513))

(assert (=> bs!1151811 m!5757504))

(declare-fun m!5757912 () Bool)

(assert (=> bs!1151811 m!5757912))

(assert (=> b!4780659 d!1528513))

(declare-fun d!1528515 () Bool)

(declare-fun c!815069 () Bool)

(assert (=> d!1528515 (= c!815069 (and (is-Cons!53982 (toList!6725 lm!2709)) (= (_1!31525 (h!60402 (toList!6725 lm!2709))) lt!1943095)))))

(declare-fun e!2984830 () Option!12921)

(assert (=> d!1528515 (= (getValueByKey!2272 (toList!6725 lm!2709) lt!1943095) e!2984830)))

(declare-fun b!4780998 () Bool)

(assert (=> b!4780998 (= e!2984830 (Some!12920 (_2!31525 (h!60402 (toList!6725 lm!2709)))))))

(declare-fun b!4781000 () Bool)

(declare-fun e!2984831 () Option!12921)

(assert (=> b!4781000 (= e!2984831 (getValueByKey!2272 (t!361556 (toList!6725 lm!2709)) lt!1943095))))

(declare-fun b!4781001 () Bool)

(assert (=> b!4781001 (= e!2984831 None!12920)))

(declare-fun b!4780999 () Bool)

(assert (=> b!4780999 (= e!2984830 e!2984831)))

(declare-fun c!815070 () Bool)

(assert (=> b!4780999 (= c!815070 (and (is-Cons!53982 (toList!6725 lm!2709)) (not (= (_1!31525 (h!60402 (toList!6725 lm!2709))) lt!1943095))))))

(assert (= (and d!1528515 c!815069) b!4780998))

(assert (= (and d!1528515 (not c!815069)) b!4780999))

(assert (= (and b!4780999 c!815070) b!4781000))

(assert (= (and b!4780999 (not c!815070)) b!4781001))

(declare-fun m!5757916 () Bool)

(assert (=> b!4781000 m!5757916))

(assert (=> b!4780659 d!1528515))

(assert (=> b!4780594 d!1528319))

(assert (=> b!4780594 d!1528309))

(declare-fun d!1528521 () Bool)

(declare-fun e!2984835 () Bool)

(assert (=> d!1528521 e!2984835))

(declare-fun res!2029905 () Bool)

(assert (=> d!1528521 (=> res!2029905 e!2984835)))

(declare-fun e!2984832 () Bool)

(assert (=> d!1528521 (= res!2029905 e!2984832)))

(declare-fun res!2029906 () Bool)

(assert (=> d!1528521 (=> (not res!2029906) (not e!2984832))))

(declare-fun lt!1943451 () Option!12919)

(assert (=> d!1528521 (= res!2029906 (isEmpty!29350 lt!1943451))))

(declare-fun e!2984836 () Option!12919)

(assert (=> d!1528521 (= lt!1943451 e!2984836)))

(declare-fun c!815072 () Bool)

(assert (=> d!1528521 (= c!815072 (and (is-Cons!53981 (t!361555 lt!1943089)) (= (_1!31524 (h!60401 (t!361555 lt!1943089))) key!6641)))))

(assert (=> d!1528521 (noDuplicateKeys!2290 (t!361555 lt!1943089))))

(assert (=> d!1528521 (= (getPair!795 (t!361555 lt!1943089) key!6641) lt!1943451)))

(declare-fun b!4781002 () Bool)

(declare-fun res!2029907 () Bool)

(declare-fun e!2984834 () Bool)

(assert (=> b!4781002 (=> (not res!2029907) (not e!2984834))))

(assert (=> b!4781002 (= res!2029907 (= (_1!31524 (get!18345 lt!1943451)) key!6641))))

(declare-fun b!4781003 () Bool)

(assert (=> b!4781003 (= e!2984835 e!2984834)))

(declare-fun res!2029908 () Bool)

(assert (=> b!4781003 (=> (not res!2029908) (not e!2984834))))

(assert (=> b!4781003 (= res!2029908 (isDefined!10063 lt!1943451))))

(declare-fun b!4781004 () Bool)

(declare-fun e!2984833 () Option!12919)

(assert (=> b!4781004 (= e!2984833 (getPair!795 (t!361555 (t!361555 lt!1943089)) key!6641))))

(declare-fun b!4781005 () Bool)

(assert (=> b!4781005 (= e!2984834 (contains!17512 (t!361555 lt!1943089) (get!18345 lt!1943451)))))

(declare-fun b!4781006 () Bool)

(assert (=> b!4781006 (= e!2984832 (not (containsKey!3799 (t!361555 lt!1943089) key!6641)))))

(declare-fun b!4781007 () Bool)

(assert (=> b!4781007 (= e!2984836 (Some!12918 (h!60401 (t!361555 lt!1943089))))))

(declare-fun b!4781008 () Bool)

(assert (=> b!4781008 (= e!2984833 None!12918)))

(declare-fun b!4781009 () Bool)

(assert (=> b!4781009 (= e!2984836 e!2984833)))

(declare-fun c!815071 () Bool)

(assert (=> b!4781009 (= c!815071 (is-Cons!53981 (t!361555 lt!1943089)))))

(assert (= (and d!1528521 c!815072) b!4781007))

(assert (= (and d!1528521 (not c!815072)) b!4781009))

(assert (= (and b!4781009 c!815071) b!4781004))

(assert (= (and b!4781009 (not c!815071)) b!4781008))

(assert (= (and d!1528521 res!2029906) b!4781006))

(assert (= (and d!1528521 (not res!2029905)) b!4781003))

(assert (= (and b!4781003 res!2029908) b!4781002))

(assert (= (and b!4781002 res!2029907) b!4781005))

(declare-fun m!5757918 () Bool)

(assert (=> b!4781004 m!5757918))

(assert (=> b!4781006 m!5757874))

(declare-fun m!5757920 () Bool)

(assert (=> b!4781005 m!5757920))

(assert (=> b!4781005 m!5757920))

(declare-fun m!5757922 () Bool)

(assert (=> b!4781005 m!5757922))

(assert (=> b!4781002 m!5757920))

(declare-fun m!5757924 () Bool)

(assert (=> d!1528521 m!5757924))

(assert (=> d!1528521 m!5757680))

(declare-fun m!5757926 () Bool)

(assert (=> b!4781003 m!5757926))

(assert (=> b!4780686 d!1528521))

(assert (=> b!4780632 d!1528485))

(assert (=> b!4780630 d!1528501))

(assert (=> b!4780630 d!1528503))

(declare-fun d!1528523 () Bool)

(assert (=> d!1528523 (= (isEmpty!29350 lt!1943092) (not (is-Some!12918 lt!1943092)))))

(assert (=> d!1528295 d!1528523))

(assert (=> b!4780593 d!1528345))

(declare-fun d!1528525 () Bool)

(assert (=> d!1528525 (= (isDefined!10063 lt!1943227) (not (isEmpty!29350 lt!1943227)))))

(declare-fun bs!1151812 () Bool)

(assert (= bs!1151812 d!1528525))

(assert (=> bs!1151812 m!5757534))

(assert (=> b!4780685 d!1528525))

(declare-fun bs!1151814 () Bool)

(declare-fun b!4781061 () Bool)

(assert (= bs!1151814 (and b!4781061 b!4780951)))

(declare-fun lambda!228107 () Int)

(assert (=> bs!1151814 (= (= (t!361555 (toList!6726 (extractMap!2350 (toList!6725 lm!2709)))) (toList!6726 (extractMap!2350 (toList!6725 lm!2709)))) (= lambda!228107 lambda!228083))))

(assert (=> b!4781061 true))

(declare-fun bs!1151815 () Bool)

(declare-fun b!4781064 () Bool)

(assert (= bs!1151815 (and b!4781064 b!4780951)))

(declare-fun lambda!228108 () Int)

(assert (=> bs!1151815 (= (= (Cons!53981 (h!60401 (toList!6726 (extractMap!2350 (toList!6725 lm!2709)))) (t!361555 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))))) (toList!6726 (extractMap!2350 (toList!6725 lm!2709)))) (= lambda!228108 lambda!228083))))

(declare-fun bs!1151816 () Bool)

(assert (= bs!1151816 (and b!4781064 b!4781061)))

(assert (=> bs!1151816 (= (= (Cons!53981 (h!60401 (toList!6726 (extractMap!2350 (toList!6725 lm!2709)))) (t!361555 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))))) (t!361555 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))))) (= lambda!228108 lambda!228107))))

(assert (=> b!4781064 true))

(declare-fun bs!1151817 () Bool)

(declare-fun b!4781058 () Bool)

(assert (= bs!1151817 (and b!4781058 b!4780951)))

(declare-fun lambda!228109 () Int)

(assert (=> bs!1151817 (= lambda!228109 lambda!228083)))

(declare-fun bs!1151818 () Bool)

(assert (= bs!1151818 (and b!4781058 b!4781061)))

(assert (=> bs!1151818 (= (= (toList!6726 (extractMap!2350 (toList!6725 lm!2709))) (t!361555 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))))) (= lambda!228109 lambda!228107))))

(declare-fun bs!1151819 () Bool)

(assert (= bs!1151819 (and b!4781058 b!4781064)))

(assert (=> bs!1151819 (= (= (toList!6726 (extractMap!2350 (toList!6725 lm!2709))) (Cons!53981 (h!60401 (toList!6726 (extractMap!2350 (toList!6725 lm!2709)))) (t!361555 (toList!6726 (extractMap!2350 (toList!6725 lm!2709)))))) (= lambda!228109 lambda!228108))))

(assert (=> b!4781058 true))

(declare-fun bs!1151820 () Bool)

(declare-fun b!4781060 () Bool)

(assert (= bs!1151820 (and b!4781060 b!4780952)))

(declare-fun lambda!228110 () Int)

(assert (=> bs!1151820 (= lambda!228110 lambda!228084)))

(declare-fun b!4781056 () Bool)

(declare-fun e!2984864 () Unit!139213)

(declare-fun Unit!139241 () Unit!139213)

(assert (=> b!4781056 (= e!2984864 Unit!139241)))

(declare-fun b!4781057 () Bool)

(declare-fun res!2029931 () Bool)

(declare-fun e!2984863 () Bool)

(assert (=> b!4781057 (=> (not res!2029931) (not e!2984863))))

(declare-fun lt!1943489 () List!54109)

(assert (=> b!4781057 (= res!2029931 (= (length!652 lt!1943489) (length!653 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))))))))

(declare-fun res!2029932 () Bool)

(assert (=> b!4781058 (=> (not res!2029932) (not e!2984863))))

(assert (=> b!4781058 (= res!2029932 (forall!12114 lt!1943489 lambda!228109))))

(declare-fun b!4781059 () Bool)

(declare-fun e!2984865 () Unit!139213)

(declare-fun Unit!139243 () Unit!139213)

(assert (=> b!4781059 (= e!2984865 Unit!139243)))

(assert (=> b!4781060 (= e!2984863 (= (content!9643 lt!1943489) (content!9643 (map!12171 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))) lambda!228110))))))

(assert (=> b!4781061 false))

(declare-fun lt!1943485 () Unit!139213)

(declare-fun forallContained!4059 (List!54109 Int K!15547) Unit!139213)

(assert (=> b!4781061 (= lt!1943485 (forallContained!4059 (getKeysList!1036 (t!361555 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))))) lambda!228107 (_1!31524 (h!60401 (toList!6726 (extractMap!2350 (toList!6725 lm!2709)))))))))

(declare-fun Unit!139244 () Unit!139213)

(assert (=> b!4781061 (= e!2984865 Unit!139244)))

(declare-fun b!4781062 () Bool)

(declare-fun e!2984866 () List!54109)

(assert (=> b!4781062 (= e!2984866 Nil!53985)))

(declare-fun b!4781063 () Bool)

(assert (=> b!4781063 false))

(declare-fun Unit!139245 () Unit!139213)

(assert (=> b!4781063 (= e!2984864 Unit!139245)))

(declare-fun d!1528527 () Bool)

(assert (=> d!1528527 e!2984863))

(declare-fun res!2029933 () Bool)

(assert (=> d!1528527 (=> (not res!2029933) (not e!2984863))))

(assert (=> d!1528527 (= res!2029933 (noDuplicate!898 lt!1943489))))

(assert (=> d!1528527 (= lt!1943489 e!2984866)))

(declare-fun c!815087 () Bool)

(assert (=> d!1528527 (= c!815087 (is-Cons!53981 (toList!6726 (extractMap!2350 (toList!6725 lm!2709)))))))

(assert (=> d!1528527 (invariantList!1692 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))))))

(assert (=> d!1528527 (= (getKeysList!1036 (toList!6726 (extractMap!2350 (toList!6725 lm!2709)))) lt!1943489)))

(assert (=> b!4781064 (= e!2984866 (Cons!53985 (_1!31524 (h!60401 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))))) (getKeysList!1036 (t!361555 (toList!6726 (extractMap!2350 (toList!6725 lm!2709)))))))))

(declare-fun c!815086 () Bool)

(assert (=> b!4781064 (= c!815086 (containsKey!3797 (t!361555 (toList!6726 (extractMap!2350 (toList!6725 lm!2709)))) (_1!31524 (h!60401 (toList!6726 (extractMap!2350 (toList!6725 lm!2709)))))))))

(declare-fun lt!1943486 () Unit!139213)

(assert (=> b!4781064 (= lt!1943486 e!2984864)))

(declare-fun c!815085 () Bool)

(assert (=> b!4781064 (= c!815085 (contains!17511 (getKeysList!1036 (t!361555 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))))) (_1!31524 (h!60401 (toList!6726 (extractMap!2350 (toList!6725 lm!2709)))))))))

(declare-fun lt!1943488 () Unit!139213)

(assert (=> b!4781064 (= lt!1943488 e!2984865)))

(declare-fun lt!1943490 () List!54109)

(assert (=> b!4781064 (= lt!1943490 (getKeysList!1036 (t!361555 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))))))))

(declare-fun lt!1943487 () Unit!139213)

(declare-fun lemmaForallContainsAddHeadPreserves!316 (List!54105 List!54109 tuple2!56460) Unit!139213)

(assert (=> b!4781064 (= lt!1943487 (lemmaForallContainsAddHeadPreserves!316 (t!361555 (toList!6726 (extractMap!2350 (toList!6725 lm!2709)))) lt!1943490 (h!60401 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))))))))

(assert (=> b!4781064 (forall!12114 lt!1943490 lambda!228108)))

(declare-fun lt!1943484 () Unit!139213)

(assert (=> b!4781064 (= lt!1943484 lt!1943487)))

(assert (= (and d!1528527 c!815087) b!4781064))

(assert (= (and d!1528527 (not c!815087)) b!4781062))

(assert (= (and b!4781064 c!815086) b!4781063))

(assert (= (and b!4781064 (not c!815086)) b!4781056))

(assert (= (and b!4781064 c!815085) b!4781061))

(assert (= (and b!4781064 (not c!815085)) b!4781059))

(assert (= (and d!1528527 res!2029933) b!4781057))

(assert (= (and b!4781057 res!2029931) b!4781058))

(assert (= (and b!4781058 res!2029932) b!4781060))

(declare-fun m!5757942 () Bool)

(assert (=> b!4781058 m!5757942))

(declare-fun m!5757944 () Bool)

(assert (=> b!4781057 m!5757944))

(assert (=> b!4781057 m!5757862))

(declare-fun m!5757946 () Bool)

(assert (=> b!4781064 m!5757946))

(declare-fun m!5757948 () Bool)

(assert (=> b!4781064 m!5757948))

(declare-fun m!5757950 () Bool)

(assert (=> b!4781064 m!5757950))

(assert (=> b!4781064 m!5757946))

(declare-fun m!5757952 () Bool)

(assert (=> b!4781064 m!5757952))

(declare-fun m!5757954 () Bool)

(assert (=> b!4781064 m!5757954))

(assert (=> b!4781061 m!5757946))

(assert (=> b!4781061 m!5757946))

(declare-fun m!5757956 () Bool)

(assert (=> b!4781061 m!5757956))

(declare-fun m!5757958 () Bool)

(assert (=> b!4781060 m!5757958))

(declare-fun m!5757960 () Bool)

(assert (=> b!4781060 m!5757960))

(assert (=> b!4781060 m!5757960))

(declare-fun m!5757962 () Bool)

(assert (=> b!4781060 m!5757962))

(declare-fun m!5757964 () Bool)

(assert (=> d!1528527 m!5757964))

(assert (=> d!1528527 m!5757880))

(assert (=> b!4780629 d!1528527))

(declare-fun d!1528537 () Bool)

(assert (=> d!1528537 (= (get!18347 (getValueByKey!2272 (toList!6725 lm!2709) lt!1943095)) (v!48121 (getValueByKey!2272 (toList!6725 lm!2709) lt!1943095)))))

(assert (=> d!1528329 d!1528537))

(assert (=> d!1528329 d!1528515))

(declare-fun d!1528539 () Bool)

(assert (=> d!1528539 (isDefined!10066 (getValueByKey!2272 (toList!6725 lm!2709) lt!1943095))))

(declare-fun lt!1943498 () Unit!139213)

(assert (=> d!1528539 (= lt!1943498 (choose!34255 (toList!6725 lm!2709) lt!1943095))))

(declare-fun e!2984871 () Bool)

(assert (=> d!1528539 e!2984871))

(declare-fun res!2029937 () Bool)

(assert (=> d!1528539 (=> (not res!2029937) (not e!2984871))))

(assert (=> d!1528539 (= res!2029937 (isStrictlySorted!843 (toList!6725 lm!2709)))))

(assert (=> d!1528539 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2067 (toList!6725 lm!2709) lt!1943095) lt!1943498)))

(declare-fun b!4781078 () Bool)

(assert (=> b!4781078 (= e!2984871 (containsKey!3798 (toList!6725 lm!2709) lt!1943095))))

(assert (= (and d!1528539 res!2029937) b!4781078))

(assert (=> d!1528539 m!5757504))

(assert (=> d!1528539 m!5757504))

(assert (=> d!1528539 m!5757506))

(declare-fun m!5757966 () Bool)

(assert (=> d!1528539 m!5757966))

(assert (=> d!1528539 m!5757544))

(assert (=> b!4781078 m!5757500))

(assert (=> b!4780657 d!1528539))

(assert (=> b!4780657 d!1528513))

(assert (=> b!4780657 d!1528515))

(assert (=> b!4780684 d!1528463))

(assert (=> b!4780627 d!1528483))

(assert (=> b!4780627 d!1528485))

(assert (=> b!4780628 d!1528395))

(declare-fun d!1528541 () Bool)

(assert (=> d!1528541 (containsKey!3797 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))) key!6641)))

(declare-fun lt!1943501 () Unit!139213)

(declare-fun choose!34263 (List!54105 K!15547) Unit!139213)

(assert (=> d!1528541 (= lt!1943501 (choose!34263 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))) key!6641))))

(assert (=> d!1528541 (invariantList!1692 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))))))

(assert (=> d!1528541 (= (lemmaInGetKeysListThenContainsKey!1036 (toList!6726 (extractMap!2350 (toList!6725 lm!2709))) key!6641) lt!1943501)))

(declare-fun bs!1151828 () Bool)

(assert (= bs!1151828 d!1528541))

(assert (=> bs!1151828 m!5757494))

(declare-fun m!5757990 () Bool)

(assert (=> bs!1151828 m!5757990))

(assert (=> bs!1151828 m!5757880))

(assert (=> b!4780628 d!1528541))

(declare-fun e!2984876 () Bool)

(declare-fun b!4781085 () Bool)

(declare-fun tp!1357411 () Bool)

(assert (=> b!4781085 (= e!2984876 (and tp_is_empty!33193 tp_is_empty!33195 tp!1357411))))

(assert (=> b!4780716 (= tp!1357401 e!2984876)))

(assert (= (and b!4780716 (is-Cons!53981 (_2!31525 (h!60402 (toList!6725 lm!2709))))) b!4781085))

(declare-fun b!4781086 () Bool)

(declare-fun e!2984877 () Bool)

(declare-fun tp!1357412 () Bool)

(declare-fun tp!1357413 () Bool)

(assert (=> b!4781086 (= e!2984877 (and tp!1357412 tp!1357413))))

(assert (=> b!4780716 (= tp!1357402 e!2984877)))

(assert (= (and b!4780716 (is-Cons!53982 (t!361556 (toList!6725 lm!2709)))) b!4781086))

(declare-fun b_lambda!185607 () Bool)

(assert (= b_lambda!185603 (or d!1528315 b_lambda!185607)))

(declare-fun bs!1151829 () Bool)

(declare-fun d!1528547 () Bool)

(assert (= bs!1151829 (and d!1528547 d!1528315)))

(assert (=> bs!1151829 (= (dynLambda!22010 lambda!228020 (h!60402 (toList!6725 lm!2709))) (noDuplicateKeys!2290 (_2!31525 (h!60402 (toList!6725 lm!2709)))))))

(assert (=> bs!1151829 m!5757562))

(assert (=> b!4780928 d!1528547))

(declare-fun b_lambda!185609 () Bool)

(assert (= b_lambda!185591 (or d!1528309 b_lambda!185609)))

(declare-fun bs!1151830 () Bool)

(declare-fun d!1528549 () Bool)

(assert (= bs!1151830 (and d!1528549 d!1528309)))

(assert (=> bs!1151830 (= (dynLambda!22010 lambda!228014 (h!60402 (toList!6725 lm!2709))) (noDuplicateKeys!2290 (_2!31525 (h!60402 (toList!6725 lm!2709)))))))

(assert (=> bs!1151830 m!5757562))

(assert (=> b!4780823 d!1528549))

(declare-fun b_lambda!185611 () Bool)

(assert (= b_lambda!185589 (or start!490704 b_lambda!185611)))

(assert (=> d!1528377 d!1528349))

(declare-fun b_lambda!185613 () Bool)

(assert (= b_lambda!185593 (or d!1528297 b_lambda!185613)))

(declare-fun bs!1151831 () Bool)

(declare-fun d!1528551 () Bool)

(assert (= bs!1151831 (and d!1528551 d!1528297)))

(assert (=> bs!1151831 (= (dynLambda!22010 lambda!228011 (h!60402 (toList!6725 lm!2709))) (noDuplicateKeys!2290 (_2!31525 (h!60402 (toList!6725 lm!2709)))))))

(assert (=> bs!1151831 m!5757562))

(assert (=> b!4780827 d!1528551))

(declare-fun b_lambda!185615 () Bool)

(assert (= b_lambda!185599 (or d!1528297 b_lambda!185615)))

(declare-fun bs!1151832 () Bool)

(declare-fun d!1528553 () Bool)

(assert (= bs!1151832 (and d!1528553 d!1528297)))

(assert (=> bs!1151832 (= (dynLambda!22010 lambda!228011 (tuple2!56463 (hash!4806 hashF!1687 key!6641) (apply!12878 lm!2709 (hash!4806 hashF!1687 key!6641)))) (noDuplicateKeys!2290 (_2!31525 (tuple2!56463 (hash!4806 hashF!1687 key!6641) (apply!12878 lm!2709 (hash!4806 hashF!1687 key!6641))))))))

(declare-fun m!5758000 () Bool)

(assert (=> bs!1151832 m!5758000))

(assert (=> d!1528453 d!1528553))

(declare-fun b_lambda!185617 () Bool)

(assert (= b_lambda!185595 (or start!490704 b_lambda!185617)))

(declare-fun bs!1151833 () Bool)

(declare-fun d!1528555 () Bool)

(assert (= bs!1151833 (and d!1528555 start!490704)))

(assert (=> bs!1151833 (= (dynLambda!22010 lambda!227992 (h!60402 (t!361556 (toList!6725 lm!2709)))) (noDuplicateKeys!2290 (_2!31525 (h!60402 (t!361556 (toList!6725 lm!2709))))))))

(declare-fun m!5758002 () Bool)

(assert (=> bs!1151833 m!5758002))

(assert (=> b!4780865 d!1528555))

(declare-fun b_lambda!185619 () Bool)

(assert (= b_lambda!185587 (or d!1528345 b_lambda!185619)))

(declare-fun bs!1151834 () Bool)

(declare-fun d!1528557 () Bool)

(assert (= bs!1151834 (and d!1528557 d!1528345)))

(declare-fun allKeysSameHash!1939 (List!54105 (_ BitVec 64) Hashable!6823) Bool)

(assert (=> bs!1151834 (= (dynLambda!22010 lambda!228026 (h!60402 (toList!6725 lm!2709))) (allKeysSameHash!1939 (_2!31525 (h!60402 (toList!6725 lm!2709))) (_1!31525 (h!60402 (toList!6725 lm!2709))) hashF!1687))))

(declare-fun m!5758004 () Bool)

(assert (=> bs!1151834 m!5758004))

(assert (=> b!4780779 d!1528557))

(declare-fun b_lambda!185621 () Bool)

(assert (= b_lambda!185605 (or d!1528313 b_lambda!185621)))

(declare-fun bs!1151835 () Bool)

(declare-fun d!1528559 () Bool)

(assert (= bs!1151835 (and d!1528559 d!1528313)))

(assert (=> bs!1151835 (= (dynLambda!22010 lambda!228017 (h!60402 (toList!6725 lm!2709))) (noDuplicateKeys!2290 (_2!31525 (h!60402 (toList!6725 lm!2709)))))))

(assert (=> bs!1151835 m!5757562))

(assert (=> b!4780996 d!1528559))

(push 1)

(assert (not bs!1151832))

(assert (not b!4780883))

(assert (not bs!1151835))

(assert (not b_lambda!185619))

(assert (not d!1528459))

(assert (not b!4780909))

(assert (not b!4780931))

(assert (not b!4780828))

(assert (not b_lambda!185579))

(assert (not b!4780841))

(assert (not b!4780816))

(assert (not b!4780914))

(assert (not d!1528501))

(assert (not d!1528457))

(assert (not d!1528541))

(assert (not b!4780950))

(assert (not d!1528485))

(assert (not d!1528439))

(assert (not b_lambda!185611))

(assert (not b!4780957))

(assert (not b!4781002))

(assert (not b!4780843))

(assert (not b!4780951))

(assert (not b!4780881))

(assert (not b_lambda!185607))

(assert (not d!1528427))

(assert (not b!4781086))

(assert (not b_lambda!185609))

(assert (not d!1528497))

(assert (not b!4780898))

(assert (not bs!1151830))

(assert (not b!4781058))

(assert (not b!4781060))

(assert (not bs!1151833))

(assert (not b!4781061))

(assert (not b!4781064))

(assert (not b!4780912))

(assert (not d!1528527))

(assert (not b_lambda!185621))

(assert (not b!4780866))

(assert (not bm!334715))

(assert (not b!4780810))

(assert (not b!4780929))

(assert (not b_lambda!185617))

(assert (not b!4781000))

(assert (not d!1528447))

(assert (not d!1528391))

(assert (not b!4781004))

(assert (not b!4780797))

(assert (not d!1528455))

(assert (not b!4780910))

(assert (not d!1528507))

(assert (not b!4780857))

(assert (not bm!334716))

(assert (not d!1528509))

(assert (not b!4780920))

(assert (not b!4780807))

(assert (not d!1528449))

(assert (not b!4781078))

(assert (not bs!1151829))

(assert (not b!4781057))

(assert (not b!4780842))

(assert (not b!4780891))

(assert (not bm!334714))

(assert (not d!1528461))

(assert (not d!1528465))

(assert (not d!1528409))

(assert (not b!4780962))

(assert (not b!4780897))

(assert (not d!1528407))

(assert (not b!4780808))

(assert (not d!1528513))

(assert (not b!4780903))

(assert (not d!1528521))

(assert (not b!4780902))

(assert (not b!4780868))

(assert (not b!4780904))

(assert (not b!4780822))

(assert (not d!1528419))

(assert (not bs!1151834))

(assert (not b!4780801))

(assert (not b!4780997))

(assert (not b!4780786))

(assert (not d!1528483))

(assert (not b!4780806))

(assert (not b!4780882))

(assert (not b!4781085))

(assert (not b_lambda!185613))

(assert (not b!4780780))

(assert (not d!1528417))

(assert (not b!4780983))

(assert (not d!1528453))

(assert (not b!4780824))

(assert (not b!4780889))

(assert (not b!4781006))

(assert (not b!4780901))

(assert (not b!4780905))

(assert (not b!4780900))

(assert (not d!1528451))

(assert tp_is_empty!33195)

(assert (not b_lambda!185577))

(assert (not d!1528423))

(assert (not bs!1151831))

(assert (not b!4781003))

(assert tp_is_empty!33193)

(assert (not d!1528381))

(assert (not d!1528445))

(assert (not b!4781005))

(assert (not b!4780826))

(assert (not b_lambda!185615))

(assert (not d!1528385))

(assert (not b!4780952))

(assert (not b!4780844))

(assert (not d!1528525))

(assert (not b!4780825))

(assert (not d!1528539))

(assert (not b!4780860))

(assert (not d!1528397))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

