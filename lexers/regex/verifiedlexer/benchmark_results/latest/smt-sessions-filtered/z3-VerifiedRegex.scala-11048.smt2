; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!572810 () Bool)

(assert start!572810)

(declare-fun b!5473754 () Bool)

(assert (=> b!5473754 true))

(assert (=> b!5473754 true))

(declare-fun lambda!291509 () Int)

(declare-fun lambda!291508 () Int)

(assert (=> b!5473754 (not (= lambda!291509 lambda!291508))))

(assert (=> b!5473754 true))

(assert (=> b!5473754 true))

(declare-fun lambda!291510 () Int)

(assert (=> b!5473754 (not (= lambda!291510 lambda!291508))))

(assert (=> b!5473754 (not (= lambda!291510 lambda!291509))))

(assert (=> b!5473754 true))

(assert (=> b!5473754 true))

(declare-fun b!5473746 () Bool)

(assert (=> b!5473746 true))

(declare-fun b!5473730 () Bool)

(declare-fun e!3388243 () Bool)

(declare-fun e!3388249 () Bool)

(assert (=> b!5473730 (= e!3388243 e!3388249)))

(declare-fun res!2332802 () Bool)

(assert (=> b!5473730 (=> (not res!2332802) (not e!3388249))))

(declare-fun Exists!2522 (Int) Bool)

(assert (=> b!5473730 (= res!2332802 (= (Exists!2522 lambda!291508) (Exists!2522 lambda!291509)))))

(declare-fun b!5473731 () Bool)

(declare-fun res!2332792 () Bool)

(declare-fun e!3388240 () Bool)

(assert (=> b!5473731 (=> res!2332792 e!3388240)))

(declare-datatypes ((C!30956 0))(
  ( (C!30957 (val!25180 Int)) )
))
(declare-datatypes ((Regex!15343 0))(
  ( (ElementMatch!15343 (c!956379 C!30956)) (Concat!24188 (regOne!31198 Regex!15343) (regTwo!31198 Regex!15343)) (EmptyExpr!15343) (Star!15343 (reg!15672 Regex!15343)) (EmptyLang!15343) (Union!15343 (regOne!31199 Regex!15343) (regTwo!31199 Regex!15343)) )
))
(declare-datatypes ((List!62328 0))(
  ( (Nil!62204) (Cons!62204 (h!68652 Regex!15343) (t!375557 List!62328)) )
))
(declare-datatypes ((Context!9454 0))(
  ( (Context!9455 (exprs!5227 List!62328)) )
))
(declare-datatypes ((List!62329 0))(
  ( (Nil!62205) (Cons!62205 (h!68653 Context!9454) (t!375558 List!62329)) )
))
(declare-fun zl!343 () List!62329)

(declare-fun isEmpty!34166 (List!62329) Bool)

(assert (=> b!5473731 (= res!2332792 (not (isEmpty!34166 (t!375558 zl!343))))))

(declare-fun b!5473732 () Bool)

(declare-fun e!3388246 () Bool)

(declare-fun tp!1504841 () Bool)

(assert (=> b!5473732 (= e!3388246 tp!1504841)))

(declare-fun b!5473733 () Bool)

(declare-fun res!2332806 () Bool)

(declare-fun e!3388256 () Bool)

(assert (=> b!5473733 (=> res!2332806 e!3388256)))

(declare-fun lt!2235833 () Regex!15343)

(declare-fun r!7292 () Regex!15343)

(assert (=> b!5473733 (= res!2332806 (or (not (= lt!2235833 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5473734 () Bool)

(declare-fun e!3388250 () Bool)

(declare-fun e!3388253 () Bool)

(assert (=> b!5473734 (= e!3388250 e!3388253)))

(declare-fun res!2332812 () Bool)

(assert (=> b!5473734 (=> res!2332812 e!3388253)))

(declare-fun lt!2235830 () Bool)

(assert (=> b!5473734 (= res!2332812 (not lt!2235830))))

(declare-fun e!3388247 () Bool)

(assert (=> b!5473734 e!3388247))

(declare-fun res!2332794 () Bool)

(assert (=> b!5473734 (=> (not res!2332794) (not e!3388247))))

(declare-datatypes ((List!62330 0))(
  ( (Nil!62206) (Cons!62206 (h!68654 C!30956) (t!375559 List!62330)) )
))
(declare-fun s!2326 () List!62330)

(declare-fun lt!2235846 () Regex!15343)

(declare-fun matchRSpec!2446 (Regex!15343 List!62330) Bool)

(assert (=> b!5473734 (= res!2332794 (= lt!2235830 (matchRSpec!2446 lt!2235846 s!2326)))))

(declare-fun matchR!7528 (Regex!15343 List!62330) Bool)

(assert (=> b!5473734 (= lt!2235830 (matchR!7528 lt!2235846 s!2326))))

(declare-datatypes ((Unit!155136 0))(
  ( (Unit!155137) )
))
(declare-fun lt!2235851 () Unit!155136)

(declare-fun mainMatchTheorem!2446 (Regex!15343 List!62330) Unit!155136)

(assert (=> b!5473734 (= lt!2235851 (mainMatchTheorem!2446 lt!2235846 s!2326))))

(declare-fun b!5473735 () Bool)

(declare-fun res!2332804 () Bool)

(declare-fun e!3388254 () Bool)

(assert (=> b!5473735 (=> (not res!2332804) (not e!3388254))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9454))

(declare-fun toList!9127 ((InoxSet Context!9454)) List!62329)

(assert (=> b!5473735 (= res!2332804 (= (toList!9127 z!1189) zl!343))))

(declare-fun b!5473736 () Bool)

(declare-fun e!3388242 () Bool)

(assert (=> b!5473736 (= e!3388253 e!3388242)))

(declare-fun res!2332807 () Bool)

(assert (=> b!5473736 (=> res!2332807 e!3388242)))

(declare-datatypes ((tuple2!65080 0))(
  ( (tuple2!65081 (_1!35843 List!62330) (_2!35843 List!62330)) )
))
(declare-fun lt!2235835 () tuple2!65080)

(declare-fun ++!13680 (List!62330 List!62330) List!62330)

(assert (=> b!5473736 (= res!2332807 (not (= s!2326 (++!13680 (_1!35843 lt!2235835) (_2!35843 lt!2235835)))))))

(declare-datatypes ((Option!15452 0))(
  ( (None!15451) (Some!15451 (v!51480 tuple2!65080)) )
))
(declare-fun lt!2235832 () Option!15452)

(declare-fun get!21445 (Option!15452) tuple2!65080)

(assert (=> b!5473736 (= lt!2235835 (get!21445 lt!2235832))))

(declare-fun b!5473737 () Bool)

(declare-fun res!2332813 () Bool)

(assert (=> b!5473737 (=> res!2332813 e!3388250)))

(declare-fun lt!2235828 () Context!9454)

(declare-fun unfocusZipper!1085 (List!62329) Regex!15343)

(assert (=> b!5473737 (= res!2332813 (not (= (unfocusZipper!1085 (Cons!62205 lt!2235828 Nil!62205)) r!7292)))))

(declare-fun b!5473738 () Bool)

(declare-fun res!2332796 () Bool)

(declare-fun e!3388248 () Bool)

(assert (=> b!5473738 (=> res!2332796 e!3388248)))

(get-info :version)

(assert (=> b!5473738 (= res!2332796 ((_ is Nil!62206) s!2326))))

(declare-fun b!5473739 () Bool)

(declare-fun e!3388239 () Bool)

(assert (=> b!5473739 (= e!3388248 e!3388239)))

(declare-fun res!2332803 () Bool)

(assert (=> b!5473739 (=> res!2332803 e!3388239)))

(declare-fun lt!2235848 () (InoxSet Context!9454))

(declare-fun lt!2235843 () (InoxSet Context!9454))

(assert (=> b!5473739 (= res!2332803 (not (= lt!2235848 lt!2235843)))))

(declare-fun derivationStepZipperDown!769 (Regex!15343 Context!9454 C!30956) (InoxSet Context!9454))

(assert (=> b!5473739 (= lt!2235843 (derivationStepZipperDown!769 r!7292 (Context!9455 Nil!62204) (h!68654 s!2326)))))

(declare-fun derivationStepZipperUp!695 (Context!9454 C!30956) (InoxSet Context!9454))

(assert (=> b!5473739 (= lt!2235848 (derivationStepZipperUp!695 (Context!9455 (Cons!62204 r!7292 Nil!62204)) (h!68654 s!2326)))))

(declare-fun lt!2235837 () (InoxSet Context!9454))

(declare-fun derivationStepZipper!1538 ((InoxSet Context!9454) C!30956) (InoxSet Context!9454))

(assert (=> b!5473739 (= lt!2235837 (derivationStepZipper!1538 z!1189 (h!68654 s!2326)))))

(declare-fun b!5473740 () Bool)

(declare-fun e!3388258 () Bool)

(declare-fun lt!2235840 () Bool)

(assert (=> b!5473740 (= e!3388258 lt!2235840)))

(declare-fun res!2332815 () Bool)

(assert (=> start!572810 (=> (not res!2332815) (not e!3388254))))

(declare-fun validRegex!7079 (Regex!15343) Bool)

(assert (=> start!572810 (= res!2332815 (validRegex!7079 r!7292))))

(assert (=> start!572810 e!3388254))

(assert (=> start!572810 e!3388246))

(declare-fun condSetEmpty!35941 () Bool)

(assert (=> start!572810 (= condSetEmpty!35941 (= z!1189 ((as const (Array Context!9454 Bool)) false)))))

(declare-fun setRes!35941 () Bool)

(assert (=> start!572810 setRes!35941))

(declare-fun e!3388251 () Bool)

(assert (=> start!572810 e!3388251))

(declare-fun e!3388257 () Bool)

(assert (=> start!572810 e!3388257))

(declare-fun setIsEmpty!35941 () Bool)

(assert (=> setIsEmpty!35941 setRes!35941))

(declare-fun b!5473741 () Bool)

(declare-fun res!2332808 () Bool)

(assert (=> b!5473741 (=> res!2332808 e!3388240)))

(declare-fun generalisedUnion!1272 (List!62328) Regex!15343)

(declare-fun unfocusZipperList!785 (List!62329) List!62328)

(assert (=> b!5473741 (= res!2332808 (not (= r!7292 (generalisedUnion!1272 (unfocusZipperList!785 zl!343)))))))

(declare-fun b!5473742 () Bool)

(declare-fun e!3388255 () Bool)

(assert (=> b!5473742 (= e!3388255 (not e!3388240))))

(declare-fun res!2332818 () Bool)

(assert (=> b!5473742 (=> res!2332818 e!3388240)))

(assert (=> b!5473742 (= res!2332818 (not ((_ is Cons!62205) zl!343)))))

(declare-fun lt!2235838 () Bool)

(assert (=> b!5473742 (= lt!2235838 (matchRSpec!2446 r!7292 s!2326))))

(assert (=> b!5473742 (= lt!2235838 (matchR!7528 r!7292 s!2326))))

(declare-fun lt!2235836 () Unit!155136)

(assert (=> b!5473742 (= lt!2235836 (mainMatchTheorem!2446 r!7292 s!2326))))

(declare-fun b!5473743 () Bool)

(assert (=> b!5473743 (= e!3388242 (validRegex!7079 r!7292))))

(declare-fun b!5473744 () Bool)

(declare-fun e!3388245 () Bool)

(declare-fun tp!1504836 () Bool)

(declare-fun inv!81604 (Context!9454) Bool)

(assert (=> b!5473744 (= e!3388251 (and (inv!81604 (h!68653 zl!343)) e!3388245 tp!1504836))))

(declare-fun b!5473745 () Bool)

(declare-fun e!3388252 () Bool)

(assert (=> b!5473745 (= e!3388252 e!3388250)))

(declare-fun res!2332809 () Bool)

(assert (=> b!5473745 (=> res!2332809 e!3388250)))

(declare-fun lt!2235853 () (InoxSet Context!9454))

(assert (=> b!5473745 (= res!2332809 (not (= lt!2235837 (derivationStepZipper!1538 lt!2235853 (h!68654 s!2326)))))))

(declare-fun lambda!291511 () Int)

(declare-fun flatMap!1046 ((InoxSet Context!9454) Int) (InoxSet Context!9454))

(assert (=> b!5473745 (= (flatMap!1046 lt!2235853 lambda!291511) (derivationStepZipperUp!695 lt!2235828 (h!68654 s!2326)))))

(declare-fun lt!2235849 () Unit!155136)

(declare-fun lemmaFlatMapOnSingletonSet!578 ((InoxSet Context!9454) Context!9454 Int) Unit!155136)

(assert (=> b!5473745 (= lt!2235849 (lemmaFlatMapOnSingletonSet!578 lt!2235853 lt!2235828 lambda!291511))))

(declare-fun lt!2235842 () Context!9454)

(declare-fun lt!2235829 () (InoxSet Context!9454))

(assert (=> b!5473745 (= (flatMap!1046 lt!2235829 lambda!291511) (derivationStepZipperUp!695 lt!2235842 (h!68654 s!2326)))))

(declare-fun lt!2235847 () Unit!155136)

(assert (=> b!5473745 (= lt!2235847 (lemmaFlatMapOnSingletonSet!578 lt!2235829 lt!2235842 lambda!291511))))

(declare-fun lt!2235834 () (InoxSet Context!9454))

(assert (=> b!5473745 (= lt!2235834 (derivationStepZipperUp!695 lt!2235828 (h!68654 s!2326)))))

(declare-fun lt!2235845 () (InoxSet Context!9454))

(assert (=> b!5473745 (= lt!2235845 (derivationStepZipperUp!695 lt!2235842 (h!68654 s!2326)))))

(assert (=> b!5473745 (= lt!2235853 (store ((as const (Array Context!9454 Bool)) false) lt!2235828 true))))

(assert (=> b!5473745 (= lt!2235829 (store ((as const (Array Context!9454 Bool)) false) lt!2235842 true))))

(assert (=> b!5473745 (= lt!2235842 (Context!9455 (Cons!62204 (reg!15672 r!7292) Nil!62204)))))

(declare-fun e!3388241 () Bool)

(assert (=> b!5473746 (= e!3388239 e!3388241)))

(declare-fun res!2332797 () Bool)

(assert (=> b!5473746 (=> res!2332797 e!3388241)))

(assert (=> b!5473746 (= res!2332797 (not (= lt!2235837 lt!2235843)))))

(assert (=> b!5473746 (= (flatMap!1046 z!1189 lambda!291511) (derivationStepZipperUp!695 (h!68653 zl!343) (h!68654 s!2326)))))

(declare-fun lt!2235855 () Unit!155136)

(assert (=> b!5473746 (= lt!2235855 (lemmaFlatMapOnSingletonSet!578 z!1189 (h!68653 zl!343) lambda!291511))))

(declare-fun b!5473747 () Bool)

(assert (=> b!5473747 (= e!3388249 (= lt!2235840 (Exists!2522 lambda!291508)))))

(declare-fun b!5473748 () Bool)

(assert (=> b!5473748 (= e!3388254 e!3388255)))

(declare-fun res!2332805 () Bool)

(assert (=> b!5473748 (=> (not res!2332805) (not e!3388255))))

(assert (=> b!5473748 (= res!2332805 (= r!7292 lt!2235833))))

(assert (=> b!5473748 (= lt!2235833 (unfocusZipper!1085 zl!343))))

(declare-fun b!5473749 () Bool)

(declare-fun res!2332798 () Bool)

(assert (=> b!5473749 (=> res!2332798 e!3388240)))

(declare-fun generalisedConcat!1012 (List!62328) Regex!15343)

(assert (=> b!5473749 (= res!2332798 (not (= r!7292 (generalisedConcat!1012 (exprs!5227 (h!68653 zl!343))))))))

(declare-fun b!5473750 () Bool)

(declare-fun res!2332801 () Bool)

(assert (=> b!5473750 (=> res!2332801 e!3388256)))

(declare-fun lt!2235850 () (InoxSet Context!9454))

(declare-fun matchZipper!1561 ((InoxSet Context!9454) List!62330) Bool)

(assert (=> b!5473750 (= res!2332801 (not (= (matchZipper!1561 lt!2235850 s!2326) (matchZipper!1561 (derivationStepZipper!1538 lt!2235850 (h!68654 s!2326)) (t!375559 s!2326)))))))

(declare-fun b!5473751 () Bool)

(declare-fun res!2332811 () Bool)

(assert (=> b!5473751 (=> res!2332811 e!3388242)))

(assert (=> b!5473751 (= res!2332811 (not (matchR!7528 (reg!15672 r!7292) (_1!35843 lt!2235835))))))

(declare-fun b!5473752 () Bool)

(declare-fun tp_is_empty!39939 () Bool)

(declare-fun tp!1504833 () Bool)

(assert (=> b!5473752 (= e!3388257 (and tp_is_empty!39939 tp!1504833))))

(declare-fun b!5473753 () Bool)

(assert (=> b!5473753 (= e!3388247 e!3388243)))

(declare-fun res!2332816 () Bool)

(assert (=> b!5473753 (=> res!2332816 e!3388243)))

(assert (=> b!5473753 (= res!2332816 (not lt!2235830))))

(assert (=> b!5473754 (= e!3388240 e!3388248)))

(declare-fun res!2332814 () Bool)

(assert (=> b!5473754 (=> res!2332814 e!3388248)))

(assert (=> b!5473754 (= res!2332814 (not (= lt!2235838 e!3388258)))))

(declare-fun res!2332810 () Bool)

(assert (=> b!5473754 (=> res!2332810 e!3388258)))

(declare-fun isEmpty!34167 (List!62330) Bool)

(assert (=> b!5473754 (= res!2332810 (isEmpty!34167 s!2326))))

(assert (=> b!5473754 (= (Exists!2522 lambda!291508) (Exists!2522 lambda!291510))))

(declare-fun lt!2235839 () Unit!155136)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1172 (Regex!15343 Regex!15343 List!62330) Unit!155136)

(assert (=> b!5473754 (= lt!2235839 (lemmaExistCutMatchRandMatchRSpecEquivalent!1172 (reg!15672 r!7292) r!7292 s!2326))))

(assert (=> b!5473754 (= (Exists!2522 lambda!291508) (Exists!2522 lambda!291509))))

(declare-fun lt!2235841 () Unit!155136)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!496 (Regex!15343 List!62330) Unit!155136)

(assert (=> b!5473754 (= lt!2235841 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!496 (reg!15672 r!7292) s!2326))))

(assert (=> b!5473754 (= lt!2235840 (Exists!2522 lambda!291508))))

(declare-fun isDefined!12155 (Option!15452) Bool)

(assert (=> b!5473754 (= lt!2235840 (isDefined!12155 lt!2235832))))

(declare-fun findConcatSeparation!1866 (Regex!15343 Regex!15343 List!62330 List!62330 List!62330) Option!15452)

(assert (=> b!5473754 (= lt!2235832 (findConcatSeparation!1866 (reg!15672 r!7292) r!7292 Nil!62206 s!2326 s!2326))))

(declare-fun lt!2235854 () Unit!155136)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1630 (Regex!15343 Regex!15343 List!62330) Unit!155136)

(assert (=> b!5473754 (= lt!2235854 (lemmaFindConcatSeparationEquivalentToExists!1630 (reg!15672 r!7292) r!7292 s!2326))))

(declare-fun b!5473755 () Bool)

(assert (=> b!5473755 (= e!3388246 tp_is_empty!39939)))

(declare-fun b!5473756 () Bool)

(declare-fun res!2332795 () Bool)

(assert (=> b!5473756 (=> res!2332795 e!3388240)))

(assert (=> b!5473756 (= res!2332795 (not ((_ is Cons!62204) (exprs!5227 (h!68653 zl!343)))))))

(declare-fun tp!1504834 () Bool)

(declare-fun setNonEmpty!35941 () Bool)

(declare-fun setElem!35941 () Context!9454)

(declare-fun e!3388244 () Bool)

(assert (=> setNonEmpty!35941 (= setRes!35941 (and tp!1504834 (inv!81604 setElem!35941) e!3388244))))

(declare-fun setRest!35941 () (InoxSet Context!9454))

(assert (=> setNonEmpty!35941 (= z!1189 ((_ map or) (store ((as const (Array Context!9454 Bool)) false) setElem!35941 true) setRest!35941))))

(declare-fun b!5473757 () Bool)

(assert (=> b!5473757 (= e!3388241 e!3388256)))

(declare-fun res!2332817 () Bool)

(assert (=> b!5473757 (=> res!2332817 e!3388256)))

(assert (=> b!5473757 (= res!2332817 (not (= lt!2235837 (derivationStepZipperDown!769 (reg!15672 r!7292) lt!2235828 (h!68654 s!2326)))))))

(declare-fun lt!2235827 () List!62328)

(assert (=> b!5473757 (= lt!2235828 (Context!9455 lt!2235827))))

(declare-fun lt!2235831 () Context!9454)

(assert (=> b!5473757 (= (flatMap!1046 lt!2235850 lambda!291511) (derivationStepZipperUp!695 lt!2235831 (h!68654 s!2326)))))

(declare-fun lt!2235852 () Unit!155136)

(assert (=> b!5473757 (= lt!2235852 (lemmaFlatMapOnSingletonSet!578 lt!2235850 lt!2235831 lambda!291511))))

(declare-fun lt!2235844 () (InoxSet Context!9454))

(assert (=> b!5473757 (= lt!2235844 (derivationStepZipperUp!695 lt!2235831 (h!68654 s!2326)))))

(assert (=> b!5473757 (= lt!2235850 (store ((as const (Array Context!9454 Bool)) false) lt!2235831 true))))

(assert (=> b!5473757 (= lt!2235831 (Context!9455 (Cons!62204 (reg!15672 r!7292) lt!2235827)))))

(assert (=> b!5473757 (= lt!2235827 (Cons!62204 r!7292 Nil!62204))))

(declare-fun b!5473758 () Bool)

(declare-fun res!2332799 () Bool)

(assert (=> b!5473758 (=> res!2332799 e!3388240)))

(assert (=> b!5473758 (= res!2332799 (or ((_ is EmptyExpr!15343) r!7292) ((_ is EmptyLang!15343) r!7292) ((_ is ElementMatch!15343) r!7292) ((_ is Union!15343) r!7292) ((_ is Concat!24188) r!7292)))))

(declare-fun b!5473759 () Bool)

(declare-fun tp!1504839 () Bool)

(declare-fun tp!1504835 () Bool)

(assert (=> b!5473759 (= e!3388246 (and tp!1504839 tp!1504835))))

(declare-fun b!5473760 () Bool)

(assert (=> b!5473760 (= e!3388256 e!3388252)))

(declare-fun res!2332793 () Bool)

(assert (=> b!5473760 (=> res!2332793 e!3388252)))

(assert (=> b!5473760 (= res!2332793 (not (= (unfocusZipper!1085 (Cons!62205 lt!2235831 Nil!62205)) lt!2235846)))))

(assert (=> b!5473760 (= lt!2235846 (Concat!24188 (reg!15672 r!7292) r!7292))))

(declare-fun b!5473761 () Bool)

(declare-fun tp!1504840 () Bool)

(declare-fun tp!1504838 () Bool)

(assert (=> b!5473761 (= e!3388246 (and tp!1504840 tp!1504838))))

(declare-fun b!5473762 () Bool)

(declare-fun res!2332800 () Bool)

(assert (=> b!5473762 (=> res!2332800 e!3388250)))

(assert (=> b!5473762 (= res!2332800 (not (= (unfocusZipper!1085 (Cons!62205 lt!2235842 Nil!62205)) (reg!15672 r!7292))))))

(declare-fun b!5473763 () Bool)

(declare-fun tp!1504837 () Bool)

(assert (=> b!5473763 (= e!3388244 tp!1504837)))

(declare-fun b!5473764 () Bool)

(declare-fun tp!1504832 () Bool)

(assert (=> b!5473764 (= e!3388245 tp!1504832)))

(assert (= (and start!572810 res!2332815) b!5473735))

(assert (= (and b!5473735 res!2332804) b!5473748))

(assert (= (and b!5473748 res!2332805) b!5473742))

(assert (= (and b!5473742 (not res!2332818)) b!5473731))

(assert (= (and b!5473731 (not res!2332792)) b!5473749))

(assert (= (and b!5473749 (not res!2332798)) b!5473756))

(assert (= (and b!5473756 (not res!2332795)) b!5473741))

(assert (= (and b!5473741 (not res!2332808)) b!5473758))

(assert (= (and b!5473758 (not res!2332799)) b!5473754))

(assert (= (and b!5473754 (not res!2332810)) b!5473740))

(assert (= (and b!5473754 (not res!2332814)) b!5473738))

(assert (= (and b!5473738 (not res!2332796)) b!5473739))

(assert (= (and b!5473739 (not res!2332803)) b!5473746))

(assert (= (and b!5473746 (not res!2332797)) b!5473757))

(assert (= (and b!5473757 (not res!2332817)) b!5473750))

(assert (= (and b!5473750 (not res!2332801)) b!5473733))

(assert (= (and b!5473733 (not res!2332806)) b!5473760))

(assert (= (and b!5473760 (not res!2332793)) b!5473745))

(assert (= (and b!5473745 (not res!2332809)) b!5473762))

(assert (= (and b!5473762 (not res!2332800)) b!5473737))

(assert (= (and b!5473737 (not res!2332813)) b!5473734))

(assert (= (and b!5473734 res!2332794) b!5473753))

(assert (= (and b!5473753 (not res!2332816)) b!5473730))

(assert (= (and b!5473730 res!2332802) b!5473747))

(assert (= (and b!5473734 (not res!2332812)) b!5473736))

(assert (= (and b!5473736 (not res!2332807)) b!5473751))

(assert (= (and b!5473751 (not res!2332811)) b!5473743))

(assert (= (and start!572810 ((_ is ElementMatch!15343) r!7292)) b!5473755))

(assert (= (and start!572810 ((_ is Concat!24188) r!7292)) b!5473761))

(assert (= (and start!572810 ((_ is Star!15343) r!7292)) b!5473732))

(assert (= (and start!572810 ((_ is Union!15343) r!7292)) b!5473759))

(assert (= (and start!572810 condSetEmpty!35941) setIsEmpty!35941))

(assert (= (and start!572810 (not condSetEmpty!35941)) setNonEmpty!35941))

(assert (= setNonEmpty!35941 b!5473763))

(assert (= b!5473744 b!5473764))

(assert (= (and start!572810 ((_ is Cons!62205) zl!343)) b!5473744))

(assert (= (and start!572810 ((_ is Cons!62206) s!2326)) b!5473752))

(declare-fun m!6490918 () Bool)

(assert (=> b!5473754 m!6490918))

(declare-fun m!6490920 () Bool)

(assert (=> b!5473754 m!6490920))

(declare-fun m!6490922 () Bool)

(assert (=> b!5473754 m!6490922))

(declare-fun m!6490924 () Bool)

(assert (=> b!5473754 m!6490924))

(declare-fun m!6490926 () Bool)

(assert (=> b!5473754 m!6490926))

(declare-fun m!6490928 () Bool)

(assert (=> b!5473754 m!6490928))

(declare-fun m!6490930 () Bool)

(assert (=> b!5473754 m!6490930))

(declare-fun m!6490932 () Bool)

(assert (=> b!5473754 m!6490932))

(assert (=> b!5473754 m!6490922))

(assert (=> b!5473754 m!6490922))

(declare-fun m!6490934 () Bool)

(assert (=> b!5473754 m!6490934))

(declare-fun m!6490936 () Bool)

(assert (=> start!572810 m!6490936))

(assert (=> b!5473743 m!6490936))

(declare-fun m!6490938 () Bool)

(assert (=> b!5473731 m!6490938))

(declare-fun m!6490940 () Bool)

(assert (=> setNonEmpty!35941 m!6490940))

(declare-fun m!6490942 () Bool)

(assert (=> b!5473742 m!6490942))

(declare-fun m!6490944 () Bool)

(assert (=> b!5473742 m!6490944))

(declare-fun m!6490946 () Bool)

(assert (=> b!5473742 m!6490946))

(declare-fun m!6490948 () Bool)

(assert (=> b!5473760 m!6490948))

(declare-fun m!6490950 () Bool)

(assert (=> b!5473749 m!6490950))

(declare-fun m!6490952 () Bool)

(assert (=> b!5473735 m!6490952))

(assert (=> b!5473730 m!6490922))

(assert (=> b!5473730 m!6490928))

(declare-fun m!6490954 () Bool)

(assert (=> b!5473748 m!6490954))

(declare-fun m!6490956 () Bool)

(assert (=> b!5473736 m!6490956))

(declare-fun m!6490958 () Bool)

(assert (=> b!5473736 m!6490958))

(declare-fun m!6490960 () Bool)

(assert (=> b!5473737 m!6490960))

(declare-fun m!6490962 () Bool)

(assert (=> b!5473739 m!6490962))

(declare-fun m!6490964 () Bool)

(assert (=> b!5473739 m!6490964))

(declare-fun m!6490966 () Bool)

(assert (=> b!5473739 m!6490966))

(declare-fun m!6490968 () Bool)

(assert (=> b!5473746 m!6490968))

(declare-fun m!6490970 () Bool)

(assert (=> b!5473746 m!6490970))

(declare-fun m!6490972 () Bool)

(assert (=> b!5473746 m!6490972))

(declare-fun m!6490974 () Bool)

(assert (=> b!5473745 m!6490974))

(declare-fun m!6490976 () Bool)

(assert (=> b!5473745 m!6490976))

(declare-fun m!6490978 () Bool)

(assert (=> b!5473745 m!6490978))

(declare-fun m!6490980 () Bool)

(assert (=> b!5473745 m!6490980))

(declare-fun m!6490982 () Bool)

(assert (=> b!5473745 m!6490982))

(declare-fun m!6490984 () Bool)

(assert (=> b!5473745 m!6490984))

(declare-fun m!6490986 () Bool)

(assert (=> b!5473745 m!6490986))

(declare-fun m!6490988 () Bool)

(assert (=> b!5473745 m!6490988))

(declare-fun m!6490990 () Bool)

(assert (=> b!5473745 m!6490990))

(declare-fun m!6490992 () Bool)

(assert (=> b!5473751 m!6490992))

(declare-fun m!6490994 () Bool)

(assert (=> b!5473741 m!6490994))

(assert (=> b!5473741 m!6490994))

(declare-fun m!6490996 () Bool)

(assert (=> b!5473741 m!6490996))

(declare-fun m!6490998 () Bool)

(assert (=> b!5473734 m!6490998))

(declare-fun m!6491000 () Bool)

(assert (=> b!5473734 m!6491000))

(declare-fun m!6491002 () Bool)

(assert (=> b!5473734 m!6491002))

(assert (=> b!5473747 m!6490922))

(declare-fun m!6491004 () Bool)

(assert (=> b!5473744 m!6491004))

(declare-fun m!6491006 () Bool)

(assert (=> b!5473757 m!6491006))

(declare-fun m!6491008 () Bool)

(assert (=> b!5473757 m!6491008))

(declare-fun m!6491010 () Bool)

(assert (=> b!5473757 m!6491010))

(declare-fun m!6491012 () Bool)

(assert (=> b!5473757 m!6491012))

(declare-fun m!6491014 () Bool)

(assert (=> b!5473757 m!6491014))

(declare-fun m!6491016 () Bool)

(assert (=> b!5473762 m!6491016))

(declare-fun m!6491018 () Bool)

(assert (=> b!5473750 m!6491018))

(declare-fun m!6491020 () Bool)

(assert (=> b!5473750 m!6491020))

(assert (=> b!5473750 m!6491020))

(declare-fun m!6491022 () Bool)

(assert (=> b!5473750 m!6491022))

(check-sat (not setNonEmpty!35941) (not b!5473746) (not b!5473751) (not b!5473748) (not b!5473762) (not b!5473745) (not b!5473752) (not b!5473763) (not b!5473750) (not b!5473731) (not b!5473744) tp_is_empty!39939 (not b!5473737) (not b!5473754) (not b!5473742) (not b!5473735) (not b!5473734) (not b!5473761) (not b!5473743) (not b!5473764) (not b!5473739) (not b!5473747) (not b!5473741) (not start!572810) (not b!5473760) (not b!5473757) (not b!5473732) (not b!5473749) (not b!5473736) (not b!5473759) (not b!5473730))
(check-sat)
