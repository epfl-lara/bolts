; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!575262 () Bool)

(assert start!575262)

(declare-fun b!5508569 () Bool)

(assert (=> b!5508569 true))

(assert (=> b!5508569 true))

(declare-fun lambda!295060 () Int)

(declare-fun lambda!295059 () Int)

(assert (=> b!5508569 (not (= lambda!295060 lambda!295059))))

(assert (=> b!5508569 true))

(assert (=> b!5508569 true))

(declare-fun b!5508568 () Bool)

(assert (=> b!5508568 true))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31256 0))(
  ( (C!31257 (val!25330 Int)) )
))
(declare-datatypes ((Regex!15493 0))(
  ( (ElementMatch!15493 (c!962517 C!31256)) (Concat!24338 (regOne!31498 Regex!15493) (regTwo!31498 Regex!15493)) (EmptyExpr!15493) (Star!15493 (reg!15822 Regex!15493)) (EmptyLang!15493) (Union!15493 (regOne!31499 Regex!15493) (regTwo!31499 Regex!15493)) )
))
(declare-datatypes ((List!62778 0))(
  ( (Nil!62654) (Cons!62654 (h!69102 Regex!15493) (t!376021 List!62778)) )
))
(declare-datatypes ((Context!9754 0))(
  ( (Context!9755 (exprs!5377 List!62778)) )
))
(declare-fun lt!2244717 () (InoxSet Context!9754))

(declare-fun lt!2244730 () (InoxSet Context!9754))

(declare-fun e!3406838 () Bool)

(declare-fun b!5508565 () Bool)

(declare-fun lt!2244714 () (InoxSet Context!9754))

(assert (=> b!5508565 (= e!3406838 (= lt!2244730 ((_ map or) lt!2244714 lt!2244717)))))

(declare-fun b!5508566 () Bool)

(declare-fun e!3406837 () Bool)

(declare-fun e!3406840 () Bool)

(assert (=> b!5508566 (= e!3406837 e!3406840)))

(declare-fun res!2347471 () Bool)

(assert (=> b!5508566 (=> res!2347471 e!3406840)))

(declare-fun lt!2244715 () (InoxSet Context!9754))

(declare-fun lt!2244722 () (InoxSet Context!9754))

(assert (=> b!5508566 (= res!2347471 (not (= lt!2244715 lt!2244722)))))

(declare-fun r!7292 () Regex!15493)

(declare-datatypes ((List!62779 0))(
  ( (Nil!62655) (Cons!62655 (h!69103 C!31256) (t!376022 List!62779)) )
))
(declare-fun s!2326 () List!62779)

(declare-fun lt!2244723 () Context!9754)

(declare-fun derivationStepZipperDown!835 (Regex!15493 Context!9754 C!31256) (InoxSet Context!9754))

(assert (=> b!5508566 (= lt!2244722 (derivationStepZipperDown!835 r!7292 lt!2244723 (h!69103 s!2326)))))

(assert (=> b!5508566 (= lt!2244723 (Context!9755 Nil!62654))))

(declare-fun derivationStepZipperUp!761 (Context!9754 C!31256) (InoxSet Context!9754))

(assert (=> b!5508566 (= lt!2244715 (derivationStepZipperUp!761 (Context!9755 (Cons!62654 r!7292 Nil!62654)) (h!69103 s!2326)))))

(declare-fun z!1189 () (InoxSet Context!9754))

(declare-fun derivationStepZipper!1598 ((InoxSet Context!9754) C!31256) (InoxSet Context!9754))

(assert (=> b!5508566 (= lt!2244730 (derivationStepZipper!1598 z!1189 (h!69103 s!2326)))))

(declare-fun b!5508567 () Bool)

(declare-fun res!2347475 () Bool)

(declare-fun e!3406842 () Bool)

(assert (=> b!5508567 (=> res!2347475 e!3406842)))

(declare-datatypes ((List!62780 0))(
  ( (Nil!62656) (Cons!62656 (h!69104 Context!9754) (t!376023 List!62780)) )
))
(declare-fun zl!343 () List!62780)

(declare-fun isEmpty!34433 (List!62780) Bool)

(assert (=> b!5508567 (= res!2347475 (not (isEmpty!34433 (t!376023 zl!343))))))

(declare-fun e!3406835 () Bool)

(assert (=> b!5508568 (= e!3406840 e!3406835)))

(declare-fun res!2347477 () Bool)

(assert (=> b!5508568 (=> res!2347477 e!3406835)))

(assert (=> b!5508568 (= res!2347477 (not (= lt!2244730 lt!2244722)))))

(declare-fun lambda!295061 () Int)

(declare-fun flatMap!1106 ((InoxSet Context!9754) Int) (InoxSet Context!9754))

(assert (=> b!5508568 (= (flatMap!1106 z!1189 lambda!295061) (derivationStepZipperUp!761 (h!69104 zl!343) (h!69103 s!2326)))))

(declare-datatypes ((Unit!155446 0))(
  ( (Unit!155447) )
))
(declare-fun lt!2244727 () Unit!155446)

(declare-fun lemmaFlatMapOnSingletonSet!638 ((InoxSet Context!9754) Context!9754 Int) Unit!155446)

(assert (=> b!5508568 (= lt!2244727 (lemmaFlatMapOnSingletonSet!638 z!1189 (h!69104 zl!343) lambda!295061))))

(assert (=> b!5508569 (= e!3406842 e!3406837)))

(declare-fun res!2347474 () Bool)

(assert (=> b!5508569 (=> res!2347474 e!3406837)))

(declare-fun lt!2244731 () Bool)

(declare-fun lt!2244729 () Bool)

(get-info :version)

(assert (=> b!5508569 (= res!2347474 (or (not (= lt!2244729 lt!2244731)) ((_ is Nil!62655) s!2326)))))

(declare-fun Exists!2593 (Int) Bool)

(assert (=> b!5508569 (= (Exists!2593 lambda!295059) (Exists!2593 lambda!295060))))

(declare-fun lt!2244720 () Unit!155446)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1222 (Regex!15493 Regex!15493 List!62779) Unit!155446)

(assert (=> b!5508569 (= lt!2244720 (lemmaExistCutMatchRandMatchRSpecEquivalent!1222 (regOne!31498 r!7292) (regTwo!31498 r!7292) s!2326))))

(assert (=> b!5508569 (= lt!2244731 (Exists!2593 lambda!295059))))

(declare-datatypes ((tuple2!65180 0))(
  ( (tuple2!65181 (_1!35893 List!62779) (_2!35893 List!62779)) )
))
(declare-datatypes ((Option!15502 0))(
  ( (None!15501) (Some!15501 (v!51536 tuple2!65180)) )
))
(declare-fun isDefined!12205 (Option!15502) Bool)

(declare-fun findConcatSeparation!1916 (Regex!15493 Regex!15493 List!62779 List!62779 List!62779) Option!15502)

(assert (=> b!5508569 (= lt!2244731 (isDefined!12205 (findConcatSeparation!1916 (regOne!31498 r!7292) (regTwo!31498 r!7292) Nil!62655 s!2326 s!2326)))))

(declare-fun lt!2244725 () Unit!155446)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1680 (Regex!15493 Regex!15493 List!62779) Unit!155446)

(assert (=> b!5508569 (= lt!2244725 (lemmaFindConcatSeparationEquivalentToExists!1680 (regOne!31498 r!7292) (regTwo!31498 r!7292) s!2326))))

(declare-fun b!5508570 () Bool)

(declare-fun e!3406833 () Bool)

(declare-fun tp_is_empty!40239 () Bool)

(declare-fun tp!1515694 () Bool)

(assert (=> b!5508570 (= e!3406833 (and tp_is_empty!40239 tp!1515694))))

(declare-fun b!5508571 () Bool)

(declare-fun res!2347476 () Bool)

(declare-fun e!3406832 () Bool)

(assert (=> b!5508571 (=> (not res!2347476) (not e!3406832))))

(declare-fun unfocusZipper!1235 (List!62780) Regex!15493)

(assert (=> b!5508571 (= res!2347476 (= r!7292 (unfocusZipper!1235 zl!343)))))

(declare-fun b!5508572 () Bool)

(declare-fun res!2347483 () Bool)

(assert (=> b!5508572 (=> res!2347483 e!3406837)))

(declare-fun isEmpty!34434 (List!62778) Bool)

(assert (=> b!5508572 (= res!2347483 (not (isEmpty!34434 (t!376021 (exprs!5377 (h!69104 zl!343))))))))

(declare-fun res!2347473 () Bool)

(assert (=> start!575262 (=> (not res!2347473) (not e!3406832))))

(declare-fun validRegex!7229 (Regex!15493) Bool)

(assert (=> start!575262 (= res!2347473 (validRegex!7229 r!7292))))

(assert (=> start!575262 e!3406832))

(declare-fun e!3406839 () Bool)

(assert (=> start!575262 e!3406839))

(declare-fun condSetEmpty!36567 () Bool)

(assert (=> start!575262 (= condSetEmpty!36567 (= z!1189 ((as const (Array Context!9754 Bool)) false)))))

(declare-fun setRes!36567 () Bool)

(assert (=> start!575262 setRes!36567))

(declare-fun e!3406841 () Bool)

(assert (=> start!575262 e!3406841))

(assert (=> start!575262 e!3406833))

(declare-fun tp!1515695 () Bool)

(declare-fun setNonEmpty!36567 () Bool)

(declare-fun setElem!36567 () Context!9754)

(declare-fun e!3406834 () Bool)

(declare-fun inv!81979 (Context!9754) Bool)

(assert (=> setNonEmpty!36567 (= setRes!36567 (and tp!1515695 (inv!81979 setElem!36567) e!3406834))))

(declare-fun setRest!36567 () (InoxSet Context!9754))

(assert (=> setNonEmpty!36567 (= z!1189 ((_ map or) (store ((as const (Array Context!9754 Bool)) false) setElem!36567 true) setRest!36567))))

(declare-fun setIsEmpty!36567 () Bool)

(assert (=> setIsEmpty!36567 setRes!36567))

(declare-fun b!5508573 () Bool)

(declare-fun tp!1515696 () Bool)

(assert (=> b!5508573 (= e!3406834 tp!1515696)))

(declare-fun b!5508574 () Bool)

(assert (=> b!5508574 (= e!3406835 e!3406838)))

(declare-fun res!2347484 () Bool)

(assert (=> b!5508574 (=> res!2347484 e!3406838)))

(declare-fun nullable!5527 (Regex!15493) Bool)

(assert (=> b!5508574 (= res!2347484 (not (nullable!5527 (regOne!31498 r!7292))))))

(assert (=> b!5508574 (= lt!2244717 (derivationStepZipperDown!835 (regTwo!31498 r!7292) lt!2244723 (h!69103 s!2326)))))

(declare-fun lt!2244721 () Context!9754)

(assert (=> b!5508574 (= lt!2244714 (derivationStepZipperDown!835 (regOne!31498 r!7292) lt!2244721 (h!69103 s!2326)))))

(declare-fun lt!2244712 () (InoxSet Context!9754))

(assert (=> b!5508574 (= (flatMap!1106 lt!2244712 lambda!295061) (derivationStepZipperUp!761 lt!2244721 (h!69103 s!2326)))))

(declare-fun lt!2244718 () Unit!155446)

(assert (=> b!5508574 (= lt!2244718 (lemmaFlatMapOnSingletonSet!638 lt!2244712 lt!2244721 lambda!295061))))

(declare-fun lt!2244711 () Context!9754)

(declare-fun lt!2244713 () (InoxSet Context!9754))

(assert (=> b!5508574 (= (flatMap!1106 lt!2244713 lambda!295061) (derivationStepZipperUp!761 lt!2244711 (h!69103 s!2326)))))

(declare-fun lt!2244728 () Unit!155446)

(assert (=> b!5508574 (= lt!2244728 (lemmaFlatMapOnSingletonSet!638 lt!2244713 lt!2244711 lambda!295061))))

(declare-fun lt!2244726 () (InoxSet Context!9754))

(assert (=> b!5508574 (= lt!2244726 (derivationStepZipperUp!761 lt!2244721 (h!69103 s!2326)))))

(declare-fun lt!2244716 () (InoxSet Context!9754))

(assert (=> b!5508574 (= lt!2244716 (derivationStepZipperUp!761 lt!2244711 (h!69103 s!2326)))))

(assert (=> b!5508574 (= lt!2244712 (store ((as const (Array Context!9754 Bool)) false) lt!2244721 true))))

(declare-fun lt!2244724 () List!62778)

(assert (=> b!5508574 (= lt!2244721 (Context!9755 lt!2244724))))

(assert (=> b!5508574 (= lt!2244713 (store ((as const (Array Context!9754 Bool)) false) lt!2244711 true))))

(assert (=> b!5508574 (= lt!2244711 (Context!9755 (Cons!62654 (regOne!31498 r!7292) lt!2244724)))))

(assert (=> b!5508574 (= lt!2244724 (Cons!62654 (regTwo!31498 r!7292) Nil!62654))))

(declare-fun b!5508575 () Bool)

(assert (=> b!5508575 (= e!3406832 (not e!3406842))))

(declare-fun res!2347479 () Bool)

(assert (=> b!5508575 (=> res!2347479 e!3406842)))

(assert (=> b!5508575 (= res!2347479 (not ((_ is Cons!62656) zl!343)))))

(declare-fun matchRSpec!2596 (Regex!15493 List!62779) Bool)

(assert (=> b!5508575 (= lt!2244729 (matchRSpec!2596 r!7292 s!2326))))

(declare-fun matchR!7678 (Regex!15493 List!62779) Bool)

(assert (=> b!5508575 (= lt!2244729 (matchR!7678 r!7292 s!2326))))

(declare-fun lt!2244719 () Unit!155446)

(declare-fun mainMatchTheorem!2596 (Regex!15493 List!62779) Unit!155446)

(assert (=> b!5508575 (= lt!2244719 (mainMatchTheorem!2596 r!7292 s!2326))))

(declare-fun b!5508576 () Bool)

(declare-fun res!2347478 () Bool)

(assert (=> b!5508576 (=> res!2347478 e!3406842)))

(assert (=> b!5508576 (= res!2347478 (or ((_ is EmptyExpr!15493) r!7292) ((_ is EmptyLang!15493) r!7292) ((_ is ElementMatch!15493) r!7292) ((_ is Union!15493) r!7292) (not ((_ is Concat!24338) r!7292))))))

(declare-fun b!5508577 () Bool)

(declare-fun e!3406836 () Bool)

(declare-fun tp!1515701 () Bool)

(assert (=> b!5508577 (= e!3406836 tp!1515701)))

(declare-fun b!5508578 () Bool)

(declare-fun res!2347472 () Bool)

(assert (=> b!5508578 (=> res!2347472 e!3406842)))

(declare-fun generalisedConcat!1108 (List!62778) Regex!15493)

(assert (=> b!5508578 (= res!2347472 (not (= r!7292 (generalisedConcat!1108 (exprs!5377 (h!69104 zl!343))))))))

(declare-fun b!5508579 () Bool)

(declare-fun tp!1515702 () Bool)

(declare-fun tp!1515700 () Bool)

(assert (=> b!5508579 (= e!3406839 (and tp!1515702 tp!1515700))))

(declare-fun b!5508580 () Bool)

(assert (=> b!5508580 (= e!3406839 tp_is_empty!40239)))

(declare-fun tp!1515699 () Bool)

(declare-fun b!5508581 () Bool)

(assert (=> b!5508581 (= e!3406841 (and (inv!81979 (h!69104 zl!343)) e!3406836 tp!1515699))))

(declare-fun b!5508582 () Bool)

(declare-fun res!2347480 () Bool)

(assert (=> b!5508582 (=> (not res!2347480) (not e!3406832))))

(declare-fun toList!9277 ((InoxSet Context!9754)) List!62780)

(assert (=> b!5508582 (= res!2347480 (= (toList!9277 z!1189) zl!343))))

(declare-fun b!5508583 () Bool)

(declare-fun tp!1515697 () Bool)

(assert (=> b!5508583 (= e!3406839 tp!1515697)))

(declare-fun b!5508584 () Bool)

(declare-fun res!2347482 () Bool)

(assert (=> b!5508584 (=> res!2347482 e!3406842)))

(assert (=> b!5508584 (= res!2347482 (not ((_ is Cons!62654) (exprs!5377 (h!69104 zl!343)))))))

(declare-fun b!5508585 () Bool)

(declare-fun res!2347481 () Bool)

(assert (=> b!5508585 (=> res!2347481 e!3406842)))

(declare-fun generalisedUnion!1356 (List!62778) Regex!15493)

(declare-fun unfocusZipperList!921 (List!62780) List!62778)

(assert (=> b!5508585 (= res!2347481 (not (= r!7292 (generalisedUnion!1356 (unfocusZipperList!921 zl!343)))))))

(declare-fun b!5508586 () Bool)

(declare-fun tp!1515703 () Bool)

(declare-fun tp!1515698 () Bool)

(assert (=> b!5508586 (= e!3406839 (and tp!1515703 tp!1515698))))

(assert (= (and start!575262 res!2347473) b!5508582))

(assert (= (and b!5508582 res!2347480) b!5508571))

(assert (= (and b!5508571 res!2347476) b!5508575))

(assert (= (and b!5508575 (not res!2347479)) b!5508567))

(assert (= (and b!5508567 (not res!2347475)) b!5508578))

(assert (= (and b!5508578 (not res!2347472)) b!5508584))

(assert (= (and b!5508584 (not res!2347482)) b!5508585))

(assert (= (and b!5508585 (not res!2347481)) b!5508576))

(assert (= (and b!5508576 (not res!2347478)) b!5508569))

(assert (= (and b!5508569 (not res!2347474)) b!5508572))

(assert (= (and b!5508572 (not res!2347483)) b!5508566))

(assert (= (and b!5508566 (not res!2347471)) b!5508568))

(assert (= (and b!5508568 (not res!2347477)) b!5508574))

(assert (= (and b!5508574 (not res!2347484)) b!5508565))

(assert (= (and start!575262 ((_ is ElementMatch!15493) r!7292)) b!5508580))

(assert (= (and start!575262 ((_ is Concat!24338) r!7292)) b!5508586))

(assert (= (and start!575262 ((_ is Star!15493) r!7292)) b!5508583))

(assert (= (and start!575262 ((_ is Union!15493) r!7292)) b!5508579))

(assert (= (and start!575262 condSetEmpty!36567) setIsEmpty!36567))

(assert (= (and start!575262 (not condSetEmpty!36567)) setNonEmpty!36567))

(assert (= setNonEmpty!36567 b!5508573))

(assert (= b!5508581 b!5508577))

(assert (= (and start!575262 ((_ is Cons!62656) zl!343)) b!5508581))

(assert (= (and start!575262 ((_ is Cons!62655) s!2326)) b!5508570))

(declare-fun m!6514252 () Bool)

(assert (=> b!5508585 m!6514252))

(assert (=> b!5508585 m!6514252))

(declare-fun m!6514254 () Bool)

(assert (=> b!5508585 m!6514254))

(declare-fun m!6514256 () Bool)

(assert (=> b!5508581 m!6514256))

(declare-fun m!6514258 () Bool)

(assert (=> b!5508571 m!6514258))

(declare-fun m!6514260 () Bool)

(assert (=> b!5508568 m!6514260))

(declare-fun m!6514262 () Bool)

(assert (=> b!5508568 m!6514262))

(declare-fun m!6514264 () Bool)

(assert (=> b!5508568 m!6514264))

(declare-fun m!6514266 () Bool)

(assert (=> start!575262 m!6514266))

(declare-fun m!6514268 () Bool)

(assert (=> b!5508567 m!6514268))

(declare-fun m!6514270 () Bool)

(assert (=> b!5508578 m!6514270))

(declare-fun m!6514272 () Bool)

(assert (=> b!5508566 m!6514272))

(declare-fun m!6514274 () Bool)

(assert (=> b!5508566 m!6514274))

(declare-fun m!6514276 () Bool)

(assert (=> b!5508566 m!6514276))

(declare-fun m!6514278 () Bool)

(assert (=> b!5508569 m!6514278))

(declare-fun m!6514280 () Bool)

(assert (=> b!5508569 m!6514280))

(declare-fun m!6514282 () Bool)

(assert (=> b!5508569 m!6514282))

(declare-fun m!6514284 () Bool)

(assert (=> b!5508569 m!6514284))

(assert (=> b!5508569 m!6514280))

(declare-fun m!6514286 () Bool)

(assert (=> b!5508569 m!6514286))

(assert (=> b!5508569 m!6514282))

(declare-fun m!6514288 () Bool)

(assert (=> b!5508569 m!6514288))

(declare-fun m!6514290 () Bool)

(assert (=> b!5508582 m!6514290))

(declare-fun m!6514292 () Bool)

(assert (=> b!5508574 m!6514292))

(declare-fun m!6514294 () Bool)

(assert (=> b!5508574 m!6514294))

(declare-fun m!6514296 () Bool)

(assert (=> b!5508574 m!6514296))

(declare-fun m!6514298 () Bool)

(assert (=> b!5508574 m!6514298))

(declare-fun m!6514300 () Bool)

(assert (=> b!5508574 m!6514300))

(declare-fun m!6514302 () Bool)

(assert (=> b!5508574 m!6514302))

(declare-fun m!6514304 () Bool)

(assert (=> b!5508574 m!6514304))

(declare-fun m!6514306 () Bool)

(assert (=> b!5508574 m!6514306))

(declare-fun m!6514308 () Bool)

(assert (=> b!5508574 m!6514308))

(declare-fun m!6514310 () Bool)

(assert (=> b!5508574 m!6514310))

(declare-fun m!6514312 () Bool)

(assert (=> b!5508574 m!6514312))

(declare-fun m!6514314 () Bool)

(assert (=> b!5508572 m!6514314))

(declare-fun m!6514316 () Bool)

(assert (=> setNonEmpty!36567 m!6514316))

(declare-fun m!6514318 () Bool)

(assert (=> b!5508575 m!6514318))

(declare-fun m!6514320 () Bool)

(assert (=> b!5508575 m!6514320))

(declare-fun m!6514322 () Bool)

(assert (=> b!5508575 m!6514322))

(check-sat (not setNonEmpty!36567) (not b!5508571) (not b!5508570) (not b!5508583) (not b!5508567) (not b!5508575) tp_is_empty!40239 (not b!5508566) (not b!5508579) (not b!5508581) (not b!5508569) (not b!5508573) (not b!5508585) (not start!575262) (not b!5508582) (not b!5508578) (not b!5508572) (not b!5508568) (not b!5508577) (not b!5508586) (not b!5508574))
(check-sat)
(get-model)

(declare-fun d!1745542 () Bool)

(declare-fun choose!41862 ((InoxSet Context!9754) Int) (InoxSet Context!9754))

(assert (=> d!1745542 (= (flatMap!1106 z!1189 lambda!295061) (choose!41862 z!1189 lambda!295061))))

(declare-fun bs!1270133 () Bool)

(assert (= bs!1270133 d!1745542))

(declare-fun m!6514324 () Bool)

(assert (=> bs!1270133 m!6514324))

(assert (=> b!5508568 d!1745542))

(declare-fun d!1745546 () Bool)

(declare-fun c!962529 () Bool)

(declare-fun e!3406861 () Bool)

(assert (=> d!1745546 (= c!962529 e!3406861)))

(declare-fun res!2347493 () Bool)

(assert (=> d!1745546 (=> (not res!2347493) (not e!3406861))))

(assert (=> d!1745546 (= res!2347493 ((_ is Cons!62654) (exprs!5377 (h!69104 zl!343))))))

(declare-fun e!3406862 () (InoxSet Context!9754))

(assert (=> d!1745546 (= (derivationStepZipperUp!761 (h!69104 zl!343) (h!69103 s!2326)) e!3406862)))

(declare-fun bm!407102 () Bool)

(declare-fun call!407107 () (InoxSet Context!9754))

(assert (=> bm!407102 (= call!407107 (derivationStepZipperDown!835 (h!69102 (exprs!5377 (h!69104 zl!343))) (Context!9755 (t!376021 (exprs!5377 (h!69104 zl!343)))) (h!69103 s!2326)))))

(declare-fun b!5508621 () Bool)

(assert (=> b!5508621 (= e!3406861 (nullable!5527 (h!69102 (exprs!5377 (h!69104 zl!343)))))))

(declare-fun b!5508622 () Bool)

(declare-fun e!3406863 () (InoxSet Context!9754))

(assert (=> b!5508622 (= e!3406863 ((as const (Array Context!9754 Bool)) false))))

(declare-fun b!5508623 () Bool)

(assert (=> b!5508623 (= e!3406863 call!407107)))

(declare-fun b!5508624 () Bool)

(assert (=> b!5508624 (= e!3406862 ((_ map or) call!407107 (derivationStepZipperUp!761 (Context!9755 (t!376021 (exprs!5377 (h!69104 zl!343)))) (h!69103 s!2326))))))

(declare-fun b!5508625 () Bool)

(assert (=> b!5508625 (= e!3406862 e!3406863)))

(declare-fun c!962528 () Bool)

(assert (=> b!5508625 (= c!962528 ((_ is Cons!62654) (exprs!5377 (h!69104 zl!343))))))

(assert (= (and d!1745546 res!2347493) b!5508621))

(assert (= (and d!1745546 c!962529) b!5508624))

(assert (= (and d!1745546 (not c!962529)) b!5508625))

(assert (= (and b!5508625 c!962528) b!5508623))

(assert (= (and b!5508625 (not c!962528)) b!5508622))

(assert (= (or b!5508624 b!5508623) bm!407102))

(declare-fun m!6514346 () Bool)

(assert (=> bm!407102 m!6514346))

(declare-fun m!6514348 () Bool)

(assert (=> b!5508621 m!6514348))

(declare-fun m!6514350 () Bool)

(assert (=> b!5508624 m!6514350))

(assert (=> b!5508568 d!1745546))

(declare-fun d!1745556 () Bool)

(declare-fun dynLambda!24480 (Int Context!9754) (InoxSet Context!9754))

(assert (=> d!1745556 (= (flatMap!1106 z!1189 lambda!295061) (dynLambda!24480 lambda!295061 (h!69104 zl!343)))))

(declare-fun lt!2244740 () Unit!155446)

(declare-fun choose!41863 ((InoxSet Context!9754) Context!9754 Int) Unit!155446)

(assert (=> d!1745556 (= lt!2244740 (choose!41863 z!1189 (h!69104 zl!343) lambda!295061))))

(assert (=> d!1745556 (= z!1189 (store ((as const (Array Context!9754 Bool)) false) (h!69104 zl!343) true))))

(assert (=> d!1745556 (= (lemmaFlatMapOnSingletonSet!638 z!1189 (h!69104 zl!343) lambda!295061) lt!2244740)))

(declare-fun b_lambda!208853 () Bool)

(assert (=> (not b_lambda!208853) (not d!1745556)))

(declare-fun bs!1270136 () Bool)

(assert (= bs!1270136 d!1745556))

(assert (=> bs!1270136 m!6514260))

(declare-fun m!6514352 () Bool)

(assert (=> bs!1270136 m!6514352))

(declare-fun m!6514354 () Bool)

(assert (=> bs!1270136 m!6514354))

(declare-fun m!6514356 () Bool)

(assert (=> bs!1270136 m!6514356))

(assert (=> b!5508568 d!1745556))

(declare-fun b!5508675 () Bool)

(declare-fun e!3406895 () Bool)

(declare-fun e!3406901 () Bool)

(assert (=> b!5508675 (= e!3406895 e!3406901)))

(declare-fun c!962540 () Bool)

(assert (=> b!5508675 (= c!962540 ((_ is Star!15493) r!7292))))

(declare-fun bm!407109 () Bool)

(declare-fun call!407115 () Bool)

(declare-fun c!962541 () Bool)

(assert (=> bm!407109 (= call!407115 (validRegex!7229 (ite c!962541 (regOne!31499 r!7292) (regOne!31498 r!7292))))))

(declare-fun b!5508676 () Bool)

(declare-fun e!3406898 () Bool)

(assert (=> b!5508676 (= e!3406901 e!3406898)))

(declare-fun res!2347526 () Bool)

(assert (=> b!5508676 (= res!2347526 (not (nullable!5527 (reg!15822 r!7292))))))

(assert (=> b!5508676 (=> (not res!2347526) (not e!3406898))))

(declare-fun b!5508677 () Bool)

(declare-fun res!2347525 () Bool)

(declare-fun e!3406900 () Bool)

(assert (=> b!5508677 (=> res!2347525 e!3406900)))

(assert (=> b!5508677 (= res!2347525 (not ((_ is Concat!24338) r!7292)))))

(declare-fun e!3406896 () Bool)

(assert (=> b!5508677 (= e!3406896 e!3406900)))

(declare-fun b!5508678 () Bool)

(declare-fun e!3406899 () Bool)

(declare-fun call!407114 () Bool)

(assert (=> b!5508678 (= e!3406899 call!407114)))

(declare-fun b!5508679 () Bool)

(declare-fun call!407116 () Bool)

(assert (=> b!5508679 (= e!3406898 call!407116)))

(declare-fun b!5508680 () Bool)

(declare-fun e!3406897 () Bool)

(assert (=> b!5508680 (= e!3406897 call!407114)))

(declare-fun bm!407110 () Bool)

(assert (=> bm!407110 (= call!407114 call!407116)))

(declare-fun b!5508682 () Bool)

(assert (=> b!5508682 (= e!3406901 e!3406896)))

(assert (=> b!5508682 (= c!962541 ((_ is Union!15493) r!7292))))

(declare-fun b!5508683 () Bool)

(assert (=> b!5508683 (= e!3406900 e!3406899)))

(declare-fun res!2347524 () Bool)

(assert (=> b!5508683 (=> (not res!2347524) (not e!3406899))))

(assert (=> b!5508683 (= res!2347524 call!407115)))

(declare-fun bm!407111 () Bool)

(assert (=> bm!407111 (= call!407116 (validRegex!7229 (ite c!962540 (reg!15822 r!7292) (ite c!962541 (regTwo!31499 r!7292) (regTwo!31498 r!7292)))))))

(declare-fun d!1745558 () Bool)

(declare-fun res!2347523 () Bool)

(assert (=> d!1745558 (=> res!2347523 e!3406895)))

(assert (=> d!1745558 (= res!2347523 ((_ is ElementMatch!15493) r!7292))))

(assert (=> d!1745558 (= (validRegex!7229 r!7292) e!3406895)))

(declare-fun b!5508681 () Bool)

(declare-fun res!2347527 () Bool)

(assert (=> b!5508681 (=> (not res!2347527) (not e!3406897))))

(assert (=> b!5508681 (= res!2347527 call!407115)))

(assert (=> b!5508681 (= e!3406896 e!3406897)))

(assert (= (and d!1745558 (not res!2347523)) b!5508675))

(assert (= (and b!5508675 c!962540) b!5508676))

(assert (= (and b!5508675 (not c!962540)) b!5508682))

(assert (= (and b!5508676 res!2347526) b!5508679))

(assert (= (and b!5508682 c!962541) b!5508681))

(assert (= (and b!5508682 (not c!962541)) b!5508677))

(assert (= (and b!5508681 res!2347527) b!5508680))

(assert (= (and b!5508677 (not res!2347525)) b!5508683))

(assert (= (and b!5508683 res!2347524) b!5508678))

(assert (= (or b!5508680 b!5508678) bm!407110))

(assert (= (or b!5508681 b!5508683) bm!407109))

(assert (= (or b!5508679 bm!407110) bm!407111))

(declare-fun m!6514390 () Bool)

(assert (=> bm!407109 m!6514390))

(declare-fun m!6514392 () Bool)

(assert (=> b!5508676 m!6514392))

(declare-fun m!6514394 () Bool)

(assert (=> bm!407111 m!6514394))

(assert (=> start!575262 d!1745558))

(declare-fun b!5508782 () Bool)

(declare-fun e!3406957 () Option!15502)

(assert (=> b!5508782 (= e!3406957 None!15501)))

(declare-fun b!5508783 () Bool)

(declare-fun e!3406955 () Bool)

(declare-fun lt!2244768 () Option!15502)

(assert (=> b!5508783 (= e!3406955 (not (isDefined!12205 lt!2244768)))))

(declare-fun b!5508784 () Bool)

(declare-fun res!2347555 () Bool)

(declare-fun e!3406958 () Bool)

(assert (=> b!5508784 (=> (not res!2347555) (not e!3406958))))

(declare-fun get!21561 (Option!15502) tuple2!65180)

(assert (=> b!5508784 (= res!2347555 (matchR!7678 (regOne!31498 r!7292) (_1!35893 (get!21561 lt!2244768))))))

(declare-fun b!5508785 () Bool)

(declare-fun ++!13747 (List!62779 List!62779) List!62779)

(assert (=> b!5508785 (= e!3406958 (= (++!13747 (_1!35893 (get!21561 lt!2244768)) (_2!35893 (get!21561 lt!2244768))) s!2326))))

(declare-fun b!5508786 () Bool)

(declare-fun e!3406959 () Option!15502)

(assert (=> b!5508786 (= e!3406959 (Some!15501 (tuple2!65181 Nil!62655 s!2326)))))

(declare-fun b!5508787 () Bool)

(assert (=> b!5508787 (= e!3406959 e!3406957)))

(declare-fun c!962579 () Bool)

(assert (=> b!5508787 (= c!962579 ((_ is Nil!62655) s!2326))))

(declare-fun b!5508788 () Bool)

(declare-fun res!2347557 () Bool)

(assert (=> b!5508788 (=> (not res!2347557) (not e!3406958))))

(assert (=> b!5508788 (= res!2347557 (matchR!7678 (regTwo!31498 r!7292) (_2!35893 (get!21561 lt!2244768))))))

(declare-fun d!1745568 () Bool)

(assert (=> d!1745568 e!3406955))

(declare-fun res!2347556 () Bool)

(assert (=> d!1745568 (=> res!2347556 e!3406955)))

(assert (=> d!1745568 (= res!2347556 e!3406958)))

(declare-fun res!2347558 () Bool)

(assert (=> d!1745568 (=> (not res!2347558) (not e!3406958))))

(assert (=> d!1745568 (= res!2347558 (isDefined!12205 lt!2244768))))

(assert (=> d!1745568 (= lt!2244768 e!3406959)))

(declare-fun c!962580 () Bool)

(declare-fun e!3406956 () Bool)

(assert (=> d!1745568 (= c!962580 e!3406956)))

(declare-fun res!2347554 () Bool)

(assert (=> d!1745568 (=> (not res!2347554) (not e!3406956))))

(assert (=> d!1745568 (= res!2347554 (matchR!7678 (regOne!31498 r!7292) Nil!62655))))

(assert (=> d!1745568 (validRegex!7229 (regOne!31498 r!7292))))

(assert (=> d!1745568 (= (findConcatSeparation!1916 (regOne!31498 r!7292) (regTwo!31498 r!7292) Nil!62655 s!2326 s!2326) lt!2244768)))

(declare-fun b!5508789 () Bool)

(declare-fun lt!2244769 () Unit!155446)

(declare-fun lt!2244767 () Unit!155446)

(assert (=> b!5508789 (= lt!2244769 lt!2244767)))

(assert (=> b!5508789 (= (++!13747 (++!13747 Nil!62655 (Cons!62655 (h!69103 s!2326) Nil!62655)) (t!376022 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1916 (List!62779 C!31256 List!62779 List!62779) Unit!155446)

(assert (=> b!5508789 (= lt!2244767 (lemmaMoveElementToOtherListKeepsConcatEq!1916 Nil!62655 (h!69103 s!2326) (t!376022 s!2326) s!2326))))

(assert (=> b!5508789 (= e!3406957 (findConcatSeparation!1916 (regOne!31498 r!7292) (regTwo!31498 r!7292) (++!13747 Nil!62655 (Cons!62655 (h!69103 s!2326) Nil!62655)) (t!376022 s!2326) s!2326))))

(declare-fun b!5508790 () Bool)

(assert (=> b!5508790 (= e!3406956 (matchR!7678 (regTwo!31498 r!7292) s!2326))))

(assert (= (and d!1745568 res!2347554) b!5508790))

(assert (= (and d!1745568 c!962580) b!5508786))

(assert (= (and d!1745568 (not c!962580)) b!5508787))

(assert (= (and b!5508787 c!962579) b!5508782))

(assert (= (and b!5508787 (not c!962579)) b!5508789))

(assert (= (and d!1745568 res!2347558) b!5508784))

(assert (= (and b!5508784 res!2347555) b!5508788))

(assert (= (and b!5508788 res!2347557) b!5508785))

(assert (= (and d!1745568 (not res!2347556)) b!5508783))

(declare-fun m!6514466 () Bool)

(assert (=> b!5508785 m!6514466))

(declare-fun m!6514468 () Bool)

(assert (=> b!5508785 m!6514468))

(declare-fun m!6514470 () Bool)

(assert (=> b!5508783 m!6514470))

(assert (=> d!1745568 m!6514470))

(declare-fun m!6514472 () Bool)

(assert (=> d!1745568 m!6514472))

(declare-fun m!6514474 () Bool)

(assert (=> d!1745568 m!6514474))

(assert (=> b!5508788 m!6514466))

(declare-fun m!6514476 () Bool)

(assert (=> b!5508788 m!6514476))

(declare-fun m!6514478 () Bool)

(assert (=> b!5508790 m!6514478))

(assert (=> b!5508784 m!6514466))

(declare-fun m!6514480 () Bool)

(assert (=> b!5508784 m!6514480))

(declare-fun m!6514482 () Bool)

(assert (=> b!5508789 m!6514482))

(assert (=> b!5508789 m!6514482))

(declare-fun m!6514484 () Bool)

(assert (=> b!5508789 m!6514484))

(declare-fun m!6514486 () Bool)

(assert (=> b!5508789 m!6514486))

(assert (=> b!5508789 m!6514482))

(declare-fun m!6514488 () Bool)

(assert (=> b!5508789 m!6514488))

(assert (=> b!5508569 d!1745568))

(declare-fun d!1745604 () Bool)

(declare-fun choose!41864 (Int) Bool)

(assert (=> d!1745604 (= (Exists!2593 lambda!295060) (choose!41864 lambda!295060))))

(declare-fun bs!1270154 () Bool)

(assert (= bs!1270154 d!1745604))

(declare-fun m!6514490 () Bool)

(assert (=> bs!1270154 m!6514490))

(assert (=> b!5508569 d!1745604))

(declare-fun d!1745606 () Bool)

(assert (=> d!1745606 (= (Exists!2593 lambda!295059) (choose!41864 lambda!295059))))

(declare-fun bs!1270155 () Bool)

(assert (= bs!1270155 d!1745606))

(declare-fun m!6514492 () Bool)

(assert (=> bs!1270155 m!6514492))

(assert (=> b!5508569 d!1745606))

(declare-fun bs!1270163 () Bool)

(declare-fun d!1745608 () Bool)

(assert (= bs!1270163 (and d!1745608 b!5508569)))

(declare-fun lambda!295085 () Int)

(assert (=> bs!1270163 (= lambda!295085 lambda!295059)))

(assert (=> bs!1270163 (not (= lambda!295085 lambda!295060))))

(assert (=> d!1745608 true))

(assert (=> d!1745608 true))

(assert (=> d!1745608 true))

(assert (=> d!1745608 (= (isDefined!12205 (findConcatSeparation!1916 (regOne!31498 r!7292) (regTwo!31498 r!7292) Nil!62655 s!2326 s!2326)) (Exists!2593 lambda!295085))))

(declare-fun lt!2244774 () Unit!155446)

(declare-fun choose!41865 (Regex!15493 Regex!15493 List!62779) Unit!155446)

(assert (=> d!1745608 (= lt!2244774 (choose!41865 (regOne!31498 r!7292) (regTwo!31498 r!7292) s!2326))))

(assert (=> d!1745608 (validRegex!7229 (regOne!31498 r!7292))))

(assert (=> d!1745608 (= (lemmaFindConcatSeparationEquivalentToExists!1680 (regOne!31498 r!7292) (regTwo!31498 r!7292) s!2326) lt!2244774)))

(declare-fun bs!1270164 () Bool)

(assert (= bs!1270164 d!1745608))

(declare-fun m!6514508 () Bool)

(assert (=> bs!1270164 m!6514508))

(declare-fun m!6514514 () Bool)

(assert (=> bs!1270164 m!6514514))

(assert (=> bs!1270164 m!6514474))

(assert (=> bs!1270164 m!6514282))

(assert (=> bs!1270164 m!6514282))

(assert (=> bs!1270164 m!6514284))

(assert (=> b!5508569 d!1745608))

(declare-fun bs!1270170 () Bool)

(declare-fun d!1745614 () Bool)

(assert (= bs!1270170 (and d!1745614 b!5508569)))

(declare-fun lambda!295094 () Int)

(assert (=> bs!1270170 (= lambda!295094 lambda!295059)))

(assert (=> bs!1270170 (not (= lambda!295094 lambda!295060))))

(declare-fun bs!1270171 () Bool)

(assert (= bs!1270171 (and d!1745614 d!1745608)))

(assert (=> bs!1270171 (= lambda!295094 lambda!295085)))

(assert (=> d!1745614 true))

(assert (=> d!1745614 true))

(assert (=> d!1745614 true))

(declare-fun lambda!295095 () Int)

(assert (=> bs!1270170 (not (= lambda!295095 lambda!295059))))

(assert (=> bs!1270170 (= lambda!295095 lambda!295060)))

(assert (=> bs!1270171 (not (= lambda!295095 lambda!295085))))

(declare-fun bs!1270172 () Bool)

(assert (= bs!1270172 d!1745614))

(assert (=> bs!1270172 (not (= lambda!295095 lambda!295094))))

(assert (=> d!1745614 true))

(assert (=> d!1745614 true))

(assert (=> d!1745614 true))

(assert (=> d!1745614 (= (Exists!2593 lambda!295094) (Exists!2593 lambda!295095))))

(declare-fun lt!2244784 () Unit!155446)

(declare-fun choose!41867 (Regex!15493 Regex!15493 List!62779) Unit!155446)

(assert (=> d!1745614 (= lt!2244784 (choose!41867 (regOne!31498 r!7292) (regTwo!31498 r!7292) s!2326))))

(assert (=> d!1745614 (validRegex!7229 (regOne!31498 r!7292))))

(assert (=> d!1745614 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1222 (regOne!31498 r!7292) (regTwo!31498 r!7292) s!2326) lt!2244784)))

(declare-fun m!6514546 () Bool)

(assert (=> bs!1270172 m!6514546))

(declare-fun m!6514548 () Bool)

(assert (=> bs!1270172 m!6514548))

(declare-fun m!6514550 () Bool)

(assert (=> bs!1270172 m!6514550))

(assert (=> bs!1270172 m!6514474))

(assert (=> b!5508569 d!1745614))

(declare-fun d!1745624 () Bool)

(declare-fun isEmpty!34437 (Option!15502) Bool)

(assert (=> d!1745624 (= (isDefined!12205 (findConcatSeparation!1916 (regOne!31498 r!7292) (regTwo!31498 r!7292) Nil!62655 s!2326 s!2326)) (not (isEmpty!34437 (findConcatSeparation!1916 (regOne!31498 r!7292) (regTwo!31498 r!7292) Nil!62655 s!2326 s!2326))))))

(declare-fun bs!1270173 () Bool)

(assert (= bs!1270173 d!1745624))

(assert (=> bs!1270173 m!6514282))

(declare-fun m!6514552 () Bool)

(assert (=> bs!1270173 m!6514552))

(assert (=> b!5508569 d!1745624))

(declare-fun b!5509055 () Bool)

(declare-fun e!3407110 () Bool)

(declare-fun lt!2244793 () Regex!15493)

(declare-fun head!11800 (List!62778) Regex!15493)

(assert (=> b!5509055 (= e!3407110 (= lt!2244793 (head!11800 (exprs!5377 (h!69104 zl!343)))))))

(declare-fun b!5509056 () Bool)

(declare-fun e!3407109 () Regex!15493)

(assert (=> b!5509056 (= e!3407109 EmptyExpr!15493)))

(declare-fun b!5509057 () Bool)

(assert (=> b!5509057 (= e!3407109 (Concat!24338 (h!69102 (exprs!5377 (h!69104 zl!343))) (generalisedConcat!1108 (t!376021 (exprs!5377 (h!69104 zl!343))))))))

(declare-fun b!5509058 () Bool)

(declare-fun e!3407111 () Bool)

(assert (=> b!5509058 (= e!3407111 e!3407110)))

(declare-fun c!962645 () Bool)

(declare-fun tail!10896 (List!62778) List!62778)

(assert (=> b!5509058 (= c!962645 (isEmpty!34434 (tail!10896 (exprs!5377 (h!69104 zl!343)))))))

(declare-fun b!5509059 () Bool)

(declare-fun e!3407107 () Regex!15493)

(assert (=> b!5509059 (= e!3407107 e!3407109)))

(declare-fun c!962644 () Bool)

(assert (=> b!5509059 (= c!962644 ((_ is Cons!62654) (exprs!5377 (h!69104 zl!343))))))

(declare-fun b!5509060 () Bool)

(declare-fun e!3407108 () Bool)

(assert (=> b!5509060 (= e!3407108 e!3407111)))

(declare-fun c!962643 () Bool)

(assert (=> b!5509060 (= c!962643 (isEmpty!34434 (exprs!5377 (h!69104 zl!343))))))

(declare-fun b!5509062 () Bool)

(declare-fun isConcat!594 (Regex!15493) Bool)

(assert (=> b!5509062 (= e!3407110 (isConcat!594 lt!2244793))))

(declare-fun b!5509063 () Bool)

(declare-fun isEmptyExpr!1071 (Regex!15493) Bool)

(assert (=> b!5509063 (= e!3407111 (isEmptyExpr!1071 lt!2244793))))

(declare-fun b!5509064 () Bool)

(declare-fun e!3407112 () Bool)

(assert (=> b!5509064 (= e!3407112 (isEmpty!34434 (t!376021 (exprs!5377 (h!69104 zl!343)))))))

(declare-fun d!1745626 () Bool)

(assert (=> d!1745626 e!3407108))

(declare-fun res!2347645 () Bool)

(assert (=> d!1745626 (=> (not res!2347645) (not e!3407108))))

(assert (=> d!1745626 (= res!2347645 (validRegex!7229 lt!2244793))))

(assert (=> d!1745626 (= lt!2244793 e!3407107)))

(declare-fun c!962646 () Bool)

(assert (=> d!1745626 (= c!962646 e!3407112)))

(declare-fun res!2347646 () Bool)

(assert (=> d!1745626 (=> (not res!2347646) (not e!3407112))))

(assert (=> d!1745626 (= res!2347646 ((_ is Cons!62654) (exprs!5377 (h!69104 zl!343))))))

(declare-fun lambda!295104 () Int)

(declare-fun forall!14673 (List!62778 Int) Bool)

(assert (=> d!1745626 (forall!14673 (exprs!5377 (h!69104 zl!343)) lambda!295104)))

(assert (=> d!1745626 (= (generalisedConcat!1108 (exprs!5377 (h!69104 zl!343))) lt!2244793)))

(declare-fun b!5509061 () Bool)

(assert (=> b!5509061 (= e!3407107 (h!69102 (exprs!5377 (h!69104 zl!343))))))

(assert (= (and d!1745626 res!2347646) b!5509064))

(assert (= (and d!1745626 c!962646) b!5509061))

(assert (= (and d!1745626 (not c!962646)) b!5509059))

(assert (= (and b!5509059 c!962644) b!5509057))

(assert (= (and b!5509059 (not c!962644)) b!5509056))

(assert (= (and d!1745626 res!2347645) b!5509060))

(assert (= (and b!5509060 c!962643) b!5509063))

(assert (= (and b!5509060 (not c!962643)) b!5509058))

(assert (= (and b!5509058 c!962645) b!5509055))

(assert (= (and b!5509058 (not c!962645)) b!5509062))

(declare-fun m!6514582 () Bool)

(assert (=> b!5509063 m!6514582))

(declare-fun m!6514584 () Bool)

(assert (=> b!5509055 m!6514584))

(declare-fun m!6514586 () Bool)

(assert (=> b!5509062 m!6514586))

(declare-fun m!6514588 () Bool)

(assert (=> d!1745626 m!6514588))

(declare-fun m!6514590 () Bool)

(assert (=> d!1745626 m!6514590))

(declare-fun m!6514592 () Bool)

(assert (=> b!5509060 m!6514592))

(declare-fun m!6514594 () Bool)

(assert (=> b!5509057 m!6514594))

(declare-fun m!6514596 () Bool)

(assert (=> b!5509058 m!6514596))

(assert (=> b!5509058 m!6514596))

(declare-fun m!6514598 () Bool)

(assert (=> b!5509058 m!6514598))

(assert (=> b!5509064 m!6514314))

(assert (=> b!5508578 d!1745626))

(declare-fun d!1745638 () Bool)

(declare-fun lt!2244796 () Regex!15493)

(assert (=> d!1745638 (validRegex!7229 lt!2244796)))

(assert (=> d!1745638 (= lt!2244796 (generalisedUnion!1356 (unfocusZipperList!921 zl!343)))))

(assert (=> d!1745638 (= (unfocusZipper!1235 zl!343) lt!2244796)))

(declare-fun bs!1270184 () Bool)

(assert (= bs!1270184 d!1745638))

(declare-fun m!6514600 () Bool)

(assert (=> bs!1270184 m!6514600))

(assert (=> bs!1270184 m!6514252))

(assert (=> bs!1270184 m!6514252))

(assert (=> bs!1270184 m!6514254))

(assert (=> b!5508571 d!1745638))

(declare-fun d!1745640 () Bool)

(assert (=> d!1745640 (= (isEmpty!34434 (t!376021 (exprs!5377 (h!69104 zl!343)))) ((_ is Nil!62654) (t!376021 (exprs!5377 (h!69104 zl!343)))))))

(assert (=> b!5508572 d!1745640))

(declare-fun bs!1270185 () Bool)

(declare-fun d!1745642 () Bool)

(assert (= bs!1270185 (and d!1745642 d!1745626)))

(declare-fun lambda!295107 () Int)

(assert (=> bs!1270185 (= lambda!295107 lambda!295104)))

(assert (=> d!1745642 (= (inv!81979 (h!69104 zl!343)) (forall!14673 (exprs!5377 (h!69104 zl!343)) lambda!295107))))

(declare-fun bs!1270186 () Bool)

(assert (= bs!1270186 d!1745642))

(declare-fun m!6514602 () Bool)

(assert (=> bs!1270186 m!6514602))

(assert (=> b!5508581 d!1745642))

(declare-fun bs!1270187 () Bool)

(declare-fun d!1745644 () Bool)

(assert (= bs!1270187 (and d!1745644 d!1745626)))

(declare-fun lambda!295108 () Int)

(assert (=> bs!1270187 (= lambda!295108 lambda!295104)))

(declare-fun bs!1270188 () Bool)

(assert (= bs!1270188 (and d!1745644 d!1745642)))

(assert (=> bs!1270188 (= lambda!295108 lambda!295107)))

(assert (=> d!1745644 (= (inv!81979 setElem!36567) (forall!14673 (exprs!5377 setElem!36567) lambda!295108))))

(declare-fun bs!1270189 () Bool)

(assert (= bs!1270189 d!1745644))

(declare-fun m!6514604 () Bool)

(assert (=> bs!1270189 m!6514604))

(assert (=> setNonEmpty!36567 d!1745644))

(declare-fun d!1745646 () Bool)

(declare-fun e!3407115 () Bool)

(assert (=> d!1745646 e!3407115))

(declare-fun res!2347649 () Bool)

(assert (=> d!1745646 (=> (not res!2347649) (not e!3407115))))

(declare-fun lt!2244799 () List!62780)

(declare-fun noDuplicate!1492 (List!62780) Bool)

(assert (=> d!1745646 (= res!2347649 (noDuplicate!1492 lt!2244799))))

(declare-fun choose!41868 ((InoxSet Context!9754)) List!62780)

(assert (=> d!1745646 (= lt!2244799 (choose!41868 z!1189))))

(assert (=> d!1745646 (= (toList!9277 z!1189) lt!2244799)))

(declare-fun b!5509067 () Bool)

(declare-fun content!11255 (List!62780) (InoxSet Context!9754))

(assert (=> b!5509067 (= e!3407115 (= (content!11255 lt!2244799) z!1189))))

(assert (= (and d!1745646 res!2347649) b!5509067))

(declare-fun m!6514606 () Bool)

(assert (=> d!1745646 m!6514606))

(declare-fun m!6514608 () Bool)

(assert (=> d!1745646 m!6514608))

(declare-fun m!6514610 () Bool)

(assert (=> b!5509067 m!6514610))

(assert (=> b!5508582 d!1745646))

(declare-fun d!1745648 () Bool)

(declare-fun nullableFct!1657 (Regex!15493) Bool)

(assert (=> d!1745648 (= (nullable!5527 (regOne!31498 r!7292)) (nullableFct!1657 (regOne!31498 r!7292)))))

(declare-fun bs!1270190 () Bool)

(assert (= bs!1270190 d!1745648))

(declare-fun m!6514612 () Bool)

(assert (=> bs!1270190 m!6514612))

(assert (=> b!5508574 d!1745648))

(declare-fun b!5509090 () Bool)

(declare-fun e!3407133 () (InoxSet Context!9754))

(assert (=> b!5509090 (= e!3407133 ((as const (Array Context!9754 Bool)) false))))

(declare-fun bm!407175 () Bool)

(declare-fun call!407185 () (InoxSet Context!9754))

(declare-fun call!407184 () (InoxSet Context!9754))

(assert (=> bm!407175 (= call!407185 call!407184)))

(declare-fun bm!407176 () Bool)

(declare-fun call!407181 () (InoxSet Context!9754))

(assert (=> bm!407176 (= call!407181 call!407185)))

(declare-fun bm!407177 () Bool)

(declare-fun call!407180 () List!62778)

(declare-fun c!962658 () Bool)

(declare-fun c!962659 () Bool)

(declare-fun c!962661 () Bool)

(assert (=> bm!407177 (= call!407184 (derivationStepZipperDown!835 (ite c!962658 (regTwo!31499 (regOne!31498 r!7292)) (ite c!962661 (regTwo!31498 (regOne!31498 r!7292)) (ite c!962659 (regOne!31498 (regOne!31498 r!7292)) (reg!15822 (regOne!31498 r!7292))))) (ite (or c!962658 c!962661) lt!2244721 (Context!9755 call!407180)) (h!69103 s!2326)))))

(declare-fun b!5509091 () Bool)

(declare-fun e!3407129 () (InoxSet Context!9754))

(declare-fun call!407182 () (InoxSet Context!9754))

(assert (=> b!5509091 (= e!3407129 ((_ map or) call!407182 call!407184))))

(declare-fun b!5509092 () Bool)

(declare-fun e!3407132 () Bool)

(assert (=> b!5509092 (= e!3407132 (nullable!5527 (regOne!31498 (regOne!31498 r!7292))))))

(declare-fun d!1745650 () Bool)

(declare-fun c!962660 () Bool)

(assert (=> d!1745650 (= c!962660 (and ((_ is ElementMatch!15493) (regOne!31498 r!7292)) (= (c!962517 (regOne!31498 r!7292)) (h!69103 s!2326))))))

(declare-fun e!3407131 () (InoxSet Context!9754))

(assert (=> d!1745650 (= (derivationStepZipperDown!835 (regOne!31498 r!7292) lt!2244721 (h!69103 s!2326)) e!3407131)))

(declare-fun b!5509093 () Bool)

(assert (=> b!5509093 (= c!962661 e!3407132)))

(declare-fun res!2347652 () Bool)

(assert (=> b!5509093 (=> (not res!2347652) (not e!3407132))))

(assert (=> b!5509093 (= res!2347652 ((_ is Concat!24338) (regOne!31498 r!7292)))))

(declare-fun e!3407130 () (InoxSet Context!9754))

(assert (=> b!5509093 (= e!3407129 e!3407130)))

(declare-fun b!5509094 () Bool)

(declare-fun e!3407128 () (InoxSet Context!9754))

(assert (=> b!5509094 (= e!3407128 call!407181)))

(declare-fun b!5509095 () Bool)

(assert (=> b!5509095 (= e!3407130 e!3407128)))

(assert (=> b!5509095 (= c!962659 ((_ is Concat!24338) (regOne!31498 r!7292)))))

(declare-fun bm!407178 () Bool)

(declare-fun call!407183 () List!62778)

(declare-fun $colon$colon!1578 (List!62778 Regex!15493) List!62778)

(assert (=> bm!407178 (= call!407183 ($colon$colon!1578 (exprs!5377 lt!2244721) (ite (or c!962661 c!962659) (regTwo!31498 (regOne!31498 r!7292)) (regOne!31498 r!7292))))))

(declare-fun bm!407179 () Bool)

(assert (=> bm!407179 (= call!407182 (derivationStepZipperDown!835 (ite c!962658 (regOne!31499 (regOne!31498 r!7292)) (regOne!31498 (regOne!31498 r!7292))) (ite c!962658 lt!2244721 (Context!9755 call!407183)) (h!69103 s!2326)))))

(declare-fun b!5509096 () Bool)

(assert (=> b!5509096 (= e!3407130 ((_ map or) call!407182 call!407185))))

(declare-fun bm!407180 () Bool)

(assert (=> bm!407180 (= call!407180 call!407183)))

(declare-fun b!5509097 () Bool)

(assert (=> b!5509097 (= e!3407131 e!3407129)))

(assert (=> b!5509097 (= c!962658 ((_ is Union!15493) (regOne!31498 r!7292)))))

(declare-fun b!5509098 () Bool)

(declare-fun c!962657 () Bool)

(assert (=> b!5509098 (= c!962657 ((_ is Star!15493) (regOne!31498 r!7292)))))

(assert (=> b!5509098 (= e!3407128 e!3407133)))

(declare-fun b!5509099 () Bool)

(assert (=> b!5509099 (= e!3407131 (store ((as const (Array Context!9754 Bool)) false) lt!2244721 true))))

(declare-fun b!5509100 () Bool)

(assert (=> b!5509100 (= e!3407133 call!407181)))

(assert (= (and d!1745650 c!962660) b!5509099))

(assert (= (and d!1745650 (not c!962660)) b!5509097))

(assert (= (and b!5509097 c!962658) b!5509091))

(assert (= (and b!5509097 (not c!962658)) b!5509093))

(assert (= (and b!5509093 res!2347652) b!5509092))

(assert (= (and b!5509093 c!962661) b!5509096))

(assert (= (and b!5509093 (not c!962661)) b!5509095))

(assert (= (and b!5509095 c!962659) b!5509094))

(assert (= (and b!5509095 (not c!962659)) b!5509098))

(assert (= (and b!5509098 c!962657) b!5509100))

(assert (= (and b!5509098 (not c!962657)) b!5509090))

(assert (= (or b!5509094 b!5509100) bm!407180))

(assert (= (or b!5509094 b!5509100) bm!407176))

(assert (= (or b!5509096 bm!407180) bm!407178))

(assert (= (or b!5509096 bm!407176) bm!407175))

(assert (= (or b!5509091 bm!407175) bm!407177))

(assert (= (or b!5509091 b!5509096) bm!407179))

(declare-fun m!6514614 () Bool)

(assert (=> bm!407177 m!6514614))

(declare-fun m!6514616 () Bool)

(assert (=> bm!407178 m!6514616))

(assert (=> b!5509099 m!6514296))

(declare-fun m!6514618 () Bool)

(assert (=> bm!407179 m!6514618))

(declare-fun m!6514620 () Bool)

(assert (=> b!5509092 m!6514620))

(assert (=> b!5508574 d!1745650))

(declare-fun d!1745652 () Bool)

(assert (=> d!1745652 (= (flatMap!1106 lt!2244713 lambda!295061) (choose!41862 lt!2244713 lambda!295061))))

(declare-fun bs!1270191 () Bool)

(assert (= bs!1270191 d!1745652))

(declare-fun m!6514622 () Bool)

(assert (=> bs!1270191 m!6514622))

(assert (=> b!5508574 d!1745652))

(declare-fun d!1745654 () Bool)

(assert (=> d!1745654 (= (flatMap!1106 lt!2244712 lambda!295061) (dynLambda!24480 lambda!295061 lt!2244721))))

(declare-fun lt!2244800 () Unit!155446)

(assert (=> d!1745654 (= lt!2244800 (choose!41863 lt!2244712 lt!2244721 lambda!295061))))

(assert (=> d!1745654 (= lt!2244712 (store ((as const (Array Context!9754 Bool)) false) lt!2244721 true))))

(assert (=> d!1745654 (= (lemmaFlatMapOnSingletonSet!638 lt!2244712 lt!2244721 lambda!295061) lt!2244800)))

(declare-fun b_lambda!208865 () Bool)

(assert (=> (not b_lambda!208865) (not d!1745654)))

(declare-fun bs!1270192 () Bool)

(assert (= bs!1270192 d!1745654))

(assert (=> bs!1270192 m!6514292))

(declare-fun m!6514624 () Bool)

(assert (=> bs!1270192 m!6514624))

(declare-fun m!6514626 () Bool)

(assert (=> bs!1270192 m!6514626))

(assert (=> bs!1270192 m!6514296))

(assert (=> b!5508574 d!1745654))

(declare-fun d!1745656 () Bool)

(declare-fun c!962663 () Bool)

(declare-fun e!3407134 () Bool)

(assert (=> d!1745656 (= c!962663 e!3407134)))

(declare-fun res!2347653 () Bool)

(assert (=> d!1745656 (=> (not res!2347653) (not e!3407134))))

(assert (=> d!1745656 (= res!2347653 ((_ is Cons!62654) (exprs!5377 lt!2244711)))))

(declare-fun e!3407135 () (InoxSet Context!9754))

(assert (=> d!1745656 (= (derivationStepZipperUp!761 lt!2244711 (h!69103 s!2326)) e!3407135)))

(declare-fun bm!407181 () Bool)

(declare-fun call!407186 () (InoxSet Context!9754))

(assert (=> bm!407181 (= call!407186 (derivationStepZipperDown!835 (h!69102 (exprs!5377 lt!2244711)) (Context!9755 (t!376021 (exprs!5377 lt!2244711))) (h!69103 s!2326)))))

(declare-fun b!5509101 () Bool)

(assert (=> b!5509101 (= e!3407134 (nullable!5527 (h!69102 (exprs!5377 lt!2244711))))))

(declare-fun b!5509102 () Bool)

(declare-fun e!3407136 () (InoxSet Context!9754))

(assert (=> b!5509102 (= e!3407136 ((as const (Array Context!9754 Bool)) false))))

(declare-fun b!5509103 () Bool)

(assert (=> b!5509103 (= e!3407136 call!407186)))

(declare-fun b!5509104 () Bool)

(assert (=> b!5509104 (= e!3407135 ((_ map or) call!407186 (derivationStepZipperUp!761 (Context!9755 (t!376021 (exprs!5377 lt!2244711))) (h!69103 s!2326))))))

(declare-fun b!5509105 () Bool)

(assert (=> b!5509105 (= e!3407135 e!3407136)))

(declare-fun c!962662 () Bool)

(assert (=> b!5509105 (= c!962662 ((_ is Cons!62654) (exprs!5377 lt!2244711)))))

(assert (= (and d!1745656 res!2347653) b!5509101))

(assert (= (and d!1745656 c!962663) b!5509104))

(assert (= (and d!1745656 (not c!962663)) b!5509105))

(assert (= (and b!5509105 c!962662) b!5509103))

(assert (= (and b!5509105 (not c!962662)) b!5509102))

(assert (= (or b!5509104 b!5509103) bm!407181))

(declare-fun m!6514628 () Bool)

(assert (=> bm!407181 m!6514628))

(declare-fun m!6514630 () Bool)

(assert (=> b!5509101 m!6514630))

(declare-fun m!6514632 () Bool)

(assert (=> b!5509104 m!6514632))

(assert (=> b!5508574 d!1745656))

(declare-fun d!1745658 () Bool)

(assert (=> d!1745658 (= (flatMap!1106 lt!2244713 lambda!295061) (dynLambda!24480 lambda!295061 lt!2244711))))

(declare-fun lt!2244801 () Unit!155446)

(assert (=> d!1745658 (= lt!2244801 (choose!41863 lt!2244713 lt!2244711 lambda!295061))))

(assert (=> d!1745658 (= lt!2244713 (store ((as const (Array Context!9754 Bool)) false) lt!2244711 true))))

(assert (=> d!1745658 (= (lemmaFlatMapOnSingletonSet!638 lt!2244713 lt!2244711 lambda!295061) lt!2244801)))

(declare-fun b_lambda!208867 () Bool)

(assert (=> (not b_lambda!208867) (not d!1745658)))

(declare-fun bs!1270193 () Bool)

(assert (= bs!1270193 d!1745658))

(assert (=> bs!1270193 m!6514312))

(declare-fun m!6514634 () Bool)

(assert (=> bs!1270193 m!6514634))

(declare-fun m!6514636 () Bool)

(assert (=> bs!1270193 m!6514636))

(assert (=> bs!1270193 m!6514306))

(assert (=> b!5508574 d!1745658))

(declare-fun d!1745660 () Bool)

(declare-fun c!962665 () Bool)

(declare-fun e!3407137 () Bool)

(assert (=> d!1745660 (= c!962665 e!3407137)))

(declare-fun res!2347654 () Bool)

(assert (=> d!1745660 (=> (not res!2347654) (not e!3407137))))

(assert (=> d!1745660 (= res!2347654 ((_ is Cons!62654) (exprs!5377 lt!2244721)))))

(declare-fun e!3407138 () (InoxSet Context!9754))

(assert (=> d!1745660 (= (derivationStepZipperUp!761 lt!2244721 (h!69103 s!2326)) e!3407138)))

(declare-fun bm!407182 () Bool)

(declare-fun call!407187 () (InoxSet Context!9754))

(assert (=> bm!407182 (= call!407187 (derivationStepZipperDown!835 (h!69102 (exprs!5377 lt!2244721)) (Context!9755 (t!376021 (exprs!5377 lt!2244721))) (h!69103 s!2326)))))

(declare-fun b!5509106 () Bool)

(assert (=> b!5509106 (= e!3407137 (nullable!5527 (h!69102 (exprs!5377 lt!2244721))))))

(declare-fun b!5509107 () Bool)

(declare-fun e!3407139 () (InoxSet Context!9754))

(assert (=> b!5509107 (= e!3407139 ((as const (Array Context!9754 Bool)) false))))

(declare-fun b!5509108 () Bool)

(assert (=> b!5509108 (= e!3407139 call!407187)))

(declare-fun b!5509109 () Bool)

(assert (=> b!5509109 (= e!3407138 ((_ map or) call!407187 (derivationStepZipperUp!761 (Context!9755 (t!376021 (exprs!5377 lt!2244721))) (h!69103 s!2326))))))

(declare-fun b!5509110 () Bool)

(assert (=> b!5509110 (= e!3407138 e!3407139)))

(declare-fun c!962664 () Bool)

(assert (=> b!5509110 (= c!962664 ((_ is Cons!62654) (exprs!5377 lt!2244721)))))

(assert (= (and d!1745660 res!2347654) b!5509106))

(assert (= (and d!1745660 c!962665) b!5509109))

(assert (= (and d!1745660 (not c!962665)) b!5509110))

(assert (= (and b!5509110 c!962664) b!5509108))

(assert (= (and b!5509110 (not c!962664)) b!5509107))

(assert (= (or b!5509109 b!5509108) bm!407182))

(declare-fun m!6514638 () Bool)

(assert (=> bm!407182 m!6514638))

(declare-fun m!6514640 () Bool)

(assert (=> b!5509106 m!6514640))

(declare-fun m!6514642 () Bool)

(assert (=> b!5509109 m!6514642))

(assert (=> b!5508574 d!1745660))

(declare-fun b!5509111 () Bool)

(declare-fun e!3407145 () (InoxSet Context!9754))

(assert (=> b!5509111 (= e!3407145 ((as const (Array Context!9754 Bool)) false))))

(declare-fun bm!407183 () Bool)

(declare-fun call!407193 () (InoxSet Context!9754))

(declare-fun call!407192 () (InoxSet Context!9754))

(assert (=> bm!407183 (= call!407193 call!407192)))

(declare-fun bm!407184 () Bool)

(declare-fun call!407189 () (InoxSet Context!9754))

(assert (=> bm!407184 (= call!407189 call!407193)))

(declare-fun call!407188 () List!62778)

(declare-fun c!962670 () Bool)

(declare-fun c!962668 () Bool)

(declare-fun bm!407185 () Bool)

(declare-fun c!962667 () Bool)

(assert (=> bm!407185 (= call!407192 (derivationStepZipperDown!835 (ite c!962667 (regTwo!31499 (regTwo!31498 r!7292)) (ite c!962670 (regTwo!31498 (regTwo!31498 r!7292)) (ite c!962668 (regOne!31498 (regTwo!31498 r!7292)) (reg!15822 (regTwo!31498 r!7292))))) (ite (or c!962667 c!962670) lt!2244723 (Context!9755 call!407188)) (h!69103 s!2326)))))

(declare-fun b!5509112 () Bool)

(declare-fun e!3407141 () (InoxSet Context!9754))

(declare-fun call!407190 () (InoxSet Context!9754))

(assert (=> b!5509112 (= e!3407141 ((_ map or) call!407190 call!407192))))

(declare-fun b!5509113 () Bool)

(declare-fun e!3407144 () Bool)

(assert (=> b!5509113 (= e!3407144 (nullable!5527 (regOne!31498 (regTwo!31498 r!7292))))))

(declare-fun d!1745662 () Bool)

(declare-fun c!962669 () Bool)

(assert (=> d!1745662 (= c!962669 (and ((_ is ElementMatch!15493) (regTwo!31498 r!7292)) (= (c!962517 (regTwo!31498 r!7292)) (h!69103 s!2326))))))

(declare-fun e!3407143 () (InoxSet Context!9754))

(assert (=> d!1745662 (= (derivationStepZipperDown!835 (regTwo!31498 r!7292) lt!2244723 (h!69103 s!2326)) e!3407143)))

(declare-fun b!5509114 () Bool)

(assert (=> b!5509114 (= c!962670 e!3407144)))

(declare-fun res!2347655 () Bool)

(assert (=> b!5509114 (=> (not res!2347655) (not e!3407144))))

(assert (=> b!5509114 (= res!2347655 ((_ is Concat!24338) (regTwo!31498 r!7292)))))

(declare-fun e!3407142 () (InoxSet Context!9754))

(assert (=> b!5509114 (= e!3407141 e!3407142)))

(declare-fun b!5509115 () Bool)

(declare-fun e!3407140 () (InoxSet Context!9754))

(assert (=> b!5509115 (= e!3407140 call!407189)))

(declare-fun b!5509116 () Bool)

(assert (=> b!5509116 (= e!3407142 e!3407140)))

(assert (=> b!5509116 (= c!962668 ((_ is Concat!24338) (regTwo!31498 r!7292)))))

(declare-fun bm!407186 () Bool)

(declare-fun call!407191 () List!62778)

(assert (=> bm!407186 (= call!407191 ($colon$colon!1578 (exprs!5377 lt!2244723) (ite (or c!962670 c!962668) (regTwo!31498 (regTwo!31498 r!7292)) (regTwo!31498 r!7292))))))

(declare-fun bm!407187 () Bool)

(assert (=> bm!407187 (= call!407190 (derivationStepZipperDown!835 (ite c!962667 (regOne!31499 (regTwo!31498 r!7292)) (regOne!31498 (regTwo!31498 r!7292))) (ite c!962667 lt!2244723 (Context!9755 call!407191)) (h!69103 s!2326)))))

(declare-fun b!5509117 () Bool)

(assert (=> b!5509117 (= e!3407142 ((_ map or) call!407190 call!407193))))

(declare-fun bm!407188 () Bool)

(assert (=> bm!407188 (= call!407188 call!407191)))

(declare-fun b!5509118 () Bool)

(assert (=> b!5509118 (= e!3407143 e!3407141)))

(assert (=> b!5509118 (= c!962667 ((_ is Union!15493) (regTwo!31498 r!7292)))))

(declare-fun b!5509119 () Bool)

(declare-fun c!962666 () Bool)

(assert (=> b!5509119 (= c!962666 ((_ is Star!15493) (regTwo!31498 r!7292)))))

(assert (=> b!5509119 (= e!3407140 e!3407145)))

(declare-fun b!5509120 () Bool)

(assert (=> b!5509120 (= e!3407143 (store ((as const (Array Context!9754 Bool)) false) lt!2244723 true))))

(declare-fun b!5509121 () Bool)

(assert (=> b!5509121 (= e!3407145 call!407189)))

(assert (= (and d!1745662 c!962669) b!5509120))

(assert (= (and d!1745662 (not c!962669)) b!5509118))

(assert (= (and b!5509118 c!962667) b!5509112))

(assert (= (and b!5509118 (not c!962667)) b!5509114))

(assert (= (and b!5509114 res!2347655) b!5509113))

(assert (= (and b!5509114 c!962670) b!5509117))

(assert (= (and b!5509114 (not c!962670)) b!5509116))

(assert (= (and b!5509116 c!962668) b!5509115))

(assert (= (and b!5509116 (not c!962668)) b!5509119))

(assert (= (and b!5509119 c!962666) b!5509121))

(assert (= (and b!5509119 (not c!962666)) b!5509111))

(assert (= (or b!5509115 b!5509121) bm!407188))

(assert (= (or b!5509115 b!5509121) bm!407184))

(assert (= (or b!5509117 bm!407188) bm!407186))

(assert (= (or b!5509117 bm!407184) bm!407183))

(assert (= (or b!5509112 bm!407183) bm!407185))

(assert (= (or b!5509112 b!5509117) bm!407187))

(declare-fun m!6514644 () Bool)

(assert (=> bm!407185 m!6514644))

(declare-fun m!6514646 () Bool)

(assert (=> bm!407186 m!6514646))

(declare-fun m!6514648 () Bool)

(assert (=> b!5509120 m!6514648))

(declare-fun m!6514650 () Bool)

(assert (=> bm!407187 m!6514650))

(declare-fun m!6514652 () Bool)

(assert (=> b!5509113 m!6514652))

(assert (=> b!5508574 d!1745662))

(declare-fun d!1745664 () Bool)

(assert (=> d!1745664 (= (flatMap!1106 lt!2244712 lambda!295061) (choose!41862 lt!2244712 lambda!295061))))

(declare-fun bs!1270194 () Bool)

(assert (= bs!1270194 d!1745664))

(declare-fun m!6514654 () Bool)

(assert (=> bs!1270194 m!6514654))

(assert (=> b!5508574 d!1745664))

(declare-fun bs!1270195 () Bool)

(declare-fun d!1745666 () Bool)

(assert (= bs!1270195 (and d!1745666 d!1745626)))

(declare-fun lambda!295111 () Int)

(assert (=> bs!1270195 (= lambda!295111 lambda!295104)))

(declare-fun bs!1270196 () Bool)

(assert (= bs!1270196 (and d!1745666 d!1745642)))

(assert (=> bs!1270196 (= lambda!295111 lambda!295107)))

(declare-fun bs!1270197 () Bool)

(assert (= bs!1270197 (and d!1745666 d!1745644)))

(assert (=> bs!1270197 (= lambda!295111 lambda!295108)))

(declare-fun b!5509142 () Bool)

(declare-fun e!3407158 () Regex!15493)

(assert (=> b!5509142 (= e!3407158 EmptyLang!15493)))

(declare-fun b!5509143 () Bool)

(declare-fun e!3407159 () Regex!15493)

(assert (=> b!5509143 (= e!3407159 (h!69102 (unfocusZipperList!921 zl!343)))))

(declare-fun b!5509144 () Bool)

(declare-fun e!3407163 () Bool)

(declare-fun lt!2244804 () Regex!15493)

(declare-fun isUnion!512 (Regex!15493) Bool)

(assert (=> b!5509144 (= e!3407163 (isUnion!512 lt!2244804))))

(declare-fun b!5509145 () Bool)

(declare-fun e!3407162 () Bool)

(assert (=> b!5509145 (= e!3407162 (isEmpty!34434 (t!376021 (unfocusZipperList!921 zl!343))))))

(declare-fun b!5509146 () Bool)

(declare-fun e!3407160 () Bool)

(declare-fun isEmptyLang!1082 (Regex!15493) Bool)

(assert (=> b!5509146 (= e!3407160 (isEmptyLang!1082 lt!2244804))))

(declare-fun b!5509147 () Bool)

(assert (=> b!5509147 (= e!3407163 (= lt!2244804 (head!11800 (unfocusZipperList!921 zl!343))))))

(declare-fun b!5509148 () Bool)

(assert (=> b!5509148 (= e!3407159 e!3407158)))

(declare-fun c!962682 () Bool)

(assert (=> b!5509148 (= c!962682 ((_ is Cons!62654) (unfocusZipperList!921 zl!343)))))

(declare-fun b!5509149 () Bool)

(assert (=> b!5509149 (= e!3407158 (Union!15493 (h!69102 (unfocusZipperList!921 zl!343)) (generalisedUnion!1356 (t!376021 (unfocusZipperList!921 zl!343)))))))

(declare-fun b!5509151 () Bool)

(assert (=> b!5509151 (= e!3407160 e!3407163)))

(declare-fun c!962681 () Bool)

(assert (=> b!5509151 (= c!962681 (isEmpty!34434 (tail!10896 (unfocusZipperList!921 zl!343))))))

(declare-fun e!3407161 () Bool)

(assert (=> d!1745666 e!3407161))

(declare-fun res!2347661 () Bool)

(assert (=> d!1745666 (=> (not res!2347661) (not e!3407161))))

(assert (=> d!1745666 (= res!2347661 (validRegex!7229 lt!2244804))))

(assert (=> d!1745666 (= lt!2244804 e!3407159)))

(declare-fun c!962679 () Bool)

(assert (=> d!1745666 (= c!962679 e!3407162)))

(declare-fun res!2347660 () Bool)

(assert (=> d!1745666 (=> (not res!2347660) (not e!3407162))))

(assert (=> d!1745666 (= res!2347660 ((_ is Cons!62654) (unfocusZipperList!921 zl!343)))))

(assert (=> d!1745666 (forall!14673 (unfocusZipperList!921 zl!343) lambda!295111)))

(assert (=> d!1745666 (= (generalisedUnion!1356 (unfocusZipperList!921 zl!343)) lt!2244804)))

(declare-fun b!5509150 () Bool)

(assert (=> b!5509150 (= e!3407161 e!3407160)))

(declare-fun c!962680 () Bool)

(assert (=> b!5509150 (= c!962680 (isEmpty!34434 (unfocusZipperList!921 zl!343)))))

(assert (= (and d!1745666 res!2347660) b!5509145))

(assert (= (and d!1745666 c!962679) b!5509143))

(assert (= (and d!1745666 (not c!962679)) b!5509148))

(assert (= (and b!5509148 c!962682) b!5509149))

(assert (= (and b!5509148 (not c!962682)) b!5509142))

(assert (= (and d!1745666 res!2347661) b!5509150))

(assert (= (and b!5509150 c!962680) b!5509146))

(assert (= (and b!5509150 (not c!962680)) b!5509151))

(assert (= (and b!5509151 c!962681) b!5509147))

(assert (= (and b!5509151 (not c!962681)) b!5509144))

(assert (=> b!5509147 m!6514252))

(declare-fun m!6514656 () Bool)

(assert (=> b!5509147 m!6514656))

(declare-fun m!6514658 () Bool)

(assert (=> d!1745666 m!6514658))

(assert (=> d!1745666 m!6514252))

(declare-fun m!6514660 () Bool)

(assert (=> d!1745666 m!6514660))

(declare-fun m!6514662 () Bool)

(assert (=> b!5509149 m!6514662))

(declare-fun m!6514664 () Bool)

(assert (=> b!5509145 m!6514664))

(assert (=> b!5509150 m!6514252))

(declare-fun m!6514666 () Bool)

(assert (=> b!5509150 m!6514666))

(declare-fun m!6514668 () Bool)

(assert (=> b!5509144 m!6514668))

(assert (=> b!5509151 m!6514252))

(declare-fun m!6514670 () Bool)

(assert (=> b!5509151 m!6514670))

(assert (=> b!5509151 m!6514670))

(declare-fun m!6514672 () Bool)

(assert (=> b!5509151 m!6514672))

(declare-fun m!6514674 () Bool)

(assert (=> b!5509146 m!6514674))

(assert (=> b!5508585 d!1745666))

(declare-fun bs!1270198 () Bool)

(declare-fun d!1745668 () Bool)

(assert (= bs!1270198 (and d!1745668 d!1745626)))

(declare-fun lambda!295114 () Int)

(assert (=> bs!1270198 (= lambda!295114 lambda!295104)))

(declare-fun bs!1270199 () Bool)

(assert (= bs!1270199 (and d!1745668 d!1745642)))

(assert (=> bs!1270199 (= lambda!295114 lambda!295107)))

(declare-fun bs!1270200 () Bool)

(assert (= bs!1270200 (and d!1745668 d!1745644)))

(assert (=> bs!1270200 (= lambda!295114 lambda!295108)))

(declare-fun bs!1270201 () Bool)

(assert (= bs!1270201 (and d!1745668 d!1745666)))

(assert (=> bs!1270201 (= lambda!295114 lambda!295111)))

(declare-fun lt!2244807 () List!62778)

(assert (=> d!1745668 (forall!14673 lt!2244807 lambda!295114)))

(declare-fun e!3407166 () List!62778)

(assert (=> d!1745668 (= lt!2244807 e!3407166)))

(declare-fun c!962685 () Bool)

(assert (=> d!1745668 (= c!962685 ((_ is Cons!62656) zl!343))))

(assert (=> d!1745668 (= (unfocusZipperList!921 zl!343) lt!2244807)))

(declare-fun b!5509156 () Bool)

(assert (=> b!5509156 (= e!3407166 (Cons!62654 (generalisedConcat!1108 (exprs!5377 (h!69104 zl!343))) (unfocusZipperList!921 (t!376023 zl!343))))))

(declare-fun b!5509157 () Bool)

(assert (=> b!5509157 (= e!3407166 Nil!62654)))

(assert (= (and d!1745668 c!962685) b!5509156))

(assert (= (and d!1745668 (not c!962685)) b!5509157))

(declare-fun m!6514676 () Bool)

(assert (=> d!1745668 m!6514676))

(assert (=> b!5509156 m!6514270))

(declare-fun m!6514678 () Bool)

(assert (=> b!5509156 m!6514678))

(assert (=> b!5508585 d!1745668))

(declare-fun b!5509158 () Bool)

(declare-fun e!3407172 () (InoxSet Context!9754))

(assert (=> b!5509158 (= e!3407172 ((as const (Array Context!9754 Bool)) false))))

(declare-fun bm!407189 () Bool)

(declare-fun call!407199 () (InoxSet Context!9754))

(declare-fun call!407198 () (InoxSet Context!9754))

(assert (=> bm!407189 (= call!407199 call!407198)))

(declare-fun bm!407190 () Bool)

(declare-fun call!407195 () (InoxSet Context!9754))

(assert (=> bm!407190 (= call!407195 call!407199)))

(declare-fun c!962690 () Bool)

(declare-fun bm!407191 () Bool)

(declare-fun c!962687 () Bool)

(declare-fun c!962688 () Bool)

(declare-fun call!407194 () List!62778)

(assert (=> bm!407191 (= call!407198 (derivationStepZipperDown!835 (ite c!962687 (regTwo!31499 r!7292) (ite c!962690 (regTwo!31498 r!7292) (ite c!962688 (regOne!31498 r!7292) (reg!15822 r!7292)))) (ite (or c!962687 c!962690) lt!2244723 (Context!9755 call!407194)) (h!69103 s!2326)))))

(declare-fun b!5509159 () Bool)

(declare-fun e!3407168 () (InoxSet Context!9754))

(declare-fun call!407196 () (InoxSet Context!9754))

(assert (=> b!5509159 (= e!3407168 ((_ map or) call!407196 call!407198))))

(declare-fun b!5509160 () Bool)

(declare-fun e!3407171 () Bool)

(assert (=> b!5509160 (= e!3407171 (nullable!5527 (regOne!31498 r!7292)))))

(declare-fun d!1745670 () Bool)

(declare-fun c!962689 () Bool)

(assert (=> d!1745670 (= c!962689 (and ((_ is ElementMatch!15493) r!7292) (= (c!962517 r!7292) (h!69103 s!2326))))))

(declare-fun e!3407170 () (InoxSet Context!9754))

(assert (=> d!1745670 (= (derivationStepZipperDown!835 r!7292 lt!2244723 (h!69103 s!2326)) e!3407170)))

(declare-fun b!5509161 () Bool)

(assert (=> b!5509161 (= c!962690 e!3407171)))

(declare-fun res!2347662 () Bool)

(assert (=> b!5509161 (=> (not res!2347662) (not e!3407171))))

(assert (=> b!5509161 (= res!2347662 ((_ is Concat!24338) r!7292))))

(declare-fun e!3407169 () (InoxSet Context!9754))

(assert (=> b!5509161 (= e!3407168 e!3407169)))

(declare-fun b!5509162 () Bool)

(declare-fun e!3407167 () (InoxSet Context!9754))

(assert (=> b!5509162 (= e!3407167 call!407195)))

(declare-fun b!5509163 () Bool)

(assert (=> b!5509163 (= e!3407169 e!3407167)))

(assert (=> b!5509163 (= c!962688 ((_ is Concat!24338) r!7292))))

(declare-fun call!407197 () List!62778)

(declare-fun bm!407192 () Bool)

(assert (=> bm!407192 (= call!407197 ($colon$colon!1578 (exprs!5377 lt!2244723) (ite (or c!962690 c!962688) (regTwo!31498 r!7292) r!7292)))))

(declare-fun bm!407193 () Bool)

(assert (=> bm!407193 (= call!407196 (derivationStepZipperDown!835 (ite c!962687 (regOne!31499 r!7292) (regOne!31498 r!7292)) (ite c!962687 lt!2244723 (Context!9755 call!407197)) (h!69103 s!2326)))))

(declare-fun b!5509164 () Bool)

(assert (=> b!5509164 (= e!3407169 ((_ map or) call!407196 call!407199))))

(declare-fun bm!407194 () Bool)

(assert (=> bm!407194 (= call!407194 call!407197)))

(declare-fun b!5509165 () Bool)

(assert (=> b!5509165 (= e!3407170 e!3407168)))

(assert (=> b!5509165 (= c!962687 ((_ is Union!15493) r!7292))))

(declare-fun b!5509166 () Bool)

(declare-fun c!962686 () Bool)

(assert (=> b!5509166 (= c!962686 ((_ is Star!15493) r!7292))))

(assert (=> b!5509166 (= e!3407167 e!3407172)))

(declare-fun b!5509167 () Bool)

(assert (=> b!5509167 (= e!3407170 (store ((as const (Array Context!9754 Bool)) false) lt!2244723 true))))

(declare-fun b!5509168 () Bool)

(assert (=> b!5509168 (= e!3407172 call!407195)))

(assert (= (and d!1745670 c!962689) b!5509167))

(assert (= (and d!1745670 (not c!962689)) b!5509165))

(assert (= (and b!5509165 c!962687) b!5509159))

(assert (= (and b!5509165 (not c!962687)) b!5509161))

(assert (= (and b!5509161 res!2347662) b!5509160))

(assert (= (and b!5509161 c!962690) b!5509164))

(assert (= (and b!5509161 (not c!962690)) b!5509163))

(assert (= (and b!5509163 c!962688) b!5509162))

(assert (= (and b!5509163 (not c!962688)) b!5509166))

(assert (= (and b!5509166 c!962686) b!5509168))

(assert (= (and b!5509166 (not c!962686)) b!5509158))

(assert (= (or b!5509162 b!5509168) bm!407194))

(assert (= (or b!5509162 b!5509168) bm!407190))

(assert (= (or b!5509164 bm!407194) bm!407192))

(assert (= (or b!5509164 bm!407190) bm!407189))

(assert (= (or b!5509159 bm!407189) bm!407191))

(assert (= (or b!5509159 b!5509164) bm!407193))

(declare-fun m!6514680 () Bool)

(assert (=> bm!407191 m!6514680))

(declare-fun m!6514682 () Bool)

(assert (=> bm!407192 m!6514682))

(assert (=> b!5509167 m!6514648))

(declare-fun m!6514684 () Bool)

(assert (=> bm!407193 m!6514684))

(assert (=> b!5509160 m!6514304))

(assert (=> b!5508566 d!1745670))

(declare-fun d!1745672 () Bool)

(declare-fun c!962692 () Bool)

(declare-fun e!3407173 () Bool)

(assert (=> d!1745672 (= c!962692 e!3407173)))

(declare-fun res!2347663 () Bool)

(assert (=> d!1745672 (=> (not res!2347663) (not e!3407173))))

(assert (=> d!1745672 (= res!2347663 ((_ is Cons!62654) (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654)))))))

(declare-fun e!3407174 () (InoxSet Context!9754))

(assert (=> d!1745672 (= (derivationStepZipperUp!761 (Context!9755 (Cons!62654 r!7292 Nil!62654)) (h!69103 s!2326)) e!3407174)))

(declare-fun bm!407195 () Bool)

(declare-fun call!407200 () (InoxSet Context!9754))

(assert (=> bm!407195 (= call!407200 (derivationStepZipperDown!835 (h!69102 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654)))) (Context!9755 (t!376021 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654))))) (h!69103 s!2326)))))

(declare-fun b!5509169 () Bool)

(assert (=> b!5509169 (= e!3407173 (nullable!5527 (h!69102 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654))))))))

(declare-fun b!5509170 () Bool)

(declare-fun e!3407175 () (InoxSet Context!9754))

(assert (=> b!5509170 (= e!3407175 ((as const (Array Context!9754 Bool)) false))))

(declare-fun b!5509171 () Bool)

(assert (=> b!5509171 (= e!3407175 call!407200)))

(declare-fun b!5509172 () Bool)

(assert (=> b!5509172 (= e!3407174 ((_ map or) call!407200 (derivationStepZipperUp!761 (Context!9755 (t!376021 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654))))) (h!69103 s!2326))))))

(declare-fun b!5509173 () Bool)

(assert (=> b!5509173 (= e!3407174 e!3407175)))

(declare-fun c!962691 () Bool)

(assert (=> b!5509173 (= c!962691 ((_ is Cons!62654) (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654)))))))

(assert (= (and d!1745672 res!2347663) b!5509169))

(assert (= (and d!1745672 c!962692) b!5509172))

(assert (= (and d!1745672 (not c!962692)) b!5509173))

(assert (= (and b!5509173 c!962691) b!5509171))

(assert (= (and b!5509173 (not c!962691)) b!5509170))

(assert (= (or b!5509172 b!5509171) bm!407195))

(declare-fun m!6514686 () Bool)

(assert (=> bm!407195 m!6514686))

(declare-fun m!6514688 () Bool)

(assert (=> b!5509169 m!6514688))

(declare-fun m!6514690 () Bool)

(assert (=> b!5509172 m!6514690))

(assert (=> b!5508566 d!1745672))

(declare-fun bs!1270202 () Bool)

(declare-fun d!1745674 () Bool)

(assert (= bs!1270202 (and d!1745674 b!5508568)))

(declare-fun lambda!295117 () Int)

(assert (=> bs!1270202 (= lambda!295117 lambda!295061)))

(assert (=> d!1745674 true))

(assert (=> d!1745674 (= (derivationStepZipper!1598 z!1189 (h!69103 s!2326)) (flatMap!1106 z!1189 lambda!295117))))

(declare-fun bs!1270203 () Bool)

(assert (= bs!1270203 d!1745674))

(declare-fun m!6514692 () Bool)

(assert (=> bs!1270203 m!6514692))

(assert (=> b!5508566 d!1745674))

(declare-fun bs!1270204 () Bool)

(declare-fun b!5509211 () Bool)

(assert (= bs!1270204 (and b!5509211 d!1745614)))

(declare-fun lambda!295122 () Int)

(assert (=> bs!1270204 (not (= lambda!295122 lambda!295095))))

(declare-fun bs!1270205 () Bool)

(assert (= bs!1270205 (and b!5509211 b!5508569)))

(assert (=> bs!1270205 (not (= lambda!295122 lambda!295060))))

(declare-fun bs!1270206 () Bool)

(assert (= bs!1270206 (and b!5509211 d!1745608)))

(assert (=> bs!1270206 (not (= lambda!295122 lambda!295085))))

(assert (=> bs!1270204 (not (= lambda!295122 lambda!295094))))

(assert (=> bs!1270205 (not (= lambda!295122 lambda!295059))))

(assert (=> b!5509211 true))

(assert (=> b!5509211 true))

(declare-fun bs!1270207 () Bool)

(declare-fun b!5509208 () Bool)

(assert (= bs!1270207 (and b!5509208 d!1745614)))

(declare-fun lambda!295123 () Int)

(assert (=> bs!1270207 (= lambda!295123 lambda!295095)))

(declare-fun bs!1270208 () Bool)

(assert (= bs!1270208 (and b!5509208 b!5508569)))

(assert (=> bs!1270208 (= lambda!295123 lambda!295060)))

(declare-fun bs!1270209 () Bool)

(assert (= bs!1270209 (and b!5509208 b!5509211)))

(assert (=> bs!1270209 (not (= lambda!295123 lambda!295122))))

(declare-fun bs!1270210 () Bool)

(assert (= bs!1270210 (and b!5509208 d!1745608)))

(assert (=> bs!1270210 (not (= lambda!295123 lambda!295085))))

(assert (=> bs!1270207 (not (= lambda!295123 lambda!295094))))

(assert (=> bs!1270208 (not (= lambda!295123 lambda!295059))))

(assert (=> b!5509208 true))

(assert (=> b!5509208 true))

(declare-fun e!3407199 () Bool)

(declare-fun call!407205 () Bool)

(assert (=> b!5509208 (= e!3407199 call!407205)))

(declare-fun b!5509209 () Bool)

(declare-fun e!3407195 () Bool)

(assert (=> b!5509209 (= e!3407195 e!3407199)))

(declare-fun c!962703 () Bool)

(assert (=> b!5509209 (= c!962703 ((_ is Star!15493) r!7292))))

(declare-fun bm!407200 () Bool)

(assert (=> bm!407200 (= call!407205 (Exists!2593 (ite c!962703 lambda!295122 lambda!295123)))))

(declare-fun d!1745676 () Bool)

(declare-fun c!962705 () Bool)

(assert (=> d!1745676 (= c!962705 ((_ is EmptyExpr!15493) r!7292))))

(declare-fun e!3407194 () Bool)

(assert (=> d!1745676 (= (matchRSpec!2596 r!7292 s!2326) e!3407194)))

(declare-fun b!5509210 () Bool)

(declare-fun e!3407196 () Bool)

(assert (=> b!5509210 (= e!3407194 e!3407196)))

(declare-fun res!2347680 () Bool)

(assert (=> b!5509210 (= res!2347680 (not ((_ is EmptyLang!15493) r!7292)))))

(assert (=> b!5509210 (=> (not res!2347680) (not e!3407196))))

(declare-fun e!3407197 () Bool)

(assert (=> b!5509211 (= e!3407197 call!407205)))

(declare-fun b!5509212 () Bool)

(declare-fun c!962706 () Bool)

(assert (=> b!5509212 (= c!962706 ((_ is ElementMatch!15493) r!7292))))

(declare-fun e!3407200 () Bool)

(assert (=> b!5509212 (= e!3407196 e!3407200)))

(declare-fun b!5509213 () Bool)

(declare-fun c!962704 () Bool)

(assert (=> b!5509213 (= c!962704 ((_ is Union!15493) r!7292))))

(assert (=> b!5509213 (= e!3407200 e!3407195)))

(declare-fun b!5509214 () Bool)

(declare-fun e!3407198 () Bool)

(assert (=> b!5509214 (= e!3407198 (matchRSpec!2596 (regTwo!31499 r!7292) s!2326))))

(declare-fun b!5509215 () Bool)

(declare-fun res!2347681 () Bool)

(assert (=> b!5509215 (=> res!2347681 e!3407197)))

(declare-fun call!407206 () Bool)

(assert (=> b!5509215 (= res!2347681 call!407206)))

(assert (=> b!5509215 (= e!3407199 e!3407197)))

(declare-fun b!5509216 () Bool)

(assert (=> b!5509216 (= e!3407195 e!3407198)))

(declare-fun res!2347682 () Bool)

(assert (=> b!5509216 (= res!2347682 (matchRSpec!2596 (regOne!31499 r!7292) s!2326))))

(assert (=> b!5509216 (=> res!2347682 e!3407198)))

(declare-fun b!5509217 () Bool)

(assert (=> b!5509217 (= e!3407194 call!407206)))

(declare-fun b!5509218 () Bool)

(assert (=> b!5509218 (= e!3407200 (= s!2326 (Cons!62655 (c!962517 r!7292) Nil!62655)))))

(declare-fun bm!407201 () Bool)

(declare-fun isEmpty!34438 (List!62779) Bool)

(assert (=> bm!407201 (= call!407206 (isEmpty!34438 s!2326))))

(assert (= (and d!1745676 c!962705) b!5509217))

(assert (= (and d!1745676 (not c!962705)) b!5509210))

(assert (= (and b!5509210 res!2347680) b!5509212))

(assert (= (and b!5509212 c!962706) b!5509218))

(assert (= (and b!5509212 (not c!962706)) b!5509213))

(assert (= (and b!5509213 c!962704) b!5509216))

(assert (= (and b!5509213 (not c!962704)) b!5509209))

(assert (= (and b!5509216 (not res!2347682)) b!5509214))

(assert (= (and b!5509209 c!962703) b!5509215))

(assert (= (and b!5509209 (not c!962703)) b!5509208))

(assert (= (and b!5509215 (not res!2347681)) b!5509211))

(assert (= (or b!5509211 b!5509208) bm!407200))

(assert (= (or b!5509217 b!5509215) bm!407201))

(declare-fun m!6514694 () Bool)

(assert (=> bm!407200 m!6514694))

(declare-fun m!6514696 () Bool)

(assert (=> b!5509214 m!6514696))

(declare-fun m!6514698 () Bool)

(assert (=> b!5509216 m!6514698))

(declare-fun m!6514700 () Bool)

(assert (=> bm!407201 m!6514700))

(assert (=> b!5508575 d!1745676))

(declare-fun b!5509247 () Bool)

(declare-fun res!2347699 () Bool)

(declare-fun e!3407219 () Bool)

(assert (=> b!5509247 (=> (not res!2347699) (not e!3407219))))

(declare-fun tail!10897 (List!62779) List!62779)

(assert (=> b!5509247 (= res!2347699 (isEmpty!34438 (tail!10897 s!2326)))))

(declare-fun b!5509248 () Bool)

(declare-fun res!2347706 () Bool)

(declare-fun e!3407218 () Bool)

(assert (=> b!5509248 (=> res!2347706 e!3407218)))

(assert (=> b!5509248 (= res!2347706 (not (isEmpty!34438 (tail!10897 s!2326))))))

(declare-fun bm!407204 () Bool)

(declare-fun call!407209 () Bool)

(assert (=> bm!407204 (= call!407209 (isEmpty!34438 s!2326))))

(declare-fun b!5509249 () Bool)

(declare-fun e!3407216 () Bool)

(declare-fun e!3407220 () Bool)

(assert (=> b!5509249 (= e!3407216 e!3407220)))

(declare-fun c!962715 () Bool)

(assert (=> b!5509249 (= c!962715 ((_ is EmptyLang!15493) r!7292))))

(declare-fun b!5509250 () Bool)

(declare-fun lt!2244810 () Bool)

(assert (=> b!5509250 (= e!3407216 (= lt!2244810 call!407209))))

(declare-fun d!1745678 () Bool)

(assert (=> d!1745678 e!3407216))

(declare-fun c!962713 () Bool)

(assert (=> d!1745678 (= c!962713 ((_ is EmptyExpr!15493) r!7292))))

(declare-fun e!3407217 () Bool)

(assert (=> d!1745678 (= lt!2244810 e!3407217)))

(declare-fun c!962714 () Bool)

(assert (=> d!1745678 (= c!962714 (isEmpty!34438 s!2326))))

(assert (=> d!1745678 (validRegex!7229 r!7292)))

(assert (=> d!1745678 (= (matchR!7678 r!7292 s!2326) lt!2244810)))

(declare-fun b!5509251 () Bool)

(declare-fun head!11802 (List!62779) C!31256)

(assert (=> b!5509251 (= e!3407219 (= (head!11802 s!2326) (c!962517 r!7292)))))

(declare-fun b!5509252 () Bool)

(declare-fun e!3407221 () Bool)

(assert (=> b!5509252 (= e!3407221 e!3407218)))

(declare-fun res!2347701 () Bool)

(assert (=> b!5509252 (=> res!2347701 e!3407218)))

(assert (=> b!5509252 (= res!2347701 call!407209)))

(declare-fun b!5509253 () Bool)

(declare-fun derivativeStep!4364 (Regex!15493 C!31256) Regex!15493)

(assert (=> b!5509253 (= e!3407217 (matchR!7678 (derivativeStep!4364 r!7292 (head!11802 s!2326)) (tail!10897 s!2326)))))

(declare-fun b!5509254 () Bool)

(declare-fun res!2347700 () Bool)

(declare-fun e!3407215 () Bool)

(assert (=> b!5509254 (=> res!2347700 e!3407215)))

(assert (=> b!5509254 (= res!2347700 e!3407219)))

(declare-fun res!2347702 () Bool)

(assert (=> b!5509254 (=> (not res!2347702) (not e!3407219))))

(assert (=> b!5509254 (= res!2347702 lt!2244810)))

(declare-fun b!5509255 () Bool)

(assert (=> b!5509255 (= e!3407218 (not (= (head!11802 s!2326) (c!962517 r!7292))))))

(declare-fun b!5509256 () Bool)

(assert (=> b!5509256 (= e!3407217 (nullable!5527 r!7292))))

(declare-fun b!5509257 () Bool)

(assert (=> b!5509257 (= e!3407220 (not lt!2244810))))

(declare-fun b!5509258 () Bool)

(assert (=> b!5509258 (= e!3407215 e!3407221)))

(declare-fun res!2347705 () Bool)

(assert (=> b!5509258 (=> (not res!2347705) (not e!3407221))))

(assert (=> b!5509258 (= res!2347705 (not lt!2244810))))

(declare-fun b!5509259 () Bool)

(declare-fun res!2347704 () Bool)

(assert (=> b!5509259 (=> (not res!2347704) (not e!3407219))))

(assert (=> b!5509259 (= res!2347704 (not call!407209))))

(declare-fun b!5509260 () Bool)

(declare-fun res!2347703 () Bool)

(assert (=> b!5509260 (=> res!2347703 e!3407215)))

(assert (=> b!5509260 (= res!2347703 (not ((_ is ElementMatch!15493) r!7292)))))

(assert (=> b!5509260 (= e!3407220 e!3407215)))

(assert (= (and d!1745678 c!962714) b!5509256))

(assert (= (and d!1745678 (not c!962714)) b!5509253))

(assert (= (and d!1745678 c!962713) b!5509250))

(assert (= (and d!1745678 (not c!962713)) b!5509249))

(assert (= (and b!5509249 c!962715) b!5509257))

(assert (= (and b!5509249 (not c!962715)) b!5509260))

(assert (= (and b!5509260 (not res!2347703)) b!5509254))

(assert (= (and b!5509254 res!2347702) b!5509259))

(assert (= (and b!5509259 res!2347704) b!5509247))

(assert (= (and b!5509247 res!2347699) b!5509251))

(assert (= (and b!5509254 (not res!2347700)) b!5509258))

(assert (= (and b!5509258 res!2347705) b!5509252))

(assert (= (and b!5509252 (not res!2347701)) b!5509248))

(assert (= (and b!5509248 (not res!2347706)) b!5509255))

(assert (= (or b!5509250 b!5509252 b!5509259) bm!407204))

(assert (=> bm!407204 m!6514700))

(declare-fun m!6514702 () Bool)

(assert (=> b!5509248 m!6514702))

(assert (=> b!5509248 m!6514702))

(declare-fun m!6514704 () Bool)

(assert (=> b!5509248 m!6514704))

(assert (=> b!5509247 m!6514702))

(assert (=> b!5509247 m!6514702))

(assert (=> b!5509247 m!6514704))

(declare-fun m!6514706 () Bool)

(assert (=> b!5509256 m!6514706))

(assert (=> d!1745678 m!6514700))

(assert (=> d!1745678 m!6514266))

(declare-fun m!6514708 () Bool)

(assert (=> b!5509253 m!6514708))

(assert (=> b!5509253 m!6514708))

(declare-fun m!6514710 () Bool)

(assert (=> b!5509253 m!6514710))

(assert (=> b!5509253 m!6514702))

(assert (=> b!5509253 m!6514710))

(assert (=> b!5509253 m!6514702))

(declare-fun m!6514712 () Bool)

(assert (=> b!5509253 m!6514712))

(assert (=> b!5509251 m!6514708))

(assert (=> b!5509255 m!6514708))

(assert (=> b!5508575 d!1745678))

(declare-fun d!1745680 () Bool)

(assert (=> d!1745680 (= (matchR!7678 r!7292 s!2326) (matchRSpec!2596 r!7292 s!2326))))

(declare-fun lt!2244813 () Unit!155446)

(declare-fun choose!41869 (Regex!15493 List!62779) Unit!155446)

(assert (=> d!1745680 (= lt!2244813 (choose!41869 r!7292 s!2326))))

(assert (=> d!1745680 (validRegex!7229 r!7292)))

(assert (=> d!1745680 (= (mainMatchTheorem!2596 r!7292 s!2326) lt!2244813)))

(declare-fun bs!1270211 () Bool)

(assert (= bs!1270211 d!1745680))

(assert (=> bs!1270211 m!6514320))

(assert (=> bs!1270211 m!6514318))

(declare-fun m!6514714 () Bool)

(assert (=> bs!1270211 m!6514714))

(assert (=> bs!1270211 m!6514266))

(assert (=> b!5508575 d!1745680))

(declare-fun d!1745682 () Bool)

(assert (=> d!1745682 (= (isEmpty!34433 (t!376023 zl!343)) ((_ is Nil!62656) (t!376023 zl!343)))))

(assert (=> b!5508567 d!1745682))

(declare-fun condSetEmpty!36573 () Bool)

(assert (=> setNonEmpty!36567 (= condSetEmpty!36573 (= setRest!36567 ((as const (Array Context!9754 Bool)) false)))))

(declare-fun setRes!36573 () Bool)

(assert (=> setNonEmpty!36567 (= tp!1515695 setRes!36573)))

(declare-fun setIsEmpty!36573 () Bool)

(assert (=> setIsEmpty!36573 setRes!36573))

(declare-fun setNonEmpty!36573 () Bool)

(declare-fun setElem!36573 () Context!9754)

(declare-fun tp!1515766 () Bool)

(declare-fun e!3407224 () Bool)

(assert (=> setNonEmpty!36573 (= setRes!36573 (and tp!1515766 (inv!81979 setElem!36573) e!3407224))))

(declare-fun setRest!36573 () (InoxSet Context!9754))

(assert (=> setNonEmpty!36573 (= setRest!36567 ((_ map or) (store ((as const (Array Context!9754 Bool)) false) setElem!36573 true) setRest!36573))))

(declare-fun b!5509265 () Bool)

(declare-fun tp!1515767 () Bool)

(assert (=> b!5509265 (= e!3407224 tp!1515767)))

(assert (= (and setNonEmpty!36567 condSetEmpty!36573) setIsEmpty!36573))

(assert (= (and setNonEmpty!36567 (not condSetEmpty!36573)) setNonEmpty!36573))

(assert (= setNonEmpty!36573 b!5509265))

(declare-fun m!6514716 () Bool)

(assert (=> setNonEmpty!36573 m!6514716))

(declare-fun b!5509270 () Bool)

(declare-fun e!3407227 () Bool)

(declare-fun tp!1515772 () Bool)

(declare-fun tp!1515773 () Bool)

(assert (=> b!5509270 (= e!3407227 (and tp!1515772 tp!1515773))))

(assert (=> b!5508577 (= tp!1515701 e!3407227)))

(assert (= (and b!5508577 ((_ is Cons!62654) (exprs!5377 (h!69104 zl!343)))) b!5509270))

(declare-fun b!5509281 () Bool)

(declare-fun e!3407230 () Bool)

(assert (=> b!5509281 (= e!3407230 tp_is_empty!40239)))

(assert (=> b!5508583 (= tp!1515697 e!3407230)))

(declare-fun b!5509282 () Bool)

(declare-fun tp!1515786 () Bool)

(declare-fun tp!1515787 () Bool)

(assert (=> b!5509282 (= e!3407230 (and tp!1515786 tp!1515787))))

(declare-fun b!5509284 () Bool)

(declare-fun tp!1515784 () Bool)

(declare-fun tp!1515788 () Bool)

(assert (=> b!5509284 (= e!3407230 (and tp!1515784 tp!1515788))))

(declare-fun b!5509283 () Bool)

(declare-fun tp!1515785 () Bool)

(assert (=> b!5509283 (= e!3407230 tp!1515785)))

(assert (= (and b!5508583 ((_ is ElementMatch!15493) (reg!15822 r!7292))) b!5509281))

(assert (= (and b!5508583 ((_ is Concat!24338) (reg!15822 r!7292))) b!5509282))

(assert (= (and b!5508583 ((_ is Star!15493) (reg!15822 r!7292))) b!5509283))

(assert (= (and b!5508583 ((_ is Union!15493) (reg!15822 r!7292))) b!5509284))

(declare-fun b!5509285 () Bool)

(declare-fun e!3407231 () Bool)

(declare-fun tp!1515789 () Bool)

(declare-fun tp!1515790 () Bool)

(assert (=> b!5509285 (= e!3407231 (and tp!1515789 tp!1515790))))

(assert (=> b!5508573 (= tp!1515696 e!3407231)))

(assert (= (and b!5508573 ((_ is Cons!62654) (exprs!5377 setElem!36567))) b!5509285))

(declare-fun b!5509290 () Bool)

(declare-fun e!3407234 () Bool)

(declare-fun tp!1515793 () Bool)

(assert (=> b!5509290 (= e!3407234 (and tp_is_empty!40239 tp!1515793))))

(assert (=> b!5508570 (= tp!1515694 e!3407234)))

(assert (= (and b!5508570 ((_ is Cons!62655) (t!376022 s!2326))) b!5509290))

(declare-fun b!5509291 () Bool)

(declare-fun e!3407235 () Bool)

(assert (=> b!5509291 (= e!3407235 tp_is_empty!40239)))

(assert (=> b!5508579 (= tp!1515702 e!3407235)))

(declare-fun b!5509292 () Bool)

(declare-fun tp!1515796 () Bool)

(declare-fun tp!1515797 () Bool)

(assert (=> b!5509292 (= e!3407235 (and tp!1515796 tp!1515797))))

(declare-fun b!5509294 () Bool)

(declare-fun tp!1515794 () Bool)

(declare-fun tp!1515798 () Bool)

(assert (=> b!5509294 (= e!3407235 (and tp!1515794 tp!1515798))))

(declare-fun b!5509293 () Bool)

(declare-fun tp!1515795 () Bool)

(assert (=> b!5509293 (= e!3407235 tp!1515795)))

(assert (= (and b!5508579 ((_ is ElementMatch!15493) (regOne!31499 r!7292))) b!5509291))

(assert (= (and b!5508579 ((_ is Concat!24338) (regOne!31499 r!7292))) b!5509292))

(assert (= (and b!5508579 ((_ is Star!15493) (regOne!31499 r!7292))) b!5509293))

(assert (= (and b!5508579 ((_ is Union!15493) (regOne!31499 r!7292))) b!5509294))

(declare-fun b!5509295 () Bool)

(declare-fun e!3407236 () Bool)

(assert (=> b!5509295 (= e!3407236 tp_is_empty!40239)))

(assert (=> b!5508579 (= tp!1515700 e!3407236)))

(declare-fun b!5509296 () Bool)

(declare-fun tp!1515801 () Bool)

(declare-fun tp!1515802 () Bool)

(assert (=> b!5509296 (= e!3407236 (and tp!1515801 tp!1515802))))

(declare-fun b!5509298 () Bool)

(declare-fun tp!1515799 () Bool)

(declare-fun tp!1515803 () Bool)

(assert (=> b!5509298 (= e!3407236 (and tp!1515799 tp!1515803))))

(declare-fun b!5509297 () Bool)

(declare-fun tp!1515800 () Bool)

(assert (=> b!5509297 (= e!3407236 tp!1515800)))

(assert (= (and b!5508579 ((_ is ElementMatch!15493) (regTwo!31499 r!7292))) b!5509295))

(assert (= (and b!5508579 ((_ is Concat!24338) (regTwo!31499 r!7292))) b!5509296))

(assert (= (and b!5508579 ((_ is Star!15493) (regTwo!31499 r!7292))) b!5509297))

(assert (= (and b!5508579 ((_ is Union!15493) (regTwo!31499 r!7292))) b!5509298))

(declare-fun b!5509299 () Bool)

(declare-fun e!3407237 () Bool)

(assert (=> b!5509299 (= e!3407237 tp_is_empty!40239)))

(assert (=> b!5508586 (= tp!1515703 e!3407237)))

(declare-fun b!5509300 () Bool)

(declare-fun tp!1515806 () Bool)

(declare-fun tp!1515807 () Bool)

(assert (=> b!5509300 (= e!3407237 (and tp!1515806 tp!1515807))))

(declare-fun b!5509302 () Bool)

(declare-fun tp!1515804 () Bool)

(declare-fun tp!1515808 () Bool)

(assert (=> b!5509302 (= e!3407237 (and tp!1515804 tp!1515808))))

(declare-fun b!5509301 () Bool)

(declare-fun tp!1515805 () Bool)

(assert (=> b!5509301 (= e!3407237 tp!1515805)))

(assert (= (and b!5508586 ((_ is ElementMatch!15493) (regOne!31498 r!7292))) b!5509299))

(assert (= (and b!5508586 ((_ is Concat!24338) (regOne!31498 r!7292))) b!5509300))

(assert (= (and b!5508586 ((_ is Star!15493) (regOne!31498 r!7292))) b!5509301))

(assert (= (and b!5508586 ((_ is Union!15493) (regOne!31498 r!7292))) b!5509302))

(declare-fun b!5509303 () Bool)

(declare-fun e!3407238 () Bool)

(assert (=> b!5509303 (= e!3407238 tp_is_empty!40239)))

(assert (=> b!5508586 (= tp!1515698 e!3407238)))

(declare-fun b!5509304 () Bool)

(declare-fun tp!1515811 () Bool)

(declare-fun tp!1515812 () Bool)

(assert (=> b!5509304 (= e!3407238 (and tp!1515811 tp!1515812))))

(declare-fun b!5509306 () Bool)

(declare-fun tp!1515809 () Bool)

(declare-fun tp!1515813 () Bool)

(assert (=> b!5509306 (= e!3407238 (and tp!1515809 tp!1515813))))

(declare-fun b!5509305 () Bool)

(declare-fun tp!1515810 () Bool)

(assert (=> b!5509305 (= e!3407238 tp!1515810)))

(assert (= (and b!5508586 ((_ is ElementMatch!15493) (regTwo!31498 r!7292))) b!5509303))

(assert (= (and b!5508586 ((_ is Concat!24338) (regTwo!31498 r!7292))) b!5509304))

(assert (= (and b!5508586 ((_ is Star!15493) (regTwo!31498 r!7292))) b!5509305))

(assert (= (and b!5508586 ((_ is Union!15493) (regTwo!31498 r!7292))) b!5509306))

(declare-fun b!5509314 () Bool)

(declare-fun e!3407244 () Bool)

(declare-fun tp!1515818 () Bool)

(assert (=> b!5509314 (= e!3407244 tp!1515818)))

(declare-fun e!3407243 () Bool)

(declare-fun tp!1515819 () Bool)

(declare-fun b!5509313 () Bool)

(assert (=> b!5509313 (= e!3407243 (and (inv!81979 (h!69104 (t!376023 zl!343))) e!3407244 tp!1515819))))

(assert (=> b!5508581 (= tp!1515699 e!3407243)))

(assert (= b!5509313 b!5509314))

(assert (= (and b!5508581 ((_ is Cons!62656) (t!376023 zl!343))) b!5509313))

(declare-fun m!6514718 () Bool)

(assert (=> b!5509313 m!6514718))

(declare-fun b_lambda!208869 () Bool)

(assert (= b_lambda!208867 (or b!5508568 b_lambda!208869)))

(declare-fun bs!1270212 () Bool)

(declare-fun d!1745684 () Bool)

(assert (= bs!1270212 (and d!1745684 b!5508568)))

(assert (=> bs!1270212 (= (dynLambda!24480 lambda!295061 lt!2244711) (derivationStepZipperUp!761 lt!2244711 (h!69103 s!2326)))))

(assert (=> bs!1270212 m!6514300))

(assert (=> d!1745658 d!1745684))

(declare-fun b_lambda!208871 () Bool)

(assert (= b_lambda!208865 (or b!5508568 b_lambda!208871)))

(declare-fun bs!1270213 () Bool)

(declare-fun d!1745686 () Bool)

(assert (= bs!1270213 (and d!1745686 b!5508568)))

(assert (=> bs!1270213 (= (dynLambda!24480 lambda!295061 lt!2244721) (derivationStepZipperUp!761 lt!2244721 (h!69103 s!2326)))))

(assert (=> bs!1270213 m!6514302))

(assert (=> d!1745654 d!1745686))

(declare-fun b_lambda!208873 () Bool)

(assert (= b_lambda!208853 (or b!5508568 b_lambda!208873)))

(declare-fun bs!1270214 () Bool)

(declare-fun d!1745688 () Bool)

(assert (= bs!1270214 (and d!1745688 b!5508568)))

(assert (=> bs!1270214 (= (dynLambda!24480 lambda!295061 (h!69104 zl!343)) (derivationStepZipperUp!761 (h!69104 zl!343) (h!69103 s!2326)))))

(assert (=> bs!1270214 m!6514262))

(assert (=> d!1745556 d!1745688))

(check-sat (not bs!1270214) (not b!5509314) (not b!5509297) (not b!5509255) (not b_lambda!208869) (not bm!407200) (not b!5508788) (not b!5509151) (not d!1745674) (not d!1745664) (not b!5509270) (not b!5508784) (not bm!407192) (not b!5509253) (not b!5509301) (not bm!407201) (not d!1745668) (not b!5509214) (not b!5508790) (not b!5509282) (not b!5508624) (not d!1745658) (not bm!407102) (not bm!407204) (not bm!407186) (not b!5509147) (not bs!1270212) (not b!5509146) (not b!5509060) (not d!1745604) (not b!5509063) (not b!5509256) (not b!5509294) (not b!5509172) (not bm!407195) (not b!5509058) (not d!1745652) (not b!5509106) (not bm!407182) (not b!5508676) (not b!5509216) (not d!1745608) (not b!5509104) (not b_lambda!208871) (not bm!407177) (not b!5509101) (not b!5509283) (not bm!407185) (not b!5508785) (not bm!407179) (not d!1745680) (not d!1745542) (not d!1745614) (not d!1745648) (not b!5509067) (not b!5509109) (not d!1745624) (not d!1745644) (not b!5509298) (not bs!1270213) (not b!5509313) (not d!1745666) (not b!5508621) (not b!5509285) tp_is_empty!40239 (not b!5509064) (not b!5509251) (not d!1745654) (not b!5509306) (not b!5509248) (not b!5509169) (not bm!407187) (not bm!407193) (not b!5509145) (not b!5508783) (not d!1745606) (not bm!407111) (not b!5509247) (not b!5509305) (not b!5509149) (not b!5509292) (not b!5509160) (not d!1745642) (not b!5509150) (not b!5508789) (not b!5509057) (not bm!407178) (not b!5509156) (not d!1745638) (not b!5509302) (not b!5509296) (not setNonEmpty!36573) (not b!5509293) (not b!5509300) (not d!1745646) (not b!5509113) (not b!5509265) (not b!5509304) (not bm!407109) (not d!1745568) (not d!1745626) (not bm!407191) (not b!5509290) (not bm!407181) (not d!1745678) (not b_lambda!208873) (not b!5509092) (not b!5509144) (not b!5509055) (not d!1745556) (not b!5509062) (not b!5509284))
(check-sat)
(get-model)

(declare-fun b!5509442 () Bool)

(declare-fun res!2347764 () Bool)

(declare-fun e!3407334 () Bool)

(assert (=> b!5509442 (=> (not res!2347764) (not e!3407334))))

(assert (=> b!5509442 (= res!2347764 (isEmpty!34438 (tail!10897 (_2!35893 (get!21561 lt!2244768)))))))

(declare-fun b!5509443 () Bool)

(declare-fun res!2347777 () Bool)

(declare-fun e!3407328 () Bool)

(assert (=> b!5509443 (=> res!2347777 e!3407328)))

(assert (=> b!5509443 (= res!2347777 (not (isEmpty!34438 (tail!10897 (_2!35893 (get!21561 lt!2244768))))))))

(declare-fun bm!407234 () Bool)

(declare-fun call!407239 () Bool)

(assert (=> bm!407234 (= call!407239 (isEmpty!34438 (_2!35893 (get!21561 lt!2244768))))))

(declare-fun b!5509446 () Bool)

(declare-fun e!3407325 () Bool)

(declare-fun e!3407335 () Bool)

(assert (=> b!5509446 (= e!3407325 e!3407335)))

(declare-fun c!962755 () Bool)

(assert (=> b!5509446 (= c!962755 ((_ is EmptyLang!15493) (regTwo!31498 r!7292)))))

(declare-fun b!5509448 () Bool)

(declare-fun lt!2244826 () Bool)

(assert (=> b!5509448 (= e!3407325 (= lt!2244826 call!407239))))

(declare-fun d!1745761 () Bool)

(assert (=> d!1745761 e!3407325))

(declare-fun c!962751 () Bool)

(assert (=> d!1745761 (= c!962751 ((_ is EmptyExpr!15493) (regTwo!31498 r!7292)))))

(declare-fun e!3407326 () Bool)

(assert (=> d!1745761 (= lt!2244826 e!3407326)))

(declare-fun c!962753 () Bool)

(assert (=> d!1745761 (= c!962753 (isEmpty!34438 (_2!35893 (get!21561 lt!2244768))))))

(assert (=> d!1745761 (validRegex!7229 (regTwo!31498 r!7292))))

(assert (=> d!1745761 (= (matchR!7678 (regTwo!31498 r!7292) (_2!35893 (get!21561 lt!2244768))) lt!2244826)))

(declare-fun b!5509450 () Bool)

(assert (=> b!5509450 (= e!3407334 (= (head!11802 (_2!35893 (get!21561 lt!2244768))) (c!962517 (regTwo!31498 r!7292))))))

(declare-fun b!5509452 () Bool)

(declare-fun e!3407336 () Bool)

(assert (=> b!5509452 (= e!3407336 e!3407328)))

(declare-fun res!2347768 () Bool)

(assert (=> b!5509452 (=> res!2347768 e!3407328)))

(assert (=> b!5509452 (= res!2347768 call!407239)))

(declare-fun b!5509454 () Bool)

(assert (=> b!5509454 (= e!3407326 (matchR!7678 (derivativeStep!4364 (regTwo!31498 r!7292) (head!11802 (_2!35893 (get!21561 lt!2244768)))) (tail!10897 (_2!35893 (get!21561 lt!2244768)))))))

(declare-fun b!5509456 () Bool)

(declare-fun res!2347765 () Bool)

(declare-fun e!3407323 () Bool)

(assert (=> b!5509456 (=> res!2347765 e!3407323)))

(assert (=> b!5509456 (= res!2347765 e!3407334)))

(declare-fun res!2347769 () Bool)

(assert (=> b!5509456 (=> (not res!2347769) (not e!3407334))))

(assert (=> b!5509456 (= res!2347769 lt!2244826)))

(declare-fun b!5509458 () Bool)

(assert (=> b!5509458 (= e!3407328 (not (= (head!11802 (_2!35893 (get!21561 lt!2244768))) (c!962517 (regTwo!31498 r!7292)))))))

(declare-fun b!5509459 () Bool)

(assert (=> b!5509459 (= e!3407326 (nullable!5527 (regTwo!31498 r!7292)))))

(declare-fun b!5509461 () Bool)

(assert (=> b!5509461 (= e!3407335 (not lt!2244826))))

(declare-fun b!5509463 () Bool)

(assert (=> b!5509463 (= e!3407323 e!3407336)))

(declare-fun res!2347775 () Bool)

(assert (=> b!5509463 (=> (not res!2347775) (not e!3407336))))

(assert (=> b!5509463 (= res!2347775 (not lt!2244826))))

(declare-fun b!5509465 () Bool)

(declare-fun res!2347773 () Bool)

(assert (=> b!5509465 (=> (not res!2347773) (not e!3407334))))

(assert (=> b!5509465 (= res!2347773 (not call!407239))))

(declare-fun b!5509467 () Bool)

(declare-fun res!2347770 () Bool)

(assert (=> b!5509467 (=> res!2347770 e!3407323)))

(assert (=> b!5509467 (= res!2347770 (not ((_ is ElementMatch!15493) (regTwo!31498 r!7292))))))

(assert (=> b!5509467 (= e!3407335 e!3407323)))

(assert (= (and d!1745761 c!962753) b!5509459))

(assert (= (and d!1745761 (not c!962753)) b!5509454))

(assert (= (and d!1745761 c!962751) b!5509448))

(assert (= (and d!1745761 (not c!962751)) b!5509446))

(assert (= (and b!5509446 c!962755) b!5509461))

(assert (= (and b!5509446 (not c!962755)) b!5509467))

(assert (= (and b!5509467 (not res!2347770)) b!5509456))

(assert (= (and b!5509456 res!2347769) b!5509465))

(assert (= (and b!5509465 res!2347773) b!5509442))

(assert (= (and b!5509442 res!2347764) b!5509450))

(assert (= (and b!5509456 (not res!2347765)) b!5509463))

(assert (= (and b!5509463 res!2347775) b!5509452))

(assert (= (and b!5509452 (not res!2347768)) b!5509443))

(assert (= (and b!5509443 (not res!2347777)) b!5509458))

(assert (= (or b!5509448 b!5509452 b!5509465) bm!407234))

(declare-fun m!6514876 () Bool)

(assert (=> bm!407234 m!6514876))

(declare-fun m!6514878 () Bool)

(assert (=> b!5509443 m!6514878))

(assert (=> b!5509443 m!6514878))

(declare-fun m!6514882 () Bool)

(assert (=> b!5509443 m!6514882))

(assert (=> b!5509442 m!6514878))

(assert (=> b!5509442 m!6514878))

(assert (=> b!5509442 m!6514882))

(declare-fun m!6514884 () Bool)

(assert (=> b!5509459 m!6514884))

(assert (=> d!1745761 m!6514876))

(declare-fun m!6514886 () Bool)

(assert (=> d!1745761 m!6514886))

(declare-fun m!6514888 () Bool)

(assert (=> b!5509454 m!6514888))

(assert (=> b!5509454 m!6514888))

(declare-fun m!6514890 () Bool)

(assert (=> b!5509454 m!6514890))

(assert (=> b!5509454 m!6514878))

(assert (=> b!5509454 m!6514890))

(assert (=> b!5509454 m!6514878))

(declare-fun m!6514892 () Bool)

(assert (=> b!5509454 m!6514892))

(assert (=> b!5509450 m!6514888))

(assert (=> b!5509458 m!6514888))

(assert (=> b!5508788 d!1745761))

(declare-fun d!1745770 () Bool)

(assert (=> d!1745770 (= (get!21561 lt!2244768) (v!51536 lt!2244768))))

(assert (=> b!5508788 d!1745770))

(declare-fun b!5509470 () Bool)

(declare-fun e!3407342 () (InoxSet Context!9754))

(assert (=> b!5509470 (= e!3407342 ((as const (Array Context!9754 Bool)) false))))

(declare-fun bm!407236 () Bool)

(declare-fun call!407246 () (InoxSet Context!9754))

(declare-fun call!407245 () (InoxSet Context!9754))

(assert (=> bm!407236 (= call!407246 call!407245)))

(declare-fun bm!407237 () Bool)

(declare-fun call!407242 () (InoxSet Context!9754))

(assert (=> bm!407237 (= call!407242 call!407246)))

(declare-fun c!962761 () Bool)

(declare-fun bm!407238 () Bool)

(declare-fun c!962758 () Bool)

(declare-fun call!407241 () List!62778)

(declare-fun c!962759 () Bool)

(assert (=> bm!407238 (= call!407245 (derivationStepZipperDown!835 (ite c!962758 (regTwo!31499 (h!69102 (exprs!5377 lt!2244711))) (ite c!962761 (regTwo!31498 (h!69102 (exprs!5377 lt!2244711))) (ite c!962759 (regOne!31498 (h!69102 (exprs!5377 lt!2244711))) (reg!15822 (h!69102 (exprs!5377 lt!2244711)))))) (ite (or c!962758 c!962761) (Context!9755 (t!376021 (exprs!5377 lt!2244711))) (Context!9755 call!407241)) (h!69103 s!2326)))))

(declare-fun b!5509471 () Bool)

(declare-fun e!3407338 () (InoxSet Context!9754))

(declare-fun call!407243 () (InoxSet Context!9754))

(assert (=> b!5509471 (= e!3407338 ((_ map or) call!407243 call!407245))))

(declare-fun b!5509472 () Bool)

(declare-fun e!3407341 () Bool)

(assert (=> b!5509472 (= e!3407341 (nullable!5527 (regOne!31498 (h!69102 (exprs!5377 lt!2244711)))))))

(declare-fun d!1745774 () Bool)

(declare-fun c!962760 () Bool)

(assert (=> d!1745774 (= c!962760 (and ((_ is ElementMatch!15493) (h!69102 (exprs!5377 lt!2244711))) (= (c!962517 (h!69102 (exprs!5377 lt!2244711))) (h!69103 s!2326))))))

(declare-fun e!3407340 () (InoxSet Context!9754))

(assert (=> d!1745774 (= (derivationStepZipperDown!835 (h!69102 (exprs!5377 lt!2244711)) (Context!9755 (t!376021 (exprs!5377 lt!2244711))) (h!69103 s!2326)) e!3407340)))

(declare-fun b!5509473 () Bool)

(assert (=> b!5509473 (= c!962761 e!3407341)))

(declare-fun res!2347783 () Bool)

(assert (=> b!5509473 (=> (not res!2347783) (not e!3407341))))

(assert (=> b!5509473 (= res!2347783 ((_ is Concat!24338) (h!69102 (exprs!5377 lt!2244711))))))

(declare-fun e!3407339 () (InoxSet Context!9754))

(assert (=> b!5509473 (= e!3407338 e!3407339)))

(declare-fun b!5509474 () Bool)

(declare-fun e!3407337 () (InoxSet Context!9754))

(assert (=> b!5509474 (= e!3407337 call!407242)))

(declare-fun b!5509475 () Bool)

(assert (=> b!5509475 (= e!3407339 e!3407337)))

(assert (=> b!5509475 (= c!962759 ((_ is Concat!24338) (h!69102 (exprs!5377 lt!2244711))))))

(declare-fun call!407244 () List!62778)

(declare-fun bm!407239 () Bool)

(assert (=> bm!407239 (= call!407244 ($colon$colon!1578 (exprs!5377 (Context!9755 (t!376021 (exprs!5377 lt!2244711)))) (ite (or c!962761 c!962759) (regTwo!31498 (h!69102 (exprs!5377 lt!2244711))) (h!69102 (exprs!5377 lt!2244711)))))))

(declare-fun bm!407240 () Bool)

(assert (=> bm!407240 (= call!407243 (derivationStepZipperDown!835 (ite c!962758 (regOne!31499 (h!69102 (exprs!5377 lt!2244711))) (regOne!31498 (h!69102 (exprs!5377 lt!2244711)))) (ite c!962758 (Context!9755 (t!376021 (exprs!5377 lt!2244711))) (Context!9755 call!407244)) (h!69103 s!2326)))))

(declare-fun b!5509476 () Bool)

(assert (=> b!5509476 (= e!3407339 ((_ map or) call!407243 call!407246))))

(declare-fun bm!407241 () Bool)

(assert (=> bm!407241 (= call!407241 call!407244)))

(declare-fun b!5509477 () Bool)

(assert (=> b!5509477 (= e!3407340 e!3407338)))

(assert (=> b!5509477 (= c!962758 ((_ is Union!15493) (h!69102 (exprs!5377 lt!2244711))))))

(declare-fun b!5509478 () Bool)

(declare-fun c!962757 () Bool)

(assert (=> b!5509478 (= c!962757 ((_ is Star!15493) (h!69102 (exprs!5377 lt!2244711))))))

(assert (=> b!5509478 (= e!3407337 e!3407342)))

(declare-fun b!5509479 () Bool)

(assert (=> b!5509479 (= e!3407340 (store ((as const (Array Context!9754 Bool)) false) (Context!9755 (t!376021 (exprs!5377 lt!2244711))) true))))

(declare-fun b!5509480 () Bool)

(assert (=> b!5509480 (= e!3407342 call!407242)))

(assert (= (and d!1745774 c!962760) b!5509479))

(assert (= (and d!1745774 (not c!962760)) b!5509477))

(assert (= (and b!5509477 c!962758) b!5509471))

(assert (= (and b!5509477 (not c!962758)) b!5509473))

(assert (= (and b!5509473 res!2347783) b!5509472))

(assert (= (and b!5509473 c!962761) b!5509476))

(assert (= (and b!5509473 (not c!962761)) b!5509475))

(assert (= (and b!5509475 c!962759) b!5509474))

(assert (= (and b!5509475 (not c!962759)) b!5509478))

(assert (= (and b!5509478 c!962757) b!5509480))

(assert (= (and b!5509478 (not c!962757)) b!5509470))

(assert (= (or b!5509474 b!5509480) bm!407241))

(assert (= (or b!5509474 b!5509480) bm!407237))

(assert (= (or b!5509476 bm!407241) bm!407239))

(assert (= (or b!5509476 bm!407237) bm!407236))

(assert (= (or b!5509471 bm!407236) bm!407238))

(assert (= (or b!5509471 b!5509476) bm!407240))

(declare-fun m!6514896 () Bool)

(assert (=> bm!407238 m!6514896))

(declare-fun m!6514898 () Bool)

(assert (=> bm!407239 m!6514898))

(declare-fun m!6514900 () Bool)

(assert (=> b!5509479 m!6514900))

(declare-fun m!6514902 () Bool)

(assert (=> bm!407240 m!6514902))

(declare-fun m!6514904 () Bool)

(assert (=> b!5509472 m!6514904))

(assert (=> bm!407181 d!1745774))

(declare-fun d!1745784 () Bool)

(assert (=> d!1745784 (= (nullable!5527 (h!69102 (exprs!5377 (h!69104 zl!343)))) (nullableFct!1657 (h!69102 (exprs!5377 (h!69104 zl!343)))))))

(declare-fun bs!1270239 () Bool)

(assert (= bs!1270239 d!1745784))

(declare-fun m!6514906 () Bool)

(assert (=> bs!1270239 m!6514906))

(assert (=> b!5508621 d!1745784))

(declare-fun d!1745786 () Bool)

(assert (=> d!1745786 (= (isEmpty!34438 s!2326) ((_ is Nil!62655) s!2326))))

(assert (=> d!1745678 d!1745786))

(assert (=> d!1745678 d!1745558))

(declare-fun d!1745788 () Bool)

(assert (=> d!1745788 (= (nullable!5527 r!7292) (nullableFct!1657 r!7292))))

(declare-fun bs!1270240 () Bool)

(assert (= bs!1270240 d!1745788))

(declare-fun m!6514908 () Bool)

(assert (=> bs!1270240 m!6514908))

(assert (=> b!5509256 d!1745788))

(declare-fun d!1745790 () Bool)

(assert (=> d!1745790 (= (isEmptyLang!1082 lt!2244804) ((_ is EmptyLang!15493) lt!2244804))))

(assert (=> b!5509146 d!1745790))

(declare-fun b!5509481 () Bool)

(declare-fun res!2347784 () Bool)

(declare-fun e!3407347 () Bool)

(assert (=> b!5509481 (=> (not res!2347784) (not e!3407347))))

(assert (=> b!5509481 (= res!2347784 (isEmpty!34438 (tail!10897 (_1!35893 (get!21561 lt!2244768)))))))

(declare-fun b!5509482 () Bool)

(declare-fun res!2347791 () Bool)

(declare-fun e!3407346 () Bool)

(assert (=> b!5509482 (=> res!2347791 e!3407346)))

(assert (=> b!5509482 (= res!2347791 (not (isEmpty!34438 (tail!10897 (_1!35893 (get!21561 lt!2244768))))))))

(declare-fun bm!407242 () Bool)

(declare-fun call!407247 () Bool)

(assert (=> bm!407242 (= call!407247 (isEmpty!34438 (_1!35893 (get!21561 lt!2244768))))))

(declare-fun b!5509483 () Bool)

(declare-fun e!3407344 () Bool)

(declare-fun e!3407348 () Bool)

(assert (=> b!5509483 (= e!3407344 e!3407348)))

(declare-fun c!962764 () Bool)

(assert (=> b!5509483 (= c!962764 ((_ is EmptyLang!15493) (regOne!31498 r!7292)))))

(declare-fun b!5509484 () Bool)

(declare-fun lt!2244827 () Bool)

(assert (=> b!5509484 (= e!3407344 (= lt!2244827 call!407247))))

(declare-fun d!1745792 () Bool)

(assert (=> d!1745792 e!3407344))

(declare-fun c!962762 () Bool)

(assert (=> d!1745792 (= c!962762 ((_ is EmptyExpr!15493) (regOne!31498 r!7292)))))

(declare-fun e!3407345 () Bool)

(assert (=> d!1745792 (= lt!2244827 e!3407345)))

(declare-fun c!962763 () Bool)

(assert (=> d!1745792 (= c!962763 (isEmpty!34438 (_1!35893 (get!21561 lt!2244768))))))

(assert (=> d!1745792 (validRegex!7229 (regOne!31498 r!7292))))

(assert (=> d!1745792 (= (matchR!7678 (regOne!31498 r!7292) (_1!35893 (get!21561 lt!2244768))) lt!2244827)))

(declare-fun b!5509485 () Bool)

(assert (=> b!5509485 (= e!3407347 (= (head!11802 (_1!35893 (get!21561 lt!2244768))) (c!962517 (regOne!31498 r!7292))))))

(declare-fun b!5509486 () Bool)

(declare-fun e!3407349 () Bool)

(assert (=> b!5509486 (= e!3407349 e!3407346)))

(declare-fun res!2347786 () Bool)

(assert (=> b!5509486 (=> res!2347786 e!3407346)))

(assert (=> b!5509486 (= res!2347786 call!407247)))

(declare-fun b!5509487 () Bool)

(assert (=> b!5509487 (= e!3407345 (matchR!7678 (derivativeStep!4364 (regOne!31498 r!7292) (head!11802 (_1!35893 (get!21561 lt!2244768)))) (tail!10897 (_1!35893 (get!21561 lt!2244768)))))))

(declare-fun b!5509488 () Bool)

(declare-fun res!2347785 () Bool)

(declare-fun e!3407343 () Bool)

(assert (=> b!5509488 (=> res!2347785 e!3407343)))

(assert (=> b!5509488 (= res!2347785 e!3407347)))

(declare-fun res!2347787 () Bool)

(assert (=> b!5509488 (=> (not res!2347787) (not e!3407347))))

(assert (=> b!5509488 (= res!2347787 lt!2244827)))

(declare-fun b!5509489 () Bool)

(assert (=> b!5509489 (= e!3407346 (not (= (head!11802 (_1!35893 (get!21561 lt!2244768))) (c!962517 (regOne!31498 r!7292)))))))

(declare-fun b!5509490 () Bool)

(assert (=> b!5509490 (= e!3407345 (nullable!5527 (regOne!31498 r!7292)))))

(declare-fun b!5509491 () Bool)

(assert (=> b!5509491 (= e!3407348 (not lt!2244827))))

(declare-fun b!5509492 () Bool)

(assert (=> b!5509492 (= e!3407343 e!3407349)))

(declare-fun res!2347790 () Bool)

(assert (=> b!5509492 (=> (not res!2347790) (not e!3407349))))

(assert (=> b!5509492 (= res!2347790 (not lt!2244827))))

(declare-fun b!5509493 () Bool)

(declare-fun res!2347789 () Bool)

(assert (=> b!5509493 (=> (not res!2347789) (not e!3407347))))

(assert (=> b!5509493 (= res!2347789 (not call!407247))))

(declare-fun b!5509494 () Bool)

(declare-fun res!2347788 () Bool)

(assert (=> b!5509494 (=> res!2347788 e!3407343)))

(assert (=> b!5509494 (= res!2347788 (not ((_ is ElementMatch!15493) (regOne!31498 r!7292))))))

(assert (=> b!5509494 (= e!3407348 e!3407343)))

(assert (= (and d!1745792 c!962763) b!5509490))

(assert (= (and d!1745792 (not c!962763)) b!5509487))

(assert (= (and d!1745792 c!962762) b!5509484))

(assert (= (and d!1745792 (not c!962762)) b!5509483))

(assert (= (and b!5509483 c!962764) b!5509491))

(assert (= (and b!5509483 (not c!962764)) b!5509494))

(assert (= (and b!5509494 (not res!2347788)) b!5509488))

(assert (= (and b!5509488 res!2347787) b!5509493))

(assert (= (and b!5509493 res!2347789) b!5509481))

(assert (= (and b!5509481 res!2347784) b!5509485))

(assert (= (and b!5509488 (not res!2347785)) b!5509492))

(assert (= (and b!5509492 res!2347790) b!5509486))

(assert (= (and b!5509486 (not res!2347786)) b!5509482))

(assert (= (and b!5509482 (not res!2347791)) b!5509489))

(assert (= (or b!5509484 b!5509486 b!5509493) bm!407242))

(declare-fun m!6514910 () Bool)

(assert (=> bm!407242 m!6514910))

(declare-fun m!6514912 () Bool)

(assert (=> b!5509482 m!6514912))

(assert (=> b!5509482 m!6514912))

(declare-fun m!6514914 () Bool)

(assert (=> b!5509482 m!6514914))

(assert (=> b!5509481 m!6514912))

(assert (=> b!5509481 m!6514912))

(assert (=> b!5509481 m!6514914))

(assert (=> b!5509490 m!6514304))

(assert (=> d!1745792 m!6514910))

(assert (=> d!1745792 m!6514474))

(declare-fun m!6514916 () Bool)

(assert (=> b!5509487 m!6514916))

(assert (=> b!5509487 m!6514916))

(declare-fun m!6514918 () Bool)

(assert (=> b!5509487 m!6514918))

(assert (=> b!5509487 m!6514912))

(assert (=> b!5509487 m!6514918))

(assert (=> b!5509487 m!6514912))

(declare-fun m!6514920 () Bool)

(assert (=> b!5509487 m!6514920))

(assert (=> b!5509485 m!6514916))

(assert (=> b!5509489 m!6514916))

(assert (=> b!5508784 d!1745792))

(assert (=> b!5508784 d!1745770))

(declare-fun d!1745794 () Bool)

(assert (=> d!1745794 (= (isDefined!12205 lt!2244768) (not (isEmpty!34437 lt!2244768)))))

(declare-fun bs!1270241 () Bool)

(assert (= bs!1270241 d!1745794))

(declare-fun m!6514922 () Bool)

(assert (=> bs!1270241 m!6514922))

(assert (=> d!1745568 d!1745794))

(declare-fun b!5509499 () Bool)

(declare-fun res!2347796 () Bool)

(declare-fun e!3407356 () Bool)

(assert (=> b!5509499 (=> (not res!2347796) (not e!3407356))))

(assert (=> b!5509499 (= res!2347796 (isEmpty!34438 (tail!10897 Nil!62655)))))

(declare-fun b!5509500 () Bool)

(declare-fun res!2347803 () Bool)

(declare-fun e!3407355 () Bool)

(assert (=> b!5509500 (=> res!2347803 e!3407355)))

(assert (=> b!5509500 (= res!2347803 (not (isEmpty!34438 (tail!10897 Nil!62655))))))

(declare-fun bm!407243 () Bool)

(declare-fun call!407248 () Bool)

(assert (=> bm!407243 (= call!407248 (isEmpty!34438 Nil!62655))))

(declare-fun b!5509501 () Bool)

(declare-fun e!3407353 () Bool)

(declare-fun e!3407357 () Bool)

(assert (=> b!5509501 (= e!3407353 e!3407357)))

(declare-fun c!962767 () Bool)

(assert (=> b!5509501 (= c!962767 ((_ is EmptyLang!15493) (regOne!31498 r!7292)))))

(declare-fun b!5509502 () Bool)

(declare-fun lt!2244828 () Bool)

(assert (=> b!5509502 (= e!3407353 (= lt!2244828 call!407248))))

(declare-fun d!1745796 () Bool)

(assert (=> d!1745796 e!3407353))

(declare-fun c!962765 () Bool)

(assert (=> d!1745796 (= c!962765 ((_ is EmptyExpr!15493) (regOne!31498 r!7292)))))

(declare-fun e!3407354 () Bool)

(assert (=> d!1745796 (= lt!2244828 e!3407354)))

(declare-fun c!962766 () Bool)

(assert (=> d!1745796 (= c!962766 (isEmpty!34438 Nil!62655))))

(assert (=> d!1745796 (validRegex!7229 (regOne!31498 r!7292))))

(assert (=> d!1745796 (= (matchR!7678 (regOne!31498 r!7292) Nil!62655) lt!2244828)))

(declare-fun b!5509503 () Bool)

(assert (=> b!5509503 (= e!3407356 (= (head!11802 Nil!62655) (c!962517 (regOne!31498 r!7292))))))

(declare-fun b!5509504 () Bool)

(declare-fun e!3407358 () Bool)

(assert (=> b!5509504 (= e!3407358 e!3407355)))

(declare-fun res!2347798 () Bool)

(assert (=> b!5509504 (=> res!2347798 e!3407355)))

(assert (=> b!5509504 (= res!2347798 call!407248)))

(declare-fun b!5509505 () Bool)

(assert (=> b!5509505 (= e!3407354 (matchR!7678 (derivativeStep!4364 (regOne!31498 r!7292) (head!11802 Nil!62655)) (tail!10897 Nil!62655)))))

(declare-fun b!5509506 () Bool)

(declare-fun res!2347797 () Bool)

(declare-fun e!3407352 () Bool)

(assert (=> b!5509506 (=> res!2347797 e!3407352)))

(assert (=> b!5509506 (= res!2347797 e!3407356)))

(declare-fun res!2347799 () Bool)

(assert (=> b!5509506 (=> (not res!2347799) (not e!3407356))))

(assert (=> b!5509506 (= res!2347799 lt!2244828)))

(declare-fun b!5509507 () Bool)

(assert (=> b!5509507 (= e!3407355 (not (= (head!11802 Nil!62655) (c!962517 (regOne!31498 r!7292)))))))

(declare-fun b!5509508 () Bool)

(assert (=> b!5509508 (= e!3407354 (nullable!5527 (regOne!31498 r!7292)))))

(declare-fun b!5509509 () Bool)

(assert (=> b!5509509 (= e!3407357 (not lt!2244828))))

(declare-fun b!5509510 () Bool)

(assert (=> b!5509510 (= e!3407352 e!3407358)))

(declare-fun res!2347802 () Bool)

(assert (=> b!5509510 (=> (not res!2347802) (not e!3407358))))

(assert (=> b!5509510 (= res!2347802 (not lt!2244828))))

(declare-fun b!5509511 () Bool)

(declare-fun res!2347801 () Bool)

(assert (=> b!5509511 (=> (not res!2347801) (not e!3407356))))

(assert (=> b!5509511 (= res!2347801 (not call!407248))))

(declare-fun b!5509512 () Bool)

(declare-fun res!2347800 () Bool)

(assert (=> b!5509512 (=> res!2347800 e!3407352)))

(assert (=> b!5509512 (= res!2347800 (not ((_ is ElementMatch!15493) (regOne!31498 r!7292))))))

(assert (=> b!5509512 (= e!3407357 e!3407352)))

(assert (= (and d!1745796 c!962766) b!5509508))

(assert (= (and d!1745796 (not c!962766)) b!5509505))

(assert (= (and d!1745796 c!962765) b!5509502))

(assert (= (and d!1745796 (not c!962765)) b!5509501))

(assert (= (and b!5509501 c!962767) b!5509509))

(assert (= (and b!5509501 (not c!962767)) b!5509512))

(assert (= (and b!5509512 (not res!2347800)) b!5509506))

(assert (= (and b!5509506 res!2347799) b!5509511))

(assert (= (and b!5509511 res!2347801) b!5509499))

(assert (= (and b!5509499 res!2347796) b!5509503))

(assert (= (and b!5509506 (not res!2347797)) b!5509510))

(assert (= (and b!5509510 res!2347802) b!5509504))

(assert (= (and b!5509504 (not res!2347798)) b!5509500))

(assert (= (and b!5509500 (not res!2347803)) b!5509507))

(assert (= (or b!5509502 b!5509504 b!5509511) bm!407243))

(declare-fun m!6514924 () Bool)

(assert (=> bm!407243 m!6514924))

(declare-fun m!6514926 () Bool)

(assert (=> b!5509500 m!6514926))

(assert (=> b!5509500 m!6514926))

(declare-fun m!6514928 () Bool)

(assert (=> b!5509500 m!6514928))

(assert (=> b!5509499 m!6514926))

(assert (=> b!5509499 m!6514926))

(assert (=> b!5509499 m!6514928))

(assert (=> b!5509508 m!6514304))

(assert (=> d!1745796 m!6514924))

(assert (=> d!1745796 m!6514474))

(declare-fun m!6514930 () Bool)

(assert (=> b!5509505 m!6514930))

(assert (=> b!5509505 m!6514930))

(declare-fun m!6514932 () Bool)

(assert (=> b!5509505 m!6514932))

(assert (=> b!5509505 m!6514926))

(assert (=> b!5509505 m!6514932))

(assert (=> b!5509505 m!6514926))

(declare-fun m!6514934 () Bool)

(assert (=> b!5509505 m!6514934))

(assert (=> b!5509503 m!6514930))

(assert (=> b!5509507 m!6514930))

(assert (=> d!1745568 d!1745796))

(declare-fun b!5509513 () Bool)

(declare-fun e!3407359 () Bool)

(declare-fun e!3407365 () Bool)

(assert (=> b!5509513 (= e!3407359 e!3407365)))

(declare-fun c!962768 () Bool)

(assert (=> b!5509513 (= c!962768 ((_ is Star!15493) (regOne!31498 r!7292)))))

(declare-fun bm!407244 () Bool)

(declare-fun call!407250 () Bool)

(declare-fun c!962769 () Bool)

(assert (=> bm!407244 (= call!407250 (validRegex!7229 (ite c!962769 (regOne!31499 (regOne!31498 r!7292)) (regOne!31498 (regOne!31498 r!7292)))))))

(declare-fun b!5509514 () Bool)

(declare-fun e!3407362 () Bool)

(assert (=> b!5509514 (= e!3407365 e!3407362)))

(declare-fun res!2347807 () Bool)

(assert (=> b!5509514 (= res!2347807 (not (nullable!5527 (reg!15822 (regOne!31498 r!7292)))))))

(assert (=> b!5509514 (=> (not res!2347807) (not e!3407362))))

(declare-fun b!5509515 () Bool)

(declare-fun res!2347806 () Bool)

(declare-fun e!3407364 () Bool)

(assert (=> b!5509515 (=> res!2347806 e!3407364)))

(assert (=> b!5509515 (= res!2347806 (not ((_ is Concat!24338) (regOne!31498 r!7292))))))

(declare-fun e!3407360 () Bool)

(assert (=> b!5509515 (= e!3407360 e!3407364)))

(declare-fun b!5509516 () Bool)

(declare-fun e!3407363 () Bool)

(declare-fun call!407249 () Bool)

(assert (=> b!5509516 (= e!3407363 call!407249)))

(declare-fun b!5509517 () Bool)

(declare-fun call!407251 () Bool)

(assert (=> b!5509517 (= e!3407362 call!407251)))

(declare-fun b!5509518 () Bool)

(declare-fun e!3407361 () Bool)

(assert (=> b!5509518 (= e!3407361 call!407249)))

(declare-fun bm!407245 () Bool)

(assert (=> bm!407245 (= call!407249 call!407251)))

(declare-fun b!5509520 () Bool)

(assert (=> b!5509520 (= e!3407365 e!3407360)))

(assert (=> b!5509520 (= c!962769 ((_ is Union!15493) (regOne!31498 r!7292)))))

(declare-fun b!5509521 () Bool)

(assert (=> b!5509521 (= e!3407364 e!3407363)))

(declare-fun res!2347805 () Bool)

(assert (=> b!5509521 (=> (not res!2347805) (not e!3407363))))

(assert (=> b!5509521 (= res!2347805 call!407250)))

(declare-fun bm!407246 () Bool)

(assert (=> bm!407246 (= call!407251 (validRegex!7229 (ite c!962768 (reg!15822 (regOne!31498 r!7292)) (ite c!962769 (regTwo!31499 (regOne!31498 r!7292)) (regTwo!31498 (regOne!31498 r!7292))))))))

(declare-fun d!1745798 () Bool)

(declare-fun res!2347804 () Bool)

(assert (=> d!1745798 (=> res!2347804 e!3407359)))

(assert (=> d!1745798 (= res!2347804 ((_ is ElementMatch!15493) (regOne!31498 r!7292)))))

(assert (=> d!1745798 (= (validRegex!7229 (regOne!31498 r!7292)) e!3407359)))

(declare-fun b!5509519 () Bool)

(declare-fun res!2347808 () Bool)

(assert (=> b!5509519 (=> (not res!2347808) (not e!3407361))))

(assert (=> b!5509519 (= res!2347808 call!407250)))

(assert (=> b!5509519 (= e!3407360 e!3407361)))

(assert (= (and d!1745798 (not res!2347804)) b!5509513))

(assert (= (and b!5509513 c!962768) b!5509514))

(assert (= (and b!5509513 (not c!962768)) b!5509520))

(assert (= (and b!5509514 res!2347807) b!5509517))

(assert (= (and b!5509520 c!962769) b!5509519))

(assert (= (and b!5509520 (not c!962769)) b!5509515))

(assert (= (and b!5509519 res!2347808) b!5509518))

(assert (= (and b!5509515 (not res!2347806)) b!5509521))

(assert (= (and b!5509521 res!2347805) b!5509516))

(assert (= (or b!5509518 b!5509516) bm!407245))

(assert (= (or b!5509519 b!5509521) bm!407244))

(assert (= (or b!5509517 bm!407245) bm!407246))

(declare-fun m!6514936 () Bool)

(assert (=> bm!407244 m!6514936))

(declare-fun m!6514938 () Bool)

(assert (=> b!5509514 m!6514938))

(declare-fun m!6514940 () Bool)

(assert (=> bm!407246 m!6514940))

(assert (=> d!1745568 d!1745798))

(declare-fun b!5509522 () Bool)

(declare-fun e!3407371 () (InoxSet Context!9754))

(assert (=> b!5509522 (= e!3407371 ((as const (Array Context!9754 Bool)) false))))

(declare-fun bm!407247 () Bool)

(declare-fun call!407257 () (InoxSet Context!9754))

(declare-fun call!407256 () (InoxSet Context!9754))

(assert (=> bm!407247 (= call!407257 call!407256)))

(declare-fun bm!407248 () Bool)

(declare-fun call!407253 () (InoxSet Context!9754))

(assert (=> bm!407248 (= call!407253 call!407257)))

(declare-fun call!407252 () List!62778)

(declare-fun c!962771 () Bool)

(declare-fun bm!407249 () Bool)

(declare-fun c!962774 () Bool)

(declare-fun c!962772 () Bool)

(assert (=> bm!407249 (= call!407256 (derivationStepZipperDown!835 (ite c!962771 (regTwo!31499 (ite c!962687 (regOne!31499 r!7292) (regOne!31498 r!7292))) (ite c!962774 (regTwo!31498 (ite c!962687 (regOne!31499 r!7292) (regOne!31498 r!7292))) (ite c!962772 (regOne!31498 (ite c!962687 (regOne!31499 r!7292) (regOne!31498 r!7292))) (reg!15822 (ite c!962687 (regOne!31499 r!7292) (regOne!31498 r!7292)))))) (ite (or c!962771 c!962774) (ite c!962687 lt!2244723 (Context!9755 call!407197)) (Context!9755 call!407252)) (h!69103 s!2326)))))

(declare-fun b!5509523 () Bool)

(declare-fun e!3407367 () (InoxSet Context!9754))

(declare-fun call!407254 () (InoxSet Context!9754))

(assert (=> b!5509523 (= e!3407367 ((_ map or) call!407254 call!407256))))

(declare-fun b!5509524 () Bool)

(declare-fun e!3407370 () Bool)

(assert (=> b!5509524 (= e!3407370 (nullable!5527 (regOne!31498 (ite c!962687 (regOne!31499 r!7292) (regOne!31498 r!7292)))))))

(declare-fun c!962773 () Bool)

(declare-fun d!1745800 () Bool)

(assert (=> d!1745800 (= c!962773 (and ((_ is ElementMatch!15493) (ite c!962687 (regOne!31499 r!7292) (regOne!31498 r!7292))) (= (c!962517 (ite c!962687 (regOne!31499 r!7292) (regOne!31498 r!7292))) (h!69103 s!2326))))))

(declare-fun e!3407369 () (InoxSet Context!9754))

(assert (=> d!1745800 (= (derivationStepZipperDown!835 (ite c!962687 (regOne!31499 r!7292) (regOne!31498 r!7292)) (ite c!962687 lt!2244723 (Context!9755 call!407197)) (h!69103 s!2326)) e!3407369)))

(declare-fun b!5509525 () Bool)

(assert (=> b!5509525 (= c!962774 e!3407370)))

(declare-fun res!2347809 () Bool)

(assert (=> b!5509525 (=> (not res!2347809) (not e!3407370))))

(assert (=> b!5509525 (= res!2347809 ((_ is Concat!24338) (ite c!962687 (regOne!31499 r!7292) (regOne!31498 r!7292))))))

(declare-fun e!3407368 () (InoxSet Context!9754))

(assert (=> b!5509525 (= e!3407367 e!3407368)))

(declare-fun b!5509526 () Bool)

(declare-fun e!3407366 () (InoxSet Context!9754))

(assert (=> b!5509526 (= e!3407366 call!407253)))

(declare-fun b!5509527 () Bool)

(assert (=> b!5509527 (= e!3407368 e!3407366)))

(assert (=> b!5509527 (= c!962772 ((_ is Concat!24338) (ite c!962687 (regOne!31499 r!7292) (regOne!31498 r!7292))))))

(declare-fun bm!407250 () Bool)

(declare-fun call!407255 () List!62778)

(assert (=> bm!407250 (= call!407255 ($colon$colon!1578 (exprs!5377 (ite c!962687 lt!2244723 (Context!9755 call!407197))) (ite (or c!962774 c!962772) (regTwo!31498 (ite c!962687 (regOne!31499 r!7292) (regOne!31498 r!7292))) (ite c!962687 (regOne!31499 r!7292) (regOne!31498 r!7292)))))))

(declare-fun bm!407251 () Bool)

(assert (=> bm!407251 (= call!407254 (derivationStepZipperDown!835 (ite c!962771 (regOne!31499 (ite c!962687 (regOne!31499 r!7292) (regOne!31498 r!7292))) (regOne!31498 (ite c!962687 (regOne!31499 r!7292) (regOne!31498 r!7292)))) (ite c!962771 (ite c!962687 lt!2244723 (Context!9755 call!407197)) (Context!9755 call!407255)) (h!69103 s!2326)))))

(declare-fun b!5509528 () Bool)

(assert (=> b!5509528 (= e!3407368 ((_ map or) call!407254 call!407257))))

(declare-fun bm!407252 () Bool)

(assert (=> bm!407252 (= call!407252 call!407255)))

(declare-fun b!5509529 () Bool)

(assert (=> b!5509529 (= e!3407369 e!3407367)))

(assert (=> b!5509529 (= c!962771 ((_ is Union!15493) (ite c!962687 (regOne!31499 r!7292) (regOne!31498 r!7292))))))

(declare-fun b!5509530 () Bool)

(declare-fun c!962770 () Bool)

(assert (=> b!5509530 (= c!962770 ((_ is Star!15493) (ite c!962687 (regOne!31499 r!7292) (regOne!31498 r!7292))))))

(assert (=> b!5509530 (= e!3407366 e!3407371)))

(declare-fun b!5509531 () Bool)

(assert (=> b!5509531 (= e!3407369 (store ((as const (Array Context!9754 Bool)) false) (ite c!962687 lt!2244723 (Context!9755 call!407197)) true))))

(declare-fun b!5509532 () Bool)

(assert (=> b!5509532 (= e!3407371 call!407253)))

(assert (= (and d!1745800 c!962773) b!5509531))

(assert (= (and d!1745800 (not c!962773)) b!5509529))

(assert (= (and b!5509529 c!962771) b!5509523))

(assert (= (and b!5509529 (not c!962771)) b!5509525))

(assert (= (and b!5509525 res!2347809) b!5509524))

(assert (= (and b!5509525 c!962774) b!5509528))

(assert (= (and b!5509525 (not c!962774)) b!5509527))

(assert (= (and b!5509527 c!962772) b!5509526))

(assert (= (and b!5509527 (not c!962772)) b!5509530))

(assert (= (and b!5509530 c!962770) b!5509532))

(assert (= (and b!5509530 (not c!962770)) b!5509522))

(assert (= (or b!5509526 b!5509532) bm!407252))

(assert (= (or b!5509526 b!5509532) bm!407248))

(assert (= (or b!5509528 bm!407252) bm!407250))

(assert (= (or b!5509528 bm!407248) bm!407247))

(assert (= (or b!5509523 bm!407247) bm!407249))

(assert (= (or b!5509523 b!5509528) bm!407251))

(declare-fun m!6514944 () Bool)

(assert (=> bm!407249 m!6514944))

(declare-fun m!6514946 () Bool)

(assert (=> bm!407250 m!6514946))

(declare-fun m!6514948 () Bool)

(assert (=> b!5509531 m!6514948))

(declare-fun m!6514950 () Bool)

(assert (=> bm!407251 m!6514950))

(declare-fun m!6514952 () Bool)

(assert (=> b!5509524 m!6514952))

(assert (=> bm!407193 d!1745800))

(assert (=> bs!1270213 d!1745660))

(declare-fun d!1745804 () Bool)

(assert (=> d!1745804 (= (Exists!2593 lambda!295094) (choose!41864 lambda!295094))))

(declare-fun bs!1270255 () Bool)

(assert (= bs!1270255 d!1745804))

(declare-fun m!6514954 () Bool)

(assert (=> bs!1270255 m!6514954))

(assert (=> d!1745614 d!1745804))

(declare-fun d!1745806 () Bool)

(assert (=> d!1745806 (= (Exists!2593 lambda!295095) (choose!41864 lambda!295095))))

(declare-fun bs!1270256 () Bool)

(assert (= bs!1270256 d!1745806))

(declare-fun m!6514956 () Bool)

(assert (=> bs!1270256 m!6514956))

(assert (=> d!1745614 d!1745806))

(declare-fun bs!1270259 () Bool)

(declare-fun d!1745808 () Bool)

(assert (= bs!1270259 (and d!1745808 d!1745614)))

(declare-fun lambda!295139 () Int)

(assert (=> bs!1270259 (not (= lambda!295139 lambda!295095))))

(declare-fun bs!1270260 () Bool)

(assert (= bs!1270260 (and d!1745808 b!5508569)))

(assert (=> bs!1270260 (not (= lambda!295139 lambda!295060))))

(declare-fun bs!1270261 () Bool)

(assert (= bs!1270261 (and d!1745808 b!5509211)))

(assert (=> bs!1270261 (not (= lambda!295139 lambda!295122))))

(declare-fun bs!1270262 () Bool)

(assert (= bs!1270262 (and d!1745808 d!1745608)))

(assert (=> bs!1270262 (= lambda!295139 lambda!295085)))

(assert (=> bs!1270259 (= lambda!295139 lambda!295094)))

(declare-fun bs!1270263 () Bool)

(assert (= bs!1270263 (and d!1745808 b!5509208)))

(assert (=> bs!1270263 (not (= lambda!295139 lambda!295123))))

(assert (=> bs!1270260 (= lambda!295139 lambda!295059)))

(assert (=> d!1745808 true))

(assert (=> d!1745808 true))

(assert (=> d!1745808 true))

(declare-fun lambda!295140 () Int)

(assert (=> bs!1270259 (= lambda!295140 lambda!295095)))

(assert (=> bs!1270260 (= lambda!295140 lambda!295060)))

(declare-fun bs!1270264 () Bool)

(assert (= bs!1270264 d!1745808))

(assert (=> bs!1270264 (not (= lambda!295140 lambda!295139))))

(assert (=> bs!1270261 (not (= lambda!295140 lambda!295122))))

(assert (=> bs!1270262 (not (= lambda!295140 lambda!295085))))

(assert (=> bs!1270259 (not (= lambda!295140 lambda!295094))))

(assert (=> bs!1270263 (= lambda!295140 lambda!295123)))

(assert (=> bs!1270260 (not (= lambda!295140 lambda!295059))))

(assert (=> d!1745808 true))

(assert (=> d!1745808 true))

(assert (=> d!1745808 true))

(assert (=> d!1745808 (= (Exists!2593 lambda!295139) (Exists!2593 lambda!295140))))

(assert (=> d!1745808 true))

(declare-fun _$90!1220 () Unit!155446)

(assert (=> d!1745808 (= (choose!41867 (regOne!31498 r!7292) (regTwo!31498 r!7292) s!2326) _$90!1220)))

(declare-fun m!6515016 () Bool)

(assert (=> bs!1270264 m!6515016))

(declare-fun m!6515018 () Bool)

(assert (=> bs!1270264 m!6515018))

(assert (=> d!1745614 d!1745808))

(assert (=> d!1745614 d!1745798))

(declare-fun d!1745834 () Bool)

(declare-fun c!962801 () Bool)

(declare-fun e!3407429 () Bool)

(assert (=> d!1745834 (= c!962801 e!3407429)))

(declare-fun res!2347846 () Bool)

(assert (=> d!1745834 (=> (not res!2347846) (not e!3407429))))

(assert (=> d!1745834 (= res!2347846 ((_ is Cons!62654) (exprs!5377 (Context!9755 (t!376021 (exprs!5377 lt!2244711))))))))

(declare-fun e!3407430 () (InoxSet Context!9754))

(assert (=> d!1745834 (= (derivationStepZipperUp!761 (Context!9755 (t!376021 (exprs!5377 lt!2244711))) (h!69103 s!2326)) e!3407430)))

(declare-fun bm!407277 () Bool)

(declare-fun call!407282 () (InoxSet Context!9754))

(assert (=> bm!407277 (= call!407282 (derivationStepZipperDown!835 (h!69102 (exprs!5377 (Context!9755 (t!376021 (exprs!5377 lt!2244711))))) (Context!9755 (t!376021 (exprs!5377 (Context!9755 (t!376021 (exprs!5377 lt!2244711)))))) (h!69103 s!2326)))))

(declare-fun b!5509619 () Bool)

(assert (=> b!5509619 (= e!3407429 (nullable!5527 (h!69102 (exprs!5377 (Context!9755 (t!376021 (exprs!5377 lt!2244711)))))))))

(declare-fun b!5509620 () Bool)

(declare-fun e!3407431 () (InoxSet Context!9754))

(assert (=> b!5509620 (= e!3407431 ((as const (Array Context!9754 Bool)) false))))

(declare-fun b!5509621 () Bool)

(assert (=> b!5509621 (= e!3407431 call!407282)))

(declare-fun b!5509622 () Bool)

(assert (=> b!5509622 (= e!3407430 ((_ map or) call!407282 (derivationStepZipperUp!761 (Context!9755 (t!376021 (exprs!5377 (Context!9755 (t!376021 (exprs!5377 lt!2244711)))))) (h!69103 s!2326))))))

(declare-fun b!5509623 () Bool)

(assert (=> b!5509623 (= e!3407430 e!3407431)))

(declare-fun c!962800 () Bool)

(assert (=> b!5509623 (= c!962800 ((_ is Cons!62654) (exprs!5377 (Context!9755 (t!376021 (exprs!5377 lt!2244711))))))))

(assert (= (and d!1745834 res!2347846) b!5509619))

(assert (= (and d!1745834 c!962801) b!5509622))

(assert (= (and d!1745834 (not c!962801)) b!5509623))

(assert (= (and b!5509623 c!962800) b!5509621))

(assert (= (and b!5509623 (not c!962800)) b!5509620))

(assert (= (or b!5509622 b!5509621) bm!407277))

(declare-fun m!6515020 () Bool)

(assert (=> bm!407277 m!6515020))

(declare-fun m!6515022 () Bool)

(assert (=> b!5509619 m!6515022))

(declare-fun m!6515024 () Bool)

(assert (=> b!5509622 m!6515024))

(assert (=> b!5509104 d!1745834))

(declare-fun bs!1270266 () Bool)

(declare-fun d!1745836 () Bool)

(assert (= bs!1270266 (and d!1745836 d!1745668)))

(declare-fun lambda!295142 () Int)

(assert (=> bs!1270266 (= lambda!295142 lambda!295114)))

(declare-fun bs!1270268 () Bool)

(assert (= bs!1270268 (and d!1745836 d!1745644)))

(assert (=> bs!1270268 (= lambda!295142 lambda!295108)))

(declare-fun bs!1270269 () Bool)

(assert (= bs!1270269 (and d!1745836 d!1745642)))

(assert (=> bs!1270269 (= lambda!295142 lambda!295107)))

(declare-fun bs!1270271 () Bool)

(assert (= bs!1270271 (and d!1745836 d!1745666)))

(assert (=> bs!1270271 (= lambda!295142 lambda!295111)))

(declare-fun bs!1270272 () Bool)

(assert (= bs!1270272 (and d!1745836 d!1745626)))

(assert (=> bs!1270272 (= lambda!295142 lambda!295104)))

(declare-fun b!5509624 () Bool)

(declare-fun e!3407435 () Bool)

(declare-fun lt!2244830 () Regex!15493)

(assert (=> b!5509624 (= e!3407435 (= lt!2244830 (head!11800 (t!376021 (exprs!5377 (h!69104 zl!343))))))))

(declare-fun b!5509625 () Bool)

(declare-fun e!3407434 () Regex!15493)

(assert (=> b!5509625 (= e!3407434 EmptyExpr!15493)))

(declare-fun b!5509626 () Bool)

(assert (=> b!5509626 (= e!3407434 (Concat!24338 (h!69102 (t!376021 (exprs!5377 (h!69104 zl!343)))) (generalisedConcat!1108 (t!376021 (t!376021 (exprs!5377 (h!69104 zl!343)))))))))

(declare-fun b!5509627 () Bool)

(declare-fun e!3407436 () Bool)

(assert (=> b!5509627 (= e!3407436 e!3407435)))

(declare-fun c!962804 () Bool)

(assert (=> b!5509627 (= c!962804 (isEmpty!34434 (tail!10896 (t!376021 (exprs!5377 (h!69104 zl!343))))))))

(declare-fun b!5509628 () Bool)

(declare-fun e!3407432 () Regex!15493)

(assert (=> b!5509628 (= e!3407432 e!3407434)))

(declare-fun c!962803 () Bool)

(assert (=> b!5509628 (= c!962803 ((_ is Cons!62654) (t!376021 (exprs!5377 (h!69104 zl!343)))))))

(declare-fun b!5509629 () Bool)

(declare-fun e!3407433 () Bool)

(assert (=> b!5509629 (= e!3407433 e!3407436)))

(declare-fun c!962802 () Bool)

(assert (=> b!5509629 (= c!962802 (isEmpty!34434 (t!376021 (exprs!5377 (h!69104 zl!343)))))))

(declare-fun b!5509631 () Bool)

(assert (=> b!5509631 (= e!3407435 (isConcat!594 lt!2244830))))

(declare-fun b!5509632 () Bool)

(assert (=> b!5509632 (= e!3407436 (isEmptyExpr!1071 lt!2244830))))

(declare-fun b!5509633 () Bool)

(declare-fun e!3407437 () Bool)

(assert (=> b!5509633 (= e!3407437 (isEmpty!34434 (t!376021 (t!376021 (exprs!5377 (h!69104 zl!343))))))))

(assert (=> d!1745836 e!3407433))

(declare-fun res!2347847 () Bool)

(assert (=> d!1745836 (=> (not res!2347847) (not e!3407433))))

(assert (=> d!1745836 (= res!2347847 (validRegex!7229 lt!2244830))))

(assert (=> d!1745836 (= lt!2244830 e!3407432)))

(declare-fun c!962805 () Bool)

(assert (=> d!1745836 (= c!962805 e!3407437)))

(declare-fun res!2347848 () Bool)

(assert (=> d!1745836 (=> (not res!2347848) (not e!3407437))))

(assert (=> d!1745836 (= res!2347848 ((_ is Cons!62654) (t!376021 (exprs!5377 (h!69104 zl!343)))))))

(assert (=> d!1745836 (forall!14673 (t!376021 (exprs!5377 (h!69104 zl!343))) lambda!295142)))

(assert (=> d!1745836 (= (generalisedConcat!1108 (t!376021 (exprs!5377 (h!69104 zl!343)))) lt!2244830)))

(declare-fun b!5509630 () Bool)

(assert (=> b!5509630 (= e!3407432 (h!69102 (t!376021 (exprs!5377 (h!69104 zl!343)))))))

(assert (= (and d!1745836 res!2347848) b!5509633))

(assert (= (and d!1745836 c!962805) b!5509630))

(assert (= (and d!1745836 (not c!962805)) b!5509628))

(assert (= (and b!5509628 c!962803) b!5509626))

(assert (= (and b!5509628 (not c!962803)) b!5509625))

(assert (= (and d!1745836 res!2347847) b!5509629))

(assert (= (and b!5509629 c!962802) b!5509632))

(assert (= (and b!5509629 (not c!962802)) b!5509627))

(assert (= (and b!5509627 c!962804) b!5509624))

(assert (= (and b!5509627 (not c!962804)) b!5509631))

(declare-fun m!6515026 () Bool)

(assert (=> b!5509632 m!6515026))

(declare-fun m!6515028 () Bool)

(assert (=> b!5509624 m!6515028))

(declare-fun m!6515030 () Bool)

(assert (=> b!5509631 m!6515030))

(declare-fun m!6515032 () Bool)

(assert (=> d!1745836 m!6515032))

(declare-fun m!6515034 () Bool)

(assert (=> d!1745836 m!6515034))

(assert (=> b!5509629 m!6514314))

(declare-fun m!6515036 () Bool)

(assert (=> b!5509626 m!6515036))

(declare-fun m!6515038 () Bool)

(assert (=> b!5509627 m!6515038))

(assert (=> b!5509627 m!6515038))

(declare-fun m!6515040 () Bool)

(assert (=> b!5509627 m!6515040))

(declare-fun m!6515042 () Bool)

(assert (=> b!5509633 m!6515042))

(assert (=> b!5509057 d!1745836))

(assert (=> d!1745654 d!1745664))

(declare-fun d!1745838 () Bool)

(assert (=> d!1745838 (= (flatMap!1106 lt!2244712 lambda!295061) (dynLambda!24480 lambda!295061 lt!2244721))))

(assert (=> d!1745838 true))

(declare-fun _$13!2031 () Unit!155446)

(assert (=> d!1745838 (= (choose!41863 lt!2244712 lt!2244721 lambda!295061) _$13!2031)))

(declare-fun b_lambda!208881 () Bool)

(assert (=> (not b_lambda!208881) (not d!1745838)))

(declare-fun bs!1270282 () Bool)

(assert (= bs!1270282 d!1745838))

(assert (=> bs!1270282 m!6514292))

(assert (=> bs!1270282 m!6514624))

(assert (=> d!1745654 d!1745838))

(declare-fun d!1745840 () Bool)

(assert (=> d!1745840 (= (nullable!5527 (reg!15822 r!7292)) (nullableFct!1657 (reg!15822 r!7292)))))

(declare-fun bs!1270284 () Bool)

(assert (= bs!1270284 d!1745840))

(declare-fun m!6515044 () Bool)

(assert (=> bs!1270284 m!6515044))

(assert (=> b!5508676 d!1745840))

(declare-fun b!5509634 () Bool)

(declare-fun e!3407443 () (InoxSet Context!9754))

(assert (=> b!5509634 (= e!3407443 ((as const (Array Context!9754 Bool)) false))))

(declare-fun bm!407278 () Bool)

(declare-fun call!407288 () (InoxSet Context!9754))

(declare-fun call!407287 () (InoxSet Context!9754))

(assert (=> bm!407278 (= call!407288 call!407287)))

(declare-fun bm!407279 () Bool)

(declare-fun call!407284 () (InoxSet Context!9754))

(assert (=> bm!407279 (= call!407284 call!407288)))

(declare-fun bm!407280 () Bool)

(declare-fun c!962810 () Bool)

(declare-fun c!962807 () Bool)

(declare-fun call!407283 () List!62778)

(declare-fun c!962808 () Bool)

(assert (=> bm!407280 (= call!407287 (derivationStepZipperDown!835 (ite c!962807 (regTwo!31499 (ite c!962658 (regOne!31499 (regOne!31498 r!7292)) (regOne!31498 (regOne!31498 r!7292)))) (ite c!962810 (regTwo!31498 (ite c!962658 (regOne!31499 (regOne!31498 r!7292)) (regOne!31498 (regOne!31498 r!7292)))) (ite c!962808 (regOne!31498 (ite c!962658 (regOne!31499 (regOne!31498 r!7292)) (regOne!31498 (regOne!31498 r!7292)))) (reg!15822 (ite c!962658 (regOne!31499 (regOne!31498 r!7292)) (regOne!31498 (regOne!31498 r!7292))))))) (ite (or c!962807 c!962810) (ite c!962658 lt!2244721 (Context!9755 call!407183)) (Context!9755 call!407283)) (h!69103 s!2326)))))

(declare-fun b!5509635 () Bool)

(declare-fun e!3407439 () (InoxSet Context!9754))

(declare-fun call!407285 () (InoxSet Context!9754))

(assert (=> b!5509635 (= e!3407439 ((_ map or) call!407285 call!407287))))

(declare-fun b!5509636 () Bool)

(declare-fun e!3407442 () Bool)

(assert (=> b!5509636 (= e!3407442 (nullable!5527 (regOne!31498 (ite c!962658 (regOne!31499 (regOne!31498 r!7292)) (regOne!31498 (regOne!31498 r!7292))))))))

(declare-fun d!1745842 () Bool)

(declare-fun c!962809 () Bool)

(assert (=> d!1745842 (= c!962809 (and ((_ is ElementMatch!15493) (ite c!962658 (regOne!31499 (regOne!31498 r!7292)) (regOne!31498 (regOne!31498 r!7292)))) (= (c!962517 (ite c!962658 (regOne!31499 (regOne!31498 r!7292)) (regOne!31498 (regOne!31498 r!7292)))) (h!69103 s!2326))))))

(declare-fun e!3407441 () (InoxSet Context!9754))

(assert (=> d!1745842 (= (derivationStepZipperDown!835 (ite c!962658 (regOne!31499 (regOne!31498 r!7292)) (regOne!31498 (regOne!31498 r!7292))) (ite c!962658 lt!2244721 (Context!9755 call!407183)) (h!69103 s!2326)) e!3407441)))

(declare-fun b!5509637 () Bool)

(assert (=> b!5509637 (= c!962810 e!3407442)))

(declare-fun res!2347849 () Bool)

(assert (=> b!5509637 (=> (not res!2347849) (not e!3407442))))

(assert (=> b!5509637 (= res!2347849 ((_ is Concat!24338) (ite c!962658 (regOne!31499 (regOne!31498 r!7292)) (regOne!31498 (regOne!31498 r!7292)))))))

(declare-fun e!3407440 () (InoxSet Context!9754))

(assert (=> b!5509637 (= e!3407439 e!3407440)))

(declare-fun b!5509638 () Bool)

(declare-fun e!3407438 () (InoxSet Context!9754))

(assert (=> b!5509638 (= e!3407438 call!407284)))

(declare-fun b!5509639 () Bool)

(assert (=> b!5509639 (= e!3407440 e!3407438)))

(assert (=> b!5509639 (= c!962808 ((_ is Concat!24338) (ite c!962658 (regOne!31499 (regOne!31498 r!7292)) (regOne!31498 (regOne!31498 r!7292)))))))

(declare-fun call!407286 () List!62778)

(declare-fun bm!407281 () Bool)

(assert (=> bm!407281 (= call!407286 ($colon$colon!1578 (exprs!5377 (ite c!962658 lt!2244721 (Context!9755 call!407183))) (ite (or c!962810 c!962808) (regTwo!31498 (ite c!962658 (regOne!31499 (regOne!31498 r!7292)) (regOne!31498 (regOne!31498 r!7292)))) (ite c!962658 (regOne!31499 (regOne!31498 r!7292)) (regOne!31498 (regOne!31498 r!7292))))))))

(declare-fun bm!407282 () Bool)

(assert (=> bm!407282 (= call!407285 (derivationStepZipperDown!835 (ite c!962807 (regOne!31499 (ite c!962658 (regOne!31499 (regOne!31498 r!7292)) (regOne!31498 (regOne!31498 r!7292)))) (regOne!31498 (ite c!962658 (regOne!31499 (regOne!31498 r!7292)) (regOne!31498 (regOne!31498 r!7292))))) (ite c!962807 (ite c!962658 lt!2244721 (Context!9755 call!407183)) (Context!9755 call!407286)) (h!69103 s!2326)))))

(declare-fun b!5509640 () Bool)

(assert (=> b!5509640 (= e!3407440 ((_ map or) call!407285 call!407288))))

(declare-fun bm!407283 () Bool)

(assert (=> bm!407283 (= call!407283 call!407286)))

(declare-fun b!5509641 () Bool)

(assert (=> b!5509641 (= e!3407441 e!3407439)))

(assert (=> b!5509641 (= c!962807 ((_ is Union!15493) (ite c!962658 (regOne!31499 (regOne!31498 r!7292)) (regOne!31498 (regOne!31498 r!7292)))))))

(declare-fun b!5509642 () Bool)

(declare-fun c!962806 () Bool)

(assert (=> b!5509642 (= c!962806 ((_ is Star!15493) (ite c!962658 (regOne!31499 (regOne!31498 r!7292)) (regOne!31498 (regOne!31498 r!7292)))))))

(assert (=> b!5509642 (= e!3407438 e!3407443)))

(declare-fun b!5509643 () Bool)

(assert (=> b!5509643 (= e!3407441 (store ((as const (Array Context!9754 Bool)) false) (ite c!962658 lt!2244721 (Context!9755 call!407183)) true))))

(declare-fun b!5509644 () Bool)

(assert (=> b!5509644 (= e!3407443 call!407284)))

(assert (= (and d!1745842 c!962809) b!5509643))

(assert (= (and d!1745842 (not c!962809)) b!5509641))

(assert (= (and b!5509641 c!962807) b!5509635))

(assert (= (and b!5509641 (not c!962807)) b!5509637))

(assert (= (and b!5509637 res!2347849) b!5509636))

(assert (= (and b!5509637 c!962810) b!5509640))

(assert (= (and b!5509637 (not c!962810)) b!5509639))

(assert (= (and b!5509639 c!962808) b!5509638))

(assert (= (and b!5509639 (not c!962808)) b!5509642))

(assert (= (and b!5509642 c!962806) b!5509644))

(assert (= (and b!5509642 (not c!962806)) b!5509634))

(assert (= (or b!5509638 b!5509644) bm!407283))

(assert (= (or b!5509638 b!5509644) bm!407279))

(assert (= (or b!5509640 bm!407283) bm!407281))

(assert (= (or b!5509640 bm!407279) bm!407278))

(assert (= (or b!5509635 bm!407278) bm!407280))

(assert (= (or b!5509635 b!5509640) bm!407282))

(declare-fun m!6515054 () Bool)

(assert (=> bm!407280 m!6515054))

(declare-fun m!6515056 () Bool)

(assert (=> bm!407281 m!6515056))

(declare-fun m!6515058 () Bool)

(assert (=> b!5509643 m!6515058))

(declare-fun m!6515060 () Bool)

(assert (=> bm!407282 m!6515060))

(declare-fun m!6515062 () Bool)

(assert (=> b!5509636 m!6515062))

(assert (=> bm!407179 d!1745842))

(declare-fun b!5509656 () Bool)

(declare-fun res!2347851 () Bool)

(declare-fun e!3407454 () Bool)

(assert (=> b!5509656 (=> (not res!2347851) (not e!3407454))))

(assert (=> b!5509656 (= res!2347851 (isEmpty!34438 (tail!10897 s!2326)))))

(declare-fun b!5509657 () Bool)

(declare-fun res!2347858 () Bool)

(declare-fun e!3407453 () Bool)

(assert (=> b!5509657 (=> res!2347858 e!3407453)))

(assert (=> b!5509657 (= res!2347858 (not (isEmpty!34438 (tail!10897 s!2326))))))

(declare-fun bm!407290 () Bool)

(declare-fun call!407295 () Bool)

(assert (=> bm!407290 (= call!407295 (isEmpty!34438 s!2326))))

(declare-fun b!5509658 () Bool)

(declare-fun e!3407451 () Bool)

(declare-fun e!3407455 () Bool)

(assert (=> b!5509658 (= e!3407451 e!3407455)))

(declare-fun c!962818 () Bool)

(assert (=> b!5509658 (= c!962818 ((_ is EmptyLang!15493) (regTwo!31498 r!7292)))))

(declare-fun b!5509659 () Bool)

(declare-fun lt!2244831 () Bool)

(assert (=> b!5509659 (= e!3407451 (= lt!2244831 call!407295))))

(declare-fun d!1745848 () Bool)

(assert (=> d!1745848 e!3407451))

(declare-fun c!962816 () Bool)

(assert (=> d!1745848 (= c!962816 ((_ is EmptyExpr!15493) (regTwo!31498 r!7292)))))

(declare-fun e!3407452 () Bool)

(assert (=> d!1745848 (= lt!2244831 e!3407452)))

(declare-fun c!962817 () Bool)

(assert (=> d!1745848 (= c!962817 (isEmpty!34438 s!2326))))

(assert (=> d!1745848 (validRegex!7229 (regTwo!31498 r!7292))))

(assert (=> d!1745848 (= (matchR!7678 (regTwo!31498 r!7292) s!2326) lt!2244831)))

(declare-fun b!5509660 () Bool)

(assert (=> b!5509660 (= e!3407454 (= (head!11802 s!2326) (c!962517 (regTwo!31498 r!7292))))))

(declare-fun b!5509661 () Bool)

(declare-fun e!3407456 () Bool)

(assert (=> b!5509661 (= e!3407456 e!3407453)))

(declare-fun res!2347853 () Bool)

(assert (=> b!5509661 (=> res!2347853 e!3407453)))

(assert (=> b!5509661 (= res!2347853 call!407295)))

(declare-fun b!5509662 () Bool)

(assert (=> b!5509662 (= e!3407452 (matchR!7678 (derivativeStep!4364 (regTwo!31498 r!7292) (head!11802 s!2326)) (tail!10897 s!2326)))))

(declare-fun b!5509663 () Bool)

(declare-fun res!2347852 () Bool)

(declare-fun e!3407450 () Bool)

(assert (=> b!5509663 (=> res!2347852 e!3407450)))

(assert (=> b!5509663 (= res!2347852 e!3407454)))

(declare-fun res!2347854 () Bool)

(assert (=> b!5509663 (=> (not res!2347854) (not e!3407454))))

(assert (=> b!5509663 (= res!2347854 lt!2244831)))

(declare-fun b!5509664 () Bool)

(assert (=> b!5509664 (= e!3407453 (not (= (head!11802 s!2326) (c!962517 (regTwo!31498 r!7292)))))))

(declare-fun b!5509665 () Bool)

(assert (=> b!5509665 (= e!3407452 (nullable!5527 (regTwo!31498 r!7292)))))

(declare-fun b!5509666 () Bool)

(assert (=> b!5509666 (= e!3407455 (not lt!2244831))))

(declare-fun b!5509667 () Bool)

(assert (=> b!5509667 (= e!3407450 e!3407456)))

(declare-fun res!2347857 () Bool)

(assert (=> b!5509667 (=> (not res!2347857) (not e!3407456))))

(assert (=> b!5509667 (= res!2347857 (not lt!2244831))))

(declare-fun b!5509668 () Bool)

(declare-fun res!2347856 () Bool)

(assert (=> b!5509668 (=> (not res!2347856) (not e!3407454))))

(assert (=> b!5509668 (= res!2347856 (not call!407295))))

(declare-fun b!5509669 () Bool)

(declare-fun res!2347855 () Bool)

(assert (=> b!5509669 (=> res!2347855 e!3407450)))

(assert (=> b!5509669 (= res!2347855 (not ((_ is ElementMatch!15493) (regTwo!31498 r!7292))))))

(assert (=> b!5509669 (= e!3407455 e!3407450)))

(assert (= (and d!1745848 c!962817) b!5509665))

(assert (= (and d!1745848 (not c!962817)) b!5509662))

(assert (= (and d!1745848 c!962816) b!5509659))

(assert (= (and d!1745848 (not c!962816)) b!5509658))

(assert (= (and b!5509658 c!962818) b!5509666))

(assert (= (and b!5509658 (not c!962818)) b!5509669))

(assert (= (and b!5509669 (not res!2347855)) b!5509663))

(assert (= (and b!5509663 res!2347854) b!5509668))

(assert (= (and b!5509668 res!2347856) b!5509656))

(assert (= (and b!5509656 res!2347851) b!5509660))

(assert (= (and b!5509663 (not res!2347852)) b!5509667))

(assert (= (and b!5509667 res!2347857) b!5509661))

(assert (= (and b!5509661 (not res!2347853)) b!5509657))

(assert (= (and b!5509657 (not res!2347858)) b!5509664))

(assert (= (or b!5509659 b!5509661 b!5509668) bm!407290))

(assert (=> bm!407290 m!6514700))

(assert (=> b!5509657 m!6514702))

(assert (=> b!5509657 m!6514702))

(assert (=> b!5509657 m!6514704))

(assert (=> b!5509656 m!6514702))

(assert (=> b!5509656 m!6514702))

(assert (=> b!5509656 m!6514704))

(assert (=> b!5509665 m!6514884))

(assert (=> d!1745848 m!6514700))

(assert (=> d!1745848 m!6514886))

(assert (=> b!5509662 m!6514708))

(assert (=> b!5509662 m!6514708))

(declare-fun m!6515066 () Bool)

(assert (=> b!5509662 m!6515066))

(assert (=> b!5509662 m!6514702))

(assert (=> b!5509662 m!6515066))

(assert (=> b!5509662 m!6514702))

(declare-fun m!6515070 () Bool)

(assert (=> b!5509662 m!6515070))

(assert (=> b!5509660 m!6514708))

(assert (=> b!5509664 m!6514708))

(assert (=> b!5508790 d!1745848))

(declare-fun d!1745850 () Bool)

(assert (=> d!1745850 (= (head!11800 (exprs!5377 (h!69104 zl!343))) (h!69102 (exprs!5377 (h!69104 zl!343))))))

(assert (=> b!5509055 d!1745850))

(assert (=> bm!407201 d!1745786))

(declare-fun d!1745854 () Bool)

(assert (=> d!1745854 (= (isEmpty!34434 (unfocusZipperList!921 zl!343)) ((_ is Nil!62654) (unfocusZipperList!921 zl!343)))))

(assert (=> b!5509150 d!1745854))

(declare-fun b!5509670 () Bool)

(declare-fun e!3407457 () Bool)

(declare-fun e!3407463 () Bool)

(assert (=> b!5509670 (= e!3407457 e!3407463)))

(declare-fun c!962819 () Bool)

(assert (=> b!5509670 (= c!962819 ((_ is Star!15493) (ite c!962540 (reg!15822 r!7292) (ite c!962541 (regTwo!31499 r!7292) (regTwo!31498 r!7292)))))))

(declare-fun call!407297 () Bool)

(declare-fun c!962820 () Bool)

(declare-fun bm!407291 () Bool)

(assert (=> bm!407291 (= call!407297 (validRegex!7229 (ite c!962820 (regOne!31499 (ite c!962540 (reg!15822 r!7292) (ite c!962541 (regTwo!31499 r!7292) (regTwo!31498 r!7292)))) (regOne!31498 (ite c!962540 (reg!15822 r!7292) (ite c!962541 (regTwo!31499 r!7292) (regTwo!31498 r!7292)))))))))

(declare-fun b!5509671 () Bool)

(declare-fun e!3407460 () Bool)

(assert (=> b!5509671 (= e!3407463 e!3407460)))

(declare-fun res!2347862 () Bool)

(assert (=> b!5509671 (= res!2347862 (not (nullable!5527 (reg!15822 (ite c!962540 (reg!15822 r!7292) (ite c!962541 (regTwo!31499 r!7292) (regTwo!31498 r!7292)))))))))

(assert (=> b!5509671 (=> (not res!2347862) (not e!3407460))))

(declare-fun b!5509672 () Bool)

(declare-fun res!2347861 () Bool)

(declare-fun e!3407462 () Bool)

(assert (=> b!5509672 (=> res!2347861 e!3407462)))

(assert (=> b!5509672 (= res!2347861 (not ((_ is Concat!24338) (ite c!962540 (reg!15822 r!7292) (ite c!962541 (regTwo!31499 r!7292) (regTwo!31498 r!7292))))))))

(declare-fun e!3407458 () Bool)

(assert (=> b!5509672 (= e!3407458 e!3407462)))

(declare-fun b!5509673 () Bool)

(declare-fun e!3407461 () Bool)

(declare-fun call!407296 () Bool)

(assert (=> b!5509673 (= e!3407461 call!407296)))

(declare-fun b!5509674 () Bool)

(declare-fun call!407298 () Bool)

(assert (=> b!5509674 (= e!3407460 call!407298)))

(declare-fun b!5509675 () Bool)

(declare-fun e!3407459 () Bool)

(assert (=> b!5509675 (= e!3407459 call!407296)))

(declare-fun bm!407292 () Bool)

(assert (=> bm!407292 (= call!407296 call!407298)))

(declare-fun b!5509677 () Bool)

(assert (=> b!5509677 (= e!3407463 e!3407458)))

(assert (=> b!5509677 (= c!962820 ((_ is Union!15493) (ite c!962540 (reg!15822 r!7292) (ite c!962541 (regTwo!31499 r!7292) (regTwo!31498 r!7292)))))))

(declare-fun b!5509678 () Bool)

(assert (=> b!5509678 (= e!3407462 e!3407461)))

(declare-fun res!2347860 () Bool)

(assert (=> b!5509678 (=> (not res!2347860) (not e!3407461))))

(assert (=> b!5509678 (= res!2347860 call!407297)))

(declare-fun bm!407293 () Bool)

(assert (=> bm!407293 (= call!407298 (validRegex!7229 (ite c!962819 (reg!15822 (ite c!962540 (reg!15822 r!7292) (ite c!962541 (regTwo!31499 r!7292) (regTwo!31498 r!7292)))) (ite c!962820 (regTwo!31499 (ite c!962540 (reg!15822 r!7292) (ite c!962541 (regTwo!31499 r!7292) (regTwo!31498 r!7292)))) (regTwo!31498 (ite c!962540 (reg!15822 r!7292) (ite c!962541 (regTwo!31499 r!7292) (regTwo!31498 r!7292))))))))))

(declare-fun d!1745856 () Bool)

(declare-fun res!2347859 () Bool)

(assert (=> d!1745856 (=> res!2347859 e!3407457)))

(assert (=> d!1745856 (= res!2347859 ((_ is ElementMatch!15493) (ite c!962540 (reg!15822 r!7292) (ite c!962541 (regTwo!31499 r!7292) (regTwo!31498 r!7292)))))))

(assert (=> d!1745856 (= (validRegex!7229 (ite c!962540 (reg!15822 r!7292) (ite c!962541 (regTwo!31499 r!7292) (regTwo!31498 r!7292)))) e!3407457)))

(declare-fun b!5509676 () Bool)

(declare-fun res!2347863 () Bool)

(assert (=> b!5509676 (=> (not res!2347863) (not e!3407459))))

(assert (=> b!5509676 (= res!2347863 call!407297)))

(assert (=> b!5509676 (= e!3407458 e!3407459)))

(assert (= (and d!1745856 (not res!2347859)) b!5509670))

(assert (= (and b!5509670 c!962819) b!5509671))

(assert (= (and b!5509670 (not c!962819)) b!5509677))

(assert (= (and b!5509671 res!2347862) b!5509674))

(assert (= (and b!5509677 c!962820) b!5509676))

(assert (= (and b!5509677 (not c!962820)) b!5509672))

(assert (= (and b!5509676 res!2347863) b!5509675))

(assert (= (and b!5509672 (not res!2347861)) b!5509678))

(assert (= (and b!5509678 res!2347860) b!5509673))

(assert (= (or b!5509675 b!5509673) bm!407292))

(assert (= (or b!5509676 b!5509678) bm!407291))

(assert (= (or b!5509674 bm!407292) bm!407293))

(declare-fun m!6515078 () Bool)

(assert (=> bm!407291 m!6515078))

(declare-fun m!6515080 () Bool)

(assert (=> b!5509671 m!6515080))

(declare-fun m!6515082 () Bool)

(assert (=> bm!407293 m!6515082))

(assert (=> bm!407111 d!1745856))

(assert (=> b!5509064 d!1745640))

(declare-fun d!1745858 () Bool)

(declare-fun c!962822 () Bool)

(declare-fun e!3407468 () Bool)

(assert (=> d!1745858 (= c!962822 e!3407468)))

(declare-fun res!2347868 () Bool)

(assert (=> d!1745858 (=> (not res!2347868) (not e!3407468))))

(assert (=> d!1745858 (= res!2347868 ((_ is Cons!62654) (exprs!5377 (Context!9755 (t!376021 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654))))))))))

(declare-fun e!3407469 () (InoxSet Context!9754))

(assert (=> d!1745858 (= (derivationStepZipperUp!761 (Context!9755 (t!376021 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654))))) (h!69103 s!2326)) e!3407469)))

(declare-fun bm!407294 () Bool)

(declare-fun call!407299 () (InoxSet Context!9754))

(assert (=> bm!407294 (= call!407299 (derivationStepZipperDown!835 (h!69102 (exprs!5377 (Context!9755 (t!376021 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654))))))) (Context!9755 (t!376021 (exprs!5377 (Context!9755 (t!376021 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654)))))))) (h!69103 s!2326)))))

(declare-fun b!5509683 () Bool)

(assert (=> b!5509683 (= e!3407468 (nullable!5527 (h!69102 (exprs!5377 (Context!9755 (t!376021 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654)))))))))))

(declare-fun b!5509684 () Bool)

(declare-fun e!3407470 () (InoxSet Context!9754))

(assert (=> b!5509684 (= e!3407470 ((as const (Array Context!9754 Bool)) false))))

(declare-fun b!5509685 () Bool)

(assert (=> b!5509685 (= e!3407470 call!407299)))

(declare-fun b!5509686 () Bool)

(assert (=> b!5509686 (= e!3407469 ((_ map or) call!407299 (derivationStepZipperUp!761 (Context!9755 (t!376021 (exprs!5377 (Context!9755 (t!376021 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654)))))))) (h!69103 s!2326))))))

(declare-fun b!5509687 () Bool)

(assert (=> b!5509687 (= e!3407469 e!3407470)))

(declare-fun c!962821 () Bool)

(assert (=> b!5509687 (= c!962821 ((_ is Cons!62654) (exprs!5377 (Context!9755 (t!376021 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654))))))))))

(assert (= (and d!1745858 res!2347868) b!5509683))

(assert (= (and d!1745858 c!962822) b!5509686))

(assert (= (and d!1745858 (not c!962822)) b!5509687))

(assert (= (and b!5509687 c!962821) b!5509685))

(assert (= (and b!5509687 (not c!962821)) b!5509684))

(assert (= (or b!5509686 b!5509685) bm!407294))

(declare-fun m!6515084 () Bool)

(assert (=> bm!407294 m!6515084))

(declare-fun m!6515086 () Bool)

(assert (=> b!5509683 m!6515086))

(declare-fun m!6515088 () Bool)

(assert (=> b!5509686 m!6515088))

(assert (=> b!5509172 d!1745858))

(assert (=> bm!407204 d!1745786))

(declare-fun d!1745860 () Bool)

(assert (=> d!1745860 (= (nullable!5527 (h!69102 (exprs!5377 lt!2244721))) (nullableFct!1657 (h!69102 (exprs!5377 lt!2244721))))))

(declare-fun bs!1270288 () Bool)

(assert (= bs!1270288 d!1745860))

(declare-fun m!6515090 () Bool)

(assert (=> bs!1270288 m!6515090))

(assert (=> b!5509106 d!1745860))

(declare-fun d!1745862 () Bool)

(assert (=> d!1745862 true))

(assert (=> d!1745862 true))

(declare-fun res!2347875 () Bool)

(assert (=> d!1745862 (= (choose!41864 lambda!295059) res!2347875)))

(assert (=> d!1745606 d!1745862))

(declare-fun d!1745866 () Bool)

(declare-fun res!2347885 () Bool)

(declare-fun e!3407492 () Bool)

(assert (=> d!1745866 (=> res!2347885 e!3407492)))

(assert (=> d!1745866 (= res!2347885 ((_ is Nil!62656) lt!2244799))))

(assert (=> d!1745866 (= (noDuplicate!1492 lt!2244799) e!3407492)))

(declare-fun b!5509714 () Bool)

(declare-fun e!3407493 () Bool)

(assert (=> b!5509714 (= e!3407492 e!3407493)))

(declare-fun res!2347886 () Bool)

(assert (=> b!5509714 (=> (not res!2347886) (not e!3407493))))

(declare-fun contains!19777 (List!62780 Context!9754) Bool)

(assert (=> b!5509714 (= res!2347886 (not (contains!19777 (t!376023 lt!2244799) (h!69104 lt!2244799))))))

(declare-fun b!5509715 () Bool)

(assert (=> b!5509715 (= e!3407493 (noDuplicate!1492 (t!376023 lt!2244799)))))

(assert (= (and d!1745866 (not res!2347885)) b!5509714))

(assert (= (and b!5509714 res!2347886) b!5509715))

(declare-fun m!6515102 () Bool)

(assert (=> b!5509714 m!6515102))

(declare-fun m!6515104 () Bool)

(assert (=> b!5509715 m!6515104))

(assert (=> d!1745646 d!1745866))

(declare-fun d!1745870 () Bool)

(declare-fun e!3407511 () Bool)

(assert (=> d!1745870 e!3407511))

(declare-fun res!2347899 () Bool)

(assert (=> d!1745870 (=> (not res!2347899) (not e!3407511))))

(declare-fun res!2347898 () List!62780)

(assert (=> d!1745870 (= res!2347899 (noDuplicate!1492 res!2347898))))

(declare-fun e!3407509 () Bool)

(assert (=> d!1745870 e!3407509))

(assert (=> d!1745870 (= (choose!41868 z!1189) res!2347898)))

(declare-fun b!5509734 () Bool)

(declare-fun e!3407510 () Bool)

(declare-fun tp!1515837 () Bool)

(assert (=> b!5509734 (= e!3407510 tp!1515837)))

(declare-fun b!5509733 () Bool)

(declare-fun tp!1515836 () Bool)

(assert (=> b!5509733 (= e!3407509 (and (inv!81979 (h!69104 res!2347898)) e!3407510 tp!1515836))))

(declare-fun b!5509735 () Bool)

(assert (=> b!5509735 (= e!3407511 (= (content!11255 res!2347898) z!1189))))

(assert (= b!5509733 b!5509734))

(assert (= (and d!1745870 ((_ is Cons!62656) res!2347898)) b!5509733))

(assert (= (and d!1745870 res!2347899) b!5509735))

(declare-fun m!6515126 () Bool)

(assert (=> d!1745870 m!6515126))

(declare-fun m!6515128 () Bool)

(assert (=> b!5509733 m!6515128))

(declare-fun m!6515130 () Bool)

(assert (=> b!5509735 m!6515130))

(assert (=> d!1745646 d!1745870))

(declare-fun d!1745880 () Bool)

(assert (=> d!1745880 (= (isConcat!594 lt!2244793) ((_ is Concat!24338) lt!2244793))))

(assert (=> b!5509062 d!1745880))

(declare-fun d!1745882 () Bool)

(declare-fun res!2347922 () Bool)

(declare-fun e!3407532 () Bool)

(assert (=> d!1745882 (=> res!2347922 e!3407532)))

(assert (=> d!1745882 (= res!2347922 ((_ is Nil!62654) lt!2244807))))

(assert (=> d!1745882 (= (forall!14673 lt!2244807 lambda!295114) e!3407532)))

(declare-fun b!5509770 () Bool)

(declare-fun e!3407533 () Bool)

(assert (=> b!5509770 (= e!3407532 e!3407533)))

(declare-fun res!2347923 () Bool)

(assert (=> b!5509770 (=> (not res!2347923) (not e!3407533))))

(declare-fun dynLambda!24482 (Int Regex!15493) Bool)

(assert (=> b!5509770 (= res!2347923 (dynLambda!24482 lambda!295114 (h!69102 lt!2244807)))))

(declare-fun b!5509771 () Bool)

(assert (=> b!5509771 (= e!3407533 (forall!14673 (t!376021 lt!2244807) lambda!295114))))

(assert (= (and d!1745882 (not res!2347922)) b!5509770))

(assert (= (and b!5509770 res!2347923) b!5509771))

(declare-fun b_lambda!208889 () Bool)

(assert (=> (not b_lambda!208889) (not b!5509770)))

(declare-fun m!6515156 () Bool)

(assert (=> b!5509770 m!6515156))

(declare-fun m!6515158 () Bool)

(assert (=> b!5509771 m!6515158))

(assert (=> d!1745668 d!1745882))

(assert (=> b!5509156 d!1745626))

(declare-fun bs!1270290 () Bool)

(declare-fun d!1745888 () Bool)

(assert (= bs!1270290 (and d!1745888 d!1745668)))

(declare-fun lambda!295144 () Int)

(assert (=> bs!1270290 (= lambda!295144 lambda!295114)))

(declare-fun bs!1270291 () Bool)

(assert (= bs!1270291 (and d!1745888 d!1745644)))

(assert (=> bs!1270291 (= lambda!295144 lambda!295108)))

(declare-fun bs!1270292 () Bool)

(assert (= bs!1270292 (and d!1745888 d!1745642)))

(assert (=> bs!1270292 (= lambda!295144 lambda!295107)))

(declare-fun bs!1270293 () Bool)

(assert (= bs!1270293 (and d!1745888 d!1745666)))

(assert (=> bs!1270293 (= lambda!295144 lambda!295111)))

(declare-fun bs!1270294 () Bool)

(assert (= bs!1270294 (and d!1745888 d!1745836)))

(assert (=> bs!1270294 (= lambda!295144 lambda!295142)))

(declare-fun bs!1270295 () Bool)

(assert (= bs!1270295 (and d!1745888 d!1745626)))

(assert (=> bs!1270295 (= lambda!295144 lambda!295104)))

(declare-fun lt!2244834 () List!62778)

(assert (=> d!1745888 (forall!14673 lt!2244834 lambda!295144)))

(declare-fun e!3407534 () List!62778)

(assert (=> d!1745888 (= lt!2244834 e!3407534)))

(declare-fun c!962836 () Bool)

(assert (=> d!1745888 (= c!962836 ((_ is Cons!62656) (t!376023 zl!343)))))

(assert (=> d!1745888 (= (unfocusZipperList!921 (t!376023 zl!343)) lt!2244834)))

(declare-fun b!5509772 () Bool)

(assert (=> b!5509772 (= e!3407534 (Cons!62654 (generalisedConcat!1108 (exprs!5377 (h!69104 (t!376023 zl!343)))) (unfocusZipperList!921 (t!376023 (t!376023 zl!343)))))))

(declare-fun b!5509773 () Bool)

(assert (=> b!5509773 (= e!3407534 Nil!62654)))

(assert (= (and d!1745888 c!962836) b!5509772))

(assert (= (and d!1745888 (not c!962836)) b!5509773))

(declare-fun m!6515166 () Bool)

(assert (=> d!1745888 m!6515166))

(declare-fun m!6515168 () Bool)

(assert (=> b!5509772 m!6515168))

(declare-fun m!6515170 () Bool)

(assert (=> b!5509772 m!6515170))

(assert (=> b!5509156 d!1745888))

(assert (=> bs!1270214 d!1745546))

(declare-fun d!1745892 () Bool)

(assert (=> d!1745892 (= ($colon$colon!1578 (exprs!5377 lt!2244723) (ite (or c!962670 c!962668) (regTwo!31498 (regTwo!31498 r!7292)) (regTwo!31498 r!7292))) (Cons!62654 (ite (or c!962670 c!962668) (regTwo!31498 (regTwo!31498 r!7292)) (regTwo!31498 r!7292)) (exprs!5377 lt!2244723)))))

(assert (=> bm!407186 d!1745892))

(declare-fun d!1745894 () Bool)

(assert (=> d!1745894 (= (isEmpty!34438 (tail!10897 s!2326)) ((_ is Nil!62655) (tail!10897 s!2326)))))

(assert (=> b!5509247 d!1745894))

(declare-fun d!1745896 () Bool)

(assert (=> d!1745896 (= (tail!10897 s!2326) (t!376022 s!2326))))

(assert (=> b!5509247 d!1745896))

(declare-fun d!1745898 () Bool)

(assert (=> d!1745898 (= (isEmpty!34434 (exprs!5377 (h!69104 zl!343))) ((_ is Nil!62654) (exprs!5377 (h!69104 zl!343))))))

(assert (=> b!5509060 d!1745898))

(declare-fun b!5509774 () Bool)

(declare-fun e!3407540 () (InoxSet Context!9754))

(assert (=> b!5509774 (= e!3407540 ((as const (Array Context!9754 Bool)) false))))

(declare-fun bm!407306 () Bool)

(declare-fun call!407316 () (InoxSet Context!9754))

(declare-fun call!407315 () (InoxSet Context!9754))

(assert (=> bm!407306 (= call!407316 call!407315)))

(declare-fun bm!407307 () Bool)

(declare-fun call!407312 () (InoxSet Context!9754))

(assert (=> bm!407307 (= call!407312 call!407316)))

(declare-fun c!962841 () Bool)

(declare-fun c!962839 () Bool)

(declare-fun call!407311 () List!62778)

(declare-fun c!962838 () Bool)

(declare-fun bm!407308 () Bool)

(assert (=> bm!407308 (= call!407315 (derivationStepZipperDown!835 (ite c!962838 (regTwo!31499 (h!69102 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654))))) (ite c!962841 (regTwo!31498 (h!69102 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654))))) (ite c!962839 (regOne!31498 (h!69102 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654))))) (reg!15822 (h!69102 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654)))))))) (ite (or c!962838 c!962841) (Context!9755 (t!376021 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654))))) (Context!9755 call!407311)) (h!69103 s!2326)))))

(declare-fun b!5509775 () Bool)

(declare-fun e!3407536 () (InoxSet Context!9754))

(declare-fun call!407313 () (InoxSet Context!9754))

(assert (=> b!5509775 (= e!3407536 ((_ map or) call!407313 call!407315))))

(declare-fun b!5509776 () Bool)

(declare-fun e!3407539 () Bool)

(assert (=> b!5509776 (= e!3407539 (nullable!5527 (regOne!31498 (h!69102 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654)))))))))

(declare-fun d!1745900 () Bool)

(declare-fun c!962840 () Bool)

(assert (=> d!1745900 (= c!962840 (and ((_ is ElementMatch!15493) (h!69102 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654))))) (= (c!962517 (h!69102 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654))))) (h!69103 s!2326))))))

(declare-fun e!3407538 () (InoxSet Context!9754))

(assert (=> d!1745900 (= (derivationStepZipperDown!835 (h!69102 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654)))) (Context!9755 (t!376021 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654))))) (h!69103 s!2326)) e!3407538)))

(declare-fun b!5509777 () Bool)

(assert (=> b!5509777 (= c!962841 e!3407539)))

(declare-fun res!2347924 () Bool)

(assert (=> b!5509777 (=> (not res!2347924) (not e!3407539))))

(assert (=> b!5509777 (= res!2347924 ((_ is Concat!24338) (h!69102 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654))))))))

(declare-fun e!3407537 () (InoxSet Context!9754))

(assert (=> b!5509777 (= e!3407536 e!3407537)))

(declare-fun b!5509778 () Bool)

(declare-fun e!3407535 () (InoxSet Context!9754))

(assert (=> b!5509778 (= e!3407535 call!407312)))

(declare-fun b!5509779 () Bool)

(assert (=> b!5509779 (= e!3407537 e!3407535)))

(assert (=> b!5509779 (= c!962839 ((_ is Concat!24338) (h!69102 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654))))))))

(declare-fun call!407314 () List!62778)

(declare-fun bm!407309 () Bool)

(assert (=> bm!407309 (= call!407314 ($colon$colon!1578 (exprs!5377 (Context!9755 (t!376021 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654)))))) (ite (or c!962841 c!962839) (regTwo!31498 (h!69102 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654))))) (h!69102 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654)))))))))

(declare-fun bm!407310 () Bool)

(assert (=> bm!407310 (= call!407313 (derivationStepZipperDown!835 (ite c!962838 (regOne!31499 (h!69102 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654))))) (regOne!31498 (h!69102 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654)))))) (ite c!962838 (Context!9755 (t!376021 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654))))) (Context!9755 call!407314)) (h!69103 s!2326)))))

(declare-fun b!5509780 () Bool)

(assert (=> b!5509780 (= e!3407537 ((_ map or) call!407313 call!407316))))

(declare-fun bm!407311 () Bool)

(assert (=> bm!407311 (= call!407311 call!407314)))

(declare-fun b!5509781 () Bool)

(assert (=> b!5509781 (= e!3407538 e!3407536)))

(assert (=> b!5509781 (= c!962838 ((_ is Union!15493) (h!69102 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654))))))))

(declare-fun b!5509782 () Bool)

(declare-fun c!962837 () Bool)

(assert (=> b!5509782 (= c!962837 ((_ is Star!15493) (h!69102 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654))))))))

(assert (=> b!5509782 (= e!3407535 e!3407540)))

(declare-fun b!5509783 () Bool)

(assert (=> b!5509783 (= e!3407538 (store ((as const (Array Context!9754 Bool)) false) (Context!9755 (t!376021 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654))))) true))))

(declare-fun b!5509784 () Bool)

(assert (=> b!5509784 (= e!3407540 call!407312)))

(assert (= (and d!1745900 c!962840) b!5509783))

(assert (= (and d!1745900 (not c!962840)) b!5509781))

(assert (= (and b!5509781 c!962838) b!5509775))

(assert (= (and b!5509781 (not c!962838)) b!5509777))

(assert (= (and b!5509777 res!2347924) b!5509776))

(assert (= (and b!5509777 c!962841) b!5509780))

(assert (= (and b!5509777 (not c!962841)) b!5509779))

(assert (= (and b!5509779 c!962839) b!5509778))

(assert (= (and b!5509779 (not c!962839)) b!5509782))

(assert (= (and b!5509782 c!962837) b!5509784))

(assert (= (and b!5509782 (not c!962837)) b!5509774))

(assert (= (or b!5509778 b!5509784) bm!407311))

(assert (= (or b!5509778 b!5509784) bm!407307))

(assert (= (or b!5509780 bm!407311) bm!407309))

(assert (= (or b!5509780 bm!407307) bm!407306))

(assert (= (or b!5509775 bm!407306) bm!407308))

(assert (= (or b!5509775 b!5509780) bm!407310))

(declare-fun m!6515172 () Bool)

(assert (=> bm!407308 m!6515172))

(declare-fun m!6515174 () Bool)

(assert (=> bm!407309 m!6515174))

(declare-fun m!6515176 () Bool)

(assert (=> b!5509783 m!6515176))

(declare-fun m!6515178 () Bool)

(assert (=> bm!407310 m!6515178))

(declare-fun m!6515180 () Bool)

(assert (=> b!5509776 m!6515180))

(assert (=> bm!407195 d!1745900))

(declare-fun b!5509785 () Bool)

(declare-fun e!3407541 () Bool)

(declare-fun e!3407547 () Bool)

(assert (=> b!5509785 (= e!3407541 e!3407547)))

(declare-fun c!962842 () Bool)

(assert (=> b!5509785 (= c!962842 ((_ is Star!15493) lt!2244793))))

(declare-fun bm!407312 () Bool)

(declare-fun call!407318 () Bool)

(declare-fun c!962843 () Bool)

(assert (=> bm!407312 (= call!407318 (validRegex!7229 (ite c!962843 (regOne!31499 lt!2244793) (regOne!31498 lt!2244793))))))

(declare-fun b!5509786 () Bool)

(declare-fun e!3407544 () Bool)

(assert (=> b!5509786 (= e!3407547 e!3407544)))

(declare-fun res!2347928 () Bool)

(assert (=> b!5509786 (= res!2347928 (not (nullable!5527 (reg!15822 lt!2244793))))))

(assert (=> b!5509786 (=> (not res!2347928) (not e!3407544))))

(declare-fun b!5509787 () Bool)

(declare-fun res!2347927 () Bool)

(declare-fun e!3407546 () Bool)

(assert (=> b!5509787 (=> res!2347927 e!3407546)))

(assert (=> b!5509787 (= res!2347927 (not ((_ is Concat!24338) lt!2244793)))))

(declare-fun e!3407542 () Bool)

(assert (=> b!5509787 (= e!3407542 e!3407546)))

(declare-fun b!5509788 () Bool)

(declare-fun e!3407545 () Bool)

(declare-fun call!407317 () Bool)

(assert (=> b!5509788 (= e!3407545 call!407317)))

(declare-fun b!5509789 () Bool)

(declare-fun call!407319 () Bool)

(assert (=> b!5509789 (= e!3407544 call!407319)))

(declare-fun b!5509790 () Bool)

(declare-fun e!3407543 () Bool)

(assert (=> b!5509790 (= e!3407543 call!407317)))

(declare-fun bm!407313 () Bool)

(assert (=> bm!407313 (= call!407317 call!407319)))

(declare-fun b!5509792 () Bool)

(assert (=> b!5509792 (= e!3407547 e!3407542)))

(assert (=> b!5509792 (= c!962843 ((_ is Union!15493) lt!2244793))))

(declare-fun b!5509793 () Bool)

(assert (=> b!5509793 (= e!3407546 e!3407545)))

(declare-fun res!2347926 () Bool)

(assert (=> b!5509793 (=> (not res!2347926) (not e!3407545))))

(assert (=> b!5509793 (= res!2347926 call!407318)))

(declare-fun bm!407314 () Bool)

(assert (=> bm!407314 (= call!407319 (validRegex!7229 (ite c!962842 (reg!15822 lt!2244793) (ite c!962843 (regTwo!31499 lt!2244793) (regTwo!31498 lt!2244793)))))))

(declare-fun d!1745902 () Bool)

(declare-fun res!2347925 () Bool)

(assert (=> d!1745902 (=> res!2347925 e!3407541)))

(assert (=> d!1745902 (= res!2347925 ((_ is ElementMatch!15493) lt!2244793))))

(assert (=> d!1745902 (= (validRegex!7229 lt!2244793) e!3407541)))

(declare-fun b!5509791 () Bool)

(declare-fun res!2347929 () Bool)

(assert (=> b!5509791 (=> (not res!2347929) (not e!3407543))))

(assert (=> b!5509791 (= res!2347929 call!407318)))

(assert (=> b!5509791 (= e!3407542 e!3407543)))

(assert (= (and d!1745902 (not res!2347925)) b!5509785))

(assert (= (and b!5509785 c!962842) b!5509786))

(assert (= (and b!5509785 (not c!962842)) b!5509792))

(assert (= (and b!5509786 res!2347928) b!5509789))

(assert (= (and b!5509792 c!962843) b!5509791))

(assert (= (and b!5509792 (not c!962843)) b!5509787))

(assert (= (and b!5509791 res!2347929) b!5509790))

(assert (= (and b!5509787 (not res!2347927)) b!5509793))

(assert (= (and b!5509793 res!2347926) b!5509788))

(assert (= (or b!5509790 b!5509788) bm!407313))

(assert (= (or b!5509791 b!5509793) bm!407312))

(assert (= (or b!5509789 bm!407313) bm!407314))

(declare-fun m!6515182 () Bool)

(assert (=> bm!407312 m!6515182))

(declare-fun m!6515184 () Bool)

(assert (=> b!5509786 m!6515184))

(declare-fun m!6515186 () Bool)

(assert (=> bm!407314 m!6515186))

(assert (=> d!1745626 d!1745902))

(declare-fun d!1745904 () Bool)

(declare-fun res!2347930 () Bool)

(declare-fun e!3407548 () Bool)

(assert (=> d!1745904 (=> res!2347930 e!3407548)))

(assert (=> d!1745904 (= res!2347930 ((_ is Nil!62654) (exprs!5377 (h!69104 zl!343))))))

(assert (=> d!1745904 (= (forall!14673 (exprs!5377 (h!69104 zl!343)) lambda!295104) e!3407548)))

(declare-fun b!5509794 () Bool)

(declare-fun e!3407549 () Bool)

(assert (=> b!5509794 (= e!3407548 e!3407549)))

(declare-fun res!2347931 () Bool)

(assert (=> b!5509794 (=> (not res!2347931) (not e!3407549))))

(assert (=> b!5509794 (= res!2347931 (dynLambda!24482 lambda!295104 (h!69102 (exprs!5377 (h!69104 zl!343)))))))

(declare-fun b!5509795 () Bool)

(assert (=> b!5509795 (= e!3407549 (forall!14673 (t!376021 (exprs!5377 (h!69104 zl!343))) lambda!295104))))

(assert (= (and d!1745904 (not res!2347930)) b!5509794))

(assert (= (and b!5509794 res!2347931) b!5509795))

(declare-fun b_lambda!208891 () Bool)

(assert (=> (not b_lambda!208891) (not b!5509794)))

(declare-fun m!6515188 () Bool)

(assert (=> b!5509794 m!6515188))

(declare-fun m!6515190 () Bool)

(assert (=> b!5509795 m!6515190))

(assert (=> d!1745626 d!1745904))

(declare-fun d!1745906 () Bool)

(assert (=> d!1745906 (= (isUnion!512 lt!2244804) ((_ is Union!15493) lt!2244804))))

(assert (=> b!5509144 d!1745906))

(declare-fun b!5509830 () Bool)

(declare-fun e!3407572 () Bool)

(declare-fun e!3407573 () Bool)

(assert (=> b!5509830 (= e!3407572 e!3407573)))

(declare-fun res!2347942 () Bool)

(assert (=> b!5509830 (=> (not res!2347942) (not e!3407573))))

(assert (=> b!5509830 (= res!2347942 (and (not ((_ is EmptyLang!15493) (regOne!31498 r!7292))) (not ((_ is ElementMatch!15493) (regOne!31498 r!7292)))))))

(declare-fun b!5509831 () Bool)

(declare-fun e!3407575 () Bool)

(declare-fun call!407333 () Bool)

(assert (=> b!5509831 (= e!3407575 call!407333)))

(declare-fun b!5509832 () Bool)

(declare-fun e!3407574 () Bool)

(assert (=> b!5509832 (= e!3407573 e!3407574)))

(declare-fun res!2347946 () Bool)

(assert (=> b!5509832 (=> res!2347946 e!3407574)))

(assert (=> b!5509832 (= res!2347946 ((_ is Star!15493) (regOne!31498 r!7292)))))

(declare-fun bm!407327 () Bool)

(declare-fun c!962856 () Bool)

(assert (=> bm!407327 (= call!407333 (nullable!5527 (ite c!962856 (regTwo!31499 (regOne!31498 r!7292)) (regTwo!31498 (regOne!31498 r!7292)))))))

(declare-fun bm!407328 () Bool)

(declare-fun call!407332 () Bool)

(assert (=> bm!407328 (= call!407332 (nullable!5527 (ite c!962856 (regOne!31499 (regOne!31498 r!7292)) (regOne!31498 (regOne!31498 r!7292)))))))

(declare-fun b!5509833 () Bool)

(declare-fun e!3407576 () Bool)

(declare-fun e!3407577 () Bool)

(assert (=> b!5509833 (= e!3407576 e!3407577)))

(declare-fun res!2347944 () Bool)

(assert (=> b!5509833 (= res!2347944 call!407332)))

(assert (=> b!5509833 (=> (not res!2347944) (not e!3407577))))

(declare-fun d!1745908 () Bool)

(declare-fun res!2347943 () Bool)

(assert (=> d!1745908 (=> res!2347943 e!3407572)))

(assert (=> d!1745908 (= res!2347943 ((_ is EmptyExpr!15493) (regOne!31498 r!7292)))))

(assert (=> d!1745908 (= (nullableFct!1657 (regOne!31498 r!7292)) e!3407572)))

(declare-fun b!5509834 () Bool)

(assert (=> b!5509834 (= e!3407576 e!3407575)))

(declare-fun res!2347945 () Bool)

(assert (=> b!5509834 (= res!2347945 call!407332)))

(assert (=> b!5509834 (=> res!2347945 e!3407575)))

(declare-fun b!5509835 () Bool)

(assert (=> b!5509835 (= e!3407577 call!407333)))

(declare-fun b!5509836 () Bool)

(assert (=> b!5509836 (= e!3407574 e!3407576)))

(assert (=> b!5509836 (= c!962856 ((_ is Union!15493) (regOne!31498 r!7292)))))

(assert (= (and d!1745908 (not res!2347943)) b!5509830))

(assert (= (and b!5509830 res!2347942) b!5509832))

(assert (= (and b!5509832 (not res!2347946)) b!5509836))

(assert (= (and b!5509836 c!962856) b!5509834))

(assert (= (and b!5509836 (not c!962856)) b!5509833))

(assert (= (and b!5509834 (not res!2347945)) b!5509831))

(assert (= (and b!5509833 res!2347944) b!5509835))

(assert (= (or b!5509831 b!5509835) bm!407327))

(assert (= (or b!5509834 b!5509833) bm!407328))

(declare-fun m!6515192 () Bool)

(assert (=> bm!407327 m!6515192))

(declare-fun m!6515194 () Bool)

(assert (=> bm!407328 m!6515194))

(assert (=> d!1745648 d!1745908))

(assert (=> d!1745658 d!1745652))

(declare-fun d!1745910 () Bool)

(assert (=> d!1745910 (= (flatMap!1106 lt!2244713 lambda!295061) (dynLambda!24480 lambda!295061 lt!2244711))))

(assert (=> d!1745910 true))

(declare-fun _$13!2033 () Unit!155446)

(assert (=> d!1745910 (= (choose!41863 lt!2244713 lt!2244711 lambda!295061) _$13!2033)))

(declare-fun b_lambda!208893 () Bool)

(assert (=> (not b_lambda!208893) (not d!1745910)))

(declare-fun bs!1270296 () Bool)

(assert (= bs!1270296 d!1745910))

(assert (=> bs!1270296 m!6514312))

(assert (=> bs!1270296 m!6514634))

(assert (=> d!1745658 d!1745910))

(declare-fun d!1745912 () Bool)

(assert (=> d!1745912 true))

(assert (=> d!1745912 true))

(declare-fun res!2347947 () Bool)

(assert (=> d!1745912 (= (choose!41864 lambda!295060) res!2347947)))

(assert (=> d!1745604 d!1745912))

(declare-fun b!5509843 () Bool)

(declare-fun e!3407579 () Bool)

(declare-fun e!3407589 () Bool)

(assert (=> b!5509843 (= e!3407579 e!3407589)))

(declare-fun c!962862 () Bool)

(assert (=> b!5509843 (= c!962862 ((_ is Star!15493) lt!2244796))))

(declare-fun bm!407330 () Bool)

(declare-fun call!407339 () Bool)

(declare-fun c!962863 () Bool)

(assert (=> bm!407330 (= call!407339 (validRegex!7229 (ite c!962863 (regOne!31499 lt!2244796) (regOne!31498 lt!2244796))))))

(declare-fun b!5509846 () Bool)

(declare-fun e!3407583 () Bool)

(assert (=> b!5509846 (= e!3407589 e!3407583)))

(declare-fun res!2347951 () Bool)

(assert (=> b!5509846 (= res!2347951 (not (nullable!5527 (reg!15822 lt!2244796))))))

(assert (=> b!5509846 (=> (not res!2347951) (not e!3407583))))

(declare-fun b!5509848 () Bool)

(declare-fun res!2347950 () Bool)

(declare-fun e!3407586 () Bool)

(assert (=> b!5509848 (=> res!2347950 e!3407586)))

(assert (=> b!5509848 (= res!2347950 (not ((_ is Concat!24338) lt!2244796)))))

(declare-fun e!3407581 () Bool)

(assert (=> b!5509848 (= e!3407581 e!3407586)))

(declare-fun b!5509850 () Bool)

(declare-fun e!3407584 () Bool)

(declare-fun call!407335 () Bool)

(assert (=> b!5509850 (= e!3407584 call!407335)))

(declare-fun b!5509851 () Bool)

(declare-fun call!407340 () Bool)

(assert (=> b!5509851 (= e!3407583 call!407340)))

(declare-fun b!5509852 () Bool)

(declare-fun e!3407582 () Bool)

(assert (=> b!5509852 (= e!3407582 call!407335)))

(declare-fun bm!407334 () Bool)

(assert (=> bm!407334 (= call!407335 call!407340)))

(declare-fun b!5509854 () Bool)

(assert (=> b!5509854 (= e!3407589 e!3407581)))

(assert (=> b!5509854 (= c!962863 ((_ is Union!15493) lt!2244796))))

(declare-fun b!5509855 () Bool)

(assert (=> b!5509855 (= e!3407586 e!3407584)))

(declare-fun res!2347949 () Bool)

(assert (=> b!5509855 (=> (not res!2347949) (not e!3407584))))

(assert (=> b!5509855 (= res!2347949 call!407339)))

(declare-fun bm!407335 () Bool)

(assert (=> bm!407335 (= call!407340 (validRegex!7229 (ite c!962862 (reg!15822 lt!2244796) (ite c!962863 (regTwo!31499 lt!2244796) (regTwo!31498 lt!2244796)))))))

(declare-fun d!1745914 () Bool)

(declare-fun res!2347948 () Bool)

(assert (=> d!1745914 (=> res!2347948 e!3407579)))

(assert (=> d!1745914 (= res!2347948 ((_ is ElementMatch!15493) lt!2244796))))

(assert (=> d!1745914 (= (validRegex!7229 lt!2244796) e!3407579)))

(declare-fun b!5509853 () Bool)

(declare-fun res!2347952 () Bool)

(assert (=> b!5509853 (=> (not res!2347952) (not e!3407582))))

(assert (=> b!5509853 (= res!2347952 call!407339)))

(assert (=> b!5509853 (= e!3407581 e!3407582)))

(assert (= (and d!1745914 (not res!2347948)) b!5509843))

(assert (= (and b!5509843 c!962862) b!5509846))

(assert (= (and b!5509843 (not c!962862)) b!5509854))

(assert (= (and b!5509846 res!2347951) b!5509851))

(assert (= (and b!5509854 c!962863) b!5509853))

(assert (= (and b!5509854 (not c!962863)) b!5509848))

(assert (= (and b!5509853 res!2347952) b!5509852))

(assert (= (and b!5509848 (not res!2347950)) b!5509855))

(assert (= (and b!5509855 res!2347949) b!5509850))

(assert (= (or b!5509852 b!5509850) bm!407334))

(assert (= (or b!5509853 b!5509855) bm!407330))

(assert (= (or b!5509851 bm!407334) bm!407335))

(declare-fun m!6515196 () Bool)

(assert (=> bm!407330 m!6515196))

(declare-fun m!6515198 () Bool)

(assert (=> b!5509846 m!6515198))

(declare-fun m!6515200 () Bool)

(assert (=> bm!407335 m!6515200))

(assert (=> d!1745638 d!1745914))

(assert (=> d!1745638 d!1745666))

(assert (=> d!1745638 d!1745668))

(declare-fun b!5509856 () Bool)

(declare-fun e!3407590 () Bool)

(declare-fun e!3407596 () Bool)

(assert (=> b!5509856 (= e!3407590 e!3407596)))

(declare-fun c!962864 () Bool)

(assert (=> b!5509856 (= c!962864 ((_ is Star!15493) lt!2244804))))

(declare-fun bm!407336 () Bool)

(declare-fun call!407342 () Bool)

(declare-fun c!962865 () Bool)

(assert (=> bm!407336 (= call!407342 (validRegex!7229 (ite c!962865 (regOne!31499 lt!2244804) (regOne!31498 lt!2244804))))))

(declare-fun b!5509857 () Bool)

(declare-fun e!3407593 () Bool)

(assert (=> b!5509857 (= e!3407596 e!3407593)))

(declare-fun res!2347956 () Bool)

(assert (=> b!5509857 (= res!2347956 (not (nullable!5527 (reg!15822 lt!2244804))))))

(assert (=> b!5509857 (=> (not res!2347956) (not e!3407593))))

(declare-fun b!5509858 () Bool)

(declare-fun res!2347955 () Bool)

(declare-fun e!3407595 () Bool)

(assert (=> b!5509858 (=> res!2347955 e!3407595)))

(assert (=> b!5509858 (= res!2347955 (not ((_ is Concat!24338) lt!2244804)))))

(declare-fun e!3407591 () Bool)

(assert (=> b!5509858 (= e!3407591 e!3407595)))

(declare-fun b!5509859 () Bool)

(declare-fun e!3407594 () Bool)

(declare-fun call!407341 () Bool)

(assert (=> b!5509859 (= e!3407594 call!407341)))

(declare-fun b!5509860 () Bool)

(declare-fun call!407343 () Bool)

(assert (=> b!5509860 (= e!3407593 call!407343)))

(declare-fun b!5509861 () Bool)

(declare-fun e!3407592 () Bool)

(assert (=> b!5509861 (= e!3407592 call!407341)))

(declare-fun bm!407337 () Bool)

(assert (=> bm!407337 (= call!407341 call!407343)))

(declare-fun b!5509863 () Bool)

(assert (=> b!5509863 (= e!3407596 e!3407591)))

(assert (=> b!5509863 (= c!962865 ((_ is Union!15493) lt!2244804))))

(declare-fun b!5509864 () Bool)

(assert (=> b!5509864 (= e!3407595 e!3407594)))

(declare-fun res!2347954 () Bool)

(assert (=> b!5509864 (=> (not res!2347954) (not e!3407594))))

(assert (=> b!5509864 (= res!2347954 call!407342)))

(declare-fun bm!407338 () Bool)

(assert (=> bm!407338 (= call!407343 (validRegex!7229 (ite c!962864 (reg!15822 lt!2244804) (ite c!962865 (regTwo!31499 lt!2244804) (regTwo!31498 lt!2244804)))))))

(declare-fun d!1745916 () Bool)

(declare-fun res!2347953 () Bool)

(assert (=> d!1745916 (=> res!2347953 e!3407590)))

(assert (=> d!1745916 (= res!2347953 ((_ is ElementMatch!15493) lt!2244804))))

(assert (=> d!1745916 (= (validRegex!7229 lt!2244804) e!3407590)))

(declare-fun b!5509862 () Bool)

(declare-fun res!2347957 () Bool)

(assert (=> b!5509862 (=> (not res!2347957) (not e!3407592))))

(assert (=> b!5509862 (= res!2347957 call!407342)))

(assert (=> b!5509862 (= e!3407591 e!3407592)))

(assert (= (and d!1745916 (not res!2347953)) b!5509856))

(assert (= (and b!5509856 c!962864) b!5509857))

(assert (= (and b!5509856 (not c!962864)) b!5509863))

(assert (= (and b!5509857 res!2347956) b!5509860))

(assert (= (and b!5509863 c!962865) b!5509862))

(assert (= (and b!5509863 (not c!962865)) b!5509858))

(assert (= (and b!5509862 res!2347957) b!5509861))

(assert (= (and b!5509858 (not res!2347955)) b!5509864))

(assert (= (and b!5509864 res!2347954) b!5509859))

(assert (= (or b!5509861 b!5509859) bm!407337))

(assert (= (or b!5509862 b!5509864) bm!407336))

(assert (= (or b!5509860 bm!407337) bm!407338))

(declare-fun m!6515208 () Bool)

(assert (=> bm!407336 m!6515208))

(declare-fun m!6515210 () Bool)

(assert (=> b!5509857 m!6515210))

(declare-fun m!6515212 () Bool)

(assert (=> bm!407338 m!6515212))

(assert (=> d!1745666 d!1745916))

(declare-fun d!1745920 () Bool)

(declare-fun res!2347960 () Bool)

(declare-fun e!3407599 () Bool)

(assert (=> d!1745920 (=> res!2347960 e!3407599)))

(assert (=> d!1745920 (= res!2347960 ((_ is Nil!62654) (unfocusZipperList!921 zl!343)))))

(assert (=> d!1745920 (= (forall!14673 (unfocusZipperList!921 zl!343) lambda!295111) e!3407599)))

(declare-fun b!5509867 () Bool)

(declare-fun e!3407600 () Bool)

(assert (=> b!5509867 (= e!3407599 e!3407600)))

(declare-fun res!2347961 () Bool)

(assert (=> b!5509867 (=> (not res!2347961) (not e!3407600))))

(assert (=> b!5509867 (= res!2347961 (dynLambda!24482 lambda!295111 (h!69102 (unfocusZipperList!921 zl!343))))))

(declare-fun b!5509868 () Bool)

(assert (=> b!5509868 (= e!3407600 (forall!14673 (t!376021 (unfocusZipperList!921 zl!343)) lambda!295111))))

(assert (= (and d!1745920 (not res!2347960)) b!5509867))

(assert (= (and b!5509867 res!2347961) b!5509868))

(declare-fun b_lambda!208897 () Bool)

(assert (=> (not b_lambda!208897) (not b!5509867)))

(declare-fun m!6515220 () Bool)

(assert (=> b!5509867 m!6515220))

(declare-fun m!6515222 () Bool)

(assert (=> b!5509868 m!6515222))

(assert (=> d!1745666 d!1745920))

(declare-fun d!1745926 () Bool)

(assert (=> d!1745926 (= (Exists!2593 (ite c!962703 lambda!295122 lambda!295123)) (choose!41864 (ite c!962703 lambda!295122 lambda!295123)))))

(declare-fun bs!1270298 () Bool)

(assert (= bs!1270298 d!1745926))

(declare-fun m!6515224 () Bool)

(assert (=> bs!1270298 m!6515224))

(assert (=> bm!407200 d!1745926))

(declare-fun bs!1270299 () Bool)

(declare-fun d!1745928 () Bool)

(assert (= bs!1270299 (and d!1745928 d!1745668)))

(declare-fun lambda!295145 () Int)

(assert (=> bs!1270299 (= lambda!295145 lambda!295114)))

(declare-fun bs!1270300 () Bool)

(assert (= bs!1270300 (and d!1745928 d!1745888)))

(assert (=> bs!1270300 (= lambda!295145 lambda!295144)))

(declare-fun bs!1270301 () Bool)

(assert (= bs!1270301 (and d!1745928 d!1745644)))

(assert (=> bs!1270301 (= lambda!295145 lambda!295108)))

(declare-fun bs!1270302 () Bool)

(assert (= bs!1270302 (and d!1745928 d!1745642)))

(assert (=> bs!1270302 (= lambda!295145 lambda!295107)))

(declare-fun bs!1270303 () Bool)

(assert (= bs!1270303 (and d!1745928 d!1745666)))

(assert (=> bs!1270303 (= lambda!295145 lambda!295111)))

(declare-fun bs!1270304 () Bool)

(assert (= bs!1270304 (and d!1745928 d!1745836)))

(assert (=> bs!1270304 (= lambda!295145 lambda!295142)))

(declare-fun bs!1270305 () Bool)

(assert (= bs!1270305 (and d!1745928 d!1745626)))

(assert (=> bs!1270305 (= lambda!295145 lambda!295104)))

(declare-fun b!5509878 () Bool)

(declare-fun e!3407608 () Regex!15493)

(assert (=> b!5509878 (= e!3407608 EmptyLang!15493)))

(declare-fun b!5509879 () Bool)

(declare-fun e!3407609 () Regex!15493)

(assert (=> b!5509879 (= e!3407609 (h!69102 (t!376021 (unfocusZipperList!921 zl!343))))))

(declare-fun b!5509880 () Bool)

(declare-fun e!3407613 () Bool)

(declare-fun lt!2244838 () Regex!15493)

(assert (=> b!5509880 (= e!3407613 (isUnion!512 lt!2244838))))

(declare-fun b!5509881 () Bool)

(declare-fun e!3407612 () Bool)

(assert (=> b!5509881 (= e!3407612 (isEmpty!34434 (t!376021 (t!376021 (unfocusZipperList!921 zl!343)))))))

(declare-fun b!5509882 () Bool)

(declare-fun e!3407610 () Bool)

(assert (=> b!5509882 (= e!3407610 (isEmptyLang!1082 lt!2244838))))

(declare-fun b!5509883 () Bool)

(assert (=> b!5509883 (= e!3407613 (= lt!2244838 (head!11800 (t!376021 (unfocusZipperList!921 zl!343)))))))

(declare-fun b!5509884 () Bool)

(assert (=> b!5509884 (= e!3407609 e!3407608)))

(declare-fun c!962871 () Bool)

(assert (=> b!5509884 (= c!962871 ((_ is Cons!62654) (t!376021 (unfocusZipperList!921 zl!343))))))

(declare-fun b!5509885 () Bool)

(assert (=> b!5509885 (= e!3407608 (Union!15493 (h!69102 (t!376021 (unfocusZipperList!921 zl!343))) (generalisedUnion!1356 (t!376021 (t!376021 (unfocusZipperList!921 zl!343))))))))

(declare-fun b!5509887 () Bool)

(assert (=> b!5509887 (= e!3407610 e!3407613)))

(declare-fun c!962870 () Bool)

(assert (=> b!5509887 (= c!962870 (isEmpty!34434 (tail!10896 (t!376021 (unfocusZipperList!921 zl!343)))))))

(declare-fun e!3407611 () Bool)

(assert (=> d!1745928 e!3407611))

(declare-fun res!2347968 () Bool)

(assert (=> d!1745928 (=> (not res!2347968) (not e!3407611))))

(assert (=> d!1745928 (= res!2347968 (validRegex!7229 lt!2244838))))

(assert (=> d!1745928 (= lt!2244838 e!3407609)))

(declare-fun c!962868 () Bool)

(assert (=> d!1745928 (= c!962868 e!3407612)))

(declare-fun res!2347967 () Bool)

(assert (=> d!1745928 (=> (not res!2347967) (not e!3407612))))

(assert (=> d!1745928 (= res!2347967 ((_ is Cons!62654) (t!376021 (unfocusZipperList!921 zl!343))))))

(assert (=> d!1745928 (forall!14673 (t!376021 (unfocusZipperList!921 zl!343)) lambda!295145)))

(assert (=> d!1745928 (= (generalisedUnion!1356 (t!376021 (unfocusZipperList!921 zl!343))) lt!2244838)))

(declare-fun b!5509886 () Bool)

(assert (=> b!5509886 (= e!3407611 e!3407610)))

(declare-fun c!962869 () Bool)

(assert (=> b!5509886 (= c!962869 (isEmpty!34434 (t!376021 (unfocusZipperList!921 zl!343))))))

(assert (= (and d!1745928 res!2347967) b!5509881))

(assert (= (and d!1745928 c!962868) b!5509879))

(assert (= (and d!1745928 (not c!962868)) b!5509884))

(assert (= (and b!5509884 c!962871) b!5509885))

(assert (= (and b!5509884 (not c!962871)) b!5509878))

(assert (= (and d!1745928 res!2347968) b!5509886))

(assert (= (and b!5509886 c!962869) b!5509882))

(assert (= (and b!5509886 (not c!962869)) b!5509887))

(assert (= (and b!5509887 c!962870) b!5509883))

(assert (= (and b!5509887 (not c!962870)) b!5509880))

(declare-fun m!6515234 () Bool)

(assert (=> b!5509883 m!6515234))

(declare-fun m!6515236 () Bool)

(assert (=> d!1745928 m!6515236))

(declare-fun m!6515238 () Bool)

(assert (=> d!1745928 m!6515238))

(declare-fun m!6515240 () Bool)

(assert (=> b!5509885 m!6515240))

(declare-fun m!6515242 () Bool)

(assert (=> b!5509881 m!6515242))

(assert (=> b!5509886 m!6514664))

(declare-fun m!6515244 () Bool)

(assert (=> b!5509880 m!6515244))

(declare-fun m!6515246 () Bool)

(assert (=> b!5509887 m!6515246))

(assert (=> b!5509887 m!6515246))

(declare-fun m!6515248 () Bool)

(assert (=> b!5509887 m!6515248))

(declare-fun m!6515250 () Bool)

(assert (=> b!5509882 m!6515250))

(assert (=> b!5509149 d!1745928))

(declare-fun b!5509889 () Bool)

(declare-fun e!3407620 () (InoxSet Context!9754))

(assert (=> b!5509889 (= e!3407620 ((as const (Array Context!9754 Bool)) false))))

(declare-fun bm!407342 () Bool)

(declare-fun call!407352 () (InoxSet Context!9754))

(declare-fun call!407351 () (InoxSet Context!9754))

(assert (=> bm!407342 (= call!407352 call!407351)))

(declare-fun bm!407343 () Bool)

(declare-fun call!407348 () (InoxSet Context!9754))

(assert (=> bm!407343 (= call!407348 call!407352)))

(declare-fun bm!407344 () Bool)

(declare-fun c!962873 () Bool)

(declare-fun c!962876 () Bool)

(declare-fun c!962874 () Bool)

(declare-fun call!407347 () List!62778)

(assert (=> bm!407344 (= call!407351 (derivationStepZipperDown!835 (ite c!962873 (regTwo!31499 (h!69102 (exprs!5377 (h!69104 zl!343)))) (ite c!962876 (regTwo!31498 (h!69102 (exprs!5377 (h!69104 zl!343)))) (ite c!962874 (regOne!31498 (h!69102 (exprs!5377 (h!69104 zl!343)))) (reg!15822 (h!69102 (exprs!5377 (h!69104 zl!343))))))) (ite (or c!962873 c!962876) (Context!9755 (t!376021 (exprs!5377 (h!69104 zl!343)))) (Context!9755 call!407347)) (h!69103 s!2326)))))

(declare-fun b!5509890 () Bool)

(declare-fun e!3407616 () (InoxSet Context!9754))

(declare-fun call!407349 () (InoxSet Context!9754))

(assert (=> b!5509890 (= e!3407616 ((_ map or) call!407349 call!407351))))

(declare-fun b!5509891 () Bool)

(declare-fun e!3407619 () Bool)

(assert (=> b!5509891 (= e!3407619 (nullable!5527 (regOne!31498 (h!69102 (exprs!5377 (h!69104 zl!343))))))))

(declare-fun d!1745936 () Bool)

(declare-fun c!962875 () Bool)

(assert (=> d!1745936 (= c!962875 (and ((_ is ElementMatch!15493) (h!69102 (exprs!5377 (h!69104 zl!343)))) (= (c!962517 (h!69102 (exprs!5377 (h!69104 zl!343)))) (h!69103 s!2326))))))

(declare-fun e!3407618 () (InoxSet Context!9754))

(assert (=> d!1745936 (= (derivationStepZipperDown!835 (h!69102 (exprs!5377 (h!69104 zl!343))) (Context!9755 (t!376021 (exprs!5377 (h!69104 zl!343)))) (h!69103 s!2326)) e!3407618)))

(declare-fun b!5509892 () Bool)

(assert (=> b!5509892 (= c!962876 e!3407619)))

(declare-fun res!2347970 () Bool)

(assert (=> b!5509892 (=> (not res!2347970) (not e!3407619))))

(assert (=> b!5509892 (= res!2347970 ((_ is Concat!24338) (h!69102 (exprs!5377 (h!69104 zl!343)))))))

(declare-fun e!3407617 () (InoxSet Context!9754))

(assert (=> b!5509892 (= e!3407616 e!3407617)))

(declare-fun b!5509893 () Bool)

(declare-fun e!3407615 () (InoxSet Context!9754))

(assert (=> b!5509893 (= e!3407615 call!407348)))

(declare-fun b!5509894 () Bool)

(assert (=> b!5509894 (= e!3407617 e!3407615)))

(assert (=> b!5509894 (= c!962874 ((_ is Concat!24338) (h!69102 (exprs!5377 (h!69104 zl!343)))))))

(declare-fun bm!407345 () Bool)

(declare-fun call!407350 () List!62778)

(assert (=> bm!407345 (= call!407350 ($colon$colon!1578 (exprs!5377 (Context!9755 (t!376021 (exprs!5377 (h!69104 zl!343))))) (ite (or c!962876 c!962874) (regTwo!31498 (h!69102 (exprs!5377 (h!69104 zl!343)))) (h!69102 (exprs!5377 (h!69104 zl!343))))))))

(declare-fun bm!407346 () Bool)

(assert (=> bm!407346 (= call!407349 (derivationStepZipperDown!835 (ite c!962873 (regOne!31499 (h!69102 (exprs!5377 (h!69104 zl!343)))) (regOne!31498 (h!69102 (exprs!5377 (h!69104 zl!343))))) (ite c!962873 (Context!9755 (t!376021 (exprs!5377 (h!69104 zl!343)))) (Context!9755 call!407350)) (h!69103 s!2326)))))

(declare-fun b!5509895 () Bool)

(assert (=> b!5509895 (= e!3407617 ((_ map or) call!407349 call!407352))))

(declare-fun bm!407347 () Bool)

(assert (=> bm!407347 (= call!407347 call!407350)))

(declare-fun b!5509896 () Bool)

(assert (=> b!5509896 (= e!3407618 e!3407616)))

(assert (=> b!5509896 (= c!962873 ((_ is Union!15493) (h!69102 (exprs!5377 (h!69104 zl!343)))))))

(declare-fun b!5509897 () Bool)

(declare-fun c!962872 () Bool)

(assert (=> b!5509897 (= c!962872 ((_ is Star!15493) (h!69102 (exprs!5377 (h!69104 zl!343)))))))

(assert (=> b!5509897 (= e!3407615 e!3407620)))

(declare-fun b!5509898 () Bool)

(assert (=> b!5509898 (= e!3407618 (store ((as const (Array Context!9754 Bool)) false) (Context!9755 (t!376021 (exprs!5377 (h!69104 zl!343)))) true))))

(declare-fun b!5509899 () Bool)

(assert (=> b!5509899 (= e!3407620 call!407348)))

(assert (= (and d!1745936 c!962875) b!5509898))

(assert (= (and d!1745936 (not c!962875)) b!5509896))

(assert (= (and b!5509896 c!962873) b!5509890))

(assert (= (and b!5509896 (not c!962873)) b!5509892))

(assert (= (and b!5509892 res!2347970) b!5509891))

(assert (= (and b!5509892 c!962876) b!5509895))

(assert (= (and b!5509892 (not c!962876)) b!5509894))

(assert (= (and b!5509894 c!962874) b!5509893))

(assert (= (and b!5509894 (not c!962874)) b!5509897))

(assert (= (and b!5509897 c!962872) b!5509899))

(assert (= (and b!5509897 (not c!962872)) b!5509889))

(assert (= (or b!5509893 b!5509899) bm!407347))

(assert (= (or b!5509893 b!5509899) bm!407343))

(assert (= (or b!5509895 bm!407347) bm!407345))

(assert (= (or b!5509895 bm!407343) bm!407342))

(assert (= (or b!5509890 bm!407342) bm!407344))

(assert (= (or b!5509890 b!5509895) bm!407346))

(declare-fun m!6515254 () Bool)

(assert (=> bm!407344 m!6515254))

(declare-fun m!6515256 () Bool)

(assert (=> bm!407345 m!6515256))

(declare-fun m!6515258 () Bool)

(assert (=> b!5509898 m!6515258))

(declare-fun m!6515260 () Bool)

(assert (=> bm!407346 m!6515260))

(declare-fun m!6515262 () Bool)

(assert (=> b!5509891 m!6515262))

(assert (=> bm!407102 d!1745936))

(declare-fun d!1745942 () Bool)

(assert (=> d!1745942 (= (flatMap!1106 z!1189 lambda!295117) (choose!41862 z!1189 lambda!295117))))

(declare-fun bs!1270322 () Bool)

(assert (= bs!1270322 d!1745942))

(declare-fun m!6515264 () Bool)

(assert (=> bs!1270322 m!6515264))

(assert (=> d!1745674 d!1745942))

(declare-fun d!1745944 () Bool)

(assert (=> d!1745944 (= (head!11800 (unfocusZipperList!921 zl!343)) (h!69102 (unfocusZipperList!921 zl!343)))))

(assert (=> b!5509147 d!1745944))

(declare-fun b!5509910 () Bool)

(declare-fun e!3407632 () (InoxSet Context!9754))

(assert (=> b!5509910 (= e!3407632 ((as const (Array Context!9754 Bool)) false))))

(declare-fun bm!407348 () Bool)

(declare-fun call!407358 () (InoxSet Context!9754))

(declare-fun call!407357 () (InoxSet Context!9754))

(assert (=> bm!407348 (= call!407358 call!407357)))

(declare-fun bm!407349 () Bool)

(declare-fun call!407354 () (InoxSet Context!9754))

(assert (=> bm!407349 (= call!407354 call!407358)))

(declare-fun call!407353 () List!62778)

(declare-fun c!962883 () Bool)

(declare-fun c!962885 () Bool)

(declare-fun c!962882 () Bool)

(declare-fun bm!407350 () Bool)

(assert (=> bm!407350 (= call!407357 (derivationStepZipperDown!835 (ite c!962882 (regTwo!31499 (ite c!962687 (regTwo!31499 r!7292) (ite c!962690 (regTwo!31498 r!7292) (ite c!962688 (regOne!31498 r!7292) (reg!15822 r!7292))))) (ite c!962885 (regTwo!31498 (ite c!962687 (regTwo!31499 r!7292) (ite c!962690 (regTwo!31498 r!7292) (ite c!962688 (regOne!31498 r!7292) (reg!15822 r!7292))))) (ite c!962883 (regOne!31498 (ite c!962687 (regTwo!31499 r!7292) (ite c!962690 (regTwo!31498 r!7292) (ite c!962688 (regOne!31498 r!7292) (reg!15822 r!7292))))) (reg!15822 (ite c!962687 (regTwo!31499 r!7292) (ite c!962690 (regTwo!31498 r!7292) (ite c!962688 (regOne!31498 r!7292) (reg!15822 r!7292)))))))) (ite (or c!962882 c!962885) (ite (or c!962687 c!962690) lt!2244723 (Context!9755 call!407194)) (Context!9755 call!407353)) (h!69103 s!2326)))))

(declare-fun b!5509911 () Bool)

(declare-fun e!3407628 () (InoxSet Context!9754))

(declare-fun call!407355 () (InoxSet Context!9754))

(assert (=> b!5509911 (= e!3407628 ((_ map or) call!407355 call!407357))))

(declare-fun b!5509912 () Bool)

(declare-fun e!3407631 () Bool)

(assert (=> b!5509912 (= e!3407631 (nullable!5527 (regOne!31498 (ite c!962687 (regTwo!31499 r!7292) (ite c!962690 (regTwo!31498 r!7292) (ite c!962688 (regOne!31498 r!7292) (reg!15822 r!7292)))))))))

(declare-fun c!962884 () Bool)

(declare-fun d!1745946 () Bool)

(assert (=> d!1745946 (= c!962884 (and ((_ is ElementMatch!15493) (ite c!962687 (regTwo!31499 r!7292) (ite c!962690 (regTwo!31498 r!7292) (ite c!962688 (regOne!31498 r!7292) (reg!15822 r!7292))))) (= (c!962517 (ite c!962687 (regTwo!31499 r!7292) (ite c!962690 (regTwo!31498 r!7292) (ite c!962688 (regOne!31498 r!7292) (reg!15822 r!7292))))) (h!69103 s!2326))))))

(declare-fun e!3407630 () (InoxSet Context!9754))

(assert (=> d!1745946 (= (derivationStepZipperDown!835 (ite c!962687 (regTwo!31499 r!7292) (ite c!962690 (regTwo!31498 r!7292) (ite c!962688 (regOne!31498 r!7292) (reg!15822 r!7292)))) (ite (or c!962687 c!962690) lt!2244723 (Context!9755 call!407194)) (h!69103 s!2326)) e!3407630)))

(declare-fun b!5509913 () Bool)

(assert (=> b!5509913 (= c!962885 e!3407631)))

(declare-fun res!2347974 () Bool)

(assert (=> b!5509913 (=> (not res!2347974) (not e!3407631))))

(assert (=> b!5509913 (= res!2347974 ((_ is Concat!24338) (ite c!962687 (regTwo!31499 r!7292) (ite c!962690 (regTwo!31498 r!7292) (ite c!962688 (regOne!31498 r!7292) (reg!15822 r!7292))))))))

(declare-fun e!3407629 () (InoxSet Context!9754))

(assert (=> b!5509913 (= e!3407628 e!3407629)))

(declare-fun b!5509914 () Bool)

(declare-fun e!3407627 () (InoxSet Context!9754))

(assert (=> b!5509914 (= e!3407627 call!407354)))

(declare-fun b!5509915 () Bool)

(assert (=> b!5509915 (= e!3407629 e!3407627)))

(assert (=> b!5509915 (= c!962883 ((_ is Concat!24338) (ite c!962687 (regTwo!31499 r!7292) (ite c!962690 (regTwo!31498 r!7292) (ite c!962688 (regOne!31498 r!7292) (reg!15822 r!7292))))))))

(declare-fun call!407356 () List!62778)

(declare-fun bm!407351 () Bool)

(assert (=> bm!407351 (= call!407356 ($colon$colon!1578 (exprs!5377 (ite (or c!962687 c!962690) lt!2244723 (Context!9755 call!407194))) (ite (or c!962885 c!962883) (regTwo!31498 (ite c!962687 (regTwo!31499 r!7292) (ite c!962690 (regTwo!31498 r!7292) (ite c!962688 (regOne!31498 r!7292) (reg!15822 r!7292))))) (ite c!962687 (regTwo!31499 r!7292) (ite c!962690 (regTwo!31498 r!7292) (ite c!962688 (regOne!31498 r!7292) (reg!15822 r!7292)))))))))

(declare-fun bm!407352 () Bool)

(assert (=> bm!407352 (= call!407355 (derivationStepZipperDown!835 (ite c!962882 (regOne!31499 (ite c!962687 (regTwo!31499 r!7292) (ite c!962690 (regTwo!31498 r!7292) (ite c!962688 (regOne!31498 r!7292) (reg!15822 r!7292))))) (regOne!31498 (ite c!962687 (regTwo!31499 r!7292) (ite c!962690 (regTwo!31498 r!7292) (ite c!962688 (regOne!31498 r!7292) (reg!15822 r!7292)))))) (ite c!962882 (ite (or c!962687 c!962690) lt!2244723 (Context!9755 call!407194)) (Context!9755 call!407356)) (h!69103 s!2326)))))

(declare-fun b!5509916 () Bool)

(assert (=> b!5509916 (= e!3407629 ((_ map or) call!407355 call!407358))))

(declare-fun bm!407353 () Bool)

(assert (=> bm!407353 (= call!407353 call!407356)))

(declare-fun b!5509917 () Bool)

(assert (=> b!5509917 (= e!3407630 e!3407628)))

(assert (=> b!5509917 (= c!962882 ((_ is Union!15493) (ite c!962687 (regTwo!31499 r!7292) (ite c!962690 (regTwo!31498 r!7292) (ite c!962688 (regOne!31498 r!7292) (reg!15822 r!7292))))))))

(declare-fun b!5509918 () Bool)

(declare-fun c!962881 () Bool)

(assert (=> b!5509918 (= c!962881 ((_ is Star!15493) (ite c!962687 (regTwo!31499 r!7292) (ite c!962690 (regTwo!31498 r!7292) (ite c!962688 (regOne!31498 r!7292) (reg!15822 r!7292))))))))

(assert (=> b!5509918 (= e!3407627 e!3407632)))

(declare-fun b!5509919 () Bool)

(assert (=> b!5509919 (= e!3407630 (store ((as const (Array Context!9754 Bool)) false) (ite (or c!962687 c!962690) lt!2244723 (Context!9755 call!407194)) true))))

(declare-fun b!5509920 () Bool)

(assert (=> b!5509920 (= e!3407632 call!407354)))

(assert (= (and d!1745946 c!962884) b!5509919))

(assert (= (and d!1745946 (not c!962884)) b!5509917))

(assert (= (and b!5509917 c!962882) b!5509911))

(assert (= (and b!5509917 (not c!962882)) b!5509913))

(assert (= (and b!5509913 res!2347974) b!5509912))

(assert (= (and b!5509913 c!962885) b!5509916))

(assert (= (and b!5509913 (not c!962885)) b!5509915))

(assert (= (and b!5509915 c!962883) b!5509914))

(assert (= (and b!5509915 (not c!962883)) b!5509918))

(assert (= (and b!5509918 c!962881) b!5509920))

(assert (= (and b!5509918 (not c!962881)) b!5509910))

(assert (= (or b!5509914 b!5509920) bm!407353))

(assert (= (or b!5509914 b!5509920) bm!407349))

(assert (= (or b!5509916 bm!407353) bm!407351))

(assert (= (or b!5509916 bm!407349) bm!407348))

(assert (= (or b!5509911 bm!407348) bm!407350))

(assert (= (or b!5509911 b!5509916) bm!407352))

(declare-fun m!6515284 () Bool)

(assert (=> bm!407350 m!6515284))

(declare-fun m!6515286 () Bool)

(assert (=> bm!407351 m!6515286))

(declare-fun m!6515288 () Bool)

(assert (=> b!5509919 m!6515288))

(declare-fun m!6515290 () Bool)

(assert (=> bm!407352 m!6515290))

(declare-fun m!6515292 () Bool)

(assert (=> b!5509912 m!6515292))

(assert (=> bm!407191 d!1745946))

(declare-fun d!1745950 () Bool)

(assert (=> d!1745950 (= (nullable!5527 (regOne!31498 (regOne!31498 r!7292))) (nullableFct!1657 (regOne!31498 (regOne!31498 r!7292))))))

(declare-fun bs!1270323 () Bool)

(assert (= bs!1270323 d!1745950))

(declare-fun m!6515294 () Bool)

(assert (=> bs!1270323 m!6515294))

(assert (=> b!5509092 d!1745950))

(declare-fun bs!1270324 () Bool)

(declare-fun b!5509935 () Bool)

(assert (= bs!1270324 (and b!5509935 d!1745614)))

(declare-fun lambda!295148 () Int)

(assert (=> bs!1270324 (not (= lambda!295148 lambda!295095))))

(declare-fun bs!1270325 () Bool)

(assert (= bs!1270325 (and b!5509935 b!5508569)))

(assert (=> bs!1270325 (not (= lambda!295148 lambda!295060))))

(declare-fun bs!1270326 () Bool)

(assert (= bs!1270326 (and b!5509935 d!1745808)))

(assert (=> bs!1270326 (not (= lambda!295148 lambda!295140))))

(assert (=> bs!1270326 (not (= lambda!295148 lambda!295139))))

(declare-fun bs!1270327 () Bool)

(assert (= bs!1270327 (and b!5509935 b!5509211)))

(assert (=> bs!1270327 (= (and (= (reg!15822 (regOne!31499 r!7292)) (reg!15822 r!7292)) (= (regOne!31499 r!7292) r!7292)) (= lambda!295148 lambda!295122))))

(declare-fun bs!1270328 () Bool)

(assert (= bs!1270328 (and b!5509935 d!1745608)))

(assert (=> bs!1270328 (not (= lambda!295148 lambda!295085))))

(assert (=> bs!1270324 (not (= lambda!295148 lambda!295094))))

(declare-fun bs!1270329 () Bool)

(assert (= bs!1270329 (and b!5509935 b!5509208)))

(assert (=> bs!1270329 (not (= lambda!295148 lambda!295123))))

(assert (=> bs!1270325 (not (= lambda!295148 lambda!295059))))

(assert (=> b!5509935 true))

(assert (=> b!5509935 true))

(declare-fun bs!1270330 () Bool)

(declare-fun b!5509932 () Bool)

(assert (= bs!1270330 (and b!5509932 d!1745614)))

(declare-fun lambda!295149 () Int)

(assert (=> bs!1270330 (= (and (= (regOne!31498 (regOne!31499 r!7292)) (regOne!31498 r!7292)) (= (regTwo!31498 (regOne!31499 r!7292)) (regTwo!31498 r!7292))) (= lambda!295149 lambda!295095))))

(declare-fun bs!1270331 () Bool)

(assert (= bs!1270331 (and b!5509932 b!5508569)))

(assert (=> bs!1270331 (= (and (= (regOne!31498 (regOne!31499 r!7292)) (regOne!31498 r!7292)) (= (regTwo!31498 (regOne!31499 r!7292)) (regTwo!31498 r!7292))) (= lambda!295149 lambda!295060))))

(declare-fun bs!1270332 () Bool)

(assert (= bs!1270332 (and b!5509932 d!1745808)))

(assert (=> bs!1270332 (= (and (= (regOne!31498 (regOne!31499 r!7292)) (regOne!31498 r!7292)) (= (regTwo!31498 (regOne!31499 r!7292)) (regTwo!31498 r!7292))) (= lambda!295149 lambda!295140))))

(assert (=> bs!1270332 (not (= lambda!295149 lambda!295139))))

(declare-fun bs!1270333 () Bool)

(assert (= bs!1270333 (and b!5509932 b!5509935)))

(assert (=> bs!1270333 (not (= lambda!295149 lambda!295148))))

(declare-fun bs!1270334 () Bool)

(assert (= bs!1270334 (and b!5509932 b!5509211)))

(assert (=> bs!1270334 (not (= lambda!295149 lambda!295122))))

(declare-fun bs!1270335 () Bool)

(assert (= bs!1270335 (and b!5509932 d!1745608)))

(assert (=> bs!1270335 (not (= lambda!295149 lambda!295085))))

(assert (=> bs!1270330 (not (= lambda!295149 lambda!295094))))

(declare-fun bs!1270336 () Bool)

(assert (= bs!1270336 (and b!5509932 b!5509208)))

(assert (=> bs!1270336 (= (and (= (regOne!31498 (regOne!31499 r!7292)) (regOne!31498 r!7292)) (= (regTwo!31498 (regOne!31499 r!7292)) (regTwo!31498 r!7292))) (= lambda!295149 lambda!295123))))

(assert (=> bs!1270331 (not (= lambda!295149 lambda!295059))))

(assert (=> b!5509932 true))

(assert (=> b!5509932 true))

(declare-fun e!3407644 () Bool)

(declare-fun call!407365 () Bool)

(assert (=> b!5509932 (= e!3407644 call!407365)))

(declare-fun b!5509933 () Bool)

(declare-fun e!3407640 () Bool)

(assert (=> b!5509933 (= e!3407640 e!3407644)))

(declare-fun c!962891 () Bool)

(assert (=> b!5509933 (= c!962891 ((_ is Star!15493) (regOne!31499 r!7292)))))

(declare-fun bm!407360 () Bool)

(assert (=> bm!407360 (= call!407365 (Exists!2593 (ite c!962891 lambda!295148 lambda!295149)))))

(declare-fun d!1745952 () Bool)

(declare-fun c!962893 () Bool)

(assert (=> d!1745952 (= c!962893 ((_ is EmptyExpr!15493) (regOne!31499 r!7292)))))

(declare-fun e!3407639 () Bool)

(assert (=> d!1745952 (= (matchRSpec!2596 (regOne!31499 r!7292) s!2326) e!3407639)))

(declare-fun b!5509934 () Bool)

(declare-fun e!3407641 () Bool)

(assert (=> b!5509934 (= e!3407639 e!3407641)))

(declare-fun res!2347976 () Bool)

(assert (=> b!5509934 (= res!2347976 (not ((_ is EmptyLang!15493) (regOne!31499 r!7292))))))

(assert (=> b!5509934 (=> (not res!2347976) (not e!3407641))))

(declare-fun e!3407642 () Bool)

(assert (=> b!5509935 (= e!3407642 call!407365)))

(declare-fun b!5509936 () Bool)

(declare-fun c!962894 () Bool)

(assert (=> b!5509936 (= c!962894 ((_ is ElementMatch!15493) (regOne!31499 r!7292)))))

(declare-fun e!3407645 () Bool)

(assert (=> b!5509936 (= e!3407641 e!3407645)))

(declare-fun b!5509937 () Bool)

(declare-fun c!962892 () Bool)

(assert (=> b!5509937 (= c!962892 ((_ is Union!15493) (regOne!31499 r!7292)))))

(assert (=> b!5509937 (= e!3407645 e!3407640)))

(declare-fun b!5509938 () Bool)

(declare-fun e!3407643 () Bool)

(assert (=> b!5509938 (= e!3407643 (matchRSpec!2596 (regTwo!31499 (regOne!31499 r!7292)) s!2326))))

(declare-fun b!5509939 () Bool)

(declare-fun res!2347977 () Bool)

(assert (=> b!5509939 (=> res!2347977 e!3407642)))

(declare-fun call!407366 () Bool)

(assert (=> b!5509939 (= res!2347977 call!407366)))

(assert (=> b!5509939 (= e!3407644 e!3407642)))

(declare-fun b!5509940 () Bool)

(assert (=> b!5509940 (= e!3407640 e!3407643)))

(declare-fun res!2347978 () Bool)

(assert (=> b!5509940 (= res!2347978 (matchRSpec!2596 (regOne!31499 (regOne!31499 r!7292)) s!2326))))

(assert (=> b!5509940 (=> res!2347978 e!3407643)))

(declare-fun b!5509941 () Bool)

(assert (=> b!5509941 (= e!3407639 call!407366)))

(declare-fun b!5509942 () Bool)

(assert (=> b!5509942 (= e!3407645 (= s!2326 (Cons!62655 (c!962517 (regOne!31499 r!7292)) Nil!62655)))))

(declare-fun bm!407361 () Bool)

(assert (=> bm!407361 (= call!407366 (isEmpty!34438 s!2326))))

(assert (= (and d!1745952 c!962893) b!5509941))

(assert (= (and d!1745952 (not c!962893)) b!5509934))

(assert (= (and b!5509934 res!2347976) b!5509936))

(assert (= (and b!5509936 c!962894) b!5509942))

(assert (= (and b!5509936 (not c!962894)) b!5509937))

(assert (= (and b!5509937 c!962892) b!5509940))

(assert (= (and b!5509937 (not c!962892)) b!5509933))

(assert (= (and b!5509940 (not res!2347978)) b!5509938))

(assert (= (and b!5509933 c!962891) b!5509939))

(assert (= (and b!5509933 (not c!962891)) b!5509932))

(assert (= (and b!5509939 (not res!2347977)) b!5509935))

(assert (= (or b!5509935 b!5509932) bm!407360))

(assert (= (or b!5509941 b!5509939) bm!407361))

(declare-fun m!6515338 () Bool)

(assert (=> bm!407360 m!6515338))

(declare-fun m!6515340 () Bool)

(assert (=> b!5509938 m!6515340))

(declare-fun m!6515342 () Bool)

(assert (=> b!5509940 m!6515342))

(assert (=> bm!407361 m!6514700))

(assert (=> b!5509216 d!1745952))

(declare-fun b!5510002 () Bool)

(declare-fun e!3407680 () List!62779)

(assert (=> b!5510002 (= e!3407680 (Cons!62655 (h!69103 (_1!35893 (get!21561 lt!2244768))) (++!13747 (t!376022 (_1!35893 (get!21561 lt!2244768))) (_2!35893 (get!21561 lt!2244768)))))))

(declare-fun d!1745962 () Bool)

(declare-fun e!3407679 () Bool)

(assert (=> d!1745962 e!3407679))

(declare-fun res!2348002 () Bool)

(assert (=> d!1745962 (=> (not res!2348002) (not e!3407679))))

(declare-fun lt!2244845 () List!62779)

(declare-fun content!11257 (List!62779) (InoxSet C!31256))

(assert (=> d!1745962 (= res!2348002 (= (content!11257 lt!2244845) ((_ map or) (content!11257 (_1!35893 (get!21561 lt!2244768))) (content!11257 (_2!35893 (get!21561 lt!2244768))))))))

(assert (=> d!1745962 (= lt!2244845 e!3407680)))

(declare-fun c!962913 () Bool)

(assert (=> d!1745962 (= c!962913 ((_ is Nil!62655) (_1!35893 (get!21561 lt!2244768))))))

(assert (=> d!1745962 (= (++!13747 (_1!35893 (get!21561 lt!2244768)) (_2!35893 (get!21561 lt!2244768))) lt!2244845)))

(declare-fun b!5510003 () Bool)

(declare-fun res!2348001 () Bool)

(assert (=> b!5510003 (=> (not res!2348001) (not e!3407679))))

(declare-fun size!39931 (List!62779) Int)

(assert (=> b!5510003 (= res!2348001 (= (size!39931 lt!2244845) (+ (size!39931 (_1!35893 (get!21561 lt!2244768))) (size!39931 (_2!35893 (get!21561 lt!2244768))))))))

(declare-fun b!5510001 () Bool)

(assert (=> b!5510001 (= e!3407680 (_2!35893 (get!21561 lt!2244768)))))

(declare-fun b!5510004 () Bool)

(assert (=> b!5510004 (= e!3407679 (or (not (= (_2!35893 (get!21561 lt!2244768)) Nil!62655)) (= lt!2244845 (_1!35893 (get!21561 lt!2244768)))))))

(assert (= (and d!1745962 c!962913) b!5510001))

(assert (= (and d!1745962 (not c!962913)) b!5510002))

(assert (= (and d!1745962 res!2348002) b!5510003))

(assert (= (and b!5510003 res!2348001) b!5510004))

(declare-fun m!6515366 () Bool)

(assert (=> b!5510002 m!6515366))

(declare-fun m!6515368 () Bool)

(assert (=> d!1745962 m!6515368))

(declare-fun m!6515370 () Bool)

(assert (=> d!1745962 m!6515370))

(declare-fun m!6515372 () Bool)

(assert (=> d!1745962 m!6515372))

(declare-fun m!6515374 () Bool)

(assert (=> b!5510003 m!6515374))

(declare-fun m!6515376 () Bool)

(assert (=> b!5510003 m!6515376))

(declare-fun m!6515378 () Bool)

(assert (=> b!5510003 m!6515378))

(assert (=> b!5508785 d!1745962))

(assert (=> b!5508785 d!1745770))

(declare-fun d!1745976 () Bool)

(assert (=> d!1745976 true))

(declare-fun setRes!36581 () Bool)

(assert (=> d!1745976 setRes!36581))

(declare-fun condSetEmpty!36581 () Bool)

(declare-fun res!2348005 () (InoxSet Context!9754))

(assert (=> d!1745976 (= condSetEmpty!36581 (= res!2348005 ((as const (Array Context!9754 Bool)) false)))))

(assert (=> d!1745976 (= (choose!41862 lt!2244713 lambda!295061) res!2348005)))

(declare-fun setIsEmpty!36581 () Bool)

(assert (=> setIsEmpty!36581 setRes!36581))

(declare-fun setNonEmpty!36581 () Bool)

(declare-fun tp!1515847 () Bool)

(declare-fun setElem!36581 () Context!9754)

(declare-fun e!3407683 () Bool)

(assert (=> setNonEmpty!36581 (= setRes!36581 (and tp!1515847 (inv!81979 setElem!36581) e!3407683))))

(declare-fun setRest!36581 () (InoxSet Context!9754))

(assert (=> setNonEmpty!36581 (= res!2348005 ((_ map or) (store ((as const (Array Context!9754 Bool)) false) setElem!36581 true) setRest!36581))))

(declare-fun b!5510007 () Bool)

(declare-fun tp!1515846 () Bool)

(assert (=> b!5510007 (= e!3407683 tp!1515846)))

(assert (= (and d!1745976 condSetEmpty!36581) setIsEmpty!36581))

(assert (= (and d!1745976 (not condSetEmpty!36581)) setNonEmpty!36581))

(assert (= setNonEmpty!36581 b!5510007))

(declare-fun m!6515380 () Bool)

(assert (=> setNonEmpty!36581 m!6515380))

(assert (=> d!1745652 d!1745976))

(declare-fun d!1745978 () Bool)

(assert (=> d!1745978 (= (isEmpty!34434 (t!376021 (unfocusZipperList!921 zl!343))) ((_ is Nil!62654) (t!376021 (unfocusZipperList!921 zl!343))))))

(assert (=> b!5509145 d!1745978))

(declare-fun d!1745980 () Bool)

(assert (=> d!1745980 (= (head!11802 s!2326) (h!69103 s!2326))))

(assert (=> b!5509255 d!1745980))

(declare-fun bs!1270365 () Bool)

(declare-fun b!5510011 () Bool)

(assert (= bs!1270365 (and b!5510011 b!5509932)))

(declare-fun lambda!295153 () Int)

(assert (=> bs!1270365 (not (= lambda!295153 lambda!295149))))

(declare-fun bs!1270366 () Bool)

(assert (= bs!1270366 (and b!5510011 d!1745614)))

(assert (=> bs!1270366 (not (= lambda!295153 lambda!295095))))

(declare-fun bs!1270367 () Bool)

(assert (= bs!1270367 (and b!5510011 b!5508569)))

(assert (=> bs!1270367 (not (= lambda!295153 lambda!295060))))

(declare-fun bs!1270368 () Bool)

(assert (= bs!1270368 (and b!5510011 d!1745808)))

(assert (=> bs!1270368 (not (= lambda!295153 lambda!295140))))

(assert (=> bs!1270368 (not (= lambda!295153 lambda!295139))))

(declare-fun bs!1270369 () Bool)

(assert (= bs!1270369 (and b!5510011 b!5509935)))

(assert (=> bs!1270369 (= (and (= (reg!15822 (regTwo!31499 r!7292)) (reg!15822 (regOne!31499 r!7292))) (= (regTwo!31499 r!7292) (regOne!31499 r!7292))) (= lambda!295153 lambda!295148))))

(declare-fun bs!1270370 () Bool)

(assert (= bs!1270370 (and b!5510011 b!5509211)))

(assert (=> bs!1270370 (= (and (= (reg!15822 (regTwo!31499 r!7292)) (reg!15822 r!7292)) (= (regTwo!31499 r!7292) r!7292)) (= lambda!295153 lambda!295122))))

(declare-fun bs!1270371 () Bool)

(assert (= bs!1270371 (and b!5510011 d!1745608)))

(assert (=> bs!1270371 (not (= lambda!295153 lambda!295085))))

(assert (=> bs!1270366 (not (= lambda!295153 lambda!295094))))

(declare-fun bs!1270372 () Bool)

(assert (= bs!1270372 (and b!5510011 b!5509208)))

(assert (=> bs!1270372 (not (= lambda!295153 lambda!295123))))

(assert (=> bs!1270367 (not (= lambda!295153 lambda!295059))))

(assert (=> b!5510011 true))

(assert (=> b!5510011 true))

(declare-fun bs!1270375 () Bool)

(declare-fun b!5510008 () Bool)

(assert (= bs!1270375 (and b!5510008 b!5509932)))

(declare-fun lambda!295154 () Int)

(assert (=> bs!1270375 (= (and (= (regOne!31498 (regTwo!31499 r!7292)) (regOne!31498 (regOne!31499 r!7292))) (= (regTwo!31498 (regTwo!31499 r!7292)) (regTwo!31498 (regOne!31499 r!7292)))) (= lambda!295154 lambda!295149))))

(declare-fun bs!1270376 () Bool)

(assert (= bs!1270376 (and b!5510008 d!1745614)))

(assert (=> bs!1270376 (= (and (= (regOne!31498 (regTwo!31499 r!7292)) (regOne!31498 r!7292)) (= (regTwo!31498 (regTwo!31499 r!7292)) (regTwo!31498 r!7292))) (= lambda!295154 lambda!295095))))

(declare-fun bs!1270377 () Bool)

(assert (= bs!1270377 (and b!5510008 b!5508569)))

(assert (=> bs!1270377 (= (and (= (regOne!31498 (regTwo!31499 r!7292)) (regOne!31498 r!7292)) (= (regTwo!31498 (regTwo!31499 r!7292)) (regTwo!31498 r!7292))) (= lambda!295154 lambda!295060))))

(declare-fun bs!1270378 () Bool)

(assert (= bs!1270378 (and b!5510008 d!1745808)))

(assert (=> bs!1270378 (= (and (= (regOne!31498 (regTwo!31499 r!7292)) (regOne!31498 r!7292)) (= (regTwo!31498 (regTwo!31499 r!7292)) (regTwo!31498 r!7292))) (= lambda!295154 lambda!295140))))

(assert (=> bs!1270378 (not (= lambda!295154 lambda!295139))))

(declare-fun bs!1270379 () Bool)

(assert (= bs!1270379 (and b!5510008 b!5509935)))

(assert (=> bs!1270379 (not (= lambda!295154 lambda!295148))))

(declare-fun bs!1270380 () Bool)

(assert (= bs!1270380 (and b!5510008 b!5509211)))

(assert (=> bs!1270380 (not (= lambda!295154 lambda!295122))))

(declare-fun bs!1270381 () Bool)

(assert (= bs!1270381 (and b!5510008 d!1745608)))

(assert (=> bs!1270381 (not (= lambda!295154 lambda!295085))))

(assert (=> bs!1270376 (not (= lambda!295154 lambda!295094))))

(declare-fun bs!1270382 () Bool)

(assert (= bs!1270382 (and b!5510008 b!5509208)))

(assert (=> bs!1270382 (= (and (= (regOne!31498 (regTwo!31499 r!7292)) (regOne!31498 r!7292)) (= (regTwo!31498 (regTwo!31499 r!7292)) (regTwo!31498 r!7292))) (= lambda!295154 lambda!295123))))

(assert (=> bs!1270377 (not (= lambda!295154 lambda!295059))))

(declare-fun bs!1270383 () Bool)

(assert (= bs!1270383 (and b!5510008 b!5510011)))

(assert (=> bs!1270383 (not (= lambda!295154 lambda!295153))))

(assert (=> b!5510008 true))

(assert (=> b!5510008 true))

(declare-fun e!3407689 () Bool)

(declare-fun call!407377 () Bool)

(assert (=> b!5510008 (= e!3407689 call!407377)))

(declare-fun b!5510009 () Bool)

(declare-fun e!3407685 () Bool)

(assert (=> b!5510009 (= e!3407685 e!3407689)))

(declare-fun c!962914 () Bool)

(assert (=> b!5510009 (= c!962914 ((_ is Star!15493) (regTwo!31499 r!7292)))))

(declare-fun bm!407372 () Bool)

(assert (=> bm!407372 (= call!407377 (Exists!2593 (ite c!962914 lambda!295153 lambda!295154)))))

(declare-fun d!1745982 () Bool)

(declare-fun c!962916 () Bool)

(assert (=> d!1745982 (= c!962916 ((_ is EmptyExpr!15493) (regTwo!31499 r!7292)))))

(declare-fun e!3407684 () Bool)

(assert (=> d!1745982 (= (matchRSpec!2596 (regTwo!31499 r!7292) s!2326) e!3407684)))

(declare-fun b!5510010 () Bool)

(declare-fun e!3407686 () Bool)

(assert (=> b!5510010 (= e!3407684 e!3407686)))

(declare-fun res!2348006 () Bool)

(assert (=> b!5510010 (= res!2348006 (not ((_ is EmptyLang!15493) (regTwo!31499 r!7292))))))

(assert (=> b!5510010 (=> (not res!2348006) (not e!3407686))))

(declare-fun e!3407687 () Bool)

(assert (=> b!5510011 (= e!3407687 call!407377)))

(declare-fun b!5510012 () Bool)

(declare-fun c!962917 () Bool)

(assert (=> b!5510012 (= c!962917 ((_ is ElementMatch!15493) (regTwo!31499 r!7292)))))

(declare-fun e!3407690 () Bool)

(assert (=> b!5510012 (= e!3407686 e!3407690)))

(declare-fun b!5510013 () Bool)

(declare-fun c!962915 () Bool)

(assert (=> b!5510013 (= c!962915 ((_ is Union!15493) (regTwo!31499 r!7292)))))

(assert (=> b!5510013 (= e!3407690 e!3407685)))

(declare-fun b!5510014 () Bool)

(declare-fun e!3407688 () Bool)

(assert (=> b!5510014 (= e!3407688 (matchRSpec!2596 (regTwo!31499 (regTwo!31499 r!7292)) s!2326))))

(declare-fun b!5510015 () Bool)

(declare-fun res!2348007 () Bool)

(assert (=> b!5510015 (=> res!2348007 e!3407687)))

(declare-fun call!407378 () Bool)

(assert (=> b!5510015 (= res!2348007 call!407378)))

(assert (=> b!5510015 (= e!3407689 e!3407687)))

(declare-fun b!5510016 () Bool)

(assert (=> b!5510016 (= e!3407685 e!3407688)))

(declare-fun res!2348008 () Bool)

(assert (=> b!5510016 (= res!2348008 (matchRSpec!2596 (regOne!31499 (regTwo!31499 r!7292)) s!2326))))

(assert (=> b!5510016 (=> res!2348008 e!3407688)))

(declare-fun b!5510017 () Bool)

(assert (=> b!5510017 (= e!3407684 call!407378)))

(declare-fun b!5510018 () Bool)

(assert (=> b!5510018 (= e!3407690 (= s!2326 (Cons!62655 (c!962517 (regTwo!31499 r!7292)) Nil!62655)))))

(declare-fun bm!407373 () Bool)

(assert (=> bm!407373 (= call!407378 (isEmpty!34438 s!2326))))

(assert (= (and d!1745982 c!962916) b!5510017))

(assert (= (and d!1745982 (not c!962916)) b!5510010))

(assert (= (and b!5510010 res!2348006) b!5510012))

(assert (= (and b!5510012 c!962917) b!5510018))

(assert (= (and b!5510012 (not c!962917)) b!5510013))

(assert (= (and b!5510013 c!962915) b!5510016))

(assert (= (and b!5510013 (not c!962915)) b!5510009))

(assert (= (and b!5510016 (not res!2348008)) b!5510014))

(assert (= (and b!5510009 c!962914) b!5510015))

(assert (= (and b!5510009 (not c!962914)) b!5510008))

(assert (= (and b!5510015 (not res!2348007)) b!5510011))

(assert (= (or b!5510011 b!5510008) bm!407372))

(assert (= (or b!5510017 b!5510015) bm!407373))

(declare-fun m!6515410 () Bool)

(assert (=> bm!407372 m!6515410))

(declare-fun m!6515412 () Bool)

(assert (=> b!5510014 m!6515412))

(declare-fun m!6515414 () Bool)

(assert (=> b!5510016 m!6515414))

(assert (=> bm!407373 m!6514700))

(assert (=> b!5509214 d!1745982))

(declare-fun d!1745996 () Bool)

(declare-fun c!962926 () Bool)

(declare-fun e!3407708 () Bool)

(assert (=> d!1745996 (= c!962926 e!3407708)))

(declare-fun res!2348011 () Bool)

(assert (=> d!1745996 (=> (not res!2348011) (not e!3407708))))

(assert (=> d!1745996 (= res!2348011 ((_ is Cons!62654) (exprs!5377 (Context!9755 (t!376021 (exprs!5377 (h!69104 zl!343)))))))))

(declare-fun e!3407709 () (InoxSet Context!9754))

(assert (=> d!1745996 (= (derivationStepZipperUp!761 (Context!9755 (t!376021 (exprs!5377 (h!69104 zl!343)))) (h!69103 s!2326)) e!3407709)))

(declare-fun bm!407381 () Bool)

(declare-fun call!407386 () (InoxSet Context!9754))

(assert (=> bm!407381 (= call!407386 (derivationStepZipperDown!835 (h!69102 (exprs!5377 (Context!9755 (t!376021 (exprs!5377 (h!69104 zl!343)))))) (Context!9755 (t!376021 (exprs!5377 (Context!9755 (t!376021 (exprs!5377 (h!69104 zl!343))))))) (h!69103 s!2326)))))

(declare-fun b!5510058 () Bool)

(assert (=> b!5510058 (= e!3407708 (nullable!5527 (h!69102 (exprs!5377 (Context!9755 (t!376021 (exprs!5377 (h!69104 zl!343))))))))))

(declare-fun b!5510059 () Bool)

(declare-fun e!3407710 () (InoxSet Context!9754))

(assert (=> b!5510059 (= e!3407710 ((as const (Array Context!9754 Bool)) false))))

(declare-fun b!5510060 () Bool)

(assert (=> b!5510060 (= e!3407710 call!407386)))

(declare-fun b!5510061 () Bool)

(assert (=> b!5510061 (= e!3407709 ((_ map or) call!407386 (derivationStepZipperUp!761 (Context!9755 (t!376021 (exprs!5377 (Context!9755 (t!376021 (exprs!5377 (h!69104 zl!343))))))) (h!69103 s!2326))))))

(declare-fun b!5510062 () Bool)

(assert (=> b!5510062 (= e!3407709 e!3407710)))

(declare-fun c!962925 () Bool)

(assert (=> b!5510062 (= c!962925 ((_ is Cons!62654) (exprs!5377 (Context!9755 (t!376021 (exprs!5377 (h!69104 zl!343)))))))))

(assert (= (and d!1745996 res!2348011) b!5510058))

(assert (= (and d!1745996 c!962926) b!5510061))

(assert (= (and d!1745996 (not c!962926)) b!5510062))

(assert (= (and b!5510062 c!962925) b!5510060))

(assert (= (and b!5510062 (not c!962925)) b!5510059))

(assert (= (or b!5510061 b!5510060) bm!407381))

(declare-fun m!6515416 () Bool)

(assert (=> bm!407381 m!6515416))

(declare-fun m!6515418 () Bool)

(assert (=> b!5510058 m!6515418))

(declare-fun m!6515420 () Bool)

(assert (=> b!5510061 m!6515420))

(assert (=> b!5508624 d!1745996))

(declare-fun b!5510079 () Bool)

(declare-fun e!3407720 () (InoxSet Context!9754))

(assert (=> b!5510079 (= e!3407720 ((as const (Array Context!9754 Bool)) false))))

(declare-fun bm!407382 () Bool)

(declare-fun call!407392 () (InoxSet Context!9754))

(declare-fun call!407391 () (InoxSet Context!9754))

(assert (=> bm!407382 (= call!407392 call!407391)))

(declare-fun bm!407383 () Bool)

(declare-fun call!407388 () (InoxSet Context!9754))

(assert (=> bm!407383 (= call!407388 call!407392)))

(declare-fun c!962928 () Bool)

(declare-fun call!407387 () List!62778)

(declare-fun bm!407384 () Bool)

(declare-fun c!962931 () Bool)

(declare-fun c!962929 () Bool)

(assert (=> bm!407384 (= call!407391 (derivationStepZipperDown!835 (ite c!962928 (regTwo!31499 (ite c!962658 (regTwo!31499 (regOne!31498 r!7292)) (ite c!962661 (regTwo!31498 (regOne!31498 r!7292)) (ite c!962659 (regOne!31498 (regOne!31498 r!7292)) (reg!15822 (regOne!31498 r!7292)))))) (ite c!962931 (regTwo!31498 (ite c!962658 (regTwo!31499 (regOne!31498 r!7292)) (ite c!962661 (regTwo!31498 (regOne!31498 r!7292)) (ite c!962659 (regOne!31498 (regOne!31498 r!7292)) (reg!15822 (regOne!31498 r!7292)))))) (ite c!962929 (regOne!31498 (ite c!962658 (regTwo!31499 (regOne!31498 r!7292)) (ite c!962661 (regTwo!31498 (regOne!31498 r!7292)) (ite c!962659 (regOne!31498 (regOne!31498 r!7292)) (reg!15822 (regOne!31498 r!7292)))))) (reg!15822 (ite c!962658 (regTwo!31499 (regOne!31498 r!7292)) (ite c!962661 (regTwo!31498 (regOne!31498 r!7292)) (ite c!962659 (regOne!31498 (regOne!31498 r!7292)) (reg!15822 (regOne!31498 r!7292))))))))) (ite (or c!962928 c!962931) (ite (or c!962658 c!962661) lt!2244721 (Context!9755 call!407180)) (Context!9755 call!407387)) (h!69103 s!2326)))))

(declare-fun b!5510080 () Bool)

(declare-fun e!3407715 () (InoxSet Context!9754))

(declare-fun call!407389 () (InoxSet Context!9754))

(assert (=> b!5510080 (= e!3407715 ((_ map or) call!407389 call!407391))))

(declare-fun b!5510081 () Bool)

(declare-fun e!3407719 () Bool)

(assert (=> b!5510081 (= e!3407719 (nullable!5527 (regOne!31498 (ite c!962658 (regTwo!31499 (regOne!31498 r!7292)) (ite c!962661 (regTwo!31498 (regOne!31498 r!7292)) (ite c!962659 (regOne!31498 (regOne!31498 r!7292)) (reg!15822 (regOne!31498 r!7292))))))))))

(declare-fun d!1745998 () Bool)

(declare-fun c!962930 () Bool)

(assert (=> d!1745998 (= c!962930 (and ((_ is ElementMatch!15493) (ite c!962658 (regTwo!31499 (regOne!31498 r!7292)) (ite c!962661 (regTwo!31498 (regOne!31498 r!7292)) (ite c!962659 (regOne!31498 (regOne!31498 r!7292)) (reg!15822 (regOne!31498 r!7292)))))) (= (c!962517 (ite c!962658 (regTwo!31499 (regOne!31498 r!7292)) (ite c!962661 (regTwo!31498 (regOne!31498 r!7292)) (ite c!962659 (regOne!31498 (regOne!31498 r!7292)) (reg!15822 (regOne!31498 r!7292)))))) (h!69103 s!2326))))))

(declare-fun e!3407718 () (InoxSet Context!9754))

(assert (=> d!1745998 (= (derivationStepZipperDown!835 (ite c!962658 (regTwo!31499 (regOne!31498 r!7292)) (ite c!962661 (regTwo!31498 (regOne!31498 r!7292)) (ite c!962659 (regOne!31498 (regOne!31498 r!7292)) (reg!15822 (regOne!31498 r!7292))))) (ite (or c!962658 c!962661) lt!2244721 (Context!9755 call!407180)) (h!69103 s!2326)) e!3407718)))

(declare-fun b!5510082 () Bool)

(assert (=> b!5510082 (= c!962931 e!3407719)))

(declare-fun res!2348012 () Bool)

(assert (=> b!5510082 (=> (not res!2348012) (not e!3407719))))

(assert (=> b!5510082 (= res!2348012 ((_ is Concat!24338) (ite c!962658 (regTwo!31499 (regOne!31498 r!7292)) (ite c!962661 (regTwo!31498 (regOne!31498 r!7292)) (ite c!962659 (regOne!31498 (regOne!31498 r!7292)) (reg!15822 (regOne!31498 r!7292)))))))))

(declare-fun e!3407716 () (InoxSet Context!9754))

(assert (=> b!5510082 (= e!3407715 e!3407716)))

(declare-fun b!5510083 () Bool)

(declare-fun e!3407714 () (InoxSet Context!9754))

(assert (=> b!5510083 (= e!3407714 call!407388)))

(declare-fun b!5510084 () Bool)

(assert (=> b!5510084 (= e!3407716 e!3407714)))

(assert (=> b!5510084 (= c!962929 ((_ is Concat!24338) (ite c!962658 (regTwo!31499 (regOne!31498 r!7292)) (ite c!962661 (regTwo!31498 (regOne!31498 r!7292)) (ite c!962659 (regOne!31498 (regOne!31498 r!7292)) (reg!15822 (regOne!31498 r!7292)))))))))

(declare-fun bm!407385 () Bool)

(declare-fun call!407390 () List!62778)

(assert (=> bm!407385 (= call!407390 ($colon$colon!1578 (exprs!5377 (ite (or c!962658 c!962661) lt!2244721 (Context!9755 call!407180))) (ite (or c!962931 c!962929) (regTwo!31498 (ite c!962658 (regTwo!31499 (regOne!31498 r!7292)) (ite c!962661 (regTwo!31498 (regOne!31498 r!7292)) (ite c!962659 (regOne!31498 (regOne!31498 r!7292)) (reg!15822 (regOne!31498 r!7292)))))) (ite c!962658 (regTwo!31499 (regOne!31498 r!7292)) (ite c!962661 (regTwo!31498 (regOne!31498 r!7292)) (ite c!962659 (regOne!31498 (regOne!31498 r!7292)) (reg!15822 (regOne!31498 r!7292))))))))))

(declare-fun bm!407386 () Bool)

(assert (=> bm!407386 (= call!407389 (derivationStepZipperDown!835 (ite c!962928 (regOne!31499 (ite c!962658 (regTwo!31499 (regOne!31498 r!7292)) (ite c!962661 (regTwo!31498 (regOne!31498 r!7292)) (ite c!962659 (regOne!31498 (regOne!31498 r!7292)) (reg!15822 (regOne!31498 r!7292)))))) (regOne!31498 (ite c!962658 (regTwo!31499 (regOne!31498 r!7292)) (ite c!962661 (regTwo!31498 (regOne!31498 r!7292)) (ite c!962659 (regOne!31498 (regOne!31498 r!7292)) (reg!15822 (regOne!31498 r!7292))))))) (ite c!962928 (ite (or c!962658 c!962661) lt!2244721 (Context!9755 call!407180)) (Context!9755 call!407390)) (h!69103 s!2326)))))

(declare-fun b!5510085 () Bool)

(assert (=> b!5510085 (= e!3407716 ((_ map or) call!407389 call!407392))))

(declare-fun bm!407387 () Bool)

(assert (=> bm!407387 (= call!407387 call!407390)))

(declare-fun b!5510086 () Bool)

(assert (=> b!5510086 (= e!3407718 e!3407715)))

(assert (=> b!5510086 (= c!962928 ((_ is Union!15493) (ite c!962658 (regTwo!31499 (regOne!31498 r!7292)) (ite c!962661 (regTwo!31498 (regOne!31498 r!7292)) (ite c!962659 (regOne!31498 (regOne!31498 r!7292)) (reg!15822 (regOne!31498 r!7292)))))))))

(declare-fun b!5510087 () Bool)

(declare-fun c!962927 () Bool)

(assert (=> b!5510087 (= c!962927 ((_ is Star!15493) (ite c!962658 (regTwo!31499 (regOne!31498 r!7292)) (ite c!962661 (regTwo!31498 (regOne!31498 r!7292)) (ite c!962659 (regOne!31498 (regOne!31498 r!7292)) (reg!15822 (regOne!31498 r!7292)))))))))

(assert (=> b!5510087 (= e!3407714 e!3407720)))

(declare-fun b!5510088 () Bool)

(assert (=> b!5510088 (= e!3407718 (store ((as const (Array Context!9754 Bool)) false) (ite (or c!962658 c!962661) lt!2244721 (Context!9755 call!407180)) true))))

(declare-fun b!5510089 () Bool)

(assert (=> b!5510089 (= e!3407720 call!407388)))

(assert (= (and d!1745998 c!962930) b!5510088))

(assert (= (and d!1745998 (not c!962930)) b!5510086))

(assert (= (and b!5510086 c!962928) b!5510080))

(assert (= (and b!5510086 (not c!962928)) b!5510082))

(assert (= (and b!5510082 res!2348012) b!5510081))

(assert (= (and b!5510082 c!962931) b!5510085))

(assert (= (and b!5510082 (not c!962931)) b!5510084))

(assert (= (and b!5510084 c!962929) b!5510083))

(assert (= (and b!5510084 (not c!962929)) b!5510087))

(assert (= (and b!5510087 c!962927) b!5510089))

(assert (= (and b!5510087 (not c!962927)) b!5510079))

(assert (= (or b!5510083 b!5510089) bm!407387))

(assert (= (or b!5510083 b!5510089) bm!407383))

(assert (= (or b!5510085 bm!407387) bm!407385))

(assert (= (or b!5510085 bm!407383) bm!407382))

(assert (= (or b!5510080 bm!407382) bm!407384))

(assert (= (or b!5510080 b!5510085) bm!407386))

(declare-fun m!6515422 () Bool)

(assert (=> bm!407384 m!6515422))

(declare-fun m!6515424 () Bool)

(assert (=> bm!407385 m!6515424))

(declare-fun m!6515426 () Bool)

(assert (=> b!5510088 m!6515426))

(declare-fun m!6515428 () Bool)

(assert (=> bm!407386 m!6515428))

(declare-fun m!6515430 () Bool)

(assert (=> b!5510081 m!6515430))

(assert (=> bm!407177 d!1745998))

(declare-fun d!1746000 () Bool)

(declare-fun c!962934 () Bool)

(assert (=> d!1746000 (= c!962934 ((_ is Nil!62656) lt!2244799))))

(declare-fun e!3407740 () (InoxSet Context!9754))

(assert (=> d!1746000 (= (content!11255 lt!2244799) e!3407740)))

(declare-fun b!5510150 () Bool)

(assert (=> b!5510150 (= e!3407740 ((as const (Array Context!9754 Bool)) false))))

(declare-fun b!5510151 () Bool)

(assert (=> b!5510151 (= e!3407740 ((_ map or) (store ((as const (Array Context!9754 Bool)) false) (h!69104 lt!2244799) true) (content!11255 (t!376023 lt!2244799))))))

(assert (= (and d!1746000 c!962934) b!5510150))

(assert (= (and d!1746000 (not c!962934)) b!5510151))

(declare-fun m!6515434 () Bool)

(assert (=> b!5510151 m!6515434))

(declare-fun m!6515436 () Bool)

(assert (=> b!5510151 m!6515436))

(assert (=> b!5509067 d!1746000))

(declare-fun d!1746002 () Bool)

(assert (=> d!1746002 (= ($colon$colon!1578 (exprs!5377 lt!2244723) (ite (or c!962690 c!962688) (regTwo!31498 r!7292) r!7292)) (Cons!62654 (ite (or c!962690 c!962688) (regTwo!31498 r!7292) r!7292) (exprs!5377 lt!2244723)))))

(assert (=> bm!407192 d!1746002))

(declare-fun d!1746004 () Bool)

(assert (=> d!1746004 (= (isEmpty!34434 (tail!10896 (exprs!5377 (h!69104 zl!343)))) ((_ is Nil!62654) (tail!10896 (exprs!5377 (h!69104 zl!343)))))))

(assert (=> b!5509058 d!1746004))

(declare-fun d!1746006 () Bool)

(assert (=> d!1746006 (= (tail!10896 (exprs!5377 (h!69104 zl!343))) (t!376021 (exprs!5377 (h!69104 zl!343))))))

(assert (=> b!5509058 d!1746006))

(declare-fun d!1746008 () Bool)

(assert (=> d!1746008 (= (isEmpty!34437 (findConcatSeparation!1916 (regOne!31498 r!7292) (regTwo!31498 r!7292) Nil!62655 s!2326 s!2326)) (not ((_ is Some!15501) (findConcatSeparation!1916 (regOne!31498 r!7292) (regTwo!31498 r!7292) Nil!62655 s!2326 s!2326))))))

(assert (=> d!1745624 d!1746008))

(declare-fun d!1746010 () Bool)

(assert (=> d!1746010 (= (nullable!5527 (regOne!31498 (regTwo!31498 r!7292))) (nullableFct!1657 (regOne!31498 (regTwo!31498 r!7292))))))

(declare-fun bs!1270384 () Bool)

(assert (= bs!1270384 d!1746010))

(declare-fun m!6515438 () Bool)

(assert (=> bs!1270384 m!6515438))

(assert (=> b!5509113 d!1746010))

(assert (=> bs!1270212 d!1745656))

(declare-fun d!1746012 () Bool)

(assert (=> d!1746012 (= (isEmpty!34434 (tail!10896 (unfocusZipperList!921 zl!343))) ((_ is Nil!62654) (tail!10896 (unfocusZipperList!921 zl!343))))))

(assert (=> b!5509151 d!1746012))

(declare-fun d!1746016 () Bool)

(assert (=> d!1746016 (= (tail!10896 (unfocusZipperList!921 zl!343)) (t!376021 (unfocusZipperList!921 zl!343)))))

(assert (=> b!5509151 d!1746016))

(declare-fun d!1746018 () Bool)

(assert (=> d!1746018 true))

(declare-fun setRes!36583 () Bool)

(assert (=> d!1746018 setRes!36583))

(declare-fun condSetEmpty!36583 () Bool)

(declare-fun res!2348013 () (InoxSet Context!9754))

(assert (=> d!1746018 (= condSetEmpty!36583 (= res!2348013 ((as const (Array Context!9754 Bool)) false)))))

(assert (=> d!1746018 (= (choose!41862 z!1189 lambda!295061) res!2348013)))

(declare-fun setIsEmpty!36583 () Bool)

(assert (=> setIsEmpty!36583 setRes!36583))

(declare-fun e!3407747 () Bool)

(declare-fun setElem!36583 () Context!9754)

(declare-fun setNonEmpty!36583 () Bool)

(declare-fun tp!1515997 () Bool)

(assert (=> setNonEmpty!36583 (= setRes!36583 (and tp!1515997 (inv!81979 setElem!36583) e!3407747))))

(declare-fun setRest!36583 () (InoxSet Context!9754))

(assert (=> setNonEmpty!36583 (= res!2348013 ((_ map or) (store ((as const (Array Context!9754 Bool)) false) setElem!36583 true) setRest!36583))))

(declare-fun b!5510173 () Bool)

(declare-fun tp!1515996 () Bool)

(assert (=> b!5510173 (= e!3407747 tp!1515996)))

(assert (= (and d!1746018 condSetEmpty!36583) setIsEmpty!36583))

(assert (= (and d!1746018 (not condSetEmpty!36583)) setNonEmpty!36583))

(assert (= setNonEmpty!36583 b!5510173))

(declare-fun m!6515448 () Bool)

(assert (=> setNonEmpty!36583 m!6515448))

(assert (=> d!1745542 d!1746018))

(declare-fun d!1746028 () Bool)

(assert (=> d!1746028 (= ($colon$colon!1578 (exprs!5377 lt!2244721) (ite (or c!962661 c!962659) (regTwo!31498 (regOne!31498 r!7292)) (regOne!31498 r!7292))) (Cons!62654 (ite (or c!962661 c!962659) (regTwo!31498 (regOne!31498 r!7292)) (regOne!31498 r!7292)) (exprs!5377 lt!2244721)))))

(assert (=> bm!407178 d!1746028))

(declare-fun b!5510174 () Bool)

(declare-fun e!3407753 () (InoxSet Context!9754))

(assert (=> b!5510174 (= e!3407753 ((as const (Array Context!9754 Bool)) false))))

(declare-fun bm!407388 () Bool)

(declare-fun call!407398 () (InoxSet Context!9754))

(declare-fun call!407397 () (InoxSet Context!9754))

(assert (=> bm!407388 (= call!407398 call!407397)))

(declare-fun bm!407389 () Bool)

(declare-fun call!407394 () (InoxSet Context!9754))

(assert (=> bm!407389 (= call!407394 call!407398)))

(declare-fun bm!407390 () Bool)

(declare-fun c!962939 () Bool)

(declare-fun c!962937 () Bool)

(declare-fun c!962936 () Bool)

(declare-fun call!407393 () List!62778)

(assert (=> bm!407390 (= call!407397 (derivationStepZipperDown!835 (ite c!962936 (regTwo!31499 (ite c!962667 (regTwo!31499 (regTwo!31498 r!7292)) (ite c!962670 (regTwo!31498 (regTwo!31498 r!7292)) (ite c!962668 (regOne!31498 (regTwo!31498 r!7292)) (reg!15822 (regTwo!31498 r!7292)))))) (ite c!962939 (regTwo!31498 (ite c!962667 (regTwo!31499 (regTwo!31498 r!7292)) (ite c!962670 (regTwo!31498 (regTwo!31498 r!7292)) (ite c!962668 (regOne!31498 (regTwo!31498 r!7292)) (reg!15822 (regTwo!31498 r!7292)))))) (ite c!962937 (regOne!31498 (ite c!962667 (regTwo!31499 (regTwo!31498 r!7292)) (ite c!962670 (regTwo!31498 (regTwo!31498 r!7292)) (ite c!962668 (regOne!31498 (regTwo!31498 r!7292)) (reg!15822 (regTwo!31498 r!7292)))))) (reg!15822 (ite c!962667 (regTwo!31499 (regTwo!31498 r!7292)) (ite c!962670 (regTwo!31498 (regTwo!31498 r!7292)) (ite c!962668 (regOne!31498 (regTwo!31498 r!7292)) (reg!15822 (regTwo!31498 r!7292))))))))) (ite (or c!962936 c!962939) (ite (or c!962667 c!962670) lt!2244723 (Context!9755 call!407188)) (Context!9755 call!407393)) (h!69103 s!2326)))))

(declare-fun b!5510175 () Bool)

(declare-fun e!3407749 () (InoxSet Context!9754))

(declare-fun call!407395 () (InoxSet Context!9754))

(assert (=> b!5510175 (= e!3407749 ((_ map or) call!407395 call!407397))))

(declare-fun b!5510176 () Bool)

(declare-fun e!3407752 () Bool)

(assert (=> b!5510176 (= e!3407752 (nullable!5527 (regOne!31498 (ite c!962667 (regTwo!31499 (regTwo!31498 r!7292)) (ite c!962670 (regTwo!31498 (regTwo!31498 r!7292)) (ite c!962668 (regOne!31498 (regTwo!31498 r!7292)) (reg!15822 (regTwo!31498 r!7292))))))))))

(declare-fun d!1746030 () Bool)

(declare-fun c!962938 () Bool)

(assert (=> d!1746030 (= c!962938 (and ((_ is ElementMatch!15493) (ite c!962667 (regTwo!31499 (regTwo!31498 r!7292)) (ite c!962670 (regTwo!31498 (regTwo!31498 r!7292)) (ite c!962668 (regOne!31498 (regTwo!31498 r!7292)) (reg!15822 (regTwo!31498 r!7292)))))) (= (c!962517 (ite c!962667 (regTwo!31499 (regTwo!31498 r!7292)) (ite c!962670 (regTwo!31498 (regTwo!31498 r!7292)) (ite c!962668 (regOne!31498 (regTwo!31498 r!7292)) (reg!15822 (regTwo!31498 r!7292)))))) (h!69103 s!2326))))))

(declare-fun e!3407751 () (InoxSet Context!9754))

(assert (=> d!1746030 (= (derivationStepZipperDown!835 (ite c!962667 (regTwo!31499 (regTwo!31498 r!7292)) (ite c!962670 (regTwo!31498 (regTwo!31498 r!7292)) (ite c!962668 (regOne!31498 (regTwo!31498 r!7292)) (reg!15822 (regTwo!31498 r!7292))))) (ite (or c!962667 c!962670) lt!2244723 (Context!9755 call!407188)) (h!69103 s!2326)) e!3407751)))

(declare-fun b!5510177 () Bool)

(assert (=> b!5510177 (= c!962939 e!3407752)))

(declare-fun res!2348014 () Bool)

(assert (=> b!5510177 (=> (not res!2348014) (not e!3407752))))

(assert (=> b!5510177 (= res!2348014 ((_ is Concat!24338) (ite c!962667 (regTwo!31499 (regTwo!31498 r!7292)) (ite c!962670 (regTwo!31498 (regTwo!31498 r!7292)) (ite c!962668 (regOne!31498 (regTwo!31498 r!7292)) (reg!15822 (regTwo!31498 r!7292)))))))))

(declare-fun e!3407750 () (InoxSet Context!9754))

(assert (=> b!5510177 (= e!3407749 e!3407750)))

(declare-fun b!5510178 () Bool)

(declare-fun e!3407748 () (InoxSet Context!9754))

(assert (=> b!5510178 (= e!3407748 call!407394)))

(declare-fun b!5510179 () Bool)

(assert (=> b!5510179 (= e!3407750 e!3407748)))

(assert (=> b!5510179 (= c!962937 ((_ is Concat!24338) (ite c!962667 (regTwo!31499 (regTwo!31498 r!7292)) (ite c!962670 (regTwo!31498 (regTwo!31498 r!7292)) (ite c!962668 (regOne!31498 (regTwo!31498 r!7292)) (reg!15822 (regTwo!31498 r!7292)))))))))

(declare-fun bm!407391 () Bool)

(declare-fun call!407396 () List!62778)

(assert (=> bm!407391 (= call!407396 ($colon$colon!1578 (exprs!5377 (ite (or c!962667 c!962670) lt!2244723 (Context!9755 call!407188))) (ite (or c!962939 c!962937) (regTwo!31498 (ite c!962667 (regTwo!31499 (regTwo!31498 r!7292)) (ite c!962670 (regTwo!31498 (regTwo!31498 r!7292)) (ite c!962668 (regOne!31498 (regTwo!31498 r!7292)) (reg!15822 (regTwo!31498 r!7292)))))) (ite c!962667 (regTwo!31499 (regTwo!31498 r!7292)) (ite c!962670 (regTwo!31498 (regTwo!31498 r!7292)) (ite c!962668 (regOne!31498 (regTwo!31498 r!7292)) (reg!15822 (regTwo!31498 r!7292))))))))))

(declare-fun bm!407392 () Bool)

(assert (=> bm!407392 (= call!407395 (derivationStepZipperDown!835 (ite c!962936 (regOne!31499 (ite c!962667 (regTwo!31499 (regTwo!31498 r!7292)) (ite c!962670 (regTwo!31498 (regTwo!31498 r!7292)) (ite c!962668 (regOne!31498 (regTwo!31498 r!7292)) (reg!15822 (regTwo!31498 r!7292)))))) (regOne!31498 (ite c!962667 (regTwo!31499 (regTwo!31498 r!7292)) (ite c!962670 (regTwo!31498 (regTwo!31498 r!7292)) (ite c!962668 (regOne!31498 (regTwo!31498 r!7292)) (reg!15822 (regTwo!31498 r!7292))))))) (ite c!962936 (ite (or c!962667 c!962670) lt!2244723 (Context!9755 call!407188)) (Context!9755 call!407396)) (h!69103 s!2326)))))

(declare-fun b!5510180 () Bool)

(assert (=> b!5510180 (= e!3407750 ((_ map or) call!407395 call!407398))))

(declare-fun bm!407393 () Bool)

(assert (=> bm!407393 (= call!407393 call!407396)))

(declare-fun b!5510181 () Bool)

(assert (=> b!5510181 (= e!3407751 e!3407749)))

(assert (=> b!5510181 (= c!962936 ((_ is Union!15493) (ite c!962667 (regTwo!31499 (regTwo!31498 r!7292)) (ite c!962670 (regTwo!31498 (regTwo!31498 r!7292)) (ite c!962668 (regOne!31498 (regTwo!31498 r!7292)) (reg!15822 (regTwo!31498 r!7292)))))))))

(declare-fun c!962935 () Bool)

(declare-fun b!5510182 () Bool)

(assert (=> b!5510182 (= c!962935 ((_ is Star!15493) (ite c!962667 (regTwo!31499 (regTwo!31498 r!7292)) (ite c!962670 (regTwo!31498 (regTwo!31498 r!7292)) (ite c!962668 (regOne!31498 (regTwo!31498 r!7292)) (reg!15822 (regTwo!31498 r!7292)))))))))

(assert (=> b!5510182 (= e!3407748 e!3407753)))

(declare-fun b!5510183 () Bool)

(assert (=> b!5510183 (= e!3407751 (store ((as const (Array Context!9754 Bool)) false) (ite (or c!962667 c!962670) lt!2244723 (Context!9755 call!407188)) true))))

(declare-fun b!5510184 () Bool)

(assert (=> b!5510184 (= e!3407753 call!407394)))

(assert (= (and d!1746030 c!962938) b!5510183))

(assert (= (and d!1746030 (not c!962938)) b!5510181))

(assert (= (and b!5510181 c!962936) b!5510175))

(assert (= (and b!5510181 (not c!962936)) b!5510177))

(assert (= (and b!5510177 res!2348014) b!5510176))

(assert (= (and b!5510177 c!962939) b!5510180))

(assert (= (and b!5510177 (not c!962939)) b!5510179))

(assert (= (and b!5510179 c!962937) b!5510178))

(assert (= (and b!5510179 (not c!962937)) b!5510182))

(assert (= (and b!5510182 c!962935) b!5510184))

(assert (= (and b!5510182 (not c!962935)) b!5510174))

(assert (= (or b!5510178 b!5510184) bm!407393))

(assert (= (or b!5510178 b!5510184) bm!407389))

(assert (= (or b!5510180 bm!407393) bm!407391))

(assert (= (or b!5510180 bm!407389) bm!407388))

(assert (= (or b!5510175 bm!407388) bm!407390))

(assert (= (or b!5510175 b!5510180) bm!407392))

(declare-fun m!6515450 () Bool)

(assert (=> bm!407390 m!6515450))

(declare-fun m!6515452 () Bool)

(assert (=> bm!407391 m!6515452))

(declare-fun m!6515454 () Bool)

(assert (=> b!5510183 m!6515454))

(declare-fun m!6515456 () Bool)

(assert (=> bm!407392 m!6515456))

(declare-fun m!6515458 () Bool)

(assert (=> b!5510176 m!6515458))

(assert (=> bm!407185 d!1746030))

(declare-fun d!1746032 () Bool)

(declare-fun res!2348015 () Bool)

(declare-fun e!3407754 () Bool)

(assert (=> d!1746032 (=> res!2348015 e!3407754)))

(assert (=> d!1746032 (= res!2348015 ((_ is Nil!62654) (exprs!5377 setElem!36567)))))

(assert (=> d!1746032 (= (forall!14673 (exprs!5377 setElem!36567) lambda!295108) e!3407754)))

(declare-fun b!5510185 () Bool)

(declare-fun e!3407755 () Bool)

(assert (=> b!5510185 (= e!3407754 e!3407755)))

(declare-fun res!2348016 () Bool)

(assert (=> b!5510185 (=> (not res!2348016) (not e!3407755))))

(assert (=> b!5510185 (= res!2348016 (dynLambda!24482 lambda!295108 (h!69102 (exprs!5377 setElem!36567))))))

(declare-fun b!5510186 () Bool)

(assert (=> b!5510186 (= e!3407755 (forall!14673 (t!376021 (exprs!5377 setElem!36567)) lambda!295108))))

(assert (= (and d!1746032 (not res!2348015)) b!5510185))

(assert (= (and b!5510185 res!2348016) b!5510186))

(declare-fun b_lambda!208917 () Bool)

(assert (=> (not b_lambda!208917) (not b!5510185)))

(declare-fun m!6515460 () Bool)

(assert (=> b!5510185 m!6515460))

(declare-fun m!6515462 () Bool)

(assert (=> b!5510186 m!6515462))

(assert (=> d!1745644 d!1746032))

(declare-fun bs!1270390 () Bool)

(declare-fun d!1746034 () Bool)

(assert (= bs!1270390 (and d!1746034 d!1745668)))

(declare-fun lambda!295155 () Int)

(assert (=> bs!1270390 (= lambda!295155 lambda!295114)))

(declare-fun bs!1270391 () Bool)

(assert (= bs!1270391 (and d!1746034 d!1745888)))

(assert (=> bs!1270391 (= lambda!295155 lambda!295144)))

(declare-fun bs!1270392 () Bool)

(assert (= bs!1270392 (and d!1746034 d!1745644)))

(assert (=> bs!1270392 (= lambda!295155 lambda!295108)))

(declare-fun bs!1270393 () Bool)

(assert (= bs!1270393 (and d!1746034 d!1745642)))

(assert (=> bs!1270393 (= lambda!295155 lambda!295107)))

(declare-fun bs!1270394 () Bool)

(assert (= bs!1270394 (and d!1746034 d!1745666)))

(assert (=> bs!1270394 (= lambda!295155 lambda!295111)))

(declare-fun bs!1270395 () Bool)

(assert (= bs!1270395 (and d!1746034 d!1745836)))

(assert (=> bs!1270395 (= lambda!295155 lambda!295142)))

(declare-fun bs!1270396 () Bool)

(assert (= bs!1270396 (and d!1746034 d!1745626)))

(assert (=> bs!1270396 (= lambda!295155 lambda!295104)))

(declare-fun bs!1270397 () Bool)

(assert (= bs!1270397 (and d!1746034 d!1745928)))

(assert (=> bs!1270397 (= lambda!295155 lambda!295145)))

(assert (=> d!1746034 (= (inv!81979 setElem!36573) (forall!14673 (exprs!5377 setElem!36573) lambda!295155))))

(declare-fun bs!1270398 () Bool)

(assert (= bs!1270398 d!1746034))

(declare-fun m!6515464 () Bool)

(assert (=> bs!1270398 m!6515464))

(assert (=> setNonEmpty!36573 d!1746034))

(assert (=> b!5509160 d!1745648))

(declare-fun b!5510187 () Bool)

(declare-fun e!3407756 () Bool)

(declare-fun e!3407762 () Bool)

(assert (=> b!5510187 (= e!3407756 e!3407762)))

(declare-fun c!962940 () Bool)

(assert (=> b!5510187 (= c!962940 ((_ is Star!15493) (ite c!962541 (regOne!31499 r!7292) (regOne!31498 r!7292))))))

(declare-fun call!407400 () Bool)

(declare-fun c!962941 () Bool)

(declare-fun bm!407394 () Bool)

(assert (=> bm!407394 (= call!407400 (validRegex!7229 (ite c!962941 (regOne!31499 (ite c!962541 (regOne!31499 r!7292) (regOne!31498 r!7292))) (regOne!31498 (ite c!962541 (regOne!31499 r!7292) (regOne!31498 r!7292))))))))

(declare-fun b!5510188 () Bool)

(declare-fun e!3407759 () Bool)

(assert (=> b!5510188 (= e!3407762 e!3407759)))

(declare-fun res!2348020 () Bool)

(assert (=> b!5510188 (= res!2348020 (not (nullable!5527 (reg!15822 (ite c!962541 (regOne!31499 r!7292) (regOne!31498 r!7292))))))))

(assert (=> b!5510188 (=> (not res!2348020) (not e!3407759))))

(declare-fun b!5510189 () Bool)

(declare-fun res!2348019 () Bool)

(declare-fun e!3407761 () Bool)

(assert (=> b!5510189 (=> res!2348019 e!3407761)))

(assert (=> b!5510189 (= res!2348019 (not ((_ is Concat!24338) (ite c!962541 (regOne!31499 r!7292) (regOne!31498 r!7292)))))))

(declare-fun e!3407757 () Bool)

(assert (=> b!5510189 (= e!3407757 e!3407761)))

(declare-fun b!5510190 () Bool)

(declare-fun e!3407760 () Bool)

(declare-fun call!407399 () Bool)

(assert (=> b!5510190 (= e!3407760 call!407399)))

(declare-fun b!5510191 () Bool)

(declare-fun call!407401 () Bool)

(assert (=> b!5510191 (= e!3407759 call!407401)))

(declare-fun b!5510192 () Bool)

(declare-fun e!3407758 () Bool)

(assert (=> b!5510192 (= e!3407758 call!407399)))

(declare-fun bm!407395 () Bool)

(assert (=> bm!407395 (= call!407399 call!407401)))

(declare-fun b!5510194 () Bool)

(assert (=> b!5510194 (= e!3407762 e!3407757)))

(assert (=> b!5510194 (= c!962941 ((_ is Union!15493) (ite c!962541 (regOne!31499 r!7292) (regOne!31498 r!7292))))))

(declare-fun b!5510195 () Bool)

(assert (=> b!5510195 (= e!3407761 e!3407760)))

(declare-fun res!2348018 () Bool)

(assert (=> b!5510195 (=> (not res!2348018) (not e!3407760))))

(assert (=> b!5510195 (= res!2348018 call!407400)))

(declare-fun bm!407396 () Bool)

(assert (=> bm!407396 (= call!407401 (validRegex!7229 (ite c!962940 (reg!15822 (ite c!962541 (regOne!31499 r!7292) (regOne!31498 r!7292))) (ite c!962941 (regTwo!31499 (ite c!962541 (regOne!31499 r!7292) (regOne!31498 r!7292))) (regTwo!31498 (ite c!962541 (regOne!31499 r!7292) (regOne!31498 r!7292)))))))))

(declare-fun d!1746036 () Bool)

(declare-fun res!2348017 () Bool)

(assert (=> d!1746036 (=> res!2348017 e!3407756)))

(assert (=> d!1746036 (= res!2348017 ((_ is ElementMatch!15493) (ite c!962541 (regOne!31499 r!7292) (regOne!31498 r!7292))))))

(assert (=> d!1746036 (= (validRegex!7229 (ite c!962541 (regOne!31499 r!7292) (regOne!31498 r!7292))) e!3407756)))

(declare-fun b!5510193 () Bool)

(declare-fun res!2348021 () Bool)

(assert (=> b!5510193 (=> (not res!2348021) (not e!3407758))))

(assert (=> b!5510193 (= res!2348021 call!407400)))

(assert (=> b!5510193 (= e!3407757 e!3407758)))

(assert (= (and d!1746036 (not res!2348017)) b!5510187))

(assert (= (and b!5510187 c!962940) b!5510188))

(assert (= (and b!5510187 (not c!962940)) b!5510194))

(assert (= (and b!5510188 res!2348020) b!5510191))

(assert (= (and b!5510194 c!962941) b!5510193))

(assert (= (and b!5510194 (not c!962941)) b!5510189))

(assert (= (and b!5510193 res!2348021) b!5510192))

(assert (= (and b!5510189 (not res!2348019)) b!5510195))

(assert (= (and b!5510195 res!2348018) b!5510190))

(assert (= (or b!5510192 b!5510190) bm!407395))

(assert (= (or b!5510193 b!5510195) bm!407394))

(assert (= (or b!5510191 bm!407395) bm!407396))

(declare-fun m!6515466 () Bool)

(assert (=> bm!407394 m!6515466))

(declare-fun m!6515468 () Bool)

(assert (=> b!5510188 m!6515468))

(declare-fun m!6515470 () Bool)

(assert (=> bm!407396 m!6515470))

(assert (=> bm!407109 d!1746036))

(declare-fun d!1746038 () Bool)

(assert (=> d!1746038 (= (nullable!5527 (h!69102 (exprs!5377 lt!2244711))) (nullableFct!1657 (h!69102 (exprs!5377 lt!2244711))))))

(declare-fun bs!1270399 () Bool)

(assert (= bs!1270399 d!1746038))

(declare-fun m!6515472 () Bool)

(assert (=> bs!1270399 m!6515472))

(assert (=> b!5509101 d!1746038))

(declare-fun b!5510197 () Bool)

(declare-fun e!3407764 () List!62779)

(assert (=> b!5510197 (= e!3407764 (Cons!62655 (h!69103 (++!13747 Nil!62655 (Cons!62655 (h!69103 s!2326) Nil!62655))) (++!13747 (t!376022 (++!13747 Nil!62655 (Cons!62655 (h!69103 s!2326) Nil!62655))) (t!376022 s!2326))))))

(declare-fun d!1746040 () Bool)

(declare-fun e!3407763 () Bool)

(assert (=> d!1746040 e!3407763))

(declare-fun res!2348023 () Bool)

(assert (=> d!1746040 (=> (not res!2348023) (not e!3407763))))

(declare-fun lt!2244846 () List!62779)

(assert (=> d!1746040 (= res!2348023 (= (content!11257 lt!2244846) ((_ map or) (content!11257 (++!13747 Nil!62655 (Cons!62655 (h!69103 s!2326) Nil!62655))) (content!11257 (t!376022 s!2326)))))))

(assert (=> d!1746040 (= lt!2244846 e!3407764)))

(declare-fun c!962942 () Bool)

(assert (=> d!1746040 (= c!962942 ((_ is Nil!62655) (++!13747 Nil!62655 (Cons!62655 (h!69103 s!2326) Nil!62655))))))

(assert (=> d!1746040 (= (++!13747 (++!13747 Nil!62655 (Cons!62655 (h!69103 s!2326) Nil!62655)) (t!376022 s!2326)) lt!2244846)))

(declare-fun b!5510198 () Bool)

(declare-fun res!2348022 () Bool)

(assert (=> b!5510198 (=> (not res!2348022) (not e!3407763))))

(assert (=> b!5510198 (= res!2348022 (= (size!39931 lt!2244846) (+ (size!39931 (++!13747 Nil!62655 (Cons!62655 (h!69103 s!2326) Nil!62655))) (size!39931 (t!376022 s!2326)))))))

(declare-fun b!5510196 () Bool)

(assert (=> b!5510196 (= e!3407764 (t!376022 s!2326))))

(declare-fun b!5510199 () Bool)

(assert (=> b!5510199 (= e!3407763 (or (not (= (t!376022 s!2326) Nil!62655)) (= lt!2244846 (++!13747 Nil!62655 (Cons!62655 (h!69103 s!2326) Nil!62655)))))))

(assert (= (and d!1746040 c!962942) b!5510196))

(assert (= (and d!1746040 (not c!962942)) b!5510197))

(assert (= (and d!1746040 res!2348023) b!5510198))

(assert (= (and b!5510198 res!2348022) b!5510199))

(declare-fun m!6515474 () Bool)

(assert (=> b!5510197 m!6515474))

(declare-fun m!6515476 () Bool)

(assert (=> d!1746040 m!6515476))

(assert (=> d!1746040 m!6514482))

(declare-fun m!6515478 () Bool)

(assert (=> d!1746040 m!6515478))

(declare-fun m!6515480 () Bool)

(assert (=> d!1746040 m!6515480))

(declare-fun m!6515482 () Bool)

(assert (=> b!5510198 m!6515482))

(assert (=> b!5510198 m!6514482))

(declare-fun m!6515484 () Bool)

(assert (=> b!5510198 m!6515484))

(declare-fun m!6515486 () Bool)

(assert (=> b!5510198 m!6515486))

(assert (=> b!5508789 d!1746040))

(declare-fun b!5510201 () Bool)

(declare-fun e!3407766 () List!62779)

(assert (=> b!5510201 (= e!3407766 (Cons!62655 (h!69103 Nil!62655) (++!13747 (t!376022 Nil!62655) (Cons!62655 (h!69103 s!2326) Nil!62655))))))

(declare-fun d!1746042 () Bool)

(declare-fun e!3407765 () Bool)

(assert (=> d!1746042 e!3407765))

(declare-fun res!2348025 () Bool)

(assert (=> d!1746042 (=> (not res!2348025) (not e!3407765))))

(declare-fun lt!2244847 () List!62779)

(assert (=> d!1746042 (= res!2348025 (= (content!11257 lt!2244847) ((_ map or) (content!11257 Nil!62655) (content!11257 (Cons!62655 (h!69103 s!2326) Nil!62655)))))))

(assert (=> d!1746042 (= lt!2244847 e!3407766)))

(declare-fun c!962943 () Bool)

(assert (=> d!1746042 (= c!962943 ((_ is Nil!62655) Nil!62655))))

(assert (=> d!1746042 (= (++!13747 Nil!62655 (Cons!62655 (h!69103 s!2326) Nil!62655)) lt!2244847)))

(declare-fun b!5510202 () Bool)

(declare-fun res!2348024 () Bool)

(assert (=> b!5510202 (=> (not res!2348024) (not e!3407765))))

(assert (=> b!5510202 (= res!2348024 (= (size!39931 lt!2244847) (+ (size!39931 Nil!62655) (size!39931 (Cons!62655 (h!69103 s!2326) Nil!62655)))))))

(declare-fun b!5510200 () Bool)

(assert (=> b!5510200 (= e!3407766 (Cons!62655 (h!69103 s!2326) Nil!62655))))

(declare-fun b!5510203 () Bool)

(assert (=> b!5510203 (= e!3407765 (or (not (= (Cons!62655 (h!69103 s!2326) Nil!62655) Nil!62655)) (= lt!2244847 Nil!62655)))))

(assert (= (and d!1746042 c!962943) b!5510200))

(assert (= (and d!1746042 (not c!962943)) b!5510201))

(assert (= (and d!1746042 res!2348025) b!5510202))

(assert (= (and b!5510202 res!2348024) b!5510203))

(declare-fun m!6515488 () Bool)

(assert (=> b!5510201 m!6515488))

(declare-fun m!6515490 () Bool)

(assert (=> d!1746042 m!6515490))

(declare-fun m!6515492 () Bool)

(assert (=> d!1746042 m!6515492))

(declare-fun m!6515494 () Bool)

(assert (=> d!1746042 m!6515494))

(declare-fun m!6515496 () Bool)

(assert (=> b!5510202 m!6515496))

(declare-fun m!6515498 () Bool)

(assert (=> b!5510202 m!6515498))

(declare-fun m!6515500 () Bool)

(assert (=> b!5510202 m!6515500))

(assert (=> b!5508789 d!1746042))

(declare-fun d!1746044 () Bool)

(assert (=> d!1746044 (= (++!13747 (++!13747 Nil!62655 (Cons!62655 (h!69103 s!2326) Nil!62655)) (t!376022 s!2326)) s!2326)))

(declare-fun lt!2244850 () Unit!155446)

(declare-fun choose!41871 (List!62779 C!31256 List!62779 List!62779) Unit!155446)

(assert (=> d!1746044 (= lt!2244850 (choose!41871 Nil!62655 (h!69103 s!2326) (t!376022 s!2326) s!2326))))

(assert (=> d!1746044 (= (++!13747 Nil!62655 (Cons!62655 (h!69103 s!2326) (t!376022 s!2326))) s!2326)))

(assert (=> d!1746044 (= (lemmaMoveElementToOtherListKeepsConcatEq!1916 Nil!62655 (h!69103 s!2326) (t!376022 s!2326) s!2326) lt!2244850)))

(declare-fun bs!1270400 () Bool)

(assert (= bs!1270400 d!1746044))

(assert (=> bs!1270400 m!6514482))

(assert (=> bs!1270400 m!6514482))

(assert (=> bs!1270400 m!6514484))

(declare-fun m!6515502 () Bool)

(assert (=> bs!1270400 m!6515502))

(declare-fun m!6515504 () Bool)

(assert (=> bs!1270400 m!6515504))

(assert (=> b!5508789 d!1746044))

(declare-fun b!5510204 () Bool)

(declare-fun e!3407769 () Option!15502)

(assert (=> b!5510204 (= e!3407769 None!15501)))

(declare-fun b!5510205 () Bool)

(declare-fun e!3407767 () Bool)

(declare-fun lt!2244852 () Option!15502)

(assert (=> b!5510205 (= e!3407767 (not (isDefined!12205 lt!2244852)))))

(declare-fun b!5510206 () Bool)

(declare-fun res!2348027 () Bool)

(declare-fun e!3407770 () Bool)

(assert (=> b!5510206 (=> (not res!2348027) (not e!3407770))))

(assert (=> b!5510206 (= res!2348027 (matchR!7678 (regOne!31498 r!7292) (_1!35893 (get!21561 lt!2244852))))))

(declare-fun b!5510207 () Bool)

(assert (=> b!5510207 (= e!3407770 (= (++!13747 (_1!35893 (get!21561 lt!2244852)) (_2!35893 (get!21561 lt!2244852))) s!2326))))

(declare-fun b!5510208 () Bool)

(declare-fun e!3407771 () Option!15502)

(assert (=> b!5510208 (= e!3407771 (Some!15501 (tuple2!65181 (++!13747 Nil!62655 (Cons!62655 (h!69103 s!2326) Nil!62655)) (t!376022 s!2326))))))

(declare-fun b!5510209 () Bool)

(assert (=> b!5510209 (= e!3407771 e!3407769)))

(declare-fun c!962944 () Bool)

(assert (=> b!5510209 (= c!962944 ((_ is Nil!62655) (t!376022 s!2326)))))

(declare-fun b!5510210 () Bool)

(declare-fun res!2348029 () Bool)

(assert (=> b!5510210 (=> (not res!2348029) (not e!3407770))))

(assert (=> b!5510210 (= res!2348029 (matchR!7678 (regTwo!31498 r!7292) (_2!35893 (get!21561 lt!2244852))))))

(declare-fun d!1746046 () Bool)

(assert (=> d!1746046 e!3407767))

(declare-fun res!2348028 () Bool)

(assert (=> d!1746046 (=> res!2348028 e!3407767)))

(assert (=> d!1746046 (= res!2348028 e!3407770)))

(declare-fun res!2348030 () Bool)

(assert (=> d!1746046 (=> (not res!2348030) (not e!3407770))))

(assert (=> d!1746046 (= res!2348030 (isDefined!12205 lt!2244852))))

(assert (=> d!1746046 (= lt!2244852 e!3407771)))

(declare-fun c!962945 () Bool)

(declare-fun e!3407768 () Bool)

(assert (=> d!1746046 (= c!962945 e!3407768)))

(declare-fun res!2348026 () Bool)

(assert (=> d!1746046 (=> (not res!2348026) (not e!3407768))))

(assert (=> d!1746046 (= res!2348026 (matchR!7678 (regOne!31498 r!7292) (++!13747 Nil!62655 (Cons!62655 (h!69103 s!2326) Nil!62655))))))

(assert (=> d!1746046 (validRegex!7229 (regOne!31498 r!7292))))

(assert (=> d!1746046 (= (findConcatSeparation!1916 (regOne!31498 r!7292) (regTwo!31498 r!7292) (++!13747 Nil!62655 (Cons!62655 (h!69103 s!2326) Nil!62655)) (t!376022 s!2326) s!2326) lt!2244852)))

(declare-fun b!5510211 () Bool)

(declare-fun lt!2244853 () Unit!155446)

(declare-fun lt!2244851 () Unit!155446)

(assert (=> b!5510211 (= lt!2244853 lt!2244851)))

(assert (=> b!5510211 (= (++!13747 (++!13747 (++!13747 Nil!62655 (Cons!62655 (h!69103 s!2326) Nil!62655)) (Cons!62655 (h!69103 (t!376022 s!2326)) Nil!62655)) (t!376022 (t!376022 s!2326))) s!2326)))

(assert (=> b!5510211 (= lt!2244851 (lemmaMoveElementToOtherListKeepsConcatEq!1916 (++!13747 Nil!62655 (Cons!62655 (h!69103 s!2326) Nil!62655)) (h!69103 (t!376022 s!2326)) (t!376022 (t!376022 s!2326)) s!2326))))

(assert (=> b!5510211 (= e!3407769 (findConcatSeparation!1916 (regOne!31498 r!7292) (regTwo!31498 r!7292) (++!13747 (++!13747 Nil!62655 (Cons!62655 (h!69103 s!2326) Nil!62655)) (Cons!62655 (h!69103 (t!376022 s!2326)) Nil!62655)) (t!376022 (t!376022 s!2326)) s!2326))))

(declare-fun b!5510212 () Bool)

(assert (=> b!5510212 (= e!3407768 (matchR!7678 (regTwo!31498 r!7292) (t!376022 s!2326)))))

(assert (= (and d!1746046 res!2348026) b!5510212))

(assert (= (and d!1746046 c!962945) b!5510208))

(assert (= (and d!1746046 (not c!962945)) b!5510209))

(assert (= (and b!5510209 c!962944) b!5510204))

(assert (= (and b!5510209 (not c!962944)) b!5510211))

(assert (= (and d!1746046 res!2348030) b!5510206))

(assert (= (and b!5510206 res!2348027) b!5510210))

(assert (= (and b!5510210 res!2348029) b!5510207))

(assert (= (and d!1746046 (not res!2348028)) b!5510205))

(declare-fun m!6515506 () Bool)

(assert (=> b!5510207 m!6515506))

(declare-fun m!6515508 () Bool)

(assert (=> b!5510207 m!6515508))

(declare-fun m!6515510 () Bool)

(assert (=> b!5510205 m!6515510))

(assert (=> d!1746046 m!6515510))

(assert (=> d!1746046 m!6514482))

(declare-fun m!6515512 () Bool)

(assert (=> d!1746046 m!6515512))

(assert (=> d!1746046 m!6514474))

(assert (=> b!5510210 m!6515506))

(declare-fun m!6515514 () Bool)

(assert (=> b!5510210 m!6515514))

(declare-fun m!6515516 () Bool)

(assert (=> b!5510212 m!6515516))

(assert (=> b!5510206 m!6515506))

(declare-fun m!6515518 () Bool)

(assert (=> b!5510206 m!6515518))

(assert (=> b!5510211 m!6514482))

(declare-fun m!6515520 () Bool)

(assert (=> b!5510211 m!6515520))

(assert (=> b!5510211 m!6515520))

(declare-fun m!6515522 () Bool)

(assert (=> b!5510211 m!6515522))

(assert (=> b!5510211 m!6514482))

(declare-fun m!6515524 () Bool)

(assert (=> b!5510211 m!6515524))

(assert (=> b!5510211 m!6515520))

(declare-fun m!6515526 () Bool)

(assert (=> b!5510211 m!6515526))

(assert (=> b!5508789 d!1746046))

(declare-fun b!5510213 () Bool)

(declare-fun e!3407777 () (InoxSet Context!9754))

(assert (=> b!5510213 (= e!3407777 ((as const (Array Context!9754 Bool)) false))))

(declare-fun bm!407397 () Bool)

(declare-fun call!407407 () (InoxSet Context!9754))

(declare-fun call!407406 () (InoxSet Context!9754))

(assert (=> bm!407397 (= call!407407 call!407406)))

(declare-fun bm!407398 () Bool)

(declare-fun call!407403 () (InoxSet Context!9754))

(assert (=> bm!407398 (= call!407403 call!407407)))

(declare-fun bm!407399 () Bool)

(declare-fun c!962947 () Bool)

(declare-fun c!962948 () Bool)

(declare-fun c!962950 () Bool)

(declare-fun call!407402 () List!62778)

(assert (=> bm!407399 (= call!407406 (derivationStepZipperDown!835 (ite c!962947 (regTwo!31499 (h!69102 (exprs!5377 lt!2244721))) (ite c!962950 (regTwo!31498 (h!69102 (exprs!5377 lt!2244721))) (ite c!962948 (regOne!31498 (h!69102 (exprs!5377 lt!2244721))) (reg!15822 (h!69102 (exprs!5377 lt!2244721)))))) (ite (or c!962947 c!962950) (Context!9755 (t!376021 (exprs!5377 lt!2244721))) (Context!9755 call!407402)) (h!69103 s!2326)))))

(declare-fun b!5510214 () Bool)

(declare-fun e!3407773 () (InoxSet Context!9754))

(declare-fun call!407404 () (InoxSet Context!9754))

(assert (=> b!5510214 (= e!3407773 ((_ map or) call!407404 call!407406))))

(declare-fun b!5510215 () Bool)

(declare-fun e!3407776 () Bool)

(assert (=> b!5510215 (= e!3407776 (nullable!5527 (regOne!31498 (h!69102 (exprs!5377 lt!2244721)))))))

(declare-fun d!1746048 () Bool)

(declare-fun c!962949 () Bool)

(assert (=> d!1746048 (= c!962949 (and ((_ is ElementMatch!15493) (h!69102 (exprs!5377 lt!2244721))) (= (c!962517 (h!69102 (exprs!5377 lt!2244721))) (h!69103 s!2326))))))

(declare-fun e!3407775 () (InoxSet Context!9754))

(assert (=> d!1746048 (= (derivationStepZipperDown!835 (h!69102 (exprs!5377 lt!2244721)) (Context!9755 (t!376021 (exprs!5377 lt!2244721))) (h!69103 s!2326)) e!3407775)))

(declare-fun b!5510216 () Bool)

(assert (=> b!5510216 (= c!962950 e!3407776)))

(declare-fun res!2348031 () Bool)

(assert (=> b!5510216 (=> (not res!2348031) (not e!3407776))))

(assert (=> b!5510216 (= res!2348031 ((_ is Concat!24338) (h!69102 (exprs!5377 lt!2244721))))))

(declare-fun e!3407774 () (InoxSet Context!9754))

(assert (=> b!5510216 (= e!3407773 e!3407774)))

(declare-fun b!5510217 () Bool)

(declare-fun e!3407772 () (InoxSet Context!9754))

(assert (=> b!5510217 (= e!3407772 call!407403)))

(declare-fun b!5510218 () Bool)

(assert (=> b!5510218 (= e!3407774 e!3407772)))

(assert (=> b!5510218 (= c!962948 ((_ is Concat!24338) (h!69102 (exprs!5377 lt!2244721))))))

(declare-fun bm!407400 () Bool)

(declare-fun call!407405 () List!62778)

(assert (=> bm!407400 (= call!407405 ($colon$colon!1578 (exprs!5377 (Context!9755 (t!376021 (exprs!5377 lt!2244721)))) (ite (or c!962950 c!962948) (regTwo!31498 (h!69102 (exprs!5377 lt!2244721))) (h!69102 (exprs!5377 lt!2244721)))))))

(declare-fun bm!407401 () Bool)

(assert (=> bm!407401 (= call!407404 (derivationStepZipperDown!835 (ite c!962947 (regOne!31499 (h!69102 (exprs!5377 lt!2244721))) (regOne!31498 (h!69102 (exprs!5377 lt!2244721)))) (ite c!962947 (Context!9755 (t!376021 (exprs!5377 lt!2244721))) (Context!9755 call!407405)) (h!69103 s!2326)))))

(declare-fun b!5510219 () Bool)

(assert (=> b!5510219 (= e!3407774 ((_ map or) call!407404 call!407407))))

(declare-fun bm!407402 () Bool)

(assert (=> bm!407402 (= call!407402 call!407405)))

(declare-fun b!5510220 () Bool)

(assert (=> b!5510220 (= e!3407775 e!3407773)))

(assert (=> b!5510220 (= c!962947 ((_ is Union!15493) (h!69102 (exprs!5377 lt!2244721))))))

(declare-fun b!5510221 () Bool)

(declare-fun c!962946 () Bool)

(assert (=> b!5510221 (= c!962946 ((_ is Star!15493) (h!69102 (exprs!5377 lt!2244721))))))

(assert (=> b!5510221 (= e!3407772 e!3407777)))

(declare-fun b!5510222 () Bool)

(assert (=> b!5510222 (= e!3407775 (store ((as const (Array Context!9754 Bool)) false) (Context!9755 (t!376021 (exprs!5377 lt!2244721))) true))))

(declare-fun b!5510223 () Bool)

(assert (=> b!5510223 (= e!3407777 call!407403)))

(assert (= (and d!1746048 c!962949) b!5510222))

(assert (= (and d!1746048 (not c!962949)) b!5510220))

(assert (= (and b!5510220 c!962947) b!5510214))

(assert (= (and b!5510220 (not c!962947)) b!5510216))

(assert (= (and b!5510216 res!2348031) b!5510215))

(assert (= (and b!5510216 c!962950) b!5510219))

(assert (= (and b!5510216 (not c!962950)) b!5510218))

(assert (= (and b!5510218 c!962948) b!5510217))

(assert (= (and b!5510218 (not c!962948)) b!5510221))

(assert (= (and b!5510221 c!962946) b!5510223))

(assert (= (and b!5510221 (not c!962946)) b!5510213))

(assert (= (or b!5510217 b!5510223) bm!407402))

(assert (= (or b!5510217 b!5510223) bm!407398))

(assert (= (or b!5510219 bm!407402) bm!407400))

(assert (= (or b!5510219 bm!407398) bm!407397))

(assert (= (or b!5510214 bm!407397) bm!407399))

(assert (= (or b!5510214 b!5510219) bm!407401))

(declare-fun m!6515528 () Bool)

(assert (=> bm!407399 m!6515528))

(declare-fun m!6515530 () Bool)

(assert (=> bm!407400 m!6515530))

(declare-fun m!6515532 () Bool)

(assert (=> b!5510222 m!6515532))

(declare-fun m!6515534 () Bool)

(assert (=> bm!407401 m!6515534))

(declare-fun m!6515536 () Bool)

(assert (=> b!5510215 m!6515536))

(assert (=> bm!407182 d!1746048))

(assert (=> b!5509248 d!1745894))

(assert (=> b!5509248 d!1745896))

(declare-fun d!1746050 () Bool)

(assert (=> d!1746050 (= (isEmptyExpr!1071 lt!2244793) ((_ is EmptyExpr!15493) lt!2244793))))

(assert (=> b!5509063 d!1746050))

(declare-fun b!5510224 () Bool)

(declare-fun e!3407783 () (InoxSet Context!9754))

(assert (=> b!5510224 (= e!3407783 ((as const (Array Context!9754 Bool)) false))))

(declare-fun bm!407403 () Bool)

(declare-fun call!407413 () (InoxSet Context!9754))

(declare-fun call!407412 () (InoxSet Context!9754))

(assert (=> bm!407403 (= call!407413 call!407412)))

(declare-fun bm!407404 () Bool)

(declare-fun call!407409 () (InoxSet Context!9754))

(assert (=> bm!407404 (= call!407409 call!407413)))

(declare-fun bm!407405 () Bool)

(declare-fun c!962955 () Bool)

(declare-fun c!962953 () Bool)

(declare-fun call!407408 () List!62778)

(declare-fun c!962952 () Bool)

(assert (=> bm!407405 (= call!407412 (derivationStepZipperDown!835 (ite c!962952 (regTwo!31499 (ite c!962667 (regOne!31499 (regTwo!31498 r!7292)) (regOne!31498 (regTwo!31498 r!7292)))) (ite c!962955 (regTwo!31498 (ite c!962667 (regOne!31499 (regTwo!31498 r!7292)) (regOne!31498 (regTwo!31498 r!7292)))) (ite c!962953 (regOne!31498 (ite c!962667 (regOne!31499 (regTwo!31498 r!7292)) (regOne!31498 (regTwo!31498 r!7292)))) (reg!15822 (ite c!962667 (regOne!31499 (regTwo!31498 r!7292)) (regOne!31498 (regTwo!31498 r!7292))))))) (ite (or c!962952 c!962955) (ite c!962667 lt!2244723 (Context!9755 call!407191)) (Context!9755 call!407408)) (h!69103 s!2326)))))

(declare-fun b!5510225 () Bool)

(declare-fun e!3407779 () (InoxSet Context!9754))

(declare-fun call!407410 () (InoxSet Context!9754))

(assert (=> b!5510225 (= e!3407779 ((_ map or) call!407410 call!407412))))

(declare-fun b!5510226 () Bool)

(declare-fun e!3407782 () Bool)

(assert (=> b!5510226 (= e!3407782 (nullable!5527 (regOne!31498 (ite c!962667 (regOne!31499 (regTwo!31498 r!7292)) (regOne!31498 (regTwo!31498 r!7292))))))))

(declare-fun d!1746052 () Bool)

(declare-fun c!962954 () Bool)

(assert (=> d!1746052 (= c!962954 (and ((_ is ElementMatch!15493) (ite c!962667 (regOne!31499 (regTwo!31498 r!7292)) (regOne!31498 (regTwo!31498 r!7292)))) (= (c!962517 (ite c!962667 (regOne!31499 (regTwo!31498 r!7292)) (regOne!31498 (regTwo!31498 r!7292)))) (h!69103 s!2326))))))

(declare-fun e!3407781 () (InoxSet Context!9754))

(assert (=> d!1746052 (= (derivationStepZipperDown!835 (ite c!962667 (regOne!31499 (regTwo!31498 r!7292)) (regOne!31498 (regTwo!31498 r!7292))) (ite c!962667 lt!2244723 (Context!9755 call!407191)) (h!69103 s!2326)) e!3407781)))

(declare-fun b!5510227 () Bool)

(assert (=> b!5510227 (= c!962955 e!3407782)))

(declare-fun res!2348032 () Bool)

(assert (=> b!5510227 (=> (not res!2348032) (not e!3407782))))

(assert (=> b!5510227 (= res!2348032 ((_ is Concat!24338) (ite c!962667 (regOne!31499 (regTwo!31498 r!7292)) (regOne!31498 (regTwo!31498 r!7292)))))))

(declare-fun e!3407780 () (InoxSet Context!9754))

(assert (=> b!5510227 (= e!3407779 e!3407780)))

(declare-fun b!5510228 () Bool)

(declare-fun e!3407778 () (InoxSet Context!9754))

(assert (=> b!5510228 (= e!3407778 call!407409)))

(declare-fun b!5510229 () Bool)

(assert (=> b!5510229 (= e!3407780 e!3407778)))

(assert (=> b!5510229 (= c!962953 ((_ is Concat!24338) (ite c!962667 (regOne!31499 (regTwo!31498 r!7292)) (regOne!31498 (regTwo!31498 r!7292)))))))

(declare-fun bm!407406 () Bool)

(declare-fun call!407411 () List!62778)

(assert (=> bm!407406 (= call!407411 ($colon$colon!1578 (exprs!5377 (ite c!962667 lt!2244723 (Context!9755 call!407191))) (ite (or c!962955 c!962953) (regTwo!31498 (ite c!962667 (regOne!31499 (regTwo!31498 r!7292)) (regOne!31498 (regTwo!31498 r!7292)))) (ite c!962667 (regOne!31499 (regTwo!31498 r!7292)) (regOne!31498 (regTwo!31498 r!7292))))))))

(declare-fun bm!407407 () Bool)

(assert (=> bm!407407 (= call!407410 (derivationStepZipperDown!835 (ite c!962952 (regOne!31499 (ite c!962667 (regOne!31499 (regTwo!31498 r!7292)) (regOne!31498 (regTwo!31498 r!7292)))) (regOne!31498 (ite c!962667 (regOne!31499 (regTwo!31498 r!7292)) (regOne!31498 (regTwo!31498 r!7292))))) (ite c!962952 (ite c!962667 lt!2244723 (Context!9755 call!407191)) (Context!9755 call!407411)) (h!69103 s!2326)))))

(declare-fun b!5510230 () Bool)

(assert (=> b!5510230 (= e!3407780 ((_ map or) call!407410 call!407413))))

(declare-fun bm!407408 () Bool)

(assert (=> bm!407408 (= call!407408 call!407411)))

(declare-fun b!5510231 () Bool)

(assert (=> b!5510231 (= e!3407781 e!3407779)))

(assert (=> b!5510231 (= c!962952 ((_ is Union!15493) (ite c!962667 (regOne!31499 (regTwo!31498 r!7292)) (regOne!31498 (regTwo!31498 r!7292)))))))

(declare-fun b!5510232 () Bool)

(declare-fun c!962951 () Bool)

(assert (=> b!5510232 (= c!962951 ((_ is Star!15493) (ite c!962667 (regOne!31499 (regTwo!31498 r!7292)) (regOne!31498 (regTwo!31498 r!7292)))))))

(assert (=> b!5510232 (= e!3407778 e!3407783)))

(declare-fun b!5510233 () Bool)

(assert (=> b!5510233 (= e!3407781 (store ((as const (Array Context!9754 Bool)) false) (ite c!962667 lt!2244723 (Context!9755 call!407191)) true))))

(declare-fun b!5510234 () Bool)

(assert (=> b!5510234 (= e!3407783 call!407409)))

(assert (= (and d!1746052 c!962954) b!5510233))

(assert (= (and d!1746052 (not c!962954)) b!5510231))

(assert (= (and b!5510231 c!962952) b!5510225))

(assert (= (and b!5510231 (not c!962952)) b!5510227))

(assert (= (and b!5510227 res!2348032) b!5510226))

(assert (= (and b!5510227 c!962955) b!5510230))

(assert (= (and b!5510227 (not c!962955)) b!5510229))

(assert (= (and b!5510229 c!962953) b!5510228))

(assert (= (and b!5510229 (not c!962953)) b!5510232))

(assert (= (and b!5510232 c!962951) b!5510234))

(assert (= (and b!5510232 (not c!962951)) b!5510224))

(assert (= (or b!5510228 b!5510234) bm!407408))

(assert (= (or b!5510228 b!5510234) bm!407404))

(assert (= (or b!5510230 bm!407408) bm!407406))

(assert (= (or b!5510230 bm!407404) bm!407403))

(assert (= (or b!5510225 bm!407403) bm!407405))

(assert (= (or b!5510225 b!5510230) bm!407407))

(declare-fun m!6515538 () Bool)

(assert (=> bm!407405 m!6515538))

(declare-fun m!6515540 () Bool)

(assert (=> bm!407406 m!6515540))

(declare-fun m!6515542 () Bool)

(assert (=> b!5510233 m!6515542))

(declare-fun m!6515544 () Bool)

(assert (=> bm!407407 m!6515544))

(declare-fun m!6515546 () Bool)

(assert (=> b!5510226 m!6515546))

(assert (=> bm!407187 d!1746052))

(declare-fun d!1746054 () Bool)

(declare-fun res!2348033 () Bool)

(declare-fun e!3407784 () Bool)

(assert (=> d!1746054 (=> res!2348033 e!3407784)))

(assert (=> d!1746054 (= res!2348033 ((_ is Nil!62654) (exprs!5377 (h!69104 zl!343))))))

(assert (=> d!1746054 (= (forall!14673 (exprs!5377 (h!69104 zl!343)) lambda!295107) e!3407784)))

(declare-fun b!5510235 () Bool)

(declare-fun e!3407785 () Bool)

(assert (=> b!5510235 (= e!3407784 e!3407785)))

(declare-fun res!2348034 () Bool)

(assert (=> b!5510235 (=> (not res!2348034) (not e!3407785))))

(assert (=> b!5510235 (= res!2348034 (dynLambda!24482 lambda!295107 (h!69102 (exprs!5377 (h!69104 zl!343)))))))

(declare-fun b!5510236 () Bool)

(assert (=> b!5510236 (= e!3407785 (forall!14673 (t!376021 (exprs!5377 (h!69104 zl!343))) lambda!295107))))

(assert (= (and d!1746054 (not res!2348033)) b!5510235))

(assert (= (and b!5510235 res!2348034) b!5510236))

(declare-fun b_lambda!208919 () Bool)

(assert (=> (not b_lambda!208919) (not b!5510235)))

(declare-fun m!6515548 () Bool)

(assert (=> b!5510235 m!6515548))

(declare-fun m!6515550 () Bool)

(assert (=> b!5510236 m!6515550))

(assert (=> d!1745642 d!1746054))

(assert (=> d!1745556 d!1745542))

(declare-fun d!1746056 () Bool)

(assert (=> d!1746056 (= (flatMap!1106 z!1189 lambda!295061) (dynLambda!24480 lambda!295061 (h!69104 zl!343)))))

(assert (=> d!1746056 true))

(declare-fun _$13!2034 () Unit!155446)

(assert (=> d!1746056 (= (choose!41863 z!1189 (h!69104 zl!343) lambda!295061) _$13!2034)))

(declare-fun b_lambda!208921 () Bool)

(assert (=> (not b_lambda!208921) (not d!1746056)))

(declare-fun bs!1270401 () Bool)

(assert (= bs!1270401 d!1746056))

(assert (=> bs!1270401 m!6514260))

(assert (=> bs!1270401 m!6514352))

(assert (=> d!1745556 d!1746056))

(assert (=> d!1745608 d!1745568))

(assert (=> d!1745608 d!1745798))

(assert (=> d!1745608 d!1745624))

(declare-fun d!1746058 () Bool)

(assert (=> d!1746058 (= (Exists!2593 lambda!295085) (choose!41864 lambda!295085))))

(declare-fun bs!1270402 () Bool)

(assert (= bs!1270402 d!1746058))

(declare-fun m!6515552 () Bool)

(assert (=> bs!1270402 m!6515552))

(assert (=> d!1745608 d!1746058))

(declare-fun bs!1270403 () Bool)

(declare-fun d!1746060 () Bool)

(assert (= bs!1270403 (and d!1746060 b!5509932)))

(declare-fun lambda!295158 () Int)

(assert (=> bs!1270403 (not (= lambda!295158 lambda!295149))))

(declare-fun bs!1270404 () Bool)

(assert (= bs!1270404 (and d!1746060 d!1745614)))

(assert (=> bs!1270404 (not (= lambda!295158 lambda!295095))))

(declare-fun bs!1270405 () Bool)

(assert (= bs!1270405 (and d!1746060 b!5510008)))

(assert (=> bs!1270405 (not (= lambda!295158 lambda!295154))))

(declare-fun bs!1270406 () Bool)

(assert (= bs!1270406 (and d!1746060 b!5508569)))

(assert (=> bs!1270406 (not (= lambda!295158 lambda!295060))))

(declare-fun bs!1270407 () Bool)

(assert (= bs!1270407 (and d!1746060 d!1745808)))

(assert (=> bs!1270407 (not (= lambda!295158 lambda!295140))))

(assert (=> bs!1270407 (= lambda!295158 lambda!295139)))

(declare-fun bs!1270408 () Bool)

(assert (= bs!1270408 (and d!1746060 b!5509935)))

(assert (=> bs!1270408 (not (= lambda!295158 lambda!295148))))

(declare-fun bs!1270409 () Bool)

(assert (= bs!1270409 (and d!1746060 b!5509211)))

(assert (=> bs!1270409 (not (= lambda!295158 lambda!295122))))

(declare-fun bs!1270410 () Bool)

(assert (= bs!1270410 (and d!1746060 d!1745608)))

(assert (=> bs!1270410 (= lambda!295158 lambda!295085)))

(assert (=> bs!1270404 (= lambda!295158 lambda!295094)))

(declare-fun bs!1270411 () Bool)

(assert (= bs!1270411 (and d!1746060 b!5509208)))

(assert (=> bs!1270411 (not (= lambda!295158 lambda!295123))))

(assert (=> bs!1270406 (= lambda!295158 lambda!295059)))

(declare-fun bs!1270412 () Bool)

(assert (= bs!1270412 (and d!1746060 b!5510011)))

(assert (=> bs!1270412 (not (= lambda!295158 lambda!295153))))

(assert (=> d!1746060 true))

(assert (=> d!1746060 true))

(assert (=> d!1746060 true))

(assert (=> d!1746060 (= (isDefined!12205 (findConcatSeparation!1916 (regOne!31498 r!7292) (regTwo!31498 r!7292) Nil!62655 s!2326 s!2326)) (Exists!2593 lambda!295158))))

(assert (=> d!1746060 true))

(declare-fun _$89!1596 () Unit!155446)

(assert (=> d!1746060 (= (choose!41865 (regOne!31498 r!7292) (regTwo!31498 r!7292) s!2326) _$89!1596)))

(declare-fun bs!1270413 () Bool)

(assert (= bs!1270413 d!1746060))

(assert (=> bs!1270413 m!6514282))

(assert (=> bs!1270413 m!6514282))

(assert (=> bs!1270413 m!6514284))

(declare-fun m!6515554 () Bool)

(assert (=> bs!1270413 m!6515554))

(assert (=> d!1745608 d!1746060))

(declare-fun d!1746062 () Bool)

(assert (=> d!1746062 (= (nullable!5527 (h!69102 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654))))) (nullableFct!1657 (h!69102 (exprs!5377 (Context!9755 (Cons!62654 r!7292 Nil!62654))))))))

(declare-fun bs!1270414 () Bool)

(assert (= bs!1270414 d!1746062))

(declare-fun m!6515556 () Bool)

(assert (=> bs!1270414 m!6515556))

(assert (=> b!5509169 d!1746062))

(declare-fun d!1746064 () Bool)

(assert (=> d!1746064 true))

(declare-fun setRes!36584 () Bool)

(assert (=> d!1746064 setRes!36584))

(declare-fun condSetEmpty!36584 () Bool)

(declare-fun res!2348039 () (InoxSet Context!9754))

(assert (=> d!1746064 (= condSetEmpty!36584 (= res!2348039 ((as const (Array Context!9754 Bool)) false)))))

(assert (=> d!1746064 (= (choose!41862 lt!2244712 lambda!295061) res!2348039)))

(declare-fun setIsEmpty!36584 () Bool)

(assert (=> setIsEmpty!36584 setRes!36584))

(declare-fun e!3407788 () Bool)

(declare-fun tp!1515999 () Bool)

(declare-fun setNonEmpty!36584 () Bool)

(declare-fun setElem!36584 () Context!9754)

(assert (=> setNonEmpty!36584 (= setRes!36584 (and tp!1515999 (inv!81979 setElem!36584) e!3407788))))

(declare-fun setRest!36584 () (InoxSet Context!9754))

(assert (=> setNonEmpty!36584 (= res!2348039 ((_ map or) (store ((as const (Array Context!9754 Bool)) false) setElem!36584 true) setRest!36584))))

(declare-fun b!5510241 () Bool)

(declare-fun tp!1515998 () Bool)

(assert (=> b!5510241 (= e!3407788 tp!1515998)))

(assert (= (and d!1746064 condSetEmpty!36584) setIsEmpty!36584))

(assert (= (and d!1746064 (not condSetEmpty!36584)) setNonEmpty!36584))

(assert (= setNonEmpty!36584 b!5510241))

(declare-fun m!6515558 () Bool)

(assert (=> setNonEmpty!36584 m!6515558))

(assert (=> d!1745664 d!1746064))

(assert (=> b!5508783 d!1745794))

(declare-fun b!5510242 () Bool)

(declare-fun res!2348040 () Bool)

(declare-fun e!3407793 () Bool)

(assert (=> b!5510242 (=> (not res!2348040) (not e!3407793))))

(assert (=> b!5510242 (= res!2348040 (isEmpty!34438 (tail!10897 (tail!10897 s!2326))))))

(declare-fun b!5510243 () Bool)

(declare-fun res!2348047 () Bool)

(declare-fun e!3407792 () Bool)

(assert (=> b!5510243 (=> res!2348047 e!3407792)))

(assert (=> b!5510243 (= res!2348047 (not (isEmpty!34438 (tail!10897 (tail!10897 s!2326)))))))

(declare-fun bm!407409 () Bool)

(declare-fun call!407414 () Bool)

(assert (=> bm!407409 (= call!407414 (isEmpty!34438 (tail!10897 s!2326)))))

(declare-fun b!5510244 () Bool)

(declare-fun e!3407790 () Bool)

(declare-fun e!3407794 () Bool)

(assert (=> b!5510244 (= e!3407790 e!3407794)))

(declare-fun c!962958 () Bool)

(assert (=> b!5510244 (= c!962958 ((_ is EmptyLang!15493) (derivativeStep!4364 r!7292 (head!11802 s!2326))))))

(declare-fun b!5510245 () Bool)

(declare-fun lt!2244854 () Bool)

(assert (=> b!5510245 (= e!3407790 (= lt!2244854 call!407414))))

(declare-fun d!1746066 () Bool)

(assert (=> d!1746066 e!3407790))

(declare-fun c!962956 () Bool)

(assert (=> d!1746066 (= c!962956 ((_ is EmptyExpr!15493) (derivativeStep!4364 r!7292 (head!11802 s!2326))))))

(declare-fun e!3407791 () Bool)

(assert (=> d!1746066 (= lt!2244854 e!3407791)))

(declare-fun c!962957 () Bool)

(assert (=> d!1746066 (= c!962957 (isEmpty!34438 (tail!10897 s!2326)))))

(assert (=> d!1746066 (validRegex!7229 (derivativeStep!4364 r!7292 (head!11802 s!2326)))))

(assert (=> d!1746066 (= (matchR!7678 (derivativeStep!4364 r!7292 (head!11802 s!2326)) (tail!10897 s!2326)) lt!2244854)))

(declare-fun b!5510246 () Bool)

(assert (=> b!5510246 (= e!3407793 (= (head!11802 (tail!10897 s!2326)) (c!962517 (derivativeStep!4364 r!7292 (head!11802 s!2326)))))))

(declare-fun b!5510247 () Bool)

(declare-fun e!3407795 () Bool)

(assert (=> b!5510247 (= e!3407795 e!3407792)))

(declare-fun res!2348042 () Bool)

(assert (=> b!5510247 (=> res!2348042 e!3407792)))

(assert (=> b!5510247 (= res!2348042 call!407414)))

(declare-fun b!5510248 () Bool)

(assert (=> b!5510248 (= e!3407791 (matchR!7678 (derivativeStep!4364 (derivativeStep!4364 r!7292 (head!11802 s!2326)) (head!11802 (tail!10897 s!2326))) (tail!10897 (tail!10897 s!2326))))))

(declare-fun b!5510249 () Bool)

(declare-fun res!2348041 () Bool)

(declare-fun e!3407789 () Bool)

(assert (=> b!5510249 (=> res!2348041 e!3407789)))

(assert (=> b!5510249 (= res!2348041 e!3407793)))

(declare-fun res!2348043 () Bool)

(assert (=> b!5510249 (=> (not res!2348043) (not e!3407793))))

(assert (=> b!5510249 (= res!2348043 lt!2244854)))

(declare-fun b!5510250 () Bool)

(assert (=> b!5510250 (= e!3407792 (not (= (head!11802 (tail!10897 s!2326)) (c!962517 (derivativeStep!4364 r!7292 (head!11802 s!2326))))))))

(declare-fun b!5510251 () Bool)

(assert (=> b!5510251 (= e!3407791 (nullable!5527 (derivativeStep!4364 r!7292 (head!11802 s!2326))))))

(declare-fun b!5510252 () Bool)

(assert (=> b!5510252 (= e!3407794 (not lt!2244854))))

(declare-fun b!5510253 () Bool)

(assert (=> b!5510253 (= e!3407789 e!3407795)))

(declare-fun res!2348046 () Bool)

(assert (=> b!5510253 (=> (not res!2348046) (not e!3407795))))

(assert (=> b!5510253 (= res!2348046 (not lt!2244854))))

(declare-fun b!5510254 () Bool)

(declare-fun res!2348045 () Bool)

(assert (=> b!5510254 (=> (not res!2348045) (not e!3407793))))

(assert (=> b!5510254 (= res!2348045 (not call!407414))))

(declare-fun b!5510255 () Bool)

(declare-fun res!2348044 () Bool)

(assert (=> b!5510255 (=> res!2348044 e!3407789)))

(assert (=> b!5510255 (= res!2348044 (not ((_ is ElementMatch!15493) (derivativeStep!4364 r!7292 (head!11802 s!2326)))))))

(assert (=> b!5510255 (= e!3407794 e!3407789)))

(assert (= (and d!1746066 c!962957) b!5510251))

(assert (= (and d!1746066 (not c!962957)) b!5510248))

(assert (= (and d!1746066 c!962956) b!5510245))

(assert (= (and d!1746066 (not c!962956)) b!5510244))

(assert (= (and b!5510244 c!962958) b!5510252))

(assert (= (and b!5510244 (not c!962958)) b!5510255))

(assert (= (and b!5510255 (not res!2348044)) b!5510249))

(assert (= (and b!5510249 res!2348043) b!5510254))

(assert (= (and b!5510254 res!2348045) b!5510242))

(assert (= (and b!5510242 res!2348040) b!5510246))

(assert (= (and b!5510249 (not res!2348041)) b!5510253))

(assert (= (and b!5510253 res!2348046) b!5510247))

(assert (= (and b!5510247 (not res!2348042)) b!5510243))

(assert (= (and b!5510243 (not res!2348047)) b!5510250))

(assert (= (or b!5510245 b!5510247 b!5510254) bm!407409))

(assert (=> bm!407409 m!6514702))

(assert (=> bm!407409 m!6514704))

(assert (=> b!5510243 m!6514702))

(declare-fun m!6515560 () Bool)

(assert (=> b!5510243 m!6515560))

(assert (=> b!5510243 m!6515560))

(declare-fun m!6515562 () Bool)

(assert (=> b!5510243 m!6515562))

(assert (=> b!5510242 m!6514702))

(assert (=> b!5510242 m!6515560))

(assert (=> b!5510242 m!6515560))

(assert (=> b!5510242 m!6515562))

(assert (=> b!5510251 m!6514710))

(declare-fun m!6515564 () Bool)

(assert (=> b!5510251 m!6515564))

(assert (=> d!1746066 m!6514702))

(assert (=> d!1746066 m!6514704))

(assert (=> d!1746066 m!6514710))

(declare-fun m!6515566 () Bool)

(assert (=> d!1746066 m!6515566))

(assert (=> b!5510248 m!6514702))

(declare-fun m!6515568 () Bool)

(assert (=> b!5510248 m!6515568))

(assert (=> b!5510248 m!6514710))

(assert (=> b!5510248 m!6515568))

(declare-fun m!6515570 () Bool)

(assert (=> b!5510248 m!6515570))

(assert (=> b!5510248 m!6514702))

(assert (=> b!5510248 m!6515560))

(assert (=> b!5510248 m!6515570))

(assert (=> b!5510248 m!6515560))

(declare-fun m!6515572 () Bool)

(assert (=> b!5510248 m!6515572))

(assert (=> b!5510246 m!6514702))

(assert (=> b!5510246 m!6515568))

(assert (=> b!5510250 m!6514702))

(assert (=> b!5510250 m!6515568))

(assert (=> b!5509253 d!1746066))

(declare-fun b!5510276 () Bool)

(declare-fun e!3407807 () Regex!15493)

(assert (=> b!5510276 (= e!3407807 (ite (= (head!11802 s!2326) (c!962517 r!7292)) EmptyExpr!15493 EmptyLang!15493))))

(declare-fun b!5510278 () Bool)

(declare-fun c!962972 () Bool)

(assert (=> b!5510278 (= c!962972 ((_ is Union!15493) r!7292))))

(declare-fun e!3407806 () Regex!15493)

(assert (=> b!5510278 (= e!3407807 e!3407806)))

(declare-fun e!3407810 () Regex!15493)

(declare-fun call!407424 () Regex!15493)

(declare-fun call!407423 () Regex!15493)

(declare-fun b!5510279 () Bool)

(assert (=> b!5510279 (= e!3407810 (Union!15493 (Concat!24338 call!407423 (regTwo!31498 r!7292)) call!407424))))

(declare-fun b!5510280 () Bool)

(assert (=> b!5510280 (= e!3407810 (Union!15493 (Concat!24338 call!407424 (regTwo!31498 r!7292)) EmptyLang!15493))))

(declare-fun b!5510281 () Bool)

(declare-fun call!407426 () Regex!15493)

(assert (=> b!5510281 (= e!3407806 (Union!15493 call!407426 call!407423))))

(declare-fun bm!407418 () Bool)

(declare-fun call!407425 () Regex!15493)

(assert (=> bm!407418 (= call!407424 call!407425)))

(declare-fun c!962973 () Bool)

(declare-fun bm!407419 () Bool)

(declare-fun c!962969 () Bool)

(assert (=> bm!407419 (= call!407426 (derivativeStep!4364 (ite c!962972 (regOne!31499 r!7292) (ite c!962969 (reg!15822 r!7292) (ite c!962973 (regTwo!31498 r!7292) (regOne!31498 r!7292)))) (head!11802 s!2326)))))

(declare-fun d!1746068 () Bool)

(declare-fun lt!2244857 () Regex!15493)

(assert (=> d!1746068 (validRegex!7229 lt!2244857)))

(declare-fun e!3407808 () Regex!15493)

(assert (=> d!1746068 (= lt!2244857 e!3407808)))

(declare-fun c!962970 () Bool)

(assert (=> d!1746068 (= c!962970 (or ((_ is EmptyExpr!15493) r!7292) ((_ is EmptyLang!15493) r!7292)))))

(assert (=> d!1746068 (validRegex!7229 r!7292)))

(assert (=> d!1746068 (= (derivativeStep!4364 r!7292 (head!11802 s!2326)) lt!2244857)))

(declare-fun b!5510277 () Bool)

(declare-fun e!3407809 () Regex!15493)

(assert (=> b!5510277 (= e!3407806 e!3407809)))

(assert (=> b!5510277 (= c!962969 ((_ is Star!15493) r!7292))))

(declare-fun b!5510282 () Bool)

(assert (=> b!5510282 (= e!3407808 EmptyLang!15493)))

(declare-fun bm!407420 () Bool)

(assert (=> bm!407420 (= call!407423 (derivativeStep!4364 (ite c!962972 (regTwo!31499 r!7292) (regOne!31498 r!7292)) (head!11802 s!2326)))))

(declare-fun bm!407421 () Bool)

(assert (=> bm!407421 (= call!407425 call!407426)))

(declare-fun b!5510283 () Bool)

(assert (=> b!5510283 (= e!3407809 (Concat!24338 call!407425 r!7292))))

(declare-fun b!5510284 () Bool)

(assert (=> b!5510284 (= e!3407808 e!3407807)))

(declare-fun c!962971 () Bool)

(assert (=> b!5510284 (= c!962971 ((_ is ElementMatch!15493) r!7292))))

(declare-fun b!5510285 () Bool)

(assert (=> b!5510285 (= c!962973 (nullable!5527 (regOne!31498 r!7292)))))

(assert (=> b!5510285 (= e!3407809 e!3407810)))

(assert (= (and d!1746068 c!962970) b!5510282))

(assert (= (and d!1746068 (not c!962970)) b!5510284))

(assert (= (and b!5510284 c!962971) b!5510276))

(assert (= (and b!5510284 (not c!962971)) b!5510278))

(assert (= (and b!5510278 c!962972) b!5510281))

(assert (= (and b!5510278 (not c!962972)) b!5510277))

(assert (= (and b!5510277 c!962969) b!5510283))

(assert (= (and b!5510277 (not c!962969)) b!5510285))

(assert (= (and b!5510285 c!962973) b!5510279))

(assert (= (and b!5510285 (not c!962973)) b!5510280))

(assert (= (or b!5510279 b!5510280) bm!407418))

(assert (= (or b!5510283 bm!407418) bm!407421))

(assert (= (or b!5510281 b!5510279) bm!407420))

(assert (= (or b!5510281 bm!407421) bm!407419))

(assert (=> bm!407419 m!6514708))

(declare-fun m!6515574 () Bool)

(assert (=> bm!407419 m!6515574))

(declare-fun m!6515576 () Bool)

(assert (=> d!1746068 m!6515576))

(assert (=> d!1746068 m!6514266))

(assert (=> bm!407420 m!6514708))

(declare-fun m!6515578 () Bool)

(assert (=> bm!407420 m!6515578))

(assert (=> b!5510285 m!6514304))

(assert (=> b!5509253 d!1746068))

(assert (=> b!5509253 d!1745980))

(assert (=> b!5509253 d!1745896))

(assert (=> d!1745680 d!1745678))

(assert (=> d!1745680 d!1745676))

(declare-fun d!1746070 () Bool)

(assert (=> d!1746070 (= (matchR!7678 r!7292 s!2326) (matchRSpec!2596 r!7292 s!2326))))

(assert (=> d!1746070 true))

(declare-fun _$88!3766 () Unit!155446)

(assert (=> d!1746070 (= (choose!41869 r!7292 s!2326) _$88!3766)))

(declare-fun bs!1270415 () Bool)

(assert (= bs!1270415 d!1746070))

(assert (=> bs!1270415 m!6514320))

(assert (=> bs!1270415 m!6514318))

(assert (=> d!1745680 d!1746070))

(assert (=> d!1745680 d!1745558))

(declare-fun d!1746072 () Bool)

(declare-fun c!962975 () Bool)

(declare-fun e!3407811 () Bool)

(assert (=> d!1746072 (= c!962975 e!3407811)))

(declare-fun res!2348048 () Bool)

(assert (=> d!1746072 (=> (not res!2348048) (not e!3407811))))

(assert (=> d!1746072 (= res!2348048 ((_ is Cons!62654) (exprs!5377 (Context!9755 (t!376021 (exprs!5377 lt!2244721))))))))

(declare-fun e!3407812 () (InoxSet Context!9754))

(assert (=> d!1746072 (= (derivationStepZipperUp!761 (Context!9755 (t!376021 (exprs!5377 lt!2244721))) (h!69103 s!2326)) e!3407812)))

(declare-fun bm!407422 () Bool)

(declare-fun call!407427 () (InoxSet Context!9754))

(assert (=> bm!407422 (= call!407427 (derivationStepZipperDown!835 (h!69102 (exprs!5377 (Context!9755 (t!376021 (exprs!5377 lt!2244721))))) (Context!9755 (t!376021 (exprs!5377 (Context!9755 (t!376021 (exprs!5377 lt!2244721)))))) (h!69103 s!2326)))))

(declare-fun b!5510286 () Bool)

(assert (=> b!5510286 (= e!3407811 (nullable!5527 (h!69102 (exprs!5377 (Context!9755 (t!376021 (exprs!5377 lt!2244721)))))))))

(declare-fun b!5510287 () Bool)

(declare-fun e!3407813 () (InoxSet Context!9754))

(assert (=> b!5510287 (= e!3407813 ((as const (Array Context!9754 Bool)) false))))

(declare-fun b!5510288 () Bool)

(assert (=> b!5510288 (= e!3407813 call!407427)))

(declare-fun b!5510289 () Bool)

(assert (=> b!5510289 (= e!3407812 ((_ map or) call!407427 (derivationStepZipperUp!761 (Context!9755 (t!376021 (exprs!5377 (Context!9755 (t!376021 (exprs!5377 lt!2244721)))))) (h!69103 s!2326))))))

(declare-fun b!5510290 () Bool)

(assert (=> b!5510290 (= e!3407812 e!3407813)))

(declare-fun c!962974 () Bool)

(assert (=> b!5510290 (= c!962974 ((_ is Cons!62654) (exprs!5377 (Context!9755 (t!376021 (exprs!5377 lt!2244721))))))))

(assert (= (and d!1746072 res!2348048) b!5510286))

(assert (= (and d!1746072 c!962975) b!5510289))

(assert (= (and d!1746072 (not c!962975)) b!5510290))

(assert (= (and b!5510290 c!962974) b!5510288))

(assert (= (and b!5510290 (not c!962974)) b!5510287))

(assert (= (or b!5510289 b!5510288) bm!407422))

(declare-fun m!6515580 () Bool)

(assert (=> bm!407422 m!6515580))

(declare-fun m!6515582 () Bool)

(assert (=> b!5510286 m!6515582))

(declare-fun m!6515584 () Bool)

(assert (=> b!5510289 m!6515584))

(assert (=> b!5509109 d!1746072))

(assert (=> b!5509251 d!1745980))

(declare-fun bs!1270416 () Bool)

(declare-fun d!1746074 () Bool)

(assert (= bs!1270416 (and d!1746074 d!1745668)))

(declare-fun lambda!295159 () Int)

(assert (=> bs!1270416 (= lambda!295159 lambda!295114)))

(declare-fun bs!1270417 () Bool)

(assert (= bs!1270417 (and d!1746074 d!1745888)))

(assert (=> bs!1270417 (= lambda!295159 lambda!295144)))

(declare-fun bs!1270418 () Bool)

(assert (= bs!1270418 (and d!1746074 d!1745644)))

(assert (=> bs!1270418 (= lambda!295159 lambda!295108)))

(declare-fun bs!1270419 () Bool)

(assert (= bs!1270419 (and d!1746074 d!1745642)))

(assert (=> bs!1270419 (= lambda!295159 lambda!295107)))

(declare-fun bs!1270420 () Bool)

(assert (= bs!1270420 (and d!1746074 d!1746034)))

(assert (=> bs!1270420 (= lambda!295159 lambda!295155)))

(declare-fun bs!1270421 () Bool)

(assert (= bs!1270421 (and d!1746074 d!1745666)))

(assert (=> bs!1270421 (= lambda!295159 lambda!295111)))

(declare-fun bs!1270422 () Bool)

(assert (= bs!1270422 (and d!1746074 d!1745836)))

(assert (=> bs!1270422 (= lambda!295159 lambda!295142)))

(declare-fun bs!1270423 () Bool)

(assert (= bs!1270423 (and d!1746074 d!1745626)))

(assert (=> bs!1270423 (= lambda!295159 lambda!295104)))

(declare-fun bs!1270424 () Bool)

(assert (= bs!1270424 (and d!1746074 d!1745928)))

(assert (=> bs!1270424 (= lambda!295159 lambda!295145)))

(assert (=> d!1746074 (= (inv!81979 (h!69104 (t!376023 zl!343))) (forall!14673 (exprs!5377 (h!69104 (t!376023 zl!343))) lambda!295159))))

(declare-fun bs!1270425 () Bool)

(assert (= bs!1270425 d!1746074))

(declare-fun m!6515586 () Bool)

(assert (=> bs!1270425 m!6515586))

(assert (=> b!5509313 d!1746074))

(declare-fun b!5510291 () Bool)

(declare-fun e!3407814 () Bool)

(assert (=> b!5510291 (= e!3407814 tp_is_empty!40239)))

(assert (=> b!5509292 (= tp!1515796 e!3407814)))

(declare-fun b!5510292 () Bool)

(declare-fun tp!1516002 () Bool)

(declare-fun tp!1516003 () Bool)

(assert (=> b!5510292 (= e!3407814 (and tp!1516002 tp!1516003))))

(declare-fun b!5510294 () Bool)

(declare-fun tp!1516000 () Bool)

(declare-fun tp!1516004 () Bool)

(assert (=> b!5510294 (= e!3407814 (and tp!1516000 tp!1516004))))

(declare-fun b!5510293 () Bool)

(declare-fun tp!1516001 () Bool)

(assert (=> b!5510293 (= e!3407814 tp!1516001)))

(assert (= (and b!5509292 ((_ is ElementMatch!15493) (regOne!31498 (regOne!31499 r!7292)))) b!5510291))

(assert (= (and b!5509292 ((_ is Concat!24338) (regOne!31498 (regOne!31499 r!7292)))) b!5510292))

(assert (= (and b!5509292 ((_ is Star!15493) (regOne!31498 (regOne!31499 r!7292)))) b!5510293))

(assert (= (and b!5509292 ((_ is Union!15493) (regOne!31498 (regOne!31499 r!7292)))) b!5510294))

(declare-fun b!5510295 () Bool)

(declare-fun e!3407815 () Bool)

(assert (=> b!5510295 (= e!3407815 tp_is_empty!40239)))

(assert (=> b!5509292 (= tp!1515797 e!3407815)))

(declare-fun b!5510296 () Bool)

(declare-fun tp!1516007 () Bool)

(declare-fun tp!1516008 () Bool)

(assert (=> b!5510296 (= e!3407815 (and tp!1516007 tp!1516008))))

(declare-fun b!5510298 () Bool)

(declare-fun tp!1516005 () Bool)

(declare-fun tp!1516009 () Bool)

(assert (=> b!5510298 (= e!3407815 (and tp!1516005 tp!1516009))))

(declare-fun b!5510297 () Bool)

(declare-fun tp!1516006 () Bool)

(assert (=> b!5510297 (= e!3407815 tp!1516006)))

(assert (= (and b!5509292 ((_ is ElementMatch!15493) (regTwo!31498 (regOne!31499 r!7292)))) b!5510295))

(assert (= (and b!5509292 ((_ is Concat!24338) (regTwo!31498 (regOne!31499 r!7292)))) b!5510296))

(assert (= (and b!5509292 ((_ is Star!15493) (regTwo!31498 (regOne!31499 r!7292)))) b!5510297))

(assert (= (and b!5509292 ((_ is Union!15493) (regTwo!31498 (regOne!31499 r!7292)))) b!5510298))

(declare-fun b!5510299 () Bool)

(declare-fun e!3407816 () Bool)

(assert (=> b!5510299 (= e!3407816 tp_is_empty!40239)))

(assert (=> b!5509270 (= tp!1515772 e!3407816)))

(declare-fun b!5510300 () Bool)

(declare-fun tp!1516012 () Bool)

(declare-fun tp!1516013 () Bool)

(assert (=> b!5510300 (= e!3407816 (and tp!1516012 tp!1516013))))

(declare-fun b!5510302 () Bool)

(declare-fun tp!1516010 () Bool)

(declare-fun tp!1516014 () Bool)

(assert (=> b!5510302 (= e!3407816 (and tp!1516010 tp!1516014))))

(declare-fun b!5510301 () Bool)

(declare-fun tp!1516011 () Bool)

(assert (=> b!5510301 (= e!3407816 tp!1516011)))

(assert (= (and b!5509270 ((_ is ElementMatch!15493) (h!69102 (exprs!5377 (h!69104 zl!343))))) b!5510299))

(assert (= (and b!5509270 ((_ is Concat!24338) (h!69102 (exprs!5377 (h!69104 zl!343))))) b!5510300))

(assert (= (and b!5509270 ((_ is Star!15493) (h!69102 (exprs!5377 (h!69104 zl!343))))) b!5510301))

(assert (= (and b!5509270 ((_ is Union!15493) (h!69102 (exprs!5377 (h!69104 zl!343))))) b!5510302))

(declare-fun b!5510303 () Bool)

(declare-fun e!3407817 () Bool)

(declare-fun tp!1516015 () Bool)

(declare-fun tp!1516016 () Bool)

(assert (=> b!5510303 (= e!3407817 (and tp!1516015 tp!1516016))))

(assert (=> b!5509270 (= tp!1515773 e!3407817)))

(assert (= (and b!5509270 ((_ is Cons!62654) (t!376021 (exprs!5377 (h!69104 zl!343))))) b!5510303))

(declare-fun b!5510304 () Bool)

(declare-fun e!3407818 () Bool)

(assert (=> b!5510304 (= e!3407818 tp_is_empty!40239)))

(assert (=> b!5509293 (= tp!1515795 e!3407818)))

(declare-fun b!5510305 () Bool)

(declare-fun tp!1516019 () Bool)

(declare-fun tp!1516020 () Bool)

(assert (=> b!5510305 (= e!3407818 (and tp!1516019 tp!1516020))))

(declare-fun b!5510307 () Bool)

(declare-fun tp!1516017 () Bool)

(declare-fun tp!1516021 () Bool)

(assert (=> b!5510307 (= e!3407818 (and tp!1516017 tp!1516021))))

(declare-fun b!5510306 () Bool)

(declare-fun tp!1516018 () Bool)

(assert (=> b!5510306 (= e!3407818 tp!1516018)))

(assert (= (and b!5509293 ((_ is ElementMatch!15493) (reg!15822 (regOne!31499 r!7292)))) b!5510304))

(assert (= (and b!5509293 ((_ is Concat!24338) (reg!15822 (regOne!31499 r!7292)))) b!5510305))

(assert (= (and b!5509293 ((_ is Star!15493) (reg!15822 (regOne!31499 r!7292)))) b!5510306))

(assert (= (and b!5509293 ((_ is Union!15493) (reg!15822 (regOne!31499 r!7292)))) b!5510307))

(declare-fun b!5510308 () Bool)

(declare-fun e!3407819 () Bool)

(assert (=> b!5510308 (= e!3407819 tp_is_empty!40239)))

(assert (=> b!5509302 (= tp!1515804 e!3407819)))

(declare-fun b!5510309 () Bool)

(declare-fun tp!1516024 () Bool)

(declare-fun tp!1516025 () Bool)

(assert (=> b!5510309 (= e!3407819 (and tp!1516024 tp!1516025))))

(declare-fun b!5510311 () Bool)

(declare-fun tp!1516022 () Bool)

(declare-fun tp!1516026 () Bool)

(assert (=> b!5510311 (= e!3407819 (and tp!1516022 tp!1516026))))

(declare-fun b!5510310 () Bool)

(declare-fun tp!1516023 () Bool)

(assert (=> b!5510310 (= e!3407819 tp!1516023)))

(assert (= (and b!5509302 ((_ is ElementMatch!15493) (regOne!31499 (regOne!31498 r!7292)))) b!5510308))

(assert (= (and b!5509302 ((_ is Concat!24338) (regOne!31499 (regOne!31498 r!7292)))) b!5510309))

(assert (= (and b!5509302 ((_ is Star!15493) (regOne!31499 (regOne!31498 r!7292)))) b!5510310))

(assert (= (and b!5509302 ((_ is Union!15493) (regOne!31499 (regOne!31498 r!7292)))) b!5510311))

(declare-fun b!5510312 () Bool)

(declare-fun e!3407820 () Bool)

(assert (=> b!5510312 (= e!3407820 tp_is_empty!40239)))

(assert (=> b!5509302 (= tp!1515808 e!3407820)))

(declare-fun b!5510313 () Bool)

(declare-fun tp!1516029 () Bool)

(declare-fun tp!1516030 () Bool)

(assert (=> b!5510313 (= e!3407820 (and tp!1516029 tp!1516030))))

(declare-fun b!5510315 () Bool)

(declare-fun tp!1516027 () Bool)

(declare-fun tp!1516031 () Bool)

(assert (=> b!5510315 (= e!3407820 (and tp!1516027 tp!1516031))))

(declare-fun b!5510314 () Bool)

(declare-fun tp!1516028 () Bool)

(assert (=> b!5510314 (= e!3407820 tp!1516028)))

(assert (= (and b!5509302 ((_ is ElementMatch!15493) (regTwo!31499 (regOne!31498 r!7292)))) b!5510312))

(assert (= (and b!5509302 ((_ is Concat!24338) (regTwo!31499 (regOne!31498 r!7292)))) b!5510313))

(assert (= (and b!5509302 ((_ is Star!15493) (regTwo!31499 (regOne!31498 r!7292)))) b!5510314))

(assert (= (and b!5509302 ((_ is Union!15493) (regTwo!31499 (regOne!31498 r!7292)))) b!5510315))

(declare-fun b!5510316 () Bool)

(declare-fun e!3407821 () Bool)

(assert (=> b!5510316 (= e!3407821 tp_is_empty!40239)))

(assert (=> b!5509300 (= tp!1515806 e!3407821)))

(declare-fun b!5510317 () Bool)

(declare-fun tp!1516034 () Bool)

(declare-fun tp!1516035 () Bool)

(assert (=> b!5510317 (= e!3407821 (and tp!1516034 tp!1516035))))

(declare-fun b!5510319 () Bool)

(declare-fun tp!1516032 () Bool)

(declare-fun tp!1516036 () Bool)

(assert (=> b!5510319 (= e!3407821 (and tp!1516032 tp!1516036))))

(declare-fun b!5510318 () Bool)

(declare-fun tp!1516033 () Bool)

(assert (=> b!5510318 (= e!3407821 tp!1516033)))

(assert (= (and b!5509300 ((_ is ElementMatch!15493) (regOne!31498 (regOne!31498 r!7292)))) b!5510316))

(assert (= (and b!5509300 ((_ is Concat!24338) (regOne!31498 (regOne!31498 r!7292)))) b!5510317))

(assert (= (and b!5509300 ((_ is Star!15493) (regOne!31498 (regOne!31498 r!7292)))) b!5510318))

(assert (= (and b!5509300 ((_ is Union!15493) (regOne!31498 (regOne!31498 r!7292)))) b!5510319))

(declare-fun b!5510320 () Bool)

(declare-fun e!3407822 () Bool)

(assert (=> b!5510320 (= e!3407822 tp_is_empty!40239)))

(assert (=> b!5509300 (= tp!1515807 e!3407822)))

(declare-fun b!5510321 () Bool)

(declare-fun tp!1516039 () Bool)

(declare-fun tp!1516040 () Bool)

(assert (=> b!5510321 (= e!3407822 (and tp!1516039 tp!1516040))))

(declare-fun b!5510323 () Bool)

(declare-fun tp!1516037 () Bool)

(declare-fun tp!1516041 () Bool)

(assert (=> b!5510323 (= e!3407822 (and tp!1516037 tp!1516041))))

(declare-fun b!5510322 () Bool)

(declare-fun tp!1516038 () Bool)

(assert (=> b!5510322 (= e!3407822 tp!1516038)))

(assert (= (and b!5509300 ((_ is ElementMatch!15493) (regTwo!31498 (regOne!31498 r!7292)))) b!5510320))

(assert (= (and b!5509300 ((_ is Concat!24338) (regTwo!31498 (regOne!31498 r!7292)))) b!5510321))

(assert (= (and b!5509300 ((_ is Star!15493) (regTwo!31498 (regOne!31498 r!7292)))) b!5510322))

(assert (= (and b!5509300 ((_ is Union!15493) (regTwo!31498 (regOne!31498 r!7292)))) b!5510323))

(declare-fun b!5510324 () Bool)

(declare-fun e!3407823 () Bool)

(assert (=> b!5510324 (= e!3407823 tp_is_empty!40239)))

(assert (=> b!5509301 (= tp!1515805 e!3407823)))

(declare-fun b!5510325 () Bool)

(declare-fun tp!1516044 () Bool)

(declare-fun tp!1516045 () Bool)

(assert (=> b!5510325 (= e!3407823 (and tp!1516044 tp!1516045))))

(declare-fun b!5510327 () Bool)

(declare-fun tp!1516042 () Bool)

(declare-fun tp!1516046 () Bool)

(assert (=> b!5510327 (= e!3407823 (and tp!1516042 tp!1516046))))

(declare-fun b!5510326 () Bool)

(declare-fun tp!1516043 () Bool)

(assert (=> b!5510326 (= e!3407823 tp!1516043)))

(assert (= (and b!5509301 ((_ is ElementMatch!15493) (reg!15822 (regOne!31498 r!7292)))) b!5510324))

(assert (= (and b!5509301 ((_ is Concat!24338) (reg!15822 (regOne!31498 r!7292)))) b!5510325))

(assert (= (and b!5509301 ((_ is Star!15493) (reg!15822 (regOne!31498 r!7292)))) b!5510326))

(assert (= (and b!5509301 ((_ is Union!15493) (reg!15822 (regOne!31498 r!7292)))) b!5510327))

(declare-fun b!5510328 () Bool)

(declare-fun e!3407824 () Bool)

(assert (=> b!5510328 (= e!3407824 tp_is_empty!40239)))

(assert (=> b!5509285 (= tp!1515789 e!3407824)))

(declare-fun b!5510329 () Bool)

(declare-fun tp!1516049 () Bool)

(declare-fun tp!1516050 () Bool)

(assert (=> b!5510329 (= e!3407824 (and tp!1516049 tp!1516050))))

(declare-fun b!5510331 () Bool)

(declare-fun tp!1516047 () Bool)

(declare-fun tp!1516051 () Bool)

(assert (=> b!5510331 (= e!3407824 (and tp!1516047 tp!1516051))))

(declare-fun b!5510330 () Bool)

(declare-fun tp!1516048 () Bool)

(assert (=> b!5510330 (= e!3407824 tp!1516048)))

(assert (= (and b!5509285 ((_ is ElementMatch!15493) (h!69102 (exprs!5377 setElem!36567)))) b!5510328))

(assert (= (and b!5509285 ((_ is Concat!24338) (h!69102 (exprs!5377 setElem!36567)))) b!5510329))

(assert (= (and b!5509285 ((_ is Star!15493) (h!69102 (exprs!5377 setElem!36567)))) b!5510330))

(assert (= (and b!5509285 ((_ is Union!15493) (h!69102 (exprs!5377 setElem!36567)))) b!5510331))

(declare-fun b!5510332 () Bool)

(declare-fun e!3407825 () Bool)

(declare-fun tp!1516052 () Bool)

(declare-fun tp!1516053 () Bool)

(assert (=> b!5510332 (= e!3407825 (and tp!1516052 tp!1516053))))

(assert (=> b!5509285 (= tp!1515790 e!3407825)))

(assert (= (and b!5509285 ((_ is Cons!62654) (t!376021 (exprs!5377 setElem!36567)))) b!5510332))

(declare-fun condSetEmpty!36585 () Bool)

(assert (=> setNonEmpty!36573 (= condSetEmpty!36585 (= setRest!36573 ((as const (Array Context!9754 Bool)) false)))))

(declare-fun setRes!36585 () Bool)

(assert (=> setNonEmpty!36573 (= tp!1515766 setRes!36585)))

(declare-fun setIsEmpty!36585 () Bool)

(assert (=> setIsEmpty!36585 setRes!36585))

(declare-fun tp!1516054 () Bool)

(declare-fun setNonEmpty!36585 () Bool)

(declare-fun setElem!36585 () Context!9754)

(declare-fun e!3407826 () Bool)

(assert (=> setNonEmpty!36585 (= setRes!36585 (and tp!1516054 (inv!81979 setElem!36585) e!3407826))))

(declare-fun setRest!36585 () (InoxSet Context!9754))

(assert (=> setNonEmpty!36585 (= setRest!36573 ((_ map or) (store ((as const (Array Context!9754 Bool)) false) setElem!36585 true) setRest!36585))))

(declare-fun b!5510333 () Bool)

(declare-fun tp!1516055 () Bool)

(assert (=> b!5510333 (= e!3407826 tp!1516055)))

(assert (= (and setNonEmpty!36573 condSetEmpty!36585) setIsEmpty!36585))

(assert (= (and setNonEmpty!36573 (not condSetEmpty!36585)) setNonEmpty!36585))

(assert (= setNonEmpty!36585 b!5510333))

(declare-fun m!6515588 () Bool)

(assert (=> setNonEmpty!36585 m!6515588))

(declare-fun b!5510334 () Bool)

(declare-fun e!3407827 () Bool)

(declare-fun tp!1516056 () Bool)

(declare-fun tp!1516057 () Bool)

(assert (=> b!5510334 (= e!3407827 (and tp!1516056 tp!1516057))))

(assert (=> b!5509265 (= tp!1515767 e!3407827)))

(assert (= (and b!5509265 ((_ is Cons!62654) (exprs!5377 setElem!36573))) b!5510334))

(declare-fun b!5510335 () Bool)

(declare-fun e!3407828 () Bool)

(assert (=> b!5510335 (= e!3407828 tp_is_empty!40239)))

(assert (=> b!5509294 (= tp!1515794 e!3407828)))

(declare-fun b!5510336 () Bool)

(declare-fun tp!1516060 () Bool)

(declare-fun tp!1516061 () Bool)

(assert (=> b!5510336 (= e!3407828 (and tp!1516060 tp!1516061))))

(declare-fun b!5510338 () Bool)

(declare-fun tp!1516058 () Bool)

(declare-fun tp!1516062 () Bool)

(assert (=> b!5510338 (= e!3407828 (and tp!1516058 tp!1516062))))

(declare-fun b!5510337 () Bool)

(declare-fun tp!1516059 () Bool)

(assert (=> b!5510337 (= e!3407828 tp!1516059)))

(assert (= (and b!5509294 ((_ is ElementMatch!15493) (regOne!31499 (regOne!31499 r!7292)))) b!5510335))

(assert (= (and b!5509294 ((_ is Concat!24338) (regOne!31499 (regOne!31499 r!7292)))) b!5510336))

(assert (= (and b!5509294 ((_ is Star!15493) (regOne!31499 (regOne!31499 r!7292)))) b!5510337))

(assert (= (and b!5509294 ((_ is Union!15493) (regOne!31499 (regOne!31499 r!7292)))) b!5510338))

(declare-fun b!5510339 () Bool)

(declare-fun e!3407829 () Bool)

(assert (=> b!5510339 (= e!3407829 tp_is_empty!40239)))

(assert (=> b!5509294 (= tp!1515798 e!3407829)))

(declare-fun b!5510340 () Bool)

(declare-fun tp!1516065 () Bool)

(declare-fun tp!1516066 () Bool)

(assert (=> b!5510340 (= e!3407829 (and tp!1516065 tp!1516066))))

(declare-fun b!5510342 () Bool)

(declare-fun tp!1516063 () Bool)

(declare-fun tp!1516067 () Bool)

(assert (=> b!5510342 (= e!3407829 (and tp!1516063 tp!1516067))))

(declare-fun b!5510341 () Bool)

(declare-fun tp!1516064 () Bool)

(assert (=> b!5510341 (= e!3407829 tp!1516064)))

(assert (= (and b!5509294 ((_ is ElementMatch!15493) (regTwo!31499 (regOne!31499 r!7292)))) b!5510339))

(assert (= (and b!5509294 ((_ is Concat!24338) (regTwo!31499 (regOne!31499 r!7292)))) b!5510340))

(assert (= (and b!5509294 ((_ is Star!15493) (regTwo!31499 (regOne!31499 r!7292)))) b!5510341))

(assert (= (and b!5509294 ((_ is Union!15493) (regTwo!31499 (regOne!31499 r!7292)))) b!5510342))

(declare-fun b!5510343 () Bool)

(declare-fun e!3407830 () Bool)

(assert (=> b!5510343 (= e!3407830 tp_is_empty!40239)))

(assert (=> b!5509297 (= tp!1515800 e!3407830)))

(declare-fun b!5510344 () Bool)

(declare-fun tp!1516070 () Bool)

(declare-fun tp!1516071 () Bool)

(assert (=> b!5510344 (= e!3407830 (and tp!1516070 tp!1516071))))

(declare-fun b!5510346 () Bool)

(declare-fun tp!1516068 () Bool)

(declare-fun tp!1516072 () Bool)

(assert (=> b!5510346 (= e!3407830 (and tp!1516068 tp!1516072))))

(declare-fun b!5510345 () Bool)

(declare-fun tp!1516069 () Bool)

(assert (=> b!5510345 (= e!3407830 tp!1516069)))

(assert (= (and b!5509297 ((_ is ElementMatch!15493) (reg!15822 (regTwo!31499 r!7292)))) b!5510343))

(assert (= (and b!5509297 ((_ is Concat!24338) (reg!15822 (regTwo!31499 r!7292)))) b!5510344))

(assert (= (and b!5509297 ((_ is Star!15493) (reg!15822 (regTwo!31499 r!7292)))) b!5510345))

(assert (= (and b!5509297 ((_ is Union!15493) (reg!15822 (regTwo!31499 r!7292)))) b!5510346))

(declare-fun b!5510347 () Bool)

(declare-fun e!3407831 () Bool)

(assert (=> b!5510347 (= e!3407831 tp_is_empty!40239)))

(assert (=> b!5509306 (= tp!1515809 e!3407831)))

(declare-fun b!5510348 () Bool)

(declare-fun tp!1516075 () Bool)

(declare-fun tp!1516076 () Bool)

(assert (=> b!5510348 (= e!3407831 (and tp!1516075 tp!1516076))))

(declare-fun b!5510350 () Bool)

(declare-fun tp!1516073 () Bool)

(declare-fun tp!1516077 () Bool)

(assert (=> b!5510350 (= e!3407831 (and tp!1516073 tp!1516077))))

(declare-fun b!5510349 () Bool)

(declare-fun tp!1516074 () Bool)

(assert (=> b!5510349 (= e!3407831 tp!1516074)))

(assert (= (and b!5509306 ((_ is ElementMatch!15493) (regOne!31499 (regTwo!31498 r!7292)))) b!5510347))

(assert (= (and b!5509306 ((_ is Concat!24338) (regOne!31499 (regTwo!31498 r!7292)))) b!5510348))

(assert (= (and b!5509306 ((_ is Star!15493) (regOne!31499 (regTwo!31498 r!7292)))) b!5510349))

(assert (= (and b!5509306 ((_ is Union!15493) (regOne!31499 (regTwo!31498 r!7292)))) b!5510350))

(declare-fun b!5510351 () Bool)

(declare-fun e!3407832 () Bool)

(assert (=> b!5510351 (= e!3407832 tp_is_empty!40239)))

(assert (=> b!5509306 (= tp!1515813 e!3407832)))

(declare-fun b!5510352 () Bool)

(declare-fun tp!1516080 () Bool)

(declare-fun tp!1516081 () Bool)

(assert (=> b!5510352 (= e!3407832 (and tp!1516080 tp!1516081))))

(declare-fun b!5510354 () Bool)

(declare-fun tp!1516078 () Bool)

(declare-fun tp!1516082 () Bool)

(assert (=> b!5510354 (= e!3407832 (and tp!1516078 tp!1516082))))

(declare-fun b!5510353 () Bool)

(declare-fun tp!1516079 () Bool)

(assert (=> b!5510353 (= e!3407832 tp!1516079)))

(assert (= (and b!5509306 ((_ is ElementMatch!15493) (regTwo!31499 (regTwo!31498 r!7292)))) b!5510351))

(assert (= (and b!5509306 ((_ is Concat!24338) (regTwo!31499 (regTwo!31498 r!7292)))) b!5510352))

(assert (= (and b!5509306 ((_ is Star!15493) (regTwo!31499 (regTwo!31498 r!7292)))) b!5510353))

(assert (= (and b!5509306 ((_ is Union!15493) (regTwo!31499 (regTwo!31498 r!7292)))) b!5510354))

(declare-fun b!5510355 () Bool)

(declare-fun e!3407833 () Bool)

(assert (=> b!5510355 (= e!3407833 tp_is_empty!40239)))

(assert (=> b!5509305 (= tp!1515810 e!3407833)))

(declare-fun b!5510356 () Bool)

(declare-fun tp!1516085 () Bool)

(declare-fun tp!1516086 () Bool)

(assert (=> b!5510356 (= e!3407833 (and tp!1516085 tp!1516086))))

(declare-fun b!5510358 () Bool)

(declare-fun tp!1516083 () Bool)

(declare-fun tp!1516087 () Bool)

(assert (=> b!5510358 (= e!3407833 (and tp!1516083 tp!1516087))))

(declare-fun b!5510357 () Bool)

(declare-fun tp!1516084 () Bool)

(assert (=> b!5510357 (= e!3407833 tp!1516084)))

(assert (= (and b!5509305 ((_ is ElementMatch!15493) (reg!15822 (regTwo!31498 r!7292)))) b!5510355))

(assert (= (and b!5509305 ((_ is Concat!24338) (reg!15822 (regTwo!31498 r!7292)))) b!5510356))

(assert (= (and b!5509305 ((_ is Star!15493) (reg!15822 (regTwo!31498 r!7292)))) b!5510357))

(assert (= (and b!5509305 ((_ is Union!15493) (reg!15822 (regTwo!31498 r!7292)))) b!5510358))

(declare-fun b!5510359 () Bool)

(declare-fun e!3407834 () Bool)

(assert (=> b!5510359 (= e!3407834 tp_is_empty!40239)))

(assert (=> b!5509296 (= tp!1515801 e!3407834)))

(declare-fun b!5510360 () Bool)

(declare-fun tp!1516090 () Bool)

(declare-fun tp!1516091 () Bool)

(assert (=> b!5510360 (= e!3407834 (and tp!1516090 tp!1516091))))

(declare-fun b!5510362 () Bool)

(declare-fun tp!1516088 () Bool)

(declare-fun tp!1516092 () Bool)

(assert (=> b!5510362 (= e!3407834 (and tp!1516088 tp!1516092))))

(declare-fun b!5510361 () Bool)

(declare-fun tp!1516089 () Bool)

(assert (=> b!5510361 (= e!3407834 tp!1516089)))

(assert (= (and b!5509296 ((_ is ElementMatch!15493) (regOne!31498 (regTwo!31499 r!7292)))) b!5510359))

(assert (= (and b!5509296 ((_ is Concat!24338) (regOne!31498 (regTwo!31499 r!7292)))) b!5510360))

(assert (= (and b!5509296 ((_ is Star!15493) (regOne!31498 (regTwo!31499 r!7292)))) b!5510361))

(assert (= (and b!5509296 ((_ is Union!15493) (regOne!31498 (regTwo!31499 r!7292)))) b!5510362))

(declare-fun b!5510363 () Bool)

(declare-fun e!3407835 () Bool)

(assert (=> b!5510363 (= e!3407835 tp_is_empty!40239)))

(assert (=> b!5509296 (= tp!1515802 e!3407835)))

(declare-fun b!5510364 () Bool)

(declare-fun tp!1516095 () Bool)

(declare-fun tp!1516096 () Bool)

(assert (=> b!5510364 (= e!3407835 (and tp!1516095 tp!1516096))))

(declare-fun b!5510366 () Bool)

(declare-fun tp!1516093 () Bool)

(declare-fun tp!1516097 () Bool)

(assert (=> b!5510366 (= e!3407835 (and tp!1516093 tp!1516097))))

(declare-fun b!5510365 () Bool)

(declare-fun tp!1516094 () Bool)

(assert (=> b!5510365 (= e!3407835 tp!1516094)))

(assert (= (and b!5509296 ((_ is ElementMatch!15493) (regTwo!31498 (regTwo!31499 r!7292)))) b!5510363))

(assert (= (and b!5509296 ((_ is Concat!24338) (regTwo!31498 (regTwo!31499 r!7292)))) b!5510364))

(assert (= (and b!5509296 ((_ is Star!15493) (regTwo!31498 (regTwo!31499 r!7292)))) b!5510365))

(assert (= (and b!5509296 ((_ is Union!15493) (regTwo!31498 (regTwo!31499 r!7292)))) b!5510366))

(declare-fun b!5510367 () Bool)

(declare-fun e!3407836 () Bool)

(assert (=> b!5510367 (= e!3407836 tp_is_empty!40239)))

(assert (=> b!5509304 (= tp!1515811 e!3407836)))

(declare-fun b!5510368 () Bool)

(declare-fun tp!1516100 () Bool)

(declare-fun tp!1516101 () Bool)

(assert (=> b!5510368 (= e!3407836 (and tp!1516100 tp!1516101))))

(declare-fun b!5510370 () Bool)

(declare-fun tp!1516098 () Bool)

(declare-fun tp!1516102 () Bool)

(assert (=> b!5510370 (= e!3407836 (and tp!1516098 tp!1516102))))

(declare-fun b!5510369 () Bool)

(declare-fun tp!1516099 () Bool)

(assert (=> b!5510369 (= e!3407836 tp!1516099)))

(assert (= (and b!5509304 ((_ is ElementMatch!15493) (regOne!31498 (regTwo!31498 r!7292)))) b!5510367))

(assert (= (and b!5509304 ((_ is Concat!24338) (regOne!31498 (regTwo!31498 r!7292)))) b!5510368))

(assert (= (and b!5509304 ((_ is Star!15493) (regOne!31498 (regTwo!31498 r!7292)))) b!5510369))

(assert (= (and b!5509304 ((_ is Union!15493) (regOne!31498 (regTwo!31498 r!7292)))) b!5510370))

(declare-fun b!5510371 () Bool)

(declare-fun e!3407837 () Bool)

(assert (=> b!5510371 (= e!3407837 tp_is_empty!40239)))

(assert (=> b!5509304 (= tp!1515812 e!3407837)))

(declare-fun b!5510372 () Bool)

(declare-fun tp!1516105 () Bool)

(declare-fun tp!1516106 () Bool)

(assert (=> b!5510372 (= e!3407837 (and tp!1516105 tp!1516106))))

(declare-fun b!5510374 () Bool)

(declare-fun tp!1516103 () Bool)

(declare-fun tp!1516107 () Bool)

(assert (=> b!5510374 (= e!3407837 (and tp!1516103 tp!1516107))))

(declare-fun b!5510373 () Bool)

(declare-fun tp!1516104 () Bool)

(assert (=> b!5510373 (= e!3407837 tp!1516104)))

(assert (= (and b!5509304 ((_ is ElementMatch!15493) (regTwo!31498 (regTwo!31498 r!7292)))) b!5510371))

(assert (= (and b!5509304 ((_ is Concat!24338) (regTwo!31498 (regTwo!31498 r!7292)))) b!5510372))

(assert (= (and b!5509304 ((_ is Star!15493) (regTwo!31498 (regTwo!31498 r!7292)))) b!5510373))

(assert (= (and b!5509304 ((_ is Union!15493) (regTwo!31498 (regTwo!31498 r!7292)))) b!5510374))

(declare-fun b!5510375 () Bool)

(declare-fun e!3407838 () Bool)

(assert (=> b!5510375 (= e!3407838 tp_is_empty!40239)))

(assert (=> b!5509283 (= tp!1515785 e!3407838)))

(declare-fun b!5510376 () Bool)

(declare-fun tp!1516110 () Bool)

(declare-fun tp!1516111 () Bool)

(assert (=> b!5510376 (= e!3407838 (and tp!1516110 tp!1516111))))

(declare-fun b!5510378 () Bool)

(declare-fun tp!1516108 () Bool)

(declare-fun tp!1516112 () Bool)

(assert (=> b!5510378 (= e!3407838 (and tp!1516108 tp!1516112))))

(declare-fun b!5510377 () Bool)

(declare-fun tp!1516109 () Bool)

(assert (=> b!5510377 (= e!3407838 tp!1516109)))

(assert (= (and b!5509283 ((_ is ElementMatch!15493) (reg!15822 (reg!15822 r!7292)))) b!5510375))

(assert (= (and b!5509283 ((_ is Concat!24338) (reg!15822 (reg!15822 r!7292)))) b!5510376))

(assert (= (and b!5509283 ((_ is Star!15493) (reg!15822 (reg!15822 r!7292)))) b!5510377))

(assert (= (and b!5509283 ((_ is Union!15493) (reg!15822 (reg!15822 r!7292)))) b!5510378))

(declare-fun b!5510379 () Bool)

(declare-fun e!3407839 () Bool)

(assert (=> b!5510379 (= e!3407839 tp_is_empty!40239)))

(assert (=> b!5509284 (= tp!1515784 e!3407839)))

(declare-fun b!5510380 () Bool)

(declare-fun tp!1516115 () Bool)

(declare-fun tp!1516116 () Bool)

(assert (=> b!5510380 (= e!3407839 (and tp!1516115 tp!1516116))))

(declare-fun b!5510382 () Bool)

(declare-fun tp!1516113 () Bool)

(declare-fun tp!1516117 () Bool)

(assert (=> b!5510382 (= e!3407839 (and tp!1516113 tp!1516117))))

(declare-fun b!5510381 () Bool)

(declare-fun tp!1516114 () Bool)

(assert (=> b!5510381 (= e!3407839 tp!1516114)))

(assert (= (and b!5509284 ((_ is ElementMatch!15493) (regOne!31499 (reg!15822 r!7292)))) b!5510379))

(assert (= (and b!5509284 ((_ is Concat!24338) (regOne!31499 (reg!15822 r!7292)))) b!5510380))

(assert (= (and b!5509284 ((_ is Star!15493) (regOne!31499 (reg!15822 r!7292)))) b!5510381))

(assert (= (and b!5509284 ((_ is Union!15493) (regOne!31499 (reg!15822 r!7292)))) b!5510382))

(declare-fun b!5510383 () Bool)

(declare-fun e!3407840 () Bool)

(assert (=> b!5510383 (= e!3407840 tp_is_empty!40239)))

(assert (=> b!5509284 (= tp!1515788 e!3407840)))

(declare-fun b!5510384 () Bool)

(declare-fun tp!1516120 () Bool)

(declare-fun tp!1516121 () Bool)

(assert (=> b!5510384 (= e!3407840 (and tp!1516120 tp!1516121))))

(declare-fun b!5510386 () Bool)

(declare-fun tp!1516118 () Bool)

(declare-fun tp!1516122 () Bool)

(assert (=> b!5510386 (= e!3407840 (and tp!1516118 tp!1516122))))

(declare-fun b!5510385 () Bool)

(declare-fun tp!1516119 () Bool)

(assert (=> b!5510385 (= e!3407840 tp!1516119)))

(assert (= (and b!5509284 ((_ is ElementMatch!15493) (regTwo!31499 (reg!15822 r!7292)))) b!5510383))

(assert (= (and b!5509284 ((_ is Concat!24338) (regTwo!31499 (reg!15822 r!7292)))) b!5510384))

(assert (= (and b!5509284 ((_ is Star!15493) (regTwo!31499 (reg!15822 r!7292)))) b!5510385))

(assert (= (and b!5509284 ((_ is Union!15493) (regTwo!31499 (reg!15822 r!7292)))) b!5510386))

(declare-fun b!5510387 () Bool)

(declare-fun e!3407841 () Bool)

(assert (=> b!5510387 (= e!3407841 tp_is_empty!40239)))

(assert (=> b!5509282 (= tp!1515786 e!3407841)))

(declare-fun b!5510388 () Bool)

(declare-fun tp!1516125 () Bool)

(declare-fun tp!1516126 () Bool)

(assert (=> b!5510388 (= e!3407841 (and tp!1516125 tp!1516126))))

(declare-fun b!5510390 () Bool)

(declare-fun tp!1516123 () Bool)

(declare-fun tp!1516127 () Bool)

(assert (=> b!5510390 (= e!3407841 (and tp!1516123 tp!1516127))))

(declare-fun b!5510389 () Bool)

(declare-fun tp!1516124 () Bool)

(assert (=> b!5510389 (= e!3407841 tp!1516124)))

(assert (= (and b!5509282 ((_ is ElementMatch!15493) (regOne!31498 (reg!15822 r!7292)))) b!5510387))

(assert (= (and b!5509282 ((_ is Concat!24338) (regOne!31498 (reg!15822 r!7292)))) b!5510388))

(assert (= (and b!5509282 ((_ is Star!15493) (regOne!31498 (reg!15822 r!7292)))) b!5510389))

(assert (= (and b!5509282 ((_ is Union!15493) (regOne!31498 (reg!15822 r!7292)))) b!5510390))

(declare-fun b!5510391 () Bool)

(declare-fun e!3407842 () Bool)

(assert (=> b!5510391 (= e!3407842 tp_is_empty!40239)))

(assert (=> b!5509282 (= tp!1515787 e!3407842)))

(declare-fun b!5510392 () Bool)

(declare-fun tp!1516130 () Bool)

(declare-fun tp!1516131 () Bool)

(assert (=> b!5510392 (= e!3407842 (and tp!1516130 tp!1516131))))

(declare-fun b!5510394 () Bool)

(declare-fun tp!1516128 () Bool)

(declare-fun tp!1516132 () Bool)

(assert (=> b!5510394 (= e!3407842 (and tp!1516128 tp!1516132))))

(declare-fun b!5510393 () Bool)

(declare-fun tp!1516129 () Bool)

(assert (=> b!5510393 (= e!3407842 tp!1516129)))

(assert (= (and b!5509282 ((_ is ElementMatch!15493) (regTwo!31498 (reg!15822 r!7292)))) b!5510391))

(assert (= (and b!5509282 ((_ is Concat!24338) (regTwo!31498 (reg!15822 r!7292)))) b!5510392))

(assert (= (and b!5509282 ((_ is Star!15493) (regTwo!31498 (reg!15822 r!7292)))) b!5510393))

(assert (= (and b!5509282 ((_ is Union!15493) (regTwo!31498 (reg!15822 r!7292)))) b!5510394))

(declare-fun b!5510395 () Bool)

(declare-fun e!3407843 () Bool)

(declare-fun tp!1516133 () Bool)

(assert (=> b!5510395 (= e!3407843 (and tp_is_empty!40239 tp!1516133))))

(assert (=> b!5509290 (= tp!1515793 e!3407843)))

(assert (= (and b!5509290 ((_ is Cons!62655) (t!376022 (t!376022 s!2326)))) b!5510395))

(declare-fun b!5510396 () Bool)

(declare-fun e!3407844 () Bool)

(declare-fun tp!1516134 () Bool)

(declare-fun tp!1516135 () Bool)

(assert (=> b!5510396 (= e!3407844 (and tp!1516134 tp!1516135))))

(assert (=> b!5509314 (= tp!1515818 e!3407844)))

(assert (= (and b!5509314 ((_ is Cons!62654) (exprs!5377 (h!69104 (t!376023 zl!343))))) b!5510396))

(declare-fun b!5510398 () Bool)

(declare-fun e!3407846 () Bool)

(declare-fun tp!1516136 () Bool)

(assert (=> b!5510398 (= e!3407846 tp!1516136)))

(declare-fun tp!1516137 () Bool)

(declare-fun e!3407845 () Bool)

(declare-fun b!5510397 () Bool)

(assert (=> b!5510397 (= e!3407845 (and (inv!81979 (h!69104 (t!376023 (t!376023 zl!343)))) e!3407846 tp!1516137))))

(assert (=> b!5509313 (= tp!1515819 e!3407845)))

(assert (= b!5510397 b!5510398))

(assert (= (and b!5509313 ((_ is Cons!62656) (t!376023 (t!376023 zl!343)))) b!5510397))

(declare-fun m!6515590 () Bool)

(assert (=> b!5510397 m!6515590))

(declare-fun b!5510399 () Bool)

(declare-fun e!3407847 () Bool)

(assert (=> b!5510399 (= e!3407847 tp_is_empty!40239)))

(assert (=> b!5509298 (= tp!1515799 e!3407847)))

(declare-fun b!5510400 () Bool)

(declare-fun tp!1516140 () Bool)

(declare-fun tp!1516141 () Bool)

(assert (=> b!5510400 (= e!3407847 (and tp!1516140 tp!1516141))))

(declare-fun b!5510402 () Bool)

(declare-fun tp!1516138 () Bool)

(declare-fun tp!1516142 () Bool)

(assert (=> b!5510402 (= e!3407847 (and tp!1516138 tp!1516142))))

(declare-fun b!5510401 () Bool)

(declare-fun tp!1516139 () Bool)

(assert (=> b!5510401 (= e!3407847 tp!1516139)))

(assert (= (and b!5509298 ((_ is ElementMatch!15493) (regOne!31499 (regTwo!31499 r!7292)))) b!5510399))

(assert (= (and b!5509298 ((_ is Concat!24338) (regOne!31499 (regTwo!31499 r!7292)))) b!5510400))

(assert (= (and b!5509298 ((_ is Star!15493) (regOne!31499 (regTwo!31499 r!7292)))) b!5510401))

(assert (= (and b!5509298 ((_ is Union!15493) (regOne!31499 (regTwo!31499 r!7292)))) b!5510402))

(declare-fun b!5510403 () Bool)

(declare-fun e!3407848 () Bool)

(assert (=> b!5510403 (= e!3407848 tp_is_empty!40239)))

(assert (=> b!5509298 (= tp!1515803 e!3407848)))

(declare-fun b!5510404 () Bool)

(declare-fun tp!1516145 () Bool)

(declare-fun tp!1516146 () Bool)

(assert (=> b!5510404 (= e!3407848 (and tp!1516145 tp!1516146))))

(declare-fun b!5510406 () Bool)

(declare-fun tp!1516143 () Bool)

(declare-fun tp!1516147 () Bool)

(assert (=> b!5510406 (= e!3407848 (and tp!1516143 tp!1516147))))

(declare-fun b!5510405 () Bool)

(declare-fun tp!1516144 () Bool)

(assert (=> b!5510405 (= e!3407848 tp!1516144)))

(assert (= (and b!5509298 ((_ is ElementMatch!15493) (regTwo!31499 (regTwo!31499 r!7292)))) b!5510403))

(assert (= (and b!5509298 ((_ is Concat!24338) (regTwo!31499 (regTwo!31499 r!7292)))) b!5510404))

(assert (= (and b!5509298 ((_ is Star!15493) (regTwo!31499 (regTwo!31499 r!7292)))) b!5510405))

(assert (= (and b!5509298 ((_ is Union!15493) (regTwo!31499 (regTwo!31499 r!7292)))) b!5510406))

(declare-fun b_lambda!208923 () Bool)

(assert (= b_lambda!208917 (or d!1745644 b_lambda!208923)))

(declare-fun bs!1270426 () Bool)

(declare-fun d!1746076 () Bool)

(assert (= bs!1270426 (and d!1746076 d!1745644)))

(assert (=> bs!1270426 (= (dynLambda!24482 lambda!295108 (h!69102 (exprs!5377 setElem!36567))) (validRegex!7229 (h!69102 (exprs!5377 setElem!36567))))))

(declare-fun m!6515592 () Bool)

(assert (=> bs!1270426 m!6515592))

(assert (=> b!5510185 d!1746076))

(declare-fun b_lambda!208925 () Bool)

(assert (= b_lambda!208889 (or d!1745668 b_lambda!208925)))

(declare-fun bs!1270427 () Bool)

(declare-fun d!1746078 () Bool)

(assert (= bs!1270427 (and d!1746078 d!1745668)))

(assert (=> bs!1270427 (= (dynLambda!24482 lambda!295114 (h!69102 lt!2244807)) (validRegex!7229 (h!69102 lt!2244807)))))

(declare-fun m!6515594 () Bool)

(assert (=> bs!1270427 m!6515594))

(assert (=> b!5509770 d!1746078))

(declare-fun b_lambda!208927 () Bool)

(assert (= b_lambda!208881 (or b!5508568 b_lambda!208927)))

(assert (=> d!1745838 d!1745686))

(declare-fun b_lambda!208929 () Bool)

(assert (= b_lambda!208897 (or d!1745666 b_lambda!208929)))

(declare-fun bs!1270428 () Bool)

(declare-fun d!1746080 () Bool)

(assert (= bs!1270428 (and d!1746080 d!1745666)))

(assert (=> bs!1270428 (= (dynLambda!24482 lambda!295111 (h!69102 (unfocusZipperList!921 zl!343))) (validRegex!7229 (h!69102 (unfocusZipperList!921 zl!343))))))

(declare-fun m!6515596 () Bool)

(assert (=> bs!1270428 m!6515596))

(assert (=> b!5509867 d!1746080))

(declare-fun b_lambda!208931 () Bool)

(assert (= b_lambda!208891 (or d!1745626 b_lambda!208931)))

(declare-fun bs!1270429 () Bool)

(declare-fun d!1746082 () Bool)

(assert (= bs!1270429 (and d!1746082 d!1745626)))

(assert (=> bs!1270429 (= (dynLambda!24482 lambda!295104 (h!69102 (exprs!5377 (h!69104 zl!343)))) (validRegex!7229 (h!69102 (exprs!5377 (h!69104 zl!343)))))))

(declare-fun m!6515598 () Bool)

(assert (=> bs!1270429 m!6515598))

(assert (=> b!5509794 d!1746082))

(declare-fun b_lambda!208933 () Bool)

(assert (= b_lambda!208919 (or d!1745642 b_lambda!208933)))

(declare-fun bs!1270430 () Bool)

(declare-fun d!1746084 () Bool)

(assert (= bs!1270430 (and d!1746084 d!1745642)))

(assert (=> bs!1270430 (= (dynLambda!24482 lambda!295107 (h!69102 (exprs!5377 (h!69104 zl!343)))) (validRegex!7229 (h!69102 (exprs!5377 (h!69104 zl!343)))))))

(assert (=> bs!1270430 m!6515598))

(assert (=> b!5510235 d!1746084))

(declare-fun b_lambda!208935 () Bool)

(assert (= b_lambda!208893 (or b!5508568 b_lambda!208935)))

(assert (=> d!1745910 d!1745684))

(declare-fun b_lambda!208937 () Bool)

(assert (= b_lambda!208921 (or b!5508568 b_lambda!208937)))

(assert (=> d!1746056 d!1745688))

(check-sat (not b!5510206) (not b!5510390) (not b!5510378) (not b!5509686) (not b!5509622) (not b!5509733) (not b_lambda!208869) (not b!5509868) (not b!5510362) (not bm!407282) (not bm!407238) (not b!5510398) (not b!5510251) (not b!5510307) (not b!5510302) (not bm!407386) (not b!5510248) (not bm!407277) (not b!5509657) (not b!5510297) (not b!5510385) (not b!5509891) (not bm!407394) (not bm!407246) (not bm!407310) (not b!5509735) (not b!5509485) (not b!5510352) (not b!5510349) (not b!5509524) (not b!5510329) (not b!5510405) (not d!1745784) (not b!5510337) (not d!1746038) (not b!5509734) (not b!5510366) (not b!5510296) (not d!1745796) (not bm!407291) (not bm!407328) (not b_lambda!208923) (not b!5509714) (not bm!407309) (not bm!407352) (not b!5510061) (not bm!407350) (not d!1746046) (not b!5509887) (not b!5510318) (not b!5510344) (not b!5510176) (not d!1746074) (not b!5510201) (not b!5510394) (not bm!407390) (not b!5510393) (not b!5510342) (not bs!1270428) (not b!5510365) (not b!5510392) (not b!5510389) (not bm!407244) (not bm!407234) (not b!5509885) (not b!5510212) (not b!5510315) (not bm!407360) (not bm!407381) (not bs!1270429) (not b!5509450) (not b!5510016) (not b!5510341) (not b!5509481) (not b!5510396) (not bm!407312) (not bm!407420) (not b!5510333) (not b!5510395) (not bm!407344) (not bm!407419) (not bm!407249) (not b!5510188) (not b!5509771) (not b!5510400) (not b!5510309) (not bm!407396) (not b!5510354) (not b!5510334) (not b!5510293) (not b!5509938) (not b!5510202) (not b!5509776) (not b!5509458) (not bm!407361) (not d!1746066) (not b!5509772) (not b!5510332) (not bm!407392) (not bm!407314) (not b!5510401) (not d!1745788) (not d!1745838) (not b!5509629) (not bm!407400) (not d!1745806) (not setNonEmpty!36584) (not d!1746044) (not b!5509786) (not d!1745860) (not bs!1270426) (not b!5510250) (not d!1745848) (not b!5510384) (not d!1745840) (not bs!1270430) (not b!5510306) (not d!1746068) (not b!5510285) (not b!5509665) (not b!5509472) (not d!1746040) (not b_lambda!208871) (not b!5510002) (not b!5509683) (not b!5509627) (not b!5510215) (not b!5510289) (not bm!407243) (not b!5510303) (not b!5509507) (not bm!407281) (not bm!407401) (not b!5510211) (not b!5509514) (not bm!407409) (not b_lambda!208925) (not b!5509459) (not b!5510382) (not b!5510207) (not b!5509631) (not bm!407372) (not b!5510305) (not b!5510294) (not b!5509482) (not d!1746010) (not d!1746058) (not b!5509671) (not b!5510226) (not setNonEmpty!36585) (not b!5510014) (not b!5509660) (not b!5509633) (not d!1746034) (not b!5510058) (not b!5509882) (not bm!407422) (not b!5510350) (not b!5510380) (not bm!407330) (not b_lambda!208933) (not bm!407346) (not b!5509499) (not b!5510198) (not b!5510360) (not bm!407373) (not b!5510404) (not b!5510373) (not bm!407240) (not bm!407308) (not d!1746042) (not b!5510348) tp_is_empty!40239 (not bm!407406) (not b!5509912) (not b!5510310) (not d!1745888) (not b!5509454) (not b!5510298) (not b!5510173) (not bm!407250) (not b!5509489) (not b!5510323) (not b!5510340) (not bm!407251) (not bm!407239) (not b!5509490) (not b!5509664) (not bm!407407) (not b!5510007) (not bm!407327) (not b!5510361) (not b!5510327) (not b!5509795) (not b!5510003) (not d!1745804) (not d!1746070) (not b_lambda!208927) (not b!5510311) (not d!1745870) (not b!5510210) (not b!5510241) (not b!5510381) (not b!5509619) (not d!1746056) (not b!5509881) (not bm!407399) (not setNonEmpty!36583) (not b!5510314) (not b!5509503) (not b!5509662) (not b!5510370) (not d!1745836) (not bm!407405) (not d!1745808) (not b!5510346) (not b!5509508) (not b!5509500) (not b!5509505) (not b!5510243) (not bm!407385) (not b!5510376) (not b!5510368) (not b!5510186) (not bm!407294) (not b!5510356) (not b!5509715) (not d!1745928) (not b!5510317) (not b!5510242) (not d!1745926) (not d!1745942) (not b!5510313) (not b!5510377) (not b!5510325) (not b!5510197) (not d!1745761) (not bs!1270427) (not b!5510345) (not b!5510319) (not b!5510406) (not b!5509857) (not b!5509886) (not b!5510372) (not b!5509632) (not b!5510353) (not b!5509846) (not b!5509487) (not b!5510388) (not b!5509443) (not b!5510301) (not d!1745950) (not bm!407384) (not b!5510402) (not b!5510236) (not bm!407290) (not b!5510331) (not b_lambda!208935) (not b!5510292) (not bm!407351) (not b!5509940) (not b!5510300) (not b_lambda!208929) (not b!5510374) (not b!5509636) (not bm!407391) (not b!5510081) (not d!1746060) (not d!1745962) (not b!5510205) (not b!5509626) (not b!5510330) (not b!5510364) (not b_lambda!208937) (not b!5509624) (not b!5510322) (not b!5510338) (not b!5509883) (not bm!407335) (not b!5510246) (not bm!407293) (not d!1745910) (not bm!407336) (not b!5509880) (not b!5509656) (not bm!407345) (not b!5510397) (not d!1745794) (not b!5510286) (not bm!407280) (not bm!407338) (not b!5510358) (not b!5510369) (not b_lambda!208873) (not b!5510321) (not b!5510386) (not bm!407242) (not b!5510326) (not setNonEmpty!36581) (not b!5510336) (not b!5509442) (not b!5510357) (not d!1745792) (not b_lambda!208931) (not d!1746062) (not b!5510151))
(check-sat)
