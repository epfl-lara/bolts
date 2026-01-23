; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!616540 () Bool)

(assert start!616540)

(declare-fun b!6176607 () Bool)

(assert (=> b!6176607 true))

(assert (=> b!6176607 true))

(declare-fun lambda!337207 () Int)

(declare-fun lambda!337206 () Int)

(assert (=> b!6176607 (not (= lambda!337207 lambda!337206))))

(assert (=> b!6176607 true))

(assert (=> b!6176607 true))

(declare-fun b!6176614 () Bool)

(assert (=> b!6176614 true))

(declare-fun res!2556347 () Bool)

(declare-fun e!3762311 () Bool)

(assert (=> start!616540 (=> (not res!2556347) (not e!3762311))))

(declare-datatypes ((C!32502 0))(
  ( (C!32503 (val!25953 Int)) )
))
(declare-datatypes ((Regex!16116 0))(
  ( (ElementMatch!16116 (c!1113407 C!32502)) (Concat!24961 (regOne!32744 Regex!16116) (regTwo!32744 Regex!16116)) (EmptyExpr!16116) (Star!16116 (reg!16445 Regex!16116)) (EmptyLang!16116) (Union!16116 (regOne!32745 Regex!16116) (regTwo!32745 Regex!16116)) )
))
(declare-fun r!7292 () Regex!16116)

(declare-fun validRegex!7852 (Regex!16116) Bool)

(assert (=> start!616540 (= res!2556347 (validRegex!7852 r!7292))))

(assert (=> start!616540 e!3762311))

(declare-fun e!3762320 () Bool)

(assert (=> start!616540 e!3762320))

(declare-fun condSetEmpty!41885 () Bool)

(declare-datatypes ((List!64647 0))(
  ( (Nil!64523) (Cons!64523 (h!70971 Regex!16116) (t!378153 List!64647)) )
))
(declare-datatypes ((Context!11000 0))(
  ( (Context!11001 (exprs!6000 List!64647)) )
))
(declare-fun z!1189 () (Set Context!11000))

(assert (=> start!616540 (= condSetEmpty!41885 (= z!1189 (as set.empty (Set Context!11000))))))

(declare-fun setRes!41885 () Bool)

(assert (=> start!616540 setRes!41885))

(declare-fun e!3762327 () Bool)

(assert (=> start!616540 e!3762327))

(declare-fun e!3762314 () Bool)

(assert (=> start!616540 e!3762314))

(declare-fun b!6176595 () Bool)

(declare-datatypes ((Unit!157707 0))(
  ( (Unit!157708) )
))
(declare-fun e!3762324 () Unit!157707)

(declare-fun Unit!157709 () Unit!157707)

(assert (=> b!6176595 (= e!3762324 Unit!157709)))

(declare-fun b!6176596 () Bool)

(declare-fun e!3762323 () Bool)

(assert (=> b!6176596 (= e!3762311 e!3762323)))

(declare-fun res!2556350 () Bool)

(assert (=> b!6176596 (=> (not res!2556350) (not e!3762323))))

(declare-fun lt!2338216 () Regex!16116)

(assert (=> b!6176596 (= res!2556350 (= r!7292 lt!2338216))))

(declare-datatypes ((List!64648 0))(
  ( (Nil!64524) (Cons!64524 (h!70972 Context!11000) (t!378154 List!64648)) )
))
(declare-fun zl!343 () List!64648)

(declare-fun unfocusZipper!1858 (List!64648) Regex!16116)

(assert (=> b!6176596 (= lt!2338216 (unfocusZipper!1858 zl!343))))

(declare-fun b!6176597 () Bool)

(declare-fun Unit!157710 () Unit!157707)

(assert (=> b!6176597 (= e!3762324 Unit!157710)))

(declare-datatypes ((List!64649 0))(
  ( (Nil!64525) (Cons!64525 (h!70973 C!32502) (t!378155 List!64649)) )
))
(declare-fun s!2326 () List!64649)

(declare-fun lt!2338187 () Unit!157707)

(declare-fun lt!2338194 () (Set Context!11000))

(declare-fun lt!2338207 () (Set Context!11000))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!947 ((Set Context!11000) (Set Context!11000) List!64649) Unit!157707)

(assert (=> b!6176597 (= lt!2338187 (lemmaZipperConcatMatchesSameAsBothZippers!947 lt!2338194 lt!2338207 (t!378155 s!2326)))))

(declare-fun res!2556346 () Bool)

(declare-fun matchZipper!2128 ((Set Context!11000) List!64649) Bool)

(assert (=> b!6176597 (= res!2556346 (matchZipper!2128 lt!2338194 (t!378155 s!2326)))))

(declare-fun e!3762313 () Bool)

(assert (=> b!6176597 (=> res!2556346 e!3762313)))

(assert (=> b!6176597 (= (matchZipper!2128 (set.union lt!2338194 lt!2338207) (t!378155 s!2326)) e!3762313)))

(declare-fun b!6176598 () Bool)

(declare-fun res!2556367 () Bool)

(declare-fun e!3762321 () Bool)

(assert (=> b!6176598 (=> res!2556367 e!3762321)))

(assert (=> b!6176598 (= res!2556367 (or (is-EmptyExpr!16116 r!7292) (is-EmptyLang!16116 r!7292) (is-ElementMatch!16116 r!7292) (is-Union!16116 r!7292) (not (is-Concat!24961 r!7292))))))

(declare-fun b!6176599 () Bool)

(declare-fun e!3762316 () Bool)

(declare-fun tp!1724288 () Bool)

(assert (=> b!6176599 (= e!3762316 tp!1724288)))

(declare-fun b!6176600 () Bool)

(declare-fun e!3762319 () Bool)

(declare-fun e!3762307 () Bool)

(assert (=> b!6176600 (= e!3762319 e!3762307)))

(declare-fun res!2556369 () Bool)

(assert (=> b!6176600 (=> res!2556369 e!3762307)))

(declare-fun lt!2338189 () Int)

(declare-fun lt!2338222 () Int)

(assert (=> b!6176600 (= res!2556369 (>= lt!2338189 lt!2338222))))

(declare-fun zipperDepthTotal!299 (List!64648) Int)

(assert (=> b!6176600 (= lt!2338222 (zipperDepthTotal!299 zl!343))))

(declare-fun lt!2338215 () List!64648)

(assert (=> b!6176600 (= lt!2338189 (zipperDepthTotal!299 lt!2338215))))

(declare-fun lt!2338199 () Context!11000)

(assert (=> b!6176600 (= lt!2338215 (Cons!64524 lt!2338199 Nil!64524))))

(declare-fun b!6176601 () Bool)

(declare-fun res!2556351 () Bool)

(assert (=> b!6176601 (=> res!2556351 e!3762321)))

(assert (=> b!6176601 (= res!2556351 (not (is-Cons!64523 (exprs!6000 (h!70972 zl!343)))))))

(declare-fun b!6176602 () Bool)

(assert (=> b!6176602 (= e!3762313 (matchZipper!2128 lt!2338207 (t!378155 s!2326)))))

(declare-fun b!6176603 () Bool)

(declare-fun e!3762325 () Unit!157707)

(declare-fun Unit!157711 () Unit!157707)

(assert (=> b!6176603 (= e!3762325 Unit!157711)))

(declare-fun lt!2338209 () Unit!157707)

(declare-fun lt!2338217 () (Set Context!11000))

(assert (=> b!6176603 (= lt!2338209 (lemmaZipperConcatMatchesSameAsBothZippers!947 lt!2338217 lt!2338207 (t!378155 s!2326)))))

(declare-fun res!2556366 () Bool)

(declare-fun lt!2338191 () Bool)

(assert (=> b!6176603 (= res!2556366 lt!2338191)))

(declare-fun e!3762308 () Bool)

(assert (=> b!6176603 (=> res!2556366 e!3762308)))

(assert (=> b!6176603 (= (matchZipper!2128 (set.union lt!2338217 lt!2338207) (t!378155 s!2326)) e!3762308)))

(declare-fun e!3762315 () Bool)

(declare-fun b!6176604 () Bool)

(declare-fun tp!1724291 () Bool)

(declare-fun inv!83538 (Context!11000) Bool)

(assert (=> b!6176604 (= e!3762327 (and (inv!83538 (h!70972 zl!343)) e!3762315 tp!1724291))))

(declare-fun b!6176605 () Bool)

(declare-fun Unit!157712 () Unit!157707)

(assert (=> b!6176605 (= e!3762325 Unit!157712)))

(declare-fun b!6176606 () Bool)

(declare-fun e!3762322 () Bool)

(declare-fun lt!2338192 () (Set Context!11000))

(assert (=> b!6176606 (= e!3762322 (matchZipper!2128 lt!2338192 (t!378155 s!2326)))))

(declare-fun e!3762309 () Bool)

(assert (=> b!6176607 (= e!3762321 e!3762309)))

(declare-fun res!2556349 () Bool)

(assert (=> b!6176607 (=> res!2556349 e!3762309)))

(declare-fun lt!2338186 () Bool)

(declare-fun lt!2338211 () Bool)

(assert (=> b!6176607 (= res!2556349 (or (not (= lt!2338211 lt!2338186)) (is-Nil!64525 s!2326)))))

(declare-fun Exists!3186 (Int) Bool)

(assert (=> b!6176607 (= (Exists!3186 lambda!337206) (Exists!3186 lambda!337207))))

(declare-fun lt!2338198 () Unit!157707)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1723 (Regex!16116 Regex!16116 List!64649) Unit!157707)

(assert (=> b!6176607 (= lt!2338198 (lemmaExistCutMatchRandMatchRSpecEquivalent!1723 (regOne!32744 r!7292) (regTwo!32744 r!7292) s!2326))))

(assert (=> b!6176607 (= lt!2338186 (Exists!3186 lambda!337206))))

(declare-datatypes ((tuple2!66190 0))(
  ( (tuple2!66191 (_1!36398 List!64649) (_2!36398 List!64649)) )
))
(declare-datatypes ((Option!16007 0))(
  ( (None!16006) (Some!16006 (v!52147 tuple2!66190)) )
))
(declare-fun isDefined!12710 (Option!16007) Bool)

(declare-fun findConcatSeparation!2421 (Regex!16116 Regex!16116 List!64649 List!64649 List!64649) Option!16007)

(assert (=> b!6176607 (= lt!2338186 (isDefined!12710 (findConcatSeparation!2421 (regOne!32744 r!7292) (regTwo!32744 r!7292) Nil!64525 s!2326 s!2326)))))

(declare-fun lt!2338200 () Unit!157707)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2185 (Regex!16116 Regex!16116 List!64649) Unit!157707)

(assert (=> b!6176607 (= lt!2338200 (lemmaFindConcatSeparationEquivalentToExists!2185 (regOne!32744 r!7292) (regTwo!32744 r!7292) s!2326))))

(declare-fun b!6176608 () Bool)

(assert (=> b!6176608 (= e!3762308 (matchZipper!2128 lt!2338207 (t!378155 s!2326)))))

(declare-fun b!6176609 () Bool)

(declare-fun e!3762318 () Unit!157707)

(declare-fun Unit!157713 () Unit!157707)

(assert (=> b!6176609 (= e!3762318 Unit!157713)))

(declare-fun b!6176610 () Bool)

(declare-fun tp_is_empty!41485 () Bool)

(assert (=> b!6176610 (= e!3762320 tp_is_empty!41485)))

(declare-fun b!6176611 () Bool)

(declare-fun tp!1724285 () Bool)

(assert (=> b!6176611 (= e!3762314 (and tp_is_empty!41485 tp!1724285))))

(declare-fun b!6176612 () Bool)

(declare-fun res!2556368 () Bool)

(assert (=> b!6176612 (=> res!2556368 e!3762307)))

(declare-fun lt!2338190 () Context!11000)

(assert (=> b!6176612 (= res!2556368 (>= (zipperDepthTotal!299 (Cons!64524 lt!2338190 Nil!64524)) lt!2338222))))

(declare-fun b!6176613 () Bool)

(declare-fun e!3762326 () Bool)

(declare-fun lt!2338202 () (Set Context!11000))

(assert (=> b!6176613 (= e!3762326 (matchZipper!2128 lt!2338202 s!2326))))

(declare-fun e!3762317 () Bool)

(assert (=> b!6176614 (= e!3762309 e!3762317)))

(declare-fun res!2556360 () Bool)

(assert (=> b!6176614 (=> res!2556360 e!3762317)))

(assert (=> b!6176614 (= res!2556360 (or (and (is-ElementMatch!16116 (regOne!32744 r!7292)) (= (c!1113407 (regOne!32744 r!7292)) (h!70973 s!2326))) (not (is-Union!16116 (regOne!32744 r!7292)))))))

(declare-fun lt!2338196 () Unit!157707)

(assert (=> b!6176614 (= lt!2338196 e!3762324)))

(declare-fun c!1113404 () Bool)

(declare-fun nullable!6109 (Regex!16116) Bool)

(assert (=> b!6176614 (= c!1113404 (nullable!6109 (h!70971 (exprs!6000 (h!70972 zl!343)))))))

(declare-fun lambda!337208 () Int)

(declare-fun flatMap!1621 ((Set Context!11000) Int) (Set Context!11000))

(declare-fun derivationStepZipperUp!1290 (Context!11000 C!32502) (Set Context!11000))

(assert (=> b!6176614 (= (flatMap!1621 z!1189 lambda!337208) (derivationStepZipperUp!1290 (h!70972 zl!343) (h!70973 s!2326)))))

(declare-fun lt!2338197 () Unit!157707)

(declare-fun lemmaFlatMapOnSingletonSet!1147 ((Set Context!11000) Context!11000 Int) Unit!157707)

(assert (=> b!6176614 (= lt!2338197 (lemmaFlatMapOnSingletonSet!1147 z!1189 (h!70972 zl!343) lambda!337208))))

(declare-fun lt!2338221 () Context!11000)

(assert (=> b!6176614 (= lt!2338207 (derivationStepZipperUp!1290 lt!2338221 (h!70973 s!2326)))))

(declare-fun derivationStepZipperDown!1364 (Regex!16116 Context!11000 C!32502) (Set Context!11000))

(assert (=> b!6176614 (= lt!2338194 (derivationStepZipperDown!1364 (h!70971 (exprs!6000 (h!70972 zl!343))) lt!2338221 (h!70973 s!2326)))))

(assert (=> b!6176614 (= lt!2338221 (Context!11001 (t!378153 (exprs!6000 (h!70972 zl!343)))))))

(declare-fun lt!2338206 () (Set Context!11000))

(assert (=> b!6176614 (= lt!2338206 (derivationStepZipperUp!1290 (Context!11001 (Cons!64523 (h!70971 (exprs!6000 (h!70972 zl!343))) (t!378153 (exprs!6000 (h!70972 zl!343))))) (h!70973 s!2326)))))

(declare-fun b!6176615 () Bool)

(declare-fun tp!1724292 () Bool)

(assert (=> b!6176615 (= e!3762320 tp!1724292)))

(declare-fun b!6176616 () Bool)

(declare-fun res!2556365 () Bool)

(assert (=> b!6176616 (=> res!2556365 e!3762309)))

(declare-fun isEmpty!36502 (List!64647) Bool)

(assert (=> b!6176616 (= res!2556365 (isEmpty!36502 (t!378153 (exprs!6000 (h!70972 zl!343)))))))

(declare-fun b!6176617 () Bool)

(declare-fun res!2556355 () Bool)

(assert (=> b!6176617 (=> res!2556355 e!3762319)))

(assert (=> b!6176617 (= res!2556355 (or (not (= lt!2338216 r!7292)) (not (= (exprs!6000 (h!70972 zl!343)) (Cons!64523 (regOne!32744 r!7292) (t!378153 (exprs!6000 (h!70972 zl!343))))))))))

(declare-fun b!6176618 () Bool)

(assert (=> b!6176618 (= e!3762323 (not e!3762321))))

(declare-fun res!2556357 () Bool)

(assert (=> b!6176618 (=> res!2556357 e!3762321)))

(assert (=> b!6176618 (= res!2556357 (not (is-Cons!64524 zl!343)))))

(declare-fun matchRSpec!3217 (Regex!16116 List!64649) Bool)

(assert (=> b!6176618 (= lt!2338211 (matchRSpec!3217 r!7292 s!2326))))

(declare-fun matchR!8299 (Regex!16116 List!64649) Bool)

(assert (=> b!6176618 (= lt!2338211 (matchR!8299 r!7292 s!2326))))

(declare-fun lt!2338219 () Unit!157707)

(declare-fun mainMatchTheorem!3217 (Regex!16116 List!64649) Unit!157707)

(assert (=> b!6176618 (= lt!2338219 (mainMatchTheorem!3217 r!7292 s!2326))))

(declare-fun b!6176619 () Bool)

(declare-fun Unit!157714 () Unit!157707)

(assert (=> b!6176619 (= e!3762318 Unit!157714)))

(declare-fun lt!2338203 () Unit!157707)

(assert (=> b!6176619 (= lt!2338203 (lemmaZipperConcatMatchesSameAsBothZippers!947 lt!2338192 lt!2338207 (t!378155 s!2326)))))

(declare-fun res!2556348 () Bool)

(assert (=> b!6176619 (= res!2556348 (matchZipper!2128 lt!2338192 (t!378155 s!2326)))))

(declare-fun e!3762306 () Bool)

(assert (=> b!6176619 (=> res!2556348 e!3762306)))

(assert (=> b!6176619 (= (matchZipper!2128 (set.union lt!2338192 lt!2338207) (t!378155 s!2326)) e!3762306)))

(declare-fun b!6176620 () Bool)

(declare-fun res!2556352 () Bool)

(assert (=> b!6176620 (=> res!2556352 e!3762321)))

(declare-fun generalisedUnion!1960 (List!64647) Regex!16116)

(declare-fun unfocusZipperList!1537 (List!64648) List!64647)

(assert (=> b!6176620 (= res!2556352 (not (= r!7292 (generalisedUnion!1960 (unfocusZipperList!1537 zl!343)))))))

(declare-fun b!6176621 () Bool)

(declare-fun res!2556358 () Bool)

(assert (=> b!6176621 (=> res!2556358 e!3762321)))

(declare-fun isEmpty!36503 (List!64648) Bool)

(assert (=> b!6176621 (= res!2556358 (not (isEmpty!36503 (t!378154 zl!343))))))

(declare-fun b!6176622 () Bool)

(declare-fun e!3762328 () Bool)

(assert (=> b!6176622 (= e!3762317 e!3762328)))

(declare-fun res!2556364 () Bool)

(assert (=> b!6176622 (=> res!2556364 e!3762328)))

(declare-fun lt!2338213 () (Set Context!11000))

(assert (=> b!6176622 (= res!2556364 (not (= lt!2338194 lt!2338213)))))

(assert (=> b!6176622 (= lt!2338213 (set.union lt!2338217 lt!2338192))))

(assert (=> b!6176622 (= lt!2338192 (derivationStepZipperDown!1364 (regTwo!32745 (regOne!32744 r!7292)) lt!2338221 (h!70973 s!2326)))))

(assert (=> b!6176622 (= lt!2338217 (derivationStepZipperDown!1364 (regOne!32745 (regOne!32744 r!7292)) lt!2338221 (h!70973 s!2326)))))

(declare-fun b!6176623 () Bool)

(declare-fun tp!1724287 () Bool)

(declare-fun tp!1724286 () Bool)

(assert (=> b!6176623 (= e!3762320 (and tp!1724287 tp!1724286))))

(declare-fun b!6176624 () Bool)

(declare-fun lt!2338208 () List!64647)

(declare-fun generalisedConcat!1713 (List!64647) Regex!16116)

(assert (=> b!6176624 (= e!3762307 (validRegex!7852 (generalisedConcat!1713 lt!2338208)))))

(declare-fun lt!2338210 () Regex!16116)

(declare-fun lt!2338220 () Bool)

(assert (=> b!6176624 (= (matchR!8299 lt!2338210 s!2326) lt!2338220)))

(declare-fun lt!2338205 () Unit!157707)

(declare-fun lt!2338212 () (Set Context!11000))

(declare-fun theoremZipperRegexEquiv!728 ((Set Context!11000) List!64648 Regex!16116 List!64649) Unit!157707)

(assert (=> b!6176624 (= lt!2338205 (theoremZipperRegexEquiv!728 lt!2338212 lt!2338215 lt!2338210 s!2326))))

(declare-fun lt!2338185 () List!64647)

(assert (=> b!6176624 (= lt!2338210 (generalisedConcat!1713 lt!2338185))))

(declare-fun setIsEmpty!41885 () Bool)

(assert (=> setIsEmpty!41885 setRes!41885))

(declare-fun tp!1724289 () Bool)

(declare-fun setElem!41885 () Context!11000)

(declare-fun setNonEmpty!41885 () Bool)

(assert (=> setNonEmpty!41885 (= setRes!41885 (and tp!1724289 (inv!83538 setElem!41885) e!3762316))))

(declare-fun setRest!41885 () (Set Context!11000))

(assert (=> setNonEmpty!41885 (= z!1189 (set.union (set.insert setElem!41885 (as set.empty (Set Context!11000))) setRest!41885))))

(declare-fun b!6176625 () Bool)

(declare-fun e!3762312 () Bool)

(assert (=> b!6176625 (= e!3762312 (not (matchZipper!2128 lt!2338192 (t!378155 s!2326))))))

(declare-fun b!6176626 () Bool)

(declare-fun res!2556361 () Bool)

(assert (=> b!6176626 (=> (not res!2556361) (not e!3762311))))

(declare-fun toList!9900 ((Set Context!11000)) List!64648)

(assert (=> b!6176626 (= res!2556361 (= (toList!9900 z!1189) zl!343))))

(declare-fun b!6176627 () Bool)

(declare-fun e!3762310 () Bool)

(assert (=> b!6176627 (= e!3762328 e!3762310)))

(declare-fun res!2556363 () Bool)

(assert (=> b!6176627 (=> res!2556363 e!3762310)))

(assert (=> b!6176627 (= res!2556363 e!3762312)))

(declare-fun res!2556362 () Bool)

(assert (=> b!6176627 (=> (not res!2556362) (not e!3762312))))

(assert (=> b!6176627 (= res!2556362 (not (= (matchZipper!2128 lt!2338194 (t!378155 s!2326)) lt!2338191)))))

(assert (=> b!6176627 (= (matchZipper!2128 lt!2338213 (t!378155 s!2326)) e!3762322)))

(declare-fun res!2556354 () Bool)

(assert (=> b!6176627 (=> res!2556354 e!3762322)))

(assert (=> b!6176627 (= res!2556354 lt!2338191)))

(assert (=> b!6176627 (= lt!2338191 (matchZipper!2128 lt!2338217 (t!378155 s!2326)))))

(declare-fun lt!2338204 () Unit!157707)

(assert (=> b!6176627 (= lt!2338204 (lemmaZipperConcatMatchesSameAsBothZippers!947 lt!2338217 lt!2338192 (t!378155 s!2326)))))

(declare-fun b!6176628 () Bool)

(declare-fun tp!1724284 () Bool)

(assert (=> b!6176628 (= e!3762315 tp!1724284)))

(declare-fun b!6176629 () Bool)

(declare-fun res!2556356 () Bool)

(assert (=> b!6176629 (=> res!2556356 e!3762321)))

(assert (=> b!6176629 (= res!2556356 (not (= r!7292 (generalisedConcat!1713 (exprs!6000 (h!70972 zl!343))))))))

(declare-fun b!6176630 () Bool)

(declare-fun tp!1724283 () Bool)

(declare-fun tp!1724290 () Bool)

(assert (=> b!6176630 (= e!3762320 (and tp!1724283 tp!1724290))))

(declare-fun b!6176631 () Bool)

(assert (=> b!6176631 (= e!3762306 (matchZipper!2128 lt!2338207 (t!378155 s!2326)))))

(declare-fun b!6176632 () Bool)

(assert (=> b!6176632 (= e!3762310 e!3762319)))

(declare-fun res!2556359 () Bool)

(assert (=> b!6176632 (=> res!2556359 e!3762319)))

(assert (=> b!6176632 (= res!2556359 (not (= (matchZipper!2128 z!1189 s!2326) e!3762326)))))

(declare-fun res!2556353 () Bool)

(assert (=> b!6176632 (=> res!2556353 e!3762326)))

(assert (=> b!6176632 (= res!2556353 lt!2338220)))

(assert (=> b!6176632 (= lt!2338220 (matchZipper!2128 lt!2338212 s!2326))))

(declare-fun lt!2338218 () Unit!157707)

(assert (=> b!6176632 (= lt!2338218 e!3762318)))

(declare-fun c!1113406 () Bool)

(assert (=> b!6176632 (= c!1113406 (nullable!6109 (regTwo!32745 (regOne!32744 r!7292))))))

(assert (=> b!6176632 (= (flatMap!1621 lt!2338202 lambda!337208) (derivationStepZipperUp!1290 lt!2338190 (h!70973 s!2326)))))

(declare-fun lt!2338188 () Unit!157707)

(assert (=> b!6176632 (= lt!2338188 (lemmaFlatMapOnSingletonSet!1147 lt!2338202 lt!2338190 lambda!337208))))

(declare-fun lt!2338214 () (Set Context!11000))

(assert (=> b!6176632 (= lt!2338214 (derivationStepZipperUp!1290 lt!2338190 (h!70973 s!2326)))))

(declare-fun lt!2338195 () Unit!157707)

(assert (=> b!6176632 (= lt!2338195 e!3762325)))

(declare-fun c!1113405 () Bool)

(assert (=> b!6176632 (= c!1113405 (nullable!6109 (regOne!32745 (regOne!32744 r!7292))))))

(assert (=> b!6176632 (= (flatMap!1621 lt!2338212 lambda!337208) (derivationStepZipperUp!1290 lt!2338199 (h!70973 s!2326)))))

(declare-fun lt!2338193 () Unit!157707)

(assert (=> b!6176632 (= lt!2338193 (lemmaFlatMapOnSingletonSet!1147 lt!2338212 lt!2338199 lambda!337208))))

(declare-fun lt!2338201 () (Set Context!11000))

(assert (=> b!6176632 (= lt!2338201 (derivationStepZipperUp!1290 lt!2338199 (h!70973 s!2326)))))

(assert (=> b!6176632 (= lt!2338202 (set.insert lt!2338190 (as set.empty (Set Context!11000))))))

(assert (=> b!6176632 (= lt!2338190 (Context!11001 lt!2338208))))

(assert (=> b!6176632 (= lt!2338208 (Cons!64523 (regTwo!32745 (regOne!32744 r!7292)) (t!378153 (exprs!6000 (h!70972 zl!343)))))))

(assert (=> b!6176632 (= lt!2338212 (set.insert lt!2338199 (as set.empty (Set Context!11000))))))

(assert (=> b!6176632 (= lt!2338199 (Context!11001 lt!2338185))))

(assert (=> b!6176632 (= lt!2338185 (Cons!64523 (regOne!32745 (regOne!32744 r!7292)) (t!378153 (exprs!6000 (h!70972 zl!343)))))))

(assert (= (and start!616540 res!2556347) b!6176626))

(assert (= (and b!6176626 res!2556361) b!6176596))

(assert (= (and b!6176596 res!2556350) b!6176618))

(assert (= (and b!6176618 (not res!2556357)) b!6176621))

(assert (= (and b!6176621 (not res!2556358)) b!6176629))

(assert (= (and b!6176629 (not res!2556356)) b!6176601))

(assert (= (and b!6176601 (not res!2556351)) b!6176620))

(assert (= (and b!6176620 (not res!2556352)) b!6176598))

(assert (= (and b!6176598 (not res!2556367)) b!6176607))

(assert (= (and b!6176607 (not res!2556349)) b!6176616))

(assert (= (and b!6176616 (not res!2556365)) b!6176614))

(assert (= (and b!6176614 c!1113404) b!6176597))

(assert (= (and b!6176614 (not c!1113404)) b!6176595))

(assert (= (and b!6176597 (not res!2556346)) b!6176602))

(assert (= (and b!6176614 (not res!2556360)) b!6176622))

(assert (= (and b!6176622 (not res!2556364)) b!6176627))

(assert (= (and b!6176627 (not res!2556354)) b!6176606))

(assert (= (and b!6176627 res!2556362) b!6176625))

(assert (= (and b!6176627 (not res!2556363)) b!6176632))

(assert (= (and b!6176632 c!1113405) b!6176603))

(assert (= (and b!6176632 (not c!1113405)) b!6176605))

(assert (= (and b!6176603 (not res!2556366)) b!6176608))

(assert (= (and b!6176632 c!1113406) b!6176619))

(assert (= (and b!6176632 (not c!1113406)) b!6176609))

(assert (= (and b!6176619 (not res!2556348)) b!6176631))

(assert (= (and b!6176632 (not res!2556353)) b!6176613))

(assert (= (and b!6176632 (not res!2556359)) b!6176617))

(assert (= (and b!6176617 (not res!2556355)) b!6176600))

(assert (= (and b!6176600 (not res!2556369)) b!6176612))

(assert (= (and b!6176612 (not res!2556368)) b!6176624))

(assert (= (and start!616540 (is-ElementMatch!16116 r!7292)) b!6176610))

(assert (= (and start!616540 (is-Concat!24961 r!7292)) b!6176630))

(assert (= (and start!616540 (is-Star!16116 r!7292)) b!6176615))

(assert (= (and start!616540 (is-Union!16116 r!7292)) b!6176623))

(assert (= (and start!616540 condSetEmpty!41885) setIsEmpty!41885))

(assert (= (and start!616540 (not condSetEmpty!41885)) setNonEmpty!41885))

(assert (= setNonEmpty!41885 b!6176599))

(assert (= b!6176604 b!6176628))

(assert (= (and start!616540 (is-Cons!64524 zl!343)) b!6176604))

(assert (= (and start!616540 (is-Cons!64525 s!2326)) b!6176611))

(declare-fun m!7012630 () Bool)

(assert (=> b!6176602 m!7012630))

(declare-fun m!7012632 () Bool)

(assert (=> b!6176607 m!7012632))

(declare-fun m!7012634 () Bool)

(assert (=> b!6176607 m!7012634))

(declare-fun m!7012636 () Bool)

(assert (=> b!6176607 m!7012636))

(declare-fun m!7012638 () Bool)

(assert (=> b!6176607 m!7012638))

(declare-fun m!7012640 () Bool)

(assert (=> b!6176607 m!7012640))

(assert (=> b!6176607 m!7012640))

(assert (=> b!6176607 m!7012632))

(declare-fun m!7012642 () Bool)

(assert (=> b!6176607 m!7012642))

(declare-fun m!7012644 () Bool)

(assert (=> b!6176627 m!7012644))

(declare-fun m!7012646 () Bool)

(assert (=> b!6176627 m!7012646))

(declare-fun m!7012648 () Bool)

(assert (=> b!6176627 m!7012648))

(declare-fun m!7012650 () Bool)

(assert (=> b!6176627 m!7012650))

(assert (=> b!6176631 m!7012630))

(declare-fun m!7012652 () Bool)

(assert (=> b!6176622 m!7012652))

(declare-fun m!7012654 () Bool)

(assert (=> b!6176622 m!7012654))

(declare-fun m!7012656 () Bool)

(assert (=> b!6176614 m!7012656))

(declare-fun m!7012658 () Bool)

(assert (=> b!6176614 m!7012658))

(declare-fun m!7012660 () Bool)

(assert (=> b!6176614 m!7012660))

(declare-fun m!7012662 () Bool)

(assert (=> b!6176614 m!7012662))

(declare-fun m!7012664 () Bool)

(assert (=> b!6176614 m!7012664))

(declare-fun m!7012666 () Bool)

(assert (=> b!6176614 m!7012666))

(declare-fun m!7012668 () Bool)

(assert (=> b!6176614 m!7012668))

(declare-fun m!7012670 () Bool)

(assert (=> b!6176597 m!7012670))

(assert (=> b!6176597 m!7012644))

(declare-fun m!7012672 () Bool)

(assert (=> b!6176597 m!7012672))

(declare-fun m!7012674 () Bool)

(assert (=> b!6176603 m!7012674))

(declare-fun m!7012676 () Bool)

(assert (=> b!6176603 m!7012676))

(declare-fun m!7012678 () Bool)

(assert (=> setNonEmpty!41885 m!7012678))

(declare-fun m!7012680 () Bool)

(assert (=> b!6176621 m!7012680))

(declare-fun m!7012682 () Bool)

(assert (=> b!6176632 m!7012682))

(declare-fun m!7012684 () Bool)

(assert (=> b!6176632 m!7012684))

(declare-fun m!7012686 () Bool)

(assert (=> b!6176632 m!7012686))

(declare-fun m!7012688 () Bool)

(assert (=> b!6176632 m!7012688))

(declare-fun m!7012690 () Bool)

(assert (=> b!6176632 m!7012690))

(declare-fun m!7012692 () Bool)

(assert (=> b!6176632 m!7012692))

(declare-fun m!7012694 () Bool)

(assert (=> b!6176632 m!7012694))

(declare-fun m!7012696 () Bool)

(assert (=> b!6176632 m!7012696))

(declare-fun m!7012698 () Bool)

(assert (=> b!6176632 m!7012698))

(declare-fun m!7012700 () Bool)

(assert (=> b!6176632 m!7012700))

(declare-fun m!7012702 () Bool)

(assert (=> b!6176632 m!7012702))

(declare-fun m!7012704 () Bool)

(assert (=> b!6176632 m!7012704))

(declare-fun m!7012706 () Bool)

(assert (=> b!6176620 m!7012706))

(assert (=> b!6176620 m!7012706))

(declare-fun m!7012708 () Bool)

(assert (=> b!6176620 m!7012708))

(declare-fun m!7012710 () Bool)

(assert (=> b!6176606 m!7012710))

(declare-fun m!7012712 () Bool)

(assert (=> b!6176629 m!7012712))

(declare-fun m!7012714 () Bool)

(assert (=> b!6176624 m!7012714))

(declare-fun m!7012716 () Bool)

(assert (=> b!6176624 m!7012716))

(declare-fun m!7012718 () Bool)

(assert (=> b!6176624 m!7012718))

(assert (=> b!6176624 m!7012716))

(declare-fun m!7012720 () Bool)

(assert (=> b!6176624 m!7012720))

(declare-fun m!7012722 () Bool)

(assert (=> b!6176624 m!7012722))

(declare-fun m!7012724 () Bool)

(assert (=> b!6176604 m!7012724))

(declare-fun m!7012726 () Bool)

(assert (=> b!6176600 m!7012726))

(declare-fun m!7012728 () Bool)

(assert (=> b!6176600 m!7012728))

(declare-fun m!7012730 () Bool)

(assert (=> b!6176626 m!7012730))

(declare-fun m!7012732 () Bool)

(assert (=> b!6176612 m!7012732))

(declare-fun m!7012734 () Bool)

(assert (=> b!6176613 m!7012734))

(declare-fun m!7012736 () Bool)

(assert (=> b!6176618 m!7012736))

(declare-fun m!7012738 () Bool)

(assert (=> b!6176618 m!7012738))

(declare-fun m!7012740 () Bool)

(assert (=> b!6176618 m!7012740))

(assert (=> b!6176608 m!7012630))

(declare-fun m!7012742 () Bool)

(assert (=> b!6176619 m!7012742))

(assert (=> b!6176619 m!7012710))

(declare-fun m!7012744 () Bool)

(assert (=> b!6176619 m!7012744))

(declare-fun m!7012746 () Bool)

(assert (=> start!616540 m!7012746))

(declare-fun m!7012748 () Bool)

(assert (=> b!6176596 m!7012748))

(declare-fun m!7012750 () Bool)

(assert (=> b!6176616 m!7012750))

(assert (=> b!6176625 m!7012710))

(push 1)

(assert (not b!6176621))

(assert (not b!6176620))

(assert (not b!6176599))

(assert (not b!6176631))

(assert (not b!6176624))

(assert (not setNonEmpty!41885))

(assert (not b!6176632))

(assert (not b!6176626))

(assert (not b!6176623))

(assert (not b!6176628))

(assert (not b!6176619))

(assert (not b!6176622))

(assert (not b!6176608))

(assert (not b!6176597))

(assert (not b!6176613))

(assert (not b!6176612))

(assert (not b!6176602))

(assert (not b!6176630))

(assert (not b!6176611))

(assert tp_is_empty!41485)

(assert (not b!6176615))

(assert (not b!6176625))

(assert (not b!6176618))

(assert (not start!616540))

(assert (not b!6176596))

(assert (not b!6176627))

(assert (not b!6176606))

(assert (not b!6176607))

(assert (not b!6176629))

(assert (not b!6176600))

(assert (not b!6176603))

(assert (not b!6176614))

(assert (not b!6176616))

(assert (not b!6176604))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1936158 () Bool)

(declare-fun lt!2338339 () Int)

(assert (=> d!1936158 (>= lt!2338339 0)))

(declare-fun e!3762406 () Int)

(assert (=> d!1936158 (= lt!2338339 e!3762406)))

(declare-fun c!1113427 () Bool)

(assert (=> d!1936158 (= c!1113427 (is-Cons!64524 (Cons!64524 lt!2338190 Nil!64524)))))

(assert (=> d!1936158 (= (zipperDepthTotal!299 (Cons!64524 lt!2338190 Nil!64524)) lt!2338339)))

(declare-fun b!6176775 () Bool)

(declare-fun contextDepthTotal!273 (Context!11000) Int)

(assert (=> b!6176775 (= e!3762406 (+ (contextDepthTotal!273 (h!70972 (Cons!64524 lt!2338190 Nil!64524))) (zipperDepthTotal!299 (t!378154 (Cons!64524 lt!2338190 Nil!64524)))))))

(declare-fun b!6176776 () Bool)

(assert (=> b!6176776 (= e!3762406 0)))

(assert (= (and d!1936158 c!1113427) b!6176775))

(assert (= (and d!1936158 (not c!1113427)) b!6176776))

(declare-fun m!7012874 () Bool)

(assert (=> b!6176775 m!7012874))

(declare-fun m!7012876 () Bool)

(assert (=> b!6176775 m!7012876))

(assert (=> b!6176612 d!1936158))

(declare-fun d!1936160 () Bool)

(declare-fun c!1113430 () Bool)

(declare-fun isEmpty!36506 (List!64649) Bool)

(assert (=> d!1936160 (= c!1113430 (isEmpty!36506 (t!378155 s!2326)))))

(declare-fun e!3762409 () Bool)

(assert (=> d!1936160 (= (matchZipper!2128 lt!2338207 (t!378155 s!2326)) e!3762409)))

(declare-fun b!6176781 () Bool)

(declare-fun nullableZipper!1895 ((Set Context!11000)) Bool)

(assert (=> b!6176781 (= e!3762409 (nullableZipper!1895 lt!2338207))))

(declare-fun b!6176782 () Bool)

(declare-fun derivationStepZipper!2087 ((Set Context!11000) C!32502) (Set Context!11000))

(declare-fun head!12749 (List!64649) C!32502)

(declare-fun tail!11834 (List!64649) List!64649)

(assert (=> b!6176782 (= e!3762409 (matchZipper!2128 (derivationStepZipper!2087 lt!2338207 (head!12749 (t!378155 s!2326))) (tail!11834 (t!378155 s!2326))))))

(assert (= (and d!1936160 c!1113430) b!6176781))

(assert (= (and d!1936160 (not c!1113430)) b!6176782))

(declare-fun m!7012878 () Bool)

(assert (=> d!1936160 m!7012878))

(declare-fun m!7012880 () Bool)

(assert (=> b!6176781 m!7012880))

(declare-fun m!7012882 () Bool)

(assert (=> b!6176782 m!7012882))

(assert (=> b!6176782 m!7012882))

(declare-fun m!7012884 () Bool)

(assert (=> b!6176782 m!7012884))

(declare-fun m!7012886 () Bool)

(assert (=> b!6176782 m!7012886))

(assert (=> b!6176782 m!7012884))

(assert (=> b!6176782 m!7012886))

(declare-fun m!7012888 () Bool)

(assert (=> b!6176782 m!7012888))

(assert (=> b!6176631 d!1936160))

(declare-fun b!6176804 () Bool)

(declare-fun e!3762425 () Bool)

(declare-fun lt!2338342 () Regex!16116)

(declare-fun isEmptyExpr!1531 (Regex!16116) Bool)

(assert (=> b!6176804 (= e!3762425 (isEmptyExpr!1531 lt!2338342))))

(declare-fun b!6176805 () Bool)

(declare-fun e!3762426 () Bool)

(assert (=> b!6176805 (= e!3762426 e!3762425)))

(declare-fun c!1113442 () Bool)

(assert (=> b!6176805 (= c!1113442 (isEmpty!36502 (exprs!6000 (h!70972 zl!343))))))

(declare-fun b!6176806 () Bool)

(declare-fun e!3762423 () Regex!16116)

(assert (=> b!6176806 (= e!3762423 (Concat!24961 (h!70971 (exprs!6000 (h!70972 zl!343))) (generalisedConcat!1713 (t!378153 (exprs!6000 (h!70972 zl!343))))))))

(declare-fun b!6176807 () Bool)

(declare-fun e!3762427 () Regex!16116)

(assert (=> b!6176807 (= e!3762427 e!3762423)))

(declare-fun c!1113439 () Bool)

(assert (=> b!6176807 (= c!1113439 (is-Cons!64523 (exprs!6000 (h!70972 zl!343))))))

(declare-fun b!6176808 () Bool)

(declare-fun e!3762422 () Bool)

(declare-fun isConcat!1054 (Regex!16116) Bool)

(assert (=> b!6176808 (= e!3762422 (isConcat!1054 lt!2338342))))

(declare-fun b!6176809 () Bool)

(declare-fun head!12750 (List!64647) Regex!16116)

(assert (=> b!6176809 (= e!3762422 (= lt!2338342 (head!12750 (exprs!6000 (h!70972 zl!343)))))))

(declare-fun b!6176810 () Bool)

(assert (=> b!6176810 (= e!3762427 (h!70971 (exprs!6000 (h!70972 zl!343))))))

(declare-fun b!6176803 () Bool)

(declare-fun e!3762424 () Bool)

(assert (=> b!6176803 (= e!3762424 (isEmpty!36502 (t!378153 (exprs!6000 (h!70972 zl!343)))))))

(declare-fun d!1936162 () Bool)

(assert (=> d!1936162 e!3762426))

(declare-fun res!2556458 () Bool)

(assert (=> d!1936162 (=> (not res!2556458) (not e!3762426))))

(assert (=> d!1936162 (= res!2556458 (validRegex!7852 lt!2338342))))

(assert (=> d!1936162 (= lt!2338342 e!3762427)))

(declare-fun c!1113440 () Bool)

(assert (=> d!1936162 (= c!1113440 e!3762424)))

(declare-fun res!2556459 () Bool)

(assert (=> d!1936162 (=> (not res!2556459) (not e!3762424))))

(assert (=> d!1936162 (= res!2556459 (is-Cons!64523 (exprs!6000 (h!70972 zl!343))))))

(declare-fun lambda!337226 () Int)

(declare-fun forall!15235 (List!64647 Int) Bool)

(assert (=> d!1936162 (forall!15235 (exprs!6000 (h!70972 zl!343)) lambda!337226)))

(assert (=> d!1936162 (= (generalisedConcat!1713 (exprs!6000 (h!70972 zl!343))) lt!2338342)))

(declare-fun b!6176811 () Bool)

(assert (=> b!6176811 (= e!3762425 e!3762422)))

(declare-fun c!1113441 () Bool)

(declare-fun tail!11835 (List!64647) List!64647)

(assert (=> b!6176811 (= c!1113441 (isEmpty!36502 (tail!11835 (exprs!6000 (h!70972 zl!343)))))))

(declare-fun b!6176812 () Bool)

(assert (=> b!6176812 (= e!3762423 EmptyExpr!16116)))

(assert (= (and d!1936162 res!2556459) b!6176803))

(assert (= (and d!1936162 c!1113440) b!6176810))

(assert (= (and d!1936162 (not c!1113440)) b!6176807))

(assert (= (and b!6176807 c!1113439) b!6176806))

(assert (= (and b!6176807 (not c!1113439)) b!6176812))

(assert (= (and d!1936162 res!2556458) b!6176805))

(assert (= (and b!6176805 c!1113442) b!6176804))

(assert (= (and b!6176805 (not c!1113442)) b!6176811))

(assert (= (and b!6176811 c!1113441) b!6176809))

(assert (= (and b!6176811 (not c!1113441)) b!6176808))

(declare-fun m!7012890 () Bool)

(assert (=> b!6176805 m!7012890))

(assert (=> b!6176803 m!7012750))

(declare-fun m!7012892 () Bool)

(assert (=> b!6176804 m!7012892))

(declare-fun m!7012894 () Bool)

(assert (=> b!6176808 m!7012894))

(declare-fun m!7012896 () Bool)

(assert (=> b!6176806 m!7012896))

(declare-fun m!7012898 () Bool)

(assert (=> b!6176811 m!7012898))

(assert (=> b!6176811 m!7012898))

(declare-fun m!7012900 () Bool)

(assert (=> b!6176811 m!7012900))

(declare-fun m!7012902 () Bool)

(assert (=> d!1936162 m!7012902))

(declare-fun m!7012904 () Bool)

(assert (=> d!1936162 m!7012904))

(declare-fun m!7012906 () Bool)

(assert (=> b!6176809 m!7012906))

(assert (=> b!6176629 d!1936162))

(assert (=> b!6176608 d!1936160))

(declare-fun d!1936164 () Bool)

(declare-fun c!1113443 () Bool)

(assert (=> d!1936164 (= c!1113443 (isEmpty!36506 (t!378155 s!2326)))))

(declare-fun e!3762428 () Bool)

(assert (=> d!1936164 (= (matchZipper!2128 lt!2338194 (t!378155 s!2326)) e!3762428)))

(declare-fun b!6176813 () Bool)

(assert (=> b!6176813 (= e!3762428 (nullableZipper!1895 lt!2338194))))

(declare-fun b!6176814 () Bool)

(assert (=> b!6176814 (= e!3762428 (matchZipper!2128 (derivationStepZipper!2087 lt!2338194 (head!12749 (t!378155 s!2326))) (tail!11834 (t!378155 s!2326))))))

(assert (= (and d!1936164 c!1113443) b!6176813))

(assert (= (and d!1936164 (not c!1113443)) b!6176814))

(assert (=> d!1936164 m!7012878))

(declare-fun m!7012908 () Bool)

(assert (=> b!6176813 m!7012908))

(assert (=> b!6176814 m!7012882))

(assert (=> b!6176814 m!7012882))

(declare-fun m!7012910 () Bool)

(assert (=> b!6176814 m!7012910))

(assert (=> b!6176814 m!7012886))

(assert (=> b!6176814 m!7012910))

(assert (=> b!6176814 m!7012886))

(declare-fun m!7012912 () Bool)

(assert (=> b!6176814 m!7012912))

(assert (=> b!6176627 d!1936164))

(declare-fun d!1936166 () Bool)

(declare-fun c!1113444 () Bool)

(assert (=> d!1936166 (= c!1113444 (isEmpty!36506 (t!378155 s!2326)))))

(declare-fun e!3762429 () Bool)

(assert (=> d!1936166 (= (matchZipper!2128 lt!2338213 (t!378155 s!2326)) e!3762429)))

(declare-fun b!6176815 () Bool)

(assert (=> b!6176815 (= e!3762429 (nullableZipper!1895 lt!2338213))))

(declare-fun b!6176816 () Bool)

(assert (=> b!6176816 (= e!3762429 (matchZipper!2128 (derivationStepZipper!2087 lt!2338213 (head!12749 (t!378155 s!2326))) (tail!11834 (t!378155 s!2326))))))

(assert (= (and d!1936166 c!1113444) b!6176815))

(assert (= (and d!1936166 (not c!1113444)) b!6176816))

(assert (=> d!1936166 m!7012878))

(declare-fun m!7012914 () Bool)

(assert (=> b!6176815 m!7012914))

(assert (=> b!6176816 m!7012882))

(assert (=> b!6176816 m!7012882))

(declare-fun m!7012916 () Bool)

(assert (=> b!6176816 m!7012916))

(assert (=> b!6176816 m!7012886))

(assert (=> b!6176816 m!7012916))

(assert (=> b!6176816 m!7012886))

(declare-fun m!7012918 () Bool)

(assert (=> b!6176816 m!7012918))

(assert (=> b!6176627 d!1936166))

(declare-fun d!1936168 () Bool)

(declare-fun c!1113445 () Bool)

(assert (=> d!1936168 (= c!1113445 (isEmpty!36506 (t!378155 s!2326)))))

(declare-fun e!3762430 () Bool)

(assert (=> d!1936168 (= (matchZipper!2128 lt!2338217 (t!378155 s!2326)) e!3762430)))

(declare-fun b!6176817 () Bool)

(assert (=> b!6176817 (= e!3762430 (nullableZipper!1895 lt!2338217))))

(declare-fun b!6176818 () Bool)

(assert (=> b!6176818 (= e!3762430 (matchZipper!2128 (derivationStepZipper!2087 lt!2338217 (head!12749 (t!378155 s!2326))) (tail!11834 (t!378155 s!2326))))))

(assert (= (and d!1936168 c!1113445) b!6176817))

(assert (= (and d!1936168 (not c!1113445)) b!6176818))

(assert (=> d!1936168 m!7012878))

(declare-fun m!7012920 () Bool)

(assert (=> b!6176817 m!7012920))

(assert (=> b!6176818 m!7012882))

(assert (=> b!6176818 m!7012882))

(declare-fun m!7012922 () Bool)

(assert (=> b!6176818 m!7012922))

(assert (=> b!6176818 m!7012886))

(assert (=> b!6176818 m!7012922))

(assert (=> b!6176818 m!7012886))

(declare-fun m!7012924 () Bool)

(assert (=> b!6176818 m!7012924))

(assert (=> b!6176627 d!1936168))

(declare-fun e!3762433 () Bool)

(declare-fun d!1936170 () Bool)

(assert (=> d!1936170 (= (matchZipper!2128 (set.union lt!2338217 lt!2338192) (t!378155 s!2326)) e!3762433)))

(declare-fun res!2556462 () Bool)

(assert (=> d!1936170 (=> res!2556462 e!3762433)))

(assert (=> d!1936170 (= res!2556462 (matchZipper!2128 lt!2338217 (t!378155 s!2326)))))

(declare-fun lt!2338345 () Unit!157707)

(declare-fun choose!45901 ((Set Context!11000) (Set Context!11000) List!64649) Unit!157707)

(assert (=> d!1936170 (= lt!2338345 (choose!45901 lt!2338217 lt!2338192 (t!378155 s!2326)))))

(assert (=> d!1936170 (= (lemmaZipperConcatMatchesSameAsBothZippers!947 lt!2338217 lt!2338192 (t!378155 s!2326)) lt!2338345)))

(declare-fun b!6176821 () Bool)

(assert (=> b!6176821 (= e!3762433 (matchZipper!2128 lt!2338192 (t!378155 s!2326)))))

(assert (= (and d!1936170 (not res!2556462)) b!6176821))

(declare-fun m!7012926 () Bool)

(assert (=> d!1936170 m!7012926))

(assert (=> d!1936170 m!7012648))

(declare-fun m!7012928 () Bool)

(assert (=> d!1936170 m!7012928))

(assert (=> b!6176821 m!7012710))

(assert (=> b!6176627 d!1936170))

(declare-fun d!1936172 () Bool)

(declare-fun lt!2338348 () Regex!16116)

(assert (=> d!1936172 (validRegex!7852 lt!2338348)))

(assert (=> d!1936172 (= lt!2338348 (generalisedUnion!1960 (unfocusZipperList!1537 zl!343)))))

(assert (=> d!1936172 (= (unfocusZipper!1858 zl!343) lt!2338348)))

(declare-fun bs!1531740 () Bool)

(assert (= bs!1531740 d!1936172))

(declare-fun m!7012930 () Bool)

(assert (=> bs!1531740 m!7012930))

(assert (=> bs!1531740 m!7012706))

(assert (=> bs!1531740 m!7012706))

(assert (=> bs!1531740 m!7012708))

(assert (=> b!6176596 d!1936172))

(declare-fun d!1936174 () Bool)

(assert (=> d!1936174 (= (isEmpty!36502 (t!378153 (exprs!6000 (h!70972 zl!343)))) (is-Nil!64523 (t!378153 (exprs!6000 (h!70972 zl!343)))))))

(assert (=> b!6176616 d!1936174))

(declare-fun d!1936176 () Bool)

(declare-fun dynLambda!25446 (Int Context!11000) (Set Context!11000))

(assert (=> d!1936176 (= (flatMap!1621 z!1189 lambda!337208) (dynLambda!25446 lambda!337208 (h!70972 zl!343)))))

(declare-fun lt!2338351 () Unit!157707)

(declare-fun choose!45902 ((Set Context!11000) Context!11000 Int) Unit!157707)

(assert (=> d!1936176 (= lt!2338351 (choose!45902 z!1189 (h!70972 zl!343) lambda!337208))))

(assert (=> d!1936176 (= z!1189 (set.insert (h!70972 zl!343) (as set.empty (Set Context!11000))))))

(assert (=> d!1936176 (= (lemmaFlatMapOnSingletonSet!1147 z!1189 (h!70972 zl!343) lambda!337208) lt!2338351)))

(declare-fun b_lambda!235101 () Bool)

(assert (=> (not b_lambda!235101) (not d!1936176)))

(declare-fun bs!1531741 () Bool)

(assert (= bs!1531741 d!1936176))

(assert (=> bs!1531741 m!7012668))

(declare-fun m!7012932 () Bool)

(assert (=> bs!1531741 m!7012932))

(declare-fun m!7012934 () Bool)

(assert (=> bs!1531741 m!7012934))

(declare-fun m!7012936 () Bool)

(assert (=> bs!1531741 m!7012936))

(assert (=> b!6176614 d!1936176))

(declare-fun d!1936178 () Bool)

(declare-fun nullableFct!2071 (Regex!16116) Bool)

(assert (=> d!1936178 (= (nullable!6109 (h!70971 (exprs!6000 (h!70972 zl!343)))) (nullableFct!2071 (h!70971 (exprs!6000 (h!70972 zl!343)))))))

(declare-fun bs!1531742 () Bool)

(assert (= bs!1531742 d!1936178))

(declare-fun m!7012938 () Bool)

(assert (=> bs!1531742 m!7012938))

(assert (=> b!6176614 d!1936178))

(declare-fun d!1936180 () Bool)

(declare-fun c!1113451 () Bool)

(declare-fun e!3762442 () Bool)

(assert (=> d!1936180 (= c!1113451 e!3762442)))

(declare-fun res!2556465 () Bool)

(assert (=> d!1936180 (=> (not res!2556465) (not e!3762442))))

(assert (=> d!1936180 (= res!2556465 (is-Cons!64523 (exprs!6000 (Context!11001 (Cons!64523 (h!70971 (exprs!6000 (h!70972 zl!343))) (t!378153 (exprs!6000 (h!70972 zl!343))))))))))

(declare-fun e!3762440 () (Set Context!11000))

(assert (=> d!1936180 (= (derivationStepZipperUp!1290 (Context!11001 (Cons!64523 (h!70971 (exprs!6000 (h!70972 zl!343))) (t!378153 (exprs!6000 (h!70972 zl!343))))) (h!70973 s!2326)) e!3762440)))

(declare-fun b!6176832 () Bool)

(declare-fun call!515533 () (Set Context!11000))

(assert (=> b!6176832 (= e!3762440 (set.union call!515533 (derivationStepZipperUp!1290 (Context!11001 (t!378153 (exprs!6000 (Context!11001 (Cons!64523 (h!70971 (exprs!6000 (h!70972 zl!343))) (t!378153 (exprs!6000 (h!70972 zl!343)))))))) (h!70973 s!2326))))))

(declare-fun b!6176833 () Bool)

(assert (=> b!6176833 (= e!3762442 (nullable!6109 (h!70971 (exprs!6000 (Context!11001 (Cons!64523 (h!70971 (exprs!6000 (h!70972 zl!343))) (t!378153 (exprs!6000 (h!70972 zl!343)))))))))))

(declare-fun bm!515528 () Bool)

(assert (=> bm!515528 (= call!515533 (derivationStepZipperDown!1364 (h!70971 (exprs!6000 (Context!11001 (Cons!64523 (h!70971 (exprs!6000 (h!70972 zl!343))) (t!378153 (exprs!6000 (h!70972 zl!343))))))) (Context!11001 (t!378153 (exprs!6000 (Context!11001 (Cons!64523 (h!70971 (exprs!6000 (h!70972 zl!343))) (t!378153 (exprs!6000 (h!70972 zl!343)))))))) (h!70973 s!2326)))))

(declare-fun b!6176834 () Bool)

(declare-fun e!3762441 () (Set Context!11000))

(assert (=> b!6176834 (= e!3762441 (as set.empty (Set Context!11000)))))

(declare-fun b!6176835 () Bool)

(assert (=> b!6176835 (= e!3762440 e!3762441)))

(declare-fun c!1113450 () Bool)

(assert (=> b!6176835 (= c!1113450 (is-Cons!64523 (exprs!6000 (Context!11001 (Cons!64523 (h!70971 (exprs!6000 (h!70972 zl!343))) (t!378153 (exprs!6000 (h!70972 zl!343))))))))))

(declare-fun b!6176836 () Bool)

(assert (=> b!6176836 (= e!3762441 call!515533)))

(assert (= (and d!1936180 res!2556465) b!6176833))

(assert (= (and d!1936180 c!1113451) b!6176832))

(assert (= (and d!1936180 (not c!1113451)) b!6176835))

(assert (= (and b!6176835 c!1113450) b!6176836))

(assert (= (and b!6176835 (not c!1113450)) b!6176834))

(assert (= (or b!6176832 b!6176836) bm!515528))

(declare-fun m!7012940 () Bool)

(assert (=> b!6176832 m!7012940))

(declare-fun m!7012942 () Bool)

(assert (=> b!6176833 m!7012942))

(declare-fun m!7012944 () Bool)

(assert (=> bm!515528 m!7012944))

(assert (=> b!6176614 d!1936180))

(declare-fun d!1936182 () Bool)

(declare-fun choose!45903 ((Set Context!11000) Int) (Set Context!11000))

(assert (=> d!1936182 (= (flatMap!1621 z!1189 lambda!337208) (choose!45903 z!1189 lambda!337208))))

(declare-fun bs!1531743 () Bool)

(assert (= bs!1531743 d!1936182))

(declare-fun m!7012946 () Bool)

(assert (=> bs!1531743 m!7012946))

(assert (=> b!6176614 d!1936182))

(declare-fun d!1936184 () Bool)

(declare-fun c!1113453 () Bool)

(declare-fun e!3762445 () Bool)

(assert (=> d!1936184 (= c!1113453 e!3762445)))

(declare-fun res!2556466 () Bool)

(assert (=> d!1936184 (=> (not res!2556466) (not e!3762445))))

(assert (=> d!1936184 (= res!2556466 (is-Cons!64523 (exprs!6000 (h!70972 zl!343))))))

(declare-fun e!3762443 () (Set Context!11000))

(assert (=> d!1936184 (= (derivationStepZipperUp!1290 (h!70972 zl!343) (h!70973 s!2326)) e!3762443)))

(declare-fun b!6176837 () Bool)

(declare-fun call!515534 () (Set Context!11000))

(assert (=> b!6176837 (= e!3762443 (set.union call!515534 (derivationStepZipperUp!1290 (Context!11001 (t!378153 (exprs!6000 (h!70972 zl!343)))) (h!70973 s!2326))))))

(declare-fun b!6176838 () Bool)

(assert (=> b!6176838 (= e!3762445 (nullable!6109 (h!70971 (exprs!6000 (h!70972 zl!343)))))))

(declare-fun bm!515529 () Bool)

(assert (=> bm!515529 (= call!515534 (derivationStepZipperDown!1364 (h!70971 (exprs!6000 (h!70972 zl!343))) (Context!11001 (t!378153 (exprs!6000 (h!70972 zl!343)))) (h!70973 s!2326)))))

(declare-fun b!6176839 () Bool)

(declare-fun e!3762444 () (Set Context!11000))

(assert (=> b!6176839 (= e!3762444 (as set.empty (Set Context!11000)))))

(declare-fun b!6176840 () Bool)

(assert (=> b!6176840 (= e!3762443 e!3762444)))

(declare-fun c!1113452 () Bool)

(assert (=> b!6176840 (= c!1113452 (is-Cons!64523 (exprs!6000 (h!70972 zl!343))))))

(declare-fun b!6176841 () Bool)

(assert (=> b!6176841 (= e!3762444 call!515534)))

(assert (= (and d!1936184 res!2556466) b!6176838))

(assert (= (and d!1936184 c!1113453) b!6176837))

(assert (= (and d!1936184 (not c!1113453)) b!6176840))

(assert (= (and b!6176840 c!1113452) b!6176841))

(assert (= (and b!6176840 (not c!1113452)) b!6176839))

(assert (= (or b!6176837 b!6176841) bm!515529))

(declare-fun m!7012948 () Bool)

(assert (=> b!6176837 m!7012948))

(assert (=> b!6176838 m!7012666))

(declare-fun m!7012950 () Bool)

(assert (=> bm!515529 m!7012950))

(assert (=> b!6176614 d!1936184))

(declare-fun b!6176864 () Bool)

(declare-fun e!3762459 () (Set Context!11000))

(assert (=> b!6176864 (= e!3762459 (as set.empty (Set Context!11000)))))

(declare-fun b!6176865 () Bool)

(declare-fun e!3762458 () (Set Context!11000))

(declare-fun call!515549 () (Set Context!11000))

(assert (=> b!6176865 (= e!3762458 call!515549)))

(declare-fun bm!515542 () Bool)

(declare-fun call!515547 () (Set Context!11000))

(declare-fun call!515551 () (Set Context!11000))

(assert (=> bm!515542 (= call!515547 call!515551)))

(declare-fun bm!515543 () Bool)

(declare-fun call!515548 () List!64647)

(declare-fun call!515552 () List!64647)

(assert (=> bm!515543 (= call!515548 call!515552)))

(declare-fun b!6176866 () Bool)

(declare-fun c!1113465 () Bool)

(assert (=> b!6176866 (= c!1113465 (is-Star!16116 (h!70971 (exprs!6000 (h!70972 zl!343)))))))

(assert (=> b!6176866 (= e!3762458 e!3762459)))

(declare-fun bm!515544 () Bool)

(declare-fun c!1113467 () Bool)

(declare-fun call!515550 () (Set Context!11000))

(assert (=> bm!515544 (= call!515550 (derivationStepZipperDown!1364 (ite c!1113467 (regOne!32745 (h!70971 (exprs!6000 (h!70972 zl!343)))) (regOne!32744 (h!70971 (exprs!6000 (h!70972 zl!343))))) (ite c!1113467 lt!2338221 (Context!11001 call!515552)) (h!70973 s!2326)))))

(declare-fun b!6176867 () Bool)

(declare-fun c!1113464 () Bool)

(declare-fun e!3762460 () Bool)

(assert (=> b!6176867 (= c!1113464 e!3762460)))

(declare-fun res!2556469 () Bool)

(assert (=> b!6176867 (=> (not res!2556469) (not e!3762460))))

(assert (=> b!6176867 (= res!2556469 (is-Concat!24961 (h!70971 (exprs!6000 (h!70972 zl!343)))))))

(declare-fun e!3762462 () (Set Context!11000))

(declare-fun e!3762463 () (Set Context!11000))

(assert (=> b!6176867 (= e!3762462 e!3762463)))

(declare-fun b!6176868 () Bool)

(assert (=> b!6176868 (= e!3762462 (set.union call!515550 call!515551))))

(declare-fun b!6176869 () Bool)

(assert (=> b!6176869 (= e!3762459 call!515549)))

(declare-fun bm!515545 () Bool)

(declare-fun c!1113466 () Bool)

(declare-fun $colon$colon!1991 (List!64647 Regex!16116) List!64647)

(assert (=> bm!515545 (= call!515552 ($colon$colon!1991 (exprs!6000 lt!2338221) (ite (or c!1113464 c!1113466) (regTwo!32744 (h!70971 (exprs!6000 (h!70972 zl!343)))) (h!70971 (exprs!6000 (h!70972 zl!343))))))))

(declare-fun b!6176870 () Bool)

(assert (=> b!6176870 (= e!3762463 (set.union call!515550 call!515547))))

(declare-fun d!1936186 () Bool)

(declare-fun c!1113468 () Bool)

(assert (=> d!1936186 (= c!1113468 (and (is-ElementMatch!16116 (h!70971 (exprs!6000 (h!70972 zl!343)))) (= (c!1113407 (h!70971 (exprs!6000 (h!70972 zl!343)))) (h!70973 s!2326))))))

(declare-fun e!3762461 () (Set Context!11000))

(assert (=> d!1936186 (= (derivationStepZipperDown!1364 (h!70971 (exprs!6000 (h!70972 zl!343))) lt!2338221 (h!70973 s!2326)) e!3762461)))

(declare-fun b!6176871 () Bool)

(assert (=> b!6176871 (= e!3762461 e!3762462)))

(assert (=> b!6176871 (= c!1113467 (is-Union!16116 (h!70971 (exprs!6000 (h!70972 zl!343)))))))

(declare-fun b!6176872 () Bool)

(assert (=> b!6176872 (= e!3762460 (nullable!6109 (regOne!32744 (h!70971 (exprs!6000 (h!70972 zl!343))))))))

(declare-fun bm!515546 () Bool)

(assert (=> bm!515546 (= call!515549 call!515547)))

(declare-fun b!6176873 () Bool)

(assert (=> b!6176873 (= e!3762461 (set.insert lt!2338221 (as set.empty (Set Context!11000))))))

(declare-fun bm!515547 () Bool)

(assert (=> bm!515547 (= call!515551 (derivationStepZipperDown!1364 (ite c!1113467 (regTwo!32745 (h!70971 (exprs!6000 (h!70972 zl!343)))) (ite c!1113464 (regTwo!32744 (h!70971 (exprs!6000 (h!70972 zl!343)))) (ite c!1113466 (regOne!32744 (h!70971 (exprs!6000 (h!70972 zl!343)))) (reg!16445 (h!70971 (exprs!6000 (h!70972 zl!343))))))) (ite (or c!1113467 c!1113464) lt!2338221 (Context!11001 call!515548)) (h!70973 s!2326)))))

(declare-fun b!6176874 () Bool)

(assert (=> b!6176874 (= e!3762463 e!3762458)))

(assert (=> b!6176874 (= c!1113466 (is-Concat!24961 (h!70971 (exprs!6000 (h!70972 zl!343)))))))

(assert (= (and d!1936186 c!1113468) b!6176873))

(assert (= (and d!1936186 (not c!1113468)) b!6176871))

(assert (= (and b!6176871 c!1113467) b!6176868))

(assert (= (and b!6176871 (not c!1113467)) b!6176867))

(assert (= (and b!6176867 res!2556469) b!6176872))

(assert (= (and b!6176867 c!1113464) b!6176870))

(assert (= (and b!6176867 (not c!1113464)) b!6176874))

(assert (= (and b!6176874 c!1113466) b!6176865))

(assert (= (and b!6176874 (not c!1113466)) b!6176866))

(assert (= (and b!6176866 c!1113465) b!6176869))

(assert (= (and b!6176866 (not c!1113465)) b!6176864))

(assert (= (or b!6176865 b!6176869) bm!515543))

(assert (= (or b!6176865 b!6176869) bm!515546))

(assert (= (or b!6176870 bm!515543) bm!515545))

(assert (= (or b!6176870 bm!515546) bm!515542))

(assert (= (or b!6176868 bm!515542) bm!515547))

(assert (= (or b!6176868 b!6176870) bm!515544))

(declare-fun m!7012952 () Bool)

(assert (=> bm!515545 m!7012952))

(declare-fun m!7012954 () Bool)

(assert (=> bm!515544 m!7012954))

(declare-fun m!7012956 () Bool)

(assert (=> b!6176872 m!7012956))

(declare-fun m!7012958 () Bool)

(assert (=> bm!515547 m!7012958))

(declare-fun m!7012960 () Bool)

(assert (=> b!6176873 m!7012960))

(assert (=> b!6176614 d!1936186))

(declare-fun d!1936188 () Bool)

(declare-fun c!1113470 () Bool)

(declare-fun e!3762466 () Bool)

(assert (=> d!1936188 (= c!1113470 e!3762466)))

(declare-fun res!2556470 () Bool)

(assert (=> d!1936188 (=> (not res!2556470) (not e!3762466))))

(assert (=> d!1936188 (= res!2556470 (is-Cons!64523 (exprs!6000 lt!2338221)))))

(declare-fun e!3762464 () (Set Context!11000))

(assert (=> d!1936188 (= (derivationStepZipperUp!1290 lt!2338221 (h!70973 s!2326)) e!3762464)))

(declare-fun b!6176875 () Bool)

(declare-fun call!515553 () (Set Context!11000))

(assert (=> b!6176875 (= e!3762464 (set.union call!515553 (derivationStepZipperUp!1290 (Context!11001 (t!378153 (exprs!6000 lt!2338221))) (h!70973 s!2326))))))

(declare-fun b!6176876 () Bool)

(assert (=> b!6176876 (= e!3762466 (nullable!6109 (h!70971 (exprs!6000 lt!2338221))))))

(declare-fun bm!515548 () Bool)

(assert (=> bm!515548 (= call!515553 (derivationStepZipperDown!1364 (h!70971 (exprs!6000 lt!2338221)) (Context!11001 (t!378153 (exprs!6000 lt!2338221))) (h!70973 s!2326)))))

(declare-fun b!6176877 () Bool)

(declare-fun e!3762465 () (Set Context!11000))

(assert (=> b!6176877 (= e!3762465 (as set.empty (Set Context!11000)))))

(declare-fun b!6176878 () Bool)

(assert (=> b!6176878 (= e!3762464 e!3762465)))

(declare-fun c!1113469 () Bool)

(assert (=> b!6176878 (= c!1113469 (is-Cons!64523 (exprs!6000 lt!2338221)))))

(declare-fun b!6176879 () Bool)

(assert (=> b!6176879 (= e!3762465 call!515553)))

(assert (= (and d!1936188 res!2556470) b!6176876))

(assert (= (and d!1936188 c!1113470) b!6176875))

(assert (= (and d!1936188 (not c!1113470)) b!6176878))

(assert (= (and b!6176878 c!1113469) b!6176879))

(assert (= (and b!6176878 (not c!1113469)) b!6176877))

(assert (= (or b!6176875 b!6176879) bm!515548))

(declare-fun m!7012962 () Bool)

(assert (=> b!6176875 m!7012962))

(declare-fun m!7012964 () Bool)

(assert (=> b!6176876 m!7012964))

(declare-fun m!7012966 () Bool)

(assert (=> bm!515548 m!7012966))

(assert (=> b!6176614 d!1936188))

(declare-fun d!1936190 () Bool)

(declare-fun c!1113471 () Bool)

(assert (=> d!1936190 (= c!1113471 (isEmpty!36506 s!2326))))

(declare-fun e!3762467 () Bool)

(assert (=> d!1936190 (= (matchZipper!2128 lt!2338202 s!2326) e!3762467)))

(declare-fun b!6176880 () Bool)

(assert (=> b!6176880 (= e!3762467 (nullableZipper!1895 lt!2338202))))

(declare-fun b!6176881 () Bool)

(assert (=> b!6176881 (= e!3762467 (matchZipper!2128 (derivationStepZipper!2087 lt!2338202 (head!12749 s!2326)) (tail!11834 s!2326)))))

(assert (= (and d!1936190 c!1113471) b!6176880))

(assert (= (and d!1936190 (not c!1113471)) b!6176881))

(declare-fun m!7012968 () Bool)

(assert (=> d!1936190 m!7012968))

(declare-fun m!7012970 () Bool)

(assert (=> b!6176880 m!7012970))

(declare-fun m!7012972 () Bool)

(assert (=> b!6176881 m!7012972))

(assert (=> b!6176881 m!7012972))

(declare-fun m!7012974 () Bool)

(assert (=> b!6176881 m!7012974))

(declare-fun m!7012976 () Bool)

(assert (=> b!6176881 m!7012976))

(assert (=> b!6176881 m!7012974))

(assert (=> b!6176881 m!7012976))

(declare-fun m!7012978 () Bool)

(assert (=> b!6176881 m!7012978))

(assert (=> b!6176613 d!1936190))

(declare-fun d!1936192 () Bool)

(assert (=> d!1936192 (= (nullable!6109 (regTwo!32745 (regOne!32744 r!7292))) (nullableFct!2071 (regTwo!32745 (regOne!32744 r!7292))))))

(declare-fun bs!1531744 () Bool)

(assert (= bs!1531744 d!1936192))

(declare-fun m!7012980 () Bool)

(assert (=> bs!1531744 m!7012980))

(assert (=> b!6176632 d!1936192))

(declare-fun d!1936194 () Bool)

(assert (=> d!1936194 (= (flatMap!1621 lt!2338202 lambda!337208) (dynLambda!25446 lambda!337208 lt!2338190))))

(declare-fun lt!2338352 () Unit!157707)

(assert (=> d!1936194 (= lt!2338352 (choose!45902 lt!2338202 lt!2338190 lambda!337208))))

(assert (=> d!1936194 (= lt!2338202 (set.insert lt!2338190 (as set.empty (Set Context!11000))))))

(assert (=> d!1936194 (= (lemmaFlatMapOnSingletonSet!1147 lt!2338202 lt!2338190 lambda!337208) lt!2338352)))

(declare-fun b_lambda!235103 () Bool)

(assert (=> (not b_lambda!235103) (not d!1936194)))

(declare-fun bs!1531745 () Bool)

(assert (= bs!1531745 d!1936194))

(assert (=> bs!1531745 m!7012692))

(declare-fun m!7012982 () Bool)

(assert (=> bs!1531745 m!7012982))

(declare-fun m!7012984 () Bool)

(assert (=> bs!1531745 m!7012984))

(assert (=> bs!1531745 m!7012688))

(assert (=> b!6176632 d!1936194))

(declare-fun d!1936196 () Bool)

(declare-fun c!1113473 () Bool)

(declare-fun e!3762470 () Bool)

(assert (=> d!1936196 (= c!1113473 e!3762470)))

(declare-fun res!2556471 () Bool)

(assert (=> d!1936196 (=> (not res!2556471) (not e!3762470))))

(assert (=> d!1936196 (= res!2556471 (is-Cons!64523 (exprs!6000 lt!2338199)))))

(declare-fun e!3762468 () (Set Context!11000))

(assert (=> d!1936196 (= (derivationStepZipperUp!1290 lt!2338199 (h!70973 s!2326)) e!3762468)))

(declare-fun call!515554 () (Set Context!11000))

(declare-fun b!6176882 () Bool)

(assert (=> b!6176882 (= e!3762468 (set.union call!515554 (derivationStepZipperUp!1290 (Context!11001 (t!378153 (exprs!6000 lt!2338199))) (h!70973 s!2326))))))

(declare-fun b!6176883 () Bool)

(assert (=> b!6176883 (= e!3762470 (nullable!6109 (h!70971 (exprs!6000 lt!2338199))))))

(declare-fun bm!515549 () Bool)

(assert (=> bm!515549 (= call!515554 (derivationStepZipperDown!1364 (h!70971 (exprs!6000 lt!2338199)) (Context!11001 (t!378153 (exprs!6000 lt!2338199))) (h!70973 s!2326)))))

(declare-fun b!6176884 () Bool)

(declare-fun e!3762469 () (Set Context!11000))

(assert (=> b!6176884 (= e!3762469 (as set.empty (Set Context!11000)))))

(declare-fun b!6176885 () Bool)

(assert (=> b!6176885 (= e!3762468 e!3762469)))

(declare-fun c!1113472 () Bool)

(assert (=> b!6176885 (= c!1113472 (is-Cons!64523 (exprs!6000 lt!2338199)))))

(declare-fun b!6176886 () Bool)

(assert (=> b!6176886 (= e!3762469 call!515554)))

(assert (= (and d!1936196 res!2556471) b!6176883))

(assert (= (and d!1936196 c!1113473) b!6176882))

(assert (= (and d!1936196 (not c!1113473)) b!6176885))

(assert (= (and b!6176885 c!1113472) b!6176886))

(assert (= (and b!6176885 (not c!1113472)) b!6176884))

(assert (= (or b!6176882 b!6176886) bm!515549))

(declare-fun m!7012986 () Bool)

(assert (=> b!6176882 m!7012986))

(declare-fun m!7012988 () Bool)

(assert (=> b!6176883 m!7012988))

(declare-fun m!7012990 () Bool)

(assert (=> bm!515549 m!7012990))

(assert (=> b!6176632 d!1936196))

(declare-fun d!1936198 () Bool)

(declare-fun c!1113475 () Bool)

(declare-fun e!3762473 () Bool)

(assert (=> d!1936198 (= c!1113475 e!3762473)))

(declare-fun res!2556472 () Bool)

(assert (=> d!1936198 (=> (not res!2556472) (not e!3762473))))

(assert (=> d!1936198 (= res!2556472 (is-Cons!64523 (exprs!6000 lt!2338190)))))

(declare-fun e!3762471 () (Set Context!11000))

(assert (=> d!1936198 (= (derivationStepZipperUp!1290 lt!2338190 (h!70973 s!2326)) e!3762471)))

(declare-fun call!515555 () (Set Context!11000))

(declare-fun b!6176887 () Bool)

(assert (=> b!6176887 (= e!3762471 (set.union call!515555 (derivationStepZipperUp!1290 (Context!11001 (t!378153 (exprs!6000 lt!2338190))) (h!70973 s!2326))))))

(declare-fun b!6176888 () Bool)

(assert (=> b!6176888 (= e!3762473 (nullable!6109 (h!70971 (exprs!6000 lt!2338190))))))

(declare-fun bm!515550 () Bool)

(assert (=> bm!515550 (= call!515555 (derivationStepZipperDown!1364 (h!70971 (exprs!6000 lt!2338190)) (Context!11001 (t!378153 (exprs!6000 lt!2338190))) (h!70973 s!2326)))))

(declare-fun b!6176889 () Bool)

(declare-fun e!3762472 () (Set Context!11000))

(assert (=> b!6176889 (= e!3762472 (as set.empty (Set Context!11000)))))

(declare-fun b!6176890 () Bool)

(assert (=> b!6176890 (= e!3762471 e!3762472)))

(declare-fun c!1113474 () Bool)

(assert (=> b!6176890 (= c!1113474 (is-Cons!64523 (exprs!6000 lt!2338190)))))

(declare-fun b!6176891 () Bool)

(assert (=> b!6176891 (= e!3762472 call!515555)))

(assert (= (and d!1936198 res!2556472) b!6176888))

(assert (= (and d!1936198 c!1113475) b!6176887))

(assert (= (and d!1936198 (not c!1113475)) b!6176890))

(assert (= (and b!6176890 c!1113474) b!6176891))

(assert (= (and b!6176890 (not c!1113474)) b!6176889))

(assert (= (or b!6176887 b!6176891) bm!515550))

(declare-fun m!7012992 () Bool)

(assert (=> b!6176887 m!7012992))

(declare-fun m!7012994 () Bool)

(assert (=> b!6176888 m!7012994))

(declare-fun m!7012996 () Bool)

(assert (=> bm!515550 m!7012996))

(assert (=> b!6176632 d!1936198))

(declare-fun d!1936200 () Bool)

(assert (=> d!1936200 (= (flatMap!1621 lt!2338212 lambda!337208) (choose!45903 lt!2338212 lambda!337208))))

(declare-fun bs!1531746 () Bool)

(assert (= bs!1531746 d!1936200))

(declare-fun m!7012998 () Bool)

(assert (=> bs!1531746 m!7012998))

(assert (=> b!6176632 d!1936200))

(declare-fun d!1936202 () Bool)

(assert (=> d!1936202 (= (flatMap!1621 lt!2338212 lambda!337208) (dynLambda!25446 lambda!337208 lt!2338199))))

(declare-fun lt!2338353 () Unit!157707)

(assert (=> d!1936202 (= lt!2338353 (choose!45902 lt!2338212 lt!2338199 lambda!337208))))

(assert (=> d!1936202 (= lt!2338212 (set.insert lt!2338199 (as set.empty (Set Context!11000))))))

(assert (=> d!1936202 (= (lemmaFlatMapOnSingletonSet!1147 lt!2338212 lt!2338199 lambda!337208) lt!2338353)))

(declare-fun b_lambda!235105 () Bool)

(assert (=> (not b_lambda!235105) (not d!1936202)))

(declare-fun bs!1531747 () Bool)

(assert (= bs!1531747 d!1936202))

(assert (=> bs!1531747 m!7012690))

(declare-fun m!7013000 () Bool)

(assert (=> bs!1531747 m!7013000))

(declare-fun m!7013002 () Bool)

(assert (=> bs!1531747 m!7013002))

(assert (=> bs!1531747 m!7012694))

(assert (=> b!6176632 d!1936202))

(declare-fun d!1936204 () Bool)

(assert (=> d!1936204 (= (nullable!6109 (regOne!32745 (regOne!32744 r!7292))) (nullableFct!2071 (regOne!32745 (regOne!32744 r!7292))))))

(declare-fun bs!1531748 () Bool)

(assert (= bs!1531748 d!1936204))

(declare-fun m!7013004 () Bool)

(assert (=> bs!1531748 m!7013004))

(assert (=> b!6176632 d!1936204))

(declare-fun d!1936206 () Bool)

(declare-fun c!1113476 () Bool)

(assert (=> d!1936206 (= c!1113476 (isEmpty!36506 s!2326))))

(declare-fun e!3762474 () Bool)

(assert (=> d!1936206 (= (matchZipper!2128 lt!2338212 s!2326) e!3762474)))

(declare-fun b!6176892 () Bool)

(assert (=> b!6176892 (= e!3762474 (nullableZipper!1895 lt!2338212))))

(declare-fun b!6176893 () Bool)

(assert (=> b!6176893 (= e!3762474 (matchZipper!2128 (derivationStepZipper!2087 lt!2338212 (head!12749 s!2326)) (tail!11834 s!2326)))))

(assert (= (and d!1936206 c!1113476) b!6176892))

(assert (= (and d!1936206 (not c!1113476)) b!6176893))

(assert (=> d!1936206 m!7012968))

(declare-fun m!7013006 () Bool)

(assert (=> b!6176892 m!7013006))

(assert (=> b!6176893 m!7012972))

(assert (=> b!6176893 m!7012972))

(declare-fun m!7013008 () Bool)

(assert (=> b!6176893 m!7013008))

(assert (=> b!6176893 m!7012976))

(assert (=> b!6176893 m!7013008))

(assert (=> b!6176893 m!7012976))

(declare-fun m!7013010 () Bool)

(assert (=> b!6176893 m!7013010))

(assert (=> b!6176632 d!1936206))

(declare-fun d!1936208 () Bool)

(assert (=> d!1936208 (= (flatMap!1621 lt!2338202 lambda!337208) (choose!45903 lt!2338202 lambda!337208))))

(declare-fun bs!1531749 () Bool)

(assert (= bs!1531749 d!1936208))

(declare-fun m!7013012 () Bool)

(assert (=> bs!1531749 m!7013012))

(assert (=> b!6176632 d!1936208))

(declare-fun d!1936210 () Bool)

(declare-fun c!1113477 () Bool)

(assert (=> d!1936210 (= c!1113477 (isEmpty!36506 s!2326))))

(declare-fun e!3762475 () Bool)

(assert (=> d!1936210 (= (matchZipper!2128 z!1189 s!2326) e!3762475)))

(declare-fun b!6176894 () Bool)

(assert (=> b!6176894 (= e!3762475 (nullableZipper!1895 z!1189))))

(declare-fun b!6176895 () Bool)

(assert (=> b!6176895 (= e!3762475 (matchZipper!2128 (derivationStepZipper!2087 z!1189 (head!12749 s!2326)) (tail!11834 s!2326)))))

(assert (= (and d!1936210 c!1113477) b!6176894))

(assert (= (and d!1936210 (not c!1113477)) b!6176895))

(assert (=> d!1936210 m!7012968))

(declare-fun m!7013014 () Bool)

(assert (=> b!6176894 m!7013014))

(assert (=> b!6176895 m!7012972))

(assert (=> b!6176895 m!7012972))

(declare-fun m!7013016 () Bool)

(assert (=> b!6176895 m!7013016))

(assert (=> b!6176895 m!7012976))

(assert (=> b!6176895 m!7013016))

(assert (=> b!6176895 m!7012976))

(declare-fun m!7013018 () Bool)

(assert (=> b!6176895 m!7013018))

(assert (=> b!6176632 d!1936210))

(declare-fun b!6176896 () Bool)

(declare-fun e!3762477 () (Set Context!11000))

(assert (=> b!6176896 (= e!3762477 (as set.empty (Set Context!11000)))))

(declare-fun b!6176897 () Bool)

(declare-fun e!3762476 () (Set Context!11000))

(declare-fun call!515558 () (Set Context!11000))

(assert (=> b!6176897 (= e!3762476 call!515558)))

(declare-fun bm!515551 () Bool)

(declare-fun call!515556 () (Set Context!11000))

(declare-fun call!515560 () (Set Context!11000))

(assert (=> bm!515551 (= call!515556 call!515560)))

(declare-fun bm!515552 () Bool)

(declare-fun call!515557 () List!64647)

(declare-fun call!515561 () List!64647)

(assert (=> bm!515552 (= call!515557 call!515561)))

(declare-fun b!6176898 () Bool)

(declare-fun c!1113479 () Bool)

(assert (=> b!6176898 (= c!1113479 (is-Star!16116 (regTwo!32745 (regOne!32744 r!7292))))))

(assert (=> b!6176898 (= e!3762476 e!3762477)))

(declare-fun bm!515553 () Bool)

(declare-fun c!1113481 () Bool)

(declare-fun call!515559 () (Set Context!11000))

(assert (=> bm!515553 (= call!515559 (derivationStepZipperDown!1364 (ite c!1113481 (regOne!32745 (regTwo!32745 (regOne!32744 r!7292))) (regOne!32744 (regTwo!32745 (regOne!32744 r!7292)))) (ite c!1113481 lt!2338221 (Context!11001 call!515561)) (h!70973 s!2326)))))

(declare-fun b!6176899 () Bool)

(declare-fun c!1113478 () Bool)

(declare-fun e!3762478 () Bool)

(assert (=> b!6176899 (= c!1113478 e!3762478)))

(declare-fun res!2556473 () Bool)

(assert (=> b!6176899 (=> (not res!2556473) (not e!3762478))))

(assert (=> b!6176899 (= res!2556473 (is-Concat!24961 (regTwo!32745 (regOne!32744 r!7292))))))

(declare-fun e!3762480 () (Set Context!11000))

(declare-fun e!3762481 () (Set Context!11000))

(assert (=> b!6176899 (= e!3762480 e!3762481)))

(declare-fun b!6176900 () Bool)

(assert (=> b!6176900 (= e!3762480 (set.union call!515559 call!515560))))

(declare-fun b!6176901 () Bool)

(assert (=> b!6176901 (= e!3762477 call!515558)))

(declare-fun bm!515554 () Bool)

(declare-fun c!1113480 () Bool)

(assert (=> bm!515554 (= call!515561 ($colon$colon!1991 (exprs!6000 lt!2338221) (ite (or c!1113478 c!1113480) (regTwo!32744 (regTwo!32745 (regOne!32744 r!7292))) (regTwo!32745 (regOne!32744 r!7292)))))))

(declare-fun b!6176902 () Bool)

(assert (=> b!6176902 (= e!3762481 (set.union call!515559 call!515556))))

(declare-fun d!1936212 () Bool)

(declare-fun c!1113482 () Bool)

(assert (=> d!1936212 (= c!1113482 (and (is-ElementMatch!16116 (regTwo!32745 (regOne!32744 r!7292))) (= (c!1113407 (regTwo!32745 (regOne!32744 r!7292))) (h!70973 s!2326))))))

(declare-fun e!3762479 () (Set Context!11000))

(assert (=> d!1936212 (= (derivationStepZipperDown!1364 (regTwo!32745 (regOne!32744 r!7292)) lt!2338221 (h!70973 s!2326)) e!3762479)))

(declare-fun b!6176903 () Bool)

(assert (=> b!6176903 (= e!3762479 e!3762480)))

(assert (=> b!6176903 (= c!1113481 (is-Union!16116 (regTwo!32745 (regOne!32744 r!7292))))))

(declare-fun b!6176904 () Bool)

(assert (=> b!6176904 (= e!3762478 (nullable!6109 (regOne!32744 (regTwo!32745 (regOne!32744 r!7292)))))))

(declare-fun bm!515555 () Bool)

(assert (=> bm!515555 (= call!515558 call!515556)))

(declare-fun b!6176905 () Bool)

(assert (=> b!6176905 (= e!3762479 (set.insert lt!2338221 (as set.empty (Set Context!11000))))))

(declare-fun bm!515556 () Bool)

(assert (=> bm!515556 (= call!515560 (derivationStepZipperDown!1364 (ite c!1113481 (regTwo!32745 (regTwo!32745 (regOne!32744 r!7292))) (ite c!1113478 (regTwo!32744 (regTwo!32745 (regOne!32744 r!7292))) (ite c!1113480 (regOne!32744 (regTwo!32745 (regOne!32744 r!7292))) (reg!16445 (regTwo!32745 (regOne!32744 r!7292)))))) (ite (or c!1113481 c!1113478) lt!2338221 (Context!11001 call!515557)) (h!70973 s!2326)))))

(declare-fun b!6176906 () Bool)

(assert (=> b!6176906 (= e!3762481 e!3762476)))

(assert (=> b!6176906 (= c!1113480 (is-Concat!24961 (regTwo!32745 (regOne!32744 r!7292))))))

(assert (= (and d!1936212 c!1113482) b!6176905))

(assert (= (and d!1936212 (not c!1113482)) b!6176903))

(assert (= (and b!6176903 c!1113481) b!6176900))

(assert (= (and b!6176903 (not c!1113481)) b!6176899))

(assert (= (and b!6176899 res!2556473) b!6176904))

(assert (= (and b!6176899 c!1113478) b!6176902))

(assert (= (and b!6176899 (not c!1113478)) b!6176906))

(assert (= (and b!6176906 c!1113480) b!6176897))

(assert (= (and b!6176906 (not c!1113480)) b!6176898))

(assert (= (and b!6176898 c!1113479) b!6176901))

(assert (= (and b!6176898 (not c!1113479)) b!6176896))

(assert (= (or b!6176897 b!6176901) bm!515552))

(assert (= (or b!6176897 b!6176901) bm!515555))

(assert (= (or b!6176902 bm!515552) bm!515554))

(assert (= (or b!6176902 bm!515555) bm!515551))

(assert (= (or b!6176900 bm!515551) bm!515556))

(assert (= (or b!6176900 b!6176902) bm!515553))

(declare-fun m!7013020 () Bool)

(assert (=> bm!515554 m!7013020))

(declare-fun m!7013022 () Bool)

(assert (=> bm!515553 m!7013022))

(declare-fun m!7013024 () Bool)

(assert (=> b!6176904 m!7013024))

(declare-fun m!7013026 () Bool)

(assert (=> bm!515556 m!7013026))

(assert (=> b!6176905 m!7012960))

(assert (=> b!6176622 d!1936212))

(declare-fun b!6176907 () Bool)

(declare-fun e!3762483 () (Set Context!11000))

(assert (=> b!6176907 (= e!3762483 (as set.empty (Set Context!11000)))))

(declare-fun b!6176908 () Bool)

(declare-fun e!3762482 () (Set Context!11000))

(declare-fun call!515564 () (Set Context!11000))

(assert (=> b!6176908 (= e!3762482 call!515564)))

(declare-fun bm!515557 () Bool)

(declare-fun call!515562 () (Set Context!11000))

(declare-fun call!515566 () (Set Context!11000))

(assert (=> bm!515557 (= call!515562 call!515566)))

(declare-fun bm!515558 () Bool)

(declare-fun call!515563 () List!64647)

(declare-fun call!515567 () List!64647)

(assert (=> bm!515558 (= call!515563 call!515567)))

(declare-fun b!6176909 () Bool)

(declare-fun c!1113484 () Bool)

(assert (=> b!6176909 (= c!1113484 (is-Star!16116 (regOne!32745 (regOne!32744 r!7292))))))

(assert (=> b!6176909 (= e!3762482 e!3762483)))

(declare-fun c!1113486 () Bool)

(declare-fun bm!515559 () Bool)

(declare-fun call!515565 () (Set Context!11000))

(assert (=> bm!515559 (= call!515565 (derivationStepZipperDown!1364 (ite c!1113486 (regOne!32745 (regOne!32745 (regOne!32744 r!7292))) (regOne!32744 (regOne!32745 (regOne!32744 r!7292)))) (ite c!1113486 lt!2338221 (Context!11001 call!515567)) (h!70973 s!2326)))))

(declare-fun b!6176910 () Bool)

(declare-fun c!1113483 () Bool)

(declare-fun e!3762484 () Bool)

(assert (=> b!6176910 (= c!1113483 e!3762484)))

(declare-fun res!2556474 () Bool)

(assert (=> b!6176910 (=> (not res!2556474) (not e!3762484))))

(assert (=> b!6176910 (= res!2556474 (is-Concat!24961 (regOne!32745 (regOne!32744 r!7292))))))

(declare-fun e!3762486 () (Set Context!11000))

(declare-fun e!3762487 () (Set Context!11000))

(assert (=> b!6176910 (= e!3762486 e!3762487)))

(declare-fun b!6176911 () Bool)

(assert (=> b!6176911 (= e!3762486 (set.union call!515565 call!515566))))

(declare-fun b!6176912 () Bool)

(assert (=> b!6176912 (= e!3762483 call!515564)))

(declare-fun c!1113485 () Bool)

(declare-fun bm!515560 () Bool)

(assert (=> bm!515560 (= call!515567 ($colon$colon!1991 (exprs!6000 lt!2338221) (ite (or c!1113483 c!1113485) (regTwo!32744 (regOne!32745 (regOne!32744 r!7292))) (regOne!32745 (regOne!32744 r!7292)))))))

(declare-fun b!6176913 () Bool)

(assert (=> b!6176913 (= e!3762487 (set.union call!515565 call!515562))))

(declare-fun d!1936214 () Bool)

(declare-fun c!1113487 () Bool)

(assert (=> d!1936214 (= c!1113487 (and (is-ElementMatch!16116 (regOne!32745 (regOne!32744 r!7292))) (= (c!1113407 (regOne!32745 (regOne!32744 r!7292))) (h!70973 s!2326))))))

(declare-fun e!3762485 () (Set Context!11000))

(assert (=> d!1936214 (= (derivationStepZipperDown!1364 (regOne!32745 (regOne!32744 r!7292)) lt!2338221 (h!70973 s!2326)) e!3762485)))

(declare-fun b!6176914 () Bool)

(assert (=> b!6176914 (= e!3762485 e!3762486)))

(assert (=> b!6176914 (= c!1113486 (is-Union!16116 (regOne!32745 (regOne!32744 r!7292))))))

(declare-fun b!6176915 () Bool)

(assert (=> b!6176915 (= e!3762484 (nullable!6109 (regOne!32744 (regOne!32745 (regOne!32744 r!7292)))))))

(declare-fun bm!515561 () Bool)

(assert (=> bm!515561 (= call!515564 call!515562)))

(declare-fun b!6176916 () Bool)

(assert (=> b!6176916 (= e!3762485 (set.insert lt!2338221 (as set.empty (Set Context!11000))))))

(declare-fun bm!515562 () Bool)

(assert (=> bm!515562 (= call!515566 (derivationStepZipperDown!1364 (ite c!1113486 (regTwo!32745 (regOne!32745 (regOne!32744 r!7292))) (ite c!1113483 (regTwo!32744 (regOne!32745 (regOne!32744 r!7292))) (ite c!1113485 (regOne!32744 (regOne!32745 (regOne!32744 r!7292))) (reg!16445 (regOne!32745 (regOne!32744 r!7292)))))) (ite (or c!1113486 c!1113483) lt!2338221 (Context!11001 call!515563)) (h!70973 s!2326)))))

(declare-fun b!6176917 () Bool)

(assert (=> b!6176917 (= e!3762487 e!3762482)))

(assert (=> b!6176917 (= c!1113485 (is-Concat!24961 (regOne!32745 (regOne!32744 r!7292))))))

(assert (= (and d!1936214 c!1113487) b!6176916))

(assert (= (and d!1936214 (not c!1113487)) b!6176914))

(assert (= (and b!6176914 c!1113486) b!6176911))

(assert (= (and b!6176914 (not c!1113486)) b!6176910))

(assert (= (and b!6176910 res!2556474) b!6176915))

(assert (= (and b!6176910 c!1113483) b!6176913))

(assert (= (and b!6176910 (not c!1113483)) b!6176917))

(assert (= (and b!6176917 c!1113485) b!6176908))

(assert (= (and b!6176917 (not c!1113485)) b!6176909))

(assert (= (and b!6176909 c!1113484) b!6176912))

(assert (= (and b!6176909 (not c!1113484)) b!6176907))

(assert (= (or b!6176908 b!6176912) bm!515558))

(assert (= (or b!6176908 b!6176912) bm!515561))

(assert (= (or b!6176913 bm!515558) bm!515560))

(assert (= (or b!6176913 bm!515561) bm!515557))

(assert (= (or b!6176911 bm!515557) bm!515562))

(assert (= (or b!6176911 b!6176913) bm!515559))

(declare-fun m!7013028 () Bool)

(assert (=> bm!515560 m!7013028))

(declare-fun m!7013030 () Bool)

(assert (=> bm!515559 m!7013030))

(declare-fun m!7013032 () Bool)

(assert (=> b!6176915 m!7013032))

(declare-fun m!7013034 () Bool)

(assert (=> bm!515562 m!7013034))

(assert (=> b!6176916 m!7012960))

(assert (=> b!6176622 d!1936214))

(declare-fun b!6176936 () Bool)

(declare-fun res!2556488 () Bool)

(declare-fun e!3762508 () Bool)

(assert (=> b!6176936 (=> (not res!2556488) (not e!3762508))))

(declare-fun call!515576 () Bool)

(assert (=> b!6176936 (= res!2556488 call!515576)))

(declare-fun e!3762506 () Bool)

(assert (=> b!6176936 (= e!3762506 e!3762508)))

(declare-fun b!6176937 () Bool)

(declare-fun e!3762504 () Bool)

(declare-fun e!3762507 () Bool)

(assert (=> b!6176937 (= e!3762504 e!3762507)))

(declare-fun res!2556487 () Bool)

(assert (=> b!6176937 (= res!2556487 (not (nullable!6109 (reg!16445 r!7292))))))

(assert (=> b!6176937 (=> (not res!2556487) (not e!3762507))))

(declare-fun bm!515569 () Bool)

(declare-fun c!1113492 () Bool)

(assert (=> bm!515569 (= call!515576 (validRegex!7852 (ite c!1113492 (regOne!32745 r!7292) (regOne!32744 r!7292))))))

(declare-fun b!6176938 () Bool)

(declare-fun e!3762502 () Bool)

(assert (=> b!6176938 (= e!3762502 e!3762504)))

(declare-fun c!1113493 () Bool)

(assert (=> b!6176938 (= c!1113493 (is-Star!16116 r!7292))))

(declare-fun bm!515570 () Bool)

(declare-fun call!515575 () Bool)

(declare-fun call!515574 () Bool)

(assert (=> bm!515570 (= call!515575 call!515574)))

(declare-fun b!6176939 () Bool)

(assert (=> b!6176939 (= e!3762508 call!515575)))

(declare-fun bm!515571 () Bool)

(assert (=> bm!515571 (= call!515574 (validRegex!7852 (ite c!1113493 (reg!16445 r!7292) (ite c!1113492 (regTwo!32745 r!7292) (regTwo!32744 r!7292)))))))

(declare-fun b!6176940 () Bool)

(assert (=> b!6176940 (= e!3762507 call!515574)))

(declare-fun b!6176941 () Bool)

(declare-fun e!3762503 () Bool)

(assert (=> b!6176941 (= e!3762503 call!515575)))

(declare-fun b!6176942 () Bool)

(declare-fun res!2556485 () Bool)

(declare-fun e!3762505 () Bool)

(assert (=> b!6176942 (=> res!2556485 e!3762505)))

(assert (=> b!6176942 (= res!2556485 (not (is-Concat!24961 r!7292)))))

(assert (=> b!6176942 (= e!3762506 e!3762505)))

(declare-fun b!6176943 () Bool)

(assert (=> b!6176943 (= e!3762505 e!3762503)))

(declare-fun res!2556489 () Bool)

(assert (=> b!6176943 (=> (not res!2556489) (not e!3762503))))

(assert (=> b!6176943 (= res!2556489 call!515576)))

(declare-fun d!1936216 () Bool)

(declare-fun res!2556486 () Bool)

(assert (=> d!1936216 (=> res!2556486 e!3762502)))

(assert (=> d!1936216 (= res!2556486 (is-ElementMatch!16116 r!7292))))

(assert (=> d!1936216 (= (validRegex!7852 r!7292) e!3762502)))

(declare-fun b!6176944 () Bool)

(assert (=> b!6176944 (= e!3762504 e!3762506)))

(assert (=> b!6176944 (= c!1113492 (is-Union!16116 r!7292))))

(assert (= (and d!1936216 (not res!2556486)) b!6176938))

(assert (= (and b!6176938 c!1113493) b!6176937))

(assert (= (and b!6176938 (not c!1113493)) b!6176944))

(assert (= (and b!6176937 res!2556487) b!6176940))

(assert (= (and b!6176944 c!1113492) b!6176936))

(assert (= (and b!6176944 (not c!1113492)) b!6176942))

(assert (= (and b!6176936 res!2556488) b!6176939))

(assert (= (and b!6176942 (not res!2556485)) b!6176943))

(assert (= (and b!6176943 res!2556489) b!6176941))

(assert (= (or b!6176939 b!6176941) bm!515570))

(assert (= (or b!6176936 b!6176943) bm!515569))

(assert (= (or b!6176940 bm!515570) bm!515571))

(declare-fun m!7013036 () Bool)

(assert (=> b!6176937 m!7013036))

(declare-fun m!7013038 () Bool)

(assert (=> bm!515569 m!7013038))

(declare-fun m!7013040 () Bool)

(assert (=> bm!515571 m!7013040))

(assert (=> start!616540 d!1936216))

(declare-fun d!1936218 () Bool)

(declare-fun lt!2338354 () Int)

(assert (=> d!1936218 (>= lt!2338354 0)))

(declare-fun e!3762509 () Int)

(assert (=> d!1936218 (= lt!2338354 e!3762509)))

(declare-fun c!1113494 () Bool)

(assert (=> d!1936218 (= c!1113494 (is-Cons!64524 zl!343))))

(assert (=> d!1936218 (= (zipperDepthTotal!299 zl!343) lt!2338354)))

(declare-fun b!6176945 () Bool)

(assert (=> b!6176945 (= e!3762509 (+ (contextDepthTotal!273 (h!70972 zl!343)) (zipperDepthTotal!299 (t!378154 zl!343))))))

(declare-fun b!6176946 () Bool)

(assert (=> b!6176946 (= e!3762509 0)))

(assert (= (and d!1936218 c!1113494) b!6176945))

(assert (= (and d!1936218 (not c!1113494)) b!6176946))

(declare-fun m!7013042 () Bool)

(assert (=> b!6176945 m!7013042))

(declare-fun m!7013044 () Bool)

(assert (=> b!6176945 m!7013044))

(assert (=> b!6176600 d!1936218))

(declare-fun d!1936220 () Bool)

(declare-fun lt!2338355 () Int)

(assert (=> d!1936220 (>= lt!2338355 0)))

(declare-fun e!3762510 () Int)

(assert (=> d!1936220 (= lt!2338355 e!3762510)))

(declare-fun c!1113495 () Bool)

(assert (=> d!1936220 (= c!1113495 (is-Cons!64524 lt!2338215))))

(assert (=> d!1936220 (= (zipperDepthTotal!299 lt!2338215) lt!2338355)))

(declare-fun b!6176947 () Bool)

(assert (=> b!6176947 (= e!3762510 (+ (contextDepthTotal!273 (h!70972 lt!2338215)) (zipperDepthTotal!299 (t!378154 lt!2338215))))))

(declare-fun b!6176948 () Bool)

(assert (=> b!6176948 (= e!3762510 0)))

(assert (= (and d!1936220 c!1113495) b!6176947))

(assert (= (and d!1936220 (not c!1113495)) b!6176948))

(declare-fun m!7013046 () Bool)

(assert (=> b!6176947 m!7013046))

(declare-fun m!7013048 () Bool)

(assert (=> b!6176947 m!7013048))

(assert (=> b!6176600 d!1936220))

(declare-fun d!1936222 () Bool)

(assert (=> d!1936222 (= (isEmpty!36503 (t!378154 zl!343)) (is-Nil!64524 (t!378154 zl!343)))))

(assert (=> b!6176621 d!1936222))

(declare-fun bs!1531750 () Bool)

(declare-fun d!1936224 () Bool)

(assert (= bs!1531750 (and d!1936224 d!1936162)))

(declare-fun lambda!337229 () Int)

(assert (=> bs!1531750 (= lambda!337229 lambda!337226)))

(declare-fun b!6176969 () Bool)

(declare-fun e!3762523 () Regex!16116)

(declare-fun e!3762525 () Regex!16116)

(assert (=> b!6176969 (= e!3762523 e!3762525)))

(declare-fun c!1113507 () Bool)

(assert (=> b!6176969 (= c!1113507 (is-Cons!64523 (unfocusZipperList!1537 zl!343)))))

(declare-fun b!6176970 () Bool)

(declare-fun e!3762528 () Bool)

(assert (=> b!6176970 (= e!3762528 (isEmpty!36502 (t!378153 (unfocusZipperList!1537 zl!343))))))

(declare-fun b!6176971 () Bool)

(declare-fun e!3762526 () Bool)

(declare-fun lt!2338358 () Regex!16116)

(assert (=> b!6176971 (= e!3762526 (= lt!2338358 (head!12750 (unfocusZipperList!1537 zl!343))))))

(declare-fun b!6176972 () Bool)

(assert (=> b!6176972 (= e!3762525 (Union!16116 (h!70971 (unfocusZipperList!1537 zl!343)) (generalisedUnion!1960 (t!378153 (unfocusZipperList!1537 zl!343)))))))

(declare-fun b!6176973 () Bool)

(declare-fun isUnion!971 (Regex!16116) Bool)

(assert (=> b!6176973 (= e!3762526 (isUnion!971 lt!2338358))))

(declare-fun e!3762524 () Bool)

(assert (=> d!1936224 e!3762524))

(declare-fun res!2556494 () Bool)

(assert (=> d!1936224 (=> (not res!2556494) (not e!3762524))))

(assert (=> d!1936224 (= res!2556494 (validRegex!7852 lt!2338358))))

(assert (=> d!1936224 (= lt!2338358 e!3762523)))

(declare-fun c!1113504 () Bool)

(assert (=> d!1936224 (= c!1113504 e!3762528)))

(declare-fun res!2556495 () Bool)

(assert (=> d!1936224 (=> (not res!2556495) (not e!3762528))))

(assert (=> d!1936224 (= res!2556495 (is-Cons!64523 (unfocusZipperList!1537 zl!343)))))

(assert (=> d!1936224 (forall!15235 (unfocusZipperList!1537 zl!343) lambda!337229)))

(assert (=> d!1936224 (= (generalisedUnion!1960 (unfocusZipperList!1537 zl!343)) lt!2338358)))

(declare-fun b!6176974 () Bool)

(assert (=> b!6176974 (= e!3762525 EmptyLang!16116)))

(declare-fun b!6176975 () Bool)

(declare-fun e!3762527 () Bool)

(assert (=> b!6176975 (= e!3762524 e!3762527)))

(declare-fun c!1113506 () Bool)

(assert (=> b!6176975 (= c!1113506 (isEmpty!36502 (unfocusZipperList!1537 zl!343)))))

(declare-fun b!6176976 () Bool)

(assert (=> b!6176976 (= e!3762527 e!3762526)))

(declare-fun c!1113505 () Bool)

(assert (=> b!6176976 (= c!1113505 (isEmpty!36502 (tail!11835 (unfocusZipperList!1537 zl!343))))))

(declare-fun b!6176977 () Bool)

(declare-fun isEmptyLang!1541 (Regex!16116) Bool)

(assert (=> b!6176977 (= e!3762527 (isEmptyLang!1541 lt!2338358))))

(declare-fun b!6176978 () Bool)

(assert (=> b!6176978 (= e!3762523 (h!70971 (unfocusZipperList!1537 zl!343)))))

(assert (= (and d!1936224 res!2556495) b!6176970))

(assert (= (and d!1936224 c!1113504) b!6176978))

(assert (= (and d!1936224 (not c!1113504)) b!6176969))

(assert (= (and b!6176969 c!1113507) b!6176972))

(assert (= (and b!6176969 (not c!1113507)) b!6176974))

(assert (= (and d!1936224 res!2556494) b!6176975))

(assert (= (and b!6176975 c!1113506) b!6176977))

(assert (= (and b!6176975 (not c!1113506)) b!6176976))

(assert (= (and b!6176976 c!1113505) b!6176971))

(assert (= (and b!6176976 (not c!1113505)) b!6176973))

(assert (=> b!6176971 m!7012706))

(declare-fun m!7013050 () Bool)

(assert (=> b!6176971 m!7013050))

(assert (=> b!6176976 m!7012706))

(declare-fun m!7013052 () Bool)

(assert (=> b!6176976 m!7013052))

(assert (=> b!6176976 m!7013052))

(declare-fun m!7013054 () Bool)

(assert (=> b!6176976 m!7013054))

(declare-fun m!7013056 () Bool)

(assert (=> b!6176970 m!7013056))

(declare-fun m!7013058 () Bool)

(assert (=> b!6176977 m!7013058))

(declare-fun m!7013060 () Bool)

(assert (=> b!6176973 m!7013060))

(assert (=> b!6176975 m!7012706))

(declare-fun m!7013062 () Bool)

(assert (=> b!6176975 m!7013062))

(declare-fun m!7013064 () Bool)

(assert (=> b!6176972 m!7013064))

(declare-fun m!7013066 () Bool)

(assert (=> d!1936224 m!7013066))

(assert (=> d!1936224 m!7012706))

(declare-fun m!7013068 () Bool)

(assert (=> d!1936224 m!7013068))

(assert (=> b!6176620 d!1936224))

(declare-fun bs!1531751 () Bool)

(declare-fun d!1936226 () Bool)

(assert (= bs!1531751 (and d!1936226 d!1936162)))

(declare-fun lambda!337232 () Int)

(assert (=> bs!1531751 (= lambda!337232 lambda!337226)))

(declare-fun bs!1531752 () Bool)

(assert (= bs!1531752 (and d!1936226 d!1936224)))

(assert (=> bs!1531752 (= lambda!337232 lambda!337229)))

(declare-fun lt!2338361 () List!64647)

(assert (=> d!1936226 (forall!15235 lt!2338361 lambda!337232)))

(declare-fun e!3762531 () List!64647)

(assert (=> d!1936226 (= lt!2338361 e!3762531)))

(declare-fun c!1113510 () Bool)

(assert (=> d!1936226 (= c!1113510 (is-Cons!64524 zl!343))))

(assert (=> d!1936226 (= (unfocusZipperList!1537 zl!343) lt!2338361)))

(declare-fun b!6176983 () Bool)

(assert (=> b!6176983 (= e!3762531 (Cons!64523 (generalisedConcat!1713 (exprs!6000 (h!70972 zl!343))) (unfocusZipperList!1537 (t!378154 zl!343))))))

(declare-fun b!6176984 () Bool)

(assert (=> b!6176984 (= e!3762531 Nil!64523)))

(assert (= (and d!1936226 c!1113510) b!6176983))

(assert (= (and d!1936226 (not c!1113510)) b!6176984))

(declare-fun m!7013070 () Bool)

(assert (=> d!1936226 m!7013070))

(assert (=> b!6176983 m!7012712))

(declare-fun m!7013072 () Bool)

(assert (=> b!6176983 m!7013072))

(assert (=> b!6176620 d!1936226))

(declare-fun d!1936228 () Bool)

(declare-fun e!3762532 () Bool)

(assert (=> d!1936228 (= (matchZipper!2128 (set.union lt!2338192 lt!2338207) (t!378155 s!2326)) e!3762532)))

(declare-fun res!2556496 () Bool)

(assert (=> d!1936228 (=> res!2556496 e!3762532)))

(assert (=> d!1936228 (= res!2556496 (matchZipper!2128 lt!2338192 (t!378155 s!2326)))))

(declare-fun lt!2338362 () Unit!157707)

(assert (=> d!1936228 (= lt!2338362 (choose!45901 lt!2338192 lt!2338207 (t!378155 s!2326)))))

(assert (=> d!1936228 (= (lemmaZipperConcatMatchesSameAsBothZippers!947 lt!2338192 lt!2338207 (t!378155 s!2326)) lt!2338362)))

(declare-fun b!6176985 () Bool)

(assert (=> b!6176985 (= e!3762532 (matchZipper!2128 lt!2338207 (t!378155 s!2326)))))

(assert (= (and d!1936228 (not res!2556496)) b!6176985))

(assert (=> d!1936228 m!7012744))

(assert (=> d!1936228 m!7012710))

(declare-fun m!7013074 () Bool)

(assert (=> d!1936228 m!7013074))

(assert (=> b!6176985 m!7012630))

(assert (=> b!6176619 d!1936228))

(declare-fun d!1936230 () Bool)

(declare-fun c!1113511 () Bool)

(assert (=> d!1936230 (= c!1113511 (isEmpty!36506 (t!378155 s!2326)))))

(declare-fun e!3762533 () Bool)

(assert (=> d!1936230 (= (matchZipper!2128 lt!2338192 (t!378155 s!2326)) e!3762533)))

(declare-fun b!6176986 () Bool)

(assert (=> b!6176986 (= e!3762533 (nullableZipper!1895 lt!2338192))))

(declare-fun b!6176987 () Bool)

(assert (=> b!6176987 (= e!3762533 (matchZipper!2128 (derivationStepZipper!2087 lt!2338192 (head!12749 (t!378155 s!2326))) (tail!11834 (t!378155 s!2326))))))

(assert (= (and d!1936230 c!1113511) b!6176986))

(assert (= (and d!1936230 (not c!1113511)) b!6176987))

(assert (=> d!1936230 m!7012878))

(declare-fun m!7013076 () Bool)

(assert (=> b!6176986 m!7013076))

(assert (=> b!6176987 m!7012882))

(assert (=> b!6176987 m!7012882))

(declare-fun m!7013078 () Bool)

(assert (=> b!6176987 m!7013078))

(assert (=> b!6176987 m!7012886))

(assert (=> b!6176987 m!7013078))

(assert (=> b!6176987 m!7012886))

(declare-fun m!7013080 () Bool)

(assert (=> b!6176987 m!7013080))

(assert (=> b!6176619 d!1936230))

(declare-fun d!1936232 () Bool)

(declare-fun c!1113512 () Bool)

(assert (=> d!1936232 (= c!1113512 (isEmpty!36506 (t!378155 s!2326)))))

(declare-fun e!3762534 () Bool)

(assert (=> d!1936232 (= (matchZipper!2128 (set.union lt!2338192 lt!2338207) (t!378155 s!2326)) e!3762534)))

(declare-fun b!6176988 () Bool)

(assert (=> b!6176988 (= e!3762534 (nullableZipper!1895 (set.union lt!2338192 lt!2338207)))))

(declare-fun b!6176989 () Bool)

(assert (=> b!6176989 (= e!3762534 (matchZipper!2128 (derivationStepZipper!2087 (set.union lt!2338192 lt!2338207) (head!12749 (t!378155 s!2326))) (tail!11834 (t!378155 s!2326))))))

(assert (= (and d!1936232 c!1113512) b!6176988))

(assert (= (and d!1936232 (not c!1113512)) b!6176989))

(assert (=> d!1936232 m!7012878))

(declare-fun m!7013082 () Bool)

(assert (=> b!6176988 m!7013082))

(assert (=> b!6176989 m!7012882))

(assert (=> b!6176989 m!7012882))

(declare-fun m!7013084 () Bool)

(assert (=> b!6176989 m!7013084))

(assert (=> b!6176989 m!7012886))

(assert (=> b!6176989 m!7013084))

(assert (=> b!6176989 m!7012886))

(declare-fun m!7013086 () Bool)

(assert (=> b!6176989 m!7013086))

(assert (=> b!6176619 d!1936232))

(declare-fun e!3762535 () Bool)

(declare-fun d!1936234 () Bool)

(assert (=> d!1936234 (= (matchZipper!2128 (set.union lt!2338194 lt!2338207) (t!378155 s!2326)) e!3762535)))

(declare-fun res!2556497 () Bool)

(assert (=> d!1936234 (=> res!2556497 e!3762535)))

(assert (=> d!1936234 (= res!2556497 (matchZipper!2128 lt!2338194 (t!378155 s!2326)))))

(declare-fun lt!2338363 () Unit!157707)

(assert (=> d!1936234 (= lt!2338363 (choose!45901 lt!2338194 lt!2338207 (t!378155 s!2326)))))

(assert (=> d!1936234 (= (lemmaZipperConcatMatchesSameAsBothZippers!947 lt!2338194 lt!2338207 (t!378155 s!2326)) lt!2338363)))

(declare-fun b!6176990 () Bool)

(assert (=> b!6176990 (= e!3762535 (matchZipper!2128 lt!2338207 (t!378155 s!2326)))))

(assert (= (and d!1936234 (not res!2556497)) b!6176990))

(assert (=> d!1936234 m!7012672))

(assert (=> d!1936234 m!7012644))

(declare-fun m!7013088 () Bool)

(assert (=> d!1936234 m!7013088))

(assert (=> b!6176990 m!7012630))

(assert (=> b!6176597 d!1936234))

(assert (=> b!6176597 d!1936164))

(declare-fun d!1936236 () Bool)

(declare-fun c!1113513 () Bool)

(assert (=> d!1936236 (= c!1113513 (isEmpty!36506 (t!378155 s!2326)))))

(declare-fun e!3762536 () Bool)

(assert (=> d!1936236 (= (matchZipper!2128 (set.union lt!2338194 lt!2338207) (t!378155 s!2326)) e!3762536)))

(declare-fun b!6176991 () Bool)

(assert (=> b!6176991 (= e!3762536 (nullableZipper!1895 (set.union lt!2338194 lt!2338207)))))

(declare-fun b!6176992 () Bool)

(assert (=> b!6176992 (= e!3762536 (matchZipper!2128 (derivationStepZipper!2087 (set.union lt!2338194 lt!2338207) (head!12749 (t!378155 s!2326))) (tail!11834 (t!378155 s!2326))))))

(assert (= (and d!1936236 c!1113513) b!6176991))

(assert (= (and d!1936236 (not c!1113513)) b!6176992))

(assert (=> d!1936236 m!7012878))

(declare-fun m!7013090 () Bool)

(assert (=> b!6176991 m!7013090))

(assert (=> b!6176992 m!7012882))

(assert (=> b!6176992 m!7012882))

(declare-fun m!7013092 () Bool)

(assert (=> b!6176992 m!7013092))

(assert (=> b!6176992 m!7012886))

(assert (=> b!6176992 m!7013092))

(assert (=> b!6176992 m!7012886))

(declare-fun m!7013094 () Bool)

(assert (=> b!6176992 m!7013094))

(assert (=> b!6176597 d!1936236))

(declare-fun bs!1531753 () Bool)

(declare-fun b!6177030 () Bool)

(assert (= bs!1531753 (and b!6177030 b!6176607)))

(declare-fun lambda!337237 () Int)

(assert (=> bs!1531753 (not (= lambda!337237 lambda!337206))))

(assert (=> bs!1531753 (not (= lambda!337237 lambda!337207))))

(assert (=> b!6177030 true))

(assert (=> b!6177030 true))

(declare-fun bs!1531754 () Bool)

(declare-fun b!6177032 () Bool)

(assert (= bs!1531754 (and b!6177032 b!6176607)))

(declare-fun lambda!337238 () Int)

(assert (=> bs!1531754 (not (= lambda!337238 lambda!337206))))

(assert (=> bs!1531754 (= lambda!337238 lambda!337207)))

(declare-fun bs!1531755 () Bool)

(assert (= bs!1531755 (and b!6177032 b!6177030)))

(assert (=> bs!1531755 (not (= lambda!337238 lambda!337237))))

(assert (=> b!6177032 true))

(assert (=> b!6177032 true))

(declare-fun b!6177025 () Bool)

(declare-fun e!3762557 () Bool)

(declare-fun call!515581 () Bool)

(assert (=> b!6177025 (= e!3762557 call!515581)))

(declare-fun b!6177026 () Bool)

(declare-fun c!1113525 () Bool)

(assert (=> b!6177026 (= c!1113525 (is-Union!16116 r!7292))))

(declare-fun e!3762559 () Bool)

(declare-fun e!3762558 () Bool)

(assert (=> b!6177026 (= e!3762559 e!3762558)))

(declare-fun d!1936238 () Bool)

(declare-fun c!1113523 () Bool)

(assert (=> d!1936238 (= c!1113523 (is-EmptyExpr!16116 r!7292))))

(assert (=> d!1936238 (= (matchRSpec!3217 r!7292 s!2326) e!3762557)))

(declare-fun b!6177027 () Bool)

(declare-fun e!3762556 () Bool)

(assert (=> b!6177027 (= e!3762558 e!3762556)))

(declare-fun c!1113524 () Bool)

(assert (=> b!6177027 (= c!1113524 (is-Star!16116 r!7292))))

(declare-fun b!6177028 () Bool)

(declare-fun e!3762555 () Bool)

(assert (=> b!6177028 (= e!3762555 (matchRSpec!3217 (regTwo!32745 r!7292) s!2326))))

(declare-fun call!515582 () Bool)

(declare-fun bm!515576 () Bool)

(assert (=> bm!515576 (= call!515582 (Exists!3186 (ite c!1113524 lambda!337237 lambda!337238)))))

(declare-fun b!6177029 () Bool)

(assert (=> b!6177029 (= e!3762559 (= s!2326 (Cons!64525 (c!1113407 r!7292) Nil!64525)))))

(declare-fun e!3762560 () Bool)

(assert (=> b!6177030 (= e!3762560 call!515582)))

(declare-fun b!6177031 () Bool)

(declare-fun c!1113522 () Bool)

(assert (=> b!6177031 (= c!1113522 (is-ElementMatch!16116 r!7292))))

(declare-fun e!3762561 () Bool)

(assert (=> b!6177031 (= e!3762561 e!3762559)))

(assert (=> b!6177032 (= e!3762556 call!515582)))

(declare-fun b!6177033 () Bool)

(assert (=> b!6177033 (= e!3762557 e!3762561)))

(declare-fun res!2556516 () Bool)

(assert (=> b!6177033 (= res!2556516 (not (is-EmptyLang!16116 r!7292)))))

(assert (=> b!6177033 (=> (not res!2556516) (not e!3762561))))

(declare-fun b!6177034 () Bool)

(declare-fun res!2556515 () Bool)

(assert (=> b!6177034 (=> res!2556515 e!3762560)))

(assert (=> b!6177034 (= res!2556515 call!515581)))

(assert (=> b!6177034 (= e!3762556 e!3762560)))

(declare-fun b!6177035 () Bool)

(assert (=> b!6177035 (= e!3762558 e!3762555)))

(declare-fun res!2556514 () Bool)

(assert (=> b!6177035 (= res!2556514 (matchRSpec!3217 (regOne!32745 r!7292) s!2326))))

(assert (=> b!6177035 (=> res!2556514 e!3762555)))

(declare-fun bm!515577 () Bool)

(assert (=> bm!515577 (= call!515581 (isEmpty!36506 s!2326))))

(assert (= (and d!1936238 c!1113523) b!6177025))

(assert (= (and d!1936238 (not c!1113523)) b!6177033))

(assert (= (and b!6177033 res!2556516) b!6177031))

(assert (= (and b!6177031 c!1113522) b!6177029))

(assert (= (and b!6177031 (not c!1113522)) b!6177026))

(assert (= (and b!6177026 c!1113525) b!6177035))

(assert (= (and b!6177026 (not c!1113525)) b!6177027))

(assert (= (and b!6177035 (not res!2556514)) b!6177028))

(assert (= (and b!6177027 c!1113524) b!6177034))

(assert (= (and b!6177027 (not c!1113524)) b!6177032))

(assert (= (and b!6177034 (not res!2556515)) b!6177030))

(assert (= (or b!6177030 b!6177032) bm!515576))

(assert (= (or b!6177025 b!6177034) bm!515577))

(declare-fun m!7013096 () Bool)

(assert (=> b!6177028 m!7013096))

(declare-fun m!7013098 () Bool)

(assert (=> bm!515576 m!7013098))

(declare-fun m!7013100 () Bool)

(assert (=> b!6177035 m!7013100))

(assert (=> bm!515577 m!7012968))

(assert (=> b!6176618 d!1936238))

(declare-fun b!6177064 () Bool)

(declare-fun e!3762576 () Bool)

(assert (=> b!6177064 (= e!3762576 (nullable!6109 r!7292))))

(declare-fun b!6177065 () Bool)

(declare-fun res!2556535 () Bool)

(declare-fun e!3762579 () Bool)

(assert (=> b!6177065 (=> res!2556535 e!3762579)))

(assert (=> b!6177065 (= res!2556535 (not (isEmpty!36506 (tail!11834 s!2326))))))

(declare-fun bm!515580 () Bool)

(declare-fun call!515585 () Bool)

(assert (=> bm!515580 (= call!515585 (isEmpty!36506 s!2326))))

(declare-fun d!1936240 () Bool)

(declare-fun e!3762578 () Bool)

(assert (=> d!1936240 e!3762578))

(declare-fun c!1113533 () Bool)

(assert (=> d!1936240 (= c!1113533 (is-EmptyExpr!16116 r!7292))))

(declare-fun lt!2338366 () Bool)

(assert (=> d!1936240 (= lt!2338366 e!3762576)))

(declare-fun c!1113534 () Bool)

(assert (=> d!1936240 (= c!1113534 (isEmpty!36506 s!2326))))

(assert (=> d!1936240 (validRegex!7852 r!7292)))

(assert (=> d!1936240 (= (matchR!8299 r!7292 s!2326) lt!2338366)))

(declare-fun b!6177066 () Bool)

(assert (=> b!6177066 (= e!3762578 (= lt!2338366 call!515585))))

(declare-fun b!6177067 () Bool)

(declare-fun e!3762577 () Bool)

(assert (=> b!6177067 (= e!3762577 (= (head!12749 s!2326) (c!1113407 r!7292)))))

(declare-fun b!6177068 () Bool)

(declare-fun res!2556537 () Bool)

(assert (=> b!6177068 (=> (not res!2556537) (not e!3762577))))

(assert (=> b!6177068 (= res!2556537 (isEmpty!36506 (tail!11834 s!2326)))))

(declare-fun b!6177069 () Bool)

(declare-fun e!3762580 () Bool)

(declare-fun e!3762582 () Bool)

(assert (=> b!6177069 (= e!3762580 e!3762582)))

(declare-fun res!2556536 () Bool)

(assert (=> b!6177069 (=> (not res!2556536) (not e!3762582))))

(assert (=> b!6177069 (= res!2556536 (not lt!2338366))))

(declare-fun b!6177070 () Bool)

(declare-fun e!3762581 () Bool)

(assert (=> b!6177070 (= e!3762581 (not lt!2338366))))

(declare-fun b!6177071 () Bool)

(declare-fun res!2556533 () Bool)

(assert (=> b!6177071 (=> res!2556533 e!3762580)))

(assert (=> b!6177071 (= res!2556533 (not (is-ElementMatch!16116 r!7292)))))

(assert (=> b!6177071 (= e!3762581 e!3762580)))

(declare-fun b!6177072 () Bool)

(declare-fun res!2556540 () Bool)

(assert (=> b!6177072 (=> (not res!2556540) (not e!3762577))))

(assert (=> b!6177072 (= res!2556540 (not call!515585))))

(declare-fun b!6177073 () Bool)

(declare-fun res!2556534 () Bool)

(assert (=> b!6177073 (=> res!2556534 e!3762580)))

(assert (=> b!6177073 (= res!2556534 e!3762577)))

(declare-fun res!2556538 () Bool)

(assert (=> b!6177073 (=> (not res!2556538) (not e!3762577))))

(assert (=> b!6177073 (= res!2556538 lt!2338366)))

(declare-fun b!6177074 () Bool)

(assert (=> b!6177074 (= e!3762578 e!3762581)))

(declare-fun c!1113532 () Bool)

(assert (=> b!6177074 (= c!1113532 (is-EmptyLang!16116 r!7292))))

(declare-fun b!6177075 () Bool)

(assert (=> b!6177075 (= e!3762579 (not (= (head!12749 s!2326) (c!1113407 r!7292))))))

(declare-fun b!6177076 () Bool)

(assert (=> b!6177076 (= e!3762582 e!3762579)))

(declare-fun res!2556539 () Bool)

(assert (=> b!6177076 (=> res!2556539 e!3762579)))

(assert (=> b!6177076 (= res!2556539 call!515585)))

(declare-fun b!6177077 () Bool)

(declare-fun derivativeStep!4833 (Regex!16116 C!32502) Regex!16116)

(assert (=> b!6177077 (= e!3762576 (matchR!8299 (derivativeStep!4833 r!7292 (head!12749 s!2326)) (tail!11834 s!2326)))))

(assert (= (and d!1936240 c!1113534) b!6177064))

(assert (= (and d!1936240 (not c!1113534)) b!6177077))

(assert (= (and d!1936240 c!1113533) b!6177066))

(assert (= (and d!1936240 (not c!1113533)) b!6177074))

(assert (= (and b!6177074 c!1113532) b!6177070))

(assert (= (and b!6177074 (not c!1113532)) b!6177071))

(assert (= (and b!6177071 (not res!2556533)) b!6177073))

(assert (= (and b!6177073 res!2556538) b!6177072))

(assert (= (and b!6177072 res!2556540) b!6177068))

(assert (= (and b!6177068 res!2556537) b!6177067))

(assert (= (and b!6177073 (not res!2556534)) b!6177069))

(assert (= (and b!6177069 res!2556536) b!6177076))

(assert (= (and b!6177076 (not res!2556539)) b!6177065))

(assert (= (and b!6177065 (not res!2556535)) b!6177075))

(assert (= (or b!6177066 b!6177076 b!6177072) bm!515580))

(assert (=> b!6177067 m!7012972))

(assert (=> b!6177077 m!7012972))

(assert (=> b!6177077 m!7012972))

(declare-fun m!7013102 () Bool)

(assert (=> b!6177077 m!7013102))

(assert (=> b!6177077 m!7012976))

(assert (=> b!6177077 m!7013102))

(assert (=> b!6177077 m!7012976))

(declare-fun m!7013104 () Bool)

(assert (=> b!6177077 m!7013104))

(assert (=> b!6177075 m!7012972))

(assert (=> d!1936240 m!7012968))

(assert (=> d!1936240 m!7012746))

(assert (=> bm!515580 m!7012968))

(assert (=> b!6177065 m!7012976))

(assert (=> b!6177065 m!7012976))

(declare-fun m!7013106 () Bool)

(assert (=> b!6177065 m!7013106))

(declare-fun m!7013108 () Bool)

(assert (=> b!6177064 m!7013108))

(assert (=> b!6177068 m!7012976))

(assert (=> b!6177068 m!7012976))

(assert (=> b!6177068 m!7013106))

(assert (=> b!6176618 d!1936240))

(declare-fun d!1936242 () Bool)

(assert (=> d!1936242 (= (matchR!8299 r!7292 s!2326) (matchRSpec!3217 r!7292 s!2326))))

(declare-fun lt!2338369 () Unit!157707)

(declare-fun choose!45904 (Regex!16116 List!64649) Unit!157707)

(assert (=> d!1936242 (= lt!2338369 (choose!45904 r!7292 s!2326))))

(assert (=> d!1936242 (validRegex!7852 r!7292)))

(assert (=> d!1936242 (= (mainMatchTheorem!3217 r!7292 s!2326) lt!2338369)))

(declare-fun bs!1531756 () Bool)

(assert (= bs!1531756 d!1936242))

(assert (=> bs!1531756 m!7012738))

(assert (=> bs!1531756 m!7012736))

(declare-fun m!7013110 () Bool)

(assert (=> bs!1531756 m!7013110))

(assert (=> bs!1531756 m!7012746))

(assert (=> b!6176618 d!1936242))

(declare-fun b!6177096 () Bool)

(declare-fun e!3762597 () Option!16007)

(assert (=> b!6177096 (= e!3762597 (Some!16006 (tuple2!66191 Nil!64525 s!2326)))))

(declare-fun b!6177097 () Bool)

(declare-fun lt!2338378 () Unit!157707)

(declare-fun lt!2338376 () Unit!157707)

(assert (=> b!6177097 (= lt!2338378 lt!2338376)))

(declare-fun ++!14200 (List!64649 List!64649) List!64649)

(assert (=> b!6177097 (= (++!14200 (++!14200 Nil!64525 (Cons!64525 (h!70973 s!2326) Nil!64525)) (t!378155 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2295 (List!64649 C!32502 List!64649 List!64649) Unit!157707)

(assert (=> b!6177097 (= lt!2338376 (lemmaMoveElementToOtherListKeepsConcatEq!2295 Nil!64525 (h!70973 s!2326) (t!378155 s!2326) s!2326))))

(declare-fun e!3762595 () Option!16007)

(assert (=> b!6177097 (= e!3762595 (findConcatSeparation!2421 (regOne!32744 r!7292) (regTwo!32744 r!7292) (++!14200 Nil!64525 (Cons!64525 (h!70973 s!2326) Nil!64525)) (t!378155 s!2326) s!2326))))

(declare-fun b!6177098 () Bool)

(declare-fun res!2556553 () Bool)

(declare-fun e!3762594 () Bool)

(assert (=> b!6177098 (=> (not res!2556553) (not e!3762594))))

(declare-fun lt!2338377 () Option!16007)

(declare-fun get!22274 (Option!16007) tuple2!66190)

(assert (=> b!6177098 (= res!2556553 (matchR!8299 (regOne!32744 r!7292) (_1!36398 (get!22274 lt!2338377))))))

(declare-fun b!6177099 () Bool)

(assert (=> b!6177099 (= e!3762595 None!16006)))

(declare-fun b!6177100 () Bool)

(declare-fun e!3762596 () Bool)

(assert (=> b!6177100 (= e!3762596 (not (isDefined!12710 lt!2338377)))))

(declare-fun d!1936244 () Bool)

(assert (=> d!1936244 e!3762596))

(declare-fun res!2556552 () Bool)

(assert (=> d!1936244 (=> res!2556552 e!3762596)))

(assert (=> d!1936244 (= res!2556552 e!3762594)))

(declare-fun res!2556551 () Bool)

(assert (=> d!1936244 (=> (not res!2556551) (not e!3762594))))

(assert (=> d!1936244 (= res!2556551 (isDefined!12710 lt!2338377))))

(assert (=> d!1936244 (= lt!2338377 e!3762597)))

(declare-fun c!1113539 () Bool)

(declare-fun e!3762593 () Bool)

(assert (=> d!1936244 (= c!1113539 e!3762593)))

(declare-fun res!2556555 () Bool)

(assert (=> d!1936244 (=> (not res!2556555) (not e!3762593))))

(assert (=> d!1936244 (= res!2556555 (matchR!8299 (regOne!32744 r!7292) Nil!64525))))

(assert (=> d!1936244 (validRegex!7852 (regOne!32744 r!7292))))

(assert (=> d!1936244 (= (findConcatSeparation!2421 (regOne!32744 r!7292) (regTwo!32744 r!7292) Nil!64525 s!2326 s!2326) lt!2338377)))

(declare-fun b!6177101 () Bool)

(declare-fun res!2556554 () Bool)

(assert (=> b!6177101 (=> (not res!2556554) (not e!3762594))))

(assert (=> b!6177101 (= res!2556554 (matchR!8299 (regTwo!32744 r!7292) (_2!36398 (get!22274 lt!2338377))))))

(declare-fun b!6177102 () Bool)

(assert (=> b!6177102 (= e!3762597 e!3762595)))

(declare-fun c!1113540 () Bool)

(assert (=> b!6177102 (= c!1113540 (is-Nil!64525 s!2326))))

(declare-fun b!6177103 () Bool)

(assert (=> b!6177103 (= e!3762593 (matchR!8299 (regTwo!32744 r!7292) s!2326))))

(declare-fun b!6177104 () Bool)

(assert (=> b!6177104 (= e!3762594 (= (++!14200 (_1!36398 (get!22274 lt!2338377)) (_2!36398 (get!22274 lt!2338377))) s!2326))))

(assert (= (and d!1936244 res!2556555) b!6177103))

(assert (= (and d!1936244 c!1113539) b!6177096))

(assert (= (and d!1936244 (not c!1113539)) b!6177102))

(assert (= (and b!6177102 c!1113540) b!6177099))

(assert (= (and b!6177102 (not c!1113540)) b!6177097))

(assert (= (and d!1936244 res!2556551) b!6177098))

(assert (= (and b!6177098 res!2556553) b!6177101))

(assert (= (and b!6177101 res!2556554) b!6177104))

(assert (= (and d!1936244 (not res!2556552)) b!6177100))

(declare-fun m!7013112 () Bool)

(assert (=> b!6177103 m!7013112))

(declare-fun m!7013114 () Bool)

(assert (=> b!6177098 m!7013114))

(declare-fun m!7013116 () Bool)

(assert (=> b!6177098 m!7013116))

(assert (=> b!6177101 m!7013114))

(declare-fun m!7013118 () Bool)

(assert (=> b!6177101 m!7013118))

(declare-fun m!7013120 () Bool)

(assert (=> b!6177100 m!7013120))

(assert (=> b!6177104 m!7013114))

(declare-fun m!7013122 () Bool)

(assert (=> b!6177104 m!7013122))

(assert (=> d!1936244 m!7013120))

(declare-fun m!7013124 () Bool)

(assert (=> d!1936244 m!7013124))

(declare-fun m!7013126 () Bool)

(assert (=> d!1936244 m!7013126))

(declare-fun m!7013128 () Bool)

(assert (=> b!6177097 m!7013128))

(assert (=> b!6177097 m!7013128))

(declare-fun m!7013130 () Bool)

(assert (=> b!6177097 m!7013130))

(declare-fun m!7013132 () Bool)

(assert (=> b!6177097 m!7013132))

(assert (=> b!6177097 m!7013128))

(declare-fun m!7013134 () Bool)

(assert (=> b!6177097 m!7013134))

(assert (=> b!6176607 d!1936244))

(declare-fun d!1936246 () Bool)

(declare-fun choose!45905 (Int) Bool)

(assert (=> d!1936246 (= (Exists!3186 lambda!337206) (choose!45905 lambda!337206))))

(declare-fun bs!1531757 () Bool)

(assert (= bs!1531757 d!1936246))

(declare-fun m!7013136 () Bool)

(assert (=> bs!1531757 m!7013136))

(assert (=> b!6176607 d!1936246))

(declare-fun d!1936248 () Bool)

(assert (=> d!1936248 (= (Exists!3186 lambda!337207) (choose!45905 lambda!337207))))

(declare-fun bs!1531758 () Bool)

(assert (= bs!1531758 d!1936248))

(declare-fun m!7013138 () Bool)

(assert (=> bs!1531758 m!7013138))

(assert (=> b!6176607 d!1936248))

(declare-fun bs!1531759 () Bool)

(declare-fun d!1936250 () Bool)

(assert (= bs!1531759 (and d!1936250 b!6176607)))

(declare-fun lambda!337241 () Int)

(assert (=> bs!1531759 (= lambda!337241 lambda!337206)))

(assert (=> bs!1531759 (not (= lambda!337241 lambda!337207))))

(declare-fun bs!1531760 () Bool)

(assert (= bs!1531760 (and d!1936250 b!6177030)))

(assert (=> bs!1531760 (not (= lambda!337241 lambda!337237))))

(declare-fun bs!1531761 () Bool)

(assert (= bs!1531761 (and d!1936250 b!6177032)))

(assert (=> bs!1531761 (not (= lambda!337241 lambda!337238))))

(assert (=> d!1936250 true))

(assert (=> d!1936250 true))

(assert (=> d!1936250 true))

(assert (=> d!1936250 (= (isDefined!12710 (findConcatSeparation!2421 (regOne!32744 r!7292) (regTwo!32744 r!7292) Nil!64525 s!2326 s!2326)) (Exists!3186 lambda!337241))))

(declare-fun lt!2338381 () Unit!157707)

(declare-fun choose!45906 (Regex!16116 Regex!16116 List!64649) Unit!157707)

(assert (=> d!1936250 (= lt!2338381 (choose!45906 (regOne!32744 r!7292) (regTwo!32744 r!7292) s!2326))))

(assert (=> d!1936250 (validRegex!7852 (regOne!32744 r!7292))))

(assert (=> d!1936250 (= (lemmaFindConcatSeparationEquivalentToExists!2185 (regOne!32744 r!7292) (regTwo!32744 r!7292) s!2326) lt!2338381)))

(declare-fun bs!1531762 () Bool)

(assert (= bs!1531762 d!1936250))

(declare-fun m!7013140 () Bool)

(assert (=> bs!1531762 m!7013140))

(assert (=> bs!1531762 m!7012632))

(assert (=> bs!1531762 m!7012634))

(assert (=> bs!1531762 m!7012632))

(declare-fun m!7013142 () Bool)

(assert (=> bs!1531762 m!7013142))

(assert (=> bs!1531762 m!7013126))

(assert (=> b!6176607 d!1936250))

(declare-fun bs!1531763 () Bool)

(declare-fun d!1936252 () Bool)

(assert (= bs!1531763 (and d!1936252 b!6176607)))

(declare-fun lambda!337246 () Int)

(assert (=> bs!1531763 (= lambda!337246 lambda!337206)))

(declare-fun bs!1531764 () Bool)

(assert (= bs!1531764 (and d!1936252 d!1936250)))

(assert (=> bs!1531764 (= lambda!337246 lambda!337241)))

(assert (=> bs!1531763 (not (= lambda!337246 lambda!337207))))

(declare-fun bs!1531765 () Bool)

(assert (= bs!1531765 (and d!1936252 b!6177030)))

(assert (=> bs!1531765 (not (= lambda!337246 lambda!337237))))

(declare-fun bs!1531766 () Bool)

(assert (= bs!1531766 (and d!1936252 b!6177032)))

(assert (=> bs!1531766 (not (= lambda!337246 lambda!337238))))

(assert (=> d!1936252 true))

(assert (=> d!1936252 true))

(assert (=> d!1936252 true))

(declare-fun lambda!337247 () Int)

(assert (=> bs!1531763 (not (= lambda!337247 lambda!337206))))

(declare-fun bs!1531767 () Bool)

(assert (= bs!1531767 d!1936252))

(assert (=> bs!1531767 (not (= lambda!337247 lambda!337246))))

(assert (=> bs!1531764 (not (= lambda!337247 lambda!337241))))

(assert (=> bs!1531763 (= lambda!337247 lambda!337207)))

(assert (=> bs!1531765 (not (= lambda!337247 lambda!337237))))

(assert (=> bs!1531766 (= lambda!337247 lambda!337238)))

(assert (=> d!1936252 true))

(assert (=> d!1936252 true))

(assert (=> d!1936252 true))

(assert (=> d!1936252 (= (Exists!3186 lambda!337246) (Exists!3186 lambda!337247))))

(declare-fun lt!2338384 () Unit!157707)

(declare-fun choose!45907 (Regex!16116 Regex!16116 List!64649) Unit!157707)

(assert (=> d!1936252 (= lt!2338384 (choose!45907 (regOne!32744 r!7292) (regTwo!32744 r!7292) s!2326))))

(assert (=> d!1936252 (validRegex!7852 (regOne!32744 r!7292))))

(assert (=> d!1936252 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1723 (regOne!32744 r!7292) (regTwo!32744 r!7292) s!2326) lt!2338384)))

(declare-fun m!7013144 () Bool)

(assert (=> bs!1531767 m!7013144))

(declare-fun m!7013146 () Bool)

(assert (=> bs!1531767 m!7013146))

(declare-fun m!7013148 () Bool)

(assert (=> bs!1531767 m!7013148))

(assert (=> bs!1531767 m!7013126))

(assert (=> b!6176607 d!1936252))

(declare-fun d!1936254 () Bool)

(declare-fun isEmpty!36507 (Option!16007) Bool)

(assert (=> d!1936254 (= (isDefined!12710 (findConcatSeparation!2421 (regOne!32744 r!7292) (regTwo!32744 r!7292) Nil!64525 s!2326 s!2326)) (not (isEmpty!36507 (findConcatSeparation!2421 (regOne!32744 r!7292) (regTwo!32744 r!7292) Nil!64525 s!2326 s!2326))))))

(declare-fun bs!1531768 () Bool)

(assert (= bs!1531768 d!1936254))

(assert (=> bs!1531768 m!7012632))

(declare-fun m!7013150 () Bool)

(assert (=> bs!1531768 m!7013150))

(assert (=> b!6176607 d!1936254))

(declare-fun d!1936256 () Bool)

(declare-fun e!3762606 () Bool)

(assert (=> d!1936256 e!3762606))

(declare-fun res!2556570 () Bool)

(assert (=> d!1936256 (=> (not res!2556570) (not e!3762606))))

(declare-fun lt!2338387 () List!64648)

(declare-fun noDuplicate!1960 (List!64648) Bool)

(assert (=> d!1936256 (= res!2556570 (noDuplicate!1960 lt!2338387))))

(declare-fun choose!45908 ((Set Context!11000)) List!64648)

(assert (=> d!1936256 (= lt!2338387 (choose!45908 z!1189))))

(assert (=> d!1936256 (= (toList!9900 z!1189) lt!2338387)))

(declare-fun b!6177119 () Bool)

(declare-fun content!12047 (List!64648) (Set Context!11000))

(assert (=> b!6177119 (= e!3762606 (= (content!12047 lt!2338387) z!1189))))

(assert (= (and d!1936256 res!2556570) b!6177119))

(declare-fun m!7013152 () Bool)

(assert (=> d!1936256 m!7013152))

(declare-fun m!7013154 () Bool)

(assert (=> d!1936256 m!7013154))

(declare-fun m!7013156 () Bool)

(assert (=> b!6177119 m!7013156))

(assert (=> b!6176626 d!1936256))

(assert (=> b!6176606 d!1936230))

(assert (=> b!6176625 d!1936230))

(declare-fun bs!1531769 () Bool)

(declare-fun d!1936258 () Bool)

(assert (= bs!1531769 (and d!1936258 d!1936162)))

(declare-fun lambda!337250 () Int)

(assert (=> bs!1531769 (= lambda!337250 lambda!337226)))

(declare-fun bs!1531770 () Bool)

(assert (= bs!1531770 (and d!1936258 d!1936224)))

(assert (=> bs!1531770 (= lambda!337250 lambda!337229)))

(declare-fun bs!1531771 () Bool)

(assert (= bs!1531771 (and d!1936258 d!1936226)))

(assert (=> bs!1531771 (= lambda!337250 lambda!337232)))

(assert (=> d!1936258 (= (inv!83538 setElem!41885) (forall!15235 (exprs!6000 setElem!41885) lambda!337250))))

(declare-fun bs!1531772 () Bool)

(assert (= bs!1531772 d!1936258))

(declare-fun m!7013158 () Bool)

(assert (=> bs!1531772 m!7013158))

(assert (=> setNonEmpty!41885 d!1936258))

(declare-fun bs!1531773 () Bool)

(declare-fun d!1936260 () Bool)

(assert (= bs!1531773 (and d!1936260 d!1936162)))

(declare-fun lambda!337251 () Int)

(assert (=> bs!1531773 (= lambda!337251 lambda!337226)))

(declare-fun bs!1531774 () Bool)

(assert (= bs!1531774 (and d!1936260 d!1936224)))

(assert (=> bs!1531774 (= lambda!337251 lambda!337229)))

(declare-fun bs!1531775 () Bool)

(assert (= bs!1531775 (and d!1936260 d!1936226)))

(assert (=> bs!1531775 (= lambda!337251 lambda!337232)))

(declare-fun bs!1531776 () Bool)

(assert (= bs!1531776 (and d!1936260 d!1936258)))

(assert (=> bs!1531776 (= lambda!337251 lambda!337250)))

(assert (=> d!1936260 (= (inv!83538 (h!70972 zl!343)) (forall!15235 (exprs!6000 (h!70972 zl!343)) lambda!337251))))

(declare-fun bs!1531777 () Bool)

(assert (= bs!1531777 d!1936260))

(declare-fun m!7013160 () Bool)

(assert (=> bs!1531777 m!7013160))

(assert (=> b!6176604 d!1936260))

(declare-fun e!3762607 () Bool)

(declare-fun d!1936262 () Bool)

(assert (=> d!1936262 (= (matchZipper!2128 (set.union lt!2338217 lt!2338207) (t!378155 s!2326)) e!3762607)))

(declare-fun res!2556571 () Bool)

(assert (=> d!1936262 (=> res!2556571 e!3762607)))

(assert (=> d!1936262 (= res!2556571 (matchZipper!2128 lt!2338217 (t!378155 s!2326)))))

(declare-fun lt!2338388 () Unit!157707)

(assert (=> d!1936262 (= lt!2338388 (choose!45901 lt!2338217 lt!2338207 (t!378155 s!2326)))))

(assert (=> d!1936262 (= (lemmaZipperConcatMatchesSameAsBothZippers!947 lt!2338217 lt!2338207 (t!378155 s!2326)) lt!2338388)))

(declare-fun b!6177120 () Bool)

(assert (=> b!6177120 (= e!3762607 (matchZipper!2128 lt!2338207 (t!378155 s!2326)))))

(assert (= (and d!1936262 (not res!2556571)) b!6177120))

(assert (=> d!1936262 m!7012676))

(assert (=> d!1936262 m!7012648))

(declare-fun m!7013162 () Bool)

(assert (=> d!1936262 m!7013162))

(assert (=> b!6177120 m!7012630))

(assert (=> b!6176603 d!1936262))

(declare-fun d!1936264 () Bool)

(declare-fun c!1113541 () Bool)

(assert (=> d!1936264 (= c!1113541 (isEmpty!36506 (t!378155 s!2326)))))

(declare-fun e!3762608 () Bool)

(assert (=> d!1936264 (= (matchZipper!2128 (set.union lt!2338217 lt!2338207) (t!378155 s!2326)) e!3762608)))

(declare-fun b!6177121 () Bool)

(assert (=> b!6177121 (= e!3762608 (nullableZipper!1895 (set.union lt!2338217 lt!2338207)))))

(declare-fun b!6177122 () Bool)

(assert (=> b!6177122 (= e!3762608 (matchZipper!2128 (derivationStepZipper!2087 (set.union lt!2338217 lt!2338207) (head!12749 (t!378155 s!2326))) (tail!11834 (t!378155 s!2326))))))

(assert (= (and d!1936264 c!1113541) b!6177121))

(assert (= (and d!1936264 (not c!1113541)) b!6177122))

(assert (=> d!1936264 m!7012878))

(declare-fun m!7013164 () Bool)

(assert (=> b!6177121 m!7013164))

(assert (=> b!6177122 m!7012882))

(assert (=> b!6177122 m!7012882))

(declare-fun m!7013166 () Bool)

(assert (=> b!6177122 m!7013166))

(assert (=> b!6177122 m!7012886))

(assert (=> b!6177122 m!7013166))

(assert (=> b!6177122 m!7012886))

(declare-fun m!7013168 () Bool)

(assert (=> b!6177122 m!7013168))

(assert (=> b!6176603 d!1936264))

(declare-fun d!1936266 () Bool)

(assert (=> d!1936266 (= (matchR!8299 lt!2338210 s!2326) (matchZipper!2128 lt!2338212 s!2326))))

(declare-fun lt!2338391 () Unit!157707)

(declare-fun choose!45909 ((Set Context!11000) List!64648 Regex!16116 List!64649) Unit!157707)

(assert (=> d!1936266 (= lt!2338391 (choose!45909 lt!2338212 lt!2338215 lt!2338210 s!2326))))

(assert (=> d!1936266 (validRegex!7852 lt!2338210)))

(assert (=> d!1936266 (= (theoremZipperRegexEquiv!728 lt!2338212 lt!2338215 lt!2338210 s!2326) lt!2338391)))

(declare-fun bs!1531778 () Bool)

(assert (= bs!1531778 d!1936266))

(assert (=> bs!1531778 m!7012722))

(assert (=> bs!1531778 m!7012700))

(declare-fun m!7013170 () Bool)

(assert (=> bs!1531778 m!7013170))

(declare-fun m!7013172 () Bool)

(assert (=> bs!1531778 m!7013172))

(assert (=> b!6176624 d!1936266))

(declare-fun b!6177123 () Bool)

(declare-fun e!3762609 () Bool)

(assert (=> b!6177123 (= e!3762609 (nullable!6109 lt!2338210))))

(declare-fun b!6177124 () Bool)

(declare-fun res!2556574 () Bool)

(declare-fun e!3762612 () Bool)

(assert (=> b!6177124 (=> res!2556574 e!3762612)))

(assert (=> b!6177124 (= res!2556574 (not (isEmpty!36506 (tail!11834 s!2326))))))

(declare-fun bm!515581 () Bool)

(declare-fun call!515586 () Bool)

(assert (=> bm!515581 (= call!515586 (isEmpty!36506 s!2326))))

(declare-fun d!1936268 () Bool)

(declare-fun e!3762611 () Bool)

(assert (=> d!1936268 e!3762611))

(declare-fun c!1113543 () Bool)

(assert (=> d!1936268 (= c!1113543 (is-EmptyExpr!16116 lt!2338210))))

(declare-fun lt!2338392 () Bool)

(assert (=> d!1936268 (= lt!2338392 e!3762609)))

(declare-fun c!1113544 () Bool)

(assert (=> d!1936268 (= c!1113544 (isEmpty!36506 s!2326))))

(assert (=> d!1936268 (validRegex!7852 lt!2338210)))

(assert (=> d!1936268 (= (matchR!8299 lt!2338210 s!2326) lt!2338392)))

(declare-fun b!6177125 () Bool)

(assert (=> b!6177125 (= e!3762611 (= lt!2338392 call!515586))))

(declare-fun b!6177126 () Bool)

(declare-fun e!3762610 () Bool)

(assert (=> b!6177126 (= e!3762610 (= (head!12749 s!2326) (c!1113407 lt!2338210)))))

(declare-fun b!6177127 () Bool)

(declare-fun res!2556576 () Bool)

(assert (=> b!6177127 (=> (not res!2556576) (not e!3762610))))

(assert (=> b!6177127 (= res!2556576 (isEmpty!36506 (tail!11834 s!2326)))))

(declare-fun b!6177128 () Bool)

(declare-fun e!3762613 () Bool)

(declare-fun e!3762615 () Bool)

(assert (=> b!6177128 (= e!3762613 e!3762615)))

(declare-fun res!2556575 () Bool)

(assert (=> b!6177128 (=> (not res!2556575) (not e!3762615))))

(assert (=> b!6177128 (= res!2556575 (not lt!2338392))))

(declare-fun b!6177129 () Bool)

(declare-fun e!3762614 () Bool)

(assert (=> b!6177129 (= e!3762614 (not lt!2338392))))

(declare-fun b!6177130 () Bool)

(declare-fun res!2556572 () Bool)

(assert (=> b!6177130 (=> res!2556572 e!3762613)))

(assert (=> b!6177130 (= res!2556572 (not (is-ElementMatch!16116 lt!2338210)))))

(assert (=> b!6177130 (= e!3762614 e!3762613)))

(declare-fun b!6177131 () Bool)

(declare-fun res!2556579 () Bool)

(assert (=> b!6177131 (=> (not res!2556579) (not e!3762610))))

(assert (=> b!6177131 (= res!2556579 (not call!515586))))

(declare-fun b!6177132 () Bool)

(declare-fun res!2556573 () Bool)

(assert (=> b!6177132 (=> res!2556573 e!3762613)))

(assert (=> b!6177132 (= res!2556573 e!3762610)))

(declare-fun res!2556577 () Bool)

(assert (=> b!6177132 (=> (not res!2556577) (not e!3762610))))

(assert (=> b!6177132 (= res!2556577 lt!2338392)))

(declare-fun b!6177133 () Bool)

(assert (=> b!6177133 (= e!3762611 e!3762614)))

(declare-fun c!1113542 () Bool)

(assert (=> b!6177133 (= c!1113542 (is-EmptyLang!16116 lt!2338210))))

(declare-fun b!6177134 () Bool)

(assert (=> b!6177134 (= e!3762612 (not (= (head!12749 s!2326) (c!1113407 lt!2338210))))))

(declare-fun b!6177135 () Bool)

(assert (=> b!6177135 (= e!3762615 e!3762612)))

(declare-fun res!2556578 () Bool)

(assert (=> b!6177135 (=> res!2556578 e!3762612)))

(assert (=> b!6177135 (= res!2556578 call!515586)))

(declare-fun b!6177136 () Bool)

(assert (=> b!6177136 (= e!3762609 (matchR!8299 (derivativeStep!4833 lt!2338210 (head!12749 s!2326)) (tail!11834 s!2326)))))

(assert (= (and d!1936268 c!1113544) b!6177123))

(assert (= (and d!1936268 (not c!1113544)) b!6177136))

(assert (= (and d!1936268 c!1113543) b!6177125))

(assert (= (and d!1936268 (not c!1113543)) b!6177133))

(assert (= (and b!6177133 c!1113542) b!6177129))

(assert (= (and b!6177133 (not c!1113542)) b!6177130))

(assert (= (and b!6177130 (not res!2556572)) b!6177132))

(assert (= (and b!6177132 res!2556577) b!6177131))

(assert (= (and b!6177131 res!2556579) b!6177127))

(assert (= (and b!6177127 res!2556576) b!6177126))

(assert (= (and b!6177132 (not res!2556573)) b!6177128))

(assert (= (and b!6177128 res!2556575) b!6177135))

(assert (= (and b!6177135 (not res!2556578)) b!6177124))

(assert (= (and b!6177124 (not res!2556574)) b!6177134))

(assert (= (or b!6177125 b!6177135 b!6177131) bm!515581))

(assert (=> b!6177126 m!7012972))

(assert (=> b!6177136 m!7012972))

(assert (=> b!6177136 m!7012972))

(declare-fun m!7013174 () Bool)

(assert (=> b!6177136 m!7013174))

(assert (=> b!6177136 m!7012976))

(assert (=> b!6177136 m!7013174))

(assert (=> b!6177136 m!7012976))

(declare-fun m!7013176 () Bool)

(assert (=> b!6177136 m!7013176))

(assert (=> b!6177134 m!7012972))

(assert (=> d!1936268 m!7012968))

(assert (=> d!1936268 m!7013172))

(assert (=> bm!515581 m!7012968))

(assert (=> b!6177124 m!7012976))

(assert (=> b!6177124 m!7012976))

(assert (=> b!6177124 m!7013106))

(declare-fun m!7013178 () Bool)

(assert (=> b!6177123 m!7013178))

(assert (=> b!6177127 m!7012976))

(assert (=> b!6177127 m!7012976))

(assert (=> b!6177127 m!7013106))

(assert (=> b!6176624 d!1936268))

(declare-fun b!6177137 () Bool)

(declare-fun res!2556583 () Bool)

(declare-fun e!3762622 () Bool)

(assert (=> b!6177137 (=> (not res!2556583) (not e!3762622))))

(declare-fun call!515589 () Bool)

(assert (=> b!6177137 (= res!2556583 call!515589)))

(declare-fun e!3762620 () Bool)

(assert (=> b!6177137 (= e!3762620 e!3762622)))

(declare-fun b!6177138 () Bool)

(declare-fun e!3762618 () Bool)

(declare-fun e!3762621 () Bool)

(assert (=> b!6177138 (= e!3762618 e!3762621)))

(declare-fun res!2556582 () Bool)

(assert (=> b!6177138 (= res!2556582 (not (nullable!6109 (reg!16445 (generalisedConcat!1713 lt!2338208)))))))

(assert (=> b!6177138 (=> (not res!2556582) (not e!3762621))))

(declare-fun bm!515582 () Bool)

(declare-fun c!1113545 () Bool)

(assert (=> bm!515582 (= call!515589 (validRegex!7852 (ite c!1113545 (regOne!32745 (generalisedConcat!1713 lt!2338208)) (regOne!32744 (generalisedConcat!1713 lt!2338208)))))))

(declare-fun b!6177139 () Bool)

(declare-fun e!3762616 () Bool)

(assert (=> b!6177139 (= e!3762616 e!3762618)))

(declare-fun c!1113546 () Bool)

(assert (=> b!6177139 (= c!1113546 (is-Star!16116 (generalisedConcat!1713 lt!2338208)))))

(declare-fun bm!515583 () Bool)

(declare-fun call!515588 () Bool)

(declare-fun call!515587 () Bool)

(assert (=> bm!515583 (= call!515588 call!515587)))

(declare-fun b!6177140 () Bool)

(assert (=> b!6177140 (= e!3762622 call!515588)))

(declare-fun bm!515584 () Bool)

(assert (=> bm!515584 (= call!515587 (validRegex!7852 (ite c!1113546 (reg!16445 (generalisedConcat!1713 lt!2338208)) (ite c!1113545 (regTwo!32745 (generalisedConcat!1713 lt!2338208)) (regTwo!32744 (generalisedConcat!1713 lt!2338208))))))))

(declare-fun b!6177141 () Bool)

(assert (=> b!6177141 (= e!3762621 call!515587)))

(declare-fun b!6177142 () Bool)

(declare-fun e!3762617 () Bool)

(assert (=> b!6177142 (= e!3762617 call!515588)))

(declare-fun b!6177143 () Bool)

(declare-fun res!2556580 () Bool)

(declare-fun e!3762619 () Bool)

(assert (=> b!6177143 (=> res!2556580 e!3762619)))

(assert (=> b!6177143 (= res!2556580 (not (is-Concat!24961 (generalisedConcat!1713 lt!2338208))))))

(assert (=> b!6177143 (= e!3762620 e!3762619)))

(declare-fun b!6177144 () Bool)

(assert (=> b!6177144 (= e!3762619 e!3762617)))

(declare-fun res!2556584 () Bool)

(assert (=> b!6177144 (=> (not res!2556584) (not e!3762617))))

(assert (=> b!6177144 (= res!2556584 call!515589)))

(declare-fun d!1936270 () Bool)

(declare-fun res!2556581 () Bool)

(assert (=> d!1936270 (=> res!2556581 e!3762616)))

(assert (=> d!1936270 (= res!2556581 (is-ElementMatch!16116 (generalisedConcat!1713 lt!2338208)))))

(assert (=> d!1936270 (= (validRegex!7852 (generalisedConcat!1713 lt!2338208)) e!3762616)))

(declare-fun b!6177145 () Bool)

(assert (=> b!6177145 (= e!3762618 e!3762620)))

(assert (=> b!6177145 (= c!1113545 (is-Union!16116 (generalisedConcat!1713 lt!2338208)))))

(assert (= (and d!1936270 (not res!2556581)) b!6177139))

(assert (= (and b!6177139 c!1113546) b!6177138))

(assert (= (and b!6177139 (not c!1113546)) b!6177145))

(assert (= (and b!6177138 res!2556582) b!6177141))

(assert (= (and b!6177145 c!1113545) b!6177137))

(assert (= (and b!6177145 (not c!1113545)) b!6177143))

(assert (= (and b!6177137 res!2556583) b!6177140))

(assert (= (and b!6177143 (not res!2556580)) b!6177144))

(assert (= (and b!6177144 res!2556584) b!6177142))

(assert (= (or b!6177140 b!6177142) bm!515583))

(assert (= (or b!6177137 b!6177144) bm!515582))

(assert (= (or b!6177141 bm!515583) bm!515584))

(declare-fun m!7013180 () Bool)

(assert (=> b!6177138 m!7013180))

(declare-fun m!7013182 () Bool)

(assert (=> bm!515582 m!7013182))

(declare-fun m!7013184 () Bool)

(assert (=> bm!515584 m!7013184))

(assert (=> b!6176624 d!1936270))

(declare-fun bs!1531779 () Bool)

(declare-fun d!1936272 () Bool)

(assert (= bs!1531779 (and d!1936272 d!1936260)))

(declare-fun lambda!337252 () Int)

(assert (=> bs!1531779 (= lambda!337252 lambda!337251)))

(declare-fun bs!1531780 () Bool)

(assert (= bs!1531780 (and d!1936272 d!1936224)))

(assert (=> bs!1531780 (= lambda!337252 lambda!337229)))

(declare-fun bs!1531781 () Bool)

(assert (= bs!1531781 (and d!1936272 d!1936226)))

(assert (=> bs!1531781 (= lambda!337252 lambda!337232)))

(declare-fun bs!1531782 () Bool)

(assert (= bs!1531782 (and d!1936272 d!1936258)))

(assert (=> bs!1531782 (= lambda!337252 lambda!337250)))

(declare-fun bs!1531783 () Bool)

(assert (= bs!1531783 (and d!1936272 d!1936162)))

(assert (=> bs!1531783 (= lambda!337252 lambda!337226)))

(declare-fun b!6177147 () Bool)

(declare-fun e!3762626 () Bool)

(declare-fun lt!2338393 () Regex!16116)

(assert (=> b!6177147 (= e!3762626 (isEmptyExpr!1531 lt!2338393))))

(declare-fun b!6177148 () Bool)

(declare-fun e!3762627 () Bool)

(assert (=> b!6177148 (= e!3762627 e!3762626)))

(declare-fun c!1113550 () Bool)

(assert (=> b!6177148 (= c!1113550 (isEmpty!36502 lt!2338208))))

(declare-fun b!6177149 () Bool)

(declare-fun e!3762624 () Regex!16116)

(assert (=> b!6177149 (= e!3762624 (Concat!24961 (h!70971 lt!2338208) (generalisedConcat!1713 (t!378153 lt!2338208))))))

(declare-fun b!6177150 () Bool)

(declare-fun e!3762628 () Regex!16116)

(assert (=> b!6177150 (= e!3762628 e!3762624)))

(declare-fun c!1113547 () Bool)

(assert (=> b!6177150 (= c!1113547 (is-Cons!64523 lt!2338208))))

(declare-fun b!6177151 () Bool)

(declare-fun e!3762623 () Bool)

(assert (=> b!6177151 (= e!3762623 (isConcat!1054 lt!2338393))))

(declare-fun b!6177152 () Bool)

(assert (=> b!6177152 (= e!3762623 (= lt!2338393 (head!12750 lt!2338208)))))

(declare-fun b!6177153 () Bool)

(assert (=> b!6177153 (= e!3762628 (h!70971 lt!2338208))))

(declare-fun b!6177146 () Bool)

(declare-fun e!3762625 () Bool)

(assert (=> b!6177146 (= e!3762625 (isEmpty!36502 (t!378153 lt!2338208)))))

(assert (=> d!1936272 e!3762627))

(declare-fun res!2556585 () Bool)

(assert (=> d!1936272 (=> (not res!2556585) (not e!3762627))))

(assert (=> d!1936272 (= res!2556585 (validRegex!7852 lt!2338393))))

(assert (=> d!1936272 (= lt!2338393 e!3762628)))

(declare-fun c!1113548 () Bool)

(assert (=> d!1936272 (= c!1113548 e!3762625)))

(declare-fun res!2556586 () Bool)

(assert (=> d!1936272 (=> (not res!2556586) (not e!3762625))))

(assert (=> d!1936272 (= res!2556586 (is-Cons!64523 lt!2338208))))

(assert (=> d!1936272 (forall!15235 lt!2338208 lambda!337252)))

(assert (=> d!1936272 (= (generalisedConcat!1713 lt!2338208) lt!2338393)))

(declare-fun b!6177154 () Bool)

(assert (=> b!6177154 (= e!3762626 e!3762623)))

(declare-fun c!1113549 () Bool)

(assert (=> b!6177154 (= c!1113549 (isEmpty!36502 (tail!11835 lt!2338208)))))

(declare-fun b!6177155 () Bool)

(assert (=> b!6177155 (= e!3762624 EmptyExpr!16116)))

(assert (= (and d!1936272 res!2556586) b!6177146))

(assert (= (and d!1936272 c!1113548) b!6177153))

(assert (= (and d!1936272 (not c!1113548)) b!6177150))

(assert (= (and b!6177150 c!1113547) b!6177149))

(assert (= (and b!6177150 (not c!1113547)) b!6177155))

(assert (= (and d!1936272 res!2556585) b!6177148))

(assert (= (and b!6177148 c!1113550) b!6177147))

(assert (= (and b!6177148 (not c!1113550)) b!6177154))

(assert (= (and b!6177154 c!1113549) b!6177152))

(assert (= (and b!6177154 (not c!1113549)) b!6177151))

(declare-fun m!7013186 () Bool)

(assert (=> b!6177148 m!7013186))

(declare-fun m!7013188 () Bool)

(assert (=> b!6177146 m!7013188))

(declare-fun m!7013190 () Bool)

(assert (=> b!6177147 m!7013190))

(declare-fun m!7013192 () Bool)

(assert (=> b!6177151 m!7013192))

(declare-fun m!7013194 () Bool)

(assert (=> b!6177149 m!7013194))

(declare-fun m!7013196 () Bool)

(assert (=> b!6177154 m!7013196))

(assert (=> b!6177154 m!7013196))

(declare-fun m!7013198 () Bool)

(assert (=> b!6177154 m!7013198))

(declare-fun m!7013200 () Bool)

(assert (=> d!1936272 m!7013200))

(declare-fun m!7013202 () Bool)

(assert (=> d!1936272 m!7013202))

(declare-fun m!7013204 () Bool)

(assert (=> b!6177152 m!7013204))

(assert (=> b!6176624 d!1936272))

(declare-fun bs!1531784 () Bool)

(declare-fun d!1936274 () Bool)

(assert (= bs!1531784 (and d!1936274 d!1936272)))

(declare-fun lambda!337253 () Int)

(assert (=> bs!1531784 (= lambda!337253 lambda!337252)))

(declare-fun bs!1531785 () Bool)

(assert (= bs!1531785 (and d!1936274 d!1936260)))

(assert (=> bs!1531785 (= lambda!337253 lambda!337251)))

(declare-fun bs!1531786 () Bool)

(assert (= bs!1531786 (and d!1936274 d!1936224)))

(assert (=> bs!1531786 (= lambda!337253 lambda!337229)))

(declare-fun bs!1531787 () Bool)

(assert (= bs!1531787 (and d!1936274 d!1936226)))

(assert (=> bs!1531787 (= lambda!337253 lambda!337232)))

(declare-fun bs!1531788 () Bool)

(assert (= bs!1531788 (and d!1936274 d!1936258)))

(assert (=> bs!1531788 (= lambda!337253 lambda!337250)))

(declare-fun bs!1531789 () Bool)

(assert (= bs!1531789 (and d!1936274 d!1936162)))

(assert (=> bs!1531789 (= lambda!337253 lambda!337226)))

(declare-fun b!6177157 () Bool)

(declare-fun e!3762632 () Bool)

(declare-fun lt!2338394 () Regex!16116)

(assert (=> b!6177157 (= e!3762632 (isEmptyExpr!1531 lt!2338394))))

(declare-fun b!6177158 () Bool)

(declare-fun e!3762633 () Bool)

(assert (=> b!6177158 (= e!3762633 e!3762632)))

(declare-fun c!1113554 () Bool)

(assert (=> b!6177158 (= c!1113554 (isEmpty!36502 lt!2338185))))

(declare-fun b!6177159 () Bool)

(declare-fun e!3762630 () Regex!16116)

(assert (=> b!6177159 (= e!3762630 (Concat!24961 (h!70971 lt!2338185) (generalisedConcat!1713 (t!378153 lt!2338185))))))

(declare-fun b!6177160 () Bool)

(declare-fun e!3762634 () Regex!16116)

(assert (=> b!6177160 (= e!3762634 e!3762630)))

(declare-fun c!1113551 () Bool)

(assert (=> b!6177160 (= c!1113551 (is-Cons!64523 lt!2338185))))

(declare-fun b!6177161 () Bool)

(declare-fun e!3762629 () Bool)

(assert (=> b!6177161 (= e!3762629 (isConcat!1054 lt!2338394))))

(declare-fun b!6177162 () Bool)

(assert (=> b!6177162 (= e!3762629 (= lt!2338394 (head!12750 lt!2338185)))))

(declare-fun b!6177163 () Bool)

(assert (=> b!6177163 (= e!3762634 (h!70971 lt!2338185))))

(declare-fun b!6177156 () Bool)

(declare-fun e!3762631 () Bool)

(assert (=> b!6177156 (= e!3762631 (isEmpty!36502 (t!378153 lt!2338185)))))

(assert (=> d!1936274 e!3762633))

(declare-fun res!2556587 () Bool)

(assert (=> d!1936274 (=> (not res!2556587) (not e!3762633))))

(assert (=> d!1936274 (= res!2556587 (validRegex!7852 lt!2338394))))

(assert (=> d!1936274 (= lt!2338394 e!3762634)))

(declare-fun c!1113552 () Bool)

(assert (=> d!1936274 (= c!1113552 e!3762631)))

(declare-fun res!2556588 () Bool)

(assert (=> d!1936274 (=> (not res!2556588) (not e!3762631))))

(assert (=> d!1936274 (= res!2556588 (is-Cons!64523 lt!2338185))))

(assert (=> d!1936274 (forall!15235 lt!2338185 lambda!337253)))

(assert (=> d!1936274 (= (generalisedConcat!1713 lt!2338185) lt!2338394)))

(declare-fun b!6177164 () Bool)

(assert (=> b!6177164 (= e!3762632 e!3762629)))

(declare-fun c!1113553 () Bool)

(assert (=> b!6177164 (= c!1113553 (isEmpty!36502 (tail!11835 lt!2338185)))))

(declare-fun b!6177165 () Bool)

(assert (=> b!6177165 (= e!3762630 EmptyExpr!16116)))

(assert (= (and d!1936274 res!2556588) b!6177156))

(assert (= (and d!1936274 c!1113552) b!6177163))

(assert (= (and d!1936274 (not c!1113552)) b!6177160))

(assert (= (and b!6177160 c!1113551) b!6177159))

(assert (= (and b!6177160 (not c!1113551)) b!6177165))

(assert (= (and d!1936274 res!2556587) b!6177158))

(assert (= (and b!6177158 c!1113554) b!6177157))

(assert (= (and b!6177158 (not c!1113554)) b!6177164))

(assert (= (and b!6177164 c!1113553) b!6177162))

(assert (= (and b!6177164 (not c!1113553)) b!6177161))

(declare-fun m!7013206 () Bool)

(assert (=> b!6177158 m!7013206))

(declare-fun m!7013208 () Bool)

(assert (=> b!6177156 m!7013208))

(declare-fun m!7013210 () Bool)

(assert (=> b!6177157 m!7013210))

(declare-fun m!7013212 () Bool)

(assert (=> b!6177161 m!7013212))

(declare-fun m!7013214 () Bool)

(assert (=> b!6177159 m!7013214))

(declare-fun m!7013216 () Bool)

(assert (=> b!6177164 m!7013216))

(assert (=> b!6177164 m!7013216))

(declare-fun m!7013218 () Bool)

(assert (=> b!6177164 m!7013218))

(declare-fun m!7013220 () Bool)

(assert (=> d!1936274 m!7013220))

(declare-fun m!7013222 () Bool)

(assert (=> d!1936274 m!7013222))

(declare-fun m!7013224 () Bool)

(assert (=> b!6177162 m!7013224))

(assert (=> b!6176624 d!1936274))

(assert (=> b!6176602 d!1936160))

(declare-fun b!6177179 () Bool)

(declare-fun e!3762637 () Bool)

(declare-fun tp!1724334 () Bool)

(declare-fun tp!1724335 () Bool)

(assert (=> b!6177179 (= e!3762637 (and tp!1724334 tp!1724335))))

(declare-fun b!6177178 () Bool)

(declare-fun tp!1724333 () Bool)

(assert (=> b!6177178 (= e!3762637 tp!1724333)))

(assert (=> b!6176623 (= tp!1724287 e!3762637)))

(declare-fun b!6177176 () Bool)

(assert (=> b!6177176 (= e!3762637 tp_is_empty!41485)))

(declare-fun b!6177177 () Bool)

(declare-fun tp!1724336 () Bool)

(declare-fun tp!1724337 () Bool)

(assert (=> b!6177177 (= e!3762637 (and tp!1724336 tp!1724337))))

(assert (= (and b!6176623 (is-ElementMatch!16116 (regOne!32745 r!7292))) b!6177176))

(assert (= (and b!6176623 (is-Concat!24961 (regOne!32745 r!7292))) b!6177177))

(assert (= (and b!6176623 (is-Star!16116 (regOne!32745 r!7292))) b!6177178))

(assert (= (and b!6176623 (is-Union!16116 (regOne!32745 r!7292))) b!6177179))

(declare-fun b!6177183 () Bool)

(declare-fun e!3762638 () Bool)

(declare-fun tp!1724339 () Bool)

(declare-fun tp!1724340 () Bool)

(assert (=> b!6177183 (= e!3762638 (and tp!1724339 tp!1724340))))

(declare-fun b!6177182 () Bool)

(declare-fun tp!1724338 () Bool)

(assert (=> b!6177182 (= e!3762638 tp!1724338)))

(assert (=> b!6176623 (= tp!1724286 e!3762638)))

(declare-fun b!6177180 () Bool)

(assert (=> b!6177180 (= e!3762638 tp_is_empty!41485)))

(declare-fun b!6177181 () Bool)

(declare-fun tp!1724341 () Bool)

(declare-fun tp!1724342 () Bool)

(assert (=> b!6177181 (= e!3762638 (and tp!1724341 tp!1724342))))

(assert (= (and b!6176623 (is-ElementMatch!16116 (regTwo!32745 r!7292))) b!6177180))

(assert (= (and b!6176623 (is-Concat!24961 (regTwo!32745 r!7292))) b!6177181))

(assert (= (and b!6176623 (is-Star!16116 (regTwo!32745 r!7292))) b!6177182))

(assert (= (and b!6176623 (is-Union!16116 (regTwo!32745 r!7292))) b!6177183))

(declare-fun b!6177188 () Bool)

(declare-fun e!3762641 () Bool)

(declare-fun tp!1724345 () Bool)

(assert (=> b!6177188 (= e!3762641 (and tp_is_empty!41485 tp!1724345))))

(assert (=> b!6176611 (= tp!1724285 e!3762641)))

(assert (= (and b!6176611 (is-Cons!64525 (t!378155 s!2326))) b!6177188))

(declare-fun b!6177192 () Bool)

(declare-fun e!3762642 () Bool)

(declare-fun tp!1724347 () Bool)

(declare-fun tp!1724348 () Bool)

(assert (=> b!6177192 (= e!3762642 (and tp!1724347 tp!1724348))))

(declare-fun b!6177191 () Bool)

(declare-fun tp!1724346 () Bool)

(assert (=> b!6177191 (= e!3762642 tp!1724346)))

(assert (=> b!6176630 (= tp!1724283 e!3762642)))

(declare-fun b!6177189 () Bool)

(assert (=> b!6177189 (= e!3762642 tp_is_empty!41485)))

(declare-fun b!6177190 () Bool)

(declare-fun tp!1724349 () Bool)

(declare-fun tp!1724350 () Bool)

(assert (=> b!6177190 (= e!3762642 (and tp!1724349 tp!1724350))))

(assert (= (and b!6176630 (is-ElementMatch!16116 (regOne!32744 r!7292))) b!6177189))

(assert (= (and b!6176630 (is-Concat!24961 (regOne!32744 r!7292))) b!6177190))

(assert (= (and b!6176630 (is-Star!16116 (regOne!32744 r!7292))) b!6177191))

(assert (= (and b!6176630 (is-Union!16116 (regOne!32744 r!7292))) b!6177192))

(declare-fun b!6177196 () Bool)

(declare-fun e!3762643 () Bool)

(declare-fun tp!1724352 () Bool)

(declare-fun tp!1724353 () Bool)

(assert (=> b!6177196 (= e!3762643 (and tp!1724352 tp!1724353))))

(declare-fun b!6177195 () Bool)

(declare-fun tp!1724351 () Bool)

(assert (=> b!6177195 (= e!3762643 tp!1724351)))

(assert (=> b!6176630 (= tp!1724290 e!3762643)))

(declare-fun b!6177193 () Bool)

(assert (=> b!6177193 (= e!3762643 tp_is_empty!41485)))

(declare-fun b!6177194 () Bool)

(declare-fun tp!1724354 () Bool)

(declare-fun tp!1724355 () Bool)

(assert (=> b!6177194 (= e!3762643 (and tp!1724354 tp!1724355))))

(assert (= (and b!6176630 (is-ElementMatch!16116 (regTwo!32744 r!7292))) b!6177193))

(assert (= (and b!6176630 (is-Concat!24961 (regTwo!32744 r!7292))) b!6177194))

(assert (= (and b!6176630 (is-Star!16116 (regTwo!32744 r!7292))) b!6177195))

(assert (= (and b!6176630 (is-Union!16116 (regTwo!32744 r!7292))) b!6177196))

(declare-fun condSetEmpty!41891 () Bool)

(assert (=> setNonEmpty!41885 (= condSetEmpty!41891 (= setRest!41885 (as set.empty (Set Context!11000))))))

(declare-fun setRes!41891 () Bool)

(assert (=> setNonEmpty!41885 (= tp!1724289 setRes!41891)))

(declare-fun setIsEmpty!41891 () Bool)

(assert (=> setIsEmpty!41891 setRes!41891))

(declare-fun e!3762646 () Bool)

(declare-fun setElem!41891 () Context!11000)

(declare-fun tp!1724360 () Bool)

(declare-fun setNonEmpty!41891 () Bool)

(assert (=> setNonEmpty!41891 (= setRes!41891 (and tp!1724360 (inv!83538 setElem!41891) e!3762646))))

(declare-fun setRest!41891 () (Set Context!11000))

(assert (=> setNonEmpty!41891 (= setRest!41885 (set.union (set.insert setElem!41891 (as set.empty (Set Context!11000))) setRest!41891))))

(declare-fun b!6177201 () Bool)

(declare-fun tp!1724361 () Bool)

(assert (=> b!6177201 (= e!3762646 tp!1724361)))

(assert (= (and setNonEmpty!41885 condSetEmpty!41891) setIsEmpty!41891))

(assert (= (and setNonEmpty!41885 (not condSetEmpty!41891)) setNonEmpty!41891))

(assert (= setNonEmpty!41891 b!6177201))

(declare-fun m!7013226 () Bool)

(assert (=> setNonEmpty!41891 m!7013226))

(declare-fun b!6177206 () Bool)

(declare-fun e!3762649 () Bool)

(declare-fun tp!1724366 () Bool)

(declare-fun tp!1724367 () Bool)

(assert (=> b!6177206 (= e!3762649 (and tp!1724366 tp!1724367))))

(assert (=> b!6176599 (= tp!1724288 e!3762649)))

(assert (= (and b!6176599 (is-Cons!64523 (exprs!6000 setElem!41885))) b!6177206))

(declare-fun b!6177210 () Bool)

(declare-fun e!3762650 () Bool)

(declare-fun tp!1724369 () Bool)

(declare-fun tp!1724370 () Bool)

(assert (=> b!6177210 (= e!3762650 (and tp!1724369 tp!1724370))))

(declare-fun b!6177209 () Bool)

(declare-fun tp!1724368 () Bool)

(assert (=> b!6177209 (= e!3762650 tp!1724368)))

(assert (=> b!6176615 (= tp!1724292 e!3762650)))

(declare-fun b!6177207 () Bool)

(assert (=> b!6177207 (= e!3762650 tp_is_empty!41485)))

(declare-fun b!6177208 () Bool)

(declare-fun tp!1724371 () Bool)

(declare-fun tp!1724372 () Bool)

(assert (=> b!6177208 (= e!3762650 (and tp!1724371 tp!1724372))))

(assert (= (and b!6176615 (is-ElementMatch!16116 (reg!16445 r!7292))) b!6177207))

(assert (= (and b!6176615 (is-Concat!24961 (reg!16445 r!7292))) b!6177208))

(assert (= (and b!6176615 (is-Star!16116 (reg!16445 r!7292))) b!6177209))

(assert (= (and b!6176615 (is-Union!16116 (reg!16445 r!7292))) b!6177210))

(declare-fun b!6177218 () Bool)

(declare-fun e!3762656 () Bool)

(declare-fun tp!1724377 () Bool)

(assert (=> b!6177218 (= e!3762656 tp!1724377)))

(declare-fun tp!1724378 () Bool)

(declare-fun e!3762655 () Bool)

(declare-fun b!6177217 () Bool)

(assert (=> b!6177217 (= e!3762655 (and (inv!83538 (h!70972 (t!378154 zl!343))) e!3762656 tp!1724378))))

(assert (=> b!6176604 (= tp!1724291 e!3762655)))

(assert (= b!6177217 b!6177218))

(assert (= (and b!6176604 (is-Cons!64524 (t!378154 zl!343))) b!6177217))

(declare-fun m!7013228 () Bool)

(assert (=> b!6177217 m!7013228))

(declare-fun b!6177219 () Bool)

(declare-fun e!3762657 () Bool)

(declare-fun tp!1724379 () Bool)

(declare-fun tp!1724380 () Bool)

(assert (=> b!6177219 (= e!3762657 (and tp!1724379 tp!1724380))))

(assert (=> b!6176628 (= tp!1724284 e!3762657)))

(assert (= (and b!6176628 (is-Cons!64523 (exprs!6000 (h!70972 zl!343)))) b!6177219))

(declare-fun b_lambda!235107 () Bool)

(assert (= b_lambda!235101 (or b!6176614 b_lambda!235107)))

(declare-fun bs!1531790 () Bool)

(declare-fun d!1936276 () Bool)

(assert (= bs!1531790 (and d!1936276 b!6176614)))

(assert (=> bs!1531790 (= (dynLambda!25446 lambda!337208 (h!70972 zl!343)) (derivationStepZipperUp!1290 (h!70972 zl!343) (h!70973 s!2326)))))

(assert (=> bs!1531790 m!7012660))

(assert (=> d!1936176 d!1936276))

(declare-fun b_lambda!235109 () Bool)

(assert (= b_lambda!235103 (or b!6176614 b_lambda!235109)))

(declare-fun bs!1531791 () Bool)

(declare-fun d!1936278 () Bool)

(assert (= bs!1531791 (and d!1936278 b!6176614)))

(assert (=> bs!1531791 (= (dynLambda!25446 lambda!337208 lt!2338190) (derivationStepZipperUp!1290 lt!2338190 (h!70973 s!2326)))))

(assert (=> bs!1531791 m!7012686))

(assert (=> d!1936194 d!1936278))

(declare-fun b_lambda!235111 () Bool)

(assert (= b_lambda!235105 (or b!6176614 b_lambda!235111)))

(declare-fun bs!1531792 () Bool)

(declare-fun d!1936280 () Bool)

(assert (= bs!1531792 (and d!1936280 b!6176614)))

(assert (=> bs!1531792 (= (dynLambda!25446 lambda!337208 lt!2338199) (derivationStepZipperUp!1290 lt!2338199 (h!70973 s!2326)))))

(assert (=> bs!1531792 m!7012682))

(assert (=> d!1936202 d!1936280))

(push 1)

(assert (not b!6177209))

(assert (not d!1936176))

(assert (not b!6177077))

(assert (not d!1936240))

(assert (not b!6177126))

(assert (not b!6176976))

(assert (not b!6177121))

(assert (not b!6177177))

(assert (not bs!1531791))

(assert (not b!6177064))

(assert (not b!6177219))

(assert (not bm!515581))

(assert (not b!6176838))

(assert (not b!6177218))

(assert (not b!6176818))

(assert (not d!1936192))

(assert (not b!6177136))

(assert (not b!6176815))

(assert (not b!6176809))

(assert (not b!6177190))

(assert (not bm!515559))

(assert (not d!1936236))

(assert (not b!6176970))

(assert (not d!1936250))

(assert (not b!6176781))

(assert (not b!6176904))

(assert (not b!6176989))

(assert tp_is_empty!41485)

(assert (not d!1936242))

(assert (not d!1936248))

(assert (not b!6176894))

(assert (not d!1936210))

(assert (not b!6176893))

(assert (not b!6176813))

(assert (not b!6177101))

(assert (not d!1936234))

(assert (not b!6176881))

(assert (not b!6177208))

(assert (not b!6177179))

(assert (not d!1936264))

(assert (not setNonEmpty!41891))

(assert (not bm!515571))

(assert (not b!6177134))

(assert (not b!6176817))

(assert (not b!6176988))

(assert (not b!6177162))

(assert (not b!6177146))

(assert (not b!6177194))

(assert (not b!6176945))

(assert (not b!6177123))

(assert (not d!1936182))

(assert (not bm!515582))

(assert (not d!1936160))

(assert (not b!6176883))

(assert (not b!6177195))

(assert (not bm!515576))

(assert (not b!6177158))

(assert (not bm!515553))

(assert (not b!6176832))

(assert (not b!6176990))

(assert (not b!6176971))

(assert (not b!6176875))

(assert (not b!6176833))

(assert (not b!6177065))

(assert (not b_lambda!235111))

(assert (not bm!515556))

(assert (not bm!515544))

(assert (not b!6176977))

(assert (not d!1936224))

(assert (not b!6177188))

(assert (not b!6177119))

(assert (not d!1936194))

(assert (not d!1936230))

(assert (not d!1936164))

(assert (not d!1936166))

(assert (not b_lambda!235109))

(assert (not bm!515550))

(assert (not bm!515562))

(assert (not b!6176985))

(assert (not d!1936178))

(assert (not b!6177191))

(assert (not b!6176775))

(assert (not b!6177159))

(assert (not bm!515545))

(assert (not bm!515528))

(assert (not b!6176882))

(assert (not d!1936226))

(assert (not bm!515569))

(assert (not b!6176887))

(assert (not bm!515580))

(assert (not d!1936252))

(assert (not b!6176808))

(assert (not d!1936204))

(assert (not b!6177098))

(assert (not b!6176987))

(assert (not b!6176947))

(assert (not d!1936266))

(assert (not b!6177178))

(assert (not b!6176992))

(assert (not b!6177067))

(assert (not b!6176991))

(assert (not b!6176895))

(assert (not b!6176816))

(assert (not bm!515548))

(assert (not bm!515547))

(assert (not d!1936190))

(assert (not b!6177097))

(assert (not b!6177127))

(assert (not b!6177104))

(assert (not b!6176814))

(assert (not b!6176872))

(assert (not b!6177182))

(assert (not d!1936268))

(assert (not b!6177210))

(assert (not b!6177161))

(assert (not d!1936202))

(assert (not b!6177151))

(assert (not d!1936254))

(assert (not b!6176986))

(assert (not b!6177103))

(assert (not b!6177183))

(assert (not bm!515584))

(assert (not b!6177196))

(assert (not b!6176805))

(assert (not d!1936262))

(assert (not d!1936246))

(assert (not d!1936228))

(assert (not bm!515554))

(assert (not b!6176782))

(assert (not d!1936170))

(assert (not b!6176880))

(assert (not b!6176975))

(assert (not bs!1531792))

(assert (not b!6176876))

(assert (not b!6177201))

(assert (not b!6177181))

(assert (not b!6177192))

(assert (not b!6176937))

(assert (not d!1936168))

(assert (not b_lambda!235107))

(assert (not b!6177124))

(assert (not d!1936172))

(assert (not b!6177147))

(assert (not b!6177028))

(assert (not bm!515577))

(assert (not b!6177154))

(assert (not b!6177156))

(assert (not b!6176892))

(assert (not b!6176811))

(assert (not d!1936208))

(assert (not b!6177100))

(assert (not b!6177122))

(assert (not d!1936272))

(assert (not b!6177138))

(assert (not b!6176804))

(assert (not b!6177068))

(assert (not b!6177148))

(assert (not b!6177120))

(assert (not d!1936200))

(assert (not b!6177075))

(assert (not d!1936256))

(assert (not b!6177149))

(assert (not b!6176915))

(assert (not d!1936260))

(assert (not b!6176888))

(assert (not b!6176837))

(assert (not d!1936244))

(assert (not b!6176983))

(assert (not b!6177217))

(assert (not b!6176973))

(assert (not bm!515549))

(assert (not d!1936232))

(assert (not b!6177206))

(assert (not d!1936162))

(assert (not b!6176803))

(assert (not b!6176972))

(assert (not b!6177152))

(assert (not bm!515560))

(assert (not b!6177164))

(assert (not bm!515529))

(assert (not d!1936274))

(assert (not b!6176821))

(assert (not bs!1531790))

(assert (not b!6177035))

(assert (not b!6176806))

(assert (not b!6177157))

(assert (not d!1936258))

(assert (not d!1936206))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

