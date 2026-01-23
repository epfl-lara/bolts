; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!656264 () Bool)

(assert start!656264)

(declare-fun b!6780302 () Bool)

(assert (=> b!6780302 true))

(assert (=> b!6780302 true))

(declare-fun lambda!381615 () Int)

(declare-fun lambda!381614 () Int)

(assert (=> b!6780302 (not (= lambda!381615 lambda!381614))))

(assert (=> b!6780302 true))

(assert (=> b!6780302 true))

(declare-fun lambda!381616 () Int)

(assert (=> b!6780302 (not (= lambda!381616 lambda!381614))))

(assert (=> b!6780302 (not (= lambda!381616 lambda!381615))))

(assert (=> b!6780302 true))

(assert (=> b!6780302 true))

(declare-fun b!6780319 () Bool)

(assert (=> b!6780319 true))

(declare-fun b!6780298 () Bool)

(declare-fun e!4093045 () Bool)

(declare-fun e!4093039 () Bool)

(assert (=> b!6780298 (= e!4093045 e!4093039)))

(declare-fun res!2771595 () Bool)

(assert (=> b!6780298 (=> res!2771595 e!4093039)))

(declare-datatypes ((C!33476 0))(
  ( (C!33477 (val!26440 Int)) )
))
(declare-datatypes ((List!66108 0))(
  ( (Nil!65984) (Cons!65984 (h!72432 C!33476) (t!379823 List!66108)) )
))
(declare-fun s!2326 () List!66108)

(declare-datatypes ((tuple2!67156 0))(
  ( (tuple2!67157 (_1!36881 List!66108) (_2!36881 List!66108)) )
))
(declare-fun lt!2444761 () tuple2!67156)

(declare-fun ++!14757 (List!66108 List!66108) List!66108)

(assert (=> b!6780298 (= res!2771595 (not (= s!2326 (++!14757 (_1!36881 lt!2444761) (_2!36881 lt!2444761)))))))

(declare-datatypes ((Option!16490 0))(
  ( (None!16489) (Some!16489 (v!52695 tuple2!67156)) )
))
(declare-fun lt!2444764 () Option!16490)

(declare-fun get!22974 (Option!16490) tuple2!67156)

(assert (=> b!6780298 (= lt!2444761 (get!22974 lt!2444764))))

(declare-fun b!6780299 () Bool)

(declare-fun res!2771590 () Bool)

(declare-fun e!4093042 () Bool)

(assert (=> b!6780299 (=> res!2771590 e!4093042)))

(get-info :version)

(assert (=> b!6780299 (= res!2771590 ((_ is Nil!65984) s!2326))))

(declare-fun b!6780300 () Bool)

(declare-fun res!2771601 () Bool)

(assert (=> b!6780300 (=> res!2771601 e!4093039)))

(declare-datatypes ((Regex!16603 0))(
  ( (ElementMatch!16603 (c!1259507 C!33476)) (Concat!25448 (regOne!33718 Regex!16603) (regTwo!33718 Regex!16603)) (EmptyExpr!16603) (Star!16603 (reg!16932 Regex!16603)) (EmptyLang!16603) (Union!16603 (regOne!33719 Regex!16603) (regTwo!33719 Regex!16603)) )
))
(declare-fun r!7292 () Regex!16603)

(declare-fun matchR!8786 (Regex!16603 List!66108) Bool)

(assert (=> b!6780300 (= res!2771601 (not (matchR!8786 (reg!16932 r!7292) (_1!36881 lt!2444761))))))

(declare-fun b!6780301 () Bool)

(declare-fun e!4093056 () Bool)

(declare-fun e!4093048 () Bool)

(assert (=> b!6780301 (= e!4093056 e!4093048)))

(declare-fun res!2771603 () Bool)

(assert (=> b!6780301 (=> res!2771603 e!4093048)))

(declare-datatypes ((List!66109 0))(
  ( (Nil!65985) (Cons!65985 (h!72433 Regex!16603) (t!379824 List!66109)) )
))
(declare-datatypes ((Context!11974 0))(
  ( (Context!11975 (exprs!6487 List!66109)) )
))
(declare-fun lt!2444756 () Context!11974)

(declare-fun lt!2444765 () Regex!16603)

(declare-datatypes ((List!66110 0))(
  ( (Nil!65986) (Cons!65986 (h!72434 Context!11974) (t!379825 List!66110)) )
))
(declare-fun unfocusZipper!2345 (List!66110) Regex!16603)

(assert (=> b!6780301 (= res!2771603 (not (= (unfocusZipper!2345 (Cons!65986 lt!2444756 Nil!65986)) lt!2444765)))))

(assert (=> b!6780301 (= lt!2444765 (Concat!25448 (reg!16932 r!7292) r!7292))))

(declare-fun e!4093053 () Bool)

(assert (=> b!6780302 (= e!4093053 e!4093042)))

(declare-fun res!2771589 () Bool)

(assert (=> b!6780302 (=> res!2771589 e!4093042)))

(declare-fun lt!2444768 () Bool)

(declare-fun e!4093047 () Bool)

(assert (=> b!6780302 (= res!2771589 (not (= lt!2444768 e!4093047)))))

(declare-fun res!2771588 () Bool)

(assert (=> b!6780302 (=> res!2771588 e!4093047)))

(declare-fun isEmpty!38345 (List!66108) Bool)

(assert (=> b!6780302 (= res!2771588 (isEmpty!38345 s!2326))))

(declare-fun Exists!3671 (Int) Bool)

(assert (=> b!6780302 (= (Exists!3671 lambda!381614) (Exists!3671 lambda!381616))))

(declare-datatypes ((Unit!159897 0))(
  ( (Unit!159898) )
))
(declare-fun lt!2444786 () Unit!159897)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2198 (Regex!16603 Regex!16603 List!66108) Unit!159897)

(assert (=> b!6780302 (= lt!2444786 (lemmaExistCutMatchRandMatchRSpecEquivalent!2198 (reg!16932 r!7292) r!7292 s!2326))))

(assert (=> b!6780302 (= (Exists!3671 lambda!381614) (Exists!3671 lambda!381615))))

(declare-fun lt!2444782 () Unit!159897)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!762 (Regex!16603 List!66108) Unit!159897)

(assert (=> b!6780302 (= lt!2444782 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!762 (reg!16932 r!7292) s!2326))))

(declare-fun lt!2444769 () Bool)

(assert (=> b!6780302 (= lt!2444769 (Exists!3671 lambda!381614))))

(declare-fun isDefined!13193 (Option!16490) Bool)

(assert (=> b!6780302 (= lt!2444769 (isDefined!13193 lt!2444764))))

(declare-fun findConcatSeparation!2904 (Regex!16603 Regex!16603 List!66108 List!66108 List!66108) Option!16490)

(assert (=> b!6780302 (= lt!2444764 (findConcatSeparation!2904 (reg!16932 r!7292) r!7292 Nil!65984 s!2326 s!2326))))

(declare-fun lt!2444771 () Unit!159897)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2668 (Regex!16603 Regex!16603 List!66108) Unit!159897)

(assert (=> b!6780302 (= lt!2444771 (lemmaFindConcatSeparationEquivalentToExists!2668 (reg!16932 r!7292) r!7292 s!2326))))

(declare-fun b!6780303 () Bool)

(declare-fun lt!2444770 () Context!11974)

(declare-fun inv!84754 (Context!11974) Bool)

(assert (=> b!6780303 (= e!4093039 (inv!84754 lt!2444770))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2444762 () (InoxSet Context!11974))

(declare-fun matchZipper!2589 ((InoxSet Context!11974) List!66108) Bool)

(assert (=> b!6780303 (matchZipper!2589 lt!2444762 (_2!36881 lt!2444761))))

(declare-fun lt!2444776 () Unit!159897)

(declare-fun lt!2444784 () List!66110)

(declare-fun theoremZipperRegexEquiv!933 ((InoxSet Context!11974) List!66110 Regex!16603 List!66108) Unit!159897)

(assert (=> b!6780303 (= lt!2444776 (theoremZipperRegexEquiv!933 lt!2444762 lt!2444784 r!7292 (_2!36881 lt!2444761)))))

(declare-fun lt!2444760 () (InoxSet Context!11974))

(assert (=> b!6780303 (matchZipper!2589 lt!2444760 (_1!36881 lt!2444761))))

(declare-fun lt!2444787 () List!66110)

(declare-fun lt!2444767 () Unit!159897)

(assert (=> b!6780303 (= lt!2444767 (theoremZipperRegexEquiv!933 lt!2444760 lt!2444787 (reg!16932 r!7292) (_1!36881 lt!2444761)))))

(declare-fun b!6780304 () Bool)

(declare-fun e!4093038 () Bool)

(assert (=> b!6780304 (= e!4093038 (= lt!2444769 (Exists!3671 lambda!381614)))))

(declare-fun b!6780305 () Bool)

(declare-fun e!4093043 () Bool)

(assert (=> b!6780305 (= e!4093043 e!4093056)))

(declare-fun res!2771599 () Bool)

(assert (=> b!6780305 (=> res!2771599 e!4093056)))

(declare-fun lt!2444759 () (InoxSet Context!11974))

(declare-fun derivationStepZipperDown!1831 (Regex!16603 Context!11974 C!33476) (InoxSet Context!11974))

(assert (=> b!6780305 (= res!2771599 (not (= lt!2444759 (derivationStepZipperDown!1831 (reg!16932 r!7292) lt!2444770 (h!72432 s!2326)))))))

(declare-fun lt!2444773 () List!66109)

(assert (=> b!6780305 (= lt!2444770 (Context!11975 lt!2444773))))

(declare-fun lambda!381617 () Int)

(declare-fun lt!2444757 () (InoxSet Context!11974))

(declare-fun flatMap!2084 ((InoxSet Context!11974) Int) (InoxSet Context!11974))

(declare-fun derivationStepZipperUp!1757 (Context!11974 C!33476) (InoxSet Context!11974))

(assert (=> b!6780305 (= (flatMap!2084 lt!2444757 lambda!381617) (derivationStepZipperUp!1757 lt!2444756 (h!72432 s!2326)))))

(declare-fun lt!2444778 () Unit!159897)

(declare-fun lemmaFlatMapOnSingletonSet!1610 ((InoxSet Context!11974) Context!11974 Int) Unit!159897)

(assert (=> b!6780305 (= lt!2444778 (lemmaFlatMapOnSingletonSet!1610 lt!2444757 lt!2444756 lambda!381617))))

(declare-fun lt!2444785 () (InoxSet Context!11974))

(assert (=> b!6780305 (= lt!2444785 (derivationStepZipperUp!1757 lt!2444756 (h!72432 s!2326)))))

(assert (=> b!6780305 (= lt!2444757 (store ((as const (Array Context!11974 Bool)) false) lt!2444756 true))))

(assert (=> b!6780305 (= lt!2444756 (Context!11975 (Cons!65985 (reg!16932 r!7292) lt!2444773)))))

(assert (=> b!6780305 (= lt!2444773 (Cons!65985 r!7292 Nil!65985))))

(declare-fun res!2771608 () Bool)

(declare-fun e!4093057 () Bool)

(assert (=> start!656264 (=> (not res!2771608) (not e!4093057))))

(declare-fun validRegex!8339 (Regex!16603) Bool)

(assert (=> start!656264 (= res!2771608 (validRegex!8339 r!7292))))

(assert (=> start!656264 e!4093057))

(declare-fun e!4093051 () Bool)

(assert (=> start!656264 e!4093051))

(declare-fun condSetEmpty!46377 () Bool)

(declare-fun z!1189 () (InoxSet Context!11974))

(assert (=> start!656264 (= condSetEmpty!46377 (= z!1189 ((as const (Array Context!11974 Bool)) false)))))

(declare-fun setRes!46377 () Bool)

(assert (=> start!656264 setRes!46377))

(declare-fun e!4093054 () Bool)

(assert (=> start!656264 e!4093054))

(declare-fun e!4093055 () Bool)

(assert (=> start!656264 e!4093055))

(declare-fun b!6780306 () Bool)

(declare-fun res!2771600 () Bool)

(assert (=> b!6780306 (=> res!2771600 e!4093053)))

(declare-fun zl!343 () List!66110)

(declare-fun isEmpty!38346 (List!66110) Bool)

(assert (=> b!6780306 (= res!2771600 (not (isEmpty!38346 (t!379825 zl!343))))))

(declare-fun e!4093041 () Bool)

(declare-fun tp!1857811 () Bool)

(declare-fun b!6780307 () Bool)

(assert (=> b!6780307 (= e!4093054 (and (inv!84754 (h!72434 zl!343)) e!4093041 tp!1857811))))

(declare-fun b!6780308 () Bool)

(declare-fun e!4093050 () Bool)

(assert (=> b!6780308 (= e!4093042 e!4093050)))

(declare-fun res!2771604 () Bool)

(assert (=> b!6780308 (=> res!2771604 e!4093050)))

(declare-fun lt!2444779 () (InoxSet Context!11974))

(declare-fun lt!2444774 () (InoxSet Context!11974))

(assert (=> b!6780308 (= res!2771604 (not (= lt!2444779 lt!2444774)))))

(assert (=> b!6780308 (= lt!2444774 (derivationStepZipperDown!1831 r!7292 (Context!11975 Nil!65985) (h!72432 s!2326)))))

(assert (=> b!6780308 (= lt!2444779 (derivationStepZipperUp!1757 (Context!11975 (Cons!65985 r!7292 Nil!65985)) (h!72432 s!2326)))))

(declare-fun derivationStepZipper!2547 ((InoxSet Context!11974) C!33476) (InoxSet Context!11974))

(assert (=> b!6780308 (= lt!2444759 (derivationStepZipper!2547 z!1189 (h!72432 s!2326)))))

(declare-fun b!6780309 () Bool)

(declare-fun res!2771594 () Bool)

(assert (=> b!6780309 (=> res!2771594 e!4093039)))

(assert (=> b!6780309 (= res!2771594 (not (matchR!8786 r!7292 (_2!36881 lt!2444761))))))

(declare-fun b!6780310 () Bool)

(declare-fun res!2771583 () Bool)

(assert (=> b!6780310 (=> res!2771583 e!4093053)))

(assert (=> b!6780310 (= res!2771583 (or ((_ is EmptyExpr!16603) r!7292) ((_ is EmptyLang!16603) r!7292) ((_ is ElementMatch!16603) r!7292) ((_ is Union!16603) r!7292) ((_ is Concat!25448) r!7292)))))

(declare-fun b!6780311 () Bool)

(declare-fun res!2771596 () Bool)

(assert (=> b!6780311 (=> res!2771596 e!4093053)))

(declare-fun generalisedConcat!2200 (List!66109) Regex!16603)

(assert (=> b!6780311 (= res!2771596 (not (= r!7292 (generalisedConcat!2200 (exprs!6487 (h!72434 zl!343))))))))

(declare-fun b!6780312 () Bool)

(assert (=> b!6780312 (= e!4093047 lt!2444769)))

(declare-fun b!6780313 () Bool)

(declare-fun tp_is_empty!42459 () Bool)

(declare-fun tp!1857817 () Bool)

(assert (=> b!6780313 (= e!4093055 (and tp_is_empty!42459 tp!1857817))))

(declare-fun b!6780314 () Bool)

(assert (=> b!6780314 (= e!4093051 tp_is_empty!42459)))

(declare-fun b!6780315 () Bool)

(declare-fun res!2771592 () Bool)

(assert (=> b!6780315 (=> res!2771592 e!4093056)))

(assert (=> b!6780315 (= res!2771592 (not (= (matchZipper!2589 lt!2444757 s!2326) (matchZipper!2589 (derivationStepZipper!2547 lt!2444757 (h!72432 s!2326)) (t!379823 s!2326)))))))

(declare-fun b!6780316 () Bool)

(declare-fun e!4093046 () Bool)

(assert (=> b!6780316 (= e!4093057 e!4093046)))

(declare-fun res!2771581 () Bool)

(assert (=> b!6780316 (=> (not res!2771581) (not e!4093046))))

(declare-fun lt!2444763 () Regex!16603)

(assert (=> b!6780316 (= res!2771581 (= r!7292 lt!2444763))))

(assert (=> b!6780316 (= lt!2444763 (unfocusZipper!2345 zl!343))))

(declare-fun b!6780317 () Bool)

(declare-fun tp!1857810 () Bool)

(assert (=> b!6780317 (= e!4093041 tp!1857810)))

(declare-fun b!6780318 () Bool)

(declare-fun res!2771587 () Bool)

(assert (=> b!6780318 (=> res!2771587 e!4093053)))

(assert (=> b!6780318 (= res!2771587 (not ((_ is Cons!65985) (exprs!6487 (h!72434 zl!343)))))))

(assert (=> b!6780319 (= e!4093050 e!4093043)))

(declare-fun res!2771598 () Bool)

(assert (=> b!6780319 (=> res!2771598 e!4093043)))

(assert (=> b!6780319 (= res!2771598 (not (= lt!2444759 lt!2444774)))))

(assert (=> b!6780319 (= (flatMap!2084 z!1189 lambda!381617) (derivationStepZipperUp!1757 (h!72434 zl!343) (h!72432 s!2326)))))

(declare-fun lt!2444781 () Unit!159897)

(assert (=> b!6780319 (= lt!2444781 (lemmaFlatMapOnSingletonSet!1610 z!1189 (h!72434 zl!343) lambda!381617))))

(declare-fun b!6780320 () Bool)

(declare-fun res!2771582 () Bool)

(assert (=> b!6780320 (=> res!2771582 e!4093053)))

(declare-fun generalisedUnion!2447 (List!66109) Regex!16603)

(declare-fun unfocusZipperList!2024 (List!66110) List!66109)

(assert (=> b!6780320 (= res!2771582 (not (= r!7292 (generalisedUnion!2447 (unfocusZipperList!2024 zl!343)))))))

(declare-fun setElem!46377 () Context!11974)

(declare-fun tp!1857812 () Bool)

(declare-fun setNonEmpty!46377 () Bool)

(declare-fun e!4093037 () Bool)

(assert (=> setNonEmpty!46377 (= setRes!46377 (and tp!1857812 (inv!84754 setElem!46377) e!4093037))))

(declare-fun setRest!46377 () (InoxSet Context!11974))

(assert (=> setNonEmpty!46377 (= z!1189 ((_ map or) (store ((as const (Array Context!11974 Bool)) false) setElem!46377 true) setRest!46377))))

(declare-fun b!6780321 () Bool)

(declare-fun res!2771606 () Bool)

(assert (=> b!6780321 (=> res!2771606 e!4093056)))

(assert (=> b!6780321 (= res!2771606 (or (not (= lt!2444763 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6780322 () Bool)

(declare-fun e!4093044 () Bool)

(assert (=> b!6780322 (= e!4093044 e!4093045)))

(declare-fun res!2771605 () Bool)

(assert (=> b!6780322 (=> res!2771605 e!4093045)))

(declare-fun lt!2444788 () Bool)

(assert (=> b!6780322 (= res!2771605 (not lt!2444788))))

(declare-fun e!4093058 () Bool)

(assert (=> b!6780322 e!4093058))

(declare-fun res!2771602 () Bool)

(assert (=> b!6780322 (=> (not res!2771602) (not e!4093058))))

(declare-fun matchRSpec!3704 (Regex!16603 List!66108) Bool)

(assert (=> b!6780322 (= res!2771602 (= lt!2444788 (matchRSpec!3704 lt!2444765 s!2326)))))

(assert (=> b!6780322 (= lt!2444788 (matchR!8786 lt!2444765 s!2326))))

(declare-fun lt!2444777 () Unit!159897)

(declare-fun mainMatchTheorem!3704 (Regex!16603 List!66108) Unit!159897)

(assert (=> b!6780322 (= lt!2444777 (mainMatchTheorem!3704 lt!2444765 s!2326))))

(declare-fun b!6780323 () Bool)

(declare-fun e!4093049 () Bool)

(assert (=> b!6780323 (= e!4093048 e!4093049)))

(declare-fun res!2771607 () Bool)

(assert (=> b!6780323 (=> res!2771607 e!4093049)))

(assert (=> b!6780323 (= res!2771607 (not (= lt!2444759 (derivationStepZipper!2547 lt!2444762 (h!72432 s!2326)))))))

(assert (=> b!6780323 (= (flatMap!2084 lt!2444762 lambda!381617) (derivationStepZipperUp!1757 lt!2444770 (h!72432 s!2326)))))

(declare-fun lt!2444783 () Unit!159897)

(assert (=> b!6780323 (= lt!2444783 (lemmaFlatMapOnSingletonSet!1610 lt!2444762 lt!2444770 lambda!381617))))

(declare-fun lt!2444766 () Context!11974)

(assert (=> b!6780323 (= (flatMap!2084 lt!2444760 lambda!381617) (derivationStepZipperUp!1757 lt!2444766 (h!72432 s!2326)))))

(declare-fun lt!2444758 () Unit!159897)

(assert (=> b!6780323 (= lt!2444758 (lemmaFlatMapOnSingletonSet!1610 lt!2444760 lt!2444766 lambda!381617))))

(declare-fun lt!2444775 () (InoxSet Context!11974))

(assert (=> b!6780323 (= lt!2444775 (derivationStepZipperUp!1757 lt!2444770 (h!72432 s!2326)))))

(declare-fun lt!2444772 () (InoxSet Context!11974))

(assert (=> b!6780323 (= lt!2444772 (derivationStepZipperUp!1757 lt!2444766 (h!72432 s!2326)))))

(assert (=> b!6780323 (= lt!2444762 (store ((as const (Array Context!11974 Bool)) false) lt!2444770 true))))

(assert (=> b!6780323 (= lt!2444760 (store ((as const (Array Context!11974 Bool)) false) lt!2444766 true))))

(assert (=> b!6780323 (= lt!2444766 (Context!11975 (Cons!65985 (reg!16932 r!7292) Nil!65985)))))

(declare-fun b!6780324 () Bool)

(declare-fun tp!1857816 () Bool)

(declare-fun tp!1857808 () Bool)

(assert (=> b!6780324 (= e!4093051 (and tp!1857816 tp!1857808))))

(declare-fun b!6780325 () Bool)

(declare-fun tp!1857809 () Bool)

(assert (=> b!6780325 (= e!4093051 tp!1857809)))

(declare-fun b!6780326 () Bool)

(declare-fun e!4093052 () Bool)

(assert (=> b!6780326 (= e!4093052 e!4093044)))

(declare-fun res!2771585 () Bool)

(assert (=> b!6780326 (=> res!2771585 e!4093044)))

(assert (=> b!6780326 (= res!2771585 (not (= (unfocusZipper!2345 lt!2444784) r!7292)))))

(assert (=> b!6780326 (= lt!2444784 (Cons!65986 lt!2444770 Nil!65986))))

(declare-fun b!6780327 () Bool)

(declare-fun tp!1857813 () Bool)

(assert (=> b!6780327 (= e!4093037 tp!1857813)))

(declare-fun b!6780328 () Bool)

(declare-fun tp!1857814 () Bool)

(declare-fun tp!1857815 () Bool)

(assert (=> b!6780328 (= e!4093051 (and tp!1857814 tp!1857815))))

(declare-fun b!6780329 () Bool)

(assert (=> b!6780329 (= e!4093049 e!4093052)))

(declare-fun res!2771597 () Bool)

(assert (=> b!6780329 (=> res!2771597 e!4093052)))

(assert (=> b!6780329 (= res!2771597 (not (= (unfocusZipper!2345 lt!2444787) (reg!16932 r!7292))))))

(assert (=> b!6780329 (= lt!2444787 (Cons!65986 lt!2444766 Nil!65986))))

(declare-fun b!6780330 () Bool)

(declare-fun e!4093040 () Bool)

(assert (=> b!6780330 (= e!4093058 e!4093040)))

(declare-fun res!2771584 () Bool)

(assert (=> b!6780330 (=> res!2771584 e!4093040)))

(assert (=> b!6780330 (= res!2771584 (not lt!2444788))))

(declare-fun b!6780331 () Bool)

(assert (=> b!6780331 (= e!4093046 (not e!4093053))))

(declare-fun res!2771593 () Bool)

(assert (=> b!6780331 (=> res!2771593 e!4093053)))

(assert (=> b!6780331 (= res!2771593 (not ((_ is Cons!65986) zl!343)))))

(assert (=> b!6780331 (= lt!2444768 (matchRSpec!3704 r!7292 s!2326))))

(assert (=> b!6780331 (= lt!2444768 (matchR!8786 r!7292 s!2326))))

(declare-fun lt!2444780 () Unit!159897)

(assert (=> b!6780331 (= lt!2444780 (mainMatchTheorem!3704 r!7292 s!2326))))

(declare-fun b!6780332 () Bool)

(declare-fun res!2771586 () Bool)

(assert (=> b!6780332 (=> (not res!2771586) (not e!4093057))))

(declare-fun toList!10387 ((InoxSet Context!11974)) List!66110)

(assert (=> b!6780332 (= res!2771586 (= (toList!10387 z!1189) zl!343))))

(declare-fun b!6780333 () Bool)

(assert (=> b!6780333 (= e!4093040 e!4093038)))

(declare-fun res!2771591 () Bool)

(assert (=> b!6780333 (=> (not res!2771591) (not e!4093038))))

(assert (=> b!6780333 (= res!2771591 (= (Exists!3671 lambda!381614) (Exists!3671 lambda!381615)))))

(declare-fun setIsEmpty!46377 () Bool)

(assert (=> setIsEmpty!46377 setRes!46377))

(assert (= (and start!656264 res!2771608) b!6780332))

(assert (= (and b!6780332 res!2771586) b!6780316))

(assert (= (and b!6780316 res!2771581) b!6780331))

(assert (= (and b!6780331 (not res!2771593)) b!6780306))

(assert (= (and b!6780306 (not res!2771600)) b!6780311))

(assert (= (and b!6780311 (not res!2771596)) b!6780318))

(assert (= (and b!6780318 (not res!2771587)) b!6780320))

(assert (= (and b!6780320 (not res!2771582)) b!6780310))

(assert (= (and b!6780310 (not res!2771583)) b!6780302))

(assert (= (and b!6780302 (not res!2771588)) b!6780312))

(assert (= (and b!6780302 (not res!2771589)) b!6780299))

(assert (= (and b!6780299 (not res!2771590)) b!6780308))

(assert (= (and b!6780308 (not res!2771604)) b!6780319))

(assert (= (and b!6780319 (not res!2771598)) b!6780305))

(assert (= (and b!6780305 (not res!2771599)) b!6780315))

(assert (= (and b!6780315 (not res!2771592)) b!6780321))

(assert (= (and b!6780321 (not res!2771606)) b!6780301))

(assert (= (and b!6780301 (not res!2771603)) b!6780323))

(assert (= (and b!6780323 (not res!2771607)) b!6780329))

(assert (= (and b!6780329 (not res!2771597)) b!6780326))

(assert (= (and b!6780326 (not res!2771585)) b!6780322))

(assert (= (and b!6780322 res!2771602) b!6780330))

(assert (= (and b!6780330 (not res!2771584)) b!6780333))

(assert (= (and b!6780333 res!2771591) b!6780304))

(assert (= (and b!6780322 (not res!2771605)) b!6780298))

(assert (= (and b!6780298 (not res!2771595)) b!6780300))

(assert (= (and b!6780300 (not res!2771601)) b!6780309))

(assert (= (and b!6780309 (not res!2771594)) b!6780303))

(assert (= (and start!656264 ((_ is ElementMatch!16603) r!7292)) b!6780314))

(assert (= (and start!656264 ((_ is Concat!25448) r!7292)) b!6780324))

(assert (= (and start!656264 ((_ is Star!16603) r!7292)) b!6780325))

(assert (= (and start!656264 ((_ is Union!16603) r!7292)) b!6780328))

(assert (= (and start!656264 condSetEmpty!46377) setIsEmpty!46377))

(assert (= (and start!656264 (not condSetEmpty!46377)) setNonEmpty!46377))

(assert (= setNonEmpty!46377 b!6780327))

(assert (= b!6780307 b!6780317))

(assert (= (and start!656264 ((_ is Cons!65986) zl!343)) b!6780307))

(assert (= (and start!656264 ((_ is Cons!65984) s!2326)) b!6780313))

(declare-fun m!7529046 () Bool)

(assert (=> b!6780298 m!7529046))

(declare-fun m!7529048 () Bool)

(assert (=> b!6780298 m!7529048))

(declare-fun m!7529050 () Bool)

(assert (=> setNonEmpty!46377 m!7529050))

(declare-fun m!7529052 () Bool)

(assert (=> b!6780305 m!7529052))

(declare-fun m!7529054 () Bool)

(assert (=> b!6780305 m!7529054))

(declare-fun m!7529056 () Bool)

(assert (=> b!6780305 m!7529056))

(declare-fun m!7529058 () Bool)

(assert (=> b!6780305 m!7529058))

(declare-fun m!7529060 () Bool)

(assert (=> b!6780305 m!7529060))

(declare-fun m!7529062 () Bool)

(assert (=> b!6780329 m!7529062))

(declare-fun m!7529064 () Bool)

(assert (=> b!6780326 m!7529064))

(declare-fun m!7529066 () Bool)

(assert (=> b!6780333 m!7529066))

(declare-fun m!7529068 () Bool)

(assert (=> b!6780333 m!7529068))

(declare-fun m!7529070 () Bool)

(assert (=> b!6780300 m!7529070))

(declare-fun m!7529072 () Bool)

(assert (=> b!6780316 m!7529072))

(declare-fun m!7529074 () Bool)

(assert (=> start!656264 m!7529074))

(declare-fun m!7529076 () Bool)

(assert (=> b!6780303 m!7529076))

(declare-fun m!7529078 () Bool)

(assert (=> b!6780303 m!7529078))

(declare-fun m!7529080 () Bool)

(assert (=> b!6780303 m!7529080))

(declare-fun m!7529082 () Bool)

(assert (=> b!6780303 m!7529082))

(declare-fun m!7529084 () Bool)

(assert (=> b!6780303 m!7529084))

(declare-fun m!7529086 () Bool)

(assert (=> b!6780308 m!7529086))

(declare-fun m!7529088 () Bool)

(assert (=> b!6780308 m!7529088))

(declare-fun m!7529090 () Bool)

(assert (=> b!6780308 m!7529090))

(declare-fun m!7529092 () Bool)

(assert (=> b!6780322 m!7529092))

(declare-fun m!7529094 () Bool)

(assert (=> b!6780322 m!7529094))

(declare-fun m!7529096 () Bool)

(assert (=> b!6780322 m!7529096))

(declare-fun m!7529098 () Bool)

(assert (=> b!6780306 m!7529098))

(declare-fun m!7529100 () Bool)

(assert (=> b!6780311 m!7529100))

(declare-fun m!7529102 () Bool)

(assert (=> b!6780301 m!7529102))

(declare-fun m!7529104 () Bool)

(assert (=> b!6780331 m!7529104))

(declare-fun m!7529106 () Bool)

(assert (=> b!6780331 m!7529106))

(declare-fun m!7529108 () Bool)

(assert (=> b!6780331 m!7529108))

(declare-fun m!7529110 () Bool)

(assert (=> b!6780315 m!7529110))

(declare-fun m!7529112 () Bool)

(assert (=> b!6780315 m!7529112))

(assert (=> b!6780315 m!7529112))

(declare-fun m!7529114 () Bool)

(assert (=> b!6780315 m!7529114))

(declare-fun m!7529116 () Bool)

(assert (=> b!6780323 m!7529116))

(declare-fun m!7529118 () Bool)

(assert (=> b!6780323 m!7529118))

(declare-fun m!7529120 () Bool)

(assert (=> b!6780323 m!7529120))

(declare-fun m!7529122 () Bool)

(assert (=> b!6780323 m!7529122))

(declare-fun m!7529124 () Bool)

(assert (=> b!6780323 m!7529124))

(declare-fun m!7529126 () Bool)

(assert (=> b!6780323 m!7529126))

(declare-fun m!7529128 () Bool)

(assert (=> b!6780323 m!7529128))

(declare-fun m!7529130 () Bool)

(assert (=> b!6780323 m!7529130))

(declare-fun m!7529132 () Bool)

(assert (=> b!6780323 m!7529132))

(declare-fun m!7529134 () Bool)

(assert (=> b!6780307 m!7529134))

(declare-fun m!7529136 () Bool)

(assert (=> b!6780332 m!7529136))

(assert (=> b!6780304 m!7529066))

(declare-fun m!7529138 () Bool)

(assert (=> b!6780302 m!7529138))

(assert (=> b!6780302 m!7529066))

(declare-fun m!7529140 () Bool)

(assert (=> b!6780302 m!7529140))

(assert (=> b!6780302 m!7529066))

(declare-fun m!7529142 () Bool)

(assert (=> b!6780302 m!7529142))

(declare-fun m!7529144 () Bool)

(assert (=> b!6780302 m!7529144))

(declare-fun m!7529146 () Bool)

(assert (=> b!6780302 m!7529146))

(declare-fun m!7529148 () Bool)

(assert (=> b!6780302 m!7529148))

(assert (=> b!6780302 m!7529066))

(assert (=> b!6780302 m!7529068))

(declare-fun m!7529150 () Bool)

(assert (=> b!6780302 m!7529150))

(declare-fun m!7529152 () Bool)

(assert (=> b!6780309 m!7529152))

(declare-fun m!7529154 () Bool)

(assert (=> b!6780319 m!7529154))

(declare-fun m!7529156 () Bool)

(assert (=> b!6780319 m!7529156))

(declare-fun m!7529158 () Bool)

(assert (=> b!6780319 m!7529158))

(declare-fun m!7529160 () Bool)

(assert (=> b!6780320 m!7529160))

(assert (=> b!6780320 m!7529160))

(declare-fun m!7529162 () Bool)

(assert (=> b!6780320 m!7529162))

(check-sat (not setNonEmpty!46377) (not b!6780317) (not b!6780323) (not b!6780309) (not b!6780332) (not b!6780327) (not b!6780324) (not b!6780311) (not b!6780300) (not b!6780313) (not b!6780302) (not b!6780328) (not b!6780303) tp_is_empty!42459 (not b!6780320) (not b!6780315) (not b!6780322) (not b!6780326) (not b!6780325) (not b!6780298) (not b!6780306) (not b!6780329) (not b!6780304) (not b!6780333) (not b!6780316) (not b!6780301) (not start!656264) (not b!6780307) (not b!6780331) (not b!6780319) (not b!6780305) (not b!6780308))
(check-sat)
(get-model)

(declare-fun d!2130151 () Bool)

(declare-fun e!4093063 () Bool)

(assert (=> d!2130151 e!4093063))

(declare-fun res!2771613 () Bool)

(assert (=> d!2130151 (=> (not res!2771613) (not e!4093063))))

(declare-fun lt!2444791 () List!66108)

(declare-fun content!12850 (List!66108) (InoxSet C!33476))

(assert (=> d!2130151 (= res!2771613 (= (content!12850 lt!2444791) ((_ map or) (content!12850 (_1!36881 lt!2444761)) (content!12850 (_2!36881 lt!2444761)))))))

(declare-fun e!4093064 () List!66108)

(assert (=> d!2130151 (= lt!2444791 e!4093064)))

(declare-fun c!1259510 () Bool)

(assert (=> d!2130151 (= c!1259510 ((_ is Nil!65984) (_1!36881 lt!2444761)))))

(assert (=> d!2130151 (= (++!14757 (_1!36881 lt!2444761) (_2!36881 lt!2444761)) lt!2444791)))

(declare-fun b!6780350 () Bool)

(declare-fun res!2771614 () Bool)

(assert (=> b!6780350 (=> (not res!2771614) (not e!4093063))))

(declare-fun size!40636 (List!66108) Int)

(assert (=> b!6780350 (= res!2771614 (= (size!40636 lt!2444791) (+ (size!40636 (_1!36881 lt!2444761)) (size!40636 (_2!36881 lt!2444761)))))))

(declare-fun b!6780351 () Bool)

(assert (=> b!6780351 (= e!4093063 (or (not (= (_2!36881 lt!2444761) Nil!65984)) (= lt!2444791 (_1!36881 lt!2444761))))))

(declare-fun b!6780348 () Bool)

(assert (=> b!6780348 (= e!4093064 (_2!36881 lt!2444761))))

(declare-fun b!6780349 () Bool)

(assert (=> b!6780349 (= e!4093064 (Cons!65984 (h!72432 (_1!36881 lt!2444761)) (++!14757 (t!379823 (_1!36881 lt!2444761)) (_2!36881 lt!2444761))))))

(assert (= (and d!2130151 c!1259510) b!6780348))

(assert (= (and d!2130151 (not c!1259510)) b!6780349))

(assert (= (and d!2130151 res!2771613) b!6780350))

(assert (= (and b!6780350 res!2771614) b!6780351))

(declare-fun m!7529164 () Bool)

(assert (=> d!2130151 m!7529164))

(declare-fun m!7529166 () Bool)

(assert (=> d!2130151 m!7529166))

(declare-fun m!7529168 () Bool)

(assert (=> d!2130151 m!7529168))

(declare-fun m!7529170 () Bool)

(assert (=> b!6780350 m!7529170))

(declare-fun m!7529172 () Bool)

(assert (=> b!6780350 m!7529172))

(declare-fun m!7529174 () Bool)

(assert (=> b!6780350 m!7529174))

(declare-fun m!7529176 () Bool)

(assert (=> b!6780349 m!7529176))

(assert (=> b!6780298 d!2130151))

(declare-fun d!2130153 () Bool)

(assert (=> d!2130153 (= (get!22974 lt!2444764) (v!52695 lt!2444764))))

(assert (=> b!6780298 d!2130153))

(declare-fun b!6780372 () Bool)

(declare-fun e!4093082 () Regex!16603)

(declare-fun e!4093077 () Regex!16603)

(assert (=> b!6780372 (= e!4093082 e!4093077)))

(declare-fun c!1259521 () Bool)

(assert (=> b!6780372 (= c!1259521 ((_ is Cons!65985) (unfocusZipperList!2024 zl!343)))))

(declare-fun b!6780373 () Bool)

(declare-fun e!4093081 () Bool)

(declare-fun e!4093080 () Bool)

(assert (=> b!6780373 (= e!4093081 e!4093080)))

(declare-fun c!1259519 () Bool)

(declare-fun isEmpty!38347 (List!66109) Bool)

(assert (=> b!6780373 (= c!1259519 (isEmpty!38347 (unfocusZipperList!2024 zl!343)))))

(declare-fun b!6780374 () Bool)

(assert (=> b!6780374 (= e!4093082 (h!72433 (unfocusZipperList!2024 zl!343)))))

(declare-fun b!6780375 () Bool)

(assert (=> b!6780375 (= e!4093077 (Union!16603 (h!72433 (unfocusZipperList!2024 zl!343)) (generalisedUnion!2447 (t!379824 (unfocusZipperList!2024 zl!343)))))))

(declare-fun b!6780376 () Bool)

(assert (=> b!6780376 (= e!4093077 EmptyLang!16603)))

(declare-fun b!6780377 () Bool)

(declare-fun lt!2444794 () Regex!16603)

(declare-fun isEmptyLang!1968 (Regex!16603) Bool)

(assert (=> b!6780377 (= e!4093080 (isEmptyLang!1968 lt!2444794))))

(declare-fun b!6780378 () Bool)

(declare-fun e!4093079 () Bool)

(declare-fun head!13616 (List!66109) Regex!16603)

(assert (=> b!6780378 (= e!4093079 (= lt!2444794 (head!13616 (unfocusZipperList!2024 zl!343))))))

(declare-fun d!2130155 () Bool)

(assert (=> d!2130155 e!4093081))

(declare-fun res!2771620 () Bool)

(assert (=> d!2130155 (=> (not res!2771620) (not e!4093081))))

(assert (=> d!2130155 (= res!2771620 (validRegex!8339 lt!2444794))))

(assert (=> d!2130155 (= lt!2444794 e!4093082)))

(declare-fun c!1259522 () Bool)

(declare-fun e!4093078 () Bool)

(assert (=> d!2130155 (= c!1259522 e!4093078)))

(declare-fun res!2771619 () Bool)

(assert (=> d!2130155 (=> (not res!2771619) (not e!4093078))))

(assert (=> d!2130155 (= res!2771619 ((_ is Cons!65985) (unfocusZipperList!2024 zl!343)))))

(declare-fun lambda!381620 () Int)

(declare-fun forall!15794 (List!66109 Int) Bool)

(assert (=> d!2130155 (forall!15794 (unfocusZipperList!2024 zl!343) lambda!381620)))

(assert (=> d!2130155 (= (generalisedUnion!2447 (unfocusZipperList!2024 zl!343)) lt!2444794)))

(declare-fun b!6780379 () Bool)

(assert (=> b!6780379 (= e!4093078 (isEmpty!38347 (t!379824 (unfocusZipperList!2024 zl!343))))))

(declare-fun b!6780380 () Bool)

(declare-fun isUnion!1398 (Regex!16603) Bool)

(assert (=> b!6780380 (= e!4093079 (isUnion!1398 lt!2444794))))

(declare-fun b!6780381 () Bool)

(assert (=> b!6780381 (= e!4093080 e!4093079)))

(declare-fun c!1259520 () Bool)

(declare-fun tail!12701 (List!66109) List!66109)

(assert (=> b!6780381 (= c!1259520 (isEmpty!38347 (tail!12701 (unfocusZipperList!2024 zl!343))))))

(assert (= (and d!2130155 res!2771619) b!6780379))

(assert (= (and d!2130155 c!1259522) b!6780374))

(assert (= (and d!2130155 (not c!1259522)) b!6780372))

(assert (= (and b!6780372 c!1259521) b!6780375))

(assert (= (and b!6780372 (not c!1259521)) b!6780376))

(assert (= (and d!2130155 res!2771620) b!6780373))

(assert (= (and b!6780373 c!1259519) b!6780377))

(assert (= (and b!6780373 (not c!1259519)) b!6780381))

(assert (= (and b!6780381 c!1259520) b!6780378))

(assert (= (and b!6780381 (not c!1259520)) b!6780380))

(assert (=> b!6780381 m!7529160))

(declare-fun m!7529178 () Bool)

(assert (=> b!6780381 m!7529178))

(assert (=> b!6780381 m!7529178))

(declare-fun m!7529180 () Bool)

(assert (=> b!6780381 m!7529180))

(assert (=> b!6780373 m!7529160))

(declare-fun m!7529182 () Bool)

(assert (=> b!6780373 m!7529182))

(assert (=> b!6780378 m!7529160))

(declare-fun m!7529184 () Bool)

(assert (=> b!6780378 m!7529184))

(declare-fun m!7529186 () Bool)

(assert (=> b!6780379 m!7529186))

(declare-fun m!7529188 () Bool)

(assert (=> d!2130155 m!7529188))

(assert (=> d!2130155 m!7529160))

(declare-fun m!7529190 () Bool)

(assert (=> d!2130155 m!7529190))

(declare-fun m!7529192 () Bool)

(assert (=> b!6780380 m!7529192))

(declare-fun m!7529194 () Bool)

(assert (=> b!6780375 m!7529194))

(declare-fun m!7529196 () Bool)

(assert (=> b!6780377 m!7529196))

(assert (=> b!6780320 d!2130155))

(declare-fun bs!1805770 () Bool)

(declare-fun d!2130157 () Bool)

(assert (= bs!1805770 (and d!2130157 d!2130155)))

(declare-fun lambda!381623 () Int)

(assert (=> bs!1805770 (= lambda!381623 lambda!381620)))

(declare-fun lt!2444797 () List!66109)

(assert (=> d!2130157 (forall!15794 lt!2444797 lambda!381623)))

(declare-fun e!4093085 () List!66109)

(assert (=> d!2130157 (= lt!2444797 e!4093085)))

(declare-fun c!1259525 () Bool)

(assert (=> d!2130157 (= c!1259525 ((_ is Cons!65986) zl!343))))

(assert (=> d!2130157 (= (unfocusZipperList!2024 zl!343) lt!2444797)))

(declare-fun b!6780386 () Bool)

(assert (=> b!6780386 (= e!4093085 (Cons!65985 (generalisedConcat!2200 (exprs!6487 (h!72434 zl!343))) (unfocusZipperList!2024 (t!379825 zl!343))))))

(declare-fun b!6780387 () Bool)

(assert (=> b!6780387 (= e!4093085 Nil!65985)))

(assert (= (and d!2130157 c!1259525) b!6780386))

(assert (= (and d!2130157 (not c!1259525)) b!6780387))

(declare-fun m!7529198 () Bool)

(assert (=> d!2130157 m!7529198))

(assert (=> b!6780386 m!7529100))

(declare-fun m!7529200 () Bool)

(assert (=> b!6780386 m!7529200))

(assert (=> b!6780320 d!2130157))

(declare-fun d!2130159 () Bool)

(declare-fun choose!50492 ((InoxSet Context!11974) Int) (InoxSet Context!11974))

(assert (=> d!2130159 (= (flatMap!2084 z!1189 lambda!381617) (choose!50492 z!1189 lambda!381617))))

(declare-fun bs!1805771 () Bool)

(assert (= bs!1805771 d!2130159))

(declare-fun m!7529202 () Bool)

(assert (=> bs!1805771 m!7529202))

(assert (=> b!6780319 d!2130159))

(declare-fun call!615104 () (InoxSet Context!11974))

(declare-fun b!6780398 () Bool)

(declare-fun e!4093093 () (InoxSet Context!11974))

(assert (=> b!6780398 (= e!4093093 ((_ map or) call!615104 (derivationStepZipperUp!1757 (Context!11975 (t!379824 (exprs!6487 (h!72434 zl!343)))) (h!72432 s!2326))))))

(declare-fun d!2130161 () Bool)

(declare-fun c!1259530 () Bool)

(declare-fun e!4093094 () Bool)

(assert (=> d!2130161 (= c!1259530 e!4093094)))

(declare-fun res!2771623 () Bool)

(assert (=> d!2130161 (=> (not res!2771623) (not e!4093094))))

(assert (=> d!2130161 (= res!2771623 ((_ is Cons!65985) (exprs!6487 (h!72434 zl!343))))))

(assert (=> d!2130161 (= (derivationStepZipperUp!1757 (h!72434 zl!343) (h!72432 s!2326)) e!4093093)))

(declare-fun b!6780399 () Bool)

(declare-fun e!4093092 () (InoxSet Context!11974))

(assert (=> b!6780399 (= e!4093092 call!615104)))

(declare-fun b!6780400 () Bool)

(assert (=> b!6780400 (= e!4093093 e!4093092)))

(declare-fun c!1259531 () Bool)

(assert (=> b!6780400 (= c!1259531 ((_ is Cons!65985) (exprs!6487 (h!72434 zl!343))))))

(declare-fun bm!615099 () Bool)

(assert (=> bm!615099 (= call!615104 (derivationStepZipperDown!1831 (h!72433 (exprs!6487 (h!72434 zl!343))) (Context!11975 (t!379824 (exprs!6487 (h!72434 zl!343)))) (h!72432 s!2326)))))

(declare-fun b!6780401 () Bool)

(assert (=> b!6780401 (= e!4093092 ((as const (Array Context!11974 Bool)) false))))

(declare-fun b!6780402 () Bool)

(declare-fun nullable!6582 (Regex!16603) Bool)

(assert (=> b!6780402 (= e!4093094 (nullable!6582 (h!72433 (exprs!6487 (h!72434 zl!343)))))))

(assert (= (and d!2130161 res!2771623) b!6780402))

(assert (= (and d!2130161 c!1259530) b!6780398))

(assert (= (and d!2130161 (not c!1259530)) b!6780400))

(assert (= (and b!6780400 c!1259531) b!6780399))

(assert (= (and b!6780400 (not c!1259531)) b!6780401))

(assert (= (or b!6780398 b!6780399) bm!615099))

(declare-fun m!7529204 () Bool)

(assert (=> b!6780398 m!7529204))

(declare-fun m!7529206 () Bool)

(assert (=> bm!615099 m!7529206))

(declare-fun m!7529208 () Bool)

(assert (=> b!6780402 m!7529208))

(assert (=> b!6780319 d!2130161))

(declare-fun d!2130163 () Bool)

(declare-fun dynLambda!26330 (Int Context!11974) (InoxSet Context!11974))

(assert (=> d!2130163 (= (flatMap!2084 z!1189 lambda!381617) (dynLambda!26330 lambda!381617 (h!72434 zl!343)))))

(declare-fun lt!2444800 () Unit!159897)

(declare-fun choose!50493 ((InoxSet Context!11974) Context!11974 Int) Unit!159897)

(assert (=> d!2130163 (= lt!2444800 (choose!50493 z!1189 (h!72434 zl!343) lambda!381617))))

(assert (=> d!2130163 (= z!1189 (store ((as const (Array Context!11974 Bool)) false) (h!72434 zl!343) true))))

(assert (=> d!2130163 (= (lemmaFlatMapOnSingletonSet!1610 z!1189 (h!72434 zl!343) lambda!381617) lt!2444800)))

(declare-fun b_lambda!255307 () Bool)

(assert (=> (not b_lambda!255307) (not d!2130163)))

(declare-fun bs!1805772 () Bool)

(assert (= bs!1805772 d!2130163))

(assert (=> bs!1805772 m!7529154))

(declare-fun m!7529210 () Bool)

(assert (=> bs!1805772 m!7529210))

(declare-fun m!7529212 () Bool)

(assert (=> bs!1805772 m!7529212))

(declare-fun m!7529214 () Bool)

(assert (=> bs!1805772 m!7529214))

(assert (=> b!6780319 d!2130163))

(declare-fun d!2130165 () Bool)

(declare-fun lt!2444803 () Regex!16603)

(assert (=> d!2130165 (validRegex!8339 lt!2444803)))

(assert (=> d!2130165 (= lt!2444803 (generalisedUnion!2447 (unfocusZipperList!2024 zl!343)))))

(assert (=> d!2130165 (= (unfocusZipper!2345 zl!343) lt!2444803)))

(declare-fun bs!1805773 () Bool)

(assert (= bs!1805773 d!2130165))

(declare-fun m!7529216 () Bool)

(assert (=> bs!1805773 m!7529216))

(assert (=> bs!1805773 m!7529160))

(assert (=> bs!1805773 m!7529160))

(assert (=> bs!1805773 m!7529162))

(assert (=> b!6780316 d!2130165))

(declare-fun d!2130169 () Bool)

(declare-fun c!1259540 () Bool)

(assert (=> d!2130169 (= c!1259540 (isEmpty!38345 s!2326))))

(declare-fun e!4093108 () Bool)

(assert (=> d!2130169 (= (matchZipper!2589 lt!2444757 s!2326) e!4093108)))

(declare-fun b!6780422 () Bool)

(declare-fun nullableZipper!2309 ((InoxSet Context!11974)) Bool)

(assert (=> b!6780422 (= e!4093108 (nullableZipper!2309 lt!2444757))))

(declare-fun b!6780423 () Bool)

(declare-fun head!13617 (List!66108) C!33476)

(declare-fun tail!12702 (List!66108) List!66108)

(assert (=> b!6780423 (= e!4093108 (matchZipper!2589 (derivationStepZipper!2547 lt!2444757 (head!13617 s!2326)) (tail!12702 s!2326)))))

(assert (= (and d!2130169 c!1259540) b!6780422))

(assert (= (and d!2130169 (not c!1259540)) b!6780423))

(assert (=> d!2130169 m!7529138))

(declare-fun m!7529240 () Bool)

(assert (=> b!6780422 m!7529240))

(declare-fun m!7529242 () Bool)

(assert (=> b!6780423 m!7529242))

(assert (=> b!6780423 m!7529242))

(declare-fun m!7529244 () Bool)

(assert (=> b!6780423 m!7529244))

(declare-fun m!7529246 () Bool)

(assert (=> b!6780423 m!7529246))

(assert (=> b!6780423 m!7529244))

(assert (=> b!6780423 m!7529246))

(declare-fun m!7529248 () Bool)

(assert (=> b!6780423 m!7529248))

(assert (=> b!6780315 d!2130169))

(declare-fun d!2130181 () Bool)

(declare-fun c!1259543 () Bool)

(assert (=> d!2130181 (= c!1259543 (isEmpty!38345 (t!379823 s!2326)))))

(declare-fun e!4093110 () Bool)

(assert (=> d!2130181 (= (matchZipper!2589 (derivationStepZipper!2547 lt!2444757 (h!72432 s!2326)) (t!379823 s!2326)) e!4093110)))

(declare-fun b!6780429 () Bool)

(assert (=> b!6780429 (= e!4093110 (nullableZipper!2309 (derivationStepZipper!2547 lt!2444757 (h!72432 s!2326))))))

(declare-fun b!6780430 () Bool)

(assert (=> b!6780430 (= e!4093110 (matchZipper!2589 (derivationStepZipper!2547 (derivationStepZipper!2547 lt!2444757 (h!72432 s!2326)) (head!13617 (t!379823 s!2326))) (tail!12702 (t!379823 s!2326))))))

(assert (= (and d!2130181 c!1259543) b!6780429))

(assert (= (and d!2130181 (not c!1259543)) b!6780430))

(declare-fun m!7529250 () Bool)

(assert (=> d!2130181 m!7529250))

(assert (=> b!6780429 m!7529112))

(declare-fun m!7529252 () Bool)

(assert (=> b!6780429 m!7529252))

(declare-fun m!7529254 () Bool)

(assert (=> b!6780430 m!7529254))

(assert (=> b!6780430 m!7529112))

(assert (=> b!6780430 m!7529254))

(declare-fun m!7529256 () Bool)

(assert (=> b!6780430 m!7529256))

(declare-fun m!7529258 () Bool)

(assert (=> b!6780430 m!7529258))

(assert (=> b!6780430 m!7529256))

(assert (=> b!6780430 m!7529258))

(declare-fun m!7529260 () Bool)

(assert (=> b!6780430 m!7529260))

(assert (=> b!6780315 d!2130181))

(declare-fun bs!1805780 () Bool)

(declare-fun d!2130183 () Bool)

(assert (= bs!1805780 (and d!2130183 b!6780319)))

(declare-fun lambda!381629 () Int)

(assert (=> bs!1805780 (= lambda!381629 lambda!381617)))

(assert (=> d!2130183 true))

(assert (=> d!2130183 (= (derivationStepZipper!2547 lt!2444757 (h!72432 s!2326)) (flatMap!2084 lt!2444757 lambda!381629))))

(declare-fun bs!1805781 () Bool)

(assert (= bs!1805781 d!2130183))

(declare-fun m!7529266 () Bool)

(assert (=> bs!1805781 m!7529266))

(assert (=> b!6780315 d!2130183))

(declare-fun d!2130189 () Bool)

(declare-fun choose!50496 (Int) Bool)

(assert (=> d!2130189 (= (Exists!3671 lambda!381614) (choose!50496 lambda!381614))))

(declare-fun bs!1805782 () Bool)

(assert (= bs!1805782 d!2130189))

(declare-fun m!7529268 () Bool)

(assert (=> bs!1805782 m!7529268))

(assert (=> b!6780333 d!2130189))

(declare-fun d!2130191 () Bool)

(assert (=> d!2130191 (= (Exists!3671 lambda!381615) (choose!50496 lambda!381615))))

(declare-fun bs!1805783 () Bool)

(assert (= bs!1805783 d!2130191))

(declare-fun m!7529270 () Bool)

(assert (=> bs!1805783 m!7529270))

(assert (=> b!6780333 d!2130191))

(declare-fun d!2130193 () Bool)

(declare-fun e!4093127 () Bool)

(assert (=> d!2130193 e!4093127))

(declare-fun res!2771646 () Bool)

(assert (=> d!2130193 (=> (not res!2771646) (not e!4093127))))

(declare-fun lt!2444812 () List!66110)

(declare-fun noDuplicate!2387 (List!66110) Bool)

(assert (=> d!2130193 (= res!2771646 (noDuplicate!2387 lt!2444812))))

(declare-fun choose!50497 ((InoxSet Context!11974)) List!66110)

(assert (=> d!2130193 (= lt!2444812 (choose!50497 z!1189))))

(assert (=> d!2130193 (= (toList!10387 z!1189) lt!2444812)))

(declare-fun b!6780465 () Bool)

(declare-fun content!12851 (List!66110) (InoxSet Context!11974))

(assert (=> b!6780465 (= e!4093127 (= (content!12851 lt!2444812) z!1189))))

(assert (= (and d!2130193 res!2771646) b!6780465))

(declare-fun m!7529272 () Bool)

(assert (=> d!2130193 m!7529272))

(declare-fun m!7529274 () Bool)

(assert (=> d!2130193 m!7529274))

(declare-fun m!7529276 () Bool)

(assert (=> b!6780465 m!7529276))

(assert (=> b!6780332 d!2130193))

(declare-fun bs!1805787 () Bool)

(declare-fun d!2130195 () Bool)

(assert (= bs!1805787 (and d!2130195 d!2130155)))

(declare-fun lambda!381638 () Int)

(assert (=> bs!1805787 (= lambda!381638 lambda!381620)))

(declare-fun bs!1805788 () Bool)

(assert (= bs!1805788 (and d!2130195 d!2130157)))

(assert (=> bs!1805788 (= lambda!381638 lambda!381623)))

(declare-fun b!6780543 () Bool)

(declare-fun e!4093173 () Bool)

(declare-fun lt!2444816 () Regex!16603)

(declare-fun isConcat!1484 (Regex!16603) Bool)

(assert (=> b!6780543 (= e!4093173 (isConcat!1484 lt!2444816))))

(declare-fun b!6780544 () Bool)

(declare-fun e!4093174 () Regex!16603)

(assert (=> b!6780544 (= e!4093174 (h!72433 (exprs!6487 (h!72434 zl!343))))))

(declare-fun b!6780545 () Bool)

(declare-fun e!4093175 () Regex!16603)

(assert (=> b!6780545 (= e!4093174 e!4093175)))

(declare-fun c!1259579 () Bool)

(assert (=> b!6780545 (= c!1259579 ((_ is Cons!65985) (exprs!6487 (h!72434 zl!343))))))

(declare-fun b!6780546 () Bool)

(declare-fun e!4093177 () Bool)

(assert (=> b!6780546 (= e!4093177 e!4093173)))

(declare-fun c!1259578 () Bool)

(assert (=> b!6780546 (= c!1259578 (isEmpty!38347 (tail!12701 (exprs!6487 (h!72434 zl!343)))))))

(declare-fun b!6780547 () Bool)

(declare-fun isEmptyExpr!1961 (Regex!16603) Bool)

(assert (=> b!6780547 (= e!4093177 (isEmptyExpr!1961 lt!2444816))))

(declare-fun b!6780548 () Bool)

(assert (=> b!6780548 (= e!4093175 (Concat!25448 (h!72433 (exprs!6487 (h!72434 zl!343))) (generalisedConcat!2200 (t!379824 (exprs!6487 (h!72434 zl!343))))))))

(declare-fun b!6780549 () Bool)

(declare-fun e!4093172 () Bool)

(assert (=> b!6780549 (= e!4093172 (isEmpty!38347 (t!379824 (exprs!6487 (h!72434 zl!343)))))))

(declare-fun e!4093176 () Bool)

(assert (=> d!2130195 e!4093176))

(declare-fun res!2771678 () Bool)

(assert (=> d!2130195 (=> (not res!2771678) (not e!4093176))))

(assert (=> d!2130195 (= res!2771678 (validRegex!8339 lt!2444816))))

(assert (=> d!2130195 (= lt!2444816 e!4093174)))

(declare-fun c!1259580 () Bool)

(assert (=> d!2130195 (= c!1259580 e!4093172)))

(declare-fun res!2771679 () Bool)

(assert (=> d!2130195 (=> (not res!2771679) (not e!4093172))))

(assert (=> d!2130195 (= res!2771679 ((_ is Cons!65985) (exprs!6487 (h!72434 zl!343))))))

(assert (=> d!2130195 (forall!15794 (exprs!6487 (h!72434 zl!343)) lambda!381638)))

(assert (=> d!2130195 (= (generalisedConcat!2200 (exprs!6487 (h!72434 zl!343))) lt!2444816)))

(declare-fun b!6780550 () Bool)

(assert (=> b!6780550 (= e!4093173 (= lt!2444816 (head!13616 (exprs!6487 (h!72434 zl!343)))))))

(declare-fun b!6780551 () Bool)

(assert (=> b!6780551 (= e!4093175 EmptyExpr!16603)))

(declare-fun b!6780552 () Bool)

(assert (=> b!6780552 (= e!4093176 e!4093177)))

(declare-fun c!1259577 () Bool)

(assert (=> b!6780552 (= c!1259577 (isEmpty!38347 (exprs!6487 (h!72434 zl!343))))))

(assert (= (and d!2130195 res!2771679) b!6780549))

(assert (= (and d!2130195 c!1259580) b!6780544))

(assert (= (and d!2130195 (not c!1259580)) b!6780545))

(assert (= (and b!6780545 c!1259579) b!6780548))

(assert (= (and b!6780545 (not c!1259579)) b!6780551))

(assert (= (and d!2130195 res!2771678) b!6780552))

(assert (= (and b!6780552 c!1259577) b!6780547))

(assert (= (and b!6780552 (not c!1259577)) b!6780546))

(assert (= (and b!6780546 c!1259578) b!6780550))

(assert (= (and b!6780546 (not c!1259578)) b!6780543))

(declare-fun m!7529314 () Bool)

(assert (=> b!6780548 m!7529314))

(declare-fun m!7529316 () Bool)

(assert (=> b!6780546 m!7529316))

(assert (=> b!6780546 m!7529316))

(declare-fun m!7529318 () Bool)

(assert (=> b!6780546 m!7529318))

(declare-fun m!7529320 () Bool)

(assert (=> b!6780552 m!7529320))

(declare-fun m!7529322 () Bool)

(assert (=> b!6780543 m!7529322))

(declare-fun m!7529324 () Bool)

(assert (=> b!6780549 m!7529324))

(declare-fun m!7529326 () Bool)

(assert (=> b!6780550 m!7529326))

(declare-fun m!7529328 () Bool)

(assert (=> d!2130195 m!7529328))

(declare-fun m!7529330 () Bool)

(assert (=> d!2130195 m!7529330))

(declare-fun m!7529332 () Bool)

(assert (=> b!6780547 m!7529332))

(assert (=> b!6780311 d!2130195))

(declare-fun bs!1805802 () Bool)

(declare-fun b!6780652 () Bool)

(assert (= bs!1805802 (and b!6780652 b!6780302)))

(declare-fun lambda!381651 () Int)

(assert (=> bs!1805802 (not (= lambda!381651 lambda!381614))))

(assert (=> bs!1805802 (= lambda!381651 lambda!381615)))

(assert (=> bs!1805802 (not (= lambda!381651 lambda!381616))))

(assert (=> b!6780652 true))

(assert (=> b!6780652 true))

(declare-fun bs!1805803 () Bool)

(declare-fun b!6780651 () Bool)

(assert (= bs!1805803 (and b!6780651 b!6780302)))

(declare-fun lambda!381652 () Int)

(assert (=> bs!1805803 (not (= lambda!381652 lambda!381614))))

(assert (=> bs!1805803 (not (= lambda!381652 lambda!381615))))

(assert (=> bs!1805803 (= (and (= (regOne!33718 r!7292) (reg!16932 r!7292)) (= (regTwo!33718 r!7292) r!7292)) (= lambda!381652 lambda!381616))))

(declare-fun bs!1805804 () Bool)

(assert (= bs!1805804 (and b!6780651 b!6780652)))

(assert (=> bs!1805804 (not (= lambda!381652 lambda!381651))))

(assert (=> b!6780651 true))

(assert (=> b!6780651 true))

(declare-fun b!6780649 () Bool)

(declare-fun e!4093236 () Bool)

(declare-fun e!4093235 () Bool)

(assert (=> b!6780649 (= e!4093236 e!4093235)))

(declare-fun res!2771713 () Bool)

(assert (=> b!6780649 (= res!2771713 (not ((_ is EmptyLang!16603) r!7292)))))

(assert (=> b!6780649 (=> (not res!2771713) (not e!4093235))))

(declare-fun b!6780650 () Bool)

(declare-fun c!1259613 () Bool)

(assert (=> b!6780650 (= c!1259613 ((_ is Union!16603) r!7292))))

(declare-fun e!4093233 () Bool)

(declare-fun e!4093238 () Bool)

(assert (=> b!6780650 (= e!4093233 e!4093238)))

(declare-fun e!4093234 () Bool)

(declare-fun call!615125 () Bool)

(assert (=> b!6780651 (= e!4093234 call!615125)))

(declare-fun e!4093237 () Bool)

(assert (=> b!6780652 (= e!4093237 call!615125)))

(declare-fun b!6780653 () Bool)

(declare-fun e!4093232 () Bool)

(assert (=> b!6780653 (= e!4093238 e!4093232)))

(declare-fun res!2771715 () Bool)

(assert (=> b!6780653 (= res!2771715 (matchRSpec!3704 (regOne!33719 r!7292) s!2326))))

(assert (=> b!6780653 (=> res!2771715 e!4093232)))

(declare-fun b!6780654 () Bool)

(assert (=> b!6780654 (= e!4093238 e!4093234)))

(declare-fun c!1259615 () Bool)

(assert (=> b!6780654 (= c!1259615 ((_ is Star!16603) r!7292))))

(declare-fun b!6780655 () Bool)

(declare-fun c!1259612 () Bool)

(assert (=> b!6780655 (= c!1259612 ((_ is ElementMatch!16603) r!7292))))

(assert (=> b!6780655 (= e!4093235 e!4093233)))

(declare-fun bm!615120 () Bool)

(assert (=> bm!615120 (= call!615125 (Exists!3671 (ite c!1259615 lambda!381651 lambda!381652)))))

(declare-fun d!2130203 () Bool)

(declare-fun c!1259614 () Bool)

(assert (=> d!2130203 (= c!1259614 ((_ is EmptyExpr!16603) r!7292))))

(assert (=> d!2130203 (= (matchRSpec!3704 r!7292 s!2326) e!4093236)))

(declare-fun b!6780648 () Bool)

(declare-fun call!615126 () Bool)

(assert (=> b!6780648 (= e!4093236 call!615126)))

(declare-fun b!6780656 () Bool)

(declare-fun res!2771714 () Bool)

(assert (=> b!6780656 (=> res!2771714 e!4093237)))

(assert (=> b!6780656 (= res!2771714 call!615126)))

(assert (=> b!6780656 (= e!4093234 e!4093237)))

(declare-fun bm!615121 () Bool)

(assert (=> bm!615121 (= call!615126 (isEmpty!38345 s!2326))))

(declare-fun b!6780657 () Bool)

(assert (=> b!6780657 (= e!4093233 (= s!2326 (Cons!65984 (c!1259507 r!7292) Nil!65984)))))

(declare-fun b!6780658 () Bool)

(assert (=> b!6780658 (= e!4093232 (matchRSpec!3704 (regTwo!33719 r!7292) s!2326))))

(assert (= (and d!2130203 c!1259614) b!6780648))

(assert (= (and d!2130203 (not c!1259614)) b!6780649))

(assert (= (and b!6780649 res!2771713) b!6780655))

(assert (= (and b!6780655 c!1259612) b!6780657))

(assert (= (and b!6780655 (not c!1259612)) b!6780650))

(assert (= (and b!6780650 c!1259613) b!6780653))

(assert (= (and b!6780650 (not c!1259613)) b!6780654))

(assert (= (and b!6780653 (not res!2771715)) b!6780658))

(assert (= (and b!6780654 c!1259615) b!6780656))

(assert (= (and b!6780654 (not c!1259615)) b!6780651))

(assert (= (and b!6780656 (not res!2771714)) b!6780652))

(assert (= (or b!6780652 b!6780651) bm!615120))

(assert (= (or b!6780648 b!6780656) bm!615121))

(declare-fun m!7529394 () Bool)

(assert (=> b!6780653 m!7529394))

(declare-fun m!7529396 () Bool)

(assert (=> bm!615120 m!7529396))

(assert (=> bm!615121 m!7529138))

(declare-fun m!7529398 () Bool)

(assert (=> b!6780658 m!7529398))

(assert (=> b!6780331 d!2130203))

(declare-fun b!6780766 () Bool)

(declare-fun res!2771766 () Bool)

(declare-fun e!4093303 () Bool)

(assert (=> b!6780766 (=> res!2771766 e!4093303)))

(declare-fun e!4093307 () Bool)

(assert (=> b!6780766 (= res!2771766 e!4093307)))

(declare-fun res!2771762 () Bool)

(assert (=> b!6780766 (=> (not res!2771762) (not e!4093307))))

(declare-fun lt!2444836 () Bool)

(assert (=> b!6780766 (= res!2771762 lt!2444836)))

(declare-fun b!6780767 () Bool)

(declare-fun e!4093306 () Bool)

(assert (=> b!6780767 (= e!4093306 (nullable!6582 r!7292))))

(declare-fun bm!615153 () Bool)

(declare-fun call!615158 () Bool)

(assert (=> bm!615153 (= call!615158 (isEmpty!38345 s!2326))))

(declare-fun b!6780768 () Bool)

(declare-fun e!4093308 () Bool)

(assert (=> b!6780768 (= e!4093303 e!4093308)))

(declare-fun res!2771760 () Bool)

(assert (=> b!6780768 (=> (not res!2771760) (not e!4093308))))

(assert (=> b!6780768 (= res!2771760 (not lt!2444836))))

(declare-fun b!6780769 () Bool)

(declare-fun e!4093302 () Bool)

(assert (=> b!6780769 (= e!4093302 (not (= (head!13617 s!2326) (c!1259507 r!7292))))))

(declare-fun b!6780770 () Bool)

(declare-fun res!2771765 () Bool)

(assert (=> b!6780770 (=> res!2771765 e!4093303)))

(assert (=> b!6780770 (= res!2771765 (not ((_ is ElementMatch!16603) r!7292)))))

(declare-fun e!4093304 () Bool)

(assert (=> b!6780770 (= e!4093304 e!4093303)))

(declare-fun b!6780771 () Bool)

(declare-fun derivativeStep!5267 (Regex!16603 C!33476) Regex!16603)

(assert (=> b!6780771 (= e!4093306 (matchR!8786 (derivativeStep!5267 r!7292 (head!13617 s!2326)) (tail!12702 s!2326)))))

(declare-fun b!6780773 () Bool)

(declare-fun res!2771759 () Bool)

(assert (=> b!6780773 (=> (not res!2771759) (not e!4093307))))

(assert (=> b!6780773 (= res!2771759 (isEmpty!38345 (tail!12702 s!2326)))))

(declare-fun b!6780774 () Bool)

(declare-fun e!4093305 () Bool)

(assert (=> b!6780774 (= e!4093305 (= lt!2444836 call!615158))))

(declare-fun b!6780775 () Bool)

(assert (=> b!6780775 (= e!4093305 e!4093304)))

(declare-fun c!1259648 () Bool)

(assert (=> b!6780775 (= c!1259648 ((_ is EmptyLang!16603) r!7292))))

(declare-fun b!6780776 () Bool)

(declare-fun res!2771763 () Bool)

(assert (=> b!6780776 (=> (not res!2771763) (not e!4093307))))

(assert (=> b!6780776 (= res!2771763 (not call!615158))))

(declare-fun b!6780777 () Bool)

(assert (=> b!6780777 (= e!4093304 (not lt!2444836))))

(declare-fun b!6780778 () Bool)

(declare-fun res!2771764 () Bool)

(assert (=> b!6780778 (=> res!2771764 e!4093302)))

(assert (=> b!6780778 (= res!2771764 (not (isEmpty!38345 (tail!12702 s!2326))))))

(declare-fun b!6780779 () Bool)

(assert (=> b!6780779 (= e!4093308 e!4093302)))

(declare-fun res!2771761 () Bool)

(assert (=> b!6780779 (=> res!2771761 e!4093302)))

(assert (=> b!6780779 (= res!2771761 call!615158)))

(declare-fun d!2130225 () Bool)

(assert (=> d!2130225 e!4093305))

(declare-fun c!1259650 () Bool)

(assert (=> d!2130225 (= c!1259650 ((_ is EmptyExpr!16603) r!7292))))

(assert (=> d!2130225 (= lt!2444836 e!4093306)))

(declare-fun c!1259649 () Bool)

(assert (=> d!2130225 (= c!1259649 (isEmpty!38345 s!2326))))

(assert (=> d!2130225 (validRegex!8339 r!7292)))

(assert (=> d!2130225 (= (matchR!8786 r!7292 s!2326) lt!2444836)))

(declare-fun b!6780772 () Bool)

(assert (=> b!6780772 (= e!4093307 (= (head!13617 s!2326) (c!1259507 r!7292)))))

(assert (= (and d!2130225 c!1259649) b!6780767))

(assert (= (and d!2130225 (not c!1259649)) b!6780771))

(assert (= (and d!2130225 c!1259650) b!6780774))

(assert (= (and d!2130225 (not c!1259650)) b!6780775))

(assert (= (and b!6780775 c!1259648) b!6780777))

(assert (= (and b!6780775 (not c!1259648)) b!6780770))

(assert (= (and b!6780770 (not res!2771765)) b!6780766))

(assert (= (and b!6780766 res!2771762) b!6780776))

(assert (= (and b!6780776 res!2771763) b!6780773))

(assert (= (and b!6780773 res!2771759) b!6780772))

(assert (= (and b!6780766 (not res!2771766)) b!6780768))

(assert (= (and b!6780768 res!2771760) b!6780779))

(assert (= (and b!6780779 (not res!2771761)) b!6780778))

(assert (= (and b!6780778 (not res!2771764)) b!6780769))

(assert (= (or b!6780774 b!6780776 b!6780779) bm!615153))

(assert (=> d!2130225 m!7529138))

(assert (=> d!2130225 m!7529074))

(declare-fun m!7529434 () Bool)

(assert (=> b!6780767 m!7529434))

(assert (=> bm!615153 m!7529138))

(assert (=> b!6780778 m!7529246))

(assert (=> b!6780778 m!7529246))

(declare-fun m!7529436 () Bool)

(assert (=> b!6780778 m!7529436))

(assert (=> b!6780771 m!7529242))

(assert (=> b!6780771 m!7529242))

(declare-fun m!7529438 () Bool)

(assert (=> b!6780771 m!7529438))

(assert (=> b!6780771 m!7529246))

(assert (=> b!6780771 m!7529438))

(assert (=> b!6780771 m!7529246))

(declare-fun m!7529440 () Bool)

(assert (=> b!6780771 m!7529440))

(assert (=> b!6780772 m!7529242))

(assert (=> b!6780773 m!7529246))

(assert (=> b!6780773 m!7529246))

(assert (=> b!6780773 m!7529436))

(assert (=> b!6780769 m!7529242))

(assert (=> b!6780331 d!2130225))

(declare-fun d!2130243 () Bool)

(assert (=> d!2130243 (= (matchR!8786 r!7292 s!2326) (matchRSpec!3704 r!7292 s!2326))))

(declare-fun lt!2444841 () Unit!159897)

(declare-fun choose!50498 (Regex!16603 List!66108) Unit!159897)

(assert (=> d!2130243 (= lt!2444841 (choose!50498 r!7292 s!2326))))

(assert (=> d!2130243 (validRegex!8339 r!7292)))

(assert (=> d!2130243 (= (mainMatchTheorem!3704 r!7292 s!2326) lt!2444841)))

(declare-fun bs!1805810 () Bool)

(assert (= bs!1805810 d!2130243))

(assert (=> bs!1805810 m!7529106))

(assert (=> bs!1805810 m!7529104))

(declare-fun m!7529442 () Bool)

(assert (=> bs!1805810 m!7529442))

(assert (=> bs!1805810 m!7529074))

(assert (=> b!6780331 d!2130243))

(declare-fun b!6780788 () Bool)

(declare-fun res!2771782 () Bool)

(declare-fun e!4093314 () Bool)

(assert (=> b!6780788 (=> res!2771782 e!4093314)))

(declare-fun e!4093318 () Bool)

(assert (=> b!6780788 (= res!2771782 e!4093318)))

(declare-fun res!2771778 () Bool)

(assert (=> b!6780788 (=> (not res!2771778) (not e!4093318))))

(declare-fun lt!2444842 () Bool)

(assert (=> b!6780788 (= res!2771778 lt!2444842)))

(declare-fun b!6780789 () Bool)

(declare-fun e!4093317 () Bool)

(assert (=> b!6780789 (= e!4093317 (nullable!6582 r!7292))))

(declare-fun bm!615154 () Bool)

(declare-fun call!615159 () Bool)

(assert (=> bm!615154 (= call!615159 (isEmpty!38345 (_2!36881 lt!2444761)))))

(declare-fun b!6780790 () Bool)

(declare-fun e!4093319 () Bool)

(assert (=> b!6780790 (= e!4093314 e!4093319)))

(declare-fun res!2771776 () Bool)

(assert (=> b!6780790 (=> (not res!2771776) (not e!4093319))))

(assert (=> b!6780790 (= res!2771776 (not lt!2444842))))

(declare-fun b!6780791 () Bool)

(declare-fun e!4093313 () Bool)

(assert (=> b!6780791 (= e!4093313 (not (= (head!13617 (_2!36881 lt!2444761)) (c!1259507 r!7292))))))

(declare-fun b!6780792 () Bool)

(declare-fun res!2771781 () Bool)

(assert (=> b!6780792 (=> res!2771781 e!4093314)))

(assert (=> b!6780792 (= res!2771781 (not ((_ is ElementMatch!16603) r!7292)))))

(declare-fun e!4093315 () Bool)

(assert (=> b!6780792 (= e!4093315 e!4093314)))

(declare-fun b!6780793 () Bool)

(assert (=> b!6780793 (= e!4093317 (matchR!8786 (derivativeStep!5267 r!7292 (head!13617 (_2!36881 lt!2444761))) (tail!12702 (_2!36881 lt!2444761))))))

(declare-fun b!6780795 () Bool)

(declare-fun res!2771775 () Bool)

(assert (=> b!6780795 (=> (not res!2771775) (not e!4093318))))

(assert (=> b!6780795 (= res!2771775 (isEmpty!38345 (tail!12702 (_2!36881 lt!2444761))))))

(declare-fun b!6780796 () Bool)

(declare-fun e!4093316 () Bool)

(assert (=> b!6780796 (= e!4093316 (= lt!2444842 call!615159))))

(declare-fun b!6780797 () Bool)

(assert (=> b!6780797 (= e!4093316 e!4093315)))

(declare-fun c!1259651 () Bool)

(assert (=> b!6780797 (= c!1259651 ((_ is EmptyLang!16603) r!7292))))

(declare-fun b!6780798 () Bool)

(declare-fun res!2771779 () Bool)

(assert (=> b!6780798 (=> (not res!2771779) (not e!4093318))))

(assert (=> b!6780798 (= res!2771779 (not call!615159))))

(declare-fun b!6780799 () Bool)

(assert (=> b!6780799 (= e!4093315 (not lt!2444842))))

(declare-fun b!6780800 () Bool)

(declare-fun res!2771780 () Bool)

(assert (=> b!6780800 (=> res!2771780 e!4093313)))

(assert (=> b!6780800 (= res!2771780 (not (isEmpty!38345 (tail!12702 (_2!36881 lt!2444761)))))))

(declare-fun b!6780801 () Bool)

(assert (=> b!6780801 (= e!4093319 e!4093313)))

(declare-fun res!2771777 () Bool)

(assert (=> b!6780801 (=> res!2771777 e!4093313)))

(assert (=> b!6780801 (= res!2771777 call!615159)))

(declare-fun d!2130245 () Bool)

(assert (=> d!2130245 e!4093316))

(declare-fun c!1259653 () Bool)

(assert (=> d!2130245 (= c!1259653 ((_ is EmptyExpr!16603) r!7292))))

(assert (=> d!2130245 (= lt!2444842 e!4093317)))

(declare-fun c!1259652 () Bool)

(assert (=> d!2130245 (= c!1259652 (isEmpty!38345 (_2!36881 lt!2444761)))))

(assert (=> d!2130245 (validRegex!8339 r!7292)))

(assert (=> d!2130245 (= (matchR!8786 r!7292 (_2!36881 lt!2444761)) lt!2444842)))

(declare-fun b!6780794 () Bool)

(assert (=> b!6780794 (= e!4093318 (= (head!13617 (_2!36881 lt!2444761)) (c!1259507 r!7292)))))

(assert (= (and d!2130245 c!1259652) b!6780789))

(assert (= (and d!2130245 (not c!1259652)) b!6780793))

(assert (= (and d!2130245 c!1259653) b!6780796))

(assert (= (and d!2130245 (not c!1259653)) b!6780797))

(assert (= (and b!6780797 c!1259651) b!6780799))

(assert (= (and b!6780797 (not c!1259651)) b!6780792))

(assert (= (and b!6780792 (not res!2771781)) b!6780788))

(assert (= (and b!6780788 res!2771778) b!6780798))

(assert (= (and b!6780798 res!2771779) b!6780795))

(assert (= (and b!6780795 res!2771775) b!6780794))

(assert (= (and b!6780788 (not res!2771782)) b!6780790))

(assert (= (and b!6780790 res!2771776) b!6780801))

(assert (= (and b!6780801 (not res!2771777)) b!6780800))

(assert (= (and b!6780800 (not res!2771780)) b!6780791))

(assert (= (or b!6780796 b!6780798 b!6780801) bm!615154))

(declare-fun m!7529444 () Bool)

(assert (=> d!2130245 m!7529444))

(assert (=> d!2130245 m!7529074))

(assert (=> b!6780789 m!7529434))

(assert (=> bm!615154 m!7529444))

(declare-fun m!7529446 () Bool)

(assert (=> b!6780800 m!7529446))

(assert (=> b!6780800 m!7529446))

(declare-fun m!7529448 () Bool)

(assert (=> b!6780800 m!7529448))

(declare-fun m!7529450 () Bool)

(assert (=> b!6780793 m!7529450))

(assert (=> b!6780793 m!7529450))

(declare-fun m!7529452 () Bool)

(assert (=> b!6780793 m!7529452))

(assert (=> b!6780793 m!7529446))

(assert (=> b!6780793 m!7529452))

(assert (=> b!6780793 m!7529446))

(declare-fun m!7529454 () Bool)

(assert (=> b!6780793 m!7529454))

(assert (=> b!6780794 m!7529450))

(assert (=> b!6780795 m!7529446))

(assert (=> b!6780795 m!7529446))

(assert (=> b!6780795 m!7529448))

(assert (=> b!6780791 m!7529450))

(assert (=> b!6780309 d!2130245))

(declare-fun d!2130247 () Bool)

(declare-fun lt!2444844 () Regex!16603)

(assert (=> d!2130247 (validRegex!8339 lt!2444844)))

(assert (=> d!2130247 (= lt!2444844 (generalisedUnion!2447 (unfocusZipperList!2024 lt!2444787)))))

(assert (=> d!2130247 (= (unfocusZipper!2345 lt!2444787) lt!2444844)))

(declare-fun bs!1805813 () Bool)

(assert (= bs!1805813 d!2130247))

(declare-fun m!7529456 () Bool)

(assert (=> bs!1805813 m!7529456))

(declare-fun m!7529458 () Bool)

(assert (=> bs!1805813 m!7529458))

(assert (=> bs!1805813 m!7529458))

(declare-fun m!7529460 () Bool)

(assert (=> bs!1805813 m!7529460))

(assert (=> b!6780329 d!2130247))

(declare-fun b!6780834 () Bool)

(declare-fun e!4093341 () (InoxSet Context!11974))

(declare-fun e!4093339 () (InoxSet Context!11974))

(assert (=> b!6780834 (= e!4093341 e!4093339)))

(declare-fun c!1259664 () Bool)

(assert (=> b!6780834 (= c!1259664 ((_ is Concat!25448) r!7292))))

(declare-fun bm!615167 () Bool)

(declare-fun call!615176 () (InoxSet Context!11974))

(declare-fun call!615172 () (InoxSet Context!11974))

(assert (=> bm!615167 (= call!615176 call!615172)))

(declare-fun b!6780835 () Bool)

(declare-fun e!4093340 () Bool)

(assert (=> b!6780835 (= e!4093340 (nullable!6582 (regOne!33718 r!7292)))))

(declare-fun b!6780836 () Bool)

(declare-fun call!615173 () (InoxSet Context!11974))

(assert (=> b!6780836 (= e!4093341 ((_ map or) call!615173 call!615176))))

(declare-fun b!6780837 () Bool)

(declare-fun e!4093336 () (InoxSet Context!11974))

(assert (=> b!6780837 (= e!4093336 ((_ map or) call!615173 call!615172))))

(declare-fun b!6780838 () Bool)

(declare-fun e!4093338 () (InoxSet Context!11974))

(assert (=> b!6780838 (= e!4093338 (store ((as const (Array Context!11974 Bool)) false) (Context!11975 Nil!65985) true))))

(declare-fun bm!615168 () Bool)

(declare-fun c!1259665 () Bool)

(declare-fun call!615175 () List!66109)

(declare-fun $colon$colon!2412 (List!66109 Regex!16603) List!66109)

(assert (=> bm!615168 (= call!615175 ($colon$colon!2412 (exprs!6487 (Context!11975 Nil!65985)) (ite (or c!1259665 c!1259664) (regTwo!33718 r!7292) r!7292)))))

(declare-fun b!6780839 () Bool)

(assert (=> b!6780839 (= c!1259665 e!4093340)))

(declare-fun res!2771795 () Bool)

(assert (=> b!6780839 (=> (not res!2771795) (not e!4093340))))

(assert (=> b!6780839 (= res!2771795 ((_ is Concat!25448) r!7292))))

(assert (=> b!6780839 (= e!4093336 e!4093341)))

(declare-fun c!1259666 () Bool)

(declare-fun call!615177 () List!66109)

(declare-fun bm!615169 () Bool)

(assert (=> bm!615169 (= call!615172 (derivationStepZipperDown!1831 (ite c!1259666 (regTwo!33719 r!7292) (ite c!1259665 (regTwo!33718 r!7292) (ite c!1259664 (regOne!33718 r!7292) (reg!16932 r!7292)))) (ite (or c!1259666 c!1259665) (Context!11975 Nil!65985) (Context!11975 call!615177)) (h!72432 s!2326)))))

(declare-fun bm!615170 () Bool)

(assert (=> bm!615170 (= call!615173 (derivationStepZipperDown!1831 (ite c!1259666 (regOne!33719 r!7292) (regOne!33718 r!7292)) (ite c!1259666 (Context!11975 Nil!65985) (Context!11975 call!615175)) (h!72432 s!2326)))))

(declare-fun b!6780840 () Bool)

(declare-fun call!615174 () (InoxSet Context!11974))

(assert (=> b!6780840 (= e!4093339 call!615174)))

(declare-fun d!2130249 () Bool)

(declare-fun c!1259667 () Bool)

(assert (=> d!2130249 (= c!1259667 (and ((_ is ElementMatch!16603) r!7292) (= (c!1259507 r!7292) (h!72432 s!2326))))))

(assert (=> d!2130249 (= (derivationStepZipperDown!1831 r!7292 (Context!11975 Nil!65985) (h!72432 s!2326)) e!4093338)))

(declare-fun bm!615171 () Bool)

(assert (=> bm!615171 (= call!615174 call!615176)))

(declare-fun b!6780841 () Bool)

(declare-fun e!4093337 () (InoxSet Context!11974))

(assert (=> b!6780841 (= e!4093337 ((as const (Array Context!11974 Bool)) false))))

(declare-fun b!6780842 () Bool)

(declare-fun c!1259668 () Bool)

(assert (=> b!6780842 (= c!1259668 ((_ is Star!16603) r!7292))))

(assert (=> b!6780842 (= e!4093339 e!4093337)))

(declare-fun bm!615172 () Bool)

(assert (=> bm!615172 (= call!615177 call!615175)))

(declare-fun b!6780843 () Bool)

(assert (=> b!6780843 (= e!4093338 e!4093336)))

(assert (=> b!6780843 (= c!1259666 ((_ is Union!16603) r!7292))))

(declare-fun b!6780844 () Bool)

(assert (=> b!6780844 (= e!4093337 call!615174)))

(assert (= (and d!2130249 c!1259667) b!6780838))

(assert (= (and d!2130249 (not c!1259667)) b!6780843))

(assert (= (and b!6780843 c!1259666) b!6780837))

(assert (= (and b!6780843 (not c!1259666)) b!6780839))

(assert (= (and b!6780839 res!2771795) b!6780835))

(assert (= (and b!6780839 c!1259665) b!6780836))

(assert (= (and b!6780839 (not c!1259665)) b!6780834))

(assert (= (and b!6780834 c!1259664) b!6780840))

(assert (= (and b!6780834 (not c!1259664)) b!6780842))

(assert (= (and b!6780842 c!1259668) b!6780844))

(assert (= (and b!6780842 (not c!1259668)) b!6780841))

(assert (= (or b!6780840 b!6780844) bm!615172))

(assert (= (or b!6780840 b!6780844) bm!615171))

(assert (= (or b!6780836 bm!615172) bm!615168))

(assert (= (or b!6780836 bm!615171) bm!615167))

(assert (= (or b!6780837 bm!615167) bm!615169))

(assert (= (or b!6780837 b!6780836) bm!615170))

(declare-fun m!7529468 () Bool)

(assert (=> b!6780835 m!7529468))

(declare-fun m!7529470 () Bool)

(assert (=> bm!615168 m!7529470))

(declare-fun m!7529472 () Bool)

(assert (=> bm!615170 m!7529472))

(declare-fun m!7529474 () Bool)

(assert (=> b!6780838 m!7529474))

(declare-fun m!7529476 () Bool)

(assert (=> bm!615169 m!7529476))

(assert (=> b!6780308 d!2130249))

(declare-fun call!615178 () (InoxSet Context!11974))

(declare-fun e!4093343 () (InoxSet Context!11974))

(declare-fun b!6780845 () Bool)

(assert (=> b!6780845 (= e!4093343 ((_ map or) call!615178 (derivationStepZipperUp!1757 (Context!11975 (t!379824 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985))))) (h!72432 s!2326))))))

(declare-fun d!2130255 () Bool)

(declare-fun c!1259669 () Bool)

(declare-fun e!4093344 () Bool)

(assert (=> d!2130255 (= c!1259669 e!4093344)))

(declare-fun res!2771796 () Bool)

(assert (=> d!2130255 (=> (not res!2771796) (not e!4093344))))

(assert (=> d!2130255 (= res!2771796 ((_ is Cons!65985) (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985)))))))

(assert (=> d!2130255 (= (derivationStepZipperUp!1757 (Context!11975 (Cons!65985 r!7292 Nil!65985)) (h!72432 s!2326)) e!4093343)))

(declare-fun b!6780846 () Bool)

(declare-fun e!4093342 () (InoxSet Context!11974))

(assert (=> b!6780846 (= e!4093342 call!615178)))

(declare-fun b!6780847 () Bool)

(assert (=> b!6780847 (= e!4093343 e!4093342)))

(declare-fun c!1259670 () Bool)

(assert (=> b!6780847 (= c!1259670 ((_ is Cons!65985) (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985)))))))

(declare-fun bm!615173 () Bool)

(assert (=> bm!615173 (= call!615178 (derivationStepZipperDown!1831 (h!72433 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985)))) (Context!11975 (t!379824 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985))))) (h!72432 s!2326)))))

(declare-fun b!6780848 () Bool)

(assert (=> b!6780848 (= e!4093342 ((as const (Array Context!11974 Bool)) false))))

(declare-fun b!6780849 () Bool)

(assert (=> b!6780849 (= e!4093344 (nullable!6582 (h!72433 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985))))))))

(assert (= (and d!2130255 res!2771796) b!6780849))

(assert (= (and d!2130255 c!1259669) b!6780845))

(assert (= (and d!2130255 (not c!1259669)) b!6780847))

(assert (= (and b!6780847 c!1259670) b!6780846))

(assert (= (and b!6780847 (not c!1259670)) b!6780848))

(assert (= (or b!6780845 b!6780846) bm!615173))

(declare-fun m!7529478 () Bool)

(assert (=> b!6780845 m!7529478))

(declare-fun m!7529480 () Bool)

(assert (=> bm!615173 m!7529480))

(declare-fun m!7529482 () Bool)

(assert (=> b!6780849 m!7529482))

(assert (=> b!6780308 d!2130255))

(declare-fun bs!1805819 () Bool)

(declare-fun d!2130257 () Bool)

(assert (= bs!1805819 (and d!2130257 b!6780319)))

(declare-fun lambda!381664 () Int)

(assert (=> bs!1805819 (= lambda!381664 lambda!381617)))

(declare-fun bs!1805821 () Bool)

(assert (= bs!1805821 (and d!2130257 d!2130183)))

(assert (=> bs!1805821 (= lambda!381664 lambda!381629)))

(assert (=> d!2130257 true))

(assert (=> d!2130257 (= (derivationStepZipper!2547 z!1189 (h!72432 s!2326)) (flatMap!2084 z!1189 lambda!381664))))

(declare-fun bs!1805823 () Bool)

(assert (= bs!1805823 d!2130257))

(declare-fun m!7529484 () Bool)

(assert (=> bs!1805823 m!7529484))

(assert (=> b!6780308 d!2130257))

(declare-fun d!2130259 () Bool)

(assert (=> d!2130259 (= (isEmpty!38346 (t!379825 zl!343)) ((_ is Nil!65986) (t!379825 zl!343)))))

(assert (=> b!6780306 d!2130259))

(declare-fun bs!1805828 () Bool)

(declare-fun d!2130261 () Bool)

(assert (= bs!1805828 (and d!2130261 d!2130155)))

(declare-fun lambda!381668 () Int)

(assert (=> bs!1805828 (= lambda!381668 lambda!381620)))

(declare-fun bs!1805829 () Bool)

(assert (= bs!1805829 (and d!2130261 d!2130157)))

(assert (=> bs!1805829 (= lambda!381668 lambda!381623)))

(declare-fun bs!1805830 () Bool)

(assert (= bs!1805830 (and d!2130261 d!2130195)))

(assert (=> bs!1805830 (= lambda!381668 lambda!381638)))

(assert (=> d!2130261 (= (inv!84754 (h!72434 zl!343)) (forall!15794 (exprs!6487 (h!72434 zl!343)) lambda!381668))))

(declare-fun bs!1805831 () Bool)

(assert (= bs!1805831 d!2130261))

(declare-fun m!7529486 () Bool)

(assert (=> bs!1805831 m!7529486))

(assert (=> b!6780307 d!2130261))

(declare-fun b!6780850 () Bool)

(declare-fun e!4093350 () (InoxSet Context!11974))

(declare-fun e!4093348 () (InoxSet Context!11974))

(assert (=> b!6780850 (= e!4093350 e!4093348)))

(declare-fun c!1259671 () Bool)

(assert (=> b!6780850 (= c!1259671 ((_ is Concat!25448) (reg!16932 r!7292)))))

(declare-fun bm!615174 () Bool)

(declare-fun call!615183 () (InoxSet Context!11974))

(declare-fun call!615179 () (InoxSet Context!11974))

(assert (=> bm!615174 (= call!615183 call!615179)))

(declare-fun b!6780851 () Bool)

(declare-fun e!4093349 () Bool)

(assert (=> b!6780851 (= e!4093349 (nullable!6582 (regOne!33718 (reg!16932 r!7292))))))

(declare-fun b!6780852 () Bool)

(declare-fun call!615180 () (InoxSet Context!11974))

(assert (=> b!6780852 (= e!4093350 ((_ map or) call!615180 call!615183))))

(declare-fun b!6780853 () Bool)

(declare-fun e!4093345 () (InoxSet Context!11974))

(assert (=> b!6780853 (= e!4093345 ((_ map or) call!615180 call!615179))))

(declare-fun b!6780854 () Bool)

(declare-fun e!4093347 () (InoxSet Context!11974))

(assert (=> b!6780854 (= e!4093347 (store ((as const (Array Context!11974 Bool)) false) lt!2444770 true))))

(declare-fun c!1259672 () Bool)

(declare-fun bm!615175 () Bool)

(declare-fun call!615182 () List!66109)

(assert (=> bm!615175 (= call!615182 ($colon$colon!2412 (exprs!6487 lt!2444770) (ite (or c!1259672 c!1259671) (regTwo!33718 (reg!16932 r!7292)) (reg!16932 r!7292))))))

(declare-fun b!6780855 () Bool)

(assert (=> b!6780855 (= c!1259672 e!4093349)))

(declare-fun res!2771797 () Bool)

(assert (=> b!6780855 (=> (not res!2771797) (not e!4093349))))

(assert (=> b!6780855 (= res!2771797 ((_ is Concat!25448) (reg!16932 r!7292)))))

(assert (=> b!6780855 (= e!4093345 e!4093350)))

(declare-fun call!615184 () List!66109)

(declare-fun c!1259673 () Bool)

(declare-fun bm!615176 () Bool)

(assert (=> bm!615176 (= call!615179 (derivationStepZipperDown!1831 (ite c!1259673 (regTwo!33719 (reg!16932 r!7292)) (ite c!1259672 (regTwo!33718 (reg!16932 r!7292)) (ite c!1259671 (regOne!33718 (reg!16932 r!7292)) (reg!16932 (reg!16932 r!7292))))) (ite (or c!1259673 c!1259672) lt!2444770 (Context!11975 call!615184)) (h!72432 s!2326)))))

(declare-fun bm!615177 () Bool)

(assert (=> bm!615177 (= call!615180 (derivationStepZipperDown!1831 (ite c!1259673 (regOne!33719 (reg!16932 r!7292)) (regOne!33718 (reg!16932 r!7292))) (ite c!1259673 lt!2444770 (Context!11975 call!615182)) (h!72432 s!2326)))))

(declare-fun b!6780856 () Bool)

(declare-fun call!615181 () (InoxSet Context!11974))

(assert (=> b!6780856 (= e!4093348 call!615181)))

(declare-fun d!2130263 () Bool)

(declare-fun c!1259674 () Bool)

(assert (=> d!2130263 (= c!1259674 (and ((_ is ElementMatch!16603) (reg!16932 r!7292)) (= (c!1259507 (reg!16932 r!7292)) (h!72432 s!2326))))))

(assert (=> d!2130263 (= (derivationStepZipperDown!1831 (reg!16932 r!7292) lt!2444770 (h!72432 s!2326)) e!4093347)))

(declare-fun bm!615178 () Bool)

(assert (=> bm!615178 (= call!615181 call!615183)))

(declare-fun b!6780857 () Bool)

(declare-fun e!4093346 () (InoxSet Context!11974))

(assert (=> b!6780857 (= e!4093346 ((as const (Array Context!11974 Bool)) false))))

(declare-fun b!6780858 () Bool)

(declare-fun c!1259675 () Bool)

(assert (=> b!6780858 (= c!1259675 ((_ is Star!16603) (reg!16932 r!7292)))))

(assert (=> b!6780858 (= e!4093348 e!4093346)))

(declare-fun bm!615179 () Bool)

(assert (=> bm!615179 (= call!615184 call!615182)))

(declare-fun b!6780859 () Bool)

(assert (=> b!6780859 (= e!4093347 e!4093345)))

(assert (=> b!6780859 (= c!1259673 ((_ is Union!16603) (reg!16932 r!7292)))))

(declare-fun b!6780860 () Bool)

(assert (=> b!6780860 (= e!4093346 call!615181)))

(assert (= (and d!2130263 c!1259674) b!6780854))

(assert (= (and d!2130263 (not c!1259674)) b!6780859))

(assert (= (and b!6780859 c!1259673) b!6780853))

(assert (= (and b!6780859 (not c!1259673)) b!6780855))

(assert (= (and b!6780855 res!2771797) b!6780851))

(assert (= (and b!6780855 c!1259672) b!6780852))

(assert (= (and b!6780855 (not c!1259672)) b!6780850))

(assert (= (and b!6780850 c!1259671) b!6780856))

(assert (= (and b!6780850 (not c!1259671)) b!6780858))

(assert (= (and b!6780858 c!1259675) b!6780860))

(assert (= (and b!6780858 (not c!1259675)) b!6780857))

(assert (= (or b!6780856 b!6780860) bm!615179))

(assert (= (or b!6780856 b!6780860) bm!615178))

(assert (= (or b!6780852 bm!615179) bm!615175))

(assert (= (or b!6780852 bm!615178) bm!615174))

(assert (= (or b!6780853 bm!615174) bm!615176))

(assert (= (or b!6780853 b!6780852) bm!615177))

(declare-fun m!7529496 () Bool)

(assert (=> b!6780851 m!7529496))

(declare-fun m!7529498 () Bool)

(assert (=> bm!615175 m!7529498))

(declare-fun m!7529500 () Bool)

(assert (=> bm!615177 m!7529500))

(assert (=> b!6780854 m!7529128))

(declare-fun m!7529502 () Bool)

(assert (=> bm!615176 m!7529502))

(assert (=> b!6780305 d!2130263))

(declare-fun d!2130269 () Bool)

(assert (=> d!2130269 (= (flatMap!2084 lt!2444757 lambda!381617) (choose!50492 lt!2444757 lambda!381617))))

(declare-fun bs!1805833 () Bool)

(assert (= bs!1805833 d!2130269))

(declare-fun m!7529504 () Bool)

(assert (=> bs!1805833 m!7529504))

(assert (=> b!6780305 d!2130269))

(declare-fun call!615185 () (InoxSet Context!11974))

(declare-fun b!6780861 () Bool)

(declare-fun e!4093352 () (InoxSet Context!11974))

(assert (=> b!6780861 (= e!4093352 ((_ map or) call!615185 (derivationStepZipperUp!1757 (Context!11975 (t!379824 (exprs!6487 lt!2444756))) (h!72432 s!2326))))))

(declare-fun d!2130271 () Bool)

(declare-fun c!1259676 () Bool)

(declare-fun e!4093353 () Bool)

(assert (=> d!2130271 (= c!1259676 e!4093353)))

(declare-fun res!2771798 () Bool)

(assert (=> d!2130271 (=> (not res!2771798) (not e!4093353))))

(assert (=> d!2130271 (= res!2771798 ((_ is Cons!65985) (exprs!6487 lt!2444756)))))

(assert (=> d!2130271 (= (derivationStepZipperUp!1757 lt!2444756 (h!72432 s!2326)) e!4093352)))

(declare-fun b!6780862 () Bool)

(declare-fun e!4093351 () (InoxSet Context!11974))

(assert (=> b!6780862 (= e!4093351 call!615185)))

(declare-fun b!6780863 () Bool)

(assert (=> b!6780863 (= e!4093352 e!4093351)))

(declare-fun c!1259677 () Bool)

(assert (=> b!6780863 (= c!1259677 ((_ is Cons!65985) (exprs!6487 lt!2444756)))))

(declare-fun bm!615180 () Bool)

(assert (=> bm!615180 (= call!615185 (derivationStepZipperDown!1831 (h!72433 (exprs!6487 lt!2444756)) (Context!11975 (t!379824 (exprs!6487 lt!2444756))) (h!72432 s!2326)))))

(declare-fun b!6780864 () Bool)

(assert (=> b!6780864 (= e!4093351 ((as const (Array Context!11974 Bool)) false))))

(declare-fun b!6780865 () Bool)

(assert (=> b!6780865 (= e!4093353 (nullable!6582 (h!72433 (exprs!6487 lt!2444756))))))

(assert (= (and d!2130271 res!2771798) b!6780865))

(assert (= (and d!2130271 c!1259676) b!6780861))

(assert (= (and d!2130271 (not c!1259676)) b!6780863))

(assert (= (and b!6780863 c!1259677) b!6780862))

(assert (= (and b!6780863 (not c!1259677)) b!6780864))

(assert (= (or b!6780861 b!6780862) bm!615180))

(declare-fun m!7529506 () Bool)

(assert (=> b!6780861 m!7529506))

(declare-fun m!7529508 () Bool)

(assert (=> bm!615180 m!7529508))

(declare-fun m!7529510 () Bool)

(assert (=> b!6780865 m!7529510))

(assert (=> b!6780305 d!2130271))

(declare-fun d!2130273 () Bool)

(assert (=> d!2130273 (= (flatMap!2084 lt!2444757 lambda!381617) (dynLambda!26330 lambda!381617 lt!2444756))))

(declare-fun lt!2444848 () Unit!159897)

(assert (=> d!2130273 (= lt!2444848 (choose!50493 lt!2444757 lt!2444756 lambda!381617))))

(assert (=> d!2130273 (= lt!2444757 (store ((as const (Array Context!11974 Bool)) false) lt!2444756 true))))

(assert (=> d!2130273 (= (lemmaFlatMapOnSingletonSet!1610 lt!2444757 lt!2444756 lambda!381617) lt!2444848)))

(declare-fun b_lambda!255315 () Bool)

(assert (=> (not b_lambda!255315) (not d!2130273)))

(declare-fun bs!1805834 () Bool)

(assert (= bs!1805834 d!2130273))

(assert (=> bs!1805834 m!7529054))

(declare-fun m!7529512 () Bool)

(assert (=> bs!1805834 m!7529512))

(declare-fun m!7529514 () Bool)

(assert (=> bs!1805834 m!7529514))

(assert (=> bs!1805834 m!7529060))

(assert (=> b!6780305 d!2130273))

(declare-fun d!2130275 () Bool)

(declare-fun res!2771811 () Bool)

(declare-fun e!4093369 () Bool)

(assert (=> d!2130275 (=> res!2771811 e!4093369)))

(assert (=> d!2130275 (= res!2771811 ((_ is ElementMatch!16603) r!7292))))

(assert (=> d!2130275 (= (validRegex!8339 r!7292) e!4093369)))

(declare-fun b!6780884 () Bool)

(declare-fun e!4093370 () Bool)

(assert (=> b!6780884 (= e!4093369 e!4093370)))

(declare-fun c!1259682 () Bool)

(assert (=> b!6780884 (= c!1259682 ((_ is Star!16603) r!7292))))

(declare-fun bm!615187 () Bool)

(declare-fun call!615194 () Bool)

(declare-fun call!615192 () Bool)

(assert (=> bm!615187 (= call!615194 call!615192)))

(declare-fun b!6780885 () Bool)

(declare-fun e!4093374 () Bool)

(assert (=> b!6780885 (= e!4093370 e!4093374)))

(declare-fun c!1259683 () Bool)

(assert (=> b!6780885 (= c!1259683 ((_ is Union!16603) r!7292))))

(declare-fun bm!615188 () Bool)

(assert (=> bm!615188 (= call!615192 (validRegex!8339 (ite c!1259682 (reg!16932 r!7292) (ite c!1259683 (regTwo!33719 r!7292) (regTwo!33718 r!7292)))))))

(declare-fun b!6780886 () Bool)

(declare-fun res!2771809 () Bool)

(declare-fun e!4093373 () Bool)

(assert (=> b!6780886 (=> res!2771809 e!4093373)))

(assert (=> b!6780886 (= res!2771809 (not ((_ is Concat!25448) r!7292)))))

(assert (=> b!6780886 (= e!4093374 e!4093373)))

(declare-fun b!6780887 () Bool)

(declare-fun e!4093371 () Bool)

(assert (=> b!6780887 (= e!4093371 call!615194)))

(declare-fun bm!615189 () Bool)

(declare-fun call!615193 () Bool)

(assert (=> bm!615189 (= call!615193 (validRegex!8339 (ite c!1259683 (regOne!33719 r!7292) (regOne!33718 r!7292))))))

(declare-fun b!6780888 () Bool)

(declare-fun e!4093368 () Bool)

(assert (=> b!6780888 (= e!4093370 e!4093368)))

(declare-fun res!2771813 () Bool)

(assert (=> b!6780888 (= res!2771813 (not (nullable!6582 (reg!16932 r!7292))))))

(assert (=> b!6780888 (=> (not res!2771813) (not e!4093368))))

(declare-fun b!6780889 () Bool)

(assert (=> b!6780889 (= e!4093373 e!4093371)))

(declare-fun res!2771812 () Bool)

(assert (=> b!6780889 (=> (not res!2771812) (not e!4093371))))

(assert (=> b!6780889 (= res!2771812 call!615193)))

(declare-fun b!6780890 () Bool)

(declare-fun e!4093372 () Bool)

(assert (=> b!6780890 (= e!4093372 call!615194)))

(declare-fun b!6780891 () Bool)

(assert (=> b!6780891 (= e!4093368 call!615192)))

(declare-fun b!6780892 () Bool)

(declare-fun res!2771810 () Bool)

(assert (=> b!6780892 (=> (not res!2771810) (not e!4093372))))

(assert (=> b!6780892 (= res!2771810 call!615193)))

(assert (=> b!6780892 (= e!4093374 e!4093372)))

(assert (= (and d!2130275 (not res!2771811)) b!6780884))

(assert (= (and b!6780884 c!1259682) b!6780888))

(assert (= (and b!6780884 (not c!1259682)) b!6780885))

(assert (= (and b!6780888 res!2771813) b!6780891))

(assert (= (and b!6780885 c!1259683) b!6780892))

(assert (= (and b!6780885 (not c!1259683)) b!6780886))

(assert (= (and b!6780892 res!2771810) b!6780890))

(assert (= (and b!6780886 (not res!2771809)) b!6780889))

(assert (= (and b!6780889 res!2771812) b!6780887))

(assert (= (or b!6780890 b!6780887) bm!615187))

(assert (= (or b!6780892 b!6780889) bm!615189))

(assert (= (or b!6780891 bm!615187) bm!615188))

(declare-fun m!7529516 () Bool)

(assert (=> bm!615188 m!7529516))

(declare-fun m!7529518 () Bool)

(assert (=> bm!615189 m!7529518))

(declare-fun m!7529520 () Bool)

(assert (=> b!6780888 m!7529520))

(assert (=> start!656264 d!2130275))

(declare-fun d!2130277 () Bool)

(declare-fun lt!2444849 () Regex!16603)

(assert (=> d!2130277 (validRegex!8339 lt!2444849)))

(assert (=> d!2130277 (= lt!2444849 (generalisedUnion!2447 (unfocusZipperList!2024 lt!2444784)))))

(assert (=> d!2130277 (= (unfocusZipper!2345 lt!2444784) lt!2444849)))

(declare-fun bs!1805835 () Bool)

(assert (= bs!1805835 d!2130277))

(declare-fun m!7529522 () Bool)

(assert (=> bs!1805835 m!7529522))

(declare-fun m!7529524 () Bool)

(assert (=> bs!1805835 m!7529524))

(assert (=> bs!1805835 m!7529524))

(declare-fun m!7529526 () Bool)

(assert (=> bs!1805835 m!7529526))

(assert (=> b!6780326 d!2130277))

(assert (=> b!6780304 d!2130189))

(assert (=> b!6780302 d!2130189))

(declare-fun bs!1805837 () Bool)

(declare-fun d!2130279 () Bool)

(assert (= bs!1805837 (and d!2130279 b!6780652)))

(declare-fun lambda!381673 () Int)

(assert (=> bs!1805837 (not (= lambda!381673 lambda!381651))))

(declare-fun bs!1805838 () Bool)

(assert (= bs!1805838 (and d!2130279 b!6780302)))

(assert (=> bs!1805838 (not (= lambda!381673 lambda!381616))))

(declare-fun bs!1805839 () Bool)

(assert (= bs!1805839 (and d!2130279 b!6780651)))

(assert (=> bs!1805839 (not (= lambda!381673 lambda!381652))))

(assert (=> bs!1805838 (not (= lambda!381673 lambda!381615))))

(assert (=> bs!1805838 (= lambda!381673 lambda!381614)))

(assert (=> d!2130279 true))

(assert (=> d!2130279 true))

(assert (=> d!2130279 true))

(declare-fun lambda!381674 () Int)

(assert (=> bs!1805837 (not (= lambda!381674 lambda!381651))))

(assert (=> bs!1805838 (= lambda!381674 lambda!381616)))

(assert (=> bs!1805839 (= (and (= (reg!16932 r!7292) (regOne!33718 r!7292)) (= r!7292 (regTwo!33718 r!7292))) (= lambda!381674 lambda!381652))))

(assert (=> bs!1805838 (not (= lambda!381674 lambda!381615))))

(assert (=> bs!1805838 (not (= lambda!381674 lambda!381614))))

(declare-fun bs!1805840 () Bool)

(assert (= bs!1805840 d!2130279))

(assert (=> bs!1805840 (not (= lambda!381674 lambda!381673))))

(assert (=> d!2130279 true))

(assert (=> d!2130279 true))

(assert (=> d!2130279 true))

(assert (=> d!2130279 (= (Exists!3671 lambda!381673) (Exists!3671 lambda!381674))))

(declare-fun lt!2444861 () Unit!159897)

(declare-fun choose!50503 (Regex!16603 Regex!16603 List!66108) Unit!159897)

(assert (=> d!2130279 (= lt!2444861 (choose!50503 (reg!16932 r!7292) r!7292 s!2326))))

(assert (=> d!2130279 (validRegex!8339 (reg!16932 r!7292))))

(assert (=> d!2130279 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2198 (reg!16932 r!7292) r!7292 s!2326) lt!2444861)))

(declare-fun m!7529550 () Bool)

(assert (=> bs!1805840 m!7529550))

(declare-fun m!7529552 () Bool)

(assert (=> bs!1805840 m!7529552))

(declare-fun m!7529554 () Bool)

(assert (=> bs!1805840 m!7529554))

(declare-fun m!7529556 () Bool)

(assert (=> bs!1805840 m!7529556))

(assert (=> b!6780302 d!2130279))

(declare-fun d!2130285 () Bool)

(declare-fun isEmpty!38350 (Option!16490) Bool)

(assert (=> d!2130285 (= (isDefined!13193 lt!2444764) (not (isEmpty!38350 lt!2444764)))))

(declare-fun bs!1805841 () Bool)

(assert (= bs!1805841 d!2130285))

(declare-fun m!7529558 () Bool)

(assert (=> bs!1805841 m!7529558))

(assert (=> b!6780302 d!2130285))

(declare-fun bs!1805859 () Bool)

(declare-fun d!2130287 () Bool)

(assert (= bs!1805859 (and d!2130287 b!6780652)))

(declare-fun lambda!381684 () Int)

(assert (=> bs!1805859 (not (= lambda!381684 lambda!381651))))

(declare-fun bs!1805860 () Bool)

(assert (= bs!1805860 (and d!2130287 d!2130279)))

(assert (=> bs!1805860 (not (= lambda!381684 lambda!381674))))

(declare-fun bs!1805861 () Bool)

(assert (= bs!1805861 (and d!2130287 b!6780302)))

(assert (=> bs!1805861 (not (= lambda!381684 lambda!381616))))

(declare-fun bs!1805862 () Bool)

(assert (= bs!1805862 (and d!2130287 b!6780651)))

(assert (=> bs!1805862 (not (= lambda!381684 lambda!381652))))

(assert (=> bs!1805861 (not (= lambda!381684 lambda!381615))))

(assert (=> bs!1805861 (= (= (Star!16603 (reg!16932 r!7292)) r!7292) (= lambda!381684 lambda!381614))))

(assert (=> bs!1805860 (= (= (Star!16603 (reg!16932 r!7292)) r!7292) (= lambda!381684 lambda!381673))))

(assert (=> d!2130287 true))

(assert (=> d!2130287 true))

(declare-fun lambda!381685 () Int)

(assert (=> bs!1805859 (= (= (Star!16603 (reg!16932 r!7292)) r!7292) (= lambda!381685 lambda!381651))))

(declare-fun bs!1805863 () Bool)

(assert (= bs!1805863 d!2130287))

(assert (=> bs!1805863 (not (= lambda!381685 lambda!381684))))

(assert (=> bs!1805860 (not (= lambda!381685 lambda!381674))))

(assert (=> bs!1805861 (not (= lambda!381685 lambda!381616))))

(assert (=> bs!1805862 (not (= lambda!381685 lambda!381652))))

(assert (=> bs!1805861 (= (= (Star!16603 (reg!16932 r!7292)) r!7292) (= lambda!381685 lambda!381615))))

(assert (=> bs!1805861 (not (= lambda!381685 lambda!381614))))

(assert (=> bs!1805860 (not (= lambda!381685 lambda!381673))))

(assert (=> d!2130287 true))

(assert (=> d!2130287 true))

(assert (=> d!2130287 (= (Exists!3671 lambda!381684) (Exists!3671 lambda!381685))))

(declare-fun lt!2444874 () Unit!159897)

(declare-fun choose!50504 (Regex!16603 List!66108) Unit!159897)

(assert (=> d!2130287 (= lt!2444874 (choose!50504 (reg!16932 r!7292) s!2326))))

(assert (=> d!2130287 (validRegex!8339 (reg!16932 r!7292))))

(assert (=> d!2130287 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!762 (reg!16932 r!7292) s!2326) lt!2444874)))

(declare-fun m!7529630 () Bool)

(assert (=> bs!1805863 m!7529630))

(declare-fun m!7529632 () Bool)

(assert (=> bs!1805863 m!7529632))

(declare-fun m!7529634 () Bool)

(assert (=> bs!1805863 m!7529634))

(assert (=> bs!1805863 m!7529556))

(assert (=> b!6780302 d!2130287))

(declare-fun d!2130313 () Bool)

(assert (=> d!2130313 (= (Exists!3671 lambda!381616) (choose!50496 lambda!381616))))

(declare-fun bs!1805868 () Bool)

(assert (= bs!1805868 d!2130313))

(declare-fun m!7529638 () Bool)

(assert (=> bs!1805868 m!7529638))

(assert (=> b!6780302 d!2130313))

(assert (=> b!6780302 d!2130191))

(declare-fun d!2130317 () Bool)

(assert (=> d!2130317 (= (isEmpty!38345 s!2326) ((_ is Nil!65984) s!2326))))

(assert (=> b!6780302 d!2130317))

(declare-fun b!6781038 () Bool)

(declare-fun e!4093458 () Bool)

(assert (=> b!6781038 (= e!4093458 (matchR!8786 r!7292 s!2326))))

(declare-fun b!6781039 () Bool)

(declare-fun e!4093459 () Bool)

(declare-fun lt!2444887 () Option!16490)

(assert (=> b!6781039 (= e!4093459 (not (isDefined!13193 lt!2444887)))))

(declare-fun b!6781040 () Bool)

(declare-fun e!4093457 () Option!16490)

(declare-fun e!4093456 () Option!16490)

(assert (=> b!6781040 (= e!4093457 e!4093456)))

(declare-fun c!1259723 () Bool)

(assert (=> b!6781040 (= c!1259723 ((_ is Nil!65984) s!2326))))

(declare-fun b!6781041 () Bool)

(declare-fun e!4093455 () Bool)

(assert (=> b!6781041 (= e!4093455 (= (++!14757 (_1!36881 (get!22974 lt!2444887)) (_2!36881 (get!22974 lt!2444887))) s!2326))))

(declare-fun b!6781042 () Bool)

(assert (=> b!6781042 (= e!4093457 (Some!16489 (tuple2!67157 Nil!65984 s!2326)))))

(declare-fun b!6781043 () Bool)

(declare-fun res!2771884 () Bool)

(assert (=> b!6781043 (=> (not res!2771884) (not e!4093455))))

(assert (=> b!6781043 (= res!2771884 (matchR!8786 r!7292 (_2!36881 (get!22974 lt!2444887))))))

(declare-fun b!6781044 () Bool)

(declare-fun res!2771882 () Bool)

(assert (=> b!6781044 (=> (not res!2771882) (not e!4093455))))

(assert (=> b!6781044 (= res!2771882 (matchR!8786 (reg!16932 r!7292) (_1!36881 (get!22974 lt!2444887))))))

(declare-fun b!6781045 () Bool)

(declare-fun lt!2444888 () Unit!159897)

(declare-fun lt!2444889 () Unit!159897)

(assert (=> b!6781045 (= lt!2444888 lt!2444889)))

(assert (=> b!6781045 (= (++!14757 (++!14757 Nil!65984 (Cons!65984 (h!72432 s!2326) Nil!65984)) (t!379823 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2724 (List!66108 C!33476 List!66108 List!66108) Unit!159897)

(assert (=> b!6781045 (= lt!2444889 (lemmaMoveElementToOtherListKeepsConcatEq!2724 Nil!65984 (h!72432 s!2326) (t!379823 s!2326) s!2326))))

(assert (=> b!6781045 (= e!4093456 (findConcatSeparation!2904 (reg!16932 r!7292) r!7292 (++!14757 Nil!65984 (Cons!65984 (h!72432 s!2326) Nil!65984)) (t!379823 s!2326) s!2326))))

(declare-fun b!6781046 () Bool)

(assert (=> b!6781046 (= e!4093456 None!16489)))

(declare-fun d!2130319 () Bool)

(assert (=> d!2130319 e!4093459))

(declare-fun res!2771881 () Bool)

(assert (=> d!2130319 (=> res!2771881 e!4093459)))

(assert (=> d!2130319 (= res!2771881 e!4093455)))

(declare-fun res!2771885 () Bool)

(assert (=> d!2130319 (=> (not res!2771885) (not e!4093455))))

(assert (=> d!2130319 (= res!2771885 (isDefined!13193 lt!2444887))))

(assert (=> d!2130319 (= lt!2444887 e!4093457)))

(declare-fun c!1259724 () Bool)

(assert (=> d!2130319 (= c!1259724 e!4093458)))

(declare-fun res!2771883 () Bool)

(assert (=> d!2130319 (=> (not res!2771883) (not e!4093458))))

(assert (=> d!2130319 (= res!2771883 (matchR!8786 (reg!16932 r!7292) Nil!65984))))

(assert (=> d!2130319 (validRegex!8339 (reg!16932 r!7292))))

(assert (=> d!2130319 (= (findConcatSeparation!2904 (reg!16932 r!7292) r!7292 Nil!65984 s!2326 s!2326) lt!2444887)))

(assert (= (and d!2130319 res!2771883) b!6781038))

(assert (= (and d!2130319 c!1259724) b!6781042))

(assert (= (and d!2130319 (not c!1259724)) b!6781040))

(assert (= (and b!6781040 c!1259723) b!6781046))

(assert (= (and b!6781040 (not c!1259723)) b!6781045))

(assert (= (and d!2130319 res!2771885) b!6781044))

(assert (= (and b!6781044 res!2771882) b!6781043))

(assert (= (and b!6781043 res!2771884) b!6781041))

(assert (= (and d!2130319 (not res!2771881)) b!6781039))

(declare-fun m!7529678 () Bool)

(assert (=> d!2130319 m!7529678))

(declare-fun m!7529682 () Bool)

(assert (=> d!2130319 m!7529682))

(assert (=> d!2130319 m!7529556))

(assert (=> b!6781039 m!7529678))

(declare-fun m!7529684 () Bool)

(assert (=> b!6781045 m!7529684))

(assert (=> b!6781045 m!7529684))

(declare-fun m!7529686 () Bool)

(assert (=> b!6781045 m!7529686))

(declare-fun m!7529688 () Bool)

(assert (=> b!6781045 m!7529688))

(assert (=> b!6781045 m!7529684))

(declare-fun m!7529690 () Bool)

(assert (=> b!6781045 m!7529690))

(declare-fun m!7529692 () Bool)

(assert (=> b!6781044 m!7529692))

(declare-fun m!7529694 () Bool)

(assert (=> b!6781044 m!7529694))

(assert (=> b!6781038 m!7529106))

(assert (=> b!6781043 m!7529692))

(declare-fun m!7529696 () Bool)

(assert (=> b!6781043 m!7529696))

(assert (=> b!6781041 m!7529692))

(declare-fun m!7529698 () Bool)

(assert (=> b!6781041 m!7529698))

(assert (=> b!6780302 d!2130319))

(declare-fun bs!1805884 () Bool)

(declare-fun d!2130335 () Bool)

(assert (= bs!1805884 (and d!2130335 b!6780652)))

(declare-fun lambda!381696 () Int)

(assert (=> bs!1805884 (not (= lambda!381696 lambda!381651))))

(declare-fun bs!1805885 () Bool)

(assert (= bs!1805885 (and d!2130335 d!2130287)))

(assert (=> bs!1805885 (= (= r!7292 (Star!16603 (reg!16932 r!7292))) (= lambda!381696 lambda!381684))))

(declare-fun bs!1805886 () Bool)

(assert (= bs!1805886 (and d!2130335 d!2130279)))

(assert (=> bs!1805886 (not (= lambda!381696 lambda!381674))))

(declare-fun bs!1805887 () Bool)

(assert (= bs!1805887 (and d!2130335 b!6780302)))

(assert (=> bs!1805887 (not (= lambda!381696 lambda!381616))))

(declare-fun bs!1805888 () Bool)

(assert (= bs!1805888 (and d!2130335 b!6780651)))

(assert (=> bs!1805888 (not (= lambda!381696 lambda!381652))))

(assert (=> bs!1805887 (not (= lambda!381696 lambda!381615))))

(assert (=> bs!1805887 (= lambda!381696 lambda!381614)))

(assert (=> bs!1805886 (= lambda!381696 lambda!381673)))

(assert (=> bs!1805885 (not (= lambda!381696 lambda!381685))))

(assert (=> d!2130335 true))

(assert (=> d!2130335 true))

(assert (=> d!2130335 true))

(assert (=> d!2130335 (= (isDefined!13193 (findConcatSeparation!2904 (reg!16932 r!7292) r!7292 Nil!65984 s!2326 s!2326)) (Exists!3671 lambda!381696))))

(declare-fun lt!2444896 () Unit!159897)

(declare-fun choose!50506 (Regex!16603 Regex!16603 List!66108) Unit!159897)

(assert (=> d!2130335 (= lt!2444896 (choose!50506 (reg!16932 r!7292) r!7292 s!2326))))

(assert (=> d!2130335 (validRegex!8339 (reg!16932 r!7292))))

(assert (=> d!2130335 (= (lemmaFindConcatSeparationEquivalentToExists!2668 (reg!16932 r!7292) r!7292 s!2326) lt!2444896)))

(declare-fun bs!1805889 () Bool)

(assert (= bs!1805889 d!2130335))

(declare-fun m!7529718 () Bool)

(assert (=> bs!1805889 m!7529718))

(assert (=> bs!1805889 m!7529556))

(assert (=> bs!1805889 m!7529148))

(declare-fun m!7529720 () Bool)

(assert (=> bs!1805889 m!7529720))

(assert (=> bs!1805889 m!7529148))

(declare-fun m!7529722 () Bool)

(assert (=> bs!1805889 m!7529722))

(assert (=> b!6780302 d!2130335))

(declare-fun d!2130339 () Bool)

(declare-fun c!1259728 () Bool)

(assert (=> d!2130339 (= c!1259728 (isEmpty!38345 (_1!36881 lt!2444761)))))

(declare-fun e!4093491 () Bool)

(assert (=> d!2130339 (= (matchZipper!2589 lt!2444760 (_1!36881 lt!2444761)) e!4093491)))

(declare-fun b!6781117 () Bool)

(assert (=> b!6781117 (= e!4093491 (nullableZipper!2309 lt!2444760))))

(declare-fun b!6781118 () Bool)

(assert (=> b!6781118 (= e!4093491 (matchZipper!2589 (derivationStepZipper!2547 lt!2444760 (head!13617 (_1!36881 lt!2444761))) (tail!12702 (_1!36881 lt!2444761))))))

(assert (= (and d!2130339 c!1259728) b!6781117))

(assert (= (and d!2130339 (not c!1259728)) b!6781118))

(declare-fun m!7529724 () Bool)

(assert (=> d!2130339 m!7529724))

(declare-fun m!7529726 () Bool)

(assert (=> b!6781117 m!7529726))

(declare-fun m!7529728 () Bool)

(assert (=> b!6781118 m!7529728))

(assert (=> b!6781118 m!7529728))

(declare-fun m!7529730 () Bool)

(assert (=> b!6781118 m!7529730))

(declare-fun m!7529732 () Bool)

(assert (=> b!6781118 m!7529732))

(assert (=> b!6781118 m!7529730))

(assert (=> b!6781118 m!7529732))

(declare-fun m!7529734 () Bool)

(assert (=> b!6781118 m!7529734))

(assert (=> b!6780303 d!2130339))

(declare-fun d!2130345 () Bool)

(declare-fun c!1259729 () Bool)

(assert (=> d!2130345 (= c!1259729 (isEmpty!38345 (_2!36881 lt!2444761)))))

(declare-fun e!4093492 () Bool)

(assert (=> d!2130345 (= (matchZipper!2589 lt!2444762 (_2!36881 lt!2444761)) e!4093492)))

(declare-fun b!6781119 () Bool)

(assert (=> b!6781119 (= e!4093492 (nullableZipper!2309 lt!2444762))))

(declare-fun b!6781120 () Bool)

(assert (=> b!6781120 (= e!4093492 (matchZipper!2589 (derivationStepZipper!2547 lt!2444762 (head!13617 (_2!36881 lt!2444761))) (tail!12702 (_2!36881 lt!2444761))))))

(assert (= (and d!2130345 c!1259729) b!6781119))

(assert (= (and d!2130345 (not c!1259729)) b!6781120))

(assert (=> d!2130345 m!7529444))

(declare-fun m!7529736 () Bool)

(assert (=> b!6781119 m!7529736))

(assert (=> b!6781120 m!7529450))

(assert (=> b!6781120 m!7529450))

(declare-fun m!7529738 () Bool)

(assert (=> b!6781120 m!7529738))

(assert (=> b!6781120 m!7529446))

(assert (=> b!6781120 m!7529738))

(assert (=> b!6781120 m!7529446))

(declare-fun m!7529740 () Bool)

(assert (=> b!6781120 m!7529740))

(assert (=> b!6780303 d!2130345))

(declare-fun d!2130351 () Bool)

(assert (=> d!2130351 (= (matchR!8786 r!7292 (_2!36881 lt!2444761)) (matchZipper!2589 lt!2444762 (_2!36881 lt!2444761)))))

(declare-fun lt!2444899 () Unit!159897)

(declare-fun choose!50507 ((InoxSet Context!11974) List!66110 Regex!16603 List!66108) Unit!159897)

(assert (=> d!2130351 (= lt!2444899 (choose!50507 lt!2444762 lt!2444784 r!7292 (_2!36881 lt!2444761)))))

(assert (=> d!2130351 (validRegex!8339 r!7292)))

(assert (=> d!2130351 (= (theoremZipperRegexEquiv!933 lt!2444762 lt!2444784 r!7292 (_2!36881 lt!2444761)) lt!2444899)))

(declare-fun bs!1805894 () Bool)

(assert (= bs!1805894 d!2130351))

(assert (=> bs!1805894 m!7529152))

(assert (=> bs!1805894 m!7529078))

(declare-fun m!7529742 () Bool)

(assert (=> bs!1805894 m!7529742))

(assert (=> bs!1805894 m!7529074))

(assert (=> b!6780303 d!2130351))

(declare-fun bs!1805895 () Bool)

(declare-fun d!2130353 () Bool)

(assert (= bs!1805895 (and d!2130353 d!2130155)))

(declare-fun lambda!381697 () Int)

(assert (=> bs!1805895 (= lambda!381697 lambda!381620)))

(declare-fun bs!1805896 () Bool)

(assert (= bs!1805896 (and d!2130353 d!2130157)))

(assert (=> bs!1805896 (= lambda!381697 lambda!381623)))

(declare-fun bs!1805897 () Bool)

(assert (= bs!1805897 (and d!2130353 d!2130195)))

(assert (=> bs!1805897 (= lambda!381697 lambda!381638)))

(declare-fun bs!1805898 () Bool)

(assert (= bs!1805898 (and d!2130353 d!2130261)))

(assert (=> bs!1805898 (= lambda!381697 lambda!381668)))

(assert (=> d!2130353 (= (inv!84754 lt!2444770) (forall!15794 (exprs!6487 lt!2444770) lambda!381697))))

(declare-fun bs!1805899 () Bool)

(assert (= bs!1805899 d!2130353))

(declare-fun m!7529744 () Bool)

(assert (=> bs!1805899 m!7529744))

(assert (=> b!6780303 d!2130353))

(declare-fun d!2130355 () Bool)

(assert (=> d!2130355 (= (matchR!8786 (reg!16932 r!7292) (_1!36881 lt!2444761)) (matchZipper!2589 lt!2444760 (_1!36881 lt!2444761)))))

(declare-fun lt!2444900 () Unit!159897)

(assert (=> d!2130355 (= lt!2444900 (choose!50507 lt!2444760 lt!2444787 (reg!16932 r!7292) (_1!36881 lt!2444761)))))

(assert (=> d!2130355 (validRegex!8339 (reg!16932 r!7292))))

(assert (=> d!2130355 (= (theoremZipperRegexEquiv!933 lt!2444760 lt!2444787 (reg!16932 r!7292) (_1!36881 lt!2444761)) lt!2444900)))

(declare-fun bs!1805900 () Bool)

(assert (= bs!1805900 d!2130355))

(assert (=> bs!1805900 m!7529070))

(assert (=> bs!1805900 m!7529076))

(declare-fun m!7529746 () Bool)

(assert (=> bs!1805900 m!7529746))

(assert (=> bs!1805900 m!7529556))

(assert (=> b!6780303 d!2130355))

(declare-fun bs!1805901 () Bool)

(declare-fun d!2130357 () Bool)

(assert (= bs!1805901 (and d!2130357 b!6780319)))

(declare-fun lambda!381698 () Int)

(assert (=> bs!1805901 (= lambda!381698 lambda!381617)))

(declare-fun bs!1805902 () Bool)

(assert (= bs!1805902 (and d!2130357 d!2130183)))

(assert (=> bs!1805902 (= lambda!381698 lambda!381629)))

(declare-fun bs!1805903 () Bool)

(assert (= bs!1805903 (and d!2130357 d!2130257)))

(assert (=> bs!1805903 (= lambda!381698 lambda!381664)))

(assert (=> d!2130357 true))

(assert (=> d!2130357 (= (derivationStepZipper!2547 lt!2444762 (h!72432 s!2326)) (flatMap!2084 lt!2444762 lambda!381698))))

(declare-fun bs!1805904 () Bool)

(assert (= bs!1805904 d!2130357))

(declare-fun m!7529748 () Bool)

(assert (=> bs!1805904 m!7529748))

(assert (=> b!6780323 d!2130357))

(declare-fun d!2130359 () Bool)

(assert (=> d!2130359 (= (flatMap!2084 lt!2444760 lambda!381617) (dynLambda!26330 lambda!381617 lt!2444766))))

(declare-fun lt!2444901 () Unit!159897)

(assert (=> d!2130359 (= lt!2444901 (choose!50493 lt!2444760 lt!2444766 lambda!381617))))

(assert (=> d!2130359 (= lt!2444760 (store ((as const (Array Context!11974 Bool)) false) lt!2444766 true))))

(assert (=> d!2130359 (= (lemmaFlatMapOnSingletonSet!1610 lt!2444760 lt!2444766 lambda!381617) lt!2444901)))

(declare-fun b_lambda!255327 () Bool)

(assert (=> (not b_lambda!255327) (not d!2130359)))

(declare-fun bs!1805905 () Bool)

(assert (= bs!1805905 d!2130359))

(assert (=> bs!1805905 m!7529124))

(declare-fun m!7529750 () Bool)

(assert (=> bs!1805905 m!7529750))

(declare-fun m!7529752 () Bool)

(assert (=> bs!1805905 m!7529752))

(assert (=> bs!1805905 m!7529118))

(assert (=> b!6780323 d!2130359))

(declare-fun d!2130361 () Bool)

(assert (=> d!2130361 (= (flatMap!2084 lt!2444762 lambda!381617) (choose!50492 lt!2444762 lambda!381617))))

(declare-fun bs!1805906 () Bool)

(assert (= bs!1805906 d!2130361))

(declare-fun m!7529754 () Bool)

(assert (=> bs!1805906 m!7529754))

(assert (=> b!6780323 d!2130361))

(declare-fun d!2130363 () Bool)

(assert (=> d!2130363 (= (flatMap!2084 lt!2444762 lambda!381617) (dynLambda!26330 lambda!381617 lt!2444770))))

(declare-fun lt!2444902 () Unit!159897)

(assert (=> d!2130363 (= lt!2444902 (choose!50493 lt!2444762 lt!2444770 lambda!381617))))

(assert (=> d!2130363 (= lt!2444762 (store ((as const (Array Context!11974 Bool)) false) lt!2444770 true))))

(assert (=> d!2130363 (= (lemmaFlatMapOnSingletonSet!1610 lt!2444762 lt!2444770 lambda!381617) lt!2444902)))

(declare-fun b_lambda!255329 () Bool)

(assert (=> (not b_lambda!255329) (not d!2130363)))

(declare-fun bs!1805907 () Bool)

(assert (= bs!1805907 d!2130363))

(assert (=> bs!1805907 m!7529130))

(declare-fun m!7529756 () Bool)

(assert (=> bs!1805907 m!7529756))

(declare-fun m!7529758 () Bool)

(assert (=> bs!1805907 m!7529758))

(assert (=> bs!1805907 m!7529128))

(assert (=> b!6780323 d!2130363))

(declare-fun call!615204 () (InoxSet Context!11974))

(declare-fun e!4093494 () (InoxSet Context!11974))

(declare-fun b!6781121 () Bool)

(assert (=> b!6781121 (= e!4093494 ((_ map or) call!615204 (derivationStepZipperUp!1757 (Context!11975 (t!379824 (exprs!6487 lt!2444766))) (h!72432 s!2326))))))

(declare-fun d!2130365 () Bool)

(declare-fun c!1259730 () Bool)

(declare-fun e!4093495 () Bool)

(assert (=> d!2130365 (= c!1259730 e!4093495)))

(declare-fun res!2771896 () Bool)

(assert (=> d!2130365 (=> (not res!2771896) (not e!4093495))))

(assert (=> d!2130365 (= res!2771896 ((_ is Cons!65985) (exprs!6487 lt!2444766)))))

(assert (=> d!2130365 (= (derivationStepZipperUp!1757 lt!2444766 (h!72432 s!2326)) e!4093494)))

(declare-fun b!6781122 () Bool)

(declare-fun e!4093493 () (InoxSet Context!11974))

(assert (=> b!6781122 (= e!4093493 call!615204)))

(declare-fun b!6781123 () Bool)

(assert (=> b!6781123 (= e!4093494 e!4093493)))

(declare-fun c!1259731 () Bool)

(assert (=> b!6781123 (= c!1259731 ((_ is Cons!65985) (exprs!6487 lt!2444766)))))

(declare-fun bm!615199 () Bool)

(assert (=> bm!615199 (= call!615204 (derivationStepZipperDown!1831 (h!72433 (exprs!6487 lt!2444766)) (Context!11975 (t!379824 (exprs!6487 lt!2444766))) (h!72432 s!2326)))))

(declare-fun b!6781124 () Bool)

(assert (=> b!6781124 (= e!4093493 ((as const (Array Context!11974 Bool)) false))))

(declare-fun b!6781125 () Bool)

(assert (=> b!6781125 (= e!4093495 (nullable!6582 (h!72433 (exprs!6487 lt!2444766))))))

(assert (= (and d!2130365 res!2771896) b!6781125))

(assert (= (and d!2130365 c!1259730) b!6781121))

(assert (= (and d!2130365 (not c!1259730)) b!6781123))

(assert (= (and b!6781123 c!1259731) b!6781122))

(assert (= (and b!6781123 (not c!1259731)) b!6781124))

(assert (= (or b!6781121 b!6781122) bm!615199))

(declare-fun m!7529760 () Bool)

(assert (=> b!6781121 m!7529760))

(declare-fun m!7529762 () Bool)

(assert (=> bm!615199 m!7529762))

(declare-fun m!7529764 () Bool)

(assert (=> b!6781125 m!7529764))

(assert (=> b!6780323 d!2130365))

(declare-fun b!6781126 () Bool)

(declare-fun call!615205 () (InoxSet Context!11974))

(declare-fun e!4093497 () (InoxSet Context!11974))

(assert (=> b!6781126 (= e!4093497 ((_ map or) call!615205 (derivationStepZipperUp!1757 (Context!11975 (t!379824 (exprs!6487 lt!2444770))) (h!72432 s!2326))))))

(declare-fun d!2130367 () Bool)

(declare-fun c!1259732 () Bool)

(declare-fun e!4093498 () Bool)

(assert (=> d!2130367 (= c!1259732 e!4093498)))

(declare-fun res!2771897 () Bool)

(assert (=> d!2130367 (=> (not res!2771897) (not e!4093498))))

(assert (=> d!2130367 (= res!2771897 ((_ is Cons!65985) (exprs!6487 lt!2444770)))))

(assert (=> d!2130367 (= (derivationStepZipperUp!1757 lt!2444770 (h!72432 s!2326)) e!4093497)))

(declare-fun b!6781127 () Bool)

(declare-fun e!4093496 () (InoxSet Context!11974))

(assert (=> b!6781127 (= e!4093496 call!615205)))

(declare-fun b!6781128 () Bool)

(assert (=> b!6781128 (= e!4093497 e!4093496)))

(declare-fun c!1259733 () Bool)

(assert (=> b!6781128 (= c!1259733 ((_ is Cons!65985) (exprs!6487 lt!2444770)))))

(declare-fun bm!615200 () Bool)

(assert (=> bm!615200 (= call!615205 (derivationStepZipperDown!1831 (h!72433 (exprs!6487 lt!2444770)) (Context!11975 (t!379824 (exprs!6487 lt!2444770))) (h!72432 s!2326)))))

(declare-fun b!6781129 () Bool)

(assert (=> b!6781129 (= e!4093496 ((as const (Array Context!11974 Bool)) false))))

(declare-fun b!6781130 () Bool)

(assert (=> b!6781130 (= e!4093498 (nullable!6582 (h!72433 (exprs!6487 lt!2444770))))))

(assert (= (and d!2130367 res!2771897) b!6781130))

(assert (= (and d!2130367 c!1259732) b!6781126))

(assert (= (and d!2130367 (not c!1259732)) b!6781128))

(assert (= (and b!6781128 c!1259733) b!6781127))

(assert (= (and b!6781128 (not c!1259733)) b!6781129))

(assert (= (or b!6781126 b!6781127) bm!615200))

(declare-fun m!7529766 () Bool)

(assert (=> b!6781126 m!7529766))

(declare-fun m!7529768 () Bool)

(assert (=> bm!615200 m!7529768))

(declare-fun m!7529770 () Bool)

(assert (=> b!6781130 m!7529770))

(assert (=> b!6780323 d!2130367))

(declare-fun d!2130369 () Bool)

(assert (=> d!2130369 (= (flatMap!2084 lt!2444760 lambda!381617) (choose!50492 lt!2444760 lambda!381617))))

(declare-fun bs!1805908 () Bool)

(assert (= bs!1805908 d!2130369))

(declare-fun m!7529772 () Bool)

(assert (=> bs!1805908 m!7529772))

(assert (=> b!6780323 d!2130369))

(declare-fun d!2130371 () Bool)

(declare-fun lt!2444903 () Regex!16603)

(assert (=> d!2130371 (validRegex!8339 lt!2444903)))

(assert (=> d!2130371 (= lt!2444903 (generalisedUnion!2447 (unfocusZipperList!2024 (Cons!65986 lt!2444756 Nil!65986))))))

(assert (=> d!2130371 (= (unfocusZipper!2345 (Cons!65986 lt!2444756 Nil!65986)) lt!2444903)))

(declare-fun bs!1805909 () Bool)

(assert (= bs!1805909 d!2130371))

(declare-fun m!7529774 () Bool)

(assert (=> bs!1805909 m!7529774))

(declare-fun m!7529776 () Bool)

(assert (=> bs!1805909 m!7529776))

(assert (=> bs!1805909 m!7529776))

(declare-fun m!7529778 () Bool)

(assert (=> bs!1805909 m!7529778))

(assert (=> b!6780301 d!2130371))

(declare-fun bs!1805910 () Bool)

(declare-fun b!6781135 () Bool)

(assert (= bs!1805910 (and b!6781135 b!6780652)))

(declare-fun lambda!381699 () Int)

(assert (=> bs!1805910 (= (and (= (reg!16932 lt!2444765) (reg!16932 r!7292)) (= lt!2444765 r!7292)) (= lambda!381699 lambda!381651))))

(declare-fun bs!1805911 () Bool)

(assert (= bs!1805911 (and b!6781135 d!2130287)))

(assert (=> bs!1805911 (not (= lambda!381699 lambda!381684))))

(declare-fun bs!1805912 () Bool)

(assert (= bs!1805912 (and b!6781135 d!2130279)))

(assert (=> bs!1805912 (not (= lambda!381699 lambda!381674))))

(declare-fun bs!1805913 () Bool)

(assert (= bs!1805913 (and b!6781135 d!2130335)))

(assert (=> bs!1805913 (not (= lambda!381699 lambda!381696))))

(declare-fun bs!1805914 () Bool)

(assert (= bs!1805914 (and b!6781135 b!6780302)))

(assert (=> bs!1805914 (not (= lambda!381699 lambda!381616))))

(declare-fun bs!1805915 () Bool)

(assert (= bs!1805915 (and b!6781135 b!6780651)))

(assert (=> bs!1805915 (not (= lambda!381699 lambda!381652))))

(assert (=> bs!1805914 (= (and (= (reg!16932 lt!2444765) (reg!16932 r!7292)) (= lt!2444765 r!7292)) (= lambda!381699 lambda!381615))))

(assert (=> bs!1805914 (not (= lambda!381699 lambda!381614))))

(assert (=> bs!1805912 (not (= lambda!381699 lambda!381673))))

(assert (=> bs!1805911 (= (and (= (reg!16932 lt!2444765) (reg!16932 r!7292)) (= lt!2444765 (Star!16603 (reg!16932 r!7292)))) (= lambda!381699 lambda!381685))))

(assert (=> b!6781135 true))

(assert (=> b!6781135 true))

(declare-fun bs!1805916 () Bool)

(declare-fun b!6781134 () Bool)

(assert (= bs!1805916 (and b!6781134 b!6780652)))

(declare-fun lambda!381700 () Int)

(assert (=> bs!1805916 (not (= lambda!381700 lambda!381651))))

(declare-fun bs!1805917 () Bool)

(assert (= bs!1805917 (and b!6781134 d!2130287)))

(assert (=> bs!1805917 (not (= lambda!381700 lambda!381684))))

(declare-fun bs!1805918 () Bool)

(assert (= bs!1805918 (and b!6781134 d!2130279)))

(assert (=> bs!1805918 (= (and (= (regOne!33718 lt!2444765) (reg!16932 r!7292)) (= (regTwo!33718 lt!2444765) r!7292)) (= lambda!381700 lambda!381674))))

(declare-fun bs!1805919 () Bool)

(assert (= bs!1805919 (and b!6781134 d!2130335)))

(assert (=> bs!1805919 (not (= lambda!381700 lambda!381696))))

(declare-fun bs!1805920 () Bool)

(assert (= bs!1805920 (and b!6781134 b!6780302)))

(assert (=> bs!1805920 (= (and (= (regOne!33718 lt!2444765) (reg!16932 r!7292)) (= (regTwo!33718 lt!2444765) r!7292)) (= lambda!381700 lambda!381616))))

(declare-fun bs!1805921 () Bool)

(assert (= bs!1805921 (and b!6781134 b!6780651)))

(assert (=> bs!1805921 (= (and (= (regOne!33718 lt!2444765) (regOne!33718 r!7292)) (= (regTwo!33718 lt!2444765) (regTwo!33718 r!7292))) (= lambda!381700 lambda!381652))))

(assert (=> bs!1805920 (not (= lambda!381700 lambda!381615))))

(assert (=> bs!1805920 (not (= lambda!381700 lambda!381614))))

(assert (=> bs!1805918 (not (= lambda!381700 lambda!381673))))

(declare-fun bs!1805922 () Bool)

(assert (= bs!1805922 (and b!6781134 b!6781135)))

(assert (=> bs!1805922 (not (= lambda!381700 lambda!381699))))

(assert (=> bs!1805917 (not (= lambda!381700 lambda!381685))))

(assert (=> b!6781134 true))

(assert (=> b!6781134 true))

(declare-fun b!6781132 () Bool)

(declare-fun e!4093503 () Bool)

(declare-fun e!4093502 () Bool)

(assert (=> b!6781132 (= e!4093503 e!4093502)))

(declare-fun res!2771898 () Bool)

(assert (=> b!6781132 (= res!2771898 (not ((_ is EmptyLang!16603) lt!2444765)))))

(assert (=> b!6781132 (=> (not res!2771898) (not e!4093502))))

(declare-fun b!6781133 () Bool)

(declare-fun c!1259735 () Bool)

(assert (=> b!6781133 (= c!1259735 ((_ is Union!16603) lt!2444765))))

(declare-fun e!4093500 () Bool)

(declare-fun e!4093505 () Bool)

(assert (=> b!6781133 (= e!4093500 e!4093505)))

(declare-fun e!4093501 () Bool)

(declare-fun call!615206 () Bool)

(assert (=> b!6781134 (= e!4093501 call!615206)))

(declare-fun e!4093504 () Bool)

(assert (=> b!6781135 (= e!4093504 call!615206)))

(declare-fun b!6781136 () Bool)

(declare-fun e!4093499 () Bool)

(assert (=> b!6781136 (= e!4093505 e!4093499)))

(declare-fun res!2771900 () Bool)

(assert (=> b!6781136 (= res!2771900 (matchRSpec!3704 (regOne!33719 lt!2444765) s!2326))))

(assert (=> b!6781136 (=> res!2771900 e!4093499)))

(declare-fun b!6781137 () Bool)

(assert (=> b!6781137 (= e!4093505 e!4093501)))

(declare-fun c!1259737 () Bool)

(assert (=> b!6781137 (= c!1259737 ((_ is Star!16603) lt!2444765))))

(declare-fun b!6781138 () Bool)

(declare-fun c!1259734 () Bool)

(assert (=> b!6781138 (= c!1259734 ((_ is ElementMatch!16603) lt!2444765))))

(assert (=> b!6781138 (= e!4093502 e!4093500)))

(declare-fun bm!615201 () Bool)

(assert (=> bm!615201 (= call!615206 (Exists!3671 (ite c!1259737 lambda!381699 lambda!381700)))))

(declare-fun d!2130373 () Bool)

(declare-fun c!1259736 () Bool)

(assert (=> d!2130373 (= c!1259736 ((_ is EmptyExpr!16603) lt!2444765))))

(assert (=> d!2130373 (= (matchRSpec!3704 lt!2444765 s!2326) e!4093503)))

(declare-fun b!6781131 () Bool)

(declare-fun call!615207 () Bool)

(assert (=> b!6781131 (= e!4093503 call!615207)))

(declare-fun b!6781139 () Bool)

(declare-fun res!2771899 () Bool)

(assert (=> b!6781139 (=> res!2771899 e!4093504)))

(assert (=> b!6781139 (= res!2771899 call!615207)))

(assert (=> b!6781139 (= e!4093501 e!4093504)))

(declare-fun bm!615202 () Bool)

(assert (=> bm!615202 (= call!615207 (isEmpty!38345 s!2326))))

(declare-fun b!6781140 () Bool)

(assert (=> b!6781140 (= e!4093500 (= s!2326 (Cons!65984 (c!1259507 lt!2444765) Nil!65984)))))

(declare-fun b!6781141 () Bool)

(assert (=> b!6781141 (= e!4093499 (matchRSpec!3704 (regTwo!33719 lt!2444765) s!2326))))

(assert (= (and d!2130373 c!1259736) b!6781131))

(assert (= (and d!2130373 (not c!1259736)) b!6781132))

(assert (= (and b!6781132 res!2771898) b!6781138))

(assert (= (and b!6781138 c!1259734) b!6781140))

(assert (= (and b!6781138 (not c!1259734)) b!6781133))

(assert (= (and b!6781133 c!1259735) b!6781136))

(assert (= (and b!6781133 (not c!1259735)) b!6781137))

(assert (= (and b!6781136 (not res!2771900)) b!6781141))

(assert (= (and b!6781137 c!1259737) b!6781139))

(assert (= (and b!6781137 (not c!1259737)) b!6781134))

(assert (= (and b!6781139 (not res!2771899)) b!6781135))

(assert (= (or b!6781135 b!6781134) bm!615201))

(assert (= (or b!6781131 b!6781139) bm!615202))

(declare-fun m!7529780 () Bool)

(assert (=> b!6781136 m!7529780))

(declare-fun m!7529782 () Bool)

(assert (=> bm!615201 m!7529782))

(assert (=> bm!615202 m!7529138))

(declare-fun m!7529784 () Bool)

(assert (=> b!6781141 m!7529784))

(assert (=> b!6780322 d!2130373))

(declare-fun b!6781142 () Bool)

(declare-fun res!2771908 () Bool)

(declare-fun e!4093507 () Bool)

(assert (=> b!6781142 (=> res!2771908 e!4093507)))

(declare-fun e!4093511 () Bool)

(assert (=> b!6781142 (= res!2771908 e!4093511)))

(declare-fun res!2771904 () Bool)

(assert (=> b!6781142 (=> (not res!2771904) (not e!4093511))))

(declare-fun lt!2444904 () Bool)

(assert (=> b!6781142 (= res!2771904 lt!2444904)))

(declare-fun b!6781143 () Bool)

(declare-fun e!4093510 () Bool)

(assert (=> b!6781143 (= e!4093510 (nullable!6582 lt!2444765))))

(declare-fun bm!615203 () Bool)

(declare-fun call!615208 () Bool)

(assert (=> bm!615203 (= call!615208 (isEmpty!38345 s!2326))))

(declare-fun b!6781144 () Bool)

(declare-fun e!4093512 () Bool)

(assert (=> b!6781144 (= e!4093507 e!4093512)))

(declare-fun res!2771902 () Bool)

(assert (=> b!6781144 (=> (not res!2771902) (not e!4093512))))

(assert (=> b!6781144 (= res!2771902 (not lt!2444904))))

(declare-fun b!6781145 () Bool)

(declare-fun e!4093506 () Bool)

(assert (=> b!6781145 (= e!4093506 (not (= (head!13617 s!2326) (c!1259507 lt!2444765))))))

(declare-fun b!6781146 () Bool)

(declare-fun res!2771907 () Bool)

(assert (=> b!6781146 (=> res!2771907 e!4093507)))

(assert (=> b!6781146 (= res!2771907 (not ((_ is ElementMatch!16603) lt!2444765)))))

(declare-fun e!4093508 () Bool)

(assert (=> b!6781146 (= e!4093508 e!4093507)))

(declare-fun b!6781147 () Bool)

(assert (=> b!6781147 (= e!4093510 (matchR!8786 (derivativeStep!5267 lt!2444765 (head!13617 s!2326)) (tail!12702 s!2326)))))

(declare-fun b!6781149 () Bool)

(declare-fun res!2771901 () Bool)

(assert (=> b!6781149 (=> (not res!2771901) (not e!4093511))))

(assert (=> b!6781149 (= res!2771901 (isEmpty!38345 (tail!12702 s!2326)))))

(declare-fun b!6781150 () Bool)

(declare-fun e!4093509 () Bool)

(assert (=> b!6781150 (= e!4093509 (= lt!2444904 call!615208))))

(declare-fun b!6781151 () Bool)

(assert (=> b!6781151 (= e!4093509 e!4093508)))

(declare-fun c!1259738 () Bool)

(assert (=> b!6781151 (= c!1259738 ((_ is EmptyLang!16603) lt!2444765))))

(declare-fun b!6781152 () Bool)

(declare-fun res!2771905 () Bool)

(assert (=> b!6781152 (=> (not res!2771905) (not e!4093511))))

(assert (=> b!6781152 (= res!2771905 (not call!615208))))

(declare-fun b!6781153 () Bool)

(assert (=> b!6781153 (= e!4093508 (not lt!2444904))))

(declare-fun b!6781154 () Bool)

(declare-fun res!2771906 () Bool)

(assert (=> b!6781154 (=> res!2771906 e!4093506)))

(assert (=> b!6781154 (= res!2771906 (not (isEmpty!38345 (tail!12702 s!2326))))))

(declare-fun b!6781155 () Bool)

(assert (=> b!6781155 (= e!4093512 e!4093506)))

(declare-fun res!2771903 () Bool)

(assert (=> b!6781155 (=> res!2771903 e!4093506)))

(assert (=> b!6781155 (= res!2771903 call!615208)))

(declare-fun d!2130375 () Bool)

(assert (=> d!2130375 e!4093509))

(declare-fun c!1259740 () Bool)

(assert (=> d!2130375 (= c!1259740 ((_ is EmptyExpr!16603) lt!2444765))))

(assert (=> d!2130375 (= lt!2444904 e!4093510)))

(declare-fun c!1259739 () Bool)

(assert (=> d!2130375 (= c!1259739 (isEmpty!38345 s!2326))))

(assert (=> d!2130375 (validRegex!8339 lt!2444765)))

(assert (=> d!2130375 (= (matchR!8786 lt!2444765 s!2326) lt!2444904)))

(declare-fun b!6781148 () Bool)

(assert (=> b!6781148 (= e!4093511 (= (head!13617 s!2326) (c!1259507 lt!2444765)))))

(assert (= (and d!2130375 c!1259739) b!6781143))

(assert (= (and d!2130375 (not c!1259739)) b!6781147))

(assert (= (and d!2130375 c!1259740) b!6781150))

(assert (= (and d!2130375 (not c!1259740)) b!6781151))

(assert (= (and b!6781151 c!1259738) b!6781153))

(assert (= (and b!6781151 (not c!1259738)) b!6781146))

(assert (= (and b!6781146 (not res!2771907)) b!6781142))

(assert (= (and b!6781142 res!2771904) b!6781152))

(assert (= (and b!6781152 res!2771905) b!6781149))

(assert (= (and b!6781149 res!2771901) b!6781148))

(assert (= (and b!6781142 (not res!2771908)) b!6781144))

(assert (= (and b!6781144 res!2771902) b!6781155))

(assert (= (and b!6781155 (not res!2771903)) b!6781154))

(assert (= (and b!6781154 (not res!2771906)) b!6781145))

(assert (= (or b!6781150 b!6781152 b!6781155) bm!615203))

(assert (=> d!2130375 m!7529138))

(declare-fun m!7529786 () Bool)

(assert (=> d!2130375 m!7529786))

(declare-fun m!7529788 () Bool)

(assert (=> b!6781143 m!7529788))

(assert (=> bm!615203 m!7529138))

(assert (=> b!6781154 m!7529246))

(assert (=> b!6781154 m!7529246))

(assert (=> b!6781154 m!7529436))

(assert (=> b!6781147 m!7529242))

(assert (=> b!6781147 m!7529242))

(declare-fun m!7529790 () Bool)

(assert (=> b!6781147 m!7529790))

(assert (=> b!6781147 m!7529246))

(assert (=> b!6781147 m!7529790))

(assert (=> b!6781147 m!7529246))

(declare-fun m!7529792 () Bool)

(assert (=> b!6781147 m!7529792))

(assert (=> b!6781148 m!7529242))

(assert (=> b!6781149 m!7529246))

(assert (=> b!6781149 m!7529246))

(assert (=> b!6781149 m!7529436))

(assert (=> b!6781145 m!7529242))

(assert (=> b!6780322 d!2130375))

(declare-fun d!2130377 () Bool)

(assert (=> d!2130377 (= (matchR!8786 lt!2444765 s!2326) (matchRSpec!3704 lt!2444765 s!2326))))

(declare-fun lt!2444905 () Unit!159897)

(assert (=> d!2130377 (= lt!2444905 (choose!50498 lt!2444765 s!2326))))

(assert (=> d!2130377 (validRegex!8339 lt!2444765)))

(assert (=> d!2130377 (= (mainMatchTheorem!3704 lt!2444765 s!2326) lt!2444905)))

(declare-fun bs!1805923 () Bool)

(assert (= bs!1805923 d!2130377))

(assert (=> bs!1805923 m!7529094))

(assert (=> bs!1805923 m!7529092))

(declare-fun m!7529794 () Bool)

(assert (=> bs!1805923 m!7529794))

(assert (=> bs!1805923 m!7529786))

(assert (=> b!6780322 d!2130377))

(declare-fun bs!1805924 () Bool)

(declare-fun d!2130379 () Bool)

(assert (= bs!1805924 (and d!2130379 d!2130353)))

(declare-fun lambda!381701 () Int)

(assert (=> bs!1805924 (= lambda!381701 lambda!381697)))

(declare-fun bs!1805925 () Bool)

(assert (= bs!1805925 (and d!2130379 d!2130155)))

(assert (=> bs!1805925 (= lambda!381701 lambda!381620)))

(declare-fun bs!1805926 () Bool)

(assert (= bs!1805926 (and d!2130379 d!2130261)))

(assert (=> bs!1805926 (= lambda!381701 lambda!381668)))

(declare-fun bs!1805927 () Bool)

(assert (= bs!1805927 (and d!2130379 d!2130195)))

(assert (=> bs!1805927 (= lambda!381701 lambda!381638)))

(declare-fun bs!1805928 () Bool)

(assert (= bs!1805928 (and d!2130379 d!2130157)))

(assert (=> bs!1805928 (= lambda!381701 lambda!381623)))

(assert (=> d!2130379 (= (inv!84754 setElem!46377) (forall!15794 (exprs!6487 setElem!46377) lambda!381701))))

(declare-fun bs!1805929 () Bool)

(assert (= bs!1805929 d!2130379))

(declare-fun m!7529796 () Bool)

(assert (=> bs!1805929 m!7529796))

(assert (=> setNonEmpty!46377 d!2130379))

(declare-fun b!6781156 () Bool)

(declare-fun res!2771916 () Bool)

(declare-fun e!4093514 () Bool)

(assert (=> b!6781156 (=> res!2771916 e!4093514)))

(declare-fun e!4093518 () Bool)

(assert (=> b!6781156 (= res!2771916 e!4093518)))

(declare-fun res!2771912 () Bool)

(assert (=> b!6781156 (=> (not res!2771912) (not e!4093518))))

(declare-fun lt!2444906 () Bool)

(assert (=> b!6781156 (= res!2771912 lt!2444906)))

(declare-fun b!6781157 () Bool)

(declare-fun e!4093517 () Bool)

(assert (=> b!6781157 (= e!4093517 (nullable!6582 (reg!16932 r!7292)))))

(declare-fun bm!615204 () Bool)

(declare-fun call!615209 () Bool)

(assert (=> bm!615204 (= call!615209 (isEmpty!38345 (_1!36881 lt!2444761)))))

(declare-fun b!6781158 () Bool)

(declare-fun e!4093519 () Bool)

(assert (=> b!6781158 (= e!4093514 e!4093519)))

(declare-fun res!2771910 () Bool)

(assert (=> b!6781158 (=> (not res!2771910) (not e!4093519))))

(assert (=> b!6781158 (= res!2771910 (not lt!2444906))))

(declare-fun b!6781159 () Bool)

(declare-fun e!4093513 () Bool)

(assert (=> b!6781159 (= e!4093513 (not (= (head!13617 (_1!36881 lt!2444761)) (c!1259507 (reg!16932 r!7292)))))))

(declare-fun b!6781160 () Bool)

(declare-fun res!2771915 () Bool)

(assert (=> b!6781160 (=> res!2771915 e!4093514)))

(assert (=> b!6781160 (= res!2771915 (not ((_ is ElementMatch!16603) (reg!16932 r!7292))))))

(declare-fun e!4093515 () Bool)

(assert (=> b!6781160 (= e!4093515 e!4093514)))

(declare-fun b!6781161 () Bool)

(assert (=> b!6781161 (= e!4093517 (matchR!8786 (derivativeStep!5267 (reg!16932 r!7292) (head!13617 (_1!36881 lt!2444761))) (tail!12702 (_1!36881 lt!2444761))))))

(declare-fun b!6781163 () Bool)

(declare-fun res!2771909 () Bool)

(assert (=> b!6781163 (=> (not res!2771909) (not e!4093518))))

(assert (=> b!6781163 (= res!2771909 (isEmpty!38345 (tail!12702 (_1!36881 lt!2444761))))))

(declare-fun b!6781164 () Bool)

(declare-fun e!4093516 () Bool)

(assert (=> b!6781164 (= e!4093516 (= lt!2444906 call!615209))))

(declare-fun b!6781165 () Bool)

(assert (=> b!6781165 (= e!4093516 e!4093515)))

(declare-fun c!1259741 () Bool)

(assert (=> b!6781165 (= c!1259741 ((_ is EmptyLang!16603) (reg!16932 r!7292)))))

(declare-fun b!6781166 () Bool)

(declare-fun res!2771913 () Bool)

(assert (=> b!6781166 (=> (not res!2771913) (not e!4093518))))

(assert (=> b!6781166 (= res!2771913 (not call!615209))))

(declare-fun b!6781167 () Bool)

(assert (=> b!6781167 (= e!4093515 (not lt!2444906))))

(declare-fun b!6781168 () Bool)

(declare-fun res!2771914 () Bool)

(assert (=> b!6781168 (=> res!2771914 e!4093513)))

(assert (=> b!6781168 (= res!2771914 (not (isEmpty!38345 (tail!12702 (_1!36881 lt!2444761)))))))

(declare-fun b!6781169 () Bool)

(assert (=> b!6781169 (= e!4093519 e!4093513)))

(declare-fun res!2771911 () Bool)

(assert (=> b!6781169 (=> res!2771911 e!4093513)))

(assert (=> b!6781169 (= res!2771911 call!615209)))

(declare-fun d!2130381 () Bool)

(assert (=> d!2130381 e!4093516))

(declare-fun c!1259743 () Bool)

(assert (=> d!2130381 (= c!1259743 ((_ is EmptyExpr!16603) (reg!16932 r!7292)))))

(assert (=> d!2130381 (= lt!2444906 e!4093517)))

(declare-fun c!1259742 () Bool)

(assert (=> d!2130381 (= c!1259742 (isEmpty!38345 (_1!36881 lt!2444761)))))

(assert (=> d!2130381 (validRegex!8339 (reg!16932 r!7292))))

(assert (=> d!2130381 (= (matchR!8786 (reg!16932 r!7292) (_1!36881 lt!2444761)) lt!2444906)))

(declare-fun b!6781162 () Bool)

(assert (=> b!6781162 (= e!4093518 (= (head!13617 (_1!36881 lt!2444761)) (c!1259507 (reg!16932 r!7292))))))

(assert (= (and d!2130381 c!1259742) b!6781157))

(assert (= (and d!2130381 (not c!1259742)) b!6781161))

(assert (= (and d!2130381 c!1259743) b!6781164))

(assert (= (and d!2130381 (not c!1259743)) b!6781165))

(assert (= (and b!6781165 c!1259741) b!6781167))

(assert (= (and b!6781165 (not c!1259741)) b!6781160))

(assert (= (and b!6781160 (not res!2771915)) b!6781156))

(assert (= (and b!6781156 res!2771912) b!6781166))

(assert (= (and b!6781166 res!2771913) b!6781163))

(assert (= (and b!6781163 res!2771909) b!6781162))

(assert (= (and b!6781156 (not res!2771916)) b!6781158))

(assert (= (and b!6781158 res!2771910) b!6781169))

(assert (= (and b!6781169 (not res!2771911)) b!6781168))

(assert (= (and b!6781168 (not res!2771914)) b!6781159))

(assert (= (or b!6781164 b!6781166 b!6781169) bm!615204))

(assert (=> d!2130381 m!7529724))

(assert (=> d!2130381 m!7529556))

(assert (=> b!6781157 m!7529520))

(assert (=> bm!615204 m!7529724))

(assert (=> b!6781168 m!7529732))

(assert (=> b!6781168 m!7529732))

(declare-fun m!7529798 () Bool)

(assert (=> b!6781168 m!7529798))

(assert (=> b!6781161 m!7529728))

(assert (=> b!6781161 m!7529728))

(declare-fun m!7529800 () Bool)

(assert (=> b!6781161 m!7529800))

(assert (=> b!6781161 m!7529732))

(assert (=> b!6781161 m!7529800))

(assert (=> b!6781161 m!7529732))

(declare-fun m!7529802 () Bool)

(assert (=> b!6781161 m!7529802))

(assert (=> b!6781162 m!7529728))

(assert (=> b!6781163 m!7529732))

(assert (=> b!6781163 m!7529732))

(assert (=> b!6781163 m!7529798))

(assert (=> b!6781159 m!7529728))

(assert (=> b!6780300 d!2130381))

(declare-fun b!6781183 () Bool)

(declare-fun e!4093522 () Bool)

(declare-fun tp!1857890 () Bool)

(declare-fun tp!1857887 () Bool)

(assert (=> b!6781183 (= e!4093522 (and tp!1857890 tp!1857887))))

(declare-fun b!6781182 () Bool)

(declare-fun tp!1857886 () Bool)

(assert (=> b!6781182 (= e!4093522 tp!1857886)))

(declare-fun b!6781181 () Bool)

(declare-fun tp!1857888 () Bool)

(declare-fun tp!1857889 () Bool)

(assert (=> b!6781181 (= e!4093522 (and tp!1857888 tp!1857889))))

(declare-fun b!6781180 () Bool)

(assert (=> b!6781180 (= e!4093522 tp_is_empty!42459)))

(assert (=> b!6780324 (= tp!1857816 e!4093522)))

(assert (= (and b!6780324 ((_ is ElementMatch!16603) (regOne!33718 r!7292))) b!6781180))

(assert (= (and b!6780324 ((_ is Concat!25448) (regOne!33718 r!7292))) b!6781181))

(assert (= (and b!6780324 ((_ is Star!16603) (regOne!33718 r!7292))) b!6781182))

(assert (= (and b!6780324 ((_ is Union!16603) (regOne!33718 r!7292))) b!6781183))

(declare-fun b!6781187 () Bool)

(declare-fun e!4093523 () Bool)

(declare-fun tp!1857895 () Bool)

(declare-fun tp!1857892 () Bool)

(assert (=> b!6781187 (= e!4093523 (and tp!1857895 tp!1857892))))

(declare-fun b!6781186 () Bool)

(declare-fun tp!1857891 () Bool)

(assert (=> b!6781186 (= e!4093523 tp!1857891)))

(declare-fun b!6781185 () Bool)

(declare-fun tp!1857893 () Bool)

(declare-fun tp!1857894 () Bool)

(assert (=> b!6781185 (= e!4093523 (and tp!1857893 tp!1857894))))

(declare-fun b!6781184 () Bool)

(assert (=> b!6781184 (= e!4093523 tp_is_empty!42459)))

(assert (=> b!6780324 (= tp!1857808 e!4093523)))

(assert (= (and b!6780324 ((_ is ElementMatch!16603) (regTwo!33718 r!7292))) b!6781184))

(assert (= (and b!6780324 ((_ is Concat!25448) (regTwo!33718 r!7292))) b!6781185))

(assert (= (and b!6780324 ((_ is Star!16603) (regTwo!33718 r!7292))) b!6781186))

(assert (= (and b!6780324 ((_ is Union!16603) (regTwo!33718 r!7292))) b!6781187))

(declare-fun b!6781192 () Bool)

(declare-fun e!4093526 () Bool)

(declare-fun tp!1857898 () Bool)

(assert (=> b!6781192 (= e!4093526 (and tp_is_empty!42459 tp!1857898))))

(assert (=> b!6780313 (= tp!1857817 e!4093526)))

(assert (= (and b!6780313 ((_ is Cons!65984) (t!379823 s!2326))) b!6781192))

(declare-fun b!6781196 () Bool)

(declare-fun e!4093527 () Bool)

(declare-fun tp!1857903 () Bool)

(declare-fun tp!1857900 () Bool)

(assert (=> b!6781196 (= e!4093527 (and tp!1857903 tp!1857900))))

(declare-fun b!6781195 () Bool)

(declare-fun tp!1857899 () Bool)

(assert (=> b!6781195 (= e!4093527 tp!1857899)))

(declare-fun b!6781194 () Bool)

(declare-fun tp!1857901 () Bool)

(declare-fun tp!1857902 () Bool)

(assert (=> b!6781194 (= e!4093527 (and tp!1857901 tp!1857902))))

(declare-fun b!6781193 () Bool)

(assert (=> b!6781193 (= e!4093527 tp_is_empty!42459)))

(assert (=> b!6780328 (= tp!1857814 e!4093527)))

(assert (= (and b!6780328 ((_ is ElementMatch!16603) (regOne!33719 r!7292))) b!6781193))

(assert (= (and b!6780328 ((_ is Concat!25448) (regOne!33719 r!7292))) b!6781194))

(assert (= (and b!6780328 ((_ is Star!16603) (regOne!33719 r!7292))) b!6781195))

(assert (= (and b!6780328 ((_ is Union!16603) (regOne!33719 r!7292))) b!6781196))

(declare-fun b!6781200 () Bool)

(declare-fun e!4093528 () Bool)

(declare-fun tp!1857908 () Bool)

(declare-fun tp!1857905 () Bool)

(assert (=> b!6781200 (= e!4093528 (and tp!1857908 tp!1857905))))

(declare-fun b!6781199 () Bool)

(declare-fun tp!1857904 () Bool)

(assert (=> b!6781199 (= e!4093528 tp!1857904)))

(declare-fun b!6781198 () Bool)

(declare-fun tp!1857906 () Bool)

(declare-fun tp!1857907 () Bool)

(assert (=> b!6781198 (= e!4093528 (and tp!1857906 tp!1857907))))

(declare-fun b!6781197 () Bool)

(assert (=> b!6781197 (= e!4093528 tp_is_empty!42459)))

(assert (=> b!6780328 (= tp!1857815 e!4093528)))

(assert (= (and b!6780328 ((_ is ElementMatch!16603) (regTwo!33719 r!7292))) b!6781197))

(assert (= (and b!6780328 ((_ is Concat!25448) (regTwo!33719 r!7292))) b!6781198))

(assert (= (and b!6780328 ((_ is Star!16603) (regTwo!33719 r!7292))) b!6781199))

(assert (= (and b!6780328 ((_ is Union!16603) (regTwo!33719 r!7292))) b!6781200))

(declare-fun b!6781205 () Bool)

(declare-fun e!4093531 () Bool)

(declare-fun tp!1857913 () Bool)

(declare-fun tp!1857914 () Bool)

(assert (=> b!6781205 (= e!4093531 (and tp!1857913 tp!1857914))))

(assert (=> b!6780317 (= tp!1857810 e!4093531)))

(assert (= (and b!6780317 ((_ is Cons!65985) (exprs!6487 (h!72434 zl!343)))) b!6781205))

(declare-fun b!6781213 () Bool)

(declare-fun e!4093537 () Bool)

(declare-fun tp!1857919 () Bool)

(assert (=> b!6781213 (= e!4093537 tp!1857919)))

(declare-fun b!6781212 () Bool)

(declare-fun tp!1857920 () Bool)

(declare-fun e!4093536 () Bool)

(assert (=> b!6781212 (= e!4093536 (and (inv!84754 (h!72434 (t!379825 zl!343))) e!4093537 tp!1857920))))

(assert (=> b!6780307 (= tp!1857811 e!4093536)))

(assert (= b!6781212 b!6781213))

(assert (= (and b!6780307 ((_ is Cons!65986) (t!379825 zl!343))) b!6781212))

(declare-fun m!7529804 () Bool)

(assert (=> b!6781212 m!7529804))

(declare-fun b!6781214 () Bool)

(declare-fun e!4093538 () Bool)

(declare-fun tp!1857921 () Bool)

(declare-fun tp!1857922 () Bool)

(assert (=> b!6781214 (= e!4093538 (and tp!1857921 tp!1857922))))

(assert (=> b!6780327 (= tp!1857813 e!4093538)))

(assert (= (and b!6780327 ((_ is Cons!65985) (exprs!6487 setElem!46377))) b!6781214))

(declare-fun condSetEmpty!46383 () Bool)

(assert (=> setNonEmpty!46377 (= condSetEmpty!46383 (= setRest!46377 ((as const (Array Context!11974 Bool)) false)))))

(declare-fun setRes!46383 () Bool)

(assert (=> setNonEmpty!46377 (= tp!1857812 setRes!46383)))

(declare-fun setIsEmpty!46383 () Bool)

(assert (=> setIsEmpty!46383 setRes!46383))

(declare-fun setElem!46383 () Context!11974)

(declare-fun tp!1857928 () Bool)

(declare-fun setNonEmpty!46383 () Bool)

(declare-fun e!4093541 () Bool)

(assert (=> setNonEmpty!46383 (= setRes!46383 (and tp!1857928 (inv!84754 setElem!46383) e!4093541))))

(declare-fun setRest!46383 () (InoxSet Context!11974))

(assert (=> setNonEmpty!46383 (= setRest!46377 ((_ map or) (store ((as const (Array Context!11974 Bool)) false) setElem!46383 true) setRest!46383))))

(declare-fun b!6781219 () Bool)

(declare-fun tp!1857927 () Bool)

(assert (=> b!6781219 (= e!4093541 tp!1857927)))

(assert (= (and setNonEmpty!46377 condSetEmpty!46383) setIsEmpty!46383))

(assert (= (and setNonEmpty!46377 (not condSetEmpty!46383)) setNonEmpty!46383))

(assert (= setNonEmpty!46383 b!6781219))

(declare-fun m!7529806 () Bool)

(assert (=> setNonEmpty!46383 m!7529806))

(declare-fun b!6781223 () Bool)

(declare-fun e!4093542 () Bool)

(declare-fun tp!1857933 () Bool)

(declare-fun tp!1857930 () Bool)

(assert (=> b!6781223 (= e!4093542 (and tp!1857933 tp!1857930))))

(declare-fun b!6781222 () Bool)

(declare-fun tp!1857929 () Bool)

(assert (=> b!6781222 (= e!4093542 tp!1857929)))

(declare-fun b!6781221 () Bool)

(declare-fun tp!1857931 () Bool)

(declare-fun tp!1857932 () Bool)

(assert (=> b!6781221 (= e!4093542 (and tp!1857931 tp!1857932))))

(declare-fun b!6781220 () Bool)

(assert (=> b!6781220 (= e!4093542 tp_is_empty!42459)))

(assert (=> b!6780325 (= tp!1857809 e!4093542)))

(assert (= (and b!6780325 ((_ is ElementMatch!16603) (reg!16932 r!7292))) b!6781220))

(assert (= (and b!6780325 ((_ is Concat!25448) (reg!16932 r!7292))) b!6781221))

(assert (= (and b!6780325 ((_ is Star!16603) (reg!16932 r!7292))) b!6781222))

(assert (= (and b!6780325 ((_ is Union!16603) (reg!16932 r!7292))) b!6781223))

(declare-fun b_lambda!255331 () Bool)

(assert (= b_lambda!255307 (or b!6780319 b_lambda!255331)))

(declare-fun bs!1805930 () Bool)

(declare-fun d!2130383 () Bool)

(assert (= bs!1805930 (and d!2130383 b!6780319)))

(assert (=> bs!1805930 (= (dynLambda!26330 lambda!381617 (h!72434 zl!343)) (derivationStepZipperUp!1757 (h!72434 zl!343) (h!72432 s!2326)))))

(assert (=> bs!1805930 m!7529156))

(assert (=> d!2130163 d!2130383))

(declare-fun b_lambda!255333 () Bool)

(assert (= b_lambda!255315 (or b!6780319 b_lambda!255333)))

(declare-fun bs!1805931 () Bool)

(declare-fun d!2130385 () Bool)

(assert (= bs!1805931 (and d!2130385 b!6780319)))

(assert (=> bs!1805931 (= (dynLambda!26330 lambda!381617 lt!2444756) (derivationStepZipperUp!1757 lt!2444756 (h!72432 s!2326)))))

(assert (=> bs!1805931 m!7529052))

(assert (=> d!2130273 d!2130385))

(declare-fun b_lambda!255335 () Bool)

(assert (= b_lambda!255327 (or b!6780319 b_lambda!255335)))

(declare-fun bs!1805932 () Bool)

(declare-fun d!2130387 () Bool)

(assert (= bs!1805932 (and d!2130387 b!6780319)))

(assert (=> bs!1805932 (= (dynLambda!26330 lambda!381617 lt!2444766) (derivationStepZipperUp!1757 lt!2444766 (h!72432 s!2326)))))

(assert (=> bs!1805932 m!7529126))

(assert (=> d!2130359 d!2130387))

(declare-fun b_lambda!255337 () Bool)

(assert (= b_lambda!255329 (or b!6780319 b_lambda!255337)))

(declare-fun bs!1805933 () Bool)

(declare-fun d!2130389 () Bool)

(assert (= bs!1805933 (and d!2130389 b!6780319)))

(assert (=> bs!1805933 (= (dynLambda!26330 lambda!381617 lt!2444770) (derivationStepZipperUp!1757 lt!2444770 (h!72432 s!2326)))))

(assert (=> bs!1805933 m!7529122))

(assert (=> d!2130363 d!2130389))

(check-sat (not b!6781038) (not b!6781221) (not d!2130379) (not b!6780465) (not bm!615201) (not b!6780423) (not d!2130355) (not bs!1805931) (not d!2130277) (not d!2130155) (not d!2130261) (not b!6781120) (not b!6780771) (not d!2130351) (not b!6781130) (not b!6781041) (not b!6780430) (not b!6781045) (not b!6781121) (not bm!615120) (not b!6781200) (not bm!615180) (not b!6781136) (not b!6781182) (not b!6781154) (not b!6781147) (not d!2130313) (not b!6781161) (not d!2130279) (not d!2130157) (not b!6780778) (not b!6780851) (not d!2130335) (not bm!615200) (not b!6780402) (not d!2130269) (not d!2130353) (not d!2130361) (not bm!615203) (not b!6780379) (not b!6780398) (not b!6780381) (not b!6780375) (not d!2130345) (not setNonEmpty!46383) (not d!2130339) (not b!6781187) (not bm!615121) (not bm!615188) (not b!6780377) (not d!2130225) (not d!2130189) (not d!2130165) (not bm!615204) (not b!6781119) (not b!6781149) (not b!6780378) (not b!6781168) (not b!6780549) (not b!6781163) (not b!6781222) (not d!2130319) (not bm!615189) (not d!2130285) (not b!6780888) (not b!6780849) (not b!6780861) (not bm!615170) (not b_lambda!255337) (not d!2130159) (not b!6781195) (not b!6780380) (not b!6781145) (not b!6781214) (not b!6780658) (not d!2130247) (not b!6780835) (not bm!615199) (not b!6781043) (not b!6780552) (not b!6780800) (not d!2130375) (not b!6780767) (not b_lambda!255335) (not b!6780791) (not b_lambda!255331) (not b!6781126) (not b!6781143) (not d!2130195) (not b!6780845) (not b!6781199) (not d!2130183) (not d!2130163) (not b!6780373) (not b!6780546) (not b!6781213) (not b!6781223) (not d!2130243) (not d!2130363) (not b!6780550) (not b_lambda!255333) (not bm!615175) (not b!6781157) (not b!6780789) (not bs!1805930) (not bm!615153) (not bs!1805933) (not b!6780350) (not b!6781205) (not b!6780772) (not b!6781044) (not b!6780543) (not d!2130191) (not b!6780793) (not bm!615154) (not b!6780349) (not d!2130369) (not b!6780547) (not b!6781183) (not b!6781192) (not bm!615202) (not d!2130193) (not b!6781181) (not b!6781212) (not b!6781186) (not b!6780795) (not d!2130359) (not b!6781185) (not b!6780794) (not d!2130257) (not d!2130287) (not d!2130381) (not bm!615177) (not d!2130273) (not bm!615173) (not b!6780548) (not d!2130377) (not b!6781148) (not bm!615168) (not b!6781194) (not d!2130357) (not b!6780429) (not b!6781159) (not b!6780653) (not b!6781118) (not d!2130181) (not d!2130245) (not b!6781198) (not b!6780769) (not b!6781162) (not b!6781196) (not b!6781125) (not b!6780865) (not d!2130169) (not bm!615176) (not d!2130151) (not b!6780422) (not b!6781117) (not b!6780773) (not b!6781039) (not bm!615099) tp_is_empty!42459 (not b!6781219) (not b!6781141) (not d!2130371) (not bs!1805932) (not b!6780386) (not bm!615169))
(check-sat)
(get-model)

(assert (=> bm!615153 d!2130317))

(declare-fun d!2130465 () Bool)

(assert (=> d!2130465 (= (isEmptyExpr!1961 lt!2444816) ((_ is EmptyExpr!16603) lt!2444816))))

(assert (=> b!6780547 d!2130465))

(declare-fun d!2130469 () Bool)

(assert (=> d!2130469 (= (isEmpty!38345 (_1!36881 lt!2444761)) ((_ is Nil!65984) (_1!36881 lt!2444761)))))

(assert (=> bm!615204 d!2130469))

(assert (=> bs!1805932 d!2130365))

(assert (=> bm!615121 d!2130317))

(declare-fun d!2130471 () Bool)

(declare-fun e!4093607 () Bool)

(assert (=> d!2130471 e!4093607))

(declare-fun res!2771949 () Bool)

(assert (=> d!2130471 (=> (not res!2771949) (not e!4093607))))

(declare-fun lt!2444916 () List!66108)

(assert (=> d!2130471 (= res!2771949 (= (content!12850 lt!2444916) ((_ map or) (content!12850 (t!379823 (_1!36881 lt!2444761))) (content!12850 (_2!36881 lt!2444761)))))))

(declare-fun e!4093608 () List!66108)

(assert (=> d!2130471 (= lt!2444916 e!4093608)))

(declare-fun c!1259784 () Bool)

(assert (=> d!2130471 (= c!1259784 ((_ is Nil!65984) (t!379823 (_1!36881 lt!2444761))))))

(assert (=> d!2130471 (= (++!14757 (t!379823 (_1!36881 lt!2444761)) (_2!36881 lt!2444761)) lt!2444916)))

(declare-fun b!6781334 () Bool)

(declare-fun res!2771950 () Bool)

(assert (=> b!6781334 (=> (not res!2771950) (not e!4093607))))

(assert (=> b!6781334 (= res!2771950 (= (size!40636 lt!2444916) (+ (size!40636 (t!379823 (_1!36881 lt!2444761))) (size!40636 (_2!36881 lt!2444761)))))))

(declare-fun b!6781335 () Bool)

(assert (=> b!6781335 (= e!4093607 (or (not (= (_2!36881 lt!2444761) Nil!65984)) (= lt!2444916 (t!379823 (_1!36881 lt!2444761)))))))

(declare-fun b!6781332 () Bool)

(assert (=> b!6781332 (= e!4093608 (_2!36881 lt!2444761))))

(declare-fun b!6781333 () Bool)

(assert (=> b!6781333 (= e!4093608 (Cons!65984 (h!72432 (t!379823 (_1!36881 lt!2444761))) (++!14757 (t!379823 (t!379823 (_1!36881 lt!2444761))) (_2!36881 lt!2444761))))))

(assert (= (and d!2130471 c!1259784) b!6781332))

(assert (= (and d!2130471 (not c!1259784)) b!6781333))

(assert (= (and d!2130471 res!2771949) b!6781334))

(assert (= (and b!6781334 res!2771950) b!6781335))

(declare-fun m!7529942 () Bool)

(assert (=> d!2130471 m!7529942))

(declare-fun m!7529944 () Bool)

(assert (=> d!2130471 m!7529944))

(assert (=> d!2130471 m!7529168))

(declare-fun m!7529946 () Bool)

(assert (=> b!6781334 m!7529946))

(declare-fun m!7529948 () Bool)

(assert (=> b!6781334 m!7529948))

(assert (=> b!6781334 m!7529174))

(declare-fun m!7529950 () Bool)

(assert (=> b!6781333 m!7529950))

(assert (=> b!6780349 d!2130471))

(declare-fun d!2130475 () Bool)

(declare-fun res!2771955 () Bool)

(declare-fun e!4093613 () Bool)

(assert (=> d!2130475 (=> res!2771955 e!4093613)))

(assert (=> d!2130475 (= res!2771955 ((_ is Nil!65985) lt!2444797))))

(assert (=> d!2130475 (= (forall!15794 lt!2444797 lambda!381623) e!4093613)))

(declare-fun b!6781340 () Bool)

(declare-fun e!4093614 () Bool)

(assert (=> b!6781340 (= e!4093613 e!4093614)))

(declare-fun res!2771956 () Bool)

(assert (=> b!6781340 (=> (not res!2771956) (not e!4093614))))

(declare-fun dynLambda!26331 (Int Regex!16603) Bool)

(assert (=> b!6781340 (= res!2771956 (dynLambda!26331 lambda!381623 (h!72433 lt!2444797)))))

(declare-fun b!6781341 () Bool)

(assert (=> b!6781341 (= e!4093614 (forall!15794 (t!379824 lt!2444797) lambda!381623))))

(assert (= (and d!2130475 (not res!2771955)) b!6781340))

(assert (= (and b!6781340 res!2771956) b!6781341))

(declare-fun b_lambda!255345 () Bool)

(assert (=> (not b_lambda!255345) (not b!6781340)))

(declare-fun m!7529956 () Bool)

(assert (=> b!6781340 m!7529956))

(declare-fun m!7529958 () Bool)

(assert (=> b!6781341 m!7529958))

(assert (=> d!2130157 d!2130475))

(declare-fun d!2130479 () Bool)

(assert (=> d!2130479 (= (isDefined!13193 lt!2444887) (not (isEmpty!38350 lt!2444887)))))

(declare-fun bs!1805958 () Bool)

(assert (= bs!1805958 d!2130479))

(declare-fun m!7529960 () Bool)

(assert (=> bs!1805958 m!7529960))

(assert (=> b!6781039 d!2130479))

(declare-fun d!2130481 () Bool)

(assert (=> d!2130481 (= (isConcat!1484 lt!2444816) ((_ is Concat!25448) lt!2444816))))

(assert (=> b!6780543 d!2130481))

(assert (=> b!6780386 d!2130195))

(declare-fun bs!1805959 () Bool)

(declare-fun d!2130483 () Bool)

(assert (= bs!1805959 (and d!2130483 d!2130353)))

(declare-fun lambda!381708 () Int)

(assert (=> bs!1805959 (= lambda!381708 lambda!381697)))

(declare-fun bs!1805960 () Bool)

(assert (= bs!1805960 (and d!2130483 d!2130379)))

(assert (=> bs!1805960 (= lambda!381708 lambda!381701)))

(declare-fun bs!1805961 () Bool)

(assert (= bs!1805961 (and d!2130483 d!2130155)))

(assert (=> bs!1805961 (= lambda!381708 lambda!381620)))

(declare-fun bs!1805962 () Bool)

(assert (= bs!1805962 (and d!2130483 d!2130261)))

(assert (=> bs!1805962 (= lambda!381708 lambda!381668)))

(declare-fun bs!1805963 () Bool)

(assert (= bs!1805963 (and d!2130483 d!2130195)))

(assert (=> bs!1805963 (= lambda!381708 lambda!381638)))

(declare-fun bs!1805964 () Bool)

(assert (= bs!1805964 (and d!2130483 d!2130157)))

(assert (=> bs!1805964 (= lambda!381708 lambda!381623)))

(declare-fun lt!2444923 () List!66109)

(assert (=> d!2130483 (forall!15794 lt!2444923 lambda!381708)))

(declare-fun e!4093620 () List!66109)

(assert (=> d!2130483 (= lt!2444923 e!4093620)))

(declare-fun c!1259787 () Bool)

(assert (=> d!2130483 (= c!1259787 ((_ is Cons!65986) (t!379825 zl!343)))))

(assert (=> d!2130483 (= (unfocusZipperList!2024 (t!379825 zl!343)) lt!2444923)))

(declare-fun b!6781351 () Bool)

(assert (=> b!6781351 (= e!4093620 (Cons!65985 (generalisedConcat!2200 (exprs!6487 (h!72434 (t!379825 zl!343)))) (unfocusZipperList!2024 (t!379825 (t!379825 zl!343)))))))

(declare-fun b!6781352 () Bool)

(assert (=> b!6781352 (= e!4093620 Nil!65985)))

(assert (= (and d!2130483 c!1259787) b!6781351))

(assert (= (and d!2130483 (not c!1259787)) b!6781352))

(declare-fun m!7529976 () Bool)

(assert (=> d!2130483 m!7529976))

(declare-fun m!7529980 () Bool)

(assert (=> b!6781351 m!7529980))

(declare-fun m!7529982 () Bool)

(assert (=> b!6781351 m!7529982))

(assert (=> b!6780386 d!2130483))

(declare-fun b!6781353 () Bool)

(declare-fun e!4093626 () (InoxSet Context!11974))

(declare-fun e!4093624 () (InoxSet Context!11974))

(assert (=> b!6781353 (= e!4093626 e!4093624)))

(declare-fun c!1259788 () Bool)

(assert (=> b!6781353 (= c!1259788 ((_ is Concat!25448) (h!72433 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985))))))))

(declare-fun bm!615228 () Bool)

(declare-fun call!615237 () (InoxSet Context!11974))

(declare-fun call!615233 () (InoxSet Context!11974))

(assert (=> bm!615228 (= call!615237 call!615233)))

(declare-fun b!6781354 () Bool)

(declare-fun e!4093625 () Bool)

(assert (=> b!6781354 (= e!4093625 (nullable!6582 (regOne!33718 (h!72433 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985)))))))))

(declare-fun b!6781355 () Bool)

(declare-fun call!615234 () (InoxSet Context!11974))

(assert (=> b!6781355 (= e!4093626 ((_ map or) call!615234 call!615237))))

(declare-fun b!6781356 () Bool)

(declare-fun e!4093621 () (InoxSet Context!11974))

(assert (=> b!6781356 (= e!4093621 ((_ map or) call!615234 call!615233))))

(declare-fun b!6781357 () Bool)

(declare-fun e!4093623 () (InoxSet Context!11974))

(assert (=> b!6781357 (= e!4093623 (store ((as const (Array Context!11974 Bool)) false) (Context!11975 (t!379824 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985))))) true))))

(declare-fun bm!615229 () Bool)

(declare-fun c!1259789 () Bool)

(declare-fun call!615236 () List!66109)

(assert (=> bm!615229 (= call!615236 ($colon$colon!2412 (exprs!6487 (Context!11975 (t!379824 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985)))))) (ite (or c!1259789 c!1259788) (regTwo!33718 (h!72433 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985))))) (h!72433 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985)))))))))

(declare-fun b!6781358 () Bool)

(assert (=> b!6781358 (= c!1259789 e!4093625)))

(declare-fun res!2771962 () Bool)

(assert (=> b!6781358 (=> (not res!2771962) (not e!4093625))))

(assert (=> b!6781358 (= res!2771962 ((_ is Concat!25448) (h!72433 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985))))))))

(assert (=> b!6781358 (= e!4093621 e!4093626)))

(declare-fun c!1259790 () Bool)

(declare-fun bm!615230 () Bool)

(declare-fun call!615238 () List!66109)

(assert (=> bm!615230 (= call!615233 (derivationStepZipperDown!1831 (ite c!1259790 (regTwo!33719 (h!72433 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985))))) (ite c!1259789 (regTwo!33718 (h!72433 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985))))) (ite c!1259788 (regOne!33718 (h!72433 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985))))) (reg!16932 (h!72433 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985)))))))) (ite (or c!1259790 c!1259789) (Context!11975 (t!379824 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985))))) (Context!11975 call!615238)) (h!72432 s!2326)))))

(declare-fun bm!615231 () Bool)

(assert (=> bm!615231 (= call!615234 (derivationStepZipperDown!1831 (ite c!1259790 (regOne!33719 (h!72433 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985))))) (regOne!33718 (h!72433 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985)))))) (ite c!1259790 (Context!11975 (t!379824 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985))))) (Context!11975 call!615236)) (h!72432 s!2326)))))

(declare-fun b!6781359 () Bool)

(declare-fun call!615235 () (InoxSet Context!11974))

(assert (=> b!6781359 (= e!4093624 call!615235)))

(declare-fun d!2130485 () Bool)

(declare-fun c!1259791 () Bool)

(assert (=> d!2130485 (= c!1259791 (and ((_ is ElementMatch!16603) (h!72433 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985))))) (= (c!1259507 (h!72433 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985))))) (h!72432 s!2326))))))

(assert (=> d!2130485 (= (derivationStepZipperDown!1831 (h!72433 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985)))) (Context!11975 (t!379824 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985))))) (h!72432 s!2326)) e!4093623)))

(declare-fun bm!615232 () Bool)

(assert (=> bm!615232 (= call!615235 call!615237)))

(declare-fun b!6781360 () Bool)

(declare-fun e!4093622 () (InoxSet Context!11974))

(assert (=> b!6781360 (= e!4093622 ((as const (Array Context!11974 Bool)) false))))

(declare-fun b!6781361 () Bool)

(declare-fun c!1259792 () Bool)

(assert (=> b!6781361 (= c!1259792 ((_ is Star!16603) (h!72433 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985))))))))

(assert (=> b!6781361 (= e!4093624 e!4093622)))

(declare-fun bm!615233 () Bool)

(assert (=> bm!615233 (= call!615238 call!615236)))

(declare-fun b!6781362 () Bool)

(assert (=> b!6781362 (= e!4093623 e!4093621)))

(assert (=> b!6781362 (= c!1259790 ((_ is Union!16603) (h!72433 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985))))))))

(declare-fun b!6781363 () Bool)

(assert (=> b!6781363 (= e!4093622 call!615235)))

(assert (= (and d!2130485 c!1259791) b!6781357))

(assert (= (and d!2130485 (not c!1259791)) b!6781362))

(assert (= (and b!6781362 c!1259790) b!6781356))

(assert (= (and b!6781362 (not c!1259790)) b!6781358))

(assert (= (and b!6781358 res!2771962) b!6781354))

(assert (= (and b!6781358 c!1259789) b!6781355))

(assert (= (and b!6781358 (not c!1259789)) b!6781353))

(assert (= (and b!6781353 c!1259788) b!6781359))

(assert (= (and b!6781353 (not c!1259788)) b!6781361))

(assert (= (and b!6781361 c!1259792) b!6781363))

(assert (= (and b!6781361 (not c!1259792)) b!6781360))

(assert (= (or b!6781359 b!6781363) bm!615233))

(assert (= (or b!6781359 b!6781363) bm!615232))

(assert (= (or b!6781355 bm!615233) bm!615229))

(assert (= (or b!6781355 bm!615232) bm!615228))

(assert (= (or b!6781356 bm!615228) bm!615230))

(assert (= (or b!6781356 b!6781355) bm!615231))

(declare-fun m!7529998 () Bool)

(assert (=> b!6781354 m!7529998))

(declare-fun m!7530000 () Bool)

(assert (=> bm!615229 m!7530000))

(declare-fun m!7530004 () Bool)

(assert (=> bm!615231 m!7530004))

(declare-fun m!7530006 () Bool)

(assert (=> b!6781357 m!7530006))

(declare-fun m!7530008 () Bool)

(assert (=> bm!615230 m!7530008))

(assert (=> bm!615173 d!2130485))

(declare-fun d!2130495 () Bool)

(declare-fun lambda!381711 () Int)

(declare-fun exists!2724 ((InoxSet Context!11974) Int) Bool)

(assert (=> d!2130495 (= (nullableZipper!2309 (derivationStepZipper!2547 lt!2444757 (h!72432 s!2326))) (exists!2724 (derivationStepZipper!2547 lt!2444757 (h!72432 s!2326)) lambda!381711))))

(declare-fun bs!1805966 () Bool)

(assert (= bs!1805966 d!2130495))

(assert (=> bs!1805966 m!7529112))

(declare-fun m!7530022 () Bool)

(assert (=> bs!1805966 m!7530022))

(assert (=> b!6780429 d!2130495))

(declare-fun d!2130503 () Bool)

(assert (=> d!2130503 (= (isEmpty!38347 (t!379824 (unfocusZipperList!2024 zl!343))) ((_ is Nil!65985) (t!379824 (unfocusZipperList!2024 zl!343))))))

(assert (=> b!6780379 d!2130503))

(declare-fun b!6781386 () Bool)

(declare-fun e!4093647 () (InoxSet Context!11974))

(declare-fun e!4093645 () (InoxSet Context!11974))

(assert (=> b!6781386 (= e!4093647 e!4093645)))

(declare-fun c!1259802 () Bool)

(assert (=> b!6781386 (= c!1259802 ((_ is Concat!25448) (h!72433 (exprs!6487 lt!2444756))))))

(declare-fun bm!615243 () Bool)

(declare-fun call!615252 () (InoxSet Context!11974))

(declare-fun call!615248 () (InoxSet Context!11974))

(assert (=> bm!615243 (= call!615252 call!615248)))

(declare-fun b!6781387 () Bool)

(declare-fun e!4093646 () Bool)

(assert (=> b!6781387 (= e!4093646 (nullable!6582 (regOne!33718 (h!72433 (exprs!6487 lt!2444756)))))))

(declare-fun b!6781388 () Bool)

(declare-fun call!615249 () (InoxSet Context!11974))

(assert (=> b!6781388 (= e!4093647 ((_ map or) call!615249 call!615252))))

(declare-fun b!6781389 () Bool)

(declare-fun e!4093642 () (InoxSet Context!11974))

(assert (=> b!6781389 (= e!4093642 ((_ map or) call!615249 call!615248))))

(declare-fun b!6781390 () Bool)

(declare-fun e!4093644 () (InoxSet Context!11974))

(assert (=> b!6781390 (= e!4093644 (store ((as const (Array Context!11974 Bool)) false) (Context!11975 (t!379824 (exprs!6487 lt!2444756))) true))))

(declare-fun call!615251 () List!66109)

(declare-fun c!1259803 () Bool)

(declare-fun bm!615244 () Bool)

(assert (=> bm!615244 (= call!615251 ($colon$colon!2412 (exprs!6487 (Context!11975 (t!379824 (exprs!6487 lt!2444756)))) (ite (or c!1259803 c!1259802) (regTwo!33718 (h!72433 (exprs!6487 lt!2444756))) (h!72433 (exprs!6487 lt!2444756)))))))

(declare-fun b!6781391 () Bool)

(assert (=> b!6781391 (= c!1259803 e!4093646)))

(declare-fun res!2771971 () Bool)

(assert (=> b!6781391 (=> (not res!2771971) (not e!4093646))))

(assert (=> b!6781391 (= res!2771971 ((_ is Concat!25448) (h!72433 (exprs!6487 lt!2444756))))))

(assert (=> b!6781391 (= e!4093642 e!4093647)))

(declare-fun bm!615245 () Bool)

(declare-fun call!615253 () List!66109)

(declare-fun c!1259804 () Bool)

(assert (=> bm!615245 (= call!615248 (derivationStepZipperDown!1831 (ite c!1259804 (regTwo!33719 (h!72433 (exprs!6487 lt!2444756))) (ite c!1259803 (regTwo!33718 (h!72433 (exprs!6487 lt!2444756))) (ite c!1259802 (regOne!33718 (h!72433 (exprs!6487 lt!2444756))) (reg!16932 (h!72433 (exprs!6487 lt!2444756)))))) (ite (or c!1259804 c!1259803) (Context!11975 (t!379824 (exprs!6487 lt!2444756))) (Context!11975 call!615253)) (h!72432 s!2326)))))

(declare-fun bm!615246 () Bool)

(assert (=> bm!615246 (= call!615249 (derivationStepZipperDown!1831 (ite c!1259804 (regOne!33719 (h!72433 (exprs!6487 lt!2444756))) (regOne!33718 (h!72433 (exprs!6487 lt!2444756)))) (ite c!1259804 (Context!11975 (t!379824 (exprs!6487 lt!2444756))) (Context!11975 call!615251)) (h!72432 s!2326)))))

(declare-fun b!6781392 () Bool)

(declare-fun call!615250 () (InoxSet Context!11974))

(assert (=> b!6781392 (= e!4093645 call!615250)))

(declare-fun d!2130505 () Bool)

(declare-fun c!1259805 () Bool)

(assert (=> d!2130505 (= c!1259805 (and ((_ is ElementMatch!16603) (h!72433 (exprs!6487 lt!2444756))) (= (c!1259507 (h!72433 (exprs!6487 lt!2444756))) (h!72432 s!2326))))))

(assert (=> d!2130505 (= (derivationStepZipperDown!1831 (h!72433 (exprs!6487 lt!2444756)) (Context!11975 (t!379824 (exprs!6487 lt!2444756))) (h!72432 s!2326)) e!4093644)))

(declare-fun bm!615247 () Bool)

(assert (=> bm!615247 (= call!615250 call!615252)))

(declare-fun b!6781393 () Bool)

(declare-fun e!4093643 () (InoxSet Context!11974))

(assert (=> b!6781393 (= e!4093643 ((as const (Array Context!11974 Bool)) false))))

(declare-fun b!6781394 () Bool)

(declare-fun c!1259806 () Bool)

(assert (=> b!6781394 (= c!1259806 ((_ is Star!16603) (h!72433 (exprs!6487 lt!2444756))))))

(assert (=> b!6781394 (= e!4093645 e!4093643)))

(declare-fun bm!615248 () Bool)

(assert (=> bm!615248 (= call!615253 call!615251)))

(declare-fun b!6781395 () Bool)

(assert (=> b!6781395 (= e!4093644 e!4093642)))

(assert (=> b!6781395 (= c!1259804 ((_ is Union!16603) (h!72433 (exprs!6487 lt!2444756))))))

(declare-fun b!6781396 () Bool)

(assert (=> b!6781396 (= e!4093643 call!615250)))

(assert (= (and d!2130505 c!1259805) b!6781390))

(assert (= (and d!2130505 (not c!1259805)) b!6781395))

(assert (= (and b!6781395 c!1259804) b!6781389))

(assert (= (and b!6781395 (not c!1259804)) b!6781391))

(assert (= (and b!6781391 res!2771971) b!6781387))

(assert (= (and b!6781391 c!1259803) b!6781388))

(assert (= (and b!6781391 (not c!1259803)) b!6781386))

(assert (= (and b!6781386 c!1259802) b!6781392))

(assert (= (and b!6781386 (not c!1259802)) b!6781394))

(assert (= (and b!6781394 c!1259806) b!6781396))

(assert (= (and b!6781394 (not c!1259806)) b!6781393))

(assert (= (or b!6781392 b!6781396) bm!615248))

(assert (= (or b!6781392 b!6781396) bm!615247))

(assert (= (or b!6781388 bm!615248) bm!615244))

(assert (= (or b!6781388 bm!615247) bm!615243))

(assert (= (or b!6781389 bm!615243) bm!615245))

(assert (= (or b!6781389 b!6781388) bm!615246))

(declare-fun m!7530024 () Bool)

(assert (=> b!6781387 m!7530024))

(declare-fun m!7530026 () Bool)

(assert (=> bm!615244 m!7530026))

(declare-fun m!7530028 () Bool)

(assert (=> bm!615246 m!7530028))

(declare-fun m!7530030 () Bool)

(assert (=> b!6781390 m!7530030))

(declare-fun m!7530032 () Bool)

(assert (=> bm!615245 m!7530032))

(assert (=> bm!615180 d!2130505))

(assert (=> d!2130359 d!2130369))

(declare-fun d!2130507 () Bool)

(assert (=> d!2130507 (= (flatMap!2084 lt!2444760 lambda!381617) (dynLambda!26330 lambda!381617 lt!2444766))))

(assert (=> d!2130507 true))

(declare-fun _$13!4188 () Unit!159897)

(assert (=> d!2130507 (= (choose!50493 lt!2444760 lt!2444766 lambda!381617) _$13!4188)))

(declare-fun b_lambda!255349 () Bool)

(assert (=> (not b_lambda!255349) (not d!2130507)))

(declare-fun bs!1805967 () Bool)

(assert (= bs!1805967 d!2130507))

(assert (=> bs!1805967 m!7529124))

(assert (=> bs!1805967 m!7529750))

(assert (=> d!2130359 d!2130507))

(declare-fun b!6781401 () Bool)

(declare-fun e!4093655 () (InoxSet Context!11974))

(declare-fun e!4093653 () (InoxSet Context!11974))

(assert (=> b!6781401 (= e!4093655 e!4093653)))

(declare-fun c!1259807 () Bool)

(assert (=> b!6781401 (= c!1259807 ((_ is Concat!25448) (h!72433 (exprs!6487 (h!72434 zl!343)))))))

(declare-fun bm!615249 () Bool)

(declare-fun call!615258 () (InoxSet Context!11974))

(declare-fun call!615254 () (InoxSet Context!11974))

(assert (=> bm!615249 (= call!615258 call!615254)))

(declare-fun b!6781402 () Bool)

(declare-fun e!4093654 () Bool)

(assert (=> b!6781402 (= e!4093654 (nullable!6582 (regOne!33718 (h!72433 (exprs!6487 (h!72434 zl!343))))))))

(declare-fun b!6781403 () Bool)

(declare-fun call!615255 () (InoxSet Context!11974))

(assert (=> b!6781403 (= e!4093655 ((_ map or) call!615255 call!615258))))

(declare-fun b!6781404 () Bool)

(declare-fun e!4093650 () (InoxSet Context!11974))

(assert (=> b!6781404 (= e!4093650 ((_ map or) call!615255 call!615254))))

(declare-fun b!6781405 () Bool)

(declare-fun e!4093652 () (InoxSet Context!11974))

(assert (=> b!6781405 (= e!4093652 (store ((as const (Array Context!11974 Bool)) false) (Context!11975 (t!379824 (exprs!6487 (h!72434 zl!343)))) true))))

(declare-fun call!615257 () List!66109)

(declare-fun bm!615250 () Bool)

(declare-fun c!1259808 () Bool)

(assert (=> bm!615250 (= call!615257 ($colon$colon!2412 (exprs!6487 (Context!11975 (t!379824 (exprs!6487 (h!72434 zl!343))))) (ite (or c!1259808 c!1259807) (regTwo!33718 (h!72433 (exprs!6487 (h!72434 zl!343)))) (h!72433 (exprs!6487 (h!72434 zl!343))))))))

(declare-fun b!6781406 () Bool)

(assert (=> b!6781406 (= c!1259808 e!4093654)))

(declare-fun res!2771976 () Bool)

(assert (=> b!6781406 (=> (not res!2771976) (not e!4093654))))

(assert (=> b!6781406 (= res!2771976 ((_ is Concat!25448) (h!72433 (exprs!6487 (h!72434 zl!343)))))))

(assert (=> b!6781406 (= e!4093650 e!4093655)))

(declare-fun bm!615251 () Bool)

(declare-fun call!615259 () List!66109)

(declare-fun c!1259809 () Bool)

(assert (=> bm!615251 (= call!615254 (derivationStepZipperDown!1831 (ite c!1259809 (regTwo!33719 (h!72433 (exprs!6487 (h!72434 zl!343)))) (ite c!1259808 (regTwo!33718 (h!72433 (exprs!6487 (h!72434 zl!343)))) (ite c!1259807 (regOne!33718 (h!72433 (exprs!6487 (h!72434 zl!343)))) (reg!16932 (h!72433 (exprs!6487 (h!72434 zl!343))))))) (ite (or c!1259809 c!1259808) (Context!11975 (t!379824 (exprs!6487 (h!72434 zl!343)))) (Context!11975 call!615259)) (h!72432 s!2326)))))

(declare-fun bm!615252 () Bool)

(assert (=> bm!615252 (= call!615255 (derivationStepZipperDown!1831 (ite c!1259809 (regOne!33719 (h!72433 (exprs!6487 (h!72434 zl!343)))) (regOne!33718 (h!72433 (exprs!6487 (h!72434 zl!343))))) (ite c!1259809 (Context!11975 (t!379824 (exprs!6487 (h!72434 zl!343)))) (Context!11975 call!615257)) (h!72432 s!2326)))))

(declare-fun b!6781407 () Bool)

(declare-fun call!615256 () (InoxSet Context!11974))

(assert (=> b!6781407 (= e!4093653 call!615256)))

(declare-fun d!2130509 () Bool)

(declare-fun c!1259810 () Bool)

(assert (=> d!2130509 (= c!1259810 (and ((_ is ElementMatch!16603) (h!72433 (exprs!6487 (h!72434 zl!343)))) (= (c!1259507 (h!72433 (exprs!6487 (h!72434 zl!343)))) (h!72432 s!2326))))))

(assert (=> d!2130509 (= (derivationStepZipperDown!1831 (h!72433 (exprs!6487 (h!72434 zl!343))) (Context!11975 (t!379824 (exprs!6487 (h!72434 zl!343)))) (h!72432 s!2326)) e!4093652)))

(declare-fun bm!615253 () Bool)

(assert (=> bm!615253 (= call!615256 call!615258)))

(declare-fun b!6781408 () Bool)

(declare-fun e!4093651 () (InoxSet Context!11974))

(assert (=> b!6781408 (= e!4093651 ((as const (Array Context!11974 Bool)) false))))

(declare-fun b!6781409 () Bool)

(declare-fun c!1259811 () Bool)

(assert (=> b!6781409 (= c!1259811 ((_ is Star!16603) (h!72433 (exprs!6487 (h!72434 zl!343)))))))

(assert (=> b!6781409 (= e!4093653 e!4093651)))

(declare-fun bm!615254 () Bool)

(assert (=> bm!615254 (= call!615259 call!615257)))

(declare-fun b!6781410 () Bool)

(assert (=> b!6781410 (= e!4093652 e!4093650)))

(assert (=> b!6781410 (= c!1259809 ((_ is Union!16603) (h!72433 (exprs!6487 (h!72434 zl!343)))))))

(declare-fun b!6781411 () Bool)

(assert (=> b!6781411 (= e!4093651 call!615256)))

(assert (= (and d!2130509 c!1259810) b!6781405))

(assert (= (and d!2130509 (not c!1259810)) b!6781410))

(assert (= (and b!6781410 c!1259809) b!6781404))

(assert (= (and b!6781410 (not c!1259809)) b!6781406))

(assert (= (and b!6781406 res!2771976) b!6781402))

(assert (= (and b!6781406 c!1259808) b!6781403))

(assert (= (and b!6781406 (not c!1259808)) b!6781401))

(assert (= (and b!6781401 c!1259807) b!6781407))

(assert (= (and b!6781401 (not c!1259807)) b!6781409))

(assert (= (and b!6781409 c!1259811) b!6781411))

(assert (= (and b!6781409 (not c!1259811)) b!6781408))

(assert (= (or b!6781407 b!6781411) bm!615254))

(assert (= (or b!6781407 b!6781411) bm!615253))

(assert (= (or b!6781403 bm!615254) bm!615250))

(assert (= (or b!6781403 bm!615253) bm!615249))

(assert (= (or b!6781404 bm!615249) bm!615251))

(assert (= (or b!6781404 b!6781403) bm!615252))

(declare-fun m!7530034 () Bool)

(assert (=> b!6781402 m!7530034))

(declare-fun m!7530036 () Bool)

(assert (=> bm!615250 m!7530036))

(declare-fun m!7530038 () Bool)

(assert (=> bm!615252 m!7530038))

(declare-fun m!7530040 () Bool)

(assert (=> b!6781405 m!7530040))

(declare-fun m!7530042 () Bool)

(assert (=> bm!615251 m!7530042))

(assert (=> bm!615099 d!2130509))

(declare-fun d!2130511 () Bool)

(declare-fun res!2771977 () Bool)

(declare-fun e!4093656 () Bool)

(assert (=> d!2130511 (=> res!2771977 e!4093656)))

(assert (=> d!2130511 (= res!2771977 ((_ is Nil!65985) (exprs!6487 lt!2444770)))))

(assert (=> d!2130511 (= (forall!15794 (exprs!6487 lt!2444770) lambda!381697) e!4093656)))

(declare-fun b!6781412 () Bool)

(declare-fun e!4093657 () Bool)

(assert (=> b!6781412 (= e!4093656 e!4093657)))

(declare-fun res!2771978 () Bool)

(assert (=> b!6781412 (=> (not res!2771978) (not e!4093657))))

(assert (=> b!6781412 (= res!2771978 (dynLambda!26331 lambda!381697 (h!72433 (exprs!6487 lt!2444770))))))

(declare-fun b!6781413 () Bool)

(assert (=> b!6781413 (= e!4093657 (forall!15794 (t!379824 (exprs!6487 lt!2444770)) lambda!381697))))

(assert (= (and d!2130511 (not res!2771977)) b!6781412))

(assert (= (and b!6781412 res!2771978) b!6781413))

(declare-fun b_lambda!255351 () Bool)

(assert (=> (not b_lambda!255351) (not b!6781412)))

(declare-fun m!7530044 () Bool)

(assert (=> b!6781412 m!7530044))

(declare-fun m!7530046 () Bool)

(assert (=> b!6781413 m!7530046))

(assert (=> d!2130353 d!2130511))

(declare-fun bs!1805969 () Bool)

(declare-fun d!2130513 () Bool)

(assert (= bs!1805969 (and d!2130513 d!2130353)))

(declare-fun lambda!381715 () Int)

(assert (=> bs!1805969 (= lambda!381715 lambda!381697)))

(declare-fun bs!1805971 () Bool)

(assert (= bs!1805971 (and d!2130513 d!2130379)))

(assert (=> bs!1805971 (= lambda!381715 lambda!381701)))

(declare-fun bs!1805972 () Bool)

(assert (= bs!1805972 (and d!2130513 d!2130155)))

(assert (=> bs!1805972 (= lambda!381715 lambda!381620)))

(declare-fun bs!1805974 () Bool)

(assert (= bs!1805974 (and d!2130513 d!2130261)))

(assert (=> bs!1805974 (= lambda!381715 lambda!381668)))

(declare-fun bs!1805975 () Bool)

(assert (= bs!1805975 (and d!2130513 d!2130483)))

(assert (=> bs!1805975 (= lambda!381715 lambda!381708)))

(declare-fun bs!1805977 () Bool)

(assert (= bs!1805977 (and d!2130513 d!2130195)))

(assert (=> bs!1805977 (= lambda!381715 lambda!381638)))

(declare-fun bs!1805979 () Bool)

(assert (= bs!1805979 (and d!2130513 d!2130157)))

(assert (=> bs!1805979 (= lambda!381715 lambda!381623)))

(declare-fun b!6781414 () Bool)

(declare-fun e!4093663 () Regex!16603)

(declare-fun e!4093658 () Regex!16603)

(assert (=> b!6781414 (= e!4093663 e!4093658)))

(declare-fun c!1259814 () Bool)

(assert (=> b!6781414 (= c!1259814 ((_ is Cons!65985) (t!379824 (unfocusZipperList!2024 zl!343))))))

(declare-fun b!6781415 () Bool)

(declare-fun e!4093662 () Bool)

(declare-fun e!4093661 () Bool)

(assert (=> b!6781415 (= e!4093662 e!4093661)))

(declare-fun c!1259812 () Bool)

(assert (=> b!6781415 (= c!1259812 (isEmpty!38347 (t!379824 (unfocusZipperList!2024 zl!343))))))

(declare-fun b!6781416 () Bool)

(assert (=> b!6781416 (= e!4093663 (h!72433 (t!379824 (unfocusZipperList!2024 zl!343))))))

(declare-fun b!6781417 () Bool)

(assert (=> b!6781417 (= e!4093658 (Union!16603 (h!72433 (t!379824 (unfocusZipperList!2024 zl!343))) (generalisedUnion!2447 (t!379824 (t!379824 (unfocusZipperList!2024 zl!343))))))))

(declare-fun b!6781418 () Bool)

(assert (=> b!6781418 (= e!4093658 EmptyLang!16603)))

(declare-fun b!6781419 () Bool)

(declare-fun lt!2444924 () Regex!16603)

(assert (=> b!6781419 (= e!4093661 (isEmptyLang!1968 lt!2444924))))

(declare-fun b!6781420 () Bool)

(declare-fun e!4093660 () Bool)

(assert (=> b!6781420 (= e!4093660 (= lt!2444924 (head!13616 (t!379824 (unfocusZipperList!2024 zl!343)))))))

(assert (=> d!2130513 e!4093662))

(declare-fun res!2771980 () Bool)

(assert (=> d!2130513 (=> (not res!2771980) (not e!4093662))))

(assert (=> d!2130513 (= res!2771980 (validRegex!8339 lt!2444924))))

(assert (=> d!2130513 (= lt!2444924 e!4093663)))

(declare-fun c!1259815 () Bool)

(declare-fun e!4093659 () Bool)

(assert (=> d!2130513 (= c!1259815 e!4093659)))

(declare-fun res!2771979 () Bool)

(assert (=> d!2130513 (=> (not res!2771979) (not e!4093659))))

(assert (=> d!2130513 (= res!2771979 ((_ is Cons!65985) (t!379824 (unfocusZipperList!2024 zl!343))))))

(assert (=> d!2130513 (forall!15794 (t!379824 (unfocusZipperList!2024 zl!343)) lambda!381715)))

(assert (=> d!2130513 (= (generalisedUnion!2447 (t!379824 (unfocusZipperList!2024 zl!343))) lt!2444924)))

(declare-fun b!6781421 () Bool)

(assert (=> b!6781421 (= e!4093659 (isEmpty!38347 (t!379824 (t!379824 (unfocusZipperList!2024 zl!343)))))))

(declare-fun b!6781422 () Bool)

(assert (=> b!6781422 (= e!4093660 (isUnion!1398 lt!2444924))))

(declare-fun b!6781423 () Bool)

(assert (=> b!6781423 (= e!4093661 e!4093660)))

(declare-fun c!1259813 () Bool)

(assert (=> b!6781423 (= c!1259813 (isEmpty!38347 (tail!12701 (t!379824 (unfocusZipperList!2024 zl!343)))))))

(assert (= (and d!2130513 res!2771979) b!6781421))

(assert (= (and d!2130513 c!1259815) b!6781416))

(assert (= (and d!2130513 (not c!1259815)) b!6781414))

(assert (= (and b!6781414 c!1259814) b!6781417))

(assert (= (and b!6781414 (not c!1259814)) b!6781418))

(assert (= (and d!2130513 res!2771980) b!6781415))

(assert (= (and b!6781415 c!1259812) b!6781419))

(assert (= (and b!6781415 (not c!1259812)) b!6781423))

(assert (= (and b!6781423 c!1259813) b!6781420))

(assert (= (and b!6781423 (not c!1259813)) b!6781422))

(declare-fun m!7530048 () Bool)

(assert (=> b!6781423 m!7530048))

(assert (=> b!6781423 m!7530048))

(declare-fun m!7530050 () Bool)

(assert (=> b!6781423 m!7530050))

(assert (=> b!6781415 m!7529186))

(declare-fun m!7530052 () Bool)

(assert (=> b!6781420 m!7530052))

(declare-fun m!7530054 () Bool)

(assert (=> b!6781421 m!7530054))

(declare-fun m!7530056 () Bool)

(assert (=> d!2130513 m!7530056))

(declare-fun m!7530058 () Bool)

(assert (=> d!2130513 m!7530058))

(declare-fun m!7530060 () Bool)

(assert (=> b!6781422 m!7530060))

(declare-fun m!7530062 () Bool)

(assert (=> b!6781417 m!7530062))

(declare-fun m!7530064 () Bool)

(assert (=> b!6781419 m!7530064))

(assert (=> b!6780375 d!2130513))

(declare-fun d!2130515 () Bool)

(declare-fun c!1259816 () Bool)

(assert (=> d!2130515 (= c!1259816 (isEmpty!38345 (tail!12702 s!2326)))))

(declare-fun e!4093664 () Bool)

(assert (=> d!2130515 (= (matchZipper!2589 (derivationStepZipper!2547 lt!2444757 (head!13617 s!2326)) (tail!12702 s!2326)) e!4093664)))

(declare-fun b!6781424 () Bool)

(assert (=> b!6781424 (= e!4093664 (nullableZipper!2309 (derivationStepZipper!2547 lt!2444757 (head!13617 s!2326))))))

(declare-fun b!6781425 () Bool)

(assert (=> b!6781425 (= e!4093664 (matchZipper!2589 (derivationStepZipper!2547 (derivationStepZipper!2547 lt!2444757 (head!13617 s!2326)) (head!13617 (tail!12702 s!2326))) (tail!12702 (tail!12702 s!2326))))))

(assert (= (and d!2130515 c!1259816) b!6781424))

(assert (= (and d!2130515 (not c!1259816)) b!6781425))

(assert (=> d!2130515 m!7529246))

(assert (=> d!2130515 m!7529436))

(assert (=> b!6781424 m!7529244))

(declare-fun m!7530070 () Bool)

(assert (=> b!6781424 m!7530070))

(assert (=> b!6781425 m!7529246))

(declare-fun m!7530072 () Bool)

(assert (=> b!6781425 m!7530072))

(assert (=> b!6781425 m!7529244))

(assert (=> b!6781425 m!7530072))

(declare-fun m!7530074 () Bool)

(assert (=> b!6781425 m!7530074))

(assert (=> b!6781425 m!7529246))

(declare-fun m!7530076 () Bool)

(assert (=> b!6781425 m!7530076))

(assert (=> b!6781425 m!7530074))

(assert (=> b!6781425 m!7530076))

(declare-fun m!7530078 () Bool)

(assert (=> b!6781425 m!7530078))

(assert (=> b!6780423 d!2130515))

(declare-fun bs!1805985 () Bool)

(declare-fun d!2130521 () Bool)

(assert (= bs!1805985 (and d!2130521 b!6780319)))

(declare-fun lambda!381716 () Int)

(assert (=> bs!1805985 (= (= (head!13617 s!2326) (h!72432 s!2326)) (= lambda!381716 lambda!381617))))

(declare-fun bs!1805986 () Bool)

(assert (= bs!1805986 (and d!2130521 d!2130183)))

(assert (=> bs!1805986 (= (= (head!13617 s!2326) (h!72432 s!2326)) (= lambda!381716 lambda!381629))))

(declare-fun bs!1805987 () Bool)

(assert (= bs!1805987 (and d!2130521 d!2130257)))

(assert (=> bs!1805987 (= (= (head!13617 s!2326) (h!72432 s!2326)) (= lambda!381716 lambda!381664))))

(declare-fun bs!1805988 () Bool)

(assert (= bs!1805988 (and d!2130521 d!2130357)))

(assert (=> bs!1805988 (= (= (head!13617 s!2326) (h!72432 s!2326)) (= lambda!381716 lambda!381698))))

(assert (=> d!2130521 true))

(assert (=> d!2130521 (= (derivationStepZipper!2547 lt!2444757 (head!13617 s!2326)) (flatMap!2084 lt!2444757 lambda!381716))))

(declare-fun bs!1805989 () Bool)

(assert (= bs!1805989 d!2130521))

(declare-fun m!7530080 () Bool)

(assert (=> bs!1805989 m!7530080))

(assert (=> b!6780423 d!2130521))

(declare-fun d!2130523 () Bool)

(assert (=> d!2130523 (= (head!13617 s!2326) (h!72432 s!2326))))

(assert (=> b!6780423 d!2130523))

(declare-fun d!2130525 () Bool)

(assert (=> d!2130525 (= (tail!12702 s!2326) (t!379823 s!2326))))

(assert (=> b!6780423 d!2130525))

(declare-fun d!2130527 () Bool)

(declare-fun res!2771987 () Bool)

(declare-fun e!4093670 () Bool)

(assert (=> d!2130527 (=> res!2771987 e!4093670)))

(assert (=> d!2130527 (= res!2771987 ((_ is ElementMatch!16603) (ite c!1259683 (regOne!33719 r!7292) (regOne!33718 r!7292))))))

(assert (=> d!2130527 (= (validRegex!8339 (ite c!1259683 (regOne!33719 r!7292) (regOne!33718 r!7292))) e!4093670)))

(declare-fun b!6781430 () Bool)

(declare-fun e!4093671 () Bool)

(assert (=> b!6781430 (= e!4093670 e!4093671)))

(declare-fun c!1259817 () Bool)

(assert (=> b!6781430 (= c!1259817 ((_ is Star!16603) (ite c!1259683 (regOne!33719 r!7292) (regOne!33718 r!7292))))))

(declare-fun bm!615255 () Bool)

(declare-fun call!615262 () Bool)

(declare-fun call!615260 () Bool)

(assert (=> bm!615255 (= call!615262 call!615260)))

(declare-fun b!6781431 () Bool)

(declare-fun e!4093675 () Bool)

(assert (=> b!6781431 (= e!4093671 e!4093675)))

(declare-fun c!1259818 () Bool)

(assert (=> b!6781431 (= c!1259818 ((_ is Union!16603) (ite c!1259683 (regOne!33719 r!7292) (regOne!33718 r!7292))))))

(declare-fun bm!615256 () Bool)

(assert (=> bm!615256 (= call!615260 (validRegex!8339 (ite c!1259817 (reg!16932 (ite c!1259683 (regOne!33719 r!7292) (regOne!33718 r!7292))) (ite c!1259818 (regTwo!33719 (ite c!1259683 (regOne!33719 r!7292) (regOne!33718 r!7292))) (regTwo!33718 (ite c!1259683 (regOne!33719 r!7292) (regOne!33718 r!7292)))))))))

(declare-fun b!6781432 () Bool)

(declare-fun res!2771985 () Bool)

(declare-fun e!4093674 () Bool)

(assert (=> b!6781432 (=> res!2771985 e!4093674)))

(assert (=> b!6781432 (= res!2771985 (not ((_ is Concat!25448) (ite c!1259683 (regOne!33719 r!7292) (regOne!33718 r!7292)))))))

(assert (=> b!6781432 (= e!4093675 e!4093674)))

(declare-fun b!6781433 () Bool)

(declare-fun e!4093672 () Bool)

(assert (=> b!6781433 (= e!4093672 call!615262)))

(declare-fun call!615261 () Bool)

(declare-fun bm!615257 () Bool)

(assert (=> bm!615257 (= call!615261 (validRegex!8339 (ite c!1259818 (regOne!33719 (ite c!1259683 (regOne!33719 r!7292) (regOne!33718 r!7292))) (regOne!33718 (ite c!1259683 (regOne!33719 r!7292) (regOne!33718 r!7292))))))))

(declare-fun b!6781434 () Bool)

(declare-fun e!4093669 () Bool)

(assert (=> b!6781434 (= e!4093671 e!4093669)))

(declare-fun res!2771989 () Bool)

(assert (=> b!6781434 (= res!2771989 (not (nullable!6582 (reg!16932 (ite c!1259683 (regOne!33719 r!7292) (regOne!33718 r!7292))))))))

(assert (=> b!6781434 (=> (not res!2771989) (not e!4093669))))

(declare-fun b!6781435 () Bool)

(assert (=> b!6781435 (= e!4093674 e!4093672)))

(declare-fun res!2771988 () Bool)

(assert (=> b!6781435 (=> (not res!2771988) (not e!4093672))))

(assert (=> b!6781435 (= res!2771988 call!615261)))

(declare-fun b!6781436 () Bool)

(declare-fun e!4093673 () Bool)

(assert (=> b!6781436 (= e!4093673 call!615262)))

(declare-fun b!6781437 () Bool)

(assert (=> b!6781437 (= e!4093669 call!615260)))

(declare-fun b!6781438 () Bool)

(declare-fun res!2771986 () Bool)

(assert (=> b!6781438 (=> (not res!2771986) (not e!4093673))))

(assert (=> b!6781438 (= res!2771986 call!615261)))

(assert (=> b!6781438 (= e!4093675 e!4093673)))

(assert (= (and d!2130527 (not res!2771987)) b!6781430))

(assert (= (and b!6781430 c!1259817) b!6781434))

(assert (= (and b!6781430 (not c!1259817)) b!6781431))

(assert (= (and b!6781434 res!2771989) b!6781437))

(assert (= (and b!6781431 c!1259818) b!6781438))

(assert (= (and b!6781431 (not c!1259818)) b!6781432))

(assert (= (and b!6781438 res!2771986) b!6781436))

(assert (= (and b!6781432 (not res!2771985)) b!6781435))

(assert (= (and b!6781435 res!2771988) b!6781433))

(assert (= (or b!6781436 b!6781433) bm!615255))

(assert (= (or b!6781438 b!6781435) bm!615257))

(assert (= (or b!6781437 bm!615255) bm!615256))

(declare-fun m!7530086 () Bool)

(assert (=> bm!615256 m!7530086))

(declare-fun m!7530088 () Bool)

(assert (=> bm!615257 m!7530088))

(declare-fun m!7530090 () Bool)

(assert (=> b!6781434 m!7530090))

(assert (=> bm!615189 d!2130527))

(declare-fun d!2130531 () Bool)

(declare-fun nullableFct!2488 (Regex!16603) Bool)

(assert (=> d!2130531 (= (nullable!6582 r!7292) (nullableFct!2488 r!7292))))

(declare-fun bs!1805990 () Bool)

(assert (= bs!1805990 d!2130531))

(declare-fun m!7530092 () Bool)

(assert (=> bs!1805990 m!7530092))

(assert (=> b!6780789 d!2130531))

(assert (=> d!2130363 d!2130361))

(declare-fun d!2130533 () Bool)

(assert (=> d!2130533 (= (flatMap!2084 lt!2444762 lambda!381617) (dynLambda!26330 lambda!381617 lt!2444770))))

(assert (=> d!2130533 true))

(declare-fun _$13!4189 () Unit!159897)

(assert (=> d!2130533 (= (choose!50493 lt!2444762 lt!2444770 lambda!381617) _$13!4189)))

(declare-fun b_lambda!255353 () Bool)

(assert (=> (not b_lambda!255353) (not d!2130533)))

(declare-fun bs!1805991 () Bool)

(assert (= bs!1805991 d!2130533))

(assert (=> bs!1805991 m!7529130))

(assert (=> bs!1805991 m!7529756))

(assert (=> d!2130363 d!2130533))

(declare-fun b!6781447 () Bool)

(declare-fun e!4093689 () (InoxSet Context!11974))

(declare-fun e!4093687 () (InoxSet Context!11974))

(assert (=> b!6781447 (= e!4093689 e!4093687)))

(declare-fun c!1259819 () Bool)

(assert (=> b!6781447 (= c!1259819 ((_ is Concat!25448) (h!72433 (exprs!6487 lt!2444770))))))

(declare-fun bm!615258 () Bool)

(declare-fun call!615267 () (InoxSet Context!11974))

(declare-fun call!615263 () (InoxSet Context!11974))

(assert (=> bm!615258 (= call!615267 call!615263)))

(declare-fun b!6781448 () Bool)

(declare-fun e!4093688 () Bool)

(assert (=> b!6781448 (= e!4093688 (nullable!6582 (regOne!33718 (h!72433 (exprs!6487 lt!2444770)))))))

(declare-fun b!6781449 () Bool)

(declare-fun call!615264 () (InoxSet Context!11974))

(assert (=> b!6781449 (= e!4093689 ((_ map or) call!615264 call!615267))))

(declare-fun b!6781450 () Bool)

(declare-fun e!4093684 () (InoxSet Context!11974))

(assert (=> b!6781450 (= e!4093684 ((_ map or) call!615264 call!615263))))

(declare-fun b!6781451 () Bool)

(declare-fun e!4093686 () (InoxSet Context!11974))

(assert (=> b!6781451 (= e!4093686 (store ((as const (Array Context!11974 Bool)) false) (Context!11975 (t!379824 (exprs!6487 lt!2444770))) true))))

(declare-fun call!615266 () List!66109)

(declare-fun bm!615259 () Bool)

(declare-fun c!1259820 () Bool)

(assert (=> bm!615259 (= call!615266 ($colon$colon!2412 (exprs!6487 (Context!11975 (t!379824 (exprs!6487 lt!2444770)))) (ite (or c!1259820 c!1259819) (regTwo!33718 (h!72433 (exprs!6487 lt!2444770))) (h!72433 (exprs!6487 lt!2444770)))))))

(declare-fun b!6781452 () Bool)

(assert (=> b!6781452 (= c!1259820 e!4093688)))

(declare-fun res!2771996 () Bool)

(assert (=> b!6781452 (=> (not res!2771996) (not e!4093688))))

(assert (=> b!6781452 (= res!2771996 ((_ is Concat!25448) (h!72433 (exprs!6487 lt!2444770))))))

(assert (=> b!6781452 (= e!4093684 e!4093689)))

(declare-fun call!615268 () List!66109)

(declare-fun bm!615260 () Bool)

(declare-fun c!1259821 () Bool)

(assert (=> bm!615260 (= call!615263 (derivationStepZipperDown!1831 (ite c!1259821 (regTwo!33719 (h!72433 (exprs!6487 lt!2444770))) (ite c!1259820 (regTwo!33718 (h!72433 (exprs!6487 lt!2444770))) (ite c!1259819 (regOne!33718 (h!72433 (exprs!6487 lt!2444770))) (reg!16932 (h!72433 (exprs!6487 lt!2444770)))))) (ite (or c!1259821 c!1259820) (Context!11975 (t!379824 (exprs!6487 lt!2444770))) (Context!11975 call!615268)) (h!72432 s!2326)))))

(declare-fun bm!615261 () Bool)

(assert (=> bm!615261 (= call!615264 (derivationStepZipperDown!1831 (ite c!1259821 (regOne!33719 (h!72433 (exprs!6487 lt!2444770))) (regOne!33718 (h!72433 (exprs!6487 lt!2444770)))) (ite c!1259821 (Context!11975 (t!379824 (exprs!6487 lt!2444770))) (Context!11975 call!615266)) (h!72432 s!2326)))))

(declare-fun b!6781453 () Bool)

(declare-fun call!615265 () (InoxSet Context!11974))

(assert (=> b!6781453 (= e!4093687 call!615265)))

(declare-fun d!2130535 () Bool)

(declare-fun c!1259822 () Bool)

(assert (=> d!2130535 (= c!1259822 (and ((_ is ElementMatch!16603) (h!72433 (exprs!6487 lt!2444770))) (= (c!1259507 (h!72433 (exprs!6487 lt!2444770))) (h!72432 s!2326))))))

(assert (=> d!2130535 (= (derivationStepZipperDown!1831 (h!72433 (exprs!6487 lt!2444770)) (Context!11975 (t!379824 (exprs!6487 lt!2444770))) (h!72432 s!2326)) e!4093686)))

(declare-fun bm!615262 () Bool)

(assert (=> bm!615262 (= call!615265 call!615267)))

(declare-fun b!6781454 () Bool)

(declare-fun e!4093685 () (InoxSet Context!11974))

(assert (=> b!6781454 (= e!4093685 ((as const (Array Context!11974 Bool)) false))))

(declare-fun b!6781455 () Bool)

(declare-fun c!1259823 () Bool)

(assert (=> b!6781455 (= c!1259823 ((_ is Star!16603) (h!72433 (exprs!6487 lt!2444770))))))

(assert (=> b!6781455 (= e!4093687 e!4093685)))

(declare-fun bm!615263 () Bool)

(assert (=> bm!615263 (= call!615268 call!615266)))

(declare-fun b!6781456 () Bool)

(assert (=> b!6781456 (= e!4093686 e!4093684)))

(assert (=> b!6781456 (= c!1259821 ((_ is Union!16603) (h!72433 (exprs!6487 lt!2444770))))))

(declare-fun b!6781457 () Bool)

(assert (=> b!6781457 (= e!4093685 call!615265)))

(assert (= (and d!2130535 c!1259822) b!6781451))

(assert (= (and d!2130535 (not c!1259822)) b!6781456))

(assert (= (and b!6781456 c!1259821) b!6781450))

(assert (= (and b!6781456 (not c!1259821)) b!6781452))

(assert (= (and b!6781452 res!2771996) b!6781448))

(assert (= (and b!6781452 c!1259820) b!6781449))

(assert (= (and b!6781452 (not c!1259820)) b!6781447))

(assert (= (and b!6781447 c!1259819) b!6781453))

(assert (= (and b!6781447 (not c!1259819)) b!6781455))

(assert (= (and b!6781455 c!1259823) b!6781457))

(assert (= (and b!6781455 (not c!1259823)) b!6781454))

(assert (= (or b!6781453 b!6781457) bm!615263))

(assert (= (or b!6781453 b!6781457) bm!615262))

(assert (= (or b!6781449 bm!615263) bm!615259))

(assert (= (or b!6781449 bm!615262) bm!615258))

(assert (= (or b!6781450 bm!615258) bm!615260))

(assert (= (or b!6781450 b!6781449) bm!615261))

(declare-fun m!7530098 () Bool)

(assert (=> b!6781448 m!7530098))

(declare-fun m!7530102 () Bool)

(assert (=> bm!615259 m!7530102))

(declare-fun m!7530104 () Bool)

(assert (=> bm!615261 m!7530104))

(declare-fun m!7530106 () Bool)

(assert (=> b!6781451 m!7530106))

(declare-fun m!7530108 () Bool)

(assert (=> bm!615260 m!7530108))

(assert (=> bm!615200 d!2130535))

(declare-fun b!6781461 () Bool)

(declare-fun e!4093698 () (InoxSet Context!11974))

(declare-fun e!4093696 () (InoxSet Context!11974))

(assert (=> b!6781461 (= e!4093698 e!4093696)))

(declare-fun c!1259824 () Bool)

(assert (=> b!6781461 (= c!1259824 ((_ is Concat!25448) (h!72433 (exprs!6487 lt!2444766))))))

(declare-fun bm!615264 () Bool)

(declare-fun call!615273 () (InoxSet Context!11974))

(declare-fun call!615269 () (InoxSet Context!11974))

(assert (=> bm!615264 (= call!615273 call!615269)))

(declare-fun b!6781462 () Bool)

(declare-fun e!4093697 () Bool)

(assert (=> b!6781462 (= e!4093697 (nullable!6582 (regOne!33718 (h!72433 (exprs!6487 lt!2444766)))))))

(declare-fun b!6781463 () Bool)

(declare-fun call!615270 () (InoxSet Context!11974))

(assert (=> b!6781463 (= e!4093698 ((_ map or) call!615270 call!615273))))

(declare-fun b!6781464 () Bool)

(declare-fun e!4093693 () (InoxSet Context!11974))

(assert (=> b!6781464 (= e!4093693 ((_ map or) call!615270 call!615269))))

(declare-fun b!6781465 () Bool)

(declare-fun e!4093695 () (InoxSet Context!11974))

(assert (=> b!6781465 (= e!4093695 (store ((as const (Array Context!11974 Bool)) false) (Context!11975 (t!379824 (exprs!6487 lt!2444766))) true))))

(declare-fun c!1259825 () Bool)

(declare-fun bm!615265 () Bool)

(declare-fun call!615272 () List!66109)

(assert (=> bm!615265 (= call!615272 ($colon$colon!2412 (exprs!6487 (Context!11975 (t!379824 (exprs!6487 lt!2444766)))) (ite (or c!1259825 c!1259824) (regTwo!33718 (h!72433 (exprs!6487 lt!2444766))) (h!72433 (exprs!6487 lt!2444766)))))))

(declare-fun b!6781466 () Bool)

(assert (=> b!6781466 (= c!1259825 e!4093697)))

(declare-fun res!2771999 () Bool)

(assert (=> b!6781466 (=> (not res!2771999) (not e!4093697))))

(assert (=> b!6781466 (= res!2771999 ((_ is Concat!25448) (h!72433 (exprs!6487 lt!2444766))))))

(assert (=> b!6781466 (= e!4093693 e!4093698)))

(declare-fun call!615274 () List!66109)

(declare-fun bm!615266 () Bool)

(declare-fun c!1259826 () Bool)

(assert (=> bm!615266 (= call!615269 (derivationStepZipperDown!1831 (ite c!1259826 (regTwo!33719 (h!72433 (exprs!6487 lt!2444766))) (ite c!1259825 (regTwo!33718 (h!72433 (exprs!6487 lt!2444766))) (ite c!1259824 (regOne!33718 (h!72433 (exprs!6487 lt!2444766))) (reg!16932 (h!72433 (exprs!6487 lt!2444766)))))) (ite (or c!1259826 c!1259825) (Context!11975 (t!379824 (exprs!6487 lt!2444766))) (Context!11975 call!615274)) (h!72432 s!2326)))))

(declare-fun bm!615267 () Bool)

(assert (=> bm!615267 (= call!615270 (derivationStepZipperDown!1831 (ite c!1259826 (regOne!33719 (h!72433 (exprs!6487 lt!2444766))) (regOne!33718 (h!72433 (exprs!6487 lt!2444766)))) (ite c!1259826 (Context!11975 (t!379824 (exprs!6487 lt!2444766))) (Context!11975 call!615272)) (h!72432 s!2326)))))

(declare-fun b!6781467 () Bool)

(declare-fun call!615271 () (InoxSet Context!11974))

(assert (=> b!6781467 (= e!4093696 call!615271)))

(declare-fun d!2130539 () Bool)

(declare-fun c!1259827 () Bool)

(assert (=> d!2130539 (= c!1259827 (and ((_ is ElementMatch!16603) (h!72433 (exprs!6487 lt!2444766))) (= (c!1259507 (h!72433 (exprs!6487 lt!2444766))) (h!72432 s!2326))))))

(assert (=> d!2130539 (= (derivationStepZipperDown!1831 (h!72433 (exprs!6487 lt!2444766)) (Context!11975 (t!379824 (exprs!6487 lt!2444766))) (h!72432 s!2326)) e!4093695)))

(declare-fun bm!615268 () Bool)

(assert (=> bm!615268 (= call!615271 call!615273)))

(declare-fun b!6781468 () Bool)

(declare-fun e!4093694 () (InoxSet Context!11974))

(assert (=> b!6781468 (= e!4093694 ((as const (Array Context!11974 Bool)) false))))

(declare-fun b!6781469 () Bool)

(declare-fun c!1259828 () Bool)

(assert (=> b!6781469 (= c!1259828 ((_ is Star!16603) (h!72433 (exprs!6487 lt!2444766))))))

(assert (=> b!6781469 (= e!4093696 e!4093694)))

(declare-fun bm!615269 () Bool)

(assert (=> bm!615269 (= call!615274 call!615272)))

(declare-fun b!6781470 () Bool)

(assert (=> b!6781470 (= e!4093695 e!4093693)))

(assert (=> b!6781470 (= c!1259826 ((_ is Union!16603) (h!72433 (exprs!6487 lt!2444766))))))

(declare-fun b!6781471 () Bool)

(assert (=> b!6781471 (= e!4093694 call!615271)))

(assert (= (and d!2130539 c!1259827) b!6781465))

(assert (= (and d!2130539 (not c!1259827)) b!6781470))

(assert (= (and b!6781470 c!1259826) b!6781464))

(assert (= (and b!6781470 (not c!1259826)) b!6781466))

(assert (= (and b!6781466 res!2771999) b!6781462))

(assert (= (and b!6781466 c!1259825) b!6781463))

(assert (= (and b!6781466 (not c!1259825)) b!6781461))

(assert (= (and b!6781461 c!1259824) b!6781467))

(assert (= (and b!6781461 (not c!1259824)) b!6781469))

(assert (= (and b!6781469 c!1259828) b!6781471))

(assert (= (and b!6781469 (not c!1259828)) b!6781468))

(assert (= (or b!6781467 b!6781471) bm!615269))

(assert (= (or b!6781467 b!6781471) bm!615268))

(assert (= (or b!6781463 bm!615269) bm!615265))

(assert (= (or b!6781463 bm!615268) bm!615264))

(assert (= (or b!6781464 bm!615264) bm!615266))

(assert (= (or b!6781464 b!6781463) bm!615267))

(declare-fun m!7530110 () Bool)

(assert (=> b!6781462 m!7530110))

(declare-fun m!7530112 () Bool)

(assert (=> bm!615265 m!7530112))

(declare-fun m!7530114 () Bool)

(assert (=> bm!615267 m!7530114))

(declare-fun m!7530116 () Bool)

(assert (=> b!6781465 m!7530116))

(declare-fun m!7530118 () Bool)

(assert (=> bm!615266 m!7530118))

(assert (=> bm!615199 d!2130539))

(declare-fun d!2130543 () Bool)

(assert (=> d!2130543 (= (isEmpty!38347 (exprs!6487 (h!72434 zl!343))) ((_ is Nil!65985) (exprs!6487 (h!72434 zl!343))))))

(assert (=> b!6780552 d!2130543))

(assert (=> b!6780772 d!2130523))

(declare-fun d!2130545 () Bool)

(assert (=> d!2130545 (= (head!13617 (_1!36881 lt!2444761)) (h!72432 (_1!36881 lt!2444761)))))

(assert (=> b!6781162 d!2130545))

(declare-fun b!6781473 () Bool)

(declare-fun e!4093705 () (InoxSet Context!11974))

(declare-fun e!4093703 () (InoxSet Context!11974))

(assert (=> b!6781473 (= e!4093705 e!4093703)))

(declare-fun c!1259829 () Bool)

(assert (=> b!6781473 (= c!1259829 ((_ is Concat!25448) (ite c!1259673 (regTwo!33719 (reg!16932 r!7292)) (ite c!1259672 (regTwo!33718 (reg!16932 r!7292)) (ite c!1259671 (regOne!33718 (reg!16932 r!7292)) (reg!16932 (reg!16932 r!7292)))))))))

(declare-fun bm!615270 () Bool)

(declare-fun call!615279 () (InoxSet Context!11974))

(declare-fun call!615275 () (InoxSet Context!11974))

(assert (=> bm!615270 (= call!615279 call!615275)))

(declare-fun e!4093704 () Bool)

(declare-fun b!6781474 () Bool)

(assert (=> b!6781474 (= e!4093704 (nullable!6582 (regOne!33718 (ite c!1259673 (regTwo!33719 (reg!16932 r!7292)) (ite c!1259672 (regTwo!33718 (reg!16932 r!7292)) (ite c!1259671 (regOne!33718 (reg!16932 r!7292)) (reg!16932 (reg!16932 r!7292))))))))))

(declare-fun b!6781475 () Bool)

(declare-fun call!615276 () (InoxSet Context!11974))

(assert (=> b!6781475 (= e!4093705 ((_ map or) call!615276 call!615279))))

(declare-fun b!6781476 () Bool)

(declare-fun e!4093700 () (InoxSet Context!11974))

(assert (=> b!6781476 (= e!4093700 ((_ map or) call!615276 call!615275))))

(declare-fun e!4093702 () (InoxSet Context!11974))

(declare-fun b!6781477 () Bool)

(assert (=> b!6781477 (= e!4093702 (store ((as const (Array Context!11974 Bool)) false) (ite (or c!1259673 c!1259672) lt!2444770 (Context!11975 call!615184)) true))))

(declare-fun call!615278 () List!66109)

(declare-fun bm!615271 () Bool)

(declare-fun c!1259830 () Bool)

(assert (=> bm!615271 (= call!615278 ($colon$colon!2412 (exprs!6487 (ite (or c!1259673 c!1259672) lt!2444770 (Context!11975 call!615184))) (ite (or c!1259830 c!1259829) (regTwo!33718 (ite c!1259673 (regTwo!33719 (reg!16932 r!7292)) (ite c!1259672 (regTwo!33718 (reg!16932 r!7292)) (ite c!1259671 (regOne!33718 (reg!16932 r!7292)) (reg!16932 (reg!16932 r!7292)))))) (ite c!1259673 (regTwo!33719 (reg!16932 r!7292)) (ite c!1259672 (regTwo!33718 (reg!16932 r!7292)) (ite c!1259671 (regOne!33718 (reg!16932 r!7292)) (reg!16932 (reg!16932 r!7292))))))))))

(declare-fun b!6781478 () Bool)

(assert (=> b!6781478 (= c!1259830 e!4093704)))

(declare-fun res!2772001 () Bool)

(assert (=> b!6781478 (=> (not res!2772001) (not e!4093704))))

(assert (=> b!6781478 (= res!2772001 ((_ is Concat!25448) (ite c!1259673 (regTwo!33719 (reg!16932 r!7292)) (ite c!1259672 (regTwo!33718 (reg!16932 r!7292)) (ite c!1259671 (regOne!33718 (reg!16932 r!7292)) (reg!16932 (reg!16932 r!7292)))))))))

(assert (=> b!6781478 (= e!4093700 e!4093705)))

(declare-fun bm!615272 () Bool)

(declare-fun c!1259831 () Bool)

(declare-fun call!615280 () List!66109)

(assert (=> bm!615272 (= call!615275 (derivationStepZipperDown!1831 (ite c!1259831 (regTwo!33719 (ite c!1259673 (regTwo!33719 (reg!16932 r!7292)) (ite c!1259672 (regTwo!33718 (reg!16932 r!7292)) (ite c!1259671 (regOne!33718 (reg!16932 r!7292)) (reg!16932 (reg!16932 r!7292)))))) (ite c!1259830 (regTwo!33718 (ite c!1259673 (regTwo!33719 (reg!16932 r!7292)) (ite c!1259672 (regTwo!33718 (reg!16932 r!7292)) (ite c!1259671 (regOne!33718 (reg!16932 r!7292)) (reg!16932 (reg!16932 r!7292)))))) (ite c!1259829 (regOne!33718 (ite c!1259673 (regTwo!33719 (reg!16932 r!7292)) (ite c!1259672 (regTwo!33718 (reg!16932 r!7292)) (ite c!1259671 (regOne!33718 (reg!16932 r!7292)) (reg!16932 (reg!16932 r!7292)))))) (reg!16932 (ite c!1259673 (regTwo!33719 (reg!16932 r!7292)) (ite c!1259672 (regTwo!33718 (reg!16932 r!7292)) (ite c!1259671 (regOne!33718 (reg!16932 r!7292)) (reg!16932 (reg!16932 r!7292))))))))) (ite (or c!1259831 c!1259830) (ite (or c!1259673 c!1259672) lt!2444770 (Context!11975 call!615184)) (Context!11975 call!615280)) (h!72432 s!2326)))))

(declare-fun bm!615273 () Bool)

(assert (=> bm!615273 (= call!615276 (derivationStepZipperDown!1831 (ite c!1259831 (regOne!33719 (ite c!1259673 (regTwo!33719 (reg!16932 r!7292)) (ite c!1259672 (regTwo!33718 (reg!16932 r!7292)) (ite c!1259671 (regOne!33718 (reg!16932 r!7292)) (reg!16932 (reg!16932 r!7292)))))) (regOne!33718 (ite c!1259673 (regTwo!33719 (reg!16932 r!7292)) (ite c!1259672 (regTwo!33718 (reg!16932 r!7292)) (ite c!1259671 (regOne!33718 (reg!16932 r!7292)) (reg!16932 (reg!16932 r!7292))))))) (ite c!1259831 (ite (or c!1259673 c!1259672) lt!2444770 (Context!11975 call!615184)) (Context!11975 call!615278)) (h!72432 s!2326)))))

(declare-fun b!6781479 () Bool)

(declare-fun call!615277 () (InoxSet Context!11974))

(assert (=> b!6781479 (= e!4093703 call!615277)))

(declare-fun d!2130549 () Bool)

(declare-fun c!1259832 () Bool)

(assert (=> d!2130549 (= c!1259832 (and ((_ is ElementMatch!16603) (ite c!1259673 (regTwo!33719 (reg!16932 r!7292)) (ite c!1259672 (regTwo!33718 (reg!16932 r!7292)) (ite c!1259671 (regOne!33718 (reg!16932 r!7292)) (reg!16932 (reg!16932 r!7292)))))) (= (c!1259507 (ite c!1259673 (regTwo!33719 (reg!16932 r!7292)) (ite c!1259672 (regTwo!33718 (reg!16932 r!7292)) (ite c!1259671 (regOne!33718 (reg!16932 r!7292)) (reg!16932 (reg!16932 r!7292)))))) (h!72432 s!2326))))))

(assert (=> d!2130549 (= (derivationStepZipperDown!1831 (ite c!1259673 (regTwo!33719 (reg!16932 r!7292)) (ite c!1259672 (regTwo!33718 (reg!16932 r!7292)) (ite c!1259671 (regOne!33718 (reg!16932 r!7292)) (reg!16932 (reg!16932 r!7292))))) (ite (or c!1259673 c!1259672) lt!2444770 (Context!11975 call!615184)) (h!72432 s!2326)) e!4093702)))

(declare-fun bm!615274 () Bool)

(assert (=> bm!615274 (= call!615277 call!615279)))

(declare-fun b!6781480 () Bool)

(declare-fun e!4093701 () (InoxSet Context!11974))

(assert (=> b!6781480 (= e!4093701 ((as const (Array Context!11974 Bool)) false))))

(declare-fun c!1259833 () Bool)

(declare-fun b!6781481 () Bool)

(assert (=> b!6781481 (= c!1259833 ((_ is Star!16603) (ite c!1259673 (regTwo!33719 (reg!16932 r!7292)) (ite c!1259672 (regTwo!33718 (reg!16932 r!7292)) (ite c!1259671 (regOne!33718 (reg!16932 r!7292)) (reg!16932 (reg!16932 r!7292)))))))))

(assert (=> b!6781481 (= e!4093703 e!4093701)))

(declare-fun bm!615275 () Bool)

(assert (=> bm!615275 (= call!615280 call!615278)))

(declare-fun b!6781482 () Bool)

(assert (=> b!6781482 (= e!4093702 e!4093700)))

(assert (=> b!6781482 (= c!1259831 ((_ is Union!16603) (ite c!1259673 (regTwo!33719 (reg!16932 r!7292)) (ite c!1259672 (regTwo!33718 (reg!16932 r!7292)) (ite c!1259671 (regOne!33718 (reg!16932 r!7292)) (reg!16932 (reg!16932 r!7292)))))))))

(declare-fun b!6781483 () Bool)

(assert (=> b!6781483 (= e!4093701 call!615277)))

(assert (= (and d!2130549 c!1259832) b!6781477))

(assert (= (and d!2130549 (not c!1259832)) b!6781482))

(assert (= (and b!6781482 c!1259831) b!6781476))

(assert (= (and b!6781482 (not c!1259831)) b!6781478))

(assert (= (and b!6781478 res!2772001) b!6781474))

(assert (= (and b!6781478 c!1259830) b!6781475))

(assert (= (and b!6781478 (not c!1259830)) b!6781473))

(assert (= (and b!6781473 c!1259829) b!6781479))

(assert (= (and b!6781473 (not c!1259829)) b!6781481))

(assert (= (and b!6781481 c!1259833) b!6781483))

(assert (= (and b!6781481 (not c!1259833)) b!6781480))

(assert (= (or b!6781479 b!6781483) bm!615275))

(assert (= (or b!6781479 b!6781483) bm!615274))

(assert (= (or b!6781475 bm!615275) bm!615271))

(assert (= (or b!6781475 bm!615274) bm!615270))

(assert (= (or b!6781476 bm!615270) bm!615272))

(assert (= (or b!6781476 b!6781475) bm!615273))

(declare-fun m!7530128 () Bool)

(assert (=> b!6781474 m!7530128))

(declare-fun m!7530130 () Bool)

(assert (=> bm!615271 m!7530130))

(declare-fun m!7530134 () Bool)

(assert (=> bm!615273 m!7530134))

(declare-fun m!7530136 () Bool)

(assert (=> b!6781477 m!7530136))

(declare-fun m!7530138 () Bool)

(assert (=> bm!615272 m!7530138))

(assert (=> bm!615176 d!2130549))

(declare-fun b!6781498 () Bool)

(declare-fun res!2772017 () Bool)

(declare-fun e!4093714 () Bool)

(assert (=> b!6781498 (=> res!2772017 e!4093714)))

(declare-fun e!4093718 () Bool)

(assert (=> b!6781498 (= res!2772017 e!4093718)))

(declare-fun res!2772013 () Bool)

(assert (=> b!6781498 (=> (not res!2772013) (not e!4093718))))

(declare-fun lt!2444926 () Bool)

(assert (=> b!6781498 (= res!2772013 lt!2444926)))

(declare-fun b!6781499 () Bool)

(declare-fun e!4093717 () Bool)

(assert (=> b!6781499 (= e!4093717 (nullable!6582 (derivativeStep!5267 lt!2444765 (head!13617 s!2326))))))

(declare-fun bm!615277 () Bool)

(declare-fun call!615282 () Bool)

(assert (=> bm!615277 (= call!615282 (isEmpty!38345 (tail!12702 s!2326)))))

(declare-fun b!6781500 () Bool)

(declare-fun e!4093719 () Bool)

(assert (=> b!6781500 (= e!4093714 e!4093719)))

(declare-fun res!2772011 () Bool)

(assert (=> b!6781500 (=> (not res!2772011) (not e!4093719))))

(assert (=> b!6781500 (= res!2772011 (not lt!2444926))))

(declare-fun b!6781501 () Bool)

(declare-fun e!4093713 () Bool)

(assert (=> b!6781501 (= e!4093713 (not (= (head!13617 (tail!12702 s!2326)) (c!1259507 (derivativeStep!5267 lt!2444765 (head!13617 s!2326))))))))

(declare-fun b!6781502 () Bool)

(declare-fun res!2772016 () Bool)

(assert (=> b!6781502 (=> res!2772016 e!4093714)))

(assert (=> b!6781502 (= res!2772016 (not ((_ is ElementMatch!16603) (derivativeStep!5267 lt!2444765 (head!13617 s!2326)))))))

(declare-fun e!4093715 () Bool)

(assert (=> b!6781502 (= e!4093715 e!4093714)))

(declare-fun b!6781503 () Bool)

(assert (=> b!6781503 (= e!4093717 (matchR!8786 (derivativeStep!5267 (derivativeStep!5267 lt!2444765 (head!13617 s!2326)) (head!13617 (tail!12702 s!2326))) (tail!12702 (tail!12702 s!2326))))))

(declare-fun b!6781505 () Bool)

(declare-fun res!2772010 () Bool)

(assert (=> b!6781505 (=> (not res!2772010) (not e!4093718))))

(assert (=> b!6781505 (= res!2772010 (isEmpty!38345 (tail!12702 (tail!12702 s!2326))))))

(declare-fun b!6781506 () Bool)

(declare-fun e!4093716 () Bool)

(assert (=> b!6781506 (= e!4093716 (= lt!2444926 call!615282))))

(declare-fun b!6781507 () Bool)

(assert (=> b!6781507 (= e!4093716 e!4093715)))

(declare-fun c!1259837 () Bool)

(assert (=> b!6781507 (= c!1259837 ((_ is EmptyLang!16603) (derivativeStep!5267 lt!2444765 (head!13617 s!2326))))))

(declare-fun b!6781508 () Bool)

(declare-fun res!2772014 () Bool)

(assert (=> b!6781508 (=> (not res!2772014) (not e!4093718))))

(assert (=> b!6781508 (= res!2772014 (not call!615282))))

(declare-fun b!6781509 () Bool)

(assert (=> b!6781509 (= e!4093715 (not lt!2444926))))

(declare-fun b!6781510 () Bool)

(declare-fun res!2772015 () Bool)

(assert (=> b!6781510 (=> res!2772015 e!4093713)))

(assert (=> b!6781510 (= res!2772015 (not (isEmpty!38345 (tail!12702 (tail!12702 s!2326)))))))

(declare-fun b!6781511 () Bool)

(assert (=> b!6781511 (= e!4093719 e!4093713)))

(declare-fun res!2772012 () Bool)

(assert (=> b!6781511 (=> res!2772012 e!4093713)))

(assert (=> b!6781511 (= res!2772012 call!615282)))

(declare-fun d!2130559 () Bool)

(assert (=> d!2130559 e!4093716))

(declare-fun c!1259839 () Bool)

(assert (=> d!2130559 (= c!1259839 ((_ is EmptyExpr!16603) (derivativeStep!5267 lt!2444765 (head!13617 s!2326))))))

(assert (=> d!2130559 (= lt!2444926 e!4093717)))

(declare-fun c!1259838 () Bool)

(assert (=> d!2130559 (= c!1259838 (isEmpty!38345 (tail!12702 s!2326)))))

(assert (=> d!2130559 (validRegex!8339 (derivativeStep!5267 lt!2444765 (head!13617 s!2326)))))

(assert (=> d!2130559 (= (matchR!8786 (derivativeStep!5267 lt!2444765 (head!13617 s!2326)) (tail!12702 s!2326)) lt!2444926)))

(declare-fun b!6781504 () Bool)

(assert (=> b!6781504 (= e!4093718 (= (head!13617 (tail!12702 s!2326)) (c!1259507 (derivativeStep!5267 lt!2444765 (head!13617 s!2326)))))))

(assert (= (and d!2130559 c!1259838) b!6781499))

(assert (= (and d!2130559 (not c!1259838)) b!6781503))

(assert (= (and d!2130559 c!1259839) b!6781506))

(assert (= (and d!2130559 (not c!1259839)) b!6781507))

(assert (= (and b!6781507 c!1259837) b!6781509))

(assert (= (and b!6781507 (not c!1259837)) b!6781502))

(assert (= (and b!6781502 (not res!2772016)) b!6781498))

(assert (= (and b!6781498 res!2772013) b!6781508))

(assert (= (and b!6781508 res!2772014) b!6781505))

(assert (= (and b!6781505 res!2772010) b!6781504))

(assert (= (and b!6781498 (not res!2772017)) b!6781500))

(assert (= (and b!6781500 res!2772011) b!6781511))

(assert (= (and b!6781511 (not res!2772012)) b!6781510))

(assert (= (and b!6781510 (not res!2772015)) b!6781501))

(assert (= (or b!6781506 b!6781508 b!6781511) bm!615277))

(assert (=> d!2130559 m!7529246))

(assert (=> d!2130559 m!7529436))

(assert (=> d!2130559 m!7529790))

(declare-fun m!7530150 () Bool)

(assert (=> d!2130559 m!7530150))

(assert (=> b!6781499 m!7529790))

(declare-fun m!7530154 () Bool)

(assert (=> b!6781499 m!7530154))

(assert (=> bm!615277 m!7529246))

(assert (=> bm!615277 m!7529436))

(assert (=> b!6781510 m!7529246))

(assert (=> b!6781510 m!7530076))

(assert (=> b!6781510 m!7530076))

(declare-fun m!7530156 () Bool)

(assert (=> b!6781510 m!7530156))

(assert (=> b!6781503 m!7529246))

(assert (=> b!6781503 m!7530072))

(assert (=> b!6781503 m!7529790))

(assert (=> b!6781503 m!7530072))

(declare-fun m!7530160 () Bool)

(assert (=> b!6781503 m!7530160))

(assert (=> b!6781503 m!7529246))

(assert (=> b!6781503 m!7530076))

(assert (=> b!6781503 m!7530160))

(assert (=> b!6781503 m!7530076))

(declare-fun m!7530162 () Bool)

(assert (=> b!6781503 m!7530162))

(assert (=> b!6781504 m!7529246))

(assert (=> b!6781504 m!7530072))

(assert (=> b!6781505 m!7529246))

(assert (=> b!6781505 m!7530076))

(assert (=> b!6781505 m!7530076))

(assert (=> b!6781505 m!7530156))

(assert (=> b!6781501 m!7529246))

(assert (=> b!6781501 m!7530072))

(assert (=> b!6781147 d!2130559))

(declare-fun b!6781562 () Bool)

(declare-fun e!4093745 () Regex!16603)

(declare-fun call!615303 () Regex!16603)

(assert (=> b!6781562 (= e!4093745 (Union!16603 (Concat!25448 call!615303 (regTwo!33718 lt!2444765)) EmptyLang!16603))))

(declare-fun b!6781563 () Bool)

(declare-fun e!4093747 () Regex!16603)

(declare-fun call!615306 () Regex!16603)

(declare-fun call!615305 () Regex!16603)

(assert (=> b!6781563 (= e!4093747 (Union!16603 call!615306 call!615305))))

(declare-fun bm!615298 () Bool)

(assert (=> bm!615298 (= call!615303 call!615306)))

(declare-fun c!1259867 () Bool)

(declare-fun bm!615299 () Bool)

(declare-fun c!1259869 () Bool)

(assert (=> bm!615299 (= call!615306 (derivativeStep!5267 (ite c!1259867 (regOne!33719 lt!2444765) (ite c!1259869 (regTwo!33718 lt!2444765) (regOne!33718 lt!2444765))) (head!13617 s!2326)))))

(declare-fun b!6781564 () Bool)

(assert (=> b!6781564 (= c!1259867 ((_ is Union!16603) lt!2444765))))

(declare-fun e!4093749 () Regex!16603)

(assert (=> b!6781564 (= e!4093749 e!4093747)))

(declare-fun b!6781565 () Bool)

(assert (=> b!6781565 (= e!4093749 (ite (= (head!13617 s!2326) (c!1259507 lt!2444765)) EmptyExpr!16603 EmptyLang!16603))))

(declare-fun b!6781566 () Bool)

(declare-fun e!4093746 () Regex!16603)

(assert (=> b!6781566 (= e!4093746 EmptyLang!16603)))

(declare-fun b!6781567 () Bool)

(assert (=> b!6781567 (= e!4093746 e!4093749)))

(declare-fun c!1259868 () Bool)

(assert (=> b!6781567 (= c!1259868 ((_ is ElementMatch!16603) lt!2444765))))

(declare-fun b!6781568 () Bool)

(assert (=> b!6781568 (= c!1259869 (nullable!6582 (regOne!33718 lt!2444765)))))

(declare-fun e!4093748 () Regex!16603)

(assert (=> b!6781568 (= e!4093748 e!4093745)))

(declare-fun bm!615300 () Bool)

(declare-fun c!1259865 () Bool)

(assert (=> bm!615300 (= call!615305 (derivativeStep!5267 (ite c!1259867 (regTwo!33719 lt!2444765) (ite c!1259865 (reg!16932 lt!2444765) (regOne!33718 lt!2444765))) (head!13617 s!2326)))))

(declare-fun bm!615301 () Bool)

(declare-fun call!615304 () Regex!16603)

(assert (=> bm!615301 (= call!615304 call!615305)))

(declare-fun b!6781569 () Bool)

(assert (=> b!6781569 (= e!4093748 (Concat!25448 call!615304 lt!2444765))))

(declare-fun b!6781570 () Bool)

(assert (=> b!6781570 (= e!4093745 (Union!16603 (Concat!25448 call!615304 (regTwo!33718 lt!2444765)) call!615303))))

(declare-fun d!2130563 () Bool)

(declare-fun lt!2444932 () Regex!16603)

(assert (=> d!2130563 (validRegex!8339 lt!2444932)))

(assert (=> d!2130563 (= lt!2444932 e!4093746)))

(declare-fun c!1259866 () Bool)

(assert (=> d!2130563 (= c!1259866 (or ((_ is EmptyExpr!16603) lt!2444765) ((_ is EmptyLang!16603) lt!2444765)))))

(assert (=> d!2130563 (validRegex!8339 lt!2444765)))

(assert (=> d!2130563 (= (derivativeStep!5267 lt!2444765 (head!13617 s!2326)) lt!2444932)))

(declare-fun b!6781571 () Bool)

(assert (=> b!6781571 (= e!4093747 e!4093748)))

(assert (=> b!6781571 (= c!1259865 ((_ is Star!16603) lt!2444765))))

(assert (= (and d!2130563 c!1259866) b!6781566))

(assert (= (and d!2130563 (not c!1259866)) b!6781567))

(assert (= (and b!6781567 c!1259868) b!6781565))

(assert (= (and b!6781567 (not c!1259868)) b!6781564))

(assert (= (and b!6781564 c!1259867) b!6781563))

(assert (= (and b!6781564 (not c!1259867)) b!6781571))

(assert (= (and b!6781571 c!1259865) b!6781569))

(assert (= (and b!6781571 (not c!1259865)) b!6781568))

(assert (= (and b!6781568 c!1259869) b!6781570))

(assert (= (and b!6781568 (not c!1259869)) b!6781562))

(assert (= (or b!6781570 b!6781562) bm!615298))

(assert (= (or b!6781569 b!6781570) bm!615301))

(assert (= (or b!6781563 bm!615301) bm!615300))

(assert (= (or b!6781563 bm!615298) bm!615299))

(assert (=> bm!615299 m!7529242))

(declare-fun m!7530168 () Bool)

(assert (=> bm!615299 m!7530168))

(declare-fun m!7530170 () Bool)

(assert (=> b!6781568 m!7530170))

(assert (=> bm!615300 m!7529242))

(declare-fun m!7530174 () Bool)

(assert (=> bm!615300 m!7530174))

(declare-fun m!7530176 () Bool)

(assert (=> d!2130563 m!7530176))

(assert (=> d!2130563 m!7529786))

(assert (=> b!6781147 d!2130563))

(assert (=> b!6781147 d!2130523))

(assert (=> b!6781147 d!2130525))

(declare-fun d!2130567 () Bool)

(assert (=> d!2130567 true))

(declare-fun setRes!46390 () Bool)

(assert (=> d!2130567 setRes!46390))

(declare-fun condSetEmpty!46390 () Bool)

(declare-fun res!2772022 () (InoxSet Context!11974))

(assert (=> d!2130567 (= condSetEmpty!46390 (= res!2772022 ((as const (Array Context!11974 Bool)) false)))))

(assert (=> d!2130567 (= (choose!50492 z!1189 lambda!381617) res!2772022)))

(declare-fun setIsEmpty!46390 () Bool)

(assert (=> setIsEmpty!46390 setRes!46390))

(declare-fun tp!1857953 () Bool)

(declare-fun setNonEmpty!46390 () Bool)

(declare-fun e!4093758 () Bool)

(declare-fun setElem!46390 () Context!11974)

(assert (=> setNonEmpty!46390 (= setRes!46390 (and tp!1857953 (inv!84754 setElem!46390) e!4093758))))

(declare-fun setRest!46390 () (InoxSet Context!11974))

(assert (=> setNonEmpty!46390 (= res!2772022 ((_ map or) (store ((as const (Array Context!11974 Bool)) false) setElem!46390 true) setRest!46390))))

(declare-fun b!6781584 () Bool)

(declare-fun tp!1857952 () Bool)

(assert (=> b!6781584 (= e!4093758 tp!1857952)))

(assert (= (and d!2130567 condSetEmpty!46390) setIsEmpty!46390))

(assert (= (and d!2130567 (not condSetEmpty!46390)) setNonEmpty!46390))

(assert (= setNonEmpty!46390 b!6781584))

(declare-fun m!7530196 () Bool)

(assert (=> setNonEmpty!46390 m!7530196))

(assert (=> d!2130159 d!2130567))

(assert (=> bm!615203 d!2130317))

(declare-fun b!6781585 () Bool)

(declare-fun res!2772032 () Bool)

(declare-fun e!4093760 () Bool)

(assert (=> b!6781585 (=> res!2772032 e!4093760)))

(declare-fun e!4093764 () Bool)

(assert (=> b!6781585 (= res!2772032 e!4093764)))

(declare-fun res!2772028 () Bool)

(assert (=> b!6781585 (=> (not res!2772028) (not e!4093764))))

(declare-fun lt!2444934 () Bool)

(assert (=> b!6781585 (= res!2772028 lt!2444934)))

(declare-fun b!6781586 () Bool)

(declare-fun e!4093763 () Bool)

(assert (=> b!6781586 (= e!4093763 (nullable!6582 (reg!16932 r!7292)))))

(declare-fun bm!615302 () Bool)

(declare-fun call!615307 () Bool)

(assert (=> bm!615302 (= call!615307 (isEmpty!38345 (_1!36881 (get!22974 lt!2444887))))))

(declare-fun b!6781587 () Bool)

(declare-fun e!4093765 () Bool)

(assert (=> b!6781587 (= e!4093760 e!4093765)))

(declare-fun res!2772026 () Bool)

(assert (=> b!6781587 (=> (not res!2772026) (not e!4093765))))

(assert (=> b!6781587 (= res!2772026 (not lt!2444934))))

(declare-fun b!6781588 () Bool)

(declare-fun e!4093759 () Bool)

(assert (=> b!6781588 (= e!4093759 (not (= (head!13617 (_1!36881 (get!22974 lt!2444887))) (c!1259507 (reg!16932 r!7292)))))))

(declare-fun b!6781589 () Bool)

(declare-fun res!2772031 () Bool)

(assert (=> b!6781589 (=> res!2772031 e!4093760)))

(assert (=> b!6781589 (= res!2772031 (not ((_ is ElementMatch!16603) (reg!16932 r!7292))))))

(declare-fun e!4093761 () Bool)

(assert (=> b!6781589 (= e!4093761 e!4093760)))

(declare-fun b!6781590 () Bool)

(assert (=> b!6781590 (= e!4093763 (matchR!8786 (derivativeStep!5267 (reg!16932 r!7292) (head!13617 (_1!36881 (get!22974 lt!2444887)))) (tail!12702 (_1!36881 (get!22974 lt!2444887)))))))

(declare-fun b!6781592 () Bool)

(declare-fun res!2772025 () Bool)

(assert (=> b!6781592 (=> (not res!2772025) (not e!4093764))))

(assert (=> b!6781592 (= res!2772025 (isEmpty!38345 (tail!12702 (_1!36881 (get!22974 lt!2444887)))))))

(declare-fun b!6781593 () Bool)

(declare-fun e!4093762 () Bool)

(assert (=> b!6781593 (= e!4093762 (= lt!2444934 call!615307))))

(declare-fun b!6781594 () Bool)

(assert (=> b!6781594 (= e!4093762 e!4093761)))

(declare-fun c!1259874 () Bool)

(assert (=> b!6781594 (= c!1259874 ((_ is EmptyLang!16603) (reg!16932 r!7292)))))

(declare-fun b!6781595 () Bool)

(declare-fun res!2772029 () Bool)

(assert (=> b!6781595 (=> (not res!2772029) (not e!4093764))))

(assert (=> b!6781595 (= res!2772029 (not call!615307))))

(declare-fun b!6781596 () Bool)

(assert (=> b!6781596 (= e!4093761 (not lt!2444934))))

(declare-fun b!6781597 () Bool)

(declare-fun res!2772030 () Bool)

(assert (=> b!6781597 (=> res!2772030 e!4093759)))

(assert (=> b!6781597 (= res!2772030 (not (isEmpty!38345 (tail!12702 (_1!36881 (get!22974 lt!2444887))))))))

(declare-fun b!6781598 () Bool)

(assert (=> b!6781598 (= e!4093765 e!4093759)))

(declare-fun res!2772027 () Bool)

(assert (=> b!6781598 (=> res!2772027 e!4093759)))

(assert (=> b!6781598 (= res!2772027 call!615307)))

(declare-fun d!2130573 () Bool)

(assert (=> d!2130573 e!4093762))

(declare-fun c!1259876 () Bool)

(assert (=> d!2130573 (= c!1259876 ((_ is EmptyExpr!16603) (reg!16932 r!7292)))))

(assert (=> d!2130573 (= lt!2444934 e!4093763)))

(declare-fun c!1259875 () Bool)

(assert (=> d!2130573 (= c!1259875 (isEmpty!38345 (_1!36881 (get!22974 lt!2444887))))))

(assert (=> d!2130573 (validRegex!8339 (reg!16932 r!7292))))

(assert (=> d!2130573 (= (matchR!8786 (reg!16932 r!7292) (_1!36881 (get!22974 lt!2444887))) lt!2444934)))

(declare-fun b!6781591 () Bool)

(assert (=> b!6781591 (= e!4093764 (= (head!13617 (_1!36881 (get!22974 lt!2444887))) (c!1259507 (reg!16932 r!7292))))))

(assert (= (and d!2130573 c!1259875) b!6781586))

(assert (= (and d!2130573 (not c!1259875)) b!6781590))

(assert (= (and d!2130573 c!1259876) b!6781593))

(assert (= (and d!2130573 (not c!1259876)) b!6781594))

(assert (= (and b!6781594 c!1259874) b!6781596))

(assert (= (and b!6781594 (not c!1259874)) b!6781589))

(assert (= (and b!6781589 (not res!2772031)) b!6781585))

(assert (= (and b!6781585 res!2772028) b!6781595))

(assert (= (and b!6781595 res!2772029) b!6781592))

(assert (= (and b!6781592 res!2772025) b!6781591))

(assert (= (and b!6781585 (not res!2772032)) b!6781587))

(assert (= (and b!6781587 res!2772026) b!6781598))

(assert (= (and b!6781598 (not res!2772027)) b!6781597))

(assert (= (and b!6781597 (not res!2772030)) b!6781588))

(assert (= (or b!6781593 b!6781595 b!6781598) bm!615302))

(declare-fun m!7530202 () Bool)

(assert (=> d!2130573 m!7530202))

(assert (=> d!2130573 m!7529556))

(assert (=> b!6781586 m!7529520))

(assert (=> bm!615302 m!7530202))

(declare-fun m!7530204 () Bool)

(assert (=> b!6781597 m!7530204))

(assert (=> b!6781597 m!7530204))

(declare-fun m!7530206 () Bool)

(assert (=> b!6781597 m!7530206))

(declare-fun m!7530208 () Bool)

(assert (=> b!6781590 m!7530208))

(assert (=> b!6781590 m!7530208))

(declare-fun m!7530210 () Bool)

(assert (=> b!6781590 m!7530210))

(assert (=> b!6781590 m!7530204))

(assert (=> b!6781590 m!7530210))

(assert (=> b!6781590 m!7530204))

(declare-fun m!7530212 () Bool)

(assert (=> b!6781590 m!7530212))

(assert (=> b!6781591 m!7530208))

(assert (=> b!6781592 m!7530204))

(assert (=> b!6781592 m!7530204))

(assert (=> b!6781592 m!7530206))

(assert (=> b!6781588 m!7530208))

(assert (=> b!6781044 d!2130573))

(declare-fun d!2130585 () Bool)

(assert (=> d!2130585 (= (get!22974 lt!2444887) (v!52695 lt!2444887))))

(assert (=> b!6781044 d!2130585))

(declare-fun d!2130587 () Bool)

(assert (=> d!2130587 (= ($colon$colon!2412 (exprs!6487 (Context!11975 Nil!65985)) (ite (or c!1259665 c!1259664) (regTwo!33718 r!7292) r!7292)) (Cons!65985 (ite (or c!1259665 c!1259664) (regTwo!33718 r!7292) r!7292) (exprs!6487 (Context!11975 Nil!65985))))))

(assert (=> bm!615168 d!2130587))

(declare-fun bs!1806014 () Bool)

(declare-fun d!2130589 () Bool)

(assert (= bs!1806014 (and d!2130589 d!2130513)))

(declare-fun lambda!381719 () Int)

(assert (=> bs!1806014 (= lambda!381719 lambda!381715)))

(declare-fun bs!1806015 () Bool)

(assert (= bs!1806015 (and d!2130589 d!2130353)))

(assert (=> bs!1806015 (= lambda!381719 lambda!381697)))

(declare-fun bs!1806016 () Bool)

(assert (= bs!1806016 (and d!2130589 d!2130379)))

(assert (=> bs!1806016 (= lambda!381719 lambda!381701)))

(declare-fun bs!1806017 () Bool)

(assert (= bs!1806017 (and d!2130589 d!2130155)))

(assert (=> bs!1806017 (= lambda!381719 lambda!381620)))

(declare-fun bs!1806018 () Bool)

(assert (= bs!1806018 (and d!2130589 d!2130261)))

(assert (=> bs!1806018 (= lambda!381719 lambda!381668)))

(declare-fun bs!1806019 () Bool)

(assert (= bs!1806019 (and d!2130589 d!2130483)))

(assert (=> bs!1806019 (= lambda!381719 lambda!381708)))

(declare-fun bs!1806020 () Bool)

(assert (= bs!1806020 (and d!2130589 d!2130195)))

(assert (=> bs!1806020 (= lambda!381719 lambda!381638)))

(declare-fun bs!1806022 () Bool)

(assert (= bs!1806022 (and d!2130589 d!2130157)))

(assert (=> bs!1806022 (= lambda!381719 lambda!381623)))

(declare-fun b!6781600 () Bool)

(declare-fun e!4093768 () Bool)

(declare-fun lt!2444935 () Regex!16603)

(assert (=> b!6781600 (= e!4093768 (isConcat!1484 lt!2444935))))

(declare-fun b!6781601 () Bool)

(declare-fun e!4093769 () Regex!16603)

(assert (=> b!6781601 (= e!4093769 (h!72433 (t!379824 (exprs!6487 (h!72434 zl!343)))))))

(declare-fun b!6781602 () Bool)

(declare-fun e!4093770 () Regex!16603)

(assert (=> b!6781602 (= e!4093769 e!4093770)))

(declare-fun c!1259879 () Bool)

(assert (=> b!6781602 (= c!1259879 ((_ is Cons!65985) (t!379824 (exprs!6487 (h!72434 zl!343)))))))

(declare-fun b!6781603 () Bool)

(declare-fun e!4093772 () Bool)

(assert (=> b!6781603 (= e!4093772 e!4093768)))

(declare-fun c!1259878 () Bool)

(assert (=> b!6781603 (= c!1259878 (isEmpty!38347 (tail!12701 (t!379824 (exprs!6487 (h!72434 zl!343))))))))

(declare-fun b!6781604 () Bool)

(assert (=> b!6781604 (= e!4093772 (isEmptyExpr!1961 lt!2444935))))

(declare-fun b!6781605 () Bool)

(assert (=> b!6781605 (= e!4093770 (Concat!25448 (h!72433 (t!379824 (exprs!6487 (h!72434 zl!343)))) (generalisedConcat!2200 (t!379824 (t!379824 (exprs!6487 (h!72434 zl!343)))))))))

(declare-fun b!6781606 () Bool)

(declare-fun e!4093767 () Bool)

(assert (=> b!6781606 (= e!4093767 (isEmpty!38347 (t!379824 (t!379824 (exprs!6487 (h!72434 zl!343))))))))

(declare-fun e!4093771 () Bool)

(assert (=> d!2130589 e!4093771))

(declare-fun res!2772035 () Bool)

(assert (=> d!2130589 (=> (not res!2772035) (not e!4093771))))

(assert (=> d!2130589 (= res!2772035 (validRegex!8339 lt!2444935))))

(assert (=> d!2130589 (= lt!2444935 e!4093769)))

(declare-fun c!1259880 () Bool)

(assert (=> d!2130589 (= c!1259880 e!4093767)))

(declare-fun res!2772036 () Bool)

(assert (=> d!2130589 (=> (not res!2772036) (not e!4093767))))

(assert (=> d!2130589 (= res!2772036 ((_ is Cons!65985) (t!379824 (exprs!6487 (h!72434 zl!343)))))))

(assert (=> d!2130589 (forall!15794 (t!379824 (exprs!6487 (h!72434 zl!343))) lambda!381719)))

(assert (=> d!2130589 (= (generalisedConcat!2200 (t!379824 (exprs!6487 (h!72434 zl!343)))) lt!2444935)))

(declare-fun b!6781607 () Bool)

(assert (=> b!6781607 (= e!4093768 (= lt!2444935 (head!13616 (t!379824 (exprs!6487 (h!72434 zl!343))))))))

(declare-fun b!6781608 () Bool)

(assert (=> b!6781608 (= e!4093770 EmptyExpr!16603)))

(declare-fun b!6781609 () Bool)

(assert (=> b!6781609 (= e!4093771 e!4093772)))

(declare-fun c!1259877 () Bool)

(assert (=> b!6781609 (= c!1259877 (isEmpty!38347 (t!379824 (exprs!6487 (h!72434 zl!343)))))))

(assert (= (and d!2130589 res!2772036) b!6781606))

(assert (= (and d!2130589 c!1259880) b!6781601))

(assert (= (and d!2130589 (not c!1259880)) b!6781602))

(assert (= (and b!6781602 c!1259879) b!6781605))

(assert (= (and b!6781602 (not c!1259879)) b!6781608))

(assert (= (and d!2130589 res!2772035) b!6781609))

(assert (= (and b!6781609 c!1259877) b!6781604))

(assert (= (and b!6781609 (not c!1259877)) b!6781603))

(assert (= (and b!6781603 c!1259878) b!6781607))

(assert (= (and b!6781603 (not c!1259878)) b!6781600))

(declare-fun m!7530216 () Bool)

(assert (=> b!6781605 m!7530216))

(declare-fun m!7530218 () Bool)

(assert (=> b!6781603 m!7530218))

(assert (=> b!6781603 m!7530218))

(declare-fun m!7530220 () Bool)

(assert (=> b!6781603 m!7530220))

(assert (=> b!6781609 m!7529324))

(declare-fun m!7530222 () Bool)

(assert (=> b!6781600 m!7530222))

(declare-fun m!7530224 () Bool)

(assert (=> b!6781606 m!7530224))

(declare-fun m!7530226 () Bool)

(assert (=> b!6781607 m!7530226))

(declare-fun m!7530228 () Bool)

(assert (=> d!2130589 m!7530228))

(declare-fun m!7530230 () Bool)

(assert (=> d!2130589 m!7530230))

(declare-fun m!7530232 () Bool)

(assert (=> b!6781604 m!7530232))

(assert (=> b!6780548 d!2130589))

(declare-fun d!2130595 () Bool)

(declare-fun res!2772047 () Bool)

(declare-fun e!4093781 () Bool)

(assert (=> d!2130595 (=> res!2772047 e!4093781)))

(assert (=> d!2130595 (= res!2772047 ((_ is ElementMatch!16603) lt!2444849))))

(assert (=> d!2130595 (= (validRegex!8339 lt!2444849) e!4093781)))

(declare-fun b!6781624 () Bool)

(declare-fun e!4093782 () Bool)

(assert (=> b!6781624 (= e!4093781 e!4093782)))

(declare-fun c!1259884 () Bool)

(assert (=> b!6781624 (= c!1259884 ((_ is Star!16603) lt!2444849))))

(declare-fun bm!615304 () Bool)

(declare-fun call!615311 () Bool)

(declare-fun call!615309 () Bool)

(assert (=> bm!615304 (= call!615311 call!615309)))

(declare-fun b!6781625 () Bool)

(declare-fun e!4093786 () Bool)

(assert (=> b!6781625 (= e!4093782 e!4093786)))

(declare-fun c!1259885 () Bool)

(assert (=> b!6781625 (= c!1259885 ((_ is Union!16603) lt!2444849))))

(declare-fun bm!615305 () Bool)

(assert (=> bm!615305 (= call!615309 (validRegex!8339 (ite c!1259884 (reg!16932 lt!2444849) (ite c!1259885 (regTwo!33719 lt!2444849) (regTwo!33718 lt!2444849)))))))

(declare-fun b!6781626 () Bool)

(declare-fun res!2772045 () Bool)

(declare-fun e!4093785 () Bool)

(assert (=> b!6781626 (=> res!2772045 e!4093785)))

(assert (=> b!6781626 (= res!2772045 (not ((_ is Concat!25448) lt!2444849)))))

(assert (=> b!6781626 (= e!4093786 e!4093785)))

(declare-fun b!6781627 () Bool)

(declare-fun e!4093783 () Bool)

(assert (=> b!6781627 (= e!4093783 call!615311)))

(declare-fun bm!615306 () Bool)

(declare-fun call!615310 () Bool)

(assert (=> bm!615306 (= call!615310 (validRegex!8339 (ite c!1259885 (regOne!33719 lt!2444849) (regOne!33718 lt!2444849))))))

(declare-fun b!6781628 () Bool)

(declare-fun e!4093780 () Bool)

(assert (=> b!6781628 (= e!4093782 e!4093780)))

(declare-fun res!2772049 () Bool)

(assert (=> b!6781628 (= res!2772049 (not (nullable!6582 (reg!16932 lt!2444849))))))

(assert (=> b!6781628 (=> (not res!2772049) (not e!4093780))))

(declare-fun b!6781629 () Bool)

(assert (=> b!6781629 (= e!4093785 e!4093783)))

(declare-fun res!2772048 () Bool)

(assert (=> b!6781629 (=> (not res!2772048) (not e!4093783))))

(assert (=> b!6781629 (= res!2772048 call!615310)))

(declare-fun b!6781630 () Bool)

(declare-fun e!4093784 () Bool)

(assert (=> b!6781630 (= e!4093784 call!615311)))

(declare-fun b!6781631 () Bool)

(assert (=> b!6781631 (= e!4093780 call!615309)))

(declare-fun b!6781632 () Bool)

(declare-fun res!2772046 () Bool)

(assert (=> b!6781632 (=> (not res!2772046) (not e!4093784))))

(assert (=> b!6781632 (= res!2772046 call!615310)))

(assert (=> b!6781632 (= e!4093786 e!4093784)))

(assert (= (and d!2130595 (not res!2772047)) b!6781624))

(assert (= (and b!6781624 c!1259884) b!6781628))

(assert (= (and b!6781624 (not c!1259884)) b!6781625))

(assert (= (and b!6781628 res!2772049) b!6781631))

(assert (= (and b!6781625 c!1259885) b!6781632))

(assert (= (and b!6781625 (not c!1259885)) b!6781626))

(assert (= (and b!6781632 res!2772046) b!6781630))

(assert (= (and b!6781626 (not res!2772045)) b!6781629))

(assert (= (and b!6781629 res!2772048) b!6781627))

(assert (= (or b!6781630 b!6781627) bm!615304))

(assert (= (or b!6781632 b!6781629) bm!615306))

(assert (= (or b!6781631 bm!615304) bm!615305))

(declare-fun m!7530246 () Bool)

(assert (=> bm!615305 m!7530246))

(declare-fun m!7530248 () Bool)

(assert (=> bm!615306 m!7530248))

(declare-fun m!7530252 () Bool)

(assert (=> b!6781628 m!7530252))

(assert (=> d!2130277 d!2130595))

(declare-fun bs!1806024 () Bool)

(declare-fun d!2130597 () Bool)

(assert (= bs!1806024 (and d!2130597 d!2130513)))

(declare-fun lambda!381720 () Int)

(assert (=> bs!1806024 (= lambda!381720 lambda!381715)))

(declare-fun bs!1806025 () Bool)

(assert (= bs!1806025 (and d!2130597 d!2130353)))

(assert (=> bs!1806025 (= lambda!381720 lambda!381697)))

(declare-fun bs!1806026 () Bool)

(assert (= bs!1806026 (and d!2130597 d!2130379)))

(assert (=> bs!1806026 (= lambda!381720 lambda!381701)))

(declare-fun bs!1806027 () Bool)

(assert (= bs!1806027 (and d!2130597 d!2130155)))

(assert (=> bs!1806027 (= lambda!381720 lambda!381620)))

(declare-fun bs!1806028 () Bool)

(assert (= bs!1806028 (and d!2130597 d!2130261)))

(assert (=> bs!1806028 (= lambda!381720 lambda!381668)))

(declare-fun bs!1806029 () Bool)

(assert (= bs!1806029 (and d!2130597 d!2130483)))

(assert (=> bs!1806029 (= lambda!381720 lambda!381708)))

(declare-fun bs!1806030 () Bool)

(assert (= bs!1806030 (and d!2130597 d!2130157)))

(assert (=> bs!1806030 (= lambda!381720 lambda!381623)))

(declare-fun bs!1806031 () Bool)

(assert (= bs!1806031 (and d!2130597 d!2130589)))

(assert (=> bs!1806031 (= lambda!381720 lambda!381719)))

(declare-fun bs!1806032 () Bool)

(assert (= bs!1806032 (and d!2130597 d!2130195)))

(assert (=> bs!1806032 (= lambda!381720 lambda!381638)))

(declare-fun b!6781633 () Bool)

(declare-fun e!4093792 () Regex!16603)

(declare-fun e!4093787 () Regex!16603)

(assert (=> b!6781633 (= e!4093792 e!4093787)))

(declare-fun c!1259888 () Bool)

(assert (=> b!6781633 (= c!1259888 ((_ is Cons!65985) (unfocusZipperList!2024 lt!2444784)))))

(declare-fun b!6781634 () Bool)

(declare-fun e!4093791 () Bool)

(declare-fun e!4093790 () Bool)

(assert (=> b!6781634 (= e!4093791 e!4093790)))

(declare-fun c!1259886 () Bool)

(assert (=> b!6781634 (= c!1259886 (isEmpty!38347 (unfocusZipperList!2024 lt!2444784)))))

(declare-fun b!6781635 () Bool)

(assert (=> b!6781635 (= e!4093792 (h!72433 (unfocusZipperList!2024 lt!2444784)))))

(declare-fun b!6781636 () Bool)

(assert (=> b!6781636 (= e!4093787 (Union!16603 (h!72433 (unfocusZipperList!2024 lt!2444784)) (generalisedUnion!2447 (t!379824 (unfocusZipperList!2024 lt!2444784)))))))

(declare-fun b!6781637 () Bool)

(assert (=> b!6781637 (= e!4093787 EmptyLang!16603)))

(declare-fun b!6781638 () Bool)

(declare-fun lt!2444937 () Regex!16603)

(assert (=> b!6781638 (= e!4093790 (isEmptyLang!1968 lt!2444937))))

(declare-fun b!6781639 () Bool)

(declare-fun e!4093789 () Bool)

(assert (=> b!6781639 (= e!4093789 (= lt!2444937 (head!13616 (unfocusZipperList!2024 lt!2444784))))))

(assert (=> d!2130597 e!4093791))

(declare-fun res!2772051 () Bool)

(assert (=> d!2130597 (=> (not res!2772051) (not e!4093791))))

(assert (=> d!2130597 (= res!2772051 (validRegex!8339 lt!2444937))))

(assert (=> d!2130597 (= lt!2444937 e!4093792)))

(declare-fun c!1259889 () Bool)

(declare-fun e!4093788 () Bool)

(assert (=> d!2130597 (= c!1259889 e!4093788)))

(declare-fun res!2772050 () Bool)

(assert (=> d!2130597 (=> (not res!2772050) (not e!4093788))))

(assert (=> d!2130597 (= res!2772050 ((_ is Cons!65985) (unfocusZipperList!2024 lt!2444784)))))

(assert (=> d!2130597 (forall!15794 (unfocusZipperList!2024 lt!2444784) lambda!381720)))

(assert (=> d!2130597 (= (generalisedUnion!2447 (unfocusZipperList!2024 lt!2444784)) lt!2444937)))

(declare-fun b!6781640 () Bool)

(assert (=> b!6781640 (= e!4093788 (isEmpty!38347 (t!379824 (unfocusZipperList!2024 lt!2444784))))))

(declare-fun b!6781641 () Bool)

(assert (=> b!6781641 (= e!4093789 (isUnion!1398 lt!2444937))))

(declare-fun b!6781642 () Bool)

(assert (=> b!6781642 (= e!4093790 e!4093789)))

(declare-fun c!1259887 () Bool)

(assert (=> b!6781642 (= c!1259887 (isEmpty!38347 (tail!12701 (unfocusZipperList!2024 lt!2444784))))))

(assert (= (and d!2130597 res!2772050) b!6781640))

(assert (= (and d!2130597 c!1259889) b!6781635))

(assert (= (and d!2130597 (not c!1259889)) b!6781633))

(assert (= (and b!6781633 c!1259888) b!6781636))

(assert (= (and b!6781633 (not c!1259888)) b!6781637))

(assert (= (and d!2130597 res!2772051) b!6781634))

(assert (= (and b!6781634 c!1259886) b!6781638))

(assert (= (and b!6781634 (not c!1259886)) b!6781642))

(assert (= (and b!6781642 c!1259887) b!6781639))

(assert (= (and b!6781642 (not c!1259887)) b!6781641))

(assert (=> b!6781642 m!7529524))

(declare-fun m!7530262 () Bool)

(assert (=> b!6781642 m!7530262))

(assert (=> b!6781642 m!7530262))

(declare-fun m!7530264 () Bool)

(assert (=> b!6781642 m!7530264))

(assert (=> b!6781634 m!7529524))

(declare-fun m!7530266 () Bool)

(assert (=> b!6781634 m!7530266))

(assert (=> b!6781639 m!7529524))

(declare-fun m!7530268 () Bool)

(assert (=> b!6781639 m!7530268))

(declare-fun m!7530270 () Bool)

(assert (=> b!6781640 m!7530270))

(declare-fun m!7530272 () Bool)

(assert (=> d!2130597 m!7530272))

(assert (=> d!2130597 m!7529524))

(declare-fun m!7530274 () Bool)

(assert (=> d!2130597 m!7530274))

(declare-fun m!7530276 () Bool)

(assert (=> b!6781641 m!7530276))

(declare-fun m!7530278 () Bool)

(assert (=> b!6781636 m!7530278))

(declare-fun m!7530280 () Bool)

(assert (=> b!6781638 m!7530280))

(assert (=> d!2130277 d!2130597))

(declare-fun bs!1806033 () Bool)

(declare-fun d!2130603 () Bool)

(assert (= bs!1806033 (and d!2130603 d!2130513)))

(declare-fun lambda!381721 () Int)

(assert (=> bs!1806033 (= lambda!381721 lambda!381715)))

(declare-fun bs!1806034 () Bool)

(assert (= bs!1806034 (and d!2130603 d!2130379)))

(assert (=> bs!1806034 (= lambda!381721 lambda!381701)))

(declare-fun bs!1806035 () Bool)

(assert (= bs!1806035 (and d!2130603 d!2130155)))

(assert (=> bs!1806035 (= lambda!381721 lambda!381620)))

(declare-fun bs!1806036 () Bool)

(assert (= bs!1806036 (and d!2130603 d!2130261)))

(assert (=> bs!1806036 (= lambda!381721 lambda!381668)))

(declare-fun bs!1806037 () Bool)

(assert (= bs!1806037 (and d!2130603 d!2130483)))

(assert (=> bs!1806037 (= lambda!381721 lambda!381708)))

(declare-fun bs!1806038 () Bool)

(assert (= bs!1806038 (and d!2130603 d!2130157)))

(assert (=> bs!1806038 (= lambda!381721 lambda!381623)))

(declare-fun bs!1806039 () Bool)

(assert (= bs!1806039 (and d!2130603 d!2130353)))

(assert (=> bs!1806039 (= lambda!381721 lambda!381697)))

(declare-fun bs!1806040 () Bool)

(assert (= bs!1806040 (and d!2130603 d!2130597)))

(assert (=> bs!1806040 (= lambda!381721 lambda!381720)))

(declare-fun bs!1806041 () Bool)

(assert (= bs!1806041 (and d!2130603 d!2130589)))

(assert (=> bs!1806041 (= lambda!381721 lambda!381719)))

(declare-fun bs!1806042 () Bool)

(assert (= bs!1806042 (and d!2130603 d!2130195)))

(assert (=> bs!1806042 (= lambda!381721 lambda!381638)))

(declare-fun lt!2444939 () List!66109)

(assert (=> d!2130603 (forall!15794 lt!2444939 lambda!381721)))

(declare-fun e!4093804 () List!66109)

(assert (=> d!2130603 (= lt!2444939 e!4093804)))

(declare-fun c!1259900 () Bool)

(assert (=> d!2130603 (= c!1259900 ((_ is Cons!65986) lt!2444784))))

(assert (=> d!2130603 (= (unfocusZipperList!2024 lt!2444784) lt!2444939)))

(declare-fun b!6781664 () Bool)

(assert (=> b!6781664 (= e!4093804 (Cons!65985 (generalisedConcat!2200 (exprs!6487 (h!72434 lt!2444784))) (unfocusZipperList!2024 (t!379825 lt!2444784))))))

(declare-fun b!6781665 () Bool)

(assert (=> b!6781665 (= e!4093804 Nil!65985)))

(assert (= (and d!2130603 c!1259900) b!6781664))

(assert (= (and d!2130603 (not c!1259900)) b!6781665))

(declare-fun m!7530292 () Bool)

(assert (=> d!2130603 m!7530292))

(declare-fun m!7530294 () Bool)

(assert (=> b!6781664 m!7530294))

(declare-fun m!7530296 () Bool)

(assert (=> b!6781664 m!7530296))

(assert (=> d!2130277 d!2130603))

(assert (=> d!2130319 d!2130479))

(declare-fun b!6781677 () Bool)

(declare-fun res!2772061 () Bool)

(declare-fun e!4093812 () Bool)

(assert (=> b!6781677 (=> res!2772061 e!4093812)))

(declare-fun e!4093816 () Bool)

(assert (=> b!6781677 (= res!2772061 e!4093816)))

(declare-fun res!2772057 () Bool)

(assert (=> b!6781677 (=> (not res!2772057) (not e!4093816))))

(declare-fun lt!2444940 () Bool)

(assert (=> b!6781677 (= res!2772057 lt!2444940)))

(declare-fun b!6781678 () Bool)

(declare-fun e!4093815 () Bool)

(assert (=> b!6781678 (= e!4093815 (nullable!6582 (reg!16932 r!7292)))))

(declare-fun bm!615323 () Bool)

(declare-fun call!615328 () Bool)

(assert (=> bm!615323 (= call!615328 (isEmpty!38345 Nil!65984))))

(declare-fun b!6781679 () Bool)

(declare-fun e!4093817 () Bool)

(assert (=> b!6781679 (= e!4093812 e!4093817)))

(declare-fun res!2772055 () Bool)

(assert (=> b!6781679 (=> (not res!2772055) (not e!4093817))))

(assert (=> b!6781679 (= res!2772055 (not lt!2444940))))

(declare-fun b!6781680 () Bool)

(declare-fun e!4093811 () Bool)

(assert (=> b!6781680 (= e!4093811 (not (= (head!13617 Nil!65984) (c!1259507 (reg!16932 r!7292)))))))

(declare-fun b!6781681 () Bool)

(declare-fun res!2772060 () Bool)

(assert (=> b!6781681 (=> res!2772060 e!4093812)))

(assert (=> b!6781681 (= res!2772060 (not ((_ is ElementMatch!16603) (reg!16932 r!7292))))))

(declare-fun e!4093813 () Bool)

(assert (=> b!6781681 (= e!4093813 e!4093812)))

(declare-fun b!6781682 () Bool)

(assert (=> b!6781682 (= e!4093815 (matchR!8786 (derivativeStep!5267 (reg!16932 r!7292) (head!13617 Nil!65984)) (tail!12702 Nil!65984)))))

(declare-fun b!6781684 () Bool)

(declare-fun res!2772054 () Bool)

(assert (=> b!6781684 (=> (not res!2772054) (not e!4093816))))

(assert (=> b!6781684 (= res!2772054 (isEmpty!38345 (tail!12702 Nil!65984)))))

(declare-fun b!6781685 () Bool)

(declare-fun e!4093814 () Bool)

(assert (=> b!6781685 (= e!4093814 (= lt!2444940 call!615328))))

(declare-fun b!6781686 () Bool)

(assert (=> b!6781686 (= e!4093814 e!4093813)))

(declare-fun c!1259906 () Bool)

(assert (=> b!6781686 (= c!1259906 ((_ is EmptyLang!16603) (reg!16932 r!7292)))))

(declare-fun b!6781687 () Bool)

(declare-fun res!2772058 () Bool)

(assert (=> b!6781687 (=> (not res!2772058) (not e!4093816))))

(assert (=> b!6781687 (= res!2772058 (not call!615328))))

(declare-fun b!6781688 () Bool)

(assert (=> b!6781688 (= e!4093813 (not lt!2444940))))

(declare-fun b!6781689 () Bool)

(declare-fun res!2772059 () Bool)

(assert (=> b!6781689 (=> res!2772059 e!4093811)))

(assert (=> b!6781689 (= res!2772059 (not (isEmpty!38345 (tail!12702 Nil!65984))))))

(declare-fun b!6781690 () Bool)

(assert (=> b!6781690 (= e!4093817 e!4093811)))

(declare-fun res!2772056 () Bool)

(assert (=> b!6781690 (=> res!2772056 e!4093811)))

(assert (=> b!6781690 (= res!2772056 call!615328)))

(declare-fun d!2130607 () Bool)

(assert (=> d!2130607 e!4093814))

(declare-fun c!1259908 () Bool)

(assert (=> d!2130607 (= c!1259908 ((_ is EmptyExpr!16603) (reg!16932 r!7292)))))

(assert (=> d!2130607 (= lt!2444940 e!4093815)))

(declare-fun c!1259907 () Bool)

(assert (=> d!2130607 (= c!1259907 (isEmpty!38345 Nil!65984))))

(assert (=> d!2130607 (validRegex!8339 (reg!16932 r!7292))))

(assert (=> d!2130607 (= (matchR!8786 (reg!16932 r!7292) Nil!65984) lt!2444940)))

(declare-fun b!6781683 () Bool)

(assert (=> b!6781683 (= e!4093816 (= (head!13617 Nil!65984) (c!1259507 (reg!16932 r!7292))))))

(assert (= (and d!2130607 c!1259907) b!6781678))

(assert (= (and d!2130607 (not c!1259907)) b!6781682))

(assert (= (and d!2130607 c!1259908) b!6781685))

(assert (= (and d!2130607 (not c!1259908)) b!6781686))

(assert (= (and b!6781686 c!1259906) b!6781688))

(assert (= (and b!6781686 (not c!1259906)) b!6781681))

(assert (= (and b!6781681 (not res!2772060)) b!6781677))

(assert (= (and b!6781677 res!2772057) b!6781687))

(assert (= (and b!6781687 res!2772058) b!6781684))

(assert (= (and b!6781684 res!2772054) b!6781683))

(assert (= (and b!6781677 (not res!2772061)) b!6781679))

(assert (= (and b!6781679 res!2772055) b!6781690))

(assert (= (and b!6781690 (not res!2772056)) b!6781689))

(assert (= (and b!6781689 (not res!2772059)) b!6781680))

(assert (= (or b!6781685 b!6781687 b!6781690) bm!615323))

(declare-fun m!7530302 () Bool)

(assert (=> d!2130607 m!7530302))

(assert (=> d!2130607 m!7529556))

(assert (=> b!6781678 m!7529520))

(assert (=> bm!615323 m!7530302))

(declare-fun m!7530306 () Bool)

(assert (=> b!6781689 m!7530306))

(assert (=> b!6781689 m!7530306))

(declare-fun m!7530310 () Bool)

(assert (=> b!6781689 m!7530310))

(declare-fun m!7530312 () Bool)

(assert (=> b!6781682 m!7530312))

(assert (=> b!6781682 m!7530312))

(declare-fun m!7530314 () Bool)

(assert (=> b!6781682 m!7530314))

(assert (=> b!6781682 m!7530306))

(assert (=> b!6781682 m!7530314))

(assert (=> b!6781682 m!7530306))

(declare-fun m!7530316 () Bool)

(assert (=> b!6781682 m!7530316))

(assert (=> b!6781683 m!7530312))

(assert (=> b!6781684 m!7530306))

(assert (=> b!6781684 m!7530306))

(assert (=> b!6781684 m!7530310))

(assert (=> b!6781680 m!7530312))

(assert (=> d!2130319 d!2130607))

(declare-fun d!2130611 () Bool)

(declare-fun res!2772064 () Bool)

(declare-fun e!4093819 () Bool)

(assert (=> d!2130611 (=> res!2772064 e!4093819)))

(assert (=> d!2130611 (= res!2772064 ((_ is ElementMatch!16603) (reg!16932 r!7292)))))

(assert (=> d!2130611 (= (validRegex!8339 (reg!16932 r!7292)) e!4093819)))

(declare-fun b!6781691 () Bool)

(declare-fun e!4093820 () Bool)

(assert (=> b!6781691 (= e!4093819 e!4093820)))

(declare-fun c!1259909 () Bool)

(assert (=> b!6781691 (= c!1259909 ((_ is Star!16603) (reg!16932 r!7292)))))

(declare-fun bm!615324 () Bool)

(declare-fun call!615331 () Bool)

(declare-fun call!615329 () Bool)

(assert (=> bm!615324 (= call!615331 call!615329)))

(declare-fun b!6781692 () Bool)

(declare-fun e!4093824 () Bool)

(assert (=> b!6781692 (= e!4093820 e!4093824)))

(declare-fun c!1259910 () Bool)

(assert (=> b!6781692 (= c!1259910 ((_ is Union!16603) (reg!16932 r!7292)))))

(declare-fun bm!615325 () Bool)

(assert (=> bm!615325 (= call!615329 (validRegex!8339 (ite c!1259909 (reg!16932 (reg!16932 r!7292)) (ite c!1259910 (regTwo!33719 (reg!16932 r!7292)) (regTwo!33718 (reg!16932 r!7292))))))))

(declare-fun b!6781693 () Bool)

(declare-fun res!2772062 () Bool)

(declare-fun e!4093823 () Bool)

(assert (=> b!6781693 (=> res!2772062 e!4093823)))

(assert (=> b!6781693 (= res!2772062 (not ((_ is Concat!25448) (reg!16932 r!7292))))))

(assert (=> b!6781693 (= e!4093824 e!4093823)))

(declare-fun b!6781694 () Bool)

(declare-fun e!4093821 () Bool)

(assert (=> b!6781694 (= e!4093821 call!615331)))

(declare-fun bm!615326 () Bool)

(declare-fun call!615330 () Bool)

(assert (=> bm!615326 (= call!615330 (validRegex!8339 (ite c!1259910 (regOne!33719 (reg!16932 r!7292)) (regOne!33718 (reg!16932 r!7292)))))))

(declare-fun b!6781695 () Bool)

(declare-fun e!4093818 () Bool)

(assert (=> b!6781695 (= e!4093820 e!4093818)))

(declare-fun res!2772066 () Bool)

(assert (=> b!6781695 (= res!2772066 (not (nullable!6582 (reg!16932 (reg!16932 r!7292)))))))

(assert (=> b!6781695 (=> (not res!2772066) (not e!4093818))))

(declare-fun b!6781696 () Bool)

(assert (=> b!6781696 (= e!4093823 e!4093821)))

(declare-fun res!2772065 () Bool)

(assert (=> b!6781696 (=> (not res!2772065) (not e!4093821))))

(assert (=> b!6781696 (= res!2772065 call!615330)))

(declare-fun b!6781697 () Bool)

(declare-fun e!4093822 () Bool)

(assert (=> b!6781697 (= e!4093822 call!615331)))

(declare-fun b!6781698 () Bool)

(assert (=> b!6781698 (= e!4093818 call!615329)))

(declare-fun b!6781699 () Bool)

(declare-fun res!2772063 () Bool)

(assert (=> b!6781699 (=> (not res!2772063) (not e!4093822))))

(assert (=> b!6781699 (= res!2772063 call!615330)))

(assert (=> b!6781699 (= e!4093824 e!4093822)))

(assert (= (and d!2130611 (not res!2772064)) b!6781691))

(assert (= (and b!6781691 c!1259909) b!6781695))

(assert (= (and b!6781691 (not c!1259909)) b!6781692))

(assert (= (and b!6781695 res!2772066) b!6781698))

(assert (= (and b!6781692 c!1259910) b!6781699))

(assert (= (and b!6781692 (not c!1259910)) b!6781693))

(assert (= (and b!6781699 res!2772063) b!6781697))

(assert (= (and b!6781693 (not res!2772062)) b!6781696))

(assert (= (and b!6781696 res!2772065) b!6781694))

(assert (= (or b!6781697 b!6781694) bm!615324))

(assert (= (or b!6781699 b!6781696) bm!615326))

(assert (= (or b!6781698 bm!615324) bm!615325))

(declare-fun m!7530324 () Bool)

(assert (=> bm!615325 m!7530324))

(declare-fun m!7530326 () Bool)

(assert (=> bm!615326 m!7530326))

(declare-fun m!7530328 () Bool)

(assert (=> b!6781695 m!7530328))

(assert (=> d!2130319 d!2130611))

(declare-fun d!2130617 () Bool)

(assert (=> d!2130617 (= (isEmpty!38347 (tail!12701 (exprs!6487 (h!72434 zl!343)))) ((_ is Nil!65985) (tail!12701 (exprs!6487 (h!72434 zl!343)))))))

(assert (=> b!6780546 d!2130617))

(declare-fun d!2130619 () Bool)

(assert (=> d!2130619 (= (tail!12701 (exprs!6487 (h!72434 zl!343))) (t!379824 (exprs!6487 (h!72434 zl!343))))))

(assert (=> b!6780546 d!2130619))

(declare-fun d!2130621 () Bool)

(assert (=> d!2130621 (= (nullable!6582 (regOne!33718 (reg!16932 r!7292))) (nullableFct!2488 (regOne!33718 (reg!16932 r!7292))))))

(declare-fun bs!1806045 () Bool)

(assert (= bs!1806045 d!2130621))

(declare-fun m!7530330 () Bool)

(assert (=> bs!1806045 m!7530330))

(assert (=> b!6780851 d!2130621))

(declare-fun d!2130623 () Bool)

(assert (=> d!2130623 (= (nullable!6582 (reg!16932 r!7292)) (nullableFct!2488 (reg!16932 r!7292)))))

(declare-fun bs!1806046 () Bool)

(assert (= bs!1806046 d!2130623))

(declare-fun m!7530332 () Bool)

(assert (=> bs!1806046 m!7530332))

(assert (=> b!6781157 d!2130623))

(assert (=> d!2130375 d!2130317))

(declare-fun d!2130625 () Bool)

(declare-fun res!2772069 () Bool)

(declare-fun e!4093826 () Bool)

(assert (=> d!2130625 (=> res!2772069 e!4093826)))

(assert (=> d!2130625 (= res!2772069 ((_ is ElementMatch!16603) lt!2444765))))

(assert (=> d!2130625 (= (validRegex!8339 lt!2444765) e!4093826)))

(declare-fun b!6781700 () Bool)

(declare-fun e!4093827 () Bool)

(assert (=> b!6781700 (= e!4093826 e!4093827)))

(declare-fun c!1259911 () Bool)

(assert (=> b!6781700 (= c!1259911 ((_ is Star!16603) lt!2444765))))

(declare-fun bm!615327 () Bool)

(declare-fun call!615334 () Bool)

(declare-fun call!615332 () Bool)

(assert (=> bm!615327 (= call!615334 call!615332)))

(declare-fun b!6781701 () Bool)

(declare-fun e!4093831 () Bool)

(assert (=> b!6781701 (= e!4093827 e!4093831)))

(declare-fun c!1259912 () Bool)

(assert (=> b!6781701 (= c!1259912 ((_ is Union!16603) lt!2444765))))

(declare-fun bm!615328 () Bool)

(assert (=> bm!615328 (= call!615332 (validRegex!8339 (ite c!1259911 (reg!16932 lt!2444765) (ite c!1259912 (regTwo!33719 lt!2444765) (regTwo!33718 lt!2444765)))))))

(declare-fun b!6781702 () Bool)

(declare-fun res!2772067 () Bool)

(declare-fun e!4093830 () Bool)

(assert (=> b!6781702 (=> res!2772067 e!4093830)))

(assert (=> b!6781702 (= res!2772067 (not ((_ is Concat!25448) lt!2444765)))))

(assert (=> b!6781702 (= e!4093831 e!4093830)))

(declare-fun b!6781703 () Bool)

(declare-fun e!4093828 () Bool)

(assert (=> b!6781703 (= e!4093828 call!615334)))

(declare-fun bm!615329 () Bool)

(declare-fun call!615333 () Bool)

(assert (=> bm!615329 (= call!615333 (validRegex!8339 (ite c!1259912 (regOne!33719 lt!2444765) (regOne!33718 lt!2444765))))))

(declare-fun b!6781704 () Bool)

(declare-fun e!4093825 () Bool)

(assert (=> b!6781704 (= e!4093827 e!4093825)))

(declare-fun res!2772071 () Bool)

(assert (=> b!6781704 (= res!2772071 (not (nullable!6582 (reg!16932 lt!2444765))))))

(assert (=> b!6781704 (=> (not res!2772071) (not e!4093825))))

(declare-fun b!6781705 () Bool)

(assert (=> b!6781705 (= e!4093830 e!4093828)))

(declare-fun res!2772070 () Bool)

(assert (=> b!6781705 (=> (not res!2772070) (not e!4093828))))

(assert (=> b!6781705 (= res!2772070 call!615333)))

(declare-fun b!6781706 () Bool)

(declare-fun e!4093829 () Bool)

(assert (=> b!6781706 (= e!4093829 call!615334)))

(declare-fun b!6781707 () Bool)

(assert (=> b!6781707 (= e!4093825 call!615332)))

(declare-fun b!6781708 () Bool)

(declare-fun res!2772068 () Bool)

(assert (=> b!6781708 (=> (not res!2772068) (not e!4093829))))

(assert (=> b!6781708 (= res!2772068 call!615333)))

(assert (=> b!6781708 (= e!4093831 e!4093829)))

(assert (= (and d!2130625 (not res!2772069)) b!6781700))

(assert (= (and b!6781700 c!1259911) b!6781704))

(assert (= (and b!6781700 (not c!1259911)) b!6781701))

(assert (= (and b!6781704 res!2772071) b!6781707))

(assert (= (and b!6781701 c!1259912) b!6781708))

(assert (= (and b!6781701 (not c!1259912)) b!6781702))

(assert (= (and b!6781708 res!2772068) b!6781706))

(assert (= (and b!6781702 (not res!2772067)) b!6781705))

(assert (= (and b!6781705 res!2772070) b!6781703))

(assert (= (or b!6781706 b!6781703) bm!615327))

(assert (= (or b!6781708 b!6781705) bm!615329))

(assert (= (or b!6781707 bm!615327) bm!615328))

(declare-fun m!7530334 () Bool)

(assert (=> bm!615328 m!7530334))

(declare-fun m!7530336 () Bool)

(assert (=> bm!615329 m!7530336))

(declare-fun m!7530338 () Bool)

(assert (=> b!6781704 m!7530338))

(assert (=> d!2130375 d!2130625))

(declare-fun d!2130627 () Bool)

(assert (=> d!2130627 (= (isEmpty!38345 (tail!12702 (_2!36881 lt!2444761))) ((_ is Nil!65984) (tail!12702 (_2!36881 lt!2444761))))))

(assert (=> b!6780795 d!2130627))

(declare-fun d!2130629 () Bool)

(assert (=> d!2130629 (= (tail!12702 (_2!36881 lt!2444761)) (t!379823 (_2!36881 lt!2444761)))))

(assert (=> b!6780795 d!2130629))

(assert (=> bm!615202 d!2130317))

(declare-fun d!2130631 () Bool)

(assert (=> d!2130631 (= (flatMap!2084 lt!2444757 lambda!381629) (choose!50492 lt!2444757 lambda!381629))))

(declare-fun bs!1806047 () Bool)

(assert (= bs!1806047 d!2130631))

(declare-fun m!7530340 () Bool)

(assert (=> bs!1806047 m!7530340))

(assert (=> d!2130183 d!2130631))

(assert (=> b!6780767 d!2130531))

(assert (=> b!6781038 d!2130225))

(declare-fun d!2130633 () Bool)

(declare-fun res!2772074 () Bool)

(declare-fun e!4093833 () Bool)

(assert (=> d!2130633 (=> res!2772074 e!4093833)))

(assert (=> d!2130633 (= res!2772074 ((_ is ElementMatch!16603) lt!2444803))))

(assert (=> d!2130633 (= (validRegex!8339 lt!2444803) e!4093833)))

(declare-fun b!6781709 () Bool)

(declare-fun e!4093834 () Bool)

(assert (=> b!6781709 (= e!4093833 e!4093834)))

(declare-fun c!1259913 () Bool)

(assert (=> b!6781709 (= c!1259913 ((_ is Star!16603) lt!2444803))))

(declare-fun bm!615330 () Bool)

(declare-fun call!615337 () Bool)

(declare-fun call!615335 () Bool)

(assert (=> bm!615330 (= call!615337 call!615335)))

(declare-fun b!6781710 () Bool)

(declare-fun e!4093838 () Bool)

(assert (=> b!6781710 (= e!4093834 e!4093838)))

(declare-fun c!1259914 () Bool)

(assert (=> b!6781710 (= c!1259914 ((_ is Union!16603) lt!2444803))))

(declare-fun bm!615331 () Bool)

(assert (=> bm!615331 (= call!615335 (validRegex!8339 (ite c!1259913 (reg!16932 lt!2444803) (ite c!1259914 (regTwo!33719 lt!2444803) (regTwo!33718 lt!2444803)))))))

(declare-fun b!6781711 () Bool)

(declare-fun res!2772072 () Bool)

(declare-fun e!4093837 () Bool)

(assert (=> b!6781711 (=> res!2772072 e!4093837)))

(assert (=> b!6781711 (= res!2772072 (not ((_ is Concat!25448) lt!2444803)))))

(assert (=> b!6781711 (= e!4093838 e!4093837)))

(declare-fun b!6781712 () Bool)

(declare-fun e!4093835 () Bool)

(assert (=> b!6781712 (= e!4093835 call!615337)))

(declare-fun bm!615332 () Bool)

(declare-fun call!615336 () Bool)

(assert (=> bm!615332 (= call!615336 (validRegex!8339 (ite c!1259914 (regOne!33719 lt!2444803) (regOne!33718 lt!2444803))))))

(declare-fun b!6781713 () Bool)

(declare-fun e!4093832 () Bool)

(assert (=> b!6781713 (= e!4093834 e!4093832)))

(declare-fun res!2772076 () Bool)

(assert (=> b!6781713 (= res!2772076 (not (nullable!6582 (reg!16932 lt!2444803))))))

(assert (=> b!6781713 (=> (not res!2772076) (not e!4093832))))

(declare-fun b!6781714 () Bool)

(assert (=> b!6781714 (= e!4093837 e!4093835)))

(declare-fun res!2772075 () Bool)

(assert (=> b!6781714 (=> (not res!2772075) (not e!4093835))))

(assert (=> b!6781714 (= res!2772075 call!615336)))

(declare-fun b!6781715 () Bool)

(declare-fun e!4093836 () Bool)

(assert (=> b!6781715 (= e!4093836 call!615337)))

(declare-fun b!6781716 () Bool)

(assert (=> b!6781716 (= e!4093832 call!615335)))

(declare-fun b!6781717 () Bool)

(declare-fun res!2772073 () Bool)

(assert (=> b!6781717 (=> (not res!2772073) (not e!4093836))))

(assert (=> b!6781717 (= res!2772073 call!615336)))

(assert (=> b!6781717 (= e!4093838 e!4093836)))

(assert (= (and d!2130633 (not res!2772074)) b!6781709))

(assert (= (and b!6781709 c!1259913) b!6781713))

(assert (= (and b!6781709 (not c!1259913)) b!6781710))

(assert (= (and b!6781713 res!2772076) b!6781716))

(assert (= (and b!6781710 c!1259914) b!6781717))

(assert (= (and b!6781710 (not c!1259914)) b!6781711))

(assert (= (and b!6781717 res!2772073) b!6781715))

(assert (= (and b!6781711 (not res!2772072)) b!6781714))

(assert (= (and b!6781714 res!2772075) b!6781712))

(assert (= (or b!6781715 b!6781712) bm!615330))

(assert (= (or b!6781717 b!6781714) bm!615332))

(assert (= (or b!6781716 bm!615330) bm!615331))

(declare-fun m!7530342 () Bool)

(assert (=> bm!615331 m!7530342))

(declare-fun m!7530344 () Bool)

(assert (=> bm!615332 m!7530344))

(declare-fun m!7530346 () Bool)

(assert (=> b!6781713 m!7530346))

(assert (=> d!2130165 d!2130633))

(assert (=> d!2130165 d!2130155))

(assert (=> d!2130165 d!2130157))

(declare-fun bs!1806048 () Bool)

(declare-fun b!6781722 () Bool)

(assert (= bs!1806048 (and b!6781722 b!6780652)))

(declare-fun lambda!381722 () Int)

(assert (=> bs!1806048 (= (and (= (reg!16932 (regOne!33719 r!7292)) (reg!16932 r!7292)) (= (regOne!33719 r!7292) r!7292)) (= lambda!381722 lambda!381651))))

(declare-fun bs!1806049 () Bool)

(assert (= bs!1806049 (and b!6781722 d!2130287)))

(assert (=> bs!1806049 (not (= lambda!381722 lambda!381684))))

(declare-fun bs!1806050 () Bool)

(assert (= bs!1806050 (and b!6781722 d!2130279)))

(assert (=> bs!1806050 (not (= lambda!381722 lambda!381674))))

(declare-fun bs!1806051 () Bool)

(assert (= bs!1806051 (and b!6781722 d!2130335)))

(assert (=> bs!1806051 (not (= lambda!381722 lambda!381696))))

(declare-fun bs!1806052 () Bool)

(assert (= bs!1806052 (and b!6781722 b!6780302)))

(assert (=> bs!1806052 (not (= lambda!381722 lambda!381616))))

(declare-fun bs!1806053 () Bool)

(assert (= bs!1806053 (and b!6781722 b!6780651)))

(assert (=> bs!1806053 (not (= lambda!381722 lambda!381652))))

(assert (=> bs!1806052 (= (and (= (reg!16932 (regOne!33719 r!7292)) (reg!16932 r!7292)) (= (regOne!33719 r!7292) r!7292)) (= lambda!381722 lambda!381615))))

(assert (=> bs!1806052 (not (= lambda!381722 lambda!381614))))

(declare-fun bs!1806054 () Bool)

(assert (= bs!1806054 (and b!6781722 b!6781134)))

(assert (=> bs!1806054 (not (= lambda!381722 lambda!381700))))

(assert (=> bs!1806050 (not (= lambda!381722 lambda!381673))))

(declare-fun bs!1806055 () Bool)

(assert (= bs!1806055 (and b!6781722 b!6781135)))

(assert (=> bs!1806055 (= (and (= (reg!16932 (regOne!33719 r!7292)) (reg!16932 lt!2444765)) (= (regOne!33719 r!7292) lt!2444765)) (= lambda!381722 lambda!381699))))

(assert (=> bs!1806049 (= (and (= (reg!16932 (regOne!33719 r!7292)) (reg!16932 r!7292)) (= (regOne!33719 r!7292) (Star!16603 (reg!16932 r!7292)))) (= lambda!381722 lambda!381685))))

(assert (=> b!6781722 true))

(assert (=> b!6781722 true))

(declare-fun bs!1806056 () Bool)

(declare-fun b!6781721 () Bool)

(assert (= bs!1806056 (and b!6781721 b!6780652)))

(declare-fun lambda!381725 () Int)

(assert (=> bs!1806056 (not (= lambda!381725 lambda!381651))))

(declare-fun bs!1806057 () Bool)

(assert (= bs!1806057 (and b!6781721 d!2130287)))

(assert (=> bs!1806057 (not (= lambda!381725 lambda!381684))))

(declare-fun bs!1806058 () Bool)

(assert (= bs!1806058 (and b!6781721 d!2130279)))

(assert (=> bs!1806058 (= (and (= (regOne!33718 (regOne!33719 r!7292)) (reg!16932 r!7292)) (= (regTwo!33718 (regOne!33719 r!7292)) r!7292)) (= lambda!381725 lambda!381674))))

(declare-fun bs!1806059 () Bool)

(assert (= bs!1806059 (and b!6781721 b!6780302)))

(assert (=> bs!1806059 (= (and (= (regOne!33718 (regOne!33719 r!7292)) (reg!16932 r!7292)) (= (regTwo!33718 (regOne!33719 r!7292)) r!7292)) (= lambda!381725 lambda!381616))))

(declare-fun bs!1806060 () Bool)

(assert (= bs!1806060 (and b!6781721 b!6780651)))

(assert (=> bs!1806060 (= (and (= (regOne!33718 (regOne!33719 r!7292)) (regOne!33718 r!7292)) (= (regTwo!33718 (regOne!33719 r!7292)) (regTwo!33718 r!7292))) (= lambda!381725 lambda!381652))))

(assert (=> bs!1806059 (not (= lambda!381725 lambda!381615))))

(assert (=> bs!1806059 (not (= lambda!381725 lambda!381614))))

(declare-fun bs!1806061 () Bool)

(assert (= bs!1806061 (and b!6781721 b!6781134)))

(assert (=> bs!1806061 (= (and (= (regOne!33718 (regOne!33719 r!7292)) (regOne!33718 lt!2444765)) (= (regTwo!33718 (regOne!33719 r!7292)) (regTwo!33718 lt!2444765))) (= lambda!381725 lambda!381700))))

(assert (=> bs!1806058 (not (= lambda!381725 lambda!381673))))

(declare-fun bs!1806062 () Bool)

(assert (= bs!1806062 (and b!6781721 b!6781135)))

(assert (=> bs!1806062 (not (= lambda!381725 lambda!381699))))

(assert (=> bs!1806057 (not (= lambda!381725 lambda!381685))))

(declare-fun bs!1806063 () Bool)

(assert (= bs!1806063 (and b!6781721 d!2130335)))

(assert (=> bs!1806063 (not (= lambda!381725 lambda!381696))))

(declare-fun bs!1806064 () Bool)

(assert (= bs!1806064 (and b!6781721 b!6781722)))

(assert (=> bs!1806064 (not (= lambda!381725 lambda!381722))))

(assert (=> b!6781721 true))

(assert (=> b!6781721 true))

(declare-fun b!6781719 () Bool)

(declare-fun e!4093843 () Bool)

(declare-fun e!4093842 () Bool)

(assert (=> b!6781719 (= e!4093843 e!4093842)))

(declare-fun res!2772077 () Bool)

(assert (=> b!6781719 (= res!2772077 (not ((_ is EmptyLang!16603) (regOne!33719 r!7292))))))

(assert (=> b!6781719 (=> (not res!2772077) (not e!4093842))))

(declare-fun b!6781720 () Bool)

(declare-fun c!1259916 () Bool)

(assert (=> b!6781720 (= c!1259916 ((_ is Union!16603) (regOne!33719 r!7292)))))

(declare-fun e!4093840 () Bool)

(declare-fun e!4093845 () Bool)

(assert (=> b!6781720 (= e!4093840 e!4093845)))

(declare-fun e!4093841 () Bool)

(declare-fun call!615338 () Bool)

(assert (=> b!6781721 (= e!4093841 call!615338)))

(declare-fun e!4093844 () Bool)

(assert (=> b!6781722 (= e!4093844 call!615338)))

(declare-fun b!6781723 () Bool)

(declare-fun e!4093839 () Bool)

(assert (=> b!6781723 (= e!4093845 e!4093839)))

(declare-fun res!2772079 () Bool)

(assert (=> b!6781723 (= res!2772079 (matchRSpec!3704 (regOne!33719 (regOne!33719 r!7292)) s!2326))))

(assert (=> b!6781723 (=> res!2772079 e!4093839)))

(declare-fun b!6781724 () Bool)

(assert (=> b!6781724 (= e!4093845 e!4093841)))

(declare-fun c!1259918 () Bool)

(assert (=> b!6781724 (= c!1259918 ((_ is Star!16603) (regOne!33719 r!7292)))))

(declare-fun b!6781725 () Bool)

(declare-fun c!1259915 () Bool)

(assert (=> b!6781725 (= c!1259915 ((_ is ElementMatch!16603) (regOne!33719 r!7292)))))

(assert (=> b!6781725 (= e!4093842 e!4093840)))

(declare-fun bm!615333 () Bool)

(assert (=> bm!615333 (= call!615338 (Exists!3671 (ite c!1259918 lambda!381722 lambda!381725)))))

(declare-fun d!2130635 () Bool)

(declare-fun c!1259917 () Bool)

(assert (=> d!2130635 (= c!1259917 ((_ is EmptyExpr!16603) (regOne!33719 r!7292)))))

(assert (=> d!2130635 (= (matchRSpec!3704 (regOne!33719 r!7292) s!2326) e!4093843)))

(declare-fun b!6781718 () Bool)

(declare-fun call!615339 () Bool)

(assert (=> b!6781718 (= e!4093843 call!615339)))

(declare-fun b!6781726 () Bool)

(declare-fun res!2772078 () Bool)

(assert (=> b!6781726 (=> res!2772078 e!4093844)))

(assert (=> b!6781726 (= res!2772078 call!615339)))

(assert (=> b!6781726 (= e!4093841 e!4093844)))

(declare-fun bm!615334 () Bool)

(assert (=> bm!615334 (= call!615339 (isEmpty!38345 s!2326))))

(declare-fun b!6781727 () Bool)

(assert (=> b!6781727 (= e!4093840 (= s!2326 (Cons!65984 (c!1259507 (regOne!33719 r!7292)) Nil!65984)))))

(declare-fun b!6781728 () Bool)

(assert (=> b!6781728 (= e!4093839 (matchRSpec!3704 (regTwo!33719 (regOne!33719 r!7292)) s!2326))))

(assert (= (and d!2130635 c!1259917) b!6781718))

(assert (= (and d!2130635 (not c!1259917)) b!6781719))

(assert (= (and b!6781719 res!2772077) b!6781725))

(assert (= (and b!6781725 c!1259915) b!6781727))

(assert (= (and b!6781725 (not c!1259915)) b!6781720))

(assert (= (and b!6781720 c!1259916) b!6781723))

(assert (= (and b!6781720 (not c!1259916)) b!6781724))

(assert (= (and b!6781723 (not res!2772079)) b!6781728))

(assert (= (and b!6781724 c!1259918) b!6781726))

(assert (= (and b!6781724 (not c!1259918)) b!6781721))

(assert (= (and b!6781726 (not res!2772078)) b!6781722))

(assert (= (or b!6781722 b!6781721) bm!615333))

(assert (= (or b!6781718 b!6781726) bm!615334))

(declare-fun m!7530348 () Bool)

(assert (=> b!6781723 m!7530348))

(declare-fun m!7530350 () Bool)

(assert (=> bm!615333 m!7530350))

(assert (=> bm!615334 m!7529138))

(declare-fun m!7530352 () Bool)

(assert (=> b!6781728 m!7530352))

(assert (=> b!6780653 d!2130635))

(declare-fun bs!1806065 () Bool)

(declare-fun d!2130637 () Bool)

(assert (= bs!1806065 (and d!2130637 d!2130513)))

(declare-fun lambda!381728 () Int)

(assert (=> bs!1806065 (= lambda!381728 lambda!381715)))

(declare-fun bs!1806066 () Bool)

(assert (= bs!1806066 (and d!2130637 d!2130379)))

(assert (=> bs!1806066 (= lambda!381728 lambda!381701)))

(declare-fun bs!1806067 () Bool)

(assert (= bs!1806067 (and d!2130637 d!2130155)))

(assert (=> bs!1806067 (= lambda!381728 lambda!381620)))

(declare-fun bs!1806068 () Bool)

(assert (= bs!1806068 (and d!2130637 d!2130261)))

(assert (=> bs!1806068 (= lambda!381728 lambda!381668)))

(declare-fun bs!1806069 () Bool)

(assert (= bs!1806069 (and d!2130637 d!2130603)))

(assert (=> bs!1806069 (= lambda!381728 lambda!381721)))

(declare-fun bs!1806070 () Bool)

(assert (= bs!1806070 (and d!2130637 d!2130483)))

(assert (=> bs!1806070 (= lambda!381728 lambda!381708)))

(declare-fun bs!1806071 () Bool)

(assert (= bs!1806071 (and d!2130637 d!2130157)))

(assert (=> bs!1806071 (= lambda!381728 lambda!381623)))

(declare-fun bs!1806072 () Bool)

(assert (= bs!1806072 (and d!2130637 d!2130353)))

(assert (=> bs!1806072 (= lambda!381728 lambda!381697)))

(declare-fun bs!1806073 () Bool)

(assert (= bs!1806073 (and d!2130637 d!2130597)))

(assert (=> bs!1806073 (= lambda!381728 lambda!381720)))

(declare-fun bs!1806074 () Bool)

(assert (= bs!1806074 (and d!2130637 d!2130589)))

(assert (=> bs!1806074 (= lambda!381728 lambda!381719)))

(declare-fun bs!1806076 () Bool)

(assert (= bs!1806076 (and d!2130637 d!2130195)))

(assert (=> bs!1806076 (= lambda!381728 lambda!381638)))

(assert (=> d!2130637 (= (inv!84754 setElem!46383) (forall!15794 (exprs!6487 setElem!46383) lambda!381728))))

(declare-fun bs!1806078 () Bool)

(assert (= bs!1806078 d!2130637))

(declare-fun m!7530354 () Bool)

(assert (=> bs!1806078 m!7530354))

(assert (=> setNonEmpty!46383 d!2130637))

(declare-fun d!2130639 () Bool)

(assert (=> d!2130639 (= (isEmpty!38345 (tail!12702 s!2326)) ((_ is Nil!65984) (tail!12702 s!2326)))))

(assert (=> b!6781154 d!2130639))

(assert (=> b!6781154 d!2130525))

(declare-fun d!2130641 () Bool)

(assert (=> d!2130641 (= (head!13617 (_2!36881 lt!2444761)) (h!72432 (_2!36881 lt!2444761)))))

(assert (=> b!6780791 d!2130641))

(declare-fun d!2130643 () Bool)

(assert (=> d!2130643 (= (head!13616 (unfocusZipperList!2024 zl!343)) (h!72433 (unfocusZipperList!2024 zl!343)))))

(assert (=> b!6780378 d!2130643))

(declare-fun d!2130645 () Bool)

(assert (=> d!2130645 (= (isEmpty!38345 (_2!36881 lt!2444761)) ((_ is Nil!65984) (_2!36881 lt!2444761)))))

(assert (=> d!2130245 d!2130645))

(assert (=> d!2130245 d!2130275))

(declare-fun d!2130647 () Bool)

(declare-fun res!2772090 () Bool)

(declare-fun e!4093850 () Bool)

(assert (=> d!2130647 (=> res!2772090 e!4093850)))

(assert (=> d!2130647 (= res!2772090 ((_ is Nil!65985) (exprs!6487 setElem!46377)))))

(assert (=> d!2130647 (= (forall!15794 (exprs!6487 setElem!46377) lambda!381701) e!4093850)))

(declare-fun b!6781739 () Bool)

(declare-fun e!4093851 () Bool)

(assert (=> b!6781739 (= e!4093850 e!4093851)))

(declare-fun res!2772091 () Bool)

(assert (=> b!6781739 (=> (not res!2772091) (not e!4093851))))

(assert (=> b!6781739 (= res!2772091 (dynLambda!26331 lambda!381701 (h!72433 (exprs!6487 setElem!46377))))))

(declare-fun b!6781740 () Bool)

(assert (=> b!6781740 (= e!4093851 (forall!15794 (t!379824 (exprs!6487 setElem!46377)) lambda!381701))))

(assert (= (and d!2130647 (not res!2772090)) b!6781739))

(assert (= (and b!6781739 res!2772091) b!6781740))

(declare-fun b_lambda!255355 () Bool)

(assert (=> (not b_lambda!255355) (not b!6781739)))

(declare-fun m!7530356 () Bool)

(assert (=> b!6781739 m!7530356))

(declare-fun m!7530358 () Bool)

(assert (=> b!6781740 m!7530358))

(assert (=> d!2130379 d!2130647))

(declare-fun d!2130649 () Bool)

(declare-fun c!1259919 () Bool)

(assert (=> d!2130649 (= c!1259919 (isEmpty!38345 (tail!12702 (_2!36881 lt!2444761))))))

(declare-fun e!4093852 () Bool)

(assert (=> d!2130649 (= (matchZipper!2589 (derivationStepZipper!2547 lt!2444762 (head!13617 (_2!36881 lt!2444761))) (tail!12702 (_2!36881 lt!2444761))) e!4093852)))

(declare-fun b!6781741 () Bool)

(assert (=> b!6781741 (= e!4093852 (nullableZipper!2309 (derivationStepZipper!2547 lt!2444762 (head!13617 (_2!36881 lt!2444761)))))))

(declare-fun b!6781742 () Bool)

(assert (=> b!6781742 (= e!4093852 (matchZipper!2589 (derivationStepZipper!2547 (derivationStepZipper!2547 lt!2444762 (head!13617 (_2!36881 lt!2444761))) (head!13617 (tail!12702 (_2!36881 lt!2444761)))) (tail!12702 (tail!12702 (_2!36881 lt!2444761)))))))

(assert (= (and d!2130649 c!1259919) b!6781741))

(assert (= (and d!2130649 (not c!1259919)) b!6781742))

(assert (=> d!2130649 m!7529446))

(assert (=> d!2130649 m!7529448))

(assert (=> b!6781741 m!7529738))

(declare-fun m!7530360 () Bool)

(assert (=> b!6781741 m!7530360))

(assert (=> b!6781742 m!7529446))

(declare-fun m!7530362 () Bool)

(assert (=> b!6781742 m!7530362))

(assert (=> b!6781742 m!7529738))

(assert (=> b!6781742 m!7530362))

(declare-fun m!7530364 () Bool)

(assert (=> b!6781742 m!7530364))

(assert (=> b!6781742 m!7529446))

(declare-fun m!7530366 () Bool)

(assert (=> b!6781742 m!7530366))

(assert (=> b!6781742 m!7530364))

(assert (=> b!6781742 m!7530366))

(declare-fun m!7530368 () Bool)

(assert (=> b!6781742 m!7530368))

(assert (=> b!6781120 d!2130649))

(declare-fun bs!1806086 () Bool)

(declare-fun d!2130651 () Bool)

(assert (= bs!1806086 (and d!2130651 d!2130257)))

(declare-fun lambda!381731 () Int)

(assert (=> bs!1806086 (= (= (head!13617 (_2!36881 lt!2444761)) (h!72432 s!2326)) (= lambda!381731 lambda!381664))))

(declare-fun bs!1806087 () Bool)

(assert (= bs!1806087 (and d!2130651 d!2130183)))

(assert (=> bs!1806087 (= (= (head!13617 (_2!36881 lt!2444761)) (h!72432 s!2326)) (= lambda!381731 lambda!381629))))

(declare-fun bs!1806088 () Bool)

(assert (= bs!1806088 (and d!2130651 d!2130357)))

(assert (=> bs!1806088 (= (= (head!13617 (_2!36881 lt!2444761)) (h!72432 s!2326)) (= lambda!381731 lambda!381698))))

(declare-fun bs!1806089 () Bool)

(assert (= bs!1806089 (and d!2130651 b!6780319)))

(assert (=> bs!1806089 (= (= (head!13617 (_2!36881 lt!2444761)) (h!72432 s!2326)) (= lambda!381731 lambda!381617))))

(declare-fun bs!1806090 () Bool)

(assert (= bs!1806090 (and d!2130651 d!2130521)))

(assert (=> bs!1806090 (= (= (head!13617 (_2!36881 lt!2444761)) (head!13617 s!2326)) (= lambda!381731 lambda!381716))))

(assert (=> d!2130651 true))

(assert (=> d!2130651 (= (derivationStepZipper!2547 lt!2444762 (head!13617 (_2!36881 lt!2444761))) (flatMap!2084 lt!2444762 lambda!381731))))

(declare-fun bs!1806091 () Bool)

(assert (= bs!1806091 d!2130651))

(declare-fun m!7530370 () Bool)

(assert (=> bs!1806091 m!7530370))

(assert (=> b!6781120 d!2130651))

(assert (=> b!6781120 d!2130641))

(assert (=> b!6781120 d!2130629))

(declare-fun b!6781743 () Bool)

(declare-fun res!2772099 () Bool)

(declare-fun e!4093854 () Bool)

(assert (=> b!6781743 (=> res!2772099 e!4093854)))

(declare-fun e!4093858 () Bool)

(assert (=> b!6781743 (= res!2772099 e!4093858)))

(declare-fun res!2772095 () Bool)

(assert (=> b!6781743 (=> (not res!2772095) (not e!4093858))))

(declare-fun lt!2444941 () Bool)

(assert (=> b!6781743 (= res!2772095 lt!2444941)))

(declare-fun b!6781744 () Bool)

(declare-fun e!4093857 () Bool)

(assert (=> b!6781744 (= e!4093857 (nullable!6582 (derivativeStep!5267 (reg!16932 r!7292) (head!13617 (_1!36881 lt!2444761)))))))

(declare-fun bm!615335 () Bool)

(declare-fun call!615340 () Bool)

(assert (=> bm!615335 (= call!615340 (isEmpty!38345 (tail!12702 (_1!36881 lt!2444761))))))

(declare-fun b!6781745 () Bool)

(declare-fun e!4093859 () Bool)

(assert (=> b!6781745 (= e!4093854 e!4093859)))

(declare-fun res!2772093 () Bool)

(assert (=> b!6781745 (=> (not res!2772093) (not e!4093859))))

(assert (=> b!6781745 (= res!2772093 (not lt!2444941))))

(declare-fun b!6781746 () Bool)

(declare-fun e!4093853 () Bool)

(assert (=> b!6781746 (= e!4093853 (not (= (head!13617 (tail!12702 (_1!36881 lt!2444761))) (c!1259507 (derivativeStep!5267 (reg!16932 r!7292) (head!13617 (_1!36881 lt!2444761)))))))))

(declare-fun b!6781747 () Bool)

(declare-fun res!2772098 () Bool)

(assert (=> b!6781747 (=> res!2772098 e!4093854)))

(assert (=> b!6781747 (= res!2772098 (not ((_ is ElementMatch!16603) (derivativeStep!5267 (reg!16932 r!7292) (head!13617 (_1!36881 lt!2444761))))))))

(declare-fun e!4093855 () Bool)

(assert (=> b!6781747 (= e!4093855 e!4093854)))

(declare-fun b!6781748 () Bool)

(assert (=> b!6781748 (= e!4093857 (matchR!8786 (derivativeStep!5267 (derivativeStep!5267 (reg!16932 r!7292) (head!13617 (_1!36881 lt!2444761))) (head!13617 (tail!12702 (_1!36881 lt!2444761)))) (tail!12702 (tail!12702 (_1!36881 lt!2444761)))))))

(declare-fun b!6781750 () Bool)

(declare-fun res!2772092 () Bool)

(assert (=> b!6781750 (=> (not res!2772092) (not e!4093858))))

(assert (=> b!6781750 (= res!2772092 (isEmpty!38345 (tail!12702 (tail!12702 (_1!36881 lt!2444761)))))))

(declare-fun b!6781751 () Bool)

(declare-fun e!4093856 () Bool)

(assert (=> b!6781751 (= e!4093856 (= lt!2444941 call!615340))))

(declare-fun b!6781752 () Bool)

(assert (=> b!6781752 (= e!4093856 e!4093855)))

(declare-fun c!1259920 () Bool)

(assert (=> b!6781752 (= c!1259920 ((_ is EmptyLang!16603) (derivativeStep!5267 (reg!16932 r!7292) (head!13617 (_1!36881 lt!2444761)))))))

(declare-fun b!6781753 () Bool)

(declare-fun res!2772096 () Bool)

(assert (=> b!6781753 (=> (not res!2772096) (not e!4093858))))

(assert (=> b!6781753 (= res!2772096 (not call!615340))))

(declare-fun b!6781754 () Bool)

(assert (=> b!6781754 (= e!4093855 (not lt!2444941))))

(declare-fun b!6781755 () Bool)

(declare-fun res!2772097 () Bool)

(assert (=> b!6781755 (=> res!2772097 e!4093853)))

(assert (=> b!6781755 (= res!2772097 (not (isEmpty!38345 (tail!12702 (tail!12702 (_1!36881 lt!2444761))))))))

(declare-fun b!6781756 () Bool)

(assert (=> b!6781756 (= e!4093859 e!4093853)))

(declare-fun res!2772094 () Bool)

(assert (=> b!6781756 (=> res!2772094 e!4093853)))

(assert (=> b!6781756 (= res!2772094 call!615340)))

(declare-fun d!2130653 () Bool)

(assert (=> d!2130653 e!4093856))

(declare-fun c!1259922 () Bool)

(assert (=> d!2130653 (= c!1259922 ((_ is EmptyExpr!16603) (derivativeStep!5267 (reg!16932 r!7292) (head!13617 (_1!36881 lt!2444761)))))))

(assert (=> d!2130653 (= lt!2444941 e!4093857)))

(declare-fun c!1259921 () Bool)

(assert (=> d!2130653 (= c!1259921 (isEmpty!38345 (tail!12702 (_1!36881 lt!2444761))))))

(assert (=> d!2130653 (validRegex!8339 (derivativeStep!5267 (reg!16932 r!7292) (head!13617 (_1!36881 lt!2444761))))))

(assert (=> d!2130653 (= (matchR!8786 (derivativeStep!5267 (reg!16932 r!7292) (head!13617 (_1!36881 lt!2444761))) (tail!12702 (_1!36881 lt!2444761))) lt!2444941)))

(declare-fun b!6781749 () Bool)

(assert (=> b!6781749 (= e!4093858 (= (head!13617 (tail!12702 (_1!36881 lt!2444761))) (c!1259507 (derivativeStep!5267 (reg!16932 r!7292) (head!13617 (_1!36881 lt!2444761))))))))

(assert (= (and d!2130653 c!1259921) b!6781744))

(assert (= (and d!2130653 (not c!1259921)) b!6781748))

(assert (= (and d!2130653 c!1259922) b!6781751))

(assert (= (and d!2130653 (not c!1259922)) b!6781752))

(assert (= (and b!6781752 c!1259920) b!6781754))

(assert (= (and b!6781752 (not c!1259920)) b!6781747))

(assert (= (and b!6781747 (not res!2772098)) b!6781743))

(assert (= (and b!6781743 res!2772095) b!6781753))

(assert (= (and b!6781753 res!2772096) b!6781750))

(assert (= (and b!6781750 res!2772092) b!6781749))

(assert (= (and b!6781743 (not res!2772099)) b!6781745))

(assert (= (and b!6781745 res!2772093) b!6781756))

(assert (= (and b!6781756 (not res!2772094)) b!6781755))

(assert (= (and b!6781755 (not res!2772097)) b!6781746))

(assert (= (or b!6781751 b!6781753 b!6781756) bm!615335))

(assert (=> d!2130653 m!7529732))

(assert (=> d!2130653 m!7529798))

(assert (=> d!2130653 m!7529800))

(declare-fun m!7530372 () Bool)

(assert (=> d!2130653 m!7530372))

(assert (=> b!6781744 m!7529800))

(declare-fun m!7530374 () Bool)

(assert (=> b!6781744 m!7530374))

(assert (=> bm!615335 m!7529732))

(assert (=> bm!615335 m!7529798))

(assert (=> b!6781755 m!7529732))

(declare-fun m!7530376 () Bool)

(assert (=> b!6781755 m!7530376))

(assert (=> b!6781755 m!7530376))

(declare-fun m!7530378 () Bool)

(assert (=> b!6781755 m!7530378))

(assert (=> b!6781748 m!7529732))

(declare-fun m!7530380 () Bool)

(assert (=> b!6781748 m!7530380))

(assert (=> b!6781748 m!7529800))

(assert (=> b!6781748 m!7530380))

(declare-fun m!7530382 () Bool)

(assert (=> b!6781748 m!7530382))

(assert (=> b!6781748 m!7529732))

(assert (=> b!6781748 m!7530376))

(assert (=> b!6781748 m!7530382))

(assert (=> b!6781748 m!7530376))

(declare-fun m!7530384 () Bool)

(assert (=> b!6781748 m!7530384))

(assert (=> b!6781749 m!7529732))

(assert (=> b!6781749 m!7530380))

(assert (=> b!6781750 m!7529732))

(assert (=> b!6781750 m!7530376))

(assert (=> b!6781750 m!7530376))

(assert (=> b!6781750 m!7530378))

(assert (=> b!6781746 m!7529732))

(assert (=> b!6781746 m!7530380))

(assert (=> b!6781161 d!2130653))

(declare-fun b!6781757 () Bool)

(declare-fun e!4093860 () Regex!16603)

(declare-fun call!615341 () Regex!16603)

(assert (=> b!6781757 (= e!4093860 (Union!16603 (Concat!25448 call!615341 (regTwo!33718 (reg!16932 r!7292))) EmptyLang!16603))))

(declare-fun b!6781758 () Bool)

(declare-fun e!4093862 () Regex!16603)

(declare-fun call!615344 () Regex!16603)

(declare-fun call!615343 () Regex!16603)

(assert (=> b!6781758 (= e!4093862 (Union!16603 call!615344 call!615343))))

(declare-fun bm!615336 () Bool)

(assert (=> bm!615336 (= call!615341 call!615344)))

(declare-fun c!1259925 () Bool)

(declare-fun bm!615337 () Bool)

(declare-fun c!1259927 () Bool)

(assert (=> bm!615337 (= call!615344 (derivativeStep!5267 (ite c!1259925 (regOne!33719 (reg!16932 r!7292)) (ite c!1259927 (regTwo!33718 (reg!16932 r!7292)) (regOne!33718 (reg!16932 r!7292)))) (head!13617 (_1!36881 lt!2444761))))))

(declare-fun b!6781759 () Bool)

(assert (=> b!6781759 (= c!1259925 ((_ is Union!16603) (reg!16932 r!7292)))))

(declare-fun e!4093864 () Regex!16603)

(assert (=> b!6781759 (= e!4093864 e!4093862)))

(declare-fun b!6781760 () Bool)

(assert (=> b!6781760 (= e!4093864 (ite (= (head!13617 (_1!36881 lt!2444761)) (c!1259507 (reg!16932 r!7292))) EmptyExpr!16603 EmptyLang!16603))))

(declare-fun b!6781761 () Bool)

(declare-fun e!4093861 () Regex!16603)

(assert (=> b!6781761 (= e!4093861 EmptyLang!16603)))

(declare-fun b!6781762 () Bool)

(assert (=> b!6781762 (= e!4093861 e!4093864)))

(declare-fun c!1259926 () Bool)

(assert (=> b!6781762 (= c!1259926 ((_ is ElementMatch!16603) (reg!16932 r!7292)))))

(declare-fun b!6781763 () Bool)

(assert (=> b!6781763 (= c!1259927 (nullable!6582 (regOne!33718 (reg!16932 r!7292))))))

(declare-fun e!4093863 () Regex!16603)

(assert (=> b!6781763 (= e!4093863 e!4093860)))

(declare-fun c!1259923 () Bool)

(declare-fun bm!615338 () Bool)

(assert (=> bm!615338 (= call!615343 (derivativeStep!5267 (ite c!1259925 (regTwo!33719 (reg!16932 r!7292)) (ite c!1259923 (reg!16932 (reg!16932 r!7292)) (regOne!33718 (reg!16932 r!7292)))) (head!13617 (_1!36881 lt!2444761))))))

(declare-fun bm!615339 () Bool)

(declare-fun call!615342 () Regex!16603)

(assert (=> bm!615339 (= call!615342 call!615343)))

(declare-fun b!6781764 () Bool)

(assert (=> b!6781764 (= e!4093863 (Concat!25448 call!615342 (reg!16932 r!7292)))))

(declare-fun b!6781765 () Bool)

(assert (=> b!6781765 (= e!4093860 (Union!16603 (Concat!25448 call!615342 (regTwo!33718 (reg!16932 r!7292))) call!615341))))

(declare-fun d!2130657 () Bool)

(declare-fun lt!2444942 () Regex!16603)

(assert (=> d!2130657 (validRegex!8339 lt!2444942)))

(assert (=> d!2130657 (= lt!2444942 e!4093861)))

(declare-fun c!1259924 () Bool)

(assert (=> d!2130657 (= c!1259924 (or ((_ is EmptyExpr!16603) (reg!16932 r!7292)) ((_ is EmptyLang!16603) (reg!16932 r!7292))))))

(assert (=> d!2130657 (validRegex!8339 (reg!16932 r!7292))))

(assert (=> d!2130657 (= (derivativeStep!5267 (reg!16932 r!7292) (head!13617 (_1!36881 lt!2444761))) lt!2444942)))

(declare-fun b!6781766 () Bool)

(assert (=> b!6781766 (= e!4093862 e!4093863)))

(assert (=> b!6781766 (= c!1259923 ((_ is Star!16603) (reg!16932 r!7292)))))

(assert (= (and d!2130657 c!1259924) b!6781761))

(assert (= (and d!2130657 (not c!1259924)) b!6781762))

(assert (= (and b!6781762 c!1259926) b!6781760))

(assert (= (and b!6781762 (not c!1259926)) b!6781759))

(assert (= (and b!6781759 c!1259925) b!6781758))

(assert (= (and b!6781759 (not c!1259925)) b!6781766))

(assert (= (and b!6781766 c!1259923) b!6781764))

(assert (= (and b!6781766 (not c!1259923)) b!6781763))

(assert (= (and b!6781763 c!1259927) b!6781765))

(assert (= (and b!6781763 (not c!1259927)) b!6781757))

(assert (= (or b!6781765 b!6781757) bm!615336))

(assert (= (or b!6781764 b!6781765) bm!615339))

(assert (= (or b!6781758 bm!615339) bm!615338))

(assert (= (or b!6781758 bm!615336) bm!615337))

(assert (=> bm!615337 m!7529728))

(declare-fun m!7530392 () Bool)

(assert (=> bm!615337 m!7530392))

(assert (=> b!6781763 m!7529496))

(assert (=> bm!615338 m!7529728))

(declare-fun m!7530396 () Bool)

(assert (=> bm!615338 m!7530396))

(declare-fun m!7530398 () Bool)

(assert (=> d!2130657 m!7530398))

(assert (=> d!2130657 m!7529556))

(assert (=> b!6781161 d!2130657))

(assert (=> b!6781161 d!2130545))

(declare-fun d!2130667 () Bool)

(assert (=> d!2130667 (= (tail!12702 (_1!36881 lt!2444761)) (t!379823 (_1!36881 lt!2444761)))))

(assert (=> b!6781161 d!2130667))

(declare-fun d!2130669 () Bool)

(assert (=> d!2130669 (= (flatMap!2084 lt!2444762 lambda!381698) (choose!50492 lt!2444762 lambda!381698))))

(declare-fun bs!1806095 () Bool)

(assert (= bs!1806095 d!2130669))

(declare-fun m!7530400 () Bool)

(assert (=> bs!1806095 m!7530400))

(assert (=> d!2130357 d!2130669))

(assert (=> d!2130169 d!2130317))

(declare-fun b!6781771 () Bool)

(declare-fun e!4093872 () (InoxSet Context!11974))

(declare-fun e!4093870 () (InoxSet Context!11974))

(assert (=> b!6781771 (= e!4093872 e!4093870)))

(declare-fun c!1259929 () Bool)

(assert (=> b!6781771 (= c!1259929 ((_ is Concat!25448) (ite c!1259666 (regOne!33719 r!7292) (regOne!33718 r!7292))))))

(declare-fun bm!615340 () Bool)

(declare-fun call!615349 () (InoxSet Context!11974))

(declare-fun call!615345 () (InoxSet Context!11974))

(assert (=> bm!615340 (= call!615349 call!615345)))

(declare-fun b!6781772 () Bool)

(declare-fun e!4093871 () Bool)

(assert (=> b!6781772 (= e!4093871 (nullable!6582 (regOne!33718 (ite c!1259666 (regOne!33719 r!7292) (regOne!33718 r!7292)))))))

(declare-fun b!6781773 () Bool)

(declare-fun call!615346 () (InoxSet Context!11974))

(assert (=> b!6781773 (= e!4093872 ((_ map or) call!615346 call!615349))))

(declare-fun b!6781774 () Bool)

(declare-fun e!4093867 () (InoxSet Context!11974))

(assert (=> b!6781774 (= e!4093867 ((_ map or) call!615346 call!615345))))

(declare-fun b!6781775 () Bool)

(declare-fun e!4093869 () (InoxSet Context!11974))

(assert (=> b!6781775 (= e!4093869 (store ((as const (Array Context!11974 Bool)) false) (ite c!1259666 (Context!11975 Nil!65985) (Context!11975 call!615175)) true))))

(declare-fun call!615348 () List!66109)

(declare-fun c!1259930 () Bool)

(declare-fun bm!615341 () Bool)

(assert (=> bm!615341 (= call!615348 ($colon$colon!2412 (exprs!6487 (ite c!1259666 (Context!11975 Nil!65985) (Context!11975 call!615175))) (ite (or c!1259930 c!1259929) (regTwo!33718 (ite c!1259666 (regOne!33719 r!7292) (regOne!33718 r!7292))) (ite c!1259666 (regOne!33719 r!7292) (regOne!33718 r!7292)))))))

(declare-fun b!6781776 () Bool)

(assert (=> b!6781776 (= c!1259930 e!4093871)))

(declare-fun res!2772102 () Bool)

(assert (=> b!6781776 (=> (not res!2772102) (not e!4093871))))

(assert (=> b!6781776 (= res!2772102 ((_ is Concat!25448) (ite c!1259666 (regOne!33719 r!7292) (regOne!33718 r!7292))))))

(assert (=> b!6781776 (= e!4093867 e!4093872)))

(declare-fun c!1259931 () Bool)

(declare-fun bm!615342 () Bool)

(declare-fun call!615350 () List!66109)

(assert (=> bm!615342 (= call!615345 (derivationStepZipperDown!1831 (ite c!1259931 (regTwo!33719 (ite c!1259666 (regOne!33719 r!7292) (regOne!33718 r!7292))) (ite c!1259930 (regTwo!33718 (ite c!1259666 (regOne!33719 r!7292) (regOne!33718 r!7292))) (ite c!1259929 (regOne!33718 (ite c!1259666 (regOne!33719 r!7292) (regOne!33718 r!7292))) (reg!16932 (ite c!1259666 (regOne!33719 r!7292) (regOne!33718 r!7292)))))) (ite (or c!1259931 c!1259930) (ite c!1259666 (Context!11975 Nil!65985) (Context!11975 call!615175)) (Context!11975 call!615350)) (h!72432 s!2326)))))

(declare-fun bm!615343 () Bool)

(assert (=> bm!615343 (= call!615346 (derivationStepZipperDown!1831 (ite c!1259931 (regOne!33719 (ite c!1259666 (regOne!33719 r!7292) (regOne!33718 r!7292))) (regOne!33718 (ite c!1259666 (regOne!33719 r!7292) (regOne!33718 r!7292)))) (ite c!1259931 (ite c!1259666 (Context!11975 Nil!65985) (Context!11975 call!615175)) (Context!11975 call!615348)) (h!72432 s!2326)))))

(declare-fun b!6781777 () Bool)

(declare-fun call!615347 () (InoxSet Context!11974))

(assert (=> b!6781777 (= e!4093870 call!615347)))

(declare-fun c!1259932 () Bool)

(declare-fun d!2130671 () Bool)

(assert (=> d!2130671 (= c!1259932 (and ((_ is ElementMatch!16603) (ite c!1259666 (regOne!33719 r!7292) (regOne!33718 r!7292))) (= (c!1259507 (ite c!1259666 (regOne!33719 r!7292) (regOne!33718 r!7292))) (h!72432 s!2326))))))

(assert (=> d!2130671 (= (derivationStepZipperDown!1831 (ite c!1259666 (regOne!33719 r!7292) (regOne!33718 r!7292)) (ite c!1259666 (Context!11975 Nil!65985) (Context!11975 call!615175)) (h!72432 s!2326)) e!4093869)))

(declare-fun bm!615344 () Bool)

(assert (=> bm!615344 (= call!615347 call!615349)))

(declare-fun b!6781778 () Bool)

(declare-fun e!4093868 () (InoxSet Context!11974))

(assert (=> b!6781778 (= e!4093868 ((as const (Array Context!11974 Bool)) false))))

(declare-fun b!6781779 () Bool)

(declare-fun c!1259933 () Bool)

(assert (=> b!6781779 (= c!1259933 ((_ is Star!16603) (ite c!1259666 (regOne!33719 r!7292) (regOne!33718 r!7292))))))

(assert (=> b!6781779 (= e!4093870 e!4093868)))

(declare-fun bm!615345 () Bool)

(assert (=> bm!615345 (= call!615350 call!615348)))

(declare-fun b!6781780 () Bool)

(assert (=> b!6781780 (= e!4093869 e!4093867)))

(assert (=> b!6781780 (= c!1259931 ((_ is Union!16603) (ite c!1259666 (regOne!33719 r!7292) (regOne!33718 r!7292))))))

(declare-fun b!6781781 () Bool)

(assert (=> b!6781781 (= e!4093868 call!615347)))

(assert (= (and d!2130671 c!1259932) b!6781775))

(assert (= (and d!2130671 (not c!1259932)) b!6781780))

(assert (= (and b!6781780 c!1259931) b!6781774))

(assert (= (and b!6781780 (not c!1259931)) b!6781776))

(assert (= (and b!6781776 res!2772102) b!6781772))

(assert (= (and b!6781776 c!1259930) b!6781773))

(assert (= (and b!6781776 (not c!1259930)) b!6781771))

(assert (= (and b!6781771 c!1259929) b!6781777))

(assert (= (and b!6781771 (not c!1259929)) b!6781779))

(assert (= (and b!6781779 c!1259933) b!6781781))

(assert (= (and b!6781779 (not c!1259933)) b!6781778))

(assert (= (or b!6781777 b!6781781) bm!615345))

(assert (= (or b!6781777 b!6781781) bm!615344))

(assert (= (or b!6781773 bm!615345) bm!615341))

(assert (= (or b!6781773 bm!615344) bm!615340))

(assert (= (or b!6781774 bm!615340) bm!615342))

(assert (= (or b!6781774 b!6781773) bm!615343))

(declare-fun m!7530410 () Bool)

(assert (=> b!6781772 m!7530410))

(declare-fun m!7530416 () Bool)

(assert (=> bm!615341 m!7530416))

(declare-fun m!7530418 () Bool)

(assert (=> bm!615343 m!7530418))

(declare-fun m!7530420 () Bool)

(assert (=> b!6781775 m!7530420))

(declare-fun m!7530422 () Bool)

(assert (=> bm!615342 m!7530422))

(assert (=> bm!615170 d!2130671))

(declare-fun d!2130683 () Bool)

(assert (=> d!2130683 (= (flatMap!2084 z!1189 lambda!381664) (choose!50492 z!1189 lambda!381664))))

(declare-fun bs!1806097 () Bool)

(assert (= bs!1806097 d!2130683))

(declare-fun m!7530424 () Bool)

(assert (=> bs!1806097 m!7530424))

(assert (=> d!2130257 d!2130683))

(declare-fun b!6781802 () Bool)

(declare-fun res!2772116 () Bool)

(declare-fun e!4093887 () Bool)

(assert (=> b!6781802 (=> res!2772116 e!4093887)))

(declare-fun e!4093891 () Bool)

(assert (=> b!6781802 (= res!2772116 e!4093891)))

(declare-fun res!2772112 () Bool)

(assert (=> b!6781802 (=> (not res!2772112) (not e!4093891))))

(declare-fun lt!2444944 () Bool)

(assert (=> b!6781802 (= res!2772112 lt!2444944)))

(declare-fun b!6781803 () Bool)

(declare-fun e!4093890 () Bool)

(assert (=> b!6781803 (= e!4093890 (nullable!6582 r!7292))))

(declare-fun bm!615355 () Bool)

(declare-fun call!615360 () Bool)

(assert (=> bm!615355 (= call!615360 (isEmpty!38345 (_2!36881 (get!22974 lt!2444887))))))

(declare-fun b!6781804 () Bool)

(declare-fun e!4093892 () Bool)

(assert (=> b!6781804 (= e!4093887 e!4093892)))

(declare-fun res!2772110 () Bool)

(assert (=> b!6781804 (=> (not res!2772110) (not e!4093892))))

(assert (=> b!6781804 (= res!2772110 (not lt!2444944))))

(declare-fun b!6781805 () Bool)

(declare-fun e!4093886 () Bool)

(assert (=> b!6781805 (= e!4093886 (not (= (head!13617 (_2!36881 (get!22974 lt!2444887))) (c!1259507 r!7292))))))

(declare-fun b!6781806 () Bool)

(declare-fun res!2772115 () Bool)

(assert (=> b!6781806 (=> res!2772115 e!4093887)))

(assert (=> b!6781806 (= res!2772115 (not ((_ is ElementMatch!16603) r!7292)))))

(declare-fun e!4093888 () Bool)

(assert (=> b!6781806 (= e!4093888 e!4093887)))

(declare-fun b!6781807 () Bool)

(assert (=> b!6781807 (= e!4093890 (matchR!8786 (derivativeStep!5267 r!7292 (head!13617 (_2!36881 (get!22974 lt!2444887)))) (tail!12702 (_2!36881 (get!22974 lt!2444887)))))))

(declare-fun b!6781809 () Bool)

(declare-fun res!2772109 () Bool)

(assert (=> b!6781809 (=> (not res!2772109) (not e!4093891))))

(assert (=> b!6781809 (= res!2772109 (isEmpty!38345 (tail!12702 (_2!36881 (get!22974 lt!2444887)))))))

(declare-fun b!6781810 () Bool)

(declare-fun e!4093889 () Bool)

(assert (=> b!6781810 (= e!4093889 (= lt!2444944 call!615360))))

(declare-fun b!6781811 () Bool)

(assert (=> b!6781811 (= e!4093889 e!4093888)))

(declare-fun c!1259941 () Bool)

(assert (=> b!6781811 (= c!1259941 ((_ is EmptyLang!16603) r!7292))))

(declare-fun b!6781812 () Bool)

(declare-fun res!2772113 () Bool)

(assert (=> b!6781812 (=> (not res!2772113) (not e!4093891))))

(assert (=> b!6781812 (= res!2772113 (not call!615360))))

(declare-fun b!6781813 () Bool)

(assert (=> b!6781813 (= e!4093888 (not lt!2444944))))

(declare-fun b!6781814 () Bool)

(declare-fun res!2772114 () Bool)

(assert (=> b!6781814 (=> res!2772114 e!4093886)))

(assert (=> b!6781814 (= res!2772114 (not (isEmpty!38345 (tail!12702 (_2!36881 (get!22974 lt!2444887))))))))

(declare-fun b!6781815 () Bool)

(assert (=> b!6781815 (= e!4093892 e!4093886)))

(declare-fun res!2772111 () Bool)

(assert (=> b!6781815 (=> res!2772111 e!4093886)))

(assert (=> b!6781815 (= res!2772111 call!615360)))

(declare-fun d!2130685 () Bool)

(assert (=> d!2130685 e!4093889))

(declare-fun c!1259943 () Bool)

(assert (=> d!2130685 (= c!1259943 ((_ is EmptyExpr!16603) r!7292))))

(assert (=> d!2130685 (= lt!2444944 e!4093890)))

(declare-fun c!1259942 () Bool)

(assert (=> d!2130685 (= c!1259942 (isEmpty!38345 (_2!36881 (get!22974 lt!2444887))))))

(assert (=> d!2130685 (validRegex!8339 r!7292)))

(assert (=> d!2130685 (= (matchR!8786 r!7292 (_2!36881 (get!22974 lt!2444887))) lt!2444944)))

(declare-fun b!6781808 () Bool)

(assert (=> b!6781808 (= e!4093891 (= (head!13617 (_2!36881 (get!22974 lt!2444887))) (c!1259507 r!7292)))))

(assert (= (and d!2130685 c!1259942) b!6781803))

(assert (= (and d!2130685 (not c!1259942)) b!6781807))

(assert (= (and d!2130685 c!1259943) b!6781810))

(assert (= (and d!2130685 (not c!1259943)) b!6781811))

(assert (= (and b!6781811 c!1259941) b!6781813))

(assert (= (and b!6781811 (not c!1259941)) b!6781806))

(assert (= (and b!6781806 (not res!2772115)) b!6781802))

(assert (= (and b!6781802 res!2772112) b!6781812))

(assert (= (and b!6781812 res!2772113) b!6781809))

(assert (= (and b!6781809 res!2772109) b!6781808))

(assert (= (and b!6781802 (not res!2772116)) b!6781804))

(assert (= (and b!6781804 res!2772110) b!6781815))

(assert (= (and b!6781815 (not res!2772111)) b!6781814))

(assert (= (and b!6781814 (not res!2772114)) b!6781805))

(assert (= (or b!6781810 b!6781812 b!6781815) bm!615355))

(declare-fun m!7530432 () Bool)

(assert (=> d!2130685 m!7530432))

(assert (=> d!2130685 m!7529074))

(assert (=> b!6781803 m!7529434))

(assert (=> bm!615355 m!7530432))

(declare-fun m!7530436 () Bool)

(assert (=> b!6781814 m!7530436))

(assert (=> b!6781814 m!7530436))

(declare-fun m!7530438 () Bool)

(assert (=> b!6781814 m!7530438))

(declare-fun m!7530440 () Bool)

(assert (=> b!6781807 m!7530440))

(assert (=> b!6781807 m!7530440))

(declare-fun m!7530444 () Bool)

(assert (=> b!6781807 m!7530444))

(assert (=> b!6781807 m!7530436))

(assert (=> b!6781807 m!7530444))

(assert (=> b!6781807 m!7530436))

(declare-fun m!7530446 () Bool)

(assert (=> b!6781807 m!7530446))

(assert (=> b!6781808 m!7530440))

(assert (=> b!6781809 m!7530436))

(assert (=> b!6781809 m!7530436))

(assert (=> b!6781809 m!7530438))

(assert (=> b!6781805 m!7530440))

(assert (=> b!6781043 d!2130685))

(assert (=> b!6781043 d!2130585))

(declare-fun d!2130689 () Bool)

(assert (=> d!2130689 (= (nullable!6582 lt!2444765) (nullableFct!2488 lt!2444765))))

(declare-fun bs!1806098 () Bool)

(assert (= bs!1806098 d!2130689))

(declare-fun m!7530448 () Bool)

(assert (=> bs!1806098 m!7530448))

(assert (=> b!6781143 d!2130689))

(assert (=> b!6780800 d!2130627))

(assert (=> b!6780800 d!2130629))

(declare-fun d!2130691 () Bool)

(assert (=> d!2130691 true))

(declare-fun setRes!46392 () Bool)

(assert (=> d!2130691 setRes!46392))

(declare-fun condSetEmpty!46392 () Bool)

(declare-fun res!2772117 () (InoxSet Context!11974))

(assert (=> d!2130691 (= condSetEmpty!46392 (= res!2772117 ((as const (Array Context!11974 Bool)) false)))))

(assert (=> d!2130691 (= (choose!50492 lt!2444762 lambda!381617) res!2772117)))

(declare-fun setIsEmpty!46392 () Bool)

(assert (=> setIsEmpty!46392 setRes!46392))

(declare-fun setElem!46392 () Context!11974)

(declare-fun setNonEmpty!46392 () Bool)

(declare-fun e!4093893 () Bool)

(declare-fun tp!1857957 () Bool)

(assert (=> setNonEmpty!46392 (= setRes!46392 (and tp!1857957 (inv!84754 setElem!46392) e!4093893))))

(declare-fun setRest!46392 () (InoxSet Context!11974))

(assert (=> setNonEmpty!46392 (= res!2772117 ((_ map or) (store ((as const (Array Context!11974 Bool)) false) setElem!46392 true) setRest!46392))))

(declare-fun b!6781816 () Bool)

(declare-fun tp!1857956 () Bool)

(assert (=> b!6781816 (= e!4093893 tp!1857956)))

(assert (= (and d!2130691 condSetEmpty!46392) setIsEmpty!46392))

(assert (= (and d!2130691 (not condSetEmpty!46392)) setNonEmpty!46392))

(assert (= setNonEmpty!46392 b!6781816))

(declare-fun m!7530450 () Bool)

(assert (=> setNonEmpty!46392 m!7530450))

(assert (=> d!2130361 d!2130691))

(declare-fun b!6781828 () Bool)

(declare-fun res!2772126 () Bool)

(declare-fun e!4093901 () Bool)

(assert (=> b!6781828 (=> res!2772126 e!4093901)))

(declare-fun e!4093905 () Bool)

(assert (=> b!6781828 (= res!2772126 e!4093905)))

(declare-fun res!2772122 () Bool)

(assert (=> b!6781828 (=> (not res!2772122) (not e!4093905))))

(declare-fun lt!2444945 () Bool)

(assert (=> b!6781828 (= res!2772122 lt!2444945)))

(declare-fun b!6781829 () Bool)

(declare-fun e!4093904 () Bool)

(assert (=> b!6781829 (= e!4093904 (nullable!6582 (derivativeStep!5267 r!7292 (head!13617 s!2326))))))

(declare-fun bm!615362 () Bool)

(declare-fun call!615367 () Bool)

(assert (=> bm!615362 (= call!615367 (isEmpty!38345 (tail!12702 s!2326)))))

(declare-fun b!6781830 () Bool)

(declare-fun e!4093906 () Bool)

(assert (=> b!6781830 (= e!4093901 e!4093906)))

(declare-fun res!2772120 () Bool)

(assert (=> b!6781830 (=> (not res!2772120) (not e!4093906))))

(assert (=> b!6781830 (= res!2772120 (not lt!2444945))))

(declare-fun b!6781831 () Bool)

(declare-fun e!4093900 () Bool)

(assert (=> b!6781831 (= e!4093900 (not (= (head!13617 (tail!12702 s!2326)) (c!1259507 (derivativeStep!5267 r!7292 (head!13617 s!2326))))))))

(declare-fun b!6781832 () Bool)

(declare-fun res!2772125 () Bool)

(assert (=> b!6781832 (=> res!2772125 e!4093901)))

(assert (=> b!6781832 (= res!2772125 (not ((_ is ElementMatch!16603) (derivativeStep!5267 r!7292 (head!13617 s!2326)))))))

(declare-fun e!4093902 () Bool)

(assert (=> b!6781832 (= e!4093902 e!4093901)))

(declare-fun b!6781833 () Bool)

(assert (=> b!6781833 (= e!4093904 (matchR!8786 (derivativeStep!5267 (derivativeStep!5267 r!7292 (head!13617 s!2326)) (head!13617 (tail!12702 s!2326))) (tail!12702 (tail!12702 s!2326))))))

(declare-fun b!6781835 () Bool)

(declare-fun res!2772119 () Bool)

(assert (=> b!6781835 (=> (not res!2772119) (not e!4093905))))

(assert (=> b!6781835 (= res!2772119 (isEmpty!38345 (tail!12702 (tail!12702 s!2326))))))

(declare-fun b!6781836 () Bool)

(declare-fun e!4093903 () Bool)

(assert (=> b!6781836 (= e!4093903 (= lt!2444945 call!615367))))

(declare-fun b!6781837 () Bool)

(assert (=> b!6781837 (= e!4093903 e!4093902)))

(declare-fun c!1259949 () Bool)

(assert (=> b!6781837 (= c!1259949 ((_ is EmptyLang!16603) (derivativeStep!5267 r!7292 (head!13617 s!2326))))))

(declare-fun b!6781838 () Bool)

(declare-fun res!2772123 () Bool)

(assert (=> b!6781838 (=> (not res!2772123) (not e!4093905))))

(assert (=> b!6781838 (= res!2772123 (not call!615367))))

(declare-fun b!6781839 () Bool)

(assert (=> b!6781839 (= e!4093902 (not lt!2444945))))

(declare-fun b!6781840 () Bool)

(declare-fun res!2772124 () Bool)

(assert (=> b!6781840 (=> res!2772124 e!4093900)))

(assert (=> b!6781840 (= res!2772124 (not (isEmpty!38345 (tail!12702 (tail!12702 s!2326)))))))

(declare-fun b!6781841 () Bool)

(assert (=> b!6781841 (= e!4093906 e!4093900)))

(declare-fun res!2772121 () Bool)

(assert (=> b!6781841 (=> res!2772121 e!4093900)))

(assert (=> b!6781841 (= res!2772121 call!615367)))

(declare-fun d!2130695 () Bool)

(assert (=> d!2130695 e!4093903))

(declare-fun c!1259951 () Bool)

(assert (=> d!2130695 (= c!1259951 ((_ is EmptyExpr!16603) (derivativeStep!5267 r!7292 (head!13617 s!2326))))))

(assert (=> d!2130695 (= lt!2444945 e!4093904)))

(declare-fun c!1259950 () Bool)

(assert (=> d!2130695 (= c!1259950 (isEmpty!38345 (tail!12702 s!2326)))))

(assert (=> d!2130695 (validRegex!8339 (derivativeStep!5267 r!7292 (head!13617 s!2326)))))

(assert (=> d!2130695 (= (matchR!8786 (derivativeStep!5267 r!7292 (head!13617 s!2326)) (tail!12702 s!2326)) lt!2444945)))

(declare-fun b!6781834 () Bool)

(assert (=> b!6781834 (= e!4093905 (= (head!13617 (tail!12702 s!2326)) (c!1259507 (derivativeStep!5267 r!7292 (head!13617 s!2326)))))))

(assert (= (and d!2130695 c!1259950) b!6781829))

(assert (= (and d!2130695 (not c!1259950)) b!6781833))

(assert (= (and d!2130695 c!1259951) b!6781836))

(assert (= (and d!2130695 (not c!1259951)) b!6781837))

(assert (= (and b!6781837 c!1259949) b!6781839))

(assert (= (and b!6781837 (not c!1259949)) b!6781832))

(assert (= (and b!6781832 (not res!2772125)) b!6781828))

(assert (= (and b!6781828 res!2772122) b!6781838))

(assert (= (and b!6781838 res!2772123) b!6781835))

(assert (= (and b!6781835 res!2772119) b!6781834))

(assert (= (and b!6781828 (not res!2772126)) b!6781830))

(assert (= (and b!6781830 res!2772120) b!6781841))

(assert (= (and b!6781841 (not res!2772121)) b!6781840))

(assert (= (and b!6781840 (not res!2772124)) b!6781831))

(assert (= (or b!6781836 b!6781838 b!6781841) bm!615362))

(assert (=> d!2130695 m!7529246))

(assert (=> d!2130695 m!7529436))

(assert (=> d!2130695 m!7529438))

(declare-fun m!7530452 () Bool)

(assert (=> d!2130695 m!7530452))

(assert (=> b!6781829 m!7529438))

(declare-fun m!7530454 () Bool)

(assert (=> b!6781829 m!7530454))

(assert (=> bm!615362 m!7529246))

(assert (=> bm!615362 m!7529436))

(assert (=> b!6781840 m!7529246))

(assert (=> b!6781840 m!7530076))

(assert (=> b!6781840 m!7530076))

(assert (=> b!6781840 m!7530156))

(assert (=> b!6781833 m!7529246))

(assert (=> b!6781833 m!7530072))

(assert (=> b!6781833 m!7529438))

(assert (=> b!6781833 m!7530072))

(declare-fun m!7530458 () Bool)

(assert (=> b!6781833 m!7530458))

(assert (=> b!6781833 m!7529246))

(assert (=> b!6781833 m!7530076))

(assert (=> b!6781833 m!7530458))

(assert (=> b!6781833 m!7530076))

(declare-fun m!7530464 () Bool)

(assert (=> b!6781833 m!7530464))

(assert (=> b!6781834 m!7529246))

(assert (=> b!6781834 m!7530072))

(assert (=> b!6781835 m!7529246))

(assert (=> b!6781835 m!7530076))

(assert (=> b!6781835 m!7530076))

(assert (=> b!6781835 m!7530156))

(assert (=> b!6781831 m!7529246))

(assert (=> b!6781831 m!7530072))

(assert (=> b!6780771 d!2130695))

(declare-fun b!6781842 () Bool)

(declare-fun e!4093907 () Regex!16603)

(declare-fun call!615368 () Regex!16603)

(assert (=> b!6781842 (= e!4093907 (Union!16603 (Concat!25448 call!615368 (regTwo!33718 r!7292)) EmptyLang!16603))))

(declare-fun b!6781843 () Bool)

(declare-fun e!4093909 () Regex!16603)

(declare-fun call!615371 () Regex!16603)

(declare-fun call!615370 () Regex!16603)

(assert (=> b!6781843 (= e!4093909 (Union!16603 call!615371 call!615370))))

(declare-fun bm!615363 () Bool)

(assert (=> bm!615363 (= call!615368 call!615371)))

(declare-fun c!1259956 () Bool)

(declare-fun c!1259954 () Bool)

(declare-fun bm!615364 () Bool)

(assert (=> bm!615364 (= call!615371 (derivativeStep!5267 (ite c!1259954 (regOne!33719 r!7292) (ite c!1259956 (regTwo!33718 r!7292) (regOne!33718 r!7292))) (head!13617 s!2326)))))

(declare-fun b!6781844 () Bool)

(assert (=> b!6781844 (= c!1259954 ((_ is Union!16603) r!7292))))

(declare-fun e!4093911 () Regex!16603)

(assert (=> b!6781844 (= e!4093911 e!4093909)))

(declare-fun b!6781845 () Bool)

(assert (=> b!6781845 (= e!4093911 (ite (= (head!13617 s!2326) (c!1259507 r!7292)) EmptyExpr!16603 EmptyLang!16603))))

(declare-fun b!6781846 () Bool)

(declare-fun e!4093908 () Regex!16603)

(assert (=> b!6781846 (= e!4093908 EmptyLang!16603)))

(declare-fun b!6781847 () Bool)

(assert (=> b!6781847 (= e!4093908 e!4093911)))

(declare-fun c!1259955 () Bool)

(assert (=> b!6781847 (= c!1259955 ((_ is ElementMatch!16603) r!7292))))

(declare-fun b!6781848 () Bool)

(assert (=> b!6781848 (= c!1259956 (nullable!6582 (regOne!33718 r!7292)))))

(declare-fun e!4093910 () Regex!16603)

(assert (=> b!6781848 (= e!4093910 e!4093907)))

(declare-fun bm!615365 () Bool)

(declare-fun c!1259952 () Bool)

(assert (=> bm!615365 (= call!615370 (derivativeStep!5267 (ite c!1259954 (regTwo!33719 r!7292) (ite c!1259952 (reg!16932 r!7292) (regOne!33718 r!7292))) (head!13617 s!2326)))))

(declare-fun bm!615366 () Bool)

(declare-fun call!615369 () Regex!16603)

(assert (=> bm!615366 (= call!615369 call!615370)))

(declare-fun b!6781849 () Bool)

(assert (=> b!6781849 (= e!4093910 (Concat!25448 call!615369 r!7292))))

(declare-fun b!6781850 () Bool)

(assert (=> b!6781850 (= e!4093907 (Union!16603 (Concat!25448 call!615369 (regTwo!33718 r!7292)) call!615368))))

(declare-fun d!2130697 () Bool)

(declare-fun lt!2444946 () Regex!16603)

(assert (=> d!2130697 (validRegex!8339 lt!2444946)))

(assert (=> d!2130697 (= lt!2444946 e!4093908)))

(declare-fun c!1259953 () Bool)

(assert (=> d!2130697 (= c!1259953 (or ((_ is EmptyExpr!16603) r!7292) ((_ is EmptyLang!16603) r!7292)))))

(assert (=> d!2130697 (validRegex!8339 r!7292)))

(assert (=> d!2130697 (= (derivativeStep!5267 r!7292 (head!13617 s!2326)) lt!2444946)))

(declare-fun b!6781851 () Bool)

(assert (=> b!6781851 (= e!4093909 e!4093910)))

(assert (=> b!6781851 (= c!1259952 ((_ is Star!16603) r!7292))))

(assert (= (and d!2130697 c!1259953) b!6781846))

(assert (= (and d!2130697 (not c!1259953)) b!6781847))

(assert (= (and b!6781847 c!1259955) b!6781845))

(assert (= (and b!6781847 (not c!1259955)) b!6781844))

(assert (= (and b!6781844 c!1259954) b!6781843))

(assert (= (and b!6781844 (not c!1259954)) b!6781851))

(assert (= (and b!6781851 c!1259952) b!6781849))

(assert (= (and b!6781851 (not c!1259952)) b!6781848))

(assert (= (and b!6781848 c!1259956) b!6781850))

(assert (= (and b!6781848 (not c!1259956)) b!6781842))

(assert (= (or b!6781850 b!6781842) bm!615363))

(assert (= (or b!6781849 b!6781850) bm!615366))

(assert (= (or b!6781843 bm!615366) bm!615365))

(assert (= (or b!6781843 bm!615363) bm!615364))

(assert (=> bm!615364 m!7529242))

(declare-fun m!7530470 () Bool)

(assert (=> bm!615364 m!7530470))

(assert (=> b!6781848 m!7529468))

(assert (=> bm!615365 m!7529242))

(declare-fun m!7530472 () Bool)

(assert (=> bm!615365 m!7530472))

(declare-fun m!7530474 () Bool)

(assert (=> d!2130697 m!7530474))

(assert (=> d!2130697 m!7529074))

(assert (=> b!6780771 d!2130697))

(assert (=> b!6780771 d!2130523))

(assert (=> b!6780771 d!2130525))

(declare-fun bs!1806105 () Bool)

(declare-fun b!6781867 () Bool)

(assert (= bs!1806105 (and b!6781867 b!6780652)))

(declare-fun lambda!381733 () Int)

(assert (=> bs!1806105 (= (and (= (reg!16932 (regTwo!33719 r!7292)) (reg!16932 r!7292)) (= (regTwo!33719 r!7292) r!7292)) (= lambda!381733 lambda!381651))))

(declare-fun bs!1806108 () Bool)

(assert (= bs!1806108 (and b!6781867 d!2130287)))

(assert (=> bs!1806108 (not (= lambda!381733 lambda!381684))))

(declare-fun bs!1806109 () Bool)

(assert (= bs!1806109 (and b!6781867 d!2130279)))

(assert (=> bs!1806109 (not (= lambda!381733 lambda!381674))))

(declare-fun bs!1806111 () Bool)

(assert (= bs!1806111 (and b!6781867 b!6780302)))

(assert (=> bs!1806111 (not (= lambda!381733 lambda!381616))))

(declare-fun bs!1806112 () Bool)

(assert (= bs!1806112 (and b!6781867 b!6780651)))

(assert (=> bs!1806112 (not (= lambda!381733 lambda!381652))))

(assert (=> bs!1806111 (= (and (= (reg!16932 (regTwo!33719 r!7292)) (reg!16932 r!7292)) (= (regTwo!33719 r!7292) r!7292)) (= lambda!381733 lambda!381615))))

(declare-fun bs!1806113 () Bool)

(assert (= bs!1806113 (and b!6781867 b!6781721)))

(assert (=> bs!1806113 (not (= lambda!381733 lambda!381725))))

(assert (=> bs!1806111 (not (= lambda!381733 lambda!381614))))

(declare-fun bs!1806115 () Bool)

(assert (= bs!1806115 (and b!6781867 b!6781134)))

(assert (=> bs!1806115 (not (= lambda!381733 lambda!381700))))

(assert (=> bs!1806109 (not (= lambda!381733 lambda!381673))))

(declare-fun bs!1806117 () Bool)

(assert (= bs!1806117 (and b!6781867 b!6781135)))

(assert (=> bs!1806117 (= (and (= (reg!16932 (regTwo!33719 r!7292)) (reg!16932 lt!2444765)) (= (regTwo!33719 r!7292) lt!2444765)) (= lambda!381733 lambda!381699))))

(assert (=> bs!1806108 (= (and (= (reg!16932 (regTwo!33719 r!7292)) (reg!16932 r!7292)) (= (regTwo!33719 r!7292) (Star!16603 (reg!16932 r!7292)))) (= lambda!381733 lambda!381685))))

(declare-fun bs!1806118 () Bool)

(assert (= bs!1806118 (and b!6781867 d!2130335)))

(assert (=> bs!1806118 (not (= lambda!381733 lambda!381696))))

(declare-fun bs!1806119 () Bool)

(assert (= bs!1806119 (and b!6781867 b!6781722)))

(assert (=> bs!1806119 (= (and (= (reg!16932 (regTwo!33719 r!7292)) (reg!16932 (regOne!33719 r!7292))) (= (regTwo!33719 r!7292) (regOne!33719 r!7292))) (= lambda!381733 lambda!381722))))

(assert (=> b!6781867 true))

(assert (=> b!6781867 true))

(declare-fun bs!1806125 () Bool)

(declare-fun b!6781866 () Bool)

(assert (= bs!1806125 (and b!6781866 b!6780652)))

(declare-fun lambda!381735 () Int)

(assert (=> bs!1806125 (not (= lambda!381735 lambda!381651))))

(declare-fun bs!1806127 () Bool)

(assert (= bs!1806127 (and b!6781866 d!2130287)))

(assert (=> bs!1806127 (not (= lambda!381735 lambda!381684))))

(declare-fun bs!1806129 () Bool)

(assert (= bs!1806129 (and b!6781866 d!2130279)))

(assert (=> bs!1806129 (= (and (= (regOne!33718 (regTwo!33719 r!7292)) (reg!16932 r!7292)) (= (regTwo!33718 (regTwo!33719 r!7292)) r!7292)) (= lambda!381735 lambda!381674))))

(declare-fun bs!1806131 () Bool)

(assert (= bs!1806131 (and b!6781866 b!6780302)))

(assert (=> bs!1806131 (= (and (= (regOne!33718 (regTwo!33719 r!7292)) (reg!16932 r!7292)) (= (regTwo!33718 (regTwo!33719 r!7292)) r!7292)) (= lambda!381735 lambda!381616))))

(declare-fun bs!1806132 () Bool)

(assert (= bs!1806132 (and b!6781866 b!6780651)))

(assert (=> bs!1806132 (= (and (= (regOne!33718 (regTwo!33719 r!7292)) (regOne!33718 r!7292)) (= (regTwo!33718 (regTwo!33719 r!7292)) (regTwo!33718 r!7292))) (= lambda!381735 lambda!381652))))

(assert (=> bs!1806131 (not (= lambda!381735 lambda!381615))))

(declare-fun bs!1806134 () Bool)

(assert (= bs!1806134 (and b!6781866 b!6781721)))

(assert (=> bs!1806134 (= (and (= (regOne!33718 (regTwo!33719 r!7292)) (regOne!33718 (regOne!33719 r!7292))) (= (regTwo!33718 (regTwo!33719 r!7292)) (regTwo!33718 (regOne!33719 r!7292)))) (= lambda!381735 lambda!381725))))

(assert (=> bs!1806131 (not (= lambda!381735 lambda!381614))))

(declare-fun bs!1806135 () Bool)

(assert (= bs!1806135 (and b!6781866 b!6781134)))

(assert (=> bs!1806135 (= (and (= (regOne!33718 (regTwo!33719 r!7292)) (regOne!33718 lt!2444765)) (= (regTwo!33718 (regTwo!33719 r!7292)) (regTwo!33718 lt!2444765))) (= lambda!381735 lambda!381700))))

(assert (=> bs!1806129 (not (= lambda!381735 lambda!381673))))

(declare-fun bs!1806137 () Bool)

(assert (= bs!1806137 (and b!6781866 b!6781135)))

(assert (=> bs!1806137 (not (= lambda!381735 lambda!381699))))

(declare-fun bs!1806139 () Bool)

(assert (= bs!1806139 (and b!6781866 d!2130335)))

(assert (=> bs!1806139 (not (= lambda!381735 lambda!381696))))

(declare-fun bs!1806140 () Bool)

(assert (= bs!1806140 (and b!6781866 b!6781722)))

(assert (=> bs!1806140 (not (= lambda!381735 lambda!381722))))

(declare-fun bs!1806141 () Bool)

(assert (= bs!1806141 (and b!6781866 b!6781867)))

(assert (=> bs!1806141 (not (= lambda!381735 lambda!381733))))

(assert (=> bs!1806127 (not (= lambda!381735 lambda!381685))))

(assert (=> b!6781866 true))

(assert (=> b!6781866 true))

(declare-fun b!6781864 () Bool)

(declare-fun e!4093923 () Bool)

(declare-fun e!4093922 () Bool)

(assert (=> b!6781864 (= e!4093923 e!4093922)))

(declare-fun res!2772130 () Bool)

(assert (=> b!6781864 (= res!2772130 (not ((_ is EmptyLang!16603) (regTwo!33719 r!7292))))))

(assert (=> b!6781864 (=> (not res!2772130) (not e!4093922))))

(declare-fun b!6781865 () Bool)

(declare-fun c!1259962 () Bool)

(assert (=> b!6781865 (= c!1259962 ((_ is Union!16603) (regTwo!33719 r!7292)))))

(declare-fun e!4093920 () Bool)

(declare-fun e!4093925 () Bool)

(assert (=> b!6781865 (= e!4093920 e!4093925)))

(declare-fun e!4093921 () Bool)

(declare-fun call!615374 () Bool)

(assert (=> b!6781866 (= e!4093921 call!615374)))

(declare-fun e!4093924 () Bool)

(assert (=> b!6781867 (= e!4093924 call!615374)))

(declare-fun b!6781868 () Bool)

(declare-fun e!4093919 () Bool)

(assert (=> b!6781868 (= e!4093925 e!4093919)))

(declare-fun res!2772132 () Bool)

(assert (=> b!6781868 (= res!2772132 (matchRSpec!3704 (regOne!33719 (regTwo!33719 r!7292)) s!2326))))

(assert (=> b!6781868 (=> res!2772132 e!4093919)))

(declare-fun b!6781869 () Bool)

(assert (=> b!6781869 (= e!4093925 e!4093921)))

(declare-fun c!1259964 () Bool)

(assert (=> b!6781869 (= c!1259964 ((_ is Star!16603) (regTwo!33719 r!7292)))))

(declare-fun b!6781870 () Bool)

(declare-fun c!1259961 () Bool)

(assert (=> b!6781870 (= c!1259961 ((_ is ElementMatch!16603) (regTwo!33719 r!7292)))))

(assert (=> b!6781870 (= e!4093922 e!4093920)))

(declare-fun bm!615369 () Bool)

(assert (=> bm!615369 (= call!615374 (Exists!3671 (ite c!1259964 lambda!381733 lambda!381735)))))

(declare-fun d!2130701 () Bool)

(declare-fun c!1259963 () Bool)

(assert (=> d!2130701 (= c!1259963 ((_ is EmptyExpr!16603) (regTwo!33719 r!7292)))))

(assert (=> d!2130701 (= (matchRSpec!3704 (regTwo!33719 r!7292) s!2326) e!4093923)))

(declare-fun b!6781863 () Bool)

(declare-fun call!615375 () Bool)

(assert (=> b!6781863 (= e!4093923 call!615375)))

(declare-fun b!6781871 () Bool)

(declare-fun res!2772131 () Bool)

(assert (=> b!6781871 (=> res!2772131 e!4093924)))

(assert (=> b!6781871 (= res!2772131 call!615375)))

(assert (=> b!6781871 (= e!4093921 e!4093924)))

(declare-fun bm!615370 () Bool)

(assert (=> bm!615370 (= call!615375 (isEmpty!38345 s!2326))))

(declare-fun b!6781872 () Bool)

(assert (=> b!6781872 (= e!4093920 (= s!2326 (Cons!65984 (c!1259507 (regTwo!33719 r!7292)) Nil!65984)))))

(declare-fun b!6781873 () Bool)

(assert (=> b!6781873 (= e!4093919 (matchRSpec!3704 (regTwo!33719 (regTwo!33719 r!7292)) s!2326))))

(assert (= (and d!2130701 c!1259963) b!6781863))

(assert (= (and d!2130701 (not c!1259963)) b!6781864))

(assert (= (and b!6781864 res!2772130) b!6781870))

(assert (= (and b!6781870 c!1259961) b!6781872))

(assert (= (and b!6781870 (not c!1259961)) b!6781865))

(assert (= (and b!6781865 c!1259962) b!6781868))

(assert (= (and b!6781865 (not c!1259962)) b!6781869))

(assert (= (and b!6781868 (not res!2772132)) b!6781873))

(assert (= (and b!6781869 c!1259964) b!6781871))

(assert (= (and b!6781869 (not c!1259964)) b!6781866))

(assert (= (and b!6781871 (not res!2772131)) b!6781867))

(assert (= (or b!6781867 b!6781866) bm!615369))

(assert (= (or b!6781863 b!6781871) bm!615370))

(declare-fun m!7530482 () Bool)

(assert (=> b!6781868 m!7530482))

(declare-fun m!7530484 () Bool)

(assert (=> bm!615369 m!7530484))

(assert (=> bm!615370 m!7529138))

(declare-fun m!7530486 () Bool)

(assert (=> b!6781873 m!7530486))

(assert (=> b!6780658 d!2130701))

(assert (=> d!2130381 d!2130469))

(assert (=> d!2130381 d!2130611))

(assert (=> d!2130163 d!2130159))

(declare-fun d!2130705 () Bool)

(assert (=> d!2130705 (= (flatMap!2084 z!1189 lambda!381617) (dynLambda!26330 lambda!381617 (h!72434 zl!343)))))

(assert (=> d!2130705 true))

(declare-fun _$13!4191 () Unit!159897)

(assert (=> d!2130705 (= (choose!50493 z!1189 (h!72434 zl!343) lambda!381617) _$13!4191)))

(declare-fun b_lambda!255359 () Bool)

(assert (=> (not b_lambda!255359) (not d!2130705)))

(declare-fun bs!1806142 () Bool)

(assert (= bs!1806142 d!2130705))

(assert (=> bs!1806142 m!7529154))

(assert (=> bs!1806142 m!7529210))

(assert (=> d!2130163 d!2130705))

(assert (=> b!6780769 d!2130523))

(declare-fun d!2130709 () Bool)

(declare-fun res!2772144 () Bool)

(declare-fun e!4093937 () Bool)

(assert (=> d!2130709 (=> res!2772144 e!4093937)))

(assert (=> d!2130709 (= res!2772144 ((_ is ElementMatch!16603) lt!2444794))))

(assert (=> d!2130709 (= (validRegex!8339 lt!2444794) e!4093937)))

(declare-fun b!6781893 () Bool)

(declare-fun e!4093938 () Bool)

(assert (=> b!6781893 (= e!4093937 e!4093938)))

(declare-fun c!1259970 () Bool)

(assert (=> b!6781893 (= c!1259970 ((_ is Star!16603) lt!2444794))))

(declare-fun bm!615373 () Bool)

(declare-fun call!615380 () Bool)

(declare-fun call!615378 () Bool)

(assert (=> bm!615373 (= call!615380 call!615378)))

(declare-fun b!6781894 () Bool)

(declare-fun e!4093942 () Bool)

(assert (=> b!6781894 (= e!4093938 e!4093942)))

(declare-fun c!1259971 () Bool)

(assert (=> b!6781894 (= c!1259971 ((_ is Union!16603) lt!2444794))))

(declare-fun bm!615374 () Bool)

(assert (=> bm!615374 (= call!615378 (validRegex!8339 (ite c!1259970 (reg!16932 lt!2444794) (ite c!1259971 (regTwo!33719 lt!2444794) (regTwo!33718 lt!2444794)))))))

(declare-fun b!6781895 () Bool)

(declare-fun res!2772142 () Bool)

(declare-fun e!4093941 () Bool)

(assert (=> b!6781895 (=> res!2772142 e!4093941)))

(assert (=> b!6781895 (= res!2772142 (not ((_ is Concat!25448) lt!2444794)))))

(assert (=> b!6781895 (= e!4093942 e!4093941)))

(declare-fun b!6781896 () Bool)

(declare-fun e!4093939 () Bool)

(assert (=> b!6781896 (= e!4093939 call!615380)))

(declare-fun bm!615375 () Bool)

(declare-fun call!615379 () Bool)

(assert (=> bm!615375 (= call!615379 (validRegex!8339 (ite c!1259971 (regOne!33719 lt!2444794) (regOne!33718 lt!2444794))))))

(declare-fun b!6781897 () Bool)

(declare-fun e!4093936 () Bool)

(assert (=> b!6781897 (= e!4093938 e!4093936)))

(declare-fun res!2772146 () Bool)

(assert (=> b!6781897 (= res!2772146 (not (nullable!6582 (reg!16932 lt!2444794))))))

(assert (=> b!6781897 (=> (not res!2772146) (not e!4093936))))

(declare-fun b!6781898 () Bool)

(assert (=> b!6781898 (= e!4093941 e!4093939)))

(declare-fun res!2772145 () Bool)

(assert (=> b!6781898 (=> (not res!2772145) (not e!4093939))))

(assert (=> b!6781898 (= res!2772145 call!615379)))

(declare-fun b!6781899 () Bool)

(declare-fun e!4093940 () Bool)

(assert (=> b!6781899 (= e!4093940 call!615380)))

(declare-fun b!6781900 () Bool)

(assert (=> b!6781900 (= e!4093936 call!615378)))

(declare-fun b!6781901 () Bool)

(declare-fun res!2772143 () Bool)

(assert (=> b!6781901 (=> (not res!2772143) (not e!4093940))))

(assert (=> b!6781901 (= res!2772143 call!615379)))

(assert (=> b!6781901 (= e!4093942 e!4093940)))

(assert (= (and d!2130709 (not res!2772144)) b!6781893))

(assert (= (and b!6781893 c!1259970) b!6781897))

(assert (= (and b!6781893 (not c!1259970)) b!6781894))

(assert (= (and b!6781897 res!2772146) b!6781900))

(assert (= (and b!6781894 c!1259971) b!6781901))

(assert (= (and b!6781894 (not c!1259971)) b!6781895))

(assert (= (and b!6781901 res!2772143) b!6781899))

(assert (= (and b!6781895 (not res!2772142)) b!6781898))

(assert (= (and b!6781898 res!2772145) b!6781896))

(assert (= (or b!6781899 b!6781896) bm!615373))

(assert (= (or b!6781901 b!6781898) bm!615375))

(assert (= (or b!6781900 bm!615373) bm!615374))

(declare-fun m!7530494 () Bool)

(assert (=> bm!615374 m!7530494))

(declare-fun m!7530496 () Bool)

(assert (=> bm!615375 m!7530496))

(declare-fun m!7530498 () Bool)

(assert (=> b!6781897 m!7530498))

(assert (=> d!2130155 d!2130709))

(declare-fun d!2130711 () Bool)

(declare-fun res!2772147 () Bool)

(declare-fun e!4093943 () Bool)

(assert (=> d!2130711 (=> res!2772147 e!4093943)))

(assert (=> d!2130711 (= res!2772147 ((_ is Nil!65985) (unfocusZipperList!2024 zl!343)))))

(assert (=> d!2130711 (= (forall!15794 (unfocusZipperList!2024 zl!343) lambda!381620) e!4093943)))

(declare-fun b!6781902 () Bool)

(declare-fun e!4093944 () Bool)

(assert (=> b!6781902 (= e!4093943 e!4093944)))

(declare-fun res!2772148 () Bool)

(assert (=> b!6781902 (=> (not res!2772148) (not e!4093944))))

(assert (=> b!6781902 (= res!2772148 (dynLambda!26331 lambda!381620 (h!72433 (unfocusZipperList!2024 zl!343))))))

(declare-fun b!6781903 () Bool)

(assert (=> b!6781903 (= e!4093944 (forall!15794 (t!379824 (unfocusZipperList!2024 zl!343)) lambda!381620))))

(assert (= (and d!2130711 (not res!2772147)) b!6781902))

(assert (= (and b!6781902 res!2772148) b!6781903))

(declare-fun b_lambda!255361 () Bool)

(assert (=> (not b_lambda!255361) (not b!6781902)))

(declare-fun m!7530506 () Bool)

(assert (=> b!6781902 m!7530506))

(declare-fun m!7530508 () Bool)

(assert (=> b!6781903 m!7530508))

(assert (=> d!2130155 d!2130711))

(declare-fun d!2130713 () Bool)

(declare-fun e!4093945 () Bool)

(assert (=> d!2130713 e!4093945))

(declare-fun res!2772149 () Bool)

(assert (=> d!2130713 (=> (not res!2772149) (not e!4093945))))

(declare-fun lt!2444948 () List!66108)

(assert (=> d!2130713 (= res!2772149 (= (content!12850 lt!2444948) ((_ map or) (content!12850 (_1!36881 (get!22974 lt!2444887))) (content!12850 (_2!36881 (get!22974 lt!2444887))))))))

(declare-fun e!4093946 () List!66108)

(assert (=> d!2130713 (= lt!2444948 e!4093946)))

(declare-fun c!1259972 () Bool)

(assert (=> d!2130713 (= c!1259972 ((_ is Nil!65984) (_1!36881 (get!22974 lt!2444887))))))

(assert (=> d!2130713 (= (++!14757 (_1!36881 (get!22974 lt!2444887)) (_2!36881 (get!22974 lt!2444887))) lt!2444948)))

(declare-fun b!6781906 () Bool)

(declare-fun res!2772150 () Bool)

(assert (=> b!6781906 (=> (not res!2772150) (not e!4093945))))

(assert (=> b!6781906 (= res!2772150 (= (size!40636 lt!2444948) (+ (size!40636 (_1!36881 (get!22974 lt!2444887))) (size!40636 (_2!36881 (get!22974 lt!2444887))))))))

(declare-fun b!6781907 () Bool)

(assert (=> b!6781907 (= e!4093945 (or (not (= (_2!36881 (get!22974 lt!2444887)) Nil!65984)) (= lt!2444948 (_1!36881 (get!22974 lt!2444887)))))))

(declare-fun b!6781904 () Bool)

(assert (=> b!6781904 (= e!4093946 (_2!36881 (get!22974 lt!2444887)))))

(declare-fun b!6781905 () Bool)

(assert (=> b!6781905 (= e!4093946 (Cons!65984 (h!72432 (_1!36881 (get!22974 lt!2444887))) (++!14757 (t!379823 (_1!36881 (get!22974 lt!2444887))) (_2!36881 (get!22974 lt!2444887)))))))

(assert (= (and d!2130713 c!1259972) b!6781904))

(assert (= (and d!2130713 (not c!1259972)) b!6781905))

(assert (= (and d!2130713 res!2772149) b!6781906))

(assert (= (and b!6781906 res!2772150) b!6781907))

(declare-fun m!7530512 () Bool)

(assert (=> d!2130713 m!7530512))

(declare-fun m!7530514 () Bool)

(assert (=> d!2130713 m!7530514))

(declare-fun m!7530516 () Bool)

(assert (=> d!2130713 m!7530516))

(declare-fun m!7530518 () Bool)

(assert (=> b!6781906 m!7530518))

(declare-fun m!7530520 () Bool)

(assert (=> b!6781906 m!7530520))

(declare-fun m!7530522 () Bool)

(assert (=> b!6781906 m!7530522))

(declare-fun m!7530524 () Bool)

(assert (=> b!6781905 m!7530524))

(assert (=> b!6781041 d!2130713))

(assert (=> b!6781041 d!2130585))

(declare-fun d!2130717 () Bool)

(assert (=> d!2130717 true))

(declare-fun setRes!46393 () Bool)

(assert (=> d!2130717 setRes!46393))

(declare-fun condSetEmpty!46393 () Bool)

(declare-fun res!2772151 () (InoxSet Context!11974))

(assert (=> d!2130717 (= condSetEmpty!46393 (= res!2772151 ((as const (Array Context!11974 Bool)) false)))))

(assert (=> d!2130717 (= (choose!50492 lt!2444760 lambda!381617) res!2772151)))

(declare-fun setIsEmpty!46393 () Bool)

(assert (=> setIsEmpty!46393 setRes!46393))

(declare-fun tp!1857959 () Bool)

(declare-fun setNonEmpty!46393 () Bool)

(declare-fun e!4093952 () Bool)

(declare-fun setElem!46393 () Context!11974)

(assert (=> setNonEmpty!46393 (= setRes!46393 (and tp!1857959 (inv!84754 setElem!46393) e!4093952))))

(declare-fun setRest!46393 () (InoxSet Context!11974))

(assert (=> setNonEmpty!46393 (= res!2772151 ((_ map or) (store ((as const (Array Context!11974 Bool)) false) setElem!46393 true) setRest!46393))))

(declare-fun b!6781918 () Bool)

(declare-fun tp!1857958 () Bool)

(assert (=> b!6781918 (= e!4093952 tp!1857958)))

(assert (= (and d!2130717 condSetEmpty!46393) setIsEmpty!46393))

(assert (= (and d!2130717 (not condSetEmpty!46393)) setNonEmpty!46393))

(assert (= setNonEmpty!46393 b!6781918))

(declare-fun m!7530530 () Bool)

(assert (=> setNonEmpty!46393 m!7530530))

(assert (=> d!2130369 d!2130717))

(declare-fun d!2130719 () Bool)

(assert (=> d!2130719 (= (Exists!3671 (ite c!1259615 lambda!381651 lambda!381652)) (choose!50496 (ite c!1259615 lambda!381651 lambda!381652)))))

(declare-fun bs!1806143 () Bool)

(assert (= bs!1806143 d!2130719))

(declare-fun m!7530534 () Bool)

(assert (=> bs!1806143 m!7530534))

(assert (=> bm!615120 d!2130719))

(assert (=> d!2130355 d!2130381))

(assert (=> d!2130355 d!2130339))

(declare-fun d!2130723 () Bool)

(assert (=> d!2130723 (= (matchR!8786 (reg!16932 r!7292) (_1!36881 lt!2444761)) (matchZipper!2589 lt!2444760 (_1!36881 lt!2444761)))))

(assert (=> d!2130723 true))

(declare-fun _$44!1775 () Unit!159897)

(assert (=> d!2130723 (= (choose!50507 lt!2444760 lt!2444787 (reg!16932 r!7292) (_1!36881 lt!2444761)) _$44!1775)))

(declare-fun bs!1806155 () Bool)

(assert (= bs!1806155 d!2130723))

(assert (=> bs!1806155 m!7529070))

(assert (=> bs!1806155 m!7529076))

(assert (=> d!2130355 d!2130723))

(assert (=> d!2130355 d!2130611))

(declare-fun d!2130737 () Bool)

(assert (=> d!2130737 true))

(assert (=> d!2130737 true))

(declare-fun res!2772163 () Bool)

(assert (=> d!2130737 (= (choose!50496 lambda!381615) res!2772163)))

(assert (=> d!2130191 d!2130737))

(assert (=> d!2130351 d!2130245))

(assert (=> d!2130351 d!2130345))

(declare-fun d!2130745 () Bool)

(assert (=> d!2130745 (= (matchR!8786 r!7292 (_2!36881 lt!2444761)) (matchZipper!2589 lt!2444762 (_2!36881 lt!2444761)))))

(assert (=> d!2130745 true))

(declare-fun _$44!1776 () Unit!159897)

(assert (=> d!2130745 (= (choose!50507 lt!2444762 lt!2444784 r!7292 (_2!36881 lt!2444761)) _$44!1776)))

(declare-fun bs!1806158 () Bool)

(assert (= bs!1806158 d!2130745))

(assert (=> bs!1806158 m!7529152))

(assert (=> bs!1806158 m!7529078))

(assert (=> d!2130351 d!2130745))

(assert (=> d!2130351 d!2130275))

(declare-fun d!2130747 () Bool)

(assert (=> d!2130747 (= (nullable!6582 (h!72433 (exprs!6487 lt!2444756))) (nullableFct!2488 (h!72433 (exprs!6487 lt!2444756))))))

(declare-fun bs!1806159 () Bool)

(assert (= bs!1806159 d!2130747))

(declare-fun m!7530574 () Bool)

(assert (=> bs!1806159 m!7530574))

(assert (=> b!6780865 d!2130747))

(declare-fun d!2130749 () Bool)

(assert (=> d!2130749 (= (nullable!6582 (h!72433 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985))))) (nullableFct!2488 (h!72433 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985))))))))

(declare-fun bs!1806160 () Bool)

(assert (= bs!1806160 d!2130749))

(declare-fun m!7530576 () Bool)

(assert (=> bs!1806160 m!7530576))

(assert (=> b!6780849 d!2130749))

(assert (=> bs!1805930 d!2130161))

(assert (=> b!6780794 d!2130641))

(declare-fun d!2130751 () Bool)

(assert (=> d!2130751 (= (isEmpty!38347 (tail!12701 (unfocusZipperList!2024 zl!343))) ((_ is Nil!65985) (tail!12701 (unfocusZipperList!2024 zl!343))))))

(assert (=> b!6780381 d!2130751))

(declare-fun d!2130753 () Bool)

(assert (=> d!2130753 (= (tail!12701 (unfocusZipperList!2024 zl!343)) (t!379824 (unfocusZipperList!2024 zl!343)))))

(assert (=> b!6780381 d!2130753))

(declare-fun d!2130755 () Bool)

(assert (=> d!2130755 (= (Exists!3671 lambda!381673) (choose!50496 lambda!381673))))

(declare-fun bs!1806161 () Bool)

(assert (= bs!1806161 d!2130755))

(declare-fun m!7530578 () Bool)

(assert (=> bs!1806161 m!7530578))

(assert (=> d!2130279 d!2130755))

(declare-fun d!2130757 () Bool)

(assert (=> d!2130757 (= (Exists!3671 lambda!381674) (choose!50496 lambda!381674))))

(declare-fun bs!1806162 () Bool)

(assert (= bs!1806162 d!2130757))

(declare-fun m!7530580 () Bool)

(assert (=> bs!1806162 m!7530580))

(assert (=> d!2130279 d!2130757))

(declare-fun bs!1806173 () Bool)

(declare-fun d!2130759 () Bool)

(assert (= bs!1806173 (and d!2130759 b!6780652)))

(declare-fun lambda!381747 () Int)

(assert (=> bs!1806173 (not (= lambda!381747 lambda!381651))))

(declare-fun bs!1806174 () Bool)

(assert (= bs!1806174 (and d!2130759 d!2130287)))

(assert (=> bs!1806174 (= (= r!7292 (Star!16603 (reg!16932 r!7292))) (= lambda!381747 lambda!381684))))

(declare-fun bs!1806175 () Bool)

(assert (= bs!1806175 (and d!2130759 d!2130279)))

(assert (=> bs!1806175 (not (= lambda!381747 lambda!381674))))

(declare-fun bs!1806176 () Bool)

(assert (= bs!1806176 (and d!2130759 b!6780302)))

(assert (=> bs!1806176 (not (= lambda!381747 lambda!381616))))

(declare-fun bs!1806177 () Bool)

(assert (= bs!1806177 (and d!2130759 b!6781866)))

(assert (=> bs!1806177 (not (= lambda!381747 lambda!381735))))

(declare-fun bs!1806179 () Bool)

(assert (= bs!1806179 (and d!2130759 b!6780651)))

(assert (=> bs!1806179 (not (= lambda!381747 lambda!381652))))

(assert (=> bs!1806176 (not (= lambda!381747 lambda!381615))))

(declare-fun bs!1806181 () Bool)

(assert (= bs!1806181 (and d!2130759 b!6781721)))

(assert (=> bs!1806181 (not (= lambda!381747 lambda!381725))))

(assert (=> bs!1806176 (= lambda!381747 lambda!381614)))

(declare-fun bs!1806182 () Bool)

(assert (= bs!1806182 (and d!2130759 b!6781134)))

(assert (=> bs!1806182 (not (= lambda!381747 lambda!381700))))

(assert (=> bs!1806175 (= lambda!381747 lambda!381673)))

(declare-fun bs!1806183 () Bool)

(assert (= bs!1806183 (and d!2130759 b!6781135)))

(assert (=> bs!1806183 (not (= lambda!381747 lambda!381699))))

(declare-fun bs!1806184 () Bool)

(assert (= bs!1806184 (and d!2130759 d!2130335)))

(assert (=> bs!1806184 (= lambda!381747 lambda!381696)))

(declare-fun bs!1806185 () Bool)

(assert (= bs!1806185 (and d!2130759 b!6781722)))

(assert (=> bs!1806185 (not (= lambda!381747 lambda!381722))))

(declare-fun bs!1806187 () Bool)

(assert (= bs!1806187 (and d!2130759 b!6781867)))

(assert (=> bs!1806187 (not (= lambda!381747 lambda!381733))))

(assert (=> bs!1806174 (not (= lambda!381747 lambda!381685))))

(assert (=> d!2130759 true))

(assert (=> d!2130759 true))

(assert (=> d!2130759 true))

(declare-fun lambda!381749 () Int)

(assert (=> bs!1806173 (not (= lambda!381749 lambda!381651))))

(assert (=> bs!1806174 (not (= lambda!381749 lambda!381684))))

(assert (=> bs!1806175 (= lambda!381749 lambda!381674)))

(assert (=> bs!1806176 (= lambda!381749 lambda!381616)))

(assert (=> bs!1806177 (= (and (= (reg!16932 r!7292) (regOne!33718 (regTwo!33719 r!7292))) (= r!7292 (regTwo!33718 (regTwo!33719 r!7292)))) (= lambda!381749 lambda!381735))))

(assert (=> bs!1806176 (not (= lambda!381749 lambda!381615))))

(assert (=> bs!1806181 (= (and (= (reg!16932 r!7292) (regOne!33718 (regOne!33719 r!7292))) (= r!7292 (regTwo!33718 (regOne!33719 r!7292)))) (= lambda!381749 lambda!381725))))

(assert (=> bs!1806176 (not (= lambda!381749 lambda!381614))))

(assert (=> bs!1806182 (= (and (= (reg!16932 r!7292) (regOne!33718 lt!2444765)) (= r!7292 (regTwo!33718 lt!2444765))) (= lambda!381749 lambda!381700))))

(assert (=> bs!1806175 (not (= lambda!381749 lambda!381673))))

(assert (=> bs!1806183 (not (= lambda!381749 lambda!381699))))

(assert (=> bs!1806184 (not (= lambda!381749 lambda!381696))))

(assert (=> bs!1806185 (not (= lambda!381749 lambda!381722))))

(declare-fun bs!1806188 () Bool)

(assert (= bs!1806188 d!2130759))

(assert (=> bs!1806188 (not (= lambda!381749 lambda!381747))))

(assert (=> bs!1806179 (= (and (= (reg!16932 r!7292) (regOne!33718 r!7292)) (= r!7292 (regTwo!33718 r!7292))) (= lambda!381749 lambda!381652))))

(assert (=> bs!1806187 (not (= lambda!381749 lambda!381733))))

(assert (=> bs!1806174 (not (= lambda!381749 lambda!381685))))

(assert (=> d!2130759 true))

(assert (=> d!2130759 true))

(assert (=> d!2130759 true))

(assert (=> d!2130759 (= (Exists!3671 lambda!381747) (Exists!3671 lambda!381749))))

(assert (=> d!2130759 true))

(declare-fun _$90!2656 () Unit!159897)

(assert (=> d!2130759 (= (choose!50503 (reg!16932 r!7292) r!7292 s!2326) _$90!2656)))

(declare-fun m!7530586 () Bool)

(assert (=> bs!1806188 m!7530586))

(declare-fun m!7530588 () Bool)

(assert (=> bs!1806188 m!7530588))

(assert (=> d!2130279 d!2130759))

(assert (=> d!2130279 d!2130611))

(declare-fun d!2130763 () Bool)

(assert (=> d!2130763 (= (nullable!6582 (h!72433 (exprs!6487 (h!72434 zl!343)))) (nullableFct!2488 (h!72433 (exprs!6487 (h!72434 zl!343)))))))

(declare-fun bs!1806192 () Bool)

(assert (= bs!1806192 d!2130763))

(declare-fun m!7530590 () Bool)

(assert (=> bs!1806192 m!7530590))

(assert (=> b!6780402 d!2130763))

(declare-fun d!2130765 () Bool)

(declare-fun c!1259986 () Bool)

(assert (=> d!2130765 (= c!1259986 (isEmpty!38345 (tail!12702 (_1!36881 lt!2444761))))))

(declare-fun e!4093981 () Bool)

(assert (=> d!2130765 (= (matchZipper!2589 (derivationStepZipper!2547 lt!2444760 (head!13617 (_1!36881 lt!2444761))) (tail!12702 (_1!36881 lt!2444761))) e!4093981)))

(declare-fun b!6781963 () Bool)

(assert (=> b!6781963 (= e!4093981 (nullableZipper!2309 (derivationStepZipper!2547 lt!2444760 (head!13617 (_1!36881 lt!2444761)))))))

(declare-fun b!6781964 () Bool)

(assert (=> b!6781964 (= e!4093981 (matchZipper!2589 (derivationStepZipper!2547 (derivationStepZipper!2547 lt!2444760 (head!13617 (_1!36881 lt!2444761))) (head!13617 (tail!12702 (_1!36881 lt!2444761)))) (tail!12702 (tail!12702 (_1!36881 lt!2444761)))))))

(assert (= (and d!2130765 c!1259986) b!6781963))

(assert (= (and d!2130765 (not c!1259986)) b!6781964))

(assert (=> d!2130765 m!7529732))

(assert (=> d!2130765 m!7529798))

(assert (=> b!6781963 m!7529730))

(declare-fun m!7530592 () Bool)

(assert (=> b!6781963 m!7530592))

(assert (=> b!6781964 m!7529732))

(assert (=> b!6781964 m!7530380))

(assert (=> b!6781964 m!7529730))

(assert (=> b!6781964 m!7530380))

(declare-fun m!7530594 () Bool)

(assert (=> b!6781964 m!7530594))

(assert (=> b!6781964 m!7529732))

(assert (=> b!6781964 m!7530376))

(assert (=> b!6781964 m!7530594))

(assert (=> b!6781964 m!7530376))

(declare-fun m!7530596 () Bool)

(assert (=> b!6781964 m!7530596))

(assert (=> b!6781118 d!2130765))

(declare-fun bs!1806199 () Bool)

(declare-fun d!2130767 () Bool)

(assert (= bs!1806199 (and d!2130767 d!2130257)))

(declare-fun lambda!381751 () Int)

(assert (=> bs!1806199 (= (= (head!13617 (_1!36881 lt!2444761)) (h!72432 s!2326)) (= lambda!381751 lambda!381664))))

(declare-fun bs!1806201 () Bool)

(assert (= bs!1806201 (and d!2130767 d!2130651)))

(assert (=> bs!1806201 (= (= (head!13617 (_1!36881 lt!2444761)) (head!13617 (_2!36881 lt!2444761))) (= lambda!381751 lambda!381731))))

(declare-fun bs!1806203 () Bool)

(assert (= bs!1806203 (and d!2130767 d!2130183)))

(assert (=> bs!1806203 (= (= (head!13617 (_1!36881 lt!2444761)) (h!72432 s!2326)) (= lambda!381751 lambda!381629))))

(declare-fun bs!1806204 () Bool)

(assert (= bs!1806204 (and d!2130767 d!2130357)))

(assert (=> bs!1806204 (= (= (head!13617 (_1!36881 lt!2444761)) (h!72432 s!2326)) (= lambda!381751 lambda!381698))))

(declare-fun bs!1806205 () Bool)

(assert (= bs!1806205 (and d!2130767 b!6780319)))

(assert (=> bs!1806205 (= (= (head!13617 (_1!36881 lt!2444761)) (h!72432 s!2326)) (= lambda!381751 lambda!381617))))

(declare-fun bs!1806206 () Bool)

(assert (= bs!1806206 (and d!2130767 d!2130521)))

(assert (=> bs!1806206 (= (= (head!13617 (_1!36881 lt!2444761)) (head!13617 s!2326)) (= lambda!381751 lambda!381716))))

(assert (=> d!2130767 true))

(assert (=> d!2130767 (= (derivationStepZipper!2547 lt!2444760 (head!13617 (_1!36881 lt!2444761))) (flatMap!2084 lt!2444760 lambda!381751))))

(declare-fun bs!1806207 () Bool)

(assert (= bs!1806207 d!2130767))

(declare-fun m!7530598 () Bool)

(assert (=> bs!1806207 m!7530598))

(assert (=> b!6781118 d!2130767))

(assert (=> b!6781118 d!2130545))

(assert (=> b!6781118 d!2130667))

(declare-fun d!2130769 () Bool)

(declare-fun c!1259989 () Bool)

(assert (=> d!2130769 (= c!1259989 ((_ is Nil!65986) lt!2444812))))

(declare-fun e!4093984 () (InoxSet Context!11974))

(assert (=> d!2130769 (= (content!12851 lt!2444812) e!4093984)))

(declare-fun b!6781969 () Bool)

(assert (=> b!6781969 (= e!4093984 ((as const (Array Context!11974 Bool)) false))))

(declare-fun b!6781970 () Bool)

(assert (=> b!6781970 (= e!4093984 ((_ map or) (store ((as const (Array Context!11974 Bool)) false) (h!72434 lt!2444812) true) (content!12851 (t!379825 lt!2444812))))))

(assert (= (and d!2130769 c!1259989) b!6781969))

(assert (= (and d!2130769 (not c!1259989)) b!6781970))

(declare-fun m!7530600 () Bool)

(assert (=> b!6781970 m!7530600))

(declare-fun m!7530602 () Bool)

(assert (=> b!6781970 m!7530602))

(assert (=> b!6780465 d!2130769))

(declare-fun bs!1806222 () Bool)

(declare-fun b!6781975 () Bool)

(assert (= bs!1806222 (and b!6781975 b!6780652)))

(declare-fun lambda!381753 () Int)

(assert (=> bs!1806222 (= (and (= (reg!16932 (regOne!33719 lt!2444765)) (reg!16932 r!7292)) (= (regOne!33719 lt!2444765) r!7292)) (= lambda!381753 lambda!381651))))

(declare-fun bs!1806223 () Bool)

(assert (= bs!1806223 (and b!6781975 d!2130287)))

(assert (=> bs!1806223 (not (= lambda!381753 lambda!381684))))

(declare-fun bs!1806224 () Bool)

(assert (= bs!1806224 (and b!6781975 d!2130279)))

(assert (=> bs!1806224 (not (= lambda!381753 lambda!381674))))

(declare-fun bs!1806226 () Bool)

(assert (= bs!1806226 (and b!6781975 b!6780302)))

(assert (=> bs!1806226 (not (= lambda!381753 lambda!381616))))

(declare-fun bs!1806228 () Bool)

(assert (= bs!1806228 (and b!6781975 d!2130759)))

(assert (=> bs!1806228 (not (= lambda!381753 lambda!381749))))

(declare-fun bs!1806229 () Bool)

(assert (= bs!1806229 (and b!6781975 b!6781866)))

(assert (=> bs!1806229 (not (= lambda!381753 lambda!381735))))

(assert (=> bs!1806226 (= (and (= (reg!16932 (regOne!33719 lt!2444765)) (reg!16932 r!7292)) (= (regOne!33719 lt!2444765) r!7292)) (= lambda!381753 lambda!381615))))

(declare-fun bs!1806230 () Bool)

(assert (= bs!1806230 (and b!6781975 b!6781721)))

(assert (=> bs!1806230 (not (= lambda!381753 lambda!381725))))

(assert (=> bs!1806226 (not (= lambda!381753 lambda!381614))))

(declare-fun bs!1806231 () Bool)

(assert (= bs!1806231 (and b!6781975 b!6781134)))

(assert (=> bs!1806231 (not (= lambda!381753 lambda!381700))))

(assert (=> bs!1806224 (not (= lambda!381753 lambda!381673))))

(declare-fun bs!1806232 () Bool)

(assert (= bs!1806232 (and b!6781975 b!6781135)))

(assert (=> bs!1806232 (= (and (= (reg!16932 (regOne!33719 lt!2444765)) (reg!16932 lt!2444765)) (= (regOne!33719 lt!2444765) lt!2444765)) (= lambda!381753 lambda!381699))))

(declare-fun bs!1806234 () Bool)

(assert (= bs!1806234 (and b!6781975 d!2130335)))

(assert (=> bs!1806234 (not (= lambda!381753 lambda!381696))))

(declare-fun bs!1806235 () Bool)

(assert (= bs!1806235 (and b!6781975 b!6781722)))

(assert (=> bs!1806235 (= (and (= (reg!16932 (regOne!33719 lt!2444765)) (reg!16932 (regOne!33719 r!7292))) (= (regOne!33719 lt!2444765) (regOne!33719 r!7292))) (= lambda!381753 lambda!381722))))

(assert (=> bs!1806228 (not (= lambda!381753 lambda!381747))))

(declare-fun bs!1806236 () Bool)

(assert (= bs!1806236 (and b!6781975 b!6780651)))

(assert (=> bs!1806236 (not (= lambda!381753 lambda!381652))))

(declare-fun bs!1806237 () Bool)

(assert (= bs!1806237 (and b!6781975 b!6781867)))

(assert (=> bs!1806237 (= (and (= (reg!16932 (regOne!33719 lt!2444765)) (reg!16932 (regTwo!33719 r!7292))) (= (regOne!33719 lt!2444765) (regTwo!33719 r!7292))) (= lambda!381753 lambda!381733))))

(assert (=> bs!1806223 (= (and (= (reg!16932 (regOne!33719 lt!2444765)) (reg!16932 r!7292)) (= (regOne!33719 lt!2444765) (Star!16603 (reg!16932 r!7292)))) (= lambda!381753 lambda!381685))))

(assert (=> b!6781975 true))

(assert (=> b!6781975 true))

(declare-fun bs!1806242 () Bool)

(declare-fun b!6781974 () Bool)

(assert (= bs!1806242 (and b!6781974 b!6780652)))

(declare-fun lambda!381755 () Int)

(assert (=> bs!1806242 (not (= lambda!381755 lambda!381651))))

(declare-fun bs!1806245 () Bool)

(assert (= bs!1806245 (and b!6781974 d!2130287)))

(assert (=> bs!1806245 (not (= lambda!381755 lambda!381684))))

(declare-fun bs!1806248 () Bool)

(assert (= bs!1806248 (and b!6781974 b!6780302)))

(assert (=> bs!1806248 (= (and (= (regOne!33718 (regOne!33719 lt!2444765)) (reg!16932 r!7292)) (= (regTwo!33718 (regOne!33719 lt!2444765)) r!7292)) (= lambda!381755 lambda!381616))))

(declare-fun bs!1806250 () Bool)

(assert (= bs!1806250 (and b!6781974 d!2130759)))

(assert (=> bs!1806250 (= (and (= (regOne!33718 (regOne!33719 lt!2444765)) (reg!16932 r!7292)) (= (regTwo!33718 (regOne!33719 lt!2444765)) r!7292)) (= lambda!381755 lambda!381749))))

(declare-fun bs!1806252 () Bool)

(assert (= bs!1806252 (and b!6781974 b!6781866)))

(assert (=> bs!1806252 (= (and (= (regOne!33718 (regOne!33719 lt!2444765)) (regOne!33718 (regTwo!33719 r!7292))) (= (regTwo!33718 (regOne!33719 lt!2444765)) (regTwo!33718 (regTwo!33719 r!7292)))) (= lambda!381755 lambda!381735))))

(assert (=> bs!1806248 (not (= lambda!381755 lambda!381615))))

(declare-fun bs!1806253 () Bool)

(assert (= bs!1806253 (and b!6781974 b!6781721)))

(assert (=> bs!1806253 (= (and (= (regOne!33718 (regOne!33719 lt!2444765)) (regOne!33718 (regOne!33719 r!7292))) (= (regTwo!33718 (regOne!33719 lt!2444765)) (regTwo!33718 (regOne!33719 r!7292)))) (= lambda!381755 lambda!381725))))

(assert (=> bs!1806248 (not (= lambda!381755 lambda!381614))))

(declare-fun bs!1806254 () Bool)

(assert (= bs!1806254 (and b!6781974 b!6781134)))

(assert (=> bs!1806254 (= (and (= (regOne!33718 (regOne!33719 lt!2444765)) (regOne!33718 lt!2444765)) (= (regTwo!33718 (regOne!33719 lt!2444765)) (regTwo!33718 lt!2444765))) (= lambda!381755 lambda!381700))))

(declare-fun bs!1806255 () Bool)

(assert (= bs!1806255 (and b!6781974 d!2130279)))

(assert (=> bs!1806255 (not (= lambda!381755 lambda!381673))))

(declare-fun bs!1806256 () Bool)

(assert (= bs!1806256 (and b!6781974 b!6781135)))

(assert (=> bs!1806256 (not (= lambda!381755 lambda!381699))))

(assert (=> bs!1806255 (= (and (= (regOne!33718 (regOne!33719 lt!2444765)) (reg!16932 r!7292)) (= (regTwo!33718 (regOne!33719 lt!2444765)) r!7292)) (= lambda!381755 lambda!381674))))

(declare-fun bs!1806257 () Bool)

(assert (= bs!1806257 (and b!6781974 b!6781975)))

(assert (=> bs!1806257 (not (= lambda!381755 lambda!381753))))

(declare-fun bs!1806258 () Bool)

(assert (= bs!1806258 (and b!6781974 d!2130335)))

(assert (=> bs!1806258 (not (= lambda!381755 lambda!381696))))

(declare-fun bs!1806260 () Bool)

(assert (= bs!1806260 (and b!6781974 b!6781722)))

(assert (=> bs!1806260 (not (= lambda!381755 lambda!381722))))

(assert (=> bs!1806250 (not (= lambda!381755 lambda!381747))))

(declare-fun bs!1806264 () Bool)

(assert (= bs!1806264 (and b!6781974 b!6780651)))

(assert (=> bs!1806264 (= (and (= (regOne!33718 (regOne!33719 lt!2444765)) (regOne!33718 r!7292)) (= (regTwo!33718 (regOne!33719 lt!2444765)) (regTwo!33718 r!7292))) (= lambda!381755 lambda!381652))))

(declare-fun bs!1806267 () Bool)

(assert (= bs!1806267 (and b!6781974 b!6781867)))

(assert (=> bs!1806267 (not (= lambda!381755 lambda!381733))))

(assert (=> bs!1806245 (not (= lambda!381755 lambda!381685))))

(assert (=> b!6781974 true))

(assert (=> b!6781974 true))

(declare-fun b!6781972 () Bool)

(declare-fun e!4093989 () Bool)

(declare-fun e!4093988 () Bool)

(assert (=> b!6781972 (= e!4093989 e!4093988)))

(declare-fun res!2772183 () Bool)

(assert (=> b!6781972 (= res!2772183 (not ((_ is EmptyLang!16603) (regOne!33719 lt!2444765))))))

(assert (=> b!6781972 (=> (not res!2772183) (not e!4093988))))

(declare-fun b!6781973 () Bool)

(declare-fun c!1259991 () Bool)

(assert (=> b!6781973 (= c!1259991 ((_ is Union!16603) (regOne!33719 lt!2444765)))))

(declare-fun e!4093986 () Bool)

(declare-fun e!4093991 () Bool)

(assert (=> b!6781973 (= e!4093986 e!4093991)))

(declare-fun e!4093987 () Bool)

(declare-fun call!615390 () Bool)

(assert (=> b!6781974 (= e!4093987 call!615390)))

(declare-fun e!4093990 () Bool)

(assert (=> b!6781975 (= e!4093990 call!615390)))

(declare-fun b!6781976 () Bool)

(declare-fun e!4093985 () Bool)

(assert (=> b!6781976 (= e!4093991 e!4093985)))

(declare-fun res!2772185 () Bool)

(assert (=> b!6781976 (= res!2772185 (matchRSpec!3704 (regOne!33719 (regOne!33719 lt!2444765)) s!2326))))

(assert (=> b!6781976 (=> res!2772185 e!4093985)))

(declare-fun b!6781977 () Bool)

(assert (=> b!6781977 (= e!4093991 e!4093987)))

(declare-fun c!1259993 () Bool)

(assert (=> b!6781977 (= c!1259993 ((_ is Star!16603) (regOne!33719 lt!2444765)))))

(declare-fun b!6781978 () Bool)

(declare-fun c!1259990 () Bool)

(assert (=> b!6781978 (= c!1259990 ((_ is ElementMatch!16603) (regOne!33719 lt!2444765)))))

(assert (=> b!6781978 (= e!4093988 e!4093986)))

(declare-fun bm!615385 () Bool)

(assert (=> bm!615385 (= call!615390 (Exists!3671 (ite c!1259993 lambda!381753 lambda!381755)))))

(declare-fun d!2130771 () Bool)

(declare-fun c!1259992 () Bool)

(assert (=> d!2130771 (= c!1259992 ((_ is EmptyExpr!16603) (regOne!33719 lt!2444765)))))

(assert (=> d!2130771 (= (matchRSpec!3704 (regOne!33719 lt!2444765) s!2326) e!4093989)))

(declare-fun b!6781971 () Bool)

(declare-fun call!615391 () Bool)

(assert (=> b!6781971 (= e!4093989 call!615391)))

(declare-fun b!6781979 () Bool)

(declare-fun res!2772184 () Bool)

(assert (=> b!6781979 (=> res!2772184 e!4093990)))

(assert (=> b!6781979 (= res!2772184 call!615391)))

(assert (=> b!6781979 (= e!4093987 e!4093990)))

(declare-fun bm!615386 () Bool)

(assert (=> bm!615386 (= call!615391 (isEmpty!38345 s!2326))))

(declare-fun b!6781980 () Bool)

(assert (=> b!6781980 (= e!4093986 (= s!2326 (Cons!65984 (c!1259507 (regOne!33719 lt!2444765)) Nil!65984)))))

(declare-fun b!6781981 () Bool)

(assert (=> b!6781981 (= e!4093985 (matchRSpec!3704 (regTwo!33719 (regOne!33719 lt!2444765)) s!2326))))

(assert (= (and d!2130771 c!1259992) b!6781971))

(assert (= (and d!2130771 (not c!1259992)) b!6781972))

(assert (= (and b!6781972 res!2772183) b!6781978))

(assert (= (and b!6781978 c!1259990) b!6781980))

(assert (= (and b!6781978 (not c!1259990)) b!6781973))

(assert (= (and b!6781973 c!1259991) b!6781976))

(assert (= (and b!6781973 (not c!1259991)) b!6781977))

(assert (= (and b!6781976 (not res!2772185)) b!6781981))

(assert (= (and b!6781977 c!1259993) b!6781979))

(assert (= (and b!6781977 (not c!1259993)) b!6781974))

(assert (= (and b!6781979 (not res!2772184)) b!6781975))

(assert (= (or b!6781975 b!6781974) bm!615385))

(assert (= (or b!6781971 b!6781979) bm!615386))

(declare-fun m!7530644 () Bool)

(assert (=> b!6781976 m!7530644))

(declare-fun m!7530646 () Bool)

(assert (=> bm!615385 m!7530646))

(assert (=> bm!615386 m!7529138))

(declare-fun m!7530648 () Bool)

(assert (=> b!6781981 m!7530648))

(assert (=> b!6781136 d!2130771))

(declare-fun bs!1806273 () Bool)

(declare-fun d!2130785 () Bool)

(assert (= bs!1806273 (and d!2130785 d!2130513)))

(declare-fun lambda!381757 () Int)

(assert (=> bs!1806273 (= lambda!381757 lambda!381715)))

(declare-fun bs!1806274 () Bool)

(assert (= bs!1806274 (and d!2130785 d!2130379)))

(assert (=> bs!1806274 (= lambda!381757 lambda!381701)))

(declare-fun bs!1806275 () Bool)

(assert (= bs!1806275 (and d!2130785 d!2130155)))

(assert (=> bs!1806275 (= lambda!381757 lambda!381620)))

(declare-fun bs!1806276 () Bool)

(assert (= bs!1806276 (and d!2130785 d!2130637)))

(assert (=> bs!1806276 (= lambda!381757 lambda!381728)))

(declare-fun bs!1806277 () Bool)

(assert (= bs!1806277 (and d!2130785 d!2130261)))

(assert (=> bs!1806277 (= lambda!381757 lambda!381668)))

(declare-fun bs!1806278 () Bool)

(assert (= bs!1806278 (and d!2130785 d!2130603)))

(assert (=> bs!1806278 (= lambda!381757 lambda!381721)))

(declare-fun bs!1806279 () Bool)

(assert (= bs!1806279 (and d!2130785 d!2130483)))

(assert (=> bs!1806279 (= lambda!381757 lambda!381708)))

(declare-fun bs!1806281 () Bool)

(assert (= bs!1806281 (and d!2130785 d!2130157)))

(assert (=> bs!1806281 (= lambda!381757 lambda!381623)))

(declare-fun bs!1806282 () Bool)

(assert (= bs!1806282 (and d!2130785 d!2130353)))

(assert (=> bs!1806282 (= lambda!381757 lambda!381697)))

(declare-fun bs!1806283 () Bool)

(assert (= bs!1806283 (and d!2130785 d!2130597)))

(assert (=> bs!1806283 (= lambda!381757 lambda!381720)))

(declare-fun bs!1806284 () Bool)

(assert (= bs!1806284 (and d!2130785 d!2130589)))

(assert (=> bs!1806284 (= lambda!381757 lambda!381719)))

(declare-fun bs!1806285 () Bool)

(assert (= bs!1806285 (and d!2130785 d!2130195)))

(assert (=> bs!1806285 (= lambda!381757 lambda!381638)))

(assert (=> d!2130785 (= (inv!84754 (h!72434 (t!379825 zl!343))) (forall!15794 (exprs!6487 (h!72434 (t!379825 zl!343))) lambda!381757))))

(declare-fun bs!1806288 () Bool)

(assert (= bs!1806288 d!2130785))

(declare-fun m!7530656 () Bool)

(assert (=> bs!1806288 m!7530656))

(assert (=> b!6781212 d!2130785))

(declare-fun d!2130791 () Bool)

(assert (=> d!2130791 (= (nullable!6582 (h!72433 (exprs!6487 lt!2444770))) (nullableFct!2488 (h!72433 (exprs!6487 lt!2444770))))))

(declare-fun bs!1806291 () Bool)

(assert (= bs!1806291 d!2130791))

(declare-fun m!7530658 () Bool)

(assert (=> bs!1806291 m!7530658))

(assert (=> b!6781130 d!2130791))

(assert (=> b!6780778 d!2130639))

(assert (=> b!6780778 d!2130525))

(declare-fun d!2130793 () Bool)

(assert (=> d!2130793 (= (nullable!6582 (h!72433 (exprs!6487 lt!2444766))) (nullableFct!2488 (h!72433 (exprs!6487 lt!2444766))))))

(declare-fun bs!1806294 () Bool)

(assert (= bs!1806294 d!2130793))

(declare-fun m!7530660 () Bool)

(assert (=> bs!1806294 m!7530660))

(assert (=> b!6781125 d!2130793))

(declare-fun d!2130795 () Bool)

(assert (=> d!2130795 (= (isEmptyLang!1968 lt!2444794) ((_ is EmptyLang!16603) lt!2444794))))

(assert (=> b!6780377 d!2130795))

(declare-fun d!2130797 () Bool)

(assert (=> d!2130797 true))

(assert (=> d!2130797 true))

(declare-fun res!2772194 () Bool)

(assert (=> d!2130797 (= (choose!50496 lambda!381616) res!2772194)))

(assert (=> d!2130313 d!2130797))

(declare-fun d!2130799 () Bool)

(assert (=> d!2130799 (= (isEmpty!38345 (tail!12702 (_1!36881 lt!2444761))) ((_ is Nil!65984) (tail!12702 (_1!36881 lt!2444761))))))

(assert (=> b!6781168 d!2130799))

(assert (=> b!6781168 d!2130667))

(assert (=> b!6781149 d!2130639))

(assert (=> b!6781149 d!2130525))

(declare-fun d!2130803 () Bool)

(assert (=> d!2130803 (= (isEmpty!38347 (unfocusZipperList!2024 zl!343)) ((_ is Nil!65985) (unfocusZipperList!2024 zl!343)))))

(assert (=> b!6780373 d!2130803))

(declare-fun bs!1806301 () Bool)

(declare-fun d!2130805 () Bool)

(assert (= bs!1806301 (and d!2130805 d!2130495)))

(declare-fun lambda!381759 () Int)

(assert (=> bs!1806301 (= lambda!381759 lambda!381711)))

(assert (=> d!2130805 (= (nullableZipper!2309 lt!2444757) (exists!2724 lt!2444757 lambda!381759))))

(declare-fun bs!1806302 () Bool)

(assert (= bs!1806302 d!2130805))

(declare-fun m!7530668 () Bool)

(assert (=> bs!1806302 m!7530668))

(assert (=> b!6780422 d!2130805))

(assert (=> d!2130339 d!2130469))

(assert (=> b!6781145 d!2130523))

(assert (=> bs!1805933 d!2130367))

(declare-fun d!2130807 () Bool)

(declare-fun res!2772198 () Bool)

(declare-fun e!4094017 () Bool)

(assert (=> d!2130807 (=> res!2772198 e!4094017)))

(assert (=> d!2130807 (= res!2772198 ((_ is ElementMatch!16603) lt!2444816))))

(assert (=> d!2130807 (= (validRegex!8339 lt!2444816) e!4094017)))

(declare-fun b!6782021 () Bool)

(declare-fun e!4094018 () Bool)

(assert (=> b!6782021 (= e!4094017 e!4094018)))

(declare-fun c!1260009 () Bool)

(assert (=> b!6782021 (= c!1260009 ((_ is Star!16603) lt!2444816))))

(declare-fun bm!615397 () Bool)

(declare-fun call!615404 () Bool)

(declare-fun call!615402 () Bool)

(assert (=> bm!615397 (= call!615404 call!615402)))

(declare-fun b!6782022 () Bool)

(declare-fun e!4094022 () Bool)

(assert (=> b!6782022 (= e!4094018 e!4094022)))

(declare-fun c!1260010 () Bool)

(assert (=> b!6782022 (= c!1260010 ((_ is Union!16603) lt!2444816))))

(declare-fun bm!615398 () Bool)

(assert (=> bm!615398 (= call!615402 (validRegex!8339 (ite c!1260009 (reg!16932 lt!2444816) (ite c!1260010 (regTwo!33719 lt!2444816) (regTwo!33718 lt!2444816)))))))

(declare-fun b!6782023 () Bool)

(declare-fun res!2772196 () Bool)

(declare-fun e!4094021 () Bool)

(assert (=> b!6782023 (=> res!2772196 e!4094021)))

(assert (=> b!6782023 (= res!2772196 (not ((_ is Concat!25448) lt!2444816)))))

(assert (=> b!6782023 (= e!4094022 e!4094021)))

(declare-fun b!6782024 () Bool)

(declare-fun e!4094019 () Bool)

(assert (=> b!6782024 (= e!4094019 call!615404)))

(declare-fun bm!615399 () Bool)

(declare-fun call!615403 () Bool)

(assert (=> bm!615399 (= call!615403 (validRegex!8339 (ite c!1260010 (regOne!33719 lt!2444816) (regOne!33718 lt!2444816))))))

(declare-fun b!6782025 () Bool)

(declare-fun e!4094016 () Bool)

(assert (=> b!6782025 (= e!4094018 e!4094016)))

(declare-fun res!2772200 () Bool)

(assert (=> b!6782025 (= res!2772200 (not (nullable!6582 (reg!16932 lt!2444816))))))

(assert (=> b!6782025 (=> (not res!2772200) (not e!4094016))))

(declare-fun b!6782026 () Bool)

(assert (=> b!6782026 (= e!4094021 e!4094019)))

(declare-fun res!2772199 () Bool)

(assert (=> b!6782026 (=> (not res!2772199) (not e!4094019))))

(assert (=> b!6782026 (= res!2772199 call!615403)))

(declare-fun b!6782027 () Bool)

(declare-fun e!4094020 () Bool)

(assert (=> b!6782027 (= e!4094020 call!615404)))

(declare-fun b!6782028 () Bool)

(assert (=> b!6782028 (= e!4094016 call!615402)))

(declare-fun b!6782029 () Bool)

(declare-fun res!2772197 () Bool)

(assert (=> b!6782029 (=> (not res!2772197) (not e!4094020))))

(assert (=> b!6782029 (= res!2772197 call!615403)))

(assert (=> b!6782029 (= e!4094022 e!4094020)))

(assert (= (and d!2130807 (not res!2772198)) b!6782021))

(assert (= (and b!6782021 c!1260009) b!6782025))

(assert (= (and b!6782021 (not c!1260009)) b!6782022))

(assert (= (and b!6782025 res!2772200) b!6782028))

(assert (= (and b!6782022 c!1260010) b!6782029))

(assert (= (and b!6782022 (not c!1260010)) b!6782023))

(assert (= (and b!6782029 res!2772197) b!6782027))

(assert (= (and b!6782023 (not res!2772196)) b!6782026))

(assert (= (and b!6782026 res!2772199) b!6782024))

(assert (= (or b!6782027 b!6782024) bm!615397))

(assert (= (or b!6782029 b!6782026) bm!615399))

(assert (= (or b!6782028 bm!615397) bm!615398))

(declare-fun m!7530676 () Bool)

(assert (=> bm!615398 m!7530676))

(declare-fun m!7530680 () Bool)

(assert (=> bm!615399 m!7530680))

(declare-fun m!7530682 () Bool)

(assert (=> b!6782025 m!7530682))

(assert (=> d!2130195 d!2130807))

(declare-fun d!2130809 () Bool)

(declare-fun res!2772201 () Bool)

(declare-fun e!4094023 () Bool)

(assert (=> d!2130809 (=> res!2772201 e!4094023)))

(assert (=> d!2130809 (= res!2772201 ((_ is Nil!65985) (exprs!6487 (h!72434 zl!343))))))

(assert (=> d!2130809 (= (forall!15794 (exprs!6487 (h!72434 zl!343)) lambda!381638) e!4094023)))

(declare-fun b!6782030 () Bool)

(declare-fun e!4094024 () Bool)

(assert (=> b!6782030 (= e!4094023 e!4094024)))

(declare-fun res!2772202 () Bool)

(assert (=> b!6782030 (=> (not res!2772202) (not e!4094024))))

(assert (=> b!6782030 (= res!2772202 (dynLambda!26331 lambda!381638 (h!72433 (exprs!6487 (h!72434 zl!343)))))))

(declare-fun b!6782031 () Bool)

(assert (=> b!6782031 (= e!4094024 (forall!15794 (t!379824 (exprs!6487 (h!72434 zl!343))) lambda!381638))))

(assert (= (and d!2130809 (not res!2772201)) b!6782030))

(assert (= (and b!6782030 res!2772202) b!6782031))

(declare-fun b_lambda!255369 () Bool)

(assert (=> (not b_lambda!255369) (not b!6782030)))

(declare-fun m!7530686 () Bool)

(assert (=> b!6782030 m!7530686))

(declare-fun m!7530688 () Bool)

(assert (=> b!6782031 m!7530688))

(assert (=> d!2130195 d!2130809))

(declare-fun d!2130813 () Bool)

(assert (=> d!2130813 (= (head!13616 (exprs!6487 (h!72434 zl!343))) (h!72433 (exprs!6487 (h!72434 zl!343))))))

(assert (=> b!6780550 d!2130813))

(declare-fun d!2130815 () Bool)

(assert (=> d!2130815 (= (isEmpty!38350 lt!2444764) (not ((_ is Some!16489) lt!2444764)))))

(assert (=> d!2130285 d!2130815))

(declare-fun b!6782046 () Bool)

(declare-fun e!4094037 () (InoxSet Context!11974))

(declare-fun e!4094035 () (InoxSet Context!11974))

(assert (=> b!6782046 (= e!4094037 e!4094035)))

(declare-fun c!1260014 () Bool)

(assert (=> b!6782046 (= c!1260014 ((_ is Concat!25448) (ite c!1259666 (regTwo!33719 r!7292) (ite c!1259665 (regTwo!33718 r!7292) (ite c!1259664 (regOne!33718 r!7292) (reg!16932 r!7292))))))))

(declare-fun bm!615401 () Bool)

(declare-fun call!615410 () (InoxSet Context!11974))

(declare-fun call!615406 () (InoxSet Context!11974))

(assert (=> bm!615401 (= call!615410 call!615406)))

(declare-fun e!4094036 () Bool)

(declare-fun b!6782047 () Bool)

(assert (=> b!6782047 (= e!4094036 (nullable!6582 (regOne!33718 (ite c!1259666 (regTwo!33719 r!7292) (ite c!1259665 (regTwo!33718 r!7292) (ite c!1259664 (regOne!33718 r!7292) (reg!16932 r!7292)))))))))

(declare-fun b!6782048 () Bool)

(declare-fun call!615407 () (InoxSet Context!11974))

(assert (=> b!6782048 (= e!4094037 ((_ map or) call!615407 call!615410))))

(declare-fun b!6782049 () Bool)

(declare-fun e!4094032 () (InoxSet Context!11974))

(assert (=> b!6782049 (= e!4094032 ((_ map or) call!615407 call!615406))))

(declare-fun b!6782050 () Bool)

(declare-fun e!4094034 () (InoxSet Context!11974))

(assert (=> b!6782050 (= e!4094034 (store ((as const (Array Context!11974 Bool)) false) (ite (or c!1259666 c!1259665) (Context!11975 Nil!65985) (Context!11975 call!615177)) true))))

(declare-fun c!1260015 () Bool)

(declare-fun call!615409 () List!66109)

(declare-fun bm!615402 () Bool)

(assert (=> bm!615402 (= call!615409 ($colon$colon!2412 (exprs!6487 (ite (or c!1259666 c!1259665) (Context!11975 Nil!65985) (Context!11975 call!615177))) (ite (or c!1260015 c!1260014) (regTwo!33718 (ite c!1259666 (regTwo!33719 r!7292) (ite c!1259665 (regTwo!33718 r!7292) (ite c!1259664 (regOne!33718 r!7292) (reg!16932 r!7292))))) (ite c!1259666 (regTwo!33719 r!7292) (ite c!1259665 (regTwo!33718 r!7292) (ite c!1259664 (regOne!33718 r!7292) (reg!16932 r!7292)))))))))

(declare-fun b!6782051 () Bool)

(assert (=> b!6782051 (= c!1260015 e!4094036)))

(declare-fun res!2772211 () Bool)

(assert (=> b!6782051 (=> (not res!2772211) (not e!4094036))))

(assert (=> b!6782051 (= res!2772211 ((_ is Concat!25448) (ite c!1259666 (regTwo!33719 r!7292) (ite c!1259665 (regTwo!33718 r!7292) (ite c!1259664 (regOne!33718 r!7292) (reg!16932 r!7292))))))))

(assert (=> b!6782051 (= e!4094032 e!4094037)))

(declare-fun bm!615403 () Bool)

(declare-fun call!615411 () List!66109)

(declare-fun c!1260016 () Bool)

(assert (=> bm!615403 (= call!615406 (derivationStepZipperDown!1831 (ite c!1260016 (regTwo!33719 (ite c!1259666 (regTwo!33719 r!7292) (ite c!1259665 (regTwo!33718 r!7292) (ite c!1259664 (regOne!33718 r!7292) (reg!16932 r!7292))))) (ite c!1260015 (regTwo!33718 (ite c!1259666 (regTwo!33719 r!7292) (ite c!1259665 (regTwo!33718 r!7292) (ite c!1259664 (regOne!33718 r!7292) (reg!16932 r!7292))))) (ite c!1260014 (regOne!33718 (ite c!1259666 (regTwo!33719 r!7292) (ite c!1259665 (regTwo!33718 r!7292) (ite c!1259664 (regOne!33718 r!7292) (reg!16932 r!7292))))) (reg!16932 (ite c!1259666 (regTwo!33719 r!7292) (ite c!1259665 (regTwo!33718 r!7292) (ite c!1259664 (regOne!33718 r!7292) (reg!16932 r!7292)))))))) (ite (or c!1260016 c!1260015) (ite (or c!1259666 c!1259665) (Context!11975 Nil!65985) (Context!11975 call!615177)) (Context!11975 call!615411)) (h!72432 s!2326)))))

(declare-fun bm!615404 () Bool)

(assert (=> bm!615404 (= call!615407 (derivationStepZipperDown!1831 (ite c!1260016 (regOne!33719 (ite c!1259666 (regTwo!33719 r!7292) (ite c!1259665 (regTwo!33718 r!7292) (ite c!1259664 (regOne!33718 r!7292) (reg!16932 r!7292))))) (regOne!33718 (ite c!1259666 (regTwo!33719 r!7292) (ite c!1259665 (regTwo!33718 r!7292) (ite c!1259664 (regOne!33718 r!7292) (reg!16932 r!7292)))))) (ite c!1260016 (ite (or c!1259666 c!1259665) (Context!11975 Nil!65985) (Context!11975 call!615177)) (Context!11975 call!615409)) (h!72432 s!2326)))))

(declare-fun b!6782052 () Bool)

(declare-fun call!615408 () (InoxSet Context!11974))

(assert (=> b!6782052 (= e!4094035 call!615408)))

(declare-fun c!1260017 () Bool)

(declare-fun d!2130817 () Bool)

(assert (=> d!2130817 (= c!1260017 (and ((_ is ElementMatch!16603) (ite c!1259666 (regTwo!33719 r!7292) (ite c!1259665 (regTwo!33718 r!7292) (ite c!1259664 (regOne!33718 r!7292) (reg!16932 r!7292))))) (= (c!1259507 (ite c!1259666 (regTwo!33719 r!7292) (ite c!1259665 (regTwo!33718 r!7292) (ite c!1259664 (regOne!33718 r!7292) (reg!16932 r!7292))))) (h!72432 s!2326))))))

(assert (=> d!2130817 (= (derivationStepZipperDown!1831 (ite c!1259666 (regTwo!33719 r!7292) (ite c!1259665 (regTwo!33718 r!7292) (ite c!1259664 (regOne!33718 r!7292) (reg!16932 r!7292)))) (ite (or c!1259666 c!1259665) (Context!11975 Nil!65985) (Context!11975 call!615177)) (h!72432 s!2326)) e!4094034)))

(declare-fun bm!615405 () Bool)

(assert (=> bm!615405 (= call!615408 call!615410)))

(declare-fun b!6782053 () Bool)

(declare-fun e!4094033 () (InoxSet Context!11974))

(assert (=> b!6782053 (= e!4094033 ((as const (Array Context!11974 Bool)) false))))

(declare-fun b!6782054 () Bool)

(declare-fun c!1260018 () Bool)

(assert (=> b!6782054 (= c!1260018 ((_ is Star!16603) (ite c!1259666 (regTwo!33719 r!7292) (ite c!1259665 (regTwo!33718 r!7292) (ite c!1259664 (regOne!33718 r!7292) (reg!16932 r!7292))))))))

(assert (=> b!6782054 (= e!4094035 e!4094033)))

(declare-fun bm!615406 () Bool)

(assert (=> bm!615406 (= call!615411 call!615409)))

(declare-fun b!6782055 () Bool)

(assert (=> b!6782055 (= e!4094034 e!4094032)))

(assert (=> b!6782055 (= c!1260016 ((_ is Union!16603) (ite c!1259666 (regTwo!33719 r!7292) (ite c!1259665 (regTwo!33718 r!7292) (ite c!1259664 (regOne!33718 r!7292) (reg!16932 r!7292))))))))

(declare-fun b!6782056 () Bool)

(assert (=> b!6782056 (= e!4094033 call!615408)))

(assert (= (and d!2130817 c!1260017) b!6782050))

(assert (= (and d!2130817 (not c!1260017)) b!6782055))

(assert (= (and b!6782055 c!1260016) b!6782049))

(assert (= (and b!6782055 (not c!1260016)) b!6782051))

(assert (= (and b!6782051 res!2772211) b!6782047))

(assert (= (and b!6782051 c!1260015) b!6782048))

(assert (= (and b!6782051 (not c!1260015)) b!6782046))

(assert (= (and b!6782046 c!1260014) b!6782052))

(assert (= (and b!6782046 (not c!1260014)) b!6782054))

(assert (= (and b!6782054 c!1260018) b!6782056))

(assert (= (and b!6782054 (not c!1260018)) b!6782053))

(assert (= (or b!6782052 b!6782056) bm!615406))

(assert (= (or b!6782052 b!6782056) bm!615405))

(assert (= (or b!6782048 bm!615406) bm!615402))

(assert (= (or b!6782048 bm!615405) bm!615401))

(assert (= (or b!6782049 bm!615401) bm!615403))

(assert (= (or b!6782049 b!6782048) bm!615404))

(declare-fun m!7530700 () Bool)

(assert (=> b!6782047 m!7530700))

(declare-fun m!7530704 () Bool)

(assert (=> bm!615402 m!7530704))

(declare-fun m!7530710 () Bool)

(assert (=> bm!615404 m!7530710))

(declare-fun m!7530712 () Bool)

(assert (=> b!6782050 m!7530712))

(declare-fun m!7530716 () Bool)

(assert (=> bm!615403 m!7530716))

(assert (=> bm!615169 d!2130817))

(declare-fun d!2130825 () Bool)

(assert (=> d!2130825 (= (Exists!3671 lambda!381684) (choose!50496 lambda!381684))))

(declare-fun bs!1806304 () Bool)

(assert (= bs!1806304 d!2130825))

(declare-fun m!7530718 () Bool)

(assert (=> bs!1806304 m!7530718))

(assert (=> d!2130287 d!2130825))

(declare-fun d!2130827 () Bool)

(assert (=> d!2130827 (= (Exists!3671 lambda!381685) (choose!50496 lambda!381685))))

(declare-fun bs!1806305 () Bool)

(assert (= bs!1806305 d!2130827))

(declare-fun m!7530720 () Bool)

(assert (=> bs!1806305 m!7530720))

(assert (=> d!2130287 d!2130827))

(declare-fun bs!1806338 () Bool)

(declare-fun d!2130829 () Bool)

(assert (= bs!1806338 (and d!2130829 b!6781974)))

(declare-fun lambda!381767 () Int)

(assert (=> bs!1806338 (not (= lambda!381767 lambda!381755))))

(declare-fun bs!1806339 () Bool)

(assert (= bs!1806339 (and d!2130829 b!6780652)))

(assert (=> bs!1806339 (not (= lambda!381767 lambda!381651))))

(declare-fun bs!1806340 () Bool)

(assert (= bs!1806340 (and d!2130829 d!2130287)))

(assert (=> bs!1806340 (= lambda!381767 lambda!381684)))

(declare-fun bs!1806341 () Bool)

(assert (= bs!1806341 (and d!2130829 b!6780302)))

(assert (=> bs!1806341 (not (= lambda!381767 lambda!381616))))

(declare-fun bs!1806342 () Bool)

(assert (= bs!1806342 (and d!2130829 d!2130759)))

(assert (=> bs!1806342 (not (= lambda!381767 lambda!381749))))

(declare-fun bs!1806344 () Bool)

(assert (= bs!1806344 (and d!2130829 b!6781866)))

(assert (=> bs!1806344 (not (= lambda!381767 lambda!381735))))

(assert (=> bs!1806341 (not (= lambda!381767 lambda!381615))))

(declare-fun bs!1806346 () Bool)

(assert (= bs!1806346 (and d!2130829 b!6781721)))

(assert (=> bs!1806346 (not (= lambda!381767 lambda!381725))))

(assert (=> bs!1806341 (= (= (Star!16603 (reg!16932 r!7292)) r!7292) (= lambda!381767 lambda!381614))))

(declare-fun bs!1806349 () Bool)

(assert (= bs!1806349 (and d!2130829 b!6781134)))

(assert (=> bs!1806349 (not (= lambda!381767 lambda!381700))))

(declare-fun bs!1806351 () Bool)

(assert (= bs!1806351 (and d!2130829 d!2130279)))

(assert (=> bs!1806351 (= (= (Star!16603 (reg!16932 r!7292)) r!7292) (= lambda!381767 lambda!381673))))

(declare-fun bs!1806353 () Bool)

(assert (= bs!1806353 (and d!2130829 b!6781135)))

(assert (=> bs!1806353 (not (= lambda!381767 lambda!381699))))

(assert (=> bs!1806351 (not (= lambda!381767 lambda!381674))))

(declare-fun bs!1806355 () Bool)

(assert (= bs!1806355 (and d!2130829 b!6781975)))

(assert (=> bs!1806355 (not (= lambda!381767 lambda!381753))))

(declare-fun bs!1806357 () Bool)

(assert (= bs!1806357 (and d!2130829 d!2130335)))

(assert (=> bs!1806357 (= (= (Star!16603 (reg!16932 r!7292)) r!7292) (= lambda!381767 lambda!381696))))

(declare-fun bs!1806359 () Bool)

(assert (= bs!1806359 (and d!2130829 b!6781722)))

(assert (=> bs!1806359 (not (= lambda!381767 lambda!381722))))

(assert (=> bs!1806342 (= (= (Star!16603 (reg!16932 r!7292)) r!7292) (= lambda!381767 lambda!381747))))

(declare-fun bs!1806361 () Bool)

(assert (= bs!1806361 (and d!2130829 b!6780651)))

(assert (=> bs!1806361 (not (= lambda!381767 lambda!381652))))

(declare-fun bs!1806363 () Bool)

(assert (= bs!1806363 (and d!2130829 b!6781867)))

(assert (=> bs!1806363 (not (= lambda!381767 lambda!381733))))

(assert (=> bs!1806340 (not (= lambda!381767 lambda!381685))))

(assert (=> d!2130829 true))

(assert (=> d!2130829 true))

(declare-fun lambda!381769 () Int)

(assert (=> bs!1806338 (not (= lambda!381769 lambda!381755))))

(assert (=> bs!1806339 (= (= (Star!16603 (reg!16932 r!7292)) r!7292) (= lambda!381769 lambda!381651))))

(assert (=> bs!1806340 (not (= lambda!381769 lambda!381684))))

(assert (=> bs!1806341 (not (= lambda!381769 lambda!381616))))

(assert (=> bs!1806342 (not (= lambda!381769 lambda!381749))))

(assert (=> bs!1806344 (not (= lambda!381769 lambda!381735))))

(assert (=> bs!1806341 (= (= (Star!16603 (reg!16932 r!7292)) r!7292) (= lambda!381769 lambda!381615))))

(assert (=> bs!1806346 (not (= lambda!381769 lambda!381725))))

(assert (=> bs!1806341 (not (= lambda!381769 lambda!381614))))

(assert (=> bs!1806349 (not (= lambda!381769 lambda!381700))))

(assert (=> bs!1806353 (= (and (= (reg!16932 r!7292) (reg!16932 lt!2444765)) (= (Star!16603 (reg!16932 r!7292)) lt!2444765)) (= lambda!381769 lambda!381699))))

(assert (=> bs!1806351 (not (= lambda!381769 lambda!381674))))

(assert (=> bs!1806355 (= (and (= (reg!16932 r!7292) (reg!16932 (regOne!33719 lt!2444765))) (= (Star!16603 (reg!16932 r!7292)) (regOne!33719 lt!2444765))) (= lambda!381769 lambda!381753))))

(assert (=> bs!1806357 (not (= lambda!381769 lambda!381696))))

(assert (=> bs!1806359 (= (and (= (reg!16932 r!7292) (reg!16932 (regOne!33719 r!7292))) (= (Star!16603 (reg!16932 r!7292)) (regOne!33719 r!7292))) (= lambda!381769 lambda!381722))))

(assert (=> bs!1806342 (not (= lambda!381769 lambda!381747))))

(assert (=> bs!1806361 (not (= lambda!381769 lambda!381652))))

(assert (=> bs!1806351 (not (= lambda!381769 lambda!381673))))

(declare-fun bs!1806379 () Bool)

(assert (= bs!1806379 d!2130829))

(assert (=> bs!1806379 (not (= lambda!381769 lambda!381767))))

(assert (=> bs!1806363 (= (and (= (reg!16932 r!7292) (reg!16932 (regTwo!33719 r!7292))) (= (Star!16603 (reg!16932 r!7292)) (regTwo!33719 r!7292))) (= lambda!381769 lambda!381733))))

(assert (=> bs!1806340 (= lambda!381769 lambda!381685)))

(assert (=> d!2130829 true))

(assert (=> d!2130829 true))

(assert (=> d!2130829 (= (Exists!3671 lambda!381767) (Exists!3671 lambda!381769))))

(assert (=> d!2130829 true))

(declare-fun _$91!776 () Unit!159897)

(assert (=> d!2130829 (= (choose!50504 (reg!16932 r!7292) s!2326) _$91!776)))

(declare-fun m!7530792 () Bool)

(assert (=> bs!1806379 m!7530792))

(declare-fun m!7530794 () Bool)

(assert (=> bs!1806379 m!7530794))

(assert (=> d!2130287 d!2130829))

(assert (=> d!2130287 d!2130611))

(declare-fun d!2130861 () Bool)

(declare-fun res!2772254 () Bool)

(declare-fun e!4094094 () Bool)

(assert (=> d!2130861 (=> res!2772254 e!4094094)))

(assert (=> d!2130861 (= res!2772254 ((_ is ElementMatch!16603) lt!2444903))))

(assert (=> d!2130861 (= (validRegex!8339 lt!2444903) e!4094094)))

(declare-fun b!6782147 () Bool)

(declare-fun e!4094095 () Bool)

(assert (=> b!6782147 (= e!4094094 e!4094095)))

(declare-fun c!1260044 () Bool)

(assert (=> b!6782147 (= c!1260044 ((_ is Star!16603) lt!2444903))))

(declare-fun bm!615424 () Bool)

(declare-fun call!615431 () Bool)

(declare-fun call!615429 () Bool)

(assert (=> bm!615424 (= call!615431 call!615429)))

(declare-fun b!6782148 () Bool)

(declare-fun e!4094099 () Bool)

(assert (=> b!6782148 (= e!4094095 e!4094099)))

(declare-fun c!1260045 () Bool)

(assert (=> b!6782148 (= c!1260045 ((_ is Union!16603) lt!2444903))))

(declare-fun bm!615425 () Bool)

(assert (=> bm!615425 (= call!615429 (validRegex!8339 (ite c!1260044 (reg!16932 lt!2444903) (ite c!1260045 (regTwo!33719 lt!2444903) (regTwo!33718 lt!2444903)))))))

(declare-fun b!6782149 () Bool)

(declare-fun res!2772252 () Bool)

(declare-fun e!4094098 () Bool)

(assert (=> b!6782149 (=> res!2772252 e!4094098)))

(assert (=> b!6782149 (= res!2772252 (not ((_ is Concat!25448) lt!2444903)))))

(assert (=> b!6782149 (= e!4094099 e!4094098)))

(declare-fun b!6782150 () Bool)

(declare-fun e!4094096 () Bool)

(assert (=> b!6782150 (= e!4094096 call!615431)))

(declare-fun bm!615426 () Bool)

(declare-fun call!615430 () Bool)

(assert (=> bm!615426 (= call!615430 (validRegex!8339 (ite c!1260045 (regOne!33719 lt!2444903) (regOne!33718 lt!2444903))))))

(declare-fun b!6782151 () Bool)

(declare-fun e!4094093 () Bool)

(assert (=> b!6782151 (= e!4094095 e!4094093)))

(declare-fun res!2772256 () Bool)

(assert (=> b!6782151 (= res!2772256 (not (nullable!6582 (reg!16932 lt!2444903))))))

(assert (=> b!6782151 (=> (not res!2772256) (not e!4094093))))

(declare-fun b!6782152 () Bool)

(assert (=> b!6782152 (= e!4094098 e!4094096)))

(declare-fun res!2772255 () Bool)

(assert (=> b!6782152 (=> (not res!2772255) (not e!4094096))))

(assert (=> b!6782152 (= res!2772255 call!615430)))

(declare-fun b!6782153 () Bool)

(declare-fun e!4094097 () Bool)

(assert (=> b!6782153 (= e!4094097 call!615431)))

(declare-fun b!6782154 () Bool)

(assert (=> b!6782154 (= e!4094093 call!615429)))

(declare-fun b!6782155 () Bool)

(declare-fun res!2772253 () Bool)

(assert (=> b!6782155 (=> (not res!2772253) (not e!4094097))))

(assert (=> b!6782155 (= res!2772253 call!615430)))

(assert (=> b!6782155 (= e!4094099 e!4094097)))

(assert (= (and d!2130861 (not res!2772254)) b!6782147))

(assert (= (and b!6782147 c!1260044) b!6782151))

(assert (= (and b!6782147 (not c!1260044)) b!6782148))

(assert (= (and b!6782151 res!2772256) b!6782154))

(assert (= (and b!6782148 c!1260045) b!6782155))

(assert (= (and b!6782148 (not c!1260045)) b!6782149))

(assert (= (and b!6782155 res!2772253) b!6782153))

(assert (= (and b!6782149 (not res!2772252)) b!6782152))

(assert (= (and b!6782152 res!2772255) b!6782150))

(assert (= (or b!6782153 b!6782150) bm!615424))

(assert (= (or b!6782155 b!6782152) bm!615426))

(assert (= (or b!6782154 bm!615424) bm!615425))

(declare-fun m!7530796 () Bool)

(assert (=> bm!615425 m!7530796))

(declare-fun m!7530798 () Bool)

(assert (=> bm!615426 m!7530798))

(declare-fun m!7530800 () Bool)

(assert (=> b!6782151 m!7530800))

(assert (=> d!2130371 d!2130861))

(declare-fun bs!1806385 () Bool)

(declare-fun d!2130863 () Bool)

(assert (= bs!1806385 (and d!2130863 d!2130513)))

(declare-fun lambda!381771 () Int)

(assert (=> bs!1806385 (= lambda!381771 lambda!381715)))

(declare-fun bs!1806386 () Bool)

(assert (= bs!1806386 (and d!2130863 d!2130379)))

(assert (=> bs!1806386 (= lambda!381771 lambda!381701)))

(declare-fun bs!1806387 () Bool)

(assert (= bs!1806387 (and d!2130863 d!2130155)))

(assert (=> bs!1806387 (= lambda!381771 lambda!381620)))

(declare-fun bs!1806388 () Bool)

(assert (= bs!1806388 (and d!2130863 d!2130785)))

(assert (=> bs!1806388 (= lambda!381771 lambda!381757)))

(declare-fun bs!1806389 () Bool)

(assert (= bs!1806389 (and d!2130863 d!2130637)))

(assert (=> bs!1806389 (= lambda!381771 lambda!381728)))

(declare-fun bs!1806391 () Bool)

(assert (= bs!1806391 (and d!2130863 d!2130261)))

(assert (=> bs!1806391 (= lambda!381771 lambda!381668)))

(declare-fun bs!1806393 () Bool)

(assert (= bs!1806393 (and d!2130863 d!2130603)))

(assert (=> bs!1806393 (= lambda!381771 lambda!381721)))

(declare-fun bs!1806395 () Bool)

(assert (= bs!1806395 (and d!2130863 d!2130483)))

(assert (=> bs!1806395 (= lambda!381771 lambda!381708)))

(declare-fun bs!1806396 () Bool)

(assert (= bs!1806396 (and d!2130863 d!2130157)))

(assert (=> bs!1806396 (= lambda!381771 lambda!381623)))

(declare-fun bs!1806398 () Bool)

(assert (= bs!1806398 (and d!2130863 d!2130353)))

(assert (=> bs!1806398 (= lambda!381771 lambda!381697)))

(declare-fun bs!1806399 () Bool)

(assert (= bs!1806399 (and d!2130863 d!2130597)))

(assert (=> bs!1806399 (= lambda!381771 lambda!381720)))

(declare-fun bs!1806400 () Bool)

(assert (= bs!1806400 (and d!2130863 d!2130589)))

(assert (=> bs!1806400 (= lambda!381771 lambda!381719)))

(declare-fun bs!1806401 () Bool)

(assert (= bs!1806401 (and d!2130863 d!2130195)))

(assert (=> bs!1806401 (= lambda!381771 lambda!381638)))

(declare-fun b!6782156 () Bool)

(declare-fun e!4094105 () Regex!16603)

(declare-fun e!4094100 () Regex!16603)

(assert (=> b!6782156 (= e!4094105 e!4094100)))

(declare-fun c!1260048 () Bool)

(assert (=> b!6782156 (= c!1260048 ((_ is Cons!65985) (unfocusZipperList!2024 (Cons!65986 lt!2444756 Nil!65986))))))

(declare-fun b!6782157 () Bool)

(declare-fun e!4094104 () Bool)

(declare-fun e!4094103 () Bool)

(assert (=> b!6782157 (= e!4094104 e!4094103)))

(declare-fun c!1260046 () Bool)

(assert (=> b!6782157 (= c!1260046 (isEmpty!38347 (unfocusZipperList!2024 (Cons!65986 lt!2444756 Nil!65986))))))

(declare-fun b!6782158 () Bool)

(assert (=> b!6782158 (= e!4094105 (h!72433 (unfocusZipperList!2024 (Cons!65986 lt!2444756 Nil!65986))))))

(declare-fun b!6782159 () Bool)

(assert (=> b!6782159 (= e!4094100 (Union!16603 (h!72433 (unfocusZipperList!2024 (Cons!65986 lt!2444756 Nil!65986))) (generalisedUnion!2447 (t!379824 (unfocusZipperList!2024 (Cons!65986 lt!2444756 Nil!65986))))))))

(declare-fun b!6782160 () Bool)

(assert (=> b!6782160 (= e!4094100 EmptyLang!16603)))

(declare-fun b!6782161 () Bool)

(declare-fun lt!2444958 () Regex!16603)

(assert (=> b!6782161 (= e!4094103 (isEmptyLang!1968 lt!2444958))))

(declare-fun b!6782162 () Bool)

(declare-fun e!4094102 () Bool)

(assert (=> b!6782162 (= e!4094102 (= lt!2444958 (head!13616 (unfocusZipperList!2024 (Cons!65986 lt!2444756 Nil!65986)))))))

(assert (=> d!2130863 e!4094104))

(declare-fun res!2772258 () Bool)

(assert (=> d!2130863 (=> (not res!2772258) (not e!4094104))))

(assert (=> d!2130863 (= res!2772258 (validRegex!8339 lt!2444958))))

(assert (=> d!2130863 (= lt!2444958 e!4094105)))

(declare-fun c!1260049 () Bool)

(declare-fun e!4094101 () Bool)

(assert (=> d!2130863 (= c!1260049 e!4094101)))

(declare-fun res!2772257 () Bool)

(assert (=> d!2130863 (=> (not res!2772257) (not e!4094101))))

(assert (=> d!2130863 (= res!2772257 ((_ is Cons!65985) (unfocusZipperList!2024 (Cons!65986 lt!2444756 Nil!65986))))))

(assert (=> d!2130863 (forall!15794 (unfocusZipperList!2024 (Cons!65986 lt!2444756 Nil!65986)) lambda!381771)))

(assert (=> d!2130863 (= (generalisedUnion!2447 (unfocusZipperList!2024 (Cons!65986 lt!2444756 Nil!65986))) lt!2444958)))

(declare-fun b!6782163 () Bool)

(assert (=> b!6782163 (= e!4094101 (isEmpty!38347 (t!379824 (unfocusZipperList!2024 (Cons!65986 lt!2444756 Nil!65986)))))))

(declare-fun b!6782164 () Bool)

(assert (=> b!6782164 (= e!4094102 (isUnion!1398 lt!2444958))))

(declare-fun b!6782165 () Bool)

(assert (=> b!6782165 (= e!4094103 e!4094102)))

(declare-fun c!1260047 () Bool)

(assert (=> b!6782165 (= c!1260047 (isEmpty!38347 (tail!12701 (unfocusZipperList!2024 (Cons!65986 lt!2444756 Nil!65986)))))))

(assert (= (and d!2130863 res!2772257) b!6782163))

(assert (= (and d!2130863 c!1260049) b!6782158))

(assert (= (and d!2130863 (not c!1260049)) b!6782156))

(assert (= (and b!6782156 c!1260048) b!6782159))

(assert (= (and b!6782156 (not c!1260048)) b!6782160))

(assert (= (and d!2130863 res!2772258) b!6782157))

(assert (= (and b!6782157 c!1260046) b!6782161))

(assert (= (and b!6782157 (not c!1260046)) b!6782165))

(assert (= (and b!6782165 c!1260047) b!6782162))

(assert (= (and b!6782165 (not c!1260047)) b!6782164))

(assert (=> b!6782165 m!7529776))

(declare-fun m!7530816 () Bool)

(assert (=> b!6782165 m!7530816))

(assert (=> b!6782165 m!7530816))

(declare-fun m!7530818 () Bool)

(assert (=> b!6782165 m!7530818))

(assert (=> b!6782157 m!7529776))

(declare-fun m!7530820 () Bool)

(assert (=> b!6782157 m!7530820))

(assert (=> b!6782162 m!7529776))

(declare-fun m!7530822 () Bool)

(assert (=> b!6782162 m!7530822))

(declare-fun m!7530824 () Bool)

(assert (=> b!6782163 m!7530824))

(declare-fun m!7530826 () Bool)

(assert (=> d!2130863 m!7530826))

(assert (=> d!2130863 m!7529776))

(declare-fun m!7530828 () Bool)

(assert (=> d!2130863 m!7530828))

(declare-fun m!7530830 () Bool)

(assert (=> b!6782164 m!7530830))

(declare-fun m!7530832 () Bool)

(assert (=> b!6782159 m!7530832))

(declare-fun m!7530834 () Bool)

(assert (=> b!6782161 m!7530834))

(assert (=> d!2130371 d!2130863))

(declare-fun bs!1806408 () Bool)

(declare-fun d!2130873 () Bool)

(assert (= bs!1806408 (and d!2130873 d!2130513)))

(declare-fun lambda!381774 () Int)

(assert (=> bs!1806408 (= lambda!381774 lambda!381715)))

(declare-fun bs!1806411 () Bool)

(assert (= bs!1806411 (and d!2130873 d!2130379)))

(assert (=> bs!1806411 (= lambda!381774 lambda!381701)))

(declare-fun bs!1806413 () Bool)

(assert (= bs!1806413 (and d!2130873 d!2130155)))

(assert (=> bs!1806413 (= lambda!381774 lambda!381620)))

(declare-fun bs!1806415 () Bool)

(assert (= bs!1806415 (and d!2130873 d!2130785)))

(assert (=> bs!1806415 (= lambda!381774 lambda!381757)))

(declare-fun bs!1806417 () Bool)

(assert (= bs!1806417 (and d!2130873 d!2130637)))

(assert (=> bs!1806417 (= lambda!381774 lambda!381728)))

(declare-fun bs!1806419 () Bool)

(assert (= bs!1806419 (and d!2130873 d!2130261)))

(assert (=> bs!1806419 (= lambda!381774 lambda!381668)))

(declare-fun bs!1806421 () Bool)

(assert (= bs!1806421 (and d!2130873 d!2130603)))

(assert (=> bs!1806421 (= lambda!381774 lambda!381721)))

(declare-fun bs!1806423 () Bool)

(assert (= bs!1806423 (and d!2130873 d!2130863)))

(assert (=> bs!1806423 (= lambda!381774 lambda!381771)))

(declare-fun bs!1806425 () Bool)

(assert (= bs!1806425 (and d!2130873 d!2130483)))

(assert (=> bs!1806425 (= lambda!381774 lambda!381708)))

(declare-fun bs!1806426 () Bool)

(assert (= bs!1806426 (and d!2130873 d!2130157)))

(assert (=> bs!1806426 (= lambda!381774 lambda!381623)))

(declare-fun bs!1806427 () Bool)

(assert (= bs!1806427 (and d!2130873 d!2130353)))

(assert (=> bs!1806427 (= lambda!381774 lambda!381697)))

(declare-fun bs!1806428 () Bool)

(assert (= bs!1806428 (and d!2130873 d!2130597)))

(assert (=> bs!1806428 (= lambda!381774 lambda!381720)))

(declare-fun bs!1806429 () Bool)

(assert (= bs!1806429 (and d!2130873 d!2130589)))

(assert (=> bs!1806429 (= lambda!381774 lambda!381719)))

(declare-fun bs!1806430 () Bool)

(assert (= bs!1806430 (and d!2130873 d!2130195)))

(assert (=> bs!1806430 (= lambda!381774 lambda!381638)))

(declare-fun lt!2444960 () List!66109)

(assert (=> d!2130873 (forall!15794 lt!2444960 lambda!381774)))

(declare-fun e!4094119 () List!66109)

(assert (=> d!2130873 (= lt!2444960 e!4094119)))

(declare-fun c!1260056 () Bool)

(assert (=> d!2130873 (= c!1260056 ((_ is Cons!65986) (Cons!65986 lt!2444756 Nil!65986)))))

(assert (=> d!2130873 (= (unfocusZipperList!2024 (Cons!65986 lt!2444756 Nil!65986)) lt!2444960)))

(declare-fun b!6782185 () Bool)

(assert (=> b!6782185 (= e!4094119 (Cons!65985 (generalisedConcat!2200 (exprs!6487 (h!72434 (Cons!65986 lt!2444756 Nil!65986)))) (unfocusZipperList!2024 (t!379825 (Cons!65986 lt!2444756 Nil!65986)))))))

(declare-fun b!6782186 () Bool)

(assert (=> b!6782186 (= e!4094119 Nil!65985)))

(assert (= (and d!2130873 c!1260056) b!6782185))

(assert (= (and d!2130873 (not c!1260056)) b!6782186))

(declare-fun m!7530836 () Bool)

(assert (=> d!2130873 m!7530836))

(declare-fun m!7530840 () Bool)

(assert (=> b!6782185 m!7530840))

(declare-fun m!7530842 () Bool)

(assert (=> b!6782185 m!7530842))

(assert (=> d!2130371 d!2130873))

(declare-fun d!2130875 () Bool)

(declare-fun res!2772270 () Bool)

(declare-fun e!4094125 () Bool)

(assert (=> d!2130875 (=> res!2772270 e!4094125)))

(assert (=> d!2130875 (= res!2772270 ((_ is Nil!65986) lt!2444812))))

(assert (=> d!2130875 (= (noDuplicate!2387 lt!2444812) e!4094125)))

(declare-fun b!6782193 () Bool)

(declare-fun e!4094126 () Bool)

(assert (=> b!6782193 (= e!4094125 e!4094126)))

(declare-fun res!2772271 () Bool)

(assert (=> b!6782193 (=> (not res!2772271) (not e!4094126))))

(declare-fun contains!20283 (List!66110 Context!11974) Bool)

(assert (=> b!6782193 (= res!2772271 (not (contains!20283 (t!379825 lt!2444812) (h!72434 lt!2444812))))))

(declare-fun b!6782194 () Bool)

(assert (=> b!6782194 (= e!4094126 (noDuplicate!2387 (t!379825 lt!2444812)))))

(assert (= (and d!2130875 (not res!2772270)) b!6782193))

(assert (= (and b!6782193 res!2772271) b!6782194))

(declare-fun m!7530870 () Bool)

(assert (=> b!6782193 m!7530870))

(declare-fun m!7530872 () Bool)

(assert (=> b!6782194 m!7530872))

(assert (=> d!2130193 d!2130875))

(declare-fun d!2130885 () Bool)

(declare-fun e!4094148 () Bool)

(assert (=> d!2130885 e!4094148))

(declare-fun res!2772290 () Bool)

(assert (=> d!2130885 (=> (not res!2772290) (not e!4094148))))

(declare-fun res!2772291 () List!66110)

(assert (=> d!2130885 (= res!2772290 (noDuplicate!2387 res!2772291))))

(declare-fun e!4094149 () Bool)

(assert (=> d!2130885 e!4094149))

(assert (=> d!2130885 (= (choose!50497 z!1189) res!2772291)))

(declare-fun b!6782225 () Bool)

(declare-fun e!4094147 () Bool)

(declare-fun tp!1857966 () Bool)

(assert (=> b!6782225 (= e!4094147 tp!1857966)))

(declare-fun b!6782224 () Bool)

(declare-fun tp!1857967 () Bool)

(assert (=> b!6782224 (= e!4094149 (and (inv!84754 (h!72434 res!2772291)) e!4094147 tp!1857967))))

(declare-fun b!6782226 () Bool)

(assert (=> b!6782226 (= e!4094148 (= (content!12851 res!2772291) z!1189))))

(assert (= b!6782224 b!6782225))

(assert (= (and d!2130885 ((_ is Cons!65986) res!2772291)) b!6782224))

(assert (= (and d!2130885 res!2772290) b!6782226))

(declare-fun m!7530894 () Bool)

(assert (=> d!2130885 m!7530894))

(declare-fun m!7530896 () Bool)

(assert (=> b!6782224 m!7530896))

(declare-fun m!7530898 () Bool)

(assert (=> b!6782226 m!7530898))

(assert (=> d!2130193 d!2130885))

(declare-fun d!2130893 () Bool)

(assert (=> d!2130893 (= ($colon$colon!2412 (exprs!6487 lt!2444770) (ite (or c!1259672 c!1259671) (regTwo!33718 (reg!16932 r!7292)) (reg!16932 r!7292))) (Cons!65985 (ite (or c!1259672 c!1259671) (regTwo!33718 (reg!16932 r!7292)) (reg!16932 r!7292)) (exprs!6487 lt!2444770)))))

(assert (=> bm!615175 d!2130893))

(declare-fun bs!1806449 () Bool)

(declare-fun d!2130895 () Bool)

(assert (= bs!1806449 (and d!2130895 d!2130495)))

(declare-fun lambda!381776 () Int)

(assert (=> bs!1806449 (= lambda!381776 lambda!381711)))

(declare-fun bs!1806450 () Bool)

(assert (= bs!1806450 (and d!2130895 d!2130805)))

(assert (=> bs!1806450 (= lambda!381776 lambda!381759)))

(assert (=> d!2130895 (= (nullableZipper!2309 lt!2444762) (exists!2724 lt!2444762 lambda!381776))))

(declare-fun bs!1806451 () Bool)

(assert (= bs!1806451 d!2130895))

(declare-fun m!7530900 () Bool)

(assert (=> bs!1806451 m!7530900))

(assert (=> b!6781119 d!2130895))

(assert (=> d!2130243 d!2130225))

(assert (=> d!2130243 d!2130203))

(declare-fun d!2130897 () Bool)

(assert (=> d!2130897 (= (matchR!8786 r!7292 s!2326) (matchRSpec!3704 r!7292 s!2326))))

(assert (=> d!2130897 true))

(declare-fun _$88!5573 () Unit!159897)

(assert (=> d!2130897 (= (choose!50498 r!7292 s!2326) _$88!5573)))

(declare-fun bs!1806465 () Bool)

(assert (= bs!1806465 d!2130897))

(assert (=> bs!1806465 m!7529106))

(assert (=> bs!1806465 m!7529104))

(assert (=> d!2130243 d!2130897))

(assert (=> d!2130243 d!2130275))

(declare-fun bs!1806470 () Bool)

(declare-fun b!6782242 () Bool)

(assert (= bs!1806470 (and b!6782242 b!6781974)))

(declare-fun lambda!381778 () Int)

(assert (=> bs!1806470 (not (= lambda!381778 lambda!381755))))

(declare-fun bs!1806471 () Bool)

(assert (= bs!1806471 (and b!6782242 b!6780652)))

(assert (=> bs!1806471 (= (and (= (reg!16932 (regTwo!33719 lt!2444765)) (reg!16932 r!7292)) (= (regTwo!33719 lt!2444765) r!7292)) (= lambda!381778 lambda!381651))))

(declare-fun bs!1806472 () Bool)

(assert (= bs!1806472 (and b!6782242 d!2130287)))

(assert (=> bs!1806472 (not (= lambda!381778 lambda!381684))))

(declare-fun bs!1806473 () Bool)

(assert (= bs!1806473 (and b!6782242 b!6780302)))

(assert (=> bs!1806473 (not (= lambda!381778 lambda!381616))))

(declare-fun bs!1806475 () Bool)

(assert (= bs!1806475 (and b!6782242 d!2130759)))

(assert (=> bs!1806475 (not (= lambda!381778 lambda!381749))))

(declare-fun bs!1806477 () Bool)

(assert (= bs!1806477 (and b!6782242 b!6781866)))

(assert (=> bs!1806477 (not (= lambda!381778 lambda!381735))))

(assert (=> bs!1806473 (= (and (= (reg!16932 (regTwo!33719 lt!2444765)) (reg!16932 r!7292)) (= (regTwo!33719 lt!2444765) r!7292)) (= lambda!381778 lambda!381615))))

(declare-fun bs!1806480 () Bool)

(assert (= bs!1806480 (and b!6782242 b!6781721)))

(assert (=> bs!1806480 (not (= lambda!381778 lambda!381725))))

(assert (=> bs!1806473 (not (= lambda!381778 lambda!381614))))

(declare-fun bs!1806483 () Bool)

(assert (= bs!1806483 (and b!6782242 b!6781134)))

(assert (=> bs!1806483 (not (= lambda!381778 lambda!381700))))

(declare-fun bs!1806486 () Bool)

(assert (= bs!1806486 (and b!6782242 d!2130829)))

(assert (=> bs!1806486 (= (and (= (reg!16932 (regTwo!33719 lt!2444765)) (reg!16932 r!7292)) (= (regTwo!33719 lt!2444765) (Star!16603 (reg!16932 r!7292)))) (= lambda!381778 lambda!381769))))

(declare-fun bs!1806488 () Bool)

(assert (= bs!1806488 (and b!6782242 b!6781135)))

(assert (=> bs!1806488 (= (and (= (reg!16932 (regTwo!33719 lt!2444765)) (reg!16932 lt!2444765)) (= (regTwo!33719 lt!2444765) lt!2444765)) (= lambda!381778 lambda!381699))))

(declare-fun bs!1806490 () Bool)

(assert (= bs!1806490 (and b!6782242 d!2130279)))

(assert (=> bs!1806490 (not (= lambda!381778 lambda!381674))))

(declare-fun bs!1806491 () Bool)

(assert (= bs!1806491 (and b!6782242 b!6781975)))

(assert (=> bs!1806491 (= (and (= (reg!16932 (regTwo!33719 lt!2444765)) (reg!16932 (regOne!33719 lt!2444765))) (= (regTwo!33719 lt!2444765) (regOne!33719 lt!2444765))) (= lambda!381778 lambda!381753))))

(declare-fun bs!1806493 () Bool)

(assert (= bs!1806493 (and b!6782242 d!2130335)))

(assert (=> bs!1806493 (not (= lambda!381778 lambda!381696))))

(declare-fun bs!1806495 () Bool)

(assert (= bs!1806495 (and b!6782242 b!6781722)))

(assert (=> bs!1806495 (= (and (= (reg!16932 (regTwo!33719 lt!2444765)) (reg!16932 (regOne!33719 r!7292))) (= (regTwo!33719 lt!2444765) (regOne!33719 r!7292))) (= lambda!381778 lambda!381722))))

(assert (=> bs!1806475 (not (= lambda!381778 lambda!381747))))

(declare-fun bs!1806497 () Bool)

(assert (= bs!1806497 (and b!6782242 b!6780651)))

(assert (=> bs!1806497 (not (= lambda!381778 lambda!381652))))

(assert (=> bs!1806490 (not (= lambda!381778 lambda!381673))))

(assert (=> bs!1806486 (not (= lambda!381778 lambda!381767))))

(declare-fun bs!1806498 () Bool)

(assert (= bs!1806498 (and b!6782242 b!6781867)))

(assert (=> bs!1806498 (= (and (= (reg!16932 (regTwo!33719 lt!2444765)) (reg!16932 (regTwo!33719 r!7292))) (= (regTwo!33719 lt!2444765) (regTwo!33719 r!7292))) (= lambda!381778 lambda!381733))))

(assert (=> bs!1806472 (= (and (= (reg!16932 (regTwo!33719 lt!2444765)) (reg!16932 r!7292)) (= (regTwo!33719 lt!2444765) (Star!16603 (reg!16932 r!7292)))) (= lambda!381778 lambda!381685))))

(assert (=> b!6782242 true))

(assert (=> b!6782242 true))

(declare-fun bs!1806504 () Bool)

(declare-fun b!6782241 () Bool)

(assert (= bs!1806504 (and b!6782241 b!6781974)))

(declare-fun lambda!381780 () Int)

(assert (=> bs!1806504 (= (and (= (regOne!33718 (regTwo!33719 lt!2444765)) (regOne!33718 (regOne!33719 lt!2444765))) (= (regTwo!33718 (regTwo!33719 lt!2444765)) (regTwo!33718 (regOne!33719 lt!2444765)))) (= lambda!381780 lambda!381755))))

(declare-fun bs!1806505 () Bool)

(assert (= bs!1806505 (and b!6782241 b!6780652)))

(assert (=> bs!1806505 (not (= lambda!381780 lambda!381651))))

(declare-fun bs!1806506 () Bool)

(assert (= bs!1806506 (and b!6782241 d!2130287)))

(assert (=> bs!1806506 (not (= lambda!381780 lambda!381684))))

(declare-fun bs!1806507 () Bool)

(assert (= bs!1806507 (and b!6782241 b!6780302)))

(assert (=> bs!1806507 (= (and (= (regOne!33718 (regTwo!33719 lt!2444765)) (reg!16932 r!7292)) (= (regTwo!33718 (regTwo!33719 lt!2444765)) r!7292)) (= lambda!381780 lambda!381616))))

(declare-fun bs!1806508 () Bool)

(assert (= bs!1806508 (and b!6782241 d!2130759)))

(assert (=> bs!1806508 (= (and (= (regOne!33718 (regTwo!33719 lt!2444765)) (reg!16932 r!7292)) (= (regTwo!33718 (regTwo!33719 lt!2444765)) r!7292)) (= lambda!381780 lambda!381749))))

(assert (=> bs!1806507 (not (= lambda!381780 lambda!381615))))

(declare-fun bs!1806509 () Bool)

(assert (= bs!1806509 (and b!6782241 b!6781721)))

(assert (=> bs!1806509 (= (and (= (regOne!33718 (regTwo!33719 lt!2444765)) (regOne!33718 (regOne!33719 r!7292))) (= (regTwo!33718 (regTwo!33719 lt!2444765)) (regTwo!33718 (regOne!33719 r!7292)))) (= lambda!381780 lambda!381725))))

(assert (=> bs!1806507 (not (= lambda!381780 lambda!381614))))

(declare-fun bs!1806510 () Bool)

(assert (= bs!1806510 (and b!6782241 b!6781134)))

(assert (=> bs!1806510 (= (and (= (regOne!33718 (regTwo!33719 lt!2444765)) (regOne!33718 lt!2444765)) (= (regTwo!33718 (regTwo!33719 lt!2444765)) (regTwo!33718 lt!2444765))) (= lambda!381780 lambda!381700))))

(declare-fun bs!1806511 () Bool)

(assert (= bs!1806511 (and b!6782241 d!2130829)))

(assert (=> bs!1806511 (not (= lambda!381780 lambda!381769))))

(declare-fun bs!1806512 () Bool)

(assert (= bs!1806512 (and b!6782241 b!6781135)))

(assert (=> bs!1806512 (not (= lambda!381780 lambda!381699))))

(declare-fun bs!1806513 () Bool)

(assert (= bs!1806513 (and b!6782241 d!2130279)))

(assert (=> bs!1806513 (= (and (= (regOne!33718 (regTwo!33719 lt!2444765)) (reg!16932 r!7292)) (= (regTwo!33718 (regTwo!33719 lt!2444765)) r!7292)) (= lambda!381780 lambda!381674))))

(declare-fun bs!1806514 () Bool)

(assert (= bs!1806514 (and b!6782241 b!6781975)))

(assert (=> bs!1806514 (not (= lambda!381780 lambda!381753))))

(declare-fun bs!1806515 () Bool)

(assert (= bs!1806515 (and b!6782241 d!2130335)))

(assert (=> bs!1806515 (not (= lambda!381780 lambda!381696))))

(declare-fun bs!1806516 () Bool)

(assert (= bs!1806516 (and b!6782241 b!6781722)))

(assert (=> bs!1806516 (not (= lambda!381780 lambda!381722))))

(declare-fun bs!1806517 () Bool)

(assert (= bs!1806517 (and b!6782241 b!6781866)))

(assert (=> bs!1806517 (= (and (= (regOne!33718 (regTwo!33719 lt!2444765)) (regOne!33718 (regTwo!33719 r!7292))) (= (regTwo!33718 (regTwo!33719 lt!2444765)) (regTwo!33718 (regTwo!33719 r!7292)))) (= lambda!381780 lambda!381735))))

(declare-fun bs!1806518 () Bool)

(assert (= bs!1806518 (and b!6782241 b!6782242)))

(assert (=> bs!1806518 (not (= lambda!381780 lambda!381778))))

(assert (=> bs!1806508 (not (= lambda!381780 lambda!381747))))

(declare-fun bs!1806519 () Bool)

(assert (= bs!1806519 (and b!6782241 b!6780651)))

(assert (=> bs!1806519 (= (and (= (regOne!33718 (regTwo!33719 lt!2444765)) (regOne!33718 r!7292)) (= (regTwo!33718 (regTwo!33719 lt!2444765)) (regTwo!33718 r!7292))) (= lambda!381780 lambda!381652))))

(assert (=> bs!1806513 (not (= lambda!381780 lambda!381673))))

(assert (=> bs!1806511 (not (= lambda!381780 lambda!381767))))

(declare-fun bs!1806520 () Bool)

(assert (= bs!1806520 (and b!6782241 b!6781867)))

(assert (=> bs!1806520 (not (= lambda!381780 lambda!381733))))

(assert (=> bs!1806506 (not (= lambda!381780 lambda!381685))))

(assert (=> b!6782241 true))

(assert (=> b!6782241 true))

(declare-fun b!6782239 () Bool)

(declare-fun e!4094161 () Bool)

(declare-fun e!4094160 () Bool)

(assert (=> b!6782239 (= e!4094161 e!4094160)))

(declare-fun res!2772295 () Bool)

(assert (=> b!6782239 (= res!2772295 (not ((_ is EmptyLang!16603) (regTwo!33719 lt!2444765))))))

(assert (=> b!6782239 (=> (not res!2772295) (not e!4094160))))

(declare-fun b!6782240 () Bool)

(declare-fun c!1260068 () Bool)

(assert (=> b!6782240 (= c!1260068 ((_ is Union!16603) (regTwo!33719 lt!2444765)))))

(declare-fun e!4094158 () Bool)

(declare-fun e!4094163 () Bool)

(assert (=> b!6782240 (= e!4094158 e!4094163)))

(declare-fun e!4094159 () Bool)

(declare-fun call!615441 () Bool)

(assert (=> b!6782241 (= e!4094159 call!615441)))

(declare-fun e!4094162 () Bool)

(assert (=> b!6782242 (= e!4094162 call!615441)))

(declare-fun b!6782243 () Bool)

(declare-fun e!4094157 () Bool)

(assert (=> b!6782243 (= e!4094163 e!4094157)))

(declare-fun res!2772297 () Bool)

(assert (=> b!6782243 (= res!2772297 (matchRSpec!3704 (regOne!33719 (regTwo!33719 lt!2444765)) s!2326))))

(assert (=> b!6782243 (=> res!2772297 e!4094157)))

(declare-fun b!6782244 () Bool)

(assert (=> b!6782244 (= e!4094163 e!4094159)))

(declare-fun c!1260070 () Bool)

(assert (=> b!6782244 (= c!1260070 ((_ is Star!16603) (regTwo!33719 lt!2444765)))))

(declare-fun b!6782245 () Bool)

(declare-fun c!1260067 () Bool)

(assert (=> b!6782245 (= c!1260067 ((_ is ElementMatch!16603) (regTwo!33719 lt!2444765)))))

(assert (=> b!6782245 (= e!4094160 e!4094158)))

(declare-fun bm!615436 () Bool)

(assert (=> bm!615436 (= call!615441 (Exists!3671 (ite c!1260070 lambda!381778 lambda!381780)))))

(declare-fun d!2130899 () Bool)

(declare-fun c!1260069 () Bool)

(assert (=> d!2130899 (= c!1260069 ((_ is EmptyExpr!16603) (regTwo!33719 lt!2444765)))))

(assert (=> d!2130899 (= (matchRSpec!3704 (regTwo!33719 lt!2444765) s!2326) e!4094161)))

(declare-fun b!6782238 () Bool)

(declare-fun call!615442 () Bool)

(assert (=> b!6782238 (= e!4094161 call!615442)))

(declare-fun b!6782246 () Bool)

(declare-fun res!2772296 () Bool)

(assert (=> b!6782246 (=> res!2772296 e!4094162)))

(assert (=> b!6782246 (= res!2772296 call!615442)))

(assert (=> b!6782246 (= e!4094159 e!4094162)))

(declare-fun bm!615437 () Bool)

(assert (=> bm!615437 (= call!615442 (isEmpty!38345 s!2326))))

(declare-fun b!6782247 () Bool)

(assert (=> b!6782247 (= e!4094158 (= s!2326 (Cons!65984 (c!1259507 (regTwo!33719 lt!2444765)) Nil!65984)))))

(declare-fun b!6782248 () Bool)

(assert (=> b!6782248 (= e!4094157 (matchRSpec!3704 (regTwo!33719 (regTwo!33719 lt!2444765)) s!2326))))

(assert (= (and d!2130899 c!1260069) b!6782238))

(assert (= (and d!2130899 (not c!1260069)) b!6782239))

(assert (= (and b!6782239 res!2772295) b!6782245))

(assert (= (and b!6782245 c!1260067) b!6782247))

(assert (= (and b!6782245 (not c!1260067)) b!6782240))

(assert (= (and b!6782240 c!1260068) b!6782243))

(assert (= (and b!6782240 (not c!1260068)) b!6782244))

(assert (= (and b!6782243 (not res!2772297)) b!6782248))

(assert (= (and b!6782244 c!1260070) b!6782246))

(assert (= (and b!6782244 (not c!1260070)) b!6782241))

(assert (= (and b!6782246 (not res!2772296)) b!6782242))

(assert (= (or b!6782242 b!6782241) bm!615436))

(assert (= (or b!6782238 b!6782246) bm!615437))

(declare-fun m!7530912 () Bool)

(assert (=> b!6782243 m!7530912))

(declare-fun m!7530914 () Bool)

(assert (=> bm!615436 m!7530914))

(assert (=> bm!615437 m!7529138))

(declare-fun m!7530916 () Bool)

(assert (=> b!6782248 m!7530916))

(assert (=> b!6781141 d!2130899))

(declare-fun d!2130907 () Bool)

(assert (=> d!2130907 (= (nullable!6582 (regOne!33718 r!7292)) (nullableFct!2488 (regOne!33718 r!7292)))))

(declare-fun bs!1806521 () Bool)

(assert (= bs!1806521 d!2130907))

(declare-fun m!7530918 () Bool)

(assert (=> bs!1806521 m!7530918))

(assert (=> b!6780835 d!2130907))

(declare-fun d!2130909 () Bool)

(declare-fun lt!2444965 () Int)

(assert (=> d!2130909 (>= lt!2444965 0)))

(declare-fun e!4094173 () Int)

(assert (=> d!2130909 (= lt!2444965 e!4094173)))

(declare-fun c!1260079 () Bool)

(assert (=> d!2130909 (= c!1260079 ((_ is Nil!65984) lt!2444791))))

(assert (=> d!2130909 (= (size!40636 lt!2444791) lt!2444965)))

(declare-fun b!6782266 () Bool)

(assert (=> b!6782266 (= e!4094173 0)))

(declare-fun b!6782267 () Bool)

(assert (=> b!6782267 (= e!4094173 (+ 1 (size!40636 (t!379823 lt!2444791))))))

(assert (= (and d!2130909 c!1260079) b!6782266))

(assert (= (and d!2130909 (not c!1260079)) b!6782267))

(declare-fun m!7530934 () Bool)

(assert (=> b!6782267 m!7530934))

(assert (=> b!6780350 d!2130909))

(declare-fun d!2130917 () Bool)

(declare-fun lt!2444966 () Int)

(assert (=> d!2130917 (>= lt!2444966 0)))

(declare-fun e!4094175 () Int)

(assert (=> d!2130917 (= lt!2444966 e!4094175)))

(declare-fun c!1260081 () Bool)

(assert (=> d!2130917 (= c!1260081 ((_ is Nil!65984) (_1!36881 lt!2444761)))))

(assert (=> d!2130917 (= (size!40636 (_1!36881 lt!2444761)) lt!2444966)))

(declare-fun b!6782270 () Bool)

(assert (=> b!6782270 (= e!4094175 0)))

(declare-fun b!6782271 () Bool)

(assert (=> b!6782271 (= e!4094175 (+ 1 (size!40636 (t!379823 (_1!36881 lt!2444761)))))))

(assert (= (and d!2130917 c!1260081) b!6782270))

(assert (= (and d!2130917 (not c!1260081)) b!6782271))

(assert (=> b!6782271 m!7529948))

(assert (=> b!6780350 d!2130917))

(declare-fun d!2130919 () Bool)

(declare-fun lt!2444967 () Int)

(assert (=> d!2130919 (>= lt!2444967 0)))

(declare-fun e!4094176 () Int)

(assert (=> d!2130919 (= lt!2444967 e!4094176)))

(declare-fun c!1260082 () Bool)

(assert (=> d!2130919 (= c!1260082 ((_ is Nil!65984) (_2!36881 lt!2444761)))))

(assert (=> d!2130919 (= (size!40636 (_2!36881 lt!2444761)) lt!2444967)))

(declare-fun b!6782272 () Bool)

(assert (=> b!6782272 (= e!4094176 0)))

(declare-fun b!6782273 () Bool)

(assert (=> b!6782273 (= e!4094176 (+ 1 (size!40636 (t!379823 (_2!36881 lt!2444761)))))))

(assert (= (and d!2130919 c!1260082) b!6782272))

(assert (= (and d!2130919 (not c!1260082)) b!6782273))

(declare-fun m!7530946 () Bool)

(assert (=> b!6782273 m!7530946))

(assert (=> b!6780350 d!2130919))

(declare-fun d!2130921 () Bool)

(assert (=> d!2130921 true))

(declare-fun setRes!46395 () Bool)

(assert (=> d!2130921 setRes!46395))

(declare-fun condSetEmpty!46395 () Bool)

(declare-fun res!2772299 () (InoxSet Context!11974))

(assert (=> d!2130921 (= condSetEmpty!46395 (= res!2772299 ((as const (Array Context!11974 Bool)) false)))))

(assert (=> d!2130921 (= (choose!50492 lt!2444757 lambda!381617) res!2772299)))

(declare-fun setIsEmpty!46395 () Bool)

(assert (=> setIsEmpty!46395 setRes!46395))

(declare-fun e!4094177 () Bool)

(declare-fun setNonEmpty!46395 () Bool)

(declare-fun tp!1857969 () Bool)

(declare-fun setElem!46395 () Context!11974)

(assert (=> setNonEmpty!46395 (= setRes!46395 (and tp!1857969 (inv!84754 setElem!46395) e!4094177))))

(declare-fun setRest!46395 () (InoxSet Context!11974))

(assert (=> setNonEmpty!46395 (= res!2772299 ((_ map or) (store ((as const (Array Context!11974 Bool)) false) setElem!46395 true) setRest!46395))))

(declare-fun b!6782274 () Bool)

(declare-fun tp!1857968 () Bool)

(assert (=> b!6782274 (= e!4094177 tp!1857968)))

(assert (= (and d!2130921 condSetEmpty!46395) setIsEmpty!46395))

(assert (= (and d!2130921 (not condSetEmpty!46395)) setNonEmpty!46395))

(assert (= setNonEmpty!46395 b!6782274))

(declare-fun m!7530950 () Bool)

(assert (=> setNonEmpty!46395 m!7530950))

(assert (=> d!2130269 d!2130921))

(assert (=> d!2130225 d!2130317))

(assert (=> d!2130225 d!2130275))

(declare-fun d!2130925 () Bool)

(declare-fun res!2772302 () Bool)

(declare-fun e!4094179 () Bool)

(assert (=> d!2130925 (=> res!2772302 e!4094179)))

(assert (=> d!2130925 (= res!2772302 ((_ is ElementMatch!16603) lt!2444844))))

(assert (=> d!2130925 (= (validRegex!8339 lt!2444844) e!4094179)))

(declare-fun b!6782275 () Bool)

(declare-fun e!4094180 () Bool)

(assert (=> b!6782275 (= e!4094179 e!4094180)))

(declare-fun c!1260083 () Bool)

(assert (=> b!6782275 (= c!1260083 ((_ is Star!16603) lt!2444844))))

(declare-fun bm!615439 () Bool)

(declare-fun call!615446 () Bool)

(declare-fun call!615444 () Bool)

(assert (=> bm!615439 (= call!615446 call!615444)))

(declare-fun b!6782276 () Bool)

(declare-fun e!4094184 () Bool)

(assert (=> b!6782276 (= e!4094180 e!4094184)))

(declare-fun c!1260084 () Bool)

(assert (=> b!6782276 (= c!1260084 ((_ is Union!16603) lt!2444844))))

(declare-fun bm!615440 () Bool)

(assert (=> bm!615440 (= call!615444 (validRegex!8339 (ite c!1260083 (reg!16932 lt!2444844) (ite c!1260084 (regTwo!33719 lt!2444844) (regTwo!33718 lt!2444844)))))))

(declare-fun b!6782277 () Bool)

(declare-fun res!2772300 () Bool)

(declare-fun e!4094183 () Bool)

(assert (=> b!6782277 (=> res!2772300 e!4094183)))

(assert (=> b!6782277 (= res!2772300 (not ((_ is Concat!25448) lt!2444844)))))

(assert (=> b!6782277 (= e!4094184 e!4094183)))

(declare-fun b!6782278 () Bool)

(declare-fun e!4094181 () Bool)

(assert (=> b!6782278 (= e!4094181 call!615446)))

(declare-fun bm!615441 () Bool)

(declare-fun call!615445 () Bool)

(assert (=> bm!615441 (= call!615445 (validRegex!8339 (ite c!1260084 (regOne!33719 lt!2444844) (regOne!33718 lt!2444844))))))

(declare-fun b!6782279 () Bool)

(declare-fun e!4094178 () Bool)

(assert (=> b!6782279 (= e!4094180 e!4094178)))

(declare-fun res!2772304 () Bool)

(assert (=> b!6782279 (= res!2772304 (not (nullable!6582 (reg!16932 lt!2444844))))))

(assert (=> b!6782279 (=> (not res!2772304) (not e!4094178))))

(declare-fun b!6782280 () Bool)

(assert (=> b!6782280 (= e!4094183 e!4094181)))

(declare-fun res!2772303 () Bool)

(assert (=> b!6782280 (=> (not res!2772303) (not e!4094181))))

(assert (=> b!6782280 (= res!2772303 call!615445)))

(declare-fun b!6782281 () Bool)

(declare-fun e!4094182 () Bool)

(assert (=> b!6782281 (= e!4094182 call!615446)))

(declare-fun b!6782282 () Bool)

(assert (=> b!6782282 (= e!4094178 call!615444)))

(declare-fun b!6782283 () Bool)

(declare-fun res!2772301 () Bool)

(assert (=> b!6782283 (=> (not res!2772301) (not e!4094182))))

(assert (=> b!6782283 (= res!2772301 call!615445)))

(assert (=> b!6782283 (= e!4094184 e!4094182)))

(assert (= (and d!2130925 (not res!2772302)) b!6782275))

(assert (= (and b!6782275 c!1260083) b!6782279))

(assert (= (and b!6782275 (not c!1260083)) b!6782276))

(assert (= (and b!6782279 res!2772304) b!6782282))

(assert (= (and b!6782276 c!1260084) b!6782283))

(assert (= (and b!6782276 (not c!1260084)) b!6782277))

(assert (= (and b!6782283 res!2772301) b!6782281))

(assert (= (and b!6782277 (not res!2772300)) b!6782280))

(assert (= (and b!6782280 res!2772303) b!6782278))

(assert (= (or b!6782281 b!6782278) bm!615439))

(assert (= (or b!6782283 b!6782280) bm!615441))

(assert (= (or b!6782282 bm!615439) bm!615440))

(declare-fun m!7530954 () Bool)

(assert (=> bm!615440 m!7530954))

(declare-fun m!7530956 () Bool)

(assert (=> bm!615441 m!7530956))

(declare-fun m!7530958 () Bool)

(assert (=> b!6782279 m!7530958))

(assert (=> d!2130247 d!2130925))

(declare-fun bs!1806537 () Bool)

(declare-fun d!2130933 () Bool)

(assert (= bs!1806537 (and d!2130933 d!2130513)))

(declare-fun lambda!381783 () Int)

(assert (=> bs!1806537 (= lambda!381783 lambda!381715)))

(declare-fun bs!1806538 () Bool)

(assert (= bs!1806538 (and d!2130933 d!2130379)))

(assert (=> bs!1806538 (= lambda!381783 lambda!381701)))

(declare-fun bs!1806539 () Bool)

(assert (= bs!1806539 (and d!2130933 d!2130155)))

(assert (=> bs!1806539 (= lambda!381783 lambda!381620)))

(declare-fun bs!1806540 () Bool)

(assert (= bs!1806540 (and d!2130933 d!2130785)))

(assert (=> bs!1806540 (= lambda!381783 lambda!381757)))

(declare-fun bs!1806541 () Bool)

(assert (= bs!1806541 (and d!2130933 d!2130637)))

(assert (=> bs!1806541 (= lambda!381783 lambda!381728)))

(declare-fun bs!1806542 () Bool)

(assert (= bs!1806542 (and d!2130933 d!2130261)))

(assert (=> bs!1806542 (= lambda!381783 lambda!381668)))

(declare-fun bs!1806543 () Bool)

(assert (= bs!1806543 (and d!2130933 d!2130603)))

(assert (=> bs!1806543 (= lambda!381783 lambda!381721)))

(declare-fun bs!1806544 () Bool)

(assert (= bs!1806544 (and d!2130933 d!2130863)))

(assert (=> bs!1806544 (= lambda!381783 lambda!381771)))

(declare-fun bs!1806545 () Bool)

(assert (= bs!1806545 (and d!2130933 d!2130483)))

(assert (=> bs!1806545 (= lambda!381783 lambda!381708)))

(declare-fun bs!1806546 () Bool)

(assert (= bs!1806546 (and d!2130933 d!2130873)))

(assert (=> bs!1806546 (= lambda!381783 lambda!381774)))

(declare-fun bs!1806547 () Bool)

(assert (= bs!1806547 (and d!2130933 d!2130157)))

(assert (=> bs!1806547 (= lambda!381783 lambda!381623)))

(declare-fun bs!1806548 () Bool)

(assert (= bs!1806548 (and d!2130933 d!2130353)))

(assert (=> bs!1806548 (= lambda!381783 lambda!381697)))

(declare-fun bs!1806549 () Bool)

(assert (= bs!1806549 (and d!2130933 d!2130597)))

(assert (=> bs!1806549 (= lambda!381783 lambda!381720)))

(declare-fun bs!1806550 () Bool)

(assert (= bs!1806550 (and d!2130933 d!2130589)))

(assert (=> bs!1806550 (= lambda!381783 lambda!381719)))

(declare-fun bs!1806551 () Bool)

(assert (= bs!1806551 (and d!2130933 d!2130195)))

(assert (=> bs!1806551 (= lambda!381783 lambda!381638)))

(declare-fun b!6782286 () Bool)

(declare-fun e!4094192 () Regex!16603)

(declare-fun e!4094187 () Regex!16603)

(assert (=> b!6782286 (= e!4094192 e!4094187)))

(declare-fun c!1260087 () Bool)

(assert (=> b!6782286 (= c!1260087 ((_ is Cons!65985) (unfocusZipperList!2024 lt!2444787)))))

(declare-fun b!6782287 () Bool)

(declare-fun e!4094191 () Bool)

(declare-fun e!4094190 () Bool)

(assert (=> b!6782287 (= e!4094191 e!4094190)))

(declare-fun c!1260085 () Bool)

(assert (=> b!6782287 (= c!1260085 (isEmpty!38347 (unfocusZipperList!2024 lt!2444787)))))

(declare-fun b!6782288 () Bool)

(assert (=> b!6782288 (= e!4094192 (h!72433 (unfocusZipperList!2024 lt!2444787)))))

(declare-fun b!6782289 () Bool)

(assert (=> b!6782289 (= e!4094187 (Union!16603 (h!72433 (unfocusZipperList!2024 lt!2444787)) (generalisedUnion!2447 (t!379824 (unfocusZipperList!2024 lt!2444787)))))))

(declare-fun b!6782290 () Bool)

(assert (=> b!6782290 (= e!4094187 EmptyLang!16603)))

(declare-fun b!6782291 () Bool)

(declare-fun lt!2444968 () Regex!16603)

(assert (=> b!6782291 (= e!4094190 (isEmptyLang!1968 lt!2444968))))

(declare-fun b!6782292 () Bool)

(declare-fun e!4094189 () Bool)

(assert (=> b!6782292 (= e!4094189 (= lt!2444968 (head!13616 (unfocusZipperList!2024 lt!2444787))))))

(assert (=> d!2130933 e!4094191))

(declare-fun res!2772308 () Bool)

(assert (=> d!2130933 (=> (not res!2772308) (not e!4094191))))

(assert (=> d!2130933 (= res!2772308 (validRegex!8339 lt!2444968))))

(assert (=> d!2130933 (= lt!2444968 e!4094192)))

(declare-fun c!1260088 () Bool)

(declare-fun e!4094188 () Bool)

(assert (=> d!2130933 (= c!1260088 e!4094188)))

(declare-fun res!2772307 () Bool)

(assert (=> d!2130933 (=> (not res!2772307) (not e!4094188))))

(assert (=> d!2130933 (= res!2772307 ((_ is Cons!65985) (unfocusZipperList!2024 lt!2444787)))))

(assert (=> d!2130933 (forall!15794 (unfocusZipperList!2024 lt!2444787) lambda!381783)))

(assert (=> d!2130933 (= (generalisedUnion!2447 (unfocusZipperList!2024 lt!2444787)) lt!2444968)))

(declare-fun b!6782293 () Bool)

(assert (=> b!6782293 (= e!4094188 (isEmpty!38347 (t!379824 (unfocusZipperList!2024 lt!2444787))))))

(declare-fun b!6782294 () Bool)

(assert (=> b!6782294 (= e!4094189 (isUnion!1398 lt!2444968))))

(declare-fun b!6782295 () Bool)

(assert (=> b!6782295 (= e!4094190 e!4094189)))

(declare-fun c!1260086 () Bool)

(assert (=> b!6782295 (= c!1260086 (isEmpty!38347 (tail!12701 (unfocusZipperList!2024 lt!2444787))))))

(assert (= (and d!2130933 res!2772307) b!6782293))

(assert (= (and d!2130933 c!1260088) b!6782288))

(assert (= (and d!2130933 (not c!1260088)) b!6782286))

(assert (= (and b!6782286 c!1260087) b!6782289))

(assert (= (and b!6782286 (not c!1260087)) b!6782290))

(assert (= (and d!2130933 res!2772308) b!6782287))

(assert (= (and b!6782287 c!1260085) b!6782291))

(assert (= (and b!6782287 (not c!1260085)) b!6782295))

(assert (= (and b!6782295 c!1260086) b!6782292))

(assert (= (and b!6782295 (not c!1260086)) b!6782294))

(assert (=> b!6782295 m!7529458))

(declare-fun m!7530982 () Bool)

(assert (=> b!6782295 m!7530982))

(assert (=> b!6782295 m!7530982))

(declare-fun m!7530986 () Bool)

(assert (=> b!6782295 m!7530986))

(assert (=> b!6782287 m!7529458))

(declare-fun m!7530988 () Bool)

(assert (=> b!6782287 m!7530988))

(assert (=> b!6782292 m!7529458))

(declare-fun m!7530990 () Bool)

(assert (=> b!6782292 m!7530990))

(declare-fun m!7530992 () Bool)

(assert (=> b!6782293 m!7530992))

(declare-fun m!7530994 () Bool)

(assert (=> d!2130933 m!7530994))

(assert (=> d!2130933 m!7529458))

(declare-fun m!7530996 () Bool)

(assert (=> d!2130933 m!7530996))

(declare-fun m!7530998 () Bool)

(assert (=> b!6782294 m!7530998))

(declare-fun m!7531000 () Bool)

(assert (=> b!6782289 m!7531000))

(declare-fun m!7531002 () Bool)

(assert (=> b!6782291 m!7531002))

(assert (=> d!2130247 d!2130933))

(declare-fun bs!1806553 () Bool)

(declare-fun d!2130945 () Bool)

(assert (= bs!1806553 (and d!2130945 d!2130933)))

(declare-fun lambda!381784 () Int)

(assert (=> bs!1806553 (= lambda!381784 lambda!381783)))

(declare-fun bs!1806554 () Bool)

(assert (= bs!1806554 (and d!2130945 d!2130513)))

(assert (=> bs!1806554 (= lambda!381784 lambda!381715)))

(declare-fun bs!1806555 () Bool)

(assert (= bs!1806555 (and d!2130945 d!2130379)))

(assert (=> bs!1806555 (= lambda!381784 lambda!381701)))

(declare-fun bs!1806556 () Bool)

(assert (= bs!1806556 (and d!2130945 d!2130155)))

(assert (=> bs!1806556 (= lambda!381784 lambda!381620)))

(declare-fun bs!1806557 () Bool)

(assert (= bs!1806557 (and d!2130945 d!2130785)))

(assert (=> bs!1806557 (= lambda!381784 lambda!381757)))

(declare-fun bs!1806558 () Bool)

(assert (= bs!1806558 (and d!2130945 d!2130637)))

(assert (=> bs!1806558 (= lambda!381784 lambda!381728)))

(declare-fun bs!1806559 () Bool)

(assert (= bs!1806559 (and d!2130945 d!2130261)))

(assert (=> bs!1806559 (= lambda!381784 lambda!381668)))

(declare-fun bs!1806560 () Bool)

(assert (= bs!1806560 (and d!2130945 d!2130603)))

(assert (=> bs!1806560 (= lambda!381784 lambda!381721)))

(declare-fun bs!1806561 () Bool)

(assert (= bs!1806561 (and d!2130945 d!2130863)))

(assert (=> bs!1806561 (= lambda!381784 lambda!381771)))

(declare-fun bs!1806562 () Bool)

(assert (= bs!1806562 (and d!2130945 d!2130483)))

(assert (=> bs!1806562 (= lambda!381784 lambda!381708)))

(declare-fun bs!1806563 () Bool)

(assert (= bs!1806563 (and d!2130945 d!2130873)))

(assert (=> bs!1806563 (= lambda!381784 lambda!381774)))

(declare-fun bs!1806564 () Bool)

(assert (= bs!1806564 (and d!2130945 d!2130157)))

(assert (=> bs!1806564 (= lambda!381784 lambda!381623)))

(declare-fun bs!1806565 () Bool)

(assert (= bs!1806565 (and d!2130945 d!2130353)))

(assert (=> bs!1806565 (= lambda!381784 lambda!381697)))

(declare-fun bs!1806566 () Bool)

(assert (= bs!1806566 (and d!2130945 d!2130597)))

(assert (=> bs!1806566 (= lambda!381784 lambda!381720)))

(declare-fun bs!1806567 () Bool)

(assert (= bs!1806567 (and d!2130945 d!2130589)))

(assert (=> bs!1806567 (= lambda!381784 lambda!381719)))

(declare-fun bs!1806568 () Bool)

(assert (= bs!1806568 (and d!2130945 d!2130195)))

(assert (=> bs!1806568 (= lambda!381784 lambda!381638)))

(declare-fun lt!2444970 () List!66109)

(assert (=> d!2130945 (forall!15794 lt!2444970 lambda!381784)))

(declare-fun e!4094197 () List!66109)

(assert (=> d!2130945 (= lt!2444970 e!4094197)))

(declare-fun c!1260090 () Bool)

(assert (=> d!2130945 (= c!1260090 ((_ is Cons!65986) lt!2444787))))

(assert (=> d!2130945 (= (unfocusZipperList!2024 lt!2444787) lt!2444970)))

(declare-fun b!6782302 () Bool)

(assert (=> b!6782302 (= e!4094197 (Cons!65985 (generalisedConcat!2200 (exprs!6487 (h!72434 lt!2444787))) (unfocusZipperList!2024 (t!379825 lt!2444787))))))

(declare-fun b!6782303 () Bool)

(assert (=> b!6782303 (= e!4094197 Nil!65985)))

(assert (= (and d!2130945 c!1260090) b!6782302))

(assert (= (and d!2130945 (not c!1260090)) b!6782303))

(declare-fun m!7531004 () Bool)

(assert (=> d!2130945 m!7531004))

(declare-fun m!7531006 () Bool)

(assert (=> b!6782302 m!7531006))

(declare-fun m!7531008 () Bool)

(assert (=> b!6782302 m!7531008))

(assert (=> d!2130247 d!2130945))

(declare-fun d!2130947 () Bool)

(declare-fun c!1260091 () Bool)

(assert (=> d!2130947 (= c!1260091 (isEmpty!38345 (tail!12702 (t!379823 s!2326))))))

(declare-fun e!4094206 () Bool)

(assert (=> d!2130947 (= (matchZipper!2589 (derivationStepZipper!2547 (derivationStepZipper!2547 lt!2444757 (h!72432 s!2326)) (head!13617 (t!379823 s!2326))) (tail!12702 (t!379823 s!2326))) e!4094206)))

(declare-fun b!6782336 () Bool)

(assert (=> b!6782336 (= e!4094206 (nullableZipper!2309 (derivationStepZipper!2547 (derivationStepZipper!2547 lt!2444757 (h!72432 s!2326)) (head!13617 (t!379823 s!2326)))))))

(declare-fun b!6782337 () Bool)

(assert (=> b!6782337 (= e!4094206 (matchZipper!2589 (derivationStepZipper!2547 (derivationStepZipper!2547 (derivationStepZipper!2547 lt!2444757 (h!72432 s!2326)) (head!13617 (t!379823 s!2326))) (head!13617 (tail!12702 (t!379823 s!2326)))) (tail!12702 (tail!12702 (t!379823 s!2326)))))))

(assert (= (and d!2130947 c!1260091) b!6782336))

(assert (= (and d!2130947 (not c!1260091)) b!6782337))

(assert (=> d!2130947 m!7529258))

(declare-fun m!7531010 () Bool)

(assert (=> d!2130947 m!7531010))

(assert (=> b!6782336 m!7529256))

(declare-fun m!7531012 () Bool)

(assert (=> b!6782336 m!7531012))

(assert (=> b!6782337 m!7529258))

(declare-fun m!7531014 () Bool)

(assert (=> b!6782337 m!7531014))

(assert (=> b!6782337 m!7529256))

(assert (=> b!6782337 m!7531014))

(declare-fun m!7531016 () Bool)

(assert (=> b!6782337 m!7531016))

(assert (=> b!6782337 m!7529258))

(declare-fun m!7531018 () Bool)

(assert (=> b!6782337 m!7531018))

(assert (=> b!6782337 m!7531016))

(assert (=> b!6782337 m!7531018))

(declare-fun m!7531020 () Bool)

(assert (=> b!6782337 m!7531020))

(assert (=> b!6780430 d!2130947))

(declare-fun bs!1806569 () Bool)

(declare-fun d!2130949 () Bool)

(assert (= bs!1806569 (and d!2130949 d!2130257)))

(declare-fun lambda!381785 () Int)

(assert (=> bs!1806569 (= (= (head!13617 (t!379823 s!2326)) (h!72432 s!2326)) (= lambda!381785 lambda!381664))))

(declare-fun bs!1806570 () Bool)

(assert (= bs!1806570 (and d!2130949 d!2130767)))

(assert (=> bs!1806570 (= (= (head!13617 (t!379823 s!2326)) (head!13617 (_1!36881 lt!2444761))) (= lambda!381785 lambda!381751))))

(declare-fun bs!1806571 () Bool)

(assert (= bs!1806571 (and d!2130949 d!2130651)))

(assert (=> bs!1806571 (= (= (head!13617 (t!379823 s!2326)) (head!13617 (_2!36881 lt!2444761))) (= lambda!381785 lambda!381731))))

(declare-fun bs!1806572 () Bool)

(assert (= bs!1806572 (and d!2130949 d!2130183)))

(assert (=> bs!1806572 (= (= (head!13617 (t!379823 s!2326)) (h!72432 s!2326)) (= lambda!381785 lambda!381629))))

(declare-fun bs!1806573 () Bool)

(assert (= bs!1806573 (and d!2130949 d!2130357)))

(assert (=> bs!1806573 (= (= (head!13617 (t!379823 s!2326)) (h!72432 s!2326)) (= lambda!381785 lambda!381698))))

(declare-fun bs!1806574 () Bool)

(assert (= bs!1806574 (and d!2130949 b!6780319)))

(assert (=> bs!1806574 (= (= (head!13617 (t!379823 s!2326)) (h!72432 s!2326)) (= lambda!381785 lambda!381617))))

(declare-fun bs!1806575 () Bool)

(assert (= bs!1806575 (and d!2130949 d!2130521)))

(assert (=> bs!1806575 (= (= (head!13617 (t!379823 s!2326)) (head!13617 s!2326)) (= lambda!381785 lambda!381716))))

(assert (=> d!2130949 true))

(assert (=> d!2130949 (= (derivationStepZipper!2547 (derivationStepZipper!2547 lt!2444757 (h!72432 s!2326)) (head!13617 (t!379823 s!2326))) (flatMap!2084 (derivationStepZipper!2547 lt!2444757 (h!72432 s!2326)) lambda!381785))))

(declare-fun bs!1806576 () Bool)

(assert (= bs!1806576 d!2130949))

(assert (=> bs!1806576 m!7529112))

(declare-fun m!7531026 () Bool)

(assert (=> bs!1806576 m!7531026))

(assert (=> b!6780430 d!2130949))

(declare-fun d!2130951 () Bool)

(assert (=> d!2130951 (= (head!13617 (t!379823 s!2326)) (h!72432 (t!379823 s!2326)))))

(assert (=> b!6780430 d!2130951))

(declare-fun d!2130953 () Bool)

(assert (=> d!2130953 (= (tail!12702 (t!379823 s!2326)) (t!379823 (t!379823 s!2326)))))

(assert (=> b!6780430 d!2130953))

(assert (=> d!2130345 d!2130645))

(assert (=> bs!1805931 d!2130271))

(declare-fun b!6782369 () Bool)

(declare-fun res!2772321 () Bool)

(declare-fun e!4094221 () Bool)

(assert (=> b!6782369 (=> res!2772321 e!4094221)))

(declare-fun e!4094225 () Bool)

(assert (=> b!6782369 (= res!2772321 e!4094225)))

(declare-fun res!2772317 () Bool)

(assert (=> b!6782369 (=> (not res!2772317) (not e!4094225))))

(declare-fun lt!2444971 () Bool)

(assert (=> b!6782369 (= res!2772317 lt!2444971)))

(declare-fun b!6782370 () Bool)

(declare-fun e!4094224 () Bool)

(assert (=> b!6782370 (= e!4094224 (nullable!6582 (derivativeStep!5267 r!7292 (head!13617 (_2!36881 lt!2444761)))))))

(declare-fun bm!615442 () Bool)

(declare-fun call!615447 () Bool)

(assert (=> bm!615442 (= call!615447 (isEmpty!38345 (tail!12702 (_2!36881 lt!2444761))))))

(declare-fun b!6782371 () Bool)

(declare-fun e!4094226 () Bool)

(assert (=> b!6782371 (= e!4094221 e!4094226)))

(declare-fun res!2772315 () Bool)

(assert (=> b!6782371 (=> (not res!2772315) (not e!4094226))))

(assert (=> b!6782371 (= res!2772315 (not lt!2444971))))

(declare-fun b!6782372 () Bool)

(declare-fun e!4094220 () Bool)

(assert (=> b!6782372 (= e!4094220 (not (= (head!13617 (tail!12702 (_2!36881 lt!2444761))) (c!1259507 (derivativeStep!5267 r!7292 (head!13617 (_2!36881 lt!2444761)))))))))

(declare-fun b!6782373 () Bool)

(declare-fun res!2772320 () Bool)

(assert (=> b!6782373 (=> res!2772320 e!4094221)))

(assert (=> b!6782373 (= res!2772320 (not ((_ is ElementMatch!16603) (derivativeStep!5267 r!7292 (head!13617 (_2!36881 lt!2444761))))))))

(declare-fun e!4094222 () Bool)

(assert (=> b!6782373 (= e!4094222 e!4094221)))

(declare-fun b!6782374 () Bool)

(assert (=> b!6782374 (= e!4094224 (matchR!8786 (derivativeStep!5267 (derivativeStep!5267 r!7292 (head!13617 (_2!36881 lt!2444761))) (head!13617 (tail!12702 (_2!36881 lt!2444761)))) (tail!12702 (tail!12702 (_2!36881 lt!2444761)))))))

(declare-fun b!6782376 () Bool)

(declare-fun res!2772314 () Bool)

(assert (=> b!6782376 (=> (not res!2772314) (not e!4094225))))

(assert (=> b!6782376 (= res!2772314 (isEmpty!38345 (tail!12702 (tail!12702 (_2!36881 lt!2444761)))))))

(declare-fun b!6782377 () Bool)

(declare-fun e!4094223 () Bool)

(assert (=> b!6782377 (= e!4094223 (= lt!2444971 call!615447))))

(declare-fun b!6782378 () Bool)

(assert (=> b!6782378 (= e!4094223 e!4094222)))

(declare-fun c!1260092 () Bool)

(assert (=> b!6782378 (= c!1260092 ((_ is EmptyLang!16603) (derivativeStep!5267 r!7292 (head!13617 (_2!36881 lt!2444761)))))))

(declare-fun b!6782379 () Bool)

(declare-fun res!2772318 () Bool)

(assert (=> b!6782379 (=> (not res!2772318) (not e!4094225))))

(assert (=> b!6782379 (= res!2772318 (not call!615447))))

(declare-fun b!6782380 () Bool)

(assert (=> b!6782380 (= e!4094222 (not lt!2444971))))

(declare-fun b!6782381 () Bool)

(declare-fun res!2772319 () Bool)

(assert (=> b!6782381 (=> res!2772319 e!4094220)))

(assert (=> b!6782381 (= res!2772319 (not (isEmpty!38345 (tail!12702 (tail!12702 (_2!36881 lt!2444761))))))))

(declare-fun b!6782382 () Bool)

(assert (=> b!6782382 (= e!4094226 e!4094220)))

(declare-fun res!2772316 () Bool)

(assert (=> b!6782382 (=> res!2772316 e!4094220)))

(assert (=> b!6782382 (= res!2772316 call!615447)))

(declare-fun d!2130955 () Bool)

(assert (=> d!2130955 e!4094223))

(declare-fun c!1260094 () Bool)

(assert (=> d!2130955 (= c!1260094 ((_ is EmptyExpr!16603) (derivativeStep!5267 r!7292 (head!13617 (_2!36881 lt!2444761)))))))

(assert (=> d!2130955 (= lt!2444971 e!4094224)))

(declare-fun c!1260093 () Bool)

(assert (=> d!2130955 (= c!1260093 (isEmpty!38345 (tail!12702 (_2!36881 lt!2444761))))))

(assert (=> d!2130955 (validRegex!8339 (derivativeStep!5267 r!7292 (head!13617 (_2!36881 lt!2444761))))))

(assert (=> d!2130955 (= (matchR!8786 (derivativeStep!5267 r!7292 (head!13617 (_2!36881 lt!2444761))) (tail!12702 (_2!36881 lt!2444761))) lt!2444971)))

(declare-fun b!6782375 () Bool)

(assert (=> b!6782375 (= e!4094225 (= (head!13617 (tail!12702 (_2!36881 lt!2444761))) (c!1259507 (derivativeStep!5267 r!7292 (head!13617 (_2!36881 lt!2444761))))))))

(assert (= (and d!2130955 c!1260093) b!6782370))

(assert (= (and d!2130955 (not c!1260093)) b!6782374))

(assert (= (and d!2130955 c!1260094) b!6782377))

(assert (= (and d!2130955 (not c!1260094)) b!6782378))

(assert (= (and b!6782378 c!1260092) b!6782380))

(assert (= (and b!6782378 (not c!1260092)) b!6782373))

(assert (= (and b!6782373 (not res!2772320)) b!6782369))

(assert (= (and b!6782369 res!2772317) b!6782379))

(assert (= (and b!6782379 res!2772318) b!6782376))

(assert (= (and b!6782376 res!2772314) b!6782375))

(assert (= (and b!6782369 (not res!2772321)) b!6782371))

(assert (= (and b!6782371 res!2772315) b!6782382))

(assert (= (and b!6782382 (not res!2772316)) b!6782381))

(assert (= (and b!6782381 (not res!2772319)) b!6782372))

(assert (= (or b!6782377 b!6782379 b!6782382) bm!615442))

(assert (=> d!2130955 m!7529446))

(assert (=> d!2130955 m!7529448))

(assert (=> d!2130955 m!7529452))

(declare-fun m!7531028 () Bool)

(assert (=> d!2130955 m!7531028))

(assert (=> b!6782370 m!7529452))

(declare-fun m!7531030 () Bool)

(assert (=> b!6782370 m!7531030))

(assert (=> bm!615442 m!7529446))

(assert (=> bm!615442 m!7529448))

(assert (=> b!6782381 m!7529446))

(assert (=> b!6782381 m!7530366))

(assert (=> b!6782381 m!7530366))

(declare-fun m!7531032 () Bool)

(assert (=> b!6782381 m!7531032))

(assert (=> b!6782374 m!7529446))

(assert (=> b!6782374 m!7530362))

(assert (=> b!6782374 m!7529452))

(assert (=> b!6782374 m!7530362))

(declare-fun m!7531034 () Bool)

(assert (=> b!6782374 m!7531034))

(assert (=> b!6782374 m!7529446))

(assert (=> b!6782374 m!7530366))

(assert (=> b!6782374 m!7531034))

(assert (=> b!6782374 m!7530366))

(declare-fun m!7531036 () Bool)

(assert (=> b!6782374 m!7531036))

(assert (=> b!6782375 m!7529446))

(assert (=> b!6782375 m!7530362))

(assert (=> b!6782376 m!7529446))

(assert (=> b!6782376 m!7530366))

(assert (=> b!6782376 m!7530366))

(assert (=> b!6782376 m!7531032))

(assert (=> b!6782372 m!7529446))

(assert (=> b!6782372 m!7530362))

(assert (=> b!6780793 d!2130955))

(declare-fun b!6782416 () Bool)

(declare-fun e!4094236 () Regex!16603)

(declare-fun call!615448 () Regex!16603)

(assert (=> b!6782416 (= e!4094236 (Union!16603 (Concat!25448 call!615448 (regTwo!33718 r!7292)) EmptyLang!16603))))

(declare-fun b!6782417 () Bool)

(declare-fun e!4094238 () Regex!16603)

(declare-fun call!615451 () Regex!16603)

(declare-fun call!615450 () Regex!16603)

(assert (=> b!6782417 (= e!4094238 (Union!16603 call!615451 call!615450))))

(declare-fun bm!615443 () Bool)

(assert (=> bm!615443 (= call!615448 call!615451)))

(declare-fun c!1260099 () Bool)

(declare-fun c!1260097 () Bool)

(declare-fun bm!615444 () Bool)

(assert (=> bm!615444 (= call!615451 (derivativeStep!5267 (ite c!1260097 (regOne!33719 r!7292) (ite c!1260099 (regTwo!33718 r!7292) (regOne!33718 r!7292))) (head!13617 (_2!36881 lt!2444761))))))

(declare-fun b!6782418 () Bool)

(assert (=> b!6782418 (= c!1260097 ((_ is Union!16603) r!7292))))

(declare-fun e!4094240 () Regex!16603)

(assert (=> b!6782418 (= e!4094240 e!4094238)))

(declare-fun b!6782419 () Bool)

(assert (=> b!6782419 (= e!4094240 (ite (= (head!13617 (_2!36881 lt!2444761)) (c!1259507 r!7292)) EmptyExpr!16603 EmptyLang!16603))))

(declare-fun b!6782420 () Bool)

(declare-fun e!4094237 () Regex!16603)

(assert (=> b!6782420 (= e!4094237 EmptyLang!16603)))

(declare-fun b!6782421 () Bool)

(assert (=> b!6782421 (= e!4094237 e!4094240)))

(declare-fun c!1260098 () Bool)

(assert (=> b!6782421 (= c!1260098 ((_ is ElementMatch!16603) r!7292))))

(declare-fun b!6782422 () Bool)

(assert (=> b!6782422 (= c!1260099 (nullable!6582 (regOne!33718 r!7292)))))

(declare-fun e!4094239 () Regex!16603)

(assert (=> b!6782422 (= e!4094239 e!4094236)))

(declare-fun bm!615445 () Bool)

(declare-fun c!1260095 () Bool)

(assert (=> bm!615445 (= call!615450 (derivativeStep!5267 (ite c!1260097 (regTwo!33719 r!7292) (ite c!1260095 (reg!16932 r!7292) (regOne!33718 r!7292))) (head!13617 (_2!36881 lt!2444761))))))

(declare-fun bm!615446 () Bool)

(declare-fun call!615449 () Regex!16603)

(assert (=> bm!615446 (= call!615449 call!615450)))

(declare-fun b!6782423 () Bool)

(assert (=> b!6782423 (= e!4094239 (Concat!25448 call!615449 r!7292))))

(declare-fun b!6782424 () Bool)

(assert (=> b!6782424 (= e!4094236 (Union!16603 (Concat!25448 call!615449 (regTwo!33718 r!7292)) call!615448))))

(declare-fun d!2130957 () Bool)

(declare-fun lt!2444972 () Regex!16603)

(assert (=> d!2130957 (validRegex!8339 lt!2444972)))

(assert (=> d!2130957 (= lt!2444972 e!4094237)))

(declare-fun c!1260096 () Bool)

(assert (=> d!2130957 (= c!1260096 (or ((_ is EmptyExpr!16603) r!7292) ((_ is EmptyLang!16603) r!7292)))))

(assert (=> d!2130957 (validRegex!8339 r!7292)))

(assert (=> d!2130957 (= (derivativeStep!5267 r!7292 (head!13617 (_2!36881 lt!2444761))) lt!2444972)))

(declare-fun b!6782425 () Bool)

(assert (=> b!6782425 (= e!4094238 e!4094239)))

(assert (=> b!6782425 (= c!1260095 ((_ is Star!16603) r!7292))))

(assert (= (and d!2130957 c!1260096) b!6782420))

(assert (= (and d!2130957 (not c!1260096)) b!6782421))

(assert (= (and b!6782421 c!1260098) b!6782419))

(assert (= (and b!6782421 (not c!1260098)) b!6782418))

(assert (= (and b!6782418 c!1260097) b!6782417))

(assert (= (and b!6782418 (not c!1260097)) b!6782425))

(assert (= (and b!6782425 c!1260095) b!6782423))

(assert (= (and b!6782425 (not c!1260095)) b!6782422))

(assert (= (and b!6782422 c!1260099) b!6782424))

(assert (= (and b!6782422 (not c!1260099)) b!6782416))

(assert (= (or b!6782424 b!6782416) bm!615443))

(assert (= (or b!6782423 b!6782424) bm!615446))

(assert (= (or b!6782417 bm!615446) bm!615445))

(assert (= (or b!6782417 bm!615443) bm!615444))

(assert (=> bm!615444 m!7529450))

(declare-fun m!7531038 () Bool)

(assert (=> bm!615444 m!7531038))

(assert (=> b!6782422 m!7529468))

(assert (=> bm!615445 m!7529450))

(declare-fun m!7531040 () Bool)

(assert (=> bm!615445 m!7531040))

(declare-fun m!7531042 () Bool)

(assert (=> d!2130957 m!7531042))

(assert (=> d!2130957 m!7529074))

(assert (=> b!6780793 d!2130957))

(assert (=> b!6780793 d!2130641))

(assert (=> b!6780793 d!2130629))

(declare-fun d!2130959 () Bool)

(assert (=> d!2130959 (= (isDefined!13193 (findConcatSeparation!2904 (reg!16932 r!7292) r!7292 Nil!65984 s!2326 s!2326)) (not (isEmpty!38350 (findConcatSeparation!2904 (reg!16932 r!7292) r!7292 Nil!65984 s!2326 s!2326))))))

(declare-fun bs!1806577 () Bool)

(assert (= bs!1806577 d!2130959))

(assert (=> bs!1806577 m!7529148))

(declare-fun m!7531044 () Bool)

(assert (=> bs!1806577 m!7531044))

(assert (=> d!2130335 d!2130959))

(declare-fun bs!1806584 () Bool)

(declare-fun d!2130961 () Bool)

(assert (= bs!1806584 (and d!2130961 b!6781974)))

(declare-fun lambda!381788 () Int)

(assert (=> bs!1806584 (not (= lambda!381788 lambda!381755))))

(declare-fun bs!1806585 () Bool)

(assert (= bs!1806585 (and d!2130961 b!6780652)))

(assert (=> bs!1806585 (not (= lambda!381788 lambda!381651))))

(declare-fun bs!1806586 () Bool)

(assert (= bs!1806586 (and d!2130961 d!2130287)))

(assert (=> bs!1806586 (= (= r!7292 (Star!16603 (reg!16932 r!7292))) (= lambda!381788 lambda!381684))))

(declare-fun bs!1806587 () Bool)

(assert (= bs!1806587 (and d!2130961 b!6780302)))

(assert (=> bs!1806587 (not (= lambda!381788 lambda!381616))))

(declare-fun bs!1806588 () Bool)

(assert (= bs!1806588 (and d!2130961 d!2130759)))

(assert (=> bs!1806588 (not (= lambda!381788 lambda!381749))))

(assert (=> bs!1806587 (not (= lambda!381788 lambda!381615))))

(declare-fun bs!1806589 () Bool)

(assert (= bs!1806589 (and d!2130961 b!6781721)))

(assert (=> bs!1806589 (not (= lambda!381788 lambda!381725))))

(declare-fun bs!1806590 () Bool)

(assert (= bs!1806590 (and d!2130961 b!6782241)))

(assert (=> bs!1806590 (not (= lambda!381788 lambda!381780))))

(assert (=> bs!1806587 (= lambda!381788 lambda!381614)))

(declare-fun bs!1806591 () Bool)

(assert (= bs!1806591 (and d!2130961 b!6781134)))

(assert (=> bs!1806591 (not (= lambda!381788 lambda!381700))))

(declare-fun bs!1806592 () Bool)

(assert (= bs!1806592 (and d!2130961 d!2130829)))

(assert (=> bs!1806592 (not (= lambda!381788 lambda!381769))))

(declare-fun bs!1806593 () Bool)

(assert (= bs!1806593 (and d!2130961 b!6781135)))

(assert (=> bs!1806593 (not (= lambda!381788 lambda!381699))))

(declare-fun bs!1806594 () Bool)

(assert (= bs!1806594 (and d!2130961 d!2130279)))

(assert (=> bs!1806594 (not (= lambda!381788 lambda!381674))))

(declare-fun bs!1806595 () Bool)

(assert (= bs!1806595 (and d!2130961 b!6781975)))

(assert (=> bs!1806595 (not (= lambda!381788 lambda!381753))))

(declare-fun bs!1806596 () Bool)

(assert (= bs!1806596 (and d!2130961 d!2130335)))

(assert (=> bs!1806596 (= lambda!381788 lambda!381696)))

(declare-fun bs!1806597 () Bool)

(assert (= bs!1806597 (and d!2130961 b!6781722)))

(assert (=> bs!1806597 (not (= lambda!381788 lambda!381722))))

(declare-fun bs!1806598 () Bool)

(assert (= bs!1806598 (and d!2130961 b!6781866)))

(assert (=> bs!1806598 (not (= lambda!381788 lambda!381735))))

(declare-fun bs!1806599 () Bool)

(assert (= bs!1806599 (and d!2130961 b!6782242)))

(assert (=> bs!1806599 (not (= lambda!381788 lambda!381778))))

(assert (=> bs!1806588 (= lambda!381788 lambda!381747)))

(declare-fun bs!1806600 () Bool)

(assert (= bs!1806600 (and d!2130961 b!6780651)))

(assert (=> bs!1806600 (not (= lambda!381788 lambda!381652))))

(assert (=> bs!1806594 (= lambda!381788 lambda!381673)))

(assert (=> bs!1806592 (= (= r!7292 (Star!16603 (reg!16932 r!7292))) (= lambda!381788 lambda!381767))))

(declare-fun bs!1806601 () Bool)

(assert (= bs!1806601 (and d!2130961 b!6781867)))

(assert (=> bs!1806601 (not (= lambda!381788 lambda!381733))))

(assert (=> bs!1806586 (not (= lambda!381788 lambda!381685))))

(assert (=> d!2130961 true))

(assert (=> d!2130961 true))

(assert (=> d!2130961 true))

(assert (=> d!2130961 (= (isDefined!13193 (findConcatSeparation!2904 (reg!16932 r!7292) r!7292 Nil!65984 s!2326 s!2326)) (Exists!3671 lambda!381788))))

(assert (=> d!2130961 true))

(declare-fun _$89!3034 () Unit!159897)

(assert (=> d!2130961 (= (choose!50506 (reg!16932 r!7292) r!7292 s!2326) _$89!3034)))

(declare-fun bs!1806602 () Bool)

(assert (= bs!1806602 d!2130961))

(assert (=> bs!1806602 m!7529148))

(assert (=> bs!1806602 m!7529148))

(assert (=> bs!1806602 m!7529722))

(declare-fun m!7531056 () Bool)

(assert (=> bs!1806602 m!7531056))

(assert (=> d!2130335 d!2130961))

(declare-fun d!2130975 () Bool)

(assert (=> d!2130975 (= (Exists!3671 lambda!381696) (choose!50496 lambda!381696))))

(declare-fun bs!1806603 () Bool)

(assert (= bs!1806603 d!2130975))

(declare-fun m!7531058 () Bool)

(assert (=> bs!1806603 m!7531058))

(assert (=> d!2130335 d!2130975))

(assert (=> d!2130335 d!2130319))

(assert (=> d!2130335 d!2130611))

(declare-fun d!2130977 () Bool)

(assert (=> d!2130977 true))

(assert (=> d!2130977 true))

(declare-fun res!2772326 () Bool)

(assert (=> d!2130977 (= (choose!50496 lambda!381614) res!2772326)))

(assert (=> d!2130189 d!2130977))

(declare-fun d!2130979 () Bool)

(assert (=> d!2130979 (= (Exists!3671 (ite c!1259737 lambda!381699 lambda!381700)) (choose!50496 (ite c!1259737 lambda!381699 lambda!381700)))))

(declare-fun bs!1806604 () Bool)

(assert (= bs!1806604 d!2130979))

(declare-fun m!7531060 () Bool)

(assert (=> bs!1806604 m!7531060))

(assert (=> bm!615201 d!2130979))

(declare-fun d!2130981 () Bool)

(assert (=> d!2130981 (= (isUnion!1398 lt!2444794) ((_ is Union!16603) lt!2444794))))

(assert (=> b!6780380 d!2130981))

(declare-fun d!2130983 () Bool)

(assert (=> d!2130983 (= (isEmpty!38345 (t!379823 s!2326)) ((_ is Nil!65984) (t!379823 s!2326)))))

(assert (=> d!2130181 d!2130983))

(assert (=> b!6780888 d!2130623))

(declare-fun call!615452 () (InoxSet Context!11974))

(declare-fun b!6782450 () Bool)

(declare-fun e!4094249 () (InoxSet Context!11974))

(assert (=> b!6782450 (= e!4094249 ((_ map or) call!615452 (derivationStepZipperUp!1757 (Context!11975 (t!379824 (exprs!6487 (Context!11975 (t!379824 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985)))))))) (h!72432 s!2326))))))

(declare-fun d!2130985 () Bool)

(declare-fun c!1260100 () Bool)

(declare-fun e!4094250 () Bool)

(assert (=> d!2130985 (= c!1260100 e!4094250)))

(declare-fun res!2772327 () Bool)

(assert (=> d!2130985 (=> (not res!2772327) (not e!4094250))))

(assert (=> d!2130985 (= res!2772327 ((_ is Cons!65985) (exprs!6487 (Context!11975 (t!379824 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985))))))))))

(assert (=> d!2130985 (= (derivationStepZipperUp!1757 (Context!11975 (t!379824 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985))))) (h!72432 s!2326)) e!4094249)))

(declare-fun b!6782451 () Bool)

(declare-fun e!4094248 () (InoxSet Context!11974))

(assert (=> b!6782451 (= e!4094248 call!615452)))

(declare-fun b!6782452 () Bool)

(assert (=> b!6782452 (= e!4094249 e!4094248)))

(declare-fun c!1260101 () Bool)

(assert (=> b!6782452 (= c!1260101 ((_ is Cons!65985) (exprs!6487 (Context!11975 (t!379824 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985))))))))))

(declare-fun bm!615447 () Bool)

(assert (=> bm!615447 (= call!615452 (derivationStepZipperDown!1831 (h!72433 (exprs!6487 (Context!11975 (t!379824 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985))))))) (Context!11975 (t!379824 (exprs!6487 (Context!11975 (t!379824 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985)))))))) (h!72432 s!2326)))))

(declare-fun b!6782453 () Bool)

(assert (=> b!6782453 (= e!4094248 ((as const (Array Context!11974 Bool)) false))))

(declare-fun b!6782454 () Bool)

(assert (=> b!6782454 (= e!4094250 (nullable!6582 (h!72433 (exprs!6487 (Context!11975 (t!379824 (exprs!6487 (Context!11975 (Cons!65985 r!7292 Nil!65985)))))))))))

(assert (= (and d!2130985 res!2772327) b!6782454))

(assert (= (and d!2130985 c!1260100) b!6782450))

(assert (= (and d!2130985 (not c!1260100)) b!6782452))

(assert (= (and b!6782452 c!1260101) b!6782451))

(assert (= (and b!6782452 (not c!1260101)) b!6782453))

(assert (= (or b!6782450 b!6782451) bm!615447))

(declare-fun m!7531062 () Bool)

(assert (=> b!6782450 m!7531062))

(declare-fun m!7531064 () Bool)

(assert (=> bm!615447 m!7531064))

(declare-fun m!7531066 () Bool)

(assert (=> b!6782454 m!7531066))

(assert (=> b!6780845 d!2130985))

(declare-fun e!4094252 () (InoxSet Context!11974))

(declare-fun b!6782455 () Bool)

(declare-fun call!615453 () (InoxSet Context!11974))

(assert (=> b!6782455 (= e!4094252 ((_ map or) call!615453 (derivationStepZipperUp!1757 (Context!11975 (t!379824 (exprs!6487 (Context!11975 (t!379824 (exprs!6487 lt!2444756)))))) (h!72432 s!2326))))))

(declare-fun d!2130987 () Bool)

(declare-fun c!1260102 () Bool)

(declare-fun e!4094253 () Bool)

(assert (=> d!2130987 (= c!1260102 e!4094253)))

(declare-fun res!2772328 () Bool)

(assert (=> d!2130987 (=> (not res!2772328) (not e!4094253))))

(assert (=> d!2130987 (= res!2772328 ((_ is Cons!65985) (exprs!6487 (Context!11975 (t!379824 (exprs!6487 lt!2444756))))))))

(assert (=> d!2130987 (= (derivationStepZipperUp!1757 (Context!11975 (t!379824 (exprs!6487 lt!2444756))) (h!72432 s!2326)) e!4094252)))

(declare-fun b!6782456 () Bool)

(declare-fun e!4094251 () (InoxSet Context!11974))

(assert (=> b!6782456 (= e!4094251 call!615453)))

(declare-fun b!6782457 () Bool)

(assert (=> b!6782457 (= e!4094252 e!4094251)))

(declare-fun c!1260103 () Bool)

(assert (=> b!6782457 (= c!1260103 ((_ is Cons!65985) (exprs!6487 (Context!11975 (t!379824 (exprs!6487 lt!2444756))))))))

(declare-fun bm!615448 () Bool)

(assert (=> bm!615448 (= call!615453 (derivationStepZipperDown!1831 (h!72433 (exprs!6487 (Context!11975 (t!379824 (exprs!6487 lt!2444756))))) (Context!11975 (t!379824 (exprs!6487 (Context!11975 (t!379824 (exprs!6487 lt!2444756)))))) (h!72432 s!2326)))))

(declare-fun b!6782458 () Bool)

(assert (=> b!6782458 (= e!4094251 ((as const (Array Context!11974 Bool)) false))))

(declare-fun b!6782459 () Bool)

(assert (=> b!6782459 (= e!4094253 (nullable!6582 (h!72433 (exprs!6487 (Context!11975 (t!379824 (exprs!6487 lt!2444756)))))))))

(assert (= (and d!2130987 res!2772328) b!6782459))

(assert (= (and d!2130987 c!1260102) b!6782455))

(assert (= (and d!2130987 (not c!1260102)) b!6782457))

(assert (= (and b!6782457 c!1260103) b!6782456))

(assert (= (and b!6782457 (not c!1260103)) b!6782458))

(assert (= (or b!6782455 b!6782456) bm!615448))

(declare-fun m!7531068 () Bool)

(assert (=> b!6782455 m!7531068))

(declare-fun m!7531070 () Bool)

(assert (=> bm!615448 m!7531070))

(declare-fun m!7531072 () Bool)

(assert (=> b!6782459 m!7531072))

(assert (=> b!6780861 d!2130987))

(assert (=> bm!615154 d!2130645))

(declare-fun bs!1806605 () Bool)

(declare-fun d!2130989 () Bool)

(assert (= bs!1806605 (and d!2130989 d!2130495)))

(declare-fun lambda!381789 () Int)

(assert (=> bs!1806605 (= lambda!381789 lambda!381711)))

(declare-fun bs!1806606 () Bool)

(assert (= bs!1806606 (and d!2130989 d!2130805)))

(assert (=> bs!1806606 (= lambda!381789 lambda!381759)))

(declare-fun bs!1806607 () Bool)

(assert (= bs!1806607 (and d!2130989 d!2130895)))

(assert (=> bs!1806607 (= lambda!381789 lambda!381776)))

(assert (=> d!2130989 (= (nullableZipper!2309 lt!2444760) (exists!2724 lt!2444760 lambda!381789))))

(declare-fun bs!1806608 () Bool)

(assert (= bs!1806608 d!2130989))

(declare-fun m!7531074 () Bool)

(assert (=> bs!1806608 m!7531074))

(assert (=> b!6781117 d!2130989))

(declare-fun call!615454 () (InoxSet Context!11974))

(declare-fun e!4094255 () (InoxSet Context!11974))

(declare-fun b!6782460 () Bool)

(assert (=> b!6782460 (= e!4094255 ((_ map or) call!615454 (derivationStepZipperUp!1757 (Context!11975 (t!379824 (exprs!6487 (Context!11975 (t!379824 (exprs!6487 (h!72434 zl!343))))))) (h!72432 s!2326))))))

(declare-fun d!2130991 () Bool)

(declare-fun c!1260104 () Bool)

(declare-fun e!4094256 () Bool)

(assert (=> d!2130991 (= c!1260104 e!4094256)))

(declare-fun res!2772329 () Bool)

(assert (=> d!2130991 (=> (not res!2772329) (not e!4094256))))

(assert (=> d!2130991 (= res!2772329 ((_ is Cons!65985) (exprs!6487 (Context!11975 (t!379824 (exprs!6487 (h!72434 zl!343)))))))))

(assert (=> d!2130991 (= (derivationStepZipperUp!1757 (Context!11975 (t!379824 (exprs!6487 (h!72434 zl!343)))) (h!72432 s!2326)) e!4094255)))

(declare-fun b!6782461 () Bool)

(declare-fun e!4094254 () (InoxSet Context!11974))

(assert (=> b!6782461 (= e!4094254 call!615454)))

(declare-fun b!6782462 () Bool)

(assert (=> b!6782462 (= e!4094255 e!4094254)))

(declare-fun c!1260105 () Bool)

(assert (=> b!6782462 (= c!1260105 ((_ is Cons!65985) (exprs!6487 (Context!11975 (t!379824 (exprs!6487 (h!72434 zl!343)))))))))

(declare-fun bm!615449 () Bool)

(assert (=> bm!615449 (= call!615454 (derivationStepZipperDown!1831 (h!72433 (exprs!6487 (Context!11975 (t!379824 (exprs!6487 (h!72434 zl!343)))))) (Context!11975 (t!379824 (exprs!6487 (Context!11975 (t!379824 (exprs!6487 (h!72434 zl!343))))))) (h!72432 s!2326)))))

(declare-fun b!6782463 () Bool)

(assert (=> b!6782463 (= e!4094254 ((as const (Array Context!11974 Bool)) false))))

(declare-fun b!6782464 () Bool)

(assert (=> b!6782464 (= e!4094256 (nullable!6582 (h!72433 (exprs!6487 (Context!11975 (t!379824 (exprs!6487 (h!72434 zl!343))))))))))

(assert (= (and d!2130991 res!2772329) b!6782464))

(assert (= (and d!2130991 c!1260104) b!6782460))

(assert (= (and d!2130991 (not c!1260104)) b!6782462))

(assert (= (and b!6782462 c!1260105) b!6782461))

(assert (= (and b!6782462 (not c!1260105)) b!6782463))

(assert (= (or b!6782460 b!6782461) bm!615449))

(declare-fun m!7531076 () Bool)

(assert (=> b!6782460 m!7531076))

(declare-fun m!7531078 () Bool)

(assert (=> bm!615449 m!7531078))

(declare-fun m!7531080 () Bool)

(assert (=> b!6782464 m!7531080))

(assert (=> b!6780398 d!2130991))

(declare-fun d!2130993 () Bool)

(declare-fun c!1260108 () Bool)

(assert (=> d!2130993 (= c!1260108 ((_ is Nil!65984) lt!2444791))))

(declare-fun e!4094259 () (InoxSet C!33476))

(assert (=> d!2130993 (= (content!12850 lt!2444791) e!4094259)))

(declare-fun b!6782469 () Bool)

(assert (=> b!6782469 (= e!4094259 ((as const (Array C!33476 Bool)) false))))

(declare-fun b!6782470 () Bool)

(assert (=> b!6782470 (= e!4094259 ((_ map or) (store ((as const (Array C!33476 Bool)) false) (h!72432 lt!2444791) true) (content!12850 (t!379823 lt!2444791))))))

(assert (= (and d!2130993 c!1260108) b!6782469))

(assert (= (and d!2130993 (not c!1260108)) b!6782470))

(declare-fun m!7531082 () Bool)

(assert (=> b!6782470 m!7531082))

(declare-fun m!7531084 () Bool)

(assert (=> b!6782470 m!7531084))

(assert (=> d!2130151 d!2130993))

(declare-fun d!2130995 () Bool)

(declare-fun c!1260109 () Bool)

(assert (=> d!2130995 (= c!1260109 ((_ is Nil!65984) (_1!36881 lt!2444761)))))

(declare-fun e!4094260 () (InoxSet C!33476))

(assert (=> d!2130995 (= (content!12850 (_1!36881 lt!2444761)) e!4094260)))

(declare-fun b!6782471 () Bool)

(assert (=> b!6782471 (= e!4094260 ((as const (Array C!33476 Bool)) false))))

(declare-fun b!6782472 () Bool)

(assert (=> b!6782472 (= e!4094260 ((_ map or) (store ((as const (Array C!33476 Bool)) false) (h!72432 (_1!36881 lt!2444761)) true) (content!12850 (t!379823 (_1!36881 lt!2444761)))))))

(assert (= (and d!2130995 c!1260109) b!6782471))

(assert (= (and d!2130995 (not c!1260109)) b!6782472))

(declare-fun m!7531086 () Bool)

(assert (=> b!6782472 m!7531086))

(assert (=> b!6782472 m!7529944))

(assert (=> d!2130151 d!2130995))

(declare-fun d!2130997 () Bool)

(declare-fun c!1260110 () Bool)

(assert (=> d!2130997 (= c!1260110 ((_ is Nil!65984) (_2!36881 lt!2444761)))))

(declare-fun e!4094261 () (InoxSet C!33476))

(assert (=> d!2130997 (= (content!12850 (_2!36881 lt!2444761)) e!4094261)))

(declare-fun b!6782473 () Bool)

(assert (=> b!6782473 (= e!4094261 ((as const (Array C!33476 Bool)) false))))

(declare-fun b!6782474 () Bool)

(assert (=> b!6782474 (= e!4094261 ((_ map or) (store ((as const (Array C!33476 Bool)) false) (h!72432 (_2!36881 lt!2444761)) true) (content!12850 (t!379823 (_2!36881 lt!2444761)))))))

(assert (= (and d!2130997 c!1260110) b!6782473))

(assert (= (and d!2130997 (not c!1260110)) b!6782474))

(declare-fun m!7531088 () Bool)

(assert (=> b!6782474 m!7531088))

(declare-fun m!7531090 () Bool)

(assert (=> b!6782474 m!7531090))

(assert (=> d!2130151 d!2130997))

(declare-fun b!6782475 () Bool)

(declare-fun e!4094267 () (InoxSet Context!11974))

(declare-fun e!4094265 () (InoxSet Context!11974))

(assert (=> b!6782475 (= e!4094267 e!4094265)))

(declare-fun c!1260111 () Bool)

(assert (=> b!6782475 (= c!1260111 ((_ is Concat!25448) (ite c!1259673 (regOne!33719 (reg!16932 r!7292)) (regOne!33718 (reg!16932 r!7292)))))))

(declare-fun bm!615450 () Bool)

(declare-fun call!615459 () (InoxSet Context!11974))

(declare-fun call!615455 () (InoxSet Context!11974))

(assert (=> bm!615450 (= call!615459 call!615455)))

(declare-fun b!6782476 () Bool)

(declare-fun e!4094266 () Bool)

(assert (=> b!6782476 (= e!4094266 (nullable!6582 (regOne!33718 (ite c!1259673 (regOne!33719 (reg!16932 r!7292)) (regOne!33718 (reg!16932 r!7292))))))))

(declare-fun b!6782477 () Bool)

(declare-fun call!615456 () (InoxSet Context!11974))

(assert (=> b!6782477 (= e!4094267 ((_ map or) call!615456 call!615459))))

(declare-fun b!6782478 () Bool)

(declare-fun e!4094262 () (InoxSet Context!11974))

(assert (=> b!6782478 (= e!4094262 ((_ map or) call!615456 call!615455))))

(declare-fun b!6782479 () Bool)

(declare-fun e!4094264 () (InoxSet Context!11974))

(assert (=> b!6782479 (= e!4094264 (store ((as const (Array Context!11974 Bool)) false) (ite c!1259673 lt!2444770 (Context!11975 call!615182)) true))))

(declare-fun c!1260112 () Bool)

(declare-fun bm!615451 () Bool)

(declare-fun call!615458 () List!66109)

(assert (=> bm!615451 (= call!615458 ($colon$colon!2412 (exprs!6487 (ite c!1259673 lt!2444770 (Context!11975 call!615182))) (ite (or c!1260112 c!1260111) (regTwo!33718 (ite c!1259673 (regOne!33719 (reg!16932 r!7292)) (regOne!33718 (reg!16932 r!7292)))) (ite c!1259673 (regOne!33719 (reg!16932 r!7292)) (regOne!33718 (reg!16932 r!7292))))))))

(declare-fun b!6782480 () Bool)

(assert (=> b!6782480 (= c!1260112 e!4094266)))

(declare-fun res!2772330 () Bool)

(assert (=> b!6782480 (=> (not res!2772330) (not e!4094266))))

(assert (=> b!6782480 (= res!2772330 ((_ is Concat!25448) (ite c!1259673 (regOne!33719 (reg!16932 r!7292)) (regOne!33718 (reg!16932 r!7292)))))))

(assert (=> b!6782480 (= e!4094262 e!4094267)))

(declare-fun call!615460 () List!66109)

(declare-fun bm!615452 () Bool)

(declare-fun c!1260113 () Bool)

(assert (=> bm!615452 (= call!615455 (derivationStepZipperDown!1831 (ite c!1260113 (regTwo!33719 (ite c!1259673 (regOne!33719 (reg!16932 r!7292)) (regOne!33718 (reg!16932 r!7292)))) (ite c!1260112 (regTwo!33718 (ite c!1259673 (regOne!33719 (reg!16932 r!7292)) (regOne!33718 (reg!16932 r!7292)))) (ite c!1260111 (regOne!33718 (ite c!1259673 (regOne!33719 (reg!16932 r!7292)) (regOne!33718 (reg!16932 r!7292)))) (reg!16932 (ite c!1259673 (regOne!33719 (reg!16932 r!7292)) (regOne!33718 (reg!16932 r!7292))))))) (ite (or c!1260113 c!1260112) (ite c!1259673 lt!2444770 (Context!11975 call!615182)) (Context!11975 call!615460)) (h!72432 s!2326)))))

(declare-fun bm!615453 () Bool)

(assert (=> bm!615453 (= call!615456 (derivationStepZipperDown!1831 (ite c!1260113 (regOne!33719 (ite c!1259673 (regOne!33719 (reg!16932 r!7292)) (regOne!33718 (reg!16932 r!7292)))) (regOne!33718 (ite c!1259673 (regOne!33719 (reg!16932 r!7292)) (regOne!33718 (reg!16932 r!7292))))) (ite c!1260113 (ite c!1259673 lt!2444770 (Context!11975 call!615182)) (Context!11975 call!615458)) (h!72432 s!2326)))))

(declare-fun b!6782481 () Bool)

(declare-fun call!615457 () (InoxSet Context!11974))

(assert (=> b!6782481 (= e!4094265 call!615457)))

(declare-fun d!2130999 () Bool)

(declare-fun c!1260114 () Bool)

(assert (=> d!2130999 (= c!1260114 (and ((_ is ElementMatch!16603) (ite c!1259673 (regOne!33719 (reg!16932 r!7292)) (regOne!33718 (reg!16932 r!7292)))) (= (c!1259507 (ite c!1259673 (regOne!33719 (reg!16932 r!7292)) (regOne!33718 (reg!16932 r!7292)))) (h!72432 s!2326))))))

(assert (=> d!2130999 (= (derivationStepZipperDown!1831 (ite c!1259673 (regOne!33719 (reg!16932 r!7292)) (regOne!33718 (reg!16932 r!7292))) (ite c!1259673 lt!2444770 (Context!11975 call!615182)) (h!72432 s!2326)) e!4094264)))

(declare-fun bm!615454 () Bool)

(assert (=> bm!615454 (= call!615457 call!615459)))

(declare-fun b!6782482 () Bool)

(declare-fun e!4094263 () (InoxSet Context!11974))

(assert (=> b!6782482 (= e!4094263 ((as const (Array Context!11974 Bool)) false))))

(declare-fun b!6782483 () Bool)

(declare-fun c!1260115 () Bool)

(assert (=> b!6782483 (= c!1260115 ((_ is Star!16603) (ite c!1259673 (regOne!33719 (reg!16932 r!7292)) (regOne!33718 (reg!16932 r!7292)))))))

(assert (=> b!6782483 (= e!4094265 e!4094263)))

(declare-fun bm!615455 () Bool)

(assert (=> bm!615455 (= call!615460 call!615458)))

(declare-fun b!6782484 () Bool)

(assert (=> b!6782484 (= e!4094264 e!4094262)))

(assert (=> b!6782484 (= c!1260113 ((_ is Union!16603) (ite c!1259673 (regOne!33719 (reg!16932 r!7292)) (regOne!33718 (reg!16932 r!7292)))))))

(declare-fun b!6782485 () Bool)

(assert (=> b!6782485 (= e!4094263 call!615457)))

(assert (= (and d!2130999 c!1260114) b!6782479))

(assert (= (and d!2130999 (not c!1260114)) b!6782484))

(assert (= (and b!6782484 c!1260113) b!6782478))

(assert (= (and b!6782484 (not c!1260113)) b!6782480))

(assert (= (and b!6782480 res!2772330) b!6782476))

(assert (= (and b!6782480 c!1260112) b!6782477))

(assert (= (and b!6782480 (not c!1260112)) b!6782475))

(assert (= (and b!6782475 c!1260111) b!6782481))

(assert (= (and b!6782475 (not c!1260111)) b!6782483))

(assert (= (and b!6782483 c!1260115) b!6782485))

(assert (= (and b!6782483 (not c!1260115)) b!6782482))

(assert (= (or b!6782481 b!6782485) bm!615455))

(assert (= (or b!6782481 b!6782485) bm!615454))

(assert (= (or b!6782477 bm!615455) bm!615451))

(assert (= (or b!6782477 bm!615454) bm!615450))

(assert (= (or b!6782478 bm!615450) bm!615452))

(assert (= (or b!6782478 b!6782477) bm!615453))

(declare-fun m!7531092 () Bool)

(assert (=> b!6782476 m!7531092))

(declare-fun m!7531094 () Bool)

(assert (=> bm!615451 m!7531094))

(declare-fun m!7531096 () Bool)

(assert (=> bm!615453 m!7531096))

(declare-fun m!7531098 () Bool)

(assert (=> b!6782479 m!7531098))

(declare-fun m!7531100 () Bool)

(assert (=> bm!615452 m!7531100))

(assert (=> bm!615177 d!2130999))

(assert (=> b!6781148 d!2130523))

(declare-fun d!2131001 () Bool)

(declare-fun res!2772333 () Bool)

(declare-fun e!4094269 () Bool)

(assert (=> d!2131001 (=> res!2772333 e!4094269)))

(assert (=> d!2131001 (= res!2772333 ((_ is ElementMatch!16603) (ite c!1259682 (reg!16932 r!7292) (ite c!1259683 (regTwo!33719 r!7292) (regTwo!33718 r!7292)))))))

(assert (=> d!2131001 (= (validRegex!8339 (ite c!1259682 (reg!16932 r!7292) (ite c!1259683 (regTwo!33719 r!7292) (regTwo!33718 r!7292)))) e!4094269)))

(declare-fun b!6782486 () Bool)

(declare-fun e!4094270 () Bool)

(assert (=> b!6782486 (= e!4094269 e!4094270)))

(declare-fun c!1260116 () Bool)

(assert (=> b!6782486 (= c!1260116 ((_ is Star!16603) (ite c!1259682 (reg!16932 r!7292) (ite c!1259683 (regTwo!33719 r!7292) (regTwo!33718 r!7292)))))))

(declare-fun bm!615456 () Bool)

(declare-fun call!615463 () Bool)

(declare-fun call!615461 () Bool)

(assert (=> bm!615456 (= call!615463 call!615461)))

(declare-fun b!6782487 () Bool)

(declare-fun e!4094274 () Bool)

(assert (=> b!6782487 (= e!4094270 e!4094274)))

(declare-fun c!1260117 () Bool)

(assert (=> b!6782487 (= c!1260117 ((_ is Union!16603) (ite c!1259682 (reg!16932 r!7292) (ite c!1259683 (regTwo!33719 r!7292) (regTwo!33718 r!7292)))))))

(declare-fun bm!615457 () Bool)

(assert (=> bm!615457 (= call!615461 (validRegex!8339 (ite c!1260116 (reg!16932 (ite c!1259682 (reg!16932 r!7292) (ite c!1259683 (regTwo!33719 r!7292) (regTwo!33718 r!7292)))) (ite c!1260117 (regTwo!33719 (ite c!1259682 (reg!16932 r!7292) (ite c!1259683 (regTwo!33719 r!7292) (regTwo!33718 r!7292)))) (regTwo!33718 (ite c!1259682 (reg!16932 r!7292) (ite c!1259683 (regTwo!33719 r!7292) (regTwo!33718 r!7292))))))))))

(declare-fun b!6782488 () Bool)

(declare-fun res!2772331 () Bool)

(declare-fun e!4094273 () Bool)

(assert (=> b!6782488 (=> res!2772331 e!4094273)))

(assert (=> b!6782488 (= res!2772331 (not ((_ is Concat!25448) (ite c!1259682 (reg!16932 r!7292) (ite c!1259683 (regTwo!33719 r!7292) (regTwo!33718 r!7292))))))))

(assert (=> b!6782488 (= e!4094274 e!4094273)))

(declare-fun b!6782489 () Bool)

(declare-fun e!4094271 () Bool)

(assert (=> b!6782489 (= e!4094271 call!615463)))

(declare-fun bm!615458 () Bool)

(declare-fun call!615462 () Bool)

(assert (=> bm!615458 (= call!615462 (validRegex!8339 (ite c!1260117 (regOne!33719 (ite c!1259682 (reg!16932 r!7292) (ite c!1259683 (regTwo!33719 r!7292) (regTwo!33718 r!7292)))) (regOne!33718 (ite c!1259682 (reg!16932 r!7292) (ite c!1259683 (regTwo!33719 r!7292) (regTwo!33718 r!7292)))))))))

(declare-fun b!6782490 () Bool)

(declare-fun e!4094268 () Bool)

(assert (=> b!6782490 (= e!4094270 e!4094268)))

(declare-fun res!2772335 () Bool)

(assert (=> b!6782490 (= res!2772335 (not (nullable!6582 (reg!16932 (ite c!1259682 (reg!16932 r!7292) (ite c!1259683 (regTwo!33719 r!7292) (regTwo!33718 r!7292)))))))))

(assert (=> b!6782490 (=> (not res!2772335) (not e!4094268))))

(declare-fun b!6782491 () Bool)

(assert (=> b!6782491 (= e!4094273 e!4094271)))

(declare-fun res!2772334 () Bool)

(assert (=> b!6782491 (=> (not res!2772334) (not e!4094271))))

(assert (=> b!6782491 (= res!2772334 call!615462)))

(declare-fun b!6782492 () Bool)

(declare-fun e!4094272 () Bool)

(assert (=> b!6782492 (= e!4094272 call!615463)))

(declare-fun b!6782493 () Bool)

(assert (=> b!6782493 (= e!4094268 call!615461)))

(declare-fun b!6782494 () Bool)

(declare-fun res!2772332 () Bool)

(assert (=> b!6782494 (=> (not res!2772332) (not e!4094272))))

(assert (=> b!6782494 (= res!2772332 call!615462)))

(assert (=> b!6782494 (= e!4094274 e!4094272)))

(assert (= (and d!2131001 (not res!2772333)) b!6782486))

(assert (= (and b!6782486 c!1260116) b!6782490))

(assert (= (and b!6782486 (not c!1260116)) b!6782487))

(assert (= (and b!6782490 res!2772335) b!6782493))

(assert (= (and b!6782487 c!1260117) b!6782494))

(assert (= (and b!6782487 (not c!1260117)) b!6782488))

(assert (= (and b!6782494 res!2772332) b!6782492))

(assert (= (and b!6782488 (not res!2772331)) b!6782491))

(assert (= (and b!6782491 res!2772334) b!6782489))

(assert (= (or b!6782492 b!6782489) bm!615456))

(assert (= (or b!6782494 b!6782491) bm!615458))

(assert (= (or b!6782493 bm!615456) bm!615457))

(declare-fun m!7531102 () Bool)

(assert (=> bm!615457 m!7531102))

(declare-fun m!7531104 () Bool)

(assert (=> bm!615458 m!7531104))

(declare-fun m!7531106 () Bool)

(assert (=> b!6782490 m!7531106))

(assert (=> bm!615188 d!2131001))

(assert (=> b!6780773 d!2130639))

(assert (=> b!6780773 d!2130525))

(declare-fun e!4094276 () (InoxSet Context!11974))

(declare-fun call!615464 () (InoxSet Context!11974))

(declare-fun b!6782495 () Bool)

(assert (=> b!6782495 (= e!4094276 ((_ map or) call!615464 (derivationStepZipperUp!1757 (Context!11975 (t!379824 (exprs!6487 (Context!11975 (t!379824 (exprs!6487 lt!2444770)))))) (h!72432 s!2326))))))

(declare-fun d!2131003 () Bool)

(declare-fun c!1260118 () Bool)

(declare-fun e!4094277 () Bool)

(assert (=> d!2131003 (= c!1260118 e!4094277)))

(declare-fun res!2772336 () Bool)

(assert (=> d!2131003 (=> (not res!2772336) (not e!4094277))))

(assert (=> d!2131003 (= res!2772336 ((_ is Cons!65985) (exprs!6487 (Context!11975 (t!379824 (exprs!6487 lt!2444770))))))))

(assert (=> d!2131003 (= (derivationStepZipperUp!1757 (Context!11975 (t!379824 (exprs!6487 lt!2444770))) (h!72432 s!2326)) e!4094276)))

(declare-fun b!6782496 () Bool)

(declare-fun e!4094275 () (InoxSet Context!11974))

(assert (=> b!6782496 (= e!4094275 call!615464)))

(declare-fun b!6782497 () Bool)

(assert (=> b!6782497 (= e!4094276 e!4094275)))

(declare-fun c!1260119 () Bool)

(assert (=> b!6782497 (= c!1260119 ((_ is Cons!65985) (exprs!6487 (Context!11975 (t!379824 (exprs!6487 lt!2444770))))))))

(declare-fun bm!615459 () Bool)

(assert (=> bm!615459 (= call!615464 (derivationStepZipperDown!1831 (h!72433 (exprs!6487 (Context!11975 (t!379824 (exprs!6487 lt!2444770))))) (Context!11975 (t!379824 (exprs!6487 (Context!11975 (t!379824 (exprs!6487 lt!2444770)))))) (h!72432 s!2326)))))

(declare-fun b!6782498 () Bool)

(assert (=> b!6782498 (= e!4094275 ((as const (Array Context!11974 Bool)) false))))

(declare-fun b!6782499 () Bool)

(assert (=> b!6782499 (= e!4094277 (nullable!6582 (h!72433 (exprs!6487 (Context!11975 (t!379824 (exprs!6487 lt!2444770)))))))))

(assert (= (and d!2131003 res!2772336) b!6782499))

(assert (= (and d!2131003 c!1260118) b!6782495))

(assert (= (and d!2131003 (not c!1260118)) b!6782497))

(assert (= (and b!6782497 c!1260119) b!6782496))

(assert (= (and b!6782497 (not c!1260119)) b!6782498))

(assert (= (or b!6782495 b!6782496) bm!615459))

(declare-fun m!7531108 () Bool)

(assert (=> b!6782495 m!7531108))

(declare-fun m!7531110 () Bool)

(assert (=> bm!615459 m!7531110))

(declare-fun m!7531112 () Bool)

(assert (=> b!6782499 m!7531112))

(assert (=> b!6781126 d!2131003))

(declare-fun d!2131005 () Bool)

(declare-fun e!4094278 () Bool)

(assert (=> d!2131005 e!4094278))

(declare-fun res!2772337 () Bool)

(assert (=> d!2131005 (=> (not res!2772337) (not e!4094278))))

(declare-fun lt!2444973 () List!66108)

(assert (=> d!2131005 (= res!2772337 (= (content!12850 lt!2444973) ((_ map or) (content!12850 (++!14757 Nil!65984 (Cons!65984 (h!72432 s!2326) Nil!65984))) (content!12850 (t!379823 s!2326)))))))

(declare-fun e!4094279 () List!66108)

(assert (=> d!2131005 (= lt!2444973 e!4094279)))

(declare-fun c!1260120 () Bool)

(assert (=> d!2131005 (= c!1260120 ((_ is Nil!65984) (++!14757 Nil!65984 (Cons!65984 (h!72432 s!2326) Nil!65984))))))

(assert (=> d!2131005 (= (++!14757 (++!14757 Nil!65984 (Cons!65984 (h!72432 s!2326) Nil!65984)) (t!379823 s!2326)) lt!2444973)))

(declare-fun b!6782502 () Bool)

(declare-fun res!2772338 () Bool)

(assert (=> b!6782502 (=> (not res!2772338) (not e!4094278))))

(assert (=> b!6782502 (= res!2772338 (= (size!40636 lt!2444973) (+ (size!40636 (++!14757 Nil!65984 (Cons!65984 (h!72432 s!2326) Nil!65984))) (size!40636 (t!379823 s!2326)))))))

(declare-fun b!6782503 () Bool)

(assert (=> b!6782503 (= e!4094278 (or (not (= (t!379823 s!2326) Nil!65984)) (= lt!2444973 (++!14757 Nil!65984 (Cons!65984 (h!72432 s!2326) Nil!65984)))))))

(declare-fun b!6782500 () Bool)

(assert (=> b!6782500 (= e!4094279 (t!379823 s!2326))))

(declare-fun b!6782501 () Bool)

(assert (=> b!6782501 (= e!4094279 (Cons!65984 (h!72432 (++!14757 Nil!65984 (Cons!65984 (h!72432 s!2326) Nil!65984))) (++!14757 (t!379823 (++!14757 Nil!65984 (Cons!65984 (h!72432 s!2326) Nil!65984))) (t!379823 s!2326))))))

(assert (= (and d!2131005 c!1260120) b!6782500))

(assert (= (and d!2131005 (not c!1260120)) b!6782501))

(assert (= (and d!2131005 res!2772337) b!6782502))

(assert (= (and b!6782502 res!2772338) b!6782503))

(declare-fun m!7531114 () Bool)

(assert (=> d!2131005 m!7531114))

(assert (=> d!2131005 m!7529684))

(declare-fun m!7531116 () Bool)

(assert (=> d!2131005 m!7531116))

(declare-fun m!7531118 () Bool)

(assert (=> d!2131005 m!7531118))

(declare-fun m!7531120 () Bool)

(assert (=> b!6782502 m!7531120))

(assert (=> b!6782502 m!7529684))

(declare-fun m!7531122 () Bool)

(assert (=> b!6782502 m!7531122))

(declare-fun m!7531124 () Bool)

(assert (=> b!6782502 m!7531124))

(declare-fun m!7531126 () Bool)

(assert (=> b!6782501 m!7531126))

(assert (=> b!6781045 d!2131005))

(declare-fun d!2131007 () Bool)

(declare-fun e!4094280 () Bool)

(assert (=> d!2131007 e!4094280))

(declare-fun res!2772339 () Bool)

(assert (=> d!2131007 (=> (not res!2772339) (not e!4094280))))

(declare-fun lt!2444974 () List!66108)

(assert (=> d!2131007 (= res!2772339 (= (content!12850 lt!2444974) ((_ map or) (content!12850 Nil!65984) (content!12850 (Cons!65984 (h!72432 s!2326) Nil!65984)))))))

(declare-fun e!4094281 () List!66108)

(assert (=> d!2131007 (= lt!2444974 e!4094281)))

(declare-fun c!1260121 () Bool)

(assert (=> d!2131007 (= c!1260121 ((_ is Nil!65984) Nil!65984))))

(assert (=> d!2131007 (= (++!14757 Nil!65984 (Cons!65984 (h!72432 s!2326) Nil!65984)) lt!2444974)))

(declare-fun b!6782506 () Bool)

(declare-fun res!2772340 () Bool)

(assert (=> b!6782506 (=> (not res!2772340) (not e!4094280))))

(assert (=> b!6782506 (= res!2772340 (= (size!40636 lt!2444974) (+ (size!40636 Nil!65984) (size!40636 (Cons!65984 (h!72432 s!2326) Nil!65984)))))))

(declare-fun b!6782507 () Bool)

(assert (=> b!6782507 (= e!4094280 (or (not (= (Cons!65984 (h!72432 s!2326) Nil!65984) Nil!65984)) (= lt!2444974 Nil!65984)))))

(declare-fun b!6782504 () Bool)

(assert (=> b!6782504 (= e!4094281 (Cons!65984 (h!72432 s!2326) Nil!65984))))

(declare-fun b!6782505 () Bool)

(assert (=> b!6782505 (= e!4094281 (Cons!65984 (h!72432 Nil!65984) (++!14757 (t!379823 Nil!65984) (Cons!65984 (h!72432 s!2326) Nil!65984))))))

(assert (= (and d!2131007 c!1260121) b!6782504))

(assert (= (and d!2131007 (not c!1260121)) b!6782505))

(assert (= (and d!2131007 res!2772339) b!6782506))

(assert (= (and b!6782506 res!2772340) b!6782507))

(declare-fun m!7531128 () Bool)

(assert (=> d!2131007 m!7531128))

(declare-fun m!7531130 () Bool)

(assert (=> d!2131007 m!7531130))

(declare-fun m!7531132 () Bool)

(assert (=> d!2131007 m!7531132))

(declare-fun m!7531134 () Bool)

(assert (=> b!6782506 m!7531134))

(declare-fun m!7531136 () Bool)

(assert (=> b!6782506 m!7531136))

(declare-fun m!7531138 () Bool)

(assert (=> b!6782506 m!7531138))

(declare-fun m!7531140 () Bool)

(assert (=> b!6782505 m!7531140))

(assert (=> b!6781045 d!2131007))

(declare-fun d!2131009 () Bool)

(assert (=> d!2131009 (= (++!14757 (++!14757 Nil!65984 (Cons!65984 (h!72432 s!2326) Nil!65984)) (t!379823 s!2326)) s!2326)))

(declare-fun lt!2444977 () Unit!159897)

(declare-fun choose!50509 (List!66108 C!33476 List!66108 List!66108) Unit!159897)

(assert (=> d!2131009 (= lt!2444977 (choose!50509 Nil!65984 (h!72432 s!2326) (t!379823 s!2326) s!2326))))

(assert (=> d!2131009 (= (++!14757 Nil!65984 (Cons!65984 (h!72432 s!2326) (t!379823 s!2326))) s!2326)))

(assert (=> d!2131009 (= (lemmaMoveElementToOtherListKeepsConcatEq!2724 Nil!65984 (h!72432 s!2326) (t!379823 s!2326) s!2326) lt!2444977)))

(declare-fun bs!1806609 () Bool)

(assert (= bs!1806609 d!2131009))

(assert (=> bs!1806609 m!7529684))

(assert (=> bs!1806609 m!7529684))

(assert (=> bs!1806609 m!7529686))

(declare-fun m!7531142 () Bool)

(assert (=> bs!1806609 m!7531142))

(declare-fun m!7531144 () Bool)

(assert (=> bs!1806609 m!7531144))

(assert (=> b!6781045 d!2131009))

(declare-fun b!6782508 () Bool)

(declare-fun e!4094285 () Bool)

(assert (=> b!6782508 (= e!4094285 (matchR!8786 r!7292 (t!379823 s!2326)))))

(declare-fun b!6782509 () Bool)

(declare-fun e!4094286 () Bool)

(declare-fun lt!2444978 () Option!16490)

(assert (=> b!6782509 (= e!4094286 (not (isDefined!13193 lt!2444978)))))

(declare-fun b!6782510 () Bool)

(declare-fun e!4094284 () Option!16490)

(declare-fun e!4094283 () Option!16490)

(assert (=> b!6782510 (= e!4094284 e!4094283)))

(declare-fun c!1260122 () Bool)

(assert (=> b!6782510 (= c!1260122 ((_ is Nil!65984) (t!379823 s!2326)))))

(declare-fun b!6782511 () Bool)

(declare-fun e!4094282 () Bool)

(assert (=> b!6782511 (= e!4094282 (= (++!14757 (_1!36881 (get!22974 lt!2444978)) (_2!36881 (get!22974 lt!2444978))) s!2326))))

(declare-fun b!6782512 () Bool)

(assert (=> b!6782512 (= e!4094284 (Some!16489 (tuple2!67157 (++!14757 Nil!65984 (Cons!65984 (h!72432 s!2326) Nil!65984)) (t!379823 s!2326))))))

(declare-fun b!6782513 () Bool)

(declare-fun res!2772344 () Bool)

(assert (=> b!6782513 (=> (not res!2772344) (not e!4094282))))

(assert (=> b!6782513 (= res!2772344 (matchR!8786 r!7292 (_2!36881 (get!22974 lt!2444978))))))

(declare-fun b!6782514 () Bool)

(declare-fun res!2772342 () Bool)

(assert (=> b!6782514 (=> (not res!2772342) (not e!4094282))))

(assert (=> b!6782514 (= res!2772342 (matchR!8786 (reg!16932 r!7292) (_1!36881 (get!22974 lt!2444978))))))

(declare-fun b!6782515 () Bool)

(declare-fun lt!2444979 () Unit!159897)

(declare-fun lt!2444980 () Unit!159897)

(assert (=> b!6782515 (= lt!2444979 lt!2444980)))

(assert (=> b!6782515 (= (++!14757 (++!14757 (++!14757 Nil!65984 (Cons!65984 (h!72432 s!2326) Nil!65984)) (Cons!65984 (h!72432 (t!379823 s!2326)) Nil!65984)) (t!379823 (t!379823 s!2326))) s!2326)))

(assert (=> b!6782515 (= lt!2444980 (lemmaMoveElementToOtherListKeepsConcatEq!2724 (++!14757 Nil!65984 (Cons!65984 (h!72432 s!2326) Nil!65984)) (h!72432 (t!379823 s!2326)) (t!379823 (t!379823 s!2326)) s!2326))))

(assert (=> b!6782515 (= e!4094283 (findConcatSeparation!2904 (reg!16932 r!7292) r!7292 (++!14757 (++!14757 Nil!65984 (Cons!65984 (h!72432 s!2326) Nil!65984)) (Cons!65984 (h!72432 (t!379823 s!2326)) Nil!65984)) (t!379823 (t!379823 s!2326)) s!2326))))

(declare-fun b!6782516 () Bool)

(assert (=> b!6782516 (= e!4094283 None!16489)))

(declare-fun d!2131011 () Bool)

(assert (=> d!2131011 e!4094286))

(declare-fun res!2772341 () Bool)

(assert (=> d!2131011 (=> res!2772341 e!4094286)))

(assert (=> d!2131011 (= res!2772341 e!4094282)))

(declare-fun res!2772345 () Bool)

(assert (=> d!2131011 (=> (not res!2772345) (not e!4094282))))

(assert (=> d!2131011 (= res!2772345 (isDefined!13193 lt!2444978))))

(assert (=> d!2131011 (= lt!2444978 e!4094284)))

(declare-fun c!1260123 () Bool)

(assert (=> d!2131011 (= c!1260123 e!4094285)))

(declare-fun res!2772343 () Bool)

(assert (=> d!2131011 (=> (not res!2772343) (not e!4094285))))

(assert (=> d!2131011 (= res!2772343 (matchR!8786 (reg!16932 r!7292) (++!14757 Nil!65984 (Cons!65984 (h!72432 s!2326) Nil!65984))))))

(assert (=> d!2131011 (validRegex!8339 (reg!16932 r!7292))))

(assert (=> d!2131011 (= (findConcatSeparation!2904 (reg!16932 r!7292) r!7292 (++!14757 Nil!65984 (Cons!65984 (h!72432 s!2326) Nil!65984)) (t!379823 s!2326) s!2326) lt!2444978)))

(assert (= (and d!2131011 res!2772343) b!6782508))

(assert (= (and d!2131011 c!1260123) b!6782512))

(assert (= (and d!2131011 (not c!1260123)) b!6782510))

(assert (= (and b!6782510 c!1260122) b!6782516))

(assert (= (and b!6782510 (not c!1260122)) b!6782515))

(assert (= (and d!2131011 res!2772345) b!6782514))

(assert (= (and b!6782514 res!2772342) b!6782513))

(assert (= (and b!6782513 res!2772344) b!6782511))

(assert (= (and d!2131011 (not res!2772341)) b!6782509))

(declare-fun m!7531146 () Bool)

(assert (=> d!2131011 m!7531146))

(assert (=> d!2131011 m!7529684))

(declare-fun m!7531148 () Bool)

(assert (=> d!2131011 m!7531148))

(assert (=> d!2131011 m!7529556))

(assert (=> b!6782509 m!7531146))

(assert (=> b!6782515 m!7529684))

(declare-fun m!7531150 () Bool)

(assert (=> b!6782515 m!7531150))

(assert (=> b!6782515 m!7531150))

(declare-fun m!7531152 () Bool)

(assert (=> b!6782515 m!7531152))

(assert (=> b!6782515 m!7529684))

(declare-fun m!7531154 () Bool)

(assert (=> b!6782515 m!7531154))

(assert (=> b!6782515 m!7531150))

(declare-fun m!7531156 () Bool)

(assert (=> b!6782515 m!7531156))

(declare-fun m!7531158 () Bool)

(assert (=> b!6782514 m!7531158))

(declare-fun m!7531160 () Bool)

(assert (=> b!6782514 m!7531160))

(declare-fun m!7531162 () Bool)

(assert (=> b!6782508 m!7531162))

(assert (=> b!6782513 m!7531158))

(declare-fun m!7531164 () Bool)

(assert (=> b!6782513 m!7531164))

(assert (=> b!6782511 m!7531158))

(declare-fun m!7531166 () Bool)

(assert (=> b!6782511 m!7531166))

(assert (=> b!6781045 d!2131011))

(declare-fun b!6782517 () Bool)

(declare-fun call!615465 () (InoxSet Context!11974))

(declare-fun e!4094288 () (InoxSet Context!11974))

(assert (=> b!6782517 (= e!4094288 ((_ map or) call!615465 (derivationStepZipperUp!1757 (Context!11975 (t!379824 (exprs!6487 (Context!11975 (t!379824 (exprs!6487 lt!2444766)))))) (h!72432 s!2326))))))

(declare-fun d!2131013 () Bool)

(declare-fun c!1260124 () Bool)

(declare-fun e!4094289 () Bool)

(assert (=> d!2131013 (= c!1260124 e!4094289)))

(declare-fun res!2772346 () Bool)

(assert (=> d!2131013 (=> (not res!2772346) (not e!4094289))))

(assert (=> d!2131013 (= res!2772346 ((_ is Cons!65985) (exprs!6487 (Context!11975 (t!379824 (exprs!6487 lt!2444766))))))))

(assert (=> d!2131013 (= (derivationStepZipperUp!1757 (Context!11975 (t!379824 (exprs!6487 lt!2444766))) (h!72432 s!2326)) e!4094288)))

(declare-fun b!6782518 () Bool)

(declare-fun e!4094287 () (InoxSet Context!11974))

(assert (=> b!6782518 (= e!4094287 call!615465)))

(declare-fun b!6782519 () Bool)

(assert (=> b!6782519 (= e!4094288 e!4094287)))

(declare-fun c!1260125 () Bool)

(assert (=> b!6782519 (= c!1260125 ((_ is Cons!65985) (exprs!6487 (Context!11975 (t!379824 (exprs!6487 lt!2444766))))))))

(declare-fun bm!615460 () Bool)

(assert (=> bm!615460 (= call!615465 (derivationStepZipperDown!1831 (h!72433 (exprs!6487 (Context!11975 (t!379824 (exprs!6487 lt!2444766))))) (Context!11975 (t!379824 (exprs!6487 (Context!11975 (t!379824 (exprs!6487 lt!2444766)))))) (h!72432 s!2326)))))

(declare-fun b!6782520 () Bool)

(assert (=> b!6782520 (= e!4094287 ((as const (Array Context!11974 Bool)) false))))

(declare-fun b!6782521 () Bool)

(assert (=> b!6782521 (= e!4094289 (nullable!6582 (h!72433 (exprs!6487 (Context!11975 (t!379824 (exprs!6487 lt!2444766)))))))))

(assert (= (and d!2131013 res!2772346) b!6782521))

(assert (= (and d!2131013 c!1260124) b!6782517))

(assert (= (and d!2131013 (not c!1260124)) b!6782519))

(assert (= (and b!6782519 c!1260125) b!6782518))

(assert (= (and b!6782519 (not c!1260125)) b!6782520))

(assert (= (or b!6782517 b!6782518) bm!615460))

(declare-fun m!7531168 () Bool)

(assert (=> b!6782517 m!7531168))

(declare-fun m!7531170 () Bool)

(assert (=> bm!615460 m!7531170))

(declare-fun m!7531172 () Bool)

(assert (=> b!6782521 m!7531172))

(assert (=> b!6781121 d!2131013))

(assert (=> b!6781163 d!2130799))

(assert (=> b!6781163 d!2130667))

(declare-fun d!2131015 () Bool)

(assert (=> d!2131015 (= (isEmpty!38347 (t!379824 (exprs!6487 (h!72434 zl!343)))) ((_ is Nil!65985) (t!379824 (exprs!6487 (h!72434 zl!343)))))))

(assert (=> b!6780549 d!2131015))

(assert (=> d!2130273 d!2130269))

(declare-fun d!2131017 () Bool)

(assert (=> d!2131017 (= (flatMap!2084 lt!2444757 lambda!381617) (dynLambda!26330 lambda!381617 lt!2444756))))

(assert (=> d!2131017 true))

(declare-fun _$13!4193 () Unit!159897)

(assert (=> d!2131017 (= (choose!50493 lt!2444757 lt!2444756 lambda!381617) _$13!4193)))

(declare-fun b_lambda!255395 () Bool)

(assert (=> (not b_lambda!255395) (not d!2131017)))

(declare-fun bs!1806610 () Bool)

(assert (= bs!1806610 d!2131017))

(assert (=> bs!1806610 m!7529054))

(assert (=> bs!1806610 m!7529512))

(assert (=> d!2130273 d!2131017))

(assert (=> b!6781159 d!2130545))

(assert (=> d!2130377 d!2130375))

(assert (=> d!2130377 d!2130373))

(declare-fun d!2131019 () Bool)

(assert (=> d!2131019 (= (matchR!8786 lt!2444765 s!2326) (matchRSpec!3704 lt!2444765 s!2326))))

(assert (=> d!2131019 true))

(declare-fun _$88!5574 () Unit!159897)

(assert (=> d!2131019 (= (choose!50498 lt!2444765 s!2326) _$88!5574)))

(declare-fun bs!1806611 () Bool)

(assert (= bs!1806611 d!2131019))

(assert (=> bs!1806611 m!7529094))

(assert (=> bs!1806611 m!7529092))

(assert (=> d!2130377 d!2131019))

(assert (=> d!2130377 d!2130625))

(declare-fun d!2131021 () Bool)

(declare-fun res!2772347 () Bool)

(declare-fun e!4094290 () Bool)

(assert (=> d!2131021 (=> res!2772347 e!4094290)))

(assert (=> d!2131021 (= res!2772347 ((_ is Nil!65985) (exprs!6487 (h!72434 zl!343))))))

(assert (=> d!2131021 (= (forall!15794 (exprs!6487 (h!72434 zl!343)) lambda!381668) e!4094290)))

(declare-fun b!6782522 () Bool)

(declare-fun e!4094291 () Bool)

(assert (=> b!6782522 (= e!4094290 e!4094291)))

(declare-fun res!2772348 () Bool)

(assert (=> b!6782522 (=> (not res!2772348) (not e!4094291))))

(assert (=> b!6782522 (= res!2772348 (dynLambda!26331 lambda!381668 (h!72433 (exprs!6487 (h!72434 zl!343)))))))

(declare-fun b!6782523 () Bool)

(assert (=> b!6782523 (= e!4094291 (forall!15794 (t!379824 (exprs!6487 (h!72434 zl!343))) lambda!381668))))

(assert (= (and d!2131021 (not res!2772347)) b!6782522))

(assert (= (and b!6782522 res!2772348) b!6782523))

(declare-fun b_lambda!255397 () Bool)

(assert (=> (not b_lambda!255397) (not b!6782522)))

(declare-fun m!7531174 () Bool)

(assert (=> b!6782522 m!7531174))

(declare-fun m!7531176 () Bool)

(assert (=> b!6782523 m!7531176))

(assert (=> d!2130261 d!2131021))

(declare-fun b!6782527 () Bool)

(declare-fun e!4094292 () Bool)

(declare-fun tp!1858122 () Bool)

(declare-fun tp!1858119 () Bool)

(assert (=> b!6782527 (= e!4094292 (and tp!1858122 tp!1858119))))

(declare-fun b!6782526 () Bool)

(declare-fun tp!1858118 () Bool)

(assert (=> b!6782526 (= e!4094292 tp!1858118)))

(declare-fun b!6782525 () Bool)

(declare-fun tp!1858120 () Bool)

(declare-fun tp!1858121 () Bool)

(assert (=> b!6782525 (= e!4094292 (and tp!1858120 tp!1858121))))

(declare-fun b!6782524 () Bool)

(assert (=> b!6782524 (= e!4094292 tp_is_empty!42459)))

(assert (=> b!6781214 (= tp!1857921 e!4094292)))

(assert (= (and b!6781214 ((_ is ElementMatch!16603) (h!72433 (exprs!6487 setElem!46377)))) b!6782524))

(assert (= (and b!6781214 ((_ is Concat!25448) (h!72433 (exprs!6487 setElem!46377)))) b!6782525))

(assert (= (and b!6781214 ((_ is Star!16603) (h!72433 (exprs!6487 setElem!46377)))) b!6782526))

(assert (= (and b!6781214 ((_ is Union!16603) (h!72433 (exprs!6487 setElem!46377)))) b!6782527))

(declare-fun b!6782528 () Bool)

(declare-fun e!4094293 () Bool)

(declare-fun tp!1858123 () Bool)

(declare-fun tp!1858124 () Bool)

(assert (=> b!6782528 (= e!4094293 (and tp!1858123 tp!1858124))))

(assert (=> b!6781214 (= tp!1857922 e!4094293)))

(assert (= (and b!6781214 ((_ is Cons!65985) (t!379824 (exprs!6487 setElem!46377)))) b!6782528))

(declare-fun b!6782532 () Bool)

(declare-fun e!4094294 () Bool)

(declare-fun tp!1858129 () Bool)

(declare-fun tp!1858126 () Bool)

(assert (=> b!6782532 (= e!4094294 (and tp!1858129 tp!1858126))))

(declare-fun b!6782531 () Bool)

(declare-fun tp!1858125 () Bool)

(assert (=> b!6782531 (= e!4094294 tp!1858125)))

(declare-fun b!6782530 () Bool)

(declare-fun tp!1858127 () Bool)

(declare-fun tp!1858128 () Bool)

(assert (=> b!6782530 (= e!4094294 (and tp!1858127 tp!1858128))))

(declare-fun b!6782529 () Bool)

(assert (=> b!6782529 (= e!4094294 tp_is_empty!42459)))

(assert (=> b!6781186 (= tp!1857891 e!4094294)))

(assert (= (and b!6781186 ((_ is ElementMatch!16603) (reg!16932 (regTwo!33718 r!7292)))) b!6782529))

(assert (= (and b!6781186 ((_ is Concat!25448) (reg!16932 (regTwo!33718 r!7292)))) b!6782530))

(assert (= (and b!6781186 ((_ is Star!16603) (reg!16932 (regTwo!33718 r!7292)))) b!6782531))

(assert (= (and b!6781186 ((_ is Union!16603) (reg!16932 (regTwo!33718 r!7292)))) b!6782532))

(declare-fun b!6782536 () Bool)

(declare-fun e!4094295 () Bool)

(declare-fun tp!1858134 () Bool)

(declare-fun tp!1858131 () Bool)

(assert (=> b!6782536 (= e!4094295 (and tp!1858134 tp!1858131))))

(declare-fun b!6782535 () Bool)

(declare-fun tp!1858130 () Bool)

(assert (=> b!6782535 (= e!4094295 tp!1858130)))

(declare-fun b!6782534 () Bool)

(declare-fun tp!1858132 () Bool)

(declare-fun tp!1858133 () Bool)

(assert (=> b!6782534 (= e!4094295 (and tp!1858132 tp!1858133))))

(declare-fun b!6782533 () Bool)

(assert (=> b!6782533 (= e!4094295 tp_is_empty!42459)))

(assert (=> b!6781187 (= tp!1857895 e!4094295)))

(assert (= (and b!6781187 ((_ is ElementMatch!16603) (regOne!33719 (regTwo!33718 r!7292)))) b!6782533))

(assert (= (and b!6781187 ((_ is Concat!25448) (regOne!33719 (regTwo!33718 r!7292)))) b!6782534))

(assert (= (and b!6781187 ((_ is Star!16603) (regOne!33719 (regTwo!33718 r!7292)))) b!6782535))

(assert (= (and b!6781187 ((_ is Union!16603) (regOne!33719 (regTwo!33718 r!7292)))) b!6782536))

(declare-fun b!6782540 () Bool)

(declare-fun e!4094296 () Bool)

(declare-fun tp!1858139 () Bool)

(declare-fun tp!1858136 () Bool)

(assert (=> b!6782540 (= e!4094296 (and tp!1858139 tp!1858136))))

(declare-fun b!6782539 () Bool)

(declare-fun tp!1858135 () Bool)

(assert (=> b!6782539 (= e!4094296 tp!1858135)))

(declare-fun b!6782538 () Bool)

(declare-fun tp!1858137 () Bool)

(declare-fun tp!1858138 () Bool)

(assert (=> b!6782538 (= e!4094296 (and tp!1858137 tp!1858138))))

(declare-fun b!6782537 () Bool)

(assert (=> b!6782537 (= e!4094296 tp_is_empty!42459)))

(assert (=> b!6781187 (= tp!1857892 e!4094296)))

(assert (= (and b!6781187 ((_ is ElementMatch!16603) (regTwo!33719 (regTwo!33718 r!7292)))) b!6782537))

(assert (= (and b!6781187 ((_ is Concat!25448) (regTwo!33719 (regTwo!33718 r!7292)))) b!6782538))

(assert (= (and b!6781187 ((_ is Star!16603) (regTwo!33719 (regTwo!33718 r!7292)))) b!6782539))

(assert (= (and b!6781187 ((_ is Union!16603) (regTwo!33719 (regTwo!33718 r!7292)))) b!6782540))

(declare-fun b!6782544 () Bool)

(declare-fun e!4094297 () Bool)

(declare-fun tp!1858144 () Bool)

(declare-fun tp!1858141 () Bool)

(assert (=> b!6782544 (= e!4094297 (and tp!1858144 tp!1858141))))

(declare-fun b!6782543 () Bool)

(declare-fun tp!1858140 () Bool)

(assert (=> b!6782543 (= e!4094297 tp!1858140)))

(declare-fun b!6782542 () Bool)

(declare-fun tp!1858142 () Bool)

(declare-fun tp!1858143 () Bool)

(assert (=> b!6782542 (= e!4094297 (and tp!1858142 tp!1858143))))

(declare-fun b!6782541 () Bool)

(assert (=> b!6782541 (= e!4094297 tp_is_empty!42459)))

(assert (=> b!6781185 (= tp!1857893 e!4094297)))

(assert (= (and b!6781185 ((_ is ElementMatch!16603) (regOne!33718 (regTwo!33718 r!7292)))) b!6782541))

(assert (= (and b!6781185 ((_ is Concat!25448) (regOne!33718 (regTwo!33718 r!7292)))) b!6782542))

(assert (= (and b!6781185 ((_ is Star!16603) (regOne!33718 (regTwo!33718 r!7292)))) b!6782543))

(assert (= (and b!6781185 ((_ is Union!16603) (regOne!33718 (regTwo!33718 r!7292)))) b!6782544))

(declare-fun b!6782548 () Bool)

(declare-fun e!4094298 () Bool)

(declare-fun tp!1858149 () Bool)

(declare-fun tp!1858146 () Bool)

(assert (=> b!6782548 (= e!4094298 (and tp!1858149 tp!1858146))))

(declare-fun b!6782547 () Bool)

(declare-fun tp!1858145 () Bool)

(assert (=> b!6782547 (= e!4094298 tp!1858145)))

(declare-fun b!6782546 () Bool)

(declare-fun tp!1858147 () Bool)

(declare-fun tp!1858148 () Bool)

(assert (=> b!6782546 (= e!4094298 (and tp!1858147 tp!1858148))))

(declare-fun b!6782545 () Bool)

(assert (=> b!6782545 (= e!4094298 tp_is_empty!42459)))

(assert (=> b!6781185 (= tp!1857894 e!4094298)))

(assert (= (and b!6781185 ((_ is ElementMatch!16603) (regTwo!33718 (regTwo!33718 r!7292)))) b!6782545))

(assert (= (and b!6781185 ((_ is Concat!25448) (regTwo!33718 (regTwo!33718 r!7292)))) b!6782546))

(assert (= (and b!6781185 ((_ is Star!16603) (regTwo!33718 (regTwo!33718 r!7292)))) b!6782547))

(assert (= (and b!6781185 ((_ is Union!16603) (regTwo!33718 (regTwo!33718 r!7292)))) b!6782548))

(declare-fun b!6782549 () Bool)

(declare-fun e!4094299 () Bool)

(declare-fun tp!1858150 () Bool)

(declare-fun tp!1858151 () Bool)

(assert (=> b!6782549 (= e!4094299 (and tp!1858150 tp!1858151))))

(assert (=> b!6781219 (= tp!1857927 e!4094299)))

(assert (= (and b!6781219 ((_ is Cons!65985) (exprs!6487 setElem!46383))) b!6782549))

(declare-fun b!6782550 () Bool)

(declare-fun e!4094300 () Bool)

(declare-fun tp!1858152 () Bool)

(assert (=> b!6782550 (= e!4094300 (and tp_is_empty!42459 tp!1858152))))

(assert (=> b!6781192 (= tp!1857898 e!4094300)))

(assert (= (and b!6781192 ((_ is Cons!65984) (t!379823 (t!379823 s!2326)))) b!6782550))

(declare-fun b!6782554 () Bool)

(declare-fun e!4094301 () Bool)

(declare-fun tp!1858157 () Bool)

(declare-fun tp!1858154 () Bool)

(assert (=> b!6782554 (= e!4094301 (and tp!1858157 tp!1858154))))

(declare-fun b!6782553 () Bool)

(declare-fun tp!1858153 () Bool)

(assert (=> b!6782553 (= e!4094301 tp!1858153)))

(declare-fun b!6782552 () Bool)

(declare-fun tp!1858155 () Bool)

(declare-fun tp!1858156 () Bool)

(assert (=> b!6782552 (= e!4094301 (and tp!1858155 tp!1858156))))

(declare-fun b!6782551 () Bool)

(assert (=> b!6782551 (= e!4094301 tp_is_empty!42459)))

(assert (=> b!6781198 (= tp!1857906 e!4094301)))

(assert (= (and b!6781198 ((_ is ElementMatch!16603) (regOne!33718 (regTwo!33719 r!7292)))) b!6782551))

(assert (= (and b!6781198 ((_ is Concat!25448) (regOne!33718 (regTwo!33719 r!7292)))) b!6782552))

(assert (= (and b!6781198 ((_ is Star!16603) (regOne!33718 (regTwo!33719 r!7292)))) b!6782553))

(assert (= (and b!6781198 ((_ is Union!16603) (regOne!33718 (regTwo!33719 r!7292)))) b!6782554))

(declare-fun b!6782558 () Bool)

(declare-fun e!4094302 () Bool)

(declare-fun tp!1858162 () Bool)

(declare-fun tp!1858159 () Bool)

(assert (=> b!6782558 (= e!4094302 (and tp!1858162 tp!1858159))))

(declare-fun b!6782557 () Bool)

(declare-fun tp!1858158 () Bool)

(assert (=> b!6782557 (= e!4094302 tp!1858158)))

(declare-fun b!6782556 () Bool)

(declare-fun tp!1858160 () Bool)

(declare-fun tp!1858161 () Bool)

(assert (=> b!6782556 (= e!4094302 (and tp!1858160 tp!1858161))))

(declare-fun b!6782555 () Bool)

(assert (=> b!6782555 (= e!4094302 tp_is_empty!42459)))

(assert (=> b!6781198 (= tp!1857907 e!4094302)))

(assert (= (and b!6781198 ((_ is ElementMatch!16603) (regTwo!33718 (regTwo!33719 r!7292)))) b!6782555))

(assert (= (and b!6781198 ((_ is Concat!25448) (regTwo!33718 (regTwo!33719 r!7292)))) b!6782556))

(assert (= (and b!6781198 ((_ is Star!16603) (regTwo!33718 (regTwo!33719 r!7292)))) b!6782557))

(assert (= (and b!6781198 ((_ is Union!16603) (regTwo!33718 (regTwo!33719 r!7292)))) b!6782558))

(declare-fun b!6782562 () Bool)

(declare-fun e!4094303 () Bool)

(declare-fun tp!1858167 () Bool)

(declare-fun tp!1858164 () Bool)

(assert (=> b!6782562 (= e!4094303 (and tp!1858167 tp!1858164))))

(declare-fun b!6782561 () Bool)

(declare-fun tp!1858163 () Bool)

(assert (=> b!6782561 (= e!4094303 tp!1858163)))

(declare-fun b!6782560 () Bool)

(declare-fun tp!1858165 () Bool)

(declare-fun tp!1858166 () Bool)

(assert (=> b!6782560 (= e!4094303 (and tp!1858165 tp!1858166))))

(declare-fun b!6782559 () Bool)

(assert (=> b!6782559 (= e!4094303 tp_is_empty!42459)))

(assert (=> b!6781199 (= tp!1857904 e!4094303)))

(assert (= (and b!6781199 ((_ is ElementMatch!16603) (reg!16932 (regTwo!33719 r!7292)))) b!6782559))

(assert (= (and b!6781199 ((_ is Concat!25448) (reg!16932 (regTwo!33719 r!7292)))) b!6782560))

(assert (= (and b!6781199 ((_ is Star!16603) (reg!16932 (regTwo!33719 r!7292)))) b!6782561))

(assert (= (and b!6781199 ((_ is Union!16603) (reg!16932 (regTwo!33719 r!7292)))) b!6782562))

(declare-fun condSetEmpty!46397 () Bool)

(assert (=> setNonEmpty!46383 (= condSetEmpty!46397 (= setRest!46383 ((as const (Array Context!11974 Bool)) false)))))

(declare-fun setRes!46397 () Bool)

(assert (=> setNonEmpty!46383 (= tp!1857928 setRes!46397)))

(declare-fun setIsEmpty!46397 () Bool)

(assert (=> setIsEmpty!46397 setRes!46397))

(declare-fun tp!1858169 () Bool)

(declare-fun e!4094304 () Bool)

(declare-fun setNonEmpty!46397 () Bool)

(declare-fun setElem!46397 () Context!11974)

(assert (=> setNonEmpty!46397 (= setRes!46397 (and tp!1858169 (inv!84754 setElem!46397) e!4094304))))

(declare-fun setRest!46397 () (InoxSet Context!11974))

(assert (=> setNonEmpty!46397 (= setRest!46383 ((_ map or) (store ((as const (Array Context!11974 Bool)) false) setElem!46397 true) setRest!46397))))

(declare-fun b!6782563 () Bool)

(declare-fun tp!1858168 () Bool)

(assert (=> b!6782563 (= e!4094304 tp!1858168)))

(assert (= (and setNonEmpty!46383 condSetEmpty!46397) setIsEmpty!46397))

(assert (= (and setNonEmpty!46383 (not condSetEmpty!46397)) setNonEmpty!46397))

(assert (= setNonEmpty!46397 b!6782563))

(declare-fun m!7531178 () Bool)

(assert (=> setNonEmpty!46397 m!7531178))

(declare-fun b!6782565 () Bool)

(declare-fun e!4094306 () Bool)

(declare-fun tp!1858170 () Bool)

(assert (=> b!6782565 (= e!4094306 tp!1858170)))

(declare-fun tp!1858171 () Bool)

(declare-fun e!4094305 () Bool)

(declare-fun b!6782564 () Bool)

(assert (=> b!6782564 (= e!4094305 (and (inv!84754 (h!72434 (t!379825 (t!379825 zl!343)))) e!4094306 tp!1858171))))

(assert (=> b!6781212 (= tp!1857920 e!4094305)))

(assert (= b!6782564 b!6782565))

(assert (= (and b!6781212 ((_ is Cons!65986) (t!379825 (t!379825 zl!343)))) b!6782564))

(declare-fun m!7531180 () Bool)

(assert (=> b!6782564 m!7531180))

(declare-fun b!6782566 () Bool)

(declare-fun e!4094307 () Bool)

(declare-fun tp!1858172 () Bool)

(declare-fun tp!1858173 () Bool)

(assert (=> b!6782566 (= e!4094307 (and tp!1858172 tp!1858173))))

(assert (=> b!6781213 (= tp!1857919 e!4094307)))

(assert (= (and b!6781213 ((_ is Cons!65985) (exprs!6487 (h!72434 (t!379825 zl!343))))) b!6782566))

(declare-fun b!6782570 () Bool)

(declare-fun e!4094308 () Bool)

(declare-fun tp!1858178 () Bool)

(declare-fun tp!1858175 () Bool)

(assert (=> b!6782570 (= e!4094308 (and tp!1858178 tp!1858175))))

(declare-fun b!6782569 () Bool)

(declare-fun tp!1858174 () Bool)

(assert (=> b!6782569 (= e!4094308 tp!1858174)))

(declare-fun b!6782568 () Bool)

(declare-fun tp!1858176 () Bool)

(declare-fun tp!1858177 () Bool)

(assert (=> b!6782568 (= e!4094308 (and tp!1858176 tp!1858177))))

(declare-fun b!6782567 () Bool)

(assert (=> b!6782567 (= e!4094308 tp_is_empty!42459)))

(assert (=> b!6781200 (= tp!1857908 e!4094308)))

(assert (= (and b!6781200 ((_ is ElementMatch!16603) (regOne!33719 (regTwo!33719 r!7292)))) b!6782567))

(assert (= (and b!6781200 ((_ is Concat!25448) (regOne!33719 (regTwo!33719 r!7292)))) b!6782568))

(assert (= (and b!6781200 ((_ is Star!16603) (regOne!33719 (regTwo!33719 r!7292)))) b!6782569))

(assert (= (and b!6781200 ((_ is Union!16603) (regOne!33719 (regTwo!33719 r!7292)))) b!6782570))

(declare-fun b!6782574 () Bool)

(declare-fun e!4094309 () Bool)

(declare-fun tp!1858183 () Bool)

(declare-fun tp!1858180 () Bool)

(assert (=> b!6782574 (= e!4094309 (and tp!1858183 tp!1858180))))

(declare-fun b!6782573 () Bool)

(declare-fun tp!1858179 () Bool)

(assert (=> b!6782573 (= e!4094309 tp!1858179)))

(declare-fun b!6782572 () Bool)

(declare-fun tp!1858181 () Bool)

(declare-fun tp!1858182 () Bool)

(assert (=> b!6782572 (= e!4094309 (and tp!1858181 tp!1858182))))

(declare-fun b!6782571 () Bool)

(assert (=> b!6782571 (= e!4094309 tp_is_empty!42459)))

(assert (=> b!6781200 (= tp!1857905 e!4094309)))

(assert (= (and b!6781200 ((_ is ElementMatch!16603) (regTwo!33719 (regTwo!33719 r!7292)))) b!6782571))

(assert (= (and b!6781200 ((_ is Concat!25448) (regTwo!33719 (regTwo!33719 r!7292)))) b!6782572))

(assert (= (and b!6781200 ((_ is Star!16603) (regTwo!33719 (regTwo!33719 r!7292)))) b!6782573))

(assert (= (and b!6781200 ((_ is Union!16603) (regTwo!33719 (regTwo!33719 r!7292)))) b!6782574))

(declare-fun b!6782578 () Bool)

(declare-fun e!4094310 () Bool)

(declare-fun tp!1858188 () Bool)

(declare-fun tp!1858185 () Bool)

(assert (=> b!6782578 (= e!4094310 (and tp!1858188 tp!1858185))))

(declare-fun b!6782577 () Bool)

(declare-fun tp!1858184 () Bool)

(assert (=> b!6782577 (= e!4094310 tp!1858184)))

(declare-fun b!6782576 () Bool)

(declare-fun tp!1858186 () Bool)

(declare-fun tp!1858187 () Bool)

(assert (=> b!6782576 (= e!4094310 (and tp!1858186 tp!1858187))))

(declare-fun b!6782575 () Bool)

(assert (=> b!6782575 (= e!4094310 tp_is_empty!42459)))

(assert (=> b!6781181 (= tp!1857888 e!4094310)))

(assert (= (and b!6781181 ((_ is ElementMatch!16603) (regOne!33718 (regOne!33718 r!7292)))) b!6782575))

(assert (= (and b!6781181 ((_ is Concat!25448) (regOne!33718 (regOne!33718 r!7292)))) b!6782576))

(assert (= (and b!6781181 ((_ is Star!16603) (regOne!33718 (regOne!33718 r!7292)))) b!6782577))

(assert (= (and b!6781181 ((_ is Union!16603) (regOne!33718 (regOne!33718 r!7292)))) b!6782578))

(declare-fun b!6782582 () Bool)

(declare-fun e!4094311 () Bool)

(declare-fun tp!1858193 () Bool)

(declare-fun tp!1858190 () Bool)

(assert (=> b!6782582 (= e!4094311 (and tp!1858193 tp!1858190))))

(declare-fun b!6782581 () Bool)

(declare-fun tp!1858189 () Bool)

(assert (=> b!6782581 (= e!4094311 tp!1858189)))

(declare-fun b!6782580 () Bool)

(declare-fun tp!1858191 () Bool)

(declare-fun tp!1858192 () Bool)

(assert (=> b!6782580 (= e!4094311 (and tp!1858191 tp!1858192))))

(declare-fun b!6782579 () Bool)

(assert (=> b!6782579 (= e!4094311 tp_is_empty!42459)))

(assert (=> b!6781181 (= tp!1857889 e!4094311)))

(assert (= (and b!6781181 ((_ is ElementMatch!16603) (regTwo!33718 (regOne!33718 r!7292)))) b!6782579))

(assert (= (and b!6781181 ((_ is Concat!25448) (regTwo!33718 (regOne!33718 r!7292)))) b!6782580))

(assert (= (and b!6781181 ((_ is Star!16603) (regTwo!33718 (regOne!33718 r!7292)))) b!6782581))

(assert (= (and b!6781181 ((_ is Union!16603) (regTwo!33718 (regOne!33718 r!7292)))) b!6782582))

(declare-fun b!6782586 () Bool)

(declare-fun e!4094312 () Bool)

(declare-fun tp!1858198 () Bool)

(declare-fun tp!1858195 () Bool)

(assert (=> b!6782586 (= e!4094312 (and tp!1858198 tp!1858195))))

(declare-fun b!6782585 () Bool)

(declare-fun tp!1858194 () Bool)

(assert (=> b!6782585 (= e!4094312 tp!1858194)))

(declare-fun b!6782584 () Bool)

(declare-fun tp!1858196 () Bool)

(declare-fun tp!1858197 () Bool)

(assert (=> b!6782584 (= e!4094312 (and tp!1858196 tp!1858197))))

(declare-fun b!6782583 () Bool)

(assert (=> b!6782583 (= e!4094312 tp_is_empty!42459)))

(assert (=> b!6781182 (= tp!1857886 e!4094312)))

(assert (= (and b!6781182 ((_ is ElementMatch!16603) (reg!16932 (regOne!33718 r!7292)))) b!6782583))

(assert (= (and b!6781182 ((_ is Concat!25448) (reg!16932 (regOne!33718 r!7292)))) b!6782584))

(assert (= (and b!6781182 ((_ is Star!16603) (reg!16932 (regOne!33718 r!7292)))) b!6782585))

(assert (= (and b!6781182 ((_ is Union!16603) (reg!16932 (regOne!33718 r!7292)))) b!6782586))

(declare-fun b!6782590 () Bool)

(declare-fun e!4094313 () Bool)

(declare-fun tp!1858203 () Bool)

(declare-fun tp!1858200 () Bool)

(assert (=> b!6782590 (= e!4094313 (and tp!1858203 tp!1858200))))

(declare-fun b!6782589 () Bool)

(declare-fun tp!1858199 () Bool)

(assert (=> b!6782589 (= e!4094313 tp!1858199)))

(declare-fun b!6782588 () Bool)

(declare-fun tp!1858201 () Bool)

(declare-fun tp!1858202 () Bool)

(assert (=> b!6782588 (= e!4094313 (and tp!1858201 tp!1858202))))

(declare-fun b!6782587 () Bool)

(assert (=> b!6782587 (= e!4094313 tp_is_empty!42459)))

(assert (=> b!6781205 (= tp!1857913 e!4094313)))

(assert (= (and b!6781205 ((_ is ElementMatch!16603) (h!72433 (exprs!6487 (h!72434 zl!343))))) b!6782587))

(assert (= (and b!6781205 ((_ is Concat!25448) (h!72433 (exprs!6487 (h!72434 zl!343))))) b!6782588))

(assert (= (and b!6781205 ((_ is Star!16603) (h!72433 (exprs!6487 (h!72434 zl!343))))) b!6782589))

(assert (= (and b!6781205 ((_ is Union!16603) (h!72433 (exprs!6487 (h!72434 zl!343))))) b!6782590))

(declare-fun b!6782591 () Bool)

(declare-fun e!4094314 () Bool)

(declare-fun tp!1858204 () Bool)

(declare-fun tp!1858205 () Bool)

(assert (=> b!6782591 (= e!4094314 (and tp!1858204 tp!1858205))))

(assert (=> b!6781205 (= tp!1857914 e!4094314)))

(assert (= (and b!6781205 ((_ is Cons!65985) (t!379824 (exprs!6487 (h!72434 zl!343))))) b!6782591))

(declare-fun b!6782595 () Bool)

(declare-fun e!4094315 () Bool)

(declare-fun tp!1858210 () Bool)

(declare-fun tp!1858207 () Bool)

(assert (=> b!6782595 (= e!4094315 (and tp!1858210 tp!1858207))))

(declare-fun b!6782594 () Bool)

(declare-fun tp!1858206 () Bool)

(assert (=> b!6782594 (= e!4094315 tp!1858206)))

(declare-fun b!6782593 () Bool)

(declare-fun tp!1858208 () Bool)

(declare-fun tp!1858209 () Bool)

(assert (=> b!6782593 (= e!4094315 (and tp!1858208 tp!1858209))))

(declare-fun b!6782592 () Bool)

(assert (=> b!6782592 (= e!4094315 tp_is_empty!42459)))

(assert (=> b!6781183 (= tp!1857890 e!4094315)))

(assert (= (and b!6781183 ((_ is ElementMatch!16603) (regOne!33719 (regOne!33718 r!7292)))) b!6782592))

(assert (= (and b!6781183 ((_ is Concat!25448) (regOne!33719 (regOne!33718 r!7292)))) b!6782593))

(assert (= (and b!6781183 ((_ is Star!16603) (regOne!33719 (regOne!33718 r!7292)))) b!6782594))

(assert (= (and b!6781183 ((_ is Union!16603) (regOne!33719 (regOne!33718 r!7292)))) b!6782595))

(declare-fun b!6782599 () Bool)

(declare-fun e!4094316 () Bool)

(declare-fun tp!1858215 () Bool)

(declare-fun tp!1858212 () Bool)

(assert (=> b!6782599 (= e!4094316 (and tp!1858215 tp!1858212))))

(declare-fun b!6782598 () Bool)

(declare-fun tp!1858211 () Bool)

(assert (=> b!6782598 (= e!4094316 tp!1858211)))

(declare-fun b!6782597 () Bool)

(declare-fun tp!1858213 () Bool)

(declare-fun tp!1858214 () Bool)

(assert (=> b!6782597 (= e!4094316 (and tp!1858213 tp!1858214))))

(declare-fun b!6782596 () Bool)

(assert (=> b!6782596 (= e!4094316 tp_is_empty!42459)))

(assert (=> b!6781183 (= tp!1857887 e!4094316)))

(assert (= (and b!6781183 ((_ is ElementMatch!16603) (regTwo!33719 (regOne!33718 r!7292)))) b!6782596))

(assert (= (and b!6781183 ((_ is Concat!25448) (regTwo!33719 (regOne!33718 r!7292)))) b!6782597))

(assert (= (and b!6781183 ((_ is Star!16603) (regTwo!33719 (regOne!33718 r!7292)))) b!6782598))

(assert (= (and b!6781183 ((_ is Union!16603) (regTwo!33719 (regOne!33718 r!7292)))) b!6782599))

(declare-fun b!6782603 () Bool)

(declare-fun e!4094317 () Bool)

(declare-fun tp!1858220 () Bool)

(declare-fun tp!1858217 () Bool)

(assert (=> b!6782603 (= e!4094317 (and tp!1858220 tp!1858217))))

(declare-fun b!6782602 () Bool)

(declare-fun tp!1858216 () Bool)

(assert (=> b!6782602 (= e!4094317 tp!1858216)))

(declare-fun b!6782601 () Bool)

(declare-fun tp!1858218 () Bool)

(declare-fun tp!1858219 () Bool)

(assert (=> b!6782601 (= e!4094317 (and tp!1858218 tp!1858219))))

(declare-fun b!6782600 () Bool)

(assert (=> b!6782600 (= e!4094317 tp_is_empty!42459)))

(assert (=> b!6781222 (= tp!1857929 e!4094317)))

(assert (= (and b!6781222 ((_ is ElementMatch!16603) (reg!16932 (reg!16932 r!7292)))) b!6782600))

(assert (= (and b!6781222 ((_ is Concat!25448) (reg!16932 (reg!16932 r!7292)))) b!6782601))

(assert (= (and b!6781222 ((_ is Star!16603) (reg!16932 (reg!16932 r!7292)))) b!6782602))

(assert (= (and b!6781222 ((_ is Union!16603) (reg!16932 (reg!16932 r!7292)))) b!6782603))

(declare-fun b!6782607 () Bool)

(declare-fun e!4094318 () Bool)

(declare-fun tp!1858225 () Bool)

(declare-fun tp!1858222 () Bool)

(assert (=> b!6782607 (= e!4094318 (and tp!1858225 tp!1858222))))

(declare-fun b!6782606 () Bool)

(declare-fun tp!1858221 () Bool)

(assert (=> b!6782606 (= e!4094318 tp!1858221)))

(declare-fun b!6782605 () Bool)

(declare-fun tp!1858223 () Bool)

(declare-fun tp!1858224 () Bool)

(assert (=> b!6782605 (= e!4094318 (and tp!1858223 tp!1858224))))

(declare-fun b!6782604 () Bool)

(assert (=> b!6782604 (= e!4094318 tp_is_empty!42459)))

(assert (=> b!6781196 (= tp!1857903 e!4094318)))

(assert (= (and b!6781196 ((_ is ElementMatch!16603) (regOne!33719 (regOne!33719 r!7292)))) b!6782604))

(assert (= (and b!6781196 ((_ is Concat!25448) (regOne!33719 (regOne!33719 r!7292)))) b!6782605))

(assert (= (and b!6781196 ((_ is Star!16603) (regOne!33719 (regOne!33719 r!7292)))) b!6782606))

(assert (= (and b!6781196 ((_ is Union!16603) (regOne!33719 (regOne!33719 r!7292)))) b!6782607))

(declare-fun b!6782611 () Bool)

(declare-fun e!4094319 () Bool)

(declare-fun tp!1858230 () Bool)

(declare-fun tp!1858227 () Bool)

(assert (=> b!6782611 (= e!4094319 (and tp!1858230 tp!1858227))))

(declare-fun b!6782610 () Bool)

(declare-fun tp!1858226 () Bool)

(assert (=> b!6782610 (= e!4094319 tp!1858226)))

(declare-fun b!6782609 () Bool)

(declare-fun tp!1858228 () Bool)

(declare-fun tp!1858229 () Bool)

(assert (=> b!6782609 (= e!4094319 (and tp!1858228 tp!1858229))))

(declare-fun b!6782608 () Bool)

(assert (=> b!6782608 (= e!4094319 tp_is_empty!42459)))

(assert (=> b!6781196 (= tp!1857900 e!4094319)))

(assert (= (and b!6781196 ((_ is ElementMatch!16603) (regTwo!33719 (regOne!33719 r!7292)))) b!6782608))

(assert (= (and b!6781196 ((_ is Concat!25448) (regTwo!33719 (regOne!33719 r!7292)))) b!6782609))

(assert (= (and b!6781196 ((_ is Star!16603) (regTwo!33719 (regOne!33719 r!7292)))) b!6782610))

(assert (= (and b!6781196 ((_ is Union!16603) (regTwo!33719 (regOne!33719 r!7292)))) b!6782611))

(declare-fun b!6782615 () Bool)

(declare-fun e!4094320 () Bool)

(declare-fun tp!1858235 () Bool)

(declare-fun tp!1858232 () Bool)

(assert (=> b!6782615 (= e!4094320 (and tp!1858235 tp!1858232))))

(declare-fun b!6782614 () Bool)

(declare-fun tp!1858231 () Bool)

(assert (=> b!6782614 (= e!4094320 tp!1858231)))

(declare-fun b!6782613 () Bool)

(declare-fun tp!1858233 () Bool)

(declare-fun tp!1858234 () Bool)

(assert (=> b!6782613 (= e!4094320 (and tp!1858233 tp!1858234))))

(declare-fun b!6782612 () Bool)

(assert (=> b!6782612 (= e!4094320 tp_is_empty!42459)))

(assert (=> b!6781223 (= tp!1857933 e!4094320)))

(assert (= (and b!6781223 ((_ is ElementMatch!16603) (regOne!33719 (reg!16932 r!7292)))) b!6782612))

(assert (= (and b!6781223 ((_ is Concat!25448) (regOne!33719 (reg!16932 r!7292)))) b!6782613))

(assert (= (and b!6781223 ((_ is Star!16603) (regOne!33719 (reg!16932 r!7292)))) b!6782614))

(assert (= (and b!6781223 ((_ is Union!16603) (regOne!33719 (reg!16932 r!7292)))) b!6782615))

(declare-fun b!6782619 () Bool)

(declare-fun e!4094321 () Bool)

(declare-fun tp!1858240 () Bool)

(declare-fun tp!1858237 () Bool)

(assert (=> b!6782619 (= e!4094321 (and tp!1858240 tp!1858237))))

(declare-fun b!6782618 () Bool)

(declare-fun tp!1858236 () Bool)

(assert (=> b!6782618 (= e!4094321 tp!1858236)))

(declare-fun b!6782617 () Bool)

(declare-fun tp!1858238 () Bool)

(declare-fun tp!1858239 () Bool)

(assert (=> b!6782617 (= e!4094321 (and tp!1858238 tp!1858239))))

(declare-fun b!6782616 () Bool)

(assert (=> b!6782616 (= e!4094321 tp_is_empty!42459)))

(assert (=> b!6781223 (= tp!1857930 e!4094321)))

(assert (= (and b!6781223 ((_ is ElementMatch!16603) (regTwo!33719 (reg!16932 r!7292)))) b!6782616))

(assert (= (and b!6781223 ((_ is Concat!25448) (regTwo!33719 (reg!16932 r!7292)))) b!6782617))

(assert (= (and b!6781223 ((_ is Star!16603) (regTwo!33719 (reg!16932 r!7292)))) b!6782618))

(assert (= (and b!6781223 ((_ is Union!16603) (regTwo!33719 (reg!16932 r!7292)))) b!6782619))

(declare-fun b!6782623 () Bool)

(declare-fun e!4094322 () Bool)

(declare-fun tp!1858245 () Bool)

(declare-fun tp!1858242 () Bool)

(assert (=> b!6782623 (= e!4094322 (and tp!1858245 tp!1858242))))

(declare-fun b!6782622 () Bool)

(declare-fun tp!1858241 () Bool)

(assert (=> b!6782622 (= e!4094322 tp!1858241)))

(declare-fun b!6782621 () Bool)

(declare-fun tp!1858243 () Bool)

(declare-fun tp!1858244 () Bool)

(assert (=> b!6782621 (= e!4094322 (and tp!1858243 tp!1858244))))

(declare-fun b!6782620 () Bool)

(assert (=> b!6782620 (= e!4094322 tp_is_empty!42459)))

(assert (=> b!6781194 (= tp!1857901 e!4094322)))

(assert (= (and b!6781194 ((_ is ElementMatch!16603) (regOne!33718 (regOne!33719 r!7292)))) b!6782620))

(assert (= (and b!6781194 ((_ is Concat!25448) (regOne!33718 (regOne!33719 r!7292)))) b!6782621))

(assert (= (and b!6781194 ((_ is Star!16603) (regOne!33718 (regOne!33719 r!7292)))) b!6782622))

(assert (= (and b!6781194 ((_ is Union!16603) (regOne!33718 (regOne!33719 r!7292)))) b!6782623))

(declare-fun b!6782627 () Bool)

(declare-fun e!4094323 () Bool)

(declare-fun tp!1858250 () Bool)

(declare-fun tp!1858247 () Bool)

(assert (=> b!6782627 (= e!4094323 (and tp!1858250 tp!1858247))))

(declare-fun b!6782626 () Bool)

(declare-fun tp!1858246 () Bool)

(assert (=> b!6782626 (= e!4094323 tp!1858246)))

(declare-fun b!6782625 () Bool)

(declare-fun tp!1858248 () Bool)

(declare-fun tp!1858249 () Bool)

(assert (=> b!6782625 (= e!4094323 (and tp!1858248 tp!1858249))))

(declare-fun b!6782624 () Bool)

(assert (=> b!6782624 (= e!4094323 tp_is_empty!42459)))

(assert (=> b!6781194 (= tp!1857902 e!4094323)))

(assert (= (and b!6781194 ((_ is ElementMatch!16603) (regTwo!33718 (regOne!33719 r!7292)))) b!6782624))

(assert (= (and b!6781194 ((_ is Concat!25448) (regTwo!33718 (regOne!33719 r!7292)))) b!6782625))

(assert (= (and b!6781194 ((_ is Star!16603) (regTwo!33718 (regOne!33719 r!7292)))) b!6782626))

(assert (= (and b!6781194 ((_ is Union!16603) (regTwo!33718 (regOne!33719 r!7292)))) b!6782627))

(declare-fun b!6782631 () Bool)

(declare-fun e!4094324 () Bool)

(declare-fun tp!1858255 () Bool)

(declare-fun tp!1858252 () Bool)

(assert (=> b!6782631 (= e!4094324 (and tp!1858255 tp!1858252))))

(declare-fun b!6782630 () Bool)

(declare-fun tp!1858251 () Bool)

(assert (=> b!6782630 (= e!4094324 tp!1858251)))

(declare-fun b!6782629 () Bool)

(declare-fun tp!1858253 () Bool)

(declare-fun tp!1858254 () Bool)

(assert (=> b!6782629 (= e!4094324 (and tp!1858253 tp!1858254))))

(declare-fun b!6782628 () Bool)

(assert (=> b!6782628 (= e!4094324 tp_is_empty!42459)))

(assert (=> b!6781195 (= tp!1857899 e!4094324)))

(assert (= (and b!6781195 ((_ is ElementMatch!16603) (reg!16932 (regOne!33719 r!7292)))) b!6782628))

(assert (= (and b!6781195 ((_ is Concat!25448) (reg!16932 (regOne!33719 r!7292)))) b!6782629))

(assert (= (and b!6781195 ((_ is Star!16603) (reg!16932 (regOne!33719 r!7292)))) b!6782630))

(assert (= (and b!6781195 ((_ is Union!16603) (reg!16932 (regOne!33719 r!7292)))) b!6782631))

(declare-fun b!6782635 () Bool)

(declare-fun e!4094325 () Bool)

(declare-fun tp!1858260 () Bool)

(declare-fun tp!1858257 () Bool)

(assert (=> b!6782635 (= e!4094325 (and tp!1858260 tp!1858257))))

(declare-fun b!6782634 () Bool)

(declare-fun tp!1858256 () Bool)

(assert (=> b!6782634 (= e!4094325 tp!1858256)))

(declare-fun b!6782633 () Bool)

(declare-fun tp!1858258 () Bool)

(declare-fun tp!1858259 () Bool)

(assert (=> b!6782633 (= e!4094325 (and tp!1858258 tp!1858259))))

(declare-fun b!6782632 () Bool)

(assert (=> b!6782632 (= e!4094325 tp_is_empty!42459)))

(assert (=> b!6781221 (= tp!1857931 e!4094325)))

(assert (= (and b!6781221 ((_ is ElementMatch!16603) (regOne!33718 (reg!16932 r!7292)))) b!6782632))

(assert (= (and b!6781221 ((_ is Concat!25448) (regOne!33718 (reg!16932 r!7292)))) b!6782633))

(assert (= (and b!6781221 ((_ is Star!16603) (regOne!33718 (reg!16932 r!7292)))) b!6782634))

(assert (= (and b!6781221 ((_ is Union!16603) (regOne!33718 (reg!16932 r!7292)))) b!6782635))

(declare-fun b!6782639 () Bool)

(declare-fun e!4094326 () Bool)

(declare-fun tp!1858265 () Bool)

(declare-fun tp!1858262 () Bool)

(assert (=> b!6782639 (= e!4094326 (and tp!1858265 tp!1858262))))

(declare-fun b!6782638 () Bool)

(declare-fun tp!1858261 () Bool)

(assert (=> b!6782638 (= e!4094326 tp!1858261)))

(declare-fun b!6782637 () Bool)

(declare-fun tp!1858263 () Bool)

(declare-fun tp!1858264 () Bool)

(assert (=> b!6782637 (= e!4094326 (and tp!1858263 tp!1858264))))

(declare-fun b!6782636 () Bool)

(assert (=> b!6782636 (= e!4094326 tp_is_empty!42459)))

(assert (=> b!6781221 (= tp!1857932 e!4094326)))

(assert (= (and b!6781221 ((_ is ElementMatch!16603) (regTwo!33718 (reg!16932 r!7292)))) b!6782636))

(assert (= (and b!6781221 ((_ is Concat!25448) (regTwo!33718 (reg!16932 r!7292)))) b!6782637))

(assert (= (and b!6781221 ((_ is Star!16603) (regTwo!33718 (reg!16932 r!7292)))) b!6782638))

(assert (= (and b!6781221 ((_ is Union!16603) (regTwo!33718 (reg!16932 r!7292)))) b!6782639))

(declare-fun b_lambda!255399 () Bool)

(assert (= b_lambda!255345 (or d!2130157 b_lambda!255399)))

(declare-fun bs!1806612 () Bool)

(declare-fun d!2131023 () Bool)

(assert (= bs!1806612 (and d!2131023 d!2130157)))

(assert (=> bs!1806612 (= (dynLambda!26331 lambda!381623 (h!72433 lt!2444797)) (validRegex!8339 (h!72433 lt!2444797)))))

(declare-fun m!7531182 () Bool)

(assert (=> bs!1806612 m!7531182))

(assert (=> b!6781340 d!2131023))

(declare-fun b_lambda!255401 () Bool)

(assert (= b_lambda!255359 (or b!6780319 b_lambda!255401)))

(assert (=> d!2130705 d!2130383))

(declare-fun b_lambda!255403 () Bool)

(assert (= b_lambda!255355 (or d!2130379 b_lambda!255403)))

(declare-fun bs!1806613 () Bool)

(declare-fun d!2131025 () Bool)

(assert (= bs!1806613 (and d!2131025 d!2130379)))

(assert (=> bs!1806613 (= (dynLambda!26331 lambda!381701 (h!72433 (exprs!6487 setElem!46377))) (validRegex!8339 (h!72433 (exprs!6487 setElem!46377))))))

(declare-fun m!7531184 () Bool)

(assert (=> bs!1806613 m!7531184))

(assert (=> b!6781739 d!2131025))

(declare-fun b_lambda!255405 () Bool)

(assert (= b_lambda!255369 (or d!2130195 b_lambda!255405)))

(declare-fun bs!1806614 () Bool)

(declare-fun d!2131027 () Bool)

(assert (= bs!1806614 (and d!2131027 d!2130195)))

(assert (=> bs!1806614 (= (dynLambda!26331 lambda!381638 (h!72433 (exprs!6487 (h!72434 zl!343)))) (validRegex!8339 (h!72433 (exprs!6487 (h!72434 zl!343)))))))

(declare-fun m!7531186 () Bool)

(assert (=> bs!1806614 m!7531186))

(assert (=> b!6782030 d!2131027))

(declare-fun b_lambda!255407 () Bool)

(assert (= b_lambda!255361 (or d!2130155 b_lambda!255407)))

(declare-fun bs!1806615 () Bool)

(declare-fun d!2131029 () Bool)

(assert (= bs!1806615 (and d!2131029 d!2130155)))

(assert (=> bs!1806615 (= (dynLambda!26331 lambda!381620 (h!72433 (unfocusZipperList!2024 zl!343))) (validRegex!8339 (h!72433 (unfocusZipperList!2024 zl!343))))))

(declare-fun m!7531188 () Bool)

(assert (=> bs!1806615 m!7531188))

(assert (=> b!6781902 d!2131029))

(declare-fun b_lambda!255409 () Bool)

(assert (= b_lambda!255349 (or b!6780319 b_lambda!255409)))

(assert (=> d!2130507 d!2130387))

(declare-fun b_lambda!255411 () Bool)

(assert (= b_lambda!255353 (or b!6780319 b_lambda!255411)))

(assert (=> d!2130533 d!2130389))

(declare-fun b_lambda!255413 () Bool)

(assert (= b_lambda!255395 (or b!6780319 b_lambda!255413)))

(assert (=> d!2131017 d!2130385))

(declare-fun b_lambda!255415 () Bool)

(assert (= b_lambda!255351 (or d!2130353 b_lambda!255415)))

(declare-fun bs!1806616 () Bool)

(declare-fun d!2131031 () Bool)

(assert (= bs!1806616 (and d!2131031 d!2130353)))

(assert (=> bs!1806616 (= (dynLambda!26331 lambda!381697 (h!72433 (exprs!6487 lt!2444770))) (validRegex!8339 (h!72433 (exprs!6487 lt!2444770))))))

(declare-fun m!7531190 () Bool)

(assert (=> bs!1806616 m!7531190))

(assert (=> b!6781412 d!2131031))

(declare-fun b_lambda!255417 () Bool)

(assert (= b_lambda!255397 (or d!2130261 b_lambda!255417)))

(declare-fun bs!1806617 () Bool)

(declare-fun d!2131033 () Bool)

(assert (= bs!1806617 (and d!2131033 d!2130261)))

(assert (=> bs!1806617 (= (dynLambda!26331 lambda!381668 (h!72433 (exprs!6487 (h!72434 zl!343)))) (validRegex!8339 (h!72433 (exprs!6487 (h!72434 zl!343)))))))

(assert (=> bs!1806617 m!7531186))

(assert (=> b!6782522 d!2131033))

(check-sat (not b!6782601) (not bm!615404) (not bm!615257) (not b!6781840) (not b!6782569) (not d!2130689) (not b!6782337) (not b!6781609) (not bm!615453) (not b!6782622) (not b!6782593) (not d!2130719) (not d!2130479) (not b!6781964) (not d!2130829) (not d!2130979) (not b!6781387) (not b!6782302) (not d!2130793) (not bm!615252) (not b_lambda!255403) (not b_lambda!255409) (not d!2130589) (not d!2130697) (not b!6781829) (not b!6782515) (not d!2130723) (not bm!615326) (not b!6781424) (not b!6782626) (not setNonEmpty!46395) (not bm!615331) (not b!6781728) (not bm!615329) (not bm!615448) (not b!6782248) (not b!6781462) (not b!6782617) (not bm!615437) (not d!2130757) (not d!2130651) (not bm!615355) (not b!6781695) (not b!6782292) (not b!6782157) (not b!6782159) (not b_lambda!255405) (not b!6781586) (not bm!615272) (not d!2130785) (not b!6781419) (not b!6782536) (not d!2130745) (not b!6782499) (not d!2130669) (not b!6782561) (not b!6782370) (not bm!615398) (not b!6782540) (not bm!615365) (not b!6781976) (not d!2130531) (not b!6782556) (not d!2130989) (not b!6781981) (not b!6782630) (not b!6782602) (not b!6781814) (not b!6782542) (not b!6782459) (not bm!615399) (not bm!615436) (not b!6782546) (not b_lambda!255411) (not d!2130961) (not b!6782526) (not bm!615251) (not b!6781505) (not bm!615334) (not b!6781423) (not d!2130947) (not b!6782047) (not b_lambda!255417) (not bm!615364) (not b!6782613) (not b!6781606) (not b!6782530) (not bs!1806615) (not b!6781689) (not b!6781905) (not d!2130533) (not bm!615260) (not b!6782618) (not b!6782193) (not b_lambda!255413) (not b!6781354) (not b!6781740) (not b!6782629) (not b!6782535) (not b!6782508) (not b!6782581) (not d!2131007) (not b!6782271) (not d!2130975) (not b!6782574) (not bm!615386) (not d!2130825) (not b!6782527) (not bm!615300) (not d!2130907) (not d!2130713) (not b!6782627) (not b!6782372) (not bs!1806616) (not b!6781746) (not b!6782031) (not b!6781848) (not bm!615231) (not b!6781713) (not bm!615338) (not b!6781835) (not b!6782568) (not b!6781584) (not b!6781638) (not b!6781807) (not b!6782611) (not b!6782621) (not b!6781809) (not b!6781597) (not b!6781808) (not setNonEmpty!46392) (not d!2130623) (not b!6782564) (not b!6782025) (not b!6782623) (not bm!615337) (not b!6782513) (not b!6781664) (not d!2131019) (not b!6782162) (not bm!615403) (not b!6782460) (not b!6781592) (not bm!615441) (not d!2130945) (not d!2130759) (not bm!615245) (not b!6782521) (not b!6781605) (not bm!615444) (not b!6781415) (not b!6781763) (not bm!615452) (not b!6781970) (not b!6782543) (not b!6782226) (not b!6782595) (not b!6781741) (not b!6782576) (not b!6782273) (not b!6781748) (not b!6782464) (not d!2130959) (not b!6782598) (not b!6782539) (not d!2130957) (not b!6782586) (not bm!615426) (not b!6781448) (not b!6781501) (not bm!615343) (not b!6781510) (not bs!1806617) (not b!6781333) (not bm!615230) (not bm!615299) (not b!6781834) (not b!6782550) (not bm!615302) (not b!6782501) (not b!6782625) (not d!2130765) (not d!2130483) (not d!2130949) (not bm!615265) (not b!6782381) (not b!6781897) (not bm!615306) (not d!2130521) (not b_lambda!255337) (not b!6782243) (not b!6781640) (not b!6782267) (not b!6782585) (not d!2130791) (not b!6781805) (not b!6782562) (not bs!1806613) (not bm!615335) (not bm!615325) (not b!6782588) (not b!6782194) (not b!6781750) (not b!6782631) (not b!6782603) (not b!6781723) (not d!2131005) (not bm!615374) (not b!6782548) (not b!6782558) (not b!6782615) (not d!2130683) (not b!6781906) (not b!6781590) (not bm!615277) (not b!6782577) (not b!6782538) (not b!6782639) (not d!2130827) (not b!6782517) (not setNonEmpty!46390) (not b!6782552) (not d!2130507) (not d!2130763) (not bm!615449) (not bm!615460) (not b!6782609) (not b!6782374) (not b!6782375) (not bm!615246) (not b!6782455) (not b!6782422) (not b!6781678) (not b!6781683) (not b_lambda!255335) (not bm!615375) (not bm!615402) (not b!6782279) (not b!6782224) (not bm!615305) (not b!6782553) (not b!6781755) (not b!6782563) (not b!6781772) (not d!2130657) (not b!6782557) (not bm!615458) (not d!2130695) (not b!6782582) (not b_lambda!255331) (not b!6782476) (not bm!615362) (not d!2130631) (not d!2130749) (not bm!615370) (not b!6781425) (not bm!615332) (not b!6781873) (not b!6782599) (not b!6782509) (not b!6782495) (not b!6781351) (not b!6782566) (not b!6781642) (not b!6781591) (not b!6782511) (not b!6782163) (not bm!615250) (not bm!615323) (not b_lambda!255333) (not d!2130563) (not b!6781413) (not d!2130767) (not b!6781422) (not b!6782225) (not b!6781831) (not b!6781816) (not b!6782454) (not b!6781704) (not d!2131009) (not bm!615271) (not d!2130597) (not b!6782287) (not b!6781636) (not d!2130895) (not d!2130705) (not b!6781588) (not b!6781600) (not b!6782470) (not b!6781420) (not b!6782165) (not b!6782376) (not b!6781417) (not b!6781749) (not b!6782590) (not b!6781503) (not bm!615442) (not b!6781682) (not bm!615259) (not b!6782294) (not b!6782161) (not b!6781474) (not b!6782635) (not b!6782638) (not d!2130955) (not b_lambda!255401) (not bm!615273) (not b!6781607) (not d!2130603) (not b!6782634) (not d!2130863) (not b!6781680) (not b!6781868) (not b!6782151) (not d!2130805) (not b!6781634) (not d!2130471) (not d!2131017) (not b_lambda!255407) (not b_lambda!255415) (not b!6782619) (not d!2130621) (not d!2130897) (not d!2130653) (not b_lambda!255399) (not bm!615256) (not b!6781434) (not b!6782514) (not bm!615385) (not bm!615341) (not d!2130607) (not d!2130495) (not b!6782164) (not b!6781568) (not d!2130885) (not b!6782614) (not b!6782531) (not b!6782547) (not bm!615457) (not b!6782605) (not bm!615425) (not b!6782597) (not d!2130637) (not b!6782610) (not b!6781744) (not bm!615342) (not b!6781334) (not b!6782293) (not b!6782291) (not b!6782560) (not b!6781641) (not b!6782572) (not bs!1806614) (not bm!615229) (not bm!615445) (not d!2131011) (not b!6782185) (not b!6782578) (not b!6781903) (not b!6782607) (not bm!615459) (not d!2130933) (not b!6782565) (not b!6781604) (not b!6782525) (not d!2130755) (not bm!615266) (not b!6781742) (not bm!615261) (not b!6782506) (not bm!615440) (not b!6782589) (not b!6782502) (not b!6782573) (not b!6782580) (not bm!615369) (not bm!615333) (not d!2130747) (not bs!1806612) (not b!6781341) (not b!6782544) (not setNonEmpty!46393) (not b!6781803) (not b!6782295) (not b!6782570) (not d!2130685) (not b!6782336) (not b!6781639) (not b!6781402) (not b!6782534) (not b!6782606) (not b!6782584) (not d!2130515) (not b!6782274) (not b!6782490) (not bm!615328) (not bm!615267) (not b!6781918) (not b!6782528) (not bm!615244) (not b!6781504) (not b!6782549) tp_is_empty!42459 (not b!6782637) (not b!6781603) (not b!6781421) (not bm!615447) (not b!6781628) (not b!6782450) (not b!6781499) (not b!6781963) (not d!2130559) (not b!6781833) (not b!6782505) (not bm!615451) (not b!6782633) (not b!6781684) (not b!6782289) (not setNonEmpty!46397) (not d!2130573) (not d!2130649) (not b!6782532) (not b!6782594) (not b!6782591) (not d!2130513) (not d!2130873) (not b!6782472) (not b!6782523) (not b!6782474) (not b!6782554))
(check-sat)
