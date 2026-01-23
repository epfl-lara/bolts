; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!596508 () Bool)

(assert start!596508)

(declare-fun b!5821785 () Bool)

(assert (=> b!5821785 true))

(declare-fun b!5821777 () Bool)

(assert (=> b!5821777 true))

(declare-fun bs!1373613 () Bool)

(declare-fun b!5821784 () Bool)

(assert (= bs!1373613 (and b!5821784 b!5821785)))

(declare-fun lambda!318624 () Int)

(declare-fun lambda!318622 () Int)

(assert (=> bs!1373613 (not (= lambda!318624 lambda!318622))))

(declare-fun b!5821766 () Bool)

(declare-fun e!3572826 () Bool)

(declare-fun tp!1606643 () Bool)

(declare-fun tp!1606637 () Bool)

(assert (=> b!5821766 (= e!3572826 (and tp!1606643 tp!1606637))))

(declare-fun b!5821767 () Bool)

(declare-fun res!2454862 () Bool)

(declare-fun e!3572822 () Bool)

(assert (=> b!5821767 (=> (not res!2454862) (not e!3572822))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!32000 0))(
  ( (C!32001 (val!25702 Int)) )
))
(declare-datatypes ((Regex!15865 0))(
  ( (ElementMatch!15865 (c!1031729 C!32000)) (Concat!24710 (regOne!32242 Regex!15865) (regTwo!32242 Regex!15865)) (EmptyExpr!15865) (Star!15865 (reg!16194 Regex!15865)) (EmptyLang!15865) (Union!15865 (regOne!32243 Regex!15865) (regTwo!32243 Regex!15865)) )
))
(declare-datatypes ((List!63894 0))(
  ( (Nil!63770) (Cons!63770 (h!70218 Regex!15865) (t!377249 List!63894)) )
))
(declare-datatypes ((Context!10498 0))(
  ( (Context!10499 (exprs!5749 List!63894)) )
))
(declare-fun z!1189 () (InoxSet Context!10498))

(declare-datatypes ((List!63895 0))(
  ( (Nil!63771) (Cons!63771 (h!70219 Context!10498) (t!377250 List!63895)) )
))
(declare-fun zl!343 () List!63895)

(declare-fun toList!9649 ((InoxSet Context!10498)) List!63895)

(assert (=> b!5821767 (= res!2454862 (= (toList!9649 z!1189) zl!343))))

(declare-fun tp!1606641 () Bool)

(declare-fun e!3572829 () Bool)

(declare-fun e!3572818 () Bool)

(declare-fun b!5821768 () Bool)

(declare-fun inv!82909 (Context!10498) Bool)

(assert (=> b!5821768 (= e!3572818 (and (inv!82909 (h!70219 zl!343)) e!3572829 tp!1606641))))

(declare-fun b!5821769 () Bool)

(declare-fun tp_is_empty!40983 () Bool)

(assert (=> b!5821769 (= e!3572826 tp_is_empty!40983)))

(declare-fun b!5821770 () Bool)

(declare-fun e!3572820 () Bool)

(declare-fun isEmpty!35651 (List!63895) Bool)

(assert (=> b!5821770 (= e!3572820 (isEmpty!35651 (t!377250 zl!343)))))

(declare-fun b!5821771 () Bool)

(declare-fun res!2454861 () Bool)

(declare-fun e!3572825 () Bool)

(assert (=> b!5821771 (=> res!2454861 e!3572825)))

(declare-datatypes ((List!63896 0))(
  ( (Nil!63772) (Cons!63772 (h!70220 C!32000) (t!377251 List!63896)) )
))
(declare-fun s!2326 () List!63896)

(declare-fun matchZipper!1971 ((InoxSet Context!10498) List!63896) Bool)

(assert (=> b!5821771 (= res!2454861 (not (matchZipper!1971 z!1189 s!2326)))))

(declare-fun b!5821772 () Bool)

(declare-fun e!3572821 () Bool)

(declare-fun tp!1606638 () Bool)

(assert (=> b!5821772 (= e!3572821 (and tp_is_empty!40983 tp!1606638))))

(declare-fun res!2454856 () Bool)

(assert (=> start!596508 (=> (not res!2454856) (not e!3572822))))

(declare-fun r!7292 () Regex!15865)

(declare-fun validRegex!7601 (Regex!15865) Bool)

(assert (=> start!596508 (= res!2454856 (validRegex!7601 r!7292))))

(assert (=> start!596508 e!3572822))

(assert (=> start!596508 e!3572826))

(declare-fun condSetEmpty!39314 () Bool)

(assert (=> start!596508 (= condSetEmpty!39314 (= z!1189 ((as const (Array Context!10498 Bool)) false)))))

(declare-fun setRes!39314 () Bool)

(assert (=> start!596508 setRes!39314))

(assert (=> start!596508 e!3572818))

(assert (=> start!596508 e!3572821))

(declare-fun b!5821773 () Bool)

(declare-fun e!3572819 () Bool)

(declare-fun tp!1606644 () Bool)

(assert (=> b!5821773 (= e!3572819 tp!1606644)))

(declare-fun b!5821774 () Bool)

(declare-fun e!3572823 () Bool)

(assert (=> b!5821774 (= e!3572823 true)))

(declare-fun lt!2302333 () List!63894)

(declare-fun lt!2302329 () Regex!15865)

(declare-fun contains!19901 (List!63894 Regex!15865) Bool)

(assert (=> b!5821774 (contains!19901 lt!2302333 lt!2302329)))

(declare-datatypes ((Unit!157005 0))(
  ( (Unit!157006) )
))
(declare-fun lt!2302334 () Unit!157005)

(declare-fun lt!2302331 () Context!10498)

(declare-fun lemmaZipperContainsContextUnfocusListContainsConcat!10 (List!63895 Context!10498) Unit!157005)

(assert (=> b!5821774 (= lt!2302334 (lemmaZipperContainsContextUnfocusListContainsConcat!10 zl!343 lt!2302331))))

(declare-fun lt!2302325 () (InoxSet Context!10498))

(declare-fun matchR!8050 (Regex!15865 List!63896) Bool)

(assert (=> b!5821774 (= (matchR!8050 lt!2302329 s!2326) (matchZipper!1971 lt!2302325 s!2326))))

(declare-fun lt!2302324 () List!63895)

(declare-fun lt!2302322 () Unit!157005)

(declare-fun theoremZipperRegexEquiv!689 ((InoxSet Context!10498) List!63895 Regex!15865 List!63896) Unit!157005)

(assert (=> b!5821774 (= lt!2302322 (theoremZipperRegexEquiv!689 lt!2302325 lt!2302324 lt!2302329 s!2326))))

(declare-fun generalisedConcat!1464 (List!63894) Regex!15865)

(assert (=> b!5821774 (= lt!2302329 (generalisedConcat!1464 (exprs!5749 lt!2302331)))))

(assert (=> b!5821774 (= lt!2302325 (store ((as const (Array Context!10498 Bool)) false) lt!2302331 true))))

(declare-fun b!5821775 () Bool)

(declare-fun e!3572827 () Bool)

(assert (=> b!5821775 (= e!3572827 e!3572823)))

(declare-fun res!2454858 () Bool)

(assert (=> b!5821775 (=> res!2454858 e!3572823)))

(declare-fun lt!2302328 () Int)

(declare-fun zipperDepthTotal!268 (List!63895) Int)

(assert (=> b!5821775 (= res!2454858 (<= lt!2302328 (zipperDepthTotal!268 lt!2302324)))))

(assert (=> b!5821775 (= lt!2302324 (Cons!63771 lt!2302331 Nil!63771))))

(declare-fun lt!2302327 () Int)

(assert (=> b!5821775 (< lt!2302327 lt!2302328)))

(assert (=> b!5821775 (= lt!2302328 (zipperDepthTotal!268 zl!343))))

(declare-fun contextDepthTotal!246 (Context!10498) Int)

(assert (=> b!5821775 (= lt!2302327 (contextDepthTotal!246 lt!2302331))))

(declare-fun lt!2302321 () Unit!157005)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!30 (List!63895 Context!10498) Unit!157005)

(assert (=> b!5821775 (= lt!2302321 (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!30 zl!343 lt!2302331))))

(declare-fun b!5821776 () Bool)

(declare-fun res!2454863 () Bool)

(declare-fun e!3572824 () Bool)

(assert (=> b!5821776 (=> res!2454863 e!3572824)))

(get-info :version)

(assert (=> b!5821776 (= res!2454863 (or (not ((_ is Cons!63771) zl!343)) ((_ is Nil!63772) s!2326) (not (= zl!343 (Cons!63771 (h!70219 zl!343) (t!377250 zl!343))))))))

(declare-fun e!3572828 () Bool)

(assert (=> b!5821777 (= e!3572825 e!3572828)))

(declare-fun res!2454864 () Bool)

(assert (=> b!5821777 (=> res!2454864 e!3572828)))

(declare-fun lambda!318623 () Int)

(declare-fun exists!2294 (List!63895 Int) Bool)

(assert (=> b!5821777 (= res!2454864 (not (exists!2294 zl!343 lambda!318623)))))

(assert (=> b!5821777 (exists!2294 zl!343 lambda!318623)))

(declare-fun lt!2302320 () Unit!157005)

(declare-fun lemmaZipperMatchesExistsMatchingContext!86 (List!63895 List!63896) Unit!157005)

(assert (=> b!5821777 (= lt!2302320 (lemmaZipperMatchesExistsMatchingContext!86 zl!343 s!2326))))

(declare-fun b!5821778 () Bool)

(declare-fun tp!1606642 () Bool)

(assert (=> b!5821778 (= e!3572829 tp!1606642)))

(declare-fun setIsEmpty!39314 () Bool)

(assert (=> setIsEmpty!39314 setRes!39314))

(declare-fun b!5821779 () Bool)

(declare-fun res!2454859 () Bool)

(assert (=> b!5821779 (=> (not res!2454859) (not e!3572822))))

(declare-fun unfocusZipper!1607 (List!63895) Regex!15865)

(assert (=> b!5821779 (= res!2454859 (= r!7292 (unfocusZipper!1607 zl!343)))))

(declare-fun b!5821780 () Bool)

(declare-fun tp!1606636 () Bool)

(declare-fun tp!1606639 () Bool)

(assert (=> b!5821780 (= e!3572826 (and tp!1606636 tp!1606639))))

(declare-fun setElem!39314 () Context!10498)

(declare-fun tp!1606635 () Bool)

(declare-fun setNonEmpty!39314 () Bool)

(assert (=> setNonEmpty!39314 (= setRes!39314 (and tp!1606635 (inv!82909 setElem!39314) e!3572819))))

(declare-fun setRest!39314 () (InoxSet Context!10498))

(assert (=> setNonEmpty!39314 (= z!1189 ((_ map or) (store ((as const (Array Context!10498 Bool)) false) setElem!39314 true) setRest!39314))))

(declare-fun b!5821781 () Bool)

(declare-fun res!2454855 () Bool)

(assert (=> b!5821781 (=> res!2454855 e!3572824)))

(assert (=> b!5821781 (= res!2454855 (isEmpty!35651 (t!377250 zl!343)))))

(declare-fun b!5821782 () Bool)

(declare-fun tp!1606640 () Bool)

(assert (=> b!5821782 (= e!3572826 tp!1606640)))

(declare-fun b!5821783 () Bool)

(declare-fun res!2454865 () Bool)

(assert (=> b!5821783 (=> res!2454865 e!3572825)))

(declare-fun exists!2295 (List!63894 Int) Bool)

(assert (=> b!5821783 (= res!2454865 (exists!2295 lt!2302333 lambda!318622))))

(assert (=> b!5821784 (= e!3572828 e!3572827)))

(declare-fun res!2454857 () Bool)

(assert (=> b!5821784 (=> res!2454857 e!3572827)))

(declare-fun forall!14959 (List!63894 Int) Bool)

(assert (=> b!5821784 (= res!2454857 (not (forall!14959 (exprs!5749 lt!2302331) lambda!318624)))))

(assert (=> b!5821784 (forall!14959 (exprs!5749 lt!2302331) lambda!318624)))

(declare-fun lt!2302330 () Unit!157005)

(declare-fun lemmaContextForallValidExprs!62 (Context!10498 List!63894) Unit!157005)

(assert (=> b!5821784 (= lt!2302330 (lemmaContextForallValidExprs!62 lt!2302331 (exprs!5749 lt!2302331)))))

(declare-fun getWitness!930 (List!63895 Int) Context!10498)

(assert (=> b!5821784 (= lt!2302331 (getWitness!930 zl!343 lambda!318623))))

(assert (=> b!5821785 (= e!3572824 e!3572825)))

(declare-fun res!2454854 () Bool)

(assert (=> b!5821785 (=> res!2454854 e!3572825)))

(declare-fun lt!2302332 () Bool)

(assert (=> b!5821785 (= res!2454854 lt!2302332)))

(assert (=> b!5821785 (= lt!2302332 (exists!2295 lt!2302333 lambda!318622))))

(declare-fun lt!2302326 () Unit!157005)

(declare-fun matchRGenUnionSpec!306 (Regex!15865 List!63894 List!63896) Unit!157005)

(assert (=> b!5821785 (= lt!2302326 (matchRGenUnionSpec!306 r!7292 lt!2302333 s!2326))))

(declare-fun unfocusZipperList!1287 (List!63895) List!63894)

(assert (=> b!5821785 (= lt!2302333 (unfocusZipperList!1287 zl!343))))

(declare-fun b!5821786 () Bool)

(assert (=> b!5821786 (= e!3572822 (not e!3572824))))

(declare-fun res!2454860 () Bool)

(assert (=> b!5821786 (=> res!2454860 e!3572824)))

(assert (=> b!5821786 (= res!2454860 e!3572820)))

(declare-fun res!2454866 () Bool)

(assert (=> b!5821786 (=> (not res!2454866) (not e!3572820))))

(assert (=> b!5821786 (= res!2454866 ((_ is Cons!63771) zl!343))))

(declare-fun matchRSpec!2968 (Regex!15865 List!63896) Bool)

(assert (=> b!5821786 (= lt!2302332 (matchRSpec!2968 r!7292 s!2326))))

(assert (=> b!5821786 (= lt!2302332 (matchR!8050 r!7292 s!2326))))

(declare-fun lt!2302323 () Unit!157005)

(declare-fun mainMatchTheorem!2968 (Regex!15865 List!63896) Unit!157005)

(assert (=> b!5821786 (= lt!2302323 (mainMatchTheorem!2968 r!7292 s!2326))))

(assert (= (and start!596508 res!2454856) b!5821767))

(assert (= (and b!5821767 res!2454862) b!5821779))

(assert (= (and b!5821779 res!2454859) b!5821786))

(assert (= (and b!5821786 res!2454866) b!5821770))

(assert (= (and b!5821786 (not res!2454860)) b!5821776))

(assert (= (and b!5821776 (not res!2454863)) b!5821781))

(assert (= (and b!5821781 (not res!2454855)) b!5821785))

(assert (= (and b!5821785 (not res!2454854)) b!5821783))

(assert (= (and b!5821783 (not res!2454865)) b!5821771))

(assert (= (and b!5821771 (not res!2454861)) b!5821777))

(assert (= (and b!5821777 (not res!2454864)) b!5821784))

(assert (= (and b!5821784 (not res!2454857)) b!5821775))

(assert (= (and b!5821775 (not res!2454858)) b!5821774))

(assert (= (and start!596508 ((_ is ElementMatch!15865) r!7292)) b!5821769))

(assert (= (and start!596508 ((_ is Concat!24710) r!7292)) b!5821766))

(assert (= (and start!596508 ((_ is Star!15865) r!7292)) b!5821782))

(assert (= (and start!596508 ((_ is Union!15865) r!7292)) b!5821780))

(assert (= (and start!596508 condSetEmpty!39314) setIsEmpty!39314))

(assert (= (and start!596508 (not condSetEmpty!39314)) setNonEmpty!39314))

(assert (= setNonEmpty!39314 b!5821773))

(assert (= b!5821768 b!5821778))

(assert (= (and start!596508 ((_ is Cons!63771) zl!343)) b!5821768))

(assert (= (and start!596508 ((_ is Cons!63772) s!2326)) b!5821772))

(declare-fun m!6756590 () Bool)

(assert (=> b!5821785 m!6756590))

(declare-fun m!6756592 () Bool)

(assert (=> b!5821785 m!6756592))

(declare-fun m!6756594 () Bool)

(assert (=> b!5821785 m!6756594))

(declare-fun m!6756596 () Bool)

(assert (=> b!5821767 m!6756596))

(declare-fun m!6756598 () Bool)

(assert (=> b!5821768 m!6756598))

(declare-fun m!6756600 () Bool)

(assert (=> b!5821774 m!6756600))

(declare-fun m!6756602 () Bool)

(assert (=> b!5821774 m!6756602))

(declare-fun m!6756604 () Bool)

(assert (=> b!5821774 m!6756604))

(declare-fun m!6756606 () Bool)

(assert (=> b!5821774 m!6756606))

(declare-fun m!6756608 () Bool)

(assert (=> b!5821774 m!6756608))

(declare-fun m!6756610 () Bool)

(assert (=> b!5821774 m!6756610))

(declare-fun m!6756612 () Bool)

(assert (=> b!5821774 m!6756612))

(assert (=> b!5821783 m!6756590))

(declare-fun m!6756614 () Bool)

(assert (=> b!5821786 m!6756614))

(declare-fun m!6756616 () Bool)

(assert (=> b!5821786 m!6756616))

(declare-fun m!6756618 () Bool)

(assert (=> b!5821786 m!6756618))

(declare-fun m!6756620 () Bool)

(assert (=> b!5821781 m!6756620))

(declare-fun m!6756622 () Bool)

(assert (=> setNonEmpty!39314 m!6756622))

(declare-fun m!6756624 () Bool)

(assert (=> b!5821775 m!6756624))

(declare-fun m!6756626 () Bool)

(assert (=> b!5821775 m!6756626))

(declare-fun m!6756628 () Bool)

(assert (=> b!5821775 m!6756628))

(declare-fun m!6756630 () Bool)

(assert (=> b!5821775 m!6756630))

(declare-fun m!6756632 () Bool)

(assert (=> b!5821779 m!6756632))

(declare-fun m!6756634 () Bool)

(assert (=> b!5821777 m!6756634))

(assert (=> b!5821777 m!6756634))

(declare-fun m!6756636 () Bool)

(assert (=> b!5821777 m!6756636))

(declare-fun m!6756638 () Bool)

(assert (=> b!5821771 m!6756638))

(declare-fun m!6756640 () Bool)

(assert (=> start!596508 m!6756640))

(assert (=> b!5821770 m!6756620))

(declare-fun m!6756642 () Bool)

(assert (=> b!5821784 m!6756642))

(assert (=> b!5821784 m!6756642))

(declare-fun m!6756644 () Bool)

(assert (=> b!5821784 m!6756644))

(declare-fun m!6756646 () Bool)

(assert (=> b!5821784 m!6756646))

(check-sat (not b!5821780) (not b!5821786) (not b!5821774) (not b!5821770) (not b!5821782) (not b!5821772) (not b!5821784) (not b!5821773) (not b!5821777) (not b!5821783) (not b!5821781) (not b!5821771) (not b!5821768) (not b!5821775) (not b!5821767) (not start!596508) tp_is_empty!40983 (not b!5821779) (not b!5821785) (not setNonEmpty!39314) (not b!5821778) (not b!5821766))
(check-sat)
