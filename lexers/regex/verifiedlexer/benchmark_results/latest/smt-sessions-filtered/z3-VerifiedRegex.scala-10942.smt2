; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!566318 () Bool)

(assert start!566318)

(declare-fun b!5388665 () Bool)

(assert (=> b!5388665 true))

(assert (=> b!5388665 true))

(declare-fun lambda!279694 () Int)

(declare-fun lambda!279693 () Int)

(assert (=> b!5388665 (not (= lambda!279694 lambda!279693))))

(assert (=> b!5388665 true))

(assert (=> b!5388665 true))

(declare-fun b!5388650 () Bool)

(assert (=> b!5388650 true))

(declare-fun bs!1246928 () Bool)

(declare-fun b!5388639 () Bool)

(assert (= bs!1246928 (and b!5388639 b!5388665)))

(declare-fun lambda!279696 () Int)

(declare-datatypes ((C!30532 0))(
  ( (C!30533 (val!24968 Int)) )
))
(declare-datatypes ((Regex!15131 0))(
  ( (ElementMatch!15131 (c!938981 C!30532)) (Concat!23976 (regOne!30774 Regex!15131) (regTwo!30774 Regex!15131)) (EmptyExpr!15131) (Star!15131 (reg!15460 Regex!15131)) (EmptyLang!15131) (Union!15131 (regOne!30775 Regex!15131) (regTwo!30775 Regex!15131)) )
))
(declare-fun lt!2195430 () Regex!15131)

(declare-fun r!7292 () Regex!15131)

(assert (=> bs!1246928 (= (= lt!2195430 (regOne!30774 r!7292)) (= lambda!279696 lambda!279693))))

(assert (=> bs!1246928 (not (= lambda!279696 lambda!279694))))

(assert (=> b!5388639 true))

(assert (=> b!5388639 true))

(assert (=> b!5388639 true))

(declare-fun lambda!279697 () Int)

(assert (=> bs!1246928 (not (= lambda!279697 lambda!279693))))

(assert (=> bs!1246928 (= (= lt!2195430 (regOne!30774 r!7292)) (= lambda!279697 lambda!279694))))

(assert (=> b!5388639 (not (= lambda!279697 lambda!279696))))

(assert (=> b!5388639 true))

(assert (=> b!5388639 true))

(assert (=> b!5388639 true))

(declare-fun bs!1246929 () Bool)

(declare-fun b!5388654 () Bool)

(assert (= bs!1246929 (and b!5388654 b!5388665)))

(declare-datatypes ((List!61692 0))(
  ( (Nil!61568) (Cons!61568 (h!68016 C!30532) (t!374915 List!61692)) )
))
(declare-fun s!2326 () List!61692)

(declare-datatypes ((tuple2!64660 0))(
  ( (tuple2!64661 (_1!35633 List!61692) (_2!35633 List!61692)) )
))
(declare-fun lt!2195436 () tuple2!64660)

(declare-fun lambda!279698 () Int)

(assert (=> bs!1246929 (= (and (= (_1!35633 lt!2195436) s!2326) (= (reg!15460 (regOne!30774 r!7292)) (regOne!30774 r!7292)) (= lt!2195430 (regTwo!30774 r!7292))) (= lambda!279698 lambda!279693))))

(assert (=> bs!1246929 (not (= lambda!279698 lambda!279694))))

(declare-fun bs!1246930 () Bool)

(assert (= bs!1246930 (and b!5388654 b!5388639)))

(assert (=> bs!1246930 (= (and (= (_1!35633 lt!2195436) s!2326) (= (reg!15460 (regOne!30774 r!7292)) lt!2195430) (= lt!2195430 (regTwo!30774 r!7292))) (= lambda!279698 lambda!279696))))

(assert (=> bs!1246930 (not (= lambda!279698 lambda!279697))))

(assert (=> b!5388654 true))

(assert (=> b!5388654 true))

(assert (=> b!5388654 true))

(declare-fun lambda!279699 () Int)

(assert (=> bs!1246929 (not (= lambda!279699 lambda!279693))))

(assert (=> bs!1246929 (not (= lambda!279699 lambda!279694))))

(assert (=> bs!1246930 (not (= lambda!279699 lambda!279697))))

(assert (=> b!5388654 (not (= lambda!279699 lambda!279698))))

(assert (=> bs!1246930 (not (= lambda!279699 lambda!279696))))

(assert (=> b!5388654 true))

(assert (=> b!5388654 true))

(assert (=> b!5388654 true))

(declare-fun lambda!279700 () Int)

(assert (=> bs!1246929 (not (= lambda!279700 lambda!279693))))

(assert (=> bs!1246929 (= (and (= (_1!35633 lt!2195436) s!2326) (= (reg!15460 (regOne!30774 r!7292)) (regOne!30774 r!7292)) (= lt!2195430 (regTwo!30774 r!7292))) (= lambda!279700 lambda!279694))))

(assert (=> bs!1246930 (= (and (= (_1!35633 lt!2195436) s!2326) (= (reg!15460 (regOne!30774 r!7292)) lt!2195430) (= lt!2195430 (regTwo!30774 r!7292))) (= lambda!279700 lambda!279697))))

(assert (=> b!5388654 (not (= lambda!279700 lambda!279698))))

(assert (=> b!5388654 (not (= lambda!279700 lambda!279699))))

(assert (=> bs!1246930 (not (= lambda!279700 lambda!279696))))

(assert (=> b!5388654 true))

(assert (=> b!5388654 true))

(assert (=> b!5388654 true))

(declare-fun b!5388637 () Bool)

(declare-datatypes ((Unit!154042 0))(
  ( (Unit!154043) )
))
(declare-fun e!3342047 () Unit!154042)

(declare-fun Unit!154044 () Unit!154042)

(assert (=> b!5388637 (= e!3342047 Unit!154044)))

(declare-fun b!5388638 () Bool)

(declare-fun res!2289489 () Bool)

(declare-fun e!3342059 () Bool)

(assert (=> b!5388638 (=> res!2289489 e!3342059)))

(declare-datatypes ((List!61693 0))(
  ( (Nil!61569) (Cons!61569 (h!68017 Regex!15131) (t!374916 List!61693)) )
))
(declare-datatypes ((Context!9030 0))(
  ( (Context!9031 (exprs!5015 List!61693)) )
))
(declare-datatypes ((List!61694 0))(
  ( (Nil!61570) (Cons!61570 (h!68018 Context!9030) (t!374917 List!61694)) )
))
(declare-fun zl!343 () List!61694)

(get-info :version)

(assert (=> b!5388638 (= res!2289489 (not ((_ is Cons!61569) (exprs!5015 (h!68018 zl!343)))))))

(declare-fun e!3342048 () Bool)

(declare-fun e!3342066 () Bool)

(assert (=> b!5388639 (= e!3342048 e!3342066)))

(declare-fun res!2289517 () Bool)

(assert (=> b!5388639 (=> res!2289517 e!3342066)))

(declare-fun ++!13447 (List!61692 List!61692) List!61692)

(assert (=> b!5388639 (= res!2289517 (not (= (++!13447 (_1!35633 lt!2195436) (_2!35633 lt!2195436)) s!2326)))))

(declare-datatypes ((Option!15242 0))(
  ( (None!15241) (Some!15241 (v!51270 tuple2!64660)) )
))
(declare-fun lt!2195448 () Option!15242)

(declare-fun get!21205 (Option!15242) tuple2!64660)

(assert (=> b!5388639 (= lt!2195436 (get!21205 lt!2195448))))

(declare-fun Exists!2312 (Int) Bool)

(assert (=> b!5388639 (= (Exists!2312 lambda!279696) (Exists!2312 lambda!279697))))

(declare-fun lt!2195475 () Unit!154042)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!966 (Regex!15131 Regex!15131 List!61692) Unit!154042)

(assert (=> b!5388639 (= lt!2195475 (lemmaExistCutMatchRandMatchRSpecEquivalent!966 lt!2195430 (regTwo!30774 r!7292) s!2326))))

(declare-fun isDefined!11945 (Option!15242) Bool)

(assert (=> b!5388639 (= (isDefined!11945 lt!2195448) (Exists!2312 lambda!279696))))

(declare-fun findConcatSeparation!1656 (Regex!15131 Regex!15131 List!61692 List!61692 List!61692) Option!15242)

(assert (=> b!5388639 (= lt!2195448 (findConcatSeparation!1656 lt!2195430 (regTwo!30774 r!7292) Nil!61568 s!2326 s!2326))))

(declare-fun lt!2195417 () Unit!154042)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1420 (Regex!15131 Regex!15131 List!61692) Unit!154042)

(assert (=> b!5388639 (= lt!2195417 (lemmaFindConcatSeparationEquivalentToExists!1420 lt!2195430 (regTwo!30774 r!7292) s!2326))))

(declare-fun b!5388640 () Bool)

(declare-fun res!2289503 () Bool)

(assert (=> b!5388640 (=> res!2289503 e!3342066)))

(declare-fun isEmpty!33566 (List!61692) Bool)

(assert (=> b!5388640 (= res!2289503 (isEmpty!33566 (_1!35633 lt!2195436)))))

(declare-fun b!5388641 () Bool)

(declare-fun e!3342061 () Bool)

(declare-fun tp_is_empty!39515 () Bool)

(declare-fun tp!1492460 () Bool)

(assert (=> b!5388641 (= e!3342061 (and tp_is_empty!39515 tp!1492460))))

(declare-fun b!5388642 () Bool)

(declare-fun e!3342043 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2195418 () (InoxSet Context!9030))

(declare-fun matchZipper!1375 ((InoxSet Context!9030) List!61692) Bool)

(assert (=> b!5388642 (= e!3342043 (matchZipper!1375 lt!2195418 (t!374915 s!2326)))))

(declare-fun b!5388643 () Bool)

(declare-fun e!3342053 () Bool)

(declare-fun e!3342052 () Bool)

(assert (=> b!5388643 (= e!3342053 e!3342052)))

(declare-fun res!2289497 () Bool)

(assert (=> b!5388643 (=> res!2289497 e!3342052)))

(declare-fun lt!2195461 () (InoxSet Context!9030))

(declare-fun lt!2195419 () (InoxSet Context!9030))

(assert (=> b!5388643 (= res!2289497 (not (= lt!2195461 lt!2195419)))))

(declare-fun lt!2195465 () Context!9030)

(declare-fun lt!2195443 () (InoxSet Context!9030))

(declare-fun lambda!279695 () Int)

(declare-fun flatMap!858 ((InoxSet Context!9030) Int) (InoxSet Context!9030))

(declare-fun derivationStepZipperUp!503 (Context!9030 C!30532) (InoxSet Context!9030))

(assert (=> b!5388643 (= (flatMap!858 lt!2195443 lambda!279695) (derivationStepZipperUp!503 lt!2195465 (h!68016 s!2326)))))

(declare-fun lt!2195471 () Unit!154042)

(declare-fun lemmaFlatMapOnSingletonSet!390 ((InoxSet Context!9030) Context!9030 Int) Unit!154042)

(assert (=> b!5388643 (= lt!2195471 (lemmaFlatMapOnSingletonSet!390 lt!2195443 lt!2195465 lambda!279695))))

(declare-fun lt!2195462 () (InoxSet Context!9030))

(assert (=> b!5388643 (= lt!2195462 (derivationStepZipperUp!503 lt!2195465 (h!68016 s!2326)))))

(declare-fun derivationStepZipper!1370 ((InoxSet Context!9030) C!30532) (InoxSet Context!9030))

(assert (=> b!5388643 (= lt!2195461 (derivationStepZipper!1370 lt!2195443 (h!68016 s!2326)))))

(assert (=> b!5388643 (= lt!2195443 (store ((as const (Array Context!9030 Bool)) false) lt!2195465 true))))

(declare-fun lt!2195450 () List!61693)

(assert (=> b!5388643 (= lt!2195465 (Context!9031 (Cons!61569 (reg!15460 (regOne!30774 r!7292)) lt!2195450)))))

(declare-fun b!5388644 () Bool)

(declare-fun res!2289518 () Bool)

(assert (=> b!5388644 (=> res!2289518 e!3342066)))

(declare-fun matchR!7316 (Regex!15131 List!61692) Bool)

(assert (=> b!5388644 (= res!2289518 (not (matchR!7316 lt!2195430 (_1!35633 lt!2195436))))))

(declare-fun b!5388645 () Bool)

(declare-fun res!2289512 () Bool)

(assert (=> b!5388645 (=> res!2289512 e!3342052)))

(assert (=> b!5388645 (= res!2289512 (not (= (matchZipper!1375 lt!2195443 s!2326) (matchZipper!1375 lt!2195461 (t!374915 s!2326)))))))

(declare-fun b!5388646 () Bool)

(declare-fun e!3342050 () Bool)

(declare-fun e!3342051 () Bool)

(assert (=> b!5388646 (= e!3342050 e!3342051)))

(declare-fun res!2289500 () Bool)

(assert (=> b!5388646 (=> res!2289500 e!3342051)))

(declare-fun lt!2195446 () List!61694)

(declare-fun lt!2195459 () Regex!15131)

(declare-fun unfocusZipper!873 (List!61694) Regex!15131)

(assert (=> b!5388646 (= res!2289500 (not (= (unfocusZipper!873 lt!2195446) lt!2195459)))))

(declare-fun lt!2195463 () Context!9030)

(assert (=> b!5388646 (= lt!2195446 (Cons!61570 lt!2195463 Nil!61570))))

(declare-fun b!5388648 () Bool)

(declare-fun e!3342064 () Bool)

(assert (=> b!5388648 (= e!3342064 e!3342053)))

(declare-fun res!2289496 () Bool)

(assert (=> b!5388648 (=> res!2289496 e!3342053)))

(declare-fun lt!2195476 () (InoxSet Context!9030))

(assert (=> b!5388648 (= res!2289496 (not (= lt!2195476 lt!2195419)))))

(declare-fun derivationStepZipperDown!579 (Regex!15131 Context!9030 C!30532) (InoxSet Context!9030))

(assert (=> b!5388648 (= lt!2195419 (derivationStepZipperDown!579 (reg!15460 (regOne!30774 r!7292)) lt!2195463 (h!68016 s!2326)))))

(assert (=> b!5388648 (= lt!2195463 (Context!9031 lt!2195450))))

(assert (=> b!5388648 (= lt!2195450 (Cons!61569 lt!2195430 (t!374916 (exprs!5015 (h!68018 zl!343)))))))

(assert (=> b!5388648 (= lt!2195430 (Star!15131 (reg!15460 (regOne!30774 r!7292))))))

(declare-fun b!5388649 () Bool)

(declare-fun res!2289516 () Bool)

(declare-fun e!3342044 () Bool)

(assert (=> b!5388649 (=> (not res!2289516) (not e!3342044))))

(declare-fun z!1189 () (InoxSet Context!9030))

(declare-fun toList!8915 ((InoxSet Context!9030)) List!61694)

(assert (=> b!5388649 (= res!2289516 (= (toList!8915 z!1189) zl!343))))

(declare-fun e!3342056 () Bool)

(assert (=> b!5388650 (= e!3342056 e!3342064)))

(declare-fun res!2289520 () Bool)

(assert (=> b!5388650 (=> res!2289520 e!3342064)))

(assert (=> b!5388650 (= res!2289520 (or (and ((_ is ElementMatch!15131) (regOne!30774 r!7292)) (= (c!938981 (regOne!30774 r!7292)) (h!68016 s!2326))) ((_ is Union!15131) (regOne!30774 r!7292))))))

(declare-fun lt!2195425 () Unit!154042)

(assert (=> b!5388650 (= lt!2195425 e!3342047)))

(declare-fun c!938980 () Bool)

(declare-fun nullable!5300 (Regex!15131) Bool)

(assert (=> b!5388650 (= c!938980 (nullable!5300 (h!68017 (exprs!5015 (h!68018 zl!343)))))))

(assert (=> b!5388650 (= (flatMap!858 z!1189 lambda!279695) (derivationStepZipperUp!503 (h!68018 zl!343) (h!68016 s!2326)))))

(declare-fun lt!2195473 () Unit!154042)

(assert (=> b!5388650 (= lt!2195473 (lemmaFlatMapOnSingletonSet!390 z!1189 (h!68018 zl!343) lambda!279695))))

(declare-fun lt!2195427 () Context!9030)

(assert (=> b!5388650 (= lt!2195418 (derivationStepZipperUp!503 lt!2195427 (h!68016 s!2326)))))

(assert (=> b!5388650 (= lt!2195476 (derivationStepZipperDown!579 (h!68017 (exprs!5015 (h!68018 zl!343))) lt!2195427 (h!68016 s!2326)))))

(assert (=> b!5388650 (= lt!2195427 (Context!9031 (t!374916 (exprs!5015 (h!68018 zl!343)))))))

(declare-fun lt!2195447 () (InoxSet Context!9030))

(assert (=> b!5388650 (= lt!2195447 (derivationStepZipperUp!503 (Context!9031 (Cons!61569 (h!68017 (exprs!5015 (h!68018 zl!343))) (t!374916 (exprs!5015 (h!68018 zl!343))))) (h!68016 s!2326)))))

(declare-fun b!5388651 () Bool)

(declare-fun e!3342054 () Bool)

(assert (=> b!5388651 (= e!3342054 tp_is_empty!39515)))

(declare-fun b!5388652 () Bool)

(declare-fun res!2289522 () Bool)

(assert (=> b!5388652 (=> res!2289522 e!3342059)))

(declare-fun generalisedUnion!1060 (List!61693) Regex!15131)

(declare-fun unfocusZipperList!573 (List!61694) List!61693)

(assert (=> b!5388652 (= res!2289522 (not (= r!7292 (generalisedUnion!1060 (unfocusZipperList!573 zl!343)))))))

(declare-fun b!5388653 () Bool)

(declare-fun res!2289508 () Bool)

(declare-fun e!3342046 () Bool)

(assert (=> b!5388653 (=> res!2289508 e!3342046)))

(declare-fun lt!2195428 () tuple2!64660)

(assert (=> b!5388653 (= res!2289508 (not (matchR!7316 lt!2195430 (_2!35633 lt!2195428))))))

(declare-fun e!3342063 () Bool)

(assert (=> b!5388654 (= e!3342066 e!3342063)))

(declare-fun res!2289514 () Bool)

(assert (=> b!5388654 (=> res!2289514 e!3342063)))

(declare-fun lt!2195426 () List!61692)

(assert (=> b!5388654 (= res!2289514 (not (= (_1!35633 lt!2195436) lt!2195426)))))

(assert (=> b!5388654 (= lt!2195426 (++!13447 (_1!35633 lt!2195428) (_2!35633 lt!2195428)))))

(declare-fun lt!2195474 () Option!15242)

(assert (=> b!5388654 (= lt!2195428 (get!21205 lt!2195474))))

(assert (=> b!5388654 (= (Exists!2312 lambda!279698) (Exists!2312 lambda!279700))))

(declare-fun lt!2195423 () Unit!154042)

(assert (=> b!5388654 (= lt!2195423 (lemmaExistCutMatchRandMatchRSpecEquivalent!966 (reg!15460 (regOne!30774 r!7292)) lt!2195430 (_1!35633 lt!2195436)))))

(assert (=> b!5388654 (= (Exists!2312 lambda!279698) (Exists!2312 lambda!279699))))

(declare-fun lt!2195458 () Unit!154042)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!396 (Regex!15131 List!61692) Unit!154042)

(assert (=> b!5388654 (= lt!2195458 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!396 (reg!15460 (regOne!30774 r!7292)) (_1!35633 lt!2195436)))))

(assert (=> b!5388654 (= (isDefined!11945 lt!2195474) (Exists!2312 lambda!279698))))

(assert (=> b!5388654 (= lt!2195474 (findConcatSeparation!1656 (reg!15460 (regOne!30774 r!7292)) lt!2195430 Nil!61568 (_1!35633 lt!2195436) (_1!35633 lt!2195436)))))

(declare-fun lt!2195434 () Unit!154042)

(assert (=> b!5388654 (= lt!2195434 (lemmaFindConcatSeparationEquivalentToExists!1420 (reg!15460 (regOne!30774 r!7292)) lt!2195430 (_1!35633 lt!2195436)))))

(declare-fun matchRSpec!2234 (Regex!15131 List!61692) Bool)

(assert (=> b!5388654 (matchRSpec!2234 lt!2195430 (_1!35633 lt!2195436))))

(declare-fun lt!2195445 () Unit!154042)

(declare-fun mainMatchTheorem!2234 (Regex!15131 List!61692) Unit!154042)

(assert (=> b!5388654 (= lt!2195445 (mainMatchTheorem!2234 lt!2195430 (_1!35633 lt!2195436)))))

(declare-fun b!5388655 () Bool)

(declare-fun res!2289502 () Bool)

(assert (=> b!5388655 (=> res!2289502 e!3342059)))

(declare-fun generalisedConcat!800 (List!61693) Regex!15131)

(assert (=> b!5388655 (= res!2289502 (not (= r!7292 (generalisedConcat!800 (exprs!5015 (h!68018 zl!343))))))))

(declare-fun setElem!34997 () Context!9030)

(declare-fun e!3342045 () Bool)

(declare-fun tp!1492456 () Bool)

(declare-fun setRes!34997 () Bool)

(declare-fun setNonEmpty!34997 () Bool)

(declare-fun inv!81074 (Context!9030) Bool)

(assert (=> setNonEmpty!34997 (= setRes!34997 (and tp!1492456 (inv!81074 setElem!34997) e!3342045))))

(declare-fun setRest!34997 () (InoxSet Context!9030))

(assert (=> setNonEmpty!34997 (= z!1189 ((_ map or) (store ((as const (Array Context!9030 Bool)) false) setElem!34997 true) setRest!34997))))

(declare-fun b!5388656 () Bool)

(assert (=> b!5388656 (= e!3342051 e!3342048)))

(declare-fun res!2289509 () Bool)

(assert (=> b!5388656 (=> res!2289509 e!3342048)))

(declare-fun lt!2195429 () Bool)

(assert (=> b!5388656 (= res!2289509 (not lt!2195429))))

(declare-fun e!3342058 () Bool)

(assert (=> b!5388656 e!3342058))

(declare-fun res!2289513 () Bool)

(assert (=> b!5388656 (=> (not res!2289513) (not e!3342058))))

(declare-fun lt!2195431 () Bool)

(declare-fun lt!2195449 () Regex!15131)

(assert (=> b!5388656 (= res!2289513 (= lt!2195431 (matchRSpec!2234 lt!2195449 s!2326)))))

(assert (=> b!5388656 (= lt!2195431 (matchR!7316 lt!2195449 s!2326))))

(declare-fun lt!2195454 () Unit!154042)

(assert (=> b!5388656 (= lt!2195454 (mainMatchTheorem!2234 lt!2195449 s!2326))))

(declare-fun b!5388657 () Bool)

(declare-fun e!3342055 () Bool)

(assert (=> b!5388657 (= e!3342055 lt!2195431)))

(declare-fun b!5388658 () Bool)

(declare-fun e!3342049 () Bool)

(assert (=> b!5388658 (= e!3342049 (not e!3342059))))

(declare-fun res!2289506 () Bool)

(assert (=> b!5388658 (=> res!2289506 e!3342059)))

(assert (=> b!5388658 (= res!2289506 (not ((_ is Cons!61570) zl!343)))))

(declare-fun lt!2195468 () Bool)

(assert (=> b!5388658 (= lt!2195429 lt!2195468)))

(assert (=> b!5388658 (= lt!2195468 (matchRSpec!2234 r!7292 s!2326))))

(assert (=> b!5388658 (= lt!2195429 (matchR!7316 r!7292 s!2326))))

(declare-fun lt!2195453 () Unit!154042)

(assert (=> b!5388658 (= lt!2195453 (mainMatchTheorem!2234 r!7292 s!2326))))

(declare-fun b!5388659 () Bool)

(declare-fun tp!1492452 () Bool)

(assert (=> b!5388659 (= e!3342045 tp!1492452)))

(declare-fun b!5388660 () Bool)

(declare-fun validRegex!6867 (Regex!15131) Bool)

(assert (=> b!5388660 (= e!3342046 (validRegex!6867 lt!2195449))))

(declare-fun lt!2195469 () Unit!154042)

(declare-fun lt!2195432 () List!61693)

(declare-fun lambda!279701 () Int)

(declare-fun lemmaConcatPreservesForall!162 (List!61693 List!61693 Int) Unit!154042)

(assert (=> b!5388660 (= lt!2195469 (lemmaConcatPreservesForall!162 lt!2195432 lt!2195450 lambda!279701))))

(assert (=> b!5388660 e!3342055))

(declare-fun res!2289490 () Bool)

(assert (=> b!5388660 (=> (not res!2289490) (not e!3342055))))

(declare-fun lt!2195442 () List!61692)

(assert (=> b!5388660 (= res!2289490 (matchR!7316 lt!2195449 lt!2195442))))

(declare-fun lt!2195460 () List!61692)

(declare-fun lt!2195422 () Unit!154042)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!178 (Regex!15131 Regex!15131 List!61692 List!61692) Unit!154042)

(assert (=> b!5388660 (= lt!2195422 (lemmaTwoRegexMatchThenConcatMatchesConcatString!178 (reg!15460 (regOne!30774 r!7292)) lt!2195459 (_1!35633 lt!2195428) lt!2195460))))

(declare-fun ++!13448 (List!61693 List!61693) List!61693)

(assert (=> b!5388660 (matchZipper!1375 (store ((as const (Array Context!9030 Bool)) false) (Context!9031 (++!13448 lt!2195432 lt!2195450)) true) lt!2195442)))

(declare-fun lt!2195452 () Unit!154042)

(assert (=> b!5388660 (= lt!2195452 (lemmaConcatPreservesForall!162 lt!2195432 lt!2195450 lambda!279701))))

(declare-fun lt!2195472 () Context!9030)

(declare-fun lt!2195437 () Unit!154042)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!18 (Context!9030 Context!9030 List!61692 List!61692) Unit!154042)

(assert (=> b!5388660 (= lt!2195437 (lemmaConcatenateContextMatchesConcatOfStrings!18 lt!2195472 lt!2195463 (_1!35633 lt!2195428) lt!2195460))))

(declare-fun lt!2195438 () (InoxSet Context!9030))

(assert (=> b!5388660 (matchZipper!1375 lt!2195438 lt!2195460)))

(declare-fun lt!2195464 () Unit!154042)

(declare-fun theoremZipperRegexEquiv!461 ((InoxSet Context!9030) List!61694 Regex!15131 List!61692) Unit!154042)

(assert (=> b!5388660 (= lt!2195464 (theoremZipperRegexEquiv!461 lt!2195438 lt!2195446 lt!2195459 lt!2195460))))

(declare-fun lt!2195456 () (InoxSet Context!9030))

(assert (=> b!5388660 (matchZipper!1375 lt!2195456 (_1!35633 lt!2195428))))

(declare-fun lt!2195455 () Unit!154042)

(declare-fun lt!2195467 () List!61694)

(assert (=> b!5388660 (= lt!2195455 (theoremZipperRegexEquiv!461 lt!2195456 lt!2195467 (reg!15460 (regOne!30774 r!7292)) (_1!35633 lt!2195428)))))

(assert (=> b!5388660 (matchR!7316 lt!2195459 lt!2195460)))

(declare-fun lt!2195439 () Unit!154042)

(assert (=> b!5388660 (= lt!2195439 (lemmaTwoRegexMatchThenConcatMatchesConcatString!178 lt!2195430 (regTwo!30774 r!7292) (_2!35633 lt!2195428) (_2!35633 lt!2195436)))))

(assert (=> b!5388660 (matchR!7316 lt!2195430 lt!2195426)))

(declare-fun lt!2195451 () Unit!154042)

(declare-fun lemmaStarApp!52 (Regex!15131 List!61692 List!61692) Unit!154042)

(assert (=> b!5388660 (= lt!2195451 (lemmaStarApp!52 (reg!15460 (regOne!30774 r!7292)) (_1!35633 lt!2195428) (_2!35633 lt!2195428)))))

(declare-fun b!5388661 () Bool)

(declare-fun e!3342062 () Bool)

(declare-fun tp!1492458 () Bool)

(declare-fun e!3342060 () Bool)

(assert (=> b!5388661 (= e!3342060 (and (inv!81074 (h!68018 zl!343)) e!3342062 tp!1492458))))

(declare-fun b!5388662 () Bool)

(assert (=> b!5388662 (= e!3342063 e!3342046)))

(declare-fun res!2289504 () Bool)

(assert (=> b!5388662 (=> res!2289504 e!3342046)))

(declare-fun lt!2195420 () List!61692)

(assert (=> b!5388662 (= res!2289504 (not (= lt!2195420 s!2326)))))

(assert (=> b!5388662 (= lt!2195420 lt!2195442)))

(assert (=> b!5388662 (= lt!2195442 (++!13447 (_1!35633 lt!2195428) lt!2195460))))

(assert (=> b!5388662 (= lt!2195420 (++!13447 lt!2195426 (_2!35633 lt!2195436)))))

(assert (=> b!5388662 (= lt!2195460 (++!13447 (_2!35633 lt!2195428) (_2!35633 lt!2195436)))))

(declare-fun lt!2195433 () Unit!154042)

(declare-fun lemmaConcatAssociativity!2828 (List!61692 List!61692 List!61692) Unit!154042)

(assert (=> b!5388662 (= lt!2195433 (lemmaConcatAssociativity!2828 (_1!35633 lt!2195428) (_2!35633 lt!2195428) (_2!35633 lt!2195436)))))

(declare-fun b!5388663 () Bool)

(declare-fun e!3342065 () Bool)

(assert (=> b!5388663 (= e!3342052 e!3342065)))

(declare-fun res!2289494 () Bool)

(assert (=> b!5388663 (=> res!2289494 e!3342065)))

(assert (=> b!5388663 (= res!2289494 (not (= r!7292 lt!2195459)))))

(assert (=> b!5388663 (= lt!2195459 (Concat!23976 lt!2195430 (regTwo!30774 r!7292)))))

(declare-fun b!5388664 () Bool)

(declare-fun tp!1492459 () Bool)

(declare-fun tp!1492457 () Bool)

(assert (=> b!5388664 (= e!3342054 (and tp!1492459 tp!1492457))))

(declare-fun setIsEmpty!34997 () Bool)

(assert (=> setIsEmpty!34997 setRes!34997))

(assert (=> b!5388665 (= e!3342059 e!3342056)))

(declare-fun res!2289511 () Bool)

(assert (=> b!5388665 (=> res!2289511 e!3342056)))

(declare-fun lt!2195435 () Bool)

(assert (=> b!5388665 (= res!2289511 (or (not (= lt!2195429 lt!2195435)) ((_ is Nil!61568) s!2326)))))

(assert (=> b!5388665 (= (Exists!2312 lambda!279693) (Exists!2312 lambda!279694))))

(declare-fun lt!2195440 () Unit!154042)

(assert (=> b!5388665 (= lt!2195440 (lemmaExistCutMatchRandMatchRSpecEquivalent!966 (regOne!30774 r!7292) (regTwo!30774 r!7292) s!2326))))

(assert (=> b!5388665 (= lt!2195435 (Exists!2312 lambda!279693))))

(assert (=> b!5388665 (= lt!2195435 (isDefined!11945 (findConcatSeparation!1656 (regOne!30774 r!7292) (regTwo!30774 r!7292) Nil!61568 s!2326 s!2326)))))

(declare-fun lt!2195444 () Unit!154042)

(assert (=> b!5388665 (= lt!2195444 (lemmaFindConcatSeparationEquivalentToExists!1420 (regOne!30774 r!7292) (regTwo!30774 r!7292) s!2326))))

(declare-fun b!5388666 () Bool)

(declare-fun res!2289493 () Bool)

(assert (=> b!5388666 (=> res!2289493 e!3342052)))

(declare-fun lt!2195424 () Regex!15131)

(assert (=> b!5388666 (= res!2289493 (not (= lt!2195424 r!7292)))))

(declare-fun b!5388667 () Bool)

(assert (=> b!5388667 (= e!3342058 (or (not lt!2195429) lt!2195468))))

(declare-fun b!5388668 () Bool)

(assert (=> b!5388668 (= e!3342044 e!3342049)))

(declare-fun res!2289519 () Bool)

(assert (=> b!5388668 (=> (not res!2289519) (not e!3342049))))

(assert (=> b!5388668 (= res!2289519 (= r!7292 lt!2195424))))

(assert (=> b!5388668 (= lt!2195424 (unfocusZipper!873 zl!343))))

(declare-fun b!5388669 () Bool)

(declare-fun res!2289492 () Bool)

(assert (=> b!5388669 (=> res!2289492 e!3342064)))

(assert (=> b!5388669 (= res!2289492 (or ((_ is Concat!23976) (regOne!30774 r!7292)) (not ((_ is Star!15131) (regOne!30774 r!7292)))))))

(declare-fun b!5388670 () Bool)

(declare-fun res!2289521 () Bool)

(assert (=> b!5388670 (=> res!2289521 e!3342059)))

(assert (=> b!5388670 (= res!2289521 (or ((_ is EmptyExpr!15131) r!7292) ((_ is EmptyLang!15131) r!7292) ((_ is ElementMatch!15131) r!7292) ((_ is Union!15131) r!7292) (not ((_ is Concat!23976) r!7292))))))

(declare-fun b!5388671 () Bool)

(declare-fun e!3342042 () Bool)

(assert (=> b!5388671 (= e!3342042 (nullable!5300 (regOne!30774 (regOne!30774 r!7292))))))

(declare-fun b!5388672 () Bool)

(declare-fun e!3342057 () Bool)

(assert (=> b!5388672 (= e!3342065 e!3342057)))

(declare-fun res!2289498 () Bool)

(assert (=> b!5388672 (=> res!2289498 e!3342057)))

(assert (=> b!5388672 (= res!2289498 (not (= (unfocusZipper!873 (Cons!61570 lt!2195465 Nil!61570)) lt!2195449)))))

(assert (=> b!5388672 (= lt!2195449 (Concat!23976 (reg!15460 (regOne!30774 r!7292)) lt!2195459))))

(declare-fun b!5388673 () Bool)

(declare-fun res!2289523 () Bool)

(assert (=> b!5388673 (=> res!2289523 e!3342064)))

(assert (=> b!5388673 (= res!2289523 e!3342042)))

(declare-fun res!2289491 () Bool)

(assert (=> b!5388673 (=> (not res!2289491) (not e!3342042))))

(assert (=> b!5388673 (= res!2289491 ((_ is Concat!23976) (regOne!30774 r!7292)))))

(declare-fun b!5388674 () Bool)

(declare-fun res!2289507 () Bool)

(assert (=> b!5388674 (=> res!2289507 e!3342059)))

(declare-fun isEmpty!33567 (List!61694) Bool)

(assert (=> b!5388674 (= res!2289507 (not (isEmpty!33567 (t!374917 zl!343))))))

(declare-fun b!5388675 () Bool)

(declare-fun tp!1492455 () Bool)

(declare-fun tp!1492461 () Bool)

(assert (=> b!5388675 (= e!3342054 (and tp!1492455 tp!1492461))))

(declare-fun b!5388676 () Bool)

(declare-fun res!2289505 () Bool)

(assert (=> b!5388676 (=> res!2289505 e!3342056)))

(declare-fun isEmpty!33568 (List!61693) Bool)

(assert (=> b!5388676 (= res!2289505 (isEmpty!33568 (t!374916 (exprs!5015 (h!68018 zl!343)))))))

(declare-fun b!5388677 () Bool)

(declare-fun Unit!154045 () Unit!154042)

(assert (=> b!5388677 (= e!3342047 Unit!154045)))

(declare-fun lt!2195470 () Unit!154042)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!368 ((InoxSet Context!9030) (InoxSet Context!9030) List!61692) Unit!154042)

(assert (=> b!5388677 (= lt!2195470 (lemmaZipperConcatMatchesSameAsBothZippers!368 lt!2195476 lt!2195418 (t!374915 s!2326)))))

(declare-fun res!2289499 () Bool)

(assert (=> b!5388677 (= res!2289499 (matchZipper!1375 lt!2195476 (t!374915 s!2326)))))

(assert (=> b!5388677 (=> res!2289499 e!3342043)))

(assert (=> b!5388677 (= (matchZipper!1375 ((_ map or) lt!2195476 lt!2195418) (t!374915 s!2326)) e!3342043)))

(declare-fun b!5388678 () Bool)

(declare-fun tp!1492454 () Bool)

(assert (=> b!5388678 (= e!3342062 tp!1492454)))

(declare-fun b!5388679 () Bool)

(declare-fun res!2289501 () Bool)

(assert (=> b!5388679 (=> res!2289501 e!3342066)))

(assert (=> b!5388679 (= res!2289501 (not (matchR!7316 (regTwo!30774 r!7292) (_2!35633 lt!2195436))))))

(declare-fun b!5388680 () Bool)

(assert (=> b!5388680 (= e!3342057 e!3342050)))

(declare-fun res!2289510 () Bool)

(assert (=> b!5388680 (=> res!2289510 e!3342050)))

(assert (=> b!5388680 (= res!2289510 (not (= (unfocusZipper!873 lt!2195467) (reg!15460 (regOne!30774 r!7292)))))))

(assert (=> b!5388680 (= lt!2195467 (Cons!61570 lt!2195472 Nil!61570))))

(assert (=> b!5388680 (= (flatMap!858 lt!2195438 lambda!279695) (derivationStepZipperUp!503 lt!2195463 (h!68016 s!2326)))))

(declare-fun lt!2195457 () Unit!154042)

(assert (=> b!5388680 (= lt!2195457 (lemmaFlatMapOnSingletonSet!390 lt!2195438 lt!2195463 lambda!279695))))

(assert (=> b!5388680 (= (flatMap!858 lt!2195456 lambda!279695) (derivationStepZipperUp!503 lt!2195472 (h!68016 s!2326)))))

(declare-fun lt!2195441 () Unit!154042)

(assert (=> b!5388680 (= lt!2195441 (lemmaFlatMapOnSingletonSet!390 lt!2195456 lt!2195472 lambda!279695))))

(declare-fun lt!2195466 () (InoxSet Context!9030))

(assert (=> b!5388680 (= lt!2195466 (derivationStepZipperUp!503 lt!2195463 (h!68016 s!2326)))))

(declare-fun lt!2195421 () (InoxSet Context!9030))

(assert (=> b!5388680 (= lt!2195421 (derivationStepZipperUp!503 lt!2195472 (h!68016 s!2326)))))

(assert (=> b!5388680 (= lt!2195438 (store ((as const (Array Context!9030 Bool)) false) lt!2195463 true))))

(assert (=> b!5388680 (= lt!2195456 (store ((as const (Array Context!9030 Bool)) false) lt!2195472 true))))

(assert (=> b!5388680 (= lt!2195472 (Context!9031 lt!2195432))))

(assert (=> b!5388680 (= lt!2195432 (Cons!61569 (reg!15460 (regOne!30774 r!7292)) Nil!61569))))

(declare-fun b!5388681 () Bool)

(declare-fun tp!1492453 () Bool)

(assert (=> b!5388681 (= e!3342054 tp!1492453)))

(declare-fun res!2289515 () Bool)

(assert (=> start!566318 (=> (not res!2289515) (not e!3342044))))

(assert (=> start!566318 (= res!2289515 (validRegex!6867 r!7292))))

(assert (=> start!566318 e!3342044))

(assert (=> start!566318 e!3342054))

(declare-fun condSetEmpty!34997 () Bool)

(assert (=> start!566318 (= condSetEmpty!34997 (= z!1189 ((as const (Array Context!9030 Bool)) false)))))

(assert (=> start!566318 setRes!34997))

(assert (=> start!566318 e!3342060))

(assert (=> start!566318 e!3342061))

(declare-fun b!5388647 () Bool)

(declare-fun res!2289495 () Bool)

(assert (=> b!5388647 (=> res!2289495 e!3342046)))

(assert (=> b!5388647 (= res!2289495 (not (matchR!7316 (reg!15460 (regOne!30774 r!7292)) (_1!35633 lt!2195428))))))

(assert (= (and start!566318 res!2289515) b!5388649))

(assert (= (and b!5388649 res!2289516) b!5388668))

(assert (= (and b!5388668 res!2289519) b!5388658))

(assert (= (and b!5388658 (not res!2289506)) b!5388674))

(assert (= (and b!5388674 (not res!2289507)) b!5388655))

(assert (= (and b!5388655 (not res!2289502)) b!5388638))

(assert (= (and b!5388638 (not res!2289489)) b!5388652))

(assert (= (and b!5388652 (not res!2289522)) b!5388670))

(assert (= (and b!5388670 (not res!2289521)) b!5388665))

(assert (= (and b!5388665 (not res!2289511)) b!5388676))

(assert (= (and b!5388676 (not res!2289505)) b!5388650))

(assert (= (and b!5388650 c!938980) b!5388677))

(assert (= (and b!5388650 (not c!938980)) b!5388637))

(assert (= (and b!5388677 (not res!2289499)) b!5388642))

(assert (= (and b!5388650 (not res!2289520)) b!5388673))

(assert (= (and b!5388673 res!2289491) b!5388671))

(assert (= (and b!5388673 (not res!2289523)) b!5388669))

(assert (= (and b!5388669 (not res!2289492)) b!5388648))

(assert (= (and b!5388648 (not res!2289496)) b!5388643))

(assert (= (and b!5388643 (not res!2289497)) b!5388645))

(assert (= (and b!5388645 (not res!2289512)) b!5388666))

(assert (= (and b!5388666 (not res!2289493)) b!5388663))

(assert (= (and b!5388663 (not res!2289494)) b!5388672))

(assert (= (and b!5388672 (not res!2289498)) b!5388680))

(assert (= (and b!5388680 (not res!2289510)) b!5388646))

(assert (= (and b!5388646 (not res!2289500)) b!5388656))

(assert (= (and b!5388656 res!2289513) b!5388667))

(assert (= (and b!5388656 (not res!2289509)) b!5388639))

(assert (= (and b!5388639 (not res!2289517)) b!5388644))

(assert (= (and b!5388644 (not res!2289518)) b!5388679))

(assert (= (and b!5388679 (not res!2289501)) b!5388640))

(assert (= (and b!5388640 (not res!2289503)) b!5388654))

(assert (= (and b!5388654 (not res!2289514)) b!5388662))

(assert (= (and b!5388662 (not res!2289504)) b!5388647))

(assert (= (and b!5388647 (not res!2289495)) b!5388653))

(assert (= (and b!5388653 (not res!2289508)) b!5388660))

(assert (= (and b!5388660 res!2289490) b!5388657))

(assert (= (and start!566318 ((_ is ElementMatch!15131) r!7292)) b!5388651))

(assert (= (and start!566318 ((_ is Concat!23976) r!7292)) b!5388675))

(assert (= (and start!566318 ((_ is Star!15131) r!7292)) b!5388681))

(assert (= (and start!566318 ((_ is Union!15131) r!7292)) b!5388664))

(assert (= (and start!566318 condSetEmpty!34997) setIsEmpty!34997))

(assert (= (and start!566318 (not condSetEmpty!34997)) setNonEmpty!34997))

(assert (= setNonEmpty!34997 b!5388659))

(assert (= b!5388661 b!5388678))

(assert (= (and start!566318 ((_ is Cons!61570) zl!343)) b!5388661))

(assert (= (and start!566318 ((_ is Cons!61568) s!2326)) b!5388641))

(declare-fun m!6414444 () Bool)

(assert (=> b!5388639 m!6414444))

(declare-fun m!6414446 () Bool)

(assert (=> b!5388639 m!6414446))

(declare-fun m!6414448 () Bool)

(assert (=> b!5388639 m!6414448))

(assert (=> b!5388639 m!6414446))

(declare-fun m!6414450 () Bool)

(assert (=> b!5388639 m!6414450))

(declare-fun m!6414452 () Bool)

(assert (=> b!5388639 m!6414452))

(declare-fun m!6414454 () Bool)

(assert (=> b!5388639 m!6414454))

(declare-fun m!6414456 () Bool)

(assert (=> b!5388639 m!6414456))

(declare-fun m!6414458 () Bool)

(assert (=> b!5388639 m!6414458))

(declare-fun m!6414460 () Bool)

(assert (=> b!5388647 m!6414460))

(declare-fun m!6414462 () Bool)

(assert (=> b!5388653 m!6414462))

(declare-fun m!6414464 () Bool)

(assert (=> b!5388656 m!6414464))

(declare-fun m!6414466 () Bool)

(assert (=> b!5388656 m!6414466))

(declare-fun m!6414468 () Bool)

(assert (=> b!5388656 m!6414468))

(declare-fun m!6414470 () Bool)

(assert (=> b!5388643 m!6414470))

(declare-fun m!6414472 () Bool)

(assert (=> b!5388643 m!6414472))

(declare-fun m!6414474 () Bool)

(assert (=> b!5388643 m!6414474))

(declare-fun m!6414476 () Bool)

(assert (=> b!5388643 m!6414476))

(declare-fun m!6414478 () Bool)

(assert (=> b!5388643 m!6414478))

(declare-fun m!6414480 () Bool)

(assert (=> setNonEmpty!34997 m!6414480))

(declare-fun m!6414482 () Bool)

(assert (=> b!5388648 m!6414482))

(declare-fun m!6414484 () Bool)

(assert (=> b!5388679 m!6414484))

(declare-fun m!6414486 () Bool)

(assert (=> b!5388654 m!6414486))

(declare-fun m!6414488 () Bool)

(assert (=> b!5388654 m!6414488))

(declare-fun m!6414490 () Bool)

(assert (=> b!5388654 m!6414490))

(declare-fun m!6414492 () Bool)

(assert (=> b!5388654 m!6414492))

(declare-fun m!6414494 () Bool)

(assert (=> b!5388654 m!6414494))

(declare-fun m!6414496 () Bool)

(assert (=> b!5388654 m!6414496))

(assert (=> b!5388654 m!6414490))

(declare-fun m!6414498 () Bool)

(assert (=> b!5388654 m!6414498))

(declare-fun m!6414500 () Bool)

(assert (=> b!5388654 m!6414500))

(declare-fun m!6414502 () Bool)

(assert (=> b!5388654 m!6414502))

(assert (=> b!5388654 m!6414490))

(declare-fun m!6414504 () Bool)

(assert (=> b!5388654 m!6414504))

(declare-fun m!6414506 () Bool)

(assert (=> b!5388654 m!6414506))

(declare-fun m!6414508 () Bool)

(assert (=> b!5388654 m!6414508))

(declare-fun m!6414510 () Bool)

(assert (=> b!5388652 m!6414510))

(assert (=> b!5388652 m!6414510))

(declare-fun m!6414512 () Bool)

(assert (=> b!5388652 m!6414512))

(declare-fun m!6414514 () Bool)

(assert (=> b!5388662 m!6414514))

(declare-fun m!6414516 () Bool)

(assert (=> b!5388662 m!6414516))

(declare-fun m!6414518 () Bool)

(assert (=> b!5388662 m!6414518))

(declare-fun m!6414520 () Bool)

(assert (=> b!5388662 m!6414520))

(declare-fun m!6414522 () Bool)

(assert (=> b!5388680 m!6414522))

(declare-fun m!6414524 () Bool)

(assert (=> b!5388680 m!6414524))

(declare-fun m!6414526 () Bool)

(assert (=> b!5388680 m!6414526))

(declare-fun m!6414528 () Bool)

(assert (=> b!5388680 m!6414528))

(declare-fun m!6414530 () Bool)

(assert (=> b!5388680 m!6414530))

(declare-fun m!6414532 () Bool)

(assert (=> b!5388680 m!6414532))

(declare-fun m!6414534 () Bool)

(assert (=> b!5388680 m!6414534))

(declare-fun m!6414536 () Bool)

(assert (=> b!5388680 m!6414536))

(declare-fun m!6414538 () Bool)

(assert (=> b!5388680 m!6414538))

(declare-fun m!6414540 () Bool)

(assert (=> b!5388640 m!6414540))

(declare-fun m!6414542 () Bool)

(assert (=> b!5388650 m!6414542))

(declare-fun m!6414544 () Bool)

(assert (=> b!5388650 m!6414544))

(declare-fun m!6414546 () Bool)

(assert (=> b!5388650 m!6414546))

(declare-fun m!6414548 () Bool)

(assert (=> b!5388650 m!6414548))

(declare-fun m!6414550 () Bool)

(assert (=> b!5388650 m!6414550))

(declare-fun m!6414552 () Bool)

(assert (=> b!5388650 m!6414552))

(declare-fun m!6414554 () Bool)

(assert (=> b!5388650 m!6414554))

(declare-fun m!6414556 () Bool)

(assert (=> b!5388644 m!6414556))

(declare-fun m!6414558 () Bool)

(assert (=> start!566318 m!6414558))

(declare-fun m!6414560 () Bool)

(assert (=> b!5388671 m!6414560))

(declare-fun m!6414562 () Bool)

(assert (=> b!5388668 m!6414562))

(declare-fun m!6414564 () Bool)

(assert (=> b!5388674 m!6414564))

(declare-fun m!6414566 () Bool)

(assert (=> b!5388645 m!6414566))

(declare-fun m!6414568 () Bool)

(assert (=> b!5388645 m!6414568))

(declare-fun m!6414570 () Bool)

(assert (=> b!5388661 m!6414570))

(declare-fun m!6414572 () Bool)

(assert (=> b!5388672 m!6414572))

(declare-fun m!6414574 () Bool)

(assert (=> b!5388660 m!6414574))

(declare-fun m!6414576 () Bool)

(assert (=> b!5388660 m!6414576))

(declare-fun m!6414578 () Bool)

(assert (=> b!5388660 m!6414578))

(declare-fun m!6414580 () Bool)

(assert (=> b!5388660 m!6414580))

(assert (=> b!5388660 m!6414580))

(declare-fun m!6414582 () Bool)

(assert (=> b!5388660 m!6414582))

(declare-fun m!6414584 () Bool)

(assert (=> b!5388660 m!6414584))

(declare-fun m!6414586 () Bool)

(assert (=> b!5388660 m!6414586))

(declare-fun m!6414588 () Bool)

(assert (=> b!5388660 m!6414588))

(declare-fun m!6414590 () Bool)

(assert (=> b!5388660 m!6414590))

(declare-fun m!6414592 () Bool)

(assert (=> b!5388660 m!6414592))

(declare-fun m!6414594 () Bool)

(assert (=> b!5388660 m!6414594))

(declare-fun m!6414596 () Bool)

(assert (=> b!5388660 m!6414596))

(assert (=> b!5388660 m!6414584))

(declare-fun m!6414598 () Bool)

(assert (=> b!5388660 m!6414598))

(declare-fun m!6414600 () Bool)

(assert (=> b!5388660 m!6414600))

(declare-fun m!6414602 () Bool)

(assert (=> b!5388660 m!6414602))

(declare-fun m!6414604 () Bool)

(assert (=> b!5388660 m!6414604))

(declare-fun m!6414606 () Bool)

(assert (=> b!5388646 m!6414606))

(declare-fun m!6414608 () Bool)

(assert (=> b!5388655 m!6414608))

(declare-fun m!6414610 () Bool)

(assert (=> b!5388642 m!6414610))

(declare-fun m!6414612 () Bool)

(assert (=> b!5388658 m!6414612))

(declare-fun m!6414614 () Bool)

(assert (=> b!5388658 m!6414614))

(declare-fun m!6414616 () Bool)

(assert (=> b!5388658 m!6414616))

(declare-fun m!6414618 () Bool)

(assert (=> b!5388676 m!6414618))

(declare-fun m!6414620 () Bool)

(assert (=> b!5388677 m!6414620))

(declare-fun m!6414622 () Bool)

(assert (=> b!5388677 m!6414622))

(declare-fun m!6414624 () Bool)

(assert (=> b!5388677 m!6414624))

(declare-fun m!6414626 () Bool)

(assert (=> b!5388649 m!6414626))

(declare-fun m!6414628 () Bool)

(assert (=> b!5388665 m!6414628))

(declare-fun m!6414630 () Bool)

(assert (=> b!5388665 m!6414630))

(declare-fun m!6414632 () Bool)

(assert (=> b!5388665 m!6414632))

(declare-fun m!6414634 () Bool)

(assert (=> b!5388665 m!6414634))

(assert (=> b!5388665 m!6414628))

(declare-fun m!6414636 () Bool)

(assert (=> b!5388665 m!6414636))

(assert (=> b!5388665 m!6414630))

(declare-fun m!6414638 () Bool)

(assert (=> b!5388665 m!6414638))

(check-sat (not b!5388652) (not b!5388662) (not setNonEmpty!34997) (not b!5388654) (not b!5388658) (not b!5388639) (not b!5388660) (not b!5388668) (not b!5388643) (not b!5388672) (not b!5388650) (not b!5388656) (not b!5388648) (not b!5388681) (not b!5388655) (not b!5388653) (not b!5388671) (not b!5388675) tp_is_empty!39515 (not b!5388646) (not b!5388664) (not start!566318) (not b!5388661) (not b!5388665) (not b!5388680) (not b!5388677) (not b!5388679) (not b!5388645) (not b!5388674) (not b!5388642) (not b!5388647) (not b!5388644) (not b!5388640) (not b!5388659) (not b!5388678) (not b!5388649) (not b!5388641) (not b!5388676))
(check-sat)
(get-model)

(declare-fun d!1723037 () Bool)

(declare-fun choose!40523 ((InoxSet Context!9030) Int) (InoxSet Context!9030))

(assert (=> d!1723037 (= (flatMap!858 z!1189 lambda!279695) (choose!40523 z!1189 lambda!279695))))

(declare-fun bs!1246931 () Bool)

(assert (= bs!1246931 d!1723037))

(declare-fun m!6414640 () Bool)

(assert (=> bs!1246931 m!6414640))

(assert (=> b!5388650 d!1723037))

(declare-fun d!1723039 () Bool)

(declare-fun dynLambda!24280 (Int Context!9030) (InoxSet Context!9030))

(assert (=> d!1723039 (= (flatMap!858 z!1189 lambda!279695) (dynLambda!24280 lambda!279695 (h!68018 zl!343)))))

(declare-fun lt!2195479 () Unit!154042)

(declare-fun choose!40524 ((InoxSet Context!9030) Context!9030 Int) Unit!154042)

(assert (=> d!1723039 (= lt!2195479 (choose!40524 z!1189 (h!68018 zl!343) lambda!279695))))

(assert (=> d!1723039 (= z!1189 (store ((as const (Array Context!9030 Bool)) false) (h!68018 zl!343) true))))

(assert (=> d!1723039 (= (lemmaFlatMapOnSingletonSet!390 z!1189 (h!68018 zl!343) lambda!279695) lt!2195479)))

(declare-fun b_lambda!206189 () Bool)

(assert (=> (not b_lambda!206189) (not d!1723039)))

(declare-fun bs!1246932 () Bool)

(assert (= bs!1246932 d!1723039))

(assert (=> bs!1246932 m!6414548))

(declare-fun m!6414642 () Bool)

(assert (=> bs!1246932 m!6414642))

(declare-fun m!6414644 () Bool)

(assert (=> bs!1246932 m!6414644))

(declare-fun m!6414646 () Bool)

(assert (=> bs!1246932 m!6414646))

(assert (=> b!5388650 d!1723039))

(declare-fun d!1723041 () Bool)

(declare-fun c!938987 () Bool)

(declare-fun e!3342073 () Bool)

(assert (=> d!1723041 (= c!938987 e!3342073)))

(declare-fun res!2289526 () Bool)

(assert (=> d!1723041 (=> (not res!2289526) (not e!3342073))))

(assert (=> d!1723041 (= res!2289526 ((_ is Cons!61569) (exprs!5015 lt!2195427)))))

(declare-fun e!3342074 () (InoxSet Context!9030))

(assert (=> d!1723041 (= (derivationStepZipperUp!503 lt!2195427 (h!68016 s!2326)) e!3342074)))

(declare-fun b!5388700 () Bool)

(declare-fun e!3342075 () (InoxSet Context!9030))

(declare-fun call!385693 () (InoxSet Context!9030))

(assert (=> b!5388700 (= e!3342075 call!385693)))

(declare-fun b!5388701 () Bool)

(assert (=> b!5388701 (= e!3342075 ((as const (Array Context!9030 Bool)) false))))

(declare-fun b!5388702 () Bool)

(assert (=> b!5388702 (= e!3342074 e!3342075)))

(declare-fun c!938986 () Bool)

(assert (=> b!5388702 (= c!938986 ((_ is Cons!61569) (exprs!5015 lt!2195427)))))

(declare-fun bm!385688 () Bool)

(assert (=> bm!385688 (= call!385693 (derivationStepZipperDown!579 (h!68017 (exprs!5015 lt!2195427)) (Context!9031 (t!374916 (exprs!5015 lt!2195427))) (h!68016 s!2326)))))

(declare-fun b!5388703 () Bool)

(assert (=> b!5388703 (= e!3342073 (nullable!5300 (h!68017 (exprs!5015 lt!2195427))))))

(declare-fun b!5388704 () Bool)

(assert (=> b!5388704 (= e!3342074 ((_ map or) call!385693 (derivationStepZipperUp!503 (Context!9031 (t!374916 (exprs!5015 lt!2195427))) (h!68016 s!2326))))))

(assert (= (and d!1723041 res!2289526) b!5388703))

(assert (= (and d!1723041 c!938987) b!5388704))

(assert (= (and d!1723041 (not c!938987)) b!5388702))

(assert (= (and b!5388702 c!938986) b!5388700))

(assert (= (and b!5388702 (not c!938986)) b!5388701))

(assert (= (or b!5388704 b!5388700) bm!385688))

(declare-fun m!6414648 () Bool)

(assert (=> bm!385688 m!6414648))

(declare-fun m!6414650 () Bool)

(assert (=> b!5388703 m!6414650))

(declare-fun m!6414652 () Bool)

(assert (=> b!5388704 m!6414652))

(assert (=> b!5388650 d!1723041))

(declare-fun d!1723043 () Bool)

(declare-fun nullableFct!1571 (Regex!15131) Bool)

(assert (=> d!1723043 (= (nullable!5300 (h!68017 (exprs!5015 (h!68018 zl!343)))) (nullableFct!1571 (h!68017 (exprs!5015 (h!68018 zl!343)))))))

(declare-fun bs!1246933 () Bool)

(assert (= bs!1246933 d!1723043))

(declare-fun m!6414654 () Bool)

(assert (=> bs!1246933 m!6414654))

(assert (=> b!5388650 d!1723043))

(declare-fun d!1723045 () Bool)

(declare-fun c!938989 () Bool)

(declare-fun e!3342076 () Bool)

(assert (=> d!1723045 (= c!938989 e!3342076)))

(declare-fun res!2289527 () Bool)

(assert (=> d!1723045 (=> (not res!2289527) (not e!3342076))))

(assert (=> d!1723045 (= res!2289527 ((_ is Cons!61569) (exprs!5015 (Context!9031 (Cons!61569 (h!68017 (exprs!5015 (h!68018 zl!343))) (t!374916 (exprs!5015 (h!68018 zl!343))))))))))

(declare-fun e!3342077 () (InoxSet Context!9030))

(assert (=> d!1723045 (= (derivationStepZipperUp!503 (Context!9031 (Cons!61569 (h!68017 (exprs!5015 (h!68018 zl!343))) (t!374916 (exprs!5015 (h!68018 zl!343))))) (h!68016 s!2326)) e!3342077)))

(declare-fun b!5388705 () Bool)

(declare-fun e!3342078 () (InoxSet Context!9030))

(declare-fun call!385694 () (InoxSet Context!9030))

(assert (=> b!5388705 (= e!3342078 call!385694)))

(declare-fun b!5388706 () Bool)

(assert (=> b!5388706 (= e!3342078 ((as const (Array Context!9030 Bool)) false))))

(declare-fun b!5388707 () Bool)

(assert (=> b!5388707 (= e!3342077 e!3342078)))

(declare-fun c!938988 () Bool)

(assert (=> b!5388707 (= c!938988 ((_ is Cons!61569) (exprs!5015 (Context!9031 (Cons!61569 (h!68017 (exprs!5015 (h!68018 zl!343))) (t!374916 (exprs!5015 (h!68018 zl!343))))))))))

(declare-fun bm!385689 () Bool)

(assert (=> bm!385689 (= call!385694 (derivationStepZipperDown!579 (h!68017 (exprs!5015 (Context!9031 (Cons!61569 (h!68017 (exprs!5015 (h!68018 zl!343))) (t!374916 (exprs!5015 (h!68018 zl!343))))))) (Context!9031 (t!374916 (exprs!5015 (Context!9031 (Cons!61569 (h!68017 (exprs!5015 (h!68018 zl!343))) (t!374916 (exprs!5015 (h!68018 zl!343)))))))) (h!68016 s!2326)))))

(declare-fun b!5388708 () Bool)

(assert (=> b!5388708 (= e!3342076 (nullable!5300 (h!68017 (exprs!5015 (Context!9031 (Cons!61569 (h!68017 (exprs!5015 (h!68018 zl!343))) (t!374916 (exprs!5015 (h!68018 zl!343)))))))))))

(declare-fun b!5388709 () Bool)

(assert (=> b!5388709 (= e!3342077 ((_ map or) call!385694 (derivationStepZipperUp!503 (Context!9031 (t!374916 (exprs!5015 (Context!9031 (Cons!61569 (h!68017 (exprs!5015 (h!68018 zl!343))) (t!374916 (exprs!5015 (h!68018 zl!343)))))))) (h!68016 s!2326))))))

(assert (= (and d!1723045 res!2289527) b!5388708))

(assert (= (and d!1723045 c!938989) b!5388709))

(assert (= (and d!1723045 (not c!938989)) b!5388707))

(assert (= (and b!5388707 c!938988) b!5388705))

(assert (= (and b!5388707 (not c!938988)) b!5388706))

(assert (= (or b!5388709 b!5388705) bm!385689))

(declare-fun m!6414656 () Bool)

(assert (=> bm!385689 m!6414656))

(declare-fun m!6414658 () Bool)

(assert (=> b!5388708 m!6414658))

(declare-fun m!6414660 () Bool)

(assert (=> b!5388709 m!6414660))

(assert (=> b!5388650 d!1723045))

(declare-fun d!1723047 () Bool)

(declare-fun c!938991 () Bool)

(declare-fun e!3342079 () Bool)

(assert (=> d!1723047 (= c!938991 e!3342079)))

(declare-fun res!2289528 () Bool)

(assert (=> d!1723047 (=> (not res!2289528) (not e!3342079))))

(assert (=> d!1723047 (= res!2289528 ((_ is Cons!61569) (exprs!5015 (h!68018 zl!343))))))

(declare-fun e!3342080 () (InoxSet Context!9030))

(assert (=> d!1723047 (= (derivationStepZipperUp!503 (h!68018 zl!343) (h!68016 s!2326)) e!3342080)))

(declare-fun b!5388710 () Bool)

(declare-fun e!3342081 () (InoxSet Context!9030))

(declare-fun call!385695 () (InoxSet Context!9030))

(assert (=> b!5388710 (= e!3342081 call!385695)))

(declare-fun b!5388711 () Bool)

(assert (=> b!5388711 (= e!3342081 ((as const (Array Context!9030 Bool)) false))))

(declare-fun b!5388712 () Bool)

(assert (=> b!5388712 (= e!3342080 e!3342081)))

(declare-fun c!938990 () Bool)

(assert (=> b!5388712 (= c!938990 ((_ is Cons!61569) (exprs!5015 (h!68018 zl!343))))))

(declare-fun bm!385690 () Bool)

(assert (=> bm!385690 (= call!385695 (derivationStepZipperDown!579 (h!68017 (exprs!5015 (h!68018 zl!343))) (Context!9031 (t!374916 (exprs!5015 (h!68018 zl!343)))) (h!68016 s!2326)))))

(declare-fun b!5388713 () Bool)

(assert (=> b!5388713 (= e!3342079 (nullable!5300 (h!68017 (exprs!5015 (h!68018 zl!343)))))))

(declare-fun b!5388714 () Bool)

(assert (=> b!5388714 (= e!3342080 ((_ map or) call!385695 (derivationStepZipperUp!503 (Context!9031 (t!374916 (exprs!5015 (h!68018 zl!343)))) (h!68016 s!2326))))))

(assert (= (and d!1723047 res!2289528) b!5388713))

(assert (= (and d!1723047 c!938991) b!5388714))

(assert (= (and d!1723047 (not c!938991)) b!5388712))

(assert (= (and b!5388712 c!938990) b!5388710))

(assert (= (and b!5388712 (not c!938990)) b!5388711))

(assert (= (or b!5388714 b!5388710) bm!385690))

(declare-fun m!6414662 () Bool)

(assert (=> bm!385690 m!6414662))

(assert (=> b!5388713 m!6414546))

(declare-fun m!6414664 () Bool)

(assert (=> b!5388714 m!6414664))

(assert (=> b!5388650 d!1723047))

(declare-fun b!5388737 () Bool)

(declare-fun e!3342095 () Bool)

(assert (=> b!5388737 (= e!3342095 (nullable!5300 (regOne!30774 (h!68017 (exprs!5015 (h!68018 zl!343))))))))

(declare-fun b!5388738 () Bool)

(declare-fun e!3342097 () (InoxSet Context!9030))

(declare-fun call!385711 () (InoxSet Context!9030))

(declare-fun call!385708 () (InoxSet Context!9030))

(assert (=> b!5388738 (= e!3342097 ((_ map or) call!385711 call!385708))))

(declare-fun b!5388739 () Bool)

(declare-fun e!3342094 () (InoxSet Context!9030))

(assert (=> b!5388739 (= e!3342097 e!3342094)))

(declare-fun c!939006 () Bool)

(assert (=> b!5388739 (= c!939006 ((_ is Concat!23976) (h!68017 (exprs!5015 (h!68018 zl!343)))))))

(declare-fun bm!385703 () Bool)

(declare-fun call!385713 () (InoxSet Context!9030))

(assert (=> bm!385703 (= call!385713 call!385708)))

(declare-fun b!5388740 () Bool)

(declare-fun e!3342096 () (InoxSet Context!9030))

(assert (=> b!5388740 (= e!3342096 call!385713)))

(declare-fun b!5388741 () Bool)

(declare-fun c!939002 () Bool)

(assert (=> b!5388741 (= c!939002 ((_ is Star!15131) (h!68017 (exprs!5015 (h!68018 zl!343)))))))

(assert (=> b!5388741 (= e!3342094 e!3342096)))

(declare-fun c!939005 () Bool)

(declare-fun call!385712 () List!61693)

(declare-fun bm!385704 () Bool)

(declare-fun $colon$colon!1469 (List!61693 Regex!15131) List!61693)

(assert (=> bm!385704 (= call!385712 ($colon$colon!1469 (exprs!5015 lt!2195427) (ite (or c!939005 c!939006) (regTwo!30774 (h!68017 (exprs!5015 (h!68018 zl!343)))) (h!68017 (exprs!5015 (h!68018 zl!343))))))))

(declare-fun b!5388742 () Bool)

(declare-fun e!3342099 () (InoxSet Context!9030))

(declare-fun call!385710 () (InoxSet Context!9030))

(assert (=> b!5388742 (= e!3342099 ((_ map or) call!385711 call!385710))))

(declare-fun bm!385705 () Bool)

(declare-fun call!385709 () List!61693)

(declare-fun c!939003 () Bool)

(assert (=> bm!385705 (= call!385710 (derivationStepZipperDown!579 (ite c!939003 (regTwo!30775 (h!68017 (exprs!5015 (h!68018 zl!343)))) (ite c!939005 (regTwo!30774 (h!68017 (exprs!5015 (h!68018 zl!343)))) (ite c!939006 (regOne!30774 (h!68017 (exprs!5015 (h!68018 zl!343)))) (reg!15460 (h!68017 (exprs!5015 (h!68018 zl!343))))))) (ite (or c!939003 c!939005) lt!2195427 (Context!9031 call!385709)) (h!68016 s!2326)))))

(declare-fun bm!385706 () Bool)

(assert (=> bm!385706 (= call!385711 (derivationStepZipperDown!579 (ite c!939003 (regOne!30775 (h!68017 (exprs!5015 (h!68018 zl!343)))) (regOne!30774 (h!68017 (exprs!5015 (h!68018 zl!343))))) (ite c!939003 lt!2195427 (Context!9031 call!385712)) (h!68016 s!2326)))))

(declare-fun b!5388743 () Bool)

(assert (=> b!5388743 (= c!939005 e!3342095)))

(declare-fun res!2289531 () Bool)

(assert (=> b!5388743 (=> (not res!2289531) (not e!3342095))))

(assert (=> b!5388743 (= res!2289531 ((_ is Concat!23976) (h!68017 (exprs!5015 (h!68018 zl!343)))))))

(assert (=> b!5388743 (= e!3342099 e!3342097)))

(declare-fun bm!385707 () Bool)

(assert (=> bm!385707 (= call!385708 call!385710)))

(declare-fun d!1723049 () Bool)

(declare-fun c!939004 () Bool)

(assert (=> d!1723049 (= c!939004 (and ((_ is ElementMatch!15131) (h!68017 (exprs!5015 (h!68018 zl!343)))) (= (c!938981 (h!68017 (exprs!5015 (h!68018 zl!343)))) (h!68016 s!2326))))))

(declare-fun e!3342098 () (InoxSet Context!9030))

(assert (=> d!1723049 (= (derivationStepZipperDown!579 (h!68017 (exprs!5015 (h!68018 zl!343))) lt!2195427 (h!68016 s!2326)) e!3342098)))

(declare-fun b!5388744 () Bool)

(assert (=> b!5388744 (= e!3342098 (store ((as const (Array Context!9030 Bool)) false) lt!2195427 true))))

(declare-fun b!5388745 () Bool)

(assert (=> b!5388745 (= e!3342094 call!385713)))

(declare-fun b!5388746 () Bool)

(assert (=> b!5388746 (= e!3342096 ((as const (Array Context!9030 Bool)) false))))

(declare-fun b!5388747 () Bool)

(assert (=> b!5388747 (= e!3342098 e!3342099)))

(assert (=> b!5388747 (= c!939003 ((_ is Union!15131) (h!68017 (exprs!5015 (h!68018 zl!343)))))))

(declare-fun bm!385708 () Bool)

(assert (=> bm!385708 (= call!385709 call!385712)))

(assert (= (and d!1723049 c!939004) b!5388744))

(assert (= (and d!1723049 (not c!939004)) b!5388747))

(assert (= (and b!5388747 c!939003) b!5388742))

(assert (= (and b!5388747 (not c!939003)) b!5388743))

(assert (= (and b!5388743 res!2289531) b!5388737))

(assert (= (and b!5388743 c!939005) b!5388738))

(assert (= (and b!5388743 (not c!939005)) b!5388739))

(assert (= (and b!5388739 c!939006) b!5388745))

(assert (= (and b!5388739 (not c!939006)) b!5388741))

(assert (= (and b!5388741 c!939002) b!5388740))

(assert (= (and b!5388741 (not c!939002)) b!5388746))

(assert (= (or b!5388745 b!5388740) bm!385708))

(assert (= (or b!5388745 b!5388740) bm!385703))

(assert (= (or b!5388738 bm!385708) bm!385704))

(assert (= (or b!5388738 bm!385703) bm!385707))

(assert (= (or b!5388742 bm!385707) bm!385705))

(assert (= (or b!5388742 b!5388738) bm!385706))

(declare-fun m!6414666 () Bool)

(assert (=> bm!385705 m!6414666))

(declare-fun m!6414668 () Bool)

(assert (=> bm!385704 m!6414668))

(declare-fun m!6414670 () Bool)

(assert (=> b!5388737 m!6414670))

(declare-fun m!6414672 () Bool)

(assert (=> b!5388744 m!6414672))

(declare-fun m!6414674 () Bool)

(assert (=> bm!385706 m!6414674))

(assert (=> b!5388650 d!1723049))

(declare-fun b!5388766 () Bool)

(declare-fun e!3342118 () Bool)

(declare-fun call!385720 () Bool)

(assert (=> b!5388766 (= e!3342118 call!385720)))

(declare-fun b!5388767 () Bool)

(declare-fun e!3342114 () Bool)

(assert (=> b!5388767 (= e!3342114 e!3342118)))

(declare-fun res!2289542 () Bool)

(assert (=> b!5388767 (= res!2289542 (not (nullable!5300 (reg!15460 r!7292))))))

(assert (=> b!5388767 (=> (not res!2289542) (not e!3342118))))

(declare-fun b!5388768 () Bool)

(declare-fun res!2289544 () Bool)

(declare-fun e!3342119 () Bool)

(assert (=> b!5388768 (=> res!2289544 e!3342119)))

(assert (=> b!5388768 (= res!2289544 (not ((_ is Concat!23976) r!7292)))))

(declare-fun e!3342120 () Bool)

(assert (=> b!5388768 (= e!3342120 e!3342119)))

(declare-fun b!5388769 () Bool)

(declare-fun e!3342116 () Bool)

(assert (=> b!5388769 (= e!3342119 e!3342116)))

(declare-fun res!2289543 () Bool)

(assert (=> b!5388769 (=> (not res!2289543) (not e!3342116))))

(declare-fun call!385722 () Bool)

(assert (=> b!5388769 (= res!2289543 call!385722)))

(declare-fun b!5388770 () Bool)

(declare-fun e!3342117 () Bool)

(assert (=> b!5388770 (= e!3342117 e!3342114)))

(declare-fun c!939011 () Bool)

(assert (=> b!5388770 (= c!939011 ((_ is Star!15131) r!7292))))

(declare-fun bm!385715 () Bool)

(assert (=> bm!385715 (= call!385722 call!385720)))

(declare-fun d!1723051 () Bool)

(declare-fun res!2289546 () Bool)

(assert (=> d!1723051 (=> res!2289546 e!3342117)))

(assert (=> d!1723051 (= res!2289546 ((_ is ElementMatch!15131) r!7292))))

(assert (=> d!1723051 (= (validRegex!6867 r!7292) e!3342117)))

(declare-fun b!5388771 () Bool)

(declare-fun e!3342115 () Bool)

(declare-fun call!385721 () Bool)

(assert (=> b!5388771 (= e!3342115 call!385721)))

(declare-fun b!5388772 () Bool)

(assert (=> b!5388772 (= e!3342114 e!3342120)))

(declare-fun c!939012 () Bool)

(assert (=> b!5388772 (= c!939012 ((_ is Union!15131) r!7292))))

(declare-fun bm!385716 () Bool)

(assert (=> bm!385716 (= call!385721 (validRegex!6867 (ite c!939012 (regTwo!30775 r!7292) (regTwo!30774 r!7292))))))

(declare-fun b!5388773 () Bool)

(declare-fun res!2289545 () Bool)

(assert (=> b!5388773 (=> (not res!2289545) (not e!3342115))))

(assert (=> b!5388773 (= res!2289545 call!385722)))

(assert (=> b!5388773 (= e!3342120 e!3342115)))

(declare-fun b!5388774 () Bool)

(assert (=> b!5388774 (= e!3342116 call!385721)))

(declare-fun bm!385717 () Bool)

(assert (=> bm!385717 (= call!385720 (validRegex!6867 (ite c!939011 (reg!15460 r!7292) (ite c!939012 (regOne!30775 r!7292) (regOne!30774 r!7292)))))))

(assert (= (and d!1723051 (not res!2289546)) b!5388770))

(assert (= (and b!5388770 c!939011) b!5388767))

(assert (= (and b!5388770 (not c!939011)) b!5388772))

(assert (= (and b!5388767 res!2289542) b!5388766))

(assert (= (and b!5388772 c!939012) b!5388773))

(assert (= (and b!5388772 (not c!939012)) b!5388768))

(assert (= (and b!5388773 res!2289545) b!5388771))

(assert (= (and b!5388768 (not res!2289544)) b!5388769))

(assert (= (and b!5388769 res!2289543) b!5388774))

(assert (= (or b!5388771 b!5388774) bm!385716))

(assert (= (or b!5388773 b!5388769) bm!385715))

(assert (= (or b!5388766 bm!385715) bm!385717))

(declare-fun m!6414676 () Bool)

(assert (=> b!5388767 m!6414676))

(declare-fun m!6414678 () Bool)

(assert (=> bm!385716 m!6414678))

(declare-fun m!6414680 () Bool)

(assert (=> bm!385717 m!6414680))

(assert (=> start!566318 d!1723051))

(declare-fun d!1723053 () Bool)

(declare-fun e!3342123 () Bool)

(assert (=> d!1723053 e!3342123))

(declare-fun res!2289549 () Bool)

(assert (=> d!1723053 (=> (not res!2289549) (not e!3342123))))

(declare-fun lt!2195482 () List!61694)

(declare-fun noDuplicate!1373 (List!61694) Bool)

(assert (=> d!1723053 (= res!2289549 (noDuplicate!1373 lt!2195482))))

(declare-fun choose!40525 ((InoxSet Context!9030)) List!61694)

(assert (=> d!1723053 (= lt!2195482 (choose!40525 z!1189))))

(assert (=> d!1723053 (= (toList!8915 z!1189) lt!2195482)))

(declare-fun b!5388777 () Bool)

(declare-fun content!11017 (List!61694) (InoxSet Context!9030))

(assert (=> b!5388777 (= e!3342123 (= (content!11017 lt!2195482) z!1189))))

(assert (= (and d!1723053 res!2289549) b!5388777))

(declare-fun m!6414682 () Bool)

(assert (=> d!1723053 m!6414682))

(declare-fun m!6414684 () Bool)

(assert (=> d!1723053 m!6414684))

(declare-fun m!6414686 () Bool)

(assert (=> b!5388777 m!6414686))

(assert (=> b!5388649 d!1723053))

(declare-fun d!1723055 () Bool)

(declare-fun lt!2195485 () Regex!15131)

(assert (=> d!1723055 (validRegex!6867 lt!2195485)))

(assert (=> d!1723055 (= lt!2195485 (generalisedUnion!1060 (unfocusZipperList!573 zl!343)))))

(assert (=> d!1723055 (= (unfocusZipper!873 zl!343) lt!2195485)))

(declare-fun bs!1246934 () Bool)

(assert (= bs!1246934 d!1723055))

(declare-fun m!6414688 () Bool)

(assert (=> bs!1246934 m!6414688))

(assert (=> bs!1246934 m!6414510))

(assert (=> bs!1246934 m!6414510))

(assert (=> bs!1246934 m!6414512))

(assert (=> b!5388668 d!1723055))

(declare-fun b!5388778 () Bool)

(declare-fun e!3342125 () Bool)

(assert (=> b!5388778 (= e!3342125 (nullable!5300 (regOne!30774 (reg!15460 (regOne!30774 r!7292)))))))

(declare-fun b!5388779 () Bool)

(declare-fun e!3342127 () (InoxSet Context!9030))

(declare-fun call!385726 () (InoxSet Context!9030))

(declare-fun call!385723 () (InoxSet Context!9030))

(assert (=> b!5388779 (= e!3342127 ((_ map or) call!385726 call!385723))))

(declare-fun b!5388780 () Bool)

(declare-fun e!3342124 () (InoxSet Context!9030))

(assert (=> b!5388780 (= e!3342127 e!3342124)))

(declare-fun c!939017 () Bool)

(assert (=> b!5388780 (= c!939017 ((_ is Concat!23976) (reg!15460 (regOne!30774 r!7292))))))

(declare-fun bm!385718 () Bool)

(declare-fun call!385728 () (InoxSet Context!9030))

(assert (=> bm!385718 (= call!385728 call!385723)))

(declare-fun b!5388781 () Bool)

(declare-fun e!3342126 () (InoxSet Context!9030))

(assert (=> b!5388781 (= e!3342126 call!385728)))

(declare-fun b!5388782 () Bool)

(declare-fun c!939013 () Bool)

(assert (=> b!5388782 (= c!939013 ((_ is Star!15131) (reg!15460 (regOne!30774 r!7292))))))

(assert (=> b!5388782 (= e!3342124 e!3342126)))

(declare-fun c!939016 () Bool)

(declare-fun call!385727 () List!61693)

(declare-fun bm!385719 () Bool)

(assert (=> bm!385719 (= call!385727 ($colon$colon!1469 (exprs!5015 lt!2195463) (ite (or c!939016 c!939017) (regTwo!30774 (reg!15460 (regOne!30774 r!7292))) (reg!15460 (regOne!30774 r!7292)))))))

(declare-fun b!5388783 () Bool)

(declare-fun e!3342129 () (InoxSet Context!9030))

(declare-fun call!385725 () (InoxSet Context!9030))

(assert (=> b!5388783 (= e!3342129 ((_ map or) call!385726 call!385725))))

(declare-fun c!939014 () Bool)

(declare-fun call!385724 () List!61693)

(declare-fun bm!385720 () Bool)

(assert (=> bm!385720 (= call!385725 (derivationStepZipperDown!579 (ite c!939014 (regTwo!30775 (reg!15460 (regOne!30774 r!7292))) (ite c!939016 (regTwo!30774 (reg!15460 (regOne!30774 r!7292))) (ite c!939017 (regOne!30774 (reg!15460 (regOne!30774 r!7292))) (reg!15460 (reg!15460 (regOne!30774 r!7292)))))) (ite (or c!939014 c!939016) lt!2195463 (Context!9031 call!385724)) (h!68016 s!2326)))))

(declare-fun bm!385721 () Bool)

(assert (=> bm!385721 (= call!385726 (derivationStepZipperDown!579 (ite c!939014 (regOne!30775 (reg!15460 (regOne!30774 r!7292))) (regOne!30774 (reg!15460 (regOne!30774 r!7292)))) (ite c!939014 lt!2195463 (Context!9031 call!385727)) (h!68016 s!2326)))))

(declare-fun b!5388784 () Bool)

(assert (=> b!5388784 (= c!939016 e!3342125)))

(declare-fun res!2289550 () Bool)

(assert (=> b!5388784 (=> (not res!2289550) (not e!3342125))))

(assert (=> b!5388784 (= res!2289550 ((_ is Concat!23976) (reg!15460 (regOne!30774 r!7292))))))

(assert (=> b!5388784 (= e!3342129 e!3342127)))

(declare-fun bm!385722 () Bool)

(assert (=> bm!385722 (= call!385723 call!385725)))

(declare-fun d!1723057 () Bool)

(declare-fun c!939015 () Bool)

(assert (=> d!1723057 (= c!939015 (and ((_ is ElementMatch!15131) (reg!15460 (regOne!30774 r!7292))) (= (c!938981 (reg!15460 (regOne!30774 r!7292))) (h!68016 s!2326))))))

(declare-fun e!3342128 () (InoxSet Context!9030))

(assert (=> d!1723057 (= (derivationStepZipperDown!579 (reg!15460 (regOne!30774 r!7292)) lt!2195463 (h!68016 s!2326)) e!3342128)))

(declare-fun b!5388785 () Bool)

(assert (=> b!5388785 (= e!3342128 (store ((as const (Array Context!9030 Bool)) false) lt!2195463 true))))

(declare-fun b!5388786 () Bool)

(assert (=> b!5388786 (= e!3342124 call!385728)))

(declare-fun b!5388787 () Bool)

(assert (=> b!5388787 (= e!3342126 ((as const (Array Context!9030 Bool)) false))))

(declare-fun b!5388788 () Bool)

(assert (=> b!5388788 (= e!3342128 e!3342129)))

(assert (=> b!5388788 (= c!939014 ((_ is Union!15131) (reg!15460 (regOne!30774 r!7292))))))

(declare-fun bm!385723 () Bool)

(assert (=> bm!385723 (= call!385724 call!385727)))

(assert (= (and d!1723057 c!939015) b!5388785))

(assert (= (and d!1723057 (not c!939015)) b!5388788))

(assert (= (and b!5388788 c!939014) b!5388783))

(assert (= (and b!5388788 (not c!939014)) b!5388784))

(assert (= (and b!5388784 res!2289550) b!5388778))

(assert (= (and b!5388784 c!939016) b!5388779))

(assert (= (and b!5388784 (not c!939016)) b!5388780))

(assert (= (and b!5388780 c!939017) b!5388786))

(assert (= (and b!5388780 (not c!939017)) b!5388782))

(assert (= (and b!5388782 c!939013) b!5388781))

(assert (= (and b!5388782 (not c!939013)) b!5388787))

(assert (= (or b!5388786 b!5388781) bm!385723))

(assert (= (or b!5388786 b!5388781) bm!385718))

(assert (= (or b!5388779 bm!385723) bm!385719))

(assert (= (or b!5388779 bm!385718) bm!385722))

(assert (= (or b!5388783 bm!385722) bm!385720))

(assert (= (or b!5388783 b!5388779) bm!385721))

(declare-fun m!6414690 () Bool)

(assert (=> bm!385720 m!6414690))

(declare-fun m!6414692 () Bool)

(assert (=> bm!385719 m!6414692))

(declare-fun m!6414694 () Bool)

(assert (=> b!5388778 m!6414694))

(assert (=> b!5388785 m!6414522))

(declare-fun m!6414696 () Bool)

(assert (=> bm!385721 m!6414696))

(assert (=> b!5388648 d!1723057))

(declare-fun d!1723059 () Bool)

(declare-fun lt!2195486 () Regex!15131)

(assert (=> d!1723059 (validRegex!6867 lt!2195486)))

(assert (=> d!1723059 (= lt!2195486 (generalisedUnion!1060 (unfocusZipperList!573 (Cons!61570 lt!2195465 Nil!61570))))))

(assert (=> d!1723059 (= (unfocusZipper!873 (Cons!61570 lt!2195465 Nil!61570)) lt!2195486)))

(declare-fun bs!1246935 () Bool)

(assert (= bs!1246935 d!1723059))

(declare-fun m!6414698 () Bool)

(assert (=> bs!1246935 m!6414698))

(declare-fun m!6414700 () Bool)

(assert (=> bs!1246935 m!6414700))

(assert (=> bs!1246935 m!6414700))

(declare-fun m!6414702 () Bool)

(assert (=> bs!1246935 m!6414702))

(assert (=> b!5388672 d!1723059))

(declare-fun bs!1246937 () Bool)

(declare-fun d!1723061 () Bool)

(assert (= bs!1246937 (and d!1723061 b!5388660)))

(declare-fun lambda!279704 () Int)

(assert (=> bs!1246937 (= lambda!279704 lambda!279701)))

(declare-fun b!5388809 () Bool)

(declare-fun e!3342146 () Bool)

(assert (=> b!5388809 (= e!3342146 (isEmpty!33568 (t!374916 (unfocusZipperList!573 zl!343))))))

(declare-fun e!3342143 () Bool)

(assert (=> d!1723061 e!3342143))

(declare-fun res!2289556 () Bool)

(assert (=> d!1723061 (=> (not res!2289556) (not e!3342143))))

(declare-fun lt!2195489 () Regex!15131)

(assert (=> d!1723061 (= res!2289556 (validRegex!6867 lt!2195489))))

(declare-fun e!3342147 () Regex!15131)

(assert (=> d!1723061 (= lt!2195489 e!3342147)))

(declare-fun c!939029 () Bool)

(assert (=> d!1723061 (= c!939029 e!3342146)))

(declare-fun res!2289555 () Bool)

(assert (=> d!1723061 (=> (not res!2289555) (not e!3342146))))

(assert (=> d!1723061 (= res!2289555 ((_ is Cons!61569) (unfocusZipperList!573 zl!343)))))

(declare-fun forall!14512 (List!61693 Int) Bool)

(assert (=> d!1723061 (forall!14512 (unfocusZipperList!573 zl!343) lambda!279704)))

(assert (=> d!1723061 (= (generalisedUnion!1060 (unfocusZipperList!573 zl!343)) lt!2195489)))

(declare-fun b!5388810 () Bool)

(assert (=> b!5388810 (= e!3342147 (h!68017 (unfocusZipperList!573 zl!343)))))

(declare-fun b!5388811 () Bool)

(declare-fun e!3342145 () Bool)

(assert (=> b!5388811 (= e!3342143 e!3342145)))

(declare-fun c!939028 () Bool)

(assert (=> b!5388811 (= c!939028 (isEmpty!33568 (unfocusZipperList!573 zl!343)))))

(declare-fun b!5388812 () Bool)

(declare-fun e!3342144 () Bool)

(declare-fun isUnion!394 (Regex!15131) Bool)

(assert (=> b!5388812 (= e!3342144 (isUnion!394 lt!2195489))))

(declare-fun b!5388813 () Bool)

(assert (=> b!5388813 (= e!3342145 e!3342144)))

(declare-fun c!939026 () Bool)

(declare-fun tail!10654 (List!61693) List!61693)

(assert (=> b!5388813 (= c!939026 (isEmpty!33568 (tail!10654 (unfocusZipperList!573 zl!343))))))

(declare-fun b!5388814 () Bool)

(declare-fun isEmptyLang!962 (Regex!15131) Bool)

(assert (=> b!5388814 (= e!3342145 (isEmptyLang!962 lt!2195489))))

(declare-fun b!5388815 () Bool)

(declare-fun e!3342142 () Regex!15131)

(assert (=> b!5388815 (= e!3342142 (Union!15131 (h!68017 (unfocusZipperList!573 zl!343)) (generalisedUnion!1060 (t!374916 (unfocusZipperList!573 zl!343)))))))

(declare-fun b!5388816 () Bool)

(assert (=> b!5388816 (= e!3342147 e!3342142)))

(declare-fun c!939027 () Bool)

(assert (=> b!5388816 (= c!939027 ((_ is Cons!61569) (unfocusZipperList!573 zl!343)))))

(declare-fun b!5388817 () Bool)

(assert (=> b!5388817 (= e!3342142 EmptyLang!15131)))

(declare-fun b!5388818 () Bool)

(declare-fun head!11558 (List!61693) Regex!15131)

(assert (=> b!5388818 (= e!3342144 (= lt!2195489 (head!11558 (unfocusZipperList!573 zl!343))))))

(assert (= (and d!1723061 res!2289555) b!5388809))

(assert (= (and d!1723061 c!939029) b!5388810))

(assert (= (and d!1723061 (not c!939029)) b!5388816))

(assert (= (and b!5388816 c!939027) b!5388815))

(assert (= (and b!5388816 (not c!939027)) b!5388817))

(assert (= (and d!1723061 res!2289556) b!5388811))

(assert (= (and b!5388811 c!939028) b!5388814))

(assert (= (and b!5388811 (not c!939028)) b!5388813))

(assert (= (and b!5388813 c!939026) b!5388818))

(assert (= (and b!5388813 (not c!939026)) b!5388812))

(assert (=> b!5388811 m!6414510))

(declare-fun m!6414706 () Bool)

(assert (=> b!5388811 m!6414706))

(assert (=> b!5388818 m!6414510))

(declare-fun m!6414708 () Bool)

(assert (=> b!5388818 m!6414708))

(declare-fun m!6414710 () Bool)

(assert (=> b!5388814 m!6414710))

(declare-fun m!6414712 () Bool)

(assert (=> b!5388815 m!6414712))

(assert (=> b!5388813 m!6414510))

(declare-fun m!6414714 () Bool)

(assert (=> b!5388813 m!6414714))

(assert (=> b!5388813 m!6414714))

(declare-fun m!6414716 () Bool)

(assert (=> b!5388813 m!6414716))

(declare-fun m!6414718 () Bool)

(assert (=> b!5388809 m!6414718))

(declare-fun m!6414720 () Bool)

(assert (=> b!5388812 m!6414720))

(declare-fun m!6414722 () Bool)

(assert (=> d!1723061 m!6414722))

(assert (=> d!1723061 m!6414510))

(declare-fun m!6414724 () Bool)

(assert (=> d!1723061 m!6414724))

(assert (=> b!5388652 d!1723061))

(declare-fun bs!1246938 () Bool)

(declare-fun d!1723069 () Bool)

(assert (= bs!1246938 (and d!1723069 b!5388660)))

(declare-fun lambda!279707 () Int)

(assert (=> bs!1246938 (= lambda!279707 lambda!279701)))

(declare-fun bs!1246939 () Bool)

(assert (= bs!1246939 (and d!1723069 d!1723061)))

(assert (=> bs!1246939 (= lambda!279707 lambda!279704)))

(declare-fun lt!2195495 () List!61693)

(assert (=> d!1723069 (forall!14512 lt!2195495 lambda!279707)))

(declare-fun e!3342171 () List!61693)

(assert (=> d!1723069 (= lt!2195495 e!3342171)))

(declare-fun c!939041 () Bool)

(assert (=> d!1723069 (= c!939041 ((_ is Cons!61570) zl!343))))

(assert (=> d!1723069 (= (unfocusZipperList!573 zl!343) lt!2195495)))

(declare-fun b!5388865 () Bool)

(assert (=> b!5388865 (= e!3342171 (Cons!61569 (generalisedConcat!800 (exprs!5015 (h!68018 zl!343))) (unfocusZipperList!573 (t!374917 zl!343))))))

(declare-fun b!5388866 () Bool)

(assert (=> b!5388866 (= e!3342171 Nil!61569)))

(assert (= (and d!1723069 c!939041) b!5388865))

(assert (= (and d!1723069 (not c!939041)) b!5388866))

(declare-fun m!6414742 () Bool)

(assert (=> d!1723069 m!6414742))

(assert (=> b!5388865 m!6414608))

(declare-fun m!6414744 () Bool)

(assert (=> b!5388865 m!6414744))

(assert (=> b!5388652 d!1723069))

(declare-fun d!1723073 () Bool)

(assert (=> d!1723073 (= (nullable!5300 (regOne!30774 (regOne!30774 r!7292))) (nullableFct!1571 (regOne!30774 (regOne!30774 r!7292))))))

(declare-fun bs!1246940 () Bool)

(assert (= bs!1246940 d!1723073))

(declare-fun m!6414746 () Bool)

(assert (=> bs!1246940 m!6414746))

(assert (=> b!5388671 d!1723073))

(declare-fun b!5388933 () Bool)

(declare-fun res!2289603 () Bool)

(declare-fun e!3342213 () Bool)

(assert (=> b!5388933 (=> res!2289603 e!3342213)))

(declare-fun e!3342209 () Bool)

(assert (=> b!5388933 (= res!2289603 e!3342209)))

(declare-fun res!2289609 () Bool)

(assert (=> b!5388933 (=> (not res!2289609) (not e!3342209))))

(declare-fun lt!2195501 () Bool)

(assert (=> b!5388933 (= res!2289609 lt!2195501)))

(declare-fun d!1723075 () Bool)

(declare-fun e!3342210 () Bool)

(assert (=> d!1723075 e!3342210))

(declare-fun c!939065 () Bool)

(assert (=> d!1723075 (= c!939065 ((_ is EmptyExpr!15131) lt!2195430))))

(declare-fun e!3342212 () Bool)

(assert (=> d!1723075 (= lt!2195501 e!3342212)))

(declare-fun c!939064 () Bool)

(assert (=> d!1723075 (= c!939064 (isEmpty!33566 (_1!35633 lt!2195436)))))

(assert (=> d!1723075 (validRegex!6867 lt!2195430)))

(assert (=> d!1723075 (= (matchR!7316 lt!2195430 (_1!35633 lt!2195436)) lt!2195501)))

(declare-fun bm!385729 () Bool)

(declare-fun call!385734 () Bool)

(assert (=> bm!385729 (= call!385734 (isEmpty!33566 (_1!35633 lt!2195436)))))

(declare-fun b!5388934 () Bool)

(declare-fun e!3342211 () Bool)

(assert (=> b!5388934 (= e!3342210 e!3342211)))

(declare-fun c!939066 () Bool)

(assert (=> b!5388934 (= c!939066 ((_ is EmptyLang!15131) lt!2195430))))

(declare-fun b!5388935 () Bool)

(declare-fun e!3342208 () Bool)

(assert (=> b!5388935 (= e!3342213 e!3342208)))

(declare-fun res!2289608 () Bool)

(assert (=> b!5388935 (=> (not res!2289608) (not e!3342208))))

(assert (=> b!5388935 (= res!2289608 (not lt!2195501))))

(declare-fun b!5388936 () Bool)

(assert (=> b!5388936 (= e!3342212 (nullable!5300 lt!2195430))))

(declare-fun b!5388937 () Bool)

(declare-fun res!2289605 () Bool)

(assert (=> b!5388937 (=> res!2289605 e!3342213)))

(assert (=> b!5388937 (= res!2289605 (not ((_ is ElementMatch!15131) lt!2195430)))))

(assert (=> b!5388937 (= e!3342211 e!3342213)))

(declare-fun b!5388938 () Bool)

(declare-fun res!2289607 () Bool)

(assert (=> b!5388938 (=> (not res!2289607) (not e!3342209))))

(assert (=> b!5388938 (= res!2289607 (not call!385734))))

(declare-fun b!5388939 () Bool)

(declare-fun derivativeStep!4241 (Regex!15131 C!30532) Regex!15131)

(declare-fun head!11559 (List!61692) C!30532)

(declare-fun tail!10656 (List!61692) List!61692)

(assert (=> b!5388939 (= e!3342212 (matchR!7316 (derivativeStep!4241 lt!2195430 (head!11559 (_1!35633 lt!2195436))) (tail!10656 (_1!35633 lt!2195436))))))

(declare-fun b!5388940 () Bool)

(declare-fun e!3342214 () Bool)

(assert (=> b!5388940 (= e!3342214 (not (= (head!11559 (_1!35633 lt!2195436)) (c!938981 lt!2195430))))))

(declare-fun b!5388941 () Bool)

(assert (=> b!5388941 (= e!3342211 (not lt!2195501))))

(declare-fun b!5388942 () Bool)

(assert (=> b!5388942 (= e!3342210 (= lt!2195501 call!385734))))

(declare-fun b!5388943 () Bool)

(assert (=> b!5388943 (= e!3342209 (= (head!11559 (_1!35633 lt!2195436)) (c!938981 lt!2195430)))))

(declare-fun b!5388944 () Bool)

(declare-fun res!2289604 () Bool)

(assert (=> b!5388944 (=> res!2289604 e!3342214)))

(assert (=> b!5388944 (= res!2289604 (not (isEmpty!33566 (tail!10656 (_1!35633 lt!2195436)))))))

(declare-fun b!5388945 () Bool)

(assert (=> b!5388945 (= e!3342208 e!3342214)))

(declare-fun res!2289610 () Bool)

(assert (=> b!5388945 (=> res!2289610 e!3342214)))

(assert (=> b!5388945 (= res!2289610 call!385734)))

(declare-fun b!5388946 () Bool)

(declare-fun res!2289606 () Bool)

(assert (=> b!5388946 (=> (not res!2289606) (not e!3342209))))

(assert (=> b!5388946 (= res!2289606 (isEmpty!33566 (tail!10656 (_1!35633 lt!2195436))))))

(assert (= (and d!1723075 c!939064) b!5388936))

(assert (= (and d!1723075 (not c!939064)) b!5388939))

(assert (= (and d!1723075 c!939065) b!5388942))

(assert (= (and d!1723075 (not c!939065)) b!5388934))

(assert (= (and b!5388934 c!939066) b!5388941))

(assert (= (and b!5388934 (not c!939066)) b!5388937))

(assert (= (and b!5388937 (not res!2289605)) b!5388933))

(assert (= (and b!5388933 res!2289609) b!5388938))

(assert (= (and b!5388938 res!2289607) b!5388946))

(assert (= (and b!5388946 res!2289606) b!5388943))

(assert (= (and b!5388933 (not res!2289603)) b!5388935))

(assert (= (and b!5388935 res!2289608) b!5388945))

(assert (= (and b!5388945 (not res!2289610)) b!5388944))

(assert (= (and b!5388944 (not res!2289604)) b!5388940))

(assert (= (or b!5388942 b!5388938 b!5388945) bm!385729))

(declare-fun m!6414790 () Bool)

(assert (=> b!5388940 m!6414790))

(assert (=> bm!385729 m!6414540))

(assert (=> b!5388943 m!6414790))

(declare-fun m!6414792 () Bool)

(assert (=> b!5388946 m!6414792))

(assert (=> b!5388946 m!6414792))

(declare-fun m!6414794 () Bool)

(assert (=> b!5388946 m!6414794))

(assert (=> b!5388939 m!6414790))

(assert (=> b!5388939 m!6414790))

(declare-fun m!6414796 () Bool)

(assert (=> b!5388939 m!6414796))

(assert (=> b!5388939 m!6414792))

(assert (=> b!5388939 m!6414796))

(assert (=> b!5388939 m!6414792))

(declare-fun m!6414798 () Bool)

(assert (=> b!5388939 m!6414798))

(assert (=> b!5388944 m!6414792))

(assert (=> b!5388944 m!6414792))

(assert (=> b!5388944 m!6414794))

(assert (=> d!1723075 m!6414540))

(declare-fun m!6414800 () Bool)

(assert (=> d!1723075 m!6414800))

(declare-fun m!6414802 () Bool)

(assert (=> b!5388936 m!6414802))

(assert (=> b!5388644 d!1723075))

(declare-fun d!1723083 () Bool)

(assert (=> d!1723083 (= (flatMap!858 lt!2195443 lambda!279695) (choose!40523 lt!2195443 lambda!279695))))

(declare-fun bs!1246942 () Bool)

(assert (= bs!1246942 d!1723083))

(declare-fun m!6414804 () Bool)

(assert (=> bs!1246942 m!6414804))

(assert (=> b!5388643 d!1723083))

(declare-fun d!1723085 () Bool)

(declare-fun c!939068 () Bool)

(declare-fun e!3342215 () Bool)

(assert (=> d!1723085 (= c!939068 e!3342215)))

(declare-fun res!2289611 () Bool)

(assert (=> d!1723085 (=> (not res!2289611) (not e!3342215))))

(assert (=> d!1723085 (= res!2289611 ((_ is Cons!61569) (exprs!5015 lt!2195465)))))

(declare-fun e!3342216 () (InoxSet Context!9030))

(assert (=> d!1723085 (= (derivationStepZipperUp!503 lt!2195465 (h!68016 s!2326)) e!3342216)))

(declare-fun b!5388947 () Bool)

(declare-fun e!3342217 () (InoxSet Context!9030))

(declare-fun call!385735 () (InoxSet Context!9030))

(assert (=> b!5388947 (= e!3342217 call!385735)))

(declare-fun b!5388948 () Bool)

(assert (=> b!5388948 (= e!3342217 ((as const (Array Context!9030 Bool)) false))))

(declare-fun b!5388949 () Bool)

(assert (=> b!5388949 (= e!3342216 e!3342217)))

(declare-fun c!939067 () Bool)

(assert (=> b!5388949 (= c!939067 ((_ is Cons!61569) (exprs!5015 lt!2195465)))))

(declare-fun bm!385730 () Bool)

(assert (=> bm!385730 (= call!385735 (derivationStepZipperDown!579 (h!68017 (exprs!5015 lt!2195465)) (Context!9031 (t!374916 (exprs!5015 lt!2195465))) (h!68016 s!2326)))))

(declare-fun b!5388950 () Bool)

(assert (=> b!5388950 (= e!3342215 (nullable!5300 (h!68017 (exprs!5015 lt!2195465))))))

(declare-fun b!5388951 () Bool)

(assert (=> b!5388951 (= e!3342216 ((_ map or) call!385735 (derivationStepZipperUp!503 (Context!9031 (t!374916 (exprs!5015 lt!2195465))) (h!68016 s!2326))))))

(assert (= (and d!1723085 res!2289611) b!5388950))

(assert (= (and d!1723085 c!939068) b!5388951))

(assert (= (and d!1723085 (not c!939068)) b!5388949))

(assert (= (and b!5388949 c!939067) b!5388947))

(assert (= (and b!5388949 (not c!939067)) b!5388948))

(assert (= (or b!5388951 b!5388947) bm!385730))

(declare-fun m!6414806 () Bool)

(assert (=> bm!385730 m!6414806))

(declare-fun m!6414808 () Bool)

(assert (=> b!5388950 m!6414808))

(declare-fun m!6414810 () Bool)

(assert (=> b!5388951 m!6414810))

(assert (=> b!5388643 d!1723085))

(declare-fun d!1723087 () Bool)

(assert (=> d!1723087 (= (flatMap!858 lt!2195443 lambda!279695) (dynLambda!24280 lambda!279695 lt!2195465))))

(declare-fun lt!2195502 () Unit!154042)

(assert (=> d!1723087 (= lt!2195502 (choose!40524 lt!2195443 lt!2195465 lambda!279695))))

(assert (=> d!1723087 (= lt!2195443 (store ((as const (Array Context!9030 Bool)) false) lt!2195465 true))))

(assert (=> d!1723087 (= (lemmaFlatMapOnSingletonSet!390 lt!2195443 lt!2195465 lambda!279695) lt!2195502)))

(declare-fun b_lambda!206191 () Bool)

(assert (=> (not b_lambda!206191) (not d!1723087)))

(declare-fun bs!1246943 () Bool)

(assert (= bs!1246943 d!1723087))

(assert (=> bs!1246943 m!6414470))

(declare-fun m!6414812 () Bool)

(assert (=> bs!1246943 m!6414812))

(declare-fun m!6414814 () Bool)

(assert (=> bs!1246943 m!6414814))

(assert (=> bs!1246943 m!6414478))

(assert (=> b!5388643 d!1723087))

(declare-fun bs!1246944 () Bool)

(declare-fun d!1723089 () Bool)

(assert (= bs!1246944 (and d!1723089 b!5388650)))

(declare-fun lambda!279713 () Int)

(assert (=> bs!1246944 (= lambda!279713 lambda!279695)))

(assert (=> d!1723089 true))

(assert (=> d!1723089 (= (derivationStepZipper!1370 lt!2195443 (h!68016 s!2326)) (flatMap!858 lt!2195443 lambda!279713))))

(declare-fun bs!1246945 () Bool)

(assert (= bs!1246945 d!1723089))

(declare-fun m!6414816 () Bool)

(assert (=> bs!1246945 m!6414816))

(assert (=> b!5388643 d!1723089))

(declare-fun b!5388954 () Bool)

(declare-fun res!2289612 () Bool)

(declare-fun e!3342223 () Bool)

(assert (=> b!5388954 (=> res!2289612 e!3342223)))

(declare-fun e!3342219 () Bool)

(assert (=> b!5388954 (= res!2289612 e!3342219)))

(declare-fun res!2289618 () Bool)

(assert (=> b!5388954 (=> (not res!2289618) (not e!3342219))))

(declare-fun lt!2195503 () Bool)

(assert (=> b!5388954 (= res!2289618 lt!2195503)))

(declare-fun d!1723091 () Bool)

(declare-fun e!3342220 () Bool)

(assert (=> d!1723091 e!3342220))

(declare-fun c!939072 () Bool)

(assert (=> d!1723091 (= c!939072 ((_ is EmptyExpr!15131) (reg!15460 (regOne!30774 r!7292))))))

(declare-fun e!3342222 () Bool)

(assert (=> d!1723091 (= lt!2195503 e!3342222)))

(declare-fun c!939071 () Bool)

(assert (=> d!1723091 (= c!939071 (isEmpty!33566 (_1!35633 lt!2195428)))))

(assert (=> d!1723091 (validRegex!6867 (reg!15460 (regOne!30774 r!7292)))))

(assert (=> d!1723091 (= (matchR!7316 (reg!15460 (regOne!30774 r!7292)) (_1!35633 lt!2195428)) lt!2195503)))

(declare-fun bm!385731 () Bool)

(declare-fun call!385736 () Bool)

(assert (=> bm!385731 (= call!385736 (isEmpty!33566 (_1!35633 lt!2195428)))))

(declare-fun b!5388955 () Bool)

(declare-fun e!3342221 () Bool)

(assert (=> b!5388955 (= e!3342220 e!3342221)))

(declare-fun c!939073 () Bool)

(assert (=> b!5388955 (= c!939073 ((_ is EmptyLang!15131) (reg!15460 (regOne!30774 r!7292))))))

(declare-fun b!5388956 () Bool)

(declare-fun e!3342218 () Bool)

(assert (=> b!5388956 (= e!3342223 e!3342218)))

(declare-fun res!2289617 () Bool)

(assert (=> b!5388956 (=> (not res!2289617) (not e!3342218))))

(assert (=> b!5388956 (= res!2289617 (not lt!2195503))))

(declare-fun b!5388957 () Bool)

(assert (=> b!5388957 (= e!3342222 (nullable!5300 (reg!15460 (regOne!30774 r!7292))))))

(declare-fun b!5388958 () Bool)

(declare-fun res!2289614 () Bool)

(assert (=> b!5388958 (=> res!2289614 e!3342223)))

(assert (=> b!5388958 (= res!2289614 (not ((_ is ElementMatch!15131) (reg!15460 (regOne!30774 r!7292)))))))

(assert (=> b!5388958 (= e!3342221 e!3342223)))

(declare-fun b!5388959 () Bool)

(declare-fun res!2289616 () Bool)

(assert (=> b!5388959 (=> (not res!2289616) (not e!3342219))))

(assert (=> b!5388959 (= res!2289616 (not call!385736))))

(declare-fun b!5388960 () Bool)

(assert (=> b!5388960 (= e!3342222 (matchR!7316 (derivativeStep!4241 (reg!15460 (regOne!30774 r!7292)) (head!11559 (_1!35633 lt!2195428))) (tail!10656 (_1!35633 lt!2195428))))))

(declare-fun b!5388961 () Bool)

(declare-fun e!3342224 () Bool)

(assert (=> b!5388961 (= e!3342224 (not (= (head!11559 (_1!35633 lt!2195428)) (c!938981 (reg!15460 (regOne!30774 r!7292))))))))

(declare-fun b!5388962 () Bool)

(assert (=> b!5388962 (= e!3342221 (not lt!2195503))))

(declare-fun b!5388963 () Bool)

(assert (=> b!5388963 (= e!3342220 (= lt!2195503 call!385736))))

(declare-fun b!5388964 () Bool)

(assert (=> b!5388964 (= e!3342219 (= (head!11559 (_1!35633 lt!2195428)) (c!938981 (reg!15460 (regOne!30774 r!7292)))))))

(declare-fun b!5388965 () Bool)

(declare-fun res!2289613 () Bool)

(assert (=> b!5388965 (=> res!2289613 e!3342224)))

(assert (=> b!5388965 (= res!2289613 (not (isEmpty!33566 (tail!10656 (_1!35633 lt!2195428)))))))

(declare-fun b!5388966 () Bool)

(assert (=> b!5388966 (= e!3342218 e!3342224)))

(declare-fun res!2289619 () Bool)

(assert (=> b!5388966 (=> res!2289619 e!3342224)))

(assert (=> b!5388966 (= res!2289619 call!385736)))

(declare-fun b!5388967 () Bool)

(declare-fun res!2289615 () Bool)

(assert (=> b!5388967 (=> (not res!2289615) (not e!3342219))))

(assert (=> b!5388967 (= res!2289615 (isEmpty!33566 (tail!10656 (_1!35633 lt!2195428))))))

(assert (= (and d!1723091 c!939071) b!5388957))

(assert (= (and d!1723091 (not c!939071)) b!5388960))

(assert (= (and d!1723091 c!939072) b!5388963))

(assert (= (and d!1723091 (not c!939072)) b!5388955))

(assert (= (and b!5388955 c!939073) b!5388962))

(assert (= (and b!5388955 (not c!939073)) b!5388958))

(assert (= (and b!5388958 (not res!2289614)) b!5388954))

(assert (= (and b!5388954 res!2289618) b!5388959))

(assert (= (and b!5388959 res!2289616) b!5388967))

(assert (= (and b!5388967 res!2289615) b!5388964))

(assert (= (and b!5388954 (not res!2289612)) b!5388956))

(assert (= (and b!5388956 res!2289617) b!5388966))

(assert (= (and b!5388966 (not res!2289619)) b!5388965))

(assert (= (and b!5388965 (not res!2289613)) b!5388961))

(assert (= (or b!5388963 b!5388959 b!5388966) bm!385731))

(declare-fun m!6414818 () Bool)

(assert (=> b!5388961 m!6414818))

(declare-fun m!6414820 () Bool)

(assert (=> bm!385731 m!6414820))

(assert (=> b!5388964 m!6414818))

(declare-fun m!6414822 () Bool)

(assert (=> b!5388967 m!6414822))

(assert (=> b!5388967 m!6414822))

(declare-fun m!6414824 () Bool)

(assert (=> b!5388967 m!6414824))

(assert (=> b!5388960 m!6414818))

(assert (=> b!5388960 m!6414818))

(declare-fun m!6414826 () Bool)

(assert (=> b!5388960 m!6414826))

(assert (=> b!5388960 m!6414822))

(assert (=> b!5388960 m!6414826))

(assert (=> b!5388960 m!6414822))

(declare-fun m!6414828 () Bool)

(assert (=> b!5388960 m!6414828))

(assert (=> b!5388965 m!6414822))

(assert (=> b!5388965 m!6414822))

(assert (=> b!5388965 m!6414824))

(assert (=> d!1723091 m!6414820))

(declare-fun m!6414830 () Bool)

(assert (=> d!1723091 m!6414830))

(declare-fun m!6414832 () Bool)

(assert (=> b!5388957 m!6414832))

(assert (=> b!5388647 d!1723091))

(declare-fun d!1723093 () Bool)

(declare-fun lt!2195504 () Regex!15131)

(assert (=> d!1723093 (validRegex!6867 lt!2195504)))

(assert (=> d!1723093 (= lt!2195504 (generalisedUnion!1060 (unfocusZipperList!573 lt!2195446)))))

(assert (=> d!1723093 (= (unfocusZipper!873 lt!2195446) lt!2195504)))

(declare-fun bs!1246946 () Bool)

(assert (= bs!1246946 d!1723093))

(declare-fun m!6414834 () Bool)

(assert (=> bs!1246946 m!6414834))

(declare-fun m!6414836 () Bool)

(assert (=> bs!1246946 m!6414836))

(assert (=> bs!1246946 m!6414836))

(declare-fun m!6414838 () Bool)

(assert (=> bs!1246946 m!6414838))

(assert (=> b!5388646 d!1723093))

(declare-fun b!5389017 () Bool)

(declare-fun res!2289650 () Bool)

(declare-fun e!3342255 () Bool)

(assert (=> b!5389017 (=> (not res!2289650) (not e!3342255))))

(declare-fun lt!2195523 () Option!15242)

(assert (=> b!5389017 (= res!2289650 (matchR!7316 (regOne!30774 r!7292) (_1!35633 (get!21205 lt!2195523))))))

(declare-fun b!5389018 () Bool)

(assert (=> b!5389018 (= e!3342255 (= (++!13447 (_1!35633 (get!21205 lt!2195523)) (_2!35633 (get!21205 lt!2195523))) s!2326))))

(declare-fun b!5389019 () Bool)

(declare-fun res!2289653 () Bool)

(assert (=> b!5389019 (=> (not res!2289653) (not e!3342255))))

(assert (=> b!5389019 (= res!2289653 (matchR!7316 (regTwo!30774 r!7292) (_2!35633 (get!21205 lt!2195523))))))

(declare-fun d!1723095 () Bool)

(declare-fun e!3342256 () Bool)

(assert (=> d!1723095 e!3342256))

(declare-fun res!2289652 () Bool)

(assert (=> d!1723095 (=> res!2289652 e!3342256)))

(assert (=> d!1723095 (= res!2289652 e!3342255)))

(declare-fun res!2289649 () Bool)

(assert (=> d!1723095 (=> (not res!2289649) (not e!3342255))))

(assert (=> d!1723095 (= res!2289649 (isDefined!11945 lt!2195523))))

(declare-fun e!3342253 () Option!15242)

(assert (=> d!1723095 (= lt!2195523 e!3342253)))

(declare-fun c!939084 () Bool)

(declare-fun e!3342254 () Bool)

(assert (=> d!1723095 (= c!939084 e!3342254)))

(declare-fun res!2289651 () Bool)

(assert (=> d!1723095 (=> (not res!2289651) (not e!3342254))))

(assert (=> d!1723095 (= res!2289651 (matchR!7316 (regOne!30774 r!7292) Nil!61568))))

(assert (=> d!1723095 (validRegex!6867 (regOne!30774 r!7292))))

(assert (=> d!1723095 (= (findConcatSeparation!1656 (regOne!30774 r!7292) (regTwo!30774 r!7292) Nil!61568 s!2326 s!2326) lt!2195523)))

(declare-fun b!5389020 () Bool)

(declare-fun e!3342252 () Option!15242)

(assert (=> b!5389020 (= e!3342253 e!3342252)))

(declare-fun c!939085 () Bool)

(assert (=> b!5389020 (= c!939085 ((_ is Nil!61568) s!2326))))

(declare-fun b!5389021 () Bool)

(assert (=> b!5389021 (= e!3342253 (Some!15241 (tuple2!64661 Nil!61568 s!2326)))))

(declare-fun b!5389022 () Bool)

(assert (=> b!5389022 (= e!3342252 None!15241)))

(declare-fun b!5389023 () Bool)

(declare-fun lt!2195522 () Unit!154042)

(declare-fun lt!2195524 () Unit!154042)

(assert (=> b!5389023 (= lt!2195522 lt!2195524)))

(assert (=> b!5389023 (= (++!13447 (++!13447 Nil!61568 (Cons!61568 (h!68016 s!2326) Nil!61568)) (t!374915 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1815 (List!61692 C!30532 List!61692 List!61692) Unit!154042)

(assert (=> b!5389023 (= lt!2195524 (lemmaMoveElementToOtherListKeepsConcatEq!1815 Nil!61568 (h!68016 s!2326) (t!374915 s!2326) s!2326))))

(assert (=> b!5389023 (= e!3342252 (findConcatSeparation!1656 (regOne!30774 r!7292) (regTwo!30774 r!7292) (++!13447 Nil!61568 (Cons!61568 (h!68016 s!2326) Nil!61568)) (t!374915 s!2326) s!2326))))

(declare-fun b!5389024 () Bool)

(assert (=> b!5389024 (= e!3342256 (not (isDefined!11945 lt!2195523)))))

(declare-fun b!5389025 () Bool)

(assert (=> b!5389025 (= e!3342254 (matchR!7316 (regTwo!30774 r!7292) s!2326))))

(assert (= (and d!1723095 res!2289651) b!5389025))

(assert (= (and d!1723095 c!939084) b!5389021))

(assert (= (and d!1723095 (not c!939084)) b!5389020))

(assert (= (and b!5389020 c!939085) b!5389022))

(assert (= (and b!5389020 (not c!939085)) b!5389023))

(assert (= (and d!1723095 res!2289649) b!5389017))

(assert (= (and b!5389017 res!2289650) b!5389019))

(assert (= (and b!5389019 res!2289653) b!5389018))

(assert (= (and d!1723095 (not res!2289652)) b!5389024))

(declare-fun m!6414868 () Bool)

(assert (=> b!5389023 m!6414868))

(assert (=> b!5389023 m!6414868))

(declare-fun m!6414870 () Bool)

(assert (=> b!5389023 m!6414870))

(declare-fun m!6414872 () Bool)

(assert (=> b!5389023 m!6414872))

(assert (=> b!5389023 m!6414868))

(declare-fun m!6414874 () Bool)

(assert (=> b!5389023 m!6414874))

(declare-fun m!6414876 () Bool)

(assert (=> b!5389017 m!6414876))

(declare-fun m!6414878 () Bool)

(assert (=> b!5389017 m!6414878))

(assert (=> b!5389018 m!6414876))

(declare-fun m!6414880 () Bool)

(assert (=> b!5389018 m!6414880))

(declare-fun m!6414882 () Bool)

(assert (=> d!1723095 m!6414882))

(declare-fun m!6414884 () Bool)

(assert (=> d!1723095 m!6414884))

(declare-fun m!6414886 () Bool)

(assert (=> d!1723095 m!6414886))

(assert (=> b!5389019 m!6414876))

(declare-fun m!6414888 () Bool)

(assert (=> b!5389019 m!6414888))

(declare-fun m!6414890 () Bool)

(assert (=> b!5389025 m!6414890))

(assert (=> b!5389024 m!6414882))

(assert (=> b!5388665 d!1723095))

(declare-fun d!1723103 () Bool)

(declare-fun choose!40529 (Int) Bool)

(assert (=> d!1723103 (= (Exists!2312 lambda!279694) (choose!40529 lambda!279694))))

(declare-fun bs!1246952 () Bool)

(assert (= bs!1246952 d!1723103))

(declare-fun m!6414892 () Bool)

(assert (=> bs!1246952 m!6414892))

(assert (=> b!5388665 d!1723103))

(declare-fun d!1723105 () Bool)

(assert (=> d!1723105 (= (Exists!2312 lambda!279693) (choose!40529 lambda!279693))))

(declare-fun bs!1246954 () Bool)

(assert (= bs!1246954 d!1723105))

(declare-fun m!6414894 () Bool)

(assert (=> bs!1246954 m!6414894))

(assert (=> b!5388665 d!1723105))

(declare-fun bs!1246955 () Bool)

(declare-fun d!1723107 () Bool)

(assert (= bs!1246955 (and d!1723107 b!5388665)))

(declare-fun lambda!279721 () Int)

(assert (=> bs!1246955 (= lambda!279721 lambda!279693)))

(declare-fun bs!1246956 () Bool)

(assert (= bs!1246956 (and d!1723107 b!5388654)))

(assert (=> bs!1246956 (not (= lambda!279721 lambda!279700))))

(assert (=> bs!1246955 (not (= lambda!279721 lambda!279694))))

(declare-fun bs!1246957 () Bool)

(assert (= bs!1246957 (and d!1723107 b!5388639)))

(assert (=> bs!1246957 (not (= lambda!279721 lambda!279697))))

(assert (=> bs!1246956 (= (and (= s!2326 (_1!35633 lt!2195436)) (= (regOne!30774 r!7292) (reg!15460 (regOne!30774 r!7292))) (= (regTwo!30774 r!7292) lt!2195430)) (= lambda!279721 lambda!279698))))

(assert (=> bs!1246956 (not (= lambda!279721 lambda!279699))))

(assert (=> bs!1246957 (= (= (regOne!30774 r!7292) lt!2195430) (= lambda!279721 lambda!279696))))

(assert (=> d!1723107 true))

(assert (=> d!1723107 true))

(assert (=> d!1723107 true))

(assert (=> d!1723107 (= (isDefined!11945 (findConcatSeparation!1656 (regOne!30774 r!7292) (regTwo!30774 r!7292) Nil!61568 s!2326 s!2326)) (Exists!2312 lambda!279721))))

(declare-fun lt!2195530 () Unit!154042)

(declare-fun choose!40530 (Regex!15131 Regex!15131 List!61692) Unit!154042)

(assert (=> d!1723107 (= lt!2195530 (choose!40530 (regOne!30774 r!7292) (regTwo!30774 r!7292) s!2326))))

(assert (=> d!1723107 (validRegex!6867 (regOne!30774 r!7292))))

(assert (=> d!1723107 (= (lemmaFindConcatSeparationEquivalentToExists!1420 (regOne!30774 r!7292) (regTwo!30774 r!7292) s!2326) lt!2195530)))

(declare-fun bs!1246958 () Bool)

(assert (= bs!1246958 d!1723107))

(declare-fun m!6414900 () Bool)

(assert (=> bs!1246958 m!6414900))

(declare-fun m!6414902 () Bool)

(assert (=> bs!1246958 m!6414902))

(assert (=> bs!1246958 m!6414886))

(assert (=> bs!1246958 m!6414630))

(assert (=> bs!1246958 m!6414632))

(assert (=> bs!1246958 m!6414630))

(assert (=> b!5388665 d!1723107))

(declare-fun bs!1246965 () Bool)

(declare-fun d!1723111 () Bool)

(assert (= bs!1246965 (and d!1723111 b!5388665)))

(declare-fun lambda!279730 () Int)

(assert (=> bs!1246965 (= lambda!279730 lambda!279693)))

(declare-fun bs!1246966 () Bool)

(assert (= bs!1246966 (and d!1723111 b!5388654)))

(assert (=> bs!1246966 (not (= lambda!279730 lambda!279700))))

(assert (=> bs!1246965 (not (= lambda!279730 lambda!279694))))

(declare-fun bs!1246967 () Bool)

(assert (= bs!1246967 (and d!1723111 b!5388639)))

(assert (=> bs!1246967 (not (= lambda!279730 lambda!279697))))

(declare-fun bs!1246968 () Bool)

(assert (= bs!1246968 (and d!1723111 d!1723107)))

(assert (=> bs!1246968 (= lambda!279730 lambda!279721)))

(assert (=> bs!1246966 (= (and (= s!2326 (_1!35633 lt!2195436)) (= (regOne!30774 r!7292) (reg!15460 (regOne!30774 r!7292))) (= (regTwo!30774 r!7292) lt!2195430)) (= lambda!279730 lambda!279698))))

(assert (=> bs!1246966 (not (= lambda!279730 lambda!279699))))

(assert (=> bs!1246967 (= (= (regOne!30774 r!7292) lt!2195430) (= lambda!279730 lambda!279696))))

(assert (=> d!1723111 true))

(assert (=> d!1723111 true))

(assert (=> d!1723111 true))

(declare-fun lambda!279731 () Int)

(assert (=> bs!1246965 (not (= lambda!279731 lambda!279693))))

(assert (=> bs!1246966 (= (and (= s!2326 (_1!35633 lt!2195436)) (= (regOne!30774 r!7292) (reg!15460 (regOne!30774 r!7292))) (= (regTwo!30774 r!7292) lt!2195430)) (= lambda!279731 lambda!279700))))

(assert (=> bs!1246965 (= lambda!279731 lambda!279694)))

(assert (=> bs!1246967 (= (= (regOne!30774 r!7292) lt!2195430) (= lambda!279731 lambda!279697))))

(assert (=> bs!1246968 (not (= lambda!279731 lambda!279721))))

(assert (=> bs!1246966 (not (= lambda!279731 lambda!279698))))

(assert (=> bs!1246966 (not (= lambda!279731 lambda!279699))))

(declare-fun bs!1246970 () Bool)

(assert (= bs!1246970 d!1723111))

(assert (=> bs!1246970 (not (= lambda!279731 lambda!279730))))

(assert (=> bs!1246967 (not (= lambda!279731 lambda!279696))))

(assert (=> d!1723111 true))

(assert (=> d!1723111 true))

(assert (=> d!1723111 true))

(assert (=> d!1723111 (= (Exists!2312 lambda!279730) (Exists!2312 lambda!279731))))

(declare-fun lt!2195538 () Unit!154042)

(declare-fun choose!40531 (Regex!15131 Regex!15131 List!61692) Unit!154042)

(assert (=> d!1723111 (= lt!2195538 (choose!40531 (regOne!30774 r!7292) (regTwo!30774 r!7292) s!2326))))

(assert (=> d!1723111 (validRegex!6867 (regOne!30774 r!7292))))

(assert (=> d!1723111 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!966 (regOne!30774 r!7292) (regTwo!30774 r!7292) s!2326) lt!2195538)))

(declare-fun m!6414956 () Bool)

(assert (=> bs!1246970 m!6414956))

(declare-fun m!6414958 () Bool)

(assert (=> bs!1246970 m!6414958))

(declare-fun m!6414960 () Bool)

(assert (=> bs!1246970 m!6414960))

(assert (=> bs!1246970 m!6414886))

(assert (=> b!5388665 d!1723111))

(declare-fun d!1723125 () Bool)

(declare-fun isEmpty!33570 (Option!15242) Bool)

(assert (=> d!1723125 (= (isDefined!11945 (findConcatSeparation!1656 (regOne!30774 r!7292) (regTwo!30774 r!7292) Nil!61568 s!2326 s!2326)) (not (isEmpty!33570 (findConcatSeparation!1656 (regOne!30774 r!7292) (regTwo!30774 r!7292) Nil!61568 s!2326 s!2326))))))

(declare-fun bs!1246971 () Bool)

(assert (= bs!1246971 d!1723125))

(assert (=> bs!1246971 m!6414630))

(declare-fun m!6414962 () Bool)

(assert (=> bs!1246971 m!6414962))

(assert (=> b!5388665 d!1723125))

(declare-fun d!1723127 () Bool)

(declare-fun c!939093 () Bool)

(assert (=> d!1723127 (= c!939093 (isEmpty!33566 s!2326))))

(declare-fun e!3342279 () Bool)

(assert (=> d!1723127 (= (matchZipper!1375 lt!2195443 s!2326) e!3342279)))

(declare-fun b!5389070 () Bool)

(declare-fun nullableZipper!1420 ((InoxSet Context!9030)) Bool)

(assert (=> b!5389070 (= e!3342279 (nullableZipper!1420 lt!2195443))))

(declare-fun b!5389071 () Bool)

(assert (=> b!5389071 (= e!3342279 (matchZipper!1375 (derivationStepZipper!1370 lt!2195443 (head!11559 s!2326)) (tail!10656 s!2326)))))

(assert (= (and d!1723127 c!939093) b!5389070))

(assert (= (and d!1723127 (not c!939093)) b!5389071))

(declare-fun m!6414970 () Bool)

(assert (=> d!1723127 m!6414970))

(declare-fun m!6414972 () Bool)

(assert (=> b!5389070 m!6414972))

(declare-fun m!6414974 () Bool)

(assert (=> b!5389071 m!6414974))

(assert (=> b!5389071 m!6414974))

(declare-fun m!6414976 () Bool)

(assert (=> b!5389071 m!6414976))

(declare-fun m!6414978 () Bool)

(assert (=> b!5389071 m!6414978))

(assert (=> b!5389071 m!6414976))

(assert (=> b!5389071 m!6414978))

(declare-fun m!6414980 () Bool)

(assert (=> b!5389071 m!6414980))

(assert (=> b!5388645 d!1723127))

(declare-fun d!1723131 () Bool)

(declare-fun c!939094 () Bool)

(assert (=> d!1723131 (= c!939094 (isEmpty!33566 (t!374915 s!2326)))))

(declare-fun e!3342280 () Bool)

(assert (=> d!1723131 (= (matchZipper!1375 lt!2195461 (t!374915 s!2326)) e!3342280)))

(declare-fun b!5389072 () Bool)

(assert (=> b!5389072 (= e!3342280 (nullableZipper!1420 lt!2195461))))

(declare-fun b!5389073 () Bool)

(assert (=> b!5389073 (= e!3342280 (matchZipper!1375 (derivationStepZipper!1370 lt!2195461 (head!11559 (t!374915 s!2326))) (tail!10656 (t!374915 s!2326))))))

(assert (= (and d!1723131 c!939094) b!5389072))

(assert (= (and d!1723131 (not c!939094)) b!5389073))

(declare-fun m!6414982 () Bool)

(assert (=> d!1723131 m!6414982))

(declare-fun m!6414984 () Bool)

(assert (=> b!5389072 m!6414984))

(declare-fun m!6414986 () Bool)

(assert (=> b!5389073 m!6414986))

(assert (=> b!5389073 m!6414986))

(declare-fun m!6414988 () Bool)

(assert (=> b!5389073 m!6414988))

(declare-fun m!6414990 () Bool)

(assert (=> b!5389073 m!6414990))

(assert (=> b!5389073 m!6414988))

(assert (=> b!5389073 m!6414990))

(declare-fun m!6414992 () Bool)

(assert (=> b!5389073 m!6414992))

(assert (=> b!5388645 d!1723131))

(declare-fun d!1723133 () Bool)

(assert (=> d!1723133 (= (flatMap!858 lt!2195456 lambda!279695) (dynLambda!24280 lambda!279695 lt!2195472))))

(declare-fun lt!2195546 () Unit!154042)

(assert (=> d!1723133 (= lt!2195546 (choose!40524 lt!2195456 lt!2195472 lambda!279695))))

(assert (=> d!1723133 (= lt!2195456 (store ((as const (Array Context!9030 Bool)) false) lt!2195472 true))))

(assert (=> d!1723133 (= (lemmaFlatMapOnSingletonSet!390 lt!2195456 lt!2195472 lambda!279695) lt!2195546)))

(declare-fun b_lambda!206193 () Bool)

(assert (=> (not b_lambda!206193) (not d!1723133)))

(declare-fun bs!1246973 () Bool)

(assert (= bs!1246973 d!1723133))

(assert (=> bs!1246973 m!6414538))

(declare-fun m!6414994 () Bool)

(assert (=> bs!1246973 m!6414994))

(declare-fun m!6414996 () Bool)

(assert (=> bs!1246973 m!6414996))

(assert (=> bs!1246973 m!6414528))

(assert (=> b!5388680 d!1723133))

(declare-fun d!1723135 () Bool)

(assert (=> d!1723135 (= (flatMap!858 lt!2195438 lambda!279695) (dynLambda!24280 lambda!279695 lt!2195463))))

(declare-fun lt!2195547 () Unit!154042)

(assert (=> d!1723135 (= lt!2195547 (choose!40524 lt!2195438 lt!2195463 lambda!279695))))

(assert (=> d!1723135 (= lt!2195438 (store ((as const (Array Context!9030 Bool)) false) lt!2195463 true))))

(assert (=> d!1723135 (= (lemmaFlatMapOnSingletonSet!390 lt!2195438 lt!2195463 lambda!279695) lt!2195547)))

(declare-fun b_lambda!206195 () Bool)

(assert (=> (not b_lambda!206195) (not d!1723135)))

(declare-fun bs!1246974 () Bool)

(assert (= bs!1246974 d!1723135))

(assert (=> bs!1246974 m!6414534))

(declare-fun m!6414998 () Bool)

(assert (=> bs!1246974 m!6414998))

(declare-fun m!6415000 () Bool)

(assert (=> bs!1246974 m!6415000))

(assert (=> bs!1246974 m!6414522))

(assert (=> b!5388680 d!1723135))

(declare-fun d!1723137 () Bool)

(assert (=> d!1723137 (= (flatMap!858 lt!2195456 lambda!279695) (choose!40523 lt!2195456 lambda!279695))))

(declare-fun bs!1246975 () Bool)

(assert (= bs!1246975 d!1723137))

(declare-fun m!6415002 () Bool)

(assert (=> bs!1246975 m!6415002))

(assert (=> b!5388680 d!1723137))

(declare-fun d!1723139 () Bool)

(assert (=> d!1723139 (= (flatMap!858 lt!2195438 lambda!279695) (choose!40523 lt!2195438 lambda!279695))))

(declare-fun bs!1246976 () Bool)

(assert (= bs!1246976 d!1723139))

(declare-fun m!6415004 () Bool)

(assert (=> bs!1246976 m!6415004))

(assert (=> b!5388680 d!1723139))

(declare-fun d!1723141 () Bool)

(declare-fun c!939106 () Bool)

(declare-fun e!3342293 () Bool)

(assert (=> d!1723141 (= c!939106 e!3342293)))

(declare-fun res!2289686 () Bool)

(assert (=> d!1723141 (=> (not res!2289686) (not e!3342293))))

(assert (=> d!1723141 (= res!2289686 ((_ is Cons!61569) (exprs!5015 lt!2195472)))))

(declare-fun e!3342294 () (InoxSet Context!9030))

(assert (=> d!1723141 (= (derivationStepZipperUp!503 lt!2195472 (h!68016 s!2326)) e!3342294)))

(declare-fun b!5389096 () Bool)

(declare-fun e!3342295 () (InoxSet Context!9030))

(declare-fun call!385737 () (InoxSet Context!9030))

(assert (=> b!5389096 (= e!3342295 call!385737)))

(declare-fun b!5389097 () Bool)

(assert (=> b!5389097 (= e!3342295 ((as const (Array Context!9030 Bool)) false))))

(declare-fun b!5389098 () Bool)

(assert (=> b!5389098 (= e!3342294 e!3342295)))

(declare-fun c!939105 () Bool)

(assert (=> b!5389098 (= c!939105 ((_ is Cons!61569) (exprs!5015 lt!2195472)))))

(declare-fun bm!385732 () Bool)

(assert (=> bm!385732 (= call!385737 (derivationStepZipperDown!579 (h!68017 (exprs!5015 lt!2195472)) (Context!9031 (t!374916 (exprs!5015 lt!2195472))) (h!68016 s!2326)))))

(declare-fun b!5389099 () Bool)

(assert (=> b!5389099 (= e!3342293 (nullable!5300 (h!68017 (exprs!5015 lt!2195472))))))

(declare-fun b!5389100 () Bool)

(assert (=> b!5389100 (= e!3342294 ((_ map or) call!385737 (derivationStepZipperUp!503 (Context!9031 (t!374916 (exprs!5015 lt!2195472))) (h!68016 s!2326))))))

(assert (= (and d!1723141 res!2289686) b!5389099))

(assert (= (and d!1723141 c!939106) b!5389100))

(assert (= (and d!1723141 (not c!939106)) b!5389098))

(assert (= (and b!5389098 c!939105) b!5389096))

(assert (= (and b!5389098 (not c!939105)) b!5389097))

(assert (= (or b!5389100 b!5389096) bm!385732))

(declare-fun m!6415006 () Bool)

(assert (=> bm!385732 m!6415006))

(declare-fun m!6415008 () Bool)

(assert (=> b!5389099 m!6415008))

(declare-fun m!6415010 () Bool)

(assert (=> b!5389100 m!6415010))

(assert (=> b!5388680 d!1723141))

(declare-fun d!1723143 () Bool)

(declare-fun lt!2195548 () Regex!15131)

(assert (=> d!1723143 (validRegex!6867 lt!2195548)))

(assert (=> d!1723143 (= lt!2195548 (generalisedUnion!1060 (unfocusZipperList!573 lt!2195467)))))

(assert (=> d!1723143 (= (unfocusZipper!873 lt!2195467) lt!2195548)))

(declare-fun bs!1246977 () Bool)

(assert (= bs!1246977 d!1723143))

(declare-fun m!6415012 () Bool)

(assert (=> bs!1246977 m!6415012))

(declare-fun m!6415014 () Bool)

(assert (=> bs!1246977 m!6415014))

(assert (=> bs!1246977 m!6415014))

(declare-fun m!6415016 () Bool)

(assert (=> bs!1246977 m!6415016))

(assert (=> b!5388680 d!1723143))

(declare-fun d!1723145 () Bool)

(declare-fun c!939108 () Bool)

(declare-fun e!3342296 () Bool)

(assert (=> d!1723145 (= c!939108 e!3342296)))

(declare-fun res!2289687 () Bool)

(assert (=> d!1723145 (=> (not res!2289687) (not e!3342296))))

(assert (=> d!1723145 (= res!2289687 ((_ is Cons!61569) (exprs!5015 lt!2195463)))))

(declare-fun e!3342297 () (InoxSet Context!9030))

(assert (=> d!1723145 (= (derivationStepZipperUp!503 lt!2195463 (h!68016 s!2326)) e!3342297)))

(declare-fun b!5389101 () Bool)

(declare-fun e!3342298 () (InoxSet Context!9030))

(declare-fun call!385742 () (InoxSet Context!9030))

(assert (=> b!5389101 (= e!3342298 call!385742)))

(declare-fun b!5389102 () Bool)

(assert (=> b!5389102 (= e!3342298 ((as const (Array Context!9030 Bool)) false))))

(declare-fun b!5389103 () Bool)

(assert (=> b!5389103 (= e!3342297 e!3342298)))

(declare-fun c!939107 () Bool)

(assert (=> b!5389103 (= c!939107 ((_ is Cons!61569) (exprs!5015 lt!2195463)))))

(declare-fun bm!385737 () Bool)

(assert (=> bm!385737 (= call!385742 (derivationStepZipperDown!579 (h!68017 (exprs!5015 lt!2195463)) (Context!9031 (t!374916 (exprs!5015 lt!2195463))) (h!68016 s!2326)))))

(declare-fun b!5389104 () Bool)

(assert (=> b!5389104 (= e!3342296 (nullable!5300 (h!68017 (exprs!5015 lt!2195463))))))

(declare-fun b!5389105 () Bool)

(assert (=> b!5389105 (= e!3342297 ((_ map or) call!385742 (derivationStepZipperUp!503 (Context!9031 (t!374916 (exprs!5015 lt!2195463))) (h!68016 s!2326))))))

(assert (= (and d!1723145 res!2289687) b!5389104))

(assert (= (and d!1723145 c!939108) b!5389105))

(assert (= (and d!1723145 (not c!939108)) b!5389103))

(assert (= (and b!5389103 c!939107) b!5389101))

(assert (= (and b!5389103 (not c!939107)) b!5389102))

(assert (= (or b!5389105 b!5389101) bm!385737))

(declare-fun m!6415018 () Bool)

(assert (=> bm!385737 m!6415018))

(declare-fun m!6415020 () Bool)

(assert (=> b!5389104 m!6415020))

(declare-fun m!6415022 () Bool)

(assert (=> b!5389105 m!6415022))

(assert (=> b!5388680 d!1723145))

(declare-fun d!1723147 () Bool)

(assert (=> d!1723147 (= (Exists!2312 lambda!279696) (choose!40529 lambda!279696))))

(declare-fun bs!1246978 () Bool)

(assert (= bs!1246978 d!1723147))

(declare-fun m!6415024 () Bool)

(assert (=> bs!1246978 m!6415024))

(assert (=> b!5388639 d!1723147))

(declare-fun d!1723149 () Bool)

(assert (=> d!1723149 (= (isDefined!11945 lt!2195448) (not (isEmpty!33570 lt!2195448)))))

(declare-fun bs!1246979 () Bool)

(assert (= bs!1246979 d!1723149))

(declare-fun m!6415026 () Bool)

(assert (=> bs!1246979 m!6415026))

(assert (=> b!5388639 d!1723149))

(declare-fun bs!1246980 () Bool)

(declare-fun d!1723151 () Bool)

(assert (= bs!1246980 (and d!1723151 b!5388665)))

(declare-fun lambda!279732 () Int)

(assert (=> bs!1246980 (= (= lt!2195430 (regOne!30774 r!7292)) (= lambda!279732 lambda!279693))))

(declare-fun bs!1246981 () Bool)

(assert (= bs!1246981 (and d!1723151 d!1723111)))

(assert (=> bs!1246981 (not (= lambda!279732 lambda!279731))))

(declare-fun bs!1246982 () Bool)

(assert (= bs!1246982 (and d!1723151 b!5388654)))

(assert (=> bs!1246982 (not (= lambda!279732 lambda!279700))))

(assert (=> bs!1246980 (not (= lambda!279732 lambda!279694))))

(declare-fun bs!1246983 () Bool)

(assert (= bs!1246983 (and d!1723151 b!5388639)))

(assert (=> bs!1246983 (not (= lambda!279732 lambda!279697))))

(declare-fun bs!1246984 () Bool)

(assert (= bs!1246984 (and d!1723151 d!1723107)))

(assert (=> bs!1246984 (= (= lt!2195430 (regOne!30774 r!7292)) (= lambda!279732 lambda!279721))))

(assert (=> bs!1246982 (= (and (= s!2326 (_1!35633 lt!2195436)) (= lt!2195430 (reg!15460 (regOne!30774 r!7292))) (= (regTwo!30774 r!7292) lt!2195430)) (= lambda!279732 lambda!279698))))

(assert (=> bs!1246982 (not (= lambda!279732 lambda!279699))))

(assert (=> bs!1246981 (= (= lt!2195430 (regOne!30774 r!7292)) (= lambda!279732 lambda!279730))))

(assert (=> bs!1246983 (= lambda!279732 lambda!279696)))

(assert (=> d!1723151 true))

(assert (=> d!1723151 true))

(assert (=> d!1723151 true))

(assert (=> d!1723151 (= (isDefined!11945 (findConcatSeparation!1656 lt!2195430 (regTwo!30774 r!7292) Nil!61568 s!2326 s!2326)) (Exists!2312 lambda!279732))))

(declare-fun lt!2195549 () Unit!154042)

(assert (=> d!1723151 (= lt!2195549 (choose!40530 lt!2195430 (regTwo!30774 r!7292) s!2326))))

(assert (=> d!1723151 (validRegex!6867 lt!2195430)))

(assert (=> d!1723151 (= (lemmaFindConcatSeparationEquivalentToExists!1420 lt!2195430 (regTwo!30774 r!7292) s!2326) lt!2195549)))

(declare-fun bs!1246985 () Bool)

(assert (= bs!1246985 d!1723151))

(declare-fun m!6415028 () Bool)

(assert (=> bs!1246985 m!6415028))

(declare-fun m!6415030 () Bool)

(assert (=> bs!1246985 m!6415030))

(assert (=> bs!1246985 m!6414800))

(assert (=> bs!1246985 m!6414454))

(declare-fun m!6415032 () Bool)

(assert (=> bs!1246985 m!6415032))

(assert (=> bs!1246985 m!6414454))

(assert (=> b!5388639 d!1723151))

(declare-fun d!1723153 () Bool)

(declare-fun e!3342309 () Bool)

(assert (=> d!1723153 e!3342309))

(declare-fun res!2289693 () Bool)

(assert (=> d!1723153 (=> (not res!2289693) (not e!3342309))))

(declare-fun lt!2195552 () List!61692)

(declare-fun content!11019 (List!61692) (InoxSet C!30532))

(assert (=> d!1723153 (= res!2289693 (= (content!11019 lt!2195552) ((_ map or) (content!11019 (_1!35633 lt!2195436)) (content!11019 (_2!35633 lt!2195436)))))))

(declare-fun e!3342310 () List!61692)

(assert (=> d!1723153 (= lt!2195552 e!3342310)))

(declare-fun c!939116 () Bool)

(assert (=> d!1723153 (= c!939116 ((_ is Nil!61568) (_1!35633 lt!2195436)))))

(assert (=> d!1723153 (= (++!13447 (_1!35633 lt!2195436) (_2!35633 lt!2195436)) lt!2195552)))

(declare-fun b!5389127 () Bool)

(declare-fun res!2289694 () Bool)

(assert (=> b!5389127 (=> (not res!2289694) (not e!3342309))))

(declare-fun size!39815 (List!61692) Int)

(assert (=> b!5389127 (= res!2289694 (= (size!39815 lt!2195552) (+ (size!39815 (_1!35633 lt!2195436)) (size!39815 (_2!35633 lt!2195436)))))))

(declare-fun b!5389125 () Bool)

(assert (=> b!5389125 (= e!3342310 (_2!35633 lt!2195436))))

(declare-fun b!5389128 () Bool)

(assert (=> b!5389128 (= e!3342309 (or (not (= (_2!35633 lt!2195436) Nil!61568)) (= lt!2195552 (_1!35633 lt!2195436))))))

(declare-fun b!5389126 () Bool)

(assert (=> b!5389126 (= e!3342310 (Cons!61568 (h!68016 (_1!35633 lt!2195436)) (++!13447 (t!374915 (_1!35633 lt!2195436)) (_2!35633 lt!2195436))))))

(assert (= (and d!1723153 c!939116) b!5389125))

(assert (= (and d!1723153 (not c!939116)) b!5389126))

(assert (= (and d!1723153 res!2289693) b!5389127))

(assert (= (and b!5389127 res!2289694) b!5389128))

(declare-fun m!6415042 () Bool)

(assert (=> d!1723153 m!6415042))

(declare-fun m!6415044 () Bool)

(assert (=> d!1723153 m!6415044))

(declare-fun m!6415046 () Bool)

(assert (=> d!1723153 m!6415046))

(declare-fun m!6415048 () Bool)

(assert (=> b!5389127 m!6415048))

(declare-fun m!6415050 () Bool)

(assert (=> b!5389127 m!6415050))

(declare-fun m!6415052 () Bool)

(assert (=> b!5389127 m!6415052))

(declare-fun m!6415054 () Bool)

(assert (=> b!5389126 m!6415054))

(assert (=> b!5388639 d!1723153))

(declare-fun d!1723159 () Bool)

(assert (=> d!1723159 (= (Exists!2312 lambda!279697) (choose!40529 lambda!279697))))

(declare-fun bs!1246987 () Bool)

(assert (= bs!1246987 d!1723159))

(declare-fun m!6415060 () Bool)

(assert (=> bs!1246987 m!6415060))

(assert (=> b!5388639 d!1723159))

(declare-fun d!1723161 () Bool)

(assert (=> d!1723161 (= (get!21205 lt!2195448) (v!51270 lt!2195448))))

(assert (=> b!5388639 d!1723161))

(declare-fun bs!1246989 () Bool)

(declare-fun d!1723165 () Bool)

(assert (= bs!1246989 (and d!1723165 b!5388665)))

(declare-fun lambda!279733 () Int)

(assert (=> bs!1246989 (= (= lt!2195430 (regOne!30774 r!7292)) (= lambda!279733 lambda!279693))))

(declare-fun bs!1246990 () Bool)

(assert (= bs!1246990 (and d!1723165 d!1723151)))

(assert (=> bs!1246990 (= lambda!279733 lambda!279732)))

(declare-fun bs!1246991 () Bool)

(assert (= bs!1246991 (and d!1723165 d!1723111)))

(assert (=> bs!1246991 (not (= lambda!279733 lambda!279731))))

(declare-fun bs!1246992 () Bool)

(assert (= bs!1246992 (and d!1723165 b!5388654)))

(assert (=> bs!1246992 (not (= lambda!279733 lambda!279700))))

(assert (=> bs!1246989 (not (= lambda!279733 lambda!279694))))

(declare-fun bs!1246993 () Bool)

(assert (= bs!1246993 (and d!1723165 b!5388639)))

(assert (=> bs!1246993 (not (= lambda!279733 lambda!279697))))

(declare-fun bs!1246994 () Bool)

(assert (= bs!1246994 (and d!1723165 d!1723107)))

(assert (=> bs!1246994 (= (= lt!2195430 (regOne!30774 r!7292)) (= lambda!279733 lambda!279721))))

(assert (=> bs!1246992 (= (and (= s!2326 (_1!35633 lt!2195436)) (= lt!2195430 (reg!15460 (regOne!30774 r!7292))) (= (regTwo!30774 r!7292) lt!2195430)) (= lambda!279733 lambda!279698))))

(assert (=> bs!1246992 (not (= lambda!279733 lambda!279699))))

(assert (=> bs!1246991 (= (= lt!2195430 (regOne!30774 r!7292)) (= lambda!279733 lambda!279730))))

(assert (=> bs!1246993 (= lambda!279733 lambda!279696)))

(assert (=> d!1723165 true))

(assert (=> d!1723165 true))

(assert (=> d!1723165 true))

(declare-fun lambda!279734 () Int)

(assert (=> bs!1246989 (not (= lambda!279734 lambda!279693))))

(assert (=> bs!1246990 (not (= lambda!279734 lambda!279732))))

(declare-fun bs!1246995 () Bool)

(assert (= bs!1246995 d!1723165))

(assert (=> bs!1246995 (not (= lambda!279734 lambda!279733))))

(assert (=> bs!1246991 (= (= lt!2195430 (regOne!30774 r!7292)) (= lambda!279734 lambda!279731))))

(assert (=> bs!1246992 (= (and (= s!2326 (_1!35633 lt!2195436)) (= lt!2195430 (reg!15460 (regOne!30774 r!7292))) (= (regTwo!30774 r!7292) lt!2195430)) (= lambda!279734 lambda!279700))))

(assert (=> bs!1246989 (= (= lt!2195430 (regOne!30774 r!7292)) (= lambda!279734 lambda!279694))))

(assert (=> bs!1246993 (= lambda!279734 lambda!279697)))

(assert (=> bs!1246994 (not (= lambda!279734 lambda!279721))))

(assert (=> bs!1246992 (not (= lambda!279734 lambda!279698))))

(assert (=> bs!1246992 (not (= lambda!279734 lambda!279699))))

(assert (=> bs!1246991 (not (= lambda!279734 lambda!279730))))

(assert (=> bs!1246993 (not (= lambda!279734 lambda!279696))))

(assert (=> d!1723165 true))

(assert (=> d!1723165 true))

(assert (=> d!1723165 true))

(assert (=> d!1723165 (= (Exists!2312 lambda!279733) (Exists!2312 lambda!279734))))

(declare-fun lt!2195554 () Unit!154042)

(assert (=> d!1723165 (= lt!2195554 (choose!40531 lt!2195430 (regTwo!30774 r!7292) s!2326))))

(assert (=> d!1723165 (validRegex!6867 lt!2195430)))

(assert (=> d!1723165 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!966 lt!2195430 (regTwo!30774 r!7292) s!2326) lt!2195554)))

(declare-fun m!6415066 () Bool)

(assert (=> bs!1246995 m!6415066))

(declare-fun m!6415068 () Bool)

(assert (=> bs!1246995 m!6415068))

(declare-fun m!6415070 () Bool)

(assert (=> bs!1246995 m!6415070))

(assert (=> bs!1246995 m!6414800))

(assert (=> b!5388639 d!1723165))

(declare-fun b!5389139 () Bool)

(declare-fun res!2289698 () Bool)

(declare-fun e!3342320 () Bool)

(assert (=> b!5389139 (=> (not res!2289698) (not e!3342320))))

(declare-fun lt!2195556 () Option!15242)

(assert (=> b!5389139 (= res!2289698 (matchR!7316 lt!2195430 (_1!35633 (get!21205 lt!2195556))))))

(declare-fun b!5389140 () Bool)

(assert (=> b!5389140 (= e!3342320 (= (++!13447 (_1!35633 (get!21205 lt!2195556)) (_2!35633 (get!21205 lt!2195556))) s!2326))))

(declare-fun b!5389141 () Bool)

(declare-fun res!2289701 () Bool)

(assert (=> b!5389141 (=> (not res!2289701) (not e!3342320))))

(assert (=> b!5389141 (= res!2289701 (matchR!7316 (regTwo!30774 r!7292) (_2!35633 (get!21205 lt!2195556))))))

(declare-fun d!1723169 () Bool)

(declare-fun e!3342321 () Bool)

(assert (=> d!1723169 e!3342321))

(declare-fun res!2289700 () Bool)

(assert (=> d!1723169 (=> res!2289700 e!3342321)))

(assert (=> d!1723169 (= res!2289700 e!3342320)))

(declare-fun res!2289697 () Bool)

(assert (=> d!1723169 (=> (not res!2289697) (not e!3342320))))

(assert (=> d!1723169 (= res!2289697 (isDefined!11945 lt!2195556))))

(declare-fun e!3342318 () Option!15242)

(assert (=> d!1723169 (= lt!2195556 e!3342318)))

(declare-fun c!939121 () Bool)

(declare-fun e!3342319 () Bool)

(assert (=> d!1723169 (= c!939121 e!3342319)))

(declare-fun res!2289699 () Bool)

(assert (=> d!1723169 (=> (not res!2289699) (not e!3342319))))

(assert (=> d!1723169 (= res!2289699 (matchR!7316 lt!2195430 Nil!61568))))

(assert (=> d!1723169 (validRegex!6867 lt!2195430)))

(assert (=> d!1723169 (= (findConcatSeparation!1656 lt!2195430 (regTwo!30774 r!7292) Nil!61568 s!2326 s!2326) lt!2195556)))

(declare-fun b!5389142 () Bool)

(declare-fun e!3342317 () Option!15242)

(assert (=> b!5389142 (= e!3342318 e!3342317)))

(declare-fun c!939122 () Bool)

(assert (=> b!5389142 (= c!939122 ((_ is Nil!61568) s!2326))))

(declare-fun b!5389143 () Bool)

(assert (=> b!5389143 (= e!3342318 (Some!15241 (tuple2!64661 Nil!61568 s!2326)))))

(declare-fun b!5389144 () Bool)

(assert (=> b!5389144 (= e!3342317 None!15241)))

(declare-fun b!5389145 () Bool)

(declare-fun lt!2195555 () Unit!154042)

(declare-fun lt!2195557 () Unit!154042)

(assert (=> b!5389145 (= lt!2195555 lt!2195557)))

(assert (=> b!5389145 (= (++!13447 (++!13447 Nil!61568 (Cons!61568 (h!68016 s!2326) Nil!61568)) (t!374915 s!2326)) s!2326)))

(assert (=> b!5389145 (= lt!2195557 (lemmaMoveElementToOtherListKeepsConcatEq!1815 Nil!61568 (h!68016 s!2326) (t!374915 s!2326) s!2326))))

(assert (=> b!5389145 (= e!3342317 (findConcatSeparation!1656 lt!2195430 (regTwo!30774 r!7292) (++!13447 Nil!61568 (Cons!61568 (h!68016 s!2326) Nil!61568)) (t!374915 s!2326) s!2326))))

(declare-fun b!5389146 () Bool)

(assert (=> b!5389146 (= e!3342321 (not (isDefined!11945 lt!2195556)))))

(declare-fun b!5389147 () Bool)

(assert (=> b!5389147 (= e!3342319 (matchR!7316 (regTwo!30774 r!7292) s!2326))))

(assert (= (and d!1723169 res!2289699) b!5389147))

(assert (= (and d!1723169 c!939121) b!5389143))

(assert (= (and d!1723169 (not c!939121)) b!5389142))

(assert (= (and b!5389142 c!939122) b!5389144))

(assert (= (and b!5389142 (not c!939122)) b!5389145))

(assert (= (and d!1723169 res!2289697) b!5389139))

(assert (= (and b!5389139 res!2289698) b!5389141))

(assert (= (and b!5389141 res!2289701) b!5389140))

(assert (= (and d!1723169 (not res!2289700)) b!5389146))

(assert (=> b!5389145 m!6414868))

(assert (=> b!5389145 m!6414868))

(assert (=> b!5389145 m!6414870))

(assert (=> b!5389145 m!6414872))

(assert (=> b!5389145 m!6414868))

(declare-fun m!6415080 () Bool)

(assert (=> b!5389145 m!6415080))

(declare-fun m!6415082 () Bool)

(assert (=> b!5389139 m!6415082))

(declare-fun m!6415084 () Bool)

(assert (=> b!5389139 m!6415084))

(assert (=> b!5389140 m!6415082))

(declare-fun m!6415086 () Bool)

(assert (=> b!5389140 m!6415086))

(declare-fun m!6415088 () Bool)

(assert (=> d!1723169 m!6415088))

(declare-fun m!6415090 () Bool)

(assert (=> d!1723169 m!6415090))

(assert (=> d!1723169 m!6414800))

(assert (=> b!5389141 m!6415082))

(declare-fun m!6415096 () Bool)

(assert (=> b!5389141 m!6415096))

(assert (=> b!5389147 m!6414890))

(assert (=> b!5389146 m!6415088))

(assert (=> b!5388639 d!1723169))

(declare-fun b!5389158 () Bool)

(declare-fun res!2289704 () Bool)

(declare-fun e!3342333 () Bool)

(assert (=> b!5389158 (=> res!2289704 e!3342333)))

(declare-fun e!3342329 () Bool)

(assert (=> b!5389158 (= res!2289704 e!3342329)))

(declare-fun res!2289710 () Bool)

(assert (=> b!5389158 (=> (not res!2289710) (not e!3342329))))

(declare-fun lt!2195558 () Bool)

(assert (=> b!5389158 (= res!2289710 lt!2195558)))

(declare-fun d!1723177 () Bool)

(declare-fun e!3342330 () Bool)

(assert (=> d!1723177 e!3342330))

(declare-fun c!939128 () Bool)

(assert (=> d!1723177 (= c!939128 ((_ is EmptyExpr!15131) (regTwo!30774 r!7292)))))

(declare-fun e!3342332 () Bool)

(assert (=> d!1723177 (= lt!2195558 e!3342332)))

(declare-fun c!939127 () Bool)

(assert (=> d!1723177 (= c!939127 (isEmpty!33566 (_2!35633 lt!2195436)))))

(assert (=> d!1723177 (validRegex!6867 (regTwo!30774 r!7292))))

(assert (=> d!1723177 (= (matchR!7316 (regTwo!30774 r!7292) (_2!35633 lt!2195436)) lt!2195558)))

(declare-fun bm!385756 () Bool)

(declare-fun call!385761 () Bool)

(assert (=> bm!385756 (= call!385761 (isEmpty!33566 (_2!35633 lt!2195436)))))

(declare-fun b!5389159 () Bool)

(declare-fun e!3342331 () Bool)

(assert (=> b!5389159 (= e!3342330 e!3342331)))

(declare-fun c!939129 () Bool)

(assert (=> b!5389159 (= c!939129 ((_ is EmptyLang!15131) (regTwo!30774 r!7292)))))

(declare-fun b!5389160 () Bool)

(declare-fun e!3342328 () Bool)

(assert (=> b!5389160 (= e!3342333 e!3342328)))

(declare-fun res!2289709 () Bool)

(assert (=> b!5389160 (=> (not res!2289709) (not e!3342328))))

(assert (=> b!5389160 (= res!2289709 (not lt!2195558))))

(declare-fun b!5389161 () Bool)

(assert (=> b!5389161 (= e!3342332 (nullable!5300 (regTwo!30774 r!7292)))))

(declare-fun b!5389162 () Bool)

(declare-fun res!2289706 () Bool)

(assert (=> b!5389162 (=> res!2289706 e!3342333)))

(assert (=> b!5389162 (= res!2289706 (not ((_ is ElementMatch!15131) (regTwo!30774 r!7292))))))

(assert (=> b!5389162 (= e!3342331 e!3342333)))

(declare-fun b!5389163 () Bool)

(declare-fun res!2289708 () Bool)

(assert (=> b!5389163 (=> (not res!2289708) (not e!3342329))))

(assert (=> b!5389163 (= res!2289708 (not call!385761))))

(declare-fun b!5389164 () Bool)

(assert (=> b!5389164 (= e!3342332 (matchR!7316 (derivativeStep!4241 (regTwo!30774 r!7292) (head!11559 (_2!35633 lt!2195436))) (tail!10656 (_2!35633 lt!2195436))))))

(declare-fun b!5389165 () Bool)

(declare-fun e!3342334 () Bool)

(assert (=> b!5389165 (= e!3342334 (not (= (head!11559 (_2!35633 lt!2195436)) (c!938981 (regTwo!30774 r!7292)))))))

(declare-fun b!5389166 () Bool)

(assert (=> b!5389166 (= e!3342331 (not lt!2195558))))

(declare-fun b!5389167 () Bool)

(assert (=> b!5389167 (= e!3342330 (= lt!2195558 call!385761))))

(declare-fun b!5389168 () Bool)

(assert (=> b!5389168 (= e!3342329 (= (head!11559 (_2!35633 lt!2195436)) (c!938981 (regTwo!30774 r!7292))))))

(declare-fun b!5389169 () Bool)

(declare-fun res!2289705 () Bool)

(assert (=> b!5389169 (=> res!2289705 e!3342334)))

(assert (=> b!5389169 (= res!2289705 (not (isEmpty!33566 (tail!10656 (_2!35633 lt!2195436)))))))

(declare-fun b!5389170 () Bool)

(assert (=> b!5389170 (= e!3342328 e!3342334)))

(declare-fun res!2289711 () Bool)

(assert (=> b!5389170 (=> res!2289711 e!3342334)))

(assert (=> b!5389170 (= res!2289711 call!385761)))

(declare-fun b!5389171 () Bool)

(declare-fun res!2289707 () Bool)

(assert (=> b!5389171 (=> (not res!2289707) (not e!3342329))))

(assert (=> b!5389171 (= res!2289707 (isEmpty!33566 (tail!10656 (_2!35633 lt!2195436))))))

(assert (= (and d!1723177 c!939127) b!5389161))

(assert (= (and d!1723177 (not c!939127)) b!5389164))

(assert (= (and d!1723177 c!939128) b!5389167))

(assert (= (and d!1723177 (not c!939128)) b!5389159))

(assert (= (and b!5389159 c!939129) b!5389166))

(assert (= (and b!5389159 (not c!939129)) b!5389162))

(assert (= (and b!5389162 (not res!2289706)) b!5389158))

(assert (= (and b!5389158 res!2289710) b!5389163))

(assert (= (and b!5389163 res!2289708) b!5389171))

(assert (= (and b!5389171 res!2289707) b!5389168))

(assert (= (and b!5389158 (not res!2289704)) b!5389160))

(assert (= (and b!5389160 res!2289709) b!5389170))

(assert (= (and b!5389170 (not res!2289711)) b!5389169))

(assert (= (and b!5389169 (not res!2289705)) b!5389165))

(assert (= (or b!5389167 b!5389163 b!5389170) bm!385756))

(declare-fun m!6415100 () Bool)

(assert (=> b!5389165 m!6415100))

(declare-fun m!6415102 () Bool)

(assert (=> bm!385756 m!6415102))

(assert (=> b!5389168 m!6415100))

(declare-fun m!6415104 () Bool)

(assert (=> b!5389171 m!6415104))

(assert (=> b!5389171 m!6415104))

(declare-fun m!6415106 () Bool)

(assert (=> b!5389171 m!6415106))

(assert (=> b!5389164 m!6415100))

(assert (=> b!5389164 m!6415100))

(declare-fun m!6415108 () Bool)

(assert (=> b!5389164 m!6415108))

(assert (=> b!5389164 m!6415104))

(assert (=> b!5389164 m!6415108))

(assert (=> b!5389164 m!6415104))

(declare-fun m!6415110 () Bool)

(assert (=> b!5389164 m!6415110))

(assert (=> b!5389169 m!6415104))

(assert (=> b!5389169 m!6415104))

(assert (=> b!5389169 m!6415106))

(assert (=> d!1723177 m!6415102))

(declare-fun m!6415112 () Bool)

(assert (=> d!1723177 m!6415112))

(declare-fun m!6415114 () Bool)

(assert (=> b!5389161 m!6415114))

(assert (=> b!5388679 d!1723177))

(declare-fun bs!1247002 () Bool)

(declare-fun b!5389245 () Bool)

(assert (= bs!1247002 (and b!5389245 b!5388665)))

(declare-fun lambda!279746 () Int)

(assert (=> bs!1247002 (not (= lambda!279746 lambda!279693))))

(declare-fun bs!1247003 () Bool)

(assert (= bs!1247003 (and b!5389245 d!1723151)))

(assert (=> bs!1247003 (not (= lambda!279746 lambda!279732))))

(declare-fun bs!1247004 () Bool)

(assert (= bs!1247004 (and b!5389245 d!1723165)))

(assert (=> bs!1247004 (not (= lambda!279746 lambda!279733))))

(declare-fun bs!1247005 () Bool)

(assert (= bs!1247005 (and b!5389245 d!1723111)))

(assert (=> bs!1247005 (not (= lambda!279746 lambda!279731))))

(declare-fun bs!1247006 () Bool)

(assert (= bs!1247006 (and b!5389245 b!5388654)))

(assert (=> bs!1247006 (not (= lambda!279746 lambda!279700))))

(assert (=> bs!1247002 (not (= lambda!279746 lambda!279694))))

(declare-fun bs!1247007 () Bool)

(assert (= bs!1247007 (and b!5389245 b!5388639)))

(assert (=> bs!1247007 (not (= lambda!279746 lambda!279697))))

(declare-fun bs!1247008 () Bool)

(assert (= bs!1247008 (and b!5389245 d!1723107)))

(assert (=> bs!1247008 (not (= lambda!279746 lambda!279721))))

(assert (=> bs!1247006 (not (= lambda!279746 lambda!279698))))

(assert (=> bs!1247006 (= (and (= s!2326 (_1!35633 lt!2195436)) (= (reg!15460 r!7292) (reg!15460 (regOne!30774 r!7292))) (= r!7292 lt!2195430)) (= lambda!279746 lambda!279699))))

(assert (=> bs!1247007 (not (= lambda!279746 lambda!279696))))

(assert (=> bs!1247005 (not (= lambda!279746 lambda!279730))))

(assert (=> bs!1247004 (not (= lambda!279746 lambda!279734))))

(assert (=> b!5389245 true))

(assert (=> b!5389245 true))

(declare-fun bs!1247009 () Bool)

(declare-fun b!5389244 () Bool)

(assert (= bs!1247009 (and b!5389244 b!5388665)))

(declare-fun lambda!279747 () Int)

(assert (=> bs!1247009 (not (= lambda!279747 lambda!279693))))

(declare-fun bs!1247010 () Bool)

(assert (= bs!1247010 (and b!5389244 b!5389245)))

(assert (=> bs!1247010 (not (= lambda!279747 lambda!279746))))

(declare-fun bs!1247011 () Bool)

(assert (= bs!1247011 (and b!5389244 d!1723151)))

(assert (=> bs!1247011 (not (= lambda!279747 lambda!279732))))

(declare-fun bs!1247012 () Bool)

(assert (= bs!1247012 (and b!5389244 d!1723165)))

(assert (=> bs!1247012 (not (= lambda!279747 lambda!279733))))

(declare-fun bs!1247013 () Bool)

(assert (= bs!1247013 (and b!5389244 d!1723111)))

(assert (=> bs!1247013 (= lambda!279747 lambda!279731)))

(declare-fun bs!1247014 () Bool)

(assert (= bs!1247014 (and b!5389244 b!5388654)))

(assert (=> bs!1247014 (= (and (= s!2326 (_1!35633 lt!2195436)) (= (regOne!30774 r!7292) (reg!15460 (regOne!30774 r!7292))) (= (regTwo!30774 r!7292) lt!2195430)) (= lambda!279747 lambda!279700))))

(assert (=> bs!1247009 (= lambda!279747 lambda!279694)))

(declare-fun bs!1247015 () Bool)

(assert (= bs!1247015 (and b!5389244 b!5388639)))

(assert (=> bs!1247015 (= (= (regOne!30774 r!7292) lt!2195430) (= lambda!279747 lambda!279697))))

(declare-fun bs!1247016 () Bool)

(assert (= bs!1247016 (and b!5389244 d!1723107)))

(assert (=> bs!1247016 (not (= lambda!279747 lambda!279721))))

(assert (=> bs!1247014 (not (= lambda!279747 lambda!279698))))

(assert (=> bs!1247014 (not (= lambda!279747 lambda!279699))))

(assert (=> bs!1247015 (not (= lambda!279747 lambda!279696))))

(assert (=> bs!1247013 (not (= lambda!279747 lambda!279730))))

(assert (=> bs!1247012 (= (= (regOne!30774 r!7292) lt!2195430) (= lambda!279747 lambda!279734))))

(assert (=> b!5389244 true))

(assert (=> b!5389244 true))

(declare-fun b!5389236 () Bool)

(declare-fun e!3342374 () Bool)

(declare-fun e!3342372 () Bool)

(assert (=> b!5389236 (= e!3342374 e!3342372)))

(declare-fun res!2289744 () Bool)

(assert (=> b!5389236 (= res!2289744 (matchRSpec!2234 (regOne!30775 r!7292) s!2326))))

(assert (=> b!5389236 (=> res!2289744 e!3342372)))

(declare-fun b!5389238 () Bool)

(declare-fun c!939149 () Bool)

(assert (=> b!5389238 (= c!939149 ((_ is ElementMatch!15131) r!7292))))

(declare-fun e!3342375 () Bool)

(declare-fun e!3342371 () Bool)

(assert (=> b!5389238 (= e!3342375 e!3342371)))

(declare-fun b!5389239 () Bool)

(declare-fun res!2289746 () Bool)

(declare-fun e!3342373 () Bool)

(assert (=> b!5389239 (=> res!2289746 e!3342373)))

(declare-fun call!385768 () Bool)

(assert (=> b!5389239 (= res!2289746 call!385768)))

(declare-fun e!3342376 () Bool)

(assert (=> b!5389239 (= e!3342376 e!3342373)))

(declare-fun c!939148 () Bool)

(declare-fun bm!385763 () Bool)

(declare-fun call!385769 () Bool)

(assert (=> bm!385763 (= call!385769 (Exists!2312 (ite c!939148 lambda!279746 lambda!279747)))))

(declare-fun b!5389240 () Bool)

(assert (=> b!5389240 (= e!3342371 (= s!2326 (Cons!61568 (c!938981 r!7292) Nil!61568)))))

(declare-fun bm!385764 () Bool)

(assert (=> bm!385764 (= call!385768 (isEmpty!33566 s!2326))))

(declare-fun b!5389241 () Bool)

(assert (=> b!5389241 (= e!3342374 e!3342376)))

(assert (=> b!5389241 (= c!939148 ((_ is Star!15131) r!7292))))

(declare-fun b!5389242 () Bool)

(declare-fun e!3342377 () Bool)

(assert (=> b!5389242 (= e!3342377 e!3342375)))

(declare-fun res!2289745 () Bool)

(assert (=> b!5389242 (= res!2289745 (not ((_ is EmptyLang!15131) r!7292)))))

(assert (=> b!5389242 (=> (not res!2289745) (not e!3342375))))

(declare-fun d!1723179 () Bool)

(declare-fun c!939147 () Bool)

(assert (=> d!1723179 (= c!939147 ((_ is EmptyExpr!15131) r!7292))))

(assert (=> d!1723179 (= (matchRSpec!2234 r!7292 s!2326) e!3342377)))

(declare-fun b!5389237 () Bool)

(assert (=> b!5389237 (= e!3342377 call!385768)))

(declare-fun b!5389243 () Bool)

(assert (=> b!5389243 (= e!3342372 (matchRSpec!2234 (regTwo!30775 r!7292) s!2326))))

(assert (=> b!5389244 (= e!3342376 call!385769)))

(assert (=> b!5389245 (= e!3342373 call!385769)))

(declare-fun b!5389246 () Bool)

(declare-fun c!939146 () Bool)

(assert (=> b!5389246 (= c!939146 ((_ is Union!15131) r!7292))))

(assert (=> b!5389246 (= e!3342371 e!3342374)))

(assert (= (and d!1723179 c!939147) b!5389237))

(assert (= (and d!1723179 (not c!939147)) b!5389242))

(assert (= (and b!5389242 res!2289745) b!5389238))

(assert (= (and b!5389238 c!939149) b!5389240))

(assert (= (and b!5389238 (not c!939149)) b!5389246))

(assert (= (and b!5389246 c!939146) b!5389236))

(assert (= (and b!5389246 (not c!939146)) b!5389241))

(assert (= (and b!5389236 (not res!2289744)) b!5389243))

(assert (= (and b!5389241 c!939148) b!5389239))

(assert (= (and b!5389241 (not c!939148)) b!5389244))

(assert (= (and b!5389239 (not res!2289746)) b!5389245))

(assert (= (or b!5389245 b!5389244) bm!385763))

(assert (= (or b!5389237 b!5389239) bm!385764))

(declare-fun m!6415126 () Bool)

(assert (=> b!5389236 m!6415126))

(declare-fun m!6415128 () Bool)

(assert (=> bm!385763 m!6415128))

(assert (=> bm!385764 m!6414970))

(declare-fun m!6415130 () Bool)

(assert (=> b!5389243 m!6415130))

(assert (=> b!5388658 d!1723179))

(declare-fun b!5389258 () Bool)

(declare-fun res!2289750 () Bool)

(declare-fun e!3342390 () Bool)

(assert (=> b!5389258 (=> res!2289750 e!3342390)))

(declare-fun e!3342386 () Bool)

(assert (=> b!5389258 (= res!2289750 e!3342386)))

(declare-fun res!2289756 () Bool)

(assert (=> b!5389258 (=> (not res!2289756) (not e!3342386))))

(declare-fun lt!2195563 () Bool)

(assert (=> b!5389258 (= res!2289756 lt!2195563)))

(declare-fun d!1723187 () Bool)

(declare-fun e!3342387 () Bool)

(assert (=> d!1723187 e!3342387))

(declare-fun c!939155 () Bool)

(assert (=> d!1723187 (= c!939155 ((_ is EmptyExpr!15131) r!7292))))

(declare-fun e!3342389 () Bool)

(assert (=> d!1723187 (= lt!2195563 e!3342389)))

(declare-fun c!939154 () Bool)

(assert (=> d!1723187 (= c!939154 (isEmpty!33566 s!2326))))

(assert (=> d!1723187 (validRegex!6867 r!7292)))

(assert (=> d!1723187 (= (matchR!7316 r!7292 s!2326) lt!2195563)))

(declare-fun bm!385769 () Bool)

(declare-fun call!385774 () Bool)

(assert (=> bm!385769 (= call!385774 (isEmpty!33566 s!2326))))

(declare-fun b!5389259 () Bool)

(declare-fun e!3342388 () Bool)

(assert (=> b!5389259 (= e!3342387 e!3342388)))

(declare-fun c!939156 () Bool)

(assert (=> b!5389259 (= c!939156 ((_ is EmptyLang!15131) r!7292))))

(declare-fun b!5389260 () Bool)

(declare-fun e!3342385 () Bool)

(assert (=> b!5389260 (= e!3342390 e!3342385)))

(declare-fun res!2289755 () Bool)

(assert (=> b!5389260 (=> (not res!2289755) (not e!3342385))))

(assert (=> b!5389260 (= res!2289755 (not lt!2195563))))

(declare-fun b!5389261 () Bool)

(assert (=> b!5389261 (= e!3342389 (nullable!5300 r!7292))))

(declare-fun b!5389262 () Bool)

(declare-fun res!2289752 () Bool)

(assert (=> b!5389262 (=> res!2289752 e!3342390)))

(assert (=> b!5389262 (= res!2289752 (not ((_ is ElementMatch!15131) r!7292)))))

(assert (=> b!5389262 (= e!3342388 e!3342390)))

(declare-fun b!5389263 () Bool)

(declare-fun res!2289754 () Bool)

(assert (=> b!5389263 (=> (not res!2289754) (not e!3342386))))

(assert (=> b!5389263 (= res!2289754 (not call!385774))))

(declare-fun b!5389264 () Bool)

(assert (=> b!5389264 (= e!3342389 (matchR!7316 (derivativeStep!4241 r!7292 (head!11559 s!2326)) (tail!10656 s!2326)))))

(declare-fun b!5389265 () Bool)

(declare-fun e!3342391 () Bool)

(assert (=> b!5389265 (= e!3342391 (not (= (head!11559 s!2326) (c!938981 r!7292))))))

(declare-fun b!5389266 () Bool)

(assert (=> b!5389266 (= e!3342388 (not lt!2195563))))

(declare-fun b!5389267 () Bool)

(assert (=> b!5389267 (= e!3342387 (= lt!2195563 call!385774))))

(declare-fun b!5389268 () Bool)

(assert (=> b!5389268 (= e!3342386 (= (head!11559 s!2326) (c!938981 r!7292)))))

(declare-fun b!5389269 () Bool)

(declare-fun res!2289751 () Bool)

(assert (=> b!5389269 (=> res!2289751 e!3342391)))

(assert (=> b!5389269 (= res!2289751 (not (isEmpty!33566 (tail!10656 s!2326))))))

(declare-fun b!5389270 () Bool)

(assert (=> b!5389270 (= e!3342385 e!3342391)))

(declare-fun res!2289757 () Bool)

(assert (=> b!5389270 (=> res!2289757 e!3342391)))

(assert (=> b!5389270 (= res!2289757 call!385774)))

(declare-fun b!5389271 () Bool)

(declare-fun res!2289753 () Bool)

(assert (=> b!5389271 (=> (not res!2289753) (not e!3342386))))

(assert (=> b!5389271 (= res!2289753 (isEmpty!33566 (tail!10656 s!2326)))))

(assert (= (and d!1723187 c!939154) b!5389261))

(assert (= (and d!1723187 (not c!939154)) b!5389264))

(assert (= (and d!1723187 c!939155) b!5389267))

(assert (= (and d!1723187 (not c!939155)) b!5389259))

(assert (= (and b!5389259 c!939156) b!5389266))

(assert (= (and b!5389259 (not c!939156)) b!5389262))

(assert (= (and b!5389262 (not res!2289752)) b!5389258))

(assert (= (and b!5389258 res!2289756) b!5389263))

(assert (= (and b!5389263 res!2289754) b!5389271))

(assert (= (and b!5389271 res!2289753) b!5389268))

(assert (= (and b!5389258 (not res!2289750)) b!5389260))

(assert (= (and b!5389260 res!2289755) b!5389270))

(assert (= (and b!5389270 (not res!2289757)) b!5389269))

(assert (= (and b!5389269 (not res!2289751)) b!5389265))

(assert (= (or b!5389267 b!5389263 b!5389270) bm!385769))

(assert (=> b!5389265 m!6414974))

(assert (=> bm!385769 m!6414970))

(assert (=> b!5389268 m!6414974))

(assert (=> b!5389271 m!6414978))

(assert (=> b!5389271 m!6414978))

(declare-fun m!6415132 () Bool)

(assert (=> b!5389271 m!6415132))

(assert (=> b!5389264 m!6414974))

(assert (=> b!5389264 m!6414974))

(declare-fun m!6415134 () Bool)

(assert (=> b!5389264 m!6415134))

(assert (=> b!5389264 m!6414978))

(assert (=> b!5389264 m!6415134))

(assert (=> b!5389264 m!6414978))

(declare-fun m!6415136 () Bool)

(assert (=> b!5389264 m!6415136))

(assert (=> b!5389269 m!6414978))

(assert (=> b!5389269 m!6414978))

(assert (=> b!5389269 m!6415132))

(assert (=> d!1723187 m!6414970))

(assert (=> d!1723187 m!6414558))

(declare-fun m!6415138 () Bool)

(assert (=> b!5389261 m!6415138))

(assert (=> b!5388658 d!1723187))

(declare-fun d!1723189 () Bool)

(assert (=> d!1723189 (= (matchR!7316 r!7292 s!2326) (matchRSpec!2234 r!7292 s!2326))))

(declare-fun lt!2195567 () Unit!154042)

(declare-fun choose!40535 (Regex!15131 List!61692) Unit!154042)

(assert (=> d!1723189 (= lt!2195567 (choose!40535 r!7292 s!2326))))

(assert (=> d!1723189 (validRegex!6867 r!7292)))

(assert (=> d!1723189 (= (mainMatchTheorem!2234 r!7292 s!2326) lt!2195567)))

(declare-fun bs!1247028 () Bool)

(assert (= bs!1247028 d!1723189))

(assert (=> bs!1247028 m!6414614))

(assert (=> bs!1247028 m!6414612))

(declare-fun m!6415154 () Bool)

(assert (=> bs!1247028 m!6415154))

(assert (=> bs!1247028 m!6414558))

(assert (=> b!5388658 d!1723189))

(declare-fun d!1723195 () Bool)

(declare-fun c!939160 () Bool)

(assert (=> d!1723195 (= c!939160 (isEmpty!33566 (t!374915 s!2326)))))

(declare-fun e!3342399 () Bool)

(assert (=> d!1723195 (= (matchZipper!1375 lt!2195418 (t!374915 s!2326)) e!3342399)))

(declare-fun b!5389286 () Bool)

(assert (=> b!5389286 (= e!3342399 (nullableZipper!1420 lt!2195418))))

(declare-fun b!5389287 () Bool)

(assert (=> b!5389287 (= e!3342399 (matchZipper!1375 (derivationStepZipper!1370 lt!2195418 (head!11559 (t!374915 s!2326))) (tail!10656 (t!374915 s!2326))))))

(assert (= (and d!1723195 c!939160) b!5389286))

(assert (= (and d!1723195 (not c!939160)) b!5389287))

(assert (=> d!1723195 m!6414982))

(declare-fun m!6415156 () Bool)

(assert (=> b!5389286 m!6415156))

(assert (=> b!5389287 m!6414986))

(assert (=> b!5389287 m!6414986))

(declare-fun m!6415158 () Bool)

(assert (=> b!5389287 m!6415158))

(assert (=> b!5389287 m!6414990))

(assert (=> b!5389287 m!6415158))

(assert (=> b!5389287 m!6414990))

(declare-fun m!6415160 () Bool)

(assert (=> b!5389287 m!6415160))

(assert (=> b!5388642 d!1723195))

(declare-fun d!1723197 () Bool)

(declare-fun e!3342400 () Bool)

(assert (=> d!1723197 e!3342400))

(declare-fun res!2289766 () Bool)

(assert (=> d!1723197 (=> (not res!2289766) (not e!3342400))))

(declare-fun lt!2195568 () List!61692)

(assert (=> d!1723197 (= res!2289766 (= (content!11019 lt!2195568) ((_ map or) (content!11019 (_1!35633 lt!2195428)) (content!11019 lt!2195460))))))

(declare-fun e!3342401 () List!61692)

(assert (=> d!1723197 (= lt!2195568 e!3342401)))

(declare-fun c!939161 () Bool)

(assert (=> d!1723197 (= c!939161 ((_ is Nil!61568) (_1!35633 lt!2195428)))))

(assert (=> d!1723197 (= (++!13447 (_1!35633 lt!2195428) lt!2195460) lt!2195568)))

(declare-fun b!5389290 () Bool)

(declare-fun res!2289767 () Bool)

(assert (=> b!5389290 (=> (not res!2289767) (not e!3342400))))

(assert (=> b!5389290 (= res!2289767 (= (size!39815 lt!2195568) (+ (size!39815 (_1!35633 lt!2195428)) (size!39815 lt!2195460))))))

(declare-fun b!5389288 () Bool)

(assert (=> b!5389288 (= e!3342401 lt!2195460)))

(declare-fun b!5389291 () Bool)

(assert (=> b!5389291 (= e!3342400 (or (not (= lt!2195460 Nil!61568)) (= lt!2195568 (_1!35633 lt!2195428))))))

(declare-fun b!5389289 () Bool)

(assert (=> b!5389289 (= e!3342401 (Cons!61568 (h!68016 (_1!35633 lt!2195428)) (++!13447 (t!374915 (_1!35633 lt!2195428)) lt!2195460)))))

(assert (= (and d!1723197 c!939161) b!5389288))

(assert (= (and d!1723197 (not c!939161)) b!5389289))

(assert (= (and d!1723197 res!2289766) b!5389290))

(assert (= (and b!5389290 res!2289767) b!5389291))

(declare-fun m!6415162 () Bool)

(assert (=> d!1723197 m!6415162))

(declare-fun m!6415164 () Bool)

(assert (=> d!1723197 m!6415164))

(declare-fun m!6415166 () Bool)

(assert (=> d!1723197 m!6415166))

(declare-fun m!6415168 () Bool)

(assert (=> b!5389290 m!6415168))

(declare-fun m!6415170 () Bool)

(assert (=> b!5389290 m!6415170))

(declare-fun m!6415172 () Bool)

(assert (=> b!5389290 m!6415172))

(declare-fun m!6415174 () Bool)

(assert (=> b!5389289 m!6415174))

(assert (=> b!5388662 d!1723197))

(declare-fun d!1723199 () Bool)

(declare-fun e!3342402 () Bool)

(assert (=> d!1723199 e!3342402))

(declare-fun res!2289768 () Bool)

(assert (=> d!1723199 (=> (not res!2289768) (not e!3342402))))

(declare-fun lt!2195569 () List!61692)

(assert (=> d!1723199 (= res!2289768 (= (content!11019 lt!2195569) ((_ map or) (content!11019 lt!2195426) (content!11019 (_2!35633 lt!2195436)))))))

(declare-fun e!3342403 () List!61692)

(assert (=> d!1723199 (= lt!2195569 e!3342403)))

(declare-fun c!939162 () Bool)

(assert (=> d!1723199 (= c!939162 ((_ is Nil!61568) lt!2195426))))

(assert (=> d!1723199 (= (++!13447 lt!2195426 (_2!35633 lt!2195436)) lt!2195569)))

(declare-fun b!5389294 () Bool)

(declare-fun res!2289769 () Bool)

(assert (=> b!5389294 (=> (not res!2289769) (not e!3342402))))

(assert (=> b!5389294 (= res!2289769 (= (size!39815 lt!2195569) (+ (size!39815 lt!2195426) (size!39815 (_2!35633 lt!2195436)))))))

(declare-fun b!5389292 () Bool)

(assert (=> b!5389292 (= e!3342403 (_2!35633 lt!2195436))))

(declare-fun b!5389295 () Bool)

(assert (=> b!5389295 (= e!3342402 (or (not (= (_2!35633 lt!2195436) Nil!61568)) (= lt!2195569 lt!2195426)))))

(declare-fun b!5389293 () Bool)

(assert (=> b!5389293 (= e!3342403 (Cons!61568 (h!68016 lt!2195426) (++!13447 (t!374915 lt!2195426) (_2!35633 lt!2195436))))))

(assert (= (and d!1723199 c!939162) b!5389292))

(assert (= (and d!1723199 (not c!939162)) b!5389293))

(assert (= (and d!1723199 res!2289768) b!5389294))

(assert (= (and b!5389294 res!2289769) b!5389295))

(declare-fun m!6415176 () Bool)

(assert (=> d!1723199 m!6415176))

(declare-fun m!6415178 () Bool)

(assert (=> d!1723199 m!6415178))

(assert (=> d!1723199 m!6415046))

(declare-fun m!6415180 () Bool)

(assert (=> b!5389294 m!6415180))

(declare-fun m!6415182 () Bool)

(assert (=> b!5389294 m!6415182))

(assert (=> b!5389294 m!6415052))

(declare-fun m!6415184 () Bool)

(assert (=> b!5389293 m!6415184))

(assert (=> b!5388662 d!1723199))

(declare-fun d!1723201 () Bool)

(declare-fun e!3342404 () Bool)

(assert (=> d!1723201 e!3342404))

(declare-fun res!2289770 () Bool)

(assert (=> d!1723201 (=> (not res!2289770) (not e!3342404))))

(declare-fun lt!2195570 () List!61692)

(assert (=> d!1723201 (= res!2289770 (= (content!11019 lt!2195570) ((_ map or) (content!11019 (_2!35633 lt!2195428)) (content!11019 (_2!35633 lt!2195436)))))))

(declare-fun e!3342405 () List!61692)

(assert (=> d!1723201 (= lt!2195570 e!3342405)))

(declare-fun c!939163 () Bool)

(assert (=> d!1723201 (= c!939163 ((_ is Nil!61568) (_2!35633 lt!2195428)))))

(assert (=> d!1723201 (= (++!13447 (_2!35633 lt!2195428) (_2!35633 lt!2195436)) lt!2195570)))

(declare-fun b!5389298 () Bool)

(declare-fun res!2289771 () Bool)

(assert (=> b!5389298 (=> (not res!2289771) (not e!3342404))))

(assert (=> b!5389298 (= res!2289771 (= (size!39815 lt!2195570) (+ (size!39815 (_2!35633 lt!2195428)) (size!39815 (_2!35633 lt!2195436)))))))

(declare-fun b!5389296 () Bool)

(assert (=> b!5389296 (= e!3342405 (_2!35633 lt!2195436))))

(declare-fun b!5389299 () Bool)

(assert (=> b!5389299 (= e!3342404 (or (not (= (_2!35633 lt!2195436) Nil!61568)) (= lt!2195570 (_2!35633 lt!2195428))))))

(declare-fun b!5389297 () Bool)

(assert (=> b!5389297 (= e!3342405 (Cons!61568 (h!68016 (_2!35633 lt!2195428)) (++!13447 (t!374915 (_2!35633 lt!2195428)) (_2!35633 lt!2195436))))))

(assert (= (and d!1723201 c!939163) b!5389296))

(assert (= (and d!1723201 (not c!939163)) b!5389297))

(assert (= (and d!1723201 res!2289770) b!5389298))

(assert (= (and b!5389298 res!2289771) b!5389299))

(declare-fun m!6415186 () Bool)

(assert (=> d!1723201 m!6415186))

(declare-fun m!6415188 () Bool)

(assert (=> d!1723201 m!6415188))

(assert (=> d!1723201 m!6415046))

(declare-fun m!6415190 () Bool)

(assert (=> b!5389298 m!6415190))

(declare-fun m!6415192 () Bool)

(assert (=> b!5389298 m!6415192))

(assert (=> b!5389298 m!6415052))

(declare-fun m!6415194 () Bool)

(assert (=> b!5389297 m!6415194))

(assert (=> b!5388662 d!1723201))

(declare-fun d!1723203 () Bool)

(assert (=> d!1723203 (= (++!13447 (++!13447 (_1!35633 lt!2195428) (_2!35633 lt!2195428)) (_2!35633 lt!2195436)) (++!13447 (_1!35633 lt!2195428) (++!13447 (_2!35633 lt!2195428) (_2!35633 lt!2195436))))))

(declare-fun lt!2195576 () Unit!154042)

(declare-fun choose!40537 (List!61692 List!61692 List!61692) Unit!154042)

(assert (=> d!1723203 (= lt!2195576 (choose!40537 (_1!35633 lt!2195428) (_2!35633 lt!2195428) (_2!35633 lt!2195436)))))

(assert (=> d!1723203 (= (lemmaConcatAssociativity!2828 (_1!35633 lt!2195428) (_2!35633 lt!2195428) (_2!35633 lt!2195436)) lt!2195576)))

(declare-fun bs!1247034 () Bool)

(assert (= bs!1247034 d!1723203))

(assert (=> bs!1247034 m!6414518))

(declare-fun m!6415198 () Bool)

(assert (=> bs!1247034 m!6415198))

(assert (=> bs!1247034 m!6414498))

(declare-fun m!6415200 () Bool)

(assert (=> bs!1247034 m!6415200))

(assert (=> bs!1247034 m!6414518))

(assert (=> bs!1247034 m!6414498))

(declare-fun m!6415202 () Bool)

(assert (=> bs!1247034 m!6415202))

(assert (=> b!5388662 d!1723203))

(declare-fun bs!1247041 () Bool)

(declare-fun d!1723207 () Bool)

(assert (= bs!1247041 (and d!1723207 b!5388660)))

(declare-fun lambda!279754 () Int)

(assert (=> bs!1247041 (= lambda!279754 lambda!279701)))

(declare-fun bs!1247042 () Bool)

(assert (= bs!1247042 (and d!1723207 d!1723061)))

(assert (=> bs!1247042 (= lambda!279754 lambda!279704)))

(declare-fun bs!1247044 () Bool)

(assert (= bs!1247044 (and d!1723207 d!1723069)))

(assert (=> bs!1247044 (= lambda!279754 lambda!279707)))

(assert (=> d!1723207 (= (inv!81074 (h!68018 zl!343)) (forall!14512 (exprs!5015 (h!68018 zl!343)) lambda!279754))))

(declare-fun bs!1247045 () Bool)

(assert (= bs!1247045 d!1723207))

(declare-fun m!6415204 () Bool)

(assert (=> bs!1247045 m!6415204))

(assert (=> b!5388661 d!1723207))

(declare-fun d!1723209 () Bool)

(assert (=> d!1723209 (= (isEmpty!33566 (_1!35633 lt!2195436)) ((_ is Nil!61568) (_1!35633 lt!2195436)))))

(assert (=> b!5388640 d!1723209))

(declare-fun d!1723211 () Bool)

(declare-fun c!939168 () Bool)

(assert (=> d!1723211 (= c!939168 (isEmpty!33566 (_1!35633 lt!2195428)))))

(declare-fun e!3342413 () Bool)

(assert (=> d!1723211 (= (matchZipper!1375 lt!2195456 (_1!35633 lt!2195428)) e!3342413)))

(declare-fun b!5389311 () Bool)

(assert (=> b!5389311 (= e!3342413 (nullableZipper!1420 lt!2195456))))

(declare-fun b!5389312 () Bool)

(assert (=> b!5389312 (= e!3342413 (matchZipper!1375 (derivationStepZipper!1370 lt!2195456 (head!11559 (_1!35633 lt!2195428))) (tail!10656 (_1!35633 lt!2195428))))))

(assert (= (and d!1723211 c!939168) b!5389311))

(assert (= (and d!1723211 (not c!939168)) b!5389312))

(assert (=> d!1723211 m!6414820))

(declare-fun m!6415206 () Bool)

(assert (=> b!5389311 m!6415206))

(assert (=> b!5389312 m!6414818))

(assert (=> b!5389312 m!6414818))

(declare-fun m!6415208 () Bool)

(assert (=> b!5389312 m!6415208))

(assert (=> b!5389312 m!6414822))

(assert (=> b!5389312 m!6415208))

(assert (=> b!5389312 m!6414822))

(declare-fun m!6415210 () Bool)

(assert (=> b!5389312 m!6415210))

(assert (=> b!5388660 d!1723211))

(declare-fun bs!1247063 () Bool)

(declare-fun d!1723213 () Bool)

(assert (= bs!1247063 (and d!1723213 b!5388660)))

(declare-fun lambda!279759 () Int)

(assert (=> bs!1247063 (= lambda!279759 lambda!279701)))

(declare-fun bs!1247065 () Bool)

(assert (= bs!1247065 (and d!1723213 d!1723061)))

(assert (=> bs!1247065 (= lambda!279759 lambda!279704)))

(declare-fun bs!1247066 () Bool)

(assert (= bs!1247066 (and d!1723213 d!1723069)))

(assert (=> bs!1247066 (= lambda!279759 lambda!279707)))

(declare-fun bs!1247067 () Bool)

(assert (= bs!1247067 (and d!1723213 d!1723207)))

(assert (=> bs!1247067 (= lambda!279759 lambda!279754)))

(assert (=> d!1723213 (matchZipper!1375 (store ((as const (Array Context!9030 Bool)) false) (Context!9031 (++!13448 (exprs!5015 lt!2195472) (exprs!5015 lt!2195463))) true) (++!13447 (_1!35633 lt!2195428) lt!2195460))))

(declare-fun lt!2195589 () Unit!154042)

(assert (=> d!1723213 (= lt!2195589 (lemmaConcatPreservesForall!162 (exprs!5015 lt!2195472) (exprs!5015 lt!2195463) lambda!279759))))

(declare-fun lt!2195588 () Unit!154042)

(declare-fun choose!40538 (Context!9030 Context!9030 List!61692 List!61692) Unit!154042)

(assert (=> d!1723213 (= lt!2195588 (choose!40538 lt!2195472 lt!2195463 (_1!35633 lt!2195428) lt!2195460))))

(assert (=> d!1723213 (matchZipper!1375 (store ((as const (Array Context!9030 Bool)) false) lt!2195472 true) (_1!35633 lt!2195428))))

(assert (=> d!1723213 (= (lemmaConcatenateContextMatchesConcatOfStrings!18 lt!2195472 lt!2195463 (_1!35633 lt!2195428) lt!2195460) lt!2195588)))

(declare-fun bs!1247071 () Bool)

(assert (= bs!1247071 d!1723213))

(declare-fun m!6415264 () Bool)

(assert (=> bs!1247071 m!6415264))

(assert (=> bs!1247071 m!6414528))

(declare-fun m!6415266 () Bool)

(assert (=> bs!1247071 m!6415266))

(assert (=> bs!1247071 m!6414514))

(assert (=> bs!1247071 m!6414528))

(declare-fun m!6415268 () Bool)

(assert (=> bs!1247071 m!6415268))

(assert (=> bs!1247071 m!6414514))

(declare-fun m!6415270 () Bool)

(assert (=> bs!1247071 m!6415270))

(declare-fun m!6415272 () Bool)

(assert (=> bs!1247071 m!6415272))

(declare-fun m!6415274 () Bool)

(assert (=> bs!1247071 m!6415274))

(assert (=> bs!1247071 m!6415268))

(assert (=> b!5388660 d!1723213))

(declare-fun d!1723237 () Bool)

(assert (=> d!1723237 (= (matchR!7316 lt!2195459 lt!2195460) (matchZipper!1375 lt!2195438 lt!2195460))))

(declare-fun lt!2195593 () Unit!154042)

(declare-fun choose!40539 ((InoxSet Context!9030) List!61694 Regex!15131 List!61692) Unit!154042)

(assert (=> d!1723237 (= lt!2195593 (choose!40539 lt!2195438 lt!2195446 lt!2195459 lt!2195460))))

(assert (=> d!1723237 (validRegex!6867 lt!2195459)))

(assert (=> d!1723237 (= (theoremZipperRegexEquiv!461 lt!2195438 lt!2195446 lt!2195459 lt!2195460) lt!2195593)))

(declare-fun bs!1247084 () Bool)

(assert (= bs!1247084 d!1723237))

(assert (=> bs!1247084 m!6414594))

(assert (=> bs!1247084 m!6414592))

(declare-fun m!6415288 () Bool)

(assert (=> bs!1247084 m!6415288))

(declare-fun m!6415290 () Bool)

(assert (=> bs!1247084 m!6415290))

(assert (=> b!5388660 d!1723237))

(declare-fun b!5389342 () Bool)

(declare-fun e!3342433 () Bool)

(declare-fun call!385779 () Bool)

(assert (=> b!5389342 (= e!3342433 call!385779)))

(declare-fun b!5389343 () Bool)

(declare-fun e!3342429 () Bool)

(assert (=> b!5389343 (= e!3342429 e!3342433)))

(declare-fun res!2289790 () Bool)

(assert (=> b!5389343 (= res!2289790 (not (nullable!5300 (reg!15460 lt!2195449))))))

(assert (=> b!5389343 (=> (not res!2289790) (not e!3342433))))

(declare-fun b!5389344 () Bool)

(declare-fun res!2289792 () Bool)

(declare-fun e!3342434 () Bool)

(assert (=> b!5389344 (=> res!2289792 e!3342434)))

(assert (=> b!5389344 (= res!2289792 (not ((_ is Concat!23976) lt!2195449)))))

(declare-fun e!3342435 () Bool)

(assert (=> b!5389344 (= e!3342435 e!3342434)))

(declare-fun b!5389345 () Bool)

(declare-fun e!3342431 () Bool)

(assert (=> b!5389345 (= e!3342434 e!3342431)))

(declare-fun res!2289791 () Bool)

(assert (=> b!5389345 (=> (not res!2289791) (not e!3342431))))

(declare-fun call!385781 () Bool)

(assert (=> b!5389345 (= res!2289791 call!385781)))

(declare-fun b!5389346 () Bool)

(declare-fun e!3342432 () Bool)

(assert (=> b!5389346 (= e!3342432 e!3342429)))

(declare-fun c!939176 () Bool)

(assert (=> b!5389346 (= c!939176 ((_ is Star!15131) lt!2195449))))

(declare-fun bm!385774 () Bool)

(assert (=> bm!385774 (= call!385781 call!385779)))

(declare-fun d!1723243 () Bool)

(declare-fun res!2289794 () Bool)

(assert (=> d!1723243 (=> res!2289794 e!3342432)))

(assert (=> d!1723243 (= res!2289794 ((_ is ElementMatch!15131) lt!2195449))))

(assert (=> d!1723243 (= (validRegex!6867 lt!2195449) e!3342432)))

(declare-fun b!5389347 () Bool)

(declare-fun e!3342430 () Bool)

(declare-fun call!385780 () Bool)

(assert (=> b!5389347 (= e!3342430 call!385780)))

(declare-fun b!5389348 () Bool)

(assert (=> b!5389348 (= e!3342429 e!3342435)))

(declare-fun c!939177 () Bool)

(assert (=> b!5389348 (= c!939177 ((_ is Union!15131) lt!2195449))))

(declare-fun bm!385775 () Bool)

(assert (=> bm!385775 (= call!385780 (validRegex!6867 (ite c!939177 (regTwo!30775 lt!2195449) (regTwo!30774 lt!2195449))))))

(declare-fun b!5389349 () Bool)

(declare-fun res!2289793 () Bool)

(assert (=> b!5389349 (=> (not res!2289793) (not e!3342430))))

(assert (=> b!5389349 (= res!2289793 call!385781)))

(assert (=> b!5389349 (= e!3342435 e!3342430)))

(declare-fun b!5389350 () Bool)

(assert (=> b!5389350 (= e!3342431 call!385780)))

(declare-fun bm!385776 () Bool)

(assert (=> bm!385776 (= call!385779 (validRegex!6867 (ite c!939176 (reg!15460 lt!2195449) (ite c!939177 (regOne!30775 lt!2195449) (regOne!30774 lt!2195449)))))))

(assert (= (and d!1723243 (not res!2289794)) b!5389346))

(assert (= (and b!5389346 c!939176) b!5389343))

(assert (= (and b!5389346 (not c!939176)) b!5389348))

(assert (= (and b!5389343 res!2289790) b!5389342))

(assert (= (and b!5389348 c!939177) b!5389349))

(assert (= (and b!5389348 (not c!939177)) b!5389344))

(assert (= (and b!5389349 res!2289793) b!5389347))

(assert (= (and b!5389344 (not res!2289792)) b!5389345))

(assert (= (and b!5389345 res!2289791) b!5389350))

(assert (= (or b!5389347 b!5389350) bm!385775))

(assert (= (or b!5389349 b!5389345) bm!385774))

(assert (= (or b!5389342 bm!385774) bm!385776))

(declare-fun m!6415292 () Bool)

(assert (=> b!5389343 m!6415292))

(declare-fun m!6415294 () Bool)

(assert (=> bm!385775 m!6415294))

(declare-fun m!6415296 () Bool)

(assert (=> bm!385776 m!6415296))

(assert (=> b!5388660 d!1723243))

(declare-fun d!1723245 () Bool)

(assert (=> d!1723245 (forall!14512 (++!13448 lt!2195432 lt!2195450) lambda!279701)))

(declare-fun lt!2195596 () Unit!154042)

(declare-fun choose!40540 (List!61693 List!61693 Int) Unit!154042)

(assert (=> d!1723245 (= lt!2195596 (choose!40540 lt!2195432 lt!2195450 lambda!279701))))

(assert (=> d!1723245 (forall!14512 lt!2195432 lambda!279701)))

(assert (=> d!1723245 (= (lemmaConcatPreservesForall!162 lt!2195432 lt!2195450 lambda!279701) lt!2195596)))

(declare-fun bs!1247085 () Bool)

(assert (= bs!1247085 d!1723245))

(assert (=> bs!1247085 m!6414604))

(assert (=> bs!1247085 m!6414604))

(declare-fun m!6415298 () Bool)

(assert (=> bs!1247085 m!6415298))

(declare-fun m!6415300 () Bool)

(assert (=> bs!1247085 m!6415300))

(declare-fun m!6415302 () Bool)

(assert (=> bs!1247085 m!6415302))

(assert (=> b!5388660 d!1723245))

(declare-fun b!5389353 () Bool)

(declare-fun res!2289797 () Bool)

(declare-fun e!3342443 () Bool)

(assert (=> b!5389353 (=> res!2289797 e!3342443)))

(declare-fun e!3342439 () Bool)

(assert (=> b!5389353 (= res!2289797 e!3342439)))

(declare-fun res!2289803 () Bool)

(assert (=> b!5389353 (=> (not res!2289803) (not e!3342439))))

(declare-fun lt!2195599 () Bool)

(assert (=> b!5389353 (= res!2289803 lt!2195599)))

(declare-fun d!1723247 () Bool)

(declare-fun e!3342440 () Bool)

(assert (=> d!1723247 e!3342440))

(declare-fun c!939179 () Bool)

(assert (=> d!1723247 (= c!939179 ((_ is EmptyExpr!15131) lt!2195430))))

(declare-fun e!3342442 () Bool)

(assert (=> d!1723247 (= lt!2195599 e!3342442)))

(declare-fun c!939178 () Bool)

(assert (=> d!1723247 (= c!939178 (isEmpty!33566 lt!2195426))))

(assert (=> d!1723247 (validRegex!6867 lt!2195430)))

(assert (=> d!1723247 (= (matchR!7316 lt!2195430 lt!2195426) lt!2195599)))

(declare-fun bm!385777 () Bool)

(declare-fun call!385782 () Bool)

(assert (=> bm!385777 (= call!385782 (isEmpty!33566 lt!2195426))))

(declare-fun b!5389354 () Bool)

(declare-fun e!3342441 () Bool)

(assert (=> b!5389354 (= e!3342440 e!3342441)))

(declare-fun c!939180 () Bool)

(assert (=> b!5389354 (= c!939180 ((_ is EmptyLang!15131) lt!2195430))))

(declare-fun b!5389355 () Bool)

(declare-fun e!3342438 () Bool)

(assert (=> b!5389355 (= e!3342443 e!3342438)))

(declare-fun res!2289802 () Bool)

(assert (=> b!5389355 (=> (not res!2289802) (not e!3342438))))

(assert (=> b!5389355 (= res!2289802 (not lt!2195599))))

(declare-fun b!5389356 () Bool)

(assert (=> b!5389356 (= e!3342442 (nullable!5300 lt!2195430))))

(declare-fun b!5389357 () Bool)

(declare-fun res!2289799 () Bool)

(assert (=> b!5389357 (=> res!2289799 e!3342443)))

(assert (=> b!5389357 (= res!2289799 (not ((_ is ElementMatch!15131) lt!2195430)))))

(assert (=> b!5389357 (= e!3342441 e!3342443)))

(declare-fun b!5389358 () Bool)

(declare-fun res!2289801 () Bool)

(assert (=> b!5389358 (=> (not res!2289801) (not e!3342439))))

(assert (=> b!5389358 (= res!2289801 (not call!385782))))

(declare-fun b!5389359 () Bool)

(assert (=> b!5389359 (= e!3342442 (matchR!7316 (derivativeStep!4241 lt!2195430 (head!11559 lt!2195426)) (tail!10656 lt!2195426)))))

(declare-fun b!5389360 () Bool)

(declare-fun e!3342444 () Bool)

(assert (=> b!5389360 (= e!3342444 (not (= (head!11559 lt!2195426) (c!938981 lt!2195430))))))

(declare-fun b!5389361 () Bool)

(assert (=> b!5389361 (= e!3342441 (not lt!2195599))))

(declare-fun b!5389362 () Bool)

(assert (=> b!5389362 (= e!3342440 (= lt!2195599 call!385782))))

(declare-fun b!5389363 () Bool)

(assert (=> b!5389363 (= e!3342439 (= (head!11559 lt!2195426) (c!938981 lt!2195430)))))

(declare-fun b!5389364 () Bool)

(declare-fun res!2289798 () Bool)

(assert (=> b!5389364 (=> res!2289798 e!3342444)))

(assert (=> b!5389364 (= res!2289798 (not (isEmpty!33566 (tail!10656 lt!2195426))))))

(declare-fun b!5389365 () Bool)

(assert (=> b!5389365 (= e!3342438 e!3342444)))

(declare-fun res!2289804 () Bool)

(assert (=> b!5389365 (=> res!2289804 e!3342444)))

(assert (=> b!5389365 (= res!2289804 call!385782)))

(declare-fun b!5389366 () Bool)

(declare-fun res!2289800 () Bool)

(assert (=> b!5389366 (=> (not res!2289800) (not e!3342439))))

(assert (=> b!5389366 (= res!2289800 (isEmpty!33566 (tail!10656 lt!2195426)))))

(assert (= (and d!1723247 c!939178) b!5389356))

(assert (= (and d!1723247 (not c!939178)) b!5389359))

(assert (= (and d!1723247 c!939179) b!5389362))

(assert (= (and d!1723247 (not c!939179)) b!5389354))

(assert (= (and b!5389354 c!939180) b!5389361))

(assert (= (and b!5389354 (not c!939180)) b!5389357))

(assert (= (and b!5389357 (not res!2289799)) b!5389353))

(assert (= (and b!5389353 res!2289803) b!5389358))

(assert (= (and b!5389358 res!2289801) b!5389366))

(assert (= (and b!5389366 res!2289800) b!5389363))

(assert (= (and b!5389353 (not res!2289797)) b!5389355))

(assert (= (and b!5389355 res!2289802) b!5389365))

(assert (= (and b!5389365 (not res!2289804)) b!5389364))

(assert (= (and b!5389364 (not res!2289798)) b!5389360))

(assert (= (or b!5389362 b!5389358 b!5389365) bm!385777))

(declare-fun m!6415304 () Bool)

(assert (=> b!5389360 m!6415304))

(declare-fun m!6415306 () Bool)

(assert (=> bm!385777 m!6415306))

(assert (=> b!5389363 m!6415304))

(declare-fun m!6415308 () Bool)

(assert (=> b!5389366 m!6415308))

(assert (=> b!5389366 m!6415308))

(declare-fun m!6415310 () Bool)

(assert (=> b!5389366 m!6415310))

(assert (=> b!5389359 m!6415304))

(assert (=> b!5389359 m!6415304))

(declare-fun m!6415312 () Bool)

(assert (=> b!5389359 m!6415312))

(assert (=> b!5389359 m!6415308))

(assert (=> b!5389359 m!6415312))

(assert (=> b!5389359 m!6415308))

(declare-fun m!6415316 () Bool)

(assert (=> b!5389359 m!6415316))

(assert (=> b!5389364 m!6415308))

(assert (=> b!5389364 m!6415308))

(assert (=> b!5389364 m!6415310))

(assert (=> d!1723247 m!6415306))

(assert (=> d!1723247 m!6414800))

(assert (=> b!5389356 m!6414802))

(assert (=> b!5388660 d!1723247))

(declare-fun d!1723251 () Bool)

(assert (=> d!1723251 (= (matchR!7316 (reg!15460 (regOne!30774 r!7292)) (_1!35633 lt!2195428)) (matchZipper!1375 lt!2195456 (_1!35633 lt!2195428)))))

(declare-fun lt!2195601 () Unit!154042)

(assert (=> d!1723251 (= lt!2195601 (choose!40539 lt!2195456 lt!2195467 (reg!15460 (regOne!30774 r!7292)) (_1!35633 lt!2195428)))))

(assert (=> d!1723251 (validRegex!6867 (reg!15460 (regOne!30774 r!7292)))))

(assert (=> d!1723251 (= (theoremZipperRegexEquiv!461 lt!2195456 lt!2195467 (reg!15460 (regOne!30774 r!7292)) (_1!35633 lt!2195428)) lt!2195601)))

(declare-fun bs!1247086 () Bool)

(assert (= bs!1247086 d!1723251))

(assert (=> bs!1247086 m!6414460))

(assert (=> bs!1247086 m!6414596))

(declare-fun m!6415324 () Bool)

(assert (=> bs!1247086 m!6415324))

(assert (=> bs!1247086 m!6414830))

(assert (=> b!5388660 d!1723251))

(declare-fun d!1723255 () Bool)

(declare-fun c!939183 () Bool)

(assert (=> d!1723255 (= c!939183 (isEmpty!33566 lt!2195442))))

(declare-fun e!3342448 () Bool)

(assert (=> d!1723255 (= (matchZipper!1375 (store ((as const (Array Context!9030 Bool)) false) (Context!9031 (++!13448 lt!2195432 lt!2195450)) true) lt!2195442) e!3342448)))

(declare-fun b!5389372 () Bool)

(assert (=> b!5389372 (= e!3342448 (nullableZipper!1420 (store ((as const (Array Context!9030 Bool)) false) (Context!9031 (++!13448 lt!2195432 lt!2195450)) true)))))

(declare-fun b!5389373 () Bool)

(assert (=> b!5389373 (= e!3342448 (matchZipper!1375 (derivationStepZipper!1370 (store ((as const (Array Context!9030 Bool)) false) (Context!9031 (++!13448 lt!2195432 lt!2195450)) true) (head!11559 lt!2195442)) (tail!10656 lt!2195442)))))

(assert (= (and d!1723255 c!939183) b!5389372))

(assert (= (and d!1723255 (not c!939183)) b!5389373))

(declare-fun m!6415332 () Bool)

(assert (=> d!1723255 m!6415332))

(assert (=> b!5389372 m!6414584))

(declare-fun m!6415334 () Bool)

(assert (=> b!5389372 m!6415334))

(declare-fun m!6415336 () Bool)

(assert (=> b!5389373 m!6415336))

(assert (=> b!5389373 m!6414584))

(assert (=> b!5389373 m!6415336))

(declare-fun m!6415338 () Bool)

(assert (=> b!5389373 m!6415338))

(declare-fun m!6415340 () Bool)

(assert (=> b!5389373 m!6415340))

(assert (=> b!5389373 m!6415338))

(assert (=> b!5389373 m!6415340))

(declare-fun m!6415342 () Bool)

(assert (=> b!5389373 m!6415342))

(assert (=> b!5388660 d!1723255))

(declare-fun d!1723259 () Bool)

(assert (=> d!1723259 (matchR!7316 (Concat!23976 lt!2195430 (regTwo!30774 r!7292)) (++!13447 (_2!35633 lt!2195428) (_2!35633 lt!2195436)))))

(declare-fun lt!2195605 () Unit!154042)

(declare-fun choose!40541 (Regex!15131 Regex!15131 List!61692 List!61692) Unit!154042)

(assert (=> d!1723259 (= lt!2195605 (choose!40541 lt!2195430 (regTwo!30774 r!7292) (_2!35633 lt!2195428) (_2!35633 lt!2195436)))))

(declare-fun e!3342472 () Bool)

(assert (=> d!1723259 e!3342472))

(declare-fun res!2289826 () Bool)

(assert (=> d!1723259 (=> (not res!2289826) (not e!3342472))))

(assert (=> d!1723259 (= res!2289826 (validRegex!6867 lt!2195430))))

(assert (=> d!1723259 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!178 lt!2195430 (regTwo!30774 r!7292) (_2!35633 lt!2195428) (_2!35633 lt!2195436)) lt!2195605)))

(declare-fun b!5389408 () Bool)

(assert (=> b!5389408 (= e!3342472 (validRegex!6867 (regTwo!30774 r!7292)))))

(assert (= (and d!1723259 res!2289826) b!5389408))

(assert (=> d!1723259 m!6414518))

(assert (=> d!1723259 m!6414518))

(declare-fun m!6415360 () Bool)

(assert (=> d!1723259 m!6415360))

(declare-fun m!6415362 () Bool)

(assert (=> d!1723259 m!6415362))

(assert (=> d!1723259 m!6414800))

(assert (=> b!5389408 m!6415112))

(assert (=> b!5388660 d!1723259))

(declare-fun b!5389409 () Bool)

(declare-fun res!2289827 () Bool)

(declare-fun e!3342478 () Bool)

(assert (=> b!5389409 (=> res!2289827 e!3342478)))

(declare-fun e!3342474 () Bool)

(assert (=> b!5389409 (= res!2289827 e!3342474)))

(declare-fun res!2289833 () Bool)

(assert (=> b!5389409 (=> (not res!2289833) (not e!3342474))))

(declare-fun lt!2195606 () Bool)

(assert (=> b!5389409 (= res!2289833 lt!2195606)))

(declare-fun d!1723265 () Bool)

(declare-fun e!3342475 () Bool)

(assert (=> d!1723265 e!3342475))

(declare-fun c!939192 () Bool)

(assert (=> d!1723265 (= c!939192 ((_ is EmptyExpr!15131) lt!2195459))))

(declare-fun e!3342477 () Bool)

(assert (=> d!1723265 (= lt!2195606 e!3342477)))

(declare-fun c!939191 () Bool)

(assert (=> d!1723265 (= c!939191 (isEmpty!33566 lt!2195460))))

(assert (=> d!1723265 (validRegex!6867 lt!2195459)))

(assert (=> d!1723265 (= (matchR!7316 lt!2195459 lt!2195460) lt!2195606)))

(declare-fun bm!385783 () Bool)

(declare-fun call!385788 () Bool)

(assert (=> bm!385783 (= call!385788 (isEmpty!33566 lt!2195460))))

(declare-fun b!5389410 () Bool)

(declare-fun e!3342476 () Bool)

(assert (=> b!5389410 (= e!3342475 e!3342476)))

(declare-fun c!939193 () Bool)

(assert (=> b!5389410 (= c!939193 ((_ is EmptyLang!15131) lt!2195459))))

(declare-fun b!5389411 () Bool)

(declare-fun e!3342473 () Bool)

(assert (=> b!5389411 (= e!3342478 e!3342473)))

(declare-fun res!2289832 () Bool)

(assert (=> b!5389411 (=> (not res!2289832) (not e!3342473))))

(assert (=> b!5389411 (= res!2289832 (not lt!2195606))))

(declare-fun b!5389412 () Bool)

(assert (=> b!5389412 (= e!3342477 (nullable!5300 lt!2195459))))

(declare-fun b!5389413 () Bool)

(declare-fun res!2289829 () Bool)

(assert (=> b!5389413 (=> res!2289829 e!3342478)))

(assert (=> b!5389413 (= res!2289829 (not ((_ is ElementMatch!15131) lt!2195459)))))

(assert (=> b!5389413 (= e!3342476 e!3342478)))

(declare-fun b!5389414 () Bool)

(declare-fun res!2289831 () Bool)

(assert (=> b!5389414 (=> (not res!2289831) (not e!3342474))))

(assert (=> b!5389414 (= res!2289831 (not call!385788))))

(declare-fun b!5389415 () Bool)

(assert (=> b!5389415 (= e!3342477 (matchR!7316 (derivativeStep!4241 lt!2195459 (head!11559 lt!2195460)) (tail!10656 lt!2195460)))))

(declare-fun b!5389416 () Bool)

(declare-fun e!3342479 () Bool)

(assert (=> b!5389416 (= e!3342479 (not (= (head!11559 lt!2195460) (c!938981 lt!2195459))))))

(declare-fun b!5389417 () Bool)

(assert (=> b!5389417 (= e!3342476 (not lt!2195606))))

(declare-fun b!5389418 () Bool)

(assert (=> b!5389418 (= e!3342475 (= lt!2195606 call!385788))))

(declare-fun b!5389419 () Bool)

(assert (=> b!5389419 (= e!3342474 (= (head!11559 lt!2195460) (c!938981 lt!2195459)))))

(declare-fun b!5389420 () Bool)

(declare-fun res!2289828 () Bool)

(assert (=> b!5389420 (=> res!2289828 e!3342479)))

(assert (=> b!5389420 (= res!2289828 (not (isEmpty!33566 (tail!10656 lt!2195460))))))

(declare-fun b!5389421 () Bool)

(assert (=> b!5389421 (= e!3342473 e!3342479)))

(declare-fun res!2289834 () Bool)

(assert (=> b!5389421 (=> res!2289834 e!3342479)))

(assert (=> b!5389421 (= res!2289834 call!385788)))

(declare-fun b!5389422 () Bool)

(declare-fun res!2289830 () Bool)

(assert (=> b!5389422 (=> (not res!2289830) (not e!3342474))))

(assert (=> b!5389422 (= res!2289830 (isEmpty!33566 (tail!10656 lt!2195460)))))

(assert (= (and d!1723265 c!939191) b!5389412))

(assert (= (and d!1723265 (not c!939191)) b!5389415))

(assert (= (and d!1723265 c!939192) b!5389418))

(assert (= (and d!1723265 (not c!939192)) b!5389410))

(assert (= (and b!5389410 c!939193) b!5389417))

(assert (= (and b!5389410 (not c!939193)) b!5389413))

(assert (= (and b!5389413 (not res!2289829)) b!5389409))

(assert (= (and b!5389409 res!2289833) b!5389414))

(assert (= (and b!5389414 res!2289831) b!5389422))

(assert (= (and b!5389422 res!2289830) b!5389419))

(assert (= (and b!5389409 (not res!2289827)) b!5389411))

(assert (= (and b!5389411 res!2289832) b!5389421))

(assert (= (and b!5389421 (not res!2289834)) b!5389420))

(assert (= (and b!5389420 (not res!2289828)) b!5389416))

(assert (= (or b!5389418 b!5389414 b!5389421) bm!385783))

(declare-fun m!6415364 () Bool)

(assert (=> b!5389416 m!6415364))

(declare-fun m!6415366 () Bool)

(assert (=> bm!385783 m!6415366))

(assert (=> b!5389419 m!6415364))

(declare-fun m!6415368 () Bool)

(assert (=> b!5389422 m!6415368))

(assert (=> b!5389422 m!6415368))

(declare-fun m!6415370 () Bool)

(assert (=> b!5389422 m!6415370))

(assert (=> b!5389415 m!6415364))

(assert (=> b!5389415 m!6415364))

(declare-fun m!6415372 () Bool)

(assert (=> b!5389415 m!6415372))

(assert (=> b!5389415 m!6415368))

(assert (=> b!5389415 m!6415372))

(assert (=> b!5389415 m!6415368))

(declare-fun m!6415374 () Bool)

(assert (=> b!5389415 m!6415374))

(assert (=> b!5389420 m!6415368))

(assert (=> b!5389420 m!6415368))

(assert (=> b!5389420 m!6415370))

(assert (=> d!1723265 m!6415366))

(assert (=> d!1723265 m!6415290))

(declare-fun m!6415376 () Bool)

(assert (=> b!5389412 m!6415376))

(assert (=> b!5388660 d!1723265))

(declare-fun d!1723267 () Bool)

(declare-fun c!939194 () Bool)

(assert (=> d!1723267 (= c!939194 (isEmpty!33566 lt!2195460))))

(declare-fun e!3342480 () Bool)

(assert (=> d!1723267 (= (matchZipper!1375 lt!2195438 lt!2195460) e!3342480)))

(declare-fun b!5389423 () Bool)

(assert (=> b!5389423 (= e!3342480 (nullableZipper!1420 lt!2195438))))

(declare-fun b!5389424 () Bool)

(assert (=> b!5389424 (= e!3342480 (matchZipper!1375 (derivationStepZipper!1370 lt!2195438 (head!11559 lt!2195460)) (tail!10656 lt!2195460)))))

(assert (= (and d!1723267 c!939194) b!5389423))

(assert (= (and d!1723267 (not c!939194)) b!5389424))

(assert (=> d!1723267 m!6415366))

(declare-fun m!6415378 () Bool)

(assert (=> b!5389423 m!6415378))

(assert (=> b!5389424 m!6415364))

(assert (=> b!5389424 m!6415364))

(declare-fun m!6415380 () Bool)

(assert (=> b!5389424 m!6415380))

(assert (=> b!5389424 m!6415368))

(assert (=> b!5389424 m!6415380))

(assert (=> b!5389424 m!6415368))

(declare-fun m!6415382 () Bool)

(assert (=> b!5389424 m!6415382))

(assert (=> b!5388660 d!1723267))

(declare-fun d!1723269 () Bool)

(assert (=> d!1723269 (matchR!7316 (Star!15131 (reg!15460 (regOne!30774 r!7292))) (++!13447 (_1!35633 lt!2195428) (_2!35633 lt!2195428)))))

(declare-fun lt!2195610 () Unit!154042)

(declare-fun choose!40542 (Regex!15131 List!61692 List!61692) Unit!154042)

(assert (=> d!1723269 (= lt!2195610 (choose!40542 (reg!15460 (regOne!30774 r!7292)) (_1!35633 lt!2195428) (_2!35633 lt!2195428)))))

(assert (=> d!1723269 (validRegex!6867 (Star!15131 (reg!15460 (regOne!30774 r!7292))))))

(assert (=> d!1723269 (= (lemmaStarApp!52 (reg!15460 (regOne!30774 r!7292)) (_1!35633 lt!2195428) (_2!35633 lt!2195428)) lt!2195610)))

(declare-fun bs!1247089 () Bool)

(assert (= bs!1247089 d!1723269))

(assert (=> bs!1247089 m!6414498))

(assert (=> bs!1247089 m!6414498))

(declare-fun m!6415398 () Bool)

(assert (=> bs!1247089 m!6415398))

(declare-fun m!6415400 () Bool)

(assert (=> bs!1247089 m!6415400))

(declare-fun m!6415402 () Bool)

(assert (=> bs!1247089 m!6415402))

(assert (=> b!5388660 d!1723269))

(declare-fun b!5389445 () Bool)

(declare-fun res!2289841 () Bool)

(declare-fun e!3342499 () Bool)

(assert (=> b!5389445 (=> res!2289841 e!3342499)))

(declare-fun e!3342495 () Bool)

(assert (=> b!5389445 (= res!2289841 e!3342495)))

(declare-fun res!2289847 () Bool)

(assert (=> b!5389445 (=> (not res!2289847) (not e!3342495))))

(declare-fun lt!2195611 () Bool)

(assert (=> b!5389445 (= res!2289847 lt!2195611)))

(declare-fun d!1723277 () Bool)

(declare-fun e!3342496 () Bool)

(assert (=> d!1723277 e!3342496))

(declare-fun c!939203 () Bool)

(assert (=> d!1723277 (= c!939203 ((_ is EmptyExpr!15131) lt!2195449))))

(declare-fun e!3342498 () Bool)

(assert (=> d!1723277 (= lt!2195611 e!3342498)))

(declare-fun c!939202 () Bool)

(assert (=> d!1723277 (= c!939202 (isEmpty!33566 lt!2195442))))

(assert (=> d!1723277 (validRegex!6867 lt!2195449)))

(assert (=> d!1723277 (= (matchR!7316 lt!2195449 lt!2195442) lt!2195611)))

(declare-fun bm!385795 () Bool)

(declare-fun call!385800 () Bool)

(assert (=> bm!385795 (= call!385800 (isEmpty!33566 lt!2195442))))

(declare-fun b!5389446 () Bool)

(declare-fun e!3342497 () Bool)

(assert (=> b!5389446 (= e!3342496 e!3342497)))

(declare-fun c!939204 () Bool)

(assert (=> b!5389446 (= c!939204 ((_ is EmptyLang!15131) lt!2195449))))

(declare-fun b!5389447 () Bool)

(declare-fun e!3342494 () Bool)

(assert (=> b!5389447 (= e!3342499 e!3342494)))

(declare-fun res!2289846 () Bool)

(assert (=> b!5389447 (=> (not res!2289846) (not e!3342494))))

(assert (=> b!5389447 (= res!2289846 (not lt!2195611))))

(declare-fun b!5389448 () Bool)

(assert (=> b!5389448 (= e!3342498 (nullable!5300 lt!2195449))))

(declare-fun b!5389449 () Bool)

(declare-fun res!2289843 () Bool)

(assert (=> b!5389449 (=> res!2289843 e!3342499)))

(assert (=> b!5389449 (= res!2289843 (not ((_ is ElementMatch!15131) lt!2195449)))))

(assert (=> b!5389449 (= e!3342497 e!3342499)))

(declare-fun b!5389450 () Bool)

(declare-fun res!2289845 () Bool)

(assert (=> b!5389450 (=> (not res!2289845) (not e!3342495))))

(assert (=> b!5389450 (= res!2289845 (not call!385800))))

(declare-fun b!5389451 () Bool)

(assert (=> b!5389451 (= e!3342498 (matchR!7316 (derivativeStep!4241 lt!2195449 (head!11559 lt!2195442)) (tail!10656 lt!2195442)))))

(declare-fun b!5389452 () Bool)

(declare-fun e!3342500 () Bool)

(assert (=> b!5389452 (= e!3342500 (not (= (head!11559 lt!2195442) (c!938981 lt!2195449))))))

(declare-fun b!5389453 () Bool)

(assert (=> b!5389453 (= e!3342497 (not lt!2195611))))

(declare-fun b!5389454 () Bool)

(assert (=> b!5389454 (= e!3342496 (= lt!2195611 call!385800))))

(declare-fun b!5389455 () Bool)

(assert (=> b!5389455 (= e!3342495 (= (head!11559 lt!2195442) (c!938981 lt!2195449)))))

(declare-fun b!5389456 () Bool)

(declare-fun res!2289842 () Bool)

(assert (=> b!5389456 (=> res!2289842 e!3342500)))

(assert (=> b!5389456 (= res!2289842 (not (isEmpty!33566 (tail!10656 lt!2195442))))))

(declare-fun b!5389457 () Bool)

(assert (=> b!5389457 (= e!3342494 e!3342500)))

(declare-fun res!2289848 () Bool)

(assert (=> b!5389457 (=> res!2289848 e!3342500)))

(assert (=> b!5389457 (= res!2289848 call!385800)))

(declare-fun b!5389458 () Bool)

(declare-fun res!2289844 () Bool)

(assert (=> b!5389458 (=> (not res!2289844) (not e!3342495))))

(assert (=> b!5389458 (= res!2289844 (isEmpty!33566 (tail!10656 lt!2195442)))))

(assert (= (and d!1723277 c!939202) b!5389448))

(assert (= (and d!1723277 (not c!939202)) b!5389451))

(assert (= (and d!1723277 c!939203) b!5389454))

(assert (= (and d!1723277 (not c!939203)) b!5389446))

(assert (= (and b!5389446 c!939204) b!5389453))

(assert (= (and b!5389446 (not c!939204)) b!5389449))

(assert (= (and b!5389449 (not res!2289843)) b!5389445))

(assert (= (and b!5389445 res!2289847) b!5389450))

(assert (= (and b!5389450 res!2289845) b!5389458))

(assert (= (and b!5389458 res!2289844) b!5389455))

(assert (= (and b!5389445 (not res!2289841)) b!5389447))

(assert (= (and b!5389447 res!2289846) b!5389457))

(assert (= (and b!5389457 (not res!2289848)) b!5389456))

(assert (= (and b!5389456 (not res!2289842)) b!5389452))

(assert (= (or b!5389454 b!5389450 b!5389457) bm!385795))

(assert (=> b!5389452 m!6415336))

(assert (=> bm!385795 m!6415332))

(assert (=> b!5389455 m!6415336))

(assert (=> b!5389458 m!6415340))

(assert (=> b!5389458 m!6415340))

(declare-fun m!6415416 () Bool)

(assert (=> b!5389458 m!6415416))

(assert (=> b!5389451 m!6415336))

(assert (=> b!5389451 m!6415336))

(declare-fun m!6415418 () Bool)

(assert (=> b!5389451 m!6415418))

(assert (=> b!5389451 m!6415340))

(assert (=> b!5389451 m!6415418))

(assert (=> b!5389451 m!6415340))

(declare-fun m!6415420 () Bool)

(assert (=> b!5389451 m!6415420))

(assert (=> b!5389456 m!6415340))

(assert (=> b!5389456 m!6415340))

(assert (=> b!5389456 m!6415416))

(assert (=> d!1723277 m!6415332))

(assert (=> d!1723277 m!6414582))

(declare-fun m!6415422 () Bool)

(assert (=> b!5389448 m!6415422))

(assert (=> b!5388660 d!1723277))

(declare-fun b!5389484 () Bool)

(declare-fun res!2289857 () Bool)

(declare-fun e!3342514 () Bool)

(assert (=> b!5389484 (=> (not res!2289857) (not e!3342514))))

(declare-fun lt!2195614 () List!61693)

(declare-fun size!39816 (List!61693) Int)

(assert (=> b!5389484 (= res!2289857 (= (size!39816 lt!2195614) (+ (size!39816 lt!2195432) (size!39816 lt!2195450))))))

(declare-fun b!5389483 () Bool)

(declare-fun e!3342515 () List!61693)

(assert (=> b!5389483 (= e!3342515 (Cons!61569 (h!68017 lt!2195432) (++!13448 (t!374916 lt!2195432) lt!2195450)))))

(declare-fun b!5389485 () Bool)

(assert (=> b!5389485 (= e!3342514 (or (not (= lt!2195450 Nil!61569)) (= lt!2195614 lt!2195432)))))

(declare-fun b!5389482 () Bool)

(assert (=> b!5389482 (= e!3342515 lt!2195450)))

(declare-fun d!1723283 () Bool)

(assert (=> d!1723283 e!3342514))

(declare-fun res!2289856 () Bool)

(assert (=> d!1723283 (=> (not res!2289856) (not e!3342514))))

(declare-fun content!11020 (List!61693) (InoxSet Regex!15131))

(assert (=> d!1723283 (= res!2289856 (= (content!11020 lt!2195614) ((_ map or) (content!11020 lt!2195432) (content!11020 lt!2195450))))))

(assert (=> d!1723283 (= lt!2195614 e!3342515)))

(declare-fun c!939213 () Bool)

(assert (=> d!1723283 (= c!939213 ((_ is Nil!61569) lt!2195432))))

(assert (=> d!1723283 (= (++!13448 lt!2195432 lt!2195450) lt!2195614)))

(assert (= (and d!1723283 c!939213) b!5389482))

(assert (= (and d!1723283 (not c!939213)) b!5389483))

(assert (= (and d!1723283 res!2289856) b!5389484))

(assert (= (and b!5389484 res!2289857) b!5389485))

(declare-fun m!6415440 () Bool)

(assert (=> b!5389484 m!6415440))

(declare-fun m!6415442 () Bool)

(assert (=> b!5389484 m!6415442))

(declare-fun m!6415444 () Bool)

(assert (=> b!5389484 m!6415444))

(declare-fun m!6415446 () Bool)

(assert (=> b!5389483 m!6415446))

(declare-fun m!6415448 () Bool)

(assert (=> d!1723283 m!6415448))

(declare-fun m!6415450 () Bool)

(assert (=> d!1723283 m!6415450))

(declare-fun m!6415452 () Bool)

(assert (=> d!1723283 m!6415452))

(assert (=> b!5388660 d!1723283))

(declare-fun d!1723291 () Bool)

(assert (=> d!1723291 (matchR!7316 (Concat!23976 (reg!15460 (regOne!30774 r!7292)) lt!2195459) (++!13447 (_1!35633 lt!2195428) lt!2195460))))

(declare-fun lt!2195615 () Unit!154042)

(assert (=> d!1723291 (= lt!2195615 (choose!40541 (reg!15460 (regOne!30774 r!7292)) lt!2195459 (_1!35633 lt!2195428) lt!2195460))))

(declare-fun e!3342516 () Bool)

(assert (=> d!1723291 e!3342516))

(declare-fun res!2289858 () Bool)

(assert (=> d!1723291 (=> (not res!2289858) (not e!3342516))))

(assert (=> d!1723291 (= res!2289858 (validRegex!6867 (reg!15460 (regOne!30774 r!7292))))))

(assert (=> d!1723291 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!178 (reg!15460 (regOne!30774 r!7292)) lt!2195459 (_1!35633 lt!2195428) lt!2195460) lt!2195615)))

(declare-fun b!5389486 () Bool)

(assert (=> b!5389486 (= e!3342516 (validRegex!6867 lt!2195459))))

(assert (= (and d!1723291 res!2289858) b!5389486))

(assert (=> d!1723291 m!6414514))

(assert (=> d!1723291 m!6414514))

(declare-fun m!6415454 () Bool)

(assert (=> d!1723291 m!6415454))

(declare-fun m!6415456 () Bool)

(assert (=> d!1723291 m!6415456))

(assert (=> d!1723291 m!6414830))

(assert (=> b!5389486 m!6415290))

(assert (=> b!5388660 d!1723291))

(declare-fun bs!1247095 () Bool)

(declare-fun d!1723293 () Bool)

(assert (= bs!1247095 (and d!1723293 d!1723213)))

(declare-fun lambda!279769 () Int)

(assert (=> bs!1247095 (= lambda!279769 lambda!279759)))

(declare-fun bs!1247096 () Bool)

(assert (= bs!1247096 (and d!1723293 d!1723207)))

(assert (=> bs!1247096 (= lambda!279769 lambda!279754)))

(declare-fun bs!1247097 () Bool)

(assert (= bs!1247097 (and d!1723293 b!5388660)))

(assert (=> bs!1247097 (= lambda!279769 lambda!279701)))

(declare-fun bs!1247098 () Bool)

(assert (= bs!1247098 (and d!1723293 d!1723069)))

(assert (=> bs!1247098 (= lambda!279769 lambda!279707)))

(declare-fun bs!1247099 () Bool)

(assert (= bs!1247099 (and d!1723293 d!1723061)))

(assert (=> bs!1247099 (= lambda!279769 lambda!279704)))

(declare-fun b!5389541 () Bool)

(declare-fun e!3342554 () Bool)

(declare-fun lt!2195623 () Regex!15131)

(declare-fun isEmptyExpr!954 (Regex!15131) Bool)

(assert (=> b!5389541 (= e!3342554 (isEmptyExpr!954 lt!2195623))))

(declare-fun b!5389542 () Bool)

(declare-fun e!3342549 () Regex!15131)

(assert (=> b!5389542 (= e!3342549 EmptyExpr!15131)))

(declare-fun e!3342551 () Bool)

(assert (=> d!1723293 e!3342551))

(declare-fun res!2289869 () Bool)

(assert (=> d!1723293 (=> (not res!2289869) (not e!3342551))))

(assert (=> d!1723293 (= res!2289869 (validRegex!6867 lt!2195623))))

(declare-fun e!3342550 () Regex!15131)

(assert (=> d!1723293 (= lt!2195623 e!3342550)))

(declare-fun c!939237 () Bool)

(declare-fun e!3342552 () Bool)

(assert (=> d!1723293 (= c!939237 e!3342552)))

(declare-fun res!2289870 () Bool)

(assert (=> d!1723293 (=> (not res!2289870) (not e!3342552))))

(assert (=> d!1723293 (= res!2289870 ((_ is Cons!61569) (exprs!5015 (h!68018 zl!343))))))

(assert (=> d!1723293 (forall!14512 (exprs!5015 (h!68018 zl!343)) lambda!279769)))

(assert (=> d!1723293 (= (generalisedConcat!800 (exprs!5015 (h!68018 zl!343))) lt!2195623)))

(declare-fun b!5389543 () Bool)

(assert (=> b!5389543 (= e!3342550 e!3342549)))

(declare-fun c!939239 () Bool)

(assert (=> b!5389543 (= c!939239 ((_ is Cons!61569) (exprs!5015 (h!68018 zl!343))))))

(declare-fun b!5389544 () Bool)

(declare-fun e!3342553 () Bool)

(assert (=> b!5389544 (= e!3342553 (= lt!2195623 (head!11558 (exprs!5015 (h!68018 zl!343)))))))

(declare-fun b!5389545 () Bool)

(declare-fun isConcat!477 (Regex!15131) Bool)

(assert (=> b!5389545 (= e!3342553 (isConcat!477 lt!2195623))))

(declare-fun b!5389546 () Bool)

(assert (=> b!5389546 (= e!3342550 (h!68017 (exprs!5015 (h!68018 zl!343))))))

(declare-fun b!5389547 () Bool)

(assert (=> b!5389547 (= e!3342551 e!3342554)))

(declare-fun c!939236 () Bool)

(assert (=> b!5389547 (= c!939236 (isEmpty!33568 (exprs!5015 (h!68018 zl!343))))))

(declare-fun b!5389548 () Bool)

(assert (=> b!5389548 (= e!3342549 (Concat!23976 (h!68017 (exprs!5015 (h!68018 zl!343))) (generalisedConcat!800 (t!374916 (exprs!5015 (h!68018 zl!343))))))))

(declare-fun b!5389549 () Bool)

(assert (=> b!5389549 (= e!3342554 e!3342553)))

(declare-fun c!939238 () Bool)

(assert (=> b!5389549 (= c!939238 (isEmpty!33568 (tail!10654 (exprs!5015 (h!68018 zl!343)))))))

(declare-fun b!5389550 () Bool)

(assert (=> b!5389550 (= e!3342552 (isEmpty!33568 (t!374916 (exprs!5015 (h!68018 zl!343)))))))

(assert (= (and d!1723293 res!2289870) b!5389550))

(assert (= (and d!1723293 c!939237) b!5389546))

(assert (= (and d!1723293 (not c!939237)) b!5389543))

(assert (= (and b!5389543 c!939239) b!5389548))

(assert (= (and b!5389543 (not c!939239)) b!5389542))

(assert (= (and d!1723293 res!2289869) b!5389547))

(assert (= (and b!5389547 c!939236) b!5389541))

(assert (= (and b!5389547 (not c!939236)) b!5389549))

(assert (= (and b!5389549 c!939238) b!5389544))

(assert (= (and b!5389549 (not c!939238)) b!5389545))

(declare-fun m!6415478 () Bool)

(assert (=> b!5389548 m!6415478))

(assert (=> b!5389550 m!6414618))

(declare-fun m!6415480 () Bool)

(assert (=> b!5389549 m!6415480))

(assert (=> b!5389549 m!6415480))

(declare-fun m!6415482 () Bool)

(assert (=> b!5389549 m!6415482))

(declare-fun m!6415484 () Bool)

(assert (=> b!5389547 m!6415484))

(declare-fun m!6415486 () Bool)

(assert (=> d!1723293 m!6415486))

(declare-fun m!6415488 () Bool)

(assert (=> d!1723293 m!6415488))

(declare-fun m!6415490 () Bool)

(assert (=> b!5389544 m!6415490))

(declare-fun m!6415492 () Bool)

(assert (=> b!5389541 m!6415492))

(declare-fun m!6415494 () Bool)

(assert (=> b!5389545 m!6415494))

(assert (=> b!5388655 d!1723293))

(declare-fun d!1723297 () Bool)

(assert (=> d!1723297 (= (isEmpty!33567 (t!374917 zl!343)) ((_ is Nil!61570) (t!374917 zl!343)))))

(assert (=> b!5388674 d!1723297))

(declare-fun d!1723301 () Bool)

(assert (=> d!1723301 (= (Exists!2312 lambda!279700) (choose!40529 lambda!279700))))

(declare-fun bs!1247105 () Bool)

(assert (= bs!1247105 d!1723301))

(declare-fun m!6415502 () Bool)

(assert (=> bs!1247105 m!6415502))

(assert (=> b!5388654 d!1723301))

(declare-fun d!1723303 () Bool)

(assert (=> d!1723303 (= (get!21205 lt!2195474) (v!51270 lt!2195474))))

(assert (=> b!5388654 d!1723303))

(declare-fun bs!1247108 () Bool)

(declare-fun d!1723305 () Bool)

(assert (= bs!1247108 (and d!1723305 b!5388665)))

(declare-fun lambda!279775 () Int)

(assert (=> bs!1247108 (= (and (= (_1!35633 lt!2195436) s!2326) (= (reg!15460 (regOne!30774 r!7292)) (regOne!30774 r!7292)) (= (Star!15131 (reg!15460 (regOne!30774 r!7292))) (regTwo!30774 r!7292))) (= lambda!279775 lambda!279693))))

(declare-fun bs!1247109 () Bool)

(assert (= bs!1247109 (and d!1723305 b!5389245)))

(assert (=> bs!1247109 (not (= lambda!279775 lambda!279746))))

(declare-fun bs!1247110 () Bool)

(assert (= bs!1247110 (and d!1723305 d!1723151)))

(assert (=> bs!1247110 (= (and (= (_1!35633 lt!2195436) s!2326) (= (reg!15460 (regOne!30774 r!7292)) lt!2195430) (= (Star!15131 (reg!15460 (regOne!30774 r!7292))) (regTwo!30774 r!7292))) (= lambda!279775 lambda!279732))))

(declare-fun bs!1247111 () Bool)

(assert (= bs!1247111 (and d!1723305 d!1723165)))

(assert (=> bs!1247111 (= (and (= (_1!35633 lt!2195436) s!2326) (= (reg!15460 (regOne!30774 r!7292)) lt!2195430) (= (Star!15131 (reg!15460 (regOne!30774 r!7292))) (regTwo!30774 r!7292))) (= lambda!279775 lambda!279733))))

(declare-fun bs!1247112 () Bool)

(assert (= bs!1247112 (and d!1723305 d!1723111)))

(assert (=> bs!1247112 (not (= lambda!279775 lambda!279731))))

(declare-fun bs!1247113 () Bool)

(assert (= bs!1247113 (and d!1723305 b!5389244)))

(assert (=> bs!1247113 (not (= lambda!279775 lambda!279747))))

(declare-fun bs!1247114 () Bool)

(assert (= bs!1247114 (and d!1723305 b!5388654)))

(assert (=> bs!1247114 (not (= lambda!279775 lambda!279700))))

(assert (=> bs!1247108 (not (= lambda!279775 lambda!279694))))

(declare-fun bs!1247115 () Bool)

(assert (= bs!1247115 (and d!1723305 b!5388639)))

(assert (=> bs!1247115 (not (= lambda!279775 lambda!279697))))

(declare-fun bs!1247116 () Bool)

(assert (= bs!1247116 (and d!1723305 d!1723107)))

(assert (=> bs!1247116 (= (and (= (_1!35633 lt!2195436) s!2326) (= (reg!15460 (regOne!30774 r!7292)) (regOne!30774 r!7292)) (= (Star!15131 (reg!15460 (regOne!30774 r!7292))) (regTwo!30774 r!7292))) (= lambda!279775 lambda!279721))))

(assert (=> bs!1247114 (= (= (Star!15131 (reg!15460 (regOne!30774 r!7292))) lt!2195430) (= lambda!279775 lambda!279698))))

(assert (=> bs!1247114 (not (= lambda!279775 lambda!279699))))

(assert (=> bs!1247115 (= (and (= (_1!35633 lt!2195436) s!2326) (= (reg!15460 (regOne!30774 r!7292)) lt!2195430) (= (Star!15131 (reg!15460 (regOne!30774 r!7292))) (regTwo!30774 r!7292))) (= lambda!279775 lambda!279696))))

(assert (=> bs!1247112 (= (and (= (_1!35633 lt!2195436) s!2326) (= (reg!15460 (regOne!30774 r!7292)) (regOne!30774 r!7292)) (= (Star!15131 (reg!15460 (regOne!30774 r!7292))) (regTwo!30774 r!7292))) (= lambda!279775 lambda!279730))))

(assert (=> bs!1247111 (not (= lambda!279775 lambda!279734))))

(assert (=> d!1723305 true))

(assert (=> d!1723305 true))

(declare-fun lambda!279778 () Int)

(assert (=> bs!1247108 (not (= lambda!279778 lambda!279693))))

(assert (=> bs!1247109 (= (and (= (_1!35633 lt!2195436) s!2326) (= (reg!15460 (regOne!30774 r!7292)) (reg!15460 r!7292)) (= (Star!15131 (reg!15460 (regOne!30774 r!7292))) r!7292)) (= lambda!279778 lambda!279746))))

(assert (=> bs!1247110 (not (= lambda!279778 lambda!279732))))

(assert (=> bs!1247111 (not (= lambda!279778 lambda!279733))))

(assert (=> bs!1247112 (not (= lambda!279778 lambda!279731))))

(assert (=> bs!1247113 (not (= lambda!279778 lambda!279747))))

(assert (=> bs!1247114 (not (= lambda!279778 lambda!279700))))

(assert (=> bs!1247115 (not (= lambda!279778 lambda!279697))))

(assert (=> bs!1247116 (not (= lambda!279778 lambda!279721))))

(assert (=> bs!1247114 (not (= lambda!279778 lambda!279698))))

(assert (=> bs!1247114 (= (= (Star!15131 (reg!15460 (regOne!30774 r!7292))) lt!2195430) (= lambda!279778 lambda!279699))))

(assert (=> bs!1247115 (not (= lambda!279778 lambda!279696))))

(assert (=> bs!1247108 (not (= lambda!279778 lambda!279694))))

(declare-fun bs!1247123 () Bool)

(assert (= bs!1247123 d!1723305))

(assert (=> bs!1247123 (not (= lambda!279778 lambda!279775))))

(assert (=> bs!1247112 (not (= lambda!279778 lambda!279730))))

(assert (=> bs!1247111 (not (= lambda!279778 lambda!279734))))

(assert (=> d!1723305 true))

(assert (=> d!1723305 true))

(assert (=> d!1723305 (= (Exists!2312 lambda!279775) (Exists!2312 lambda!279778))))

(declare-fun lt!2195633 () Unit!154042)

(declare-fun choose!40544 (Regex!15131 List!61692) Unit!154042)

(assert (=> d!1723305 (= lt!2195633 (choose!40544 (reg!15460 (regOne!30774 r!7292)) (_1!35633 lt!2195436)))))

(assert (=> d!1723305 (validRegex!6867 (reg!15460 (regOne!30774 r!7292)))))

(assert (=> d!1723305 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!396 (reg!15460 (regOne!30774 r!7292)) (_1!35633 lt!2195436)) lt!2195633)))

(declare-fun m!6415532 () Bool)

(assert (=> bs!1247123 m!6415532))

(declare-fun m!6415534 () Bool)

(assert (=> bs!1247123 m!6415534))

(declare-fun m!6415538 () Bool)

(assert (=> bs!1247123 m!6415538))

(assert (=> bs!1247123 m!6414830))

(assert (=> b!5388654 d!1723305))

(declare-fun d!1723315 () Bool)

(assert (=> d!1723315 (= (Exists!2312 lambda!279699) (choose!40529 lambda!279699))))

(declare-fun bs!1247125 () Bool)

(assert (= bs!1247125 d!1723315))

(declare-fun m!6415540 () Bool)

(assert (=> bs!1247125 m!6415540))

(assert (=> b!5388654 d!1723315))

(declare-fun bs!1247127 () Bool)

(declare-fun d!1723317 () Bool)

(assert (= bs!1247127 (and d!1723317 b!5388665)))

(declare-fun lambda!279780 () Int)

(assert (=> bs!1247127 (= (and (= (_1!35633 lt!2195436) s!2326) (= (reg!15460 (regOne!30774 r!7292)) (regOne!30774 r!7292)) (= lt!2195430 (regTwo!30774 r!7292))) (= lambda!279780 lambda!279693))))

(declare-fun bs!1247128 () Bool)

(assert (= bs!1247128 (and d!1723317 b!5389245)))

(assert (=> bs!1247128 (not (= lambda!279780 lambda!279746))))

(declare-fun bs!1247129 () Bool)

(assert (= bs!1247129 (and d!1723317 d!1723151)))

(assert (=> bs!1247129 (= (and (= (_1!35633 lt!2195436) s!2326) (= (reg!15460 (regOne!30774 r!7292)) lt!2195430) (= lt!2195430 (regTwo!30774 r!7292))) (= lambda!279780 lambda!279732))))

(declare-fun bs!1247130 () Bool)

(assert (= bs!1247130 (and d!1723317 d!1723165)))

(assert (=> bs!1247130 (= (and (= (_1!35633 lt!2195436) s!2326) (= (reg!15460 (regOne!30774 r!7292)) lt!2195430) (= lt!2195430 (regTwo!30774 r!7292))) (= lambda!279780 lambda!279733))))

(declare-fun bs!1247131 () Bool)

(assert (= bs!1247131 (and d!1723317 b!5389244)))

(assert (=> bs!1247131 (not (= lambda!279780 lambda!279747))))

(declare-fun bs!1247132 () Bool)

(assert (= bs!1247132 (and d!1723317 b!5388654)))

(assert (=> bs!1247132 (not (= lambda!279780 lambda!279700))))

(declare-fun bs!1247133 () Bool)

(assert (= bs!1247133 (and d!1723317 b!5388639)))

(assert (=> bs!1247133 (not (= lambda!279780 lambda!279697))))

(declare-fun bs!1247134 () Bool)

(assert (= bs!1247134 (and d!1723317 d!1723107)))

(assert (=> bs!1247134 (= (and (= (_1!35633 lt!2195436) s!2326) (= (reg!15460 (regOne!30774 r!7292)) (regOne!30774 r!7292)) (= lt!2195430 (regTwo!30774 r!7292))) (= lambda!279780 lambda!279721))))

(assert (=> bs!1247132 (= lambda!279780 lambda!279698)))

(assert (=> bs!1247132 (not (= lambda!279780 lambda!279699))))

(assert (=> bs!1247133 (= (and (= (_1!35633 lt!2195436) s!2326) (= (reg!15460 (regOne!30774 r!7292)) lt!2195430) (= lt!2195430 (regTwo!30774 r!7292))) (= lambda!279780 lambda!279696))))

(declare-fun bs!1247135 () Bool)

(assert (= bs!1247135 (and d!1723317 d!1723111)))

(assert (=> bs!1247135 (not (= lambda!279780 lambda!279731))))

(declare-fun bs!1247136 () Bool)

(assert (= bs!1247136 (and d!1723317 d!1723305)))

(assert (=> bs!1247136 (not (= lambda!279780 lambda!279778))))

(assert (=> bs!1247127 (not (= lambda!279780 lambda!279694))))

(assert (=> bs!1247136 (= (= lt!2195430 (Star!15131 (reg!15460 (regOne!30774 r!7292)))) (= lambda!279780 lambda!279775))))

(assert (=> bs!1247135 (= (and (= (_1!35633 lt!2195436) s!2326) (= (reg!15460 (regOne!30774 r!7292)) (regOne!30774 r!7292)) (= lt!2195430 (regTwo!30774 r!7292))) (= lambda!279780 lambda!279730))))

(assert (=> bs!1247130 (not (= lambda!279780 lambda!279734))))

(assert (=> d!1723317 true))

(assert (=> d!1723317 true))

(assert (=> d!1723317 true))

(assert (=> d!1723317 (= (isDefined!11945 (findConcatSeparation!1656 (reg!15460 (regOne!30774 r!7292)) lt!2195430 Nil!61568 (_1!35633 lt!2195436) (_1!35633 lt!2195436))) (Exists!2312 lambda!279780))))

(declare-fun lt!2195641 () Unit!154042)

(assert (=> d!1723317 (= lt!2195641 (choose!40530 (reg!15460 (regOne!30774 r!7292)) lt!2195430 (_1!35633 lt!2195436)))))

(assert (=> d!1723317 (validRegex!6867 (reg!15460 (regOne!30774 r!7292)))))

(assert (=> d!1723317 (= (lemmaFindConcatSeparationEquivalentToExists!1420 (reg!15460 (regOne!30774 r!7292)) lt!2195430 (_1!35633 lt!2195436)) lt!2195641)))

(declare-fun bs!1247137 () Bool)

(assert (= bs!1247137 d!1723317))

(declare-fun m!6415546 () Bool)

(assert (=> bs!1247137 m!6415546))

(declare-fun m!6415548 () Bool)

(assert (=> bs!1247137 m!6415548))

(assert (=> bs!1247137 m!6414830))

(assert (=> bs!1247137 m!6414506))

(declare-fun m!6415550 () Bool)

(assert (=> bs!1247137 m!6415550))

(assert (=> bs!1247137 m!6414506))

(assert (=> b!5388654 d!1723317))

(declare-fun b!5389567 () Bool)

(declare-fun res!2289884 () Bool)

(declare-fun e!3342566 () Bool)

(assert (=> b!5389567 (=> (not res!2289884) (not e!3342566))))

(declare-fun lt!2195645 () Option!15242)

(assert (=> b!5389567 (= res!2289884 (matchR!7316 (reg!15460 (regOne!30774 r!7292)) (_1!35633 (get!21205 lt!2195645))))))

(declare-fun b!5389568 () Bool)

(assert (=> b!5389568 (= e!3342566 (= (++!13447 (_1!35633 (get!21205 lt!2195645)) (_2!35633 (get!21205 lt!2195645))) (_1!35633 lt!2195436)))))

(declare-fun b!5389569 () Bool)

(declare-fun res!2289887 () Bool)

(assert (=> b!5389569 (=> (not res!2289887) (not e!3342566))))

(assert (=> b!5389569 (= res!2289887 (matchR!7316 lt!2195430 (_2!35633 (get!21205 lt!2195645))))))

(declare-fun d!1723321 () Bool)

(declare-fun e!3342567 () Bool)

(assert (=> d!1723321 e!3342567))

(declare-fun res!2289886 () Bool)

(assert (=> d!1723321 (=> res!2289886 e!3342567)))

(assert (=> d!1723321 (= res!2289886 e!3342566)))

(declare-fun res!2289883 () Bool)

(assert (=> d!1723321 (=> (not res!2289883) (not e!3342566))))

(assert (=> d!1723321 (= res!2289883 (isDefined!11945 lt!2195645))))

(declare-fun e!3342564 () Option!15242)

(assert (=> d!1723321 (= lt!2195645 e!3342564)))

(declare-fun c!939242 () Bool)

(declare-fun e!3342565 () Bool)

(assert (=> d!1723321 (= c!939242 e!3342565)))

(declare-fun res!2289885 () Bool)

(assert (=> d!1723321 (=> (not res!2289885) (not e!3342565))))

(assert (=> d!1723321 (= res!2289885 (matchR!7316 (reg!15460 (regOne!30774 r!7292)) Nil!61568))))

(assert (=> d!1723321 (validRegex!6867 (reg!15460 (regOne!30774 r!7292)))))

(assert (=> d!1723321 (= (findConcatSeparation!1656 (reg!15460 (regOne!30774 r!7292)) lt!2195430 Nil!61568 (_1!35633 lt!2195436) (_1!35633 lt!2195436)) lt!2195645)))

(declare-fun b!5389570 () Bool)

(declare-fun e!3342563 () Option!15242)

(assert (=> b!5389570 (= e!3342564 e!3342563)))

(declare-fun c!939243 () Bool)

(assert (=> b!5389570 (= c!939243 ((_ is Nil!61568) (_1!35633 lt!2195436)))))

(declare-fun b!5389571 () Bool)

(assert (=> b!5389571 (= e!3342564 (Some!15241 (tuple2!64661 Nil!61568 (_1!35633 lt!2195436))))))

(declare-fun b!5389572 () Bool)

(assert (=> b!5389572 (= e!3342563 None!15241)))

(declare-fun b!5389573 () Bool)

(declare-fun lt!2195644 () Unit!154042)

(declare-fun lt!2195646 () Unit!154042)

(assert (=> b!5389573 (= lt!2195644 lt!2195646)))

(assert (=> b!5389573 (= (++!13447 (++!13447 Nil!61568 (Cons!61568 (h!68016 (_1!35633 lt!2195436)) Nil!61568)) (t!374915 (_1!35633 lt!2195436))) (_1!35633 lt!2195436))))

(assert (=> b!5389573 (= lt!2195646 (lemmaMoveElementToOtherListKeepsConcatEq!1815 Nil!61568 (h!68016 (_1!35633 lt!2195436)) (t!374915 (_1!35633 lt!2195436)) (_1!35633 lt!2195436)))))

(assert (=> b!5389573 (= e!3342563 (findConcatSeparation!1656 (reg!15460 (regOne!30774 r!7292)) lt!2195430 (++!13447 Nil!61568 (Cons!61568 (h!68016 (_1!35633 lt!2195436)) Nil!61568)) (t!374915 (_1!35633 lt!2195436)) (_1!35633 lt!2195436)))))

(declare-fun b!5389574 () Bool)

(assert (=> b!5389574 (= e!3342567 (not (isDefined!11945 lt!2195645)))))

(declare-fun b!5389575 () Bool)

(assert (=> b!5389575 (= e!3342565 (matchR!7316 lt!2195430 (_1!35633 lt!2195436)))))

(assert (= (and d!1723321 res!2289885) b!5389575))

(assert (= (and d!1723321 c!939242) b!5389571))

(assert (= (and d!1723321 (not c!939242)) b!5389570))

(assert (= (and b!5389570 c!939243) b!5389572))

(assert (= (and b!5389570 (not c!939243)) b!5389573))

(assert (= (and d!1723321 res!2289883) b!5389567))

(assert (= (and b!5389567 res!2289884) b!5389569))

(assert (= (and b!5389569 res!2289887) b!5389568))

(assert (= (and d!1723321 (not res!2289886)) b!5389574))

(declare-fun m!6415560 () Bool)

(assert (=> b!5389573 m!6415560))

(assert (=> b!5389573 m!6415560))

(declare-fun m!6415564 () Bool)

(assert (=> b!5389573 m!6415564))

(declare-fun m!6415568 () Bool)

(assert (=> b!5389573 m!6415568))

(assert (=> b!5389573 m!6415560))

(declare-fun m!6415570 () Bool)

(assert (=> b!5389573 m!6415570))

(declare-fun m!6415572 () Bool)

(assert (=> b!5389567 m!6415572))

(declare-fun m!6415574 () Bool)

(assert (=> b!5389567 m!6415574))

(assert (=> b!5389568 m!6415572))

(declare-fun m!6415576 () Bool)

(assert (=> b!5389568 m!6415576))

(declare-fun m!6415578 () Bool)

(assert (=> d!1723321 m!6415578))

(declare-fun m!6415580 () Bool)

(assert (=> d!1723321 m!6415580))

(assert (=> d!1723321 m!6414830))

(assert (=> b!5389569 m!6415572))

(declare-fun m!6415582 () Bool)

(assert (=> b!5389569 m!6415582))

(assert (=> b!5389575 m!6414556))

(assert (=> b!5389574 m!6415578))

(assert (=> b!5388654 d!1723321))

(declare-fun d!1723327 () Bool)

(assert (=> d!1723327 (= (isDefined!11945 lt!2195474) (not (isEmpty!33570 lt!2195474)))))

(declare-fun bs!1247138 () Bool)

(assert (= bs!1247138 d!1723327))

(declare-fun m!6415584 () Bool)

(assert (=> bs!1247138 m!6415584))

(assert (=> b!5388654 d!1723327))

(declare-fun bs!1247139 () Bool)

(declare-fun d!1723329 () Bool)

(assert (= bs!1247139 (and d!1723329 b!5388665)))

(declare-fun lambda!279781 () Int)

(assert (=> bs!1247139 (= (and (= (_1!35633 lt!2195436) s!2326) (= (reg!15460 (regOne!30774 r!7292)) (regOne!30774 r!7292)) (= lt!2195430 (regTwo!30774 r!7292))) (= lambda!279781 lambda!279693))))

(declare-fun bs!1247140 () Bool)

(assert (= bs!1247140 (and d!1723329 b!5389245)))

(assert (=> bs!1247140 (not (= lambda!279781 lambda!279746))))

(declare-fun bs!1247141 () Bool)

(assert (= bs!1247141 (and d!1723329 d!1723151)))

(assert (=> bs!1247141 (= (and (= (_1!35633 lt!2195436) s!2326) (= (reg!15460 (regOne!30774 r!7292)) lt!2195430) (= lt!2195430 (regTwo!30774 r!7292))) (= lambda!279781 lambda!279732))))

(declare-fun bs!1247142 () Bool)

(assert (= bs!1247142 (and d!1723329 d!1723165)))

(assert (=> bs!1247142 (= (and (= (_1!35633 lt!2195436) s!2326) (= (reg!15460 (regOne!30774 r!7292)) lt!2195430) (= lt!2195430 (regTwo!30774 r!7292))) (= lambda!279781 lambda!279733))))

(declare-fun bs!1247143 () Bool)

(assert (= bs!1247143 (and d!1723329 b!5389244)))

(assert (=> bs!1247143 (not (= lambda!279781 lambda!279747))))

(declare-fun bs!1247144 () Bool)

(assert (= bs!1247144 (and d!1723329 b!5388654)))

(assert (=> bs!1247144 (not (= lambda!279781 lambda!279700))))

(declare-fun bs!1247145 () Bool)

(assert (= bs!1247145 (and d!1723329 d!1723317)))

(assert (=> bs!1247145 (= lambda!279781 lambda!279780)))

(declare-fun bs!1247146 () Bool)

(assert (= bs!1247146 (and d!1723329 b!5388639)))

(assert (=> bs!1247146 (not (= lambda!279781 lambda!279697))))

(declare-fun bs!1247147 () Bool)

(assert (= bs!1247147 (and d!1723329 d!1723107)))

(assert (=> bs!1247147 (= (and (= (_1!35633 lt!2195436) s!2326) (= (reg!15460 (regOne!30774 r!7292)) (regOne!30774 r!7292)) (= lt!2195430 (regTwo!30774 r!7292))) (= lambda!279781 lambda!279721))))

(assert (=> bs!1247144 (= lambda!279781 lambda!279698)))

(assert (=> bs!1247144 (not (= lambda!279781 lambda!279699))))

(assert (=> bs!1247146 (= (and (= (_1!35633 lt!2195436) s!2326) (= (reg!15460 (regOne!30774 r!7292)) lt!2195430) (= lt!2195430 (regTwo!30774 r!7292))) (= lambda!279781 lambda!279696))))

(declare-fun bs!1247148 () Bool)

(assert (= bs!1247148 (and d!1723329 d!1723111)))

(assert (=> bs!1247148 (not (= lambda!279781 lambda!279731))))

(declare-fun bs!1247149 () Bool)

(assert (= bs!1247149 (and d!1723329 d!1723305)))

(assert (=> bs!1247149 (not (= lambda!279781 lambda!279778))))

(assert (=> bs!1247139 (not (= lambda!279781 lambda!279694))))

(assert (=> bs!1247149 (= (= lt!2195430 (Star!15131 (reg!15460 (regOne!30774 r!7292)))) (= lambda!279781 lambda!279775))))

(assert (=> bs!1247148 (= (and (= (_1!35633 lt!2195436) s!2326) (= (reg!15460 (regOne!30774 r!7292)) (regOne!30774 r!7292)) (= lt!2195430 (regTwo!30774 r!7292))) (= lambda!279781 lambda!279730))))

(assert (=> bs!1247142 (not (= lambda!279781 lambda!279734))))

(assert (=> d!1723329 true))

(assert (=> d!1723329 true))

(assert (=> d!1723329 true))

(declare-fun lambda!279782 () Int)

(assert (=> bs!1247140 (not (= lambda!279782 lambda!279746))))

(assert (=> bs!1247141 (not (= lambda!279782 lambda!279732))))

(assert (=> bs!1247142 (not (= lambda!279782 lambda!279733))))

(assert (=> bs!1247143 (= (and (= (_1!35633 lt!2195436) s!2326) (= (reg!15460 (regOne!30774 r!7292)) (regOne!30774 r!7292)) (= lt!2195430 (regTwo!30774 r!7292))) (= lambda!279782 lambda!279747))))

(assert (=> bs!1247144 (= lambda!279782 lambda!279700)))

(assert (=> bs!1247145 (not (= lambda!279782 lambda!279780))))

(assert (=> bs!1247146 (= (and (= (_1!35633 lt!2195436) s!2326) (= (reg!15460 (regOne!30774 r!7292)) lt!2195430) (= lt!2195430 (regTwo!30774 r!7292))) (= lambda!279782 lambda!279697))))

(assert (=> bs!1247147 (not (= lambda!279782 lambda!279721))))

(assert (=> bs!1247144 (not (= lambda!279782 lambda!279698))))

(assert (=> bs!1247144 (not (= lambda!279782 lambda!279699))))

(assert (=> bs!1247146 (not (= lambda!279782 lambda!279696))))

(declare-fun bs!1247151 () Bool)

(assert (= bs!1247151 d!1723329))

(assert (=> bs!1247151 (not (= lambda!279782 lambda!279781))))

(assert (=> bs!1247139 (not (= lambda!279782 lambda!279693))))

(assert (=> bs!1247148 (= (and (= (_1!35633 lt!2195436) s!2326) (= (reg!15460 (regOne!30774 r!7292)) (regOne!30774 r!7292)) (= lt!2195430 (regTwo!30774 r!7292))) (= lambda!279782 lambda!279731))))

(assert (=> bs!1247149 (not (= lambda!279782 lambda!279778))))

(assert (=> bs!1247139 (= (and (= (_1!35633 lt!2195436) s!2326) (= (reg!15460 (regOne!30774 r!7292)) (regOne!30774 r!7292)) (= lt!2195430 (regTwo!30774 r!7292))) (= lambda!279782 lambda!279694))))

(assert (=> bs!1247149 (not (= lambda!279782 lambda!279775))))

(assert (=> bs!1247148 (not (= lambda!279782 lambda!279730))))

(assert (=> bs!1247142 (= (and (= (_1!35633 lt!2195436) s!2326) (= (reg!15460 (regOne!30774 r!7292)) lt!2195430) (= lt!2195430 (regTwo!30774 r!7292))) (= lambda!279782 lambda!279734))))

(assert (=> d!1723329 true))

(assert (=> d!1723329 true))

(assert (=> d!1723329 true))

(assert (=> d!1723329 (= (Exists!2312 lambda!279781) (Exists!2312 lambda!279782))))

(declare-fun lt!2195649 () Unit!154042)

(assert (=> d!1723329 (= lt!2195649 (choose!40531 (reg!15460 (regOne!30774 r!7292)) lt!2195430 (_1!35633 lt!2195436)))))

(assert (=> d!1723329 (validRegex!6867 (reg!15460 (regOne!30774 r!7292)))))

(assert (=> d!1723329 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!966 (reg!15460 (regOne!30774 r!7292)) lt!2195430 (_1!35633 lt!2195436)) lt!2195649)))

(declare-fun m!6415620 () Bool)

(assert (=> bs!1247151 m!6415620))

(declare-fun m!6415624 () Bool)

(assert (=> bs!1247151 m!6415624))

(declare-fun m!6415626 () Bool)

(assert (=> bs!1247151 m!6415626))

(assert (=> bs!1247151 m!6414830))

(assert (=> b!5388654 d!1723329))

(declare-fun bs!1247152 () Bool)

(declare-fun b!5389618 () Bool)

(assert (= bs!1247152 (and b!5389618 b!5389245)))

(declare-fun lambda!279783 () Int)

(assert (=> bs!1247152 (= (and (= (_1!35633 lt!2195436) s!2326) (= (reg!15460 lt!2195430) (reg!15460 r!7292)) (= lt!2195430 r!7292)) (= lambda!279783 lambda!279746))))

(declare-fun bs!1247153 () Bool)

(assert (= bs!1247153 (and b!5389618 d!1723329)))

(assert (=> bs!1247153 (not (= lambda!279783 lambda!279782))))

(declare-fun bs!1247154 () Bool)

(assert (= bs!1247154 (and b!5389618 d!1723151)))

(assert (=> bs!1247154 (not (= lambda!279783 lambda!279732))))

(declare-fun bs!1247155 () Bool)

(assert (= bs!1247155 (and b!5389618 d!1723165)))

(assert (=> bs!1247155 (not (= lambda!279783 lambda!279733))))

(declare-fun bs!1247156 () Bool)

(assert (= bs!1247156 (and b!5389618 b!5389244)))

(assert (=> bs!1247156 (not (= lambda!279783 lambda!279747))))

(declare-fun bs!1247157 () Bool)

(assert (= bs!1247157 (and b!5389618 b!5388654)))

(assert (=> bs!1247157 (not (= lambda!279783 lambda!279700))))

(declare-fun bs!1247158 () Bool)

(assert (= bs!1247158 (and b!5389618 d!1723317)))

(assert (=> bs!1247158 (not (= lambda!279783 lambda!279780))))

(declare-fun bs!1247159 () Bool)

(assert (= bs!1247159 (and b!5389618 b!5388639)))

(assert (=> bs!1247159 (not (= lambda!279783 lambda!279697))))

(declare-fun bs!1247160 () Bool)

(assert (= bs!1247160 (and b!5389618 d!1723107)))

(assert (=> bs!1247160 (not (= lambda!279783 lambda!279721))))

(assert (=> bs!1247157 (not (= lambda!279783 lambda!279698))))

(assert (=> bs!1247157 (= (= (reg!15460 lt!2195430) (reg!15460 (regOne!30774 r!7292))) (= lambda!279783 lambda!279699))))

(assert (=> bs!1247159 (not (= lambda!279783 lambda!279696))))

(assert (=> bs!1247153 (not (= lambda!279783 lambda!279781))))

(declare-fun bs!1247161 () Bool)

(assert (= bs!1247161 (and b!5389618 b!5388665)))

(assert (=> bs!1247161 (not (= lambda!279783 lambda!279693))))

(declare-fun bs!1247162 () Bool)

(assert (= bs!1247162 (and b!5389618 d!1723111)))

(assert (=> bs!1247162 (not (= lambda!279783 lambda!279731))))

(declare-fun bs!1247163 () Bool)

(assert (= bs!1247163 (and b!5389618 d!1723305)))

(assert (=> bs!1247163 (= (and (= (reg!15460 lt!2195430) (reg!15460 (regOne!30774 r!7292))) (= lt!2195430 (Star!15131 (reg!15460 (regOne!30774 r!7292))))) (= lambda!279783 lambda!279778))))

(assert (=> bs!1247161 (not (= lambda!279783 lambda!279694))))

(assert (=> bs!1247163 (not (= lambda!279783 lambda!279775))))

(assert (=> bs!1247162 (not (= lambda!279783 lambda!279730))))

(assert (=> bs!1247155 (not (= lambda!279783 lambda!279734))))

(assert (=> b!5389618 true))

(assert (=> b!5389618 true))

(declare-fun bs!1247164 () Bool)

(declare-fun b!5389617 () Bool)

(assert (= bs!1247164 (and b!5389617 b!5389245)))

(declare-fun lambda!279784 () Int)

(assert (=> bs!1247164 (not (= lambda!279784 lambda!279746))))

(declare-fun bs!1247165 () Bool)

(assert (= bs!1247165 (and b!5389617 d!1723329)))

(assert (=> bs!1247165 (= (and (= (regOne!30774 lt!2195430) (reg!15460 (regOne!30774 r!7292))) (= (regTwo!30774 lt!2195430) lt!2195430)) (= lambda!279784 lambda!279782))))

(declare-fun bs!1247166 () Bool)

(assert (= bs!1247166 (and b!5389617 b!5389618)))

(assert (=> bs!1247166 (not (= lambda!279784 lambda!279783))))

(declare-fun bs!1247167 () Bool)

(assert (= bs!1247167 (and b!5389617 d!1723151)))

(assert (=> bs!1247167 (not (= lambda!279784 lambda!279732))))

(declare-fun bs!1247168 () Bool)

(assert (= bs!1247168 (and b!5389617 d!1723165)))

(assert (=> bs!1247168 (not (= lambda!279784 lambda!279733))))

(declare-fun bs!1247169 () Bool)

(assert (= bs!1247169 (and b!5389617 b!5389244)))

(assert (=> bs!1247169 (= (and (= (_1!35633 lt!2195436) s!2326) (= (regOne!30774 lt!2195430) (regOne!30774 r!7292)) (= (regTwo!30774 lt!2195430) (regTwo!30774 r!7292))) (= lambda!279784 lambda!279747))))

(declare-fun bs!1247170 () Bool)

(assert (= bs!1247170 (and b!5389617 b!5388654)))

(assert (=> bs!1247170 (= (and (= (regOne!30774 lt!2195430) (reg!15460 (regOne!30774 r!7292))) (= (regTwo!30774 lt!2195430) lt!2195430)) (= lambda!279784 lambda!279700))))

(declare-fun bs!1247171 () Bool)

(assert (= bs!1247171 (and b!5389617 d!1723317)))

(assert (=> bs!1247171 (not (= lambda!279784 lambda!279780))))

(declare-fun bs!1247172 () Bool)

(assert (= bs!1247172 (and b!5389617 b!5388639)))

(assert (=> bs!1247172 (= (and (= (_1!35633 lt!2195436) s!2326) (= (regOne!30774 lt!2195430) lt!2195430) (= (regTwo!30774 lt!2195430) (regTwo!30774 r!7292))) (= lambda!279784 lambda!279697))))

(declare-fun bs!1247173 () Bool)

(assert (= bs!1247173 (and b!5389617 d!1723107)))

(assert (=> bs!1247173 (not (= lambda!279784 lambda!279721))))

(assert (=> bs!1247170 (not (= lambda!279784 lambda!279698))))

(assert (=> bs!1247170 (not (= lambda!279784 lambda!279699))))

(assert (=> bs!1247172 (not (= lambda!279784 lambda!279696))))

(assert (=> bs!1247165 (not (= lambda!279784 lambda!279781))))

(declare-fun bs!1247174 () Bool)

(assert (= bs!1247174 (and b!5389617 b!5388665)))

(assert (=> bs!1247174 (not (= lambda!279784 lambda!279693))))

(declare-fun bs!1247175 () Bool)

(assert (= bs!1247175 (and b!5389617 d!1723111)))

(assert (=> bs!1247175 (= (and (= (_1!35633 lt!2195436) s!2326) (= (regOne!30774 lt!2195430) (regOne!30774 r!7292)) (= (regTwo!30774 lt!2195430) (regTwo!30774 r!7292))) (= lambda!279784 lambda!279731))))

(declare-fun bs!1247176 () Bool)

(assert (= bs!1247176 (and b!5389617 d!1723305)))

(assert (=> bs!1247176 (not (= lambda!279784 lambda!279778))))

(assert (=> bs!1247174 (= (and (= (_1!35633 lt!2195436) s!2326) (= (regOne!30774 lt!2195430) (regOne!30774 r!7292)) (= (regTwo!30774 lt!2195430) (regTwo!30774 r!7292))) (= lambda!279784 lambda!279694))))

(assert (=> bs!1247176 (not (= lambda!279784 lambda!279775))))

(assert (=> bs!1247175 (not (= lambda!279784 lambda!279730))))

(assert (=> bs!1247168 (= (and (= (_1!35633 lt!2195436) s!2326) (= (regOne!30774 lt!2195430) lt!2195430) (= (regTwo!30774 lt!2195430) (regTwo!30774 r!7292))) (= lambda!279784 lambda!279734))))

(assert (=> b!5389617 true))

(assert (=> b!5389617 true))

(declare-fun b!5389609 () Bool)

(declare-fun e!3342588 () Bool)

(declare-fun e!3342586 () Bool)

(assert (=> b!5389609 (= e!3342588 e!3342586)))

(declare-fun res!2289905 () Bool)

(assert (=> b!5389609 (= res!2289905 (matchRSpec!2234 (regOne!30775 lt!2195430) (_1!35633 lt!2195436)))))

(assert (=> b!5389609 (=> res!2289905 e!3342586)))

(declare-fun b!5389611 () Bool)

(declare-fun c!939255 () Bool)

(assert (=> b!5389611 (= c!939255 ((_ is ElementMatch!15131) lt!2195430))))

(declare-fun e!3342589 () Bool)

(declare-fun e!3342585 () Bool)

(assert (=> b!5389611 (= e!3342589 e!3342585)))

(declare-fun b!5389612 () Bool)

(declare-fun res!2289907 () Bool)

(declare-fun e!3342587 () Bool)

(assert (=> b!5389612 (=> res!2289907 e!3342587)))

(declare-fun call!385806 () Bool)

(assert (=> b!5389612 (= res!2289907 call!385806)))

(declare-fun e!3342590 () Bool)

(assert (=> b!5389612 (= e!3342590 e!3342587)))

(declare-fun bm!385801 () Bool)

(declare-fun call!385807 () Bool)

(declare-fun c!939254 () Bool)

(assert (=> bm!385801 (= call!385807 (Exists!2312 (ite c!939254 lambda!279783 lambda!279784)))))

(declare-fun b!5389613 () Bool)

(assert (=> b!5389613 (= e!3342585 (= (_1!35633 lt!2195436) (Cons!61568 (c!938981 lt!2195430) Nil!61568)))))

(declare-fun bm!385802 () Bool)

(assert (=> bm!385802 (= call!385806 (isEmpty!33566 (_1!35633 lt!2195436)))))

(declare-fun b!5389614 () Bool)

(assert (=> b!5389614 (= e!3342588 e!3342590)))

(assert (=> b!5389614 (= c!939254 ((_ is Star!15131) lt!2195430))))

(declare-fun b!5389615 () Bool)

(declare-fun e!3342591 () Bool)

(assert (=> b!5389615 (= e!3342591 e!3342589)))

(declare-fun res!2289906 () Bool)

(assert (=> b!5389615 (= res!2289906 (not ((_ is EmptyLang!15131) lt!2195430)))))

(assert (=> b!5389615 (=> (not res!2289906) (not e!3342589))))

(declare-fun d!1723337 () Bool)

(declare-fun c!939253 () Bool)

(assert (=> d!1723337 (= c!939253 ((_ is EmptyExpr!15131) lt!2195430))))

(assert (=> d!1723337 (= (matchRSpec!2234 lt!2195430 (_1!35633 lt!2195436)) e!3342591)))

(declare-fun b!5389610 () Bool)

(assert (=> b!5389610 (= e!3342591 call!385806)))

(declare-fun b!5389616 () Bool)

(assert (=> b!5389616 (= e!3342586 (matchRSpec!2234 (regTwo!30775 lt!2195430) (_1!35633 lt!2195436)))))

(assert (=> b!5389617 (= e!3342590 call!385807)))

(assert (=> b!5389618 (= e!3342587 call!385807)))

(declare-fun b!5389619 () Bool)

(declare-fun c!939252 () Bool)

(assert (=> b!5389619 (= c!939252 ((_ is Union!15131) lt!2195430))))

(assert (=> b!5389619 (= e!3342585 e!3342588)))

(assert (= (and d!1723337 c!939253) b!5389610))

(assert (= (and d!1723337 (not c!939253)) b!5389615))

(assert (= (and b!5389615 res!2289906) b!5389611))

(assert (= (and b!5389611 c!939255) b!5389613))

(assert (= (and b!5389611 (not c!939255)) b!5389619))

(assert (= (and b!5389619 c!939252) b!5389609))

(assert (= (and b!5389619 (not c!939252)) b!5389614))

(assert (= (and b!5389609 (not res!2289905)) b!5389616))

(assert (= (and b!5389614 c!939254) b!5389612))

(assert (= (and b!5389614 (not c!939254)) b!5389617))

(assert (= (and b!5389612 (not res!2289907)) b!5389618))

(assert (= (or b!5389618 b!5389617) bm!385801))

(assert (= (or b!5389610 b!5389612) bm!385802))

(declare-fun m!6415656 () Bool)

(assert (=> b!5389609 m!6415656))

(declare-fun m!6415658 () Bool)

(assert (=> bm!385801 m!6415658))

(assert (=> bm!385802 m!6414540))

(declare-fun m!6415660 () Bool)

(assert (=> b!5389616 m!6415660))

(assert (=> b!5388654 d!1723337))

(declare-fun d!1723347 () Bool)

(declare-fun e!3342613 () Bool)

(assert (=> d!1723347 e!3342613))

(declare-fun res!2289928 () Bool)

(assert (=> d!1723347 (=> (not res!2289928) (not e!3342613))))

(declare-fun lt!2195659 () List!61692)

(assert (=> d!1723347 (= res!2289928 (= (content!11019 lt!2195659) ((_ map or) (content!11019 (_1!35633 lt!2195428)) (content!11019 (_2!35633 lt!2195428)))))))

(declare-fun e!3342614 () List!61692)

(assert (=> d!1723347 (= lt!2195659 e!3342614)))

(declare-fun c!939264 () Bool)

(assert (=> d!1723347 (= c!939264 ((_ is Nil!61568) (_1!35633 lt!2195428)))))

(assert (=> d!1723347 (= (++!13447 (_1!35633 lt!2195428) (_2!35633 lt!2195428)) lt!2195659)))

(declare-fun b!5389658 () Bool)

(declare-fun res!2289929 () Bool)

(assert (=> b!5389658 (=> (not res!2289929) (not e!3342613))))

(assert (=> b!5389658 (= res!2289929 (= (size!39815 lt!2195659) (+ (size!39815 (_1!35633 lt!2195428)) (size!39815 (_2!35633 lt!2195428)))))))

(declare-fun b!5389656 () Bool)

(assert (=> b!5389656 (= e!3342614 (_2!35633 lt!2195428))))

(declare-fun b!5389659 () Bool)

(assert (=> b!5389659 (= e!3342613 (or (not (= (_2!35633 lt!2195428) Nil!61568)) (= lt!2195659 (_1!35633 lt!2195428))))))

(declare-fun b!5389657 () Bool)

(assert (=> b!5389657 (= e!3342614 (Cons!61568 (h!68016 (_1!35633 lt!2195428)) (++!13447 (t!374915 (_1!35633 lt!2195428)) (_2!35633 lt!2195428))))))

(assert (= (and d!1723347 c!939264) b!5389656))

(assert (= (and d!1723347 (not c!939264)) b!5389657))

(assert (= (and d!1723347 res!2289928) b!5389658))

(assert (= (and b!5389658 res!2289929) b!5389659))

(declare-fun m!6415666 () Bool)

(assert (=> d!1723347 m!6415666))

(assert (=> d!1723347 m!6415164))

(assert (=> d!1723347 m!6415188))

(declare-fun m!6415668 () Bool)

(assert (=> b!5389658 m!6415668))

(assert (=> b!5389658 m!6415170))

(assert (=> b!5389658 m!6415192))

(declare-fun m!6415670 () Bool)

(assert (=> b!5389657 m!6415670))

(assert (=> b!5388654 d!1723347))

(declare-fun d!1723351 () Bool)

(assert (=> d!1723351 (= (matchR!7316 lt!2195430 (_1!35633 lt!2195436)) (matchRSpec!2234 lt!2195430 (_1!35633 lt!2195436)))))

(declare-fun lt!2195661 () Unit!154042)

(assert (=> d!1723351 (= lt!2195661 (choose!40535 lt!2195430 (_1!35633 lt!2195436)))))

(assert (=> d!1723351 (validRegex!6867 lt!2195430)))

(assert (=> d!1723351 (= (mainMatchTheorem!2234 lt!2195430 (_1!35633 lt!2195436)) lt!2195661)))

(declare-fun bs!1247177 () Bool)

(assert (= bs!1247177 d!1723351))

(assert (=> bs!1247177 m!6414556))

(assert (=> bs!1247177 m!6414492))

(declare-fun m!6415672 () Bool)

(assert (=> bs!1247177 m!6415672))

(assert (=> bs!1247177 m!6414800))

(assert (=> b!5388654 d!1723351))

(declare-fun d!1723353 () Bool)

(assert (=> d!1723353 (= (Exists!2312 lambda!279698) (choose!40529 lambda!279698))))

(declare-fun bs!1247178 () Bool)

(assert (= bs!1247178 d!1723353))

(declare-fun m!6415674 () Bool)

(assert (=> bs!1247178 m!6415674))

(assert (=> b!5388654 d!1723353))

(declare-fun b!5389674 () Bool)

(declare-fun res!2289938 () Bool)

(declare-fun e!3342627 () Bool)

(assert (=> b!5389674 (=> res!2289938 e!3342627)))

(declare-fun e!3342623 () Bool)

(assert (=> b!5389674 (= res!2289938 e!3342623)))

(declare-fun res!2289944 () Bool)

(assert (=> b!5389674 (=> (not res!2289944) (not e!3342623))))

(declare-fun lt!2195662 () Bool)

(assert (=> b!5389674 (= res!2289944 lt!2195662)))

(declare-fun d!1723355 () Bool)

(declare-fun e!3342624 () Bool)

(assert (=> d!1723355 e!3342624))

(declare-fun c!939269 () Bool)

(assert (=> d!1723355 (= c!939269 ((_ is EmptyExpr!15131) lt!2195430))))

(declare-fun e!3342626 () Bool)

(assert (=> d!1723355 (= lt!2195662 e!3342626)))

(declare-fun c!939268 () Bool)

(assert (=> d!1723355 (= c!939268 (isEmpty!33566 (_2!35633 lt!2195428)))))

(assert (=> d!1723355 (validRegex!6867 lt!2195430)))

(assert (=> d!1723355 (= (matchR!7316 lt!2195430 (_2!35633 lt!2195428)) lt!2195662)))

(declare-fun bm!385808 () Bool)

(declare-fun call!385813 () Bool)

(assert (=> bm!385808 (= call!385813 (isEmpty!33566 (_2!35633 lt!2195428)))))

(declare-fun b!5389675 () Bool)

(declare-fun e!3342625 () Bool)

(assert (=> b!5389675 (= e!3342624 e!3342625)))

(declare-fun c!939270 () Bool)

(assert (=> b!5389675 (= c!939270 ((_ is EmptyLang!15131) lt!2195430))))

(declare-fun b!5389676 () Bool)

(declare-fun e!3342622 () Bool)

(assert (=> b!5389676 (= e!3342627 e!3342622)))

(declare-fun res!2289943 () Bool)

(assert (=> b!5389676 (=> (not res!2289943) (not e!3342622))))

(assert (=> b!5389676 (= res!2289943 (not lt!2195662))))

(declare-fun b!5389677 () Bool)

(assert (=> b!5389677 (= e!3342626 (nullable!5300 lt!2195430))))

(declare-fun b!5389678 () Bool)

(declare-fun res!2289940 () Bool)

(assert (=> b!5389678 (=> res!2289940 e!3342627)))

(assert (=> b!5389678 (= res!2289940 (not ((_ is ElementMatch!15131) lt!2195430)))))

(assert (=> b!5389678 (= e!3342625 e!3342627)))

(declare-fun b!5389679 () Bool)

(declare-fun res!2289942 () Bool)

(assert (=> b!5389679 (=> (not res!2289942) (not e!3342623))))

(assert (=> b!5389679 (= res!2289942 (not call!385813))))

(declare-fun b!5389680 () Bool)

(assert (=> b!5389680 (= e!3342626 (matchR!7316 (derivativeStep!4241 lt!2195430 (head!11559 (_2!35633 lt!2195428))) (tail!10656 (_2!35633 lt!2195428))))))

(declare-fun b!5389681 () Bool)

(declare-fun e!3342628 () Bool)

(assert (=> b!5389681 (= e!3342628 (not (= (head!11559 (_2!35633 lt!2195428)) (c!938981 lt!2195430))))))

(declare-fun b!5389682 () Bool)

(assert (=> b!5389682 (= e!3342625 (not lt!2195662))))

(declare-fun b!5389683 () Bool)

(assert (=> b!5389683 (= e!3342624 (= lt!2195662 call!385813))))

(declare-fun b!5389684 () Bool)

(assert (=> b!5389684 (= e!3342623 (= (head!11559 (_2!35633 lt!2195428)) (c!938981 lt!2195430)))))

(declare-fun b!5389685 () Bool)

(declare-fun res!2289939 () Bool)

(assert (=> b!5389685 (=> res!2289939 e!3342628)))

(assert (=> b!5389685 (= res!2289939 (not (isEmpty!33566 (tail!10656 (_2!35633 lt!2195428)))))))

(declare-fun b!5389686 () Bool)

(assert (=> b!5389686 (= e!3342622 e!3342628)))

(declare-fun res!2289945 () Bool)

(assert (=> b!5389686 (=> res!2289945 e!3342628)))

(assert (=> b!5389686 (= res!2289945 call!385813)))

(declare-fun b!5389687 () Bool)

(declare-fun res!2289941 () Bool)

(assert (=> b!5389687 (=> (not res!2289941) (not e!3342623))))

(assert (=> b!5389687 (= res!2289941 (isEmpty!33566 (tail!10656 (_2!35633 lt!2195428))))))

(assert (= (and d!1723355 c!939268) b!5389677))

(assert (= (and d!1723355 (not c!939268)) b!5389680))

(assert (= (and d!1723355 c!939269) b!5389683))

(assert (= (and d!1723355 (not c!939269)) b!5389675))

(assert (= (and b!5389675 c!939270) b!5389682))

(assert (= (and b!5389675 (not c!939270)) b!5389678))

(assert (= (and b!5389678 (not res!2289940)) b!5389674))

(assert (= (and b!5389674 res!2289944) b!5389679))

(assert (= (and b!5389679 res!2289942) b!5389687))

(assert (= (and b!5389687 res!2289941) b!5389684))

(assert (= (and b!5389674 (not res!2289938)) b!5389676))

(assert (= (and b!5389676 res!2289943) b!5389686))

(assert (= (and b!5389686 (not res!2289945)) b!5389685))

(assert (= (and b!5389685 (not res!2289939)) b!5389681))

(assert (= (or b!5389683 b!5389679 b!5389686) bm!385808))

(declare-fun m!6415688 () Bool)

(assert (=> b!5389681 m!6415688))

(declare-fun m!6415690 () Bool)

(assert (=> bm!385808 m!6415690))

(assert (=> b!5389684 m!6415688))

(declare-fun m!6415692 () Bool)

(assert (=> b!5389687 m!6415692))

(assert (=> b!5389687 m!6415692))

(declare-fun m!6415694 () Bool)

(assert (=> b!5389687 m!6415694))

(assert (=> b!5389680 m!6415688))

(assert (=> b!5389680 m!6415688))

(declare-fun m!6415696 () Bool)

(assert (=> b!5389680 m!6415696))

(assert (=> b!5389680 m!6415692))

(assert (=> b!5389680 m!6415696))

(assert (=> b!5389680 m!6415692))

(declare-fun m!6415702 () Bool)

(assert (=> b!5389680 m!6415702))

(assert (=> b!5389685 m!6415692))

(assert (=> b!5389685 m!6415692))

(assert (=> b!5389685 m!6415694))

(assert (=> d!1723355 m!6415690))

(assert (=> d!1723355 m!6414800))

(assert (=> b!5389677 m!6414802))

(assert (=> b!5388653 d!1723355))

(declare-fun e!3342641 () Bool)

(declare-fun d!1723363 () Bool)

(assert (=> d!1723363 (= (matchZipper!1375 ((_ map or) lt!2195476 lt!2195418) (t!374915 s!2326)) e!3342641)))

(declare-fun res!2289957 () Bool)

(assert (=> d!1723363 (=> res!2289957 e!3342641)))

(assert (=> d!1723363 (= res!2289957 (matchZipper!1375 lt!2195476 (t!374915 s!2326)))))

(declare-fun lt!2195668 () Unit!154042)

(declare-fun choose!40545 ((InoxSet Context!9030) (InoxSet Context!9030) List!61692) Unit!154042)

(assert (=> d!1723363 (= lt!2195668 (choose!40545 lt!2195476 lt!2195418 (t!374915 s!2326)))))

(assert (=> d!1723363 (= (lemmaZipperConcatMatchesSameAsBothZippers!368 lt!2195476 lt!2195418 (t!374915 s!2326)) lt!2195668)))

(declare-fun b!5389711 () Bool)

(assert (=> b!5389711 (= e!3342641 (matchZipper!1375 lt!2195418 (t!374915 s!2326)))))

(assert (= (and d!1723363 (not res!2289957)) b!5389711))

(assert (=> d!1723363 m!6414624))

(assert (=> d!1723363 m!6414622))

(declare-fun m!6415728 () Bool)

(assert (=> d!1723363 m!6415728))

(assert (=> b!5389711 m!6414610))

(assert (=> b!5388677 d!1723363))

(declare-fun d!1723373 () Bool)

(declare-fun c!939278 () Bool)

(assert (=> d!1723373 (= c!939278 (isEmpty!33566 (t!374915 s!2326)))))

(declare-fun e!3342642 () Bool)

(assert (=> d!1723373 (= (matchZipper!1375 lt!2195476 (t!374915 s!2326)) e!3342642)))

(declare-fun b!5389712 () Bool)

(assert (=> b!5389712 (= e!3342642 (nullableZipper!1420 lt!2195476))))

(declare-fun b!5389713 () Bool)

(assert (=> b!5389713 (= e!3342642 (matchZipper!1375 (derivationStepZipper!1370 lt!2195476 (head!11559 (t!374915 s!2326))) (tail!10656 (t!374915 s!2326))))))

(assert (= (and d!1723373 c!939278) b!5389712))

(assert (= (and d!1723373 (not c!939278)) b!5389713))

(assert (=> d!1723373 m!6414982))

(declare-fun m!6415730 () Bool)

(assert (=> b!5389712 m!6415730))

(assert (=> b!5389713 m!6414986))

(assert (=> b!5389713 m!6414986))

(declare-fun m!6415732 () Bool)

(assert (=> b!5389713 m!6415732))

(assert (=> b!5389713 m!6414990))

(assert (=> b!5389713 m!6415732))

(assert (=> b!5389713 m!6414990))

(declare-fun m!6415734 () Bool)

(assert (=> b!5389713 m!6415734))

(assert (=> b!5388677 d!1723373))

(declare-fun d!1723375 () Bool)

(declare-fun c!939279 () Bool)

(assert (=> d!1723375 (= c!939279 (isEmpty!33566 (t!374915 s!2326)))))

(declare-fun e!3342643 () Bool)

(assert (=> d!1723375 (= (matchZipper!1375 ((_ map or) lt!2195476 lt!2195418) (t!374915 s!2326)) e!3342643)))

(declare-fun b!5389714 () Bool)

(assert (=> b!5389714 (= e!3342643 (nullableZipper!1420 ((_ map or) lt!2195476 lt!2195418)))))

(declare-fun b!5389715 () Bool)

(assert (=> b!5389715 (= e!3342643 (matchZipper!1375 (derivationStepZipper!1370 ((_ map or) lt!2195476 lt!2195418) (head!11559 (t!374915 s!2326))) (tail!10656 (t!374915 s!2326))))))

(assert (= (and d!1723375 c!939279) b!5389714))

(assert (= (and d!1723375 (not c!939279)) b!5389715))

(assert (=> d!1723375 m!6414982))

(declare-fun m!6415736 () Bool)

(assert (=> b!5389714 m!6415736))

(assert (=> b!5389715 m!6414986))

(assert (=> b!5389715 m!6414986))

(declare-fun m!6415738 () Bool)

(assert (=> b!5389715 m!6415738))

(assert (=> b!5389715 m!6414990))

(assert (=> b!5389715 m!6415738))

(assert (=> b!5389715 m!6414990))

(declare-fun m!6415740 () Bool)

(assert (=> b!5389715 m!6415740))

(assert (=> b!5388677 d!1723375))

(declare-fun bs!1247195 () Bool)

(declare-fun b!5389725 () Bool)

(assert (= bs!1247195 (and b!5389725 b!5389245)))

(declare-fun lambda!279789 () Int)

(assert (=> bs!1247195 (= (and (= (reg!15460 lt!2195449) (reg!15460 r!7292)) (= lt!2195449 r!7292)) (= lambda!279789 lambda!279746))))

(declare-fun bs!1247196 () Bool)

(assert (= bs!1247196 (and b!5389725 d!1723329)))

(assert (=> bs!1247196 (not (= lambda!279789 lambda!279782))))

(declare-fun bs!1247197 () Bool)

(assert (= bs!1247197 (and b!5389725 b!5389618)))

(assert (=> bs!1247197 (= (and (= s!2326 (_1!35633 lt!2195436)) (= (reg!15460 lt!2195449) (reg!15460 lt!2195430)) (= lt!2195449 lt!2195430)) (= lambda!279789 lambda!279783))))

(declare-fun bs!1247198 () Bool)

(assert (= bs!1247198 (and b!5389725 d!1723151)))

(assert (=> bs!1247198 (not (= lambda!279789 lambda!279732))))

(declare-fun bs!1247200 () Bool)

(assert (= bs!1247200 (and b!5389725 d!1723165)))

(assert (=> bs!1247200 (not (= lambda!279789 lambda!279733))))

(declare-fun bs!1247201 () Bool)

(assert (= bs!1247201 (and b!5389725 b!5389244)))

(assert (=> bs!1247201 (not (= lambda!279789 lambda!279747))))

(declare-fun bs!1247202 () Bool)

(assert (= bs!1247202 (and b!5389725 b!5388654)))

(assert (=> bs!1247202 (not (= lambda!279789 lambda!279700))))

(declare-fun bs!1247203 () Bool)

(assert (= bs!1247203 (and b!5389725 d!1723317)))

(assert (=> bs!1247203 (not (= lambda!279789 lambda!279780))))

(declare-fun bs!1247204 () Bool)

(assert (= bs!1247204 (and b!5389725 b!5388639)))

(assert (=> bs!1247204 (not (= lambda!279789 lambda!279697))))

(declare-fun bs!1247205 () Bool)

(assert (= bs!1247205 (and b!5389725 d!1723107)))

(assert (=> bs!1247205 (not (= lambda!279789 lambda!279721))))

(assert (=> bs!1247202 (not (= lambda!279789 lambda!279698))))

(assert (=> bs!1247202 (= (and (= s!2326 (_1!35633 lt!2195436)) (= (reg!15460 lt!2195449) (reg!15460 (regOne!30774 r!7292))) (= lt!2195449 lt!2195430)) (= lambda!279789 lambda!279699))))

(declare-fun bs!1247206 () Bool)

(assert (= bs!1247206 (and b!5389725 b!5389617)))

(assert (=> bs!1247206 (not (= lambda!279789 lambda!279784))))

(assert (=> bs!1247204 (not (= lambda!279789 lambda!279696))))

(assert (=> bs!1247196 (not (= lambda!279789 lambda!279781))))

(declare-fun bs!1247209 () Bool)

(assert (= bs!1247209 (and b!5389725 b!5388665)))

(assert (=> bs!1247209 (not (= lambda!279789 lambda!279693))))

(declare-fun bs!1247211 () Bool)

(assert (= bs!1247211 (and b!5389725 d!1723111)))

(assert (=> bs!1247211 (not (= lambda!279789 lambda!279731))))

(declare-fun bs!1247212 () Bool)

(assert (= bs!1247212 (and b!5389725 d!1723305)))

(assert (=> bs!1247212 (= (and (= s!2326 (_1!35633 lt!2195436)) (= (reg!15460 lt!2195449) (reg!15460 (regOne!30774 r!7292))) (= lt!2195449 (Star!15131 (reg!15460 (regOne!30774 r!7292))))) (= lambda!279789 lambda!279778))))

(assert (=> bs!1247209 (not (= lambda!279789 lambda!279694))))

(assert (=> bs!1247212 (not (= lambda!279789 lambda!279775))))

(assert (=> bs!1247211 (not (= lambda!279789 lambda!279730))))

(assert (=> bs!1247200 (not (= lambda!279789 lambda!279734))))

(assert (=> b!5389725 true))

(assert (=> b!5389725 true))

(declare-fun bs!1247220 () Bool)

(declare-fun b!5389724 () Bool)

(assert (= bs!1247220 (and b!5389724 b!5389245)))

(declare-fun lambda!279791 () Int)

(assert (=> bs!1247220 (not (= lambda!279791 lambda!279746))))

(declare-fun bs!1247222 () Bool)

(assert (= bs!1247222 (and b!5389724 d!1723329)))

(assert (=> bs!1247222 (= (and (= s!2326 (_1!35633 lt!2195436)) (= (regOne!30774 lt!2195449) (reg!15460 (regOne!30774 r!7292))) (= (regTwo!30774 lt!2195449) lt!2195430)) (= lambda!279791 lambda!279782))))

(declare-fun bs!1247224 () Bool)

(assert (= bs!1247224 (and b!5389724 b!5389618)))

(assert (=> bs!1247224 (not (= lambda!279791 lambda!279783))))

(declare-fun bs!1247225 () Bool)

(assert (= bs!1247225 (and b!5389724 d!1723165)))

(assert (=> bs!1247225 (not (= lambda!279791 lambda!279733))))

(declare-fun bs!1247226 () Bool)

(assert (= bs!1247226 (and b!5389724 b!5389244)))

(assert (=> bs!1247226 (= (and (= (regOne!30774 lt!2195449) (regOne!30774 r!7292)) (= (regTwo!30774 lt!2195449) (regTwo!30774 r!7292))) (= lambda!279791 lambda!279747))))

(declare-fun bs!1247227 () Bool)

(assert (= bs!1247227 (and b!5389724 b!5388654)))

(assert (=> bs!1247227 (= (and (= s!2326 (_1!35633 lt!2195436)) (= (regOne!30774 lt!2195449) (reg!15460 (regOne!30774 r!7292))) (= (regTwo!30774 lt!2195449) lt!2195430)) (= lambda!279791 lambda!279700))))

(declare-fun bs!1247228 () Bool)

(assert (= bs!1247228 (and b!5389724 d!1723317)))

(assert (=> bs!1247228 (not (= lambda!279791 lambda!279780))))

(declare-fun bs!1247229 () Bool)

(assert (= bs!1247229 (and b!5389724 b!5388639)))

(assert (=> bs!1247229 (= (and (= (regOne!30774 lt!2195449) lt!2195430) (= (regTwo!30774 lt!2195449) (regTwo!30774 r!7292))) (= lambda!279791 lambda!279697))))

(declare-fun bs!1247230 () Bool)

(assert (= bs!1247230 (and b!5389724 d!1723107)))

(assert (=> bs!1247230 (not (= lambda!279791 lambda!279721))))

(assert (=> bs!1247227 (not (= lambda!279791 lambda!279698))))

(assert (=> bs!1247227 (not (= lambda!279791 lambda!279699))))

(declare-fun bs!1247233 () Bool)

(assert (= bs!1247233 (and b!5389724 b!5389617)))

(assert (=> bs!1247233 (= (and (= s!2326 (_1!35633 lt!2195436)) (= (regOne!30774 lt!2195449) (regOne!30774 lt!2195430)) (= (regTwo!30774 lt!2195449) (regTwo!30774 lt!2195430))) (= lambda!279791 lambda!279784))))

(assert (=> bs!1247229 (not (= lambda!279791 lambda!279696))))

(assert (=> bs!1247222 (not (= lambda!279791 lambda!279781))))

(declare-fun bs!1247236 () Bool)

(assert (= bs!1247236 (and b!5389724 b!5388665)))

(assert (=> bs!1247236 (not (= lambda!279791 lambda!279693))))

(declare-fun bs!1247238 () Bool)

(assert (= bs!1247238 (and b!5389724 b!5389725)))

(assert (=> bs!1247238 (not (= lambda!279791 lambda!279789))))

(declare-fun bs!1247240 () Bool)

(assert (= bs!1247240 (and b!5389724 d!1723151)))

(assert (=> bs!1247240 (not (= lambda!279791 lambda!279732))))

(declare-fun bs!1247242 () Bool)

(assert (= bs!1247242 (and b!5389724 d!1723111)))

(assert (=> bs!1247242 (= (and (= (regOne!30774 lt!2195449) (regOne!30774 r!7292)) (= (regTwo!30774 lt!2195449) (regTwo!30774 r!7292))) (= lambda!279791 lambda!279731))))

(declare-fun bs!1247244 () Bool)

(assert (= bs!1247244 (and b!5389724 d!1723305)))

(assert (=> bs!1247244 (not (= lambda!279791 lambda!279778))))

(assert (=> bs!1247236 (= (and (= (regOne!30774 lt!2195449) (regOne!30774 r!7292)) (= (regTwo!30774 lt!2195449) (regTwo!30774 r!7292))) (= lambda!279791 lambda!279694))))

(assert (=> bs!1247244 (not (= lambda!279791 lambda!279775))))

(assert (=> bs!1247242 (not (= lambda!279791 lambda!279730))))

(assert (=> bs!1247225 (= (and (= (regOne!30774 lt!2195449) lt!2195430) (= (regTwo!30774 lt!2195449) (regTwo!30774 r!7292))) (= lambda!279791 lambda!279734))))

(assert (=> b!5389724 true))

(assert (=> b!5389724 true))

(declare-fun b!5389716 () Bool)

(declare-fun e!3342647 () Bool)

(declare-fun e!3342645 () Bool)

(assert (=> b!5389716 (= e!3342647 e!3342645)))

(declare-fun res!2289958 () Bool)

(assert (=> b!5389716 (= res!2289958 (matchRSpec!2234 (regOne!30775 lt!2195449) s!2326))))

(assert (=> b!5389716 (=> res!2289958 e!3342645)))

(declare-fun b!5389718 () Bool)

(declare-fun c!939283 () Bool)

(assert (=> b!5389718 (= c!939283 ((_ is ElementMatch!15131) lt!2195449))))

(declare-fun e!3342648 () Bool)

(declare-fun e!3342644 () Bool)

(assert (=> b!5389718 (= e!3342648 e!3342644)))

(declare-fun b!5389719 () Bool)

(declare-fun res!2289960 () Bool)

(declare-fun e!3342646 () Bool)

(assert (=> b!5389719 (=> res!2289960 e!3342646)))

(declare-fun call!385816 () Bool)

(assert (=> b!5389719 (= res!2289960 call!385816)))

(declare-fun e!3342649 () Bool)

(assert (=> b!5389719 (= e!3342649 e!3342646)))

(declare-fun c!939282 () Bool)

(declare-fun bm!385811 () Bool)

(declare-fun call!385817 () Bool)

(assert (=> bm!385811 (= call!385817 (Exists!2312 (ite c!939282 lambda!279789 lambda!279791)))))

(declare-fun b!5389720 () Bool)

(assert (=> b!5389720 (= e!3342644 (= s!2326 (Cons!61568 (c!938981 lt!2195449) Nil!61568)))))

(declare-fun bm!385812 () Bool)

(assert (=> bm!385812 (= call!385816 (isEmpty!33566 s!2326))))

(declare-fun b!5389721 () Bool)

(assert (=> b!5389721 (= e!3342647 e!3342649)))

(assert (=> b!5389721 (= c!939282 ((_ is Star!15131) lt!2195449))))

(declare-fun b!5389722 () Bool)

(declare-fun e!3342650 () Bool)

(assert (=> b!5389722 (= e!3342650 e!3342648)))

(declare-fun res!2289959 () Bool)

(assert (=> b!5389722 (= res!2289959 (not ((_ is EmptyLang!15131) lt!2195449)))))

(assert (=> b!5389722 (=> (not res!2289959) (not e!3342648))))

(declare-fun d!1723377 () Bool)

(declare-fun c!939281 () Bool)

(assert (=> d!1723377 (= c!939281 ((_ is EmptyExpr!15131) lt!2195449))))

(assert (=> d!1723377 (= (matchRSpec!2234 lt!2195449 s!2326) e!3342650)))

(declare-fun b!5389717 () Bool)

(assert (=> b!5389717 (= e!3342650 call!385816)))

(declare-fun b!5389723 () Bool)

(assert (=> b!5389723 (= e!3342645 (matchRSpec!2234 (regTwo!30775 lt!2195449) s!2326))))

(assert (=> b!5389724 (= e!3342649 call!385817)))

(assert (=> b!5389725 (= e!3342646 call!385817)))

(declare-fun b!5389726 () Bool)

(declare-fun c!939280 () Bool)

(assert (=> b!5389726 (= c!939280 ((_ is Union!15131) lt!2195449))))

(assert (=> b!5389726 (= e!3342644 e!3342647)))

(assert (= (and d!1723377 c!939281) b!5389717))

(assert (= (and d!1723377 (not c!939281)) b!5389722))

(assert (= (and b!5389722 res!2289959) b!5389718))

(assert (= (and b!5389718 c!939283) b!5389720))

(assert (= (and b!5389718 (not c!939283)) b!5389726))

(assert (= (and b!5389726 c!939280) b!5389716))

(assert (= (and b!5389726 (not c!939280)) b!5389721))

(assert (= (and b!5389716 (not res!2289958)) b!5389723))

(assert (= (and b!5389721 c!939282) b!5389719))

(assert (= (and b!5389721 (not c!939282)) b!5389724))

(assert (= (and b!5389719 (not res!2289960)) b!5389725))

(assert (= (or b!5389725 b!5389724) bm!385811))

(assert (= (or b!5389717 b!5389719) bm!385812))

(declare-fun m!6415748 () Bool)

(assert (=> b!5389716 m!6415748))

(declare-fun m!6415750 () Bool)

(assert (=> bm!385811 m!6415750))

(assert (=> bm!385812 m!6414970))

(declare-fun m!6415752 () Bool)

(assert (=> b!5389723 m!6415752))

(assert (=> b!5388656 d!1723377))

(declare-fun b!5389738 () Bool)

(declare-fun res!2289964 () Bool)

(declare-fun e!3342663 () Bool)

(assert (=> b!5389738 (=> res!2289964 e!3342663)))

(declare-fun e!3342659 () Bool)

(assert (=> b!5389738 (= res!2289964 e!3342659)))

(declare-fun res!2289970 () Bool)

(assert (=> b!5389738 (=> (not res!2289970) (not e!3342659))))

(declare-fun lt!2195669 () Bool)

(assert (=> b!5389738 (= res!2289970 lt!2195669)))

(declare-fun d!1723381 () Bool)

(declare-fun e!3342660 () Bool)

(assert (=> d!1723381 e!3342660))

(declare-fun c!939289 () Bool)

(assert (=> d!1723381 (= c!939289 ((_ is EmptyExpr!15131) lt!2195449))))

(declare-fun e!3342662 () Bool)

(assert (=> d!1723381 (= lt!2195669 e!3342662)))

(declare-fun c!939288 () Bool)

(assert (=> d!1723381 (= c!939288 (isEmpty!33566 s!2326))))

(assert (=> d!1723381 (validRegex!6867 lt!2195449)))

(assert (=> d!1723381 (= (matchR!7316 lt!2195449 s!2326) lt!2195669)))

(declare-fun bm!385815 () Bool)

(declare-fun call!385820 () Bool)

(assert (=> bm!385815 (= call!385820 (isEmpty!33566 s!2326))))

(declare-fun b!5389739 () Bool)

(declare-fun e!3342661 () Bool)

(assert (=> b!5389739 (= e!3342660 e!3342661)))

(declare-fun c!939290 () Bool)

(assert (=> b!5389739 (= c!939290 ((_ is EmptyLang!15131) lt!2195449))))

(declare-fun b!5389740 () Bool)

(declare-fun e!3342658 () Bool)

(assert (=> b!5389740 (= e!3342663 e!3342658)))

(declare-fun res!2289969 () Bool)

(assert (=> b!5389740 (=> (not res!2289969) (not e!3342658))))

(assert (=> b!5389740 (= res!2289969 (not lt!2195669))))

(declare-fun b!5389741 () Bool)

(assert (=> b!5389741 (= e!3342662 (nullable!5300 lt!2195449))))

(declare-fun b!5389742 () Bool)

(declare-fun res!2289966 () Bool)

(assert (=> b!5389742 (=> res!2289966 e!3342663)))

(assert (=> b!5389742 (= res!2289966 (not ((_ is ElementMatch!15131) lt!2195449)))))

(assert (=> b!5389742 (= e!3342661 e!3342663)))

(declare-fun b!5389743 () Bool)

(declare-fun res!2289968 () Bool)

(assert (=> b!5389743 (=> (not res!2289968) (not e!3342659))))

(assert (=> b!5389743 (= res!2289968 (not call!385820))))

(declare-fun b!5389744 () Bool)

(assert (=> b!5389744 (= e!3342662 (matchR!7316 (derivativeStep!4241 lt!2195449 (head!11559 s!2326)) (tail!10656 s!2326)))))

(declare-fun b!5389745 () Bool)

(declare-fun e!3342664 () Bool)

(assert (=> b!5389745 (= e!3342664 (not (= (head!11559 s!2326) (c!938981 lt!2195449))))))

(declare-fun b!5389746 () Bool)

(assert (=> b!5389746 (= e!3342661 (not lt!2195669))))

(declare-fun b!5389747 () Bool)

(assert (=> b!5389747 (= e!3342660 (= lt!2195669 call!385820))))

(declare-fun b!5389748 () Bool)

(assert (=> b!5389748 (= e!3342659 (= (head!11559 s!2326) (c!938981 lt!2195449)))))

(declare-fun b!5389749 () Bool)

(declare-fun res!2289965 () Bool)

(assert (=> b!5389749 (=> res!2289965 e!3342664)))

(assert (=> b!5389749 (= res!2289965 (not (isEmpty!33566 (tail!10656 s!2326))))))

(declare-fun b!5389750 () Bool)

(assert (=> b!5389750 (= e!3342658 e!3342664)))

(declare-fun res!2289971 () Bool)

(assert (=> b!5389750 (=> res!2289971 e!3342664)))

(assert (=> b!5389750 (= res!2289971 call!385820)))

(declare-fun b!5389751 () Bool)

(declare-fun res!2289967 () Bool)

(assert (=> b!5389751 (=> (not res!2289967) (not e!3342659))))

(assert (=> b!5389751 (= res!2289967 (isEmpty!33566 (tail!10656 s!2326)))))

(assert (= (and d!1723381 c!939288) b!5389741))

(assert (= (and d!1723381 (not c!939288)) b!5389744))

(assert (= (and d!1723381 c!939289) b!5389747))

(assert (= (and d!1723381 (not c!939289)) b!5389739))

(assert (= (and b!5389739 c!939290) b!5389746))

(assert (= (and b!5389739 (not c!939290)) b!5389742))

(assert (= (and b!5389742 (not res!2289966)) b!5389738))

(assert (= (and b!5389738 res!2289970) b!5389743))

(assert (= (and b!5389743 res!2289968) b!5389751))

(assert (= (and b!5389751 res!2289967) b!5389748))

(assert (= (and b!5389738 (not res!2289964)) b!5389740))

(assert (= (and b!5389740 res!2289969) b!5389750))

(assert (= (and b!5389750 (not res!2289971)) b!5389749))

(assert (= (and b!5389749 (not res!2289965)) b!5389745))

(assert (= (or b!5389747 b!5389743 b!5389750) bm!385815))

(assert (=> b!5389745 m!6414974))

(assert (=> bm!385815 m!6414970))

(assert (=> b!5389748 m!6414974))

(assert (=> b!5389751 m!6414978))

(assert (=> b!5389751 m!6414978))

(assert (=> b!5389751 m!6415132))

(assert (=> b!5389744 m!6414974))

(assert (=> b!5389744 m!6414974))

(declare-fun m!6415762 () Bool)

(assert (=> b!5389744 m!6415762))

(assert (=> b!5389744 m!6414978))

(assert (=> b!5389744 m!6415762))

(assert (=> b!5389744 m!6414978))

(declare-fun m!6415764 () Bool)

(assert (=> b!5389744 m!6415764))

(assert (=> b!5389749 m!6414978))

(assert (=> b!5389749 m!6414978))

(assert (=> b!5389749 m!6415132))

(assert (=> d!1723381 m!6414970))

(assert (=> d!1723381 m!6414582))

(assert (=> b!5389741 m!6415422))

(assert (=> b!5388656 d!1723381))

(declare-fun d!1723387 () Bool)

(assert (=> d!1723387 (= (matchR!7316 lt!2195449 s!2326) (matchRSpec!2234 lt!2195449 s!2326))))

(declare-fun lt!2195670 () Unit!154042)

(assert (=> d!1723387 (= lt!2195670 (choose!40535 lt!2195449 s!2326))))

(assert (=> d!1723387 (validRegex!6867 lt!2195449)))

(assert (=> d!1723387 (= (mainMatchTheorem!2234 lt!2195449 s!2326) lt!2195670)))

(declare-fun bs!1247251 () Bool)

(assert (= bs!1247251 d!1723387))

(assert (=> bs!1247251 m!6414466))

(assert (=> bs!1247251 m!6414464))

(declare-fun m!6415766 () Bool)

(assert (=> bs!1247251 m!6415766))

(assert (=> bs!1247251 m!6414582))

(assert (=> b!5388656 d!1723387))

(declare-fun d!1723389 () Bool)

(assert (=> d!1723389 (= (isEmpty!33568 (t!374916 (exprs!5015 (h!68018 zl!343)))) ((_ is Nil!61569) (t!374916 (exprs!5015 (h!68018 zl!343)))))))

(assert (=> b!5388676 d!1723389))

(declare-fun bs!1247252 () Bool)

(declare-fun d!1723391 () Bool)

(assert (= bs!1247252 (and d!1723391 d!1723213)))

(declare-fun lambda!279793 () Int)

(assert (=> bs!1247252 (= lambda!279793 lambda!279759)))

(declare-fun bs!1247253 () Bool)

(assert (= bs!1247253 (and d!1723391 d!1723293)))

(assert (=> bs!1247253 (= lambda!279793 lambda!279769)))

(declare-fun bs!1247254 () Bool)

(assert (= bs!1247254 (and d!1723391 d!1723207)))

(assert (=> bs!1247254 (= lambda!279793 lambda!279754)))

(declare-fun bs!1247255 () Bool)

(assert (= bs!1247255 (and d!1723391 b!5388660)))

(assert (=> bs!1247255 (= lambda!279793 lambda!279701)))

(declare-fun bs!1247256 () Bool)

(assert (= bs!1247256 (and d!1723391 d!1723069)))

(assert (=> bs!1247256 (= lambda!279793 lambda!279707)))

(declare-fun bs!1247257 () Bool)

(assert (= bs!1247257 (and d!1723391 d!1723061)))

(assert (=> bs!1247257 (= lambda!279793 lambda!279704)))

(assert (=> d!1723391 (= (inv!81074 setElem!34997) (forall!14512 (exprs!5015 setElem!34997) lambda!279793))))

(declare-fun bs!1247258 () Bool)

(assert (= bs!1247258 d!1723391))

(declare-fun m!6415768 () Bool)

(assert (=> bs!1247258 m!6415768))

(assert (=> setNonEmpty!34997 d!1723391))

(declare-fun b!5389756 () Bool)

(declare-fun e!3342667 () Bool)

(declare-fun tp!1492466 () Bool)

(declare-fun tp!1492467 () Bool)

(assert (=> b!5389756 (= e!3342667 (and tp!1492466 tp!1492467))))

(assert (=> b!5388659 (= tp!1492452 e!3342667)))

(assert (= (and b!5388659 ((_ is Cons!61569) (exprs!5015 setElem!34997))) b!5389756))

(declare-fun b!5389769 () Bool)

(declare-fun e!3342670 () Bool)

(declare-fun tp!1492482 () Bool)

(assert (=> b!5389769 (= e!3342670 tp!1492482)))

(declare-fun b!5389767 () Bool)

(assert (=> b!5389767 (= e!3342670 tp_is_empty!39515)))

(declare-fun b!5389770 () Bool)

(declare-fun tp!1492481 () Bool)

(declare-fun tp!1492478 () Bool)

(assert (=> b!5389770 (= e!3342670 (and tp!1492481 tp!1492478))))

(assert (=> b!5388664 (= tp!1492459 e!3342670)))

(declare-fun b!5389768 () Bool)

(declare-fun tp!1492480 () Bool)

(declare-fun tp!1492479 () Bool)

(assert (=> b!5389768 (= e!3342670 (and tp!1492480 tp!1492479))))

(assert (= (and b!5388664 ((_ is ElementMatch!15131) (regOne!30775 r!7292))) b!5389767))

(assert (= (and b!5388664 ((_ is Concat!23976) (regOne!30775 r!7292))) b!5389768))

(assert (= (and b!5388664 ((_ is Star!15131) (regOne!30775 r!7292))) b!5389769))

(assert (= (and b!5388664 ((_ is Union!15131) (regOne!30775 r!7292))) b!5389770))

(declare-fun b!5389773 () Bool)

(declare-fun e!3342671 () Bool)

(declare-fun tp!1492487 () Bool)

(assert (=> b!5389773 (= e!3342671 tp!1492487)))

(declare-fun b!5389771 () Bool)

(assert (=> b!5389771 (= e!3342671 tp_is_empty!39515)))

(declare-fun b!5389774 () Bool)

(declare-fun tp!1492486 () Bool)

(declare-fun tp!1492483 () Bool)

(assert (=> b!5389774 (= e!3342671 (and tp!1492486 tp!1492483))))

(assert (=> b!5388664 (= tp!1492457 e!3342671)))

(declare-fun b!5389772 () Bool)

(declare-fun tp!1492485 () Bool)

(declare-fun tp!1492484 () Bool)

(assert (=> b!5389772 (= e!3342671 (and tp!1492485 tp!1492484))))

(assert (= (and b!5388664 ((_ is ElementMatch!15131) (regTwo!30775 r!7292))) b!5389771))

(assert (= (and b!5388664 ((_ is Concat!23976) (regTwo!30775 r!7292))) b!5389772))

(assert (= (and b!5388664 ((_ is Star!15131) (regTwo!30775 r!7292))) b!5389773))

(assert (= (and b!5388664 ((_ is Union!15131) (regTwo!30775 r!7292))) b!5389774))

(declare-fun b!5389775 () Bool)

(declare-fun e!3342672 () Bool)

(declare-fun tp!1492488 () Bool)

(declare-fun tp!1492489 () Bool)

(assert (=> b!5389775 (= e!3342672 (and tp!1492488 tp!1492489))))

(assert (=> b!5388678 (= tp!1492454 e!3342672)))

(assert (= (and b!5388678 ((_ is Cons!61569) (exprs!5015 (h!68018 zl!343)))) b!5389775))

(declare-fun b!5389780 () Bool)

(declare-fun e!3342675 () Bool)

(declare-fun tp!1492492 () Bool)

(assert (=> b!5389780 (= e!3342675 (and tp_is_empty!39515 tp!1492492))))

(assert (=> b!5388641 (= tp!1492460 e!3342675)))

(assert (= (and b!5388641 ((_ is Cons!61568) (t!374915 s!2326))) b!5389780))

(declare-fun b!5389788 () Bool)

(declare-fun e!3342681 () Bool)

(declare-fun tp!1492497 () Bool)

(assert (=> b!5389788 (= e!3342681 tp!1492497)))

(declare-fun tp!1492498 () Bool)

(declare-fun e!3342680 () Bool)

(declare-fun b!5389787 () Bool)

(assert (=> b!5389787 (= e!3342680 (and (inv!81074 (h!68018 (t!374917 zl!343))) e!3342681 tp!1492498))))

(assert (=> b!5388661 (= tp!1492458 e!3342680)))

(assert (= b!5389787 b!5389788))

(assert (= (and b!5388661 ((_ is Cons!61570) (t!374917 zl!343))) b!5389787))

(declare-fun m!6415770 () Bool)

(assert (=> b!5389787 m!6415770))

(declare-fun b!5389791 () Bool)

(declare-fun e!3342682 () Bool)

(declare-fun tp!1492503 () Bool)

(assert (=> b!5389791 (= e!3342682 tp!1492503)))

(declare-fun b!5389789 () Bool)

(assert (=> b!5389789 (= e!3342682 tp_is_empty!39515)))

(declare-fun b!5389792 () Bool)

(declare-fun tp!1492502 () Bool)

(declare-fun tp!1492499 () Bool)

(assert (=> b!5389792 (= e!3342682 (and tp!1492502 tp!1492499))))

(assert (=> b!5388681 (= tp!1492453 e!3342682)))

(declare-fun b!5389790 () Bool)

(declare-fun tp!1492501 () Bool)

(declare-fun tp!1492500 () Bool)

(assert (=> b!5389790 (= e!3342682 (and tp!1492501 tp!1492500))))

(assert (= (and b!5388681 ((_ is ElementMatch!15131) (reg!15460 r!7292))) b!5389789))

(assert (= (and b!5388681 ((_ is Concat!23976) (reg!15460 r!7292))) b!5389790))

(assert (= (and b!5388681 ((_ is Star!15131) (reg!15460 r!7292))) b!5389791))

(assert (= (and b!5388681 ((_ is Union!15131) (reg!15460 r!7292))) b!5389792))

(declare-fun condSetEmpty!35000 () Bool)

(assert (=> setNonEmpty!34997 (= condSetEmpty!35000 (= setRest!34997 ((as const (Array Context!9030 Bool)) false)))))

(declare-fun setRes!35000 () Bool)

(assert (=> setNonEmpty!34997 (= tp!1492456 setRes!35000)))

(declare-fun setIsEmpty!35000 () Bool)

(assert (=> setIsEmpty!35000 setRes!35000))

(declare-fun e!3342687 () Bool)

(declare-fun tp!1492508 () Bool)

(declare-fun setElem!35000 () Context!9030)

(declare-fun setNonEmpty!35000 () Bool)

(assert (=> setNonEmpty!35000 (= setRes!35000 (and tp!1492508 (inv!81074 setElem!35000) e!3342687))))

(declare-fun setRest!35000 () (InoxSet Context!9030))

(assert (=> setNonEmpty!35000 (= setRest!34997 ((_ map or) (store ((as const (Array Context!9030 Bool)) false) setElem!35000 true) setRest!35000))))

(declare-fun b!5389801 () Bool)

(declare-fun tp!1492509 () Bool)

(assert (=> b!5389801 (= e!3342687 tp!1492509)))

(assert (= (and setNonEmpty!34997 condSetEmpty!35000) setIsEmpty!35000))

(assert (= (and setNonEmpty!34997 (not condSetEmpty!35000)) setNonEmpty!35000))

(assert (= setNonEmpty!35000 b!5389801))

(declare-fun m!6415772 () Bool)

(assert (=> setNonEmpty!35000 m!6415772))

(declare-fun b!5389804 () Bool)

(declare-fun e!3342688 () Bool)

(declare-fun tp!1492514 () Bool)

(assert (=> b!5389804 (= e!3342688 tp!1492514)))

(declare-fun b!5389802 () Bool)

(assert (=> b!5389802 (= e!3342688 tp_is_empty!39515)))

(declare-fun b!5389805 () Bool)

(declare-fun tp!1492513 () Bool)

(declare-fun tp!1492510 () Bool)

(assert (=> b!5389805 (= e!3342688 (and tp!1492513 tp!1492510))))

(assert (=> b!5388675 (= tp!1492455 e!3342688)))

(declare-fun b!5389803 () Bool)

(declare-fun tp!1492512 () Bool)

(declare-fun tp!1492511 () Bool)

(assert (=> b!5389803 (= e!3342688 (and tp!1492512 tp!1492511))))

(assert (= (and b!5388675 ((_ is ElementMatch!15131) (regOne!30774 r!7292))) b!5389802))

(assert (= (and b!5388675 ((_ is Concat!23976) (regOne!30774 r!7292))) b!5389803))

(assert (= (and b!5388675 ((_ is Star!15131) (regOne!30774 r!7292))) b!5389804))

(assert (= (and b!5388675 ((_ is Union!15131) (regOne!30774 r!7292))) b!5389805))

(declare-fun b!5389808 () Bool)

(declare-fun e!3342689 () Bool)

(declare-fun tp!1492519 () Bool)

(assert (=> b!5389808 (= e!3342689 tp!1492519)))

(declare-fun b!5389806 () Bool)

(assert (=> b!5389806 (= e!3342689 tp_is_empty!39515)))

(declare-fun b!5389809 () Bool)

(declare-fun tp!1492518 () Bool)

(declare-fun tp!1492515 () Bool)

(assert (=> b!5389809 (= e!3342689 (and tp!1492518 tp!1492515))))

(assert (=> b!5388675 (= tp!1492461 e!3342689)))

(declare-fun b!5389807 () Bool)

(declare-fun tp!1492517 () Bool)

(declare-fun tp!1492516 () Bool)

(assert (=> b!5389807 (= e!3342689 (and tp!1492517 tp!1492516))))

(assert (= (and b!5388675 ((_ is ElementMatch!15131) (regTwo!30774 r!7292))) b!5389806))

(assert (= (and b!5388675 ((_ is Concat!23976) (regTwo!30774 r!7292))) b!5389807))

(assert (= (and b!5388675 ((_ is Star!15131) (regTwo!30774 r!7292))) b!5389808))

(assert (= (and b!5388675 ((_ is Union!15131) (regTwo!30774 r!7292))) b!5389809))

(declare-fun b_lambda!206205 () Bool)

(assert (= b_lambda!206189 (or b!5388650 b_lambda!206205)))

(declare-fun bs!1247259 () Bool)

(declare-fun d!1723393 () Bool)

(assert (= bs!1247259 (and d!1723393 b!5388650)))

(assert (=> bs!1247259 (= (dynLambda!24280 lambda!279695 (h!68018 zl!343)) (derivationStepZipperUp!503 (h!68018 zl!343) (h!68016 s!2326)))))

(assert (=> bs!1247259 m!6414550))

(assert (=> d!1723039 d!1723393))

(declare-fun b_lambda!206207 () Bool)

(assert (= b_lambda!206195 (or b!5388650 b_lambda!206207)))

(declare-fun bs!1247260 () Bool)

(declare-fun d!1723395 () Bool)

(assert (= bs!1247260 (and d!1723395 b!5388650)))

(assert (=> bs!1247260 (= (dynLambda!24280 lambda!279695 lt!2195463) (derivationStepZipperUp!503 lt!2195463 (h!68016 s!2326)))))

(assert (=> bs!1247260 m!6414530))

(assert (=> d!1723135 d!1723395))

(declare-fun b_lambda!206209 () Bool)

(assert (= b_lambda!206193 (or b!5388650 b_lambda!206209)))

(declare-fun bs!1247261 () Bool)

(declare-fun d!1723397 () Bool)

(assert (= bs!1247261 (and d!1723397 b!5388650)))

(assert (=> bs!1247261 (= (dynLambda!24280 lambda!279695 lt!2195472) (derivationStepZipperUp!503 lt!2195472 (h!68016 s!2326)))))

(assert (=> bs!1247261 m!6414526))

(assert (=> d!1723133 d!1723397))

(declare-fun b_lambda!206211 () Bool)

(assert (= b_lambda!206191 (or b!5388650 b_lambda!206211)))

(declare-fun bs!1247262 () Bool)

(declare-fun d!1723399 () Bool)

(assert (= bs!1247262 (and d!1723399 b!5388650)))

(assert (=> bs!1247262 (= (dynLambda!24280 lambda!279695 lt!2195465) (derivationStepZipperUp!503 lt!2195465 (h!68016 s!2326)))))

(assert (=> bs!1247262 m!6414472))

(assert (=> d!1723087 d!1723399))

(check-sat (not d!1723177) (not d!1723197) (not bm!385690) (not b!5389681) (not b!5389712) (not b!5389458) tp_is_empty!39515 (not b!5388767) (not d!1723267) (not d!1723353) (not b!5389744) (not b!5388813) (not b!5389105) (not b!5389423) (not d!1723315) (not d!1723255) (not d!1723351) (not bm!385777) (not bm!385811) (not d!1723277) (not b!5389657) (not b!5389803) (not b!5389549) (not d!1723259) (not bm!385688) (not b!5389569) (not b!5389297) (not d!1723187) (not b!5389294) (not b!5389756) (not b!5389541) (not d!1723373) (not b!5389141) (not d!1723055) (not b!5389775) (not b!5389575) (not b!5389456) (not b!5388950) (not d!1723213) (not bm!385769) (not b!5389801) (not b!5389073) (not d!1723159) (not b!5389609) (not bm!385719) (not d!1723189) (not b!5389550) (not b!5389544) (not d!1723089) (not b!5388936) (not d!1723151) (not b!5389019) (not b!5388704) (not d!1723107) (not b!5388964) (not b!5389451) (not b!5389573) (not d!1723093) (not b!5389780) (not b!5388961) (not b!5389412) (not b!5389545) (not d!1723375) (not b!5389809) (not b!5388940) (not b!5389360) (not bm!385795) (not d!1723363) (not b!5389356) (not b!5389714) (not b!5389311) (not b!5389749) (not bm!385764) (not b!5389748) (not bm!385704) (not d!1723131) (not b!5389685) (not d!1723169) (not b!5389774) (not b!5389099) (not d!1723321) (not d!1723391) (not b!5389787) (not d!1723201) (not d!1723043) (not b!5389265) (not b!5389711) (not b!5388965) (not bm!385730) (not b!5389127) (not b!5388939) (not b!5389161) (not b!5389140) (not bm!385729) (not b!5389791) (not b!5389547) (not b!5389448) (not d!1723133) (not b!5389359) (not b!5389070) (not d!1723211) (not b!5389788) (not b!5388943) (not b!5389243) (not d!1723139) (not b!5388737) (not b!5389658) (not b!5389804) (not b!5389415) (not b!5388703) (not d!1723207) (not b!5388814) (not b!5389363) (not b!5389772) (not b!5389236) (not d!1723153) (not b!5389807) (not d!1723147) (not bm!385783) (not b!5388818) (not d!1723075) (not d!1723247) (not d!1723195) (not b!5389715) (not bm!385731) (not b!5389770) (not b!5389420) (not b!5389805) (not d!1723143) (not d!1723347) (not b!5389017) (not b!5389366) (not b_lambda!206207) (not b!5389687) (not bm!385815) (not d!1723135) (not b!5389768) (not d!1723381) (not bm!385720) (not bs!1247259) (not d!1723283) (not b!5389716) (not b!5389165) (not bm!385776) (not bm!385802) (not b!5389072) (not b!5389713) (not b!5389769) (not b!5389023) (not b!5389684) (not b!5389741) (not d!1723111) (not d!1723265) (not d!1723269) (not b!5388951) (not b!5389483) (not d!1723103) (not b!5388812) (not b!5389290) (not b!5389287) (not b!5389408) (not b!5389147) (not b_lambda!206209) (not bm!385737) (not b!5389146) (not bm!385812) (not b!5389168) (not b!5389723) (not bs!1247262) (not bm!385706) (not b!5389139) (not b!5389164) (not d!1723127) (not b!5388967) (not d!1723203) (not d!1723039) (not b!5388960) (not b!5389018) (not b_lambda!206205) (not b!5389126) (not d!1723059) (not d!1723137) (not b!5389567) (not bm!385756) (not b!5389268) (not d!1723301) (not d!1723087) (not b!5389373) (not b!5389024) (not d!1723317) (not d!1723091) (not b!5389261) (not bm!385716) (not b!5388815) (not b!5389745) (not bm!385717) (not b!5389452) (not d!1723073) (not b_lambda!206211) (not d!1723149) (not b!5389424) (not b!5389568) (not b!5388713) (not b!5388709) (not b!5389677) (not b!5389680) (not d!1723387) (not bs!1247260) (not d!1723165) (not bm!385705) (not b!5388944) (not b!5389808) (not d!1723251) (not d!1723199) (not d!1723329) (not b!5389025) (not d!1723037) (not d!1723237) (not b!5389574) (not b!5389548) (not b!5389419) (not b!5389343) (not d!1723053) (not b!5389312) (not b!5389286) (not b!5389751) (not b!5389293) (not b!5389269) (not b!5389145) (not b!5389271) (not b!5389100) (not bm!385732) (not b!5389792) (not d!1723245) (not d!1723061) (not b!5389616) (not b!5388777) (not b!5389484) (not b!5388809) (not b!5389364) (not b!5388811) (not d!1723355) (not b!5388957) (not b!5388778) (not b!5389289) (not bm!385801) (not b!5389790) (not d!1723095) (not b!5389455) (not bm!385775) (not b!5389104) (not d!1723293) (not b!5389416) (not bs!1247261) (not setNonEmpty!35000) (not b!5389071) (not d!1723305) (not b!5389773) (not bm!385763) (not b!5388946) (not b!5389171) (not b!5389486) (not b!5389298) (not d!1723291) (not d!1723069) (not b!5389169) (not bm!385721) (not d!1723105) (not d!1723125) (not b!5388714) (not b!5389422) (not bm!385689) (not b!5388865) (not d!1723327) (not b!5389372) (not bm!385808) (not b!5389264) (not b!5388708) (not d!1723083))
(check-sat)
