; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!655064 () Bool)

(assert start!655064)

(declare-fun b!6758426 () Bool)

(assert (=> b!6758426 true))

(assert (=> b!6758426 true))

(declare-fun lambda!380165 () Int)

(declare-fun lambda!380164 () Int)

(assert (=> b!6758426 (not (= lambda!380165 lambda!380164))))

(assert (=> b!6758426 true))

(assert (=> b!6758426 true))

(declare-fun lambda!380166 () Int)

(assert (=> b!6758426 (not (= lambda!380166 lambda!380164))))

(assert (=> b!6758426 (not (= lambda!380166 lambda!380165))))

(assert (=> b!6758426 true))

(assert (=> b!6758426 true))

(declare-fun b!6758427 () Bool)

(assert (=> b!6758427 true))

(declare-fun b!6758412 () Bool)

(declare-fun e!4081162 () Bool)

(declare-fun e!4081174 () Bool)

(assert (=> b!6758412 (= e!4081162 e!4081174)))

(declare-fun res!2763976 () Bool)

(assert (=> b!6758412 (=> res!2763976 e!4081174)))

(declare-fun lt!2441862 () Bool)

(assert (=> b!6758412 (= res!2763976 (not lt!2441862))))

(declare-fun b!6758413 () Bool)

(declare-fun res!2763967 () Bool)

(declare-fun e!4081170 () Bool)

(assert (=> b!6758413 (=> res!2763967 e!4081170)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!33444 0))(
  ( (C!33445 (val!26424 Int)) )
))
(declare-datatypes ((Regex!16587 0))(
  ( (ElementMatch!16587 (c!1254415 C!33444)) (Concat!25432 (regOne!33686 Regex!16587) (regTwo!33686 Regex!16587)) (EmptyExpr!16587) (Star!16587 (reg!16916 Regex!16587)) (EmptyLang!16587) (Union!16587 (regOne!33687 Regex!16587) (regTwo!33687 Regex!16587)) )
))
(declare-datatypes ((List!66060 0))(
  ( (Nil!65936) (Cons!65936 (h!72384 Regex!16587) (t!379765 List!66060)) )
))
(declare-datatypes ((Context!11942 0))(
  ( (Context!11943 (exprs!6471 List!66060)) )
))
(declare-fun lt!2441846 () (InoxSet Context!11942))

(declare-datatypes ((List!66061 0))(
  ( (Nil!65937) (Cons!65937 (h!72385 C!33444) (t!379766 List!66061)) )
))
(declare-fun s!2326 () List!66061)

(declare-fun matchZipper!2573 ((InoxSet Context!11942) List!66061) Bool)

(declare-fun derivationStepZipper!2531 ((InoxSet Context!11942) C!33444) (InoxSet Context!11942))

(assert (=> b!6758413 (= res!2763967 (not (= (matchZipper!2573 lt!2441846 s!2326) (matchZipper!2573 (derivationStepZipper!2531 lt!2441846 (h!72385 s!2326)) (t!379766 s!2326)))))))

(declare-fun b!6758414 () Bool)

(declare-fun res!2763966 () Bool)

(assert (=> b!6758414 (=> res!2763966 e!4081170)))

(declare-fun lt!2441850 () Regex!16587)

(declare-fun r!7292 () Regex!16587)

(assert (=> b!6758414 (= res!2763966 (or (not (= lt!2441850 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6758415 () Bool)

(declare-fun e!4081164 () Bool)

(declare-fun tp!1852114 () Bool)

(assert (=> b!6758415 (= e!4081164 tp!1852114)))

(declare-fun b!6758416 () Bool)

(declare-fun e!4081171 () Bool)

(assert (=> b!6758416 (= e!4081171 e!4081170)))

(declare-fun res!2763974 () Bool)

(assert (=> b!6758416 (=> res!2763974 e!4081170)))

(declare-fun lt!2441873 () (InoxSet Context!11942))

(declare-fun lt!2441869 () Context!11942)

(declare-fun derivationStepZipperDown!1815 (Regex!16587 Context!11942 C!33444) (InoxSet Context!11942))

(assert (=> b!6758416 (= res!2763974 (not (= lt!2441873 (derivationStepZipperDown!1815 (reg!16916 r!7292) lt!2441869 (h!72385 s!2326)))))))

(declare-fun lt!2441849 () List!66060)

(assert (=> b!6758416 (= lt!2441869 (Context!11943 lt!2441849))))

(declare-fun lambda!380167 () Int)

(declare-fun lt!2441866 () Context!11942)

(declare-fun flatMap!2068 ((InoxSet Context!11942) Int) (InoxSet Context!11942))

(declare-fun derivationStepZipperUp!1741 (Context!11942 C!33444) (InoxSet Context!11942))

(assert (=> b!6758416 (= (flatMap!2068 lt!2441846 lambda!380167) (derivationStepZipperUp!1741 lt!2441866 (h!72385 s!2326)))))

(declare-datatypes ((Unit!159865 0))(
  ( (Unit!159866) )
))
(declare-fun lt!2441856 () Unit!159865)

(declare-fun lemmaFlatMapOnSingletonSet!1594 ((InoxSet Context!11942) Context!11942 Int) Unit!159865)

(assert (=> b!6758416 (= lt!2441856 (lemmaFlatMapOnSingletonSet!1594 lt!2441846 lt!2441866 lambda!380167))))

(declare-fun lt!2441847 () (InoxSet Context!11942))

(assert (=> b!6758416 (= lt!2441847 (derivationStepZipperUp!1741 lt!2441866 (h!72385 s!2326)))))

(assert (=> b!6758416 (= lt!2441846 (store ((as const (Array Context!11942 Bool)) false) lt!2441866 true))))

(assert (=> b!6758416 (= lt!2441866 (Context!11943 (Cons!65936 (reg!16916 r!7292) lt!2441849)))))

(assert (=> b!6758416 (= lt!2441849 (Cons!65936 r!7292 Nil!65936))))

(declare-fun b!6758417 () Bool)

(declare-fun e!4081178 () Bool)

(declare-fun e!4081165 () Bool)

(assert (=> b!6758417 (= e!4081178 (not e!4081165))))

(declare-fun res!2763978 () Bool)

(assert (=> b!6758417 (=> res!2763978 e!4081165)))

(declare-datatypes ((List!66062 0))(
  ( (Nil!65938) (Cons!65938 (h!72386 Context!11942) (t!379767 List!66062)) )
))
(declare-fun zl!343 () List!66062)

(get-info :version)

(assert (=> b!6758417 (= res!2763978 (not ((_ is Cons!65938) zl!343)))))

(declare-fun lt!2441859 () Bool)

(declare-fun matchRSpec!3688 (Regex!16587 List!66061) Bool)

(assert (=> b!6758417 (= lt!2441859 (matchRSpec!3688 r!7292 s!2326))))

(declare-fun matchR!8770 (Regex!16587 List!66061) Bool)

(assert (=> b!6758417 (= lt!2441859 (matchR!8770 r!7292 s!2326))))

(declare-fun lt!2441870 () Unit!159865)

(declare-fun mainMatchTheorem!3688 (Regex!16587 List!66061) Unit!159865)

(assert (=> b!6758417 (= lt!2441870 (mainMatchTheorem!3688 r!7292 s!2326))))

(declare-fun setIsEmpty!46197 () Bool)

(declare-fun setRes!46197 () Bool)

(assert (=> setIsEmpty!46197 setRes!46197))

(declare-fun b!6758418 () Bool)

(declare-fun res!2763975 () Bool)

(declare-fun e!4081167 () Bool)

(assert (=> b!6758418 (=> res!2763975 e!4081167)))

(declare-fun unfocusZipper!2329 (List!66062) Regex!16587)

(assert (=> b!6758418 (= res!2763975 (not (= (unfocusZipper!2329 (Cons!65938 lt!2441869 Nil!65938)) r!7292)))))

(declare-fun b!6758419 () Bool)

(declare-fun e!4081159 () Bool)

(declare-fun tp!1852116 () Bool)

(assert (=> b!6758419 (= e!4081159 tp!1852116)))

(declare-fun e!4081177 () Bool)

(declare-fun tp!1852115 () Bool)

(declare-fun b!6758420 () Bool)

(declare-fun inv!84714 (Context!11942) Bool)

(assert (=> b!6758420 (= e!4081177 (and (inv!84714 (h!72386 zl!343)) e!4081159 tp!1852115))))

(declare-fun b!6758421 () Bool)

(declare-fun res!2763970 () Bool)

(assert (=> b!6758421 (=> res!2763970 e!4081165)))

(declare-fun generalisedConcat!2184 (List!66060) Regex!16587)

(assert (=> b!6758421 (= res!2763970 (not (= r!7292 (generalisedConcat!2184 (exprs!6471 (h!72386 zl!343))))))))

(declare-fun b!6758422 () Bool)

(declare-fun res!2763953 () Bool)

(declare-fun e!4081173 () Bool)

(assert (=> b!6758422 (=> res!2763953 e!4081173)))

(assert (=> b!6758422 (= res!2763953 ((_ is Nil!65937) s!2326))))

(declare-fun b!6758423 () Bool)

(declare-fun e!4081176 () Bool)

(declare-fun tp_is_empty!42427 () Bool)

(declare-fun tp!1852110 () Bool)

(assert (=> b!6758423 (= e!4081176 (and tp_is_empty!42427 tp!1852110))))

(declare-fun b!6758424 () Bool)

(declare-fun e!4081163 () Bool)

(declare-fun tp!1852113 () Bool)

(assert (=> b!6758424 (= e!4081163 tp!1852113)))

(declare-fun b!6758425 () Bool)

(declare-fun e!4081158 () Bool)

(assert (=> b!6758425 (= e!4081158 e!4081167)))

(declare-fun res!2763950 () Bool)

(assert (=> b!6758425 (=> res!2763950 e!4081167)))

(declare-fun lt!2441855 () Regex!16587)

(assert (=> b!6758425 (= res!2763950 (not (= lt!2441855 (reg!16916 r!7292))))))

(declare-fun lt!2441872 () List!66062)

(assert (=> b!6758425 (= lt!2441855 (unfocusZipper!2329 lt!2441872))))

(declare-fun lt!2441860 () Context!11942)

(assert (=> b!6758425 (= lt!2441872 (Cons!65938 lt!2441860 Nil!65938))))

(assert (=> b!6758426 (= e!4081165 e!4081173)))

(declare-fun res!2763973 () Bool)

(assert (=> b!6758426 (=> res!2763973 e!4081173)))

(declare-fun e!4081169 () Bool)

(assert (=> b!6758426 (= res!2763973 (not (= lt!2441859 e!4081169)))))

(declare-fun res!2763971 () Bool)

(assert (=> b!6758426 (=> res!2763971 e!4081169)))

(declare-fun isEmpty!38293 (List!66061) Bool)

(assert (=> b!6758426 (= res!2763971 (isEmpty!38293 s!2326))))

(declare-fun Exists!3655 (Int) Bool)

(assert (=> b!6758426 (= (Exists!3655 lambda!380164) (Exists!3655 lambda!380166))))

(declare-fun lt!2441848 () Unit!159865)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2182 (Regex!16587 Regex!16587 List!66061) Unit!159865)

(assert (=> b!6758426 (= lt!2441848 (lemmaExistCutMatchRandMatchRSpecEquivalent!2182 (reg!16916 r!7292) r!7292 s!2326))))

(assert (=> b!6758426 (= (Exists!3655 lambda!380164) (Exists!3655 lambda!380165))))

(declare-fun lt!2441871 () Unit!159865)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!746 (Regex!16587 List!66061) Unit!159865)

(assert (=> b!6758426 (= lt!2441871 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!746 (reg!16916 r!7292) s!2326))))

(declare-fun lt!2441875 () Bool)

(assert (=> b!6758426 (= lt!2441875 (Exists!3655 lambda!380164))))

(declare-datatypes ((tuple2!67124 0))(
  ( (tuple2!67125 (_1!36865 List!66061) (_2!36865 List!66061)) )
))
(declare-datatypes ((Option!16474 0))(
  ( (None!16473) (Some!16473 (v!52675 tuple2!67124)) )
))
(declare-fun lt!2441853 () Option!16474)

(declare-fun isDefined!13177 (Option!16474) Bool)

(assert (=> b!6758426 (= lt!2441875 (isDefined!13177 lt!2441853))))

(declare-fun findConcatSeparation!2888 (Regex!16587 Regex!16587 List!66061 List!66061 List!66061) Option!16474)

(assert (=> b!6758426 (= lt!2441853 (findConcatSeparation!2888 (reg!16916 r!7292) r!7292 Nil!65937 s!2326 s!2326))))

(declare-fun lt!2441858 () Unit!159865)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2652 (Regex!16587 Regex!16587 List!66061) Unit!159865)

(assert (=> b!6758426 (= lt!2441858 (lemmaFindConcatSeparationEquivalentToExists!2652 (reg!16916 r!7292) r!7292 s!2326))))

(declare-fun res!2763968 () Bool)

(declare-fun e!4081160 () Bool)

(assert (=> start!655064 (=> (not res!2763968) (not e!4081160))))

(declare-fun validRegex!8323 (Regex!16587) Bool)

(assert (=> start!655064 (= res!2763968 (validRegex!8323 r!7292))))

(assert (=> start!655064 e!4081160))

(assert (=> start!655064 e!4081163))

(declare-fun condSetEmpty!46197 () Bool)

(declare-fun z!1189 () (InoxSet Context!11942))

(assert (=> start!655064 (= condSetEmpty!46197 (= z!1189 ((as const (Array Context!11942 Bool)) false)))))

(assert (=> start!655064 setRes!46197))

(assert (=> start!655064 e!4081177))

(assert (=> start!655064 e!4081176))

(declare-fun e!4081166 () Bool)

(assert (=> b!6758427 (= e!4081166 e!4081171)))

(declare-fun res!2763952 () Bool)

(assert (=> b!6758427 (=> res!2763952 e!4081171)))

(declare-fun lt!2441865 () (InoxSet Context!11942))

(assert (=> b!6758427 (= res!2763952 (not (= lt!2441873 lt!2441865)))))

(assert (=> b!6758427 (= (flatMap!2068 z!1189 lambda!380167) (derivationStepZipperUp!1741 (h!72386 zl!343) (h!72385 s!2326)))))

(declare-fun lt!2441861 () Unit!159865)

(assert (=> b!6758427 (= lt!2441861 (lemmaFlatMapOnSingletonSet!1594 z!1189 (h!72386 zl!343) lambda!380167))))

(declare-fun b!6758428 () Bool)

(declare-fun res!2763965 () Bool)

(declare-fun e!4081161 () Bool)

(assert (=> b!6758428 (=> res!2763965 e!4081161)))

(declare-fun lt!2441851 () (InoxSet Context!11942))

(declare-fun toList!10371 ((InoxSet Context!11942)) List!66062)

(assert (=> b!6758428 (= res!2763965 (not (= (toList!10371 lt!2441851) lt!2441872)))))

(declare-fun b!6758429 () Bool)

(declare-fun res!2763963 () Bool)

(assert (=> b!6758429 (=> res!2763963 e!4081165)))

(assert (=> b!6758429 (= res!2763963 (or ((_ is EmptyExpr!16587) r!7292) ((_ is EmptyLang!16587) r!7292) ((_ is ElementMatch!16587) r!7292) ((_ is Union!16587) r!7292) ((_ is Concat!25432) r!7292)))))

(declare-fun b!6758430 () Bool)

(declare-fun e!4081175 () Bool)

(assert (=> b!6758430 (= e!4081175 e!4081158)))

(declare-fun res!2763949 () Bool)

(assert (=> b!6758430 (=> res!2763949 e!4081158)))

(declare-fun lt!2441854 () (InoxSet Context!11942))

(assert (=> b!6758430 (= res!2763949 (not (= lt!2441873 (derivationStepZipper!2531 lt!2441854 (h!72385 s!2326)))))))

(assert (=> b!6758430 (= (flatMap!2068 lt!2441854 lambda!380167) (derivationStepZipperUp!1741 lt!2441869 (h!72385 s!2326)))))

(declare-fun lt!2441863 () Unit!159865)

(assert (=> b!6758430 (= lt!2441863 (lemmaFlatMapOnSingletonSet!1594 lt!2441854 lt!2441869 lambda!380167))))

(assert (=> b!6758430 (= (flatMap!2068 lt!2441851 lambda!380167) (derivationStepZipperUp!1741 lt!2441860 (h!72385 s!2326)))))

(declare-fun lt!2441864 () Unit!159865)

(assert (=> b!6758430 (= lt!2441864 (lemmaFlatMapOnSingletonSet!1594 lt!2441851 lt!2441860 lambda!380167))))

(declare-fun lt!2441852 () (InoxSet Context!11942))

(assert (=> b!6758430 (= lt!2441852 (derivationStepZipperUp!1741 lt!2441869 (h!72385 s!2326)))))

(declare-fun lt!2441868 () (InoxSet Context!11942))

(assert (=> b!6758430 (= lt!2441868 (derivationStepZipperUp!1741 lt!2441860 (h!72385 s!2326)))))

(assert (=> b!6758430 (= lt!2441854 (store ((as const (Array Context!11942 Bool)) false) lt!2441869 true))))

(assert (=> b!6758430 (= lt!2441851 (store ((as const (Array Context!11942 Bool)) false) lt!2441860 true))))

(assert (=> b!6758430 (= lt!2441860 (Context!11943 (Cons!65936 (reg!16916 r!7292) Nil!65936)))))

(declare-fun b!6758431 () Bool)

(assert (=> b!6758431 (= e!4081170 e!4081175)))

(declare-fun res!2763954 () Bool)

(assert (=> b!6758431 (=> res!2763954 e!4081175)))

(declare-fun lt!2441867 () Regex!16587)

(assert (=> b!6758431 (= res!2763954 (not (= (unfocusZipper!2329 (Cons!65938 lt!2441866 Nil!65938)) lt!2441867)))))

(assert (=> b!6758431 (= lt!2441867 (Concat!25432 (reg!16916 r!7292) r!7292))))

(declare-fun b!6758432 () Bool)

(declare-fun res!2763962 () Bool)

(assert (=> b!6758432 (=> res!2763962 e!4081161)))

(assert (=> b!6758432 (= res!2763962 (not (validRegex!8323 (reg!16916 r!7292))))))

(declare-fun tp!1852117 () Bool)

(declare-fun setElem!46197 () Context!11942)

(declare-fun setNonEmpty!46197 () Bool)

(assert (=> setNonEmpty!46197 (= setRes!46197 (and tp!1852117 (inv!84714 setElem!46197) e!4081164))))

(declare-fun setRest!46197 () (InoxSet Context!11942))

(assert (=> setNonEmpty!46197 (= z!1189 ((_ map or) (store ((as const (Array Context!11942 Bool)) false) setElem!46197 true) setRest!46197))))

(declare-fun b!6758433 () Bool)

(declare-fun res!2763960 () Bool)

(assert (=> b!6758433 (=> (not res!2763960) (not e!4081160))))

(assert (=> b!6758433 (= res!2763960 (= (toList!10371 z!1189) zl!343))))

(declare-fun b!6758434 () Bool)

(declare-fun tp!1852111 () Bool)

(declare-fun tp!1852108 () Bool)

(assert (=> b!6758434 (= e!4081163 (and tp!1852111 tp!1852108))))

(declare-fun b!6758435 () Bool)

(declare-fun res!2763964 () Bool)

(assert (=> b!6758435 (=> res!2763964 e!4081161)))

(declare-fun lt!2441857 () tuple2!67124)

(assert (=> b!6758435 (= res!2763964 (not (matchR!8770 (reg!16916 r!7292) (_1!36865 lt!2441857))))))

(declare-fun b!6758436 () Bool)

(declare-fun e!4081172 () Bool)

(assert (=> b!6758436 (= e!4081167 e!4081172)))

(declare-fun res!2763957 () Bool)

(assert (=> b!6758436 (=> res!2763957 e!4081172)))

(assert (=> b!6758436 (= res!2763957 (not lt!2441862))))

(assert (=> b!6758436 e!4081162))

(declare-fun res!2763972 () Bool)

(assert (=> b!6758436 (=> (not res!2763972) (not e!4081162))))

(assert (=> b!6758436 (= res!2763972 (= lt!2441862 (matchRSpec!3688 lt!2441867 s!2326)))))

(assert (=> b!6758436 (= lt!2441862 (matchR!8770 lt!2441867 s!2326))))

(declare-fun lt!2441874 () Unit!159865)

(assert (=> b!6758436 (= lt!2441874 (mainMatchTheorem!3688 lt!2441867 s!2326))))

(declare-fun b!6758437 () Bool)

(declare-fun res!2763969 () Bool)

(assert (=> b!6758437 (=> res!2763969 e!4081165)))

(declare-fun generalisedUnion!2431 (List!66060) Regex!16587)

(declare-fun unfocusZipperList!2008 (List!66062) List!66060)

(assert (=> b!6758437 (= res!2763969 (not (= r!7292 (generalisedUnion!2431 (unfocusZipperList!2008 zl!343)))))))

(declare-fun b!6758438 () Bool)

(declare-fun e!4081168 () Bool)

(assert (=> b!6758438 (= e!4081168 (= lt!2441875 (Exists!3655 lambda!380164)))))

(declare-fun b!6758439 () Bool)

(assert (=> b!6758439 (= e!4081163 tp_is_empty!42427)))

(declare-fun b!6758440 () Bool)

(declare-fun res!2763951 () Bool)

(assert (=> b!6758440 (=> res!2763951 e!4081165)))

(declare-fun isEmpty!38294 (List!66062) Bool)

(assert (=> b!6758440 (= res!2763951 (not (isEmpty!38294 (t!379767 zl!343))))))

(declare-fun b!6758441 () Bool)

(assert (=> b!6758441 (= e!4081169 lt!2441875)))

(declare-fun b!6758442 () Bool)

(assert (=> b!6758442 (= e!4081174 e!4081168)))

(declare-fun res!2763959 () Bool)

(assert (=> b!6758442 (=> (not res!2763959) (not e!4081168))))

(assert (=> b!6758442 (= res!2763959 (= (Exists!3655 lambda!380164) (Exists!3655 lambda!380165)))))

(declare-fun b!6758443 () Bool)

(assert (=> b!6758443 (= e!4081172 e!4081161)))

(declare-fun res!2763955 () Bool)

(assert (=> b!6758443 (=> res!2763955 e!4081161)))

(declare-fun ++!14741 (List!66061 List!66061) List!66061)

(assert (=> b!6758443 (= res!2763955 (not (= s!2326 (++!14741 (_1!36865 lt!2441857) (_2!36865 lt!2441857)))))))

(declare-fun get!22950 (Option!16474) tuple2!67124)

(assert (=> b!6758443 (= lt!2441857 (get!22950 lt!2441853))))

(declare-fun b!6758444 () Bool)

(declare-fun res!2763977 () Bool)

(assert (=> b!6758444 (=> res!2763977 e!4081161)))

(assert (=> b!6758444 (= res!2763977 (not (matchR!8770 r!7292 (_2!36865 lt!2441857))))))

(declare-fun b!6758445 () Bool)

(declare-fun res!2763958 () Bool)

(assert (=> b!6758445 (=> res!2763958 e!4081165)))

(assert (=> b!6758445 (= res!2763958 (not ((_ is Cons!65936) (exprs!6471 (h!72386 zl!343)))))))

(declare-fun b!6758446 () Bool)

(assert (=> b!6758446 (= e!4081161 (= (reg!16916 r!7292) lt!2441855))))

(declare-fun b!6758447 () Bool)

(assert (=> b!6758447 (= e!4081160 e!4081178)))

(declare-fun res!2763956 () Bool)

(assert (=> b!6758447 (=> (not res!2763956) (not e!4081178))))

(assert (=> b!6758447 (= res!2763956 (= r!7292 lt!2441850))))

(assert (=> b!6758447 (= lt!2441850 (unfocusZipper!2329 zl!343))))

(declare-fun b!6758448 () Bool)

(assert (=> b!6758448 (= e!4081173 e!4081166)))

(declare-fun res!2763961 () Bool)

(assert (=> b!6758448 (=> res!2763961 e!4081166)))

(declare-fun lt!2441876 () (InoxSet Context!11942))

(assert (=> b!6758448 (= res!2763961 (not (= lt!2441876 lt!2441865)))))

(assert (=> b!6758448 (= lt!2441865 (derivationStepZipperDown!1815 r!7292 (Context!11943 Nil!65936) (h!72385 s!2326)))))

(assert (=> b!6758448 (= lt!2441876 (derivationStepZipperUp!1741 (Context!11943 (Cons!65936 r!7292 Nil!65936)) (h!72385 s!2326)))))

(assert (=> b!6758448 (= lt!2441873 (derivationStepZipper!2531 z!1189 (h!72385 s!2326)))))

(declare-fun b!6758449 () Bool)

(declare-fun tp!1852112 () Bool)

(declare-fun tp!1852109 () Bool)

(assert (=> b!6758449 (= e!4081163 (and tp!1852112 tp!1852109))))

(assert (= (and start!655064 res!2763968) b!6758433))

(assert (= (and b!6758433 res!2763960) b!6758447))

(assert (= (and b!6758447 res!2763956) b!6758417))

(assert (= (and b!6758417 (not res!2763978)) b!6758440))

(assert (= (and b!6758440 (not res!2763951)) b!6758421))

(assert (= (and b!6758421 (not res!2763970)) b!6758445))

(assert (= (and b!6758445 (not res!2763958)) b!6758437))

(assert (= (and b!6758437 (not res!2763969)) b!6758429))

(assert (= (and b!6758429 (not res!2763963)) b!6758426))

(assert (= (and b!6758426 (not res!2763971)) b!6758441))

(assert (= (and b!6758426 (not res!2763973)) b!6758422))

(assert (= (and b!6758422 (not res!2763953)) b!6758448))

(assert (= (and b!6758448 (not res!2763961)) b!6758427))

(assert (= (and b!6758427 (not res!2763952)) b!6758416))

(assert (= (and b!6758416 (not res!2763974)) b!6758413))

(assert (= (and b!6758413 (not res!2763967)) b!6758414))

(assert (= (and b!6758414 (not res!2763966)) b!6758431))

(assert (= (and b!6758431 (not res!2763954)) b!6758430))

(assert (= (and b!6758430 (not res!2763949)) b!6758425))

(assert (= (and b!6758425 (not res!2763950)) b!6758418))

(assert (= (and b!6758418 (not res!2763975)) b!6758436))

(assert (= (and b!6758436 res!2763972) b!6758412))

(assert (= (and b!6758412 (not res!2763976)) b!6758442))

(assert (= (and b!6758442 res!2763959) b!6758438))

(assert (= (and b!6758436 (not res!2763957)) b!6758443))

(assert (= (and b!6758443 (not res!2763955)) b!6758435))

(assert (= (and b!6758435 (not res!2763964)) b!6758444))

(assert (= (and b!6758444 (not res!2763977)) b!6758432))

(assert (= (and b!6758432 (not res!2763962)) b!6758428))

(assert (= (and b!6758428 (not res!2763965)) b!6758446))

(assert (= (and start!655064 ((_ is ElementMatch!16587) r!7292)) b!6758439))

(assert (= (and start!655064 ((_ is Concat!25432) r!7292)) b!6758449))

(assert (= (and start!655064 ((_ is Star!16587) r!7292)) b!6758424))

(assert (= (and start!655064 ((_ is Union!16587) r!7292)) b!6758434))

(assert (= (and start!655064 condSetEmpty!46197) setIsEmpty!46197))

(assert (= (and start!655064 (not condSetEmpty!46197)) setNonEmpty!46197))

(assert (= setNonEmpty!46197 b!6758415))

(assert (= b!6758420 b!6758419))

(assert (= (and start!655064 ((_ is Cons!65938) zl!343)) b!6758420))

(assert (= (and start!655064 ((_ is Cons!65937) s!2326)) b!6758423))

(declare-fun m!7511004 () Bool)

(assert (=> b!6758416 m!7511004))

(declare-fun m!7511006 () Bool)

(assert (=> b!6758416 m!7511006))

(declare-fun m!7511008 () Bool)

(assert (=> b!6758416 m!7511008))

(declare-fun m!7511010 () Bool)

(assert (=> b!6758416 m!7511010))

(declare-fun m!7511012 () Bool)

(assert (=> b!6758416 m!7511012))

(declare-fun m!7511014 () Bool)

(assert (=> b!6758438 m!7511014))

(declare-fun m!7511016 () Bool)

(assert (=> b!6758436 m!7511016))

(declare-fun m!7511018 () Bool)

(assert (=> b!6758436 m!7511018))

(declare-fun m!7511020 () Bool)

(assert (=> b!6758436 m!7511020))

(declare-fun m!7511022 () Bool)

(assert (=> b!6758430 m!7511022))

(declare-fun m!7511024 () Bool)

(assert (=> b!6758430 m!7511024))

(declare-fun m!7511026 () Bool)

(assert (=> b!6758430 m!7511026))

(declare-fun m!7511028 () Bool)

(assert (=> b!6758430 m!7511028))

(declare-fun m!7511030 () Bool)

(assert (=> b!6758430 m!7511030))

(declare-fun m!7511032 () Bool)

(assert (=> b!6758430 m!7511032))

(declare-fun m!7511034 () Bool)

(assert (=> b!6758430 m!7511034))

(declare-fun m!7511036 () Bool)

(assert (=> b!6758430 m!7511036))

(declare-fun m!7511038 () Bool)

(assert (=> b!6758430 m!7511038))

(declare-fun m!7511040 () Bool)

(assert (=> b!6758418 m!7511040))

(declare-fun m!7511042 () Bool)

(assert (=> b!6758437 m!7511042))

(assert (=> b!6758437 m!7511042))

(declare-fun m!7511044 () Bool)

(assert (=> b!6758437 m!7511044))

(declare-fun m!7511046 () Bool)

(assert (=> b!6758435 m!7511046))

(declare-fun m!7511048 () Bool)

(assert (=> b!6758428 m!7511048))

(declare-fun m!7511050 () Bool)

(assert (=> b!6758431 m!7511050))

(declare-fun m!7511052 () Bool)

(assert (=> b!6758417 m!7511052))

(declare-fun m!7511054 () Bool)

(assert (=> b!6758417 m!7511054))

(declare-fun m!7511056 () Bool)

(assert (=> b!6758417 m!7511056))

(declare-fun m!7511058 () Bool)

(assert (=> b!6758440 m!7511058))

(declare-fun m!7511060 () Bool)

(assert (=> b!6758433 m!7511060))

(assert (=> b!6758442 m!7511014))

(declare-fun m!7511062 () Bool)

(assert (=> b!6758442 m!7511062))

(declare-fun m!7511064 () Bool)

(assert (=> b!6758447 m!7511064))

(declare-fun m!7511066 () Bool)

(assert (=> start!655064 m!7511066))

(declare-fun m!7511068 () Bool)

(assert (=> b!6758421 m!7511068))

(declare-fun m!7511070 () Bool)

(assert (=> b!6758444 m!7511070))

(declare-fun m!7511072 () Bool)

(assert (=> b!6758420 m!7511072))

(assert (=> b!6758426 m!7511062))

(declare-fun m!7511074 () Bool)

(assert (=> b!6758426 m!7511074))

(declare-fun m!7511076 () Bool)

(assert (=> b!6758426 m!7511076))

(declare-fun m!7511078 () Bool)

(assert (=> b!6758426 m!7511078))

(assert (=> b!6758426 m!7511014))

(declare-fun m!7511080 () Bool)

(assert (=> b!6758426 m!7511080))

(assert (=> b!6758426 m!7511014))

(assert (=> b!6758426 m!7511014))

(declare-fun m!7511082 () Bool)

(assert (=> b!6758426 m!7511082))

(declare-fun m!7511084 () Bool)

(assert (=> b!6758426 m!7511084))

(declare-fun m!7511086 () Bool)

(assert (=> b!6758426 m!7511086))

(declare-fun m!7511088 () Bool)

(assert (=> setNonEmpty!46197 m!7511088))

(declare-fun m!7511090 () Bool)

(assert (=> b!6758432 m!7511090))

(declare-fun m!7511092 () Bool)

(assert (=> b!6758425 m!7511092))

(declare-fun m!7511094 () Bool)

(assert (=> b!6758427 m!7511094))

(declare-fun m!7511096 () Bool)

(assert (=> b!6758427 m!7511096))

(declare-fun m!7511098 () Bool)

(assert (=> b!6758427 m!7511098))

(declare-fun m!7511100 () Bool)

(assert (=> b!6758413 m!7511100))

(declare-fun m!7511102 () Bool)

(assert (=> b!6758413 m!7511102))

(assert (=> b!6758413 m!7511102))

(declare-fun m!7511104 () Bool)

(assert (=> b!6758413 m!7511104))

(declare-fun m!7511106 () Bool)

(assert (=> b!6758448 m!7511106))

(declare-fun m!7511108 () Bool)

(assert (=> b!6758448 m!7511108))

(declare-fun m!7511110 () Bool)

(assert (=> b!6758448 m!7511110))

(declare-fun m!7511112 () Bool)

(assert (=> b!6758443 m!7511112))

(declare-fun m!7511114 () Bool)

(assert (=> b!6758443 m!7511114))

(check-sat (not b!6758423) (not b!6758424) (not b!6758416) (not b!6758427) tp_is_empty!42427 (not b!6758421) (not b!6758434) (not b!6758438) (not b!6758415) (not b!6758442) (not b!6758426) (not b!6758444) (not b!6758432) (not b!6758425) (not b!6758437) (not b!6758413) (not start!655064) (not b!6758431) (not b!6758440) (not b!6758436) (not b!6758449) (not b!6758448) (not b!6758420) (not b!6758418) (not b!6758428) (not b!6758447) (not b!6758443) (not b!6758433) (not b!6758417) (not b!6758430) (not b!6758419) (not b!6758435) (not setNonEmpty!46197))
(check-sat)
