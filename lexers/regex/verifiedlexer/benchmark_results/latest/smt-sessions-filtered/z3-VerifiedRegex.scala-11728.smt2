; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!663180 () Bool)

(assert start!663180)

(declare-fun b!6872514 () Bool)

(assert (=> b!6872514 true))

(declare-fun b!6872524 () Bool)

(assert (=> b!6872524 true))

(declare-fun bs!1837405 () Bool)

(declare-fun b!6872527 () Bool)

(assert (= bs!1837405 (and b!6872527 b!6872514)))

(declare-fun lambda!388935 () Int)

(declare-fun lambda!388933 () Int)

(assert (=> bs!1837405 (not (= lambda!388935 lambda!388933))))

(declare-fun b!6872510 () Bool)

(declare-fun e!4142454 () Bool)

(declare-fun tp!1887462 () Bool)

(assert (=> b!6872510 (= e!4142454 tp!1887462)))

(declare-fun b!6872511 () Bool)

(declare-fun tp_is_empty!42659 () Bool)

(assert (=> b!6872511 (= e!4142454 tp_is_empty!42659)))

(declare-fun b!6872512 () Bool)

(declare-fun e!4142442 () Bool)

(declare-datatypes ((C!33676 0))(
  ( (C!33677 (val!26540 Int)) )
))
(declare-datatypes ((Regex!16703 0))(
  ( (ElementMatch!16703 (c!1278963 C!33676)) (Concat!25548 (regOne!33918 Regex!16703) (regTwo!33918 Regex!16703)) (EmptyExpr!16703) (Star!16703 (reg!17032 Regex!16703)) (EmptyLang!16703) (Union!16703 (regOne!33919 Regex!16703) (regTwo!33919 Regex!16703)) )
))
(declare-datatypes ((List!66408 0))(
  ( (Nil!66284) (Cons!66284 (h!72732 Regex!16703) (t!380151 List!66408)) )
))
(declare-datatypes ((Context!12174 0))(
  ( (Context!12175 (exprs!6587 List!66408)) )
))
(declare-datatypes ((List!66409 0))(
  ( (Nil!66285) (Cons!66285 (h!72733 Context!12174) (t!380152 List!66409)) )
))
(declare-fun zl!343 () List!66409)

(declare-fun isEmpty!38637 (List!66409) Bool)

(assert (=> b!6872512 (= e!4142442 (isEmpty!38637 (t!380152 zl!343)))))

(declare-fun b!6872513 () Bool)

(declare-fun res!2802745 () Bool)

(declare-fun e!4142444 () Bool)

(assert (=> b!6872513 (=> res!2802745 e!4142444)))

(assert (=> b!6872513 (= res!2802745 (isEmpty!38637 (t!380152 zl!343)))))

(declare-fun setIsEmpty!47259 () Bool)

(declare-fun setRes!47259 () Bool)

(assert (=> setIsEmpty!47259 setRes!47259))

(declare-fun e!4142453 () Bool)

(assert (=> b!6872514 (= e!4142444 e!4142453)))

(declare-fun res!2802743 () Bool)

(assert (=> b!6872514 (=> res!2802743 e!4142453)))

(declare-fun lt!2458610 () Bool)

(assert (=> b!6872514 (= res!2802743 lt!2458610)))

(declare-fun lt!2458615 () List!66408)

(declare-fun exists!2842 (List!66408 Int) Bool)

(assert (=> b!6872514 (= lt!2458610 (exists!2842 lt!2458615 lambda!388933))))

(declare-datatypes ((List!66410 0))(
  ( (Nil!66286) (Cons!66286 (h!72734 C!33676) (t!380153 List!66410)) )
))
(declare-fun s!2326 () List!66410)

(declare-datatypes ((Unit!160184 0))(
  ( (Unit!160185) )
))
(declare-fun lt!2458613 () Unit!160184)

(declare-fun r!7292 () Regex!16703)

(declare-fun matchRGenUnionSpec!342 (Regex!16703 List!66408 List!66410) Unit!160184)

(assert (=> b!6872514 (= lt!2458613 (matchRGenUnionSpec!342 r!7292 lt!2458615 s!2326))))

(declare-fun unfocusZipperList!2120 (List!66409) List!66408)

(assert (=> b!6872514 (= lt!2458615 (unfocusZipperList!2120 zl!343))))

(declare-fun b!6872516 () Bool)

(declare-fun tp!1887467 () Bool)

(declare-fun tp!1887459 () Bool)

(assert (=> b!6872516 (= e!4142454 (and tp!1887467 tp!1887459))))

(declare-fun b!6872517 () Bool)

(declare-fun e!4142450 () Bool)

(declare-fun tp!1887464 () Bool)

(assert (=> b!6872517 (= e!4142450 tp!1887464)))

(declare-fun b!6872518 () Bool)

(declare-fun e!4142451 () Bool)

(declare-fun e!4142445 () Bool)

(assert (=> b!6872518 (= e!4142451 e!4142445)))

(declare-fun res!2802734 () Bool)

(assert (=> b!6872518 (=> (not res!2802734) (not e!4142445))))

(declare-fun lt!2458620 () Regex!16703)

(declare-fun validRegex!8439 (Regex!16703) Bool)

(assert (=> b!6872518 (= res!2802734 (validRegex!8439 lt!2458620))))

(declare-fun contains!20359 (List!66408 Regex!16703) Bool)

(assert (=> b!6872518 (contains!20359 lt!2458615 lt!2458620)))

(declare-fun lt!2458612 () Unit!160184)

(declare-fun lt!2458605 () Context!12174)

(declare-fun lemmaZipperContainsContextUnfocusListContainsConcat!12 (List!66409 Context!12174) Unit!160184)

(assert (=> b!6872518 (= lt!2458612 (lemmaZipperContainsContextUnfocusListContainsConcat!12 zl!343 lt!2458605))))

(declare-fun lt!2458608 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2458611 () (InoxSet Context!12174))

(declare-fun matchZipper!2669 ((InoxSet Context!12174) List!66410) Bool)

(assert (=> b!6872518 (= lt!2458608 (matchZipper!2669 lt!2458611 s!2326))))

(declare-fun matchR!8886 (Regex!16703 List!66410) Bool)

(assert (=> b!6872518 (= lt!2458608 (matchR!8886 lt!2458620 s!2326))))

(declare-fun lt!2458619 () List!66409)

(declare-fun lt!2458614 () Unit!160184)

(declare-fun theoremZipperRegexEquiv!965 ((InoxSet Context!12174) List!66409 Regex!16703 List!66410) Unit!160184)

(assert (=> b!6872518 (= lt!2458614 (theoremZipperRegexEquiv!965 lt!2458611 lt!2458619 lt!2458620 s!2326))))

(declare-fun generalisedConcat!2291 (List!66408) Regex!16703)

(assert (=> b!6872518 (= lt!2458620 (generalisedConcat!2291 (exprs!6587 lt!2458605)))))

(assert (=> b!6872518 (= lt!2458611 (store ((as const (Array Context!12174 Bool)) false) lt!2458605 true))))

(declare-fun b!6872519 () Bool)

(declare-fun e!4142452 () Bool)

(assert (=> b!6872519 (= e!4142452 (not e!4142444))))

(declare-fun res!2802735 () Bool)

(assert (=> b!6872519 (=> res!2802735 e!4142444)))

(assert (=> b!6872519 (= res!2802735 e!4142442)))

(declare-fun res!2802738 () Bool)

(assert (=> b!6872519 (=> (not res!2802738) (not e!4142442))))

(get-info :version)

(assert (=> b!6872519 (= res!2802738 ((_ is Cons!66285) zl!343))))

(declare-fun matchRSpec!3804 (Regex!16703 List!66410) Bool)

(assert (=> b!6872519 (= lt!2458610 (matchRSpec!3804 r!7292 s!2326))))

(assert (=> b!6872519 (= lt!2458610 (matchR!8886 r!7292 s!2326))))

(declare-fun lt!2458607 () Unit!160184)

(declare-fun mainMatchTheorem!3804 (Regex!16703 List!66410) Unit!160184)

(assert (=> b!6872519 (= lt!2458607 (mainMatchTheorem!3804 r!7292 s!2326))))

(declare-fun b!6872520 () Bool)

(declare-fun e!4142449 () Bool)

(declare-fun tp!1887466 () Bool)

(assert (=> b!6872520 (= e!4142449 (and tp_is_empty!42659 tp!1887466))))

(declare-fun b!6872521 () Bool)

(declare-fun res!2802746 () Bool)

(assert (=> b!6872521 (=> res!2802746 e!4142444)))

(assert (=> b!6872521 (= res!2802746 (or (not ((_ is Cons!66285) zl!343)) ((_ is Nil!66286) s!2326) (not (= zl!343 (Cons!66285 (h!72733 zl!343) (t!380152 zl!343))))))))

(declare-fun b!6872522 () Bool)

(declare-fun e!4142443 () Bool)

(assert (=> b!6872522 (= e!4142443 e!4142451)))

(declare-fun res!2802740 () Bool)

(assert (=> b!6872522 (=> res!2802740 e!4142451)))

(declare-fun lt!2458617 () Int)

(declare-fun zipperDepthTotal!452 (List!66409) Int)

(assert (=> b!6872522 (= res!2802740 (<= lt!2458617 (zipperDepthTotal!452 lt!2458619)))))

(assert (=> b!6872522 (= lt!2458619 (Cons!66285 lt!2458605 Nil!66285))))

(declare-fun lt!2458606 () Int)

(assert (=> b!6872522 (< lt!2458606 lt!2458617)))

(assert (=> b!6872522 (= lt!2458617 (zipperDepthTotal!452 zl!343))))

(declare-fun contextDepthTotal!424 (Context!12174) Int)

(assert (=> b!6872522 (= lt!2458606 (contextDepthTotal!424 lt!2458605))))

(declare-fun lt!2458616 () Unit!160184)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!56 (List!66409 Context!12174) Unit!160184)

(assert (=> b!6872522 (= lt!2458616 (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!56 zl!343 lt!2458605))))

(declare-fun b!6872523 () Bool)

(declare-fun res!2802744 () Bool)

(assert (=> b!6872523 (=> res!2802744 e!4142453)))

(declare-fun z!1189 () (InoxSet Context!12174))

(assert (=> b!6872523 (= res!2802744 (not (matchZipper!2669 z!1189 s!2326)))))

(declare-fun b!6872515 () Bool)

(declare-fun res!2802741 () Bool)

(assert (=> b!6872515 (=> (not res!2802741) (not e!4142452))))

(declare-fun toList!10487 ((InoxSet Context!12174)) List!66409)

(assert (=> b!6872515 (= res!2802741 (= (toList!10487 z!1189) zl!343))))

(declare-fun res!2802739 () Bool)

(assert (=> start!663180 (=> (not res!2802739) (not e!4142452))))

(assert (=> start!663180 (= res!2802739 (validRegex!8439 r!7292))))

(assert (=> start!663180 e!4142452))

(assert (=> start!663180 e!4142454))

(declare-fun condSetEmpty!47259 () Bool)

(assert (=> start!663180 (= condSetEmpty!47259 (= z!1189 ((as const (Array Context!12174 Bool)) false)))))

(assert (=> start!663180 setRes!47259))

(declare-fun e!4142446 () Bool)

(assert (=> start!663180 e!4142446))

(assert (=> start!663180 e!4142449))

(declare-fun e!4142448 () Bool)

(assert (=> b!6872524 (= e!4142453 e!4142448)))

(declare-fun res!2802742 () Bool)

(assert (=> b!6872524 (=> res!2802742 e!4142448)))

(declare-fun lambda!388934 () Int)

(declare-fun exists!2843 (List!66409 Int) Bool)

(assert (=> b!6872524 (= res!2802742 (not (exists!2843 zl!343 lambda!388934)))))

(assert (=> b!6872524 (exists!2843 zl!343 lambda!388934)))

(declare-fun lt!2458609 () Unit!160184)

(declare-fun lemmaZipperMatchesExistsMatchingContext!102 (List!66409 List!66410) Unit!160184)

(assert (=> b!6872524 (= lt!2458609 (lemmaZipperMatchesExistsMatchingContext!102 zl!343 s!2326))))

(declare-fun b!6872525 () Bool)

(assert (=> b!6872525 (= e!4142445 lt!2458608)))

(declare-fun b!6872526 () Bool)

(declare-fun tp!1887465 () Bool)

(declare-fun tp!1887460 () Bool)

(assert (=> b!6872526 (= e!4142454 (and tp!1887465 tp!1887460))))

(assert (=> b!6872527 (= e!4142448 e!4142443)))

(declare-fun res!2802736 () Bool)

(assert (=> b!6872527 (=> res!2802736 e!4142443)))

(declare-fun forall!15900 (List!66408 Int) Bool)

(assert (=> b!6872527 (= res!2802736 (not (forall!15900 (exprs!6587 lt!2458605) lambda!388935)))))

(assert (=> b!6872527 (forall!15900 (exprs!6587 lt!2458605) lambda!388935)))

(declare-fun lt!2458618 () Unit!160184)

(declare-fun lemmaContextForallValidExprs!78 (Context!12174 List!66408) Unit!160184)

(assert (=> b!6872527 (= lt!2458618 (lemmaContextForallValidExprs!78 lt!2458605 (exprs!6587 lt!2458605)))))

(declare-fun getWitness!982 (List!66409 Int) Context!12174)

(assert (=> b!6872527 (= lt!2458605 (getWitness!982 zl!343 lambda!388934))))

(declare-fun e!4142447 () Bool)

(declare-fun b!6872528 () Bool)

(declare-fun tp!1887458 () Bool)

(declare-fun inv!85004 (Context!12174) Bool)

(assert (=> b!6872528 (= e!4142446 (and (inv!85004 (h!72733 zl!343)) e!4142447 tp!1887458))))

(declare-fun b!6872529 () Bool)

(declare-fun res!2802733 () Bool)

(assert (=> b!6872529 (=> res!2802733 e!4142453)))

(assert (=> b!6872529 (= res!2802733 (exists!2842 lt!2458615 lambda!388933))))

(declare-fun b!6872530 () Bool)

(declare-fun tp!1887463 () Bool)

(assert (=> b!6872530 (= e!4142447 tp!1887463)))

(declare-fun b!6872531 () Bool)

(declare-fun res!2802737 () Bool)

(assert (=> b!6872531 (=> (not res!2802737) (not e!4142452))))

(declare-fun unfocusZipper!2445 (List!66409) Regex!16703)

(assert (=> b!6872531 (= res!2802737 (= r!7292 (unfocusZipper!2445 zl!343)))))

(declare-fun setElem!47259 () Context!12174)

(declare-fun tp!1887461 () Bool)

(declare-fun setNonEmpty!47259 () Bool)

(assert (=> setNonEmpty!47259 (= setRes!47259 (and tp!1887461 (inv!85004 setElem!47259) e!4142450))))

(declare-fun setRest!47259 () (InoxSet Context!12174))

(assert (=> setNonEmpty!47259 (= z!1189 ((_ map or) (store ((as const (Array Context!12174 Bool)) false) setElem!47259 true) setRest!47259))))

(assert (= (and start!663180 res!2802739) b!6872515))

(assert (= (and b!6872515 res!2802741) b!6872531))

(assert (= (and b!6872531 res!2802737) b!6872519))

(assert (= (and b!6872519 res!2802738) b!6872512))

(assert (= (and b!6872519 (not res!2802735)) b!6872521))

(assert (= (and b!6872521 (not res!2802746)) b!6872513))

(assert (= (and b!6872513 (not res!2802745)) b!6872514))

(assert (= (and b!6872514 (not res!2802743)) b!6872529))

(assert (= (and b!6872529 (not res!2802733)) b!6872523))

(assert (= (and b!6872523 (not res!2802744)) b!6872524))

(assert (= (and b!6872524 (not res!2802742)) b!6872527))

(assert (= (and b!6872527 (not res!2802736)) b!6872522))

(assert (= (and b!6872522 (not res!2802740)) b!6872518))

(assert (= (and b!6872518 res!2802734) b!6872525))

(assert (= (and start!663180 ((_ is ElementMatch!16703) r!7292)) b!6872511))

(assert (= (and start!663180 ((_ is Concat!25548) r!7292)) b!6872526))

(assert (= (and start!663180 ((_ is Star!16703) r!7292)) b!6872510))

(assert (= (and start!663180 ((_ is Union!16703) r!7292)) b!6872516))

(assert (= (and start!663180 condSetEmpty!47259) setIsEmpty!47259))

(assert (= (and start!663180 (not condSetEmpty!47259)) setNonEmpty!47259))

(assert (= setNonEmpty!47259 b!6872517))

(assert (= b!6872528 b!6872530))

(assert (= (and start!663180 ((_ is Cons!66285) zl!343)) b!6872528))

(assert (= (and start!663180 ((_ is Cons!66286) s!2326)) b!6872520))

(declare-fun m!7602496 () Bool)

(assert (=> b!6872514 m!7602496))

(declare-fun m!7602498 () Bool)

(assert (=> b!6872514 m!7602498))

(declare-fun m!7602500 () Bool)

(assert (=> b!6872514 m!7602500))

(declare-fun m!7602502 () Bool)

(assert (=> b!6872515 m!7602502))

(assert (=> b!6872529 m!7602496))

(declare-fun m!7602504 () Bool)

(assert (=> b!6872512 m!7602504))

(declare-fun m!7602506 () Bool)

(assert (=> setNonEmpty!47259 m!7602506))

(declare-fun m!7602508 () Bool)

(assert (=> b!6872523 m!7602508))

(declare-fun m!7602510 () Bool)

(assert (=> b!6872522 m!7602510))

(declare-fun m!7602512 () Bool)

(assert (=> b!6872522 m!7602512))

(declare-fun m!7602514 () Bool)

(assert (=> b!6872522 m!7602514))

(declare-fun m!7602516 () Bool)

(assert (=> b!6872522 m!7602516))

(assert (=> b!6872513 m!7602504))

(declare-fun m!7602518 () Bool)

(assert (=> b!6872528 m!7602518))

(declare-fun m!7602520 () Bool)

(assert (=> b!6872519 m!7602520))

(declare-fun m!7602522 () Bool)

(assert (=> b!6872519 m!7602522))

(declare-fun m!7602524 () Bool)

(assert (=> b!6872519 m!7602524))

(declare-fun m!7602526 () Bool)

(assert (=> start!663180 m!7602526))

(declare-fun m!7602528 () Bool)

(assert (=> b!6872531 m!7602528))

(declare-fun m!7602530 () Bool)

(assert (=> b!6872527 m!7602530))

(assert (=> b!6872527 m!7602530))

(declare-fun m!7602532 () Bool)

(assert (=> b!6872527 m!7602532))

(declare-fun m!7602534 () Bool)

(assert (=> b!6872527 m!7602534))

(declare-fun m!7602536 () Bool)

(assert (=> b!6872518 m!7602536))

(declare-fun m!7602538 () Bool)

(assert (=> b!6872518 m!7602538))

(declare-fun m!7602540 () Bool)

(assert (=> b!6872518 m!7602540))

(declare-fun m!7602542 () Bool)

(assert (=> b!6872518 m!7602542))

(declare-fun m!7602544 () Bool)

(assert (=> b!6872518 m!7602544))

(declare-fun m!7602546 () Bool)

(assert (=> b!6872518 m!7602546))

(declare-fun m!7602548 () Bool)

(assert (=> b!6872518 m!7602548))

(declare-fun m!7602550 () Bool)

(assert (=> b!6872518 m!7602550))

(declare-fun m!7602552 () Bool)

(assert (=> b!6872524 m!7602552))

(assert (=> b!6872524 m!7602552))

(declare-fun m!7602554 () Bool)

(assert (=> b!6872524 m!7602554))

(check-sat (not b!6872529) (not b!6872530) (not setNonEmpty!47259) (not b!6872528) (not b!6872527) (not b!6872510) (not b!6872523) (not b!6872516) (not b!6872522) (not b!6872515) (not b!6872531) (not b!6872526) (not b!6872513) (not b!6872524) tp_is_empty!42659 (not b!6872519) (not start!663180) (not b!6872520) (not b!6872512) (not b!6872514) (not b!6872518) (not b!6872517))
(check-sat)
(get-model)

(declare-fun d!2158789 () Bool)

(declare-fun res!2802751 () Bool)

(declare-fun e!4142459 () Bool)

(assert (=> d!2158789 (=> res!2802751 e!4142459)))

(assert (=> d!2158789 (= res!2802751 ((_ is Nil!66284) (exprs!6587 lt!2458605)))))

(assert (=> d!2158789 (= (forall!15900 (exprs!6587 lt!2458605) lambda!388935) e!4142459)))

(declare-fun b!6872540 () Bool)

(declare-fun e!4142460 () Bool)

(assert (=> b!6872540 (= e!4142459 e!4142460)))

(declare-fun res!2802752 () Bool)

(assert (=> b!6872540 (=> (not res!2802752) (not e!4142460))))

(declare-fun dynLambda!26542 (Int Regex!16703) Bool)

(assert (=> b!6872540 (= res!2802752 (dynLambda!26542 lambda!388935 (h!72732 (exprs!6587 lt!2458605))))))

(declare-fun b!6872541 () Bool)

(assert (=> b!6872541 (= e!4142460 (forall!15900 (t!380151 (exprs!6587 lt!2458605)) lambda!388935))))

(assert (= (and d!2158789 (not res!2802751)) b!6872540))

(assert (= (and b!6872540 res!2802752) b!6872541))

(declare-fun b_lambda!260115 () Bool)

(assert (=> (not b_lambda!260115) (not b!6872540)))

(declare-fun m!7602556 () Bool)

(assert (=> b!6872540 m!7602556))

(declare-fun m!7602558 () Bool)

(assert (=> b!6872541 m!7602558))

(assert (=> b!6872527 d!2158789))

(declare-fun bs!1837406 () Bool)

(declare-fun d!2158791 () Bool)

(assert (= bs!1837406 (and d!2158791 b!6872514)))

(declare-fun lambda!388938 () Int)

(assert (=> bs!1837406 (not (= lambda!388938 lambda!388933))))

(declare-fun bs!1837407 () Bool)

(assert (= bs!1837407 (and d!2158791 b!6872527)))

(assert (=> bs!1837407 (= lambda!388938 lambda!388935)))

(assert (=> d!2158791 (forall!15900 (exprs!6587 lt!2458605) lambda!388938)))

(declare-fun lt!2458623 () Unit!160184)

(declare-fun choose!51207 (Context!12174 List!66408) Unit!160184)

(assert (=> d!2158791 (= lt!2458623 (choose!51207 lt!2458605 (exprs!6587 lt!2458605)))))

(assert (=> d!2158791 (= (exprs!6587 lt!2458605) (exprs!6587 lt!2458605))))

(assert (=> d!2158791 (= (lemmaContextForallValidExprs!78 lt!2458605 (exprs!6587 lt!2458605)) lt!2458623)))

(declare-fun bs!1837408 () Bool)

(assert (= bs!1837408 d!2158791))

(declare-fun m!7602560 () Bool)

(assert (=> bs!1837408 m!7602560))

(declare-fun m!7602562 () Bool)

(assert (=> bs!1837408 m!7602562))

(assert (=> b!6872527 d!2158791))

(declare-fun b!6872576 () Bool)

(declare-fun e!4142480 () Context!12174)

(assert (=> b!6872576 (= e!4142480 (getWitness!982 (t!380152 zl!343) lambda!388934))))

(declare-fun b!6872577 () Bool)

(declare-fun lt!2458638 () Unit!160184)

(declare-fun Unit!160187 () Unit!160184)

(assert (=> b!6872577 (= lt!2458638 Unit!160187)))

(assert (=> b!6872577 false))

(declare-fun head!13788 (List!66409) Context!12174)

(assert (=> b!6872577 (= e!4142480 (head!13788 zl!343))))

(declare-fun d!2158795 () Bool)

(declare-fun e!4142481 () Bool)

(assert (=> d!2158795 e!4142481))

(declare-fun res!2802758 () Bool)

(assert (=> d!2158795 (=> (not res!2802758) (not e!4142481))))

(declare-fun lt!2458639 () Context!12174)

(declare-fun dynLambda!26543 (Int Context!12174) Bool)

(assert (=> d!2158795 (= res!2802758 (dynLambda!26543 lambda!388934 lt!2458639))))

(declare-fun e!4142482 () Context!12174)

(assert (=> d!2158795 (= lt!2458639 e!4142482)))

(declare-fun c!1278981 () Bool)

(declare-fun e!4142479 () Bool)

(assert (=> d!2158795 (= c!1278981 e!4142479)))

(declare-fun res!2802757 () Bool)

(assert (=> d!2158795 (=> (not res!2802757) (not e!4142479))))

(assert (=> d!2158795 (= res!2802757 ((_ is Cons!66285) zl!343))))

(assert (=> d!2158795 (exists!2843 zl!343 lambda!388934)))

(assert (=> d!2158795 (= (getWitness!982 zl!343 lambda!388934) lt!2458639)))

(declare-fun b!6872578 () Bool)

(declare-fun contains!20361 (List!66409 Context!12174) Bool)

(assert (=> b!6872578 (= e!4142481 (contains!20361 zl!343 lt!2458639))))

(declare-fun b!6872579 () Bool)

(assert (=> b!6872579 (= e!4142479 (dynLambda!26543 lambda!388934 (h!72733 zl!343)))))

(declare-fun b!6872580 () Bool)

(assert (=> b!6872580 (= e!4142482 e!4142480)))

(declare-fun c!1278982 () Bool)

(assert (=> b!6872580 (= c!1278982 ((_ is Cons!66285) zl!343))))

(declare-fun b!6872581 () Bool)

(assert (=> b!6872581 (= e!4142482 (h!72733 zl!343))))

(assert (= (and d!2158795 res!2802757) b!6872579))

(assert (= (and d!2158795 c!1278981) b!6872581))

(assert (= (and d!2158795 (not c!1278981)) b!6872580))

(assert (= (and b!6872580 c!1278982) b!6872576))

(assert (= (and b!6872580 (not c!1278982)) b!6872577))

(assert (= (and d!2158795 res!2802758) b!6872578))

(declare-fun b_lambda!260117 () Bool)

(assert (=> (not b_lambda!260117) (not d!2158795)))

(declare-fun b_lambda!260119 () Bool)

(assert (=> (not b_lambda!260119) (not b!6872579)))

(declare-fun m!7602594 () Bool)

(assert (=> d!2158795 m!7602594))

(assert (=> d!2158795 m!7602552))

(declare-fun m!7602596 () Bool)

(assert (=> b!6872579 m!7602596))

(declare-fun m!7602598 () Bool)

(assert (=> b!6872576 m!7602598))

(declare-fun m!7602600 () Bool)

(assert (=> b!6872577 m!7602600))

(declare-fun m!7602602 () Bool)

(assert (=> b!6872578 m!7602602))

(assert (=> b!6872527 d!2158795))

(declare-fun bs!1837412 () Bool)

(declare-fun d!2158809 () Bool)

(assert (= bs!1837412 (and d!2158809 b!6872514)))

(declare-fun lambda!388944 () Int)

(assert (=> bs!1837412 (not (= lambda!388944 lambda!388933))))

(declare-fun bs!1837413 () Bool)

(assert (= bs!1837413 (and d!2158809 b!6872527)))

(assert (=> bs!1837413 (= lambda!388944 lambda!388935)))

(declare-fun bs!1837414 () Bool)

(assert (= bs!1837414 (and d!2158809 d!2158791)))

(assert (=> bs!1837414 (= lambda!388944 lambda!388938)))

(assert (=> d!2158809 (= (inv!85004 (h!72733 zl!343)) (forall!15900 (exprs!6587 (h!72733 zl!343)) lambda!388944))))

(declare-fun bs!1837415 () Bool)

(assert (= bs!1837415 d!2158809))

(declare-fun m!7602604 () Bool)

(assert (=> bs!1837415 m!7602604))

(assert (=> b!6872528 d!2158809))

(declare-fun b!6872669 () Bool)

(assert (=> b!6872669 true))

(assert (=> b!6872669 true))

(declare-fun bs!1837427 () Bool)

(declare-fun b!6872672 () Bool)

(assert (= bs!1837427 (and b!6872672 b!6872669)))

(declare-fun lambda!388959 () Int)

(declare-fun lambda!388958 () Int)

(assert (=> bs!1837427 (not (= lambda!388959 lambda!388958))))

(assert (=> b!6872672 true))

(assert (=> b!6872672 true))

(declare-fun b!6872667 () Bool)

(declare-fun res!2802802 () Bool)

(declare-fun e!4142546 () Bool)

(assert (=> b!6872667 (=> res!2802802 e!4142546)))

(declare-fun call!625962 () Bool)

(assert (=> b!6872667 (= res!2802802 call!625962)))

(declare-fun e!4142541 () Bool)

(assert (=> b!6872667 (= e!4142541 e!4142546)))

(declare-fun call!625961 () Bool)

(assert (=> b!6872669 (= e!4142546 call!625961)))

(declare-fun bm!625956 () Bool)

(declare-fun isEmpty!38640 (List!66410) Bool)

(assert (=> bm!625956 (= call!625962 (isEmpty!38640 s!2326))))

(declare-fun b!6872670 () Bool)

(declare-fun e!4142544 () Bool)

(assert (=> b!6872670 (= e!4142544 e!4142541)))

(declare-fun c!1279009 () Bool)

(assert (=> b!6872670 (= c!1279009 ((_ is Star!16703) r!7292))))

(declare-fun b!6872671 () Bool)

(declare-fun e!4142542 () Bool)

(assert (=> b!6872671 (= e!4142542 (matchRSpec!3804 (regTwo!33919 r!7292) s!2326))))

(assert (=> b!6872672 (= e!4142541 call!625961)))

(declare-fun bm!625957 () Bool)

(declare-fun Exists!3760 (Int) Bool)

(assert (=> bm!625957 (= call!625961 (Exists!3760 (ite c!1279009 lambda!388958 lambda!388959)))))

(declare-fun b!6872673 () Bool)

(declare-fun c!1279010 () Bool)

(assert (=> b!6872673 (= c!1279010 ((_ is Union!16703) r!7292))))

(declare-fun e!4142543 () Bool)

(assert (=> b!6872673 (= e!4142543 e!4142544)))

(declare-fun b!6872674 () Bool)

(assert (=> b!6872674 (= e!4142544 e!4142542)))

(declare-fun res!2802804 () Bool)

(assert (=> b!6872674 (= res!2802804 (matchRSpec!3804 (regOne!33919 r!7292) s!2326))))

(assert (=> b!6872674 (=> res!2802804 e!4142542)))

(declare-fun b!6872675 () Bool)

(declare-fun c!1279008 () Bool)

(assert (=> b!6872675 (= c!1279008 ((_ is ElementMatch!16703) r!7292))))

(declare-fun e!4142547 () Bool)

(assert (=> b!6872675 (= e!4142547 e!4142543)))

(declare-fun b!6872668 () Bool)

(declare-fun e!4142545 () Bool)

(assert (=> b!6872668 (= e!4142545 e!4142547)))

(declare-fun res!2802803 () Bool)

(assert (=> b!6872668 (= res!2802803 (not ((_ is EmptyLang!16703) r!7292)))))

(assert (=> b!6872668 (=> (not res!2802803) (not e!4142547))))

(declare-fun d!2158811 () Bool)

(declare-fun c!1279007 () Bool)

(assert (=> d!2158811 (= c!1279007 ((_ is EmptyExpr!16703) r!7292))))

(assert (=> d!2158811 (= (matchRSpec!3804 r!7292 s!2326) e!4142545)))

(declare-fun b!6872676 () Bool)

(assert (=> b!6872676 (= e!4142545 call!625962)))

(declare-fun b!6872677 () Bool)

(assert (=> b!6872677 (= e!4142543 (= s!2326 (Cons!66286 (c!1278963 r!7292) Nil!66286)))))

(assert (= (and d!2158811 c!1279007) b!6872676))

(assert (= (and d!2158811 (not c!1279007)) b!6872668))

(assert (= (and b!6872668 res!2802803) b!6872675))

(assert (= (and b!6872675 c!1279008) b!6872677))

(assert (= (and b!6872675 (not c!1279008)) b!6872673))

(assert (= (and b!6872673 c!1279010) b!6872674))

(assert (= (and b!6872673 (not c!1279010)) b!6872670))

(assert (= (and b!6872674 (not res!2802804)) b!6872671))

(assert (= (and b!6872670 c!1279009) b!6872667))

(assert (= (and b!6872670 (not c!1279009)) b!6872672))

(assert (= (and b!6872667 (not res!2802802)) b!6872669))

(assert (= (or b!6872669 b!6872672) bm!625957))

(assert (= (or b!6872676 b!6872667) bm!625956))

(declare-fun m!7602654 () Bool)

(assert (=> bm!625956 m!7602654))

(declare-fun m!7602656 () Bool)

(assert (=> b!6872671 m!7602656))

(declare-fun m!7602658 () Bool)

(assert (=> bm!625957 m!7602658))

(declare-fun m!7602660 () Bool)

(assert (=> b!6872674 m!7602660))

(assert (=> b!6872519 d!2158811))

(declare-fun b!6872778 () Bool)

(declare-fun e!4142606 () Bool)

(declare-fun nullable!6662 (Regex!16703) Bool)

(assert (=> b!6872778 (= e!4142606 (nullable!6662 r!7292))))

(declare-fun b!6872779 () Bool)

(declare-fun res!2802858 () Bool)

(declare-fun e!4142602 () Bool)

(assert (=> b!6872779 (=> (not res!2802858) (not e!4142602))))

(declare-fun tail!12842 (List!66410) List!66410)

(assert (=> b!6872779 (= res!2802858 (isEmpty!38640 (tail!12842 s!2326)))))

(declare-fun b!6872780 () Bool)

(declare-fun res!2802862 () Bool)

(declare-fun e!4142603 () Bool)

(assert (=> b!6872780 (=> res!2802862 e!4142603)))

(assert (=> b!6872780 (= res!2802862 (not (isEmpty!38640 (tail!12842 s!2326))))))

(declare-fun d!2158831 () Bool)

(declare-fun e!4142601 () Bool)

(assert (=> d!2158831 e!4142601))

(declare-fun c!1279037 () Bool)

(assert (=> d!2158831 (= c!1279037 ((_ is EmptyExpr!16703) r!7292))))

(declare-fun lt!2458668 () Bool)

(assert (=> d!2158831 (= lt!2458668 e!4142606)))

(declare-fun c!1279035 () Bool)

(assert (=> d!2158831 (= c!1279035 (isEmpty!38640 s!2326))))

(assert (=> d!2158831 (validRegex!8439 r!7292)))

(assert (=> d!2158831 (= (matchR!8886 r!7292 s!2326) lt!2458668)))

(declare-fun b!6872781 () Bool)

(declare-fun derivativeStep!5344 (Regex!16703 C!33676) Regex!16703)

(declare-fun head!13790 (List!66410) C!33676)

(assert (=> b!6872781 (= e!4142606 (matchR!8886 (derivativeStep!5344 r!7292 (head!13790 s!2326)) (tail!12842 s!2326)))))

(declare-fun b!6872782 () Bool)

(assert (=> b!6872782 (= e!4142602 (= (head!13790 s!2326) (c!1278963 r!7292)))))

(declare-fun b!6872783 () Bool)

(declare-fun res!2802857 () Bool)

(declare-fun e!4142607 () Bool)

(assert (=> b!6872783 (=> res!2802857 e!4142607)))

(assert (=> b!6872783 (= res!2802857 e!4142602)))

(declare-fun res!2802856 () Bool)

(assert (=> b!6872783 (=> (not res!2802856) (not e!4142602))))

(assert (=> b!6872783 (= res!2802856 lt!2458668)))

(declare-fun b!6872784 () Bool)

(declare-fun e!4142605 () Bool)

(assert (=> b!6872784 (= e!4142601 e!4142605)))

(declare-fun c!1279036 () Bool)

(assert (=> b!6872784 (= c!1279036 ((_ is EmptyLang!16703) r!7292))))

(declare-fun b!6872785 () Bool)

(declare-fun call!625968 () Bool)

(assert (=> b!6872785 (= e!4142601 (= lt!2458668 call!625968))))

(declare-fun bm!625963 () Bool)

(assert (=> bm!625963 (= call!625968 (isEmpty!38640 s!2326))))

(declare-fun b!6872786 () Bool)

(assert (=> b!6872786 (= e!4142605 (not lt!2458668))))

(declare-fun b!6872787 () Bool)

(declare-fun e!4142604 () Bool)

(assert (=> b!6872787 (= e!4142604 e!4142603)))

(declare-fun res!2802860 () Bool)

(assert (=> b!6872787 (=> res!2802860 e!4142603)))

(assert (=> b!6872787 (= res!2802860 call!625968)))

(declare-fun b!6872788 () Bool)

(assert (=> b!6872788 (= e!4142603 (not (= (head!13790 s!2326) (c!1278963 r!7292))))))

(declare-fun b!6872789 () Bool)

(declare-fun res!2802855 () Bool)

(assert (=> b!6872789 (=> res!2802855 e!4142607)))

(assert (=> b!6872789 (= res!2802855 (not ((_ is ElementMatch!16703) r!7292)))))

(assert (=> b!6872789 (= e!4142605 e!4142607)))

(declare-fun b!6872790 () Bool)

(assert (=> b!6872790 (= e!4142607 e!4142604)))

(declare-fun res!2802861 () Bool)

(assert (=> b!6872790 (=> (not res!2802861) (not e!4142604))))

(assert (=> b!6872790 (= res!2802861 (not lt!2458668))))

(declare-fun b!6872791 () Bool)

(declare-fun res!2802859 () Bool)

(assert (=> b!6872791 (=> (not res!2802859) (not e!4142602))))

(assert (=> b!6872791 (= res!2802859 (not call!625968))))

(assert (= (and d!2158831 c!1279035) b!6872778))

(assert (= (and d!2158831 (not c!1279035)) b!6872781))

(assert (= (and d!2158831 c!1279037) b!6872785))

(assert (= (and d!2158831 (not c!1279037)) b!6872784))

(assert (= (and b!6872784 c!1279036) b!6872786))

(assert (= (and b!6872784 (not c!1279036)) b!6872789))

(assert (= (and b!6872789 (not res!2802855)) b!6872783))

(assert (= (and b!6872783 res!2802856) b!6872791))

(assert (= (and b!6872791 res!2802859) b!6872779))

(assert (= (and b!6872779 res!2802858) b!6872782))

(assert (= (and b!6872783 (not res!2802857)) b!6872790))

(assert (= (and b!6872790 res!2802861) b!6872787))

(assert (= (and b!6872787 (not res!2802860)) b!6872780))

(assert (= (and b!6872780 (not res!2802862)) b!6872788))

(assert (= (or b!6872785 b!6872787 b!6872791) bm!625963))

(declare-fun m!7602674 () Bool)

(assert (=> b!6872788 m!7602674))

(assert (=> d!2158831 m!7602654))

(assert (=> d!2158831 m!7602526))

(declare-fun m!7602676 () Bool)

(assert (=> b!6872778 m!7602676))

(assert (=> b!6872781 m!7602674))

(assert (=> b!6872781 m!7602674))

(declare-fun m!7602678 () Bool)

(assert (=> b!6872781 m!7602678))

(declare-fun m!7602680 () Bool)

(assert (=> b!6872781 m!7602680))

(assert (=> b!6872781 m!7602678))

(assert (=> b!6872781 m!7602680))

(declare-fun m!7602682 () Bool)

(assert (=> b!6872781 m!7602682))

(assert (=> b!6872782 m!7602674))

(assert (=> b!6872780 m!7602680))

(assert (=> b!6872780 m!7602680))

(declare-fun m!7602684 () Bool)

(assert (=> b!6872780 m!7602684))

(assert (=> b!6872779 m!7602680))

(assert (=> b!6872779 m!7602680))

(assert (=> b!6872779 m!7602684))

(assert (=> bm!625963 m!7602654))

(assert (=> b!6872519 d!2158831))

(declare-fun d!2158837 () Bool)

(assert (=> d!2158837 (= (matchR!8886 r!7292 s!2326) (matchRSpec!3804 r!7292 s!2326))))

(declare-fun lt!2458675 () Unit!160184)

(declare-fun choose!51209 (Regex!16703 List!66410) Unit!160184)

(assert (=> d!2158837 (= lt!2458675 (choose!51209 r!7292 s!2326))))

(assert (=> d!2158837 (validRegex!8439 r!7292)))

(assert (=> d!2158837 (= (mainMatchTheorem!3804 r!7292 s!2326) lt!2458675)))

(declare-fun bs!1837447 () Bool)

(assert (= bs!1837447 d!2158837))

(assert (=> bs!1837447 m!7602522))

(assert (=> bs!1837447 m!7602520))

(declare-fun m!7602714 () Bool)

(assert (=> bs!1837447 m!7602714))

(assert (=> bs!1837447 m!7602526))

(assert (=> b!6872519 d!2158837))

(declare-fun b!6872830 () Bool)

(declare-fun e!4142639 () Bool)

(declare-fun e!4142635 () Bool)

(assert (=> b!6872830 (= e!4142639 e!4142635)))

(declare-fun res!2802877 () Bool)

(assert (=> b!6872830 (= res!2802877 (not (nullable!6662 (reg!17032 r!7292))))))

(assert (=> b!6872830 (=> (not res!2802877) (not e!4142635))))

(declare-fun d!2158847 () Bool)

(declare-fun res!2802881 () Bool)

(declare-fun e!4142637 () Bool)

(assert (=> d!2158847 (=> res!2802881 e!4142637)))

(assert (=> d!2158847 (= res!2802881 ((_ is ElementMatch!16703) r!7292))))

(assert (=> d!2158847 (= (validRegex!8439 r!7292) e!4142637)))

(declare-fun b!6872831 () Bool)

(declare-fun call!625976 () Bool)

(assert (=> b!6872831 (= e!4142635 call!625976)))

(declare-fun bm!625970 () Bool)

(declare-fun call!625977 () Bool)

(declare-fun c!1279049 () Bool)

(assert (=> bm!625970 (= call!625977 (validRegex!8439 (ite c!1279049 (regOne!33919 r!7292) (regOne!33918 r!7292))))))

(declare-fun c!1279050 () Bool)

(declare-fun bm!625971 () Bool)

(assert (=> bm!625971 (= call!625976 (validRegex!8439 (ite c!1279050 (reg!17032 r!7292) (ite c!1279049 (regTwo!33919 r!7292) (regTwo!33918 r!7292)))))))

(declare-fun b!6872832 () Bool)

(declare-fun res!2802879 () Bool)

(declare-fun e!4142633 () Bool)

(assert (=> b!6872832 (=> (not res!2802879) (not e!4142633))))

(assert (=> b!6872832 (= res!2802879 call!625977)))

(declare-fun e!4142636 () Bool)

(assert (=> b!6872832 (= e!4142636 e!4142633)))

(declare-fun bm!625972 () Bool)

(declare-fun call!625975 () Bool)

(assert (=> bm!625972 (= call!625975 call!625976)))

(declare-fun b!6872833 () Bool)

(assert (=> b!6872833 (= e!4142633 call!625975)))

(declare-fun b!6872834 () Bool)

(declare-fun e!4142634 () Bool)

(declare-fun e!4142638 () Bool)

(assert (=> b!6872834 (= e!4142634 e!4142638)))

(declare-fun res!2802878 () Bool)

(assert (=> b!6872834 (=> (not res!2802878) (not e!4142638))))

(assert (=> b!6872834 (= res!2802878 call!625977)))

(declare-fun b!6872835 () Bool)

(assert (=> b!6872835 (= e!4142639 e!4142636)))

(assert (=> b!6872835 (= c!1279049 ((_ is Union!16703) r!7292))))

(declare-fun b!6872836 () Bool)

(declare-fun res!2802880 () Bool)

(assert (=> b!6872836 (=> res!2802880 e!4142634)))

(assert (=> b!6872836 (= res!2802880 (not ((_ is Concat!25548) r!7292)))))

(assert (=> b!6872836 (= e!4142636 e!4142634)))

(declare-fun b!6872837 () Bool)

(assert (=> b!6872837 (= e!4142637 e!4142639)))

(assert (=> b!6872837 (= c!1279050 ((_ is Star!16703) r!7292))))

(declare-fun b!6872838 () Bool)

(assert (=> b!6872838 (= e!4142638 call!625975)))

(assert (= (and d!2158847 (not res!2802881)) b!6872837))

(assert (= (and b!6872837 c!1279050) b!6872830))

(assert (= (and b!6872837 (not c!1279050)) b!6872835))

(assert (= (and b!6872830 res!2802877) b!6872831))

(assert (= (and b!6872835 c!1279049) b!6872832))

(assert (= (and b!6872835 (not c!1279049)) b!6872836))

(assert (= (and b!6872832 res!2802879) b!6872833))

(assert (= (and b!6872836 (not res!2802880)) b!6872834))

(assert (= (and b!6872834 res!2802878) b!6872838))

(assert (= (or b!6872833 b!6872838) bm!625972))

(assert (= (or b!6872832 b!6872834) bm!625970))

(assert (= (or b!6872831 bm!625972) bm!625971))

(declare-fun m!7602728 () Bool)

(assert (=> b!6872830 m!7602728))

(declare-fun m!7602730 () Bool)

(assert (=> bm!625970 m!7602730))

(declare-fun m!7602732 () Bool)

(assert (=> bm!625971 m!7602732))

(assert (=> start!663180 d!2158847))

(declare-fun bs!1837464 () Bool)

(declare-fun d!2158855 () Bool)

(assert (= bs!1837464 (and d!2158855 b!6872514)))

(declare-fun lambda!388978 () Int)

(assert (=> bs!1837464 (not (= lambda!388978 lambda!388933))))

(declare-fun bs!1837465 () Bool)

(assert (= bs!1837465 (and d!2158855 b!6872527)))

(assert (=> bs!1837465 (not (= lambda!388978 lambda!388935))))

(declare-fun bs!1837466 () Bool)

(assert (= bs!1837466 (and d!2158855 d!2158791)))

(assert (=> bs!1837466 (not (= lambda!388978 lambda!388938))))

(declare-fun bs!1837467 () Bool)

(assert (= bs!1837467 (and d!2158855 d!2158809)))

(assert (=> bs!1837467 (not (= lambda!388978 lambda!388944))))

(assert (=> d!2158855 true))

(declare-fun order!27745 () Int)

(declare-fun dynLambda!26545 (Int Int) Int)

(assert (=> d!2158855 (< (dynLambda!26545 order!27745 lambda!388933) (dynLambda!26545 order!27745 lambda!388978))))

(assert (=> d!2158855 (= (exists!2842 lt!2458615 lambda!388933) (not (forall!15900 lt!2458615 lambda!388978)))))

(declare-fun bs!1837468 () Bool)

(assert (= bs!1837468 d!2158855))

(declare-fun m!7602740 () Bool)

(assert (=> bs!1837468 m!7602740))

(assert (=> b!6872529 d!2158855))

(declare-fun d!2158859 () Bool)

(declare-fun c!1279063 () Bool)

(assert (=> d!2158859 (= c!1279063 (isEmpty!38640 s!2326))))

(declare-fun e!4142667 () Bool)

(assert (=> d!2158859 (= (matchZipper!2669 lt!2458611 s!2326) e!4142667)))

(declare-fun b!6872886 () Bool)

(declare-fun nullableZipper!2373 ((InoxSet Context!12174)) Bool)

(assert (=> b!6872886 (= e!4142667 (nullableZipper!2373 lt!2458611))))

(declare-fun b!6872887 () Bool)

(declare-fun derivationStepZipper!2620 ((InoxSet Context!12174) C!33676) (InoxSet Context!12174))

(assert (=> b!6872887 (= e!4142667 (matchZipper!2669 (derivationStepZipper!2620 lt!2458611 (head!13790 s!2326)) (tail!12842 s!2326)))))

(assert (= (and d!2158859 c!1279063) b!6872886))

(assert (= (and d!2158859 (not c!1279063)) b!6872887))

(assert (=> d!2158859 m!7602654))

(declare-fun m!7602742 () Bool)

(assert (=> b!6872886 m!7602742))

(assert (=> b!6872887 m!7602674))

(assert (=> b!6872887 m!7602674))

(declare-fun m!7602744 () Bool)

(assert (=> b!6872887 m!7602744))

(assert (=> b!6872887 m!7602680))

(assert (=> b!6872887 m!7602744))

(assert (=> b!6872887 m!7602680))

(declare-fun m!7602746 () Bool)

(assert (=> b!6872887 m!7602746))

(assert (=> b!6872518 d!2158859))

(declare-fun b!6872888 () Bool)

(declare-fun e!4142673 () Bool)

(assert (=> b!6872888 (= e!4142673 (nullable!6662 lt!2458620))))

(declare-fun b!6872889 () Bool)

(declare-fun res!2802906 () Bool)

(declare-fun e!4142669 () Bool)

(assert (=> b!6872889 (=> (not res!2802906) (not e!4142669))))

(assert (=> b!6872889 (= res!2802906 (isEmpty!38640 (tail!12842 s!2326)))))

(declare-fun b!6872890 () Bool)

(declare-fun res!2802910 () Bool)

(declare-fun e!4142670 () Bool)

(assert (=> b!6872890 (=> res!2802910 e!4142670)))

(assert (=> b!6872890 (= res!2802910 (not (isEmpty!38640 (tail!12842 s!2326))))))

(declare-fun d!2158861 () Bool)

(declare-fun e!4142668 () Bool)

(assert (=> d!2158861 e!4142668))

(declare-fun c!1279066 () Bool)

(assert (=> d!2158861 (= c!1279066 ((_ is EmptyExpr!16703) lt!2458620))))

(declare-fun lt!2458682 () Bool)

(assert (=> d!2158861 (= lt!2458682 e!4142673)))

(declare-fun c!1279064 () Bool)

(assert (=> d!2158861 (= c!1279064 (isEmpty!38640 s!2326))))

(assert (=> d!2158861 (validRegex!8439 lt!2458620)))

(assert (=> d!2158861 (= (matchR!8886 lt!2458620 s!2326) lt!2458682)))

(declare-fun b!6872891 () Bool)

(assert (=> b!6872891 (= e!4142673 (matchR!8886 (derivativeStep!5344 lt!2458620 (head!13790 s!2326)) (tail!12842 s!2326)))))

(declare-fun b!6872892 () Bool)

(assert (=> b!6872892 (= e!4142669 (= (head!13790 s!2326) (c!1278963 lt!2458620)))))

(declare-fun b!6872893 () Bool)

(declare-fun res!2802905 () Bool)

(declare-fun e!4142674 () Bool)

(assert (=> b!6872893 (=> res!2802905 e!4142674)))

(assert (=> b!6872893 (= res!2802905 e!4142669)))

(declare-fun res!2802904 () Bool)

(assert (=> b!6872893 (=> (not res!2802904) (not e!4142669))))

(assert (=> b!6872893 (= res!2802904 lt!2458682)))

(declare-fun b!6872894 () Bool)

(declare-fun e!4142672 () Bool)

(assert (=> b!6872894 (= e!4142668 e!4142672)))

(declare-fun c!1279065 () Bool)

(assert (=> b!6872894 (= c!1279065 ((_ is EmptyLang!16703) lt!2458620))))

(declare-fun b!6872895 () Bool)

(declare-fun call!625983 () Bool)

(assert (=> b!6872895 (= e!4142668 (= lt!2458682 call!625983))))

(declare-fun bm!625978 () Bool)

(assert (=> bm!625978 (= call!625983 (isEmpty!38640 s!2326))))

(declare-fun b!6872896 () Bool)

(assert (=> b!6872896 (= e!4142672 (not lt!2458682))))

(declare-fun b!6872897 () Bool)

(declare-fun e!4142671 () Bool)

(assert (=> b!6872897 (= e!4142671 e!4142670)))

(declare-fun res!2802908 () Bool)

(assert (=> b!6872897 (=> res!2802908 e!4142670)))

(assert (=> b!6872897 (= res!2802908 call!625983)))

(declare-fun b!6872898 () Bool)

(assert (=> b!6872898 (= e!4142670 (not (= (head!13790 s!2326) (c!1278963 lt!2458620))))))

(declare-fun b!6872899 () Bool)

(declare-fun res!2802903 () Bool)

(assert (=> b!6872899 (=> res!2802903 e!4142674)))

(assert (=> b!6872899 (= res!2802903 (not ((_ is ElementMatch!16703) lt!2458620)))))

(assert (=> b!6872899 (= e!4142672 e!4142674)))

(declare-fun b!6872900 () Bool)

(assert (=> b!6872900 (= e!4142674 e!4142671)))

(declare-fun res!2802909 () Bool)

(assert (=> b!6872900 (=> (not res!2802909) (not e!4142671))))

(assert (=> b!6872900 (= res!2802909 (not lt!2458682))))

(declare-fun b!6872901 () Bool)

(declare-fun res!2802907 () Bool)

(assert (=> b!6872901 (=> (not res!2802907) (not e!4142669))))

(assert (=> b!6872901 (= res!2802907 (not call!625983))))

(assert (= (and d!2158861 c!1279064) b!6872888))

(assert (= (and d!2158861 (not c!1279064)) b!6872891))

(assert (= (and d!2158861 c!1279066) b!6872895))

(assert (= (and d!2158861 (not c!1279066)) b!6872894))

(assert (= (and b!6872894 c!1279065) b!6872896))

(assert (= (and b!6872894 (not c!1279065)) b!6872899))

(assert (= (and b!6872899 (not res!2802903)) b!6872893))

(assert (= (and b!6872893 res!2802904) b!6872901))

(assert (= (and b!6872901 res!2802907) b!6872889))

(assert (= (and b!6872889 res!2802906) b!6872892))

(assert (= (and b!6872893 (not res!2802905)) b!6872900))

(assert (= (and b!6872900 res!2802909) b!6872897))

(assert (= (and b!6872897 (not res!2802908)) b!6872890))

(assert (= (and b!6872890 (not res!2802910)) b!6872898))

(assert (= (or b!6872895 b!6872897 b!6872901) bm!625978))

(assert (=> b!6872898 m!7602674))

(assert (=> d!2158861 m!7602654))

(assert (=> d!2158861 m!7602550))

(declare-fun m!7602748 () Bool)

(assert (=> b!6872888 m!7602748))

(assert (=> b!6872891 m!7602674))

(assert (=> b!6872891 m!7602674))

(declare-fun m!7602750 () Bool)

(assert (=> b!6872891 m!7602750))

(assert (=> b!6872891 m!7602680))

(assert (=> b!6872891 m!7602750))

(assert (=> b!6872891 m!7602680))

(declare-fun m!7602752 () Bool)

(assert (=> b!6872891 m!7602752))

(assert (=> b!6872892 m!7602674))

(assert (=> b!6872890 m!7602680))

(assert (=> b!6872890 m!7602680))

(assert (=> b!6872890 m!7602684))

(assert (=> b!6872889 m!7602680))

(assert (=> b!6872889 m!7602680))

(assert (=> b!6872889 m!7602684))

(assert (=> bm!625978 m!7602654))

(assert (=> b!6872518 d!2158861))

(declare-fun d!2158863 () Bool)

(declare-fun lt!2458686 () Bool)

(declare-fun content!13015 (List!66408) (InoxSet Regex!16703))

(assert (=> d!2158863 (= lt!2458686 (select (content!13015 lt!2458615) lt!2458620))))

(declare-fun e!4142694 () Bool)

(assert (=> d!2158863 (= lt!2458686 e!4142694)))

(declare-fun res!2802927 () Bool)

(assert (=> d!2158863 (=> (not res!2802927) (not e!4142694))))

(assert (=> d!2158863 (= res!2802927 ((_ is Cons!66284) lt!2458615))))

(assert (=> d!2158863 (= (contains!20359 lt!2458615 lt!2458620) lt!2458686)))

(declare-fun b!6872935 () Bool)

(declare-fun e!4142693 () Bool)

(assert (=> b!6872935 (= e!4142694 e!4142693)))

(declare-fun res!2802926 () Bool)

(assert (=> b!6872935 (=> res!2802926 e!4142693)))

(assert (=> b!6872935 (= res!2802926 (= (h!72732 lt!2458615) lt!2458620))))

(declare-fun b!6872936 () Bool)

(assert (=> b!6872936 (= e!4142693 (contains!20359 (t!380151 lt!2458615) lt!2458620))))

(assert (= (and d!2158863 res!2802927) b!6872935))

(assert (= (and b!6872935 (not res!2802926)) b!6872936))

(declare-fun m!7602766 () Bool)

(assert (=> d!2158863 m!7602766))

(declare-fun m!7602768 () Bool)

(assert (=> d!2158863 m!7602768))

(declare-fun m!7602770 () Bool)

(assert (=> b!6872936 m!7602770))

(assert (=> b!6872518 d!2158863))

(declare-fun bs!1837474 () Bool)

(declare-fun d!2158869 () Bool)

(assert (= bs!1837474 (and d!2158869 b!6872527)))

(declare-fun lambda!388987 () Int)

(assert (=> bs!1837474 (= lambda!388987 lambda!388935)))

(declare-fun bs!1837475 () Bool)

(assert (= bs!1837475 (and d!2158869 d!2158855)))

(assert (=> bs!1837475 (not (= lambda!388987 lambda!388978))))

(declare-fun bs!1837476 () Bool)

(assert (= bs!1837476 (and d!2158869 d!2158791)))

(assert (=> bs!1837476 (= lambda!388987 lambda!388938)))

(declare-fun bs!1837477 () Bool)

(assert (= bs!1837477 (and d!2158869 d!2158809)))

(assert (=> bs!1837477 (= lambda!388987 lambda!388944)))

(declare-fun bs!1837478 () Bool)

(assert (= bs!1837478 (and d!2158869 b!6872514)))

(assert (=> bs!1837478 (not (= lambda!388987 lambda!388933))))

(declare-fun b!6873014 () Bool)

(declare-fun e!4142735 () Bool)

(declare-fun lt!2458695 () Regex!16703)

(declare-fun head!13791 (List!66408) Regex!16703)

(assert (=> b!6873014 (= e!4142735 (= lt!2458695 (head!13791 (exprs!6587 lt!2458605))))))

(declare-fun b!6873015 () Bool)

(declare-fun e!4142737 () Bool)

(declare-fun isEmpty!38641 (List!66408) Bool)

(assert (=> b!6873015 (= e!4142737 (isEmpty!38641 (t!380151 (exprs!6587 lt!2458605))))))

(declare-fun b!6873016 () Bool)

(declare-fun e!4142734 () Regex!16703)

(assert (=> b!6873016 (= e!4142734 EmptyExpr!16703)))

(declare-fun b!6873017 () Bool)

(assert (=> b!6873017 (= e!4142734 (Concat!25548 (h!72732 (exprs!6587 lt!2458605)) (generalisedConcat!2291 (t!380151 (exprs!6587 lt!2458605)))))))

(declare-fun e!4142738 () Bool)

(assert (=> d!2158869 e!4142738))

(declare-fun res!2802936 () Bool)

(assert (=> d!2158869 (=> (not res!2802936) (not e!4142738))))

(assert (=> d!2158869 (= res!2802936 (validRegex!8439 lt!2458695))))

(declare-fun e!4142736 () Regex!16703)

(assert (=> d!2158869 (= lt!2458695 e!4142736)))

(declare-fun c!1279083 () Bool)

(assert (=> d!2158869 (= c!1279083 e!4142737)))

(declare-fun res!2802935 () Bool)

(assert (=> d!2158869 (=> (not res!2802935) (not e!4142737))))

(assert (=> d!2158869 (= res!2802935 ((_ is Cons!66284) (exprs!6587 lt!2458605)))))

(assert (=> d!2158869 (forall!15900 (exprs!6587 lt!2458605) lambda!388987)))

(assert (=> d!2158869 (= (generalisedConcat!2291 (exprs!6587 lt!2458605)) lt!2458695)))

(declare-fun b!6873018 () Bool)

(declare-fun isConcat!1543 (Regex!16703) Bool)

(assert (=> b!6873018 (= e!4142735 (isConcat!1543 lt!2458695))))

(declare-fun b!6873019 () Bool)

(declare-fun e!4142733 () Bool)

(assert (=> b!6873019 (= e!4142738 e!4142733)))

(declare-fun c!1279082 () Bool)

(assert (=> b!6873019 (= c!1279082 (isEmpty!38641 (exprs!6587 lt!2458605)))))

(declare-fun b!6873020 () Bool)

(assert (=> b!6873020 (= e!4142736 (h!72732 (exprs!6587 lt!2458605)))))

(declare-fun b!6873021 () Bool)

(assert (=> b!6873021 (= e!4142736 e!4142734)))

(declare-fun c!1279085 () Bool)

(assert (=> b!6873021 (= c!1279085 ((_ is Cons!66284) (exprs!6587 lt!2458605)))))

(declare-fun b!6873022 () Bool)

(assert (=> b!6873022 (= e!4142733 e!4142735)))

(declare-fun c!1279084 () Bool)

(declare-fun tail!12843 (List!66408) List!66408)

(assert (=> b!6873022 (= c!1279084 (isEmpty!38641 (tail!12843 (exprs!6587 lt!2458605))))))

(declare-fun b!6873023 () Bool)

(declare-fun isEmptyExpr!2020 (Regex!16703) Bool)

(assert (=> b!6873023 (= e!4142733 (isEmptyExpr!2020 lt!2458695))))

(assert (= (and d!2158869 res!2802935) b!6873015))

(assert (= (and d!2158869 c!1279083) b!6873020))

(assert (= (and d!2158869 (not c!1279083)) b!6873021))

(assert (= (and b!6873021 c!1279085) b!6873017))

(assert (= (and b!6873021 (not c!1279085)) b!6873016))

(assert (= (and d!2158869 res!2802936) b!6873019))

(assert (= (and b!6873019 c!1279082) b!6873023))

(assert (= (and b!6873019 (not c!1279082)) b!6873022))

(assert (= (and b!6873022 c!1279084) b!6873014))

(assert (= (and b!6873022 (not c!1279084)) b!6873018))

(declare-fun m!7602794 () Bool)

(assert (=> b!6873017 m!7602794))

(declare-fun m!7602796 () Bool)

(assert (=> b!6873018 m!7602796))

(declare-fun m!7602798 () Bool)

(assert (=> d!2158869 m!7602798))

(declare-fun m!7602800 () Bool)

(assert (=> d!2158869 m!7602800))

(declare-fun m!7602802 () Bool)

(assert (=> b!6873014 m!7602802))

(declare-fun m!7602804 () Bool)

(assert (=> b!6873019 m!7602804))

(declare-fun m!7602806 () Bool)

(assert (=> b!6873015 m!7602806))

(declare-fun m!7602808 () Bool)

(assert (=> b!6873023 m!7602808))

(declare-fun m!7602810 () Bool)

(assert (=> b!6873022 m!7602810))

(assert (=> b!6873022 m!7602810))

(declare-fun m!7602812 () Bool)

(assert (=> b!6873022 m!7602812))

(assert (=> b!6872518 d!2158869))

(declare-fun b!6873024 () Bool)

(declare-fun e!4142745 () Bool)

(declare-fun e!4142741 () Bool)

(assert (=> b!6873024 (= e!4142745 e!4142741)))

(declare-fun res!2802937 () Bool)

(assert (=> b!6873024 (= res!2802937 (not (nullable!6662 (reg!17032 lt!2458620))))))

(assert (=> b!6873024 (=> (not res!2802937) (not e!4142741))))

(declare-fun d!2158879 () Bool)

(declare-fun res!2802941 () Bool)

(declare-fun e!4142743 () Bool)

(assert (=> d!2158879 (=> res!2802941 e!4142743)))

(assert (=> d!2158879 (= res!2802941 ((_ is ElementMatch!16703) lt!2458620))))

(assert (=> d!2158879 (= (validRegex!8439 lt!2458620) e!4142743)))

(declare-fun b!6873025 () Bool)

(declare-fun call!625990 () Bool)

(assert (=> b!6873025 (= e!4142741 call!625990)))

(declare-fun bm!625984 () Bool)

(declare-fun call!625991 () Bool)

(declare-fun c!1279086 () Bool)

(assert (=> bm!625984 (= call!625991 (validRegex!8439 (ite c!1279086 (regOne!33919 lt!2458620) (regOne!33918 lt!2458620))))))

(declare-fun c!1279087 () Bool)

(declare-fun bm!625985 () Bool)

(assert (=> bm!625985 (= call!625990 (validRegex!8439 (ite c!1279087 (reg!17032 lt!2458620) (ite c!1279086 (regTwo!33919 lt!2458620) (regTwo!33918 lt!2458620)))))))

(declare-fun b!6873026 () Bool)

(declare-fun res!2802939 () Bool)

(declare-fun e!4142739 () Bool)

(assert (=> b!6873026 (=> (not res!2802939) (not e!4142739))))

(assert (=> b!6873026 (= res!2802939 call!625991)))

(declare-fun e!4142742 () Bool)

(assert (=> b!6873026 (= e!4142742 e!4142739)))

(declare-fun bm!625986 () Bool)

(declare-fun call!625989 () Bool)

(assert (=> bm!625986 (= call!625989 call!625990)))

(declare-fun b!6873027 () Bool)

(assert (=> b!6873027 (= e!4142739 call!625989)))

(declare-fun b!6873028 () Bool)

(declare-fun e!4142740 () Bool)

(declare-fun e!4142744 () Bool)

(assert (=> b!6873028 (= e!4142740 e!4142744)))

(declare-fun res!2802938 () Bool)

(assert (=> b!6873028 (=> (not res!2802938) (not e!4142744))))

(assert (=> b!6873028 (= res!2802938 call!625991)))

(declare-fun b!6873029 () Bool)

(assert (=> b!6873029 (= e!4142745 e!4142742)))

(assert (=> b!6873029 (= c!1279086 ((_ is Union!16703) lt!2458620))))

(declare-fun b!6873030 () Bool)

(declare-fun res!2802940 () Bool)

(assert (=> b!6873030 (=> res!2802940 e!4142740)))

(assert (=> b!6873030 (= res!2802940 (not ((_ is Concat!25548) lt!2458620)))))

(assert (=> b!6873030 (= e!4142742 e!4142740)))

(declare-fun b!6873031 () Bool)

(assert (=> b!6873031 (= e!4142743 e!4142745)))

(assert (=> b!6873031 (= c!1279087 ((_ is Star!16703) lt!2458620))))

(declare-fun b!6873032 () Bool)

(assert (=> b!6873032 (= e!4142744 call!625989)))

(assert (= (and d!2158879 (not res!2802941)) b!6873031))

(assert (= (and b!6873031 c!1279087) b!6873024))

(assert (= (and b!6873031 (not c!1279087)) b!6873029))

(assert (= (and b!6873024 res!2802937) b!6873025))

(assert (= (and b!6873029 c!1279086) b!6873026))

(assert (= (and b!6873029 (not c!1279086)) b!6873030))

(assert (= (and b!6873026 res!2802939) b!6873027))

(assert (= (and b!6873030 (not res!2802940)) b!6873028))

(assert (= (and b!6873028 res!2802938) b!6873032))

(assert (= (or b!6873027 b!6873032) bm!625986))

(assert (= (or b!6873026 b!6873028) bm!625984))

(assert (= (or b!6873025 bm!625986) bm!625985))

(declare-fun m!7602814 () Bool)

(assert (=> b!6873024 m!7602814))

(declare-fun m!7602816 () Bool)

(assert (=> bm!625984 m!7602816))

(declare-fun m!7602818 () Bool)

(assert (=> bm!625985 m!7602818))

(assert (=> b!6872518 d!2158879))

(declare-fun d!2158881 () Bool)

(assert (=> d!2158881 (contains!20359 (unfocusZipperList!2120 zl!343) (generalisedConcat!2291 (exprs!6587 lt!2458605)))))

(declare-fun lt!2458698 () Unit!160184)

(declare-fun choose!51212 (List!66409 Context!12174) Unit!160184)

(assert (=> d!2158881 (= lt!2458698 (choose!51212 zl!343 lt!2458605))))

(assert (=> d!2158881 (contains!20361 zl!343 lt!2458605)))

(assert (=> d!2158881 (= (lemmaZipperContainsContextUnfocusListContainsConcat!12 zl!343 lt!2458605) lt!2458698)))

(declare-fun bs!1837479 () Bool)

(assert (= bs!1837479 d!2158881))

(declare-fun m!7602820 () Bool)

(assert (=> bs!1837479 m!7602820))

(assert (=> bs!1837479 m!7602546))

(assert (=> bs!1837479 m!7602500))

(assert (=> bs!1837479 m!7602546))

(declare-fun m!7602822 () Bool)

(assert (=> bs!1837479 m!7602822))

(declare-fun m!7602824 () Bool)

(assert (=> bs!1837479 m!7602824))

(assert (=> bs!1837479 m!7602500))

(assert (=> b!6872518 d!2158881))

(declare-fun d!2158883 () Bool)

(assert (=> d!2158883 (= (matchR!8886 lt!2458620 s!2326) (matchZipper!2669 lt!2458611 s!2326))))

(declare-fun lt!2458701 () Unit!160184)

(declare-fun choose!51213 ((InoxSet Context!12174) List!66409 Regex!16703 List!66410) Unit!160184)

(assert (=> d!2158883 (= lt!2458701 (choose!51213 lt!2458611 lt!2458619 lt!2458620 s!2326))))

(assert (=> d!2158883 (validRegex!8439 lt!2458620)))

(assert (=> d!2158883 (= (theoremZipperRegexEquiv!965 lt!2458611 lt!2458619 lt!2458620 s!2326) lt!2458701)))

(declare-fun bs!1837480 () Bool)

(assert (= bs!1837480 d!2158883))

(assert (=> bs!1837480 m!7602536))

(assert (=> bs!1837480 m!7602542))

(declare-fun m!7602826 () Bool)

(assert (=> bs!1837480 m!7602826))

(assert (=> bs!1837480 m!7602550))

(assert (=> b!6872518 d!2158883))

(declare-fun d!2158885 () Bool)

(declare-fun lt!2458704 () Regex!16703)

(assert (=> d!2158885 (validRegex!8439 lt!2458704)))

(declare-fun generalisedUnion!2536 (List!66408) Regex!16703)

(assert (=> d!2158885 (= lt!2458704 (generalisedUnion!2536 (unfocusZipperList!2120 zl!343)))))

(assert (=> d!2158885 (= (unfocusZipper!2445 zl!343) lt!2458704)))

(declare-fun bs!1837481 () Bool)

(assert (= bs!1837481 d!2158885))

(declare-fun m!7602828 () Bool)

(assert (=> bs!1837481 m!7602828))

(assert (=> bs!1837481 m!7602500))

(assert (=> bs!1837481 m!7602500))

(declare-fun m!7602830 () Bool)

(assert (=> bs!1837481 m!7602830))

(assert (=> b!6872531 d!2158885))

(declare-fun d!2158887 () Bool)

(assert (=> d!2158887 (= (isEmpty!38637 (t!380152 zl!343)) ((_ is Nil!66285) (t!380152 zl!343)))))

(assert (=> b!6872512 d!2158887))

(declare-fun bs!1837482 () Bool)

(declare-fun d!2158889 () Bool)

(assert (= bs!1837482 (and d!2158889 b!6872527)))

(declare-fun lambda!388988 () Int)

(assert (=> bs!1837482 (= lambda!388988 lambda!388935)))

(declare-fun bs!1837483 () Bool)

(assert (= bs!1837483 (and d!2158889 d!2158855)))

(assert (=> bs!1837483 (not (= lambda!388988 lambda!388978))))

(declare-fun bs!1837484 () Bool)

(assert (= bs!1837484 (and d!2158889 d!2158791)))

(assert (=> bs!1837484 (= lambda!388988 lambda!388938)))

(declare-fun bs!1837485 () Bool)

(assert (= bs!1837485 (and d!2158889 d!2158809)))

(assert (=> bs!1837485 (= lambda!388988 lambda!388944)))

(declare-fun bs!1837486 () Bool)

(assert (= bs!1837486 (and d!2158889 b!6872514)))

(assert (=> bs!1837486 (not (= lambda!388988 lambda!388933))))

(declare-fun bs!1837487 () Bool)

(assert (= bs!1837487 (and d!2158889 d!2158869)))

(assert (=> bs!1837487 (= lambda!388988 lambda!388987)))

(assert (=> d!2158889 (= (inv!85004 setElem!47259) (forall!15900 (exprs!6587 setElem!47259) lambda!388988))))

(declare-fun bs!1837488 () Bool)

(assert (= bs!1837488 d!2158889))

(declare-fun m!7602832 () Bool)

(assert (=> bs!1837488 m!7602832))

(assert (=> setNonEmpty!47259 d!2158889))

(declare-fun d!2158891 () Bool)

(declare-fun c!1279089 () Bool)

(assert (=> d!2158891 (= c!1279089 (isEmpty!38640 s!2326))))

(declare-fun e!4142746 () Bool)

(assert (=> d!2158891 (= (matchZipper!2669 z!1189 s!2326) e!4142746)))

(declare-fun b!6873033 () Bool)

(assert (=> b!6873033 (= e!4142746 (nullableZipper!2373 z!1189))))

(declare-fun b!6873034 () Bool)

(assert (=> b!6873034 (= e!4142746 (matchZipper!2669 (derivationStepZipper!2620 z!1189 (head!13790 s!2326)) (tail!12842 s!2326)))))

(assert (= (and d!2158891 c!1279089) b!6873033))

(assert (= (and d!2158891 (not c!1279089)) b!6873034))

(assert (=> d!2158891 m!7602654))

(declare-fun m!7602834 () Bool)

(assert (=> b!6873033 m!7602834))

(assert (=> b!6873034 m!7602674))

(assert (=> b!6873034 m!7602674))

(declare-fun m!7602836 () Bool)

(assert (=> b!6873034 m!7602836))

(assert (=> b!6873034 m!7602680))

(assert (=> b!6873034 m!7602836))

(assert (=> b!6873034 m!7602680))

(declare-fun m!7602838 () Bool)

(assert (=> b!6873034 m!7602838))

(assert (=> b!6872523 d!2158891))

(assert (=> b!6872513 d!2158887))

(declare-fun d!2158893 () Bool)

(declare-fun lt!2458707 () Int)

(assert (=> d!2158893 (>= lt!2458707 0)))

(declare-fun e!4142749 () Int)

(assert (=> d!2158893 (= lt!2458707 e!4142749)))

(declare-fun c!1279092 () Bool)

(assert (=> d!2158893 (= c!1279092 ((_ is Cons!66285) lt!2458619))))

(assert (=> d!2158893 (= (zipperDepthTotal!452 lt!2458619) lt!2458707)))

(declare-fun b!6873039 () Bool)

(assert (=> b!6873039 (= e!4142749 (+ (contextDepthTotal!424 (h!72733 lt!2458619)) (zipperDepthTotal!452 (t!380152 lt!2458619))))))

(declare-fun b!6873040 () Bool)

(assert (=> b!6873040 (= e!4142749 0)))

(assert (= (and d!2158893 c!1279092) b!6873039))

(assert (= (and d!2158893 (not c!1279092)) b!6873040))

(declare-fun m!7602840 () Bool)

(assert (=> b!6873039 m!7602840))

(declare-fun m!7602842 () Bool)

(assert (=> b!6873039 m!7602842))

(assert (=> b!6872522 d!2158893))

(declare-fun d!2158895 () Bool)

(declare-fun lt!2458708 () Int)

(assert (=> d!2158895 (>= lt!2458708 0)))

(declare-fun e!4142750 () Int)

(assert (=> d!2158895 (= lt!2458708 e!4142750)))

(declare-fun c!1279093 () Bool)

(assert (=> d!2158895 (= c!1279093 ((_ is Cons!66285) zl!343))))

(assert (=> d!2158895 (= (zipperDepthTotal!452 zl!343) lt!2458708)))

(declare-fun b!6873041 () Bool)

(assert (=> b!6873041 (= e!4142750 (+ (contextDepthTotal!424 (h!72733 zl!343)) (zipperDepthTotal!452 (t!380152 zl!343))))))

(declare-fun b!6873042 () Bool)

(assert (=> b!6873042 (= e!4142750 0)))

(assert (= (and d!2158895 c!1279093) b!6873041))

(assert (= (and d!2158895 (not c!1279093)) b!6873042))

(declare-fun m!7602844 () Bool)

(assert (=> b!6873041 m!7602844))

(declare-fun m!7602846 () Bool)

(assert (=> b!6873041 m!7602846))

(assert (=> b!6872522 d!2158895))

(declare-fun d!2158897 () Bool)

(declare-fun lt!2458711 () Int)

(assert (=> d!2158897 (>= lt!2458711 0)))

(declare-fun e!4142753 () Int)

(assert (=> d!2158897 (= lt!2458711 e!4142753)))

(declare-fun c!1279097 () Bool)

(assert (=> d!2158897 (= c!1279097 ((_ is Cons!66284) (exprs!6587 lt!2458605)))))

(assert (=> d!2158897 (= (contextDepthTotal!424 lt!2458605) lt!2458711)))

(declare-fun b!6873047 () Bool)

(declare-fun regexDepthTotal!266 (Regex!16703) Int)

(assert (=> b!6873047 (= e!4142753 (+ (regexDepthTotal!266 (h!72732 (exprs!6587 lt!2458605))) (contextDepthTotal!424 (Context!12175 (t!380151 (exprs!6587 lt!2458605))))))))

(declare-fun b!6873048 () Bool)

(assert (=> b!6873048 (= e!4142753 1)))

(assert (= (and d!2158897 c!1279097) b!6873047))

(assert (= (and d!2158897 (not c!1279097)) b!6873048))

(declare-fun m!7602848 () Bool)

(assert (=> b!6873047 m!7602848))

(declare-fun m!7602850 () Bool)

(assert (=> b!6873047 m!7602850))

(assert (=> b!6872522 d!2158897))

(declare-fun d!2158899 () Bool)

(assert (=> d!2158899 (< (contextDepthTotal!424 lt!2458605) (zipperDepthTotal!452 zl!343))))

(declare-fun lt!2458714 () Unit!160184)

(declare-fun choose!51214 (List!66409 Context!12174) Unit!160184)

(assert (=> d!2158899 (= lt!2458714 (choose!51214 zl!343 lt!2458605))))

(assert (=> d!2158899 (contains!20361 zl!343 lt!2458605)))

(assert (=> d!2158899 (= (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!56 zl!343 lt!2458605) lt!2458714)))

(declare-fun bs!1837489 () Bool)

(assert (= bs!1837489 d!2158899))

(assert (=> bs!1837489 m!7602514))

(assert (=> bs!1837489 m!7602512))

(declare-fun m!7602852 () Bool)

(assert (=> bs!1837489 m!7602852))

(assert (=> bs!1837489 m!7602820))

(assert (=> b!6872522 d!2158899))

(declare-fun bs!1837490 () Bool)

(declare-fun d!2158901 () Bool)

(assert (= bs!1837490 (and d!2158901 b!6872524)))

(declare-fun lambda!388991 () Int)

(assert (=> bs!1837490 (not (= lambda!388991 lambda!388934))))

(assert (=> d!2158901 true))

(declare-fun order!27747 () Int)

(declare-fun dynLambda!26546 (Int Int) Int)

(assert (=> d!2158901 (< (dynLambda!26546 order!27747 lambda!388934) (dynLambda!26546 order!27747 lambda!388991))))

(declare-fun forall!15902 (List!66409 Int) Bool)

(assert (=> d!2158901 (= (exists!2843 zl!343 lambda!388934) (not (forall!15902 zl!343 lambda!388991)))))

(declare-fun bs!1837491 () Bool)

(assert (= bs!1837491 d!2158901))

(declare-fun m!7602854 () Bool)

(assert (=> bs!1837491 m!7602854))

(assert (=> b!6872524 d!2158901))

(declare-fun bs!1837492 () Bool)

(declare-fun d!2158903 () Bool)

(assert (= bs!1837492 (and d!2158903 b!6872524)))

(declare-fun lambda!388994 () Int)

(assert (=> bs!1837492 (= lambda!388994 lambda!388934)))

(declare-fun bs!1837493 () Bool)

(assert (= bs!1837493 (and d!2158903 d!2158901)))

(assert (=> bs!1837493 (not (= lambda!388994 lambda!388991))))

(assert (=> d!2158903 true))

(assert (=> d!2158903 (exists!2843 zl!343 lambda!388994)))

(declare-fun lt!2458717 () Unit!160184)

(declare-fun choose!51215 (List!66409 List!66410) Unit!160184)

(assert (=> d!2158903 (= lt!2458717 (choose!51215 zl!343 s!2326))))

(declare-fun content!13016 (List!66409) (InoxSet Context!12174))

(assert (=> d!2158903 (matchZipper!2669 (content!13016 zl!343) s!2326)))

(assert (=> d!2158903 (= (lemmaZipperMatchesExistsMatchingContext!102 zl!343 s!2326) lt!2458717)))

(declare-fun bs!1837494 () Bool)

(assert (= bs!1837494 d!2158903))

(declare-fun m!7602856 () Bool)

(assert (=> bs!1837494 m!7602856))

(declare-fun m!7602858 () Bool)

(assert (=> bs!1837494 m!7602858))

(declare-fun m!7602860 () Bool)

(assert (=> bs!1837494 m!7602860))

(assert (=> bs!1837494 m!7602860))

(declare-fun m!7602862 () Bool)

(assert (=> bs!1837494 m!7602862))

(assert (=> b!6872524 d!2158903))

(declare-fun d!2158905 () Bool)

(declare-fun e!4142756 () Bool)

(assert (=> d!2158905 e!4142756))

(declare-fun res!2802944 () Bool)

(assert (=> d!2158905 (=> (not res!2802944) (not e!4142756))))

(declare-fun lt!2458720 () List!66409)

(declare-fun noDuplicate!2464 (List!66409) Bool)

(assert (=> d!2158905 (= res!2802944 (noDuplicate!2464 lt!2458720))))

(declare-fun choose!51216 ((InoxSet Context!12174)) List!66409)

(assert (=> d!2158905 (= lt!2458720 (choose!51216 z!1189))))

(assert (=> d!2158905 (= (toList!10487 z!1189) lt!2458720)))

(declare-fun b!6873053 () Bool)

(assert (=> b!6873053 (= e!4142756 (= (content!13016 lt!2458720) z!1189))))

(assert (= (and d!2158905 res!2802944) b!6873053))

(declare-fun m!7602864 () Bool)

(assert (=> d!2158905 m!7602864))

(declare-fun m!7602866 () Bool)

(assert (=> d!2158905 m!7602866))

(declare-fun m!7602868 () Bool)

(assert (=> b!6873053 m!7602868))

(assert (=> b!6872515 d!2158905))

(assert (=> b!6872514 d!2158855))

(declare-fun bs!1837495 () Bool)

(declare-fun d!2158907 () Bool)

(assert (= bs!1837495 (and d!2158907 b!6872527)))

(declare-fun lambda!388999 () Int)

(assert (=> bs!1837495 (= lambda!388999 lambda!388935)))

(declare-fun bs!1837496 () Bool)

(assert (= bs!1837496 (and d!2158907 d!2158855)))

(assert (=> bs!1837496 (not (= lambda!388999 lambda!388978))))

(declare-fun bs!1837497 () Bool)

(assert (= bs!1837497 (and d!2158907 d!2158889)))

(assert (=> bs!1837497 (= lambda!388999 lambda!388988)))

(declare-fun bs!1837498 () Bool)

(assert (= bs!1837498 (and d!2158907 d!2158791)))

(assert (=> bs!1837498 (= lambda!388999 lambda!388938)))

(declare-fun bs!1837499 () Bool)

(assert (= bs!1837499 (and d!2158907 d!2158809)))

(assert (=> bs!1837499 (= lambda!388999 lambda!388944)))

(declare-fun bs!1837500 () Bool)

(assert (= bs!1837500 (and d!2158907 b!6872514)))

(assert (=> bs!1837500 (not (= lambda!388999 lambda!388933))))

(declare-fun bs!1837501 () Bool)

(assert (= bs!1837501 (and d!2158907 d!2158869)))

(assert (=> bs!1837501 (= lambda!388999 lambda!388987)))

(declare-fun lambda!389000 () Int)

(assert (=> bs!1837495 (not (= lambda!389000 lambda!388935))))

(assert (=> bs!1837496 (not (= lambda!389000 lambda!388978))))

(assert (=> bs!1837497 (not (= lambda!389000 lambda!388988))))

(assert (=> bs!1837498 (not (= lambda!389000 lambda!388938))))

(declare-fun bs!1837502 () Bool)

(assert (= bs!1837502 d!2158907))

(assert (=> bs!1837502 (not (= lambda!389000 lambda!388999))))

(assert (=> bs!1837499 (not (= lambda!389000 lambda!388944))))

(assert (=> bs!1837500 (= lambda!389000 lambda!388933)))

(assert (=> bs!1837501 (not (= lambda!389000 lambda!388987))))

(assert (=> d!2158907 true))

(assert (=> d!2158907 (= (matchR!8886 r!7292 s!2326) (exists!2842 lt!2458615 lambda!389000))))

(declare-fun lt!2458723 () Unit!160184)

(declare-fun choose!51217 (Regex!16703 List!66408 List!66410) Unit!160184)

(assert (=> d!2158907 (= lt!2458723 (choose!51217 r!7292 lt!2458615 s!2326))))

(assert (=> d!2158907 (forall!15900 lt!2458615 lambda!388999)))

(assert (=> d!2158907 (= (matchRGenUnionSpec!342 r!7292 lt!2458615 s!2326) lt!2458723)))

(assert (=> bs!1837502 m!7602522))

(declare-fun m!7602870 () Bool)

(assert (=> bs!1837502 m!7602870))

(declare-fun m!7602872 () Bool)

(assert (=> bs!1837502 m!7602872))

(declare-fun m!7602874 () Bool)

(assert (=> bs!1837502 m!7602874))

(assert (=> b!6872514 d!2158907))

(declare-fun bs!1837503 () Bool)

(declare-fun d!2158909 () Bool)

(assert (= bs!1837503 (and d!2158909 b!6872527)))

(declare-fun lambda!389003 () Int)

(assert (=> bs!1837503 (= lambda!389003 lambda!388935)))

(declare-fun bs!1837504 () Bool)

(assert (= bs!1837504 (and d!2158909 d!2158855)))

(assert (=> bs!1837504 (not (= lambda!389003 lambda!388978))))

(declare-fun bs!1837505 () Bool)

(assert (= bs!1837505 (and d!2158909 d!2158889)))

(assert (=> bs!1837505 (= lambda!389003 lambda!388988)))

(declare-fun bs!1837506 () Bool)

(assert (= bs!1837506 (and d!2158909 d!2158791)))

(assert (=> bs!1837506 (= lambda!389003 lambda!388938)))

(declare-fun bs!1837507 () Bool)

(assert (= bs!1837507 (and d!2158909 d!2158907)))

(assert (=> bs!1837507 (= lambda!389003 lambda!388999)))

(declare-fun bs!1837508 () Bool)

(assert (= bs!1837508 (and d!2158909 d!2158809)))

(assert (=> bs!1837508 (= lambda!389003 lambda!388944)))

(declare-fun bs!1837509 () Bool)

(assert (= bs!1837509 (and d!2158909 b!6872514)))

(assert (=> bs!1837509 (not (= lambda!389003 lambda!388933))))

(assert (=> bs!1837507 (not (= lambda!389003 lambda!389000))))

(declare-fun bs!1837510 () Bool)

(assert (= bs!1837510 (and d!2158909 d!2158869)))

(assert (=> bs!1837510 (= lambda!389003 lambda!388987)))

(declare-fun lt!2458726 () List!66408)

(assert (=> d!2158909 (forall!15900 lt!2458726 lambda!389003)))

(declare-fun e!4142761 () List!66408)

(assert (=> d!2158909 (= lt!2458726 e!4142761)))

(declare-fun c!1279103 () Bool)

(assert (=> d!2158909 (= c!1279103 ((_ is Cons!66285) zl!343))))

(assert (=> d!2158909 (= (unfocusZipperList!2120 zl!343) lt!2458726)))

(declare-fun b!6873060 () Bool)

(assert (=> b!6873060 (= e!4142761 (Cons!66284 (generalisedConcat!2291 (exprs!6587 (h!72733 zl!343))) (unfocusZipperList!2120 (t!380152 zl!343))))))

(declare-fun b!6873061 () Bool)

(assert (=> b!6873061 (= e!4142761 Nil!66284)))

(assert (= (and d!2158909 c!1279103) b!6873060))

(assert (= (and d!2158909 (not c!1279103)) b!6873061))

(declare-fun m!7602876 () Bool)

(assert (=> d!2158909 m!7602876))

(declare-fun m!7602878 () Bool)

(assert (=> b!6873060 m!7602878))

(declare-fun m!7602880 () Bool)

(assert (=> b!6873060 m!7602880))

(assert (=> b!6872514 d!2158909))

(declare-fun b!6873072 () Bool)

(declare-fun e!4142764 () Bool)

(assert (=> b!6873072 (= e!4142764 tp_is_empty!42659)))

(assert (=> b!6872516 (= tp!1887467 e!4142764)))

(declare-fun b!6873075 () Bool)

(declare-fun tp!1887537 () Bool)

(declare-fun tp!1887540 () Bool)

(assert (=> b!6873075 (= e!4142764 (and tp!1887537 tp!1887540))))

(declare-fun b!6873074 () Bool)

(declare-fun tp!1887539 () Bool)

(assert (=> b!6873074 (= e!4142764 tp!1887539)))

(declare-fun b!6873073 () Bool)

(declare-fun tp!1887536 () Bool)

(declare-fun tp!1887538 () Bool)

(assert (=> b!6873073 (= e!4142764 (and tp!1887536 tp!1887538))))

(assert (= (and b!6872516 ((_ is ElementMatch!16703) (regOne!33919 r!7292))) b!6873072))

(assert (= (and b!6872516 ((_ is Concat!25548) (regOne!33919 r!7292))) b!6873073))

(assert (= (and b!6872516 ((_ is Star!16703) (regOne!33919 r!7292))) b!6873074))

(assert (= (and b!6872516 ((_ is Union!16703) (regOne!33919 r!7292))) b!6873075))

(declare-fun b!6873076 () Bool)

(declare-fun e!4142765 () Bool)

(assert (=> b!6873076 (= e!4142765 tp_is_empty!42659)))

(assert (=> b!6872516 (= tp!1887459 e!4142765)))

(declare-fun b!6873079 () Bool)

(declare-fun tp!1887542 () Bool)

(declare-fun tp!1887545 () Bool)

(assert (=> b!6873079 (= e!4142765 (and tp!1887542 tp!1887545))))

(declare-fun b!6873078 () Bool)

(declare-fun tp!1887544 () Bool)

(assert (=> b!6873078 (= e!4142765 tp!1887544)))

(declare-fun b!6873077 () Bool)

(declare-fun tp!1887541 () Bool)

(declare-fun tp!1887543 () Bool)

(assert (=> b!6873077 (= e!4142765 (and tp!1887541 tp!1887543))))

(assert (= (and b!6872516 ((_ is ElementMatch!16703) (regTwo!33919 r!7292))) b!6873076))

(assert (= (and b!6872516 ((_ is Concat!25548) (regTwo!33919 r!7292))) b!6873077))

(assert (= (and b!6872516 ((_ is Star!16703) (regTwo!33919 r!7292))) b!6873078))

(assert (= (and b!6872516 ((_ is Union!16703) (regTwo!33919 r!7292))) b!6873079))

(declare-fun condSetEmpty!47265 () Bool)

(assert (=> setNonEmpty!47259 (= condSetEmpty!47265 (= setRest!47259 ((as const (Array Context!12174 Bool)) false)))))

(declare-fun setRes!47265 () Bool)

(assert (=> setNonEmpty!47259 (= tp!1887461 setRes!47265)))

(declare-fun setIsEmpty!47265 () Bool)

(assert (=> setIsEmpty!47265 setRes!47265))

(declare-fun e!4142768 () Bool)

(declare-fun setElem!47265 () Context!12174)

(declare-fun setNonEmpty!47265 () Bool)

(declare-fun tp!1887550 () Bool)

(assert (=> setNonEmpty!47265 (= setRes!47265 (and tp!1887550 (inv!85004 setElem!47265) e!4142768))))

(declare-fun setRest!47265 () (InoxSet Context!12174))

(assert (=> setNonEmpty!47265 (= setRest!47259 ((_ map or) (store ((as const (Array Context!12174 Bool)) false) setElem!47265 true) setRest!47265))))

(declare-fun b!6873084 () Bool)

(declare-fun tp!1887551 () Bool)

(assert (=> b!6873084 (= e!4142768 tp!1887551)))

(assert (= (and setNonEmpty!47259 condSetEmpty!47265) setIsEmpty!47265))

(assert (= (and setNonEmpty!47259 (not condSetEmpty!47265)) setNonEmpty!47265))

(assert (= setNonEmpty!47265 b!6873084))

(declare-fun m!7602882 () Bool)

(assert (=> setNonEmpty!47265 m!7602882))

(declare-fun b!6873085 () Bool)

(declare-fun e!4142769 () Bool)

(assert (=> b!6873085 (= e!4142769 tp_is_empty!42659)))

(assert (=> b!6872526 (= tp!1887465 e!4142769)))

(declare-fun b!6873088 () Bool)

(declare-fun tp!1887553 () Bool)

(declare-fun tp!1887556 () Bool)

(assert (=> b!6873088 (= e!4142769 (and tp!1887553 tp!1887556))))

(declare-fun b!6873087 () Bool)

(declare-fun tp!1887555 () Bool)

(assert (=> b!6873087 (= e!4142769 tp!1887555)))

(declare-fun b!6873086 () Bool)

(declare-fun tp!1887552 () Bool)

(declare-fun tp!1887554 () Bool)

(assert (=> b!6873086 (= e!4142769 (and tp!1887552 tp!1887554))))

(assert (= (and b!6872526 ((_ is ElementMatch!16703) (regOne!33918 r!7292))) b!6873085))

(assert (= (and b!6872526 ((_ is Concat!25548) (regOne!33918 r!7292))) b!6873086))

(assert (= (and b!6872526 ((_ is Star!16703) (regOne!33918 r!7292))) b!6873087))

(assert (= (and b!6872526 ((_ is Union!16703) (regOne!33918 r!7292))) b!6873088))

(declare-fun b!6873089 () Bool)

(declare-fun e!4142770 () Bool)

(assert (=> b!6873089 (= e!4142770 tp_is_empty!42659)))

(assert (=> b!6872526 (= tp!1887460 e!4142770)))

(declare-fun b!6873092 () Bool)

(declare-fun tp!1887558 () Bool)

(declare-fun tp!1887561 () Bool)

(assert (=> b!6873092 (= e!4142770 (and tp!1887558 tp!1887561))))

(declare-fun b!6873091 () Bool)

(declare-fun tp!1887560 () Bool)

(assert (=> b!6873091 (= e!4142770 tp!1887560)))

(declare-fun b!6873090 () Bool)

(declare-fun tp!1887557 () Bool)

(declare-fun tp!1887559 () Bool)

(assert (=> b!6873090 (= e!4142770 (and tp!1887557 tp!1887559))))

(assert (= (and b!6872526 ((_ is ElementMatch!16703) (regTwo!33918 r!7292))) b!6873089))

(assert (= (and b!6872526 ((_ is Concat!25548) (regTwo!33918 r!7292))) b!6873090))

(assert (= (and b!6872526 ((_ is Star!16703) (regTwo!33918 r!7292))) b!6873091))

(assert (= (and b!6872526 ((_ is Union!16703) (regTwo!33918 r!7292))) b!6873092))

(declare-fun b!6873100 () Bool)

(declare-fun e!4142776 () Bool)

(declare-fun tp!1887566 () Bool)

(assert (=> b!6873100 (= e!4142776 tp!1887566)))

(declare-fun tp!1887567 () Bool)

(declare-fun e!4142775 () Bool)

(declare-fun b!6873099 () Bool)

(assert (=> b!6873099 (= e!4142775 (and (inv!85004 (h!72733 (t!380152 zl!343))) e!4142776 tp!1887567))))

(assert (=> b!6872528 (= tp!1887458 e!4142775)))

(assert (= b!6873099 b!6873100))

(assert (= (and b!6872528 ((_ is Cons!66285) (t!380152 zl!343))) b!6873099))

(declare-fun m!7602884 () Bool)

(assert (=> b!6873099 m!7602884))

(declare-fun b!6873105 () Bool)

(declare-fun e!4142779 () Bool)

(declare-fun tp!1887572 () Bool)

(declare-fun tp!1887573 () Bool)

(assert (=> b!6873105 (= e!4142779 (and tp!1887572 tp!1887573))))

(assert (=> b!6872517 (= tp!1887464 e!4142779)))

(assert (= (and b!6872517 ((_ is Cons!66284) (exprs!6587 setElem!47259))) b!6873105))

(declare-fun b!6873110 () Bool)

(declare-fun e!4142782 () Bool)

(declare-fun tp!1887576 () Bool)

(assert (=> b!6873110 (= e!4142782 (and tp_is_empty!42659 tp!1887576))))

(assert (=> b!6872520 (= tp!1887466 e!4142782)))

(assert (= (and b!6872520 ((_ is Cons!66286) (t!380153 s!2326))) b!6873110))

(declare-fun b!6873111 () Bool)

(declare-fun e!4142783 () Bool)

(assert (=> b!6873111 (= e!4142783 tp_is_empty!42659)))

(assert (=> b!6872510 (= tp!1887462 e!4142783)))

(declare-fun b!6873114 () Bool)

(declare-fun tp!1887578 () Bool)

(declare-fun tp!1887581 () Bool)

(assert (=> b!6873114 (= e!4142783 (and tp!1887578 tp!1887581))))

(declare-fun b!6873113 () Bool)

(declare-fun tp!1887580 () Bool)

(assert (=> b!6873113 (= e!4142783 tp!1887580)))

(declare-fun b!6873112 () Bool)

(declare-fun tp!1887577 () Bool)

(declare-fun tp!1887579 () Bool)

(assert (=> b!6873112 (= e!4142783 (and tp!1887577 tp!1887579))))

(assert (= (and b!6872510 ((_ is ElementMatch!16703) (reg!17032 r!7292))) b!6873111))

(assert (= (and b!6872510 ((_ is Concat!25548) (reg!17032 r!7292))) b!6873112))

(assert (= (and b!6872510 ((_ is Star!16703) (reg!17032 r!7292))) b!6873113))

(assert (= (and b!6872510 ((_ is Union!16703) (reg!17032 r!7292))) b!6873114))

(declare-fun b!6873115 () Bool)

(declare-fun e!4142784 () Bool)

(declare-fun tp!1887582 () Bool)

(declare-fun tp!1887583 () Bool)

(assert (=> b!6873115 (= e!4142784 (and tp!1887582 tp!1887583))))

(assert (=> b!6872530 (= tp!1887463 e!4142784)))

(assert (= (and b!6872530 ((_ is Cons!66284) (exprs!6587 (h!72733 zl!343)))) b!6873115))

(declare-fun b_lambda!260133 () Bool)

(assert (= b_lambda!260119 (or b!6872524 b_lambda!260133)))

(declare-fun bs!1837511 () Bool)

(declare-fun d!2158911 () Bool)

(assert (= bs!1837511 (and d!2158911 b!6872524)))

(assert (=> bs!1837511 (= (dynLambda!26543 lambda!388934 (h!72733 zl!343)) (matchZipper!2669 (store ((as const (Array Context!12174 Bool)) false) (h!72733 zl!343) true) s!2326))))

(declare-fun m!7602886 () Bool)

(assert (=> bs!1837511 m!7602886))

(assert (=> bs!1837511 m!7602886))

(declare-fun m!7602888 () Bool)

(assert (=> bs!1837511 m!7602888))

(assert (=> b!6872579 d!2158911))

(declare-fun b_lambda!260135 () Bool)

(assert (= b_lambda!260117 (or b!6872524 b_lambda!260135)))

(declare-fun bs!1837512 () Bool)

(declare-fun d!2158913 () Bool)

(assert (= bs!1837512 (and d!2158913 b!6872524)))

(assert (=> bs!1837512 (= (dynLambda!26543 lambda!388934 lt!2458639) (matchZipper!2669 (store ((as const (Array Context!12174 Bool)) false) lt!2458639 true) s!2326))))

(declare-fun m!7602890 () Bool)

(assert (=> bs!1837512 m!7602890))

(assert (=> bs!1837512 m!7602890))

(declare-fun m!7602892 () Bool)

(assert (=> bs!1837512 m!7602892))

(assert (=> d!2158795 d!2158913))

(declare-fun b_lambda!260137 () Bool)

(assert (= b_lambda!260115 (or b!6872527 b_lambda!260137)))

(declare-fun bs!1837513 () Bool)

(declare-fun d!2158915 () Bool)

(assert (= bs!1837513 (and d!2158915 b!6872527)))

(assert (=> bs!1837513 (= (dynLambda!26542 lambda!388935 (h!72732 (exprs!6587 lt!2458605))) (validRegex!8439 (h!72732 (exprs!6587 lt!2458605))))))

(declare-fun m!7602894 () Bool)

(assert (=> bs!1837513 m!7602894))

(assert (=> b!6872540 d!2158915))

(check-sat (not d!2158903) (not b!6873110) (not b!6873060) (not b!6872779) (not d!2158863) (not b!6872890) (not b!6873078) (not d!2158809) (not b!6873053) (not b!6873088) (not b!6872887) (not b!6873019) (not bm!625978) (not bs!1837512) (not b!6873086) (not d!2158883) (not b!6872781) (not b!6873073) (not b!6873077) (not d!2158831) (not bs!1837513) (not d!2158881) (not bs!1837511) (not d!2158855) (not b!6873039) (not d!2158905) (not b!6873112) (not b!6872889) (not b!6873022) (not d!2158907) (not b!6873087) (not bm!625970) (not b!6872936) (not bm!625957) (not b!6873092) (not b!6872674) (not b_lambda!260137) (not b!6872577) (not b!6872671) (not d!2158909) (not b!6873084) (not b!6873074) (not bm!625984) (not b!6872780) (not b!6873099) (not d!2158885) (not bm!625971) (not d!2158795) (not b!6873034) (not b!6873014) (not b!6872886) (not b!6872830) (not bm!625985) (not setNonEmpty!47265) (not d!2158869) (not b!6872578) (not b_lambda!260135) (not b!6873024) (not d!2158891) (not b!6873018) (not b!6873114) (not b!6872541) (not b!6873091) (not b!6872778) (not d!2158791) (not b!6872788) (not b!6873115) (not b!6873090) (not b!6873113) (not b_lambda!260133) (not d!2158889) (not b!6873079) (not d!2158901) (not b!6872898) (not b!6872888) tp_is_empty!42659 (not bm!625963) (not bm!625956) (not d!2158861) (not b!6873023) (not b!6873047) (not b!6872782) (not d!2158859) (not b!6873015) (not b!6873017) (not b!6873033) (not b!6872576) (not d!2158837) (not b!6873075) (not b!6873100) (not b!6873105) (not b!6873041) (not d!2158899) (not b!6872891) (not b!6872892))
(check-sat)
