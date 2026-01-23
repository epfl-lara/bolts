; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!610102 () Bool)

(assert start!610102)

(declare-fun b!6102323 () Bool)

(assert (=> b!6102323 true))

(assert (=> b!6102323 true))

(declare-fun lambda!332437 () Int)

(declare-fun lambda!332436 () Int)

(assert (=> b!6102323 (not (= lambda!332437 lambda!332436))))

(assert (=> b!6102323 true))

(assert (=> b!6102323 true))

(declare-fun b!6102307 () Bool)

(declare-fun e!3721722 () Bool)

(declare-fun tp_is_empty!41355 () Bool)

(declare-fun tp!1703748 () Bool)

(assert (=> b!6102307 (= e!3721722 (and tp_is_empty!41355 tp!1703748))))

(declare-fun b!6102308 () Bool)

(declare-fun e!3721720 () Bool)

(declare-fun tp!1703746 () Bool)

(declare-fun tp!1703749 () Bool)

(assert (=> b!6102308 (= e!3721720 (and tp!1703746 tp!1703749))))

(declare-fun b!6102309 () Bool)

(declare-fun res!2531804 () Bool)

(declare-fun e!3721727 () Bool)

(assert (=> b!6102309 (=> res!2531804 e!3721727)))

(declare-datatypes ((C!32372 0))(
  ( (C!32373 (val!25888 Int)) )
))
(declare-datatypes ((Regex!16051 0))(
  ( (ElementMatch!16051 (c!1096207 C!32372)) (Concat!24896 (regOne!32614 Regex!16051) (regTwo!32614 Regex!16051)) (EmptyExpr!16051) (Star!16051 (reg!16380 Regex!16051)) (EmptyLang!16051) (Union!16051 (regOne!32615 Regex!16051) (regTwo!32615 Regex!16051)) )
))
(declare-fun r!7292 () Regex!16051)

(declare-datatypes ((List!64452 0))(
  ( (Nil!64328) (Cons!64328 (h!70776 Regex!16051) (t!377903 List!64452)) )
))
(declare-datatypes ((Context!10870 0))(
  ( (Context!10871 (exprs!5935 List!64452)) )
))
(declare-datatypes ((List!64453 0))(
  ( (Nil!64329) (Cons!64329 (h!70777 Context!10870) (t!377904 List!64453)) )
))
(declare-fun zl!343 () List!64453)

(declare-fun generalisedUnion!1895 (List!64452) Regex!16051)

(declare-fun unfocusZipperList!1472 (List!64453) List!64452)

(assert (=> b!6102309 (= res!2531804 (not (= r!7292 (generalisedUnion!1895 (unfocusZipperList!1472 zl!343)))))))

(declare-fun b!6102310 () Bool)

(declare-fun res!2531801 () Bool)

(assert (=> b!6102310 (=> res!2531801 e!3721727)))

(declare-fun isEmpty!36249 (List!64453) Bool)

(assert (=> b!6102310 (= res!2531801 (not (isEmpty!36249 (t!377904 zl!343))))))

(declare-fun b!6102311 () Bool)

(declare-fun tp!1703744 () Bool)

(assert (=> b!6102311 (= e!3721720 tp!1703744)))

(declare-fun res!2531802 () Bool)

(declare-fun e!3721725 () Bool)

(assert (=> start!610102 (=> (not res!2531802) (not e!3721725))))

(declare-fun validRegex!7787 (Regex!16051) Bool)

(assert (=> start!610102 (= res!2531802 (validRegex!7787 r!7292))))

(assert (=> start!610102 e!3721725))

(assert (=> start!610102 e!3721720))

(declare-fun condSetEmpty!41226 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10870))

(assert (=> start!610102 (= condSetEmpty!41226 (= z!1189 ((as const (Array Context!10870 Bool)) false)))))

(declare-fun setRes!41226 () Bool)

(assert (=> start!610102 setRes!41226))

(declare-fun e!3721724 () Bool)

(assert (=> start!610102 e!3721724))

(assert (=> start!610102 e!3721722))

(declare-fun b!6102312 () Bool)

(assert (=> b!6102312 (= e!3721720 tp_is_empty!41355)))

(declare-fun b!6102313 () Bool)

(declare-fun res!2531803 () Bool)

(declare-fun e!3721726 () Bool)

(assert (=> b!6102313 (=> res!2531803 e!3721726)))

(declare-fun isEmpty!36250 (List!64452) Bool)

(assert (=> b!6102313 (= res!2531803 (isEmpty!36250 (t!377903 (exprs!5935 (h!70777 zl!343)))))))

(declare-fun setElem!41226 () Context!10870)

(declare-fun e!3721723 () Bool)

(declare-fun tp!1703742 () Bool)

(declare-fun setNonEmpty!41226 () Bool)

(declare-fun inv!83374 (Context!10870) Bool)

(assert (=> setNonEmpty!41226 (= setRes!41226 (and tp!1703742 (inv!83374 setElem!41226) e!3721723))))

(declare-fun setRest!41226 () (InoxSet Context!10870))

(assert (=> setNonEmpty!41226 (= z!1189 ((_ map or) (store ((as const (Array Context!10870 Bool)) false) setElem!41226 true) setRest!41226))))

(declare-fun b!6102314 () Bool)

(assert (=> b!6102314 (= e!3721726 (inv!83374 (Context!10871 (Cons!64328 (h!70776 (exprs!5935 (h!70777 zl!343))) (t!377903 (exprs!5935 (h!70777 zl!343)))))))))

(declare-fun b!6102315 () Bool)

(assert (=> b!6102315 (= e!3721725 (not e!3721727))))

(declare-fun res!2531797 () Bool)

(assert (=> b!6102315 (=> res!2531797 e!3721727)))

(get-info :version)

(assert (=> b!6102315 (= res!2531797 (not ((_ is Cons!64329) zl!343)))))

(declare-fun lt!2329319 () Bool)

(declare-datatypes ((List!64454 0))(
  ( (Nil!64330) (Cons!64330 (h!70778 C!32372) (t!377905 List!64454)) )
))
(declare-fun s!2326 () List!64454)

(declare-fun matchRSpec!3152 (Regex!16051 List!64454) Bool)

(assert (=> b!6102315 (= lt!2329319 (matchRSpec!3152 r!7292 s!2326))))

(declare-fun matchR!8234 (Regex!16051 List!64454) Bool)

(assert (=> b!6102315 (= lt!2329319 (matchR!8234 r!7292 s!2326))))

(declare-datatypes ((Unit!157373 0))(
  ( (Unit!157374) )
))
(declare-fun lt!2329318 () Unit!157373)

(declare-fun mainMatchTheorem!3152 (Regex!16051 List!64454) Unit!157373)

(assert (=> b!6102315 (= lt!2329318 (mainMatchTheorem!3152 r!7292 s!2326))))

(declare-fun b!6102316 () Bool)

(declare-fun res!2531799 () Bool)

(assert (=> b!6102316 (=> (not res!2531799) (not e!3721725))))

(declare-fun toList!9835 ((InoxSet Context!10870)) List!64453)

(assert (=> b!6102316 (= res!2531799 (= (toList!9835 z!1189) zl!343))))

(declare-fun b!6102317 () Bool)

(declare-fun e!3721721 () Bool)

(declare-fun tp!1703741 () Bool)

(assert (=> b!6102317 (= e!3721721 tp!1703741)))

(declare-fun b!6102318 () Bool)

(declare-fun res!2531796 () Bool)

(assert (=> b!6102318 (=> res!2531796 e!3721727)))

(assert (=> b!6102318 (= res!2531796 (or ((_ is EmptyExpr!16051) r!7292) ((_ is EmptyLang!16051) r!7292) ((_ is ElementMatch!16051) r!7292) ((_ is Union!16051) r!7292) (not ((_ is Concat!24896) r!7292))))))

(declare-fun b!6102319 () Bool)

(declare-fun res!2531800 () Bool)

(assert (=> b!6102319 (=> res!2531800 e!3721727)))

(declare-fun generalisedConcat!1648 (List!64452) Regex!16051)

(assert (=> b!6102319 (= res!2531800 (not (= r!7292 (generalisedConcat!1648 (exprs!5935 (h!70777 zl!343))))))))

(declare-fun setIsEmpty!41226 () Bool)

(assert (=> setIsEmpty!41226 setRes!41226))

(declare-fun b!6102320 () Bool)

(declare-fun res!2531805 () Bool)

(assert (=> b!6102320 (=> res!2531805 e!3721727)))

(assert (=> b!6102320 (= res!2531805 (not ((_ is Cons!64328) (exprs!5935 (h!70777 zl!343)))))))

(declare-fun b!6102321 () Bool)

(declare-fun res!2531795 () Bool)

(assert (=> b!6102321 (=> (not res!2531795) (not e!3721725))))

(declare-fun unfocusZipper!1793 (List!64453) Regex!16051)

(assert (=> b!6102321 (= res!2531795 (= r!7292 (unfocusZipper!1793 zl!343)))))

(declare-fun tp!1703750 () Bool)

(declare-fun b!6102322 () Bool)

(assert (=> b!6102322 (= e!3721724 (and (inv!83374 (h!70777 zl!343)) e!3721721 tp!1703750))))

(assert (=> b!6102323 (= e!3721727 e!3721726)))

(declare-fun res!2531798 () Bool)

(assert (=> b!6102323 (=> res!2531798 e!3721726)))

(declare-fun lt!2329320 () Bool)

(assert (=> b!6102323 (= res!2531798 (or (not (= lt!2329319 lt!2329320)) ((_ is Nil!64330) s!2326)))))

(declare-fun Exists!3121 (Int) Bool)

(assert (=> b!6102323 (= (Exists!3121 lambda!332436) (Exists!3121 lambda!332437))))

(declare-fun lt!2329316 () Unit!157373)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1658 (Regex!16051 Regex!16051 List!64454) Unit!157373)

(assert (=> b!6102323 (= lt!2329316 (lemmaExistCutMatchRandMatchRSpecEquivalent!1658 (regOne!32614 r!7292) (regTwo!32614 r!7292) s!2326))))

(assert (=> b!6102323 (= lt!2329320 (Exists!3121 lambda!332436))))

(declare-datatypes ((tuple2!66060 0))(
  ( (tuple2!66061 (_1!36333 List!64454) (_2!36333 List!64454)) )
))
(declare-datatypes ((Option!15942 0))(
  ( (None!15941) (Some!15941 (v!52074 tuple2!66060)) )
))
(declare-fun isDefined!12645 (Option!15942) Bool)

(declare-fun findConcatSeparation!2356 (Regex!16051 Regex!16051 List!64454 List!64454 List!64454) Option!15942)

(assert (=> b!6102323 (= lt!2329320 (isDefined!12645 (findConcatSeparation!2356 (regOne!32614 r!7292) (regTwo!32614 r!7292) Nil!64330 s!2326 s!2326)))))

(declare-fun lt!2329317 () Unit!157373)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2120 (Regex!16051 Regex!16051 List!64454) Unit!157373)

(assert (=> b!6102323 (= lt!2329317 (lemmaFindConcatSeparationEquivalentToExists!2120 (regOne!32614 r!7292) (regTwo!32614 r!7292) s!2326))))

(declare-fun b!6102324 () Bool)

(declare-fun tp!1703745 () Bool)

(assert (=> b!6102324 (= e!3721723 tp!1703745)))

(declare-fun b!6102325 () Bool)

(declare-fun tp!1703743 () Bool)

(declare-fun tp!1703747 () Bool)

(assert (=> b!6102325 (= e!3721720 (and tp!1703743 tp!1703747))))

(assert (= (and start!610102 res!2531802) b!6102316))

(assert (= (and b!6102316 res!2531799) b!6102321))

(assert (= (and b!6102321 res!2531795) b!6102315))

(assert (= (and b!6102315 (not res!2531797)) b!6102310))

(assert (= (and b!6102310 (not res!2531801)) b!6102319))

(assert (= (and b!6102319 (not res!2531800)) b!6102320))

(assert (= (and b!6102320 (not res!2531805)) b!6102309))

(assert (= (and b!6102309 (not res!2531804)) b!6102318))

(assert (= (and b!6102318 (not res!2531796)) b!6102323))

(assert (= (and b!6102323 (not res!2531798)) b!6102313))

(assert (= (and b!6102313 (not res!2531803)) b!6102314))

(assert (= (and start!610102 ((_ is ElementMatch!16051) r!7292)) b!6102312))

(assert (= (and start!610102 ((_ is Concat!24896) r!7292)) b!6102308))

(assert (= (and start!610102 ((_ is Star!16051) r!7292)) b!6102311))

(assert (= (and start!610102 ((_ is Union!16051) r!7292)) b!6102325))

(assert (= (and start!610102 condSetEmpty!41226) setIsEmpty!41226))

(assert (= (and start!610102 (not condSetEmpty!41226)) setNonEmpty!41226))

(assert (= setNonEmpty!41226 b!6102324))

(assert (= b!6102322 b!6102317))

(assert (= (and start!610102 ((_ is Cons!64329) zl!343)) b!6102322))

(assert (= (and start!610102 ((_ is Cons!64330) s!2326)) b!6102307))

(declare-fun m!6954680 () Bool)

(assert (=> b!6102319 m!6954680))

(declare-fun m!6954682 () Bool)

(assert (=> b!6102316 m!6954682))

(declare-fun m!6954684 () Bool)

(assert (=> b!6102321 m!6954684))

(declare-fun m!6954686 () Bool)

(assert (=> b!6102314 m!6954686))

(declare-fun m!6954688 () Bool)

(assert (=> b!6102310 m!6954688))

(declare-fun m!6954690 () Bool)

(assert (=> b!6102309 m!6954690))

(assert (=> b!6102309 m!6954690))

(declare-fun m!6954692 () Bool)

(assert (=> b!6102309 m!6954692))

(declare-fun m!6954694 () Bool)

(assert (=> b!6102322 m!6954694))

(declare-fun m!6954696 () Bool)

(assert (=> b!6102315 m!6954696))

(declare-fun m!6954698 () Bool)

(assert (=> b!6102315 m!6954698))

(declare-fun m!6954700 () Bool)

(assert (=> b!6102315 m!6954700))

(declare-fun m!6954702 () Bool)

(assert (=> start!610102 m!6954702))

(declare-fun m!6954704 () Bool)

(assert (=> b!6102323 m!6954704))

(declare-fun m!6954706 () Bool)

(assert (=> b!6102323 m!6954706))

(declare-fun m!6954708 () Bool)

(assert (=> b!6102323 m!6954708))

(assert (=> b!6102323 m!6954704))

(declare-fun m!6954710 () Bool)

(assert (=> b!6102323 m!6954710))

(assert (=> b!6102323 m!6954706))

(declare-fun m!6954712 () Bool)

(assert (=> b!6102323 m!6954712))

(declare-fun m!6954714 () Bool)

(assert (=> b!6102323 m!6954714))

(declare-fun m!6954716 () Bool)

(assert (=> setNonEmpty!41226 m!6954716))

(declare-fun m!6954718 () Bool)

(assert (=> b!6102313 m!6954718))

(check-sat (not start!610102) (not b!6102314) (not b!6102321) (not b!6102307) (not b!6102311) (not b!6102309) (not b!6102325) (not b!6102322) (not b!6102308) (not b!6102315) (not b!6102316) (not b!6102319) (not b!6102324) (not b!6102310) (not b!6102323) (not setNonEmpty!41226) (not b!6102317) (not b!6102313) tp_is_empty!41355)
(check-sat)
