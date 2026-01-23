; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!574070 () Bool)

(assert start!574070)

(declare-fun b!5494603 () Bool)

(declare-fun e!3399229 () Bool)

(declare-fun tp!1511905 () Bool)

(declare-fun tp!1511906 () Bool)

(assert (=> b!5494603 (= e!3399229 (and tp!1511905 tp!1511906))))

(declare-fun b!5494604 () Bool)

(declare-fun e!3399228 () Bool)

(declare-fun e!3399233 () Bool)

(assert (=> b!5494604 (= e!3399228 (not e!3399233))))

(declare-fun res!2342901 () Bool)

(assert (=> b!5494604 (=> res!2342901 e!3399233)))

(declare-datatypes ((C!31200 0))(
  ( (C!31201 (val!25302 Int)) )
))
(declare-datatypes ((Regex!15465 0))(
  ( (ElementMatch!15465 (c!959267 C!31200)) (Concat!24310 (regOne!31442 Regex!15465) (regTwo!31442 Regex!15465)) (EmptyExpr!15465) (Star!15465 (reg!15794 Regex!15465)) (EmptyLang!15465) (Union!15465 (regOne!31443 Regex!15465) (regTwo!31443 Regex!15465)) )
))
(declare-datatypes ((List!62694 0))(
  ( (Nil!62570) (Cons!62570 (h!69018 Regex!15465) (t!375925 List!62694)) )
))
(declare-datatypes ((Context!9698 0))(
  ( (Context!9699 (exprs!5349 List!62694)) )
))
(declare-datatypes ((List!62695 0))(
  ( (Nil!62571) (Cons!62571 (h!69019 Context!9698) (t!375926 List!62695)) )
))
(declare-fun zl!343 () List!62695)

(get-info :version)

(assert (=> b!5494604 (= res!2342901 (not ((_ is Cons!62571) zl!343)))))

(declare-fun lt!2242713 () Bool)

(declare-fun r!7292 () Regex!15465)

(declare-datatypes ((List!62696 0))(
  ( (Nil!62572) (Cons!62572 (h!69020 C!31200) (t!375927 List!62696)) )
))
(declare-fun s!2326 () List!62696)

(declare-fun matchRSpec!2568 (Regex!15465 List!62696) Bool)

(assert (=> b!5494604 (= lt!2242713 (matchRSpec!2568 r!7292 s!2326))))

(declare-fun matchR!7650 (Regex!15465 List!62696) Bool)

(assert (=> b!5494604 (= lt!2242713 (matchR!7650 r!7292 s!2326))))

(declare-datatypes ((Unit!155390 0))(
  ( (Unit!155391) )
))
(declare-fun lt!2242715 () Unit!155390)

(declare-fun mainMatchTheorem!2568 (Regex!15465 List!62696) Unit!155390)

(assert (=> b!5494604 (= lt!2242715 (mainMatchTheorem!2568 r!7292 s!2326))))

(declare-fun b!5494605 () Bool)

(declare-fun tp!1511901 () Bool)

(assert (=> b!5494605 (= e!3399229 tp!1511901)))

(declare-fun b!5494606 () Bool)

(declare-fun res!2342904 () Bool)

(assert (=> b!5494606 (=> res!2342904 e!3399233)))

(declare-fun isEmpty!34365 (List!62695) Bool)

(assert (=> b!5494606 (= res!2342904 (not (isEmpty!34365 (t!375926 zl!343))))))

(declare-fun b!5494607 () Bool)

(declare-fun tp!1511907 () Bool)

(declare-fun tp!1511904 () Bool)

(assert (=> b!5494607 (= e!3399229 (and tp!1511907 tp!1511904))))

(declare-fun b!5494608 () Bool)

(declare-fun e!3399232 () Bool)

(assert (=> b!5494608 (= e!3399233 e!3399232)))

(declare-fun res!2342896 () Bool)

(assert (=> b!5494608 (=> res!2342896 e!3399232)))

(declare-fun lt!2242711 () Bool)

(declare-fun lt!2242712 () Bool)

(assert (=> b!5494608 (= res!2342896 (or (not (= lt!2242713 (or lt!2242711 lt!2242712))) ((_ is Nil!62572) s!2326)))))

(assert (=> b!5494608 (= lt!2242712 (matchRSpec!2568 (regTwo!31443 r!7292) s!2326))))

(assert (=> b!5494608 (= lt!2242712 (matchR!7650 (regTwo!31443 r!7292) s!2326))))

(declare-fun lt!2242714 () Unit!155390)

(assert (=> b!5494608 (= lt!2242714 (mainMatchTheorem!2568 (regTwo!31443 r!7292) s!2326))))

(assert (=> b!5494608 (= lt!2242711 (matchRSpec!2568 (regOne!31443 r!7292) s!2326))))

(assert (=> b!5494608 (= lt!2242711 (matchR!7650 (regOne!31443 r!7292) s!2326))))

(declare-fun lt!2242710 () Unit!155390)

(assert (=> b!5494608 (= lt!2242710 (mainMatchTheorem!2568 (regOne!31443 r!7292) s!2326))))

(declare-fun b!5494609 () Bool)

(declare-fun res!2342902 () Bool)

(assert (=> b!5494609 (=> (not res!2342902) (not e!3399228))))

(declare-fun unfocusZipper!1207 (List!62695) Regex!15465)

(assert (=> b!5494609 (= res!2342902 (= r!7292 (unfocusZipper!1207 zl!343)))))

(declare-fun b!5494610 () Bool)

(declare-fun res!2342903 () Bool)

(assert (=> b!5494610 (=> res!2342903 e!3399233)))

(declare-fun generalisedUnion!1328 (List!62694) Regex!15465)

(declare-fun unfocusZipperList!893 (List!62695) List!62694)

(assert (=> b!5494610 (= res!2342903 (not (= r!7292 (generalisedUnion!1328 (unfocusZipperList!893 zl!343)))))))

(declare-fun b!5494611 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun derivationStepZipperUp!737 (Context!9698 C!31200) (InoxSet Context!9698))

(declare-fun derivationStepZipperDown!811 (Regex!15465 Context!9698 C!31200) (InoxSet Context!9698))

(assert (=> b!5494611 (= e!3399232 (= (derivationStepZipperUp!737 (Context!9699 (Cons!62570 r!7292 Nil!62570)) (h!69020 s!2326)) (derivationStepZipperDown!811 r!7292 (Context!9699 Nil!62570) (h!69020 s!2326))))))

(declare-fun b!5494612 () Bool)

(declare-fun e!3399227 () Bool)

(declare-fun tp!1511903 () Bool)

(assert (=> b!5494612 (= e!3399227 tp!1511903)))

(declare-fun b!5494613 () Bool)

(declare-fun e!3399230 () Bool)

(declare-fun tp!1511898 () Bool)

(assert (=> b!5494613 (= e!3399230 tp!1511898)))

(declare-fun setNonEmpty!36385 () Bool)

(declare-fun tp!1511902 () Bool)

(declare-fun setElem!36385 () Context!9698)

(declare-fun setRes!36385 () Bool)

(declare-fun inv!81909 (Context!9698) Bool)

(assert (=> setNonEmpty!36385 (= setRes!36385 (and tp!1511902 (inv!81909 setElem!36385) e!3399227))))

(declare-fun z!1189 () (InoxSet Context!9698))

(declare-fun setRest!36385 () (InoxSet Context!9698))

(assert (=> setNonEmpty!36385 (= z!1189 ((_ map or) (store ((as const (Array Context!9698 Bool)) false) setElem!36385 true) setRest!36385))))

(declare-fun e!3399231 () Bool)

(declare-fun tp!1511900 () Bool)

(declare-fun b!5494615 () Bool)

(assert (=> b!5494615 (= e!3399231 (and (inv!81909 (h!69019 zl!343)) e!3399230 tp!1511900))))

(declare-fun b!5494616 () Bool)

(declare-fun e!3399234 () Bool)

(declare-fun tp_is_empty!40183 () Bool)

(declare-fun tp!1511899 () Bool)

(assert (=> b!5494616 (= e!3399234 (and tp_is_empty!40183 tp!1511899))))

(declare-fun b!5494617 () Bool)

(declare-fun res!2342895 () Bool)

(assert (=> b!5494617 (=> res!2342895 e!3399233)))

(assert (=> b!5494617 (= res!2342895 (or ((_ is EmptyExpr!15465) r!7292) ((_ is EmptyLang!15465) r!7292) ((_ is ElementMatch!15465) r!7292) (not ((_ is Union!15465) r!7292))))))

(declare-fun b!5494618 () Bool)

(declare-fun res!2342898 () Bool)

(assert (=> b!5494618 (=> res!2342898 e!3399233)))

(declare-fun generalisedConcat!1080 (List!62694) Regex!15465)

(assert (=> b!5494618 (= res!2342898 (not (= r!7292 (generalisedConcat!1080 (exprs!5349 (h!69019 zl!343))))))))

(declare-fun b!5494619 () Bool)

(assert (=> b!5494619 (= e!3399229 tp_is_empty!40183)))

(declare-fun b!5494620 () Bool)

(declare-fun res!2342899 () Bool)

(assert (=> b!5494620 (=> (not res!2342899) (not e!3399228))))

(declare-fun toList!9249 ((InoxSet Context!9698)) List!62695)

(assert (=> b!5494620 (= res!2342899 (= (toList!9249 z!1189) zl!343))))

(declare-fun setIsEmpty!36385 () Bool)

(assert (=> setIsEmpty!36385 setRes!36385))

(declare-fun res!2342900 () Bool)

(assert (=> start!574070 (=> (not res!2342900) (not e!3399228))))

(declare-fun validRegex!7201 (Regex!15465) Bool)

(assert (=> start!574070 (= res!2342900 (validRegex!7201 r!7292))))

(assert (=> start!574070 e!3399228))

(assert (=> start!574070 e!3399229))

(declare-fun condSetEmpty!36385 () Bool)

(assert (=> start!574070 (= condSetEmpty!36385 (= z!1189 ((as const (Array Context!9698 Bool)) false)))))

(assert (=> start!574070 setRes!36385))

(assert (=> start!574070 e!3399231))

(assert (=> start!574070 e!3399234))

(declare-fun b!5494614 () Bool)

(declare-fun res!2342897 () Bool)

(assert (=> b!5494614 (=> res!2342897 e!3399233)))

(assert (=> b!5494614 (= res!2342897 (not ((_ is Cons!62570) (exprs!5349 (h!69019 zl!343)))))))

(assert (= (and start!574070 res!2342900) b!5494620))

(assert (= (and b!5494620 res!2342899) b!5494609))

(assert (= (and b!5494609 res!2342902) b!5494604))

(assert (= (and b!5494604 (not res!2342901)) b!5494606))

(assert (= (and b!5494606 (not res!2342904)) b!5494618))

(assert (= (and b!5494618 (not res!2342898)) b!5494614))

(assert (= (and b!5494614 (not res!2342897)) b!5494610))

(assert (= (and b!5494610 (not res!2342903)) b!5494617))

(assert (= (and b!5494617 (not res!2342895)) b!5494608))

(assert (= (and b!5494608 (not res!2342896)) b!5494611))

(assert (= (and start!574070 ((_ is ElementMatch!15465) r!7292)) b!5494619))

(assert (= (and start!574070 ((_ is Concat!24310) r!7292)) b!5494607))

(assert (= (and start!574070 ((_ is Star!15465) r!7292)) b!5494605))

(assert (= (and start!574070 ((_ is Union!15465) r!7292)) b!5494603))

(assert (= (and start!574070 condSetEmpty!36385) setIsEmpty!36385))

(assert (= (and start!574070 (not condSetEmpty!36385)) setNonEmpty!36385))

(assert (= setNonEmpty!36385 b!5494612))

(assert (= b!5494615 b!5494613))

(assert (= (and start!574070 ((_ is Cons!62571) zl!343)) b!5494615))

(assert (= (and start!574070 ((_ is Cons!62572) s!2326)) b!5494616))

(declare-fun m!6505292 () Bool)

(assert (=> b!5494620 m!6505292))

(declare-fun m!6505294 () Bool)

(assert (=> b!5494611 m!6505294))

(declare-fun m!6505296 () Bool)

(assert (=> b!5494611 m!6505296))

(declare-fun m!6505298 () Bool)

(assert (=> b!5494618 m!6505298))

(declare-fun m!6505300 () Bool)

(assert (=> b!5494609 m!6505300))

(declare-fun m!6505302 () Bool)

(assert (=> b!5494615 m!6505302))

(declare-fun m!6505304 () Bool)

(assert (=> b!5494610 m!6505304))

(assert (=> b!5494610 m!6505304))

(declare-fun m!6505306 () Bool)

(assert (=> b!5494610 m!6505306))

(declare-fun m!6505308 () Bool)

(assert (=> start!574070 m!6505308))

(declare-fun m!6505310 () Bool)

(assert (=> setNonEmpty!36385 m!6505310))

(declare-fun m!6505312 () Bool)

(assert (=> b!5494608 m!6505312))

(declare-fun m!6505314 () Bool)

(assert (=> b!5494608 m!6505314))

(declare-fun m!6505316 () Bool)

(assert (=> b!5494608 m!6505316))

(declare-fun m!6505318 () Bool)

(assert (=> b!5494608 m!6505318))

(declare-fun m!6505320 () Bool)

(assert (=> b!5494608 m!6505320))

(declare-fun m!6505322 () Bool)

(assert (=> b!5494608 m!6505322))

(declare-fun m!6505324 () Bool)

(assert (=> b!5494606 m!6505324))

(declare-fun m!6505326 () Bool)

(assert (=> b!5494604 m!6505326))

(declare-fun m!6505328 () Bool)

(assert (=> b!5494604 m!6505328))

(declare-fun m!6505330 () Bool)

(assert (=> b!5494604 m!6505330))

(check-sat (not b!5494611) (not b!5494606) (not b!5494603) (not b!5494612) (not b!5494620) (not b!5494613) (not b!5494604) tp_is_empty!40183 (not b!5494607) (not start!574070) (not setNonEmpty!36385) (not b!5494618) (not b!5494609) (not b!5494615) (not b!5494605) (not b!5494608) (not b!5494616) (not b!5494610))
(check-sat)
(get-model)

(declare-fun d!1742332 () Bool)

(assert (=> d!1742332 (= (isEmpty!34365 (t!375926 zl!343)) ((_ is Nil!62571) (t!375926 zl!343)))))

(assert (=> b!5494606 d!1742332))

(declare-fun b!5494631 () Bool)

(declare-fun e!3399243 () (InoxSet Context!9698))

(assert (=> b!5494631 (= e!3399243 ((as const (Array Context!9698 Bool)) false))))

(declare-fun b!5494632 () Bool)

(declare-fun e!3399241 () (InoxSet Context!9698))

(assert (=> b!5494632 (= e!3399241 e!3399243)))

(declare-fun c!959273 () Bool)

(assert (=> b!5494632 (= c!959273 ((_ is Cons!62570) (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570)))))))

(declare-fun b!5494633 () Bool)

(declare-fun call!405104 () (InoxSet Context!9698))

(assert (=> b!5494633 (= e!3399241 ((_ map or) call!405104 (derivationStepZipperUp!737 (Context!9699 (t!375925 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570))))) (h!69020 s!2326))))))

(declare-fun d!1742334 () Bool)

(declare-fun c!959272 () Bool)

(declare-fun e!3399242 () Bool)

(assert (=> d!1742334 (= c!959272 e!3399242)))

(declare-fun res!2342907 () Bool)

(assert (=> d!1742334 (=> (not res!2342907) (not e!3399242))))

(assert (=> d!1742334 (= res!2342907 ((_ is Cons!62570) (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570)))))))

(assert (=> d!1742334 (= (derivationStepZipperUp!737 (Context!9699 (Cons!62570 r!7292 Nil!62570)) (h!69020 s!2326)) e!3399241)))

(declare-fun b!5494634 () Bool)

(declare-fun nullable!5507 (Regex!15465) Bool)

(assert (=> b!5494634 (= e!3399242 (nullable!5507 (h!69018 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570))))))))

(declare-fun b!5494635 () Bool)

(assert (=> b!5494635 (= e!3399243 call!405104)))

(declare-fun bm!405099 () Bool)

(assert (=> bm!405099 (= call!405104 (derivationStepZipperDown!811 (h!69018 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570)))) (Context!9699 (t!375925 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570))))) (h!69020 s!2326)))))

(assert (= (and d!1742334 res!2342907) b!5494634))

(assert (= (and d!1742334 c!959272) b!5494633))

(assert (= (and d!1742334 (not c!959272)) b!5494632))

(assert (= (and b!5494632 c!959273) b!5494635))

(assert (= (and b!5494632 (not c!959273)) b!5494631))

(assert (= (or b!5494633 b!5494635) bm!405099))

(declare-fun m!6505332 () Bool)

(assert (=> b!5494633 m!6505332))

(declare-fun m!6505334 () Bool)

(assert (=> b!5494634 m!6505334))

(declare-fun m!6505336 () Bool)

(assert (=> bm!405099 m!6505336))

(assert (=> b!5494611 d!1742334))

(declare-fun c!959284 () Bool)

(declare-fun call!405120 () List!62694)

(declare-fun c!959287 () Bool)

(declare-fun bm!405112 () Bool)

(declare-fun $colon$colon!1561 (List!62694 Regex!15465) List!62694)

(assert (=> bm!405112 (= call!405120 ($colon$colon!1561 (exprs!5349 (Context!9699 Nil!62570)) (ite (or c!959287 c!959284) (regTwo!31442 r!7292) r!7292)))))

(declare-fun bm!405113 () Bool)

(declare-fun call!405119 () (InoxSet Context!9698))

(declare-fun call!405122 () (InoxSet Context!9698))

(assert (=> bm!405113 (= call!405119 call!405122)))

(declare-fun b!5494658 () Bool)

(declare-fun e!3399256 () (InoxSet Context!9698))

(declare-fun e!3399261 () (InoxSet Context!9698))

(assert (=> b!5494658 (= e!3399256 e!3399261)))

(assert (=> b!5494658 (= c!959284 ((_ is Concat!24310) r!7292))))

(declare-fun bm!405114 () Bool)

(declare-fun c!959285 () Bool)

(declare-fun call!405121 () (InoxSet Context!9698))

(assert (=> bm!405114 (= call!405121 (derivationStepZipperDown!811 (ite c!959285 (regOne!31443 r!7292) (regOne!31442 r!7292)) (ite c!959285 (Context!9699 Nil!62570) (Context!9699 call!405120)) (h!69020 s!2326)))))

(declare-fun b!5494659 () Bool)

(declare-fun e!3399259 () (InoxSet Context!9698))

(declare-fun call!405117 () (InoxSet Context!9698))

(assert (=> b!5494659 (= e!3399259 ((_ map or) call!405121 call!405117))))

(declare-fun call!405118 () List!62694)

(declare-fun bm!405115 () Bool)

(assert (=> bm!405115 (= call!405117 (derivationStepZipperDown!811 (ite c!959285 (regTwo!31443 r!7292) (ite c!959287 (regTwo!31442 r!7292) (ite c!959284 (regOne!31442 r!7292) (reg!15794 r!7292)))) (ite (or c!959285 c!959287) (Context!9699 Nil!62570) (Context!9699 call!405118)) (h!69020 s!2326)))))

(declare-fun b!5494660 () Bool)

(declare-fun c!959286 () Bool)

(assert (=> b!5494660 (= c!959286 ((_ is Star!15465) r!7292))))

(declare-fun e!3399260 () (InoxSet Context!9698))

(assert (=> b!5494660 (= e!3399261 e!3399260)))

(declare-fun b!5494661 () Bool)

(declare-fun e!3399257 () (InoxSet Context!9698))

(assert (=> b!5494661 (= e!3399257 e!3399259)))

(assert (=> b!5494661 (= c!959285 ((_ is Union!15465) r!7292))))

(declare-fun bm!405116 () Bool)

(assert (=> bm!405116 (= call!405122 call!405117)))

(declare-fun b!5494663 () Bool)

(assert (=> b!5494663 (= e!3399261 call!405119)))

(declare-fun b!5494664 () Bool)

(assert (=> b!5494664 (= e!3399260 ((as const (Array Context!9698 Bool)) false))))

(declare-fun bm!405117 () Bool)

(assert (=> bm!405117 (= call!405118 call!405120)))

(declare-fun b!5494665 () Bool)

(assert (=> b!5494665 (= e!3399257 (store ((as const (Array Context!9698 Bool)) false) (Context!9699 Nil!62570) true))))

(declare-fun b!5494662 () Bool)

(declare-fun e!3399258 () Bool)

(assert (=> b!5494662 (= e!3399258 (nullable!5507 (regOne!31442 r!7292)))))

(declare-fun d!1742336 () Bool)

(declare-fun c!959288 () Bool)

(assert (=> d!1742336 (= c!959288 (and ((_ is ElementMatch!15465) r!7292) (= (c!959267 r!7292) (h!69020 s!2326))))))

(assert (=> d!1742336 (= (derivationStepZipperDown!811 r!7292 (Context!9699 Nil!62570) (h!69020 s!2326)) e!3399257)))

(declare-fun b!5494666 () Bool)

(assert (=> b!5494666 (= c!959287 e!3399258)))

(declare-fun res!2342910 () Bool)

(assert (=> b!5494666 (=> (not res!2342910) (not e!3399258))))

(assert (=> b!5494666 (= res!2342910 ((_ is Concat!24310) r!7292))))

(assert (=> b!5494666 (= e!3399259 e!3399256)))

(declare-fun b!5494667 () Bool)

(assert (=> b!5494667 (= e!3399260 call!405119)))

(declare-fun b!5494668 () Bool)

(assert (=> b!5494668 (= e!3399256 ((_ map or) call!405121 call!405122))))

(assert (= (and d!1742336 c!959288) b!5494665))

(assert (= (and d!1742336 (not c!959288)) b!5494661))

(assert (= (and b!5494661 c!959285) b!5494659))

(assert (= (and b!5494661 (not c!959285)) b!5494666))

(assert (= (and b!5494666 res!2342910) b!5494662))

(assert (= (and b!5494666 c!959287) b!5494668))

(assert (= (and b!5494666 (not c!959287)) b!5494658))

(assert (= (and b!5494658 c!959284) b!5494663))

(assert (= (and b!5494658 (not c!959284)) b!5494660))

(assert (= (and b!5494660 c!959286) b!5494667))

(assert (= (and b!5494660 (not c!959286)) b!5494664))

(assert (= (or b!5494663 b!5494667) bm!405117))

(assert (= (or b!5494663 b!5494667) bm!405113))

(assert (= (or b!5494668 bm!405117) bm!405112))

(assert (= (or b!5494668 bm!405113) bm!405116))

(assert (= (or b!5494659 bm!405116) bm!405115))

(assert (= (or b!5494659 b!5494668) bm!405114))

(declare-fun m!6505338 () Bool)

(assert (=> b!5494662 m!6505338))

(declare-fun m!6505340 () Bool)

(assert (=> b!5494665 m!6505340))

(declare-fun m!6505342 () Bool)

(assert (=> bm!405112 m!6505342))

(declare-fun m!6505344 () Bool)

(assert (=> bm!405114 m!6505344))

(declare-fun m!6505346 () Bool)

(assert (=> bm!405115 m!6505346))

(assert (=> b!5494611 d!1742336))

(declare-fun d!1742340 () Bool)

(declare-fun lambda!294180 () Int)

(declare-fun forall!14655 (List!62694 Int) Bool)

(assert (=> d!1742340 (= (inv!81909 (h!69019 zl!343)) (forall!14655 (exprs!5349 (h!69019 zl!343)) lambda!294180))))

(declare-fun bs!1267721 () Bool)

(assert (= bs!1267721 d!1742340))

(declare-fun m!6505348 () Bool)

(assert (=> bs!1267721 m!6505348))

(assert (=> b!5494615 d!1742340))

(declare-fun d!1742342 () Bool)

(declare-fun e!3399264 () Bool)

(assert (=> d!1742342 e!3399264))

(declare-fun res!2342913 () Bool)

(assert (=> d!1742342 (=> (not res!2342913) (not e!3399264))))

(declare-fun lt!2242718 () List!62695)

(declare-fun noDuplicate!1473 (List!62695) Bool)

(assert (=> d!1742342 (= res!2342913 (noDuplicate!1473 lt!2242718))))

(declare-fun choose!41770 ((InoxSet Context!9698)) List!62695)

(assert (=> d!1742342 (= lt!2242718 (choose!41770 z!1189))))

(assert (=> d!1742342 (= (toList!9249 z!1189) lt!2242718)))

(declare-fun b!5494671 () Bool)

(declare-fun content!11234 (List!62695) (InoxSet Context!9698))

(assert (=> b!5494671 (= e!3399264 (= (content!11234 lt!2242718) z!1189))))

(assert (= (and d!1742342 res!2342913) b!5494671))

(declare-fun m!6505350 () Bool)

(assert (=> d!1742342 m!6505350))

(declare-fun m!6505352 () Bool)

(assert (=> d!1742342 m!6505352))

(declare-fun m!6505354 () Bool)

(assert (=> b!5494671 m!6505354))

(assert (=> b!5494620 d!1742342))

(declare-fun d!1742344 () Bool)

(declare-fun res!2342924 () Bool)

(declare-fun e!3399284 () Bool)

(assert (=> d!1742344 (=> res!2342924 e!3399284)))

(assert (=> d!1742344 (= res!2342924 ((_ is ElementMatch!15465) r!7292))))

(assert (=> d!1742344 (= (validRegex!7201 r!7292) e!3399284)))

(declare-fun b!5494690 () Bool)

(declare-fun e!3399282 () Bool)

(declare-fun call!405130 () Bool)

(assert (=> b!5494690 (= e!3399282 call!405130)))

(declare-fun b!5494691 () Bool)

(declare-fun res!2342927 () Bool)

(declare-fun e!3399283 () Bool)

(assert (=> b!5494691 (=> res!2342927 e!3399283)))

(assert (=> b!5494691 (= res!2342927 (not ((_ is Concat!24310) r!7292)))))

(declare-fun e!3399279 () Bool)

(assert (=> b!5494691 (= e!3399279 e!3399283)))

(declare-fun b!5494692 () Bool)

(declare-fun res!2342928 () Bool)

(declare-fun e!3399285 () Bool)

(assert (=> b!5494692 (=> (not res!2342928) (not e!3399285))))

(declare-fun call!405131 () Bool)

(assert (=> b!5494692 (= res!2342928 call!405131)))

(assert (=> b!5494692 (= e!3399279 e!3399285)))

(declare-fun b!5494693 () Bool)

(declare-fun e!3399281 () Bool)

(assert (=> b!5494693 (= e!3399284 e!3399281)))

(declare-fun c!959293 () Bool)

(assert (=> b!5494693 (= c!959293 ((_ is Star!15465) r!7292))))

(declare-fun b!5494694 () Bool)

(declare-fun e!3399280 () Bool)

(assert (=> b!5494694 (= e!3399283 e!3399280)))

(declare-fun res!2342925 () Bool)

(assert (=> b!5494694 (=> (not res!2342925) (not e!3399280))))

(assert (=> b!5494694 (= res!2342925 call!405131)))

(declare-fun bm!405124 () Bool)

(declare-fun call!405129 () Bool)

(declare-fun c!959294 () Bool)

(assert (=> bm!405124 (= call!405129 (validRegex!7201 (ite c!959294 (regTwo!31443 r!7292) (regTwo!31442 r!7292))))))

(declare-fun bm!405125 () Bool)

(assert (=> bm!405125 (= call!405131 call!405130)))

(declare-fun b!5494695 () Bool)

(assert (=> b!5494695 (= e!3399281 e!3399279)))

(assert (=> b!5494695 (= c!959294 ((_ is Union!15465) r!7292))))

(declare-fun bm!405126 () Bool)

(assert (=> bm!405126 (= call!405130 (validRegex!7201 (ite c!959293 (reg!15794 r!7292) (ite c!959294 (regOne!31443 r!7292) (regOne!31442 r!7292)))))))

(declare-fun b!5494696 () Bool)

(assert (=> b!5494696 (= e!3399280 call!405129)))

(declare-fun b!5494697 () Bool)

(assert (=> b!5494697 (= e!3399281 e!3399282)))

(declare-fun res!2342926 () Bool)

(assert (=> b!5494697 (= res!2342926 (not (nullable!5507 (reg!15794 r!7292))))))

(assert (=> b!5494697 (=> (not res!2342926) (not e!3399282))))

(declare-fun b!5494698 () Bool)

(assert (=> b!5494698 (= e!3399285 call!405129)))

(assert (= (and d!1742344 (not res!2342924)) b!5494693))

(assert (= (and b!5494693 c!959293) b!5494697))

(assert (= (and b!5494693 (not c!959293)) b!5494695))

(assert (= (and b!5494697 res!2342926) b!5494690))

(assert (= (and b!5494695 c!959294) b!5494692))

(assert (= (and b!5494695 (not c!959294)) b!5494691))

(assert (= (and b!5494692 res!2342928) b!5494698))

(assert (= (and b!5494691 (not res!2342927)) b!5494694))

(assert (= (and b!5494694 res!2342925) b!5494696))

(assert (= (or b!5494698 b!5494696) bm!405124))

(assert (= (or b!5494692 b!5494694) bm!405125))

(assert (= (or b!5494690 bm!405125) bm!405126))

(declare-fun m!6505356 () Bool)

(assert (=> bm!405124 m!6505356))

(declare-fun m!6505358 () Bool)

(assert (=> bm!405126 m!6505358))

(declare-fun m!6505360 () Bool)

(assert (=> b!5494697 m!6505360))

(assert (=> start!574070 d!1742344))

(declare-fun bs!1267722 () Bool)

(declare-fun d!1742346 () Bool)

(assert (= bs!1267722 (and d!1742346 d!1742340)))

(declare-fun lambda!294181 () Int)

(assert (=> bs!1267722 (= lambda!294181 lambda!294180)))

(assert (=> d!1742346 (= (inv!81909 setElem!36385) (forall!14655 (exprs!5349 setElem!36385) lambda!294181))))

(declare-fun bs!1267723 () Bool)

(assert (= bs!1267723 d!1742346))

(declare-fun m!6505362 () Bool)

(assert (=> bs!1267723 m!6505362))

(assert (=> setNonEmpty!36385 d!1742346))

(declare-fun bs!1267724 () Bool)

(declare-fun d!1742348 () Bool)

(assert (= bs!1267724 (and d!1742348 d!1742340)))

(declare-fun lambda!294184 () Int)

(assert (=> bs!1267724 (= lambda!294184 lambda!294180)))

(declare-fun bs!1267725 () Bool)

(assert (= bs!1267725 (and d!1742348 d!1742346)))

(assert (=> bs!1267725 (= lambda!294184 lambda!294181)))

(declare-fun b!5494719 () Bool)

(declare-fun e!3399303 () Regex!15465)

(assert (=> b!5494719 (= e!3399303 (Concat!24310 (h!69018 (exprs!5349 (h!69019 zl!343))) (generalisedConcat!1080 (t!375925 (exprs!5349 (h!69019 zl!343))))))))

(declare-fun b!5494720 () Bool)

(declare-fun e!3399299 () Bool)

(declare-fun isEmpty!34366 (List!62694) Bool)

(assert (=> b!5494720 (= e!3399299 (isEmpty!34366 (t!375925 (exprs!5349 (h!69019 zl!343)))))))

(declare-fun e!3399302 () Bool)

(assert (=> d!1742348 e!3399302))

(declare-fun res!2342933 () Bool)

(assert (=> d!1742348 (=> (not res!2342933) (not e!3399302))))

(declare-fun lt!2242721 () Regex!15465)

(assert (=> d!1742348 (= res!2342933 (validRegex!7201 lt!2242721))))

(declare-fun e!3399300 () Regex!15465)

(assert (=> d!1742348 (= lt!2242721 e!3399300)))

(declare-fun c!959306 () Bool)

(assert (=> d!1742348 (= c!959306 e!3399299)))

(declare-fun res!2342934 () Bool)

(assert (=> d!1742348 (=> (not res!2342934) (not e!3399299))))

(assert (=> d!1742348 (= res!2342934 ((_ is Cons!62570) (exprs!5349 (h!69019 zl!343))))))

(assert (=> d!1742348 (forall!14655 (exprs!5349 (h!69019 zl!343)) lambda!294184)))

(assert (=> d!1742348 (= (generalisedConcat!1080 (exprs!5349 (h!69019 zl!343))) lt!2242721)))

(declare-fun b!5494721 () Bool)

(assert (=> b!5494721 (= e!3399303 EmptyExpr!15465)))

(declare-fun b!5494722 () Bool)

(declare-fun e!3399301 () Bool)

(assert (=> b!5494722 (= e!3399302 e!3399301)))

(declare-fun c!959303 () Bool)

(assert (=> b!5494722 (= c!959303 (isEmpty!34366 (exprs!5349 (h!69019 zl!343))))))

(declare-fun b!5494723 () Bool)

(assert (=> b!5494723 (= e!3399300 (h!69018 (exprs!5349 (h!69019 zl!343))))))

(declare-fun b!5494724 () Bool)

(declare-fun e!3399298 () Bool)

(assert (=> b!5494724 (= e!3399301 e!3399298)))

(declare-fun c!959304 () Bool)

(declare-fun tail!10860 (List!62694) List!62694)

(assert (=> b!5494724 (= c!959304 (isEmpty!34366 (tail!10860 (exprs!5349 (h!69019 zl!343)))))))

(declare-fun b!5494725 () Bool)

(declare-fun isEmptyExpr!1053 (Regex!15465) Bool)

(assert (=> b!5494725 (= e!3399301 (isEmptyExpr!1053 lt!2242721))))

(declare-fun b!5494726 () Bool)

(declare-fun isConcat!576 (Regex!15465) Bool)

(assert (=> b!5494726 (= e!3399298 (isConcat!576 lt!2242721))))

(declare-fun b!5494727 () Bool)

(declare-fun head!11765 (List!62694) Regex!15465)

(assert (=> b!5494727 (= e!3399298 (= lt!2242721 (head!11765 (exprs!5349 (h!69019 zl!343)))))))

(declare-fun b!5494728 () Bool)

(assert (=> b!5494728 (= e!3399300 e!3399303)))

(declare-fun c!959305 () Bool)

(assert (=> b!5494728 (= c!959305 ((_ is Cons!62570) (exprs!5349 (h!69019 zl!343))))))

(assert (= (and d!1742348 res!2342934) b!5494720))

(assert (= (and d!1742348 c!959306) b!5494723))

(assert (= (and d!1742348 (not c!959306)) b!5494728))

(assert (= (and b!5494728 c!959305) b!5494719))

(assert (= (and b!5494728 (not c!959305)) b!5494721))

(assert (= (and d!1742348 res!2342933) b!5494722))

(assert (= (and b!5494722 c!959303) b!5494725))

(assert (= (and b!5494722 (not c!959303)) b!5494724))

(assert (= (and b!5494724 c!959304) b!5494727))

(assert (= (and b!5494724 (not c!959304)) b!5494726))

(declare-fun m!6505364 () Bool)

(assert (=> b!5494727 m!6505364))

(declare-fun m!6505366 () Bool)

(assert (=> b!5494724 m!6505366))

(assert (=> b!5494724 m!6505366))

(declare-fun m!6505368 () Bool)

(assert (=> b!5494724 m!6505368))

(declare-fun m!6505370 () Bool)

(assert (=> d!1742348 m!6505370))

(declare-fun m!6505372 () Bool)

(assert (=> d!1742348 m!6505372))

(declare-fun m!6505374 () Bool)

(assert (=> b!5494726 m!6505374))

(declare-fun m!6505376 () Bool)

(assert (=> b!5494725 m!6505376))

(declare-fun m!6505378 () Bool)

(assert (=> b!5494719 m!6505378))

(declare-fun m!6505380 () Bool)

(assert (=> b!5494720 m!6505380))

(declare-fun m!6505382 () Bool)

(assert (=> b!5494722 m!6505382))

(assert (=> b!5494618 d!1742348))

(declare-fun b!5494803 () Bool)

(assert (=> b!5494803 true))

(assert (=> b!5494803 true))

(declare-fun bs!1267730 () Bool)

(declare-fun b!5494800 () Bool)

(assert (= bs!1267730 (and b!5494800 b!5494803)))

(declare-fun lambda!294199 () Int)

(declare-fun lambda!294197 () Int)

(assert (=> bs!1267730 (not (= lambda!294199 lambda!294197))))

(assert (=> b!5494800 true))

(assert (=> b!5494800 true))

(declare-fun b!5494795 () Bool)

(declare-fun e!3399348 () Bool)

(declare-fun call!405136 () Bool)

(assert (=> b!5494795 (= e!3399348 call!405136)))

(declare-fun b!5494796 () Bool)

(declare-fun c!959331 () Bool)

(assert (=> b!5494796 (= c!959331 ((_ is ElementMatch!15465) (regTwo!31443 r!7292)))))

(declare-fun e!3399344 () Bool)

(declare-fun e!3399343 () Bool)

(assert (=> b!5494796 (= e!3399344 e!3399343)))

(declare-fun b!5494797 () Bool)

(declare-fun e!3399345 () Bool)

(declare-fun e!3399346 () Bool)

(assert (=> b!5494797 (= e!3399345 e!3399346)))

(declare-fun c!959332 () Bool)

(assert (=> b!5494797 (= c!959332 ((_ is Star!15465) (regTwo!31443 r!7292)))))

(declare-fun b!5494798 () Bool)

(assert (=> b!5494798 (= e!3399348 e!3399344)))

(declare-fun res!2342957 () Bool)

(assert (=> b!5494798 (= res!2342957 (not ((_ is EmptyLang!15465) (regTwo!31443 r!7292))))))

(assert (=> b!5494798 (=> (not res!2342957) (not e!3399344))))

(declare-fun b!5494799 () Bool)

(declare-fun c!959330 () Bool)

(assert (=> b!5494799 (= c!959330 ((_ is Union!15465) (regTwo!31443 r!7292)))))

(assert (=> b!5494799 (= e!3399343 e!3399345)))

(declare-fun call!405137 () Bool)

(assert (=> b!5494800 (= e!3399346 call!405137)))

(declare-fun d!1742350 () Bool)

(declare-fun c!959329 () Bool)

(assert (=> d!1742350 (= c!959329 ((_ is EmptyExpr!15465) (regTwo!31443 r!7292)))))

(assert (=> d!1742350 (= (matchRSpec!2568 (regTwo!31443 r!7292) s!2326) e!3399348)))

(declare-fun bm!405131 () Bool)

(declare-fun Exists!2572 (Int) Bool)

(assert (=> bm!405131 (= call!405137 (Exists!2572 (ite c!959332 lambda!294197 lambda!294199)))))

(declare-fun b!5494801 () Bool)

(declare-fun e!3399342 () Bool)

(assert (=> b!5494801 (= e!3399342 (matchRSpec!2568 (regTwo!31443 (regTwo!31443 r!7292)) s!2326))))

(declare-fun b!5494802 () Bool)

(assert (=> b!5494802 (= e!3399343 (= s!2326 (Cons!62572 (c!959267 (regTwo!31443 r!7292)) Nil!62572)))))

(declare-fun bm!405132 () Bool)

(declare-fun isEmpty!34367 (List!62696) Bool)

(assert (=> bm!405132 (= call!405136 (isEmpty!34367 s!2326))))

(declare-fun e!3399347 () Bool)

(assert (=> b!5494803 (= e!3399347 call!405137)))

(declare-fun b!5494804 () Bool)

(declare-fun res!2342959 () Bool)

(assert (=> b!5494804 (=> res!2342959 e!3399347)))

(assert (=> b!5494804 (= res!2342959 call!405136)))

(assert (=> b!5494804 (= e!3399346 e!3399347)))

(declare-fun b!5494805 () Bool)

(assert (=> b!5494805 (= e!3399345 e!3399342)))

(declare-fun res!2342958 () Bool)

(assert (=> b!5494805 (= res!2342958 (matchRSpec!2568 (regOne!31443 (regTwo!31443 r!7292)) s!2326))))

(assert (=> b!5494805 (=> res!2342958 e!3399342)))

(assert (= (and d!1742350 c!959329) b!5494795))

(assert (= (and d!1742350 (not c!959329)) b!5494798))

(assert (= (and b!5494798 res!2342957) b!5494796))

(assert (= (and b!5494796 c!959331) b!5494802))

(assert (= (and b!5494796 (not c!959331)) b!5494799))

(assert (= (and b!5494799 c!959330) b!5494805))

(assert (= (and b!5494799 (not c!959330)) b!5494797))

(assert (= (and b!5494805 (not res!2342958)) b!5494801))

(assert (= (and b!5494797 c!959332) b!5494804))

(assert (= (and b!5494797 (not c!959332)) b!5494800))

(assert (= (and b!5494804 (not res!2342959)) b!5494803))

(assert (= (or b!5494803 b!5494800) bm!405131))

(assert (= (or b!5494795 b!5494804) bm!405132))

(declare-fun m!6505410 () Bool)

(assert (=> bm!405131 m!6505410))

(declare-fun m!6505412 () Bool)

(assert (=> b!5494801 m!6505412))

(declare-fun m!6505414 () Bool)

(assert (=> bm!405132 m!6505414))

(declare-fun m!6505416 () Bool)

(assert (=> b!5494805 m!6505416))

(assert (=> b!5494608 d!1742350))

(declare-fun d!1742358 () Bool)

(assert (=> d!1742358 (= (matchR!7650 (regOne!31443 r!7292) s!2326) (matchRSpec!2568 (regOne!31443 r!7292) s!2326))))

(declare-fun lt!2242733 () Unit!155390)

(declare-fun choose!41771 (Regex!15465 List!62696) Unit!155390)

(assert (=> d!1742358 (= lt!2242733 (choose!41771 (regOne!31443 r!7292) s!2326))))

(assert (=> d!1742358 (validRegex!7201 (regOne!31443 r!7292))))

(assert (=> d!1742358 (= (mainMatchTheorem!2568 (regOne!31443 r!7292) s!2326) lt!2242733)))

(declare-fun bs!1267731 () Bool)

(assert (= bs!1267731 d!1742358))

(assert (=> bs!1267731 m!6505322))

(assert (=> bs!1267731 m!6505318))

(declare-fun m!6505424 () Bool)

(assert (=> bs!1267731 m!6505424))

(declare-fun m!6505426 () Bool)

(assert (=> bs!1267731 m!6505426))

(assert (=> b!5494608 d!1742358))

(declare-fun b!5494873 () Bool)

(declare-fun e!3399387 () Bool)

(assert (=> b!5494873 (= e!3399387 (nullable!5507 (regTwo!31443 r!7292)))))

(declare-fun d!1742362 () Bool)

(declare-fun e!3399389 () Bool)

(assert (=> d!1742362 e!3399389))

(declare-fun c!959352 () Bool)

(assert (=> d!1742362 (= c!959352 ((_ is EmptyExpr!15465) (regTwo!31443 r!7292)))))

(declare-fun lt!2242742 () Bool)

(assert (=> d!1742362 (= lt!2242742 e!3399387)))

(declare-fun c!959353 () Bool)

(assert (=> d!1742362 (= c!959353 (isEmpty!34367 s!2326))))

(assert (=> d!1742362 (validRegex!7201 (regTwo!31443 r!7292))))

(assert (=> d!1742362 (= (matchR!7650 (regTwo!31443 r!7292) s!2326) lt!2242742)))

(declare-fun b!5494874 () Bool)

(declare-fun res!2342988 () Bool)

(declare-fun e!3399386 () Bool)

(assert (=> b!5494874 (=> res!2342988 e!3399386)))

(declare-fun e!3399388 () Bool)

(assert (=> b!5494874 (= res!2342988 e!3399388)))

(declare-fun res!2342986 () Bool)

(assert (=> b!5494874 (=> (not res!2342986) (not e!3399388))))

(assert (=> b!5494874 (= res!2342986 lt!2242742)))

(declare-fun b!5494875 () Bool)

(declare-fun res!2342990 () Bool)

(assert (=> b!5494875 (=> res!2342990 e!3399386)))

(assert (=> b!5494875 (= res!2342990 (not ((_ is ElementMatch!15465) (regTwo!31443 r!7292))))))

(declare-fun e!3399390 () Bool)

(assert (=> b!5494875 (= e!3399390 e!3399386)))

(declare-fun b!5494876 () Bool)

(declare-fun head!11767 (List!62696) C!31200)

(assert (=> b!5494876 (= e!3399388 (= (head!11767 s!2326) (c!959267 (regTwo!31443 r!7292))))))

(declare-fun b!5494877 () Bool)

(assert (=> b!5494877 (= e!3399390 (not lt!2242742))))

(declare-fun b!5494878 () Bool)

(assert (=> b!5494878 (= e!3399389 e!3399390)))

(declare-fun c!959354 () Bool)

(assert (=> b!5494878 (= c!959354 ((_ is EmptyLang!15465) (regTwo!31443 r!7292)))))

(declare-fun b!5494879 () Bool)

(declare-fun e!3399385 () Bool)

(assert (=> b!5494879 (= e!3399386 e!3399385)))

(declare-fun res!2342992 () Bool)

(assert (=> b!5494879 (=> (not res!2342992) (not e!3399385))))

(assert (=> b!5494879 (= res!2342992 (not lt!2242742))))

(declare-fun b!5494880 () Bool)

(declare-fun e!3399391 () Bool)

(assert (=> b!5494880 (= e!3399391 (not (= (head!11767 s!2326) (c!959267 (regTwo!31443 r!7292)))))))

(declare-fun b!5494881 () Bool)

(declare-fun res!2342987 () Bool)

(assert (=> b!5494881 (=> (not res!2342987) (not e!3399388))))

(declare-fun call!405140 () Bool)

(assert (=> b!5494881 (= res!2342987 (not call!405140))))

(declare-fun b!5494882 () Bool)

(declare-fun res!2342991 () Bool)

(assert (=> b!5494882 (=> res!2342991 e!3399391)))

(declare-fun tail!10862 (List!62696) List!62696)

(assert (=> b!5494882 (= res!2342991 (not (isEmpty!34367 (tail!10862 s!2326))))))

(declare-fun bm!405135 () Bool)

(assert (=> bm!405135 (= call!405140 (isEmpty!34367 s!2326))))

(declare-fun b!5494883 () Bool)

(declare-fun derivativeStep!4346 (Regex!15465 C!31200) Regex!15465)

(assert (=> b!5494883 (= e!3399387 (matchR!7650 (derivativeStep!4346 (regTwo!31443 r!7292) (head!11767 s!2326)) (tail!10862 s!2326)))))

(declare-fun b!5494884 () Bool)

(assert (=> b!5494884 (= e!3399389 (= lt!2242742 call!405140))))

(declare-fun b!5494885 () Bool)

(declare-fun res!2342989 () Bool)

(assert (=> b!5494885 (=> (not res!2342989) (not e!3399388))))

(assert (=> b!5494885 (= res!2342989 (isEmpty!34367 (tail!10862 s!2326)))))

(declare-fun b!5494886 () Bool)

(assert (=> b!5494886 (= e!3399385 e!3399391)))

(declare-fun res!2342985 () Bool)

(assert (=> b!5494886 (=> res!2342985 e!3399391)))

(assert (=> b!5494886 (= res!2342985 call!405140)))

(assert (= (and d!1742362 c!959353) b!5494873))

(assert (= (and d!1742362 (not c!959353)) b!5494883))

(assert (= (and d!1742362 c!959352) b!5494884))

(assert (= (and d!1742362 (not c!959352)) b!5494878))

(assert (= (and b!5494878 c!959354) b!5494877))

(assert (= (and b!5494878 (not c!959354)) b!5494875))

(assert (= (and b!5494875 (not res!2342990)) b!5494874))

(assert (= (and b!5494874 res!2342986) b!5494881))

(assert (= (and b!5494881 res!2342987) b!5494885))

(assert (= (and b!5494885 res!2342989) b!5494876))

(assert (= (and b!5494874 (not res!2342988)) b!5494879))

(assert (= (and b!5494879 res!2342992) b!5494886))

(assert (= (and b!5494886 (not res!2342985)) b!5494882))

(assert (= (and b!5494882 (not res!2342991)) b!5494880))

(assert (= (or b!5494884 b!5494881 b!5494886) bm!405135))

(declare-fun m!6505450 () Bool)

(assert (=> b!5494876 m!6505450))

(assert (=> d!1742362 m!6505414))

(declare-fun m!6505452 () Bool)

(assert (=> d!1742362 m!6505452))

(assert (=> b!5494880 m!6505450))

(assert (=> bm!405135 m!6505414))

(declare-fun m!6505454 () Bool)

(assert (=> b!5494873 m!6505454))

(declare-fun m!6505456 () Bool)

(assert (=> b!5494885 m!6505456))

(assert (=> b!5494885 m!6505456))

(declare-fun m!6505458 () Bool)

(assert (=> b!5494885 m!6505458))

(assert (=> b!5494883 m!6505450))

(assert (=> b!5494883 m!6505450))

(declare-fun m!6505460 () Bool)

(assert (=> b!5494883 m!6505460))

(assert (=> b!5494883 m!6505456))

(assert (=> b!5494883 m!6505460))

(assert (=> b!5494883 m!6505456))

(declare-fun m!6505462 () Bool)

(assert (=> b!5494883 m!6505462))

(assert (=> b!5494882 m!6505456))

(assert (=> b!5494882 m!6505456))

(assert (=> b!5494882 m!6505458))

(assert (=> b!5494608 d!1742362))

(declare-fun d!1742368 () Bool)

(assert (=> d!1742368 (= (matchR!7650 (regTwo!31443 r!7292) s!2326) (matchRSpec!2568 (regTwo!31443 r!7292) s!2326))))

(declare-fun lt!2242743 () Unit!155390)

(assert (=> d!1742368 (= lt!2242743 (choose!41771 (regTwo!31443 r!7292) s!2326))))

(assert (=> d!1742368 (validRegex!7201 (regTwo!31443 r!7292))))

(assert (=> d!1742368 (= (mainMatchTheorem!2568 (regTwo!31443 r!7292) s!2326) lt!2242743)))

(declare-fun bs!1267736 () Bool)

(assert (= bs!1267736 d!1742368))

(assert (=> bs!1267736 m!6505316))

(assert (=> bs!1267736 m!6505312))

(declare-fun m!6505464 () Bool)

(assert (=> bs!1267736 m!6505464))

(assert (=> bs!1267736 m!6505452))

(assert (=> b!5494608 d!1742368))

(declare-fun bs!1267737 () Bool)

(declare-fun b!5494913 () Bool)

(assert (= bs!1267737 (and b!5494913 b!5494803)))

(declare-fun lambda!294203 () Int)

(assert (=> bs!1267737 (= (and (= (reg!15794 (regOne!31443 r!7292)) (reg!15794 (regTwo!31443 r!7292))) (= (regOne!31443 r!7292) (regTwo!31443 r!7292))) (= lambda!294203 lambda!294197))))

(declare-fun bs!1267738 () Bool)

(assert (= bs!1267738 (and b!5494913 b!5494800)))

(assert (=> bs!1267738 (not (= lambda!294203 lambda!294199))))

(assert (=> b!5494913 true))

(assert (=> b!5494913 true))

(declare-fun bs!1267739 () Bool)

(declare-fun b!5494910 () Bool)

(assert (= bs!1267739 (and b!5494910 b!5494803)))

(declare-fun lambda!294204 () Int)

(assert (=> bs!1267739 (not (= lambda!294204 lambda!294197))))

(declare-fun bs!1267740 () Bool)

(assert (= bs!1267740 (and b!5494910 b!5494800)))

(assert (=> bs!1267740 (= (and (= (regOne!31442 (regOne!31443 r!7292)) (regOne!31442 (regTwo!31443 r!7292))) (= (regTwo!31442 (regOne!31443 r!7292)) (regTwo!31442 (regTwo!31443 r!7292)))) (= lambda!294204 lambda!294199))))

(declare-fun bs!1267741 () Bool)

(assert (= bs!1267741 (and b!5494910 b!5494913)))

(assert (=> bs!1267741 (not (= lambda!294204 lambda!294203))))

(assert (=> b!5494910 true))

(assert (=> b!5494910 true))

(declare-fun b!5494905 () Bool)

(declare-fun e!3399412 () Bool)

(declare-fun call!405147 () Bool)

(assert (=> b!5494905 (= e!3399412 call!405147)))

(declare-fun b!5494906 () Bool)

(declare-fun c!959361 () Bool)

(assert (=> b!5494906 (= c!959361 ((_ is ElementMatch!15465) (regOne!31443 r!7292)))))

(declare-fun e!3399408 () Bool)

(declare-fun e!3399407 () Bool)

(assert (=> b!5494906 (= e!3399408 e!3399407)))

(declare-fun b!5494907 () Bool)

(declare-fun e!3399409 () Bool)

(declare-fun e!3399410 () Bool)

(assert (=> b!5494907 (= e!3399409 e!3399410)))

(declare-fun c!959362 () Bool)

(assert (=> b!5494907 (= c!959362 ((_ is Star!15465) (regOne!31443 r!7292)))))

(declare-fun b!5494908 () Bool)

(assert (=> b!5494908 (= e!3399412 e!3399408)))

(declare-fun res!2343003 () Bool)

(assert (=> b!5494908 (= res!2343003 (not ((_ is EmptyLang!15465) (regOne!31443 r!7292))))))

(assert (=> b!5494908 (=> (not res!2343003) (not e!3399408))))

(declare-fun b!5494909 () Bool)

(declare-fun c!959360 () Bool)

(assert (=> b!5494909 (= c!959360 ((_ is Union!15465) (regOne!31443 r!7292)))))

(assert (=> b!5494909 (= e!3399407 e!3399409)))

(declare-fun call!405148 () Bool)

(assert (=> b!5494910 (= e!3399410 call!405148)))

(declare-fun d!1742370 () Bool)

(declare-fun c!959359 () Bool)

(assert (=> d!1742370 (= c!959359 ((_ is EmptyExpr!15465) (regOne!31443 r!7292)))))

(assert (=> d!1742370 (= (matchRSpec!2568 (regOne!31443 r!7292) s!2326) e!3399412)))

(declare-fun bm!405142 () Bool)

(assert (=> bm!405142 (= call!405148 (Exists!2572 (ite c!959362 lambda!294203 lambda!294204)))))

(declare-fun b!5494911 () Bool)

(declare-fun e!3399406 () Bool)

(assert (=> b!5494911 (= e!3399406 (matchRSpec!2568 (regTwo!31443 (regOne!31443 r!7292)) s!2326))))

(declare-fun b!5494912 () Bool)

(assert (=> b!5494912 (= e!3399407 (= s!2326 (Cons!62572 (c!959267 (regOne!31443 r!7292)) Nil!62572)))))

(declare-fun bm!405143 () Bool)

(assert (=> bm!405143 (= call!405147 (isEmpty!34367 s!2326))))

(declare-fun e!3399411 () Bool)

(assert (=> b!5494913 (= e!3399411 call!405148)))

(declare-fun b!5494914 () Bool)

(declare-fun res!2343005 () Bool)

(assert (=> b!5494914 (=> res!2343005 e!3399411)))

(assert (=> b!5494914 (= res!2343005 call!405147)))

(assert (=> b!5494914 (= e!3399410 e!3399411)))

(declare-fun b!5494915 () Bool)

(assert (=> b!5494915 (= e!3399409 e!3399406)))

(declare-fun res!2343004 () Bool)

(assert (=> b!5494915 (= res!2343004 (matchRSpec!2568 (regOne!31443 (regOne!31443 r!7292)) s!2326))))

(assert (=> b!5494915 (=> res!2343004 e!3399406)))

(assert (= (and d!1742370 c!959359) b!5494905))

(assert (= (and d!1742370 (not c!959359)) b!5494908))

(assert (= (and b!5494908 res!2343003) b!5494906))

(assert (= (and b!5494906 c!959361) b!5494912))

(assert (= (and b!5494906 (not c!959361)) b!5494909))

(assert (= (and b!5494909 c!959360) b!5494915))

(assert (= (and b!5494909 (not c!959360)) b!5494907))

(assert (= (and b!5494915 (not res!2343004)) b!5494911))

(assert (= (and b!5494907 c!959362) b!5494914))

(assert (= (and b!5494907 (not c!959362)) b!5494910))

(assert (= (and b!5494914 (not res!2343005)) b!5494913))

(assert (= (or b!5494913 b!5494910) bm!405142))

(assert (= (or b!5494905 b!5494914) bm!405143))

(declare-fun m!6505466 () Bool)

(assert (=> bm!405142 m!6505466))

(declare-fun m!6505468 () Bool)

(assert (=> b!5494911 m!6505468))

(assert (=> bm!405143 m!6505414))

(declare-fun m!6505470 () Bool)

(assert (=> b!5494915 m!6505470))

(assert (=> b!5494608 d!1742370))

(declare-fun b!5494925 () Bool)

(declare-fun e!3399422 () Bool)

(assert (=> b!5494925 (= e!3399422 (nullable!5507 (regOne!31443 r!7292)))))

(declare-fun d!1742372 () Bool)

(declare-fun e!3399424 () Bool)

(assert (=> d!1742372 e!3399424))

(declare-fun c!959365 () Bool)

(assert (=> d!1742372 (= c!959365 ((_ is EmptyExpr!15465) (regOne!31443 r!7292)))))

(declare-fun lt!2242744 () Bool)

(assert (=> d!1742372 (= lt!2242744 e!3399422)))

(declare-fun c!959366 () Bool)

(assert (=> d!1742372 (= c!959366 (isEmpty!34367 s!2326))))

(assert (=> d!1742372 (validRegex!7201 (regOne!31443 r!7292))))

(assert (=> d!1742372 (= (matchR!7650 (regOne!31443 r!7292) s!2326) lt!2242744)))

(declare-fun b!5494926 () Bool)

(declare-fun res!2343014 () Bool)

(declare-fun e!3399421 () Bool)

(assert (=> b!5494926 (=> res!2343014 e!3399421)))

(declare-fun e!3399423 () Bool)

(assert (=> b!5494926 (= res!2343014 e!3399423)))

(declare-fun res!2343012 () Bool)

(assert (=> b!5494926 (=> (not res!2343012) (not e!3399423))))

(assert (=> b!5494926 (= res!2343012 lt!2242744)))

(declare-fun b!5494927 () Bool)

(declare-fun res!2343016 () Bool)

(assert (=> b!5494927 (=> res!2343016 e!3399421)))

(assert (=> b!5494927 (= res!2343016 (not ((_ is ElementMatch!15465) (regOne!31443 r!7292))))))

(declare-fun e!3399425 () Bool)

(assert (=> b!5494927 (= e!3399425 e!3399421)))

(declare-fun b!5494928 () Bool)

(assert (=> b!5494928 (= e!3399423 (= (head!11767 s!2326) (c!959267 (regOne!31443 r!7292))))))

(declare-fun b!5494929 () Bool)

(assert (=> b!5494929 (= e!3399425 (not lt!2242744))))

(declare-fun b!5494930 () Bool)

(assert (=> b!5494930 (= e!3399424 e!3399425)))

(declare-fun c!959367 () Bool)

(assert (=> b!5494930 (= c!959367 ((_ is EmptyLang!15465) (regOne!31443 r!7292)))))

(declare-fun b!5494931 () Bool)

(declare-fun e!3399420 () Bool)

(assert (=> b!5494931 (= e!3399421 e!3399420)))

(declare-fun res!2343018 () Bool)

(assert (=> b!5494931 (=> (not res!2343018) (not e!3399420))))

(assert (=> b!5494931 (= res!2343018 (not lt!2242744))))

(declare-fun b!5494932 () Bool)

(declare-fun e!3399426 () Bool)

(assert (=> b!5494932 (= e!3399426 (not (= (head!11767 s!2326) (c!959267 (regOne!31443 r!7292)))))))

(declare-fun b!5494933 () Bool)

(declare-fun res!2343013 () Bool)

(assert (=> b!5494933 (=> (not res!2343013) (not e!3399423))))

(declare-fun call!405152 () Bool)

(assert (=> b!5494933 (= res!2343013 (not call!405152))))

(declare-fun b!5494934 () Bool)

(declare-fun res!2343017 () Bool)

(assert (=> b!5494934 (=> res!2343017 e!3399426)))

(assert (=> b!5494934 (= res!2343017 (not (isEmpty!34367 (tail!10862 s!2326))))))

(declare-fun bm!405147 () Bool)

(assert (=> bm!405147 (= call!405152 (isEmpty!34367 s!2326))))

(declare-fun b!5494935 () Bool)

(assert (=> b!5494935 (= e!3399422 (matchR!7650 (derivativeStep!4346 (regOne!31443 r!7292) (head!11767 s!2326)) (tail!10862 s!2326)))))

(declare-fun b!5494936 () Bool)

(assert (=> b!5494936 (= e!3399424 (= lt!2242744 call!405152))))

(declare-fun b!5494937 () Bool)

(declare-fun res!2343015 () Bool)

(assert (=> b!5494937 (=> (not res!2343015) (not e!3399423))))

(assert (=> b!5494937 (= res!2343015 (isEmpty!34367 (tail!10862 s!2326)))))

(declare-fun b!5494938 () Bool)

(assert (=> b!5494938 (= e!3399420 e!3399426)))

(declare-fun res!2343011 () Bool)

(assert (=> b!5494938 (=> res!2343011 e!3399426)))

(assert (=> b!5494938 (= res!2343011 call!405152)))

(assert (= (and d!1742372 c!959366) b!5494925))

(assert (= (and d!1742372 (not c!959366)) b!5494935))

(assert (= (and d!1742372 c!959365) b!5494936))

(assert (= (and d!1742372 (not c!959365)) b!5494930))

(assert (= (and b!5494930 c!959367) b!5494929))

(assert (= (and b!5494930 (not c!959367)) b!5494927))

(assert (= (and b!5494927 (not res!2343016)) b!5494926))

(assert (= (and b!5494926 res!2343012) b!5494933))

(assert (= (and b!5494933 res!2343013) b!5494937))

(assert (= (and b!5494937 res!2343015) b!5494928))

(assert (= (and b!5494926 (not res!2343014)) b!5494931))

(assert (= (and b!5494931 res!2343018) b!5494938))

(assert (= (and b!5494938 (not res!2343011)) b!5494934))

(assert (= (and b!5494934 (not res!2343017)) b!5494932))

(assert (= (or b!5494936 b!5494933 b!5494938) bm!405147))

(assert (=> b!5494928 m!6505450))

(assert (=> d!1742372 m!6505414))

(assert (=> d!1742372 m!6505426))

(assert (=> b!5494932 m!6505450))

(assert (=> bm!405147 m!6505414))

(declare-fun m!6505480 () Bool)

(assert (=> b!5494925 m!6505480))

(assert (=> b!5494937 m!6505456))

(assert (=> b!5494937 m!6505456))

(assert (=> b!5494937 m!6505458))

(assert (=> b!5494935 m!6505450))

(assert (=> b!5494935 m!6505450))

(declare-fun m!6505482 () Bool)

(assert (=> b!5494935 m!6505482))

(assert (=> b!5494935 m!6505456))

(assert (=> b!5494935 m!6505482))

(assert (=> b!5494935 m!6505456))

(declare-fun m!6505484 () Bool)

(assert (=> b!5494935 m!6505484))

(assert (=> b!5494934 m!6505456))

(assert (=> b!5494934 m!6505456))

(assert (=> b!5494934 m!6505458))

(assert (=> b!5494608 d!1742372))

(declare-fun bs!1267747 () Bool)

(declare-fun d!1742378 () Bool)

(assert (= bs!1267747 (and d!1742378 d!1742340)))

(declare-fun lambda!294210 () Int)

(assert (=> bs!1267747 (= lambda!294210 lambda!294180)))

(declare-fun bs!1267748 () Bool)

(assert (= bs!1267748 (and d!1742378 d!1742346)))

(assert (=> bs!1267748 (= lambda!294210 lambda!294181)))

(declare-fun bs!1267749 () Bool)

(assert (= bs!1267749 (and d!1742378 d!1742348)))

(assert (=> bs!1267749 (= lambda!294210 lambda!294184)))

(declare-fun b!5494987 () Bool)

(declare-fun e!3399458 () Bool)

(declare-fun lt!2242747 () Regex!15465)

(declare-fun isEmptyLang!1065 (Regex!15465) Bool)

(assert (=> b!5494987 (= e!3399458 (isEmptyLang!1065 lt!2242747))))

(declare-fun b!5494988 () Bool)

(declare-fun e!3399456 () Bool)

(assert (=> b!5494988 (= e!3399456 e!3399458)))

(declare-fun c!959387 () Bool)

(assert (=> b!5494988 (= c!959387 (isEmpty!34366 (unfocusZipperList!893 zl!343)))))

(declare-fun b!5494989 () Bool)

(declare-fun e!3399459 () Bool)

(declare-fun isUnion!495 (Regex!15465) Bool)

(assert (=> b!5494989 (= e!3399459 (isUnion!495 lt!2242747))))

(declare-fun b!5494990 () Bool)

(declare-fun e!3399455 () Bool)

(assert (=> b!5494990 (= e!3399455 (isEmpty!34366 (t!375925 (unfocusZipperList!893 zl!343))))))

(declare-fun b!5494991 () Bool)

(declare-fun e!3399457 () Regex!15465)

(assert (=> b!5494991 (= e!3399457 EmptyLang!15465)))

(declare-fun b!5494992 () Bool)

(assert (=> b!5494992 (= e!3399459 (= lt!2242747 (head!11765 (unfocusZipperList!893 zl!343))))))

(declare-fun b!5494993 () Bool)

(declare-fun e!3399460 () Regex!15465)

(assert (=> b!5494993 (= e!3399460 (h!69018 (unfocusZipperList!893 zl!343)))))

(declare-fun b!5494995 () Bool)

(assert (=> b!5494995 (= e!3399460 e!3399457)))

(declare-fun c!959385 () Bool)

(assert (=> b!5494995 (= c!959385 ((_ is Cons!62570) (unfocusZipperList!893 zl!343)))))

(declare-fun b!5494996 () Bool)

(assert (=> b!5494996 (= e!3399458 e!3399459)))

(declare-fun c!959384 () Bool)

(assert (=> b!5494996 (= c!959384 (isEmpty!34366 (tail!10860 (unfocusZipperList!893 zl!343))))))

(declare-fun b!5494994 () Bool)

(assert (=> b!5494994 (= e!3399457 (Union!15465 (h!69018 (unfocusZipperList!893 zl!343)) (generalisedUnion!1328 (t!375925 (unfocusZipperList!893 zl!343)))))))

(assert (=> d!1742378 e!3399456))

(declare-fun res!2343035 () Bool)

(assert (=> d!1742378 (=> (not res!2343035) (not e!3399456))))

(assert (=> d!1742378 (= res!2343035 (validRegex!7201 lt!2242747))))

(assert (=> d!1742378 (= lt!2242747 e!3399460)))

(declare-fun c!959386 () Bool)

(assert (=> d!1742378 (= c!959386 e!3399455)))

(declare-fun res!2343036 () Bool)

(assert (=> d!1742378 (=> (not res!2343036) (not e!3399455))))

(assert (=> d!1742378 (= res!2343036 ((_ is Cons!62570) (unfocusZipperList!893 zl!343)))))

(assert (=> d!1742378 (forall!14655 (unfocusZipperList!893 zl!343) lambda!294210)))

(assert (=> d!1742378 (= (generalisedUnion!1328 (unfocusZipperList!893 zl!343)) lt!2242747)))

(assert (= (and d!1742378 res!2343036) b!5494990))

(assert (= (and d!1742378 c!959386) b!5494993))

(assert (= (and d!1742378 (not c!959386)) b!5494995))

(assert (= (and b!5494995 c!959385) b!5494994))

(assert (= (and b!5494995 (not c!959385)) b!5494991))

(assert (= (and d!1742378 res!2343035) b!5494988))

(assert (= (and b!5494988 c!959387) b!5494987))

(assert (= (and b!5494988 (not c!959387)) b!5494996))

(assert (= (and b!5494996 c!959384) b!5494992))

(assert (= (and b!5494996 (not c!959384)) b!5494989))

(declare-fun m!6505486 () Bool)

(assert (=> b!5494989 m!6505486))

(declare-fun m!6505488 () Bool)

(assert (=> b!5494990 m!6505488))

(declare-fun m!6505490 () Bool)

(assert (=> b!5494987 m!6505490))

(assert (=> b!5494992 m!6505304))

(declare-fun m!6505492 () Bool)

(assert (=> b!5494992 m!6505492))

(assert (=> b!5494988 m!6505304))

(declare-fun m!6505494 () Bool)

(assert (=> b!5494988 m!6505494))

(declare-fun m!6505496 () Bool)

(assert (=> b!5494994 m!6505496))

(declare-fun m!6505498 () Bool)

(assert (=> d!1742378 m!6505498))

(assert (=> d!1742378 m!6505304))

(declare-fun m!6505500 () Bool)

(assert (=> d!1742378 m!6505500))

(assert (=> b!5494996 m!6505304))

(declare-fun m!6505502 () Bool)

(assert (=> b!5494996 m!6505502))

(assert (=> b!5494996 m!6505502))

(declare-fun m!6505504 () Bool)

(assert (=> b!5494996 m!6505504))

(assert (=> b!5494610 d!1742378))

(declare-fun bs!1267750 () Bool)

(declare-fun d!1742380 () Bool)

(assert (= bs!1267750 (and d!1742380 d!1742340)))

(declare-fun lambda!294215 () Int)

(assert (=> bs!1267750 (= lambda!294215 lambda!294180)))

(declare-fun bs!1267751 () Bool)

(assert (= bs!1267751 (and d!1742380 d!1742346)))

(assert (=> bs!1267751 (= lambda!294215 lambda!294181)))

(declare-fun bs!1267752 () Bool)

(assert (= bs!1267752 (and d!1742380 d!1742348)))

(assert (=> bs!1267752 (= lambda!294215 lambda!294184)))

(declare-fun bs!1267753 () Bool)

(assert (= bs!1267753 (and d!1742380 d!1742378)))

(assert (=> bs!1267753 (= lambda!294215 lambda!294210)))

(declare-fun lt!2242750 () List!62694)

(assert (=> d!1742380 (forall!14655 lt!2242750 lambda!294215)))

(declare-fun e!3399465 () List!62694)

(assert (=> d!1742380 (= lt!2242750 e!3399465)))

(declare-fun c!959390 () Bool)

(assert (=> d!1742380 (= c!959390 ((_ is Cons!62571) zl!343))))

(assert (=> d!1742380 (= (unfocusZipperList!893 zl!343) lt!2242750)))

(declare-fun b!5495005 () Bool)

(assert (=> b!5495005 (= e!3399465 (Cons!62570 (generalisedConcat!1080 (exprs!5349 (h!69019 zl!343))) (unfocusZipperList!893 (t!375926 zl!343))))))

(declare-fun b!5495006 () Bool)

(assert (=> b!5495006 (= e!3399465 Nil!62570)))

(assert (= (and d!1742380 c!959390) b!5495005))

(assert (= (and d!1742380 (not c!959390)) b!5495006))

(declare-fun m!6505506 () Bool)

(assert (=> d!1742380 m!6505506))

(assert (=> b!5495005 m!6505298))

(declare-fun m!6505508 () Bool)

(assert (=> b!5495005 m!6505508))

(assert (=> b!5494610 d!1742380))

(declare-fun bs!1267754 () Bool)

(declare-fun b!5495026 () Bool)

(assert (= bs!1267754 (and b!5495026 b!5494803)))

(declare-fun lambda!294217 () Int)

(assert (=> bs!1267754 (= (and (= (reg!15794 r!7292) (reg!15794 (regTwo!31443 r!7292))) (= r!7292 (regTwo!31443 r!7292))) (= lambda!294217 lambda!294197))))

(declare-fun bs!1267755 () Bool)

(assert (= bs!1267755 (and b!5495026 b!5494800)))

(assert (=> bs!1267755 (not (= lambda!294217 lambda!294199))))

(declare-fun bs!1267756 () Bool)

(assert (= bs!1267756 (and b!5495026 b!5494913)))

(assert (=> bs!1267756 (= (and (= (reg!15794 r!7292) (reg!15794 (regOne!31443 r!7292))) (= r!7292 (regOne!31443 r!7292))) (= lambda!294217 lambda!294203))))

(declare-fun bs!1267758 () Bool)

(assert (= bs!1267758 (and b!5495026 b!5494910)))

(assert (=> bs!1267758 (not (= lambda!294217 lambda!294204))))

(assert (=> b!5495026 true))

(assert (=> b!5495026 true))

(declare-fun bs!1267759 () Bool)

(declare-fun b!5495023 () Bool)

(assert (= bs!1267759 (and b!5495023 b!5494803)))

(declare-fun lambda!294219 () Int)

(assert (=> bs!1267759 (not (= lambda!294219 lambda!294197))))

(declare-fun bs!1267760 () Bool)

(assert (= bs!1267760 (and b!5495023 b!5495026)))

(assert (=> bs!1267760 (not (= lambda!294219 lambda!294217))))

(declare-fun bs!1267761 () Bool)

(assert (= bs!1267761 (and b!5495023 b!5494913)))

(assert (=> bs!1267761 (not (= lambda!294219 lambda!294203))))

(declare-fun bs!1267762 () Bool)

(assert (= bs!1267762 (and b!5495023 b!5494910)))

(assert (=> bs!1267762 (= (and (= (regOne!31442 r!7292) (regOne!31442 (regOne!31443 r!7292))) (= (regTwo!31442 r!7292) (regTwo!31442 (regOne!31443 r!7292)))) (= lambda!294219 lambda!294204))))

(declare-fun bs!1267763 () Bool)

(assert (= bs!1267763 (and b!5495023 b!5494800)))

(assert (=> bs!1267763 (= (and (= (regOne!31442 r!7292) (regOne!31442 (regTwo!31443 r!7292))) (= (regTwo!31442 r!7292) (regTwo!31442 (regTwo!31443 r!7292)))) (= lambda!294219 lambda!294199))))

(assert (=> b!5495023 true))

(assert (=> b!5495023 true))

(declare-fun b!5495018 () Bool)

(declare-fun e!3399479 () Bool)

(declare-fun call!405159 () Bool)

(assert (=> b!5495018 (= e!3399479 call!405159)))

(declare-fun b!5495019 () Bool)

(declare-fun c!959397 () Bool)

(assert (=> b!5495019 (= c!959397 ((_ is ElementMatch!15465) r!7292))))

(declare-fun e!3399475 () Bool)

(declare-fun e!3399474 () Bool)

(assert (=> b!5495019 (= e!3399475 e!3399474)))

(declare-fun b!5495020 () Bool)

(declare-fun e!3399476 () Bool)

(declare-fun e!3399477 () Bool)

(assert (=> b!5495020 (= e!3399476 e!3399477)))

(declare-fun c!959398 () Bool)

(assert (=> b!5495020 (= c!959398 ((_ is Star!15465) r!7292))))

(declare-fun b!5495021 () Bool)

(assert (=> b!5495021 (= e!3399479 e!3399475)))

(declare-fun res!2343044 () Bool)

(assert (=> b!5495021 (= res!2343044 (not ((_ is EmptyLang!15465) r!7292)))))

(assert (=> b!5495021 (=> (not res!2343044) (not e!3399475))))

(declare-fun b!5495022 () Bool)

(declare-fun c!959396 () Bool)

(assert (=> b!5495022 (= c!959396 ((_ is Union!15465) r!7292))))

(assert (=> b!5495022 (= e!3399474 e!3399476)))

(declare-fun call!405160 () Bool)

(assert (=> b!5495023 (= e!3399477 call!405160)))

(declare-fun d!1742382 () Bool)

(declare-fun c!959395 () Bool)

(assert (=> d!1742382 (= c!959395 ((_ is EmptyExpr!15465) r!7292))))

(assert (=> d!1742382 (= (matchRSpec!2568 r!7292 s!2326) e!3399479)))

(declare-fun bm!405154 () Bool)

(assert (=> bm!405154 (= call!405160 (Exists!2572 (ite c!959398 lambda!294217 lambda!294219)))))

(declare-fun b!5495024 () Bool)

(declare-fun e!3399473 () Bool)

(assert (=> b!5495024 (= e!3399473 (matchRSpec!2568 (regTwo!31443 r!7292) s!2326))))

(declare-fun b!5495025 () Bool)

(assert (=> b!5495025 (= e!3399474 (= s!2326 (Cons!62572 (c!959267 r!7292) Nil!62572)))))

(declare-fun bm!405155 () Bool)

(assert (=> bm!405155 (= call!405159 (isEmpty!34367 s!2326))))

(declare-fun e!3399478 () Bool)

(assert (=> b!5495026 (= e!3399478 call!405160)))

(declare-fun b!5495027 () Bool)

(declare-fun res!2343046 () Bool)

(assert (=> b!5495027 (=> res!2343046 e!3399478)))

(assert (=> b!5495027 (= res!2343046 call!405159)))

(assert (=> b!5495027 (= e!3399477 e!3399478)))

(declare-fun b!5495028 () Bool)

(assert (=> b!5495028 (= e!3399476 e!3399473)))

(declare-fun res!2343045 () Bool)

(assert (=> b!5495028 (= res!2343045 (matchRSpec!2568 (regOne!31443 r!7292) s!2326))))

(assert (=> b!5495028 (=> res!2343045 e!3399473)))

(assert (= (and d!1742382 c!959395) b!5495018))

(assert (= (and d!1742382 (not c!959395)) b!5495021))

(assert (= (and b!5495021 res!2343044) b!5495019))

(assert (= (and b!5495019 c!959397) b!5495025))

(assert (= (and b!5495019 (not c!959397)) b!5495022))

(assert (= (and b!5495022 c!959396) b!5495028))

(assert (= (and b!5495022 (not c!959396)) b!5495020))

(assert (= (and b!5495028 (not res!2343045)) b!5495024))

(assert (= (and b!5495020 c!959398) b!5495027))

(assert (= (and b!5495020 (not c!959398)) b!5495023))

(assert (= (and b!5495027 (not res!2343046)) b!5495026))

(assert (= (or b!5495026 b!5495023) bm!405154))

(assert (= (or b!5495018 b!5495027) bm!405155))

(declare-fun m!6505514 () Bool)

(assert (=> bm!405154 m!6505514))

(assert (=> b!5495024 m!6505312))

(assert (=> bm!405155 m!6505414))

(assert (=> b!5495028 m!6505318))

(assert (=> b!5494604 d!1742382))

(declare-fun b!5495033 () Bool)

(declare-fun e!3399482 () Bool)

(assert (=> b!5495033 (= e!3399482 (nullable!5507 r!7292))))

(declare-fun d!1742386 () Bool)

(declare-fun e!3399484 () Bool)

(assert (=> d!1742386 e!3399484))

(declare-fun c!959399 () Bool)

(assert (=> d!1742386 (= c!959399 ((_ is EmptyExpr!15465) r!7292))))

(declare-fun lt!2242751 () Bool)

(assert (=> d!1742386 (= lt!2242751 e!3399482)))

(declare-fun c!959400 () Bool)

(assert (=> d!1742386 (= c!959400 (isEmpty!34367 s!2326))))

(assert (=> d!1742386 (validRegex!7201 r!7292)))

(assert (=> d!1742386 (= (matchR!7650 r!7292 s!2326) lt!2242751)))

(declare-fun b!5495034 () Bool)

(declare-fun res!2343050 () Bool)

(declare-fun e!3399481 () Bool)

(assert (=> b!5495034 (=> res!2343050 e!3399481)))

(declare-fun e!3399483 () Bool)

(assert (=> b!5495034 (= res!2343050 e!3399483)))

(declare-fun res!2343048 () Bool)

(assert (=> b!5495034 (=> (not res!2343048) (not e!3399483))))

(assert (=> b!5495034 (= res!2343048 lt!2242751)))

(declare-fun b!5495035 () Bool)

(declare-fun res!2343052 () Bool)

(assert (=> b!5495035 (=> res!2343052 e!3399481)))

(assert (=> b!5495035 (= res!2343052 (not ((_ is ElementMatch!15465) r!7292)))))

(declare-fun e!3399485 () Bool)

(assert (=> b!5495035 (= e!3399485 e!3399481)))

(declare-fun b!5495036 () Bool)

(assert (=> b!5495036 (= e!3399483 (= (head!11767 s!2326) (c!959267 r!7292)))))

(declare-fun b!5495037 () Bool)

(assert (=> b!5495037 (= e!3399485 (not lt!2242751))))

(declare-fun b!5495038 () Bool)

(assert (=> b!5495038 (= e!3399484 e!3399485)))

(declare-fun c!959401 () Bool)

(assert (=> b!5495038 (= c!959401 ((_ is EmptyLang!15465) r!7292))))

(declare-fun b!5495039 () Bool)

(declare-fun e!3399480 () Bool)

(assert (=> b!5495039 (= e!3399481 e!3399480)))

(declare-fun res!2343054 () Bool)

(assert (=> b!5495039 (=> (not res!2343054) (not e!3399480))))

(assert (=> b!5495039 (= res!2343054 (not lt!2242751))))

(declare-fun b!5495040 () Bool)

(declare-fun e!3399486 () Bool)

(assert (=> b!5495040 (= e!3399486 (not (= (head!11767 s!2326) (c!959267 r!7292))))))

(declare-fun b!5495041 () Bool)

(declare-fun res!2343049 () Bool)

(assert (=> b!5495041 (=> (not res!2343049) (not e!3399483))))

(declare-fun call!405161 () Bool)

(assert (=> b!5495041 (= res!2343049 (not call!405161))))

(declare-fun b!5495042 () Bool)

(declare-fun res!2343053 () Bool)

(assert (=> b!5495042 (=> res!2343053 e!3399486)))

(assert (=> b!5495042 (= res!2343053 (not (isEmpty!34367 (tail!10862 s!2326))))))

(declare-fun bm!405156 () Bool)

(assert (=> bm!405156 (= call!405161 (isEmpty!34367 s!2326))))

(declare-fun b!5495043 () Bool)

(assert (=> b!5495043 (= e!3399482 (matchR!7650 (derivativeStep!4346 r!7292 (head!11767 s!2326)) (tail!10862 s!2326)))))

(declare-fun b!5495044 () Bool)

(assert (=> b!5495044 (= e!3399484 (= lt!2242751 call!405161))))

(declare-fun b!5495045 () Bool)

(declare-fun res!2343051 () Bool)

(assert (=> b!5495045 (=> (not res!2343051) (not e!3399483))))

(assert (=> b!5495045 (= res!2343051 (isEmpty!34367 (tail!10862 s!2326)))))

(declare-fun b!5495046 () Bool)

(assert (=> b!5495046 (= e!3399480 e!3399486)))

(declare-fun res!2343047 () Bool)

(assert (=> b!5495046 (=> res!2343047 e!3399486)))

(assert (=> b!5495046 (= res!2343047 call!405161)))

(assert (= (and d!1742386 c!959400) b!5495033))

(assert (= (and d!1742386 (not c!959400)) b!5495043))

(assert (= (and d!1742386 c!959399) b!5495044))

(assert (= (and d!1742386 (not c!959399)) b!5495038))

(assert (= (and b!5495038 c!959401) b!5495037))

(assert (= (and b!5495038 (not c!959401)) b!5495035))

(assert (= (and b!5495035 (not res!2343052)) b!5495034))

(assert (= (and b!5495034 res!2343048) b!5495041))

(assert (= (and b!5495041 res!2343049) b!5495045))

(assert (= (and b!5495045 res!2343051) b!5495036))

(assert (= (and b!5495034 (not res!2343050)) b!5495039))

(assert (= (and b!5495039 res!2343054) b!5495046))

(assert (= (and b!5495046 (not res!2343047)) b!5495042))

(assert (= (and b!5495042 (not res!2343053)) b!5495040))

(assert (= (or b!5495044 b!5495041 b!5495046) bm!405156))

(assert (=> b!5495036 m!6505450))

(assert (=> d!1742386 m!6505414))

(assert (=> d!1742386 m!6505308))

(assert (=> b!5495040 m!6505450))

(assert (=> bm!405156 m!6505414))

(declare-fun m!6505516 () Bool)

(assert (=> b!5495033 m!6505516))

(assert (=> b!5495045 m!6505456))

(assert (=> b!5495045 m!6505456))

(assert (=> b!5495045 m!6505458))

(assert (=> b!5495043 m!6505450))

(assert (=> b!5495043 m!6505450))

(declare-fun m!6505518 () Bool)

(assert (=> b!5495043 m!6505518))

(assert (=> b!5495043 m!6505456))

(assert (=> b!5495043 m!6505518))

(assert (=> b!5495043 m!6505456))

(declare-fun m!6505520 () Bool)

(assert (=> b!5495043 m!6505520))

(assert (=> b!5495042 m!6505456))

(assert (=> b!5495042 m!6505456))

(assert (=> b!5495042 m!6505458))

(assert (=> b!5494604 d!1742386))

(declare-fun d!1742388 () Bool)

(assert (=> d!1742388 (= (matchR!7650 r!7292 s!2326) (matchRSpec!2568 r!7292 s!2326))))

(declare-fun lt!2242752 () Unit!155390)

(assert (=> d!1742388 (= lt!2242752 (choose!41771 r!7292 s!2326))))

(assert (=> d!1742388 (validRegex!7201 r!7292)))

(assert (=> d!1742388 (= (mainMatchTheorem!2568 r!7292 s!2326) lt!2242752)))

(declare-fun bs!1267764 () Bool)

(assert (= bs!1267764 d!1742388))

(assert (=> bs!1267764 m!6505328))

(assert (=> bs!1267764 m!6505326))

(declare-fun m!6505522 () Bool)

(assert (=> bs!1267764 m!6505522))

(assert (=> bs!1267764 m!6505308))

(assert (=> b!5494604 d!1742388))

(declare-fun d!1742390 () Bool)

(declare-fun lt!2242755 () Regex!15465)

(assert (=> d!1742390 (validRegex!7201 lt!2242755)))

(assert (=> d!1742390 (= lt!2242755 (generalisedUnion!1328 (unfocusZipperList!893 zl!343)))))

(assert (=> d!1742390 (= (unfocusZipper!1207 zl!343) lt!2242755)))

(declare-fun bs!1267765 () Bool)

(assert (= bs!1267765 d!1742390))

(declare-fun m!6505524 () Bool)

(assert (=> bs!1267765 m!6505524))

(assert (=> bs!1267765 m!6505304))

(assert (=> bs!1267765 m!6505304))

(assert (=> bs!1267765 m!6505306))

(assert (=> b!5494609 d!1742390))

(declare-fun b!5495076 () Bool)

(declare-fun e!3399502 () Bool)

(declare-fun tp!1511912 () Bool)

(assert (=> b!5495076 (= e!3399502 tp!1511912)))

(declare-fun e!3399501 () Bool)

(declare-fun b!5495075 () Bool)

(declare-fun tp!1511913 () Bool)

(assert (=> b!5495075 (= e!3399501 (and (inv!81909 (h!69019 (t!375926 zl!343))) e!3399502 tp!1511913))))

(assert (=> b!5494615 (= tp!1511900 e!3399501)))

(assert (= b!5495075 b!5495076))

(assert (= (and b!5494615 ((_ is Cons!62571) (t!375926 zl!343))) b!5495075))

(declare-fun m!6505526 () Bool)

(assert (=> b!5495075 m!6505526))

(declare-fun b!5495093 () Bool)

(declare-fun e!3399509 () Bool)

(assert (=> b!5495093 (= e!3399509 tp_is_empty!40183)))

(declare-fun b!5495094 () Bool)

(declare-fun tp!1511928 () Bool)

(declare-fun tp!1511924 () Bool)

(assert (=> b!5495094 (= e!3399509 (and tp!1511928 tp!1511924))))

(declare-fun b!5495095 () Bool)

(declare-fun tp!1511927 () Bool)

(assert (=> b!5495095 (= e!3399509 tp!1511927)))

(assert (=> b!5494605 (= tp!1511901 e!3399509)))

(declare-fun b!5495096 () Bool)

(declare-fun tp!1511926 () Bool)

(declare-fun tp!1511925 () Bool)

(assert (=> b!5495096 (= e!3399509 (and tp!1511926 tp!1511925))))

(assert (= (and b!5494605 ((_ is ElementMatch!15465) (reg!15794 r!7292))) b!5495093))

(assert (= (and b!5494605 ((_ is Concat!24310) (reg!15794 r!7292))) b!5495094))

(assert (= (and b!5494605 ((_ is Star!15465) (reg!15794 r!7292))) b!5495095))

(assert (= (and b!5494605 ((_ is Union!15465) (reg!15794 r!7292))) b!5495096))

(declare-fun b!5495097 () Bool)

(declare-fun e!3399510 () Bool)

(assert (=> b!5495097 (= e!3399510 tp_is_empty!40183)))

(declare-fun b!5495098 () Bool)

(declare-fun tp!1511933 () Bool)

(declare-fun tp!1511929 () Bool)

(assert (=> b!5495098 (= e!3399510 (and tp!1511933 tp!1511929))))

(declare-fun b!5495099 () Bool)

(declare-fun tp!1511932 () Bool)

(assert (=> b!5495099 (= e!3399510 tp!1511932)))

(assert (=> b!5494607 (= tp!1511907 e!3399510)))

(declare-fun b!5495100 () Bool)

(declare-fun tp!1511931 () Bool)

(declare-fun tp!1511930 () Bool)

(assert (=> b!5495100 (= e!3399510 (and tp!1511931 tp!1511930))))

(assert (= (and b!5494607 ((_ is ElementMatch!15465) (regOne!31442 r!7292))) b!5495097))

(assert (= (and b!5494607 ((_ is Concat!24310) (regOne!31442 r!7292))) b!5495098))

(assert (= (and b!5494607 ((_ is Star!15465) (regOne!31442 r!7292))) b!5495099))

(assert (= (and b!5494607 ((_ is Union!15465) (regOne!31442 r!7292))) b!5495100))

(declare-fun b!5495101 () Bool)

(declare-fun e!3399511 () Bool)

(assert (=> b!5495101 (= e!3399511 tp_is_empty!40183)))

(declare-fun b!5495102 () Bool)

(declare-fun tp!1511938 () Bool)

(declare-fun tp!1511934 () Bool)

(assert (=> b!5495102 (= e!3399511 (and tp!1511938 tp!1511934))))

(declare-fun b!5495103 () Bool)

(declare-fun tp!1511937 () Bool)

(assert (=> b!5495103 (= e!3399511 tp!1511937)))

(assert (=> b!5494607 (= tp!1511904 e!3399511)))

(declare-fun b!5495104 () Bool)

(declare-fun tp!1511936 () Bool)

(declare-fun tp!1511935 () Bool)

(assert (=> b!5495104 (= e!3399511 (and tp!1511936 tp!1511935))))

(assert (= (and b!5494607 ((_ is ElementMatch!15465) (regTwo!31442 r!7292))) b!5495101))

(assert (= (and b!5494607 ((_ is Concat!24310) (regTwo!31442 r!7292))) b!5495102))

(assert (= (and b!5494607 ((_ is Star!15465) (regTwo!31442 r!7292))) b!5495103))

(assert (= (and b!5494607 ((_ is Union!15465) (regTwo!31442 r!7292))) b!5495104))

(declare-fun b!5495109 () Bool)

(declare-fun e!3399514 () Bool)

(declare-fun tp!1511943 () Bool)

(declare-fun tp!1511944 () Bool)

(assert (=> b!5495109 (= e!3399514 (and tp!1511943 tp!1511944))))

(assert (=> b!5494612 (= tp!1511903 e!3399514)))

(assert (= (and b!5494612 ((_ is Cons!62570) (exprs!5349 setElem!36385))) b!5495109))

(declare-fun b!5495114 () Bool)

(declare-fun e!3399517 () Bool)

(declare-fun tp!1511947 () Bool)

(assert (=> b!5495114 (= e!3399517 (and tp_is_empty!40183 tp!1511947))))

(assert (=> b!5494616 (= tp!1511899 e!3399517)))

(assert (= (and b!5494616 ((_ is Cons!62572) (t!375927 s!2326))) b!5495114))

(declare-fun condSetEmpty!36388 () Bool)

(assert (=> setNonEmpty!36385 (= condSetEmpty!36388 (= setRest!36385 ((as const (Array Context!9698 Bool)) false)))))

(declare-fun setRes!36388 () Bool)

(assert (=> setNonEmpty!36385 (= tp!1511902 setRes!36388)))

(declare-fun setIsEmpty!36388 () Bool)

(assert (=> setIsEmpty!36388 setRes!36388))

(declare-fun tp!1511953 () Bool)

(declare-fun setElem!36388 () Context!9698)

(declare-fun e!3399520 () Bool)

(declare-fun setNonEmpty!36388 () Bool)

(assert (=> setNonEmpty!36388 (= setRes!36388 (and tp!1511953 (inv!81909 setElem!36388) e!3399520))))

(declare-fun setRest!36388 () (InoxSet Context!9698))

(assert (=> setNonEmpty!36388 (= setRest!36385 ((_ map or) (store ((as const (Array Context!9698 Bool)) false) setElem!36388 true) setRest!36388))))

(declare-fun b!5495119 () Bool)

(declare-fun tp!1511952 () Bool)

(assert (=> b!5495119 (= e!3399520 tp!1511952)))

(assert (= (and setNonEmpty!36385 condSetEmpty!36388) setIsEmpty!36388))

(assert (= (and setNonEmpty!36385 (not condSetEmpty!36388)) setNonEmpty!36388))

(assert (= setNonEmpty!36388 b!5495119))

(declare-fun m!6505528 () Bool)

(assert (=> setNonEmpty!36388 m!6505528))

(declare-fun b!5495120 () Bool)

(declare-fun e!3399521 () Bool)

(assert (=> b!5495120 (= e!3399521 tp_is_empty!40183)))

(declare-fun b!5495121 () Bool)

(declare-fun tp!1511958 () Bool)

(declare-fun tp!1511954 () Bool)

(assert (=> b!5495121 (= e!3399521 (and tp!1511958 tp!1511954))))

(declare-fun b!5495122 () Bool)

(declare-fun tp!1511957 () Bool)

(assert (=> b!5495122 (= e!3399521 tp!1511957)))

(assert (=> b!5494603 (= tp!1511905 e!3399521)))

(declare-fun b!5495123 () Bool)

(declare-fun tp!1511956 () Bool)

(declare-fun tp!1511955 () Bool)

(assert (=> b!5495123 (= e!3399521 (and tp!1511956 tp!1511955))))

(assert (= (and b!5494603 ((_ is ElementMatch!15465) (regOne!31443 r!7292))) b!5495120))

(assert (= (and b!5494603 ((_ is Concat!24310) (regOne!31443 r!7292))) b!5495121))

(assert (= (and b!5494603 ((_ is Star!15465) (regOne!31443 r!7292))) b!5495122))

(assert (= (and b!5494603 ((_ is Union!15465) (regOne!31443 r!7292))) b!5495123))

(declare-fun b!5495124 () Bool)

(declare-fun e!3399522 () Bool)

(assert (=> b!5495124 (= e!3399522 tp_is_empty!40183)))

(declare-fun b!5495125 () Bool)

(declare-fun tp!1511963 () Bool)

(declare-fun tp!1511959 () Bool)

(assert (=> b!5495125 (= e!3399522 (and tp!1511963 tp!1511959))))

(declare-fun b!5495126 () Bool)

(declare-fun tp!1511962 () Bool)

(assert (=> b!5495126 (= e!3399522 tp!1511962)))

(assert (=> b!5494603 (= tp!1511906 e!3399522)))

(declare-fun b!5495127 () Bool)

(declare-fun tp!1511961 () Bool)

(declare-fun tp!1511960 () Bool)

(assert (=> b!5495127 (= e!3399522 (and tp!1511961 tp!1511960))))

(assert (= (and b!5494603 ((_ is ElementMatch!15465) (regTwo!31443 r!7292))) b!5495124))

(assert (= (and b!5494603 ((_ is Concat!24310) (regTwo!31443 r!7292))) b!5495125))

(assert (= (and b!5494603 ((_ is Star!15465) (regTwo!31443 r!7292))) b!5495126))

(assert (= (and b!5494603 ((_ is Union!15465) (regTwo!31443 r!7292))) b!5495127))

(declare-fun b!5495128 () Bool)

(declare-fun e!3399523 () Bool)

(declare-fun tp!1511964 () Bool)

(declare-fun tp!1511965 () Bool)

(assert (=> b!5495128 (= e!3399523 (and tp!1511964 tp!1511965))))

(assert (=> b!5494613 (= tp!1511898 e!3399523)))

(assert (= (and b!5494613 ((_ is Cons!62570) (exprs!5349 (h!69019 zl!343)))) b!5495128))

(check-sat (not bm!405099) (not b!5494989) (not b!5495043) (not b!5495095) (not b!5494925) (not bm!405124) (not b!5495045) (not bm!405154) (not b!5494880) (not b!5494992) (not b!5494882) (not d!1742380) (not bm!405135) (not b!5495127) (not bm!405131) (not b!5494671) (not b!5494996) (not b!5495033) (not bm!405112) (not b!5494801) (not b!5495075) (not b!5495096) (not b!5494883) (not bm!405156) (not b!5494932) (not b!5495040) (not b!5494988) (not b!5495104) (not b!5494662) (not b!5495094) (not d!1742388) (not b!5495114) (not bm!405142) (not b!5495098) (not b!5495102) (not b!5495100) (not b!5495024) (not b!5495109) (not b!5494911) (not bm!405114) (not bm!405126) (not bm!405132) (not d!1742346) (not bm!405143) (not d!1742378) (not d!1742362) (not b!5494937) (not b!5494719) (not bm!405115) (not b!5495123) (not b!5494720) (not bm!405155) (not bm!405147) (not d!1742348) (not b!5494873) (not b!5495103) (not b!5494876) (not b!5494697) (not b!5494990) (not b!5494722) (not b!5495005) (not b!5494987) (not d!1742390) (not b!5494934) (not b!5494935) tp_is_empty!40183 (not b!5494633) (not d!1742342) (not b!5494726) (not d!1742358) (not b!5495042) (not b!5495099) (not b!5494724) (not b!5494634) (not d!1742340) (not b!5494928) (not b!5495121) (not b!5495028) (not d!1742368) (not d!1742372) (not b!5495076) (not b!5494727) (not b!5495122) (not b!5495036) (not b!5495126) (not b!5494725) (not b!5495128) (not setNonEmpty!36388) (not b!5495125) (not d!1742386) (not b!5495119) (not b!5494885) (not b!5494994) (not b!5494805) (not b!5494915))
(check-sat)
(get-model)

(declare-fun d!1742412 () Bool)

(assert (=> d!1742412 (= (isEmpty!34366 (tail!10860 (exprs!5349 (h!69019 zl!343)))) ((_ is Nil!62570) (tail!10860 (exprs!5349 (h!69019 zl!343)))))))

(assert (=> b!5494724 d!1742412))

(declare-fun d!1742414 () Bool)

(assert (=> d!1742414 (= (tail!10860 (exprs!5349 (h!69019 zl!343))) (t!375925 (exprs!5349 (h!69019 zl!343))))))

(assert (=> b!5494724 d!1742414))

(declare-fun d!1742416 () Bool)

(assert (=> d!1742416 (= (isEmpty!34367 (tail!10862 s!2326)) ((_ is Nil!62572) (tail!10862 s!2326)))))

(assert (=> b!5494937 d!1742416))

(declare-fun d!1742418 () Bool)

(assert (=> d!1742418 (= (tail!10862 s!2326) (t!375927 s!2326))))

(assert (=> b!5494937 d!1742418))

(declare-fun bs!1267783 () Bool)

(declare-fun d!1742420 () Bool)

(assert (= bs!1267783 (and d!1742420 d!1742348)))

(declare-fun lambda!294224 () Int)

(assert (=> bs!1267783 (= lambda!294224 lambda!294184)))

(declare-fun bs!1267784 () Bool)

(assert (= bs!1267784 (and d!1742420 d!1742340)))

(assert (=> bs!1267784 (= lambda!294224 lambda!294180)))

(declare-fun bs!1267785 () Bool)

(assert (= bs!1267785 (and d!1742420 d!1742378)))

(assert (=> bs!1267785 (= lambda!294224 lambda!294210)))

(declare-fun bs!1267786 () Bool)

(assert (= bs!1267786 (and d!1742420 d!1742346)))

(assert (=> bs!1267786 (= lambda!294224 lambda!294181)))

(declare-fun bs!1267787 () Bool)

(assert (= bs!1267787 (and d!1742420 d!1742380)))

(assert (=> bs!1267787 (= lambda!294224 lambda!294215)))

(assert (=> d!1742420 (= (inv!81909 setElem!36388) (forall!14655 (exprs!5349 setElem!36388) lambda!294224))))

(declare-fun bs!1267788 () Bool)

(assert (= bs!1267788 d!1742420))

(declare-fun m!6505596 () Bool)

(assert (=> bs!1267788 m!6505596))

(assert (=> setNonEmpty!36388 d!1742420))

(declare-fun d!1742422 () Bool)

(assert (=> d!1742422 (= (isEmpty!34366 (unfocusZipperList!893 zl!343)) ((_ is Nil!62570) (unfocusZipperList!893 zl!343)))))

(assert (=> b!5494988 d!1742422))

(declare-fun d!1742424 () Bool)

(declare-fun res!2343107 () Bool)

(declare-fun e!3399614 () Bool)

(assert (=> d!1742424 (=> res!2343107 e!3399614)))

(assert (=> d!1742424 (= res!2343107 ((_ is ElementMatch!15465) lt!2242747))))

(assert (=> d!1742424 (= (validRegex!7201 lt!2242747) e!3399614)))

(declare-fun b!5495295 () Bool)

(declare-fun e!3399612 () Bool)

(declare-fun call!405193 () Bool)

(assert (=> b!5495295 (= e!3399612 call!405193)))

(declare-fun b!5495296 () Bool)

(declare-fun res!2343110 () Bool)

(declare-fun e!3399613 () Bool)

(assert (=> b!5495296 (=> res!2343110 e!3399613)))

(assert (=> b!5495296 (= res!2343110 (not ((_ is Concat!24310) lt!2242747)))))

(declare-fun e!3399609 () Bool)

(assert (=> b!5495296 (= e!3399609 e!3399613)))

(declare-fun b!5495297 () Bool)

(declare-fun res!2343111 () Bool)

(declare-fun e!3399615 () Bool)

(assert (=> b!5495297 (=> (not res!2343111) (not e!3399615))))

(declare-fun call!405194 () Bool)

(assert (=> b!5495297 (= res!2343111 call!405194)))

(assert (=> b!5495297 (= e!3399609 e!3399615)))

(declare-fun b!5495298 () Bool)

(declare-fun e!3399611 () Bool)

(assert (=> b!5495298 (= e!3399614 e!3399611)))

(declare-fun c!959446 () Bool)

(assert (=> b!5495298 (= c!959446 ((_ is Star!15465) lt!2242747))))

(declare-fun b!5495299 () Bool)

(declare-fun e!3399610 () Bool)

(assert (=> b!5495299 (= e!3399613 e!3399610)))

(declare-fun res!2343108 () Bool)

(assert (=> b!5495299 (=> (not res!2343108) (not e!3399610))))

(assert (=> b!5495299 (= res!2343108 call!405194)))

(declare-fun bm!405187 () Bool)

(declare-fun call!405192 () Bool)

(declare-fun c!959447 () Bool)

(assert (=> bm!405187 (= call!405192 (validRegex!7201 (ite c!959447 (regTwo!31443 lt!2242747) (regTwo!31442 lt!2242747))))))

(declare-fun bm!405188 () Bool)

(assert (=> bm!405188 (= call!405194 call!405193)))

(declare-fun b!5495300 () Bool)

(assert (=> b!5495300 (= e!3399611 e!3399609)))

(assert (=> b!5495300 (= c!959447 ((_ is Union!15465) lt!2242747))))

(declare-fun bm!405189 () Bool)

(assert (=> bm!405189 (= call!405193 (validRegex!7201 (ite c!959446 (reg!15794 lt!2242747) (ite c!959447 (regOne!31443 lt!2242747) (regOne!31442 lt!2242747)))))))

(declare-fun b!5495301 () Bool)

(assert (=> b!5495301 (= e!3399610 call!405192)))

(declare-fun b!5495302 () Bool)

(assert (=> b!5495302 (= e!3399611 e!3399612)))

(declare-fun res!2343109 () Bool)

(assert (=> b!5495302 (= res!2343109 (not (nullable!5507 (reg!15794 lt!2242747))))))

(assert (=> b!5495302 (=> (not res!2343109) (not e!3399612))))

(declare-fun b!5495303 () Bool)

(assert (=> b!5495303 (= e!3399615 call!405192)))

(assert (= (and d!1742424 (not res!2343107)) b!5495298))

(assert (= (and b!5495298 c!959446) b!5495302))

(assert (= (and b!5495298 (not c!959446)) b!5495300))

(assert (= (and b!5495302 res!2343109) b!5495295))

(assert (= (and b!5495300 c!959447) b!5495297))

(assert (= (and b!5495300 (not c!959447)) b!5495296))

(assert (= (and b!5495297 res!2343111) b!5495303))

(assert (= (and b!5495296 (not res!2343110)) b!5495299))

(assert (= (and b!5495299 res!2343108) b!5495301))

(assert (= (or b!5495303 b!5495301) bm!405187))

(assert (= (or b!5495297 b!5495299) bm!405188))

(assert (= (or b!5495295 bm!405188) bm!405189))

(declare-fun m!6505598 () Bool)

(assert (=> bm!405187 m!6505598))

(declare-fun m!6505600 () Bool)

(assert (=> bm!405189 m!6505600))

(declare-fun m!6505602 () Bool)

(assert (=> b!5495302 m!6505602))

(assert (=> d!1742378 d!1742424))

(declare-fun d!1742426 () Bool)

(declare-fun res!2343116 () Bool)

(declare-fun e!3399620 () Bool)

(assert (=> d!1742426 (=> res!2343116 e!3399620)))

(assert (=> d!1742426 (= res!2343116 ((_ is Nil!62570) (unfocusZipperList!893 zl!343)))))

(assert (=> d!1742426 (= (forall!14655 (unfocusZipperList!893 zl!343) lambda!294210) e!3399620)))

(declare-fun b!5495308 () Bool)

(declare-fun e!3399621 () Bool)

(assert (=> b!5495308 (= e!3399620 e!3399621)))

(declare-fun res!2343117 () Bool)

(assert (=> b!5495308 (=> (not res!2343117) (not e!3399621))))

(declare-fun dynLambda!24457 (Int Regex!15465) Bool)

(assert (=> b!5495308 (= res!2343117 (dynLambda!24457 lambda!294210 (h!69018 (unfocusZipperList!893 zl!343))))))

(declare-fun b!5495309 () Bool)

(assert (=> b!5495309 (= e!3399621 (forall!14655 (t!375925 (unfocusZipperList!893 zl!343)) lambda!294210))))

(assert (= (and d!1742426 (not res!2343116)) b!5495308))

(assert (= (and b!5495308 res!2343117) b!5495309))

(declare-fun b_lambda!208475 () Bool)

(assert (=> (not b_lambda!208475) (not b!5495308)))

(declare-fun m!6505604 () Bool)

(assert (=> b!5495308 m!6505604))

(declare-fun m!6505606 () Bool)

(assert (=> b!5495309 m!6505606))

(assert (=> d!1742378 d!1742426))

(declare-fun d!1742428 () Bool)

(assert (=> d!1742428 (= (isEmpty!34366 (t!375925 (unfocusZipperList!893 zl!343))) ((_ is Nil!62570) (t!375925 (unfocusZipperList!893 zl!343))))))

(assert (=> b!5494990 d!1742428))

(declare-fun bs!1267789 () Bool)

(declare-fun b!5495318 () Bool)

(assert (= bs!1267789 (and b!5495318 b!5494803)))

(declare-fun lambda!294225 () Int)

(assert (=> bs!1267789 (= (and (= (reg!15794 (regOne!31443 (regOne!31443 r!7292))) (reg!15794 (regTwo!31443 r!7292))) (= (regOne!31443 (regOne!31443 r!7292)) (regTwo!31443 r!7292))) (= lambda!294225 lambda!294197))))

(declare-fun bs!1267790 () Bool)

(assert (= bs!1267790 (and b!5495318 b!5495023)))

(assert (=> bs!1267790 (not (= lambda!294225 lambda!294219))))

(declare-fun bs!1267791 () Bool)

(assert (= bs!1267791 (and b!5495318 b!5495026)))

(assert (=> bs!1267791 (= (and (= (reg!15794 (regOne!31443 (regOne!31443 r!7292))) (reg!15794 r!7292)) (= (regOne!31443 (regOne!31443 r!7292)) r!7292)) (= lambda!294225 lambda!294217))))

(declare-fun bs!1267792 () Bool)

(assert (= bs!1267792 (and b!5495318 b!5494913)))

(assert (=> bs!1267792 (= (and (= (reg!15794 (regOne!31443 (regOne!31443 r!7292))) (reg!15794 (regOne!31443 r!7292))) (= (regOne!31443 (regOne!31443 r!7292)) (regOne!31443 r!7292))) (= lambda!294225 lambda!294203))))

(declare-fun bs!1267793 () Bool)

(assert (= bs!1267793 (and b!5495318 b!5494910)))

(assert (=> bs!1267793 (not (= lambda!294225 lambda!294204))))

(declare-fun bs!1267794 () Bool)

(assert (= bs!1267794 (and b!5495318 b!5494800)))

(assert (=> bs!1267794 (not (= lambda!294225 lambda!294199))))

(assert (=> b!5495318 true))

(assert (=> b!5495318 true))

(declare-fun bs!1267795 () Bool)

(declare-fun b!5495315 () Bool)

(assert (= bs!1267795 (and b!5495315 b!5494803)))

(declare-fun lambda!294226 () Int)

(assert (=> bs!1267795 (not (= lambda!294226 lambda!294197))))

(declare-fun bs!1267796 () Bool)

(assert (= bs!1267796 (and b!5495315 b!5495318)))

(assert (=> bs!1267796 (not (= lambda!294226 lambda!294225))))

(declare-fun bs!1267797 () Bool)

(assert (= bs!1267797 (and b!5495315 b!5495023)))

(assert (=> bs!1267797 (= (and (= (regOne!31442 (regOne!31443 (regOne!31443 r!7292))) (regOne!31442 r!7292)) (= (regTwo!31442 (regOne!31443 (regOne!31443 r!7292))) (regTwo!31442 r!7292))) (= lambda!294226 lambda!294219))))

(declare-fun bs!1267798 () Bool)

(assert (= bs!1267798 (and b!5495315 b!5495026)))

(assert (=> bs!1267798 (not (= lambda!294226 lambda!294217))))

(declare-fun bs!1267799 () Bool)

(assert (= bs!1267799 (and b!5495315 b!5494913)))

(assert (=> bs!1267799 (not (= lambda!294226 lambda!294203))))

(declare-fun bs!1267800 () Bool)

(assert (= bs!1267800 (and b!5495315 b!5494910)))

(assert (=> bs!1267800 (= (and (= (regOne!31442 (regOne!31443 (regOne!31443 r!7292))) (regOne!31442 (regOne!31443 r!7292))) (= (regTwo!31442 (regOne!31443 (regOne!31443 r!7292))) (regTwo!31442 (regOne!31443 r!7292)))) (= lambda!294226 lambda!294204))))

(declare-fun bs!1267801 () Bool)

(assert (= bs!1267801 (and b!5495315 b!5494800)))

(assert (=> bs!1267801 (= (and (= (regOne!31442 (regOne!31443 (regOne!31443 r!7292))) (regOne!31442 (regTwo!31443 r!7292))) (= (regTwo!31442 (regOne!31443 (regOne!31443 r!7292))) (regTwo!31442 (regTwo!31443 r!7292)))) (= lambda!294226 lambda!294199))))

(assert (=> b!5495315 true))

(assert (=> b!5495315 true))

(declare-fun b!5495310 () Bool)

(declare-fun e!3399628 () Bool)

(declare-fun call!405195 () Bool)

(assert (=> b!5495310 (= e!3399628 call!405195)))

(declare-fun b!5495311 () Bool)

(declare-fun c!959450 () Bool)

(assert (=> b!5495311 (= c!959450 ((_ is ElementMatch!15465) (regOne!31443 (regOne!31443 r!7292))))))

(declare-fun e!3399624 () Bool)

(declare-fun e!3399623 () Bool)

(assert (=> b!5495311 (= e!3399624 e!3399623)))

(declare-fun b!5495312 () Bool)

(declare-fun e!3399625 () Bool)

(declare-fun e!3399626 () Bool)

(assert (=> b!5495312 (= e!3399625 e!3399626)))

(declare-fun c!959451 () Bool)

(assert (=> b!5495312 (= c!959451 ((_ is Star!15465) (regOne!31443 (regOne!31443 r!7292))))))

(declare-fun b!5495313 () Bool)

(assert (=> b!5495313 (= e!3399628 e!3399624)))

(declare-fun res!2343118 () Bool)

(assert (=> b!5495313 (= res!2343118 (not ((_ is EmptyLang!15465) (regOne!31443 (regOne!31443 r!7292)))))))

(assert (=> b!5495313 (=> (not res!2343118) (not e!3399624))))

(declare-fun b!5495314 () Bool)

(declare-fun c!959449 () Bool)

(assert (=> b!5495314 (= c!959449 ((_ is Union!15465) (regOne!31443 (regOne!31443 r!7292))))))

(assert (=> b!5495314 (= e!3399623 e!3399625)))

(declare-fun call!405196 () Bool)

(assert (=> b!5495315 (= e!3399626 call!405196)))

(declare-fun d!1742430 () Bool)

(declare-fun c!959448 () Bool)

(assert (=> d!1742430 (= c!959448 ((_ is EmptyExpr!15465) (regOne!31443 (regOne!31443 r!7292))))))

(assert (=> d!1742430 (= (matchRSpec!2568 (regOne!31443 (regOne!31443 r!7292)) s!2326) e!3399628)))

(declare-fun bm!405190 () Bool)

(assert (=> bm!405190 (= call!405196 (Exists!2572 (ite c!959451 lambda!294225 lambda!294226)))))

(declare-fun b!5495316 () Bool)

(declare-fun e!3399622 () Bool)

(assert (=> b!5495316 (= e!3399622 (matchRSpec!2568 (regTwo!31443 (regOne!31443 (regOne!31443 r!7292))) s!2326))))

(declare-fun b!5495317 () Bool)

(assert (=> b!5495317 (= e!3399623 (= s!2326 (Cons!62572 (c!959267 (regOne!31443 (regOne!31443 r!7292))) Nil!62572)))))

(declare-fun bm!405191 () Bool)

(assert (=> bm!405191 (= call!405195 (isEmpty!34367 s!2326))))

(declare-fun e!3399627 () Bool)

(assert (=> b!5495318 (= e!3399627 call!405196)))

(declare-fun b!5495319 () Bool)

(declare-fun res!2343120 () Bool)

(assert (=> b!5495319 (=> res!2343120 e!3399627)))

(assert (=> b!5495319 (= res!2343120 call!405195)))

(assert (=> b!5495319 (= e!3399626 e!3399627)))

(declare-fun b!5495320 () Bool)

(assert (=> b!5495320 (= e!3399625 e!3399622)))

(declare-fun res!2343119 () Bool)

(assert (=> b!5495320 (= res!2343119 (matchRSpec!2568 (regOne!31443 (regOne!31443 (regOne!31443 r!7292))) s!2326))))

(assert (=> b!5495320 (=> res!2343119 e!3399622)))

(assert (= (and d!1742430 c!959448) b!5495310))

(assert (= (and d!1742430 (not c!959448)) b!5495313))

(assert (= (and b!5495313 res!2343118) b!5495311))

(assert (= (and b!5495311 c!959450) b!5495317))

(assert (= (and b!5495311 (not c!959450)) b!5495314))

(assert (= (and b!5495314 c!959449) b!5495320))

(assert (= (and b!5495314 (not c!959449)) b!5495312))

(assert (= (and b!5495320 (not res!2343119)) b!5495316))

(assert (= (and b!5495312 c!959451) b!5495319))

(assert (= (and b!5495312 (not c!959451)) b!5495315))

(assert (= (and b!5495319 (not res!2343120)) b!5495318))

(assert (= (or b!5495318 b!5495315) bm!405190))

(assert (= (or b!5495310 b!5495319) bm!405191))

(declare-fun m!6505608 () Bool)

(assert (=> bm!405190 m!6505608))

(declare-fun m!6505610 () Bool)

(assert (=> b!5495316 m!6505610))

(assert (=> bm!405191 m!6505414))

(declare-fun m!6505612 () Bool)

(assert (=> b!5495320 m!6505612))

(assert (=> b!5494915 d!1742430))

(declare-fun d!1742432 () Bool)

(declare-fun res!2343121 () Bool)

(declare-fun e!3399634 () Bool)

(assert (=> d!1742432 (=> res!2343121 e!3399634)))

(assert (=> d!1742432 (= res!2343121 ((_ is ElementMatch!15465) lt!2242755))))

(assert (=> d!1742432 (= (validRegex!7201 lt!2242755) e!3399634)))

(declare-fun b!5495321 () Bool)

(declare-fun e!3399632 () Bool)

(declare-fun call!405198 () Bool)

(assert (=> b!5495321 (= e!3399632 call!405198)))

(declare-fun b!5495322 () Bool)

(declare-fun res!2343124 () Bool)

(declare-fun e!3399633 () Bool)

(assert (=> b!5495322 (=> res!2343124 e!3399633)))

(assert (=> b!5495322 (= res!2343124 (not ((_ is Concat!24310) lt!2242755)))))

(declare-fun e!3399629 () Bool)

(assert (=> b!5495322 (= e!3399629 e!3399633)))

(declare-fun b!5495323 () Bool)

(declare-fun res!2343125 () Bool)

(declare-fun e!3399635 () Bool)

(assert (=> b!5495323 (=> (not res!2343125) (not e!3399635))))

(declare-fun call!405199 () Bool)

(assert (=> b!5495323 (= res!2343125 call!405199)))

(assert (=> b!5495323 (= e!3399629 e!3399635)))

(declare-fun b!5495324 () Bool)

(declare-fun e!3399631 () Bool)

(assert (=> b!5495324 (= e!3399634 e!3399631)))

(declare-fun c!959452 () Bool)

(assert (=> b!5495324 (= c!959452 ((_ is Star!15465) lt!2242755))))

(declare-fun b!5495325 () Bool)

(declare-fun e!3399630 () Bool)

(assert (=> b!5495325 (= e!3399633 e!3399630)))

(declare-fun res!2343122 () Bool)

(assert (=> b!5495325 (=> (not res!2343122) (not e!3399630))))

(assert (=> b!5495325 (= res!2343122 call!405199)))

(declare-fun bm!405192 () Bool)

(declare-fun call!405197 () Bool)

(declare-fun c!959453 () Bool)

(assert (=> bm!405192 (= call!405197 (validRegex!7201 (ite c!959453 (regTwo!31443 lt!2242755) (regTwo!31442 lt!2242755))))))

(declare-fun bm!405193 () Bool)

(assert (=> bm!405193 (= call!405199 call!405198)))

(declare-fun b!5495326 () Bool)

(assert (=> b!5495326 (= e!3399631 e!3399629)))

(assert (=> b!5495326 (= c!959453 ((_ is Union!15465) lt!2242755))))

(declare-fun bm!405194 () Bool)

(assert (=> bm!405194 (= call!405198 (validRegex!7201 (ite c!959452 (reg!15794 lt!2242755) (ite c!959453 (regOne!31443 lt!2242755) (regOne!31442 lt!2242755)))))))

(declare-fun b!5495327 () Bool)

(assert (=> b!5495327 (= e!3399630 call!405197)))

(declare-fun b!5495328 () Bool)

(assert (=> b!5495328 (= e!3399631 e!3399632)))

(declare-fun res!2343123 () Bool)

(assert (=> b!5495328 (= res!2343123 (not (nullable!5507 (reg!15794 lt!2242755))))))

(assert (=> b!5495328 (=> (not res!2343123) (not e!3399632))))

(declare-fun b!5495329 () Bool)

(assert (=> b!5495329 (= e!3399635 call!405197)))

(assert (= (and d!1742432 (not res!2343121)) b!5495324))

(assert (= (and b!5495324 c!959452) b!5495328))

(assert (= (and b!5495324 (not c!959452)) b!5495326))

(assert (= (and b!5495328 res!2343123) b!5495321))

(assert (= (and b!5495326 c!959453) b!5495323))

(assert (= (and b!5495326 (not c!959453)) b!5495322))

(assert (= (and b!5495323 res!2343125) b!5495329))

(assert (= (and b!5495322 (not res!2343124)) b!5495325))

(assert (= (and b!5495325 res!2343122) b!5495327))

(assert (= (or b!5495329 b!5495327) bm!405192))

(assert (= (or b!5495323 b!5495325) bm!405193))

(assert (= (or b!5495321 bm!405193) bm!405194))

(declare-fun m!6505614 () Bool)

(assert (=> bm!405192 m!6505614))

(declare-fun m!6505616 () Bool)

(assert (=> bm!405194 m!6505616))

(declare-fun m!6505618 () Bool)

(assert (=> b!5495328 m!6505618))

(assert (=> d!1742390 d!1742432))

(assert (=> d!1742390 d!1742378))

(assert (=> d!1742390 d!1742380))

(declare-fun d!1742434 () Bool)

(declare-fun nullableFct!1644 (Regex!15465) Bool)

(assert (=> d!1742434 (= (nullable!5507 (reg!15794 r!7292)) (nullableFct!1644 (reg!15794 r!7292)))))

(declare-fun bs!1267802 () Bool)

(assert (= bs!1267802 d!1742434))

(declare-fun m!6505620 () Bool)

(assert (=> bs!1267802 m!6505620))

(assert (=> b!5494697 d!1742434))

(declare-fun d!1742436 () Bool)

(assert (=> d!1742436 (= (isEmpty!34366 (exprs!5349 (h!69019 zl!343))) ((_ is Nil!62570) (exprs!5349 (h!69019 zl!343))))))

(assert (=> b!5494722 d!1742436))

(declare-fun d!1742438 () Bool)

(assert (=> d!1742438 (= (head!11767 s!2326) (h!69020 s!2326))))

(assert (=> b!5495036 d!1742438))

(declare-fun bs!1267803 () Bool)

(declare-fun d!1742440 () Bool)

(assert (= bs!1267803 (and d!1742440 d!1742348)))

(declare-fun lambda!294227 () Int)

(assert (=> bs!1267803 (= lambda!294227 lambda!294184)))

(declare-fun bs!1267804 () Bool)

(assert (= bs!1267804 (and d!1742440 d!1742420)))

(assert (=> bs!1267804 (= lambda!294227 lambda!294224)))

(declare-fun bs!1267805 () Bool)

(assert (= bs!1267805 (and d!1742440 d!1742340)))

(assert (=> bs!1267805 (= lambda!294227 lambda!294180)))

(declare-fun bs!1267806 () Bool)

(assert (= bs!1267806 (and d!1742440 d!1742378)))

(assert (=> bs!1267806 (= lambda!294227 lambda!294210)))

(declare-fun bs!1267807 () Bool)

(assert (= bs!1267807 (and d!1742440 d!1742346)))

(assert (=> bs!1267807 (= lambda!294227 lambda!294181)))

(declare-fun bs!1267808 () Bool)

(assert (= bs!1267808 (and d!1742440 d!1742380)))

(assert (=> bs!1267808 (= lambda!294227 lambda!294215)))

(declare-fun b!5495330 () Bool)

(declare-fun e!3399639 () Bool)

(declare-fun lt!2242766 () Regex!15465)

(assert (=> b!5495330 (= e!3399639 (isEmptyLang!1065 lt!2242766))))

(declare-fun b!5495331 () Bool)

(declare-fun e!3399637 () Bool)

(assert (=> b!5495331 (= e!3399637 e!3399639)))

(declare-fun c!959457 () Bool)

(assert (=> b!5495331 (= c!959457 (isEmpty!34366 (t!375925 (unfocusZipperList!893 zl!343))))))

(declare-fun b!5495332 () Bool)

(declare-fun e!3399640 () Bool)

(assert (=> b!5495332 (= e!3399640 (isUnion!495 lt!2242766))))

(declare-fun b!5495333 () Bool)

(declare-fun e!3399636 () Bool)

(assert (=> b!5495333 (= e!3399636 (isEmpty!34366 (t!375925 (t!375925 (unfocusZipperList!893 zl!343)))))))

(declare-fun b!5495334 () Bool)

(declare-fun e!3399638 () Regex!15465)

(assert (=> b!5495334 (= e!3399638 EmptyLang!15465)))

(declare-fun b!5495335 () Bool)

(assert (=> b!5495335 (= e!3399640 (= lt!2242766 (head!11765 (t!375925 (unfocusZipperList!893 zl!343)))))))

(declare-fun b!5495336 () Bool)

(declare-fun e!3399641 () Regex!15465)

(assert (=> b!5495336 (= e!3399641 (h!69018 (t!375925 (unfocusZipperList!893 zl!343))))))

(declare-fun b!5495338 () Bool)

(assert (=> b!5495338 (= e!3399641 e!3399638)))

(declare-fun c!959455 () Bool)

(assert (=> b!5495338 (= c!959455 ((_ is Cons!62570) (t!375925 (unfocusZipperList!893 zl!343))))))

(declare-fun b!5495339 () Bool)

(assert (=> b!5495339 (= e!3399639 e!3399640)))

(declare-fun c!959454 () Bool)

(assert (=> b!5495339 (= c!959454 (isEmpty!34366 (tail!10860 (t!375925 (unfocusZipperList!893 zl!343)))))))

(declare-fun b!5495337 () Bool)

(assert (=> b!5495337 (= e!3399638 (Union!15465 (h!69018 (t!375925 (unfocusZipperList!893 zl!343))) (generalisedUnion!1328 (t!375925 (t!375925 (unfocusZipperList!893 zl!343))))))))

(assert (=> d!1742440 e!3399637))

(declare-fun res!2343126 () Bool)

(assert (=> d!1742440 (=> (not res!2343126) (not e!3399637))))

(assert (=> d!1742440 (= res!2343126 (validRegex!7201 lt!2242766))))

(assert (=> d!1742440 (= lt!2242766 e!3399641)))

(declare-fun c!959456 () Bool)

(assert (=> d!1742440 (= c!959456 e!3399636)))

(declare-fun res!2343127 () Bool)

(assert (=> d!1742440 (=> (not res!2343127) (not e!3399636))))

(assert (=> d!1742440 (= res!2343127 ((_ is Cons!62570) (t!375925 (unfocusZipperList!893 zl!343))))))

(assert (=> d!1742440 (forall!14655 (t!375925 (unfocusZipperList!893 zl!343)) lambda!294227)))

(assert (=> d!1742440 (= (generalisedUnion!1328 (t!375925 (unfocusZipperList!893 zl!343))) lt!2242766)))

(assert (= (and d!1742440 res!2343127) b!5495333))

(assert (= (and d!1742440 c!959456) b!5495336))

(assert (= (and d!1742440 (not c!959456)) b!5495338))

(assert (= (and b!5495338 c!959455) b!5495337))

(assert (= (and b!5495338 (not c!959455)) b!5495334))

(assert (= (and d!1742440 res!2343126) b!5495331))

(assert (= (and b!5495331 c!959457) b!5495330))

(assert (= (and b!5495331 (not c!959457)) b!5495339))

(assert (= (and b!5495339 c!959454) b!5495335))

(assert (= (and b!5495339 (not c!959454)) b!5495332))

(declare-fun m!6505622 () Bool)

(assert (=> b!5495332 m!6505622))

(declare-fun m!6505624 () Bool)

(assert (=> b!5495333 m!6505624))

(declare-fun m!6505626 () Bool)

(assert (=> b!5495330 m!6505626))

(declare-fun m!6505628 () Bool)

(assert (=> b!5495335 m!6505628))

(assert (=> b!5495331 m!6505488))

(declare-fun m!6505630 () Bool)

(assert (=> b!5495337 m!6505630))

(declare-fun m!6505632 () Bool)

(assert (=> d!1742440 m!6505632))

(declare-fun m!6505634 () Bool)

(assert (=> d!1742440 m!6505634))

(declare-fun m!6505636 () Bool)

(assert (=> b!5495339 m!6505636))

(assert (=> b!5495339 m!6505636))

(declare-fun m!6505638 () Bool)

(assert (=> b!5495339 m!6505638))

(assert (=> b!5494994 d!1742440))

(declare-fun b!5495340 () Bool)

(declare-fun e!3399644 () Bool)

(assert (=> b!5495340 (= e!3399644 (nullable!5507 (derivativeStep!4346 r!7292 (head!11767 s!2326))))))

(declare-fun d!1742442 () Bool)

(declare-fun e!3399646 () Bool)

(assert (=> d!1742442 e!3399646))

(declare-fun c!959458 () Bool)

(assert (=> d!1742442 (= c!959458 ((_ is EmptyExpr!15465) (derivativeStep!4346 r!7292 (head!11767 s!2326))))))

(declare-fun lt!2242767 () Bool)

(assert (=> d!1742442 (= lt!2242767 e!3399644)))

(declare-fun c!959459 () Bool)

(assert (=> d!1742442 (= c!959459 (isEmpty!34367 (tail!10862 s!2326)))))

(assert (=> d!1742442 (validRegex!7201 (derivativeStep!4346 r!7292 (head!11767 s!2326)))))

(assert (=> d!1742442 (= (matchR!7650 (derivativeStep!4346 r!7292 (head!11767 s!2326)) (tail!10862 s!2326)) lt!2242767)))

(declare-fun b!5495341 () Bool)

(declare-fun res!2343131 () Bool)

(declare-fun e!3399643 () Bool)

(assert (=> b!5495341 (=> res!2343131 e!3399643)))

(declare-fun e!3399645 () Bool)

(assert (=> b!5495341 (= res!2343131 e!3399645)))

(declare-fun res!2343129 () Bool)

(assert (=> b!5495341 (=> (not res!2343129) (not e!3399645))))

(assert (=> b!5495341 (= res!2343129 lt!2242767)))

(declare-fun b!5495342 () Bool)

(declare-fun res!2343133 () Bool)

(assert (=> b!5495342 (=> res!2343133 e!3399643)))

(assert (=> b!5495342 (= res!2343133 (not ((_ is ElementMatch!15465) (derivativeStep!4346 r!7292 (head!11767 s!2326)))))))

(declare-fun e!3399647 () Bool)

(assert (=> b!5495342 (= e!3399647 e!3399643)))

(declare-fun b!5495343 () Bool)

(assert (=> b!5495343 (= e!3399645 (= (head!11767 (tail!10862 s!2326)) (c!959267 (derivativeStep!4346 r!7292 (head!11767 s!2326)))))))

(declare-fun b!5495344 () Bool)

(assert (=> b!5495344 (= e!3399647 (not lt!2242767))))

(declare-fun b!5495345 () Bool)

(assert (=> b!5495345 (= e!3399646 e!3399647)))

(declare-fun c!959460 () Bool)

(assert (=> b!5495345 (= c!959460 ((_ is EmptyLang!15465) (derivativeStep!4346 r!7292 (head!11767 s!2326))))))

(declare-fun b!5495346 () Bool)

(declare-fun e!3399642 () Bool)

(assert (=> b!5495346 (= e!3399643 e!3399642)))

(declare-fun res!2343135 () Bool)

(assert (=> b!5495346 (=> (not res!2343135) (not e!3399642))))

(assert (=> b!5495346 (= res!2343135 (not lt!2242767))))

(declare-fun b!5495347 () Bool)

(declare-fun e!3399648 () Bool)

(assert (=> b!5495347 (= e!3399648 (not (= (head!11767 (tail!10862 s!2326)) (c!959267 (derivativeStep!4346 r!7292 (head!11767 s!2326))))))))

(declare-fun b!5495348 () Bool)

(declare-fun res!2343130 () Bool)

(assert (=> b!5495348 (=> (not res!2343130) (not e!3399645))))

(declare-fun call!405200 () Bool)

(assert (=> b!5495348 (= res!2343130 (not call!405200))))

(declare-fun b!5495349 () Bool)

(declare-fun res!2343134 () Bool)

(assert (=> b!5495349 (=> res!2343134 e!3399648)))

(assert (=> b!5495349 (= res!2343134 (not (isEmpty!34367 (tail!10862 (tail!10862 s!2326)))))))

(declare-fun bm!405195 () Bool)

(assert (=> bm!405195 (= call!405200 (isEmpty!34367 (tail!10862 s!2326)))))

(declare-fun b!5495350 () Bool)

(assert (=> b!5495350 (= e!3399644 (matchR!7650 (derivativeStep!4346 (derivativeStep!4346 r!7292 (head!11767 s!2326)) (head!11767 (tail!10862 s!2326))) (tail!10862 (tail!10862 s!2326))))))

(declare-fun b!5495351 () Bool)

(assert (=> b!5495351 (= e!3399646 (= lt!2242767 call!405200))))

(declare-fun b!5495352 () Bool)

(declare-fun res!2343132 () Bool)

(assert (=> b!5495352 (=> (not res!2343132) (not e!3399645))))

(assert (=> b!5495352 (= res!2343132 (isEmpty!34367 (tail!10862 (tail!10862 s!2326))))))

(declare-fun b!5495353 () Bool)

(assert (=> b!5495353 (= e!3399642 e!3399648)))

(declare-fun res!2343128 () Bool)

(assert (=> b!5495353 (=> res!2343128 e!3399648)))

(assert (=> b!5495353 (= res!2343128 call!405200)))

(assert (= (and d!1742442 c!959459) b!5495340))

(assert (= (and d!1742442 (not c!959459)) b!5495350))

(assert (= (and d!1742442 c!959458) b!5495351))

(assert (= (and d!1742442 (not c!959458)) b!5495345))

(assert (= (and b!5495345 c!959460) b!5495344))

(assert (= (and b!5495345 (not c!959460)) b!5495342))

(assert (= (and b!5495342 (not res!2343133)) b!5495341))

(assert (= (and b!5495341 res!2343129) b!5495348))

(assert (= (and b!5495348 res!2343130) b!5495352))

(assert (= (and b!5495352 res!2343132) b!5495343))

(assert (= (and b!5495341 (not res!2343131)) b!5495346))

(assert (= (and b!5495346 res!2343135) b!5495353))

(assert (= (and b!5495353 (not res!2343128)) b!5495349))

(assert (= (and b!5495349 (not res!2343134)) b!5495347))

(assert (= (or b!5495351 b!5495348 b!5495353) bm!405195))

(assert (=> b!5495343 m!6505456))

(declare-fun m!6505640 () Bool)

(assert (=> b!5495343 m!6505640))

(assert (=> d!1742442 m!6505456))

(assert (=> d!1742442 m!6505458))

(assert (=> d!1742442 m!6505518))

(declare-fun m!6505642 () Bool)

(assert (=> d!1742442 m!6505642))

(assert (=> b!5495347 m!6505456))

(assert (=> b!5495347 m!6505640))

(assert (=> bm!405195 m!6505456))

(assert (=> bm!405195 m!6505458))

(assert (=> b!5495340 m!6505518))

(declare-fun m!6505644 () Bool)

(assert (=> b!5495340 m!6505644))

(assert (=> b!5495352 m!6505456))

(declare-fun m!6505646 () Bool)

(assert (=> b!5495352 m!6505646))

(assert (=> b!5495352 m!6505646))

(declare-fun m!6505648 () Bool)

(assert (=> b!5495352 m!6505648))

(assert (=> b!5495350 m!6505456))

(assert (=> b!5495350 m!6505640))

(assert (=> b!5495350 m!6505518))

(assert (=> b!5495350 m!6505640))

(declare-fun m!6505650 () Bool)

(assert (=> b!5495350 m!6505650))

(assert (=> b!5495350 m!6505456))

(assert (=> b!5495350 m!6505646))

(assert (=> b!5495350 m!6505650))

(assert (=> b!5495350 m!6505646))

(declare-fun m!6505652 () Bool)

(assert (=> b!5495350 m!6505652))

(assert (=> b!5495349 m!6505456))

(assert (=> b!5495349 m!6505646))

(assert (=> b!5495349 m!6505646))

(assert (=> b!5495349 m!6505648))

(assert (=> b!5495043 d!1742442))

(declare-fun call!405210 () Regex!15465)

(declare-fun call!405212 () Regex!15465)

(declare-fun e!3399662 () Regex!15465)

(declare-fun b!5495374 () Bool)

(assert (=> b!5495374 (= e!3399662 (Union!15465 (Concat!24310 call!405210 (regTwo!31442 r!7292)) call!405212))))

(declare-fun b!5495375 () Bool)

(declare-fun c!959473 () Bool)

(assert (=> b!5495375 (= c!959473 (nullable!5507 (regOne!31442 r!7292)))))

(declare-fun e!3399663 () Regex!15465)

(assert (=> b!5495375 (= e!3399663 e!3399662)))

(declare-fun call!405211 () Regex!15465)

(declare-fun bm!405204 () Bool)

(declare-fun c!959475 () Bool)

(assert (=> bm!405204 (= call!405211 (derivativeStep!4346 (ite c!959475 (regOne!31443 r!7292) (ite c!959473 (regTwo!31442 r!7292) (regOne!31442 r!7292))) (head!11767 s!2326)))))

(declare-fun b!5495376 () Bool)

(assert (=> b!5495376 (= c!959475 ((_ is Union!15465) r!7292))))

(declare-fun e!3399659 () Regex!15465)

(declare-fun e!3399660 () Regex!15465)

(assert (=> b!5495376 (= e!3399659 e!3399660)))

(declare-fun c!959472 () Bool)

(declare-fun call!405209 () Regex!15465)

(declare-fun bm!405205 () Bool)

(assert (=> bm!405205 (= call!405209 (derivativeStep!4346 (ite c!959475 (regTwo!31443 r!7292) (ite c!959472 (reg!15794 r!7292) (regOne!31442 r!7292))) (head!11767 s!2326)))))

(declare-fun b!5495377 () Bool)

(assert (=> b!5495377 (= e!3399662 (Union!15465 (Concat!24310 call!405212 (regTwo!31442 r!7292)) EmptyLang!15465))))

(declare-fun b!5495378 () Bool)

(declare-fun e!3399661 () Regex!15465)

(assert (=> b!5495378 (= e!3399661 EmptyLang!15465)))

(declare-fun d!1742444 () Bool)

(declare-fun lt!2242770 () Regex!15465)

(assert (=> d!1742444 (validRegex!7201 lt!2242770)))

(assert (=> d!1742444 (= lt!2242770 e!3399661)))

(declare-fun c!959471 () Bool)

(assert (=> d!1742444 (= c!959471 (or ((_ is EmptyExpr!15465) r!7292) ((_ is EmptyLang!15465) r!7292)))))

(assert (=> d!1742444 (validRegex!7201 r!7292)))

(assert (=> d!1742444 (= (derivativeStep!4346 r!7292 (head!11767 s!2326)) lt!2242770)))

(declare-fun b!5495379 () Bool)

(assert (=> b!5495379 (= e!3399659 (ite (= (head!11767 s!2326) (c!959267 r!7292)) EmptyExpr!15465 EmptyLang!15465))))

(declare-fun bm!405206 () Bool)

(assert (=> bm!405206 (= call!405212 call!405211)))

(declare-fun b!5495380 () Bool)

(assert (=> b!5495380 (= e!3399660 e!3399663)))

(assert (=> b!5495380 (= c!959472 ((_ is Star!15465) r!7292))))

(declare-fun b!5495381 () Bool)

(assert (=> b!5495381 (= e!3399660 (Union!15465 call!405211 call!405209))))

(declare-fun b!5495382 () Bool)

(assert (=> b!5495382 (= e!3399661 e!3399659)))

(declare-fun c!959474 () Bool)

(assert (=> b!5495382 (= c!959474 ((_ is ElementMatch!15465) r!7292))))

(declare-fun bm!405207 () Bool)

(assert (=> bm!405207 (= call!405210 call!405209)))

(declare-fun b!5495383 () Bool)

(assert (=> b!5495383 (= e!3399663 (Concat!24310 call!405210 r!7292))))

(assert (= (and d!1742444 c!959471) b!5495378))

(assert (= (and d!1742444 (not c!959471)) b!5495382))

(assert (= (and b!5495382 c!959474) b!5495379))

(assert (= (and b!5495382 (not c!959474)) b!5495376))

(assert (= (and b!5495376 c!959475) b!5495381))

(assert (= (and b!5495376 (not c!959475)) b!5495380))

(assert (= (and b!5495380 c!959472) b!5495383))

(assert (= (and b!5495380 (not c!959472)) b!5495375))

(assert (= (and b!5495375 c!959473) b!5495374))

(assert (= (and b!5495375 (not c!959473)) b!5495377))

(assert (= (or b!5495374 b!5495377) bm!405206))

(assert (= (or b!5495383 b!5495374) bm!405207))

(assert (= (or b!5495381 bm!405207) bm!405205))

(assert (= (or b!5495381 bm!405206) bm!405204))

(assert (=> b!5495375 m!6505338))

(assert (=> bm!405204 m!6505450))

(declare-fun m!6505654 () Bool)

(assert (=> bm!405204 m!6505654))

(assert (=> bm!405205 m!6505450))

(declare-fun m!6505656 () Bool)

(assert (=> bm!405205 m!6505656))

(declare-fun m!6505658 () Bool)

(assert (=> d!1742444 m!6505658))

(assert (=> d!1742444 m!6505308))

(assert (=> b!5495043 d!1742444))

(assert (=> b!5495043 d!1742438))

(assert (=> b!5495043 d!1742418))

(declare-fun c!959476 () Bool)

(declare-fun call!405216 () List!62694)

(declare-fun bm!405208 () Bool)

(declare-fun c!959479 () Bool)

(assert (=> bm!405208 (= call!405216 ($colon$colon!1561 (exprs!5349 (Context!9699 (t!375925 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570)))))) (ite (or c!959479 c!959476) (regTwo!31442 (h!69018 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570))))) (h!69018 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570)))))))))

(declare-fun bm!405209 () Bool)

(declare-fun call!405215 () (InoxSet Context!9698))

(declare-fun call!405218 () (InoxSet Context!9698))

(assert (=> bm!405209 (= call!405215 call!405218)))

(declare-fun b!5495384 () Bool)

(declare-fun e!3399664 () (InoxSet Context!9698))

(declare-fun e!3399669 () (InoxSet Context!9698))

(assert (=> b!5495384 (= e!3399664 e!3399669)))

(assert (=> b!5495384 (= c!959476 ((_ is Concat!24310) (h!69018 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570))))))))

(declare-fun call!405217 () (InoxSet Context!9698))

(declare-fun bm!405210 () Bool)

(declare-fun c!959477 () Bool)

(assert (=> bm!405210 (= call!405217 (derivationStepZipperDown!811 (ite c!959477 (regOne!31443 (h!69018 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570))))) (regOne!31442 (h!69018 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570)))))) (ite c!959477 (Context!9699 (t!375925 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570))))) (Context!9699 call!405216)) (h!69020 s!2326)))))

(declare-fun b!5495385 () Bool)

(declare-fun e!3399667 () (InoxSet Context!9698))

(declare-fun call!405213 () (InoxSet Context!9698))

(assert (=> b!5495385 (= e!3399667 ((_ map or) call!405217 call!405213))))

(declare-fun bm!405211 () Bool)

(declare-fun call!405214 () List!62694)

(assert (=> bm!405211 (= call!405213 (derivationStepZipperDown!811 (ite c!959477 (regTwo!31443 (h!69018 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570))))) (ite c!959479 (regTwo!31442 (h!69018 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570))))) (ite c!959476 (regOne!31442 (h!69018 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570))))) (reg!15794 (h!69018 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570)))))))) (ite (or c!959477 c!959479) (Context!9699 (t!375925 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570))))) (Context!9699 call!405214)) (h!69020 s!2326)))))

(declare-fun b!5495386 () Bool)

(declare-fun c!959478 () Bool)

(assert (=> b!5495386 (= c!959478 ((_ is Star!15465) (h!69018 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570))))))))

(declare-fun e!3399668 () (InoxSet Context!9698))

(assert (=> b!5495386 (= e!3399669 e!3399668)))

(declare-fun b!5495387 () Bool)

(declare-fun e!3399665 () (InoxSet Context!9698))

(assert (=> b!5495387 (= e!3399665 e!3399667)))

(assert (=> b!5495387 (= c!959477 ((_ is Union!15465) (h!69018 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570))))))))

(declare-fun bm!405212 () Bool)

(assert (=> bm!405212 (= call!405218 call!405213)))

(declare-fun b!5495389 () Bool)

(assert (=> b!5495389 (= e!3399669 call!405215)))

(declare-fun b!5495390 () Bool)

(assert (=> b!5495390 (= e!3399668 ((as const (Array Context!9698 Bool)) false))))

(declare-fun bm!405213 () Bool)

(assert (=> bm!405213 (= call!405214 call!405216)))

(declare-fun b!5495391 () Bool)

(assert (=> b!5495391 (= e!3399665 (store ((as const (Array Context!9698 Bool)) false) (Context!9699 (t!375925 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570))))) true))))

(declare-fun b!5495388 () Bool)

(declare-fun e!3399666 () Bool)

(assert (=> b!5495388 (= e!3399666 (nullable!5507 (regOne!31442 (h!69018 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570)))))))))

(declare-fun d!1742446 () Bool)

(declare-fun c!959480 () Bool)

(assert (=> d!1742446 (= c!959480 (and ((_ is ElementMatch!15465) (h!69018 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570))))) (= (c!959267 (h!69018 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570))))) (h!69020 s!2326))))))

(assert (=> d!1742446 (= (derivationStepZipperDown!811 (h!69018 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570)))) (Context!9699 (t!375925 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570))))) (h!69020 s!2326)) e!3399665)))

(declare-fun b!5495392 () Bool)

(assert (=> b!5495392 (= c!959479 e!3399666)))

(declare-fun res!2343136 () Bool)

(assert (=> b!5495392 (=> (not res!2343136) (not e!3399666))))

(assert (=> b!5495392 (= res!2343136 ((_ is Concat!24310) (h!69018 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570))))))))

(assert (=> b!5495392 (= e!3399667 e!3399664)))

(declare-fun b!5495393 () Bool)

(assert (=> b!5495393 (= e!3399668 call!405215)))

(declare-fun b!5495394 () Bool)

(assert (=> b!5495394 (= e!3399664 ((_ map or) call!405217 call!405218))))

(assert (= (and d!1742446 c!959480) b!5495391))

(assert (= (and d!1742446 (not c!959480)) b!5495387))

(assert (= (and b!5495387 c!959477) b!5495385))

(assert (= (and b!5495387 (not c!959477)) b!5495392))

(assert (= (and b!5495392 res!2343136) b!5495388))

(assert (= (and b!5495392 c!959479) b!5495394))

(assert (= (and b!5495392 (not c!959479)) b!5495384))

(assert (= (and b!5495384 c!959476) b!5495389))

(assert (= (and b!5495384 (not c!959476)) b!5495386))

(assert (= (and b!5495386 c!959478) b!5495393))

(assert (= (and b!5495386 (not c!959478)) b!5495390))

(assert (= (or b!5495389 b!5495393) bm!405213))

(assert (= (or b!5495389 b!5495393) bm!405209))

(assert (= (or b!5495394 bm!405213) bm!405208))

(assert (= (or b!5495394 bm!405209) bm!405212))

(assert (= (or b!5495385 bm!405212) bm!405211))

(assert (= (or b!5495385 b!5495394) bm!405210))

(declare-fun m!6505660 () Bool)

(assert (=> b!5495388 m!6505660))

(declare-fun m!6505662 () Bool)

(assert (=> b!5495391 m!6505662))

(declare-fun m!6505664 () Bool)

(assert (=> bm!405208 m!6505664))

(declare-fun m!6505666 () Bool)

(assert (=> bm!405210 m!6505666))

(declare-fun m!6505668 () Bool)

(assert (=> bm!405211 m!6505668))

(assert (=> bm!405099 d!1742446))

(declare-fun d!1742448 () Bool)

(assert (=> d!1742448 (= (nullable!5507 (regOne!31443 r!7292)) (nullableFct!1644 (regOne!31443 r!7292)))))

(declare-fun bs!1267809 () Bool)

(assert (= bs!1267809 d!1742448))

(declare-fun m!6505670 () Bool)

(assert (=> bs!1267809 m!6505670))

(assert (=> b!5494925 d!1742448))

(declare-fun d!1742450 () Bool)

(assert (=> d!1742450 (= (isEmpty!34367 s!2326) ((_ is Nil!62572) s!2326))))

(assert (=> d!1742372 d!1742450))

(declare-fun d!1742452 () Bool)

(declare-fun res!2343137 () Bool)

(declare-fun e!3399675 () Bool)

(assert (=> d!1742452 (=> res!2343137 e!3399675)))

(assert (=> d!1742452 (= res!2343137 ((_ is ElementMatch!15465) (regOne!31443 r!7292)))))

(assert (=> d!1742452 (= (validRegex!7201 (regOne!31443 r!7292)) e!3399675)))

(declare-fun b!5495395 () Bool)

(declare-fun e!3399673 () Bool)

(declare-fun call!405220 () Bool)

(assert (=> b!5495395 (= e!3399673 call!405220)))

(declare-fun b!5495396 () Bool)

(declare-fun res!2343140 () Bool)

(declare-fun e!3399674 () Bool)

(assert (=> b!5495396 (=> res!2343140 e!3399674)))

(assert (=> b!5495396 (= res!2343140 (not ((_ is Concat!24310) (regOne!31443 r!7292))))))

(declare-fun e!3399670 () Bool)

(assert (=> b!5495396 (= e!3399670 e!3399674)))

(declare-fun b!5495397 () Bool)

(declare-fun res!2343141 () Bool)

(declare-fun e!3399676 () Bool)

(assert (=> b!5495397 (=> (not res!2343141) (not e!3399676))))

(declare-fun call!405221 () Bool)

(assert (=> b!5495397 (= res!2343141 call!405221)))

(assert (=> b!5495397 (= e!3399670 e!3399676)))

(declare-fun b!5495398 () Bool)

(declare-fun e!3399672 () Bool)

(assert (=> b!5495398 (= e!3399675 e!3399672)))

(declare-fun c!959481 () Bool)

(assert (=> b!5495398 (= c!959481 ((_ is Star!15465) (regOne!31443 r!7292)))))

(declare-fun b!5495399 () Bool)

(declare-fun e!3399671 () Bool)

(assert (=> b!5495399 (= e!3399674 e!3399671)))

(declare-fun res!2343138 () Bool)

(assert (=> b!5495399 (=> (not res!2343138) (not e!3399671))))

(assert (=> b!5495399 (= res!2343138 call!405221)))

(declare-fun bm!405214 () Bool)

(declare-fun call!405219 () Bool)

(declare-fun c!959482 () Bool)

(assert (=> bm!405214 (= call!405219 (validRegex!7201 (ite c!959482 (regTwo!31443 (regOne!31443 r!7292)) (regTwo!31442 (regOne!31443 r!7292)))))))

(declare-fun bm!405215 () Bool)

(assert (=> bm!405215 (= call!405221 call!405220)))

(declare-fun b!5495400 () Bool)

(assert (=> b!5495400 (= e!3399672 e!3399670)))

(assert (=> b!5495400 (= c!959482 ((_ is Union!15465) (regOne!31443 r!7292)))))

(declare-fun bm!405216 () Bool)

(assert (=> bm!405216 (= call!405220 (validRegex!7201 (ite c!959481 (reg!15794 (regOne!31443 r!7292)) (ite c!959482 (regOne!31443 (regOne!31443 r!7292)) (regOne!31442 (regOne!31443 r!7292))))))))

(declare-fun b!5495401 () Bool)

(assert (=> b!5495401 (= e!3399671 call!405219)))

(declare-fun b!5495402 () Bool)

(assert (=> b!5495402 (= e!3399672 e!3399673)))

(declare-fun res!2343139 () Bool)

(assert (=> b!5495402 (= res!2343139 (not (nullable!5507 (reg!15794 (regOne!31443 r!7292)))))))

(assert (=> b!5495402 (=> (not res!2343139) (not e!3399673))))

(declare-fun b!5495403 () Bool)

(assert (=> b!5495403 (= e!3399676 call!405219)))

(assert (= (and d!1742452 (not res!2343137)) b!5495398))

(assert (= (and b!5495398 c!959481) b!5495402))

(assert (= (and b!5495398 (not c!959481)) b!5495400))

(assert (= (and b!5495402 res!2343139) b!5495395))

(assert (= (and b!5495400 c!959482) b!5495397))

(assert (= (and b!5495400 (not c!959482)) b!5495396))

(assert (= (and b!5495397 res!2343141) b!5495403))

(assert (= (and b!5495396 (not res!2343140)) b!5495399))

(assert (= (and b!5495399 res!2343138) b!5495401))

(assert (= (or b!5495403 b!5495401) bm!405214))

(assert (= (or b!5495397 b!5495399) bm!405215))

(assert (= (or b!5495395 bm!405215) bm!405216))

(declare-fun m!6505672 () Bool)

(assert (=> bm!405214 m!6505672))

(declare-fun m!6505674 () Bool)

(assert (=> bm!405216 m!6505674))

(declare-fun m!6505676 () Bool)

(assert (=> b!5495402 m!6505676))

(assert (=> d!1742372 d!1742452))

(declare-fun d!1742454 () Bool)

(assert (=> d!1742454 (= (isConcat!576 lt!2242721) ((_ is Concat!24310) lt!2242721))))

(assert (=> b!5494726 d!1742454))

(assert (=> b!5495040 d!1742438))

(assert (=> b!5495042 d!1742416))

(assert (=> b!5495042 d!1742418))

(declare-fun d!1742456 () Bool)

(assert (=> d!1742456 (= (nullable!5507 (h!69018 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570))))) (nullableFct!1644 (h!69018 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570))))))))

(declare-fun bs!1267810 () Bool)

(assert (= bs!1267810 d!1742456))

(declare-fun m!6505678 () Bool)

(assert (=> bs!1267810 m!6505678))

(assert (=> b!5494634 d!1742456))

(declare-fun bs!1267811 () Bool)

(declare-fun d!1742458 () Bool)

(assert (= bs!1267811 (and d!1742458 d!1742348)))

(declare-fun lambda!294228 () Int)

(assert (=> bs!1267811 (= lambda!294228 lambda!294184)))

(declare-fun bs!1267812 () Bool)

(assert (= bs!1267812 (and d!1742458 d!1742420)))

(assert (=> bs!1267812 (= lambda!294228 lambda!294224)))

(declare-fun bs!1267813 () Bool)

(assert (= bs!1267813 (and d!1742458 d!1742340)))

(assert (=> bs!1267813 (= lambda!294228 lambda!294180)))

(declare-fun bs!1267814 () Bool)

(assert (= bs!1267814 (and d!1742458 d!1742378)))

(assert (=> bs!1267814 (= lambda!294228 lambda!294210)))

(declare-fun bs!1267815 () Bool)

(assert (= bs!1267815 (and d!1742458 d!1742440)))

(assert (=> bs!1267815 (= lambda!294228 lambda!294227)))

(declare-fun bs!1267816 () Bool)

(assert (= bs!1267816 (and d!1742458 d!1742346)))

(assert (=> bs!1267816 (= lambda!294228 lambda!294181)))

(declare-fun bs!1267817 () Bool)

(assert (= bs!1267817 (and d!1742458 d!1742380)))

(assert (=> bs!1267817 (= lambda!294228 lambda!294215)))

(assert (=> d!1742458 (= (inv!81909 (h!69019 (t!375926 zl!343))) (forall!14655 (exprs!5349 (h!69019 (t!375926 zl!343))) lambda!294228))))

(declare-fun bs!1267818 () Bool)

(assert (= bs!1267818 d!1742458))

(declare-fun m!6505680 () Bool)

(assert (=> bs!1267818 m!6505680))

(assert (=> b!5495075 d!1742458))

(declare-fun d!1742460 () Bool)

(assert (=> d!1742460 (= (head!11765 (unfocusZipperList!893 zl!343)) (h!69018 (unfocusZipperList!893 zl!343)))))

(assert (=> b!5494992 d!1742460))

(assert (=> bm!405132 d!1742450))

(declare-fun d!1742462 () Bool)

(assert (=> d!1742462 (= ($colon$colon!1561 (exprs!5349 (Context!9699 Nil!62570)) (ite (or c!959287 c!959284) (regTwo!31442 r!7292) r!7292)) (Cons!62570 (ite (or c!959287 c!959284) (regTwo!31442 r!7292) r!7292) (exprs!5349 (Context!9699 Nil!62570))))))

(assert (=> bm!405112 d!1742462))

(assert (=> b!5494928 d!1742438))

(declare-fun bs!1267819 () Bool)

(declare-fun b!5495412 () Bool)

(assert (= bs!1267819 (and b!5495412 b!5494803)))

(declare-fun lambda!294229 () Int)

(assert (=> bs!1267819 (= (and (= (reg!15794 (regTwo!31443 (regTwo!31443 r!7292))) (reg!15794 (regTwo!31443 r!7292))) (= (regTwo!31443 (regTwo!31443 r!7292)) (regTwo!31443 r!7292))) (= lambda!294229 lambda!294197))))

(declare-fun bs!1267820 () Bool)

(assert (= bs!1267820 (and b!5495412 b!5495315)))

(assert (=> bs!1267820 (not (= lambda!294229 lambda!294226))))

(declare-fun bs!1267821 () Bool)

(assert (= bs!1267821 (and b!5495412 b!5495318)))

(assert (=> bs!1267821 (= (and (= (reg!15794 (regTwo!31443 (regTwo!31443 r!7292))) (reg!15794 (regOne!31443 (regOne!31443 r!7292)))) (= (regTwo!31443 (regTwo!31443 r!7292)) (regOne!31443 (regOne!31443 r!7292)))) (= lambda!294229 lambda!294225))))

(declare-fun bs!1267822 () Bool)

(assert (= bs!1267822 (and b!5495412 b!5495023)))

(assert (=> bs!1267822 (not (= lambda!294229 lambda!294219))))

(declare-fun bs!1267823 () Bool)

(assert (= bs!1267823 (and b!5495412 b!5495026)))

(assert (=> bs!1267823 (= (and (= (reg!15794 (regTwo!31443 (regTwo!31443 r!7292))) (reg!15794 r!7292)) (= (regTwo!31443 (regTwo!31443 r!7292)) r!7292)) (= lambda!294229 lambda!294217))))

(declare-fun bs!1267824 () Bool)

(assert (= bs!1267824 (and b!5495412 b!5494913)))

(assert (=> bs!1267824 (= (and (= (reg!15794 (regTwo!31443 (regTwo!31443 r!7292))) (reg!15794 (regOne!31443 r!7292))) (= (regTwo!31443 (regTwo!31443 r!7292)) (regOne!31443 r!7292))) (= lambda!294229 lambda!294203))))

(declare-fun bs!1267825 () Bool)

(assert (= bs!1267825 (and b!5495412 b!5494910)))

(assert (=> bs!1267825 (not (= lambda!294229 lambda!294204))))

(declare-fun bs!1267826 () Bool)

(assert (= bs!1267826 (and b!5495412 b!5494800)))

(assert (=> bs!1267826 (not (= lambda!294229 lambda!294199))))

(assert (=> b!5495412 true))

(assert (=> b!5495412 true))

(declare-fun bs!1267827 () Bool)

(declare-fun b!5495409 () Bool)

(assert (= bs!1267827 (and b!5495409 b!5494803)))

(declare-fun lambda!294230 () Int)

(assert (=> bs!1267827 (not (= lambda!294230 lambda!294197))))

(declare-fun bs!1267828 () Bool)

(assert (= bs!1267828 (and b!5495409 b!5495315)))

(assert (=> bs!1267828 (= (and (= (regOne!31442 (regTwo!31443 (regTwo!31443 r!7292))) (regOne!31442 (regOne!31443 (regOne!31443 r!7292)))) (= (regTwo!31442 (regTwo!31443 (regTwo!31443 r!7292))) (regTwo!31442 (regOne!31443 (regOne!31443 r!7292))))) (= lambda!294230 lambda!294226))))

(declare-fun bs!1267829 () Bool)

(assert (= bs!1267829 (and b!5495409 b!5495318)))

(assert (=> bs!1267829 (not (= lambda!294230 lambda!294225))))

(declare-fun bs!1267830 () Bool)

(assert (= bs!1267830 (and b!5495409 b!5495412)))

(assert (=> bs!1267830 (not (= lambda!294230 lambda!294229))))

(declare-fun bs!1267831 () Bool)

(assert (= bs!1267831 (and b!5495409 b!5495023)))

(assert (=> bs!1267831 (= (and (= (regOne!31442 (regTwo!31443 (regTwo!31443 r!7292))) (regOne!31442 r!7292)) (= (regTwo!31442 (regTwo!31443 (regTwo!31443 r!7292))) (regTwo!31442 r!7292))) (= lambda!294230 lambda!294219))))

(declare-fun bs!1267832 () Bool)

(assert (= bs!1267832 (and b!5495409 b!5495026)))

(assert (=> bs!1267832 (not (= lambda!294230 lambda!294217))))

(declare-fun bs!1267833 () Bool)

(assert (= bs!1267833 (and b!5495409 b!5494913)))

(assert (=> bs!1267833 (not (= lambda!294230 lambda!294203))))

(declare-fun bs!1267834 () Bool)

(assert (= bs!1267834 (and b!5495409 b!5494910)))

(assert (=> bs!1267834 (= (and (= (regOne!31442 (regTwo!31443 (regTwo!31443 r!7292))) (regOne!31442 (regOne!31443 r!7292))) (= (regTwo!31442 (regTwo!31443 (regTwo!31443 r!7292))) (regTwo!31442 (regOne!31443 r!7292)))) (= lambda!294230 lambda!294204))))

(declare-fun bs!1267835 () Bool)

(assert (= bs!1267835 (and b!5495409 b!5494800)))

(assert (=> bs!1267835 (= (and (= (regOne!31442 (regTwo!31443 (regTwo!31443 r!7292))) (regOne!31442 (regTwo!31443 r!7292))) (= (regTwo!31442 (regTwo!31443 (regTwo!31443 r!7292))) (regTwo!31442 (regTwo!31443 r!7292)))) (= lambda!294230 lambda!294199))))

(assert (=> b!5495409 true))

(assert (=> b!5495409 true))

(declare-fun b!5495404 () Bool)

(declare-fun e!3399683 () Bool)

(declare-fun call!405222 () Bool)

(assert (=> b!5495404 (= e!3399683 call!405222)))

(declare-fun b!5495405 () Bool)

(declare-fun c!959485 () Bool)

(assert (=> b!5495405 (= c!959485 ((_ is ElementMatch!15465) (regTwo!31443 (regTwo!31443 r!7292))))))

(declare-fun e!3399679 () Bool)

(declare-fun e!3399678 () Bool)

(assert (=> b!5495405 (= e!3399679 e!3399678)))

(declare-fun b!5495406 () Bool)

(declare-fun e!3399680 () Bool)

(declare-fun e!3399681 () Bool)

(assert (=> b!5495406 (= e!3399680 e!3399681)))

(declare-fun c!959486 () Bool)

(assert (=> b!5495406 (= c!959486 ((_ is Star!15465) (regTwo!31443 (regTwo!31443 r!7292))))))

(declare-fun b!5495407 () Bool)

(assert (=> b!5495407 (= e!3399683 e!3399679)))

(declare-fun res!2343142 () Bool)

(assert (=> b!5495407 (= res!2343142 (not ((_ is EmptyLang!15465) (regTwo!31443 (regTwo!31443 r!7292)))))))

(assert (=> b!5495407 (=> (not res!2343142) (not e!3399679))))

(declare-fun b!5495408 () Bool)

(declare-fun c!959484 () Bool)

(assert (=> b!5495408 (= c!959484 ((_ is Union!15465) (regTwo!31443 (regTwo!31443 r!7292))))))

(assert (=> b!5495408 (= e!3399678 e!3399680)))

(declare-fun call!405223 () Bool)

(assert (=> b!5495409 (= e!3399681 call!405223)))

(declare-fun d!1742464 () Bool)

(declare-fun c!959483 () Bool)

(assert (=> d!1742464 (= c!959483 ((_ is EmptyExpr!15465) (regTwo!31443 (regTwo!31443 r!7292))))))

(assert (=> d!1742464 (= (matchRSpec!2568 (regTwo!31443 (regTwo!31443 r!7292)) s!2326) e!3399683)))

(declare-fun bm!405217 () Bool)

(assert (=> bm!405217 (= call!405223 (Exists!2572 (ite c!959486 lambda!294229 lambda!294230)))))

(declare-fun b!5495410 () Bool)

(declare-fun e!3399677 () Bool)

(assert (=> b!5495410 (= e!3399677 (matchRSpec!2568 (regTwo!31443 (regTwo!31443 (regTwo!31443 r!7292))) s!2326))))

(declare-fun b!5495411 () Bool)

(assert (=> b!5495411 (= e!3399678 (= s!2326 (Cons!62572 (c!959267 (regTwo!31443 (regTwo!31443 r!7292))) Nil!62572)))))

(declare-fun bm!405218 () Bool)

(assert (=> bm!405218 (= call!405222 (isEmpty!34367 s!2326))))

(declare-fun e!3399682 () Bool)

(assert (=> b!5495412 (= e!3399682 call!405223)))

(declare-fun b!5495413 () Bool)

(declare-fun res!2343144 () Bool)

(assert (=> b!5495413 (=> res!2343144 e!3399682)))

(assert (=> b!5495413 (= res!2343144 call!405222)))

(assert (=> b!5495413 (= e!3399681 e!3399682)))

(declare-fun b!5495414 () Bool)

(assert (=> b!5495414 (= e!3399680 e!3399677)))

(declare-fun res!2343143 () Bool)

(assert (=> b!5495414 (= res!2343143 (matchRSpec!2568 (regOne!31443 (regTwo!31443 (regTwo!31443 r!7292))) s!2326))))

(assert (=> b!5495414 (=> res!2343143 e!3399677)))

(assert (= (and d!1742464 c!959483) b!5495404))

(assert (= (and d!1742464 (not c!959483)) b!5495407))

(assert (= (and b!5495407 res!2343142) b!5495405))

(assert (= (and b!5495405 c!959485) b!5495411))

(assert (= (and b!5495405 (not c!959485)) b!5495408))

(assert (= (and b!5495408 c!959484) b!5495414))

(assert (= (and b!5495408 (not c!959484)) b!5495406))

(assert (= (and b!5495414 (not res!2343143)) b!5495410))

(assert (= (and b!5495406 c!959486) b!5495413))

(assert (= (and b!5495406 (not c!959486)) b!5495409))

(assert (= (and b!5495413 (not res!2343144)) b!5495412))

(assert (= (or b!5495412 b!5495409) bm!405217))

(assert (= (or b!5495404 b!5495413) bm!405218))

(declare-fun m!6505682 () Bool)

(assert (=> bm!405217 m!6505682))

(declare-fun m!6505684 () Bool)

(assert (=> b!5495410 m!6505684))

(assert (=> bm!405218 m!6505414))

(declare-fun m!6505686 () Bool)

(assert (=> b!5495414 m!6505686))

(assert (=> b!5494801 d!1742464))

(assert (=> bm!405155 d!1742450))

(assert (=> b!5494934 d!1742416))

(assert (=> b!5494934 d!1742418))

(declare-fun d!1742466 () Bool)

(assert (=> d!1742466 (= (isEmpty!34366 (t!375925 (exprs!5349 (h!69019 zl!343)))) ((_ is Nil!62570) (t!375925 (exprs!5349 (h!69019 zl!343)))))))

(assert (=> b!5494720 d!1742466))

(declare-fun b!5495415 () Bool)

(declare-fun e!3399686 () Bool)

(assert (=> b!5495415 (= e!3399686 (nullable!5507 (derivativeStep!4346 (regOne!31443 r!7292) (head!11767 s!2326))))))

(declare-fun d!1742468 () Bool)

(declare-fun e!3399688 () Bool)

(assert (=> d!1742468 e!3399688))

(declare-fun c!959487 () Bool)

(assert (=> d!1742468 (= c!959487 ((_ is EmptyExpr!15465) (derivativeStep!4346 (regOne!31443 r!7292) (head!11767 s!2326))))))

(declare-fun lt!2242771 () Bool)

(assert (=> d!1742468 (= lt!2242771 e!3399686)))

(declare-fun c!959488 () Bool)

(assert (=> d!1742468 (= c!959488 (isEmpty!34367 (tail!10862 s!2326)))))

(assert (=> d!1742468 (validRegex!7201 (derivativeStep!4346 (regOne!31443 r!7292) (head!11767 s!2326)))))

(assert (=> d!1742468 (= (matchR!7650 (derivativeStep!4346 (regOne!31443 r!7292) (head!11767 s!2326)) (tail!10862 s!2326)) lt!2242771)))

(declare-fun b!5495416 () Bool)

(declare-fun res!2343148 () Bool)

(declare-fun e!3399685 () Bool)

(assert (=> b!5495416 (=> res!2343148 e!3399685)))

(declare-fun e!3399687 () Bool)

(assert (=> b!5495416 (= res!2343148 e!3399687)))

(declare-fun res!2343146 () Bool)

(assert (=> b!5495416 (=> (not res!2343146) (not e!3399687))))

(assert (=> b!5495416 (= res!2343146 lt!2242771)))

(declare-fun b!5495417 () Bool)

(declare-fun res!2343150 () Bool)

(assert (=> b!5495417 (=> res!2343150 e!3399685)))

(assert (=> b!5495417 (= res!2343150 (not ((_ is ElementMatch!15465) (derivativeStep!4346 (regOne!31443 r!7292) (head!11767 s!2326)))))))

(declare-fun e!3399689 () Bool)

(assert (=> b!5495417 (= e!3399689 e!3399685)))

(declare-fun b!5495418 () Bool)

(assert (=> b!5495418 (= e!3399687 (= (head!11767 (tail!10862 s!2326)) (c!959267 (derivativeStep!4346 (regOne!31443 r!7292) (head!11767 s!2326)))))))

(declare-fun b!5495419 () Bool)

(assert (=> b!5495419 (= e!3399689 (not lt!2242771))))

(declare-fun b!5495420 () Bool)

(assert (=> b!5495420 (= e!3399688 e!3399689)))

(declare-fun c!959489 () Bool)

(assert (=> b!5495420 (= c!959489 ((_ is EmptyLang!15465) (derivativeStep!4346 (regOne!31443 r!7292) (head!11767 s!2326))))))

(declare-fun b!5495421 () Bool)

(declare-fun e!3399684 () Bool)

(assert (=> b!5495421 (= e!3399685 e!3399684)))

(declare-fun res!2343152 () Bool)

(assert (=> b!5495421 (=> (not res!2343152) (not e!3399684))))

(assert (=> b!5495421 (= res!2343152 (not lt!2242771))))

(declare-fun b!5495422 () Bool)

(declare-fun e!3399690 () Bool)

(assert (=> b!5495422 (= e!3399690 (not (= (head!11767 (tail!10862 s!2326)) (c!959267 (derivativeStep!4346 (regOne!31443 r!7292) (head!11767 s!2326))))))))

(declare-fun b!5495423 () Bool)

(declare-fun res!2343147 () Bool)

(assert (=> b!5495423 (=> (not res!2343147) (not e!3399687))))

(declare-fun call!405224 () Bool)

(assert (=> b!5495423 (= res!2343147 (not call!405224))))

(declare-fun b!5495424 () Bool)

(declare-fun res!2343151 () Bool)

(assert (=> b!5495424 (=> res!2343151 e!3399690)))

(assert (=> b!5495424 (= res!2343151 (not (isEmpty!34367 (tail!10862 (tail!10862 s!2326)))))))

(declare-fun bm!405219 () Bool)

(assert (=> bm!405219 (= call!405224 (isEmpty!34367 (tail!10862 s!2326)))))

(declare-fun b!5495425 () Bool)

(assert (=> b!5495425 (= e!3399686 (matchR!7650 (derivativeStep!4346 (derivativeStep!4346 (regOne!31443 r!7292) (head!11767 s!2326)) (head!11767 (tail!10862 s!2326))) (tail!10862 (tail!10862 s!2326))))))

(declare-fun b!5495426 () Bool)

(assert (=> b!5495426 (= e!3399688 (= lt!2242771 call!405224))))

(declare-fun b!5495427 () Bool)

(declare-fun res!2343149 () Bool)

(assert (=> b!5495427 (=> (not res!2343149) (not e!3399687))))

(assert (=> b!5495427 (= res!2343149 (isEmpty!34367 (tail!10862 (tail!10862 s!2326))))))

(declare-fun b!5495428 () Bool)

(assert (=> b!5495428 (= e!3399684 e!3399690)))

(declare-fun res!2343145 () Bool)

(assert (=> b!5495428 (=> res!2343145 e!3399690)))

(assert (=> b!5495428 (= res!2343145 call!405224)))

(assert (= (and d!1742468 c!959488) b!5495415))

(assert (= (and d!1742468 (not c!959488)) b!5495425))

(assert (= (and d!1742468 c!959487) b!5495426))

(assert (= (and d!1742468 (not c!959487)) b!5495420))

(assert (= (and b!5495420 c!959489) b!5495419))

(assert (= (and b!5495420 (not c!959489)) b!5495417))

(assert (= (and b!5495417 (not res!2343150)) b!5495416))

(assert (= (and b!5495416 res!2343146) b!5495423))

(assert (= (and b!5495423 res!2343147) b!5495427))

(assert (= (and b!5495427 res!2343149) b!5495418))

(assert (= (and b!5495416 (not res!2343148)) b!5495421))

(assert (= (and b!5495421 res!2343152) b!5495428))

(assert (= (and b!5495428 (not res!2343145)) b!5495424))

(assert (= (and b!5495424 (not res!2343151)) b!5495422))

(assert (= (or b!5495426 b!5495423 b!5495428) bm!405219))

(assert (=> b!5495418 m!6505456))

(assert (=> b!5495418 m!6505640))

(assert (=> d!1742468 m!6505456))

(assert (=> d!1742468 m!6505458))

(assert (=> d!1742468 m!6505482))

(declare-fun m!6505688 () Bool)

(assert (=> d!1742468 m!6505688))

(assert (=> b!5495422 m!6505456))

(assert (=> b!5495422 m!6505640))

(assert (=> bm!405219 m!6505456))

(assert (=> bm!405219 m!6505458))

(assert (=> b!5495415 m!6505482))

(declare-fun m!6505690 () Bool)

(assert (=> b!5495415 m!6505690))

(assert (=> b!5495427 m!6505456))

(assert (=> b!5495427 m!6505646))

(assert (=> b!5495427 m!6505646))

(assert (=> b!5495427 m!6505648))

(assert (=> b!5495425 m!6505456))

(assert (=> b!5495425 m!6505640))

(assert (=> b!5495425 m!6505482))

(assert (=> b!5495425 m!6505640))

(declare-fun m!6505692 () Bool)

(assert (=> b!5495425 m!6505692))

(assert (=> b!5495425 m!6505456))

(assert (=> b!5495425 m!6505646))

(assert (=> b!5495425 m!6505692))

(assert (=> b!5495425 m!6505646))

(declare-fun m!6505694 () Bool)

(assert (=> b!5495425 m!6505694))

(assert (=> b!5495424 m!6505456))

(assert (=> b!5495424 m!6505646))

(assert (=> b!5495424 m!6505646))

(assert (=> b!5495424 m!6505648))

(assert (=> b!5494935 d!1742468))

(declare-fun b!5495429 () Bool)

(declare-fun call!405226 () Regex!15465)

(declare-fun call!405228 () Regex!15465)

(declare-fun e!3399694 () Regex!15465)

(assert (=> b!5495429 (= e!3399694 (Union!15465 (Concat!24310 call!405226 (regTwo!31442 (regOne!31443 r!7292))) call!405228))))

(declare-fun b!5495430 () Bool)

(declare-fun c!959492 () Bool)

(assert (=> b!5495430 (= c!959492 (nullable!5507 (regOne!31442 (regOne!31443 r!7292))))))

(declare-fun e!3399695 () Regex!15465)

(assert (=> b!5495430 (= e!3399695 e!3399694)))

(declare-fun call!405227 () Regex!15465)

(declare-fun bm!405220 () Bool)

(declare-fun c!959494 () Bool)

(assert (=> bm!405220 (= call!405227 (derivativeStep!4346 (ite c!959494 (regOne!31443 (regOne!31443 r!7292)) (ite c!959492 (regTwo!31442 (regOne!31443 r!7292)) (regOne!31442 (regOne!31443 r!7292)))) (head!11767 s!2326)))))

(declare-fun b!5495431 () Bool)

(assert (=> b!5495431 (= c!959494 ((_ is Union!15465) (regOne!31443 r!7292)))))

(declare-fun e!3399691 () Regex!15465)

(declare-fun e!3399692 () Regex!15465)

(assert (=> b!5495431 (= e!3399691 e!3399692)))

(declare-fun call!405225 () Regex!15465)

(declare-fun c!959491 () Bool)

(declare-fun bm!405221 () Bool)

(assert (=> bm!405221 (= call!405225 (derivativeStep!4346 (ite c!959494 (regTwo!31443 (regOne!31443 r!7292)) (ite c!959491 (reg!15794 (regOne!31443 r!7292)) (regOne!31442 (regOne!31443 r!7292)))) (head!11767 s!2326)))))

(declare-fun b!5495432 () Bool)

(assert (=> b!5495432 (= e!3399694 (Union!15465 (Concat!24310 call!405228 (regTwo!31442 (regOne!31443 r!7292))) EmptyLang!15465))))

(declare-fun b!5495433 () Bool)

(declare-fun e!3399693 () Regex!15465)

(assert (=> b!5495433 (= e!3399693 EmptyLang!15465)))

(declare-fun d!1742470 () Bool)

(declare-fun lt!2242772 () Regex!15465)

(assert (=> d!1742470 (validRegex!7201 lt!2242772)))

(assert (=> d!1742470 (= lt!2242772 e!3399693)))

(declare-fun c!959490 () Bool)

(assert (=> d!1742470 (= c!959490 (or ((_ is EmptyExpr!15465) (regOne!31443 r!7292)) ((_ is EmptyLang!15465) (regOne!31443 r!7292))))))

(assert (=> d!1742470 (validRegex!7201 (regOne!31443 r!7292))))

(assert (=> d!1742470 (= (derivativeStep!4346 (regOne!31443 r!7292) (head!11767 s!2326)) lt!2242772)))

(declare-fun b!5495434 () Bool)

(assert (=> b!5495434 (= e!3399691 (ite (= (head!11767 s!2326) (c!959267 (regOne!31443 r!7292))) EmptyExpr!15465 EmptyLang!15465))))

(declare-fun bm!405222 () Bool)

(assert (=> bm!405222 (= call!405228 call!405227)))

(declare-fun b!5495435 () Bool)

(assert (=> b!5495435 (= e!3399692 e!3399695)))

(assert (=> b!5495435 (= c!959491 ((_ is Star!15465) (regOne!31443 r!7292)))))

(declare-fun b!5495436 () Bool)

(assert (=> b!5495436 (= e!3399692 (Union!15465 call!405227 call!405225))))

(declare-fun b!5495437 () Bool)

(assert (=> b!5495437 (= e!3399693 e!3399691)))

(declare-fun c!959493 () Bool)

(assert (=> b!5495437 (= c!959493 ((_ is ElementMatch!15465) (regOne!31443 r!7292)))))

(declare-fun bm!405223 () Bool)

(assert (=> bm!405223 (= call!405226 call!405225)))

(declare-fun b!5495438 () Bool)

(assert (=> b!5495438 (= e!3399695 (Concat!24310 call!405226 (regOne!31443 r!7292)))))

(assert (= (and d!1742470 c!959490) b!5495433))

(assert (= (and d!1742470 (not c!959490)) b!5495437))

(assert (= (and b!5495437 c!959493) b!5495434))

(assert (= (and b!5495437 (not c!959493)) b!5495431))

(assert (= (and b!5495431 c!959494) b!5495436))

(assert (= (and b!5495431 (not c!959494)) b!5495435))

(assert (= (and b!5495435 c!959491) b!5495438))

(assert (= (and b!5495435 (not c!959491)) b!5495430))

(assert (= (and b!5495430 c!959492) b!5495429))

(assert (= (and b!5495430 (not c!959492)) b!5495432))

(assert (= (or b!5495429 b!5495432) bm!405222))

(assert (= (or b!5495438 b!5495429) bm!405223))

(assert (= (or b!5495436 bm!405223) bm!405221))

(assert (= (or b!5495436 bm!405222) bm!405220))

(declare-fun m!6505696 () Bool)

(assert (=> b!5495430 m!6505696))

(assert (=> bm!405220 m!6505450))

(declare-fun m!6505698 () Bool)

(assert (=> bm!405220 m!6505698))

(assert (=> bm!405221 m!6505450))

(declare-fun m!6505700 () Bool)

(assert (=> bm!405221 m!6505700))

(declare-fun m!6505702 () Bool)

(assert (=> d!1742470 m!6505702))

(assert (=> d!1742470 m!6505426))

(assert (=> b!5494935 d!1742470))

(assert (=> b!5494935 d!1742438))

(assert (=> b!5494935 d!1742418))

(declare-fun d!1742472 () Bool)

(declare-fun res!2343153 () Bool)

(declare-fun e!3399701 () Bool)

(assert (=> d!1742472 (=> res!2343153 e!3399701)))

(assert (=> d!1742472 (= res!2343153 ((_ is ElementMatch!15465) (ite c!959293 (reg!15794 r!7292) (ite c!959294 (regOne!31443 r!7292) (regOne!31442 r!7292)))))))

(assert (=> d!1742472 (= (validRegex!7201 (ite c!959293 (reg!15794 r!7292) (ite c!959294 (regOne!31443 r!7292) (regOne!31442 r!7292)))) e!3399701)))

(declare-fun b!5495439 () Bool)

(declare-fun e!3399699 () Bool)

(declare-fun call!405230 () Bool)

(assert (=> b!5495439 (= e!3399699 call!405230)))

(declare-fun b!5495440 () Bool)

(declare-fun res!2343156 () Bool)

(declare-fun e!3399700 () Bool)

(assert (=> b!5495440 (=> res!2343156 e!3399700)))

(assert (=> b!5495440 (= res!2343156 (not ((_ is Concat!24310) (ite c!959293 (reg!15794 r!7292) (ite c!959294 (regOne!31443 r!7292) (regOne!31442 r!7292))))))))

(declare-fun e!3399696 () Bool)

(assert (=> b!5495440 (= e!3399696 e!3399700)))

(declare-fun b!5495441 () Bool)

(declare-fun res!2343157 () Bool)

(declare-fun e!3399702 () Bool)

(assert (=> b!5495441 (=> (not res!2343157) (not e!3399702))))

(declare-fun call!405231 () Bool)

(assert (=> b!5495441 (= res!2343157 call!405231)))

(assert (=> b!5495441 (= e!3399696 e!3399702)))

(declare-fun b!5495442 () Bool)

(declare-fun e!3399698 () Bool)

(assert (=> b!5495442 (= e!3399701 e!3399698)))

(declare-fun c!959495 () Bool)

(assert (=> b!5495442 (= c!959495 ((_ is Star!15465) (ite c!959293 (reg!15794 r!7292) (ite c!959294 (regOne!31443 r!7292) (regOne!31442 r!7292)))))))

(declare-fun b!5495443 () Bool)

(declare-fun e!3399697 () Bool)

(assert (=> b!5495443 (= e!3399700 e!3399697)))

(declare-fun res!2343154 () Bool)

(assert (=> b!5495443 (=> (not res!2343154) (not e!3399697))))

(assert (=> b!5495443 (= res!2343154 call!405231)))

(declare-fun call!405229 () Bool)

(declare-fun c!959496 () Bool)

(declare-fun bm!405224 () Bool)

(assert (=> bm!405224 (= call!405229 (validRegex!7201 (ite c!959496 (regTwo!31443 (ite c!959293 (reg!15794 r!7292) (ite c!959294 (regOne!31443 r!7292) (regOne!31442 r!7292)))) (regTwo!31442 (ite c!959293 (reg!15794 r!7292) (ite c!959294 (regOne!31443 r!7292) (regOne!31442 r!7292)))))))))

(declare-fun bm!405225 () Bool)

(assert (=> bm!405225 (= call!405231 call!405230)))

(declare-fun b!5495444 () Bool)

(assert (=> b!5495444 (= e!3399698 e!3399696)))

(assert (=> b!5495444 (= c!959496 ((_ is Union!15465) (ite c!959293 (reg!15794 r!7292) (ite c!959294 (regOne!31443 r!7292) (regOne!31442 r!7292)))))))

(declare-fun bm!405226 () Bool)

(assert (=> bm!405226 (= call!405230 (validRegex!7201 (ite c!959495 (reg!15794 (ite c!959293 (reg!15794 r!7292) (ite c!959294 (regOne!31443 r!7292) (regOne!31442 r!7292)))) (ite c!959496 (regOne!31443 (ite c!959293 (reg!15794 r!7292) (ite c!959294 (regOne!31443 r!7292) (regOne!31442 r!7292)))) (regOne!31442 (ite c!959293 (reg!15794 r!7292) (ite c!959294 (regOne!31443 r!7292) (regOne!31442 r!7292))))))))))

(declare-fun b!5495445 () Bool)

(assert (=> b!5495445 (= e!3399697 call!405229)))

(declare-fun b!5495446 () Bool)

(assert (=> b!5495446 (= e!3399698 e!3399699)))

(declare-fun res!2343155 () Bool)

(assert (=> b!5495446 (= res!2343155 (not (nullable!5507 (reg!15794 (ite c!959293 (reg!15794 r!7292) (ite c!959294 (regOne!31443 r!7292) (regOne!31442 r!7292)))))))))

(assert (=> b!5495446 (=> (not res!2343155) (not e!3399699))))

(declare-fun b!5495447 () Bool)

(assert (=> b!5495447 (= e!3399702 call!405229)))

(assert (= (and d!1742472 (not res!2343153)) b!5495442))

(assert (= (and b!5495442 c!959495) b!5495446))

(assert (= (and b!5495442 (not c!959495)) b!5495444))

(assert (= (and b!5495446 res!2343155) b!5495439))

(assert (= (and b!5495444 c!959496) b!5495441))

(assert (= (and b!5495444 (not c!959496)) b!5495440))

(assert (= (and b!5495441 res!2343157) b!5495447))

(assert (= (and b!5495440 (not res!2343156)) b!5495443))

(assert (= (and b!5495443 res!2343154) b!5495445))

(assert (= (or b!5495447 b!5495445) bm!405224))

(assert (= (or b!5495441 b!5495443) bm!405225))

(assert (= (or b!5495439 bm!405225) bm!405226))

(declare-fun m!6505704 () Bool)

(assert (=> bm!405224 m!6505704))

(declare-fun m!6505706 () Bool)

(assert (=> bm!405226 m!6505706))

(declare-fun m!6505708 () Bool)

(assert (=> b!5495446 m!6505708))

(assert (=> bm!405126 d!1742472))

(declare-fun d!1742474 () Bool)

(declare-fun choose!41774 (Int) Bool)

(assert (=> d!1742474 (= (Exists!2572 (ite c!959362 lambda!294203 lambda!294204)) (choose!41774 (ite c!959362 lambda!294203 lambda!294204)))))

(declare-fun bs!1267836 () Bool)

(assert (= bs!1267836 d!1742474))

(declare-fun m!6505710 () Bool)

(assert (=> bs!1267836 m!6505710))

(assert (=> bm!405142 d!1742474))

(assert (=> d!1742388 d!1742386))

(assert (=> d!1742388 d!1742382))

(declare-fun d!1742476 () Bool)

(assert (=> d!1742476 (= (matchR!7650 r!7292 s!2326) (matchRSpec!2568 r!7292 s!2326))))

(assert (=> d!1742476 true))

(declare-fun _$88!3707 () Unit!155390)

(assert (=> d!1742476 (= (choose!41771 r!7292 s!2326) _$88!3707)))

(declare-fun bs!1267837 () Bool)

(assert (= bs!1267837 d!1742476))

(assert (=> bs!1267837 m!6505328))

(assert (=> bs!1267837 m!6505326))

(assert (=> d!1742388 d!1742476))

(assert (=> d!1742388 d!1742344))

(assert (=> b!5494932 d!1742438))

(assert (=> b!5495005 d!1742348))

(declare-fun bs!1267838 () Bool)

(declare-fun d!1742478 () Bool)

(assert (= bs!1267838 (and d!1742478 d!1742348)))

(declare-fun lambda!294231 () Int)

(assert (=> bs!1267838 (= lambda!294231 lambda!294184)))

(declare-fun bs!1267839 () Bool)

(assert (= bs!1267839 (and d!1742478 d!1742420)))

(assert (=> bs!1267839 (= lambda!294231 lambda!294224)))

(declare-fun bs!1267840 () Bool)

(assert (= bs!1267840 (and d!1742478 d!1742378)))

(assert (=> bs!1267840 (= lambda!294231 lambda!294210)))

(declare-fun bs!1267841 () Bool)

(assert (= bs!1267841 (and d!1742478 d!1742440)))

(assert (=> bs!1267841 (= lambda!294231 lambda!294227)))

(declare-fun bs!1267842 () Bool)

(assert (= bs!1267842 (and d!1742478 d!1742346)))

(assert (=> bs!1267842 (= lambda!294231 lambda!294181)))

(declare-fun bs!1267843 () Bool)

(assert (= bs!1267843 (and d!1742478 d!1742380)))

(assert (=> bs!1267843 (= lambda!294231 lambda!294215)))

(declare-fun bs!1267844 () Bool)

(assert (= bs!1267844 (and d!1742478 d!1742340)))

(assert (=> bs!1267844 (= lambda!294231 lambda!294180)))

(declare-fun bs!1267845 () Bool)

(assert (= bs!1267845 (and d!1742478 d!1742458)))

(assert (=> bs!1267845 (= lambda!294231 lambda!294228)))

(declare-fun lt!2242773 () List!62694)

(assert (=> d!1742478 (forall!14655 lt!2242773 lambda!294231)))

(declare-fun e!3399703 () List!62694)

(assert (=> d!1742478 (= lt!2242773 e!3399703)))

(declare-fun c!959497 () Bool)

(assert (=> d!1742478 (= c!959497 ((_ is Cons!62571) (t!375926 zl!343)))))

(assert (=> d!1742478 (= (unfocusZipperList!893 (t!375926 zl!343)) lt!2242773)))

(declare-fun b!5495448 () Bool)

(assert (=> b!5495448 (= e!3399703 (Cons!62570 (generalisedConcat!1080 (exprs!5349 (h!69019 (t!375926 zl!343)))) (unfocusZipperList!893 (t!375926 (t!375926 zl!343)))))))

(declare-fun b!5495449 () Bool)

(assert (=> b!5495449 (= e!3399703 Nil!62570)))

(assert (= (and d!1742478 c!959497) b!5495448))

(assert (= (and d!1742478 (not c!959497)) b!5495449))

(declare-fun m!6505712 () Bool)

(assert (=> d!1742478 m!6505712))

(declare-fun m!6505714 () Bool)

(assert (=> b!5495448 m!6505714))

(declare-fun m!6505716 () Bool)

(assert (=> b!5495448 m!6505716))

(assert (=> b!5495005 d!1742478))

(assert (=> b!5495024 d!1742350))

(declare-fun d!1742480 () Bool)

(assert (=> d!1742480 (= (isUnion!495 lt!2242747) ((_ is Union!15465) lt!2242747))))

(assert (=> b!5494989 d!1742480))

(declare-fun d!1742482 () Bool)

(assert (=> d!1742482 (= (isEmptyExpr!1053 lt!2242721) ((_ is EmptyExpr!15465) lt!2242721))))

(assert (=> b!5494725 d!1742482))

(declare-fun d!1742484 () Bool)

(declare-fun res!2343158 () Bool)

(declare-fun e!3399704 () Bool)

(assert (=> d!1742484 (=> res!2343158 e!3399704)))

(assert (=> d!1742484 (= res!2343158 ((_ is Nil!62570) (exprs!5349 (h!69019 zl!343))))))

(assert (=> d!1742484 (= (forall!14655 (exprs!5349 (h!69019 zl!343)) lambda!294180) e!3399704)))

(declare-fun b!5495450 () Bool)

(declare-fun e!3399705 () Bool)

(assert (=> b!5495450 (= e!3399704 e!3399705)))

(declare-fun res!2343159 () Bool)

(assert (=> b!5495450 (=> (not res!2343159) (not e!3399705))))

(assert (=> b!5495450 (= res!2343159 (dynLambda!24457 lambda!294180 (h!69018 (exprs!5349 (h!69019 zl!343)))))))

(declare-fun b!5495451 () Bool)

(assert (=> b!5495451 (= e!3399705 (forall!14655 (t!375925 (exprs!5349 (h!69019 zl!343))) lambda!294180))))

(assert (= (and d!1742484 (not res!2343158)) b!5495450))

(assert (= (and b!5495450 res!2343159) b!5495451))

(declare-fun b_lambda!208477 () Bool)

(assert (=> (not b_lambda!208477) (not b!5495450)))

(declare-fun m!6505718 () Bool)

(assert (=> b!5495450 m!6505718))

(declare-fun m!6505720 () Bool)

(assert (=> b!5495451 m!6505720))

(assert (=> d!1742340 d!1742484))

(declare-fun d!1742486 () Bool)

(assert (=> d!1742486 (= (nullable!5507 (regOne!31442 r!7292)) (nullableFct!1644 (regOne!31442 r!7292)))))

(declare-fun bs!1267846 () Bool)

(assert (= bs!1267846 d!1742486))

(declare-fun m!6505722 () Bool)

(assert (=> bs!1267846 m!6505722))

(assert (=> b!5494662 d!1742486))

(declare-fun b!5495452 () Bool)

(declare-fun e!3399708 () Bool)

(assert (=> b!5495452 (= e!3399708 (nullable!5507 (derivativeStep!4346 (regTwo!31443 r!7292) (head!11767 s!2326))))))

(declare-fun d!1742488 () Bool)

(declare-fun e!3399710 () Bool)

(assert (=> d!1742488 e!3399710))

(declare-fun c!959498 () Bool)

(assert (=> d!1742488 (= c!959498 ((_ is EmptyExpr!15465) (derivativeStep!4346 (regTwo!31443 r!7292) (head!11767 s!2326))))))

(declare-fun lt!2242774 () Bool)

(assert (=> d!1742488 (= lt!2242774 e!3399708)))

(declare-fun c!959499 () Bool)

(assert (=> d!1742488 (= c!959499 (isEmpty!34367 (tail!10862 s!2326)))))

(assert (=> d!1742488 (validRegex!7201 (derivativeStep!4346 (regTwo!31443 r!7292) (head!11767 s!2326)))))

(assert (=> d!1742488 (= (matchR!7650 (derivativeStep!4346 (regTwo!31443 r!7292) (head!11767 s!2326)) (tail!10862 s!2326)) lt!2242774)))

(declare-fun b!5495453 () Bool)

(declare-fun res!2343163 () Bool)

(declare-fun e!3399707 () Bool)

(assert (=> b!5495453 (=> res!2343163 e!3399707)))

(declare-fun e!3399709 () Bool)

(assert (=> b!5495453 (= res!2343163 e!3399709)))

(declare-fun res!2343161 () Bool)

(assert (=> b!5495453 (=> (not res!2343161) (not e!3399709))))

(assert (=> b!5495453 (= res!2343161 lt!2242774)))

(declare-fun b!5495454 () Bool)

(declare-fun res!2343165 () Bool)

(assert (=> b!5495454 (=> res!2343165 e!3399707)))

(assert (=> b!5495454 (= res!2343165 (not ((_ is ElementMatch!15465) (derivativeStep!4346 (regTwo!31443 r!7292) (head!11767 s!2326)))))))

(declare-fun e!3399711 () Bool)

(assert (=> b!5495454 (= e!3399711 e!3399707)))

(declare-fun b!5495455 () Bool)

(assert (=> b!5495455 (= e!3399709 (= (head!11767 (tail!10862 s!2326)) (c!959267 (derivativeStep!4346 (regTwo!31443 r!7292) (head!11767 s!2326)))))))

(declare-fun b!5495456 () Bool)

(assert (=> b!5495456 (= e!3399711 (not lt!2242774))))

(declare-fun b!5495457 () Bool)

(assert (=> b!5495457 (= e!3399710 e!3399711)))

(declare-fun c!959500 () Bool)

(assert (=> b!5495457 (= c!959500 ((_ is EmptyLang!15465) (derivativeStep!4346 (regTwo!31443 r!7292) (head!11767 s!2326))))))

(declare-fun b!5495458 () Bool)

(declare-fun e!3399706 () Bool)

(assert (=> b!5495458 (= e!3399707 e!3399706)))

(declare-fun res!2343167 () Bool)

(assert (=> b!5495458 (=> (not res!2343167) (not e!3399706))))

(assert (=> b!5495458 (= res!2343167 (not lt!2242774))))

(declare-fun b!5495459 () Bool)

(declare-fun e!3399712 () Bool)

(assert (=> b!5495459 (= e!3399712 (not (= (head!11767 (tail!10862 s!2326)) (c!959267 (derivativeStep!4346 (regTwo!31443 r!7292) (head!11767 s!2326))))))))

(declare-fun b!5495460 () Bool)

(declare-fun res!2343162 () Bool)

(assert (=> b!5495460 (=> (not res!2343162) (not e!3399709))))

(declare-fun call!405232 () Bool)

(assert (=> b!5495460 (= res!2343162 (not call!405232))))

(declare-fun b!5495461 () Bool)

(declare-fun res!2343166 () Bool)

(assert (=> b!5495461 (=> res!2343166 e!3399712)))

(assert (=> b!5495461 (= res!2343166 (not (isEmpty!34367 (tail!10862 (tail!10862 s!2326)))))))

(declare-fun bm!405227 () Bool)

(assert (=> bm!405227 (= call!405232 (isEmpty!34367 (tail!10862 s!2326)))))

(declare-fun b!5495462 () Bool)

(assert (=> b!5495462 (= e!3399708 (matchR!7650 (derivativeStep!4346 (derivativeStep!4346 (regTwo!31443 r!7292) (head!11767 s!2326)) (head!11767 (tail!10862 s!2326))) (tail!10862 (tail!10862 s!2326))))))

(declare-fun b!5495463 () Bool)

(assert (=> b!5495463 (= e!3399710 (= lt!2242774 call!405232))))

(declare-fun b!5495464 () Bool)

(declare-fun res!2343164 () Bool)

(assert (=> b!5495464 (=> (not res!2343164) (not e!3399709))))

(assert (=> b!5495464 (= res!2343164 (isEmpty!34367 (tail!10862 (tail!10862 s!2326))))))

(declare-fun b!5495465 () Bool)

(assert (=> b!5495465 (= e!3399706 e!3399712)))

(declare-fun res!2343160 () Bool)

(assert (=> b!5495465 (=> res!2343160 e!3399712)))

(assert (=> b!5495465 (= res!2343160 call!405232)))

(assert (= (and d!1742488 c!959499) b!5495452))

(assert (= (and d!1742488 (not c!959499)) b!5495462))

(assert (= (and d!1742488 c!959498) b!5495463))

(assert (= (and d!1742488 (not c!959498)) b!5495457))

(assert (= (and b!5495457 c!959500) b!5495456))

(assert (= (and b!5495457 (not c!959500)) b!5495454))

(assert (= (and b!5495454 (not res!2343165)) b!5495453))

(assert (= (and b!5495453 res!2343161) b!5495460))

(assert (= (and b!5495460 res!2343162) b!5495464))

(assert (= (and b!5495464 res!2343164) b!5495455))

(assert (= (and b!5495453 (not res!2343163)) b!5495458))

(assert (= (and b!5495458 res!2343167) b!5495465))

(assert (= (and b!5495465 (not res!2343160)) b!5495461))

(assert (= (and b!5495461 (not res!2343166)) b!5495459))

(assert (= (or b!5495463 b!5495460 b!5495465) bm!405227))

(assert (=> b!5495455 m!6505456))

(assert (=> b!5495455 m!6505640))

(assert (=> d!1742488 m!6505456))

(assert (=> d!1742488 m!6505458))

(assert (=> d!1742488 m!6505460))

(declare-fun m!6505724 () Bool)

(assert (=> d!1742488 m!6505724))

(assert (=> b!5495459 m!6505456))

(assert (=> b!5495459 m!6505640))

(assert (=> bm!405227 m!6505456))

(assert (=> bm!405227 m!6505458))

(assert (=> b!5495452 m!6505460))

(declare-fun m!6505726 () Bool)

(assert (=> b!5495452 m!6505726))

(assert (=> b!5495464 m!6505456))

(assert (=> b!5495464 m!6505646))

(assert (=> b!5495464 m!6505646))

(assert (=> b!5495464 m!6505648))

(assert (=> b!5495462 m!6505456))

(assert (=> b!5495462 m!6505640))

(assert (=> b!5495462 m!6505460))

(assert (=> b!5495462 m!6505640))

(declare-fun m!6505728 () Bool)

(assert (=> b!5495462 m!6505728))

(assert (=> b!5495462 m!6505456))

(assert (=> b!5495462 m!6505646))

(assert (=> b!5495462 m!6505728))

(assert (=> b!5495462 m!6505646))

(declare-fun m!6505730 () Bool)

(assert (=> b!5495462 m!6505730))

(assert (=> b!5495461 m!6505456))

(assert (=> b!5495461 m!6505646))

(assert (=> b!5495461 m!6505646))

(assert (=> b!5495461 m!6505648))

(assert (=> b!5494883 d!1742488))

(declare-fun call!405236 () Regex!15465)

(declare-fun call!405234 () Regex!15465)

(declare-fun e!3399716 () Regex!15465)

(declare-fun b!5495466 () Bool)

(assert (=> b!5495466 (= e!3399716 (Union!15465 (Concat!24310 call!405234 (regTwo!31442 (regTwo!31443 r!7292))) call!405236))))

(declare-fun b!5495467 () Bool)

(declare-fun c!959503 () Bool)

(assert (=> b!5495467 (= c!959503 (nullable!5507 (regOne!31442 (regTwo!31443 r!7292))))))

(declare-fun e!3399717 () Regex!15465)

(assert (=> b!5495467 (= e!3399717 e!3399716)))

(declare-fun bm!405228 () Bool)

(declare-fun c!959505 () Bool)

(declare-fun call!405235 () Regex!15465)

(assert (=> bm!405228 (= call!405235 (derivativeStep!4346 (ite c!959505 (regOne!31443 (regTwo!31443 r!7292)) (ite c!959503 (regTwo!31442 (regTwo!31443 r!7292)) (regOne!31442 (regTwo!31443 r!7292)))) (head!11767 s!2326)))))

(declare-fun b!5495468 () Bool)

(assert (=> b!5495468 (= c!959505 ((_ is Union!15465) (regTwo!31443 r!7292)))))

(declare-fun e!3399713 () Regex!15465)

(declare-fun e!3399714 () Regex!15465)

(assert (=> b!5495468 (= e!3399713 e!3399714)))

(declare-fun c!959502 () Bool)

(declare-fun bm!405229 () Bool)

(declare-fun call!405233 () Regex!15465)

(assert (=> bm!405229 (= call!405233 (derivativeStep!4346 (ite c!959505 (regTwo!31443 (regTwo!31443 r!7292)) (ite c!959502 (reg!15794 (regTwo!31443 r!7292)) (regOne!31442 (regTwo!31443 r!7292)))) (head!11767 s!2326)))))

(declare-fun b!5495469 () Bool)

(assert (=> b!5495469 (= e!3399716 (Union!15465 (Concat!24310 call!405236 (regTwo!31442 (regTwo!31443 r!7292))) EmptyLang!15465))))

(declare-fun b!5495470 () Bool)

(declare-fun e!3399715 () Regex!15465)

(assert (=> b!5495470 (= e!3399715 EmptyLang!15465)))

(declare-fun d!1742490 () Bool)

(declare-fun lt!2242775 () Regex!15465)

(assert (=> d!1742490 (validRegex!7201 lt!2242775)))

(assert (=> d!1742490 (= lt!2242775 e!3399715)))

(declare-fun c!959501 () Bool)

(assert (=> d!1742490 (= c!959501 (or ((_ is EmptyExpr!15465) (regTwo!31443 r!7292)) ((_ is EmptyLang!15465) (regTwo!31443 r!7292))))))

(assert (=> d!1742490 (validRegex!7201 (regTwo!31443 r!7292))))

(assert (=> d!1742490 (= (derivativeStep!4346 (regTwo!31443 r!7292) (head!11767 s!2326)) lt!2242775)))

(declare-fun b!5495471 () Bool)

(assert (=> b!5495471 (= e!3399713 (ite (= (head!11767 s!2326) (c!959267 (regTwo!31443 r!7292))) EmptyExpr!15465 EmptyLang!15465))))

(declare-fun bm!405230 () Bool)

(assert (=> bm!405230 (= call!405236 call!405235)))

(declare-fun b!5495472 () Bool)

(assert (=> b!5495472 (= e!3399714 e!3399717)))

(assert (=> b!5495472 (= c!959502 ((_ is Star!15465) (regTwo!31443 r!7292)))))

(declare-fun b!5495473 () Bool)

(assert (=> b!5495473 (= e!3399714 (Union!15465 call!405235 call!405233))))

(declare-fun b!5495474 () Bool)

(assert (=> b!5495474 (= e!3399715 e!3399713)))

(declare-fun c!959504 () Bool)

(assert (=> b!5495474 (= c!959504 ((_ is ElementMatch!15465) (regTwo!31443 r!7292)))))

(declare-fun bm!405231 () Bool)

(assert (=> bm!405231 (= call!405234 call!405233)))

(declare-fun b!5495475 () Bool)

(assert (=> b!5495475 (= e!3399717 (Concat!24310 call!405234 (regTwo!31443 r!7292)))))

(assert (= (and d!1742490 c!959501) b!5495470))

(assert (= (and d!1742490 (not c!959501)) b!5495474))

(assert (= (and b!5495474 c!959504) b!5495471))

(assert (= (and b!5495474 (not c!959504)) b!5495468))

(assert (= (and b!5495468 c!959505) b!5495473))

(assert (= (and b!5495468 (not c!959505)) b!5495472))

(assert (= (and b!5495472 c!959502) b!5495475))

(assert (= (and b!5495472 (not c!959502)) b!5495467))

(assert (= (and b!5495467 c!959503) b!5495466))

(assert (= (and b!5495467 (not c!959503)) b!5495469))

(assert (= (or b!5495466 b!5495469) bm!405230))

(assert (= (or b!5495475 b!5495466) bm!405231))

(assert (= (or b!5495473 bm!405231) bm!405229))

(assert (= (or b!5495473 bm!405230) bm!405228))

(declare-fun m!6505732 () Bool)

(assert (=> b!5495467 m!6505732))

(assert (=> bm!405228 m!6505450))

(declare-fun m!6505734 () Bool)

(assert (=> bm!405228 m!6505734))

(assert (=> bm!405229 m!6505450))

(declare-fun m!6505736 () Bool)

(assert (=> bm!405229 m!6505736))

(declare-fun m!6505738 () Bool)

(assert (=> d!1742490 m!6505738))

(assert (=> d!1742490 m!6505452))

(assert (=> b!5494883 d!1742490))

(assert (=> b!5494883 d!1742438))

(assert (=> b!5494883 d!1742418))

(assert (=> b!5495028 d!1742370))

(declare-fun d!1742492 () Bool)

(assert (=> d!1742492 (= (isEmptyLang!1065 lt!2242747) ((_ is EmptyLang!15465) lt!2242747))))

(assert (=> b!5494987 d!1742492))

(assert (=> bm!405143 d!1742450))

(declare-fun d!1742494 () Bool)

(declare-fun res!2343168 () Bool)

(declare-fun e!3399718 () Bool)

(assert (=> d!1742494 (=> res!2343168 e!3399718)))

(assert (=> d!1742494 (= res!2343168 ((_ is Nil!62570) lt!2242750))))

(assert (=> d!1742494 (= (forall!14655 lt!2242750 lambda!294215) e!3399718)))

(declare-fun b!5495476 () Bool)

(declare-fun e!3399719 () Bool)

(assert (=> b!5495476 (= e!3399718 e!3399719)))

(declare-fun res!2343169 () Bool)

(assert (=> b!5495476 (=> (not res!2343169) (not e!3399719))))

(assert (=> b!5495476 (= res!2343169 (dynLambda!24457 lambda!294215 (h!69018 lt!2242750)))))

(declare-fun b!5495477 () Bool)

(assert (=> b!5495477 (= e!3399719 (forall!14655 (t!375925 lt!2242750) lambda!294215))))

(assert (= (and d!1742494 (not res!2343168)) b!5495476))

(assert (= (and b!5495476 res!2343169) b!5495477))

(declare-fun b_lambda!208479 () Bool)

(assert (=> (not b_lambda!208479) (not b!5495476)))

(declare-fun m!6505740 () Bool)

(assert (=> b!5495476 m!6505740))

(declare-fun m!6505742 () Bool)

(assert (=> b!5495477 m!6505742))

(assert (=> d!1742380 d!1742494))

(assert (=> d!1742368 d!1742362))

(assert (=> d!1742368 d!1742350))

(declare-fun d!1742496 () Bool)

(assert (=> d!1742496 (= (matchR!7650 (regTwo!31443 r!7292) s!2326) (matchRSpec!2568 (regTwo!31443 r!7292) s!2326))))

(assert (=> d!1742496 true))

(declare-fun _$88!3708 () Unit!155390)

(assert (=> d!1742496 (= (choose!41771 (regTwo!31443 r!7292) s!2326) _$88!3708)))

(declare-fun bs!1267847 () Bool)

(assert (= bs!1267847 d!1742496))

(assert (=> bs!1267847 m!6505316))

(assert (=> bs!1267847 m!6505312))

(assert (=> d!1742368 d!1742496))

(declare-fun d!1742498 () Bool)

(declare-fun res!2343170 () Bool)

(declare-fun e!3399725 () Bool)

(assert (=> d!1742498 (=> res!2343170 e!3399725)))

(assert (=> d!1742498 (= res!2343170 ((_ is ElementMatch!15465) (regTwo!31443 r!7292)))))

(assert (=> d!1742498 (= (validRegex!7201 (regTwo!31443 r!7292)) e!3399725)))

(declare-fun b!5495478 () Bool)

(declare-fun e!3399723 () Bool)

(declare-fun call!405238 () Bool)

(assert (=> b!5495478 (= e!3399723 call!405238)))

(declare-fun b!5495479 () Bool)

(declare-fun res!2343173 () Bool)

(declare-fun e!3399724 () Bool)

(assert (=> b!5495479 (=> res!2343173 e!3399724)))

(assert (=> b!5495479 (= res!2343173 (not ((_ is Concat!24310) (regTwo!31443 r!7292))))))

(declare-fun e!3399720 () Bool)

(assert (=> b!5495479 (= e!3399720 e!3399724)))

(declare-fun b!5495480 () Bool)

(declare-fun res!2343174 () Bool)

(declare-fun e!3399726 () Bool)

(assert (=> b!5495480 (=> (not res!2343174) (not e!3399726))))

(declare-fun call!405239 () Bool)

(assert (=> b!5495480 (= res!2343174 call!405239)))

(assert (=> b!5495480 (= e!3399720 e!3399726)))

(declare-fun b!5495481 () Bool)

(declare-fun e!3399722 () Bool)

(assert (=> b!5495481 (= e!3399725 e!3399722)))

(declare-fun c!959506 () Bool)

(assert (=> b!5495481 (= c!959506 ((_ is Star!15465) (regTwo!31443 r!7292)))))

(declare-fun b!5495482 () Bool)

(declare-fun e!3399721 () Bool)

(assert (=> b!5495482 (= e!3399724 e!3399721)))

(declare-fun res!2343171 () Bool)

(assert (=> b!5495482 (=> (not res!2343171) (not e!3399721))))

(assert (=> b!5495482 (= res!2343171 call!405239)))

(declare-fun bm!405232 () Bool)

(declare-fun call!405237 () Bool)

(declare-fun c!959507 () Bool)

(assert (=> bm!405232 (= call!405237 (validRegex!7201 (ite c!959507 (regTwo!31443 (regTwo!31443 r!7292)) (regTwo!31442 (regTwo!31443 r!7292)))))))

(declare-fun bm!405233 () Bool)

(assert (=> bm!405233 (= call!405239 call!405238)))

(declare-fun b!5495483 () Bool)

(assert (=> b!5495483 (= e!3399722 e!3399720)))

(assert (=> b!5495483 (= c!959507 ((_ is Union!15465) (regTwo!31443 r!7292)))))

(declare-fun bm!405234 () Bool)

(assert (=> bm!405234 (= call!405238 (validRegex!7201 (ite c!959506 (reg!15794 (regTwo!31443 r!7292)) (ite c!959507 (regOne!31443 (regTwo!31443 r!7292)) (regOne!31442 (regTwo!31443 r!7292))))))))

(declare-fun b!5495484 () Bool)

(assert (=> b!5495484 (= e!3399721 call!405237)))

(declare-fun b!5495485 () Bool)

(assert (=> b!5495485 (= e!3399722 e!3399723)))

(declare-fun res!2343172 () Bool)

(assert (=> b!5495485 (= res!2343172 (not (nullable!5507 (reg!15794 (regTwo!31443 r!7292)))))))

(assert (=> b!5495485 (=> (not res!2343172) (not e!3399723))))

(declare-fun b!5495486 () Bool)

(assert (=> b!5495486 (= e!3399726 call!405237)))

(assert (= (and d!1742498 (not res!2343170)) b!5495481))

(assert (= (and b!5495481 c!959506) b!5495485))

(assert (= (and b!5495481 (not c!959506)) b!5495483))

(assert (= (and b!5495485 res!2343172) b!5495478))

(assert (= (and b!5495483 c!959507) b!5495480))

(assert (= (and b!5495483 (not c!959507)) b!5495479))

(assert (= (and b!5495480 res!2343174) b!5495486))

(assert (= (and b!5495479 (not res!2343173)) b!5495482))

(assert (= (and b!5495482 res!2343171) b!5495484))

(assert (= (or b!5495486 b!5495484) bm!405232))

(assert (= (or b!5495480 b!5495482) bm!405233))

(assert (= (or b!5495478 bm!405233) bm!405234))

(declare-fun m!6505744 () Bool)

(assert (=> bm!405232 m!6505744))

(declare-fun m!6505746 () Bool)

(assert (=> bm!405234 m!6505746))

(declare-fun m!6505748 () Bool)

(assert (=> b!5495485 m!6505748))

(assert (=> d!1742368 d!1742498))

(assert (=> bm!405156 d!1742450))

(declare-fun d!1742500 () Bool)

(declare-fun res!2343175 () Bool)

(declare-fun e!3399727 () Bool)

(assert (=> d!1742500 (=> res!2343175 e!3399727)))

(assert (=> d!1742500 (= res!2343175 ((_ is Nil!62570) (exprs!5349 setElem!36385)))))

(assert (=> d!1742500 (= (forall!14655 (exprs!5349 setElem!36385) lambda!294181) e!3399727)))

(declare-fun b!5495487 () Bool)

(declare-fun e!3399728 () Bool)

(assert (=> b!5495487 (= e!3399727 e!3399728)))

(declare-fun res!2343176 () Bool)

(assert (=> b!5495487 (=> (not res!2343176) (not e!3399728))))

(assert (=> b!5495487 (= res!2343176 (dynLambda!24457 lambda!294181 (h!69018 (exprs!5349 setElem!36385))))))

(declare-fun b!5495488 () Bool)

(assert (=> b!5495488 (= e!3399728 (forall!14655 (t!375925 (exprs!5349 setElem!36385)) lambda!294181))))

(assert (= (and d!1742500 (not res!2343175)) b!5495487))

(assert (= (and b!5495487 res!2343176) b!5495488))

(declare-fun b_lambda!208481 () Bool)

(assert (=> (not b_lambda!208481) (not b!5495487)))

(declare-fun m!6505750 () Bool)

(assert (=> b!5495487 m!6505750))

(declare-fun m!6505752 () Bool)

(assert (=> b!5495488 m!6505752))

(assert (=> d!1742346 d!1742500))

(declare-fun d!1742502 () Bool)

(assert (=> d!1742502 (= (nullable!5507 (regTwo!31443 r!7292)) (nullableFct!1644 (regTwo!31443 r!7292)))))

(declare-fun bs!1267848 () Bool)

(assert (= bs!1267848 d!1742502))

(declare-fun m!6505754 () Bool)

(assert (=> bs!1267848 m!6505754))

(assert (=> b!5494873 d!1742502))

(declare-fun b!5495489 () Bool)

(declare-fun e!3399731 () (InoxSet Context!9698))

(assert (=> b!5495489 (= e!3399731 ((as const (Array Context!9698 Bool)) false))))

(declare-fun b!5495490 () Bool)

(declare-fun e!3399729 () (InoxSet Context!9698))

(assert (=> b!5495490 (= e!3399729 e!3399731)))

(declare-fun c!959509 () Bool)

(assert (=> b!5495490 (= c!959509 ((_ is Cons!62570) (exprs!5349 (Context!9699 (t!375925 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570))))))))))

(declare-fun b!5495491 () Bool)

(declare-fun call!405240 () (InoxSet Context!9698))

(assert (=> b!5495491 (= e!3399729 ((_ map or) call!405240 (derivationStepZipperUp!737 (Context!9699 (t!375925 (exprs!5349 (Context!9699 (t!375925 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570)))))))) (h!69020 s!2326))))))

(declare-fun d!1742504 () Bool)

(declare-fun c!959508 () Bool)

(declare-fun e!3399730 () Bool)

(assert (=> d!1742504 (= c!959508 e!3399730)))

(declare-fun res!2343177 () Bool)

(assert (=> d!1742504 (=> (not res!2343177) (not e!3399730))))

(assert (=> d!1742504 (= res!2343177 ((_ is Cons!62570) (exprs!5349 (Context!9699 (t!375925 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570))))))))))

(assert (=> d!1742504 (= (derivationStepZipperUp!737 (Context!9699 (t!375925 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570))))) (h!69020 s!2326)) e!3399729)))

(declare-fun b!5495492 () Bool)

(assert (=> b!5495492 (= e!3399730 (nullable!5507 (h!69018 (exprs!5349 (Context!9699 (t!375925 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570)))))))))))

(declare-fun b!5495493 () Bool)

(assert (=> b!5495493 (= e!3399731 call!405240)))

(declare-fun bm!405235 () Bool)

(assert (=> bm!405235 (= call!405240 (derivationStepZipperDown!811 (h!69018 (exprs!5349 (Context!9699 (t!375925 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570))))))) (Context!9699 (t!375925 (exprs!5349 (Context!9699 (t!375925 (exprs!5349 (Context!9699 (Cons!62570 r!7292 Nil!62570)))))))) (h!69020 s!2326)))))

(assert (= (and d!1742504 res!2343177) b!5495492))

(assert (= (and d!1742504 c!959508) b!5495491))

(assert (= (and d!1742504 (not c!959508)) b!5495490))

(assert (= (and b!5495490 c!959509) b!5495493))

(assert (= (and b!5495490 (not c!959509)) b!5495489))

(assert (= (or b!5495491 b!5495493) bm!405235))

(declare-fun m!6505756 () Bool)

(assert (=> b!5495491 m!6505756))

(declare-fun m!6505758 () Bool)

(assert (=> b!5495492 m!6505758))

(declare-fun m!6505760 () Bool)

(assert (=> bm!405235 m!6505760))

(assert (=> b!5494633 d!1742504))

(assert (=> b!5494885 d!1742416))

(assert (=> b!5494885 d!1742418))

(assert (=> d!1742358 d!1742372))

(assert (=> d!1742358 d!1742370))

(declare-fun d!1742506 () Bool)

(assert (=> d!1742506 (= (matchR!7650 (regOne!31443 r!7292) s!2326) (matchRSpec!2568 (regOne!31443 r!7292) s!2326))))

(assert (=> d!1742506 true))

(declare-fun _$88!3709 () Unit!155390)

(assert (=> d!1742506 (= (choose!41771 (regOne!31443 r!7292) s!2326) _$88!3709)))

(declare-fun bs!1267849 () Bool)

(assert (= bs!1267849 d!1742506))

(assert (=> bs!1267849 m!6505322))

(assert (=> bs!1267849 m!6505318))

(assert (=> d!1742358 d!1742506))

(assert (=> d!1742358 d!1742452))

(declare-fun d!1742508 () Bool)

(assert (=> d!1742508 (= (head!11765 (exprs!5349 (h!69019 zl!343))) (h!69018 (exprs!5349 (h!69019 zl!343))))))

(assert (=> b!5494727 d!1742508))

(assert (=> b!5495045 d!1742416))

(assert (=> b!5495045 d!1742418))

(declare-fun d!1742510 () Bool)

(assert (=> d!1742510 (= (Exists!2572 (ite c!959332 lambda!294197 lambda!294199)) (choose!41774 (ite c!959332 lambda!294197 lambda!294199)))))

(declare-fun bs!1267850 () Bool)

(assert (= bs!1267850 d!1742510))

(declare-fun m!6505762 () Bool)

(assert (=> bs!1267850 m!6505762))

(assert (=> bm!405131 d!1742510))

(declare-fun d!1742512 () Bool)

(assert (=> d!1742512 (= (isEmpty!34366 (tail!10860 (unfocusZipperList!893 zl!343))) ((_ is Nil!62570) (tail!10860 (unfocusZipperList!893 zl!343))))))

(assert (=> b!5494996 d!1742512))

(declare-fun d!1742514 () Bool)

(assert (=> d!1742514 (= (tail!10860 (unfocusZipperList!893 zl!343)) (t!375925 (unfocusZipperList!893 zl!343)))))

(assert (=> b!5494996 d!1742514))

(declare-fun d!1742516 () Bool)

(declare-fun c!959512 () Bool)

(assert (=> d!1742516 (= c!959512 ((_ is Nil!62571) lt!2242718))))

(declare-fun e!3399734 () (InoxSet Context!9698))

(assert (=> d!1742516 (= (content!11234 lt!2242718) e!3399734)))

(declare-fun b!5495498 () Bool)

(assert (=> b!5495498 (= e!3399734 ((as const (Array Context!9698 Bool)) false))))

(declare-fun b!5495499 () Bool)

(assert (=> b!5495499 (= e!3399734 ((_ map or) (store ((as const (Array Context!9698 Bool)) false) (h!69019 lt!2242718) true) (content!11234 (t!375926 lt!2242718))))))

(assert (= (and d!1742516 c!959512) b!5495498))

(assert (= (and d!1742516 (not c!959512)) b!5495499))

(declare-fun m!6505764 () Bool)

(assert (=> b!5495499 m!6505764))

(declare-fun m!6505766 () Bool)

(assert (=> b!5495499 m!6505766))

(assert (=> b!5494671 d!1742516))

(assert (=> b!5494876 d!1742438))

(assert (=> d!1742362 d!1742450))

(assert (=> d!1742362 d!1742498))

(declare-fun c!959513 () Bool)

(declare-fun call!405244 () List!62694)

(declare-fun c!959516 () Bool)

(declare-fun bm!405236 () Bool)

(assert (=> bm!405236 (= call!405244 ($colon$colon!1561 (exprs!5349 (ite (or c!959285 c!959287) (Context!9699 Nil!62570) (Context!9699 call!405118))) (ite (or c!959516 c!959513) (regTwo!31442 (ite c!959285 (regTwo!31443 r!7292) (ite c!959287 (regTwo!31442 r!7292) (ite c!959284 (regOne!31442 r!7292) (reg!15794 r!7292))))) (ite c!959285 (regTwo!31443 r!7292) (ite c!959287 (regTwo!31442 r!7292) (ite c!959284 (regOne!31442 r!7292) (reg!15794 r!7292)))))))))

(declare-fun bm!405237 () Bool)

(declare-fun call!405243 () (InoxSet Context!9698))

(declare-fun call!405246 () (InoxSet Context!9698))

(assert (=> bm!405237 (= call!405243 call!405246)))

(declare-fun b!5495500 () Bool)

(declare-fun e!3399735 () (InoxSet Context!9698))

(declare-fun e!3399740 () (InoxSet Context!9698))

(assert (=> b!5495500 (= e!3399735 e!3399740)))

(assert (=> b!5495500 (= c!959513 ((_ is Concat!24310) (ite c!959285 (regTwo!31443 r!7292) (ite c!959287 (regTwo!31442 r!7292) (ite c!959284 (regOne!31442 r!7292) (reg!15794 r!7292))))))))

(declare-fun c!959514 () Bool)

(declare-fun call!405245 () (InoxSet Context!9698))

(declare-fun bm!405238 () Bool)

(assert (=> bm!405238 (= call!405245 (derivationStepZipperDown!811 (ite c!959514 (regOne!31443 (ite c!959285 (regTwo!31443 r!7292) (ite c!959287 (regTwo!31442 r!7292) (ite c!959284 (regOne!31442 r!7292) (reg!15794 r!7292))))) (regOne!31442 (ite c!959285 (regTwo!31443 r!7292) (ite c!959287 (regTwo!31442 r!7292) (ite c!959284 (regOne!31442 r!7292) (reg!15794 r!7292)))))) (ite c!959514 (ite (or c!959285 c!959287) (Context!9699 Nil!62570) (Context!9699 call!405118)) (Context!9699 call!405244)) (h!69020 s!2326)))))

(declare-fun b!5495501 () Bool)

(declare-fun e!3399738 () (InoxSet Context!9698))

(declare-fun call!405241 () (InoxSet Context!9698))

(assert (=> b!5495501 (= e!3399738 ((_ map or) call!405245 call!405241))))

(declare-fun bm!405239 () Bool)

(declare-fun call!405242 () List!62694)

(assert (=> bm!405239 (= call!405241 (derivationStepZipperDown!811 (ite c!959514 (regTwo!31443 (ite c!959285 (regTwo!31443 r!7292) (ite c!959287 (regTwo!31442 r!7292) (ite c!959284 (regOne!31442 r!7292) (reg!15794 r!7292))))) (ite c!959516 (regTwo!31442 (ite c!959285 (regTwo!31443 r!7292) (ite c!959287 (regTwo!31442 r!7292) (ite c!959284 (regOne!31442 r!7292) (reg!15794 r!7292))))) (ite c!959513 (regOne!31442 (ite c!959285 (regTwo!31443 r!7292) (ite c!959287 (regTwo!31442 r!7292) (ite c!959284 (regOne!31442 r!7292) (reg!15794 r!7292))))) (reg!15794 (ite c!959285 (regTwo!31443 r!7292) (ite c!959287 (regTwo!31442 r!7292) (ite c!959284 (regOne!31442 r!7292) (reg!15794 r!7292)))))))) (ite (or c!959514 c!959516) (ite (or c!959285 c!959287) (Context!9699 Nil!62570) (Context!9699 call!405118)) (Context!9699 call!405242)) (h!69020 s!2326)))))

(declare-fun b!5495502 () Bool)

(declare-fun c!959515 () Bool)

(assert (=> b!5495502 (= c!959515 ((_ is Star!15465) (ite c!959285 (regTwo!31443 r!7292) (ite c!959287 (regTwo!31442 r!7292) (ite c!959284 (regOne!31442 r!7292) (reg!15794 r!7292))))))))

(declare-fun e!3399739 () (InoxSet Context!9698))

(assert (=> b!5495502 (= e!3399740 e!3399739)))

(declare-fun b!5495503 () Bool)

(declare-fun e!3399736 () (InoxSet Context!9698))

(assert (=> b!5495503 (= e!3399736 e!3399738)))

(assert (=> b!5495503 (= c!959514 ((_ is Union!15465) (ite c!959285 (regTwo!31443 r!7292) (ite c!959287 (regTwo!31442 r!7292) (ite c!959284 (regOne!31442 r!7292) (reg!15794 r!7292))))))))

(declare-fun bm!405240 () Bool)

(assert (=> bm!405240 (= call!405246 call!405241)))

(declare-fun b!5495505 () Bool)

(assert (=> b!5495505 (= e!3399740 call!405243)))

(declare-fun b!5495506 () Bool)

(assert (=> b!5495506 (= e!3399739 ((as const (Array Context!9698 Bool)) false))))

(declare-fun bm!405241 () Bool)

(assert (=> bm!405241 (= call!405242 call!405244)))

(declare-fun b!5495507 () Bool)

(assert (=> b!5495507 (= e!3399736 (store ((as const (Array Context!9698 Bool)) false) (ite (or c!959285 c!959287) (Context!9699 Nil!62570) (Context!9699 call!405118)) true))))

(declare-fun b!5495504 () Bool)

(declare-fun e!3399737 () Bool)

(assert (=> b!5495504 (= e!3399737 (nullable!5507 (regOne!31442 (ite c!959285 (regTwo!31443 r!7292) (ite c!959287 (regTwo!31442 r!7292) (ite c!959284 (regOne!31442 r!7292) (reg!15794 r!7292)))))))))

(declare-fun d!1742518 () Bool)

(declare-fun c!959517 () Bool)

(assert (=> d!1742518 (= c!959517 (and ((_ is ElementMatch!15465) (ite c!959285 (regTwo!31443 r!7292) (ite c!959287 (regTwo!31442 r!7292) (ite c!959284 (regOne!31442 r!7292) (reg!15794 r!7292))))) (= (c!959267 (ite c!959285 (regTwo!31443 r!7292) (ite c!959287 (regTwo!31442 r!7292) (ite c!959284 (regOne!31442 r!7292) (reg!15794 r!7292))))) (h!69020 s!2326))))))

(assert (=> d!1742518 (= (derivationStepZipperDown!811 (ite c!959285 (regTwo!31443 r!7292) (ite c!959287 (regTwo!31442 r!7292) (ite c!959284 (regOne!31442 r!7292) (reg!15794 r!7292)))) (ite (or c!959285 c!959287) (Context!9699 Nil!62570) (Context!9699 call!405118)) (h!69020 s!2326)) e!3399736)))

(declare-fun b!5495508 () Bool)

(assert (=> b!5495508 (= c!959516 e!3399737)))

(declare-fun res!2343178 () Bool)

(assert (=> b!5495508 (=> (not res!2343178) (not e!3399737))))

(assert (=> b!5495508 (= res!2343178 ((_ is Concat!24310) (ite c!959285 (regTwo!31443 r!7292) (ite c!959287 (regTwo!31442 r!7292) (ite c!959284 (regOne!31442 r!7292) (reg!15794 r!7292))))))))

(assert (=> b!5495508 (= e!3399738 e!3399735)))

(declare-fun b!5495509 () Bool)

(assert (=> b!5495509 (= e!3399739 call!405243)))

(declare-fun b!5495510 () Bool)

(assert (=> b!5495510 (= e!3399735 ((_ map or) call!405245 call!405246))))

(assert (= (and d!1742518 c!959517) b!5495507))

(assert (= (and d!1742518 (not c!959517)) b!5495503))

(assert (= (and b!5495503 c!959514) b!5495501))

(assert (= (and b!5495503 (not c!959514)) b!5495508))

(assert (= (and b!5495508 res!2343178) b!5495504))

(assert (= (and b!5495508 c!959516) b!5495510))

(assert (= (and b!5495508 (not c!959516)) b!5495500))

(assert (= (and b!5495500 c!959513) b!5495505))

(assert (= (and b!5495500 (not c!959513)) b!5495502))

(assert (= (and b!5495502 c!959515) b!5495509))

(assert (= (and b!5495502 (not c!959515)) b!5495506))

(assert (= (or b!5495505 b!5495509) bm!405241))

(assert (= (or b!5495505 b!5495509) bm!405237))

(assert (= (or b!5495510 bm!405241) bm!405236))

(assert (= (or b!5495510 bm!405237) bm!405240))

(assert (= (or b!5495501 bm!405240) bm!405239))

(assert (= (or b!5495501 b!5495510) bm!405238))

(declare-fun m!6505768 () Bool)

(assert (=> b!5495504 m!6505768))

(declare-fun m!6505770 () Bool)

(assert (=> b!5495507 m!6505770))

(declare-fun m!6505772 () Bool)

(assert (=> bm!405236 m!6505772))

(declare-fun m!6505774 () Bool)

(assert (=> bm!405238 m!6505774))

(declare-fun m!6505776 () Bool)

(assert (=> bm!405239 m!6505776))

(assert (=> bm!405115 d!1742518))

(assert (=> bm!405147 d!1742450))

(declare-fun d!1742520 () Bool)

(assert (=> d!1742520 (= (nullable!5507 r!7292) (nullableFct!1644 r!7292))))

(declare-fun bs!1267851 () Bool)

(assert (= bs!1267851 d!1742520))

(declare-fun m!6505778 () Bool)

(assert (=> bs!1267851 m!6505778))

(assert (=> b!5495033 d!1742520))

(assert (=> b!5494882 d!1742416))

(assert (=> b!5494882 d!1742418))

(assert (=> bm!405135 d!1742450))

(declare-fun bs!1267852 () Bool)

(declare-fun b!5495519 () Bool)

(assert (= bs!1267852 (and b!5495519 b!5494803)))

(declare-fun lambda!294232 () Int)

(assert (=> bs!1267852 (= (and (= (reg!15794 (regTwo!31443 (regOne!31443 r!7292))) (reg!15794 (regTwo!31443 r!7292))) (= (regTwo!31443 (regOne!31443 r!7292)) (regTwo!31443 r!7292))) (= lambda!294232 lambda!294197))))

(declare-fun bs!1267853 () Bool)

(assert (= bs!1267853 (and b!5495519 b!5495315)))

(assert (=> bs!1267853 (not (= lambda!294232 lambda!294226))))

(declare-fun bs!1267854 () Bool)

(assert (= bs!1267854 (and b!5495519 b!5495318)))

(assert (=> bs!1267854 (= (and (= (reg!15794 (regTwo!31443 (regOne!31443 r!7292))) (reg!15794 (regOne!31443 (regOne!31443 r!7292)))) (= (regTwo!31443 (regOne!31443 r!7292)) (regOne!31443 (regOne!31443 r!7292)))) (= lambda!294232 lambda!294225))))

(declare-fun bs!1267855 () Bool)

(assert (= bs!1267855 (and b!5495519 b!5495412)))

(assert (=> bs!1267855 (= (and (= (reg!15794 (regTwo!31443 (regOne!31443 r!7292))) (reg!15794 (regTwo!31443 (regTwo!31443 r!7292)))) (= (regTwo!31443 (regOne!31443 r!7292)) (regTwo!31443 (regTwo!31443 r!7292)))) (= lambda!294232 lambda!294229))))

(declare-fun bs!1267856 () Bool)

(assert (= bs!1267856 (and b!5495519 b!5495409)))

(assert (=> bs!1267856 (not (= lambda!294232 lambda!294230))))

(declare-fun bs!1267857 () Bool)

(assert (= bs!1267857 (and b!5495519 b!5495023)))

(assert (=> bs!1267857 (not (= lambda!294232 lambda!294219))))

(declare-fun bs!1267858 () Bool)

(assert (= bs!1267858 (and b!5495519 b!5495026)))

(assert (=> bs!1267858 (= (and (= (reg!15794 (regTwo!31443 (regOne!31443 r!7292))) (reg!15794 r!7292)) (= (regTwo!31443 (regOne!31443 r!7292)) r!7292)) (= lambda!294232 lambda!294217))))

(declare-fun bs!1267859 () Bool)

(assert (= bs!1267859 (and b!5495519 b!5494913)))

(assert (=> bs!1267859 (= (and (= (reg!15794 (regTwo!31443 (regOne!31443 r!7292))) (reg!15794 (regOne!31443 r!7292))) (= (regTwo!31443 (regOne!31443 r!7292)) (regOne!31443 r!7292))) (= lambda!294232 lambda!294203))))

(declare-fun bs!1267860 () Bool)

(assert (= bs!1267860 (and b!5495519 b!5494910)))

(assert (=> bs!1267860 (not (= lambda!294232 lambda!294204))))

(declare-fun bs!1267861 () Bool)

(assert (= bs!1267861 (and b!5495519 b!5494800)))

(assert (=> bs!1267861 (not (= lambda!294232 lambda!294199))))

(assert (=> b!5495519 true))

(assert (=> b!5495519 true))

(declare-fun bs!1267862 () Bool)

(declare-fun b!5495516 () Bool)

(assert (= bs!1267862 (and b!5495516 b!5494803)))

(declare-fun lambda!294233 () Int)

(assert (=> bs!1267862 (not (= lambda!294233 lambda!294197))))

(declare-fun bs!1267863 () Bool)

(assert (= bs!1267863 (and b!5495516 b!5495519)))

(assert (=> bs!1267863 (not (= lambda!294233 lambda!294232))))

(declare-fun bs!1267864 () Bool)

(assert (= bs!1267864 (and b!5495516 b!5495315)))

(assert (=> bs!1267864 (= (and (= (regOne!31442 (regTwo!31443 (regOne!31443 r!7292))) (regOne!31442 (regOne!31443 (regOne!31443 r!7292)))) (= (regTwo!31442 (regTwo!31443 (regOne!31443 r!7292))) (regTwo!31442 (regOne!31443 (regOne!31443 r!7292))))) (= lambda!294233 lambda!294226))))

(declare-fun bs!1267865 () Bool)

(assert (= bs!1267865 (and b!5495516 b!5495318)))

(assert (=> bs!1267865 (not (= lambda!294233 lambda!294225))))

(declare-fun bs!1267866 () Bool)

(assert (= bs!1267866 (and b!5495516 b!5495412)))

(assert (=> bs!1267866 (not (= lambda!294233 lambda!294229))))

(declare-fun bs!1267867 () Bool)

(assert (= bs!1267867 (and b!5495516 b!5495409)))

(assert (=> bs!1267867 (= (and (= (regOne!31442 (regTwo!31443 (regOne!31443 r!7292))) (regOne!31442 (regTwo!31443 (regTwo!31443 r!7292)))) (= (regTwo!31442 (regTwo!31443 (regOne!31443 r!7292))) (regTwo!31442 (regTwo!31443 (regTwo!31443 r!7292))))) (= lambda!294233 lambda!294230))))

(declare-fun bs!1267868 () Bool)

(assert (= bs!1267868 (and b!5495516 b!5495023)))

(assert (=> bs!1267868 (= (and (= (regOne!31442 (regTwo!31443 (regOne!31443 r!7292))) (regOne!31442 r!7292)) (= (regTwo!31442 (regTwo!31443 (regOne!31443 r!7292))) (regTwo!31442 r!7292))) (= lambda!294233 lambda!294219))))

(declare-fun bs!1267869 () Bool)

(assert (= bs!1267869 (and b!5495516 b!5495026)))

(assert (=> bs!1267869 (not (= lambda!294233 lambda!294217))))

(declare-fun bs!1267870 () Bool)

(assert (= bs!1267870 (and b!5495516 b!5494913)))

(assert (=> bs!1267870 (not (= lambda!294233 lambda!294203))))

(declare-fun bs!1267871 () Bool)

(assert (= bs!1267871 (and b!5495516 b!5494910)))

(assert (=> bs!1267871 (= (and (= (regOne!31442 (regTwo!31443 (regOne!31443 r!7292))) (regOne!31442 (regOne!31443 r!7292))) (= (regTwo!31442 (regTwo!31443 (regOne!31443 r!7292))) (regTwo!31442 (regOne!31443 r!7292)))) (= lambda!294233 lambda!294204))))

(declare-fun bs!1267872 () Bool)

(assert (= bs!1267872 (and b!5495516 b!5494800)))

(assert (=> bs!1267872 (= (and (= (regOne!31442 (regTwo!31443 (regOne!31443 r!7292))) (regOne!31442 (regTwo!31443 r!7292))) (= (regTwo!31442 (regTwo!31443 (regOne!31443 r!7292))) (regTwo!31442 (regTwo!31443 r!7292)))) (= lambda!294233 lambda!294199))))

(assert (=> b!5495516 true))

(assert (=> b!5495516 true))

(declare-fun b!5495511 () Bool)

(declare-fun e!3399747 () Bool)

(declare-fun call!405247 () Bool)

(assert (=> b!5495511 (= e!3399747 call!405247)))

(declare-fun b!5495512 () Bool)

(declare-fun c!959520 () Bool)

(assert (=> b!5495512 (= c!959520 ((_ is ElementMatch!15465) (regTwo!31443 (regOne!31443 r!7292))))))

(declare-fun e!3399743 () Bool)

(declare-fun e!3399742 () Bool)

(assert (=> b!5495512 (= e!3399743 e!3399742)))

(declare-fun b!5495513 () Bool)

(declare-fun e!3399744 () Bool)

(declare-fun e!3399745 () Bool)

(assert (=> b!5495513 (= e!3399744 e!3399745)))

(declare-fun c!959521 () Bool)

(assert (=> b!5495513 (= c!959521 ((_ is Star!15465) (regTwo!31443 (regOne!31443 r!7292))))))

(declare-fun b!5495514 () Bool)

(assert (=> b!5495514 (= e!3399747 e!3399743)))

(declare-fun res!2343179 () Bool)

(assert (=> b!5495514 (= res!2343179 (not ((_ is EmptyLang!15465) (regTwo!31443 (regOne!31443 r!7292)))))))

(assert (=> b!5495514 (=> (not res!2343179) (not e!3399743))))

(declare-fun b!5495515 () Bool)

(declare-fun c!959519 () Bool)

(assert (=> b!5495515 (= c!959519 ((_ is Union!15465) (regTwo!31443 (regOne!31443 r!7292))))))

(assert (=> b!5495515 (= e!3399742 e!3399744)))

(declare-fun call!405248 () Bool)

(assert (=> b!5495516 (= e!3399745 call!405248)))

(declare-fun d!1742522 () Bool)

(declare-fun c!959518 () Bool)

(assert (=> d!1742522 (= c!959518 ((_ is EmptyExpr!15465) (regTwo!31443 (regOne!31443 r!7292))))))

(assert (=> d!1742522 (= (matchRSpec!2568 (regTwo!31443 (regOne!31443 r!7292)) s!2326) e!3399747)))

(declare-fun bm!405242 () Bool)

(assert (=> bm!405242 (= call!405248 (Exists!2572 (ite c!959521 lambda!294232 lambda!294233)))))

(declare-fun b!5495517 () Bool)

(declare-fun e!3399741 () Bool)

(assert (=> b!5495517 (= e!3399741 (matchRSpec!2568 (regTwo!31443 (regTwo!31443 (regOne!31443 r!7292))) s!2326))))

(declare-fun b!5495518 () Bool)

(assert (=> b!5495518 (= e!3399742 (= s!2326 (Cons!62572 (c!959267 (regTwo!31443 (regOne!31443 r!7292))) Nil!62572)))))

(declare-fun bm!405243 () Bool)

(assert (=> bm!405243 (= call!405247 (isEmpty!34367 s!2326))))

(declare-fun e!3399746 () Bool)

(assert (=> b!5495519 (= e!3399746 call!405248)))

(declare-fun b!5495520 () Bool)

(declare-fun res!2343181 () Bool)

(assert (=> b!5495520 (=> res!2343181 e!3399746)))

(assert (=> b!5495520 (= res!2343181 call!405247)))

(assert (=> b!5495520 (= e!3399745 e!3399746)))

(declare-fun b!5495521 () Bool)

(assert (=> b!5495521 (= e!3399744 e!3399741)))

(declare-fun res!2343180 () Bool)

(assert (=> b!5495521 (= res!2343180 (matchRSpec!2568 (regOne!31443 (regTwo!31443 (regOne!31443 r!7292))) s!2326))))

(assert (=> b!5495521 (=> res!2343180 e!3399741)))

(assert (= (and d!1742522 c!959518) b!5495511))

(assert (= (and d!1742522 (not c!959518)) b!5495514))

(assert (= (and b!5495514 res!2343179) b!5495512))

(assert (= (and b!5495512 c!959520) b!5495518))

(assert (= (and b!5495512 (not c!959520)) b!5495515))

(assert (= (and b!5495515 c!959519) b!5495521))

(assert (= (and b!5495515 (not c!959519)) b!5495513))

(assert (= (and b!5495521 (not res!2343180)) b!5495517))

(assert (= (and b!5495513 c!959521) b!5495520))

(assert (= (and b!5495513 (not c!959521)) b!5495516))

(assert (= (and b!5495520 (not res!2343181)) b!5495519))

(assert (= (or b!5495519 b!5495516) bm!405242))

(assert (= (or b!5495511 b!5495520) bm!405243))

(declare-fun m!6505780 () Bool)

(assert (=> bm!405242 m!6505780))

(declare-fun m!6505782 () Bool)

(assert (=> b!5495517 m!6505782))

(assert (=> bm!405243 m!6505414))

(declare-fun m!6505784 () Bool)

(assert (=> b!5495521 m!6505784))

(assert (=> b!5494911 d!1742522))

(assert (=> d!1742386 d!1742450))

(assert (=> d!1742386 d!1742344))

(declare-fun bs!1267873 () Bool)

(declare-fun d!1742524 () Bool)

(assert (= bs!1267873 (and d!1742524 d!1742348)))

(declare-fun lambda!294234 () Int)

(assert (=> bs!1267873 (= lambda!294234 lambda!294184)))

(declare-fun bs!1267874 () Bool)

(assert (= bs!1267874 (and d!1742524 d!1742420)))

(assert (=> bs!1267874 (= lambda!294234 lambda!294224)))

(declare-fun bs!1267875 () Bool)

(assert (= bs!1267875 (and d!1742524 d!1742378)))

(assert (=> bs!1267875 (= lambda!294234 lambda!294210)))

(declare-fun bs!1267876 () Bool)

(assert (= bs!1267876 (and d!1742524 d!1742440)))

(assert (=> bs!1267876 (= lambda!294234 lambda!294227)))

(declare-fun bs!1267877 () Bool)

(assert (= bs!1267877 (and d!1742524 d!1742346)))

(assert (=> bs!1267877 (= lambda!294234 lambda!294181)))

(declare-fun bs!1267878 () Bool)

(assert (= bs!1267878 (and d!1742524 d!1742380)))

(assert (=> bs!1267878 (= lambda!294234 lambda!294215)))

(declare-fun bs!1267879 () Bool)

(assert (= bs!1267879 (and d!1742524 d!1742458)))

(assert (=> bs!1267879 (= lambda!294234 lambda!294228)))

(declare-fun bs!1267880 () Bool)

(assert (= bs!1267880 (and d!1742524 d!1742340)))

(assert (=> bs!1267880 (= lambda!294234 lambda!294180)))

(declare-fun bs!1267881 () Bool)

(assert (= bs!1267881 (and d!1742524 d!1742478)))

(assert (=> bs!1267881 (= lambda!294234 lambda!294231)))

(declare-fun b!5495522 () Bool)

(declare-fun e!3399753 () Regex!15465)

(assert (=> b!5495522 (= e!3399753 (Concat!24310 (h!69018 (t!375925 (exprs!5349 (h!69019 zl!343)))) (generalisedConcat!1080 (t!375925 (t!375925 (exprs!5349 (h!69019 zl!343)))))))))

(declare-fun b!5495523 () Bool)

(declare-fun e!3399749 () Bool)

(assert (=> b!5495523 (= e!3399749 (isEmpty!34366 (t!375925 (t!375925 (exprs!5349 (h!69019 zl!343))))))))

(declare-fun e!3399752 () Bool)

(assert (=> d!1742524 e!3399752))

(declare-fun res!2343182 () Bool)

(assert (=> d!1742524 (=> (not res!2343182) (not e!3399752))))

(declare-fun lt!2242776 () Regex!15465)

(assert (=> d!1742524 (= res!2343182 (validRegex!7201 lt!2242776))))

(declare-fun e!3399750 () Regex!15465)

(assert (=> d!1742524 (= lt!2242776 e!3399750)))

(declare-fun c!959525 () Bool)

(assert (=> d!1742524 (= c!959525 e!3399749)))

(declare-fun res!2343183 () Bool)

(assert (=> d!1742524 (=> (not res!2343183) (not e!3399749))))

(assert (=> d!1742524 (= res!2343183 ((_ is Cons!62570) (t!375925 (exprs!5349 (h!69019 zl!343)))))))

(assert (=> d!1742524 (forall!14655 (t!375925 (exprs!5349 (h!69019 zl!343))) lambda!294234)))

(assert (=> d!1742524 (= (generalisedConcat!1080 (t!375925 (exprs!5349 (h!69019 zl!343)))) lt!2242776)))

(declare-fun b!5495524 () Bool)

(assert (=> b!5495524 (= e!3399753 EmptyExpr!15465)))

(declare-fun b!5495525 () Bool)

(declare-fun e!3399751 () Bool)

(assert (=> b!5495525 (= e!3399752 e!3399751)))

(declare-fun c!959522 () Bool)

(assert (=> b!5495525 (= c!959522 (isEmpty!34366 (t!375925 (exprs!5349 (h!69019 zl!343)))))))

(declare-fun b!5495526 () Bool)

(assert (=> b!5495526 (= e!3399750 (h!69018 (t!375925 (exprs!5349 (h!69019 zl!343)))))))

(declare-fun b!5495527 () Bool)

(declare-fun e!3399748 () Bool)

(assert (=> b!5495527 (= e!3399751 e!3399748)))

(declare-fun c!959523 () Bool)

(assert (=> b!5495527 (= c!959523 (isEmpty!34366 (tail!10860 (t!375925 (exprs!5349 (h!69019 zl!343))))))))

(declare-fun b!5495528 () Bool)

(assert (=> b!5495528 (= e!3399751 (isEmptyExpr!1053 lt!2242776))))

(declare-fun b!5495529 () Bool)

(assert (=> b!5495529 (= e!3399748 (isConcat!576 lt!2242776))))

(declare-fun b!5495530 () Bool)

(assert (=> b!5495530 (= e!3399748 (= lt!2242776 (head!11765 (t!375925 (exprs!5349 (h!69019 zl!343))))))))

(declare-fun b!5495531 () Bool)

(assert (=> b!5495531 (= e!3399750 e!3399753)))

(declare-fun c!959524 () Bool)

(assert (=> b!5495531 (= c!959524 ((_ is Cons!62570) (t!375925 (exprs!5349 (h!69019 zl!343)))))))

(assert (= (and d!1742524 res!2343183) b!5495523))

(assert (= (and d!1742524 c!959525) b!5495526))

(assert (= (and d!1742524 (not c!959525)) b!5495531))

(assert (= (and b!5495531 c!959524) b!5495522))

(assert (= (and b!5495531 (not c!959524)) b!5495524))

(assert (= (and d!1742524 res!2343182) b!5495525))

(assert (= (and b!5495525 c!959522) b!5495528))

(assert (= (and b!5495525 (not c!959522)) b!5495527))

(assert (= (and b!5495527 c!959523) b!5495530))

(assert (= (and b!5495527 (not c!959523)) b!5495529))

(declare-fun m!6505786 () Bool)

(assert (=> b!5495530 m!6505786))

(declare-fun m!6505788 () Bool)

(assert (=> b!5495527 m!6505788))

(assert (=> b!5495527 m!6505788))

(declare-fun m!6505790 () Bool)

(assert (=> b!5495527 m!6505790))

(declare-fun m!6505792 () Bool)

(assert (=> d!1742524 m!6505792))

(declare-fun m!6505794 () Bool)

(assert (=> d!1742524 m!6505794))

(declare-fun m!6505796 () Bool)

(assert (=> b!5495529 m!6505796))

(declare-fun m!6505798 () Bool)

(assert (=> b!5495528 m!6505798))

(declare-fun m!6505800 () Bool)

(assert (=> b!5495522 m!6505800))

(declare-fun m!6505802 () Bool)

(assert (=> b!5495523 m!6505802))

(assert (=> b!5495525 m!6505380))

(assert (=> b!5494719 d!1742524))

(declare-fun d!1742526 () Bool)

(declare-fun res!2343188 () Bool)

(declare-fun e!3399758 () Bool)

(assert (=> d!1742526 (=> res!2343188 e!3399758)))

(assert (=> d!1742526 (= res!2343188 ((_ is Nil!62571) lt!2242718))))

(assert (=> d!1742526 (= (noDuplicate!1473 lt!2242718) e!3399758)))

(declare-fun b!5495536 () Bool)

(declare-fun e!3399759 () Bool)

(assert (=> b!5495536 (= e!3399758 e!3399759)))

(declare-fun res!2343189 () Bool)

(assert (=> b!5495536 (=> (not res!2343189) (not e!3399759))))

(declare-fun contains!19766 (List!62695 Context!9698) Bool)

(assert (=> b!5495536 (= res!2343189 (not (contains!19766 (t!375926 lt!2242718) (h!69019 lt!2242718))))))

(declare-fun b!5495537 () Bool)

(assert (=> b!5495537 (= e!3399759 (noDuplicate!1473 (t!375926 lt!2242718)))))

(assert (= (and d!1742526 (not res!2343188)) b!5495536))

(assert (= (and b!5495536 res!2343189) b!5495537))

(declare-fun m!6505804 () Bool)

(assert (=> b!5495536 m!6505804))

(declare-fun m!6505806 () Bool)

(assert (=> b!5495537 m!6505806))

(assert (=> d!1742342 d!1742526))

(declare-fun d!1742528 () Bool)

(declare-fun e!3399767 () Bool)

(assert (=> d!1742528 e!3399767))

(declare-fun res!2343194 () Bool)

(assert (=> d!1742528 (=> (not res!2343194) (not e!3399767))))

(declare-fun res!2343195 () List!62695)

(assert (=> d!1742528 (= res!2343194 (noDuplicate!1473 res!2343195))))

(declare-fun e!3399768 () Bool)

(assert (=> d!1742528 e!3399768))

(assert (=> d!1742528 (= (choose!41770 z!1189) res!2343195)))

(declare-fun b!5495545 () Bool)

(declare-fun e!3399766 () Bool)

(declare-fun tp!1512028 () Bool)

(assert (=> b!5495545 (= e!3399766 tp!1512028)))

(declare-fun b!5495544 () Bool)

(declare-fun tp!1512029 () Bool)

(assert (=> b!5495544 (= e!3399768 (and (inv!81909 (h!69019 res!2343195)) e!3399766 tp!1512029))))

(declare-fun b!5495546 () Bool)

(assert (=> b!5495546 (= e!3399767 (= (content!11234 res!2343195) z!1189))))

(assert (= b!5495544 b!5495545))

(assert (= (and d!1742528 ((_ is Cons!62571) res!2343195)) b!5495544))

(assert (= (and d!1742528 res!2343194) b!5495546))

(declare-fun m!6505808 () Bool)

(assert (=> d!1742528 m!6505808))

(declare-fun m!6505810 () Bool)

(assert (=> b!5495544 m!6505810))

(declare-fun m!6505812 () Bool)

(assert (=> b!5495546 m!6505812))

(assert (=> d!1742342 d!1742528))

(declare-fun d!1742530 () Bool)

(declare-fun res!2343196 () Bool)

(declare-fun e!3399774 () Bool)

(assert (=> d!1742530 (=> res!2343196 e!3399774)))

(assert (=> d!1742530 (= res!2343196 ((_ is ElementMatch!15465) lt!2242721))))

(assert (=> d!1742530 (= (validRegex!7201 lt!2242721) e!3399774)))

(declare-fun b!5495547 () Bool)

(declare-fun e!3399772 () Bool)

(declare-fun call!405250 () Bool)

(assert (=> b!5495547 (= e!3399772 call!405250)))

(declare-fun b!5495548 () Bool)

(declare-fun res!2343199 () Bool)

(declare-fun e!3399773 () Bool)

(assert (=> b!5495548 (=> res!2343199 e!3399773)))

(assert (=> b!5495548 (= res!2343199 (not ((_ is Concat!24310) lt!2242721)))))

(declare-fun e!3399769 () Bool)

(assert (=> b!5495548 (= e!3399769 e!3399773)))

(declare-fun b!5495549 () Bool)

(declare-fun res!2343200 () Bool)

(declare-fun e!3399775 () Bool)

(assert (=> b!5495549 (=> (not res!2343200) (not e!3399775))))

(declare-fun call!405251 () Bool)

(assert (=> b!5495549 (= res!2343200 call!405251)))

(assert (=> b!5495549 (= e!3399769 e!3399775)))

(declare-fun b!5495550 () Bool)

(declare-fun e!3399771 () Bool)

(assert (=> b!5495550 (= e!3399774 e!3399771)))

(declare-fun c!959526 () Bool)

(assert (=> b!5495550 (= c!959526 ((_ is Star!15465) lt!2242721))))

(declare-fun b!5495551 () Bool)

(declare-fun e!3399770 () Bool)

(assert (=> b!5495551 (= e!3399773 e!3399770)))

(declare-fun res!2343197 () Bool)

(assert (=> b!5495551 (=> (not res!2343197) (not e!3399770))))

(assert (=> b!5495551 (= res!2343197 call!405251)))

(declare-fun bm!405244 () Bool)

(declare-fun call!405249 () Bool)

(declare-fun c!959527 () Bool)

(assert (=> bm!405244 (= call!405249 (validRegex!7201 (ite c!959527 (regTwo!31443 lt!2242721) (regTwo!31442 lt!2242721))))))

(declare-fun bm!405245 () Bool)

(assert (=> bm!405245 (= call!405251 call!405250)))

(declare-fun b!5495552 () Bool)

(assert (=> b!5495552 (= e!3399771 e!3399769)))

(assert (=> b!5495552 (= c!959527 ((_ is Union!15465) lt!2242721))))

(declare-fun bm!405246 () Bool)

(assert (=> bm!405246 (= call!405250 (validRegex!7201 (ite c!959526 (reg!15794 lt!2242721) (ite c!959527 (regOne!31443 lt!2242721) (regOne!31442 lt!2242721)))))))

(declare-fun b!5495553 () Bool)

(assert (=> b!5495553 (= e!3399770 call!405249)))

(declare-fun b!5495554 () Bool)

(assert (=> b!5495554 (= e!3399771 e!3399772)))

(declare-fun res!2343198 () Bool)

(assert (=> b!5495554 (= res!2343198 (not (nullable!5507 (reg!15794 lt!2242721))))))

(assert (=> b!5495554 (=> (not res!2343198) (not e!3399772))))

(declare-fun b!5495555 () Bool)

(assert (=> b!5495555 (= e!3399775 call!405249)))

(assert (= (and d!1742530 (not res!2343196)) b!5495550))

(assert (= (and b!5495550 c!959526) b!5495554))

(assert (= (and b!5495550 (not c!959526)) b!5495552))

(assert (= (and b!5495554 res!2343198) b!5495547))

(assert (= (and b!5495552 c!959527) b!5495549))

(assert (= (and b!5495552 (not c!959527)) b!5495548))

(assert (= (and b!5495549 res!2343200) b!5495555))

(assert (= (and b!5495548 (not res!2343199)) b!5495551))

(assert (= (and b!5495551 res!2343197) b!5495553))

(assert (= (or b!5495555 b!5495553) bm!405244))

(assert (= (or b!5495549 b!5495551) bm!405245))

(assert (= (or b!5495547 bm!405245) bm!405246))

(declare-fun m!6505814 () Bool)

(assert (=> bm!405244 m!6505814))

(declare-fun m!6505816 () Bool)

(assert (=> bm!405246 m!6505816))

(declare-fun m!6505818 () Bool)

(assert (=> b!5495554 m!6505818))

(assert (=> d!1742348 d!1742530))

(declare-fun d!1742532 () Bool)

(declare-fun res!2343201 () Bool)

(declare-fun e!3399776 () Bool)

(assert (=> d!1742532 (=> res!2343201 e!3399776)))

(assert (=> d!1742532 (= res!2343201 ((_ is Nil!62570) (exprs!5349 (h!69019 zl!343))))))

(assert (=> d!1742532 (= (forall!14655 (exprs!5349 (h!69019 zl!343)) lambda!294184) e!3399776)))

(declare-fun b!5495556 () Bool)

(declare-fun e!3399777 () Bool)

(assert (=> b!5495556 (= e!3399776 e!3399777)))

(declare-fun res!2343202 () Bool)

(assert (=> b!5495556 (=> (not res!2343202) (not e!3399777))))

(assert (=> b!5495556 (= res!2343202 (dynLambda!24457 lambda!294184 (h!69018 (exprs!5349 (h!69019 zl!343)))))))

(declare-fun b!5495557 () Bool)

(assert (=> b!5495557 (= e!3399777 (forall!14655 (t!375925 (exprs!5349 (h!69019 zl!343))) lambda!294184))))

(assert (= (and d!1742532 (not res!2343201)) b!5495556))

(assert (= (and b!5495556 res!2343202) b!5495557))

(declare-fun b_lambda!208483 () Bool)

(assert (=> (not b_lambda!208483) (not b!5495556)))

(declare-fun m!6505820 () Bool)

(assert (=> b!5495556 m!6505820))

(declare-fun m!6505822 () Bool)

(assert (=> b!5495557 m!6505822))

(assert (=> d!1742348 d!1742532))

(assert (=> b!5494880 d!1742438))

(declare-fun d!1742536 () Bool)

(assert (=> d!1742536 (= (Exists!2572 (ite c!959398 lambda!294217 lambda!294219)) (choose!41774 (ite c!959398 lambda!294217 lambda!294219)))))

(declare-fun bs!1267882 () Bool)

(assert (= bs!1267882 d!1742536))

(declare-fun m!6505824 () Bool)

(assert (=> bs!1267882 m!6505824))

(assert (=> bm!405154 d!1742536))

(declare-fun c!959532 () Bool)

(declare-fun call!405257 () List!62694)

(declare-fun c!959535 () Bool)

(declare-fun bm!405249 () Bool)

(assert (=> bm!405249 (= call!405257 ($colon$colon!1561 (exprs!5349 (ite c!959285 (Context!9699 Nil!62570) (Context!9699 call!405120))) (ite (or c!959535 c!959532) (regTwo!31442 (ite c!959285 (regOne!31443 r!7292) (regOne!31442 r!7292))) (ite c!959285 (regOne!31443 r!7292) (regOne!31442 r!7292)))))))

(declare-fun bm!405250 () Bool)

(declare-fun call!405256 () (InoxSet Context!9698))

(declare-fun call!405259 () (InoxSet Context!9698))

(assert (=> bm!405250 (= call!405256 call!405259)))

(declare-fun b!5495569 () Bool)

(declare-fun e!3399785 () (InoxSet Context!9698))

(declare-fun e!3399790 () (InoxSet Context!9698))

(assert (=> b!5495569 (= e!3399785 e!3399790)))

(assert (=> b!5495569 (= c!959532 ((_ is Concat!24310) (ite c!959285 (regOne!31443 r!7292) (regOne!31442 r!7292))))))

(declare-fun call!405258 () (InoxSet Context!9698))

(declare-fun c!959533 () Bool)

(declare-fun bm!405251 () Bool)

(assert (=> bm!405251 (= call!405258 (derivationStepZipperDown!811 (ite c!959533 (regOne!31443 (ite c!959285 (regOne!31443 r!7292) (regOne!31442 r!7292))) (regOne!31442 (ite c!959285 (regOne!31443 r!7292) (regOne!31442 r!7292)))) (ite c!959533 (ite c!959285 (Context!9699 Nil!62570) (Context!9699 call!405120)) (Context!9699 call!405257)) (h!69020 s!2326)))))

(declare-fun b!5495570 () Bool)

(declare-fun e!3399788 () (InoxSet Context!9698))

(declare-fun call!405254 () (InoxSet Context!9698))

(assert (=> b!5495570 (= e!3399788 ((_ map or) call!405258 call!405254))))

(declare-fun call!405255 () List!62694)

(declare-fun bm!405252 () Bool)

(assert (=> bm!405252 (= call!405254 (derivationStepZipperDown!811 (ite c!959533 (regTwo!31443 (ite c!959285 (regOne!31443 r!7292) (regOne!31442 r!7292))) (ite c!959535 (regTwo!31442 (ite c!959285 (regOne!31443 r!7292) (regOne!31442 r!7292))) (ite c!959532 (regOne!31442 (ite c!959285 (regOne!31443 r!7292) (regOne!31442 r!7292))) (reg!15794 (ite c!959285 (regOne!31443 r!7292) (regOne!31442 r!7292)))))) (ite (or c!959533 c!959535) (ite c!959285 (Context!9699 Nil!62570) (Context!9699 call!405120)) (Context!9699 call!405255)) (h!69020 s!2326)))))

(declare-fun b!5495571 () Bool)

(declare-fun c!959534 () Bool)

(assert (=> b!5495571 (= c!959534 ((_ is Star!15465) (ite c!959285 (regOne!31443 r!7292) (regOne!31442 r!7292))))))

(declare-fun e!3399789 () (InoxSet Context!9698))

(assert (=> b!5495571 (= e!3399790 e!3399789)))

(declare-fun b!5495572 () Bool)

(declare-fun e!3399786 () (InoxSet Context!9698))

(assert (=> b!5495572 (= e!3399786 e!3399788)))

(assert (=> b!5495572 (= c!959533 ((_ is Union!15465) (ite c!959285 (regOne!31443 r!7292) (regOne!31442 r!7292))))))

(declare-fun bm!405253 () Bool)

(assert (=> bm!405253 (= call!405259 call!405254)))

(declare-fun b!5495574 () Bool)

(assert (=> b!5495574 (= e!3399790 call!405256)))

(declare-fun b!5495575 () Bool)

(assert (=> b!5495575 (= e!3399789 ((as const (Array Context!9698 Bool)) false))))

(declare-fun bm!405254 () Bool)

(assert (=> bm!405254 (= call!405255 call!405257)))

(declare-fun b!5495576 () Bool)

(assert (=> b!5495576 (= e!3399786 (store ((as const (Array Context!9698 Bool)) false) (ite c!959285 (Context!9699 Nil!62570) (Context!9699 call!405120)) true))))

(declare-fun b!5495573 () Bool)

(declare-fun e!3399787 () Bool)

(assert (=> b!5495573 (= e!3399787 (nullable!5507 (regOne!31442 (ite c!959285 (regOne!31443 r!7292) (regOne!31442 r!7292)))))))

(declare-fun c!959536 () Bool)

(declare-fun d!1742538 () Bool)

(assert (=> d!1742538 (= c!959536 (and ((_ is ElementMatch!15465) (ite c!959285 (regOne!31443 r!7292) (regOne!31442 r!7292))) (= (c!959267 (ite c!959285 (regOne!31443 r!7292) (regOne!31442 r!7292))) (h!69020 s!2326))))))

(assert (=> d!1742538 (= (derivationStepZipperDown!811 (ite c!959285 (regOne!31443 r!7292) (regOne!31442 r!7292)) (ite c!959285 (Context!9699 Nil!62570) (Context!9699 call!405120)) (h!69020 s!2326)) e!3399786)))

(declare-fun b!5495577 () Bool)

(assert (=> b!5495577 (= c!959535 e!3399787)))

(declare-fun res!2343206 () Bool)

(assert (=> b!5495577 (=> (not res!2343206) (not e!3399787))))

(assert (=> b!5495577 (= res!2343206 ((_ is Concat!24310) (ite c!959285 (regOne!31443 r!7292) (regOne!31442 r!7292))))))

(assert (=> b!5495577 (= e!3399788 e!3399785)))

(declare-fun b!5495578 () Bool)

(assert (=> b!5495578 (= e!3399789 call!405256)))

(declare-fun b!5495579 () Bool)

(assert (=> b!5495579 (= e!3399785 ((_ map or) call!405258 call!405259))))

(assert (= (and d!1742538 c!959536) b!5495576))

(assert (= (and d!1742538 (not c!959536)) b!5495572))

(assert (= (and b!5495572 c!959533) b!5495570))

(assert (= (and b!5495572 (not c!959533)) b!5495577))

(assert (= (and b!5495577 res!2343206) b!5495573))

(assert (= (and b!5495577 c!959535) b!5495579))

(assert (= (and b!5495577 (not c!959535)) b!5495569))

(assert (= (and b!5495569 c!959532) b!5495574))

(assert (= (and b!5495569 (not c!959532)) b!5495571))

(assert (= (and b!5495571 c!959534) b!5495578))

(assert (= (and b!5495571 (not c!959534)) b!5495575))

(assert (= (or b!5495574 b!5495578) bm!405254))

(assert (= (or b!5495574 b!5495578) bm!405250))

(assert (= (or b!5495579 bm!405254) bm!405249))

(assert (= (or b!5495579 bm!405250) bm!405253))

(assert (= (or b!5495570 bm!405253) bm!405252))

(assert (= (or b!5495570 b!5495579) bm!405251))

(declare-fun m!6505826 () Bool)

(assert (=> b!5495573 m!6505826))

(declare-fun m!6505828 () Bool)

(assert (=> b!5495576 m!6505828))

(declare-fun m!6505830 () Bool)

(assert (=> bm!405249 m!6505830))

(declare-fun m!6505832 () Bool)

(assert (=> bm!405251 m!6505832))

(declare-fun m!6505834 () Bool)

(assert (=> bm!405252 m!6505834))

(assert (=> bm!405114 d!1742538))

(declare-fun d!1742540 () Bool)

(declare-fun res!2343207 () Bool)

(declare-fun e!3399796 () Bool)

(assert (=> d!1742540 (=> res!2343207 e!3399796)))

(assert (=> d!1742540 (= res!2343207 ((_ is ElementMatch!15465) (ite c!959294 (regTwo!31443 r!7292) (regTwo!31442 r!7292))))))

(assert (=> d!1742540 (= (validRegex!7201 (ite c!959294 (regTwo!31443 r!7292) (regTwo!31442 r!7292))) e!3399796)))

(declare-fun b!5495580 () Bool)

(declare-fun e!3399794 () Bool)

(declare-fun call!405261 () Bool)

(assert (=> b!5495580 (= e!3399794 call!405261)))

(declare-fun b!5495581 () Bool)

(declare-fun res!2343210 () Bool)

(declare-fun e!3399795 () Bool)

(assert (=> b!5495581 (=> res!2343210 e!3399795)))

(assert (=> b!5495581 (= res!2343210 (not ((_ is Concat!24310) (ite c!959294 (regTwo!31443 r!7292) (regTwo!31442 r!7292)))))))

(declare-fun e!3399791 () Bool)

(assert (=> b!5495581 (= e!3399791 e!3399795)))

(declare-fun b!5495582 () Bool)

(declare-fun res!2343211 () Bool)

(declare-fun e!3399797 () Bool)

(assert (=> b!5495582 (=> (not res!2343211) (not e!3399797))))

(declare-fun call!405262 () Bool)

(assert (=> b!5495582 (= res!2343211 call!405262)))

(assert (=> b!5495582 (= e!3399791 e!3399797)))

(declare-fun b!5495583 () Bool)

(declare-fun e!3399793 () Bool)

(assert (=> b!5495583 (= e!3399796 e!3399793)))

(declare-fun c!959537 () Bool)

(assert (=> b!5495583 (= c!959537 ((_ is Star!15465) (ite c!959294 (regTwo!31443 r!7292) (regTwo!31442 r!7292))))))

(declare-fun b!5495584 () Bool)

(declare-fun e!3399792 () Bool)

(assert (=> b!5495584 (= e!3399795 e!3399792)))

(declare-fun res!2343208 () Bool)

(assert (=> b!5495584 (=> (not res!2343208) (not e!3399792))))

(assert (=> b!5495584 (= res!2343208 call!405262)))

(declare-fun bm!405255 () Bool)

(declare-fun call!405260 () Bool)

(declare-fun c!959538 () Bool)

(assert (=> bm!405255 (= call!405260 (validRegex!7201 (ite c!959538 (regTwo!31443 (ite c!959294 (regTwo!31443 r!7292) (regTwo!31442 r!7292))) (regTwo!31442 (ite c!959294 (regTwo!31443 r!7292) (regTwo!31442 r!7292))))))))

(declare-fun bm!405256 () Bool)

(assert (=> bm!405256 (= call!405262 call!405261)))

(declare-fun b!5495585 () Bool)

(assert (=> b!5495585 (= e!3399793 e!3399791)))

(assert (=> b!5495585 (= c!959538 ((_ is Union!15465) (ite c!959294 (regTwo!31443 r!7292) (regTwo!31442 r!7292))))))

(declare-fun bm!405257 () Bool)

(assert (=> bm!405257 (= call!405261 (validRegex!7201 (ite c!959537 (reg!15794 (ite c!959294 (regTwo!31443 r!7292) (regTwo!31442 r!7292))) (ite c!959538 (regOne!31443 (ite c!959294 (regTwo!31443 r!7292) (regTwo!31442 r!7292))) (regOne!31442 (ite c!959294 (regTwo!31443 r!7292) (regTwo!31442 r!7292)))))))))

(declare-fun b!5495586 () Bool)

(assert (=> b!5495586 (= e!3399792 call!405260)))

(declare-fun b!5495587 () Bool)

(assert (=> b!5495587 (= e!3399793 e!3399794)))

(declare-fun res!2343209 () Bool)

(assert (=> b!5495587 (= res!2343209 (not (nullable!5507 (reg!15794 (ite c!959294 (regTwo!31443 r!7292) (regTwo!31442 r!7292))))))))

(assert (=> b!5495587 (=> (not res!2343209) (not e!3399794))))

(declare-fun b!5495588 () Bool)

(assert (=> b!5495588 (= e!3399797 call!405260)))

(assert (= (and d!1742540 (not res!2343207)) b!5495583))

(assert (= (and b!5495583 c!959537) b!5495587))

(assert (= (and b!5495583 (not c!959537)) b!5495585))

(assert (= (and b!5495587 res!2343209) b!5495580))

(assert (= (and b!5495585 c!959538) b!5495582))

(assert (= (and b!5495585 (not c!959538)) b!5495581))

(assert (= (and b!5495582 res!2343211) b!5495588))

(assert (= (and b!5495581 (not res!2343210)) b!5495584))

(assert (= (and b!5495584 res!2343208) b!5495586))

(assert (= (or b!5495588 b!5495586) bm!405255))

(assert (= (or b!5495582 b!5495584) bm!405256))

(assert (= (or b!5495580 bm!405256) bm!405257))

(declare-fun m!6505836 () Bool)

(assert (=> bm!405255 m!6505836))

(declare-fun m!6505838 () Bool)

(assert (=> bm!405257 m!6505838))

(declare-fun m!6505840 () Bool)

(assert (=> b!5495587 m!6505840))

(assert (=> bm!405124 d!1742540))

(declare-fun bs!1267896 () Bool)

(declare-fun b!5495597 () Bool)

(assert (= bs!1267896 (and b!5495597 b!5494803)))

(declare-fun lambda!294237 () Int)

(assert (=> bs!1267896 (= (and (= (reg!15794 (regOne!31443 (regTwo!31443 r!7292))) (reg!15794 (regTwo!31443 r!7292))) (= (regOne!31443 (regTwo!31443 r!7292)) (regTwo!31443 r!7292))) (= lambda!294237 lambda!294197))))

(declare-fun bs!1267897 () Bool)

(assert (= bs!1267897 (and b!5495597 b!5495519)))

(assert (=> bs!1267897 (= (and (= (reg!15794 (regOne!31443 (regTwo!31443 r!7292))) (reg!15794 (regTwo!31443 (regOne!31443 r!7292)))) (= (regOne!31443 (regTwo!31443 r!7292)) (regTwo!31443 (regOne!31443 r!7292)))) (= lambda!294237 lambda!294232))))

(declare-fun bs!1267898 () Bool)

(assert (= bs!1267898 (and b!5495597 b!5495315)))

(assert (=> bs!1267898 (not (= lambda!294237 lambda!294226))))

(declare-fun bs!1267899 () Bool)

(assert (= bs!1267899 (and b!5495597 b!5495318)))

(assert (=> bs!1267899 (= (and (= (reg!15794 (regOne!31443 (regTwo!31443 r!7292))) (reg!15794 (regOne!31443 (regOne!31443 r!7292)))) (= (regOne!31443 (regTwo!31443 r!7292)) (regOne!31443 (regOne!31443 r!7292)))) (= lambda!294237 lambda!294225))))

(declare-fun bs!1267900 () Bool)

(assert (= bs!1267900 (and b!5495597 b!5495412)))

(assert (=> bs!1267900 (= (and (= (reg!15794 (regOne!31443 (regTwo!31443 r!7292))) (reg!15794 (regTwo!31443 (regTwo!31443 r!7292)))) (= (regOne!31443 (regTwo!31443 r!7292)) (regTwo!31443 (regTwo!31443 r!7292)))) (= lambda!294237 lambda!294229))))

(declare-fun bs!1267901 () Bool)

(assert (= bs!1267901 (and b!5495597 b!5495409)))

(assert (=> bs!1267901 (not (= lambda!294237 lambda!294230))))

(declare-fun bs!1267902 () Bool)

(assert (= bs!1267902 (and b!5495597 b!5495023)))

(assert (=> bs!1267902 (not (= lambda!294237 lambda!294219))))

(declare-fun bs!1267903 () Bool)

(assert (= bs!1267903 (and b!5495597 b!5495026)))

(assert (=> bs!1267903 (= (and (= (reg!15794 (regOne!31443 (regTwo!31443 r!7292))) (reg!15794 r!7292)) (= (regOne!31443 (regTwo!31443 r!7292)) r!7292)) (= lambda!294237 lambda!294217))))

(declare-fun bs!1267904 () Bool)

(assert (= bs!1267904 (and b!5495597 b!5494910)))

(assert (=> bs!1267904 (not (= lambda!294237 lambda!294204))))

(declare-fun bs!1267905 () Bool)

(assert (= bs!1267905 (and b!5495597 b!5494800)))

(assert (=> bs!1267905 (not (= lambda!294237 lambda!294199))))

(declare-fun bs!1267906 () Bool)

(assert (= bs!1267906 (and b!5495597 b!5495516)))

(assert (=> bs!1267906 (not (= lambda!294237 lambda!294233))))

(declare-fun bs!1267907 () Bool)

(assert (= bs!1267907 (and b!5495597 b!5494913)))

(assert (=> bs!1267907 (= (and (= (reg!15794 (regOne!31443 (regTwo!31443 r!7292))) (reg!15794 (regOne!31443 r!7292))) (= (regOne!31443 (regTwo!31443 r!7292)) (regOne!31443 r!7292))) (= lambda!294237 lambda!294203))))

(assert (=> b!5495597 true))

(assert (=> b!5495597 true))

(declare-fun bs!1267908 () Bool)

(declare-fun b!5495594 () Bool)

(assert (= bs!1267908 (and b!5495594 b!5494803)))

(declare-fun lambda!294238 () Int)

(assert (=> bs!1267908 (not (= lambda!294238 lambda!294197))))

(declare-fun bs!1267909 () Bool)

(assert (= bs!1267909 (and b!5495594 b!5495519)))

(assert (=> bs!1267909 (not (= lambda!294238 lambda!294232))))

(declare-fun bs!1267910 () Bool)

(assert (= bs!1267910 (and b!5495594 b!5495315)))

(assert (=> bs!1267910 (= (and (= (regOne!31442 (regOne!31443 (regTwo!31443 r!7292))) (regOne!31442 (regOne!31443 (regOne!31443 r!7292)))) (= (regTwo!31442 (regOne!31443 (regTwo!31443 r!7292))) (regTwo!31442 (regOne!31443 (regOne!31443 r!7292))))) (= lambda!294238 lambda!294226))))

(declare-fun bs!1267911 () Bool)

(assert (= bs!1267911 (and b!5495594 b!5495597)))

(assert (=> bs!1267911 (not (= lambda!294238 lambda!294237))))

(declare-fun bs!1267912 () Bool)

(assert (= bs!1267912 (and b!5495594 b!5495318)))

(assert (=> bs!1267912 (not (= lambda!294238 lambda!294225))))

(declare-fun bs!1267913 () Bool)

(assert (= bs!1267913 (and b!5495594 b!5495412)))

(assert (=> bs!1267913 (not (= lambda!294238 lambda!294229))))

(declare-fun bs!1267914 () Bool)

(assert (= bs!1267914 (and b!5495594 b!5495409)))

(assert (=> bs!1267914 (= (and (= (regOne!31442 (regOne!31443 (regTwo!31443 r!7292))) (regOne!31442 (regTwo!31443 (regTwo!31443 r!7292)))) (= (regTwo!31442 (regOne!31443 (regTwo!31443 r!7292))) (regTwo!31442 (regTwo!31443 (regTwo!31443 r!7292))))) (= lambda!294238 lambda!294230))))

(declare-fun bs!1267915 () Bool)

(assert (= bs!1267915 (and b!5495594 b!5495023)))

(assert (=> bs!1267915 (= (and (= (regOne!31442 (regOne!31443 (regTwo!31443 r!7292))) (regOne!31442 r!7292)) (= (regTwo!31442 (regOne!31443 (regTwo!31443 r!7292))) (regTwo!31442 r!7292))) (= lambda!294238 lambda!294219))))

(declare-fun bs!1267916 () Bool)

(assert (= bs!1267916 (and b!5495594 b!5495026)))

(assert (=> bs!1267916 (not (= lambda!294238 lambda!294217))))

(declare-fun bs!1267917 () Bool)

(assert (= bs!1267917 (and b!5495594 b!5494910)))

(assert (=> bs!1267917 (= (and (= (regOne!31442 (regOne!31443 (regTwo!31443 r!7292))) (regOne!31442 (regOne!31443 r!7292))) (= (regTwo!31442 (regOne!31443 (regTwo!31443 r!7292))) (regTwo!31442 (regOne!31443 r!7292)))) (= lambda!294238 lambda!294204))))

(declare-fun bs!1267918 () Bool)

(assert (= bs!1267918 (and b!5495594 b!5494800)))

(assert (=> bs!1267918 (= (and (= (regOne!31442 (regOne!31443 (regTwo!31443 r!7292))) (regOne!31442 (regTwo!31443 r!7292))) (= (regTwo!31442 (regOne!31443 (regTwo!31443 r!7292))) (regTwo!31442 (regTwo!31443 r!7292)))) (= lambda!294238 lambda!294199))))

(declare-fun bs!1267919 () Bool)

(assert (= bs!1267919 (and b!5495594 b!5495516)))

(assert (=> bs!1267919 (= (and (= (regOne!31442 (regOne!31443 (regTwo!31443 r!7292))) (regOne!31442 (regTwo!31443 (regOne!31443 r!7292)))) (= (regTwo!31442 (regOne!31443 (regTwo!31443 r!7292))) (regTwo!31442 (regTwo!31443 (regOne!31443 r!7292))))) (= lambda!294238 lambda!294233))))

(declare-fun bs!1267920 () Bool)

(assert (= bs!1267920 (and b!5495594 b!5494913)))

(assert (=> bs!1267920 (not (= lambda!294238 lambda!294203))))

(assert (=> b!5495594 true))

(assert (=> b!5495594 true))

(declare-fun b!5495589 () Bool)

(declare-fun e!3399804 () Bool)

(declare-fun call!405263 () Bool)

(assert (=> b!5495589 (= e!3399804 call!405263)))

(declare-fun b!5495590 () Bool)

(declare-fun c!959541 () Bool)

(assert (=> b!5495590 (= c!959541 ((_ is ElementMatch!15465) (regOne!31443 (regTwo!31443 r!7292))))))

(declare-fun e!3399800 () Bool)

(declare-fun e!3399799 () Bool)

(assert (=> b!5495590 (= e!3399800 e!3399799)))

(declare-fun b!5495591 () Bool)

(declare-fun e!3399801 () Bool)

(declare-fun e!3399802 () Bool)

(assert (=> b!5495591 (= e!3399801 e!3399802)))

(declare-fun c!959542 () Bool)

(assert (=> b!5495591 (= c!959542 ((_ is Star!15465) (regOne!31443 (regTwo!31443 r!7292))))))

(declare-fun b!5495592 () Bool)

(assert (=> b!5495592 (= e!3399804 e!3399800)))

(declare-fun res!2343212 () Bool)

(assert (=> b!5495592 (= res!2343212 (not ((_ is EmptyLang!15465) (regOne!31443 (regTwo!31443 r!7292)))))))

(assert (=> b!5495592 (=> (not res!2343212) (not e!3399800))))

(declare-fun b!5495593 () Bool)

(declare-fun c!959540 () Bool)

(assert (=> b!5495593 (= c!959540 ((_ is Union!15465) (regOne!31443 (regTwo!31443 r!7292))))))

(assert (=> b!5495593 (= e!3399799 e!3399801)))

(declare-fun call!405264 () Bool)

(assert (=> b!5495594 (= e!3399802 call!405264)))

(declare-fun d!1742542 () Bool)

(declare-fun c!959539 () Bool)

(assert (=> d!1742542 (= c!959539 ((_ is EmptyExpr!15465) (regOne!31443 (regTwo!31443 r!7292))))))

(assert (=> d!1742542 (= (matchRSpec!2568 (regOne!31443 (regTwo!31443 r!7292)) s!2326) e!3399804)))

(declare-fun bm!405258 () Bool)

(assert (=> bm!405258 (= call!405264 (Exists!2572 (ite c!959542 lambda!294237 lambda!294238)))))

(declare-fun b!5495595 () Bool)

(declare-fun e!3399798 () Bool)

(assert (=> b!5495595 (= e!3399798 (matchRSpec!2568 (regTwo!31443 (regOne!31443 (regTwo!31443 r!7292))) s!2326))))

(declare-fun b!5495596 () Bool)

(assert (=> b!5495596 (= e!3399799 (= s!2326 (Cons!62572 (c!959267 (regOne!31443 (regTwo!31443 r!7292))) Nil!62572)))))

(declare-fun bm!405259 () Bool)

(assert (=> bm!405259 (= call!405263 (isEmpty!34367 s!2326))))

(declare-fun e!3399803 () Bool)

(assert (=> b!5495597 (= e!3399803 call!405264)))

(declare-fun b!5495598 () Bool)

(declare-fun res!2343214 () Bool)

(assert (=> b!5495598 (=> res!2343214 e!3399803)))

(assert (=> b!5495598 (= res!2343214 call!405263)))

(assert (=> b!5495598 (= e!3399802 e!3399803)))

(declare-fun b!5495599 () Bool)

(assert (=> b!5495599 (= e!3399801 e!3399798)))

(declare-fun res!2343213 () Bool)

(assert (=> b!5495599 (= res!2343213 (matchRSpec!2568 (regOne!31443 (regOne!31443 (regTwo!31443 r!7292))) s!2326))))

(assert (=> b!5495599 (=> res!2343213 e!3399798)))

(assert (= (and d!1742542 c!959539) b!5495589))

(assert (= (and d!1742542 (not c!959539)) b!5495592))

(assert (= (and b!5495592 res!2343212) b!5495590))

(assert (= (and b!5495590 c!959541) b!5495596))

(assert (= (and b!5495590 (not c!959541)) b!5495593))

(assert (= (and b!5495593 c!959540) b!5495599))

(assert (= (and b!5495593 (not c!959540)) b!5495591))

(assert (= (and b!5495599 (not res!2343213)) b!5495595))

(assert (= (and b!5495591 c!959542) b!5495598))

(assert (= (and b!5495591 (not c!959542)) b!5495594))

(assert (= (and b!5495598 (not res!2343214)) b!5495597))

(assert (= (or b!5495597 b!5495594) bm!405258))

(assert (= (or b!5495589 b!5495598) bm!405259))

(declare-fun m!6505848 () Bool)

(assert (=> bm!405258 m!6505848))

(declare-fun m!6505850 () Bool)

(assert (=> b!5495595 m!6505850))

(assert (=> bm!405259 m!6505414))

(declare-fun m!6505852 () Bool)

(assert (=> b!5495599 m!6505852))

(assert (=> b!5494805 d!1742542))

(declare-fun condSetEmpty!36392 () Bool)

(assert (=> setNonEmpty!36388 (= condSetEmpty!36392 (= setRest!36388 ((as const (Array Context!9698 Bool)) false)))))

(declare-fun setRes!36392 () Bool)

(assert (=> setNonEmpty!36388 (= tp!1511953 setRes!36392)))

(declare-fun setIsEmpty!36392 () Bool)

(assert (=> setIsEmpty!36392 setRes!36392))

(declare-fun setNonEmpty!36392 () Bool)

(declare-fun setElem!36392 () Context!9698)

(declare-fun e!3399805 () Bool)

(declare-fun tp!1512031 () Bool)

(assert (=> setNonEmpty!36392 (= setRes!36392 (and tp!1512031 (inv!81909 setElem!36392) e!3399805))))

(declare-fun setRest!36392 () (InoxSet Context!9698))

(assert (=> setNonEmpty!36392 (= setRest!36388 ((_ map or) (store ((as const (Array Context!9698 Bool)) false) setElem!36392 true) setRest!36392))))

(declare-fun b!5495600 () Bool)

(declare-fun tp!1512030 () Bool)

(assert (=> b!5495600 (= e!3399805 tp!1512030)))

(assert (= (and setNonEmpty!36388 condSetEmpty!36392) setIsEmpty!36392))

(assert (= (and setNonEmpty!36388 (not condSetEmpty!36392)) setNonEmpty!36392))

(assert (= setNonEmpty!36392 b!5495600))

(declare-fun m!6505854 () Bool)

(assert (=> setNonEmpty!36392 m!6505854))

(declare-fun b!5495604 () Bool)

(declare-fun e!3399813 () Bool)

(assert (=> b!5495604 (= e!3399813 tp_is_empty!40183)))

(declare-fun b!5495606 () Bool)

(declare-fun tp!1512036 () Bool)

(declare-fun tp!1512032 () Bool)

(assert (=> b!5495606 (= e!3399813 (and tp!1512036 tp!1512032))))

(declare-fun b!5495608 () Bool)

(declare-fun tp!1512035 () Bool)

(assert (=> b!5495608 (= e!3399813 tp!1512035)))

(assert (=> b!5495125 (= tp!1511963 e!3399813)))

(declare-fun b!5495609 () Bool)

(declare-fun tp!1512034 () Bool)

(declare-fun tp!1512033 () Bool)

(assert (=> b!5495609 (= e!3399813 (and tp!1512034 tp!1512033))))

(assert (= (and b!5495125 ((_ is ElementMatch!15465) (regOne!31442 (regTwo!31443 r!7292)))) b!5495604))

(assert (= (and b!5495125 ((_ is Concat!24310) (regOne!31442 (regTwo!31443 r!7292)))) b!5495606))

(assert (= (and b!5495125 ((_ is Star!15465) (regOne!31442 (regTwo!31443 r!7292)))) b!5495608))

(assert (= (and b!5495125 ((_ is Union!15465) (regOne!31442 (regTwo!31443 r!7292)))) b!5495609))

(declare-fun b!5495614 () Bool)

(declare-fun e!3399814 () Bool)

(assert (=> b!5495614 (= e!3399814 tp_is_empty!40183)))

(declare-fun b!5495615 () Bool)

(declare-fun tp!1512041 () Bool)

(declare-fun tp!1512037 () Bool)

(assert (=> b!5495615 (= e!3399814 (and tp!1512041 tp!1512037))))

(declare-fun b!5495616 () Bool)

(declare-fun tp!1512040 () Bool)

(assert (=> b!5495616 (= e!3399814 tp!1512040)))

(assert (=> b!5495125 (= tp!1511959 e!3399814)))

(declare-fun b!5495617 () Bool)

(declare-fun tp!1512039 () Bool)

(declare-fun tp!1512038 () Bool)

(assert (=> b!5495617 (= e!3399814 (and tp!1512039 tp!1512038))))

(assert (= (and b!5495125 ((_ is ElementMatch!15465) (regTwo!31442 (regTwo!31443 r!7292)))) b!5495614))

(assert (= (and b!5495125 ((_ is Concat!24310) (regTwo!31442 (regTwo!31443 r!7292)))) b!5495615))

(assert (= (and b!5495125 ((_ is Star!15465) (regTwo!31442 (regTwo!31443 r!7292)))) b!5495616))

(assert (= (and b!5495125 ((_ is Union!15465) (regTwo!31442 (regTwo!31443 r!7292)))) b!5495617))

(declare-fun b!5495618 () Bool)

(declare-fun e!3399815 () Bool)

(assert (=> b!5495618 (= e!3399815 tp_is_empty!40183)))

(declare-fun b!5495619 () Bool)

(declare-fun tp!1512046 () Bool)

(declare-fun tp!1512042 () Bool)

(assert (=> b!5495619 (= e!3399815 (and tp!1512046 tp!1512042))))

(declare-fun b!5495620 () Bool)

(declare-fun tp!1512045 () Bool)

(assert (=> b!5495620 (= e!3399815 tp!1512045)))

(assert (=> b!5495127 (= tp!1511961 e!3399815)))

(declare-fun b!5495621 () Bool)

(declare-fun tp!1512044 () Bool)

(declare-fun tp!1512043 () Bool)

(assert (=> b!5495621 (= e!3399815 (and tp!1512044 tp!1512043))))

(assert (= (and b!5495127 ((_ is ElementMatch!15465) (regOne!31443 (regTwo!31443 r!7292)))) b!5495618))

(assert (= (and b!5495127 ((_ is Concat!24310) (regOne!31443 (regTwo!31443 r!7292)))) b!5495619))

(assert (= (and b!5495127 ((_ is Star!15465) (regOne!31443 (regTwo!31443 r!7292)))) b!5495620))

(assert (= (and b!5495127 ((_ is Union!15465) (regOne!31443 (regTwo!31443 r!7292)))) b!5495621))

(declare-fun b!5495622 () Bool)

(declare-fun e!3399816 () Bool)

(assert (=> b!5495622 (= e!3399816 tp_is_empty!40183)))

(declare-fun b!5495623 () Bool)

(declare-fun tp!1512051 () Bool)

(declare-fun tp!1512047 () Bool)

(assert (=> b!5495623 (= e!3399816 (and tp!1512051 tp!1512047))))

(declare-fun b!5495624 () Bool)

(declare-fun tp!1512050 () Bool)

(assert (=> b!5495624 (= e!3399816 tp!1512050)))

(assert (=> b!5495127 (= tp!1511960 e!3399816)))

(declare-fun b!5495625 () Bool)

(declare-fun tp!1512049 () Bool)

(declare-fun tp!1512048 () Bool)

(assert (=> b!5495625 (= e!3399816 (and tp!1512049 tp!1512048))))

(assert (= (and b!5495127 ((_ is ElementMatch!15465) (regTwo!31443 (regTwo!31443 r!7292)))) b!5495622))

(assert (= (and b!5495127 ((_ is Concat!24310) (regTwo!31443 (regTwo!31443 r!7292)))) b!5495623))

(assert (= (and b!5495127 ((_ is Star!15465) (regTwo!31443 (regTwo!31443 r!7292)))) b!5495624))

(assert (= (and b!5495127 ((_ is Union!15465) (regTwo!31443 (regTwo!31443 r!7292)))) b!5495625))

(declare-fun b!5495626 () Bool)

(declare-fun e!3399817 () Bool)

(assert (=> b!5495626 (= e!3399817 tp_is_empty!40183)))

(declare-fun b!5495627 () Bool)

(declare-fun tp!1512056 () Bool)

(declare-fun tp!1512052 () Bool)

(assert (=> b!5495627 (= e!3399817 (and tp!1512056 tp!1512052))))

(declare-fun b!5495628 () Bool)

(declare-fun tp!1512055 () Bool)

(assert (=> b!5495628 (= e!3399817 tp!1512055)))

(assert (=> b!5495126 (= tp!1511962 e!3399817)))

(declare-fun b!5495629 () Bool)

(declare-fun tp!1512054 () Bool)

(declare-fun tp!1512053 () Bool)

(assert (=> b!5495629 (= e!3399817 (and tp!1512054 tp!1512053))))

(assert (= (and b!5495126 ((_ is ElementMatch!15465) (reg!15794 (regTwo!31443 r!7292)))) b!5495626))

(assert (= (and b!5495126 ((_ is Concat!24310) (reg!15794 (regTwo!31443 r!7292)))) b!5495627))

(assert (= (and b!5495126 ((_ is Star!15465) (reg!15794 (regTwo!31443 r!7292)))) b!5495628))

(assert (= (and b!5495126 ((_ is Union!15465) (reg!15794 (regTwo!31443 r!7292)))) b!5495629))

(declare-fun b!5495630 () Bool)

(declare-fun e!3399818 () Bool)

(declare-fun tp!1512057 () Bool)

(declare-fun tp!1512058 () Bool)

(assert (=> b!5495630 (= e!3399818 (and tp!1512057 tp!1512058))))

(assert (=> b!5495119 (= tp!1511952 e!3399818)))

(assert (= (and b!5495119 ((_ is Cons!62570) (exprs!5349 setElem!36388))) b!5495630))

(declare-fun b!5495631 () Bool)

(declare-fun e!3399819 () Bool)

(assert (=> b!5495631 (= e!3399819 tp_is_empty!40183)))

(declare-fun b!5495632 () Bool)

(declare-fun tp!1512063 () Bool)

(declare-fun tp!1512059 () Bool)

(assert (=> b!5495632 (= e!3399819 (and tp!1512063 tp!1512059))))

(declare-fun b!5495633 () Bool)

(declare-fun tp!1512062 () Bool)

(assert (=> b!5495633 (= e!3399819 tp!1512062)))

(assert (=> b!5495096 (= tp!1511926 e!3399819)))

(declare-fun b!5495634 () Bool)

(declare-fun tp!1512061 () Bool)

(declare-fun tp!1512060 () Bool)

(assert (=> b!5495634 (= e!3399819 (and tp!1512061 tp!1512060))))

(assert (= (and b!5495096 ((_ is ElementMatch!15465) (regOne!31443 (reg!15794 r!7292)))) b!5495631))

(assert (= (and b!5495096 ((_ is Concat!24310) (regOne!31443 (reg!15794 r!7292)))) b!5495632))

(assert (= (and b!5495096 ((_ is Star!15465) (regOne!31443 (reg!15794 r!7292)))) b!5495633))

(assert (= (and b!5495096 ((_ is Union!15465) (regOne!31443 (reg!15794 r!7292)))) b!5495634))

(declare-fun b!5495645 () Bool)

(declare-fun e!3399826 () Bool)

(assert (=> b!5495645 (= e!3399826 tp_is_empty!40183)))

(declare-fun b!5495646 () Bool)

(declare-fun tp!1512068 () Bool)

(declare-fun tp!1512064 () Bool)

(assert (=> b!5495646 (= e!3399826 (and tp!1512068 tp!1512064))))

(declare-fun b!5495647 () Bool)

(declare-fun tp!1512067 () Bool)

(assert (=> b!5495647 (= e!3399826 tp!1512067)))

(assert (=> b!5495096 (= tp!1511925 e!3399826)))

(declare-fun b!5495648 () Bool)

(declare-fun tp!1512066 () Bool)

(declare-fun tp!1512065 () Bool)

(assert (=> b!5495648 (= e!3399826 (and tp!1512066 tp!1512065))))

(assert (= (and b!5495096 ((_ is ElementMatch!15465) (regTwo!31443 (reg!15794 r!7292)))) b!5495645))

(assert (= (and b!5495096 ((_ is Concat!24310) (regTwo!31443 (reg!15794 r!7292)))) b!5495646))

(assert (= (and b!5495096 ((_ is Star!15465) (regTwo!31443 (reg!15794 r!7292)))) b!5495647))

(assert (= (and b!5495096 ((_ is Union!15465) (regTwo!31443 (reg!15794 r!7292)))) b!5495648))

(declare-fun b!5495649 () Bool)

(declare-fun e!3399827 () Bool)

(declare-fun tp!1512069 () Bool)

(declare-fun tp!1512070 () Bool)

(assert (=> b!5495649 (= e!3399827 (and tp!1512069 tp!1512070))))

(assert (=> b!5495076 (= tp!1511912 e!3399827)))

(assert (= (and b!5495076 ((_ is Cons!62570) (exprs!5349 (h!69019 (t!375926 zl!343))))) b!5495649))

(declare-fun b!5495650 () Bool)

(declare-fun e!3399828 () Bool)

(assert (=> b!5495650 (= e!3399828 tp_is_empty!40183)))

(declare-fun b!5495651 () Bool)

(declare-fun tp!1512075 () Bool)

(declare-fun tp!1512071 () Bool)

(assert (=> b!5495651 (= e!3399828 (and tp!1512075 tp!1512071))))

(declare-fun b!5495652 () Bool)

(declare-fun tp!1512074 () Bool)

(assert (=> b!5495652 (= e!3399828 tp!1512074)))

(assert (=> b!5495098 (= tp!1511933 e!3399828)))

(declare-fun b!5495653 () Bool)

(declare-fun tp!1512073 () Bool)

(declare-fun tp!1512072 () Bool)

(assert (=> b!5495653 (= e!3399828 (and tp!1512073 tp!1512072))))

(assert (= (and b!5495098 ((_ is ElementMatch!15465) (regOne!31442 (regOne!31442 r!7292)))) b!5495650))

(assert (= (and b!5495098 ((_ is Concat!24310) (regOne!31442 (regOne!31442 r!7292)))) b!5495651))

(assert (= (and b!5495098 ((_ is Star!15465) (regOne!31442 (regOne!31442 r!7292)))) b!5495652))

(assert (= (and b!5495098 ((_ is Union!15465) (regOne!31442 (regOne!31442 r!7292)))) b!5495653))

(declare-fun b!5495654 () Bool)

(declare-fun e!3399829 () Bool)

(assert (=> b!5495654 (= e!3399829 tp_is_empty!40183)))

(declare-fun b!5495655 () Bool)

(declare-fun tp!1512080 () Bool)

(declare-fun tp!1512076 () Bool)

(assert (=> b!5495655 (= e!3399829 (and tp!1512080 tp!1512076))))

(declare-fun b!5495656 () Bool)

(declare-fun tp!1512079 () Bool)

(assert (=> b!5495656 (= e!3399829 tp!1512079)))

(assert (=> b!5495098 (= tp!1511929 e!3399829)))

(declare-fun b!5495657 () Bool)

(declare-fun tp!1512078 () Bool)

(declare-fun tp!1512077 () Bool)

(assert (=> b!5495657 (= e!3399829 (and tp!1512078 tp!1512077))))

(assert (= (and b!5495098 ((_ is ElementMatch!15465) (regTwo!31442 (regOne!31442 r!7292)))) b!5495654))

(assert (= (and b!5495098 ((_ is Concat!24310) (regTwo!31442 (regOne!31442 r!7292)))) b!5495655))

(assert (= (and b!5495098 ((_ is Star!15465) (regTwo!31442 (regOne!31442 r!7292)))) b!5495656))

(assert (= (and b!5495098 ((_ is Union!15465) (regTwo!31442 (regOne!31442 r!7292)))) b!5495657))

(declare-fun b!5495658 () Bool)

(declare-fun e!3399830 () Bool)

(assert (=> b!5495658 (= e!3399830 tp_is_empty!40183)))

(declare-fun b!5495659 () Bool)

(declare-fun tp!1512085 () Bool)

(declare-fun tp!1512081 () Bool)

(assert (=> b!5495659 (= e!3399830 (and tp!1512085 tp!1512081))))

(declare-fun b!5495660 () Bool)

(declare-fun tp!1512084 () Bool)

(assert (=> b!5495660 (= e!3399830 tp!1512084)))

(assert (=> b!5495128 (= tp!1511964 e!3399830)))

(declare-fun b!5495661 () Bool)

(declare-fun tp!1512083 () Bool)

(declare-fun tp!1512082 () Bool)

(assert (=> b!5495661 (= e!3399830 (and tp!1512083 tp!1512082))))

(assert (= (and b!5495128 ((_ is ElementMatch!15465) (h!69018 (exprs!5349 (h!69019 zl!343))))) b!5495658))

(assert (= (and b!5495128 ((_ is Concat!24310) (h!69018 (exprs!5349 (h!69019 zl!343))))) b!5495659))

(assert (= (and b!5495128 ((_ is Star!15465) (h!69018 (exprs!5349 (h!69019 zl!343))))) b!5495660))

(assert (= (and b!5495128 ((_ is Union!15465) (h!69018 (exprs!5349 (h!69019 zl!343))))) b!5495661))

(declare-fun b!5495662 () Bool)

(declare-fun e!3399831 () Bool)

(declare-fun tp!1512086 () Bool)

(declare-fun tp!1512087 () Bool)

(assert (=> b!5495662 (= e!3399831 (and tp!1512086 tp!1512087))))

(assert (=> b!5495128 (= tp!1511965 e!3399831)))

(assert (= (and b!5495128 ((_ is Cons!62570) (t!375925 (exprs!5349 (h!69019 zl!343))))) b!5495662))

(declare-fun b!5495663 () Bool)

(declare-fun e!3399832 () Bool)

(assert (=> b!5495663 (= e!3399832 tp_is_empty!40183)))

(declare-fun b!5495664 () Bool)

(declare-fun tp!1512092 () Bool)

(declare-fun tp!1512088 () Bool)

(assert (=> b!5495664 (= e!3399832 (and tp!1512092 tp!1512088))))

(declare-fun b!5495665 () Bool)

(declare-fun tp!1512091 () Bool)

(assert (=> b!5495665 (= e!3399832 tp!1512091)))

(assert (=> b!5495099 (= tp!1511932 e!3399832)))

(declare-fun b!5495666 () Bool)

(declare-fun tp!1512090 () Bool)

(declare-fun tp!1512089 () Bool)

(assert (=> b!5495666 (= e!3399832 (and tp!1512090 tp!1512089))))

(assert (= (and b!5495099 ((_ is ElementMatch!15465) (reg!15794 (regOne!31442 r!7292)))) b!5495663))

(assert (= (and b!5495099 ((_ is Concat!24310) (reg!15794 (regOne!31442 r!7292)))) b!5495664))

(assert (= (and b!5495099 ((_ is Star!15465) (reg!15794 (regOne!31442 r!7292)))) b!5495665))

(assert (= (and b!5495099 ((_ is Union!15465) (reg!15794 (regOne!31442 r!7292)))) b!5495666))

(declare-fun b!5495668 () Bool)

(declare-fun e!3399834 () Bool)

(declare-fun tp!1512093 () Bool)

(assert (=> b!5495668 (= e!3399834 tp!1512093)))

(declare-fun tp!1512094 () Bool)

(declare-fun b!5495667 () Bool)

(declare-fun e!3399833 () Bool)

(assert (=> b!5495667 (= e!3399833 (and (inv!81909 (h!69019 (t!375926 (t!375926 zl!343)))) e!3399834 tp!1512094))))

(assert (=> b!5495075 (= tp!1511913 e!3399833)))

(assert (= b!5495667 b!5495668))

(assert (= (and b!5495075 ((_ is Cons!62571) (t!375926 (t!375926 zl!343)))) b!5495667))

(declare-fun m!6505864 () Bool)

(assert (=> b!5495667 m!6505864))

(declare-fun b!5495669 () Bool)

(declare-fun e!3399835 () Bool)

(assert (=> b!5495669 (= e!3399835 tp_is_empty!40183)))

(declare-fun b!5495670 () Bool)

(declare-fun tp!1512099 () Bool)

(declare-fun tp!1512095 () Bool)

(assert (=> b!5495670 (= e!3399835 (and tp!1512099 tp!1512095))))

(declare-fun b!5495671 () Bool)

(declare-fun tp!1512098 () Bool)

(assert (=> b!5495671 (= e!3399835 tp!1512098)))

(assert (=> b!5495121 (= tp!1511958 e!3399835)))

(declare-fun b!5495672 () Bool)

(declare-fun tp!1512097 () Bool)

(declare-fun tp!1512096 () Bool)

(assert (=> b!5495672 (= e!3399835 (and tp!1512097 tp!1512096))))

(assert (= (and b!5495121 ((_ is ElementMatch!15465) (regOne!31442 (regOne!31443 r!7292)))) b!5495669))

(assert (= (and b!5495121 ((_ is Concat!24310) (regOne!31442 (regOne!31443 r!7292)))) b!5495670))

(assert (= (and b!5495121 ((_ is Star!15465) (regOne!31442 (regOne!31443 r!7292)))) b!5495671))

(assert (= (and b!5495121 ((_ is Union!15465) (regOne!31442 (regOne!31443 r!7292)))) b!5495672))

(declare-fun b!5495673 () Bool)

(declare-fun e!3399836 () Bool)

(assert (=> b!5495673 (= e!3399836 tp_is_empty!40183)))

(declare-fun b!5495674 () Bool)

(declare-fun tp!1512104 () Bool)

(declare-fun tp!1512100 () Bool)

(assert (=> b!5495674 (= e!3399836 (and tp!1512104 tp!1512100))))

(declare-fun b!5495675 () Bool)

(declare-fun tp!1512103 () Bool)

(assert (=> b!5495675 (= e!3399836 tp!1512103)))

(assert (=> b!5495121 (= tp!1511954 e!3399836)))

(declare-fun b!5495676 () Bool)

(declare-fun tp!1512102 () Bool)

(declare-fun tp!1512101 () Bool)

(assert (=> b!5495676 (= e!3399836 (and tp!1512102 tp!1512101))))

(assert (= (and b!5495121 ((_ is ElementMatch!15465) (regTwo!31442 (regOne!31443 r!7292)))) b!5495673))

(assert (= (and b!5495121 ((_ is Concat!24310) (regTwo!31442 (regOne!31443 r!7292)))) b!5495674))

(assert (= (and b!5495121 ((_ is Star!15465) (regTwo!31442 (regOne!31443 r!7292)))) b!5495675))

(assert (= (and b!5495121 ((_ is Union!15465) (regTwo!31442 (regOne!31443 r!7292)))) b!5495676))

(declare-fun b!5495688 () Bool)

(declare-fun e!3399844 () Bool)

(assert (=> b!5495688 (= e!3399844 tp_is_empty!40183)))

(declare-fun b!5495689 () Bool)

(declare-fun tp!1512109 () Bool)

(declare-fun tp!1512105 () Bool)

(assert (=> b!5495689 (= e!3399844 (and tp!1512109 tp!1512105))))

(declare-fun b!5495690 () Bool)

(declare-fun tp!1512108 () Bool)

(assert (=> b!5495690 (= e!3399844 tp!1512108)))

(assert (=> b!5495122 (= tp!1511957 e!3399844)))

(declare-fun b!5495691 () Bool)

(declare-fun tp!1512107 () Bool)

(declare-fun tp!1512106 () Bool)

(assert (=> b!5495691 (= e!3399844 (and tp!1512107 tp!1512106))))

(assert (= (and b!5495122 ((_ is ElementMatch!15465) (reg!15794 (regOne!31443 r!7292)))) b!5495688))

(assert (= (and b!5495122 ((_ is Concat!24310) (reg!15794 (regOne!31443 r!7292)))) b!5495689))

(assert (= (and b!5495122 ((_ is Star!15465) (reg!15794 (regOne!31443 r!7292)))) b!5495690))

(assert (= (and b!5495122 ((_ is Union!15465) (reg!15794 (regOne!31443 r!7292)))) b!5495691))

(declare-fun b!5495692 () Bool)

(declare-fun e!3399845 () Bool)

(assert (=> b!5495692 (= e!3399845 tp_is_empty!40183)))

(declare-fun b!5495693 () Bool)

(declare-fun tp!1512114 () Bool)

(declare-fun tp!1512110 () Bool)

(assert (=> b!5495693 (= e!3399845 (and tp!1512114 tp!1512110))))

(declare-fun b!5495694 () Bool)

(declare-fun tp!1512113 () Bool)

(assert (=> b!5495694 (= e!3399845 tp!1512113)))

(assert (=> b!5495100 (= tp!1511931 e!3399845)))

(declare-fun b!5495695 () Bool)

(declare-fun tp!1512112 () Bool)

(declare-fun tp!1512111 () Bool)

(assert (=> b!5495695 (= e!3399845 (and tp!1512112 tp!1512111))))

(assert (= (and b!5495100 ((_ is ElementMatch!15465) (regOne!31443 (regOne!31442 r!7292)))) b!5495692))

(assert (= (and b!5495100 ((_ is Concat!24310) (regOne!31443 (regOne!31442 r!7292)))) b!5495693))

(assert (= (and b!5495100 ((_ is Star!15465) (regOne!31443 (regOne!31442 r!7292)))) b!5495694))

(assert (= (and b!5495100 ((_ is Union!15465) (regOne!31443 (regOne!31442 r!7292)))) b!5495695))

(declare-fun b!5495696 () Bool)

(declare-fun e!3399846 () Bool)

(assert (=> b!5495696 (= e!3399846 tp_is_empty!40183)))

(declare-fun b!5495697 () Bool)

(declare-fun tp!1512119 () Bool)

(declare-fun tp!1512115 () Bool)

(assert (=> b!5495697 (= e!3399846 (and tp!1512119 tp!1512115))))

(declare-fun b!5495698 () Bool)

(declare-fun tp!1512118 () Bool)

(assert (=> b!5495698 (= e!3399846 tp!1512118)))

(assert (=> b!5495100 (= tp!1511930 e!3399846)))

(declare-fun b!5495699 () Bool)

(declare-fun tp!1512117 () Bool)

(declare-fun tp!1512116 () Bool)

(assert (=> b!5495699 (= e!3399846 (and tp!1512117 tp!1512116))))

(assert (= (and b!5495100 ((_ is ElementMatch!15465) (regTwo!31443 (regOne!31442 r!7292)))) b!5495696))

(assert (= (and b!5495100 ((_ is Concat!24310) (regTwo!31443 (regOne!31442 r!7292)))) b!5495697))

(assert (= (and b!5495100 ((_ is Star!15465) (regTwo!31443 (regOne!31442 r!7292)))) b!5495698))

(assert (= (and b!5495100 ((_ is Union!15465) (regTwo!31443 (regOne!31442 r!7292)))) b!5495699))

(declare-fun b!5495700 () Bool)

(declare-fun e!3399847 () Bool)

(declare-fun tp!1512120 () Bool)

(assert (=> b!5495700 (= e!3399847 (and tp_is_empty!40183 tp!1512120))))

(assert (=> b!5495114 (= tp!1511947 e!3399847)))

(assert (= (and b!5495114 ((_ is Cons!62572) (t!375927 (t!375927 s!2326)))) b!5495700))

(declare-fun b!5495701 () Bool)

(declare-fun e!3399848 () Bool)

(assert (=> b!5495701 (= e!3399848 tp_is_empty!40183)))

(declare-fun b!5495702 () Bool)

(declare-fun tp!1512125 () Bool)

(declare-fun tp!1512121 () Bool)

(assert (=> b!5495702 (= e!3399848 (and tp!1512125 tp!1512121))))

(declare-fun b!5495703 () Bool)

(declare-fun tp!1512124 () Bool)

(assert (=> b!5495703 (= e!3399848 tp!1512124)))

(assert (=> b!5495103 (= tp!1511937 e!3399848)))

(declare-fun b!5495704 () Bool)

(declare-fun tp!1512123 () Bool)

(declare-fun tp!1512122 () Bool)

(assert (=> b!5495704 (= e!3399848 (and tp!1512123 tp!1512122))))

(assert (= (and b!5495103 ((_ is ElementMatch!15465) (reg!15794 (regTwo!31442 r!7292)))) b!5495701))

(assert (= (and b!5495103 ((_ is Concat!24310) (reg!15794 (regTwo!31442 r!7292)))) b!5495702))

(assert (= (and b!5495103 ((_ is Star!15465) (reg!15794 (regTwo!31442 r!7292)))) b!5495703))

(assert (= (and b!5495103 ((_ is Union!15465) (reg!15794 (regTwo!31442 r!7292)))) b!5495704))

(declare-fun b!5495705 () Bool)

(declare-fun e!3399849 () Bool)

(assert (=> b!5495705 (= e!3399849 tp_is_empty!40183)))

(declare-fun b!5495706 () Bool)

(declare-fun tp!1512130 () Bool)

(declare-fun tp!1512126 () Bool)

(assert (=> b!5495706 (= e!3399849 (and tp!1512130 tp!1512126))))

(declare-fun b!5495707 () Bool)

(declare-fun tp!1512129 () Bool)

(assert (=> b!5495707 (= e!3399849 tp!1512129)))

(assert (=> b!5495102 (= tp!1511938 e!3399849)))

(declare-fun b!5495708 () Bool)

(declare-fun tp!1512128 () Bool)

(declare-fun tp!1512127 () Bool)

(assert (=> b!5495708 (= e!3399849 (and tp!1512128 tp!1512127))))

(assert (= (and b!5495102 ((_ is ElementMatch!15465) (regOne!31442 (regTwo!31442 r!7292)))) b!5495705))

(assert (= (and b!5495102 ((_ is Concat!24310) (regOne!31442 (regTwo!31442 r!7292)))) b!5495706))

(assert (= (and b!5495102 ((_ is Star!15465) (regOne!31442 (regTwo!31442 r!7292)))) b!5495707))

(assert (= (and b!5495102 ((_ is Union!15465) (regOne!31442 (regTwo!31442 r!7292)))) b!5495708))

(declare-fun b!5495709 () Bool)

(declare-fun e!3399850 () Bool)

(assert (=> b!5495709 (= e!3399850 tp_is_empty!40183)))

(declare-fun b!5495710 () Bool)

(declare-fun tp!1512135 () Bool)

(declare-fun tp!1512131 () Bool)

(assert (=> b!5495710 (= e!3399850 (and tp!1512135 tp!1512131))))

(declare-fun b!5495711 () Bool)

(declare-fun tp!1512134 () Bool)

(assert (=> b!5495711 (= e!3399850 tp!1512134)))

(assert (=> b!5495102 (= tp!1511934 e!3399850)))

(declare-fun b!5495712 () Bool)

(declare-fun tp!1512133 () Bool)

(declare-fun tp!1512132 () Bool)

(assert (=> b!5495712 (= e!3399850 (and tp!1512133 tp!1512132))))

(assert (= (and b!5495102 ((_ is ElementMatch!15465) (regTwo!31442 (regTwo!31442 r!7292)))) b!5495709))

(assert (= (and b!5495102 ((_ is Concat!24310) (regTwo!31442 (regTwo!31442 r!7292)))) b!5495710))

(assert (= (and b!5495102 ((_ is Star!15465) (regTwo!31442 (regTwo!31442 r!7292)))) b!5495711))

(assert (= (and b!5495102 ((_ is Union!15465) (regTwo!31442 (regTwo!31442 r!7292)))) b!5495712))

(declare-fun b!5495713 () Bool)

(declare-fun e!3399851 () Bool)

(assert (=> b!5495713 (= e!3399851 tp_is_empty!40183)))

(declare-fun b!5495714 () Bool)

(declare-fun tp!1512140 () Bool)

(declare-fun tp!1512136 () Bool)

(assert (=> b!5495714 (= e!3399851 (and tp!1512140 tp!1512136))))

(declare-fun b!5495715 () Bool)

(declare-fun tp!1512139 () Bool)

(assert (=> b!5495715 (= e!3399851 tp!1512139)))

(assert (=> b!5495104 (= tp!1511936 e!3399851)))

(declare-fun b!5495716 () Bool)

(declare-fun tp!1512138 () Bool)

(declare-fun tp!1512137 () Bool)

(assert (=> b!5495716 (= e!3399851 (and tp!1512138 tp!1512137))))

(assert (= (and b!5495104 ((_ is ElementMatch!15465) (regOne!31443 (regTwo!31442 r!7292)))) b!5495713))

(assert (= (and b!5495104 ((_ is Concat!24310) (regOne!31443 (regTwo!31442 r!7292)))) b!5495714))

(assert (= (and b!5495104 ((_ is Star!15465) (regOne!31443 (regTwo!31442 r!7292)))) b!5495715))

(assert (= (and b!5495104 ((_ is Union!15465) (regOne!31443 (regTwo!31442 r!7292)))) b!5495716))

(declare-fun b!5495717 () Bool)

(declare-fun e!3399852 () Bool)

(assert (=> b!5495717 (= e!3399852 tp_is_empty!40183)))

(declare-fun b!5495718 () Bool)

(declare-fun tp!1512145 () Bool)

(declare-fun tp!1512141 () Bool)

(assert (=> b!5495718 (= e!3399852 (and tp!1512145 tp!1512141))))

(declare-fun b!5495719 () Bool)

(declare-fun tp!1512144 () Bool)

(assert (=> b!5495719 (= e!3399852 tp!1512144)))

(assert (=> b!5495104 (= tp!1511935 e!3399852)))

(declare-fun b!5495720 () Bool)

(declare-fun tp!1512143 () Bool)

(declare-fun tp!1512142 () Bool)

(assert (=> b!5495720 (= e!3399852 (and tp!1512143 tp!1512142))))

(assert (= (and b!5495104 ((_ is ElementMatch!15465) (regTwo!31443 (regTwo!31442 r!7292)))) b!5495717))

(assert (= (and b!5495104 ((_ is Concat!24310) (regTwo!31443 (regTwo!31442 r!7292)))) b!5495718))

(assert (= (and b!5495104 ((_ is Star!15465) (regTwo!31443 (regTwo!31442 r!7292)))) b!5495719))

(assert (= (and b!5495104 ((_ is Union!15465) (regTwo!31443 (regTwo!31442 r!7292)))) b!5495720))

(declare-fun b!5495721 () Bool)

(declare-fun e!3399853 () Bool)

(assert (=> b!5495721 (= e!3399853 tp_is_empty!40183)))

(declare-fun b!5495722 () Bool)

(declare-fun tp!1512150 () Bool)

(declare-fun tp!1512146 () Bool)

(assert (=> b!5495722 (= e!3399853 (and tp!1512150 tp!1512146))))

(declare-fun b!5495723 () Bool)

(declare-fun tp!1512149 () Bool)

(assert (=> b!5495723 (= e!3399853 tp!1512149)))

(assert (=> b!5495095 (= tp!1511927 e!3399853)))

(declare-fun b!5495724 () Bool)

(declare-fun tp!1512148 () Bool)

(declare-fun tp!1512147 () Bool)

(assert (=> b!5495724 (= e!3399853 (and tp!1512148 tp!1512147))))

(assert (= (and b!5495095 ((_ is ElementMatch!15465) (reg!15794 (reg!15794 r!7292)))) b!5495721))

(assert (= (and b!5495095 ((_ is Concat!24310) (reg!15794 (reg!15794 r!7292)))) b!5495722))

(assert (= (and b!5495095 ((_ is Star!15465) (reg!15794 (reg!15794 r!7292)))) b!5495723))

(assert (= (and b!5495095 ((_ is Union!15465) (reg!15794 (reg!15794 r!7292)))) b!5495724))

(declare-fun b!5495725 () Bool)

(declare-fun e!3399854 () Bool)

(assert (=> b!5495725 (= e!3399854 tp_is_empty!40183)))

(declare-fun b!5495726 () Bool)

(declare-fun tp!1512155 () Bool)

(declare-fun tp!1512151 () Bool)

(assert (=> b!5495726 (= e!3399854 (and tp!1512155 tp!1512151))))

(declare-fun b!5495727 () Bool)

(declare-fun tp!1512154 () Bool)

(assert (=> b!5495727 (= e!3399854 tp!1512154)))

(assert (=> b!5495094 (= tp!1511928 e!3399854)))

(declare-fun b!5495728 () Bool)

(declare-fun tp!1512153 () Bool)

(declare-fun tp!1512152 () Bool)

(assert (=> b!5495728 (= e!3399854 (and tp!1512153 tp!1512152))))

(assert (= (and b!5495094 ((_ is ElementMatch!15465) (regOne!31442 (reg!15794 r!7292)))) b!5495725))

(assert (= (and b!5495094 ((_ is Concat!24310) (regOne!31442 (reg!15794 r!7292)))) b!5495726))

(assert (= (and b!5495094 ((_ is Star!15465) (regOne!31442 (reg!15794 r!7292)))) b!5495727))

(assert (= (and b!5495094 ((_ is Union!15465) (regOne!31442 (reg!15794 r!7292)))) b!5495728))

(declare-fun b!5495729 () Bool)

(declare-fun e!3399855 () Bool)

(assert (=> b!5495729 (= e!3399855 tp_is_empty!40183)))

(declare-fun b!5495730 () Bool)

(declare-fun tp!1512160 () Bool)

(declare-fun tp!1512156 () Bool)

(assert (=> b!5495730 (= e!3399855 (and tp!1512160 tp!1512156))))

(declare-fun b!5495731 () Bool)

(declare-fun tp!1512159 () Bool)

(assert (=> b!5495731 (= e!3399855 tp!1512159)))

(assert (=> b!5495094 (= tp!1511924 e!3399855)))

(declare-fun b!5495732 () Bool)

(declare-fun tp!1512158 () Bool)

(declare-fun tp!1512157 () Bool)

(assert (=> b!5495732 (= e!3399855 (and tp!1512158 tp!1512157))))

(assert (= (and b!5495094 ((_ is ElementMatch!15465) (regTwo!31442 (reg!15794 r!7292)))) b!5495729))

(assert (= (and b!5495094 ((_ is Concat!24310) (regTwo!31442 (reg!15794 r!7292)))) b!5495730))

(assert (= (and b!5495094 ((_ is Star!15465) (regTwo!31442 (reg!15794 r!7292)))) b!5495731))

(assert (= (and b!5495094 ((_ is Union!15465) (regTwo!31442 (reg!15794 r!7292)))) b!5495732))

(declare-fun b!5495733 () Bool)

(declare-fun e!3399856 () Bool)

(assert (=> b!5495733 (= e!3399856 tp_is_empty!40183)))

(declare-fun b!5495734 () Bool)

(declare-fun tp!1512165 () Bool)

(declare-fun tp!1512161 () Bool)

(assert (=> b!5495734 (= e!3399856 (and tp!1512165 tp!1512161))))

(declare-fun b!5495735 () Bool)

(declare-fun tp!1512164 () Bool)

(assert (=> b!5495735 (= e!3399856 tp!1512164)))

(assert (=> b!5495123 (= tp!1511956 e!3399856)))

(declare-fun b!5495736 () Bool)

(declare-fun tp!1512163 () Bool)

(declare-fun tp!1512162 () Bool)

(assert (=> b!5495736 (= e!3399856 (and tp!1512163 tp!1512162))))

(assert (= (and b!5495123 ((_ is ElementMatch!15465) (regOne!31443 (regOne!31443 r!7292)))) b!5495733))

(assert (= (and b!5495123 ((_ is Concat!24310) (regOne!31443 (regOne!31443 r!7292)))) b!5495734))

(assert (= (and b!5495123 ((_ is Star!15465) (regOne!31443 (regOne!31443 r!7292)))) b!5495735))

(assert (= (and b!5495123 ((_ is Union!15465) (regOne!31443 (regOne!31443 r!7292)))) b!5495736))

(declare-fun b!5495737 () Bool)

(declare-fun e!3399857 () Bool)

(assert (=> b!5495737 (= e!3399857 tp_is_empty!40183)))

(declare-fun b!5495738 () Bool)

(declare-fun tp!1512170 () Bool)

(declare-fun tp!1512166 () Bool)

(assert (=> b!5495738 (= e!3399857 (and tp!1512170 tp!1512166))))

(declare-fun b!5495739 () Bool)

(declare-fun tp!1512169 () Bool)

(assert (=> b!5495739 (= e!3399857 tp!1512169)))

(assert (=> b!5495123 (= tp!1511955 e!3399857)))

(declare-fun b!5495740 () Bool)

(declare-fun tp!1512168 () Bool)

(declare-fun tp!1512167 () Bool)

(assert (=> b!5495740 (= e!3399857 (and tp!1512168 tp!1512167))))

(assert (= (and b!5495123 ((_ is ElementMatch!15465) (regTwo!31443 (regOne!31443 r!7292)))) b!5495737))

(assert (= (and b!5495123 ((_ is Concat!24310) (regTwo!31443 (regOne!31443 r!7292)))) b!5495738))

(assert (= (and b!5495123 ((_ is Star!15465) (regTwo!31443 (regOne!31443 r!7292)))) b!5495739))

(assert (= (and b!5495123 ((_ is Union!15465) (regTwo!31443 (regOne!31443 r!7292)))) b!5495740))

(declare-fun b!5495741 () Bool)

(declare-fun e!3399858 () Bool)

(assert (=> b!5495741 (= e!3399858 tp_is_empty!40183)))

(declare-fun b!5495742 () Bool)

(declare-fun tp!1512175 () Bool)

(declare-fun tp!1512171 () Bool)

(assert (=> b!5495742 (= e!3399858 (and tp!1512175 tp!1512171))))

(declare-fun b!5495743 () Bool)

(declare-fun tp!1512174 () Bool)

(assert (=> b!5495743 (= e!3399858 tp!1512174)))

(assert (=> b!5495109 (= tp!1511943 e!3399858)))

(declare-fun b!5495744 () Bool)

(declare-fun tp!1512173 () Bool)

(declare-fun tp!1512172 () Bool)

(assert (=> b!5495744 (= e!3399858 (and tp!1512173 tp!1512172))))

(assert (= (and b!5495109 ((_ is ElementMatch!15465) (h!69018 (exprs!5349 setElem!36385)))) b!5495741))

(assert (= (and b!5495109 ((_ is Concat!24310) (h!69018 (exprs!5349 setElem!36385)))) b!5495742))

(assert (= (and b!5495109 ((_ is Star!15465) (h!69018 (exprs!5349 setElem!36385)))) b!5495743))

(assert (= (and b!5495109 ((_ is Union!15465) (h!69018 (exprs!5349 setElem!36385)))) b!5495744))

(declare-fun b!5495745 () Bool)

(declare-fun e!3399859 () Bool)

(declare-fun tp!1512176 () Bool)

(declare-fun tp!1512177 () Bool)

(assert (=> b!5495745 (= e!3399859 (and tp!1512176 tp!1512177))))

(assert (=> b!5495109 (= tp!1511944 e!3399859)))

(assert (= (and b!5495109 ((_ is Cons!62570) (t!375925 (exprs!5349 setElem!36385)))) b!5495745))

(declare-fun b_lambda!208485 () Bool)

(assert (= b_lambda!208477 (or d!1742340 b_lambda!208485)))

(declare-fun bs!1267943 () Bool)

(declare-fun d!1742562 () Bool)

(assert (= bs!1267943 (and d!1742562 d!1742340)))

(assert (=> bs!1267943 (= (dynLambda!24457 lambda!294180 (h!69018 (exprs!5349 (h!69019 zl!343)))) (validRegex!7201 (h!69018 (exprs!5349 (h!69019 zl!343)))))))

(declare-fun m!6505882 () Bool)

(assert (=> bs!1267943 m!6505882))

(assert (=> b!5495450 d!1742562))

(declare-fun b_lambda!208487 () Bool)

(assert (= b_lambda!208483 (or d!1742348 b_lambda!208487)))

(declare-fun bs!1267945 () Bool)

(declare-fun d!1742564 () Bool)

(assert (= bs!1267945 (and d!1742564 d!1742348)))

(assert (=> bs!1267945 (= (dynLambda!24457 lambda!294184 (h!69018 (exprs!5349 (h!69019 zl!343)))) (validRegex!7201 (h!69018 (exprs!5349 (h!69019 zl!343)))))))

(assert (=> bs!1267945 m!6505882))

(assert (=> b!5495556 d!1742564))

(declare-fun b_lambda!208489 () Bool)

(assert (= b_lambda!208479 (or d!1742380 b_lambda!208489)))

(declare-fun bs!1267946 () Bool)

(declare-fun d!1742566 () Bool)

(assert (= bs!1267946 (and d!1742566 d!1742380)))

(assert (=> bs!1267946 (= (dynLambda!24457 lambda!294215 (h!69018 lt!2242750)) (validRegex!7201 (h!69018 lt!2242750)))))

(declare-fun m!6505884 () Bool)

(assert (=> bs!1267946 m!6505884))

(assert (=> b!5495476 d!1742566))

(declare-fun b_lambda!208491 () Bool)

(assert (= b_lambda!208475 (or d!1742378 b_lambda!208491)))

(declare-fun bs!1267947 () Bool)

(declare-fun d!1742568 () Bool)

(assert (= bs!1267947 (and d!1742568 d!1742378)))

(assert (=> bs!1267947 (= (dynLambda!24457 lambda!294210 (h!69018 (unfocusZipperList!893 zl!343))) (validRegex!7201 (h!69018 (unfocusZipperList!893 zl!343))))))

(declare-fun m!6505886 () Bool)

(assert (=> bs!1267947 m!6505886))

(assert (=> b!5495308 d!1742568))

(declare-fun b_lambda!208493 () Bool)

(assert (= b_lambda!208481 (or d!1742346 b_lambda!208493)))

(declare-fun bs!1267948 () Bool)

(declare-fun d!1742570 () Bool)

(assert (= bs!1267948 (and d!1742570 d!1742346)))

(assert (=> bs!1267948 (= (dynLambda!24457 lambda!294181 (h!69018 (exprs!5349 setElem!36385))) (validRegex!7201 (h!69018 (exprs!5349 setElem!36385))))))

(declare-fun m!6505888 () Bool)

(assert (=> bs!1267948 m!6505888))

(assert (=> b!5495487 d!1742570))

(check-sat (not bm!405234) (not b!5495330) (not setNonEmpty!36392) (not b!5495657) (not b!5495537) (not bm!405218) (not b!5495624) (not b!5495430) (not b!5495743) (not bs!1267945) (not bm!405211) (not bm!405216) (not b!5495648) (not b!5495595) (not b!5495656) (not b!5495653) (not d!1742496) (not b!5495331) (not b!5495410) (not b!5495350) (not b!5495664) (not b!5495352) (not b!5495528) (not bm!405255) (not b!5495716) (not b!5495320) (not b!5495455) (not b!5495309) (not b!5495333) (not b!5495615) (not b!5495536) (not bm!405251) (not b!5495727) (not b!5495742) (not b!5495651) (not b!5495707) (not b!5495464) (not bm!405258) (not b!5495676) (not b!5495557) (not b!5495666) (not b!5495690) (not b!5495619) (not b!5495724) (not b!5495459) (not b!5495711) (not d!1742506) (not bs!1267946) (not b!5495719) (not bm!405226) (not bm!405249) (not b!5495530) (not b!5495671) (not b!5495523) (not bm!405220) (not d!1742440) (not b!5495452) (not b!5495402) (not bm!405214) (not b!5495718) (not b!5495606) (not b!5495527) (not b!5495630) (not bm!405229) (not b!5495700) (not b!5495422) (not b!5495415) (not bm!405235) (not b!5495388) (not b!5495728) (not bm!405219) (not b!5495633) (not b!5495710) (not d!1742458) (not b!5495720) (not bm!405244) (not b!5495731) (not bm!405252) (not d!1742502) (not b!5495668) (not b!5495335) (not b!5495545) (not bm!405238) (not b!5495544) (not b!5495699) (not bm!405224) (not b!5495634) (not b!5495620) (not b!5495708) (not d!1742536) (not bm!405204) (not b!5495652) (not b!5495703) (not b!5495522) (not d!1742490) (not b!5495332) (not b!5495655) (not b!5495461) (not b!5495375) (not d!1742420) (not b!5495732) (not bs!1267943) (not b!5495674) (not bm!405192) (not d!1742442) (not b!5495726) (not b!5495425) (not b!5495627) (not b!5495745) (not bm!405210) (not d!1742474) (not d!1742528) (not d!1742478) (not b!5495448) (not b!5495343) (not bm!405205) (not b!5495491) (not b!5495661) (not bm!405243) (not b!5495337) (not bm!405221) (not b!5495424) (not b!5495734) (not b!5495628) (not b_lambda!208491) (not d!1742444) (not b!5495492) (not b!5495587) (not b!5495665) (not b!5495744) (not b!5495499) (not b!5495529) (not b!5495740) (not b!5495736) (not b!5495504) (not b!5495521) (not b!5495599) (not b!5495629) (not b!5495600) (not b!5495414) (not b!5495660) (not b_lambda!208485) (not b!5495485) (not d!1742456) (not b_lambda!208493) (not b_lambda!208489) (not bm!405257) (not b!5495477) (not b!5495609) (not b!5495649) (not b!5495339) (not b!5495302) (not b!5495698) tp_is_empty!40183 (not b!5495739) (not b!5495670) (not b!5495632) (not bm!405232) (not b!5495316) (not b!5495625) (not bs!1267947) (not d!1742434) (not d!1742486) (not b!5495608) (not b!5495347) (not bm!405195) (not b!5495695) (not b!5495340) (not b!5495328) (not b!5495735) (not b!5495616) (not d!1742510) (not b!5495723) (not b!5495573) (not bm!405217) (not b!5495617) (not b!5495462) (not b!5495714) (not bm!405190) (not b!5495467) (not b!5495667) (not bm!405191) (not b!5495546) (not bm!405236) (not d!1742524) (not b!5495446) (not b!5495517) (not b!5495704) (not d!1742448) (not b!5495621) (not b!5495722) (not b!5495647) (not b!5495693) (not b!5495427) (not bm!405187) (not bm!405228) (not b!5495738) (not bm!405208) (not b!5495418) (not b!5495554) (not bm!405189) (not b!5495662) (not b!5495623) (not bs!1267948) (not b!5495488) (not b!5495525) (not b!5495675) (not b_lambda!208487) (not b!5495691) (not bm!405242) (not b!5495694) (not b!5495715) (not d!1742468) (not d!1742476) (not b!5495689) (not d!1742470) (not b!5495646) (not b!5495706) (not bm!405239) (not b!5495730) (not b!5495697) (not bm!405246) (not b!5495672) (not b!5495349) (not bm!405194) (not b!5495702) (not bm!405259) (not b!5495451) (not bm!405227) (not b!5495659) (not d!1742488) (not d!1742520) (not b!5495712))
(check-sat)
