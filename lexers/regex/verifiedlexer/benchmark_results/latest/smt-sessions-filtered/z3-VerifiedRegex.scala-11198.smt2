; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!584674 () Bool)

(assert start!584674)

(declare-fun b!5654006 () Bool)

(assert (=> b!5654006 true))

(assert (=> b!5654006 true))

(declare-fun lambda!304220 () Int)

(declare-fun lambda!304219 () Int)

(assert (=> b!5654006 (not (= lambda!304220 lambda!304219))))

(assert (=> b!5654006 true))

(assert (=> b!5654006 true))

(declare-fun b!5653995 () Bool)

(assert (=> b!5653995 true))

(declare-fun b!5653981 () Bool)

(declare-fun res!2391695 () Bool)

(declare-fun e!3482534 () Bool)

(assert (=> b!5653981 (=> (not res!2391695) (not e!3482534))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31556 0))(
  ( (C!31557 (val!25480 Int)) )
))
(declare-datatypes ((Regex!15643 0))(
  ( (ElementMatch!15643 (c!993917 C!31556)) (Concat!24488 (regOne!31798 Regex!15643) (regTwo!31798 Regex!15643)) (EmptyExpr!15643) (Star!15643 (reg!15972 Regex!15643)) (EmptyLang!15643) (Union!15643 (regOne!31799 Regex!15643) (regTwo!31799 Regex!15643)) )
))
(declare-datatypes ((List!63228 0))(
  ( (Nil!63104) (Cons!63104 (h!69552 Regex!15643) (t!376530 List!63228)) )
))
(declare-datatypes ((Context!10054 0))(
  ( (Context!10055 (exprs!5527 List!63228)) )
))
(declare-fun z!1189 () (InoxSet Context!10054))

(declare-datatypes ((List!63229 0))(
  ( (Nil!63105) (Cons!63105 (h!69553 Context!10054) (t!376531 List!63229)) )
))
(declare-fun zl!343 () List!63229)

(declare-fun toList!9427 ((InoxSet Context!10054)) List!63229)

(assert (=> b!5653981 (= res!2391695 (= (toList!9427 z!1189) zl!343))))

(declare-fun setIsEmpty!37786 () Bool)

(declare-fun setRes!37786 () Bool)

(assert (=> setIsEmpty!37786 setRes!37786))

(declare-fun b!5653982 () Bool)

(declare-fun res!2391691 () Bool)

(declare-fun e!3482533 () Bool)

(assert (=> b!5653982 (=> res!2391691 e!3482533)))

(declare-fun e!3482538 () Bool)

(assert (=> b!5653982 (= res!2391691 e!3482538)))

(declare-fun res!2391692 () Bool)

(assert (=> b!5653982 (=> (not res!2391692) (not e!3482538))))

(declare-fun r!7292 () Regex!15643)

(get-info :version)

(assert (=> b!5653982 (= res!2391692 ((_ is Concat!24488) (regOne!31798 r!7292)))))

(declare-fun b!5653983 () Bool)

(declare-fun res!2391686 () Bool)

(declare-fun e!3482529 () Bool)

(assert (=> b!5653983 (=> res!2391686 e!3482529)))

(declare-fun isEmpty!34949 (List!63229) Bool)

(assert (=> b!5653983 (= res!2391686 (not (isEmpty!34949 (t!376531 zl!343))))))

(declare-fun b!5653984 () Bool)

(declare-fun e!3482528 () Bool)

(declare-fun tp!1566402 () Bool)

(assert (=> b!5653984 (= e!3482528 tp!1566402)))

(declare-fun b!5653985 () Bool)

(declare-fun e!3482532 () Bool)

(declare-fun tp!1566405 () Bool)

(declare-fun tp!1566403 () Bool)

(assert (=> b!5653985 (= e!3482532 (and tp!1566405 tp!1566403))))

(declare-fun b!5653986 () Bool)

(declare-fun tp!1566398 () Bool)

(declare-fun tp!1566399 () Bool)

(assert (=> b!5653986 (= e!3482532 (and tp!1566398 tp!1566399))))

(declare-fun b!5653987 () Bool)

(declare-fun res!2391690 () Bool)

(assert (=> b!5653987 (=> res!2391690 e!3482529)))

(assert (=> b!5653987 (= res!2391690 (not ((_ is Cons!63104) (exprs!5527 (h!69553 zl!343)))))))

(declare-fun b!5653988 () Bool)

(declare-fun tp!1566396 () Bool)

(assert (=> b!5653988 (= e!3482532 tp!1566396)))

(declare-fun b!5653989 () Bool)

(declare-datatypes ((Unit!156104 0))(
  ( (Unit!156105) )
))
(declare-fun e!3482530 () Unit!156104)

(declare-fun Unit!156106 () Unit!156104)

(assert (=> b!5653989 (= e!3482530 Unit!156106)))

(declare-fun b!5653990 () Bool)

(declare-fun res!2391687 () Bool)

(assert (=> b!5653990 (=> res!2391687 e!3482529)))

(declare-fun generalisedUnion!1506 (List!63228) Regex!15643)

(declare-fun unfocusZipperList!1071 (List!63229) List!63228)

(assert (=> b!5653990 (= res!2391687 (not (= r!7292 (generalisedUnion!1506 (unfocusZipperList!1071 zl!343)))))))

(declare-fun b!5653991 () Bool)

(declare-fun res!2391696 () Bool)

(assert (=> b!5653991 (=> res!2391696 e!3482529)))

(assert (=> b!5653991 (= res!2391696 (or ((_ is EmptyExpr!15643) r!7292) ((_ is EmptyLang!15643) r!7292) ((_ is ElementMatch!15643) r!7292) ((_ is Union!15643) r!7292) (not ((_ is Concat!24488) r!7292))))))

(declare-fun b!5653993 () Bool)

(declare-fun res!2391680 () Bool)

(assert (=> b!5653993 (=> res!2391680 e!3482533)))

(assert (=> b!5653993 (= res!2391680 (not ((_ is Concat!24488) (regOne!31798 r!7292))))))

(declare-fun b!5653994 () Bool)

(declare-fun res!2391688 () Bool)

(assert (=> b!5653994 (=> (not res!2391688) (not e!3482534))))

(declare-fun unfocusZipper!1385 (List!63229) Regex!15643)

(assert (=> b!5653994 (= res!2391688 (= r!7292 (unfocusZipper!1385 zl!343)))))

(declare-fun e!3482540 () Bool)

(assert (=> b!5653995 (= e!3482540 e!3482533)))

(declare-fun res!2391685 () Bool)

(assert (=> b!5653995 (=> res!2391685 e!3482533)))

(declare-datatypes ((List!63230 0))(
  ( (Nil!63106) (Cons!63106 (h!69554 C!31556) (t!376532 List!63230)) )
))
(declare-fun s!2326 () List!63230)

(assert (=> b!5653995 (= res!2391685 (or (and ((_ is ElementMatch!15643) (regOne!31798 r!7292)) (= (c!993917 (regOne!31798 r!7292)) (h!69554 s!2326))) ((_ is Union!15643) (regOne!31798 r!7292))))))

(declare-fun lt!2266199 () Unit!156104)

(assert (=> b!5653995 (= lt!2266199 e!3482530)))

(declare-fun c!993916 () Bool)

(declare-fun nullable!5675 (Regex!15643) Bool)

(assert (=> b!5653995 (= c!993916 (nullable!5675 (h!69552 (exprs!5527 (h!69553 zl!343)))))))

(declare-fun lambda!304221 () Int)

(declare-fun flatMap!1256 ((InoxSet Context!10054) Int) (InoxSet Context!10054))

(declare-fun derivationStepZipperUp!911 (Context!10054 C!31556) (InoxSet Context!10054))

(assert (=> b!5653995 (= (flatMap!1256 z!1189 lambda!304221) (derivationStepZipperUp!911 (h!69553 zl!343) (h!69554 s!2326)))))

(declare-fun lt!2266190 () Unit!156104)

(declare-fun lemmaFlatMapOnSingletonSet!788 ((InoxSet Context!10054) Context!10054 Int) Unit!156104)

(assert (=> b!5653995 (= lt!2266190 (lemmaFlatMapOnSingletonSet!788 z!1189 (h!69553 zl!343) lambda!304221))))

(declare-fun lt!2266201 () (InoxSet Context!10054))

(declare-fun lt!2266202 () Context!10054)

(assert (=> b!5653995 (= lt!2266201 (derivationStepZipperUp!911 lt!2266202 (h!69554 s!2326)))))

(declare-fun lt!2266198 () (InoxSet Context!10054))

(declare-fun derivationStepZipperDown!985 (Regex!15643 Context!10054 C!31556) (InoxSet Context!10054))

(assert (=> b!5653995 (= lt!2266198 (derivationStepZipperDown!985 (h!69552 (exprs!5527 (h!69553 zl!343))) lt!2266202 (h!69554 s!2326)))))

(assert (=> b!5653995 (= lt!2266202 (Context!10055 (t!376530 (exprs!5527 (h!69553 zl!343)))))))

(declare-fun lt!2266193 () (InoxSet Context!10054))

(assert (=> b!5653995 (= lt!2266193 (derivationStepZipperUp!911 (Context!10055 (Cons!63104 (h!69552 (exprs!5527 (h!69553 zl!343))) (t!376530 (exprs!5527 (h!69553 zl!343))))) (h!69554 s!2326)))))

(declare-fun b!5653996 () Bool)

(declare-fun e!3482539 () Bool)

(assert (=> b!5653996 (= e!3482533 e!3482539)))

(declare-fun res!2391689 () Bool)

(assert (=> b!5653996 (=> res!2391689 e!3482539)))

(declare-fun lt!2266192 () (InoxSet Context!10054))

(assert (=> b!5653996 (= res!2391689 (not (= lt!2266198 lt!2266192)))))

(assert (=> b!5653996 (= lt!2266192 (derivationStepZipperDown!985 (regOne!31798 (regOne!31798 r!7292)) (Context!10055 (Cons!63104 (regTwo!31798 (regOne!31798 r!7292)) (t!376530 (exprs!5527 (h!69553 zl!343))))) (h!69554 s!2326)))))

(declare-fun b!5653997 () Bool)

(declare-fun e!3482536 () Bool)

(declare-fun tp!1566401 () Bool)

(assert (=> b!5653997 (= e!3482536 tp!1566401)))

(declare-fun b!5653998 () Bool)

(declare-fun res!2391694 () Bool)

(assert (=> b!5653998 (=> res!2391694 e!3482540)))

(declare-fun isEmpty!34950 (List!63228) Bool)

(assert (=> b!5653998 (= res!2391694 (isEmpty!34950 (t!376530 (exprs!5527 (h!69553 zl!343)))))))

(declare-fun b!5653999 () Bool)

(declare-fun matchZipper!1781 ((InoxSet Context!10054) List!63230) Bool)

(assert (=> b!5653999 (= e!3482539 (= (matchZipper!1781 lt!2266198 (t!376532 s!2326)) (matchZipper!1781 lt!2266192 (t!376532 s!2326))))))

(declare-fun b!5654000 () Bool)

(assert (=> b!5654000 (= e!3482538 (nullable!5675 (regOne!31798 (regOne!31798 r!7292))))))

(declare-fun b!5654001 () Bool)

(assert (=> b!5654001 (= e!3482534 (not e!3482529))))

(declare-fun res!2391684 () Bool)

(assert (=> b!5654001 (=> res!2391684 e!3482529)))

(assert (=> b!5654001 (= res!2391684 (not ((_ is Cons!63105) zl!343)))))

(declare-fun lt!2266194 () Bool)

(declare-fun matchRSpec!2746 (Regex!15643 List!63230) Bool)

(assert (=> b!5654001 (= lt!2266194 (matchRSpec!2746 r!7292 s!2326))))

(declare-fun matchR!7828 (Regex!15643 List!63230) Bool)

(assert (=> b!5654001 (= lt!2266194 (matchR!7828 r!7292 s!2326))))

(declare-fun lt!2266191 () Unit!156104)

(declare-fun mainMatchTheorem!2746 (Regex!15643 List!63230) Unit!156104)

(assert (=> b!5654001 (= lt!2266191 (mainMatchTheorem!2746 r!7292 s!2326))))

(declare-fun tp!1566400 () Bool)

(declare-fun setElem!37786 () Context!10054)

(declare-fun setNonEmpty!37786 () Bool)

(declare-fun inv!82354 (Context!10054) Bool)

(assert (=> setNonEmpty!37786 (= setRes!37786 (and tp!1566400 (inv!82354 setElem!37786) e!3482528))))

(declare-fun setRest!37786 () (InoxSet Context!10054))

(assert (=> setNonEmpty!37786 (= z!1189 ((_ map or) (store ((as const (Array Context!10054 Bool)) false) setElem!37786 true) setRest!37786))))

(declare-fun b!5654002 () Bool)

(declare-fun e!3482531 () Bool)

(assert (=> b!5654002 (= e!3482531 (matchZipper!1781 lt!2266201 (t!376532 s!2326)))))

(declare-fun b!5654003 () Bool)

(declare-fun tp!1566404 () Bool)

(declare-fun e!3482537 () Bool)

(assert (=> b!5654003 (= e!3482537 (and (inv!82354 (h!69553 zl!343)) e!3482536 tp!1566404))))

(declare-fun b!5654004 () Bool)

(declare-fun res!2391683 () Bool)

(assert (=> b!5654004 (=> res!2391683 e!3482529)))

(declare-fun generalisedConcat!1258 (List!63228) Regex!15643)

(assert (=> b!5654004 (= res!2391683 (not (= r!7292 (generalisedConcat!1258 (exprs!5527 (h!69553 zl!343))))))))

(declare-fun b!5654005 () Bool)

(declare-fun tp_is_empty!40539 () Bool)

(assert (=> b!5654005 (= e!3482532 tp_is_empty!40539)))

(declare-fun b!5653992 () Bool)

(declare-fun Unit!156107 () Unit!156104)

(assert (=> b!5653992 (= e!3482530 Unit!156107)))

(declare-fun lt!2266195 () Unit!156104)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!668 ((InoxSet Context!10054) (InoxSet Context!10054) List!63230) Unit!156104)

(assert (=> b!5653992 (= lt!2266195 (lemmaZipperConcatMatchesSameAsBothZippers!668 lt!2266198 lt!2266201 (t!376532 s!2326)))))

(declare-fun res!2391682 () Bool)

(assert (=> b!5653992 (= res!2391682 (matchZipper!1781 lt!2266198 (t!376532 s!2326)))))

(assert (=> b!5653992 (=> res!2391682 e!3482531)))

(assert (=> b!5653992 (= (matchZipper!1781 ((_ map or) lt!2266198 lt!2266201) (t!376532 s!2326)) e!3482531)))

(declare-fun res!2391693 () Bool)

(assert (=> start!584674 (=> (not res!2391693) (not e!3482534))))

(declare-fun validRegex!7379 (Regex!15643) Bool)

(assert (=> start!584674 (= res!2391693 (validRegex!7379 r!7292))))

(assert (=> start!584674 e!3482534))

(assert (=> start!584674 e!3482532))

(declare-fun condSetEmpty!37786 () Bool)

(assert (=> start!584674 (= condSetEmpty!37786 (= z!1189 ((as const (Array Context!10054 Bool)) false)))))

(assert (=> start!584674 setRes!37786))

(assert (=> start!584674 e!3482537))

(declare-fun e!3482535 () Bool)

(assert (=> start!584674 e!3482535))

(assert (=> b!5654006 (= e!3482529 e!3482540)))

(declare-fun res!2391681 () Bool)

(assert (=> b!5654006 (=> res!2391681 e!3482540)))

(declare-fun lt!2266197 () Bool)

(assert (=> b!5654006 (= res!2391681 (or (not (= lt!2266194 lt!2266197)) ((_ is Nil!63106) s!2326)))))

(declare-fun Exists!2743 (Int) Bool)

(assert (=> b!5654006 (= (Exists!2743 lambda!304219) (Exists!2743 lambda!304220))))

(declare-fun lt!2266200 () Unit!156104)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1372 (Regex!15643 Regex!15643 List!63230) Unit!156104)

(assert (=> b!5654006 (= lt!2266200 (lemmaExistCutMatchRandMatchRSpecEquivalent!1372 (regOne!31798 r!7292) (regTwo!31798 r!7292) s!2326))))

(assert (=> b!5654006 (= lt!2266197 (Exists!2743 lambda!304219))))

(declare-datatypes ((tuple2!65480 0))(
  ( (tuple2!65481 (_1!36043 List!63230) (_2!36043 List!63230)) )
))
(declare-datatypes ((Option!15652 0))(
  ( (None!15651) (Some!15651 (v!51698 tuple2!65480)) )
))
(declare-fun isDefined!12355 (Option!15652) Bool)

(declare-fun findConcatSeparation!2066 (Regex!15643 Regex!15643 List!63230 List!63230 List!63230) Option!15652)

(assert (=> b!5654006 (= lt!2266197 (isDefined!12355 (findConcatSeparation!2066 (regOne!31798 r!7292) (regTwo!31798 r!7292) Nil!63106 s!2326 s!2326)))))

(declare-fun lt!2266196 () Unit!156104)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1830 (Regex!15643 Regex!15643 List!63230) Unit!156104)

(assert (=> b!5654006 (= lt!2266196 (lemmaFindConcatSeparationEquivalentToExists!1830 (regOne!31798 r!7292) (regTwo!31798 r!7292) s!2326))))

(declare-fun b!5654007 () Bool)

(declare-fun tp!1566397 () Bool)

(assert (=> b!5654007 (= e!3482535 (and tp_is_empty!40539 tp!1566397))))

(assert (= (and start!584674 res!2391693) b!5653981))

(assert (= (and b!5653981 res!2391695) b!5653994))

(assert (= (and b!5653994 res!2391688) b!5654001))

(assert (= (and b!5654001 (not res!2391684)) b!5653983))

(assert (= (and b!5653983 (not res!2391686)) b!5654004))

(assert (= (and b!5654004 (not res!2391683)) b!5653987))

(assert (= (and b!5653987 (not res!2391690)) b!5653990))

(assert (= (and b!5653990 (not res!2391687)) b!5653991))

(assert (= (and b!5653991 (not res!2391696)) b!5654006))

(assert (= (and b!5654006 (not res!2391681)) b!5653998))

(assert (= (and b!5653998 (not res!2391694)) b!5653995))

(assert (= (and b!5653995 c!993916) b!5653992))

(assert (= (and b!5653995 (not c!993916)) b!5653989))

(assert (= (and b!5653992 (not res!2391682)) b!5654002))

(assert (= (and b!5653995 (not res!2391685)) b!5653982))

(assert (= (and b!5653982 res!2391692) b!5654000))

(assert (= (and b!5653982 (not res!2391691)) b!5653993))

(assert (= (and b!5653993 (not res!2391680)) b!5653996))

(assert (= (and b!5653996 (not res!2391689)) b!5653999))

(assert (= (and start!584674 ((_ is ElementMatch!15643) r!7292)) b!5654005))

(assert (= (and start!584674 ((_ is Concat!24488) r!7292)) b!5653986))

(assert (= (and start!584674 ((_ is Star!15643) r!7292)) b!5653988))

(assert (= (and start!584674 ((_ is Union!15643) r!7292)) b!5653985))

(assert (= (and start!584674 condSetEmpty!37786) setIsEmpty!37786))

(assert (= (and start!584674 (not condSetEmpty!37786)) setNonEmpty!37786))

(assert (= setNonEmpty!37786 b!5653984))

(assert (= b!5654003 b!5653997))

(assert (= (and start!584674 ((_ is Cons!63105) zl!343)) b!5654003))

(assert (= (and start!584674 ((_ is Cons!63106) s!2326)) b!5654007))

(declare-fun m!6620726 () Bool)

(assert (=> b!5654003 m!6620726))

(declare-fun m!6620728 () Bool)

(assert (=> start!584674 m!6620728))

(declare-fun m!6620730 () Bool)

(assert (=> setNonEmpty!37786 m!6620730))

(declare-fun m!6620732 () Bool)

(assert (=> b!5654006 m!6620732))

(declare-fun m!6620734 () Bool)

(assert (=> b!5654006 m!6620734))

(declare-fun m!6620736 () Bool)

(assert (=> b!5654006 m!6620736))

(declare-fun m!6620738 () Bool)

(assert (=> b!5654006 m!6620738))

(declare-fun m!6620740 () Bool)

(assert (=> b!5654006 m!6620740))

(assert (=> b!5654006 m!6620732))

(assert (=> b!5654006 m!6620738))

(declare-fun m!6620742 () Bool)

(assert (=> b!5654006 m!6620742))

(declare-fun m!6620744 () Bool)

(assert (=> b!5653996 m!6620744))

(declare-fun m!6620746 () Bool)

(assert (=> b!5653994 m!6620746))

(declare-fun m!6620748 () Bool)

(assert (=> b!5654000 m!6620748))

(declare-fun m!6620750 () Bool)

(assert (=> b!5653999 m!6620750))

(declare-fun m!6620752 () Bool)

(assert (=> b!5653999 m!6620752))

(declare-fun m!6620754 () Bool)

(assert (=> b!5653981 m!6620754))

(declare-fun m!6620756 () Bool)

(assert (=> b!5653990 m!6620756))

(assert (=> b!5653990 m!6620756))

(declare-fun m!6620758 () Bool)

(assert (=> b!5653990 m!6620758))

(declare-fun m!6620760 () Bool)

(assert (=> b!5654002 m!6620760))

(declare-fun m!6620762 () Bool)

(assert (=> b!5653992 m!6620762))

(assert (=> b!5653992 m!6620750))

(declare-fun m!6620764 () Bool)

(assert (=> b!5653992 m!6620764))

(declare-fun m!6620766 () Bool)

(assert (=> b!5654004 m!6620766))

(declare-fun m!6620768 () Bool)

(assert (=> b!5653998 m!6620768))

(declare-fun m!6620770 () Bool)

(assert (=> b!5654001 m!6620770))

(declare-fun m!6620772 () Bool)

(assert (=> b!5654001 m!6620772))

(declare-fun m!6620774 () Bool)

(assert (=> b!5654001 m!6620774))

(declare-fun m!6620776 () Bool)

(assert (=> b!5653995 m!6620776))

(declare-fun m!6620778 () Bool)

(assert (=> b!5653995 m!6620778))

(declare-fun m!6620780 () Bool)

(assert (=> b!5653995 m!6620780))

(declare-fun m!6620782 () Bool)

(assert (=> b!5653995 m!6620782))

(declare-fun m!6620784 () Bool)

(assert (=> b!5653995 m!6620784))

(declare-fun m!6620786 () Bool)

(assert (=> b!5653995 m!6620786))

(declare-fun m!6620788 () Bool)

(assert (=> b!5653995 m!6620788))

(declare-fun m!6620790 () Bool)

(assert (=> b!5653983 m!6620790))

(check-sat (not b!5653995) (not b!5653985) (not b!5654002) (not b!5653998) (not b!5653983) (not setNonEmpty!37786) (not b!5653997) (not b!5653981) (not b!5654000) (not b!5653988) (not b!5654003) (not b!5654004) (not b!5653992) (not b!5654007) (not b!5653986) (not b!5653984) (not b!5654001) tp_is_empty!40539 (not b!5653990) (not b!5654006) (not b!5653996) (not b!5653994) (not start!584674) (not b!5653999))
(check-sat)
