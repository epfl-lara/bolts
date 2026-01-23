; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!554934 () Bool)

(assert start!554934)

(declare-fun b!5252430 () Bool)

(assert (=> b!5252430 true))

(assert (=> b!5252430 true))

(declare-fun lambda!264546 () Int)

(declare-fun lambda!264545 () Int)

(assert (=> b!5252430 (not (= lambda!264546 lambda!264545))))

(assert (=> b!5252430 true))

(assert (=> b!5252430 true))

(declare-fun b!5252445 () Bool)

(assert (=> b!5252445 true))

(declare-fun b!5252425 () Bool)

(declare-fun e!3267685 () Bool)

(declare-fun tp!1469343 () Bool)

(declare-fun tp!1469347 () Bool)

(assert (=> b!5252425 (= e!3267685 (and tp!1469343 tp!1469347))))

(declare-fun b!5252426 () Bool)

(declare-datatypes ((Unit!152918 0))(
  ( (Unit!152919) )
))
(declare-fun e!3267684 () Unit!152918)

(declare-fun Unit!152920 () Unit!152918)

(assert (=> b!5252426 (= e!3267684 Unit!152920)))

(declare-fun b!5252427 () Bool)

(declare-fun e!3267670 () Bool)

(declare-fun e!3267677 () Bool)

(assert (=> b!5252427 (= e!3267670 e!3267677)))

(declare-fun res!2228993 () Bool)

(assert (=> b!5252427 (=> res!2228993 e!3267677)))

(declare-datatypes ((C!29996 0))(
  ( (C!29997 (val!24700 Int)) )
))
(declare-datatypes ((Regex!14863 0))(
  ( (ElementMatch!14863 (c!908655 C!29996)) (Concat!23708 (regOne!30238 Regex!14863) (regTwo!30238 Regex!14863)) (EmptyExpr!14863) (Star!14863 (reg!15192 Regex!14863)) (EmptyLang!14863) (Union!14863 (regOne!30239 Regex!14863) (regTwo!30239 Regex!14863)) )
))
(declare-fun r!7292 () Regex!14863)

(declare-fun lt!2152538 () Regex!14863)

(declare-fun lt!2152526 () Regex!14863)

(declare-fun lt!2152512 () Regex!14863)

(assert (=> b!5252427 (= res!2228993 (or (not (= lt!2152526 (Concat!23708 (regOne!30239 (regOne!30238 r!7292)) lt!2152512))) (not (= lt!2152538 (Concat!23708 (regTwo!30239 (regOne!30238 r!7292)) lt!2152512))) (not (= (regTwo!30238 r!7292) lt!2152512))))))

(declare-datatypes ((List!60888 0))(
  ( (Nil!60764) (Cons!60764 (h!67212 Regex!14863) (t!374071 List!60888)) )
))
(declare-datatypes ((Context!8494 0))(
  ( (Context!8495 (exprs!4747 List!60888)) )
))
(declare-datatypes ((List!60889 0))(
  ( (Nil!60765) (Cons!60765 (h!67213 Context!8494) (t!374072 List!60889)) )
))
(declare-fun zl!343 () List!60889)

(declare-fun generalisedConcat!532 (List!60888) Regex!14863)

(assert (=> b!5252427 (= lt!2152512 (generalisedConcat!532 (t!374071 (exprs!4747 (h!67213 zl!343)))))))

(declare-fun b!5252428 () Bool)

(declare-fun e!3267672 () Unit!152918)

(declare-fun Unit!152921 () Unit!152918)

(assert (=> b!5252428 (= e!3267672 Unit!152921)))

(declare-fun b!5252429 () Bool)

(declare-fun e!3267682 () Bool)

(declare-fun e!3267683 () Bool)

(assert (=> b!5252429 (= e!3267682 e!3267683)))

(declare-fun res!2228985 () Bool)

(assert (=> b!5252429 (=> res!2228985 e!3267683)))

(declare-fun lt!2152562 () List!60889)

(declare-fun lt!2152536 () Int)

(declare-fun zipperDepthTotal!44 (List!60889) Int)

(assert (=> b!5252429 (= res!2228985 (>= (zipperDepthTotal!44 lt!2152562) lt!2152536))))

(declare-fun lt!2152551 () Context!8494)

(assert (=> b!5252429 (= lt!2152562 (Cons!60765 lt!2152551 Nil!60765))))

(declare-fun e!3267678 () Bool)

(declare-fun e!3267671 () Bool)

(assert (=> b!5252430 (= e!3267678 e!3267671)))

(declare-fun res!2229000 () Bool)

(assert (=> b!5252430 (=> res!2229000 e!3267671)))

(declare-datatypes ((List!60890 0))(
  ( (Nil!60766) (Cons!60766 (h!67214 C!29996) (t!374073 List!60890)) )
))
(declare-fun s!2326 () List!60890)

(declare-fun lt!2152524 () Bool)

(declare-fun lt!2152525 () Bool)

(get-info :version)

(assert (=> b!5252430 (= res!2229000 (or (not (= lt!2152525 lt!2152524)) ((_ is Nil!60766) s!2326)))))

(declare-fun Exists!2044 (Int) Bool)

(assert (=> b!5252430 (= (Exists!2044 lambda!264545) (Exists!2044 lambda!264546))))

(declare-fun lt!2152514 () Unit!152918)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!698 (Regex!14863 Regex!14863 List!60890) Unit!152918)

(assert (=> b!5252430 (= lt!2152514 (lemmaExistCutMatchRandMatchRSpecEquivalent!698 (regOne!30238 r!7292) (regTwo!30238 r!7292) s!2326))))

(assert (=> b!5252430 (= lt!2152524 (Exists!2044 lambda!264545))))

(declare-datatypes ((tuple2!64124 0))(
  ( (tuple2!64125 (_1!35365 List!60890) (_2!35365 List!60890)) )
))
(declare-datatypes ((Option!14974 0))(
  ( (None!14973) (Some!14973 (v!51002 tuple2!64124)) )
))
(declare-fun isDefined!11677 (Option!14974) Bool)

(declare-fun findConcatSeparation!1388 (Regex!14863 Regex!14863 List!60890 List!60890 List!60890) Option!14974)

(assert (=> b!5252430 (= lt!2152524 (isDefined!11677 (findConcatSeparation!1388 (regOne!30238 r!7292) (regTwo!30238 r!7292) Nil!60766 s!2326 s!2326)))))

(declare-fun lt!2152522 () Unit!152918)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1152 (Regex!14863 Regex!14863 List!60890) Unit!152918)

(assert (=> b!5252430 (= lt!2152522 (lemmaFindConcatSeparationEquivalentToExists!1152 (regOne!30238 r!7292) (regTwo!30238 r!7292) s!2326))))

(declare-fun tp!1469340 () Bool)

(declare-fun setNonEmpty!33545 () Bool)

(declare-fun e!3267689 () Bool)

(declare-fun setElem!33545 () Context!8494)

(declare-fun setRes!33545 () Bool)

(declare-fun inv!80404 (Context!8494) Bool)

(assert (=> setNonEmpty!33545 (= setRes!33545 (and tp!1469340 (inv!80404 setElem!33545) e!3267689))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8494))

(declare-fun setRest!33545 () (InoxSet Context!8494))

(assert (=> setNonEmpty!33545 (= z!1189 ((_ map or) (store ((as const (Array Context!8494 Bool)) false) setElem!33545 true) setRest!33545))))

(declare-fun b!5252431 () Bool)

(declare-fun e!3267695 () Bool)

(declare-fun tp!1469341 () Bool)

(assert (=> b!5252431 (= e!3267695 tp!1469341)))

(declare-fun b!5252432 () Bool)

(declare-fun res!2229004 () Bool)

(assert (=> b!5252432 (=> res!2229004 e!3267678)))

(assert (=> b!5252432 (= res!2229004 (or ((_ is EmptyExpr!14863) r!7292) ((_ is EmptyLang!14863) r!7292) ((_ is ElementMatch!14863) r!7292) ((_ is Union!14863) r!7292) (not ((_ is Concat!23708) r!7292))))))

(declare-fun setIsEmpty!33545 () Bool)

(assert (=> setIsEmpty!33545 setRes!33545))

(declare-fun b!5252434 () Bool)

(declare-fun e!3267673 () Bool)

(declare-fun lt!2152515 () (InoxSet Context!8494))

(declare-fun matchZipper!1107 ((InoxSet Context!8494) List!60890) Bool)

(assert (=> b!5252434 (= e!3267673 (matchZipper!1107 lt!2152515 (t!374073 s!2326)))))

(declare-fun b!5252435 () Bool)

(declare-fun res!2228990 () Bool)

(declare-fun e!3267686 () Bool)

(assert (=> b!5252435 (=> res!2228990 e!3267686)))

(declare-fun lt!2152546 () Regex!14863)

(assert (=> b!5252435 (= res!2228990 (or (not (= lt!2152546 r!7292)) (not (= (exprs!4747 (h!67213 zl!343)) (Cons!60764 (regOne!30238 r!7292) (t!374071 (exprs!4747 (h!67213 zl!343))))))))))

(declare-fun tp!1469346 () Bool)

(declare-fun b!5252436 () Bool)

(declare-fun e!3267696 () Bool)

(assert (=> b!5252436 (= e!3267696 (and (inv!80404 (h!67213 zl!343)) e!3267695 tp!1469346))))

(declare-fun b!5252437 () Bool)

(declare-fun res!2228987 () Bool)

(assert (=> b!5252437 (=> res!2228987 e!3267678)))

(declare-fun generalisedUnion!792 (List!60888) Regex!14863)

(declare-fun unfocusZipperList!305 (List!60889) List!60888)

(assert (=> b!5252437 (= res!2228987 (not (= r!7292 (generalisedUnion!792 (unfocusZipperList!305 zl!343)))))))

(declare-fun b!5252438 () Bool)

(assert (=> b!5252438 (= e!3267677 true)))

(declare-fun lt!2152529 () Bool)

(declare-fun lt!2152549 () Regex!14863)

(declare-fun matchRSpec!1966 (Regex!14863 List!60890) Bool)

(assert (=> b!5252438 (= lt!2152529 (matchRSpec!1966 lt!2152549 s!2326))))

(declare-fun lt!2152545 () Unit!152918)

(declare-fun mainMatchTheorem!1966 (Regex!14863 List!60890) Unit!152918)

(assert (=> b!5252438 (= lt!2152545 (mainMatchTheorem!1966 lt!2152549 s!2326))))

(declare-fun lt!2152548 () Bool)

(assert (=> b!5252438 (= lt!2152548 lt!2152529)))

(declare-fun matchR!7048 (Regex!14863 List!60890) Bool)

(assert (=> b!5252438 (= lt!2152529 (matchR!7048 lt!2152549 s!2326))))

(declare-fun lt!2152530 () Regex!14863)

(assert (=> b!5252438 (= lt!2152548 (matchR!7048 lt!2152530 s!2326))))

(assert (=> b!5252438 (= lt!2152549 (Union!14863 (Concat!23708 (regOne!30239 (regOne!30238 r!7292)) (regTwo!30238 r!7292)) (Concat!23708 (regTwo!30239 (regOne!30238 r!7292)) (regTwo!30238 r!7292))))))

(declare-fun lt!2152557 () Unit!152918)

(declare-fun lemmaConcatDistributesInUnion!8 (Regex!14863 Regex!14863 Regex!14863 List!60890) Unit!152918)

(assert (=> b!5252438 (= lt!2152557 (lemmaConcatDistributesInUnion!8 (regOne!30239 (regOne!30238 r!7292)) (regTwo!30239 (regOne!30238 r!7292)) (regTwo!30238 r!7292) s!2326))))

(declare-fun b!5252439 () Bool)

(declare-fun e!3267694 () Bool)

(declare-fun lt!2152552 () (InoxSet Context!8494))

(assert (=> b!5252439 (= e!3267694 (matchZipper!1107 lt!2152552 (t!374073 s!2326)))))

(declare-fun b!5252440 () Bool)

(declare-fun e!3267688 () Bool)

(declare-fun lt!2152539 () (InoxSet Context!8494))

(assert (=> b!5252440 (= e!3267688 (matchZipper!1107 lt!2152539 s!2326))))

(declare-fun b!5252441 () Bool)

(declare-fun e!3267675 () Unit!152918)

(declare-fun Unit!152922 () Unit!152918)

(assert (=> b!5252441 (= e!3267675 Unit!152922)))

(declare-fun lt!2152544 () Unit!152918)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!100 ((InoxSet Context!8494) (InoxSet Context!8494) List!60890) Unit!152918)

(assert (=> b!5252441 (= lt!2152544 (lemmaZipperConcatMatchesSameAsBothZippers!100 lt!2152552 lt!2152515 (t!374073 s!2326)))))

(declare-fun res!2228999 () Bool)

(assert (=> b!5252441 (= res!2228999 (matchZipper!1107 lt!2152552 (t!374073 s!2326)))))

(declare-fun e!3267680 () Bool)

(assert (=> b!5252441 (=> res!2228999 e!3267680)))

(assert (=> b!5252441 (= (matchZipper!1107 ((_ map or) lt!2152552 lt!2152515) (t!374073 s!2326)) e!3267680)))

(declare-fun b!5252442 () Bool)

(declare-fun e!3267674 () Bool)

(declare-fun e!3267692 () Bool)

(assert (=> b!5252442 (= e!3267674 e!3267692)))

(declare-fun res!2229008 () Bool)

(assert (=> b!5252442 (=> res!2229008 e!3267692)))

(declare-fun e!3267681 () Bool)

(assert (=> b!5252442 (= res!2229008 e!3267681)))

(declare-fun res!2229002 () Bool)

(assert (=> b!5252442 (=> (not res!2229002) (not e!3267681))))

(declare-fun lt!2152560 () (InoxSet Context!8494))

(declare-fun lt!2152520 () Bool)

(assert (=> b!5252442 (= res!2229002 (not (= (matchZipper!1107 lt!2152560 (t!374073 s!2326)) lt!2152520)))))

(declare-fun lt!2152540 () (InoxSet Context!8494))

(assert (=> b!5252442 (= (matchZipper!1107 lt!2152540 (t!374073 s!2326)) e!3267694)))

(declare-fun res!2228991 () Bool)

(assert (=> b!5252442 (=> res!2228991 e!3267694)))

(assert (=> b!5252442 (= res!2228991 lt!2152520)))

(declare-fun lt!2152533 () (InoxSet Context!8494))

(assert (=> b!5252442 (= lt!2152520 (matchZipper!1107 lt!2152533 (t!374073 s!2326)))))

(declare-fun lt!2152553 () Unit!152918)

(assert (=> b!5252442 (= lt!2152553 (lemmaZipperConcatMatchesSameAsBothZippers!100 lt!2152533 lt!2152552 (t!374073 s!2326)))))

(declare-fun b!5252443 () Bool)

(declare-fun e!3267693 () Bool)

(declare-fun e!3267679 () Bool)

(assert (=> b!5252443 (= e!3267693 e!3267679)))

(declare-fun res!2229009 () Bool)

(assert (=> b!5252443 (=> (not res!2229009) (not e!3267679))))

(assert (=> b!5252443 (= res!2229009 (= r!7292 lt!2152546))))

(declare-fun unfocusZipper!605 (List!60889) Regex!14863)

(assert (=> b!5252443 (= lt!2152546 (unfocusZipper!605 zl!343))))

(declare-fun b!5252444 () Bool)

(declare-fun e!3267691 () Bool)

(assert (=> b!5252444 (= e!3267691 (matchZipper!1107 lt!2152515 (t!374073 s!2326)))))

(declare-fun e!3267687 () Bool)

(assert (=> b!5252445 (= e!3267671 e!3267687)))

(declare-fun res!2228994 () Bool)

(assert (=> b!5252445 (=> res!2228994 e!3267687)))

(assert (=> b!5252445 (= res!2228994 (or (and ((_ is ElementMatch!14863) (regOne!30238 r!7292)) (= (c!908655 (regOne!30238 r!7292)) (h!67214 s!2326))) (not ((_ is Union!14863) (regOne!30238 r!7292)))))))

(declare-fun lt!2152555 () Unit!152918)

(assert (=> b!5252445 (= lt!2152555 e!3267672)))

(declare-fun c!908654 () Bool)

(declare-fun nullable!5032 (Regex!14863) Bool)

(assert (=> b!5252445 (= c!908654 (nullable!5032 (h!67212 (exprs!4747 (h!67213 zl!343)))))))

(declare-fun lambda!264547 () Int)

(declare-fun flatMap!590 ((InoxSet Context!8494) Int) (InoxSet Context!8494))

(declare-fun derivationStepZipperUp!235 (Context!8494 C!29996) (InoxSet Context!8494))

(assert (=> b!5252445 (= (flatMap!590 z!1189 lambda!264547) (derivationStepZipperUp!235 (h!67213 zl!343) (h!67214 s!2326)))))

(declare-fun lt!2152550 () Unit!152918)

(declare-fun lemmaFlatMapOnSingletonSet!122 ((InoxSet Context!8494) Context!8494 Int) Unit!152918)

(assert (=> b!5252445 (= lt!2152550 (lemmaFlatMapOnSingletonSet!122 z!1189 (h!67213 zl!343) lambda!264547))))

(declare-fun lt!2152532 () Context!8494)

(assert (=> b!5252445 (= lt!2152515 (derivationStepZipperUp!235 lt!2152532 (h!67214 s!2326)))))

(declare-fun derivationStepZipperDown!311 (Regex!14863 Context!8494 C!29996) (InoxSet Context!8494))

(assert (=> b!5252445 (= lt!2152560 (derivationStepZipperDown!311 (h!67212 (exprs!4747 (h!67213 zl!343))) lt!2152532 (h!67214 s!2326)))))

(assert (=> b!5252445 (= lt!2152532 (Context!8495 (t!374071 (exprs!4747 (h!67213 zl!343)))))))

(declare-fun lt!2152547 () (InoxSet Context!8494))

(assert (=> b!5252445 (= lt!2152547 (derivationStepZipperUp!235 (Context!8495 (Cons!60764 (h!67212 (exprs!4747 (h!67213 zl!343))) (t!374071 (exprs!4747 (h!67213 zl!343))))) (h!67214 s!2326)))))

(declare-fun b!5252446 () Bool)

(assert (=> b!5252446 (= e!3267686 e!3267682)))

(declare-fun res!2228986 () Bool)

(assert (=> b!5252446 (=> res!2228986 e!3267682)))

(declare-fun lt!2152561 () Int)

(assert (=> b!5252446 (= res!2228986 (>= lt!2152561 lt!2152536))))

(assert (=> b!5252446 (= lt!2152536 (zipperDepthTotal!44 zl!343))))

(declare-fun lt!2152558 () List!60889)

(assert (=> b!5252446 (= lt!2152561 (zipperDepthTotal!44 lt!2152558))))

(declare-fun lt!2152519 () Context!8494)

(assert (=> b!5252446 (= lt!2152558 (Cons!60765 lt!2152519 Nil!60765))))

(declare-fun b!5252447 () Bool)

(assert (=> b!5252447 (= e!3267681 (not (matchZipper!1107 lt!2152552 (t!374073 s!2326))))))

(declare-fun b!5252448 () Bool)

(declare-fun res!2228996 () Bool)

(assert (=> b!5252448 (=> res!2228996 e!3267678)))

(assert (=> b!5252448 (= res!2228996 (not (= r!7292 (generalisedConcat!532 (exprs!4747 (h!67213 zl!343))))))))

(declare-fun b!5252449 () Bool)

(assert (=> b!5252449 (= e!3267680 (matchZipper!1107 lt!2152515 (t!374073 s!2326)))))

(declare-fun b!5252450 () Bool)

(declare-fun res!2228989 () Bool)

(assert (=> b!5252450 (=> res!2228989 e!3267678)))

(declare-fun isEmpty!32703 (List!60889) Bool)

(assert (=> b!5252450 (= res!2228989 (not (isEmpty!32703 (t!374072 zl!343))))))

(declare-fun b!5252451 () Bool)

(declare-fun res!2228983 () Bool)

(assert (=> b!5252451 (=> res!2228983 e!3267678)))

(assert (=> b!5252451 (= res!2228983 (not ((_ is Cons!60764) (exprs!4747 (h!67213 zl!343)))))))

(declare-fun b!5252452 () Bool)

(assert (=> b!5252452 (= e!3267687 e!3267674)))

(declare-fun res!2228984 () Bool)

(assert (=> b!5252452 (=> res!2228984 e!3267674)))

(assert (=> b!5252452 (= res!2228984 (not (= lt!2152560 lt!2152540)))))

(assert (=> b!5252452 (= lt!2152540 ((_ map or) lt!2152533 lt!2152552))))

(assert (=> b!5252452 (= lt!2152552 (derivationStepZipperDown!311 (regTwo!30239 (regOne!30238 r!7292)) lt!2152532 (h!67214 s!2326)))))

(assert (=> b!5252452 (= lt!2152533 (derivationStepZipperDown!311 (regOne!30239 (regOne!30238 r!7292)) lt!2152532 (h!67214 s!2326)))))

(declare-fun b!5252453 () Bool)

(declare-fun tp!1469348 () Bool)

(assert (=> b!5252453 (= e!3267685 tp!1469348)))

(declare-fun b!5252454 () Bool)

(declare-fun e!3267676 () Bool)

(assert (=> b!5252454 (= e!3267676 e!3267670)))

(declare-fun res!2228998 () Bool)

(assert (=> b!5252454 (=> res!2228998 e!3267670)))

(assert (=> b!5252454 (= res!2228998 (not (= r!7292 lt!2152530)))))

(assert (=> b!5252454 (= lt!2152530 (Concat!23708 (Union!14863 (regOne!30239 (regOne!30238 r!7292)) (regTwo!30239 (regOne!30238 r!7292))) (regTwo!30238 r!7292)))))

(declare-fun b!5252455 () Bool)

(declare-fun Unit!152923 () Unit!152918)

(assert (=> b!5252455 (= e!3267675 Unit!152923)))

(declare-fun b!5252456 () Bool)

(declare-fun tp!1469342 () Bool)

(declare-fun tp!1469345 () Bool)

(assert (=> b!5252456 (= e!3267685 (and tp!1469342 tp!1469345))))

(declare-fun b!5252457 () Bool)

(declare-fun Unit!152924 () Unit!152918)

(assert (=> b!5252457 (= e!3267672 Unit!152924)))

(declare-fun lt!2152537 () Unit!152918)

(assert (=> b!5252457 (= lt!2152537 (lemmaZipperConcatMatchesSameAsBothZippers!100 lt!2152560 lt!2152515 (t!374073 s!2326)))))

(declare-fun res!2228992 () Bool)

(assert (=> b!5252457 (= res!2228992 (matchZipper!1107 lt!2152560 (t!374073 s!2326)))))

(assert (=> b!5252457 (=> res!2228992 e!3267673)))

(assert (=> b!5252457 (= (matchZipper!1107 ((_ map or) lt!2152560 lt!2152515) (t!374073 s!2326)) e!3267673)))

(declare-fun b!5252458 () Bool)

(assert (=> b!5252458 (= e!3267683 e!3267676)))

(declare-fun res!2228988 () Bool)

(assert (=> b!5252458 (=> res!2228988 e!3267676)))

(declare-fun lt!2152518 () Bool)

(declare-fun lt!2152554 () Bool)

(declare-fun lt!2152510 () Bool)

(assert (=> b!5252458 (= res!2228988 (and (not (= lt!2152554 lt!2152518)) (not lt!2152510)))))

(assert (=> b!5252458 (= lt!2152510 (matchRSpec!1966 lt!2152538 s!2326))))

(declare-fun lt!2152559 () Unit!152918)

(assert (=> b!5252458 (= lt!2152559 (mainMatchTheorem!1966 lt!2152538 s!2326))))

(assert (=> b!5252458 (= lt!2152518 (matchRSpec!1966 lt!2152526 s!2326))))

(declare-fun lt!2152511 () Unit!152918)

(assert (=> b!5252458 (= lt!2152511 (mainMatchTheorem!1966 lt!2152526 s!2326))))

(assert (=> b!5252458 (= lt!2152510 (matchZipper!1107 lt!2152539 s!2326))))

(assert (=> b!5252458 (= lt!2152510 (matchR!7048 lt!2152538 s!2326))))

(declare-fun lt!2152516 () Unit!152918)

(declare-fun theoremZipperRegexEquiv!297 ((InoxSet Context!8494) List!60889 Regex!14863 List!60890) Unit!152918)

(assert (=> b!5252458 (= lt!2152516 (theoremZipperRegexEquiv!297 lt!2152539 lt!2152562 lt!2152538 s!2326))))

(declare-fun lt!2152542 () List!60888)

(assert (=> b!5252458 (= lt!2152538 (generalisedConcat!532 lt!2152542))))

(declare-fun lt!2152531 () Bool)

(assert (=> b!5252458 (= lt!2152518 lt!2152531)))

(assert (=> b!5252458 (= lt!2152518 (matchR!7048 lt!2152526 s!2326))))

(declare-fun lt!2152527 () Unit!152918)

(declare-fun lt!2152528 () (InoxSet Context!8494))

(assert (=> b!5252458 (= lt!2152527 (theoremZipperRegexEquiv!297 lt!2152528 lt!2152558 lt!2152526 s!2326))))

(declare-fun lt!2152517 () List!60888)

(assert (=> b!5252458 (= lt!2152526 (generalisedConcat!532 lt!2152517))))

(declare-fun b!5252459 () Bool)

(assert (=> b!5252459 (= e!3267692 e!3267686)))

(declare-fun res!2228995 () Bool)

(assert (=> b!5252459 (=> res!2228995 e!3267686)))

(assert (=> b!5252459 (= res!2228995 (not (= lt!2152554 e!3267688)))))

(declare-fun res!2229003 () Bool)

(assert (=> b!5252459 (=> res!2229003 e!3267688)))

(assert (=> b!5252459 (= res!2229003 lt!2152531)))

(assert (=> b!5252459 (= lt!2152554 (matchZipper!1107 z!1189 s!2326))))

(assert (=> b!5252459 (= lt!2152531 (matchZipper!1107 lt!2152528 s!2326))))

(declare-fun lt!2152541 () Unit!152918)

(assert (=> b!5252459 (= lt!2152541 e!3267675)))

(declare-fun c!908653 () Bool)

(assert (=> b!5252459 (= c!908653 (nullable!5032 (regTwo!30239 (regOne!30238 r!7292))))))

(assert (=> b!5252459 (= (flatMap!590 lt!2152539 lambda!264547) (derivationStepZipperUp!235 lt!2152551 (h!67214 s!2326)))))

(declare-fun lt!2152543 () Unit!152918)

(assert (=> b!5252459 (= lt!2152543 (lemmaFlatMapOnSingletonSet!122 lt!2152539 lt!2152551 lambda!264547))))

(declare-fun lt!2152523 () (InoxSet Context!8494))

(assert (=> b!5252459 (= lt!2152523 (derivationStepZipperUp!235 lt!2152551 (h!67214 s!2326)))))

(declare-fun lt!2152535 () Unit!152918)

(assert (=> b!5252459 (= lt!2152535 e!3267684)))

(declare-fun c!908652 () Bool)

(assert (=> b!5252459 (= c!908652 (nullable!5032 (regOne!30239 (regOne!30238 r!7292))))))

(assert (=> b!5252459 (= (flatMap!590 lt!2152528 lambda!264547) (derivationStepZipperUp!235 lt!2152519 (h!67214 s!2326)))))

(declare-fun lt!2152521 () Unit!152918)

(assert (=> b!5252459 (= lt!2152521 (lemmaFlatMapOnSingletonSet!122 lt!2152528 lt!2152519 lambda!264547))))

(declare-fun lt!2152513 () (InoxSet Context!8494))

(assert (=> b!5252459 (= lt!2152513 (derivationStepZipperUp!235 lt!2152519 (h!67214 s!2326)))))

(assert (=> b!5252459 (= lt!2152539 (store ((as const (Array Context!8494 Bool)) false) lt!2152551 true))))

(assert (=> b!5252459 (= lt!2152551 (Context!8495 lt!2152542))))

(assert (=> b!5252459 (= lt!2152542 (Cons!60764 (regTwo!30239 (regOne!30238 r!7292)) (t!374071 (exprs!4747 (h!67213 zl!343)))))))

(assert (=> b!5252459 (= lt!2152528 (store ((as const (Array Context!8494 Bool)) false) lt!2152519 true))))

(assert (=> b!5252459 (= lt!2152519 (Context!8495 lt!2152517))))

(assert (=> b!5252459 (= lt!2152517 (Cons!60764 (regOne!30239 (regOne!30238 r!7292)) (t!374071 (exprs!4747 (h!67213 zl!343)))))))

(declare-fun b!5252460 () Bool)

(declare-fun e!3267690 () Bool)

(declare-fun tp_is_empty!38979 () Bool)

(declare-fun tp!1469349 () Bool)

(assert (=> b!5252460 (= e!3267690 (and tp_is_empty!38979 tp!1469349))))

(declare-fun b!5252461 () Bool)

(declare-fun res!2229005 () Bool)

(assert (=> b!5252461 (=> res!2229005 e!3267671)))

(declare-fun isEmpty!32704 (List!60888) Bool)

(assert (=> b!5252461 (= res!2229005 (isEmpty!32704 (t!374071 (exprs!4747 (h!67213 zl!343)))))))

(declare-fun b!5252462 () Bool)

(assert (=> b!5252462 (= e!3267679 (not e!3267678))))

(declare-fun res!2229001 () Bool)

(assert (=> b!5252462 (=> res!2229001 e!3267678)))

(assert (=> b!5252462 (= res!2229001 (not ((_ is Cons!60765) zl!343)))))

(assert (=> b!5252462 (= lt!2152525 (matchRSpec!1966 r!7292 s!2326))))

(assert (=> b!5252462 (= lt!2152525 (matchR!7048 r!7292 s!2326))))

(declare-fun lt!2152556 () Unit!152918)

(assert (=> b!5252462 (= lt!2152556 (mainMatchTheorem!1966 r!7292 s!2326))))

(declare-fun b!5252463 () Bool)

(declare-fun Unit!152925 () Unit!152918)

(assert (=> b!5252463 (= e!3267684 Unit!152925)))

(declare-fun lt!2152534 () Unit!152918)

(assert (=> b!5252463 (= lt!2152534 (lemmaZipperConcatMatchesSameAsBothZippers!100 lt!2152533 lt!2152515 (t!374073 s!2326)))))

(declare-fun res!2228997 () Bool)

(assert (=> b!5252463 (= res!2228997 lt!2152520)))

(assert (=> b!5252463 (=> res!2228997 e!3267691)))

(assert (=> b!5252463 (= (matchZipper!1107 ((_ map or) lt!2152533 lt!2152515) (t!374073 s!2326)) e!3267691)))

(declare-fun b!5252433 () Bool)

(assert (=> b!5252433 (= e!3267685 tp_is_empty!38979)))

(declare-fun res!2229007 () Bool)

(assert (=> start!554934 (=> (not res!2229007) (not e!3267693))))

(declare-fun validRegex!6599 (Regex!14863) Bool)

(assert (=> start!554934 (= res!2229007 (validRegex!6599 r!7292))))

(assert (=> start!554934 e!3267693))

(assert (=> start!554934 e!3267685))

(declare-fun condSetEmpty!33545 () Bool)

(assert (=> start!554934 (= condSetEmpty!33545 (= z!1189 ((as const (Array Context!8494 Bool)) false)))))

(assert (=> start!554934 setRes!33545))

(assert (=> start!554934 e!3267696))

(assert (=> start!554934 e!3267690))

(declare-fun b!5252464 () Bool)

(declare-fun res!2229006 () Bool)

(assert (=> b!5252464 (=> (not res!2229006) (not e!3267693))))

(declare-fun toList!8647 ((InoxSet Context!8494)) List!60889)

(assert (=> b!5252464 (= res!2229006 (= (toList!8647 z!1189) zl!343))))

(declare-fun b!5252465 () Bool)

(declare-fun tp!1469344 () Bool)

(assert (=> b!5252465 (= e!3267689 tp!1469344)))

(assert (= (and start!554934 res!2229007) b!5252464))

(assert (= (and b!5252464 res!2229006) b!5252443))

(assert (= (and b!5252443 res!2229009) b!5252462))

(assert (= (and b!5252462 (not res!2229001)) b!5252450))

(assert (= (and b!5252450 (not res!2228989)) b!5252448))

(assert (= (and b!5252448 (not res!2228996)) b!5252451))

(assert (= (and b!5252451 (not res!2228983)) b!5252437))

(assert (= (and b!5252437 (not res!2228987)) b!5252432))

(assert (= (and b!5252432 (not res!2229004)) b!5252430))

(assert (= (and b!5252430 (not res!2229000)) b!5252461))

(assert (= (and b!5252461 (not res!2229005)) b!5252445))

(assert (= (and b!5252445 c!908654) b!5252457))

(assert (= (and b!5252445 (not c!908654)) b!5252428))

(assert (= (and b!5252457 (not res!2228992)) b!5252434))

(assert (= (and b!5252445 (not res!2228994)) b!5252452))

(assert (= (and b!5252452 (not res!2228984)) b!5252442))

(assert (= (and b!5252442 (not res!2228991)) b!5252439))

(assert (= (and b!5252442 res!2229002) b!5252447))

(assert (= (and b!5252442 (not res!2229008)) b!5252459))

(assert (= (and b!5252459 c!908652) b!5252463))

(assert (= (and b!5252459 (not c!908652)) b!5252426))

(assert (= (and b!5252463 (not res!2228997)) b!5252444))

(assert (= (and b!5252459 c!908653) b!5252441))

(assert (= (and b!5252459 (not c!908653)) b!5252455))

(assert (= (and b!5252441 (not res!2228999)) b!5252449))

(assert (= (and b!5252459 (not res!2229003)) b!5252440))

(assert (= (and b!5252459 (not res!2228995)) b!5252435))

(assert (= (and b!5252435 (not res!2228990)) b!5252446))

(assert (= (and b!5252446 (not res!2228986)) b!5252429))

(assert (= (and b!5252429 (not res!2228985)) b!5252458))

(assert (= (and b!5252458 (not res!2228988)) b!5252454))

(assert (= (and b!5252454 (not res!2228998)) b!5252427))

(assert (= (and b!5252427 (not res!2228993)) b!5252438))

(assert (= (and start!554934 ((_ is ElementMatch!14863) r!7292)) b!5252433))

(assert (= (and start!554934 ((_ is Concat!23708) r!7292)) b!5252425))

(assert (= (and start!554934 ((_ is Star!14863) r!7292)) b!5252453))

(assert (= (and start!554934 ((_ is Union!14863) r!7292)) b!5252456))

(assert (= (and start!554934 condSetEmpty!33545) setIsEmpty!33545))

(assert (= (and start!554934 (not condSetEmpty!33545)) setNonEmpty!33545))

(assert (= setNonEmpty!33545 b!5252465))

(assert (= b!5252436 b!5252431))

(assert (= (and start!554934 ((_ is Cons!60765) zl!343)) b!5252436))

(assert (= (and start!554934 ((_ is Cons!60766) s!2326)) b!5252460))

(declare-fun m!6295420 () Bool)

(assert (=> b!5252429 m!6295420))

(declare-fun m!6295422 () Bool)

(assert (=> b!5252427 m!6295422))

(declare-fun m!6295424 () Bool)

(assert (=> b!5252441 m!6295424))

(declare-fun m!6295426 () Bool)

(assert (=> b!5252441 m!6295426))

(declare-fun m!6295428 () Bool)

(assert (=> b!5252441 m!6295428))

(declare-fun m!6295430 () Bool)

(assert (=> b!5252448 m!6295430))

(declare-fun m!6295432 () Bool)

(assert (=> b!5252434 m!6295432))

(declare-fun m!6295434 () Bool)

(assert (=> start!554934 m!6295434))

(declare-fun m!6295436 () Bool)

(assert (=> b!5252464 m!6295436))

(declare-fun m!6295438 () Bool)

(assert (=> b!5252457 m!6295438))

(declare-fun m!6295440 () Bool)

(assert (=> b!5252457 m!6295440))

(declare-fun m!6295442 () Bool)

(assert (=> b!5252457 m!6295442))

(declare-fun m!6295444 () Bool)

(assert (=> b!5252445 m!6295444))

(declare-fun m!6295446 () Bool)

(assert (=> b!5252445 m!6295446))

(declare-fun m!6295448 () Bool)

(assert (=> b!5252445 m!6295448))

(declare-fun m!6295450 () Bool)

(assert (=> b!5252445 m!6295450))

(declare-fun m!6295452 () Bool)

(assert (=> b!5252445 m!6295452))

(declare-fun m!6295454 () Bool)

(assert (=> b!5252445 m!6295454))

(declare-fun m!6295456 () Bool)

(assert (=> b!5252445 m!6295456))

(assert (=> b!5252444 m!6295432))

(declare-fun m!6295458 () Bool)

(assert (=> b!5252438 m!6295458))

(declare-fun m!6295460 () Bool)

(assert (=> b!5252438 m!6295460))

(declare-fun m!6295462 () Bool)

(assert (=> b!5252438 m!6295462))

(declare-fun m!6295464 () Bool)

(assert (=> b!5252438 m!6295464))

(declare-fun m!6295466 () Bool)

(assert (=> b!5252438 m!6295466))

(declare-fun m!6295468 () Bool)

(assert (=> setNonEmpty!33545 m!6295468))

(assert (=> b!5252447 m!6295426))

(assert (=> b!5252442 m!6295440))

(declare-fun m!6295470 () Bool)

(assert (=> b!5252442 m!6295470))

(declare-fun m!6295472 () Bool)

(assert (=> b!5252442 m!6295472))

(declare-fun m!6295474 () Bool)

(assert (=> b!5252442 m!6295474))

(declare-fun m!6295476 () Bool)

(assert (=> b!5252440 m!6295476))

(declare-fun m!6295478 () Bool)

(assert (=> b!5252458 m!6295478))

(declare-fun m!6295480 () Bool)

(assert (=> b!5252458 m!6295480))

(declare-fun m!6295482 () Bool)

(assert (=> b!5252458 m!6295482))

(declare-fun m!6295484 () Bool)

(assert (=> b!5252458 m!6295484))

(assert (=> b!5252458 m!6295476))

(declare-fun m!6295486 () Bool)

(assert (=> b!5252458 m!6295486))

(declare-fun m!6295488 () Bool)

(assert (=> b!5252458 m!6295488))

(declare-fun m!6295490 () Bool)

(assert (=> b!5252458 m!6295490))

(declare-fun m!6295492 () Bool)

(assert (=> b!5252458 m!6295492))

(declare-fun m!6295494 () Bool)

(assert (=> b!5252458 m!6295494))

(declare-fun m!6295496 () Bool)

(assert (=> b!5252458 m!6295496))

(assert (=> b!5252439 m!6295426))

(declare-fun m!6295498 () Bool)

(assert (=> b!5252437 m!6295498))

(assert (=> b!5252437 m!6295498))

(declare-fun m!6295500 () Bool)

(assert (=> b!5252437 m!6295500))

(declare-fun m!6295502 () Bool)

(assert (=> b!5252461 m!6295502))

(declare-fun m!6295504 () Bool)

(assert (=> b!5252463 m!6295504))

(declare-fun m!6295506 () Bool)

(assert (=> b!5252463 m!6295506))

(declare-fun m!6295508 () Bool)

(assert (=> b!5252462 m!6295508))

(declare-fun m!6295510 () Bool)

(assert (=> b!5252462 m!6295510))

(declare-fun m!6295512 () Bool)

(assert (=> b!5252462 m!6295512))

(declare-fun m!6295514 () Bool)

(assert (=> b!5252430 m!6295514))

(declare-fun m!6295516 () Bool)

(assert (=> b!5252430 m!6295516))

(declare-fun m!6295518 () Bool)

(assert (=> b!5252430 m!6295518))

(assert (=> b!5252430 m!6295518))

(declare-fun m!6295520 () Bool)

(assert (=> b!5252430 m!6295520))

(declare-fun m!6295522 () Bool)

(assert (=> b!5252430 m!6295522))

(assert (=> b!5252430 m!6295514))

(declare-fun m!6295524 () Bool)

(assert (=> b!5252430 m!6295524))

(declare-fun m!6295526 () Bool)

(assert (=> b!5252446 m!6295526))

(declare-fun m!6295528 () Bool)

(assert (=> b!5252446 m!6295528))

(declare-fun m!6295530 () Bool)

(assert (=> b!5252443 m!6295530))

(declare-fun m!6295532 () Bool)

(assert (=> b!5252450 m!6295532))

(declare-fun m!6295534 () Bool)

(assert (=> b!5252452 m!6295534))

(declare-fun m!6295536 () Bool)

(assert (=> b!5252452 m!6295536))

(declare-fun m!6295538 () Bool)

(assert (=> b!5252459 m!6295538))

(declare-fun m!6295540 () Bool)

(assert (=> b!5252459 m!6295540))

(declare-fun m!6295542 () Bool)

(assert (=> b!5252459 m!6295542))

(declare-fun m!6295544 () Bool)

(assert (=> b!5252459 m!6295544))

(declare-fun m!6295546 () Bool)

(assert (=> b!5252459 m!6295546))

(declare-fun m!6295548 () Bool)

(assert (=> b!5252459 m!6295548))

(declare-fun m!6295550 () Bool)

(assert (=> b!5252459 m!6295550))

(declare-fun m!6295552 () Bool)

(assert (=> b!5252459 m!6295552))

(declare-fun m!6295554 () Bool)

(assert (=> b!5252459 m!6295554))

(declare-fun m!6295556 () Bool)

(assert (=> b!5252459 m!6295556))

(declare-fun m!6295558 () Bool)

(assert (=> b!5252459 m!6295558))

(declare-fun m!6295560 () Bool)

(assert (=> b!5252459 m!6295560))

(declare-fun m!6295562 () Bool)

(assert (=> b!5252436 m!6295562))

(assert (=> b!5252449 m!6295432))

(check-sat (not b!5252431) (not setNonEmpty!33545) (not b!5252445) (not b!5252430) (not b!5252442) (not b!5252441) (not b!5252457) (not b!5252458) (not b!5252448) (not b!5252438) (not b!5252444) (not b!5252453) (not b!5252465) (not b!5252434) (not b!5252464) (not b!5252425) (not b!5252449) (not b!5252440) tp_is_empty!38979 (not b!5252439) (not b!5252436) (not b!5252456) (not b!5252443) (not b!5252446) (not start!554934) (not b!5252463) (not b!5252452) (not b!5252459) (not b!5252427) (not b!5252460) (not b!5252447) (not b!5252462) (not b!5252461) (not b!5252450) (not b!5252437) (not b!5252429))
(check-sat)
