; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!723016 () Bool)

(assert start!723016)

(declare-fun b!7445313 () Bool)

(assert (=> b!7445313 true))

(declare-fun setIsEmpty!56684 () Bool)

(declare-fun setRes!56684 () Bool)

(assert (=> setIsEmpty!56684 setRes!56684))

(declare-fun e!4445295 () Bool)

(declare-datatypes ((C!39210 0))(
  ( (C!39211 (val!29979 Int)) )
))
(declare-datatypes ((Regex!19468 0))(
  ( (ElementMatch!19468 (c!1377409 C!39210)) (Concat!28313 (regOne!39448 Regex!19468) (regTwo!39448 Regex!19468)) (EmptyExpr!19468) (Star!19468 (reg!19797 Regex!19468)) (EmptyLang!19468) (Union!19468 (regOne!39449 Regex!19468) (regTwo!39449 Regex!19468)) )
))
(declare-datatypes ((List!72164 0))(
  ( (Nil!72040) (Cons!72040 (h!78488 Regex!19468) (t!386729 List!72164)) )
))
(declare-datatypes ((Context!16816 0))(
  ( (Context!16817 (exprs!8908 List!72164)) )
))
(declare-fun z!3503 () (Set Context!16816))

(declare-datatypes ((List!72165 0))(
  ( (Nil!72041) (Cons!72041 (h!78489 C!39210) (t!386730 List!72165)) )
))
(declare-fun s!7951 () List!72165)

(declare-fun matchZipper!3826 ((Set Context!16816) List!72165) Bool)

(assert (=> b!7445313 (= e!4445295 (not (not (matchZipper!3826 z!3503 s!7951))))))

(assert (=> b!7445313 (not (matchZipper!3826 z!3503 (t!386730 s!7951)))))

(declare-datatypes ((Unit!165779 0))(
  ( (Unit!165780) )
))
(declare-fun lt!2619544 () Unit!165779)

(declare-fun lemmaEmptyZipperMatchesNothing!135 ((Set Context!16816) List!72165) Unit!165779)

(assert (=> b!7445313 (= lt!2619544 (lemmaEmptyZipperMatchesNothing!135 z!3503 (t!386730 s!7951)))))

(declare-fun lambda!460584 () Int)

(declare-fun flatMap!3244 ((Set Context!16816) Int) (Set Context!16816))

(assert (=> b!7445313 (= (flatMap!3244 z!3503 lambda!460584) (as set.empty (Set Context!16816)))))

(declare-fun lt!2619545 () Unit!165779)

(declare-fun lemmaFlatMapOnEmptySetIsEmpty!17 ((Set Context!16816) Int) Unit!165779)

(assert (=> b!7445313 (= lt!2619545 (lemmaFlatMapOnEmptySetIsEmpty!17 z!3503 lambda!460584))))

(declare-fun res!2987174 () Bool)

(assert (=> start!723016 (=> (not res!2987174) (not e!4445295))))

(assert (=> start!723016 (= res!2987174 (and (= z!3503 (as set.empty (Set Context!16816))) (is-Cons!72041 s!7951)))))

(assert (=> start!723016 e!4445295))

(declare-fun condSetEmpty!56684 () Bool)

(assert (=> start!723016 (= condSetEmpty!56684 (= z!3503 (as set.empty (Set Context!16816))))))

(assert (=> start!723016 setRes!56684))

(declare-fun e!4445294 () Bool)

(assert (=> start!723016 e!4445294))

(declare-fun b!7445314 () Bool)

(declare-fun e!4445296 () Bool)

(declare-fun tp!2154620 () Bool)

(assert (=> b!7445314 (= e!4445296 tp!2154620)))

(declare-fun b!7445315 () Bool)

(declare-fun tp_is_empty!49195 () Bool)

(declare-fun tp!2154619 () Bool)

(assert (=> b!7445315 (= e!4445294 (and tp_is_empty!49195 tp!2154619))))

(declare-fun setNonEmpty!56684 () Bool)

(declare-fun tp!2154621 () Bool)

(declare-fun setElem!56684 () Context!16816)

(declare-fun inv!92032 (Context!16816) Bool)

(assert (=> setNonEmpty!56684 (= setRes!56684 (and tp!2154621 (inv!92032 setElem!56684) e!4445296))))

(declare-fun setRest!56684 () (Set Context!16816))

(assert (=> setNonEmpty!56684 (= z!3503 (set.union (set.insert setElem!56684 (as set.empty (Set Context!16816))) setRest!56684))))

(assert (= (and start!723016 res!2987174) b!7445313))

(assert (= (and start!723016 condSetEmpty!56684) setIsEmpty!56684))

(assert (= (and start!723016 (not condSetEmpty!56684)) setNonEmpty!56684))

(assert (= setNonEmpty!56684 b!7445314))

(assert (= (and start!723016 (is-Cons!72041 s!7951)) b!7445315))

(declare-fun m!8054878 () Bool)

(assert (=> b!7445313 m!8054878))

(declare-fun m!8054880 () Bool)

(assert (=> b!7445313 m!8054880))

(declare-fun m!8054882 () Bool)

(assert (=> b!7445313 m!8054882))

(declare-fun m!8054884 () Bool)

(assert (=> b!7445313 m!8054884))

(declare-fun m!8054886 () Bool)

(assert (=> b!7445313 m!8054886))

(declare-fun m!8054888 () Bool)

(assert (=> setNonEmpty!56684 m!8054888))

(push 1)

(assert (not b!7445313))

(assert (not setNonEmpty!56684))

(assert (not b!7445315))

(assert tp_is_empty!49195)

(assert (not b!7445314))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2296274 () Bool)

(declare-fun lambda!460590 () Int)

(declare-fun forall!18242 (List!72164 Int) Bool)

(assert (=> d!2296274 (= (inv!92032 setElem!56684) (forall!18242 (exprs!8908 setElem!56684) lambda!460590))))

(declare-fun bs!1926628 () Bool)

(assert (= bs!1926628 d!2296274))

(declare-fun m!8054902 () Bool)

(assert (=> bs!1926628 m!8054902))

(assert (=> setNonEmpty!56684 d!2296274))

(declare-fun d!2296276 () Bool)

(declare-fun choose!57543 ((Set Context!16816) Int) (Set Context!16816))

(assert (=> d!2296276 (= (flatMap!3244 z!3503 lambda!460584) (choose!57543 z!3503 lambda!460584))))

(declare-fun bs!1926629 () Bool)

(assert (= bs!1926629 d!2296276))

(declare-fun m!8054904 () Bool)

(assert (=> bs!1926629 m!8054904))

(assert (=> b!7445313 d!2296276))

(declare-fun d!2296278 () Bool)

(declare-fun c!1377415 () Bool)

(declare-fun isEmpty!41086 (List!72165) Bool)

(assert (=> d!2296278 (= c!1377415 (isEmpty!41086 s!7951))))

(declare-fun e!4445308 () Bool)

(assert (=> d!2296278 (= (matchZipper!3826 z!3503 s!7951) e!4445308)))

(declare-fun b!7445333 () Bool)

(declare-fun nullableZipper!3153 ((Set Context!16816)) Bool)

(assert (=> b!7445333 (= e!4445308 (nullableZipper!3153 z!3503))))

(declare-fun b!7445334 () Bool)

(declare-fun derivationStepZipper!3718 ((Set Context!16816) C!39210) (Set Context!16816))

(declare-fun head!15272 (List!72165) C!39210)

(declare-fun tail!14851 (List!72165) List!72165)

(assert (=> b!7445334 (= e!4445308 (matchZipper!3826 (derivationStepZipper!3718 z!3503 (head!15272 s!7951)) (tail!14851 s!7951)))))

(assert (= (and d!2296278 c!1377415) b!7445333))

(assert (= (and d!2296278 (not c!1377415)) b!7445334))

(declare-fun m!8054906 () Bool)

(assert (=> d!2296278 m!8054906))

(declare-fun m!8054908 () Bool)

(assert (=> b!7445333 m!8054908))

(declare-fun m!8054910 () Bool)

(assert (=> b!7445334 m!8054910))

(assert (=> b!7445334 m!8054910))

(declare-fun m!8054912 () Bool)

(assert (=> b!7445334 m!8054912))

(declare-fun m!8054914 () Bool)

(assert (=> b!7445334 m!8054914))

(assert (=> b!7445334 m!8054912))

(assert (=> b!7445334 m!8054914))

(declare-fun m!8054916 () Bool)

(assert (=> b!7445334 m!8054916))

(assert (=> b!7445313 d!2296278))

(declare-fun d!2296280 () Bool)

(assert (=> d!2296280 (not (matchZipper!3826 z!3503 (t!386730 s!7951)))))

(declare-fun lt!2619554 () Unit!165779)

(declare-fun choose!57544 ((Set Context!16816) List!72165) Unit!165779)

(assert (=> d!2296280 (= lt!2619554 (choose!57544 z!3503 (t!386730 s!7951)))))

(assert (=> d!2296280 (= z!3503 (as set.empty (Set Context!16816)))))

(assert (=> d!2296280 (= (lemmaEmptyZipperMatchesNothing!135 z!3503 (t!386730 s!7951)) lt!2619554)))

(declare-fun bs!1926630 () Bool)

(assert (= bs!1926630 d!2296280))

(assert (=> bs!1926630 m!8054884))

(declare-fun m!8054918 () Bool)

(assert (=> bs!1926630 m!8054918))

(assert (=> b!7445313 d!2296280))

(declare-fun d!2296282 () Bool)

(declare-fun c!1377416 () Bool)

(assert (=> d!2296282 (= c!1377416 (isEmpty!41086 (t!386730 s!7951)))))

(declare-fun e!4445309 () Bool)

(assert (=> d!2296282 (= (matchZipper!3826 z!3503 (t!386730 s!7951)) e!4445309)))

(declare-fun b!7445335 () Bool)

(assert (=> b!7445335 (= e!4445309 (nullableZipper!3153 z!3503))))

(declare-fun b!7445336 () Bool)

(assert (=> b!7445336 (= e!4445309 (matchZipper!3826 (derivationStepZipper!3718 z!3503 (head!15272 (t!386730 s!7951))) (tail!14851 (t!386730 s!7951))))))

(assert (= (and d!2296282 c!1377416) b!7445335))

(assert (= (and d!2296282 (not c!1377416)) b!7445336))

(declare-fun m!8054920 () Bool)

(assert (=> d!2296282 m!8054920))

(assert (=> b!7445335 m!8054908))

(declare-fun m!8054922 () Bool)

(assert (=> b!7445336 m!8054922))

(assert (=> b!7445336 m!8054922))

(declare-fun m!8054924 () Bool)

(assert (=> b!7445336 m!8054924))

(declare-fun m!8054926 () Bool)

(assert (=> b!7445336 m!8054926))

(assert (=> b!7445336 m!8054924))

(assert (=> b!7445336 m!8054926))

(declare-fun m!8054928 () Bool)

(assert (=> b!7445336 m!8054928))

(assert (=> b!7445313 d!2296282))

(declare-fun d!2296284 () Bool)

(assert (=> d!2296284 (= (flatMap!3244 z!3503 lambda!460584) (as set.empty (Set Context!16816)))))

(declare-fun lt!2619557 () Unit!165779)

(declare-fun choose!57545 ((Set Context!16816) Int) Unit!165779)

(assert (=> d!2296284 (= lt!2619557 (choose!57545 z!3503 lambda!460584))))

(assert (=> d!2296284 (= z!3503 (as set.empty (Set Context!16816)))))

(assert (=> d!2296284 (= (lemmaFlatMapOnEmptySetIsEmpty!17 z!3503 lambda!460584) lt!2619557)))

(declare-fun bs!1926631 () Bool)

(assert (= bs!1926631 d!2296284))

(assert (=> bs!1926631 m!8054880))

(declare-fun m!8054930 () Bool)

(assert (=> bs!1926631 m!8054930))

(assert (=> b!7445313 d!2296284))

(declare-fun condSetEmpty!56690 () Bool)

(assert (=> setNonEmpty!56684 (= condSetEmpty!56690 (= setRest!56684 (as set.empty (Set Context!16816))))))

(declare-fun setRes!56690 () Bool)

(assert (=> setNonEmpty!56684 (= tp!2154621 setRes!56690)))

(declare-fun setIsEmpty!56690 () Bool)

(assert (=> setIsEmpty!56690 setRes!56690))

(declare-fun e!4445312 () Bool)

(declare-fun tp!2154635 () Bool)

(declare-fun setNonEmpty!56690 () Bool)

(declare-fun setElem!56690 () Context!16816)

(assert (=> setNonEmpty!56690 (= setRes!56690 (and tp!2154635 (inv!92032 setElem!56690) e!4445312))))

(declare-fun setRest!56690 () (Set Context!16816))

(assert (=> setNonEmpty!56690 (= setRest!56684 (set.union (set.insert setElem!56690 (as set.empty (Set Context!16816))) setRest!56690))))

(declare-fun b!7445341 () Bool)

(declare-fun tp!2154636 () Bool)

(assert (=> b!7445341 (= e!4445312 tp!2154636)))

(assert (= (and setNonEmpty!56684 condSetEmpty!56690) setIsEmpty!56690))

(assert (= (and setNonEmpty!56684 (not condSetEmpty!56690)) setNonEmpty!56690))

(assert (= setNonEmpty!56690 b!7445341))

(declare-fun m!8054932 () Bool)

(assert (=> setNonEmpty!56690 m!8054932))

(declare-fun b!7445346 () Bool)

(declare-fun e!4445315 () Bool)

(declare-fun tp!2154641 () Bool)

(declare-fun tp!2154642 () Bool)

(assert (=> b!7445346 (= e!4445315 (and tp!2154641 tp!2154642))))

(assert (=> b!7445314 (= tp!2154620 e!4445315)))

(assert (= (and b!7445314 (is-Cons!72040 (exprs!8908 setElem!56684))) b!7445346))

(declare-fun b!7445351 () Bool)

(declare-fun e!4445318 () Bool)

(declare-fun tp!2154645 () Bool)

(assert (=> b!7445351 (= e!4445318 (and tp_is_empty!49195 tp!2154645))))

(assert (=> b!7445315 (= tp!2154619 e!4445318)))

(assert (= (and b!7445315 (is-Cons!72041 (t!386730 s!7951))) b!7445351))

(push 1)

(assert (not b!7445333))

(assert (not b!7445335))

(assert (not d!2296284))

(assert (not setNonEmpty!56690))

(assert (not b!7445346))

(assert tp_is_empty!49195)

(assert (not d!2296282))

(assert (not d!2296278))

(assert (not b!7445341))

(assert (not b!7445334))

(assert (not b!7445336))

(assert (not d!2296276))

(assert (not d!2296280))

(assert (not d!2296274))

(assert (not b!7445351))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2296294 () Bool)

(assert (=> d!2296294 true))

(declare-fun setRes!56693 () Bool)

(assert (=> d!2296294 setRes!56693))

(declare-fun condSetEmpty!56693 () Bool)

(declare-fun res!2987180 () (Set Context!16816))

(assert (=> d!2296294 (= condSetEmpty!56693 (= res!2987180 (as set.empty (Set Context!16816))))))

(assert (=> d!2296294 (= (choose!57543 z!3503 lambda!460584) res!2987180)))

(declare-fun setIsEmpty!56693 () Bool)

(assert (=> setIsEmpty!56693 setRes!56693))

(declare-fun setElem!56693 () Context!16816)

(declare-fun e!4445325 () Bool)

(declare-fun tp!2154650 () Bool)

(declare-fun setNonEmpty!56693 () Bool)

(assert (=> setNonEmpty!56693 (= setRes!56693 (and tp!2154650 (inv!92032 setElem!56693) e!4445325))))

(declare-fun setRest!56693 () (Set Context!16816))

(assert (=> setNonEmpty!56693 (= res!2987180 (set.union (set.insert setElem!56693 (as set.empty (Set Context!16816))) setRest!56693))))

(declare-fun b!7445362 () Bool)

(declare-fun tp!2154651 () Bool)

(assert (=> b!7445362 (= e!4445325 tp!2154651)))

(assert (= (and d!2296294 condSetEmpty!56693) setIsEmpty!56693))

(assert (= (and d!2296294 (not condSetEmpty!56693)) setNonEmpty!56693))

(assert (= setNonEmpty!56693 b!7445362))

(declare-fun m!8054962 () Bool)

(assert (=> setNonEmpty!56693 m!8054962))

(assert (=> d!2296276 d!2296294))

(assert (=> d!2296280 d!2296282))

(declare-fun d!2296300 () Bool)

(assert (=> d!2296300 (not (matchZipper!3826 z!3503 (t!386730 s!7951)))))

(assert (=> d!2296300 true))

(declare-fun _$64!850 () Unit!165779)

(assert (=> d!2296300 (= (choose!57544 z!3503 (t!386730 s!7951)) _$64!850)))

(declare-fun bs!1926635 () Bool)

(assert (= bs!1926635 d!2296300))

(assert (=> bs!1926635 m!8054884))

(assert (=> d!2296280 d!2296300))

(declare-fun d!2296302 () Bool)

(assert (=> d!2296302 (= (isEmpty!41086 (t!386730 s!7951)) (is-Nil!72041 (t!386730 s!7951)))))

(assert (=> d!2296282 d!2296302))

(assert (=> d!2296284 d!2296276))

(declare-fun d!2296304 () Bool)

(assert (=> d!2296304 (= (flatMap!3244 z!3503 lambda!460584) (as set.empty (Set Context!16816)))))

(assert (=> d!2296304 true))

(declare-fun _$2!1962 () Unit!165779)

(assert (=> d!2296304 (= (choose!57545 z!3503 lambda!460584) _$2!1962)))

(declare-fun bs!1926637 () Bool)

(assert (= bs!1926637 d!2296304))

(assert (=> bs!1926637 m!8054880))

(assert (=> d!2296284 d!2296304))

(declare-fun d!2296306 () Bool)

(declare-fun c!1377421 () Bool)

(assert (=> d!2296306 (= c!1377421 (isEmpty!41086 (tail!14851 s!7951)))))

(declare-fun e!4445326 () Bool)

(assert (=> d!2296306 (= (matchZipper!3826 (derivationStepZipper!3718 z!3503 (head!15272 s!7951)) (tail!14851 s!7951)) e!4445326)))

(declare-fun b!7445363 () Bool)

(assert (=> b!7445363 (= e!4445326 (nullableZipper!3153 (derivationStepZipper!3718 z!3503 (head!15272 s!7951))))))

(declare-fun b!7445364 () Bool)

(assert (=> b!7445364 (= e!4445326 (matchZipper!3826 (derivationStepZipper!3718 (derivationStepZipper!3718 z!3503 (head!15272 s!7951)) (head!15272 (tail!14851 s!7951))) (tail!14851 (tail!14851 s!7951))))))

(assert (= (and d!2296306 c!1377421) b!7445363))

(assert (= (and d!2296306 (not c!1377421)) b!7445364))

(assert (=> d!2296306 m!8054914))

(declare-fun m!8054966 () Bool)

(assert (=> d!2296306 m!8054966))

(assert (=> b!7445363 m!8054912))

(declare-fun m!8054968 () Bool)

(assert (=> b!7445363 m!8054968))

(assert (=> b!7445364 m!8054914))

(declare-fun m!8054970 () Bool)

(assert (=> b!7445364 m!8054970))

(assert (=> b!7445364 m!8054912))

(assert (=> b!7445364 m!8054970))

(declare-fun m!8054972 () Bool)

(assert (=> b!7445364 m!8054972))

(assert (=> b!7445364 m!8054914))

(declare-fun m!8054974 () Bool)

(assert (=> b!7445364 m!8054974))

(assert (=> b!7445364 m!8054972))

(assert (=> b!7445364 m!8054974))

(declare-fun m!8054976 () Bool)

(assert (=> b!7445364 m!8054976))

(assert (=> b!7445334 d!2296306))

(declare-fun bs!1926638 () Bool)

(declare-fun d!2296308 () Bool)

(assert (= bs!1926638 (and d!2296308 b!7445313)))

(declare-fun lambda!460596 () Int)

(assert (=> bs!1926638 (= (= (head!15272 s!7951) (h!78489 s!7951)) (= lambda!460596 lambda!460584))))

(assert (=> d!2296308 true))

(assert (=> d!2296308 (= (derivationStepZipper!3718 z!3503 (head!15272 s!7951)) (flatMap!3244 z!3503 lambda!460596))))

(declare-fun bs!1926639 () Bool)

(assert (= bs!1926639 d!2296308))

(declare-fun m!8054978 () Bool)

(assert (=> bs!1926639 m!8054978))

(assert (=> b!7445334 d!2296308))

(declare-fun d!2296310 () Bool)

(assert (=> d!2296310 (= (head!15272 s!7951) (h!78489 s!7951))))

(assert (=> b!7445334 d!2296310))

(declare-fun d!2296312 () Bool)

(assert (=> d!2296312 (= (tail!14851 s!7951) (t!386730 s!7951))))

(assert (=> b!7445334 d!2296312))

(declare-fun d!2296314 () Bool)

(declare-fun lambda!460599 () Int)

(declare-fun exists!4816 ((Set Context!16816) Int) Bool)

(assert (=> d!2296314 (= (nullableZipper!3153 z!3503) (exists!4816 z!3503 lambda!460599))))

(declare-fun bs!1926640 () Bool)

(assert (= bs!1926640 d!2296314))

(declare-fun m!8054982 () Bool)

(assert (=> bs!1926640 m!8054982))

(assert (=> b!7445333 d!2296314))

(assert (=> b!7445335 d!2296314))

(declare-fun d!2296316 () Bool)

(assert (=> d!2296316 (= (isEmpty!41086 s!7951) (is-Nil!72041 s!7951))))

(assert (=> d!2296278 d!2296316))

(declare-fun bs!1926641 () Bool)

(declare-fun d!2296318 () Bool)

(assert (= bs!1926641 (and d!2296318 d!2296274)))

(declare-fun lambda!460600 () Int)

(assert (=> bs!1926641 (= lambda!460600 lambda!460590)))

(assert (=> d!2296318 (= (inv!92032 setElem!56690) (forall!18242 (exprs!8908 setElem!56690) lambda!460600))))

(declare-fun bs!1926642 () Bool)

(assert (= bs!1926642 d!2296318))

(declare-fun m!8054984 () Bool)

(assert (=> bs!1926642 m!8054984))

(assert (=> setNonEmpty!56690 d!2296318))

(declare-fun d!2296320 () Bool)

(declare-fun res!2987185 () Bool)

(declare-fun e!4445340 () Bool)

(assert (=> d!2296320 (=> res!2987185 e!4445340)))

(assert (=> d!2296320 (= res!2987185 (is-Nil!72040 (exprs!8908 setElem!56684)))))

(assert (=> d!2296320 (= (forall!18242 (exprs!8908 setElem!56684) lambda!460590) e!4445340)))

(declare-fun b!7445386 () Bool)

(declare-fun e!4445341 () Bool)

(assert (=> b!7445386 (= e!4445340 e!4445341)))

(declare-fun res!2987186 () Bool)

(assert (=> b!7445386 (=> (not res!2987186) (not e!4445341))))

(declare-fun dynLambda!29742 (Int Regex!19468) Bool)

(assert (=> b!7445386 (= res!2987186 (dynLambda!29742 lambda!460590 (h!78488 (exprs!8908 setElem!56684))))))

(declare-fun b!7445387 () Bool)

(assert (=> b!7445387 (= e!4445341 (forall!18242 (t!386729 (exprs!8908 setElem!56684)) lambda!460590))))

(assert (= (and d!2296320 (not res!2987185)) b!7445386))

(assert (= (and b!7445386 res!2987186) b!7445387))

(declare-fun b_lambda!287731 () Bool)

(assert (=> (not b_lambda!287731) (not b!7445386)))

(declare-fun m!8054986 () Bool)

(assert (=> b!7445386 m!8054986))

(declare-fun m!8054988 () Bool)

(assert (=> b!7445387 m!8054988))

(assert (=> d!2296274 d!2296320))

(declare-fun d!2296322 () Bool)

(declare-fun c!1377426 () Bool)

(assert (=> d!2296322 (= c!1377426 (isEmpty!41086 (tail!14851 (t!386730 s!7951))))))

(declare-fun e!4445342 () Bool)

(assert (=> d!2296322 (= (matchZipper!3826 (derivationStepZipper!3718 z!3503 (head!15272 (t!386730 s!7951))) (tail!14851 (t!386730 s!7951))) e!4445342)))

(declare-fun b!7445388 () Bool)

(assert (=> b!7445388 (= e!4445342 (nullableZipper!3153 (derivationStepZipper!3718 z!3503 (head!15272 (t!386730 s!7951)))))))

(declare-fun b!7445389 () Bool)

(assert (=> b!7445389 (= e!4445342 (matchZipper!3826 (derivationStepZipper!3718 (derivationStepZipper!3718 z!3503 (head!15272 (t!386730 s!7951))) (head!15272 (tail!14851 (t!386730 s!7951)))) (tail!14851 (tail!14851 (t!386730 s!7951)))))))

(assert (= (and d!2296322 c!1377426) b!7445388))

(assert (= (and d!2296322 (not c!1377426)) b!7445389))

(assert (=> d!2296322 m!8054926))

(declare-fun m!8054990 () Bool)

(assert (=> d!2296322 m!8054990))

(assert (=> b!7445388 m!8054924))

(declare-fun m!8054992 () Bool)

(assert (=> b!7445388 m!8054992))

(assert (=> b!7445389 m!8054926))

(declare-fun m!8054994 () Bool)

(assert (=> b!7445389 m!8054994))

(assert (=> b!7445389 m!8054924))

(assert (=> b!7445389 m!8054994))

(declare-fun m!8054996 () Bool)

(assert (=> b!7445389 m!8054996))

(assert (=> b!7445389 m!8054926))

(declare-fun m!8054998 () Bool)

(assert (=> b!7445389 m!8054998))

(assert (=> b!7445389 m!8054996))

(assert (=> b!7445389 m!8054998))

(declare-fun m!8055000 () Bool)

(assert (=> b!7445389 m!8055000))

(assert (=> b!7445336 d!2296322))

(declare-fun bs!1926643 () Bool)

(declare-fun d!2296324 () Bool)

(assert (= bs!1926643 (and d!2296324 b!7445313)))

(declare-fun lambda!460601 () Int)

(assert (=> bs!1926643 (= (= (head!15272 (t!386730 s!7951)) (h!78489 s!7951)) (= lambda!460601 lambda!460584))))

(declare-fun bs!1926644 () Bool)

(assert (= bs!1926644 (and d!2296324 d!2296308)))

(assert (=> bs!1926644 (= (= (head!15272 (t!386730 s!7951)) (head!15272 s!7951)) (= lambda!460601 lambda!460596))))

(assert (=> d!2296324 true))

(assert (=> d!2296324 (= (derivationStepZipper!3718 z!3503 (head!15272 (t!386730 s!7951))) (flatMap!3244 z!3503 lambda!460601))))

(declare-fun bs!1926645 () Bool)

(assert (= bs!1926645 d!2296324))

(declare-fun m!8055002 () Bool)

(assert (=> bs!1926645 m!8055002))

(assert (=> b!7445336 d!2296324))

(declare-fun d!2296326 () Bool)

(assert (=> d!2296326 (= (head!15272 (t!386730 s!7951)) (h!78489 (t!386730 s!7951)))))

(assert (=> b!7445336 d!2296326))

(declare-fun d!2296328 () Bool)

(assert (=> d!2296328 (= (tail!14851 (t!386730 s!7951)) (t!386730 (t!386730 s!7951)))))

(assert (=> b!7445336 d!2296328))

(declare-fun b!7445390 () Bool)

(declare-fun e!4445343 () Bool)

(declare-fun tp!2154667 () Bool)

(declare-fun tp!2154668 () Bool)

(assert (=> b!7445390 (= e!4445343 (and tp!2154667 tp!2154668))))

(assert (=> b!7445341 (= tp!2154636 e!4445343)))

(assert (= (and b!7445341 (is-Cons!72040 (exprs!8908 setElem!56690))) b!7445390))

(declare-fun b!7445391 () Bool)

(declare-fun e!4445344 () Bool)

(declare-fun tp!2154669 () Bool)

(assert (=> b!7445391 (= e!4445344 (and tp_is_empty!49195 tp!2154669))))

(assert (=> b!7445351 (= tp!2154645 e!4445344)))

(assert (= (and b!7445351 (is-Cons!72041 (t!386730 (t!386730 s!7951)))) b!7445391))

(declare-fun condSetEmpty!56697 () Bool)

(assert (=> setNonEmpty!56690 (= condSetEmpty!56697 (= setRest!56690 (as set.empty (Set Context!16816))))))

(declare-fun setRes!56697 () Bool)

(assert (=> setNonEmpty!56690 (= tp!2154635 setRes!56697)))

(declare-fun setIsEmpty!56697 () Bool)

(assert (=> setIsEmpty!56697 setRes!56697))

(declare-fun e!4445345 () Bool)

(declare-fun setElem!56697 () Context!16816)

(declare-fun tp!2154670 () Bool)

(declare-fun setNonEmpty!56697 () Bool)

(assert (=> setNonEmpty!56697 (= setRes!56697 (and tp!2154670 (inv!92032 setElem!56697) e!4445345))))

(declare-fun setRest!56697 () (Set Context!16816))

(assert (=> setNonEmpty!56697 (= setRest!56690 (set.union (set.insert setElem!56697 (as set.empty (Set Context!16816))) setRest!56697))))

(declare-fun b!7445392 () Bool)

(declare-fun tp!2154671 () Bool)

(assert (=> b!7445392 (= e!4445345 tp!2154671)))

(assert (= (and setNonEmpty!56690 condSetEmpty!56697) setIsEmpty!56697))

(assert (= (and setNonEmpty!56690 (not condSetEmpty!56697)) setNonEmpty!56697))

(assert (= setNonEmpty!56697 b!7445392))

(declare-fun m!8055004 () Bool)

(assert (=> setNonEmpty!56697 m!8055004))

(declare-fun e!4445348 () Bool)

(assert (=> b!7445346 (= tp!2154641 e!4445348)))

(declare-fun b!7445403 () Bool)

(assert (=> b!7445403 (= e!4445348 tp_is_empty!49195)))

(declare-fun b!7445406 () Bool)

(declare-fun tp!2154682 () Bool)

(declare-fun tp!2154685 () Bool)

(assert (=> b!7445406 (= e!4445348 (and tp!2154682 tp!2154685))))

(declare-fun b!7445404 () Bool)

(declare-fun tp!2154683 () Bool)

(declare-fun tp!2154686 () Bool)

(assert (=> b!7445404 (= e!4445348 (and tp!2154683 tp!2154686))))

(declare-fun b!7445405 () Bool)

(declare-fun tp!2154684 () Bool)

(assert (=> b!7445405 (= e!4445348 tp!2154684)))

(assert (= (and b!7445346 (is-ElementMatch!19468 (h!78488 (exprs!8908 setElem!56684)))) b!7445403))

(assert (= (and b!7445346 (is-Concat!28313 (h!78488 (exprs!8908 setElem!56684)))) b!7445404))

(assert (= (and b!7445346 (is-Star!19468 (h!78488 (exprs!8908 setElem!56684)))) b!7445405))

(assert (= (and b!7445346 (is-Union!19468 (h!78488 (exprs!8908 setElem!56684)))) b!7445406))

(declare-fun b!7445407 () Bool)

(declare-fun e!4445349 () Bool)

(declare-fun tp!2154687 () Bool)

(declare-fun tp!2154688 () Bool)

(assert (=> b!7445407 (= e!4445349 (and tp!2154687 tp!2154688))))

(assert (=> b!7445346 (= tp!2154642 e!4445349)))

(assert (= (and b!7445346 (is-Cons!72040 (t!386729 (exprs!8908 setElem!56684)))) b!7445407))

(declare-fun b_lambda!287733 () Bool)

(assert (= b_lambda!287731 (or d!2296274 b_lambda!287733)))

(declare-fun bs!1926646 () Bool)

(declare-fun d!2296330 () Bool)

(assert (= bs!1926646 (and d!2296330 d!2296274)))

(declare-fun validRegex!9985 (Regex!19468) Bool)

(assert (=> bs!1926646 (= (dynLambda!29742 lambda!460590 (h!78488 (exprs!8908 setElem!56684))) (validRegex!9985 (h!78488 (exprs!8908 setElem!56684))))))

(declare-fun m!8055006 () Bool)

(assert (=> bs!1926646 m!8055006))

(assert (=> b!7445386 d!2296330))

(push 1)

(assert (not d!2296318))

(assert (not d!2296304))

(assert (not b_lambda!287733))

(assert (not d!2296306))

(assert tp_is_empty!49195)

(assert (not b!7445391))

(assert (not b!7445390))

(assert (not b!7445363))

(assert (not d!2296300))

(assert (not b!7445407))

(assert (not d!2296322))

(assert (not b!7445392))

(assert (not b!7445404))

(assert (not d!2296314))

(assert (not b!7445405))

(assert (not bs!1926646))

(assert (not b!7445364))

(assert (not b!7445389))

(assert (not setNonEmpty!56697))

(assert (not d!2296308))

(assert (not b!7445362))

(assert (not d!2296324))

(assert (not setNonEmpty!56693))

(assert (not b!7445387))

(assert (not b!7445406))

(assert (not b!7445388))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

