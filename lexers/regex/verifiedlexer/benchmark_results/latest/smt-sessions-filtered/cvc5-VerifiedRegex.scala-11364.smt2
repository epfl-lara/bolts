; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!602470 () Bool)

(assert start!602470)

(declare-fun b!5926417 () Bool)

(assert (=> b!5926417 true))

(assert (=> b!5926417 true))

(declare-fun lambda!323214 () Int)

(declare-fun lambda!323213 () Int)

(assert (=> b!5926417 (not (= lambda!323214 lambda!323213))))

(assert (=> b!5926417 true))

(assert (=> b!5926417 true))

(declare-fun b!5926434 () Bool)

(assert (=> b!5926434 true))

(declare-fun b!5926415 () Bool)

(declare-fun res!2483552 () Bool)

(declare-fun e!3627567 () Bool)

(assert (=> b!5926415 (=> res!2483552 e!3627567)))

(declare-datatypes ((C!32218 0))(
  ( (C!32219 (val!25811 Int)) )
))
(declare-datatypes ((Regex!15974 0))(
  ( (ElementMatch!15974 (c!1053341 C!32218)) (Concat!24819 (regOne!32460 Regex!15974) (regTwo!32460 Regex!15974)) (EmptyExpr!15974) (Star!15974 (reg!16303 Regex!15974)) (EmptyLang!15974) (Union!15974 (regOne!32461 Regex!15974) (regTwo!32461 Regex!15974)) )
))
(declare-fun r!7292 () Regex!15974)

(assert (=> b!5926415 (= res!2483552 (or (is-EmptyExpr!15974 r!7292) (is-EmptyLang!15974 r!7292) (is-ElementMatch!15974 r!7292) (is-Union!15974 r!7292) (not (is-Concat!24819 r!7292))))))

(declare-fun e!3627565 () Bool)

(assert (=> b!5926417 (= e!3627567 e!3627565)))

(declare-fun res!2483553 () Bool)

(assert (=> b!5926417 (=> res!2483553 e!3627565)))

(declare-fun lt!2310347 () Bool)

(declare-fun lt!2310346 () Bool)

(declare-datatypes ((List!64221 0))(
  ( (Nil!64097) (Cons!64097 (h!70545 C!32218) (t!377616 List!64221)) )
))
(declare-fun s!2326 () List!64221)

(assert (=> b!5926417 (= res!2483553 (or (not (= lt!2310347 lt!2310346)) (is-Nil!64097 s!2326)))))

(declare-fun Exists!3044 (Int) Bool)

(assert (=> b!5926417 (= (Exists!3044 lambda!323213) (Exists!3044 lambda!323214))))

(declare-datatypes ((Unit!157219 0))(
  ( (Unit!157220) )
))
(declare-fun lt!2310345 () Unit!157219)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1581 (Regex!15974 Regex!15974 List!64221) Unit!157219)

(assert (=> b!5926417 (= lt!2310345 (lemmaExistCutMatchRandMatchRSpecEquivalent!1581 (regOne!32460 r!7292) (regTwo!32460 r!7292) s!2326))))

(assert (=> b!5926417 (= lt!2310346 (Exists!3044 lambda!323213))))

(declare-datatypes ((tuple2!65906 0))(
  ( (tuple2!65907 (_1!36256 List!64221) (_2!36256 List!64221)) )
))
(declare-datatypes ((Option!15865 0))(
  ( (None!15864) (Some!15864 (v!51962 tuple2!65906)) )
))
(declare-fun isDefined!12568 (Option!15865) Bool)

(declare-fun findConcatSeparation!2279 (Regex!15974 Regex!15974 List!64221 List!64221 List!64221) Option!15865)

(assert (=> b!5926417 (= lt!2310346 (isDefined!12568 (findConcatSeparation!2279 (regOne!32460 r!7292) (regTwo!32460 r!7292) Nil!64097 s!2326 s!2326)))))

(declare-fun lt!2310350 () Unit!157219)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2043 (Regex!15974 Regex!15974 List!64221) Unit!157219)

(assert (=> b!5926417 (= lt!2310350 (lemmaFindConcatSeparationEquivalentToExists!2043 (regOne!32460 r!7292) (regTwo!32460 r!7292) s!2326))))

(declare-datatypes ((List!64222 0))(
  ( (Nil!64098) (Cons!64098 (h!70546 Regex!15974) (t!377617 List!64222)) )
))
(declare-datatypes ((Context!10716 0))(
  ( (Context!10717 (exprs!5858 List!64222)) )
))
(declare-fun setElem!40219 () Context!10716)

(declare-fun e!3627563 () Bool)

(declare-fun tp!1648184 () Bool)

(declare-fun setRes!40219 () Bool)

(declare-fun setNonEmpty!40219 () Bool)

(declare-fun inv!83183 (Context!10716) Bool)

(assert (=> setNonEmpty!40219 (= setRes!40219 (and tp!1648184 (inv!83183 setElem!40219) e!3627563))))

(declare-fun z!1189 () (Set Context!10716))

(declare-fun setRest!40219 () (Set Context!10716))

(assert (=> setNonEmpty!40219 (= z!1189 (set.union (set.insert setElem!40219 (as set.empty (Set Context!10716))) setRest!40219))))

(declare-fun b!5926418 () Bool)

(declare-fun e!3627568 () Bool)

(declare-fun lt!2310343 () List!64222)

(assert (=> b!5926418 (= e!3627568 (inv!83183 (Context!10717 lt!2310343)))))

(declare-fun lt!2310351 () (Set Context!10716))

(declare-fun derivationStepZipperUp!1150 (Context!10716 C!32218) (Set Context!10716))

(assert (=> b!5926418 (= lt!2310351 (derivationStepZipperUp!1150 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343)) (h!70545 s!2326)))))

(assert (=> b!5926418 (= lt!2310343 (Cons!64098 (regTwo!32460 r!7292) Nil!64098))))

(declare-fun b!5926419 () Bool)

(declare-fun res!2483556 () Bool)

(declare-fun e!3627562 () Bool)

(assert (=> b!5926419 (=> (not res!2483556) (not e!3627562))))

(declare-datatypes ((List!64223 0))(
  ( (Nil!64099) (Cons!64099 (h!70547 Context!10716) (t!377618 List!64223)) )
))
(declare-fun zl!343 () List!64223)

(declare-fun toList!9758 ((Set Context!10716)) List!64223)

(assert (=> b!5926419 (= res!2483556 (= (toList!9758 z!1189) zl!343))))

(declare-fun b!5926420 () Bool)

(declare-fun res!2483551 () Bool)

(assert (=> b!5926420 (=> res!2483551 e!3627567)))

(declare-fun generalisedConcat!1571 (List!64222) Regex!15974)

(assert (=> b!5926420 (= res!2483551 (not (= r!7292 (generalisedConcat!1571 (exprs!5858 (h!70547 zl!343))))))))

(declare-fun b!5926421 () Bool)

(declare-fun res!2483559 () Bool)

(assert (=> b!5926421 (=> res!2483559 e!3627567)))

(declare-fun generalisedUnion!1818 (List!64222) Regex!15974)

(declare-fun unfocusZipperList!1395 (List!64223) List!64222)

(assert (=> b!5926421 (= res!2483559 (not (= r!7292 (generalisedUnion!1818 (unfocusZipperList!1395 zl!343)))))))

(declare-fun b!5926422 () Bool)

(declare-fun e!3627569 () Bool)

(assert (=> b!5926422 (= e!3627565 e!3627569)))

(declare-fun res!2483549 () Bool)

(assert (=> b!5926422 (=> res!2483549 e!3627569)))

(declare-fun lt!2310352 () (Set Context!10716))

(declare-fun lt!2310344 () (Set Context!10716))

(assert (=> b!5926422 (= res!2483549 (not (= lt!2310352 lt!2310344)))))

(declare-fun derivationStepZipperDown!1224 (Regex!15974 Context!10716 C!32218) (Set Context!10716))

(assert (=> b!5926422 (= lt!2310344 (derivationStepZipperDown!1224 r!7292 (Context!10717 Nil!64098) (h!70545 s!2326)))))

(assert (=> b!5926422 (= lt!2310352 (derivationStepZipperUp!1150 (Context!10717 (Cons!64098 r!7292 Nil!64098)) (h!70545 s!2326)))))

(declare-fun b!5926423 () Bool)

(declare-fun e!3627564 () Bool)

(declare-fun tp!1648183 () Bool)

(assert (=> b!5926423 (= e!3627564 tp!1648183)))

(declare-fun b!5926424 () Bool)

(declare-fun tp!1648181 () Bool)

(assert (=> b!5926424 (= e!3627563 tp!1648181)))

(declare-fun b!5926425 () Bool)

(declare-fun e!3627566 () Bool)

(declare-fun tp_is_empty!41201 () Bool)

(declare-fun tp!1648185 () Bool)

(assert (=> b!5926425 (= e!3627566 (and tp_is_empty!41201 tp!1648185))))

(declare-fun b!5926426 () Bool)

(assert (=> b!5926426 (= e!3627562 (not e!3627567))))

(declare-fun res!2483561 () Bool)

(assert (=> b!5926426 (=> res!2483561 e!3627567)))

(assert (=> b!5926426 (= res!2483561 (not (is-Cons!64099 zl!343)))))

(declare-fun matchRSpec!3075 (Regex!15974 List!64221) Bool)

(assert (=> b!5926426 (= lt!2310347 (matchRSpec!3075 r!7292 s!2326))))

(declare-fun matchR!8157 (Regex!15974 List!64221) Bool)

(assert (=> b!5926426 (= lt!2310347 (matchR!8157 r!7292 s!2326))))

(declare-fun lt!2310348 () Unit!157219)

(declare-fun mainMatchTheorem!3075 (Regex!15974 List!64221) Unit!157219)

(assert (=> b!5926426 (= lt!2310348 (mainMatchTheorem!3075 r!7292 s!2326))))

(declare-fun b!5926427 () Bool)

(declare-fun tp!1648188 () Bool)

(declare-fun tp!1648187 () Bool)

(assert (=> b!5926427 (= e!3627564 (and tp!1648188 tp!1648187))))

(declare-fun b!5926428 () Bool)

(assert (=> b!5926428 (= e!3627564 tp_is_empty!41201)))

(declare-fun b!5926416 () Bool)

(declare-fun tp!1648182 () Bool)

(declare-fun e!3627561 () Bool)

(declare-fun e!3627560 () Bool)

(assert (=> b!5926416 (= e!3627561 (and (inv!83183 (h!70547 zl!343)) e!3627560 tp!1648182))))

(declare-fun res!2483557 () Bool)

(assert (=> start!602470 (=> (not res!2483557) (not e!3627562))))

(declare-fun validRegex!7710 (Regex!15974) Bool)

(assert (=> start!602470 (= res!2483557 (validRegex!7710 r!7292))))

(assert (=> start!602470 e!3627562))

(assert (=> start!602470 e!3627564))

(declare-fun condSetEmpty!40219 () Bool)

(assert (=> start!602470 (= condSetEmpty!40219 (= z!1189 (as set.empty (Set Context!10716))))))

(assert (=> start!602470 setRes!40219))

(assert (=> start!602470 e!3627561))

(assert (=> start!602470 e!3627566))

(declare-fun b!5926429 () Bool)

(declare-fun res!2483550 () Bool)

(assert (=> b!5926429 (=> res!2483550 e!3627565)))

(declare-fun isEmpty!35959 (List!64222) Bool)

(assert (=> b!5926429 (= res!2483550 (not (isEmpty!35959 (t!377617 (exprs!5858 (h!70547 zl!343))))))))

(declare-fun b!5926430 () Bool)

(declare-fun res!2483560 () Bool)

(assert (=> b!5926430 (=> res!2483560 e!3627567)))

(declare-fun isEmpty!35960 (List!64223) Bool)

(assert (=> b!5926430 (= res!2483560 (not (isEmpty!35960 (t!377618 zl!343))))))

(declare-fun b!5926431 () Bool)

(declare-fun tp!1648179 () Bool)

(assert (=> b!5926431 (= e!3627560 tp!1648179)))

(declare-fun b!5926432 () Bool)

(declare-fun res!2483555 () Bool)

(assert (=> b!5926432 (=> (not res!2483555) (not e!3627562))))

(declare-fun unfocusZipper!1716 (List!64223) Regex!15974)

(assert (=> b!5926432 (= res!2483555 (= r!7292 (unfocusZipper!1716 zl!343)))))

(declare-fun b!5926433 () Bool)

(declare-fun tp!1648186 () Bool)

(declare-fun tp!1648180 () Bool)

(assert (=> b!5926433 (= e!3627564 (and tp!1648186 tp!1648180))))

(assert (=> b!5926434 (= e!3627569 e!3627568)))

(declare-fun res!2483558 () Bool)

(assert (=> b!5926434 (=> res!2483558 e!3627568)))

(declare-fun derivationStepZipper!1955 ((Set Context!10716) C!32218) (Set Context!10716))

(assert (=> b!5926434 (= res!2483558 (not (= (derivationStepZipper!1955 z!1189 (h!70545 s!2326)) lt!2310344)))))

(declare-fun lambda!323215 () Int)

(declare-fun flatMap!1487 ((Set Context!10716) Int) (Set Context!10716))

(assert (=> b!5926434 (= (flatMap!1487 z!1189 lambda!323215) (derivationStepZipperUp!1150 (h!70547 zl!343) (h!70545 s!2326)))))

(declare-fun lt!2310349 () Unit!157219)

(declare-fun lemmaFlatMapOnSingletonSet!1013 ((Set Context!10716) Context!10716 Int) Unit!157219)

(assert (=> b!5926434 (= lt!2310349 (lemmaFlatMapOnSingletonSet!1013 z!1189 (h!70547 zl!343) lambda!323215))))

(declare-fun b!5926435 () Bool)

(declare-fun res!2483554 () Bool)

(assert (=> b!5926435 (=> res!2483554 e!3627567)))

(assert (=> b!5926435 (= res!2483554 (not (is-Cons!64098 (exprs!5858 (h!70547 zl!343)))))))

(declare-fun setIsEmpty!40219 () Bool)

(assert (=> setIsEmpty!40219 setRes!40219))

(assert (= (and start!602470 res!2483557) b!5926419))

(assert (= (and b!5926419 res!2483556) b!5926432))

(assert (= (and b!5926432 res!2483555) b!5926426))

(assert (= (and b!5926426 (not res!2483561)) b!5926430))

(assert (= (and b!5926430 (not res!2483560)) b!5926420))

(assert (= (and b!5926420 (not res!2483551)) b!5926435))

(assert (= (and b!5926435 (not res!2483554)) b!5926421))

(assert (= (and b!5926421 (not res!2483559)) b!5926415))

(assert (= (and b!5926415 (not res!2483552)) b!5926417))

(assert (= (and b!5926417 (not res!2483553)) b!5926429))

(assert (= (and b!5926429 (not res!2483550)) b!5926422))

(assert (= (and b!5926422 (not res!2483549)) b!5926434))

(assert (= (and b!5926434 (not res!2483558)) b!5926418))

(assert (= (and start!602470 (is-ElementMatch!15974 r!7292)) b!5926428))

(assert (= (and start!602470 (is-Concat!24819 r!7292)) b!5926427))

(assert (= (and start!602470 (is-Star!15974 r!7292)) b!5926423))

(assert (= (and start!602470 (is-Union!15974 r!7292)) b!5926433))

(assert (= (and start!602470 condSetEmpty!40219) setIsEmpty!40219))

(assert (= (and start!602470 (not condSetEmpty!40219)) setNonEmpty!40219))

(assert (= setNonEmpty!40219 b!5926424))

(assert (= b!5926416 b!5926431))

(assert (= (and start!602470 (is-Cons!64099 zl!343)) b!5926416))

(assert (= (and start!602470 (is-Cons!64097 s!2326)) b!5926425))

(declare-fun m!6820328 () Bool)

(assert (=> b!5926426 m!6820328))

(declare-fun m!6820330 () Bool)

(assert (=> b!5926426 m!6820330))

(declare-fun m!6820332 () Bool)

(assert (=> b!5926426 m!6820332))

(declare-fun m!6820334 () Bool)

(assert (=> b!5926417 m!6820334))

(declare-fun m!6820336 () Bool)

(assert (=> b!5926417 m!6820336))

(declare-fun m!6820338 () Bool)

(assert (=> b!5926417 m!6820338))

(declare-fun m!6820340 () Bool)

(assert (=> b!5926417 m!6820340))

(assert (=> b!5926417 m!6820340))

(declare-fun m!6820342 () Bool)

(assert (=> b!5926417 m!6820342))

(assert (=> b!5926417 m!6820336))

(declare-fun m!6820344 () Bool)

(assert (=> b!5926417 m!6820344))

(declare-fun m!6820346 () Bool)

(assert (=> b!5926430 m!6820346))

(declare-fun m!6820348 () Bool)

(assert (=> b!5926418 m!6820348))

(declare-fun m!6820350 () Bool)

(assert (=> b!5926418 m!6820350))

(declare-fun m!6820352 () Bool)

(assert (=> b!5926420 m!6820352))

(declare-fun m!6820354 () Bool)

(assert (=> b!5926419 m!6820354))

(declare-fun m!6820356 () Bool)

(assert (=> b!5926421 m!6820356))

(assert (=> b!5926421 m!6820356))

(declare-fun m!6820358 () Bool)

(assert (=> b!5926421 m!6820358))

(declare-fun m!6820360 () Bool)

(assert (=> start!602470 m!6820360))

(declare-fun m!6820362 () Bool)

(assert (=> b!5926434 m!6820362))

(declare-fun m!6820364 () Bool)

(assert (=> b!5926434 m!6820364))

(declare-fun m!6820366 () Bool)

(assert (=> b!5926434 m!6820366))

(declare-fun m!6820368 () Bool)

(assert (=> b!5926434 m!6820368))

(declare-fun m!6820370 () Bool)

(assert (=> b!5926422 m!6820370))

(declare-fun m!6820372 () Bool)

(assert (=> b!5926422 m!6820372))

(declare-fun m!6820374 () Bool)

(assert (=> b!5926432 m!6820374))

(declare-fun m!6820376 () Bool)

(assert (=> b!5926429 m!6820376))

(declare-fun m!6820378 () Bool)

(assert (=> setNonEmpty!40219 m!6820378))

(declare-fun m!6820380 () Bool)

(assert (=> b!5926416 m!6820380))

(push 1)

(assert (not b!5926433))

(assert (not setNonEmpty!40219))

(assert (not b!5926422))

(assert (not b!5926421))

(assert (not b!5926434))

(assert (not b!5926430))

(assert (not b!5926418))

(assert (not b!5926429))

(assert (not b!5926427))

(assert (not b!5926419))

(assert (not b!5926416))

(assert (not b!5926426))

(assert (not start!602470))

(assert (not b!5926424))

(assert (not b!5926431))

(assert (not b!5926425))

(assert (not b!5926420))

(assert (not b!5926432))

(assert tp_is_empty!41201)

(assert (not b!5926423))

(assert (not b!5926417))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1858235 () Bool)

(assert (=> d!1858235 (= (isEmpty!35960 (t!377618 zl!343)) (is-Nil!64099 (t!377618 zl!343)))))

(assert (=> b!5926430 d!1858235))

(declare-fun b!5926543 () Bool)

(declare-fun e!3627620 () Bool)

(declare-fun lt!2310385 () Regex!15974)

(declare-fun isEmptyExpr!1402 (Regex!15974) Bool)

(assert (=> b!5926543 (= e!3627620 (isEmptyExpr!1402 lt!2310385))))

(declare-fun b!5926544 () Bool)

(declare-fun e!3627618 () Bool)

(declare-fun isConcat!925 (Regex!15974) Bool)

(assert (=> b!5926544 (= e!3627618 (isConcat!925 lt!2310385))))

(declare-fun b!5926545 () Bool)

(declare-fun e!3627621 () Regex!15974)

(assert (=> b!5926545 (= e!3627621 (Concat!24819 (h!70546 (exprs!5858 (h!70547 zl!343))) (generalisedConcat!1571 (t!377617 (exprs!5858 (h!70547 zl!343))))))))

(declare-fun b!5926546 () Bool)

(declare-fun e!3627623 () Bool)

(assert (=> b!5926546 (= e!3627623 (isEmpty!35959 (t!377617 (exprs!5858 (h!70547 zl!343)))))))

(declare-fun b!5926547 () Bool)

(declare-fun e!3627622 () Bool)

(assert (=> b!5926547 (= e!3627622 e!3627620)))

(declare-fun c!1053354 () Bool)

(assert (=> b!5926547 (= c!1053354 (isEmpty!35959 (exprs!5858 (h!70547 zl!343))))))

(declare-fun b!5926548 () Bool)

(declare-fun e!3627619 () Regex!15974)

(assert (=> b!5926548 (= e!3627619 e!3627621)))

(declare-fun c!1053356 () Bool)

(assert (=> b!5926548 (= c!1053356 (is-Cons!64098 (exprs!5858 (h!70547 zl!343))))))

(declare-fun d!1858237 () Bool)

(assert (=> d!1858237 e!3627622))

(declare-fun res!2483617 () Bool)

(assert (=> d!1858237 (=> (not res!2483617) (not e!3627622))))

(assert (=> d!1858237 (= res!2483617 (validRegex!7710 lt!2310385))))

(assert (=> d!1858237 (= lt!2310385 e!3627619)))

(declare-fun c!1053355 () Bool)

(assert (=> d!1858237 (= c!1053355 e!3627623)))

(declare-fun res!2483618 () Bool)

(assert (=> d!1858237 (=> (not res!2483618) (not e!3627623))))

(assert (=> d!1858237 (= res!2483618 (is-Cons!64098 (exprs!5858 (h!70547 zl!343))))))

(declare-fun lambda!323229 () Int)

(declare-fun forall!15057 (List!64222 Int) Bool)

(assert (=> d!1858237 (forall!15057 (exprs!5858 (h!70547 zl!343)) lambda!323229)))

(assert (=> d!1858237 (= (generalisedConcat!1571 (exprs!5858 (h!70547 zl!343))) lt!2310385)))

(declare-fun b!5926549 () Bool)

(assert (=> b!5926549 (= e!3627619 (h!70546 (exprs!5858 (h!70547 zl!343))))))

(declare-fun b!5926550 () Bool)

(assert (=> b!5926550 (= e!3627621 EmptyExpr!15974)))

(declare-fun b!5926551 () Bool)

(declare-fun head!12489 (List!64222) Regex!15974)

(assert (=> b!5926551 (= e!3627618 (= lt!2310385 (head!12489 (exprs!5858 (h!70547 zl!343)))))))

(declare-fun b!5926552 () Bool)

(assert (=> b!5926552 (= e!3627620 e!3627618)))

(declare-fun c!1053357 () Bool)

(declare-fun tail!11574 (List!64222) List!64222)

(assert (=> b!5926552 (= c!1053357 (isEmpty!35959 (tail!11574 (exprs!5858 (h!70547 zl!343)))))))

(assert (= (and d!1858237 res!2483618) b!5926546))

(assert (= (and d!1858237 c!1053355) b!5926549))

(assert (= (and d!1858237 (not c!1053355)) b!5926548))

(assert (= (and b!5926548 c!1053356) b!5926545))

(assert (= (and b!5926548 (not c!1053356)) b!5926550))

(assert (= (and d!1858237 res!2483617) b!5926547))

(assert (= (and b!5926547 c!1053354) b!5926543))

(assert (= (and b!5926547 (not c!1053354)) b!5926552))

(assert (= (and b!5926552 c!1053357) b!5926551))

(assert (= (and b!5926552 (not c!1053357)) b!5926544))

(declare-fun m!6820436 () Bool)

(assert (=> b!5926544 m!6820436))

(declare-fun m!6820438 () Bool)

(assert (=> b!5926545 m!6820438))

(declare-fun m!6820440 () Bool)

(assert (=> b!5926543 m!6820440))

(declare-fun m!6820442 () Bool)

(assert (=> b!5926547 m!6820442))

(declare-fun m!6820444 () Bool)

(assert (=> b!5926551 m!6820444))

(assert (=> b!5926546 m!6820376))

(declare-fun m!6820446 () Bool)

(assert (=> d!1858237 m!6820446))

(declare-fun m!6820448 () Bool)

(assert (=> d!1858237 m!6820448))

(declare-fun m!6820450 () Bool)

(assert (=> b!5926552 m!6820450))

(assert (=> b!5926552 m!6820450))

(declare-fun m!6820452 () Bool)

(assert (=> b!5926552 m!6820452))

(assert (=> b!5926420 d!1858237))

(declare-fun d!1858239 () Bool)

(assert (=> d!1858239 (= (isEmpty!35959 (t!377617 (exprs!5858 (h!70547 zl!343)))) (is-Nil!64098 (t!377617 (exprs!5858 (h!70547 zl!343)))))))

(assert (=> b!5926429 d!1858239))

(declare-fun bs!1402502 () Bool)

(declare-fun d!1858241 () Bool)

(assert (= bs!1402502 (and d!1858241 d!1858237)))

(declare-fun lambda!323232 () Int)

(assert (=> bs!1402502 (= lambda!323232 lambda!323229)))

(assert (=> d!1858241 (= (inv!83183 (Context!10717 lt!2310343)) (forall!15057 (exprs!5858 (Context!10717 lt!2310343)) lambda!323232))))

(declare-fun bs!1402503 () Bool)

(assert (= bs!1402503 d!1858241))

(declare-fun m!6820454 () Bool)

(assert (=> bs!1402503 m!6820454))

(assert (=> b!5926418 d!1858241))

(declare-fun d!1858243 () Bool)

(declare-fun c!1053362 () Bool)

(declare-fun e!3627631 () Bool)

(assert (=> d!1858243 (= c!1053362 e!3627631)))

(declare-fun res!2483621 () Bool)

(assert (=> d!1858243 (=> (not res!2483621) (not e!3627631))))

(assert (=> d!1858243 (= res!2483621 (is-Cons!64098 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343)))))))

(declare-fun e!3627630 () (Set Context!10716))

(assert (=> d!1858243 (= (derivationStepZipperUp!1150 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343)) (h!70545 s!2326)) e!3627630)))

(declare-fun bm!470176 () Bool)

(declare-fun call!470181 () (Set Context!10716))

(assert (=> bm!470176 (= call!470181 (derivationStepZipperDown!1224 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343)))) (Context!10717 (t!377617 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343))))) (h!70545 s!2326)))))

(declare-fun b!5926563 () Bool)

(declare-fun e!3627632 () (Set Context!10716))

(assert (=> b!5926563 (= e!3627632 (as set.empty (Set Context!10716)))))

(declare-fun b!5926564 () Bool)

(assert (=> b!5926564 (= e!3627632 call!470181)))

(declare-fun b!5926565 () Bool)

(declare-fun nullable!5969 (Regex!15974) Bool)

(assert (=> b!5926565 (= e!3627631 (nullable!5969 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343))))))))

(declare-fun b!5926566 () Bool)

(assert (=> b!5926566 (= e!3627630 e!3627632)))

(declare-fun c!1053363 () Bool)

(assert (=> b!5926566 (= c!1053363 (is-Cons!64098 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343)))))))

(declare-fun b!5926567 () Bool)

(assert (=> b!5926567 (= e!3627630 (set.union call!470181 (derivationStepZipperUp!1150 (Context!10717 (t!377617 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343))))) (h!70545 s!2326))))))

(assert (= (and d!1858243 res!2483621) b!5926565))

(assert (= (and d!1858243 c!1053362) b!5926567))

(assert (= (and d!1858243 (not c!1053362)) b!5926566))

(assert (= (and b!5926566 c!1053363) b!5926564))

(assert (= (and b!5926566 (not c!1053363)) b!5926563))

(assert (= (or b!5926567 b!5926564) bm!470176))

(declare-fun m!6820456 () Bool)

(assert (=> bm!470176 m!6820456))

(declare-fun m!6820458 () Bool)

(assert (=> b!5926565 m!6820458))

(declare-fun m!6820460 () Bool)

(assert (=> b!5926567 m!6820460))

(assert (=> b!5926418 d!1858243))

(declare-fun d!1858245 () Bool)

(declare-fun e!3627635 () Bool)

(assert (=> d!1858245 e!3627635))

(declare-fun res!2483624 () Bool)

(assert (=> d!1858245 (=> (not res!2483624) (not e!3627635))))

(declare-fun lt!2310388 () List!64223)

(declare-fun noDuplicate!1832 (List!64223) Bool)

(assert (=> d!1858245 (= res!2483624 (noDuplicate!1832 lt!2310388))))

(declare-fun choose!44676 ((Set Context!10716)) List!64223)

(assert (=> d!1858245 (= lt!2310388 (choose!44676 z!1189))))

(assert (=> d!1858245 (= (toList!9758 z!1189) lt!2310388)))

(declare-fun b!5926570 () Bool)

(declare-fun content!11807 (List!64223) (Set Context!10716))

(assert (=> b!5926570 (= e!3627635 (= (content!11807 lt!2310388) z!1189))))

(assert (= (and d!1858245 res!2483624) b!5926570))

(declare-fun m!6820462 () Bool)

(assert (=> d!1858245 m!6820462))

(declare-fun m!6820464 () Bool)

(assert (=> d!1858245 m!6820464))

(declare-fun m!6820466 () Bool)

(assert (=> b!5926570 m!6820466))

(assert (=> b!5926419 d!1858245))

(declare-fun bs!1402504 () Bool)

(declare-fun d!1858247 () Bool)

(assert (= bs!1402504 (and d!1858247 d!1858237)))

(declare-fun lambda!323233 () Int)

(assert (=> bs!1402504 (= lambda!323233 lambda!323229)))

(declare-fun bs!1402505 () Bool)

(assert (= bs!1402505 (and d!1858247 d!1858241)))

(assert (=> bs!1402505 (= lambda!323233 lambda!323232)))

(assert (=> d!1858247 (= (inv!83183 setElem!40219) (forall!15057 (exprs!5858 setElem!40219) lambda!323233))))

(declare-fun bs!1402506 () Bool)

(assert (= bs!1402506 d!1858247))

(declare-fun m!6820468 () Bool)

(assert (=> bs!1402506 m!6820468))

(assert (=> setNonEmpty!40219 d!1858247))

(declare-fun bs!1402507 () Bool)

(declare-fun b!5926603 () Bool)

(assert (= bs!1402507 (and b!5926603 b!5926417)))

(declare-fun lambda!323238 () Int)

(assert (=> bs!1402507 (not (= lambda!323238 lambda!323213))))

(assert (=> bs!1402507 (not (= lambda!323238 lambda!323214))))

(assert (=> b!5926603 true))

(assert (=> b!5926603 true))

(declare-fun bs!1402508 () Bool)

(declare-fun b!5926612 () Bool)

(assert (= bs!1402508 (and b!5926612 b!5926417)))

(declare-fun lambda!323239 () Int)

(assert (=> bs!1402508 (not (= lambda!323239 lambda!323213))))

(assert (=> bs!1402508 (= lambda!323239 lambda!323214)))

(declare-fun bs!1402509 () Bool)

(assert (= bs!1402509 (and b!5926612 b!5926603)))

(assert (=> bs!1402509 (not (= lambda!323239 lambda!323238))))

(assert (=> b!5926612 true))

(assert (=> b!5926612 true))

(declare-fun bm!470181 () Bool)

(declare-fun call!470186 () Bool)

(declare-fun isEmpty!35963 (List!64221) Bool)

(assert (=> bm!470181 (= call!470186 (isEmpty!35963 s!2326))))

(declare-fun e!3627658 () Bool)

(declare-fun call!470187 () Bool)

(assert (=> b!5926603 (= e!3627658 call!470187)))

(declare-fun b!5926604 () Bool)

(declare-fun e!3627655 () Bool)

(assert (=> b!5926604 (= e!3627655 (= s!2326 (Cons!64097 (c!1053341 r!7292) Nil!64097)))))

(declare-fun b!5926605 () Bool)

(declare-fun e!3627659 () Bool)

(assert (=> b!5926605 (= e!3627659 (matchRSpec!3075 (regTwo!32461 r!7292) s!2326))))

(declare-fun b!5926606 () Bool)

(declare-fun e!3627656 () Bool)

(declare-fun e!3627660 () Bool)

(assert (=> b!5926606 (= e!3627656 e!3627660)))

(declare-fun c!1053372 () Bool)

(assert (=> b!5926606 (= c!1053372 (is-Star!15974 r!7292))))

(declare-fun b!5926607 () Bool)

(declare-fun e!3627657 () Bool)

(assert (=> b!5926607 (= e!3627657 call!470186)))

(declare-fun b!5926608 () Bool)

(declare-fun e!3627654 () Bool)

(assert (=> b!5926608 (= e!3627657 e!3627654)))

(declare-fun res!2483642 () Bool)

(assert (=> b!5926608 (= res!2483642 (not (is-EmptyLang!15974 r!7292)))))

(assert (=> b!5926608 (=> (not res!2483642) (not e!3627654))))

(declare-fun bm!470182 () Bool)

(assert (=> bm!470182 (= call!470187 (Exists!3044 (ite c!1053372 lambda!323238 lambda!323239)))))

(declare-fun d!1858249 () Bool)

(declare-fun c!1053375 () Bool)

(assert (=> d!1858249 (= c!1053375 (is-EmptyExpr!15974 r!7292))))

(assert (=> d!1858249 (= (matchRSpec!3075 r!7292 s!2326) e!3627657)))

(declare-fun b!5926609 () Bool)

(declare-fun c!1053373 () Bool)

(assert (=> b!5926609 (= c!1053373 (is-ElementMatch!15974 r!7292))))

(assert (=> b!5926609 (= e!3627654 e!3627655)))

(declare-fun b!5926610 () Bool)

(declare-fun c!1053374 () Bool)

(assert (=> b!5926610 (= c!1053374 (is-Union!15974 r!7292))))

(assert (=> b!5926610 (= e!3627655 e!3627656)))

(declare-fun b!5926611 () Bool)

(declare-fun res!2483643 () Bool)

(assert (=> b!5926611 (=> res!2483643 e!3627658)))

(assert (=> b!5926611 (= res!2483643 call!470186)))

(assert (=> b!5926611 (= e!3627660 e!3627658)))

(assert (=> b!5926612 (= e!3627660 call!470187)))

(declare-fun b!5926613 () Bool)

(assert (=> b!5926613 (= e!3627656 e!3627659)))

(declare-fun res!2483641 () Bool)

(assert (=> b!5926613 (= res!2483641 (matchRSpec!3075 (regOne!32461 r!7292) s!2326))))

(assert (=> b!5926613 (=> res!2483641 e!3627659)))

(assert (= (and d!1858249 c!1053375) b!5926607))

(assert (= (and d!1858249 (not c!1053375)) b!5926608))

(assert (= (and b!5926608 res!2483642) b!5926609))

(assert (= (and b!5926609 c!1053373) b!5926604))

(assert (= (and b!5926609 (not c!1053373)) b!5926610))

(assert (= (and b!5926610 c!1053374) b!5926613))

(assert (= (and b!5926610 (not c!1053374)) b!5926606))

(assert (= (and b!5926613 (not res!2483641)) b!5926605))

(assert (= (and b!5926606 c!1053372) b!5926611))

(assert (= (and b!5926606 (not c!1053372)) b!5926612))

(assert (= (and b!5926611 (not res!2483643)) b!5926603))

(assert (= (or b!5926603 b!5926612) bm!470182))

(assert (= (or b!5926607 b!5926611) bm!470181))

(declare-fun m!6820470 () Bool)

(assert (=> bm!470181 m!6820470))

(declare-fun m!6820472 () Bool)

(assert (=> b!5926605 m!6820472))

(declare-fun m!6820474 () Bool)

(assert (=> bm!470182 m!6820474))

(declare-fun m!6820476 () Bool)

(assert (=> b!5926613 m!6820476))

(assert (=> b!5926426 d!1858249))

(declare-fun b!5926664 () Bool)

(declare-fun e!3627689 () Bool)

(declare-fun lt!2310391 () Bool)

(assert (=> b!5926664 (= e!3627689 (not lt!2310391))))

(declare-fun b!5926665 () Bool)

(declare-fun e!3627687 () Bool)

(declare-fun head!12490 (List!64221) C!32218)

(assert (=> b!5926665 (= e!3627687 (= (head!12490 s!2326) (c!1053341 r!7292)))))

(declare-fun bm!470197 () Bool)

(declare-fun call!470202 () Bool)

(assert (=> bm!470197 (= call!470202 (isEmpty!35963 s!2326))))

(declare-fun b!5926666 () Bool)

(declare-fun e!3627691 () Bool)

(assert (=> b!5926666 (= e!3627691 (not (= (head!12490 s!2326) (c!1053341 r!7292))))))

(declare-fun d!1858253 () Bool)

(declare-fun e!3627693 () Bool)

(assert (=> d!1858253 e!3627693))

(declare-fun c!1053394 () Bool)

(assert (=> d!1858253 (= c!1053394 (is-EmptyExpr!15974 r!7292))))

(declare-fun e!3627690 () Bool)

(assert (=> d!1858253 (= lt!2310391 e!3627690)))

(declare-fun c!1053392 () Bool)

(assert (=> d!1858253 (= c!1053392 (isEmpty!35963 s!2326))))

(assert (=> d!1858253 (validRegex!7710 r!7292)))

(assert (=> d!1858253 (= (matchR!8157 r!7292 s!2326) lt!2310391)))

(declare-fun b!5926667 () Bool)

(declare-fun res!2483664 () Bool)

(declare-fun e!3627688 () Bool)

(assert (=> b!5926667 (=> res!2483664 e!3627688)))

(assert (=> b!5926667 (= res!2483664 e!3627687)))

(declare-fun res!2483668 () Bool)

(assert (=> b!5926667 (=> (not res!2483668) (not e!3627687))))

(assert (=> b!5926667 (= res!2483668 lt!2310391)))

(declare-fun b!5926668 () Bool)

(declare-fun res!2483662 () Bool)

(assert (=> b!5926668 (=> res!2483662 e!3627688)))

(assert (=> b!5926668 (= res!2483662 (not (is-ElementMatch!15974 r!7292)))))

(assert (=> b!5926668 (= e!3627689 e!3627688)))

(declare-fun b!5926669 () Bool)

(declare-fun res!2483666 () Bool)

(assert (=> b!5926669 (=> (not res!2483666) (not e!3627687))))

(assert (=> b!5926669 (= res!2483666 (not call!470202))))

(declare-fun b!5926670 () Bool)

(declare-fun derivativeStep!4705 (Regex!15974 C!32218) Regex!15974)

(declare-fun tail!11575 (List!64221) List!64221)

(assert (=> b!5926670 (= e!3627690 (matchR!8157 (derivativeStep!4705 r!7292 (head!12490 s!2326)) (tail!11575 s!2326)))))

(declare-fun b!5926671 () Bool)

(declare-fun res!2483663 () Bool)

(assert (=> b!5926671 (=> res!2483663 e!3627691)))

(assert (=> b!5926671 (= res!2483663 (not (isEmpty!35963 (tail!11575 s!2326))))))

(declare-fun b!5926672 () Bool)

(declare-fun e!3627692 () Bool)

(assert (=> b!5926672 (= e!3627688 e!3627692)))

(declare-fun res!2483669 () Bool)

(assert (=> b!5926672 (=> (not res!2483669) (not e!3627692))))

(assert (=> b!5926672 (= res!2483669 (not lt!2310391))))

(declare-fun b!5926673 () Bool)

(assert (=> b!5926673 (= e!3627690 (nullable!5969 r!7292))))

(declare-fun b!5926674 () Bool)

(assert (=> b!5926674 (= e!3627693 e!3627689)))

(declare-fun c!1053393 () Bool)

(assert (=> b!5926674 (= c!1053393 (is-EmptyLang!15974 r!7292))))

(declare-fun b!5926675 () Bool)

(assert (=> b!5926675 (= e!3627693 (= lt!2310391 call!470202))))

(declare-fun b!5926676 () Bool)

(assert (=> b!5926676 (= e!3627692 e!3627691)))

(declare-fun res!2483665 () Bool)

(assert (=> b!5926676 (=> res!2483665 e!3627691)))

(assert (=> b!5926676 (= res!2483665 call!470202)))

(declare-fun b!5926677 () Bool)

(declare-fun res!2483667 () Bool)

(assert (=> b!5926677 (=> (not res!2483667) (not e!3627687))))

(assert (=> b!5926677 (= res!2483667 (isEmpty!35963 (tail!11575 s!2326)))))

(assert (= (and d!1858253 c!1053392) b!5926673))

(assert (= (and d!1858253 (not c!1053392)) b!5926670))

(assert (= (and d!1858253 c!1053394) b!5926675))

(assert (= (and d!1858253 (not c!1053394)) b!5926674))

(assert (= (and b!5926674 c!1053393) b!5926664))

(assert (= (and b!5926674 (not c!1053393)) b!5926668))

(assert (= (and b!5926668 (not res!2483662)) b!5926667))

(assert (= (and b!5926667 res!2483668) b!5926669))

(assert (= (and b!5926669 res!2483666) b!5926677))

(assert (= (and b!5926677 res!2483667) b!5926665))

(assert (= (and b!5926667 (not res!2483664)) b!5926672))

(assert (= (and b!5926672 res!2483669) b!5926676))

(assert (= (and b!5926676 (not res!2483665)) b!5926671))

(assert (= (and b!5926671 (not res!2483663)) b!5926666))

(assert (= (or b!5926675 b!5926669 b!5926676) bm!470197))

(declare-fun m!6820478 () Bool)

(assert (=> b!5926671 m!6820478))

(assert (=> b!5926671 m!6820478))

(declare-fun m!6820480 () Bool)

(assert (=> b!5926671 m!6820480))

(declare-fun m!6820482 () Bool)

(assert (=> b!5926670 m!6820482))

(assert (=> b!5926670 m!6820482))

(declare-fun m!6820484 () Bool)

(assert (=> b!5926670 m!6820484))

(assert (=> b!5926670 m!6820478))

(assert (=> b!5926670 m!6820484))

(assert (=> b!5926670 m!6820478))

(declare-fun m!6820486 () Bool)

(assert (=> b!5926670 m!6820486))

(assert (=> b!5926666 m!6820482))

(assert (=> b!5926677 m!6820478))

(assert (=> b!5926677 m!6820478))

(assert (=> b!5926677 m!6820480))

(declare-fun m!6820488 () Bool)

(assert (=> b!5926673 m!6820488))

(assert (=> d!1858253 m!6820470))

(assert (=> d!1858253 m!6820360))

(assert (=> b!5926665 m!6820482))

(assert (=> bm!470197 m!6820470))

(assert (=> b!5926426 d!1858253))

(declare-fun d!1858255 () Bool)

(assert (=> d!1858255 (= (matchR!8157 r!7292 s!2326) (matchRSpec!3075 r!7292 s!2326))))

(declare-fun lt!2310394 () Unit!157219)

(declare-fun choose!44677 (Regex!15974 List!64221) Unit!157219)

(assert (=> d!1858255 (= lt!2310394 (choose!44677 r!7292 s!2326))))

(assert (=> d!1858255 (validRegex!7710 r!7292)))

(assert (=> d!1858255 (= (mainMatchTheorem!3075 r!7292 s!2326) lt!2310394)))

(declare-fun bs!1402510 () Bool)

(assert (= bs!1402510 d!1858255))

(assert (=> bs!1402510 m!6820330))

(assert (=> bs!1402510 m!6820328))

(declare-fun m!6820490 () Bool)

(assert (=> bs!1402510 m!6820490))

(assert (=> bs!1402510 m!6820360))

(assert (=> b!5926426 d!1858255))

(declare-fun d!1858257 () Bool)

(declare-fun choose!44678 (Int) Bool)

(assert (=> d!1858257 (= (Exists!3044 lambda!323213) (choose!44678 lambda!323213))))

(declare-fun bs!1402511 () Bool)

(assert (= bs!1402511 d!1858257))

(declare-fun m!6820492 () Bool)

(assert (=> bs!1402511 m!6820492))

(assert (=> b!5926417 d!1858257))

(declare-fun b!5926717 () Bool)

(declare-fun res!2483685 () Bool)

(declare-fun e!3627718 () Bool)

(assert (=> b!5926717 (=> (not res!2483685) (not e!3627718))))

(declare-fun lt!2310402 () Option!15865)

(declare-fun get!22074 (Option!15865) tuple2!65906)

(assert (=> b!5926717 (= res!2483685 (matchR!8157 (regOne!32460 r!7292) (_1!36256 (get!22074 lt!2310402))))))

(declare-fun b!5926718 () Bool)

(declare-fun res!2483683 () Bool)

(assert (=> b!5926718 (=> (not res!2483683) (not e!3627718))))

(assert (=> b!5926718 (= res!2483683 (matchR!8157 (regTwo!32460 r!7292) (_2!36256 (get!22074 lt!2310402))))))

(declare-fun b!5926719 () Bool)

(declare-fun e!3627717 () Option!15865)

(assert (=> b!5926719 (= e!3627717 (Some!15864 (tuple2!65907 Nil!64097 s!2326)))))

(declare-fun d!1858259 () Bool)

(declare-fun e!3627716 () Bool)

(assert (=> d!1858259 e!3627716))

(declare-fun res!2483684 () Bool)

(assert (=> d!1858259 (=> res!2483684 e!3627716)))

(assert (=> d!1858259 (= res!2483684 e!3627718)))

(declare-fun res!2483687 () Bool)

(assert (=> d!1858259 (=> (not res!2483687) (not e!3627718))))

(assert (=> d!1858259 (= res!2483687 (isDefined!12568 lt!2310402))))

(assert (=> d!1858259 (= lt!2310402 e!3627717)))

(declare-fun c!1053409 () Bool)

(declare-fun e!3627719 () Bool)

(assert (=> d!1858259 (= c!1053409 e!3627719)))

(declare-fun res!2483686 () Bool)

(assert (=> d!1858259 (=> (not res!2483686) (not e!3627719))))

(assert (=> d!1858259 (= res!2483686 (matchR!8157 (regOne!32460 r!7292) Nil!64097))))

(assert (=> d!1858259 (validRegex!7710 (regOne!32460 r!7292))))

(assert (=> d!1858259 (= (findConcatSeparation!2279 (regOne!32460 r!7292) (regTwo!32460 r!7292) Nil!64097 s!2326 s!2326) lt!2310402)))

(declare-fun b!5926720 () Bool)

(declare-fun ++!14071 (List!64221 List!64221) List!64221)

(assert (=> b!5926720 (= e!3627718 (= (++!14071 (_1!36256 (get!22074 lt!2310402)) (_2!36256 (get!22074 lt!2310402))) s!2326))))

(declare-fun b!5926721 () Bool)

(declare-fun e!3627720 () Option!15865)

(assert (=> b!5926721 (= e!3627720 None!15864)))

(declare-fun b!5926722 () Bool)

(assert (=> b!5926722 (= e!3627716 (not (isDefined!12568 lt!2310402)))))

(declare-fun b!5926723 () Bool)

(declare-fun lt!2310401 () Unit!157219)

(declare-fun lt!2310403 () Unit!157219)

(assert (=> b!5926723 (= lt!2310401 lt!2310403)))

(assert (=> b!5926723 (= (++!14071 (++!14071 Nil!64097 (Cons!64097 (h!70545 s!2326) Nil!64097)) (t!377616 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2166 (List!64221 C!32218 List!64221 List!64221) Unit!157219)

(assert (=> b!5926723 (= lt!2310403 (lemmaMoveElementToOtherListKeepsConcatEq!2166 Nil!64097 (h!70545 s!2326) (t!377616 s!2326) s!2326))))

(assert (=> b!5926723 (= e!3627720 (findConcatSeparation!2279 (regOne!32460 r!7292) (regTwo!32460 r!7292) (++!14071 Nil!64097 (Cons!64097 (h!70545 s!2326) Nil!64097)) (t!377616 s!2326) s!2326))))

(declare-fun b!5926724 () Bool)

(assert (=> b!5926724 (= e!3627717 e!3627720)))

(declare-fun c!1053408 () Bool)

(assert (=> b!5926724 (= c!1053408 (is-Nil!64097 s!2326))))

(declare-fun b!5926725 () Bool)

(assert (=> b!5926725 (= e!3627719 (matchR!8157 (regTwo!32460 r!7292) s!2326))))

(assert (= (and d!1858259 res!2483686) b!5926725))

(assert (= (and d!1858259 c!1053409) b!5926719))

(assert (= (and d!1858259 (not c!1053409)) b!5926724))

(assert (= (and b!5926724 c!1053408) b!5926721))

(assert (= (and b!5926724 (not c!1053408)) b!5926723))

(assert (= (and d!1858259 res!2483687) b!5926717))

(assert (= (and b!5926717 res!2483685) b!5926718))

(assert (= (and b!5926718 res!2483683) b!5926720))

(assert (= (and d!1858259 (not res!2483684)) b!5926722))

(declare-fun m!6820504 () Bool)

(assert (=> b!5926720 m!6820504))

(declare-fun m!6820506 () Bool)

(assert (=> b!5926720 m!6820506))

(declare-fun m!6820508 () Bool)

(assert (=> d!1858259 m!6820508))

(declare-fun m!6820510 () Bool)

(assert (=> d!1858259 m!6820510))

(declare-fun m!6820512 () Bool)

(assert (=> d!1858259 m!6820512))

(assert (=> b!5926722 m!6820508))

(assert (=> b!5926717 m!6820504))

(declare-fun m!6820514 () Bool)

(assert (=> b!5926717 m!6820514))

(declare-fun m!6820516 () Bool)

(assert (=> b!5926723 m!6820516))

(assert (=> b!5926723 m!6820516))

(declare-fun m!6820518 () Bool)

(assert (=> b!5926723 m!6820518))

(declare-fun m!6820520 () Bool)

(assert (=> b!5926723 m!6820520))

(assert (=> b!5926723 m!6820516))

(declare-fun m!6820522 () Bool)

(assert (=> b!5926723 m!6820522))

(assert (=> b!5926718 m!6820504))

(declare-fun m!6820524 () Bool)

(assert (=> b!5926718 m!6820524))

(declare-fun m!6820526 () Bool)

(assert (=> b!5926725 m!6820526))

(assert (=> b!5926417 d!1858259))

(declare-fun d!1858263 () Bool)

(assert (=> d!1858263 (= (Exists!3044 lambda!323214) (choose!44678 lambda!323214))))

(declare-fun bs!1402512 () Bool)

(assert (= bs!1402512 d!1858263))

(declare-fun m!6820528 () Bool)

(assert (=> bs!1402512 m!6820528))

(assert (=> b!5926417 d!1858263))

(declare-fun bs!1402513 () Bool)

(declare-fun d!1858265 () Bool)

(assert (= bs!1402513 (and d!1858265 b!5926417)))

(declare-fun lambda!323242 () Int)

(assert (=> bs!1402513 (= lambda!323242 lambda!323213)))

(assert (=> bs!1402513 (not (= lambda!323242 lambda!323214))))

(declare-fun bs!1402514 () Bool)

(assert (= bs!1402514 (and d!1858265 b!5926603)))

(assert (=> bs!1402514 (not (= lambda!323242 lambda!323238))))

(declare-fun bs!1402515 () Bool)

(assert (= bs!1402515 (and d!1858265 b!5926612)))

(assert (=> bs!1402515 (not (= lambda!323242 lambda!323239))))

(assert (=> d!1858265 true))

(assert (=> d!1858265 true))

(assert (=> d!1858265 true))

(assert (=> d!1858265 (= (isDefined!12568 (findConcatSeparation!2279 (regOne!32460 r!7292) (regTwo!32460 r!7292) Nil!64097 s!2326 s!2326)) (Exists!3044 lambda!323242))))

(declare-fun lt!2310406 () Unit!157219)

(declare-fun choose!44679 (Regex!15974 Regex!15974 List!64221) Unit!157219)

(assert (=> d!1858265 (= lt!2310406 (choose!44679 (regOne!32460 r!7292) (regTwo!32460 r!7292) s!2326))))

(assert (=> d!1858265 (validRegex!7710 (regOne!32460 r!7292))))

(assert (=> d!1858265 (= (lemmaFindConcatSeparationEquivalentToExists!2043 (regOne!32460 r!7292) (regTwo!32460 r!7292) s!2326) lt!2310406)))

(declare-fun bs!1402516 () Bool)

(assert (= bs!1402516 d!1858265))

(declare-fun m!6820536 () Bool)

(assert (=> bs!1402516 m!6820536))

(assert (=> bs!1402516 m!6820336))

(assert (=> bs!1402516 m!6820338))

(assert (=> bs!1402516 m!6820336))

(assert (=> bs!1402516 m!6820512))

(declare-fun m!6820538 () Bool)

(assert (=> bs!1402516 m!6820538))

(assert (=> b!5926417 d!1858265))

(declare-fun bs!1402517 () Bool)

(declare-fun d!1858269 () Bool)

(assert (= bs!1402517 (and d!1858269 b!5926612)))

(declare-fun lambda!323249 () Int)

(assert (=> bs!1402517 (not (= lambda!323249 lambda!323239))))

(declare-fun bs!1402518 () Bool)

(assert (= bs!1402518 (and d!1858269 b!5926603)))

(assert (=> bs!1402518 (not (= lambda!323249 lambda!323238))))

(declare-fun bs!1402519 () Bool)

(assert (= bs!1402519 (and d!1858269 b!5926417)))

(assert (=> bs!1402519 (= lambda!323249 lambda!323213)))

(assert (=> bs!1402519 (not (= lambda!323249 lambda!323214))))

(declare-fun bs!1402520 () Bool)

(assert (= bs!1402520 (and d!1858269 d!1858265)))

(assert (=> bs!1402520 (= lambda!323249 lambda!323242)))

(assert (=> d!1858269 true))

(assert (=> d!1858269 true))

(assert (=> d!1858269 true))

(declare-fun lambda!323250 () Int)

(assert (=> bs!1402517 (= lambda!323250 lambda!323239)))

(declare-fun bs!1402521 () Bool)

(assert (= bs!1402521 d!1858269))

(assert (=> bs!1402521 (not (= lambda!323250 lambda!323249))))

(assert (=> bs!1402518 (not (= lambda!323250 lambda!323238))))

(assert (=> bs!1402519 (not (= lambda!323250 lambda!323213))))

(assert (=> bs!1402519 (= lambda!323250 lambda!323214)))

(assert (=> bs!1402520 (not (= lambda!323250 lambda!323242))))

(assert (=> d!1858269 true))

(assert (=> d!1858269 true))

(assert (=> d!1858269 true))

(assert (=> d!1858269 (= (Exists!3044 lambda!323249) (Exists!3044 lambda!323250))))

(declare-fun lt!2310411 () Unit!157219)

(declare-fun choose!44680 (Regex!15974 Regex!15974 List!64221) Unit!157219)

(assert (=> d!1858269 (= lt!2310411 (choose!44680 (regOne!32460 r!7292) (regTwo!32460 r!7292) s!2326))))

(assert (=> d!1858269 (validRegex!7710 (regOne!32460 r!7292))))

(assert (=> d!1858269 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1581 (regOne!32460 r!7292) (regTwo!32460 r!7292) s!2326) lt!2310411)))

(declare-fun m!6820540 () Bool)

(assert (=> bs!1402521 m!6820540))

(declare-fun m!6820542 () Bool)

(assert (=> bs!1402521 m!6820542))

(declare-fun m!6820544 () Bool)

(assert (=> bs!1402521 m!6820544))

(assert (=> bs!1402521 m!6820512))

(assert (=> b!5926417 d!1858269))

(declare-fun d!1858271 () Bool)

(declare-fun isEmpty!35964 (Option!15865) Bool)

(assert (=> d!1858271 (= (isDefined!12568 (findConcatSeparation!2279 (regOne!32460 r!7292) (regTwo!32460 r!7292) Nil!64097 s!2326 s!2326)) (not (isEmpty!35964 (findConcatSeparation!2279 (regOne!32460 r!7292) (regTwo!32460 r!7292) Nil!64097 s!2326 s!2326))))))

(declare-fun bs!1402522 () Bool)

(assert (= bs!1402522 d!1858271))

(assert (=> bs!1402522 m!6820336))

(declare-fun m!6820546 () Bool)

(assert (=> bs!1402522 m!6820546))

(assert (=> b!5926417 d!1858271))

(declare-fun call!470220 () Bool)

(declare-fun c!1053431 () Bool)

(declare-fun c!1053430 () Bool)

(declare-fun bm!470213 () Bool)

(assert (=> bm!470213 (= call!470220 (validRegex!7710 (ite c!1053430 (reg!16303 r!7292) (ite c!1053431 (regTwo!32461 r!7292) (regTwo!32460 r!7292)))))))

(declare-fun b!5926795 () Bool)

(declare-fun res!2483718 () Bool)

(declare-fun e!3627770 () Bool)

(assert (=> b!5926795 (=> res!2483718 e!3627770)))

(assert (=> b!5926795 (= res!2483718 (not (is-Concat!24819 r!7292)))))

(declare-fun e!3627765 () Bool)

(assert (=> b!5926795 (= e!3627765 e!3627770)))

(declare-fun b!5926796 () Bool)

(declare-fun res!2483717 () Bool)

(declare-fun e!3627766 () Bool)

(assert (=> b!5926796 (=> (not res!2483717) (not e!3627766))))

(declare-fun call!470219 () Bool)

(assert (=> b!5926796 (= res!2483717 call!470219)))

(assert (=> b!5926796 (= e!3627765 e!3627766)))

(declare-fun b!5926797 () Bool)

(declare-fun e!3627767 () Bool)

(assert (=> b!5926797 (= e!3627767 e!3627765)))

(assert (=> b!5926797 (= c!1053431 (is-Union!15974 r!7292))))

(declare-fun b!5926798 () Bool)

(declare-fun e!3627769 () Bool)

(assert (=> b!5926798 (= e!3627769 e!3627767)))

(assert (=> b!5926798 (= c!1053430 (is-Star!15974 r!7292))))

(declare-fun b!5926799 () Bool)

(declare-fun call!470218 () Bool)

(assert (=> b!5926799 (= e!3627766 call!470218)))

(declare-fun d!1858273 () Bool)

(declare-fun res!2483721 () Bool)

(assert (=> d!1858273 (=> res!2483721 e!3627769)))

(assert (=> d!1858273 (= res!2483721 (is-ElementMatch!15974 r!7292))))

(assert (=> d!1858273 (= (validRegex!7710 r!7292) e!3627769)))

(declare-fun bm!470214 () Bool)

(assert (=> bm!470214 (= call!470219 (validRegex!7710 (ite c!1053431 (regOne!32461 r!7292) (regOne!32460 r!7292))))))

(declare-fun b!5926800 () Bool)

(declare-fun e!3627764 () Bool)

(assert (=> b!5926800 (= e!3627770 e!3627764)))

(declare-fun res!2483719 () Bool)

(assert (=> b!5926800 (=> (not res!2483719) (not e!3627764))))

(assert (=> b!5926800 (= res!2483719 call!470219)))

(declare-fun bm!470215 () Bool)

(assert (=> bm!470215 (= call!470218 call!470220)))

(declare-fun b!5926801 () Bool)

(declare-fun e!3627768 () Bool)

(assert (=> b!5926801 (= e!3627768 call!470220)))

(declare-fun b!5926802 () Bool)

(assert (=> b!5926802 (= e!3627767 e!3627768)))

(declare-fun res!2483720 () Bool)

(assert (=> b!5926802 (= res!2483720 (not (nullable!5969 (reg!16303 r!7292))))))

(assert (=> b!5926802 (=> (not res!2483720) (not e!3627768))))

(declare-fun b!5926803 () Bool)

(assert (=> b!5926803 (= e!3627764 call!470218)))

(assert (= (and d!1858273 (not res!2483721)) b!5926798))

(assert (= (and b!5926798 c!1053430) b!5926802))

(assert (= (and b!5926798 (not c!1053430)) b!5926797))

(assert (= (and b!5926802 res!2483720) b!5926801))

(assert (= (and b!5926797 c!1053431) b!5926796))

(assert (= (and b!5926797 (not c!1053431)) b!5926795))

(assert (= (and b!5926796 res!2483717) b!5926799))

(assert (= (and b!5926795 (not res!2483718)) b!5926800))

(assert (= (and b!5926800 res!2483719) b!5926803))

(assert (= (or b!5926799 b!5926803) bm!470215))

(assert (= (or b!5926796 b!5926800) bm!470214))

(assert (= (or b!5926801 bm!470215) bm!470213))

(declare-fun m!6820568 () Bool)

(assert (=> bm!470213 m!6820568))

(declare-fun m!6820570 () Bool)

(assert (=> bm!470214 m!6820570))

(declare-fun m!6820572 () Bool)

(assert (=> b!5926802 m!6820572))

(assert (=> start!602470 d!1858273))

(declare-fun bs!1402523 () Bool)

(declare-fun d!1858277 () Bool)

(assert (= bs!1402523 (and d!1858277 d!1858237)))

(declare-fun lambda!323252 () Int)

(assert (=> bs!1402523 (= lambda!323252 lambda!323229)))

(declare-fun bs!1402524 () Bool)

(assert (= bs!1402524 (and d!1858277 d!1858241)))

(assert (=> bs!1402524 (= lambda!323252 lambda!323232)))

(declare-fun bs!1402525 () Bool)

(assert (= bs!1402525 (and d!1858277 d!1858247)))

(assert (=> bs!1402525 (= lambda!323252 lambda!323233)))

(assert (=> d!1858277 (= (inv!83183 (h!70547 zl!343)) (forall!15057 (exprs!5858 (h!70547 zl!343)) lambda!323252))))

(declare-fun bs!1402526 () Bool)

(assert (= bs!1402526 d!1858277))

(declare-fun m!6820574 () Bool)

(assert (=> bs!1402526 m!6820574))

(assert (=> b!5926416 d!1858277))

(declare-fun bs!1402527 () Bool)

(declare-fun d!1858279 () Bool)

(assert (= bs!1402527 (and d!1858279 b!5926434)))

(declare-fun lambda!323257 () Int)

(assert (=> bs!1402527 (= lambda!323257 lambda!323215)))

(assert (=> d!1858279 true))

(assert (=> d!1858279 (= (derivationStepZipper!1955 z!1189 (h!70545 s!2326)) (flatMap!1487 z!1189 lambda!323257))))

(declare-fun bs!1402528 () Bool)

(assert (= bs!1402528 d!1858279))

(declare-fun m!6820576 () Bool)

(assert (=> bs!1402528 m!6820576))

(assert (=> b!5926434 d!1858279))

(declare-fun d!1858281 () Bool)

(declare-fun choose!44681 ((Set Context!10716) Int) (Set Context!10716))

(assert (=> d!1858281 (= (flatMap!1487 z!1189 lambda!323215) (choose!44681 z!1189 lambda!323215))))

(declare-fun bs!1402530 () Bool)

(assert (= bs!1402530 d!1858281))

(declare-fun m!6820578 () Bool)

(assert (=> bs!1402530 m!6820578))

(assert (=> b!5926434 d!1858281))

(declare-fun d!1858283 () Bool)

(declare-fun c!1053435 () Bool)

(declare-fun e!3627773 () Bool)

(assert (=> d!1858283 (= c!1053435 e!3627773)))

(declare-fun res!2483722 () Bool)

(assert (=> d!1858283 (=> (not res!2483722) (not e!3627773))))

(assert (=> d!1858283 (= res!2483722 (is-Cons!64098 (exprs!5858 (h!70547 zl!343))))))

(declare-fun e!3627772 () (Set Context!10716))

(assert (=> d!1858283 (= (derivationStepZipperUp!1150 (h!70547 zl!343) (h!70545 s!2326)) e!3627772)))

(declare-fun bm!470216 () Bool)

(declare-fun call!470221 () (Set Context!10716))

(assert (=> bm!470216 (= call!470221 (derivationStepZipperDown!1224 (h!70546 (exprs!5858 (h!70547 zl!343))) (Context!10717 (t!377617 (exprs!5858 (h!70547 zl!343)))) (h!70545 s!2326)))))

(declare-fun b!5926808 () Bool)

(declare-fun e!3627774 () (Set Context!10716))

(assert (=> b!5926808 (= e!3627774 (as set.empty (Set Context!10716)))))

(declare-fun b!5926809 () Bool)

(assert (=> b!5926809 (= e!3627774 call!470221)))

(declare-fun b!5926810 () Bool)

(assert (=> b!5926810 (= e!3627773 (nullable!5969 (h!70546 (exprs!5858 (h!70547 zl!343)))))))

(declare-fun b!5926811 () Bool)

(assert (=> b!5926811 (= e!3627772 e!3627774)))

(declare-fun c!1053436 () Bool)

(assert (=> b!5926811 (= c!1053436 (is-Cons!64098 (exprs!5858 (h!70547 zl!343))))))

(declare-fun b!5926812 () Bool)

(assert (=> b!5926812 (= e!3627772 (set.union call!470221 (derivationStepZipperUp!1150 (Context!10717 (t!377617 (exprs!5858 (h!70547 zl!343)))) (h!70545 s!2326))))))

(assert (= (and d!1858283 res!2483722) b!5926810))

(assert (= (and d!1858283 c!1053435) b!5926812))

(assert (= (and d!1858283 (not c!1053435)) b!5926811))

(assert (= (and b!5926811 c!1053436) b!5926809))

(assert (= (and b!5926811 (not c!1053436)) b!5926808))

(assert (= (or b!5926812 b!5926809) bm!470216))

(declare-fun m!6820580 () Bool)

(assert (=> bm!470216 m!6820580))

(declare-fun m!6820582 () Bool)

(assert (=> b!5926810 m!6820582))

(declare-fun m!6820584 () Bool)

(assert (=> b!5926812 m!6820584))

(assert (=> b!5926434 d!1858283))

(declare-fun d!1858285 () Bool)

(declare-fun dynLambda!25063 (Int Context!10716) (Set Context!10716))

(assert (=> d!1858285 (= (flatMap!1487 z!1189 lambda!323215) (dynLambda!25063 lambda!323215 (h!70547 zl!343)))))

(declare-fun lt!2310418 () Unit!157219)

(declare-fun choose!44682 ((Set Context!10716) Context!10716 Int) Unit!157219)

(assert (=> d!1858285 (= lt!2310418 (choose!44682 z!1189 (h!70547 zl!343) lambda!323215))))

(assert (=> d!1858285 (= z!1189 (set.insert (h!70547 zl!343) (as set.empty (Set Context!10716))))))

(assert (=> d!1858285 (= (lemmaFlatMapOnSingletonSet!1013 z!1189 (h!70547 zl!343) lambda!323215) lt!2310418)))

(declare-fun b_lambda!222597 () Bool)

(assert (=> (not b_lambda!222597) (not d!1858285)))

(declare-fun bs!1402531 () Bool)

(assert (= bs!1402531 d!1858285))

(assert (=> bs!1402531 m!6820364))

(declare-fun m!6820590 () Bool)

(assert (=> bs!1402531 m!6820590))

(declare-fun m!6820592 () Bool)

(assert (=> bs!1402531 m!6820592))

(declare-fun m!6820594 () Bool)

(assert (=> bs!1402531 m!6820594))

(assert (=> b!5926434 d!1858285))

(declare-fun b!5926835 () Bool)

(declare-fun e!3627791 () (Set Context!10716))

(assert (=> b!5926835 (= e!3627791 (set.insert (Context!10717 Nil!64098) (as set.empty (Set Context!10716))))))

(declare-fun b!5926837 () Bool)

(declare-fun e!3627792 () (Set Context!10716))

(assert (=> b!5926837 (= e!3627791 e!3627792)))

(declare-fun c!1053448 () Bool)

(assert (=> b!5926837 (= c!1053448 (is-Union!15974 r!7292))))

(declare-fun b!5926838 () Bool)

(declare-fun e!3627787 () (Set Context!10716))

(declare-fun e!3627790 () (Set Context!10716))

(assert (=> b!5926838 (= e!3627787 e!3627790)))

(declare-fun c!1053449 () Bool)

(assert (=> b!5926838 (= c!1053449 (is-Concat!24819 r!7292))))

(declare-fun b!5926839 () Bool)

(declare-fun call!470239 () (Set Context!10716))

(assert (=> b!5926839 (= e!3627790 call!470239)))

(declare-fun b!5926840 () Bool)

(declare-fun call!470238 () (Set Context!10716))

(declare-fun call!470236 () (Set Context!10716))

(assert (=> b!5926840 (= e!3627792 (set.union call!470238 call!470236))))

(declare-fun bm!470229 () Bool)

(declare-fun call!470234 () List!64222)

(declare-fun call!470237 () List!64222)

(assert (=> bm!470229 (= call!470234 call!470237)))

(declare-fun b!5926841 () Bool)

(declare-fun c!1053450 () Bool)

(assert (=> b!5926841 (= c!1053450 (is-Star!15974 r!7292))))

(declare-fun e!3627788 () (Set Context!10716))

(assert (=> b!5926841 (= e!3627790 e!3627788)))

(declare-fun b!5926842 () Bool)

(assert (=> b!5926842 (= e!3627788 (as set.empty (Set Context!10716)))))

(declare-fun bm!470230 () Bool)

(assert (=> bm!470230 (= call!470238 (derivationStepZipperDown!1224 (ite c!1053448 (regOne!32461 r!7292) (regOne!32460 r!7292)) (ite c!1053448 (Context!10717 Nil!64098) (Context!10717 call!470237)) (h!70545 s!2326)))))

(declare-fun c!1053451 () Bool)

(declare-fun bm!470231 () Bool)

(declare-fun $colon$colon!1861 (List!64222 Regex!15974) List!64222)

(assert (=> bm!470231 (= call!470237 ($colon$colon!1861 (exprs!5858 (Context!10717 Nil!64098)) (ite (or c!1053451 c!1053449) (regTwo!32460 r!7292) r!7292)))))

(declare-fun b!5926843 () Bool)

(declare-fun e!3627789 () Bool)

(assert (=> b!5926843 (= e!3627789 (nullable!5969 (regOne!32460 r!7292)))))

(declare-fun bm!470232 () Bool)

(declare-fun call!470235 () (Set Context!10716))

(assert (=> bm!470232 (= call!470239 call!470235)))

(declare-fun d!1858289 () Bool)

(declare-fun c!1053447 () Bool)

(assert (=> d!1858289 (= c!1053447 (and (is-ElementMatch!15974 r!7292) (= (c!1053341 r!7292) (h!70545 s!2326))))))

(assert (=> d!1858289 (= (derivationStepZipperDown!1224 r!7292 (Context!10717 Nil!64098) (h!70545 s!2326)) e!3627791)))

(declare-fun b!5926836 () Bool)

(assert (=> b!5926836 (= c!1053451 e!3627789)))

(declare-fun res!2483725 () Bool)

(assert (=> b!5926836 (=> (not res!2483725) (not e!3627789))))

(assert (=> b!5926836 (= res!2483725 (is-Concat!24819 r!7292))))

(assert (=> b!5926836 (= e!3627792 e!3627787)))

(declare-fun b!5926844 () Bool)

(assert (=> b!5926844 (= e!3627788 call!470239)))

(declare-fun bm!470233 () Bool)

(assert (=> bm!470233 (= call!470235 call!470236)))

(declare-fun b!5926845 () Bool)

(assert (=> b!5926845 (= e!3627787 (set.union call!470238 call!470235))))

(declare-fun bm!470234 () Bool)

(assert (=> bm!470234 (= call!470236 (derivationStepZipperDown!1224 (ite c!1053448 (regTwo!32461 r!7292) (ite c!1053451 (regTwo!32460 r!7292) (ite c!1053449 (regOne!32460 r!7292) (reg!16303 r!7292)))) (ite (or c!1053448 c!1053451) (Context!10717 Nil!64098) (Context!10717 call!470234)) (h!70545 s!2326)))))

(assert (= (and d!1858289 c!1053447) b!5926835))

(assert (= (and d!1858289 (not c!1053447)) b!5926837))

(assert (= (and b!5926837 c!1053448) b!5926840))

(assert (= (and b!5926837 (not c!1053448)) b!5926836))

(assert (= (and b!5926836 res!2483725) b!5926843))

(assert (= (and b!5926836 c!1053451) b!5926845))

(assert (= (and b!5926836 (not c!1053451)) b!5926838))

(assert (= (and b!5926838 c!1053449) b!5926839))

(assert (= (and b!5926838 (not c!1053449)) b!5926841))

(assert (= (and b!5926841 c!1053450) b!5926844))

(assert (= (and b!5926841 (not c!1053450)) b!5926842))

(assert (= (or b!5926839 b!5926844) bm!470229))

(assert (= (or b!5926839 b!5926844) bm!470232))

(assert (= (or b!5926845 bm!470229) bm!470231))

(assert (= (or b!5926845 bm!470232) bm!470233))

(assert (= (or b!5926840 bm!470233) bm!470234))

(assert (= (or b!5926840 b!5926845) bm!470230))

(declare-fun m!6820596 () Bool)

(assert (=> b!5926835 m!6820596))

(declare-fun m!6820598 () Bool)

(assert (=> bm!470234 m!6820598))

(declare-fun m!6820600 () Bool)

(assert (=> bm!470230 m!6820600))

(declare-fun m!6820602 () Bool)

(assert (=> b!5926843 m!6820602))

(declare-fun m!6820604 () Bool)

(assert (=> bm!470231 m!6820604))

(assert (=> b!5926422 d!1858289))

(declare-fun d!1858291 () Bool)

(declare-fun c!1053452 () Bool)

(declare-fun e!3627794 () Bool)

(assert (=> d!1858291 (= c!1053452 e!3627794)))

(declare-fun res!2483726 () Bool)

(assert (=> d!1858291 (=> (not res!2483726) (not e!3627794))))

(assert (=> d!1858291 (= res!2483726 (is-Cons!64098 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098)))))))

(declare-fun e!3627793 () (Set Context!10716))

(assert (=> d!1858291 (= (derivationStepZipperUp!1150 (Context!10717 (Cons!64098 r!7292 Nil!64098)) (h!70545 s!2326)) e!3627793)))

(declare-fun bm!470235 () Bool)

(declare-fun call!470240 () (Set Context!10716))

(assert (=> bm!470235 (= call!470240 (derivationStepZipperDown!1224 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098)))) (Context!10717 (t!377617 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098))))) (h!70545 s!2326)))))

(declare-fun b!5926846 () Bool)

(declare-fun e!3627795 () (Set Context!10716))

(assert (=> b!5926846 (= e!3627795 (as set.empty (Set Context!10716)))))

(declare-fun b!5926847 () Bool)

(assert (=> b!5926847 (= e!3627795 call!470240)))

(declare-fun b!5926848 () Bool)

(assert (=> b!5926848 (= e!3627794 (nullable!5969 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098))))))))

(declare-fun b!5926849 () Bool)

(assert (=> b!5926849 (= e!3627793 e!3627795)))

(declare-fun c!1053453 () Bool)

(assert (=> b!5926849 (= c!1053453 (is-Cons!64098 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098)))))))

(declare-fun b!5926850 () Bool)

(assert (=> b!5926850 (= e!3627793 (set.union call!470240 (derivationStepZipperUp!1150 (Context!10717 (t!377617 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098))))) (h!70545 s!2326))))))

(assert (= (and d!1858291 res!2483726) b!5926848))

(assert (= (and d!1858291 c!1053452) b!5926850))

(assert (= (and d!1858291 (not c!1053452)) b!5926849))

(assert (= (and b!5926849 c!1053453) b!5926847))

(assert (= (and b!5926849 (not c!1053453)) b!5926846))

(assert (= (or b!5926850 b!5926847) bm!470235))

(declare-fun m!6820606 () Bool)

(assert (=> bm!470235 m!6820606))

(declare-fun m!6820608 () Bool)

(assert (=> b!5926848 m!6820608))

(declare-fun m!6820610 () Bool)

(assert (=> b!5926850 m!6820610))

(assert (=> b!5926422 d!1858291))

(declare-fun bs!1402532 () Bool)

(declare-fun d!1858293 () Bool)

(assert (= bs!1402532 (and d!1858293 d!1858237)))

(declare-fun lambda!323261 () Int)

(assert (=> bs!1402532 (= lambda!323261 lambda!323229)))

(declare-fun bs!1402533 () Bool)

(assert (= bs!1402533 (and d!1858293 d!1858241)))

(assert (=> bs!1402533 (= lambda!323261 lambda!323232)))

(declare-fun bs!1402534 () Bool)

(assert (= bs!1402534 (and d!1858293 d!1858247)))

(assert (=> bs!1402534 (= lambda!323261 lambda!323233)))

(declare-fun bs!1402535 () Bool)

(assert (= bs!1402535 (and d!1858293 d!1858277)))

(assert (=> bs!1402535 (= lambda!323261 lambda!323252)))

(declare-fun b!5926881 () Bool)

(declare-fun e!3627817 () Bool)

(declare-fun lt!2310427 () Regex!15974)

(declare-fun isUnion!841 (Regex!15974) Bool)

(assert (=> b!5926881 (= e!3627817 (isUnion!841 lt!2310427))))

(declare-fun b!5926882 () Bool)

(declare-fun e!3627816 () Regex!15974)

(assert (=> b!5926882 (= e!3627816 (Union!15974 (h!70546 (unfocusZipperList!1395 zl!343)) (generalisedUnion!1818 (t!377617 (unfocusZipperList!1395 zl!343)))))))

(declare-fun b!5926883 () Bool)

(declare-fun e!3627815 () Regex!15974)

(assert (=> b!5926883 (= e!3627815 (h!70546 (unfocusZipperList!1395 zl!343)))))

(declare-fun b!5926884 () Bool)

(declare-fun e!3627814 () Bool)

(declare-fun e!3627818 () Bool)

(assert (=> b!5926884 (= e!3627814 e!3627818)))

(declare-fun c!1053468 () Bool)

(assert (=> b!5926884 (= c!1053468 (isEmpty!35959 (unfocusZipperList!1395 zl!343)))))

(declare-fun b!5926885 () Bool)

(assert (=> b!5926885 (= e!3627818 e!3627817)))

(declare-fun c!1053469 () Bool)

(assert (=> b!5926885 (= c!1053469 (isEmpty!35959 (tail!11574 (unfocusZipperList!1395 zl!343))))))

(declare-fun b!5926886 () Bool)

(assert (=> b!5926886 (= e!3627815 e!3627816)))

(declare-fun c!1053466 () Bool)

(assert (=> b!5926886 (= c!1053466 (is-Cons!64098 (unfocusZipperList!1395 zl!343)))))

(assert (=> d!1858293 e!3627814))

(declare-fun res!2483733 () Bool)

(assert (=> d!1858293 (=> (not res!2483733) (not e!3627814))))

(assert (=> d!1858293 (= res!2483733 (validRegex!7710 lt!2310427))))

(assert (=> d!1858293 (= lt!2310427 e!3627815)))

(declare-fun c!1053467 () Bool)

(declare-fun e!3627819 () Bool)

(assert (=> d!1858293 (= c!1053467 e!3627819)))

(declare-fun res!2483734 () Bool)

(assert (=> d!1858293 (=> (not res!2483734) (not e!3627819))))

(assert (=> d!1858293 (= res!2483734 (is-Cons!64098 (unfocusZipperList!1395 zl!343)))))

(assert (=> d!1858293 (forall!15057 (unfocusZipperList!1395 zl!343) lambda!323261)))

(assert (=> d!1858293 (= (generalisedUnion!1818 (unfocusZipperList!1395 zl!343)) lt!2310427)))

(declare-fun b!5926887 () Bool)

(declare-fun isEmptyLang!1411 (Regex!15974) Bool)

(assert (=> b!5926887 (= e!3627818 (isEmptyLang!1411 lt!2310427))))

(declare-fun b!5926888 () Bool)

(assert (=> b!5926888 (= e!3627819 (isEmpty!35959 (t!377617 (unfocusZipperList!1395 zl!343))))))

(declare-fun b!5926889 () Bool)

(assert (=> b!5926889 (= e!3627817 (= lt!2310427 (head!12489 (unfocusZipperList!1395 zl!343))))))

(declare-fun b!5926890 () Bool)

(assert (=> b!5926890 (= e!3627816 EmptyLang!15974)))

(assert (= (and d!1858293 res!2483734) b!5926888))

(assert (= (and d!1858293 c!1053467) b!5926883))

(assert (= (and d!1858293 (not c!1053467)) b!5926886))

(assert (= (and b!5926886 c!1053466) b!5926882))

(assert (= (and b!5926886 (not c!1053466)) b!5926890))

(assert (= (and d!1858293 res!2483733) b!5926884))

(assert (= (and b!5926884 c!1053468) b!5926887))

(assert (= (and b!5926884 (not c!1053468)) b!5926885))

(assert (= (and b!5926885 c!1053469) b!5926889))

(assert (= (and b!5926885 (not c!1053469)) b!5926881))

(assert (=> b!5926885 m!6820356))

(declare-fun m!6820612 () Bool)

(assert (=> b!5926885 m!6820612))

(assert (=> b!5926885 m!6820612))

(declare-fun m!6820614 () Bool)

(assert (=> b!5926885 m!6820614))

(assert (=> b!5926889 m!6820356))

(declare-fun m!6820616 () Bool)

(assert (=> b!5926889 m!6820616))

(declare-fun m!6820618 () Bool)

(assert (=> b!5926888 m!6820618))

(assert (=> b!5926884 m!6820356))

(declare-fun m!6820620 () Bool)

(assert (=> b!5926884 m!6820620))

(declare-fun m!6820622 () Bool)

(assert (=> d!1858293 m!6820622))

(assert (=> d!1858293 m!6820356))

(declare-fun m!6820624 () Bool)

(assert (=> d!1858293 m!6820624))

(declare-fun m!6820626 () Bool)

(assert (=> b!5926881 m!6820626))

(declare-fun m!6820628 () Bool)

(assert (=> b!5926882 m!6820628))

(declare-fun m!6820630 () Bool)

(assert (=> b!5926887 m!6820630))

(assert (=> b!5926421 d!1858293))

(declare-fun bs!1402536 () Bool)

(declare-fun d!1858295 () Bool)

(assert (= bs!1402536 (and d!1858295 d!1858247)))

(declare-fun lambda!323264 () Int)

(assert (=> bs!1402536 (= lambda!323264 lambda!323233)))

(declare-fun bs!1402537 () Bool)

(assert (= bs!1402537 (and d!1858295 d!1858277)))

(assert (=> bs!1402537 (= lambda!323264 lambda!323252)))

(declare-fun bs!1402538 () Bool)

(assert (= bs!1402538 (and d!1858295 d!1858241)))

(assert (=> bs!1402538 (= lambda!323264 lambda!323232)))

(declare-fun bs!1402539 () Bool)

(assert (= bs!1402539 (and d!1858295 d!1858293)))

(assert (=> bs!1402539 (= lambda!323264 lambda!323261)))

(declare-fun bs!1402540 () Bool)

(assert (= bs!1402540 (and d!1858295 d!1858237)))

(assert (=> bs!1402540 (= lambda!323264 lambda!323229)))

(declare-fun lt!2310430 () List!64222)

(assert (=> d!1858295 (forall!15057 lt!2310430 lambda!323264)))

(declare-fun e!3627826 () List!64222)

(assert (=> d!1858295 (= lt!2310430 e!3627826)))

(declare-fun c!1053472 () Bool)

(assert (=> d!1858295 (= c!1053472 (is-Cons!64099 zl!343))))

(assert (=> d!1858295 (= (unfocusZipperList!1395 zl!343) lt!2310430)))

(declare-fun b!5926903 () Bool)

(assert (=> b!5926903 (= e!3627826 (Cons!64098 (generalisedConcat!1571 (exprs!5858 (h!70547 zl!343))) (unfocusZipperList!1395 (t!377618 zl!343))))))

(declare-fun b!5926904 () Bool)

(assert (=> b!5926904 (= e!3627826 Nil!64098)))

(assert (= (and d!1858295 c!1053472) b!5926903))

(assert (= (and d!1858295 (not c!1053472)) b!5926904))

(declare-fun m!6820632 () Bool)

(assert (=> d!1858295 m!6820632))

(assert (=> b!5926903 m!6820352))

(declare-fun m!6820634 () Bool)

(assert (=> b!5926903 m!6820634))

(assert (=> b!5926421 d!1858295))

(declare-fun d!1858297 () Bool)

(declare-fun lt!2310433 () Regex!15974)

(assert (=> d!1858297 (validRegex!7710 lt!2310433)))

(assert (=> d!1858297 (= lt!2310433 (generalisedUnion!1818 (unfocusZipperList!1395 zl!343)))))

(assert (=> d!1858297 (= (unfocusZipper!1716 zl!343) lt!2310433)))

(declare-fun bs!1402541 () Bool)

(assert (= bs!1402541 d!1858297))

(declare-fun m!6820636 () Bool)

(assert (=> bs!1402541 m!6820636))

(assert (=> bs!1402541 m!6820356))

(assert (=> bs!1402541 m!6820356))

(assert (=> bs!1402541 m!6820358))

(assert (=> b!5926432 d!1858297))

(declare-fun b!5926909 () Bool)

(declare-fun e!3627829 () Bool)

(declare-fun tp!1648221 () Bool)

(assert (=> b!5926909 (= e!3627829 (and tp_is_empty!41201 tp!1648221))))

(assert (=> b!5926425 (= tp!1648185 e!3627829)))

(assert (= (and b!5926425 (is-Cons!64097 (t!377616 s!2326))) b!5926909))

(declare-fun b!5926917 () Bool)

(declare-fun e!3627835 () Bool)

(declare-fun tp!1648226 () Bool)

(assert (=> b!5926917 (= e!3627835 tp!1648226)))

(declare-fun e!3627834 () Bool)

(declare-fun tp!1648227 () Bool)

(declare-fun b!5926916 () Bool)

(assert (=> b!5926916 (= e!3627834 (and (inv!83183 (h!70547 (t!377618 zl!343))) e!3627835 tp!1648227))))

(assert (=> b!5926416 (= tp!1648182 e!3627834)))

(assert (= b!5926916 b!5926917))

(assert (= (and b!5926416 (is-Cons!64099 (t!377618 zl!343))) b!5926916))

(declare-fun m!6820638 () Bool)

(assert (=> b!5926916 m!6820638))

(declare-fun b!5926922 () Bool)

(declare-fun e!3627838 () Bool)

(declare-fun tp!1648232 () Bool)

(declare-fun tp!1648233 () Bool)

(assert (=> b!5926922 (= e!3627838 (and tp!1648232 tp!1648233))))

(assert (=> b!5926431 (= tp!1648179 e!3627838)))

(assert (= (and b!5926431 (is-Cons!64098 (exprs!5858 (h!70547 zl!343)))) b!5926922))

(declare-fun b!5926932 () Bool)

(declare-fun e!3627844 () Bool)

(declare-fun tp!1648234 () Bool)

(declare-fun tp!1648235 () Bool)

(assert (=> b!5926932 (= e!3627844 (and tp!1648234 tp!1648235))))

(assert (=> b!5926424 (= tp!1648181 e!3627844)))

(assert (= (and b!5926424 (is-Cons!64098 (exprs!5858 setElem!40219))) b!5926932))

(declare-fun condSetEmpty!40225 () Bool)

(assert (=> setNonEmpty!40219 (= condSetEmpty!40225 (= setRest!40219 (as set.empty (Set Context!10716))))))

(declare-fun setRes!40225 () Bool)

(assert (=> setNonEmpty!40219 (= tp!1648184 setRes!40225)))

(declare-fun setIsEmpty!40225 () Bool)

(assert (=> setIsEmpty!40225 setRes!40225))

(declare-fun setNonEmpty!40225 () Bool)

(declare-fun setElem!40225 () Context!10716)

(declare-fun e!3627847 () Bool)

(declare-fun tp!1648241 () Bool)

(assert (=> setNonEmpty!40225 (= setRes!40225 (and tp!1648241 (inv!83183 setElem!40225) e!3627847))))

(declare-fun setRest!40225 () (Set Context!10716))

(assert (=> setNonEmpty!40225 (= setRest!40219 (set.union (set.insert setElem!40225 (as set.empty (Set Context!10716))) setRest!40225))))

(declare-fun b!5926937 () Bool)

(declare-fun tp!1648240 () Bool)

(assert (=> b!5926937 (= e!3627847 tp!1648240)))

(assert (= (and setNonEmpty!40219 condSetEmpty!40225) setIsEmpty!40225))

(assert (= (and setNonEmpty!40219 (not condSetEmpty!40225)) setNonEmpty!40225))

(assert (= setNonEmpty!40225 b!5926937))

(declare-fun m!6820640 () Bool)

(assert (=> setNonEmpty!40225 m!6820640))

(declare-fun b!5926949 () Bool)

(declare-fun e!3627850 () Bool)

(declare-fun tp!1648252 () Bool)

(declare-fun tp!1648253 () Bool)

(assert (=> b!5926949 (= e!3627850 (and tp!1648252 tp!1648253))))

(declare-fun b!5926948 () Bool)

(assert (=> b!5926948 (= e!3627850 tp_is_empty!41201)))

(declare-fun b!5926950 () Bool)

(declare-fun tp!1648254 () Bool)

(assert (=> b!5926950 (= e!3627850 tp!1648254)))

(declare-fun b!5926951 () Bool)

(declare-fun tp!1648255 () Bool)

(declare-fun tp!1648256 () Bool)

(assert (=> b!5926951 (= e!3627850 (and tp!1648255 tp!1648256))))

(assert (=> b!5926433 (= tp!1648186 e!3627850)))

(assert (= (and b!5926433 (is-ElementMatch!15974 (regOne!32461 r!7292))) b!5926948))

(assert (= (and b!5926433 (is-Concat!24819 (regOne!32461 r!7292))) b!5926949))

(assert (= (and b!5926433 (is-Star!15974 (regOne!32461 r!7292))) b!5926950))

(assert (= (and b!5926433 (is-Union!15974 (regOne!32461 r!7292))) b!5926951))

(declare-fun b!5926953 () Bool)

(declare-fun e!3627851 () Bool)

(declare-fun tp!1648257 () Bool)

(declare-fun tp!1648258 () Bool)

(assert (=> b!5926953 (= e!3627851 (and tp!1648257 tp!1648258))))

(declare-fun b!5926952 () Bool)

(assert (=> b!5926952 (= e!3627851 tp_is_empty!41201)))

(declare-fun b!5926954 () Bool)

(declare-fun tp!1648259 () Bool)

(assert (=> b!5926954 (= e!3627851 tp!1648259)))

(declare-fun b!5926955 () Bool)

(declare-fun tp!1648260 () Bool)

(declare-fun tp!1648261 () Bool)

(assert (=> b!5926955 (= e!3627851 (and tp!1648260 tp!1648261))))

(assert (=> b!5926433 (= tp!1648180 e!3627851)))

(assert (= (and b!5926433 (is-ElementMatch!15974 (regTwo!32461 r!7292))) b!5926952))

(assert (= (and b!5926433 (is-Concat!24819 (regTwo!32461 r!7292))) b!5926953))

(assert (= (and b!5926433 (is-Star!15974 (regTwo!32461 r!7292))) b!5926954))

(assert (= (and b!5926433 (is-Union!15974 (regTwo!32461 r!7292))) b!5926955))

(declare-fun b!5926957 () Bool)

(declare-fun e!3627852 () Bool)

(declare-fun tp!1648262 () Bool)

(declare-fun tp!1648263 () Bool)

(assert (=> b!5926957 (= e!3627852 (and tp!1648262 tp!1648263))))

(declare-fun b!5926956 () Bool)

(assert (=> b!5926956 (= e!3627852 tp_is_empty!41201)))

(declare-fun b!5926958 () Bool)

(declare-fun tp!1648264 () Bool)

(assert (=> b!5926958 (= e!3627852 tp!1648264)))

(declare-fun b!5926959 () Bool)

(declare-fun tp!1648265 () Bool)

(declare-fun tp!1648266 () Bool)

(assert (=> b!5926959 (= e!3627852 (and tp!1648265 tp!1648266))))

(assert (=> b!5926423 (= tp!1648183 e!3627852)))

(assert (= (and b!5926423 (is-ElementMatch!15974 (reg!16303 r!7292))) b!5926956))

(assert (= (and b!5926423 (is-Concat!24819 (reg!16303 r!7292))) b!5926957))

(assert (= (and b!5926423 (is-Star!15974 (reg!16303 r!7292))) b!5926958))

(assert (= (and b!5926423 (is-Union!15974 (reg!16303 r!7292))) b!5926959))

(declare-fun b!5926961 () Bool)

(declare-fun e!3627853 () Bool)

(declare-fun tp!1648267 () Bool)

(declare-fun tp!1648268 () Bool)

(assert (=> b!5926961 (= e!3627853 (and tp!1648267 tp!1648268))))

(declare-fun b!5926960 () Bool)

(assert (=> b!5926960 (= e!3627853 tp_is_empty!41201)))

(declare-fun b!5926962 () Bool)

(declare-fun tp!1648269 () Bool)

(assert (=> b!5926962 (= e!3627853 tp!1648269)))

(declare-fun b!5926963 () Bool)

(declare-fun tp!1648270 () Bool)

(declare-fun tp!1648271 () Bool)

(assert (=> b!5926963 (= e!3627853 (and tp!1648270 tp!1648271))))

(assert (=> b!5926427 (= tp!1648188 e!3627853)))

(assert (= (and b!5926427 (is-ElementMatch!15974 (regOne!32460 r!7292))) b!5926960))

(assert (= (and b!5926427 (is-Concat!24819 (regOne!32460 r!7292))) b!5926961))

(assert (= (and b!5926427 (is-Star!15974 (regOne!32460 r!7292))) b!5926962))

(assert (= (and b!5926427 (is-Union!15974 (regOne!32460 r!7292))) b!5926963))

(declare-fun b!5926965 () Bool)

(declare-fun e!3627854 () Bool)

(declare-fun tp!1648272 () Bool)

(declare-fun tp!1648273 () Bool)

(assert (=> b!5926965 (= e!3627854 (and tp!1648272 tp!1648273))))

(declare-fun b!5926964 () Bool)

(assert (=> b!5926964 (= e!3627854 tp_is_empty!41201)))

(declare-fun b!5926966 () Bool)

(declare-fun tp!1648274 () Bool)

(assert (=> b!5926966 (= e!3627854 tp!1648274)))

(declare-fun b!5926967 () Bool)

(declare-fun tp!1648275 () Bool)

(declare-fun tp!1648276 () Bool)

(assert (=> b!5926967 (= e!3627854 (and tp!1648275 tp!1648276))))

(assert (=> b!5926427 (= tp!1648187 e!3627854)))

(assert (= (and b!5926427 (is-ElementMatch!15974 (regTwo!32460 r!7292))) b!5926964))

(assert (= (and b!5926427 (is-Concat!24819 (regTwo!32460 r!7292))) b!5926965))

(assert (= (and b!5926427 (is-Star!15974 (regTwo!32460 r!7292))) b!5926966))

(assert (= (and b!5926427 (is-Union!15974 (regTwo!32460 r!7292))) b!5926967))

(declare-fun b_lambda!222599 () Bool)

(assert (= b_lambda!222597 (or b!5926434 b_lambda!222599)))

(declare-fun bs!1402542 () Bool)

(declare-fun d!1858299 () Bool)

(assert (= bs!1402542 (and d!1858299 b!5926434)))

(assert (=> bs!1402542 (= (dynLambda!25063 lambda!323215 (h!70547 zl!343)) (derivationStepZipperUp!1150 (h!70547 zl!343) (h!70545 s!2326)))))

(assert (=> bs!1402542 m!6820366))

(assert (=> d!1858285 d!1858299))

(push 1)

(assert (not b!5926547))

(assert (not d!1858265))

(assert (not b!5926543))

(assert (not b!5926605))

(assert (not bm!470230))

(assert (not bm!470182))

(assert (not b!5926670))

(assert (not bm!470216))

(assert (not b!5926889))

(assert (not b!5926954))

(assert (not d!1858277))

(assert (not b!5926677))

(assert (not d!1858241))

(assert (not b!5926884))

(assert (not bm!470231))

(assert (not b!5926953))

(assert (not b!5926965))

(assert (not d!1858255))

(assert (not b!5926565))

(assert (not b!5926958))

(assert (not d!1858237))

(assert (not b!5926917))

(assert (not d!1858293))

(assert (not b!5926909))

(assert (not b!5926916))

(assert (not b!5926673))

(assert (not b!5926950))

(assert (not b!5926962))

(assert (not b!5926881))

(assert (not b!5926961))

(assert (not d!1858297))

(assert (not d!1858295))

(assert (not d!1858269))

(assert (not b!5926812))

(assert (not b!5926544))

(assert (not d!1858263))

(assert (not b!5926545))

(assert (not b!5926570))

(assert (not b!5926720))

(assert (not b!5926957))

(assert (not bm!470176))

(assert (not d!1858259))

(assert (not b!5926959))

(assert (not b!5926963))

(assert (not b!5926718))

(assert (not bm!470234))

(assert (not b!5926937))

(assert (not b!5926725))

(assert (not b!5926951))

(assert (not b!5926665))

(assert (not b!5926567))

(assert (not d!1858257))

(assert (not setNonEmpty!40225))

(assert (not d!1858247))

(assert (not b!5926671))

(assert (not b!5926888))

(assert (not b!5926882))

(assert (not b!5926723))

(assert (not b!5926546))

(assert (not d!1858271))

(assert (not b!5926903))

(assert (not b!5926922))

(assert (not bm!470197))

(assert tp_is_empty!41201)

(assert (not b!5926552))

(assert (not b!5926848))

(assert (not b!5926666))

(assert (not b!5926802))

(assert (not bm!470214))

(assert (not b!5926850))

(assert (not bm!470181))

(assert (not d!1858285))

(assert (not d!1858245))

(assert (not b!5926613))

(assert (not b!5926551))

(assert (not d!1858281))

(assert (not b!5926717))

(assert (not b!5926955))

(assert (not b!5926843))

(assert (not d!1858279))

(assert (not b!5926967))

(assert (not b!5926722))

(assert (not b_lambda!222599))

(assert (not b!5926966))

(assert (not bs!1402542))

(assert (not b!5926885))

(assert (not b!5926810))

(assert (not b!5926932))

(assert (not d!1858253))

(assert (not b!5926949))

(assert (not b!5926887))

(assert (not bm!470213))

(assert (not bm!470235))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1858347 () Bool)

(declare-fun c!1053520 () Bool)

(declare-fun e!3627979 () Bool)

(assert (=> d!1858347 (= c!1053520 e!3627979)))

(declare-fun res!2483829 () Bool)

(assert (=> d!1858347 (=> (not res!2483829) (not e!3627979))))

(assert (=> d!1858347 (= res!2483829 (is-Cons!64098 (exprs!5858 (Context!10717 (t!377617 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343))))))))))

(declare-fun e!3627978 () (Set Context!10716))

(assert (=> d!1858347 (= (derivationStepZipperUp!1150 (Context!10717 (t!377617 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343))))) (h!70545 s!2326)) e!3627978)))

(declare-fun call!470261 () (Set Context!10716))

(declare-fun bm!470256 () Bool)

(assert (=> bm!470256 (= call!470261 (derivationStepZipperDown!1224 (h!70546 (exprs!5858 (Context!10717 (t!377617 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343))))))) (Context!10717 (t!377617 (exprs!5858 (Context!10717 (t!377617 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343)))))))) (h!70545 s!2326)))))

(declare-fun b!5927191 () Bool)

(declare-fun e!3627980 () (Set Context!10716))

(assert (=> b!5927191 (= e!3627980 (as set.empty (Set Context!10716)))))

(declare-fun b!5927192 () Bool)

(assert (=> b!5927192 (= e!3627980 call!470261)))

(declare-fun b!5927193 () Bool)

(assert (=> b!5927193 (= e!3627979 (nullable!5969 (h!70546 (exprs!5858 (Context!10717 (t!377617 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343)))))))))))

(declare-fun b!5927194 () Bool)

(assert (=> b!5927194 (= e!3627978 e!3627980)))

(declare-fun c!1053521 () Bool)

(assert (=> b!5927194 (= c!1053521 (is-Cons!64098 (exprs!5858 (Context!10717 (t!377617 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343))))))))))

(declare-fun b!5927195 () Bool)

(assert (=> b!5927195 (= e!3627978 (set.union call!470261 (derivationStepZipperUp!1150 (Context!10717 (t!377617 (exprs!5858 (Context!10717 (t!377617 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343)))))))) (h!70545 s!2326))))))

(assert (= (and d!1858347 res!2483829) b!5927193))

(assert (= (and d!1858347 c!1053520) b!5927195))

(assert (= (and d!1858347 (not c!1053520)) b!5927194))

(assert (= (and b!5927194 c!1053521) b!5927192))

(assert (= (and b!5927194 (not c!1053521)) b!5927191))

(assert (= (or b!5927195 b!5927192) bm!470256))

(declare-fun m!6820768 () Bool)

(assert (=> bm!470256 m!6820768))

(declare-fun m!6820770 () Bool)

(assert (=> b!5927193 m!6820770))

(declare-fun m!6820772 () Bool)

(assert (=> b!5927195 m!6820772))

(assert (=> b!5926567 d!1858347))

(declare-fun d!1858349 () Bool)

(assert (=> d!1858349 (= (isEmpty!35963 (tail!11575 s!2326)) (is-Nil!64097 (tail!11575 s!2326)))))

(assert (=> b!5926677 d!1858349))

(declare-fun d!1858351 () Bool)

(assert (=> d!1858351 (= (tail!11575 s!2326) (t!377616 s!2326))))

(assert (=> b!5926677 d!1858351))

(declare-fun b!5927196 () Bool)

(declare-fun e!3627985 () (Set Context!10716))

(assert (=> b!5927196 (= e!3627985 (set.insert (Context!10717 (t!377617 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098))))) (as set.empty (Set Context!10716))))))

(declare-fun b!5927198 () Bool)

(declare-fun e!3627986 () (Set Context!10716))

(assert (=> b!5927198 (= e!3627985 e!3627986)))

(declare-fun c!1053523 () Bool)

(assert (=> b!5927198 (= c!1053523 (is-Union!15974 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098))))))))

(declare-fun b!5927199 () Bool)

(declare-fun e!3627981 () (Set Context!10716))

(declare-fun e!3627984 () (Set Context!10716))

(assert (=> b!5927199 (= e!3627981 e!3627984)))

(declare-fun c!1053524 () Bool)

(assert (=> b!5927199 (= c!1053524 (is-Concat!24819 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098))))))))

(declare-fun b!5927200 () Bool)

(declare-fun call!470267 () (Set Context!10716))

(assert (=> b!5927200 (= e!3627984 call!470267)))

(declare-fun b!5927201 () Bool)

(declare-fun call!470266 () (Set Context!10716))

(declare-fun call!470264 () (Set Context!10716))

(assert (=> b!5927201 (= e!3627986 (set.union call!470266 call!470264))))

(declare-fun bm!470257 () Bool)

(declare-fun call!470262 () List!64222)

(declare-fun call!470265 () List!64222)

(assert (=> bm!470257 (= call!470262 call!470265)))

(declare-fun b!5927202 () Bool)

(declare-fun c!1053525 () Bool)

(assert (=> b!5927202 (= c!1053525 (is-Star!15974 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098))))))))

(declare-fun e!3627982 () (Set Context!10716))

(assert (=> b!5927202 (= e!3627984 e!3627982)))

(declare-fun b!5927203 () Bool)

(assert (=> b!5927203 (= e!3627982 (as set.empty (Set Context!10716)))))

(declare-fun bm!470258 () Bool)

(assert (=> bm!470258 (= call!470266 (derivationStepZipperDown!1224 (ite c!1053523 (regOne!32461 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098))))) (regOne!32460 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098)))))) (ite c!1053523 (Context!10717 (t!377617 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098))))) (Context!10717 call!470265)) (h!70545 s!2326)))))

(declare-fun c!1053526 () Bool)

(declare-fun bm!470259 () Bool)

(assert (=> bm!470259 (= call!470265 ($colon$colon!1861 (exprs!5858 (Context!10717 (t!377617 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098)))))) (ite (or c!1053526 c!1053524) (regTwo!32460 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098))))) (h!70546 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098)))))))))

(declare-fun b!5927204 () Bool)

(declare-fun e!3627983 () Bool)

(assert (=> b!5927204 (= e!3627983 (nullable!5969 (regOne!32460 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098)))))))))

(declare-fun bm!470260 () Bool)

(declare-fun call!470263 () (Set Context!10716))

(assert (=> bm!470260 (= call!470267 call!470263)))

(declare-fun d!1858353 () Bool)

(declare-fun c!1053522 () Bool)

(assert (=> d!1858353 (= c!1053522 (and (is-ElementMatch!15974 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098))))) (= (c!1053341 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098))))) (h!70545 s!2326))))))

(assert (=> d!1858353 (= (derivationStepZipperDown!1224 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098)))) (Context!10717 (t!377617 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098))))) (h!70545 s!2326)) e!3627985)))

(declare-fun b!5927197 () Bool)

(assert (=> b!5927197 (= c!1053526 e!3627983)))

(declare-fun res!2483830 () Bool)

(assert (=> b!5927197 (=> (not res!2483830) (not e!3627983))))

(assert (=> b!5927197 (= res!2483830 (is-Concat!24819 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098))))))))

(assert (=> b!5927197 (= e!3627986 e!3627981)))

(declare-fun b!5927205 () Bool)

(assert (=> b!5927205 (= e!3627982 call!470267)))

(declare-fun bm!470261 () Bool)

(assert (=> bm!470261 (= call!470263 call!470264)))

(declare-fun b!5927206 () Bool)

(assert (=> b!5927206 (= e!3627981 (set.union call!470266 call!470263))))

(declare-fun bm!470262 () Bool)

(assert (=> bm!470262 (= call!470264 (derivationStepZipperDown!1224 (ite c!1053523 (regTwo!32461 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098))))) (ite c!1053526 (regTwo!32460 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098))))) (ite c!1053524 (regOne!32460 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098))))) (reg!16303 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098)))))))) (ite (or c!1053523 c!1053526) (Context!10717 (t!377617 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098))))) (Context!10717 call!470262)) (h!70545 s!2326)))))

(assert (= (and d!1858353 c!1053522) b!5927196))

(assert (= (and d!1858353 (not c!1053522)) b!5927198))

(assert (= (and b!5927198 c!1053523) b!5927201))

(assert (= (and b!5927198 (not c!1053523)) b!5927197))

(assert (= (and b!5927197 res!2483830) b!5927204))

(assert (= (and b!5927197 c!1053526) b!5927206))

(assert (= (and b!5927197 (not c!1053526)) b!5927199))

(assert (= (and b!5927199 c!1053524) b!5927200))

(assert (= (and b!5927199 (not c!1053524)) b!5927202))

(assert (= (and b!5927202 c!1053525) b!5927205))

(assert (= (and b!5927202 (not c!1053525)) b!5927203))

(assert (= (or b!5927200 b!5927205) bm!470257))

(assert (= (or b!5927200 b!5927205) bm!470260))

(assert (= (or b!5927206 bm!470257) bm!470259))

(assert (= (or b!5927206 bm!470260) bm!470261))

(assert (= (or b!5927201 bm!470261) bm!470262))

(assert (= (or b!5927201 b!5927206) bm!470258))

(declare-fun m!6820774 () Bool)

(assert (=> b!5927196 m!6820774))

(declare-fun m!6820776 () Bool)

(assert (=> bm!470262 m!6820776))

(declare-fun m!6820778 () Bool)

(assert (=> bm!470258 m!6820778))

(declare-fun m!6820780 () Bool)

(assert (=> b!5927204 m!6820780))

(declare-fun m!6820782 () Bool)

(assert (=> bm!470259 m!6820782))

(assert (=> bm!470235 d!1858353))

(declare-fun d!1858355 () Bool)

(declare-fun nullableFct!1941 (Regex!15974) Bool)

(assert (=> d!1858355 (= (nullable!5969 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343))))) (nullableFct!1941 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343))))))))

(declare-fun bs!1402582 () Bool)

(assert (= bs!1402582 d!1858355))

(declare-fun m!6820784 () Bool)

(assert (=> bs!1402582 m!6820784))

(assert (=> b!5926565 d!1858355))

(declare-fun d!1858357 () Bool)

(assert (=> d!1858357 (= (head!12489 (exprs!5858 (h!70547 zl!343))) (h!70546 (exprs!5858 (h!70547 zl!343))))))

(assert (=> b!5926551 d!1858357))

(declare-fun d!1858359 () Bool)

(assert (=> d!1858359 (= (isDefined!12568 lt!2310402) (not (isEmpty!35964 lt!2310402)))))

(declare-fun bs!1402583 () Bool)

(assert (= bs!1402583 d!1858359))

(declare-fun m!6820786 () Bool)

(assert (=> bs!1402583 m!6820786))

(assert (=> b!5926722 d!1858359))

(declare-fun d!1858361 () Bool)

(assert (=> d!1858361 (= (nullable!5969 r!7292) (nullableFct!1941 r!7292))))

(declare-fun bs!1402584 () Bool)

(assert (= bs!1402584 d!1858361))

(declare-fun m!6820788 () Bool)

(assert (=> bs!1402584 m!6820788))

(assert (=> b!5926673 d!1858361))

(declare-fun bs!1402585 () Bool)

(declare-fun b!5927207 () Bool)

(assert (= bs!1402585 (and b!5927207 b!5926612)))

(declare-fun lambda!323291 () Int)

(assert (=> bs!1402585 (not (= lambda!323291 lambda!323239))))

(declare-fun bs!1402586 () Bool)

(assert (= bs!1402586 (and b!5927207 d!1858269)))

(assert (=> bs!1402586 (not (= lambda!323291 lambda!323249))))

(declare-fun bs!1402587 () Bool)

(assert (= bs!1402587 (and b!5927207 b!5926603)))

(assert (=> bs!1402587 (= (and (= (reg!16303 (regTwo!32461 r!7292)) (reg!16303 r!7292)) (= (regTwo!32461 r!7292) r!7292)) (= lambda!323291 lambda!323238))))

(declare-fun bs!1402588 () Bool)

(assert (= bs!1402588 (and b!5927207 b!5926417)))

(assert (=> bs!1402588 (not (= lambda!323291 lambda!323213))))

(assert (=> bs!1402586 (not (= lambda!323291 lambda!323250))))

(assert (=> bs!1402588 (not (= lambda!323291 lambda!323214))))

(declare-fun bs!1402589 () Bool)

(assert (= bs!1402589 (and b!5927207 d!1858265)))

(assert (=> bs!1402589 (not (= lambda!323291 lambda!323242))))

(assert (=> b!5927207 true))

(assert (=> b!5927207 true))

(declare-fun bs!1402590 () Bool)

(declare-fun b!5927216 () Bool)

(assert (= bs!1402590 (and b!5927216 b!5926612)))

(declare-fun lambda!323292 () Int)

(assert (=> bs!1402590 (= (and (= (regOne!32460 (regTwo!32461 r!7292)) (regOne!32460 r!7292)) (= (regTwo!32460 (regTwo!32461 r!7292)) (regTwo!32460 r!7292))) (= lambda!323292 lambda!323239))))

(declare-fun bs!1402591 () Bool)

(assert (= bs!1402591 (and b!5927216 b!5926603)))

(assert (=> bs!1402591 (not (= lambda!323292 lambda!323238))))

(declare-fun bs!1402592 () Bool)

(assert (= bs!1402592 (and b!5927216 b!5926417)))

(assert (=> bs!1402592 (not (= lambda!323292 lambda!323213))))

(declare-fun bs!1402593 () Bool)

(assert (= bs!1402593 (and b!5927216 d!1858269)))

(assert (=> bs!1402593 (= (and (= (regOne!32460 (regTwo!32461 r!7292)) (regOne!32460 r!7292)) (= (regTwo!32460 (regTwo!32461 r!7292)) (regTwo!32460 r!7292))) (= lambda!323292 lambda!323250))))

(assert (=> bs!1402592 (= (and (= (regOne!32460 (regTwo!32461 r!7292)) (regOne!32460 r!7292)) (= (regTwo!32460 (regTwo!32461 r!7292)) (regTwo!32460 r!7292))) (= lambda!323292 lambda!323214))))

(declare-fun bs!1402594 () Bool)

(assert (= bs!1402594 (and b!5927216 d!1858265)))

(assert (=> bs!1402594 (not (= lambda!323292 lambda!323242))))

(declare-fun bs!1402595 () Bool)

(assert (= bs!1402595 (and b!5927216 b!5927207)))

(assert (=> bs!1402595 (not (= lambda!323292 lambda!323291))))

(assert (=> bs!1402593 (not (= lambda!323292 lambda!323249))))

(assert (=> b!5927216 true))

(assert (=> b!5927216 true))

(declare-fun bm!470263 () Bool)

(declare-fun call!470268 () Bool)

(assert (=> bm!470263 (= call!470268 (isEmpty!35963 s!2326))))

(declare-fun e!3627991 () Bool)

(declare-fun call!470269 () Bool)

(assert (=> b!5927207 (= e!3627991 call!470269)))

(declare-fun b!5927208 () Bool)

(declare-fun e!3627988 () Bool)

(assert (=> b!5927208 (= e!3627988 (= s!2326 (Cons!64097 (c!1053341 (regTwo!32461 r!7292)) Nil!64097)))))

(declare-fun b!5927209 () Bool)

(declare-fun e!3627992 () Bool)

(assert (=> b!5927209 (= e!3627992 (matchRSpec!3075 (regTwo!32461 (regTwo!32461 r!7292)) s!2326))))

(declare-fun b!5927210 () Bool)

(declare-fun e!3627989 () Bool)

(declare-fun e!3627993 () Bool)

(assert (=> b!5927210 (= e!3627989 e!3627993)))

(declare-fun c!1053527 () Bool)

(assert (=> b!5927210 (= c!1053527 (is-Star!15974 (regTwo!32461 r!7292)))))

(declare-fun b!5927211 () Bool)

(declare-fun e!3627990 () Bool)

(assert (=> b!5927211 (= e!3627990 call!470268)))

(declare-fun b!5927212 () Bool)

(declare-fun e!3627987 () Bool)

(assert (=> b!5927212 (= e!3627990 e!3627987)))

(declare-fun res!2483832 () Bool)

(assert (=> b!5927212 (= res!2483832 (not (is-EmptyLang!15974 (regTwo!32461 r!7292))))))

(assert (=> b!5927212 (=> (not res!2483832) (not e!3627987))))

(declare-fun bm!470264 () Bool)

(assert (=> bm!470264 (= call!470269 (Exists!3044 (ite c!1053527 lambda!323291 lambda!323292)))))

(declare-fun d!1858363 () Bool)

(declare-fun c!1053530 () Bool)

(assert (=> d!1858363 (= c!1053530 (is-EmptyExpr!15974 (regTwo!32461 r!7292)))))

(assert (=> d!1858363 (= (matchRSpec!3075 (regTwo!32461 r!7292) s!2326) e!3627990)))

(declare-fun b!5927213 () Bool)

(declare-fun c!1053528 () Bool)

(assert (=> b!5927213 (= c!1053528 (is-ElementMatch!15974 (regTwo!32461 r!7292)))))

(assert (=> b!5927213 (= e!3627987 e!3627988)))

(declare-fun b!5927214 () Bool)

(declare-fun c!1053529 () Bool)

(assert (=> b!5927214 (= c!1053529 (is-Union!15974 (regTwo!32461 r!7292)))))

(assert (=> b!5927214 (= e!3627988 e!3627989)))

(declare-fun b!5927215 () Bool)

(declare-fun res!2483833 () Bool)

(assert (=> b!5927215 (=> res!2483833 e!3627991)))

(assert (=> b!5927215 (= res!2483833 call!470268)))

(assert (=> b!5927215 (= e!3627993 e!3627991)))

(assert (=> b!5927216 (= e!3627993 call!470269)))

(declare-fun b!5927217 () Bool)

(assert (=> b!5927217 (= e!3627989 e!3627992)))

(declare-fun res!2483831 () Bool)

(assert (=> b!5927217 (= res!2483831 (matchRSpec!3075 (regOne!32461 (regTwo!32461 r!7292)) s!2326))))

(assert (=> b!5927217 (=> res!2483831 e!3627992)))

(assert (= (and d!1858363 c!1053530) b!5927211))

(assert (= (and d!1858363 (not c!1053530)) b!5927212))

(assert (= (and b!5927212 res!2483832) b!5927213))

(assert (= (and b!5927213 c!1053528) b!5927208))

(assert (= (and b!5927213 (not c!1053528)) b!5927214))

(assert (= (and b!5927214 c!1053529) b!5927217))

(assert (= (and b!5927214 (not c!1053529)) b!5927210))

(assert (= (and b!5927217 (not res!2483831)) b!5927209))

(assert (= (and b!5927210 c!1053527) b!5927215))

(assert (= (and b!5927210 (not c!1053527)) b!5927216))

(assert (= (and b!5927215 (not res!2483833)) b!5927207))

(assert (= (or b!5927207 b!5927216) bm!470264))

(assert (= (or b!5927211 b!5927215) bm!470263))

(assert (=> bm!470263 m!6820470))

(declare-fun m!6820790 () Bool)

(assert (=> b!5927209 m!6820790))

(declare-fun m!6820792 () Bool)

(assert (=> bm!470264 m!6820792))

(declare-fun m!6820794 () Bool)

(assert (=> b!5927217 m!6820794))

(assert (=> b!5926605 d!1858363))

(assert (=> bs!1402542 d!1858283))

(declare-fun d!1858365 () Bool)

(assert (=> d!1858365 (= (nullable!5969 (h!70546 (exprs!5858 (h!70547 zl!343)))) (nullableFct!1941 (h!70546 (exprs!5858 (h!70547 zl!343)))))))

(declare-fun bs!1402596 () Bool)

(assert (= bs!1402596 d!1858365))

(declare-fun m!6820796 () Bool)

(assert (=> bs!1402596 m!6820796))

(assert (=> b!5926810 d!1858365))

(declare-fun d!1858367 () Bool)

(declare-fun c!1053531 () Bool)

(declare-fun e!3627995 () Bool)

(assert (=> d!1858367 (= c!1053531 e!3627995)))

(declare-fun res!2483834 () Bool)

(assert (=> d!1858367 (=> (not res!2483834) (not e!3627995))))

(assert (=> d!1858367 (= res!2483834 (is-Cons!64098 (exprs!5858 (Context!10717 (t!377617 (exprs!5858 (h!70547 zl!343)))))))))

(declare-fun e!3627994 () (Set Context!10716))

(assert (=> d!1858367 (= (derivationStepZipperUp!1150 (Context!10717 (t!377617 (exprs!5858 (h!70547 zl!343)))) (h!70545 s!2326)) e!3627994)))

(declare-fun bm!470265 () Bool)

(declare-fun call!470270 () (Set Context!10716))

(assert (=> bm!470265 (= call!470270 (derivationStepZipperDown!1224 (h!70546 (exprs!5858 (Context!10717 (t!377617 (exprs!5858 (h!70547 zl!343)))))) (Context!10717 (t!377617 (exprs!5858 (Context!10717 (t!377617 (exprs!5858 (h!70547 zl!343))))))) (h!70545 s!2326)))))

(declare-fun b!5927218 () Bool)

(declare-fun e!3627996 () (Set Context!10716))

(assert (=> b!5927218 (= e!3627996 (as set.empty (Set Context!10716)))))

(declare-fun b!5927219 () Bool)

(assert (=> b!5927219 (= e!3627996 call!470270)))

(declare-fun b!5927220 () Bool)

(assert (=> b!5927220 (= e!3627995 (nullable!5969 (h!70546 (exprs!5858 (Context!10717 (t!377617 (exprs!5858 (h!70547 zl!343))))))))))

(declare-fun b!5927221 () Bool)

(assert (=> b!5927221 (= e!3627994 e!3627996)))

(declare-fun c!1053532 () Bool)

(assert (=> b!5927221 (= c!1053532 (is-Cons!64098 (exprs!5858 (Context!10717 (t!377617 (exprs!5858 (h!70547 zl!343)))))))))

(declare-fun b!5927222 () Bool)

(assert (=> b!5927222 (= e!3627994 (set.union call!470270 (derivationStepZipperUp!1150 (Context!10717 (t!377617 (exprs!5858 (Context!10717 (t!377617 (exprs!5858 (h!70547 zl!343))))))) (h!70545 s!2326))))))

(assert (= (and d!1858367 res!2483834) b!5927220))

(assert (= (and d!1858367 c!1053531) b!5927222))

(assert (= (and d!1858367 (not c!1053531)) b!5927221))

(assert (= (and b!5927221 c!1053532) b!5927219))

(assert (= (and b!5927221 (not c!1053532)) b!5927218))

(assert (= (or b!5927222 b!5927219) bm!470265))

(declare-fun m!6820798 () Bool)

(assert (=> bm!470265 m!6820798))

(declare-fun m!6820800 () Bool)

(assert (=> b!5927220 m!6820800))

(declare-fun m!6820802 () Bool)

(assert (=> b!5927222 m!6820802))

(assert (=> b!5926812 d!1858367))

(declare-fun d!1858369 () Bool)

(assert (=> d!1858369 (= (isEmpty!35959 (unfocusZipperList!1395 zl!343)) (is-Nil!64098 (unfocusZipperList!1395 zl!343)))))

(assert (=> b!5926884 d!1858369))

(declare-fun d!1858371 () Bool)

(assert (=> d!1858371 (= (isEmptyExpr!1402 lt!2310385) (is-EmptyExpr!15974 lt!2310385))))

(assert (=> b!5926543 d!1858371))

(declare-fun c!1053534 () Bool)

(declare-fun call!470273 () Bool)

(declare-fun c!1053533 () Bool)

(declare-fun bm!470266 () Bool)

(assert (=> bm!470266 (= call!470273 (validRegex!7710 (ite c!1053533 (reg!16303 lt!2310427) (ite c!1053534 (regTwo!32461 lt!2310427) (regTwo!32460 lt!2310427)))))))

(declare-fun b!5927223 () Bool)

(declare-fun res!2483836 () Bool)

(declare-fun e!3628003 () Bool)

(assert (=> b!5927223 (=> res!2483836 e!3628003)))

(assert (=> b!5927223 (= res!2483836 (not (is-Concat!24819 lt!2310427)))))

(declare-fun e!3627998 () Bool)

(assert (=> b!5927223 (= e!3627998 e!3628003)))

(declare-fun b!5927224 () Bool)

(declare-fun res!2483835 () Bool)

(declare-fun e!3627999 () Bool)

(assert (=> b!5927224 (=> (not res!2483835) (not e!3627999))))

(declare-fun call!470272 () Bool)

(assert (=> b!5927224 (= res!2483835 call!470272)))

(assert (=> b!5927224 (= e!3627998 e!3627999)))

(declare-fun b!5927225 () Bool)

(declare-fun e!3628000 () Bool)

(assert (=> b!5927225 (= e!3628000 e!3627998)))

(assert (=> b!5927225 (= c!1053534 (is-Union!15974 lt!2310427))))

(declare-fun b!5927226 () Bool)

(declare-fun e!3628002 () Bool)

(assert (=> b!5927226 (= e!3628002 e!3628000)))

(assert (=> b!5927226 (= c!1053533 (is-Star!15974 lt!2310427))))

(declare-fun b!5927227 () Bool)

(declare-fun call!470271 () Bool)

(assert (=> b!5927227 (= e!3627999 call!470271)))

(declare-fun d!1858373 () Bool)

(declare-fun res!2483839 () Bool)

(assert (=> d!1858373 (=> res!2483839 e!3628002)))

(assert (=> d!1858373 (= res!2483839 (is-ElementMatch!15974 lt!2310427))))

(assert (=> d!1858373 (= (validRegex!7710 lt!2310427) e!3628002)))

(declare-fun bm!470267 () Bool)

(assert (=> bm!470267 (= call!470272 (validRegex!7710 (ite c!1053534 (regOne!32461 lt!2310427) (regOne!32460 lt!2310427))))))

(declare-fun b!5927228 () Bool)

(declare-fun e!3627997 () Bool)

(assert (=> b!5927228 (= e!3628003 e!3627997)))

(declare-fun res!2483837 () Bool)

(assert (=> b!5927228 (=> (not res!2483837) (not e!3627997))))

(assert (=> b!5927228 (= res!2483837 call!470272)))

(declare-fun bm!470268 () Bool)

(assert (=> bm!470268 (= call!470271 call!470273)))

(declare-fun b!5927229 () Bool)

(declare-fun e!3628001 () Bool)

(assert (=> b!5927229 (= e!3628001 call!470273)))

(declare-fun b!5927230 () Bool)

(assert (=> b!5927230 (= e!3628000 e!3628001)))

(declare-fun res!2483838 () Bool)

(assert (=> b!5927230 (= res!2483838 (not (nullable!5969 (reg!16303 lt!2310427))))))

(assert (=> b!5927230 (=> (not res!2483838) (not e!3628001))))

(declare-fun b!5927231 () Bool)

(assert (=> b!5927231 (= e!3627997 call!470271)))

(assert (= (and d!1858373 (not res!2483839)) b!5927226))

(assert (= (and b!5927226 c!1053533) b!5927230))

(assert (= (and b!5927226 (not c!1053533)) b!5927225))

(assert (= (and b!5927230 res!2483838) b!5927229))

(assert (= (and b!5927225 c!1053534) b!5927224))

(assert (= (and b!5927225 (not c!1053534)) b!5927223))

(assert (= (and b!5927224 res!2483835) b!5927227))

(assert (= (and b!5927223 (not res!2483836)) b!5927228))

(assert (= (and b!5927228 res!2483837) b!5927231))

(assert (= (or b!5927227 b!5927231) bm!470268))

(assert (= (or b!5927224 b!5927228) bm!470267))

(assert (= (or b!5927229 bm!470268) bm!470266))

(declare-fun m!6820804 () Bool)

(assert (=> bm!470266 m!6820804))

(declare-fun m!6820806 () Bool)

(assert (=> bm!470267 m!6820806))

(declare-fun m!6820808 () Bool)

(assert (=> b!5927230 m!6820808))

(assert (=> d!1858293 d!1858373))

(declare-fun d!1858375 () Bool)

(declare-fun res!2483844 () Bool)

(declare-fun e!3628008 () Bool)

(assert (=> d!1858375 (=> res!2483844 e!3628008)))

(assert (=> d!1858375 (= res!2483844 (is-Nil!64098 (unfocusZipperList!1395 zl!343)))))

(assert (=> d!1858375 (= (forall!15057 (unfocusZipperList!1395 zl!343) lambda!323261) e!3628008)))

(declare-fun b!5927236 () Bool)

(declare-fun e!3628009 () Bool)

(assert (=> b!5927236 (= e!3628008 e!3628009)))

(declare-fun res!2483845 () Bool)

(assert (=> b!5927236 (=> (not res!2483845) (not e!3628009))))

(declare-fun dynLambda!25065 (Int Regex!15974) Bool)

(assert (=> b!5927236 (= res!2483845 (dynLambda!25065 lambda!323261 (h!70546 (unfocusZipperList!1395 zl!343))))))

(declare-fun b!5927237 () Bool)

(assert (=> b!5927237 (= e!3628009 (forall!15057 (t!377617 (unfocusZipperList!1395 zl!343)) lambda!323261))))

(assert (= (and d!1858375 (not res!2483844)) b!5927236))

(assert (= (and b!5927236 res!2483845) b!5927237))

(declare-fun b_lambda!222605 () Bool)

(assert (=> (not b_lambda!222605) (not b!5927236)))

(declare-fun m!6820810 () Bool)

(assert (=> b!5927236 m!6820810))

(declare-fun m!6820812 () Bool)

(assert (=> b!5927237 m!6820812))

(assert (=> d!1858293 d!1858375))

(declare-fun call!470276 () Bool)

(declare-fun bm!470269 () Bool)

(declare-fun c!1053535 () Bool)

(declare-fun c!1053536 () Bool)

(assert (=> bm!470269 (= call!470276 (validRegex!7710 (ite c!1053535 (reg!16303 (ite c!1053431 (regOne!32461 r!7292) (regOne!32460 r!7292))) (ite c!1053536 (regTwo!32461 (ite c!1053431 (regOne!32461 r!7292) (regOne!32460 r!7292))) (regTwo!32460 (ite c!1053431 (regOne!32461 r!7292) (regOne!32460 r!7292)))))))))

(declare-fun b!5927238 () Bool)

(declare-fun res!2483847 () Bool)

(declare-fun e!3628016 () Bool)

(assert (=> b!5927238 (=> res!2483847 e!3628016)))

(assert (=> b!5927238 (= res!2483847 (not (is-Concat!24819 (ite c!1053431 (regOne!32461 r!7292) (regOne!32460 r!7292)))))))

(declare-fun e!3628011 () Bool)

(assert (=> b!5927238 (= e!3628011 e!3628016)))

(declare-fun b!5927239 () Bool)

(declare-fun res!2483846 () Bool)

(declare-fun e!3628012 () Bool)

(assert (=> b!5927239 (=> (not res!2483846) (not e!3628012))))

(declare-fun call!470275 () Bool)

(assert (=> b!5927239 (= res!2483846 call!470275)))

(assert (=> b!5927239 (= e!3628011 e!3628012)))

(declare-fun b!5927240 () Bool)

(declare-fun e!3628013 () Bool)

(assert (=> b!5927240 (= e!3628013 e!3628011)))

(assert (=> b!5927240 (= c!1053536 (is-Union!15974 (ite c!1053431 (regOne!32461 r!7292) (regOne!32460 r!7292))))))

(declare-fun b!5927241 () Bool)

(declare-fun e!3628015 () Bool)

(assert (=> b!5927241 (= e!3628015 e!3628013)))

(assert (=> b!5927241 (= c!1053535 (is-Star!15974 (ite c!1053431 (regOne!32461 r!7292) (regOne!32460 r!7292))))))

(declare-fun b!5927242 () Bool)

(declare-fun call!470274 () Bool)

(assert (=> b!5927242 (= e!3628012 call!470274)))

(declare-fun d!1858377 () Bool)

(declare-fun res!2483850 () Bool)

(assert (=> d!1858377 (=> res!2483850 e!3628015)))

(assert (=> d!1858377 (= res!2483850 (is-ElementMatch!15974 (ite c!1053431 (regOne!32461 r!7292) (regOne!32460 r!7292))))))

(assert (=> d!1858377 (= (validRegex!7710 (ite c!1053431 (regOne!32461 r!7292) (regOne!32460 r!7292))) e!3628015)))

(declare-fun bm!470270 () Bool)

(assert (=> bm!470270 (= call!470275 (validRegex!7710 (ite c!1053536 (regOne!32461 (ite c!1053431 (regOne!32461 r!7292) (regOne!32460 r!7292))) (regOne!32460 (ite c!1053431 (regOne!32461 r!7292) (regOne!32460 r!7292))))))))

(declare-fun b!5927243 () Bool)

(declare-fun e!3628010 () Bool)

(assert (=> b!5927243 (= e!3628016 e!3628010)))

(declare-fun res!2483848 () Bool)

(assert (=> b!5927243 (=> (not res!2483848) (not e!3628010))))

(assert (=> b!5927243 (= res!2483848 call!470275)))

(declare-fun bm!470271 () Bool)

(assert (=> bm!470271 (= call!470274 call!470276)))

(declare-fun b!5927244 () Bool)

(declare-fun e!3628014 () Bool)

(assert (=> b!5927244 (= e!3628014 call!470276)))

(declare-fun b!5927245 () Bool)

(assert (=> b!5927245 (= e!3628013 e!3628014)))

(declare-fun res!2483849 () Bool)

(assert (=> b!5927245 (= res!2483849 (not (nullable!5969 (reg!16303 (ite c!1053431 (regOne!32461 r!7292) (regOne!32460 r!7292))))))))

(assert (=> b!5927245 (=> (not res!2483849) (not e!3628014))))

(declare-fun b!5927246 () Bool)

(assert (=> b!5927246 (= e!3628010 call!470274)))

(assert (= (and d!1858377 (not res!2483850)) b!5927241))

(assert (= (and b!5927241 c!1053535) b!5927245))

(assert (= (and b!5927241 (not c!1053535)) b!5927240))

(assert (= (and b!5927245 res!2483849) b!5927244))

(assert (= (and b!5927240 c!1053536) b!5927239))

(assert (= (and b!5927240 (not c!1053536)) b!5927238))

(assert (= (and b!5927239 res!2483846) b!5927242))

(assert (= (and b!5927238 (not res!2483847)) b!5927243))

(assert (= (and b!5927243 res!2483848) b!5927246))

(assert (= (or b!5927242 b!5927246) bm!470271))

(assert (= (or b!5927239 b!5927243) bm!470270))

(assert (= (or b!5927244 bm!470271) bm!470269))

(declare-fun m!6820814 () Bool)

(assert (=> bm!470269 m!6820814))

(declare-fun m!6820816 () Bool)

(assert (=> bm!470270 m!6820816))

(declare-fun m!6820818 () Bool)

(assert (=> b!5927245 m!6820818))

(assert (=> bm!470214 d!1858377))

(declare-fun d!1858379 () Bool)

(assert (=> d!1858379 (= (isEmpty!35964 (findConcatSeparation!2279 (regOne!32460 r!7292) (regTwo!32460 r!7292) Nil!64097 s!2326 s!2326)) (not (is-Some!15864 (findConcatSeparation!2279 (regOne!32460 r!7292) (regTwo!32460 r!7292) Nil!64097 s!2326 s!2326))))))

(assert (=> d!1858271 d!1858379))

(declare-fun d!1858381 () Bool)

(assert (=> d!1858381 (= (isEmpty!35963 s!2326) (is-Nil!64097 s!2326))))

(assert (=> bm!470197 d!1858381))

(declare-fun bs!1402597 () Bool)

(declare-fun d!1858383 () Bool)

(assert (= bs!1402597 (and d!1858383 d!1858295)))

(declare-fun lambda!323293 () Int)

(assert (=> bs!1402597 (= lambda!323293 lambda!323264)))

(declare-fun bs!1402598 () Bool)

(assert (= bs!1402598 (and d!1858383 d!1858247)))

(assert (=> bs!1402598 (= lambda!323293 lambda!323233)))

(declare-fun bs!1402599 () Bool)

(assert (= bs!1402599 (and d!1858383 d!1858277)))

(assert (=> bs!1402599 (= lambda!323293 lambda!323252)))

(declare-fun bs!1402600 () Bool)

(assert (= bs!1402600 (and d!1858383 d!1858241)))

(assert (=> bs!1402600 (= lambda!323293 lambda!323232)))

(declare-fun bs!1402601 () Bool)

(assert (= bs!1402601 (and d!1858383 d!1858293)))

(assert (=> bs!1402601 (= lambda!323293 lambda!323261)))

(declare-fun bs!1402602 () Bool)

(assert (= bs!1402602 (and d!1858383 d!1858237)))

(assert (=> bs!1402602 (= lambda!323293 lambda!323229)))

(declare-fun b!5927247 () Bool)

(declare-fun e!3628020 () Bool)

(declare-fun lt!2310461 () Regex!15974)

(assert (=> b!5927247 (= e!3628020 (isUnion!841 lt!2310461))))

(declare-fun b!5927248 () Bool)

(declare-fun e!3628019 () Regex!15974)

(assert (=> b!5927248 (= e!3628019 (Union!15974 (h!70546 (t!377617 (unfocusZipperList!1395 zl!343))) (generalisedUnion!1818 (t!377617 (t!377617 (unfocusZipperList!1395 zl!343))))))))

(declare-fun b!5927249 () Bool)

(declare-fun e!3628018 () Regex!15974)

(assert (=> b!5927249 (= e!3628018 (h!70546 (t!377617 (unfocusZipperList!1395 zl!343))))))

(declare-fun b!5927250 () Bool)

(declare-fun e!3628017 () Bool)

(declare-fun e!3628021 () Bool)

(assert (=> b!5927250 (= e!3628017 e!3628021)))

(declare-fun c!1053539 () Bool)

(assert (=> b!5927250 (= c!1053539 (isEmpty!35959 (t!377617 (unfocusZipperList!1395 zl!343))))))

(declare-fun b!5927251 () Bool)

(assert (=> b!5927251 (= e!3628021 e!3628020)))

(declare-fun c!1053540 () Bool)

(assert (=> b!5927251 (= c!1053540 (isEmpty!35959 (tail!11574 (t!377617 (unfocusZipperList!1395 zl!343)))))))

(declare-fun b!5927252 () Bool)

(assert (=> b!5927252 (= e!3628018 e!3628019)))

(declare-fun c!1053537 () Bool)

(assert (=> b!5927252 (= c!1053537 (is-Cons!64098 (t!377617 (unfocusZipperList!1395 zl!343))))))

(assert (=> d!1858383 e!3628017))

(declare-fun res!2483851 () Bool)

(assert (=> d!1858383 (=> (not res!2483851) (not e!3628017))))

(assert (=> d!1858383 (= res!2483851 (validRegex!7710 lt!2310461))))

(assert (=> d!1858383 (= lt!2310461 e!3628018)))

(declare-fun c!1053538 () Bool)

(declare-fun e!3628022 () Bool)

(assert (=> d!1858383 (= c!1053538 e!3628022)))

(declare-fun res!2483852 () Bool)

(assert (=> d!1858383 (=> (not res!2483852) (not e!3628022))))

(assert (=> d!1858383 (= res!2483852 (is-Cons!64098 (t!377617 (unfocusZipperList!1395 zl!343))))))

(assert (=> d!1858383 (forall!15057 (t!377617 (unfocusZipperList!1395 zl!343)) lambda!323293)))

(assert (=> d!1858383 (= (generalisedUnion!1818 (t!377617 (unfocusZipperList!1395 zl!343))) lt!2310461)))

(declare-fun b!5927253 () Bool)

(assert (=> b!5927253 (= e!3628021 (isEmptyLang!1411 lt!2310461))))

(declare-fun b!5927254 () Bool)

(assert (=> b!5927254 (= e!3628022 (isEmpty!35959 (t!377617 (t!377617 (unfocusZipperList!1395 zl!343)))))))

(declare-fun b!5927255 () Bool)

(assert (=> b!5927255 (= e!3628020 (= lt!2310461 (head!12489 (t!377617 (unfocusZipperList!1395 zl!343)))))))

(declare-fun b!5927256 () Bool)

(assert (=> b!5927256 (= e!3628019 EmptyLang!15974)))

(assert (= (and d!1858383 res!2483852) b!5927254))

(assert (= (and d!1858383 c!1053538) b!5927249))

(assert (= (and d!1858383 (not c!1053538)) b!5927252))

(assert (= (and b!5927252 c!1053537) b!5927248))

(assert (= (and b!5927252 (not c!1053537)) b!5927256))

(assert (= (and d!1858383 res!2483851) b!5927250))

(assert (= (and b!5927250 c!1053539) b!5927253))

(assert (= (and b!5927250 (not c!1053539)) b!5927251))

(assert (= (and b!5927251 c!1053540) b!5927255))

(assert (= (and b!5927251 (not c!1053540)) b!5927247))

(declare-fun m!6820820 () Bool)

(assert (=> b!5927251 m!6820820))

(assert (=> b!5927251 m!6820820))

(declare-fun m!6820822 () Bool)

(assert (=> b!5927251 m!6820822))

(declare-fun m!6820824 () Bool)

(assert (=> b!5927255 m!6820824))

(declare-fun m!6820826 () Bool)

(assert (=> b!5927254 m!6820826))

(assert (=> b!5927250 m!6820618))

(declare-fun m!6820828 () Bool)

(assert (=> d!1858383 m!6820828))

(declare-fun m!6820830 () Bool)

(assert (=> d!1858383 m!6820830))

(declare-fun m!6820832 () Bool)

(assert (=> b!5927247 m!6820832))

(declare-fun m!6820834 () Bool)

(assert (=> b!5927248 m!6820834))

(declare-fun m!6820836 () Bool)

(assert (=> b!5927253 m!6820836))

(assert (=> b!5926882 d!1858383))

(declare-fun d!1858385 () Bool)

(assert (=> d!1858385 (= (nullable!5969 (reg!16303 r!7292)) (nullableFct!1941 (reg!16303 r!7292)))))

(declare-fun bs!1402603 () Bool)

(assert (= bs!1402603 d!1858385))

(declare-fun m!6820838 () Bool)

(assert (=> bs!1402603 m!6820838))

(assert (=> b!5926802 d!1858385))

(assert (=> b!5926671 d!1858349))

(assert (=> b!5926671 d!1858351))

(declare-fun d!1858387 () Bool)

(assert (=> d!1858387 true))

(assert (=> d!1858387 true))

(declare-fun res!2483855 () Bool)

(assert (=> d!1858387 (= (choose!44678 lambda!323214) res!2483855)))

(assert (=> d!1858263 d!1858387))

(declare-fun bs!1402604 () Bool)

(declare-fun d!1858389 () Bool)

(assert (= bs!1402604 (and d!1858389 d!1858295)))

(declare-fun lambda!323294 () Int)

(assert (=> bs!1402604 (= lambda!323294 lambda!323264)))

(declare-fun bs!1402605 () Bool)

(assert (= bs!1402605 (and d!1858389 d!1858247)))

(assert (=> bs!1402605 (= lambda!323294 lambda!323233)))

(declare-fun bs!1402606 () Bool)

(assert (= bs!1402606 (and d!1858389 d!1858277)))

(assert (=> bs!1402606 (= lambda!323294 lambda!323252)))

(declare-fun bs!1402607 () Bool)

(assert (= bs!1402607 (and d!1858389 d!1858383)))

(assert (=> bs!1402607 (= lambda!323294 lambda!323293)))

(declare-fun bs!1402608 () Bool)

(assert (= bs!1402608 (and d!1858389 d!1858241)))

(assert (=> bs!1402608 (= lambda!323294 lambda!323232)))

(declare-fun bs!1402609 () Bool)

(assert (= bs!1402609 (and d!1858389 d!1858293)))

(assert (=> bs!1402609 (= lambda!323294 lambda!323261)))

(declare-fun bs!1402610 () Bool)

(assert (= bs!1402610 (and d!1858389 d!1858237)))

(assert (=> bs!1402610 (= lambda!323294 lambda!323229)))

(assert (=> d!1858389 (= (inv!83183 setElem!40225) (forall!15057 (exprs!5858 setElem!40225) lambda!323294))))

(declare-fun bs!1402611 () Bool)

(assert (= bs!1402611 d!1858389))

(declare-fun m!6820840 () Bool)

(assert (=> bs!1402611 m!6820840))

(assert (=> setNonEmpty!40225 d!1858389))

(declare-fun d!1858391 () Bool)

(assert (=> d!1858391 true))

(declare-fun setRes!40231 () Bool)

(assert (=> d!1858391 setRes!40231))

(declare-fun condSetEmpty!40231 () Bool)

(declare-fun res!2483858 () (Set Context!10716))

(assert (=> d!1858391 (= condSetEmpty!40231 (= res!2483858 (as set.empty (Set Context!10716))))))

(assert (=> d!1858391 (= (choose!44681 z!1189 lambda!323215) res!2483858)))

(declare-fun setIsEmpty!40231 () Bool)

(assert (=> setIsEmpty!40231 setRes!40231))

(declare-fun e!3628025 () Bool)

(declare-fun setElem!40231 () Context!10716)

(declare-fun setNonEmpty!40231 () Bool)

(declare-fun tp!1648340 () Bool)

(assert (=> setNonEmpty!40231 (= setRes!40231 (and tp!1648340 (inv!83183 setElem!40231) e!3628025))))

(declare-fun setRest!40231 () (Set Context!10716))

(assert (=> setNonEmpty!40231 (= res!2483858 (set.union (set.insert setElem!40231 (as set.empty (Set Context!10716))) setRest!40231))))

(declare-fun b!5927259 () Bool)

(declare-fun tp!1648339 () Bool)

(assert (=> b!5927259 (= e!3628025 tp!1648339)))

(assert (= (and d!1858391 condSetEmpty!40231) setIsEmpty!40231))

(assert (= (and d!1858391 (not condSetEmpty!40231)) setNonEmpty!40231))

(assert (= setNonEmpty!40231 b!5927259))

(declare-fun m!6820842 () Bool)

(assert (=> setNonEmpty!40231 m!6820842))

(assert (=> d!1858281 d!1858391))

(declare-fun b!5927270 () Bool)

(declare-fun res!2483864 () Bool)

(declare-fun e!3628030 () Bool)

(assert (=> b!5927270 (=> (not res!2483864) (not e!3628030))))

(declare-fun lt!2310464 () List!64221)

(declare-fun size!40141 (List!64221) Int)

(assert (=> b!5927270 (= res!2483864 (= (size!40141 lt!2310464) (+ (size!40141 (_1!36256 (get!22074 lt!2310402))) (size!40141 (_2!36256 (get!22074 lt!2310402))))))))

(declare-fun b!5927271 () Bool)

(assert (=> b!5927271 (= e!3628030 (or (not (= (_2!36256 (get!22074 lt!2310402)) Nil!64097)) (= lt!2310464 (_1!36256 (get!22074 lt!2310402)))))))

(declare-fun b!5927269 () Bool)

(declare-fun e!3628031 () List!64221)

(assert (=> b!5927269 (= e!3628031 (Cons!64097 (h!70545 (_1!36256 (get!22074 lt!2310402))) (++!14071 (t!377616 (_1!36256 (get!22074 lt!2310402))) (_2!36256 (get!22074 lt!2310402)))))))

(declare-fun b!5927268 () Bool)

(assert (=> b!5927268 (= e!3628031 (_2!36256 (get!22074 lt!2310402)))))

(declare-fun d!1858393 () Bool)

(assert (=> d!1858393 e!3628030))

(declare-fun res!2483863 () Bool)

(assert (=> d!1858393 (=> (not res!2483863) (not e!3628030))))

(declare-fun content!11809 (List!64221) (Set C!32218))

(assert (=> d!1858393 (= res!2483863 (= (content!11809 lt!2310464) (set.union (content!11809 (_1!36256 (get!22074 lt!2310402))) (content!11809 (_2!36256 (get!22074 lt!2310402))))))))

(assert (=> d!1858393 (= lt!2310464 e!3628031)))

(declare-fun c!1053543 () Bool)

(assert (=> d!1858393 (= c!1053543 (is-Nil!64097 (_1!36256 (get!22074 lt!2310402))))))

(assert (=> d!1858393 (= (++!14071 (_1!36256 (get!22074 lt!2310402)) (_2!36256 (get!22074 lt!2310402))) lt!2310464)))

(assert (= (and d!1858393 c!1053543) b!5927268))

(assert (= (and d!1858393 (not c!1053543)) b!5927269))

(assert (= (and d!1858393 res!2483863) b!5927270))

(assert (= (and b!5927270 res!2483864) b!5927271))

(declare-fun m!6820844 () Bool)

(assert (=> b!5927270 m!6820844))

(declare-fun m!6820846 () Bool)

(assert (=> b!5927270 m!6820846))

(declare-fun m!6820848 () Bool)

(assert (=> b!5927270 m!6820848))

(declare-fun m!6820850 () Bool)

(assert (=> b!5927269 m!6820850))

(declare-fun m!6820852 () Bool)

(assert (=> d!1858393 m!6820852))

(declare-fun m!6820854 () Bool)

(assert (=> d!1858393 m!6820854))

(declare-fun m!6820856 () Bool)

(assert (=> d!1858393 m!6820856))

(assert (=> b!5926720 d!1858393))

(declare-fun d!1858395 () Bool)

(assert (=> d!1858395 (= (get!22074 lt!2310402) (v!51962 lt!2310402))))

(assert (=> b!5926720 d!1858395))

(declare-fun bs!1402612 () Bool)

(declare-fun b!5927272 () Bool)

(assert (= bs!1402612 (and b!5927272 b!5926612)))

(declare-fun lambda!323295 () Int)

(assert (=> bs!1402612 (not (= lambda!323295 lambda!323239))))

(declare-fun bs!1402613 () Bool)

(assert (= bs!1402613 (and b!5927272 b!5927216)))

(assert (=> bs!1402613 (not (= lambda!323295 lambda!323292))))

(declare-fun bs!1402614 () Bool)

(assert (= bs!1402614 (and b!5927272 b!5926603)))

(assert (=> bs!1402614 (= (and (= (reg!16303 (regOne!32461 r!7292)) (reg!16303 r!7292)) (= (regOne!32461 r!7292) r!7292)) (= lambda!323295 lambda!323238))))

(declare-fun bs!1402615 () Bool)

(assert (= bs!1402615 (and b!5927272 b!5926417)))

(assert (=> bs!1402615 (not (= lambda!323295 lambda!323213))))

(declare-fun bs!1402616 () Bool)

(assert (= bs!1402616 (and b!5927272 d!1858269)))

(assert (=> bs!1402616 (not (= lambda!323295 lambda!323250))))

(assert (=> bs!1402615 (not (= lambda!323295 lambda!323214))))

(declare-fun bs!1402617 () Bool)

(assert (= bs!1402617 (and b!5927272 d!1858265)))

(assert (=> bs!1402617 (not (= lambda!323295 lambda!323242))))

(declare-fun bs!1402618 () Bool)

(assert (= bs!1402618 (and b!5927272 b!5927207)))

(assert (=> bs!1402618 (= (and (= (reg!16303 (regOne!32461 r!7292)) (reg!16303 (regTwo!32461 r!7292))) (= (regOne!32461 r!7292) (regTwo!32461 r!7292))) (= lambda!323295 lambda!323291))))

(assert (=> bs!1402616 (not (= lambda!323295 lambda!323249))))

(assert (=> b!5927272 true))

(assert (=> b!5927272 true))

(declare-fun bs!1402619 () Bool)

(declare-fun b!5927281 () Bool)

(assert (= bs!1402619 (and b!5927281 b!5926612)))

(declare-fun lambda!323296 () Int)

(assert (=> bs!1402619 (= (and (= (regOne!32460 (regOne!32461 r!7292)) (regOne!32460 r!7292)) (= (regTwo!32460 (regOne!32461 r!7292)) (regTwo!32460 r!7292))) (= lambda!323296 lambda!323239))))

(declare-fun bs!1402620 () Bool)

(assert (= bs!1402620 (and b!5927281 b!5927272)))

(assert (=> bs!1402620 (not (= lambda!323296 lambda!323295))))

(declare-fun bs!1402621 () Bool)

(assert (= bs!1402621 (and b!5927281 b!5927216)))

(assert (=> bs!1402621 (= (and (= (regOne!32460 (regOne!32461 r!7292)) (regOne!32460 (regTwo!32461 r!7292))) (= (regTwo!32460 (regOne!32461 r!7292)) (regTwo!32460 (regTwo!32461 r!7292)))) (= lambda!323296 lambda!323292))))

(declare-fun bs!1402622 () Bool)

(assert (= bs!1402622 (and b!5927281 b!5926603)))

(assert (=> bs!1402622 (not (= lambda!323296 lambda!323238))))

(declare-fun bs!1402623 () Bool)

(assert (= bs!1402623 (and b!5927281 b!5926417)))

(assert (=> bs!1402623 (not (= lambda!323296 lambda!323213))))

(declare-fun bs!1402624 () Bool)

(assert (= bs!1402624 (and b!5927281 d!1858269)))

(assert (=> bs!1402624 (= (and (= (regOne!32460 (regOne!32461 r!7292)) (regOne!32460 r!7292)) (= (regTwo!32460 (regOne!32461 r!7292)) (regTwo!32460 r!7292))) (= lambda!323296 lambda!323250))))

(assert (=> bs!1402623 (= (and (= (regOne!32460 (regOne!32461 r!7292)) (regOne!32460 r!7292)) (= (regTwo!32460 (regOne!32461 r!7292)) (regTwo!32460 r!7292))) (= lambda!323296 lambda!323214))))

(declare-fun bs!1402625 () Bool)

(assert (= bs!1402625 (and b!5927281 d!1858265)))

(assert (=> bs!1402625 (not (= lambda!323296 lambda!323242))))

(declare-fun bs!1402626 () Bool)

(assert (= bs!1402626 (and b!5927281 b!5927207)))

(assert (=> bs!1402626 (not (= lambda!323296 lambda!323291))))

(assert (=> bs!1402624 (not (= lambda!323296 lambda!323249))))

(assert (=> b!5927281 true))

(assert (=> b!5927281 true))

(declare-fun bm!470272 () Bool)

(declare-fun call!470277 () Bool)

(assert (=> bm!470272 (= call!470277 (isEmpty!35963 s!2326))))

(declare-fun e!3628036 () Bool)

(declare-fun call!470278 () Bool)

(assert (=> b!5927272 (= e!3628036 call!470278)))

(declare-fun b!5927273 () Bool)

(declare-fun e!3628033 () Bool)

(assert (=> b!5927273 (= e!3628033 (= s!2326 (Cons!64097 (c!1053341 (regOne!32461 r!7292)) Nil!64097)))))

(declare-fun b!5927274 () Bool)

(declare-fun e!3628037 () Bool)

(assert (=> b!5927274 (= e!3628037 (matchRSpec!3075 (regTwo!32461 (regOne!32461 r!7292)) s!2326))))

(declare-fun b!5927275 () Bool)

(declare-fun e!3628034 () Bool)

(declare-fun e!3628038 () Bool)

(assert (=> b!5927275 (= e!3628034 e!3628038)))

(declare-fun c!1053544 () Bool)

(assert (=> b!5927275 (= c!1053544 (is-Star!15974 (regOne!32461 r!7292)))))

(declare-fun b!5927276 () Bool)

(declare-fun e!3628035 () Bool)

(assert (=> b!5927276 (= e!3628035 call!470277)))

(declare-fun b!5927277 () Bool)

(declare-fun e!3628032 () Bool)

(assert (=> b!5927277 (= e!3628035 e!3628032)))

(declare-fun res!2483866 () Bool)

(assert (=> b!5927277 (= res!2483866 (not (is-EmptyLang!15974 (regOne!32461 r!7292))))))

(assert (=> b!5927277 (=> (not res!2483866) (not e!3628032))))

(declare-fun bm!470273 () Bool)

(assert (=> bm!470273 (= call!470278 (Exists!3044 (ite c!1053544 lambda!323295 lambda!323296)))))

(declare-fun d!1858397 () Bool)

(declare-fun c!1053547 () Bool)

(assert (=> d!1858397 (= c!1053547 (is-EmptyExpr!15974 (regOne!32461 r!7292)))))

(assert (=> d!1858397 (= (matchRSpec!3075 (regOne!32461 r!7292) s!2326) e!3628035)))

(declare-fun b!5927278 () Bool)

(declare-fun c!1053545 () Bool)

(assert (=> b!5927278 (= c!1053545 (is-ElementMatch!15974 (regOne!32461 r!7292)))))

(assert (=> b!5927278 (= e!3628032 e!3628033)))

(declare-fun b!5927279 () Bool)

(declare-fun c!1053546 () Bool)

(assert (=> b!5927279 (= c!1053546 (is-Union!15974 (regOne!32461 r!7292)))))

(assert (=> b!5927279 (= e!3628033 e!3628034)))

(declare-fun b!5927280 () Bool)

(declare-fun res!2483867 () Bool)

(assert (=> b!5927280 (=> res!2483867 e!3628036)))

(assert (=> b!5927280 (= res!2483867 call!470277)))

(assert (=> b!5927280 (= e!3628038 e!3628036)))

(assert (=> b!5927281 (= e!3628038 call!470278)))

(declare-fun b!5927282 () Bool)

(assert (=> b!5927282 (= e!3628034 e!3628037)))

(declare-fun res!2483865 () Bool)

(assert (=> b!5927282 (= res!2483865 (matchRSpec!3075 (regOne!32461 (regOne!32461 r!7292)) s!2326))))

(assert (=> b!5927282 (=> res!2483865 e!3628037)))

(assert (= (and d!1858397 c!1053547) b!5927276))

(assert (= (and d!1858397 (not c!1053547)) b!5927277))

(assert (= (and b!5927277 res!2483866) b!5927278))

(assert (= (and b!5927278 c!1053545) b!5927273))

(assert (= (and b!5927278 (not c!1053545)) b!5927279))

(assert (= (and b!5927279 c!1053546) b!5927282))

(assert (= (and b!5927279 (not c!1053546)) b!5927275))

(assert (= (and b!5927282 (not res!2483865)) b!5927274))

(assert (= (and b!5927275 c!1053544) b!5927280))

(assert (= (and b!5927275 (not c!1053544)) b!5927281))

(assert (= (and b!5927280 (not res!2483867)) b!5927272))

(assert (= (or b!5927272 b!5927281) bm!470273))

(assert (= (or b!5927276 b!5927280) bm!470272))

(assert (=> bm!470272 m!6820470))

(declare-fun m!6820858 () Bool)

(assert (=> b!5927274 m!6820858))

(declare-fun m!6820860 () Bool)

(assert (=> bm!470273 m!6820860))

(declare-fun m!6820862 () Bool)

(assert (=> b!5927282 m!6820862))

(assert (=> b!5926613 d!1858397))

(declare-fun d!1858399 () Bool)

(assert (=> d!1858399 (= (nullable!5969 (regOne!32460 r!7292)) (nullableFct!1941 (regOne!32460 r!7292)))))

(declare-fun bs!1402627 () Bool)

(assert (= bs!1402627 d!1858399))

(declare-fun m!6820864 () Bool)

(assert (=> bs!1402627 m!6820864))

(assert (=> b!5926843 d!1858399))

(declare-fun d!1858401 () Bool)

(assert (=> d!1858401 (= (isEmpty!35959 (exprs!5858 (h!70547 zl!343))) (is-Nil!64098 (exprs!5858 (h!70547 zl!343))))))

(assert (=> b!5926547 d!1858401))

(declare-fun bs!1402628 () Bool)

(declare-fun d!1858403 () Bool)

(assert (= bs!1402628 (and d!1858403 d!1858295)))

(declare-fun lambda!323297 () Int)

(assert (=> bs!1402628 (= lambda!323297 lambda!323264)))

(declare-fun bs!1402629 () Bool)

(assert (= bs!1402629 (and d!1858403 d!1858247)))

(assert (=> bs!1402629 (= lambda!323297 lambda!323233)))

(declare-fun bs!1402630 () Bool)

(assert (= bs!1402630 (and d!1858403 d!1858277)))

(assert (=> bs!1402630 (= lambda!323297 lambda!323252)))

(declare-fun bs!1402631 () Bool)

(assert (= bs!1402631 (and d!1858403 d!1858383)))

(assert (=> bs!1402631 (= lambda!323297 lambda!323293)))

(declare-fun bs!1402632 () Bool)

(assert (= bs!1402632 (and d!1858403 d!1858389)))

(assert (=> bs!1402632 (= lambda!323297 lambda!323294)))

(declare-fun bs!1402633 () Bool)

(assert (= bs!1402633 (and d!1858403 d!1858241)))

(assert (=> bs!1402633 (= lambda!323297 lambda!323232)))

(declare-fun bs!1402634 () Bool)

(assert (= bs!1402634 (and d!1858403 d!1858293)))

(assert (=> bs!1402634 (= lambda!323297 lambda!323261)))

(declare-fun bs!1402635 () Bool)

(assert (= bs!1402635 (and d!1858403 d!1858237)))

(assert (=> bs!1402635 (= lambda!323297 lambda!323229)))

(assert (=> d!1858403 (= (inv!83183 (h!70547 (t!377618 zl!343))) (forall!15057 (exprs!5858 (h!70547 (t!377618 zl!343))) lambda!323297))))

(declare-fun bs!1402636 () Bool)

(assert (= bs!1402636 d!1858403))

(declare-fun m!6820866 () Bool)

(assert (=> bs!1402636 m!6820866))

(assert (=> b!5926916 d!1858403))

(declare-fun b!5927283 () Bool)

(declare-fun e!3628041 () Bool)

(declare-fun lt!2310465 () Bool)

(assert (=> b!5927283 (= e!3628041 (not lt!2310465))))

(declare-fun b!5927284 () Bool)

(declare-fun e!3628039 () Bool)

(assert (=> b!5927284 (= e!3628039 (= (head!12490 (_2!36256 (get!22074 lt!2310402))) (c!1053341 (regTwo!32460 r!7292))))))

(declare-fun bm!470274 () Bool)

(declare-fun call!470279 () Bool)

(assert (=> bm!470274 (= call!470279 (isEmpty!35963 (_2!36256 (get!22074 lt!2310402))))))

(declare-fun b!5927285 () Bool)

(declare-fun e!3628043 () Bool)

(assert (=> b!5927285 (= e!3628043 (not (= (head!12490 (_2!36256 (get!22074 lt!2310402))) (c!1053341 (regTwo!32460 r!7292)))))))

(declare-fun d!1858405 () Bool)

(declare-fun e!3628045 () Bool)

(assert (=> d!1858405 e!3628045))

(declare-fun c!1053550 () Bool)

(assert (=> d!1858405 (= c!1053550 (is-EmptyExpr!15974 (regTwo!32460 r!7292)))))

(declare-fun e!3628042 () Bool)

(assert (=> d!1858405 (= lt!2310465 e!3628042)))

(declare-fun c!1053548 () Bool)

(assert (=> d!1858405 (= c!1053548 (isEmpty!35963 (_2!36256 (get!22074 lt!2310402))))))

(assert (=> d!1858405 (validRegex!7710 (regTwo!32460 r!7292))))

(assert (=> d!1858405 (= (matchR!8157 (regTwo!32460 r!7292) (_2!36256 (get!22074 lt!2310402))) lt!2310465)))

(declare-fun b!5927286 () Bool)

(declare-fun res!2483870 () Bool)

(declare-fun e!3628040 () Bool)

(assert (=> b!5927286 (=> res!2483870 e!3628040)))

(assert (=> b!5927286 (= res!2483870 e!3628039)))

(declare-fun res!2483874 () Bool)

(assert (=> b!5927286 (=> (not res!2483874) (not e!3628039))))

(assert (=> b!5927286 (= res!2483874 lt!2310465)))

(declare-fun b!5927287 () Bool)

(declare-fun res!2483868 () Bool)

(assert (=> b!5927287 (=> res!2483868 e!3628040)))

(assert (=> b!5927287 (= res!2483868 (not (is-ElementMatch!15974 (regTwo!32460 r!7292))))))

(assert (=> b!5927287 (= e!3628041 e!3628040)))

(declare-fun b!5927288 () Bool)

(declare-fun res!2483872 () Bool)

(assert (=> b!5927288 (=> (not res!2483872) (not e!3628039))))

(assert (=> b!5927288 (= res!2483872 (not call!470279))))

(declare-fun b!5927289 () Bool)

(assert (=> b!5927289 (= e!3628042 (matchR!8157 (derivativeStep!4705 (regTwo!32460 r!7292) (head!12490 (_2!36256 (get!22074 lt!2310402)))) (tail!11575 (_2!36256 (get!22074 lt!2310402)))))))

(declare-fun b!5927290 () Bool)

(declare-fun res!2483869 () Bool)

(assert (=> b!5927290 (=> res!2483869 e!3628043)))

(assert (=> b!5927290 (= res!2483869 (not (isEmpty!35963 (tail!11575 (_2!36256 (get!22074 lt!2310402))))))))

(declare-fun b!5927291 () Bool)

(declare-fun e!3628044 () Bool)

(assert (=> b!5927291 (= e!3628040 e!3628044)))

(declare-fun res!2483875 () Bool)

(assert (=> b!5927291 (=> (not res!2483875) (not e!3628044))))

(assert (=> b!5927291 (= res!2483875 (not lt!2310465))))

(declare-fun b!5927292 () Bool)

(assert (=> b!5927292 (= e!3628042 (nullable!5969 (regTwo!32460 r!7292)))))

(declare-fun b!5927293 () Bool)

(assert (=> b!5927293 (= e!3628045 e!3628041)))

(declare-fun c!1053549 () Bool)

(assert (=> b!5927293 (= c!1053549 (is-EmptyLang!15974 (regTwo!32460 r!7292)))))

(declare-fun b!5927294 () Bool)

(assert (=> b!5927294 (= e!3628045 (= lt!2310465 call!470279))))

(declare-fun b!5927295 () Bool)

(assert (=> b!5927295 (= e!3628044 e!3628043)))

(declare-fun res!2483871 () Bool)

(assert (=> b!5927295 (=> res!2483871 e!3628043)))

(assert (=> b!5927295 (= res!2483871 call!470279)))

(declare-fun b!5927296 () Bool)

(declare-fun res!2483873 () Bool)

(assert (=> b!5927296 (=> (not res!2483873) (not e!3628039))))

(assert (=> b!5927296 (= res!2483873 (isEmpty!35963 (tail!11575 (_2!36256 (get!22074 lt!2310402)))))))

(assert (= (and d!1858405 c!1053548) b!5927292))

(assert (= (and d!1858405 (not c!1053548)) b!5927289))

(assert (= (and d!1858405 c!1053550) b!5927294))

(assert (= (and d!1858405 (not c!1053550)) b!5927293))

(assert (= (and b!5927293 c!1053549) b!5927283))

(assert (= (and b!5927293 (not c!1053549)) b!5927287))

(assert (= (and b!5927287 (not res!2483868)) b!5927286))

(assert (= (and b!5927286 res!2483874) b!5927288))

(assert (= (and b!5927288 res!2483872) b!5927296))

(assert (= (and b!5927296 res!2483873) b!5927284))

(assert (= (and b!5927286 (not res!2483870)) b!5927291))

(assert (= (and b!5927291 res!2483875) b!5927295))

(assert (= (and b!5927295 (not res!2483871)) b!5927290))

(assert (= (and b!5927290 (not res!2483869)) b!5927285))

(assert (= (or b!5927294 b!5927288 b!5927295) bm!470274))

(declare-fun m!6820868 () Bool)

(assert (=> b!5927290 m!6820868))

(assert (=> b!5927290 m!6820868))

(declare-fun m!6820870 () Bool)

(assert (=> b!5927290 m!6820870))

(declare-fun m!6820872 () Bool)

(assert (=> b!5927289 m!6820872))

(assert (=> b!5927289 m!6820872))

(declare-fun m!6820874 () Bool)

(assert (=> b!5927289 m!6820874))

(assert (=> b!5927289 m!6820868))

(assert (=> b!5927289 m!6820874))

(assert (=> b!5927289 m!6820868))

(declare-fun m!6820876 () Bool)

(assert (=> b!5927289 m!6820876))

(assert (=> b!5927285 m!6820872))

(assert (=> b!5927296 m!6820868))

(assert (=> b!5927296 m!6820868))

(assert (=> b!5927296 m!6820870))

(declare-fun m!6820878 () Bool)

(assert (=> b!5927292 m!6820878))

(declare-fun m!6820880 () Bool)

(assert (=> d!1858405 m!6820880))

(declare-fun m!6820882 () Bool)

(assert (=> d!1858405 m!6820882))

(assert (=> b!5927284 m!6820872))

(assert (=> bm!470274 m!6820880))

(assert (=> b!5926718 d!1858405))

(assert (=> b!5926718 d!1858395))

(declare-fun bs!1402637 () Bool)

(declare-fun d!1858407 () Bool)

(assert (= bs!1402637 (and d!1858407 d!1858295)))

(declare-fun lambda!323298 () Int)

(assert (=> bs!1402637 (= lambda!323298 lambda!323264)))

(declare-fun bs!1402638 () Bool)

(assert (= bs!1402638 (and d!1858407 d!1858247)))

(assert (=> bs!1402638 (= lambda!323298 lambda!323233)))

(declare-fun bs!1402639 () Bool)

(assert (= bs!1402639 (and d!1858407 d!1858277)))

(assert (=> bs!1402639 (= lambda!323298 lambda!323252)))

(declare-fun bs!1402640 () Bool)

(assert (= bs!1402640 (and d!1858407 d!1858403)))

(assert (=> bs!1402640 (= lambda!323298 lambda!323297)))

(declare-fun bs!1402641 () Bool)

(assert (= bs!1402641 (and d!1858407 d!1858383)))

(assert (=> bs!1402641 (= lambda!323298 lambda!323293)))

(declare-fun bs!1402642 () Bool)

(assert (= bs!1402642 (and d!1858407 d!1858389)))

(assert (=> bs!1402642 (= lambda!323298 lambda!323294)))

(declare-fun bs!1402643 () Bool)

(assert (= bs!1402643 (and d!1858407 d!1858241)))

(assert (=> bs!1402643 (= lambda!323298 lambda!323232)))

(declare-fun bs!1402644 () Bool)

(assert (= bs!1402644 (and d!1858407 d!1858293)))

(assert (=> bs!1402644 (= lambda!323298 lambda!323261)))

(declare-fun bs!1402645 () Bool)

(assert (= bs!1402645 (and d!1858407 d!1858237)))

(assert (=> bs!1402645 (= lambda!323298 lambda!323229)))

(declare-fun b!5927297 () Bool)

(declare-fun e!3628048 () Bool)

(declare-fun lt!2310466 () Regex!15974)

(assert (=> b!5927297 (= e!3628048 (isEmptyExpr!1402 lt!2310466))))

(declare-fun b!5927298 () Bool)

(declare-fun e!3628046 () Bool)

(assert (=> b!5927298 (= e!3628046 (isConcat!925 lt!2310466))))

(declare-fun b!5927299 () Bool)

(declare-fun e!3628049 () Regex!15974)

(assert (=> b!5927299 (= e!3628049 (Concat!24819 (h!70546 (t!377617 (exprs!5858 (h!70547 zl!343)))) (generalisedConcat!1571 (t!377617 (t!377617 (exprs!5858 (h!70547 zl!343)))))))))

(declare-fun b!5927300 () Bool)

(declare-fun e!3628051 () Bool)

(assert (=> b!5927300 (= e!3628051 (isEmpty!35959 (t!377617 (t!377617 (exprs!5858 (h!70547 zl!343))))))))

(declare-fun b!5927301 () Bool)

(declare-fun e!3628050 () Bool)

(assert (=> b!5927301 (= e!3628050 e!3628048)))

(declare-fun c!1053551 () Bool)

(assert (=> b!5927301 (= c!1053551 (isEmpty!35959 (t!377617 (exprs!5858 (h!70547 zl!343)))))))

(declare-fun b!5927302 () Bool)

(declare-fun e!3628047 () Regex!15974)

(assert (=> b!5927302 (= e!3628047 e!3628049)))

(declare-fun c!1053553 () Bool)

(assert (=> b!5927302 (= c!1053553 (is-Cons!64098 (t!377617 (exprs!5858 (h!70547 zl!343)))))))

(assert (=> d!1858407 e!3628050))

(declare-fun res!2483876 () Bool)

(assert (=> d!1858407 (=> (not res!2483876) (not e!3628050))))

(assert (=> d!1858407 (= res!2483876 (validRegex!7710 lt!2310466))))

(assert (=> d!1858407 (= lt!2310466 e!3628047)))

(declare-fun c!1053552 () Bool)

(assert (=> d!1858407 (= c!1053552 e!3628051)))

(declare-fun res!2483877 () Bool)

(assert (=> d!1858407 (=> (not res!2483877) (not e!3628051))))

(assert (=> d!1858407 (= res!2483877 (is-Cons!64098 (t!377617 (exprs!5858 (h!70547 zl!343)))))))

(assert (=> d!1858407 (forall!15057 (t!377617 (exprs!5858 (h!70547 zl!343))) lambda!323298)))

(assert (=> d!1858407 (= (generalisedConcat!1571 (t!377617 (exprs!5858 (h!70547 zl!343)))) lt!2310466)))

(declare-fun b!5927303 () Bool)

(assert (=> b!5927303 (= e!3628047 (h!70546 (t!377617 (exprs!5858 (h!70547 zl!343)))))))

(declare-fun b!5927304 () Bool)

(assert (=> b!5927304 (= e!3628049 EmptyExpr!15974)))

(declare-fun b!5927305 () Bool)

(assert (=> b!5927305 (= e!3628046 (= lt!2310466 (head!12489 (t!377617 (exprs!5858 (h!70547 zl!343))))))))

(declare-fun b!5927306 () Bool)

(assert (=> b!5927306 (= e!3628048 e!3628046)))

(declare-fun c!1053554 () Bool)

(assert (=> b!5927306 (= c!1053554 (isEmpty!35959 (tail!11574 (t!377617 (exprs!5858 (h!70547 zl!343))))))))

(assert (= (and d!1858407 res!2483877) b!5927300))

(assert (= (and d!1858407 c!1053552) b!5927303))

(assert (= (and d!1858407 (not c!1053552)) b!5927302))

(assert (= (and b!5927302 c!1053553) b!5927299))

(assert (= (and b!5927302 (not c!1053553)) b!5927304))

(assert (= (and d!1858407 res!2483876) b!5927301))

(assert (= (and b!5927301 c!1053551) b!5927297))

(assert (= (and b!5927301 (not c!1053551)) b!5927306))

(assert (= (and b!5927306 c!1053554) b!5927305))

(assert (= (and b!5927306 (not c!1053554)) b!5927298))

(declare-fun m!6820884 () Bool)

(assert (=> b!5927298 m!6820884))

(declare-fun m!6820886 () Bool)

(assert (=> b!5927299 m!6820886))

(declare-fun m!6820888 () Bool)

(assert (=> b!5927297 m!6820888))

(assert (=> b!5927301 m!6820376))

(declare-fun m!6820890 () Bool)

(assert (=> b!5927305 m!6820890))

(declare-fun m!6820892 () Bool)

(assert (=> b!5927300 m!6820892))

(declare-fun m!6820894 () Bool)

(assert (=> d!1858407 m!6820894))

(declare-fun m!6820896 () Bool)

(assert (=> d!1858407 m!6820896))

(declare-fun m!6820898 () Bool)

(assert (=> b!5927306 m!6820898))

(assert (=> b!5927306 m!6820898))

(declare-fun m!6820900 () Bool)

(assert (=> b!5927306 m!6820900))

(assert (=> b!5926545 d!1858407))

(assert (=> d!1858259 d!1858359))

(declare-fun b!5927307 () Bool)

(declare-fun e!3628054 () Bool)

(declare-fun lt!2310467 () Bool)

(assert (=> b!5927307 (= e!3628054 (not lt!2310467))))

(declare-fun b!5927308 () Bool)

(declare-fun e!3628052 () Bool)

(assert (=> b!5927308 (= e!3628052 (= (head!12490 Nil!64097) (c!1053341 (regOne!32460 r!7292))))))

(declare-fun bm!470275 () Bool)

(declare-fun call!470280 () Bool)

(assert (=> bm!470275 (= call!470280 (isEmpty!35963 Nil!64097))))

(declare-fun b!5927309 () Bool)

(declare-fun e!3628056 () Bool)

(assert (=> b!5927309 (= e!3628056 (not (= (head!12490 Nil!64097) (c!1053341 (regOne!32460 r!7292)))))))

(declare-fun d!1858409 () Bool)

(declare-fun e!3628058 () Bool)

(assert (=> d!1858409 e!3628058))

(declare-fun c!1053557 () Bool)

(assert (=> d!1858409 (= c!1053557 (is-EmptyExpr!15974 (regOne!32460 r!7292)))))

(declare-fun e!3628055 () Bool)

(assert (=> d!1858409 (= lt!2310467 e!3628055)))

(declare-fun c!1053555 () Bool)

(assert (=> d!1858409 (= c!1053555 (isEmpty!35963 Nil!64097))))

(assert (=> d!1858409 (validRegex!7710 (regOne!32460 r!7292))))

(assert (=> d!1858409 (= (matchR!8157 (regOne!32460 r!7292) Nil!64097) lt!2310467)))

(declare-fun b!5927310 () Bool)

(declare-fun res!2483880 () Bool)

(declare-fun e!3628053 () Bool)

(assert (=> b!5927310 (=> res!2483880 e!3628053)))

(assert (=> b!5927310 (= res!2483880 e!3628052)))

(declare-fun res!2483884 () Bool)

(assert (=> b!5927310 (=> (not res!2483884) (not e!3628052))))

(assert (=> b!5927310 (= res!2483884 lt!2310467)))

(declare-fun b!5927311 () Bool)

(declare-fun res!2483878 () Bool)

(assert (=> b!5927311 (=> res!2483878 e!3628053)))

(assert (=> b!5927311 (= res!2483878 (not (is-ElementMatch!15974 (regOne!32460 r!7292))))))

(assert (=> b!5927311 (= e!3628054 e!3628053)))

(declare-fun b!5927312 () Bool)

(declare-fun res!2483882 () Bool)

(assert (=> b!5927312 (=> (not res!2483882) (not e!3628052))))

(assert (=> b!5927312 (= res!2483882 (not call!470280))))

(declare-fun b!5927313 () Bool)

(assert (=> b!5927313 (= e!3628055 (matchR!8157 (derivativeStep!4705 (regOne!32460 r!7292) (head!12490 Nil!64097)) (tail!11575 Nil!64097)))))

(declare-fun b!5927314 () Bool)

(declare-fun res!2483879 () Bool)

(assert (=> b!5927314 (=> res!2483879 e!3628056)))

(assert (=> b!5927314 (= res!2483879 (not (isEmpty!35963 (tail!11575 Nil!64097))))))

(declare-fun b!5927315 () Bool)

(declare-fun e!3628057 () Bool)

(assert (=> b!5927315 (= e!3628053 e!3628057)))

(declare-fun res!2483885 () Bool)

(assert (=> b!5927315 (=> (not res!2483885) (not e!3628057))))

(assert (=> b!5927315 (= res!2483885 (not lt!2310467))))

(declare-fun b!5927316 () Bool)

(assert (=> b!5927316 (= e!3628055 (nullable!5969 (regOne!32460 r!7292)))))

(declare-fun b!5927317 () Bool)

(assert (=> b!5927317 (= e!3628058 e!3628054)))

(declare-fun c!1053556 () Bool)

(assert (=> b!5927317 (= c!1053556 (is-EmptyLang!15974 (regOne!32460 r!7292)))))

(declare-fun b!5927318 () Bool)

(assert (=> b!5927318 (= e!3628058 (= lt!2310467 call!470280))))

(declare-fun b!5927319 () Bool)

(assert (=> b!5927319 (= e!3628057 e!3628056)))

(declare-fun res!2483881 () Bool)

(assert (=> b!5927319 (=> res!2483881 e!3628056)))

(assert (=> b!5927319 (= res!2483881 call!470280)))

(declare-fun b!5927320 () Bool)

(declare-fun res!2483883 () Bool)

(assert (=> b!5927320 (=> (not res!2483883) (not e!3628052))))

(assert (=> b!5927320 (= res!2483883 (isEmpty!35963 (tail!11575 Nil!64097)))))

(assert (= (and d!1858409 c!1053555) b!5927316))

(assert (= (and d!1858409 (not c!1053555)) b!5927313))

(assert (= (and d!1858409 c!1053557) b!5927318))

(assert (= (and d!1858409 (not c!1053557)) b!5927317))

(assert (= (and b!5927317 c!1053556) b!5927307))

(assert (= (and b!5927317 (not c!1053556)) b!5927311))

(assert (= (and b!5927311 (not res!2483878)) b!5927310))

(assert (= (and b!5927310 res!2483884) b!5927312))

(assert (= (and b!5927312 res!2483882) b!5927320))

(assert (= (and b!5927320 res!2483883) b!5927308))

(assert (= (and b!5927310 (not res!2483880)) b!5927315))

(assert (= (and b!5927315 res!2483885) b!5927319))

(assert (= (and b!5927319 (not res!2483881)) b!5927314))

(assert (= (and b!5927314 (not res!2483879)) b!5927309))

(assert (= (or b!5927318 b!5927312 b!5927319) bm!470275))

(declare-fun m!6820902 () Bool)

(assert (=> b!5927314 m!6820902))

(assert (=> b!5927314 m!6820902))

(declare-fun m!6820904 () Bool)

(assert (=> b!5927314 m!6820904))

(declare-fun m!6820906 () Bool)

(assert (=> b!5927313 m!6820906))

(assert (=> b!5927313 m!6820906))

(declare-fun m!6820908 () Bool)

(assert (=> b!5927313 m!6820908))

(assert (=> b!5927313 m!6820902))

(assert (=> b!5927313 m!6820908))

(assert (=> b!5927313 m!6820902))

(declare-fun m!6820910 () Bool)

(assert (=> b!5927313 m!6820910))

(assert (=> b!5927309 m!6820906))

(assert (=> b!5927320 m!6820902))

(assert (=> b!5927320 m!6820902))

(assert (=> b!5927320 m!6820904))

(assert (=> b!5927316 m!6820602))

(declare-fun m!6820912 () Bool)

(assert (=> d!1858409 m!6820912))

(assert (=> d!1858409 m!6820512))

(assert (=> b!5927308 m!6820906))

(assert (=> bm!470275 m!6820912))

(assert (=> d!1858259 d!1858409))

(declare-fun call!470283 () Bool)

(declare-fun c!1053559 () Bool)

(declare-fun c!1053558 () Bool)

(declare-fun bm!470276 () Bool)

(assert (=> bm!470276 (= call!470283 (validRegex!7710 (ite c!1053558 (reg!16303 (regOne!32460 r!7292)) (ite c!1053559 (regTwo!32461 (regOne!32460 r!7292)) (regTwo!32460 (regOne!32460 r!7292))))))))

(declare-fun b!5927321 () Bool)

(declare-fun res!2483887 () Bool)

(declare-fun e!3628065 () Bool)

(assert (=> b!5927321 (=> res!2483887 e!3628065)))

(assert (=> b!5927321 (= res!2483887 (not (is-Concat!24819 (regOne!32460 r!7292))))))

(declare-fun e!3628060 () Bool)

(assert (=> b!5927321 (= e!3628060 e!3628065)))

(declare-fun b!5927322 () Bool)

(declare-fun res!2483886 () Bool)

(declare-fun e!3628061 () Bool)

(assert (=> b!5927322 (=> (not res!2483886) (not e!3628061))))

(declare-fun call!470282 () Bool)

(assert (=> b!5927322 (= res!2483886 call!470282)))

(assert (=> b!5927322 (= e!3628060 e!3628061)))

(declare-fun b!5927323 () Bool)

(declare-fun e!3628062 () Bool)

(assert (=> b!5927323 (= e!3628062 e!3628060)))

(assert (=> b!5927323 (= c!1053559 (is-Union!15974 (regOne!32460 r!7292)))))

(declare-fun b!5927324 () Bool)

(declare-fun e!3628064 () Bool)

(assert (=> b!5927324 (= e!3628064 e!3628062)))

(assert (=> b!5927324 (= c!1053558 (is-Star!15974 (regOne!32460 r!7292)))))

(declare-fun b!5927325 () Bool)

(declare-fun call!470281 () Bool)

(assert (=> b!5927325 (= e!3628061 call!470281)))

(declare-fun d!1858411 () Bool)

(declare-fun res!2483890 () Bool)

(assert (=> d!1858411 (=> res!2483890 e!3628064)))

(assert (=> d!1858411 (= res!2483890 (is-ElementMatch!15974 (regOne!32460 r!7292)))))

(assert (=> d!1858411 (= (validRegex!7710 (regOne!32460 r!7292)) e!3628064)))

(declare-fun bm!470277 () Bool)

(assert (=> bm!470277 (= call!470282 (validRegex!7710 (ite c!1053559 (regOne!32461 (regOne!32460 r!7292)) (regOne!32460 (regOne!32460 r!7292)))))))

(declare-fun b!5927326 () Bool)

(declare-fun e!3628059 () Bool)

(assert (=> b!5927326 (= e!3628065 e!3628059)))

(declare-fun res!2483888 () Bool)

(assert (=> b!5927326 (=> (not res!2483888) (not e!3628059))))

(assert (=> b!5927326 (= res!2483888 call!470282)))

(declare-fun bm!470278 () Bool)

(assert (=> bm!470278 (= call!470281 call!470283)))

(declare-fun b!5927327 () Bool)

(declare-fun e!3628063 () Bool)

(assert (=> b!5927327 (= e!3628063 call!470283)))

(declare-fun b!5927328 () Bool)

(assert (=> b!5927328 (= e!3628062 e!3628063)))

(declare-fun res!2483889 () Bool)

(assert (=> b!5927328 (= res!2483889 (not (nullable!5969 (reg!16303 (regOne!32460 r!7292)))))))

(assert (=> b!5927328 (=> (not res!2483889) (not e!3628063))))

(declare-fun b!5927329 () Bool)

(assert (=> b!5927329 (= e!3628059 call!470281)))

(assert (= (and d!1858411 (not res!2483890)) b!5927324))

(assert (= (and b!5927324 c!1053558) b!5927328))

(assert (= (and b!5927324 (not c!1053558)) b!5927323))

(assert (= (and b!5927328 res!2483889) b!5927327))

(assert (= (and b!5927323 c!1053559) b!5927322))

(assert (= (and b!5927323 (not c!1053559)) b!5927321))

(assert (= (and b!5927322 res!2483886) b!5927325))

(assert (= (and b!5927321 (not res!2483887)) b!5927326))

(assert (= (and b!5927326 res!2483888) b!5927329))

(assert (= (or b!5927325 b!5927329) bm!470278))

(assert (= (or b!5927322 b!5927326) bm!470277))

(assert (= (or b!5927327 bm!470278) bm!470276))

(declare-fun m!6820914 () Bool)

(assert (=> bm!470276 m!6820914))

(declare-fun m!6820916 () Bool)

(assert (=> bm!470277 m!6820916))

(declare-fun m!6820918 () Bool)

(assert (=> b!5927328 m!6820918))

(assert (=> d!1858259 d!1858411))

(declare-fun b!5927330 () Bool)

(declare-fun e!3628070 () (Set Context!10716))

(assert (=> b!5927330 (= e!3628070 (set.insert (ite c!1053448 (Context!10717 Nil!64098) (Context!10717 call!470237)) (as set.empty (Set Context!10716))))))

(declare-fun b!5927332 () Bool)

(declare-fun e!3628071 () (Set Context!10716))

(assert (=> b!5927332 (= e!3628070 e!3628071)))

(declare-fun c!1053561 () Bool)

(assert (=> b!5927332 (= c!1053561 (is-Union!15974 (ite c!1053448 (regOne!32461 r!7292) (regOne!32460 r!7292))))))

(declare-fun b!5927333 () Bool)

(declare-fun e!3628066 () (Set Context!10716))

(declare-fun e!3628069 () (Set Context!10716))

(assert (=> b!5927333 (= e!3628066 e!3628069)))

(declare-fun c!1053562 () Bool)

(assert (=> b!5927333 (= c!1053562 (is-Concat!24819 (ite c!1053448 (regOne!32461 r!7292) (regOne!32460 r!7292))))))

(declare-fun b!5927334 () Bool)

(declare-fun call!470289 () (Set Context!10716))

(assert (=> b!5927334 (= e!3628069 call!470289)))

(declare-fun b!5927335 () Bool)

(declare-fun call!470288 () (Set Context!10716))

(declare-fun call!470286 () (Set Context!10716))

(assert (=> b!5927335 (= e!3628071 (set.union call!470288 call!470286))))

(declare-fun bm!470279 () Bool)

(declare-fun call!470284 () List!64222)

(declare-fun call!470287 () List!64222)

(assert (=> bm!470279 (= call!470284 call!470287)))

(declare-fun b!5927336 () Bool)

(declare-fun c!1053563 () Bool)

(assert (=> b!5927336 (= c!1053563 (is-Star!15974 (ite c!1053448 (regOne!32461 r!7292) (regOne!32460 r!7292))))))

(declare-fun e!3628067 () (Set Context!10716))

(assert (=> b!5927336 (= e!3628069 e!3628067)))

(declare-fun b!5927337 () Bool)

(assert (=> b!5927337 (= e!3628067 (as set.empty (Set Context!10716)))))

(declare-fun bm!470280 () Bool)

(assert (=> bm!470280 (= call!470288 (derivationStepZipperDown!1224 (ite c!1053561 (regOne!32461 (ite c!1053448 (regOne!32461 r!7292) (regOne!32460 r!7292))) (regOne!32460 (ite c!1053448 (regOne!32461 r!7292) (regOne!32460 r!7292)))) (ite c!1053561 (ite c!1053448 (Context!10717 Nil!64098) (Context!10717 call!470237)) (Context!10717 call!470287)) (h!70545 s!2326)))))

(declare-fun c!1053564 () Bool)

(declare-fun bm!470281 () Bool)

(assert (=> bm!470281 (= call!470287 ($colon$colon!1861 (exprs!5858 (ite c!1053448 (Context!10717 Nil!64098) (Context!10717 call!470237))) (ite (or c!1053564 c!1053562) (regTwo!32460 (ite c!1053448 (regOne!32461 r!7292) (regOne!32460 r!7292))) (ite c!1053448 (regOne!32461 r!7292) (regOne!32460 r!7292)))))))

(declare-fun b!5927338 () Bool)

(declare-fun e!3628068 () Bool)

(assert (=> b!5927338 (= e!3628068 (nullable!5969 (regOne!32460 (ite c!1053448 (regOne!32461 r!7292) (regOne!32460 r!7292)))))))

(declare-fun bm!470282 () Bool)

(declare-fun call!470285 () (Set Context!10716))

(assert (=> bm!470282 (= call!470289 call!470285)))

(declare-fun c!1053560 () Bool)

(declare-fun d!1858413 () Bool)

(assert (=> d!1858413 (= c!1053560 (and (is-ElementMatch!15974 (ite c!1053448 (regOne!32461 r!7292) (regOne!32460 r!7292))) (= (c!1053341 (ite c!1053448 (regOne!32461 r!7292) (regOne!32460 r!7292))) (h!70545 s!2326))))))

(assert (=> d!1858413 (= (derivationStepZipperDown!1224 (ite c!1053448 (regOne!32461 r!7292) (regOne!32460 r!7292)) (ite c!1053448 (Context!10717 Nil!64098) (Context!10717 call!470237)) (h!70545 s!2326)) e!3628070)))

(declare-fun b!5927331 () Bool)

(assert (=> b!5927331 (= c!1053564 e!3628068)))

(declare-fun res!2483891 () Bool)

(assert (=> b!5927331 (=> (not res!2483891) (not e!3628068))))

(assert (=> b!5927331 (= res!2483891 (is-Concat!24819 (ite c!1053448 (regOne!32461 r!7292) (regOne!32460 r!7292))))))

(assert (=> b!5927331 (= e!3628071 e!3628066)))

(declare-fun b!5927339 () Bool)

(assert (=> b!5927339 (= e!3628067 call!470289)))

(declare-fun bm!470283 () Bool)

(assert (=> bm!470283 (= call!470285 call!470286)))

(declare-fun b!5927340 () Bool)

(assert (=> b!5927340 (= e!3628066 (set.union call!470288 call!470285))))

(declare-fun bm!470284 () Bool)

(assert (=> bm!470284 (= call!470286 (derivationStepZipperDown!1224 (ite c!1053561 (regTwo!32461 (ite c!1053448 (regOne!32461 r!7292) (regOne!32460 r!7292))) (ite c!1053564 (regTwo!32460 (ite c!1053448 (regOne!32461 r!7292) (regOne!32460 r!7292))) (ite c!1053562 (regOne!32460 (ite c!1053448 (regOne!32461 r!7292) (regOne!32460 r!7292))) (reg!16303 (ite c!1053448 (regOne!32461 r!7292) (regOne!32460 r!7292)))))) (ite (or c!1053561 c!1053564) (ite c!1053448 (Context!10717 Nil!64098) (Context!10717 call!470237)) (Context!10717 call!470284)) (h!70545 s!2326)))))

(assert (= (and d!1858413 c!1053560) b!5927330))

(assert (= (and d!1858413 (not c!1053560)) b!5927332))

(assert (= (and b!5927332 c!1053561) b!5927335))

(assert (= (and b!5927332 (not c!1053561)) b!5927331))

(assert (= (and b!5927331 res!2483891) b!5927338))

(assert (= (and b!5927331 c!1053564) b!5927340))

(assert (= (and b!5927331 (not c!1053564)) b!5927333))

(assert (= (and b!5927333 c!1053562) b!5927334))

(assert (= (and b!5927333 (not c!1053562)) b!5927336))

(assert (= (and b!5927336 c!1053563) b!5927339))

(assert (= (and b!5927336 (not c!1053563)) b!5927337))

(assert (= (or b!5927334 b!5927339) bm!470279))

(assert (= (or b!5927334 b!5927339) bm!470282))

(assert (= (or b!5927340 bm!470279) bm!470281))

(assert (= (or b!5927340 bm!470282) bm!470283))

(assert (= (or b!5927335 bm!470283) bm!470284))

(assert (= (or b!5927335 b!5927340) bm!470280))

(declare-fun m!6820920 () Bool)

(assert (=> b!5927330 m!6820920))

(declare-fun m!6820922 () Bool)

(assert (=> bm!470284 m!6820922))

(declare-fun m!6820924 () Bool)

(assert (=> bm!470280 m!6820924))

(declare-fun m!6820926 () Bool)

(assert (=> b!5927338 m!6820926))

(declare-fun m!6820928 () Bool)

(assert (=> bm!470281 m!6820928))

(assert (=> bm!470230 d!1858413))

(declare-fun d!1858415 () Bool)

(assert (=> d!1858415 (= (isEmpty!35959 (t!377617 (unfocusZipperList!1395 zl!343))) (is-Nil!64098 (t!377617 (unfocusZipperList!1395 zl!343))))))

(assert (=> b!5926888 d!1858415))

(assert (=> d!1858265 d!1858259))

(assert (=> d!1858265 d!1858411))

(declare-fun bs!1402646 () Bool)

(declare-fun d!1858417 () Bool)

(assert (= bs!1402646 (and d!1858417 b!5926612)))

(declare-fun lambda!323301 () Int)

(assert (=> bs!1402646 (not (= lambda!323301 lambda!323239))))

(declare-fun bs!1402647 () Bool)

(assert (= bs!1402647 (and d!1858417 b!5927272)))

(assert (=> bs!1402647 (not (= lambda!323301 lambda!323295))))

(declare-fun bs!1402648 () Bool)

(assert (= bs!1402648 (and d!1858417 b!5927216)))

(assert (=> bs!1402648 (not (= lambda!323301 lambda!323292))))

(declare-fun bs!1402649 () Bool)

(assert (= bs!1402649 (and d!1858417 b!5926603)))

(assert (=> bs!1402649 (not (= lambda!323301 lambda!323238))))

(declare-fun bs!1402650 () Bool)

(assert (= bs!1402650 (and d!1858417 b!5927281)))

(assert (=> bs!1402650 (not (= lambda!323301 lambda!323296))))

(declare-fun bs!1402651 () Bool)

(assert (= bs!1402651 (and d!1858417 b!5926417)))

(assert (=> bs!1402651 (= lambda!323301 lambda!323213)))

(declare-fun bs!1402652 () Bool)

(assert (= bs!1402652 (and d!1858417 d!1858269)))

(assert (=> bs!1402652 (not (= lambda!323301 lambda!323250))))

(assert (=> bs!1402651 (not (= lambda!323301 lambda!323214))))

(declare-fun bs!1402653 () Bool)

(assert (= bs!1402653 (and d!1858417 d!1858265)))

(assert (=> bs!1402653 (= lambda!323301 lambda!323242)))

(declare-fun bs!1402654 () Bool)

(assert (= bs!1402654 (and d!1858417 b!5927207)))

(assert (=> bs!1402654 (not (= lambda!323301 lambda!323291))))

(assert (=> bs!1402652 (= lambda!323301 lambda!323249)))

(assert (=> d!1858417 true))

(assert (=> d!1858417 true))

(assert (=> d!1858417 true))

(assert (=> d!1858417 (= (isDefined!12568 (findConcatSeparation!2279 (regOne!32460 r!7292) (regTwo!32460 r!7292) Nil!64097 s!2326 s!2326)) (Exists!3044 lambda!323301))))

(assert (=> d!1858417 true))

(declare-fun _$89!1975 () Unit!157219)

(assert (=> d!1858417 (= (choose!44679 (regOne!32460 r!7292) (regTwo!32460 r!7292) s!2326) _$89!1975)))

(declare-fun bs!1402655 () Bool)

(assert (= bs!1402655 d!1858417))

(assert (=> bs!1402655 m!6820336))

(assert (=> bs!1402655 m!6820336))

(assert (=> bs!1402655 m!6820338))

(declare-fun m!6820930 () Bool)

(assert (=> bs!1402655 m!6820930))

(assert (=> d!1858265 d!1858417))

(declare-fun d!1858419 () Bool)

(assert (=> d!1858419 (= (Exists!3044 lambda!323242) (choose!44678 lambda!323242))))

(declare-fun bs!1402656 () Bool)

(assert (= bs!1402656 d!1858419))

(declare-fun m!6820932 () Bool)

(assert (=> bs!1402656 m!6820932))

(assert (=> d!1858265 d!1858419))

(assert (=> d!1858265 d!1858271))

(assert (=> d!1858253 d!1858381))

(assert (=> d!1858253 d!1858273))

(declare-fun d!1858421 () Bool)

(declare-fun res!2483896 () Bool)

(declare-fun e!3628074 () Bool)

(assert (=> d!1858421 (=> res!2483896 e!3628074)))

(assert (=> d!1858421 (= res!2483896 (is-Nil!64098 lt!2310430))))

(assert (=> d!1858421 (= (forall!15057 lt!2310430 lambda!323264) e!3628074)))

(declare-fun b!5927345 () Bool)

(declare-fun e!3628075 () Bool)

(assert (=> b!5927345 (= e!3628074 e!3628075)))

(declare-fun res!2483897 () Bool)

(assert (=> b!5927345 (=> (not res!2483897) (not e!3628075))))

(assert (=> b!5927345 (= res!2483897 (dynLambda!25065 lambda!323264 (h!70546 lt!2310430)))))

(declare-fun b!5927346 () Bool)

(assert (=> b!5927346 (= e!3628075 (forall!15057 (t!377617 lt!2310430) lambda!323264))))

(assert (= (and d!1858421 (not res!2483896)) b!5927345))

(assert (= (and b!5927345 res!2483897) b!5927346))

(declare-fun b_lambda!222607 () Bool)

(assert (=> (not b_lambda!222607) (not b!5927345)))

(declare-fun m!6820934 () Bool)

(assert (=> b!5927345 m!6820934))

(declare-fun m!6820936 () Bool)

(assert (=> b!5927346 m!6820936))

(assert (=> d!1858295 d!1858421))

(assert (=> b!5926903 d!1858237))

(declare-fun bs!1402657 () Bool)

(declare-fun d!1858423 () Bool)

(assert (= bs!1402657 (and d!1858423 d!1858295)))

(declare-fun lambda!323302 () Int)

(assert (=> bs!1402657 (= lambda!323302 lambda!323264)))

(declare-fun bs!1402658 () Bool)

(assert (= bs!1402658 (and d!1858423 d!1858247)))

(assert (=> bs!1402658 (= lambda!323302 lambda!323233)))

(declare-fun bs!1402659 () Bool)

(assert (= bs!1402659 (and d!1858423 d!1858277)))

(assert (=> bs!1402659 (= lambda!323302 lambda!323252)))

(declare-fun bs!1402660 () Bool)

(assert (= bs!1402660 (and d!1858423 d!1858403)))

(assert (=> bs!1402660 (= lambda!323302 lambda!323297)))

(declare-fun bs!1402661 () Bool)

(assert (= bs!1402661 (and d!1858423 d!1858407)))

(assert (=> bs!1402661 (= lambda!323302 lambda!323298)))

(declare-fun bs!1402662 () Bool)

(assert (= bs!1402662 (and d!1858423 d!1858383)))

(assert (=> bs!1402662 (= lambda!323302 lambda!323293)))

(declare-fun bs!1402663 () Bool)

(assert (= bs!1402663 (and d!1858423 d!1858389)))

(assert (=> bs!1402663 (= lambda!323302 lambda!323294)))

(declare-fun bs!1402664 () Bool)

(assert (= bs!1402664 (and d!1858423 d!1858241)))

(assert (=> bs!1402664 (= lambda!323302 lambda!323232)))

(declare-fun bs!1402665 () Bool)

(assert (= bs!1402665 (and d!1858423 d!1858293)))

(assert (=> bs!1402665 (= lambda!323302 lambda!323261)))

(declare-fun bs!1402666 () Bool)

(assert (= bs!1402666 (and d!1858423 d!1858237)))

(assert (=> bs!1402666 (= lambda!323302 lambda!323229)))

(declare-fun lt!2310468 () List!64222)

(assert (=> d!1858423 (forall!15057 lt!2310468 lambda!323302)))

(declare-fun e!3628076 () List!64222)

(assert (=> d!1858423 (= lt!2310468 e!3628076)))

(declare-fun c!1053565 () Bool)

(assert (=> d!1858423 (= c!1053565 (is-Cons!64099 (t!377618 zl!343)))))

(assert (=> d!1858423 (= (unfocusZipperList!1395 (t!377618 zl!343)) lt!2310468)))

(declare-fun b!5927347 () Bool)

(assert (=> b!5927347 (= e!3628076 (Cons!64098 (generalisedConcat!1571 (exprs!5858 (h!70547 (t!377618 zl!343)))) (unfocusZipperList!1395 (t!377618 (t!377618 zl!343)))))))

(declare-fun b!5927348 () Bool)

(assert (=> b!5927348 (= e!3628076 Nil!64098)))

(assert (= (and d!1858423 c!1053565) b!5927347))

(assert (= (and d!1858423 (not c!1053565)) b!5927348))

(declare-fun m!6820938 () Bool)

(assert (=> d!1858423 m!6820938))

(declare-fun m!6820940 () Bool)

(assert (=> b!5927347 m!6820940))

(declare-fun m!6820942 () Bool)

(assert (=> b!5927347 m!6820942))

(assert (=> b!5926903 d!1858423))

(declare-fun b!5927349 () Bool)

(declare-fun e!3628079 () Bool)

(declare-fun lt!2310469 () Bool)

(assert (=> b!5927349 (= e!3628079 (not lt!2310469))))

(declare-fun b!5927350 () Bool)

(declare-fun e!3628077 () Bool)

(assert (=> b!5927350 (= e!3628077 (= (head!12490 s!2326) (c!1053341 (regTwo!32460 r!7292))))))

(declare-fun bm!470285 () Bool)

(declare-fun call!470290 () Bool)

(assert (=> bm!470285 (= call!470290 (isEmpty!35963 s!2326))))

(declare-fun b!5927351 () Bool)

(declare-fun e!3628081 () Bool)

(assert (=> b!5927351 (= e!3628081 (not (= (head!12490 s!2326) (c!1053341 (regTwo!32460 r!7292)))))))

(declare-fun d!1858425 () Bool)

(declare-fun e!3628083 () Bool)

(assert (=> d!1858425 e!3628083))

(declare-fun c!1053568 () Bool)

(assert (=> d!1858425 (= c!1053568 (is-EmptyExpr!15974 (regTwo!32460 r!7292)))))

(declare-fun e!3628080 () Bool)

(assert (=> d!1858425 (= lt!2310469 e!3628080)))

(declare-fun c!1053566 () Bool)

(assert (=> d!1858425 (= c!1053566 (isEmpty!35963 s!2326))))

(assert (=> d!1858425 (validRegex!7710 (regTwo!32460 r!7292))))

(assert (=> d!1858425 (= (matchR!8157 (regTwo!32460 r!7292) s!2326) lt!2310469)))

(declare-fun b!5927352 () Bool)

(declare-fun res!2483900 () Bool)

(declare-fun e!3628078 () Bool)

(assert (=> b!5927352 (=> res!2483900 e!3628078)))

(assert (=> b!5927352 (= res!2483900 e!3628077)))

(declare-fun res!2483904 () Bool)

(assert (=> b!5927352 (=> (not res!2483904) (not e!3628077))))

(assert (=> b!5927352 (= res!2483904 lt!2310469)))

(declare-fun b!5927353 () Bool)

(declare-fun res!2483898 () Bool)

(assert (=> b!5927353 (=> res!2483898 e!3628078)))

(assert (=> b!5927353 (= res!2483898 (not (is-ElementMatch!15974 (regTwo!32460 r!7292))))))

(assert (=> b!5927353 (= e!3628079 e!3628078)))

(declare-fun b!5927354 () Bool)

(declare-fun res!2483902 () Bool)

(assert (=> b!5927354 (=> (not res!2483902) (not e!3628077))))

(assert (=> b!5927354 (= res!2483902 (not call!470290))))

(declare-fun b!5927355 () Bool)

(assert (=> b!5927355 (= e!3628080 (matchR!8157 (derivativeStep!4705 (regTwo!32460 r!7292) (head!12490 s!2326)) (tail!11575 s!2326)))))

(declare-fun b!5927356 () Bool)

(declare-fun res!2483899 () Bool)

(assert (=> b!5927356 (=> res!2483899 e!3628081)))

(assert (=> b!5927356 (= res!2483899 (not (isEmpty!35963 (tail!11575 s!2326))))))

(declare-fun b!5927357 () Bool)

(declare-fun e!3628082 () Bool)

(assert (=> b!5927357 (= e!3628078 e!3628082)))

(declare-fun res!2483905 () Bool)

(assert (=> b!5927357 (=> (not res!2483905) (not e!3628082))))

(assert (=> b!5927357 (= res!2483905 (not lt!2310469))))

(declare-fun b!5927358 () Bool)

(assert (=> b!5927358 (= e!3628080 (nullable!5969 (regTwo!32460 r!7292)))))

(declare-fun b!5927359 () Bool)

(assert (=> b!5927359 (= e!3628083 e!3628079)))

(declare-fun c!1053567 () Bool)

(assert (=> b!5927359 (= c!1053567 (is-EmptyLang!15974 (regTwo!32460 r!7292)))))

(declare-fun b!5927360 () Bool)

(assert (=> b!5927360 (= e!3628083 (= lt!2310469 call!470290))))

(declare-fun b!5927361 () Bool)

(assert (=> b!5927361 (= e!3628082 e!3628081)))

(declare-fun res!2483901 () Bool)

(assert (=> b!5927361 (=> res!2483901 e!3628081)))

(assert (=> b!5927361 (= res!2483901 call!470290)))

(declare-fun b!5927362 () Bool)

(declare-fun res!2483903 () Bool)

(assert (=> b!5927362 (=> (not res!2483903) (not e!3628077))))

(assert (=> b!5927362 (= res!2483903 (isEmpty!35963 (tail!11575 s!2326)))))

(assert (= (and d!1858425 c!1053566) b!5927358))

(assert (= (and d!1858425 (not c!1053566)) b!5927355))

(assert (= (and d!1858425 c!1053568) b!5927360))

(assert (= (and d!1858425 (not c!1053568)) b!5927359))

(assert (= (and b!5927359 c!1053567) b!5927349))

(assert (= (and b!5927359 (not c!1053567)) b!5927353))

(assert (= (and b!5927353 (not res!2483898)) b!5927352))

(assert (= (and b!5927352 res!2483904) b!5927354))

(assert (= (and b!5927354 res!2483902) b!5927362))

(assert (= (and b!5927362 res!2483903) b!5927350))

(assert (= (and b!5927352 (not res!2483900)) b!5927357))

(assert (= (and b!5927357 res!2483905) b!5927361))

(assert (= (and b!5927361 (not res!2483901)) b!5927356))

(assert (= (and b!5927356 (not res!2483899)) b!5927351))

(assert (= (or b!5927360 b!5927354 b!5927361) bm!470285))

(assert (=> b!5927356 m!6820478))

(assert (=> b!5927356 m!6820478))

(assert (=> b!5927356 m!6820480))

(assert (=> b!5927355 m!6820482))

(assert (=> b!5927355 m!6820482))

(declare-fun m!6820944 () Bool)

(assert (=> b!5927355 m!6820944))

(assert (=> b!5927355 m!6820478))

(assert (=> b!5927355 m!6820944))

(assert (=> b!5927355 m!6820478))

(declare-fun m!6820946 () Bool)

(assert (=> b!5927355 m!6820946))

(assert (=> b!5927351 m!6820482))

(assert (=> b!5927362 m!6820478))

(assert (=> b!5927362 m!6820478))

(assert (=> b!5927362 m!6820480))

(assert (=> b!5927358 m!6820878))

(assert (=> d!1858425 m!6820470))

(assert (=> d!1858425 m!6820882))

(assert (=> b!5927350 m!6820482))

(assert (=> bm!470285 m!6820470))

(assert (=> b!5926725 d!1858425))

(declare-fun d!1858427 () Bool)

(assert (=> d!1858427 (= (isEmpty!35959 (tail!11574 (exprs!5858 (h!70547 zl!343)))) (is-Nil!64098 (tail!11574 (exprs!5858 (h!70547 zl!343)))))))

(assert (=> b!5926552 d!1858427))

(declare-fun d!1858429 () Bool)

(assert (=> d!1858429 (= (tail!11574 (exprs!5858 (h!70547 zl!343))) (t!377617 (exprs!5858 (h!70547 zl!343))))))

(assert (=> b!5926552 d!1858429))

(declare-fun b!5927363 () Bool)

(declare-fun e!3628088 () (Set Context!10716))

(assert (=> b!5927363 (= e!3628088 (set.insert (ite (or c!1053448 c!1053451) (Context!10717 Nil!64098) (Context!10717 call!470234)) (as set.empty (Set Context!10716))))))

(declare-fun b!5927365 () Bool)

(declare-fun e!3628089 () (Set Context!10716))

(assert (=> b!5927365 (= e!3628088 e!3628089)))

(declare-fun c!1053570 () Bool)

(assert (=> b!5927365 (= c!1053570 (is-Union!15974 (ite c!1053448 (regTwo!32461 r!7292) (ite c!1053451 (regTwo!32460 r!7292) (ite c!1053449 (regOne!32460 r!7292) (reg!16303 r!7292))))))))

(declare-fun b!5927366 () Bool)

(declare-fun e!3628084 () (Set Context!10716))

(declare-fun e!3628087 () (Set Context!10716))

(assert (=> b!5927366 (= e!3628084 e!3628087)))

(declare-fun c!1053571 () Bool)

(assert (=> b!5927366 (= c!1053571 (is-Concat!24819 (ite c!1053448 (regTwo!32461 r!7292) (ite c!1053451 (regTwo!32460 r!7292) (ite c!1053449 (regOne!32460 r!7292) (reg!16303 r!7292))))))))

(declare-fun b!5927367 () Bool)

(declare-fun call!470296 () (Set Context!10716))

(assert (=> b!5927367 (= e!3628087 call!470296)))

(declare-fun b!5927368 () Bool)

(declare-fun call!470295 () (Set Context!10716))

(declare-fun call!470293 () (Set Context!10716))

(assert (=> b!5927368 (= e!3628089 (set.union call!470295 call!470293))))

(declare-fun bm!470286 () Bool)

(declare-fun call!470291 () List!64222)

(declare-fun call!470294 () List!64222)

(assert (=> bm!470286 (= call!470291 call!470294)))

(declare-fun c!1053572 () Bool)

(declare-fun b!5927369 () Bool)

(assert (=> b!5927369 (= c!1053572 (is-Star!15974 (ite c!1053448 (regTwo!32461 r!7292) (ite c!1053451 (regTwo!32460 r!7292) (ite c!1053449 (regOne!32460 r!7292) (reg!16303 r!7292))))))))

(declare-fun e!3628085 () (Set Context!10716))

(assert (=> b!5927369 (= e!3628087 e!3628085)))

(declare-fun b!5927370 () Bool)

(assert (=> b!5927370 (= e!3628085 (as set.empty (Set Context!10716)))))

(declare-fun bm!470287 () Bool)

(assert (=> bm!470287 (= call!470295 (derivationStepZipperDown!1224 (ite c!1053570 (regOne!32461 (ite c!1053448 (regTwo!32461 r!7292) (ite c!1053451 (regTwo!32460 r!7292) (ite c!1053449 (regOne!32460 r!7292) (reg!16303 r!7292))))) (regOne!32460 (ite c!1053448 (regTwo!32461 r!7292) (ite c!1053451 (regTwo!32460 r!7292) (ite c!1053449 (regOne!32460 r!7292) (reg!16303 r!7292)))))) (ite c!1053570 (ite (or c!1053448 c!1053451) (Context!10717 Nil!64098) (Context!10717 call!470234)) (Context!10717 call!470294)) (h!70545 s!2326)))))

(declare-fun c!1053573 () Bool)

(declare-fun bm!470288 () Bool)

(assert (=> bm!470288 (= call!470294 ($colon$colon!1861 (exprs!5858 (ite (or c!1053448 c!1053451) (Context!10717 Nil!64098) (Context!10717 call!470234))) (ite (or c!1053573 c!1053571) (regTwo!32460 (ite c!1053448 (regTwo!32461 r!7292) (ite c!1053451 (regTwo!32460 r!7292) (ite c!1053449 (regOne!32460 r!7292) (reg!16303 r!7292))))) (ite c!1053448 (regTwo!32461 r!7292) (ite c!1053451 (regTwo!32460 r!7292) (ite c!1053449 (regOne!32460 r!7292) (reg!16303 r!7292)))))))))

(declare-fun e!3628086 () Bool)

(declare-fun b!5927371 () Bool)

(assert (=> b!5927371 (= e!3628086 (nullable!5969 (regOne!32460 (ite c!1053448 (regTwo!32461 r!7292) (ite c!1053451 (regTwo!32460 r!7292) (ite c!1053449 (regOne!32460 r!7292) (reg!16303 r!7292)))))))))

(declare-fun bm!470289 () Bool)

(declare-fun call!470292 () (Set Context!10716))

(assert (=> bm!470289 (= call!470296 call!470292)))

(declare-fun d!1858431 () Bool)

(declare-fun c!1053569 () Bool)

(assert (=> d!1858431 (= c!1053569 (and (is-ElementMatch!15974 (ite c!1053448 (regTwo!32461 r!7292) (ite c!1053451 (regTwo!32460 r!7292) (ite c!1053449 (regOne!32460 r!7292) (reg!16303 r!7292))))) (= (c!1053341 (ite c!1053448 (regTwo!32461 r!7292) (ite c!1053451 (regTwo!32460 r!7292) (ite c!1053449 (regOne!32460 r!7292) (reg!16303 r!7292))))) (h!70545 s!2326))))))

(assert (=> d!1858431 (= (derivationStepZipperDown!1224 (ite c!1053448 (regTwo!32461 r!7292) (ite c!1053451 (regTwo!32460 r!7292) (ite c!1053449 (regOne!32460 r!7292) (reg!16303 r!7292)))) (ite (or c!1053448 c!1053451) (Context!10717 Nil!64098) (Context!10717 call!470234)) (h!70545 s!2326)) e!3628088)))

(declare-fun b!5927364 () Bool)

(assert (=> b!5927364 (= c!1053573 e!3628086)))

(declare-fun res!2483906 () Bool)

(assert (=> b!5927364 (=> (not res!2483906) (not e!3628086))))

(assert (=> b!5927364 (= res!2483906 (is-Concat!24819 (ite c!1053448 (regTwo!32461 r!7292) (ite c!1053451 (regTwo!32460 r!7292) (ite c!1053449 (regOne!32460 r!7292) (reg!16303 r!7292))))))))

(assert (=> b!5927364 (= e!3628089 e!3628084)))

(declare-fun b!5927372 () Bool)

(assert (=> b!5927372 (= e!3628085 call!470296)))

(declare-fun bm!470290 () Bool)

(assert (=> bm!470290 (= call!470292 call!470293)))

(declare-fun b!5927373 () Bool)

(assert (=> b!5927373 (= e!3628084 (set.union call!470295 call!470292))))

(declare-fun bm!470291 () Bool)

(assert (=> bm!470291 (= call!470293 (derivationStepZipperDown!1224 (ite c!1053570 (regTwo!32461 (ite c!1053448 (regTwo!32461 r!7292) (ite c!1053451 (regTwo!32460 r!7292) (ite c!1053449 (regOne!32460 r!7292) (reg!16303 r!7292))))) (ite c!1053573 (regTwo!32460 (ite c!1053448 (regTwo!32461 r!7292) (ite c!1053451 (regTwo!32460 r!7292) (ite c!1053449 (regOne!32460 r!7292) (reg!16303 r!7292))))) (ite c!1053571 (regOne!32460 (ite c!1053448 (regTwo!32461 r!7292) (ite c!1053451 (regTwo!32460 r!7292) (ite c!1053449 (regOne!32460 r!7292) (reg!16303 r!7292))))) (reg!16303 (ite c!1053448 (regTwo!32461 r!7292) (ite c!1053451 (regTwo!32460 r!7292) (ite c!1053449 (regOne!32460 r!7292) (reg!16303 r!7292)))))))) (ite (or c!1053570 c!1053573) (ite (or c!1053448 c!1053451) (Context!10717 Nil!64098) (Context!10717 call!470234)) (Context!10717 call!470291)) (h!70545 s!2326)))))

(assert (= (and d!1858431 c!1053569) b!5927363))

(assert (= (and d!1858431 (not c!1053569)) b!5927365))

(assert (= (and b!5927365 c!1053570) b!5927368))

(assert (= (and b!5927365 (not c!1053570)) b!5927364))

(assert (= (and b!5927364 res!2483906) b!5927371))

(assert (= (and b!5927364 c!1053573) b!5927373))

(assert (= (and b!5927364 (not c!1053573)) b!5927366))

(assert (= (and b!5927366 c!1053571) b!5927367))

(assert (= (and b!5927366 (not c!1053571)) b!5927369))

(assert (= (and b!5927369 c!1053572) b!5927372))

(assert (= (and b!5927369 (not c!1053572)) b!5927370))

(assert (= (or b!5927367 b!5927372) bm!470286))

(assert (= (or b!5927367 b!5927372) bm!470289))

(assert (= (or b!5927373 bm!470286) bm!470288))

(assert (= (or b!5927373 bm!470289) bm!470290))

(assert (= (or b!5927368 bm!470290) bm!470291))

(assert (= (or b!5927368 b!5927373) bm!470287))

(declare-fun m!6820948 () Bool)

(assert (=> b!5927363 m!6820948))

(declare-fun m!6820950 () Bool)

(assert (=> bm!470291 m!6820950))

(declare-fun m!6820952 () Bool)

(assert (=> bm!470287 m!6820952))

(declare-fun m!6820954 () Bool)

(assert (=> b!5927371 m!6820954))

(declare-fun m!6820956 () Bool)

(assert (=> bm!470288 m!6820956))

(assert (=> bm!470234 d!1858431))

(declare-fun b!5927374 () Bool)

(declare-fun e!3628094 () (Set Context!10716))

(assert (=> b!5927374 (= e!3628094 (set.insert (Context!10717 (t!377617 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343))))) (as set.empty (Set Context!10716))))))

(declare-fun b!5927376 () Bool)

(declare-fun e!3628095 () (Set Context!10716))

(assert (=> b!5927376 (= e!3628094 e!3628095)))

(declare-fun c!1053575 () Bool)

(assert (=> b!5927376 (= c!1053575 (is-Union!15974 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343))))))))

(declare-fun b!5927377 () Bool)

(declare-fun e!3628090 () (Set Context!10716))

(declare-fun e!3628093 () (Set Context!10716))

(assert (=> b!5927377 (= e!3628090 e!3628093)))

(declare-fun c!1053576 () Bool)

(assert (=> b!5927377 (= c!1053576 (is-Concat!24819 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343))))))))

(declare-fun b!5927378 () Bool)

(declare-fun call!470302 () (Set Context!10716))

(assert (=> b!5927378 (= e!3628093 call!470302)))

(declare-fun b!5927379 () Bool)

(declare-fun call!470301 () (Set Context!10716))

(declare-fun call!470299 () (Set Context!10716))

(assert (=> b!5927379 (= e!3628095 (set.union call!470301 call!470299))))

(declare-fun bm!470292 () Bool)

(declare-fun call!470297 () List!64222)

(declare-fun call!470300 () List!64222)

(assert (=> bm!470292 (= call!470297 call!470300)))

(declare-fun b!5927380 () Bool)

(declare-fun c!1053577 () Bool)

(assert (=> b!5927380 (= c!1053577 (is-Star!15974 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343))))))))

(declare-fun e!3628091 () (Set Context!10716))

(assert (=> b!5927380 (= e!3628093 e!3628091)))

(declare-fun b!5927381 () Bool)

(assert (=> b!5927381 (= e!3628091 (as set.empty (Set Context!10716)))))

(declare-fun bm!470293 () Bool)

(assert (=> bm!470293 (= call!470301 (derivationStepZipperDown!1224 (ite c!1053575 (regOne!32461 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343))))) (regOne!32460 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343)))))) (ite c!1053575 (Context!10717 (t!377617 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343))))) (Context!10717 call!470300)) (h!70545 s!2326)))))

(declare-fun c!1053578 () Bool)

(declare-fun bm!470294 () Bool)

(assert (=> bm!470294 (= call!470300 ($colon$colon!1861 (exprs!5858 (Context!10717 (t!377617 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343)))))) (ite (or c!1053578 c!1053576) (regTwo!32460 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343))))) (h!70546 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343)))))))))

(declare-fun b!5927382 () Bool)

(declare-fun e!3628092 () Bool)

(assert (=> b!5927382 (= e!3628092 (nullable!5969 (regOne!32460 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343)))))))))

(declare-fun bm!470295 () Bool)

(declare-fun call!470298 () (Set Context!10716))

(assert (=> bm!470295 (= call!470302 call!470298)))

(declare-fun c!1053574 () Bool)

(declare-fun d!1858433 () Bool)

(assert (=> d!1858433 (= c!1053574 (and (is-ElementMatch!15974 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343))))) (= (c!1053341 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343))))) (h!70545 s!2326))))))

(assert (=> d!1858433 (= (derivationStepZipperDown!1224 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343)))) (Context!10717 (t!377617 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343))))) (h!70545 s!2326)) e!3628094)))

(declare-fun b!5927375 () Bool)

(assert (=> b!5927375 (= c!1053578 e!3628092)))

(declare-fun res!2483907 () Bool)

(assert (=> b!5927375 (=> (not res!2483907) (not e!3628092))))

(assert (=> b!5927375 (= res!2483907 (is-Concat!24819 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343))))))))

(assert (=> b!5927375 (= e!3628095 e!3628090)))

(declare-fun b!5927383 () Bool)

(assert (=> b!5927383 (= e!3628091 call!470302)))

(declare-fun bm!470296 () Bool)

(assert (=> bm!470296 (= call!470298 call!470299)))

(declare-fun b!5927384 () Bool)

(assert (=> b!5927384 (= e!3628090 (set.union call!470301 call!470298))))

(declare-fun bm!470297 () Bool)

(assert (=> bm!470297 (= call!470299 (derivationStepZipperDown!1224 (ite c!1053575 (regTwo!32461 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343))))) (ite c!1053578 (regTwo!32460 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343))))) (ite c!1053576 (regOne!32460 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343))))) (reg!16303 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343)))))))) (ite (or c!1053575 c!1053578) (Context!10717 (t!377617 (exprs!5858 (Context!10717 (Cons!64098 (regOne!32460 r!7292) lt!2310343))))) (Context!10717 call!470297)) (h!70545 s!2326)))))

(assert (= (and d!1858433 c!1053574) b!5927374))

(assert (= (and d!1858433 (not c!1053574)) b!5927376))

(assert (= (and b!5927376 c!1053575) b!5927379))

(assert (= (and b!5927376 (not c!1053575)) b!5927375))

(assert (= (and b!5927375 res!2483907) b!5927382))

(assert (= (and b!5927375 c!1053578) b!5927384))

(assert (= (and b!5927375 (not c!1053578)) b!5927377))

(assert (= (and b!5927377 c!1053576) b!5927378))

(assert (= (and b!5927377 (not c!1053576)) b!5927380))

(assert (= (and b!5927380 c!1053577) b!5927383))

(assert (= (and b!5927380 (not c!1053577)) b!5927381))

(assert (= (or b!5927378 b!5927383) bm!470292))

(assert (= (or b!5927378 b!5927383) bm!470295))

(assert (= (or b!5927384 bm!470292) bm!470294))

(assert (= (or b!5927384 bm!470295) bm!470296))

(assert (= (or b!5927379 bm!470296) bm!470297))

(assert (= (or b!5927379 b!5927384) bm!470293))

(declare-fun m!6820958 () Bool)

(assert (=> b!5927374 m!6820958))

(declare-fun m!6820960 () Bool)

(assert (=> bm!470297 m!6820960))

(declare-fun m!6820962 () Bool)

(assert (=> bm!470293 m!6820962))

(declare-fun m!6820964 () Bool)

(assert (=> b!5927382 m!6820964))

(declare-fun m!6820966 () Bool)

(assert (=> bm!470294 m!6820966))

(assert (=> bm!470176 d!1858433))

(declare-fun b!5927385 () Bool)

(declare-fun e!3628100 () (Set Context!10716))

(assert (=> b!5927385 (= e!3628100 (set.insert (Context!10717 (t!377617 (exprs!5858 (h!70547 zl!343)))) (as set.empty (Set Context!10716))))))

(declare-fun b!5927387 () Bool)

(declare-fun e!3628101 () (Set Context!10716))

(assert (=> b!5927387 (= e!3628100 e!3628101)))

(declare-fun c!1053580 () Bool)

(assert (=> b!5927387 (= c!1053580 (is-Union!15974 (h!70546 (exprs!5858 (h!70547 zl!343)))))))

(declare-fun b!5927388 () Bool)

(declare-fun e!3628096 () (Set Context!10716))

(declare-fun e!3628099 () (Set Context!10716))

(assert (=> b!5927388 (= e!3628096 e!3628099)))

(declare-fun c!1053581 () Bool)

(assert (=> b!5927388 (= c!1053581 (is-Concat!24819 (h!70546 (exprs!5858 (h!70547 zl!343)))))))

(declare-fun b!5927389 () Bool)

(declare-fun call!470308 () (Set Context!10716))

(assert (=> b!5927389 (= e!3628099 call!470308)))

(declare-fun b!5927390 () Bool)

(declare-fun call!470307 () (Set Context!10716))

(declare-fun call!470305 () (Set Context!10716))

(assert (=> b!5927390 (= e!3628101 (set.union call!470307 call!470305))))

(declare-fun bm!470298 () Bool)

(declare-fun call!470303 () List!64222)

(declare-fun call!470306 () List!64222)

(assert (=> bm!470298 (= call!470303 call!470306)))

(declare-fun b!5927391 () Bool)

(declare-fun c!1053582 () Bool)

(assert (=> b!5927391 (= c!1053582 (is-Star!15974 (h!70546 (exprs!5858 (h!70547 zl!343)))))))

(declare-fun e!3628097 () (Set Context!10716))

(assert (=> b!5927391 (= e!3628099 e!3628097)))

(declare-fun b!5927392 () Bool)

(assert (=> b!5927392 (= e!3628097 (as set.empty (Set Context!10716)))))

(declare-fun bm!470299 () Bool)

(assert (=> bm!470299 (= call!470307 (derivationStepZipperDown!1224 (ite c!1053580 (regOne!32461 (h!70546 (exprs!5858 (h!70547 zl!343)))) (regOne!32460 (h!70546 (exprs!5858 (h!70547 zl!343))))) (ite c!1053580 (Context!10717 (t!377617 (exprs!5858 (h!70547 zl!343)))) (Context!10717 call!470306)) (h!70545 s!2326)))))

(declare-fun bm!470300 () Bool)

(declare-fun c!1053583 () Bool)

(assert (=> bm!470300 (= call!470306 ($colon$colon!1861 (exprs!5858 (Context!10717 (t!377617 (exprs!5858 (h!70547 zl!343))))) (ite (or c!1053583 c!1053581) (regTwo!32460 (h!70546 (exprs!5858 (h!70547 zl!343)))) (h!70546 (exprs!5858 (h!70547 zl!343))))))))

(declare-fun b!5927393 () Bool)

(declare-fun e!3628098 () Bool)

(assert (=> b!5927393 (= e!3628098 (nullable!5969 (regOne!32460 (h!70546 (exprs!5858 (h!70547 zl!343))))))))

(declare-fun bm!470301 () Bool)

(declare-fun call!470304 () (Set Context!10716))

(assert (=> bm!470301 (= call!470308 call!470304)))

(declare-fun d!1858435 () Bool)

(declare-fun c!1053579 () Bool)

(assert (=> d!1858435 (= c!1053579 (and (is-ElementMatch!15974 (h!70546 (exprs!5858 (h!70547 zl!343)))) (= (c!1053341 (h!70546 (exprs!5858 (h!70547 zl!343)))) (h!70545 s!2326))))))

(assert (=> d!1858435 (= (derivationStepZipperDown!1224 (h!70546 (exprs!5858 (h!70547 zl!343))) (Context!10717 (t!377617 (exprs!5858 (h!70547 zl!343)))) (h!70545 s!2326)) e!3628100)))

(declare-fun b!5927386 () Bool)

(assert (=> b!5927386 (= c!1053583 e!3628098)))

(declare-fun res!2483908 () Bool)

(assert (=> b!5927386 (=> (not res!2483908) (not e!3628098))))

(assert (=> b!5927386 (= res!2483908 (is-Concat!24819 (h!70546 (exprs!5858 (h!70547 zl!343)))))))

(assert (=> b!5927386 (= e!3628101 e!3628096)))

(declare-fun b!5927394 () Bool)

(assert (=> b!5927394 (= e!3628097 call!470308)))

(declare-fun bm!470302 () Bool)

(assert (=> bm!470302 (= call!470304 call!470305)))

(declare-fun b!5927395 () Bool)

(assert (=> b!5927395 (= e!3628096 (set.union call!470307 call!470304))))

(declare-fun bm!470303 () Bool)

(assert (=> bm!470303 (= call!470305 (derivationStepZipperDown!1224 (ite c!1053580 (regTwo!32461 (h!70546 (exprs!5858 (h!70547 zl!343)))) (ite c!1053583 (regTwo!32460 (h!70546 (exprs!5858 (h!70547 zl!343)))) (ite c!1053581 (regOne!32460 (h!70546 (exprs!5858 (h!70547 zl!343)))) (reg!16303 (h!70546 (exprs!5858 (h!70547 zl!343))))))) (ite (or c!1053580 c!1053583) (Context!10717 (t!377617 (exprs!5858 (h!70547 zl!343)))) (Context!10717 call!470303)) (h!70545 s!2326)))))

(assert (= (and d!1858435 c!1053579) b!5927385))

(assert (= (and d!1858435 (not c!1053579)) b!5927387))

(assert (= (and b!5927387 c!1053580) b!5927390))

(assert (= (and b!5927387 (not c!1053580)) b!5927386))

(assert (= (and b!5927386 res!2483908) b!5927393))

(assert (= (and b!5927386 c!1053583) b!5927395))

(assert (= (and b!5927386 (not c!1053583)) b!5927388))

(assert (= (and b!5927388 c!1053581) b!5927389))

(assert (= (and b!5927388 (not c!1053581)) b!5927391))

(assert (= (and b!5927391 c!1053582) b!5927394))

(assert (= (and b!5927391 (not c!1053582)) b!5927392))

(assert (= (or b!5927389 b!5927394) bm!470298))

(assert (= (or b!5927389 b!5927394) bm!470301))

(assert (= (or b!5927395 bm!470298) bm!470300))

(assert (= (or b!5927395 bm!470301) bm!470302))

(assert (= (or b!5927390 bm!470302) bm!470303))

(assert (= (or b!5927390 b!5927395) bm!470299))

(declare-fun m!6820968 () Bool)

(assert (=> b!5927385 m!6820968))

(declare-fun m!6820970 () Bool)

(assert (=> bm!470303 m!6820970))

(declare-fun m!6820972 () Bool)

(assert (=> bm!470299 m!6820972))

(declare-fun m!6820974 () Bool)

(assert (=> b!5927393 m!6820974))

(declare-fun m!6820976 () Bool)

(assert (=> bm!470300 m!6820976))

(assert (=> bm!470216 d!1858435))

(declare-fun c!1053584 () Bool)

(declare-fun c!1053585 () Bool)

(declare-fun call!470311 () Bool)

(declare-fun bm!470304 () Bool)

(assert (=> bm!470304 (= call!470311 (validRegex!7710 (ite c!1053584 (reg!16303 lt!2310385) (ite c!1053585 (regTwo!32461 lt!2310385) (regTwo!32460 lt!2310385)))))))

(declare-fun b!5927396 () Bool)

(declare-fun res!2483910 () Bool)

(declare-fun e!3628108 () Bool)

(assert (=> b!5927396 (=> res!2483910 e!3628108)))

(assert (=> b!5927396 (= res!2483910 (not (is-Concat!24819 lt!2310385)))))

(declare-fun e!3628103 () Bool)

(assert (=> b!5927396 (= e!3628103 e!3628108)))

(declare-fun b!5927397 () Bool)

(declare-fun res!2483909 () Bool)

(declare-fun e!3628104 () Bool)

(assert (=> b!5927397 (=> (not res!2483909) (not e!3628104))))

(declare-fun call!470310 () Bool)

(assert (=> b!5927397 (= res!2483909 call!470310)))

(assert (=> b!5927397 (= e!3628103 e!3628104)))

(declare-fun b!5927398 () Bool)

(declare-fun e!3628105 () Bool)

(assert (=> b!5927398 (= e!3628105 e!3628103)))

(assert (=> b!5927398 (= c!1053585 (is-Union!15974 lt!2310385))))

(declare-fun b!5927399 () Bool)

(declare-fun e!3628107 () Bool)

(assert (=> b!5927399 (= e!3628107 e!3628105)))

(assert (=> b!5927399 (= c!1053584 (is-Star!15974 lt!2310385))))

(declare-fun b!5927400 () Bool)

(declare-fun call!470309 () Bool)

(assert (=> b!5927400 (= e!3628104 call!470309)))

(declare-fun d!1858437 () Bool)

(declare-fun res!2483913 () Bool)

(assert (=> d!1858437 (=> res!2483913 e!3628107)))

(assert (=> d!1858437 (= res!2483913 (is-ElementMatch!15974 lt!2310385))))

(assert (=> d!1858437 (= (validRegex!7710 lt!2310385) e!3628107)))

(declare-fun bm!470305 () Bool)

(assert (=> bm!470305 (= call!470310 (validRegex!7710 (ite c!1053585 (regOne!32461 lt!2310385) (regOne!32460 lt!2310385))))))

(declare-fun b!5927401 () Bool)

(declare-fun e!3628102 () Bool)

(assert (=> b!5927401 (= e!3628108 e!3628102)))

(declare-fun res!2483911 () Bool)

(assert (=> b!5927401 (=> (not res!2483911) (not e!3628102))))

(assert (=> b!5927401 (= res!2483911 call!470310)))

(declare-fun bm!470306 () Bool)

(assert (=> bm!470306 (= call!470309 call!470311)))

(declare-fun b!5927402 () Bool)

(declare-fun e!3628106 () Bool)

(assert (=> b!5927402 (= e!3628106 call!470311)))

(declare-fun b!5927403 () Bool)

(assert (=> b!5927403 (= e!3628105 e!3628106)))

(declare-fun res!2483912 () Bool)

(assert (=> b!5927403 (= res!2483912 (not (nullable!5969 (reg!16303 lt!2310385))))))

(assert (=> b!5927403 (=> (not res!2483912) (not e!3628106))))

(declare-fun b!5927404 () Bool)

(assert (=> b!5927404 (= e!3628102 call!470309)))

(assert (= (and d!1858437 (not res!2483913)) b!5927399))

(assert (= (and b!5927399 c!1053584) b!5927403))

(assert (= (and b!5927399 (not c!1053584)) b!5927398))

(assert (= (and b!5927403 res!2483912) b!5927402))

(assert (= (and b!5927398 c!1053585) b!5927397))

(assert (= (and b!5927398 (not c!1053585)) b!5927396))

(assert (= (and b!5927397 res!2483909) b!5927400))

(assert (= (and b!5927396 (not res!2483910)) b!5927401))

(assert (= (and b!5927401 res!2483911) b!5927404))

(assert (= (or b!5927400 b!5927404) bm!470306))

(assert (= (or b!5927397 b!5927401) bm!470305))

(assert (= (or b!5927402 bm!470306) bm!470304))

(declare-fun m!6820978 () Bool)

(assert (=> bm!470304 m!6820978))

(declare-fun m!6820980 () Bool)

(assert (=> bm!470305 m!6820980))

(declare-fun m!6820982 () Bool)

(assert (=> b!5927403 m!6820982))

(assert (=> d!1858237 d!1858437))

(declare-fun d!1858439 () Bool)

(declare-fun res!2483914 () Bool)

(declare-fun e!3628109 () Bool)

(assert (=> d!1858439 (=> res!2483914 e!3628109)))

(assert (=> d!1858439 (= res!2483914 (is-Nil!64098 (exprs!5858 (h!70547 zl!343))))))

(assert (=> d!1858439 (= (forall!15057 (exprs!5858 (h!70547 zl!343)) lambda!323229) e!3628109)))

(declare-fun b!5927405 () Bool)

(declare-fun e!3628110 () Bool)

(assert (=> b!5927405 (= e!3628109 e!3628110)))

(declare-fun res!2483915 () Bool)

(assert (=> b!5927405 (=> (not res!2483915) (not e!3628110))))

(assert (=> b!5927405 (= res!2483915 (dynLambda!25065 lambda!323229 (h!70546 (exprs!5858 (h!70547 zl!343)))))))

(declare-fun b!5927406 () Bool)

(assert (=> b!5927406 (= e!3628110 (forall!15057 (t!377617 (exprs!5858 (h!70547 zl!343))) lambda!323229))))

(assert (= (and d!1858439 (not res!2483914)) b!5927405))

(assert (= (and b!5927405 res!2483915) b!5927406))

(declare-fun b_lambda!222609 () Bool)

(assert (=> (not b_lambda!222609) (not b!5927405)))

(declare-fun m!6820984 () Bool)

(assert (=> b!5927405 m!6820984))

(declare-fun m!6820986 () Bool)

(assert (=> b!5927406 m!6820986))

(assert (=> d!1858237 d!1858439))

(declare-fun b!5927409 () Bool)

(declare-fun res!2483917 () Bool)

(declare-fun e!3628111 () Bool)

(assert (=> b!5927409 (=> (not res!2483917) (not e!3628111))))

(declare-fun lt!2310470 () List!64221)

(assert (=> b!5927409 (= res!2483917 (= (size!40141 lt!2310470) (+ (size!40141 (++!14071 Nil!64097 (Cons!64097 (h!70545 s!2326) Nil!64097))) (size!40141 (t!377616 s!2326)))))))

(declare-fun b!5927410 () Bool)

(assert (=> b!5927410 (= e!3628111 (or (not (= (t!377616 s!2326) Nil!64097)) (= lt!2310470 (++!14071 Nil!64097 (Cons!64097 (h!70545 s!2326) Nil!64097)))))))

(declare-fun b!5927408 () Bool)

(declare-fun e!3628112 () List!64221)

(assert (=> b!5927408 (= e!3628112 (Cons!64097 (h!70545 (++!14071 Nil!64097 (Cons!64097 (h!70545 s!2326) Nil!64097))) (++!14071 (t!377616 (++!14071 Nil!64097 (Cons!64097 (h!70545 s!2326) Nil!64097))) (t!377616 s!2326))))))

(declare-fun b!5927407 () Bool)

(assert (=> b!5927407 (= e!3628112 (t!377616 s!2326))))

(declare-fun d!1858441 () Bool)

(assert (=> d!1858441 e!3628111))

(declare-fun res!2483916 () Bool)

(assert (=> d!1858441 (=> (not res!2483916) (not e!3628111))))

(assert (=> d!1858441 (= res!2483916 (= (content!11809 lt!2310470) (set.union (content!11809 (++!14071 Nil!64097 (Cons!64097 (h!70545 s!2326) Nil!64097))) (content!11809 (t!377616 s!2326)))))))

(assert (=> d!1858441 (= lt!2310470 e!3628112)))

(declare-fun c!1053586 () Bool)

(assert (=> d!1858441 (= c!1053586 (is-Nil!64097 (++!14071 Nil!64097 (Cons!64097 (h!70545 s!2326) Nil!64097))))))

(assert (=> d!1858441 (= (++!14071 (++!14071 Nil!64097 (Cons!64097 (h!70545 s!2326) Nil!64097)) (t!377616 s!2326)) lt!2310470)))

(assert (= (and d!1858441 c!1053586) b!5927407))

(assert (= (and d!1858441 (not c!1053586)) b!5927408))

(assert (= (and d!1858441 res!2483916) b!5927409))

(assert (= (and b!5927409 res!2483917) b!5927410))

(declare-fun m!6820988 () Bool)

(assert (=> b!5927409 m!6820988))

(assert (=> b!5927409 m!6820516))

(declare-fun m!6820990 () Bool)

(assert (=> b!5927409 m!6820990))

(declare-fun m!6820992 () Bool)

(assert (=> b!5927409 m!6820992))

(declare-fun m!6820994 () Bool)

(assert (=> b!5927408 m!6820994))

(declare-fun m!6820996 () Bool)

(assert (=> d!1858441 m!6820996))

(assert (=> d!1858441 m!6820516))

(declare-fun m!6820998 () Bool)

(assert (=> d!1858441 m!6820998))

(declare-fun m!6821000 () Bool)

(assert (=> d!1858441 m!6821000))

(assert (=> b!5926723 d!1858441))

(declare-fun b!5927413 () Bool)

(declare-fun res!2483919 () Bool)

(declare-fun e!3628113 () Bool)

(assert (=> b!5927413 (=> (not res!2483919) (not e!3628113))))

(declare-fun lt!2310471 () List!64221)

(assert (=> b!5927413 (= res!2483919 (= (size!40141 lt!2310471) (+ (size!40141 Nil!64097) (size!40141 (Cons!64097 (h!70545 s!2326) Nil!64097)))))))

(declare-fun b!5927414 () Bool)

(assert (=> b!5927414 (= e!3628113 (or (not (= (Cons!64097 (h!70545 s!2326) Nil!64097) Nil!64097)) (= lt!2310471 Nil!64097)))))

(declare-fun b!5927412 () Bool)

(declare-fun e!3628114 () List!64221)

(assert (=> b!5927412 (= e!3628114 (Cons!64097 (h!70545 Nil!64097) (++!14071 (t!377616 Nil!64097) (Cons!64097 (h!70545 s!2326) Nil!64097))))))

(declare-fun b!5927411 () Bool)

(assert (=> b!5927411 (= e!3628114 (Cons!64097 (h!70545 s!2326) Nil!64097))))

(declare-fun d!1858443 () Bool)

(assert (=> d!1858443 e!3628113))

(declare-fun res!2483918 () Bool)

(assert (=> d!1858443 (=> (not res!2483918) (not e!3628113))))

(assert (=> d!1858443 (= res!2483918 (= (content!11809 lt!2310471) (set.union (content!11809 Nil!64097) (content!11809 (Cons!64097 (h!70545 s!2326) Nil!64097)))))))

(assert (=> d!1858443 (= lt!2310471 e!3628114)))

(declare-fun c!1053587 () Bool)

(assert (=> d!1858443 (= c!1053587 (is-Nil!64097 Nil!64097))))

(assert (=> d!1858443 (= (++!14071 Nil!64097 (Cons!64097 (h!70545 s!2326) Nil!64097)) lt!2310471)))

(assert (= (and d!1858443 c!1053587) b!5927411))

(assert (= (and d!1858443 (not c!1053587)) b!5927412))

(assert (= (and d!1858443 res!2483918) b!5927413))

(assert (= (and b!5927413 res!2483919) b!5927414))

(declare-fun m!6821002 () Bool)

(assert (=> b!5927413 m!6821002))

(declare-fun m!6821004 () Bool)

(assert (=> b!5927413 m!6821004))

(declare-fun m!6821006 () Bool)

(assert (=> b!5927413 m!6821006))

(declare-fun m!6821008 () Bool)

(assert (=> b!5927412 m!6821008))

(declare-fun m!6821010 () Bool)

(assert (=> d!1858443 m!6821010))

(declare-fun m!6821012 () Bool)

(assert (=> d!1858443 m!6821012))

(declare-fun m!6821014 () Bool)

(assert (=> d!1858443 m!6821014))

(assert (=> b!5926723 d!1858443))

(declare-fun d!1858445 () Bool)

(assert (=> d!1858445 (= (++!14071 (++!14071 Nil!64097 (Cons!64097 (h!70545 s!2326) Nil!64097)) (t!377616 s!2326)) s!2326)))

(declare-fun lt!2310474 () Unit!157219)

(declare-fun choose!44691 (List!64221 C!32218 List!64221 List!64221) Unit!157219)

(assert (=> d!1858445 (= lt!2310474 (choose!44691 Nil!64097 (h!70545 s!2326) (t!377616 s!2326) s!2326))))

(assert (=> d!1858445 (= (++!14071 Nil!64097 (Cons!64097 (h!70545 s!2326) (t!377616 s!2326))) s!2326)))

(assert (=> d!1858445 (= (lemmaMoveElementToOtherListKeepsConcatEq!2166 Nil!64097 (h!70545 s!2326) (t!377616 s!2326) s!2326) lt!2310474)))

(declare-fun bs!1402667 () Bool)

(assert (= bs!1402667 d!1858445))

(assert (=> bs!1402667 m!6820516))

(assert (=> bs!1402667 m!6820516))

(assert (=> bs!1402667 m!6820518))

(declare-fun m!6821016 () Bool)

(assert (=> bs!1402667 m!6821016))

(declare-fun m!6821018 () Bool)

(assert (=> bs!1402667 m!6821018))

(assert (=> b!5926723 d!1858445))

(declare-fun b!5927415 () Bool)

(declare-fun res!2483922 () Bool)

(declare-fun e!3628117 () Bool)

(assert (=> b!5927415 (=> (not res!2483922) (not e!3628117))))

(declare-fun lt!2310476 () Option!15865)

(assert (=> b!5927415 (= res!2483922 (matchR!8157 (regOne!32460 r!7292) (_1!36256 (get!22074 lt!2310476))))))

(declare-fun b!5927416 () Bool)

(declare-fun res!2483920 () Bool)

(assert (=> b!5927416 (=> (not res!2483920) (not e!3628117))))

(assert (=> b!5927416 (= res!2483920 (matchR!8157 (regTwo!32460 r!7292) (_2!36256 (get!22074 lt!2310476))))))

(declare-fun b!5927417 () Bool)

(declare-fun e!3628116 () Option!15865)

(assert (=> b!5927417 (= e!3628116 (Some!15864 (tuple2!65907 (++!14071 Nil!64097 (Cons!64097 (h!70545 s!2326) Nil!64097)) (t!377616 s!2326))))))

(declare-fun d!1858447 () Bool)

(declare-fun e!3628115 () Bool)

(assert (=> d!1858447 e!3628115))

(declare-fun res!2483921 () Bool)

(assert (=> d!1858447 (=> res!2483921 e!3628115)))

(assert (=> d!1858447 (= res!2483921 e!3628117)))

(declare-fun res!2483924 () Bool)

(assert (=> d!1858447 (=> (not res!2483924) (not e!3628117))))

(assert (=> d!1858447 (= res!2483924 (isDefined!12568 lt!2310476))))

(assert (=> d!1858447 (= lt!2310476 e!3628116)))

(declare-fun c!1053589 () Bool)

(declare-fun e!3628118 () Bool)

(assert (=> d!1858447 (= c!1053589 e!3628118)))

(declare-fun res!2483923 () Bool)

(assert (=> d!1858447 (=> (not res!2483923) (not e!3628118))))

(assert (=> d!1858447 (= res!2483923 (matchR!8157 (regOne!32460 r!7292) (++!14071 Nil!64097 (Cons!64097 (h!70545 s!2326) Nil!64097))))))

(assert (=> d!1858447 (validRegex!7710 (regOne!32460 r!7292))))

(assert (=> d!1858447 (= (findConcatSeparation!2279 (regOne!32460 r!7292) (regTwo!32460 r!7292) (++!14071 Nil!64097 (Cons!64097 (h!70545 s!2326) Nil!64097)) (t!377616 s!2326) s!2326) lt!2310476)))

(declare-fun b!5927418 () Bool)

(assert (=> b!5927418 (= e!3628117 (= (++!14071 (_1!36256 (get!22074 lt!2310476)) (_2!36256 (get!22074 lt!2310476))) s!2326))))

(declare-fun b!5927419 () Bool)

(declare-fun e!3628119 () Option!15865)

(assert (=> b!5927419 (= e!3628119 None!15864)))

(declare-fun b!5927420 () Bool)

(assert (=> b!5927420 (= e!3628115 (not (isDefined!12568 lt!2310476)))))

(declare-fun b!5927421 () Bool)

(declare-fun lt!2310475 () Unit!157219)

(declare-fun lt!2310477 () Unit!157219)

(assert (=> b!5927421 (= lt!2310475 lt!2310477)))

(assert (=> b!5927421 (= (++!14071 (++!14071 (++!14071 Nil!64097 (Cons!64097 (h!70545 s!2326) Nil!64097)) (Cons!64097 (h!70545 (t!377616 s!2326)) Nil!64097)) (t!377616 (t!377616 s!2326))) s!2326)))

(assert (=> b!5927421 (= lt!2310477 (lemmaMoveElementToOtherListKeepsConcatEq!2166 (++!14071 Nil!64097 (Cons!64097 (h!70545 s!2326) Nil!64097)) (h!70545 (t!377616 s!2326)) (t!377616 (t!377616 s!2326)) s!2326))))

(assert (=> b!5927421 (= e!3628119 (findConcatSeparation!2279 (regOne!32460 r!7292) (regTwo!32460 r!7292) (++!14071 (++!14071 Nil!64097 (Cons!64097 (h!70545 s!2326) Nil!64097)) (Cons!64097 (h!70545 (t!377616 s!2326)) Nil!64097)) (t!377616 (t!377616 s!2326)) s!2326))))

(declare-fun b!5927422 () Bool)

(assert (=> b!5927422 (= e!3628116 e!3628119)))

(declare-fun c!1053588 () Bool)

(assert (=> b!5927422 (= c!1053588 (is-Nil!64097 (t!377616 s!2326)))))

(declare-fun b!5927423 () Bool)

(assert (=> b!5927423 (= e!3628118 (matchR!8157 (regTwo!32460 r!7292) (t!377616 s!2326)))))

(assert (= (and d!1858447 res!2483923) b!5927423))

(assert (= (and d!1858447 c!1053589) b!5927417))

(assert (= (and d!1858447 (not c!1053589)) b!5927422))

(assert (= (and b!5927422 c!1053588) b!5927419))

(assert (= (and b!5927422 (not c!1053588)) b!5927421))

(assert (= (and d!1858447 res!2483924) b!5927415))

(assert (= (and b!5927415 res!2483922) b!5927416))

(assert (= (and b!5927416 res!2483920) b!5927418))

(assert (= (and d!1858447 (not res!2483921)) b!5927420))

(declare-fun m!6821020 () Bool)

(assert (=> b!5927418 m!6821020))

(declare-fun m!6821022 () Bool)

(assert (=> b!5927418 m!6821022))

(declare-fun m!6821024 () Bool)

(assert (=> d!1858447 m!6821024))

(assert (=> d!1858447 m!6820516))

(declare-fun m!6821026 () Bool)

(assert (=> d!1858447 m!6821026))

(assert (=> d!1858447 m!6820512))

(assert (=> b!5927420 m!6821024))

(assert (=> b!5927415 m!6821020))

(declare-fun m!6821028 () Bool)

(assert (=> b!5927415 m!6821028))

(assert (=> b!5927421 m!6820516))

(declare-fun m!6821030 () Bool)

(assert (=> b!5927421 m!6821030))

(assert (=> b!5927421 m!6821030))

(declare-fun m!6821032 () Bool)

(assert (=> b!5927421 m!6821032))

(assert (=> b!5927421 m!6820516))

(declare-fun m!6821034 () Bool)

(assert (=> b!5927421 m!6821034))

(assert (=> b!5927421 m!6821030))

(declare-fun m!6821036 () Bool)

(assert (=> b!5927421 m!6821036))

(assert (=> b!5927416 m!6821020))

(declare-fun m!6821038 () Bool)

(assert (=> b!5927416 m!6821038))

(declare-fun m!6821040 () Bool)

(assert (=> b!5927423 m!6821040))

(assert (=> b!5926723 d!1858447))

(declare-fun d!1858449 () Bool)

(assert (=> d!1858449 true))

(assert (=> d!1858449 true))

(declare-fun res!2483925 () Bool)

(assert (=> d!1858449 (= (choose!44678 lambda!323213) res!2483925)))

(assert (=> d!1858257 d!1858449))

(declare-fun call!470314 () Bool)

(declare-fun c!1053590 () Bool)

(declare-fun bm!470307 () Bool)

(declare-fun c!1053591 () Bool)

(assert (=> bm!470307 (= call!470314 (validRegex!7710 (ite c!1053590 (reg!16303 (ite c!1053430 (reg!16303 r!7292) (ite c!1053431 (regTwo!32461 r!7292) (regTwo!32460 r!7292)))) (ite c!1053591 (regTwo!32461 (ite c!1053430 (reg!16303 r!7292) (ite c!1053431 (regTwo!32461 r!7292) (regTwo!32460 r!7292)))) (regTwo!32460 (ite c!1053430 (reg!16303 r!7292) (ite c!1053431 (regTwo!32461 r!7292) (regTwo!32460 r!7292))))))))))

(declare-fun b!5927424 () Bool)

(declare-fun res!2483927 () Bool)

(declare-fun e!3628126 () Bool)

(assert (=> b!5927424 (=> res!2483927 e!3628126)))

(assert (=> b!5927424 (= res!2483927 (not (is-Concat!24819 (ite c!1053430 (reg!16303 r!7292) (ite c!1053431 (regTwo!32461 r!7292) (regTwo!32460 r!7292))))))))

(declare-fun e!3628121 () Bool)

(assert (=> b!5927424 (= e!3628121 e!3628126)))

(declare-fun b!5927425 () Bool)

(declare-fun res!2483926 () Bool)

(declare-fun e!3628122 () Bool)

(assert (=> b!5927425 (=> (not res!2483926) (not e!3628122))))

(declare-fun call!470313 () Bool)

(assert (=> b!5927425 (= res!2483926 call!470313)))

(assert (=> b!5927425 (= e!3628121 e!3628122)))

(declare-fun b!5927426 () Bool)

(declare-fun e!3628123 () Bool)

(assert (=> b!5927426 (= e!3628123 e!3628121)))

(assert (=> b!5927426 (= c!1053591 (is-Union!15974 (ite c!1053430 (reg!16303 r!7292) (ite c!1053431 (regTwo!32461 r!7292) (regTwo!32460 r!7292)))))))

(declare-fun b!5927427 () Bool)

(declare-fun e!3628125 () Bool)

(assert (=> b!5927427 (= e!3628125 e!3628123)))

(assert (=> b!5927427 (= c!1053590 (is-Star!15974 (ite c!1053430 (reg!16303 r!7292) (ite c!1053431 (regTwo!32461 r!7292) (regTwo!32460 r!7292)))))))

(declare-fun b!5927428 () Bool)

(declare-fun call!470312 () Bool)

(assert (=> b!5927428 (= e!3628122 call!470312)))

(declare-fun d!1858451 () Bool)

(declare-fun res!2483930 () Bool)

(assert (=> d!1858451 (=> res!2483930 e!3628125)))

(assert (=> d!1858451 (= res!2483930 (is-ElementMatch!15974 (ite c!1053430 (reg!16303 r!7292) (ite c!1053431 (regTwo!32461 r!7292) (regTwo!32460 r!7292)))))))

(assert (=> d!1858451 (= (validRegex!7710 (ite c!1053430 (reg!16303 r!7292) (ite c!1053431 (regTwo!32461 r!7292) (regTwo!32460 r!7292)))) e!3628125)))

(declare-fun bm!470308 () Bool)

(assert (=> bm!470308 (= call!470313 (validRegex!7710 (ite c!1053591 (regOne!32461 (ite c!1053430 (reg!16303 r!7292) (ite c!1053431 (regTwo!32461 r!7292) (regTwo!32460 r!7292)))) (regOne!32460 (ite c!1053430 (reg!16303 r!7292) (ite c!1053431 (regTwo!32461 r!7292) (regTwo!32460 r!7292)))))))))

(declare-fun b!5927429 () Bool)

(declare-fun e!3628120 () Bool)

(assert (=> b!5927429 (= e!3628126 e!3628120)))

(declare-fun res!2483928 () Bool)

(assert (=> b!5927429 (=> (not res!2483928) (not e!3628120))))

(assert (=> b!5927429 (= res!2483928 call!470313)))

(declare-fun bm!470309 () Bool)

(assert (=> bm!470309 (= call!470312 call!470314)))

(declare-fun b!5927430 () Bool)

(declare-fun e!3628124 () Bool)

(assert (=> b!5927430 (= e!3628124 call!470314)))

(declare-fun b!5927431 () Bool)

(assert (=> b!5927431 (= e!3628123 e!3628124)))

(declare-fun res!2483929 () Bool)

(assert (=> b!5927431 (= res!2483929 (not (nullable!5969 (reg!16303 (ite c!1053430 (reg!16303 r!7292) (ite c!1053431 (regTwo!32461 r!7292) (regTwo!32460 r!7292)))))))))

(assert (=> b!5927431 (=> (not res!2483929) (not e!3628124))))

(declare-fun b!5927432 () Bool)

(assert (=> b!5927432 (= e!3628120 call!470312)))

(assert (= (and d!1858451 (not res!2483930)) b!5927427))

(assert (= (and b!5927427 c!1053590) b!5927431))

(assert (= (and b!5927427 (not c!1053590)) b!5927426))

(assert (= (and b!5927431 res!2483929) b!5927430))

(assert (= (and b!5927426 c!1053591) b!5927425))

(assert (= (and b!5927426 (not c!1053591)) b!5927424))

(assert (= (and b!5927425 res!2483926) b!5927428))

(assert (= (and b!5927424 (not res!2483927)) b!5927429))

(assert (= (and b!5927429 res!2483928) b!5927432))

(assert (= (or b!5927428 b!5927432) bm!470309))

(assert (= (or b!5927425 b!5927429) bm!470308))

(assert (= (or b!5927430 bm!470309) bm!470307))

(declare-fun m!6821042 () Bool)

(assert (=> bm!470307 m!6821042))

(declare-fun m!6821044 () Bool)

(assert (=> bm!470308 m!6821044))

(declare-fun m!6821046 () Bool)

(assert (=> b!5927431 m!6821046))

(assert (=> bm!470213 d!1858451))

(declare-fun d!1858453 () Bool)

(declare-fun res!2483931 () Bool)

(declare-fun e!3628127 () Bool)

(assert (=> d!1858453 (=> res!2483931 e!3628127)))

(assert (=> d!1858453 (= res!2483931 (is-Nil!64098 (exprs!5858 (h!70547 zl!343))))))

(assert (=> d!1858453 (= (forall!15057 (exprs!5858 (h!70547 zl!343)) lambda!323252) e!3628127)))

(declare-fun b!5927433 () Bool)

(declare-fun e!3628128 () Bool)

(assert (=> b!5927433 (= e!3628127 e!3628128)))

(declare-fun res!2483932 () Bool)

(assert (=> b!5927433 (=> (not res!2483932) (not e!3628128))))

(assert (=> b!5927433 (= res!2483932 (dynLambda!25065 lambda!323252 (h!70546 (exprs!5858 (h!70547 zl!343)))))))

(declare-fun b!5927434 () Bool)

(assert (=> b!5927434 (= e!3628128 (forall!15057 (t!377617 (exprs!5858 (h!70547 zl!343))) lambda!323252))))

(assert (= (and d!1858453 (not res!2483931)) b!5927433))

(assert (= (and b!5927433 res!2483932) b!5927434))

(declare-fun b_lambda!222611 () Bool)

(assert (=> (not b_lambda!222611) (not b!5927433)))

(declare-fun m!6821048 () Bool)

(assert (=> b!5927433 m!6821048))

(declare-fun m!6821050 () Bool)

(assert (=> b!5927434 m!6821050))

(assert (=> d!1858277 d!1858453))

(assert (=> bm!470181 d!1858381))

(declare-fun d!1858455 () Bool)

(assert (=> d!1858455 (= (nullable!5969 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098))))) (nullableFct!1941 (h!70546 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098))))))))

(declare-fun bs!1402668 () Bool)

(assert (= bs!1402668 d!1858455))

(declare-fun m!6821052 () Bool)

(assert (=> bs!1402668 m!6821052))

(assert (=> b!5926848 d!1858455))

(declare-fun d!1858457 () Bool)

(declare-fun c!1053592 () Bool)

(declare-fun e!3628130 () Bool)

(assert (=> d!1858457 (= c!1053592 e!3628130)))

(declare-fun res!2483933 () Bool)

(assert (=> d!1858457 (=> (not res!2483933) (not e!3628130))))

(assert (=> d!1858457 (= res!2483933 (is-Cons!64098 (exprs!5858 (Context!10717 (t!377617 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098))))))))))

(declare-fun e!3628129 () (Set Context!10716))

(assert (=> d!1858457 (= (derivationStepZipperUp!1150 (Context!10717 (t!377617 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098))))) (h!70545 s!2326)) e!3628129)))

(declare-fun bm!470310 () Bool)

(declare-fun call!470315 () (Set Context!10716))

(assert (=> bm!470310 (= call!470315 (derivationStepZipperDown!1224 (h!70546 (exprs!5858 (Context!10717 (t!377617 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098))))))) (Context!10717 (t!377617 (exprs!5858 (Context!10717 (t!377617 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098)))))))) (h!70545 s!2326)))))

(declare-fun b!5927435 () Bool)

(declare-fun e!3628131 () (Set Context!10716))

(assert (=> b!5927435 (= e!3628131 (as set.empty (Set Context!10716)))))

(declare-fun b!5927436 () Bool)

(assert (=> b!5927436 (= e!3628131 call!470315)))

(declare-fun b!5927437 () Bool)

(assert (=> b!5927437 (= e!3628130 (nullable!5969 (h!70546 (exprs!5858 (Context!10717 (t!377617 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098)))))))))))

(declare-fun b!5927438 () Bool)

(assert (=> b!5927438 (= e!3628129 e!3628131)))

(declare-fun c!1053593 () Bool)

(assert (=> b!5927438 (= c!1053593 (is-Cons!64098 (exprs!5858 (Context!10717 (t!377617 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098))))))))))

(declare-fun b!5927439 () Bool)

(assert (=> b!5927439 (= e!3628129 (set.union call!470315 (derivationStepZipperUp!1150 (Context!10717 (t!377617 (exprs!5858 (Context!10717 (t!377617 (exprs!5858 (Context!10717 (Cons!64098 r!7292 Nil!64098)))))))) (h!70545 s!2326))))))

(assert (= (and d!1858457 res!2483933) b!5927437))

(assert (= (and d!1858457 c!1053592) b!5927439))

(assert (= (and d!1858457 (not c!1053592)) b!5927438))

(assert (= (and b!5927438 c!1053593) b!5927436))

(assert (= (and b!5927438 (not c!1053593)) b!5927435))

(assert (= (or b!5927439 b!5927436) bm!470310))

(declare-fun m!6821054 () Bool)

(assert (=> bm!470310 m!6821054))

(declare-fun m!6821056 () Bool)

(assert (=> b!5927437 m!6821056))

(declare-fun m!6821058 () Bool)

(assert (=> b!5927439 m!6821058))

(assert (=> b!5926850 d!1858457))

(declare-fun d!1858459 () Bool)

(assert (=> d!1858459 (= (Exists!3044 lambda!323249) (choose!44678 lambda!323249))))

(declare-fun bs!1402669 () Bool)

(assert (= bs!1402669 d!1858459))

(declare-fun m!6821060 () Bool)

(assert (=> bs!1402669 m!6821060))

(assert (=> d!1858269 d!1858459))

(declare-fun d!1858461 () Bool)

(assert (=> d!1858461 (= (Exists!3044 lambda!323250) (choose!44678 lambda!323250))))

(declare-fun bs!1402670 () Bool)

(assert (= bs!1402670 d!1858461))

(declare-fun m!6821062 () Bool)

(assert (=> bs!1402670 m!6821062))

(assert (=> d!1858269 d!1858461))

(declare-fun bs!1402671 () Bool)

(declare-fun d!1858463 () Bool)

(assert (= bs!1402671 (and d!1858463 b!5926612)))

(declare-fun lambda!323307 () Int)

(assert (=> bs!1402671 (not (= lambda!323307 lambda!323239))))

(declare-fun bs!1402672 () Bool)

(assert (= bs!1402672 (and d!1858463 b!5927272)))

(assert (=> bs!1402672 (not (= lambda!323307 lambda!323295))))

(declare-fun bs!1402673 () Bool)

(assert (= bs!1402673 (and d!1858463 d!1858417)))

(assert (=> bs!1402673 (= lambda!323307 lambda!323301)))

(declare-fun bs!1402674 () Bool)

(assert (= bs!1402674 (and d!1858463 b!5927216)))

(assert (=> bs!1402674 (not (= lambda!323307 lambda!323292))))

(declare-fun bs!1402675 () Bool)

(assert (= bs!1402675 (and d!1858463 b!5926603)))

(assert (=> bs!1402675 (not (= lambda!323307 lambda!323238))))

(declare-fun bs!1402676 () Bool)

(assert (= bs!1402676 (and d!1858463 b!5927281)))

(assert (=> bs!1402676 (not (= lambda!323307 lambda!323296))))

(declare-fun bs!1402677 () Bool)

(assert (= bs!1402677 (and d!1858463 b!5926417)))

(assert (=> bs!1402677 (= lambda!323307 lambda!323213)))

(declare-fun bs!1402678 () Bool)

(assert (= bs!1402678 (and d!1858463 d!1858269)))

(assert (=> bs!1402678 (not (= lambda!323307 lambda!323250))))

(assert (=> bs!1402677 (not (= lambda!323307 lambda!323214))))

(declare-fun bs!1402679 () Bool)

(assert (= bs!1402679 (and d!1858463 d!1858265)))

(assert (=> bs!1402679 (= lambda!323307 lambda!323242)))

(declare-fun bs!1402680 () Bool)

(assert (= bs!1402680 (and d!1858463 b!5927207)))

(assert (=> bs!1402680 (not (= lambda!323307 lambda!323291))))

(assert (=> bs!1402678 (= lambda!323307 lambda!323249)))

(assert (=> d!1858463 true))

(assert (=> d!1858463 true))

(assert (=> d!1858463 true))

(declare-fun lambda!323308 () Int)

(assert (=> bs!1402671 (= lambda!323308 lambda!323239)))

(assert (=> bs!1402672 (not (= lambda!323308 lambda!323295))))

(assert (=> bs!1402673 (not (= lambda!323308 lambda!323301))))

(assert (=> bs!1402674 (= (and (= (regOne!32460 r!7292) (regOne!32460 (regTwo!32461 r!7292))) (= (regTwo!32460 r!7292) (regTwo!32460 (regTwo!32461 r!7292)))) (= lambda!323308 lambda!323292))))

(assert (=> bs!1402676 (= (and (= (regOne!32460 r!7292) (regOne!32460 (regOne!32461 r!7292))) (= (regTwo!32460 r!7292) (regTwo!32460 (regOne!32461 r!7292)))) (= lambda!323308 lambda!323296))))

(assert (=> bs!1402677 (not (= lambda!323308 lambda!323213))))

(assert (=> bs!1402678 (= lambda!323308 lambda!323250)))

(assert (=> bs!1402677 (= lambda!323308 lambda!323214)))

(assert (=> bs!1402679 (not (= lambda!323308 lambda!323242))))

(assert (=> bs!1402680 (not (= lambda!323308 lambda!323291))))

(assert (=> bs!1402678 (not (= lambda!323308 lambda!323249))))

(assert (=> bs!1402675 (not (= lambda!323308 lambda!323238))))

(declare-fun bs!1402681 () Bool)

(assert (= bs!1402681 d!1858463))

(assert (=> bs!1402681 (not (= lambda!323308 lambda!323307))))

(assert (=> d!1858463 true))

(assert (=> d!1858463 true))

(assert (=> d!1858463 true))

(assert (=> d!1858463 (= (Exists!3044 lambda!323307) (Exists!3044 lambda!323308))))

(assert (=> d!1858463 true))

(declare-fun _$90!1599 () Unit!157219)

(assert (=> d!1858463 (= (choose!44680 (regOne!32460 r!7292) (regTwo!32460 r!7292) s!2326) _$90!1599)))

(declare-fun m!6821064 () Bool)

(assert (=> bs!1402681 m!6821064))

(declare-fun m!6821066 () Bool)

(assert (=> bs!1402681 m!6821066))

(assert (=> d!1858269 d!1858463))

(assert (=> d!1858269 d!1858411))

(declare-fun d!1858465 () Bool)

(declare-fun res!2483946 () Bool)

(declare-fun e!3628140 () Bool)

(assert (=> d!1858465 (=> res!2483946 e!3628140)))

(assert (=> d!1858465 (= res!2483946 (is-Nil!64099 lt!2310388))))

(assert (=> d!1858465 (= (noDuplicate!1832 lt!2310388) e!3628140)))

(declare-fun b!5927452 () Bool)

(declare-fun e!3628141 () Bool)

(assert (=> b!5927452 (= e!3628140 e!3628141)))

(declare-fun res!2483947 () Bool)

(assert (=> b!5927452 (=> (not res!2483947) (not e!3628141))))

(declare-fun contains!19960 (List!64223 Context!10716) Bool)

(assert (=> b!5927452 (= res!2483947 (not (contains!19960 (t!377618 lt!2310388) (h!70547 lt!2310388))))))

(declare-fun b!5927453 () Bool)

(assert (=> b!5927453 (= e!3628141 (noDuplicate!1832 (t!377618 lt!2310388)))))

(assert (= (and d!1858465 (not res!2483946)) b!5927452))

(assert (= (and b!5927452 res!2483947) b!5927453))

(declare-fun m!6821068 () Bool)

(assert (=> b!5927452 m!6821068))

(declare-fun m!6821070 () Bool)

(assert (=> b!5927453 m!6821070))

(assert (=> d!1858245 d!1858465))

(declare-fun d!1858467 () Bool)

(declare-fun e!3628148 () Bool)

(assert (=> d!1858467 e!3628148))

(declare-fun res!2483953 () Bool)

(assert (=> d!1858467 (=> (not res!2483953) (not e!3628148))))

(declare-fun res!2483952 () List!64223)

(assert (=> d!1858467 (= res!2483953 (noDuplicate!1832 res!2483952))))

(declare-fun e!3628149 () Bool)

(assert (=> d!1858467 e!3628149))

(assert (=> d!1858467 (= (choose!44676 z!1189) res!2483952)))

(declare-fun b!5927461 () Bool)

(declare-fun e!3628150 () Bool)

(declare-fun tp!1648345 () Bool)

(assert (=> b!5927461 (= e!3628150 tp!1648345)))

(declare-fun tp!1648346 () Bool)

(declare-fun b!5927460 () Bool)

(assert (=> b!5927460 (= e!3628149 (and (inv!83183 (h!70547 res!2483952)) e!3628150 tp!1648346))))

(declare-fun b!5927462 () Bool)

(assert (=> b!5927462 (= e!3628148 (= (content!11807 res!2483952) z!1189))))

(assert (= b!5927460 b!5927461))

(assert (= (and d!1858467 (is-Cons!64099 res!2483952)) b!5927460))

(assert (= (and d!1858467 res!2483953) b!5927462))

(declare-fun m!6821072 () Bool)

(assert (=> d!1858467 m!6821072))

(declare-fun m!6821074 () Bool)

(assert (=> b!5927460 m!6821074))

(declare-fun m!6821076 () Bool)

(assert (=> b!5927462 m!6821076))

(assert (=> d!1858245 d!1858467))

(declare-fun d!1858469 () Bool)

(assert (=> d!1858469 (= (head!12490 s!2326) (h!70545 s!2326))))

(assert (=> b!5926666 d!1858469))

(assert (=> b!5926665 d!1858469))

(declare-fun bm!470311 () Bool)

(declare-fun c!1053595 () Bool)

(declare-fun call!470318 () Bool)

(declare-fun c!1053594 () Bool)

(assert (=> bm!470311 (= call!470318 (validRegex!7710 (ite c!1053594 (reg!16303 lt!2310433) (ite c!1053595 (regTwo!32461 lt!2310433) (regTwo!32460 lt!2310433)))))))

(declare-fun b!5927463 () Bool)

(declare-fun res!2483955 () Bool)

(declare-fun e!3628157 () Bool)

(assert (=> b!5927463 (=> res!2483955 e!3628157)))

(assert (=> b!5927463 (= res!2483955 (not (is-Concat!24819 lt!2310433)))))

(declare-fun e!3628152 () Bool)

(assert (=> b!5927463 (= e!3628152 e!3628157)))

(declare-fun b!5927464 () Bool)

(declare-fun res!2483954 () Bool)

(declare-fun e!3628153 () Bool)

(assert (=> b!5927464 (=> (not res!2483954) (not e!3628153))))

(declare-fun call!470317 () Bool)

(assert (=> b!5927464 (= res!2483954 call!470317)))

(assert (=> b!5927464 (= e!3628152 e!3628153)))

(declare-fun b!5927465 () Bool)

(declare-fun e!3628154 () Bool)

(assert (=> b!5927465 (= e!3628154 e!3628152)))

(assert (=> b!5927465 (= c!1053595 (is-Union!15974 lt!2310433))))

(declare-fun b!5927466 () Bool)

(declare-fun e!3628156 () Bool)

(assert (=> b!5927466 (= e!3628156 e!3628154)))

(assert (=> b!5927466 (= c!1053594 (is-Star!15974 lt!2310433))))

(declare-fun b!5927467 () Bool)

(declare-fun call!470316 () Bool)

(assert (=> b!5927467 (= e!3628153 call!470316)))

(declare-fun d!1858471 () Bool)

(declare-fun res!2483958 () Bool)

(assert (=> d!1858471 (=> res!2483958 e!3628156)))

(assert (=> d!1858471 (= res!2483958 (is-ElementMatch!15974 lt!2310433))))

(assert (=> d!1858471 (= (validRegex!7710 lt!2310433) e!3628156)))

(declare-fun bm!470312 () Bool)

(assert (=> bm!470312 (= call!470317 (validRegex!7710 (ite c!1053595 (regOne!32461 lt!2310433) (regOne!32460 lt!2310433))))))

(declare-fun b!5927468 () Bool)

(declare-fun e!3628151 () Bool)

(assert (=> b!5927468 (= e!3628157 e!3628151)))

(declare-fun res!2483956 () Bool)

(assert (=> b!5927468 (=> (not res!2483956) (not e!3628151))))

(assert (=> b!5927468 (= res!2483956 call!470317)))

(declare-fun bm!470313 () Bool)

(assert (=> bm!470313 (= call!470316 call!470318)))

(declare-fun b!5927469 () Bool)

(declare-fun e!3628155 () Bool)

(assert (=> b!5927469 (= e!3628155 call!470318)))

(declare-fun b!5927470 () Bool)

(assert (=> b!5927470 (= e!3628154 e!3628155)))

(declare-fun res!2483957 () Bool)

(assert (=> b!5927470 (= res!2483957 (not (nullable!5969 (reg!16303 lt!2310433))))))

(assert (=> b!5927470 (=> (not res!2483957) (not e!3628155))))

(declare-fun b!5927471 () Bool)

(assert (=> b!5927471 (= e!3628151 call!470316)))

(assert (= (and d!1858471 (not res!2483958)) b!5927466))

(assert (= (and b!5927466 c!1053594) b!5927470))

(assert (= (and b!5927466 (not c!1053594)) b!5927465))

(assert (= (and b!5927470 res!2483957) b!5927469))

(assert (= (and b!5927465 c!1053595) b!5927464))

(assert (= (and b!5927465 (not c!1053595)) b!5927463))

(assert (= (and b!5927464 res!2483954) b!5927467))

(assert (= (and b!5927463 (not res!2483955)) b!5927468))

(assert (= (and b!5927468 res!2483956) b!5927471))

(assert (= (or b!5927467 b!5927471) bm!470313))

(assert (= (or b!5927464 b!5927468) bm!470312))

(assert (= (or b!5927469 bm!470313) bm!470311))

(declare-fun m!6821078 () Bool)

(assert (=> bm!470311 m!6821078))

(declare-fun m!6821080 () Bool)

(assert (=> bm!470312 m!6821080))

(declare-fun m!6821082 () Bool)

(assert (=> b!5927470 m!6821082))

(assert (=> d!1858297 d!1858471))

(assert (=> d!1858297 d!1858293))

(assert (=> d!1858297 d!1858295))

(declare-fun d!1858473 () Bool)

(assert (=> d!1858473 (= (isEmpty!35959 (tail!11574 (unfocusZipperList!1395 zl!343))) (is-Nil!64098 (tail!11574 (unfocusZipperList!1395 zl!343))))))

(assert (=> b!5926885 d!1858473))

(declare-fun d!1858475 () Bool)

(assert (=> d!1858475 (= (tail!11574 (unfocusZipperList!1395 zl!343)) (t!377617 (unfocusZipperList!1395 zl!343)))))

(assert (=> b!5926885 d!1858475))

(declare-fun d!1858477 () Bool)

(assert (=> d!1858477 (= (Exists!3044 (ite c!1053372 lambda!323238 lambda!323239)) (choose!44678 (ite c!1053372 lambda!323238 lambda!323239)))))

(declare-fun bs!1402682 () Bool)

(assert (= bs!1402682 d!1858477))

(declare-fun m!6821084 () Bool)

(assert (=> bs!1402682 m!6821084))

(assert (=> bm!470182 d!1858477))

(declare-fun d!1858479 () Bool)

(declare-fun res!2483959 () Bool)

(declare-fun e!3628158 () Bool)

(assert (=> d!1858479 (=> res!2483959 e!3628158)))

(assert (=> d!1858479 (= res!2483959 (is-Nil!64098 (exprs!5858 (Context!10717 lt!2310343))))))

(assert (=> d!1858479 (= (forall!15057 (exprs!5858 (Context!10717 lt!2310343)) lambda!323232) e!3628158)))

(declare-fun b!5927472 () Bool)

(declare-fun e!3628159 () Bool)

(assert (=> b!5927472 (= e!3628158 e!3628159)))

(declare-fun res!2483960 () Bool)

(assert (=> b!5927472 (=> (not res!2483960) (not e!3628159))))

(assert (=> b!5927472 (= res!2483960 (dynLambda!25065 lambda!323232 (h!70546 (exprs!5858 (Context!10717 lt!2310343)))))))

(declare-fun b!5927473 () Bool)

(assert (=> b!5927473 (= e!3628159 (forall!15057 (t!377617 (exprs!5858 (Context!10717 lt!2310343))) lambda!323232))))

(assert (= (and d!1858479 (not res!2483959)) b!5927472))

(assert (= (and b!5927472 res!2483960) b!5927473))

(declare-fun b_lambda!222613 () Bool)

(assert (=> (not b_lambda!222613) (not b!5927472)))

(declare-fun m!6821086 () Bool)

(assert (=> b!5927472 m!6821086))

(declare-fun m!6821088 () Bool)

(assert (=> b!5927473 m!6821088))

(assert (=> d!1858241 d!1858479))

(declare-fun d!1858481 () Bool)

(assert (=> d!1858481 (= (isUnion!841 lt!2310427) (is-Union!15974 lt!2310427))))

(assert (=> b!5926881 d!1858481))

(declare-fun d!1858483 () Bool)

(declare-fun c!1053598 () Bool)

(assert (=> d!1858483 (= c!1053598 (is-Nil!64099 lt!2310388))))

(declare-fun e!3628162 () (Set Context!10716))

(assert (=> d!1858483 (= (content!11807 lt!2310388) e!3628162)))

(declare-fun b!5927478 () Bool)

(assert (=> b!5927478 (= e!3628162 (as set.empty (Set Context!10716)))))

(declare-fun b!5927479 () Bool)

(assert (=> b!5927479 (= e!3628162 (set.union (set.insert (h!70547 lt!2310388) (as set.empty (Set Context!10716))) (content!11807 (t!377618 lt!2310388))))))

(assert (= (and d!1858483 c!1053598) b!5927478))

(assert (= (and d!1858483 (not c!1053598)) b!5927479))

(declare-fun m!6821090 () Bool)

(assert (=> b!5927479 m!6821090))

(declare-fun m!6821092 () Bool)

(assert (=> b!5927479 m!6821092))

(assert (=> b!5926570 d!1858483))

(declare-fun d!1858485 () Bool)

(assert (=> d!1858485 (= ($colon$colon!1861 (exprs!5858 (Context!10717 Nil!64098)) (ite (or c!1053451 c!1053449) (regTwo!32460 r!7292) r!7292)) (Cons!64098 (ite (or c!1053451 c!1053449) (regTwo!32460 r!7292) r!7292) (exprs!5858 (Context!10717 Nil!64098))))))

(assert (=> bm!470231 d!1858485))

(declare-fun d!1858487 () Bool)

(declare-fun res!2483961 () Bool)

(declare-fun e!3628163 () Bool)

(assert (=> d!1858487 (=> res!2483961 e!3628163)))

(assert (=> d!1858487 (= res!2483961 (is-Nil!64098 (exprs!5858 setElem!40219)))))

(assert (=> d!1858487 (= (forall!15057 (exprs!5858 setElem!40219) lambda!323233) e!3628163)))

(declare-fun b!5927480 () Bool)

(declare-fun e!3628164 () Bool)

(assert (=> b!5927480 (= e!3628163 e!3628164)))

(declare-fun res!2483962 () Bool)

(assert (=> b!5927480 (=> (not res!2483962) (not e!3628164))))

(assert (=> b!5927480 (= res!2483962 (dynLambda!25065 lambda!323233 (h!70546 (exprs!5858 setElem!40219))))))

(declare-fun b!5927481 () Bool)

(assert (=> b!5927481 (= e!3628164 (forall!15057 (t!377617 (exprs!5858 setElem!40219)) lambda!323233))))

(assert (= (and d!1858487 (not res!2483961)) b!5927480))

(assert (= (and b!5927480 res!2483962) b!5927481))

(declare-fun b_lambda!222615 () Bool)

(assert (=> (not b_lambda!222615) (not b!5927480)))

(declare-fun m!6821094 () Bool)

(assert (=> b!5927480 m!6821094))

(declare-fun m!6821096 () Bool)

(assert (=> b!5927481 m!6821096))

(assert (=> d!1858247 d!1858487))

(declare-fun d!1858489 () Bool)

(assert (=> d!1858489 (= (head!12489 (unfocusZipperList!1395 zl!343)) (h!70546 (unfocusZipperList!1395 zl!343)))))

(assert (=> b!5926889 d!1858489))

(assert (=> b!5926546 d!1858239))

(assert (=> d!1858255 d!1858253))

(assert (=> d!1858255 d!1858249))

(declare-fun d!1858491 () Bool)

(assert (=> d!1858491 (= (matchR!8157 r!7292 s!2326) (matchRSpec!3075 r!7292 s!2326))))

(assert (=> d!1858491 true))

(declare-fun _$88!4413 () Unit!157219)

(assert (=> d!1858491 (= (choose!44677 r!7292 s!2326) _$88!4413)))

(declare-fun bs!1402683 () Bool)

(assert (= bs!1402683 d!1858491))

(assert (=> bs!1402683 m!6820330))

(assert (=> bs!1402683 m!6820328))

(assert (=> d!1858255 d!1858491))

(assert (=> d!1858255 d!1858273))

(declare-fun b!5927482 () Bool)

(declare-fun e!3628167 () Bool)

(declare-fun lt!2310478 () Bool)

(assert (=> b!5927482 (= e!3628167 (not lt!2310478))))

(declare-fun b!5927483 () Bool)

(declare-fun e!3628165 () Bool)

(assert (=> b!5927483 (= e!3628165 (= (head!12490 (tail!11575 s!2326)) (c!1053341 (derivativeStep!4705 r!7292 (head!12490 s!2326)))))))

(declare-fun bm!470314 () Bool)

(declare-fun call!470319 () Bool)

(assert (=> bm!470314 (= call!470319 (isEmpty!35963 (tail!11575 s!2326)))))

(declare-fun b!5927484 () Bool)

(declare-fun e!3628169 () Bool)

(assert (=> b!5927484 (= e!3628169 (not (= (head!12490 (tail!11575 s!2326)) (c!1053341 (derivativeStep!4705 r!7292 (head!12490 s!2326))))))))

(declare-fun d!1858493 () Bool)

(declare-fun e!3628171 () Bool)

(assert (=> d!1858493 e!3628171))

(declare-fun c!1053601 () Bool)

(assert (=> d!1858493 (= c!1053601 (is-EmptyExpr!15974 (derivativeStep!4705 r!7292 (head!12490 s!2326))))))

(declare-fun e!3628168 () Bool)

(assert (=> d!1858493 (= lt!2310478 e!3628168)))

(declare-fun c!1053599 () Bool)

(assert (=> d!1858493 (= c!1053599 (isEmpty!35963 (tail!11575 s!2326)))))

(assert (=> d!1858493 (validRegex!7710 (derivativeStep!4705 r!7292 (head!12490 s!2326)))))

(assert (=> d!1858493 (= (matchR!8157 (derivativeStep!4705 r!7292 (head!12490 s!2326)) (tail!11575 s!2326)) lt!2310478)))

(declare-fun b!5927485 () Bool)

(declare-fun res!2483965 () Bool)

(declare-fun e!3628166 () Bool)

(assert (=> b!5927485 (=> res!2483965 e!3628166)))

(assert (=> b!5927485 (= res!2483965 e!3628165)))

(declare-fun res!2483969 () Bool)

(assert (=> b!5927485 (=> (not res!2483969) (not e!3628165))))

(assert (=> b!5927485 (= res!2483969 lt!2310478)))

(declare-fun b!5927486 () Bool)

(declare-fun res!2483963 () Bool)

(assert (=> b!5927486 (=> res!2483963 e!3628166)))

(assert (=> b!5927486 (= res!2483963 (not (is-ElementMatch!15974 (derivativeStep!4705 r!7292 (head!12490 s!2326)))))))

(assert (=> b!5927486 (= e!3628167 e!3628166)))

(declare-fun b!5927487 () Bool)

(declare-fun res!2483967 () Bool)

(assert (=> b!5927487 (=> (not res!2483967) (not e!3628165))))

(assert (=> b!5927487 (= res!2483967 (not call!470319))))

(declare-fun b!5927488 () Bool)

(assert (=> b!5927488 (= e!3628168 (matchR!8157 (derivativeStep!4705 (derivativeStep!4705 r!7292 (head!12490 s!2326)) (head!12490 (tail!11575 s!2326))) (tail!11575 (tail!11575 s!2326))))))

(declare-fun b!5927489 () Bool)

(declare-fun res!2483964 () Bool)

(assert (=> b!5927489 (=> res!2483964 e!3628169)))

(assert (=> b!5927489 (= res!2483964 (not (isEmpty!35963 (tail!11575 (tail!11575 s!2326)))))))

(declare-fun b!5927490 () Bool)

(declare-fun e!3628170 () Bool)

(assert (=> b!5927490 (= e!3628166 e!3628170)))

(declare-fun res!2483970 () Bool)

(assert (=> b!5927490 (=> (not res!2483970) (not e!3628170))))

(assert (=> b!5927490 (= res!2483970 (not lt!2310478))))

(declare-fun b!5927491 () Bool)

(assert (=> b!5927491 (= e!3628168 (nullable!5969 (derivativeStep!4705 r!7292 (head!12490 s!2326))))))

(declare-fun b!5927492 () Bool)

(assert (=> b!5927492 (= e!3628171 e!3628167)))

(declare-fun c!1053600 () Bool)

(assert (=> b!5927492 (= c!1053600 (is-EmptyLang!15974 (derivativeStep!4705 r!7292 (head!12490 s!2326))))))

(declare-fun b!5927493 () Bool)

(assert (=> b!5927493 (= e!3628171 (= lt!2310478 call!470319))))

(declare-fun b!5927494 () Bool)

(assert (=> b!5927494 (= e!3628170 e!3628169)))

(declare-fun res!2483966 () Bool)

(assert (=> b!5927494 (=> res!2483966 e!3628169)))

(assert (=> b!5927494 (= res!2483966 call!470319)))

(declare-fun b!5927495 () Bool)

(declare-fun res!2483968 () Bool)

(assert (=> b!5927495 (=> (not res!2483968) (not e!3628165))))

(assert (=> b!5927495 (= res!2483968 (isEmpty!35963 (tail!11575 (tail!11575 s!2326))))))

(assert (= (and d!1858493 c!1053599) b!5927491))

(assert (= (and d!1858493 (not c!1053599)) b!5927488))

(assert (= (and d!1858493 c!1053601) b!5927493))

(assert (= (and d!1858493 (not c!1053601)) b!5927492))

(assert (= (and b!5927492 c!1053600) b!5927482))

(assert (= (and b!5927492 (not c!1053600)) b!5927486))

(assert (= (and b!5927486 (not res!2483963)) b!5927485))

(assert (= (and b!5927485 res!2483969) b!5927487))

(assert (= (and b!5927487 res!2483967) b!5927495))

(assert (= (and b!5927495 res!2483968) b!5927483))

(assert (= (and b!5927485 (not res!2483965)) b!5927490))

(assert (= (and b!5927490 res!2483970) b!5927494))

(assert (= (and b!5927494 (not res!2483966)) b!5927489))

(assert (= (and b!5927489 (not res!2483964)) b!5927484))

(assert (= (or b!5927493 b!5927487 b!5927494) bm!470314))

(assert (=> b!5927489 m!6820478))

(declare-fun m!6821098 () Bool)

(assert (=> b!5927489 m!6821098))

(assert (=> b!5927489 m!6821098))

(declare-fun m!6821100 () Bool)

(assert (=> b!5927489 m!6821100))

(assert (=> b!5927488 m!6820478))

(declare-fun m!6821102 () Bool)

(assert (=> b!5927488 m!6821102))

(assert (=> b!5927488 m!6820484))

(assert (=> b!5927488 m!6821102))

(declare-fun m!6821104 () Bool)

(assert (=> b!5927488 m!6821104))

(assert (=> b!5927488 m!6820478))

(assert (=> b!5927488 m!6821098))

(assert (=> b!5927488 m!6821104))

(assert (=> b!5927488 m!6821098))

(declare-fun m!6821106 () Bool)

(assert (=> b!5927488 m!6821106))

(assert (=> b!5927484 m!6820478))

(assert (=> b!5927484 m!6821102))

(assert (=> b!5927495 m!6820478))

(assert (=> b!5927495 m!6821098))

(assert (=> b!5927495 m!6821098))

(assert (=> b!5927495 m!6821100))

(assert (=> b!5927491 m!6820484))

(declare-fun m!6821108 () Bool)

(assert (=> b!5927491 m!6821108))

(assert (=> d!1858493 m!6820478))

(assert (=> d!1858493 m!6820480))

(assert (=> d!1858493 m!6820484))

(declare-fun m!6821110 () Bool)

(assert (=> d!1858493 m!6821110))

(assert (=> b!5927483 m!6820478))

(assert (=> b!5927483 m!6821102))

(assert (=> bm!470314 m!6820478))

(assert (=> bm!470314 m!6820480))

(assert (=> b!5926670 d!1858493))

(declare-fun b!5927516 () Bool)

(declare-fun e!3628183 () Regex!15974)

(assert (=> b!5927516 (= e!3628183 (ite (= (head!12490 s!2326) (c!1053341 r!7292)) EmptyExpr!15974 EmptyLang!15974))))

(declare-fun b!5927517 () Bool)

(declare-fun c!1053616 () Bool)

(assert (=> b!5927517 (= c!1053616 (is-Union!15974 r!7292))))

(declare-fun e!3628185 () Regex!15974)

(assert (=> b!5927517 (= e!3628183 e!3628185)))

(declare-fun bm!470323 () Bool)

(declare-fun call!470329 () Regex!15974)

(assert (=> bm!470323 (= call!470329 (derivativeStep!4705 (ite c!1053616 (regTwo!32461 r!7292) (regOne!32460 r!7292)) (head!12490 s!2326)))))

(declare-fun b!5927518 () Bool)

(declare-fun e!3628182 () Regex!15974)

(assert (=> b!5927518 (= e!3628185 e!3628182)))

(declare-fun c!1053614 () Bool)

(assert (=> b!5927518 (= c!1053614 (is-Star!15974 r!7292))))

(declare-fun bm!470324 () Bool)

(declare-fun call!470328 () Regex!15974)

(declare-fun call!470331 () Regex!15974)

(assert (=> bm!470324 (= call!470328 call!470331)))

(declare-fun bm!470325 () Bool)

(declare-fun call!470330 () Regex!15974)

(assert (=> bm!470325 (= call!470330 call!470328)))

(declare-fun b!5927519 () Bool)

(assert (=> b!5927519 (= e!3628185 (Union!15974 call!470331 call!470329))))

(declare-fun d!1858495 () Bool)

(declare-fun lt!2310481 () Regex!15974)

(assert (=> d!1858495 (validRegex!7710 lt!2310481)))

(declare-fun e!3628184 () Regex!15974)

(assert (=> d!1858495 (= lt!2310481 e!3628184)))

(declare-fun c!1053615 () Bool)

(assert (=> d!1858495 (= c!1053615 (or (is-EmptyExpr!15974 r!7292) (is-EmptyLang!15974 r!7292)))))

(assert (=> d!1858495 (validRegex!7710 r!7292)))

(assert (=> d!1858495 (= (derivativeStep!4705 r!7292 (head!12490 s!2326)) lt!2310481)))

(declare-fun b!5927520 () Bool)

(declare-fun e!3628186 () Regex!15974)

(assert (=> b!5927520 (= e!3628186 (Union!15974 (Concat!24819 call!470329 (regTwo!32460 r!7292)) call!470330))))

(declare-fun b!5927521 () Bool)

(assert (=> b!5927521 (= e!3628184 e!3628183)))

(declare-fun c!1053613 () Bool)

(assert (=> b!5927521 (= c!1053613 (is-ElementMatch!15974 r!7292))))

(declare-fun b!5927522 () Bool)

(assert (=> b!5927522 (= e!3628186 (Union!15974 (Concat!24819 call!470330 (regTwo!32460 r!7292)) EmptyLang!15974))))

(declare-fun b!5927523 () Bool)

(declare-fun c!1053612 () Bool)

(assert (=> b!5927523 (= c!1053612 (nullable!5969 (regOne!32460 r!7292)))))

(assert (=> b!5927523 (= e!3628182 e!3628186)))

(declare-fun b!5927524 () Bool)

(assert (=> b!5927524 (= e!3628184 EmptyLang!15974)))

(declare-fun bm!470326 () Bool)

(assert (=> bm!470326 (= call!470331 (derivativeStep!4705 (ite c!1053616 (regOne!32461 r!7292) (ite c!1053614 (reg!16303 r!7292) (ite c!1053612 (regTwo!32460 r!7292) (regOne!32460 r!7292)))) (head!12490 s!2326)))))

(declare-fun b!5927525 () Bool)

(assert (=> b!5927525 (= e!3628182 (Concat!24819 call!470328 r!7292))))

(assert (= (and d!1858495 c!1053615) b!5927524))

(assert (= (and d!1858495 (not c!1053615)) b!5927521))

(assert (= (and b!5927521 c!1053613) b!5927516))

(assert (= (and b!5927521 (not c!1053613)) b!5927517))

(assert (= (and b!5927517 c!1053616) b!5927519))

(assert (= (and b!5927517 (not c!1053616)) b!5927518))

(assert (= (and b!5927518 c!1053614) b!5927525))

(assert (= (and b!5927518 (not c!1053614)) b!5927523))

(assert (= (and b!5927523 c!1053612) b!5927520))

(assert (= (and b!5927523 (not c!1053612)) b!5927522))

(assert (= (or b!5927520 b!5927522) bm!470325))

(assert (= (or b!5927525 bm!470325) bm!470324))

(assert (= (or b!5927519 b!5927520) bm!470323))

(assert (= (or b!5927519 bm!470324) bm!470326))

(assert (=> bm!470323 m!6820482))

(declare-fun m!6821112 () Bool)

(assert (=> bm!470323 m!6821112))

(declare-fun m!6821114 () Bool)

(assert (=> d!1858495 m!6821114))

(assert (=> d!1858495 m!6820360))

(assert (=> b!5927523 m!6820602))

(assert (=> bm!470326 m!6820482))

(declare-fun m!6821116 () Bool)

(assert (=> bm!470326 m!6821116))

(assert (=> b!5926670 d!1858495))

(assert (=> b!5926670 d!1858469))

(assert (=> b!5926670 d!1858351))

(declare-fun d!1858497 () Bool)

(assert (=> d!1858497 (= (flatMap!1487 z!1189 lambda!323257) (choose!44681 z!1189 lambda!323257))))

(declare-fun bs!1402684 () Bool)

(assert (= bs!1402684 d!1858497))

(declare-fun m!6821118 () Bool)

(assert (=> bs!1402684 m!6821118))

(assert (=> d!1858279 d!1858497))

(declare-fun d!1858499 () Bool)

(assert (=> d!1858499 (= (isEmptyLang!1411 lt!2310427) (is-EmptyLang!15974 lt!2310427))))

(assert (=> b!5926887 d!1858499))

(declare-fun b!5927526 () Bool)

(declare-fun e!3628189 () Bool)

(declare-fun lt!2310482 () Bool)

(assert (=> b!5927526 (= e!3628189 (not lt!2310482))))

(declare-fun b!5927527 () Bool)

(declare-fun e!3628187 () Bool)

(assert (=> b!5927527 (= e!3628187 (= (head!12490 (_1!36256 (get!22074 lt!2310402))) (c!1053341 (regOne!32460 r!7292))))))

(declare-fun bm!470327 () Bool)

(declare-fun call!470332 () Bool)

(assert (=> bm!470327 (= call!470332 (isEmpty!35963 (_1!36256 (get!22074 lt!2310402))))))

(declare-fun b!5927528 () Bool)

(declare-fun e!3628191 () Bool)

(assert (=> b!5927528 (= e!3628191 (not (= (head!12490 (_1!36256 (get!22074 lt!2310402))) (c!1053341 (regOne!32460 r!7292)))))))

(declare-fun d!1858501 () Bool)

(declare-fun e!3628193 () Bool)

(assert (=> d!1858501 e!3628193))

(declare-fun c!1053619 () Bool)

(assert (=> d!1858501 (= c!1053619 (is-EmptyExpr!15974 (regOne!32460 r!7292)))))

(declare-fun e!3628190 () Bool)

(assert (=> d!1858501 (= lt!2310482 e!3628190)))

(declare-fun c!1053617 () Bool)

(assert (=> d!1858501 (= c!1053617 (isEmpty!35963 (_1!36256 (get!22074 lt!2310402))))))

(assert (=> d!1858501 (validRegex!7710 (regOne!32460 r!7292))))

(assert (=> d!1858501 (= (matchR!8157 (regOne!32460 r!7292) (_1!36256 (get!22074 lt!2310402))) lt!2310482)))

(declare-fun b!5927529 () Bool)

(declare-fun res!2483973 () Bool)

(declare-fun e!3628188 () Bool)

(assert (=> b!5927529 (=> res!2483973 e!3628188)))

(assert (=> b!5927529 (= res!2483973 e!3628187)))

(declare-fun res!2483977 () Bool)

(assert (=> b!5927529 (=> (not res!2483977) (not e!3628187))))

(assert (=> b!5927529 (= res!2483977 lt!2310482)))

(declare-fun b!5927530 () Bool)

(declare-fun res!2483971 () Bool)

(assert (=> b!5927530 (=> res!2483971 e!3628188)))

(assert (=> b!5927530 (= res!2483971 (not (is-ElementMatch!15974 (regOne!32460 r!7292))))))

(assert (=> b!5927530 (= e!3628189 e!3628188)))

(declare-fun b!5927531 () Bool)

(declare-fun res!2483975 () Bool)

(assert (=> b!5927531 (=> (not res!2483975) (not e!3628187))))

(assert (=> b!5927531 (= res!2483975 (not call!470332))))

(declare-fun b!5927532 () Bool)

(assert (=> b!5927532 (= e!3628190 (matchR!8157 (derivativeStep!4705 (regOne!32460 r!7292) (head!12490 (_1!36256 (get!22074 lt!2310402)))) (tail!11575 (_1!36256 (get!22074 lt!2310402)))))))

(declare-fun b!5927533 () Bool)

(declare-fun res!2483972 () Bool)

(assert (=> b!5927533 (=> res!2483972 e!3628191)))

(assert (=> b!5927533 (= res!2483972 (not (isEmpty!35963 (tail!11575 (_1!36256 (get!22074 lt!2310402))))))))

(declare-fun b!5927534 () Bool)

(declare-fun e!3628192 () Bool)

(assert (=> b!5927534 (= e!3628188 e!3628192)))

(declare-fun res!2483978 () Bool)

(assert (=> b!5927534 (=> (not res!2483978) (not e!3628192))))

(assert (=> b!5927534 (= res!2483978 (not lt!2310482))))

(declare-fun b!5927535 () Bool)

(assert (=> b!5927535 (= e!3628190 (nullable!5969 (regOne!32460 r!7292)))))

(declare-fun b!5927536 () Bool)

(assert (=> b!5927536 (= e!3628193 e!3628189)))

(declare-fun c!1053618 () Bool)

(assert (=> b!5927536 (= c!1053618 (is-EmptyLang!15974 (regOne!32460 r!7292)))))

(declare-fun b!5927537 () Bool)

(assert (=> b!5927537 (= e!3628193 (= lt!2310482 call!470332))))

(declare-fun b!5927538 () Bool)

(assert (=> b!5927538 (= e!3628192 e!3628191)))

(declare-fun res!2483974 () Bool)

(assert (=> b!5927538 (=> res!2483974 e!3628191)))

(assert (=> b!5927538 (= res!2483974 call!470332)))

(declare-fun b!5927539 () Bool)

(declare-fun res!2483976 () Bool)

(assert (=> b!5927539 (=> (not res!2483976) (not e!3628187))))

(assert (=> b!5927539 (= res!2483976 (isEmpty!35963 (tail!11575 (_1!36256 (get!22074 lt!2310402)))))))

(assert (= (and d!1858501 c!1053617) b!5927535))

(assert (= (and d!1858501 (not c!1053617)) b!5927532))

(assert (= (and d!1858501 c!1053619) b!5927537))

(assert (= (and d!1858501 (not c!1053619)) b!5927536))

(assert (= (and b!5927536 c!1053618) b!5927526))

(assert (= (and b!5927536 (not c!1053618)) b!5927530))

(assert (= (and b!5927530 (not res!2483971)) b!5927529))

(assert (= (and b!5927529 res!2483977) b!5927531))

(assert (= (and b!5927531 res!2483975) b!5927539))

(assert (= (and b!5927539 res!2483976) b!5927527))

(assert (= (and b!5927529 (not res!2483973)) b!5927534))

(assert (= (and b!5927534 res!2483978) b!5927538))

(assert (= (and b!5927538 (not res!2483974)) b!5927533))

(assert (= (and b!5927533 (not res!2483972)) b!5927528))

(assert (= (or b!5927537 b!5927531 b!5927538) bm!470327))

(declare-fun m!6821120 () Bool)

(assert (=> b!5927533 m!6821120))

(assert (=> b!5927533 m!6821120))

(declare-fun m!6821122 () Bool)

(assert (=> b!5927533 m!6821122))

(declare-fun m!6821124 () Bool)

(assert (=> b!5927532 m!6821124))

(assert (=> b!5927532 m!6821124))

(declare-fun m!6821126 () Bool)

(assert (=> b!5927532 m!6821126))

(assert (=> b!5927532 m!6821120))

(assert (=> b!5927532 m!6821126))

(assert (=> b!5927532 m!6821120))

(declare-fun m!6821128 () Bool)

(assert (=> b!5927532 m!6821128))

(assert (=> b!5927528 m!6821124))

(assert (=> b!5927539 m!6821120))

(assert (=> b!5927539 m!6821120))

(assert (=> b!5927539 m!6821122))

(assert (=> b!5927535 m!6820602))

(declare-fun m!6821130 () Bool)

(assert (=> d!1858501 m!6821130))

(assert (=> d!1858501 m!6820512))

(assert (=> b!5927527 m!6821124))

(assert (=> bm!470327 m!6821130))

(assert (=> b!5926717 d!1858501))

(assert (=> b!5926717 d!1858395))

(declare-fun d!1858503 () Bool)

(assert (=> d!1858503 (= (isConcat!925 lt!2310385) (is-Concat!24819 lt!2310385))))

(assert (=> b!5926544 d!1858503))

(assert (=> d!1858285 d!1858281))

(declare-fun d!1858505 () Bool)

(assert (=> d!1858505 (= (flatMap!1487 z!1189 lambda!323215) (dynLambda!25063 lambda!323215 (h!70547 zl!343)))))

(assert (=> d!1858505 true))

(declare-fun _$13!2684 () Unit!157219)

(assert (=> d!1858505 (= (choose!44682 z!1189 (h!70547 zl!343) lambda!323215) _$13!2684)))

(declare-fun b_lambda!222617 () Bool)

(assert (=> (not b_lambda!222617) (not d!1858505)))

(declare-fun bs!1402685 () Bool)

(assert (= bs!1402685 d!1858505))

(assert (=> bs!1402685 m!6820364))

(assert (=> bs!1402685 m!6820590))

(assert (=> d!1858285 d!1858505))

(declare-fun b!5927541 () Bool)

(declare-fun e!3628194 () Bool)

(declare-fun tp!1648347 () Bool)

(declare-fun tp!1648348 () Bool)

(assert (=> b!5927541 (= e!3628194 (and tp!1648347 tp!1648348))))

(declare-fun b!5927540 () Bool)

(assert (=> b!5927540 (= e!3628194 tp_is_empty!41201)))

(declare-fun b!5927542 () Bool)

(declare-fun tp!1648349 () Bool)

(assert (=> b!5927542 (= e!3628194 tp!1648349)))

(declare-fun b!5927543 () Bool)

(declare-fun tp!1648350 () Bool)

(declare-fun tp!1648351 () Bool)

(assert (=> b!5927543 (= e!3628194 (and tp!1648350 tp!1648351))))

(assert (=> b!5926955 (= tp!1648260 e!3628194)))

(assert (= (and b!5926955 (is-ElementMatch!15974 (regOne!32461 (regTwo!32461 r!7292)))) b!5927540))

(assert (= (and b!5926955 (is-Concat!24819 (regOne!32461 (regTwo!32461 r!7292)))) b!5927541))

(assert (= (and b!5926955 (is-Star!15974 (regOne!32461 (regTwo!32461 r!7292)))) b!5927542))

(assert (= (and b!5926955 (is-Union!15974 (regOne!32461 (regTwo!32461 r!7292)))) b!5927543))

(declare-fun b!5927545 () Bool)

(declare-fun e!3628195 () Bool)

(declare-fun tp!1648352 () Bool)

(declare-fun tp!1648353 () Bool)

(assert (=> b!5927545 (= e!3628195 (and tp!1648352 tp!1648353))))

(declare-fun b!5927544 () Bool)

(assert (=> b!5927544 (= e!3628195 tp_is_empty!41201)))

(declare-fun b!5927546 () Bool)

(declare-fun tp!1648354 () Bool)

(assert (=> b!5927546 (= e!3628195 tp!1648354)))

(declare-fun b!5927547 () Bool)

(declare-fun tp!1648355 () Bool)

(declare-fun tp!1648356 () Bool)

(assert (=> b!5927547 (= e!3628195 (and tp!1648355 tp!1648356))))

(assert (=> b!5926955 (= tp!1648261 e!3628195)))

(assert (= (and b!5926955 (is-ElementMatch!15974 (regTwo!32461 (regTwo!32461 r!7292)))) b!5927544))

(assert (= (and b!5926955 (is-Concat!24819 (regTwo!32461 (regTwo!32461 r!7292)))) b!5927545))

(assert (= (and b!5926955 (is-Star!15974 (regTwo!32461 (regTwo!32461 r!7292)))) b!5927546))

(assert (= (and b!5926955 (is-Union!15974 (regTwo!32461 (regTwo!32461 r!7292)))) b!5927547))

(declare-fun b!5927549 () Bool)

(declare-fun e!3628196 () Bool)

(declare-fun tp!1648357 () Bool)

(declare-fun tp!1648358 () Bool)

(assert (=> b!5927549 (= e!3628196 (and tp!1648357 tp!1648358))))

(declare-fun b!5927548 () Bool)

(assert (=> b!5927548 (= e!3628196 tp_is_empty!41201)))

(declare-fun b!5927550 () Bool)

(declare-fun tp!1648359 () Bool)

(assert (=> b!5927550 (= e!3628196 tp!1648359)))

(declare-fun b!5927551 () Bool)

(declare-fun tp!1648360 () Bool)

(declare-fun tp!1648361 () Bool)

(assert (=> b!5927551 (= e!3628196 (and tp!1648360 tp!1648361))))

(assert (=> b!5926954 (= tp!1648259 e!3628196)))

(assert (= (and b!5926954 (is-ElementMatch!15974 (reg!16303 (regTwo!32461 r!7292)))) b!5927548))

(assert (= (and b!5926954 (is-Concat!24819 (reg!16303 (regTwo!32461 r!7292)))) b!5927549))

(assert (= (and b!5926954 (is-Star!15974 (reg!16303 (regTwo!32461 r!7292)))) b!5927550))

(assert (= (and b!5926954 (is-Union!15974 (reg!16303 (regTwo!32461 r!7292)))) b!5927551))

(declare-fun b!5927553 () Bool)

(declare-fun e!3628197 () Bool)

(declare-fun tp!1648362 () Bool)

(declare-fun tp!1648363 () Bool)

(assert (=> b!5927553 (= e!3628197 (and tp!1648362 tp!1648363))))

(declare-fun b!5927552 () Bool)

(assert (=> b!5927552 (= e!3628197 tp_is_empty!41201)))

(declare-fun b!5927554 () Bool)

(declare-fun tp!1648364 () Bool)

(assert (=> b!5927554 (= e!3628197 tp!1648364)))

(declare-fun b!5927555 () Bool)

(declare-fun tp!1648365 () Bool)

(declare-fun tp!1648366 () Bool)

(assert (=> b!5927555 (= e!3628197 (and tp!1648365 tp!1648366))))

(assert (=> b!5926932 (= tp!1648234 e!3628197)))

(assert (= (and b!5926932 (is-ElementMatch!15974 (h!70546 (exprs!5858 setElem!40219)))) b!5927552))

(assert (= (and b!5926932 (is-Concat!24819 (h!70546 (exprs!5858 setElem!40219)))) b!5927553))

(assert (= (and b!5926932 (is-Star!15974 (h!70546 (exprs!5858 setElem!40219)))) b!5927554))

(assert (= (and b!5926932 (is-Union!15974 (h!70546 (exprs!5858 setElem!40219)))) b!5927555))

(declare-fun b!5927556 () Bool)

(declare-fun e!3628198 () Bool)

(declare-fun tp!1648367 () Bool)

(declare-fun tp!1648368 () Bool)

(assert (=> b!5927556 (= e!3628198 (and tp!1648367 tp!1648368))))

(assert (=> b!5926932 (= tp!1648235 e!3628198)))

(assert (= (and b!5926932 (is-Cons!64098 (t!377617 (exprs!5858 setElem!40219)))) b!5927556))

(declare-fun b!5927558 () Bool)

(declare-fun e!3628199 () Bool)

(declare-fun tp!1648369 () Bool)

(declare-fun tp!1648370 () Bool)

(assert (=> b!5927558 (= e!3628199 (and tp!1648369 tp!1648370))))

(declare-fun b!5927557 () Bool)

(assert (=> b!5927557 (= e!3628199 tp_is_empty!41201)))

(declare-fun b!5927559 () Bool)

(declare-fun tp!1648371 () Bool)

(assert (=> b!5927559 (= e!3628199 tp!1648371)))

(declare-fun b!5927560 () Bool)

(declare-fun tp!1648372 () Bool)

(declare-fun tp!1648373 () Bool)

(assert (=> b!5927560 (= e!3628199 (and tp!1648372 tp!1648373))))

(assert (=> b!5926961 (= tp!1648267 e!3628199)))

(assert (= (and b!5926961 (is-ElementMatch!15974 (regOne!32460 (regOne!32460 r!7292)))) b!5927557))

(assert (= (and b!5926961 (is-Concat!24819 (regOne!32460 (regOne!32460 r!7292)))) b!5927558))

(assert (= (and b!5926961 (is-Star!15974 (regOne!32460 (regOne!32460 r!7292)))) b!5927559))

(assert (= (and b!5926961 (is-Union!15974 (regOne!32460 (regOne!32460 r!7292)))) b!5927560))

(declare-fun b!5927562 () Bool)

(declare-fun e!3628200 () Bool)

(declare-fun tp!1648374 () Bool)

(declare-fun tp!1648375 () Bool)

(assert (=> b!5927562 (= e!3628200 (and tp!1648374 tp!1648375))))

(declare-fun b!5927561 () Bool)

(assert (=> b!5927561 (= e!3628200 tp_is_empty!41201)))

(declare-fun b!5927563 () Bool)

(declare-fun tp!1648376 () Bool)

(assert (=> b!5927563 (= e!3628200 tp!1648376)))

(declare-fun b!5927564 () Bool)

(declare-fun tp!1648377 () Bool)

(declare-fun tp!1648378 () Bool)

(assert (=> b!5927564 (= e!3628200 (and tp!1648377 tp!1648378))))

(assert (=> b!5926961 (= tp!1648268 e!3628200)))

(assert (= (and b!5926961 (is-ElementMatch!15974 (regTwo!32460 (regOne!32460 r!7292)))) b!5927561))

(assert (= (and b!5926961 (is-Concat!24819 (regTwo!32460 (regOne!32460 r!7292)))) b!5927562))

(assert (= (and b!5926961 (is-Star!15974 (regTwo!32460 (regOne!32460 r!7292)))) b!5927563))

(assert (= (and b!5926961 (is-Union!15974 (regTwo!32460 (regOne!32460 r!7292)))) b!5927564))

(declare-fun b!5927566 () Bool)

(declare-fun e!3628201 () Bool)

(declare-fun tp!1648379 () Bool)

(declare-fun tp!1648380 () Bool)

(assert (=> b!5927566 (= e!3628201 (and tp!1648379 tp!1648380))))

(declare-fun b!5927565 () Bool)

(assert (=> b!5927565 (= e!3628201 tp_is_empty!41201)))

(declare-fun b!5927567 () Bool)

(declare-fun tp!1648381 () Bool)

(assert (=> b!5927567 (= e!3628201 tp!1648381)))

(declare-fun b!5927568 () Bool)

(declare-fun tp!1648382 () Bool)

(declare-fun tp!1648383 () Bool)

(assert (=> b!5927568 (= e!3628201 (and tp!1648382 tp!1648383))))

(assert (=> b!5926953 (= tp!1648257 e!3628201)))

(assert (= (and b!5926953 (is-ElementMatch!15974 (regOne!32460 (regTwo!32461 r!7292)))) b!5927565))

(assert (= (and b!5926953 (is-Concat!24819 (regOne!32460 (regTwo!32461 r!7292)))) b!5927566))

(assert (= (and b!5926953 (is-Star!15974 (regOne!32460 (regTwo!32461 r!7292)))) b!5927567))

(assert (= (and b!5926953 (is-Union!15974 (regOne!32460 (regTwo!32461 r!7292)))) b!5927568))

(declare-fun b!5927570 () Bool)

(declare-fun e!3628202 () Bool)

(declare-fun tp!1648384 () Bool)

(declare-fun tp!1648385 () Bool)

(assert (=> b!5927570 (= e!3628202 (and tp!1648384 tp!1648385))))

(declare-fun b!5927569 () Bool)

(assert (=> b!5927569 (= e!3628202 tp_is_empty!41201)))

(declare-fun b!5927571 () Bool)

(declare-fun tp!1648386 () Bool)

(assert (=> b!5927571 (= e!3628202 tp!1648386)))

(declare-fun b!5927572 () Bool)

(declare-fun tp!1648387 () Bool)

(declare-fun tp!1648388 () Bool)

(assert (=> b!5927572 (= e!3628202 (and tp!1648387 tp!1648388))))

(assert (=> b!5926953 (= tp!1648258 e!3628202)))

(assert (= (and b!5926953 (is-ElementMatch!15974 (regTwo!32460 (regTwo!32461 r!7292)))) b!5927569))

(assert (= (and b!5926953 (is-Concat!24819 (regTwo!32460 (regTwo!32461 r!7292)))) b!5927570))

(assert (= (and b!5926953 (is-Star!15974 (regTwo!32460 (regTwo!32461 r!7292)))) b!5927571))

(assert (= (and b!5926953 (is-Union!15974 (regTwo!32460 (regTwo!32461 r!7292)))) b!5927572))

(declare-fun b!5927574 () Bool)

(declare-fun e!3628203 () Bool)

(declare-fun tp!1648389 () Bool)

(declare-fun tp!1648390 () Bool)

(assert (=> b!5927574 (= e!3628203 (and tp!1648389 tp!1648390))))

(declare-fun b!5927573 () Bool)

(assert (=> b!5927573 (= e!3628203 tp_is_empty!41201)))

(declare-fun b!5927575 () Bool)

(declare-fun tp!1648391 () Bool)

(assert (=> b!5927575 (= e!3628203 tp!1648391)))

(declare-fun b!5927576 () Bool)

(declare-fun tp!1648392 () Bool)

(declare-fun tp!1648393 () Bool)

(assert (=> b!5927576 (= e!3628203 (and tp!1648392 tp!1648393))))

(assert (=> b!5926963 (= tp!1648270 e!3628203)))

(assert (= (and b!5926963 (is-ElementMatch!15974 (regOne!32461 (regOne!32460 r!7292)))) b!5927573))

(assert (= (and b!5926963 (is-Concat!24819 (regOne!32461 (regOne!32460 r!7292)))) b!5927574))

(assert (= (and b!5926963 (is-Star!15974 (regOne!32461 (regOne!32460 r!7292)))) b!5927575))

(assert (= (and b!5926963 (is-Union!15974 (regOne!32461 (regOne!32460 r!7292)))) b!5927576))

(declare-fun b!5927578 () Bool)

(declare-fun e!3628204 () Bool)

(declare-fun tp!1648394 () Bool)

(declare-fun tp!1648395 () Bool)

(assert (=> b!5927578 (= e!3628204 (and tp!1648394 tp!1648395))))

(declare-fun b!5927577 () Bool)

(assert (=> b!5927577 (= e!3628204 tp_is_empty!41201)))

(declare-fun b!5927579 () Bool)

(declare-fun tp!1648396 () Bool)

(assert (=> b!5927579 (= e!3628204 tp!1648396)))

(declare-fun b!5927580 () Bool)

(declare-fun tp!1648397 () Bool)

(declare-fun tp!1648398 () Bool)

(assert (=> b!5927580 (= e!3628204 (and tp!1648397 tp!1648398))))

(assert (=> b!5926963 (= tp!1648271 e!3628204)))

(assert (= (and b!5926963 (is-ElementMatch!15974 (regTwo!32461 (regOne!32460 r!7292)))) b!5927577))

(assert (= (and b!5926963 (is-Concat!24819 (regTwo!32461 (regOne!32460 r!7292)))) b!5927578))

(assert (= (and b!5926963 (is-Star!15974 (regTwo!32461 (regOne!32460 r!7292)))) b!5927579))

(assert (= (and b!5926963 (is-Union!15974 (regTwo!32461 (regOne!32460 r!7292)))) b!5927580))

(declare-fun b!5927582 () Bool)

(declare-fun e!3628205 () Bool)

(declare-fun tp!1648399 () Bool)

(declare-fun tp!1648400 () Bool)

(assert (=> b!5927582 (= e!3628205 (and tp!1648399 tp!1648400))))

(declare-fun b!5927581 () Bool)

(assert (=> b!5927581 (= e!3628205 tp_is_empty!41201)))

(declare-fun b!5927583 () Bool)

(declare-fun tp!1648401 () Bool)

(assert (=> b!5927583 (= e!3628205 tp!1648401)))

(declare-fun b!5927584 () Bool)

(declare-fun tp!1648402 () Bool)

(declare-fun tp!1648403 () Bool)

(assert (=> b!5927584 (= e!3628205 (and tp!1648402 tp!1648403))))

(assert (=> b!5926962 (= tp!1648269 e!3628205)))

(assert (= (and b!5926962 (is-ElementMatch!15974 (reg!16303 (regOne!32460 r!7292)))) b!5927581))

(assert (= (and b!5926962 (is-Concat!24819 (reg!16303 (regOne!32460 r!7292)))) b!5927582))

(assert (= (and b!5926962 (is-Star!15974 (reg!16303 (regOne!32460 r!7292)))) b!5927583))

(assert (= (and b!5926962 (is-Union!15974 (reg!16303 (regOne!32460 r!7292)))) b!5927584))

(declare-fun b!5927586 () Bool)

(declare-fun e!3628206 () Bool)

(declare-fun tp!1648404 () Bool)

(declare-fun tp!1648405 () Bool)

(assert (=> b!5927586 (= e!3628206 (and tp!1648404 tp!1648405))))

(declare-fun b!5927585 () Bool)

(assert (=> b!5927585 (= e!3628206 tp_is_empty!41201)))

(declare-fun b!5927587 () Bool)

(declare-fun tp!1648406 () Bool)

(assert (=> b!5927587 (= e!3628206 tp!1648406)))

(declare-fun b!5927588 () Bool)

(declare-fun tp!1648407 () Bool)

(declare-fun tp!1648408 () Bool)

(assert (=> b!5927588 (= e!3628206 (and tp!1648407 tp!1648408))))

(assert (=> b!5926950 (= tp!1648254 e!3628206)))

(assert (= (and b!5926950 (is-ElementMatch!15974 (reg!16303 (regOne!32461 r!7292)))) b!5927585))

(assert (= (and b!5926950 (is-Concat!24819 (reg!16303 (regOne!32461 r!7292)))) b!5927586))

(assert (= (and b!5926950 (is-Star!15974 (reg!16303 (regOne!32461 r!7292)))) b!5927587))

(assert (= (and b!5926950 (is-Union!15974 (reg!16303 (regOne!32461 r!7292)))) b!5927588))

(declare-fun b!5927590 () Bool)

(declare-fun e!3628207 () Bool)

(declare-fun tp!1648409 () Bool)

(declare-fun tp!1648410 () Bool)

(assert (=> b!5927590 (= e!3628207 (and tp!1648409 tp!1648410))))

(declare-fun b!5927589 () Bool)

(assert (=> b!5927589 (= e!3628207 tp_is_empty!41201)))

(declare-fun b!5927591 () Bool)

(declare-fun tp!1648411 () Bool)

(assert (=> b!5927591 (= e!3628207 tp!1648411)))

(declare-fun b!5927592 () Bool)

(declare-fun tp!1648412 () Bool)

(declare-fun tp!1648413 () Bool)

(assert (=> b!5927592 (= e!3628207 (and tp!1648412 tp!1648413))))

(assert (=> b!5926957 (= tp!1648262 e!3628207)))

(assert (= (and b!5926957 (is-ElementMatch!15974 (regOne!32460 (reg!16303 r!7292)))) b!5927589))

(assert (= (and b!5926957 (is-Concat!24819 (regOne!32460 (reg!16303 r!7292)))) b!5927590))

(assert (= (and b!5926957 (is-Star!15974 (regOne!32460 (reg!16303 r!7292)))) b!5927591))

(assert (= (and b!5926957 (is-Union!15974 (regOne!32460 (reg!16303 r!7292)))) b!5927592))

(declare-fun b!5927594 () Bool)

(declare-fun e!3628208 () Bool)

(declare-fun tp!1648414 () Bool)

(declare-fun tp!1648415 () Bool)

(assert (=> b!5927594 (= e!3628208 (and tp!1648414 tp!1648415))))

(declare-fun b!5927593 () Bool)

(assert (=> b!5927593 (= e!3628208 tp_is_empty!41201)))

(declare-fun b!5927595 () Bool)

(declare-fun tp!1648416 () Bool)

(assert (=> b!5927595 (= e!3628208 tp!1648416)))

(declare-fun b!5927596 () Bool)

(declare-fun tp!1648417 () Bool)

(declare-fun tp!1648418 () Bool)

(assert (=> b!5927596 (= e!3628208 (and tp!1648417 tp!1648418))))

(assert (=> b!5926957 (= tp!1648263 e!3628208)))

(assert (= (and b!5926957 (is-ElementMatch!15974 (regTwo!32460 (reg!16303 r!7292)))) b!5927593))

(assert (= (and b!5926957 (is-Concat!24819 (regTwo!32460 (reg!16303 r!7292)))) b!5927594))

(assert (= (and b!5926957 (is-Star!15974 (regTwo!32460 (reg!16303 r!7292)))) b!5927595))

(assert (= (and b!5926957 (is-Union!15974 (regTwo!32460 (reg!16303 r!7292)))) b!5927596))

(declare-fun b!5927598 () Bool)

(declare-fun e!3628209 () Bool)

(declare-fun tp!1648419 () Bool)

(declare-fun tp!1648420 () Bool)

(assert (=> b!5927598 (= e!3628209 (and tp!1648419 tp!1648420))))

(declare-fun b!5927597 () Bool)

(assert (=> b!5927597 (= e!3628209 tp_is_empty!41201)))

(declare-fun b!5927599 () Bool)

(declare-fun tp!1648421 () Bool)

(assert (=> b!5927599 (= e!3628209 tp!1648421)))

(declare-fun b!5927600 () Bool)

(declare-fun tp!1648422 () Bool)

(declare-fun tp!1648423 () Bool)

(assert (=> b!5927600 (= e!3628209 (and tp!1648422 tp!1648423))))

(assert (=> b!5926959 (= tp!1648265 e!3628209)))

(assert (= (and b!5926959 (is-ElementMatch!15974 (regOne!32461 (reg!16303 r!7292)))) b!5927597))

(assert (= (and b!5926959 (is-Concat!24819 (regOne!32461 (reg!16303 r!7292)))) b!5927598))

(assert (= (and b!5926959 (is-Star!15974 (regOne!32461 (reg!16303 r!7292)))) b!5927599))

(assert (= (and b!5926959 (is-Union!15974 (regOne!32461 (reg!16303 r!7292)))) b!5927600))

(declare-fun b!5927602 () Bool)

(declare-fun e!3628210 () Bool)

(declare-fun tp!1648424 () Bool)

(declare-fun tp!1648425 () Bool)

(assert (=> b!5927602 (= e!3628210 (and tp!1648424 tp!1648425))))

(declare-fun b!5927601 () Bool)

(assert (=> b!5927601 (= e!3628210 tp_is_empty!41201)))

(declare-fun b!5927603 () Bool)

(declare-fun tp!1648426 () Bool)

(assert (=> b!5927603 (= e!3628210 tp!1648426)))

(declare-fun b!5927604 () Bool)

(declare-fun tp!1648427 () Bool)

(declare-fun tp!1648428 () Bool)

(assert (=> b!5927604 (= e!3628210 (and tp!1648427 tp!1648428))))

(assert (=> b!5926959 (= tp!1648266 e!3628210)))

(assert (= (and b!5926959 (is-ElementMatch!15974 (regTwo!32461 (reg!16303 r!7292)))) b!5927601))

(assert (= (and b!5926959 (is-Concat!24819 (regTwo!32461 (reg!16303 r!7292)))) b!5927602))

(assert (= (and b!5926959 (is-Star!15974 (regTwo!32461 (reg!16303 r!7292)))) b!5927603))

(assert (= (and b!5926959 (is-Union!15974 (regTwo!32461 (reg!16303 r!7292)))) b!5927604))

(declare-fun b!5927606 () Bool)

(declare-fun e!3628211 () Bool)

(declare-fun tp!1648429 () Bool)

(declare-fun tp!1648430 () Bool)

(assert (=> b!5927606 (= e!3628211 (and tp!1648429 tp!1648430))))

(declare-fun b!5927605 () Bool)

(assert (=> b!5927605 (= e!3628211 tp_is_empty!41201)))

(declare-fun b!5927607 () Bool)

(declare-fun tp!1648431 () Bool)

(assert (=> b!5927607 (= e!3628211 tp!1648431)))

(declare-fun b!5927608 () Bool)

(declare-fun tp!1648432 () Bool)

(declare-fun tp!1648433 () Bool)

(assert (=> b!5927608 (= e!3628211 (and tp!1648432 tp!1648433))))

(assert (=> b!5926951 (= tp!1648255 e!3628211)))

(assert (= (and b!5926951 (is-ElementMatch!15974 (regOne!32461 (regOne!32461 r!7292)))) b!5927605))

(assert (= (and b!5926951 (is-Concat!24819 (regOne!32461 (regOne!32461 r!7292)))) b!5927606))

(assert (= (and b!5926951 (is-Star!15974 (regOne!32461 (regOne!32461 r!7292)))) b!5927607))

(assert (= (and b!5926951 (is-Union!15974 (regOne!32461 (regOne!32461 r!7292)))) b!5927608))

(declare-fun b!5927610 () Bool)

(declare-fun e!3628212 () Bool)

(declare-fun tp!1648434 () Bool)

(declare-fun tp!1648435 () Bool)

(assert (=> b!5927610 (= e!3628212 (and tp!1648434 tp!1648435))))

(declare-fun b!5927609 () Bool)

(assert (=> b!5927609 (= e!3628212 tp_is_empty!41201)))

(declare-fun b!5927611 () Bool)

(declare-fun tp!1648436 () Bool)

(assert (=> b!5927611 (= e!3628212 tp!1648436)))

(declare-fun b!5927612 () Bool)

(declare-fun tp!1648437 () Bool)

(declare-fun tp!1648438 () Bool)

(assert (=> b!5927612 (= e!3628212 (and tp!1648437 tp!1648438))))

(assert (=> b!5926951 (= tp!1648256 e!3628212)))

(assert (= (and b!5926951 (is-ElementMatch!15974 (regTwo!32461 (regOne!32461 r!7292)))) b!5927609))

(assert (= (and b!5926951 (is-Concat!24819 (regTwo!32461 (regOne!32461 r!7292)))) b!5927610))

(assert (= (and b!5926951 (is-Star!15974 (regTwo!32461 (regOne!32461 r!7292)))) b!5927611))

(assert (= (and b!5926951 (is-Union!15974 (regTwo!32461 (regOne!32461 r!7292)))) b!5927612))

(declare-fun b!5927614 () Bool)

(declare-fun e!3628213 () Bool)

(declare-fun tp!1648439 () Bool)

(declare-fun tp!1648440 () Bool)

(assert (=> b!5927614 (= e!3628213 (and tp!1648439 tp!1648440))))

(declare-fun b!5927613 () Bool)

(assert (=> b!5927613 (= e!3628213 tp_is_empty!41201)))

(declare-fun b!5927615 () Bool)

(declare-fun tp!1648441 () Bool)

(assert (=> b!5927615 (= e!3628213 tp!1648441)))

(declare-fun b!5927616 () Bool)

(declare-fun tp!1648442 () Bool)

(declare-fun tp!1648443 () Bool)

(assert (=> b!5927616 (= e!3628213 (and tp!1648442 tp!1648443))))

(assert (=> b!5926958 (= tp!1648264 e!3628213)))

(assert (= (and b!5926958 (is-ElementMatch!15974 (reg!16303 (reg!16303 r!7292)))) b!5927613))

(assert (= (and b!5926958 (is-Concat!24819 (reg!16303 (reg!16303 r!7292)))) b!5927614))

(assert (= (and b!5926958 (is-Star!15974 (reg!16303 (reg!16303 r!7292)))) b!5927615))

(assert (= (and b!5926958 (is-Union!15974 (reg!16303 (reg!16303 r!7292)))) b!5927616))

(declare-fun b!5927618 () Bool)

(declare-fun e!3628214 () Bool)

(declare-fun tp!1648444 () Bool)

(declare-fun tp!1648445 () Bool)

(assert (=> b!5927618 (= e!3628214 (and tp!1648444 tp!1648445))))

(declare-fun b!5927617 () Bool)

(assert (=> b!5927617 (= e!3628214 tp_is_empty!41201)))

(declare-fun b!5927619 () Bool)

(declare-fun tp!1648446 () Bool)

(assert (=> b!5927619 (= e!3628214 tp!1648446)))

(declare-fun b!5927620 () Bool)

(declare-fun tp!1648447 () Bool)

(declare-fun tp!1648448 () Bool)

(assert (=> b!5927620 (= e!3628214 (and tp!1648447 tp!1648448))))

(assert (=> b!5926949 (= tp!1648252 e!3628214)))

(assert (= (and b!5926949 (is-ElementMatch!15974 (regOne!32460 (regOne!32461 r!7292)))) b!5927617))

(assert (= (and b!5926949 (is-Concat!24819 (regOne!32460 (regOne!32461 r!7292)))) b!5927618))

(assert (= (and b!5926949 (is-Star!15974 (regOne!32460 (regOne!32461 r!7292)))) b!5927619))

(assert (= (and b!5926949 (is-Union!15974 (regOne!32460 (regOne!32461 r!7292)))) b!5927620))

(declare-fun b!5927622 () Bool)

(declare-fun e!3628215 () Bool)

(declare-fun tp!1648449 () Bool)

(declare-fun tp!1648450 () Bool)

(assert (=> b!5927622 (= e!3628215 (and tp!1648449 tp!1648450))))

(declare-fun b!5927621 () Bool)

(assert (=> b!5927621 (= e!3628215 tp_is_empty!41201)))

(declare-fun b!5927623 () Bool)

(declare-fun tp!1648451 () Bool)

(assert (=> b!5927623 (= e!3628215 tp!1648451)))

(declare-fun b!5927624 () Bool)

(declare-fun tp!1648452 () Bool)

(declare-fun tp!1648453 () Bool)

(assert (=> b!5927624 (= e!3628215 (and tp!1648452 tp!1648453))))

(assert (=> b!5926949 (= tp!1648253 e!3628215)))

(assert (= (and b!5926949 (is-ElementMatch!15974 (regTwo!32460 (regOne!32461 r!7292)))) b!5927621))

(assert (= (and b!5926949 (is-Concat!24819 (regTwo!32460 (regOne!32461 r!7292)))) b!5927622))

(assert (= (and b!5926949 (is-Star!15974 (regTwo!32460 (regOne!32461 r!7292)))) b!5927623))

(assert (= (and b!5926949 (is-Union!15974 (regTwo!32460 (regOne!32461 r!7292)))) b!5927624))

(declare-fun b!5927625 () Bool)

(declare-fun e!3628216 () Bool)

(declare-fun tp!1648454 () Bool)

(declare-fun tp!1648455 () Bool)

(assert (=> b!5927625 (= e!3628216 (and tp!1648454 tp!1648455))))

(assert (=> b!5926937 (= tp!1648240 e!3628216)))

(assert (= (and b!5926937 (is-Cons!64098 (exprs!5858 setElem!40225))) b!5927625))

(declare-fun b!5927627 () Bool)

(declare-fun e!3628217 () Bool)

(declare-fun tp!1648456 () Bool)

(declare-fun tp!1648457 () Bool)

(assert (=> b!5927627 (= e!3628217 (and tp!1648456 tp!1648457))))

(declare-fun b!5927626 () Bool)

(assert (=> b!5927626 (= e!3628217 tp_is_empty!41201)))

(declare-fun b!5927628 () Bool)

(declare-fun tp!1648458 () Bool)

(assert (=> b!5927628 (= e!3628217 tp!1648458)))

(declare-fun b!5927629 () Bool)

(declare-fun tp!1648459 () Bool)

(declare-fun tp!1648460 () Bool)

(assert (=> b!5927629 (= e!3628217 (and tp!1648459 tp!1648460))))

(assert (=> b!5926922 (= tp!1648232 e!3628217)))

(assert (= (and b!5926922 (is-ElementMatch!15974 (h!70546 (exprs!5858 (h!70547 zl!343))))) b!5927626))

(assert (= (and b!5926922 (is-Concat!24819 (h!70546 (exprs!5858 (h!70547 zl!343))))) b!5927627))

(assert (= (and b!5926922 (is-Star!15974 (h!70546 (exprs!5858 (h!70547 zl!343))))) b!5927628))

(assert (= (and b!5926922 (is-Union!15974 (h!70546 (exprs!5858 (h!70547 zl!343))))) b!5927629))

(declare-fun b!5927630 () Bool)

(declare-fun e!3628218 () Bool)

(declare-fun tp!1648461 () Bool)

(declare-fun tp!1648462 () Bool)

(assert (=> b!5927630 (= e!3628218 (and tp!1648461 tp!1648462))))

(assert (=> b!5926922 (= tp!1648233 e!3628218)))

(assert (= (and b!5926922 (is-Cons!64098 (t!377617 (exprs!5858 (h!70547 zl!343))))) b!5927630))

(declare-fun b!5927632 () Bool)

(declare-fun e!3628219 () Bool)

(declare-fun tp!1648463 () Bool)

(declare-fun tp!1648464 () Bool)

(assert (=> b!5927632 (= e!3628219 (and tp!1648463 tp!1648464))))

(declare-fun b!5927631 () Bool)

(assert (=> b!5927631 (= e!3628219 tp_is_empty!41201)))

(declare-fun b!5927633 () Bool)

(declare-fun tp!1648465 () Bool)

(assert (=> b!5927633 (= e!3628219 tp!1648465)))

(declare-fun b!5927634 () Bool)

(declare-fun tp!1648466 () Bool)

(declare-fun tp!1648467 () Bool)

(assert (=> b!5927634 (= e!3628219 (and tp!1648466 tp!1648467))))

(assert (=> b!5926966 (= tp!1648274 e!3628219)))

(assert (= (and b!5926966 (is-ElementMatch!15974 (reg!16303 (regTwo!32460 r!7292)))) b!5927631))

(assert (= (and b!5926966 (is-Concat!24819 (reg!16303 (regTwo!32460 r!7292)))) b!5927632))

(assert (= (and b!5926966 (is-Star!15974 (reg!16303 (regTwo!32460 r!7292)))) b!5927633))

(assert (= (and b!5926966 (is-Union!15974 (reg!16303 (regTwo!32460 r!7292)))) b!5927634))

(declare-fun condSetEmpty!40232 () Bool)

(assert (=> setNonEmpty!40225 (= condSetEmpty!40232 (= setRest!40225 (as set.empty (Set Context!10716))))))

(declare-fun setRes!40232 () Bool)

(assert (=> setNonEmpty!40225 (= tp!1648241 setRes!40232)))

(declare-fun setIsEmpty!40232 () Bool)

(assert (=> setIsEmpty!40232 setRes!40232))

(declare-fun setElem!40232 () Context!10716)

(declare-fun e!3628220 () Bool)

(declare-fun tp!1648469 () Bool)

(declare-fun setNonEmpty!40232 () Bool)

(assert (=> setNonEmpty!40232 (= setRes!40232 (and tp!1648469 (inv!83183 setElem!40232) e!3628220))))

(declare-fun setRest!40232 () (Set Context!10716))

(assert (=> setNonEmpty!40232 (= setRest!40225 (set.union (set.insert setElem!40232 (as set.empty (Set Context!10716))) setRest!40232))))

(declare-fun b!5927635 () Bool)

(declare-fun tp!1648468 () Bool)

(assert (=> b!5927635 (= e!3628220 tp!1648468)))

(assert (= (and setNonEmpty!40225 condSetEmpty!40232) setIsEmpty!40232))

(assert (= (and setNonEmpty!40225 (not condSetEmpty!40232)) setNonEmpty!40232))

(assert (= setNonEmpty!40232 b!5927635))

(declare-fun m!6821132 () Bool)

(assert (=> setNonEmpty!40232 m!6821132))

(declare-fun b!5927636 () Bool)

(declare-fun e!3628221 () Bool)

(declare-fun tp!1648470 () Bool)

(declare-fun tp!1648471 () Bool)

(assert (=> b!5927636 (= e!3628221 (and tp!1648470 tp!1648471))))

(assert (=> b!5926917 (= tp!1648226 e!3628221)))

(assert (= (and b!5926917 (is-Cons!64098 (exprs!5858 (h!70547 (t!377618 zl!343))))) b!5927636))

(declare-fun b!5927638 () Bool)

(declare-fun e!3628222 () Bool)

(declare-fun tp!1648472 () Bool)

(declare-fun tp!1648473 () Bool)

(assert (=> b!5927638 (= e!3628222 (and tp!1648472 tp!1648473))))

(declare-fun b!5927637 () Bool)

(assert (=> b!5927637 (= e!3628222 tp_is_empty!41201)))

(declare-fun b!5927639 () Bool)

(declare-fun tp!1648474 () Bool)

(assert (=> b!5927639 (= e!3628222 tp!1648474)))

(declare-fun b!5927640 () Bool)

(declare-fun tp!1648475 () Bool)

(declare-fun tp!1648476 () Bool)

(assert (=> b!5927640 (= e!3628222 (and tp!1648475 tp!1648476))))

(assert (=> b!5926967 (= tp!1648275 e!3628222)))

(assert (= (and b!5926967 (is-ElementMatch!15974 (regOne!32461 (regTwo!32460 r!7292)))) b!5927637))

(assert (= (and b!5926967 (is-Concat!24819 (regOne!32461 (regTwo!32460 r!7292)))) b!5927638))

(assert (= (and b!5926967 (is-Star!15974 (regOne!32461 (regTwo!32460 r!7292)))) b!5927639))

(assert (= (and b!5926967 (is-Union!15974 (regOne!32461 (regTwo!32460 r!7292)))) b!5927640))

(declare-fun b!5927642 () Bool)

(declare-fun e!3628223 () Bool)

(declare-fun tp!1648477 () Bool)

(declare-fun tp!1648478 () Bool)

(assert (=> b!5927642 (= e!3628223 (and tp!1648477 tp!1648478))))

(declare-fun b!5927641 () Bool)

(assert (=> b!5927641 (= e!3628223 tp_is_empty!41201)))

(declare-fun b!5927643 () Bool)

(declare-fun tp!1648479 () Bool)

(assert (=> b!5927643 (= e!3628223 tp!1648479)))

(declare-fun b!5927644 () Bool)

(declare-fun tp!1648480 () Bool)

(declare-fun tp!1648481 () Bool)

(assert (=> b!5927644 (= e!3628223 (and tp!1648480 tp!1648481))))

(assert (=> b!5926967 (= tp!1648276 e!3628223)))

(assert (= (and b!5926967 (is-ElementMatch!15974 (regTwo!32461 (regTwo!32460 r!7292)))) b!5927641))

(assert (= (and b!5926967 (is-Concat!24819 (regTwo!32461 (regTwo!32460 r!7292)))) b!5927642))

(assert (= (and b!5926967 (is-Star!15974 (regTwo!32461 (regTwo!32460 r!7292)))) b!5927643))

(assert (= (and b!5926967 (is-Union!15974 (regTwo!32461 (regTwo!32460 r!7292)))) b!5927644))

(declare-fun b!5927646 () Bool)

(declare-fun e!3628225 () Bool)

(declare-fun tp!1648482 () Bool)

(assert (=> b!5927646 (= e!3628225 tp!1648482)))

(declare-fun b!5927645 () Bool)

(declare-fun tp!1648483 () Bool)

(declare-fun e!3628224 () Bool)

(assert (=> b!5927645 (= e!3628224 (and (inv!83183 (h!70547 (t!377618 (t!377618 zl!343)))) e!3628225 tp!1648483))))

(assert (=> b!5926916 (= tp!1648227 e!3628224)))

(assert (= b!5927645 b!5927646))

(assert (= (and b!5926916 (is-Cons!64099 (t!377618 (t!377618 zl!343)))) b!5927645))

(declare-fun m!6821134 () Bool)

(assert (=> b!5927645 m!6821134))

(declare-fun b!5927648 () Bool)

(declare-fun e!3628226 () Bool)

(declare-fun tp!1648484 () Bool)

(declare-fun tp!1648485 () Bool)

(assert (=> b!5927648 (= e!3628226 (and tp!1648484 tp!1648485))))

(declare-fun b!5927647 () Bool)

(assert (=> b!5927647 (= e!3628226 tp_is_empty!41201)))

(declare-fun b!5927649 () Bool)

(declare-fun tp!1648486 () Bool)

(assert (=> b!5927649 (= e!3628226 tp!1648486)))

(declare-fun b!5927650 () Bool)

(declare-fun tp!1648487 () Bool)

(declare-fun tp!1648488 () Bool)

(assert (=> b!5927650 (= e!3628226 (and tp!1648487 tp!1648488))))

(assert (=> b!5926965 (= tp!1648272 e!3628226)))

(assert (= (and b!5926965 (is-ElementMatch!15974 (regOne!32460 (regTwo!32460 r!7292)))) b!5927647))

(assert (= (and b!5926965 (is-Concat!24819 (regOne!32460 (regTwo!32460 r!7292)))) b!5927648))

(assert (= (and b!5926965 (is-Star!15974 (regOne!32460 (regTwo!32460 r!7292)))) b!5927649))

(assert (= (and b!5926965 (is-Union!15974 (regOne!32460 (regTwo!32460 r!7292)))) b!5927650))

(declare-fun b!5927652 () Bool)

(declare-fun e!3628227 () Bool)

(declare-fun tp!1648489 () Bool)

(declare-fun tp!1648490 () Bool)

(assert (=> b!5927652 (= e!3628227 (and tp!1648489 tp!1648490))))

(declare-fun b!5927651 () Bool)

(assert (=> b!5927651 (= e!3628227 tp_is_empty!41201)))

(declare-fun b!5927653 () Bool)

(declare-fun tp!1648491 () Bool)

(assert (=> b!5927653 (= e!3628227 tp!1648491)))

(declare-fun b!5927654 () Bool)

(declare-fun tp!1648492 () Bool)

(declare-fun tp!1648493 () Bool)

(assert (=> b!5927654 (= e!3628227 (and tp!1648492 tp!1648493))))

(assert (=> b!5926965 (= tp!1648273 e!3628227)))

(assert (= (and b!5926965 (is-ElementMatch!15974 (regTwo!32460 (regTwo!32460 r!7292)))) b!5927651))

(assert (= (and b!5926965 (is-Concat!24819 (regTwo!32460 (regTwo!32460 r!7292)))) b!5927652))

(assert (= (and b!5926965 (is-Star!15974 (regTwo!32460 (regTwo!32460 r!7292)))) b!5927653))

(assert (= (and b!5926965 (is-Union!15974 (regTwo!32460 (regTwo!32460 r!7292)))) b!5927654))

(declare-fun b!5927655 () Bool)

(declare-fun e!3628228 () Bool)

(declare-fun tp!1648494 () Bool)

(assert (=> b!5927655 (= e!3628228 (and tp_is_empty!41201 tp!1648494))))

(assert (=> b!5926909 (= tp!1648221 e!3628228)))

(assert (= (and b!5926909 (is-Cons!64097 (t!377616 (t!377616 s!2326)))) b!5927655))

(declare-fun b_lambda!222619 () Bool)

(assert (= b_lambda!222609 (or d!1858237 b_lambda!222619)))

(declare-fun bs!1402686 () Bool)

(declare-fun d!1858507 () Bool)

(assert (= bs!1402686 (and d!1858507 d!1858237)))

(assert (=> bs!1402686 (= (dynLambda!25065 lambda!323229 (h!70546 (exprs!5858 (h!70547 zl!343)))) (validRegex!7710 (h!70546 (exprs!5858 (h!70547 zl!343)))))))

(declare-fun m!6821136 () Bool)

(assert (=> bs!1402686 m!6821136))

(assert (=> b!5927405 d!1858507))

(declare-fun b_lambda!222621 () Bool)

(assert (= b_lambda!222607 (or d!1858295 b_lambda!222621)))

(declare-fun bs!1402687 () Bool)

(declare-fun d!1858509 () Bool)

(assert (= bs!1402687 (and d!1858509 d!1858295)))

(assert (=> bs!1402687 (= (dynLambda!25065 lambda!323264 (h!70546 lt!2310430)) (validRegex!7710 (h!70546 lt!2310430)))))

(declare-fun m!6821138 () Bool)

(assert (=> bs!1402687 m!6821138))

(assert (=> b!5927345 d!1858509))

(declare-fun b_lambda!222623 () Bool)

(assert (= b_lambda!222617 (or b!5926434 b_lambda!222623)))

(assert (=> d!1858505 d!1858299))

(declare-fun b_lambda!222625 () Bool)

(assert (= b_lambda!222613 (or d!1858241 b_lambda!222625)))

(declare-fun bs!1402688 () Bool)

(declare-fun d!1858511 () Bool)

(assert (= bs!1402688 (and d!1858511 d!1858241)))

(assert (=> bs!1402688 (= (dynLambda!25065 lambda!323232 (h!70546 (exprs!5858 (Context!10717 lt!2310343)))) (validRegex!7710 (h!70546 (exprs!5858 (Context!10717 lt!2310343)))))))

(declare-fun m!6821140 () Bool)

(assert (=> bs!1402688 m!6821140))

(assert (=> b!5927472 d!1858511))

(declare-fun b_lambda!222627 () Bool)

(assert (= b_lambda!222615 (or d!1858247 b_lambda!222627)))

(declare-fun bs!1402689 () Bool)

(declare-fun d!1858513 () Bool)

(assert (= bs!1402689 (and d!1858513 d!1858247)))

(assert (=> bs!1402689 (= (dynLambda!25065 lambda!323233 (h!70546 (exprs!5858 setElem!40219))) (validRegex!7710 (h!70546 (exprs!5858 setElem!40219))))))

(declare-fun m!6821142 () Bool)

(assert (=> bs!1402689 m!6821142))

(assert (=> b!5927480 d!1858513))

(declare-fun b_lambda!222629 () Bool)

(assert (= b_lambda!222605 (or d!1858293 b_lambda!222629)))

(declare-fun bs!1402690 () Bool)

(declare-fun d!1858515 () Bool)

(assert (= bs!1402690 (and d!1858515 d!1858293)))

(assert (=> bs!1402690 (= (dynLambda!25065 lambda!323261 (h!70546 (unfocusZipperList!1395 zl!343))) (validRegex!7710 (h!70546 (unfocusZipperList!1395 zl!343))))))

(declare-fun m!6821144 () Bool)

(assert (=> bs!1402690 m!6821144))

(assert (=> b!5927236 d!1858515))

(declare-fun b_lambda!222631 () Bool)

(assert (= b_lambda!222611 (or d!1858277 b_lambda!222631)))

(declare-fun bs!1402691 () Bool)

(declare-fun d!1858517 () Bool)

(assert (= bs!1402691 (and d!1858517 d!1858277)))

(assert (=> bs!1402691 (= (dynLambda!25065 lambda!323252 (h!70546 (exprs!5858 (h!70547 zl!343)))) (validRegex!7710 (h!70546 (exprs!5858 (h!70547 zl!343)))))))

(assert (=> bs!1402691 m!6821136))

(assert (=> b!5927433 d!1858517))

(push 1)

(assert (not b!5927282))

(assert (not b!5927566))

(assert (not b!5927420))

(assert (not b!5927600))

(assert (not b!5927297))

(assert (not b!5927614))

(assert (not bm!470287))

(assert (not bm!470307))

(assert (not b!5927568))

(assert (not b!5927595))

(assert (not b!5927554))

(assert (not b!5927627))

(assert (not bm!470288))

(assert (not b!5927245))

(assert (not b!5927633))

(assert (not b!5927646))

(assert (not b!5927619))

(assert (not b!5927292))

(assert (not b!5927527))

(assert (not b!5927351))

(assert (not b!5927583))

(assert (not b!5927535))

(assert (not d!1858419))

(assert (not b!5927237))

(assert (not b!5927648))

(assert (not b!5927316))

(assert (not b!5927562))

(assert (not bm!470266))

(assert (not b!5927547))

(assert (not bm!470280))

(assert (not b!5927649))

(assert (not d!1858393))

(assert (not d!1858385))

(assert (not bm!470258))

(assert (not b!5927564))

(assert (not b!5927608))

(assert (not b!5927313))

(assert (not b!5927193))

(assert (not b!5927549))

(assert (not b!5927488))

(assert (not d!1858447))

(assert (not b!5927248))

(assert (not b!5927439))

(assert (not b!5927590))

(assert (not b!5927393))

(assert (not d!1858455))

(assert (not bm!470281))

(assert (not b_lambda!222621))

(assert (not bm!470265))

(assert (not bm!470275))

(assert (not b!5927328))

(assert (not b!5927491))

(assert (not b!5927539))

(assert (not b!5927588))

(assert (not b!5927285))

(assert (not b!5927571))

(assert (not b!5927296))

(assert (not bs!1402688))

(assert (not b_lambda!222625))

(assert (not bm!470297))

(assert (not b!5927559))

(assert (not b!5927634))

(assert (not b!5927355))

(assert (not b!5927408))

(assert (not b!5927453))

(assert (not b!5927409))

(assert (not b!5927582))

(assert (not b!5927628))

(assert (not d!1858445))

(assert (not bs!1402690))

(assert (not b!5927421))

(assert (not b!5927553))

(assert (not bm!470273))

(assert (not b!5927412))

(assert (not b!5927607))

(assert (not b!5927640))

(assert (not b!5927615))

(assert (not d!1858417))

(assert (not b!5927558))

(assert (not d!1858443))

(assert (not b!5927346))

(assert (not b!5927251))

(assert (not d!1858425))

(assert (not b!5927567))

(assert (not b!5927362))

(assert (not b!5927413))

(assert (not b!5927602))

(assert (not b!5927470))

(assert (not b!5927604))

(assert (not d!1858461))

(assert (not bm!470326))

(assert (not b!5927533))

(assert (not b!5927220))

(assert (not b!5927382))

(assert (not b!5927532))

(assert (not b!5927358))

(assert (not b_lambda!222623))

(assert (not setNonEmpty!40232))

(assert (not b!5927306))

(assert (not d!1858467))

(assert (not d!1858383))

(assert (not b!5927587))

(assert (not b!5927563))

(assert (not b!5927495))

(assert (not b!5927371))

(assert (not b!5927473))

(assert (not b!5927598))

(assert (not d!1858501))

(assert (not b!5927543))

(assert (not b!5927406))

(assert (not b!5927415))

(assert (not b!5927452))

(assert (not bs!1402687))

(assert (not b!5927632))

(assert (not b_lambda!222629))

(assert (not b!5927639))

(assert (not b!5927259))

(assert (not bs!1402686))

(assert (not b!5927528))

(assert (not b!5927636))

(assert (not b!5927638))

(assert (not bm!470259))

(assert (not b!5927309))

(assert (not b!5927308))

(assert (not b!5927625))

(assert (not b_lambda!222631))

(assert (not b!5927599))

(assert (not b!5927434))

(assert (not b!5927616))

(assert (not b!5927461))

(assert (not bm!470291))

(assert (not bm!470310))

(assert (not b!5927591))

(assert (not b!5927437))

(assert (not b!5927416))

(assert (not b!5927584))

(assert (not b!5927299))

(assert (not b!5927629))

(assert (not b!5927305))

(assert (not b!5927289))

(assert (not b!5927290))

(assert (not b!5927350))

(assert (not d!1858441))

(assert (not b!5927644))

(assert (not b!5927217))

(assert (not d!1858491))

(assert (not b!5927574))

(assert (not b!5927523))

(assert (not b!5927347))

(assert (not b_lambda!222619))

(assert (not d!1858359))

(assert (not b!5927630))

(assert (not b!5927314))

(assert (not bm!470293))

(assert (not b!5927594))

(assert (not bm!470272))

(assert (not b!5927479))

(assert (not b!5927545))

(assert (not d!1858405))

(assert (not d!1858477))

(assert (not d!1858361))

(assert (not b!5927460))

(assert (not b!5927575))

(assert (not b!5927274))

(assert (not b!5927338))

(assert (not b!5927618))

(assert (not b!5927572))

(assert (not bm!470308))

(assert (not d!1858493))

(assert (not b!5927576))

(assert (not bm!470274))

(assert (not bm!470311))

(assert (not bm!470294))

(assert (not b!5927481))

(assert (not b!5927592))

(assert (not bm!470270))

(assert (not d!1858403))

(assert (not setNonEmpty!40231))

(assert (not b!5927431))

(assert (not b!5927541))

(assert (not b!5927356))

(assert (not b!5927642))

(assert (not d!1858423))

(assert (not b!5927578))

(assert (not b!5927209))

(assert (not b!5927556))

(assert (not d!1858365))

(assert (not b!5927542))

(assert (not b!5927620))

(assert (not bm!470262))

(assert (not bm!470314))

(assert (not bm!470267))

(assert (not b!5927606))

(assert (not bm!470304))

(assert (not d!1858505))

(assert (not bs!1402689))

(assert (not bm!470305))

(assert (not b!5927300))

(assert (not b!5927403))

(assert (not b_lambda!222627))

(assert (not b!5927204))

(assert tp_is_empty!41201)

(assert (not b!5927270))

(assert (not bs!1402691))

(assert (not bm!470284))

(assert (not b!5927250))

(assert (not b!5927247))

(assert (not b!5927320))

(assert (not b!5927560))

(assert (not b!5927483))

(assert (not bm!470299))

(assert (not b!5927586))

(assert (not b!5927653))

(assert (not bm!470277))

(assert (not bm!470256))

(assert (not bm!470327))

(assert (not b!5927489))

(assert (not b!5927624))

(assert (not b!5927253))

(assert (not d!1858355))

(assert (not d!1858497))

(assert (not bm!470285))

(assert (not b!5927551))

(assert (not b!5927230))

(assert (not b!5927603))

(assert (not b!5927612))

(assert (not b!5927462))

(assert (not b!5927579))

(assert (not b!5927580))

(assert (not d!1858389))

(assert (not bm!470312))

(assert (not b!5927643))

(assert (not b!5927484))

(assert (not b!5927195))

(assert (not b!5927269))

(assert (not b!5927570))

(assert (not b!5927222))

(assert (not bm!470323))

(assert (not bm!470264))

(assert (not b!5927298))

(assert (not b_lambda!222599))

(assert (not d!1858459))

(assert (not b!5927550))

(assert (not bm!470276))

(assert (not b!5927610))

(assert (not b!5927254))

(assert (not d!1858407))

(assert (not b!5927622))

(assert (not b!5927623))

(assert (not b!5927423))

(assert (not d!1858463))

(assert (not d!1858409))

(assert (not b!5927284))

(assert (not b!5927635))

(assert (not bm!470269))

(assert (not d!1858495))

(assert (not b!5927546))

(assert (not b!5927611))

(assert (not b!5927650))

(assert (not b!5927418))

(assert (not b!5927655))

(assert (not bm!470263))

(assert (not b!5927652))

(assert (not b!5927645))

(assert (not b!5927596))

(assert (not bm!470300))

(assert (not b!5927654))

(assert (not b!5927301))

(assert (not b!5927555))

(assert (not bm!470303))

(assert (not b!5927255))

(assert (not d!1858399))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

