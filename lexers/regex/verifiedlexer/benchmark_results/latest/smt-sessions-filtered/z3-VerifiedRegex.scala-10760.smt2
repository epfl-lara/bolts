; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!549990 () Bool)

(assert start!549990)

(declare-fun b!5198143 () Bool)

(assert (=> b!5198143 true))

(assert (=> b!5198143 true))

(declare-fun lambda!260240 () Int)

(declare-fun lambda!260239 () Int)

(assert (=> b!5198143 (not (= lambda!260240 lambda!260239))))

(assert (=> b!5198143 true))

(assert (=> b!5198143 true))

(declare-fun b!5198144 () Bool)

(assert (=> b!5198144 true))

(declare-fun b!5198125 () Bool)

(declare-fun e!3237148 () Bool)

(declare-fun tp!1458124 () Bool)

(declare-fun tp!1458133 () Bool)

(assert (=> b!5198125 (= e!3237148 (and tp!1458124 tp!1458133))))

(declare-fun b!5198126 () Bool)

(declare-fun e!3237150 () Bool)

(declare-fun tp_is_empty!38787 () Bool)

(declare-fun tp!1458127 () Bool)

(assert (=> b!5198126 (= e!3237150 (and tp_is_empty!38787 tp!1458127))))

(declare-fun b!5198127 () Bool)

(declare-fun tp!1458125 () Bool)

(declare-fun tp!1458132 () Bool)

(assert (=> b!5198127 (= e!3237148 (and tp!1458125 tp!1458132))))

(declare-fun b!5198128 () Bool)

(declare-fun res!2208123 () Bool)

(declare-fun e!3237146 () Bool)

(assert (=> b!5198128 (=> res!2208123 e!3237146)))

(declare-datatypes ((C!29804 0))(
  ( (C!29805 (val!24604 Int)) )
))
(declare-datatypes ((Regex!14767 0))(
  ( (ElementMatch!14767 (c!895964 C!29804)) (Concat!23612 (regOne!30046 Regex!14767) (regTwo!30046 Regex!14767)) (EmptyExpr!14767) (Star!14767 (reg!15096 Regex!14767)) (EmptyLang!14767) (Union!14767 (regOne!30047 Regex!14767) (regTwo!30047 Regex!14767)) )
))
(declare-datatypes ((List!60600 0))(
  ( (Nil!60476) (Cons!60476 (h!66924 Regex!14767) (t!373753 List!60600)) )
))
(declare-datatypes ((Context!8302 0))(
  ( (Context!8303 (exprs!4651 List!60600)) )
))
(declare-datatypes ((List!60601 0))(
  ( (Nil!60477) (Cons!60477 (h!66925 Context!8302) (t!373754 List!60601)) )
))
(declare-fun zl!343 () List!60601)

(get-info :version)

(assert (=> b!5198128 (= res!2208123 (not ((_ is Cons!60476) (exprs!4651 (h!66925 zl!343)))))))

(declare-fun setElem!32926 () Context!8302)

(declare-fun setNonEmpty!32926 () Bool)

(declare-fun setRes!32926 () Bool)

(declare-fun e!3237151 () Bool)

(declare-fun tp!1458131 () Bool)

(declare-fun inv!80164 (Context!8302) Bool)

(assert (=> setNonEmpty!32926 (= setRes!32926 (and tp!1458131 (inv!80164 setElem!32926) e!3237151))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8302))

(declare-fun setRest!32926 () (InoxSet Context!8302))

(assert (=> setNonEmpty!32926 (= z!1189 ((_ map or) (store ((as const (Array Context!8302 Bool)) false) setElem!32926 true) setRest!32926))))

(declare-fun b!5198129 () Bool)

(declare-fun res!2208115 () Bool)

(declare-fun e!3237143 () Bool)

(assert (=> b!5198129 (=> res!2208115 e!3237143)))

(declare-fun lt!2139545 () (InoxSet Context!8302))

(declare-fun lt!2139559 () List!60601)

(declare-fun toList!8551 ((InoxSet Context!8302)) List!60601)

(assert (=> b!5198129 (= res!2208115 (not (= (toList!8551 lt!2139545) lt!2139559)))))

(declare-fun b!5198130 () Bool)

(declare-fun tp!1458126 () Bool)

(assert (=> b!5198130 (= e!3237151 tp!1458126)))

(declare-fun b!5198131 () Bool)

(declare-fun res!2208134 () Bool)

(declare-fun e!3237152 () Bool)

(assert (=> b!5198131 (=> (not res!2208134) (not e!3237152))))

(assert (=> b!5198131 (= res!2208134 (= (toList!8551 z!1189) zl!343))))

(declare-fun b!5198133 () Bool)

(declare-fun res!2208133 () Bool)

(declare-fun e!3237147 () Bool)

(assert (=> b!5198133 (=> res!2208133 e!3237147)))

(declare-fun lt!2139537 () Context!8302)

(declare-fun lt!2139561 () Int)

(declare-fun contextDepth!2 (Context!8302) Int)

(assert (=> b!5198133 (= res!2208133 (>= (contextDepth!2 lt!2139537) lt!2139561))))

(declare-fun b!5198134 () Bool)

(declare-fun e!3237141 () Bool)

(assert (=> b!5198134 (= e!3237141 e!3237147)))

(declare-fun res!2208126 () Bool)

(assert (=> b!5198134 (=> res!2208126 e!3237147)))

(declare-fun lt!2139553 () Int)

(declare-fun lt!2139550 () Int)

(assert (=> b!5198134 (= res!2208126 (>= lt!2139553 lt!2139550))))

(declare-fun lt!2139558 () Context!8302)

(declare-fun zipperDepth!2 (List!60601) Int)

(assert (=> b!5198134 (= lt!2139550 (zipperDepth!2 (Cons!60477 lt!2139558 Nil!60477)))))

(assert (=> b!5198134 (= lt!2139553 (zipperDepth!2 lt!2139559))))

(declare-fun lt!2139532 () Context!8302)

(assert (=> b!5198134 (= lt!2139559 (Cons!60477 lt!2139532 Nil!60477))))

(declare-fun b!5198135 () Bool)

(declare-fun e!3237145 () Bool)

(declare-fun e!3237153 () Bool)

(assert (=> b!5198135 (= e!3237145 e!3237153)))

(declare-fun res!2208129 () Bool)

(assert (=> b!5198135 (=> res!2208129 e!3237153)))

(declare-fun r!7292 () Regex!14767)

(declare-fun nullable!4938 (Regex!14767) Bool)

(assert (=> b!5198135 (= res!2208129 (not (nullable!4938 (regOne!30046 r!7292))))))

(declare-datatypes ((List!60602 0))(
  ( (Nil!60478) (Cons!60478 (h!66926 C!29804) (t!373755 List!60602)) )
))
(declare-fun s!2326 () List!60602)

(declare-fun lt!2139541 () (InoxSet Context!8302))

(declare-fun lt!2139560 () Context!8302)

(declare-fun derivationStepZipperDown!216 (Regex!14767 Context!8302 C!29804) (InoxSet Context!8302))

(assert (=> b!5198135 (= lt!2139541 (derivationStepZipperDown!216 (regTwo!30046 r!7292) lt!2139560 (h!66926 s!2326)))))

(declare-fun lt!2139554 () (InoxSet Context!8302))

(assert (=> b!5198135 (= lt!2139554 (derivationStepZipperDown!216 (regOne!30046 r!7292) lt!2139537 (h!66926 s!2326)))))

(declare-fun lambda!260241 () Int)

(declare-fun lt!2139557 () (InoxSet Context!8302))

(declare-fun flatMap!498 ((InoxSet Context!8302) Int) (InoxSet Context!8302))

(declare-fun derivationStepZipperUp!139 (Context!8302 C!29804) (InoxSet Context!8302))

(assert (=> b!5198135 (= (flatMap!498 lt!2139557 lambda!260241) (derivationStepZipperUp!139 lt!2139537 (h!66926 s!2326)))))

(declare-datatypes ((Unit!152368 0))(
  ( (Unit!152369) )
))
(declare-fun lt!2139543 () Unit!152368)

(declare-fun lemmaFlatMapOnSingletonSet!30 ((InoxSet Context!8302) Context!8302 Int) Unit!152368)

(assert (=> b!5198135 (= lt!2139543 (lemmaFlatMapOnSingletonSet!30 lt!2139557 lt!2139537 lambda!260241))))

(assert (=> b!5198135 (= (flatMap!498 lt!2139545 lambda!260241) (derivationStepZipperUp!139 lt!2139532 (h!66926 s!2326)))))

(declare-fun lt!2139540 () Unit!152368)

(assert (=> b!5198135 (= lt!2139540 (lemmaFlatMapOnSingletonSet!30 lt!2139545 lt!2139532 lambda!260241))))

(declare-fun lt!2139552 () (InoxSet Context!8302))

(assert (=> b!5198135 (= lt!2139552 (derivationStepZipperUp!139 lt!2139537 (h!66926 s!2326)))))

(declare-fun lt!2139535 () (InoxSet Context!8302))

(assert (=> b!5198135 (= lt!2139535 (derivationStepZipperUp!139 lt!2139532 (h!66926 s!2326)))))

(assert (=> b!5198135 (= lt!2139557 (store ((as const (Array Context!8302 Bool)) false) lt!2139537 true))))

(declare-fun lt!2139544 () List!60600)

(assert (=> b!5198135 (= lt!2139537 (Context!8303 lt!2139544))))

(assert (=> b!5198135 (= lt!2139545 (store ((as const (Array Context!8302 Bool)) false) lt!2139532 true))))

(assert (=> b!5198135 (= lt!2139532 (Context!8303 (Cons!60476 (regOne!30046 r!7292) lt!2139544)))))

(assert (=> b!5198135 (= lt!2139544 (Cons!60476 (regTwo!30046 r!7292) Nil!60476))))

(declare-fun b!5198136 () Bool)

(assert (=> b!5198136 (= e!3237143 true)))

(declare-fun lt!2139539 () Regex!14767)

(declare-fun unfocusZipper!509 (List!60601) Regex!14767)

(assert (=> b!5198136 (= lt!2139539 (unfocusZipper!509 lt!2139559))))

(declare-fun e!3237154 () Bool)

(declare-fun b!5198137 () Bool)

(declare-fun e!3237140 () Bool)

(declare-fun tp!1458128 () Bool)

(assert (=> b!5198137 (= e!3237154 (and (inv!80164 (h!66925 zl!343)) e!3237140 tp!1458128))))

(declare-fun b!5198138 () Bool)

(declare-fun res!2208111 () Bool)

(assert (=> b!5198138 (=> res!2208111 e!3237146)))

(declare-fun isEmpty!32394 (List!60601) Bool)

(assert (=> b!5198138 (= res!2208111 (not (isEmpty!32394 (t!373754 zl!343))))))

(declare-fun setIsEmpty!32926 () Bool)

(assert (=> setIsEmpty!32926 setRes!32926))

(declare-fun b!5198139 () Bool)

(assert (=> b!5198139 (= e!3237148 tp_is_empty!38787)))

(declare-fun b!5198140 () Bool)

(declare-fun e!3237144 () Bool)

(declare-fun matchZipper!1019 ((InoxSet Context!8302) List!60602) Bool)

(assert (=> b!5198140 (= e!3237144 (matchZipper!1019 lt!2139541 (t!373755 s!2326)))))

(declare-fun b!5198141 () Bool)

(declare-fun res!2208110 () Bool)

(declare-fun e!3237149 () Bool)

(assert (=> b!5198141 (=> res!2208110 e!3237149)))

(declare-fun lt!2139529 () (InoxSet Context!8302))

(declare-fun lt!2139528 () (InoxSet Context!8302))

(assert (=> b!5198141 (= res!2208110 (or (not (= lt!2139535 ((_ map or) lt!2139554 lt!2139552))) (not (= lt!2139535 lt!2139528)) (not (= lt!2139535 lt!2139529))))))

(declare-fun b!5198142 () Bool)

(declare-fun tp!1458130 () Bool)

(assert (=> b!5198142 (= e!3237140 tp!1458130)))

(declare-fun e!3237155 () Bool)

(assert (=> b!5198143 (= e!3237146 e!3237155)))

(declare-fun res!2208132 () Bool)

(assert (=> b!5198143 (=> res!2208132 e!3237155)))

(declare-fun lt!2139556 () Bool)

(declare-fun lt!2139533 () Bool)

(assert (=> b!5198143 (= res!2208132 (or (not (= lt!2139533 lt!2139556)) ((_ is Nil!60478) s!2326)))))

(declare-fun Exists!1948 (Int) Bool)

(assert (=> b!5198143 (= (Exists!1948 lambda!260239) (Exists!1948 lambda!260240))))

(declare-fun lt!2139536 () Unit!152368)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!602 (Regex!14767 Regex!14767 List!60602) Unit!152368)

(assert (=> b!5198143 (= lt!2139536 (lemmaExistCutMatchRandMatchRSpecEquivalent!602 (regOne!30046 r!7292) (regTwo!30046 r!7292) s!2326))))

(assert (=> b!5198143 (= lt!2139556 (Exists!1948 lambda!260239))))

(declare-datatypes ((tuple2!63932 0))(
  ( (tuple2!63933 (_1!35269 List!60602) (_2!35269 List!60602)) )
))
(declare-datatypes ((Option!14878 0))(
  ( (None!14877) (Some!14877 (v!50906 tuple2!63932)) )
))
(declare-fun isDefined!11581 (Option!14878) Bool)

(declare-fun findConcatSeparation!1292 (Regex!14767 Regex!14767 List!60602 List!60602 List!60602) Option!14878)

(assert (=> b!5198143 (= lt!2139556 (isDefined!11581 (findConcatSeparation!1292 (regOne!30046 r!7292) (regTwo!30046 r!7292) Nil!60478 s!2326 s!2326)))))

(declare-fun lt!2139538 () Unit!152368)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1056 (Regex!14767 Regex!14767 List!60602) Unit!152368)

(assert (=> b!5198143 (= lt!2139538 (lemmaFindConcatSeparationEquivalentToExists!1056 (regOne!30046 r!7292) (regTwo!30046 r!7292) s!2326))))

(declare-fun e!3237139 () Bool)

(assert (=> b!5198144 (= e!3237139 e!3237145)))

(declare-fun res!2208116 () Bool)

(assert (=> b!5198144 (=> res!2208116 e!3237145)))

(declare-fun lt!2139549 () (InoxSet Context!8302))

(assert (=> b!5198144 (= res!2208116 (not (= lt!2139529 lt!2139549)))))

(assert (=> b!5198144 (= (flatMap!498 z!1189 lambda!260241) (derivationStepZipperUp!139 (h!66925 zl!343) (h!66926 s!2326)))))

(declare-fun lt!2139555 () Unit!152368)

(assert (=> b!5198144 (= lt!2139555 (lemmaFlatMapOnSingletonSet!30 z!1189 (h!66925 zl!343) lambda!260241))))

(declare-fun b!5198145 () Bool)

(assert (=> b!5198145 (= e!3237155 e!3237139)))

(declare-fun res!2208119 () Bool)

(assert (=> b!5198145 (=> res!2208119 e!3237139)))

(declare-fun lt!2139530 () (InoxSet Context!8302))

(assert (=> b!5198145 (= res!2208119 (not (= lt!2139530 lt!2139549)))))

(assert (=> b!5198145 (= lt!2139549 (derivationStepZipperDown!216 r!7292 lt!2139560 (h!66926 s!2326)))))

(assert (=> b!5198145 (= lt!2139560 (Context!8303 Nil!60476))))

(assert (=> b!5198145 (= lt!2139530 (derivationStepZipperUp!139 lt!2139558 (h!66926 s!2326)))))

(assert (=> b!5198145 (= lt!2139558 (Context!8303 (Cons!60476 r!7292 Nil!60476)))))

(declare-fun derivationStepZipper!1047 ((InoxSet Context!8302) C!29804) (InoxSet Context!8302))

(assert (=> b!5198145 (= lt!2139529 (derivationStepZipper!1047 z!1189 (h!66926 s!2326)))))

(declare-fun b!5198146 () Bool)

(declare-fun e!3237142 () Bool)

(assert (=> b!5198146 (= e!3237153 e!3237142)))

(declare-fun res!2208113 () Bool)

(assert (=> b!5198146 (=> res!2208113 e!3237142)))

(assert (=> b!5198146 (= res!2208113 (not (= lt!2139529 lt!2139528)))))

(assert (=> b!5198146 (= lt!2139528 ((_ map or) lt!2139554 lt!2139541))))

(declare-fun b!5198132 () Bool)

(declare-fun res!2208125 () Bool)

(assert (=> b!5198132 (=> res!2208125 e!3237155)))

(declare-fun isEmpty!32395 (List!60600) Bool)

(assert (=> b!5198132 (= res!2208125 (not (isEmpty!32395 (t!373753 (exprs!4651 (h!66925 zl!343))))))))

(declare-fun res!2208118 () Bool)

(assert (=> start!549990 (=> (not res!2208118) (not e!3237152))))

(declare-fun validRegex!6503 (Regex!14767) Bool)

(assert (=> start!549990 (= res!2208118 (validRegex!6503 r!7292))))

(assert (=> start!549990 e!3237152))

(assert (=> start!549990 e!3237148))

(declare-fun condSetEmpty!32926 () Bool)

(assert (=> start!549990 (= condSetEmpty!32926 (= z!1189 ((as const (Array Context!8302 Bool)) false)))))

(assert (=> start!549990 setRes!32926))

(assert (=> start!549990 e!3237154))

(assert (=> start!549990 e!3237150))

(declare-fun b!5198147 () Bool)

(declare-fun tp!1458129 () Bool)

(assert (=> b!5198147 (= e!3237148 tp!1458129)))

(declare-fun b!5198148 () Bool)

(declare-fun res!2208127 () Bool)

(assert (=> b!5198148 (=> res!2208127 e!3237146)))

(declare-fun generalisedUnion!696 (List!60600) Regex!14767)

(declare-fun unfocusZipperList!209 (List!60601) List!60600)

(assert (=> b!5198148 (= res!2208127 (not (= r!7292 (generalisedUnion!696 (unfocusZipperList!209 zl!343)))))))

(declare-fun b!5198149 () Bool)

(assert (=> b!5198149 (= e!3237147 e!3237143)))

(declare-fun res!2208131 () Bool)

(assert (=> b!5198149 (=> res!2208131 e!3237143)))

(declare-fun lt!2139547 () Regex!14767)

(declare-fun regexDepth!147 (Regex!14767) Int)

(assert (=> b!5198149 (= res!2208131 (not (= (regexDepth!147 r!7292) (regexDepth!147 lt!2139547))))))

(assert (=> b!5198149 (= lt!2139547 (Concat!23612 (regOne!30046 r!7292) (regTwo!30046 r!7292)))))

(declare-fun b!5198150 () Bool)

(assert (=> b!5198150 (= e!3237149 e!3237141)))

(declare-fun res!2208120 () Bool)

(assert (=> b!5198150 (=> res!2208120 e!3237141)))

(declare-fun lt!2139548 () Int)

(assert (=> b!5198150 (= res!2208120 (>= lt!2139548 lt!2139561))))

(assert (=> b!5198150 (= lt!2139561 (contextDepth!2 lt!2139558))))

(assert (=> b!5198150 (= lt!2139548 (contextDepth!2 lt!2139532))))

(declare-fun b!5198151 () Bool)

(declare-fun res!2208128 () Bool)

(assert (=> b!5198151 (=> res!2208128 e!3237147)))

(assert (=> b!5198151 (= res!2208128 (>= (zipperDepth!2 (Cons!60477 lt!2139537 Nil!60477)) lt!2139550))))

(declare-fun b!5198152 () Bool)

(declare-fun res!2208130 () Bool)

(assert (=> b!5198152 (=> res!2208130 e!3237149)))

(assert (=> b!5198152 (= res!2208130 (not (= (matchZipper!1019 lt!2139557 s!2326) (matchZipper!1019 (derivationStepZipper!1047 lt!2139557 (h!66926 s!2326)) (t!373755 s!2326)))))))

(declare-fun b!5198153 () Bool)

(declare-fun res!2208117 () Bool)

(assert (=> b!5198153 (=> res!2208117 e!3237146)))

(declare-fun generalisedConcat!436 (List!60600) Regex!14767)

(assert (=> b!5198153 (= res!2208117 (not (= r!7292 (generalisedConcat!436 (exprs!4651 (h!66925 zl!343))))))))

(declare-fun b!5198154 () Bool)

(assert (=> b!5198154 (= e!3237142 e!3237149)))

(declare-fun res!2208124 () Bool)

(assert (=> b!5198154 (=> res!2208124 e!3237149)))

(declare-fun lt!2139534 () Bool)

(assert (=> b!5198154 (= res!2208124 (not (= lt!2139534 (matchZipper!1019 lt!2139529 (t!373755 s!2326)))))))

(declare-fun lt!2139531 () Bool)

(assert (=> b!5198154 (= lt!2139531 lt!2139534)))

(assert (=> b!5198154 (= lt!2139534 e!3237144)))

(declare-fun res!2208122 () Bool)

(assert (=> b!5198154 (=> res!2208122 e!3237144)))

(declare-fun lt!2139546 () Bool)

(assert (=> b!5198154 (= res!2208122 lt!2139546)))

(assert (=> b!5198154 (= lt!2139531 (matchZipper!1019 lt!2139528 (t!373755 s!2326)))))

(assert (=> b!5198154 (= lt!2139546 (matchZipper!1019 lt!2139554 (t!373755 s!2326)))))

(declare-fun lt!2139542 () Unit!152368)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!16 ((InoxSet Context!8302) (InoxSet Context!8302) List!60602) Unit!152368)

(assert (=> b!5198154 (= lt!2139542 (lemmaZipperConcatMatchesSameAsBothZippers!16 lt!2139554 lt!2139541 (t!373755 s!2326)))))

(declare-fun b!5198155 () Bool)

(declare-fun res!2208108 () Bool)

(assert (=> b!5198155 (=> res!2208108 e!3237149)))

(assert (=> b!5198155 (= res!2208108 (not (= (matchZipper!1019 lt!2139545 s!2326) (matchZipper!1019 (derivationStepZipper!1047 lt!2139545 (h!66926 s!2326)) (t!373755 s!2326)))))))

(declare-fun b!5198156 () Bool)

(declare-fun res!2208114 () Bool)

(assert (=> b!5198156 (=> (not res!2208114) (not e!3237152))))

(assert (=> b!5198156 (= res!2208114 (= r!7292 (unfocusZipper!509 zl!343)))))

(declare-fun b!5198157 () Bool)

(declare-fun res!2208112 () Bool)

(assert (=> b!5198157 (=> res!2208112 e!3237143)))

(assert (=> b!5198157 (= res!2208112 (not (validRegex!6503 lt!2139547)))))

(declare-fun b!5198158 () Bool)

(assert (=> b!5198158 (= e!3237152 (not e!3237146))))

(declare-fun res!2208121 () Bool)

(assert (=> b!5198158 (=> res!2208121 e!3237146)))

(assert (=> b!5198158 (= res!2208121 (not ((_ is Cons!60477) zl!343)))))

(declare-fun matchRSpec!1870 (Regex!14767 List!60602) Bool)

(assert (=> b!5198158 (= lt!2139533 (matchRSpec!1870 r!7292 s!2326))))

(declare-fun matchR!6952 (Regex!14767 List!60602) Bool)

(assert (=> b!5198158 (= lt!2139533 (matchR!6952 r!7292 s!2326))))

(declare-fun lt!2139551 () Unit!152368)

(declare-fun mainMatchTheorem!1870 (Regex!14767 List!60602) Unit!152368)

(assert (=> b!5198158 (= lt!2139551 (mainMatchTheorem!1870 r!7292 s!2326))))

(declare-fun b!5198159 () Bool)

(declare-fun res!2208109 () Bool)

(assert (=> b!5198159 (=> res!2208109 e!3237146)))

(assert (=> b!5198159 (= res!2208109 (or ((_ is EmptyExpr!14767) r!7292) ((_ is EmptyLang!14767) r!7292) ((_ is ElementMatch!14767) r!7292) ((_ is Union!14767) r!7292) (not ((_ is Concat!23612) r!7292))))))

(assert (= (and start!549990 res!2208118) b!5198131))

(assert (= (and b!5198131 res!2208134) b!5198156))

(assert (= (and b!5198156 res!2208114) b!5198158))

(assert (= (and b!5198158 (not res!2208121)) b!5198138))

(assert (= (and b!5198138 (not res!2208111)) b!5198153))

(assert (= (and b!5198153 (not res!2208117)) b!5198128))

(assert (= (and b!5198128 (not res!2208123)) b!5198148))

(assert (= (and b!5198148 (not res!2208127)) b!5198159))

(assert (= (and b!5198159 (not res!2208109)) b!5198143))

(assert (= (and b!5198143 (not res!2208132)) b!5198132))

(assert (= (and b!5198132 (not res!2208125)) b!5198145))

(assert (= (and b!5198145 (not res!2208119)) b!5198144))

(assert (= (and b!5198144 (not res!2208116)) b!5198135))

(assert (= (and b!5198135 (not res!2208129)) b!5198146))

(assert (= (and b!5198146 (not res!2208113)) b!5198154))

(assert (= (and b!5198154 (not res!2208122)) b!5198140))

(assert (= (and b!5198154 (not res!2208124)) b!5198141))

(assert (= (and b!5198141 (not res!2208110)) b!5198155))

(assert (= (and b!5198155 (not res!2208108)) b!5198152))

(assert (= (and b!5198152 (not res!2208130)) b!5198150))

(assert (= (and b!5198150 (not res!2208120)) b!5198134))

(assert (= (and b!5198134 (not res!2208126)) b!5198133))

(assert (= (and b!5198133 (not res!2208133)) b!5198151))

(assert (= (and b!5198151 (not res!2208128)) b!5198149))

(assert (= (and b!5198149 (not res!2208131)) b!5198157))

(assert (= (and b!5198157 (not res!2208112)) b!5198129))

(assert (= (and b!5198129 (not res!2208115)) b!5198136))

(assert (= (and start!549990 ((_ is ElementMatch!14767) r!7292)) b!5198139))

(assert (= (and start!549990 ((_ is Concat!23612) r!7292)) b!5198127))

(assert (= (and start!549990 ((_ is Star!14767) r!7292)) b!5198147))

(assert (= (and start!549990 ((_ is Union!14767) r!7292)) b!5198125))

(assert (= (and start!549990 condSetEmpty!32926) setIsEmpty!32926))

(assert (= (and start!549990 (not condSetEmpty!32926)) setNonEmpty!32926))

(assert (= setNonEmpty!32926 b!5198130))

(assert (= b!5198137 b!5198142))

(assert (= (and start!549990 ((_ is Cons!60477) zl!343)) b!5198137))

(assert (= (and start!549990 ((_ is Cons!60478) s!2326)) b!5198126))

(declare-fun m!6251418 () Bool)

(assert (=> b!5198153 m!6251418))

(declare-fun m!6251420 () Bool)

(assert (=> b!5198148 m!6251420))

(assert (=> b!5198148 m!6251420))

(declare-fun m!6251422 () Bool)

(assert (=> b!5198148 m!6251422))

(declare-fun m!6251424 () Bool)

(assert (=> b!5198131 m!6251424))

(declare-fun m!6251426 () Bool)

(assert (=> b!5198158 m!6251426))

(declare-fun m!6251428 () Bool)

(assert (=> b!5198158 m!6251428))

(declare-fun m!6251430 () Bool)

(assert (=> b!5198158 m!6251430))

(declare-fun m!6251432 () Bool)

(assert (=> b!5198132 m!6251432))

(declare-fun m!6251434 () Bool)

(assert (=> b!5198140 m!6251434))

(declare-fun m!6251436 () Bool)

(assert (=> b!5198157 m!6251436))

(declare-fun m!6251438 () Bool)

(assert (=> b!5198143 m!6251438))

(declare-fun m!6251440 () Bool)

(assert (=> b!5198143 m!6251440))

(declare-fun m!6251442 () Bool)

(assert (=> b!5198143 m!6251442))

(declare-fun m!6251444 () Bool)

(assert (=> b!5198143 m!6251444))

(declare-fun m!6251446 () Bool)

(assert (=> b!5198143 m!6251446))

(assert (=> b!5198143 m!6251444))

(assert (=> b!5198143 m!6251440))

(declare-fun m!6251448 () Bool)

(assert (=> b!5198143 m!6251448))

(declare-fun m!6251450 () Bool)

(assert (=> start!549990 m!6251450))

(declare-fun m!6251452 () Bool)

(assert (=> setNonEmpty!32926 m!6251452))

(declare-fun m!6251454 () Bool)

(assert (=> b!5198154 m!6251454))

(declare-fun m!6251456 () Bool)

(assert (=> b!5198154 m!6251456))

(declare-fun m!6251458 () Bool)

(assert (=> b!5198154 m!6251458))

(declare-fun m!6251460 () Bool)

(assert (=> b!5198154 m!6251460))

(declare-fun m!6251462 () Bool)

(assert (=> b!5198135 m!6251462))

(declare-fun m!6251464 () Bool)

(assert (=> b!5198135 m!6251464))

(declare-fun m!6251466 () Bool)

(assert (=> b!5198135 m!6251466))

(declare-fun m!6251468 () Bool)

(assert (=> b!5198135 m!6251468))

(declare-fun m!6251470 () Bool)

(assert (=> b!5198135 m!6251470))

(declare-fun m!6251472 () Bool)

(assert (=> b!5198135 m!6251472))

(declare-fun m!6251474 () Bool)

(assert (=> b!5198135 m!6251474))

(declare-fun m!6251476 () Bool)

(assert (=> b!5198135 m!6251476))

(declare-fun m!6251478 () Bool)

(assert (=> b!5198135 m!6251478))

(declare-fun m!6251480 () Bool)

(assert (=> b!5198135 m!6251480))

(declare-fun m!6251482 () Bool)

(assert (=> b!5198135 m!6251482))

(declare-fun m!6251484 () Bool)

(assert (=> b!5198149 m!6251484))

(declare-fun m!6251486 () Bool)

(assert (=> b!5198149 m!6251486))

(declare-fun m!6251488 () Bool)

(assert (=> b!5198137 m!6251488))

(declare-fun m!6251490 () Bool)

(assert (=> b!5198129 m!6251490))

(declare-fun m!6251492 () Bool)

(assert (=> b!5198144 m!6251492))

(declare-fun m!6251494 () Bool)

(assert (=> b!5198144 m!6251494))

(declare-fun m!6251496 () Bool)

(assert (=> b!5198144 m!6251496))

(declare-fun m!6251498 () Bool)

(assert (=> b!5198136 m!6251498))

(declare-fun m!6251500 () Bool)

(assert (=> b!5198134 m!6251500))

(declare-fun m!6251502 () Bool)

(assert (=> b!5198134 m!6251502))

(declare-fun m!6251504 () Bool)

(assert (=> b!5198150 m!6251504))

(declare-fun m!6251506 () Bool)

(assert (=> b!5198150 m!6251506))

(declare-fun m!6251508 () Bool)

(assert (=> b!5198133 m!6251508))

(declare-fun m!6251510 () Bool)

(assert (=> b!5198156 m!6251510))

(declare-fun m!6251512 () Bool)

(assert (=> b!5198151 m!6251512))

(declare-fun m!6251514 () Bool)

(assert (=> b!5198145 m!6251514))

(declare-fun m!6251516 () Bool)

(assert (=> b!5198145 m!6251516))

(declare-fun m!6251518 () Bool)

(assert (=> b!5198145 m!6251518))

(declare-fun m!6251520 () Bool)

(assert (=> b!5198138 m!6251520))

(declare-fun m!6251522 () Bool)

(assert (=> b!5198152 m!6251522))

(declare-fun m!6251524 () Bool)

(assert (=> b!5198152 m!6251524))

(assert (=> b!5198152 m!6251524))

(declare-fun m!6251526 () Bool)

(assert (=> b!5198152 m!6251526))

(declare-fun m!6251528 () Bool)

(assert (=> b!5198155 m!6251528))

(declare-fun m!6251530 () Bool)

(assert (=> b!5198155 m!6251530))

(assert (=> b!5198155 m!6251530))

(declare-fun m!6251532 () Bool)

(assert (=> b!5198155 m!6251532))

(check-sat (not b!5198130) (not setNonEmpty!32926) (not b!5198133) (not b!5198138) (not b!5198156) (not b!5198125) (not b!5198150) (not b!5198131) tp_is_empty!38787 (not b!5198145) (not b!5198149) (not b!5198152) (not b!5198148) (not b!5198158) (not b!5198147) (not start!549990) (not b!5198135) (not b!5198136) (not b!5198142) (not b!5198132) (not b!5198129) (not b!5198155) (not b!5198134) (not b!5198137) (not b!5198143) (not b!5198126) (not b!5198140) (not b!5198151) (not b!5198127) (not b!5198144) (not b!5198154) (not b!5198157) (not b!5198153))
(check-sat)
