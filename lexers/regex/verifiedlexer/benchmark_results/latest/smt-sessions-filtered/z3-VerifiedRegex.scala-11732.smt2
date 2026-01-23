; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!663380 () Bool)

(assert start!663380)

(declare-fun b!6874460 () Bool)

(declare-fun e!4143500 () Bool)

(declare-fun tp_is_empty!42675 () Bool)

(assert (=> b!6874460 (= e!4143500 tp_is_empty!42675)))

(declare-datatypes ((C!33692 0))(
  ( (C!33693 (val!26548 Int)) )
))
(declare-datatypes ((Regex!16711 0))(
  ( (ElementMatch!16711 (c!1279279 C!33692)) (Concat!25556 (regOne!33934 Regex!16711) (regTwo!33934 Regex!16711)) (EmptyExpr!16711) (Star!16711 (reg!17040 Regex!16711)) (EmptyLang!16711) (Union!16711 (regOne!33935 Regex!16711) (regTwo!33935 Regex!16711)) )
))
(declare-datatypes ((List!66432 0))(
  ( (Nil!66308) (Cons!66308 (h!72756 Regex!16711) (t!380175 List!66432)) )
))
(declare-datatypes ((Context!12190 0))(
  ( (Context!12191 (exprs!6595 List!66432)) )
))
(declare-fun setElem!47297 () Context!12190)

(declare-fun tp!1888244 () Bool)

(declare-fun e!4143498 () Bool)

(declare-fun setRes!47297 () Bool)

(declare-fun setNonEmpty!47297 () Bool)

(declare-fun inv!85024 (Context!12190) Bool)

(assert (=> setNonEmpty!47297 (= setRes!47297 (and tp!1888244 (inv!85024 setElem!47297) e!4143498))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!12190))

(declare-fun setRest!47297 () (InoxSet Context!12190))

(assert (=> setNonEmpty!47297 (= z!1189 ((_ map or) (store ((as const (Array Context!12190 Bool)) false) setElem!47297 true) setRest!47297))))

(declare-fun b!6874461 () Bool)

(declare-fun res!2803419 () Bool)

(declare-fun e!4143493 () Bool)

(assert (=> b!6874461 (=> res!2803419 e!4143493)))

(declare-fun r!7292 () Regex!16711)

(declare-fun isEmptyLang!2031 (Regex!16711) Bool)

(assert (=> b!6874461 (= res!2803419 (not (isEmptyLang!2031 r!7292)))))

(declare-fun b!6874462 () Bool)

(declare-fun tp!1888238 () Bool)

(assert (=> b!6874462 (= e!4143500 tp!1888238)))

(declare-fun b!6874463 () Bool)

(declare-fun tp!1888243 () Bool)

(assert (=> b!6874463 (= e!4143498 tp!1888243)))

(declare-fun b!6874464 () Bool)

(declare-fun res!2803421 () Bool)

(declare-fun e!4143499 () Bool)

(assert (=> b!6874464 (=> (not res!2803421) (not e!4143499))))

(declare-datatypes ((List!66433 0))(
  ( (Nil!66309) (Cons!66309 (h!72757 Context!12190) (t!380176 List!66433)) )
))
(declare-fun zl!343 () List!66433)

(declare-fun toList!10495 ((InoxSet Context!12190)) List!66433)

(assert (=> b!6874464 (= res!2803421 (= (toList!10495 z!1189) zl!343))))

(declare-fun b!6874465 () Bool)

(declare-fun res!2803422 () Bool)

(assert (=> b!6874465 (=> (not res!2803422) (not e!4143499))))

(declare-fun unfocusZipper!2453 (List!66433) Regex!16711)

(assert (=> b!6874465 (= res!2803422 (= r!7292 (unfocusZipper!2453 zl!343)))))

(declare-fun b!6874466 () Bool)

(declare-fun lt!2458978 () Bool)

(assert (=> b!6874466 (= e!4143493 (not lt!2458978))))

(declare-datatypes ((List!66434 0))(
  ( (Nil!66310) (Cons!66310 (h!72758 C!33692) (t!380177 List!66434)) )
))
(declare-fun s!2326 () List!66434)

(declare-fun matchZipper!2675 ((InoxSet Context!12190) List!66434) Bool)

(assert (=> b!6874466 (not (matchZipper!2675 z!1189 s!2326))))

(declare-datatypes ((Unit!160206 0))(
  ( (Unit!160207) )
))
(declare-fun lt!2458979 () Unit!160206)

(declare-fun lemmaEmptyZipperMatchesNothing!118 ((InoxSet Context!12190) List!66434) Unit!160206)

(assert (=> b!6874466 (= lt!2458979 (lemmaEmptyZipperMatchesNothing!118 z!1189 s!2326))))

(declare-fun res!2803420 () Bool)

(assert (=> start!663380 (=> (not res!2803420) (not e!4143499))))

(declare-fun validRegex!8447 (Regex!16711) Bool)

(assert (=> start!663380 (= res!2803420 (validRegex!8447 r!7292))))

(assert (=> start!663380 e!4143499))

(assert (=> start!663380 e!4143500))

(declare-fun condSetEmpty!47297 () Bool)

(assert (=> start!663380 (= condSetEmpty!47297 (= z!1189 ((as const (Array Context!12190 Bool)) false)))))

(assert (=> start!663380 setRes!47297))

(declare-fun e!4143497 () Bool)

(assert (=> start!663380 e!4143497))

(declare-fun e!4143496 () Bool)

(assert (=> start!663380 e!4143496))

(declare-fun b!6874467 () Bool)

(declare-fun tp!1888245 () Bool)

(assert (=> b!6874467 (= e!4143496 (and tp_is_empty!42675 tp!1888245))))

(declare-fun b!6874468 () Bool)

(assert (=> b!6874468 (= e!4143499 (not e!4143493))))

(declare-fun res!2803424 () Bool)

(assert (=> b!6874468 (=> res!2803424 e!4143493)))

(declare-fun e!4143495 () Bool)

(assert (=> b!6874468 (= res!2803424 e!4143495)))

(declare-fun res!2803423 () Bool)

(assert (=> b!6874468 (=> (not res!2803423) (not e!4143495))))

(get-info :version)

(assert (=> b!6874468 (= res!2803423 ((_ is Cons!66309) zl!343))))

(declare-fun matchRSpec!3812 (Regex!16711 List!66434) Bool)

(assert (=> b!6874468 (= lt!2458978 (matchRSpec!3812 r!7292 s!2326))))

(declare-fun matchR!8894 (Regex!16711 List!66434) Bool)

(assert (=> b!6874468 (= lt!2458978 (matchR!8894 r!7292 s!2326))))

(declare-fun lt!2458980 () Unit!160206)

(declare-fun mainMatchTheorem!3812 (Regex!16711 List!66434) Unit!160206)

(assert (=> b!6874468 (= lt!2458980 (mainMatchTheorem!3812 r!7292 s!2326))))

(declare-fun b!6874469 () Bool)

(declare-fun e!4143494 () Bool)

(declare-fun tp!1888242 () Bool)

(assert (=> b!6874469 (= e!4143494 tp!1888242)))

(declare-fun b!6874470 () Bool)

(declare-fun isEmpty!38653 (List!66433) Bool)

(assert (=> b!6874470 (= e!4143495 (isEmpty!38653 (t!380176 zl!343)))))

(declare-fun tp!1888246 () Bool)

(declare-fun b!6874471 () Bool)

(assert (=> b!6874471 (= e!4143497 (and (inv!85024 (h!72757 zl!343)) e!4143494 tp!1888246))))

(declare-fun b!6874472 () Bool)

(declare-fun tp!1888240 () Bool)

(declare-fun tp!1888241 () Bool)

(assert (=> b!6874472 (= e!4143500 (and tp!1888240 tp!1888241))))

(declare-fun b!6874473 () Bool)

(declare-fun res!2803418 () Bool)

(assert (=> b!6874473 (=> res!2803418 e!4143493)))

(assert (=> b!6874473 (= res!2803418 ((_ is Cons!66309) zl!343))))

(declare-fun b!6874474 () Bool)

(declare-fun tp!1888239 () Bool)

(declare-fun tp!1888247 () Bool)

(assert (=> b!6874474 (= e!4143500 (and tp!1888239 tp!1888247))))

(declare-fun b!6874475 () Bool)

(declare-fun res!2803417 () Bool)

(assert (=> b!6874475 (=> res!2803417 e!4143493)))

(assert (=> b!6874475 (= res!2803417 (not (= z!1189 ((as const (Array Context!12190 Bool)) false))))))

(declare-fun setIsEmpty!47297 () Bool)

(assert (=> setIsEmpty!47297 setRes!47297))

(assert (= (and start!663380 res!2803420) b!6874464))

(assert (= (and b!6874464 res!2803421) b!6874465))

(assert (= (and b!6874465 res!2803422) b!6874468))

(assert (= (and b!6874468 res!2803423) b!6874470))

(assert (= (and b!6874468 (not res!2803424)) b!6874473))

(assert (= (and b!6874473 (not res!2803418)) b!6874461))

(assert (= (and b!6874461 (not res!2803419)) b!6874475))

(assert (= (and b!6874475 (not res!2803417)) b!6874466))

(assert (= (and start!663380 ((_ is ElementMatch!16711) r!7292)) b!6874460))

(assert (= (and start!663380 ((_ is Concat!25556) r!7292)) b!6874472))

(assert (= (and start!663380 ((_ is Star!16711) r!7292)) b!6874462))

(assert (= (and start!663380 ((_ is Union!16711) r!7292)) b!6874474))

(assert (= (and start!663380 condSetEmpty!47297) setIsEmpty!47297))

(assert (= (and start!663380 (not condSetEmpty!47297)) setNonEmpty!47297))

(assert (= setNonEmpty!47297 b!6874463))

(assert (= b!6874471 b!6874469))

(assert (= (and start!663380 ((_ is Cons!66309) zl!343)) b!6874471))

(assert (= (and start!663380 ((_ is Cons!66310) s!2326)) b!6874467))

(declare-fun m!7603528 () Bool)

(assert (=> b!6874466 m!7603528))

(declare-fun m!7603530 () Bool)

(assert (=> b!6874466 m!7603530))

(declare-fun m!7603532 () Bool)

(assert (=> b!6874470 m!7603532))

(declare-fun m!7603534 () Bool)

(assert (=> b!6874464 m!7603534))

(declare-fun m!7603536 () Bool)

(assert (=> b!6874468 m!7603536))

(declare-fun m!7603538 () Bool)

(assert (=> b!6874468 m!7603538))

(declare-fun m!7603540 () Bool)

(assert (=> b!6874468 m!7603540))

(declare-fun m!7603542 () Bool)

(assert (=> b!6874465 m!7603542))

(declare-fun m!7603544 () Bool)

(assert (=> b!6874471 m!7603544))

(declare-fun m!7603546 () Bool)

(assert (=> setNonEmpty!47297 m!7603546))

(declare-fun m!7603548 () Bool)

(assert (=> b!6874461 m!7603548))

(declare-fun m!7603550 () Bool)

(assert (=> start!663380 m!7603550))

(check-sat (not b!6874467) (not b!6874469) (not b!6874466) (not setNonEmpty!47297) (not b!6874463) (not b!6874468) (not b!6874472) (not b!6874465) (not b!6874470) (not b!6874474) (not start!663380) (not b!6874471) tp_is_empty!42675 (not b!6874464) (not b!6874462) (not b!6874461))
(check-sat)
(get-model)

(declare-fun b!6874691 () Bool)

(assert (=> b!6874691 true))

(assert (=> b!6874691 true))

(declare-fun bs!1837617 () Bool)

(declare-fun b!6874695 () Bool)

(assert (= bs!1837617 (and b!6874695 b!6874691)))

(declare-fun lambda!389131 () Int)

(declare-fun lambda!389130 () Int)

(assert (=> bs!1837617 (not (= lambda!389131 lambda!389130))))

(assert (=> b!6874695 true))

(assert (=> b!6874695 true))

(declare-fun b!6874687 () Bool)

(declare-fun e!4143621 () Bool)

(assert (=> b!6874687 (= e!4143621 (matchRSpec!3812 (regTwo!33935 r!7292) s!2326))))

(declare-fun b!6874688 () Bool)

(declare-fun c!1279318 () Bool)

(assert (=> b!6874688 (= c!1279318 ((_ is ElementMatch!16711) r!7292))))

(declare-fun e!4143615 () Bool)

(declare-fun e!4143620 () Bool)

(assert (=> b!6874688 (= e!4143615 e!4143620)))

(declare-fun d!2159065 () Bool)

(declare-fun c!1279321 () Bool)

(assert (=> d!2159065 (= c!1279321 ((_ is EmptyExpr!16711) r!7292))))

(declare-fun e!4143618 () Bool)

(assert (=> d!2159065 (= (matchRSpec!3812 r!7292 s!2326) e!4143618)))

(declare-fun bm!626097 () Bool)

(declare-fun call!626103 () Bool)

(declare-fun c!1279319 () Bool)

(declare-fun Exists!3765 (Int) Bool)

(assert (=> bm!626097 (= call!626103 (Exists!3765 (ite c!1279319 lambda!389130 lambda!389131)))))

(declare-fun b!6874689 () Bool)

(declare-fun e!4143617 () Bool)

(declare-fun e!4143616 () Bool)

(assert (=> b!6874689 (= e!4143617 e!4143616)))

(assert (=> b!6874689 (= c!1279319 ((_ is Star!16711) r!7292))))

(declare-fun b!6874690 () Bool)

(assert (=> b!6874690 (= e!4143617 e!4143621)))

(declare-fun res!2803503 () Bool)

(assert (=> b!6874690 (= res!2803503 (matchRSpec!3812 (regOne!33935 r!7292) s!2326))))

(assert (=> b!6874690 (=> res!2803503 e!4143621)))

(declare-fun e!4143619 () Bool)

(assert (=> b!6874691 (= e!4143619 call!626103)))

(declare-fun b!6874692 () Bool)

(declare-fun c!1279320 () Bool)

(assert (=> b!6874692 (= c!1279320 ((_ is Union!16711) r!7292))))

(assert (=> b!6874692 (= e!4143620 e!4143617)))

(declare-fun b!6874693 () Bool)

(declare-fun call!626102 () Bool)

(assert (=> b!6874693 (= e!4143618 call!626102)))

(declare-fun b!6874694 () Bool)

(assert (=> b!6874694 (= e!4143620 (= s!2326 (Cons!66310 (c!1279279 r!7292) Nil!66310)))))

(assert (=> b!6874695 (= e!4143616 call!626103)))

(declare-fun bm!626098 () Bool)

(declare-fun isEmpty!38655 (List!66434) Bool)

(assert (=> bm!626098 (= call!626102 (isEmpty!38655 s!2326))))

(declare-fun b!6874696 () Bool)

(declare-fun res!2803504 () Bool)

(assert (=> b!6874696 (=> res!2803504 e!4143619)))

(assert (=> b!6874696 (= res!2803504 call!626102)))

(assert (=> b!6874696 (= e!4143616 e!4143619)))

(declare-fun b!6874697 () Bool)

(assert (=> b!6874697 (= e!4143618 e!4143615)))

(declare-fun res!2803502 () Bool)

(assert (=> b!6874697 (= res!2803502 (not ((_ is EmptyLang!16711) r!7292)))))

(assert (=> b!6874697 (=> (not res!2803502) (not e!4143615))))

(assert (= (and d!2159065 c!1279321) b!6874693))

(assert (= (and d!2159065 (not c!1279321)) b!6874697))

(assert (= (and b!6874697 res!2803502) b!6874688))

(assert (= (and b!6874688 c!1279318) b!6874694))

(assert (= (and b!6874688 (not c!1279318)) b!6874692))

(assert (= (and b!6874692 c!1279320) b!6874690))

(assert (= (and b!6874692 (not c!1279320)) b!6874689))

(assert (= (and b!6874690 (not res!2803503)) b!6874687))

(assert (= (and b!6874689 c!1279319) b!6874696))

(assert (= (and b!6874689 (not c!1279319)) b!6874695))

(assert (= (and b!6874696 (not res!2803504)) b!6874691))

(assert (= (or b!6874691 b!6874695) bm!626097))

(assert (= (or b!6874693 b!6874696) bm!626098))

(declare-fun m!7603608 () Bool)

(assert (=> b!6874687 m!7603608))

(declare-fun m!7603610 () Bool)

(assert (=> bm!626097 m!7603610))

(declare-fun m!7603612 () Bool)

(assert (=> b!6874690 m!7603612))

(declare-fun m!7603614 () Bool)

(assert (=> bm!626098 m!7603614))

(assert (=> b!6874468 d!2159065))

(declare-fun b!6874730 () Bool)

(declare-fun e!4143640 () Bool)

(declare-fun e!4143642 () Bool)

(assert (=> b!6874730 (= e!4143640 e!4143642)))

(declare-fun c!1279328 () Bool)

(assert (=> b!6874730 (= c!1279328 ((_ is EmptyLang!16711) r!7292))))

(declare-fun b!6874731 () Bool)

(declare-fun e!4143641 () Bool)

(declare-fun head!13797 (List!66434) C!33692)

(assert (=> b!6874731 (= e!4143641 (not (= (head!13797 s!2326) (c!1279279 r!7292))))))

(declare-fun b!6874732 () Bool)

(declare-fun e!4143637 () Bool)

(declare-fun derivativeStep!5348 (Regex!16711 C!33692) Regex!16711)

(declare-fun tail!12849 (List!66434) List!66434)

(assert (=> b!6874732 (= e!4143637 (matchR!8894 (derivativeStep!5348 r!7292 (head!13797 s!2326)) (tail!12849 s!2326)))))

(declare-fun b!6874733 () Bool)

(declare-fun lt!2458998 () Bool)

(assert (=> b!6874733 (= e!4143642 (not lt!2458998))))

(declare-fun d!2159091 () Bool)

(assert (=> d!2159091 e!4143640))

(declare-fun c!1279329 () Bool)

(assert (=> d!2159091 (= c!1279329 ((_ is EmptyExpr!16711) r!7292))))

(assert (=> d!2159091 (= lt!2458998 e!4143637)))

(declare-fun c!1279330 () Bool)

(assert (=> d!2159091 (= c!1279330 (isEmpty!38655 s!2326))))

(assert (=> d!2159091 (validRegex!8447 r!7292)))

(assert (=> d!2159091 (= (matchR!8894 r!7292 s!2326) lt!2458998)))

(declare-fun b!6874734 () Bool)

(declare-fun e!4143636 () Bool)

(assert (=> b!6874734 (= e!4143636 e!4143641)))

(declare-fun res!2803521 () Bool)

(assert (=> b!6874734 (=> res!2803521 e!4143641)))

(declare-fun call!626106 () Bool)

(assert (=> b!6874734 (= res!2803521 call!626106)))

(declare-fun b!6874735 () Bool)

(declare-fun e!4143639 () Bool)

(assert (=> b!6874735 (= e!4143639 e!4143636)))

(declare-fun res!2803526 () Bool)

(assert (=> b!6874735 (=> (not res!2803526) (not e!4143636))))

(assert (=> b!6874735 (= res!2803526 (not lt!2458998))))

(declare-fun b!6874736 () Bool)

(declare-fun nullable!6666 (Regex!16711) Bool)

(assert (=> b!6874736 (= e!4143637 (nullable!6666 r!7292))))

(declare-fun b!6874737 () Bool)

(declare-fun res!2803522 () Bool)

(assert (=> b!6874737 (=> res!2803522 e!4143639)))

(assert (=> b!6874737 (= res!2803522 (not ((_ is ElementMatch!16711) r!7292)))))

(assert (=> b!6874737 (= e!4143642 e!4143639)))

(declare-fun b!6874738 () Bool)

(declare-fun res!2803525 () Bool)

(assert (=> b!6874738 (=> res!2803525 e!4143639)))

(declare-fun e!4143638 () Bool)

(assert (=> b!6874738 (= res!2803525 e!4143638)))

(declare-fun res!2803523 () Bool)

(assert (=> b!6874738 (=> (not res!2803523) (not e!4143638))))

(assert (=> b!6874738 (= res!2803523 lt!2458998)))

(declare-fun b!6874739 () Bool)

(assert (=> b!6874739 (= e!4143638 (= (head!13797 s!2326) (c!1279279 r!7292)))))

(declare-fun bm!626101 () Bool)

(assert (=> bm!626101 (= call!626106 (isEmpty!38655 s!2326))))

(declare-fun b!6874740 () Bool)

(declare-fun res!2803524 () Bool)

(assert (=> b!6874740 (=> res!2803524 e!4143641)))

(assert (=> b!6874740 (= res!2803524 (not (isEmpty!38655 (tail!12849 s!2326))))))

(declare-fun b!6874741 () Bool)

(assert (=> b!6874741 (= e!4143640 (= lt!2458998 call!626106))))

(declare-fun b!6874742 () Bool)

(declare-fun res!2803527 () Bool)

(assert (=> b!6874742 (=> (not res!2803527) (not e!4143638))))

(assert (=> b!6874742 (= res!2803527 (isEmpty!38655 (tail!12849 s!2326)))))

(declare-fun b!6874743 () Bool)

(declare-fun res!2803528 () Bool)

(assert (=> b!6874743 (=> (not res!2803528) (not e!4143638))))

(assert (=> b!6874743 (= res!2803528 (not call!626106))))

(assert (= (and d!2159091 c!1279330) b!6874736))

(assert (= (and d!2159091 (not c!1279330)) b!6874732))

(assert (= (and d!2159091 c!1279329) b!6874741))

(assert (= (and d!2159091 (not c!1279329)) b!6874730))

(assert (= (and b!6874730 c!1279328) b!6874733))

(assert (= (and b!6874730 (not c!1279328)) b!6874737))

(assert (= (and b!6874737 (not res!2803522)) b!6874738))

(assert (= (and b!6874738 res!2803523) b!6874743))

(assert (= (and b!6874743 res!2803528) b!6874742))

(assert (= (and b!6874742 res!2803527) b!6874739))

(assert (= (and b!6874738 (not res!2803525)) b!6874735))

(assert (= (and b!6874735 res!2803526) b!6874734))

(assert (= (and b!6874734 (not res!2803521)) b!6874740))

(assert (= (and b!6874740 (not res!2803524)) b!6874731))

(assert (= (or b!6874741 b!6874734 b!6874743) bm!626101))

(declare-fun m!7603616 () Bool)

(assert (=> b!6874742 m!7603616))

(assert (=> b!6874742 m!7603616))

(declare-fun m!7603618 () Bool)

(assert (=> b!6874742 m!7603618))

(declare-fun m!7603620 () Bool)

(assert (=> b!6874732 m!7603620))

(assert (=> b!6874732 m!7603620))

(declare-fun m!7603622 () Bool)

(assert (=> b!6874732 m!7603622))

(assert (=> b!6874732 m!7603616))

(assert (=> b!6874732 m!7603622))

(assert (=> b!6874732 m!7603616))

(declare-fun m!7603624 () Bool)

(assert (=> b!6874732 m!7603624))

(assert (=> bm!626101 m!7603614))

(assert (=> b!6874739 m!7603620))

(assert (=> d!2159091 m!7603614))

(assert (=> d!2159091 m!7603550))

(declare-fun m!7603626 () Bool)

(assert (=> b!6874736 m!7603626))

(assert (=> b!6874731 m!7603620))

(assert (=> b!6874740 m!7603616))

(assert (=> b!6874740 m!7603616))

(assert (=> b!6874740 m!7603618))

(assert (=> b!6874468 d!2159091))

(declare-fun d!2159093 () Bool)

(assert (=> d!2159093 (= (matchR!8894 r!7292 s!2326) (matchRSpec!3812 r!7292 s!2326))))

(declare-fun lt!2459001 () Unit!160206)

(declare-fun choose!51227 (Regex!16711 List!66434) Unit!160206)

(assert (=> d!2159093 (= lt!2459001 (choose!51227 r!7292 s!2326))))

(assert (=> d!2159093 (validRegex!8447 r!7292)))

(assert (=> d!2159093 (= (mainMatchTheorem!3812 r!7292 s!2326) lt!2459001)))

(declare-fun bs!1837618 () Bool)

(assert (= bs!1837618 d!2159093))

(assert (=> bs!1837618 m!7603538))

(assert (=> bs!1837618 m!7603536))

(declare-fun m!7603628 () Bool)

(assert (=> bs!1837618 m!7603628))

(assert (=> bs!1837618 m!7603550))

(assert (=> b!6874468 d!2159093))

(declare-fun d!2159095 () Bool)

(declare-fun e!4143645 () Bool)

(assert (=> d!2159095 e!4143645))

(declare-fun res!2803531 () Bool)

(assert (=> d!2159095 (=> (not res!2803531) (not e!4143645))))

(declare-fun lt!2459004 () List!66433)

(declare-fun noDuplicate!2468 (List!66433) Bool)

(assert (=> d!2159095 (= res!2803531 (noDuplicate!2468 lt!2459004))))

(declare-fun choose!51228 ((InoxSet Context!12190)) List!66433)

(assert (=> d!2159095 (= lt!2459004 (choose!51228 z!1189))))

(assert (=> d!2159095 (= (toList!10495 z!1189) lt!2459004)))

(declare-fun b!6874746 () Bool)

(declare-fun content!13020 (List!66433) (InoxSet Context!12190))

(assert (=> b!6874746 (= e!4143645 (= (content!13020 lt!2459004) z!1189))))

(assert (= (and d!2159095 res!2803531) b!6874746))

(declare-fun m!7603630 () Bool)

(assert (=> d!2159095 m!7603630))

(declare-fun m!7603632 () Bool)

(assert (=> d!2159095 m!7603632))

(declare-fun m!7603634 () Bool)

(assert (=> b!6874746 m!7603634))

(assert (=> b!6874464 d!2159095))

(declare-fun d!2159097 () Bool)

(declare-fun lambda!389134 () Int)

(declare-fun forall!15910 (List!66432 Int) Bool)

(assert (=> d!2159097 (= (inv!85024 setElem!47297) (forall!15910 (exprs!6595 setElem!47297) lambda!389134))))

(declare-fun bs!1837619 () Bool)

(assert (= bs!1837619 d!2159097))

(declare-fun m!7603636 () Bool)

(assert (=> bs!1837619 m!7603636))

(assert (=> setNonEmpty!47297 d!2159097))

(declare-fun bs!1837620 () Bool)

(declare-fun d!2159099 () Bool)

(assert (= bs!1837620 (and d!2159099 d!2159097)))

(declare-fun lambda!389135 () Int)

(assert (=> bs!1837620 (= lambda!389135 lambda!389134)))

(assert (=> d!2159099 (= (inv!85024 (h!72757 zl!343)) (forall!15910 (exprs!6595 (h!72757 zl!343)) lambda!389135))))

(declare-fun bs!1837621 () Bool)

(assert (= bs!1837621 d!2159099))

(declare-fun m!7603638 () Bool)

(assert (=> bs!1837621 m!7603638))

(assert (=> b!6874471 d!2159099))

(declare-fun b!6874765 () Bool)

(declare-fun e!4143665 () Bool)

(declare-fun e!4143661 () Bool)

(assert (=> b!6874765 (= e!4143665 e!4143661)))

(declare-fun res!2803546 () Bool)

(assert (=> b!6874765 (= res!2803546 (not (nullable!6666 (reg!17040 r!7292))))))

(assert (=> b!6874765 (=> (not res!2803546) (not e!4143661))))

(declare-fun b!6874766 () Bool)

(declare-fun e!4143666 () Bool)

(declare-fun call!626113 () Bool)

(assert (=> b!6874766 (= e!4143666 call!626113)))

(declare-fun b!6874767 () Bool)

(declare-fun e!4143663 () Bool)

(declare-fun e!4143664 () Bool)

(assert (=> b!6874767 (= e!4143663 e!4143664)))

(declare-fun res!2803545 () Bool)

(assert (=> b!6874767 (=> (not res!2803545) (not e!4143664))))

(declare-fun call!626115 () Bool)

(assert (=> b!6874767 (= res!2803545 call!626115)))

(declare-fun b!6874768 () Bool)

(declare-fun call!626114 () Bool)

(assert (=> b!6874768 (= e!4143661 call!626114)))

(declare-fun c!1279336 () Bool)

(declare-fun c!1279335 () Bool)

(declare-fun bm!626108 () Bool)

(assert (=> bm!626108 (= call!626114 (validRegex!8447 (ite c!1279336 (reg!17040 r!7292) (ite c!1279335 (regOne!33935 r!7292) (regOne!33934 r!7292)))))))

(declare-fun d!2159101 () Bool)

(declare-fun res!2803543 () Bool)

(declare-fun e!4143660 () Bool)

(assert (=> d!2159101 (=> res!2803543 e!4143660)))

(assert (=> d!2159101 (= res!2803543 ((_ is ElementMatch!16711) r!7292))))

(assert (=> d!2159101 (= (validRegex!8447 r!7292) e!4143660)))

(declare-fun bm!626109 () Bool)

(assert (=> bm!626109 (= call!626115 call!626114)))

(declare-fun b!6874769 () Bool)

(assert (=> b!6874769 (= e!4143664 call!626113)))

(declare-fun b!6874770 () Bool)

(assert (=> b!6874770 (= e!4143660 e!4143665)))

(assert (=> b!6874770 (= c!1279336 ((_ is Star!16711) r!7292))))

(declare-fun b!6874771 () Bool)

(declare-fun res!2803542 () Bool)

(assert (=> b!6874771 (=> res!2803542 e!4143663)))

(assert (=> b!6874771 (= res!2803542 (not ((_ is Concat!25556) r!7292)))))

(declare-fun e!4143662 () Bool)

(assert (=> b!6874771 (= e!4143662 e!4143663)))

(declare-fun bm!626110 () Bool)

(assert (=> bm!626110 (= call!626113 (validRegex!8447 (ite c!1279335 (regTwo!33935 r!7292) (regTwo!33934 r!7292))))))

(declare-fun b!6874772 () Bool)

(declare-fun res!2803544 () Bool)

(assert (=> b!6874772 (=> (not res!2803544) (not e!4143666))))

(assert (=> b!6874772 (= res!2803544 call!626115)))

(assert (=> b!6874772 (= e!4143662 e!4143666)))

(declare-fun b!6874773 () Bool)

(assert (=> b!6874773 (= e!4143665 e!4143662)))

(assert (=> b!6874773 (= c!1279335 ((_ is Union!16711) r!7292))))

(assert (= (and d!2159101 (not res!2803543)) b!6874770))

(assert (= (and b!6874770 c!1279336) b!6874765))

(assert (= (and b!6874770 (not c!1279336)) b!6874773))

(assert (= (and b!6874765 res!2803546) b!6874768))

(assert (= (and b!6874773 c!1279335) b!6874772))

(assert (= (and b!6874773 (not c!1279335)) b!6874771))

(assert (= (and b!6874772 res!2803544) b!6874766))

(assert (= (and b!6874771 (not res!2803542)) b!6874767))

(assert (= (and b!6874767 res!2803545) b!6874769))

(assert (= (or b!6874766 b!6874769) bm!626110))

(assert (= (or b!6874772 b!6874767) bm!626109))

(assert (= (or b!6874768 bm!626109) bm!626108))

(declare-fun m!7603640 () Bool)

(assert (=> b!6874765 m!7603640))

(declare-fun m!7603642 () Bool)

(assert (=> bm!626108 m!7603642))

(declare-fun m!7603644 () Bool)

(assert (=> bm!626110 m!7603644))

(assert (=> start!663380 d!2159101))

(declare-fun d!2159103 () Bool)

(assert (=> d!2159103 (= (isEmpty!38653 (t!380176 zl!343)) ((_ is Nil!66309) (t!380176 zl!343)))))

(assert (=> b!6874470 d!2159103))

(declare-fun d!2159105 () Bool)

(declare-fun lt!2459007 () Regex!16711)

(assert (=> d!2159105 (validRegex!8447 lt!2459007)))

(declare-fun generalisedUnion!2540 (List!66432) Regex!16711)

(declare-fun unfocusZipperList!2128 (List!66433) List!66432)

(assert (=> d!2159105 (= lt!2459007 (generalisedUnion!2540 (unfocusZipperList!2128 zl!343)))))

(assert (=> d!2159105 (= (unfocusZipper!2453 zl!343) lt!2459007)))

(declare-fun bs!1837622 () Bool)

(assert (= bs!1837622 d!2159105))

(declare-fun m!7603646 () Bool)

(assert (=> bs!1837622 m!7603646))

(declare-fun m!7603648 () Bool)

(assert (=> bs!1837622 m!7603648))

(assert (=> bs!1837622 m!7603648))

(declare-fun m!7603650 () Bool)

(assert (=> bs!1837622 m!7603650))

(assert (=> b!6874465 d!2159105))

(declare-fun d!2159107 () Bool)

(declare-fun c!1279339 () Bool)

(assert (=> d!2159107 (= c!1279339 (isEmpty!38655 s!2326))))

(declare-fun e!4143669 () Bool)

(assert (=> d!2159107 (= (matchZipper!2675 z!1189 s!2326) e!4143669)))

(declare-fun b!6874778 () Bool)

(declare-fun nullableZipper!2375 ((InoxSet Context!12190)) Bool)

(assert (=> b!6874778 (= e!4143669 (nullableZipper!2375 z!1189))))

(declare-fun b!6874779 () Bool)

(declare-fun derivationStepZipper!2622 ((InoxSet Context!12190) C!33692) (InoxSet Context!12190))

(assert (=> b!6874779 (= e!4143669 (matchZipper!2675 (derivationStepZipper!2622 z!1189 (head!13797 s!2326)) (tail!12849 s!2326)))))

(assert (= (and d!2159107 c!1279339) b!6874778))

(assert (= (and d!2159107 (not c!1279339)) b!6874779))

(assert (=> d!2159107 m!7603614))

(declare-fun m!7603652 () Bool)

(assert (=> b!6874778 m!7603652))

(assert (=> b!6874779 m!7603620))

(assert (=> b!6874779 m!7603620))

(declare-fun m!7603654 () Bool)

(assert (=> b!6874779 m!7603654))

(assert (=> b!6874779 m!7603616))

(assert (=> b!6874779 m!7603654))

(assert (=> b!6874779 m!7603616))

(declare-fun m!7603656 () Bool)

(assert (=> b!6874779 m!7603656))

(assert (=> b!6874466 d!2159107))

(declare-fun d!2159109 () Bool)

(assert (=> d!2159109 (not (matchZipper!2675 z!1189 s!2326))))

(declare-fun lt!2459010 () Unit!160206)

(declare-fun choose!51229 ((InoxSet Context!12190) List!66434) Unit!160206)

(assert (=> d!2159109 (= lt!2459010 (choose!51229 z!1189 s!2326))))

(assert (=> d!2159109 (= z!1189 ((as const (Array Context!12190 Bool)) false))))

(assert (=> d!2159109 (= (lemmaEmptyZipperMatchesNothing!118 z!1189 s!2326) lt!2459010)))

(declare-fun bs!1837623 () Bool)

(assert (= bs!1837623 d!2159109))

(assert (=> bs!1837623 m!7603528))

(declare-fun m!7603658 () Bool)

(assert (=> bs!1837623 m!7603658))

(assert (=> b!6874466 d!2159109))

(declare-fun d!2159111 () Bool)

(assert (=> d!2159111 (= (isEmptyLang!2031 r!7292) ((_ is EmptyLang!16711) r!7292))))

(assert (=> b!6874461 d!2159111))

(declare-fun b!6874784 () Bool)

(declare-fun e!4143672 () Bool)

(declare-fun tp!1888310 () Bool)

(declare-fun tp!1888311 () Bool)

(assert (=> b!6874784 (= e!4143672 (and tp!1888310 tp!1888311))))

(assert (=> b!6874463 (= tp!1888243 e!4143672)))

(assert (= (and b!6874463 ((_ is Cons!66308) (exprs!6595 setElem!47297))) b!6874784))

(declare-fun b!6874796 () Bool)

(declare-fun e!4143675 () Bool)

(declare-fun tp!1888324 () Bool)

(declare-fun tp!1888326 () Bool)

(assert (=> b!6874796 (= e!4143675 (and tp!1888324 tp!1888326))))

(declare-fun b!6874798 () Bool)

(declare-fun tp!1888323 () Bool)

(declare-fun tp!1888322 () Bool)

(assert (=> b!6874798 (= e!4143675 (and tp!1888323 tp!1888322))))

(declare-fun b!6874795 () Bool)

(assert (=> b!6874795 (= e!4143675 tp_is_empty!42675)))

(declare-fun b!6874797 () Bool)

(declare-fun tp!1888325 () Bool)

(assert (=> b!6874797 (= e!4143675 tp!1888325)))

(assert (=> b!6874462 (= tp!1888238 e!4143675)))

(assert (= (and b!6874462 ((_ is ElementMatch!16711) (reg!17040 r!7292))) b!6874795))

(assert (= (and b!6874462 ((_ is Concat!25556) (reg!17040 r!7292))) b!6874796))

(assert (= (and b!6874462 ((_ is Star!16711) (reg!17040 r!7292))) b!6874797))

(assert (= (and b!6874462 ((_ is Union!16711) (reg!17040 r!7292))) b!6874798))

(declare-fun b!6874800 () Bool)

(declare-fun e!4143676 () Bool)

(declare-fun tp!1888329 () Bool)

(declare-fun tp!1888331 () Bool)

(assert (=> b!6874800 (= e!4143676 (and tp!1888329 tp!1888331))))

(declare-fun b!6874802 () Bool)

(declare-fun tp!1888328 () Bool)

(declare-fun tp!1888327 () Bool)

(assert (=> b!6874802 (= e!4143676 (and tp!1888328 tp!1888327))))

(declare-fun b!6874799 () Bool)

(assert (=> b!6874799 (= e!4143676 tp_is_empty!42675)))

(declare-fun b!6874801 () Bool)

(declare-fun tp!1888330 () Bool)

(assert (=> b!6874801 (= e!4143676 tp!1888330)))

(assert (=> b!6874474 (= tp!1888239 e!4143676)))

(assert (= (and b!6874474 ((_ is ElementMatch!16711) (regOne!33935 r!7292))) b!6874799))

(assert (= (and b!6874474 ((_ is Concat!25556) (regOne!33935 r!7292))) b!6874800))

(assert (= (and b!6874474 ((_ is Star!16711) (regOne!33935 r!7292))) b!6874801))

(assert (= (and b!6874474 ((_ is Union!16711) (regOne!33935 r!7292))) b!6874802))

(declare-fun b!6874804 () Bool)

(declare-fun e!4143677 () Bool)

(declare-fun tp!1888334 () Bool)

(declare-fun tp!1888336 () Bool)

(assert (=> b!6874804 (= e!4143677 (and tp!1888334 tp!1888336))))

(declare-fun b!6874806 () Bool)

(declare-fun tp!1888333 () Bool)

(declare-fun tp!1888332 () Bool)

(assert (=> b!6874806 (= e!4143677 (and tp!1888333 tp!1888332))))

(declare-fun b!6874803 () Bool)

(assert (=> b!6874803 (= e!4143677 tp_is_empty!42675)))

(declare-fun b!6874805 () Bool)

(declare-fun tp!1888335 () Bool)

(assert (=> b!6874805 (= e!4143677 tp!1888335)))

(assert (=> b!6874474 (= tp!1888247 e!4143677)))

(assert (= (and b!6874474 ((_ is ElementMatch!16711) (regTwo!33935 r!7292))) b!6874803))

(assert (= (and b!6874474 ((_ is Concat!25556) (regTwo!33935 r!7292))) b!6874804))

(assert (= (and b!6874474 ((_ is Star!16711) (regTwo!33935 r!7292))) b!6874805))

(assert (= (and b!6874474 ((_ is Union!16711) (regTwo!33935 r!7292))) b!6874806))

(declare-fun b!6874807 () Bool)

(declare-fun e!4143678 () Bool)

(declare-fun tp!1888337 () Bool)

(declare-fun tp!1888338 () Bool)

(assert (=> b!6874807 (= e!4143678 (and tp!1888337 tp!1888338))))

(assert (=> b!6874469 (= tp!1888242 e!4143678)))

(assert (= (and b!6874469 ((_ is Cons!66308) (exprs!6595 (h!72757 zl!343)))) b!6874807))

(declare-fun condSetEmpty!47303 () Bool)

(assert (=> setNonEmpty!47297 (= condSetEmpty!47303 (= setRest!47297 ((as const (Array Context!12190 Bool)) false)))))

(declare-fun setRes!47303 () Bool)

(assert (=> setNonEmpty!47297 (= tp!1888244 setRes!47303)))

(declare-fun setIsEmpty!47303 () Bool)

(assert (=> setIsEmpty!47303 setRes!47303))

(declare-fun e!4143681 () Bool)

(declare-fun tp!1888343 () Bool)

(declare-fun setElem!47303 () Context!12190)

(declare-fun setNonEmpty!47303 () Bool)

(assert (=> setNonEmpty!47303 (= setRes!47303 (and tp!1888343 (inv!85024 setElem!47303) e!4143681))))

(declare-fun setRest!47303 () (InoxSet Context!12190))

(assert (=> setNonEmpty!47303 (= setRest!47297 ((_ map or) (store ((as const (Array Context!12190 Bool)) false) setElem!47303 true) setRest!47303))))

(declare-fun b!6874812 () Bool)

(declare-fun tp!1888344 () Bool)

(assert (=> b!6874812 (= e!4143681 tp!1888344)))

(assert (= (and setNonEmpty!47297 condSetEmpty!47303) setIsEmpty!47303))

(assert (= (and setNonEmpty!47297 (not condSetEmpty!47303)) setNonEmpty!47303))

(assert (= setNonEmpty!47303 b!6874812))

(declare-fun m!7603660 () Bool)

(assert (=> setNonEmpty!47303 m!7603660))

(declare-fun b!6874820 () Bool)

(declare-fun e!4143687 () Bool)

(declare-fun tp!1888349 () Bool)

(assert (=> b!6874820 (= e!4143687 tp!1888349)))

(declare-fun tp!1888350 () Bool)

(declare-fun e!4143686 () Bool)

(declare-fun b!6874819 () Bool)

(assert (=> b!6874819 (= e!4143686 (and (inv!85024 (h!72757 (t!380176 zl!343))) e!4143687 tp!1888350))))

(assert (=> b!6874471 (= tp!1888246 e!4143686)))

(assert (= b!6874819 b!6874820))

(assert (= (and b!6874471 ((_ is Cons!66309) (t!380176 zl!343))) b!6874819))

(declare-fun m!7603662 () Bool)

(assert (=> b!6874819 m!7603662))

(declare-fun b!6874822 () Bool)

(declare-fun e!4143688 () Bool)

(declare-fun tp!1888353 () Bool)

(declare-fun tp!1888355 () Bool)

(assert (=> b!6874822 (= e!4143688 (and tp!1888353 tp!1888355))))

(declare-fun b!6874824 () Bool)

(declare-fun tp!1888352 () Bool)

(declare-fun tp!1888351 () Bool)

(assert (=> b!6874824 (= e!4143688 (and tp!1888352 tp!1888351))))

(declare-fun b!6874821 () Bool)

(assert (=> b!6874821 (= e!4143688 tp_is_empty!42675)))

(declare-fun b!6874823 () Bool)

(declare-fun tp!1888354 () Bool)

(assert (=> b!6874823 (= e!4143688 tp!1888354)))

(assert (=> b!6874472 (= tp!1888240 e!4143688)))

(assert (= (and b!6874472 ((_ is ElementMatch!16711) (regOne!33934 r!7292))) b!6874821))

(assert (= (and b!6874472 ((_ is Concat!25556) (regOne!33934 r!7292))) b!6874822))

(assert (= (and b!6874472 ((_ is Star!16711) (regOne!33934 r!7292))) b!6874823))

(assert (= (and b!6874472 ((_ is Union!16711) (regOne!33934 r!7292))) b!6874824))

(declare-fun b!6874826 () Bool)

(declare-fun e!4143689 () Bool)

(declare-fun tp!1888358 () Bool)

(declare-fun tp!1888360 () Bool)

(assert (=> b!6874826 (= e!4143689 (and tp!1888358 tp!1888360))))

(declare-fun b!6874828 () Bool)

(declare-fun tp!1888357 () Bool)

(declare-fun tp!1888356 () Bool)

(assert (=> b!6874828 (= e!4143689 (and tp!1888357 tp!1888356))))

(declare-fun b!6874825 () Bool)

(assert (=> b!6874825 (= e!4143689 tp_is_empty!42675)))

(declare-fun b!6874827 () Bool)

(declare-fun tp!1888359 () Bool)

(assert (=> b!6874827 (= e!4143689 tp!1888359)))

(assert (=> b!6874472 (= tp!1888241 e!4143689)))

(assert (= (and b!6874472 ((_ is ElementMatch!16711) (regTwo!33934 r!7292))) b!6874825))

(assert (= (and b!6874472 ((_ is Concat!25556) (regTwo!33934 r!7292))) b!6874826))

(assert (= (and b!6874472 ((_ is Star!16711) (regTwo!33934 r!7292))) b!6874827))

(assert (= (and b!6874472 ((_ is Union!16711) (regTwo!33934 r!7292))) b!6874828))

(declare-fun b!6874833 () Bool)

(declare-fun e!4143692 () Bool)

(declare-fun tp!1888363 () Bool)

(assert (=> b!6874833 (= e!4143692 (and tp_is_empty!42675 tp!1888363))))

(assert (=> b!6874467 (= tp!1888245 e!4143692)))

(assert (= (and b!6874467 ((_ is Cons!66310) (t!380177 s!2326))) b!6874833))

(check-sat (not b!6874820) (not b!6874801) (not b!6874819) (not d!2159091) (not bm!626110) (not b!6874805) (not d!2159109) (not b!6874796) (not b!6874732) (not b!6874822) (not b!6874828) (not setNonEmpty!47303) (not bm!626108) (not b!6874740) (not b!6874742) (not d!2159097) (not b!6874833) (not bm!626098) (not b!6874823) (not d!2159107) (not d!2159095) (not b!6874746) (not b!6874827) (not b!6874687) (not b!6874731) (not b!6874739) (not b!6874798) (not b!6874812) (not b!6874797) (not b!6874802) (not b!6874826) (not b!6874765) (not bm!626097) (not b!6874824) (not b!6874807) (not b!6874778) (not b!6874804) tp_is_empty!42675 (not b!6874690) (not d!2159099) (not b!6874784) (not b!6874800) (not d!2159105) (not bm!626101) (not b!6874806) (not d!2159093) (not b!6874736) (not b!6874779))
(check-sat)
